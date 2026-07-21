import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants/app_constants.dart';
import '../models/lesson_attempt_model.dart';
import 'children_providers.dart';
import 'firebase_providers.dart';

/// Records one completed-lesson telemetry document -- the write-side half
/// of the platform's analytics foundation (see `LessonAttemptModel`'s doc
/// comment for the "one doc per lesson, not per question" rationale).
///
/// Deliberately a plain `Future<void>` helper (mirroring
/// `markModuleCompleted` in `children_providers.dart`), not a provider
/// itself -- callers already fire-and-forget this the same way they do
/// `markModuleCompleted`, from the same lesson-completion call site, so a
/// dedicated provider would add indirection without adding value. Never
/// throws upward: telemetry is best-effort and must never be allowed to
/// block or fail a student's actual lesson completion.
Future<void> recordLessonAttempt(
  FirebaseFirestore firestore, {
  required String childId,
  required String lessonId,
  required String kind,
  required int correctCount,
  required int totalCount,
}) async {
  final docRef = firestore
      .collection(AppConstants.lessonAttemptsCollection)
      .doc();
  final attempt = LessonAttemptModel(
    id: docRef.id,
    childId: childId,
    lessonId: lessonId,
    kind: kind,
    correctCount: correctCount,
    totalCount: totalCount,
    completedAtMillis: DateTime.now().millisecondsSinceEpoch,
  );
  await docRef.set(attempt.toJson()..remove('id'));
}

/// Streams every `LessonAttempts` document for [childId] -- an
/// unordered `where('childId', ...)` query, deliberately with no
/// `orderBy`, so it needs no composite Firestore index (see
/// `docs/firestore_schema.md`'s `LessonAttempts` section: an index is
/// only "recommended", not required, and a single child's attempt count
/// stays small enough that reducing to "latest per lesson" client-side
/// via [latestAttemptsByLesson] is cheap and index-free).
final childLessonAttemptsProvider =
    StreamProvider.family<List<LessonAttemptModel>, String>((ref, childId) {
      final firestore = ref.watch(firestoreProvider);
      return firestore
          .collection(AppConstants.lessonAttemptsCollection)
          .where('childId', isEqualTo: childId)
          .snapshots()
          .map(
            (snap) => snap.docs
                .map(
                  (doc) => LessonAttemptModel.fromJson({
                    'id': doc.id,
                    ...doc.data(),
                  }),
                )
                .toList(),
          );
    });

/// Reduces a flat attempt list down to each lesson's single most recent
/// attempt (by [LessonAttemptModel.completedAtMillis]) -- a student who
/// retries a lesson should be judged on their latest performance, not
/// their first, so mastery/remedial logic built on top of this only ever
/// sees one attempt per lesson id.
Map<String, LessonAttemptModel> latestAttemptsByLesson(
  List<LessonAttemptModel> attempts,
) {
  final latest = <String, LessonAttemptModel>{};
  for (final attempt in attempts) {
    final existing = latest[attempt.lessonId];
    if (existing == null ||
        attempt.completedAtMillis > existing.completedAtMillis) {
      latest[attempt.lessonId] = attempt;
    }
  }
  return latest;
}

/// Riverpod wrapper combining [childLessonAttemptsProvider] +
/// [latestAttemptsByLesson] for the *active* child specifically, so
/// mastery/remedial consumers don't each need to know the child id or
/// re-implement the "latest per lesson" reduction themselves. Empty
/// (rather than loading/error) whenever there's no active student
/// profile or the stream hasn't emitted yet -- mastery logic built on
/// top of this should read "nothing flagged yet", not throw or spin.
final activeChildLatestAttemptsProvider =
    Provider<Map<String, LessonAttemptModel>>((ref) {
      final child = ref.watch(activeChildProvider);
      if (child == null) return const {};
      final attemptsAsync = ref.watch(childLessonAttemptsProvider(child.id));
      return latestAttemptsByLesson(attemptsAsync.valueOrNull ?? const []);
    });
