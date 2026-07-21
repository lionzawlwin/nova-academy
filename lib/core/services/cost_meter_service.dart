/// In-memory Firestore op counter for one app session -- the write side of
/// the FinOps telemetry pipeline (see `UsageTelemetryModel`'s doc comment
/// for why this is aggregated rather than logged per-operation).
///
/// Deliberately a plain class, not a Firestore-backed model: these counters
/// exist purely to be incremented cheaply at call sites and periodically
/// flushed (see `flushUsageTelemetry` in
/// `lib/providers/cost_telemetry_providers.dart`), never read back
/// mid-session.
class CostMeterService {
  int _reads = 0;
  int _writes = 0;

  int get pendingReads => _reads;
  int get pendingWrites => _writes;

  void recordRead([int count = 1]) => _reads += count;
  void recordWrite([int count = 1]) => _writes += count;

  /// Called after a successful flush to Firestore so the same operations
  /// aren't double-counted into the next flush.
  void reset() {
    _reads = 0;
    _writes = 0;
  }
}
