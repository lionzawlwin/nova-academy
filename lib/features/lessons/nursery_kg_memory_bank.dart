import '../../models/child_model.dart';
import 'nursery_activity_kind.dart';

/// One concept in a Memory Challenge deck. At render time each pair becomes
/// two face-down cards sharing this same [id]; matching them together wins
/// the pair. Plain Dart, same hand-authored-content convention as
/// `MatchPairItem` in `nursery_kg_activity_bank.dart`.
class MemoryPairItem {
  const MemoryPairItem({
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

  String label(String languageCode) => languageCode == 'my' ? labelMy : labelEn;
}

class NurseryMemoryDef {
  const NurseryMemoryDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.emoji,
    required this.pairs,
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
  final List<MemoryPairItem> pairs;

  static const kind = NurseryActivityKind.memory;
}

const List<MemoryPairItem> fallbackMemoryPairs = [
  MemoryPairItem(
    id: 'sun',
    emoji: '☀️',
    colorValue: 0xFFFFC93C,
    labelEn: 'Sun',
    labelMy: 'နေ',
  ),
  MemoryPairItem(
    id: 'moon',
    emoji: '🌙',
    colorValue: 0xFF7271F7,
    labelEn: 'Moon',
    labelMy: 'လ',
  ),
  MemoryPairItem(
    id: 'star',
    emoji: '⭐',
    colorValue: 0xFFFF8A3D,
    labelEn: 'Star',
    labelMy: 'ကြယ်',
  ),
  MemoryPairItem(
    id: 'cloud',
    emoji: '☁️',
    colorValue: 0xFF4CB6FF,
    labelEn: 'Cloud',
    labelMy: 'မိုးတိမ်',
  ),
];

NurseryMemoryDef? memoryDefForModule(String moduleId) {
  for (final def in nurseryKgMemoryBank) {
    if (def.id == moduleId) return def;
  }
  return null;
}

const List<NurseryMemoryDef> nurseryKgMemoryBank = [
  NurseryMemoryDef(
    id: 'mock-nursery-memory-numbers-1',
    subject: 'math',
    grade: Grade.nursery,
    titleEn: 'Number Match',
    titleMy: 'ဂဏန်း တွဲစုံရှာဂိမ်း',
    descriptionEn: 'Flip cards to find matching number pairs from 1 to 4.',
    descriptionMy: '၁ မှ ၄ အထိ ဂဏန်းတွဲစုံများကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 8,
    emoji: '🔢',
    pairs: [
      MemoryPairItem(
        id: 'num-1',
        emoji: '1️⃣',
        colorValue: 0xFFFF7F91,
        labelEn: 'One',
        labelMy: 'တစ်',
      ),
      MemoryPairItem(
        id: 'num-2',
        emoji: '2️⃣',
        colorValue: 0xFF7271F7,
        labelEn: 'Two',
        labelMy: 'နှစ်',
      ),
      MemoryPairItem(
        id: 'num-3',
        emoji: '3️⃣',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Three',
        labelMy: 'သုံး',
      ),
      MemoryPairItem(
        id: 'num-4',
        emoji: '4️⃣',
        colorValue: 0xFF4CB963,
        labelEn: 'Four',
        labelMy: 'လေး',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-nursery-memory-phonics-1',
    subject: 'phonics',
    grade: Grade.nursery,
    titleEn: 'Letter Friends',
    titleMy: 'အက္ခရာ မိတ်ဆွေများ',
    descriptionEn: 'Flip cards to find matching letter-sound picture pairs.',
    descriptionMy: 'အက္ခရာအသံ ပုံစံတွဲစုံများကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 8,
    emoji: '🔤',
    pairs: [
      MemoryPairItem(
        id: 'letter-a',
        emoji: '🍎',
        colorValue: 0xFFE64545,
        labelEn: 'Apple',
        labelMy: 'ပန်းသီး',
      ),
      MemoryPairItem(
        id: 'letter-b',
        emoji: '⚽',
        colorValue: 0xFF7271F7,
        labelEn: 'Ball',
        labelMy: 'ဘောလုံး',
      ),
      MemoryPairItem(
        id: 'letter-c',
        emoji: '🐱',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Cat',
        labelMy: 'ကြောင်',
      ),
      MemoryPairItem(
        id: 'letter-d',
        emoji: '🐶',
        colorValue: 0xFFB5B557,
        labelEn: 'Dog',
        labelMy: 'ခွေး',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-kg-memory-numbers-1',
    subject: 'math',
    grade: Grade.kg,
    titleEn: 'Counting Pairs',
    titleMy: 'ရေတွက် တွဲစုံများ',
    descriptionEn: 'Flip cards to find matching number pairs from 1 to 6.',
    descriptionMy: '၁ မှ ၆ အထိ ဂဏန်းတွဲစုံများကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 10,
    emoji: '🔢',
    pairs: [
      MemoryPairItem(
        id: 'num-1',
        emoji: '1️⃣',
        colorValue: 0xFFFF7F91,
        labelEn: 'One',
        labelMy: 'တစ်',
      ),
      MemoryPairItem(
        id: 'num-2',
        emoji: '2️⃣',
        colorValue: 0xFF7271F7,
        labelEn: 'Two',
        labelMy: 'နှစ်',
      ),
      MemoryPairItem(
        id: 'num-3',
        emoji: '3️⃣',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Three',
        labelMy: 'သုံး',
      ),
      MemoryPairItem(
        id: 'num-4',
        emoji: '4️⃣',
        colorValue: 0xFF4CB963,
        labelEn: 'Four',
        labelMy: 'လေး',
      ),
      MemoryPairItem(
        id: 'num-5',
        emoji: '5️⃣',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Five',
        labelMy: 'ငါး',
      ),
      MemoryPairItem(
        id: 'num-6',
        emoji: '6️⃣',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Six',
        labelMy: 'ခြောက်',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-kg-memory-phonics-1',
    subject: 'phonics',
    grade: Grade.kg,
    titleEn: 'Animal Sound Pairs',
    titleMy: 'တိရစ္ဆာန် အသံ တွဲစုံများ',
    descriptionEn: 'Flip cards to find each animal\'s matching pair.',
    descriptionMy: 'တိရစ္ဆာန်တစ်ကောင်စီ၏ တွဲစုံကတ်ကို ရှာပါ။',
    starsReward: 10,
    emoji: '🐾',
    pairs: [
      MemoryPairItem(
        id: 'animal-elephant',
        emoji: '🐘',
        colorValue: 0xFF94BDFF,
        labelEn: 'Elephant',
        labelMy: 'ဆင်',
      ),
      MemoryPairItem(
        id: 'animal-fish',
        emoji: '🐟',
        colorValue: 0xFFFF6A65,
        labelEn: 'Fish',
        labelMy: 'ငါး',
      ),
      MemoryPairItem(
        id: 'animal-lion',
        emoji: '🦁',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Lion',
        labelMy: 'ခြင်္သေ့',
      ),
      MemoryPairItem(
        id: 'animal-monkey',
        emoji: '🐵',
        colorValue: 0xFFB5734A,
        labelEn: 'Monkey',
        labelMy: 'မျောက်',
      ),
      MemoryPairItem(
        id: 'animal-rabbit',
        emoji: '🐰',
        colorValue: 0xFFFFFFFF,
        labelEn: 'Rabbit',
        labelMy: 'ယုန်',
      ),
      MemoryPairItem(
        id: 'animal-frog',
        emoji: '🐸',
        colorValue: 0xFF4CB963,
        labelEn: 'Frog',
        labelMy: 'ဖား',
      ),
    ],
  ),
];
