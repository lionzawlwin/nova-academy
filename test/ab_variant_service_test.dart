// Test-driven harness for
// lib/core/services/ab_variant_service.dart's abVariantFor() -- a pure,
// backend-free deterministic variant bucket. See
// test/streak_service_test.dart for the same "pure function extracted for
// unit testing" pattern applied to updateStreakForCompletion().

import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/core/services/ab_variant_service.dart';

void main() {
  group('abVariantFor', () {
    test('the same (uid, experimentKey) always returns the same variant across repeated calls', () {
      const uid = 'student-123';
      const experimentKey = 'xp-boost';

      final first = abVariantFor(uid, experimentKey);
      for (var i = 0; i < 20; i++) {
        expect(abVariantFor(uid, experimentKey), first);
      }
    });

    test('different experimentKeys for the same uid can return different variants', () {
      // Concrete pair demonstrating the split: 'xp-boost' hashes to 'a' and
      // 'experiment-a' hashes to 'b' for this uid, per the fold-hash defined
      // in ab_variant_service.dart.
      const uid = 'student-123';

      expect(abVariantFor(uid, 'xp-boost'), 'a');
      expect(abVariantFor(uid, 'experiment-a'), 'b');
    });

    test('only "a" or "b" are ever returned', () {
      const uids = ['student-1', 'student-2', 'parent-99', ''];
      const experimentKeys = [
        'xp-boost',
        'streak-badge',
        'onboarding-v2',
        'share-prompt',
        '',
      ];

      for (final uid in uids) {
        for (final key in experimentKeys) {
          final variant = abVariantFor(uid, key);
          expect(['a', 'b'], contains(variant));
        }
      }
    });
  });
}
