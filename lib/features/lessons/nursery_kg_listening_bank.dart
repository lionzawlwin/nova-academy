import '../../models/child_model.dart';
import 'nursery_activity_kind.dart';

/// One tappable answer choice for a Listening Comprehension question.
class ListeningChoice {
  const ListeningChoice({
    required this.id,
    required this.emoji,
    required this.colorValue,
    required this.labelEn,
    required this.labelMy,
    required this.isCorrect,
  });

  final String id;
  final String emoji;
  final int colorValue;
  final String labelEn;
  final String labelMy;
  final bool isCorrect;

  String label(String languageCode) => languageCode == 'my' ? labelMy : labelEn;
}

/// A short spoken passage followed by one comprehension question. The
/// passage and question are read aloud via `TtsService`; the child answers
/// by tapping one of [choices] (no reading required -- every choice also
/// carries an [emoji] and [label] so audio is reinforcement, not a hard
/// requirement, on platforms where TTS fails to initialize).
class NurseryListeningDef {
  const NurseryListeningDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.emoji,
    required this.passageEn,
    required this.passageMy,
    required this.questionEn,
    required this.questionMy,
    required this.choices,
  });

  final String id;
  final String subject;
  final Grade grade;
  final String titleEn;
  final String titleMy;
  final String descriptionEn;
  final String descriptionMy;
  final int starsReward;
  final String emoji;
  final String passageEn;
  final String passageMy;
  final String questionEn;
  final String questionMy;
  final List<ListeningChoice> choices;

  String passage(String languageCode) =>
      languageCode == 'my' ? passageMy : passageEn;
  String question(String languageCode) =>
      languageCode == 'my' ? questionMy : questionEn;

  static const kind = NurseryActivityKind.listening;
}

const NurseryListeningDef _fallbackListening = NurseryListeningDef(
  id: 'fallback-listening',
  subject: 'generalknowledge',
  grade: Grade.nursery,
  titleEn: 'The Little Duck',
  titleMy: 'ငှက်ငယ်လေး',
  descriptionEn: 'Listen to the story, then pick the animal it is about.',
  descriptionMy:
      'ပုံပြင်ကို နားထောင်ပြီး၊ ၎င်းနှင့်ပတ်သက်သော တိရစ္ဆာန်ကို ရွေးပါ။',
  starsReward: 6,
  emoji: '🦆',
  passageEn:
      'A little duck swims on the pond. It says quack, quack, and paddles happily in the water.',
  passageMy:
      'ငှက်ငယ်လေးတစ်ကောင်သည် ရေကန်ပေါ်တွင် ရေကူးနေသည်။ ၎င်းသည် "ကွက်ကွက်" ဟုအသံပြုပြီး ရေထဲတွင် ပျော်ရွှင်စွာ ကူးနေသည်။',
  questionEn: 'Which animal was in the story?',
  questionMy: 'ပုံပြင်ထဲတွင် မည်သည့်တိရစ္ဆာန် ပါဝင်ခဲ့သနည်း။',
  choices: [
    ListeningChoice(
      id: 'duck',
      emoji: '🦆',
      colorValue: 0xFFFFC93C,
      labelEn: 'Duck',
      labelMy: 'ငှက်ငယ်',
      isCorrect: true,
    ),
    ListeningChoice(
      id: 'cat',
      emoji: '🐱',
      colorValue: 0xFFFFBF3C,
      labelEn: 'Cat',
      labelMy: 'ကြောင်',
      isCorrect: false,
    ),
    ListeningChoice(
      id: 'dog',
      emoji: '🐶',
      colorValue: 0xFFB5B557,
      labelEn: 'Dog',
      labelMy: 'ခွေး',
      isCorrect: false,
    ),
  ],
);

NurseryListeningDef? listeningDefForModule(String moduleId) {
  for (final def in nurseryKgListeningBank) {
    if (def.id == moduleId) return def;
  }
  return null;
}

const List<NurseryListeningDef> nurseryKgListeningBank = [
  _fallbackListening,
  NurseryListeningDef(
    id: 'mock-nursery-listening-gk-1',
    subject: 'generalknowledge',
    grade: Grade.nursery,
    titleEn: 'Sunny Day at the Farm',
    titleMy: 'နေသာသောနေ့ လယ်ကွင်းတွင်',
    descriptionEn: 'Listen to the story, then answer the question.',
    descriptionMy: 'ပုံပြင်ကို နားထောင်ပြီး၊ မေးခွန်းကို ဖြေဆိုပါ။',
    starsReward: 6,
    emoji: '🐄',
    passageEn:
        'On the farm, a happy cow eats green grass. Nearby, a rooster stands on the fence.',
    passageMy:
        'လယ်ကွင်းတွင် နွားတစ်ကောင်သည် မြက်စိမ်းများကို ပျော်ရွှင်စွာ စားနေသည်။ အနီးတွင် ကြက်ဖတစ်ကောင်သည် စောင်ရန်းပေါ်တွင် ရပ်နေသည်။',
    questionEn: 'What did the cow eat?',
    questionMy: 'နွားသည် ဘာကို စားခဲ့သနည်း။',
    choices: [
      ListeningChoice(
        id: 'grass',
        emoji: '🌾',
        colorValue: 0xFF4CB963,
        labelEn: 'Grass',
        labelMy: 'မြက်',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'fish',
        emoji: '🐟',
        colorValue: 0xFFFF6A65,
        labelEn: 'Fish',
        labelMy: 'ငါး',
        isCorrect: false,
      ),
      ListeningChoice(
        id: 'bone',
        emoji: '🦴',
        colorValue: 0xFFFFFFFF,
        labelEn: 'Bone',
        labelMy: 'အရိုး',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-nursery-listening-phonics-1',
    subject: 'phonics',
    grade: Grade.nursery,
    titleEn: 'The Fast Fox',
    titleMy: 'အမြန်ပြေးသော ခွေးအောင်းငှက်',
    descriptionEn: 'Listen to the story, then pick the correct color.',
    descriptionMy: 'ပုံပြင်ကို နားထောင်ပြီး၊ မှန်ကန်သော အရောင်ကို ရွေးပါ။',
    starsReward: 6,
    emoji: '🦊',
    passageEn:
        'A fox runs fast across the field. Its fur is bright orange and its tail is fluffy.',
    passageMy:
        'ခွေးအောင်းငှက်တစ်ကောင်သည် လယ်ကွင်းကို ကျော်ဖြတ်ပြီး အမြန်ပြေးနေသည်။ ၎င်း၏ အမွှေးမှုန်သည် လိမ္မော်ရောင် တောက်ပနေပြီး အမြီးသည် ဖွေးဖွေးဖြူးဖြူးဖြစ်သည်။',
    questionEn: 'What color was the fox?',
    questionMy: 'ခွေးအောင်းငှက်သည် ဘယ်အရောင်ဖြစ်သနည်း။',
    choices: [
      ListeningChoice(
        id: 'orange',
        emoji: '🟠',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Orange',
        labelMy: 'လိမ္မော်ရောင်',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'blue',
        emoji: '🔵',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Blue',
        labelMy: 'အပြာရောင်',
        isCorrect: false,
      ),
      ListeningChoice(
        id: 'purple',
        emoji: '🟣',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Purple',
        labelMy: 'ခရမ်းရောင်',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-kg-listening-gk-1',
    subject: 'generalknowledge',
    grade: Grade.kg,
    titleEn: 'The Rainy Afternoon',
    titleMy: 'မိုးရွာသော နေ့လယ်ခင်း',
    descriptionEn: 'Listen to the story, then answer the question.',
    descriptionMy: 'ပုံပြင်ကို နားထောင်ပြီး၊ မေးခွန်းကို ဖြေဆိုပါ။',
    starsReward: 8,
    emoji: '☔',
    passageEn:
        'Rain falls softly outside. A girl puts on her yellow raincoat and jumps in every puddle she can find.',
    passageMy:
        'အပြင်ဘက်တွင် မိုးသည် ညင်သာစွာ ရွာနေသည်။ မိန်းကလေးတစ်ဦးသည် သူ၏ အဝါရောင် မိုးကာအင်္ကျီကို ဝတ်ပြီး တွေ့ရသမျှ ရေအိုင်ငယ်များထဲ ခုန်ကစားသည်။',
    questionEn: 'What color was the raincoat?',
    questionMy: 'မိုးကာအင်္ကျီသည် ဘယ်အရောင်ဖြစ်သနည်း။',
    choices: [
      ListeningChoice(
        id: 'yellow',
        emoji: '🟡',
        colorValue: 0xFFFFC93C,
        labelEn: 'Yellow',
        labelMy: 'အဝါရောင်',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'green',
        emoji: '🟢',
        colorValue: 0xFF4CB963,
        labelEn: 'Green',
        labelMy: 'အစိမ်းရောင်',
        isCorrect: false,
      ),
      ListeningChoice(
        id: 'red',
        emoji: '🔴',
        colorValue: 0xFFE64545,
        labelEn: 'Red',
        labelMy: 'အနီရောင်',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-kg-listening-phonics-1',
    subject: 'phonics',
    grade: Grade.kg,
    titleEn: 'Bedtime for Bear',
    titleMy: 'ဝက်ဝံအိပ်ချိန်',
    descriptionEn: 'Listen to the story, then answer the question.',
    descriptionMy: 'ပုံပြင်ကို နားထောင်ပြီး၊ မေးခွန်းကို ဖြေဆိုပါ။',
    starsReward: 8,
    emoji: '🐻',
    passageEn:
        'The little bear is sleepy. He hugs his soft blanket and closes his eyes under the big moon.',
    passageMy:
        'ဝက်ဝံငယ်လေးသည် အိပ်ငိုက်နေသည်။ သူသည် သူ၏ ပျော့ပျောင်းသော စောင်ကို ဖက်ပြီး ကြီးမားသော လအောက်တွင် မျက်လုံးများကို စေ့နေသည်။',
    questionEn: 'What was the bear sleepy under?',
    questionMy: 'ဝက်ဝံသည် ဘာအောက်တွင် အိပ်ငိုက်နေသနည်း။',
    choices: [
      ListeningChoice(
        id: 'moon',
        emoji: '🌙',
        colorValue: 0xFF7271F7,
        labelEn: 'The moon',
        labelMy: 'လ',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'sun',
        emoji: '☀️',
        colorValue: 0xFFFFC93C,
        labelEn: 'The sun',
        labelMy: 'နေ',
        isCorrect: false,
      ),
      ListeningChoice(
        id: 'tree',
        emoji: '🌳',
        colorValue: 0xFF4CB963,
        labelEn: 'A tree',
        labelMy: 'သစ်ပင်',
        isCorrect: false,
      ),
    ],
  ),
];
