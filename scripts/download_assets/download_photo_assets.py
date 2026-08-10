#!/usr/bin/env python3
"""Downloads, resizes, and renames photos for Nova Academy's "Guess the
Photo" lessons.

Reads scripts/download_assets/photo_assets_urls.json, downloads each photo,
strips EXIF, resizes/compresses it for mobile, and saves it as
assets/photo_guess/<id>.jpg. Entries that also include quiz content (prompt,
options, correct answer) get a ready-to-paste PhotoGuessQuestion(...) Dart
snippet written to scripts/download_assets/generated_photo_guess_questions.txt
-- see this folder's README.md for the full workflow and JSON schema.
"""

from __future__ import annotations

import io
import json
import re
import sys
import urllib.error
import urllib.request
from pathlib import Path

from PIL import Image, ImageOps, UnidentifiedImageError

SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parent.parent
CONFIG_PATH = SCRIPT_DIR / "photo_assets_urls.json"
ASSETS_DIR = REPO_ROOT / "assets" / "photo_guess"
SNIPPETS_PATH = SCRIPT_DIR / "generated_photo_guess_questions.txt"

MAX_WIDTH = 800
JPEG_QUALITY = 85
REQUEST_TIMEOUT_SECONDS = 15
USER_AGENT = "NovaAcademyAssetDownloader/1.0"

QUIZ_FIELDS = ("promptEn", "promptMy", "optionsEn", "optionsMy", "correctIndex")


def sanitize_id(raw_id: str) -> str:
    slug = re.sub(r"[^a-z0-9_]+", "_", raw_id.strip().lower())
    slug = re.sub(r"_+", "_", slug).strip("_")
    if not slug:
        raise ValueError(f"'{raw_id}' has no usable characters for a filename/id")
    return slug


def download_image_bytes(url: str) -> bytes:
    request = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(request, timeout=REQUEST_TIMEOUT_SECONDS) as response:
        return response.read()


def resize_and_save(image_bytes: bytes, dest_path: Path) -> None:
    image = Image.open(io.BytesIO(image_bytes))
    # Apply EXIF orientation before dropping EXIF entirely below, so photos
    # taken sideways/upside-down don't end up rotated in the app.
    image = ImageOps.exif_transpose(image)
    if image.mode != "RGB":
        image = image.convert("RGB")
    if image.width > MAX_WIDTH:
        new_height = round(image.height * (MAX_WIDTH / image.width))
        image = image.resize((MAX_WIDTH, new_height), Image.Resampling.LANCZOS)
    dest_path.parent.mkdir(parents=True, exist_ok=True)
    # save() only embeds EXIF if passed explicitly -- omitting it here strips
    # the original EXIF block from the output file.
    image.save(dest_path, format="JPEG", quality=JPEG_QUALITY, optimize=True)


def escape_dart_string(value: str) -> str:
    return value.replace("\\", "\\\\").replace("'", "\\'").replace("\n", "\\n")


def dart_string_list(values: list[str]) -> str:
    return "[" + ", ".join(f"'{escape_dart_string(v)}'" for v in values) + "]"


def build_snippet(image_id: str, entry: dict) -> str:
    lines = [
        "PhotoGuessQuestion(",
        f"  id: '{escape_dart_string(image_id)}',",
        f"  imageAssetPath: 'assets/photo_guess/{image_id}.jpg',",
        f"  promptEn: '{escape_dart_string(entry['promptEn'])}',",
        f"  promptMy: '{escape_dart_string(entry['promptMy'])}',",
        f"  optionsEn: {dart_string_list(entry['optionsEn'])},",
        f"  optionsMy: {dart_string_list(entry['optionsMy'])},",
        f"  correctIndex: {entry['correctIndex']},",
    ]
    attribution_en = entry.get("attributionEn")
    attribution_my = entry.get("attributionMy")
    if attribution_en:
        lines.append(f"  attributionEn: '{escape_dart_string(attribution_en)}',")
    if attribution_my:
        lines.append(f"  attributionMy: '{escape_dart_string(attribution_my)}',")
    lines.append("),")
    return "\n".join(lines)


def validate_quiz_entry(entry: dict) -> str | None:
    options_en = entry.get("optionsEn")
    options_my = entry.get("optionsMy")
    correct_index = entry.get("correctIndex")
    if not isinstance(options_en, list) or not isinstance(options_my, list):
        return "optionsEn/optionsMy must be lists"
    if len(options_en) != len(options_my):
        return "optionsEn and optionsMy must be the same length"
    if len(options_en) < 2:
        return "optionsEn/optionsMy need at least 2 choices"
    if not isinstance(correct_index, int) or not (0 <= correct_index < len(options_en)):
        return f"correctIndex must be an integer between 0 and {len(options_en) - 1}"
    if not entry.get("promptEn") or not entry.get("promptMy"):
        return "promptEn/promptMy must be non-empty"
    return None


def main() -> int:
    if not CONFIG_PATH.exists():
        print(f"Config not found: {CONFIG_PATH}")
        return 1

    try:
        raw_config = json.loads(CONFIG_PATH.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        print(f"Invalid JSON in {CONFIG_PATH}: {exc}")
        return 1

    entries = {k: v for k, v in raw_config.items() if not k.startswith("_")}
    if not entries:
        print("No entries found (only '_' comment keys). Add real entries to the config.")
        return 0

    downloaded: list[str] = []
    failed: list[str] = []
    image_only: list[str] = []
    snippets: list[str] = []

    for raw_id, value in entries.items():
        try:
            image_id = sanitize_id(raw_id)
        except ValueError as exc:
            failed.append(f"{raw_id}: {exc}")
            continue

        if isinstance(value, str):
            entry = {"url": value}
        elif isinstance(value, dict):
            entry = dict(value)
        else:
            failed.append(f"{raw_id}: entry must be a URL string or an object")
            continue

        url = entry.get("url")
        if not url:
            failed.append(f"{raw_id}: missing 'url'")
            continue

        print(f"Downloading '{raw_id}' -> {image_id}.jpg ...")
        try:
            image_bytes = download_image_bytes(url)
            resize_and_save(image_bytes, ASSETS_DIR / f"{image_id}.jpg")
        except (urllib.error.URLError, UnidentifiedImageError, OSError, ValueError) as exc:
            failed.append(f"{raw_id}: {exc}")
            continue

        downloaded.append(image_id)

        has_quiz_content = any(field in entry for field in QUIZ_FIELDS)
        if not has_quiz_content:
            image_only.append(image_id)
            continue

        error = validate_quiz_entry(entry)
        if error:
            failed.append(f"{raw_id}: image saved, but quiz content is invalid ({error})")
            continue

        snippets.append(build_snippet(image_id, entry))

    if snippets:
        SNIPPETS_PATH.write_text("\n\n".join(snippets) + "\n", encoding="utf-8")

    print()
    print(f"Downloaded: {len(downloaded)}")
    if image_only:
        print(
            "  Image only (no quiz content -- add a PhotoGuessQuestion by hand): "
            + ", ".join(image_only)
        )
    if snippets:
        print(
            f"  Generated {len(snippets)} PhotoGuessQuestion snippet(s) -> "
            f"{SNIPPETS_PATH.relative_to(REPO_ROOT)}"
        )
    if failed:
        print(f"Failed: {len(failed)}")
        for message in failed:
            print(f"  - {message}")

    return 1 if failed and not downloaded else 0


if __name__ == "__main__":
    sys.exit(main())
