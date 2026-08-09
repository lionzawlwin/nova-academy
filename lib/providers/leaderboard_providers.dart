import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants/app_constants.dart';
import '../models/leaderboard_entry_model.dart';
import 'firebase_providers.dart';

/// Upserts [childId]'s `LeaderboardEntries` entry for [lessonId] -- but
/// only if [scorePercent]/[totalMillis] beat their existing entry (higher
/// score wins; a tied score is broken by the faster time). A worse or
/// equal attempt is a no-op write, so replaying a lesson and doing worse
/// never regresses a child's standing.
///
/// Runs inside a transaction (one read + at most one write) rather than a
/// plain `get()` then `set()`, so two rapid completions for the same child
/// can never race each other into overwriting a better score with a worse
/// one. Deliberately mirrors [recordLessonAttempt]'s fire-and-forget,
/// never-throw-upward contract -- see that function's doc comment --
/// since this is also best-effort telemetry, not core lesson-completion
/// state.
Future<void> upsertLeaderboardEntry(
  FirebaseFirestore firestore, {
  required String lessonId,
  required String childId,
  required String aliasName,
  required int scorePercent,
  required int totalMillis,
}) async {
  final docRef = firestore
      .collection(AppConstants.leaderboardEntriesCollection)
      .doc('${lessonId}_$childId');

  await firestore.runTransaction((tx) async {
    final snap = await tx.get(docRef);
    if (snap.exists) {
      final existing = LeaderboardEntryModel.fromJson({
        'id': snap.id,
        ...snap.data()!,
      });
      final isBetter =
          scorePercent > existing.scorePercent ||
          (scorePercent == existing.scorePercent &&
              totalMillis < existing.totalMillis);
      if (!isBetter) return;
    }

    final entry = LeaderboardEntryModel(
      id: docRef.id,
      lessonId: lessonId,
      childId: childId,
      aliasName: aliasName,
      scorePercent: scorePercent,
      totalMillis: totalMillis,
      updatedAtMillis: DateTime.now().millisecondsSinceEpoch,
    );
    tx.set(docRef, entry.toJson()..remove('id'));
  });
}

/// The top [limit] `LeaderboardEntries` for [lessonId], ranked by
/// [LeaderboardEntryModel.scorePercent] descending, ties broken by
/// [LeaderboardEntryModel.totalMillis] ascending (needs the composite
/// index declared in `firestore.indexes.json`).
///
/// A one-shot `.get()` (`FutureProvider`, not a `.snapshots()` listener)
/// deliberately: a leaderboard screen a child might sit on doesn't need to
/// burn read quota on every other child's score updating live -- see
/// `docs/firestore_schema.md`'s "prefer snapshot listeners... polling
/// burns quota" note, which cuts the other way here since this is a
/// bounded, on-demand read rather than a repeated poll. Callers that want
/// a refresh (e.g. a pull-to-refresh or "Refresh" button) re-read this
/// provider via `ref.invalidate`/`ref.refresh`.
final leaderboardTopEntriesProvider = FutureProvider.autoDispose
    .family<List<LeaderboardEntryModel>, String>((ref, lessonId) async {
      final firestore = ref.watch(firestoreProvider);
      final snap = await firestore
          .collection(AppConstants.leaderboardEntriesCollection)
          .where('lessonId', isEqualTo: lessonId)
          .orderBy('scorePercent', descending: true)
          .orderBy('totalMillis')
          .limit(10)
          .get();
      return snap.docs
          .map(
            (doc) =>
                LeaderboardEntryModel.fromJson({'id': doc.id, ...doc.data()}),
          )
          .toList();
    });
