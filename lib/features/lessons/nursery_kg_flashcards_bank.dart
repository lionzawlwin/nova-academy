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
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-math-2',
    subject: 'math',
    grade: Grade.nursery,
    titleEn: 'My First Shapes',
    titleMy: 'ပထမဆုံး ပုံသဏ္ဍာန်များ',
    descriptionEn:
        'Flip through flashcards to learn simple shapes like circle and '
        'square.',
    descriptionMy:
        'စက်ဝိုင်းနှင့် စတုရမ်းကဲ့သို့ ရိုးရှင်းသော ပုံသဏ္ဍာန်များကို '
        'ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 6,
    emoji: '🔷',
    cards: [
      FlashcardItem(
        id: 'shape-circle',
        emoji: '🔵',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Circle',
        labelMy: 'စက်ဝိုင်း',
      ),
      FlashcardItem(
        id: 'shape-square',
        emoji: '🟧',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Square',
        labelMy: 'စတုရမ်း',
      ),
      FlashcardItem(
        id: 'shape-triangle',
        emoji: '🔺',
        colorValue: 0xFFE64545,
        labelEn: 'Triangle',
        labelMy: 'တြိဂံ',
      ),
      FlashcardItem(
        id: 'shape-star',
        emoji: '⭐',
        colorValue: 0xFFFFC93C,
        labelEn: 'Star',
        labelMy: 'ကြယ်',
      ),
      FlashcardItem(
        id: 'shape-heart',
        emoji: '❤️',
        colorValue: 0xFFFF7F91,
        labelEn: 'Heart',
        labelMy: 'နှလုံးပုံ',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-math-2',
    subject: 'math',
    grade: Grade.kg,
    titleEn: 'Shapes All Around',
    titleMy: 'ပတ်ဝန်းကျင်ရှိ ပုံသဏ္ဍာန်များ',
    descriptionEn:
        'Flip through flashcards to learn more shapes, including '
        'rectangles and ovals.',
    descriptionMy:
        'လေးထောင့်ပုံနှင့် ဥပုံအပါအဝင် ပုံသဏ္ဍာန် ပိုမိုများပြားစွာကို '
        'ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 9,
    emoji: '📐',
    cards: [
      FlashcardItem(
        id: 'shape2-circle',
        emoji: '🔵',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Circle',
        labelMy: 'စက်ဝိုင်း',
      ),
      FlashcardItem(
        id: 'shape2-square',
        emoji: '🟧',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Square',
        labelMy: 'စတုရမ်း',
      ),
      FlashcardItem(
        id: 'shape2-triangle',
        emoji: '🔺',
        colorValue: 0xFFE64545,
        labelEn: 'Triangle',
        labelMy: 'တြိဂံ',
      ),
      FlashcardItem(
        id: 'shape2-rectangle',
        emoji: '🚪',
        colorValue: 0xFFB5734A,
        labelEn: 'Rectangle',
        labelMy: 'အကွက်ရှည်',
      ),
      FlashcardItem(
        id: 'shape2-star',
        emoji: '⭐',
        colorValue: 0xFFFFC93C,
        labelEn: 'Star',
        labelMy: 'ကြယ်',
      ),
      FlashcardItem(
        id: 'shape2-oval',
        emoji: '🥚',
        colorValue: 0xFFFFFFFF,
        labelEn: 'Oval',
        labelMy: 'ဥပုံ',
      ),
      FlashcardItem(
        id: 'shape2-diamond',
        emoji: '🔶',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Diamond',
        labelMy: 'စိန်ပုံ',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-phonics-2',
    subject: 'phonics',
    grade: Grade.nursery,
    titleEn: 'My Animal Friends',
    titleMy: 'ကျွန်ုပ်၏ တိရစ္ဆာန်သူငယ်ချင်းများ',
    descriptionEn: 'Flip through flashcards to learn the names of animals.',
    descriptionMy: 'တိရစ္ဆာန်များ၏ အမည်များကို ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 6,
    emoji: '🐾',
    cards: [
      FlashcardItem(
        id: 'animal-cat',
        emoji: '🐱',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Cat',
        labelMy: 'ကြောင်',
      ),
      FlashcardItem(
        id: 'animal-dog',
        emoji: '🐶',
        colorValue: 0xFFB5734A,
        labelEn: 'Dog',
        labelMy: 'ခွေး',
      ),
      FlashcardItem(
        id: 'animal-cow',
        emoji: '🐄',
        colorValue: 0xFFFFFFFF,
        labelEn: 'Cow',
        labelMy: 'နွား',
      ),
      FlashcardItem(
        id: 'animal-duck',
        emoji: '🦆',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Duck',
        labelMy: 'ဘဲ',
      ),
      FlashcardItem(
        id: 'animal-bird',
        emoji: '🐦',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Bird',
        labelMy: 'ငှက်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-phonics-2',
    subject: 'phonics',
    grade: Grade.kg,
    titleEn: 'How I Feel',
    titleMy: 'ကျွန်ုပ်ခံစားချက်များ',
    descriptionEn:
        'Flip through flashcards to learn words for different feelings.',
    descriptionMy:
        'မတူညီသော ခံစားချက်များအတွက် စကားလုံးများကို ကတ်များလှန်ပြီး '
        'လေ့လာပါ။',
    starsReward: 8,
    emoji: '😊',
    cards: [
      FlashcardItem(
        id: 'feel-happy',
        emoji: '😄',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Happy',
        labelMy: 'ပျော်ရွှင်',
      ),
      FlashcardItem(
        id: 'feel-sad',
        emoji: '😢',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Sad',
        labelMy: 'ဝမ်းနည်း',
      ),
      FlashcardItem(
        id: 'feel-angry',
        emoji: '😠',
        colorValue: 0xFFE64545,
        labelEn: 'Angry',
        labelMy: 'စိတ်ဆိုး',
      ),
      FlashcardItem(
        id: 'feel-sleepy',
        emoji: '😴',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Sleepy',
        labelMy: 'အိပ်ချင်',
      ),
      FlashcardItem(
        id: 'feel-surprised',
        emoji: '😲',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Surprised',
        labelMy: 'အံ့ဩ',
      ),
      FlashcardItem(
        id: 'feel-excited',
        emoji: '🤩',
        colorValue: 0xFFFF7F91,
        labelEn: 'Excited',
        labelMy: 'စိတ်လှုပ်ရှား',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-stem-2',
    subject: 'stem',
    grade: Grade.nursery,
    titleEn: "What's the Weather?",
    titleMy: 'ရာသီဥတု ဘယ်လိုလဲ',
    descriptionEn:
        'Flip through flashcards to learn about different kinds of '
        'weather.',
    descriptionMy:
        'မတူညီသော ရာသီဥတုအမျိုးအစားများအကြောင်း ကတ်များလှန်ပြီး '
        'လေ့လာပါ။',
    starsReward: 6,
    emoji: '⛅',
    cards: [
      FlashcardItem(
        id: 'weather-sun',
        emoji: '☀️',
        colorValue: 0xFFFFC93C,
        labelEn: 'Sunny',
        labelMy: 'နေသာ',
      ),
      FlashcardItem(
        id: 'weather-rain',
        emoji: '🌧️',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Rainy',
        labelMy: 'မိုးရွာ',
      ),
      FlashcardItem(
        id: 'weather-cloud',
        emoji: '☁️',
        colorValue: 0xFFFFFFFF,
        labelEn: 'Cloudy',
        labelMy: 'တိမ်ထူ',
      ),
      FlashcardItem(
        id: 'weather-wind',
        emoji: '💨',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Windy',
        labelMy: 'လေတိုက်',
      ),
      FlashcardItem(
        id: 'weather-snow',
        emoji: '❄️',
        colorValue: 0xFF7271F7,
        labelEn: 'Snowy',
        labelMy: 'နှင်းကျ',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-stem-2',
    subject: 'stem',
    grade: Grade.kg,
    titleEn: 'How Plants Grow',
    titleMy: 'အပင်များ ဘယ်လိုကြီးထွားလဲ',
    descriptionEn:
        'Flip through flashcards to learn the steps a seed takes to grow '
        'into a plant.',
    descriptionMy:
        'မျိုးစေ့တစ်လုံးသည် အပင်တစ်ပင်အဖြစ် ကြီးထွားလာသည့် အဆင့်များကို '
        'ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 9,
    emoji: '🌱',
    cards: [
      FlashcardItem(
        id: 'grow-seed',
        emoji: '🌰',
        colorValue: 0xFFB5734A,
        labelEn: 'Seed',
        labelMy: 'မျိုးစေ့',
      ),
      FlashcardItem(
        id: 'grow-water',
        emoji: '💧',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Water',
        labelMy: 'ရေ',
      ),
      FlashcardItem(
        id: 'grow-sun',
        emoji: '☀️',
        colorValue: 0xFFFFC93C,
        labelEn: 'Sunlight',
        labelMy: 'နေရောင်',
      ),
      FlashcardItem(
        id: 'grow-sprout',
        emoji: '🌱',
        colorValue: 0xFF4CB963,
        labelEn: 'Sprout',
        labelMy: 'အညှောက်ထွက်',
      ),
      FlashcardItem(
        id: 'grow-flower',
        emoji: '🌸',
        colorValue: 0xFFFF7F91,
        labelEn: 'Flower',
        labelMy: 'ပန်း',
      ),
      FlashcardItem(
        id: 'grow-fruit',
        emoji: '🍎',
        colorValue: 0xFFE64545,
        labelEn: 'Fruit',
        labelMy: 'အသီး',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-coding-2',
    subject: 'coding',
    grade: Grade.nursery,
    titleEn: 'My Bedtime Steps',
    titleMy: 'အိပ်ရာဝင်ချိန် အဆင့်များ',
    descriptionEn:
        'Flip through flashcards to learn the order of steps we follow '
        'before bed.',
    descriptionMy:
        'အိပ်ရာမဝင်မီ လိုက်နာရသော အဆင့်များ၏ အစီအစဉ်ကို ကတ်များလှန်ပြီး '
        'လေ့လာပါ။',
    starsReward: 6,
    emoji: '🌙',
    cards: [
      FlashcardItem(
        id: 'bedtime-bath',
        emoji: '🛁',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Bath',
        labelMy: 'ရေချိုး',
      ),
      FlashcardItem(
        id: 'bedtime-pajamas',
        emoji: '👘',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Pajamas',
        labelMy: 'ညအိပ်ဝတ်စုံ',
      ),
      FlashcardItem(
        id: 'bedtime-brush',
        emoji: '🪥',
        colorValue: 0xFFFFFFFF,
        labelEn: 'Brush Teeth',
        labelMy: 'သွားတိုက်',
      ),
      FlashcardItem(
        id: 'bedtime-story',
        emoji: '📖',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Story Time',
        labelMy: 'ပုံပြင်ချိန်',
      ),
      FlashcardItem(
        id: 'bedtime-sleep',
        emoji: '😴',
        colorValue: 0xFF7271F7,
        labelEn: 'Sleep',
        labelMy: 'အိပ်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-coding-2',
    subject: 'coding',
    grade: Grade.kg,
    titleEn: 'Party Time Steps',
    titleMy: 'ပါတီပွဲ အဆင့်များ',
    descriptionEn:
        'Flip through flashcards to learn the order of steps to get ready '
        'for a party.',
    descriptionMy:
        'ပါတီပွဲအတွက် အသင့်ပြင်ရသော အဆင့်များ၏ အစီအစဉ်ကို ကတ်များလှန်ပြီး '
        'လေ့လာပါ။',
    starsReward: 9,
    emoji: '🎉',
    cards: [
      FlashcardItem(
        id: 'party-invite',
        emoji: '💌',
        colorValue: 0xFFFF7F91,
        labelEn: 'Invite Friends',
        labelMy: 'သူငယ်ချင်းများဖိတ်',
      ),
      FlashcardItem(
        id: 'party-decorate',
        emoji: '🎈',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Decorate',
        labelMy: 'အလှဆင်',
      ),
      FlashcardItem(
        id: 'party-cake',
        emoji: '🎂',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Bake a Cake',
        labelMy: 'ကိတ်မုန့်ဖုတ်',
      ),
      FlashcardItem(
        id: 'party-games',
        emoji: '🎮',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Play Games',
        labelMy: 'ဂိမ်းကစား',
      ),
      FlashcardItem(
        id: 'party-sing',
        emoji: '🎵',
        colorValue: 0xFF7271F7,
        labelEn: 'Sing a Song',
        labelMy: 'သီချင်းဆို',
      ),
      FlashcardItem(
        id: 'party-candles',
        emoji: '🕯️',
        colorValue: 0xFFB5734A,
        labelEn: 'Blow Out Candles',
        labelMy: 'ဖယောင်းတိုင်မှုတ်',
      ),
      FlashcardItem(
        id: 'party-celebrate',
        emoji: '🎉',
        colorValue: 0xFFE64545,
        labelEn: 'Celebrate!',
        labelMy: 'ပျော်ပွဲစား',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-engineering-2',
    subject: 'engineering',
    grade: Grade.nursery,
    titleEn: 'Structures Around Us',
    titleMy: 'ပတ်ဝန်းကျင်ရှိ အဆောက်အအုံများ',
    descriptionEn:
        'Flip through flashcards to learn the names of structures people '
        'build.',
    descriptionMy:
        'လူများ တည်ဆောက်ကြသော အဆောက်အအုံများ၏ အမည်များကို ကတ်များလှန်ပြီး '
        'လေ့လာပါ။',
    starsReward: 6,
    emoji: '🏛️',
    cards: [
      FlashcardItem(
        id: 'structure-tower',
        emoji: '🗼',
        colorValue: 0xFFE64545,
        labelEn: 'Tower',
        labelMy: 'မျှော်စင်',
      ),
      FlashcardItem(
        id: 'structure-bridge',
        emoji: '🌉',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Bridge',
        labelMy: 'တံတား',
      ),
      FlashcardItem(
        id: 'structure-tunnel',
        emoji: '🚇',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Tunnel',
        labelMy: 'ဥမင်လိုဏ်ခေါင်း',
      ),
      FlashcardItem(
        id: 'structure-castle',
        emoji: '🏰',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Castle',
        labelMy: 'ရဲတိုက်',
      ),
      FlashcardItem(
        id: 'structure-skyscraper',
        emoji: '🏙️',
        colorValue: 0xFF7271F7,
        labelEn: 'Skyscraper',
        labelMy: 'မိုးမျှော်တိုက်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-engineering-2',
    subject: 'engineering',
    grade: Grade.kg,
    titleEn: 'Simple Machines',
    titleMy: 'ရိုးရှင်းသော စက်ကိရိယာများ',
    descriptionEn:
        'Flip through flashcards to learn simple machines that make work '
        'easier.',
    descriptionMy:
        'အလုပ်ကို ပိုမိုလွယ်ကူစေသည့် ရိုးရှင်းသော စက်ကိရိယာများကို '
        'ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 9,
    emoji: '⚙️',
    cards: [
      FlashcardItem(
        id: 'machine-wheel',
        emoji: '🛞',
        colorValue: 0xFFB5734A,
        labelEn: 'Wheel',
        labelMy: 'ဘီး',
      ),
      FlashcardItem(
        id: 'machine-lever',
        emoji: '🎚️',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Lever',
        labelMy: 'လီဗာ',
      ),
      FlashcardItem(
        id: 'machine-pulley',
        emoji: '🪢',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Pulley',
        labelMy: 'ကျင်းလိမ်ဘီး',
      ),
      FlashcardItem(
        id: 'machine-ramp',
        emoji: '🛝',
        colorValue: 0xFF4CB963,
        labelEn: 'Ramp',
        labelMy: 'စောင်းလမ်း',
      ),
      FlashcardItem(
        id: 'machine-gear',
        emoji: '⚙️',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Gear',
        labelMy: 'ဂီယာ',
      ),
      FlashcardItem(
        id: 'machine-screw',
        emoji: '🔩',
        colorValue: 0xFF7271F7,
        labelEn: 'Screw',
        labelMy: 'စကရူး',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-history-2',
    subject: 'history',
    grade: Grade.nursery,
    titleEn: 'A Long Time Ago',
    titleMy: 'ဟိုးရှေးရှေးက',
    descriptionEn:
        'Flip through flashcards to learn about how people lived a long '
        'time ago.',
    descriptionMy:
        'ဟိုးရှေးရှေးက လူများ မည်သို့နေထိုင်ခဲ့ကြောင်းကို ကတ်များလှန်ပြီး '
        'လေ့လာပါ။',
    starsReward: 6,
    emoji: '🦕',
    cards: [
      FlashcardItem(
        id: 'past-dinosaur',
        emoji: '🦕',
        colorValue: 0xFF4CB963,
        labelEn: 'Dinosaur',
        labelMy: 'ဒိုင်နိုဆော်',
      ),
      FlashcardItem(
        id: 'past-cave',
        emoji: '🕳️',
        colorValue: 0xFFB5734A,
        labelEn: 'Cave',
        labelMy: 'ဂူ',
      ),
      FlashcardItem(
        id: 'past-fire',
        emoji: '🔥',
        colorValue: 0xFFE64545,
        labelEn: 'Fire',
        labelMy: 'မီး',
      ),
      FlashcardItem(
        id: 'past-stonetool',
        emoji: '🪨',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Stone Tool',
        labelMy: 'ကျောက်တန်ဆာ',
      ),
      FlashcardItem(
        id: 'past-cavepainting',
        emoji: '🎨',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Cave Painting',
        labelMy: 'ဂူပန်းချီ',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-history-2',
    subject: 'history',
    grade: Grade.kg,
    titleEn: 'Great Inventions',
    titleMy: 'ကြီးမြတ်သော တီထွင်မှုများ',
    descriptionEn:
        'Flip through flashcards to learn about inventions that changed '
        'how people live.',
    descriptionMy:
        'လူများ၏ နေထိုင်မှုပုံစံကို ပြောင်းလဲစေခဲ့သော တီထွင်မှုများကို '
        'ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 9,
    emoji: '💡',
    cards: [
      FlashcardItem(
        id: 'invent-wheel',
        emoji: '🛞',
        colorValue: 0xFFB5734A,
        labelEn: 'Wheel',
        labelMy: 'ဘီး',
      ),
      FlashcardItem(
        id: 'invent-fire',
        emoji: '🔥',
        colorValue: 0xFFE64545,
        labelEn: 'Fire',
        labelMy: 'မီး',
      ),
      FlashcardItem(
        id: 'invent-boat',
        emoji: '⛵',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Boat',
        labelMy: 'လှေ',
      ),
      FlashcardItem(
        id: 'invent-writing',
        emoji: '✍️',
        colorValue: 0xFF7271F7,
        labelEn: 'Writing',
        labelMy: 'စာရေးခြင်း',
      ),
      FlashcardItem(
        id: 'invent-clock',
        emoji: '⏰',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Clock',
        labelMy: 'နာရီ',
      ),
      FlashcardItem(
        id: 'invent-light',
        emoji: '💡',
        colorValue: 0xFFFFC93C,
        labelEn: 'Lightbulb',
        labelMy: 'မီးလုံး',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-geography-2',
    subject: 'geography',
    grade: Grade.nursery,
    titleEn: 'Animal Homes',
    titleMy: 'တိရစ္ဆာန်များ၏ နေအိမ်',
    descriptionEn:
        'Flip through flashcards to learn where different animals live.',
    descriptionMy:
        'မတူညီသော တိရစ္ဆာန်များ မည်သည့်နေရာတွင် နေထိုင်ကြောင်းကို '
        'ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 6,
    emoji: '🏞️',
    cards: [
      FlashcardItem(
        id: 'home-jungle',
        emoji: '🐒',
        colorValue: 0xFF4CB963,
        labelEn: 'Jungle',
        labelMy: 'တောအုပ်',
      ),
      FlashcardItem(
        id: 'home-ocean',
        emoji: '🐠',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Ocean',
        labelMy: 'သမုဒ္ဒရာ',
      ),
      FlashcardItem(
        id: 'home-desert',
        emoji: '🐫',
        colorValue: 0xFFB5734A,
        labelEn: 'Desert',
        labelMy: 'သဲကန္တာရ',
      ),
      FlashcardItem(
        id: 'home-ice',
        emoji: '🐧',
        colorValue: 0xFFFFFFFF,
        labelEn: 'Icy Land',
        labelMy: 'ရေခဲပြင်',
      ),
      FlashcardItem(
        id: 'home-farm',
        emoji: '🐄',
        colorValue: 0xFFFFC93C,
        labelEn: 'Farm',
        labelMy: 'လယ်ယာ',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-geography-2',
    subject: 'geography',
    grade: Grade.kg,
    titleEn: 'Landforms Around Us',
    titleMy: 'ပတ်ဝန်းကျင်ရှိ မြေမျက်နှာသွင်ပြင်များ',
    descriptionEn:
        'Flip through flashcards to learn the names of different '
        'landforms.',
    descriptionMy:
        'မတူညီသော မြေမျက်နှာသွင်ပြင်များ၏ အမည်များကို ကတ်များလှန်ပြီး '
        'လေ့လာပါ။',
    starsReward: 9,
    emoji: '🏞️',
    cards: [
      FlashcardItem(
        id: 'land-river',
        emoji: '🏞️',
        colorValue: 0xFF4CB6FF,
        labelEn: 'River',
        labelMy: 'မြစ်',
      ),
      FlashcardItem(
        id: 'land-hill',
        emoji: '⛰️',
        colorValue: 0xFFB5734A,
        labelEn: 'Hill',
        labelMy: 'တောင်ကုန်း',
      ),
      FlashcardItem(
        id: 'land-valley',
        emoji: '🌄',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Valley',
        labelMy: 'ချိုင့်ဝှမ်း',
      ),
      FlashcardItem(
        id: 'land-plain',
        emoji: '🌾',
        colorValue: 0xFFFFC93C,
        labelEn: 'Plain',
        labelMy: 'လွင်ပြင်',
      ),
      FlashcardItem(
        id: 'land-sea',
        emoji: '🌊',
        colorValue: 0xFF7271F7,
        labelEn: 'Sea',
        labelMy: 'ပင်လယ်',
      ),
      FlashcardItem(
        id: 'land-waterfall',
        emoji: '💦',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Waterfall',
        labelMy: 'ရေတံခွန်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-computing-2',
    subject: 'computing',
    grade: Grade.nursery,
    titleEn: 'Computers Help Us',
    titleMy: 'ကွန်ပျူတာက ကျွန်ုပ်တို့ကို ကူညီသည်',
    descriptionEn:
        'Flip through flashcards to learn the places where computers help '
        'us.',
    descriptionMy:
        'ကွန်ပျူတာများက ကျွန်ုပ်တို့ကို ကူညီပေးသည့် နေရာများကို '
        'ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 6,
    emoji: '🏫',
    cards: [
      FlashcardItem(
        id: 'place-home',
        emoji: '🏠',
        colorValue: 0xFFFF7F91,
        labelEn: 'Home',
        labelMy: 'အိမ်',
      ),
      FlashcardItem(
        id: 'place-school',
        emoji: '🏫',
        colorValue: 0xFF4CB6FF,
        labelEn: 'School',
        labelMy: 'ကျောင်း',
      ),
      FlashcardItem(
        id: 'place-hospital',
        emoji: '🏥',
        colorValue: 0xFFE64545,
        labelEn: 'Hospital',
        labelMy: 'ဆေးရုံ',
      ),
      FlashcardItem(
        id: 'place-library',
        emoji: '📚',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Library',
        labelMy: 'စာကြည့်တိုက်',
      ),
      FlashcardItem(
        id: 'place-shop',
        emoji: '🏪',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Shop',
        labelMy: 'ဆိုင်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-computing-2',
    subject: 'computing',
    grade: Grade.kg,
    titleEn: "A Computer's Senses",
    titleMy: 'ကွန်ပျူတာ၏ အာရုံခံစနစ်များ',
    descriptionEn:
        'Flip through flashcards to learn the parts that help a computer '
        'see, hear, and speak.',
    descriptionMy:
        'ကွန်ပျူတာအား မြင်စေ၊ ကြားစေနှင့် ပြောစေသော အစိတ်အပိုင်းများကို '
        'ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 9,
    emoji: '🎧',
    cards: [
      FlashcardItem(
        id: 'sense-screen',
        emoji: '🖥️',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Screen',
        labelMy: 'မျက်နှာပြင်',
      ),
      FlashcardItem(
        id: 'sense-camera',
        emoji: '📷',
        colorValue: 0xFFB5734A,
        labelEn: 'Camera',
        labelMy: 'ကင်မရာ',
      ),
      FlashcardItem(
        id: 'sense-mic',
        emoji: '🎤',
        colorValue: 0xFF7271F7,
        labelEn: 'Microphone',
        labelMy: 'မိုက်ခရိုဖုန်း',
      ),
      FlashcardItem(
        id: 'sense-speaker',
        emoji: '🔊',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Speaker',
        labelMy: 'စပီကာ',
      ),
      FlashcardItem(
        id: 'sense-headphones',
        emoji: '🎧',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Headphones',
        labelMy: 'နားကြပ်',
      ),
      FlashcardItem(
        id: 'sense-keyboard',
        emoji: '⌨️',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Keyboard',
        labelMy: 'ကီးဘုတ်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-art-1',
    subject: 'art',
    grade: Grade.nursery,
    titleEn: 'Rainbow Colors',
    titleMy: 'သက်တံ့ အရောင်များ',
    descriptionEn:
        'Flip through flashcards to learn the colors of the rainbow.',
    descriptionMy: 'သက်တံ့ရောင်စုံ၏ အရောင်များကို ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 6,
    emoji: '🌈',
    cards: [
      FlashcardItem(
        id: 'rainbow-red',
        emoji: '🔴',
        colorValue: 0xFFE64545,
        labelEn: 'Red',
        labelMy: 'အနီရောင်',
      ),
      FlashcardItem(
        id: 'rainbow-orange',
        emoji: '🟠',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Orange',
        labelMy: 'လိမ္မော်ရောင်',
      ),
      FlashcardItem(
        id: 'rainbow-yellow',
        emoji: '🟡',
        colorValue: 0xFFFFC93C,
        labelEn: 'Yellow',
        labelMy: 'အဝါရောင်',
      ),
      FlashcardItem(
        id: 'rainbow-green',
        emoji: '🟢',
        colorValue: 0xFF4CB963,
        labelEn: 'Green',
        labelMy: 'အစိမ်းရောင်',
      ),
      FlashcardItem(
        id: 'rainbow-blue',
        emoji: '🔵',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Blue',
        labelMy: 'အပြာရောင်',
      ),
      FlashcardItem(
        id: 'rainbow-purple',
        emoji: '🟣',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Purple',
        labelMy: 'ခရမ်းရောင်',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-art-1',
    subject: 'art',
    grade: Grade.kg,
    titleEn: 'My Art Tools',
    titleMy: 'ပန်းချီပစ္စည်းများ',
    descriptionEn:
        'Flip through flashcards to learn the names of tools artists use.',
    descriptionMy:
        'ပန်းချီဆရာများ အသုံးပြုသော ပစ္စည်းများ၏ အမည်များကို '
        'ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 9,
    emoji: '🎨',
    cards: [
      FlashcardItem(
        id: 'tool-brush',
        emoji: '🖌️',
        colorValue: 0xFFFF7F91,
        labelEn: 'Paintbrush',
        labelMy: 'ဆေးဆွဲတံ',
      ),
      FlashcardItem(
        id: 'tool-crayon',
        emoji: '🖍️',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Crayon',
        labelMy: 'ဆေးခဲ',
      ),
      FlashcardItem(
        id: 'tool-paint',
        emoji: '🎨',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Paint',
        labelMy: 'ဆေးရောင်',
      ),
      FlashcardItem(
        id: 'tool-paper',
        emoji: '📄',
        colorValue: 0xFFFFFFFF,
        labelEn: 'Paper',
        labelMy: 'စက္ကူ',
      ),
      FlashcardItem(
        id: 'tool-pencil',
        emoji: '✏️',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Colored Pencil',
        labelMy: 'ခဲတံရောင်စုံ',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-nursery-flashcards-generalknowledge-1',
    subject: 'generalknowledge',
    grade: Grade.nursery,
    titleEn: 'People Who Help Us',
    titleMy: 'ကျွန်ုပ်တို့ကို ကူညီသူများ',
    descriptionEn:
        'Flip through flashcards to learn about people who help our '
        'community.',
    descriptionMy:
        'ကျွန်ုပ်တို့ရပ်ရွာကို ကူညီပေးသူများအကြောင်း ကတ်များလှန်ပြီး '
        'လေ့လာပါ။',
    starsReward: 6,
    emoji: '🧑‍⚕️',
    cards: [
      FlashcardItem(
        id: 'helper-doctor',
        emoji: '🧑‍⚕️',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Doctor',
        labelMy: 'ဆရာဝန်',
      ),
      FlashcardItem(
        id: 'helper-teacher',
        emoji: '👩‍🏫',
        colorValue: 0xFFFF7F91,
        labelEn: 'Teacher',
        labelMy: 'ဆရာ',
      ),
      FlashcardItem(
        id: 'helper-police',
        emoji: '👮',
        colorValue: 0xFF7271F7,
        labelEn: 'Police Officer',
        labelMy: 'ရဲ',
      ),
      FlashcardItem(
        id: 'helper-firefighter',
        emoji: '👨‍🚒',
        colorValue: 0xFFE64545,
        labelEn: 'Firefighter',
        labelMy: 'မီးသတ်သမား',
      ),
      FlashcardItem(
        id: 'helper-farmer',
        emoji: '👨‍🌾',
        colorValue: 0xFF4CB963,
        labelEn: 'Farmer',
        labelMy: 'လယ်သမား',
      ),
    ],
  ),
  NurseryFlashcardsDef(
    id: 'mock-kg-flashcards-generalknowledge-1',
    subject: 'generalknowledge',
    grade: Grade.kg,
    titleEn: 'Good Manners',
    titleMy: 'အကျင့်ကောင်းများ',
    descriptionEn:
        'Flip through flashcards to learn simple good manners to use '
        'every day.',
    descriptionMy:
        'နေ့စဉ် အသုံးပြုရမည့် ရိုးရှင်းသော အကျင့်ကောင်းများကို '
        'ကတ်များလှန်ပြီး လေ့လာပါ။',
    starsReward: 9,
    emoji: '🤝',
    cards: [
      FlashcardItem(
        id: 'manners-please',
        emoji: '🙏',
        colorValue: 0xFFFFC93C,
        labelEn: 'Say Please',
        labelMy: 'ကျေးဇူးပြု၍ ပြော',
      ),
      FlashcardItem(
        id: 'manners-thanks',
        emoji: '😊',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Say Thank You',
        labelMy: 'ကျေးဇူးတင်ကြောင်းပြော',
      ),
      FlashcardItem(
        id: 'manners-sorry',
        emoji: '😔',
        colorValue: 0xFF9C6ADE,
        labelEn: 'Say Sorry',
        labelMy: 'တောင်းပန်',
      ),
      FlashcardItem(
        id: 'manners-share',
        emoji: '🤲',
        colorValue: 0xFF4CB963,
        labelEn: 'Share',
        labelMy: 'မျှဝေ',
      ),
      FlashcardItem(
        id: 'manners-wait',
        emoji: '⏳',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Wait Your Turn',
        labelMy: 'အလှည့်စောင့်',
      ),
      FlashcardItem(
        id: 'manners-kind',
        emoji: '💛',
        colorValue: 0xFFFF7F91,
        labelEn: 'Be Kind',
        labelMy: 'ကြင်နာ',
      ),
    ],
  ),
];
