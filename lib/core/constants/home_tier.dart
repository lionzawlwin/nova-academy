import '../../models/child_model.dart';

/// The three broad age bands the student-facing home screens are grouped
/// into. Keeps the router (and the UI) from needing a route per [Grade].
enum HomeTier { nursery, primary, secondary }

/// Buckets a [Grade] into its [HomeTier].
HomeTier homeTierForGrade(Grade grade) {
  switch (grade) {
    case Grade.nursery:
    case Grade.kg:
      return HomeTier.nursery;
    case Grade.year1:
    case Grade.year2:
    case Grade.year3:
    case Grade.year4:
    case Grade.year5:
    case Grade.year6:
      return HomeTier.primary;
    case Grade.secondary1:
    case Grade.secondary2:
    case Grade.secondary3:
    case Grade.igcse:
      return HomeTier.secondary;
  }
}
