import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants/app_constants.dart';
import '../core/services/cost_meter_service.dart';
import '../models/user_model.dart' show SubscriptionTier;

/// Shared [CostMeterService] instance for the app session -- call sites
/// increment it cheaply via `recordRead`/`recordWrite`, and
/// [flushUsageTelemetry] periodically drains it into Firestore. A plain
/// `Provider` (not a `StreamProvider`/`FutureProvider`) since the service
/// itself holds no async state, only in-memory counters.
final costMeterServiceProvider = Provider<CostMeterService>((ref) {
  return CostMeterService();
});

/// Drains [meter]'s pending read/write counters into today's
/// `UsageTelemetry/{uid}_{dateYyyymmdd}` document, then resets the meter on
/// success -- the write-side half of the FinOps telemetry pipeline (see
/// `UsageTelemetryModel`'s doc comment for the "aggregate, don't log every
/// event" rationale).
///
/// A no-op when there's nothing pending, so calling this speculatively
/// (e.g. on every app-pause) never produces an empty write. The upsert uses
/// `FieldValue.increment` against a doc id that may not exist yet for
/// today -- this is safe: Firestore treats a missing document/field as `0`
/// for the purposes of `increment`, so the first flush of the day creates
/// the doc and every subsequent flush that same day just adds onto it.
///
/// This is deliberately **one write per flush**, regardless of how many
/// reads/writes accumulated in [meter] since the last flush -- callers
/// should invoke this on a coarse cadence (e.g. app pause/background),
/// never per navigation or per Firestore call, or the telemetry pipeline
/// itself would become a meaningful chunk of the write volume it exists to
/// monitor.
///
/// Best-effort and never rethrows, mirroring `recordLessonAttempt`'s
/// philosophy: a telemetry write failing must never surface as a user-
/// facing error or block whatever real work triggered the flush.
Future<void> flushUsageTelemetry(
  FirebaseFirestore firestore,
  CostMeterService meter, {
  required String uid,
  required SubscriptionTier tier,
}) async {
  final reads = meter.pendingReads;
  final writes = meter.pendingWrites;
  if (reads == 0 && writes == 0) return;

  final now = DateTime.now();
  final dateYyyymmdd =
      '${now.year.toString().padLeft(4, '0')}'
      '${now.month.toString().padLeft(2, '0')}'
      '${now.day.toString().padLeft(2, '0')}';
  final docId = '${uid}_$dateYyyymmdd';

  try {
    await firestore
        .collection(AppConstants.usageTelemetryCollection)
        .doc(docId)
        .set({
          'uid': uid,
          'dateYyyymmdd': dateYyyymmdd,
          'estimatedReads': FieldValue.increment(reads),
          'estimatedWrites': FieldValue.increment(writes),
          'tier': tier == SubscriptionTier.premium ? 'premium' : 'free',
          'lastUpdatedAtMillis': now.millisecondsSinceEpoch,
        }, SetOptions(merge: true));
    meter.reset();
  } catch (_) {
    // Best-effort telemetry -- swallow and try again on the next flush.
  }
}
