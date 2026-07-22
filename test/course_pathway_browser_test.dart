import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/core/constants/home_tier.dart';
import 'package:nova_academy/features/home/course_pathway_browser.dart';
import 'package:nova_academy/models/child_model.dart';

void main() {
  group('pathwaysForTierAndGrade', () {
    test(
      'FIX VERIFIED: a specific grade only sees its own pathways, not every '
      'pathway in its tier (previously every Year 1-6 student saw the '
      'identical card list, since all of Year 1 through Year 6 map to the '
      'same HomeTier.primary)',
      () {
        final year1 = pathwaysForTierAndGrade(
          tier: HomeTier.primary,
          grade: Grade.year1,
        );
        final year4 = pathwaysForTierAndGrade(
          tier: HomeTier.primary,
          grade: Grade.year4,
        );

        expect(year1, isNotEmpty);
        expect(year4, isNotEmpty);
        expect(
          year1.every((p) => p.grade == Grade.year1),
          isTrue,
          reason: 'Year 1 must not see Year 4 (or any other grade) cards',
        );
        expect(
          year4.every((p) => p.grade == Grade.year4),
          isTrue,
          reason: 'Year 4 must not see Year 1 (or any other grade) cards',
        );
        expect(
          year1.map((p) => p.id).toSet(),
          isNot(equals(year4.map((p) => p.id).toSet())),
          reason: 'Year 1 and Year 4 must see genuinely different card sets',
        );
      },
    );

    test(
      'a grade with no authored pathway yet (e.g. Year 2) sees no cards, '
      'rather than falling back to another grade\'s pathways',
      () {
        final year2 = pathwaysForTierAndGrade(
          tier: HomeTier.primary,
          grade: Grade.year2,
        );
        expect(year2, isEmpty);
      },
    );

    test(
      'a null grade (owner/parent/teacher previewing a tier with no active '
      'student profile) falls back to every pathway in that tier',
      () {
        final tierWide = pathwaysForTierAndGrade(tier: HomeTier.primary);
        expect(
          tierWide.length,
          greaterThan(
            pathwaysForTierAndGrade(
              tier: HomeTier.primary,
              grade: Grade.year1,
            ).length,
          ),
        );
      },
    );

    test('a Primary grade never sees a Secondary-tier pathway', () {
      final year4 = pathwaysForTierAndGrade(
        tier: HomeTier.primary,
        grade: Grade.year4,
      );
      expect(
        year4.every((p) => homeTierForGrade(p.grade) == HomeTier.primary),
        isTrue,
      );
    });
  });
}
