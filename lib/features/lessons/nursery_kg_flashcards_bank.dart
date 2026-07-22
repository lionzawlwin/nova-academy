import '../../models/child_model.dart';
import 'nursery_activity_kind.dart';

/// One two-sided digital flashcard. The front always shows the label in
/// whichever language the app is currently displaying; tapping flips to
/// reveal the *other* language's word -- so the same deck doubles as an
/// English-to-Burmese (or Burmese-to-English) vocabulary drill depending on
/// which language the child is browsing in, without needing two separate
/// decks.
class FlashcardItem {
  const FlashcardItem({
    required this.id,
    required this.emoji,
    required this.colorValue,
    required this.labelEn,
    required this.labelMy,
  });

  final String id;
  final String emoji;
  final int colorValue;
  final String labelEn;
  final String labelMy;

  String frontLabel(String languageCode) =>
      languageCode == 'my' ? labelMy : labelEn;
  String backLabel(String languageCode) =>
      languageCode == 'my' ? labelEn : labelMy;
}

class NurseryFlashcardsDef {
  const NurseryFlashcardsDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.emoji,
    required this.cards,
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
  final List<FlashcardItem> cards;

  static const kind = NurseryActivityKind.flashcards;
}

const List<FlashcardItem> fallbackFlashcards = [
  FlashcardItem(
    id: 'colour-red',
    emoji: '🔴',
    colorValue: 0xFFE64545,
    labelEn: 'Red',
    labelMy: 'အနီရောင်',
  ),
  FlashcardItem(
    id: 'colour-blue',
    emoji: '🔵',
    colorValue: 0xFF4CB6FF,
    labelEn: 'Blue',
    labelMy: 'အပြာရောင်',
  ),
  FlashcardItem(
    id: 'colour-yellow',
    emoji: '🟡',
    colorValue: 0xFFFFC93C,
    labelEn: 'Yellow',
    labelMy: 'အဝါရောင်',
  ),
];

NurseryFlashcardsDef? flashcardsDefForModule(String moduleId) {
  for (final def in nurseryKgFlashcardsBank) {
    if (def.id == moduleId) return def;
  }
  return null;
}

const List<NurseryFlashcardsDef> nurseryKgFlashcardsBank = [
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-numbers-1',
    subject: 'math',
    grade: Grade.nursery,
    titleEn: 'Numbers 1-6',
    titleMy: 'ဂဏန်း ၁ မှ ၆',
    descriptionEn: 'Flip through flashcards to learn numbers one to six.',
    descriptionMy: 'ဂဏန်း တစ်မှ ခြောက်အထိ သင်ယူရန် ကတ်များကို လှန်ကြည့်ပါ။',
    starsReward: 6,
    emoji: '🔢',
    cards: [
      FlashcardItem(
        id: 'num-1',
        emoji: '1️⃣',
        colorValue: 0xFFFF7F91,
        labelEn: 'One',
        labelMy: 'တစ်',
      ),
      FlashcardItem(
        id: 'num-2',
        emoji: '2️⃣',
        colorValue: 0xFF7271F7,
        labelEn: 'Two',
        labelMy: 'နှစ်',
      ),
      FlashcardItem(
        id: 'num-3',
        emoji: '3️⃣',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Three',
        labelMy: 'သုံး',
      ),
      FlashcardItem(
        id: 'num-4',
        emoji: '4️⃣',
        colorValue: 0xFF4CB963,
        labelEn: 'Four',
        labelMy: 'လေး',
      ),
      FlashcardItem(
        id: 'num-5',
        emoji: '5️⃣',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Five',
        labelMy: 'ငါး',
      ),
      FlashcardItem(
        id: 'num-6',
        emoji: '6️⃣',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Six',
        labelMy: 'ခြောက်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-phonics-1',
    subject: 'phonics',
    grade: Grade.nursery,
    titleEn: 'My First Words',
    titleMy: 'ပထမဆုံး စကားလုံးများ',
    descriptionEn: 'Flip through flashcards of everyday first words.',
    descriptionMy:
        'နေ့စဉ် အသုံးများသော စကားလုံးများကို ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 6,
    emoji: '📖',
    cards: [
      FlashcardItem(
        id: 'word-mum',
        emoji: '👩',
        colorValue: 0xFFFF7F91,
        labelEn: 'Mum',
        labelMy: 'အမေ',
      ),
      FlashcardItem(
        id: 'word-dad',
        emoji: '👨',
        colorValue: 0xFF7271F7,
        labelEn: 'Dad',
        labelMy: 'အဖေ',
      ),
      FlashcardItem(
        id: 'word-water',
        emoji: '💧',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Water',
        labelMy: 'ရေ',
      ),
      FlashcardItem(
        id: 'word-milk',
        emoji: '🥛',
        colorValue: 0xFFFFFFFF,
        labelEn: 'Milk',
        labelMy: 'နို့',
      ),
      FlashcardItem(
        id: 'word-book',
        emoji: '📕',
        colorValue: 0xFFE64545,
        labelEn: 'Book',
        labelMy: 'စာအုပ်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-numbers-1',
    subject: 'math',
    grade: Grade.kg,
    titleEn: 'Numbers 1-10',
    titleMy: 'ဂဏန်း ၁ မှ ၁၀',
    descriptionEn: 'Flip through flashcards to learn numbers one to ten.',
    descriptionMy: 'ဂဏန်း တစ်မှ ဆယ်အထိ သင်ယူရန် ကတ်များကို လှန်ကြည့်ပါ။',
    starsReward: 8,
    emoji: '🔢',
    cards: [
      FlashcardItem(
        id: 'num-1',
        emoji: '1️⃣',
        colorValue: 0xFFFF7F91,
        labelEn: 'One',
        labelMy: 'တစ်',
      ),
      FlashcardItem(
        id: 'num-2',
        emoji: '2️⃣',
        colorValue: 0xFF7271F7,
        labelEn: 'Two',
        labelMy: 'နှစ်',
      ),
      FlashcardItem(
        id: 'num-3',
        emoji: '3️⃣',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Three',
        labelMy: 'သုံး',
      ),
      FlashcardItem(
        id: 'num-4',
        emoji: '4️⃣',
        colorValue: 0xFF4CB963,
        labelEn: 'Four',
        labelMy: 'လေး',
      ),
      FlashcardItem(
        id: 'num-5',
        emoji: '5️⃣',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Five',
        labelMy: 'ငါး',
      ),
      FlashcardItem(
        id: 'num-6',
        emoji: '6️⃣',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Six',
        labelMy: 'ခြောက်',
      ),
      FlashcardItem(
        id: 'num-7',
        emoji: '7️⃣',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Seven',
        labelMy: 'ခုနစ်',
      ),
      FlashcardItem(
        id: 'num-8',
        emoji: '8️⃣',
        colorValue: 0xFFB5734A,
        labelEn: 'Eight',
        labelMy: 'ရှစ်',
      ),
      FlashcardItem(
        id: 'num-9',
        emoji: '9️⃣',
        colorValue: 0xFFE64545,
        labelEn: 'Nine',
        labelMy: 'ကိုး',
      ),
      FlashcardItem(
        id: 'num-10',
        emoji: '🔟',
        colorValue: 0xFF4CB963,
        labelEn: 'Ten',
        labelMy: 'ဆယ်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-phonics-1',
    subject: 'phonics',
    grade: Grade.kg,
    titleEn: 'Action Words',
    titleMy: 'လုပ်ဆောင်ချက် စကားလုံးများ',
    descriptionEn: 'Flip through flashcards of simple action words.',
    descriptionMy:
        'ရိုးရှင်းသော လုပ်ဆောင်ချက် စကားလုံးများကို ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 8,
    emoji: '🏃',
    cards: [
      FlashcardItem(
        id: 'action-run',
        emoji: '🏃',
        colorValue: 0xFFFF7F91,
        labelEn: 'Run',
        labelMy: 'ပြေး',
      ),
      FlashcardItem(
        id: 'action-jump',
        emoji: '🤸',
        colorValue: 0xFF7271F7,
        labelEn: 'Jump',
        labelMy: 'ခုန်',
      ),
      FlashcardItem(
        id: 'action-eat',
        emoji: '🍽️',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Eat',
        labelMy: 'စား',
      ),
      FlashcardItem(
        id: 'action-sleep',
        emoji: '😴',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Sleep',
        labelMy: 'အိပ်',
      ),
      FlashcardItem(
        id: 'action-sing',
        emoji: '🎤',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Sing',
        labelMy: 'သီချင်းဆို',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-stem-1',
    subject: 'stem',
    grade: Grade.nursery,
    titleEn: 'My Five Senses',
    titleMy: 'ကျွန်ုပ်၏ အာရုံငါးပါး',
    descriptionEn: 'Flip through flashcards to learn about your five senses.',
    descriptionMy:
        'သင့်ရဲ့ အာရုံငါးပါးအကြောင်း လေ့လာရန် ကတ်များကို လှန်ကြည့်ပါ။',
    starsReward: 6,
    emoji: '🔬',
    cards: [
      FlashcardItem(
        id: 'sense-see',
        emoji: '👀',
        colorValue: 0xFFFF7F91,
        labelEn: 'See',
        labelMy: 'မြင်',
      ),
      FlashcardItem(
        id: 'sense-hear',
        emoji: '👂',
        colorValue: 0xFF7271F7,
        labelEn: 'Hear',
        labelMy: 'ကြား',
      ),
      FlashcardItem(
        id: 'sense-smell',
        emoji: '👃',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Smell',
        labelMy: 'နံ့ခံ',
      ),
      FlashcardItem(
        id: 'sense-taste',
        emoji: '👅',
        colorValue: 0xFF4CB963,
        labelEn: 'Taste',
        labelMy: 'မြည်းစမ်း',
      ),
      FlashcardItem(
        id: 'sense-touch',
        emoji: '✋',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Touch',
        labelMy: 'တို့ထိ',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-stem-1',
    subject: 'stem',
    grade: Grade.kg,
    titleEn: 'Floating or Sinking',
    titleMy: 'ပေါ်နေသလား နစ်နေသလား',
    descriptionEn:
        'Flip through flashcards to see if things float or sink in water.',
    descriptionMy:
        'အရာဝတ္ထုများသည် ရေပေါ်တွင် ပေါ်နေသလား နစ်နေသလားကို ကတ်များလှန်ပြီး '
        'လေ့လာပါ။',
    starsReward: 9,
    emoji: '🌊',
    cards: [
      FlashcardItem(
        id: 'float-boat',
        emoji: '⛵',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Boat Floats',
        labelMy: 'ဘောတ်ပေါ်သည်',
      ),
      FlashcardItem(
        id: 'float-stone',
        emoji: '🪨',
        colorValue: 0xFFB5734A,
        labelEn: 'Stone Sinks',
        labelMy: 'ကျောက်ခဲနစ်သည်',
      ),
      FlashcardItem(
        id: 'float-duck',
        emoji: '🦆',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Duck Floats',
        labelMy: 'ဘဲပေါ်သည်',
      ),
      FlashcardItem(
        id: 'float-key',
        emoji: '🔑',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Key Sinks',
        labelMy: 'သော့နစ်သည်',
      ),
      FlashcardItem(
        id: 'float-leaf',
        emoji: '🍃',
        colorValue: 0xFF4CB963,
        labelEn: 'Leaf Floats',
        labelMy: 'အရွက်ပေါ်သည်',
      ),
      FlashcardItem(
        id: 'float-coin',
        emoji: '🪙',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Coin Sinks',
        labelMy: 'ဒင်္ဂါးပြားနစ်သည်',
      ),
      FlashcardItem(
        id: 'float-apple',
        emoji: '🍎',
        colorValue: 0xFFE64545,
        labelEn: 'Apple Floats',
        labelMy: 'ပန်းသီးပေါ်သည်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-coding-1',
    subject: 'coding',
    grade: Grade.nursery,
    titleEn: 'My Morning Steps',
    titleMy: 'မနက်ခင်း အဆင့်များ',
    descriptionEn:
        'Flip through flashcards to learn the order of steps, just like a '
        'computer follows steps.',
    descriptionMy:
        'ကွန်ပျူတာတစ်လုံးက အဆင့်ဆင့် လိုက်လုပ်သလိုပဲ၊ မနက်ခင်း '
        'လုပ်ငန်းစဉ်များ၏ အစီအစဉ်ကို ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 6,
    emoji: '🤖',
    cards: [
      FlashcardItem(
        id: 'morning-wake',
        emoji: '⏰',
        colorValue: 0xFFFF7F91,
        labelEn: 'Wake Up',
        labelMy: 'အိပ်ရာနိုး',
      ),
      FlashcardItem(
        id: 'morning-brush',
        emoji: '🪥',
        colorValue: 0xFF7271F7,
        labelEn: 'Brush Teeth',
        labelMy: 'သွားတိုက်',
      ),
      FlashcardItem(
        id: 'morning-eat',
        emoji: '🍳',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Eat Breakfast',
        labelMy: 'မနက်စာစား',
      ),
      FlashcardItem(
        id: 'morning-dress',
        emoji: '👕',
        colorValue: 0xFF4CB963,
        labelEn: 'Get Dressed',
        labelMy: 'အဝတ်လဲ',
      ),
      FlashcardItem(
        id: 'morning-school',
        emoji: '🎒',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Go to School',
        labelMy: 'ကျောင်းသွား',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-coding-1',
    subject: 'coding',
    grade: Grade.kg,
    titleEn: 'Robot Directions',
    titleMy: 'ရိုဘော့ ညွှန်ကြားချက်များ',
    descriptionEn:
        'Flip through flashcards to learn the simple commands that tell a '
        'robot what to do.',
    descriptionMy:
        'ရိုဘော့ကို ဘာလုပ်ရမည်ကို ပြောပြပေးသော ရိုးရှင်းသည့် '
        'ညွှန်ကြားချက်များကို ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 9,
    emoji: '🤖',
    cards: [
      FlashcardItem(
        id: 'robot-forward',
        emoji: '⬆️',
        colorValue: 0xFFFF7F91,
        labelEn: 'Forward',
        labelMy: 'ရှေ့သွား',
      ),
      FlashcardItem(
        id: 'robot-backward',
        emoji: '⬇️',
        colorValue: 0xFF7271F7,
        labelEn: 'Backward',
        labelMy: 'နောက်ဆုတ်',
      ),
      FlashcardItem(
        id: 'robot-left',
        emoji: '⬅️',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Turn Left',
        labelMy: 'ဘယ်ကွေ့',
      ),
      FlashcardItem(
        id: 'robot-right',
        emoji: '➡️',
        colorValue: 0xFF4CB963,
        labelEn: 'Turn Right',
        labelMy: 'ညာကွေ့',
      ),
      FlashcardItem(
        id: 'robot-stop',
        emoji: '✋',
        colorValue: 0xFFE64545,
        labelEn: 'Stop',
        labelMy: 'ရပ်',
      ),
      FlashcardItem(
        id: 'robot-start',
        emoji: '▶️',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Start',
        labelMy: 'စတင်',
      ),
      FlashcardItem(
        id: 'robot-repeat',
        emoji: '🔁',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Repeat',
        labelMy: 'ထပ်လုပ်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-engineering-1',
    subject: 'engineering',
    grade: Grade.nursery,
    titleEn: 'Building Things',
    titleMy: 'အရာများ တည်ဆောက်ခြင်း',
    descriptionEn:
        'Flip through flashcards about the tools and things we use to '
        'build.',
    descriptionMy:
        'အဆောက်အအုံများ တည်ဆောက်ရာတွင် အသုံးပြုသော ကိရိယာများနှင့် '
        'ပစ္စည်းများကို ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 6,
    emoji: '🏗️',
    cards: [
      FlashcardItem(
        id: 'build-blocks',
        emoji: '🧱',
        colorValue: 0xFFFF7F91,
        labelEn: 'Blocks',
        labelMy: 'အုတ်ခဲ',
      ),
      FlashcardItem(
        id: 'build-hammer',
        emoji: '🔨',
        colorValue: 0xFF7271F7,
        labelEn: 'Hammer',
        labelMy: 'တူ',
      ),
      FlashcardItem(
        id: 'build-ladder',
        emoji: '🪜',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Ladder',
        labelMy: 'လှေကား',
      ),
      FlashcardItem(
        id: 'build-bridge',
        emoji: '🌉',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Bridge',
        labelMy: 'တံတား',
      ),
      FlashcardItem(
        id: 'build-house',
        emoji: '🏠',
        colorValue: 0xFF4CB963,
        labelEn: 'House',
        labelMy: 'အိမ်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-engineering-1',
    subject: 'engineering',
    grade: Grade.kg,
    titleEn: 'How We Build',
    titleMy: 'ဘယ်လို တည်ဆောက်မလဲ',
    descriptionEn:
        'Flip through flashcards to learn the steps engineers follow to '
        'build something new.',
    descriptionMy:
        'အင်ဂျင်နီယာများသည် အရာသစ်တစ်ခုကို တည်ဆောက်ရန် လိုက်နာသော '
        'အဆင့်များကို ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 9,
    emoji: '🔧',
    cards: [
      FlashcardItem(
        id: 'engineer-idea',
        emoji: '💡',
        colorValue: 0xFFFFC93C,
        labelEn: 'Get an Idea',
        labelMy: 'စိတ်ကူးရှာ',
      ),
      FlashcardItem(
        id: 'engineer-plan',
        emoji: '✏️',
        colorValue: 0xFF7271F7,
        labelEn: 'Draw a Plan',
        labelMy: 'ပုံစံဆွဲ',
      ),
      FlashcardItem(
        id: 'engineer-build',
        emoji: '🧱',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Build It',
        labelMy: 'တည်ဆောက်',
      ),
      FlashcardItem(
        id: 'engineer-test',
        emoji: '🔍',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Test It',
        labelMy: 'စမ်းသပ်',
      ),
      FlashcardItem(
        id: 'engineer-fix',
        emoji: '🔧',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Fix It',
        labelMy: 'ပြင်ဆင်',
      ),
      FlashcardItem(
        id: 'engineer-done',
        emoji: '🎉',
        colorValue: 0xFF4CB963,
        labelEn: 'All Done!',
        labelMy: 'ပြီးပြီ',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-history-1',
    subject: 'history',
    grade: Grade.nursery,
    titleEn: 'Young and Old',
    titleMy: 'ငယ်သူနှင့် အကြီး',
    descriptionEn:
        'Flip through flashcards to learn about family members, from '
        'young to old.',
    descriptionMy:
        'ငယ်ရွယ်စဉ်မှ အသက်ကြီးလာသည့်အထိ မိသားစုဝင်များအကြောင်း ကတ်များလှန်ပြီး '
        'လေ့လာပါ။',
    starsReward: 6,
    emoji: '🕰️',
    cards: [
      FlashcardItem(
        id: 'family-baby',
        emoji: '👶',
        colorValue: 0xFFFF7F91,
        labelEn: 'Baby',
        labelMy: 'ကလေးငယ်',
      ),
      FlashcardItem(
        id: 'family-me',
        emoji: '🧒',
        colorValue: 0xFF7271F7,
        labelEn: 'Me',
        labelMy: 'ကျွန်ုပ်',
      ),
      FlashcardItem(
        id: 'family-mum',
        emoji: '👩',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Mum',
        labelMy: 'အမေ',
      ),
      FlashcardItem(
        id: 'family-dad',
        emoji: '👨',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Dad',
        labelMy: 'အဖေ',
      ),
      FlashcardItem(
        id: 'family-grandma',
        emoji: '👵',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Grandma',
        labelMy: 'အဘွား',
      ),
      FlashcardItem(
        id: 'family-grandpa',
        emoji: '👴',
        colorValue: 0xFFB5734A,
        labelEn: 'Grandpa',
        labelMy: 'အဘိုး',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-history-1',
    subject: 'history',
    grade: Grade.kg,
    titleEn: 'Long Ago and Today',
    titleMy: 'ရှေးရှေးကနှင့် ယနေ့',
    descriptionEn:
        'Flip through flashcards to compare things people used long ago '
        'with things we use today.',
    descriptionMy:
        'ရှေးရှေးက လူများသုံးခဲ့သည့်အရာများနှင့် ယနေ့ ကျွန်ုပ်တို့သုံးနေသည့် '
        'အရာများကို နှိုင်းယှဉ်ကြည့်ရန် ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 9,
    emoji: '🕰️',
    cards: [
      FlashcardItem(
        id: 'oldnew-letter',
        emoji: '✉️',
        colorValue: 0xFFFF7F91,
        labelEn: 'Letter',
        labelMy: 'စာ',
      ),
      FlashcardItem(
        id: 'oldnew-phone',
        emoji: '📱',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Phone',
        labelMy: 'ဖုန်း',
      ),
      FlashcardItem(
        id: 'oldnew-candle',
        emoji: '🕯️',
        colorValue: 0xFFB5734A,
        labelEn: 'Candle',
        labelMy: 'ဖယောင်းတိုင်',
      ),
      FlashcardItem(
        id: 'oldnew-lightbulb',
        emoji: '💡',
        colorValue: 0xFFFFC93C,
        labelEn: 'Lightbulb',
        labelMy: 'မီးလုံး',
      ),
      FlashcardItem(
        id: 'oldnew-horse',
        emoji: '🐴',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Horse',
        labelMy: 'မြင်း',
      ),
      FlashcardItem(
        id: 'oldnew-car',
        emoji: '🚗',
        colorValue: 0xFF4CB963,
        labelEn: 'Car',
        labelMy: 'ကား',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-geography-1',
    subject: 'geography',
    grade: Grade.nursery,
    titleEn: 'Our Big World',
    titleMy: 'ကျွန်ုပ်တို့၏ ကမ္ဘာကြီး',
    descriptionEn:
        'Flip through flashcards to learn about mountains, oceans, and '
        'other places in the world.',
    descriptionMy:
        'တောင်၊ သမုဒ္ဒရာနှင့် ကမ္ဘာပေါ်ရှိ အခြားနေရာများအကြောင်း '
        'ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 6,
    emoji: '🌍',
    cards: [
      FlashcardItem(
        id: 'world-mountain',
        emoji: '⛰️',
        colorValue: 0xFFB5734A,
        labelEn: 'Mountain',
        labelMy: 'တောင်',
      ),
      FlashcardItem(
        id: 'world-ocean',
        emoji: '🌊',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Ocean',
        labelMy: 'သမုဒ္ဒရာ',
      ),
      FlashcardItem(
        id: 'world-forest',
        emoji: '🌳',
        colorValue: 0xFF4CB963,
        labelEn: 'Forest',
        labelMy: 'သစ်တော',
      ),
      FlashcardItem(
        id: 'world-desert',
        emoji: '🏜️',
        colorValue: 0xFFFFC93C,
        labelEn: 'Desert',
        labelMy: 'သဲကန္တာရ',
      ),
      FlashcardItem(
        id: 'world-island',
        emoji: '🏝️',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Island',
        labelMy: 'ကျွန်း',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-geography-1',
    subject: 'geography',
    grade: Grade.kg,
    titleEn: 'Around My Country',
    titleMy: 'ကျွန်ုပ်တို့ နိုင်ငံ ပတ်ဝန်းကျင်',
    descriptionEn:
        'Flip through flashcards to learn about maps, flags, and the '
        'places where people live.',
    descriptionMy:
        'မြေပုံများ၊ အလံများနှင့် လူများနေထိုင်ရာနေရာများအကြောင်း '
        'ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 9,
    emoji: '🗺️',
    cards: [
      FlashcardItem(
        id: 'geo-map',
        emoji: '🗺️',
        colorValue: 0xFFFF7F91,
        labelEn: 'Map',
        labelMy: 'မြေပုံ',
      ),
      FlashcardItem(
        id: 'geo-globe',
        emoji: '🌍',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Globe',
        labelMy: 'ကမ္ဘာလုံး',
      ),
      FlashcardItem(
        id: 'geo-flag',
        emoji: '🇲🇲',
        colorValue: 0xFFE64545,
        labelEn: 'Flag',
        labelMy: 'အလံ',
      ),
      FlashcardItem(
        id: 'geo-city',
        emoji: '🏙️',
        colorValue: 0xFF9C6ADE,
        labelEn: 'City',
        labelMy: 'မြို့ကြီး',
      ),
      FlashcardItem(
        id: 'geo-village',
        emoji: '🏘️',
        colorValue: 0xFF4CB963,
        labelEn: 'Village',
        labelMy: 'ကျေးရွာ',
      ),
      FlashcardItem(
        id: 'geo-beach',
        emoji: '🏖️',
        colorValue: 0xFFFFC93C,
        labelEn: 'Beach',
        labelMy: 'ပင်လယ်ကမ်းခြေ',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-computing-1',
    subject: 'computing',
    grade: Grade.nursery,
    titleEn: 'Computer Parts',
    titleMy: 'ကွန်ပျူတာ အစိတ်အပိုင်းများ',
    descriptionEn:
        'Flip through flashcards to learn the names of computer parts.',
    descriptionMy:
        'ကွန်ပျူတာ အစိတ်အပိုင်းများ၏ အမည်များကို ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 6,
    emoji: '🖥️',
    cards: [
      FlashcardItem(
        id: 'parts-computer',
        emoji: '🖥️',
        colorValue: 0xFFFF7F91,
        labelEn: 'Computer',
        labelMy: 'ကွန်ပျူတာ',
      ),
      FlashcardItem(
        id: 'parts-mouse',
        emoji: '🖱️',
        colorValue: 0xFF7271F7,
        labelEn: 'Mouse',
        labelMy: 'မောက်စ်',
      ),
      FlashcardItem(
        id: 'parts-keyboard',
        emoji: '⌨️',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Keyboard',
        labelMy: 'ကီးဘုတ်',
      ),
      FlashcardItem(
        id: 'parts-tablet',
        emoji: '📱',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Tablet',
        labelMy: 'တက်ဘလက်',
      ),
      FlashcardItem(
        id: 'parts-printer',
        emoji: '🖨️',
        colorValue: 0xFF4CB963,
        labelEn: 'Printer',
        labelMy: 'ပရင့်တာ',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-computing-1',
    subject: 'computing',
    grade: Grade.kg,
    titleEn: 'Using a Device',
    titleMy: 'စက်ပစ္စည်း အသုံးပြုနည်း',
    descriptionEn:
        'Flip through flashcards to learn simple actions we use on '
        'computers and tablets.',
    descriptionMy:
        'ကွန်ပျူတာနှင့် တက်ဘလက်များတွင် အသုံးပြုသော ရိုးရှင်းသည့် '
        'လှုပ်ရှားမှုများကို ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 9,
    emoji: '💻',
    cards: [
      FlashcardItem(
        id: 'use-click',
        emoji: '🖱️',
        colorValue: 0xFFFF7F91,
        labelEn: 'Click',
        labelMy: 'နှိပ်',
      ),
      FlashcardItem(
        id: 'use-type',
        emoji: '⌨️',
        colorValue: 0xFF7271F7,
        labelEn: 'Type',
        labelMy: 'ရိုက်',
      ),
      FlashcardItem(
        id: 'use-tap',
        emoji: '👆',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Tap',
        labelMy: 'တို့',
      ),
      FlashcardItem(
        id: 'use-swipe',
        emoji: '👉',
        colorValue: 0xFF4CB963,
        labelEn: 'Swipe',
        labelMy: 'ပွတ်ဆွဲ',
      ),
      FlashcardItem(
        id: 'use-poweron',
        emoji: '🔌',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Turn On',
        labelMy: 'ဖွင့်',
      ),
      FlashcardItem(
        id: 'use-poweroff',
        emoji: '⏻',
        colorValue: 0xFFE64545,
        labelEn: 'Turn Off',
        labelMy: 'ပိတ်',
      ),
      FlashcardItem(
        id: 'use-charge',
        emoji: '🔋',
        colorValue: 0xFF4CB963,
        labelEn: 'Charge',
        labelMy: 'အားသွင်း',
      ),
    ],
  ),
];
