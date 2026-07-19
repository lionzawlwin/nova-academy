import 'package:flutter/material.dart';

import '../../core/constants/home_tier.dart';
import 'nursery_kg_home_screen.dart';
import 'primary_home_screen.dart';
import 'secondary_igcse_home_screen.dart';

/// The student-facing home screen, scoped to one of the three [HomeTier]s.
/// Reachable only while a `StudentProfile` is active (enforced by the
/// router's redirect -- see lib/routing/app_router.dart).
///
/// Purely a dispatcher: each tier gets its own screen tuned to that age
/// group's tone -- [NurseryKgHomeScreen] (minimal text, huge bouncy
/// targets), [PrimaryHomeScreen] (gamified learning path), or
/// [SecondaryIgcseHomeScreen] (mature, information-dense dashboard).
class GradeHomeScreen extends StatelessWidget {
  const GradeHomeScreen({required this.tier, super.key});

  final HomeTier tier;

  @override
  Widget build(BuildContext context) {
    switch (tier) {
      case HomeTier.nursery:
        return const NurseryKgHomeScreen();
      case HomeTier.primary:
        return const PrimaryHomeScreen();
      case HomeTier.secondary:
        return const SecondaryIgcseHomeScreen();
    }
  }
}
