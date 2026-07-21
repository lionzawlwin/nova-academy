/// Hand-written (non-Freezed, no build_runner needed) mock quiz content for
/// the Primary (Year 1-6) interactive quiz screen ([McqQuizScreen]).
///
/// Follows the same bilingual `*En`/`*My` field convention as
/// `LearningModuleModel` -- one plain Dart object per question, with the
/// English and Burmese text/options always kept in the same order so a
/// [correctIndex] is valid for both languages at once.
library;

/// One multiple-choice quiz question. [optionsEn] and [optionsMy] must be
/// the same length and in the same order -- [correctIndex] indexes into
/// both simultaneously.
class QuizQuestion {
  const QuizQuestion({
    required this.questionEn,
    required this.questionMy,
    required this.optionsEn,
    required this.optionsMy,
    required this.correctIndex,
    this.hintsEn = const [],
    this.hintsMy = const [],
  }) : assert(correctIndex >= 0, 'correctIndex must be a valid option index');
  // Note: optionsEn/optionsMy are required to be the same length (and in
  // the same order) by convention -- every entry in the mock question bank
  // below satisfies this. A `.length` comparison can't live in this const
  // constructor's assert (not a supported constant expression), so it
  // isn't enforced at compile time.

  final String questionEn;
  final String questionMy;
  final List<String> optionsEn;
  final List<String> optionsMy;
  final int correctIndex;

  /// Scaffolded hints shown one at a time, in order, on each successive
  /// wrong attempt -- i.e. `hintsEn.length` is how many extra attempts a
  /// student gets (one hint revealed per wrong answer) before the correct
  /// answer is finally revealed. Defaults to `const []` so a question with
  /// no authored hints falls straight back to the old instant-reveal
  /// behavior.
  ///
  /// [hintsEn]/[hintsMy] must be the same length, following the same
  /// bilingual paired-field convention as [optionsEn]/[optionsMy] (see the
  /// same not-enforced-at-compile-time caveat above).
  ///
  /// Deliberately a plain `List<String>` (JSON-native) rather than a richer
  /// type, so this shape needs no translation if question content is ever
  /// migrated from these compiled Dart literals into Firestore-ingested
  /// JSON later.
  final List<String> hintsEn;
  final List<String> hintsMy;
}

const List<QuizQuestion> _mathQuestions = [
  QuizQuestion(
    questionEn: 'What is 7 + 8?',
    questionMy: '၇ + ၈ ၏ ပေါင်းလဒ်ကို ရှာပါ။',
    optionsEn: ['14', '15', '16', '13'],
    optionsMy: ['14', '15', '16', '13'],
    correctIndex: 1,
  ),
  QuizQuestion(
    questionEn: 'What is 9 x 6?',
    questionMy: '၉ x ၆ ၏ မြှောက်လဒ်ကို ရှာပါ။',
    optionsEn: ['54', '45', '56', '63'],
    optionsMy: ['54', '45', '56', '63'],
    correctIndex: 0,
    hintsEn: [
      'Think of it as 9 groups of 6 -- or try 10 x 6 and then take away one group of 6.',
      '10 x 6 = 60. Now subtract 6 from that.',
    ],
    hintsMy: [
      '၉ အုပ်စု၊ တစ်အုပ်စုလျှင် ၆ ခုစီဟု စဉ်းစားပါ။ သို့မဟုတ် ၁၀ x ၆ ကို ရှာပြီး တစ်အုပ်စု (၆) ကို နုတ်ကြည့်ပါ။',
      '၁၀ x ၆ = ၆၀ ဖြစ်သည်။ ယခု ၎င်းမှ ၆ ကို နုတ်ကြည့်ပါ။',
    ],
  ),
  QuizQuestion(
    questionEn: 'What is 100 - 37?',
    questionMy: '100 - 37 ၏ အဖြေကို ရှာပါ။',
    optionsEn: ['63', '73', '67', '53'],
    optionsMy: ['63', '73', '67', '53'],
    correctIndex: 0,
    hintsEn: [
      'Break it into easier steps: first find 100 - 30 = 70.',
      'Now subtract the rest: 70 - 7 = ?',
    ],
    hintsMy: [
      'အဆင့်ခွဲပြီး တွက်ကြည့်ပါ- ဦးစွာ ၁၀၀ - ၃၀ = ၇၀ ကို ရှာပါ။',
      'ထို့နောက် ကျန်တာကို နုတ်ပါ- ၇၀ - ၇ = ဘယ်လောက်လဲ။',
    ],
  ),
  QuizQuestion(
    questionEn: 'Which of these numbers is even?',
    questionMy: 'အောက်ပါနံပါတ်များထဲမှ စုံကိန်းကို ရွေးပါ။',
    optionsEn: ['17', '22', '35', '41'],
    optionsMy: ['17', '22', '35', '41'],
    correctIndex: 1,
  ),
];

const List<QuizQuestion> _fractionsQuestions = [
  QuizQuestion(
    questionEn: 'Which fraction shows one half?',
    questionMy: 'ဝက်တစ်ဝက်ကို ပြသည့် အပိုင်းကိန်းကို ရွေးပါ။',
    optionsEn: ['1/2', '1/3', '1/4', '2/3'],
    optionsMy: ['1/2', '1/3', '1/4', '2/3'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'What is 1/4 + 1/4?',
    questionMy: '1/4 + 1/4 ၏ ပေါင်းလဒ်ကို ရှာပါ။',
    optionsEn: ['1/2', '2/8', '1/8', '3/4'],
    optionsMy: ['1/2', '2/8', '1/8', '3/4'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'Which fraction is bigger, 3/4 or 1/2?',
    questionMy: '3/4 နှင့် 1/2 တွင် အကြီးဆုံးမှာ အဘယ်နည်း။',
    optionsEn: ['3/4', '1/2', 'They are equal', 'Cannot tell'],
    optionsMy: ['3/4', '1/2', 'တူညီသည်', 'မသိနိုင်ပါ'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn:
        'A pizza is cut into 8 equal slices. If you eat 2 slices, what fraction did you eat?',
    questionMy:
        'ပီဇာတစ်ချပ်ကို အညီအမျှ ၈ ပိုင်း ဖြတ်ထားသည်။ ၂ ပိုင်း စားလိုက်လျှင် မည်မျှစားခဲ့သည်ကို အပိုင်းကိန်းဖြင့် ဖော်ပြပါ။',
    optionsEn: ['2/8', '8/2', '2/6', '6/8'],
    optionsMy: ['2/8', '8/2', '2/6', '6/8'],
    correctIndex: 0,
    hintsEn: [
      'The pizza has 8 equal slices in total -- that total goes on the bottom of your fraction (the denominator).',
      'You ate 2 out of those 8 slices -- so the fraction is 2 on top, 8 on the bottom.',
    ],
    hintsMy: [
      'ပီဇာကို စုစုပေါင်း ၈ ပိုင်း အညီအမျှ ဖြတ်ထားသည်။ ထိုစုစုပေါင်းကိန်းသည် အပိုင်းကိန်း၏ အောက်ခြေဂဏန်း (denominator) ဖြစ်သည်။',
      'သင်သည် ၈ ပိုင်းထဲမှ ၂ ပိုင်းကို စားခဲ့သည်။ ထို့ကြောင့် အပိုင်းကိန်းမှာ အထက်ဂဏန်း ၂၊ အောက်ခြေဂဏန်း ၈ ဖြစ်သည်။',
    ],
  ),
];

const List<QuizQuestion> _scienceQuestions = [
  QuizQuestion(
    questionEn: 'What do plants need to make their own food?',
    questionMy:
        'အပင်များသည် ၎င်းတို့၏ ကိုယ်ပိုင်အစာကို ဖန်တီးရန် အဘယ်အရာများ လိုအပ်သနည်း။',
    optionsEn: [
      'Sunlight, water, and air',
      'Only water',
      'Only sunlight',
      'Soil only',
    ],
    optionsMy: [
      'နေရောင်ခြည်၊ ရေနှင့် လေ',
      'ရေသာ',
      'နေရောင်ခြည်သာ',
      'မြေဆီလွှာသာ',
    ],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'Which of these animals is a mammal?',
    questionMy:
        'အောက်ပါတိရစ္ဆာန်များထဲမှ နို့တိုက်သတ္တဝါဖြစ်သည့် တစ်ကောင်ကို ရွေးပါ။',
    optionsEn: ['Dog', 'Fish', 'Frog', 'Snake'],
    optionsMy: ['ခွေး', 'ငါး', 'ဖား', 'မြွေ'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'What happens to water when it freezes?',
    questionMy: 'ရေသည် အေးခဲသွားသောအခါ မည်သည့်အခြေအနေသို့ ပြောင်းလဲသွားသနည်း။',
    optionsEn: [
      'It becomes solid ice',
      'It becomes gas',
      'It disappears',
      'It becomes hotter',
    ],
    optionsMy: [
      'အခဲ (ရေခဲ) ဖြစ်သွားသည်',
      'ဓာတ်ငွေ့ ဖြစ်သွားသည်',
      'ပျောက်သွားသည်',
      'ပိုပူသွားသည်',
    ],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'Which part of a plant absorbs water from the soil?',
    questionMy: 'အပင်၏ မည်သည့်အစိတ်အပိုင်းက မြေဆီလွှာမှ ရေကို စုပ်ယူသနည်း။',
    optionsEn: ['Roots', 'Leaves', 'Flowers', 'Stem'],
    optionsMy: ['အမြစ်', 'အရွက်', 'ပန်း', 'ပင်စည်'],
    correctIndex: 0,
  ),
];

const List<QuizQuestion> _englishQuestions = [
  QuizQuestion(
    questionEn: 'Choose the correct plural of "child".',
    questionMy: '"child" ၏ အများကိန်း စကားလုံးကို မှန်ကန်စွာ ရွေးပါ။',
    optionsEn: ['Children', 'Childs', 'Childes', 'Child'],
    optionsMy: ['Children', 'Childs', 'Childes', 'Child'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'Which word means the same as "happy"?',
    questionMy: '"happy" နှင့် အဓိပ္ပာယ်တူသော စကားလုံးကို ရွေးပါ။',
    optionsEn: ['Joyful', 'Sad', 'Angry', 'Tired'],
    optionsMy: ['Joyful', 'Sad', 'Angry', 'Tired'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'Fill in the blank: "She ___ to school every day."',
    questionMy: 'အောက်ပါစာကြောင်းကို ဖြည့်ပါ- "She ___ to school every day."',
    optionsEn: ['goes', 'go', 'going', 'gone'],
    optionsMy: ['goes', 'go', 'going', 'gone'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'What is the opposite of "big"?',
    questionMy: '"big" ၏ ဆန့်ကျင်ဘက် စကားလုံးကို ရွေးပါ။',
    optionsEn: ['Small', 'Large', 'Tall', 'Wide'],
    optionsMy: ['Small', 'Large', 'Tall', 'Wide'],
    correctIndex: 0,
  ),
];

const List<QuizQuestion> _generalKnowledgeQuestions = [
  QuizQuestion(
    questionEn: 'What is the capital city of Myanmar?',
    questionMy: 'မြန်မာနိုင်ငံ၏ မြို့တော်မှာ အဘယ်မြို့နည်း။',
    optionsEn: ['Naypyidaw', 'Yangon', 'Mandalay', 'Bago'],
    optionsMy: ['နေပြည်တော်', 'ရန်ကုန်', 'မန္တလေး', 'ပဲခူး'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'How many days are there in a week?',
    questionMy: 'တစ်ပတ်တွင် ရက်ပေါင်းမည်မျှ ရှိသနည်း။',
    optionsEn: ['7', '5', '10', '6'],
    optionsMy: ['7', '5', '10', '6'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'Which is the largest ocean in the world?',
    questionMy: 'ကမ္ဘာပေါ်တွင် အကြီးဆုံးသော သမုဒ္ဒရာမှာ အဘယ်နည်း။',
    optionsEn: [
      'Pacific Ocean',
      'Atlantic Ocean',
      'Indian Ocean',
      'Arctic Ocean',
    ],
    optionsMy: [
      'ပစိဖိတ်သမုဒ္ဒရာ',
      'အတ္လန္တိတ်သမုဒ္ဒရာ',
      'အိန္ဒိယသမုဒ္ဒရာ',
      'အာတိတ်သမုဒ္ဒရာ',
    ],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'What do we call the star at the center of our solar system?',
    questionMy: 'ကျွန်ုပ်တို့ နေအဖွဲ့စု၏ အလယ်ဗဟိုရှိ ကြယ်ကို မည်သို့ခေါ်သနည်း။',
    optionsEn: ['The Sun', 'The Moon', 'Earth', 'Mars'],
    optionsMy: ['နေ', 'လ', 'ကမ္ဘာ', 'အင်္ဂါဂြိုဟ်'],
    correctIndex: 0,
  ),
];

const List<QuizQuestion> _phonicsQuestions = [
  QuizQuestion(
    questionEn: 'Which letter makes the "buh" sound, as in "ball"?',
    questionMy:
        '"ball" ဟူသောစကားလုံးရှိ "buh" အသံထွက်ကို ပေးသောအက္ခရာကို ရွေးပါ။',
    optionsEn: ['B', 'D', 'P', 'V'],
    optionsMy: ['B', 'D', 'P', 'V'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'Which word starts with the same sound as "cat"?',
    questionMy: '"cat" နှင့် အစသံတူသော စကားလုံးကို ရွေးပါ။',
    optionsEn: ['Car', 'Dog', 'Fish', 'Hat'],
    optionsMy: ['Car', 'Dog', 'Fish', 'Hat'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'What sound does the letter "S" make?',
    questionMy: '"S" အက္ခရာသည် မည်သည့်အသံထွက်ပေးသနည်း။',
    optionsEn: [
      '"sss" (as in snake)',
      '"buh" (as in ball)',
      '"tuh" (as in top)',
      '"muh" (as in moon)',
    ],
    optionsMy: [
      '"sss" (snake ကဲ့သို့)',
      '"buh" (ball ကဲ့သို့)',
      '"tuh" (top ကဲ့သို့)',
      '"muh" (moon ကဲ့သို့)',
    ],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'Which word rhymes with "hen"?',
    questionMy: '"hen" နှင့် ကာရံတူသော စကားလုံးကို ရွေးပါ။',
    optionsEn: ['Pen', 'Cat', 'Dog', 'Sun'],
    optionsMy: ['Pen', 'Cat', 'Dog', 'Sun'],
    correctIndex: 0,
  ),
];

/// A generic, mixed-subject bank used whenever [quizQuestionsForSubject] is
/// asked for a subject key it doesn't recognize -- keeps the quiz screen
/// from ever showing an empty state.
const List<QuizQuestion> _genericQuestions = [
  QuizQuestion(
    questionEn: 'What is 5 + 6?',
    questionMy: '၅ + ၆ ၏ ပေါင်းလဒ်ကို ရှာပါ။',
    optionsEn: ['11', '10', '12', '9'],
    optionsMy: ['11', '10', '12', '9'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'What is the capital city of Myanmar?',
    questionMy: 'မြန်မာနိုင်ငံ၏ မြို့တော်မှာ အဘယ်မြို့နည်း။',
    optionsEn: ['Naypyidaw', 'Yangon', 'Mandalay', 'Bago'],
    optionsMy: ['နေပြည်တော်', 'ရန်ကုန်', 'မန္တလေး', 'ပဲခူး'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'Which of these animals is a mammal?',
    questionMy:
        'အောက်ပါတိရစ္ဆာန်များထဲမှ နို့တိုက်သတ္တဝါဖြစ်သည့် တစ်ကောင်ကို ရွေးပါ။',
    optionsEn: ['Dog', 'Fish', 'Frog', 'Snake'],
    optionsMy: ['ခွေး', 'ငါး', 'ဖား', 'မြွေ'],
    correctIndex: 0,
  ),
  QuizQuestion(
    questionEn: 'What is the opposite of "big"?',
    questionMy: '"big" ၏ ဆန့်ကျင်ဘက် စကားလုံးကို ရွေးပါ။',
    optionsEn: ['Small', 'Large', 'Tall', 'Wide'],
    optionsMy: ['Small', 'Large', 'Tall', 'Wide'],
    correctIndex: 0,
  ),
];

/// Subject-keyed lookup, mirroring the lowercase subject-string convention
/// already used across the app (see `primary_home_screen.dart`'s
/// `_iconForSubject`).
const Map<String, List<QuizQuestion>> _quizBankBySubject = {
  'math': _mathQuestions,
  'fractions': _fractionsQuestions,
  'science': _scienceQuestions,
  'english': _englishQuestions,
  'generalknowledge': _generalKnowledgeQuestions,
  'phonics': _phonicsQuestions,
};

/// Looks up the mock question bank for [subject] (case-insensitive).
/// Falls back to a small generic mixed-subject bank for any subject key
/// that isn't recognized yet, so the quiz screen never has nothing to show.
List<QuizQuestion> quizQuestionsForSubject(String subject) {
  return _quizBankBySubject[subject.toLowerCase()] ?? _genericQuestions;
}
