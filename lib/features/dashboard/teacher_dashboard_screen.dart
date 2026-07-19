import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/grade_localization.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../models/learning_module_model.dart';
import '../../providers/children_providers.dart';
import '../../providers/learning_module_providers.dart';
import '../../providers/mock_state_providers.dart';

/// A reasonable "full stars" goal used purely to give the per-student ring
/// chart something to fill toward. Not a real product concept yet.
const int _starsGoal = 50;

/// The teacher's home base: their assigned students with a quick progress
/// glance, and a lightweight "assign a module" flow (mocked -- see
/// mock_state_providers.dart).
class TeacherDashboardScreen extends ConsumerWidget {
  const TeacherDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final studentsAsync = ref.watch(childrenForCurrentUserProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.dashboardTeacherTitle)),
      body: studentsAsync.when(
        data: (students) {
          if (students.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.groups_2_outlined,
                      size: 56,
                      color: theme.colorScheme.outline,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      l10n.dashboardNoStudentsYet,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            );
          }
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text(
                l10n.dashboardMyStudents,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              ...students.map((student) => _StudentCard(student: student)),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, _) => Center(child: Text(l10n.actionError)),
      ),
    );
  }
}

class _StudentCard extends ConsumerWidget {
  const _StudentCard({required this.student});

  final ChildModel student;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final assignedModules =
        ref.watch(assignedModulesProvider)[student.id] ?? const <String>[];

    return Card(
      margin: const EdgeInsets.only(bottom: 14),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _StarsRing(stars: student.totalStars, goal: _starsGoal),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        student.aliasName,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        gradeLabel(l10n, student.currentGrade),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${student.totalStars} / $_starsGoal ${l10n.dashboardTotalStars}',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.playlist_add_rounded, size: 18),
                  label: Text(l10n.dashboardAssignModule),
                  onPressed: () => _showAssignDialog(context, ref, student),
                ),
              ],
            ),
            if (assignedModules.isNotEmpty) ...[
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: assignedModules
                    .map(
                      (title) => Chip(
                        avatar: const Icon(Icons.menu_book_rounded, size: 16),
                        label: Text(title),
                        visualDensity: VisualDensity.compact,
                      ),
                    )
                    .toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Future<void> _showAssignDialog(
    BuildContext context,
    WidgetRef ref,
    ChildModel student,
  ) async {
    final l10n = AppLocalizations.of(context);
    final modulesAsync = ref.read(learningModulesProvider);
    final modules = modulesAsync.valueOrNull ?? const <LearningModuleModel>[];
    final locale = Localizations.localeOf(context).languageCode;

    LearningModuleModel? selected = modules.isNotEmpty ? modules.first : null;

    final assignedTitle = await showDialog<String>(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (dialogContext, setState) {
          String titleFor(LearningModuleModel m) =>
              locale == 'my' ? m.titleMy : m.titleEn;

          return AlertDialog(
            title: Text(l10n.dashboardAssignModuleTo(student.aliasName)),
            content: modules.isEmpty
                ? Text(l10n.profileEmptyState)
                : DropdownButtonFormField<LearningModuleModel>(
                    initialValue: selected,
                    isExpanded: true,
                    decoration: InputDecoration(
                      labelText: l10n.dashboardChooseModule,
                      border: const OutlineInputBorder(),
                    ),
                    items: modules
                        .map(
                          (m) => DropdownMenuItem(
                            value: m,
                            child: Text(
                              titleFor(m),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) => setState(() => selected = value),
                  ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(l10n.actionCancel),
              ),
              FilledButton(
                onPressed: selected == null
                    ? null
                    : () =>
                          Navigator.of(dialogContext).pop(titleFor(selected!)),
                child: Text(l10n.actionAssign),
              ),
            ],
          );
        },
      ),
    );

    if (assignedTitle == null || !context.mounted) return;

    ref.read(assignedModulesProvider.notifier).update((map) {
      final next = Map<String, List<String>>.from(map);
      next[student.id] = [...(next[student.id] ?? const []), assignedTitle];
      return next;
    });

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            l10n.dashboardModuleAssigned(assignedTitle, student.aliasName),
          ),
        ),
      );
  }
}

/// A compact donut chart showing [stars] filled toward [goal].
class _StarsRing extends StatelessWidget {
  const _StarsRing({required this.stars, required this.goal});

  final int stars;
  final int goal;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final filled = stars.clamp(0, goal).toDouble();
    final remaining = (goal - filled).clamp(0, goal).toDouble();

    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              sectionsSpace: 0,
              centerSpaceRadius: 20,
              sections: [
                PieChartSectionData(
                  value: filled,
                  color: Colors.amber.shade600,
                  showTitle: false,
                  radius: 10,
                ),
                PieChartSectionData(
                  value: remaining == 0 && filled == 0 ? 1 : remaining,
                  color: theme.colorScheme.surfaceContainerHighest,
                  showTitle: false,
                  radius: 10,
                ),
              ],
            ),
          ),
          const Icon(Icons.star_rounded, color: Colors.amber, size: 18),
        ],
      ),
    );
  }
}
