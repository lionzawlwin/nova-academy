/// A free, client-side-only A/B variant bucket -- deterministic per
/// `(uid, experimentKey)` pair, computed with no backend and no persisted
/// assignment (the same pair always hashes to the same variant, so nothing
/// needs to be stored). Firebase Remote Config would be the real production
/// path for a properly targeted/analyzed experiment (with rollout
/// percentages, remote overrides, and analytics tie-in) -- that's explicitly
/// flagged as future work and not built here.
library;

/// Returns `'a'` or `'b'`, deterministic for the given `(uid, experimentKey)`
/// pair: the same pair always returns the same variant, and different
/// experiment keys for the same uid can independently land on either side.
///
/// Uses a simple stable sum-of-code-units hash over `'$uid:$experimentKey'`
/// -- deliberately NOT Dart's `.hashCode`, which is only guaranteed stable
/// within a single process run and can differ across runs/platforms/Dart
/// versions, which would make the "same pair always returns the same
/// variant" guarantee false across app restarts.
String abVariantFor(String uid, String experimentKey) {
  final input = '$uid:$experimentKey';
  var hash = 0;
  for (final unit in input.codeUnits) {
    hash = (hash * 31 + unit) & 0x7fffffff;
  }
  return hash.isEven ? 'a' : 'b';
}
