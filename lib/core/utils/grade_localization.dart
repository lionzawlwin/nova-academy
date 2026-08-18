import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../models/user_model.dart';

/// Localized display label for a [Grade], in the currently active locale.
String gradeLabel(AppLocalizations l10n, Grade grade) {
  switch (grade) {
    case Grade.nursery:
      return l10n.gradeNursery;
    case Grade.kg:
      return l10n.gradeKg;
    case Grade.year1:
      return l10n.gradeYear1;
    case Grade.year2:
      return l10n.gradeYear2;
    case Grade.year3:
      return l10n.gradeYear3;
    case Grade.year4:
      return l10n.gradeYear4;
    case Grade.year5:
      return l10n.gradeYear5;
    case Grade.year6:
      return l10n.gradeYear6;
    case Grade.year7:
      return l10n.gradeYear7;
    case Grade.year8:
      return l10n.gradeYear8;
    case Grade.year9:
      return l10n.gradeYear9;
    case Grade.year10:
      return l10n.gradeYear10;
    case Grade.year11:
      return l10n.gradeYear11;
    case Grade.year12:
      return l10n.gradeYear12;
    case Grade.year13:
      return l10n.gradeYear13;
  }
}

/// Localized display label for a [UserRole].
String roleLabel(AppLocalizations l10n, UserRole role) {
  switch (role) {
    case UserRole.owner:
      return l10n.roleOwner;
    case UserRole.parent:
      return l10n.roleParent;
    case UserRole.teacher:
      return l10n.roleTeacher;
    case UserRole.student:
      return l10n.roleStudent;
  }
}

/// Localized description for a [UserRole], for subtitle-style copy.
String roleDescription(AppLocalizations l10n, UserRole role) {
  switch (role) {
    case UserRole.owner:
      return l10n.roleOwnerDescription;
    case UserRole.parent:
      return l10n.roleParentDescription;
    case UserRole.teacher:
      return l10n.roleTeacherDescription;
    case UserRole.student:
      return l10n.roleStudentDescription;
  }
}
