import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/grade_localization.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../providers/children_providers.dart';
import '../../providers/firebase_providers.dart';

/// Shows a dialog to create a new child profile for [parentId]. Shows a
/// success/error snackbar itself; callers don't need to handle the result.
Future<void> showAddChildDialog(
  BuildContext context,
  WidgetRef ref, {
  required String parentId,
}) async {
  final l10n = AppLocalizations.of(context);
  final aliasController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Grade selectedGrade = Grade.nursery;
  bool isSaving = false;
  String? errorMessage;

  final created = await showDialog<bool>(
    context: context,
    builder: (dialogContext) {
      return StatefulBuilder(
        builder: (dialogContext, setState) {
          return AlertDialog(
            title: Text(l10n.profileAddChild),
            content: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: aliasController,
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: l10n.profileAliasName,
                      border: const OutlineInputBorder(),
                    ),
                    validator: (value) =>
                        (value == null || value.trim().isEmpty)
                        ? l10n.actionError
                        : null,
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<Grade>(
                    initialValue: selectedGrade,
                    decoration: InputDecoration(
                      labelText: l10n.profileChooseGrade,
                      border: const OutlineInputBorder(),
                    ),
                    items: Grade.values
                        .map(
                          (grade) => DropdownMenuItem(
                            value: grade,
                            child: Text(gradeLabel(l10n, grade)),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      if (value != null) setState(() => selectedGrade = value);
                    },
                  ),
                  if (errorMessage != null) ...[
                    const SizedBox(height: 12),
                    Text(
                      errorMessage!,
                      style: TextStyle(
                        color: Theme.of(dialogContext).colorScheme.error,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: isSaving
                    ? null
                    : () => Navigator.of(dialogContext).pop(false),
                child: Text(l10n.actionCancel),
              ),
              FilledButton(
                onPressed: isSaving
                    ? null
                    : () async {
                        if (!(formKey.currentState?.validate() ?? false)) {
                          return;
                        }
                        setState(() {
                          isSaving = true;
                          errorMessage = null;
                        });
                        try {
                          await addChild(
                            ref.read(firestoreProvider),
                            parentId: parentId,
                            aliasName: aliasController.text.trim(),
                            grade: selectedGrade,
                          );
                          if (dialogContext.mounted) {
                            Navigator.of(dialogContext).pop(true);
                          }
                        } catch (_) {
                          setState(() {
                            isSaving = false;
                            errorMessage = l10n.actionError;
                          });
                        }
                      },
                child: isSaving
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2.4),
                      )
                    : Text(l10n.actionSave),
              ),
            ],
          );
        },
      );
    },
  );

  aliasController.dispose();

  if (created != true || !context.mounted) return;
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(l10n.profileCreated)));
}
