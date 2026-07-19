import '../../models/child_model.dart';

/// One draggable/droppable content item for a Nursery/KG match-pairs
/// activity. Plain Dart (not Freezed) matching the existing
/// [QuizQuestion] convention in `mock_quiz_data.dart` -- this is static,
/// hand-authored content, not a Firestore-backed model.
class MatchPairItem {
  const MatchPairItem({
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

class NurseryActivityDef {
  const NurseryActivityDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.contentType,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.items,
  });

  final String id;
  final String subject;
  final Grade grade;
  final String contentType;
  final String titleEn;
  final String titleMy;
  final String descriptionEn;
  final String descriptionMy;
  final int starsReward;
  final List<MatchPairItem> items;
}

const List<MatchPairItem> _fallbackPairs = [
  MatchPairItem(
    id: 'apple',
    emoji: '🍎',
    colorValue: 0xFFE64545,
    labelEn: 'Apple',
    labelMy: 'ပန်းသီး',
  ),
  MatchPairItem(
    id: 'banana',
    emoji: '🍌',
    colorValue: 0xFFFFC93C,
    labelEn: 'Banana',
    labelMy: 'ငှက်ပျောသီး',
  ),
  MatchPairItem(
    id: 'grapes',
    emoji: '🍇',
    colorValue: 0xFF9C6ADE,
    labelEn: 'Grapes',
    labelMy: 'စပျစ်သီး',
  ),
  MatchPairItem(
    id: 'orange',
    emoji: '🍊',
    colorValue: 0xFFFF8A3D,
    labelEn: 'Orange',
    labelMy: 'လိမ္မော်သီး',
  ),
  MatchPairItem(
    id: 'watermelon',
    emoji: '🍉',
    colorValue: 0xFF4CB963,
    labelEn: 'Watermelon',
    labelMy: 'ဖရဲသီး',
  ),
];

List<MatchPairItem> matchPairsForModule(String moduleId) {
  for (final module in nurseryKgActivityBank) {
    if (module.id == moduleId) return module.items;
  }
  return _fallbackPairs;
}

const List<NurseryActivityDef> nurseryKgActivityBank = [
  NurseryActivityDef(
    id: 'mock-nursery-phonics-1',
    subject: 'phonics',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'Letter Sounds A to E',
    titleMy: 'အက္ခရာ A မှ E အသံများ',
    descriptionEn:
        'Drag each picture to match its beginning letter sound from A to E.',
    descriptionMy: 'ပုံစံလေးများကို A မှ E အက္ခရာအသံနှင့် ဆွဲယူတွဲစပ်ကြည့်ပါ။',
    starsReward: 6,
    items: [
      MatchPairItem(
        id: 'letter-a-apple',
        emoji: '🍎',
        colorValue: 0xFFFF7F91,
        labelEn: 'Apple',
        labelMy: 'ပန်းသီး',
      ),
      MatchPairItem(
        id: 'letter-b-ball',
        emoji: '⚽',
        colorValue: 0xFF7271F7,
        labelEn: 'Ball',
        labelMy: 'ဘောလုံး',
      ),
      MatchPairItem(
        id: 'letter-c-cat',
        emoji: '🐱',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Cat',
        labelMy: 'ကြောင်',
      ),
      MatchPairItem(
        id: 'letter-d-dog',
        emoji: '🐶',
        colorValue: 0xFFB5B557,
        labelEn: 'Dog',
        labelMy: 'ခွေး',
      ),
      MatchPairItem(
        id: 'letter-e-elephant',
        emoji: '🐘',
        colorValue: 0xFF94BDFF,
        labelEn: 'Elephant',
        labelMy: 'ဆင်',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-nursery-phonics-2',
    subject: 'phonics',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'Letter Sounds F to J',
    titleMy: 'အက္ခရာ F မှ J အသံများ',
    descriptionEn:
        'Drag each picture to match its beginning letter sound from F to J.',
    descriptionMy: 'ပုံစံလေးများကို F မှ J အက္ခရာအသံနှင့် ဆွဲယူတွဲစပ်ကြည့်ပါ။',
    starsReward: 6,
    items: [
      MatchPairItem(
        id: 'letter-f-fish',
        emoji: '🐟',
        colorValue: 0xFFFF6A65,
        labelEn: 'Fish',
        labelMy: 'ငါး',
      ),
      MatchPairItem(
        id: 'letter-g-grapes',
        emoji: '🍇',
        colorValue: 0xFFFF7F91,
        labelEn: 'Grapes',
        labelMy: 'စပျစ်သီး',
      ),
      MatchPairItem(
        id: 'letter-h-hat',
        emoji: '🎩',
        colorValue: 0xFF7271F7,
        labelEn: 'Hat',
        labelMy: 'ဦးထုပ်',
      ),
      MatchPairItem(
        id: 'letter-i-ice-cream',
        emoji: '🍦',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Ice Cream',
        labelMy: 'ရေခဲမုန့်',
      ),
      MatchPairItem(
        id: 'letter-j-juice',
        emoji: '🧃',
        colorValue: 0xFFB5B557,
        labelEn: 'Juice',
        labelMy: 'ဖျော်ရည်',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-nursery-phonics-3',
    subject: 'phonics',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'Rhyming Pairs',
    titleMy: 'ကာရန်တူစကားလုံးများ',
    descriptionEn:
        'Listen and drag pictures whose names sound alike to find the rhyming pairs.',
    descriptionMy:
        'အသံဆင်တူသည့် ပုံများကို ဆွဲယူ၍ ကာရန်တူစကားလုံးများကို ရှာဖွေပါ။',
    starsReward: 6,
    items: [
      MatchPairItem(
        id: 'rhyme-cat',
        emoji: '🐱',
        colorValue: 0xFF94BDFF,
        labelEn: 'Cat',
        labelMy: 'ကြောင်',
      ),
      MatchPairItem(
        id: 'rhyme-hat',
        emoji: '🎩',
        colorValue: 0xFFFF6A65,
        labelEn: 'Hat',
        labelMy: 'ဦးထုပ်',
      ),
      MatchPairItem(
        id: 'rhyme-sun',
        emoji: '☀️',
        colorValue: 0xFFFF7F91,
        labelEn: 'Sun',
        labelMy: 'နေ',
      ),
      MatchPairItem(
        id: 'rhyme-bun',
        emoji: '🥯',
        colorValue: 0xFF7271F7,
        labelEn: 'Bun',
        labelMy: 'မုန့်လုံး',
      ),
      MatchPairItem(
        id: 'rhyme-star',
        emoji: '⭐',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Star',
        labelMy: 'ကြယ်',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-nursery-math-1',
    subject: 'math',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'Counting 1 to 5',
    titleMy: '၁ မှ ၅ အထိ ရေတွက်ခြင်း',
    descriptionEn:
        'The child drags each number and matches it to the correct amount of objects.',
    descriptionMy:
        'ကလေးသည် ဂဏန်းတစ်ခုစီကို ဆွဲယူပြီး မှန်ကန်သော ပစ္စည်းအရေအတွက်နှင့် တွဲစပ်ပါသည်။',
    starsReward: 6,
    items: [
      MatchPairItem(
        id: 'number-one',
        emoji: '1️⃣',
        colorValue: 0xFFFF6F91,
        labelEn: 'One',
        labelMy: 'တစ်',
      ),
      MatchPairItem(
        id: 'number-two',
        emoji: '2️⃣',
        colorValue: 0xFF7273F5,
        labelEn: 'Two',
        labelMy: 'နှစ်',
      ),
      MatchPairItem(
        id: 'number-three',
        emoji: '3️⃣',
        colorValue: 0xFFFFD43C,
        labelEn: 'Three',
        labelMy: 'သုံး',
      ),
      MatchPairItem(
        id: 'number-four',
        emoji: '4️⃣',
        colorValue: 0xFFB5B557,
        labelEn: 'Four',
        labelMy: 'လေး',
      ),
      MatchPairItem(
        id: 'number-five',
        emoji: '5️⃣',
        colorValue: 0xFFB8BCFF,
        labelEn: 'Five',
        labelMy: 'ငါး',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-nursery-math-2',
    subject: 'math',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'Fun with Shapes',
    titleMy: 'ပုံသဏ္ဌာန်များနှင့် ပျော်ရွှင်ခြင်း',
    descriptionEn:
        'The child drags each shape to match it with its correct name.',
    descriptionMy:
        'ကလေးသည် ပုံသဏ္ဌာန်တစ်ခုစီကို ဆွဲယူပြီး ၎င်း၏ မှန်ကန်သော အမည်နှင့် တွဲစပ်ပါသည်။',
    starsReward: 6,
    items: [
      MatchPairItem(
        id: 'circle',
        emoji: '🔵',
        colorValue: 0xFF7273F5,
        labelEn: 'Circle',
        labelMy: 'စက်ဝိုင်း',
      ),
      MatchPairItem(
        id: 'square',
        emoji: '🟨',
        colorValue: 0xFFFFD43C,
        labelEn: 'Square',
        labelMy: 'စတုရန်း',
      ),
      MatchPairItem(
        id: 'triangle',
        emoji: '🔺',
        colorValue: 0xFFB5B557,
        labelEn: 'Triangle',
        labelMy: 'တြိဂံ',
      ),
      MatchPairItem(
        id: 'star',
        emoji: '⭐',
        colorValue: 0xFFB8BCFF,
        labelEn: 'Star',
        labelMy: 'ကြယ်',
      ),
      MatchPairItem(
        id: 'heart',
        emoji: '❤️',
        colorValue: 0xFFFF6565,
        labelEn: 'Heart',
        labelMy: 'နှလုံးသား',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-nursery-math-3',
    subject: 'math',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'Colors & Counting',
    titleMy: 'အရောင်များနှင့် ရေတွက်ခြင်း',
    descriptionEn:
        'The child drags each colored ball to match it with its color name while practicing counting.',
    descriptionMy:
        'ကလေးသည် အရောင်ဘောလုံးတစ်လုံးစီကို ဆွဲယူပြီး အရောင်အမည်နှင့် တွဲစပ်ကာ ရေတွက်ခြင်းကို လေ့ကျင့်ပါသည်။',
    starsReward: 6,
    items: [
      MatchPairItem(
        id: 'red-ball',
        emoji: '🔴',
        colorValue: 0xFFFF6F91,
        labelEn: 'Red',
        labelMy: 'အနီရောင်',
      ),
      MatchPairItem(
        id: 'blue-ball',
        emoji: '🔵',
        colorValue: 0xFF7273F5,
        labelEn: 'Blue',
        labelMy: 'အပြာရောင်',
      ),
      MatchPairItem(
        id: 'yellow-ball',
        emoji: '🟡',
        colorValue: 0xFFFFD43C,
        labelEn: 'Yellow',
        labelMy: 'အဝါရောင်',
      ),
      MatchPairItem(
        id: 'green-ball',
        emoji: '🟢',
        colorValue: 0xFFB5B557,
        labelEn: 'Green',
        labelMy: 'အစိမ်းရောင်',
      ),
      MatchPairItem(
        id: 'purple-ball',
        emoji: '🟣',
        colorValue: 0xFFB8BCFF,
        labelEn: 'Purple',
        labelMy: 'ခရမ်းရောင်',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-nursery-generalknowledge-1',
    subject: 'generalknowledge',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'Animals & Their Homes',
    titleMy: 'တိရစ္ဆာန်များနှင့် သူတို့၏နေအိမ်များ',
    descriptionEn:
        'The child drags each animal picture onto its matching card to learn simple animal names.',
    descriptionMy:
        'ကလေးငယ်သည် တိရစ္ဆာန်ပုံများကို လက်ဖြင့်ဆွဲယူ၍ လိုက်ဖက်သောကတ်ပေါ်တွင် တပ်ထားခြင်းဖြင့် တိရစ္ဆာန်အမည်များကို လေ့လာရမည်။',
    starsReward: 6,
    items: [
      MatchPairItem(
        id: 'dog',
        emoji: '🐶',
        colorValue: 0xFFFF6891,
        labelEn: 'Dog',
        labelMy: 'ခွေး',
      ),
      MatchPairItem(
        id: 'cat',
        emoji: '🐱',
        colorValue: 0xFF4EA7F7,
        labelEn: 'Cat',
        labelMy: 'ကြောင်',
      ),
      MatchPairItem(
        id: 'fish',
        emoji: '🐟',
        colorValue: 0xFFFFD43C,
        labelEn: 'Fish',
        labelMy: 'ငါး',
      ),
      MatchPairItem(
        id: 'elephant',
        emoji: '🐘',
        colorValue: 0xFFC2A357,
        labelEn: 'Elephant',
        labelMy: 'ဆင်',
      ),
      MatchPairItem(
        id: 'bird',
        emoji: '🐦',
        colorValue: 0xFF9600FF,
        labelEn: 'Bird',
        labelMy: 'ငှက်',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-nursery-generalknowledge-2',
    subject: 'generalknowledge',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'My Family & My Body',
    titleMy: 'ကျွန်ုပ်၏မိသားစုနှင့် ကိုယ်ခန္ဓာ',
    descriptionEn:
        'The child matches family members and body parts to their emoji pictures by dragging and dropping.',
    descriptionMy:
        'ကလေးငယ်သည် မိသားစုဝင်များနှင့် ကိုယ်ခန္ဓာအစိတ်အပိုင်းများကို ပုံများနှင့် ဆွဲယူ၍ လိုက်ဖက်အောင် ထားရမည်။',
    starsReward: 6,
    items: [
      MatchPairItem(
        id: 'mom',
        emoji: '👩',
        colorValue: 0xFFFF6891,
        labelEn: 'Mom',
        labelMy: 'အမေ',
      ),
      MatchPairItem(
        id: 'dad',
        emoji: '👨',
        colorValue: 0xFF4EA7F7,
        labelEn: 'Dad',
        labelMy: 'အဖေ',
      ),
      MatchPairItem(
        id: 'eye',
        emoji: '👀',
        colorValue: 0xFFFFD43C,
        labelEn: 'Eyes',
        labelMy: 'မျက်လုံး',
      ),
      MatchPairItem(
        id: 'hand',
        emoji: '✋',
        colorValue: 0xFFC2A357,
        labelEn: 'Hand',
        labelMy: 'လက်',
      ),
      MatchPairItem(
        id: 'nose',
        emoji: '👃',
        colorValue: 0xFFFF6665,
        labelEn: 'Nose',
        labelMy: 'နှာခေါင်း',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-nursery-generalknowledge-3',
    subject: 'generalknowledge',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'Yummy Fruits & Vegetables',
    titleMy: 'အရသာရှိသော သစ်သီးနှင့် ဟင်းသီးဟင်းရွက်များ',
    descriptionEn:
        'The child drags colorful fruit and vegetable emojis onto their matching cards to learn healthy food names.',
    descriptionMy:
        'ကလေးငယ်သည် ကျန်းမာရေးနှင့်ညီသော အစားအစာအမည်များကို လေ့လာရန် အရောင်စုံသစ်သီးနှင့် ဟင်းသီးဟင်းရွက်ပုံများကို ဆွဲယူ၍ လိုက်ဖက်အောင်ထားရမည်။',
    starsReward: 6,
    items: [
      MatchPairItem(
        id: 'apple',
        emoji: '🍎',
        colorValue: 0xFFFF6891,
        labelEn: 'Apple',
        labelMy: 'ပန်းသီး',
      ),
      MatchPairItem(
        id: 'banana',
        emoji: '🍌',
        colorValue: 0xFFFFD43C,
        labelEn: 'Banana',
        labelMy: 'ငှက်ပျောသီး',
      ),
      MatchPairItem(
        id: 'carrot',
        emoji: '🥕',
        colorValue: 0xFFFF6665,
        labelEn: 'Carrot',
        labelMy: 'မုန်လာဥနီ',
      ),
      MatchPairItem(
        id: 'tomato',
        emoji: '🍅',
        colorValue: 0xFFC2A357,
        labelEn: 'Tomato',
        labelMy: 'ခရမ်းချဉ်သီး',
      ),
      MatchPairItem(
        id: 'watermelon',
        emoji: '🍉',
        colorValue: 0xFF4EA7F7,
        labelEn: 'Watermelon',
        labelMy: 'ဖရဲသီး',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-nursery-stem-1',
    subject: 'stem',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'Living or Not?',
    titleMy: 'အသက်ရှင်သလား၊ မရှင်ဘူးလား',
    descriptionEn:
        'Children drag each picture into the correct box -- Living or Non-living.',
    descriptionMy:
        'ကလေးများသည် ပုံစံတစ်ခုစီကို "အသက်ရှင်သတ္တဝါ" သို့မဟုတ် "အသက်မရှင်သောအရာ" ဘောက်စ်မှန်ကန်ရာသို့ ဆွဲချထည့်ကြသည်။',
    starsReward: 6,
    items: [
      MatchPairItem(
        id: 'cat',
        emoji: '🐱',
        colorValue: 0xFFFF6F91,
        labelEn: 'Cat',
        labelMy: 'ကြောင်',
      ),
      MatchPairItem(
        id: 'tree',
        emoji: '🌳',
        colorValue: 0xFF8BC157,
        labelEn: 'Tree',
        labelMy: 'သစ်ပင်',
      ),
      MatchPairItem(
        id: 'rock',
        emoji: '🪨',
        colorValue: 0xFF8691FF,
        labelEn: 'Rock',
        labelMy: 'ကျောက်တုံး',
      ),
      MatchPairItem(
        id: 'ball',
        emoji: '⚽',
        colorValue: 0xFF7271F7,
        labelEn: 'Ball',
        labelMy: 'ဘောလုံး',
      ),
      MatchPairItem(
        id: 'fish',
        emoji: '🐟',
        colorValue: 0xFFFFAC3C,
        labelEn: 'Fish',
        labelMy: 'ငါး',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-nursery-stem-2',
    subject: 'stem',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'My Five Senses',
    titleMy: 'ကျွန်ုပ်၏ ဣန္ဒြေငါးပါး',
    descriptionEn:
        'Children match each body part to the action it helps us do -- see, hear, smell, touch, or taste.',
    descriptionMy:
        'ကလေးများသည် ခန္ဓာကိုယ်အစိတ်အပိုင်းတစ်ခုစီကို ၎င်း၏အလုပ် - မြင်ခြင်း၊ ကြားခြင်း၊ အနံ့ခံခြင်း၊ ထိတွေ့ခြင်း သို့မဟုတ် မြည်းစမ်းခြင်းနှင့် တွဲချိတ်ကြသည်။',
    starsReward: 6,
    items: [
      MatchPairItem(
        id: 'eye',
        emoji: '👀',
        colorValue: 0xFF7271F7,
        labelEn: 'Eyes See',
        labelMy: 'မျက်လုံးဖြင့်မြင်ခြင်း',
      ),
      MatchPairItem(
        id: 'ear',
        emoji: '👂',
        colorValue: 0xFFFF6F91,
        labelEn: 'Ears Hear',
        labelMy: 'နားဖြင့်ကြားခြင်း',
      ),
      MatchPairItem(
        id: 'nose',
        emoji: '👃',
        colorValue: 0xFFFFAC3C,
        labelEn: 'Nose Smells',
        labelMy: 'နှာခေါင်းဖြင့်နမ်းခြင်း',
      ),
      MatchPairItem(
        id: 'hand',
        emoji: '✋',
        colorValue: 0xFF8BC157,
        labelEn: 'Hands Touch',
        labelMy: 'လက်ဖြင့်ထိတွေ့ခြင်း',
      ),
      MatchPairItem(
        id: 'tongue',
        emoji: '👅',
        colorValue: 0xFF8691FF,
        labelEn: 'Tongue Tastes',
        labelMy: 'လျှာဖြင့်မြည်းစမ်းခြင်း',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-nursery-stem-3',
    subject: 'stem',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'What Happens Next?',
    titleMy: 'ဘာဖြစ်လာမလဲ',
    descriptionEn:
        'Children drag each cause picture next to the effect it creates, like rain making a puddle.',
    descriptionMy:
        'ကလေးများသည် အကြောင်းတရားပုံကို ၎င်း၏အကျိုးဆက်ဘေးတွင် ဆွဲချထားကြသည်၊ ဥပမာ မိုးရွာလျှင် ရေကန်ငယ်ဖြစ်ပေါ်သကဲ့သို့ဖြစ်သည်။',
    starsReward: 6,
    items: [
      MatchPairItem(
        id: 'rain-cloud',
        emoji: '🌧️',
        colorValue: 0xFF7271F7,
        labelEn: 'Rain',
        labelMy: 'မိုးရွာခြင်း',
      ),
      MatchPairItem(
        id: 'puddle',
        emoji: '💧',
        colorValue: 0xFF8691FF,
        labelEn: 'Puddle',
        labelMy: 'ရေကန်ငယ်',
      ),
      MatchPairItem(
        id: 'sun',
        emoji: '☀️',
        colorValue: 0xFFFFAC3C,
        labelEn: 'Sunshine',
        labelMy: 'နေရောင်ခြည်',
      ),
      MatchPairItem(
        id: 'sprout',
        emoji: '🌱',
        colorValue: 0xFF8BC157,
        labelEn: 'Sprout',
        labelMy: 'အညှောက်ငယ်',
      ),
      MatchPairItem(
        id: 'push-ball',
        emoji: '⚽',
        colorValue: 0xFFFF7B65,
        labelEn: 'Rolling Ball',
        labelMy: 'လှိမ့်နေသောဘောလုံး',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-kg-phonics-1',
    subject: 'phonics',
    grade: Grade.kg,
    contentType: 'interactive',
    titleEn: 'Letter Sounds K-O',
    titleMy: 'အက္ခရာအသံများ (K မှ O)',
    descriptionEn:
        'The child drags each letter to the picture whose name starts with the same sound.',
    descriptionMy:
        'ကလေးသည် အက္ခရာတစ်လုံးစီကို အသံတူညီသည့် အစအက္ခရာရှိသော ပုံနှင့် တွဲစပ်ဆွဲယူပါသည်။',
    starsReward: 8,
    items: [
      MatchPairItem(
        id: 'king-crown',
        emoji: '👑',
        colorValue: 0xFFFFBF3C,
        labelEn: 'King',
        labelMy: 'ဘုရင်',
      ),
      MatchPairItem(
        id: 'lion',
        emoji: '🦁',
        colorValue: 0xFFA20A65,
        labelEn: 'Lion',
        labelMy: 'ခြင်္သေ့',
      ),
      MatchPairItem(
        id: 'moon',
        emoji: '🌙',
        colorValue: 0xFFB3A2FF,
        labelEn: 'Moon',
        labelMy: 'လ',
      ),
      MatchPairItem(
        id: 'nest',
        emoji: '🪺',
        colorValue: 0xFF706757,
        labelEn: 'Nest',
        labelMy: 'အသိုက်',
      ),
      MatchPairItem(
        id: 'orange-fruit',
        emoji: '🍊',
        colorValue: 0xFF5555F7,
        labelEn: 'Orange',
        labelMy: 'လိမ္မော်သီး',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-kg-phonics-2',
    subject: 'phonics',
    grade: Grade.kg,
    contentType: 'interactive',
    titleEn: 'Letter Sounds P-T',
    titleMy: 'အက္ခရာအသံများ (P မှ T)',
    descriptionEn:
        'The child listens to each letter sound and drags it onto the picture that begins with the same sound.',
    descriptionMy:
        'ကလေးသည် အက္ခရာအသံတစ်ခုစီကို နားထောင်ပြီး အသံတူညီသည့် ပုံပေါ်သို့ ဆွဲထည့်ပါသည်။',
    starsReward: 8,
    items: [
      MatchPairItem(
        id: 'pig',
        emoji: '🐷',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Pig',
        labelMy: 'ဝက်',
      ),
      MatchPairItem(
        id: 'queen',
        emoji: '👸',
        colorValue: 0xFFA20A65,
        labelEn: 'Queen',
        labelMy: 'မိဖုရား',
      ),
      MatchPairItem(
        id: 'rabbit',
        emoji: '🐰',
        colorValue: 0xFF706757,
        labelEn: 'Rabbit',
        labelMy: 'ယုန်',
      ),
      MatchPairItem(
        id: 'sun',
        emoji: '☀️',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Sun',
        labelMy: 'နေ',
      ),
      MatchPairItem(
        id: 'tiger',
        emoji: '🐯',
        colorValue: 0xFF555566,
        labelEn: 'Tiger',
        labelMy: 'ကျား',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-kg-phonics-3',
    subject: 'phonics',
    grade: Grade.kg,
    contentType: 'interactive',
    titleEn: 'Rhyming & Sight Words',
    titleMy: 'အသံဆင်တူစကားများနှင့် အသုံးများသောစကားလုံးများ',
    descriptionEn:
        'The child drags rhyming word pairs together and matches common sight words to their pictures.',
    descriptionMy:
        'ကလေးသည် အသံဆင်တူသော စကားလုံးအတွဲများကို တွဲယူပြီး အသုံးများသောစကားလုံးများကို ၎င်းတို့၏ပုံများနှင့် ကိုက်ညီအောင်ဆွဲယူပါသည်။',
    starsReward: 8,
    items: [
      MatchPairItem(
        id: 'cat-rhyme',
        emoji: '🐱',
        colorValue: 0xFFFFBF91,
        labelEn: 'Cat',
        labelMy: 'ကြောင်',
      ),
      MatchPairItem(
        id: 'hat-rhyme',
        emoji: '🎩',
        colorValue: 0xFFFFD63C,
        labelEn: 'Hat',
        labelMy: 'ဦးထုပ်',
      ),
      MatchPairItem(
        id: 'dog-rhyme',
        emoji: '🐶',
        colorValue: 0xFF706757,
        labelEn: 'Dog',
        labelMy: 'ခွေး',
      ),
      MatchPairItem(
        id: 'see-sight-word',
        emoji: '👀',
        colorValue: 0xFF7273F7,
        labelEn: 'See',
        labelMy: 'မြင်',
      ),
      MatchPairItem(
        id: 'go-sight-word',
        emoji: '🏃',
        colorValue: 0xFFA20A7F,
        labelEn: 'Go',
        labelMy: 'သွား',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-kg-math-1',
    subject: 'math',
    grade: Grade.kg,
    contentType: 'interactive',
    titleEn: 'Counting 6 to 10',
    titleMy: '၆ မှ ၁၀ အထိ ရေတွက်ခြင်း',
    descriptionEn:
        'Children count groups of objects from six to ten and drag each group to match its number.',
    descriptionMy:
        'ကလေးများသည် ပစ္စည်းအုပ်စုများကို ခြောက်ခုမှ ဆယ်ခုအထိ ရေတွက်ပြီး အုပ်စုတစ်ခုစီကို ၎င်း၏ဂဏန်းနှင့် ကိုက်ညီအောင် ဆွဲယူတွဲဖက်ရမည်။',
    starsReward: 8,
    items: [
      MatchPairItem(
        id: 'six',
        emoji: '6️⃣',
        colorValue: 0xFFFF6391,
        labelEn: 'Six',
        labelMy: 'ခြောက်',
      ),
      MatchPairItem(
        id: 'seven',
        emoji: '7️⃣',
        colorValue: 0xFF6951F7,
        labelEn: 'Seven',
        labelMy: 'ခုနစ်',
      ),
      MatchPairItem(
        id: 'eight',
        emoji: '8️⃣',
        colorValue: 0xFFFFD43C,
        labelEn: 'Eight',
        labelMy: 'ရှစ်',
      ),
      MatchPairItem(
        id: 'nine',
        emoji: '9️⃣',
        colorValue: 0xFFB9FF57,
        labelEn: 'Nine',
        labelMy: 'ကိုး',
      ),
      MatchPairItem(
        id: 'ten',
        emoji: '🔟',
        colorValue: 0xFFC1D2FF,
        labelEn: 'Ten',
        labelMy: 'ဆယ်',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-kg-math-2',
    subject: 'math',
    grade: Grade.kg,
    contentType: 'interactive',
    titleEn: 'Simple Addition to 5',
    titleMy: '၅ အထိ ရိုးရှင်းသော ပေါင်းခြင်း',
    descriptionEn:
        'Children solve simple addition problems with answers up to five and drag each problem to match its correct answer.',
    descriptionMy:
        'ကလေးများသည် အဖြေ ငါးအထိရှိသည့် ရိုးရှင်းသောပေါင်းခြင်းပြဿနာများကို ဖြေရှင်းပြီး မှန်ကန်သောအဖြေနှင့် ဆွဲယူတွဲဖက်ရမည်။',
    starsReward: 8,
    items: [
      MatchPairItem(
        id: 'one-plus-one',
        emoji: '2️⃣',
        colorValue: 0xFFFF7C65,
        labelEn: '1+1=2',
        labelMy: '၁+၁=၂',
      ),
      MatchPairItem(
        id: 'one-plus-two',
        emoji: '3️⃣',
        colorValue: 0xFFFF6391,
        labelEn: '1+2=3',
        labelMy: '၁+၂=၃',
      ),
      MatchPairItem(
        id: 'two-plus-two',
        emoji: '4️⃣',
        colorValue: 0xFF6951F7,
        labelEn: '2+2=4',
        labelMy: '၂+၂=၄',
      ),
      MatchPairItem(
        id: 'three-plus-two',
        emoji: '5️⃣',
        colorValue: 0xFFFFD43C,
        labelEn: '3+2=5',
        labelMy: '၃+၂=၅',
      ),
      MatchPairItem(
        id: 'four-plus-one',
        emoji: '5️⃣',
        colorValue: 0xFFB9FF57,
        labelEn: '4+1=5',
        labelMy: '၄+၁=၅',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-kg-math-3',
    subject: 'math',
    grade: Grade.kg,
    contentType: 'interactive',
    titleEn: 'Bigger and Smaller',
    titleMy: 'ကြီးသည်နှင့် ငယ်သည်',
    descriptionEn:
        'Children compare pairs of objects and numbers, then drag each item to match whether it is bigger or smaller.',
    descriptionMy:
        'ကလေးများသည် ပစ္စည်းနှင့် ဂဏန်းအတွဲများကို နှိုင်းယှဉ်ပြီး ၎င်းတို့သည် ကြီးသည် သို့မဟုတ် ငယ်သည်ကို ဆွဲယူတွဲဖက်ရမည်။',
    starsReward: 8,
    items: [
      MatchPairItem(
        id: 'big-elephant',
        emoji: '🐘',
        colorValue: 0xFFC1D2FF,
        labelEn: 'Big Elephant',
        labelMy: 'ကြီးမားသော ဆင်',
      ),
      MatchPairItem(
        id: 'small-ant',
        emoji: '🐜',
        colorValue: 0xFFFF7C65,
        labelEn: 'Small Ant',
        labelMy: 'သေးငယ်သော ပုရွက်ဆိတ်',
      ),
      MatchPairItem(
        id: 'big-watermelon',
        emoji: '🍉',
        colorValue: 0xFFFF6391,
        labelEn: 'Big Watermelon',
        labelMy: 'ကြီးမားသော ဖရဲသီး',
      ),
      MatchPairItem(
        id: 'small-berry',
        emoji: '🫐',
        colorValue: 0xFF6951F7,
        labelEn: 'Small Berry',
        labelMy: 'သေးငယ်သော ဘယ်ရီသီး',
      ),
      MatchPairItem(
        id: 'bigger-number',
        emoji: '🔢',
        colorValue: 0xFFFFD43C,
        labelEn: 'Bigger Number',
        labelMy: 'ပိုကြီးသော ဂဏန်း',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-kg-generalknowledge-1',
    subject: 'generalknowledge',
    grade: Grade.kg,
    contentType: 'interactive',
    titleEn: 'Myanmar Culture Basics',
    titleMy: 'မြန်မာ့ ယဉ်ကျေးမှု အခြေခံများ',
    descriptionEn:
        'Children drag and drop traditional Myanmar cultural items to match each one with its correct name.',
    descriptionMy:
        'ကလေးများသည် မြန်မာ့ရိုးရာယဉ်ကျေးမှုပစ္စည်းများကို မှန်ကန်သောအမည်နှင့် ဆွဲယူချိတ်ဆက်ကိုက်ညှိကြသည်။',
    starsReward: 8,
    items: [
      MatchPairItem(
        id: 'golden-pagoda',
        emoji: '🛕',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Golden Pagoda',
        labelMy: 'ရွှေစေတီ',
      ),
      MatchPairItem(
        id: 'longyi',
        emoji: '🥻',
        colorValue: 0xFFFF6891,
        labelEn: 'Longyi',
        labelMy: 'လုံချည်',
      ),
      MatchPairItem(
        id: 'thanaka',
        emoji: '🌿',
        colorValue: 0xFFB4BB57,
        labelEn: 'Thanaka Paste',
        labelMy: 'သနပ်ခါး',
      ),
      MatchPairItem(
        id: 'water-festival',
        emoji: '💦',
        colorValue: 0xFF6F88F7,
        labelEn: 'Water Festival',
        labelMy: 'သင်္ကြန်ပွဲ',
      ),
      MatchPairItem(
        id: 'traditional-dance',
        emoji: '💃',
        colorValue: 0xFFB9B6FF,
        labelEn: 'Traditional Dance',
        labelMy: 'ရိုးရာအက',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-kg-generalknowledge-2',
    subject: 'generalknowledge',
    grade: Grade.kg,
    contentType: 'interactive',
    titleEn: 'Weather & Seasons',
    titleMy: 'ရာသီဥတုနှင့် ရာသီများ',
    descriptionEn:
        'Children drag and drop weather and season pictures to match each one with its correct name.',
    descriptionMy:
        'ကလေးများသည် ရာသီဥတုနှင့် ရာသီပုံများကို မှန်ကန်သောအမည်နှင့် ဆွဲယူချိတ်ဆက်ကိုက်ညှိကြသည်။',
    starsReward: 8,
    items: [
      MatchPairItem(
        id: 'sunny-day',
        emoji: '☀️',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Sunny Day',
        labelMy: 'နေသာသောနေ့',
      ),
      MatchPairItem(
        id: 'rainy-season',
        emoji: '🌧️',
        colorValue: 0xFF6F88F7,
        labelEn: 'Rainy Season',
        labelMy: 'မိုးရာသီ',
      ),
      MatchPairItem(
        id: 'cold-winter',
        emoji: '❄️',
        colorValue: 0xFFB9B6FF,
        labelEn: 'Cold Winter',
        labelMy: 'ဆောင်းရာသီ',
      ),
      MatchPairItem(
        id: 'rainbow',
        emoji: '🌈',
        colorValue: 0xFFFF6891,
        labelEn: 'Rainbow',
        labelMy: 'သက်တံ',
      ),
      MatchPairItem(
        id: 'windy-day',
        emoji: '🌬️',
        colorValue: 0xFFB4BB57,
        labelEn: 'Windy Day',
        labelMy: 'လေတိုက်သောနေ့',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-kg-generalknowledge-3',
    subject: 'generalknowledge',
    grade: Grade.kg,
    contentType: 'interactive',
    titleEn: 'Community Helpers',
    titleMy: 'အသိုင်းအဝိုင်း ကူညီသူများ',
    descriptionEn:
        'Children drag and drop pictures of community helpers to match each one with the job they do.',
    descriptionMy:
        'ကလေးများသည် အသိုင်းအဝိုင်းကူညီသူများ၏ ပုံများကို သူတို့၏ အလုပ်အမည်နှင့် ဆွဲယူချိတ်ဆက်ကိုက်ညှိကြသည်။',
    starsReward: 8,
    items: [
      MatchPairItem(
        id: 'doctor',
        emoji: '🩺',
        colorValue: 0xFF6F88F7,
        labelEn: 'Doctor',
        labelMy: 'ဆရာဝန်',
      ),
      MatchPairItem(
        id: 'police-officer',
        emoji: '👮',
        colorValue: 0xFFB4BB57,
        labelEn: 'Police Officer',
        labelMy: 'ရဲ',
      ),
      MatchPairItem(
        id: 'firefighter',
        emoji: '🚒',
        colorValue: 0xFFFF6366,
        labelEn: 'Firefighter',
        labelMy: 'မီးသတ်သမား',
      ),
      MatchPairItem(
        id: 'teacher',
        emoji: '👩‍🏫',
        colorValue: 0xFFB9B6FF,
        labelEn: 'Teacher',
        labelMy: 'ဆရာမ',
      ),
      MatchPairItem(
        id: 'farmer',
        emoji: '👨‍🌾',
        colorValue: 0xFFFFBF3C,
        labelEn: 'Farmer',
        labelMy: 'လယ်သမား',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-kg-stem-1',
    subject: 'stem',
    grade: Grade.kg,
    contentType: 'interactive',
    titleEn: 'Water Cycle Basics',
    titleMy: 'ရေစက်လှည့်ခြင်း အခြေခံ',
    descriptionEn:
        'Children drag each water-cycle picture to match its correct stage name.',
    descriptionMy:
        'ကလေးများသည် ရေစက်လှည့်ခြင်း၏ အဆင့်တစ်ခုစီနှင့် ကိုက်ညီသော ပုံများကို ဆွဲယူတွဲစပ်ကြသည်။',
    starsReward: 8,
    items: [
      MatchPairItem(
        id: 'sun',
        emoji: '☀️',
        colorValue: 0xFFFFD73C,
        labelEn: 'Sun',
        labelMy: 'နေ',
      ),
      MatchPairItem(
        id: 'cloud',
        emoji: '☁️',
        colorValue: 0xFF74B5F7,
        labelEn: 'Cloud',
        labelMy: 'မိုးတိမ်',
      ),
      MatchPairItem(
        id: 'rain',
        emoji: '🌧️',
        colorValue: 0xFFA2A3FF,
        labelEn: 'Rain',
        labelMy: 'မိုး',
      ),
      MatchPairItem(
        id: 'river',
        emoji: '🌊',
        colorValue: 0xFFBD2357,
        labelEn: 'River',
        labelMy: 'မြစ်',
      ),
      MatchPairItem(
        id: 'puddle',
        emoji: '💧',
        colorValue: 0xFFFF7A65,
        labelEn: 'Water Drop',
        labelMy: 'ရေစက်',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-kg-stem-2',
    subject: 'stem',
    grade: Grade.kg,
    contentType: 'interactive',
    titleEn: 'Day and Night',
    titleMy: 'နေ့နှင့်ည',
    descriptionEn:
        'Children sort pictures into things seen during the day and things seen at night.',
    descriptionMy:
        'ကလေးများသည် နေ့အချိန်နှင့် ညအချိန်တွင် တွေ့ရသော ပုံများကို ခွဲခြားတွဲစပ်ကြသည်။',
    starsReward: 8,
    items: [
      MatchPairItem(
        id: 'sun-day',
        emoji: '☀️',
        colorValue: 0xFFFFD73C,
        labelEn: 'Sun',
        labelMy: 'နေ',
      ),
      MatchPairItem(
        id: 'moon',
        emoji: '🌙',
        colorValue: 0xFFA2A3FF,
        labelEn: 'Moon',
        labelMy: 'လ',
      ),
      MatchPairItem(
        id: 'star',
        emoji: '⭐',
        colorValue: 0xFF74B5F7,
        labelEn: 'Star',
        labelMy: 'ကြယ်',
      ),
      MatchPairItem(
        id: 'rooster',
        emoji: '🐓',
        colorValue: 0xFFFF6891,
        labelEn: 'Rooster',
        labelMy: 'ကြက်',
      ),
      MatchPairItem(
        id: 'owl',
        emoji: '🦉',
        colorValue: 0xFFBD2357,
        labelEn: 'Owl',
        labelMy: 'ဇီးကွက်',
      ),
    ],
  ),
  NurseryActivityDef(
    id: 'mock-kg-stem-3',
    subject: 'stem',
    grade: Grade.kg,
    contentType: 'interactive',
    titleEn: 'Simple Machines',
    titleMy: 'ရိုးရှင်းသော စက်ကိရိယာများ',
    descriptionEn:
        'Children match each simple machine to the everyday object that uses it.',
    descriptionMy:
        'ကလေးများသည် ရိုးရှင်းသောစက်ကိရိယာတစ်ခုစီကို နေ့စဉ်သုံးပစ္စည်းများနှင့် တွဲစပ်ကြသည်။',
    starsReward: 8,
    items: [
      MatchPairItem(
        id: 'wheel',
        emoji: '🛞',
        colorValue: 0xFF74B5F7,
        labelEn: 'Wheel',
        labelMy: 'ဘီး',
      ),
      MatchPairItem(
        id: 'ramp',
        emoji: '🛝',
        colorValue: 0xFFFFD73C,
        labelEn: 'Ramp',
        labelMy: 'စောင်းလမ်း',
      ),
      MatchPairItem(
        id: 'lever',
        emoji: '⚖️',
        colorValue: 0xFFFF6891,
        labelEn: 'Lever',
        labelMy: 'ချိန်ခွင်',
      ),
      MatchPairItem(
        id: 'pulley',
        emoji: '🪣',
        colorValue: 0xFFBD2357,
        labelEn: 'Pulley',
        labelMy: 'ကြိုးဆွဲစက်',
      ),
      MatchPairItem(
        id: 'screw',
        emoji: '🔩',
        colorValue: 0xFFA2A3FF,
        labelEn: 'Screw',
        labelMy: 'စကရူး',
      ),
    ],
  ),
];
