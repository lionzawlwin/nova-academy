import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants/app_constants.dart';
import '../models/learning_module_model.dart';
import 'firebase_providers.dart';

/// Streams the full `LearningModules` catalog. Small, mostly-static
/// collection by design (see docs/firestore_schema.md), so a single
/// unfiltered listener is cheap on the Spark free tier.
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
