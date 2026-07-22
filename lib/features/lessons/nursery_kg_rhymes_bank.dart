import '../../models/child_model.dart';
import 'nursery_activity_kind.dart';

/// One line of a sing-along rhyme, highlighted in turn as `TtsService`
/// reads it during "sing along" playback.
class RhymeLine {
  const RhymeLine({
    required this.emoji,
    required this.textEn,
    required this.textMy,
  });

  final String emoji;
  final String textEn;
  final String textMy;

  String text(String languageCode) => languageCode == 'my' ? textMy : textEn;
}

class NurseryRhymeDef {
  const NurseryRhymeDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.emoji,
    required this.lines,
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
  final List<RhymeLine> lines;

  static const kind = NurseryActivityKind.rhymes;
}

const List<RhymeLine> fallbackRhymeLines = [
  RhymeLine(
    emoji: '⭐',
    textEn: 'Twinkle, twinkle, little star,',
    textMy: 'တောက်ပတောက်ပ ကြယ်ငယ်လေး၊',
  ),
  RhymeLine(
    emoji: '🌌',
    textEn: 'How I wonder what you are!',
    textMy: 'သင်ဘယ်လိုအရာလဲလို့ စဉ်းစားမိပါတယ်!',
  ),
  RhymeLine(
    emoji: '🌠',
    textEn: 'Up above the world so high,',
    textMy: 'ကမ္ဘာအထက် မြင့်စွာ၊',
  ),
  RhymeLine(
    emoji: '💎',
    textEn: 'Like a diamond in the sky.',
    textMy: 'ကောင်းကင်ထဲက စိန်တစ်လုံးလိုပါပဲ။',
  ),
];

NurseryRhymeDef? rhymeDefForModule(String moduleId) {
  for (final def in nurseryKgRhymesBank) {
    if (def.id == moduleId) return def;
  }
  return null;
}

const List<NurseryRhymeDef> nurseryKgRhymesBank = [
  NurseryRhymeDef(
    id: 'mock-nursery-rhyme-art-1',
    subject: 'art',
    grade: Grade.nursery,
    titleEn: 'Twinkle, Twinkle, Little Star',
    titleMy: 'တောက်ပတောက်ပ ကြယ်ငယ်လေး',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 8,
    emoji: '⭐',
    lines: fallbackRhymeLines,
  ),
  NurseryRhymeDef(
    id: 'mock-nursery-rhyme-art-2',
    subject: 'art',
    grade: Grade.nursery,
    titleEn: 'Row, Row, Row Your Boat',
    titleMy: 'ချစီး ချစီး လှေလှော်ပါ',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 8,
    emoji: '🚣',
    lines: [
      RhymeLine(
        emoji: '🚣',
        textEn: 'Row, row, row your boat,',
        textMy: 'ချစီး ချစီး လှေလှော်ပါ၊',
      ),
      RhymeLine(
        emoji: '🌊',
        textEn: 'Gently down the stream.',
        textMy: 'ချောင်းအောက်ကို ညင်သာစွာ။',
      ),
      RhymeLine(
        emoji: '😄',
        textEn: 'Merrily, merrily, merrily, merrily,',
        textMy: 'ပျော်ရွှင်စွာ ပျော်ရွှင်စွာ၊',
      ),
      RhymeLine(
        emoji: '💭',
        textEn: 'Life is but a dream.',
        textMy: 'ဘဝဆိုတာ အိပ်မက်တစ်ခုပါပဲ။',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-kg-rhyme-art-1',
    subject: 'art',
    grade: Grade.kg,
    titleEn: 'The Wheels on the Bus',
    titleMy: 'ဘတ်စ်ကားရဲ့ ဘီးများ',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 10,
    emoji: '🚌',
    lines: [
      RhymeLine(
        emoji: '🚌',
        textEn: 'The wheels on the bus go round and round,',
        textMy: 'ဘတ်စ်ကားရဲ့ ဘီးများသည် လှည့်နေသည် လှည့်နေသည်၊',
      ),
      RhymeLine(
        emoji: '🔄',
        textEn: 'Round and round, round and round.',
        textMy: 'လှည့်နေသည် လှည့်နေသည်၊ လှည့်နေသည် လှည့်နေသည်။',
      ),
      RhymeLine(
        emoji: '🚌',
        textEn: 'The wheels on the bus go round and round,',
        textMy: 'ဘတ်စ်ကားရဲ့ ဘီးများသည် လှည့်နေသည် လှည့်နေသည်၊',
      ),
      RhymeLine(
        emoji: '🏙️',
        textEn: 'All through the town.',
        textMy: 'မြို့တစ်ခုလုံးတွင်။',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-kg-rhyme-art-2',
    subject: 'art',
    grade: Grade.kg,
    titleEn: 'If You\'re Happy and You Know It',
    titleMy: 'သင် ပျော်ရွှင်ပြီး သိလျှင်',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 10,
    emoji: '👏',
    lines: [
      RhymeLine(
        emoji: '👏',
        textEn: 'If you\'re happy and you know it, clap your hands.',
        textMy: 'သင် ပျော်ရွှင်ပြီး သိလျှင် သင့်လက်များကို ခုတ်ပါ။',
      ),
      RhymeLine(
        emoji: '👏',
        textEn: 'If you\'re happy and you know it, clap your hands.',
        textMy: 'သင် ပျော်ရွှင်ပြီး သိလျှင် သင့်လက်များကို ခုတ်ပါ။',
      ),
      RhymeLine(
        emoji: '😊',
        textEn:
            'If you\'re happy and you know it, then your face will surely show it,',
        textMy: 'သင် ပျော်ရွှင်ပြီး သိလျှင် သင့်မျက်နှာက အမှန်ပြပါလိမ့်မယ်၊',
      ),
      RhymeLine(
        emoji: '👏',
        textEn: 'If you\'re happy and you know it, clap your hands.',
        textMy: 'သင် ပျော်ရွှင်ပြီး သိလျှင် သင့်လက်များကို ခုတ်ပါ။',
      ),
    ],
  ),
];
