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
    case Grade.year7:
    case Grade.year8:
    case Grade.year9:
    case Grade.year10:
    case Grade.year11:
    // Year 12/13 (A Level) share the Secondary/IGCSE dashboard shell for
    // now -- no dedicated A-Level UI exists yet, and this tier's muted,
    // information-dense treatment fits an older student better than
    // Primary's or Nursery's.
    case Grade.year12:
    case Grade.year13:
      return HomeTier.secondary;
  }
}
