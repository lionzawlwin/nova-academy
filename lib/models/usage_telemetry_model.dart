import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_model.dart' show SubscriptionTier;

part 'usage_telemetry_model.freezed.dart';
part 'usage_telemetry_model.g.dart';

/// Mirrors a document in the top-level `UsageTelemetry` Firestore collection
/// -- the FinOps side of the ledger, mapping estimated Firebase read/write
/// volume against the subscription tier that generated it.
///
/// One document per user per calendar day (doc id `"{uid}_{dateYyyymmdd}"`,
/// upserted via `FieldValue.increment` -- see `flushUsageTelemetry` in
/// `cost_telemetry_providers.dart`), the same "aggregate, don't log every
/// event" philosophy as `LessonAttemptModel`: logging every individual read
/// would multiply write volume against the very Spark quota this telemetry
/// exists to protect.
///
/// [estimatedReads]/[estimatedWrites] are client-self-reported counters, not
/// a security boundary -- a modified client could under-report them. They
/// are a monitoring signal for the CFO cost-vs-tier dashboard; the actual
/// enforcement boundary against runaway free-tier cost is `firestore.rules`
/// plus deliberate query-shape discipline in the providers themselves.
@freezed
class UsageTelemetryModel with _$UsageTelemetryModel {
  const factory UsageTelemetryModel({
    required String id,
    required String uid,
    required String dateYyyymmdd,
    @Default(0) int estimatedReads,
    @Default(0) int estimatedWrites,
    required SubscriptionTier tier,
    required int lastUpdatedAtMillis,
  }) = _UsageTelemetryModel;

  factory UsageTelemetryModel.fromJson(Map<String, dynamic> json) =>
      _$UsageTelemetryModelFromJson(json);
}
