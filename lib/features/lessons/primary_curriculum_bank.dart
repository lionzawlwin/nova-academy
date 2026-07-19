import '../../models/child_model.dart';
import 'mock_quiz_data.dart';

/// One Primary (Year 1-6) curriculum module: bilingual catalog metadata
/// plus its own fixed set of MCQ [QuizQuestion]s. Structurally mirrors
/// [NurseryActivityDef] in `nursery_kg_activity_bank.dart`, but carries
/// quiz questions instead of match-pairs items since Primary content plays
/// back through [PrimaryQuizScreen] rather than a drag-and-drop activity.
class PrimaryActivityDef {
  const PrimaryActivityDef({
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
  final List<QuizQuestion> questions;
}

/// Looks up the question bank for a specific module by [moduleId] (e.g.
/// `mock-year3-science-2`). Falls back to the legacy subject-only
/// [quizQuestionsForSubject] lookup when [moduleId] is null or not found
/// in [primaryCurriculumBank] -- covers placeholder nodes shown before any
/// module is seeded, and the pre-existing legacy modules from
/// `mockSeedLearningModules` that predate this registry.
List<QuizQuestion> quizQuestionsForModule(String? moduleId, String subject) {
  if (moduleId != null) {
    for (final activity in primaryCurriculumBank) {
      if (activity.id == moduleId) return activity.questions;
    }
  }
  return quizQuestionsForSubject(subject);
}

const List<PrimaryActivityDef> primaryCurriculumBank = [
  // ============================== YEAR 1 ==============================
  PrimaryActivityDef(
    id: 'mock-year1-math-1',
    subject: 'math',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Numbers to 20',
    titleMy: '၂၀ အထိ ကိန်းဂဏန်းများ',
    descriptionEn: 'Count, read, and order numbers from 1 to 20.',
    descriptionMy:
        '၁ မှ ၂၀ အထိ ကိန်းဂဏန်းများကို ရေတွက်၊ ဖတ်ပြီး အစဉ်လိုက်စီပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'What number comes after 14?',
        questionMy: '၁၄ ၏ နောက်ကိန်းမှာ အဘယ်နည်း။',
        optionsEn: ['15', '13', '16', '12'],
        optionsMy: ['15', '13', '16', '12'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which number is the smallest?',
        questionMy: 'အသေးဆုံးကိန်းကို ရွေးပါ။',
        optionsEn: ['9', '19', '11', '3'],
        optionsMy: ['9', '19', '11', '3'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What number comes before 20?',
        questionMy: '၂၀ ၏ ရှေ့ကိန်းမှာ အဘယ်နည်း။',
        optionsEn: ['21', '19', '18', '10'],
        optionsMy: ['21', '19', '18', '10'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which number is bigger, 12 or 17?',
        questionMy: '၁၂ နှင့် ၁၇ တွင် ပိုကြီးသည်မှာ အဘယ်နည်း။',
        optionsEn: ['12', '17', 'They are equal', 'Cannot tell'],
        optionsMy: ['12', '17', 'တူညီသည်', 'မသိနိုင်ပါ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'How many tens and ones make 16?',
        questionMy: '၁၆ တွင် ဆယ်ဂဏန်းနှင့် တစ်ဂဏန်း မည်မျှပါသနည်း။',
        optionsEn: [
          '1 ten, 6 ones',
          '6 tens, 1 one',
          '2 tens',
          '0 tens, 16 ones',
        ],
        optionsMy: [
          'ဆယ် ၁ ခု၊ တစ် ၆ ခု',
          'ဆယ် ၆ ခု၊ တစ် ၁ ခု',
          'ဆယ် ၂ ခု',
          'ဆယ် ၀ ခု၊ တစ် ၁၆ ခု',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-math-2',
    subject: 'math',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Addition & Subtraction to 20',
    titleMy: '၂၀ အထိ ပေါင်းနုတ်ခြင်း',
    descriptionEn: 'Add and subtract numbers within 20.',
    descriptionMy: '၂၀ အတွင်း ကိန်းဂဏန်းများကို ပေါင်းနုတ်ပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'What is 8 + 7?',
        questionMy: '၈ + ၇ ၏ ပေါင်းလဒ်ကို ရှာပါ။',
        optionsEn: ['15', '14', '16', '13'],
        optionsMy: ['15', '14', '16', '13'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 18 - 9?',
        questionMy: '၁၈ - ၉ ၏ နုတ်လဒ်ကို ရှာပါ။',
        optionsEn: ['9', '8', '10', '7'],
        optionsMy: ['9', '8', '10', '7'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 12 + 6?',
        questionMy: '၁၂ + ၆ ၏ ပေါင်းလဒ်ကို ရှာပါ။',
        optionsEn: ['18', '17', '19', '16'],
        optionsMy: ['18', '17', '19', '16'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 20 - 5?',
        questionMy: '၂၀ - ၅ ၏ နုတ်လဒ်ကို ရှာပါ။',
        optionsEn: ['15', '14', '16', '13'],
        optionsMy: ['15', '14', '16', '13'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Tin has 9 marbles and finds 5 more. How many marbles now?',
        questionMy:
            'တင်တွင် ကျောက်လုံး ၉ လုံးရှိပြီး နောက်ထပ် ၅ လုံး ထပ်တွေ့ရသည်။ အခုစုစုပေါင်း ဘယ်နှစ်လုံးရှိသနည်း။',
        optionsEn: ['14', '13', '15', '4'],
        optionsMy: ['14', '13', '15', '4'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-math-3',
    subject: 'math',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Basic Shapes',
    titleMy: 'အခြေခံပုံသဏ္ဌာန်များ',
    descriptionEn: 'Recognize and name common 2D shapes.',
    descriptionMy: 'အသုံးများသော ၂ဒီပုံသဏ္ဌာန်များကို မှတ်မိပြီး အမည်ပေးပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'How many sides does a triangle have?',
        questionMy: 'တြိဂံတစ်ခုတွင် ဘယ်နှစ်ဖက်ရှိသနည်း။',
        optionsEn: ['3', '4', '5', '2'],
        optionsMy: ['3', '4', '5', '2'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which shape has no corners?',
        questionMy: 'ထောင့်မရှိသော ပုံသဏ္ဌာန်ကို ရွေးပါ။',
        optionsEn: ['Circle', 'Square', 'Triangle', 'Rectangle'],
        optionsMy: ['စက်ဝိုင်း', 'စတုရန်း', 'တြိဂံ', 'ထောင့်မှန်စတုဂံ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How many sides does a square have?',
        questionMy: 'စတုရန်းတစ်ခုတွင် ဘယ်နှစ်ဖက်ရှိသနည်း။',
        optionsEn: ['4', '3', '5', '6'],
        optionsMy: ['4', '3', '5', '6'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A rectangle has how many corners?',
        questionMy: 'ထောင့်မှန်စတုဂံတစ်ခုတွင် ဘယ်နှစ်ထောင့်ရှိသနည်း။',
        optionsEn: ['4', '3', '2', '5'],
        optionsMy: ['4', '3', '2', '5'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a 3D shape?',
        questionMy: 'အောက်ပါအထဲမှ ၃ဒီပုံသဏ္ဌာန်ကို ရွေးပါ။',
        optionsEn: ['Cube', 'Circle', 'Triangle', 'Square'],
        optionsMy: ['ကုပ်ဘူး', 'စက်ဝိုင်း', 'တြိဂံ', 'စတုရန်း'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-english-1',
    subject: 'english',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Phonics Sounds',
    titleMy: 'အက္ခရာအသံများ',
    descriptionEn: 'Practice the beginning sounds of letters.',
    descriptionMy: 'အက္ခရာများ၏ အစသံများကို လေ့ကျင့်ပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Which letter makes the "mmm" sound, as in "moon"?',
        questionMy: '"moon" ရှိ "mmm" အသံကို ပေးသောအက္ခရာကို ရွေးပါ။',
        optionsEn: ['M', 'N', 'W', 'B'],
        optionsMy: ['M', 'N', 'W', 'B'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word starts with the same sound as "sun"?',
        questionMy: '"sun" နှင့် အစသံတူသော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Snake', 'Moon', 'Cat', 'Rain'],
        optionsMy: ['Snake', 'Moon', 'Cat', 'Rain'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What sound does the letter "T" make?',
        questionMy: '"T" အက္ခရာသည် မည်သည့်အသံထွက်ပေးသနည်း။',
        optionsEn: [
          '"tuh" (as in top)',
          '"buh" (as in ball)',
          '"sss" (as in snake)',
          '"muh" (as in moon)',
        ],
        optionsMy: [
          '"tuh" (top ကဲ့သို့)',
          '"buh" (ball ကဲ့သို့)',
          '"sss" (snake ကဲ့သို့)',
          '"muh" (moon ကဲ့သို့)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word rhymes with "pig"?',
        questionMy: '"pig" နှင့် ကာရံတူသော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Big', 'Cat', 'Dog', 'Sun'],
        optionsMy: ['Big', 'Cat', 'Dog', 'Sun'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which letter makes the "sss" sound, as in "snake"?',
        questionMy: '"snake" ရှိ "sss" အသံကို ပေးသောအက္ခရာကို ရွေးပါ။',
        optionsEn: ['S', 'Z', 'C', 'X'],
        optionsMy: ['S', 'Z', 'C', 'X'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-english-2',
    subject: 'english',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Sight Words',
    titleMy: 'အသုံးများသော စကားလုံးများ',
    descriptionEn: 'Recognize common everyday sight words.',
    descriptionMy: 'နေ့စဉ်အသုံးများသော စကားလုံးများကို မှတ်မိပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Which word means the opposite of "up"?',
        questionMy: '"up" ၏ ဆန့်ကျင်ဘက်စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Down', 'Big', 'Fast', 'Red'],
        optionsMy: ['Down', 'Big', 'Fast', 'Red'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Fill in the blank: "I ___ to the park."',
        questionMy: 'အောက်ပါစာကြောင်းကို ဖြည့်ပါ- "I ___ to the park."',
        optionsEn: ['go', 'goes', 'going', 'gone'],
        optionsMy: ['go', 'goes', 'going', 'gone'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word is used to point at something near you?',
        questionMy: 'အနီးရှိအရာကို ညွှန်းရန်သုံးသော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['This', 'That', 'Those', 'There'],
        optionsMy: ['This', 'That', 'Those', 'There'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word completes: "She is ___ my friend."',
        questionMy: 'အောက်ပါစာကြောင်းကို ဖြည့်ပါ- "She is ___ my friend."',
        optionsEn: ['also', 'am', 'are', 'were'],
        optionsMy: ['also', 'am', 'are', 'were'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word means "not any"?',
        questionMy: '"မရှိသော" ဟု ဆိုလိုသော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['None', 'Some', 'All', 'Many'],
        optionsMy: ['None', 'Some', 'All', 'Many'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-english-3',
    subject: 'english',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Simple Sentences',
    titleMy: 'ရိုးရှင်းသော စာကြောင်းများ',
    descriptionEn: 'Build and understand short, simple sentences.',
    descriptionMy: 'တိုတောင်းရိုးရှင်းသော စာကြောင်းများကို ဖွဲ့စည်းနားလည်ပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Which is a complete sentence?',
        questionMy: 'ပြည့်စုံသောစာကြောင်းကို ရွေးပါ။',
        optionsEn: ['The dog runs.', 'The dog', 'Runs fast', 'Big dog'],
        optionsMy: ['The dog runs.', 'The dog', 'Runs fast', 'Big dog'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Every sentence should start with a...',
        questionMy: 'စာကြောင်းတိုင်းသည် မည်သည့်အရာဖြင့် စတင်သင့်သနည်း။',
        optionsEn: ['Capital letter', 'Small letter', 'Number', 'Comma'],
        optionsMy: ['စာလုံးအကြီး', 'စာလုံးအသေး', 'ဂဏန်း', 'ကော်မာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which punctuation ends a telling sentence?',
        questionMy:
            'ပြောပြသောစာကြောင်းကို မည်သည့်အမှတ်အသားဖြင့် အဆုံးသတ်သနည်း။',
        optionsEn: [
          'A period (.)',
          'A question mark (?)',
          'A comma (,)',
          'An exclamation (!)',
        ],
        optionsMy: [
          'ဒေါ့ (.)',
          'မေးခွန်းအမှတ် (?)',
          'ကော်မာ (,)',
          'အံ့ဩအမှတ် (!)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word is the subject in "The cat sleeps"?',
        questionMy:
            '"The cat sleeps" စာကြောင်းတွင် ဘာသာရပ်စကားလုံးမှာ အဘယ်နည်း။',
        optionsEn: ['Cat', 'Sleeps', 'The', 'None'],
        optionsMy: ['Cat', 'Sleeps', 'The', 'None'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which sentence asks a question?',
        questionMy: 'မေးခွန်းမေးသောစာကြောင်းကို ရွေးပါ။',
        optionsEn: [
          'Where is my ball?',
          'I have a ball.',
          'The ball is red.',
          'Throw the ball.',
        ],
        optionsMy: [
          'Where is my ball?',
          'I have a ball.',
          'The ball is red.',
          'Throw the ball.',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-science-1',
    subject: 'science',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'My Body',
    titleMy: 'ကျွန်ုပ်၏ကိုယ်ခန္ဓာ',
    descriptionEn: 'Learn about basic parts of the human body and their jobs.',
    descriptionMy:
        'လူ့ကိုယ်ခန္ဓာ၏ အခြေခံအစိတ်အပိုင်းများနှင့် ၎င်းတို့၏ လုပ်ဆောင်ချက်များကို လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Which body part do we use to see?',
        questionMy: 'မြင်ရန် မည်သည့်ခန္ဓာကိုယ်အစိတ်အပိုင်းကို သုံးသနည်း။',
        optionsEn: ['Eyes', 'Ears', 'Nose', 'Hands'],
        optionsMy: ['မျက်လုံး', 'နား', 'နှာခေါင်း', 'လက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which organ pumps blood around the body?',
        questionMy: 'ခန္ဓာကိုယ်တစ်ခုလုံးသို့ သွေးပို့ပေးသော အင်္ဂါကို ရွေးပါ။',
        optionsEn: ['Heart', 'Lungs', 'Stomach', 'Brain'],
        optionsMy: ['နှလုံး', 'အဆုတ်', 'အစာအိမ်', 'ဦးနှောက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How many fingers do you have on one hand?',
        questionMy: 'တစ်ဘက်လက်တွင် လက်ချောင်းမည်မျှရှိသနည်း။',
        optionsEn: ['5', '4', '6', '10'],
        optionsMy: ['5', '4', '6', '10'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which body part helps us hear sounds?',
        questionMy:
            'အသံများကို ကြားနိုင်ရန် မည်သည့်ခန္ဓာကိုယ်အစိတ်အပိုင်းက ကူညီသနည်း။',
        optionsEn: ['Ears', 'Eyes', 'Nose', 'Tongue'],
        optionsMy: ['နား', 'မျက်လုံး', 'နှာခေါင်း', 'လျှာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What do we use our teeth for?',
        questionMy: 'သွားများကို ဘာအတွက် သုံးသနည်း။',
        optionsEn: ['Chewing food', 'Smelling', 'Hearing', 'Seeing'],
        optionsMy: ['အစားအစာ ဝါးဖျက်ရန်', 'အနံ့ခံရန်', 'ကြားရန်', 'မြင်ရန်'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-science-2',
    subject: 'science',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Plants Around Us',
    titleMy: 'ပတ်ဝန်းကျင်ရှိ အပင်များ',
    descriptionEn:
        'Discover the basic parts of a plant and what plants need to grow.',
    descriptionMy:
        'အပင်၏ အခြေခံအစိတ်အပိုင်းများနှင့် အပင်ကြီးထွားရန် လိုအပ်သည်များကို ရှာဖွေတွေ့ရှိပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'What does a plant need to grow well?',
        questionMy: 'အပင်တစ်ပင် ကောင်းစွာကြီးထွားရန် အဘယ်အရာလိုအပ်သနည်း။',
        optionsEn: [
          'Sunlight and water',
          'Only darkness',
          'Only sand',
          'Only stones',
        ],
        optionsMy: ['နေရောင်ခြည်နှင့် ရေ', 'အမှောင်သာ', 'သဲသာ', 'ကျောက်သာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which part of the plant is under the ground?',
        questionMy: 'အပင်၏ မည်သည့်အစိတ်အပိုင်းသည် မြေအောက်တွင် ရှိသနည်း။',
        optionsEn: ['Roots', 'Leaves', 'Flowers', 'Stem'],
        optionsMy: ['အမြစ်', 'အရွက်', 'ပန်း', 'ပင်စည်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which part of the plant makes seeds?',
        questionMy: 'အပင်၏ မည်သည့်အစိတ်အပိုင်းသည် မျိုးစေ့ဖန်တီးသနည်း။',
        optionsEn: ['Flower', 'Root', 'Stem', 'Leaf'],
        optionsMy: ['ပန်း', 'အမြစ်', 'ပင်စည်', 'အရွက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What grows from a planted seed?',
        questionMy: 'စိုက်ထားသောမျိုးစေ့မှ အဘယ်အရာ ပေါက်လာသနည်း။',
        optionsEn: ['A new plant', 'A rock', 'A bird', 'A cloud'],
        optionsMy: ['အပင်သစ်', 'ကျောက်', 'ငှက်', 'တိမ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a tree, not a small plant?',
        questionMy:
            'အောက်ပါတို့တွင် အပင်ငယ်မဟုတ်ဘဲ သစ်ပင်ဖြစ်သည့်အရာကို ရွေးပါ။',
        optionsEn: ['Mango tree', 'Grass', 'Flower pot plant', 'Moss'],
        optionsMy: ['သရက်ပင်', 'မြက်', 'ပန်းအိုးအပင်', 'မှော်'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-science-3',
    subject: 'science',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Weather & Seasons',
    titleMy: 'ရာသီဥတုနှင့် ရာသီများ',
    descriptionEn:
        'Learn about different kinds of weather and the seasons of the year.',
    descriptionMy: 'ရာသီဥတုအမျိုးမျိုးနှင့် နှစ်ပတ်လည်ရာသီများကို လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'What falls from clouds during rain?',
        questionMy: 'မိုးရွာချိန်တွင် တိမ်မှ အဘယ်အရာကျလာသနည်း။',
        optionsEn: ['Water drops', 'Sand', 'Leaves', 'Stones'],
        optionsMy: ['ရေစက်များ', 'သဲ', 'အရွက်များ', 'ကျောက်များ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which season is usually the hottest in Myanmar?',
        questionMy:
            'မြန်မာနိုင်ငံတွင် ပုံမှန်အားဖြင့် အပူဆုံးရာသီမှာ အဘယ်နည်း။',
        optionsEn: ['Summer', 'Rainy season', 'Winter', 'Autumn'],
        optionsMy: ['နွေရာသီ', 'မိုးရာသီ', 'ဆောင်းရာသီ', 'ဆောင်းဦးရာသီ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What should you wear on a cold winter day?',
        questionMy:
            'အေးမြသောဆောင်းရာသီနေ့တွင် အဘယ်အဝတ်အထည်ကို ဝတ်ဆင်သင့်သနည်း။',
        optionsEn: [
          'Warm jacket',
          'Swimsuit',
          'Sandals only',
          'Sunglasses only',
        ],
        optionsMy: [
          'နွေးထွေးသောဂျာကင်',
          'ရေကူးဝတ်စုံ',
          'ညှပ်ဖိနပ်သာ',
          'နေကာမျက်မှန်သာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which weather has strong wind and dark clouds?',
        questionMy:
            'ပြင်းထန်သောလေနှင့် မှောင်နေသော တိမ်များပါသော ရာသီဥတုမှာ အဘယ်နည်း။',
        optionsEn: ['A storm', 'A sunny day', 'A calm night', 'A clear sky'],
        optionsMy: [
          'မုန်တိုင်း',
          'နေသာသောနေ့',
          'တိတ်ဆိတ်သောညဉ့်',
          'ကြည်လင်သောကောင်းကင်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How many seasons are commonly described in Myanmar?',
        questionMy:
            'မြန်မာနိုင်ငံတွင် များသောအားဖြင့် ရာသီမည်မျှ ဖော်ပြလေ့ရှိသနည်း။',
        optionsEn: ['3', '2', '5', '6'],
        optionsMy: ['3', '2', '5', '6'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-stem-1',
    subject: 'stem',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Sequencing Steps',
    titleMy: 'အဆင့်ဆင့်စီစဉ်ခြင်း',
    descriptionEn: 'Put everyday steps in the correct order.',
    descriptionMy: 'နေ့စဉ်လုပ်ငန်းစဉ်များကို မှန်ကန်သောအစဉ်အတိုင်း စီပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'What is the first step when brushing your teeth?',
        questionMy: 'သွားတိုက်ရန် ပထမဆုံးလုပ်ရမည့်အဆင့်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Wet the toothbrush',
          'Rinse your mouth',
          'Put the toothbrush away',
          'Go to sleep',
        ],
        optionsMy: [
          'သွားတိုက်တံကို စိုစေပါ',
          'ခံတွင်းကို ရေချိုးပါ',
          'သွားတိုက်တံကို သိမ်းထားပါ',
          'အိပ်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a set of instructions, what do we call the order of steps?',
        questionMy: 'ညွှန်ကြားချက်များတွင် အဆင့်များ၏အစဉ်ကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A sequence', 'A color', 'A shape', 'A sound'],
        optionsMy: ['အစီအစဉ် (sequence)', 'အရောင်', 'ပုံသဏ္ဌာန်', 'အသံ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'When making a sandwich, what comes first?',
        questionMy: 'ဆန်းဒဝှစ်ပြုလုပ်ရာတွင် ပထမဆုံးအရာမှာ အဘယ်နည်း။',
        optionsEn: ['Get the bread', 'Eat it', 'Wash the plate', 'Put it away'],
        optionsMy: ['ပေါင်မုန့်ယူပါ', 'စားပါ', 'ပန်းကန်ဆေးပါ', 'သိမ်းထားပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What comes last when getting dressed for school?',
        questionMy:
            'ကျောင်းသွားရန် အဝတ်အစားဝတ်ရာတွင် နောက်ဆုံးလုပ်ရမည့်အရာမှာ အဘယ်နည်း။',
        optionsEn: [
          'Put on shoes',
          'Wake up',
          'Choose clothes',
          'Put on shirt',
        ],
        optionsMy: ['ဖိနပ်ဝတ်ပါ', 'နိုးထပါ', 'အဝတ်ရွေးပါ', 'အင်္ကျီဝတ်ပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why is the order of steps important in a recipe?',
        questionMy:
            'ချက်ပြုတ်နည်းတစ်ခုတွင် အဆင့်များ၏အစဉ်သည် အဘယ်ကြောင့် အရေးကြီးသနည်း။',
        optionsEn: [
          'So the food turns out right',
          'It does not matter',
          'To use more time',
          'To make it colorful',
        ],
        optionsMy: [
          'အစားအစာ မှန်ကန်စွာ ရအောင်',
          'အရေးမကြီးပါ',
          'အချိန်ပိုသုံးရန်',
          'အရောင်တင်ရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-stem-2',
    subject: 'stem',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Following Instructions',
    titleMy: 'ညွှန်ကြားချက်များကို လိုက်နာခြင်း',
    descriptionEn: 'Read and understand simple step-by-step instructions.',
    descriptionMy:
        'ရိုးရှင်းသော အဆင့်ဆင့်ညွှန်ကြားချက်များကို ဖတ်ပြီး နားလည်ပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn:
            'If told "clap twice then jump once," what do you do first?',
        questionMy:
            '"နှစ်ကြိမ်လက်ခုပ်ပြီး တစ်ကြိမ်ခုန်ပါ" ဟုပြောလျှင် ပထမဆုံးဘာလုပ်မည်နည်း။',
        optionsEn: ['Clap twice', 'Jump once', 'Sit down', 'Run away'],
        optionsMy: [
          'နှစ်ကြိမ်လက်ခုပ်ပါ',
          'တစ်ကြိမ်ခုန်ပါ',
          'ထိုင်ချပါ',
          'ပြေးထွက်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'An instruction that must be followed exactly is called a...',
        questionMy: 'အတိအကျ လိုက်နာရမည့် ညွှန်ကြားချက်ကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Command', 'Guess', 'Question', 'Story'],
        optionsMy: ['အမိန့် (command)', 'ခန့်မှန်းချက်', 'မေးခွန်း', 'ပုံပြင်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If a game says "move 3 steps forward," how many steps do you take?',
        questionMy:
            'ဂိမ်းတွင် "ရှေ့သို့ ၃ လှမ်း လှမ်းပါ" ဟုဆိုလျှင် ဘယ်နှလှမ်းလှမ်းရမည်နည်း။',
        optionsEn: ['3', '2', '4', '1'],
        optionsMy: ['3', '2', '4', '1'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why should you listen carefully to instructions?',
        questionMy: 'ညွှန်ကြားချက်များကို အဘယ်ကြောင့် သေချာနားထောင်သင့်သနည်း။',
        optionsEn: [
          'To do the task correctly',
          'It is not needed',
          'To finish faster only',
          'To make noise',
        ],
        optionsMy: [
          'အလုပ်ကို မှန်ကန်စွာ လုပ်ဆောင်နိုင်ရန်',
          'မလိုအပ်ပါ',
          'မြန်မြန်ပြီးရုံသာ',
          'ဆူညံစေရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If told "draw a circle, then color it red," what is the second step?',
        questionMy:
            '"စက်ဝိုင်းဆွဲပြီး အနီရောင်ဆိုးပါ" ဟုဆိုလျှင် ဒုတိယအဆင့်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Color it red',
          'Draw a circle',
          'Draw a square',
          'Color it blue',
        ],
        optionsMy: [
          'အနီရောင်ဆိုးပါ',
          'စက်ဝိုင်းဆွဲပါ',
          'စတုရန်းဆွဲပါ',
          'အပြာရောင်ဆိုးပါ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-stem-3',
    subject: 'stem',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Simple Patterns',
    titleMy: 'ရိုးရှင်းသော ပုံစံများ',
    descriptionEn: 'Spot and continue repeating patterns.',
    descriptionMy: 'ထပ်ခါထပ်ခါဖြစ်သော ပုံစံများကို ရှာဖွေဆက်လက်ဆောင်ရွက်ပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Red, Blue, Red, Blue, ___. What comes next?',
        questionMy: 'အနီ၊ အပြာ၊ အနီ၊ အပြာ၊ ___ ။ နောက်ထပ် ဘာလာမည်နည်း။',
        optionsEn: ['Red', 'Green', 'Yellow', 'Blue then Green'],
        optionsMy: ['အနီ', 'အစိမ်း', 'အဝါ', 'အပြာပြီးအစိမ်း'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Circle, Square, Circle, Square, ___. What comes next?',
        questionMy:
            'စက်ဝိုင်း၊ စတုရန်း၊ စက်ဝိုင်း၊ စတုရန်း၊ ___ ။ နောက်ထပ် ဘာလာမည်နည်း။',
        optionsEn: ['Circle', 'Triangle', 'Star', 'Line'],
        optionsMy: ['စက်ဝိုင်း', 'တြိဂံ', 'ကြယ်', 'မျဉ်း'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: '1, 2, 1, 2, 1, ___. What comes next?',
        questionMy: '၁၊ ၂၊ ၁၊ ၂၊ ၁၊ ___ ။ နောက်ထပ် ဘာလာမည်နည်း။',
        optionsEn: ['2', '1', '3', '4'],
        optionsMy: ['2', '1', '3', '4'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A pattern that repeats in the same order every time is called...',
        questionMy:
            'အကြိမ်တိုင်း တူညီသောအစဉ်ဖြင့် ထပ်ခါထပ်ခါဖြစ်သော ပုံစံကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'A repeating pattern',
          'A random guess',
          'A single color',
          'A blank page',
        ],
        optionsMy: [
          'ထပ်ခါထပ်ခါပုံစံ (repeating pattern)',
          'ကျပန်းခန့်မှန်းချက်',
          'အရောင်တစ်ခုတည်း',
          'အလွတ်စာမျက်နှာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Star, Star, Moon, Star, Star, ___. What comes next?',
        questionMy: 'ကြယ်၊ ကြယ်၊ လ၊ ကြယ်၊ ကြယ်၊ ___ ။ နောက်ထပ် ဘာလာမည်နည်း။',
        optionsEn: ['Moon', 'Star', 'Sun', 'Cloud'],
        optionsMy: ['လ', 'ကြယ်', 'နေ', 'တိမ်'],
        correctIndex: 0,
      ),
    ],
  ),

  // ============================== YEAR 2 ==============================
  PrimaryActivityDef(
    id: 'mock-year2-math-1',
    subject: 'math',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Numbers to 100',
    titleMy: '၁၀၀ အထိ ကိန်းဂဏန်းများ',
    descriptionEn: 'Count, read, and compare numbers up to 100.',
    descriptionMy: '၁၀၀ အထိ ကိန်းဂဏန်းများကို ရေတွက်၊ ဖတ်ပြီး နှိုင်းယှဉ်ပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What number comes after 59?',
        questionMy: '၅၉ ၏ နောက်ကိန်းမှာ အဘယ်နည်း။',
        optionsEn: ['60', '58', '61', '50'],
        optionsMy: ['60', '58', '61', '50'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which number is the largest?',
        questionMy: 'အကြီးဆုံးကိန်းကို ရွေးပါ။',
        optionsEn: ['87', '78', '68', '76'],
        optionsMy: ['87', '78', '68', '76'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How many tens are in 70?',
        questionMy: '၇၀ တွင် ဆယ်ဂဏန်းမည်မျှပါသနည်း။',
        optionsEn: ['7', '70', '17', '10'],
        optionsMy: ['7', '70', '17', '10'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which number is between 44 and 46?',
        questionMy: '၄၄ နှင့် ၄၆ ကြားရှိသောကိန်းကို ရွေးပါ။',
        optionsEn: ['45', '47', '43', '48'],
        optionsMy: ['45', '47', '43', '48'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Round 62 to the nearest ten.',
        questionMy: '၆၂ ကို အနီးဆုံးဆယ်သို့ ဂဏန်းလုံးလုံးပြုပါ။',
        optionsEn: ['60', '70', '65', '62'],
        optionsMy: ['60', '70', '65', '62'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-math-2',
    subject: 'math',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Addition & Subtraction to 100',
    titleMy: '၁၀၀ အထိ ပေါင်းနုတ်ခြင်း',
    descriptionEn: 'Add and subtract two-digit numbers within 100.',
    descriptionMy: 'ဂဏန်းနှစ်လုံးပါ ကိန်းများကို ၁၀၀ အတွင်း ပေါင်းနုတ်ပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What is 34 + 28?',
        questionMy: '၃၄ + ၂၈ ၏ ပေါင်းလဒ်ကို ရှာပါ။',
        optionsEn: ['62', '52', '72', '61'],
        optionsMy: ['62', '52', '72', '61'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 90 - 45?',
        questionMy: '၉၀ - ၄၅ ၏ နုတ်လဒ်ကို ရှာပါ။',
        optionsEn: ['45', '55', '35', '50'],
        optionsMy: ['45', '55', '35', '50'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 57 + 16?',
        questionMy: '၅၇ + ၁၆ ၏ ပေါင်းလဒ်ကို ရှာပါ။',
        optionsEn: ['73', '63', '83', '71'],
        optionsMy: ['73', '63', '83', '71'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 100 - 64?',
        questionMy: '၁၀၀ - ၆၄ ၏ နုတ်လဒ်ကို ရှာပါ။',
        optionsEn: ['36', '46', '26', '34'],
        optionsMy: ['36', '46', '26', '34'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A shop has 48 toys and sells 19. How many toys are left?',
        questionMy:
            'ဆိုင်တစ်ဆိုင်တွင် အရုပ် ၄၈ ခုရှိပြီး ၁၉ ခုရောင်းလိုက်သည်။ ဘယ်နှစ်ခုကျန်သနည်း။',
        optionsEn: ['29', '19', '39', '31'],
        optionsMy: ['29', '19', '39', '31'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-math-3',
    subject: 'math',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Multiplication Intro (2, 5, 10)',
    titleMy: 'မြှောက်ခြင်း အနက်ဖွင့်ခြင်း (၂၊ ၅၊ ၁၀)',
    descriptionEn: 'Learn the 2, 5, and 10 times tables.',
    descriptionMy: '၂၊ ၅ နှင့် ၁၀ မြှောက်ဇယားများကို လေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What is 2 x 6?',
        questionMy: '၂ x ၆ ၏ မြှောက်လဒ်ကို ရှာပါ။',
        optionsEn: ['12', '10', '14', '8'],
        optionsMy: ['12', '10', '14', '8'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 5 x 4?',
        questionMy: '၅ x ၄ ၏ မြှောက်လဒ်ကို ရှာပါ။',
        optionsEn: ['20', '15', '25', '10'],
        optionsMy: ['20', '15', '25', '10'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 10 x 7?',
        questionMy: '၁၀ x ၇ ၏ မြှောက်လဒ်ကို ရှာပါ။',
        optionsEn: ['70', '17', '60', '80'],
        optionsMy: ['70', '17', '60', '80'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If each box has 5 apples and there are 3 boxes, how many apples in total?',
        questionMy:
            'ဘူးတစ်ဘူးလျှင် ပန်းသီး ၅ လုံးစီပါပြီး ဘူး ၃ ဘူးရှိလျှင် စုစုပေါင်း ပန်းသီးမည်မျှရှိသနည်း။',
        optionsEn: ['15', '10', '20', '8'],
        optionsMy: ['15', '10', '20', '8'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 2 x 9?',
        questionMy: '၂ x ၉ ၏ မြှောက်လဒ်ကို ရှာပါ။',
        optionsEn: ['18', '16', '20', '11'],
        optionsMy: ['18', '16', '20', '11'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-english-1',
    subject: 'english',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Reading Comprehension',
    titleMy: 'ဖတ်ရှုနားလည်မှု',
    descriptionEn: 'Understand and answer questions about short passages.',
    descriptionMy: 'စာပိုဒ်တိုများကို နားလည်ပြီး မေးခွန်းများကို ဖြေဆိုပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: '"Mia ran to the shop to buy milk." What did Mia buy?',
        questionMy: '"Mia ran to the shop to buy milk." Mia သည် ဘာဝယ်သနည်း။',
        optionsEn: ['Milk', 'Bread', 'Eggs', 'Rice'],
        optionsMy: ['Milk', 'Bread', 'Eggs', 'Rice'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A story\'s main character is called the...',
        questionMy: 'ပုံပြင်၏ အဓိကဇာတ်ကောင်ကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Protagonist', 'Setting', 'Title', 'Ending'],
        optionsMy: ['ဇာတ်ဆောင်', 'နောက်ခံ', 'ခေါင်းစဉ်', 'အဆုံး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            '"The sky turned dark and it began to rain." What is happening?',
        questionMy:
            '"The sky turned dark and it began to rain." ဘာဖြစ်နေသနည်း။',
        optionsEn: [
          'A storm is coming',
          'The sun is rising',
          'It is snowing',
          'It is very hot',
        ],
        optionsMy: [
          'မုန်တိုင်းလာနေသည်',
          'နေထွက်နေသည်',
          'နှင်းကျနေသည်',
          'အလွန်ပူနေသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Where a story takes place is called the...',
        questionMy: 'ပုံပြင်ဖြစ်ပျက်ရာနေရာကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Setting', 'Character', 'Plot twist', 'Title'],
        optionsMy: [
          'နောက်ခံနေရာ (setting)',
          'ဇာတ်ကောင်',
          'ဇာတ်လမ်းလှည့်ချက်',
          'ခေါင်းစဉ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            '"Sam felt happy after winning the race." How did Sam feel?',
        questionMy:
            '"Sam felt happy after winning the race." Sam သည် မည်သို့ခံစားရသနည်း။',
        optionsEn: ['Happy', 'Sad', 'Angry', 'Scared'],
        optionsMy: ['ပျော်ရွှင်', 'ဝမ်းနည်း', 'စိတ်ဆိုး', 'ကြောက်'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-english-2',
    subject: 'english',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Nouns & Verbs',
    titleMy: 'နာမ်နှင့် ကြိယာများ',
    descriptionEn: 'Identify naming words (nouns) and action words (verbs).',
    descriptionMy:
        'နာမ်နှင့် လုပ်ဆောင်ချက်စကားလုံး (ကြိယာ) များကို ခွဲခြားသိရှိပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'Which word is a noun?',
        questionMy: 'နာမ်ဖြစ်သော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Dog', 'Run', 'Fast', 'Happily'],
        optionsMy: ['Dog', 'Run', 'Fast', 'Happily'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word is a verb?',
        questionMy: 'ကြိယာဖြစ်သော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Jump', 'Table', 'Blue', 'School'],
        optionsMy: ['Jump', 'Table', 'Blue', 'School'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'In "The boy kicks the ball," which word is the verb?',
        questionMy:
            '"The boy kicks the ball" တွင် မည်သည့်စကားလုံးသည် ကြိယာဖြစ်သနည်း။',
        optionsEn: ['Kicks', 'Boy', 'Ball', 'The'],
        optionsMy: ['Kicks', 'Boy', 'Ball', 'The'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A noun names a person, place, or...',
        questionMy: 'နာမ်သည် လူ၊ နေရာ၊ သို့မဟုတ် ဘယ်အရာကို အမည်ပေးသနည်း။',
        optionsEn: ['Thing', 'Speed', 'Feeling of speed', 'Sound only'],
        optionsMy: ['အရာဝတ္ထု', 'အလျင်', 'အလျင်ခံစားချက်', 'အသံသာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which sentence has a verb showing action?',
        questionMy: 'လုပ်ဆောင်ချက်ပြသော ကြိယာပါသည့်စာကြောင်းကို ရွေးပါ။',
        optionsEn: [
          'She sings a song.',
          'She is nice.',
          'The book is red.',
          'The cat is small.',
        ],
        optionsMy: [
          'She sings a song.',
          'She is nice.',
          'The book is red.',
          'The cat is small.',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-english-3',
    subject: 'english',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Adjectives',
    titleMy: 'နာမဝိသေသန',
    descriptionEn: 'Learn describing words that give more detail about nouns.',
    descriptionMy:
        'နာမ်များအကြောင်း ပိုမိုအသေးစိတ်ဖော်ပြပေးသော စကားလုံးများကို လေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'Which word is an adjective?',
        questionMy: 'နာမဝိသေသနဖြစ်သော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Tall', 'Run', 'Book', 'Quickly'],
        optionsMy: ['Tall', 'Run', 'Book', 'Quickly'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In "The red car is fast," which word describes the car\'s color?',
        questionMy:
            '"The red car is fast" တွင် ကားအရောင်ကို ဖော်ပြသော စကားလုံးမှာ အဘယ်နည်း။',
        optionsEn: ['Red', 'Car', 'Fast', 'The'],
        optionsMy: ['Red', 'Car', 'Fast', 'The'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word describes size?',
        questionMy: 'အရွယ်အစားကို ဖော်ပြသော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Huge', 'Sing', 'Walk', 'Kitchen'],
        optionsMy: ['Huge', 'Sing', 'Walk', 'Kitchen'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which sentence uses an adjective correctly?',
        questionMy: 'နာမဝိသေသနကို မှန်ကန်စွာသုံးသော စာကြောင်းကို ရွေးပါ။',
        optionsEn: [
          'The soft blanket is warm.',
          'The blanket softly.',
          'Soft is blanket.',
          'Blanket the soft.',
        ],
        optionsMy: [
          'The soft blanket is warm.',
          'The blanket softly.',
          'Soft is blanket.',
          'Blanket the soft.',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word describes how something tastes?',
        questionMy: 'တစ်စုံတစ်ခု၏ အရသာကို ဖော်ပြသော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Sweet', 'Table', 'Jump', 'Window'],
        optionsMy: ['Sweet', 'Table', 'Jump', 'Window'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-science-1',
    subject: 'science',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Animals & Habitats',
    titleMy: 'တိရစ္ဆာန်များနှင့် နေထိုင်ရာဒေသများ',
    descriptionEn: 'Learn where different animals live and why.',
    descriptionMy:
        'တိရစ္ဆာန်အမျိုးမျိုးနေထိုင်ရာနေရာနှင့် အကြောင်းရင်းများကို လေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'Where do fish live?',
        questionMy: 'ငါးများ မည်သည့်နေရာတွင် နေထိုင်သနည်း။',
        optionsEn: ['Water', 'Trees', 'Deserts', 'Caves'],
        optionsMy: ['ရေ', 'သစ်ပင်', 'သဲကန္တာရ', 'ဂူများ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A polar bear\'s habitat is best described as...',
        questionMy:
            'ဝက်ဝံဖြူ၏ နေထိုင်ရာဒေသကို အကောင်းဆုံးဖော်ပြရလျှင် အဘယ်နည်း။',
        optionsEn: [
          'Cold and icy',
          'Hot and dry',
          'Wet rainforest',
          'Underground',
        ],
        optionsMy: [
          'အေးမြသော ရေခဲဒေသ',
          'ပူပြင်းသောခြောက်သွေ့ဒေသ',
          'စိုစွတ်သောမိုးသစ်တောင်',
          'မြေအောက်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why do animals live in habitats suited to them?',
        questionMy:
            'အဘယ်ကြောင့် တိရစ္ဆာန်များသည် သူတို့နှင့်လိုက်ဖက်သောနေရာများတွင် နေထိုင်သနည်း။',
        optionsEn: [
          'To find food and shelter',
          'For fun only',
          'To be seen easily',
          'They cannot choose',
        ],
        optionsMy: [
          'အစားအစာနှင့် ခိုလှုံရာရှာရန်',
          'ပျော်ရွှင်ရန်သာ',
          'လွယ်ကူစွာမြင်နိုင်ရန်',
          'ရွေးချယ်၍မရပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A camel is well suited to living in the...',
        questionMy: 'ကုလားအုတ်သည် မည်သည့်ဒေသတွင် နေထိုင်ရန် သင့်တော်သနည်း။',
        optionsEn: ['Desert', 'Ocean', 'Rainforest', 'Arctic'],
        optionsMy: ['သဲကန္တာရ', 'သမုဒ္ဒရာ', 'မိုးသစ်တောင်', 'ရေခဲဒေသ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which animal lives mainly in trees?',
        questionMy:
            'အဓိကအားဖြင့် သစ်ပင်ပေါ်တွင် နေထိုင်သော တိရစ္ဆာန်ကို ရွေးပါ။',
        optionsEn: ['Monkey', 'Fish', 'Camel', 'Penguin'],
        optionsMy: ['မျောက်', 'ငါး', 'ကုလားအုတ်', 'ပင်ဂွင်း'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-science-2',
    subject: 'science',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Materials & Properties',
    titleMy: 'ပစ္စည်းများနှင့် ၎င်းတို့၏ဂုဏ်သတ္တိများ',
    descriptionEn:
        'Explore materials and describe their properties, like hard, soft, or bendy.',
    descriptionMy:
        'ပစ္စည်းများကို စူးစမ်းလေ့လာပြီး မာသော၊ နူးညံ့သော၊ ကွေးနိုင်သော စသည့်ဂုဏ်သတ္တိများကို ဖော်ပြပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'Which material is hard?',
        questionMy: 'မာသော ပစ္စည်းကို ရွေးပါ။',
        optionsEn: ['Rock', 'Cotton', 'Water', 'Cloud'],
        optionsMy: ['ကျောက်', 'ဝါဂွမ်း', 'ရေ', 'တိမ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which material can bend easily?',
        questionMy: 'အလွယ်တကူ ကွေးနိုင်သောပစ္စည်းကို ရွေးပါ။',
        optionsEn: ['Rubber band', 'Glass', 'Brick', 'Stone'],
        optionsMy: ['ရာဘာကြိုး', 'မှန်', 'အုတ်', 'ကျောက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which material is see-through (transparent)?',
        questionMy: 'ဘေးကနေမြင်နိုင်သော (ပွင့်လင်းသော) ပစ္စည်းကို ရွေးပါ။',
        optionsEn: ['Glass', 'Wood', 'Metal', 'Cloth'],
        optionsMy: ['မှန်', 'သစ်သား', 'သတ္တု', 'အထည်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which material would float best on water?',
        questionMy: 'ရေပေါ်တွင် အကောင်းဆုံးမျောနိုင်သောပစ္စည်းကို ရွေးပါ။',
        optionsEn: ['Wood', 'Iron nail', 'Stone', 'Coin'],
        optionsMy: ['သစ်သား', 'သံသံချောင်း', 'ကျောက်', 'အလင်းငွေ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Metal is a good choice for building things because it is...',
        questionMy:
            'သတ္တုသည် အဆောက်အအုံတည်ဆောက်ရန် သင့်တော်ခြင်းသည် ၎င်းသည် မည်သို့ဖြစ်သောကြောင့်နည်း။',
        optionsEn: ['Strong', 'Very soft', 'See-through', 'Edible'],
        optionsMy: [
          'ခိုင်ခံ့သောကြောင့်',
          'အလွန်နူးညံ့သောကြောင့်',
          'ပွင့်လင်းသောကြောင့်',
          'စားနိုင်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-science-3',
    subject: 'science',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Grouping Living Things',
    titleMy: 'သက်ရှိများကို အုပ်စုဖွဲ့ခြင်း',
    descriptionEn:
        'Sort living things into groups like plants, animals, and humans.',
    descriptionMy:
        'သက်ရှိများကို အပင်၊ တိရစ္ဆာန်နှင့် လူသား ကဲ့သို့ အုပ်စုများခွဲပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'Which of these is a living thing?',
        questionMy: 'အောက်ပါတို့တွင် သက်ရှိတစ်ခုကို ရွေးပါ။',
        optionsEn: ['A tree', 'A rock', 'A chair', 'A car'],
        optionsMy: ['သစ်ပင်', 'ကျောက်', 'ကုလားထိုင်', 'ကား'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'All living things need which of these to survive?',
        questionMy:
            'သက်ရှိအားလုံးသည် အသက်ရှင်ရန် အောက်ပါတို့မှ မည်သည့်အရာလိုအပ်သနည်း။',
        optionsEn: ['Food and water', 'Money', 'Toys', 'Books'],
        optionsMy: ['အစားအစာနှင့်ရေ', 'ငွေကြေး', 'အရုပ်များ', 'စာအုပ်များ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which group do humans belong to?',
        questionMy: 'လူသားများသည် မည်သည့်အုပ်စုတွင် ပါဝင်သနည်း။',
        optionsEn: ['Animals', 'Plants', 'Rocks', 'Machines'],
        optionsMy: ['တိရစ္ဆာန်', 'အပင်', 'ကျောက်', 'စက်ကိရိယာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is NOT a living thing?',
        questionMy: 'အောက်ပါတို့တွင် သက်ရှိမဟုတ်သောအရာကို ရွေးပါ။',
        optionsEn: ['A plastic toy', 'A bird', 'A fish', 'A flower'],
        optionsMy: ['ပလတ်စတစ်အရုပ်', 'ငှက်', 'ငါး', 'ပန်း'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which sign shows something is a living thing?',
        questionMy: 'သက်ရှိတစ်ခုဖြစ်ကြောင်း ပြသော လက္ခဏာမှာ အဘယ်နည်း။',
        optionsEn: [
          'It can grow',
          'It is heavy',
          'It is colorful',
          'It is expensive',
        ],
        optionsMy: [
          'ကြီးထွားနိုင်ခြင်း',
          'လေးလံခြင်း',
          'အရောင်စုံခြင်း',
          'ဈေးကြီးခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-stem-1',
    subject: 'stem',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Loops & Repeat Patterns',
    titleMy: 'ထပ်ခါလုပ်ဆောင်ခြင်းနှင့် ပုံစံများ',
    descriptionEn: 'Understand how repeating a set of steps forms a loop.',
    descriptionMy:
        'အဆင့်များကို ထပ်ခါထပ်ခါလုပ်ဆောင်ခြင်းသည် loop တစ်ခု ဖြစ်လာပုံကို နားလည်ပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What do we call repeating the same steps several times?',
        questionMy:
            'တူညီသောအဆင့်များကို အကြိမ်ကြိမ်ထပ်ခါလုပ်ဆောင်ခြင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A loop', 'A variable', 'A sensor', 'A shape'],
        optionsMy: [
          'loop (ထပ်ခါလုပ်ဆောင်ခြင်း)',
          'variable',
          'sensor',
          'ပုံသဏ္ဌာန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If a loop says "clap 3 times," how many claps happen?',
        questionMy:
            'loop တစ်ခုတွင် "၃ ကြိမ်လက်ခုပ်ပါ" ဟုဆိုလျှင် လက်ခုပ်မည်မျှဖြစ်မည်နည်း။',
        optionsEn: ['3', '2', '4', '1'],
        optionsMy: ['3', '2', '4', '1'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which everyday activity is like a loop?',
        questionMy: 'loop နှင့်ဆင်တူသော နေ့စဉ်လုပ်ငန်းကို ရွေးပါ။',
        optionsEn: [
          'Brushing each tooth one by one',
          'Eating once',
          'Waking up',
          'Getting a haircut',
        ],
        optionsMy: [
          'သွားတစ်ချောင်းချင်း တိုက်ခြင်း',
          'တစ်ကြိမ်စားခြင်း',
          'နိုးထခြင်း',
          'ဆံပင်ညှပ်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why are loops useful in instructions?',
        questionMy:
            'ညွှန်ကြားချက်များတွင် loop များအသုံးဝင်သည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          'They avoid repeating the same steps by hand',
          'They make things random',
          'They are only for games',
          'They stop all actions',
        ],
        optionsMy: [
          'အလားတူအဆင့်များကို လက်ဖြင့်ထပ်ခါရေးစရာမလိုစေရန်',
          'အရာအားလုံးကို ကျပန်းဖြစ်စေရန်',
          'ဂိမ်းများအတွက်သာ',
          'လုပ်ဆောင်ချက်အားလုံးကို ရပ်တန့်ရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If you repeat "jump" 5 times, this is an example of a...',
        questionMy:
            '"ခုန်ခြင်း" ကို ၅ ကြိမ် ထပ်ခါလုပ်ဆောင်လျှင် ၎င်းသည် မည်သည့်ဥပမာဖြစ်သနည်း။',
        optionsEn: ['Loop', 'Variable', 'Sensor', 'Question'],
        optionsMy: ['Loop', 'Variable', 'Sensor', 'မေးခွန်း'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-stem-2',
    subject: 'stem',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Basic Problem Solving',
    titleMy: 'အခြေခံပြဿနာဖြေရှင်းခြင်း',
    descriptionEn: 'Practice breaking a problem into small, manageable steps.',
    descriptionMy:
        'ပြဿနာတစ်ခုကို အသေးစိတ်၊ လွယ်ကူသောအဆင့်များအဖြစ် ခွဲခြမ်းလေ့ကျင့်ပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What is the first step in solving a problem?',
        questionMy: 'ပြဿနာတစ်ခုဖြေရှင်းရာတွင် ပထမဆုံးအဆင့်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Understand the problem',
          'Guess an answer',
          'Give up',
          'Ignore it',
        ],
        optionsMy: [
          'ပြဿနာကို နားလည်ရန်',
          'အဖြေကို ခန့်မှန်းရန်',
          'လက်လျှော့ရန်',
          'လျစ်လျူရှုရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Breaking a big problem into smaller parts is called...',
        questionMy:
            'ပြဿနာကြီးတစ်ခုကို အစိတ်အပိုင်းငယ်များအဖြစ် ခွဲခြမ်းခြင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Decomposition', 'Multiplication', 'Guessing', 'Coloring'],
        optionsMy: [
          'ပြိုကွဲအပိုင်းခွဲခြင်း (decomposition)',
          'မြှောက်ခြင်း',
          'ခန့်မှန်းခြင်း',
          'အရောင်ဆိုးခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If you cannot solve a puzzle, what is a good next step?',
        questionMy:
            'ပဟေဠိကို မဖြေရှင်းနိုင်ပါက နောက်ထပ်ကောင်းသောအဆင့်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Try a different way',
          'Throw it away',
          'Cry',
          'Never try again',
        ],
        optionsMy: [
          'အခြားနည်းလမ်းဖြင့် ကြိုးစားရန်',
          'ပစ်ချရန်',
          'ငိုရန်',
          'ဘယ်တော့မှ ထပ်မကြိုးစားရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'After trying a solution, what should you do?',
        questionMy:
            'ဖြေရှင်းနည်းတစ်ခုကို စမ်းသပ်ပြီးနောက် အဘယ်အရာ လုပ်သင့်သနည်း။',
        optionsEn: [
          'Check if it worked',
          'Forget about it',
          'Start a new problem',
          'Stop thinking',
        ],
        optionsMy: [
          'အလုပ်ဖြစ်မဖြစ် စစ်ဆေးရန်',
          'မေ့ပစ်ရန်',
          'ပြဿနာသစ်စတင်ရန်',
          'စဉ်းစားရပ်ရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Working with a friend to solve a problem is called...',
        questionMy:
            'သူငယ်ချင်းနှင့်အတူ ပြဿနာဖြေရှင်းခြင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Teamwork', 'Giving up', 'Ignoring', 'Guessing alone'],
        optionsMy: [
          'အဖွဲ့လိုက်ပူးပေါင်းဆောင်ရွက်ခြင်း',
          'လက်လျှော့ခြင်း',
          'လျစ်လျူရှုခြင်း',
          'တစ်ကိုယ်တည်းခန့်မှန်းခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-stem-3',
    subject: 'stem',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Pattern Sequences',
    titleMy: 'ပုံစံအစဉ်များ',
    descriptionEn: 'Find and extend more complex number and shape patterns.',
    descriptionMy:
        'ပိုမိုရှုပ်ထွေးသော ဂဏန်းနှင့် ပုံသဏ္ဌာန်ပုံစံများကို ရှာဖွေဆက်လက်ဖော်ပြပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: '2, 4, 6, 8, ___. What comes next?',
        questionMy: '၂၊ ၄၊ ၆၊ ၈၊ ___ ။ နောက်ထပ် ဘာလာမည်နည်း။',
        optionsEn: ['10', '9', '12', '11'],
        optionsMy: ['10', '9', '12', '11'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: '5, 10, 15, 20, ___. What comes next?',
        questionMy: '၅၊ ၁၀၊ ၁၅၊ ၂၀၊ ___ ။ နောက်ထပ် ဘာလာမည်နည်း။',
        optionsEn: ['25', '22', '30', '24'],
        optionsMy: ['25', '22', '30', '24'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Triangle, Square, Triangle, Square, ___. What comes next?',
        questionMy:
            'တြိဂံ၊ စတုရန်း၊ တြိဂံ၊ စတုရန်း၊ ___ ။ နောက်ထပ် ဘာလာမည်နည်း။',
        optionsEn: ['Triangle', 'Circle', 'Star', 'Line'],
        optionsMy: ['တြိဂံ', 'စက်ဝိုင်း', 'ကြယ်', 'မျဉ်း'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: '10, 9, 8, 7, ___. What comes next?',
        questionMy: '၁၀၊ ၉၊ ၈၊ ၇၊ ___ ။ နောက်ထပ် ဘာလာမည်နည်း။',
        optionsEn: ['6', '5', '8', '7'],
        optionsMy: ['6', '5', '8', '7'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A pattern that counts up by the same amount each time is called a...',
        questionMy:
            'တစ်ကြိမ်ချင်းစီတွင် တူညီသောပမာဏဖြင့် တိုးလာသောပုံစံကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'Number pattern',
          'Random guess',
          'Blank list',
          'Color chart',
        ],
        optionsMy: [
          'ဂဏန်းပုံစံ (number pattern)',
          'ကျပန်းခန့်မှန်းချက်',
          'အလွတ်စာရင်း',
          'အရောင်ဇယား',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ============================== YEAR 3 ==============================
  PrimaryActivityDef(
    id: 'mock-year3-math-1',
    subject: 'math',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Times Tables to 10',
    titleMy: '၁၀ အထိ မြှောက်ဇယားများ',
    descriptionEn: 'Practice multiplication facts for tables 1 through 10.',
    descriptionMy: '၁ မှ ၁၀ အထိ မြှောက်ဇယားများကို လေ့ကျင့်ပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'What is 7 x 8?',
        questionMy: '၇ x ၈ ၏ မြှောက်လဒ်ကို ရှာပါ။',
        optionsEn: ['56', '54', '64', '48'],
        optionsMy: ['56', '54', '64', '48'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 9 x 9?',
        questionMy: '၉ x ၉ ၏ မြှောက်လဒ်ကို ရှာပါ။',
        optionsEn: ['81', '72', '90', '89'],
        optionsMy: ['81', '72', '90', '89'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 6 x 7?',
        questionMy: '၆ x ၇ ၏ မြှောက်လဒ်ကို ရှာပါ။',
        optionsEn: ['42', '36', '48', '40'],
        optionsMy: ['42', '36', '48', '40'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 3 x 10?',
        questionMy: '၃ x ၁၀ ၏ မြှောက်လဒ်ကို ရှာပါ။',
        optionsEn: ['30', '13', '33', '20'],
        optionsMy: ['30', '13', '33', '20'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'There are 8 rows of chairs with 4 chairs in each row. How many chairs in total?',
        questionMy:
            'ကုလားထိုင်တန်း ၈ တန်းရှိပြီး တန်းတစ်တန်းလျှင် ကုလားထိုင် ၄ လုံးစီရှိသည်။ စုစုပေါင်း ကုလားထိုင်မည်မျှရှိသနည်း။',
        optionsEn: ['32', '28', '36', '24'],
        optionsMy: ['32', '28', '36', '24'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-math-2',
    subject: 'math',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Introducing Fractions',
    titleMy: 'အပိုင်းကိန်း အနက်ဖွင့်ခြင်း',
    descriptionEn:
        'Understand simple fractions like halves, thirds, and quarters.',
    descriptionMy:
        'ထက်ဝက်၊ သုံးပုံတစ်ပုံနှင့် လေးပုံတစ်ပုံကဲ့သို့ ရိုးရှင်းသောအပိုင်းကိန်းများကို နားလည်ပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'Which fraction shows one quarter?',
        questionMy: 'လေးပုံတစ်ပုံကို ပြသည့် အပိုင်းကိန်းကို ရွေးပါ။',
        optionsEn: ['1/4', '1/2', '1/3', '3/4'],
        optionsMy: ['1/4', '1/2', '1/3', '3/4'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A cake is cut into 3 equal parts. What is each part called?',
        questionMy:
            'ကိတ်တစ်ခုကို အညီအမျှ ၃ ပိုင်း ဖြတ်ထားသည်။ တစ်ပိုင်းစီကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['One third', 'One half', 'One quarter', 'One whole'],
        optionsMy: ['သုံးပုံတစ်ပုံ', 'ထက်ဝက်', 'လေးပုံတစ်ပုံ', 'တစ်ခုလုံး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which fraction is bigger, 1/3 or 1/4?',
        questionMy: '1/3 နှင့် 1/4 တွင် အကြီးဆုံးမှာ အဘယ်နည်း။',
        optionsEn: ['1/3', '1/4', 'They are equal', 'Cannot tell'],
        optionsMy: ['1/3', '1/4', 'တူညီသည်', 'မသိနိုင်ပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 2/4 the same as?',
        questionMy: '2/4 သည် မည်သည်နှင့် တူညီသနည်း။',
        optionsEn: ['1/2', '1/4', '3/4', '2/2'],
        optionsMy: ['1/2', '1/4', '3/4', '2/2'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If you eat 1 slice out of 4 equal slices of pizza, what fraction did you eat?',
        questionMy:
            'ပီဇာအညီအမျှ ၄ ချပ်ထဲမှ ၁ ချပ်စားလျှင် မည်မျှစားခဲ့သည်ကို အပိုင်းကိန်းဖြင့်ဖော်ပြပါ။',
        optionsEn: ['1/4', '4/1', '1/3', '2/4'],
        optionsMy: ['1/4', '4/1', '1/3', '2/4'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-math-3',
    subject: 'math',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Measuring Length & Mass',
    titleMy: 'အလျားနှင့် အလေးချိန် တိုင်းတာခြင်း',
    descriptionEn:
        'Learn to measure and compare length and mass using standard units.',
    descriptionMy:
        'စံညွှန်းယူနစ်များသုံး၍ အလျားနှင့် အလေးချိန်ကို တိုင်းတာနှိုင်းယှဉ်ပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'Which unit is used to measure length?',
        questionMy: 'အလျားတိုင်းတာရန် အသုံးပြုသောယူနစ်ကို ရွေးပါ။',
        optionsEn: ['Centimeter', 'Kilogram', 'Liter', 'Second'],
        optionsMy: ['စင်တီမီတာ', 'ကီလိုဂရမ်', 'လီတာ', 'စက္ကန့်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which unit is used to measure mass (weight)?',
        questionMy: 'အလေးချိန် တိုင်းတာရန် အသုံးပြုသောယူနစ်ကို ရွေးပါ။',
        optionsEn: ['Kilogram', 'Meter', 'Liter', 'Minute'],
        optionsMy: ['ကီလိုဂရမ်', 'မီတာ', 'လီတာ', 'မိနစ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How many centimeters are in 1 meter?',
        questionMy: '၁ မီတာတွင် စင်တီမီတာ မည်မျှရှိသနည်း။',
        optionsEn: ['100', '10', '1000', '50'],
        optionsMy: ['100', '10', '1000', '50'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which is heavier: 2 kg or 500 g?',
        questionMy: '၂ ကီလိုဂရမ် နှင့် ၅၀၀ ဂရမ်တွင် ပိုလေးသည်မှာ အဘယ်နည်း။',
        optionsEn: ['2 kg', '500 g', 'They are equal', 'Cannot tell'],
        optionsMy: ['2 kg', '500 g', 'တူညီသည်', 'မသိနိုင်ပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A pencil is about how long?',
        questionMy: 'ခဲတံတစ်ချောင်းသည် ခန့်မှန်းအားဖြင့် မည်မျှအလျားရှိသနည်း။',
        optionsEn: ['18 centimeters', '18 meters', '18 kilograms', '18 liters'],
        optionsMy: ['စင်တီမီတာ ၁၈', 'မီတာ ၁၈', 'ကီလိုဂရမ် ၁၈', 'လီတာ ၁၈'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-english-1',
    subject: 'english',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Grammar & Tenses',
    titleMy: 'သဒ္ဒါနှင့် ကာလများ',
    descriptionEn: 'Practice past, present, and future tense sentences.',
    descriptionMy:
        'အတိတ်ကာလ၊ ပစ္စုပ္ပန်ကာလနှင့် အနာဂတ်ကာလ စာကြောင်းများကို လေ့ကျင့်ပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'Which sentence is in the past tense?',
        questionMy: 'အတိတ်ကာလဖြင့် ရေးထားသော စာကြောင်းကို ရွေးပါ။',
        optionsEn: [
          'She walked to school.',
          'She walks to school.',
          'She will walk to school.',
          'She is walking.',
        ],
        optionsMy: [
          'She walked to school.',
          'She walks to school.',
          'She will walk to school.',
          'She is walking.',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word completes: "Tomorrow, I ___ visit my grandma."',
        questionMy:
            'အောက်ပါစာကြောင်းကို ဖြည့်ပါ- "Tomorrow, I ___ visit my grandma."',
        optionsEn: ['will', 'walked', 'went', 'was'],
        optionsMy: ['will', 'walked', 'went', 'was'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which sentence is in the present tense?',
        questionMy: 'ပစ္စုပ္ပန်ကာလဖြင့် ရေးထားသော စာကြောင်းကို ရွေးပါ။',
        optionsEn: [
          'He plays football every day.',
          'He played football yesterday.',
          'He will play football.',
          'He has played football.',
        ],
        optionsMy: [
          'He plays football every day.',
          'He played football yesterday.',
          'He will play football.',
          'He has played football.',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the past tense of "go"?',
        questionMy: '"go" ၏ အတိတ်ကာလပုံစံမှာ အဘယ်နည်း။',
        optionsEn: ['Went', 'Goed', 'Going', 'Goes'],
        optionsMy: ['Went', 'Goed', 'Going', 'Goes'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word shows an action happening right now?',
        questionMy:
            'ယခုလက်ရှိဖြစ်ပျက်နေသော လုပ်ဆောင်ချက်ကို ပြသောစကားလုံးကို ရွေးပါ။',
        optionsEn: ['Running', 'Ran', 'Will run', 'Runs tomorrow'],
        optionsMy: ['Running', 'Ran', 'Will run', 'Runs tomorrow'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-english-2',
    subject: 'english',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Vocabulary Building',
    titleMy: 'ဝေါဟာရတည်ဆောက်ခြင်း',
    descriptionEn: 'Expand vocabulary through synonyms and word meanings.',
    descriptionMy:
        'ကြားနေသောစကားလုံးနှင့် အဓိပ္ပာယ်များမှတစ်ဆင့် ဝေါဟာရကို တိုးချဲ့ပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'Which word means the same as "enormous"?',
        questionMy: '"enormous" နှင့် အဓိပ္ပာယ်တူသော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Huge', 'Tiny', 'Quiet', 'Slow'],
        optionsMy: ['Huge', 'Tiny', 'Quiet', 'Slow'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does "brave" mean?',
        questionMy: '"brave" ဆိုသည်မှာ အဘယ်အဓိပ္ပာယ်ရှိသနည်း။',
        optionsEn: ['Not afraid', 'Very tired', 'Very hungry', 'Very small'],
        optionsMy: [
          'မကြောက်ခြင်း',
          'အလွန်ပင်ပန်းခြင်း',
          'အလွန်ဆာလောင်ခြင်း',
          'အလွန်သေးငယ်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word means the same as "assist"?',
        questionMy: '"assist" နှင့် အဓိပ္ပာယ်တူသော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Help', 'Hide', 'Hurt', 'Hunt'],
        optionsMy: ['Help', 'Hide', 'Hurt', 'Hunt'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does "ancient" mean?',
        questionMy: '"ancient" ဆိုသည်မှာ အဘယ်အဓိပ္ပာယ်ရှိသနည်း။',
        optionsEn: ['Very old', 'Very new', 'Very fast', 'Very colorful'],
        optionsMy: [
          'အလွန်ဟောင်းနွမ်း',
          'အလွန်သစ်လွင်',
          'အလွန်မြန်ဆန်',
          'အလွန်အရောင်စုံ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word means the same as "begin"?',
        questionMy: '"begin" နှင့် အဓိပ္ပာယ်တူသော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Start', 'Stop', 'Finish', 'Rest'],
        optionsMy: ['Start', 'Stop', 'Finish', 'Rest'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-english-3',
    subject: 'english',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Sentence Structure',
    titleMy: 'စာကြောင်းဖွဲ့စည်းပုံ',
    descriptionEn:
        'Learn how subjects, verbs, and objects combine to form sentences.',
    descriptionMy:
        'ဘာသာရပ်၊ ကြိယာနှင့် ကံတို့ ပေါင်းစပ်၍ စာကြောင်းဖွဲ့ပုံကို လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'In "Maria reads books," which word is the object?',
        questionMy: '"Maria reads books" တွင် ကံစကားလုံးမှာ အဘယ်နည်း။',
        optionsEn: ['Books', 'Maria', 'Reads', 'None'],
        optionsMy: ['Books', 'Maria', 'Reads', 'None'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a correctly ordered sentence?',
        questionMy: 'မှန်ကန်စွာအစဉ်လိုက်ရေးထားသော စာကြောင်းကို ရွေးပါ။',
        optionsEn: [
          'The dog chased the ball.',
          'Chased dog the ball the.',
          'Ball the dog chased the.',
          'The chased dog ball.',
        ],
        optionsMy: [
          'The dog chased the ball.',
          'Chased dog the ball the.',
          'Ball the dog chased the.',
          'The chased dog ball.',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A sentence must always have a subject and a...',
        questionMy:
            'စာကြောင်းတိုင်းတွင် ဘာသာရပ်နှင့်အတူ မည်သည့်အရာလိုအပ်သနည်း။',
        optionsEn: ['Verb', 'Color', 'Number', 'Emoji'],
        optionsMy: ['ကြိယာ', 'အရောင်', 'ဂဏန်း', 'အီမိုဂျီ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Two sentences can be joined using a...',
        questionMy:
            'စာကြောင်းနှစ်ကြောင်းကို ချိတ်ဆက်ရန် မည်သည့်အရာသုံးနိုင်သနည်း။',
        optionsEn: [
          'Conjunction (like "and")',
          'A number',
          'A color word',
          'A silent pause',
        ],
        optionsMy: [
          'ချိတ်ဆက်ဆက်စပ်ကြောင်း (conjunction, ဥပမာ "and")',
          'ဂဏန်း',
          'အရောင်စကားလုံး',
          'တိတ်ဆိတ်စွာရပ်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which is the subject in "The little girl sings sweetly"?',
        questionMy:
            '"The little girl sings sweetly" တွင် ဘာသာရပ်စကားလုံးမှာ အဘယ်နည်း။',
        optionsEn: ['The little girl', 'Sings', 'Sweetly', 'None'],
        optionsMy: ['The little girl', 'Sings', 'Sweetly', 'None'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-science-1',
    subject: 'science',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Forces & Magnets',
    titleMy: 'အားများနှင့် သံလိုက်များ',
    descriptionEn: 'Explore pushes, pulls, and how magnets attract or repel.',
    descriptionMy:
        'တွန်းအားများ၊ ဆွဲအားများနှင့် သံလိုက်များ ဆွဲ/တွန်းပုံကို စူးစမ်းလေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'What do we call a push or a pull on an object?',
        questionMy:
            'အရာဝတ္ထုတစ်ခုအပေါ် တွန်းအား သို့မဟုတ် ဆွဲအားကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A force', 'A shape', 'A color', 'A sound'],
        optionsMy: ['အား (force)', 'ပုံသဏ္ဌာန်', 'အရောင်', 'အသံ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What happens when two magnets have opposite poles facing each other?',
        questionMy:
            'သံလိုက်နှစ်ခု၏ ဆန့်ကျင်ဘက်ပိုလ်များ မျက်နှာချင်းဆိုင်နေလျှင် ဘာဖြစ်မည်နည်း။',
        optionsEn: [
          'They attract (pull together)',
          'They repel (push apart)',
          'Nothing happens',
          'They break',
        ],
        optionsMy: [
          'ဆွဲငင်ကြသည် (attract)',
          'တွန်းထုတ်ကြသည် (repel)',
          'ဘာမျှမဖြစ်ပါ',
          'ကျိုးသွားသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these materials is attracted to a magnet?',
        questionMy:
            'အောက်ပါပစ္စည်းများတွင် သံလိုက်ကဆွဲငင်နိုင်သော ပစ္စည်းကို ရွေးပါ။',
        optionsEn: ['Iron nail', 'Plastic spoon', 'Wooden block', 'Paper'],
        optionsMy: ['သံသံချောင်း', 'ပလတ်စတစ်ဇွန်း', 'သစ်သားတုံး', 'စက္ကူ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What force pulls objects down toward the Earth?',
        questionMy:
            'အရာဝတ္ထုများကို ကမ္ဘာဆီသို့ ဆွဲငင်သောအားကို အဘယ်ဟုခေါ်သနည်း။',
        optionsEn: ['Gravity', 'Magnetism', 'Friction', 'Light'],
        optionsMy: [
          'ဆွဲငင်အား (gravity)',
          'သံလိုက်အား',
          'ပွတ်တိုက်အား',
          'အလင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Rubbing your hands together makes them warm because of...',
        questionMy:
            'လက်နှစ်ဖက်ကိုပွတ်လျှင် နွေးလာသည်မှာ မည်သည့်အားကြောင့်နည်း။',
        optionsEn: ['Friction', 'Gravity', 'Magnetism', 'Sound'],
        optionsMy: [
          'ပွတ်တိုက်အား (friction)',
          'ဆွဲငင်အား',
          'သံလိုက်အား',
          'အသံ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-science-2',
    subject: 'science',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'States of Matter',
    titleMy: 'ရုပ်ဝတ္ထု၏အခြေအနေများ',
    descriptionEn: 'Learn about solids, liquids, and gases.',
    descriptionMy: 'အခဲ၊ အရည်နှင့် ဓာတ်ငွေ့များအကြောင်း လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'Which state of matter has a fixed shape?',
        questionMy: 'ပုံသေပုံသဏ္ဌာန်ရှိသော ရုပ်ဝတ္ထုအခြေအနေကို ရွေးပါ။',
        optionsEn: ['Solid', 'Liquid', 'Gas', 'None of these'],
        optionsMy: ['အခဲ', 'အရည်', 'ဓာတ်ငွေ့', 'ဘယ်ဟာမှမဟုတ်ပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What happens when ice is heated?',
        questionMy: 'ရေခဲကို ပူအောင်ပေးလျှင် ဘာဖြစ်လာသနည်း။',
        optionsEn: [
          'It melts into water',
          'It becomes a gas immediately',
          'It turns into stone',
          'Nothing changes',
        ],
        optionsMy: [
          'အရည်ဖြစ်၍ရေဖြစ်လာသည်',
          'ချက်ချင်းဓာတ်ငွေ့ဖြစ်သွားသည်',
          'ကျောက်ဖြစ်သွားသည်',
          'ဘာမျှမပြောင်းလဲပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a gas?',
        questionMy: 'အောက်ပါတို့တွင် ဓာတ်ငွေ့ကို ရွေးပါ။',
        optionsEn: ['Air', 'Ice', 'Wood', 'Sand'],
        optionsMy: ['လေ', 'ရေခဲ', 'သစ်သား', 'သဲ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A liquid takes the shape of its...',
        questionMy: 'အရည်တစ်ခုသည် မည်သည့်အရာ၏ ပုံသဏ္ဌာန်ကို ယူသနည်း။',
        optionsEn: ['Container', 'Color', 'Smell', 'Weight'],
        optionsMy: ['ထည့်ထားသောခွက်', 'အရောင်', 'အနံ့', 'အလေးချိန်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'When water boils, it turns into...',
        questionMy: 'ရေဆူသောအခါ ၎င်းသည် မည်သည့်အခြေအနေသို့ ပြောင်းလဲသွားသနည်း။',
        optionsEn: ['Steam (a gas)', 'Ice (a solid)', 'Sand', 'Stone'],
        optionsMy: ['ရေငွေ့ (ဓာတ်ငွေ့)', 'ရေခဲ (အခဲ)', 'သဲ', 'ကျောက်'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-science-3',
    subject: 'science',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Life Cycles',
    titleMy: 'သက်တမ်းလည့်ပတ်မှုများ',
    descriptionEn:
        'Learn how living things grow and change through life cycles.',
    descriptionMy:
        'သက်ရှိများ သက်တမ်းလည့်ပတ်မှုမှတစ်ဆင့် ကြီးထွားပြောင်းလဲပုံကို လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'What comes first in a butterfly\'s life cycle?',
        questionMy: 'လိပ်ပြာ၏ သက်တမ်းလည့်ပတ်မှုတွင် ဘာအရင်လာသနည်း။',
        optionsEn: ['Egg', 'Butterfly', 'Chrysalis', 'Caterpillar'],
        optionsMy: ['ဥ', 'လိပ်ပြာ', 'ခွံပိုးလိပ်', 'ပိုးကောင်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What does a caterpillar turn into before becoming a butterfly?',
        questionMy: 'ပိုးကောင်သည် လိပ်ပြာမဖြစ်မီ အဘယ်အရာအဖြစ်ပြောင်းလဲသနည်း။',
        optionsEn: ['A chrysalis', 'An egg', 'A frog', 'A seed'],
        optionsMy: ['ခွံပိုးလိပ်', 'ဥ', 'ဖား', 'မျိုးစေ့'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does a plant\'s life cycle begin with?',
        questionMy: 'အပင်၏ သက်တမ်းလည့်ပတ်မှုသည် အဘယ်အရာဖြင့် စတင်သနည်း။',
        optionsEn: ['A seed', 'A flower', 'A leaf', 'Roots only'],
        optionsMy: ['မျိုးစေ့', 'ပန်း', 'အရွက်', 'အမြစ်သာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A frog starts life as a...',
        questionMy: 'ဖားတစ်ကောင်သည် အသက်ရှင်စတင်ချိန်တွင် အဘယ်အရာဖြစ်သနည်း။',
        optionsEn: ['Tadpole', 'Adult frog', 'Fish', 'Bird'],
        optionsMy: ['ဖားလောက်ကောင်', 'အရွယ်ရောက်ဖား', 'ငါး', 'ငှက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which stage comes right after "egg" in a chicken\'s life cycle?',
        questionMy:
            'ကြက်၏သက်တမ်းလည့်ပတ်မှုတွင် "ဥ" ပြီးနောက် မည်သည့်အဆင့်လာသနည်း။',
        optionsEn: ['Chick', 'Adult hen', 'Egg again', 'Feather'],
        optionsMy: ['ကြက်ကလေး', 'အရွယ်ရောက်ကြက်မ', 'ဥပြန်', 'တောက်လျှပ်'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-stem-1',
    subject: 'stem',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'If/Then Logic',
    titleMy: 'အကယ်၍/ဆိုလျှင် ယုတ္တိဗေဒ',
    descriptionEn: 'Understand conditional "if this, then that" thinking.',
    descriptionMy:
        '"ဒါဖြစ်ရင် ဒါလုပ်" ဟူသော အခြေအနေအလိုက် စဉ်းစားခြင်းကို နားလည်ပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'If it rains, then you should bring a(n)...',
        questionMy: 'မိုးရွာလျှင် သင်ဘာယူသင့်သနည်း။',
        optionsEn: ['Umbrella', 'Sunglasses', 'Swimsuit', 'Kite'],
        optionsMy: ['ထီး', 'နေကာမျက်မှန်', 'ရေကူးဝတ်စုံ', 'လေယာဉ်ပုံစံငယ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A rule like "IF hungry, THEN eat" is called a...',
        questionMy: '"ဆာလျှင် စားပါ" ကဲ့သို့သော စည်းမျဉ်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Conditional statement', 'A song', 'A color', 'A shape'],
        optionsMy: [
          'အခြေအနေအလိုက်ဆုံးဖြတ်ချက် (conditional statement)',
          'သီချင်း',
          'အရောင်',
          'ပုံသဏ္ဌာန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'IF the light is red, THEN you should...',
        questionMy: 'မီးပွိုင့်အနီရောင်ဖြစ်လျှင် သင်ဘာလုပ်သင့်သနည်း။',
        optionsEn: ['Stop', 'Go fast', 'Sing', 'Sleep'],
        optionsMy: ['ရပ်ပါ', 'အမြန်သွားပါ', 'သီချင်းဆိုပါ', 'အိပ်ပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'IF a battery is empty, THEN a toy will...',
        questionMy: 'ဘက်ထရီအားကုန်လျှင် အရုပ်သည် ဘာဖြစ်မည်နည်း။',
        optionsEn: [
          'Stop working',
          'Work faster',
          'Change color',
          'Grow bigger',
        ],
        optionsMy: [
          'အလုပ်လုပ်ရပ်သွားမည်',
          'ပိုမြန်အလုပ်လုပ်မည်',
          'အရောင်ပြောင်းမည်',
          'ပိုကြီးလာမည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Conditional logic helps a program decide what to do based on...',
        questionMy:
            'Conditional logic သည် ပရိုဂရမ်တစ်ခုအား မည်သည့်အခြေခံမှ ဆုံးဖြတ်ရန်ကူညီသနည်း။',
        optionsEn: [
          'A condition being true or false',
          'Random luck',
          'The color of the screen',
          'The time of day only',
        ],
        optionsMy: [
          'အခြေအနေတစ်ခု မှန်/မှား ဖြစ်ခြင်း',
          'ကံစမ်းခြင်း',
          'ဖန်သားပြင်အရောင်',
          'နေ့အချိန်သာ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-stem-2',
    subject: 'stem',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Debugging Sequences',
    titleMy: 'အစီအစဉ်များ အမှားရှာခြင်း',
    descriptionEn: 'Find and fix mistakes in a sequence of steps.',
    descriptionMy: 'အဆင့်ဆင့်အစီအစဉ်များထဲရှိ အမှားများကို ရှာဖွေပြင်ဆင်ပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'What do we call an error in a set of instructions?',
        questionMy: 'ညွှန်ကြားချက်များထဲရှိ အမှားကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A bug', 'A feature', 'A color', 'A prize'],
        optionsMy: ['bug (အမှား)', 'feature', 'အရောင်', 'ဆုလာဘ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Finding and fixing a mistake in steps is called...',
        questionMy:
            'အဆင့်များထဲရှိအမှားကို ရှာဖွေပြင်ဆင်ခြင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Debugging', 'Coloring', 'Guessing', 'Singing'],
        optionsMy: [
          'debugging (အမှားပြင်ခြင်း)',
          'အရောင်ဆိုးခြင်း',
          'ခန့်မှန်းခြင်း',
          'သီချင်းဆိုခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Steps are: "Put on socks, put on shoes, put on socks again." What is wrong?',
        questionMy:
            'အဆင့်များမှာ - "ခြေအိတ်ဝတ်ပါ၊ ဖိနပ်ဝတ်ပါ၊ ခြေအိတ်နောက်တစ်ကြိမ်ဝတ်ပါ" ။ ဘာမှားနေသနည်း။',
        optionsEn: [
          'Socks is repeated after shoes',
          'Nothing is wrong',
          'Shoes come first',
          'It is perfect',
        ],
        optionsMy: [
          'ဖိနပ်ဝတ်ပြီးမှ ခြေအိတ်ကို ထပ်ဝတ်ခိုင်းနေသည်',
          'ဘာမှမှားမနေပါ',
          'ဖိနပ်ကအရင်ရောက်နေသည်',
          'ပြီးပြည့်စုံနေသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why should you test each step of instructions?',
        questionMy:
            'ညွှန်ကြားချက်များ၏ အဆင့်တစ်ခုစီကို အဘယ်ကြောင့် စစ်ဆေးသင့်သနည်း။',
        optionsEn: [
          'To catch mistakes early',
          'It wastes time',
          'It is not necessary',
          'To make it longer',
        ],
        optionsMy: [
          'အမှားများကို စောစီးစွာတွေ့ရှိရန်',
          'အချိန်ဖြုန်းသောကြောင့်',
          'မလိုအပ်ပါ',
          'ရှည်စေရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A recipe says "add sugar" but forgets to say how much. This is an example of...',
        questionMy:
            'ချက်ပြုတ်နည်းတွင် "သကြားထည့်ပါ" ဟုဆိုသော်လည်း မည်မျှထည့်ရမည်မေ့ထားသည်။ ၎င်းသည် မည်သည့်ဥပမာဖြစ်သနည်း။',
        optionsEn: [
          'A missing step',
          'A perfect instruction',
          'Too much detail',
          'A funny joke',
        ],
        optionsMy: [
          'ချို့ယွင်းနေသောအဆင့် (missing step)',
          'ပြီးပြည့်စုံသောညွှန်ကြားချက်',
          'အသေးစိတ်လွန်းခြင်း',
          'ဟာသတစ်ခု',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-stem-3',
    subject: 'stem',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Logical Thinking',
    titleMy: 'ယုတ္တိဗေဒဆိုင်ရာ စဉ်းစားခြင်း',
    descriptionEn:
        'Practice reasoning through simple true/false and cause-effect puzzles.',
    descriptionMy:
        'ရိုးရှင်းသော မှန်/မှား နှင့် အကြောင်း-အကျိုး ပဟေဠိများဖြင့် ကျိုးကြောင်းဆက်စဉ်းစားခြင်းကို လေ့ကျင့်ပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn:
            'If all birds can fly and a sparrow is a bird, can a sparrow fly?',
        questionMy:
            'ငှက်အားလုံးပျံနိုင်ပြီး စာငှက်သည် ငှက်တစ်မျိုးဖြစ်ပါက စာငှက်ပျံနိုင်မလား။',
        optionsEn: ['Yes', 'No', 'Cannot tell', 'Only at night'],
        optionsMy: ['ဟုတ်ကဲ့', 'မဟုတ်ပါ', 'မသိနိုင်ပါ', 'ညနေခင်းသာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If the ground is wet, what most likely happened?',
        questionMy: 'မြေပြင်စိုနေလျှင် အဘယ်အရာဖြစ်ခဲ့နိုင်ဆုံးနည်း။',
        optionsEn: [
          'It rained',
          'It was sunny all day',
          'It snowed only',
          'Nothing happened',
        ],
        optionsMy: [
          'မိုးရွာခဲ့သည်',
          'တစ်နေ့လုံးနေသာနေသည်',
          'နှင်းကျရုံသာ',
          'ဘာမျှမဖြစ်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which statement is TRUE?',
        questionMy: 'မှန်ကန်သောစာကြောင်းကို ရွေးပါ။',
        optionsEn: [
          'A week has 7 days.',
          'A week has 5 days.',
          'A week has 10 days.',
          'A week has 3 days.',
        ],
        optionsMy: [
          'A week has 7 days.',
          'A week has 5 days.',
          'A week has 10 days.',
          'A week has 3 days.',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If you drop a glass on a hard floor, what will most likely happen?',
        questionMy:
            'မှန်ခွက်တစ်ခုကို ခိုင်မာသောကြမ်းပြင်ပေါ် ချလိုက်လျှင် အဘယ်အရာဖြစ်ဖွယ်ရှိသနည်း။',
        optionsEn: [
          'It will break',
          'It will bounce',
          'It will float',
          'Nothing happens',
        ],
        optionsMy: [
          'ကျိုးသွားလိမ့်မည်',
          'ခုန်တက်လိမ့်မည်',
          'မျောနေလိမ့်မည်',
          'ဘာမျှမဖြစ်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which comes next in logic: cause always comes before...',
        questionMy:
            'ယုတ္တိအရ- အကြောင်းသည် အမြဲတမ်း မည်သည့်အရာမတိုင်မီ လာသနည်း။',
        optionsEn: ['Effect', 'Color', 'Sound', 'Nothing'],
        optionsMy: ['အကျိုးဆက် (effect)', 'အရောင်', 'အသံ', 'ဘာမျှ'],
        correctIndex: 0,
      ),
    ],
  ),

  // ============================== YEAR 4 ==============================
  PrimaryActivityDef(
    id: 'mock-year4-math-1',
    subject: 'math',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Four Operations',
    titleMy: 'အခြေခံလုပ်ဆောင်ချက် လေးမျိုး',
    descriptionEn:
        'Practice addition, subtraction, multiplication, and division with larger numbers.',
    descriptionMy:
        'ကိန်းကြီးများဖြင့် ပေါင်း၊ နုတ်၊ မြှောက်၊ စား လုပ်ဆောင်ချက်များကို လေ့ကျင့်ပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is 246 + 178?',
        questionMy: '၂၄၆ + ၁၇၈ ၏ ပေါင်းလဒ်ကို ရှာပါ။',
        optionsEn: ['424', '414', '434', '404'],
        optionsMy: ['424', '414', '434', '404'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 500 - 236?',
        questionMy: '၅၀၀ - ၂၃၆ ၏ နုတ်လဒ်ကို ရှာပါ။',
        optionsEn: ['264', '274', '254', '284'],
        optionsMy: ['264', '274', '254', '284'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 24 x 3?',
        questionMy: '၂၄ x ၃ ၏ မြှောက်လဒ်ကို ရှာပါ။',
        optionsEn: ['72', '68', '82', '64'],
        optionsMy: ['72', '68', '82', '64'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 84 divided by 7?',
        questionMy: '၈၄ ကို ၇ ဖြင့်စားလျှင် ရလဒ်မှာ အဘယ်နည်း။',
        optionsEn: ['12', '14', '11', '10'],
        optionsMy: ['12', '14', '11', '10'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A school has 120 students split evenly into 4 classes. How many students per class?',
        questionMy:
            'ကျောင်းတစ်ကျောင်းတွင် ကျောင်းသား ၁၂၀ ကို အတန်း ၄ တန်းသို့ တူညီစွာခွဲထားသည်။ အတန်းတစ်တန်းလျှင် ကျောင်းသား ဘယ်နှစ်ယောက်ရှိသနည်း။',
        optionsEn: ['30', '25', '35', '40'],
        optionsMy: ['30', '25', '35', '40'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-math-2',
    subject: 'math',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Fractions & Decimals',
    titleMy: 'အပိုင်းကိန်းများနှင့် ဒဿမကိန်းများ',
    descriptionEn: 'Introduce simple decimals and connect them to fractions.',
    descriptionMy:
        'ရိုးရှင်းသောဒဿမကိန်းများကို မိတ်ဆက်ပြီး အပိုင်းကိန်းများနှင့် ဆက်စပ်ပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is 1/2 as a decimal?',
        questionMy: '1/2 ကို ဒဿမကိန်းအနေနှင့် ဖော်ပြပါ။',
        optionsEn: ['0.5', '0.2', '0.15', '1.5'],
        optionsMy: ['0.5', '0.2', '0.15', '1.5'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which is bigger, 0.7 or 0.4?',
        questionMy: '0.7 နှင့် 0.4 တွင် အကြီးဆုံးမှာ အဘယ်နည်း။',
        optionsEn: ['0.7', '0.4', 'They are equal', 'Cannot tell'],
        optionsMy: ['0.7', '0.4', 'တူညီသည်', 'မသိနိုင်ပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 1/4 as a decimal?',
        questionMy: '1/4 ကို ဒဿမကိန်းအနေနှင့် ဖော်ပြပါ။',
        optionsEn: ['0.25', '0.4', '0.14', '0.75'],
        optionsMy: ['0.25', '0.4', '0.14', '0.75'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 0.3 + 0.2?',
        questionMy: '0.3 + 0.2 ၏ ပေါင်းလဒ်ကို ရှာပါ။',
        optionsEn: ['0.5', '0.4', '0.6', '0.1'],
        optionsMy: ['0.5', '0.4', '0.6', '0.1'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which fraction equals 3/4?',
        questionMy: '3/4 နှင့် တူညီသောအရာကို ရွေးပါ။',
        optionsEn: ['0.75', '0.34', '0.43', '0.25'],
        optionsMy: ['0.75', '0.34', '0.43', '0.25'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-math-3',
    subject: 'math',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Area & Perimeter',
    titleMy: 'ဧရိယာနှင့် အနားပတ်လျား',
    descriptionEn:
        'Calculate the area and perimeter of rectangles and squares.',
    descriptionMy:
        'ထောင့်မှန်စတုဂံနှင့် စတုရန်း၏ ဧရိယာနှင့် အနားပတ်လျားကို တွက်ချက်ပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is the area of a rectangle 5 cm long and 3 cm wide?',
        questionMy:
            'အလျား ၅ စင်တီမီတာ၊ အနံ ၃ စင်တီမီတာရှိသော ထောင့်မှန်စတုဂံ၏ ဧရိယာကို ရှာပါ။',
        optionsEn: ['15 sq cm', '8 sq cm', '16 sq cm', '10 sq cm'],
        optionsMy: ['15 sq cm', '8 sq cm', '16 sq cm', '10 sq cm'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the perimeter of a square with sides of 4 cm?',
        questionMy:
            'တစ်ဖက်လျား ၄ စင်တီမီတာစီရှိသော စတုရန်း၏ အနားပတ်လျားကို ရှာပါ။',
        optionsEn: ['16 cm', '8 cm', '12 cm', '20 cm'],
        optionsMy: ['16 cm', '8 cm', '12 cm', '20 cm'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'The formula for the area of a rectangle is...',
        questionMy: 'ထောင့်မှန်စတုဂံ၏ ဧရိယာတွက်ချက်ရန် ဖော်မြူလာမှာ အဘယ်နည်း။',
        optionsEn: [
          'Length x Width',
          'Length + Width',
          'Length - Width',
          'Length / Width',
        ],
        optionsMy: ['အလျား x အနံ', 'အလျား + အနံ', 'အလျား - အနံ', 'အလျား / အနံ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the perimeter of a rectangle 6 cm long and 2 cm wide?',
        questionMy:
            'အလျား ၆ စင်တီမီတာ၊ အနံ ၂ စင်တီမီတာရှိသော ထောင့်မှန်စတုဂံ၏ အနားပတ်လျားကို ရှာပါ။',
        optionsEn: ['16 cm', '12 cm', '8 cm', '14 cm'],
        optionsMy: ['16 cm', '12 cm', '8 cm', '14 cm'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the area of a square with sides of 5 cm?',
        questionMy: 'တစ်ဖက်လျား ၅ စင်တီမီတာစီရှိသော စတုရန်း၏ ဧရိယာကို ရှာပါ။',
        optionsEn: ['25 sq cm', '20 sq cm', '10 sq cm', '15 sq cm'],
        optionsMy: ['25 sq cm', '20 sq cm', '10 sq cm', '15 sq cm'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-english-1',
    subject: 'english',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Punctuation & Sentence Types',
    titleMy: 'ပုဒ်ဖြတ်ပုဒ်ရပ်နှင့် စာကြောင်းအမျိုးအစားများ',
    descriptionEn: 'Learn punctuation marks and different types of sentences.',
    descriptionMy:
        'ပုဒ်ဖြတ်ပုဒ်ရပ်အမှတ်အသားများနှင့် စာကြောင်းအမျိုးအစားအမျိုးမျိုးကို လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'Which punctuation shows strong feeling or excitement?',
        questionMy:
            'ခံစားချက်ပြင်းထန်မှု သို့မဟုတ် စိတ်လှုပ်ရှားမှုကို ပြသောပုဒ်ဖြတ်ပုဒ်ရပ်ကို ရွေးပါ။',
        optionsEn: [
          'Exclamation mark (!)',
          'Period (.)',
          'Comma (,)',
          'Colon (:)',
        ],
        optionsMy: [
          'အံ့ဩအမှတ် (!)',
          'ဒေါ့ (.)',
          'ကော်မာ (,)',
          'ဒေါ့ကော်မာ (:)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which sentence gives a command?',
        questionMy: 'အမိန့်ပေးသော စာကြောင်းကို ရွေးပါ။',
        optionsEn: [
          'Close the door.',
          'Is the door closed?',
          'The door is closed.',
          'What a big door!',
        ],
        optionsMy: [
          'Close the door.',
          'Is the door closed?',
          'The door is closed.',
          'What a big door!',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which punctuation separates items in a list?',
        questionMy:
            'စာရင်းရှိအရာများကို ခွဲခြားပေးသော ပုဒ်ဖြတ်ပုဒ်ရပ်ကို ရွေးပါ။',
        optionsEn: [
          'Comma (,)',
          'Period (.)',
          'Question mark (?)',
          'Exclamation (!)',
        ],
        optionsMy: [
          'ကော်မာ (,)',
          'ဒေါ့ (.)',
          'မေးခွန်းအမှတ် (?)',
          'အံ့ဩအမှတ် (!)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which type of sentence ends with a question mark?',
        questionMy:
            'မေးခွန်းအမှတ်ဖြင့် အဆုံးသတ်သော စာကြောင်းအမျိုးအစားကို ရွေးပါ။',
        optionsEn: [
          'Interrogative',
          'Declarative',
          'Imperative',
          'Exclamatory',
        ],
        optionsMy: [
          'မေးခွန်းဝါကျ (interrogative)',
          'ပြောပြဝါကျ (declarative)',
          'အမိန့်ဝါကျ (imperative)',
          'အံ့ဩဝါကျ (exclamatory)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which sentence uses an apostrophe correctly?',
        questionMy:
            'အပိုစထရိုဖီး (apostrophe) ကို မှန်ကန်စွာသုံးသော စာကြောင်းကို ရွေးပါ။',
        optionsEn: [
          "That is Sam's book.",
          "That is Sams book.",
          "That is Sam,s book.",
          "That is Sam;s book.",
        ],
        optionsMy: [
          "That is Sam's book.",
          "That is Sams book.",
          "That is Sam,s book.",
          "That is Sam;s book.",
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-english-2',
    subject: 'english',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Synonyms & Antonyms',
    titleMy: 'ကြားနေသောစကားလုံးနှင့် ဆန့်ကျင်ဘက်စကားလုံးများ',
    descriptionEn: 'Practice finding words with the same or opposite meanings.',
    descriptionMy:
        'အဓိပ္ပာယ်တူ သို့မဟုတ် ဆန့်ကျင်ဘက်ရှိသော စကားလုံးများကို ရှာဖွေလေ့ကျင့်ပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'Which word is a synonym of "happy"?',
        questionMy: '"happy" ၏ ကြားနေသောစကားလုံးကို ရွေးပါ။',
        optionsEn: ['Joyful', 'Sad', 'Angry', 'Bored'],
        optionsMy: ['Joyful', 'Sad', 'Angry', 'Bored'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word is an antonym of "difficult"?',
        questionMy: '"difficult" ၏ ဆန့်ကျင်ဘက်စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Easy', 'Hard', 'Tough', 'Complex'],
        optionsMy: ['Easy', 'Hard', 'Tough', 'Complex'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word means the same as "quick"?',
        questionMy: '"quick" နှင့် အဓိပ္ပာယ်တူသော စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Fast', 'Slow', 'Lazy', 'Heavy'],
        optionsMy: ['Fast', 'Slow', 'Lazy', 'Heavy'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word is the opposite of "expensive"?',
        questionMy: '"expensive" ၏ ဆန့်ကျင်ဘက်စကားလုံးကို ရွေးပါ။',
        optionsEn: ['Cheap', 'Rich', 'Costly', 'Valuable'],
        optionsMy: ['Cheap', 'Rich', 'Costly', 'Valuable'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which pair of words are antonyms?',
        questionMy: 'ဆန့်ကျင်ဘက်စကားလုံးအတွဲကို ရွေးပါ။',
        optionsEn: [
          'Hot and Cold',
          'Hot and Warm',
          'Cold and Cool',
          'Big and Huge',
        ],
        optionsMy: [
          'Hot and Cold',
          'Hot and Warm',
          'Cold and Cool',
          'Big and Huge',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-english-3',
    subject: 'english',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Reading for Meaning',
    titleMy: 'အဓိပ္ပာယ်ရှာဖွေရန် ဖတ်ရှုခြင်း',
    descriptionEn:
        'Practice inferring meaning and main ideas from short passages.',
    descriptionMy:
        'စာပိုဒ်တိုများမှ အဓိပ္ပာယ်နှင့် အဓိကအကြောင်းအရာကို ရှာဖွေခန့်မှန်းလေ့ကျင့်ပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn:
            '"Ko Ko packed his bag and umbrella before leaving." What might the weather be like?',
        questionMy:
            '"Ko Ko packed his bag and umbrella before leaving." ရာသီဥတု မည်သို့ရှိနိုင်သနည်း။',
        optionsEn: [
          'It might rain',
          'It is very hot',
          'It is snowing',
          'It is sunny only',
        ],
        optionsMy: [
          'မိုးရွာနိုင်သည်',
          'အလွန်ပူနေသည်',
          'နှင်းကျနေသည်',
          'နေသာနေသည်သာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'The main idea of a paragraph is usually found in the...',
        questionMy:
            'စာပိုဒ်တစ်ပိုဒ်၏ အဓိကအကြောင်းအရာကို ပုံမှန်အားဖြင့် မည်သည့်နေရာတွင် တွေ့ရသနည်း။',
        optionsEn: ['Topic sentence', 'Last word', 'Page number', 'Title only'],
        optionsMy: [
          'ခေါင်းစဉ်ဝါကျ (topic sentence)',
          'နောက်ဆုံးစကားလုံး',
          'စာမျက်နှာနံပါတ်',
          'ခေါင်းစဉ်သာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            '"After running the race, Aye Aye drank water and rested." Why did she rest?',
        questionMy:
            '"After running the race, Aye Aye drank water and rested." သူမ အဘယ်ကြောင့် နားခဲ့သနည်း။',
        optionsEn: [
          'She was tired from running',
          'She was bored',
          'She was cold',
          'She was hungry',
        ],
        optionsMy: [
          'ပြေးလွှားထားသောကြောင့် ပင်ပန်းနေသောကြောင့်',
          'ငြီးငွေ့နေသောကြောင့်',
          'အေးနေသောကြောင့်',
          'ဆာလောင်နေသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does it mean to "infer" something while reading?',
        questionMy:
            'ဖတ်ရှုနေစဉ် တစ်ခုခုကို "ခန့်မှန်း" ခြင်းဆိုသည်မှာ အဘယ်သို့ဆိုလိုသနည်း။',
        optionsEn: [
          'To figure it out using clues',
          'To copy the exact words',
          'To skip the sentence',
          'To ignore it',
        ],
        optionsMy: [
          'အချက်အလက်များအသုံးပြု၍ ခန့်မှန်းသိရှိခြင်း',
          'စကားလုံးအတိအကျကူးယူခြင်း',
          'စာကြောင်းကိုကျော်ခြင်း',
          'လျစ်လျူရှုခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            '"The garden was full of colorful butterflies and buzzing bees." What is the setting?',
        questionMy:
            '"The garden was full of colorful butterflies and buzzing bees." နောက်ခံနေရာမှာ အဘယ်နည်း။',
        optionsEn: ['A garden', 'A classroom', 'A kitchen', 'A car'],
        optionsMy: ['ဥယျာဉ်', 'စာသင်ခန်း', 'မီးဖိုချောင်', 'ကား'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-science-1',
    subject: 'science',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Sound & Light',
    titleMy: 'အသံနှင့် အလင်း',
    descriptionEn: 'Explore how sound and light travel and behave.',
    descriptionMy:
        'အသံနှင့် အလင်း ခရီးသွားပုံနှင့် ဆက်ဆံပုံကို စူးစမ်းလေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What do we call a surface that light bounces off?',
        questionMy: 'အလင်းရောင်ပြန်ထွက်စေသော မျက်နှာပြင်ကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'A reflective surface',
          'A dark surface',
          'A soft surface',
          'A wet surface',
        ],
        optionsMy: [
          'ရောင်ပြန်မျက်နှာပြင်',
          'အမှောင်မျက်နှာပြင်',
          'နူးညံ့မျက်နှာပြင်',
          'စိုစွတ်မျက်နှာပြင်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How does sound travel to our ears?',
        questionMy: 'အသံသည် ကျွန်ုပ်တို့၏နားသို့ မည်သို့ခရီးသွားသနည်း။',
        optionsEn: [
          'As vibrations through the air',
          'As light beams',
          'As solid objects',
          'It does not move',
        ],
        optionsMy: [
          'လေအတွင်း တုန်ခါမှုအဖြစ်',
          'အလင်းရောင်ကွန်းအဖြစ်',
          'အခဲအဖြစ်',
          'မရွေ့လျားပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A shadow is formed when light is...',
        questionMy:
            'အရိပ်ဖြစ်ပေါ်လာသည်မှာ အလင်းရောင် မည်သို့ဖြစ်သောကြောင့်နည်း။',
        optionsEn: [
          'Blocked by an object',
          'Very bright',
          'Very colorful',
          'Warm',
        ],
        optionsMy: [
          'အရာဝတ္ထုတစ်ခုကရောက်နေသောကြောင့်',
          'အလွန်တောက်ပသောကြောင့်',
          'အရောင်စုံသောကြောင့်',
          'နွေးထွေးသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which material lets the most light pass through?',
        questionMy:
            'အလင်းရောင်ကို အများဆုံးဖြတ်သန်းစေနိုင်သော ပစ္စည်းကို ရွေးပါ။',
        optionsEn: ['Clear glass', 'Wood', 'Brick', 'Cardboard'],
        optionsMy: ['ကြည်လင်သောမှန်', 'သစ်သား', 'အုတ်', 'ကတ်ထူ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A loud sound has a bigger...',
        questionMy: 'အသံကျယ်လျင် ပိုကြီးသောအရာသည် အဘယ်နည်း။',
        optionsEn: ['Vibration (amplitude)', 'Color', 'Weight', 'Smell'],
        optionsMy: ['တုန်ခါမှု (amplitude)', 'အရောင်', 'အလေးချိန်', 'အနံ့'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-science-2',
    subject: 'science',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Electricity Basics',
    titleMy: 'လျှပ်စစ်ဓာတ် အခြေခံများ',
    descriptionEn: 'Learn how simple electric circuits work.',
    descriptionMy: 'ရိုးရှင်းသော လျှပ်စစ်ပတ်လမ်းများ အလုပ်လုပ်ပုံကို လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is needed to make a simple circuit light up a bulb?',
        questionMy:
            'ရိုးရှင်းသောပတ်လမ်းတစ်ခုက မီးလုံးထွန်းရန် အဘယ်အရာလိုအပ်သနည်း။',
        optionsEn: [
          'A complete loop with a battery',
          'Just a bulb',
          'Just a wire',
          'Sunlight only',
        ],
        optionsMy: [
          'ဘက်ထရီပါသော ပြီးပြည့်စုံသောပတ်လမ်းလုံး',
          'မီးလုံးသာ',
          'ကြေးဝါကြိုးသာ',
          'နေရောင်ခြည်သာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which material allows electricity to pass through it easily?',
        questionMy:
            'လျှပ်စစ်ဓာတ်ကို အလွယ်တကူဖြတ်သန်းစေနိုင်သော ပစ္စည်းကို ရွေးပါ။',
        optionsEn: ['Copper wire', 'Rubber', 'Plastic', 'Wood'],
        optionsMy: ['ကြေးဝါကြိုး', 'ရာဘာ', 'ပလတ်စတစ်', 'သစ်သား'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A switch in a circuit is used to...',
        questionMy: 'ပတ်လမ်းရှိ switch ကို ဘာအတွက်သုံးသနည်း။',
        optionsEn: [
          'Turn the circuit on or off',
          'Make it heavier',
          'Change its color',
          'Make it louder',
        ],
        optionsMy: [
          'ပတ်လမ်းကို ဖွင့်/ပိတ်ရန်',
          'ပိုလေးအောင်လုပ်ရန်',
          'အရောင်ပြောင်းရန်',
          'ပိုကျယ်စေရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a source of electricity?',
        questionMy: 'အောက်ပါတို့တွင် လျှပ်စစ်အရင်းအမြစ်ဖြစ်သောအရာကို ရွေးပါ။',
        optionsEn: ['Battery', 'Wooden stick', 'Plastic cup', 'Rubber band'],
        optionsMy: ['ဘက်ထရီ', 'သစ်သားချောင်း', 'ပလတ်စတစ်ခွက်', 'ရာဘာကြိုး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Materials that do NOT let electricity pass through are called...',
        questionMy:
            'လျှပ်စစ်ဓာတ်ကို ဖြတ်သန်းစေခြင်းမရှိသော ပစ္စည်းများကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Insulators', 'Conductors', 'Magnets', 'Liquids'],
        optionsMy: [
          'လျှပ်စစ်မဆောင်ပစ္စည်း (insulator)',
          'လျှပ်စစ်ဆောင်ပစ္စည်း (conductor)',
          'သံလိုက်',
          'အရည်များ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-science-3',
    subject: 'science',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Digestive System',
    titleMy: 'အစာချေဖျက်ခြင်းစနစ်',
    descriptionEn: 'Learn how the body breaks down and uses food.',
    descriptionMy:
        'ခန္ဓာကိုယ်သည် အစားအစာကို မည်သို့ချေဖျက်အသုံးပြုသည်ကို လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'Where does digestion begin?',
        questionMy: 'အစာချေဖျက်ခြင်း မည်သည့်နေရာမှ စတင်သနည်း။',
        optionsEn: ['The mouth', 'The stomach', 'The lungs', 'The heart'],
        optionsMy: ['ခံတွင်း', 'အစာအိမ်', 'အဆုတ်', 'နှလုံး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which organ breaks down food using acid?',
        questionMy: 'အက်စစ်သုံး၍ အစာကိုချေဖျက်သော အင်္ဂါကို ရွေးပါ။',
        optionsEn: ['Stomach', 'Brain', 'Skin', 'Bones'],
        optionsMy: ['အစာအိမ်', 'ဦးနှောက်', 'အရေပြား', 'အရိုး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What do our teeth do to food first?',
        questionMy:
            'ကျွန်ုပ်တို့၏သွားများသည် အစားအစာကို ပထမဆုံးမည်သို့လုပ်ဆောင်သနည်း။',
        optionsEn: [
          'Chew and break it into small pieces',
          'Digest it fully',
          'Send it to the lungs',
          'Color it',
        ],
        optionsMy: [
          'ဝါးဖျက်ပြီး အပိုင်းငယ်များအဖြစ်ဖြတ်တောက်ခြင်း',
          'အပြည့်အဝချေဖျက်ခြင်း',
          'အဆုတ်သို့ပို့ခြင်း',
          'အရောင်ဆိုးခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which long tube connects the mouth to the stomach?',
        questionMy:
            'ခံတွင်းနှင့် အစာအိမ်ကို ချိတ်ဆက်ပေးသော ပြွန်ရှည်ကို ရွေးပါ။',
        optionsEn: ['Esophagus', 'Windpipe', 'Vein', 'Artery'],
        optionsMy: [
          'အစာလမ်းကြောင်း (esophagus)',
          'အသက်ရှူလမ်းကြောင်း',
          'သွေးကြောစုတ်',
          'သွေးကြောကြီး',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What happens to food after it leaves the stomach?',
        questionMy:
            'အစားအစာသည် အစာအိမ်မှ ထွက်သွားပြီးနောက် အဘယ်အရာဖြစ်လာသနည်း။',
        optionsEn: [
          'It goes into the intestines',
          'It disappears',
          'It goes to the lungs',
          'It goes to the ears',
        ],
        optionsMy: [
          'အူသို့ ဝင်ရောက်သွားသည်',
          'ပျောက်ကွယ်သွားသည်',
          'အဆုတ်သို့ သွားသည်',
          'နားသို့ သွားသည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-stem-1',
    subject: 'stem',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Algorithms & Flowcharts',
    titleMy: 'အယ်လဂိုရစ်သမ်များနှင့် ဖလိုးချတ်များ',
    descriptionEn:
        'Learn how algorithms describe step-by-step solutions using flowcharts.',
    descriptionMy:
        'အယ်လဂိုရစ်သမ်များသည် ဖလိုးချတ်များသုံး၍ အဆင့်ဆင့်ဖြေရှင်းနည်းများကို မည်သို့ဖော်ပြသည်ကို လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is an algorithm?',
        questionMy: 'algorithm ဆိုသည်မှာ အဘယ်အရာနည်း။',
        optionsEn: [
          'A step-by-step set of instructions',
          'A color',
          'A type of food',
          'A musical note',
        ],
        optionsMy: [
          'အဆင့်ဆင့်ညွှန်ကြားချက်များ',
          'အရောင်တစ်မျိုး',
          'အစားအစာတစ်မျိုး',
          'ဂီတသံစဉ်တစ်ခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'In a flowchart, a diamond shape usually represents a...',
        questionMy:
            'ဖလိုးချတ်တစ်ခုတွင် စတုဂံစိန်ပုံသည် များသောအားဖြင့် အဘယ်အရာကိုကိုယ်စားပြုသနည်း။',
        optionsEn: ['Decision', 'Start point', 'A number', 'A color'],
        optionsMy: ['ဆုံးဖြတ်ချက် (decision)', 'အစပြုနေရာ', 'ဂဏန်း', 'အရောင်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which shape usually shows the start or end of a flowchart?',
        questionMy:
            'ဖလိုးချတ်၏ အစ သို့မဟုတ် အဆုံးကို ပြသော ပုံသဏ္ဌာန်ကို ရွေးပါ။',
        optionsEn: ['Oval', 'Diamond', 'Rectangle', 'Triangle'],
        optionsMy: ['ဩဗယ်', 'စတုဂံစိန်', 'ထောင့်မှန်စတုဂံ', 'တြိဂံ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A recipe is an example of an algorithm because it...',
        questionMy:
            'ချက်ပြုတ်နည်းသည် algorithm ၏ ဥပမာဖြစ်သည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          'Gives ordered steps to reach a result',
          'Has no order',
          'Is only pictures',
          'Uses no words',
        ],
        optionsMy: [
          'ရလဒ်ရရှိရန် အစီအစဉ်လိုက်အဆင့်များပေးသောကြောင့်',
          'အစီအစဉ်မရှိသောကြောင့်',
          'ပုံများသာဖြစ်သောကြောင့်',
          'စကားလုံးမပါသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which comes first when designing an algorithm?',
        questionMy:
            'algorithm တစ်ခုကို ဒီဇိုင်းရေးဆွဲရာတွင် ဘာအရင်လုပ်သင့်သနည်း။',
        optionsEn: [
          'Understand the goal',
          'Draw pictures',
          'Add colors',
          'Add music',
        ],
        optionsMy: [
          'ရည်မှန်းချက်ကို နားလည်ရန်',
          'ပုံဆွဲရန်',
          'အရောင်ထည့်ရန်',
          'ဂီတထည့်ရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-stem-2',
    subject: 'stem',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Intro to Variables',
    titleMy: 'Variables (ကိန်းရှင်) အနက်ဖွင့်ခြင်း',
    descriptionEn: 'Learn how a variable stores a value that can change.',
    descriptionMy:
        'ကိန်းရှင်တစ်ခုသည် ပြောင်းလဲနိုင်သောတန်ဖိုးတစ်ခုကို မည်သို့သိမ်းဆည်းသည်ကို လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is a variable in programming?',
        questionMy: 'ပရိုဂရမ်းမင်းတွင် variable ဆိုသည်မှာ အဘယ်အရာနည်း။',
        optionsEn: [
          'A box that stores a value',
          'A type of loop',
          'A color code',
          'A sound effect',
        ],
        optionsMy: [
          'တန်ဖိုးကိုသိမ်းဆည်းသော ဘူးတစ်ခု',
          'loop အမျိုးအစားတစ်ခု',
          'အရောင်ကုဒ်',
          'အသံအထူးစွမ်းရည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If "score" starts at 0 and you add 5, what is the new value?',
        questionMy:
            '"score" သည် ၀ မှစတင်ပြီး ၅ ပေါင်းလိုက်လျှင် တန်ဖိုးအသစ်မှာ အဘယ်နည်း။',
        optionsEn: ['5', '0', '10', '55'],
        optionsMy: ['5', '0', '10', '55'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A variable\'s value can...',
        questionMy: 'variable ၏ တန်ဖိုးသည် မည်သို့ဖြစ်နိုင်သနည်း။',
        optionsEn: [
          'Change over time',
          'Never change',
          'Only be a color',
          'Only be true or false',
        ],
        optionsMy: [
          'အချိန်ကြာလာသည်နှင့်အမျှ ပြောင်းလဲနိုင်သည်',
          'ဘယ်တော့မှမပြောင်းလဲပါ',
          'အရောင်သာဖြစ်နိုင်သည်',
          'မှန်/မှားသာဖြစ်နိုင်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why do programmers use variables?',
        questionMy: 'ပရိုဂရမ်းမာများသည် variable ကို အဘယ်ကြောင့်သုံးသနည်း။',
        optionsEn: [
          'To store and reuse information',
          'To make the screen colorful',
          'To slow the program down',
          'To confuse users',
        ],
        optionsMy: [
          'အချက်အလက်များကို သိမ်းဆည်းပြီးပြန်သုံးရန်',
          'ဖန်သားပြင်ကို အရောင်စုံအောင်လုပ်ရန်',
          'ပရိုဂရမ်ကို နှေးစေရန်',
          'အသုံးပြုသူများကို ရှုပ်ထွေးစေရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If "lives" is a variable that starts at 3 and you lose 1, what is it now?',
        questionMy:
            '"lives" variable သည် ၃ မှစတင်ပြီး ၁ ဆုံးရှုံးလျှင် အခုတန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['2', '3', '4', '1'],
        optionsMy: ['2', '3', '4', '1'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-stem-3',
    subject: 'stem',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Step-by-Step Thinking',
    titleMy: 'အဆင့်ဆင့်ဆင်ခြင်ခြင်း',
    descriptionEn:
        'Practice planning tasks by breaking them into clear, ordered steps.',
    descriptionMy:
        'လုပ်ငန်းများကို ရှင်းလင်းသောအစီအစဉ်လိုက်အဆင့်များအဖြစ် ခွဲခြမ်းစီစဉ်ခြင်းကို လေ့ကျင့်ပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'Before building a model, what should you plan first?',
        questionMy: 'ပုံစံတစ်ခုတည်ဆောက်မီ ဘာကိုအရင်စီစဉ်သင့်သနည်း။',
        optionsEn: [
          'What materials and steps are needed',
          'What color to paint the walls',
          'What snacks to eat',
          'What music to play',
        ],
        optionsMy: [
          'မည်သည့်ပစ္စည်းနှင့်အဆင့်များ လိုအပ်သည်',
          'နံရံကို ဘာအရောင်ဆိုးမည်',
          'ဘာမုန့်စားမည်',
          'ဂီတဘာဖွင့်မည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If a plan has 5 steps, and you finish step 3, how many steps are left?',
        questionMy:
            'အစီအစဉ်တွင် အဆင့် ၅ ဆင့်ရှိပြီး အဆင့် ၃ ပြီးလျှင် ဘယ်နှစ်ဆင့်ကျန်သနည်း။',
        optionsEn: ['2', '3', '1', '5'],
        optionsMy: ['2', '3', '1', '5'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why is it helpful to write down steps before starting a task?',
        questionMy:
            'လုပ်ငန်းစတင်မီ အဆင့်များကို ရေးမှတ်ထားခြင်းသည် အဘယ်ကြောင့် အထောက်အကူဖြစ်သနည်း။',
        optionsEn: [
          'So you do not forget anything',
          'It wastes paper',
          'It makes the task longer',
          'It is not helpful',
        ],
        optionsMy: [
          'ဘာမှမမေ့မကျန်ရအောင်',
          'စက္ကူဖြုန်းသောကြောင့်',
          'လုပ်ငန်းကိုပိုကြာစေသောကြောင့်',
          'အထောက်အကူမဖြစ်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What should you do if step 2 of your plan does not work?',
        questionMy: 'အစီအစဉ်ရှိ အဆင့် ၂ မအောင်မြင်ပါက ဘာလုပ်သင့်သနည်း။',
        optionsEn: [
          'Adjust the plan and try again',
          'Give up completely',
          'Skip to step 5',
          'Ignore the problem',
        ],
        optionsMy: [
          'အစီအစဉ်ကိုပြင်ဆင်ပြီး ထပ်ကြိုးစားရန်',
          'လုံးဝလက်လျှော့ရန်',
          'အဆင့် ၅ သို့ကျော်ရန်',
          'ပြဿနာကိုလျစ်လျူရှုရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Planning a task in ordered steps is called...',
        questionMy:
            'လုပ်ငန်းတစ်ခုကို အစီအစဉ်လိုက်အဆင့်များအဖြစ် စီစဉ်ခြင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'Step-by-step planning',
          'Random guessing',
          'Coloring',
          'Singing',
        ],
        optionsMy: [
          'အဆင့်ဆင့်စီစဉ်ခြင်း',
          'ကျပန်းခန့်မှန်းခြင်း',
          'အရောင်ဆိုးခြင်း',
          'သီချင်းဆိုခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ============================== YEAR 5 ==============================
  PrimaryActivityDef(
    id: 'mock-year5-math-1',
    subject: 'math',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Fractions, Decimals & Percentages',
    titleMy: 'အပိုင်းကိန်း၊ ဒဿမကိန်းနှင့် ရာခိုင်နှုန်းများ',
    descriptionEn: 'Convert between fractions, decimals, and percentages.',
    descriptionMy:
        'အပိုင်းကိန်း၊ ဒဿမကိန်းနှင့် ရာခိုင်နှုန်းများကို အပြန်အလှန်ပြောင်းလဲပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn: 'What is 1/2 as a percentage?',
        questionMy: '1/2 ကို ရာခိုင်နှုန်းအနေနှင့် ဖော်ပြပါ။',
        optionsEn: ['50%', '25%', '75%', '15%'],
        optionsMy: ['50%', '25%', '75%', '15%'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 0.25 as a fraction?',
        questionMy: '0.25 ကို အပိုင်းကိန်းအနေနှင့် ဖော်ပြပါ။',
        optionsEn: ['1/4', '1/2', '1/3', '2/5'],
        optionsMy: ['1/4', '1/2', '1/3', '2/5'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 75% as a decimal?',
        questionMy: '75% ကို ဒဿမကိန်းအနေနှင့် ဖော်ပြပါ။',
        optionsEn: ['0.75', '0.075', '7.5', '0.57'],
        optionsMy: ['0.75', '0.075', '7.5', '0.57'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 20% of 50?',
        questionMy: '၅၀ ၏ ၂၀% ကို ရှာပါ။',
        optionsEn: ['10', '20', '5', '15'],
        optionsMy: ['10', '20', '5', '15'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which is the largest: 0.6, 1/2, or 45%?',
        questionMy: '0.6၊ 1/2၊ 45% တို့တွင် အကြီးဆုံးမှာ အဘယ်နည်း။',
        optionsEn: ['0.6', '1/2', '45%', 'They are all equal'],
        optionsMy: ['0.6', '1/2', '45%', 'အားလုံးတူညီသည်'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-math-2',
    subject: 'math',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Negative Numbers',
    titleMy: 'အနုတ်ကိန်းများ',
    descriptionEn:
        'Understand and order negative numbers, including on a number line.',
    descriptionMy:
        'ဂဏန်းမျဉ်းပေါ်တွင် အနုတ်ကိန်းများကို နားလည်၍ အစဉ်လိုက်စီပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn: 'Which number is smaller, -5 or 2?',
        questionMy: '-5 နှင့် 2 တွင် ပိုသေးသည်မှာ အဘယ်နည်း။',
        optionsEn: ['-5', '2', 'They are equal', 'Cannot tell'],
        optionsMy: ['-5', '2', 'တူညီသည်', 'မသိနိုင်ပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is -3 + 5?',
        questionMy: '-3 + 5 ၏ ရလဒ်ကို ရှာပါ။',
        optionsEn: ['2', '-2', '8', '-8'],
        optionsMy: ['2', '-2', '8', '-8'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If the temperature is 4 degrees and drops by 6 degrees, what is the new temperature?',
        questionMy:
            'အပူချိန် ၄ ဒီဂရီရှိပြီး ၆ ဒီဂရီကျဆင်းလျှင် အပူချိန်အသစ်မှာ အဘယ်နည်း။',
        optionsEn: ['-2 degrees', '2 degrees', '10 degrees', '-10 degrees'],
        optionsMy: ['-2 ဒီဂရီ', '2 ဒီဂရီ', '10 ဒီဂရီ', '-10 ဒီဂရီ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which number is the smallest: -10, -2, or 5?',
        questionMy: '-10၊ -2၊ 5 တို့တွင် အသေးဆုံးမှာ အဘယ်နည်း။',
        optionsEn: ['-10', '-2', '5', 'Cannot tell'],
        optionsMy: ['-10', '-2', '5', 'မသိနိုင်ပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is -7 - 3?',
        questionMy: '-7 - 3 ၏ ရလဒ်ကို ရှာပါ။',
        optionsEn: ['-10', '10', '-4', '4'],
        optionsMy: ['-10', '10', '-4', '4'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-math-3',
    subject: 'math',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Angles & Shapes',
    titleMy: 'ထောင့်များနှင့် ပုံသဏ္ဌာန်များ',
    descriptionEn: 'Learn to measure and classify angles and shape properties.',
    descriptionMy:
        'ထောင့်များနှင့် ပုံသဏ္ဌာန်ဂုဏ်သတ္တိများကို တိုင်းတာခွဲခြားပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn: 'What is an angle less than 90 degrees called?',
        questionMy: '90 ဒီဂရီအောက်ရှိသော ထောင့်ကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'Acute angle',
          'Obtuse angle',
          'Right angle',
          'Straight angle',
        ],
        optionsMy: [
          'အသွယ်ထောင့် (acute)',
          'ဝိသာလထောင့် (obtuse)',
          'ဆင်ဖြောင့်ထောင့် (right)',
          'ဖြောင့်ထောင့် (straight)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How many degrees are in a right angle?',
        questionMy: 'ဆင်ဖြောင့်ထောင့်တစ်ခုတွင် ဒီဂရီမည်မျှရှိသနည်း။',
        optionsEn: ['90', '45', '180', '360'],
        optionsMy: ['90', '45', '180', '360'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'An angle greater than 90 but less than 180 degrees is called...',
        questionMy:
            '90 ဒီဂရီထက်ကြီး၍ 180 ဒီဂရီအောက်ရှိသော ထောင့်ကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'Obtuse angle',
          'Acute angle',
          'Right angle',
          'Reflex angle',
        ],
        optionsMy: [
          'ဝိသာလထောင့် (obtuse)',
          'အသွယ်ထောင့် (acute)',
          'ဆင်ဖြောင့်ထောင့်',
          'ပြန်လှန်ထောင့် (reflex)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How many degrees are in a full circle?',
        questionMy: 'စက်ဝိုင်းတစ်ခုလုံးတွင် ဒီဂရီမည်မျှရှိသနည်း။',
        optionsEn: ['360', '180', '90', '270'],
        optionsMy: ['360', '180', '90', '270'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A shape with all sides and angles equal is called...',
        questionMy:
            'ဘက်များနှင့် ထောင့်များအားလုံးတူညီသော ပုံသဏ္ဌာန်ကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'Regular polygon',
          'Irregular polygon',
          'A circle only',
          'A line',
        ],
        optionsMy: [
          'ပုံမှန်ဗဟုဂံ (regular polygon)',
          'ပုံမမှန်ဗဟုဂံ',
          'စက်ဝိုင်းသာ',
          'မျဉ်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-english-1',
    subject: 'english',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Figurative Language',
    titleMy: 'ပုံဆောင်စကား',
    descriptionEn:
        'Recognize similes, metaphors, and other figurative language.',
    descriptionMy:
        'နှိုင်းယှဉ်စကားနှင့် ပုံဆောင်ခေါ်ဆိုမှုများအပါအဝင် ပုံဆောင်စကားများကို မှတ်မိပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            '"The classroom was as quiet as a library." This is an example of a...',
        questionMy:
            '"The classroom was as quiet as a library." ၎င်းသည် မည်သည့်ဥပမာဖြစ်သနည်း။',
        optionsEn: ['Simile', 'Metaphor', 'Alliteration', 'Rhyme'],
        optionsMy: [
          'နှိုင်းယှဉ်စကား (simile)',
          'ပုံဆောင်ခေါ်ဆိုမှု (metaphor)',
          'အက္ခရာထပ်ခြင်း',
          'ကာရံ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: '"Time is money." This is an example of a...',
        questionMy: '"Time is money." ၎င်းသည် မည်သည့်ဥပမာဖြစ်သနည်း။',
        optionsEn: ['Metaphor', 'Simile', 'Onomatopoeia', 'Rhyme'],
        optionsMy: [
          'ပုံဆောင်ခေါ်ဆိုမှု (metaphor)',
          'နှိုင်းယှဉ်စကား (simile)',
          'အသံပုံဖော်စကား',
          'ကာရံ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A simile always uses which words to compare two things?',
        questionMy:
            'Simile သည် အရာနှစ်ခုကိုနှိုင်းယှဉ်ရန် မည်သည့်စကားလုံးများကို အမြဲသုံးသနည်း။',
        optionsEn: [
          '"Like" or "as"',
          '"Is" or "was"',
          '"And" or "but"',
          '"Then" or "next"',
        ],
        optionsMy: [
          '"Like" or "as"',
          '"Is" or "was"',
          '"And" or "but"',
          '"Then" or "next"',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: '"Buzz," "hiss," and "bang" are examples of...',
        questionMy: '"Buzz," "hiss," "bang" တို့သည် မည်သည့်ဥပမာများဖြစ်သနည်း။',
        optionsEn: [
          'Onomatopoeia (sound words)',
          'Similes',
          'Metaphors',
          'Antonyms',
        ],
        optionsMy: [
          'အသံပုံဖော်စကား (onomatopoeia)',
          'နှိုင်းယှဉ်စကား',
          'ပုံဆောင်ခေါ်ဆိုမှု',
          'ဆန့်ကျင်ဘက်စကားလုံး',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            '"The wind whispered through the trees." This gives the wind a human quality, called...',
        questionMy:
            '"The wind whispered through the trees." ဤသည် လေအား လူသားဂုဏ်ရည်ပေးထားခြင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Personification', 'A simile', 'A rhyme', 'A question'],
        optionsMy: [
          'ပုဂ္ဂိုလ်ပြုစကား (personification)',
          'နှိုင်းယှဉ်စကား',
          'ကာရံ',
          'မေးခွန်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-english-2',
    subject: 'english',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Clauses',
    titleMy: 'ဝါကျပိုင်းများ',
    descriptionEn: 'Learn the difference between main and subordinate clauses.',
    descriptionMy:
        'အဓိကဝါကျပိုင်းနှင့် အောက်လက်ခံဝါကျပိုင်း၏ ကွာခြားချက်ကို လေ့လာပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            'A clause that can stand alone as a complete sentence is called a...',
        questionMy:
            'ပြီးပြည့်စုံသော စာကြောင်းတစ်ကြောင်းအဖြစ် သီးခြားရပ်တည်နိုင်သော ဝါကျပိုင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'Main (independent) clause',
          'Subordinate clause',
          'A noun',
          'A preposition',
        ],
        optionsMy: [
          'အဓိက (တစ်ကိုယ်တည်းရပ်တည်နိုင်သော) ဝါကျပိုင်း',
          'အောက်လက်ခံဝါကျပိုင်း',
          'နာမ်',
          'ဝိဘတ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In "Because it rained, we stayed home," which is the subordinate clause?',
        questionMy:
            '"Because it rained, we stayed home" တွင် အောက်လက်ခံဝါကျပိုင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Because it rained',
          'We stayed home',
          'It rained home',
          'Stayed we',
        ],
        optionsMy: [
          'Because it rained',
          'We stayed home',
          'It rained home',
          'Stayed we',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A subordinate clause cannot stand alone because it...',
        questionMy:
            'အောက်လက်ခံဝါကျပိုင်းသည် သီးခြားရပ်တည်၍မရသည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          'Does not express a complete thought',
          'Is too short',
          'Has no verb ever',
          'Has too many words',
        ],
        optionsMy: [
          'ပြီးပြည့်စုံသောအတွေးကို မဖော်ပြသောကြောင့်',
          'တိုတောင်းလွန်းသောကြောင့်',
          'ကြိယာလုံးဝမပါသောကြောင့်',
          'စကားလုံးများလွန်းသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which word often starts a subordinate clause?',
        questionMy:
            'အောက်လက်ခံဝါကျပိုင်းကို များသောအားဖြင့် မည်သည့်စကားလုံးဖြင့် စတင်လေ့ရှိသနည်း။',
        optionsEn: ['Although', 'The', 'A', 'Is'],
        optionsMy: ['Although', 'The', 'A', 'Is'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: '"She smiled" is an example of a...',
        questionMy: '"She smiled" သည် မည်သည့်ဥပမာဖြစ်သနည်း။',
        optionsEn: [
          'Main clause',
          'Subordinate clause',
          'A single word',
          'A question',
        ],
        optionsMy: [
          'အဓိကဝါကျပိုင်း',
          'အောက်လက်ခံဝါကျပိုင်း',
          'စကားလုံးတစ်လုံးတည်း',
          'မေးခွန်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-english-3',
    subject: 'english',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Reading Comprehension',
    titleMy: 'ဖတ်ရှုနားလည်မှု',
    descriptionEn:
        'Answer inference and detail questions about longer passages.',
    descriptionMy:
        'ရှည်လျားသောစာပိုဒ်များအကြောင်း ခန့်မှန်းနှင့် အသေးစိတ်မေးခွန်းများကို ဖြေဆိုပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            '"Despite the storm, the fishermen returned safely." What does this tell us?',
        questionMy:
            '"Despite the storm, the fishermen returned safely." ဤစာကြောင်းက ဘာကို ပြောပြနေသနည်း။',
        optionsEn: [
          'They faced danger but were okay',
          'They never left home',
          'The storm never happened',
          'They lost their boat',
        ],
        optionsMy: [
          'အန္တရာယ်ရင်ဆိုင်ရသော်လည်း ဘေးကင်းစွာရှိသည်',
          'အိမ်ကမထွက်ခဲ့ပါ',
          'မုန်တိုင်းလုံးဝမဖြစ်ခဲ့ပါ',
          'သူတို့ဘောလင်ကို ဆုံးရှုံးခဲ့သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the purpose of a conclusion in a passage?',
        questionMy: 'စာပိုဒ်တစ်ပိုဒ်ရှိ နိဂုံး၏ ရည်ရွယ်ချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'To sum up the main points',
          'To introduce new characters',
          'To ask random questions',
          'To repeat the title',
        ],
        optionsMy: [
          'အဓိကအချက်များကို အနှစ်ချုပ်ရန်',
          'ဇာတ်ကောင်သစ်များကို မိတ်ဆက်ရန်',
          'ကျပန်းမေးခွန်းများမေးရန်',
          'ခေါင်းစဉ်ကို ထပ်ခါပြောရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            '"The old bridge creaked under every footstep." What does this suggest about the bridge?',
        questionMy:
            '"The old bridge creaked under every footstep." ဤသည် တံတား၏ အခြေအနေအကြောင်း ဘာညွှန်ပြနေသနည်း။',
        optionsEn: [
          'It might be unsafe or fragile',
          'It is brand new',
          'It is very colorful',
          'It is underwater',
        ],
        optionsMy: [
          'ဘေးမကင်းလုံခြုံမှုမရှိနိုင်ခြင်း သို့မဟုတ် နွမ်းလျနေခြင်း',
          'အသစ်အသစ်ဖြစ်ခြင်း',
          'အရောင်စုံခြင်း',
          'ရေအောက်ရှိခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'An author\'s purpose to persuade means they want to...',
        questionMy:
            'စာရေးသူ၏ ရည်ရွယ်ချက်သည် တိုက်တွန်းရန်ဆိုလျှင် ဘာလိုချင်နေသနည်း။',
        optionsEn: [
          'Convince readers of an opinion',
          'Only entertain readers',
          'Only give facts',
          'Confuse readers',
        ],
        optionsMy: [
          'ဖတ်သူများကို ထင်မြင်ချက်တစ်ခုသို့ ယုံကြည်စေရန်',
          'ဖတ်သူများကို ဖျော်ဖြေရန်သာ',
          'အချက်အလက်ပေးရန်သာ',
          'ဖတ်သူများကိုရှုပ်ထွေးစေရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            '"Nyi Nyi studied hard every night for a month before the exam." What can we infer?',
        questionMy:
            '"Nyi Nyi studied hard every night for a month before the exam." ဘာကို ခန့်မှန်းနိုင်သနည်း။',
        optionsEn: [
          'He was determined to do well',
          'He hated studying',
          'He skipped the exam',
          'He never studied',
        ],
        optionsMy: [
          'ကောင်းကောင်းလုပ်ရန် စိတ်ပိုင်းဖြတ်ထားသည်',
          'စာလေ့လာခြင်းကို မုန်းတီးသည်',
          'စာမေးပွဲကျော်ခဲ့သည်',
          'ဘယ်တော့မှစာမလေ့လာခဲ့ပါ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-science-1',
    subject: 'science',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Solar System',
    titleMy: 'နေအဖွဲ့စု',
    descriptionEn:
        'Explore the Sun, planets, and other objects in the solar system.',
    descriptionMy:
        'နေအဖွဲ့စုရှိ နေ၊ ဂြိုဟ်များနှင့် အခြားအရာဝတ္ထုများကို စူးစမ်းလေ့လာပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn: 'Which planet is closest to the Sun?',
        questionMy: 'နေနှင့်အနီးဆုံးဂြိုဟ်ကို ရွေးပါ။',
        optionsEn: ['Mercury', 'Venus', 'Earth', 'Mars'],
        optionsMy: ['မာကျူရီ', 'ဗီးနပ်စ်', 'ကမ္ဘာ', 'အင်္ဂါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which planet is known as the "Red Planet"?',
        questionMy: '"အနီရောင်ဂြိုဟ်" ဟုခေါ်သော ဂြိုဟ်ကို ရွေးပါ။',
        optionsEn: ['Mars', 'Jupiter', 'Saturn', 'Venus'],
        optionsMy: ['အင်္ဂါ', 'ကြာသပတေး', 'စနေ', 'ဗီးနပ်စ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What causes day and night on Earth?',
        questionMy: 'ကမ္ဘာပေါ်တွင် နေ့ညဖြစ်ပေါ်ရသည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          "Earth's rotation on its axis",
          'The Moon moving',
          'Clouds covering the sun',
          'Stars appearing',
        ],
        optionsMy: [
          'ကမ္ဘာ၏ မိမိဝင်ရိုးအလည် လှည့်ပတ်ခြင်း',
          'လ ရွေ့လျားခြင်း',
          'တိမ်များက နေကိုဖုံးအုပ်ခြင်း',
          'ကြယ်များပေါ်လာခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which is the largest planet in our solar system?',
        questionMy: 'ကျွန်ုပ်တို့၏ နေအဖွဲ့စုတွင် အကြီးဆုံးဂြိုဟ်ကို ရွေးပါ။',
        optionsEn: ['Jupiter', 'Earth', 'Mars', 'Mercury'],
        optionsMy: ['ကြာသပတေး', 'ကမ္ဘာ', 'အင်္ဂါ', 'မာကျူရီ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What orbits around the Earth?',
        questionMy: 'ကမ္ဘာကို ဝန်းရံလှည့်ပတ်နေသည့်အရာကို ရွေးပါ။',
        optionsEn: ['The Moon', 'The Sun', 'Mars', 'Jupiter'],
        optionsMy: ['လ', 'နေ', 'အင်္ဂါ', 'ကြာသပတေး'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-science-2',
    subject: 'science',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Material Changes',
    titleMy: 'ပစ္စည်းပြောင်းလဲမှုများ',
    descriptionEn:
        'Learn the difference between reversible and irreversible changes.',
    descriptionMy:
        'ပြန်ဖြစ်နိုင်သောနှင့် ပြန်မဖြစ်နိုင်သော ပြောင်းလဲမှုများ၏ ကွာခြားချက်ကို လေ့လာပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn: 'Melting ice into water is an example of a...',
        questionMy: 'ရေခဲကို အရည်ဖြစ်သွားစေခြင်းသည် မည်သည့်ဥပမာဖြစ်သနည်း။',
        optionsEn: [
          'Reversible change',
          'Irreversible change',
          'No change',
          'A living process',
        ],
        optionsMy: [
          'ပြန်ဖြစ်နိုင်သောပြောင်းလဲမှု',
          'ပြန်မဖြစ်နိုင်သောပြောင်းလဲမှု',
          'ပြောင်းလဲမှုမရှိခြင်း',
          'သက်ရှိလုပ်ငန်းစဉ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Burning paper is an example of a...',
        questionMy: 'စက္ကူမီးရှို့ခြင်းသည် မည်သည့်ဥပမာဖြစ်သနည်း။',
        optionsEn: [
          'Irreversible change',
          'Reversible change',
          'No change',
          'A magnetic change',
        ],
        optionsMy: [
          'ပြန်မဖြစ်နိုင်သောပြောင်းလဲမှု',
          'ပြန်ဖြစ်နိုင်သောပြောင်းလဲမှု',
          'ပြောင်းလဲမှုမရှိခြင်း',
          'သံလိုက်ပြောင်းလဲမှု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Can you turn ash back into paper?',
        questionMy: 'အပြာကို စက္ကူအဖြစ်ပြန်လှည့်နိုင်မလား။',
        optionsEn: [
          'No, it cannot be reversed',
          'Yes, easily',
          'Yes, with water only',
          'Yes, with ice',
        ],
        optionsMy: [
          'မရနိုင်ပါ၊ ပြန်လှည့်၍မရပါ',
          'ရသည်၊ လွယ်ကူစွာ',
          'ရသည်၊ ရေဖြင့်သာ',
          'ရသည်၊ ရေခဲဖြင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Freezing water into ice is a reversible change because...',
        questionMy:
            'ရေကိုအေးခဲစေခြင်းသည် ပြန်ဖြစ်နိုင်သောပြောင်းလဲမှုဖြစ်သည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          'It can melt back into water',
          'It becomes a new substance',
          'It disappears forever',
          'It cannot melt',
        ],
        optionsMy: [
          'ရေအဖြစ် ပြန်အရည်ဖြစ်နိုင်သောကြောင့်',
          'အရာဝတ္ထုသစ်ဖြစ်လာသောကြောင့်',
          'အမြဲတမ်းပျောက်ကွယ်သွားသောကြောင့်',
          'ပြန်အရည်ဖြစ်၍မရသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Cooking an egg is an example of a...',
        questionMy: 'ကြက်ဥချက်ပြုတ်ခြင်းသည် မည်သည့်ဥပမာဖြစ်သနည်း။',
        optionsEn: [
          'Irreversible change',
          'Reversible change',
          'Magnetic change',
          'No change',
        ],
        optionsMy: [
          'ပြန်မဖြစ်နိုင်သောပြောင်းလဲမှု',
          'ပြန်ဖြစ်နိုင်သောပြောင်းလဲမှု',
          'သံလိုက်ပြောင်းလဲမှု',
          'ပြောင်းလဲမှုမရှိခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-science-3',
    subject: 'science',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: "Earth's Resources",
    titleMy: 'ကမ္ဘာ၏ သယံဇာတများ',
    descriptionEn: 'Learn about renewable and non-renewable natural resources.',
    descriptionMy:
        'ပြန်လည်ဖြစ်ပေါ်နိုင်သောနှင့် ပြန်လည်ဖြစ်ပေါ်၍မရနိုင်သော သဘာဝသယံဇာတများကို လေ့လာပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn: 'Which of these is a renewable resource?',
        questionMy: 'ပြန်လည်ဖြစ်ပေါ်နိုင်သော သယံဇာတကို ရွေးပါ။',
        optionsEn: ['Solar energy', 'Coal', 'Oil', 'Natural gas'],
        optionsMy: ['နေရောင်စွမ်းအင်', 'ကျောက်မီးသွေး', 'ရေနံ', 'သဘာဝဓာတ်ငွေ့'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which resource takes millions of years to form and cannot be replaced quickly?',
        questionMy:
            'ဖြစ်တည်ရန် နှစ်သန်းချီကြာပြီး လျင်မြန်စွာအစားထိုး၍မရနိုင်သော သယံဇာတကို ရွေးပါ။',
        optionsEn: ['Coal', 'Sunlight', 'Wind', 'Water from rain'],
        optionsMy: ['ကျောက်မီးသွေး', 'နေရောင်ခြည်', 'လေ', 'မိုးရေ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why should we conserve water even though it seems plentiful?',
        questionMy:
            'ရေသည် များပြားနေပုံပေါ်သော်လည်း အဘယ်ကြောင့် ချွေတာသင့်သနည်း။',
        optionsEn: [
          'Clean, usable water is limited',
          'Water never runs out',
          'It is not important',
          'Only for fun',
        ],
        optionsMy: [
          'သန့်ရှင်း၍ အသုံးပြုနိုင်သောရေသည် အကန့်အသတ်ရှိသောကြောင့်',
          'ရေဘယ်တော့မှမကုန်ပါ',
          'အရေးမကြီးပါ',
          'ပျော်ရွှင်စရာအတွက်သာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which is a way to conserve natural resources?',
        questionMy: 'သဘာဝသယံဇာတများကို ချွေတာသည့်နည်းလမ်းကို ရွေးပါ။',
        optionsEn: [
          'Recycling and reusing materials',
          'Wasting water',
          'Cutting all trees',
          'Burning trash everywhere',
        ],
        optionsMy: [
          'ပစ္စည်းများကို ပြန်လည်အသုံးချခြင်း',
          'ရေဖြုန်းတီးခြင်း',
          'သစ်ပင်အားလုံးခုတ်ခြင်း',
          'အမှိုက်ကိုနေရာတိုင်းတွင် မီးရှို့ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Wind energy is considered renewable because...',
        questionMy:
            'လေစွမ်းအင်ကို ပြန်လည်ဖြစ်ပေါ်နိုင်သည်ဟု ယူဆသည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          'Wind will not run out',
          'It is expensive',
          'It creates pollution',
          'It takes millions of years',
        ],
        optionsMy: [
          'လေသည် ဘယ်တော့မှမကုန်နိုင်ခြင်း',
          'ဈေးကြီးခြင်း',
          'ညစ်ညမ်းမှုဖြစ်စေခြင်း',
          'နှစ်သန်းချီကြာခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-stem-1',
    subject: 'stem',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Functions & Procedures',
    titleMy: 'Functions နှင့် Procedures',
    descriptionEn:
        'Learn how naming a group of steps lets you reuse them easily.',
    descriptionMy:
        'အဆင့်တစ်စုကို အမည်ပေးထားခြင်းက ၎င်းတို့ကို လွယ်ကူစွာ ပြန်သုံးနိုင်စေပုံကို လေ့လာပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn: 'What is a function in programming?',
        questionMy: 'ပရိုဂရမ်းမင်းတွင် function ဆိုသည်မှာ အဘယ်အရာနည်း။',
        optionsEn: [
          'A named, reusable set of steps',
          'A single number',
          'A color palette',
          'A type of error',
        ],
        optionsMy: [
          'အမည်ပေးထားသော ပြန်သုံးနိုင်သည့်အဆင့်စု',
          'ဂဏန်းတစ်လုံးတည်း',
          'အရောင်ပါလက်',
          'အမှားတစ်မျိုး',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why use a function instead of writing the same steps many times?',
        questionMy:
            'အလားတူအဆင့်များကို ထပ်ခါရေးမည့်အစား function သုံးရသည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          'It saves time and avoids repeating code',
          'It makes the program slower',
          'It uses more colors',
          'It is required by law',
        ],
        optionsMy: [
          'အချိန်ချွေတာပြီး ကုဒ်ထပ်ခါရေးရန်မလိုစေရန်',
          'ပရိုဂရမ်ကို ပိုနှေးစေသောကြောင့်',
          'အရောင်များများသုံးသောကြောင့်',
          'ဥပဒေအရ လိုအပ်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If a function "greet()" prints "Hello!", what happens when you call greet() three times?',
        questionMy:
            'function "greet()" သည် "Hello!" ဟုပုံနှိပ်ပါက greet() ကို သုံးကြိမ်ခေါ်လျှင် ဘာဖြစ်မည်နည်း။',
        optionsEn: [
          '"Hello!" prints three times',
          '"Hello!" prints once',
          'Nothing happens',
          'It causes an error',
        ],
        optionsMy: [
          '"Hello!" သုံးကြိမ်ပုံနှိပ်မည်',
          '"Hello!" တစ်ကြိမ်သာပုံနှိပ်မည်',
          'ဘာမျှမဖြစ်ပါ',
          'အမှားဖြစ်စေသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A function that adds two numbers together is a useful example of...',
        questionMy:
            'ဂဏန်းနှစ်ခုကိုပေါင်းပေးသော function သည် မည်သည့်အကောင်းဆုံးဥပမာတစ်ခုဖြစ်သနည်း။',
        optionsEn: ['Reusable logic', 'A color', 'A shape', 'A sound'],
        optionsMy: ['ပြန်သုံးနိုင်သောယုတ္တိ', 'အရောင်', 'ပုံသဏ္ဌာန်', 'အသံ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What do we call the information a function receives to work with?',
        questionMy:
            'function တစ်ခုက လုပ်ဆောင်ရန် လက်ခံရရှိသော အချက်အလက်များကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Parameters (inputs)', 'Outputs only', 'Colors', 'Errors'],
        optionsMy: [
          'ပါရာမီတာများ (input)',
          'output များသာ',
          'အရောင်များ',
          'အမှားများ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-stem-2',
    subject: 'stem',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Combining Data & Loops',
    titleMy: 'ဒေတာနှင့် Loops ပေါင်းစပ်ခြင်း',
    descriptionEn: 'Practice using loops to process lists of data.',
    descriptionMy:
        'ဒေတာစာရင်းများကို ဆောင်ရွက်ရန် loops သုံးခြင်းကို လေ့ကျင့်ပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            'If a loop prints each name in a list of 4 names, how many times does it run?',
        questionMy:
            'loop တစ်ခုက အမည် ၄ ခုပါစာရင်းရှိ အမည်တစ်ခုချင်းစီကို ပုံနှိပ်ပါက ဘယ်နှစ်ကြိမ်လည်ပတ်မည်နည်း။',
        optionsEn: ['4', '1', '2', '8'],
        optionsMy: ['4', '1', '2', '8'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A list of stored values, like [3, 5, 8], is called...',
        questionMy:
            '[3, 5, 8] ကဲ့သို့ သိမ်းဆည်းထားသောတန်ဖိုးစာရင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'An array (or list)',
          'A single variable',
          'A function name',
          'A color code',
        ],
        optionsMy: [
          'array (သို့မဟုတ် list)',
          'variable တစ်ခုတည်း',
          'function အမည်',
          'အရောင်ကုဒ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Using a loop to add up all numbers in a list is an example of...',
        questionMy:
            'စာရင်းရှိဂဏန်းအားလုံးကို loop သုံး၍ပေါင်းခြင်းသည် မည်သည့်ဥပမာဖြစ်သနည်း။',
        optionsEn: [
          'Processing data with a loop',
          'Drawing a picture',
          'Playing music',
          'Writing a poem',
        ],
        optionsMy: [
          'loop ဖြင့်ဒေတာဆောင်ရွက်ခြင်း',
          'ပုံဆွဲခြင်း',
          'ဂီတဖွင့်ခြင်း',
          'ကဗျာရေးခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If a list has 10 items and a loop skips every other one, how many times does it act?',
        questionMy:
            'စာရင်းတွင် ပစ္စည်း ၁၀ ခုရှိပြီး loop က တစ်ခုကျော်တစ်ခုသာလုပ်ဆောင်လျှင် ဘယ်နှစ်ကြိမ်လုပ်ဆောင်မည်နည်း။',
        optionsEn: ['5', '10', '2', '20'],
        optionsMy: ['5', '10', '2', '20'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why combine loops with data lists?',
        questionMy:
            'Loops ကို ဒေတာစာရင်းများနှင့် အဘယ်ကြောင့် ပေါင်းစပ်သုံးသနည်း။',
        optionsEn: [
          'To process many items efficiently',
          'To slow the program down',
          'To make errors',
          'To hide data',
        ],
        optionsMy: [
          'ပစ္စည်းများစွာကို ထိရောက်စွာဆောင်ရွက်ရန်',
          'ပရိုဂရမ်ကိုနှေးစေရန်',
          'အမှားများဖြစ်စေရန်',
          'ဒေတာဝှက်ရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-stem-3',
    subject: 'stem',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Program Design',
    titleMy: 'ပရိုဂရမ် ဒီဇိုင်းရေးဆွဲခြင်း',
    descriptionEn:
        'Plan a simple program by outlining its goal, inputs, and steps.',
    descriptionMy:
        'ရိုးရှင်းသောပရိုဂရမ်တစ်ခုအား ရည်မှန်းချက်၊ input နှင့် အဆင့်များ ဖော်ပြ၍ စီစဉ်ပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            'What is the first thing to decide when designing a program?',
        questionMy:
            'ပရိုဂရမ်တစ်ခုဒီဇိုင်းရေးဆွဲရာတွင် ပထမဆုံးဆုံးဖြတ်ရမည့်အရာမှာ အဘယ်နည်း။',
        optionsEn: [
          'What problem it solves',
          'What color the buttons are',
          'What font to use',
          'How long the code is',
        ],
        optionsMy: [
          'မည်သည့်ပြဿနာကို ဖြေရှင်းမည်နည်း',
          'ခလုတ်များ ဘာအရောင်ဖြစ်မည်နည်း',
          'ဘာဖောင့်သုံးမည်နည်း',
          'ကုဒ်မည်မျှရှည်မည်နည်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Inputs to a program are...',
        questionMy: 'ပရိုဂရမ်တစ်ခု၏ inputs များသည် အဘယ်အရာများနည်း။',
        optionsEn: [
          'Information the program receives',
          'Only colors',
          'Only sounds',
          'Errors only',
        ],
        optionsMy: [
          'ပရိုဂရမ်လက်ခံရရှိသော အချက်အလက်များ',
          'အရောင်များသာ',
          'အသံများသာ',
          'အမှားများသာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Testing a program means...',
        questionMy:
            'ပရိုဂရမ်တစ်ခုကို စမ်းသပ်ခြင်းဆိုသည်မှာ အဘယ်သို့ဆိုလိုသနည်း။',
        optionsEn: [
          'Checking it works as expected',
          'Deleting all the code',
          'Ignoring the results',
          'Never running it',
        ],
        optionsMy: [
          'မျှော်လင့်သည့်အတိုင်း အလုပ်လုပ်မလုပ် စစ်ဆေးခြင်း',
          'ကုဒ်အားလုံးဖျက်ခြင်း',
          'ရလဒ်များကိုလျစ်လျူရှုခြင်း',
          'ဘယ်တော့မှမပွင့်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A good program design plan usually includes goal, steps, and...',
        questionMy:
            'ကောင်းသောပရိုဂရမ်ဒီဇိုင်းအစီအစဉ်တွင် ရည်မှန်းချက်၊ အဆင့်များနှင့် မည်သည့်အရာပါဝင်လေ့ရှိသနည်း။',
        optionsEn: ['Testing', 'Only pictures', 'Only music', 'Nothing else'],
        optionsMy: ['စမ်းသပ်ခြင်း', 'ပုံများသာ', 'ဂီတသာ', 'ဘာမျှမပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If a program keeps crashing, what should a good designer do?',
        questionMy:
            'ပရိုဂရမ်တစ်ခု အမြဲပျက်စီးနေလျှင် ကောင်းသောဒီဇိုင်နာတစ်ဦးက ဘာလုပ်သင့်သနည်း။',
        optionsEn: [
          'Find and fix the cause',
          'Delete the whole program',
          'Ignore it',
          'Blame the computer',
        ],
        optionsMy: [
          'အကြောင်းရင်းကိုရှာဖွေပြင်ဆင်ရန်',
          'ပရိုဂရမ်တစ်ခုလုံးဖျက်ရန်',
          'လျစ်လျူရှုရန်',
          'ကွန်ပျူတာကို အပြစ်ပုံချရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ============================== YEAR 6 ==============================
  PrimaryActivityDef(
    id: 'mock-year6-math-1',
    subject: 'math',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Ratio & Proportion',
    titleMy: 'အချိုးနှင့် အချိုးကျခြင်း',
    descriptionEn:
        'Understand and solve problems using ratios and proportions.',
    descriptionMy:
        'အချိုးနှင့် အချိုးကျခြင်းသုံး၍ ပြဿနာများကို နားလည်ဖြေရှင်းပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'If there are 2 boys for every 3 girls, and there are 6 boys, how many girls are there?',
        questionMy:
            'ယောက်ျားလေး ၂ ယောက်လျှင် မိန်းကလေး ၃ ယောက်ရှိပြီး ယောက်ျားလေး ၆ ယောက်ရှိလျှင် မိန်းကလေးဘယ်နှစ်ယောက်ရှိသနည်း။',
        optionsEn: ['9', '6', '12', '8'],
        optionsMy: ['9', '6', '12', '8'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the ratio 4:8 simplified to?',
        questionMy: 'အချိုး 4:8 ကို ရိုးရှင်းအောင်ဖော်ပြပါ။',
        optionsEn: ['1:2', '2:4', '1:4', '4:1'],
        optionsMy: ['1:2', '2:4', '1:4', '4:1'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A recipe needs 2 cups of flour for every 1 cup of sugar. For 6 cups of flour, how much sugar is needed?',
        questionMy:
            'ချက်ပြုတ်နည်းတွင် ဂျုံမှုန့် ၂ ခွက်လျှင် သကြား ၁ ခွက်လိုအပ်သည်။ ဂျုံမှုန့် ၆ ခွက်အတွက် သကြားမည်မျှလိုအပ်သနည်း။',
        optionsEn: ['3 cups', '2 cups', '6 cups', '12 cups'],
        optionsMy: ['3 ခွက်', '2 ခွက်', '6 ခွက်', '12 ခွက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If a map shows 1 cm = 10 km, how many km does 3 cm represent?',
        questionMy:
            'မြေပုံတွင် 1 cm = 10 km ဖြစ်လျှင် 3 cm သည် မည်မျှ km ကိုကိုယ်စားပြုသနည်း။',
        optionsEn: ['30 km', '13 km', '3 km', '10 km'],
        optionsMy: ['30 km', '13 km', '3 km', '10 km'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which ratio is equivalent to 3:6?',
        questionMy: '3:6 နှင့် ညီမျှသော အချိုးကို ရွေးပါ။',
        optionsEn: ['1:2', '2:3', '6:3', '3:1'],
        optionsMy: ['1:2', '2:3', '6:3', '3:1'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-math-2',
    subject: 'math',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Algebra Intro',
    titleMy: 'သခ္ခ်ာ (Algebra) အနက်ဖွင့်ခြင်း',
    descriptionEn: 'Solve simple equations using an unknown letter.',
    descriptionMy:
        'အမည်မသိအက္ခရာသုံး၍ ရိုးရှင်းသောညီမျှခြင်းများကို ဖြေရှင်းပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn: 'If x + 5 = 12, what is x?',
        questionMy: 'x + 5 = 12 ဆိုလျှင် x ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['7', '17', '5', '12'],
        optionsMy: ['7', '17', '5', '12'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If 3y = 18, what is y?',
        questionMy: '3y = 18 ဆိုလျှင် y ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['6', '15', '21', '3'],
        optionsMy: ['6', '15', '21', '3'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If x - 4 = 10, what is x?',
        questionMy: 'x - 4 = 10 ဆိုလျှင် x ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['14', '6', '40', '10'],
        optionsMy: ['14', '6', '40', '10'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In algebra, a letter that stands for an unknown number is called a...',
        questionMy:
            'သခ္ခ်ာတွင် အမည်မသိကိန်းကို ကိုယ်စားပြုသောအက္ခရာကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Variable', 'Fraction', 'Decimal', 'Percentage'],
        optionsMy: [
          'ကိန်းရှင် (variable)',
          'အပိုင်းကိန်း',
          'ဒဿမကိန်း',
          'ရာခိုင်နှုန်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If 2x + 1 = 9, what is x?',
        questionMy: '2x + 1 = 9 ဆိုလျှင် x ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['4', '5', '8', '3'],
        optionsMy: ['4', '5', '8', '3'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-math-3',
    subject: 'math',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Advanced Fractions, Decimals & Percentages',
    titleMy: 'အဆင့်မြင့် အပိုင်းကိန်း၊ ဒဿမကိန်းနှင့် ရာခိုင်နှုန်းများ',
    descriptionEn:
        'Solve multi-step problems combining fractions, decimals, and percentages.',
    descriptionMy:
        'အပိုင်းကိန်း၊ ဒဿမကိန်းနှင့် ရာခိုင်နှုန်းများပေါင်းစပ်ထားသော အဆင့်များစွာပါဝင်သည့် ပြဿနာများကို ဖြေရှင်းပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'A shirt costs \$40 and is on sale for 25% off. What is the sale price?',
        questionMy:
            'အင်္ကျီတစ်ထည် \$40 တန်ဖိုးရှိပြီး 25% လျှော့ဈေးဖြင့်ရောင်းနေသည်။ လျှော့ဈေးမှာ အဘယ်နည်း။',
        optionsEn: ['\$30', '\$35', '\$25', '\$20'],
        optionsMy: ['\$30', '\$35', '\$25', '\$20'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 3/5 as a percentage?',
        questionMy: '3/5 ကို ရာခိုင်နှုန်းအနေနှင့် ဖော်ပြပါ။',
        optionsEn: ['60%', '35%', '53%', '30%'],
        optionsMy: ['60%', '35%', '53%', '30%'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 1/2 + 1/4?',
        questionMy: '1/2 + 1/4 ၏ ပေါင်းလဒ်ကို ရှာပါ။',
        optionsEn: ['3/4', '2/6', '1/6', '2/4'],
        optionsMy: ['3/4', '2/6', '1/6', '2/4'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is 0.6 x 10?',
        questionMy: '0.6 x 10 ၏ မြှောက်လဒ်ကို ရှာပါ။',
        optionsEn: ['6', '0.6', '60', '0.06'],
        optionsMy: ['6', '0.6', '60', '0.06'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A class has 30 students. 40% are boys. How many boys are there?',
        questionMy:
            'အတန်းတွင် ကျောင်းသား ၃၀ ရှိသည်။ ၄၀% သည် ယောက်ျားလေးများဖြစ်သည်။ ယောက်ျားလေးဘယ်နှစ်ယောက်ရှိသနည်း။',
        optionsEn: ['12', '10', '15', '20'],
        optionsMy: ['12', '10', '15', '20'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-english-1',
    subject: 'english',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Advanced Comprehension',
    titleMy: 'အဆင့်မြင့် ဖတ်ရှုနားလည်မှု',
    descriptionEn:
        'Analyze themes, tone, and author intent in longer passages.',
    descriptionMy:
        'ရှည်လျားသောစာပိုဒ်များရှိ ဆောင်ရွက်ချက်၊ အသံသွင်းနှင့် စာရေးသူရည်ရွယ်ချက်ကို ခွဲခြမ်းစိတ်ဖြာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            '"Even after failing five times, she tried again with a smile." What theme does this suggest?',
        questionMy:
            '"Even after failing five times, she tried again with a smile." ဤသည် မည်သည့်အဓိကအကြောင်းအရာကို ညွှန်ပြနေသနည်း။',
        optionsEn: ['Perseverance', 'Laziness', 'Fear', 'Anger'],
        optionsMy: [
          'ဇွဲရှိမှု (perseverance)',
          'ပျင်းရိမှု',
          'ကြောက်ရွံ့မှု',
          'စိတ်ဆိုးမှု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'The overall feeling or attitude a piece of writing conveys is called its...',
        questionMy:
            'ရေးသားချက်တစ်ခုက ထုတ်ဖော်သော အလုံးစုံခံစားချက် သို့မဟုတ် သဘောထားကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Tone', 'Font', 'Title', 'Page number'],
        optionsMy: [
          'အသံသွင်း (tone)',
          'ဖောင့်',
          'ခေါင်းစဉ်',
          'စာမျက်နှာနံပါတ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A writer who uses factual, unemotional language most likely intends to...',
        questionMy:
            'အချက်အလက်အခြေခံသော၊ ခံစားချက်မပါသော ဘာသာစကားသုံးသည့်စာရေးသူသည် ဘာလုပ်ရန်ရည်ရွယ်နေဆုံးလဲ။',
        optionsEn: [
          'Inform readers',
          'Only entertain',
          'Confuse readers',
          'Anger readers',
        ],
        optionsMy: [
          'ဖတ်သူများကို အသိပေးရန်',
          'ဖျော်ဖြေရန်သာ',
          'ဖတ်သူများကိုရှုပ်ထွေးစေရန်',
          'ဖတ်သူများကို စိတ်ဆိုးစေရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            '"The abandoned house stood alone, its windows like empty eyes." What mood does this create?',
        questionMy:
            '"The abandoned house stood alone, its windows like empty eyes." ဤသည် မည်သည့်စိတ်ခံစားချက်ကို ဖန်တီးပေးသနည်း။',
        optionsEn: [
          'Eerie or unsettling',
          'Cheerful',
          'Relaxing',
          'Exciting and fun',
        ],
        optionsMy: [
          'ထူးဆန်း သို့မဟုတ် စိတ်မသက်မသာဖြစ်စေသော',
          'ရွှင်လန်းသော',
          'အနားယူရသော',
          'စိတ်လှုပ်ရှား၍ ပျော်ရွှင်ဖွယ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Comparing two characters\' choices in a story helps readers understand...',
        questionMy:
            'ပုံပြင်တစ်ပုံရှိ ဇာတ်ကောင်နှစ်ဦး၏ ရွေးချယ်မှုများကို နှိုင်းယှဉ်ခြင်းသည် ဖတ်သူများအား ဘာနားလည်ရန် ကူညီသနည်း။',
        optionsEn: [
          "Their different values or motives",
          'The page numbers',
          'The book cover',
          'The font size',
        ],
        optionsMy: [
          'သူတို့၏ ကွဲပြားသောတန်ဖိုးများ သို့မဟုတ် လှုံ့ဆော်မှုများ',
          'စာမျက်နှာနံပါတ်များ',
          'စာအုပ်မျက်နှာဖုံး',
          'ဖောင့်အရွယ်အစား',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-english-2',
    subject: 'english',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Persuasive & Narrative Writing',
    titleMy: 'တိုက်တွန်းစာနှင့် ဇာတ်လမ်းရေးသားခြင်း',
    descriptionEn:
        'Learn techniques used in persuasive essays and narrative stories.',
    descriptionMy:
        'တိုက်တွန်းစာနှင့် ဇာတ်လမ်းများတွင် အသုံးပြုသော နည်းစနစ်များကို လေ့လာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn: 'A persuasive essay is written mainly to...',
        questionMy: 'တိုက်တွန်းစာတစ်ပုဒ်ကို အဓိကရေးသားရသည်မှာ ဘာအတွက်နည်း။',
        optionsEn: [
          'Convince the reader of an opinion',
          'Only tell a fictional story',
          'List random facts',
          'Describe a recipe',
        ],
        optionsMy: [
          'ဖတ်သူကို ထင်မြင်ချက်တစ်ခုသို့ ယုံကြည်စေရန်',
          'စိတ်ကူးဇာတ်လမ်းသာပြောပြရန်',
          'ကျပန်းအချက်အလက်စာရင်းပြရန်',
          'ချက်ပြုတ်နည်းဖော်ပြရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a persuasive technique?',
        questionMy: 'အောက်ပါတို့တွင် တိုက်တွန်းနည်းစနစ်တစ်ခုကို ရွေးပါ။',
        optionsEn: [
          'Giving strong reasons and evidence',
          'Only using random colors',
          'Ignoring the topic',
          'Writing very short sentences only',
        ],
        optionsMy: [
          'ခိုင်မာသောအကြောင်းပြချက်နှင့် သက်သေအထောက်အထားပေးခြင်း',
          'ကျပန်းအရောင်များကိုသာသုံးခြင်း',
          'ခေါင်းစဉ်ကိုလျစ်လျူရှုခြင်း',
          'အလွန်တိုတောင်းသောစာကြောင်းများသာရေးခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'The turning point of a narrative story is called the...',
        questionMy: 'ဇာတ်လမ်းတစ်ပုဒ်၏ လှည့်ကွက်အချိန်ကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'Climax',
          'Introduction',
          'Cover page',
          'Table of contents',
        ],
        optionsMy: [
          'အထွတ်အထိပ် (climax)',
          'နိဒါန်း',
          'ဖုံးအုပ်စာမျက်နှာ',
          'မာတိကာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A strong narrative usually includes characters, setting, and...',
        questionMy:
            'ခိုင်မာသောဇာတ်လမ်းတစ်ပုဒ်တွင် များသောအားဖြင့် ဇာတ်ကောင်၊ နောက်ခံနေရာနှင့် မည်သည့်အရာပါဝင်လေ့ရှိသနည်း။',
        optionsEn: [
          'A plot with a problem to solve',
          'Only a title',
          'Random numbers',
          'A shopping list',
        ],
        optionsMy: [
          'ဖြေရှင်းရမည့်ပြဿနာပါသော ဇာတ်ကြောင်း',
          'ခေါင်းစဉ်သာ',
          'ကျပန်းဂဏန်းများ',
          'ဈေးဝယ်စာရင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Ending a persuasive essay with a call to action means...',
        questionMy:
            'တိုက်တွန်းစာတစ်ပုဒ်ကို လုပ်ဆောင်ရန်တိုက်တွန်းချက်ဖြင့် အဆုံးသတ်ခြင်းဆိုသည်မှာ အဘယ်သို့ဆိုလိုသနည်း။',
        optionsEn: [
          'Asking the reader to do something',
          'Ending with a random fact',
          'Repeating the introduction',
          'Leaving it unfinished',
        ],
        optionsMy: [
          'ဖတ်သူအား တစ်ခုခုလုပ်ဆောင်ရန် တောင်းဆိုခြင်း',
          'ကျပန်းအချက်အလက်ဖြင့် အဆုံးသတ်ခြင်း',
          'နိဒါန်းကို ထပ်ခါပြောခြင်း',
          'မပြီးဆုံးဘဲထားခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-english-3',
    subject: 'english',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Grammar Mastery',
    titleMy: 'သဒ္ဒါ ကျွမ်းကျင်မှု',
    descriptionEn:
        'Review advanced grammar rules including complex sentences and agreement.',
    descriptionMy:
        'ရှုပ်ထွေးသောဝါကျများနှင့် ကြိယာသဘောတူညီမှုအပါအဝင် အဆင့်မြင့်သဒ္ဒါစည်းမျဉ်းများကို ပြန်လည်လေ့လာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn: 'Which sentence has correct subject-verb agreement?',
        questionMy: 'ဘာသာရပ်-ကြိယာ သဘောတူညီမှု မှန်ကန်သော စာကြောင်းကို ရွေးပါ။',
        optionsEn: [
          'The dogs run in the park.',
          'The dogs runs in the park.',
          'The dog run in the park.',
          'The dog are running.',
        ],
        optionsMy: [
          'The dogs run in the park.',
          'The dogs runs in the park.',
          'The dog run in the park.',
          'The dog are running.',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which sentence is written in the passive voice?',
        questionMy: 'passive voice ဖြင့် ရေးထားသော စာကြောင်းကို ရွေးပါ။',
        optionsEn: [
          'The cake was eaten by the children.',
          'The children ate the cake.',
          'The children are eating cake.',
          'The children will eat cake.',
        ],
        optionsMy: [
          'The cake was eaten by the children.',
          'The children ate the cake.',
          'The children are eating cake.',
          'The children will eat cake.',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A complex sentence contains a main clause and at least one...',
        questionMy:
            'ရှုပ်ထွေးသောဝါကျ (complex sentence) တွင် အဓိကဝါကျပိုင်းနှင့် အနည်းဆုံး မည်သည့်အရာပါဝင်သနည်း။',
        optionsEn: [
          'Subordinate clause',
          'Extra period',
          'Extra title',
          'Nothing else',
        ],
        optionsMy: [
          'အောက်လက်ခံဝါကျပိုင်း',
          'အပိုဒေါ့',
          'အပိုခေါင်းစဉ်',
          'ဘာမျှမပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which word correctly completes: "Neither of the boys ___ ready."',
        questionMy:
            'အောက်ပါစာကြောင်းကို မှန်ကန်စွာဖြည့်ပါ- "Neither of the boys ___ ready."',
        optionsEn: ['is', 'are', 'were', 'have'],
        optionsMy: ['is', 'are', 'were', 'have'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which sentence uses commas correctly in a list?',
        questionMy:
            'စာရင်းတွင် ကော်မာကို မှန်ကန်စွာသုံးထားသော စာကြောင်းကို ရွေးပါ။',
        optionsEn: [
          'I bought apples, bananas, and grapes.',
          'I bought apples bananas and grapes.',
          'I bought, apples bananas and, grapes.',
          'I bought apples, bananas and, grapes.',
        ],
        optionsMy: [
          'I bought apples, bananas, and grapes.',
          'I bought apples bananas and grapes.',
          'I bought, apples bananas and, grapes.',
          'I bought apples, bananas and, grapes.',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-science-1',
    subject: 'science',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Evolution & Inheritance',
    titleMy: 'ဆင့်ကဲဖြစ်စဉ်နှင့် မျိုးရိုးဗီဇ',
    descriptionEn:
        'Learn how living things inherit traits and change over generations.',
    descriptionMy:
        'သက်ရှိများသည် လက္ခဏာများကို မျိုးဆက်ပြန့်ပွားပုံနှင့် မျိုးဆက်များတစ်လျှောက် ပြောင်းလဲပုံကို လေ့လာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'Traits passed from parents to their offspring are called...',
        questionMy:
            'မိဘများမှ သားသမီးများသို့ ရွှေ့ပြောင်းသောလက္ခဏာများကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'Inherited traits',
          'Random traits',
          'Learned skills',
          'Weather patterns',
        ],
        optionsMy: [
          'မျိုးရိုးဗီဇလက္ခဏာများ (inherited traits)',
          'ကျပန်းလက္ခဏာများ',
          'သင်ယူထားသောကျွမ်းကျင်မှု',
          'ရာသီဥတုပုံစံများ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A puppy having its mother\'s fur color is an example of...',
        questionMy:
            'ခွေးကလေးတစ်ကောင်တွင် သူ့အမေ၏ အမွေးအရောင်ရှိခြင်းသည် မည်သည့်ဥပမာဖြစ်သနည်း။',
        optionsEn: [
          'Inheritance',
          'A learned habit',
          'A coincidence only',
          'Weather change',
        ],
        optionsMy: [
          'မျိုးရိုးဗီဇအမွေခံခြင်း (inheritance)',
          'သင်ယူထားသောအလေ့အထ',
          'ကြုံကြိုက်မှုသာ',
          'ရာသီဥတုပြောင်းလဲမှု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Animals with traits that help them survive are more likely to...',
        questionMy:
            'အသက်ရှင်ကျန်ရှိရန် ကူညီသောလက္ခဏာများရှိသည့် တိရစ္ဆာန်များသည် အဘယ်အရာလုပ်နိုင်ခြေပိုများသနည်း။',
        optionsEn: [
          'Reproduce and pass on those traits',
          'Disappear quickly',
          'Never change',
          'Lose their traits',
        ],
        optionsMy: [
          'မျိုးပွားပြီး ထိုလက္ခဏာများကို ပေးဆက်ခြင်း',
          'လျင်မြန်စွာပျောက်ကွယ်ခြင်း',
          'ဘယ်တော့မှမပြောင်းလဲခြင်း',
          'လက္ခဏာများဆုံးရှုံးခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A giraffe\'s long neck helping it reach high leaves is an example of...',
        questionMy:
            'ဂျီရာဖ်၏ လည်ပင်းရှည်ခြင်းက အမြင့်ရှိအရွက်များကို ဆွတ်ယူနိုင်ရန် ကူညီခြင်းသည် မည်သည့်ဥပမာဖြစ်သနည်း။',
        optionsEn: [
          'Adaptation',
          'A learned skill',
          'A random accident',
          'A weather pattern',
        ],
        optionsMy: [
          'လိုက်လျောညီထွေဖြစ်မှု (adaptation)',
          'သင်ယူထားသောကျွမ်းကျင်မှု',
          'ကျပန်းမတော်တဆမှု',
          'ရာသီဥတုပုံစံ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Offspring usually look similar to their parents because of...',
        questionMy:
            'သားသမီးများသည် ပုံမှန်အားဖြင့် မိဘများနှင့်တူသည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          'Genes passed down from parents',
          'Random chance only',
          'The weather',
          'Their favorite food',
        ],
        optionsMy: [
          'မိဘများထံမှ ရွှေ့ပြောင်းသောဗီဇများ',
          'ကျပန်းအခွင့်အရေးသာ',
          'ရာသီဥတု',
          'သူတို့နှစ်သက်သောအစားအစာ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-science-2',
    subject: 'science',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Circuits',
    titleMy: 'လျှပ်စစ်ပတ်လမ်းများ',
    descriptionEn: 'Explore series and parallel electrical circuits.',
    descriptionMy:
        'အတန်းလိုက်နှင့် ပါရာလယ် လျှပ်စစ်ပတ်လမ်းများကို စူးစမ်းလေ့လာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'In a series circuit, if one bulb goes out, what happens to the others?',
        questionMy:
            'series circuit တွင် မီးလုံးတစ်လုံးပျက်လျှင် ကျန်တာတွေ ဘာဖြစ်သွားမလဲ။',
        optionsEn: [
          'They also go out',
          'They stay lit',
          'They get brighter',
          'Nothing changes',
        ],
        optionsMy: [
          '၎င်းတို့လည်း ပျက်သွားသည်',
          'ဆက်လက်ထွန်းလင်းနေသည်',
          'ပိုတောက်ပလာသည်',
          'ဘာမျှမပြောင်းလဲပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a parallel circuit, if one bulb goes out, what happens to the others?',
        questionMy:
            'parallel circuit တွင် မီးလုံးတစ်လုံးပျက်လျှင် ကျန်တာတွေ ဘာဖြစ်သွားမလဲ။',
        optionsEn: [
          'They stay lit',
          'They also go out',
          'The whole circuit breaks',
          'Nothing works',
        ],
        optionsMy: [
          'ဆက်လက်ထွန်းလင်းနေသည်',
          '၎င်းတို့လည်း ပျက်သွားသည်',
          'ပတ်လမ်းတစ်ခုလုံးပျက်သွားသည်',
          'ဘာမှအလုပ်မလုပ်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What symbol is used to represent a battery in a circuit diagram?',
        questionMy:
            'ပတ်လမ်းပုံဖော်ချက်တွင် ဘက်ထရီကိုကိုယ်စားပြုရန် မည်သည့်သင်္ကေတသုံးသနည်း။',
        optionsEn: [
          'Two parallel lines of different lengths',
          'A circle',
          'A triangle',
          'A star',
        ],
        optionsMy: [
          'အလျားမတူသော မျဉ်းအတန်းနှစ်ခု',
          'စက်ဝိုင်း',
          'တြိဂံ',
          'ကြယ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which circuit type has only one path for electricity to flow?',
        questionMy:
            'လျှပ်စစ်စီးဆင်းရန် လမ်းကြောင်းတစ်ခုသာရှိသော ပတ်လမ်းအမျိုးအစားကို ရွေးပါ။',
        optionsEn: [
          'Series circuit',
          'Parallel circuit',
          'Broken circuit',
          'No circuit',
        ],
        optionsMy: [
          'အတန်းလိုက်ပတ်လမ်း (series)',
          'ပါရာလယ်ပတ်လမ်း (parallel)',
          'ပျက်စီးနေသောပတ်လမ်း',
          'ပတ်လမ်းမရှိခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why are homes wired with parallel circuits?',
        questionMy:
            'အိမ်များကို parallel circuit ဖြင့် ကြိုးဆွဲသည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          'So each appliance can work independently',
          'To save on wire only',
          'To make it dimmer',
          'It is required by tradition only',
        ],
        optionsMy: [
          'ပစ္စည်းတစ်ခုချင်းစီ သီးခြားလွတ်လပ်စွာအလုပ်လုပ်နိုင်ရန်',
          'ကြိုးချွေတာရန်သာ',
          'အလင်းမှိန်စေရန်',
          'ဓလေ့ထုံးတမ်းအရသာလိုအပ်ခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-science-3',
    subject: 'science',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Classification',
    titleMy: 'အုပ်စုခွဲခြားခြင်း',
    descriptionEn:
        'Learn how scientists group living things based on shared features.',
    descriptionMy:
        'သိပ္ပံပညာရှင်များသည် တူညီသောလက္ခဏာများပေါ်မူတည်၍ သက်ရှိများကို မည်သို့အုပ်စုခွဲသည်ကို လေ့လာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'Scientists group living things into categories based on their...',
        questionMy:
            'သိပ္ပံပညာရှင်များသည် သက်ရှိများကို မည်သည့်အရာပေါ်အခြေခံ၍ အမျိုးအစားခွဲသနည်း။',
        optionsEn: [
          'Shared characteristics',
          'Favorite colors',
          'Size only',
          'Names only',
        ],
        optionsMy: [
          'တူညီသောလက္ခဏာများ',
          'နှစ်သက်ရာအရောင်',
          'အရွယ်အစားသာ',
          'အမည်သာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which group do snakes and lizards belong to?',
        questionMy: 'မြွေနှင့် တောက်လျှပ်တို့သည် မည်သည့်အုပ်စုတွင် ပါဝင်သနည်း။',
        optionsEn: ['Reptiles', 'Mammals', 'Birds', 'Amphibians'],
        optionsMy: [
          'တွားသွားသတ္တဝါ (reptiles)',
          'နို့တိုက်သတ္တဝါ',
          'ငှက်',
          'ဖားအမျိုးအစား',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a feature of all mammals?',
        questionMy: 'နို့တိုက်သတ္တဝါအားလုံး၏ လက္ခဏာတစ်ခုကို ရွေးပါ။',
        optionsEn: [
          'They feed their young milk',
          'They can all fly',
          'They live only in water',
          'They lay hard-shelled eggs',
        ],
        optionsMy: [
          'သားငယ်များကို နို့ကျွေးခြင်း',
          'အားလုံးပျံနိုင်ခြင်း',
          'ရေထဲတွင်သာနေထိုင်ခြင်း',
          'ခွံမာသောဥများခချခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Fish are classified separately from mammals mainly because fish...',
        questionMy:
            'ငါးများကို နို့တိုက်သတ္တဝါများနှင့် သီးခြားအမျိုးအစားခွဲထားသည်မှာ အဓိကအားဖြင့် ငါးသည် မည်သို့ဖြစ်သောကြောင့်နည်း။',
        optionsEn: [
          'Breathe through gills, not lungs',
          'Are always bigger',
          'Live on land',
          'Cannot swim',
        ],
        optionsMy: [
          'အဆုတ်မဟုတ်ဘဲ ယားနားဖြင့် အသက်ရှူခြင်း',
          'အမြဲအရွယ်အစားပိုကြီးခြင်း',
          'ကုန်းပေါ်တွင်နေထိုင်ခြင်း',
          'ရေမကူးနိုင်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A classification system helps scientists mainly to...',
        questionMy:
            'အမျိုးအစားခွဲခြားခြင်းစနစ်သည် သိပ္ပံပညာရှင်များကို အဓိကအားဖြင့် ဘာကူညီပေးသနည်း။',
        optionsEn: [
          'Organize and study living things clearly',
          'Make animals look prettier',
          'Change the weather',
          'Sell more books',
        ],
        optionsMy: [
          'သက်ရှိများကို ရှင်းလင်းစွာစုစည်းလေ့လာနိုင်ရန်',
          'တိရစ္ဆာန်များကို ပိုလှစေရန်',
          'ရာသီဥတုပြောင်းလဲရန်',
          'စာအုပ်ပိုရောင်းရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-stem-1',
    subject: 'stem',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Computational Thinking Review',
    titleMy: 'ကွန်ပျူတာဆန်စွာ တွေးခေါ်မှု ပြန်လည်လေ့လာခြင်း',
    descriptionEn:
        'Review decomposition, patterns, abstraction, and algorithms together.',
    descriptionMy:
        'ခွဲခြမ်းစိတ်ဖြာခြင်း၊ ပုံစံများ၊ ခြုံငုံဖော်ပြခြင်းနှင့် algorithm များကို အတူတကွ ပြန်လည်လေ့လာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn: 'Breaking a big problem into smaller parts is called...',
        questionMy:
            'ပြဿနာကြီးတစ်ခုကို အစိတ်အပိုင်းငယ်များအဖြစ်ခွဲခြင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'Decomposition',
          'Abstraction',
          'Pattern recognition',
          'Debugging',
        ],
        optionsMy: [
          'decomposition',
          'abstraction',
          'pattern recognition',
          'debugging',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Focusing only on important details and ignoring the rest is called...',
        questionMy:
            'အရေးကြီးသောအချက်များကိုသာ အာရုံစိုက်၍ ကျန်တာများကိုလျစ်လျူရှုခြင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Abstraction', 'Decomposition', 'A loop', 'A variable'],
        optionsMy: ['abstraction', 'decomposition', 'loop', 'variable'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Noticing that traffic lights always cycle red-yellow-green is an example of...',
        questionMy:
            'မီးပွိုင့်များသည် အနီ-အဝါ-အစိမ်း အစဉ်လိုက်အမြဲပြောင်းနေသည်ကိုသတိထားမိခြင်းသည် မည်သည့်ဥပမာဖြစ်သနည်း။',
        optionsEn: [
          'Pattern recognition',
          'Decomposition',
          'A bug',
          'An error',
        ],
        optionsMy: ['pattern recognition', 'decomposition', 'bug', 'error'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of the four computational thinking skills involves writing step-by-step solutions?',
        questionMy:
            'ကွန်ပျူတာဆန်သောတွေးခေါ်မှု ကျွမ်းကျင်မှုလေးခုအနက် အဆင့်ဆင့်ဖြေရှင်းနည်းရေးသားခြင်းနှင့်သက်ဆိုင်သောအရာကို ရွေးပါ။',
        optionsEn: [
          'Algorithm design',
          'Only coloring',
          'Only singing',
          'Only guessing',
        ],
        optionsMy: [
          'algorithm ဒီဇိုင်းရေးဆွဲခြင်း',
          'အရောင်ဆိုးခြင်းသာ',
          'သီချင်းဆိုခြင်းသာ',
          'ခန့်မှန်းခြင်းသာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Computational thinking is useful because it helps us...',
        questionMy:
            'ကွန်ပျူတာဆန်သောတွေးခေါ်မှုသည် အသုံးဝင်သည်မှာ ကျွန်ုပ်တို့ကို ဘာကူညီပေးသောကြောင့်နည်း။',
        optionsEn: [
          'Solve problems clearly and logically',
          'Draw better pictures',
          'Run faster',
          'Sing better',
        ],
        optionsMy: [
          'ပြဿနာများကို ရှင်းလင်း၍ ယုတ္တိကျစွာဖြေရှင်းရန်',
          'ပုံပိုလှအောင်ဆွဲရန်',
          'ပိုမြန်စွာပြေးရန်',
          'ပိုကောင်းစွာသီချင်းဆိုရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-stem-2',
    subject: 'stem',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Simple Project Design',
    titleMy: 'ရိုးရှင်းသော ပရောဂျက် ဒီဇိုင်းရေးဆွဲခြင်း',
    descriptionEn: 'Plan a small project from idea to finished product.',
    descriptionMy:
        'ပရောဂျက်ငယ်တစ်ခုကို အကြံဉာဏ်မှစ၍ ပြီးမြောက်သည့်အထိ စီစဉ်ပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn: 'What is the first stage of a project?',
        questionMy: 'ပရောဂျက်တစ်ခု၏ ပထမဆုံးအဆင့်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Planning the idea and goal',
          'Presenting the final result',
          'Testing the finished product',
          'Celebrating',
        ],
        optionsMy: [
          'အကြံဉာဏ်နှင့် ရည်မှန်းချက်ကို စီစဉ်ခြင်း',
          'ရလဒ်နောက်ဆုံးကို တင်ပြခြင်း',
          'ပြီးမြောက်သောထုတ်ကုန်ကို စမ်းသပ်ခြင်း',
          'ပွဲကျင်းပခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why should you set a timeline for a project?',
        questionMy:
            'ပရောဂျက်တစ်ခုအတွက် အချိန်ဇယားသတ်မှတ်သင့်သည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          'To finish tasks on schedule',
          'It is not important',
          'To waste time',
          'To confuse the team',
        ],
        optionsMy: [
          'လုပ်ငန်းများကို အချိန်မီပြီးဆုံးအောင်လုပ်ရန်',
          'အရေးမကြီးပါ',
          'အချိန်ဖြုန်းရန်',
          'အဖွဲ့ကိုရှုပ်ထွေးစေရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Getting feedback on a project before finishing helps you...',
        questionMy:
            'ပရောဂျက်တစ်ခုမပြီးမီ အကြံပြုချက်ရယူခြင်းသည် သင့်အား ဘာကူညီပေးသနည်း။',
        optionsEn: [
          'Improve it before it is done',
          'Waste more time',
          'Confuse yourself',
          'Start over completely',
        ],
        optionsMy: [
          'မပြီးဆုံးမီ ပိုကောင်းအောင်ပြုပြင်ရန်',
          'အချိန်ပိုဖြုန်းရန်',
          'ကိုယ့်ကိုယ်ကိုယ် ရှုပ်ထွေးစေရန်',
          'အစအဆုံးပြန်စရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which is a good final step for a project?',
        questionMy:
            'ပရောဂျက်တစ်ခုအတွက် ကောင်းသောနောက်ဆုံးအဆင့်တစ်ခုကို ရွေးပါ။',
        optionsEn: [
          'Reviewing what worked and what did not',
          'Deleting all your work',
          'Ignoring the results',
          'Skipping testing',
        ],
        optionsMy: [
          'ဘာအောင်မြင်ပြီး ဘာမအောင်မြင်ကြောင်း ပြန်လည်သုံးသပ်ခြင်း',
          'အလုပ်အားလုံးဖျက်ခြင်း',
          'ရလဒ်များကိုလျစ်လျူရှုခြင်း',
          'စမ်းသပ်ခြင်းကျော်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Working in a team on a project usually requires good...',
        questionMy:
            'ပရောဂျက်တစ်ခုတွင် အဖွဲ့လိုက်လုပ်ဆောင်ရန် ပုံမှန်အားဖြင့် ဘာကောင်းကောင်းလိုအပ်သနည်း။',
        optionsEn: ['Communication', 'Silence', 'Competition only', 'Guessing'],
        optionsMy: [
          'ဆက်သွယ်ပြောဆိုမှု',
          'တိတ်ဆိတ်မှု',
          'ယှဉ်ပြိုင်မှုသာ',
          'ခန့်မှန်းခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-stem-3',
    subject: 'stem',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Intro to Binary',
    titleMy: 'ဘိုင်နရီ (Binary) အနက်ဖွင့်ခြင်း',
    descriptionEn:
        'Understand how computers use 0s and 1s to represent information.',
    descriptionMy:
        'ကွန်ပျူတာများသည် ၀ နှင့် ၁ တို့ကို အသုံးပြု၍ အချက်အလက်များကိုကိုယ်စားပြုပုံကို နားလည်ပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn: 'What two digits does binary use?',
        questionMy: 'binary တွင် မည်သည့်ဂဏန်းနှစ်လုံးကို သုံးသနည်း။',
        optionsEn: ['0 and 1', '1 and 2', '0 and 9', '2 and 3'],
        optionsMy: ['0 နှင့် 1', '1 နှင့် 2', '0 နှင့် 9', '2 နှင့် 3'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why do computers use binary?',
        questionMy: 'ကွန်ပျူတာများသည် binary ကို အဘယ်ကြောင့်သုံးသနည်း။',
        optionsEn: [
          'Electrical signals are easily on or off',
          'It looks nicer',
          'It uses more colors',
          'It is required by law',
        ],
        optionsMy: [
          'လျှပ်စစ်လှိုင်းများသည် အလွယ်တကူ ဖွင့်/ပိတ် ဖြစ်နိုင်သောကြောင့်',
          'ပိုလှသောကြောင့်',
          'အရောင်များများသုံးသောကြောင့်',
          'ဥပဒေအရလိုအပ်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What does the binary number 101 equal in decimal (base 10)?',
        questionMy: 'binary ဂဏန်း 101 သည် ဒဿမ (base 10) တွင် မည်မျှညီမျှသနည်း။',
        optionsEn: ['5', '101', '3', '10'],
        optionsMy: ['5', '101', '3', '10'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'One binary digit (a 0 or a 1) is called a...',
        questionMy: 'binary ဂဏန်းတစ်လုံး (0 သို့ 1) ကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Bit', 'Byte', 'Pixel', 'Code'],
        optionsMy: ['bit', 'byte', 'pixel', 'code'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What does the binary number 10 equal in decimal (base 10)?',
        questionMy: 'binary ဂဏန်း 10 သည် ဒဿမ (base 10) တွင် မည်မျှညီမျှသနည်း။',
        optionsEn: ['2', '10', '1', '20'],
        optionsMy: ['2', '10', '1', '20'],
        correctIndex: 0,
      ),
    ],
  ),
];
