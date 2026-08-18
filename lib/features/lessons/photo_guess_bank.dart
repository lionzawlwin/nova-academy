import '../../models/child_model.dart' show Grade;
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

const List<PhotoGuessSet> photoGuessSets = [
  _generalKnowledge1,
  _primaryUpper1,
  _secondary1,
];

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

/// Second batch, one grade band up: landmarks, planets, and weather
/// phenomena less immediately obvious than the first set's fruits/animals.
/// Same sourcing/verification standard as [_generalKnowledge1] -- all 6
/// images are public domain or CC0 (no attribution required for any of
/// them), license-checked per file and visually confirmed after download.
const _primaryUpper1 = PhotoGuessSet(
  id: 'photo-guess-primary-upper-1',
  titleEn: 'Guess the Photo',
  titleMy: 'ဓာတ်ပုံကို ခန့်မှန်းပါ',
  questions: [
    PhotoGuessQuestion(
      id: 'eiffel_tower',
      imageAssetPath: 'assets/photo_guess/eiffel_tower.jpg',
      promptEn: 'Which famous landmark is this?',
      promptMy: 'ဒါဘယ်နာမည်ကြီး အထင်ကရအဆောက်အအုံလဲ',
      optionsEn: [
        'The Eiffel Tower',
        'Big Ben',
        'The Great Wall of China',
        'The Statue of Liberty',
      ],
      optionsMy: [
        'အိုင်ဖယ်လ်တာဝါ',
        'ဘစ်ဂ်ဘန်နာရီ',
        'တရုတ်မြို့ရိုးကြီး',
        'လွတ်လပ်ရေးရုပ်တု',
      ],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'pyramids_giza',
      imageAssetPath: 'assets/photo_guess/pyramids_giza.jpg',
      promptEn: 'Which famous landmark is this?',
      promptMy: 'ဒါဘယ်နာမည်ကြီး အထင်ကရအဆောက်အအုံလဲ',
      optionsEn: [
        'The Pyramids of Giza',
        'The Eiffel Tower',
        'The Great Wall of China',
        'Big Ben',
      ],
      optionsMy: [
        'ဂီဇာပိရမစ်များ',
        'အိုင်ဖယ်လ်တာဝါ',
        'တရုတ်မြို့ရိုးကြီး',
        'ဘစ်ဂ်ဘန်နာရီ',
      ],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'saturn_planet',
      imageAssetPath: 'assets/photo_guess/saturn_planet.jpg',
      promptEn: 'Which planet is this?',
      promptMy: 'ဒါဘယ်ဂြိုဟ်လဲ',
      optionsEn: ['Saturn', 'Jupiter', 'Mars', 'Earth'],
      optionsMy: ['စနေဂြိုဟ်', 'ကြာသပတေးဂြိုဟ်', 'အင်္ဂါဂြိုဟ်', 'ကမ္ဘာ'],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'earth_space',
      imageAssetPath: 'assets/photo_guess/earth_space.jpg',
      promptEn: 'Which planet is this?',
      promptMy: 'ဒါဘယ်ဂြိုဟ်လဲ',
      optionsEn: ['Earth', 'Mars', 'Venus', 'Saturn'],
      optionsMy: ['ကမ္ဘာ', 'အင်္ဂါဂြိုဟ်', 'သောကြာဂြိုဟ်', 'စနေဂြိုဟ်'],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'lightning_storm',
      imageAssetPath: 'assets/photo_guess/lightning_storm.jpg',
      promptEn: 'What weather phenomenon is this?',
      promptMy: 'ဒါဘယ်ရာသီဥတုဖြစ်စဉ်လဲ',
      optionsEn: ['Lightning', 'A rainbow', 'Snow', 'Fog'],
      optionsMy: ['လျှပ်စီး', 'သက်တံ', 'နှင်း', 'မြူ'],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'rainbow_sky',
      imageAssetPath: 'assets/photo_guess/rainbow_sky.jpg',
      promptEn: 'What weather phenomenon is this?',
      promptMy: 'ဒါဘယ်ရာသီဥတုဖြစ်စဉ်လဲ',
      optionsEn: ['A rainbow', 'Lightning', 'Snow', 'Fog'],
      optionsMy: ['သက်တံ', 'လျှပ်စီး', 'နှင်း', 'မြူ'],
      correctIndex: 0,
    ),
  ],
);

/// Third batch, Secondary/IGCSE level: Biology/Physics/Geography concepts
/// rather than everyday objects. Same sourcing standard as the two sets
/// above -- all 6 images are public domain or CC0, license-checked per
/// file and visually confirmed after download. One swap worth noting: the
/// first prism candidate found (an illustration) was rejected after its own
/// Wikimedia file page flagged it as physically inaccurate ("should not be
/// used to illustrate how a prism disperses light"); replaced with a real
/// photograph of the same phenomenon instead.
const _secondary1 = PhotoGuessSet(
  id: 'photo-guess-secondary-1',
  titleEn: 'Guess the Photo',
  titleMy: 'ဓာတ်ပုံကို ခန့်မှန်းပါ',
  questions: [
    PhotoGuessQuestion(
      id: 'animal_cell',
      imageAssetPath: 'assets/photo_guess/animal_cell.jpg',
      promptEn: 'What is shown in this diagram?',
      promptMy: 'ဒီပုံတွင် ဘာကိုပြသနေပါသလဲ',
      optionsEn: ['An animal cell', 'A plant cell', 'A bacterium', 'A virus'],
      optionsMy: ['တိရစ္ဆာန်ဆဲလ်', 'အပင်ဆဲလ်', 'ဘက်တီးရီးယား', 'ဗိုင်းရပ်စ်'],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'dna_helix',
      imageAssetPath: 'assets/photo_guess/dna_helix.jpg',
      promptEn: 'What structure is shown here?',
      promptMy: 'ဒီဖွဲ့စည်းပုံက ဘာလဲ',
      optionsEn: [
        'A DNA double helix',
        'A protein chain',
        'A cell membrane',
        'A chromosome',
      ],
      optionsMy: [
        'DNA double helix ဖွဲ့စည်းပုံ',
        'ပရိုတင်းကွင်းဆက်',
        'ဆဲလ်အမြှေး',
        'ခရိုမိုဆုမ်း',
      ],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'prism_light',
      imageAssetPath: 'assets/photo_guess/prism_light.jpg',
      promptEn: 'What physics concept does this photo demonstrate?',
      promptMy: 'ဒီဓာတ်ပုံက ဘယ်ရူပဗေဒသဘောတရားကို ပြသနေပါသလဲ',
      optionsEn: [
        'Light dispersion through a prism',
        'Reflection off a mirror',
        'Gravity',
        'Magnetism',
      ],
      optionsMy: [
        'ပရစ်ဇင်မှတဆင့် အလင်းအရောင်ခွဲထုတ်ခြင်း',
        'မှန်ပြင်ပေါ်ရောင်ပြန်ဟပ်ခြင်း',
        'ဆွဲငင်အား',
        'သံလိုက်အား',
      ],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'electric_circuit',
      imageAssetPath: 'assets/photo_guess/electric_circuit.jpg',
      promptEn: 'What does this diagram show?',
      promptMy: 'ဒီပုံတွင် ဘာကိုပြသနေပါသလဲ',
      optionsEn: [
        'An electric circuit',
        'A water pipe system',
        'A road map',
        'A family tree',
      ],
      optionsMy: [
        'လျှပ်စစ်ဆားကစ်',
        'ရေပိုက်စနစ်',
        'လမ်းမြေပုံ',
        'မျိုးရိုးဆွေစဉ်မျိုးဆက်',
      ],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'volcano_eruption',
      imageAssetPath: 'assets/photo_guess/volcano_eruption.jpg',
      promptEn: 'What natural event is shown here?',
      promptMy: 'ဒါဘယ်သဘာဝဖြစ်စဉ်လဲ',
      optionsEn: [
        'A volcanic eruption',
        'An earthquake',
        'A tsunami',
        'A tornado',
      ],
      optionsMy: [
        'မီးတောင်ပေါက်ကွဲမှု',
        'ငလျင်လှုပ်ခြင်း',
        'ဆူနာမီလှိုင်းကြီး',
        'လေဒဏ်မုန်တိုင်း',
      ],
      correctIndex: 0,
    ),
    PhotoGuessQuestion(
      id: 'plate_tectonics',
      imageAssetPath: 'assets/photo_guess/plate_tectonics.jpg',
      promptEn: 'What geological process does this diagram show?',
      promptMy: 'ဒီပုံသည် ဘယ်ပထဝီဗေဒဆိုင်ရာ ဖြစ်စဉ်ကို ပြသနေပါသလဲ',
      optionsEn: [
        'Seafloor spreading (plate tectonics)',
        'River erosion',
        'The water cycle',
        'Photosynthesis',
      ],
      optionsMy: [
        'ပင်လယ်ကြမ်းပြင် ကွဲထွက်မှု (တက်တွန်းပြား လှုပ်ရှားမှု)',
        'မြစ်ကြောင်းတိုက်စားမှု',
        'ရေသံသရာ',
        'အလင်းပေါင်းစပ်ခြင်း',
      ],
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

/// Picks which [PhotoGuessSet] a grade should play, by difficulty band --
/// Nursery/KG and Primary Lower (Year 1-3) get [_generalKnowledge1]'s
/// fruits/animals/weather; Primary Upper (Year 4-6) gets [_primaryUpper1]'s
/// landmarks/planets/weather phenomena; Secondary/IGCSE gets [_secondary1]'s
/// Biology/Physics/Geography concepts. `null` (no active child/grade, e.g.
/// a parent/teacher/owner previewing the screen) falls back to the easiest
/// set rather than the hardest, on the theory that an unknown-grade viewer
/// is more likely a younger profile than an advanced one.
String photoGuessSetIdForGrade(Grade? grade) {
  switch (grade) {
    case null:
    case Grade.nursery:
    case Grade.kg:
    case Grade.year1:
    case Grade.year2:
    case Grade.year3:
      return _generalKnowledge1.id;
    case Grade.year4:
    case Grade.year5:
    case Grade.year6:
      return _primaryUpper1.id;
    case Grade.year7:
    case Grade.year8:
    case Grade.year9:
    case Grade.year10:
    case Grade.year11:
    case Grade.year12:
    case Grade.year13:
      return _secondary1.id;
  }
}
