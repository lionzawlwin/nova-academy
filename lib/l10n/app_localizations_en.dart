// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Nova Academy';

  @override
  String get appTagline => 'Learning made brilliant';

  @override
  String get actionContinue => 'Continue';

  @override
  String get actionCancel => 'Cancel';

  @override
  String get actionSave => 'Save';

  @override
  String get actionBack => 'Back';

  @override
  String get actionNext => 'Next';

  @override
  String get actionDone => 'Done';

  @override
  String get actionOk => 'OK';

  @override
  String get actionYes => 'Yes';

  @override
  String get actionNo => 'No';

  @override
  String get actionRetry => 'Retry';

  @override
  String get actionLoading => 'Loading...';

  @override
  String get actionError => 'Something went wrong';

  @override
  String get actionSubmit => 'Submit';

  @override
  String get actionClose => 'Close';

  @override
  String get actionEdit => 'Edit';

  @override
  String get actionDelete => 'Delete';

  @override
  String get actionConfirm => 'Confirm';

  @override
  String get actionSkip => 'Skip';

  @override
  String get actionGetStarted => 'Get Started';

  @override
  String get actionSwitchLanguage => 'Switch language';

  @override
  String get authLogin => 'Log In';

  @override
  String get authLogout => 'Log Out';

  @override
  String get authEmail => 'Email';

  @override
  String get authPassword => 'Password';

  @override
  String get authConfirmPassword => 'Confirm Password';

  @override
  String get authSignIn => 'Sign In';

  @override
  String get authSignUp => 'Sign Up';

  @override
  String get authForgotPassword => 'Forgot Password?';

  @override
  String get authCreateAccount => 'Create Account';

  @override
  String get authFullName => 'Full Name';

  @override
  String get authDontHaveAccount => 'Don\'t have an account?';

  @override
  String get authAlreadyHaveAccount => 'Already have an account?';

  @override
  String get authWelcomeBack => 'Welcome Back';

  @override
  String get authJoinNovaAcademy => 'Join Nova Academy';

  @override
  String get authInvalidEmail => 'Please enter a valid email address';

  @override
  String get authPasswordTooShort => 'Password must be at least 6 characters';

  @override
  String get authPasswordsDoNotMatch => 'Passwords do not match';

  @override
  String get profileSelectTitle => 'Who\'s Learning?';

  @override
  String get profileSelectSubtitle => 'Select a profile to continue';

  @override
  String get profileAdd => 'Add Profile';

  @override
  String get profileAddChild => 'Add Child';

  @override
  String get profileSwitch => 'Switch Profile';

  @override
  String get profileManage => 'Manage Profiles';

  @override
  String get profileAliasName => 'Child\'s Nickname';

  @override
  String get profileChooseAvatar => 'Choose an Avatar';

  @override
  String get profileChooseGrade => 'Choose a Grade';

  @override
  String get profileCreated => 'Profile created successfully';

  @override
  String get profileEmptyState =>
      'No profiles yet. Add your first child to get started.';

  @override
  String get roleOwner => 'Owner';

  @override
  String get roleParent => 'Parent';

  @override
  String get roleTeacher => 'Teacher';

  @override
  String get roleStudent => 'Student';

  @override
  String get roleOwnerDescription => 'Platform Super Admin';

  @override
  String get roleParentDescription =>
      'Manage your children\'s learning journey';

  @override
  String get roleTeacherDescription => 'Guide and track student progress';

  @override
  String get roleStudentDescription => 'Learn and earn stars';

  @override
  String get dashboardParentTitle => 'Parent Dashboard';

  @override
  String get dashboardTeacherTitle => 'Teacher Dashboard';

  @override
  String get dashboardOwnerTitle => 'Owner Dashboard';

  @override
  String get dashboardStudentTitle => 'My Learning';

  @override
  String get dashboardMyChildren => 'My Children';

  @override
  String get dashboardMyStudents => 'My Students';

  @override
  String get dashboardOverview => 'Overview';

  @override
  String get dashboardProgress => 'Progress';

  @override
  String get dashboardAnalytics => 'Platform Analytics';

  @override
  String get dashboardTotalStars => 'Total Stars';

  @override
  String get dashboardRecentActivity => 'Recent Activity';

  @override
  String get dashboardInviteTeacher => 'Invite Teacher';

  @override
  String dashboardWelcomeMessage(String name) {
    return 'Welcome back, $name!';
  }

  @override
  String get subscriptionSubscribe => 'Subscribe';

  @override
  String get subscriptionUpgradeToPremium => 'Upgrade to Premium';

  @override
  String get subscriptionFreePlan => 'Free Plan';

  @override
  String get subscriptionPremiumPlan => 'Premium Plan';

  @override
  String get subscriptionRequired => 'Subscription Required';

  @override
  String get subscriptionUnlockPremium => 'Unlock Premium Features';

  @override
  String get subscriptionMonthlyPlan => 'Monthly Plan';

  @override
  String get subscriptionYearlyPlan => 'Yearly Plan';

  @override
  String get subscriptionRestorePurchase => 'Restore Purchase';

  @override
  String get subscriptionPaywallTitle => 'Unlock Full Access';

  @override
  String get subscriptionPaywallMessage =>
      'Subscribe to unlock every subject, grade, and premium learning module for your children.';

  @override
  String get subscriptionCurrentPlan => 'Current Plan';

  @override
  String get subscriptionManage => 'Manage Subscription';

  @override
  String get gradeNursery => 'Nursery';

  @override
  String get gradeKg => 'Kindergarten';

  @override
  String get gradeYear1 => 'Year 1';

  @override
  String get gradeYear2 => 'Year 2';

  @override
  String get gradeYear3 => 'Year 3';

  @override
  String get gradeYear4 => 'Year 4';

  @override
  String get gradeYear5 => 'Year 5';

  @override
  String get gradeYear6 => 'Year 6';

  @override
  String get gradeSecondary1 => 'Secondary 1';

  @override
  String get gradeSecondary2 => 'Secondary 2';

  @override
  String get gradeSecondary3 => 'Secondary 3';

  @override
  String get gradeIgcse => 'IGCSE';

  @override
  String get subjectMath => 'Math';

  @override
  String get subjectScience => 'Science';

  @override
  String get subjectEnglish => 'English';

  @override
  String get subjectPhonics => 'Phonics';

  @override
  String get subjectPhysics => 'Physics';

  @override
  String get subjectChemistry => 'Chemistry';

  @override
  String get subjectBiology => 'Biology';

  @override
  String get subjectFractions => 'Fractions';

  @override
  String get subjectGeometry => 'Geometry';

  @override
  String get subjectAlgebra => 'Algebra';

  @override
  String get subjectReading => 'Reading';

  @override
  String get subjectWriting => 'Writing';

  @override
  String get subjectMyanmar => 'Myanmar Language';

  @override
  String get subjectSocialStudies => 'Social Studies';

  @override
  String get subjectIct => 'ICT';

  @override
  String get subjectArt => 'Art';

  @override
  String get subjectGeneralKnowledge => 'General Knowledge';

  @override
  String get subjectStem => 'STEM';

  @override
  String get subjectCoding => 'Coding';

  @override
  String get subjectEngineering => 'Engineering';

  @override
  String get gatekeeperTitle => 'Grown-Ups Only';

  @override
  String get gatekeeperInstruction => 'Solve this to continue';

  @override
  String get gatekeeperSolveToProceed => 'Solve the puzzle to access this area';

  @override
  String get gatekeeperWrongAnswer => 'Not quite right, try again!';

  @override
  String get gatekeeperCorrectAnswer => 'Correct! Unlocking...';

  @override
  String get gatekeeperTryAgain => 'Try Again';

  @override
  String get gatekeeperParentTeacherOnly =>
      'This area is for parents and teachers only';

  @override
  String get gatekeeperEnterAnswer => 'Enter your answer';

  @override
  String get gatekeeperEnterArea => 'Parent & Teacher Area';

  @override
  String get actionComingSoon => 'Coming soon';

  @override
  String get actionInvite => 'Invite';

  @override
  String get actionAssign => 'Assign';

  @override
  String profileContinueAs(String role) {
    return 'Continue as $role';
  }

  @override
  String get profileUpdated => 'Profile updated successfully';

  @override
  String get profileDeleted => 'Profile removed';

  @override
  String childDeleteConfirmMessage(String name) {
    return 'Remove $name\'s profile? This can\'t be undone.';
  }

  @override
  String get subscriptionOwnerAllAccess => 'Owner — All Access';

  @override
  String get paywallFeatureAllSubjects => 'All subjects & every grade';

  @override
  String get paywallFeatureUnlimitedChildren => 'Unlimited child profiles';

  @override
  String get paywallFeatureProgressAnalytics => 'Detailed progress analytics';

  @override
  String get paywallFeaturePrioritySupport => 'Priority support';

  @override
  String get inviteTeacherHint => 'Teacher\'s email address';

  @override
  String get inviteStatusPending => 'Pending';

  @override
  String get inviteEmptyState => 'No teachers invited yet.';

  @override
  String inviteSentMessage(String email) {
    return 'Invitation sent to $email';
  }

  @override
  String get dashboardAssignModule => 'Assign Module';

  @override
  String dashboardAssignModuleTo(String name) {
    return 'Assign a module to $name';
  }

  @override
  String dashboardModuleAssigned(String module, String name) {
    return 'Assigned \"$module\" to $name';
  }

  @override
  String get dashboardNoStudentsYet =>
      'No students assigned yet. Ask a parent to link you as their child\'s teacher.';

  @override
  String get dashboardChooseModule => 'Choose a module';

  @override
  String get ownerTotalUsers => 'Total Active Users';

  @override
  String get ownerTotalChildren => 'Total Children';

  @override
  String get ownerTotalModules => 'Total Modules';

  @override
  String get ownerPremiumSubscribers => 'Premium Subscribers';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsAccount => 'Account';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get localeEnglish => 'English';

  @override
  String get localeMyanmar => 'မြန်မာ';

  @override
  String get actionStart => 'Start';

  @override
  String get actionExplore => 'Explore';

  @override
  String get homeYourLearningPath => 'Your Learning Path';

  @override
  String get homeSubjectsTitle => 'Subjects';

  @override
  String get homeUpcomingModulesTitle => 'Upcoming Modules';

  @override
  String get homeProgressSummaryTitle => 'Progress Summary';

  @override
  String get homeNoModulesYet => 'No modules yet — check back soon!';

  @override
  String homeStarsProgress(int current, int goal) {
    return '$current / $goal stars';
  }

  @override
  String homeModulesAvailable(int count) {
    return '$count modules available';
  }

  @override
  String get homeLessonLocked => 'Complete the previous lesson first!';
}
