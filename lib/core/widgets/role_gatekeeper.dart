import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../l10n/app_localizations.dart';
import '../../providers/active_profile_provider.dart';

/// A simple arithmetic problem the RoleGatekeeper dialog asks a
/// student-mode profile to solve before it lets them into a
/// parent/teacher/owner area.
class RoleGatekeeperPuzzle {
  RoleGatekeeperPuzzle._(this.question, this.answer);

  final String question;
  final int answer;

  factory RoleGatekeeperPuzzle.generate([Random? random]) {
    final rng = random ?? Random();
    final operator = rng.nextInt(3);

    switch (operator) {
      case 0: // addition
        final a = 10 + rng.nextInt(80);
        final b = 10 + rng.nextInt(80);
        return RoleGatekeeperPuzzle._('$a + $b', a + b);
      case 1: // subtraction, kept non-negative
        final a = 20 + rng.nextInt(70);
        final b = 1 + rng.nextInt(a - 1);
        return RoleGatekeeperPuzzle._('$a - $b', a - b);
      default: // multiplication, small factors so mental math stays fair
        final a = 2 + rng.nextInt(10);
        final b = 2 + rng.nextInt(10);
        return RoleGatekeeperPuzzle._('$a x $b', a * b);
    }
  }
}

/// Shows the RoleGatekeeper puzzle dialog and returns `true` if the user
/// answered correctly (and dismissed it themselves), `false` otherwise
/// (cancelled, or dismissed without solving).
Future<bool> showRoleGatekeeperDialog(BuildContext context) async {
  final result = await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (_) => const _RoleGatekeeperDialog(),
  );
  return result ?? false;
}

/// Convenience for a student-mode "tap to enter a grown-up area" button:
/// shows the puzzle, and only on success records the unlock and navigates
/// to [targetPath] via GoRouter.
Future<void> requestGatedNavigation({
  required BuildContext context,
  required WidgetRef ref,
  required String targetPath,
}) async {
  final solved = await showRoleGatekeeperDialog(context);
  if (!solved) return;

  final prefix = protectedPrefixOf(targetPath);
  ref.read(gatekeeperUnlockProvider.notifier).state = prefix;

  if (context.mounted) context.go(targetPath);
}

class _RoleGatekeeperDialog extends StatefulWidget {
  const _RoleGatekeeperDialog();

  @override
  State<_RoleGatekeeperDialog> createState() => _RoleGatekeeperDialogState();
}

class _RoleGatekeeperDialogState extends State<_RoleGatekeeperDialog> {
  late RoleGatekeeperPuzzle _puzzle = RoleGatekeeperPuzzle.generate();
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _errorText;
  bool _justSolved = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    final entered = int.tryParse(_controller.text.trim());
    final l10n = AppLocalizations.of(context);

    if (entered == null) {
      setState(() => _errorText = l10n.gatekeeperEnterAnswer);
      return;
    }

    if (entered == _puzzle.answer) {
      setState(() {
        _justSolved = true;
        _errorText = null;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        if (mounted) Navigator.of(context).pop(true);
      });
      return;
    }

    setState(() {
      _errorText = l10n.gatekeeperWrongAnswer;
      _puzzle = RoleGatekeeperPuzzle.generate();
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return AlertDialog(
      icon: Icon(
        _justSolved ? Icons.lock_open_rounded : Icons.shield_moon_rounded,
        color: theme.colorScheme.primary,
        size: 36,
      ),
      title: Text(l10n.gatekeeperTitle, textAlign: TextAlign.center),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              l10n.gatekeeperSolveToProceed,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            if (_justSolved)
              Text(
                l10n.gatekeeperCorrectAnswer,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.green.shade600,
                  fontWeight: FontWeight.bold,
                ),
              )
            else ...[
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withValues(
                    alpha: 0.4,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  '${_puzzle.question} = ?',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _controller,
                autofocus: true,
                keyboardType: const TextInputType.numberWithOptions(
                  signed: true,
                ),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: l10n.gatekeeperEnterAnswer,
                  errorText: _errorText,
                  border: const OutlineInputBorder(),
                ),
                onSubmitted: (_) => _submit(),
              ),
            ],
          ],
        ),
      ),
      actions: _justSolved
          ? const []
          : [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(l10n.actionCancel),
              ),
              FilledButton(onPressed: _submit, child: Text(l10n.actionSubmit)),
            ],
    );
  }
}
