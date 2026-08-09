import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../models/leaderboard_entry_model.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/leaderboard_providers.dart';

/// Bilingual UI-chrome copy, following the same `*En`/`*My` local-`_t()`
/// convention as the sibling lesson screens.
String _t(BuildContext context, String en, String my) =>
    Localizations.localeOf(context).languageCode == 'my' ? my : en;

/// Arguments the router should pass when pushing [LeaderboardScreen].
class LeaderboardArgs {
  const LeaderboardArgs({required this.title, required this.lessonId});

  final String title;
  final String lessonId;
}

/// The top-10 async leaderboard for one lesson (Task 6's Spark-plan-
/// friendly alternative to a live multiplayer leaderboard) --
/// [leaderboardTopEntriesProvider]'s one-shot ranked read, rendered as a
/// simple numbered list. The active child's own row (if it appears in the
/// top 10) is highlighted; a pull-to-refresh re-runs the read rather than
/// listening live, matching that provider's cost rationale.
class LeaderboardScreen extends ConsumerWidget {
  const LeaderboardScreen({super.key, required this.args});

  final LeaderboardArgs args;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final entriesAsync = ref.watch(
      leaderboardTopEntriesProvider(args.lessonId),
    );
    final activeChildId = switch (ref.watch(activeProfileProvider)) {
      StudentProfile(:final child) => child.id,
      _ => null,
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        actions: const [LanguageToggleButton()],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () =>
              ref.refresh(leaderboardTopEntriesProvider(args.lessonId).future),
          child: entriesAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, _) => ListView(
              // Wrapped in a scrollable so pull-to-refresh still works from
              // an error state, not just the loaded/empty ones.
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    _t(
                      context,
                      "Couldn't load the leaderboard. Pull down to try again.",
                      'ဂိုးဇယားကို ဖွင့်၍မရပါ။ ပြန်စမ်းရန် အောက်သို့ ဆွဲချပါ။',
                    ),
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
            data: (entries) => entries.isEmpty
                ? ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(
                          _t(
                            context,
                            'No scores yet -- be the first to set a time!',
                            'ရမှတ်များ မရှိသေးပါ -- ပထမဆုံး အချိန်သတ်မှတ်သူဖြစ်ပါ!',
                          ),
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  )
                : ListView.separated(
                    padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
                    itemCount: entries.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 10),
                    itemBuilder: (context, index) => _LeaderboardRow(
                      rank: index + 1,
                      entry: entries[index],
                      isYou: entries[index].childId == activeChildId,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

class _LeaderboardRow extends StatelessWidget {
  const _LeaderboardRow({
    required this.rank,
    required this.entry,
    required this.isYou,
  });

  final int rank;
  final LeaderboardEntryModel entry;
  final bool isYou;

  static const _medalColors = {
    1: AppColors.goldMedal,
    2: Color(0xFFC0C0C0),
    3: Color(0xFFCD7F32),
  };

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final medalColor = _medalColors[rank];
    final seconds = (entry.totalMillis / 1000).toStringAsFixed(1);

    return CandyBevelSurface(
      faceColor: isYou
          ? AppColors.candyPrimary.withValues(alpha: 0.12)
          : theme.colorScheme.surfaceContainerHigh,
      bevelDepth: CandyBevelDepth.secondary,
      borderRadius: AppTheme.radiusLarge,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: isYou
          ? Border.all(color: AppColors.candyPrimary, width: 2)
          : null,
      child: Row(
        children: [
          SizedBox(
            width: 32,
            child: medalColor != null
                ? Icon(Icons.emoji_events_rounded, color: medalColor, size: 26)
                : Text(
                    '$rank',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              entry.aliasName,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Text(
            '${entry.scorePercent}%',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w800,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            '${seconds}s',
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
