import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/grade_localization.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../providers/children_providers.dart';
import '../../providers/firebase_providers.dart';

/// Shows a dialog pre-filled with [child]'s current name/grade, and saves
/// any changes via [updateChild]. Shows a success/error snackbar itself;
/// callers don't need to handle the result. Shared by the parent dashboard's
/// children list and the "Who's Learning?" profile-selection screen's
/// long-press menu so both entry points use identical, already-tested
/// dialog logic instead of two hand-maintained copies.
Future<void> showEditChildDialog(
  BuildContext context,
  WidgetRef ref,
  ChildModel child,
) async {
  final l10n = AppLocalizations.of(context);
  final aliasController = TextEditingController(text: child.aliasName);
  final formKey = GlobalKey<FormState>();
  Grade selectedGrade = child.currentGrade;
  bool isSaving = false;
  String? errorMessage;

  final saved = await showDialog<bool>(
    context: context,
    builder: (dialogContext) => StatefulBuilder(
      builder: (dialogContext, setState) => AlertDialog(
        title: Text(l10n.actionEdit),
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
                validator: (value) => (value == null || value.trim().isEmpty)
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
                      (g) => DropdownMenuItem(
                        value: g,
                        child: Text(gradeLabel(l10n, g)),
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
                    if (!(formKey.currentState?.validate() ?? false)) return;
                    setState(() {
                      isSaving = true;
                      errorMessage = null;
                    });
                    try {
                      await updateChild(
                        ref.read(firestoreProvider),
                        child.copyWith(
                          aliasName: aliasController.text.trim(),
                          currentGrade: selectedGrade,
                        ),
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
      ),
    ),
  );

  aliasController.dispose();

  if (saved != true || !context.mounted) return;
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(l10n.profileUpdated)));
}

/// Shows a strict "are you sure" confirmation naming [child] explicitly,
/// and only calls [deleteChild] if the user confirms. Shows a success/error
/// snackbar itself; callers don't need to handle the result. Shared by the
/// parent dashboard and the profile-selection screen's long-press menu --
/// see [showEditChildDialog]'s doc comment for why this is a shared
/// function rather than two copies.
Future<void> confirmDeleteChild(
  BuildContext context,
  WidgetRef ref,
  ChildModel child,
) async {
  final l10n = AppLocalizations.of(context);
  final confirmed = await showDialog<bool>(
    context: context,
    builder: (dialogContext) => AlertDialog(
      title: Text(l10n.actionDelete),
      content: Text(l10n.childDeleteConfirmMessage(child.aliasName)),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(dialogContext).pop(false),
          child: Text(l10n.actionCancel),
        ),
        FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: Theme.of(dialogContext).colorScheme.error,
          ),
          onPressed: () => Navigator.of(dialogContext).pop(true),
          child: Text(l10n.actionDelete),
        ),
      ],
    ),
  );

  if (confirmed != true || !context.mounted) return;
  try {
    await deleteChild(ref.read(firestoreProvider), child.id);
    if (context.mounted) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l10n.profileDeleted)));
    }
  } catch (_) {
    if (context.mounted) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l10n.actionError)));
    }
  }
}
