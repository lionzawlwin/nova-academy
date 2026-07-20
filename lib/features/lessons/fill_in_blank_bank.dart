import '../../models/child_model.dart';
import 'interactive_content_models.dart';

/// One "fill in the blank" curriculum module: bilingual catalog metadata
/// plus its own fixed set of [FillBlankQuestion]s. Structurally mirrors
/// [PrimaryActivityDef]/[SecondaryActivityDef] (`primary_curriculum_bank.dart`
/// / `secondary_curriculum_bank.dart`), but carries fill-in-the-blank
/// questions instead of MCQ [QuizQuestion]s since this content plays back
/// through [FillInTheBlankScreen] (`fill_in_blank_screen.dart`). A single
/// Def class covers both Primary and Secondary/IGCSE grades (unlike the
/// quiz banks' two separate classes) since the fields are identical.
class FillBlankModuleDef {
  const FillBlankModuleDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.contentType,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.questions,
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
  final List<FillBlankQuestion> questions;
}

/// Looks up the fill-in-the-blank question bank for a specific module by
/// [moduleId] (e.g. `mock-year3-science-fillblank-1`). Falls back to the
/// subject-only [fillBlankQuestionsForSubject] lookup when [moduleId] is
/// null or not found in [primaryFillBlankBank] or [secondaryFillBlankBank]
/// -- mirrors [quizQuestionsForModule]'s exact pattern
/// (`mock_quiz_data.dart` / `primary_curriculum_bank.dart`).
List<FillBlankQuestion> fillBlankQuestionsForModule(
  String? moduleId,
  String subject,
) {
  if (moduleId != null) {
    for (final activity in primaryFillBlankBank) {
      if (activity.id == moduleId) return activity.questions;
    }
    for (final activity in secondaryFillBlankBank) {
      if (activity.id == moduleId) return activity.questions;
    }
  }
  return fillBlankQuestionsForSubject(subject);
}

/// Looks up the fill-in-the-blank question bank for [subject]
/// (case-insensitive) by scanning both banks for the first module with a
/// matching subject key. Falls back to a small generic bank for any
/// subject key that isn't covered yet, so the screen never has nothing to
/// show -- mirrors [quizQuestionsForSubject]'s exact pattern
/// (`mock_quiz_data.dart`).
List<FillBlankQuestion> fillBlankQuestionsForSubject(String subject) {
  final key = subject.toLowerCase();
  for (final activity in primaryFillBlankBank) {
    if (activity.subject == key) return activity.questions;
  }
  for (final activity in secondaryFillBlankBank) {
    if (activity.subject == key) return activity.questions;
  }
  return _genericFillBlankQuestions;
}

/// A generic, mixed-subject bank used whenever [fillBlankQuestionsForSubject]
/// doesn't recognize the requested subject key.
const List<FillBlankQuestion> _genericFillBlankQuestions = [
  FillBlankQuestion(
    sentenceEn: 'Learning is more fun when we ___ together.',
    sentenceMy: 'အတူတကွ ___ ရင် သင်ယူခြင်းသည် ပိုမိုပျော်ရွှင်ဖွယ်ဖြစ်သည်။',
    optionsEn: ['sleep', 'practice', 'forget', 'argue'],
    optionsMy: ['အိပ်', 'လေ့ကျင့်', 'မေ့', 'ငြင်းခုံ'],
    correctIndex: 1,
  ),
  FillBlankQuestion(
    sentenceEn: 'Reading every day helps you learn new ___.',
    sentenceMy: 'နေ့စဉ်စာဖတ်ခြင်းသည် စကားလုံးအသစ်များ ___ ကို ကူညီပေးသည်။',
    optionsEn: ['shoes', 'clouds', 'words', 'rocks'],
    optionsMy: ['ဖိနပ်', 'တိမ်', 'စကားလုံး', 'ကျောက်ခဲ'],
    correctIndex: 2,
  ),
  FillBlankQuestion(
    sentenceEn: 'A good student always tries their ___.',
    sentenceMy: 'ကျောင်းသားကောင်းတစ်ဦးသည် အမြဲတမ်း ၎င်း၏ ___ ကို ကြိုးစားသည်။',
    optionsEn: ['worst', 'best', 'least', 'last'],
    optionsMy: ['အဆိုးဆုံး', 'အကောင်းဆုံး', 'အနည်းဆုံး', 'နောက်ဆုံး'],
    correctIndex: 1,
  ),
  FillBlankQuestion(
    sentenceEn: 'Working as a ___ makes big tasks easier.',
    sentenceMy:
        '___ အဖြစ် လုပ်ဆောင်ခြင်းသည် အလုပ်ကြီးများကို ပိုမိုလွယ်ကူစေသည်။',
    optionsEn: ['stranger', 'team', 'enemy', 'ghost'],
    optionsMy: ['သူစိမ်း', 'အဖွဲ့', 'ရန်သူ', 'နတ်ဆိုး'],
    correctIndex: 1,
  ),
  FillBlankQuestion(
    sentenceEn: 'Mistakes help us ___ and grow.',
    sentenceMy: 'အမှားများသည် ကျွန်တော်တို့အား ___ ပြီး ကြီးထွားစေရန် ကူညီသည်။',
    optionsEn: ['learn', 'hide', 'quit', 'sleep'],
    optionsMy: ['သင်ယူ', 'ဖျောက်', 'လက်လျှော့', 'အိပ်'],
    correctIndex: 0,
  ),
];

/// One fill-in-the-blank module per Primary grade (Year 1-6), each covering
/// a different subject (english/math/science/stem/coding/engineering) so
/// this content isn't English-only.
const List<FillBlankModuleDef> primaryFillBlankBank = [
  // ============================== YEAR 1 ==============================
  FillBlankModuleDef(
    id: 'mock-year1-english-fillblank-1',
    subject: 'english',
    grade: Grade.year1,
    contentType: 'fillBlank',
    titleEn: 'Everyday Words',
    titleMy: 'နေ့စဉ်သုံး စကားလုံးများ',
    descriptionEn: 'Fill in the blank with simple everyday vocabulary.',
    descriptionMy:
        'ရိုးရှင်းသော နေ့စဉ်သုံးစကားလုံးများဖြင့် အလွတ်နေရာကို ဖြည့်ပါ။',
    starsReward: 10,
    questions: [
      FillBlankQuestion(
        sentenceEn: 'My favorite color is ___.',
        sentenceMy: 'ကျွန်တော့်/ကျွန်မရဲ့ အကြိုက်ဆုံးအရောင်က ___ ဖြစ်သည်။',
        optionsEn: ['seven', 'blue', 'jump', 'table'],
        optionsMy: ['ခုနစ်', 'အပြာ', 'ခုန်', 'စားပွဲ'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'I have two ___.',
        sentenceMy: 'ကျွန်တော့်/ကျွန်မမှာ ___ နှစ်ချောင်း ရှိသည်။',
        optionsEn: ['run', 'seven', 'hands', 'blue'],
        optionsMy: ['ပြေး', 'ခုနစ်', 'လက်', 'အပြာ'],
        correctIndex: 2,
      ),
      FillBlankQuestion(
        sentenceEn: 'The ___ is shining brightly in the sky.',
        sentenceMy: '___ သည် ကောင်းကင်ပေါ်တွင် တောက်ပစွာ လင်းနေသည်။',
        optionsEn: ['book', 'jump', 'five', 'sun'],
        optionsMy: ['စာအုပ်', 'ခုန်', 'ငါး', 'နေ'],
        correctIndex: 3,
      ),
      FillBlankQuestion(
        sentenceEn: 'We eat breakfast in the ___.',
        sentenceMy: 'ကျွန်တော်တို့ ___ တွင် မနက်စာစားသည်။',
        optionsEn: ['morning', 'blue', 'run', 'six'],
        optionsMy: ['မနက်ခင်း', 'အပြာ', 'ပြေး', 'ခြောက်'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn: 'A baby cat is called a ___.',
        sentenceMy: 'ကြောင်ငယ်လေးကို ___ ဟုခေါ်သည်။',
        optionsEn: ['table', 'jump', 'kitten', 'nine'],
        optionsMy: ['စားပွဲ', 'ခုန်', 'ကြောင်ငယ်', 'ကိုး'],
        correctIndex: 2,
      ),
    ],
  ),
  // ============================== YEAR 2 ==============================
  FillBlankModuleDef(
    id: 'mock-year2-math-fillblank-1',
    subject: 'math',
    grade: Grade.year2,
    contentType: 'fillBlank',
    titleEn: 'Number Facts',
    titleMy: 'ကိန်းဂဏန်း အချက်အလက်များ',
    descriptionEn: 'Fill in the blank with the missing number or math word.',
    descriptionMy:
        'ပျောက်နေသော ကိန်းဂဏန်း သို့မဟုတ် သင်္ချာစကားလုံးဖြင့် ဖြည့်ပါ။',
    starsReward: 12,
    questions: [
      FillBlankQuestion(
        sentenceEn: '5 + 5 = ___.',
        sentenceMy: '၅ + ၅ = ___ ဖြစ်သည်။',
        optionsEn: ['9', '10', '11', '8'],
        optionsMy: ['၉', '၁၀', '၁၁', '၈'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'A triangle has ___ sides.',
        sentenceMy: 'တြိဂံတစ်ခုတွင် ဘေး ___ ဘက်ရှိသည်။',
        optionsEn: ['four', 'two', 'three', 'five'],
        optionsMy: ['လေး', 'နှစ်', 'သုံး', 'ငါး'],
        correctIndex: 2,
      ),
      FillBlankQuestion(
        sentenceEn: '10 - 4 = ___.',
        sentenceMy: '၁၀ - ၄ = ___ ဖြစ်သည်။',
        optionsEn: ['5', '7', '4', '6'],
        optionsMy: ['၅', '၇', '၄', '၆'],
        correctIndex: 3,
      ),
      FillBlankQuestion(
        sentenceEn: 'Half of 8 is ___.',
        sentenceMy: '၈ ၏ တစ်ဝက်မှာ ___ ဖြစ်သည်။',
        optionsEn: ['4', '2', '6', '8'],
        optionsMy: ['၄', '၂', '၆', '၈'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn: 'There are ___ days in a week.',
        sentenceMy: 'တစ်ပတ်တွင် ___ ရက် ရှိသည်။',
        optionsEn: ['five', 'seven', 'ten', 'six'],
        optionsMy: ['ငါး', 'ခုနစ်', 'ဆယ်', 'ခြောက်'],
        correctIndex: 1,
      ),
    ],
  ),
  // ============================== YEAR 3 ==============================
  FillBlankModuleDef(
    id: 'mock-year3-science-fillblank-1',
    subject: 'science',
    grade: Grade.year3,
    contentType: 'fillBlank',
    titleEn: 'Living Things & Weather',
    titleMy: 'သက်ရှိများနှင့် ရာသီဥတု',
    descriptionEn: 'Fill in the blank about plants, animals, and weather.',
    descriptionMy:
        'အပင်၊ တိရစ္ဆာန်နှင့် ရာသီဥတုနှင့်ပတ်သက်၍ အလွတ်နေရာကို ဖြည့်ပါ။',
    starsReward: 14,
    questions: [
      FillBlankQuestion(
        sentenceEn: 'Plants need sunlight, water, and ___ to grow.',
        sentenceMy: 'အပင်များသည် ကြီးထွားရန် နေရောင်၊ ရေနှင့် ___ လိုအပ်သည်။',
        optionsEn: ['sand', 'air', 'glass', 'metal'],
        optionsMy: ['သဲ', 'လေ', 'ဖန်', 'သတ္တု'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'Ice melts and turns into ___.',
        sentenceMy: 'ရေခဲသည် အရည်ပျော်ပြီး ___ ဖြစ်လာသည်။',
        optionsEn: ['fire', 'wood', 'water', 'stone'],
        optionsMy: ['မီး', 'သစ်သား', 'ရေ', 'ကျောက်'],
        correctIndex: 2,
      ),
      FillBlankQuestion(
        sentenceEn: 'A caterpillar changes into a ___.',
        sentenceMy: 'လိပ်ပြာပိုးလေးသည် ___ အဖြစ်သို့ ပြောင်းလဲသွားသည်။',
        optionsEn: ['butterfly', 'fish', 'bird', 'frog'],
        optionsMy: ['လိပ်ပြာ', 'ငါး', 'ငှက်', 'ဖား'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn: 'The ___ gives us light and heat during the day.',
        sentenceMy:
            '___ က ကျွန်တော်တို့အား နေ့အချိန်တွင် အလင်းနှင့် အပူပေးသည်။',
        optionsEn: ['moon', 'star', 'sun', 'cloud'],
        optionsMy: ['လ', 'ကြယ်', 'နေ', 'တိမ်'],
        correctIndex: 2,
      ),
      FillBlankQuestion(
        sentenceEn: 'Rain falls from ___ in the sky.',
        sentenceMy: 'မိုးသည် ကောင်းကင်ရှိ ___ မှ ရွာချသည်။',
        optionsEn: ['clouds', 'trees', 'mountains', 'rivers'],
        optionsMy: ['တိမ်များ', 'သစ်ပင်များ', 'တောင်များ', 'မြစ်များ'],
        correctIndex: 0,
      ),
    ],
  ),
  // ============================== YEAR 4 ==============================
  FillBlankModuleDef(
    id: 'mock-year4-stem-fillblank-1',
    subject: 'stem',
    grade: Grade.year4,
    contentType: 'fillBlank',
    titleEn: 'STEM Thinking',
    titleMy: 'STEM ဆိုင်ရာ တွေးခေါ်မှု',
    descriptionEn: 'Fill in the blank with core science and engineering words.',
    descriptionMy:
        'သိပ္ပံနှင့် အင်ဂျင်နီယာဆိုင်ရာ အခြေခံစကားလုံးများဖြင့် ဖြည့်ပါ။',
    starsReward: 16,
    questions: [
      FillBlankQuestion(
        sentenceEn: 'Before doing an experiment, scientists write down a ___.',
        sentenceMy:
            'စမ်းသပ်မှု မလုပ်မီ သိပ္ပံပညာရှင်များသည် ___ တစ်ခုကို ရေးမှတ်ကြသည်။',
        optionsEn: ['song', 'hypothesis', 'painting', 'game'],
        optionsMy: ['သီချင်း', 'ယူဆချက်', 'ပန်းချီကား', 'ကစားနည်း'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'A ___ is a tool used to measure temperature.',
        sentenceMy:
            '___ သည် အပူချိန်ကို တိုင်းတာရန် အသုံးပြုသော ကိရိယာဖြစ်သည်။',
        optionsEn: ['thermometer', 'ruler', 'clock', 'scissors'],
        optionsMy: ['အပူချိန်တိုင်းကိရိယာ', 'ပေတံ', 'နာရီ', 'ကတ်ကြေး'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn: 'Engineers design and build ___.',
        sentenceMy:
            'အင်ဂျင်နီယာများသည် ___ ကို ဒီဇိုင်းရေးဆွဲပြီး တည်ဆောက်ကြသည်။',
        optionsEn: ['stories', 'machines', 'songs', 'poems'],
        optionsMy: ['ပုံပြင်များ', 'စက်ယန္တရားများ', 'သီချင်းများ', 'ကဗျာများ'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'Data can be shown clearly using a ___.',
        sentenceMy: 'ဒေတာများကို ___ ဖြင့် ရှင်းလင်းစွာ ပြသနိုင်သည်။',
        optionsEn: ['graph', 'blanket', 'basket', 'ladder'],
        optionsMy: ['ဂရပ်ဖ်', 'စောင်', 'ခြင်းတောင်း', 'လှေကား'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn: 'In coding, a loop ___ a set of instructions.',
        sentenceMy:
            'ကုဒ်ရေးသားရာတွင် ကွင်းဆက် (loop) သည် ညွှန်ကြားချက်များကို ___ ပြန်လုပ်ဆောင်သည်။',
        optionsEn: ['forgets', 'repeats', 'hides', 'sells'],
        optionsMy: ['မေ့သည်', 'ထပ်ခါထပ်ခါ', 'ဖျောက်သည်', 'ရောင်းသည်'],
        correctIndex: 1,
      ),
    ],
  ),
  // ============================== YEAR 5 ==============================
  FillBlankModuleDef(
    id: 'mock-year5-coding-fillblank-1',
    subject: 'coding',
    grade: Grade.year5,
    contentType: 'fillBlank',
    titleEn: 'Code Vocabulary',
    titleMy: 'ကုဒ်ရေးသားခြင်း ဝေါဟာရများ',
    descriptionEn: 'Fill in the blank with common programming terms.',
    descriptionMy: 'အသုံးများသော ပရိုဂရမ်းမင်းစကားလုံးများဖြင့် ဖြည့်ပါ။',
    starsReward: 18,
    questions: [
      FillBlankQuestion(
        sentenceEn: 'A ___ is a container that stores a value in a program.',
        sentenceMy:
            '___ သည် ပရိုဂရမ်တစ်ခုအတွင်း တန်ဖိုးတစ်ခုကို သိမ်းဆည်းသော ဘူးတစ်ခုဖြစ်သည်။',
        optionsEn: ['window', 'chair', 'plate', 'variable'],
        optionsMy: ['ပြတင်းပေါက်', 'ကုလားထိုင်', 'ပန်းကန်', 'ကိန်းရွေ့'],
        correctIndex: 3,
      ),
      FillBlankQuestion(
        sentenceEn: 'An ___ statement lets a program make a decision.',
        sentenceMy: '___ ဖော်ပြချက်သည် ပရိုဂရမ်အား ဆုံးဖြတ်ချက်ချစေနိုင်သည်။',
        optionsEn: ['sleep', 'paint', 'if', 'sing'],
        optionsMy: ['အိပ်', 'ဆေးဆွဲ', 'အကယ်၍ (if)', 'သီချင်းဆို'],
        correctIndex: 2,
      ),
      FillBlankQuestion(
        sentenceEn:
            'A sequence of instructions for a computer is called an ___.',
        sentenceMy:
            'ကွန်ပျူတာအတွက် ညွှန်ကြားချက်များ၏ အစီအစဉ်ကို ___ ဟုခေါ်သည်။',
        optionsEn: ['umbrella', 'algorithm', 'blanket', 'sandwich'],
        optionsMy: ['ထီး', 'အယ်လဂိုရီသမ်', 'စောင်', 'ဆန်ဒွစ်'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'Finding and fixing mistakes in code is called ___.',
        sentenceMy:
            'ကုဒ်ထဲရှိ အမှားများကို ရှာဖွေပြင်ဆင်ခြင်းကို ___ ဟုခေါ်သည်။',
        optionsEn: ['debugging', 'cooking', 'swimming', 'painting'],
        optionsMy: [
          'ချွတ်ယွင်းချက်ရှာဖွေခြင်း',
          'ချက်ပြုတ်ခြင်း',
          'ရေကူးခြင်း',
          'ပန်းချီဆွဲခြင်း',
        ],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn: 'A ___ repeats a block of code several times.',
        sentenceMy: '___ သည် ကုဒ်အပိုင်းတစ်ခုကို အကြိမ်ကြိမ် ထပ်လုပ်ဆောင်သည်။',
        optionsEn: ['door', 'loop', 'window', 'shoe'],
        optionsMy: ['တံခါး', 'ကွင်းဆက်', 'ပြတင်းပေါက်', 'ဖိနပ်'],
        correctIndex: 1,
      ),
    ],
  ),
  // ============================== YEAR 6 ==============================
  FillBlankModuleDef(
    id: 'mock-year6-engineering-fillblank-1',
    subject: 'engineering',
    grade: Grade.year6,
    contentType: 'fillBlank',
    titleEn: 'Engineering Ideas',
    titleMy: 'အင်ဂျင်နီယာဆိုင်ရာ အယူအဆများ',
    descriptionEn: 'Fill in the blank with core engineering vocabulary.',
    descriptionMy: 'အင်ဂျင်နီယာဆိုင်ရာ အခြေခံဝေါဟာရများဖြင့် ဖြည့်ပါ။',
    starsReward: 20,
    questions: [
      FillBlankQuestion(
        sentenceEn: 'A bridge must be strong enough to support its ___.',
        sentenceMy:
            'တံတားတစ်စင်းသည် ၎င်း၏ ___ ကို ခံနိုင်ရည်ရှိအောင် ကြံ့ခိုင်ရမည်။',
        optionsEn: ['load', 'song', 'color', 'smell'],
        optionsMy: ['ဝန်အား', 'သီချင်း', 'အရောင်', 'အနံ့'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn: 'Engineers test a ___ before building the real structure.',
        sentenceMy:
            'အင်ဂျင်နီယာများသည် တကယ့်အဆောက်အအုံကို မတည်ဆောက်မီ ___ ကို စမ်းသပ်ကြသည်။',
        optionsEn: ['recipe', 'prototype', 'poem', 'melody'],
        optionsMy: [
          'ချက်ပြုတ်နည်း',
          'အစမ်းနမူနာပုံစံ',
          'ကဗျာ',
          'ရေသံစုံသီချင်း',
        ],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'A wheel and axle is a simple ___.',
        sentenceMy: 'ဘီးနှင့်ချိန်ဝင်ချောင်းသည် ရိုးရှင်းသော ___ တစ်ခုဖြစ်သည်။',
        optionsEn: ['language', 'story', 'machine', 'holiday'],
        optionsMy: ['ဘာသာစကား', 'ဇာတ်လမ်း', 'စက်ယန္တရား', 'အားလပ်ရက်'],
        correctIndex: 2,
      ),
      FillBlankQuestion(
        sentenceEn:
            'Renewable energy sources, like solar power, do not ___ out.',
        sentenceMy:
            'နေရောင်စွမ်းအင်ကဲ့သို့ ပြန်လည်ပြည့်ဖြိုးနိုင်သော စွမ်းအင်ရင်းမြစ်များသည် ___ မကုန်နိုင်ပါ။',
        optionsEn: ['run', 'sing', 'dance', 'shine'],
        optionsMy: ['ကုန်', 'သီချင်းဆို', 'က', 'တောက်ပ'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn: 'A team of engineers works together to solve a ___.',
        sentenceMy: 'အင်ဂျင်နီယာအဖွဲ့သည် ___ တစ်ခုကို အတူတကွဖြေရှင်းကြသည်။',
        optionsEn: ['party', 'problem', 'holiday', 'game'],
        optionsMy: ['ပါတီ', 'ပြဿနာ', 'အားလပ်ရက်', 'ကစားနည်း'],
        correctIndex: 1,
      ),
    ],
  ),

  // New `history`/`geography`/`computing` subjects: one fill-in-the-blank
  // module each, woven into the rotation at a different grade so this
  // content isn't repetitive across grades or with the coding/engineering
  // rollout above.
  FillBlankModuleDef(
    id: 'mock-year2-geography-fillblank-1',
    subject: 'geography',
    grade: Grade.year2,
    contentType: 'fillBlank',
    titleEn: 'Complete the Geography Sentences',
    titleMy: 'ပထဝီဝင်ဝါကျများကို ဖြည့်စွက်ပါ',
    descriptionEn: 'Fill in each blank with the correct geography word.',
    descriptionMy:
        'ဝါကျတစ်ခုစီရှိ အကွက်လွတ်ကို မှန်ကန်သောပထဝီဝေါဟာရဖြင့် ဖြည့်ပါ။',
    starsReward: 12,
    questions: [
      FillBlankQuestion(
        sentenceEn: 'The sun rises in the ___ and sets in the west.',
        sentenceMy: 'နေသည် ___ ဘက်တွင် ထွက်ပြီး အနောက်ဘက်တွင် ဝင်တတ်သည်။',
        optionsEn: ['North', 'East', 'South', 'Down'],
        optionsMy: ['မြောက်', 'အရှေ့', 'တောင်', 'အောက်'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn:
            'A place where we buy food and daily goods in our local area is called a ___.',
        sentenceMy:
            'ကျွန်တော်တို့ဒေသအတွင်း စားစရာနှင့် နေ့စဉ်လိုအပ်သောပစ္စည်းများ ဝယ်ယူရာနေရာကို ___ ဟုခေါ်သည်။',
        optionsEn: ['market', 'mountain', 'ocean', 'desert'],
        optionsMy: ['စျေး', 'တောင်', 'သမုဒ္ဒရာ', 'သဲကန္တာရ'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn:
            'On a simple map, a green colour often shows an area of ___.',
        sentenceMy:
            'ရိုးရှင်းသောမြေပုံတွင် အစိမ်းရောင်သည် များသောအားဖြင့် ___ ရှိသောနေရာကို ပြသည်။',
        optionsEn: [
          'fields or grass',
          'deep ocean water',
          'hot desert sand',
          'city roads',
        ],
        optionsMy: [
          'လယ်ကွက်သို့မဟုတ် မြက်ခင်း',
          'သမုဒ္ဒရာအနက်ရှိုင်းရေ',
          'ပူပြင်းသောသဲကန္တာရသဲ',
          'မြို့တွင်းလမ်းများ',
        ],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn:
            'If you are facing East and turn all the way around to the opposite side, you will now face ___.',
        sentenceMy:
            'အရှေ့ဘက်ကို မျက်နှာမူထားရင်း ဆန့်ကျင်ဘက်သို့ လှည့်လိုက်လျှင် ___ ဘက်ကို မျက်နှာမူသွားမည်။',
        optionsEn: ['North', 'South', 'East', 'West'],
        optionsMy: ['မြောက်', 'တောင်', 'အရှေ့', 'အနောက်'],
        correctIndex: 3,
      ),
      FillBlankQuestion(
        sentenceEn:
            'A small picture used on a map to represent something real, like a tree or a school, is called a map ___.',
        sentenceMy:
            'မြေပုံပေါ်တွင် သစ်ပင် (သို့) ကျောင်းကဲ့သို့သော တကယ့်အရာဝတ္ထုများကို ကိုယ်စားပြုရန် အသုံးပြုသော ပုံသေးလေးများကို မြေပုံ ___ ဟုခေါ်သည်။',
        optionsEn: ['symbol', 'shadow', 'story', 'song'],
        optionsMy: ['သင်္ကေတ', 'အရိပ်', 'ပုံပြင်', 'သီချင်း'],
        correctIndex: 0,
      ),
    ],
  ),
  FillBlankModuleDef(
    id: 'mock-year5-history-fillblank-1',
    subject: 'history',
    grade: Grade.year5,
    contentType: 'fillBlank',
    titleEn: 'Fill in the Blanks: Ancient Egypt',
    titleMy: 'အကွက်လွတ်ဖြည့်ပါ — ရှေးဟောင်းအီဂျစ်',
    descriptionEn:
        'Complete each sentence about Ancient Egypt and historical evidence with the correct word.',
    descriptionMy:
        'ရှေးဟောင်းအီဂျစ်နှင့် သမိုင်းသက်သေအထောက်အထားများအကြောင်း ဝါကျတစ်ခုစီကို မှန်ကန်သောစကားလုံးဖြင့် ဖြည့်စွက်ပါ။',
    starsReward: 18,
    questions: [
      FillBlankQuestion(
        sentenceEn:
            'Ancient Egyptian civilization grew along the banks of the ___ River.',
        sentenceMy:
            'ရှေးဟောင်းအီဂျစ်ယဉ်ကျေးမှုသည် ___ မြစ်ကမ်းတစ်လျှောက်တွင် ဖွံ့ဖြိုးတိုးတက်ခဲ့သည်။',
        optionsEn: ['Nile', 'Amazon', 'Ayeyarwady', 'Mississippi'],
        optionsMy: ['နိုင်း', 'အမေဇုံ', 'ဧရာဝတီ', 'မစ်ဆစ်ဆီပီ'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn:
            'The Egyptian pyramids were built mainly to serve as ___ for pharaohs.',
        sentenceMy:
            'အီဂျစ်ပိရမစ်များကို ဘုရင်များအတွက် ___ အဖြစ် အဓိကဆောက်လုပ်ခဲ့ကြသည်။',
        optionsEn: ['marketplaces', 'tombs', 'schools', 'farms'],
        optionsMy: [
          'စျေးရောင်းစခန်းများ',
          'သင်္ချိုင်းများ',
          'ကျောင်းများ',
          'လယ်ယာများ',
        ],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn:
            'Historians call an original object or record from the past, such as a tool or letter, a ___ source.',
        sentenceMy:
            'ကိရိယာ သို့မဟုတ် စာစောင်ကဲ့သို့ အတိတ်ကာလမှ မူရင်းအရာဝတ္ထုကို သမိုင်းပညာရှင်များက ___ သက်သေအထောက်အထားဟု ခေါ်သည်။',
        optionsEn: ['secondary', 'primary', 'fictional', 'modern'],
        optionsMy: ['ဒုတိယ', 'မူလ', 'စိတ်ကူးယဉ်', 'ခေတ်သစ်'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn:
            'The picture writing used by ancient Egyptians on tomb walls is called ___.',
        sentenceMy:
            'ရှေးဟောင်းအီဂျစ်လူတို့ သင်္ချိုင်းနံရံများပေါ်တွင် အသုံးပြုခဲ့သော ပုံစာရေးနည်းကို ___ ဟုခေါ်သည်။',
        optionsEn: ['calligraphy', 'hieroglyphics', 'alphabet', 'braille'],
        optionsMy: [
          'လက်ရေးလှပညာ',
          'ဟိရိုဂလစ်ဖ်ပုံစာ',
          'အက္ခရာစဉ်',
          'မျက်မမြင်စာ',
        ],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn:
            'Museums keep and display ancient ___ so people today can learn about the past.',
        sentenceMy:
            'ပြတိုက်များသည် ယနေ့လူများ အတိတ်ကာလအကြောင်းကို လေ့လာနိုင်ရန် ရှေးဟောင်း ___ များကို ထိန်းသိမ်းပြသကြသည်။',
        optionsEn: ['artifacts', 'smartphones', 'televisions', 'cars'],
        optionsMy: [
          'ရှေးဟောင်းပစ္စည်းများ',
          'စမတ်ဖုန်းများ',
          'တီဗီများ',
          'ကားများ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  FillBlankModuleDef(
    id: 'mock-year1-computing-fillblank-1',
    subject: 'computing',
    grade: Grade.year1,
    contentType: 'fillBlank',
    titleEn: 'Fill in the Computer Words',
    titleMy: 'ကွန်ပျူတာ စကားလုံးများ ဖြည့်ကြစို့',
    descriptionEn: 'Complete each sentence with the correct computer word.',
    descriptionMy:
        'စာကြောင်းတစ်ခုစီကို မှန်ကန်သော ကွန်ပျူတာ စကားလုံးဖြင့် ဖြည့်စွက်ပါ။',
    starsReward: 10,
    questions: [
      FillBlankQuestion(
        sentenceEn: 'The ___ shows pictures and words on the computer.',
        sentenceMy:
            '___ သည် ကွန်ပျူတာပေါ်ရှိ ပုံများနှင့် စာလုံးများကို ပြသပေးသည်။',
        optionsEn: ['Keyboard', 'Screen', 'Mouse', 'Speaker'],
        optionsMy: ['ကီးဘုတ်', 'မျက်နှာပြင်', 'မောက်စ်', 'စပီကာ'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'We type letters using the ___.',
        sentenceMy:
            'ကျွန်ုပ်တို့သည် ___ ကိုသုံးပြီး အက္ခရာများ ရိုက်ထည့်ကြသည်။',
        optionsEn: ['Mouse', 'Screen', 'Keyboard', 'Printer'],
        optionsMy: ['မောက်စ်', 'မျက်နှာပြင်', 'ကီးဘုတ်', 'ပရင်တာ'],
        correctIndex: 2,
      ),
      FillBlankQuestion(
        sentenceEn: 'We click and point at things using the ___.',
        sentenceMy: 'ကျွန်ုပ်တို့သည် ___ ကို သုံးပြီး နှိပ်ကာ ညွှန်ပြကြသည်။',
        optionsEn: ['Keyboard', 'Mouse', 'Screen', 'Monitor'],
        optionsMy: ['ကီးဘုတ်', 'မောက်စ်', 'မျက်နှာပြင်', 'မော်နီတာ'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'Before going on the internet, we should ask a ___.',
        sentenceMy: 'အင်တာနက်ကို မသုံးမီ ကျွန်ုပ်တို့ ___ ကို မေးသင့်သည်။',
        optionsEn: ['Stranger', 'Grown-up', 'Cat', 'Toy'],
        optionsMy: ['အမျှမသိသူ', 'လူကြီး', 'ကြောင်', 'အရုပ်'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'We listen to sounds from the computer using the ___.',
        sentenceMy: 'ကွန်ပျူတာမှ အသံများကို ___ ဖြင့် နားထောင်ကြသည်။',
        optionsEn: ['Speaker', 'Keyboard', 'Mouse', 'Screen'],
        optionsMy: ['စပီကာ', 'ကီးဘုတ်', 'မောက်စ်', 'မျက်နှာပြင်'],
        correctIndex: 0,
      ),
    ],
  ),
];

/// One fill-in-the-blank module per Secondary/IGCSE grade, each covering a
/// different subject (physics/biology/chemistry/ict) so this content isn't
/// English-only and isn't repetitive with the Primary bank.
const List<FillBlankModuleDef> secondaryFillBlankBank = [
  // ============================== SECONDARY 1 ==============================
  FillBlankModuleDef(
    id: 'mock-secondary1-physics-fillblank-1',
    subject: 'physics',
    grade: Grade.secondary1,
    contentType: 'fillBlank',
    titleEn: 'Forces & Motion',
    titleMy: 'အားနှင့် ရွေ့လျားမှု',
    descriptionEn: 'Fill in the blank with core forces and motion vocabulary.',
    descriptionMy: 'အားနှင့် ရွေ့လျားမှုဆိုင်ရာ အခြေခံဝေါဟာရများဖြင့် ဖြည့်ပါ။',
    starsReward: 22,
    questions: [
      FillBlankQuestion(
        sentenceEn: 'The unit of force is the ___.',
        sentenceMy: 'အားနှင့်ဆိုင်သော ယူနစ်မှာ ___ ဖြစ်သည်။',
        optionsEn: ['Newton', 'Watt', 'Joule', 'Pascal'],
        optionsMy: ['နယူတန်', 'ဝပ်', 'ဂျူးလ်', 'ပါစကယ်'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn:
            'An object at rest stays at rest unless acted on by an unbalanced ___.',
        sentenceMy:
            'အနားယူနေသောအရာဝတ္ထုသည် မမျှတသော ___ တစ်ခု၏ လုပ်ဆောင်မှုမရှိပါက အနားယူနေမည်ဖြစ်သည်။',
        optionsEn: ['color', 'force', 'sound', 'smell'],
        optionsMy: ['အရောင်', 'အား', 'အသံ', 'အနံ့'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'Speed is calculated by dividing distance by ___.',
        sentenceMy:
            'အလျင်ကို အကွာအဝေးအား ___ ဖြင့် စားခြင်းအားဖြင့် တွက်ချက်သည်။',
        optionsEn: ['mass', 'weight', 'time', 'volume'],
        optionsMy: ['အလေးချိန်', 'ဝန်အား', 'အချိန်', 'ဒြပ်ထု'],
        correctIndex: 2,
      ),
      FillBlankQuestion(
        sentenceEn: 'Gravity pulls objects toward the ___ of the Earth.',
        sentenceMy: 'ဆွဲငင်အားသည် အရာဝတ္ထုများကို ကမ္ဘာ၏ ___ ဆီသို့ ဆွဲငင်သည်။',
        optionsEn: ['surface', 'center', 'edge', 'sky'],
        optionsMy: ['မျက်နှာပြင်', 'ဗဟိုချက်', 'အနား', 'ကောင်းကင်'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: "___ energy is stored energy due to an object's position.",
        sentenceMy:
            '___ စွမ်းအင်သည် အရာဝတ္ထု၏ တည်နေရာကြောင့် သိမ်းဆည်းထားသော စွမ်းအင်ဖြစ်သည်။',
        optionsEn: ['Kinetic', 'Sound', 'Potential', 'Light'],
        optionsMy: [
          'ရွေ့လျားစွမ်းအင်',
          'အသံစွမ်းအင်',
          'အလားအလာစွမ်းအင်',
          'အလင်းစွမ်းအင်',
        ],
        correctIndex: 2,
      ),
    ],
  ),
  // ============================== SECONDARY 2 ==============================
  FillBlankModuleDef(
    id: 'mock-secondary2-biology-fillblank-1',
    subject: 'biology',
    grade: Grade.secondary2,
    contentType: 'fillBlank',
    titleEn: 'Cells & Life',
    titleMy: 'ဆဲလ်များနှင့် အသက်ရှင်ခြင်း',
    descriptionEn: 'Fill in the blank with core cell biology vocabulary.',
    descriptionMy: 'ဆဲလ်ဇီဝဗေဒဆိုင်ရာ အခြေခံဝေါဟာရများဖြင့် ဖြည့်ပါ။',
    starsReward: 24,
    questions: [
      FillBlankQuestion(
        sentenceEn: 'The basic unit of life is the ___.',
        sentenceMy: 'အသက်ရှင်ခြင်း၏ အခြေခံယူနစ်မှာ ___ ဖြစ်သည်။',
        optionsEn: ['cell', 'atom', 'tissue', 'organ'],
        optionsMy: ['ဆဲလ်', 'အက်တမ်', 'တစ်ရှူး', 'အင်္ဂါ'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn: 'Plants make their own food through a process called ___.',
        sentenceMy:
            'အပင်များသည် ___ ဟုခေါ်သော လုပ်ငန်းစဉ်မှတဆင့် ၎င်းတို့၏ အစားအစာကို ကိုယ်တိုင်ပြုလုပ်ကြသည်။',
        optionsEn: ['digestion', 'respiration', 'photosynthesis', 'excretion'],
        optionsMy: [
          'အစာချေခြင်း',
          'အသက်ရှူခြင်း',
          'ရောင်စွန်းပေါင်းစပ်ခြင်း',
          'စွန့်ထုတ်ခြင်း',
        ],
        correctIndex: 2,
      ),
      FillBlankQuestion(
        sentenceEn: 'The control center of a cell is the ___.',
        sentenceMy: 'ဆဲလ်တစ်ခု၏ ထိန်းချုပ်ရေးဌာနချုပ်မှာ ___ ဖြစ်သည်။',
        optionsEn: ['membrane', 'nucleus', 'wall', 'vacuole'],
        optionsMy: ['အမြှေး', 'နျူကလိယ', 'နံရံ', 'ဗက်ကျူးအိုးလ်'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'Genetic information is carried by ___.',
        sentenceMy: 'မျိုးရိုးဗီဇအချက်အလက်များကို ___ က သယ်ဆောင်သည်။',
        optionsEn: ['DNA', 'water', 'oxygen', 'salt'],
        optionsMy: ['DNA', 'ရေ', 'အောက်စီဂျင်', 'ဆား'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn: 'Blood is pumped through the body by the ___.',
        sentenceMy: 'သွေးကို ___ က ခန္ဓာကိုယ်တစ်ခုလုံးသို့ စုပ်ထုတ်ပေးသည်။',
        optionsEn: ['lungs', 'heart', 'liver', 'kidney'],
        optionsMy: ['အဆုတ်', 'နှလုံး', 'အသည်း', 'ကျောက်ကပ်'],
        correctIndex: 1,
      ),
    ],
  ),
  // ============================== SECONDARY 3 ==============================
  FillBlankModuleDef(
    id: 'mock-secondary3-chemistry-fillblank-1',
    subject: 'chemistry',
    grade: Grade.secondary3,
    contentType: 'fillBlank',
    titleEn: 'Atoms & Reactions',
    titleMy: 'အက်တမ်များနှင့် တုံ့ပြန်မှုများ',
    descriptionEn: 'Fill in the blank with core chemistry vocabulary.',
    descriptionMy: 'ဓာတုဗေဒဆိုင်ရာ အခြေခံဝေါဟာရများဖြင့် ဖြည့်ပါ။',
    starsReward: 26,
    questions: [
      FillBlankQuestion(
        sentenceEn: 'The smallest unit of an element is the ___.',
        sentenceMy: 'ဒြပ်စင်တစ်ခု၏ အသေးငယ်ဆုံးယူနစ်မှာ ___ ဖြစ်သည်။',
        optionsEn: ['atom', 'cell', 'molecule', 'mixture'],
        optionsMy: ['အက်တမ်', 'ဆဲလ်', 'မော်လီကျူး', 'ရောစပ်ပစ္စည်း'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn:
            'A substance made of two or more elements chemically joined is a ___.',
        sentenceMy:
            'ဒြပ်စင်နှစ်မျိုးထက်ပို၍ ဓာတုနည်းအရ ပေါင်းစပ်ထားသော ဒြပ်ပစ္စည်းကို ___ ဟုခေါ်သည်။',
        optionsEn: ['solution', 'compound', 'gas', 'liquid'],
        optionsMy: ['ဒြပ်ရည်', 'ဒြပ်ပေါင်း', 'ဓာတ်ငွေ့', 'အရည်'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'The pH scale measures how acidic or ___ a substance is.',
        sentenceMy:
            'pH စကေးသည် ပစ္စည်းတစ်ခု မည်မျှ အက်ဆစ် သို့မဟုတ် ___ ဖြစ်ကြောင်း တိုင်းတာသည်။',
        optionsEn: ['heavy', 'alkaline', 'colorful', 'hot'],
        optionsMy: ['လေးလံ', 'အယ်လကာလိုင်း', 'ရောင်စုံ', 'ပူ'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'During a chemical reaction, new substances are ___.',
        sentenceMy: 'ဓာတုတုံ့ပြန်မှုတစ်ခုအတွင်း ဒြပ်ပစ္စည်းအသစ်များ ___ လာသည်။',
        optionsEn: ['formed', 'destroyed forever', 'painted', 'frozen'],
        optionsMy: ['ဖြစ်ပေါ်', 'ထာဝရပျောက်ကွယ်', 'ဆေးဆွဲ', 'အေးခဲ'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn:
            'The number of protons in an atom is called its atomic ___.',
        sentenceMy:
            'အက်တမ်တစ်ခုအတွင်းရှိ ပရိုတွန်အရေအတွက်ကို ၎င်း၏ အက်တမ်ဆိုင်ရာ ___ ဟုခေါ်သည်။',
        optionsEn: ['size', 'number', 'color', 'weight only'],
        optionsMy: ['အရွယ်အစား', 'အရေအတွက်', 'အရောင်', 'အလေးချိန်သာ'],
        correctIndex: 1,
      ),
    ],
  ),
  // ============================== IGCSE ==============================
  FillBlankModuleDef(
    id: 'mock-igcse-ict-fillblank-1',
    subject: 'ict',
    grade: Grade.igcse,
    contentType: 'fillBlank',
    titleEn: 'Computers & Data',
    titleMy: 'ကွန်ပျူတာများနှင့် ဒေတာ',
    descriptionEn: 'Fill in the blank with core computing vocabulary.',
    descriptionMy: 'ကွန်ပျူတာဆိုင်ရာ အခြေခံဝေါဟာရများဖြင့် ဖြည့်ပါ။',
    starsReward: 28,
    questions: [
      FillBlankQuestion(
        sentenceEn:
            'A ___ is a set of rules that allows computers to communicate.',
        sentenceMy:
            '___ သည် ကွန်ပျူတာများအား ဆက်သွယ်ခွင့်ပြုသော စည်းမျဉ်းများ အစုအဝေးဖြစ်သည်။',
        optionsEn: ['protocol', 'printer', 'monitor', 'mouse'],
        optionsMy: ['ပရိုတိုကော', 'ပရင်တာ', 'မော်နီတာ', 'မောက်စ်'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn:
            'Data stored permanently on a device, even after power off, is called ___ storage.',
        sentenceMy:
            'စက်ပစ္စည်းမှ လျှပ်စစ်ဓာတ်အားပြတ်သွားသည့်တိုင် အမြဲတမ်း သိမ်းဆည်းထားသော ဒေတာကို ___ သိုလှောင်ခန်း ဟုခေါ်သည်။',
        optionsEn: ['volatile', 'non-volatile', 'temporary', 'cached'],
        optionsMy: [
          'ယာယီပျောက်ကွယ်တတ်သော',
          'အမြဲတမ်းသိုလှောင်နိုင်သော',
          'ယာယီ',
          'ကက်ရှ်',
        ],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn: 'Encrypting data helps to keep it ___.',
        sentenceMy:
            'ဒေတာများကို လျှို့ဝှက်ကုဒ်ဖြင့်ပြောင်းလဲထားခြင်းသည် ၎င်းတို့ကို ___ ဖြစ်စေရန် ကူညီသည်။',
        optionsEn: ['colorful', 'secure', 'louder', 'faster only'],
        optionsMy: ['ရောင်စုံ', 'လုံခြုံ', 'ပိုကျယ်လောင်', 'ပိုမြန်ဆန်သာ'],
        correctIndex: 1,
      ),
      FillBlankQuestion(
        sentenceEn:
            'A ___ is a malicious program that can copy itself and spread.',
        sentenceMy:
            '___ သည် မိမိကိုယ်ကို ကူးယူနိုင်ပြီး ပျံ့နှံ့နိုင်သော အန္တရာယ်ရှိ ပရိုဂရမ်တစ်ခုဖြစ်သည်။',
        optionsEn: ['virus', 'browser', 'keyboard', 'font'],
        optionsMy: ['ဗိုင်းရပ်စ်', 'ဘရောက်ဆာ', 'ကီးဘုတ်', 'စာလုံးပုံစံ'],
        correctIndex: 0,
      ),
      FillBlankQuestion(
        sentenceEn:
            'Storing data in a structured collection of tables describes a ___.',
        sentenceMy:
            'ဒေတာများကို ဇယားများပါဝင်သည့် တည်ဆောက်ပုံရှိသော အစုအဝေးတစ်ခုတွင် သိမ်းဆည်းခြင်းကို ___ ဟုခေါ်သည်။',
        optionsEn: ['spreadsheet only', 'database', 'presentation', 'video'],
        optionsMy: ['spreadsheet သာ', 'ဒေတာဘေ့စ်', 'တင်ဆက်မှု', 'ဗီဒီယို'],
        correctIndex: 1,
      ),
    ],
  ),
];
