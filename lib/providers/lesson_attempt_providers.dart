import 'package:cloud_firestore/cloud_firestore.dart';

import '../core/constants/app_constants.dart';
import '../models/lesson_attempt_model.dart';

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
