import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/learning_module_model.dart';
import '../constants/app_constants.dart';

/// Result of validating a raw JSON payload against [LearningModuleModel]'s
/// shape, before anything is written to Firestore -- lets the ingestion UI
/// show every row's problem at once instead of failing the whole paste on
/// the first bad entry.
class ParsedCurriculumBatch {
  const ParsedCurriculumBatch({required this.modules, required this.errors});

  final List<LearningModuleModel> modules;
  final List<String> errors;

  bool get hasErrors => errors.isNotEmpty;
}

/// Parses a JSON array of learning-module objects (the same shape as
/// [LearningModuleModel.toJson]; `id` is optional -- a fresh
/// Firestore-assigned id is allocated at write time by
/// [ingestLearningModules] regardless of whatever a pasted `id` says, so
/// content authors never have to invent unique ids by hand).
///
/// Deliberately Firestore-free and side-effect-free -- see
/// `test/curriculum_ingestion_service_test.dart` -- mirroring how
/// `curriculum_sync_provider.dart`'s `needsSync()` is kept pure so it's
/// unit-testable without a Firestore instance. One malformed entry collects
/// an indexed error message and is skipped; it never aborts parsing of the
/// remaining entries, so a large paste with one typo still surfaces every
/// other valid row.
ParsedCurriculumBatch parseLearningModulesJson(String raw) {
  final modules = <LearningModuleModel>[];
  final errors = <String>[];

  dynamic decoded;
  try {
    decoded = jsonDecode(raw);
  } catch (e) {
    return ParsedCurriculumBatch(modules: const [], errors: ['Invalid JSON: $e']);
  }

  if (decoded is! List) {
    return const ParsedCurriculumBatch(
      modules: [],
      errors: ['Expected a JSON array of module objects at the top level.'],
    );
  }

  for (var i = 0; i < decoded.length; i++) {
    final entry = decoded[i];
    if (entry is! Map<String, dynamic>) {
      errors.add('Row ${i + 1}: not a JSON object.');
      continue;
    }
    try {
      final withPlaceholderId = {'id': '', ...entry};
      modules.add(LearningModuleModel.fromJson(withPlaceholderId));
    } catch (e) {
      errors.add('Row ${i + 1}: $e');
    }
  }

  return ParsedCurriculumBatch(modules: modules, errors: errors);
}

/// Writes [modules] to the `LearningModules` collection in batches of 500
/// (Firestore's per-batch write limit), allocating a fresh doc id for each
/// via `.doc()` -- any `id` present on a parsed model (see
/// [parseLearningModulesJson]) is discarded, exactly like `seedDatabase`
/// never trusting a client-suggested id for anything but its own hand-picked
/// mock data. Returns the number of modules written. Not best-effort: if a
/// batch fails partway through a large paste, the exception propagates so
/// the caller (the ingestion UI) shows the real Firestore error instead of
/// silently reporting success.
Future<int> ingestLearningModules(
  FirebaseFirestore db,
  List<LearningModuleModel> modules,
) async {
  const chunkSize = 500;
  var written = 0;
  for (var start = 0; start < modules.length; start += chunkSize) {
    final chunk = modules.skip(start).take(chunkSize).toList();
    final batch = db.batch();
    for (final module in chunk) {
      final ref = db.collection(AppConstants.learningModulesCollection).doc();
      batch.set(ref, module.toJson()..remove('id'));
    }
    await batch.commit();
    written += chunk.length;
  }
  return written;
}
