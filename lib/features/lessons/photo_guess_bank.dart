import 'interactive_content_models.dart';

/// General-knowledge "Guess the Photo" rounds, separate from
/// `course_pathway_bank.dart`'s Computing-only Duolingo-style course path
/// (that file has no Nursery/KG grades and no non-Computing subject, so it
/// has nowhere to attach fruit/animal/weather content). A [PhotoGuessSet]
/// here is surfaced directly as a Challenge Zone card instead of a course
/// week/day -- see `primary_home_screen.dart`'s `photoguess` Challenge Zone
/// item, which pushes [PhotoGuessScreen] with a set's [PhotoGuessSet.id] as
/// the `moduleId`. [PhotoGuessScreen] resolves that id through
/// [photoGuessQuestionsForSetId] after `courseDailyLessonById` (the course
/// pathway's own lookup) comes up empty.
class PhotoGuessSet {
  const PhotoGuessSet({
    required this.id,
    required this.titleEn,
    required this.titleMy,
    required this.questions,
  });

  final String id;
  final String titleEn;
  final String titleMy;
  final List<PhotoGuessQuestion> questions;
}

const List<PhotoGuessSet> photoGuessSets = [_generalKnowledge1];

/// First general-knowledge batch: common fruits, animals, and weather.
/// All 6 images were sourced from Wikimedia Commons (public domain / CC0 /
/// CC-BY-SA-3.0 only), license-verified per file, and visually checked
/// against their prompts before inclusion -- see
/// `scripts/download_assets/photo_assets_urls.json`'s `_sourcing_note` for
/// the same batch's full provenance.
const _generalKnowledge1 = PhotoGuessSet(
  id: 'photo-guess-general-knowledge-1',
  titleEn: 'Guess the Photo',
  titleMy: 'ဓာတ်ပုံကို ခန့်မှန်းပါ',
  questions: [
    PhotoGuessQuestion(
      id: 'apple_fruit',
      imageAssetPath: 'assets/photo_guess/apple_fruit.jpg',
      promptEn: 'What fruit is this?',
      promptMy: 'ဒါဘာအသီးလဲ',
      optionsEn: ['Apple', 'Banana', 'Orange', 'Grape'],
      optionsMy: ['ပန်းသီး', 'ငှက်ပျောသီး', 'လိမ္မော်သီး', 'စပျစ်သီး'],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'banana_fruit',
      imageAssetPath: 'assets/photo_guess/banana_fruit.jpg',
      promptEn: 'What fruit is this?',
      promptMy: 'ဒါဘာအသီးလဲ',
      optionsEn: ['Banana', 'Apple', 'Mango', 'Pineapple'],
      optionsMy: ['ငှက်ပျောသီး', 'ပန်းသီး', 'သရက်သီး', 'နာနတ်သီး'],
      correctIndex: 0,
      attributionEn: 'Photo: Evan-Amos / Wikimedia Commons, CC BY-SA 3.0',
      attributionMy: 'ဓာတ်ပုံ: Evan-Amos / Wikimedia Commons, CC BY-SA 3.0',
    ),
    PhotoGuessQuestion(
      id: 'cat_animal',
      imageAssetPath: 'assets/photo_guess/cat_animal.jpg',
      promptEn: 'What animal is this?',
      promptMy: 'ဒါဘာတိရစ္ဆာန်လဲ',
      optionsEn: ['Cat', 'Dog', 'Rabbit', 'Bird'],
      optionsMy: ['ကြောင်', 'ခွေး', 'ယုန်', 'ငှက်'],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'dog_animal',
      imageAssetPath: 'assets/photo_guess/dog_animal.jpg',
      promptEn: 'What animal is this?',
      promptMy: 'ဒါဘာတိရစ္ဆာန်လဲ',
      optionsEn: ['Dog', 'Cat', 'Cow', 'Horse'],
      optionsMy: ['ခွေး', 'ကြောင်', 'နွား', 'မြင်း'],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'sun_weather',
      imageAssetPath: 'assets/photo_guess/sun_weather.jpg',
      promptEn: 'What is in the sky in this photo?',
      promptMy: 'ဒီဓာတ်ပုံထဲမှာ ကောင်းကင်ပေါ်က ဘာလဲ',
      optionsEn: ['The sun', 'The moon', 'A star', 'A cloud'],
      optionsMy: ['နေ', 'လ', 'ကြယ်', 'တိမ်'],
      correctIndex: 0,
      attributionEn: 'Photo: Kreuzschnabel / Wikimedia Commons, CC BY-SA 3.0',
      attributionMy: 'ဓာတ်ပုံ: Kreuzschnabel / Wikimedia Commons, CC BY-SA 3.0',
    ),
    PhotoGuessQuestion(
      id: 'rain_weather',
      imageAssetPath: 'assets/photo_guess/rain_weather.jpg',
      promptEn: 'What weather is shown here?',
      promptMy: 'ဒီဓာတ်ပုံမှာ ဘယ်လိုရာသီဥတုပြထားလဲ',
      optionsEn: ['Rain', 'Snow', 'Sunshine', 'Wind'],
      optionsMy: ['မိုးရွာနေသည်', 'နှင်းကျနေသည်', 'နေသာနေသည်', 'လေတိုက်နေသည်'],
      correctIndex: 0,
    ),
  ],
);

/// Looks up a [PhotoGuessSet]'s questions by [id] -- `null` when nothing
/// here matches, so callers (just [PhotoGuessScreen] today) can fall
/// through to their own empty state instead of throwing.
List<PhotoGuessQuestion>? photoGuessQuestionsForSetId(String id) {
  for (final set in photoGuessSets) {
    if (set.id == id) return set.questions;
  }
  return null;
}
