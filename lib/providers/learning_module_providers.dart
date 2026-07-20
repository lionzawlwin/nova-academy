import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants/app_constants.dart';
import '../models/child_model.dart' show Grade;
import '../models/learning_module_model.dart';
import 'firebase_providers.dart';

/// Streams the full `LearningModules` catalog.
///
/// Only [TeacherDashboardScreen]'s cross-grade module-assignment picker
/// needs every grade's modules in one listener; every grade-scoped screen
/// should prefer [learningModulesForGradeProvider] instead, which reads far
/// fewer documents as the catalog grows across grades.
final learningModulesProvider = StreamProvider<List<LearningModuleModel>>((
  ref,
) {
  final firestore = ref.watch(firestoreProvider);
  return firestore
      .collection(AppConstants.learningModulesCollection)
      .snapshots()
      .map(
        (snap) => snap.docs
            .map(
              (doc) =>
                  LearningModuleModel.fromJson({'id': doc.id, ...doc.data()}),
            )
            .toList(),
      );
});

/// Streams only the `LearningModules` docs for [grade], via a server-side
/// `where` filter instead of downloading the whole catalog and filtering
/// client-side. [Grade]'s `.name` matches the `@JsonValue` string every
/// document's `grade` field is stored as (see `child_model.dart`), so this
/// filter lines up exactly with how [learningModulesProvider] parses that
/// field.
///
/// Used by the Nursery/KG, Primary, and Secondary/IGCSE home screens --
/// each only ever needs one grade's worth of modules for the active child,
/// so this keeps document reads (Spark free-tier quota) and on-device
/// parsing proportional to that grade's content instead of the entire
/// cross-grade catalog.
final learningModulesForGradeProvider =
    StreamProvider.family<List<LearningModuleModel>, Grade>((ref, grade) {
      final firestore = ref.watch(firestoreProvider);
      return firestore
          .collection(AppConstants.learningModulesCollection)
          .where('grade', isEqualTo: grade.name)
          .snapshots()
          .map(
            (snap) => snap.docs
                .map(
                  (doc) => LearningModuleModel.fromJson({
                    'id': doc.id,
                    ...doc.data(),
                  }),
                )
                .toList(),
          );
    });
