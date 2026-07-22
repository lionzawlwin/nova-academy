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
];
