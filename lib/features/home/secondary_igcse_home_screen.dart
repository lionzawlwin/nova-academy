import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/app_theme.dart';
import '../../core/utils/grade_localization.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../models/learning_module_model.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/learning_module_providers.dart';
import '../../routing/app_router.dart';
import '../lessons/mcq_quiz_screen.dart';
import 'home_shared_widgets.dart';

/// A reasonable "full stars" goal used purely to give the progress summary
/// something to fill toward -- not a real product concept yet (mirrors the
/// same constant used on the teacher dashboard).
const int _starsGoal = 50;

class _SubjectDef {
  const _SubjectDef({required this.key, required this.icon});
  final String key;
  final IconData icon;
}

const List<_SubjectDef> _secondarySubjects = [
  _SubjectDef(key: 'algebra', icon: Icons.functions_rounded),
  _SubjectDef(key: 'physics', icon: Icons.bolt_rounded),
  _SubjectDef(key: 'chemistry', icon: Icons.biotech_rounded),
  _SubjectDef(key: 'biology', icon: Icons.eco_rounded),
  _SubjectDef(key: 'ict', icon: Icons.memory_rounded),
  _SubjectDef(key: 'socialstudies', icon: Icons.public_rounded),
];

String _labelFor(AppLocalizations l10n, String key) {
  switch (key) {
    case 'algebra':
      return l10n.subjectAlgebra;
    case 'physics':
      return l10n.subjectPhysics;
    case 'chemistry':
      return l10n.subjectChemistry;
    case 'biology':
      return l10n.subjectBiology;
    case 'ict':
      return l10n.subjectIct;
    case 'socialstudies':
      return l10n.subjectSocialStudies;
    default:
      return key;
  }
}

/// The Secondary/IGCSE student home: a mature, information-dense dashboard
/// -- subject cards, a progress summary, and an upcoming modules list --
/// in a muted-premium palette rather than the brighter tones of the
/// younger tiers.
class SecondaryIgcseHomeScreen extends ConsumerWidget {
  const SecondaryIgcseHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final activeProfile = ref.watch(activeProfileProvider);
    final child = activeProfile is StudentProfile ? activeProfile.child : null;
    final locale = Localizations.localeOf(context).languageCode;
    final modulesAsync = ref.watch(learningModulesProvider);
    final gradeModules =
        (modulesAsync.valueOrNull ?? const <LearningModuleModel>[])
            .where((m) => child == null || m.grade == child.currentGrade)
            .toList();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
          children: [
            _Header(child: child, locale: locale),
            const SizedBox(height: 20),
            _ProgressSummary(
              stars: child?.totalStars ?? 0,
              moduleCount: gradeModules.length,
            ),
            const SizedBox(height: 24),
            Text(
              l10n.homeSubjectsTitle,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _secondarySubjects.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 210,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                childAspectRatio: 1.15,
              ),
              itemBuilder: (context, index) {
                final subject = _secondarySubjects[index];
                final color =
                    AppColors.secondaryPalette[index %
                        AppColors.secondaryPalette.length];
                final count = gradeModules
                    .where((m) => m.subject.toLowerCase() == subject.key)
                    .length;
                return _SubjectCard(
                  label: _labelFor(l10n, subject.key),
                  icon: subject.icon,
                  color: color,
                  moduleCount: count,
                );
              },
            ),
            const SizedBox(height: 28),
            Text(
              l10n.homeUpcomingModulesTitle,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            if (gradeModules.isEmpty)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.hourglass_empty_rounded,
                      color: theme.colorScheme.outline,
                      size: 32,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      l10n.homeNoModulesYet,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.outline,
                      ),
                    ),
                  ],
                ),
              )
            else
              Column(
                children: [
                  for (var i = 0; i < gradeModules.length; i++)
                    _ModuleListTile(
                      module: gradeModules[i],
                      locale: locale,
                      color:
                          AppColors.secondaryPalette[i %
                              AppColors.secondaryPalette.length],
                    ),
                ],
              ),
            const SizedBox(height: 24),
            const GatekeeperEntryButton(),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.child, required this.locale});

  final ChildModel? child;
  final String locale;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: AppGradients.secondaryMuted,
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        boxShadow: AppShadows.card(theme.brightness),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.white.withValues(alpha: 0.16),
            child: Text(
              (child?.aliasName.isNotEmpty ?? false)
                  ? child!.aliasName[0].toUpperCase()
                  : '?',
              style: theme.textTheme.titleLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    l10n.dashboardWelcomeMessage(
                      child?.aliasName ?? l10n.appName,
                    ),
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (child != null)
                  Text(
                    gradeLabel(l10n, child!.currentGrade),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white70,
                    ),
                  ),
              ],
            ),
          ),
          const SwitchProfileButton(color: Colors.white),
        ],
      ),
    );
  }
}

class _ProgressSummary extends StatelessWidget {
  const _ProgressSummary({required this.stars, required this.moduleCount});

  final int stars;
  final int moduleCount;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final fraction = (stars / _starsGoal).clamp(0.0, 1.0);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        boxShadow: AppShadows.card(theme.brightness),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.homeProgressSummaryTitle,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(999),
                  child: LinearProgressIndicator(
                    value: fraction,
                    minHeight: 10,
                    backgroundColor: theme.colorScheme.surfaceContainerHighest,
                    color: AppColors.secondaryPalette[1],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                l10n.homeStarsProgress(stars, _starsGoal),
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            l10n.homeModulesAvailable(moduleCount),
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
        ],
      ),
    );
  }
}

class _SubjectCard extends StatelessWidget {
  const _SubjectCard({
    required this.label,
    required this.icon,
    required this.color,
    required this.moduleCount,
  });

  final String label;
  final IconData icon;
  final Color color;
  final int moduleCount;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return InkWell(
      borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
      onTap: () {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(l10n.actionComingSoon)));
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.14),
          borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
          border: Border.all(color: color.withValues(alpha: 0.3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon, color: color, size: 30),
            Flexible(
              child: Text(
                label,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.homeModulesAvailable(moduleCount),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward_rounded, size: 16, color: color),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ModuleListTile extends StatelessWidget {
  const _ModuleListTile({
    required this.module,
    required this.locale,
    required this.color,
  });

  final LearningModuleModel module;
  final String locale;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title = locale == 'my' ? module.titleMy : module.titleEn;
    final description = locale == 'my'
        ? module.descriptionMy
        : module.descriptionEn;

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        onTap: () => _showDetail(context, title, description),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(
                Icons.menu_book_rounded,
                color: Colors.white,
                size: 22,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  if (description.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.star_rounded, color: Colors.amber, size: 16),
                const SizedBox(width: 2),
                Text('${module.starsReward}', style: theme.textTheme.bodySmall),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showDetail(BuildContext context, String title, String description) {
    final l10n = AppLocalizations.of(context);
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(title),
        content: description.isEmpty ? null : Text(description),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(l10n.actionClose),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              context.push(
                AppRoutes.lessonPrimaryQuiz,
                extra: McqQuizArgs(
                  title: title,
                  subject: module.subject,
                  stars: module.starsReward,
                  moduleId: module.id,
                ),
              );
            },
            child: Text(l10n.actionExplore),
          ),
        ],
      ),
    );
  }
}
