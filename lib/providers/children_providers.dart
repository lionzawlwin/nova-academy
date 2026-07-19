import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants/app_constants.dart';
import '../models/child_model.dart';
import '../models/user_model.dart';
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
