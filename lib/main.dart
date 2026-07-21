import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/theme/app_theme.dart';
import 'firebase_options.dart';
import 'l10n/app_localizations.dart';
import 'providers/locale_provider.dart';
import 'routing/app_router.dart';

// Connected to the `nova-acedemy` Firebase project via
// `flutterfire configure` (see lib/firebase_options.dart). If Firebase is
// ever unreachable/misconfigured at runtime, FirebaseAuth/Firestore calls
// throw and lib/routing/app_router.dart's redirect logic treats that as
// "signed out," falling back to /login instead of crashing.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Single highest-leverage FinOps/caching lever available on the Spark
  // (free) plan: enable Firestore's built-in local persistence cache on
  // every platform (IndexedDB on web via cloud_firestore_web's
  // persistentLocalCache, on-disk LevelDB/SQLite on mobile/desktop).
  // Repeat reads of unchanged curriculum content across app sessions are
  // then served straight from local cache -- these cached reads do not
  // hit the network and do not count against the daily read quota at
  // all -- at zero cost and with zero new dependencies (cloud_firestore
  // ships this built in).
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
    cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
  );

  runApp(const ProviderScope(child: NovaAcademyApp()));
}

class NovaAcademyApp extends ConsumerWidget {
  const NovaAcademyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    final locale = ref.watch(localeProvider);

    return MaterialApp.router(
      onGenerateTitle: (context) => AppLocalizations.of(context).appName,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
      theme: AppTheme.light(locale.languageCode),
      darkTheme: AppTheme.dark(locale.languageCode),
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
