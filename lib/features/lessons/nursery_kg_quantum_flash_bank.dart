import '../../models/child_model.dart';
import 'nursery_activity_kind.dart';

/// Discriminates what a single [QuantumFlashCardItem] shows during the
/// Flash Pass. [dot] renders only a scattered cluster of [dotCount] dots
/// (no numeral, no word) -- the Glenn-Doman-style quantity-impression
/// exposure used for numeracy decks. [word] renders [emoji] plus the
/// current-language label once -- no flip/translate-reveal, unlike
/// `nursery_kg_flashcards_bank.dart`'s tap-to-flip mechanic; this is
/// passive exposure, not child-paced review.
enum QuantumFlashCardMode { dot, word }

/// One card in a [QuantumFlashDeckDef]. Exactly one of [dotCount]/[emoji]
/// is set, matching [mode] -- see `quantum_flash_screen.dart` for how each
/// mode renders during the Flash Pass and how [labelEn]/[labelMy] surface
/// as answer-chip text during the Quick Check.
class QuantumFlashCardItem {
  const QuantumFlashCardItem({
    required this.id,
    required this.mode,
    this.dotCount,
    this.emoji,
    required this.colorValue,
    required this.labelEn,
    required this.labelMy,
  }) : assert(
         mode == QuantumFlashCardMode.dot
             ? dotCount != null && emoji == null
             : emoji != null && dotCount == null,
         'dot cards need dotCount (no emoji); word cards need emoji (no dotCount)',
       );

  final String id;
  final QuantumFlashCardMode mode;

  /// The quantity shown as a dot cluster. Only set when [mode] is
  /// [QuantumFlashCardMode.dot].
  final int? dotCount;

  /// The single representative emoji shown alongside [labelEn]/[labelMy].
  /// Only set when [mode] is [QuantumFlashCardMode.word].
  final String? emoji;

  final int colorValue;
  final String labelEn;
  final String labelMy;

  String label(String languageCode) => languageCode == 'my' ? labelMy : labelEn;
}

/// One Quantum Flash deck: a Flash Pass through [cards] at [flashIntervalMs]
/// per card, followed by a 4-round Quick Check recall game -- see
/// `quantum_flash_screen.dart`.
class QuantumFlashDeckDef {
  const QuantumFlashDeckDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.emoji,
    this.flashIntervalMs = 900,
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

  /// A single representative emoji for browser/index tiles -- same role as
  /// every other new-architecture bank's `emoji` field.
  final String emoji;

  /// Milliseconds each card is shown during the Flash Pass before
  /// crossfading to the next -- deliberately fast (900ms default) for the
  /// high-speed exposure this engine is built around, but never so fast
  /// that the transition itself becomes a hard cut/strobe; see
  /// `quantum_flash_screen.dart`'s 150ms crossfade.
  final int flashIntervalMs;

  final List<QuantumFlashCardItem> cards;

  static const kind = NurseryActivityKind.quantumFlash;
}

QuantumFlashDeckDef? quantumFlashDefForModule(String moduleId) {
  for (final def in nurseryKgQuantumFlashBank) {
    if (def.id == moduleId) return def;
  }
  return null;
}

/// Falls back to a small hardcoded quantity deck when a module id doesn't
/// resolve, so [QuantumFlashScreen] (see that file) never dead-ends -- same
/// role as [fallbackFlashcards] in `nursery_kg_flashcards_bank.dart`.
const List<QuantumFlashCardItem> fallbackQuantumFlashCards = [
  QuantumFlashCardItem(
    id: 'fallback-dot-1',
    mode: QuantumFlashCardMode.dot,
    dotCount: 1,
    colorValue: 0xFFFF7F91,
    labelEn: 'One',
    labelMy: 'တစ်',
  ),
  QuantumFlashCardItem(
    id: 'fallback-dot-2',
    mode: QuantumFlashCardMode.dot,
    dotCount: 2,
    colorValue: 0xFF7271F7,
    labelEn: 'Two',
    labelMy: 'နှစ်',
  ),
  QuantumFlashCardItem(
    id: 'fallback-dot-3',
    mode: QuantumFlashCardMode.dot,
    dotCount: 3,
    colorValue: 0xFFFFBF3C,
    labelEn: 'Three',
    labelMy: 'သုံး',
  ),
];

const List<QuantumFlashDeckDef> nurseryKgQuantumFlashBank = [
  // =====================================================================
  // Nursery -- Math dot-cards (quantities 1-10)
  // =====================================================================
  QuantumFlashDeckDef(
    id: 'mock-nursery-quantumflash-math-1',
    subject: 'math',
    grade: Grade.nursery,
    titleEn: 'Quantity Flash 1-5',
    titleMy: 'အရေအတွက် ဖျတ်ခနဲပြပွဲ ၁ မှ ၅',
    descriptionEn:
        'Watch each dot card flash by, then tap the quantity you just saw.',
    descriptionMy:
        'အစက်ကတ်တစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော အရေအတွက်ကို တို့ပါ။',
    starsReward: 5,
    emoji: '⚡',
    flashIntervalMs: 900,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-nur-math1-1',
        mode: QuantumFlashCardMode.dot,
        dotCount: 1,
        colorValue: 0xFFFF7F91,
        labelEn: 'One',
        labelMy: 'တစ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-math1-2',
        mode: QuantumFlashCardMode.dot,
        dotCount: 2,
        colorValue: 0xFF7271F7,
        labelEn: 'Two',
        labelMy: 'နှစ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-math1-3',
        mode: QuantumFlashCardMode.dot,
        dotCount: 3,
        colorValue: 0xFFFFBF3C,
        labelEn: 'Three',
        labelMy: 'သုံး',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-math1-4',
        mode: QuantumFlashCardMode.dot,
        dotCount: 4,
        colorValue: 0xFF94BDFF,
        labelEn: 'Four',
        labelMy: 'လေး',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-math1-5',
        mode: QuantumFlashCardMode.dot,
        dotCount: 5,
        colorValue: 0xFFB5B557,
        labelEn: 'Five',
        labelMy: 'ငါး',
      ),
    ],
  ),
  QuantumFlashDeckDef(
    id: 'mock-nursery-quantumflash-math-2',
    subject: 'math',
    grade: Grade.nursery,
    titleEn: 'Quantity Flash 6-10',
    titleMy: 'အရေအတွက် ဖျတ်ခနဲပြပွဲ ၆ မှ ၁၀',
    descriptionEn:
        'Watch each dot card flash by, then tap the quantity you just saw.',
    descriptionMy:
        'အစက်ကတ်တစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော အရေအတွက်ကို တို့ပါ။',
    starsReward: 5,
    emoji: '⚡',
    flashIntervalMs: 900,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-nur-math2-1',
        mode: QuantumFlashCardMode.dot,
        dotCount: 6,
        colorValue: 0xFFFF7F91,
        labelEn: 'Six',
        labelMy: 'ခြောက်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-math2-2',
        mode: QuantumFlashCardMode.dot,
        dotCount: 7,
        colorValue: 0xFF7271F7,
        labelEn: 'Seven',
        labelMy: 'ခုနစ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-math2-3',
        mode: QuantumFlashCardMode.dot,
        dotCount: 8,
        colorValue: 0xFFFFBF3C,
        labelEn: 'Eight',
        labelMy: 'ရှစ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-math2-4',
        mode: QuantumFlashCardMode.dot,
        dotCount: 9,
        colorValue: 0xFF94BDFF,
        labelEn: 'Nine',
        labelMy: 'ကိုး',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-math2-5',
        mode: QuantumFlashCardMode.dot,
        dotCount: 10,
        colorValue: 0xFFB5B557,
        labelEn: 'Ten',
        labelMy: 'ဆယ်',
      ),
    ],
  ),
  QuantumFlashDeckDef(
    id: 'mock-nursery-quantumflash-math-3',
    subject: 'math',
    grade: Grade.nursery,
    titleEn: 'Numeral Flash 1-5',
    titleMy: 'ဂဏန်းဖျတ်ခနဲပြပွဲ ၁ မှ ၅',
    descriptionEn:
        'Watch each number symbol flash by, then tap the numeral you just saw.',
    descriptionMy:
        'ဂဏန်းသင်္ကေတတစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော ဂဏန်းကို တို့ပါ။',
    starsReward: 5,
    emoji: '🔢',
    flashIntervalMs: 900,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-nur-math3-1',
        mode: QuantumFlashCardMode.word,
        emoji: '1️⃣',
        colorValue: 0xFFFF7F91,
        labelEn: 'One',
        labelMy: 'တစ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-math3-2',
        mode: QuantumFlashCardMode.word,
        emoji: '2️⃣',
        colorValue: 0xFF7271F7,
        labelEn: 'Two',
        labelMy: 'နှစ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-math3-3',
        mode: QuantumFlashCardMode.word,
        emoji: '3️⃣',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Three',
        labelMy: 'သုံး',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-math3-4',
        mode: QuantumFlashCardMode.word,
        emoji: '4️⃣',
        colorValue: 0xFF94BDFF,
        labelEn: 'Four',
        labelMy: 'လေး',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-math3-5',
        mode: QuantumFlashCardMode.word,
        emoji: '5️⃣',
        colorValue: 0xFFB5B557,
        labelEn: 'Five',
        labelMy: 'ငါး',
      ),
    ],
  ),

  // =====================================================================
  // Nursery -- English (phonics) vocabulary flash decks
  // =====================================================================
  QuantumFlashDeckDef(
    id: 'mock-nursery-quantumflash-phonics-1',
    subject: 'phonics',
    grade: Grade.nursery,
    titleEn: 'Word Flash: Colours',
    titleMy: 'စကားလုံးဖျတ်ခနဲပြပွဲ - အရောင်များ',
    descriptionEn:
        'Watch each colour flash by, then tap the word you just saw.',
    descriptionMy:
        'အရောင်တစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော စကားလုံးကို တို့ပါ။',
    starsReward: 5,
    emoji: '🎨',
    flashIntervalMs: 900,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-nur-phon1-1',
        mode: QuantumFlashCardMode.word,
        emoji: '🔴',
        colorValue: 0xFFE64545,
        labelEn: 'Red',
        labelMy: 'အနီရောင်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-phon1-2',
        mode: QuantumFlashCardMode.word,
        emoji: '🔵',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Blue',
        labelMy: 'အပြာရောင်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-phon1-3',
        mode: QuantumFlashCardMode.word,
        emoji: '🟡',
        colorValue: 0xFFFFC93C,
        labelEn: 'Yellow',
        labelMy: 'အဝါရောင်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-phon1-4',
        mode: QuantumFlashCardMode.word,
        emoji: '🟢',
        colorValue: 0xFF4ED87A,
        labelEn: 'Green',
        labelMy: 'အစိမ်းရောင်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-phon1-5',
        mode: QuantumFlashCardMode.word,
        emoji: '🟠',
        colorValue: 0xFFFF9F45,
        labelEn: 'Orange',
        labelMy: 'လိမ္မော်ရောင်',
      ),
    ],
  ),
  QuantumFlashDeckDef(
    id: 'mock-nursery-quantumflash-phonics-2',
    subject: 'phonics',
    grade: Grade.nursery,
    titleEn: 'Word Flash: Animals',
    titleMy: 'စကားလုံးဖျတ်ခနဲပြပွဲ - တိရစ္ဆာန်များ',
    descriptionEn:
        'Watch each animal flash by, then tap the word you just saw.',
    descriptionMy:
        'တိရစ္ဆာန်တစ်ကောင်စီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော စကားလုံးကို တို့ပါ။',
    starsReward: 5,
    emoji: '🐾',
    flashIntervalMs: 900,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-nur-phon2-1',
        mode: QuantumFlashCardMode.word,
        emoji: '🐶',
        colorValue: 0xFFB08968,
        labelEn: 'Dog',
        labelMy: 'ခွေး',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-phon2-2',
        mode: QuantumFlashCardMode.word,
        emoji: '🐱',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Cat',
        labelMy: 'ကြောင်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-phon2-3',
        mode: QuantumFlashCardMode.word,
        emoji: '🐘',
        colorValue: 0xFF94BDFF,
        labelEn: 'Elephant',
        labelMy: 'ဆင်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-phon2-4',
        mode: QuantumFlashCardMode.word,
        emoji: '🦁',
        colorValue: 0xFFFF9F45,
        labelEn: 'Lion',
        labelMy: 'ခြင်္သေ့',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-phon2-5',
        mode: QuantumFlashCardMode.word,
        emoji: '🐟',
        colorValue: 0xFF7271F7,
        labelEn: 'Fish',
        labelMy: 'ငါး',
      ),
    ],
  ),
  QuantumFlashDeckDef(
    id: 'mock-nursery-quantumflash-phonics-3',
    subject: 'phonics',
    grade: Grade.nursery,
    titleEn: 'Word Flash: Fruits',
    titleMy: 'စကားလုံးဖျတ်ခနဲပြပွဲ - အသီးများ',
    descriptionEn: 'Watch each fruit flash by, then tap the word you just saw.',
    descriptionMy:
        'အသီးတစ်လုံးစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော စကားလုံးကို တို့ပါ။',
    starsReward: 5,
    emoji: '🍎',
    flashIntervalMs: 900,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-nur-phon3-1',
        mode: QuantumFlashCardMode.word,
        emoji: '🍎',
        colorValue: 0xFFE64545,
        labelEn: 'Apple',
        labelMy: 'ပန်းသီး',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-phon3-2',
        mode: QuantumFlashCardMode.word,
        emoji: '🍌',
        colorValue: 0xFFFFC93C,
        labelEn: 'Banana',
        labelMy: 'ငှက်ပျောသီး',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-phon3-3',
        mode: QuantumFlashCardMode.word,
        emoji: '🍇',
        colorValue: 0xFF7271F7,
        labelEn: 'Grapes',
        labelMy: 'စပျစ်သီး',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-phon3-4',
        mode: QuantumFlashCardMode.word,
        emoji: '🍉',
        colorValue: 0xFF4ED87A,
        labelEn: 'Watermelon',
        labelMy: 'ဖရဲသီး',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-phon3-5',
        mode: QuantumFlashCardMode.word,
        emoji: '🥭',
        colorValue: 0xFFFF9F45,
        labelEn: 'Mango',
        labelMy: 'သရက်သီး',
      ),
    ],
  ),

  // =====================================================================
  // Nursery -- General Knowledge flash decks (shapes and everyday things)
  // =====================================================================
  QuantumFlashDeckDef(
    id: 'mock-nursery-quantumflash-generalknowledge-1',
    subject: 'generalknowledge',
    grade: Grade.nursery,
    titleEn: 'Shape Flash',
    titleMy: 'ပုံသဏ္ဌာန်ဖျတ်ခနဲပြပွဲ',
    descriptionEn: 'Watch each shape flash by, then tap the word you just saw.',
    descriptionMy:
        'ပုံသဏ္ဌာန်တစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော စကားလုံးကို တို့ပါ။',
    starsReward: 5,
    emoji: '🔺',
    flashIntervalMs: 900,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-nur-gk1-1',
        mode: QuantumFlashCardMode.word,
        emoji: '⭕',
        colorValue: 0xFFE64545,
        labelEn: 'Circle',
        labelMy: 'စက်ဝိုင်း',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-gk1-2',
        mode: QuantumFlashCardMode.word,
        emoji: '🟦',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Square',
        labelMy: 'စတုရန်း',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-gk1-3',
        mode: QuantumFlashCardMode.word,
        emoji: '🔺',
        colorValue: 0xFFFFC93C,
        labelEn: 'Triangle',
        labelMy: 'တြိဂံ',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-gk1-4',
        mode: QuantumFlashCardMode.word,
        emoji: '⭐',
        colorValue: 0xFF4ED87A,
        labelEn: 'Star',
        labelMy: 'ကြယ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-gk1-5',
        mode: QuantumFlashCardMode.word,
        emoji: '❤️',
        colorValue: 0xFFFF7F91,
        labelEn: 'Heart',
        labelMy: 'နှလုံးသား',
      ),
    ],
  ),
  QuantumFlashDeckDef(
    id: 'mock-nursery-quantumflash-generalknowledge-2',
    subject: 'generalknowledge',
    grade: Grade.nursery,
    titleEn: 'Vehicle Flash',
    titleMy: 'မော်တော်ယာဉ်ဖျတ်ခနဲပြပွဲ',
    descriptionEn:
        'Watch each vehicle flash by, then tap the word you just saw.',
    descriptionMy:
        'မော်တော်ယာဉ်တစ်စီးစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော စကားလုံးကို တို့ပါ။',
    starsReward: 5,
    emoji: '🚗',
    flashIntervalMs: 900,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-nur-gk2-1',
        mode: QuantumFlashCardMode.word,
        emoji: '🚗',
        colorValue: 0xFFE64545,
        labelEn: 'Car',
        labelMy: 'ကား',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-gk2-2',
        mode: QuantumFlashCardMode.word,
        emoji: '🚌',
        colorValue: 0xFFFFC93C,
        labelEn: 'Bus',
        labelMy: 'ဘတ်စ်ကား',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-gk2-3',
        mode: QuantumFlashCardMode.word,
        emoji: '🚲',
        colorValue: 0xFF4ED87A,
        labelEn: 'Bicycle',
        labelMy: 'စက်ဘီး',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-gk2-4',
        mode: QuantumFlashCardMode.word,
        emoji: '✈️',
        colorValue: 0xFF94BDFF,
        labelEn: 'Airplane',
        labelMy: 'လေယာဉ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-nur-gk2-5',
        mode: QuantumFlashCardMode.word,
        emoji: '⛵',
        colorValue: 0xFF7271F7,
        labelEn: 'Boat',
        labelMy: 'လှေ',
      ),
    ],
  ),

  // =====================================================================
  // KG -- Math dot-cards (a step up from Nursery: quantities 11-20)
  // =====================================================================
  QuantumFlashDeckDef(
    id: 'mock-kg-quantumflash-math-1',
    subject: 'math',
    grade: Grade.kg,
    titleEn: 'Quantity Flash 11-15',
    titleMy: 'အရေအတွက် ဖျတ်ခနဲပြပွဲ ၁၁ မှ ၁၅',
    descriptionEn:
        'Watch each dot card flash by, then tap the quantity you just saw.',
    descriptionMy:
        'အစက်ကတ်တစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော အရေအတွက်ကို တို့ပါ။',
    starsReward: 6,
    emoji: '⚡',
    flashIntervalMs: 800,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-kg-math1-1',
        mode: QuantumFlashCardMode.dot,
        dotCount: 11,
        colorValue: 0xFFFF7F91,
        labelEn: 'Eleven',
        labelMy: 'တစ်ဆယ့်တစ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-math1-2',
        mode: QuantumFlashCardMode.dot,
        dotCount: 12,
        colorValue: 0xFF7271F7,
        labelEn: 'Twelve',
        labelMy: 'တစ်ဆယ့်နှစ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-math1-3',
        mode: QuantumFlashCardMode.dot,
        dotCount: 13,
        colorValue: 0xFFFFBF3C,
        labelEn: 'Thirteen',
        labelMy: 'တစ်ဆယ့်သုံး',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-math1-4',
        mode: QuantumFlashCardMode.dot,
        dotCount: 14,
        colorValue: 0xFF94BDFF,
        labelEn: 'Fourteen',
        labelMy: 'တစ်ဆယ့်လေး',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-math1-5',
        mode: QuantumFlashCardMode.dot,
        dotCount: 15,
        colorValue: 0xFFB5B557,
        labelEn: 'Fifteen',
        labelMy: 'တစ်ဆယ့်ငါး',
      ),
    ],
  ),
  QuantumFlashDeckDef(
    id: 'mock-kg-quantumflash-math-2',
    subject: 'math',
    grade: Grade.kg,
    titleEn: 'Quantity Flash 16-20',
    titleMy: 'အရေအတွက် ဖျတ်ခနဲပြပွဲ ၁၆ မှ ၂၀',
    descriptionEn:
        'Watch each dot card flash by, then tap the quantity you just saw.',
    descriptionMy:
        'အစက်ကတ်တစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော အရေအတွက်ကို တို့ပါ။',
    starsReward: 6,
    emoji: '⚡',
    flashIntervalMs: 800,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-kg-math2-1',
        mode: QuantumFlashCardMode.dot,
        dotCount: 16,
        colorValue: 0xFFFF7F91,
        labelEn: 'Sixteen',
        labelMy: 'တစ်ဆယ့်ခြောက်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-math2-2',
        mode: QuantumFlashCardMode.dot,
        dotCount: 17,
        colorValue: 0xFF7271F7,
        labelEn: 'Seventeen',
        labelMy: 'တစ်ဆယ့်ခုနစ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-math2-3',
        mode: QuantumFlashCardMode.dot,
        dotCount: 18,
        colorValue: 0xFFFFBF3C,
        labelEn: 'Eighteen',
        labelMy: 'တစ်ဆယ့်ရှစ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-math2-4',
        mode: QuantumFlashCardMode.dot,
        dotCount: 19,
        colorValue: 0xFF94BDFF,
        labelEn: 'Nineteen',
        labelMy: 'တစ်ဆယ့်ကိုး',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-math2-5',
        mode: QuantumFlashCardMode.dot,
        dotCount: 20,
        colorValue: 0xFFB5B557,
        labelEn: 'Twenty',
        labelMy: 'နှစ်ဆယ်',
      ),
    ],
  ),
  QuantumFlashDeckDef(
    id: 'mock-kg-quantumflash-math-3',
    subject: 'math',
    grade: Grade.kg,
    titleEn: 'Quantity Flash 21-25',
    titleMy: 'အရေအတွက် ဖျတ်ခနဲပြပွဲ ၂၁ မှ ၂၅',
    descriptionEn:
        'Watch each dot card flash by, then tap the quantity you just saw.',
    descriptionMy:
        'အစက်ကတ်တစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော အရေအတွက်ကို တို့ပါ။',
    starsReward: 6,
    emoji: '⚡',
    flashIntervalMs: 800,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-kg-math3-1',
        mode: QuantumFlashCardMode.dot,
        dotCount: 21,
        colorValue: 0xFFFF7F91,
        labelEn: 'Twenty-One',
        labelMy: 'နှစ်ဆယ့်တစ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-math3-2',
        mode: QuantumFlashCardMode.dot,
        dotCount: 22,
        colorValue: 0xFF7271F7,
        labelEn: 'Twenty-Two',
        labelMy: 'နှစ်ဆယ့်နှစ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-math3-3',
        mode: QuantumFlashCardMode.dot,
        dotCount: 23,
        colorValue: 0xFFFFBF3C,
        labelEn: 'Twenty-Three',
        labelMy: 'နှစ်ဆယ့်သုံး',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-math3-4',
        mode: QuantumFlashCardMode.dot,
        dotCount: 24,
        colorValue: 0xFF94BDFF,
        labelEn: 'Twenty-Four',
        labelMy: 'နှစ်ဆယ့်လေး',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-math3-5',
        mode: QuantumFlashCardMode.dot,
        dotCount: 25,
        colorValue: 0xFFB5B557,
        labelEn: 'Twenty-Five',
        labelMy: 'နှစ်ဆယ့်ငါး',
      ),
    ],
  ),

  // =====================================================================
  // KG -- English (phonics) vocabulary flash decks (a step up in category
  // breadth from Nursery: action words and weather, not just nouns)
  // =====================================================================
  QuantumFlashDeckDef(
    id: 'mock-kg-quantumflash-phonics-1',
    subject: 'phonics',
    grade: Grade.kg,
    titleEn: 'Word Flash: Action Words',
    titleMy: 'စကားလုံးဖျတ်ခနဲပြပွဲ - လုပ်ဆောင်မှုစကားလုံးများ',
    descriptionEn:
        'Watch each action flash by, then tap the word you just saw.',
    descriptionMy:
        'လုပ်ဆောင်မှုတစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော စကားလုံးကို တို့ပါ။',
    starsReward: 6,
    emoji: '🏃',
    flashIntervalMs: 800,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-kg-phon1-1',
        mode: QuantumFlashCardMode.word,
        emoji: '🏃',
        colorValue: 0xFFFF7F91,
        labelEn: 'Run',
        labelMy: 'ပြေး',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-phon1-2',
        mode: QuantumFlashCardMode.word,
        emoji: '🤸',
        colorValue: 0xFF7271F7,
        labelEn: 'Jump',
        labelMy: 'ခုန်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-phon1-3',
        mode: QuantumFlashCardMode.word,
        emoji: '😴',
        colorValue: 0xFF94BDFF,
        labelEn: 'Sleep',
        labelMy: 'အိပ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-phon1-4',
        mode: QuantumFlashCardMode.word,
        emoji: '🍚',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Eat',
        labelMy: 'စား',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-phon1-5',
        mode: QuantumFlashCardMode.word,
        emoji: '📖',
        colorValue: 0xFFB5B557,
        labelEn: 'Read',
        labelMy: 'ဖတ်',
      ),
    ],
  ),
  QuantumFlashDeckDef(
    id: 'mock-kg-quantumflash-phonics-2',
    subject: 'phonics',
    grade: Grade.kg,
    titleEn: 'Word Flash: Weather',
    titleMy: 'စကားလုံးဖျတ်ခနဲပြပွဲ - ရာသီဥတု',
    descriptionEn:
        'Watch each weather card flash by, then tap the word you just saw.',
    descriptionMy:
        'ရာသီဥတုကတ်တစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော စကားလုံးကို တို့ပါ။',
    starsReward: 6,
    emoji: '🌦️',
    flashIntervalMs: 800,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-kg-phon2-1',
        mode: QuantumFlashCardMode.word,
        emoji: '☀️',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Sunny',
        labelMy: 'နေသာ',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-phon2-2',
        mode: QuantumFlashCardMode.word,
        emoji: '🌧️',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Rainy',
        labelMy: 'မိုးရွာ',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-phon2-3',
        mode: QuantumFlashCardMode.word,
        emoji: '☁️',
        colorValue: 0xFFB5B5B5,
        labelEn: 'Cloudy',
        labelMy: 'တိမ်ထူ',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-phon2-4',
        mode: QuantumFlashCardMode.word,
        emoji: '🌬️',
        colorValue: 0xFF94BDFF,
        labelEn: 'Windy',
        labelMy: 'လေတိုက်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-phon2-5',
        mode: QuantumFlashCardMode.word,
        emoji: '⛈️',
        colorValue: 0xFF7271F7,
        labelEn: 'Stormy',
        labelMy: 'မုန်တိုင်း',
      ),
    ],
  ),
  QuantumFlashDeckDef(
    id: 'mock-kg-quantumflash-phonics-3',
    subject: 'phonics',
    grade: Grade.kg,
    titleEn: 'Word Flash: Simple Words',
    titleMy: 'စကားလုံးဖျတ်ခနဲပြပွဲ - လွယ်ကူသောစကားလုံးများ',
    descriptionEn:
        'Watch each simple word\'s picture flash by, then tap the word you just saw.',
    descriptionMy:
        'လွယ်ကူသောစကားလုံး၏ပုံတစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော စကားလုံးကို တို့ပါ။',
    starsReward: 6,
    emoji: '🔤',
    flashIntervalMs: 800,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-kg-phon3-1',
        mode: QuantumFlashCardMode.word,
        emoji: '☀️',
        colorValue: 0xFFFFC93C,
        labelEn: 'Sun',
        labelMy: 'နေ',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-phon3-2',
        mode: QuantumFlashCardMode.word,
        emoji: '🐷',
        colorValue: 0xFFFF9F45,
        labelEn: 'Pig',
        labelMy: 'ဝက်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-phon3-3',
        mode: QuantumFlashCardMode.word,
        emoji: '🎩',
        colorValue: 0xFF7271F7,
        labelEn: 'Hat',
        labelMy: 'ဦးထုပ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-phon3-4',
        mode: QuantumFlashCardMode.word,
        emoji: '☕',
        colorValue: 0xFF94BDFF,
        labelEn: 'Cup',
        labelMy: 'ခွက်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-phon3-5',
        mode: QuantumFlashCardMode.word,
        emoji: '🛏️',
        colorValue: 0xFFB5B557,
        labelEn: 'Bed',
        labelMy: 'အိပ်ရာ',
      ),
    ],
  ),

  // =====================================================================
  // KG -- General Knowledge flash decks (seasons, and a shape+colour combo
  // that steps up from the Nursery shape-only deck)
  // =====================================================================
  QuantumFlashDeckDef(
    id: 'mock-kg-quantumflash-generalknowledge-1',
    subject: 'generalknowledge',
    grade: Grade.kg,
    titleEn: 'Season Flash',
    titleMy: 'ရာသီများ ဖျတ်ခနဲပြပွဲ',
    descriptionEn:
        'Watch each season flash by, then tap the word you just saw.',
    descriptionMy:
        'ရာသီတစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော စကားလုံးကို တို့ပါ။',
    starsReward: 6,
    emoji: '🍂',
    flashIntervalMs: 800,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-kg-gk1-1',
        mode: QuantumFlashCardMode.word,
        emoji: '☀️',
        colorValue: 0xFFFFC93C,
        labelEn: 'Summer',
        labelMy: 'နွေရာသီ',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-gk1-2',
        mode: QuantumFlashCardMode.word,
        emoji: '🌧️',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Rainy Season',
        labelMy: 'မိုးရာသီ',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-gk1-3',
        mode: QuantumFlashCardMode.word,
        emoji: '❄️',
        colorValue: 0xFF94BDFF,
        labelEn: 'Winter',
        labelMy: 'ဆောင်းရာသီ',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-gk1-4',
        mode: QuantumFlashCardMode.word,
        emoji: '🌸',
        colorValue: 0xFFFF7F91,
        labelEn: 'Spring',
        labelMy: 'ပန်းပွင့်ရာသီ',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-gk1-5',
        mode: QuantumFlashCardMode.word,
        emoji: '🍂',
        colorValue: 0xFFB5B557,
        labelEn: 'Autumn',
        labelMy: 'ဆောင်းဦးရာသီ',
      ),
    ],
  ),
  QuantumFlashDeckDef(
    id: 'mock-kg-quantumflash-generalknowledge-2',
    subject: 'generalknowledge',
    grade: Grade.kg,
    titleEn: 'Shape and Colour Flash',
    titleMy: 'ပုံသဏ္ဌာန်နှင့်အရောင် ဖျတ်ခနဲပြပွဲ',
    descriptionEn:
        'Watch each shape and colour flash by, then tap the word you just saw.',
    descriptionMy:
        'ပုံသဏ္ဌာန်နှင့်အရောင်တစ်ခုစီ ဖျတ်ခနဲ ပြသည်ကို ကြည့်ပြီး၊ ခုနက်မြင်ခဲ့သော စကားလုံးကို တို့ပါ။',
    starsReward: 6,
    emoji: '🔷',
    flashIntervalMs: 800,
    cards: [
      QuantumFlashCardItem(
        id: 'qf-kg-gk2-1',
        mode: QuantumFlashCardMode.word,
        emoji: '🔴',
        colorValue: 0xFFE64545,
        labelEn: 'Red Circle',
        labelMy: 'အနီရောင် စက်ဝိုင်း',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-gk2-2',
        mode: QuantumFlashCardMode.word,
        emoji: '🟦',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Blue Square',
        labelMy: 'အပြာရောင် စတုရန်း',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-gk2-3',
        mode: QuantumFlashCardMode.word,
        emoji: '🔺',
        colorValue: 0xFFFF9F45,
        labelEn: 'Orange Triangle',
        labelMy: 'လိမ္မော်ရောင် တြိဂံ',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-gk2-4',
        mode: QuantumFlashCardMode.word,
        emoji: '⭐',
        colorValue: 0xFFFFC93C,
        labelEn: 'Yellow Star',
        labelMy: 'အဝါရောင် ကြယ်',
      ),
      QuantumFlashCardItem(
        id: 'qf-kg-gk2-5',
        mode: QuantumFlashCardMode.word,
        emoji: '💚',
        colorValue: 0xFF4ED87A,
        labelEn: 'Green Heart',
        labelMy: 'အစိမ်းရောင် နှလုံးသား',
      ),
    ],
  ),
];
