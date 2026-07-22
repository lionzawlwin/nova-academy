import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';

/// Thin wrapper around [FlutterTts] for the Nursery/KG audio-driven
/// activities (Listening Comprehension, Interactive Storytelling,
/// Singing/Rhymes). Every call is defensively wrapped in try/catch: a
/// missing TTS engine (headless test runners, some emulator images, an
/// unsupported browser) must never crash a lesson screen -- worst case, a
/// child taps "listen" and nothing plays, which the UI itself already reads
/// fine without audio (the on-screen text/emoji still carry the content).
///
/// Deliberately a bare class instantiated per-screen rather than a Riverpod
/// provider: each lesson screen owns its own short-lived narration session
/// and disposes it on exit, so there's no shared state worth centralizing.
class TtsService {
  TtsService() : _tts = FlutterTts();

  final FlutterTts _tts;
  bool _configured = false;

  Future<void> _ensureConfigured(String languageCode) async {
    try {
      // `my-MM` Burmese TTS voices are not reliably available across
      // platforms; falling back to English speech synthesis for Burmese
      // text still gives a child *a* voice to follow along with rather
      // than silence.
      await _tts.setLanguage(languageCode == 'my' ? 'en-US' : 'en-US');
      await _tts.setSpeechRate(0.42);
      await _tts.setPitch(1.15);
      await _tts.setVolume(1.0);
      _configured = true;
    } catch (_) {
      // Leave `_configured` false so every `speak` call keeps retrying --
      // harmless, since `speak` itself is already fully guarded.
    }
  }

  /// Speaks [text] aloud. Safe to call repeatedly; a new call interrupts
  /// whatever was already playing (stock [FlutterTts] behavior).
  Future<void> speak(String text, {String languageCode = 'en'}) async {
    if (text.trim().isEmpty) return;
    try {
      if (!_configured) await _ensureConfigured(languageCode);
      await _tts.speak(text);
    } catch (error) {
      debugPrint('TtsService.speak failed silently: $error');
    }
  }

  Future<void> stop() async {
    try {
      await _tts.stop();
    } catch (_) {
      // Nothing to clean up if the engine was never configured.
    }
  }

  void dispose() {
    unawaited(stop());
  }
}
