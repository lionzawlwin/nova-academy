import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants/app_constants.dart';
import '../models/child_model.dart';
import '../models/user_model.dart';
import 'active_profile_provider.dart';
import 'auth_providers.dart';
import 'firebase_providers.dart';

/// Streams the `Children` documents relevant to the signed-in user:
/// - Parents (and the owner) see the children they created (`parentId`).
/// - Teachers see the children a parent has linked to them
///   (`UserModel.linkedStudents`).
///
/// Kept to a single indexed/document-id query per role so it stays cheap on
/// the Spark free tier.
final childrenForCurrentUserProvider = StreamProvider<List<ChildModel>>((ref) {
  final userAsync = ref.watch(currentUserModelProvider);
  final firestore = ref.watch(firestoreProvider);
  final user = userAsync.valueOrNull;

  if (user == null) return Stream.value(const <ChildModel>[]);

  if (user.role == UserRole.parent || user.role == UserRole.owner) {
    return firestore
        .collection(AppConstants.childrenCollection)
        .where('parentId', isEqualTo: user.id)
        .snapshots()
        .map(_childrenFromSnapshot);
  }

  if (user.role == UserRole.teacher) {
    final ids = user.linkedStudents;
    if (ids.isEmpty) return Stream.value(const <ChildModel>[]);
    // whereIn tops out at 30 values -- plenty for a Spark-tier classroom.
    return firestore
        .collection(AppConstants.childrenCollection)
        .where(FieldPath.documentId, whereIn: ids.take(30).toList())
        .snapshots()
        .map(_childrenFromSnapshot);
  }

  return Stream.value(const <ChildModel>[]);
});

/// The live, reactive [ChildModel] for the active student profile.
///
/// [activeProfileProvider] is a plain `StateProvider` set exactly once, at
/// profile-selection time -- its [StudentProfile.child] is a frozen
/// snapshot that [markModuleCompleted] never touches when it writes a new
/// completion to Firestore. Reading that frozen copy directly (as the
/// Nursery/KG, Primary, and Secondary/IGCSE home screens used to) is why
/// the winding path required a manual reload to show a newly unlocked
/// node: the local state had no way to learn a write had happened.
///
/// This provider re-derives the current child from
/// [childrenForCurrentUserProvider]'s live `.snapshots()` stream on every
/// emission instead -- the same stream the parent/teacher dashboards
/// already rely on to stay live -- so a completion recorded in Firestore
/// propagates to the UI the moment that snapshot listener fires, no reload
/// needed. Falls back to the cached [ActiveProfile] snapshot only while the
/// live stream hasn't emitted yet (e.g. right after profile selection) or
/// if the child is momentarily missing from it.
final activeChildProvider = Provider<ChildModel?>((ref) {
  final activeProfile = ref.watch(activeProfileProvider);
  if (activeProfile is! StudentProfile) return null;

  final liveChildren = ref.watch(childrenForCurrentUserProvider).valueOrNull;
  if (liveChildren == null) return activeProfile.child;

  for (final child in liveChildren) {
    if (child.id == activeProfile.child.id) return child;
  }
  return activeProfile.child;
});

List<ChildModel> _childrenFromSnapshot(
  QuerySnapshot<Map<String, dynamic>> snap,
) {
  return snap.docs
      .map((doc) => ChildModel.fromJson({'id': doc.id, ...doc.data()}))
      .toList();
}

/// Creates a new `Children` document for [parentId] and returns its id.
Future<String> addChild(
  FirebaseFirestore firestore, {
  required String parentId,
  required String aliasName,
  required Grade grade,
}) async {
  final docRef = firestore.collection(AppConstants.childrenCollection).doc();
  final child = ChildModel(
    id: docRef.id,
    parentId: parentId,
    aliasName: aliasName,
    currentGrade: grade,
  );
  await docRef.set(child.toJson()..remove('id'));
  return docRef.id;
}

/// Persists edits to an existing child profile.
Future<void> updateChild(FirebaseFirestore firestore, ChildModel child) async {
  await firestore
      .collection(AppConstants.childrenCollection)
      .doc(child.id)
      .update(child.toJson()..remove('id'));
}

/// Removes a child profile entirely.
Future<void> deleteChild(FirebaseFirestore firestore, String childId) async {
  await firestore
      .collection(AppConstants.childrenCollection)
      .doc(childId)
      .delete();
}

/// Records a completed module for [childId] and credits the stars earned.
///
/// Uses [FieldValue.arrayUnion]/[FieldValue.increment] instead of a
/// read-modify-write so concurrent completions (e.g. two devices, or a retry
/// after a dropped connection) can't clobber each other's writes, and
/// replaying the same completion is safe -- arrayUnion won't duplicate an
/// already-present moduleId.
Future<void> markModuleCompleted(
  FirebaseFirestore firestore, {
  required String childId,
  required String moduleId,
  required int starsEarned,
}) async {
  await firestore
      .collection(AppConstants.childrenCollection)
      .doc(childId)
      .update({
        'completedModuleIds': FieldValue.arrayUnion([moduleId]),
        'totalStars': FieldValue.increment(starsEarned),
      });
}
