// Test-driven harness for
// lib/core/services/streak_service.dart's updateStreakForCompletion() -- a
// pure, Firestore-free function extracted specifically so the daily-streak
// logic markModuleCompleted() folds into its one Firestore write
// (lib/providers/children_providers.dart) can be unit tested without a
// real/emulated Firestore instance. See
// test/curriculum_ingestion_service_test.dart for the same pattern applied
// to parseLearningModulesJson().

import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/core/services/streak_service.dart';

void main() {
  group('updateStreakForCompletion', () {
    test('same-day repeat completion is a no-op', () {
      final result = updateStreakForCompletion(
        currentStreakDays: 5,
        longestStreakDays: 7,
        lastActiveDateYyyymmdd: '20260721',
        completedAt: DateTime(2026, 7, 21, 18, 30),
      );

      expect(result.currentStreakDays, 5);
      expect(result.longestStreakDays, 7);
      expect(result.lastActiveDateYyyymmdd, '20260721');
    });

    test('completion exactly one day after the last one extends the streak by 1', () {
      final result = updateStreakForCompletion(
        currentStreakDays: 5,
        longestStreakDays: 7,
        lastActiveDateYyyymmdd: '20260720',
        completedAt: DateTime(2026, 7, 21, 9, 0),
      );

      expect(result.currentStreakDays, 6);
      expect(result.longestStreakDays, 7);
      expect(result.lastActiveDateYyyymmdd, '20260721');
    });

    test('completion with a 2+ day gap resets the streak to 1', () {
      final result = updateStreakForCompletion(
        currentStreakDays: 5,
        longestStreakDays: 7,
        lastActiveDateYyyymmdd: '20260718',
        completedAt: DateTime(2026, 7, 21, 9, 0),
      );

      expect(result.currentStreakDays, 1);
      expect(result.longestStreakDays, 7);
      expect(result.lastActiveDateYyyymmdd, '20260721');
    });

    test('first-ever completion (empty lastActiveDateYyyymmdd) starts a streak of 1', () {
      final result = updateStreakForCompletion(
        currentStreakDays: 0,
        longestStreakDays: 0,
        lastActiveDateYyyymmdd: '',
        completedAt: DateTime(2026, 7, 21, 9, 0),
      );

      expect(result.currentStreakDays, 1);
      expect(result.longestStreakDays, 1);
      expect(result.lastActiveDateYyyymmdd, '20260721');
    });

    test('longestStreakDays only increases, never decreases', () {
      // New streak (2) is below the prior longest (10) -- longest must stay.
      final result = updateStreakForCompletion(
        currentStreakDays: 1,
        longestStreakDays: 10,
        lastActiveDateYyyymmdd: '20260720',
        completedAt: DateTime(2026, 7, 21, 9, 0),
      );

      expect(result.currentStreakDays, 2);
      expect(result.longestStreakDays, 10);
    });

    test('longestStreakDays updates when a new streak exceeds the prior longest', () {
      final result = updateStreakForCompletion(
        currentStreakDays: 10,
        longestStreakDays: 10,
        lastActiveDateYyyymmdd: '20260720',
        completedAt: DateTime(2026, 7, 21, 9, 0),
      );

      expect(result.currentStreakDays, 11);
      expect(result.longestStreakDays, 11);
    });
  });
}
