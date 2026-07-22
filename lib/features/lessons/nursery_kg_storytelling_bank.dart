import '../../models/child_model.dart';
import 'nursery_activity_kind.dart';

/// One page of an Interactive Storytelling book: a big representative emoji
/// "illustration" (no image assets -- same zero-asset convention as every
/// other Nursery/KG bank) plus one short bilingual line of narration, read
/// aloud via `TtsService` as the page opens.
class StoryPage {
  const StoryPage({
    required this.emoji,
    required this.textEn,
    required this.textMy,
  });

  final String emoji;
  final String textEn;
  final String textMy;

  String text(String languageCode) => languageCode == 'my' ? textMy : textEn;
}

class NurseryStoryDef {
  const NurseryStoryDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.emoji,
    required this.pages,
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
  final List<StoryPage> pages;

  static const kind = NurseryActivityKind.storytelling;
}

const List<StoryPage> fallbackStoryPages = [
  StoryPage(
    emoji: '🌱',
    textEn: 'A tiny seed rests in the warm soil.',
    textMy: 'မျိုးစေ့ငယ်လေးတစ်ခုသည် နွေးထွေးသော မြေဆီလွှာထဲတွင် နားနေသည်။',
  ),
  StoryPage(
    emoji: '🌧️',
    textEn: 'Rain falls, and the seed drinks it up.',
    textMy: 'မိုးရွာသောအခါ မျိုးစေ့သည် ရေကို သောက်သုံးသည်။',
  ),
  StoryPage(
    emoji: '🌻',
    textEn: 'A tall sunflower grows toward the sun!',
    textMy: 'နေကြီးပန်းအရပ်ရှည်တစ်ပင် နေဘက်သို့ ကြီးထွားလာသည်!',
  ),
];

NurseryStoryDef? storyDefForModule(String moduleId) {
  for (final def in nurseryKgStorytellingBank) {
    if (def.id == moduleId) return def;
  }
  return null;
}

const List<NurseryStoryDef> nurseryKgStorytellingBank = [
  NurseryStoryDef(
    id: 'mock-nursery-story-gk-1',
    subject: 'generalknowledge',
    grade: Grade.nursery,
    titleEn: 'The Tiny Seed',
    titleMy: 'မျိုးစေ့ငယ်လေး',
    descriptionEn: 'Tap through the pages to follow a seed as it grows.',
    descriptionMy:
        'မျိုးစေ့တစ်ခု ကြီးထွားလာပုံကို လိုက်ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 8,
    emoji: '🌻',
    pages: fallbackStoryPages,
  ),
  NurseryStoryDef(
    id: 'mock-nursery-story-gk-2',
    subject: 'generalknowledge',
    grade: Grade.nursery,
    titleEn: 'Bunny\'s Busy Day',
    titleMy: 'ယုန်ငယ်၏ အလုပ်များသော တစ်နေ့',
    descriptionEn: 'Tap through the pages to follow Bunny around the garden.',
    descriptionMy:
        'ယုန်ငယ်ကို ဥယျာဉ်ထဲ လိုက်ပါသွားရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 8,
    emoji: '🐰',
    pages: [
      StoryPage(
        emoji: '🐰',
        textEn: 'Bunny wakes up and stretches in the morning sun.',
        textMy: 'ယုန်ငယ်သည် မနက်ခင်း နေရောင်ခြည်ထဲတွင် နိုးထပြီး ကိုယ်ဆန့်သည်။',
      ),
      StoryPage(
        emoji: '🥕',
        textEn: 'She hops to the garden to find a crunchy carrot.',
        textMy:
            'သူမသည် ဂွမ်းပြီးသော ကැරရုတ်တစ်ချောင်းကို ရှာဖို့ ဥယျာဉ်ထဲသို့ ခုန်သွားသည်။',
      ),
      StoryPage(
        emoji: '💧',
        textEn: 'Bunny waters the little flowers with a small can.',
        textMy: 'ယုန်ငယ်သည် ခွက်ငယ်တစ်ခုဖြင့် ပန်းငယ်များကို ရေလောင်းပေးသည်။',
      ),
      StoryPage(
        emoji: '😴',
        textEn: 'When the sun sets, Bunny hops home to sleep.',
        textMy: 'နေဝင်သွားသောအခါ ယုန်ငယ်သည် အိပ်ရန် အိမ်သို့ ခုန်ပြန်သွားသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-story-gk-1',
    subject: 'generalknowledge',
    grade: Grade.kg,
    titleEn: 'The Three Little Clouds',
    titleMy: 'မိုးတိမ်ငယ် သုံးခု',
    descriptionEn: 'Tap through the pages to see how the weather changes.',
    descriptionMy:
        'ရာသီဥတု ဘယ်လိုပြောင်းလဲလာသလဲကို ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 10,
    emoji: '☁️',
    pages: [
      StoryPage(
        emoji: '☀️',
        textEn: 'The sky is bright blue, with just three little clouds.',
        textMy:
            'ကောင်းကင်သည် တောက်ပသော အပြာရောင်ဖြစ်ပြီး မိုးတိမ်ငယ် သုံးခုသာ ရှိသည်။',
      ),
      StoryPage(
        emoji: '☁️',
        textEn: 'The clouds grow bigger and turn a soft grey.',
        textMy:
            'မိုးတိမ်များသည် ပိုကြီးလာပြီး ပျော့ပျောင်းသော မီးခိုးရောင်သို့ ပြောင်းသွားသည်။',
      ),
      StoryPage(
        emoji: '🌧️',
        textEn: 'Rain falls softly on the green fields below.',
        textMy:
            'အောက်ရှိ စိမ်းလန်းသော လယ်ကွင်းများပေါ်တွင် မိုးသည် ညင်သာစွာ ရွာသွန်းသည်။',
      ),
      StoryPage(
        emoji: '🌈',
        textEn: 'When the sun peeks back out, a bright rainbow appears!',
        textMy: 'နေသည် ပြန်လည်ထွက်ပေါ်လာသောအခါ တောက်ပသော သက်တံတစ်ခု ပေါ်လာသည်!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-story-gk-2',
    subject: 'generalknowledge',
    grade: Grade.kg,
    titleEn: 'Sharing at the Playground',
    titleMy: 'ကစားကွင်းတွင် မျှဝေခြင်း',
    descriptionEn:
        'Tap through the pages to see how two friends learn to share.',
    descriptionMy:
        'မိတ်ဆွေနှစ်ဦး မျှဝေတတ်လာပုံကို ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 10,
    emoji: '🛝',
    pages: [
      StoryPage(
        emoji: '🧒',
        textEn: 'Mya wants to play with the only ball at the playground.',
        textMy: 'မြသည် ကစားကွင်းရှိ တစ်လုံးတည်းသော ဘောလုံးဖြင့် ကစားချင်သည်။',
      ),
      StoryPage(
        emoji: '👧',
        textEn: 'Su Su wants to play with the same ball too.',
        textMy: 'စုစုသည်လည်း ထိုဘောလုံးအတူတူဖြင့် ကစားချင်သည်။',
      ),
      StoryPage(
        emoji: '🤝',
        textEn: 'They decide to take turns and play together instead.',
        textMy: 'သူတို့နှစ်ဦးသည် အလှည့်ကျ အတူတကွ ကစားရန် ဆုံးဖြတ်ကြသည်။',
      ),
      StoryPage(
        emoji: '😄',
        textEn: 'Sharing made the game twice as much fun!',
        textMy: 'မျှဝေခြင်းက ဂိမ်းကို နှစ်ဆပိုစိတ်ဝင်စားစေခဲ့သည်!',
      ),
    ],
  ),
];
