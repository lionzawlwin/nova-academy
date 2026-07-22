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
  NurseryRhymeDef(
    id: 'mock-nursery-rhymes-stem-1',
    subject: 'stem',
    grade: Grade.nursery,
    titleEn: 'Floating and Sinking',
    titleMy: 'မျောခြင်းနှင့် နစ်ခြင်း',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 7,
    emoji: '🛟',
    lines: [
      RhymeLine(
        emoji: '🛟',
        textEn: 'Does it float or does it sink?',
        textMy: 'ဒါက မျောလား နစ်လား စဉ်းစားကြည့်ရအောင်။',
      ),
      RhymeLine(
        emoji: '🍂',
        textEn: 'A little leaf floats on the water,',
        textMy: 'အရွက်ငယ်လေးက ရေပေါ်မှာ မျောနေတယ်၊',
      ),
      RhymeLine(
        emoji: '🪨',
        textEn: 'A heavy stone sinks down below,',
        textMy: 'ကျောက်ဆောင်လေးက ရေအောက်ကို နစ်သွားတယ်၊',
      ),
      RhymeLine(
        emoji: '💧',
        textEn: 'Splash and see what you can find!',
        textMy: 'ရေထဲ ပက်ပက်ချက်ချက် လုပ်ပြီး ကြည့်ကြရအောင်!',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-kg-rhymes-stem-1',
    subject: 'stem',
    grade: Grade.kg,
    titleEn: 'Magnets Pull!',
    titleMy: 'သံလိုက်ရဲ့ ဆွဲအား',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 9,
    emoji: '🧲',
    lines: [
      RhymeLine(
        emoji: '🧲',
        textEn: 'A magnet is a special stone,',
        textMy: 'သံလိုက်ဆိုတာ အထူးကျောက်တစ်မျိုးပါ၊',
      ),
      RhymeLine(
        emoji: '🔩',
        textEn: 'It pulls the metal, nail and pin,',
        textMy: 'သံချောင်းနဲ့ ချွန်ဖျားတွေကို ဆွဲယူတတ်တယ်၊',
      ),
      RhymeLine(
        emoji: '🪵',
        textEn: 'But wood and paper stay quite still,',
        textMy: 'ဒါပေမဲ့ သစ်သားနဲ့ စက္ကူတွေကတော့ မလှုပ်ဘူး၊',
      ),
      RhymeLine(
        emoji: '✨',
        textEn: 'Watch them stick like magic glue!',
        textMy: 'မှော်ကော်ပမာ ကပ်နေတာကို ကြည့်ကြပါ!',
      ),
      RhymeLine(
        emoji: '🔍',
        textEn: 'Let\'s test and see what magnets do.',
        textMy: 'သံလိုက် ဘာလုပ်နိုင်လဲ စမ်းသပ်ကြည့်ကြရအောင်။',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-nursery-rhymes-coding-1',
    subject: 'coding',
    grade: Grade.nursery,
    titleEn: 'First, Then, Next!',
    titleMy: 'ပထမ၊ ပြီးရင်၊ နောက်တစ်ဆင့်!',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 7,
    emoji: '🐾',
    lines: [
      RhymeLine(
        emoji: '⏰',
        textEn: 'First we wake up, rub our eyes,',
        textMy: 'ပထမဆုံး နိုးထလိုက်ပြီး မျက်စိကို ပွတ်ကြပါ၊',
      ),
      RhymeLine(
        emoji: '🪥',
        textEn: 'Then we brush our teeth so bright,',
        textMy: 'ပြီးရင် သွားတွေကို တောက်ပအောင် တိုက်ကြပါ၊',
      ),
      RhymeLine(
        emoji: '👕',
        textEn: 'Next we put our clothes on tight,',
        textMy: 'နောက်တစ်ဆင့် အဝတ်တွေကို ဝတ်ကြပါ၊',
      ),
      RhymeLine(
        emoji: '🎉',
        textEn: 'Last we\'re ready, what a sight!',
        textMy: 'နောက်ဆုံးတော့ အဆင်သင့်ဖြစ်ပြီ၊ ဝမ်းသာစရာပဲ!',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-kg-rhymes-coding-1',
    subject: 'coding',
    grade: Grade.kg,
    titleEn: 'Steps to the Treasure',
    titleMy: 'ရတနာဆီသို့ ခြေလှမ်းများ',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 9,
    emoji: '🗺️',
    lines: [
      RhymeLine(
        emoji: '👣',
        textEn: 'Step one, walk forward, one two three,',
        textMy: 'ပထမခြေလှမ်း၊ ရှေ့ကို လှမ်းပါ၊ တစ်နှစ်သုံး၊',
      ),
      RhymeLine(
        emoji: '↪️',
        textEn: 'Step two, turn right and look and see,',
        textMy: 'ဒုတိယခြေလှမ်း၊ ညာဘက်လှည့်ပြီး ကြည့်ပါ၊',
      ),
      RhymeLine(
        emoji: '👣',
        textEn: 'Step three, walk forward, one two three,',
        textMy: 'တတိယခြေလှမ်း၊ ရှေ့ကို ထပ်လှမ်းပါ၊',
      ),
      RhymeLine(
        emoji: '↩️',
        textEn: 'Step four, turn left, almost free,',
        textMy: 'စတုတ္ထခြေလှမ်း၊ ဘယ်ဘက်လှည့်ပါ၊ ကပ်လုပြီ၊',
      ),
      RhymeLine(
        emoji: '🎁',
        textEn: 'Follow the steps to find the prize!',
        textMy: 'ခြေလှမ်းအတိုင်း လိုက်လုပ်ပြီး ဆုလက်ဆောင် ရှာကြပါ!',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-nursery-rhymes-engineering-1',
    subject: 'engineering',
    grade: Grade.nursery,
    titleEn: 'Build a Tower',
    titleMy: 'ရဲတိုက်တစ်ခု တည်ဆောက်ကြရအောင်',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 7,
    emoji: '🧱',
    lines: [
      RhymeLine(
        emoji: '🧱',
        textEn: 'One block, two blocks, stack them high,',
        textMy: 'အုတ်တစ်ချပ်၊ အုတ်နှစ်ချပ်၊ မြင့်အောင် ဆင့်ကြပါ၊',
      ),
      RhymeLine(
        emoji: '🏗️',
        textEn: 'Three blocks, four blocks, touch the sky,',
        textMy: 'အုတ်သုံးချပ်၊ အုတ်လေးချပ်၊ မိုးကောင်းကင်ထိအောင်၊',
      ),
      RhymeLine(
        emoji: '💥',
        textEn: 'Oops, it wobbles, down it falls,',
        textMy: 'အယ် လှုပ်သွားပြီ၊ ပြိုကျသွားပြီ၊',
      ),
      RhymeLine(
        emoji: '🔨',
        textEn: 'Let\'s build it stronger, brick by brick.',
        textMy: 'ခိုင်ခံ့အောင် ပြန်တည်ဆောက်ကြရအောင်၊ အုတ်တစ်ချပ်ချင်း။',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-kg-rhymes-engineering-1',
    subject: 'engineering',
    grade: Grade.kg,
    titleEn: 'Build a Bridge',
    titleMy: 'တံတားတစ်စင်း တည်ဆောက်ကြရအောင်',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 9,
    emoji: '🌉',
    lines: [
      RhymeLine(
        emoji: '🌊',
        textEn: 'There\'s a river, wide and blue,',
        textMy: 'ချောင်းငယ်တစ်ခု ကျယ်ပြီး အပြာရောင်၊',
      ),
      RhymeLine(
        emoji: '🌉',
        textEn: 'We need a bridge to cross it too,',
        textMy: 'ဒီဘက်ကနေ ဟိုဘက်ကို ကူးဖို့ တံတားလိုတယ်၊',
      ),
      RhymeLine(
        emoji: '🪵',
        textEn: 'Sticks and blocks, lay them flat,',
        textMy: 'တုတ်ချောင်းနဲ့ အုတ်တွေကို ညီညာအောင် ချထားပါ၊',
      ),
      RhymeLine(
        emoji: '🚗',
        textEn: 'Strong and steady, just like that,',
        textMy: 'ခိုင်ခံ့ တည်ငြိမ်အောင် ဒီလိုပဲ ဆောက်လိုက်ပါ၊',
      ),
      RhymeLine(
        emoji: '🎉',
        textEn: 'Cars can cross the bridge we made!',
        textMy: 'ကျွန်တော်တို့ ဆောက်ထားတဲ့ တံတားပေါ်က ကားတွေ ဖြတ်သန်းနိုင်ပြီ!',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-nursery-rhymes-history-1',
    subject: 'history',
    grade: Grade.nursery,
    titleEn: 'Long, Long Ago',
    titleMy: 'အလွန်ကြာလှပြီ ရှေးအခါက',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 7,
    emoji: '👵',
    lines: [
      RhymeLine(
        emoji: '👵',
        textEn: 'Grandma and grandpa are very old,',
        textMy: 'အဖွားနဲ့ အဖိုးက အသက်ကြီးပါပြီ၊',
      ),
      RhymeLine(
        emoji: '📖',
        textEn: 'They tell us stories from long ago,',
        textMy: 'ရှေးအခါက ဖြစ်ခဲ့တဲ့ ပုံပြင်တွေကို ပြောပြကြတယ်၊',
      ),
      RhymeLine(
        emoji: '🕯️',
        textEn: 'No lights, no cars, so long ago,',
        textMy: 'မီးလင်းရာမရှိ ကားလည်း မရှိခဲ့ဘူး၊ ရှေးအခါက၊',
      ),
      RhymeLine(
        emoji: '💛',
        textEn: 'We love to hear the stories they know.',
        textMy:
            'သူတို့သိထားတဲ့ ပုံပြင်တွေကို ကြားရရင် ကျွန်တော်တို့ ဝမ်းသာကြတယ်။',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-kg-rhymes-history-1',
    subject: 'history',
    grade: Grade.kg,
    titleEn: 'Old and New',
    titleMy: 'ဟောင်းနှင့် သစ်',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 9,
    emoji: '📜',
    lines: [
      RhymeLine(
        emoji: '📜',
        textEn: 'Long ago, they wrote with a quill,',
        textMy: 'ရှေးအခါက ငှက်လင်းတောင်ခြင်းနဲ့ စာရေးခဲ့ကြတယ်၊',
      ),
      RhymeLine(
        emoji: '📱',
        textEn: 'Now we type on a phone or tap a screen,',
        textMy: 'အခုတော့ ဖုန်းနဲ့ စာစီပြီး မျက်နှာပြင်ကို တို့ကြတယ်၊',
      ),
      RhymeLine(
        emoji: '🐎',
        textEn: 'Long ago, a horse pulled the cart,',
        textMy: 'ရှေးအခါက မြင်းက လှည်းကို ဆွဲခဲ့ကြတယ်၊',
      ),
      RhymeLine(
        emoji: '🚗',
        textEn: 'Now a car can zoom right past,',
        textMy: 'အခုတော့ ကားက ပြေးလွှားနိုင်ပါတယ်၊',
      ),
      RhymeLine(
        emoji: '🕰️',
        textEn: 'Things change over time, old and new!',
        textMy:
            'အချိန်ကြာလာတာနဲ့အမျှ အရာအားလုံး ပြောင်းလဲကြတယ်၊ ဟောင်းနဲ့ သစ်!',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-nursery-rhymes-geography-1',
    subject: 'geography',
    grade: Grade.nursery,
    titleEn: 'Mountains and Oceans',
    titleMy: 'တောင်များနှင့် သမုဒ္ဒရာများ',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 7,
    emoji: '🏔️',
    lines: [
      RhymeLine(
        emoji: '🏔️',
        textEn: 'A mountain is tall, up in the sky,',
        textMy: 'တောင်တစ်လုံးက မြင့်တယ်၊ ကောင်းကင်ဆီရောက်အောင်၊',
      ),
      RhymeLine(
        emoji: '🌊',
        textEn: 'The ocean is big, and oh so wide,',
        textMy: 'သမုဒ္ဒရာက ကြီးမားပြီး အလွန်ကျယ်ပြန့်တယ်၊',
      ),
      RhymeLine(
        emoji: '🌳',
        textEn: 'A forest is green, with trees so tall,',
        textMy: 'တောကြီးက စိမ်းလန်းပြီး သစ်ပင်တွေ မြင့်တယ်၊',
      ),
      RhymeLine(
        emoji: '🌍',
        textEn: 'This is our world, home to us all!',
        textMy: 'ဒါက ကျွန်တော်တို့ရဲ့ ကမ္ဘာလေးပါ၊ အားလုံးအတွက် အိမ်ပါပဲ!',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-kg-rhymes-geography-1',
    subject: 'geography',
    grade: Grade.kg,
    titleEn: 'My Country on the Map',
    titleMy: 'မြေပုံပေါ်က ကျွန်တော်တို့နိုင်ငံ',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 9,
    emoji: '🗺️',
    lines: [
      RhymeLine(
        emoji: '🗺️',
        textEn: 'Here\'s a map, so let\'s take a look,',
        textMy: 'ဒီမှာ မြေပုံတစ်ခုရှိတယ်၊ ကြည့်ကြရအောင်၊',
      ),
      RhymeLine(
        emoji: '🏞️',
        textEn: 'It shows our country, rivers and hills,',
        textMy: 'ကျွန်တော်တို့နိုင်ငံ၊ မြစ်တွေနဲ့ တောင်ကုန်းတွေကို ပြသတယ်၊',
      ),
      RhymeLine(
        emoji: '🏙️',
        textEn: 'Cities and villages, big and small,',
        textMy: 'မြို့ကြီးများနဲ့ ရွာလေးများ၊ ကြီးရော သေးရော၊',
      ),
      RhymeLine(
        emoji: '🇲🇲',
        textEn: 'Myanmar is the country we call our home,',
        textMy: 'မြန်မာနိုင်ငံဟာ ကျွန်တော်တို့ အိမ်လို့ခေါ်တဲ့ နိုင်ငံပါ၊',
      ),
      RhymeLine(
        emoji: '🌏',
        textEn: 'And it\'s part of one big world we roam.',
        textMy:
            'ကျွန်တော်တို့ သွားလာနေတဲ့ ကမ္ဘာကြီးရဲ့ အစိတ်အပိုင်းလည်း ဖြစ်ပါတယ်။',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-nursery-rhymes-computing-1',
    subject: 'computing',
    grade: Grade.nursery,
    titleEn: 'Tap, Tap, Tap!',
    titleMy: 'တို့ တို့ တို့!',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 7,
    emoji: '💻',
    lines: [
      RhymeLine(
        emoji: '🖥️',
        textEn: 'This is a screen, so bright and wide,',
        textMy: 'ဒါက မျက်နှာပြင်ပါ၊ တောက်ပပြီး ကျယ်ပြန့်တယ်၊',
      ),
      RhymeLine(
        emoji: '⌨️',
        textEn: 'This is a keyboard, letters inside,',
        textMy: 'ဒါက ကီးဘုတ်ပါ၊ အက္ခရာတွေ ပါဝင်တယ်၊',
      ),
      RhymeLine(
        emoji: '🖱️',
        textEn: 'This is a mouse, click click click,',
        textMy: 'ဒါက မောက်စ်ပါ၊ နှိပ် နှိပ် နှိပ်၊',
      ),
      RhymeLine(
        emoji: '👆',
        textEn: 'Tap the picture, watch it appear quick!',
        textMy: 'ပုံလေးကို တို့ကြည့်ပါ၊ လျင်မြန်စွာ ပေါ်လာတာကို ကြည့်ကြပါ!',
      ),
    ],
  ),
  NurseryRhymeDef(
    id: 'mock-kg-rhymes-computing-1',
    subject: 'computing',
    grade: Grade.kg,
    titleEn: 'My First Computer Game',
    titleMy: 'ကျွန်တော့်ရဲ့ ပထမဆုံး ကွန်ပျူတာဂိမ်း',
    descriptionEn: 'Sing along as each line lights up.',
    descriptionMy: 'လိုင်းတစ်ခုချင်း တောက်ပလာသည်နှင့်အမျှ အတူတကွ သီဆိုပါ။',
    starsReward: 9,
    emoji: '🖱️',
    lines: [
      RhymeLine(
        emoji: '🔌',
        textEn: 'Press the button, watch it glow,',
        textMy: 'ခလုတ်ကို နှိပ်လိုက်ပါ၊ မီးလင်းလာတာကို ကြည့်ပါ၊',
      ),
      RhymeLine(
        emoji: '🖥️',
        textEn: 'The screen wakes up, ready to go,',
        textMy: 'မျက်နှာပြင်က နိုးထလာပြီ၊ အသင့်ဖြစ်နေပြီ၊',
      ),
      RhymeLine(
        emoji: '🖱️',
        textEn: 'Move the mouse and click just right,',
        textMy: 'မောက်စ်ကို ရွှေ့ပြီး မှန်အောင် နှိပ်ပါ၊',
      ),
      RhymeLine(
        emoji: '🧩',
        textEn: 'Drag the pieces, hold them tight,',
        textMy: 'အစိတ်အပိုင်းတွေကို ဆွဲယူပြီး မြဲမြဲကိုင်ပါ၊',
      ),
      RhymeLine(
        emoji: '💾',
        textEn: 'Save your work before you\'re done!',
        textMy: 'မပြီးခင် သင့်အလုပ်ကို သိမ်းဆည်းထားပါ!',
      ),
    ],
  ),
];
