import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_state_model.freezed.dart';
part 'subscription_state_model.g.dart';

/// Lifecycle status of a [SubscriptionStateModel] -- distinct from
/// [SubscriptionTier] (user_model.dart), which is *what* a user is entitled
/// to; this is *whether* that entitlement is currently active.
enum SubscriptionStatus {
  @JsonValue('none')
  none,
  @JsonValue('trialing')
  trialing,
  @JsonValue('active')
  active,
  @JsonValue('past_due')
  pastDue,
  @JsonValue('expired')
  expired,
  @JsonValue('cancelled')
  cancelled,
}

/// Where a subscription's entitlement was granted from.
enum BillingSource {
  @JsonValue('manual')
  manual,
  @JsonValue('ios_iap')
  iosIap,
  @JsonValue('android_iap')
  androidIap,
  @JsonValue('promo')
  promo,
}

/// Nested (not a top-level Firestore doc) on [UserModel.subscriptionState] --
/// deliberately not its own `SubscriptionStates/{uid}` collection, since
/// [UserModel] is already read once per session by `currentUserModelProvider`;
/// a separate collection would double the per-session read cost for no
/// benefit, and this data only ever needs to be read alongside the user it
/// describes.
@freezed
class SubscriptionStateModel with _$SubscriptionStateModel {
  const factory SubscriptionStateModel({
    @Default(SubscriptionStatus.none) SubscriptionStatus status,
    @Default(BillingSource.manual) BillingSource source,
    int? startedAtMillis,
    int? expiresAtMillis,
    @Default(false) bool autoRenew,
    int? lastVerifiedAtMillis,
  }) = _SubscriptionStateModel;

  factory SubscriptionStateModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionStateModelFromJson(json);
}

/// Derived entitlement check -- kept off the Freezed class itself (Freezed
/// getters can't be added inside the `@freezed` class body).
extension SubscriptionStateAccess on SubscriptionStateModel {
  /// True during `active` and `trialing`, and deliberately also during
  /// `pastDue` -- a lapsed payment method shouldn't instantly cut a paying
  /// user off; it grants a grace period matching standard dunning practice
  /// while the underlying store (App Store/Play Billing) retries the charge.
  bool get isEntitled =>
      status == SubscriptionStatus.active ||
      status == SubscriptionStatus.trialing ||
      status == SubscriptionStatus.pastDue;
}
