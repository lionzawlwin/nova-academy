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
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-stem-1',
    subject: 'stem',
    grade: Grade.nursery,
    titleEn: 'Floats or Sinks?',
    titleMy: 'ရေပေါ်သလား ရေနစ်သလား',
    descriptionEn:
        'Tap through the pages to see which things float and which things sink.',
    descriptionMy:
        'ဘယ်အရာတွေ ရေပေါ်ပြီး ဘယ်အရာတွေ ရေနစ်သလဲ ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 6,
    emoji: '🛁',
    pages: [
      StoryPage(
        emoji: '🪨',
        textEn: 'A heavy rock drops into the water and sinks straight down.',
        textMy: 'လေးလံသောကျောက်ခဲသည် ရေထဲသို့ကျပြီး တည့်တည့်နစ်သွားသည်။',
      ),
      StoryPage(
        emoji: '🍂',
        textEn: 'A light leaf lands on the water and floats on top.',
        textMy: 'ပေါ့ပါးသောအရွက်သည် ရေပေါ်သို့ကျပြီး ပေါ်လျက်ရှိသည်။',
      ),
      StoryPage(
        emoji: '⚽',
        textEn: 'The bouncy ball floats too, bobbing up and down.',
        textMy: 'ခုန်တတ်သောဘောလုံးသည်လည်း ပေါ်လျက် အပေါ်အောက် လှုပ်နေသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-stem-1',
    subject: 'stem',
    grade: Grade.kg,
    titleEn: "The Magnet's Magic",
    titleMy: 'သံလိုက်၏ မှော်ဆန်းမှု',
    descriptionEn:
        'Tap through the pages to see what the magnet can and cannot pull.',
    descriptionMy:
        'သံလိုက်က ဘာတွေကို ဆွဲယူနိုင်ပြီး ဘာတွေကို ဆွဲမယူနိုင်ဘူးဆိုတာ ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 8,
    emoji: '🧲',
    pages: [
      StoryPage(
        emoji: '🧲',
        textEn: 'Nyein finds a big red magnet on the table.',
        textMy:
            'ငြိမ်းသည် စားပွဲပေါ်တွင် အနီရောင်သံလိုက်ကြီးတစ်ခုကို တွေ့ရသည်။',
      ),
      StoryPage(
        emoji: '🥄',
        textEn: 'He holds it near a metal spoon, and the spoon jumps to stick!',
        textMy:
            'သူသည် သံဇွန်းတစ်ချောင်းအနီးသို့ ကပ်ကြည့်လိုက်ရာ ဇွန်းသည် ခုန်ကပ်သွားသည်!',
      ),
      StoryPage(
        emoji: '🧸',
        textEn: 'He tries it on his soft teddy bear, but nothing happens.',
        textMy:
            'သူသည် ပျော့ပျောင်းသော ဝက်ဝံရုပ်ကလေးကို စမ်းကြည့်သော်လည်း ဘာမှမဖြစ်ပါ။',
      ),
      StoryPage(
        emoji: '🖇️',
        textEn: 'Then he finds a tiny paperclip, and it sticks right away too!',
        textMy: 'ထို့နောက် စက္ကူညှပ်ငယ်လေးကို တွေ့ရာ ချက်ချင်းကပ်သွားပြန်သည်!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-coding-1',
    subject: 'coding',
    grade: Grade.nursery,
    titleEn: "Robot's Cookie Steps",
    titleMy: 'ရိုဘော့၏ ကွတ်ကီးခြေလှမ်းများ',
    descriptionEn:
        'Tap through the pages to help the little robot follow the steps.',
    descriptionMy:
        'ရိုဘော့ငယ်လေးကို ခြေလှမ်းများ လိုက်လုပ်ဖို့ ကူညီရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 6,
    emoji: '🤖',
    pages: [
      StoryPage(
        emoji: '🤖',
        textEn: 'The little robot wants a cookie on the shelf.',
        textMy: 'ရိုဘော့ငယ်လေးသည် စင်ပေါ်ရှိ ကွတ်ကီးကို လိုချင်နေသည်။',
      ),
      StoryPage(
        emoji: '➡️',
        textEn: 'Step one: walk forward. Step two: turn right.',
        textMy: 'ပထမခြေလှမ်း: ရှေ့သို့လျှောက်ပါ။ ဒုတိယခြေလှမ်း: ညာဘက်လှည့်ပါ။',
      ),
      StoryPage(
        emoji: '🍪',
        textEn: 'Step three: reach up, and the robot gets the cookie!',
        textMy: 'တတိယခြေလှမ်း: အပေါ်သို့ဆန့်ပါ၊ ရိုဘော့ ကွတ်ကီးရသွားပြီ!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-coding-1',
    subject: 'coding',
    grade: Grade.kg,
    titleEn: "The Robot's Treasure Map",
    titleMy: 'ရိုဘော့၏ ရတနာမြေပုံ',
    descriptionEn:
        "Tap through the pages to follow the robot's steps, even when one goes wrong.",
    descriptionMy:
        'တစ်ခြေလှမ်း မှားသွားလည်း ရိုဘော့၏ ခြေလှမ်းများကို လိုက်ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 9,
    emoji: '🗺️',
    pages: [
      StoryPage(
        emoji: '🗺️',
        textEn: 'The robot has a map: forward, forward, then turn left.',
        textMy:
            'ရိုဘော့တွင် မြေပုံတစ်ခုရှိသည်- ရှေ့၊ ရှေ့၊ ပြီးရင် ဘယ်ဘက်လှည့်ပါ။',
      ),
      StoryPage(
        emoji: '🤖',
        textEn: 'It walks forward, forward, and turns right by mistake.',
        textMy:
            'ရိုဘော့သည် ရှေ့၊ ရှေ့သို့လျှောက်ပြီး ညာဘက်ကို အမှားလှည့်မိသည်။',
      ),
      StoryPage(
        emoji: '🤔',
        textEn: 'Oops! That is not right. Let\'s fix the step and try again.',
        textMy:
            'အိုး! ဒါက မှန်မနေဘူး။ ခြေလှမ်းကို ပြင်ပြီး နောက်တစ်ကြိမ် ထပ်စမ်းကြည့်ရအောင်။',
      ),
      StoryPage(
        emoji: '⬅️',
        textEn: 'This time, the robot turns left just like the map says.',
        textMy:
            'ဒီတစ်ကြိမ်တော့ ရိုဘော့သည် မြေပုံပြောသည့်အတိုင်း ဘယ်ဘက်ကိုလှည့်သည်။',
      ),
      StoryPage(
        emoji: '💎',
        textEn: 'It follows every step and finds the shiny treasure!',
        textMy:
            'ရိုဘော့သည် ခြေလှမ်းတိုင်းကို လိုက်လုပ်ပြီး တောက်ပသော ရတနာကို ရှာတွေ့သည်!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-engineering-1',
    subject: 'engineering',
    grade: Grade.nursery,
    titleEn: 'Building a Block Tower',
    titleMy: 'အုတ်ငယ်များနှင့် ရဲတိုက်တည်ဆောက်ခြင်း',
    descriptionEn:
        'Tap through the pages to build a tower that does not fall down.',
    descriptionMy: 'မလဲကျအောင် ရဲတိုက်တည်ဆောက်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 6,
    emoji: '🧱',
    pages: [
      StoryPage(
        emoji: '🧱',
        textEn: 'Thiha stacks blocks up high, one on top of another.',
        textMy: 'သီဟသည် အုတ်ငယ်များကို တစ်ခုပေါ်တစ်ခု မြင့်မြင့်စီထားသည်။',
      ),
      StoryPage(
        emoji: '💥',
        textEn: 'The tower wobbles and falls down with a crash!',
        textMy: 'ရဲတိုက်သည် တုန်လှုပ်ပြီး ဒုန်းကနဲသံနှင့် လဲကျသွားသည်!',
      ),
      StoryPage(
        emoji: '🏗️',
        textEn: 'He builds again with a wide bottom, and it stands strong.',
        textMy:
            'သူသည် အောက်ခြေကျယ်အောင် ပြန်တည်ဆောက်ရာ ခိုင်ခံ့စွာ မတ်တတ်ရပ်နေသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-engineering-1',
    subject: 'engineering',
    grade: Grade.kg,
    titleEn: 'The Bridge for the Ducklings',
    titleMy: 'ငန်းငယ်များအတွက် တံတား',
    descriptionEn:
        'Tap through the pages to build a strong bridge across the stream.',
    descriptionMy:
        'ချောင်းကို ဖြတ်ရန် ခိုင်ခံ့သောတံတားကို တည်ဆောက်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 9,
    emoji: '🌉',
    pages: [
      StoryPage(
        emoji: '🦆',
        textEn: 'The little ducklings cannot cross the wide stream.',
        textMy: 'ငန်းငယ်လေးများသည် ကျယ်ပြန့်သောချောင်းကို မဖြတ်နိုင်ကြပါ။',
      ),
      StoryPage(
        emoji: '🪵',
        textEn: 'Aye Aye lays a thin stick across, but it snaps in half.',
        textMy:
            'အေးအေးသည် ပါးလွှာသောတုတ်တစ်ချောင်းကို ချောင်းအပေါ်တွင် ချထားရာ ကျိုးသွားသည်။',
      ),
      StoryPage(
        emoji: '🧱',
        textEn: 'She tries thick, strong blocks instead, side by side.',
        textMy:
            'သူမသည် ထူထဲခိုင်မာသော အုတ်များကို တစ်ခုနှင့်တစ်ခု ကပ်၍ စမ်းသုံးကြည့်သည်။',
      ),
      StoryPage(
        emoji: '🦆',
        textEn:
            'The new bridge holds strong, and every duckling crosses safely.',
        textMy:
            'တံတားသစ်သည် ခိုင်ခံ့စွာရပ်တည်ပြီး ငန်းငယ်တိုင်း ဘေးကင်းစွာဖြတ်ကူးနိုင်ကြသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-history-1',
    subject: 'history',
    grade: Grade.nursery,
    titleEn: "Grandma's Old Telephone",
    titleMy: 'အဖွားရဲ့ ရှေးဟောင်းတယ်လီဖုန်း',
    descriptionEn: 'Tap through the pages to see how things looked long ago.',
    descriptionMy:
        'ရှေးအခါက အရာဝတ္ထုများ ဘယ်လိုပုံစံရှိခဲ့သလဲ ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 6,
    emoji: '👵',
    pages: [
      StoryPage(
        emoji: '👵',
        textEn: 'Grandma shows Ei Ei a big round telephone from long ago.',
        textMy:
            'အဖွားသည် အေးအေးအား ရှေးက အသုံးပြုခဲ့သော ဝိုင်းကြီးသည့်တယ်လီဖုန်းကို ပြသည်။',
      ),
      StoryPage(
        emoji: '☎️',
        textEn: 'You had to spin the circle to call someone, Grandma says.',
        textMy:
            'တစ်စုံတစ်ယောက်ကို ဖုန်းခေါ်ရန် အဝိုင်းကို လှည့်ရသည်ဟု အဖွားကပြောသည်။',
      ),
      StoryPage(
        emoji: '📱',
        textEn: "Now Ei Ei's phone is small and fits in her hand.",
        textMy: 'ယခုတော့ အေးအေးရဲ့ ဖုန်းသည် သေးငယ်ပြီး လက်ထဲမှာ ဆန့်နေသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-history-1',
    subject: 'history',
    grade: Grade.kg,
    titleEn: 'A Walk Through Long Ago',
    titleMy: 'ရှေးခေတ်ကို ဖြတ်သန်း လျှောက်လှမ်းခြင်း',
    descriptionEn:
        'Tap through the pages to travel from long, long ago to today.',
    descriptionMy:
        'ရှေးရှေးကြီးမှ ယနေ့အထိ ခရီးသွားရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 9,
    emoji: '🏛️',
    pages: [
      StoryPage(
        emoji: '🦕',
        textEn: 'Long, long ago, giant dinosaurs walked on the earth.',
        textMy:
            'ရှေးရှေးကြီးက ဒိုင်နိုဆောကြီးများသည် ကမ္ဘာမြေပေါ်တွင် လျှောက်လှမ်းခဲ့ကြသည်။',
      ),
      StoryPage(
        emoji: '👴',
        textEn:
            'Then, when Grandpa was small, cars did not have seatbelts yet.',
        textMy: 'ထို့နောက် အဖိုးလေးငယ်စဉ်က ကားများတွင် ခါးပတ်တောင် မရှိသေးပါ။',
      ),
      StoryPage(
        emoji: '🏛️',
        textEn:
            'Today, Su Su visits an old museum to see things from the past.',
        textMy:
            'ယနေ့ စုစုသည် ရှေးအခါက အရာဝတ္ထုများကိုကြည့်ရန် ရှေးဟောင်းပြတိုက်သို့ လည်ပတ်သည်။',
      ),
      StoryPage(
        emoji: '🖼️',
        textEn: 'She learns that long ago is very different from now!',
        textMy: 'ရှေးအခါသည် ယခုနှင့် အလွန်ကွာခြားခဲ့ကြောင်း သူမသိရှိလိုက်ရသည်!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-geography-1',
    subject: 'geography',
    grade: Grade.nursery,
    titleEn: 'Mountain, River, Sea',
    titleMy: 'တောင်၊ မြစ်၊ ပင်လယ်',
    descriptionEn:
        'Tap through the pages to visit a tall mountain, a flowing river, and a big blue sea.',
    descriptionMy:
        'မြင့်မားသောတောင်၊ စီးဆင်းနေသောမြစ်နှင့် ပြာသောပင်လယ်ကြီးကို လည်ပတ်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 6,
    emoji: '🗺️',
    pages: [
      StoryPage(
        emoji: '⛰️',
        textEn: 'This tall mountain touches the clouds in the sky.',
        textMy: 'ဒီတောင်မြင့်ကြီးသည် ကောင်းကင်ရှိ မိုးတိမ်များကို ထိနေသည်။',
      ),
      StoryPage(
        emoji: '🏞️',
        textEn: 'A river flows down from the mountain, splashing over rocks.',
        textMy:
            'မြစ်တစ်စင်းသည် တောင်ပေါ်မှစီးဆင်းလာပြီး ကျောက်တုံးများကို ရိုက်ခတ်သွားသည်။',
      ),
      StoryPage(
        emoji: '🌊',
        textEn: 'The river flows on and on until it reaches the big blue sea.',
        textMy:
            'မြစ်ရေသည် စီးဆင်းရင်း ပြာနုသောပင်လယ်ကြီးထဲသို့ ရောက်ရှိသွားသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-geography-1',
    subject: 'geography',
    grade: Grade.kg,
    titleEn: 'A Trip Around My Country',
    titleMy: 'ငါ့နိုင်ငံပတ်လည် ခရီးစဉ်',
    descriptionEn:
        'Tap through the pages to visit different places on the map of my country.',
    descriptionMy:
        'ငါ့နိုင်ငံရဲ့ မြေပုံပေါ်ရှိ နေရာမျိုးစုံကို လည်ပတ်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 9,
    emoji: '🧭',
    pages: [
      StoryPage(
        emoji: '🗺️',
        textEn: 'Kaung looks at a colorful map of his own country.',
        textMy: 'ကောင်းသည် သူ့နိုင်ငံရဲ့ အရောင်စုံမြေပုံကို ကြည့်ရှုနေသည်။',
      ),
      StoryPage(
        emoji: '🏙️',
        textEn: 'First, he visits a busy city with tall buildings.',
        textMy:
            'ပထမဆုံး သူသည် အဆောက်အအုံမြင့်များရှိသော လူစည်ကားသည့်မြို့ကြီးသို့ လည်ပတ်သည်။',
      ),
      StoryPage(
        emoji: '🏡',
        textEn: 'Next, he visits a quiet village with green rice fields.',
        textMy:
            'ထို့နောက် သူသည် စိမ်းလန်းသောစပါးလယ်များရှိသည့် တိတ်ဆိတ်သောရွာသို့ လည်ပတ်သည်။',
      ),
      StoryPage(
        emoji: '⛰️',
        textEn: 'Then he climbs partway up a cool, misty mountain.',
        textMy:
            'ထို့နောက် သူသည် အေးမြပြီး မြူထူသောတောင်ပေါ်သို့ တစ်ဝက်တက်ကြည့်သည်။',
      ),
      StoryPage(
        emoji: '🏖️',
        textEn: 'Last, he plays on a sunny beach by the wide ocean.',
        textMy:
            'နောက်ဆုံးတွင် သူသည် ကျယ်ပြန့်သောသမုဒ္ဒရာအနီး နေသာသည့်ကမ်းခြေတွင် ကစားသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-computing-1',
    subject: 'computing',
    grade: Grade.nursery,
    titleEn: 'Meet the Friendly Computer',
    titleMy: 'ရင်းနှီးသော ကွန်ပျူတာနှင့် တွေ့ဆုံခြင်း',
    descriptionEn:
        'Tap through the pages to turn on the computer and see it come to life.',
    descriptionMy:
        'ကွန်ပျူတာဖွင့်ပြီး အသက်ဝင်လာပုံကို ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 6,
    emoji: '💻',
    pages: [
      StoryPage(
        emoji: '🔘',
        textEn: 'Zin Ko presses the round button, and the screen lights up.',
        textMy:
            'ဇင်ကိုသည် ဝိုင်းသောခလုတ်ကိုနှိပ်လိုက်ရာ မျက်နှာပြင် အလင်းရောင်ပေါ်လာသည်။',
      ),
      StoryPage(
        emoji: '🖱️',
        textEn:
            'He clicks the little mouse, and a picture opens on the screen.',
        textMy:
            'သူသည် မောက်စ်ငယ်ကိုနှိပ်လိုက်ရာ ပုံတစ်ပုံသည် မျက်နှာပြင်ပေါ်ဖွင့်လာသည်။',
      ),
      StoryPage(
        emoji: '🐱',
        textEn: 'A cartoon cat waves hello from inside the screen!',
        textMy:
            'ကာတွန်းကြောင်လေးတစ်ကောင်သည် မျက်နှာပြင်ထဲမှ လက်ဝါးလှုပ်၍ နှုတ်ဆက်နေသည်!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-computing-1',
    subject: 'computing',
    grade: Grade.kg,
    titleEn: 'Typing My Own Name',
    titleMy: 'ကိုယ့်နာမည် စာစီစီခြင်း',
    descriptionEn:
        'Tap through the pages to see how the keyboard makes letters appear.',
    descriptionMy:
        'ကီးဘုတ်က အက္ခရာများကို ဘယ်လိုပေါ်လာအောင်လုပ်သလဲ ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 9,
    emoji: '⌨️',
    pages: [
      StoryPage(
        emoji: '💻',
        textEn: 'Hnin turns on the computer and the screen glows bright.',
        textMy:
            'နှင်းသည် ကွန်ပျူတာကိုဖွင့်လိုက်ရာ မျက်နှာပြင်သည် တောက်ပစွာ လင်းလာသည်။',
      ),
      StoryPage(
        emoji: '⌨️',
        textEn: 'She presses each key on the keyboard, one letter at a time.',
        textMy:
            'သူမသည် ကီးဘုတ်ပေါ်ရှိ ခလုတ်တစ်ခုချင်းစီကို အက္ခရာတစ်လုံးချင်း နှိပ်သည်။',
      ),
      StoryPage(
        emoji: '🔤',
        textEn: 'Her name appears on the screen, letter by letter!',
        textMy: 'သူမနာမည်သည် မျက်နှာပြင်ပေါ်တွင် အက္ခရာအလိုက် ပေါ်လာသည်!',
      ),
      StoryPage(
        emoji: '💾',
        textEn:
            'She clicks save, and her name is kept safe inside the computer.',
        textMy:
            'သူမသည် သိမ်းဆည်းရန်နှိပ်လိုက်ရာ သူမနာမည်သည် ကွန်ပျူတာထဲတွင် ဘေးကင်းစွာ သိမ်းဆည်းမိသွားသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-phonics-2',
    subject: 'phonics',
    grade: Grade.nursery,
    titleEn: "Buzzy Bee's Sound Walk",
    titleMy: 'ပျားလေး၏ ဟုန်းခနဲအသံလမ်းလျှောက်',
    descriptionEn:
        "Tap through the pages to listen to Buzzy Bee's buzzing sound.",
    descriptionMy:
        'ပျားလေး၏ ဟုန်းခနဲအသံကို နားထောင်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 6,
    emoji: '🐝',
    pages: [
      StoryPage(
        emoji: '🐝',
        textEn:
            'Buzzy Bee flies from flower to flower, saying buzz, buzz, buzz.',
        textMy:
            'ပျားလေးသည် ပန်းတစ်ပွင့်မှတစ်ပွင့်သို့ ပျံသန်းရင်း ဟုန်း ဟုန်း ဟုန်း ဟု အသံပြုသည်။',
      ),
      StoryPage(
        emoji: '🌸',
        textEn: 'She lands on a big pink flower to drink sweet nectar.',
        textMy:
            'သူမသည် ချိုမြိန်သောပျားရည်ကို သောက်ရန် ပန်းနီရောင်ကြီးပေါ်တွင် နားသည်။',
      ),
      StoryPage(
        emoji: '🍯',
        textEn:
            'Buzz, buzz -- Buzzy Bee carries the nectar home to make honey.',
        textMy:
            'ဟုန်း ဟုန်း -- ပျားလေးသည် ပျားရည်ကို ပျားလပို့ရန် အိမ်သို့ ယူဆောင်သွားသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-phonics-2',
    subject: 'phonics',
    grade: Grade.kg,
    titleEn: "Sammy Snake's S Sound Hunt",
    titleMy: 'မြွေ ဆမ်မီ၏ "S" အသံရှာဖွေခြင်း',
    descriptionEn:
        'Tap through the pages to help Sammy Snake find things that hiss like S.',
    descriptionMy:
        'မြွေဆမ်မီကို "ဆစ်" ဟူသောအသံနှင့် တူသော အရာများ ရှာဖွေရန် ကူညီရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 9,
    emoji: '🐍',
    pages: [
      StoryPage(
        emoji: '🐍',
        textEn: 'Sammy Snake slithers through the grass, hissing sssss.',
        textMy: 'မြွေဆမ်မီသည် မြက်ခင်းကို ဆစ်ဆစ်ခနဲအသံနှင့် တွားသွားသည်။',
      ),
      StoryPage(
        emoji: '☀️',
        textEn: 'He finds a bright sun and a round sock lying in the yard.',
        textMy:
            'သူသည် ဝင်းလက်နေသောနေနှင့် ဝင်းယာ၌ ရှိသော ဝိုင်းသောခြေအိတ်ကို တွေ့ရသည်။',
      ),
      StoryPage(
        emoji: '⭐',
        textEn: 'Next, he spots a shiny star sitting on the fence.',
        textMy: 'ထို့နောက် သူသည် စောင်ရန်းပေါ်ရှိ တောက်ပသောကြယ်ကို တွေ့ရသည်။',
      ),
      StoryPage(
        emoji: '🐍',
        textEn: 'Sun, sock, star -- Sammy hisses happily at each one, sssss!',
        textMy:
            'နေ၊ ခြေအိတ်၊ ကြယ် -- ဆမ်မီသည် တစ်ခုချင်းစီကို ဝမ်းသာစွာ ဆစ်ဆစ်ခနဲ အသံပြုသည်!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-math-2',
    subject: 'math',
    grade: Grade.nursery,
    titleEn: 'Three Little Ducks',
    titleMy: 'ငန်းကလေး သုံးကောင်',
    descriptionEn:
        'Tap through the pages to count the ducks jumping into the pond.',
    descriptionMy:
        'ရေကန်ထဲ ခုန်ချသော ငန်းကလေးများကို ရေတွက်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 7,
    emoji: '🦆',
    pages: [
      StoryPage(
        emoji: '🦆',
        textEn: 'One little duck waddles up to the pond.',
        textMy: 'ငန်းကလေး တစ်ကောင်သည် ရေကန်ဆီသို့ တဝမ်းဝမ်းလျှောက်လာသည်။',
      ),
      StoryPage(
        emoji: '🦆🦆',
        textEn: 'Two more ducks waddle up and join their friend.',
        textMy:
            'နောက်ထပ် ငန်းကလေးနှစ်ကောင်သည် လျှောက်လာပြီး သူငယ်ချင်းနှင့် ပူးပေါင်းသည်။',
      ),
      StoryPage(
        emoji: '💦',
        textEn: 'Splash! All three ducks jump into the cool water.',
        textMy:
            'တလုပ်ခနဲ! ငန်းကလေး သုံးကောင်လုံး အေးမြသောရေထဲသို့ ခုန်ချလိုက်ကြသည်။',
      ),
      StoryPage(
        emoji: '🦆',
        textEn: 'One, two, three -- three happy ducks swim in a row.',
        textMy:
            'တစ်၊ နှစ်၊ သုံး -- ပျော်ရွှင်သော ငန်းကလေး သုံးကောင်သည် တန်းစီရေကူးနေကြသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-math-2',
    subject: 'math',
    grade: Grade.kg,
    titleEn: 'Five Apples in the Basket',
    titleMy: 'တောင်းထဲက ပန်းသီးငါးလုံး',
    descriptionEn:
        'Tap through the pages to count the apples as the basket fills up.',
    descriptionMy:
        'တောင်းထဲသို့ ပန်းသီးများ ဖြည့်လာသည်အတိုင်း ရေတွက်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 10,
    emoji: '🍎',
    pages: [
      StoryPage(
        emoji: '🧺',
        textEn: 'Nway has an empty basket under the apple tree.',
        textMy: 'နွေတွင် ပန်းသီးပင်အောက်၌ ဗလာတောင်းတစ်လုံး ရှိသည်။',
      ),
      StoryPage(
        emoji: '🍎',
        textEn: 'She picks one apple, then two, then three, and drops them in.',
        textMy:
            'သူမသည် ပန်းသီးတစ်လုံး၊ နှစ်လုံး၊ သုံးလုံးကို ဆွတ်ခူးပြီး တောင်းထဲထည့်လိုက်သည်။',
      ),
      StoryPage(
        emoji: '🍏',
        textEn: 'She adds a fourth apple, then a fifth green one on top.',
        textMy:
            'သူမသည် စတုတ္ထပန်းသီးကို ထည့်ပြီး နောက်ဆုံးအစိမ်းရောင် ပဉ္စမပန်းသီးကို အထက်မှထပ်ထည့်လိုက်သည်။',
      ),
      StoryPage(
        emoji: '🧺',
        textEn: 'One, two, three, four, five -- the basket is full of apples!',
        textMy:
            'တစ်၊ နှစ်၊ သုံး၊ လေး၊ ငါး -- တောင်းသည် ပန်းသီးများနှင့် ပြည့်နေပြီ!',
      ),
      StoryPage(
        emoji: '😋',
        textEn: 'Nway shares the five apples with her four friends.',
        textMy: 'နွေသည် ပန်းသီးငါးလုံးကို သူငယ်ချင်း လေးယောက်နှင့် မျှဝေသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-art-2',
    subject: 'art',
    grade: Grade.nursery,
    titleEn: 'Mixing Red and Yellow',
    titleMy: 'အနီရောင်နှင့် အဝါရောင် ရောစပ်ခြင်း',
    descriptionEn:
        'Tap through the pages to see what color red and yellow paint make together.',
    descriptionMy:
        'အနီရောင်နှင့်အဝါရောင် ဆေးများ ပေါင်းစပ်လိုက်လျှင် ဘယ်ရောင်ဖြစ်လာမလဲ ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 6,
    emoji: '🎨',
    pages: [
      StoryPage(
        emoji: '🔴',
        textEn: 'Thandar dips her brush into bright red paint.',
        textMy:
            'သန္တာသည် သူမ၏ဆေးတံကို တောက်ပသော အနီရောင်ဆေးထဲသို့ နှစ်လိုက်သည်။',
      ),
      StoryPage(
        emoji: '🟡',
        textEn: 'Then she dips it into sunny yellow paint too.',
        textMy:
            'ထို့နောက် သူမသည် နေရောင်ကဲ့သို့ တောက်ပသော အဝါရောင်ဆေးထဲသို့လည်း နှစ်လိုက်သည်။',
      ),
      StoryPage(
        emoji: '🟠',
        textEn: 'She mixes them on paper, and orange appears like magic!',
        textMy:
            'သူမသည် စက္ကူပေါ်တွင် ရောစပ်လိုက်ရာ မှော်ဆန်ဆန် လိမ္မော်ရောင် ပေါ်လာသည်!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-art-2',
    subject: 'art',
    grade: Grade.kg,
    titleEn: 'Painting a Rainbow',
    titleMy: 'သက်တံဆွဲခြင်း',
    descriptionEn:
        'Tap through the pages to mix colors and paint a whole rainbow.',
    descriptionMy:
        'ဆေးရောင်များကို ရောစပ်ပြီး သက်တံတစ်ခုလုံး ဆွဲရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 9,
    emoji: '🌈',
    pages: [
      StoryPage(
        emoji: '🔴',
        textEn: 'Zaw starts with red at the very top of his paper.',
        textMy: 'ဇော်သည် သူ့စက္ကူ၏ထိပ်ဆုံးမှ အနီရောင်ဖြင့် စတင်ဆွဲသည်။',
      ),
      StoryPage(
        emoji: '🟠',
        textEn: 'He mixes red and yellow to paint an orange stripe next.',
        textMy:
            'သူသည် နောက်ကြောင်းအတွက် အနီရောင်နှင့် အဝါရောင်ကို ရောစပ်ပြီး လိမ္မော်ရောင်ဆွဲသည်။',
      ),
      StoryPage(
        emoji: '🟢',
        textEn: 'Then he mixes blue and yellow to make a green stripe.',
        textMy:
            'ထို့နောက် သူသည် အပြာရောင်နှင့် အဝါရောင်ကို ရောစပ်ပြီး အစိမ်းရောင်ဆွဲသည်။',
      ),
      StoryPage(
        emoji: '🔵',
        textEn:
            'He adds a blue stripe and a purple stripe made from red and blue.',
        textMy:
            'သူသည် အပြာရောင်ကြောင်းတစ်ခုနှင့် အနီရောင်နှင့်အပြာရောင်မှရသော ခရမ်းရောင်ကြောင်းကိုလည်း ထပ်ဆွဲသည်။',
      ),
      StoryPage(
        emoji: '🌈',
        textEn:
            'Zaw steps back and sees a beautiful rainbow he made all by himself!',
        textMy:
            'ဇော်သည် နောက်သို့ဆုတ်ပြီး သူကိုယ်တိုင်ဆွဲထားသော လှပသည့်သက်တံကို တွေ့ရသည်!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-stem-2',
    subject: 'stem',
    grade: Grade.nursery,
    titleEn: 'My Shadow Follows Me',
    titleMy: 'ငါ့အရိပ်လေး',
    descriptionEn: 'Tap through the pages to see how sunlight makes a shadow.',
    descriptionMy:
        'နေရောင်ခြည်က အရိပ်ကို ဘယ်လိုဖြစ်စေသလဲ ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 7,
    emoji: '🕶️',
    pages: [
      StoryPage(
        emoji: '☀️',
        textEn: 'The sun is shining brightly as Htet walks outside.',
        textMy:
            'နေသည် တောက်ပစွာထွန်းလင်းနေစဉ် ထက်သည် အပြင်သို့ လျှောက်ထွက်သည်။',
      ),
      StoryPage(
        emoji: '🕺',
        textEn: 'A dark shadow shape appears on the ground next to him.',
        textMy: 'အနက်ရောင်အရိပ်ပုံသည် သူ့အနီးရှိ မြေပေါ်တွင် ပေါ်လာသည်။',
      ),
      StoryPage(
        emoji: '🏃',
        textEn: 'When Htet jumps and waves, his shadow jumps and waves too!',
        textMy:
            'ထက်ခုန်ပြီး လက်ဝါးလှုပ်လိုက်တိုင်း သူ့အရိပ်ကလည်း ခုန်ပြီး လက်ဝါးလှုပ်နေသည်!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-stem-2',
    subject: 'stem',
    grade: Grade.kg,
    titleEn: 'Two Little Plants',
    titleMy: 'အပင်ငယ် နှစ်ပင်',
    descriptionEn:
        'Tap through the pages to see what happens to a plant with water and one without.',
    descriptionMy:
        'ရေပေးသောအပင်နှင့် ရေမပေးသောအပင် ဘာဖြစ်လာသလဲ ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 10,
    emoji: '🌱',
    pages: [
      StoryPage(
        emoji: '🌱',
        textEn: 'Moe Moe plants two little seeds in two small pots.',
        textMy:
            'မိုးမိုးသည် အိုးငယ်နှစ်လုံးထဲသို့ မျိုးစေ့ငယ်နှစ်ခုကို စိုက်ပျိုးလိုက်သည်။',
      ),
      StoryPage(
        emoji: '💧',
        textEn: 'She waters the first pot every day, but not the second one.',
        textMy:
            'သူမသည် ပထမအိုးကို နေ့တိုင်းရေလောင်းသော်လည်း ဒုတိယအိုးကိုမူ မရေလောင်းပါ။',
      ),
      StoryPage(
        emoji: '🌿',
        textEn: 'After a week, the watered plant grows tall and green.',
        textMy:
            'တစ်ပတ်ကြာသောအခါ ရေလောင်းထားသောအပင်သည် စိမ်းလန်းစွာ အရပ်ရှည်ကြီးထွားလာသည်။',
      ),
      StoryPage(
        emoji: '🥀',
        textEn:
            'The other pot still has no plant at all -- it needed water too.',
        textMy:
            'အခြားအိုးထဲတွင်မူ အပင်လုံးဝမပေါက်သေးပါ -- ၎င်းကိုလည်း ရေလိုအပ်ခဲ့ခြင်းဖြစ်သည်။',
      ),
      StoryPage(
        emoji: '💧',
        textEn: 'Moe Moe waters both pots now, so every plant can grow.',
        textMy:
            'မိုးမိုးသည် ယခုအခါ အိုးနှစ်လုံးလုံးကို ရေလောင်းပေးလိုက်ရာ အပင်တိုင်း ကြီးထွားနိုင်ပြီ။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-coding-2',
    subject: 'coding',
    grade: Grade.nursery,
    titleEn: "Puppy's Ball Steps",
    titleMy: 'ခွေးလေး၏ ဘောလုံးရှာရေးခြေလှမ်းများ',
    descriptionEn:
        'Tap through the pages to help the puppy follow the steps to the ball.',
    descriptionMy:
        'ခွေးလေးကို ဘောလုံးဆီသို့ ခြေလှမ်းများ လိုက်လုပ်ရန် ကူညီရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 6,
    emoji: '🐶',
    pages: [
      StoryPage(
        emoji: '🐶',
        textEn: 'The little puppy sees his ball across the yard.',
        textMy: 'ခွေးလေးသည် ဥယျာဉ်တစ်ဖက်ရှိ သူ့ဘောလုံးကို မြင်လိုက်ရသည်။',
      ),
      StoryPage(
        emoji: '👃',
        textEn: 'Step one: sniff forward. Step two: hop over the flower pot.',
        textMy:
            'ပထမခြေလှမ်း- ရှေ့သို့ နမ်းကြည့်ရင်းလျှောက်ပါ။ ဒုတိယခြေလှမ်း- ပန်းအိုးကို ခုန်ကျော်ပါ။',
      ),
      StoryPage(
        emoji: '🎾',
        textEn: 'Step three: run straight ahead, and the puppy grabs the ball!',
        textMy:
            'တတိယခြေလှမ်း- ရှေ့ဆက်ပြေးပါ၊ ခွေးလေး ဘောလုံးကို ဆွဲယူလိုက်ပြီ!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-coding-2',
    subject: 'coding',
    grade: Grade.kg,
    titleEn: "The Dancer's Repeat Steps",
    titleMy: 'အကသည်ငယ်၏ ထပ်လှည့်ခြေလှမ်းများ',
    descriptionEn:
        'Tap through the pages to see the dancer repeat her spin-and-clap steps three times.',
    descriptionMy:
        'အကသည်ငယ်သည် လှည့်ခြင်းနှင့် လက်ခုပ်တီးခြင်းကို သုံးကြိမ် ထပ်လုပ်ပုံကို ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 9,
    emoji: '💃',
    pages: [
      StoryPage(
        emoji: '💃',
        textEn:
            'Thiri wants to make a dance with just two moves: spin, then clap.',
        textMy:
            'သီရိသည် လှည့်ခြင်းနှင့် လက်ခုပ်တီးခြင်း လှုပ်ရှားမှုနှစ်ခုတည်းဖြင့် အကတစ်ခု ဖန်တီးလိုသည်။',
      ),
      StoryPage(
        emoji: '🔁',
        textEn: 'She spins around and claps -- that is one whole time.',
        textMy:
            'သူမသည် ပတ်လှည့်ပြီး လက်ခုပ်တီးသည် -- ၎င်းသည် တစ်ကြိမ်ပြည့်ပြီ။',
      ),
      StoryPage(
        emoji: '🔁',
        textEn: 'She repeats it again: spin, clap. That makes two times!',
        textMy:
            'သူမသည် ထပ်မံလုပ်ဆောင်သည်- လှည့်၊ လက်ခုပ်တီး။ ဒါဆိုရင် နှစ်ကြိမ်ပြီ!',
      ),
      StoryPage(
        emoji: '🔁',
        textEn:
            'One more time: spin, clap. Now she has repeated it three times.',
        textMy:
            'နောက်တစ်ကြိမ်- လှည့်၊ လက်ခုပ်တီး။ ယခု သုံးကြိမ်ထပ်လုပ်ပြီးပါပြီ။',
      ),
      StoryPage(
        emoji: '🎉',
        textEn:
            'Thiri takes a bow -- her repeating dance made everyone clap too!',
        textMy:
            'သီရိသည် ဦးညွှတ်ဝတ်လိုက်သည် -- သူမ၏ ထပ်လှည့်အကသည် လူတိုင်းကို လက်ခုပ်တီးစေခဲ့သည်!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-engineering-2',
    subject: 'engineering',
    grade: Grade.nursery,
    titleEn: 'An Umbrella for Teddy',
    titleMy: 'တက်ဒီအတွက် ထီး',
    descriptionEn:
        'Tap through the pages to build a little shelter that keeps the rain off Teddy.',
    descriptionMy:
        'တက်ဒီကို မိုးမစိုအောင် အကာအရံငယ်တစ်ခု တည်ဆောက်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 6,
    emoji: '☂️',
    pages: [
      StoryPage(
        emoji: '🧸',
        textEn: 'Teddy sits outside, and rain clouds are gathering above.',
        textMy:
            'တက်ဒီသည် အပြင်တွင်ထိုင်နေစဉ် မိုးတိမ်များ အထက်တွင် စုပုံလာသည်။',
      ),
      StoryPage(
        emoji: '📄',
        textEn:
            'Su tries a flat piece of paper over him, but the rain soaks through.',
        textMy:
            'စုသည် သူ့အပေါ်တွင် ပြားပြားစက္ကူတစ်ချပ်ကို ကြိုးစားကာကြည့်သော်လည်း မိုးရေသည် စိုနစ်သွားသည်။',
      ),
      StoryPage(
        emoji: '☂️',
        textEn:
            'She bends a bowl-shaped cover over him so the rain slides off.',
        textMy:
            'သူမသည် ဇလုံပုံအဖုံးတစ်ခုကို သူ့အပေါ်တွင် ကွေးချကာ ဖုံးထားလိုက်ရာ မိုးရေသည် ချောစွာစီးကျသွားသည်။',
      ),
      StoryPage(
        emoji: '🧸',
        textEn: 'Teddy stays warm and dry under his new little shelter.',
        textMy:
            'တက်ဒီသည် သူ့အကာအရံငယ်အောက်တွင် နွေးထွေးစွာ၊ မခြောက်ခြောက်စွာနေရသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-engineering-2',
    subject: 'engineering',
    grade: Grade.kg,
    titleEn: 'The Boat That Could Carry Coins',
    titleMy: 'အကြေးငွေများ သယ်ဆောင်နိုင်သော လှေ',
    descriptionEn:
        'Tap through the pages to design a little boat strong enough to carry coins without sinking.',
    descriptionMy:
        'အကြေးငွေများကို မနစ်ဘဲ သယ်ဆောင်နိုင်လောက်အောင် ခိုင်ခံ့သော လှေငယ်တစ်စင်းကို ဒီဇိုင်းဆွဲရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 10,
    emoji: '⛵',
    pages: [
      StoryPage(
        emoji: '🍃',
        textEn:
            'Kyaw folds a boat out of a flat leaf and sets it on the water.',
        textMy:
            'ကျော်သည် ပြားပြားအရွက်တစ်ချပ်ကို လှေပုံဖြင့်ခေါက်ပြီး ရေပေါ်တွင်ချထားသည်။',
      ),
      StoryPage(
        emoji: '🪙',
        textEn: 'He places one small coin inside, and the leaf boat sinks.',
        textMy:
            'သူသည် အကြေးငွေငယ်တစ်ပြားကို အထဲထည့်လိုက်ရာ အရွက်လှေသည် နစ်သွားသည်။',
      ),
      StoryPage(
        emoji: '🥤',
        textEn: 'Next, he tries a boat made from a curved plastic cup instead.',
        textMy:
            'ထို့နောက် သူသည် ကွေးညွှတ်သောပလပ်စတစ်ခွက်ဖြင့် လှေတစ်စင်းကို စမ်းကြည့်သည်။',
      ),
      StoryPage(
        emoji: '🪙',
        textEn: 'The cup boat floats even with three coins inside it.',
        textMy: 'ခွက်လှေသည် အကြေးငွေသုံးပြားထည့်ထားလည်း ပေါ်လျက်ရှိနေသည်။',
      ),
      StoryPage(
        emoji: '⛵',
        textEn:
            'Kyaw learns a wide, curved shape carries more weight than a flat one.',
        textMy:
            'ကျော်သည် ကျယ်ပြီး ကွေးညွှတ်သောပုံစံက ပြားသောပုံစံထက် ပိုအလေးချိန်သယ်ဆောင်နိုင်ကြောင်း သင်ယူရရှိသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-history-2',
    subject: 'history',
    grade: Grade.nursery,
    titleEn: "Grandpa's Old Radio",
    titleMy: 'အဖိုး၏ ရှေးဟောင်းရေဒီယို',
    descriptionEn:
        'Tap through the pages to see how Grandpa used to listen to music long ago.',
    descriptionMy:
        'အဖိုးက ရှေးအခါ ဘယ်လိုသီချင်းနားထောင်ခဲ့သလဲ ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 6,
    emoji: '📻',
    pages: [
      StoryPage(
        emoji: '👴',
        textEn: 'Grandpa shows Kaung a big wooden box with knobs on it.',
        textMy:
            'အဖိုးသည် ကောင်းအား ခလုတ်များပါသော သစ်သားသေတ္တာကြီးတစ်ခုကို ပြသည်။',
      ),
      StoryPage(
        emoji: '📻',
        textEn: 'He turns the knob, and old music crackles out slowly.',
        textMy:
            'သူသည် ခလုတ်ကိုလှည့်လိုက်ရာ ဟောင်းနွမ်းသော သီချင်းသံ တဖြည်းဖြည်း ထွက်လာသည်။',
      ),
      StoryPage(
        emoji: '🎧',
        textEn: "Kaung's own music player is tiny and plays songs instantly.",
        textMy:
            'ကောင်း၏ ကိုယ်ပိုင်သီချင်းစက်သည် သေးငယ်ပြီး သီချင်းများကို ချက်ချင်းဖွင့်ပေးနိုင်သည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-history-2',
    subject: 'history',
    grade: Grade.kg,
    titleEn: 'How We Traveled Long Ago',
    titleMy: 'ရှေးအခါက ခရီးသွားနည်း',
    descriptionEn:
        'Tap through the pages to see how people traveled from long ago until today.',
    descriptionMy:
        'ရှေးအခါကနေ ယနေ့အထိ လူများ ဘယ်လိုခရီးသွားခဲ့ကြသလဲ ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 9,
    emoji: '🚗',
    pages: [
      StoryPage(
        emoji: '🐎',
        textEn: 'Long, long ago, people rode on horses to travel far away.',
        textMy:
            'ရှေးရှေးကြီးက လူများသည် ဝေးလံသောနေရာများသို့ သွားရန် မြင်းများစီးနင်းခဲ့ကြသည်။',
      ),
      StoryPage(
        emoji: '🛺',
        textEn: 'Then people used a horse cart with wooden wheels.',
        textMy:
            'ထို့နောက် လူများသည် သစ်သားဘီးများပါသော မြင်းလှည်းများကို သုံးလာကြသည်။',
      ),
      StoryPage(
        emoji: '🚲',
        textEn:
            'Later, Grandpa rode a bicycle, pedaling with his own two feet.',
        textMy:
            'နောက်ပိုင်းတွင် အဖိုးသည် ခြေနှစ်ချောင်းဖြင့် စက်ဘီးကို နင်းလျက် စီးနင်းခဲ့သည်။',
      ),
      StoryPage(
        emoji: '🚗',
        textEn: 'Now, families ride in cars that go fast without any pedaling.',
        textMy:
            'ယခုအခါ မိသားစုများသည် ခြေနင်းစရာမလိုဘဲ မြန်ဆန်စွာသွားနိုင်သော ကားများဖြင့် စီးနင်းကြသည်။',
      ),
      StoryPage(
        emoji: '✈️',
        textEn: 'One day, Su Su even flies high in the sky on an airplane!',
        textMy:
            'တစ်နေ့ စုစုသည် လေယာဉ်ပျံဖြင့် ကောင်းကင်ပေါ်မြင့်မြင့်တောင် ပျံသန်းလိုက်ရသေးသည်!',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-geography-2',
    subject: 'geography',
    grade: Grade.nursery,
    titleEn: 'Hot Desert, Cold Snow',
    titleMy: 'ပူသောသဲကန္တာရ၊ အေးသောနှင်း',
    descriptionEn:
        'Tap through the pages to compare a hot sandy desert and a cold snowy place.',
    descriptionMy:
        'ပူသောသဲကန္တာရနှင့် အေးသောနှင်းနေရာကို နှိုင်းယှဉ်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 7,
    emoji: '🏜️',
    pages: [
      StoryPage(
        emoji: '🏜️',
        textEn: 'In the desert, the sand is hot, and camels walk slowly by.',
        textMy:
            'သဲကန္တာရတွင် သဲသည် ပူပြီး ကုလားအုတ်များ တဖြည်းဖြည်း လမ်းလျှောက်နေကြသည်။',
      ),
      StoryPage(
        emoji: '❄️',
        textEn: 'Far away, snow covers the ground, and it feels very cold.',
        textMy:
            'ဝေးကွာသောနေရာတွင် နှင်းသည် မြေပြင်ကို ဖုံးအုပ်ထားပြီး အလွန်အေးသည်။',
      ),
      StoryPage(
        emoji: '🐫',
        textEn:
            'The camel has no fur coat, but the snow fox has thick, warm fur.',
        textMy:
            'ကုလားအုတ်တွင် ဖြည်းလွှာမရှိသော်လည်း ရေခဲမြေဆင်းသည် ထူထဲနွေးထွေးသော အမွှေးထူများ ရှိသည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-geography-2',
    subject: 'geography',
    grade: Grade.kg,
    titleEn: 'Where Do Animals Live?',
    titleMy: 'တိရစ္ဆာန်များ ဘယ်မှာနေထိုင်ကြသလဲ',
    descriptionEn:
        'Tap through the pages to visit forests, oceans, and icy lands where animals make their homes.',
    descriptionMy:
        'တိရစ္ဆာန်များ အိမ်ထူထောင်ကြသော သစ်တောများ၊ သမုဒ္ဒရာများနှင့် ရေခဲဒေသများကို လည်ပတ်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 10,
    emoji: '🌍',
    pages: [
      StoryPage(
        emoji: '🌲',
        textEn:
            'Deep in the green forest, a family of monkeys swings between trees.',
        textMy:
            'စိမ်းလန်းသောသစ်တောအတွင်းနက်ရှိုင်းရာတွင် မျောက်မိသားစုတစ်ခုသည် သစ်ပင်များကြားလှုပ်ခါနေကြသည်။',
      ),
      StoryPage(
        emoji: '🌊',
        textEn:
            'In the wide blue ocean, a whale swims gracefully with her calf.',
        textMy:
            'ကျယ်ပြန့်သောပင်လယ်ပြာထဲတွင် ဝေလငါးမိခင်တစ်ကောင်သည် သားငယ်နှင့်အတူ လှပစွာ ရေကူးနေသည်။',
      ),
      StoryPage(
        emoji: '⛰️',
        textEn:
            'High on a rocky mountain, a wild goat jumps from rock to rock.',
        textMy:
            'ကျောက်တောင်ကြီးထိပ်တွင် တောဆိတ်တစ်ကောင်သည် ကျောက်တစ်တုံးမှ တစ်တုံးသို့ ခုန်နေသည်။',
      ),
      StoryPage(
        emoji: '❄️',
        textEn:
            'Far in the icy cold, a polar bear walks across the white snow.',
        textMy:
            'ရေခဲဆီးနှင်းအေးမြရာဝေးလံသောအရပ်တွင် ဝက်ဝံဖြူတစ်ကောင်သည် ဖြူဖွေးသောနှင်းပေါ်လျှောက်နေသည်။',
      ),
      StoryPage(
        emoji: '🌍',
        textEn:
            'Every animal has found the perfect home for itself around our world.',
        textMy:
            'တိရစ္ဆာန်တိုင်းသည် ကမ္ဘာကြီးပေါ်တွင် သူတို့နှင့်လျော်ညီသော အိမ်ကို ရှာတွေ့ခဲ့ကြပြီ။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-nursery-storytelling-computing-2',
    subject: 'computing',
    grade: Grade.nursery,
    titleEn: 'Tapping the Tablet Screen',
    titleMy: 'တက်ဘလက်မျက်နှာပြင်ကို တို့ခြင်း',
    descriptionEn:
        'Tap through the pages to see how one gentle tap opens a fun game.',
    descriptionMy:
        'ညင်သာစွာတို့လိုက်ခြင်းတစ်ခုက ပျော်စရာဂိမ်းတစ်ခုကို ဘယ်လိုဖွင့်ပေးသလဲ ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 6,
    emoji: '📱',
    pages: [
      StoryPage(
        emoji: '📱',
        textEn: 'May Thu holds a tablet with colorful pictures on the screen.',
        textMy:
            'မေသူသည် မျက်နှာပြင်ပေါ်တွင် အရောင်စုံပုံများပါသော တက်ဘလက်တစ်ခုကို ကိုင်ထားသည်။',
      ),
      StoryPage(
        emoji: '👆',
        textEn: 'She taps gently on one small picture with her finger.',
        textMy: 'သူမသည် လက်ချောင်းဖြင့် ပုံငယ်တစ်ပုံကို ညင်သာစွာ တို့လိုက်သည်။',
      ),
      StoryPage(
        emoji: '🎮',
        textEn: 'A fun game opens up, and May Thu smiles wide.',
        textMy:
            'ပျော်စရာဂိမ်းတစ်ခု ဖွင့်လာသဖြင့် မေသူသည် ရင်းရင်းလန်းလန်း ပြုံးလိုက်သည်။',
      ),
    ],
  ),
  NurseryStoryDef(
    id: 'mock-kg-storytelling-computing-2',
    subject: 'computing',
    grade: Grade.kg,
    titleEn: 'A Video Call to Grandma',
    titleMy: 'အဖွားထံ ဗီဒီယိုခေါ်ဆိုခြင်း',
    descriptionEn:
        'Tap through the pages to see how a tablet lets us see and talk to family far away.',
    descriptionMy:
        'တက်ဘလက်တစ်ခုက ဝေးကွာနေသောမိသားစုကို ဘယ်လိုမြင်တွေ့ ပြောဆိုနိုင်စေသလဲ ကြည့်ရန် စာမျက်နှာများကို တို့ပါ။',
    starsReward: 9,
    emoji: '📹',
    pages: [
      StoryPage(
        emoji: '📱',
        textEn: 'Aung Aung misses Grandma, who lives far away in another town.',
        textMy: 'အောင်အောင်သည် အခြားမြို့တွင်နေထိုင်သော အဖွားကို လွမ်းနေသည်။',
      ),
      StoryPage(
        emoji: '👆',
        textEn: "His mother taps the green call button on the tablet screen.",
        textMy:
            'သူ့အမေသည် တက်ဘလက်မျက်နှာပြင်ပေါ်ရှိ အစိမ်းရောင်ခေါ်ဆိုခလုတ်ကို တို့လိုက်သည်။',
      ),
      StoryPage(
        emoji: '📞',
        textEn: "The screen rings, and then Grandma's smiling face appears!",
        textMy:
            'မျက်နှာပြင်တွင် ခေါ်သံမြည်ပြီးနောက် အဖွား၏ပြုံးရွှင်နေသောမျက်နှာ ပေါ်လာသည်!',
      ),
      StoryPage(
        emoji: '🗣️',
        textEn: 'Aung Aung waves and talks to Grandma just like she is nearby.',
        textMy: 'အောင်အောင်သည် အဖွားအနီးရှိနေသလို လက်ဝါးလှုပ်ပြီး စကားပြောသည်။',
      ),
      StoryPage(
        emoji: '❤️',
        textEn:
            'Even far apart, the video call makes them feel close together.',
        textMy:
            'ဝေးကွာနေသော်လည်း ဗီဒီယိုခေါ်ဆိုမှုက သူတို့ကို အနီးကပ်ခံစားစေသည်။',
      ),
    ],
  ),
];
