import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_my.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('my'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Nova Academy'**
  String get appName;

  /// No description provided for @appTagline.
  ///
  /// In en, this message translates to:
  /// **'Learning made brilliant'**
  String get appTagline;

  /// No description provided for @actionContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get actionContinue;

  /// No description provided for @actionCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get actionCancel;

  /// No description provided for @actionSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get actionSave;

  /// No description provided for @actionBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get actionBack;

  /// No description provided for @actionNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get actionNext;

  /// No description provided for @actionDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get actionDone;

  /// No description provided for @actionOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get actionOk;

  /// No description provided for @actionYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get actionYes;

  /// No description provided for @actionNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get actionNo;

  /// No description provided for @actionRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get actionRetry;

  /// No description provided for @actionLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get actionLoading;

  /// No description provided for @actionError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get actionError;

  /// No description provided for @actionSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get actionSubmit;

  /// No description provided for @actionClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get actionClose;

  /// No description provided for @actionEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get actionEdit;

  /// No description provided for @actionDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get actionDelete;

  /// No description provided for @actionConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get actionConfirm;

  /// No description provided for @actionSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get actionSkip;

  /// No description provided for @actionGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get actionGetStarted;

  /// No description provided for @actionSwitchLanguage.
  ///
  /// In en, this message translates to:
  /// **'Switch language'**
  String get actionSwitchLanguage;

  /// No description provided for @authLogin.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get authLogin;

  /// No description provided for @authLogout.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get authLogout;

  /// No description provided for @authEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get authEmail;

  /// No description provided for @authPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get authPassword;

  /// No description provided for @authConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get authConfirmPassword;

  /// No description provided for @authSignIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get authSignIn;

  /// No description provided for @authSignUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get authSignUp;

  /// No description provided for @authForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get authForgotPassword;

  /// No description provided for @authCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get authCreateAccount;

  /// No description provided for @authFullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get authFullName;

  /// No description provided for @authDontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get authDontHaveAccount;

  /// No description provided for @authAlreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get authAlreadyHaveAccount;

  /// No description provided for @authWelcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get authWelcomeBack;

  /// No description provided for @authJoinNovaAcademy.
  ///
  /// In en, this message translates to:
  /// **'Join Nova Academy'**
  String get authJoinNovaAcademy;

  /// No description provided for @authInvalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get authInvalidEmail;

  /// No description provided for @authPasswordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get authPasswordTooShort;

  /// No description provided for @authPasswordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get authPasswordsDoNotMatch;

  /// No description provided for @profileSelectTitle.
  ///
  /// In en, this message translates to:
  /// **'Who\'s Learning?'**
  String get profileSelectTitle;

  /// No description provided for @profileSelectSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Select a profile to continue'**
  String get profileSelectSubtitle;

  /// No description provided for @profileAdd.
  ///
  /// In en, this message translates to:
  /// **'Add Profile'**
  String get profileAdd;

  /// No description provided for @profileAddChild.
  ///
  /// In en, this message translates to:
  /// **'Add Child'**
  String get profileAddChild;

  /// No description provided for @profileSwitch.
  ///
  /// In en, this message translates to:
  /// **'Switch Profile'**
  String get profileSwitch;

  /// No description provided for @profileManage.
  ///
  /// In en, this message translates to:
  /// **'Manage Profiles'**
  String get profileManage;

  /// No description provided for @profileAliasName.
  ///
  /// In en, this message translates to:
  /// **'Child\'s Nickname'**
  String get profileAliasName;

  /// No description provided for @profileChooseAvatar.
  ///
  /// In en, this message translates to:
  /// **'Choose an Avatar'**
  String get profileChooseAvatar;

  /// No description provided for @profileChooseGrade.
  ///
  /// In en, this message translates to:
  /// **'Choose a Grade'**
  String get profileChooseGrade;

  /// No description provided for @profileCreated.
  ///
  /// In en, this message translates to:
  /// **'Profile created successfully'**
  String get profileCreated;

  /// No description provided for @profileEmptyState.
  ///
  /// In en, this message translates to:
  /// **'No profiles yet. Add your first child to get started.'**
  String get profileEmptyState;

  /// No description provided for @roleOwner.
  ///
  /// In en, this message translates to:
  /// **'Owner'**
  String get roleOwner;

  /// No description provided for @roleParent.
  ///
  /// In en, this message translates to:
  /// **'Parent'**
  String get roleParent;

  /// No description provided for @roleTeacher.
  ///
  /// In en, this message translates to:
  /// **'Teacher'**
  String get roleTeacher;

  /// No description provided for @roleStudent.
  ///
  /// In en, this message translates to:
  /// **'Student'**
  String get roleStudent;

  /// No description provided for @roleOwnerDescription.
  ///
  /// In en, this message translates to:
  /// **'Platform Super Admin'**
  String get roleOwnerDescription;

  /// No description provided for @roleParentDescription.
  ///
  /// In en, this message translates to:
  /// **'Manage your children\'s learning journey'**
  String get roleParentDescription;

  /// No description provided for @roleTeacherDescription.
  ///
  /// In en, this message translates to:
  /// **'Guide and track student progress'**
  String get roleTeacherDescription;

  /// No description provided for @roleStudentDescription.
  ///
  /// In en, this message translates to:
  /// **'Learn and earn stars'**
  String get roleStudentDescription;

  /// No description provided for @dashboardParentTitle.
  ///
  /// In en, this message translates to:
  /// **'Parent Dashboard'**
  String get dashboardParentTitle;

  /// No description provided for @dashboardTeacherTitle.
  ///
  /// In en, this message translates to:
  /// **'Teacher Dashboard'**
  String get dashboardTeacherTitle;

  /// No description provided for @dashboardOwnerTitle.
  ///
  /// In en, this message translates to:
  /// **'Owner Dashboard'**
  String get dashboardOwnerTitle;

  /// No description provided for @dashboardStudentTitle.
  ///
  /// In en, this message translates to:
  /// **'My Learning'**
  String get dashboardStudentTitle;

  /// No description provided for @dashboardMyChildren.
  ///
  /// In en, this message translates to:
  /// **'My Children'**
  String get dashboardMyChildren;

  /// No description provided for @dashboardMyStudents.
  ///
  /// In en, this message translates to:
  /// **'My Students'**
  String get dashboardMyStudents;

  /// No description provided for @dashboardOverview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get dashboardOverview;

  /// No description provided for @dashboardProgress.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get dashboardProgress;

  /// No description provided for @dashboardAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Platform Analytics'**
  String get dashboardAnalytics;

  /// No description provided for @dashboardTotalStars.
  ///
  /// In en, this message translates to:
  /// **'Total Stars'**
  String get dashboardTotalStars;

  /// No description provided for @dashboardRecentActivity.
  ///
  /// In en, this message translates to:
  /// **'Recent Activity'**
  String get dashboardRecentActivity;

  /// No description provided for @dashboardInviteTeacher.
  ///
  /// In en, this message translates to:
  /// **'Invite Teacher'**
  String get dashboardInviteTeacher;

  /// No description provided for @dashboardWelcomeMessage.
  ///
  /// In en, this message translates to:
  /// **'Welcome back, {name}!'**
  String dashboardWelcomeMessage(String name);

  /// No description provided for @subscriptionSubscribe.
  ///
  /// In en, this message translates to:
  /// **'Subscribe'**
  String get subscriptionSubscribe;

  /// No description provided for @subscriptionUpgradeToPremium.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Premium'**
  String get subscriptionUpgradeToPremium;

  /// No description provided for @subscriptionFreePlan.
  ///
  /// In en, this message translates to:
  /// **'Free Plan'**
  String get subscriptionFreePlan;

  /// No description provided for @subscriptionPremiumPlan.
  ///
  /// In en, this message translates to:
  /// **'Premium Plan'**
  String get subscriptionPremiumPlan;

  /// No description provided for @subscriptionRequired.
  ///
  /// In en, this message translates to:
  /// **'Subscription Required'**
  String get subscriptionRequired;

  /// No description provided for @subscriptionUnlockPremium.
  ///
  /// In en, this message translates to:
  /// **'Unlock Premium Features'**
  String get subscriptionUnlockPremium;

  /// No description provided for @subscriptionMonthlyPlan.
  ///
  /// In en, this message translates to:
  /// **'Monthly Plan'**
  String get subscriptionMonthlyPlan;

  /// No description provided for @subscriptionYearlyPlan.
  ///
  /// In en, this message translates to:
  /// **'Yearly Plan'**
  String get subscriptionYearlyPlan;

  /// No description provided for @subscriptionRestorePurchase.
  ///
  /// In en, this message translates to:
  /// **'Restore Purchase'**
  String get subscriptionRestorePurchase;

  /// No description provided for @subscriptionPaywallTitle.
  ///
  /// In en, this message translates to:
  /// **'Unlock Full Access'**
  String get subscriptionPaywallTitle;

  /// No description provided for @subscriptionPaywallMessage.
  ///
  /// In en, this message translates to:
  /// **'Subscribe to unlock every subject, grade, and premium learning module for your children.'**
  String get subscriptionPaywallMessage;

  /// No description provided for @subscriptionCurrentPlan.
  ///
  /// In en, this message translates to:
  /// **'Current Plan'**
  String get subscriptionCurrentPlan;

  /// No description provided for @subscriptionManage.
  ///
  /// In en, this message translates to:
  /// **'Manage Subscription'**
  String get subscriptionManage;

  /// No description provided for @gradeNursery.
  ///
  /// In en, this message translates to:
  /// **'Nursery'**
  String get gradeNursery;

  /// No description provided for @gradeKg.
  ///
  /// In en, this message translates to:
  /// **'Kindergarten'**
  String get gradeKg;

  /// No description provided for @gradeYear1.
  ///
  /// In en, this message translates to:
  /// **'Year 1'**
  String get gradeYear1;

  /// No description provided for @gradeYear2.
  ///
  /// In en, this message translates to:
  /// **'Year 2'**
  String get gradeYear2;

  /// No description provided for @gradeYear3.
  ///
  /// In en, this message translates to:
  /// **'Year 3'**
  String get gradeYear3;

  /// No description provided for @gradeYear4.
  ///
  /// In en, this message translates to:
  /// **'Year 4'**
  String get gradeYear4;

  /// No description provided for @gradeYear5.
  ///
  /// In en, this message translates to:
  /// **'Year 5'**
  String get gradeYear5;

  /// No description provided for @gradeYear6.
  ///
  /// In en, this message translates to:
  /// **'Year 6'**
  String get gradeYear6;

  /// No description provided for @gradeSecondary1.
  ///
  /// In en, this message translates to:
  /// **'Secondary 1'**
  String get gradeSecondary1;

  /// No description provided for @gradeSecondary2.
  ///
  /// In en, this message translates to:
  /// **'Secondary 2'**
  String get gradeSecondary2;

  /// No description provided for @gradeSecondary3.
  ///
  /// In en, this message translates to:
  /// **'Secondary 3'**
  String get gradeSecondary3;

  /// No description provided for @gradeIgcse.
  ///
  /// In en, this message translates to:
  /// **'IGCSE'**
  String get gradeIgcse;

  /// No description provided for @subjectMath.
  ///
  /// In en, this message translates to:
  /// **'Math'**
  String get subjectMath;

  /// No description provided for @subjectScience.
  ///
  /// In en, this message translates to:
  /// **'Science'**
  String get subjectScience;

  /// No description provided for @subjectEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get subjectEnglish;

  /// No description provided for @subjectPhonics.
  ///
  /// In en, this message translates to:
  /// **'Phonics'**
  String get subjectPhonics;

  /// No description provided for @subjectPhysics.
  ///
  /// In en, this message translates to:
  /// **'Physics'**
  String get subjectPhysics;

  /// No description provided for @subjectChemistry.
  ///
  /// In en, this message translates to:
  /// **'Chemistry'**
  String get subjectChemistry;

  /// No description provided for @subjectBiology.
  ///
  /// In en, this message translates to:
  /// **'Biology'**
  String get subjectBiology;

  /// No description provided for @subjectFractions.
  ///
  /// In en, this message translates to:
  /// **'Fractions'**
  String get subjectFractions;

  /// No description provided for @subjectGeometry.
  ///
  /// In en, this message translates to:
  /// **'Geometry'**
  String get subjectGeometry;

  /// No description provided for @subjectAlgebra.
  ///
  /// In en, this message translates to:
  /// **'Algebra'**
  String get subjectAlgebra;

  /// No description provided for @subjectReading.
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get subjectReading;

  /// No description provided for @subjectWriting.
  ///
  /// In en, this message translates to:
  /// **'Writing'**
  String get subjectWriting;

  /// No description provided for @subjectMyanmar.
  ///
  /// In en, this message translates to:
  /// **'Myanmar Language'**
  String get subjectMyanmar;

  /// No description provided for @subjectSocialStudies.
  ///
  /// In en, this message translates to:
  /// **'Social Studies'**
  String get subjectSocialStudies;

  /// No description provided for @subjectIct.
  ///
  /// In en, this message translates to:
  /// **'ICT'**
  String get subjectIct;

  /// No description provided for @subjectArt.
  ///
  /// In en, this message translates to:
  /// **'Art'**
  String get subjectArt;

  /// No description provided for @subjectGeneralKnowledge.
  ///
  /// In en, this message translates to:
  /// **'General Knowledge'**
  String get subjectGeneralKnowledge;

  /// No description provided for @subjectStem.
  ///
  /// In en, this message translates to:
  /// **'STEM'**
  String get subjectStem;

  /// No description provided for @subjectCoding.
  ///
  /// In en, this message translates to:
  /// **'Coding'**
  String get subjectCoding;

  /// No description provided for @subjectEngineering.
  ///
  /// In en, this message translates to:
  /// **'Engineering'**
  String get subjectEngineering;

  /// No description provided for @subjectHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get subjectHistory;

  /// No description provided for @subjectGeography.
  ///
  /// In en, this message translates to:
  /// **'Geography'**
  String get subjectGeography;

  /// No description provided for @subjectComputing.
  ///
  /// In en, this message translates to:
  /// **'Computing'**
  String get subjectComputing;

  /// No description provided for @gatekeeperTitle.
  ///
  /// In en, this message translates to:
  /// **'Grown-Ups Only'**
  String get gatekeeperTitle;

  /// No description provided for @gatekeeperInstruction.
  ///
  /// In en, this message translates to:
  /// **'Solve this to continue'**
  String get gatekeeperInstruction;

  /// No description provided for @gatekeeperSolveToProceed.
  ///
  /// In en, this message translates to:
  /// **'Solve the puzzle to access this area'**
  String get gatekeeperSolveToProceed;

  /// No description provided for @gatekeeperWrongAnswer.
  ///
  /// In en, this message translates to:
  /// **'Not quite right, try again!'**
  String get gatekeeperWrongAnswer;

  /// No description provided for @gatekeeperCorrectAnswer.
  ///
  /// In en, this message translates to:
  /// **'Correct! Unlocking...'**
  String get gatekeeperCorrectAnswer;

  /// No description provided for @gatekeeperTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get gatekeeperTryAgain;

  /// No description provided for @gatekeeperParentTeacherOnly.
  ///
  /// In en, this message translates to:
  /// **'This area is for parents and teachers only'**
  String get gatekeeperParentTeacherOnly;

  /// No description provided for @gatekeeperEnterAnswer.
  ///
  /// In en, this message translates to:
  /// **'Enter your answer'**
  String get gatekeeperEnterAnswer;

  /// No description provided for @gatekeeperEnterArea.
  ///
  /// In en, this message translates to:
  /// **'Parent & Teacher Area'**
  String get gatekeeperEnterArea;

  /// No description provided for @actionComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get actionComingSoon;

  /// No description provided for @actionInvite.
  ///
  /// In en, this message translates to:
  /// **'Invite'**
  String get actionInvite;

  /// No description provided for @actionAssign.
  ///
  /// In en, this message translates to:
  /// **'Assign'**
  String get actionAssign;

  /// No description provided for @profileContinueAs.
  ///
  /// In en, this message translates to:
  /// **'Continue as {role}'**
  String profileContinueAs(String role);

  /// No description provided for @profileUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profileUpdated;

  /// No description provided for @profileDeleted.
  ///
  /// In en, this message translates to:
  /// **'Profile removed'**
  String get profileDeleted;

  /// No description provided for @childDeleteConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Remove {name}\'s profile? This can\'t be undone.'**
  String childDeleteConfirmMessage(String name);

  /// No description provided for @subscriptionOwnerAllAccess.
  ///
  /// In en, this message translates to:
  /// **'Owner — All Access'**
  String get subscriptionOwnerAllAccess;

  /// No description provided for @paywallFeatureAllSubjects.
  ///
  /// In en, this message translates to:
  /// **'All subjects & every grade'**
  String get paywallFeatureAllSubjects;

  /// No description provided for @paywallFeatureUnlimitedChildren.
  ///
  /// In en, this message translates to:
  /// **'Unlimited child profiles'**
  String get paywallFeatureUnlimitedChildren;

  /// No description provided for @paywallFeatureProgressAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Detailed progress analytics'**
  String get paywallFeatureProgressAnalytics;

  /// No description provided for @paywallFeaturePrioritySupport.
  ///
  /// In en, this message translates to:
  /// **'Priority support'**
  String get paywallFeaturePrioritySupport;

  /// No description provided for @inviteTeacherHint.
  ///
  /// In en, this message translates to:
  /// **'Teacher\'s email address'**
  String get inviteTeacherHint;

  /// No description provided for @inviteStatusPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get inviteStatusPending;

  /// No description provided for @inviteEmptyState.
  ///
  /// In en, this message translates to:
  /// **'No teachers invited yet.'**
  String get inviteEmptyState;

  /// No description provided for @inviteSentMessage.
  ///
  /// In en, this message translates to:
  /// **'Invitation sent to {email}'**
  String inviteSentMessage(String email);

  /// No description provided for @dashboardAssignModule.
  ///
  /// In en, this message translates to:
  /// **'Assign Module'**
  String get dashboardAssignModule;

  /// No description provided for @dashboardAssignModuleTo.
  ///
  /// In en, this message translates to:
  /// **'Assign a module to {name}'**
  String dashboardAssignModuleTo(String name);

  /// No description provided for @dashboardModuleAssigned.
  ///
  /// In en, this message translates to:
  /// **'Assigned \"{module}\" to {name}'**
  String dashboardModuleAssigned(String module, String name);

  /// No description provided for @dashboardNoStudentsYet.
  ///
  /// In en, this message translates to:
  /// **'No students assigned yet. Ask a parent to link you as their child\'s teacher.'**
  String get dashboardNoStudentsYet;

  /// No description provided for @dashboardChooseModule.
  ///
  /// In en, this message translates to:
  /// **'Choose a module'**
  String get dashboardChooseModule;

  /// No description provided for @ownerTotalUsers.
  ///
  /// In en, this message translates to:
  /// **'Total Active Users'**
  String get ownerTotalUsers;

  /// No description provided for @ownerTotalChildren.
  ///
  /// In en, this message translates to:
  /// **'Total Children'**
  String get ownerTotalChildren;

  /// No description provided for @ownerTotalModules.
  ///
  /// In en, this message translates to:
  /// **'Total Modules'**
  String get ownerTotalModules;

  /// No description provided for @ownerPremiumSubscribers.
  ///
  /// In en, this message translates to:
  /// **'Premium Subscribers'**
  String get ownerPremiumSubscribers;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsAccount.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get settingsAccount;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @localeEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get localeEnglish;

  /// No description provided for @localeMyanmar.
  ///
  /// In en, this message translates to:
  /// **'မြန်မာ'**
  String get localeMyanmar;

  /// No description provided for @actionStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get actionStart;

  /// No description provided for @actionExplore.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get actionExplore;

  /// No description provided for @homeYourLearningPath.
  ///
  /// In en, this message translates to:
  /// **'Your Learning Path'**
  String get homeYourLearningPath;

  /// No description provided for @homeSubjectsTitle.
  ///
  /// In en, this message translates to:
  /// **'Subjects'**
  String get homeSubjectsTitle;

  /// No description provided for @homeUpcomingModulesTitle.
  ///
  /// In en, this message translates to:
  /// **'Upcoming Modules'**
  String get homeUpcomingModulesTitle;

  /// No description provided for @homeProgressSummaryTitle.
  ///
  /// In en, this message translates to:
  /// **'Progress Summary'**
  String get homeProgressSummaryTitle;

  /// No description provided for @homeNoModulesYet.
  ///
  /// In en, this message translates to:
  /// **'No modules yet — check back soon!'**
  String get homeNoModulesYet;

  /// No description provided for @homeStarsProgress.
  ///
  /// In en, this message translates to:
  /// **'{current} / {goal} stars'**
  String homeStarsProgress(int current, int goal);

  /// No description provided for @homeModulesAvailable.
  ///
  /// In en, this message translates to:
  /// **'{count} modules available'**
  String homeModulesAvailable(int count);

  /// No description provided for @homeLessonLocked.
  ///
  /// In en, this message translates to:
  /// **'Complete the previous lesson first!'**
  String get homeLessonLocked;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'my'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'my':
      return AppLocalizationsMy();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
