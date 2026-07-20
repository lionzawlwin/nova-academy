// Test-driven harness for lib/providers/curriculum_sync_provider.dart's
// needsSync() -- a pure, Firestore-free/SharedPreferences-free function
// extracted specifically so the version-guard logic driving the owner's
// background curriculum auto-sync can be unit tested in isolation. See
// docs/superpowers/specs/2026-07-20-mission5-curriculum-autosync-design.md.

import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/providers/curriculum_sync_provider.dart';

void main() {
  group('needsSync', () {
    test('no stored version yet (first-ever run) -> sync needed', () {
      expect(needsSync(null, 'v1'), isTrue);
    });

    test('stored version matches current -> no sync needed', () {
      expect(needsSync('v1', 'v1'), isFalse);
    });

    test('stored version differs from current -> sync needed', () {
      expect(needsSync('v1', 'v2'), isTrue);
    });
  });
}
