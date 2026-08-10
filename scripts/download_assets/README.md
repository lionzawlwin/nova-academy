# Photo asset downloader

Downloads, resizes, compresses, and renames photos for the "Guess the Photo"
lessons, so you don't have to do it by hand for every image.

## 1. Fill in the config

Edit `photo_assets_urls.json` in this folder. Each entry key becomes the
image id, the output filename (`assets/photo_guess/<id>.jpg`), and
`PhotoGuessQuestion.id`. Two forms are supported:

- **Full entry** (recommended) -- downloads the image *and* generates a
  ready-to-paste `PhotoGuessQuestion(...)` snippet:
  ```json
  "apple_fruit": {
    "url": "https://...",
    "promptEn": "What fruit is this?",
    "promptMy": "...",
    "optionsEn": ["Apple", "Banana", "Orange", "Grape"],
    "optionsMy": ["...", "...", "...", "..."],
    "correctIndex": 0,
    "attributionEn": null,
    "attributionMy": null
  }
  ```
- **Shorthand** -- just downloads the image; you write the
  `PhotoGuessQuestion` yourself later:
  ```json
  "apple_fruit": "https://..."
  ```

Only use photos that are public-domain, CC0, or CC-BY/CC-BY-SA licensed for
commercial redistribution, and fill in `attributionEn`/`attributionMy`
whenever the license requires credit (see the licensing rules on
`PhotoGuessQuestion` in `lib/features/lessons/interactive_content_models.dart`).

Delete the three template entries before adding your own. Any key starting
with `_` is treated as a comment and ignored.

## 2. Run the script

```bash
pip install pillow   # one-time, only if not already installed
python scripts/download_assets/download_photo_assets.py
```

Each image is downloaded, EXIF-stripped, resized to a max width of 800px
(large enough for the app's 4:3 photo card, small enough to keep app size
down), and saved as JPEG at quality 85 to `assets/photo_guess/<id>.jpg`.
A bad URL or corrupt image only fails that one entry -- the rest still run.

## 3. Use the output

- Images land directly in `assets/photo_guess/` -- already bundled, since
  that whole directory is declared once in `pubspec.yaml`. No further
  `pubspec.yaml` edits needed as you add more photos.
- Full entries also produce
  `scripts/download_assets/generated_photo_guess_questions.txt` with one
  `PhotoGuessQuestion(...)` block per photo. Copy the ones you want into the
  right `CourseDailyLesson`'s `photoGuessQuestions` list in
  `lib/features/lessons/course_pathway_bank.dart` -- the script can't pick
  which week/subject/day a photo belongs to, so that placement stays manual.
- Re-running the script re-downloads and overwrites images for every entry
  currently in the config (skip/delete entries you don't want to re-fetch).
