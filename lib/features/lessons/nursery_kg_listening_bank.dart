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
  NurseryListeningDef(
    id: 'mock-nursery-listening-stem-1',
    subject: 'stem',
    grade: Grade.nursery,
    titleEn: 'Sink or Float?',
    titleMy: 'နစ်သလား ပေါ်သလား',
    descriptionEn: 'Listen to the story, then pick what happened.',
    descriptionMy: 'ပုံပြင်ကို နားထောင်ပြီး၊ ဖြစ်ပျက်ခဲ့သည်ကို ရွေးပါ။',
    starsReward: 6,
    emoji: '💧',
    passageEn:
        'Mia drops a big rock into the water. Splash! The heavy rock sinks straight down to the bottom.',
    passageMy:
        'မီယာသည် ကျောက်တုံးကြီးကို ရေထဲသို့ ချထည့်လိုက်သည်။ ပလုန်း! လေးလံသော ကျောက်တုံးသည် အောက်ခြေသို့ တည့်တည့် နစ်သွားသည်။',
    questionEn: 'What did the rock do in the water?',
    questionMy: 'ကျောက်တုံးသည် ရေထဲတွင် ဘာဖြစ်သွားသနည်း။',
    choices: [
      ListeningChoice(
        id: 'sink',
        emoji: '🪨',
        colorValue: 0xFF8C8C8C,
        labelEn: 'It sank',
        labelMy: 'နစ်သွားသည်',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'float',
        emoji: '🛟',
        colorValue: 0xFF4CB6FF,
        labelEn: 'It floated',
        labelMy: 'ပေါ်နေသည်',
        isCorrect: false,
      ),
      ListeningChoice(
        id: 'fly',
        emoji: '🦋',
        colorValue: 0xFFFF6FA5,
        labelEn: 'It flew away',
        labelMy: 'ပျံသွားသည်',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-kg-listening-stem-1',
    subject: 'stem',
    grade: Grade.kg,
    titleEn: 'The Magic Magnet',
    titleMy: 'မှော်ဓာတ်သံလိုက်',
    descriptionEn: 'Listen to the story, then pick what the magnet pulled.',
    descriptionMy:
        'ပုံပြင်ကို နားထောင်ပြီး၊ သံလိုက်စွဲငင်ခဲ့သည့်အရာကို ရွေးပါ။',
    starsReward: 8,
    emoji: '🧲',
    passageEn:
        'Ko Ko holds a magnet near his toys. The metal spoon jumps and sticks to the magnet, but the wooden block does not move at all.',
    passageMy:
        'ကိုကိုသည် ၎င်း၏ ကစားစရာများအနီးတွင် သံလိုက်တစ်ခုကို ကိုင်ထားသည်။ သံဇွန်းသည် ခုန်တက်ပြီး သံလိုက်တွင် ကပ်သွားသော်လည်း သစ်သားတုံးမှာမူ လုံးဝမလှုပ်ချေ။',
    questionEn: 'What did the magnet pull?',
    questionMy: 'သံလိုက်သည် ဘာကို စွဲငင်ခဲ့သနည်း။',
    choices: [
      ListeningChoice(
        id: 'spoon',
        emoji: '🥄',
        colorValue: 0xFFC0C0C0,
        labelEn: 'The metal spoon',
        labelMy: 'သံဇွန်း',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'block',
        emoji: '🪵',
        colorValue: 0xFF8B5E3C,
        labelEn: 'The wooden block',
        labelMy: 'သစ်သားတုံး',
        isCorrect: false,
      ),
      ListeningChoice(
        id: 'paper',
        emoji: '📄',
        colorValue: 0xFFFFFFFF,
        labelEn: 'The paper',
        labelMy: 'စက္ကူ',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-nursery-listening-coding-1',
    subject: 'coding',
    grade: Grade.nursery,
    titleEn: "Robot's First Step",
    titleMy: 'စက်ရုပ်ငယ်၏ ပထမခြေလှမ်း',
    descriptionEn: 'Listen to the story, then pick what the robot did first.',
    descriptionMy:
        'ပုံပြင်ကို နားထောင်ပြီး၊ စက်ရုပ်ငယ် ပထမဆုံးလုပ်ခဲ့သည့်အရာကို ရွေးပါ။',
    starsReward: 7,
    emoji: '🤖',
    passageEn:
        'The little robot gets three steps: walk forward, turn around, then stop. First, the robot walks forward.',
    passageMy:
        'စက်ရုပ်ငယ်သည် ညွှန်ကြားချက် သုံးခု ရရှိသည်- ရှေ့သို့လျှောက်ရန်၊ ပြန်လှည့်ရန်၊ ရပ်ရန်။ ပထမဆုံး၊ စက်ရုပ်ငယ်သည် ရှေ့သို့ လျှောက်လိုက်သည်။',
    questionEn: 'What did the robot do first?',
    questionMy: 'စက်ရုပ်ငယ် ပထမဆုံး ဘာလုပ်ခဲ့သနည်း။',
    choices: [
      ListeningChoice(
        id: 'walk-forward',
        emoji: '🚶',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Walk forward',
        labelMy: 'ရှေ့သို့လျှောက်ခြင်း',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'turn-around',
        emoji: '🔄',
        colorValue: 0xFFFFC93C,
        labelEn: 'Turn around',
        labelMy: 'ပြန်လှည့်ခြင်း',
        isCorrect: false,
      ),
      ListeningChoice(
        id: 'stop',
        emoji: '🛑',
        colorValue: 0xFFE64545,
        labelEn: 'Stop',
        labelMy: 'ရပ်ခြင်း',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-kg-listening-coding-1',
    subject: 'coding',
    grade: Grade.kg,
    titleEn: "The Robot's Treasure Path",
    titleMy: 'စက်ရုပ်ငယ်၏ ရတနာလမ်းကြောင်း',
    descriptionEn: "Listen to the story, then pick the robot's last step.",
    descriptionMy:
        'ပုံပြင်ကို နားထောင်ပြီး၊ စက်ရုပ်ငယ်၏ နောက်ဆုံးခြေလှမ်းကို ရွေးပါ။',
    starsReward: 9,
    emoji: '🤖',
    passageEn:
        'To find the treasure, the robot follows four steps in order: hop forward, turn left, hop forward again, and finally pick up the star.',
    passageMy:
        'ရတနာကို ရှာဖွေရန် စက်ရုပ်ငယ်သည် အဆင့်လေးဆင့်ကို အစဉ်လိုက် လိုက်နာသည်- ရှေ့သို့ခုန်ရန်၊ ဘယ်ဘက်သို့လှည့်ရန်၊ ထပ်မံရှေ့သို့ခုန်ရန်၊ နောက်ဆုံးတွင် ကြယ်ကို ကောက်ယူရန်ဖြစ်သည်။',
    questionEn: "What was the robot's last step?",
    questionMy: 'စက်ရုပ်ငယ်၏ နောက်ဆုံးခြေလှမ်းသည် အဘယ်နည်း။',
    choices: [
      ListeningChoice(
        id: 'pick-up-star',
        emoji: '⭐',
        colorValue: 0xFFFFC93C,
        labelEn: 'Pick up the star',
        labelMy: 'ကြယ်ကောက်ယူခြင်း',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'turn-left',
        emoji: '⬅️',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Turn left',
        labelMy: 'ဘယ်ဘက်လှည့်ခြင်း',
        isCorrect: false,
      ),
      ListeningChoice(
        id: 'hop-forward',
        emoji: '⬆️',
        colorValue: 0xFF4CB963,
        labelEn: 'Hop forward',
        labelMy: 'ရှေ့သို့ခုန်ခြင်း',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-nursery-listening-engineering-1',
    subject: 'engineering',
    grade: Grade.nursery,
    titleEn: 'Ted Builds a Tower',
    titleMy: 'တက်ဒ်ရဲ့ ရဲတိုက်ဆောက်ခြင်း',
    descriptionEn: 'Listen to the story, then pick what Ted built.',
    descriptionMy:
        'ပုံပြင်ကို နားထောင်ပြီး၊ တက်ဒ်တည်ဆောက်ခဲ့သည့်အရာကို ရွေးပါ။',
    starsReward: 6,
    emoji: '🧱',
    passageEn:
        'Ted stacks his blocks one on top of another. Big block first, then small block on top. He builds a tall tower!',
    passageMy:
        'တက်ဒ်သည် သူ၏အုတ်တုံးများကို တစ်ခုပေါ်တစ်ခု စီထားသည်။ အုတ်တုံးကြီးကို အရင်ချ၊ ပေါ်မှာ အုတ်တုံးငယ်ကို တင်လိုက်သည်။ သူသည် မြင့်မားသော ရဲတိုက်တစ်ခုကို တည်ဆောက်လိုက်သည်!',
    questionEn: 'What did Ted build?',
    questionMy: 'တက်ဒ် ဘာကို တည်ဆောက်ခဲ့သနည်း။',
    choices: [
      ListeningChoice(
        id: 'tower',
        emoji: '🗼',
        colorValue: 0xFFFF8A3D,
        labelEn: 'A tall tower',
        labelMy: 'မြင့်မားသော ရဲတိုက်',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'car',
        emoji: '🚗',
        colorValue: 0xFF4CB6FF,
        labelEn: 'A car',
        labelMy: 'ကား',
        isCorrect: false,
      ),
      ListeningChoice(
        id: 'boat',
        emoji: '⛵',
        colorValue: 0xFF4CB963,
        labelEn: 'A boat',
        labelMy: 'လှေ',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-kg-listening-engineering-1',
    subject: 'engineering',
    grade: Grade.kg,
    titleEn: 'The Strong Bridge',
    titleMy: 'ခိုင်မာသော တံတား',
    descriptionEn:
        'Listen to the story, then pick which bridge held the toy car.',
    descriptionMy:
        'ပုံပြင်ကို နားထောင်ပြီး၊ ကစားစရာကားကို ခံနိုင်ခဲ့သည့် တံတားကို ရွေးပါ။',
    starsReward: 8,
    emoji: '🌉',
    passageEn:
        'Su Su builds two bridges. The paper bridge bends and breaks under the toy car. The wooden bridge stays strong and the car crosses safely.',
    passageMy:
        'စုစုသည် တံတားနှစ်စင်းကို တည်ဆောက်သည်။ စက္ကူတံတားသည် ကစားစရာကားအောက်တွင် ကွေး၍ ကျိုးသွားသည်။ သစ်သားတံတားမှာမူ ခိုင်မာစွာ တည်ရှိနေပြီး ကားသည် ဘေးမဲ့စွာ ဖြတ်ကျော်နိုင်သည်။',
    questionEn: 'Which bridge stayed strong?',
    questionMy: 'မည်သည့် တံတားက ခိုင်မာစွာ တည်ရှိနေခဲ့သနည်း။',
    choices: [
      ListeningChoice(
        id: 'wooden-bridge',
        emoji: '🪵',
        colorValue: 0xFF8B5E3C,
        labelEn: 'The wooden bridge',
        labelMy: 'သစ်သားတံတား',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'paper-bridge',
        emoji: '📄',
        colorValue: 0xFFFFFFFF,
        labelEn: 'The paper bridge',
        labelMy: 'စက္ကူတံတား',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-nursery-listening-history-1',
    subject: 'history',
    grade: Grade.nursery,
    titleEn: "Grandma's Old Phone",
    titleMy: 'အဖွားရဲ့ ဟောင်းနွမ်းသော ဖုန်း',
    descriptionEn: 'Listen to the story, then pick which phone is old.',
    descriptionMy: 'ပုံပြင်ကို နားထောင်ပြီး၊ ဟောင်းနွမ်းသော ဖုန်းကို ရွေးပါ။',
    starsReward: 7,
    emoji: '👵',
    passageEn:
        'Grandma shows her grandson a big, heavy phone with a spinning dial. It is very old. His phone today is small and flat.',
    passageMy:
        'အဖွားသည် သူ့မြေးကို လှည့်ဒယ်ယာဆင့်ရှိသော ကြီးလေးလံသည့် ဖုန်းဟောင်းတစ်လုံးကို ပြသည်။ ၎င်းသည် အလွန်ဟောင်းနွမ်းသည်။ မြေး၏ ယနေ့ဖုန်းမှာမူ သေးငယ်ပြီး ပြားညီနေသည်။',
    questionEn: 'Whose phone was old?',
    questionMy: 'မည်သူ၏ ဖုန်းသည် ဟောင်းနွမ်းသနည်း။',
    choices: [
      ListeningChoice(
        id: 'grandma',
        emoji: '👵',
        colorValue: 0xFF9C6ADE,
        labelEn: "Grandma's phone",
        labelMy: 'အဖွားရဲ့ဖုန်း',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'grandson',
        emoji: '👦',
        colorValue: 0xFF4CB6FF,
        labelEn: 'His phone',
        labelMy: 'မြေးရဲ့ဖုန်း',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-kg-listening-history-1',
    subject: 'history',
    grade: Grade.kg,
    titleEn: 'How Grandpa Traveled Long Ago',
    titleMy: 'လွန်ခဲ့သောနှစ်များက အဖိုးခရီးသွားပုံ',
    descriptionEn:
        'Listen to the story, then pick how Grandpa traveled long ago.',
    descriptionMy:
        'ပုံပြင်ကို နားထောင်ပြီး၊ လွန်ခဲ့သောနှစ်များက အဖိုးခရီးသွားပုံကို ရွေးပါ။',
    starsReward: 9,
    emoji: '🐴',
    passageEn:
        'Long, long ago, before cars were common, Grandpa rode a horse to visit his friends. Today, his grandson rides in a fast car instead.',
    passageMy:
        'အလွန်ကြာမြင့်ခဲ့သော အတိတ်ကာလက၊ ကားများ ရှားပါးသေးစဉ်တွင် အဖိုးသည် သူငယ်ချင်းများထံ လည်ပတ်ရန် မြင်းစီးသွားခဲ့သည်။ ယနေ့တွင်မူ သူ၏မြေးသည် အမြန်ကားဖြင့် စီးသွားသည်။',
    questionEn: 'How did Grandpa travel long ago?',
    questionMy: 'လွန်ခဲ့သောနှစ်များက အဖိုးသည် မည်သို့ ခရီးသွားခဲ့သနည်း။',
    choices: [
      ListeningChoice(
        id: 'horse',
        emoji: '🐴',
        colorValue: 0xFF8B5E3C,
        labelEn: 'On a horse',
        labelMy: 'မြင်းစီး၍',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'car',
        emoji: '🚗',
        colorValue: 0xFF4CB6FF,
        labelEn: 'In a car',
        labelMy: 'ကားစီး၍',
        isCorrect: false,
      ),
      ListeningChoice(
        id: 'plane',
        emoji: '✈️',
        colorValue: 0xFF9C6ADE,
        labelEn: 'On a plane',
        labelMy: 'လေယာဉ်စီး၍',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-nursery-listening-geography-1',
    subject: 'geography',
    grade: Grade.nursery,
    titleEn: 'Tall Mountain, Big Ocean',
    titleMy: 'မြင့်မားသောတောင်၊ ကျယ်ပြန့်သော သမုဒ္ဒရာ',
    descriptionEn: 'Listen to the story, then pick where the boat sailed.',
    descriptionMy:
        'ပုံပြင်ကို နားထောင်ပြီး၊ လှေရွက်လွှင့်ခဲ့သည့်နေရာကို ရွေးပါ။',
    starsReward: 6,
    emoji: '🌊',
    passageEn:
        'A tall mountain touches the clouds. Far away, a big blue ocean has a little boat sailing on top of the waves.',
    passageMy:
        'မြင့်မားသောတောင်တစ်လုံးသည် တိမ်တိုက်များကို ထိနေသည်။ အဝေးတွင် ကျယ်ပြန့်သော အပြာရောင် သမုဒ္ဒရာကြီးပေါ်တွင် လှေငယ်တစ်စင်း လှိုင်းလုံးများပေါ်၌ ရွက်လွှင့်နေသည်။',
    questionEn: 'Where did the little boat sail?',
    questionMy: 'လှေငယ်သည် မည်သည့်နေရာတွင် ရွက်လွှင့်ခဲ့သနည်း။',
    choices: [
      ListeningChoice(
        id: 'ocean',
        emoji: '🌊',
        colorValue: 0xFF4CB6FF,
        labelEn: 'On the ocean',
        labelMy: 'သမုဒ္ဒရာပေါ်တွင်',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'mountain',
        emoji: '⛰️',
        colorValue: 0xFF8B5E3C,
        labelEn: 'On the mountain',
        labelMy: 'တောင်ပေါ်တွင်',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-kg-listening-geography-1',
    subject: 'geography',
    grade: Grade.kg,
    titleEn: 'Finding My Country on the Map',
    titleMy: 'မြေပုံပေါ်တွင် ငါ့နိုင်ငံကို ရှာဖွေခြင်း',
    descriptionEn:
        'Listen to the story, then pick what Aye Aye found on the map.',
    descriptionMy:
        'ပုံပြင်ကို နားထောင်ပြီး၊ အေးအေး မြေပုံပေါ်တွင် တွေ့ခဲ့သည့်အရာကို ရွေးပါ။',
    starsReward: 8,
    emoji: '🗺️',
    passageEn:
        'Aye Aye looks at a big map on the wall. She finds a green shape that is her own country, sitting between a river and the sea.',
    passageMy:
        'အေးအေးသည် နံရံပေါ်ရှိ မြေပုံကြီးကို ကြည့်နေသည်။ သူသည် မြစ်နှင့် ပင်လယ်စပ်ကြားတွင် တည်ရှိသော အစိမ်းရောင် ပုံသဏ္ဌာန်တစ်ခုကို တွေ့ရှိသည်။ ၎င်းသည် သူမ၏ ကိုယ်ပိုင်နိုင်ငံ ဖြစ်သည်။',
    questionEn: 'What did Aye Aye find on the map?',
    questionMy: 'အေးအေးသည် မြေပုံပေါ်တွင် ဘာကို တွေ့ခဲ့သနည်း။',
    choices: [
      ListeningChoice(
        id: 'her-country',
        emoji: '🗺️',
        colorValue: 0xFF4CB963,
        labelEn: 'Her own country',
        labelMy: 'သူမ၏ ကိုယ်ပိုင်နိုင်ငံ',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'a-mountain',
        emoji: '⛰️',
        colorValue: 0xFF8B5E3C,
        labelEn: 'A mountain',
        labelMy: 'တောင်',
        isCorrect: false,
      ),
      ListeningChoice(
        id: 'a-star',
        emoji: '⭐',
        colorValue: 0xFFFFC93C,
        labelEn: 'A star',
        labelMy: 'ကြယ်',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-nursery-listening-computing-1',
    subject: 'computing',
    grade: Grade.nursery,
    titleEn: 'Turning On the Tablet',
    titleMy: 'တက်ဘလက်ကို ဖွင့်ခြင်း',
    descriptionEn: 'Listen to the story, then pick what lit up.',
    descriptionMy: 'ပုံပြင်ကို နားထောင်ပြီး၊ အလင်းရောင်ပြခဲ့သည့်အရာကို ရွေးပါ။',
    starsReward: 7,
    emoji: '📱',
    passageEn:
        'Zin presses the round button on the tablet. Beep! The screen lights up with bright colors.',
    passageMy:
        'ဇင်သည် တက်ဘလက်ပေါ်ရှိ လုံးဝိုင်းခလုတ်ကို နှိပ်လိုက်သည်။ ဘီ့! မျက်နှာပြင်သည် တောက်ပသောအရောင်များဖြင့် လင်းလာသည်။',
    questionEn: 'What lit up with bright colors?',
    questionMy: 'ဘာက လင်းလာပြီး တောက်ပသောအရောင်များ ပြသနည်း။',
    choices: [
      ListeningChoice(
        id: 'screen',
        emoji: '📱',
        colorValue: 0xFF4CB6FF,
        labelEn: 'The screen',
        labelMy: 'မျက်နှာပြင်',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'button',
        emoji: '🔘',
        colorValue: 0xFF8C8C8C,
        labelEn: 'The button',
        labelMy: 'ခလုတ်',
        isCorrect: false,
      ),
    ],
  ),
  NurseryListeningDef(
    id: 'mock-kg-listening-computing-1',
    subject: 'computing',
    grade: Grade.kg,
    titleEn: 'Drawing a Sun on the Tablet',
    titleMy: 'တက်ဘလက်ပေါ်တွင် နေကို ရေးဆွဲခြင်း',
    descriptionEn: 'Listen to the story, then pick what Htet drew.',
    descriptionMy: 'ပုံပြင်ကို နားထောင်ပြီး၊ ထက်ရေးဆွဲခဲ့သည့်အရာကို ရွေးပါ။',
    starsReward: 10,
    emoji: '🖍️',
    passageEn:
        'Htet taps the yellow color, then drags his finger in a circle on the drawing app. A bright yellow sun appears on the screen.',
    passageMy:
        'ထက်သည် အဝါရောင်ကို နှိပ်ပြီး ရေးဆွဲမှုအက်ပ်ပေါ်တွင် လက်ချောင်းဖြင့် စက်ဝိုင်းပုံဆွဲလိုက်သည်။ တောက်ပသော အဝါရောင်နေတစ်လုံး မျက်နှာပြင်ပေါ်တွင် ပေါ်လာသည်။',
    questionEn: 'What did Htet draw on the tablet?',
    questionMy: 'ထက်သည် တက်ဘလက်ပေါ်တွင် ဘာကို ရေးဆွဲခဲ့သနည်း။',
    choices: [
      ListeningChoice(
        id: 'sun',
        emoji: '☀️',
        colorValue: 0xFFFFC93C,
        labelEn: 'A yellow sun',
        labelMy: 'အဝါရောင်နေ',
        isCorrect: true,
      ),
      ListeningChoice(
        id: 'moon',
        emoji: '🌙',
        colorValue: 0xFF7271F7,
        labelEn: 'A blue moon',
        labelMy: 'အပြာရောင်လ',
        isCorrect: false,
      ),
      ListeningChoice(
        id: 'star',
        emoji: '⭐',
        colorValue: 0xFF9C6ADE,
        labelEn: 'A purple star',
        labelMy: 'ခရမ်းရောင်ကြယ်',
        isCorrect: false,
      ),
    ],
  ),
];
