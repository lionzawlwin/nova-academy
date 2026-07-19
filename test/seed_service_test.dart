// Test-driven seeding harness for lib/core/services/seed_service.dart.
//
// seedDatabase() itself requires a live/emulated Firestore instance (see
// the doc comment in tool/seed_database.dart for how to point it at the
// Firebase Local Emulator Suite in a dev/CI context) -- this project has
// no fake/mock Firestore package in pubspec.yaml, and adding one is out of
// scope for this phase. Instead, this suite tests the seed *data* itself
// -- mockSeedUsers() / mockSeedChildren() / mockSeedLearningModules() --
// which are plain Dart functions with no Firestore dependency. That is
// exactly the part of seedDatabase() most likely to silently drift (a
// typo'd id, a missing Burmese string, a teacher linked to a student that
// doesn't exist) as future phases add more mock content, so it's the part
// most worth locking down with tests.

import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/core/services/seed_service.dart';
import 'package:nova_academy/models/child_model.dart';
import 'package:nova_academy/models/user_model.dart';

void main() {
  group('mockSeedUsers', () {
    final users = mockSeedUsers();
    final children = mockSeedChildren();
    final childIds = children.map((c) => c.id).toSet();

    test('contains exactly one parent and two teachers', () {
      expect(users.where((u) => u.role == UserRole.parent).length, 1);
      expect(users.where((u) => u.role == UserRole.teacher).length, 2);
    });

    test('every user id is unique', () {
      expect(users.map((u) => u.id).toSet().length, users.length);
    });

    test('every user has a non-empty email', () {
      for (final user in users) {
        expect(user.email, isNotEmpty, reason: 'user ${user.id} has no email');
      }
    });

    test('the mock parent is linked to every mock child', () {
      final parent = users.singleWhere((u) => u.role == UserRole.parent);
      expect(parent.linkedStudents.toSet(), childIds);
    });

    test('every teacher linkedStudents id refers to a real mock child', () {
      for (final teacher in users.where((u) => u.role == UserRole.teacher)) {
        for (final id in teacher.linkedStudents) {
          expect(
            childIds.contains(id),
            isTrue,
            reason: '$id (linked by ${teacher.id}) has no matching child',
          );
        }
      }
    });

    test('every mock child is linked to at least one teacher', () {
      final linked = <String>{
        for (final teacher in users.where((u) => u.role == UserRole.teacher))
          ...teacher.linkedStudents,
      };
      expect(linked, childIds);
    });
  });

  group('mockSeedChildren', () {
    final users = mockSeedUsers();
    final children = mockSeedChildren();
    final parentIds = users
        .where((u) => u.role == UserRole.parent)
        .map((u) => u.id)
        .toSet();

    test('covers all four required grade bands', () {
      final grades = children.map((c) => c.currentGrade).toSet();
      expect(grades, {Grade.year4, Grade.year1, Grade.nursery, Grade.igcse});
    });

    test('every child id is unique', () {
      expect(children.map((c) => c.id).toSet().length, children.length);
    });

    test('every child has a non-empty alias name', () {
      for (final child in children) {
        expect(
          child.aliasName,
          isNotEmpty,
          reason: 'child ${child.id} has no alias name',
        );
      }
    });

    test('every child parentId points at a mock parent user', () {
      for (final child in children) {
        expect(
          parentIds.contains(child.parentId),
          isTrue,
          reason: 'child ${child.id} has an unlinked parentId',
        );
      }
    });

    test('every child has a non-negative star count', () {
      for (final child in children) {
        expect(child.totalStars, greaterThanOrEqualTo(0));
      }
    });
  });

  group('mockSeedLearningModules', () {
    final children = mockSeedChildren();
    final childGrades = children.map((c) => c.currentGrade).toSet();
    final modules = mockSeedLearningModules();

    test('has at least one module per seeded grade band', () {
      final moduleGrades = modules.map((m) => m.grade).toSet();
      expect(moduleGrades, childGrades);
    });

    test('every module id is unique', () {
      expect(modules.map((m) => m.id).toSet().length, modules.length);
    });

    test('every module has both English and Burmese title and description', () {
      for (final module in modules) {
        expect(
          module.titleEn,
          isNotEmpty,
          reason: '${module.id} missing titleEn',
        );
        expect(
          module.titleMy,
          isNotEmpty,
          reason: '${module.id} missing titleMy',
        );
        expect(
          module.descriptionEn,
          isNotEmpty,
          reason: '${module.id} missing descriptionEn',
        );
        expect(
          module.descriptionMy,
          isNotEmpty,
          reason: '${module.id} missing descriptionMy',
        );
        // The Burmese and English strings must actually differ -- catches
        // any future copy/paste of the English string into the Burmese
        // field instead of a real translation.
        expect(
          module.titleMy,
          isNot(equals(module.titleEn)),
          reason: '${module.id} titleMy == titleEn',
        );
        expect(
          module.descriptionMy,
          isNot(equals(module.descriptionEn)),
          reason: '${module.id} descriptionMy == descriptionEn',
        );
      }
    });

    test('every module grants a positive star reward', () {
      for (final module in modules) {
        expect(
          module.starsReward,
          greaterThan(0),
          reason: '${module.id} has no star reward',
        );
      }
    });

    test(
      'every module has a lowercase subject key (matches ARB key convention)',
      () {
        for (final module in modules) {
          expect(
            module.subject,
            module.subject.toLowerCase(),
            reason: '${module.id} subject is not lowercase',
          );
        }
      },
    );
  });
}
