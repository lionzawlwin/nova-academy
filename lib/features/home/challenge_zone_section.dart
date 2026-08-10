import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../l10n/app_localizations.dart';

/// One playable "Challenge Zone" card: a gamified quiz subject.
class ChallengeZoneItem {
  const ChallengeZoneItem({
    required this.label,
    required this.icon,
    required this.color,
    required this.subjectKey,
  });

  final String label;
  final IconData icon;
  final Color color;

  /// Lowercase key matching [LearningModuleModel.subject]'s convention
  /// (e.g. `'generalknowledge'`, `'science'`, `'geography'`, `'history'`).
  final String subjectKey;
}

/// A prominent, horizontally-scrollable row of one-tap gamified quiz entry
/// points, deliberately placed above/separate from "Course Pathways" on
/// every student home screen (Nursery through IGCSE) so a child can jump
/// straight into a quiz without navigating a sequential learning path --
/// this is the "🎮 Challenge Zone" hub the product directive asked for.
///
/// Ghost Mode isn't a separate destination -- it auto-activates on replay
/// inside `McqQuizScreen` (see that screen's `ghostAttemptProvider` usage)
/// -- so this section surfaces it as a one-line hint instead of a card.
/// Photo Guessing has a card on the Primary (Year 1-6) tier only (see
/// `primary_home_screen.dart`'s `photoguess` item, backed by
/// `photo_guess_bank.dart`'s first general-knowledge set). Nursery/KG and
/// Secondary/IGCSE still omit it -- Nursery/KG's Challenge Zone routes
/// through a different, Firestore-seeded activity system entirely, and
/// Secondary/IGCSE has no general-knowledge photo content yet -- wiring a
/// card to a guaranteed-empty screen would just trade one dead end for
/// another.
class ChallengeZoneSection extends StatelessWidget {
  const ChallengeZoneSection({
    super.key,
    required this.items,
    required this.onTapItem,
  });

  final List<ChallengeZoneItem> items;
  final void Function(ChallengeZoneItem item) onTapItem;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.homeChallengeZoneTitle,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          l10n.homeChallengeZoneSubtitle,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.outline,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 128,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final item = items[index];
              return _ChallengeCard(item: item, onTap: () => onTapItem(item));
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(
              Icons.auto_awesome_rounded,
              size: 16,
              color: theme.colorScheme.outline,
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                l10n.homeChallengeZoneGhostHint,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ChallengeCard extends StatelessWidget {
  const _ChallengeCard({required this.item, required this.onTap});

  final ChallengeZoneItem item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104,
      height: 128,
      child: CandyBevelSurface(
        faceColor: item.color,
        bevelDepth: CandyBevelDepth.primary,
        borderRadius: AppTheme.radiusLarge,
        padding: const EdgeInsets.all(12),
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item.icon, color: Colors.white, size: 32),
            const SizedBox(height: 8),
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  item.label,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
