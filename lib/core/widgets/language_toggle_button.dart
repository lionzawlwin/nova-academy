import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../l10n/app_localizations.dart';
import '../../providers/locale_provider.dart';

/// A compact global EN/MY toggle backed by [localeProvider] -- tapping it
/// instantly switches the whole app's language via
/// [LocaleNotifier.toggleEnglishMyanmar], no confirmation or reload needed.
///
/// Shows the language it will switch TO (so "EN" appears while the app is
/// currently in Burmese, and vice versa), matching the icon-only style of
/// [SwitchProfileButton]/[GatekeeperEntryIconButton] in
/// `home_shared_widgets.dart` so it drops into the same header rows and
/// AppBar action lists without looking out of place.
class LanguageToggleButton extends ConsumerWidget {
  const LanguageToggleButton({super.key, this.color});

  /// Icon/text tint. Left `null` to inherit the surrounding `IconTheme`
  /// (e.g. an AppBar's default icon color); passed explicitly (e.g.
  /// `Colors.white`) on screens with a bespoke gradient header.
  final Color? color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final locale = ref.watch(localeProvider);
    final targetLabel = locale.languageCode == 'en' ? 'MY' : 'EN';
    final resolvedColor = color ?? IconTheme.of(context).color;

    return IconButton(
      tooltip: l10n.actionSwitchLanguage,
      onPressed: () => ref.read(localeProvider.notifier).toggleEnglishMyanmar(),
      icon: Text(
        targetLabel,
        style: TextStyle(
          color: resolvedColor,
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
      ),
    );
  }
}
