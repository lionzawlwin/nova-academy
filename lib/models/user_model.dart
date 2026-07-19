import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// Platform roles. Order matters for any privilege comparisons elsewhere.
enum UserRole {
  @JsonValue('owner')
  owner,
  @JsonValue('parent')
  parent,
  @JsonValue('teacher')
  teacher,
  @JsonValue('student')
  student,
}

/// Subscription tiers gating premium content behind the paywall.
enum SubscriptionTier {
  @JsonValue('free')
  free,
  @JsonValue('premium')
  premium,
}

/// Mirrors a document in the top-level `Users` Firestore collection.
///
/// Firestore document id == [id] == Firebase Auth uid.
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    @Default(UserRole.parent) UserRole role,
    @Default(SubscriptionTier.free) SubscriptionTier subscriptionTier,
    @Default(<String>[]) List<String> linkedStudents,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
