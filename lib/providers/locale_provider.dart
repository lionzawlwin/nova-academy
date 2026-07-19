import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// The `SharedPreferences` key the chosen language code is persisted under.
const String _localePrefsKey = 'nova_academy_locale_code';

/// The language codes Nova Academy ships UI copy for. Kept in one place so
/// [LocaleNotifier] and anything validating a stored/incoming code agree.
const List<String> supportedLocaleCodes = ['en', 'my'];

/// The app's active [Locale], defaulting to English and persisted to disk
/// via `shared_preferences` so the choice survives app restarts.
///
/// Built as a synchronous [Notifier] (rather than an async one) so
/// [MaterialApp.router] always has a locale to render immediately -- the
/// persisted value, if any, is restored moments later via [_restore] and
/// simply updates [state] when it arrives.
class LocaleNotifier extends Notifier<Locale> {
  @override
  Locale build() {
    // Fire-and-forget: restores the persisted choice (if any) shortly
    // after the first frame. Safe to ignore the future here -- `state =`
    // inside `_restore` is what actually applies it.
    _restore();
    return const Locale('en');
  }

  Future<void> _restore() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_localePrefsKey);
    if (code != null && supportedLocaleCodes.contains(code)) {
      state = Locale(code);
    }
  }

  /// Switches the active locale to [locale] and persists the choice.
  /// No-ops for any language code Nova Academy doesn't ship (see
  /// [supportedLocaleCodes]).
  Future<void> setLocale(Locale locale) async {
    if (!supportedLocaleCodes.contains(locale.languageCode)) return;
    state = locale;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localePrefsKey, locale.languageCode);
  }

  /// Convenience for the English/Burmese toggle used by the profile
  /// selection screen's language switcher.
  Future<void> toggleEnglishMyanmar() {
    return setLocale(
      state.languageCode == 'en' ? const Locale('my') : const Locale('en'),
    );
  }
}

final localeProvider = NotifierProvider<LocaleNotifier, Locale>(
  LocaleNotifier.new,
);
