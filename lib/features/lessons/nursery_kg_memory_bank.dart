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
  NurseryMemoryDef(
    id: 'mock-nursery-memory-stem-1',
    subject: 'stem',
    grade: Grade.nursery,
    titleEn: 'Floats or Sinks',
    titleMy: 'မျောနေသလား၊ နစ်နေသလား',
    descriptionEn:
        'Flip cards to find matching pairs of things that float or sink in water.',
    descriptionMy:
        'ရေပေါ်မျောနေသည့် သို့မဟုတ် ရေထဲနစ်နေသည့် အရာများကို ကတ်များလှန်ပြီး တွဲစုံရှာပါ။',
    starsReward: 7,
    emoji: '💧',
    pairs: [
      MemoryPairItem(
        id: 'boat',
        emoji: '🛶',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Boat',
        labelMy: 'လှေ',
      ),
      MemoryPairItem(
        id: 'leaf',
        emoji: '🍃',
        colorValue: 0xFF4CB963,
        labelEn: 'Leaf',
        labelMy: 'အရွက်',
      ),
      MemoryPairItem(
        id: 'rock',
        emoji: '🪨',
        colorValue: 0xFFB5B557,
        labelEn: 'Rock',
        labelMy: 'ကျောက်တုံး',
      ),
      MemoryPairItem(
        id: 'key',
        emoji: '🔑',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Key',
        labelMy: 'သော့',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-kg-memory-stem-1',
    subject: 'stem',
    grade: Grade.kg,
    titleEn: 'Magnet Match',
    titleMy: 'သံလိုက် တွဲစုံရှာဂိမ်း',
    descriptionEn:
        'Flip cards to find matching pairs of things a magnet can pull.',
    descriptionMy:
        'သံလိုက်ဆွဲနိုင်သော အရာများ၏ တွဲစုံကတ်များကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 9,
    emoji: '🧲',
    pairs: [
      MemoryPairItem(
        id: 'nail',
        emoji: '🔩',
        colorValue: 0xFFB5B557,
        labelEn: 'Nail',
        labelMy: 'သံချွန်',
      ),
      MemoryPairItem(
        id: 'paperclip',
        emoji: '📎',
        colorValue: 0xFF7271F7,
        labelEn: 'Paperclip',
        labelMy: 'စာချိတ်',
      ),
      MemoryPairItem(
        id: 'spoon',
        emoji: '🥄',
        colorValue: 0xFF94BDFF,
        labelEn: 'Spoon',
        labelMy: 'ဇွန်း',
      ),
      MemoryPairItem(
        id: 'key',
        emoji: '🔑',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Key',
        labelMy: 'သော့',
      ),
      MemoryPairItem(
        id: 'coin',
        emoji: '🪙',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Coin',
        labelMy: 'ဒင်္ဂါးပြား',
      ),
      MemoryPairItem(
        id: 'fork',
        emoji: '🍴',
        colorValue: 0xFF4CB963,
        labelEn: 'Fork',
        labelMy: 'ခက်ရင်း',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-nursery-memory-coding-1',
    subject: 'coding',
    grade: Grade.nursery,
    titleEn: 'Robot Directions',
    titleMy: 'ရိုဘော့ ဦးတည်ရာများ',
    descriptionEn:
        'Flip cards to find matching pairs of arrows that tell a robot which way to go.',
    descriptionMy:
        'ရိုဘော့ကို လမ်းညွှန်ပေးသည့် မြှားများ၏ တွဲစုံကတ်များကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 7,
    emoji: '🤖',
    pairs: [
      MemoryPairItem(
        id: 'arrow-up',
        emoji: '⬆️',
        colorValue: 0xFFFF7F91,
        labelEn: 'Up',
        labelMy: 'အပေါ်',
      ),
      MemoryPairItem(
        id: 'arrow-down',
        emoji: '⬇️',
        colorValue: 0xFF7271F7,
        labelEn: 'Down',
        labelMy: 'အောက်',
      ),
      MemoryPairItem(
        id: 'arrow-left',
        emoji: '⬅️',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Left',
        labelMy: 'ဘယ်ဘက်',
      ),
      MemoryPairItem(
        id: 'arrow-right',
        emoji: '➡️',
        colorValue: 0xFF4CB963,
        labelEn: 'Right',
        labelMy: 'ညာဘက်',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-kg-memory-coding-1',
    subject: 'coding',
    grade: Grade.kg,
    titleEn: 'Robot Steps',
    titleMy: 'ရိုဘော့ လုပ်ဆောင်ချက်များ',
    descriptionEn:
        'Flip cards to find matching pairs of commands that make a robot start, stop, and move.',
    descriptionMy:
        'ရိုဘော့ကို စတင်စေ၊ ရပ်စေ၊ ရွှေ့စေသည့် ညွှန်ကြားချက်များ၏ တွဲစုံကတ်များကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 9,
    emoji: '🤖',
    pairs: [
      MemoryPairItem(
        id: 'arrow-up',
        emoji: '⬆️',
        colorValue: 0xFFFF7F91,
        labelEn: 'Up',
        labelMy: 'အပေါ်',
      ),
      MemoryPairItem(
        id: 'arrow-down',
        emoji: '⬇️',
        colorValue: 0xFF7271F7,
        labelEn: 'Down',
        labelMy: 'အောက်',
      ),
      MemoryPairItem(
        id: 'arrow-left',
        emoji: '⬅️',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Left',
        labelMy: 'ဘယ်ဘက်',
      ),
      MemoryPairItem(
        id: 'arrow-right',
        emoji: '➡️',
        colorValue: 0xFF4CB963,
        labelEn: 'Right',
        labelMy: 'ညာဘက်',
      ),
      MemoryPairItem(
        id: 'cmd-start',
        emoji: '▶️',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Start',
        labelMy: 'စတင်',
      ),
      MemoryPairItem(
        id: 'cmd-stop',
        emoji: '⏹️',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Stop',
        labelMy: 'ရပ်',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-nursery-memory-engineering-1',
    subject: 'engineering',
    grade: Grade.nursery,
    titleEn: 'Building Tools',
    titleMy: 'အဆောက်အအုံ ကိရိယာများ',
    descriptionEn:
        'Flip cards to find matching pairs of tools used to build things.',
    descriptionMy:
        'အရာဝတ္ထုများ တည်ဆောက်ရန် သုံးသော ကိရိယာများ၏ တွဲစုံကတ်များကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 7,
    emoji: '🧱',
    pairs: [
      MemoryPairItem(
        id: 'hammer',
        emoji: '🔨',
        colorValue: 0xFFE64545,
        labelEn: 'Hammer',
        labelMy: 'တူ',
      ),
      MemoryPairItem(
        id: 'blocks',
        emoji: '🧱',
        colorValue: 0xFFB5734A,
        labelEn: 'Blocks',
        labelMy: 'အုတ်ခဲများ',
      ),
      MemoryPairItem(
        id: 'ladder',
        emoji: '🪜',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Ladder',
        labelMy: 'လှေကား',
      ),
      MemoryPairItem(
        id: 'wheel',
        emoji: '🛞',
        colorValue: 0xFF7271F7,
        labelEn: 'Wheel',
        labelMy: 'ဘီး',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-kg-memory-engineering-1',
    subject: 'engineering',
    grade: Grade.kg,
    titleEn: 'Tall Tower Builders',
    titleMy: 'မျှော်စင် တည်ဆောက်ခြင်း',
    descriptionEn:
        'Flip cards to find matching pairs of things used to build tall towers and bridges.',
    descriptionMy:
        'မျှော်စင်များနှင့် တံတားများ တည်ဆောက်ရာတွင် သုံးသော အရာများ၏ တွဲစုံကတ်များကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 9,
    emoji: '🏗️',
    pairs: [
      MemoryPairItem(
        id: 'blocks',
        emoji: '🧱',
        colorValue: 0xFFB5734A,
        labelEn: 'Blocks',
        labelMy: 'အုတ်ခဲများ',
      ),
      MemoryPairItem(
        id: 'bridge',
        emoji: '🌉',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Bridge',
        labelMy: 'တံတား',
      ),
      MemoryPairItem(
        id: 'crane',
        emoji: '🏗️',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Crane',
        labelMy: 'ကရိန်း',
      ),
      MemoryPairItem(
        id: 'ladder',
        emoji: '🪜',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Ladder',
        labelMy: 'လှေကား',
      ),
      MemoryPairItem(
        id: 'hammer',
        emoji: '🔨',
        colorValue: 0xFFE64545,
        labelEn: 'Hammer',
        labelMy: 'တူ',
      ),
      MemoryPairItem(
        id: 'gear',
        emoji: '⚙️',
        colorValue: 0xFF4CB963,
        labelEn: 'Gear',
        labelMy: 'ဂီယာ',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-nursery-memory-history-1',
    subject: 'history',
    grade: Grade.nursery,
    titleEn: 'Long Ago Friends',
    titleMy: 'ရှေးအခါက မိတ်ဆွေများ',
    descriptionEn:
        'Flip cards to find matching pairs of things from long, long ago.',
    descriptionMy:
        'ကာလကြာရှည်စွာ ရှေးက အသုံးပြုခဲ့သော အရာများ၏ တွဲစုံကတ်များကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 7,
    emoji: '🕰️',
    pairs: [
      MemoryPairItem(
        id: 'grandma',
        emoji: '👵',
        colorValue: 0xFFFF7F91,
        labelEn: 'Grandma',
        labelMy: 'အဖွား',
      ),
      MemoryPairItem(
        id: 'grandpa',
        emoji: '👴',
        colorValue: 0xFF7271F7,
        labelEn: 'Grandpa',
        labelMy: 'အဖိုး',
      ),
      MemoryPairItem(
        id: 'old-clock',
        emoji: '🕰️',
        colorValue: 0xFFB5734A,
        labelEn: 'Old Clock',
        labelMy: 'ရှေးနာရီ',
      ),
      MemoryPairItem(
        id: 'crown',
        emoji: '👑',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Crown',
        labelMy: 'သရဖူ',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-kg-memory-history-1',
    subject: 'history',
    grade: Grade.kg,
    titleEn: 'Long, Long Ago',
    titleMy: 'ကာလအလွန်ကြာသော ရှေးအခါက',
    descriptionEn:
        'Flip cards to find matching pairs of things people used long ago, before today.',
    descriptionMy:
        'ယနေ့မတိုင်မီ ရှေးက လူတို့ အသုံးပြုခဲ့သည့် အရာများ၏ တွဲစုံကတ်များကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 9,
    emoji: '📜',
    pairs: [
      MemoryPairItem(
        id: 'old-clock',
        emoji: '🕰️',
        colorValue: 0xFFB5734A,
        labelEn: 'Old Clock',
        labelMy: 'ရှေးနာရီ',
      ),
      MemoryPairItem(
        id: 'castle',
        emoji: '🏰',
        colorValue: 0xFF94BDFF,
        labelEn: 'Castle',
        labelMy: 'ရဲတိုက်',
      ),
      MemoryPairItem(
        id: 'scroll',
        emoji: '📜',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Scroll',
        labelMy: 'စာလိပ်',
      ),
      MemoryPairItem(
        id: 'candle',
        emoji: '🕯️',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Candle',
        labelMy: 'ဖယောင်းတိုင်',
      ),
      MemoryPairItem(
        id: 'old-ship',
        emoji: '⛵',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Old Ship',
        labelMy: 'ရှေးသင်္ဘော',
      ),
      MemoryPairItem(
        id: 'crown',
        emoji: '👑',
        colorValue: 0xFF7271F7,
        labelEn: 'Crown',
        labelMy: 'သရဖူ',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-nursery-memory-geography-1',
    subject: 'geography',
    grade: Grade.nursery,
    titleEn: 'My World',
    titleMy: 'ကျွန်တော့် ကမ္ဘာလေး',
    descriptionEn: 'Flip cards to find matching pairs of places in nature.',
    descriptionMy: 'သဘာဝထဲက နေရာများ၏ တွဲစုံကတ်များကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 7,
    emoji: '🗺️',
    pairs: [
      MemoryPairItem(
        id: 'mountain',
        emoji: '⛰️',
        colorValue: 0xFFB5B557,
        labelEn: 'Mountain',
        labelMy: 'တောင်',
      ),
      MemoryPairItem(
        id: 'ocean',
        emoji: '🌊',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Ocean',
        labelMy: 'သမုဒ္ဒရာ',
      ),
      MemoryPairItem(
        id: 'forest',
        emoji: '🌳',
        colorValue: 0xFF4CB963,
        labelEn: 'Forest',
        labelMy: 'သစ်တော',
      ),
      MemoryPairItem(
        id: 'island',
        emoji: '🏝️',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Island',
        labelMy: 'ကျွန်း',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-kg-memory-geography-1',
    subject: 'geography',
    grade: Grade.kg,
    titleEn: 'Map My World',
    titleMy: 'ကမ္ဘာလေးကို မြေပုံဆွဲကြမယ်',
    descriptionEn:
        'Flip cards to find matching pairs of places and maps from around the world.',
    descriptionMy:
        'ကမ္ဘာတစ်ဝှမ်းရှိ နေရာများနှင့် မြေပုံများ၏ တွဲစုံကတ်များကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 9,
    emoji: '🌍',
    pairs: [
      MemoryPairItem(
        id: 'mountain',
        emoji: '⛰️',
        colorValue: 0xFFB5B557,
        labelEn: 'Mountain',
        labelMy: 'တောင်',
      ),
      MemoryPairItem(
        id: 'ocean',
        emoji: '🌊',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Ocean',
        labelMy: 'သမုဒ္ဒရာ',
      ),
      MemoryPairItem(
        id: 'desert',
        emoji: '🏜️',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Desert',
        labelMy: 'သဲကန္တာရ',
      ),
      MemoryPairItem(
        id: 'forest',
        emoji: '🌳',
        colorValue: 0xFF4CB963,
        labelEn: 'Forest',
        labelMy: 'သစ်တော',
      ),
      MemoryPairItem(
        id: 'map',
        emoji: '🗺️',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Map',
        labelMy: 'မြေပုံ',
      ),
      MemoryPairItem(
        id: 'flag',
        emoji: '🚩',
        colorValue: 0xFFE64545,
        labelEn: 'Flag',
        labelMy: 'အလံ',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-nursery-memory-computing-1',
    subject: 'computing',
    grade: Grade.nursery,
    titleEn: 'Computer Friends',
    titleMy: 'ကွန်ပျူတာ မိတ်ဆွေများ',
    descriptionEn: 'Flip cards to find matching pairs of computer parts.',
    descriptionMy:
        'ကွန်ပျူတာ အစိတ်အပိုင်းများ၏ တွဲစုံကတ်များကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 7,
    emoji: '💻',
    pairs: [
      MemoryPairItem(
        id: 'computer',
        emoji: '💻',
        colorValue: 0xFF7271F7,
        labelEn: 'Computer',
        labelMy: 'ကွန်ပျူတာ',
      ),
      MemoryPairItem(
        id: 'mouse',
        emoji: '🖱️',
        colorValue: 0xFFB5B557,
        labelEn: 'Mouse',
        labelMy: 'မောက်စ်',
      ),
      MemoryPairItem(
        id: 'keyboard',
        emoji: '⌨️',
        colorValue: 0xFF4CB963,
        labelEn: 'Keyboard',
        labelMy: 'ကီးဘုတ်',
      ),
      MemoryPairItem(
        id: 'screen',
        emoji: '🖥️',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Screen',
        labelMy: 'မျက်နှာပြင်',
      ),
    ],
  ),
  NurseryMemoryDef(
    id: 'mock-kg-memory-computing-1',
    subject: 'computing',
    grade: Grade.kg,
    titleEn: 'My Computer Parts',
    titleMy: 'ကျွန်တော့် ကွန်ပျူတာ အစိတ်အပိုင်းများ',
    descriptionEn:
        'Flip cards to find matching pairs of computer parts and gadgets.',
    descriptionMy:
        'ကွန်ပျူတာ အစိတ်အပိုင်းများနှင့် ပစ္စည်းများ၏ တွဲစုံကတ်များကို ကတ်များလှန်ပြီး ရှာပါ။',
    starsReward: 10,
    emoji: '🖥️',
    pairs: [
      MemoryPairItem(
        id: 'computer',
        emoji: '💻',
        colorValue: 0xFF7271F7,
        labelEn: 'Computer',
        labelMy: 'ကွန်ပျူတာ',
      ),
      MemoryPairItem(
        id: 'mouse',
        emoji: '🖱️',
        colorValue: 0xFFB5B557,
        labelEn: 'Mouse',
        labelMy: 'မောက်စ်',
      ),
      MemoryPairItem(
        id: 'keyboard',
        emoji: '⌨️',
        colorValue: 0xFF4CB963,
        labelEn: 'Keyboard',
        labelMy: 'ကီးဘုတ်',
      ),
      MemoryPairItem(
        id: 'screen',
        emoji: '🖥️',
        colorValue: 0xFF4CB6FF,
        labelEn: 'Screen',
        labelMy: 'မျက်နှာပြင်',
      ),
      MemoryPairItem(
        id: 'headphones',
        emoji: '🎧',
        colorValue: 0xFFFF8A3D,
        labelEn: 'Headphones',
        labelMy: 'နားကြပ်',
      ),
      MemoryPairItem(
        id: 'printer',
        emoji: '🖨️',
        colorValue: 0xFFE64545,
        labelEn: 'Printer',
        labelMy: 'ပရင်တာ',
      ),
    ],
  ),
];
