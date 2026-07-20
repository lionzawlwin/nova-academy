import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../l10n/app_localizations.dart';
import '../../providers/firebase_providers.dart';

/// Email/password sign-in and sign-up. Successful auth is picked up by
/// [authStateChangesProvider] and the router takes it from there -- this
/// screen never navigates itself.
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _isSignUp = false;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final l10n = AppLocalizations.of(context);
    if (!(_formKey.currentState?.validate() ?? false)) return;

    setState(() => _isSubmitting = true);
    final auth = ref.read(firebaseAuthProvider);
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    try {
      if (_isSignUp) {
        await auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      } else {
        await auth.signInWithEmailAndPassword(email: email, password: password);
      }
      // On success, authStateChangesProvider fires and the router redirect
      // takes over -- nothing further to do here.
    } on FirebaseAuthException catch (e) {
      _showError(e.message ?? l10n.actionError);
    } catch (_) {
      _showError(l10n.actionError);
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  void _showError(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  void _showComingSoon() {
    final l10n = AppLocalizations.of(context);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(l10n.actionComingSoon)));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(gradient: AppGradients.hero(scheme)),
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: LanguageToggleButton(color: scheme.onPrimary),
              ),
              Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 32,
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 420),
                    child: Card(
                      elevation: 12,
                      shadowColor: Colors.black38,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(28),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Icon(
                                Icons.auto_awesome_rounded,
                                color: scheme.primary,
                                size: 40,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                _isSignUp
                                    ? l10n.authJoinNovaAcademy
                                    : l10n.authWelcomeBack,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 24),
                              TextFormField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: l10n.authEmail,
                                  prefixIcon: const Icon(Icons.email_outlined),
                                  border: const OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  final v = value?.trim() ?? '';
                                  final validEmail = RegExp(
                                    r'^[^@\s]+@[^@\s]+\.[^@\s]+$',
                                  );
                                  if (!validEmail.hasMatch(v)) {
                                    return l10n.authInvalidEmail;
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                controller: _passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: l10n.authPassword,
                                  prefixIcon: const Icon(Icons.lock_outline),
                                  border: const OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if ((value ?? '').length < 6) {
                                    return l10n.authPasswordTooShort;
                                  }
                                  return null;
                                },
                              ),
                              if (_isSignUp) ...[
                                const SizedBox(height: 16),
                                TextFormField(
                                  controller: _confirmPasswordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: l10n.authConfirmPassword,
                                    prefixIcon: const Icon(Icons.lock_outline),
                                    border: const OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value != _passwordController.text) {
                                      return l10n.authPasswordsDoNotMatch;
                                    }
                                    return null;
                                  },
                                ),
                              ],
                              if (!_isSignUp) ...[
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: _showComingSoon,
                                    child: Text(l10n.authForgotPassword),
                                  ),
                                ),
                              ] else
                                const SizedBox(height: 16),
                              const SizedBox(height: 8),
                              FilledButton(
                                onPressed: _isSubmitting ? null : _submit,
                                style: FilledButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16,
                                  ),
                                ),
                                child: _isSubmitting
                                    ? const SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2.4,
                                        ),
                                      )
                                    : Text(
                                        _isSignUp
                                            ? l10n.authSignUp
                                            : l10n.authSignIn,
                                      ),
                              ),
                              const SizedBox(height: 12),
                              TextButton(
                                onPressed: _isSubmitting
                                    ? null
                                    : () => setState(
                                        () => _isSignUp = !_isSignUp,
                                      ),
                                child: Text(
                                  _isSignUp
                                      ? l10n.authAlreadyHaveAccount
                                      : l10n.authDontHaveAccount,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
