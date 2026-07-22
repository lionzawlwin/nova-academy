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
];
