# assets/photo_guess/

Bundled photos for the "Guess the Photo" lessons (`PhotoGuessQuestion.imageAssetPath`
in `lib/features/lessons/interactive_content_models.dart`). This whole directory is
declared once in `pubspec.yaml` (`flutter: assets: - assets/photo_guess/`), so any
file dropped here is automatically bundled into the app -- no further `pubspec.yaml`
edits needed per image.

Files here are produced by `scripts/download_assets/download_photo_assets.py` -- see
that script's README for the full workflow. Do not add images by hand unless you also
resize/compress them yourself; unresized photos bloat the app.

Every photo added here must be public-domain, CC0, or CC-BY/CC-BY-SA licensed for
commercial redistribution, per the licensing rules documented on `PhotoGuessQuestion`
in `interactive_content_models.dart`. Record any required attribution in that
question's `attributionEn`/`attributionMy` fields -- never drop it silently.
