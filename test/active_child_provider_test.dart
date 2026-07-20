// Root-cause reproduction test for the reported bug: "When a student
// completes a task, the completion is correctly saved, but the UI map path
// doesn't unlock the next node immediately -- a manual reload is required."
//
// Root cause: activeProfileProvider (lib/providers/active_profile_provider.dart)
// is a plain StateProvider set exactly once, at profile-selection time, to a
// StudentProfile wrapping a *frozen* ChildModel snapshot. The home screens
// read completedModuleIds/isLocked straight off that frozen copy.
// markModuleCompleted() (lib/providers/children_providers.dart) writes the
// new completion to Firestore via arrayUnion/increment, but nothing ever
// touches activeProfileProvider's cached copy afterward -- so the winding
// path keeps rendering the stale, pre-completion state until something
// (a manual reload) re-runs profile selection and captures a fresh
// snapshot.
//
// activeChildProvider fixes this by re-deriving the active child from
// childrenForCurrentUserProvider's live Firestore stream on every emission,
// instead of trusting the one-time snapshot -- exactly mirroring how the
// parent/teacher dashboards already stay live via that same stream.

import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nova_academy/models/child_model.dart';
import 'package:nova_academy/providers/active_profile_provider.dart';
import 'package:nova_academy/providers/children_providers.dart';

final _childBefore = ChildModel(
  id: 'child-1',
  parentId: 'parent-1',
  aliasName: 'Test Kid',
  currentGrade: Grade.year3,
);

final _childAfter = _childBefore.copyWith(
  completedModuleIds: const ['mock-year3-history-1'],
  totalStars: 14,
);

void main() {
  group('activeChildProvider', () {
    test(
      'reflects a completion written to Firestore without re-selecting the profile',
      () async {
        final controller = StreamController<List<ChildModel>>();
        addTearDown(controller.close);

        final container = ProviderContainer(
          overrides: [
            activeProfileProvider.overrideWith(
              (ref) => StudentProfile(_childBefore),
            ),
            childrenForCurrentUserProvider.overrideWith(
              (ref) => controller.stream,
            ),
          ],
        );
        addTearDown(container.dispose);

        // Keep the live stream provider subscribed for the test's duration.
        container.listen(childrenForCurrentUserProvider, (_, _) {});

        // Before the live snapshot has ever emitted, falls back to the
        // profile-selection snapshot -- not completed yet.
        expect(
          container.read(activeChildProvider)?.completedModuleIds,
          isEmpty,
        );

        controller.add([_childBefore]);
        await Future<void>.delayed(Duration.zero);
        expect(
          container.read(activeChildProvider)?.completedModuleIds,
          isEmpty,
        );

        // Simulates markModuleCompleted's Firestore write arriving through
        // childrenForCurrentUserProvider's live .snapshots() listener.
        // activeProfileProvider itself is never touched.
        controller.add([_childAfter]);
        await Future<void>.delayed(Duration.zero);

        expect(
          container.read(activeChildProvider)?.completedModuleIds,
          contains('mock-year3-history-1'),
          reason:
              'activeChildProvider must pick up the live Firestore update '
              'instead of the frozen activeProfileProvider snapshot',
        );
        expect(container.read(activeChildProvider)?.totalStars, 14);
      },
    );

    test('returns null when SelfProfile (no child) is active', () {
      final container = ProviderContainer(
        overrides: [
          activeProfileProvider.overrideWith((ref) => const SelfProfile()),
          childrenForCurrentUserProvider.overrideWith(
            (ref) => Stream.value([_childBefore]),
          ),
        ],
      );
      addTearDown(container.dispose);

      expect(container.read(activeChildProvider), isNull);
    });

    test(
      'falls back to the cached snapshot if the live stream has not emitted yet',
      () {
        final container = ProviderContainer(
          overrides: [
            activeProfileProvider.overrideWith(
              (ref) => StudentProfile(_childBefore),
            ),
            childrenForCurrentUserProvider.overrideWith(
              (ref) => const Stream.empty(),
            ),
          ],
        );
        addTearDown(container.dispose);

        expect(container.read(activeChildProvider)?.id, _childBefore.id);
      },
    );
  });
}
