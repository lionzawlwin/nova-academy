import '../../models/child_model.dart';
import 'course_pathway_bank.dart';
import 'mock_quiz_data.dart';
import 'secondary_curriculum_bank.dart';

/// One Primary (Year 1-6) curriculum module: bilingual catalog metadata
/// plus its own fixed set of MCQ [QuizQuestion]s. Structurally mirrors
/// [NurseryActivityDef] in `nursery_kg_activity_bank.dart`, but carries
/// quiz questions instead of match-pairs items since Primary content plays
/// back through [McqQuizScreen] rather than a drag-and-drop activity.
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
/// `mock-year3-science-2`, `mock-secondary1-algebra-2`, or a course-pathway
/// daily lesson id like `course-s1-computing-w1-d1`). Falls back to the
/// legacy subject-only [quizQuestionsForSubject] lookup when [moduleId] is
/// null or not found in [primaryCurriculumBank], [secondaryCurriculumBank],
/// or [courseDailyLessonById] -- covers placeholder nodes shown before any
/// module is seeded, and the pre-existing legacy modules from
/// `mockSeedLearningModules` that predate this registry.
List<QuizQuestion> quizQuestionsForModule(String? moduleId, String subject) {
  if (moduleId != null) {
    for (final activity in primaryCurriculumBank) {
      if (activity.id == moduleId) return activity.questions;
    }
    for (final activity in secondaryCurriculumBank) {
      if (activity.id == moduleId) return activity.questions;
    }
    final courseLesson = courseDailyLessonById(moduleId);
    if (courseLesson != null && courseLesson.quizQuestions.isNotEmpty) {
      return courseLesson.quizQuestions;
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

  PrimaryActivityDef(
    id: 'mock-year5-stem-4',
    subject: 'stem',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Python Variables & Data Types',
    titleMy: 'Python ကိန်းရှင်များနှင့် ဒေတာအမျိုးအစားများ',
    descriptionEn:
        'Take the first step from block logic into real Python syntax: variables, strings, and integers.',
    descriptionMy:
        'ဘလော့ခ်ယုတ္တိမှ အစစ်အမှန် Python syntax သို့ ပထမခြေလှမ်းလှမ်းပါ- ကိန်းရှင်၊ string နှင့် integer များ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            'Which line correctly creates a variable named age with the value 10?',
        questionMy:
            'age ကိန်းရှင်တွင် 10 တန်ဖိုးကို မှန်ကန်စွာသိမ်းဆည်းသော ကုဒ်ကို ရွေးပါ။',
        optionsEn: ['age = 10', 'age == 10', '10 = age', 'age := 10'],
        optionsMy: ['age = 10', 'age == 10', '10 = age', 'age := 10'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What data type is the value "Hello" in Python?',
        questionMy: 'Python တွင် "Hello" တန်ဖိုး၏ ဒေတာအမျိုးအစားမှာ အဘယ်နည်း။',
        optionsEn: ['String', 'Integer', 'Boolean', 'List'],
        optionsMy: ['String', 'Integer', 'Boolean', 'List'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What data type is the value 7 in Python?',
        questionMy: 'Python တွင် 7 တန်ဖိုး၏ ဒေတာအမျိုးအစားမှာ အဘယ်နည်း။',
        optionsEn: ['Integer', 'String', 'Boolean', 'List'],
        optionsMy: ['Integer', 'String', 'Boolean', 'List'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a valid Python variable name?',
        questionMy: 'မှန်ကန်သော Python ကိန်းရှင်အမည်ကို ရွေးပါ။',
        optionsEn: ['student_name', '2ndPlace', 'my-score', 'class'],
        optionsMy: ['student_name', '2ndPlace', 'my-score', 'class'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What will print(5 + 3) output in Python?',
        questionMy: 'Python တွင် print(5 + 3) သည် အဘယ်အရာကို ပြသမည်နည်း။',
        optionsEn: ['8', '53', '5 + 3', 'Error'],
        optionsMy: ['8', '53', '5 + 3', 'Error'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-stem-5',
    subject: 'stem',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Python Code Completion',
    titleMy: 'Python ကုဒ် ဖြည့်စွက်ခြင်း',
    descriptionEn: 'Practice completing short Python code snippets correctly.',
    descriptionMy:
        'တိုတောင်းသော Python ကုဒ်များကို မှန်ကန်စွာ ဖြည့်စွက်လေ့ကျင့်ပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            "Which code correctly stores the text 'Aye' in a variable called name?",
        questionMy:
            "'Aye' ဆိုသောစာသားကို name ကိန်းရှင်တွင် မှန်ကန်စွာသိမ်းဆည်းသော ကုဒ်ကို ရွေးပါ။",
        optionsEn: [
          "name = 'Aye'",
          "name == 'Aye'",
          "'Aye' = name",
          "name := 'Aye'",
        ],
        optionsMy: [
          "name = 'Aye'",
          "name == 'Aye'",
          "'Aye' = name",
          "name := 'Aye'",
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Fill in the blank to add the numbers: total = 5 ___ 3',
        questionMy: 'ဂဏန်းများကိုပေါင်းရန် ကွက်လပ်ကိုဖြည့်ပါ- total = 5 ___ 3',
        optionsEn: ['+', '-', '*', '/'],
        optionsMy: ['+', '-', '*', '/'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which symbol is used to write a comment in Python?',
        questionMy: 'Python တွင် comment ရေးရန် မည်သည့်သင်္ကေတကို သုံးသနည်း။',
        optionsEn: ['#', '//', '<!-- -->', '**'],
        optionsMy: ['#', '//', '<!-- -->', '**'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does print("Hi") do in Python?',
        questionMy: 'Python တွင် print("Hi") သည် ဘာလုပ်သနည်း။',
        optionsEn: [
          'Displays the text Hi',
          'Deletes the text Hi',
          'Stores Hi in a file',
          'Nothing happens',
        ],
        optionsMy: [
          'Hi ဟူသောစာသားကိုပြသသည်',
          'Hi ဟူသောစာသားကိုဖျက်သည်',
          'Hi ကို ဖိုင်တွင်သိမ်းဆည်းသည်',
          'ဘာမျှမဖြစ်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which code correctly checks if x is equal to 10?',
        questionMy: 'x သည် 10 နှင့်ညီမညီ မှန်ကန်စွာစစ်ဆေးသော ကုဒ်ကို ရွေးပါ။',
        optionsEn: ['x == 10', 'x = 10', 'x != 10', 'x < 10'],
        optionsMy: ['x == 10', 'x = 10', 'x != 10', 'x < 10'],
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
  PrimaryActivityDef(
    id: 'mock-year6-stem-4',
    subject: 'stem',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Spotting Syntax Errors',
    titleMy: 'Syntax အမှားများ ရှာဖွေခြင်း',
    descriptionEn:
        'Practice identifying common syntax mistakes in short Python code snippets.',
    descriptionMy:
        'တိုတောင်းသော Python ကုဒ်များရှိ ဖြစ်လေ့ဖြစ်ထရှိသော syntax အမှားများကို ရှာဖွေလေ့ကျင့်ပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn: 'Which line of code has a syntax error?',
        questionMy: 'Syntax အမှားပါသော ကုဒ်တစ်ကြောင်းကို ရွေးပါ။',
        optionsEn: [
          'print(Hello)',
          'print("Hello")',
          'x = 5',
          '# This is a comment',
        ],
        optionsMy: [
          'print(Hello)',
          'print("Hello")',
          'x = 5',
          '# This is a comment',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is wrong with this code: if x = 5:',
        questionMy: 'ဤကုဒ်တွင် ဘာမှားနေသနည်း- if x = 5:',
        optionsEn: [
          'It should use == not =',
          'Nothing is wrong',
          'It needs a semicolon',
          'It needs a capital IF',
        ],
        optionsMy: [
          '== ကိုသုံးသင့်ပြီး = မဟုတ်ပါ',
          'ဘာမှမှားမနေပါ',
          'semicolon လိုအပ်သည်',
          'စာလုံးကြီး IF လိုအပ်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which code snippet is missing a closing quotation mark?',
        questionMy:
            'ပိတ်ကိုးများ (closing quote) ချို့ယွင်းနေသော ကုဒ်ကို ရွေးပါ။',
        optionsEn: [
          'name = "Ko Ko',
          'name = "Ko Ko"',
          'age = 10',
          'print(name)',
        ],
        optionsMy: [
          'name = "Ko Ko',
          'name = "Ko Ko"',
          'age = 10',
          'print(name)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why does the code print(5 + ) cause an error?',
        questionMy: 'print(5 + ) ကုဒ်သည် အဘယ်ကြောင့် error ဖြစ်စေသနည်း။',
        optionsEn: [
          'It is missing a second number',
          'It has too many numbers',
          'It uses the wrong symbol for print',
          'Nothing is wrong',
        ],
        optionsMy: [
          'ဒုတိယဂဏန်းချို့ယွင်းနေသောကြောင့်',
          'ဂဏန်းများလွန်းသောကြောင့်',
          'print အတွက် သင်္ကေတမှားနေသောကြောင့်',
          'ဘာမှမမှားပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these correctly starts a for loop in Python?',
        questionMy:
            'Python တွင် for loop ကို မှန်ကန်စွာစတင်သော ကုဒ်ကို ရွေးပါ။',
        optionsEn: [
          'for i in range(5):',
          'for i in range(5)',
          'for (i=0; i<5; i++)',
          'loop i in 5',
        ],
        optionsMy: [
          'for i in range(5):',
          'for i in range(5)',
          'for (i=0; i<5; i++)',
          'loop i in 5',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-stem-5',
    subject: 'stem',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Predicting Code Output',
    titleMy: 'ကုဒ်ရလဒ် ခန့်မှန်းခြင်း',
    descriptionEn:
        'Read short Python snippets and predict exactly what they print.',
    descriptionMy:
        'တိုတောင်းသော Python ကုဒ်များကို ဖတ်ပြီး ၎င်းတို့ ဘာပြသမည်ကို အတိအကျခန့်မှန်းပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn: 'What will this code print? print(2 * 3)',
        questionMy: 'ဤကုဒ်သည် ဘာပြသမည်နည်း- print(2 * 3)',
        optionsEn: ['6', '5', '23', '32'],
        optionsMy: ['6', '5', '23', '32'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What will this code print? x = 4, y = 2, print(x - y)',
        questionMy: 'ဤကုဒ်သည် ဘာပြသမည်နည်း- x = 4, y = 2, print(x - y)',
        optionsEn: ['2', '4', '6', '8'],
        optionsMy: ['2', '4', '6', '8'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: "What will this code print? print('Nova' + 'Academy')",
        questionMy: "ဤကုဒ်သည် ဘာပြသမည်နည်း- print('Nova' + 'Academy')",
        optionsEn: ['NovaAcademy', 'Nova Academy', 'Nova + Academy', 'Error'],
        optionsMy: ['NovaAcademy', 'Nova Academy', 'Nova + Academy', 'Error'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If x = 10 and we run x = x + 1, what is x now?',
        questionMy:
            'x = 10 ဖြစ်ပြီး x = x + 1 ကို run လုပ်လျှင် x ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['11', '10', '1', 'Error'],
        optionsMy: ['11', '10', '1', 'Error'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What will print(10 / 2) output in Python?',
        questionMy: 'Python တွင် print(10 / 2) သည် ဘာပြသမည်နည်း။',
        optionsEn: ['5.0', '5', '10/2', 'Error'],
        optionsMy: ['5.0', '5', '10/2', 'Error'],
        correctIndex: 0,
      ),
    ],
  ),

  // ================= STEAM EXPANSION: CODING & ENGINEERING =================
  // New `coding`/`engineering` subject keys threaded through every Primary
  // grade -- Year 1-3 stays block/sequencing-level ("Interactive STEAM &
  // Block Logic"), Year 4-6 transitions into text-based Python-style
  // syntax reasoning ("Applied STEAM & Intro to Syntax"), matching the
  // pedagogical progression these two new subjects were added for. Shows
  // up automatically as new path nodes on `PrimaryHomeScreen` (module list
  // is grade-filtered and rendered dynamically, no fixed subject grid to
  // extend here unlike Nursery/KG or Secondary/IGCSE).

  // ------------------------------ YEAR 1 ------------------------------
  PrimaryActivityDef(
    id: 'mock-year1-coding-1',
    subject: 'coding',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Follow the Steps',
    titleMy: 'အဆင့်ဆင့် လိုက်နာပါ',
    descriptionEn:
        'Learn to give step-by-step instructions, just like a computer program.',
    descriptionMy:
        'ကွန်ပျူတာ ပရိုဂရမ်းတစ်ခုကဲ့သို့ အဆင့်ဆင့် ညွှန်ကြားချက်များ ပေးနည်းကို လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn:
            'Which comes first when you brush your teeth: wet the brush, or put on toothpaste?',
        questionMy:
            'သွားတိုက်ချိန်တွင် အဘယ်အရာက အရင်လုပ်ရမည်နည်း- ဘရတ်ကို ရေအရင်စိုစေခြင်း၊ သို့မဟုတ် သွားတိုက်ဆေးအရင်တင်ခြင်း။',
        optionsEn: [
          'Wet the brush first',
          'Put on toothpaste first',
          'Order does not matter',
          'Neither is needed',
        ],
        optionsMy: [
          'ဘရတ်ကို ရေအရင်စိုစေပါ',
          'သွားတိုက်ဆေးအရင်တင်ပါ',
          'အစီအစဉ်က အရေးမကြီးပါ',
          'ဘာမှမလိုပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A set of step-by-step instructions is called a...',
        questionMy: 'အဆင့်ဆင့် ညွှန်ကြားချက်များစုကို ဘာခေါ်သနည်း။',
        optionsEn: ['Sequence', 'Color', 'Number', 'Shape'],
        optionsMy: ['အစီအစဉ် (Sequence)', 'အရောင်', 'ဂဏန်း', 'ပုံသဏ္ဌာန်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If a robot follows: "move forward, move forward, turn right" -- how many steps does it take before turning?',
        questionMy:
            'ရိုဘော့တစ်ခုသည် "ရှေ့သို့သွားပါ၊ ရှေ့သို့သွားပါ၊ ညာသို့လှည့်ပါ" ကိုလိုက်နာပါက မလှည့်မီ အဆင့်မည်မျှလုပ်ဆောင်သနည်း။',
        optionsEn: ['1', '2', '3', '4'],
        optionsMy: ['၁', '၂', '၃', '၄'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What should you do if a set of steps does not work?',
        questionMy: 'အဆင့်များသည် အလုပ်မဖြစ်ပါက သင်ဘာလုပ်သင့်သနည်း။',
        optionsEn: [
          'Check each step and fix the mistake',
          'Give up',
          'Ignore it',
          'Start a different activity',
        ],
        optionsMy: [
          'အဆင့်တစ်ခုစီကို စစ်ဆေးပြီး အမှားကို ပြင်ပါ',
          'လက်လျှော့ပါ',
          'လျစ်လျူရှုပါ',
          'အခြားလုပ်ဆောင်ချက်ကို စလုပ်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a command a robot can follow?',
        questionMy:
            'အောက်ပါတို့ထဲမှ ရိုဘော့တစ်ခုလိုက်နာနိုင်သော အမိန့်စကားလုံးမှာ အဘယ်နည်း။',
        optionsEn: ['Move forward', 'Purple', 'Seven', 'Tuesday'],
        optionsMy: ['ရှေ့သို့သွားပါ', 'ခရမ်းရောင်', 'ခုနစ်', 'အင်္ဂါနေ့'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-engineering-1',
    subject: 'engineering',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Simple Machines Around Us',
    titleMy: 'ကျွန်ုပ်တို့ ပတ်ဝန်းကျင်ရှိ ရိုးရှင်းသောစက်များ',
    descriptionEn: 'Discover levers, wheels, and ramps that make work easier.',
    descriptionMy:
        'အလုပ်ကို ပိုမိုလွယ်ကူစေသည့် ချိန်ခွင်၊ ဘီးနှင့် စောင်းကုန်းလမ်းများကို ရှာဖွေလေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'A seesaw is an example of which simple machine?',
        questionMy:
            'ခုန်တက်ခုန်ဆင်း (seesaw) သည် မည်သည့်ရိုးရှင်းသောစက် ဥပမာဖြစ်သနည်း။',
        optionsEn: ['Lever', 'Wheel', 'Screw', 'Pulley'],
        optionsMy: ['ချိန်ခွင် (Lever)', 'ဘီး', 'ဝက်အူ', 'ကြိုးဆွဲစနစ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why do trucks and cars use wheels?',
        questionMy:
            'ထရပ်ကားနှင့် ကားများသည် ဘာကြောင့် ဘီးများကို အသုံးပြုသနည်း။',
        optionsEn: [
          'To move more easily',
          'To look nice',
          'To make noise',
          'To become heavier',
        ],
        optionsMy: [
          'ပိုမိုလွယ်ကူစွာ ရွေ့လျားနိုင်ရန်',
          'လှပစေရန်',
          'အသံမြည်စေရန်',
          'ပိုလေးလံစေရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A ramp helps you move a heavy box because it...',
        questionMy:
            'စောင်းကုန်းလမ်းသည် လေးလံသောသေတ္တာကို ရွှေ့ရန် အထောက်အကူဖြစ်သည်မှာ ဘာကြောင့်နည်း။',
        optionsEn: [
          'Spreads the effort over a longer, gentler path',
          'Makes the box lighter',
          'Makes the box smaller',
          'Removes the need to push',
        ],
        optionsMy: [
          'ကြိုးစားအားကို ရှည်လျားပြီး ညင်သာသောလမ်းကြောင်းတစ်လျှောက် ဖြန့်ကျက်ပေးသည်',
          'သေတ္တာကို ပေါ့သွားစေသည်',
          'သေတ္တာကို သေးသွားစေသည်',
          'တွန်းရန်လိုအပ်ချက်ကို ဖယ်ရှားပေးသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which tool is a simple machine used to lift or pry things?',
        questionMy:
            'အရာဝတ္ထုများကို ချီမြှောက်ရန် (သို့) ဖောက်ရန် အသုံးပြုသော ရိုးရှင်းသောစက်ကိရိယာမှာ အဘယ်နည်း။',
        optionsEn: ['Crowbar (lever)', 'Spoon', 'Pillow', 'Umbrella'],
        optionsMy: ['သံလုံးကျင်း (Lever)', 'ဇွန်း', 'ခေါင်းအုံး', 'ထီး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A screw is a simple machine shaped like a spiral ramp. What is it mainly used for?',
        questionMy:
            'ဝက်အူသည် စောင်းကုန်းလှည့်ပတ်ပုံသဏ္ဌာန်ရှိသော ရိုးရှင်းသောစက်တစ်ခုဖြစ်သည်။ ၎င်းကို အဓိကအားဖြင့် ဘာအတွက်အသုံးပြုသနည်း။',
        optionsEn: [
          'Holding things together',
          'Making light',
          'Cooking food',
          'Playing music',
        ],
        optionsMy: [
          'အရာများကို ပေါင်းစည်းထိန်းသိမ်းရန်',
          'အလင်းရောင်ပြုလုပ်ရန်',
          'အစားအစာချက်ပြုတ်ရန်',
          'ဂီတဖွင့်ရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ------------------------------ YEAR 2 ------------------------------
  PrimaryActivityDef(
    id: 'mock-year2-coding-1',
    subject: 'coding',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Loops and Repeats',
    titleMy: 'ထပ်ခါထပ်ခါ လုပ်ဆောင်ခြင်း (Loop)',
    descriptionEn:
        'Discover how a loop lets a computer repeat steps without writing them over and over.',
    descriptionMy:
        'ကွန်ပျူတာသည် အဆင့်များကို အထပ်ထပ်မရေးဘဲ ထပ်ခါထပ်ခါ ပြုလုပ်စေရန် Loop တစ်ခုက မည်သို့ကူညီကြောင်း ရှာဖွေလေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'A block that repeats the same steps is called a...',
        questionMy:
            'တူညီသောအဆင့်များကို ထပ်ခါထပ်ခါလုပ်ဆောင်စေသော ဘလောက်ကို ဘာခေါ်သနည်း။',
        optionsEn: ['Loop', 'Color', 'Sound', 'Picture'],
        optionsMy: ['Loop', 'အရောင်', 'အသံ', 'ပုံ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If "move forward" is repeated 3 times inside a loop, how many times does the robot move?',
        questionMy:
            '"ရှေ့သို့သွားပါ" ကို Loop တစ်ခုအတွင်း ၃ ကြိမ်ထပ်လုပ်ပါက ရိုဘော့သည် အကြိမ်မည်မျှ ရွှေ့သနည်း။',
        optionsEn: ['1', '2', '3', '4'],
        optionsMy: ['၁', '၂', '၃', '၄'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'Using a loop instead of copying the same block many times is useful because it...',
        questionMy:
            'တူညီသောဘလောက်ကို အကြိမ်ကြိမ်ကူးမည့်အစား Loop ကိုအသုံးပြုခြင်းသည် အသုံးဝင်သည်မှာ ဘာကြောင့်နည်း။',
        optionsEn: [
          'Makes the instructions shorter and easier to change',
          'Makes the program slower',
          'Adds more colors',
          'Deletes the program',
        ],
        optionsMy: [
          'ညွှန်ကြားချက်များကို ပိုတိုစေပြီး ပြင်ဆင်ရလွယ်ကူစေသည်',
          'ပရိုဂရမ်ကို ပိုနှေးစေသည်',
          'အရောင်ပိုများစေသည်',
          'ပရိုဂရမ်ကို ဖျက်ပစ်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A dance sequence is: clap, spin, clap, spin, clap, spin. What is being repeated?',
        questionMy:
            'ကလေးက ကလိန်း စီစဉ်ချက်မှာ လက်ခုပ်၊ လှည့်၊ လက်ခုပ်၊ လှည့်၊ လက်ခုပ်၊ လှည့် ဖြစ်သည်။ ဘာက ထပ်ခါထပ်ခါဖြစ်နေသနည်း။',
        optionsEn: [
          'Clap then spin',
          'Just clap',
          'Just spin',
          'Nothing repeats',
        ],
        optionsMy: [
          'လက်ခုပ်ပြီးလှည့်ခြင်း',
          'လက်ခုပ်သာ',
          'လှည့်ခြင်းသာ',
          'ဘာမှမထပ်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which block would you use to make a character jump 3 times without writing "jump" three separate times?',
        questionMy:
            '"ခုန်ပါ" ကို သီးခြားသုံးကြိမ်မရေးဘဲ ဇာတ်ကောင်ကို ၃ ကြိမ်ခုန်စေရန် မည်သည့်ဘလောက်ကို အသုံးပြုမည်နည်း။',
        optionsEn: [
          'A loop (repeat) block',
          'A color block',
          'A sound block',
          'A delete block',
        ],
        optionsMy: [
          'Loop (ထပ်လုပ်) ဘလောက်',
          'အရောင်ဘလောက်',
          'အသံဘလောက်',
          'ဖျက်ဘလောက်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-engineering-1',
    subject: 'engineering',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Building Strong Structures',
    titleMy: 'ခိုင်မာသော အဆောက်အအုံများ တည်ဆောက်ခြင်း',
    descriptionEn:
        'Explore why some shapes and foundations make buildings and bridges stronger.',
    descriptionMy:
        'အဘယ်ကြောင့် ပုံသဏ္ဌာန်အချို့နှင့် အခြေခံအုတ်မြစ်များသည် အဆောက်အအုံနှင့် တံတားများကို ပိုမိုခိုင်မာစေကြောင်း ရှာဖွေလေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn:
            'Which shape is known to be the strongest for building bridges?',
        questionMy:
            'တံတားများ တည်ဆောက်ရန်အတွက် အခိုင်မာဆုံးဟု လူသိများသောပုံသဏ္ဌာန်မှာ အဘယ်နည်း။',
        optionsEn: ['Triangle', 'Circle', 'Star', 'Oval'],
        optionsMy: ['တြိဂံ', 'စက်ဝိုင်း', 'ကြယ်', 'ဥပုံ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why do tall buildings need a strong foundation?',
        questionMy:
            'အဆောက်အအုံမြင့်များသည် အဘယ့်ကြောင့် ခိုင်မာသော အခြေခံအုတ်မြစ်လိုအပ်သနည်း။',
        optionsEn: [
          'To hold up the weight of the building safely',
          'To make the building taller',
          'To make it colorful',
          'It is not needed',
        ],
        optionsMy: [
          'အဆောက်အအုံ၏အလေးချိန်ကို ဘေးကင်းစွာ ထမ်းဆောင်ရန်',
          'အဆောက်အအုံကို ပိုမြင့်စေရန်',
          'ပန်းရောင်ဖြစ်စေရန်',
          'မလိုအပ်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which material would be best for building a strong tower with blocks?',
        questionMy:
            'ဘလောက်များဖြင့် ခိုင်မာသောတာဝါကို တည်ဆောက်ရန် ကောင်းမွန်ဆုံးပစ္စည်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Sturdy wooden blocks',
          'Wet paper',
          'Soft pillows',
          'Water',
        ],
        optionsMy: [
          'ခိုင်ခံ့သော သစ်သားဘလောက်များ',
          'စိုစွတ်သောစက္ကူ',
          'နူးညံ့သောခေါင်းအုံး',
          'ရေ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'An engineer tests a bridge model before building the real one so that they can...',
        questionMy:
            'အင်ဂျင်နီယာတစ်ဦးသည် အစစ်အမှန်တံတားကို မတည်ဆောက်မီ ပုံစံငယ်ကို စမ်းသပ်ခြင်းမှာ ဘာအတွက်နည်း။',
        optionsEn: [
          'Find problems and fix them early',
          'Waste materials',
          'Make it look pretty',
          'Skip planning',
        ],
        optionsMy: [
          'ပြဿနာများကို အစောပိုင်းတွင်ရှာဖွေပြီး ပြင်ဆင်ရန်',
          'ပစ္စည်းများ ဖြုန်းတီးရန်',
          'လှပအောင်ပြုလုပ်ရန်',
          'အစီအစဉ်ချမှတ်ခြင်းကို ကျော်ရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do engineers test a bridge model with small weights before adding heavy ones?',
        questionMy:
            'အင်ဂျင်နီယာများသည် လေးလံသောအလေးများမတင်မီ ပုံစံငယ်တံတားကို အလေးချိန်အနည်းငယ်ဖြင့် အရင်စမ်းသပ်ကြသည်မှာ ဘာကြောင့်နည်း။',
        optionsEn: [
          'To find the safe limit step by step',
          'To make it break quickly',
          'To waste materials',
          'It is not necessary',
        ],
        optionsMy: [
          'ဘေးကင်းသောကန့်သတ်ချက်ကို အဆင့်ဆင့်ရှာဖွေရန်',
          'မြန်မြန်ပြိုကျစေရန်',
          'ပစ္စည်းများဖြုန်းတီးရန်',
          'မလိုအပ်ပါ',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ------------------------------ YEAR 3 ------------------------------
  PrimaryActivityDef(
    id: 'mock-year3-coding-1',
    subject: 'coding',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'If This, Then That',
    titleMy: 'ဒါဆိုရင် ဒါလုပ်မယ် (If-Then)',
    descriptionEn:
        'Learn how programs make decisions using "if" and "then" logic.',
    descriptionMy:
        '"If" နှင့် "Then" ယုတ္တိကို အသုံးပြု၍ ပရိုဂရမ်များ ဆုံးဖြတ်ချက်ချပုံကို လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'If it is raining, then you should...',
        questionMy: 'မိုးရွာနေလျှင် သင်ဘာလုပ်သင့်သနည်း။',
        optionsEn: [
          'Take an umbrella',
          'Wear sunglasses',
          'Go swimming outside',
          'Do nothing different',
        ],
        optionsMy: [
          'ထီးယူသွားပါ',
          'နေကာမျက်မှန်တပ်ပါ',
          'ပြင်ပတွင် ရေကူးသွားပါ',
          'ဘာမှမပြောင်းလဲပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'In "if-then" logic, the "if" part is called the...',
        questionMy: '"if-then" ယုတ္တိတွင် "if" အပိုင်းကို ဘာခေါ်သနည်း။',
        optionsEn: ['Condition', 'Answer', 'Color', 'Loop'],
        optionsMy: ['အခြေအနေ (Condition)', 'အဖြေ', 'အရောင်', 'Loop'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A robot follows: "if the light is red, stop; else, go." The light is green. What does the robot do?',
        questionMy:
            'ရိုဘော့တစ်ခုက "မီးနီဖြစ်လျှင် ရပ်ပါ၊ မဟုတ်လျှင် သွားပါ" ကိုလိုက်နာသည်။ မီးစိမ်းဖြစ်နေသည်။ ရိုဘော့သည် ဘာလုပ်မည်နည်း။',
        optionsEn: ['Go', 'Stop', 'Turn around', 'Nothing'],
        optionsMy: ['သွားသည်', 'ရပ်သည်', 'ပြန်လှည့်သည်', 'ဘာမှမလုပ်ပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A sequence of blocks is not working correctly. What should you do first?',
        questionMy:
            'ဘလောက်စီစဉ်ချက်သည် မှန်ကန်စွာအလုပ်မလုပ်ပါ။ သင်ဘာအရင်လုပ်သင့်သနည်း။',
        optionsEn: [
          'Trace through each step to find the mistake',
          'Delete everything and give up',
          'Ignore the error',
          'Add random new blocks',
        ],
        optionsMy: [
          'အမှားကိုရှာဖွေရန် အဆင့်တစ်ခုစီကို လိုက်စစ်ပါ',
          'အားလုံးဖျက်ပြီး လက်လျှော့ပါ',
          'အမှားကို လျစ်လျူရှုပါ',
          'ကျပန်းဘလောက်အသစ်များထည့်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is a "bug" in a computer program?',
        questionMy: 'ကွန်ပျူတာပရိုဂရမ်တစ်ခုရှိ "Bug" ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A mistake that makes it not work correctly',
          'A real insect',
          'A type of loop',
          'A new feature',
        ],
        optionsMy: [
          'မှန်ကန်စွာအလုပ်မလုပ်စေသော အမှားတစ်ခု',
          'အစစ်အမှန် အင်းဆက်ပိုးမွှား',
          'Loop အမျိုးအစားတစ်ခု',
          'လုပ်ဆောင်ချက်အသစ်တစ်ခု',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-engineering-1',
    subject: 'engineering',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'The Engineering Design Process',
    titleMy: 'အင်ဂျင်နီယာ ဒီဇိုင်း လုပ်ငန်းစဉ်',
    descriptionEn:
        'Follow the steps engineers use to solve problems: ask, imagine, plan, create, improve.',
    descriptionMy:
        'အင်ဂျင်နီယာများ ပြဿနာဖြေရှင်းရန် အသုံးပြုသောအဆင့်များ- မေးမြန်းခြင်း၊ စိတ်ကူးထုတ်ခြင်း၊ စီစဉ်ခြင်း၊ ဖန်တီးခြင်း၊ တိုးတက်အောင်ပြုလုပ်ခြင်းတို့ကို လိုက်နာလေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'What is the first step of the engineering design process?',
        questionMy: 'အင်ဂျင်နီယာဒီဇိုင်း လုပ်ငန်းစဉ်၏ ပထမအဆင့်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Ask: what is the problem?',
          'Build the final product',
          'Sell the product',
          'Forget the idea',
        ],
        optionsMy: [
          'မေးမြန်းခြင်း- ပြဿနာက ဘာလဲ',
          'နောက်ဆုံးထုတ်ကုန်ကို တည်ဆောက်ခြင်း',
          'ထုတ်ကုန်ကို ရောင်းချခြင်း',
          'အကြံဉာဏ်ကို မေ့ပစ်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'After building a first version, an engineer should...',
        questionMy:
            'ပထမဆုံးပုံစံကို တည်ဆောက်ပြီးနောက် အင်ဂျင်နီယာတစ်ဦး ဘာလုပ်သင့်သနည်း။',
        optionsEn: [
          'Test it and improve it',
          'Never look at it again',
          'Sell it immediately',
          'Hide it',
        ],
        optionsMy: [
          'စမ်းသပ်ပြီး တိုးတက်အောင်ပြုလုပ်ပါ',
          'နောက်ထပ် ဘယ်တော့မှ မကြည့်တော့ပါ',
          'ချက်ချင်းရောင်းချပါ',
          'ဖျောက်ထားပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why do engineers make a plan before building?',
        questionMy:
            'အင်ဂျင်နီယာများသည် မတည်ဆောက်မီ အဘယ့်ကြောင့် အစီအစဉ်ဆွဲကြသနည်း။',
        optionsEn: [
          'To save time and materials by thinking ahead',
          'Because it is required by law only',
          'To make the project take longer',
          'Plans are not actually useful',
        ],
        optionsMy: [
          'ကြိုတင်တွေးခေါ်ခြင်းဖြင့် အချိန်နှင့်ပစ္စည်းများ ချွေတာရန်',
          'ဥပဒေအရလိုအပ်၍ သာဖြစ်သည်',
          'ပရောဂျက်ကို ပိုကြာစေရန်',
          'အစီအစဉ်များသည် အမှန်တကယ် အသုံးမဝင်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If a paper bridge collapses under a small weight, what should an engineer do?',
        questionMy:
            'စက္ကူတံတားသည် အလေးချိန်အနည်းငယ်အောက်တွင် ပြိုကျပါက အင်ဂျင်နီယာတစ်ဦးသည် ဘာလုပ်သင့်သနည်း။',
        optionsEn: [
          'Redesign it to be stronger and test again',
          'Give up on bridges forever',
          'Ignore the collapse',
          'Blame the weight',
        ],
        optionsMy: [
          'ပိုမိုခိုင်မာအောင် ပြန်လည်ဒီဇိုင်းဆွဲပြီး ထပ်စမ်းသပ်ပါ',
          'တံတားများကို ထာဝစဉ် လက်လျှော့ပါ',
          'ပြိုကျမှုကို လျစ်လျူရှုပါ',
          'အလေးချိန်ကို အပြစ်တင်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In the design process (ask, imagine, plan, create, improve), what comes right before "create"?',
        questionMy:
            'ဒီဇိုင်းလုပ်ငန်းစဉ် (မေးမြန်း၊ စိတ်ကူးထုတ်၊ စီစဉ်၊ ဖန်တီး၊ တိုးတက်အောင်ပြုလုပ်) တွင် "ဖန်တီးခြင်း" မတိုင်မီ တိုက်ရိုက်လာသည့်အဆင့်မှာ အဘယ်နည်း။',
        optionsEn: ['Plan', 'Sell', 'Forget', 'Test only'],
        optionsMy: [
          'စီစဉ်ခြင်း',
          'ရောင်းချခြင်း',
          'မေ့ပစ်ခြင်း',
          'စမ်းသပ်ခြင်းသာ',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ------------------------------ YEAR 4 ------------------------------
  PrimaryActivityDef(
    id: 'mock-year4-coding-1',
    subject: 'coding',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'What Is a Variable?',
    titleMy: 'Variable ဆိုတာ ဘာလဲ',
    descriptionEn:
        'Take your first step from block-based logic into text-based code by learning what a variable stores.',
    descriptionMy:
        'Variable တစ်ခုက ဘာကို သိမ်းဆည်းထားကြောင်း လေ့လာခြင်းဖြင့် Block-based logic မှ စာသားအခြေခံကုဒ်သို့ ပထမဆုံးခြေလှမ်းကို လှမ်းပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'A variable is best described as a...',
        questionMy: 'Variable တစ်ခုကို အကောင်းဆုံးဖော်ပြရလျှင် ဘာဖြစ်သနည်း။',
        optionsEn: [
          'Labeled box that stores a value',
          'A picture on the screen',
          'A type of loop',
          'An error message',
        ],
        optionsMy: [
          'တန်ဖိုးတစ်ခုကို သိမ်းထားသော အမည်တပ်ထားသည့် သေတ္တာ',
          'မျက်နှာပြင်ပေါ်ရှိပုံ',
          'Loop အမျိုးအစားတစ်ခု',
          'အမှားစာတန်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If x = 5, what does print(x) show?',
        questionMy: 'x = 5 ဖြစ်ပါက print(x) သည် ဘာပြသမည်နည်း။',
        optionsEn: ['5', 'x', 'print', 'Nothing'],
        optionsMy: ['5', 'x', 'print', 'ဘာမှမပြပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What happens after we run: score = 3, then score = score + 2?',
        questionMy:
            'score = 3 ဟု သတ်မှတ်ပြီး score = score + 2 ကို run လုပ်ပါက ဘာဖြစ်မည်နည်း။',
        optionsEn: [
          'score becomes 5',
          'score stays 3',
          'score becomes 2',
          'An error occurs',
        ],
        optionsMy: [
          'score သည် 5 ဖြစ်သွားသည်',
          'score သည် 3 အတိုင်းရှိနေသည်',
          'score သည် 2 ဖြစ်သွားသည်',
          'အမှားတစ်ခုဖြစ်ပေါ်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do programmers use variables instead of typing the same number everywhere?',
        questionMy:
            'ပရိုဂရမ်မာများသည် နေရာတိုင်းတွင် ဂဏန်းတူတူ ရိုက်မည့်အစား Variable ကို အသုံးပြုသည်မှာ ဘာကြောင့်နည်း။',
        optionsEn: [
          'The value can be changed easily in one place',
          'It makes the code longer',
          'It is required by the computer to be slow',
          'Numbers cannot be typed directly',
        ],
        optionsMy: [
          'တန်ဖိုးကို တစ်နေရာတည်းတွင် လွယ်ကူစွာပြောင်းလဲနိုင်ရန်',
          'ကုဒ်ကို ပိုရှည်စေသည်',
          'ကွန်ပျူတာကို နှေးအောင်လုပ်ရန် လိုအပ်သည်',
          'ဂဏန်းများကို တိုက်ရိုက်ရိုက်၍မရပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            "Which of these is a valid variable name for storing a player's score?",
        questionMy:
            'ကစားသမား၏ Score ကို သိမ်းဆည်းရန် အောက်ပါတို့ထဲမှ မှန်ကန်သော Variable အမည်မှာ အဘယ်နည်း။',
        optionsEn: ['score', '5', '+', 'empty text'],
        optionsMy: ['score', '5', '+', 'အလွတ်စာသား'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-engineering-1',
    subject: 'engineering',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Gears and Motion',
    titleMy: 'ဂီယာများနှင့် လှုပ်ရှားမှု',
    descriptionEn:
        'Explore how gears transfer force and change speed and direction.',
    descriptionMy:
        'ဂီယာများသည် အားကို မည်သို့လွှဲပြောင်းပေးပြီး အလျင်နှင့်ဦးတည်ချက်ကို မည်သို့ပြောင်းလဲပေးကြောင်း ရှာဖွေလေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is the main job of a gear in a machine?',
        questionMy: 'စက်ယန္တရားတစ်ခုအတွင်း ဂီယာ၏ အဓိကတာဝန်မှာ အဘယ်နည်း။',
        optionsEn: [
          'To transfer motion and force between parts',
          'To make the machine colorful',
          'To store electricity',
          'To make noise only',
        ],
        optionsMy: [
          'အစိတ်အပိုင်းများကြား လှုပ်ရှားမှုနှင့်အားကို လွှဲပြောင်းပေးရန်',
          'စက်ယန္တရားကို ရောင်စုံဖြစ်စေရန်',
          'လျှပ်စစ်သိုလှောင်ရန်',
          'အသံသာမြည်စေရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A small gear turning a much larger gear will make the large gear move...',
        questionMy:
            'ဂီယာသေးငယ်တစ်ခုက ဂီယာကြီးများစွာကို လှည့်ပေးလျှင် ဂီယာကြီးသည် မည်သို့ ရွေ့လျားမည်နည်း။',
        optionsEn: ['Slower', 'Faster', 'Not at all', 'Sideways only'],
        optionsMy: ['ပိုနှေးစွာ', 'ပိုမြန်စွာ', 'လုံးဝမရွေ့ပါ', 'ဘေးတိုက်သာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Bicycles use gears mainly to help riders...',
        questionMy:
            'စက်ဘီးများသည် ဂီယာများကို အဓိကအားဖြင့် စီးနင်းသူများကို ဘာအတွက် ကူညီရန် အသုံးပြုသနည်း။',
        optionsEn: [
          'Pedal more easily on hills and flat ground',
          'Make the bicycle heavier',
          'Change the color of the bicycle',
          'Stop the bicycle instantly',
        ],
        optionsMy: [
          'တောင်ကုန်းနှင့် ညီညာမြေပြင်တွင် ပိုမိုလွယ်ကူစွာ ဖိနင်းနိုင်ရန်',
          'စက်ဘီးကို ပိုလေးလံစေရန်',
          'စက်ဘီး၏အရောင်ကို ပြောင်းလဲရန်',
          'စက်ဘီးကို ချက်ချင်းရပ်တန့်စေရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A clock uses gears to...',
        questionMy: 'နာရီတစ်လုံးသည် ဂီယာများကို ဘာအတွက်အသုံးပြုသနည်း။',
        optionsEn: [
          'Move the hands at controlled, different speeds',
          'Make the clock louder',
          'Change the clock face color',
          'Charge the battery',
        ],
        optionsMy: [
          'လက်တံများကို ထိန်းချုပ်ထားသော အလျင်ကွဲပြားစွာဖြင့် ရွေ့စေရန်',
          'နာရီကို ပိုကျယ်လောင်စေရန်',
          'နာရီမျက်နှာပြင်အရောင်ကို ပြောင်းရန်',
          'ဘက်ထရီအားသွင်းရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A gear train made of several connected gears is mainly used to...',
        questionMy:
            'ဆက်စပ်ဂီယာများစွာဖြင့်ပြုလုပ်ထားသော Gear Train ကို အဓိကအားဖြင့် ဘာအတွက်အသုံးပြုသနည်း။',
        optionsEn: [
          'Change speed and direction across multiple parts',
          'Make the machine invisible',
          'Store water',
          'Create sound only',
        ],
        optionsMy: [
          'အစိတ်အပိုင်းများစွာတွင် အလျင်နှင့်ဦးတည်ချက်ကို ပြောင်းလဲပေးရန်',
          'စက်ယန္တရားကို မမြင်ရအောင်ပြုလုပ်ရန်',
          'ရေကို သိုလှောင်ရန်',
          'အသံကိုသာ ဖန်တီးရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ------------------------------ YEAR 5 ------------------------------
  PrimaryActivityDef(
    id: 'mock-year5-coding-1',
    subject: 'coding',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Conditional Statements in Code',
    titleMy: 'ကုဒ်ထဲက Conditional Statement များ',
    descriptionEn:
        'Practice reading simple if/else code and predicting what it will do.',
    descriptionMy:
        'ရိုးရှင်းသော if/else ကုဒ်များကို ဖတ်ပြီး ၎င်းက ဘာလုပ်ဆောင်မည်ကို ခန့်မှန်းလေ့ကျင့်ပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            'age = 12. Code: if age >= 13: print("Teen") else: print("Kid"). What prints?',
        questionMy:
            'age = 12 ။ ကုဒ်- if age >= 13- print("Teen") else- print("Kid") ။ ဘာပြသမည်နည်း။',
        optionsEn: ['Kid', 'Teen', 'age', '12'],
        optionsMy: ['Kid', 'Teen', 'age', '12'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'score = 85. Code: if score >= 90: print("A") else: print("B"). What prints?',
        questionMy:
            'score = 85 ။ ကုဒ်- if score >= 90- print("A") else- print("B") ။ ဘာပြသမည်နည်း။',
        optionsEn: ['B', 'A', 'score', 'Error'],
        optionsMy: ['B', 'A', 'score', 'Error'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does "else" mean in an if/else statement?',
        questionMy:
            'if/else statement တွင် "else" ဆိုသည်မှာ ဘာအဓိပ္ပာယ်ရှိသနည်း။',
        optionsEn: [
          'What happens when the condition is false',
          'What happens when the condition is true',
          'A type of loop',
          'A variable name',
        ],
        optionsMy: [
          'အခြေအနေမှားနေချိန် ဖြစ်ပေါ်မည့်အရာ',
          'အခြေအနေမှန်နေချိန် ဖြစ်ပေါ်မည့်အရာ',
          'Loop အမျိုးအစားတစ်ခု',
          'Variable အမည်တစ်ခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'temp = 30. Code: if temp > 35: print("Hot") elif temp > 20: print("Warm") else: print("Cool"). What prints?',
        questionMy:
            'temp = 30 ။ ကုဒ်- if temp > 35- print("Hot") elif temp > 20- print("Warm") else- print("Cool") ။ ဘာပြသမည်နည်း။',
        optionsEn: ['Warm', 'Hot', 'Cool', 'temp'],
        optionsMy: ['Warm', 'Hot', 'Cool', 'temp'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A condition such as "score > 100" always evaluates to either...',
        questionMy:
            '"score > 100" ကဲ့သို့သော Condition တစ်ခုသည် အမြဲတမ်း မည်သည့်အဖြေနှစ်ခုအနက်တစ်ခုအဖြစ် အဖြေထွက်သနည်း။',
        optionsEn: ['True or False', 'A color', 'A loop', 'A picture'],
        optionsMy: ['True သို့မဟုတ် False', 'အရောင်', 'Loop', 'ပုံ'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-engineering-1',
    subject: 'engineering',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Engineering for a Better World',
    titleMy: 'ကမ္ဘာကြီးအတွက် အင်ဂျင်နီယာပညာ',
    descriptionEn:
        'Learn how engineers design solutions like solar panels and wind turbines to help the planet.',
    descriptionMy:
        'အင်ဂျင်နီယာများသည် ကမ္ဘာမြေအတွက် နေရောင်ခြည်ဓာတ်အားခွက်နှင့် လေတာဘိုင်းကဲ့သို့သော ဖြေရှင်းချက်များကို မည်သို့ဒီဇိုင်းဆွဲကြောင်း လေ့လာပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn: 'Solar panels generate electricity from...',
        questionMy:
            'နေရောင်ခြည်ဓာတ်အားခွက်များသည် လျှပ်စစ်ကို မှမည်သည့်အရာမှ ထုတ်လုပ်သနည်း။',
        optionsEn: ['Sunlight', 'Wind', 'Water', 'Coal'],
        optionsMy: ['နေရောင်ခြည်', 'လေ', 'ရေ', 'ကျောက်မီးသွေး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A wind turbine converts wind energy into...',
        questionMy:
            'လေတာဘိုင်းတစ်ခုသည် လေစွမ်းအင်ကို မည်သည့်အရာအဖြစ် ပြောင်းလဲပေးသနည်း။',
        optionsEn: ['Electricity', 'Sound only', 'Heat only', 'Nothing'],
        optionsMy: ['လျှပ်စစ်ဓာတ်အား', 'အသံသာ', 'အပူသာ', 'ဘာမှမဟုတ်ပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why might an engineer design a water filter for a village?',
        questionMy:
            'အင်ဂျင်နီယာတစ်ဦးသည် ရွာတစ်ရွာအတွက် ရေစစ်ကိရိယာကို ဒီဇိုင်းဆွဲရသည်မှာ ဘာကြောင့်နည်း။',
        optionsEn: [
          'To help people get clean, safe drinking water',
          'To make the village noisier',
          'Because it is the cheapest possible project',
          'To use up spare materials',
        ],
        optionsMy: [
          'လူများအား သန့်ရှင်းလုံခြုံသောသောက်ရေရရှိစေရန်',
          'ရွာကို ပိုကျယ်လောင်စေရန်',
          'ရနိုင်ဆုံးစျေးသက်သာသောပရောဂျက်ဖြစ်၍',
          'ပစ္စည်းပိုများကို သုံးဖြုန်းရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Recycling old plastic into new products is an example of engineers thinking about...',
        questionMy:
            'အဟောင်းပလတ်စတစ်ကို ထုတ်ကုန်အသစ်များအဖြစ် ပြန်လည်အသုံးချခြင်းသည် အင်ဂျင်နီယာများ မည်သည့်အရာအကြောင်း တွေးခေါ်ကြောင်း ဥပမာဖြစ်သနည်း။',
        optionsEn: [
          'Sustainability -- protecting resources for the future',
          'Making things more expensive',
          'Using more electricity',
          'Ignoring the environment',
        ],
        optionsMy: [
          'ရေရှည်တည်တံ့ခိုင်မြဲမှု -- အနာဂတ်အတွက် အရင်းအမြစ်များကို ကာကွယ်ခြင်း',
          'အရာများကို ပိုစျေးကြီးစေခြင်း',
          'လျှပ်စစ်ဓာတ်အားပိုသုံးခြင်း',
          'ပတ်ဝန်းကျင်ကို လျစ်လျူရှုခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Engineers who design buildings that use less electricity are practicing...',
        questionMy:
            'လျှပ်စစ်ဓာတ်အားနည်းနည်းသုံးသော အဆောက်အအုံများကို ဒီဇိုင်းဆွဲသော အင်ဂျင်နီယာများသည် မည်သည့်အလေ့အကျင့်ကို ကျင့်သုံးနေခြင်းဖြစ်သနည်း။',
        optionsEn: [
          'Sustainable engineering',
          'Ignoring the environment',
          'Wasting resources',
          'Avoiding technology',
        ],
        optionsMy: [
          'ရေရှည်တည်တံ့ခိုင်မြဲသော အင်ဂျင်နီယာပညာ',
          'ပတ်ဝန်းကျင်ကို လျစ်လျူရှုခြင်း',
          'အရင်းအမြစ်ဖြုန်းတီးခြင်း',
          'နည်းပညာကို ရှောင်ရှားခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ------------------------------ YEAR 6 ------------------------------
  PrimaryActivityDef(
    id: 'mock-year6-coding-1',
    subject: 'coding',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Algorithms and Functions',
    titleMy: 'Algorithm နှင့် Function အခြေခံများ',
    descriptionEn:
        'Learn what an algorithm is and how functions let programmers reuse code.',
    descriptionMy:
        'Algorithm ဆိုသည်မှာ အဘယ်နည်းနှင့် Function များသည် ပရိုဂရမ်မာများအား ကုဒ်ကို ပြန်လည်အသုံးချစေနိုင်ပုံကို လေ့လာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn: 'An algorithm is best described as...',
        questionMy: 'Algorithm ကို အကောင်းဆုံးဖော်ပြရလျှင် ဘာဖြစ်သနည်း။',
        optionsEn: [
          'A clear set of steps to solve a problem',
          'A picture of a robot',
          'A type of computer',
          'A color scheme',
        ],
        optionsMy: [
          'ပြဿနာတစ်ခုကို ဖြေရှင်းရန် ရှင်းလင်းသောအဆင့်များစု',
          'ရိုဘော့ပုံတစ်ပုံ',
          'ကွန်ပျူတာအမျိုးအစားတစ်ခု',
          'အရောင်အစီအစဉ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A function named "greet" prints "Hello!". Every time we call greet(), what happens?',
        questionMy:
            '"greet" ဟုနာမည်ပေးထားသော Function သည် "Hello!" ဟုပြသသည်။ greet() ကို ခေါ်တိုင်း ဘာဖြစ်မည်နည်း။',
        optionsEn: [
          '"Hello!" is printed',
          'Nothing happens',
          'An error occurs',
          'The program stops',
        ],
        optionsMy: [
          '"Hello!" ကို ပြသသည်',
          'ဘာမှမဖြစ်ပါ',
          'အမှားတစ်ခုဖြစ်ပေါ်သည်',
          'ပရိုဂရမ်ရပ်တန့်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why do programmers put repeated code inside a function?',
        questionMy:
            'ပရိုဂရမ်မာများသည် ထပ်ခါထပ်ခါဖြစ်နေသော ကုဒ်ကို Function အတွင်း ထည့်ကြသည်မှာ ဘာကြောင့်နည်း။',
        optionsEn: [
          'So they can reuse it easily without retyping it',
          'To make the program crash',
          'To hide the code forever',
          'It is not actually useful',
        ],
        optionsMy: [
          'ပြန်ရိုက်စရာမလိုဘဲ လွယ်ကူစွာ ပြန်အသုံးချနိုင်ရန်',
          'ပရိုဂရမ်ကို ချို့ယွင်းစေရန်',
          'ကုဒ်ကို ထာဝစဉ်ဖျောက်ထားရန်',
          'အမှန်တကယ် အသုံးမဝင်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A recipe for baking a cake is a real-life example of a/an...',
        questionMy:
            'ကိတ်မုန့်ဖုတ်ရန် ချက်ပြုတ်နည်းသည် လက်တွေ့ဘဝတွင် မည်သည့်အရာ၏ဥပမာဖြစ်သနည်း။',
        optionsEn: ['Algorithm', 'Variable', 'Loop error', 'Sensor'],
        optionsMy: ['Algorithm', 'Variable', 'Loop error', 'Sensor'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A function "square" is defined as: return x * x. What does square(4) return?',
        questionMy:
            '"square" Function ကို return x * x ဟု သတ်မှတ်ထားသည်။ square(4) ၏ ရလဒ်မှာ အဘယ်နည်း။',
        optionsEn: ['16', '8', '4', 'Error'],
        optionsMy: ['16', '8', '4', 'Error'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-engineering-1',
    subject: 'engineering',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Engineering Design Challenge',
    titleMy: 'အင်ဂျင်နီယာ ဒီဇိုင်း စိန်ခေါ်မှု',
    descriptionEn:
        'Test your understanding of testing, iterating, and teamwork in real engineering projects.',
    descriptionMy:
        'လက်တွေ့အင်ဂျင်နီယာပရောဂျက်များတွင် စမ်းသပ်ခြင်း၊ ပြန်လည်ပြင်ဆင်ခြင်းနှင့် အဖွဲ့လိုက်လုပ်ဆောင်ခြင်းအကြောင်း သင့်နားလည်မှုကို စမ်းသပ်ကြည့်ပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn: 'A prototype is best described as...',
        questionMy:
            'Prototype (နမူနာပုံစံ) ကို အကောင်းဆုံးဖော်ပြရလျှင် ဘာဖြစ်သနည်း။',
        optionsEn: [
          'An early test version of a design',
          'The final product sold to customers',
          'A broken machine',
          'A type of raw material',
        ],
        optionsMy: [
          'ဒီဇိုင်း၏ အစောပိုင်းစမ်းသပ်ပုံစံတစ်ခု',
          'ဖောက်သည်များထံရောင်းချသော အဆုံးသတ်ထုတ်ကုန်',
          'ပျက်စီးနေသောစက်ယန္တရား',
          'ကုန်ကြမ်းအမျိုးအစားတစ်ခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A tower made of straws collapses when tested. What is the best next step?',
        questionMy:
            'ကောက်ရိုးများဖြင့်လုပ်ထားသော တာဝါသည် စမ်းသပ်ချိန်တွင် ပြိုကျသည်။ နောက်ထပ်ဆောင်ရွက်သင့်သည့်အကောင်းဆုံးအဆင့်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Study why it failed and redesign it',
          'Throw away all the straws',
          'Never build towers again',
          'Blame a teammate',
        ],
        optionsMy: [
          'အဘယ်ကြောင့်ကျရှုံးကြောင်း လေ့လာပြီး ပြန်လည်ဒီဇိုင်းဆွဲပါ',
          'ကောက်ရိုးအားလုံးကို စွန့်ပစ်ပါ',
          'တာဝါများကို နောက်နောင် ဘယ်တော့မှ မဆောက်တော့ပါ',
          'အဖွဲ့ဝင်တစ်ဦးကို အပြစ်တင်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do engineering teams usually include people with different skills?',
        questionMy:
            'အင်ဂျင်နီယာအဖွဲ့များသည် ကျွမ်းကျင်မှုအမျိုးမျိုးရှိသူများ ပါဝင်လေ့ရှိသည်မှာ ဘာကြောင့်နည်း။',
        optionsEn: [
          'Different skills help solve different parts of a problem',
          'To make meetings longer',
          'It is not actually helpful',
          'To spend more money',
        ],
        optionsMy: [
          'ကျွမ်းကျင်မှုကွဲပြားခြင်းသည် ပြဿနာ၏ အစိတ်အပိုင်းအမျိုးမျိုးကို ဖြေရှင်းရာတွင် ကူညီပေးသည်',
          'အစည်းအဝေးများကို ပိုကြာစေရန်',
          'အမှန်တကယ် အထောက်အကူမဖြစ်ပါ',
          'ငွေကို ပိုသုံးစေရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A load test on a bridge model checks how much weight it can hold before...',
        questionMy:
            'တံတားပုံစံ၏ Load Test သည် မဖြစ်ပေါ်မီ မည်မျှလေးလံသောအလေးချိန်ကို ထမ်းဆောင်နိုင်ကြောင်း စစ်ဆေးသနည်း -- မည်သည့်အရာဖြစ်ပေါ်ခင်။',
        optionsEn: [
          'Bending or breaking',
          'Changing color',
          'Getting lighter',
          'Moving location',
        ],
        optionsMy: [
          'ကွေးခြင်း (သို့) ကျိုးပဲ့ခြင်း',
          'အရောင်ပြောင်းခြင်း',
          'ပေါ့သွားခြင်း',
          'နေရာပြောင်းခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do engineering teams write down what they learned after a design fails?',
        questionMy:
            'အင်ဂျင်နီယာအဖွဲ့များသည် ဒီဇိုင်းတစ်ခု ကျရှုံးပြီးနောက် သင်ယူရရှိသည်များကို ရေးမှတ်ထားကြသည်မှာ ဘာကြောင့်နည်း။',
        optionsEn: [
          'So they can improve future designs',
          'To forget about it faster',
          'It is required for no real reason',
          'To blame someone',
        ],
        optionsMy: [
          'အနာဂတ်ဒီဇိုင်းများကို တိုးတက်အောင်ပြုလုပ်နိုင်ရန်',
          'ပိုမြန်မြန်မေ့ပျောက်ရန်',
          'အကြောင်းမဲ့ လိုအပ်ချက်ဖြစ်၍',
          'တစ်စုံတစ်ဦးကို အပြစ်တင်ရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // New `history`/`geography`/`computing` subjects: original bilingual
  // content covering then-vs-now history, world geography, and digital
  // literacy/e-safety, one quiz module per subject per grade (mirrors the
  // `coding`/`engineering` STEAM rollout's cadence and starsReward scaling).
  // ------------------------------ YEAR 1 ------------------------------
  PrimaryActivityDef(
    id: 'mock-year1-history-1',
    subject: 'history',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Then and Now',
    titleMy: 'ရှေးနှင့် ယနေ့',
    descriptionEn:
        'Learn simple facts about how life was different long ago and how we understand family history.',
    descriptionMy:
        'ရှေးကဘဝနှင့် ယနေ့ဘဝ ဘယ်လိုကွာခြားသလဲ၊ မိသားစုသမိုင်းကို ဘယ်လိုနားလည်နိုင်သလဲ လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn:
            'Long ago, people used candles for light. What do we mostly use today?',
        questionMy:
            'ရှေးတုန်းက အလင်းရရှိရန် ဖယောင်းတိုင်များကို သုံးခဲ့ကြသည်။ ယနေ့ ဘာကို အများဆုံးသုံးကြသလဲ။',
        optionsEn: ['Electric lights', 'Candles', 'Wooden torches', 'Nothing'],
        optionsMy: [
          'လျှပ်စစ်မီးများ',
          'ဖယောင်းတိုင်များ',
          'သစ်သားတန်ဆောင်းမီး',
          'ဘာမှမသုံးပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: "A family tree shows...",
        questionMy: 'မိသားစုဆွေစဉ်မျိုးဆက်ပုံသည် ဘာကိုပြသလဲ။',
        optionsEn: [
          'Your family members and how they are related',
          'The weather today',
          'Math sums',
          'A shopping list',
        ],
        optionsMy: [
          'မိသားစုဝင်များနှင့် သူတို့ဆွေမျိုးတော်စပ်ပုံ',
          'ယနေ့ရာသီဥတု',
          'သင်္ချာအရေတွက်',
          'စျေးဝယ်စာရင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: "Which of these is an 'old' object from the past?",
        questionMy:
            "အောက်ပါအရာများထဲမှ ဘယ်ဟာက အတိတ်ကာလမှ 'ဟောင်း' ပစ္စည်းဖြစ်သလဲ။",
        optionsEn: [
          'A smartphone',
          'A gramophone (old record player)',
          'A tablet computer',
          'A laptop',
        ],
        optionsMy: [
          'စမတ်ဖုန်း',
          'ဂရမ်မိုဖုန်း (တေးသံဖမ်းစက်ဟောင်း)',
          'တက်ဘလက်ကွန်ပျူတာ',
          'လက်ပ်တော့',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: "Grandparents are...",
        questionMy: 'အဖိုးအဖွားများသည် ဘယ်သူတွေဖြစ်ကြသလဲ။',
        optionsEn: [
          "Your parents' parents",
          'Your friends',
          'Your teachers',
          'Your neighbors',
        ],
        optionsMy: [
          'မိဘများ၏ မိဘများ',
          'သူငယ်ချင်းများ',
          'ဆရာဆရာမများ',
          'အိမ်နီးချင်းများ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: "A timeline helps us understand...",
        questionMy: 'အချိန်ဇယားသည် ဘာကိုနားလည်ရန် ကူညီပေးသလဲ။',
        optionsEn: [
          'The order of events over time',
          'How to cook food',
          'How to swim',
          'The alphabet',
        ],
        optionsMy: [
          'အချိန်ကာလအလိုက် အဖြစ်အပျက်များ၏ အစဉ်လိုက်',
          'အစားအစာချက်နည်း',
          'ရေကူးနည်း',
          'အက္ခရာစဉ်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-geography-1',
    subject: 'geography',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Weather, Seasons and Simple Maps',
    titleMy: 'ရာသီဥတု၊ ရာသီများနှင့် ရိုးရှင်းသောမြေပုံများ',
    descriptionEn:
        'Learn about hot, rainy and cool seasons, and how we draw simple plans of a room.',
    descriptionMy:
        'နွေ၊ မိုးနှင့် ဆောင်းရာသီများအကြောင်းနှင့် အခန်းတစ်ခန်း၏ ရိုးရှင်းသောစီမံကိန်းပုံကို မည်သို့ရေးဆွဲရသည်ကို လေ့လာကြရအောင်။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Which season has the most rain?',
        questionMy: 'မည်သည့်ရာသီတွင် မိုးအများဆုံးရွာသနည်း။',
        optionsEn: [
          'Hot season',
          'Rainy season',
          'Cool season',
          'Harvest season',
        ],
        optionsMy: ['နွေရာသီ', 'မိုးရာသီ', 'ဆောင်းရာသီ', 'စပါးရိတ်သိမ်းရာသီ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What do we usually wear when the weather is hot?',
        questionMy:
            'ရာသီဥတုပူပြင်းသောအခါ ကျွန်တော်တို့ ပုံမှန်ဝတ်ဆင်လေ့ရှိသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A thick jacket',
          'Light cotton clothes',
          'A thick winter coat',
          'Rain boots only',
        ],
        optionsMy: [
          'ထူထဲသောဂျာကင်',
          'ပါးလွှာသော ချည်ထည်အဝတ်အစား',
          'ထူထဲသောဆောင်းရာသီအင်္ကျီ',
          'မိုးဖိနပ်တစ်ခုတည်း',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which season is the coolest (chilliest) season?',
        questionMy: 'မည်သည့်ရာသီသည် အအေးဆုံးရာသီဖြစ်သနည်း။',
        optionsEn: [
          'Hot season',
          'Rainy season',
          'Cool season',
          'Flood season',
        ],
        optionsMy: ['နွေရာသီ', 'မိုးရာသီ', 'ဆောင်းရာသီ', 'ရေကြီးရာသီ'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'When we draw a room as if looking down from above, what do we call this drawing?',
        questionMy:
            'အခန်းတစ်ခန်းကို အထက်စီကနေကြည့်ပြီး ရေးဆွဲသောပုံကို ဘာခေါ်သနည်း။',
        optionsEn: [
          'A photograph',
          'A map (plan)',
          'A painting of the sky',
          'A story book',
        ],
        optionsMy: [
          'ဓာတ်ပုံ',
          'မြေပုံ (အစီအစဉ်ပုံ)',
          'ကောင်းကင်ပန်းချီပုံ',
          'ပုံပြင်စာအုပ်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'In a simple classroom plan, which object would you expect to see drawn near the front wall, close to the teacher?',
        questionMy:
            'ရိုးရှင်းသောစာသင်ခန်းမြေပုံတွင် ဆရာ/ဆရာမနှင့်နီးသော အရှေ့နံရံအနီးတွင် တွေ့ရလိမ့်မည့် အရာဝတ္ထုမှာ အဘယ်နည်း။',
        optionsEn: [
          'The blackboard',
          'The dustbin',
          'The window curtain only',
          'The ceiling fan only',
        ],
        optionsMy: [
          'ကျောက်သင်ပုန်း',
          'အမှိုက်ပုံး',
          'ပြတင်းပေါက်ကန့်လန့်ကာသာ',
          'မိုးခင်းပန်ကာသာ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year1-computing-1',
    subject: 'computing',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Parts of a Computer & Staying Safe',
    titleMy: 'ကွန်ပျူတာ၏ အစိတ်အပိုင်းများနှင့် ဘေးကင်းရေး',
    descriptionEn:
        'Learn what each computer part does and simple internet safety rules.',
    descriptionMy:
        'ကွန်ပျူတာ၏ အစိတ်အပိုင်းများ၏ လုပ်ဆောင်ချက်များနှင့် အင်တာနက် ဘေးကင်းရေး စည်းမျဉ်းရိုးရှင်းများကို လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn:
            'Which part of the computer shows pictures and words for us to see?',
        questionMy:
            'ကွန်ပျူတာ၏ မည်သည့်အစိတ်အပိုင်းက ပုံများနှင့် စာလုံးများကို ပြသပေးသနည်း။',
        optionsEn: ['Keyboard', 'Screen', 'Mouse', 'Speaker'],
        optionsMy: ['ကီးဘုတ်', 'မျက်နှာပြင်', 'မောက်စ်', 'စပီကာ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Which part has keys with letters and numbers that we press to type?',
        questionMy:
            'မည်သည့်အစိတ်အပိုင်းတွင် အက္ခရာများနှင့် ဂဏန်းများပါသော ခလုတ်များရှိပြီး ရိုက်ထည့်ရန် နှိပ်ရသနည်း။',
        optionsEn: ['Screen', 'Mouse', 'Keyboard', 'Printer'],
        optionsMy: ['မျက်နှာပြင်', 'မောက်စ်', 'ကီးဘုတ်', 'ပရင်တာ'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'Which part do we hold and move to point at things on the screen?',
        questionMy:
            'မည်သည့်အစိတ်အပိုင်းကို ကိုင်ပြီး ရွှေ့ကာ မျက်နှာပြင်ပေါ်ရှိအရာများကို ညွှန်ပြသနည်း။',
        optionsEn: ['Mouse', 'Keyboard', 'Monitor', 'Speaker'],
        optionsMy: ['မောက်စ်', 'ကီးဘုတ်', 'မော်နီတာ', 'စပီကာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If a message online asks you for your home address, what should you do?',
        questionMy:
            'အွန်လိုင်းမှ မက်ဆေ့ချ်တစ်ခုက သင့်နေအိမ်လိပ်စာကို မေးလာလျှင် သင်ဘာလုပ်သင့်သနည်း။',
        optionsEn: [
          'Type it in right away',
          'Tell a trusted grown-up',
          'Ignore it and keep clicking',
          'Share it with friends',
        ],
        optionsMy: [
          'ချက်ချင်း ရိုက်ထည့်ပေးသည်',
          'ယုံကြည်ရသော လူကြီးတစ်ဦးကို ပြောပြသည်',
          'လျစ်လျူရှုပြီး ဆက်နှိပ်နေသည်',
          'သူငယ်ချင်းများကို မျှဝေသည်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Before you click on a new game or website, what is the safest thing to do?',
        questionMy:
            'ဂိမ်းအသစ် (သို့) ဝက်ဘ်ဆိုက်တစ်ခုကို မနှိပ်မီ အဘေးကင်းဆုံးလုပ်ရမည့်အရာက ဘာဖြစ်သနည်း။',
        optionsEn: [
          'Click it quickly',
          'Ask a grown-up first',
          'Share your password',
          'Turn off the screen',
        ],
        optionsMy: [
          'အမြန်နှိပ်လိုက်သည်',
          'ပထမဆုံး လူကြီးကို မေးကြည့်သည်',
          'စကားဝှက်ကို မျှဝေသည်',
          'မျက်နှာပြင်ကို ပိတ်လိုက်သည်',
        ],
        correctIndex: 1,
      ),
    ],
  ),

  // ------------------------------ YEAR 2 ------------------------------
  PrimaryActivityDef(
    id: 'mock-year2-history-1',
    subject: 'history',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Daily Life Long Ago',
    titleMy: 'ရှေးက နေ့စဉ်ဘဝ',
    descriptionEn:
        'Explore how homes, transport, clothes, and toys were different in the past compared to today.',
    descriptionMy:
        'အိမ်၊ သယ်ယူပို့ဆောင်ရေး၊ အဝတ်အစားနှင့် ကစားစရာများ ရှေးကနှင့် ယနေ့ ဘယ်လိုကွာခြားသလဲ လေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'Long ago, most people traveled using...',
        questionMy: 'ရှေးတုန်းက လူအများစုသည် ဘာဖြင့် ခရီးသွားခဲ့ကြသလဲ။',
        optionsEn: [
          'Horses and carts',
          'Cars and buses',
          'Airplanes',
          'Motorbikes',
        ],
        optionsMy: [
          'မြင်းနှင့် လှည်းများ',
          'ကားနှင့် ဘတ်စ်ကားများ',
          'လေယာဉ်ပျံများ',
          'မော်တော်ဆိုင်ကယ်များ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these was a common toy for children long ago?',
        questionMy:
            'အောက်ပါအထဲမှ ဘယ်ဟာက ရှေးက ကလေးများ ရိုးရိုးသာသုံးခဲ့သော ကစားစရာဖြစ်သလဲ။',
        optionsEn: [
          'A video game console',
          'A wooden spinning top',
          'A tablet',
          'A smartphone',
        ],
        optionsMy: [
          'ဗီဒီယိုဂိမ်းစက်',
          'သစ်သားလှည့်ကစားစရာ',
          'တက်ဘလက်',
          'စမတ်ဖုန်း',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Long ago, people sent messages to each other mainly by...',
        questionMy:
            'ရှေးတုန်းက လူများသည် အချင်းချင်း သတင်းစကားများကို အဓိကအားဖြင့် ဘယ်လိုပို့ခဲ့ကြသလဲ။',
        optionsEn: [
          'Email',
          'Letters carried by post',
          'Text message',
          'Video call',
        ],
        optionsMy: [
          'အီးမေးလ်',
          'စာတိုက်မှတစ်ဆင့် ပို့သောစာများ',
          'စာတိုပို့ခြင်း',
          'ဗီဒီယိုခေါ်ဆိုမှု',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which type of home did many villagers live in long ago?',
        questionMy:
            'ရှေးတုန်းက ကျေးလက်လူများစွာ နေထိုင်ခဲ့သည့် အိမ်အမျိုးအစားက ဘယ်ဟာလဲ။',
        optionsEn: [
          'Houses made of bamboo and wood with thatched roofs',
          'Skyscrapers',
          'Houses with electric lights and air conditioners',
          'Apartment buildings with elevators',
        ],
        optionsMy: [
          'ဝါးနှင့် သစ်သားဖြင့်ဆောက်ထားသော သက်ကယ်မိုးအိမ်များ',
          'အထပ်မြင့်တိုက်များ',
          'လျှပ်စစ်မီးနှင့် အဲကွန်းပါသော အိမ်များ',
          'လှေကားရုပ်ပါသော တိုက်ခန်းများ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How are clothes today different from long ago?',
        questionMy: 'ယနေ့အဝတ်အစားများသည် ရှေးကနှင့် ဘယ်လိုကွာခြားသလဲ။',
        optionsEn: [
          "Today's clothes are made only from banana leaves",
          'Today we have many factory-made fabrics and styles',
          'People no longer wear clothes',
          'Clothes have not changed at all',
        ],
        optionsMy: [
          'ယနေ့အဝတ်အစားများကို ငှက်ပျောရွက်ဖြင့်သာ ပြုလုပ်ကြသည်',
          'ယနေ့ စက်ရုံထုတ် အထည်နှင့် ဒီဇိုင်းများစွာ ရှိသည်',
          'လူများ အဝတ်အစား ဝတ်ဆင်တော့မည်မဟုတ်ချေ',
          'အဝတ်အစားများ လုံးဝမပြောင်းလဲပါ',
        ],
        correctIndex: 1,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-geography-1',
    subject: 'geography',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'My Local Area and Directions',
    titleMy: 'ကျွန်တော့်ဒေသနှင့် အရပ်မျက်နှာများ',
    descriptionEn:
        'Explore features of our local area, compass directions and simple map symbols.',
    descriptionMy:
        'ကျွန်တော်တို့ဒေသရှိ အင်္ဂါရပ်များ၊ အရပ်မျက်နှာများနှင့် ရိုးရှင်းသောမြေပုံသင်္ကေတများကို လေ့လာကြရအောင်။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'Which direction does the sun rise from?',
        questionMy: 'နေရောင်ခြည်သည် မည်သည့်အရပ်မှ ထွက်ပေါ်သနည်း။',
        optionsEn: ['North', 'South', 'East', 'West'],
        optionsMy: ['မြောက်', 'တောင်', 'အရှေ့', 'အနောက်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'On a map, a blue wavy line usually shows a ___.',
        questionMy:
            'မြေပုံပေါ်တွင် အပြာရောင်လှိုင်းကြောင်းသည် များသောအားဖြင့် ဘာကို ဖော်ပြသနည်း။',
        optionsEn: ['Road', 'River', 'Mountain', 'Forest'],
        optionsMy: ['လမ်း', 'မြစ်', 'တောင်', 'တောအုပ်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a feature found in most local areas?',
        questionMy:
            'အောက်ပါတို့အနက် ကျွန်တော်တို့ဒေသတွင် များသောအားဖြင့် တွေ့ရလေ့ရှိသောနေရာမှာ အဘယ်နည်း။',
        optionsEn: ['Market', 'Ocean floor', 'Volcano', 'Desert dune'],
        optionsMy: ['စျေး', 'သမုဒ္ဒရာအောက်ခံ', 'မီးတောင်', 'သဲကန္တာရသဲကုန်း'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If you are facing North and turn to your right, which direction do you now face?',
        questionMy:
            'မြောက်ဘက်ကို မျက်နှာမူထားပြီး ညာဘက်သို့ လှည့်လိုက်လျှင် မည်သည့်အရပ်ကို မျက်နှာမူသွားမည်နည်း။',
        optionsEn: ['West', 'East', 'South', 'North'],
        optionsMy: ['အနောက်', 'အရှေ့', 'တောင်', 'မြောက်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'A map key (legend) is used to ___.',
        questionMy:
            'မြေပုံသင်္ကေတဇယားကို အသုံးပြုသည့်ရည်ရွယ်ချက်မှာ ___ ဖြစ်သည်။',
        optionsEn: [
          'Show what the symbols on a map mean',
          'Tell the time of day',
          'Show the price of land',
          "List students' names",
        ],
        optionsMy: [
          'မြေပုံပေါ်ရှိ သင်္ကေတများ၏ အဓိပ္ပာယ်ကို ပြသရန်',
          'နေ့အချိန်ကို ပြောပြရန်',
          'မြေဈေးနှုန်းကို ပြရန်',
          'ကျောင်းသားစာရင်းကို ဖော်ပြရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-computing-1',
    subject: 'computing',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Step-by-Step Instructions & Online Safety',
    titleMy: 'အဆင့်ဆင့် ညွှန်ကြားချက်များနှင့် အွန်လိုင်းဘေးကင်းရေး',
    descriptionEn:
        'Practice ordering simple steps and learn basic online safety habits.',
    descriptionMy:
        'ရိုးရှင်းသော အဆင့်များကို စဉ်ဆက်မပြတ် စီစဉ်တတ်ခြင်းနှင့် အခြေခံ အွန်လိုင်း ဘေးကင်းရေး အလေ့အကျင့်များကို လေ့ကျင့်ပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn:
            'Anu puts on shoes in this order: 1) Put on socks 2) Put on shoes 3) Tie laces. Is this order correct?',
        questionMy:
            'အနုက ဖိနပ်စီးသည့်အစီအစဉ်မှာ- ၁) ခြေအိတ်စီးသည် ၂) ဖိနပ်စီးသည် ၃) ကြိုးများချည်သည်။ ဒီအစီအစဉ်သည် မှန်ကန်ပါသလား။',
        optionsEn: [
          'Yes, it is correct',
          'No, the laces should be tied before wearing shoes',
          'No, socks should go on after shoes',
          'No, we should skip wearing socks',
        ],
        optionsMy: [
          'ဟုတ်ကဲ့၊ မှန်ကန်ပါသည်',
          'မှားပါသည်၊ ကြိုးများကို ဖိနပ်မစီးမီ ချည်ရမည်',
          'မှားပါသည်၊ ခြေအိတ်ကို ဖိနပ်စီးပြီးမှ စီးရမည်',
          'မှားပါသည်၊ ခြေအိတ်စီးရန် မလိုပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A set of steps followed in order to complete a task is called a(n) ___.',
        questionMy:
            'လုပ်ငန်းတစ်ခုပြီးမြောက်ရန် အစဉ်လိုက်လိုက်နာရသော အဆင့်များစုကို ဘာဟုခေါ်သနည်း။',
        optionsEn: ['Password', 'Algorithm', 'Folder', 'Keyboard'],
        optionsMy: ['စကားဝှက်', 'အယ်လဂိုရစ်သမ်', 'ဖိုင်တွဲ', 'ကီးဘုတ်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Why should you keep your password secret?',
        questionMy: 'အဘယ်ကြောင့် သင့်စကားဝှက်ကို လျှို့ဝှက်ထားသင့်သနည်း။',
        optionsEn: [
          'So it looks nice',
          'So only you can use your account',
          'Because it is short',
          "Because grown-ups don't need passwords",
        ],
        optionsMy: [
          'လှပအောင်ထားခြင်းဖြစ်သည်',
          'မိမိအကောင့်ကို မိမိတစ်ဦးတည်း အသုံးပြုနိုင်ရန်ဖြစ်သည်',
          'အတိုစကားလုံးဖြစ်၍ဖြစ်သည်',
          'လူကြီးများ စကားဝှက်မလိုအပ်သောကြောင့်ဖြစ်သည်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'A strange pop-up appears while you are playing a game online. What should you do?',
        questionMy:
            'အွန်လိုင်းဂိမ်းကစားနေစဉ် ထူးဆန်းသော ပေါ့အပ်ပ်ဝင်းဒိုးတစ်ခု ပေါ်လာသည်။ သင်ဘာလုပ်သင့်သနည်း။',
        optionsEn: [
          'Click it quickly',
          'Close it and tell a grown-up',
          'Type your name into it',
          'Share it with friends',
        ],
        optionsMy: [
          'အမြန်နှိပ်လိုက်သည်',
          'ပိတ်လိုက်ပြီး လူကြီးကို ပြောပြသည်',
          'မိမိနာမည်ကို ရိုက်ထည့်သည်',
          'သူငယ်ချင်းများကို မျှဝေသည်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'To make a cup of tea, which step should come first: pour the water into a cup, boil the water, or put a tea bag in the cup?',
        questionMy:
            'လက်ဖက်ရည်တစ်ခွက်ဖျော်ရန် ရေကို ခွက်ထဲသွန်ခြင်း၊ ရေကို ပွက်ပွက်ဆူအောင်ပြုတ်ခြင်း၊ လက်ဖက်ရည်အိတ်ကို ခွက်ထဲထည့်ခြင်း တို့အနက် မည်သည့်အဆင့်က ပထမဆုံးဖြစ်သင့်သနည်း။',
        optionsEn: [
          'Pour the water into a cup',
          'Put a tea bag in the cup',
          'Boil the water',
          'Drink the tea',
        ],
        optionsMy: [
          'ရေကို ခွက်ထဲသွန်သည်',
          'လက်ဖက်ရည်အိတ်ကို ခွက်ထဲထည့်သည်',
          'ရေကို ပွက်ပွက်ဆူအောင်ပြုတ်သည်',
          'လက်ဖက်ရည်ကို သောက်သည်',
        ],
        correctIndex: 2,
      ),
    ],
  ),

  // ------------------------------ YEAR 3 ------------------------------
  PrimaryActivityDef(
    id: 'mock-year3-history-1',
    subject: 'history',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'People, Events, and Timelines',
    titleMy: 'လူပုဂ္ဂိုလ်များ၊ အဖြစ်အပျက်များနှင့် အချိန်ဇယားများ',
    descriptionEn:
        'Discover important people and events in our history and learn to read a simple timeline.',
    descriptionMy:
        'ကျွန်ုပ်တို့သမိုင်းရှိ အရေးကြီးသောလူပုဂ္ဂိုလ်များနှင့် အဖြစ်အပျက်များကို လေ့လာပြီး ရိုးရှင်းသောအချိန်ဇယားကို ဖတ်တတ်အောင် လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'Myanmar celebrates Independence Day on which date?',
        questionMy:
            'မြန်မာနိုင်ငံသည် လွတ်လပ်ရေးနေ့ကို ဘယ်ရက်စွဲတွင် ကျင်းပသလဲ။',
        optionsEn: ['4 January', '1 January', '4 July', '12 December'],
        optionsMy: [
          'ဇန်နဝါရီ ၄ ရက်',
          'ဇန်နဝါရီ ၁ ရက်',
          'ဇူလိုင် ၄ ရက်',
          'ဒီဇင်ဘာ ၁၂ ရက်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A timeline is used to show events in what order?',
        questionMy:
            'အချိန်ဇယားကို အဖြစ်အပျက်များ ဘယ်လိုအစဉ်အတိုင်း ပြသရန်အသုံးပြုသလဲ။',
        optionsEn: [
          'Alphabetical order',
          'The order in which they happened, from earliest to latest',
          'Order of importance',
          'Random order',
        ],
        optionsMy: [
          'အက္ခရာစဉ်အလိုက်',
          'အစောဆုံးမှ နောက်ဆုံးအထိ ဖြစ်ပျက်ခဲ့သည့်အစဉ်အတိုင်း',
          'အရေးပါမှု အစဉ်အလိုက်',
          'ကျပန်းအစဉ်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'King Anawrahta is remembered in Myanmar history mainly for...',
        questionMy:
            'အနော်ရထာမင်းကို မြန်မာသမိုင်းတွင် အဓိကအားဖြင့် ဘာကြောင့် သတိရကြသလဲ။',
        optionsEn: [
          'Building modern railways',
          'Founding the Bagan Empire and spreading Buddhism',
          'Inventing the printing press',
          'Discovering electricity',
        ],
        optionsMy: [
          'ခေတ်မီရထားလမ်းများ တည်ဆောက်ခြင်း',
          'ပုဂံနိုင်ငံတော်ကို တည်ထောင်ပြီး ဗုဒ္ဓဘာသာကို ပျံ့နှံ့စေခြင်း',
          'စာပုံနှိပ်စက် တီထွင်ခြင်း',
          'လျှပ်စစ်ကို ရှာဖွေတွေ့ရှိခြင်း',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which of these is an example of a national event?',
        questionMy:
            'အောက်ပါအထဲမှ ဘယ်ဟာက အမျိုးသားအဆင့် အဖြစ်အပျက်တစ်ခု ဥပမာဖြစ်သလဲ။',
        optionsEn: [
          'A birthday party at home',
          'Independence Day celebrations',
          'A family dinner',
          'A school picnic',
        ],
        optionsMy: [
          'အိမ်တွင်ကျင်းပသော မွေးနေ့ပွဲ',
          'လွတ်လပ်ရေးနေ့ ကျင်းပပွဲများ',
          'မိသားစု ညစာစားပွဲ',
          'ကျောင်းသင်ရိုးပြင်ပ ခရီးစဉ်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'On a timeline drawn from left to right by date, which event happened first?',
        questionMy:
            'ရက်စွဲအလိုက် ဘယ်မှညာသို့ ရေးဆွဲထားသော အချိန်ဇယားတွင် ဘယ်အဖြစ်အပျက်က ပထမဆုံး ဖြစ်ပျက်ခဲ့သလဲ။',
        optionsEn: [
          'The event on the right end',
          'The event on the left end (earliest date)',
          'The event in the middle',
          'You cannot tell',
        ],
        optionsMy: [
          'ညာဘက်စွန်းရှိ အဖြစ်အပျက်',
          'ဘယ်ဘက်စွန်းရှိ အဖြစ်အပျက် (အစောဆုံးရက်စွဲ)',
          'အလယ်ရှိ အဖြစ်အပျက်',
          'ခွဲခြားသိနိုင်မည်မဟုတ်ပါ',
        ],
        correctIndex: 1,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-geography-1',
    subject: 'geography',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: "Continents, Oceans and Earth's Features",
    titleMy: 'ကျွန်းတိုက်များ၊ သမုဒ္ဒရာများနှင့် ကမ္ဘာမြေ၏ အင်္ဂါရပ်များ',
    descriptionEn:
        'Discover the continents and oceans of the world, and the difference between physical and human features.',
    descriptionMy:
        'ကမ္ဘာပေါ်ရှိ ကျွန်းတိုက်များနှင့် သမုဒ္ဒရာများကို လေ့လာပြီး သဘာဝနှင့် လူလုပ်အင်္ဂါရပ်များ ကွာခြားပုံကို လေ့လာကြရအောင်။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'How many continents are there on Earth?',
        questionMy: 'ကမ္ဘာပေါ်တွင် ကျွန်းတိုက်စုစုပေါင်း မည်မျှရှိသနည်း။',
        optionsEn: ['5', '6', '7', '8'],
        optionsMy: ['၅ ခု', '၆ ခု', '၇ ခု', '၈ ခု'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which of these is the largest ocean in the world?',
        questionMy:
            'အောက်ပါတို့အနက် ကမ္ဘာပေါ်တွင် အကြီးဆုံးသမုဒ္ဒရာမှာ အဘယ်ဖြစ်သနည်း။',
        optionsEn: [
          'Atlantic Ocean',
          'Indian Ocean',
          'Arctic Ocean',
          'Pacific Ocean',
        ],
        optionsMy: [
          'အတ္လန္တစ်သမုဒ္ဒရာ',
          'အိန္ဒိယသမုဒ္ဒရာ',
          'အာတိတ်သမုဒ္ဒရာ',
          'ပစိဖိတ်သမုဒ္ဒရာ',
        ],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn:
            'Which of the following is a physical feature, not a human-made feature?',
        questionMy:
            'အောက်ပါတို့အနက် လူလုပ်ဖန်တီးထားခြင်းမဟုတ်ဘဲ သဘာဝအလိုလျောက် ပေါ်ပေါက်သောအင်္ဂါရပ်တစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: ['A bridge', 'A mountain', 'A road', 'A city'],
        optionsMy: ['တံတား', 'တောင်', 'လမ်း', 'မြို့'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which continent is Myanmar located in?',
        questionMy: 'မြန်မာနိုင်ငံသည် မည်သည့်ကျွန်းတိုက်တွင် တည်ရှိသနည်း။',
        optionsEn: ['Africa', 'Asia', 'Europe', 'South America'],
        optionsMy: ['အာဖရိက', 'အာရှ', 'ဥရောပ', 'တောင်အမေရိက'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'A farm and a city are both examples of ___ features.',
        questionMy:
            'လယ်ယာမြေနှင့် မြို့တစ်မြို့တို့သည် ___ အင်္ဂါရပ်များ၏ ဥပမာများဖြစ်ကြသည်။',
        optionsEn: ['physical', 'human', 'ocean', 'weather'],
        optionsMy: ['သဘာဝ', 'လူလုပ်', 'သမုဒ္ဒရာ', 'ရာသီဥတု'],
        correctIndex: 1,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-computing-1',
    subject: 'computing',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Everyday Algorithms & Files',
    titleMy: 'နေ့စဉ်သုံး အယ်လဂိုရစ်သမ်များနှင့် ဖိုင်တွဲများ',
    descriptionEn:
        'Sequence everyday tasks correctly and learn how files and folders work.',
    descriptionMy:
        'နေ့စဉ်လုပ်ငန်းများကို မှန်ကန်စွာ အစီအစဉ်ချပြီး ဖိုင်နှင့် ဖိုင်တွဲများ အလုပ်လုပ်ပုံကို လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn:
            'Which of these correctly orders the steps for brushing teeth?',
        questionMy:
            'အောက်ပါတို့အနက် သွားတိုက်ခြင်း အဆင့်များကို မှန်ကန်စွာ စီစဉ်ထားသည့်အရာက မည်သည့်အရာနည်း။',
        optionsEn: [
          'Wet the brush, put on toothpaste, brush teeth',
          'Brush teeth, put on toothpaste, wet the brush',
          'Put on toothpaste, brush teeth, wet the brush',
          'Brush teeth, wet the brush, put on toothpaste',
        ],
        optionsMy: [
          'တိုက်တံကို ရေစိုစေသည်၊ သွားတိုက်ဆေး ထည့်သည်၊ သွားတိုက်သည်',
          'သွားတိုက်သည်၊ သွားတိုက်ဆေး ထည့်သည်၊ တိုက်တံကို ရေစိုစေသည်',
          'သွားတိုက်ဆေး ထည့်သည်၊ သွားတိုက်သည်၊ တိုက်တံကို ရေစိုစေသည်',
          'သွားတိုက်သည်၊ တိုက်တံကို ရေစိုစေသည်၊ သွားတိုက်ဆေး ထည့်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'In a computer, where do we keep related files together?',
        questionMy:
            'ကွန်ပျူတာတွင် ဆက်စပ်ဖိုင်များကို အတူတကွ မည်သည့်နေရာတွင် သိမ်းဆည်းလေ့ရှိသနည်း။',
        optionsEn: ['A folder', 'A password', 'A speaker', 'A screen'],
        optionsMy: [
          'ဖိုင်တွဲတစ်ခုတွင်',
          'စကားဝှက်တွင်',
          'စပီကာတွင်',
          'မျက်နှာပြင်တွင်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What word describes a list of steps followed in a fixed order to complete a task?',
        questionMy:
            'လုပ်ငန်းတစ်ခု ပြီးမြောက်ရန် ပုံသေအစီအစဉ်ဖြင့် လိုက်နာရသော အဆင့်များစာရင်းကို ဘယ်စကားလုံးက ဖော်ပြသနည်း။',
        optionsEn: ['Password', 'Sequence', 'Folder', 'Icon'],
        optionsMy: ['စကားဝှက်', 'အစီအစဉ် (Sequence)', 'ဖိုင်တွဲ', 'အိုင်ကွန်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'If you want to find a photo saved on a computer, where would you most likely look first?',
        questionMy:
            'ကွန်ပျူတာထဲသိမ်းထားသော ဓာတ်ပုံတစ်ပုံကို ရှာလိုလျှင် ဦးစွာ မည်သည့်နေရာတွင် ရှာကြည့်ရမည်နည်း။',
        optionsEn: [
          'Inside the keyboard',
          'Inside a folder',
          'Inside the mouse',
          'Inside the speaker',
        ],
        optionsMy: [
          'ကီးဘုတ်ထဲတွင်',
          'ဖိုင်တွဲထဲတွင်',
          'မောက်စ်ထဲတွင်',
          'စပီကာထဲတွင်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Which step should come first when getting ready for school: eating breakfast, waking up, or wearing your uniform?',
        questionMy:
            'ကျောင်းသွားရန် အသင့်ဖြစ်ရာတွင် နံနက်စာစားခြင်း၊ အိပ်ရာနိုးခြင်း၊ ယူနီဖောင်းဝတ်ခြင်း တို့အနက် မည်သည့်အဆင့်က ပထမဆုံးဖြစ်သင့်သနည်း။',
        optionsEn: [
          'Wearing the uniform',
          'Eating breakfast',
          'Waking up',
          'Going to bed',
        ],
        optionsMy: [
          'ယူနီဖောင်းဝတ်ခြင်း',
          'နံနက်စာစားခြင်း',
          'အိပ်ရာနိုးခြင်း',
          'အိပ်ရာဝင်ခြင်း',
        ],
        correctIndex: 2,
      ),
    ],
  ),

  // ------------------------------ YEAR 4 ------------------------------
  PrimaryActivityDef(
    id: 'mock-year4-history-1',
    subject: 'history',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'How Transport and Communication Changed',
    titleMy: 'သယ်ယူပို့ဆောင်ရေးနှင့် ဆက်သွယ်ရေး ပြောင်းလဲပုံ',
    descriptionEn:
        'Compare how transport, communication, and technology changed across the decades.',
    descriptionMy:
        'ဆယ်စုနှစ်များအတွင်း သယ်ယူပို့ဆောင်ရေး၊ ဆက်သွယ်ရေးနှင့် နည်းပညာများ မည်သို့ပြောင်းလဲခဲ့သည်ကို နှိုင်းယှဉ်လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn:
            'Which of these shows the correct order of communication tools, from oldest to newest?',
        questionMy:
            'ဆက်သွယ်ရေးကိရိယာများကို အဟောင်းဆုံးမှ အသစ်ဆုံးအထိ မှန်ကန်စွာစီထားသည့် အစဉ်က ဘယ်ဟာလဲ။',
        optionsEn: [
          'Letters → Telephone → Mobile phone → Video call',
          'Mobile phone → Letters → Video call → Telephone',
          'Video call → Mobile phone → Telephone → Letters',
          'Telephone → Video call → Letters → Mobile phone',
        ],
        optionsMy: [
          'စာများ → တယ်လီဖုန်း → မိုဘိုင်းဖုန်း → ဗီဒီယိုခေါ်ဆိုမှု',
          'မိုဘိုင်းဖုန်း → စာများ → ဗီဒီယိုခေါ်ဆိုမှု → တယ်လီဖုန်း',
          'ဗီဒီယိုခေါ်ဆိုမှု → မိုဘိုင်းဖုန်း → တယ်လီဖုန်း → စာများ',
          'တယ်လီဖုန်း → ဗီဒီယိုခေါ်ဆိုမှု → စာများ → မိုဘိုင်းဖုန်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why did trains change how people traveled in the past?',
        questionMy:
            'ရထားများသည် ရှေးက လူများ၏ ခရီးသွားနည်းကို ဘာကြောင့် ပြောင်းလဲစေခဲ့သလဲ။',
        optionsEn: [
          'They allowed people to travel faster and further than by walking or horse',
          'They made travel impossible',
          'They were slower than walking',
          'They only carried mail',
        ],
        optionsMy: [
          'လမ်းလျှောက်ခြင်း သို့မဟုတ် မြင်းစီးခြင်းထက် ပိုမြန်ပြီး ပိုဝေးသည်အထိ ခရီးသွားနိုင်စေခဲ့သည်',
          'ခရီးသွားခြင်းကို မဖြစ်နိုင်တော့စေခဲ့သည်',
          'လမ်းလျှောက်ခြင်းထက် နှေးခဲ့သည်',
          'စာများကိုသာ သယ်ဆောင်ခဲ့သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which invention most changed how quickly news could travel across long distances?',
        questionMy:
            'အောက်ပါတီထွင်မှုများထဲမှ ဘယ်ဟာက ဝေးလံသောနေရာများသို့ သတင်းရောက်ရှိနှုန်းကို အများဆုံးပြောင်းလဲစေခဲ့သလဲ။',
        optionsEn: [
          'The bicycle',
          'The telephone',
          'The wooden cart',
          'The candle',
        ],
        optionsMy: ['စက်ဘီး', 'တယ်လီဖုန်း', 'သစ်သားလှည်း', 'ဖယောင်းတိုင်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Comparing 50 years ago to today, which statement is true?',
        questionMy:
            'နှစ်ပေါင်း ၅၀ ခန့်ကနှင့် ယနေ့ကို နှိုင်းယှဉ်ကြည့်လျှင် ဘယ်ဖော်ပြချက်က မှန်ကန်သလဲ။',
        optionsEn: [
          'Fewer people had televisions in their homes 50 years ago',
          'Everyone had smartphones 50 years ago',
          'Cars did not exist 50 years ago',
          'Nothing has changed in transport',
        ],
        optionsMy: [
          'နှစ်ပေါင်း ၅၀ ခန့်က အိမ်တွင် တီဗီရှိသူ ပိုနည်းခဲ့သည်',
          'နှစ်ပေါင်း ၅၀ ခန့်က လူတိုင်းတွင် စမတ်ဖုန်းရှိခဲ့သည်',
          'နှစ်ပေါင်း ၅၀ ခန့်က ကားများ လုံးဝမရှိခဲ့ပါ',
          'သယ်ယူပို့ဆောင်ရေးတွင် ဘာမှမပြောင်းလဲပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do historians compare old photographs with modern photographs?',
        questionMy:
            'သမိုင်းပညာရှင်များသည် ဓာတ်ပုံဟောင်းများနှင့် ခေတ်သစ်ဓာတ်ပုံများကို ဘာကြောင့် နှိုင်းယှဉ်ကြသလဲ။',
        optionsEn: [
          'To see how clothing, technology, and daily life have changed over time',
          'To find out who took the best photo',
          'To decide which photo is prettier',
          'Photographs cannot show any change',
        ],
        optionsMy: [
          'အဝတ်အစား၊ နည်းပညာနှင့် နေ့စဉ်ဘဝ အချိန်ကြာလာသည်နှင့်အမျှ မည်သို့ပြောင်းလဲခဲ့သည်ကို ကြည့်ရန်',
          'ဘယ်သူ့ဓာတ်ပုံက အကောင်းဆုံးလဲဆိုသည်ကို ရှာဖွေရန်',
          'ဘယ်ဓာတ်ပုံက ပိုလှသလဲ ဆုံးဖြတ်ရန်',
          'ဓာတ်ပုံများသည် ပြောင်းလဲမှုကို ပြသနိုင်မည်မဟုတ်ပါ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-geography-1',
    subject: 'geography',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Climate Around the World',
    titleMy: 'ကမ္ဘာတစ်ဝှမ်းရှိ ရာသီဥတု',
    descriptionEn:
        'Learn how climate differs around the world and how people adapt to their environment.',
    descriptionMy:
        'ကမ္ဘာတစ်ဝှမ်း ရာသီဥတု မတူညီပုံနှင့် လူများသည် သူတို့ပတ်ဝန်းကျင်နှင့်အညီ မည်သို့လိုက်လျောညီထွေနေထိုင်ကြသည်ကို လေ့လာကြရအောင်။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn:
            'People who live in very cold, snowy regions often build homes with ___ to keep warm.',
        questionMy:
            'အလွန်အေးမြပြီး နှင်းကျသောဒေသများတွင် နေထိုင်ကြသောလူများသည် ပူနွေးမှုထိန်းသိမ်းနိုင်ရန် ___ ပါသောအိမ်များကို ဆောက်လုပ်လေ့ရှိသည်။',
        optionsEn: [
          'thin walls and large windows',
          'thick insulated walls and small windows',
          'no roof at all',
          'walls made only of glass',
        ],
        optionsMy: [
          'ပါးလွှာသောနံရံနှင့် ပြတင်းပေါက်ကြီးများ',
          'အပူလွှတ်မထွက်စေသော နံရံထူများနှင့် ပြတင်းပေါက်သေးများ',
          'အမိုးလုံးဝမရှိခြင်း',
          'မှန်သားနံရံများသာ',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Why do people living near the equator often build homes with wide roofs and open walls?',
        questionMy:
            'အီကွေတာလိုင်းအနီးတွင် နေထိုင်ကြသောလူများက အကျယ်ကျယ်မိုးထိုးနှင့် အလေဝင်လွယ်သောနံရံပါသောအိမ်များကို အဘယ်ကြောင့် ဆောက်လုပ်ကြသနည်း။',
        optionsEn: [
          'To keep out the cold',
          'To stay cool and let air flow in hot, humid weather',
          'To collect snow',
          'To block sunlight completely',
        ],
        optionsMy: [
          'အအေးဓာတ်ကို ကာကွယ်ရန်',
          'ပူပြင်းစိုစွတ်သောရာသီဥတုတွင် လေဝင်လေထွက်ကောင်းစေပြီး အေးမြစေရန်',
          'နှင်းများကို စုဆောင်းရန်',
          'နေရောင်ခြည်ကို လုံးဝပိတ်ဆို့ရန်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'A place with hot weather all year and very little rain is called a ___ climate.',
        questionMy:
            'တစ်နှစ်ပတ်လုံးပူပြင်းပြီး မိုးရေအလွန်နည်းသောနေရာကို ___ ရာသီဥတုဟု ခေါ်သည်။',
        optionsEn: ['polar', 'desert', 'tropical rainforest', 'temperate'],
        optionsMy: [
          'ဝင်ရိုးစွန်းရာသီဥတု',
          'သဲကန္တာရရာသီဥတု',
          'အပူပိုင်းမိုးအုပ်စိပ်တောရာသီဥတု',
          'သမပိုင်းရာသီဥတု',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which factor most affects the climate of a place?',
        questionMy:
            'နေရာတစ်ခု၏ ရာသီဥတုကို အများဆုံးသက်ရောက်စေသောအချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The color of the soil',
          'The distance from the equator',
          'The number of people living there',
          'The type of currency used',
        ],
        optionsMy: [
          'မြေဆီလွှာအရောင်',
          'အီကွေတာနှင့် ဝေးကွာမှု',
          'နေထိုင်သူ ဦးရေအရေအတွက်',
          'အသုံးပြုသော ငွေကြေးအမျိုးအစား',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'In mountain regions with cold weather, farmers often adapt by ___.',
        questionMy:
            'အအေးဓာတ်များသော တောင်ပေါ်ဒေသများတွင် တောင်သူများသည် ___ ဖြင့် လိုက်လျောညီထွေဖြစ်အောင် နေထိုင်လေ့ရှိကြသည်။',
        optionsEn: [
          'growing crops that need very hot weather',
          'growing hardy crops suited to cool temperatures and building terraced fields',
          'refusing to farm at all',
          'only fishing in the ocean',
        ],
        optionsMy: [
          'ပူပြင်းသောရာသီဥတုကို လိုအပ်သောသီးနှံများ စိုက်ပျိုးခြင်း',
          'အေးမြသောရာသီဥတုနှင့် ကိုက်ညီသောသီးနှံများ စိုက်ပျိုးပြီး လှေကားထစ်ခင်းများ ပြုလုပ်ခြင်း',
          'လုံးဝ လယ်ယာစိုက်ပျိုးမှု မပြုလုပ်ခြင်း',
          'သမုဒ္ဒရာတွင်သာ ငါးဖမ်းခြင်း',
        ],
        correctIndex: 1,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-computing-1',
    subject: 'computing',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Debugging Steps & Being Kind Online',
    titleMy: 'အမှားရှာဖွေခြင်းနှင့် အွန်လိုင်းတွင် ကြင်နာစွာ ပြုမူခြင်း',
    descriptionEn:
        'Spot mistakes in a sequence and practice good digital citizenship.',
    descriptionMy:
        'အဆင့်လုပ်ငန်းစဉ်များထဲမှ အမှားများကို ရှာဖွေပြီး ကောင်းမွန်သော ဒစ်ဂျစ်တယ် အမူအကျင့်များကို လေ့ကျင့်ပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn:
            'A sequence for making a sandwich says: Step 1) Take two slices of bread, Step 2) Eat the sandwich, Step 3) Put filling between the slices, Step 4) Put the slices together. Which step is in the wrong place?',
        questionMy:
            'အသားညှပ်ပေါင်မုန့် ပြုလုပ်ရန် အဆင့်များမှာ- အဆင့် ၁) ပေါင်မုန့်နှစ်ချပ် ယူသည်၊ အဆင့် ၂) အသားညှပ်ပေါင်မုန့်ကို စားသည်၊ အဆင့် ၃) အသားညှပ်ပစ္စည်းကို ပေါင်မုန့်ကြားညှပ်သည်၊ အဆင့် ၄) ပေါင်မုန့်ချပ်များကို ပေါင်းထည့်သည်။ မည်သည့်အဆင့်သည် နေရာမှားနေသနည်း။',
        optionsEn: ['Step 1', 'Step 2', 'Step 3', 'Step 4'],
        optionsMy: ['အဆင့် ၁', 'အဆင့် ၂', 'အဆင့် ၃', 'အဆင့် ၄'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            "In the steps for planting a seed (dig a hole, water it, put the seed in the hole, cover it with soil), which step happens right after 'dig a hole'?",
        questionMy:
            "မျိုးစေ့တစ်စေ့ကို စိုက်ပျိုးခြင်း အဆင့်များ (တွင်းတူးသည်၊ ရေလောင်းသည်၊ မျိုးစေ့ကို တွင်းထဲထည့်သည်၊ မြေသားနှင့် ဖုံးအုပ်သည်) တွင် 'တွင်းတူးသည်' ပြီးနောက် လိုက်ရမည့်အဆင့်က ဘာနည်း။",
        optionsEn: [
          'Water it',
          'Put the seed in the hole',
          'Dig another hole',
          'Eat the seed',
        ],
        optionsMy: [
          'ရေလောင်းသည်',
          'မျိုးစေ့ကို တွင်းထဲထည့်သည်',
          'နောက်ထပ် တွင်းတူးသည်',
          'မျိုးစေ့ကို စားသည်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: "What does it mean to 'debug' a set of instructions?",
        questionMy:
            "ညွှန်ကြားချက် အစုတစ်ခုကို 'debug' လုပ်သည်ဆိုသည်မှာ အဘယ်အရာကို ဆိုလိုသနည်း။",
        optionsEn: [
          'Delete all the steps',
          'Find and fix the mistake',
          'Add more pictures',
          'Make the instructions longer',
        ],
        optionsMy: [
          'အဆင့်အားလုံးကို ဖျက်ပစ်ခြင်း',
          'အမှားကို ရှာဖွေပြီး ပြင်ဆင်ခြင်း',
          'ပုံများ ထပ်ထည့်ခြင်း',
          'ညွှန်ကြားချက်ကို ပိုရှည်အောင်လုပ်ခြင်း',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which of these is an example of being kind online?',
        questionMy:
            'အောက်ပါတို့အနက် အွန်လိုင်းတွင် ကြင်နာစွာ ပြုမူခြင်း၏ ဥပမာမှာ မည်သည့်အရာနည်း။',
        optionsEn: [
          'Sending unkind comments',
          "Sharing someone's password without asking",
          "Encouraging a friend's post kindly",
          "Copying someone's project without permission",
        ],
        optionsMy: [
          'ကြမ်းတမ်းသော မှတ်ချက်များ ပို့ခြင်း',
          'တစ်ဦးတစ်ယောက်၏ စကားဝှက်ကို ခွင့်မတောင်းဘဲ မျှဝေခြင်း',
          'သူငယ်ချင်း၏ပို့စ်ကို ကြင်နာစွာ အားပေးခြင်း',
          'တစ်ဦးတစ်ယောက်၏ စီမံကိန်းကို ခွင့်ပြုချက်မရှိဘဲ ကူးယူခြင်း',
        ],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'A stranger online asks for your home address and school name. What should you do?',
        questionMy:
            'အွန်လိုင်းတွင် အမျှမသိသူတစ်ဦးက သင့်နေအိမ်လိပ်စာနှင့် ကျောင်းအမည်ကို မေးလာသည်။ သင်ဘာလုပ်သင့်သနည်း။',
        optionsEn: [
          'Tell them everything they ask',
          'Never share personal information and tell a trusted adult',
          'Share only your school name',
          'Ask them why they want it before answering',
        ],
        optionsMy: [
          'သူတို့မေးသမျှကို အကုန်ပြောပြသည်',
          'ကိုယ်ရေးကိုယ်တာအချက်အလက်ကို လုံးဝမမျှဝေဘဲ ယုံကြည်ရသော လူကြီးကို ပြောပြသည်',
          'ကျောင်းအမည်ကိုသာ ပြောပြသည်',
          'အဖြေမပေးမီ အဘယ်ကြောင့်မေးသနည်းဟု ပြန်မေးသည်',
        ],
        correctIndex: 1,
      ),
    ],
  ),

  // ------------------------------ YEAR 5 ------------------------------
  PrimaryActivityDef(
    id: 'mock-year5-history-1',
    subject: 'history',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Ancient Egypt and How We Know the Past',
    titleMy: 'ရှေးဟောင်းအီဂျစ်နှင့် အတိတ်ကို ဘယ်လိုသိရှိကြသလဲ',
    descriptionEn:
        'Learn about Ancient Egyptian civilization and how historians use evidence to understand the past.',
    descriptionMy:
        'ရှေးဟောင်းအီဂျစ်ယဉ်ကျေးမှုအကြောင်းနှင့် သမိုင်းပညာရှင်များ အတိတ်ကိုနားလည်ရန် သက်သေအထောက်အထားများ ဘယ်လိုအသုံးပြုကြသလဲ လေ့လာပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            'Which river was central to the growth of Ancient Egyptian civilization?',
        questionMy:
            'ရှေးဟောင်းအီဂျစ်ယဉ်ကျေးမှု ဖွံ့ဖြိုးတိုးတက်ရာတွင် ဘယ်မြစ်က အဓိကကျခဲ့သလဲ။',
        optionsEn: [
          'The Nile River',
          'The Amazon River',
          'The Ayeyarwady River',
          'The Yellow River',
        ],
        optionsMy: ['နိုင်းမြစ်', 'အမေဇုံမြစ်', 'ဧရာဝတီမြစ်', 'မြစ်ဝါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Ancient Egyptians built pyramids mainly as...',
        questionMy:
            'ရှေးဟောင်းအီဂျစ်လူမျိုးများသည် ပိရမစ်များကို အဓိကအားဖြင့် ဘာအဖြစ် ဆောက်လုပ်ခဲ့ကြသလဲ။',
        optionsEn: [
          'Marketplaces for trading goods',
          'Tombs for pharaohs and their treasures',
          'Schools for children',
          'Ordinary family homes',
        ],
        optionsMy: [
          'ကုန်စည်ရောင်းဝယ်ရန် စျေးရောင်းစခန်းများ',
          'ဘုရင်များနှင့် ၎င်းတို့၏ ဘဏ္ဍာများအတွက် သင်္ချိုင်းများ',
          'ကလေးများအတွက် ကျောင်းများ',
          'ရိုးရိုးမိသားစုနေအိမ်များ',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Historians learn about Ancient Egypt today mostly through...',
        questionMy:
            'သမိုင်းပညာရှင်များသည် ယနေ့ ရှေးဟောင်းအီဂျစ်အကြောင်းကို အဓိကအားဖြင့် ဘာမှတဆင့် လေ့လာကြသလဲ။',
        optionsEn: [
          'Video recordings',
          'Artifacts, hieroglyphic writing, and tomb paintings',
          'Internet articles written at the time',
          'Photographs taken by ancient Egyptians',
        ],
        optionsMy: [
          'ဗီဒီယိုသွင်းဆွဲမှုများ',
          'ရှေးဟောင်းပစ္စည်းများ၊ ဟိရိုဂလစ်ဖ်ပုံစာနှင့် သင်္ချိုင်းရုပ်ပုံများ',
          'ထိုခေတ်က ရေးသားခဲ့သော အင်တာနက်ဆောင်းပါးများ',
          'ရှေးဟောင်းအီဂျစ်လူများ ရိုက်ကူးထားသော ဓာတ်ပုံများ',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: "What is a 'primary source' when studying history?",
        questionMy:
            "သမိုင်းလေ့လာရာတွင် 'မူလသက်သေအထောက်အထား' ဆိုသည်မှာ အဘယ်နည်း။",
        optionsEn: [
          'A modern textbook that summarizes events',
          'An original object or record from the time being studied, such as a letter or artifact',
          'A movie made recently about the past',
          'A guess about what happened',
        ],
        optionsMy: [
          'အဖြစ်အပျက်များကို အနှစ်ချုပ်ဖော်ပြထားသော ခေတ်သစ်စာအုပ်',
          'လေ့လာနေသောခေတ်ကာလမှ မူရင်းအရာဝတ္ထု သို့မဟုတ် မှတ်တမ်း ဥပမာ - စာစောင် သို့မဟုတ် ရှေးဟောင်းပစ္စည်း',
          'အတိတ်အကြောင်း လတ်တလောရိုက်ကူးထားသော ရုပ်ရှင်',
          'ဘာဖြစ်ခဲ့သလဲဆိုသည်ကို ခန့်မှန်းချက်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Why are the writings on Egyptian tomb walls considered valuable evidence?',
        questionMy:
            'အီဂျစ်သင်္ချိုင်းနံရံများပေါ်ရှိ စာများကို အဘယ်ကြောင့် တန်ဖိုးရှိသော သက်သေအထောက်အထားအဖြစ် သတ်မှတ်ကြသလဲ။',
        optionsEn: [
          'They are painted in bright colors',
          'They were created at the time and describe the beliefs and lives of ancient people',
          'They are very large',
          'They are written in English',
        ],
        optionsMy: [
          'တောက်ပသောအရောင်များဖြင့် ခြယ်မှုန်းထားသောကြောင့်',
          'ထိုခေတ်ကာလကတည်းက ဖန်တီးခဲ့ပြီး ရှေးလူများ၏ ယုံကြည်မှုနှင့် ဘဝများကို ဖော်ပြထားသောကြောင့်',
          'အလွန်ကြီးမားသောကြောင့်',
          'အင်္ဂလိပ်ဘာသာဖြင့် ရေးထားသောကြောင့်',
        ],
        correctIndex: 1,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-geography-1',
    subject: 'geography',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Natural Resources and Map Skills',
    titleMy: 'သဘာဝသယံဇာတများနှင့် မြေပုံအသုံးချစွမ်းရည်',
    descriptionEn:
        'Learn about natural resources and practise map skills such as scale and grid references.',
    descriptionMy:
        'သဘာဝသယံဇာတများအကြောင်း လေ့လာပြီး မြေပုံစကေးနှင့် ကွက်လပ်ညွှန်း ကဲ့သို့သော မြေပုံအသုံးချစွမ်းရည်များကို လေ့ကျင့်ကြရအောင်။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            'Which of these is a natural resource taken directly from the Earth?',
        questionMy:
            'အောက်ပါတို့အနက် ကမ္ဘာမြေမှ တိုက်ရိုက်ရရှိသော သဘာဝသယံဇာတတစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: ['Plastic toy', 'Coal', 'Smartphone', 'Concrete building'],
        optionsMy: [
          'ပလတ်စတစ်ကစားစရာ',
          'ကျောက်မီးသွေး',
          'စမတ်ဖုန်း',
          'ကွန်ကရစ်အဆောက်အဦ',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'On a map with a scale of 1cm : 5km, a distance of 3cm on the map represents ___ in real life.',
        questionMy:
            '1cm : 5km စကေးပါသောမြေပုံတွင် မြေပုံပေါ်ရှိ 3cm အကွာအဝေးသည် တကယ့်ဘဝတွင် ___ ကိုကိုယ်စားပြုသည်။',
        optionsEn: ['3km', '8km', '15km', '5km'],
        optionsMy: ['3km', '8km', '15km', '5km'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'A grid reference on a map is used to ___.',
        questionMy:
            'မြေပုံပေါ်ရှိ ကွက်လပ်ညွှန်းကို အသုံးပြုသည့်ရည်ရွယ်ချက်မှာ ___ ဖြစ်သည်။',
        optionsEn: [
          'find the exact location of a place',
          'tell you the population of a city',
          'show the age of a map',
          'measure temperature',
        ],
        optionsMy: [
          'နေရာတစ်ခု၏ တိကျသောတည်နေရာကို ရှာဖွေရန်',
          'မြို့တစ်မြို့၏ လူဦးရေကို ပြောပြရန်',
          'မြေပုံ၏ သက်တမ်းကို ဖော်ပြရန်',
          'အပူချိန်ကို တိုင်းတာရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Water, forests, and minerals are all examples of ___.',
        questionMy:
            'ရေ၊ သစ်တောနှင့် သတ္တုတွင်းများသည် ___ များ၏ ဥပမာများဖြစ်ကြသည်။',
        optionsEn: [
          'man-made products',
          'natural resources',
          'imaginary items',
          'weather types',
        ],
        optionsMy: [
          'လူလုပ်ထုတ်ကုန်များ',
          'သဘာဝသယံဇာတများ',
          'စိတ်ကူးယဉ်ပစ္စည်းများ',
          'ရာသီဥတုအမျိုးအစားများ',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Why is it important to use natural resources like forests wisely?',
        questionMy:
            'သစ်တောကဲ့သို့ သဘာဝသယံဇာတများကို ဉာဏ်ပညာရှိရှိ အသုံးချရန် အဘယ်ကြောင့် အရေးကြီးသနည်း။',
        optionsEn: [
          'Because they can never run out no matter how much we use',
          'Because some resources can run out or take a very long time to renew',
          'Because they have no effect on daily life',
          'Because they are only found in cold countries',
        ],
        optionsMy: [
          'မည်မျှပင်သုံးစွဲပါစေ ဘယ်တော့မှမကုန်ခန်းနိုင်သောကြောင့်',
          'အချို့သယံဇာတများသည် ကုန်ခန်းနိုင်ပြီး ပြန်လည်ဖြစ်ပေါ်ရန် အလွန်ကြာနိုင်သောကြောင့်',
          'နေ့စဉ်ဘဝနှင့် လုံးဝမသက်ဆိုင်သောကြောင့်',
          'အအေးဒေသနိုင်ငံများတွင်သာ တွေ့ရှိရသောကြောင့်',
        ],
        correctIndex: 1,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-computing-1',
    subject: 'computing',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Organizing Data & Trusting Online Information',
    titleMy:
        'အချက်အလက်များ စုစည်းခြင်းနှင့် အွန်လိုင်းသတင်းအား ယုံကြည်စိတ်ချနိုင်မှု',
    descriptionEn:
        'Learn to organize information with tally charts and pictograms, and judge trustworthy sources.',
    descriptionMy:
        'တဲလီဇယားနှင့် ပုံပြရေဆွဲပုံများဖြင့် အချက်အလက်များ စုစည်းတတ်ခြင်းနှင့် ယုံကြည်စိတ်ချရသော အရင်းအမြစ်များကို ခွဲခြားတတ်ရန် လေ့လာပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn: 'A tally chart uses small marks to show what?',
        questionMy:
            'တဲလီဇယားသည် ဘာကို ပြသရန် အမှတ်အသားသေးသေးလေးများကို အသုံးပြုသနည်း။',
        optionsEn: [
          'Colors used in a picture',
          'How many times something happens',
          'Passwords for an account',
          'Names of folders',
        ],
        optionsMy: [
          'ပုံတွင်သုံးသော အရောင်များ',
          'တစ်ခုခုဖြစ်ပျက်သည့် အကြိမ်အရေအတွက်',
          'အကောင့်၏ စကားဝှက်များ',
          'ဖိုင်တွဲများ၏အမည်များ',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'In a pictogram, one picture (symbol) usually stands for ___?',
        questionMy:
            'ပုံပြရေဆွဲပုံ (pictogram) တစ်ခုတွင် ပုံတစ်ပုံ (သင်္ကေတ) သည် များသောအားဖြင့် မည်သည့်အရာကို ကိုယ်စားပြုလေ့ရှိသနည်း။',
        optionsEn: [
          'Only one item, always',
          'A certain number of items',
          'Nothing at all',
          'A password',
        ],
        optionsMy: [
          'အမြဲတမ်း တစ်ခုတည်း',
          'အရေအတွက် အသိသတ်မှတ်ထားသော ပစ္စည်းအရေအတွက်',
          'ဘာမျှမကိုယ်စားပြု',
          'စကားဝှက်တစ်ခု',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            "If you wanted to find out your classmates' favourite fruit, which tool would help you organize the answers?",
        questionMy:
            'အတန်းဖော်များ၏ အကြိုက်ဆုံးအသီးကို သိလိုလျှင် အဖြေများကို စုစည်းရန် မည်သည့်ကိရိယာက ကူညီနိုင်မည်နည်း။',
        optionsEn: ['A keyboard', 'A tally chart', 'A mouse', 'A printer'],
        optionsMy: ['ကီးဘုတ်', 'တဲလီဇယား', 'မောက်စ်', 'ပရင်တာ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Which website is more likely to give trustworthy information?',
        questionMy:
            'မည်သည့်ဝက်ဘ်ဆိုက်က ပို၍ ယုံကြည်စိတ်ချရသော အချက်အလက်ပေးနိုင်ဖွယ်ရှိသနည်း။',
        optionsEn: [
          'A page with no author and facts that seem wrong',
          'A well-known reliable source that other trusted sites also reference',
          'A pop-up advertisement',
          'A random anonymous comment online',
        ],
        optionsMy: [
          'စာရေးသူအမည်မပါဘဲ မှားယွင်းနေဟန်ရှိသော စာမျက်နှာ',
          'အခြားယုံကြည်ရသော ဝက်ဘ်ဆိုက်များကလည်း ကိုးကားထားသော လူသိများ ယုံကြည်ရသော အရင်းအမြစ်',
          'ပေါ့အပ်ပ်ကြော်ငြာတစ်ခု',
          'အမည်မဖော်သော ကျပန်းမှတ်ချက်တစ်ခု',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Before believing information you find online, what should you do?',
        questionMy:
            'အွန်လိုင်းတွင်တွေ့ရသော အချက်အလက်ကို မယုံကြည်မီ သင်ဘာလုပ်သင့်သနည်း။',
        optionsEn: [
          'Believe it immediately',
          'Check it against another trusted source',
          'Share it with everyone right away',
          'Ignore where the information came from',
        ],
        optionsMy: [
          'ချက်ချင်း ယုံကြည်လိုက်သည်',
          'အခြားယုံကြည်ရသော အရင်းအမြစ်တစ်ခုနှင့် နှိုင်းယှဉ်စစ်ဆေးသည်',
          'လူတိုင်းကို ချက်ချင်းမျှဝေသည်',
          'အချက်အလက်၏ ဇစ်မြစ်ကို လျစ်လျူရှုသည်',
        ],
        correctIndex: 1,
      ),
    ],
  ),

  // ------------------------------ YEAR 6 ------------------------------
  PrimaryActivityDef(
    id: 'mock-year6-history-1',
    subject: 'history',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Causes, Effects, and Historical Sources',
    titleMy: 'အကြောင်းရင်း၊ အကျိုးဆက်နှင့် သမိုင်းသက်သေများ',
    descriptionEn:
        'Analyze the causes and effects of major historical changes and compare different historical sources.',
    descriptionMy:
        'သမိုင်းဆိုင်ရာ အရေးကြီးပြောင်းလဲမှုများ၏ အကြောင်းရင်းနှင့် အကျိုးဆက်များကို ခွဲခြမ်းစိတ်ဖြာပြီး သမိုင်းသက်သေအထောက်အထား အမျိုးမျိုးကို နှိုင်းယှဉ်ပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'When historians compare two different accounts of the same event, why might the accounts differ?',
        questionMy:
            'သမိုင်းပညာရှင်များသည် တူညီသောအဖြစ်အပျက်တစ်ခုအကြောင်း ကွဲပြားသောမှတ်တမ်းနှစ်ခုကို နှိုင်းယှဉ်သောအခါ ၎င်းတို့ ဘာကြောင့် ကွဲပြားနိုင်သလဲ။',
        optionsEn: [
          'Because history never changes',
          'Because the writers may have had different viewpoints, information, or purposes',
          'Because one writer is always lying',
          'Because dates cannot be recorded accurately',
        ],
        optionsMy: [
          'သမိုင်းသည် ဘယ်တော့မှ မပြောင်းလဲသောကြောင့်',
          'ရေးသားသူများတွင် ရှုထောင့်၊ အချက်အလက် သို့မဟုတ် ရည်ရွယ်ချက် ကွဲပြားနိုင်သောကြောင့်',
          'ရေးသားသူတစ်ဦးက အမြဲလိမ်ညာနေသောကြောင့်',
          'ရက်စွဲများကို တိကျစွာ မှတ်တမ်းတင်၍မရသောကြောင့်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'The invention of the printing press caused which of the following effects?',
        questionMy:
            'စာပုံနှိပ်စက် တီထွင်မှုသည် အောက်ပါအကျိုးဆက်များထဲမှ ဘယ်ဟာကို ဖြစ်ပေါ်စေခဲ့သလဲ။',
        optionsEn: [
          'Fewer people could access books and information',
          'Books could be produced faster and reached more people, spreading knowledge',
          'Books disappeared entirely',
          'People stopped writing',
        ],
        optionsMy: [
          'စာအုပ်နှင့် သတင်းအချက်အလက်များကို ရရှိသူ ပိုနည်းသွားခဲ့သည်',
          'စာအုပ်များကို ပိုမြန်ဆန်စွာ ထုတ်လုပ်နိုင်ပြီး ပိုများသောလူများထံသို့ ရောက်ရှိကာ အသိပညာပျံ့နှံ့စေခဲ့သည်',
          'စာအုပ်များ လုံးဝပျောက်ကွယ်သွားခဲ့သည်',
          'လူများ စာရေးခြင်းကို ရပ်တန့်လိုက်ကြသည်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Which of the following best shows a cause-and-effect relationship in history?',
        questionMy:
            'အောက်ပါအထဲမှ ဘယ်ဟာက သမိုင်းတွင် အကြောင်းရင်းနှင့် အကျိုးဆက် ဆက်နွှယ်မှုကို အကောင်းဆုံးဖော်ပြသလဲ။',
        optionsEn: [
          'A drought caused crops to fail, leading people to migrate in search of food',
          'A king wore a golden crown, so people liked gold',
          'A river is long, so ships are made of wood',
          'A season ended, so a new artifact was created',
        ],
        optionsMy: [
          'မိုးခေါင်မှုကြောင့် သီးနှံများပျက်စီးကာ လူများ အစားအစာရှာရန် ရွှေ့ပြောင်းနေထိုင်ခဲ့ရသည်',
          'ဘုရင်တစ်ပါးက ရွှေသရဖူဆောင်းသောကြောင့် လူများ ရွှေကို နှစ်သက်ခဲ့ကြသည်',
          'မြစ်တစ်ခုက ရှည်လျားသောကြောင့် သင်္ဘောများကို သစ်သားဖြင့် ပြုလုပ်ခဲ့ကြသည်',
          'ရာသီတစ်ခု ကုန်ဆုံးသွားသောကြောင့် ရှေးဟောင်းပစ္စည်းအသစ် ပေါ်ပေါက်လာခဲ့သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A historian reading two letters written about the same battle, one from each side, should...',
        questionMy:
            'တိုက်ပွဲတစ်ခုအကြောင်း ဘက်နှစ်ဘက်စီမှ ရေးသားထားသော စာစောင်နှစ်စောင်ကို ဖတ်ရှုသည့် သမိုင်းပညာရှင်တစ်ဦးသည် မည်သို့ပြုလုပ်သင့်သလဲ။',
        optionsEn: [
          'Only believe the letter written first',
          'Compare both accounts carefully to understand different perspectives before drawing conclusions',
          'Ignore both letters',
          'Assume both letters say exactly the same thing',
        ],
        optionsMy: [
          'ပထမဆုံးရေးထားသော စာစောင်ကိုသာ ယုံကြည်ရမည်',
          'နိဂုံးမချမီ ရှုထောင့်ကွဲပြားမှုများကို နားလည်ရန် စာစောင်နှစ်စောင်စလုံးကို ဂရုတစိုက် နှိုင်းယှဉ်ရမည်',
          'စာစောင်နှစ်စောင်လုံးကို လျစ်လျူရှုရမည်',
          'စာစောင်နှစ်စောင်လုံး အတိအကျ တူညီစွာဆိုထားသည်ဟု ယူဆရမည်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Why might a historian consider a diary written during a war more reliable than a movie made about the same war 100 years later?',
        questionMy:
            'စစ်ပွဲကာလအတွင်း ရေးထားသော မှတ်တမ်းစာအုပ်တစ်အုပ်ကို တူညီသောစစ်ပွဲအကြောင်း နှစ်ပေါင်း ၁၀၀ ကြာမှ ရိုက်ကူးခဲ့သော ရုပ်ရှင်ထက် သမိုင်းပညာရှင်များက ဘာကြောင့် ပိုယုံကြည်ရသော သက်သေအထောက်အထားအဖြစ် သတ်မှတ်နိုင်သလဲ။',
        optionsEn: [
          'Because the diary was written by someone who directly experienced the events at that time',
          'Because movies are always false',
          'Because diaries are longer than movies',
          'Because the movie would be written in a different language',
        ],
        optionsMy: [
          'မှတ်တမ်းစာအုပ်ကို ထိုအချိန်က အဖြစ်အပျက်များကို တိုက်ရိုက်ကြုံတွေ့ခဲ့သူက ရေးသားခဲ့သောကြောင့်',
          'ရုပ်ရှင်များသည် အမြဲတမ်း မမှန်သောကြောင့်',
          'မှတ်တမ်းစာအုပ်များသည် ရုပ်ရှင်ထက် ပိုရှည်လျားသောကြောင့်',
          'ရုပ်ရှင်ကို ဘာသာစကားကွဲပြားစွာ ရေးသားထားသောကြောင့်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-geography-1',
    subject: 'geography',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Human Impact and Sustainable Living',
    titleMy: 'လူသားများ၏ သက်ရောက်မှုနှင့် ရေရှည်တည်တံ့သောနေထိုင်မှု',
    descriptionEn:
        'Explore how human activity affects the environment and how we can live more sustainably.',
    descriptionMy:
        'လူသားများ၏လုပ်ဆောင်ချက်များသည် ပတ်ဝန်းကျင်ကို မည်သို့သက်ရောက်စေသည်နှင့် ရေရှည်တည်တံ့အောင် မည်သို့နေထိုင်နိုင်သည်ကို လေ့လာကြရအောင်။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'Which human activity is most likely to lead to deforestation?',
        questionMy:
            'အောက်ပါ လူ့လုပ်ရပ်များအနက် သစ်တောပြုန်းတီးမှုကို အများဆုံးဖြစ်စေနိုင်သည့်လုပ်ရပ်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Planting new trees in a park',
          'Clearing large areas of forest for farmland',
          'Recycling paper products',
          'Walking in a nature reserve',
        ],
        optionsMy: [
          'ပန်းခြံတွင် သစ်ပင်အသစ်များစိုက်ပျိုးခြင်း',
          'လယ်ယာမြေအတွက် သစ်တောကျယ်ကျယ်ပြင်ကို ခုတ်ထွင်ခြင်း',
          'စက္ကူထုတ်ကုန်များ ပြန်လည်အသုံးချခြင်း',
          'သဘာဝထိန်းသိမ်းရေးဒေသတွင် လမ်းလျှောက်ခြင်း',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Sustainability means using resources in a way that ___.',
        questionMy:
            'ရေရှည်တည်တံ့ခိုင်မြဲမှု ဆိုသည်မှာ ___ ပုံစံဖြင့် သယံဇာတများကို အသုံးချခြင်းကို ဆိုလိုသည်။',
        optionsEn: [
          'uses up everything as quickly as possible',
          "meets today's needs without harming future generations' ability to meet theirs",
          'only benefits one country',
          'ignores the environment completely',
        ],
        optionsMy: [
          'ဖြစ်နိုင်သမျှမြန်မြန် အားလုံးကုန်ခမ်းအောင်သုံးစွဲခြင်း',
          'ယနေ့လိုအပ်ချက်များကို ဖြည့်ဆည်းရင်း အနာဂတ်မျိုးဆက်များ၏ လိုအပ်ချက်ဖြည့်ဆည်းနိုင်မှုကို မထိခိုက်စေခြင်း',
          'တစ်နိုင်ငံတည်းကိုသာ အကျိုးပြုခြင်း',
          'ပတ်ဝန်းကျင်ကို လုံးဝဂရုမစိုက်ခြင်း',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Comparing a map of a rural region to a map of an urban region, you would most likely see ___.',
        questionMy:
            'ကျေးလက်ဒေသနှင့် မြို့ပြဒေသ၏ မြေပုံများကို နှိုင်းယှဉ်ကြည့်လျှင် များသောအားဖြင့် ___ တွေ့ရလိမ့်မည်။',
        optionsEn: [
          'more farmland and fewer buildings in the urban region',
          'more buildings and roads and less farmland in the urban region',
          'no difference between the two',
          'more oceans in the rural region',
        ],
        optionsMy: [
          'မြို့ပြဒေသတွင် လယ်ယာမြေပိုများပြီး အဆောက်အဦနည်းခြင်း',
          'မြို့ပြဒေသတွင် အဆောက်အဦနှင့်လမ်းများ ပိုများပြီး လယ်ယာမြေနည်းခြင်း',
          'နှစ်ခုစလုံးတွင် ကွာခြားချက်လုံးဝမရှိခြင်း',
          'ကျေးလက်ဒေသတွင် သမုဒ္ဒရာပိုများခြင်း',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which of these is an example of a sustainable practice?',
        questionMy:
            'အောက်ပါတို့အနက် ရေရှည်တည်တံ့ခိုင်မြဲသော နည်းလမ်းတစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: [
          'Overfishing until fish populations disappear',
          'Rotating crops and replanting trees after harvesting',
          'Burning large areas of forest for quick farmland',
          'Dumping waste directly into rivers',
        ],
        optionsMy: [
          'ငါးမျိုးစိတ် ကုန်ခမ်းသည်အထိ အလွန်အကျွံဖမ်းခြင်း',
          'သီးနှံလှည့်ကျင့်စိုက်ပျိုးပြီး ရိတ်သိမ်းပြီးနောက် သစ်ပင်များပြန်စိုက်ခြင်း',
          'လျင်မြန်စွာ လယ်ယာမြေရရှိရန် သစ်တောကျယ်ကျယ်ကို မီးရှို့ခြင်း',
          'စွန့်ပစ်ပစ္စည်းများကို မြစ်ချောင်းများထဲသို့ တိုက်ရိုက်စွန့်ပစ်ခြင်း',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'A country with advanced map reading might use contour lines to show ___.',
        questionMy:
            'မြေပုံဖတ်ခြင်း အဆင့်မြင့်နေရာများတွင် အမြင့်တူမျဉ်းကြောင်းများကို ___ ပြသရန် အသုံးပြုလေ့ရှိသည်။',
        optionsEn: [
          'the political borders of a country only',
          'changes in height and the shape of land such as hills and valleys',
          'the population of each city',
          'the languages spoken in each region',
        ],
        optionsMy: [
          'နိုင်ငံ၏နိုင်ငံရေးနယ်နိမိတ်များကိုသာ',
          'တောင်ကုန်းနှင့်ချိုင့်ဝှမ်းကဲ့သို့ မြေပြင်၏ ပုံသဏ္ဌာန်နှင့် အမြင့်အနိမ့်ပြောင်းလဲမှုများ',
          'မြို့တစ်မြို့ချင်းစီ၏ လူဦးရေ',
          'ဒေသတစ်ခုစီတွင် ပြောဆိုသောဘာသာစကားများ',
        ],
        correctIndex: 1,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-computing-1',
    subject: 'computing',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Loops, the Internet & Responsible Technology Use',
    titleMy:
        'ထပ်ခါထပ်ခါ လုပ်ဆောင်ခြင်း၊ အင်တာနက်နှင့် တာဝန်သိသော နည်းပညာအသုံးပြုမှု',
    descriptionEn:
        'Explore repetition in algorithms, how the internet connects devices, and ethical technology use.',
    descriptionMy:
        'အယ်လဂိုရစ်သမ်များအတွင်း ထပ်ခါထပ်ခါ လုပ်ဆောင်ခြင်း၊ အင်တာနက်က စက်ပစ္စည်းများကို ဆက်သွယ်ပေးပုံနှင့် တာဝန်သိစွာ နည်းပညာသုံးစွဲပုံတို့ကို လေ့လာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            "A set of instructions says: 'Repeat 3 times: jump once, clap once.' How many jumps happen in total?",
        questionMy:
            "ညွှန်ကြားချက်တစ်ခုက 'အကြိမ် ၃ ကြိမ် ထပ်လုပ်ပါ- ခုန်တစ်ကြိမ်၊ လက်ခုပ်တီးတစ်ကြိမ်' ဟုဆိုသည်။ စုစုပေါင်း ခုန်သည့်အကြိမ်အရေအတွက် မည်မျှရှိမည်နည်း။",
        optionsEn: ['1', '3', '6', '9'],
        optionsMy: ['၁ ကြိမ်', '၃ ကြိမ်', '၆ ကြိမ်', '၉ ကြိမ်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is the huge network that connects computers around the world so they can send information to each other?',
        questionMy:
            'ကမ္ဘာတစ်ဝှမ်းရှိ ကွန်ပျူတာများကို အချင်းချင်း အချက်အလက်ပို့နိုင်ရန် ဆက်သွယ်ပေးသော ကွန်ရက်ကြီးကို ဘာဟုခေါ်သနည်း။',
        optionsEn: [
          'A single cable only',
          'The internet',
          'A single folder',
          'A password',
        ],
        optionsMy: [
          'ကြိုးတစ်ချောင်းတည်း',
          'အင်တာနက်',
          'ဖိုင်တွဲတစ်ခုတည်း',
          'စကားဝှက်တစ်ခု',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            "Which best describes 'repetition' (a loop) in an algorithm?",
        questionMy:
            "အယ်လဂိုရစ်သမ်တစ်ခုအတွင်းရှိ 'ထပ်ခါထပ်ခါ လုပ်ဆောင်ခြင်း' (loop) ကို အသင့်တော်ဆုံး ဖော်ပြသောစာကြောင်းက မည်သည့်အရာနည်း။",
        optionsEn: [
          'Doing a step only once',
          'Repeating a set of steps a certain number of times',
          'Skipping some steps',
          'Deleting all the steps',
        ],
        optionsMy: [
          'အဆင့်တစ်ခုကို တစ်ကြိမ်တည်း လုပ်ခြင်း',
          'အဆင့်တစ်စုကို သတ်မှတ်အကြိမ်အရေအတွက်အထိ ထပ်ခါထပ်ခါ လုပ်ခြင်း',
          'အဆင့်အချို့ကို ကျော်သွားခြင်း',
          'အဆင့်အားလုံးကို ဖျက်ပစ်ခြင်း',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            "You want to greet each of your 5 friends with the word 'Hello'. Which instruction uses repetition most efficiently?",
        questionMy:
            "သင့်သူငယ်ချင်း ၅ ဦးကို 'Hello' ဟူသော စကားဖြင့် နှုတ်ဆက်လိုသည်။ မည်သည့်ညွှန်ကြားချက်က ထပ်ခါထပ်ခါလုပ်ဆောင်ခြင်းကို အထိရောက်ဆုံး အသုံးပြုသနည်း။",
        optionsEn: [
          "Write 'Hello' just once",
          "Write 'Repeat 5 times: say Hello'",
          "Write 'Hello' 20 separate times",
          'Say nothing at all',
        ],
        optionsMy: [
          "'Hello' ကို တစ်ကြိမ်တည်း ရေးသည်",
          "'အကြိမ် ၅ ကြိမ် ထပ်ပါ- Hello ဟု ပြောပါ' ဟု ရေးသည်",
          "'Hello' ကို သီးခြား ၂၀ ကြိမ် ရေးသည်",
          'ဘာမျှ မပြောဘဲနေသည်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Which of these shows responsible and ethical use of technology?',
        questionMy:
            'အောက်ပါတို့အနက် တာဝန်သိပြီး ကျင့်ဝတ်နှင့်ညီညွတ်သော နည်းပညာအသုံးပြုမှုကို ပြသည့်အရာက မည်သည့်အရာနည်း။',
        optionsEn: [
          'Downloading someone else\'s project and claiming it as your own',
          'Giving credit when using someone else\'s work and respecting others\' privacy online',
          "Sharing a friend's private photos without asking",
          'Using loops to try to hack into accounts',
        ],
        optionsMy: [
          'တစ်ဦးတစ်ယောက်၏ စီမံကိန်းကို ဒေါင်းလုဒ်ဆွဲပြီး ကိုယ့်ကိုယ်ပိုင်ဟု ပြောခြင်း',
          'သူများ၏အလုပ်ကို အသုံးပြုလျှင် ဂုဏ်ပြုကျေးဇူးတင်ခြင်းနှင့် သူများ၏ကိုယ်ရေးလုံခြုံမှုကို လေးစားခြင်း',
          'သူငယ်ချင်း၏ ကိုယ်ရေးဓာတ်ပုံများကို ခွင့်မတောင်းဘဲ မျှဝေခြင်း',
          'အကောင့်များကို ခိုးဝင်ရန် loop များကို သုံးခြင်း',
        ],
        correctIndex: 1,
      ),
    ],
  ),

  // New `generalknowledge` subject: fills a genuine content gap -- every
  // Primary grade previously had zero grade-specific General Knowledge
  // modules and silently fell back to `quizQuestionsForSubject`'s shared,
  // non-grade-specific bank (see `mock_quiz_data.dart`). One module per
  // grade (Year 1-6), following the same one-per-grade cadence as the
  // history/geography/computing rollout above, with difficulty and
  // starsReward scaling by grade the same way those subjects do. Year 1
  // and Year 4 were authored first (a scoped first slice); Year 2, 3, 5,
  // and 6 below complete the subject to full Year1-6 coverage.
  PrimaryActivityDef(
    id: 'mock-year1-generalknowledge-1',
    subject: 'generalknowledge',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Getting to Know Our World',
    titleMy: 'ကျွန်ုပ်တို့၏ကမ္ဘာကို လေ့လာခြင်း',
    descriptionEn:
        'Learn everyday facts about Myanmar, time, colors, and the world around us.',
    descriptionMy:
        'မြန်မာနိုင်ငံ၊ အချိန်၊ အရောင်များနှင့် ကျွန်ုပ်တို့ပတ်ဝန်းကျင်ကမ္ဘာအကြောင်း နေ့စဉ်အသိပညာများကို လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'What is the capital city of Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံ၏ မြို့တော်မှာ အဘယ်မြို့နည်း။',
        optionsEn: ['Naypyidaw', 'Yangon', 'Mandalay', 'Bago'],
        optionsMy: ['နေပြည်တော်', 'ရန်ကုန်', 'မန္တလေး', 'ပဲခူး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which meal do we usually eat first thing in the morning?',
        questionMy: 'မနက်စောစော ပထမဆုံး အစားစားရသော အစားအစာကို ဘာဟုခေါ်သနည်း။',
        optionsEn: ['Breakfast', 'Lunch', 'Dinner', 'Snack'],
        optionsMy: ['မနက်စာ', 'နေ့လယ်စာ', 'ညစာ', 'သရေစာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: "Which color means 'stop' on a traffic light?",
        questionMy: "မီးပွိုင့်တွင် 'ရပ်ပါ' ကိုဆိုလိုသော အရောင်မှာ အဘယ်နည်း။",
        optionsEn: ['Red', 'Green', 'Yellow', 'Blue'],
        optionsMy: ['အနီရောင်', 'အစိမ်းရောင်', 'အဝါရောင်', 'အပြာရောင်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How many months are there in a year?',
        questionMy: 'တစ်နှစ်တွင် လပေါင်းမည်မျှ ရှိသနည်း။',
        optionsEn: ['12', '10', '7', '24'],
        optionsMy: ['၁၂', '၁၀', '၇', '၂၄'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What do we call the place where we borrow books to read?',
        questionMy: 'စာအုပ်များ ငှားယူဖတ်ရှုနိုင်သော နေရာကို ဘာဟုခေါ်သနည်း။',
        optionsEn: ['Library', 'Hospital', 'Market', 'Zoo'],
        optionsMy: ['စာကြည့်တိုက်', 'ဆေးရုံ', 'စျေး', 'တိရစ္ဆာန်ဥယျာဉ်'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-generalknowledge-1',
    subject: 'generalknowledge',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'World and Community Knowledge',
    titleMy: 'ကမ္ဘာနှင့် အသိုင်းအဝိုင်း အသိပညာ',
    descriptionEn:
        "Learn about Myanmar's currency, good citizenship, ASEAN, and staying informed about the world.",
    descriptionMy:
        'မြန်မာငွေကြေး၊ ကောင်းမွန်သော နိုင်ငံသားကျင့်ဝတ်၊ အာဆီယံနှင့် ကမ္ဘာ့သတင်းအချက်အလက်များကို လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: "What is the name of Myanmar's currency?",
        questionMy: 'မြန်မာနိုင်ငံ၏ ငွေကြေးအမည်ကို ဘာဟုခေါ်သနည်း။',
        optionsEn: ['Kyat', 'Baht', 'Rupee', 'Dollar'],
        optionsMy: ['ကျပ်', 'ဘတ်', 'ရူပီး', 'ဒေါ်လာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is a basic responsibility of every good citizen?',
        questionMy:
            'ကောင်းမွန်သော နိုင်ငံသားတိုင်း၏ အခြေခံတာဝန်မှာ အဘယ်အရာနည်း။',
        optionsEn: [
          'Following rules and laws',
          'Ignoring the rules',
          'Littering in public places',
          'Being unkind to others',
        ],
        optionsMy: [
          'စည်းမျဉ်းစည်းကမ်းနှင့် ဥပဒေများကို လိုက်နာခြင်း',
          'စည်းကမ်းများကို လျစ်လျူရှုခြင်း',
          'အများပြည်သူနေရာများတွင် အမှိုက်ပစ်ခြင်း',
          'သူတစ်ပါးအား မကြင်နာဘဲ ပြုမူခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What do we call the group of Southeast Asian countries, including Myanmar, that work together?',
        questionMy:
            'မြန်မာနိုင်ငံအပါအဝင် အတူတကွ ပူးပေါင်းဆောင်ရွက်ကြသော အရှေ့တောင်အာရှနိုင်ငံများ အဖွဲ့ကို ဘာဟုခေါ်သနည်း။',
        optionsEn: ['ASEAN', 'UN', 'NATO', 'EU'],
        optionsMy: [
          'အာဆီယံ (ASEAN)',
          'ကုလသမဂ္ဂ (UN)',
          'နေတို (NATO)',
          'အီးယူ (EU)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these shows good manners when meeting someone new?',
        questionMy:
            'လူသစ်တစ်ဦးနှင့် တွေ့ဆုံသည့်အခါ ကောင်းမွန်သော အမူအကျင့်ကို ပြသသည့်အရာက အဘယ်နည်း။',
        optionsEn: [
          'Greeting them politely',
          'Ignoring them completely',
          'Interrupting them while they speak',
          'Shouting at them',
        ],
        optionsMy: [
          'ယဉ်ကျေးစွာ နှုတ်ဆက်ခြင်း',
          'လုံးဝ လျစ်လျူရှုထားခြင်း',
          'သူပြောနေစဉ် ဖြတ်ပြောခြင်း',
          'အော်ဟစ်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is a good way to stay informed about events happening around the world?',
        questionMy:
            'ကမ္ဘာတစ်ဝှမ်းတွင် ဖြစ်ပျက်နေသော အဖြစ်အပျက်များကို သိရှိရန် ကောင်းမွန်သော နည်းလမ်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Reading or watching the news',
          'Ignoring everything happening around you',
          'Only playing games all day',
          'Sleeping all day',
        ],
        optionsMy: [
          'သတင်းများကို ဖတ်ခြင်း သို့မဟုတ် ကြည့်ခြင်း',
          'ပတ်ဝန်းကျင်တွင် ဖြစ်ပျက်နေသမျှကို လျစ်လျူရှုခြင်း',
          'တစ်နေ့လုံး ဂိမ်းသာ ကစားခြင်း',
          'တစ်နေ့လုံး အိပ်နေခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-generalknowledge-1',
    subject: 'generalknowledge',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Community Helpers and Everyday Life',
    titleMy: 'အသိုင်းအဝိုင်း အကူအညီပေးသူများနှင့် နေ့စဉ်ဘဝ',
    descriptionEn:
        'Learn about the people who help our community and simple habits that keep us safe and healthy.',
    descriptionMy:
        'ကျွန်ုပ်တို့အသိုင်းအဝိုင်းကို ကူညီပေးသူများနှင့် ကျန်းမာလုံခြုံစွာနေထိုင်ရန် ရိုးရှင်းသောအလေ့အထများကို လေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'Who helps keep us safe by putting out fires?',
        questionMy:
            'မီးလောင်မှုများကို ငြိမ်းသတ်ပေးခြင်းဖြင့် ကျွန်ုပ်တို့ကို လုံခြုံအောင် ကူညီပေးသူမှာ မည်သူနည်း။',
        optionsEn: ['Firefighter', 'Teacher', 'Farmer', 'Chef'],
        optionsMy: ['မီးသတ်သမား', 'ဆရာ/ဆရာမ', 'လယ်သမား', 'စားဖိုမှူး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What do we call the person who teaches us at school?',
        questionMy:
            'ကျောင်းတွင် ကျွန်ုပ်တို့ကို သင်ကြားပေးသူကို ဘာဟုခေါ်သနည်း။',
        optionsEn: ['Teacher', 'Doctor', 'Pilot', 'Driver'],
        optionsMy: ['ဆရာ/ဆရာမ', 'ဆရာဝန်', 'လေယာဉ်မှူး', 'ကားမောင်းသူ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these jobs helps sick people get better?',
        questionMy:
            'အောက်ပါအလုပ်များထဲမှ မည်သည့်အလုပ်သည် နာမကျန်းသူများကို ပြန်လည်ကျန်းမာအောင် ကူညီပေးသနည်း။',
        optionsEn: ['Doctor', 'Farmer', 'Painter', 'Singer'],
        optionsMy: ['ဆရာဝန်', 'လယ်သမား', 'ပန်းချီဆရာ', 'သီချင်းဆိုသူ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a healthy habit?',
        questionMy:
            'အောက်ပါတို့ထဲမှ ကျန်းမာရေးနှင့်ညီညွတ်သော အလေ့အထမှာ အဘယ်နည်း။',
        optionsEn: [
          'Washing your hands before eating',
          'Eating too much candy',
          'Never brushing your teeth',
          'Staying up all night',
        ],
        optionsMy: [
          'အစားမစားမီ လက်ဆေးခြင်း',
          'သကြားလုံးများ အလွန်အကျွံစားခြင်း',
          'သွားကို လုံးဝ မပွတ်ခြင်း',
          'တစ်ညလုံး အိပ်မပျော်ဘဲနေခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these should you do if you get lost in a public place?',
        questionMy:
            'အများပြည်သူနေရာတစ်ခုတွင် လမ်းပျောက်သွားပါက ဘာလုပ်သင့်သနည်း။',
        optionsEn: [
          'Find a helper, like a police officer or staff member',
          'Wander off alone',
          'Hide and tell no one',
          'Go somewhere with a stranger',
        ],
        optionsMy: [
          'ရဲအရာရှိ (သို့) ဝန်ထမ်းကဲ့သို့ ကူညီပေးမည့်သူကို ရှာဖွေခြင်း',
          'တစ်ကိုယ်တည်း လှည့်လည်သွားလာခြင်း',
          'ဖျောက်ကွယ်၍ မည်သူ့ကိုမျှ မပြောခြင်း',
          'မသိကျွမ်းသူတစ်ဦးနှင့် တစ်နေရာသို့ လိုက်ပါသွားခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-generalknowledge-1',
    subject: 'generalknowledge',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Rules, Money, and Community Life',
    titleMy: 'စည်းမျဉ်းများ၊ ငွေကြေးနှင့် အသိုင်းအဝိုင်းဘဝ',
    descriptionEn:
        'Learn why we have rules, how money and saving work, and what good teamwork looks like.',
    descriptionMy:
        'ကျွန်ုပ်တို့ဘာကြောင့် စည်းမျဉ်းများရှိသလဲ၊ ငွေကြေးနှင့် စုဆောင်းမှု မည်သို့အလုပ်လုပ်သလဲ၊ ကောင်းမွန်သော အဖွဲ့လိုက်လုပ်ဆောင်မှု ဘယ်လိုပုံစံလဲဆိုတာ လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn:
            'What do we use to pay for things we buy, like food or toys?',
        questionMy:
            'အစားအစာ (သို့) ကစားစရာများကဲ့သို့ ဝယ်ယူသည့်အရာများအတွက် ငွေပေးချေရန် ဘာကို အသုံးပြုသနည်း။',
        optionsEn: ['Money', 'Leaves', 'Paper only', 'Rocks'],
        optionsMy: ['ငွေ', 'အရွက်များ', 'စက္ကူသက်သက်', 'ကျောက်ခဲများ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why do we have rules and laws in our community?',
        questionMy:
            'ကျွန်ုပ်တို့ အသိုင်းအဝိုင်းတွင် စည်းမျဉ်းများနှင့် ဥပဒေများ အဘယ့်ကြောင့် ရှိရသနည်း။',
        optionsEn: [
          'To keep everyone safe and treat people fairly',
          'To make life difficult',
          'So only some people can be happy',
          'They are not important',
        ],
        optionsMy: [
          'လူတိုင်းလုံခြုံပြီး တရားမျှတစွာ ဆက်ဆံနိုင်ရန်',
          'ဘဝကို ခက်ခဲစေရန်',
          'လူအချို့သာ ပျော်ရွှင်နိုင်ရန်',
          '၎င်းတို့သည် အရေးမကြီးပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is it called when you save money instead of spending it right away?',
        questionMy:
            'ငွေကို ချက်ချင်းမသုံးဘဲ စုဆောင်းထားခြင်းကို ဘာဟုခေါ်သနည်း။',
        optionsEn: ['Saving', 'Spending', 'Losing', 'Borrowing'],
        optionsMy: [
          'စုဆောင်းခြင်း',
          'သုံးစွဲခြင်း',
          'ပျောက်ဆုံးခြင်း',
          'ချေးငှားခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is an example of teamwork?',
        questionMy: 'အောက်ပါတို့ထဲမှ အဖွဲ့လိုက်လုပ်ဆောင်မှု ဥပမာမှာ အဘယ်နည်း။',
        optionsEn: [
          'Working together with others to finish a task',
          'Doing everything alone and ignoring others',
          'Refusing to help your classmates',
          "Taking credit for someone else's work",
        ],
        optionsMy: [
          'အလုပ်တစ်ခုပြီးမြောက်ရန် သူများနှင့်အတူတကွ ပူးပေါင်းလုပ်ဆောင်ခြင်း',
          'အားလုံးကို တစ်ကိုယ်တည်း လုပ်ပြီး သူများကို လျစ်လျူရှုခြင်း',
          'စာသင်ဖော်များကို ကူညီရန် ငြင်းဆန်ခြင်း',
          'သူများ၏အလုပ်ကို ကိုယ်ပိုင်ဟု ယူဆခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What should you do before crossing a busy road?',
        questionMy: 'ကားများသွားလာမှုများသော လမ်းကို မဖြတ်ခင် ဘာလုပ်သင့်သနည်း။',
        optionsEn: [
          'Look both ways and use a crosswalk if there is one',
          'Run across quickly without looking',
          'Cross while looking at your phone',
          'Close your eyes and walk',
        ],
        optionsMy: [
          'ဘေးနှစ်ဖက်ကို ကြည့်ပြီး ရှိလျှင် လမ်းဖြတ်ကျားကို အသုံးပြုခြင်း',
          'မကြည့်ဘဲ လျင်မြန်စွာ ပြေးဖြတ်ခြင်း',
          'ဖုန်းကို ကြည့်နေစဉ် လမ်းဖြတ်ခြင်း',
          'မျက်စိမှိတ်ပြီး လမ်းလျှောက်ခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-generalknowledge-1',
    subject: 'generalknowledge',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Global Awareness and Responsible Choices',
    titleMy: 'ကမ္ဘာ့သတိပေးမှုနှင့် တာဝန်သိသော ရွေးချယ်မှုများ',
    descriptionEn:
        'Learn about international cooperation, protecting the environment, and being a responsible digital citizen.',
    descriptionMy:
        'နိုင်ငံတကာ ပူးပေါင်းဆောင်ရွက်မှု၊ သဘာဝပတ်ဝန်းကျင် ကာကွယ်ခြင်းနှင့် တာဝန်သိသော ဒစ်ဂျစ်တယ်နိုင်ငံသား ဖြစ်ခြင်းအကြောင်း လေ့လာပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            "What is the name of the organization made up of nearly all the world's countries that works for peace and cooperation?",
        questionMy:
            'ကမ္ဘာ့နိုင်ငံအနီးကပ် အားလုံးပါဝင်ပြီး ငြိမ်းချမ်းရေးနှင့် ပူးပေါင်းဆောင်ရွက်မှုအတွက် လုပ်ဆောင်နေသော အဖွဲ့အစည်း၏ အမည်ကို ဘာဟုခေါ်သနည်း။',
        optionsEn: [
          'The United Nations (UN)',
          "A single country's army",
          'A private company',
          'A local sports club',
        ],
        optionsMy: [
          'ကုလသမဂ္ဂ (UN)',
          'နိုင်ငံတစ်ခု၏ တပ်မတော်',
          'ပုဂ္ဂလိကကုမ္ပဏီတစ်ခု',
          'ဒေသန္တရ အားကစားကလပ်တစ်ခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these actions helps protect the environment?',
        questionMy:
            'အောက်ပါအလုပ်များထဲမှ မည်သည်က သဘာဝပတ်ဝန်းကျင်ကို ကာကွယ်ရန် ကူညီပေးသနည်း။',
        optionsEn: [
          'Reducing, reusing, and recycling',
          'Throwing all rubbish into rivers',
          'Cutting down forests without planting new trees',
          'Wasting water and electricity',
        ],
        optionsMy: [
          'လျှော့ချခြင်း၊ ပြန်လည်အသုံးပြုခြင်းနှင့် ပြန်လည်ထုတ်လုပ်ခြင်း',
          'အမှိုက်အားလုံးကို မြစ်များထဲသို့ ပစ်ချခြင်း',
          'အပင်အသစ် မစိုက်ဘဲ တောများခုတ်ထွင်ခြင်း',
          'ရေနှင့် လျှပ်စစ်ကို ဖြုန်းတီးခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: "What does it mean to be a 'responsible digital citizen'?",
        questionMy:
            "'တာဝန်သိသော ဒစ်ဂျစ်တယ်နိုင်ငံသား' ဖြစ်ခြင်းဆိုသည်မှာ ဘာကိုဆိုလိုသနည်း။",
        optionsEn: [
          'Using technology safely, kindly, and honestly online',
          'Sharing anything without thinking',
          'Being rude to people online',
          'Ignoring online safety rules',
        ],
        optionsMy: [
          'အွန်လိုင်းတွင် နည်းပညာကို လုံခြုံစွာ၊ ကြင်နာစွာနှင့် ရိုးသားစွာ အသုံးပြုခြင်း',
          'မစဉ်းစားဘဲ မည်သည့်အရာကိုမဆို မျှဝေခြင်း',
          'အွန်လိုင်းတွင် သူများကို ရိုင်းစိုင်းစွာ ဆက်ဆံခြင်း',
          'အွန်လိုင်း လုံခြုံရေးစည်းမျဉ်းများကို လျစ်လျူရှုခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: "Which of these best describes 'diversity' in a community?",
        questionMy:
            "အသိုင်းအဝိုင်းတစ်ခု၏ 'ကွဲပြားမှု' ကို အသင့်တော်ဆုံး ဖော်ပြသည့်အရာက အဘယ်နည်း။",
        optionsEn: [
          'People with different backgrounds, cultures, and ideas living together',
          'Everyone must look and think the same way',
          'Only one culture is allowed',
          'Ignoring people who are different from you',
        ],
        optionsMy: [
          'မတူညီသော နောက်ခံ၊ ယဉ်ကျေးမှုနှင့် အတွေးအမြင်ရှိသူများ အတူတကွနေထိုင်ခြင်း',
          'လူတိုင်း အသွင်အပြင်နှင့် အတွေးအမြင် တူညီရမည်',
          'ယဉ်ကျေးမှုတစ်ခုသာ ခွင့်ပြုသည်',
          'သင်နှင့် ကွဲပြားသူများကို လျစ်လျူရှုခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why is it important to fact-check information before believing or sharing it?',
        questionMy:
            'အချက်အလက်တစ်ခုကို မယုံကြည်မီ (သို့) မမျှဝေမီ အမှန်တကယ် စစ်ဆေးရန် အဘယ့်ကြောင့် အရေးကြီးသနည်း။',
        optionsEn: [
          'Because not everything we see online or hear is true',
          'Because it wastes time',
          'Because all information is always correct',
          'Because only adults need to check facts',
        ],
        optionsMy: [
          'ကျွန်ုပ်တို့ အွန်လိုင်းတွင် မြင်ရ သို့မဟုတ် ကြားရသမျှသည် မှန်ကန်မှု မရှိသောကြောင့်',
          'အချိန်ဖြုန်းစေသောကြောင့်',
          'အချက်အလက်အားလုံးသည် အမြဲမှန်ကန်သောကြောင့်',
          'လူကြီးများသာ အချက်အလက်များကို စစ်ဆေးရန် လိုအပ်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-generalknowledge-1',
    subject: 'generalknowledge',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Global Citizenship and Critical Thinking',
    titleMy: 'ကမ္ဘာ့နိုင်ငံသားဖြစ်မှုနှင့် ဝေဖန်ဆန်းစစ်တွေးခေါ်မှု',
    descriptionEn:
        'Learn about international cooperation, human rights, sustainability, and evaluating information critically.',
    descriptionMy:
        'နိုင်ငံတကာ ပူးပေါင်းဆောင်ရွက်မှု၊ လူ့အခွင့်အရေး၊ ရေရှည်တည်တံ့ခြင်းနှင့် အချက်အလက်များကို ဝေဖန်ဆန်းစစ်ခြင်းအကြောင်း လေ့လာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'What is the term for working together with people from other countries to solve shared problems, like climate change?',
        questionMy:
            'ရာသီဥတုပြောင်းလဲမှုကဲ့သို့ ဘုံပြဿနာများကို ဖြေရှင်းရန် တခြားနိုင်ငံများမှလူများနှင့် အတူတကွ လုပ်ဆောင်ခြင်းကို ဘာဟုခေါ်သနည်း။',
        optionsEn: [
          'International cooperation',
          'Working alone',
          'Ignoring other countries',
          'Competing without sharing information',
        ],
        optionsMy: [
          'နိုင်ငံတကာ ပူးပေါင်းဆောင်ရွက်မှု',
          'တစ်ကိုယ်တည်း လုပ်ဆောင်ခြင်း',
          'အခြားနိုင်ငံများကို လျစ်လျူရှုခြင်း',
          'အချက်အလက် မမျှဝေဘဲ ယှဉ်ပြိုင်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is considered a basic human right?',
        questionMy:
            'အောက်ပါတို့ထဲမှ အခြေခံလူ့အခွင့်အရေး တစ်ခုအဖြစ် သတ်မှတ်ရသည့်အရာက အဘယ်နည်း။',
        optionsEn: [
          'The right to education',
          'The right to ignore others',
          'The right to take from others without asking',
          'The right to break the law',
        ],
        optionsMy: [
          'ပညာသင်ယူခွင့်',
          'သူများကို လျစ်လျူရှုခွင့်',
          'မတောင်းဘဲ သူများထံမှ ယူခွင့်',
          'ဥပဒေချိုးဖောက်ခွင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: "What is 'sustainability'?",
        questionMy: "'ရေရှည်တည်တံ့ခြင်း' ဆိုသည်မှာ အဘယ်နည်း။",
        optionsEn: [
          "Using resources in a way that meets today's needs without harming the future",
          'Using as many resources as possible right now',
          'Ignoring the needs of future generations',
          'Wasting resources without thinking ahead',
        ],
        optionsMy: [
          'နောင်လာနောင်သားများကို မထိခိုက်စေဘဲ ယနေ့လိုအပ်ချက်များကို ဖြည့်ဆည်းနိုင်သော နည်းဖြင့် အရင်းအမြစ်များကို အသုံးပြုခြင်း',
          'ယခုချက်ချင်း အရင်းအမြစ်များကို တတ်နိုင်သမျှ အသုံးပြုခြင်း',
          'နောင်မျိုးဆက်များ၏ လိုအပ်ချက်များကို လျစ်လျူရှုခြင်း',
          'ရှေ့ကို မစဉ်းစားဘဲ အရင်းအမြစ်များကို ဖြုန်းတီးခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is the best way to evaluate whether a news source is reliable?',
        questionMy:
            'သတင်းရင်းမြစ်တစ်ခု ယုံကြည်စိတ်ချရမရရ အကဲဖြတ်ရန် အကောင်းဆုံးနည်းလမ်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Checking if the information is backed by evidence and multiple trustworthy sources',
          'Believing anything that is shared many times',
          'Trusting a source just because it looks official',
          'Never checking any information at all',
        ],
        optionsMy: [
          'အချက်အလက်သည် သက်သေအထောက်အထားနှင့် ယုံကြည်ရသော ရင်းမြစ်များစွာက ထောက်ခံမထောက်ခံ စစ်ဆေးခြင်း',
          'အကြိမ်ရေများစွာ မျှဝေထားသည့်အရာကို ယုံကြည်ခြင်း',
          'ရင်းမြစ်တစ်ခုကို တရားဝင်ပုံရသောကြောင့်သာ ယုံကြည်ခြင်း',
          'မည်သည့်အချက်အလက်ကိုမျှ လုံးဝ မစစ်ဆေးခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: "What does it mean to have 'empathy' for someone?",
        questionMy:
            "တစ်စုံတစ်ဦးအပေါ် 'စာနာမှု' ရှိခြင်းဆိုသည်မှာ ဘာကိုဆိုလိုသနည်း။",
        optionsEn: [
          'Understanding and sharing how another person feels',
          'Ignoring how other people feel',
          'Only caring about your own feelings',
          "Making fun of someone's feelings",
        ],
        optionsMy: [
          'အခြားတစ်ဦး၏ ခံစားချက်ကို နားလည်ပြီး မျှဝေခံစားပေးခြင်း',
          'အခြားသူများ၏ ခံစားချက်ကို လျစ်လျူရှုခြင်း',
          'ကိုယ့်ကိုယ်ကိုယ် ခံစားချက်ကိုသာ ဂရုစိုက်ခြင်း',
          'တစ်စုံတစ်ဦး၏ ခံစားချက်ကို ပြောင်လှောင်ခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // Geography depth batch 1: a second module per grade (Year 1-6),
  // bringing `geography` from 1 module/grade to 2, following the same
  // "match sibling-subject depth" reasoning applied throughout this file.
  // Authored via a parallel content-generation workflow (one agent per
  // grade, each given the existing module's topic to avoid duplicating)
  // and reviewed for factual accuracy and bilingual quality before being
  // added here.
  PrimaryActivityDef(
    id: 'mock-year1-geography-2',
    subject: 'geography',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Land and Water Around Us',
    titleMy: 'ကျွန်ုပ်တို့ပတ်ဝန်းကျင်ရှိ ကုန်းမြေနှင့်ရေ',
    descriptionEn:
        'Learn about mountains, hills, rivers, lakes and the sea around us.',
    descriptionMy:
        'တောင်၊ ကုန်း၊ မြစ်၊ အင်းအိုင်နှင့် ပင်လယ်များအကြောင်း လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Which of these is very high and made of rock?',
        questionMy:
            'အောက်ပါအရာများထဲမှ အလွန်မြင့်၍ ကျောက်ခဲဖြင့်ဖြစ်သည့်အရာသည် အဘယ်နည်း။',
        optionsEn: ['Mountain', 'River', 'Lake', 'Sea'],
        optionsMy: ['တောင်', 'မြစ်', 'အင်းအိုင်', 'ပင်လယ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What do we call water that flows from the land to the sea?',
        questionMy: 'ကုန်းမြေမှ ပင်လယ်ဆီသို့ စီးဆင်းသောရေကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['River', 'Hill', 'Mountain', 'Lake'],
        optionsMy: ['မြစ်', 'ကုန်း', 'တောင်', 'အင်းအိုင်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is smaller than a mountain but still higher than flat land?',
        questionMy:
            'တောင်ထက်ငယ်သော်လည်း ညီညာသောမြေထက် မြင့်နေဆဲဖြစ်သည့်အရာသည် အဘယ်နည်း။',
        optionsEn: ['Hill', 'Sea', 'River', 'Lake'],
        optionsMy: ['ကုန်း', 'ပင်လယ်', 'မြစ်', 'အင်းအိုင်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is a calm area of water with land all around it?',
        questionMy:
            'ပတ်လည်တွင်ကုန်းမြေရှိပြီး တည်ငြိမ်သောရေရှိသည့်နေရာသည် အဘယ်နည်း။',
        optionsEn: ['Lake', 'Sea', 'Mountain', 'Hill'],
        optionsMy: ['အင်းအိုင်', 'ပင်လယ်', 'တောင်', 'ကုန်း'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these has salty water and is very big?',
        questionMy: 'ဆားငန်ရေရှိပြီး အလွန်ကျယ်ဝန်းသောနေရာသည် အဘယ်နည်း။',
        optionsEn: ['Sea', 'River', 'Lake', 'Hill'],
        optionsMy: ['ပင်လယ်', 'မြစ်', 'အင်းအိုင်', 'ကုန်း'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-geography-2',
    subject: 'geography',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Where People Live',
    titleMy: 'လူတို့နေထိုင်ရာနေရာများ',
    descriptionEn:
        'Learn about villages, towns, cities and the different kinds of homes people live in.',
    descriptionMy:
        'ကျေးရွာ၊ မြို့နှင့် မြို့ကြီးများအကြောင်းနှင့် လူတို့နေထိုင်ကြသော အိမ်အမျိုးမျိုးကို လေ့လာကြရအောင်။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn:
            'A small place where a few families live, often surrounded by farms, is called a ___.',
        questionMy:
            'လယ်ယာများနှင့် ဝန်းရံနေလေ့ရှိသော မိသားစုအနည်းငယ်နေထိုင်သည့် သေးငယ်သောနေရာကို ဘာဟုခေါ်သနည်း။',
        optionsEn: ['City', 'Village', 'Airport', 'Factory'],
        optionsMy: ['မြို့ကြီး', 'ကျေးရွာ', 'လေဆိပ်', 'စက်ရုံ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is usually true about a city compared to a village?',
        questionMy:
            'ကျေးရွာနှင့်နှိုင်းယှဉ်လျှင် မြို့ကြီးတစ်ခုနှင့်ပတ်သက်၍ များသောအားဖြင့် မှန်ကန်သည့်အချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A city has many more people and buildings',
          'A city always has no roads',
          'A city has fewer people than a village',
          'A city has only farms',
        ],
        optionsMy: [
          'မြို့ကြီးတွင် လူဦးရေနှင့် အဆောက်အအုံများ ပိုများသည်',
          'မြို့ကြီးတွင် လမ်းများ လုံးဝမရှိပါ',
          'မြို့ကြီးတွင် ကျေးရွာထက် လူနည်းသည်',
          'မြို့ကြီးတွင် လယ်ယာများသာရှိသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Many families living close together inside one tall building live in a ___.',
        questionMy:
            'မိသားစုများစွာ တစ်ဆောက်အုံတည်းအတွင်း အနီးကပ်နေထိုင်သည့်နေရာကို ဘာဟုခေါ်သနည်း။',
        optionsEn: ['Apartment building', 'Farm field', 'River', 'Forest'],
        optionsMy: ['တိုက်ခန်း (တိုက်ကြီး)', 'လယ်ကွင်း', 'မြစ်', 'တောအုပ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In many Myanmar villages, farmers often live close to their ___.',
        questionMy:
            'မြန်မာနိုင်ငံ ကျေးရွာများစွာတွင် လယ်သမားများသည် များသောအားဖြင့် မိမိတို့၏ ___ အနီးတွင် နေထိုင်ကြသည်။',
        optionsEn: ['Fields', 'Shopping malls', 'Airports', 'Train stations'],
        optionsMy: [
          'လယ်ကွင်းများ',
          'စျေးဝယ်စင်တာများ',
          'လေဆိပ်များ',
          'ရထားဘူတာများ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A place that is bigger than a village but smaller than a big city, with shops and schools, is called a ___.',
        questionMy:
            'ကျေးရွာထက်ကြီးပြီး မြို့ကြီးထက်သေးငယ်ကာ ဆိုင်များနှင့် ကျောင်းများပါရှိသောနေရာကို ဘာဟုခေါ်သနည်း။',
        optionsEn: ['Town', 'Ocean', 'Desert', 'Cave'],
        optionsMy: ['မြို့ငယ်', 'သမုဒ္ဒရာ', 'သဲကန္တာရ', 'ဂူ'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-geography-2',
    subject: 'geography',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Rivers and Mountains of Myanmar',
    titleMy: 'မြန်မာနိုင်ငံ၏ မြစ်များနှင့် တောင်တန်းများ',
    descriptionEn:
        'Learn about Myanmar\'s major rivers and mountain ranges, including the Ayeyarwady River and the country\'s highest peaks.',
    descriptionMy:
        'မြန်မာနိုင်ငံရှိ အဓိကမြစ်များနှင့် တောင်တန်းများ၊ ဧရာဝတီမြစ်နှင့် အမြင့်ဆုံးတောင်ထိပ်များအကြောင်းကို လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn:
            'What is the name of the longest and most important river in Myanmar?',
        questionMy:
            'မြန်မာနိုင်ငံရှိ အရှည်ဆုံးနှင့် အရေးအကြီးဆုံးမြစ်၏ အမည်ကား အဘယ်နည်း။',
        optionsEn: [
          'Thanlwin River',
          'Ayeyarwady River',
          'Chindwin River',
          'Sittaung River',
        ],
        optionsMy: [
          'သံလွင်မြစ်',
          'ဧရာဝတီမြစ်',
          'ချင်းတွင်းမြစ်',
          'စစ်တောင်းမြစ်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Which mountain range runs along Myanmar\'s western border?',
        questionMy:
            'မြန်မာနိုင်ငံ၏ အနောက်ဘက်နယ်စပ်တစ်လျှောက် တည်ရှိသော တောင်တန်းကား အဘယ်နည်း။',
        optionsEn: [
          'Rakhine Yoma',
          'Shan Plateau',
          'Bago Yoma',
          'Kachin Hills',
        ],
        optionsMy: [
          'ရခိုင်ရိုးမ',
          'ရှမ်းကုန်းပြင်မြင့်',
          'ပဲခူးရိုးမ',
          'ကချင်တောင်ကုန်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is the highest mountain in Myanmar (and all of Southeast Asia)?',
        questionMy:
            'အောက်ပါတို့အနက် မြန်မာနိုင်ငံ (နှင့် အရှေ့တောင်အာရှတစ်ခုလုံး) ၏ အမြင့်ဆုံးတောင်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Mount Popa',
          'Mount Zwegabin',
          'Hkakabo Razi',
          'Mount Kyaiktiyo',
        ],
        optionsMy: [
          'ပုပ္ပါးတောင်',
          'ဇွဲကပင်တောင်',
          'ခါကာဘိုရာဇီ',
          'ကျိုက်ထီးရိုးတောင်',
        ],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'The Chindwin River flows into which major river of Myanmar?',
        questionMy:
            'ချင်းတွင်းမြစ်သည် မြန်မာနိုင်ငံ၏ မည်သည့်အဓိကမြစ်ကြီးထဲသို့ စီးဝင်သနည်း။',
        optionsEn: [
          'Thanlwin River',
          'Sittaung River',
          'Ayeyarwady River',
          'Kaladan River',
        ],
        optionsMy: [
          'သံလွင်မြစ်',
          'စစ်တောင်းမြစ်',
          'ဧရာဝတီမြစ်',
          'ကုလားတန်မြစ်',
        ],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'Which river forms much of the border between Myanmar and Thailand?',
        questionMy:
            'မြန်မာနိုင်ငံနှင့် ထိုင်းနိုင်ငံအကြား နယ်စပ်အများစုကို ဖွဲ့စည်းပေးသော မြစ်ကား အဘယ်နည်း။',
        optionsEn: [
          'Ayeyarwady River',
          'Chindwin River',
          'Thanlwin River',
          'Bago River',
        ],
        optionsMy: ['ဧရာဝတီမြစ်', 'ချင်းတွင်းမြစ်', 'သံလွင်မြစ်', 'ပဲခူးမြစ်'],
        correctIndex: 2,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-geography-2',
    subject: 'geography',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Countries and Capitals of the World',
    titleMy: 'ကမ္ဘာ့နိုင်ငံများနှင့် မြို့တော်များ',
    descriptionEn:
        'Learn about well-known countries around the world and the capital cities that govern them.',
    descriptionMy:
        'ကမ္ဘာ့နိုင်ငံကျော်များနှင့် ၎င်းတို့၏အုပ်ချုပ်ရေးဌာနချုပ်ဖြစ်သော မြို့တော်များအကြောင်းကို လေ့လာကြရအောင်။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is the capital city of Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံ၏ မြို့တော်မှာ အဘယ်မြို့နည်း။',
        optionsEn: ['Yangon', 'Naypyidaw', 'Mandalay', 'Bagan'],
        optionsMy: ['ရန်ကုန်', 'နေပြည်တော်', 'မန္တလေး', 'ပုဂံ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which capital city is located in France?',
        questionMy:
            'အောက်ပါမြို့တော်များအနက် ပြင်သစ်နိုင်ငံတွင် တည်ရှိသော မြို့တော်မှာ အဘယ်မြို့နည်း။',
        optionsEn: ['Paris', 'Rome', 'Berlin', 'Madrid'],
        optionsMy: ['ပါရီမြို့', 'ရောမမြို့', 'ဘာလင်မြို့', 'မက်ဒရစ်မြို့'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Tokyo is the capital city of which country?',
        questionMy: 'တိုကျိုမြို့သည် မည်သည့်နိုင်ငံ၏ မြို့တော်ဖြစ်သနည်း။',
        optionsEn: ['China', 'South Korea', 'Japan', 'Thailand'],
        optionsMy: [
          'တရုတ်နိုင်ငံ',
          'တောင်ကိုရီးယားနိုင်ငံ',
          'ဂျပန်နိုင်ငံ',
          'ထိုင်းနိုင်ငံ',
        ],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which of these is the capital city of the United Kingdom?',
        questionMy:
            'အောက်ပါတို့အနက် ဗြိတိန်နိုင်ငံ (United Kingdom) ၏ မြို့တော်မှာ အဘယ်မြို့နည်း။',
        optionsEn: ['Manchester', 'Liverpool', 'London', 'Dublin'],
        optionsMy: [
          'မန်ချက်စတာမြို့',
          'လီဗာပူးမြို့',
          'လန်ဒန်မြို့',
          'ဒတ်ဗလင်မြို့',
        ],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Canberra is the capital city of which country?',
        questionMy: 'ကင်ဘယ်ရာမြို့သည် မည်သည့်နိုင်ငံ၏ မြို့တော်ဖြစ်သနည်း။',
        optionsEn: ['New Zealand', 'Australia', 'South Africa', 'India'],
        optionsMy: [
          'နယူးဇီလန်နိုင်ငံ',
          'သြစတြေးလျနိုင်ငံ',
          'တောင်အာဖရိကနိုင်ငံ',
          'အိန္ဒိယနိုင်ငံ',
        ],
        correctIndex: 1,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-geography-2',
    subject: 'geography',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Population and Settlements',
    titleMy: 'လူဦးရေနှင့် ဒေသချထားမှုများ',
    descriptionEn:
        'Learn about why people cluster in cities and what makes a location good for a settlement, including the differences between urban and rural life.',
    descriptionMy:
        'လူများသည် အဘယ်ကြောင့် မြို့ကြီးများတွင် စုပြုံနေထိုင်ကြသည်ကို၎င်း၊ ဒေသချထားမှုအတွက် ကောင်းမွန်သောနေရာတွင် ရှိရမည့်အချက်များကို၎င်း၊ မြို့ပြနှင့် ကျေးလက်ဘဝကွာခြားချက်များကို၎င်း လေ့လာကြရအောင်။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            'Which of these is the MAIN reason people originally settled near rivers?',
        questionMy:
            'လူများသည် မူလက မြစ်များအနီးတွင် အဘယ်ကြောင့် အဓိကအားဖြင့် အခြေချနေထိုင်ခဲ့ကြသနည်း။',
        optionsEn: [
          'Rivers provide water for drinking, farming, and transport',
          'Rivers make the weather colder',
          'Rivers are quieter than mountains',
          'Rivers attract more tourists',
        ],
        optionsMy: [
          'မြစ်များသည် သောက်ရေ၊ လယ်ယာသုံးရေနှင့် သယ်ယူပို့ဆောင်ရေးအတွက် ရေပေးနိုင်သောကြောင့်',
          'မြစ်များက ရာသီဥတုကို ပိုအေးစေသောကြောင့်',
          'မြစ်များသည် တောင်များထက် ပိုတိတ်ဆိတ်သောကြောင့်',
          'မြစ်များက ခရီးသွားများ ပိုများစေသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A flat area of fertile land is a good settlement site mainly because it is ___.',
        questionMy:
            'မြေညီညီသော မြေဆီလွှာကောင်းသည့်ဒေသသည် ဒေသချထားရန်နေရာကောင်းတစ်ခုဖြစ်ရခြင်းမှာ အဓိကအားဖြင့် ___ ဖြစ်သောကြောင့်ဖြစ်သည်။',
        optionsEn: [
          'easy to build on and good for growing crops',
          'far away from all neighbours',
          'always covered in snow',
          'difficult to reach by road',
        ],
        optionsMy: [
          'အဆောက်အအုံဆောက်ရလွယ်ကူပြီး သီးနှံစိုက်ပျိုးရန်ကောင်းမွန်သောကြောင့်',
          'အိမ်နီးချင်းအားလုံးနှင့် အလွန်ဝေးကွာနေသောကြောင့်',
          'နှင်းများနှင့် အမြဲအုပ်နေသောကြောင့်',
          'လမ်းဖြင့် ရောက်ရှိရန် ခက်ခဲသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why do many people move from rural areas to cities?',
        questionMy:
            'လူများစွာသည် ကျေးလက်ဒေသများမှ မြို့ကြီးများသို့ အဘယ်ကြောင့် ပြောင်းရွှေ့နေထိုင်ကြသနည်း။',
        optionsEn: [
          'To find more jobs, schools, and hospitals',
          'Because cities have no buildings',
          'Because farming is only possible in cities',
          'Because cities have fewer people',
        ],
        optionsMy: [
          'အလုပ်အကိုင်၊ ကျောင်းများနှင့် ဆေးရုံများ ပိုမိုရှာဖွေရန်',
          'မြို့ကြီးများတွင် အဆောက်အအုံများ မရှိသောကြောင့်',
          'လယ်ယာလုပ်ငန်းကို မြို့ကြီးများတွင်သာ ပြုလုပ်နိုင်သောကြောင့်',
          'မြို့ကြီးများတွင် လူဦးရေ ပိုနည်းသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which is a typical feature of a rural settlement compared to an urban one?',
        questionMy:
            'မြို့ပြဒေသနှင့် နှိုင်းယှဉ်ပါက ကျေးလက်ဒေသ၏ ထူးခြားချက်တစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: [
          'Fewer people and more farmland',
          'Taller skyscrapers and heavier traffic',
          'More factories than fields',
          'A larger population than any city',
        ],
        optionsMy: [
          'လူဦးရေနည်းပြီး လယ်ယာမြေများပိုများခြင်း',
          'အမြင့်ရှည်သောအဆောက်အအုံများနှင့် ယာဉ်ကြောပိတ်ဆို့မှုပိုများခြင်း',
          'လယ်ယာမြေများထက် စက်ရုံများပိုများခြင်း',
          'မည်သည့်မြို့ထက်မဆို လူဦးရေပိုများခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A hilltop location is often chosen for a settlement mainly for ___.',
        questionMy:
            'တောင်ကုန်းထိပ်ရှိနေရာကို ဒေသချထားရန် ရွေးချယ်ရခြင်းမှာ အဓိကအားဖြင့် ___ အတွက်ဖြစ်သည်။',
        optionsEn: [
          'defence, since it is easier to see enemies approaching',
          'growing rice in flooded fields',
          'keeping the area cooler in winter',
          'reducing the number of visitors',
        ],
        optionsMy: [
          'ရန်သူများချဉ်းကပ်လာသည်ကို ပိုမြင်လွယ်သောကြောင့် ကာကွယ်ရေးအတွက်',
          'ရေနစ်လယ်များတွင် ဆန်စပါးစိုက်ပျိုးရန်',
          'ဆောင်းတွင်း ဒေသကို ပိုအေးမြစေရန်',
          'လာရောက်လည်ပတ်သူအရေအတွက် လျှော့ချရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-geography-2',
    subject: 'geography',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Global Trade and Our Connected World',
    titleMy: 'ကမ္ဘာ့ကုန်သွယ်မှုနှင့် ဆက်စပ်နေသောကမ္ဘာကြီး',
    descriptionEn:
        'Learn about how goods and resources move between countries through imports and exports, and why nations depend on one another.',
    descriptionMy:
        'ကုန်ပစ္စည်းနှင့် သယံဇာတများသည် နိုင်ငံများအကြား တင်သွင်းမှုနှင့် တင်ပို့မှုများမှတစ်ဆင့် မည်သို့ရွေ့လျားကြောင်းနှင့် နိုင်ငံများအချင်းချင်း အဘယ်ကြောင့် အပြန်အလှန်မှီခိုနေရကြောင်းကို လေ့လာကြရအောင်။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'What is the term for goods that a country buys from other countries and brings into its own country?',
        questionMy:
            'တိုင်းပြည်တစ်ခုက အခြားနိုင်ငံများထံမှ ဝယ်ယူပြီး မိမိနိုင်ငံအတွင်းသို့ ယူဆောင်လာသော ကုန်ပစ္စည်းများကို ခေါ်ဝေါ်သည့်အသုံးအနှုန်းမှာ အဘယ်နည်း။',
        optionsEn: ['Exports', 'Imports', 'Surplus', 'Reserves'],
        optionsMy: [
          'တင်ပို့ကုန်များ',
          'တင်သွင်းကုန်များ',
          'ပိုလျှံငွေ',
          'အရန်ငွေ',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'What is the term for goods that a country produces and sells to other countries?',
        questionMy:
            'တိုင်းပြည်တစ်ခုက ထုတ်လုပ်ပြီး အခြားနိုင်ငံများထံသို့ ရောင်းချသော ကုန်ပစ္စည်းများကို ခေါ်ဝေါ်သည့်အသုံးအနှုန်းမှာ အဘယ်နည်း။',
        optionsEn: ['Exports', 'Imports', 'Tariffs', 'Losses'],
        optionsMy: [
          'တင်ပို့ကုန်များ',
          'တင်သွင်းကုန်များ',
          'အခွန်များ',
          'အရှုံးများ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Myanmar exports rice, teak, and natural gas to other countries. Why might a country like Myanmar still need to import machinery and electronics from other countries?',
        questionMy:
            'မြန်မာနိုင်ငံသည် ဆန်၊ သစ်ကုန်းနှင့် သဘာဝဓာတ်ငွေ့တို့ကို အခြားနိုင်ငံများသို့ တင်ပို့သည်။ မြန်မာကဲ့သို့သော နိုင်ငံသည် စက်ယန္တရားနှင့် အီလက်ထရွန်နစ်ပစ္စည်းများကို အခြားနိုင်ငံများမှ အဘယ်ကြောင့် ဆက်လက်တင်သွင်းရနိုင်သနည်း။',
        optionsEn: [
          'Because no country needs machinery or electronics',
          'Because it may not have the factories, technology, or resources to produce those goods efficiently itself',
          'Because exporting and importing the same goods is required by law',
          'Because rice and teak cannot be sold to other countries',
        ],
        optionsMy: [
          'မည်သည့်နိုင်ငံမျှ စက်ယန္တရား သို့မဟုတ် အီလက်ထရွန်နစ်ပစ္စည်းများ မလိုအပ်သောကြောင့်',
          'ထိုကုန်ပစ္စည်းများကို ကျိုးကျိုးနပ်နပ်ထုတ်လုပ်နိုင်သည့် စက်ရုံ၊ နည်းပညာ သို့မဟုတ် သယံဇာတမရှိနိုင်သောကြောင့်',
          'တူညီသောကုန်ပစ္စည်းများကို တင်ပို့ခြင်းနှင့် တင်သွင်းခြင်း နှစ်ခုလုံးကို ဥပဒေအရ လုပ်ရမည်ဖြစ်သောကြောင့်',
          'ဆန်နှင့် သစ်ကုန်းတို့ကို အခြားနိုင်ငံများသို့ မရောင်းနိုင်သောကြောင့်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'A container ship carries clothes made in a factory in one country to shops in another country. Which mode of transport is this an example of for moving trade goods across oceans?',
        questionMy:
            'ကွန်တိန်နာသင်္ဘောတစ်စင်းသည် နိုင်ငံတစ်ခုရှိ စက်ရုံတွင် ချုပ်လုပ်ထားသော အဝတ်အထည်များကို အခြားနိုင်ငံရှိ ဆိုင်များသို့ သယ်ဆောင်သည်။ ဤသည်မှာ ကုန်သွယ်ရေးပစ္စည်းများကို သမုဒ္ဒရာဖြတ်၍ ရွှေ့ပြောင်းရာတွင် အသုံးပြုသော သယ်ယူပို့ဆောင်ရေးပုံစံအနက် အဘယ်ပုံစံ၏ ဥပမာဖြစ်သနည်း။',
        optionsEn: [
          'Sea transport',
          'Air transport only',
          'Pipeline transport',
          'Space transport',
        ],
        optionsMy: [
          'ရေကြောင်းသယ်ယူပို့ဆောင်ရေး',
          'လေကြောင်းသယ်ယူပို့ဆောင်ရေးသာ',
          'ပိုက်လိုင်းသယ်ယူပို့ဆောင်ရေး',
          'အာကာသသယ်ယူပို့ဆောင်ရေး',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If a serious storm shuts down a major shipping port for several weeks, what is the most likely effect on countries that rely on that port for trade?',
        questionMy:
            'ပြင်းထန်သောမုန်တိုင်းတစ်ခုကြောင့် အဓိကရေကြောင်းဆိပ်ကမ်းတစ်ခုကို ရက်သတ္တပတ်များစွာ ပိတ်ထားရလျှင် ထိုဆိပ်ကမ်းကို ကုန်သွယ်ရေးအတွက် အားကိုးနေသော နိုင်ငံများအပေါ် အဖြစ်များဆုံး ဆိုးကျိုးသက်ရောက်မှုမှာ အဘယ်နည်း။',
        optionsEn: [
          'No effect at all, because trade does not depend on ports',
          'Goods may be delayed and prices may rise because supply chains are disrupted',
          'Every country becomes fully self-sufficient overnight',
          'Only the country that owns the port is affected',
        ],
        optionsMy: [
          'ကုန်သွယ်ရေးသည် ဆိပ်ကမ်းများအပေါ် မမှီခိုသောကြောင့် ဘာမျှမထိခိုက်ပါ',
          'ပေးသွင်းကွင်းဆက်များ အနှောင့်အယှက်ခံရသောကြောင့် ကုန်ပစ္စည်းများနောက်ကျပြီး စျေးနှုန်းများ မြင့်တက်နိုင်သည်',
          'နိုင်ငံအားလုံးသည် တစ်ညချင်းအတွင်း လုံးဝကိုယ်ပိုင်ဖြည့်ဆည်းနိုင်စွမ်းရှိလာသည်',
          'ဆိပ်ကမ်းပိုင်ဆိုင်သောနိုင်ငံသာ ထိခိုက်ခံရသည်',
        ],
        correctIndex: 1,
      ),
    ],
  ),

  // History depth batch 1: a second module per grade (Year 1-6), bringing
  // `history` from 1 module/grade to 2, matching the "geography depth
  // batch 1" block above. Authored via a parallel content-generation
  // workflow (one agent per grade), reviewed for factual accuracy and
  // bilingual quality before being added here -- the Year1/Year4 modules
  // touch Myanmar's independence history and were checked against
  // standard textbook facts (Independence Day 1948, the 1947 Panglong
  // Conference, U Nu as first Prime Minister) and kept strictly neutral,
  // with no modern political commentary.
  PrimaryActivityDef(
    id: 'mock-year1-history-2',
    subject: 'history',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Independence Day & National Heroes',
    titleMy: 'လွတ်လပ်ရေးနေ့နှင့် အမျိုးသားသူရဲကောင်းများ',
    descriptionEn:
        'Learn about Myanmar\'s Independence Day and the national hero who worked for freedom.',
    descriptionMy:
        'မြန်မာနိုင်ငံ၏ လွတ်လပ်ရေးနေ့နှင့် လွတ်လပ်ရေးအတွက် ကြိုးပမ်းခဲ့သော အမျိုးသားသူရဲကောင်းအကြောင်း လေ့လာရမည်။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'What date is Myanmar\'s Independence Day?',
        questionMy: 'မြန်မာနိုင်ငံ၏ လွတ်လပ်ရေးနေ့ကို ဘယ်နေ့မှာ ကျင်းပသနည်း။',
        optionsEn: [
          'February 12th',
          'March 27th',
          'January 4th',
          'December 25th',
        ],
        optionsMy: [
          'ဖေဖော်ဝါရီ ၁၂ ရက်',
          'မတ် ၂၇ ရက်',
          'ဇန်နဝါရီ ၄ ရက်',
          'ဒီဇင်ဘာ ၂၅ ရက်',
        ],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'Who is remembered as Myanmar\'s national hero who worked for independence?',
        questionMy:
            'မြန်မာနိုင်ငံ၏ လွတ်လပ်ရေးအတွက် ကြိုးပမ်းခဲ့သော အမျိုးသားသူရဲကောင်းသည် မည်သူနည်း။',
        optionsEn: [
          'King Anawrahta',
          'Bogyoke Aung San',
          'U Thant',
          'Queen Shin Sawbu',
        ],
        optionsMy: [
          'အနော်ရထာမင်း',
          'ဗိုလ်ချုပ်အောင်ဆန်း',
          'ဦးသန့်',
          'ရှင်စောပု',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What does Myanmar celebrate on Independence Day?',
        questionMy:
            'မြန်မာနိုင်ငံသည် လွတ်လပ်ရေးနေ့တွင် အဘယ်အရာကို ကျင်းပကြသနည်း။',
        optionsEn: [
          'The Buddhist New Year',
          'A big harvest',
          'Freedom from colonial rule',
          'The start of the school year',
        ],
        optionsMy: [
          'သင်္ကြန်နှစ်သစ်ကူး',
          'စပါးရိတ်သိမ်းချိန်ကြီး',
          'ကိုလိုနီအုပ်ချုပ်ရေးမှ လွတ်မြောက်ခြင်း',
          'ကျောင်းစတင်သည့်နှစ်',
        ],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'Aung San is often called \'Bogyoke.\' What does this title mean?',
        questionMy:
            'အောင်ဆန်းအား \'ဗိုလ်ချုပ်\' ဟု မကြာခဏ ခေါ်ကြသည်။ ဤဂုဏ်ပုဒ်၏ အနက်အဓိပ္ပာယ်မှာ အဘယ်အရာဖြစ်သနည်း။',
        optionsEn: ['Teacher', 'General', 'Doctor', 'Farmer'],
        optionsMy: ['ဆရာ', 'ဗိုလ်ချုပ်', 'ဆရာဝန်', 'လယ်သမား'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What do people often do on Myanmar\'s Independence Day?',
        questionMy:
            'မြန်မာနိုင်ငံ၏ လွတ်လပ်ရေးနေ့တွင် လူများ အဘယ်အရာကို ပြုလုပ်လေ့ရှိကြသနည်း။',
        optionsEn: [
          'Plant rice in the fields',
          'Raise the Myanmar flag',
          'Go to school for exams',
          'Clean the temple only',
        ],
        optionsMy: [
          'လယ်ကွင်းတွင် စပါးစိုက်ပျိုးခြင်း',
          'မြန်မာနိုင်ငံအလံကို လွှင့်ထူခြင်း',
          'စာမေးပွဲအတွက် ကျောင်းသွားခြင်း',
          'ဘုရားကိုသာ သန့်ရှင်းရေးလုပ်ခြင်း',
        ],
        correctIndex: 1,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-history-2',
    subject: 'history',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Old Buildings and Special Places',
    titleMy: 'ရှေးဟောင်းအဆောက်အအုံများနှင့် အထူးနေရာများ',
    descriptionEn:
        'Learn about pagodas, palaces, and museums, and discover why we take care of old buildings.',
    descriptionMy:
        'ဘုရားစေတီများ၊ နန်းတော်များနှင့် ပြတိုက်များအကြောင်း လေ့လာပြီး ရှေးဟောင်းအဆောက်အအုံများကို အဘယ်ကြောင့် ထိန်းသိမ်းထားရသည်ကို လေ့လာပါမည်။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn:
            'What is a tall, golden building where people go to pray called?',
        questionMy:
            'လူများ ဆုတောင်းရန် သွားလေ့ရှိသော အမြင့်ကြီး ရွှေရောင် အဆောက်အအုံကို ဘာခေါ်သနည်း။',
        optionsEn: ['School', 'Pagoda', 'Market', 'Hospital'],
        optionsMy: ['ကျောင်း', 'ဘုရားစေတီ', 'စျေး', 'ဆေးရုံ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Long ago, who used to live in a palace?',
        questionMy: 'ရှေးအခါက နန်းတော်တွင် မည်သူများ နေထိုင်ခဲ့ကြသနည်း။',
        optionsEn: ['Farmers', 'Kings and queens', 'Teachers', 'Fishermen'],
        optionsMy: [
          'လယ်သမားများ',
          'ဘုရင်နှင့် မိဖုရားများ',
          'ဆရာများ',
          'တံငါများ',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Where can we go to see old objects from the past kept safe for people to learn from?',
        questionMy:
            'ရှေးဟောင်းပစ္စည်းများကို လူများ လေ့လာနိုင်ရန် ဘေးကင်းစွာ ထိန်းသိမ်းထားသော နေရာသည် အဘယ်နေရာဖြစ်သနည်း။',
        optionsEn: [
          'A playground',
          'A supermarket',
          'A museum',
          'A bus station',
        ],
        optionsMy: ['ကစားကွင်း', 'စူပါမားကတ်', 'ပြတိုက်', 'ဘတ်စ်ကားဂိတ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'What is the ancient city of Bagan in Myanmar famous for having thousands of?',
        questionMy:
            'မြန်မာနိုင်ငံရှိ ရှေးဟောင်းမြို့တော် ပုဂံသည် အဘယ်အရာ ထောင်ပေါင်းများစွာ ရှိသဖြင့် ကျော်ကြားသနည်း။',
        optionsEn: [
          'Modern hospitals',
          'Old pagodas',
          'Big factories',
          'New schools',
        ],
        optionsMy: [
          'ခေတ်မီဆေးရုံများ',
          'ရှေးဟောင်းဘုရားစေတီများ',
          'စက်ရုံကြီးများ',
          'ကျောင်းအသစ်များ',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Why do we take care of old buildings instead of knocking them down?',
        questionMy:
            'အဆောက်အအုံဟောင်းများကို ဖျက်သိမ်းမည့်အစား အဘယ်ကြောင့် ထိန်းသိမ်းထားကြသနည်း။',
        optionsEn: [
          'Because they are cheap to build',
          'To remember and learn about the past',
          'To use them as car parks',
          'Because new buildings are not allowed',
        ],
        optionsMy: [
          'တည်ဆောက်ရန် စျေးသက်သာသောကြောင့်',
          'အတိတ်ကာလကို သတိရ၍ လေ့လာနိုင်ရန်',
          'ကားရပ်နားရန် အသုံးပြုရန်',
          'အဆောက်အအုံသစ် တည်ဆောက်ခွင့်မရှိသောကြောင့်',
        ],
        correctIndex: 1,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-history-2',
    subject: 'history',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Early Kingdoms of Myanmar',
    titleMy: 'မြန်မာ့ရှေးဟောင်းနိုင်ငံများ',
    descriptionEn:
        'Learn about the ancient Pyu city-states and the Kingdom of Bagan, and discover why Bagan\'s many temples make it so historically important.',
    descriptionMy:
        'ရှေးဟောင်းပျူမြို့ပြနိုင်ငံများနှင့် ပုဂံဘုရင့်နိုင်ငံတော်အကြောင်း၊ ပုဂံရှိ ဘုရားပုထိုးများစွာသည် သမိုင်းအရေးပါသည့်အကြောင်းရင်းကို လေ့လာရမည်ဖြစ်သည်။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn:
            'What were the Pyu people known for building in ancient Myanmar?',
        questionMy:
            'ရှေးခေတ်မြန်မာနိုင်ငံတွင် ပျူလူမျိုးများသည် အဘယ်အရာကို တည်ဆောက်ခြင်းဖြင့် လူသိများခဲ့သနည်း။',
        optionsEn: [
          'Walled city-states',
          'Underground railways',
          'Snow palaces',
          'Floating islands',
        ],
        optionsMy: [
          'တံတိုင်းရံထားသော မြို့ပြနိုင်ငံများ',
          'မြေအောက်ရထားလမ်းများ',
          'နှင်းနန်းတော်များ',
          'ရေပေါ်ကျွန်းများ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which famous kingdom was founded in Bagan?',
        questionMy: 'ပုဂံတွင် တည်ထောင်ခဲ့သည့် နာမည်ကြီးနိုင်ငံသည် အဘယ်နည်း။',
        optionsEn: [
          'The Kingdom of Bagan',
          'The Kingdom of Rome',
          'The Kingdom of Siam',
          'The Kingdom of Nepal',
        ],
        optionsMy: [
          'ပုဂံနိုင်ငံတော်',
          'ရောမနိုင်ငံတော်',
          'သျှမ်းနိုင်ငံတော်',
          'နီပေါနိုင်ငံတော်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is Bagan famous for having thousands of?',
        questionMy: 'ပုဂံသည် ထောင်ချီရှိသော အဘယ်အရာများဖြင့် နာမည်ကြီးသနည်း။',
        optionsEn: [
          'Temples and pagodas',
          'Tall skyscrapers',
          'Football stadiums',
          'Ice rinks',
        ],
        optionsMy: [
          'ဘုရားနှင့် ဘုရားပုထိုးများ',
          'မိုးမျှော်တိုက်များ',
          'ဘောလုံးကွင်းများ',
          'ရေခဲကွင်းများ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why is Bagan historically important to Myanmar?',
        questionMy: 'ပုဂံသည် မြန်မာ့သမိုင်းတွင် အဘယ်ကြောင့် အရေးပါသနည်း။',
        optionsEn: [
          'It was one of the first great kingdoms to unite much of Myanmar',
          'It was the last village ever built',
          'It was a small fishing hut',
          'It had no people living there',
        ],
        optionsMy: [
          'မြန်မာနိုင်ငံ၏ အများစုကို ပထမဆုံး စည်းလုံးအောင် တည်ထောင်နိုင်ခဲ့သည့် နိုင်ငံတော်ကြီးများထဲမှ တစ်ခုဖြစ်သောကြောင့်',
          'နောက်ဆုံးတည်ဆောက်သော ရွာငယ်လေးဖြစ်သောကြောင့်',
          'ငါးဖမ်းသည့် တဲငယ်လေးဖြစ်သောကြောင့်',
          'မည်သူမျှ နေထိုင်ခြင်းမရှိသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In ancient Myanmar, which came first: the Pyu city-states or the Kingdom of Bagan?',
        questionMy:
            'ရှေးခေတ်မြန်မာနိုင်ငံတွင် ပျူမြို့ပြနိုင်ငံများနှင့် ပုဂံနိုင်ငံတော်တို့အနက် အဘယ်ကို ပိုမိုစော်စွာတည်ရှိခဲ့သနည်း။',
        optionsEn: [
          'The Pyu city-states',
          'The Kingdom of Bagan',
          'They started on the exact same day',
          'Neither ever existed',
        ],
        optionsMy: [
          'ပျူမြို့ပြနိုင်ငံများ',
          'ပုဂံနိုင်ငံတော်',
          'နှစ်ခုစလုံး တစ်ရက်တည်းတွင် စတင်ခဲ့သည်',
          'နှစ်ခုလုံး တည်ရှိခဲ့ခြင်းမရှိပါ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-history-2',
    subject: 'history',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Myanmar\'s Path to Independence',
    titleMy: 'မြန်မာ့လွတ်လပ်ရေးခရီး',
    descriptionEn:
        'Learn about how Myanmar gained independence from colonial rule and the national leaders who made it happen.',
    descriptionMy:
        'မြန်မာနိုင်ငံ ကိုလိုနီအုပ်ချုပ်မှုမှ လွတ်လပ်ရေးရရှိလာပုံနှင့် ထိုအတွက်ကြိုးပမ်းခဲ့ကြသော အမျိုးသားခေါင်းဆောင်များအကြောင်း လေ့လာရမည်။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn:
            'On what date did Myanmar gain independence from British rule?',
        questionMy:
            'မြန်မာနိုင်ငံသည် ဗြိတိသျှအုပ်ချုပ်မှုမှ မည်သည့်နေ့ရက်တွင် လွတ်လပ်ရေးရရှိခဲ့သနည်း။',
        optionsEn: [
          'January 4, 1938',
          'January 4, 1948',
          'August 4, 1948',
          'January 4, 1958',
        ],
        optionsMy: [
          'ဇန်နဝါရီ ၄ ရက်၊ ၁၉၃၈ ခုနှစ်',
          'ဇန်နဝါရီ ၄ ရက်၊ ၁၉၄၈ ခုနှစ်',
          'သြဂုတ် ၄ ရက်၊ ၁၉၄၈ ခုနှစ်',
          'ဇန်နဝါရီ ၄ ရက်၊ ၁၉၅၈ ခုနှစ်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Which national leader is remembered as the chief architect of Myanmar\'s independence movement?',
        questionMy:
            'မြန်မာနိုင်ငံ၏ လွတ်လပ်ရေးလှုပ်ရှားမှုကို ဦးဆောင်ခဲ့သော အဓိကခေါင်းဆောင်မှာ မည်သူဖြစ်သနည်း။',
        optionsEn: ['U Nu', 'General Aung San', 'U Thant', 'King Thibaw'],
        optionsMy: ['ဦးနု', 'ဗိုလ်ချုပ်အောင်ဆန်း', 'ဦးသန့်', 'ဘုရင်သီးဘော'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Which country ruled Myanmar as a colony before it gained independence?',
        questionMy:
            'လွတ်လပ်ရေးမရမီ မြန်မာနိုင်ငံကို ကိုလိုနီနိုင်ငံအဖြစ် အုပ်ချုပ်ခဲ့သည့်နိုင်ငံမှာ မည်သည်နည်း။',
        optionsEn: ['France', 'Portugal', 'Britain', 'Japan'],
        optionsMy: ['ပြင်သစ်', 'ပေါ်တူဂီ', 'ဗြိတိန်', 'ဂျပန်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'In what year was the Panglong Conference held, where ethnic leaders agreed to unite with Aung San for independence?',
        questionMy:
            'ဗိုလ်ချုပ်အောင်ဆန်းနှင့်အတူ တိုင်းရင်းသားခေါင်းဆောင်များ စည်းလုံးညီညွတ်စွာ လွတ်လပ်ရေးရယူရန် သဘောတူညီခဲ့ကြသော ပင်လုံညီလာခံကို မည်သည့်နှစ်တွင် ကျင်းပခဲ့သနည်း။',
        optionsEn: ['1945', '1950', '1948', '1947'],
        optionsMy: ['၁၉၄၅ ခုနှစ်', '၁၉၅၀ ခုနှစ်', '၁၉၄၈ ခုနှစ်', '၁၉၄၇ ခုနှစ်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn:
            'Who became Myanmar\'s first Prime Minister after independence in 1948?',
        questionMy:
            '၁၉၄၈ ခုနှစ် လွတ်လပ်ရေးရပြီးနောက် မြန်မာနိုင်ငံ၏ ပထမဆုံးဝန်ကြီးချုပ်ဖြစ်လာသူမှာ မည်သူနည်း။',
        optionsEn: ['General Aung San', 'U Nu', 'General Ne Win', 'U Thant'],
        optionsMy: [
          'ဗိုလ်ချုပ်အောင်ဆန်း',
          'ဦးနု',
          'ဗိုလ်ချုပ်ကြီးနေဝင်း',
          'ဦးသန့်',
        ],
        correctIndex: 1,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-history-2',
    subject: 'history',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn:
        'Ancient Civilizations of Asia: The Indus Valley and Ancient China',
    titleMy:
        'အာရှရှေးဟောင်းယဉ်ကျေးမှုများ - အင်ဒပ်စ်ချိုင့်ဝှမ်းနှင့် ရှေးဟောင်းတရုတ်ပြည်',
    descriptionEn:
        'Learn about the achievements and inventions of the Indus Valley Civilization and Ancient China, and see how they compare to Ancient Egypt.',
    descriptionMy:
        'အင်ဒပ်စ်ချိုင့်ဝှမ်းယဉ်ကျေးမှုနှင့် ရှေးဟောင်းတရုတ်ပြည်၏ အောင်မြင်မှုများနှင့် တီထွင်မှုများအကြောင်း လေ့လာပြီး ၎င်းတို့ကို ရှေးဟောင်းအီဂျစ်နှင့် ဘယ်လိုနှိုင်းယှဉ်နိုင်သည်ကို လေ့လာပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            'The Indus Valley Civilization grew along the banks of which river?',
        questionMy:
            'အင်ဒပ်စ်ချိုင့်ဝှမ်းယဉ်ကျေးမှုသည် မည်သည့်မြစ်ကမ်းတလျှောက်တွင် ဖွံ့ဖြိုးခဲ့သနည်း။',
        optionsEn: [
          'The Indus River',
          'The Nile River',
          'The Yellow River',
          'The Ganges River',
        ],
        optionsMy: ['အင်ဒပ်စ်မြစ်', 'နိုင်းမြစ်', 'မြစ်ဝါ', 'ဂင်္ဂါမြစ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is a major achievement of Indus Valley cities such as Mohenjo-daro and Harappa?',
        questionMy:
            'မိုဟင်ဂျိုဒါရိုနှင့် ဟာရပ္ပါကဲ့သို့ အင်ဒပ်စ်ချိုင့်ဝှမ်းမြို့များ၏ အဓိကအောင်မြင်မှုမှာ အောက်ပါတို့အနက် မည်သည့်အရာဖြစ်သနည်း။',
        optionsEn: [
          'Carefully planned streets with advanced drainage and sewer systems',
          'Giant pyramids built as tombs for kings',
          'The invention of paper money',
          'A great wall built to stop invaders',
        ],
        optionsMy: [
          'အဆင့်မြင့်ရေမြောင်းနှင့် စွန့်ပစ်ရေစနစ်များပါဝင်သော စနစ်တကျစီစဉ်ထားသည့်လမ်းများ',
          'ဘုရင်များ၏ သင်္ချိုင်းများအဖြစ် ဆောက်လုပ်ထားသော ပိရမစ်ကြီးများ',
          'စက္ကူငွေတီထွင်မှု',
          'ကျူးကျော်သူများကို တားဆီးရန် ဆောက်လုပ်ထားသော တံတိုင်းကြီး',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why was the Yellow River (Huang He) important to Ancient Chinese civilization, even though it could also be dangerous?',
        questionMy:
            'ရှေးဟောင်းတရုတ်ယဉ်ကျေးမှုအတွက် မြစ်ဝါ (Huang He) သည် အန္တရာယ်ရှိနိုင်သော်လည်း အဘယ်ကြောင့် အရေးကြီးခဲ့သနည်း။',
        optionsEn: [
          'It brought fertile silt that made the land good for farming, though it could also flood destructively',
          'It was completely safe and never caused any floods',
          'It was too salty for any crops to grow near it',
          'It kept Ancient China completely cut off from all trade',
        ],
        optionsMy: [
          'ရေကြီးမှုကြောင့် ပျက်စီးမှုဖြစ်စေနိုင်သော်လည်း စိုက်ပျိုးရန်ကောင်းမွန်သော မြေဆီလွှာများ ယူဆောင်လာသောကြောင့်',
          'လုံးဝဘေးကင်းပြီး ရေကြီးမှု တစ်ခါမျှ မဖြစ်စေသောကြောင့်',
          'ကမ်းနားတွင် သီးနှံများ စိုက်ပျိုးရန် ငန်လွန်းသောကြောင့်',
          'ရှေးဟောင်းတရုတ်ပြည်ကို ကုန်သွယ်မှုအားလုံးမှ လုံးဝဖြတ်တောက်ထားသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which is a reason that Ancient Chinese inventions such as silk and paper became so valuable to other civilizations?',
        questionMy:
            'ပိတ်ချောနှင့် စက္ကူကဲ့သို့ ရှေးဟောင်းတရုတ်တီထွင်မှုများသည် အခြားယဉ်ကျေးမှုများအတွက် အလွန်တန်ဖိုးရှိလာရသည့် အကြောင်းရင်းတစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: [
          'They were useful, well-made goods that could be traded along routes connecting China to distant lands',
          'Every ancient civilization already made the same goods',
          'They had no practical use to anyone',
          'They were only ever buried in tombs and never traded',
        ],
        optionsMy: [
          'အသုံးဝင်ပြီး ကောင်းစွာပြုလုပ်ထားသော ကုန်ပစ္စည်းများဖြစ်ကာ ဝေးကွာသောနိုင်ငံများသို့ ချိတ်ဆက်ပေးသည့် ကုန်သွယ်လမ်းကြောင်းများဖြင့် ရောင်းဝယ်နိုင်ခဲ့သောကြောင့်',
          'ရှေးဟောင်းယဉ်ကျေးမှုတိုင်းက ထိုကုန်ပစ္စည်းများကို ရှိပြီးသားဖြစ်နေသောကြောင့်',
          'မည်သူ့အတွက်မျှ လက်တွေ့အသုံးဝင်မှု မရှိသောကြောင့်',
          'သင်္ချိုင်းများတွင်သာ မြှုပ်နှံခဲ့ပြီး ဘယ်တော့မှ ရောင်းဝယ်မှု မရှိခဲ့သောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which statement best compares Ancient Egypt, the Indus Valley Civilization, and Ancient China?',
        questionMy:
            'ရှေးဟောင်းအီဂျစ်၊ အင်ဒပ်စ်ချိုင့်ဝှမ်းယဉ်ကျေးမှုနှင့် ရှေးဟောင်းတရုတ်တို့ကို နှိုင်းယှဉ်ရာတွင် အကောင်းဆုံးဖော်ပြသည့်အချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'All three grew along fertile river valleys that supported farming, cities, and trade',
          'None of the three ever built any cities',
          'None of the three ever developed a writing system',
          'All three built pyramids as their main type of monument',
        ],
        optionsMy: [
          'သုံးမျိုးလုံးသည် စိုက်ပျိုးရေး၊ မြို့ပြများနှင့် ကုန်သွယ်မှုကို ထောက်ပံ့ပေးသည့် မြေသြဇာကောင်းသော မြစ်ချိုင့်ဝှမ်းများတလျှောက် ဖွံ့ဖြိုးခဲ့ကြသည်',
          'သုံးမျိုးလုံးသည် မြို့ပြများကို လုံးဝ မတည်ဆောက်ခဲ့ကြပေ',
          'သုံးမျိုးလုံးသည် စာရေးစနစ်ကို လုံးဝ မတီထွင်ခဲ့ကြပေ',
          'သုံးမျိုးလုံးသည် ၎င်းတို့၏ အဓိကအထိမ်းအမှတ်အဆောက်အအုံအဖြစ် ပိရမစ်များကိုသာ ဆောက်လုပ်ခဲ့ကြသည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-history-2',
    subject: 'history',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'The Industrial Revolution: Inventions That Changed the World',
    titleMy: 'စက်မှုတော်လှန်ရေး: ကမ္ဘာကို ပြောင်းလဲခဲ့သော တီထွင်မှုများ',
    descriptionEn:
        'Learn about the major inventions of the Industrial Revolution and how they changed the way people live and work today.',
    descriptionMy:
        'စက်မှုတော်လှန်ရေးကာလ၏ အဓိကတီထွင်မှုများနှင့် ၎င်းတို့သည် လူများ၏ ယနေ့ခေတ် နေထိုင်လုပ်ကိုင်ပုံကို မည်သို့ပြောင်းလဲစေခဲ့သည်ကို လေ့လာပါမည်။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'What was the main change brought about by the Industrial Revolution?',
        questionMy:
            'စက်မှုတော်လှန်ရေးက ဘာအဓိကပြောင်းလဲမှုကို ဖြစ်ပေါ်စေခဲ့သနည်း။',
        optionsEn: [
          'People began using machines in factories instead of making goods by hand',
          'People stopped using money and started trading only with goods',
          'People began growing all their food using machines only',
          'People stopped building any new towns or cities',
        ],
        optionsMy: [
          'လူများသည် လက်ဖြင့်ထုတ်လုပ်မည့်အစား စက်ရုံများတွင် စက်များကို အသုံးပြု၍ ပစ္စည်းများထုတ်လုပ်လာကြသည်',
          'လူများသည် ငွေကြေးအသုံးပြုမှုကို ရပ်ဆိုင်း၍ ပစ္စည်းချင်းလဲလှယ်ရောင်းဝယ်ခြင်းသာ ပြုလုပ်လာကြသည်',
          'လူများသည် အစားအစာအားလုံးကို စက်များဖြင့်သာ စိုက်ပျိုးလာကြသည်',
          'လူများသည် မြို့သစ်များထပ်မံတည်ဆောက်ခြင်း ရပ်ဆိုင်းခဲ့ကြသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Where and when did the Industrial Revolution begin?',
        questionMy:
            'စက်မှုတော်လှန်ရေးသည် မည်သည့်နေရာနှင့် မည်သည့်အချိန်တွင် အစပြုခဲ့သနည်း။',
        optionsEn: [
          'In Britain, in the late 1700s',
          'In Japan, in the 1990s',
          'In the United States, in the 1500s',
          'In Egypt, in ancient times',
        ],
        optionsMy: [
          '၁၇၀၀ ပြည့်နှစ်များ နှောင်းပိုင်းတွင် ဗြိတိန်နိုင်ငံ၌',
          '၁၉၉၀ ပြည့်နှစ်များတွင် ဂျပန်နိုင်ငံ၌',
          '၁၅၀၀ ပြည့်နှစ်များတွင် အမေရိကန်ပြည်ထောင်စု၌',
          'ရှေးခေတ်တွင် အီဂျစ်နိုင်ငံ၌',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which invention helped power factories and trains during the Industrial Revolution?',
        questionMy:
            'စက်မှုတော်လှန်ရေးကာလအတွင်း စက်ရုံများနှင့် ရထားများကို စွမ်းအင်ဖြည့်ဆည်းပေးရန် အထောက်အကူဖြစ်စေခဲ့သော တီထွင်မှုမှာ အဘယ်နည်း။',
        optionsEn: [
          'The steam engine',
          'The mobile phone',
          'The television',
          'The computer',
        ],
        optionsMy: ['အငွေ့စက်', 'လက်ကိုင်ဖုန်း', 'ရုပ်မြင်သံကြား', 'ကွန်ပျူတာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Before the Industrial Revolution, why did most people live and work in the countryside?',
        questionMy:
            'စက်မှုတော်လှန်ရေးမတိုင်မီက လူအများစုသည် အဘယ်ကြောင့် ကျေးလက်ဒေသများတွင် နေထိုင်၍ အလုပ်လုပ်ကြသနည်း။',
        optionsEn: [
          'Because most people worked on farms growing food',
          'Because factories did not allow people to live in cities',
          'Because cities had not been invented yet',
          'Because trains could not travel to cities',
        ],
        optionsMy: [
          'လူအများစုသည် လယ်ယာများတွင် စိုက်ပျိုးရေးလုပ်ငန်းများ လုပ်ကိုင်နေခဲ့ကြသောကြောင့်',
          'စက်ရုံများက လူများကို မြို့တွင်းနေထိုင်ခွင့် မပြုသောကြောင့်',
          'မြို့များ မတည်ရှိသေးသောကြောင့်',
          'ရထားများက မြို့များသို့ မသွားနိုင်သေးသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What was one lasting effect of the Industrial Revolution on how people live today?',
        questionMy:
            'စက်မှုတော်လှန်ရေး၏ ယနေ့ခေတ်လူနေမှုပုံစံအပေါ် ကျန်ရစ်ခဲ့သော အကျိုးသက်ရောက်မှုတစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: [
          'Many people moved from villages to cities to work in factories, and goods began to be produced in large numbers',
          'People stopped using tools completely',
          'Farming became the only way to make a living',
          'Countries stopped building roads and railways',
        ],
        optionsMy: [
          'လူအများသည် ကျေးရွာများမှ မြို့များသို့ ပြောင်းရွှေ့၍ စက်ရုံများတွင် အလုပ်လုပ်ကြပြီး ပစ္စည်းများကို အများအပြားထုတ်လုပ်လာကြသည်',
          'လူများသည် ကိရိယာများကို လုံးဝ အသုံးမပြုတော့ချေ',
          'စိုက်ပျိုးရေးသည် အသက်မွေးဝမ်းကျောင်းတစ်ခုတည်းသာ ဖြစ်လာသည်',
          'နိုင်ငံများသည် လမ်းနှင့် မီးရထားလမ်းများ တည်ဆောက်ခြင်း ရပ်ဆိုင်းခဲ့သည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // Computing depth batch 1: a second module per grade (Year 1-6),
  // bringing `computing` from 1 module/grade to 2, matching the
  // "geography/history depth batch 1" blocks above. Authored via a
  // parallel content-generation workflow (one agent per grade), reviewed
  // for technical accuracy (Year6's binary-to-decimal conversions were
  // independently verified: 10b=2, 11b=3, 100b=4) and bilingual quality
  // before being added here.
  PrimaryActivityDef(
    id: 'mock-year1-computing-2',
    subject: 'computing',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Inputs and Outputs Around Us',
    titleMy: 'ကျွန်ုပ်တို့ပတ်ဝန်းကျင်ရှိ Input နှင့် Output များ',
    descriptionEn:
        'Learn about input devices that send information into a computer and output devices that show information back to us.',
    descriptionMy:
        'ကွန်ပျူတာထဲသို့ အချက်အလက်ပို့ပေးသည့် Input စက်ပစ္စည်းများနှင့် ကျွန်ုပ်တို့ကို အချက်အလက်ပြန်ပြသည့် Output စက်ပစ္စည်းများအကြောင်း လေ့လာပါမည်။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn:
            'Which of these is an INPUT device that lets you type letters into a computer?',
        questionMy:
            'ကွန်ပျူတာထဲသို့ စာလုံးများ ရိုက်ထည့်နိုင်သော Input စက်ပစ္စည်းမှာ ဘယ်ဟာလဲ။',
        optionsEn: ['Keyboard', 'Speaker', 'Screen', 'Printer'],
        optionsMy: [
          'ကီးဘုတ် (Keyboard)',
          'စပီကာ (Speaker)',
          'မျက်နှာပြင် (Screen)',
          'ပရင်တာ (Printer)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A mouse is an example of which kind of device?',
        questionMy: 'မောက်စ် (Mouse) သည် ဘယ်လိုစက်ပစ္စည်းအမျိုးအစားဖြစ်သနည်း။',
        optionsEn: ['Output device', 'Input device', 'Printer', 'Speaker'],
        optionsMy: ['Output စက်ပစ္စည်း', 'Input စက်ပစ္စည်း', 'ပရင်တာ', 'စပီကာ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Which device lets a computer SHOW pictures and words to us?',
        questionMy:
            'ကွန်ပျူတာက ကျွန်ုပ်တို့ကို ပုံများနှင့် စာသားများ ပြသနိုင်စေသည့် စက်ပစ္စည်းမှာ ဘယ်ဟာလဲ။',
        optionsEn: ['Microphone', 'Keyboard', 'Screen', 'Mouse'],
        optionsMy: [
          'မိုက်ခရိုဖုန်း (Microphone)',
          'ကီးဘုတ် (Keyboard)',
          'မျက်နှာပြင် (Screen)',
          'မောက်စ် (Mouse)',
        ],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'A microphone lets us give our voice to a computer. What kind of device is it?',
        questionMy:
            'မိုက်ခရိုဖုန်းသည် ကျွန်ုပ်တို့၏ အသံကို ကွန်ပျူတာထဲသို့ ပို့ပေးနိုင်သည်။ ၎င်းသည် ဘယ်လိုစက်ပစ္စည်းအမျိုးအစားဖြစ်သနည်း။',
        optionsEn: [
          'Input device',
          'Output device',
          'Screen device',
          'Printer device',
        ],
        optionsMy: [
          'Input စက်ပစ္စည်း',
          'Output စက်ပစ္စည်း',
          'မျက်နှာပြင်စက်ပစ္စည်း',
          'ပရင်တာစက်ပစ္စည်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which device turns your computer work into paper copies?',
        questionMy:
            'ကွန်ပျူတာရှိ အလုပ်ကို စက္ကူပေါ်သို့ ပြောင်းပေးနိုင်သော စက်ပစ္စည်းမှာ ဘယ်ဟာလဲ။',
        optionsEn: ['Printer', 'Keyboard', 'Mouse', 'Microphone'],
        optionsMy: [
          'ပရင်တာ (Printer)',
          'ကီးဘုတ် (Keyboard)',
          'မောက်စ် (Mouse)',
          'မိုက်ခရိုဖုန်း (Microphone)',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-computing-2',
    subject: 'computing',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Programs and Apps: What They Do',
    titleMy: 'ပရိုဂရမ်များနှင့် အက်ပ်များ - ၎င်းတို့ဘာလုပ်ကြသလဲ',
    descriptionEn:
        'Learn about common apps and programs and match each one to the job it helps you do.',
    descriptionMy:
        'အသုံးများသော အက်ပ်များနှင့် ပရိုဂရမ်များအကြောင်း လေ့လာပြီး၊ တစ်ခုစီက မည်သည့်အလုပ်ကို ကူညီဆောင်ရွက်ပေးသည်ကို တွဲချိတ်လေ့ကျင့်ပါမည်။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'Which app would you use to draw a picture on a tablet?',
        questionMy:
            'တက်ဘလက်ပေါ်တွင် ပုံတစ်ပုံဆွဲရန် မည်သည့်အက်ပ်ကို သုံးမည်နည်း။',
        optionsEn: [
          'A drawing app',
          'A calculator app',
          'A music player app',
          'A clock app',
        ],
        optionsMy: [
          'ပုံဆွဲအက်ပ်',
          'ဂဏန်းတွက်စက်အက်ပ်',
          'တေးဂီတဖွင့်အက်ပ်',
          'နာရီအက်ပ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What job does a calculator app help you do?',
        questionMy:
            'ဂဏန်းတွက်စက်အက်ပ်သည် မည်သည့်အလုပ်ကို ကူညီဆောင်ရွက်ပေးသနည်း။',
        optionsEn: [
          'Solve number problems like adding and subtracting',
          'Play a video',
          'Draw a picture',
          'Listen to songs',
        ],
        optionsMy: [
          'ပေါင်းခြင်းနှင့် နုတ်ခြင်းကဲ့သို့ ဂဏန်းပြဿနာများ ဖြေရှင်းရန်',
          'ဗီဒီယိုဖွင့်ကြည့်ရန်',
          'ပုံဆွဲရန်',
          'သီချင်းနားထောင်ရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If you want to listen to your favorite songs, which app should you open?',
        questionMy:
            'သင်ကြိုက်နှစ်သက်သော သီချင်းများ နားထောင်လိုပါက မည်သည့်အက်ပ်ကို ဖွင့်သင့်သနည်း။',
        optionsEn: [
          'A music player app',
          'A calculator app',
          'A drawing app',
          'A camera app',
        ],
        optionsMy: [
          'တေးဂီတဖွင့်အက်ပ်',
          'ဂဏန်းတွက်စက်အက်ပ်',
          'ပုံဆွဲအက်ပ်',
          'ကင်မရာအက်ပ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A game app on a computer or tablet is mainly used for what?',
        questionMy:
            'ကွန်ပျူတာ သို့မဟုတ် တက်ဘလက်ပေါ်ရှိ ဂိမ်းအက်ပ်ကို အဓိကအားဖြင့် မည်သည့်အတွက် အသုံးပြုသနည်း။',
        optionsEn: [
          'Having fun and playing',
          'Doing math homework',
          'Writing an email',
          'Checking the weather',
        ],
        optionsMy: [
          'ပျော်ရွှင်စွာ ကစားရန်',
          'သင်္ချာအိမ်စာလုပ်ရန်',
          'အီးမေးလ်ရေးရန်',
          'ရာသီဥတုစစ်ဆေးရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is an example of an app that helps you count and calculate numbers?',
        questionMy:
            'အောက်ပါတို့အနက် ဂဏန်းများကို ရေတွက်ရန်နှင့် တွက်ချက်ရန် ကူညီပေးသော အက်ပ်မှာ မည်သည့်တစ်ခုနည်း။',
        optionsEn: [
          'Calculator app',
          'Drawing app',
          'Music player app',
          'Game app',
        ],
        optionsMy: [
          'ဂဏန်းတွက်စက်အက်ပ်',
          'ပုံဆွဲအက်ပ်',
          'တေးဂီတဖွင့်အက်ပ်',
          'ဂိမ်းအက်ပ်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-computing-2',
    subject: 'computing',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Networks: How Devices Connect',
    titleMy: 'ကွန်ရက်များ – စက်ပစ္စည်းများ ချိတ်ဆက်ပုံ',
    descriptionEn:
        'Learn about what a network is and how WiFi connects devices to the internet.',
    descriptionMy:
        'ကွန်ရက်ဆိုတာ ဘာလဲ၊ WiFi က စက်ပစ္စည်းများကို အင်တာနက်နှင့် ဘယ်လိုချိတ်ဆက်ပေးသလဲဆိုတာကို လေ့လာကြရအောင်။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'What is a network?',
        questionMy: 'ကွန်ရက် (Network) ဆိုတာ ဘာလဲ။',
        optionsEn: [
          'A single computer that works completely alone',
          'A video game you play on a tablet',
          'A group of devices connected together to share information',
          'A folder used to store pictures',
        ],
        optionsMy: [
          'တစ်ယောက်တည်း အလုပ်လုပ်နေတဲ့ ကွန်ပျူတာတစ်လုံး',
          'တက်ဘလက်ပေါ်မှာ ကစားတဲ့ ဗီဒီယိုဂိမ်းတစ်ခု',
          'အချက်အလက်များ မျှဝေနိုင်ရန် ချိတ်ဆက်ထားသော စက်ပစ္စည်းအုပ်စု',
          'ဓာတ်ပုံများ သိမ်းဆည်းရန် သုံးသော ဖိုင်တွဲတစ်ခု',
        ],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What does WiFi allow a device to do?',
        questionMy: 'WiFi က စက်ပစ္စည်းတစ်ခုကို ဘာလုပ်ခွင့်ပေးသလဲ။',
        optionsEn: [
          'Make the device\'s battery last longer',
          'Connect to the internet without using any wires',
          'Print papers more quickly',
          'Turn the screen a brighter color',
        ],
        optionsMy: [
          'ဘက်ထရီ ပိုကြာအောင် အသုံးပြုနိုင်စေခြင်း',
          'ကြိုးမပါဘဲ အင်တာနက်နှင့် ချိတ်ဆက်နိုင်စေခြင်း',
          'စာရွက်များကို ပိုမြန်မြန် ပရင့်ထုတ်နိုင်စေခြင်း',
          'စခရင်ကို ပိုတောက်ပအောင် ပြောင်းပေးခြင်း',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which of these activities needs a network connection?',
        questionMy:
            'အောက်ပါလုပ်ဆောင်ချက်များထဲက ဘယ်ဟာက ကွန်ရက်ဆက်သွယ်မှု လိုအပ်သလဲ။',
        optionsEn: [
          'Reading a paper storybook',
          'Drawing a picture with crayons',
          'Writing a letter with a pencil',
          'Sending an online message to a friend',
        ],
        optionsMy: [
          'စာအုပ်တစ်အုပ်ကို ဖတ်ခြင်း',
          'ခရေယွန်နှင့် ပုံဆွဲခြင်း',
          'ခဲတံနှင့် စာတစ်စောင် ရေးခြင်း',
          'သူငယ်ချင်းတစ်ဦးကို အွန်လိုင်းမှတစ်ဆင့် မက်ဆေ့ချ်ပို့ခြင်း',
        ],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Which of the following is an example of a network?',
        questionMy: 'အောက်ပါတို့ထဲက ကွန်ရက်တစ်ခု၏ ဥပမာက ဘယ်ဟာလဲ။',
        optionsEn: [
          'Several classroom computers connected to the same WiFi',
          'One pencil sitting on a desk',
          'A single book on a shelf',
          'A calculator that is switched off',
        ],
        optionsMy: [
          'WiFi တစ်ခုတည်းကို ချိတ်ဆက်ထားသော စာသင်ခန်းရှိ ကွန်ပျူတာများစွာ',
          'စားပွဲပေါ်ရှိ ခဲတံတစ်ချောင်း',
          'စာအုပ်စင်ပေါ်ရှိ စာအုပ်တစ်အုပ်',
          'ပိတ်ထားသော ဂဏန်းတွက်စက်တစ်ခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why do we need an internet connection to open a website?',
        questionMy:
            'ဝက်ဘ်ဆိုက်တစ်ခုကို ဖွင့်ရန် ဘာကြောင့် အင်တာနက်ဆက်သွယ်မှု လိုအပ်သလဲ။',
        optionsEn: [
          'Because every website is already stored inside the device',
          'Because opening a website needs a printer',
          'So the device can connect with other computers to get the website\'s information',
          'Because the internet makes the screen louder',
        ],
        optionsMy: [
          'ဝက်ဘ်ဆိုက်တိုင်းသည် စက်ထဲတွင် ရှိပြီးသား ဖြစ်သောကြောင့်',
          'ဝက်ဘ်ဆိုက်ဖွင့်ရန် ပရင်တာ လိုအပ်သောကြောင့်',
          'စက်ပစ္စည်းက အခြားကွန်ပျူတာများနှင့် ချိတ်ဆက်ပြီး ဝက်ဘ်ဆိုက်၏ အချက်အလက်ကို ရယူနိုင်ရန်',
          'အင်တာနက်က စခရင်အသံကို ပိုကျယ်စေသောကြောင့်',
        ],
        correctIndex: 2,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-computing-2',
    subject: 'computing',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Searching the Internet Wisely',
    titleMy: 'အင်တာနက်ပေါ်တွင် ပညာရှိစွာ ရှာဖွေခြင်း',
    descriptionEn:
        'Learn about how search engines find results and how to judge whether a search result looks trustworthy before you click it.',
    descriptionMy:
        'ရှာဖွေရေးအင်ဂျင်များ ရလဒ်ရှာဖွေပုံနှင့် ကလစ်မနှိပ်မီ ရလဒ်တစ်ခု ယုံကြည်စိတ်ချရမရ မည်သို့ ဆုံးဖြတ်ရမည်ကို လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What does a search engine do when you type in keywords?',
        questionMy:
            'ရှာဖွေရေးစာလုံးများ ရိုက်ထည့်လိုက်သောအခါ ရှာဖွေရေးအင်ဂျင်သည် ဘာလုပ်ပါသလဲ။',
        optionsEn: [
          'It looks through billions of web pages and shows the ones that match best',
          'It writes a brand new web page just for you',
          'It calls someone at the website to ask for permission',
          'It deletes old websites from the internet',
        ],
        optionsMy: [
          'ဝဘ်ဆိုက်ဘီလီယံများစွာကို စစ်ဆေးပြီး အကိုက်ညီဆုံးရလဒ်များကို ပြသပေးသည်',
          'သင့်အတွက်သီးသန့် ဝဘ်ဆိုက်အသစ်တစ်ခု ရေးပေးသည်',
          'ခွင့်ပြုချက်တောင်းရန် ဝဘ်ဆိုက်ပိုင်ရှင်ကို ဖုန်းခေါ်သည်',
          'အင်တာနက်ပေါ်ရှိ ဝဘ်ဆိုက်ဟောင်းများကို ဖျက်ပစ်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which is the best set of keywords to search for information about volcanoes for a school project?',
        questionMy:
            'ကျောင်းစီမံကိန်းအတွက် မီးတောင်များအကြောင်း အချက်အလက်ရှာဖွေရန် အကောင်းဆုံးသော ရှာဖွေရေးစာလုံးများမှာ အောက်ပါတို့အနက် အဘယ်နည်း။',
        optionsEn: [
          '"volcano facts for kids"',
          '"a hot thing"',
          '"why why why"',
          '"a a a a"',
        ],
        optionsMy: [
          '"ကလေးများအတွက် မီးတောင်အချက်အလက်များ"',
          '"ပူသောအရာ"',
          '"ဘာဖြစ်လို့လဲ ဘာဖြစ်လို့လဲ ဘာဖြစ်လို့လဲ"',
          '"က က က က"',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which sign suggests a search result might NOT be trustworthy?',
        questionMy:
            'ရှာဖွေမှုရလဒ်တစ်ခုကို ယုံကြည်၍မရနိုင်ကြောင်း ဖော်ပြသော လက္ခဏာမှာ အဘယ်နည်း။',
        optionsEn: [
          'The website is full of spelling mistakes and asks you to enter your password to "win a prize"',
          'The website is run by a well-known school or government organization',
          'The article gives the author\'s name and the date it was published',
          'The information matches what several other trusted websites say',
        ],
        optionsMy: [
          'ဝဘ်ဆိုက်တွင် စာလုံးပေါင်းအမှားများစွာရှိပြီး "ဆုရရန်" သင့်စကားဝှက်ကို ထည့်သွင်းရန် တောင်းဆိုနေသည်',
          'ဝဘ်ဆိုက်ကို လူသိများသော ကျောင်း သို့မဟုတ် အစိုးရအဖွဲ့အစည်းက စီမံခန့်ခွဲသည်',
          'ဆောင်းပါးတွင် စာရေးသူအမည်နှင့် ထုတ်ဝေသည့်ရက်စွဲကို ဖော်ပြထားသည်',
          'ထိုအချက်အလက်သည် ယုံကြည်ရသော အခြားဝဘ်ဆိုက်များစွာနှင့် ကိုက်ညီနေသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'You search "how do plants grow" and get many results. What is the best way to decide which ones to click first?',
        questionMy:
            '"အပင်များ ဘယ်လိုကြီးထွားသလဲ" ဟု ရှာဖွေလိုက်ရာ ရလဒ်များစွာ ရရှိသည်။ မည်သည့်ရလဒ်ကို အရင်ဆုံးနှိပ်ရမည်ကို ဆုံးဖြတ်ရန် အကောင်းဆုံးနည်းလမ်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Look at the ones from trusted sources like educational or government websites near the top',
          'Click the very last result on the page',
          'Click the one with the most exclamation marks in the title',
          'Click the first advertisement you see',
        ],
        optionsMy: [
          'ထိပ်ဆုံးအနီးရှိ ပညာရေး သို့မဟုတ် အစိုးရဝဘ်ဆိုက်ကဲ့သို့ ယုံကြည်ရသော အရင်းအမြစ်များမှ ရလဒ်များကို ကြည့်ပါ',
          'စာမျက်နှာ၏ အနောက်ဆုံးရလဒ်ကို နှိပ်ပါ',
          'ခေါင်းစဉ်တွင် အံ့ဩသံများ (!) အများဆုံးပါသော ရလဒ်ကို နှိပ်ပါ',
          'မြင်ရသော ပထမဆုံးကြော်ငြာကို နှိပ်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why is it a bad idea to use only one or two words that are too general, like "animal", when searching?',
        questionMy:
            '"animal" ကဲ့သို့ အလွန်ယေဘုယျဖြစ်သော စကားလုံးတစ်ခု သို့မဟုတ် နှစ်ခုတည်းကို ရှာဖွေရာတွင် အသုံးပြုခြင်းသည် အဘယ့်ကြောင့် မကောင်းသောနည်းလမ်း ဖြစ်သနည်း။',
        optionsEn: [
          'The results will be too broad and include too much unrelated information',
          'The search engine will not understand English',
          'The internet will run out of results',
          'The computer will search slower with fewer words',
        ],
        optionsMy: [
          'ရလဒ်များသည် အလွန်ကျယ်ပြန့်ပြီး မဆိုင်သောအချက်အလက်များ အများကြီးပါဝင်လာလိမ့်မည်',
          'ရှာဖွေရေးအင်ဂျင်သည် အင်္ဂလိပ်စာကို နားမလည်တော့ပါ',
          'အင်တာနက်တွင် ရလဒ်များ ကုန်သွားလိမ့်မည်',
          'စကားလုံးနည်းလျှင် ကွန်ပျူတာက ပိုနှေးစွာ ရှာဖွေလိမ့်မည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-computing-2',
    subject: 'computing',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Websites & Web Browsers',
    titleMy: 'ဝဘ်ဆိုက်နှင့် ဝဘ်ဘရောက်ဆာများ',
    descriptionEn:
        'Learn about what websites and web browsers are, how web addresses work, and how to browse the internet safely.',
    descriptionMy:
        'ဝဘ်ဆိုက်နှင့် ဝဘ်ဘရောက်ဆာများဆိုတာ ဘာလဲ၊ ဝဘ်လိပ်စာများ ဘယ်လိုအလုပ်လုပ်သလဲ၊ ဘေးကင်းစွာ အင်တာနက်ကြည့်ရှုနည်းများကို လေ့လာပါမည်။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn: 'What is a website?',
        questionMy: 'ဝဘ်ဆိုက် (website) ဆိုတာ ဘာလဲ။',
        optionsEn: [
          'A collection of related web pages stored on the internet',
          'A physical device that connects to the internet',
          'A type of computer virus',
          'An email account',
        ],
        optionsMy: [
          'အင်တာနက်ပေါ်တွင် သိမ်းဆည်းထားသော ဆက်စပ်ဝဘ်စာမျက်နှာများ အစုအဝေး',
          'အင်တာနက်နှင့်ချိတ်ဆက်သည့် ရုပ်ပိုင်းဆိုင်ရာ ကိရိယာတစ်ခု',
          'ကွန်ပျူတာဗိုင်းရပ်စ်တစ်မျိုး',
          'အီးမေးလ်အကောင့်တစ်ခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the main job of a web browser?',
        questionMy: 'ဝဘ်ဘရောက်ဆာ (web browser) ၏ အဓိကတာဝန်မှာ အဘယ်နည်း။',
        optionsEn: [
          'To display websites and let you navigate the internet',
          'To store files on your hard drive',
          'To print documents',
          'To play only music files',
        ],
        optionsMy: [
          'ဝဘ်ဆိုက်များကို ပြသပေးပြီး အင်တာနက်ပေါ်တွင် လမ်းညွှန်ကူညီပေးရန်',
          'ဟာ့ဒ်ဒစ်ခ်ပေါ်တွင် ဖိုင်များ သိမ်းဆည်းရန်',
          'စာရွက်စာတမ်းများ ပရင့်ထုတ်ရန်',
          'ဂီတဖိုင်များကိုသာ ဖွင့်ပေးရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A web address starting with "https://" is safer than one starting with "http://". Which is the reason for this?',
        questionMy:
            'https:// ဖြင့်စသော ဝဘ်လိပ်စာသည် http:// ဖြင့်စသောလိပ်စာထက် ပိုမိုဘေးကင်းသည်။ ၎င်း၏ အကြောင်းရင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'The "s" means the connection is encrypted, which protects your data',
          'The "s" makes the website load faster',
          'The "s" means the website has more pictures',
          'The "s" means the website is free to use',
        ],
        optionsMy: [
          '\'s\' အက္ခရာသည် ချိတ်ဆက်မှုကို ကုဒ်ဝှက်ထားပြီး သင့်ဒေတာကို ကာကွယ်ပေးသောကြောင့်',
          '\'s\' အက္ခရာသည် ဝဘ်ဆိုက်ကို ပိုမြန်ဖွင့်ပေးသောကြောင့်',
          '\'s\' အက္ခရာသည် ဝဘ်ဆိုက်တွင် ပုံများ ပိုများစေသောကြောင့်',
          '\'s\' အက္ခရာသည် ဝဘ်ဆိုက်ကို အခမဲ့အသုံးပြုနိုင်စေသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In the web address www.novaacademy.com, which part tells you which website (organization) you are visiting?',
        questionMy:
            'www.novaacademy.com ဆိုသော ဝဘ်လိပ်စာတွင် သင်ဝင်ရောက်နေသော ဝဘ်ဆိုက် (အဖွဲ့အစည်း) ကို ဖော်ပြသည့်အပိုင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'novaacademy.com (the domain name)',
          'www',
          'just the ".com" part',
          'https',
        ],
        optionsMy: [
          'novaacademy.com (ဒိုမိန်းအမည်)',
          'www',
          '.com အပိုင်းသာ',
          'https',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why should you ask a trusted adult before clicking a pop-up or an unknown link while browsing?',
        questionMy:
            'အင်တာနက်ကြည့်ရှုနေစဉ် ပေါ့ပ်အပ်များ (သို့မဟုတ်) မသိသောလင့်ခ်များကို မနှိပ်မီ ယုံကြည်ရသူကြီးတစ်ဦးကို မေးသင့်သည့် အကြောင်းရင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Pop-ups and unknown links can lead to unsafe websites or harmful downloads',
          'Pop-ups make the browser look nicer',
          'Clicking links uses less internet data',
          'Trusted adults enjoy clicking links',
        ],
        optionsMy: [
          'ပေါ့ပ်အပ်များနှင့် မသိသောလင့်ခ်များသည် မဘေးကင်းသောဝဘ်ဆိုက်များ (သို့မဟုတ်) အန္တရာယ်ရှိသော ဒေါင်းလုဒ်များသို့ ဦးတည်စေနိုင်သောကြောင့်',
          'ပေါ့ပ်အပ်များသည် ဘရောက်ဆာကို ပိုလှပေါက်စေသောကြောင့်',
          'လင့်ခ်များနှိပ်ခြင်းသည် အင်တာနက်ဒေတာ ပိုနည်းသုံးစေသောကြောင့်',
          'ယုံကြည်ရသူကြီးများသည် လင့်ခ်နှိပ်ရတာကို နှစ်သက်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-computing-2',
    subject: 'computing',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'How Computers Store Information: Introducing Binary',
    titleMy: 'ကွန်ပျူတာများ အချက်အလက် သိမ်းဆည်းပုံ – ဘိုင်နရီ နိယာမ မိတ်ဆက်',
    descriptionEn:
        'Learn about how computers store everything using only 0s and 1s, and how to count in binary.',
    descriptionMy:
        'ကွန်ပျူတာများသည် အချက်အလက်အားလုံးကို 0 နှင့် 1 များဖြင့်သာ မည်သို့ သိမ်းဆည်းသည်ကို လေ့လာပြီး ဘိုင်နရီစနစ်ဖြင့် ဂဏန်းရေတွက်နည်းကို လေ့လာပါမည်။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'What are the only two digits computers use to store all information?',
        questionMy:
            'ကွန်ပျူတာများသည် အချက်အလက်အားလုံးကို သိမ်းဆည်းရန် အသုံးပြုသော ဂဏန်းနှစ်လုံးမှာ အဘယ်နည်း။',
        optionsEn: ['0 and 1', '1 and 2', 'A and B', '2 and 3'],
        optionsMy: ['0 နှင့် 1', '1 နှင့် 2', 'A နှင့် B', '2 နှင့် 3'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is a single binary digit (0 or 1) called?',
        questionMy:
            'ဘိုင်နရီဂဏန်းတစ်လုံးချင်း (0 သို့မဟုတ် 1) ကို အဘယ်ဟုခေါ်သနည်း။',
        optionsEn: ['A bit', 'A byte', 'A pixel', 'A code'],
        optionsMy: [
          'bit (ဘစ်)',
          'byte (ဘိုက်)',
          'pixel (ပစ်ဇယ်)',
          'code (ကုဒ်)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In binary, what does the number "10" equal in our normal decimal counting system?',
        questionMy:
            'ဘိုင်နရီစနစ်တွင် "10" ဆိုသည်မှာ ပုံမှန်ဒဿမစနစ်၌ မည်သည့်ဂဏန်းနှင့် ညီမျှသနည်း။',
        optionsEn: ['10', '2', '1', '20'],
        optionsMy: ['10', '2', '1', '20'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'In binary, what does the number "11" equal in decimal?',
        questionMy:
            'ဘိုင်နရီစနစ်တွင် "11" ဆိုသည်မှာ ဒဿမစနစ်၌ မည်သည့်ဂဏန်းနှင့် ညီမျှသနည်း။',
        optionsEn: ['11', '2', '3', '4'],
        optionsMy: ['11', '2', '3', '4'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'Binary counting goes 1, 10, 11, then 100. What decimal number does binary "100" equal?',
        questionMy:
            'ဘိုင်နရီစနစ်တွင် 1, 10, 11 နောက်တွင် 100 လာသည်။ ဘိုင်နရီ "100" သည် ဒဿမစနစ်တွင် မည်သည့်ဂဏန်းနှင့် ညီမျှသနည်း။',
        optionsEn: ['3', '4', '10', '100'],
        optionsMy: ['3', '4', '10', '100'],
        correctIndex: 1,
      ),
    ],
  ),

  // Coding depth batch 1: a second module per grade (Year 1-6), bringing
  // `coding` from 1 module/grade to 2, matching the
  // "geography/history/computing depth batch 1" blocks above. Authored
  // via a parallel content-generation workflow (one agent per grade),
  // with every logic-bearing question (loop traces, comparison results,
  // debugging fixes) independently hand-verified for correctness before
  // being added here.
  PrimaryActivityDef(
    id: 'mock-year1-coding-2',
    subject: 'coding',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Fix the Wrong Order',
    titleMy: 'မှားနေသော အစီအစဉ်ကို ပြင်ပါ',
    descriptionEn:
        'Learn to spot a step that\'s out of order in a sequence and figure out where it should really go.',
    descriptionMy:
        'အစီအစဉ်ထဲတွင် နေရာလွဲနေသော အဆင့်ကို ရှာဖွေပြီး မှန်ကန်သောနေရာကို ပြင်ဆင်တတ်အောင် လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn:
            'Look at this order: 1) Dry hands 2) Turn on the tap 3) Put soap on hands 4) Rub hands together. One step is in the wrong place. Which step should move?',
        questionMy:
            'ဤအစီအစဉ်ကို ကြည့်ပါ- ၁) လက်ကိုသုတ်ခြင်း ၂) ရေပိုက်ဖွင့်ခြင်း ၃) လက်ဆေးဆပ်ပြာလိမ်းခြင်း ၄) လက်ကိုပွတ်တိုက်ခြင်း။ တစ်ဆင့်က နေရာမှားနေသည်။ မည်သည့်အဆင့်ကို ရွှေ့သင့်သနည်း။',
        optionsEn: [
          'Dry hands',
          'Turn on the tap',
          'Put soap on hands',
          'Rub hands together',
        ],
        optionsMy: [
          'လက်ကိုသုတ်ခြင်း',
          'ရေပိုက်ဖွင့်ခြင်း',
          'လက်ဆေးဆပ်ပြာလိမ်းခြင်း',
          'လက်ကိုပွတ်တိုက်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Look at this order: 1) Put on shoes 2) Tie the shoelaces 3) Go outside 4) Put on socks. One step is in the wrong place. Which step should move?',
        questionMy:
            'ဤအစီအစဉ်ကို ကြည့်ပါ- ၁) ဖိနပ်စီးခြင်း ၂) ဖိနပ်ကြိုးစည်းခြင်း ၃) အပြင်ထွက်ခြင်း ၄) ခြေအိတ်စီးခြင်း။ တစ်ဆင့်က နေရာမှားနေသည်။ မည်သည့်အဆင့်ကို ရွှေ့သင့်သနည်း။',
        optionsEn: [
          'Put on shoes',
          'Tie the shoelaces',
          'Go outside',
          'Put on socks',
        ],
        optionsMy: [
          'ဖိနပ်စီးခြင်း',
          'ဖိနပ်ကြိုးစည်းခြင်း',
          'အပြင်ထွက်ခြင်း',
          'ခြေအိတ်စီးခြင်း',
        ],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn:
            'Look at this order: 1) Eat the food 2) Wash your hands 3) Sit at the table 4) Say thank you. One step is in the wrong place. Which step should move?',
        questionMy:
            'ဤအစီအစဉ်ကို ကြည့်ပါ- ၁) အစားအစာစားခြင်း ၂) လက်ဆေးခြင်း ၃) စားပွဲတွင်ထိုင်ခြင်း ၄) ကျေးဇူးတင်ကြောင်းပြောခြင်း။ တစ်ဆင့်က နေရာမှားနေသည်။ မည်သည့်အဆင့်ကို ရွှေ့သင့်သနည်း။',
        optionsEn: [
          'Eat the food',
          'Wash your hands',
          'Sit at the table',
          'Say thank you',
        ],
        optionsMy: [
          'အစားအစာစားခြင်း',
          'လက်ဆေးခြင်း',
          'စားပွဲတွင်ထိုင်ခြင်း',
          'ကျေးဇူးတင်ကြောင်းပြောခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Look at this order: 1) Dig a hole 2) Cover with soil 3) Water the seed 4) Put the seed in the hole. One step is in the wrong place. Which step should move?',
        questionMy:
            'ဤအစီအစဉ်ကို ကြည့်ပါ- ၁) မြေတွင်းတူးခြင်း ၂) မြေဖုံးခြင်း ၃) မျိုးစေ့ကိုရေလောင်းခြင်း ၄) မျိုးစေ့ကိုတွင်းထဲထည့်ခြင်း။ တစ်ဆင့်က နေရာမှားနေသည်။ မည်သည့်အဆင့်ကို ရွှေ့သင့်သနည်း။',
        optionsEn: [
          'Dig a hole',
          'Cover with soil',
          'Water the seed',
          'Put the seed in the hole',
        ],
        optionsMy: [
          'မြေတွင်းတူးခြင်း',
          'မြေဖုံးခြင်း',
          'မျိုးစေ့ကိုရေလောင်းခြင်း',
          'မျိုးစေ့ကိုတွင်းထဲထည့်ခြင်း',
        ],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn:
            'Look at this order: 1) Take out the bread 2) Close the sandwich 3) Put butter on the bread 4) Add cheese. One step is in the wrong place. Which step should move?',
        questionMy:
            'ဤအစီအစဉ်ကို ကြည့်ပါ- ၁) ပေါင်မုန့်ထုတ်ယူခြင်း ၂) ဆန်းဒိုက်ချ်ကိုပိတ်ခြင်း ၃) ပေါင်မုန့်ပေါ်ထောပတ်လိမ်းခြင်း ၄) ချိစ်ထည့်ခြင်း။ တစ်ဆင့်က နေရာမှားနေသည်။ မည်သည့်အဆင့်ကို ရွှေ့သင့်သနည်း။',
        optionsEn: [
          'Take out the bread',
          'Close the sandwich',
          'Put butter on the bread',
          'Add cheese',
        ],
        optionsMy: [
          'ပေါင်မုန့်ထုတ်ယူခြင်း',
          'ဆန်းဒိုက်ချ်ကိုပိတ်ခြင်း',
          'ပေါင်မုန့်ပေါ်ထောပတ်လိမ်းခြင်း',
          'ချိစ်ထည့်ခြင်း',
        ],
        correctIndex: 1,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-coding-2',
    subject: 'coding',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Events: What Makes Things Start?',
    titleMy: 'Events - အရာများကို ဘာက စတင်စေသနည်း',
    descriptionEn:
        'Learn about events and triggers, and how one action can make another thing happen right away.',
    descriptionMy:
        'Event နှင့် Trigger များအကြောင်း၊ လုပ်ဆောင်မှုတစ်ခုက အခြားအရာတစ်ခုကို ချက်ချင်းဖြစ်ပေါ်စေပုံကို လေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn:
            'In coding, an action like pressing a button or tapping an icon that makes something happen is called a...',
        questionMy:
            'ခလုတ်နှိပ်ခြင်း (သို့) icon ကို tap လုပ်ခြင်းကဲ့သို့ တစ်စုံတစ်ခုကို ဖြစ်ပေါ်စေသော လုပ်ဆောင်ချက်ကို ကုတ်ရေးရာတွင် ဘာဟုခေါ်သနည်း။',
        optionsEn: ['An event', 'A color', 'A picture', 'A number'],
        optionsMy: ['Event', 'အရောင်', 'ပုံ', 'ဂဏန်း'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'You tap a game icon on a tablet and the game opens. What triggered the game to open?',
        questionMy:
            'သင်သည် tablet ပေါ်တွင် game icon ကို tap လုပ်လိုက်ပြီး game ပွင့်လာသည်။ game ကို ဖွင့်ပေးခဲ့သည့် trigger က ဘာနည်း။',
        optionsEn: [
          'Tapping the icon',
          'The color of the screen',
          'The weight of the tablet',
          'The name of the game',
        ],
        optionsMy: [
          'Icon ကို tap လုပ်ခြင်း',
          'စခရင်၏အရောင်',
          'tablet ၏အလေးချိန်',
          'game ၏အမည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A kitchen timer beeps after 5 minutes, and that beep tells you to take the cake out of the oven. What is the event here?',
        questionMy:
            'မီးဖိုချောင်သုံး timer သည် ၅ မိနစ်ကြာပြီးနောက် အသံမြည်ပြီး ၎င်းအသံက ကိတ်မုန့်ကို မီးဖိုမှထုတ်ရန် သတိပေးသည်။ ဤနေရာတွင် event က ဘာနည်း။',
        optionsEn: [
          'The timer beeping',
          'The size of the cake',
          'The color of the oven',
          'The name of the baker',
        ],
        optionsMy: [
          'Timer အသံမြည်ခြင်း',
          'ကိတ်မုန့်၏အရွယ်အစား',
          'မီးဖို၏အရောင်',
          'မုန့်ဖုတ်သူ၏အမည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a game, when a character clicks a "jump" button, the character jumps. Which part is the trigger and which is the result?',
        questionMy:
            'ဂိမ်းတစ်ခုတွင် ဇာတ်ကောင်က "jump" ခလုတ်ကို click လုပ်သောအခါ ဇာတ်ကောင်သည် ခုန်သည်။ မည်သည့်အပိုင်းက trigger ဖြစ်ပြီး မည်သည့်အပိုင်းက ရလဒ်ဖြစ်သနည်း။',
        optionsEn: [
          'Clicking the button is the trigger, jumping is the result',
          'Jumping is the trigger, clicking is the result',
          'Both are triggers',
          'Neither is a trigger',
        ],
        optionsMy: [
          'ခလုတ် click လုပ်ခြင်းက trigger ဖြစ်ပြီး ခုန်ခြင်းက ရလဒ်ဖြစ်သည်',
          'ခုန်ခြင်းက trigger ဖြစ်ပြီး click လုပ်ခြင်းက ရလဒ်ဖြစ်သည်',
          'နှစ်ခုစလုံးက trigger ဖြစ်သည်',
          'မည်သည့်တစ်ခုမျှ trigger မဟုတ်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is an example of an event starting an action?',
        questionMy:
            'အောက်ပါတို့အနက် event တစ်ခုက လုပ်ဆောင်ချက်တစ်ခုကို စတင်စေသည့် ဥပမာမှာ အဘယ်နည်း။',
        optionsEn: [
          'Pressing a doorbell button makes it ring',
          'A book sitting quietly on a shelf',
          'A picture hanging on the wall',
          'A chair standing in the room',
        ],
        optionsMy: [
          'ဒေါင်းဘဲ ခလုတ်ကို နှိပ်လိုက်သောအခါ အသံမြည်ခြင်း',
          'စာအုပ်တစ်အုပ် စင်ပေါ်တွင် တိတ်ဆိတ်စွာ ရှိနေခြင်း',
          'နံရံပေါ်ရှိ ပုံတစ်ပုံ',
          'အခန်းထဲရှိ ကုလားထိုင်တစ်လုံး',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-coding-2',
    subject: 'coding',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Sprites and Coordinates',
    titleMy: 'Sprite နှင့် Coordinate များ',
    descriptionEn:
        'Learn what a sprite is and how x/y coordinates describe where it is and how it moves on the screen.',
    descriptionMy:
        'Sprite ဆိုသည်မှာ အဘယ်နည်း၊ x/y coordinate များက sprite ၏ တည်နေရာနှင့် ရွေ့လျားပုံကို မည်သို့ဖော်ပြသည်ကို လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'In coding programs like Scratch, what is a "sprite"?',
        questionMy:
            'Scratch ကဲ့သို့သော coding ပရိုဂရမ်များတွင် "sprite" ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A sound effect used in games',
          'A character or object you can move and control on screen',
          'A type of loop that repeats forever',
          'A color used to decorate the screen',
        ],
        optionsMy: [
          'ဂိမ်းများတွင် အသုံးပြုသော အသံအထူးပြင်ဆင်ချက်တစ်ခု',
          'စခရင်ပေါ်တွင် ရွေ့လျား၍ ထိန်းချုပ်နိုင်သော ဇာတ်ကောင် (သို့) အရာဝတ္ထုတစ်ခု',
          'အမြဲထပ်ခါထပ်ခါ လုပ်ဆောင်သော loop အမျိုးအစားတစ်ခု',
          'စခရင်ကို အလှဆင်ရန်အသုံးပြုသော အရောင်တစ်ခု',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'In an x/y coordinate system, what does the x-coordinate tell you?',
        questionMy:
            'x/y coordinate စနစ်တွင် x-coordinate က သင့်အား ဘာကိုပြောပြသနည်း။',
        optionsEn: [
          'How big a sprite is',
          'How fast a sprite moves',
          'How far left or right a point is',
          'How many colors are used',
        ],
        optionsMy: [
          'sprite တစ်ခု ဘယ်လောက်ကြီးသည်',
          'sprite တစ်ခု ဘယ်လောက်မြန်စွာ ရွေ့လျားသည်',
          'အမှတ်တစ်ခုသည် ဘယ် (သို့) ညာ ဘယ်လောက်ဝေးသည်',
          'အရောင်ဘယ်နှစ်မျိုးအသုံးပြုသည်',
        ],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'What does the y-coordinate tell you about a sprite\'s position?',
        questionMy:
            'y-coordinate က sprite တစ်ခု၏ တည်နေရာအကြောင်း ဘာကိုပြောပြသနည်း။',
        optionsEn: [
          'What color it is',
          'How far up or down it is',
          'How many times it repeats',
          'How loud a sound is',
        ],
        optionsMy: [
          '၎င်း၏ အရောင်ဘာဖြစ်သည်',
          '၎င်းသည် အပေါ် (သို့) အောက် ဘယ်လောက်ဝေးသည်',
          '၎င်းသည် ဘယ်နှစ်ကြိမ်ထပ်ခါလုပ်သည်',
          'အသံ ဘယ်လောက်ကျယ်သည်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'On the Scratch stage, the coordinate (0, 0) is located at...',
        questionMy:
            'Scratch stage ပေါ်တွင် coordinate (0, 0) သည် မည်သည့်နေရာတွင် တည်ရှိသနည်း။',
        optionsEn: [
          'The top-left corner',
          'The bottom-right corner',
          'Outside the stage',
          'The center of the stage',
        ],
        optionsMy: [
          'ဘယ်ဘက်အပေါ်ထောင့်',
          'ညာဘက်အောက်ထောင့်',
          'stage ၏ ပြင်ပတွင်',
          'stage ၏ အလယ်ဗဟို',
        ],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn:
            'A sprite starts at (0, 0) and moves to (10, 0). In which direction did it move?',
        questionMy:
            'sprite တစ်ခုသည် (0, 0) မှစတင်ပြီး (10, 0) သို့ ရွေ့လျားသည်။ ၎င်းသည် မည်သည့်ဘက်သို့ ရွေ့လျားခဲ့သနည်း။',
        optionsEn: ['Upward', 'To the left', 'To the right', 'Downward'],
        optionsMy: ['အပေါ်ဘက်သို့', 'ဘယ်ဘက်သို့', 'ညာဘက်သို့', 'အောက်ဘက်သို့'],
        correctIndex: 2,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-coding-2',
    subject: 'coding',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Comparing Values: Bigger, Smaller, or Equal?',
    titleMy: 'တန်ဖိုးများ နှိုင်းယှဉ်ခြင်း — ကြီးသလား၊ ငယ်သလား၊ ညီသလား',
    descriptionEn:
        'Learn about comparison operators and how programs use greater than, less than, and equal to checks to compare two values.',
    descriptionMy:
        'Comparison operator များအကြောင်းနှင့် Program များသည် တန်ဖိုးနှစ်ခုကို ကြီးသည်၊ ငယ်သည်၊ ညီသည် စစ်ဆေးရန် မည်သို့အသုံးပြုကြောင်းကို လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What do programs use comparison operators for?',
        questionMy:
            'ပရိုဂရမ်များသည် Comparison operator များကို အဘယ်အတွက် အသုံးပြုကြသနည်း။',
        optionsEn: [
          'To compare two values and decide true or false',
          'To store a value in memory',
          'To repeat an action many times',
          'To draw shapes on the screen',
        ],
        optionsMy: [
          'တန်ဖိုးနှစ်ခုကို နှိုင်းယှဉ်ပြီး မှန်/မှား ဆုံးဖြတ်ရန်',
          'တန်ဖိုးတစ်ခုကို memory တွင် သိမ်းဆည်းရန်',
          'လုပ်ဆောင်ချက်တစ်ခုကို အကြိမ်များစွာ ထပ်ခါထပ်ခါလုပ်ရန်',
          'မျက်နှာပြင်ပေါ်တွင် ပုံများဆွဲရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which symbol means \'greater than\' in most programming languages?',
        questionMy:
            'ပရိုဂရမ်းမင်းဘာသာစကားအများစုတွင် "ကြီးသည်" ဟု ဆိုလိုသော သင်္ကေတမှာ အဘယ်နည်း။',
        optionsEn: ['>', '<', '=', '+'],
        optionsMy: ['>', '<', '=', '+'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does the comparison 7 > 4 evaluate to?',
        questionMy: 'Comparison 7 > 4 ကို အကဲဖြတ်လျှင် ရလဒ်မှာ အဘယ်နည်း။',
        optionsEn: ['True', 'False', '7', '4'],
        optionsMy: ['True', 'False', '7', '4'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does the comparison 5 < 3 evaluate to?',
        questionMy: 'Comparison 5 < 3 ကို အကဲဖြတ်လျှင် ရလဒ်မှာ အဘယ်နည်း။',
        optionsEn: ['False', 'True', '5', '3'],
        optionsMy: ['False', 'True', '5', '3'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which symbol checks whether two values are equal in code (not just assigning a value)?',
        questionMy:
            'ကုဒ်တွင် တန်ဖိုးနှစ်ခု ညီမညီ စစ်ဆေးရန် အသုံးပြုသော သင်္ကေတမှာ အဘယ်နည်း (Value သတ်မှတ်ရုံမျှ မဟုတ်ပါ)။',
        optionsEn: ['==', '=', '!=', '<>'],
        optionsMy: ['==', '=', '!=', '<>'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-coding-2',
    subject: 'coding',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Loops in Code: For and While',
    titleMy: 'ကုဒ်ထဲက Loop များ- For နှင့် While',
    descriptionEn:
        'Learn about tracing simple for and while loops in code and predicting how many times they repeat or what they print.',
    descriptionMy:
        'ရိုးရှင်းသော for နှင့် while loop ကုဒ်များကို ခြေရာခံဖတ်ပြီး ၎င်းတို့ ဘယ်နှစ်ကြိမ်ထပ်ခါတလဲလဲ လုပ်ဆောင်မည်၊ ဘာပြသမည်ကို ခန့်မှန်းတတ်စေရန် သင်ယူပါမည်။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            'Code: for i in range(4): print("Hi"). How many times does "Hi" print?',
        questionMy:
            'ကုဒ်- for i in range(4)- print("Hi") ။ "Hi" ကို ဘယ်နှစ်ကြိမ် ပြသမည်နည်း။',
        optionsEn: ['4', '3', '5', '1'],
        optionsMy: ['4', '3', '5', '1'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Code: count = 0, while count < 3: print(count), count = count + 1. What does this print?',
        questionMy:
            'ကုဒ်- count = 0, while count < 3- print(count), count = count + 1 ။ ဒါက ဘာများ ပြသမည်နည်း။',
        optionsEn: ['0, 1, 2', '1, 2, 3', '0, 1, 2, 3', '3, 2, 1'],
        optionsMy: ['0, 1, 2', '1, 2, 3', '0, 1, 2, 3', '3, 2, 1'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Code: total = 0, for i in range(5): total = total + 1. What is the value of total after the loop finishes?',
        questionMy:
            'ကုဒ်- total = 0, for i in range(5)- total = total + 1 ။ loop ပြီးဆုံးပြီးနောက် total ၏တန်ဖိုးမှာ မည်သို့ဖြစ်မည်နည်း။',
        optionsEn: ['5', '4', '0', '10'],
        optionsMy: ['5', '4', '0', '10'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the main difference between a "for" loop and a "while" loop?',
        questionMy:
            '"for" loop နှင့် "while" loop ၏ အဓိကကွာခြားချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A for loop usually repeats a set number of times; a while loop repeats until a condition becomes false',
          'A for loop never repeats; a while loop always repeats forever',
          'A for loop only works with words; a while loop only works with numbers',
          'There is no difference, they always do the same thing',
        ],
        optionsMy: [
          'for loop သည် သတ်မှတ်ကြိမ်ဦးရေအတိုင်း ပုံမှန်ထပ်ခါလုပ်ဆောင်ပြီး၊ while loop သည် အခြေအနေတစ်ခု false ဖြစ်သွားသည်အထိ ထပ်ခါလုပ်ဆောင်သည်',
          'for loop သည် ဘယ်တော့မှ ထပ်ခါမလုပ်ဘဲ၊ while loop သည် အမြဲတမ်းအဆုံးမရှိ ထပ်ခါလုပ်နေသည်',
          'for loop သည် စာလုံးများနှင့်သာ အလုပ်လုပ်ပြီး၊ while loop သည် နံပါတ်များနှင့်သာ အလုပ်လုပ်သည်',
          'ကွာခြားချက် လုံးဝမရှိပါ၊ နှစ်ခုစလုံး တစ်ခုတည်းအလုပ်လုပ်ကြသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Code: n = 5, while n > 0: print(n), n = n - 2. What is the last number printed before the loop stops?',
        questionMy:
            'ကုဒ်- n = 5, while n > 0- print(n), n = n - 2 ။ loop ရပ်တန့်ခင် နောက်ဆုံးပြသသော နံပါတ်မှာ အဘယ်နည်း။',
        optionsEn: ['1', '0', '-1', '3'],
        optionsMy: ['1', '0', '-1', '3'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-coding-2',
    subject: 'coding',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Debugging: Find the Bug',
    titleMy: 'Debugging - ကုဒ်ရှိ အမှားကို ရှာဖွေခြင်း',
    descriptionEn:
        'Learn how to read short pseudocode snippets, spot common bugs, and work out how to fix them.',
    descriptionMy:
        'Pseudocode အတိုများကို ဖတ်ကာ သာမန်ကြုံရတတ်သည့် အမှားများကို ရှာဖွေပြီး မည်သို့ပြင်ဆင်ရမည်ကို လေ့လာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'This code should print the numbers 1 to 5, but it stops too early:\nFOR i = 1 TO 4\n  PRINT i\nEND FOR\nWhat is the bug, and how should it be fixed?',
        questionMy:
            'ဤကုဒ်သည် ၁ မှ ၅ အထိ ကိန်းဂဏန်းများကို ပြသသင့်သော်လည်း စောစီးစွာ ရပ်သွားသည်။\nFOR i = 1 TO 4\n  PRINT i\nEND FOR\nအမှားက ဘာလဲ၊ မည်သို့ ပြင်ဆင်သင့်သနည်း။',
        optionsEn: [
          'The loop should start at i = 0',
          'PRINT i should be outside the loop',
          'The loop should be FOR i = 1 TO 5',
          'The loop should use WHILE instead of FOR',
        ],
        optionsMy: [
          'Loop ကို i = 0 မှ စတင်ရမည်',
          'PRINT i ကို loop အပြင်ဘက်တွင် ထားရမည်',
          'Loop ကို FOR i = 1 TO 5 ဟု ပြောင်းရမည်',
          'FOR အစား WHILE ကို သုံးရမည်',
        ],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn:
            'A score of 50 or more should count as a Pass. A student scores exactly 50:\nIF score > 50 THEN\n  PRINT "Pass"\nELSE\n  PRINT "Fail"\nEND IF\nWhat does this code print for that student, and what is the fix?',
        questionMy:
            'အမှတ် ၅၀ (သို့) ၎င်းထက်ပိုလျှင် Pass ဟု မှတ်သင့်သည်။ ကျောင်းသားတစ်ဦးက အမှတ် ၅၀ အတိအကျ ရသည်။\nIF score > 50 THEN\n  PRINT "Pass"\nELSE\n  PRINT "Fail"\nEND IF\nထိုကျောင်းသားအတွက် ဤကုဒ်က ဘာပြသမည်နည်း၊ မည်သို့ပြင်ဆင်ရမည်နည်း။',
        optionsEn: [
          'It prints "Pass" for 50; no fix is needed',
          'It prints "Fail" for 50; change IF to WHILE',
          'It prints "Pass" for 49; change ELSE to IF',
          'It prints "Fail" for 50; change > to >=',
        ],
        optionsMy: [
          'အမှတ် ၅၀ အတွက် "Pass" ဟုပြသသည်၊ ပြင်ဆင်စရာမလိုပါ',
          'အမှတ် ၅၀ အတွက် "Fail" ဟုပြသသည်၊ IF ကို WHILE သို့ ပြောင်းရမည်',
          'အမှတ် ၄၉ အတွက် "Pass" ဟုပြသသည်၊ ELSE ကို IF သို့ ပြောင်းရမည်',
          'အမှတ် ၅၀ အတွက် "Fail" ဟုပြသသည်၊ > ကို >= သို့ ပြောင်းရမည်',
        ],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn:
            'This code should calculate and print the area of a rectangle:\nPRINT area\narea = length * width\nWhat is wrong with it?',
        questionMy:
            'ဤကုဒ်သည် စတုဂံ၏ဧရိယာကို တွက်ချက်ပြီး ပြသသင့်သည်။\nPRINT area\narea = length * width\nဒါက ဘာအမှားရှိသနည်း။',
        optionsEn: [
          'It multiplies the wrong two numbers',
          'It prints area before calculating it; PRINT area must come after area = length * width',
          'It uses ADD instead of MULTIPLY',
          'The variable name "area" is not allowed in code',
        ],
        optionsMy: [
          'မှားယွင်းသော ကိန်းဂဏန်းနှစ်ခုကို မြှောက်နေသည်',
          'Area ကို မတွက်ခင်မှာ ပြသနေသည်၊ PRINT area ကို area = length * width ၏ နောက်တွင် ထားရမည်',
          'MULTIPLY အစား ADD ကို သုံးနေသည်',
          '"area" ဟူသော variable အမည်ကို ကုဒ်တွင် အသုံးပြု၍မရပါ',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'This code should add 1 + 2 + 3 and print the total (expected answer: 6):\ntotal = 1\nFOR i = 1 TO 3\n  total = total + i\nEND FOR\nPRINT total\nBut it prints 7. What is the bug?',
        questionMy:
            'ဤကုဒ်သည် ၁ + ၂ + ၃ ကို ပေါင်းပြီး စုစုပေါင်းကို ပြသသင့်သည် (မှန်ကန်သောအဖြေ - ၆)။\ntotal = 1\nFOR i = 1 TO 3\n  total = total + i\nEND FOR\nPRINT total\nသို့သော် ၇ ဟု ပြသနေသည်။ အမှားက ဘာလဲ။',
        optionsEn: [
          'The FOR loop should go TO 4 instead of TO 3',
          'i should start at 0 instead of 1',
          'The PRINT statement should be inside the loop',
          'total starts at 1 instead of 0, adding one extra; it should start at total = 0',
        ],
        optionsMy: [
          'FOR loop သည် TO 3 အစား TO 4 အထိ ဖြစ်သင့်သည်',
          'i သည် 1 အစား 0 မှ စတင်သင့်သည်',
          'PRINT statement ကို loop အတွင်းတွင် ထားသင့်သည်',
          'total သည် 0 အစား 1 မှ စတင်နေသဖြင့် တစ်ခုပိုပေါင်းမိသည်၊ total = 0 မှ စတင်ရမည်',
        ],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn:
            'This code should swap the values of x and y (before: x = 3, y = 7):\nx = y\ny = x\nAfter running it, what are the final values of x and y, and why is that wrong?',
        questionMy:
            'ဤကုဒ်သည် x နှင့် y ၏ တန်ဖိုးများကို လဲလှယ်ပေးသင့်သည် (မလဲလှယ်မီ - x = 3, y = 7)။\nx = y\ny = x\nဒါကိုအလုပ်လုပ်ပြီးနောက် x နှင့် y ၏ နောက်ဆုံးတန်ဖိုးများက ဘာဖြစ်မည်နည်း၊ ဘာကြောင့်မှားနေသနည်း။',
        optionsEn: [
          'x = 3 and y = 7 (unchanged) — the code has no effect',
          'x = 7 and y = 3 (correctly swapped) — the code works fine',
          'x = 7 and y = 7 (both become 7) — x\'s original value is lost before y can use it; a temporary variable is needed',
          'x = 0 and y = 0 — the code resets both variables',
        ],
        optionsMy: [
          'x = 3 နှင့် y = 7 (မပြောင်းလဲပါ) — ကုဒ်က မည်သည့်အကျိုးသက်ရောက်မှုမျှ မရှိပါ',
          'x = 7 နှင့် y = 3 (မှန်ကန်စွာ လဲလှယ်ပြီး) — ကုဒ်က မှန်ကန်စွာအလုပ်လုပ်သည်',
          'x = 7 နှင့် y = 7 (နှစ်ခုစလုံး 7 ဖြစ်သွားသည်) — y အသုံးမပြုခင် x ၏ မူလတန်ဖိုးကို ဆုံးရှုံးသွားသည်၊ temporary variable တစ်ခု လိုအပ်သည်',
          'x = 0 နှင့် y = 0 — ကုဒ်က variable နှစ်ခုစလုံးကို ပြန်လည်သတ်မှတ်သည်',
        ],
        correctIndex: 2,
      ),
    ],
  ),

  // Engineering depth batch 1: a second module per grade (Year 1-6),
  // bringing `engineering` from 1 module/grade to 2, matching the
  // "geography/history/computing/coding depth batch 1" blocks above.
  // Authored via a parallel content-generation workflow (one agent per
  // grade), with every physics/engineering claim (simple machines,
  // bridge types, friction, circuits, structural stability including
  // the Leaning Tower of Pisa's center-of-gravity explanation)
  // independently fact-checked before being added here.
  PrimaryActivityDef(
    id: 'mock-year1-engineering-2',
    subject: 'engineering',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Pulleys, Wedges, and Screws',
    titleMy: 'ကြိုးဆွဲစနစ်၊ ခွက်နှင့် ဝက်အူများ',
    descriptionEn:
        'Learn about pulleys, wedges, and screws — simple machines that lift, split, and fasten things around us.',
    descriptionMy:
        'ပတ်ဝန်းကျင်တွင်ရှိသော အရာဝတ္ထုများကို ချီမြှောက်ခြင်း၊ ခွဲထုတ်ခြင်းနှင့် ကျပ်တည်းစေသော ကြိုးဆွဲစနစ်၊ ခွက်နှင့် ဝက်အူများအကြောင်း လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn:
            'A pulley is a wheel with a rope around it. What does it help you do?',
        questionMy:
            'ကြိုးဆွဲစနစ် (pulley) သည် ကြိုးပတ်ထားသော ဘီးတစ်ခုဖြစ်သည်။ ၎င်းသည် သင့်အား အဘယ်အရာပြုလုပ်ရာတွင် ကူညီပေးသနည်း။',
        optionsEn: [
          'Lift or move things by pulling a rope',
          'Cut paper into pieces',
          'Make food taste sweet',
          'Turn on a light bulb',
        ],
        optionsMy: [
          'ကြိုးကိုဆွဲခြင်းဖြင့် အရာဝတ္ထုများကို ချီမြှောက်ခြင်း (သို့) ရွှေ့ခြင်း',
          'စက္ကူများကို ဖြတ်ခြင်း',
          'အစားအစာကို ချိုမြစေခြင်း',
          'မီးလုံးကို ဖွင့်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'On a flagpole, a pulley at the top lets you...',
        questionMy:
            'အလံတိုင်ထိပ်ရှိ ကြိုးဆွဲစနစ်သည် သင့်အား မည်သည့်အရာကို ပြုလုပ်နိုင်စေသနည်း။',
        optionsEn: [
          'Raise or lower the flag by pulling a rope',
          'Make the pole taller',
          'Change the flag\'s color',
          'Keep birds away',
        ],
        optionsMy: [
          'ကြိုးကိုဆွဲခြင်းဖြင့် အလံကို မြှောက်ခြင်း (သို့) ချခြင်း',
          'တိုင်ကို ပိုမြင့်စေခြင်း',
          'အလံ၏အရောင်ကို ပြောင်းလဲစေခြင်း',
          'ငှက်များကို ကာကွယ်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A wedge is thick at one end and thin at the other. What is it good at doing?',
        questionMy:
            'ခွက် (wedge) သည် တစ်ဖက်တွင် ထူ၍ တစ်ဖက်တွင် ပါးသည်။ ၎င်းသည် အဘယ်အရာကို ကောင်းစွာပြုလုပ်နိုင်သနည်း။',
        optionsEn: [
          'Splitting or pushing things apart',
          'Making music',
          'Holding water',
          'Growing plants',
        ],
        optionsMy: [
          'အရာများကို ခွဲထုတ်ခြင်း (သို့) တွန်းဖယ်ခြင်း',
          'ဂီတဖန်တီးခြင်း',
          'ရေထိန်းသိမ်းခြင်း',
          'အပင်စိုက်ပျိုးခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is an example of a wedge?',
        questionMy: 'အောက်ပါတို့တွင် ခွက် (wedge) ၏ ဥပမာမှာ အဘယ်နည်း။',
        optionsEn: [
          'An axe blade that splits wood',
          'A rope on a flagpole',
          'A jar lid',
          'A skateboard wheel',
        ],
        optionsMy: [
          'သစ်သားကိုခွဲသော ပုဆိန်သွား',
          'အလံတိုင်ပေါ်ရှိ ကြိုး',
          'ဗူးအဖုံး',
          'စကိတ်ဘုတ်ဘီး',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is an example of a screw?',
        questionMy: 'အောက်ပါတို့တွင် ဝက်အူ (screw) ၏ ဥပမာမှာ အဘယ်နည်း။',
        optionsEn: [
          'A jar lid that twists to close',
          'A rope on a flagpole',
          'An axe blade',
          'A wooden ramp',
        ],
        optionsMy: [
          'လှည့်ပိတ်ရသော ဗူးအဖုံး',
          'အလံတိုင်ပေါ်ရှိ ကြိုး',
          'ပုဆိန်သွား',
          'သစ်သားစောင်းကုန်းလမ်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-engineering-2',
    subject: 'engineering',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Materials Engineers Use',
    titleMy: 'အင်ဂျင်နီယာများသုံးသော ပစ္စည်းများ',
    descriptionEn:
        'Learn about the properties of wood, metal, plastic, fabric, and glass, and discover how engineers pick the right material for each job.',
    descriptionMy:
        'သစ်သား၊ သတ္တု၊ ပလတ်စတစ်၊ အထည်နှင့် ဖန်တို့၏ ဂုဏ်သတ္တိများကို လေ့လာပြီး အင်ဂျင်နီယာများသည် လုပ်ငန်းတစ်ခုစီအတွက် သင့်လျော်သောပစ္စည်းကို မည်သို့ရွေးချယ်ကြောင်း ရှာဖွေလေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn:
            'Which material lets you see through it, so engineers use it for windows?',
        questionMy:
            'ပြတင်းပေါက်များအတွက် အင်ဂျင်နီယာများသုံးလေ့ရှိသော ဘေးကနေမြင်နိုင်သည့်ပစ္စည်းမှာ အဘယ်နည်း။',
        optionsEn: ['Glass', 'Wood', 'Fabric', 'Metal'],
        optionsMy: ['ဖန်', 'သစ်သား', 'အထည်', 'သတ္တု'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A raincoat needs to keep water out. Which property must its material have?',
        questionMy:
            'မိုးကာအင်္ကျီသည် ရေမဝင်အောင်ကာကွယ်ပေးရမည်။ ၎င်း၏ပစ္စည်းသည် မည်သည့်ဂုဏ်သတ္တိရှိရမည်နည်း။',
        optionsEn: ['Waterproof', 'See-through', 'Breakable', 'Heavy'],
        optionsMy: [
          'ရေမဝင်နိုင်ခြင်း',
          'ဘေးကနေမြင်နိုင်ခြင်း',
          'အလွယ်တကူကျိုးပဲ့ခြင်း',
          'လေးလံခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do engineers choose metal, not fabric, to build a bicycle frame?',
        questionMy:
            'စက်ဘီးဘောင်တည်ဆောက်ရန် အင်ဂျင်နီယာများသည် အထည်အစား သတ္တုကို ရွေးချယ်ကြသည်မှာ အဘယ့်ကြောင့်နည်း။',
        optionsEn: [
          'Metal is strong and holds its shape under weight',
          'Metal is soft and stretchy',
          'Metal is see-through',
          'Metal floats on water',
        ],
        optionsMy: [
          'သတ္တုသည်ခိုင်ခံ့ပြီး အလေးချိန်တင်သည့်တိုင် ပုံသဏ္ဌာန်မပျက်သောကြောင့်',
          'သတ္တုသည် နူးညံ့ပြီး ဆန့်တန့်နိုင်သောကြောင့်',
          'သတ္တုသည် ဘေးကနေမြင်နိုင်သောကြောင့်',
          'သတ္တုသည် ရေပေါ်တွင်ပေါလွင်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which material would be the best choice for a bendy garden hose that needs to curve around corners?',
        questionMy:
            'ထောင့်များပတ်လည် ကွေ့ရမည့် ဆွယ်ဆွယ်ပေါက်နေသော ဥယျာဉ်ပိုက်တစ်ခုအတွက် ကောင်းမွန်ဆုံးရွေးချယ်မည့် ပစ္စည်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Flexible plastic',
          'Solid glass',
          'Rigid metal',
          'Stiff wood',
        ],
        optionsMy: [
          'ကွေ့ညွှတ်နိုင်သောပလတ်စတစ်',
          'မာကျောသောဖန်',
          'မာကျောသောသတ္တု',
          'မာကျောသောသစ်သား',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A school desk needs a material that is strong and does not bend easily under books. Which material fits best?',
        questionMy:
            'ကျောင်းစာမေးများကို ခံနိုင်ရန် မကွေ့မညွတ်စေဘဲ ခိုင်မာသောပစ္စည်းလိုအပ်သော ကျောင်းစားပွဲအတွက် အသင့်လျော်ဆုံးပစ္စည်းမှာ အဘယ်နည်း။',
        optionsEn: ['Wood', 'Soft fabric', 'Thin paper', 'Cotton wool'],
        optionsMy: ['သစ်သား', 'နူးညံ့သောအထည်', 'ပါးလွှာသောစက္ကူ', 'ဂွမ်း'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-engineering-2',
    subject: 'engineering',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Bridges and Their Types',
    titleMy: 'တံတား အမျိုးအစားများ',
    descriptionEn:
        'Learn about beam, arch, and suspension bridges and discover what each type of bridge is best used for.',
    descriptionMy:
        'တန်းလျားတံတား၊ ကွေးတံတားနှင့် ကြိုးဆွဲတံတားအမျိုးအစားများအကြောင်း လေ့လာပြီး တံတားတစ်ခုစီကို မည်သည့်နေရာတွင် အကောင်းဆုံးအသုံးချနိုင်သည်ကို ရှာဖွေလေ့လာရမည်။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn:
            'A beam bridge is a straight, flat bridge resting on supports called piers. What kind of gap is a beam bridge best suited for?',
        questionMy:
            'တန်းလျားတံတား (Beam Bridge) သည် \'ပီယာ\' ဟုခေါ်သော အထောက်များပေါ်တွင် တင်ထားသည့် ဖြောင့်တန်းပြီး ပြားသောတံတားဖြစ်သည်။ ၎င်းသည် မည်သည့်ကွာဟချက်အမျိုးအစားအတွက် အသင့်တော်ဆုံးဖြစ်သနည်း။',
        optionsEn: [
          'A short, straight distance, like across a small stream',
          'A very wide ocean bay',
          'A deep canyon with no room for supports',
          'A gap that needs to open and close for boats',
        ],
        optionsMy: [
          'ချောင်းငယ်တစ်ခုကို ဖြတ်ကျော်ရသကဲ့သို့ တိုတောင်းပြီး ဖြောင့်တန်းသောအကွာအဝေး',
          'အလွန်ကျယ်ပြန့်သော ပင်လယ်ကွေ့',
          'အထောက်များ တည်ဆောက်ရန်နေရာမရှိသော ချောက်ကြီးတစ်ခု',
          'လှေများ ဖြတ်သန်းနိုင်ရန် ဖွင့်ပိတ်နိုင်ရသောနေရာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'An arch bridge has a curved shape. How does this curve help the bridge stay strong?',
        questionMy:
            'ကွေးတံတား (Arch Bridge) သည် ကွေးညွှတ်သောပုံသဏ္ဍာန်ရှိသည်။ ဤကွေးမှုသည် တံတားကို ခိုင်မာစေရန် မည်သို့ကူညီပေးသနည်း။',
        optionsEn: [
          'It spreads the weight outward and down through the sides to the ground',
          'It lets the whole bridge float on water',
          'It makes the bridge lighter than a paper airplane',
          'It allows the bridge to bend upward whenever cars cross',
        ],
        optionsMy: [
          'ဝန်ချိန်ကို တံတား၏ အနားနှစ်ဖက်မှတစ်ဆင့် အောက်သို့ ပျံ့နှံ့စေပြီး မြေကြီးထံ ရွှေ့ပြောင်းပေးသည်',
          'တံတားတစ်ခုလုံးကို ရေပေါ်တွင် မျောစေသည်',
          'တံတားကို စက္ကူလေယာဉ်ငယ်ထက် ပေါ့ပါးစေသည်',
          'ကားများဖြတ်သန်းတိုင်း တံတားကို အပေါ်သို့ ကွေးစေသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A suspension bridge has tall towers and thick cables. What is their job?',
        questionMy:
            'ကြိုးဆွဲတံတား (Suspension Bridge) တွင် မျှော်စင်မြင့်များနှင့် ကြိုးထူထူများ ပါဝင်သည်။ ၎င်းတို့၏ တာဝန်မှာ အဘယ်နည်း။',
        optionsEn: [
          'To hold up the road deck by hanging it from the cables',
          'To pump rainwater away from the road',
          'To light up the bridge at night',
          'To collect tolls from cars crossing',
        ],
        optionsMy: [
          'လမ်းကြမ်းပြင်ကို ကြိုးများမှ ချိတ်ဆွဲ၍ ထောက်ပံ့ပေးရန်',
          'မိုးရေများကို လမ်းပေါ်မှ စုပ်ထုတ်ရန်',
          'ညအချိန်တွင် တံတားကို မီးထွန်းညှိပေးရန်',
          'တံတားဖြတ်ကျော်သော ကားများထံမှ အခွန်ကောက်ခံရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which type of bridge is best for crossing a very wide river or bay in one long stretch, with very few supports in the water?',
        questionMy:
            'ရေထဲတွင် အထောက်အနည်းငယ်သာထား၍ ကျယ်ပြန့်သောမြစ် သို့မဟုတ် ပင်လယ်ကွေ့ကို တစ်ကြောင်းတည်း ရှည်လျားစွာ ဖြတ်ကျော်ရန် မည်သည့်တံတားအမျိုးအစားက အသင့်တော်ဆုံးဖြစ်သနည်း။',
        optionsEn: [
          'Suspension bridge',
          'Beam bridge',
          'A simple wooden plank bridge',
          'A stepping-stone crossing',
        ],
        optionsMy: [
          'ကြိုးဆွဲတံတား (Suspension Bridge)',
          'တန်းလျားတံတား (Beam Bridge)',
          'ရိုးရှင်းသော သစ်သားပျဉ်ပြားတံတား',
          'ကျောက်တုံးခွီများဖြင့် ဖြတ်ကျော်ရသည့်လမ်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which bridge type pushes weight out to strong supports at each end, making it a good choice for crossing a valley without needing supports in the middle?',
        questionMy:
            'ဝန်ချိန်ကို နှစ်ဖက်အစွန်းရှိ ခိုင်မာသောအထောက်များဆီသို့ တွန်းပို့ပေးပြီး၊ အလယ်တွင် အထောက်များ မလိုအပ်ဘဲ ချိုင့်ဝှမ်းတစ်ခုကို ဖြတ်ကျော်ရန် မည်သည့်တံတားအမျိုးအစားက သင့်တော်သနည်း။',
        optionsEn: [
          'Arch bridge',
          'Beam bridge',
          'Suspension bridge',
          'Pontoon bridge',
        ],
        optionsMy: [
          'ကွေးတံတား (Arch Bridge)',
          'တန်းလျားတံတား (Beam Bridge)',
          'ကြိုးဆွဲတံတား (Suspension Bridge)',
          'ဖောင်တံတား (Pontoon Bridge)',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-engineering-2',
    subject: 'engineering',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Push, Pull, and Friction',
    titleMy: 'တွန်းအား၊ ဆွဲအားနှင့် ပွတ်တိုက်အား',
    descriptionEn:
        'Learn about push and pull forces and discover how friction slows things down when surfaces rub together.',
    descriptionMy:
        'တွန်းအားနှင့် ဆွဲအားများအကြောင်း လေ့လာပြီး မျက်နှာပြင်များ ပွတ်တိုက်သောအခါ ပွတ်တိုက်အားက အရာဝတ္ထုများကို မည်သို့နှေးစေကြောင်း ရှာဖွေလေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'A force that moves an object away from you is called a...',
        questionMy:
            'အရာဝတ္ထုတစ်ခုကို ကိုယ့်ထံမှ ဝေးအောင် ရွှေ့ပေးသည့်အားကို အဘယ်ဟုခေါ်သနည်း။',
        optionsEn: ['Push', 'Pull', 'Friction', 'Gravity'],
        optionsMy: ['တွန်းအား', 'ဆွဲအား', 'ပွတ်တိုက်အား', 'ဆွဲငင်အား'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which action is an example of a pull force?',
        questionMy:
            'အောက်ပါအချက်များထဲမှ ဆွဲအားကို သုံးသည့် လုပ်ဆောင်ချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Opening a drawer toward you',
          'Kicking a ball forward',
          'Pressing a doorbell',
          'Closing a door by pushing it',
        ],
        optionsMy: [
          'အံဆွဲကို ကိုယ့်ဘက်သို့ ဆွဲဖွင့်ခြင်း',
          'ဘောလုံးကို ရှေ့သို့ကန်ခြင်း',
          'ခေါင်းလောင်းကို ဖိနှိပ်ခြင်း',
          'တံခါးကို တွန်း၍ပိတ်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is friction?',
        questionMy: 'ပွတ်တိုက်အားဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A force that slows things down when two surfaces rub together',
          'A force that always speeds things up',
          'A type of electricity',
          'A force found only in water',
        ],
        optionsMy: [
          'မျက်နှာပြင်နှစ်ခု ပွတ်တိုက်သောအခါ အရာဝတ္ထုများကို နှေးစေသည့်အား',
          'အမြဲတမ်း အရာဝတ္ထုများကို မြန်စေသည့်အား',
          'လျှပ်စစ်အမျိုးအစားတစ်ခု',
          'ရေထဲတွင်သာ တွေ့ရသည့်အား',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A ball rolling on grass stops faster than the same ball rolling on ice because grass has...',
        questionMy:
            'ဘောလုံးတစ်လုံးကို မြက်ခင်းပေါ်နှင့် ရေခဲပြင်ပေါ်တွင် လှိမ့်လိုက်လျှင် မြက်ခင်းပေါ်ရှိဘောလုံးက ပိုမြန်ရပ်တန့်ရသည်မှာ မြက်ခင်း၌ အောက်ပါအရာ ပိုများသောကြောင့်ဖြစ်သည်။',
        optionsEn: [
          'More friction than the smooth ice',
          'Less friction than the smooth ice',
          'More gravity than the ice',
          'No friction at all',
        ],
        optionsMy: [
          'ချောမွေ့သော ရေခဲထက် ပွတ်တိုက်အား ပိုများခြင်း',
          'ချောမွေ့သော ရေခဲထက် ပွတ်တိုက်အား ပိုနည်းခြင်း',
          'ရေခဲထက် ဆွဲငင်အား ပိုများခြင်း',
          'ပွတ်တိုက်အား လုံးဝမရှိခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which surface would let a toy car roll the farthest with the least slowing down?',
        questionMy:
            'အောက်ပါမျက်နှာပြင်များထဲမှ အဘယ်မျက်နှာပြင်တွင် ကစားစားကားတစ်စီးကို လှိမ့်ထားလျှင် အနည်းဆုံးနှေးကာ အဝေးဆုံးရောက်နိုင်မည်နည်း။',
        optionsEn: [
          'A smooth, polished tile floor',
          'A rough sandy path',
          'A thick woolen carpet',
          'A gravel road',
        ],
        optionsMy: [
          'ချောမွေ့ပြီး တောက်ပသောကြမ်းပြင်',
          'ကြမ်းတမ်းသော သဲလမ်း',
          'ထူထဲသော သိုးမွှေးကော်ဇော',
          'ကျောက်စရစ်လမ်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-engineering-2',
    subject: 'engineering',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Electrical Circuits: Let There Be Light',
    titleMy: 'လျှပ်စစ်ပတ်လမ်း - အလင်းရောင်ဖြစ်လာပုံ',
    descriptionEn:
        'Learn what makes a simple electrical circuit work and discover the difference between conductors and insulators.',
    descriptionMy:
        'ရိုးရှင်းသောလျှပ်စစ်ပတ်လမ်းတစ်ခု အလုပ်လုပ်ပုံနှင့် လျှပ်စစ်သွယ်ဝိုက်ပစ္စည်းများနှင့် အကာအကွယ်ပစ္စည်းများ ကွာခြားပုံကို လေ့လာပါ။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            'Which four parts are needed to make a simple, working electrical circuit?',
        questionMy:
            'ရိုးရှင်းသော အလုပ်လုပ်နေသည့် လျှပ်စစ်ပတ်လမ်းတစ်ခုအတွက် လိုအပ်သော အစိတ်အပိုင်းလေးခုမှာ အဘယ်နည်း။',
        optionsEn: [
          'A battery, wires, a switch, and a bulb',
          'A battery, paper, glue, and a switch',
          'Wires, a magnet, water, and a bulb',
          'A switch, a battery, sand, and wires',
        ],
        optionsMy: [
          'ဘက်ထရီ၊ ဝါယာကြိုးများ၊ ခလုတ်၊ နှင့် မီးလုံး',
          'ဘက်ထရီ၊ စက္ကူ၊ ကော်၊ နှင့် ခလုတ်',
          'ဝါယာကြိုးများ၊ သံလိုက်၊ ရေ၊ နှင့် မီးလုံး',
          'ခလုတ်၊ ဘက်ထရီ၊ သဲ၊ နှင့် ဝါယာကြိုးများ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why does a light bulb fail to light up if there is a gap anywhere in the circuit\'s loop?',
        questionMy:
            'ပတ်လမ်းအဝိုင်းတွင် တစ်နေရာရာ၌ အကွာအဝေးပြတ်နေပါက မီးလုံးအလင်းမပေါ်ရသည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          'Electric current cannot flow if the path is not complete',
          'The bulb becomes too hot to shine',
          'The battery loses its color',
          'Wires only work when they are bent',
        ],
        optionsMy: [
          'လမ်းကြောင်းမပြည့်စုံပါက လျှပ်စစ်လျှပ်စီးကြောင်း စီးဆင်း၍ မရနိုင်သောကြောင့်',
          'မီးလုံးသည် လွန်စွာပူလွန်း၍ အလင်းမထွက်တော့သောကြောင့်',
          'ဘက်ထရီသည် အရောင်ပျောက်သွားသောကြောင့်',
          'ဝါယာကြိုးများသည် ကွေးထားမှသာ အလုပ်လုပ်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A circuit has a battery, wires, and a bulb, but the switch is left open (turned off). What happens?',
        questionMy:
            'ပတ်လမ်းတစ်ခုတွင် ဘက်ထရီ၊ ဝါယာကြိုးများနှင့် မီးလုံးရှိသော်လည်း ခလုတ်ကို ဖွင့်ထားသည် (ပိတ်ထားသည်)။ ဘာဖြစ်မည်နည်း။',
        optionsEn: [
          'The circuit is incomplete, so the bulb stays off',
          'The bulb shines brighter than usual',
          'The battery charges itself faster',
          'The wires change into insulators',
        ],
        optionsMy: [
          'ပတ်လမ်းမပြည့်စုံသဖြင့် မီးလုံးသည် ငြိမ်နေမည်',
          'မီးလုံးသည် ပုံမှန်ထက် ပိုတောက်ပလိမ့်မည်',
          'ဘက်ထရီသည် ပိုမြန်စွာအားသွင်းလိမ့်မည်',
          'ဝါယာကြိုးများသည် အကာအကွယ်ပစ္စည်းများအဖြစ် ပြောင်းသွားလိမ့်မည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do electricians use metals like copper for wires instead of plastic?',
        questionMy:
            'လျှပ်စစ်ပညာရှင်များသည် ဝါယာကြိုးများအတွက် ပလတ်စတစ်အစား ကြေးနီကဲ့သို့သော သတ္တုများကို အသုံးပြုကြသည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          'Metals are good conductors that let electric current pass through easily',
          'Metals are always cheaper than plastic',
          'Metals are lighter in weight',
          'Metals never get warm',
        ],
        optionsMy: [
          'သတ္တုများသည် လျှပ်စစ်လျှပ်စီးကြောင်းကို အလွယ်တကူ စီးဆင်းနိုင်စေသော ကောင်းမွန်သည့် လျှပ်စစ်သွယ်ဝိုက်ပစ္စည်းများဖြစ်သောကြောင့်',
          'သတ္တုများသည် ပလတ်စတစ်ထက် အမြဲစျေးသက်သာသောကြောင့်',
          'သတ္တုများသည် အလေးချိန်ပေါ့သောကြောင့်',
          'သတ္တုများသည် ဘယ်တော့မှမပူသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'The plastic coating around a copper wire is an insulator. What is its job?',
        questionMy:
            'ကြေးနီဝါယာကြိုးကို ဝိုင်းရံထားသော ပလတ်စတစ်အခြုံသည် အကာအကွယ်ပစ္စည်းတစ်ခုဖြစ်သည်။ ၎င်း၏အလုပ်မှာ အဘယ်နည်း။',
        optionsEn: [
          'To stop electric current from escaping and to keep people safe from shocks',
          'To help the current flow faster through the wire',
          'To make the wire heavier',
          'To turn the wire into a battery',
        ],
        optionsMy: [
          'လျှပ်စစ်လျှပ်စီးကြောင်း ပေါက်ကြားထွက်ခြင်းကို တားဆီးပြီး လူများကို လျှပ်စစ်ရှော့မှ လုံခြုံစေရန်',
          'ဝါယာကြိုးအတွင်း လျှပ်စီးကြောင်း ပိုမြန်စွာစီးဆင်းစေရန်',
          'ဝါယာကြိုးကို ပိုလေးလံအောင်ပြုလုပ်ရန်',
          'ဝါယာကြိုးကို ဘက်ထရီအဖြစ် ပြောင်းလဲပေးရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-engineering-2',
    subject: 'engineering',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Why Things Stand or Fall: Structural Stability',
    titleMy: 'အဆောက်အအုံ မတည်ငြိမ်မှု အကြောင်း လေ့လာခြင်း',
    descriptionEn:
        'Discover why a wide base, a low center of gravity, and triangular bracing keep structures stable and stop them from toppling.',
    descriptionMy:
        'ကျယ်ပြန့်သော အခြေခံအုတ်မြစ်၊ နိမ့်သော ဆွဲငင်အားဗဟိုအမှတ်နှင့် တြိဂံပုံ ထောက်ပံ့ဖွဲ့စည်းမှုများက အဆောက်အအုံများကို ဘာကြောင့် မတည်ငြိမ်စေပြီး လဲကျခြင်းမှ ကာကွယ်ပေးသည်ကို လေ့လာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'Which base shape makes a tower LEAST likely to topple over?',
        questionMy:
            'မျှော်စင်တစ်ခုအား လဲကျနိုင်ခြေ အနည်းဆုံးဖြစ်စေမည့် အခြေခံအုတ်မြစ် ပုံသဏ္ဌာန်မှာ မည်သည်ဖြစ်သနည်း။',
        optionsEn: [
          'A narrow base with a tall, thin column',
          'A wide, broad base spread out at the bottom',
          'A base the same width as the top of the tower',
          'A base that curves inward at the bottom',
        ],
        optionsMy: [
          'ကျဉ်းမြောင်းသော အခြေခံနှင့် မြင့်၍ပါးလွှာသော ကော်လံ',
          'အောက်ခြေတွင် ကျယ်ပြန့်စွာ ဖြန့်ကျင်းထားသော အခြေခံအုတ်မြစ်',
          'မျှော်စင်၏ထိပ်ပိုင်းနှင့် အကျယ်တူညီသော အခြေခံ',
          'အောက်ခြေတွင် အတွင်းသို့ ကွေ့ဝင်နေသော အခြေခံ',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'A structure is more stable when its center of gravity is placed how?',
        questionMy:
            'အဆောက်အအုံတစ်ခု၏ ဆွဲငင်အားဗဟိုအမှတ်ကို မည်သို့ထားရှိမှသာ ပို၍ တည်ငြိမ်မှုရှိသနည်း။',
        optionsEn: [
          'As high as possible above the base',
          'As low as possible, close to the base',
          'Off to one side, away from the center',
          'It does not matter where the center of gravity is',
        ],
        optionsMy: [
          'အခြေခံအုတ်မြစ်အထက်တွင် အနိုင်ဆုံး မြင့်စွာထားခြင်း',
          'အခြေခံအုတ်မြစ်နှင့် နီးကပ်စွာ အနိုင်ဆုံးနိမ့်စွာထားခြင်း',
          'အလယ်ဗဟိုမှ ဘေးတစ်ဖက်သို့ ရွှေ့၍ထားခြင်း',
          'ဆွဲငင်အားဗဟိုအမှတ် မည်သည့်နေရာတွင်ရှိရှိ အရေးမကြီးပါ',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'Why do engineers add triangle shapes (bracing) inside bridges and towers?',
        questionMy:
            'အင်ဂျင်နီယာများသည် တံတားများနှင့် မျှော်စင်များအတွင်း တြိဂံပုံသဏ္ဌာန် (ထောက်ပံ့ကူချက်များ) ကို ဘာကြောင့် ထည့်သွင်းကြသနည်း။',
        optionsEn: [
          'Triangles look more decorative than squares',
          'A triangle keeps its shape under pressure and does not easily bend out of shape, unlike a square',
          'Triangles use more material, making the structure heavier and stronger',
          'Triangles are cheaper to build than any other shape',
        ],
        optionsMy: [
          'တြိဂံပုံသဏ္ဌာန်သည် စတုရန်းထက် ပိုမိုလှပသည်ဟု ယူဆသောကြောင့်',
          'တြိဂံပုံသဏ္ဌာန်သည် စတုရန်းနှင့်မတူဘဲ ဖိအားကျရောက်သည့်တိုင် ပုံသဏ္ဌာန်မပျက်ဘဲ လွယ်ကူစွာမကွေ့ဘဲ ခံနိုင်ရည်ရှိသောကြောင့်',
          'တြိဂံပုံသည် ပစ္စည်းပိုသုံးရသဖြင့် အဆောက်အအုံကို ပိုလေးလံ၍ ပိုခိုင်ခံ့စေသောကြောင့်',
          'တြိဂံပုံသည် အခြားပုံသဏ္ဌာန်များထက် တည်ဆောက်ရန် ပိုစျေးသက်သာသောကြောင့်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'A toy tower has a wide base but all its heavy blocks are stacked at the very top. What is most likely to happen?',
        questionMy:
            'အရုပ်မျှော်စင်တစ်ခုတွင် အခြေခံအုတ်မြစ်ကျယ်သော်လည်း လေးသောအုတ်ပုံများအားလုံးကို အထိပ်ဆုံးတွင် စုပုံထားသည်။ မည်သို့ဖြစ်လာနိုင်ခြေအများဆုံးနည်း။',
        optionsEn: [
          'It will be extremely stable because the base is wide',
          'It becomes easier to tip over because the center of gravity has moved high up',
          'The width of the base no longer matters at all',
          'It will automatically balance itself no matter what',
        ],
        optionsMy: [
          'အခြေခံအုတ်မြစ်ကျယ်သောကြောင့် အလွန်တည်ငြိမ်မည်ဖြစ်သည်',
          'ဆွဲငင်အားဗဟိုအမှတ် အထက်သို့ရွှေ့လာသဖြင့် ပို၍လွယ်ကူစွာ လှိမ့်လဲနိုင်သည်',
          'အခြေခံအုတ်မြစ်၏ အကျယ်သည် လုံးဝ အရေးမကြီးတော့ချေ',
          'မည်သို့ပင်ဖြစ်စေ အလိုအလျောက် ဟန်ချက်ညီသွားမည်ဖြစ်သည်',
        ],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'The Leaning Tower of Pisa tilts but has not fallen over for centuries. What best explains why it is still standing?',
        questionMy:
            'Pisa အနိမ့်စောင်းမျှော်စင်သည် စောင်းနေသော်လည်း ရာစုနှစ်များစွာ မလဲကျခဲ့ပါ။ ယနေ့တိုင် မတည်ငြိမ်မှု မပျောက်ဘဲ တည်ရှိနေခြင်း၏ အကောင်းဆုံးရှင်းလင်းချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Its center of gravity, though shifted by the lean, still falls within the area of its base',
          'It has no weight at all, so gravity does not affect it',
          'Leaning towers are always more stable than straight towers',
          'Its center of gravity has moved completely outside its base but it is glued to the ground',
        ],
        optionsMy: [
          'စောင်းနေသော်လည်း ၎င်း၏ ဆွဲငင်အားဗဟိုအမှတ်သည် အခြေခံအုတ်မြစ်ဧရိယာအတွင်း ကျရောက်နေဆဲဖြစ်သောကြောင့်',
          '၎င်းတွင် အလေးချိန် လုံးဝမရှိသဖြင့် ဆွဲငင်အားကြောင့် သက်ရောက်မှုမရှိသောကြောင့်',
          'စောင်းနေသော မျှော်စင်များသည် ဖြောင့်တန်းသော မျှော်စင်များထက် အမြဲပို၍တည်ငြိမ်သောကြောင့်',
          'ဆွဲငင်အားဗဟိုအမှတ်သည် အခြေခံအုတ်မြစ်အပြင်ဘက်သို့ လုံးဝရွှေ့သွားသော်လည်း မြေပြင်နှင့် ကပ်ကပ်နေသောကြောင့်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // General knowledge depth batch 1: a second module per grade (Year
  // 1-6), bringing `generalknowledge` from 1 module/grade to 2 -- the
  // last Primary subject to reach depth parity with its siblings (see
  // the "depth batch 1" blocks above for geography/history/computing/
  // coding/engineering). Authored via a parallel content-generation
  // workflow (one agent per grade), fact-checked for accuracy (world
  // landmarks, animal facts, invention history, scientist/inventor
  // achievements, and the Year6 economics reasoning) and kept strictly
  // neutral/non-political throughout.
  PrimaryActivityDef(
    id: 'mock-year1-generalknowledge-2',
    subject: 'generalknowledge',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'World Landmarks and Wonders',
    titleMy: 'ကမ္ဘာ့ထင်ရှားသည့် အဆောက်အအုံများ',
    descriptionEn:
        'Learn about famous landmarks around the world and the countries they belong to.',
    descriptionMy:
        'ကမ္ဘာတစ်ဝှမ်းရှိ ထင်ရှားသည့်အဆောက်အအုံများနှင့် ၎င်းတို့တည်ရှိသည့်နိုင်ငံများအကြောင်း လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn:
            'The Shwedagon Pagoda is a famous golden landmark. Which country is it in?',
        questionMy:
            'ရွှေတိဂုံစေတီတော်သည် ကျော်ကြားသော ရွှေရောင်အဆောက်အအုံတစ်ခုဖြစ်သည်။ မည်သည့်နိုင်ငံတွင်ရှိသနည်း။',
        optionsEn: ['Myanmar', 'Thailand', 'India', 'China'],
        optionsMy: ['မြန်မာ', 'ထိုင်း', 'အိန္ဒိယ', 'တရုတ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'The Eiffel Tower is a tall metal tower landmark. Which country is it in?',
        questionMy:
            'အိုင်ဖယ်ရဲတိုင်သည် မြင့်မားသော သံမဏိရဲတိုင်အဆောက်အအုံတစ်ခုဖြစ်သည်။ မည်သည့်နိုင်ငံတွင်ရှိသနည်း။',
        optionsEn: ['Japan', 'France', 'Germany', 'Spain'],
        optionsMy: ['ဂျပန်', 'ပြင်သစ်', 'ဂျာမနီ', 'စပိန်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn:
            'The Great Wall is a very long wall landmark. Which country is it in?',
        questionMy:
            'တံတိုင်းကြီးသည် အလွန်ရှည်လျားသည့် တံတိုင်းအဆောက်အအုံတစ်ခုဖြစ်သည်။ မည်သည့်နိုင်ငံတွင်ရှိသနည်း။',
        optionsEn: ['China', 'India', 'Vietnam', 'Korea'],
        optionsMy: ['တရုတ်', 'အိန္ဒိယ', 'ဗီယက်နမ်', 'ကိုရီးယား'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'The Pyramids are ancient triangle-shaped landmarks. Which country are they in?',
        questionMy:
            'ပိရမစ်များသည် ရှေးဟောင်းသုံးထောင့်ပုံသဏ္ဍာန် အဆောက်အအုံများဖြစ်သည်။ မည်သည့်နိုင်ငံတွင်ရှိသနည်း။',
        optionsEn: ['Egypt', 'Kenya', 'Sudan', 'Morocco'],
        optionsMy: ['အီဂျစ်', 'ကင်ညာ', 'ဆူဒန်', 'မော်ရိုကို'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'The Taj Mahal is a beautiful white landmark. Which country is it in?',
        questionMy:
            'တာဂျ်မဟာလ်သည် လှပသော အဖြူရောင်အဆောက်အအုံတစ်ခုဖြစ်သည်။ မည်သည့်နိုင်ငံတွင်ရှိသနည်း။',
        optionsEn: ['Pakistan', 'Bangladesh', 'India', 'Nepal'],
        optionsMy: ['ပါကစ္စတန်', 'ဘင်္ဂလားဒေ့ရှ်', 'အိန္ဒိယ', 'နီပေါ'],
        correctIndex: 2,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year2-generalknowledge-2',
    subject: 'generalknowledge',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Amazing Animals Around the World',
    titleMy: 'ကမ္ဘာပေါ်ရှိ အံ့ဖွယ်တိရစ္ဆာန်များ',
    descriptionEn:
        'Learn about amazing animals such as the biggest and fastest in the world, and discover where different animals live, from oceans and deserts to the Arctic.',
    descriptionMy:
        'ကမ္ဘာပေါ်ရှိ အကြီးဆုံးနှင့် အမြန်ဆုံးကဲ့သို့သော အံ့ဖွယ်တိရစ္ဆာန်များအကြောင်း လေ့လာပြီး၊ ပင်လယ်နှင့် သဲကန္တာရမှသည် ခေါင်တိုင်ဒေသအထိ သူတို့နေထိုင်ရာနေရာများကို လေ့လာပါမည်။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What is the biggest animal in the world?',
        questionMy: 'ကမ္ဘာပေါ်တွင် အကြီးဆုံးတိရစ္ဆာန်မှာ ဘာဖြစ်သနည်း။',
        optionsEn: ['Blue Whale', 'Elephant', 'Giraffe', 'Lion'],
        optionsMy: ['ပင်လယ်ကြင်း', 'ဆင်', 'ဂျီရာဖ်', 'ခြင်္သေ့'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which animal is the fastest on land?',
        questionMy: 'မည်သည့်တိရစ္ဆာန်သည် ကုန်းမြေပေါ်တွင် အမြန်ဆုံးဖြစ်သနည်း။',
        optionsEn: ['Cheetah', 'Turtle', 'Elephant', 'Snail'],
        optionsMy: ['ချီတာ', 'လိပ်', 'ဆင်', 'ခရု'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which animal lives in the icy Arctic and has thick white fur to stay warm?',
        questionMy:
            'မည်သည့်တိရစ္ဆာန်သည် အေးမြသော ခေါင်တိုင်ဒေသတွင် နေထိုင်ပြီး ကိုယ်ကိုနွေးထွေးအောင် အဖြူရောင်အမွေးထူထူရှိသနည်း။',
        optionsEn: ['Polar Bear', 'Camel', 'Monkey', 'Fish'],
        optionsMy: ['ဝက်ဝံဖြူ', 'ကုလားအုတ်', 'မျောက်', 'ငါး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which animal is well suited to living in the hot, dry desert because it can go without water for a long time?',
        questionMy:
            'မည်သည့်တိရစ္ဆာန်သည် ရေမပါဘဲ ကြာရှည်နေနိုင်သောကြောင့် ပူပြင်း၍ ခြောက်သွေ့သည့် သဲကန္တာရတွင် နေထိုင်ရန်သင့်လျော်သနည်း။',
        optionsEn: ['Camel', 'Penguin', 'Dolphin', 'Frog'],
        optionsMy: ['ကုလားအုတ်', 'ပင်ဂွင်း', 'ဒေါ်ဖင်', 'ဖား'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these animals lives in the ocean and breathes air through a blowhole?',
        questionMy:
            'အောက်ပါတိရစ္ဆာန်များထဲမှ မည်သည်က ပင်လယ်ထဲတွင်နေထိုင်ပြီး လေအပေါက်မှတစ်ဆင့် အသက်ရှူသနည်း။',
        optionsEn: ['Dolphin', 'Tiger', 'Eagle', 'Camel'],
        optionsMy: ['ဒေါ်ဖင်', 'ကျား', 'လင်းယုန်', 'ကုလားအုတ်'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year3-generalknowledge-2',
    subject: 'generalknowledge',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Inventions That Changed Everyday Life',
    titleMy: 'နေ့စဉ်ဘဝကို ပြောင်းလဲစေသော တီထွင်မှုများ',
    descriptionEn:
        'Learn about the wheel, the telephone, the lightbulb, and the printing press, and how each invention changed the way people live.',
    descriptionMy:
        'ဘီး၊ ဖုန်း၊ မီးလုံးနှင့် ပုံနှိပ်စက်တို့အကြောင်း၊ ထိုတီထွင်မှုတစ်ခုစီက လူများ၏ ဘဝနေထိုင်မှုပုံစံကို မည်သို့ပြောင်းလဲစေခဲ့သည်ကို လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn:
            'What was one of the very first great inventions that helped people move heavy things and travel faster?',
        questionMy:
            'လူများအား လေးလံသောပစ္စည်းများကို ရွှေ့ရန်နှင့် ပိုမြန်စွာ ခရီးသွားနိုင်ရန် ကူညီပေးခဲ့သည့် အစောဆုံး ကြီးမြတ်သော တီထွင်မှုတစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: [
          'The wheel',
          'The telephone',
          'The lightbulb',
          'The printing press',
        ],
        optionsMy: ['ဘီး', 'ဖုန်း', 'မီးလုံး', 'ပုံနှိပ်စက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What invention allows people to talk to someone who is far away by speaking into a device?',
        questionMy:
            'အဝေးရောက်နေသူတစ်ဦးနှင့် စက်ပစ္စည်းတစ်ခုကို ပြောဆိုခြင်းဖြင့် စကားပြောနိုင်စေသည့် တီထွင်မှုမှာ အဘယ်နည်း။',
        optionsEn: [
          'The telephone',
          'The wheel',
          'The printing press',
          'The lightbulb',
        ],
        optionsMy: ['ဖုန်း', 'ဘီး', 'ပုံနှိပ်စက်', 'မီးလုံး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Before the lightbulb was invented, what did people mainly use to light their homes at night?',
        questionMy:
            'မီးလုံးမတီထွင်မီက လူများသည် ညအချိန်တွင် အိမ်ကို အလင်းရောင်ပေးရန် အဓိကအားဖြင့် အဘယ်အရာကို အသုံးပြုခဲ့သနည်း။',
        optionsEn: [
          'Candles and oil lamps',
          'Solar panels',
          'Batteries',
          'Electric lamps',
        ],
        optionsMy: [
          'ဖယောင်းတိုင်နှင့် ဆီမီးအိမ်များ',
          'ဆိုလာအားသုံးပစ္စည်းများ',
          'ဘက်ထရီများ',
          'လျှပ်စစ်မီးအိမ်များ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What did the printing press make it possible to do?',
        questionMy: 'ပုံနှိပ်စက်ကြောင့် အဘယ်အရာကို ပြုလုပ်နိုင်လာခဲ့သနည်း။',
        optionsEn: [
          'Make many copies of books quickly instead of writing each one by hand',
          'Send messages instantly through the air',
          'Light up a whole city at night',
          'Move heavy loads without any effort',
        ],
        optionsMy: [
          'စာအုပ်တစ်အုပ်ချင်းကို လက်ဖြင့်ရေးနေမည့်အစား စာအုပ်များစွာကို လျင်မြန်စွာ မိတ္တူကူးနိုင်ခြင်း',
          'လေထဲမှတစ်ဆင့် သတင်းများကို ချက်ချင်းပေးပို့ခြင်း',
          'တစ်မြို့လုံးကို ညအချိန်တွင် အလင်းရောင်ပေးခြင်း',
          'အားမစိုက်ဘဲ လေးလံသောပစ္စည်းများကို ရွှေ့ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is TRUE about how the wheel helped early people?',
        questionMy:
            'ဘီးသည် ရှေးလူများကို မည်သို့ကူညီခဲ့သည်နှင့်ပတ်သက်၍ အောက်ပါတို့တွင် မှန်ကန်သောအချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'It made carts and vehicles able to carry loads more easily',
          'It let people talk across long distances',
          'It printed books for the first time',
          'It replaced candles as a light source',
        ],
        optionsMy: [
          'လှည်းများနှင့် ယာဉ်များကို ဝန်များပိုမိုလွယ်ကူစွာ သယ်ဆောင်နိုင်စေခဲ့သည်',
          'လူများကို ဝေးလံသောနေရာများသို့ စကားပြောနိုင်စေခဲ့သည်',
          'စာအုပ်များကို ပထမဆုံးအကြိမ် ပုံနှိပ်ပေးခဲ့သည်',
          'ဖယောင်းတိုင်၏ အစားထိုးအလင်းရောင်အဖြစ် ရှိလာခဲ့သည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year4-generalknowledge-2',
    subject: 'generalknowledge',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Sports and Cultural Traditions Around the World',
    titleMy: 'ကမ္ဘာ့အားကစားနှင့် ယဉ်ကျေးမှုအစဉ်အလာများ',
    descriptionEn:
        'Learn about the Olympic Games, popular sports from different countries, and cultural festivals celebrated around the world.',
    descriptionMy:
        'အိုလံပစ်ပွဲတော်ကြီး၊ နိုင်ငံအသီးသီးမှ လူကြိုက်များသော အားကစားများနှင့် ကမ္ဘာတစ်ဝှမ်းရှိ ယဉ်ကျေးမှုပွဲတော်များအကြောင်းကို လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'How often are the Summer Olympic Games usually held?',
        questionMy:
            'နွေရာသီ အိုလံပစ်ပွဲတော်ကြီးကို ပုံမှန်အားဖြင့် မည်မျှကြာတိုင်း ကျင်းပလေ့ရှိသနည်း။',
        optionsEn: [
          'Every 4 years',
          'Every year',
          'Every 10 years',
          'Every 2 years',
        ],
        optionsMy: [
          'နှစ် ၄ နှစ်တစ်ကြိမ်',
          'နှစ်စဉ်',
          'နှစ် ၁၀ နှစ်တစ်ကြိမ်',
          'နှစ် ၂ နှစ်တစ်ကြိမ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What symbol is famously associated with the Olympic Games?',
        questionMy:
            'အိုလံပစ်ပွဲတော်ကြီးနှင့် ကျော်ကြားစွာ ဆက်စပ်နေသော သင်္ကေတမှာ အဘယ်နည်း။',
        optionsEn: [
          'Five interlocking rings',
          'A golden star',
          'A red dragon',
          'A blue triangle',
        ],
        optionsMy: [
          'ဆက်စပ်နေသော စက်ဝိုင်း ၅ ခု',
          'ရွှေကြယ်ပွင့်',
          'အနီရောင် နဂါး',
          'အပြာရောင် တြိဂံ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Sumo wrestling is a traditional sport most closely associated with which country?',
        questionMy:
            'ဆူမိုးသမိုင်းသတ်ပွဲသည် မည်သည့်နိုင်ငံနှင့် အနီးစပ်ဆုံး ဆက်စပ်နေသော ရိုးရာအားကစားဖြစ်သနည်း။',
        optionsEn: ['Japan', 'Brazil', 'Canada', 'Egypt'],
        optionsMy: [
          'ဂျပန်နိုင်ငံ',
          'ဘရာဇီးနိုင်ငံ',
          'ကနေဒါနိုင်ငံ',
          'အီဂျစ်နိုင်ငံ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which festival is well known for its colorful powders thrown during springtime celebrations in India?',
        questionMy:
            'အိန္ဒိယနိုင်ငံ၏ နွေဦးရာသီပွဲတော်များတွင် အရောင်စုံအမှုန့်များ ပက်ဖျန်းလေ့ရှိသော ကျော်ကြားသည့်ပွဲတော်မှာ အဘယ်နည်း။',
        optionsEn: ['Holi', 'Diwali', 'Songkran', 'Thanksgiving'],
        optionsMy: [
          'ဟိုလီပွဲတော်',
          'ဒီဝါလီပွဲတော်',
          'ဆွန်ကရန်ပွဲတော်',
          'သင့်စ်ဂစ်ဗင်းပွဲတော်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which sport is played at the FIFA World Cup, one of the most watched sporting events in the world?',
        questionMy:
            'ကမ္ဘာ့တွင် အကြည့်အရှုအများဆုံး အားကစားပွဲတော်များထဲမှ တစ်ခုဖြစ်သော ဖီဖာ ကမ္ဘာ့ဖလားတွင် မည်သည့်အားကစားကို ကစားကြသနည်း။',
        optionsEn: ['Football (soccer)', 'Basketball', 'Tennis', 'Golf'],
        optionsMy: ['ဘောလုံး', 'ဘတ်စကက်ဘော', 'တင်းနစ်', 'ဂေါက်သီး'],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year5-generalknowledge-2',
    subject: 'generalknowledge',
    grade: Grade.year5,
    contentType: 'quiz',
    titleEn: 'Scientists and Innovators Who Changed the World',
    titleMy:
        'ကမ္ဘာကြီးကို ပြောင်းလဲစေသော သိပ္ပံပညာရှင်များနှင့် တီထွင်ရှင်များ',
    descriptionEn:
        'Learn about famous scientists and inventors and the discoveries and inventions that changed how people live.',
    descriptionMy:
        'နာမည်ကြီးသိပ္ပံပညာရှင်များနှင့် တီထွင်ရှင်များအကြောင်း၊ လူတို့၏ဘဝနေထိုင်မှုပုံစံကို ပြောင်းလဲစေခဲ့သော သူတို့၏ရှာဖွေတွေ့ရှိမှုများနှင့် တီထွင်မှုများအကြောင်းကို လေ့လာပါမည်။',
    starsReward: 18,
    questions: [
      QuizQuestion(
        questionEn:
            'Marie Curie is famous for her research into which important scientific area?',
        questionMy:
            'မာရီကျူရီသည် မည်သည့်အရေးကြီးသိပ္ပံနယ်ပယ်ကို သုတေသနပြုခြင်းဖြင့် နာမည်ကျော်ခဲ့သနည်း။',
        optionsEn: [
          'Radioactivity',
          'Ocean currents',
          'Volcanoes',
          'Dinosaur bones',
        ],
        optionsMy: [
          'ရေဒီယိုသတ္တိကြွမှု',
          'သမုဒ္ဒရာလှိုင်းရေစီးကြောင်းများ',
          'မီးတောင်များ',
          'ဒိုင်နိုဆောရ်ရိုးထုပ်များ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Thomas Edison\'s invention of the practical electric lightbulb was important mainly because it',
        questionMy:
            'သောမတ်စ်အက်ဒီဆင်၏ လက်တွေ့သုံးနိုင်သော လျှပ်စစ်မီးလုံးတီထွင်မှုသည် အဘယ်ကြောင့်အရေးကြီးခဲ့သနည်း။',
        optionsEn: [
          'gave people a safe, long-lasting way to light their homes at night',
          'helped ships sail faster across the ocean',
          'allowed farmers to grow crops without soil',
          'made telephones work without wires',
        ],
        optionsMy: [
          'လူများအား ညအချိန်တွင် အိမ်များကို ဘေးကင်းပြီး ကြာရှည်စွာ အလင်းရောင်ရရှိစေသောကြောင့်',
          'သင်္ဘောများကို ပင်လယ်ပြင်တွင် ပိုမြန်စွာ သွားလာနိုင်စေသောကြောင့်',
          'လယ်သမားများအား မြေဩဇာမလိုဘဲ သီးနှံစိုက်ပျိုးနိုင်စေသောကြောင့်',
          'ဖုန်းများကို ကြိုးမလိုဘဲ အလုပ်လုပ်စေသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What major achievement are the Wright brothers best known for?',
        questionMy:
            'ရိုက်ညီအစ်ကိုများသည် မည်သည့်အရေးကြီးအောင်မြင်မှုဖြင့် အသိအမှတ်အများဆုံးရရှိခဲ့သနည်း။',
        optionsEn: [
          'Building and flying the first successful powered airplane',
          'Discovering electricity',
          'Inventing the first computer',
          'Building the first railway train',
        ],
        optionsMy: [
          'ပထမဆုံးအောင်မြင်သော အင်ဂျင်တပ်လေယာဉ်ကို တည်ဆောက်၍ ပျံသန်းနိုင်ခဲ့ခြင်း',
          'လျှပ်စစ်ဓာတ်အားကို ရှာဖွေတွေ့ရှိခဲ့ခြင်း',
          'ပထမဆုံးကွန်ပျူတာကို တီထွင်ခဲ့ခြင်း',
          'ပထမဆုံးရထားလမ်းကို တည်ဆောက်ခဲ့ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why was the Wright brothers\' powered flight in 1903 such an important moment in history?',
        questionMy:
            '၁၉၀၃ ခုနှစ်တွင် ရိုက်ညီအစ်ကိုများ၏ အင်ဂျင်တပ်လေယာဉ်ပျံသန်းမှုသည် သမိုင်းတွင် အဘယ်ကြောင့် အလွန်အရေးကြီးသော အခိုက်အတန့်တစ်ခုဖြစ်ခဲ့သနည်း။',
        optionsEn: [
          'It proved that controlled, powered flight was possible and opened the way for modern air travel',
          'It ended the use of ships for travel completely',
          'It was the first time humans used fire',
          'It led to the invention of the wheel',
        ],
        optionsMy: [
          'ထိန်းချုပ်နိုင်သော အင်ဂျင်တပ်လေယာဉ်ပျံသန်းမှု ဖြစ်နိုင်ကြောင်းသက်သေပြပြီး ခေတ်မီလေကြောင်းခရီးစဉ်များအတွက် လမ်းဖွင့်ပေးခဲ့သောကြောင့်',
          'သင်္ဘောဖြင့်ခရီးသွားခြင်းကို လုံးဝရပ်တန့်သွားစေခဲ့သောကြောင့်',
          'လူသားများ မီးကို ပထမဆုံးအသုံးပြုခဲ့သည့်အချိန်ဖြစ်သောကြောင့်',
          'လှည်းဘီးတီထွင်မှုကို ဖြစ်ပေါ်စေခဲ့သောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why is Marie Curie\'s discovery about radioactivity considered so important for science?',
        questionMy:
            'မာရီကျူရီ၏ ရေဒီယိုသတ္တိကြွမှုဆိုင်ရာ ရှာဖွေတွေ့ရှိချက်ကို သိပ္ပံပညာအတွက် အဘယ်ကြောင့် အလွန်အရေးကြီးသည်ဟု ယူဆကြသနည်း။',
        optionsEn: [
          'It helped later scientists develop new ways to study and treat diseases like cancer',
          'It helped sailors find new ocean routes',
          'It made growing rice faster',
          'It helped build taller buildings',
        ],
        optionsMy: [
          'နောက်ပိုင်းသိပ္ပံပညာရှင်များအား ကင်ဆာကဲ့သို့သောရောဂါများကို လေ့လာရန်နှင့် ကုသရန် နည်းလမ်းသစ်များ ဖော်ထုတ်နိုင်ရန် ကူညီပေးခဲ့သောကြောင့်',
          'သင်္ဘောသားများအား သမုဒ္ဒရာလမ်းကြောင်းအသစ်များ ရှာဖွေတွေ့ရှိနိုင်ရန် ကူညီပေးခဲ့သောကြောင့်',
          'ဆန်စိုက်ပျိုးမှုကို ပိုမြန်စေခဲ့သောကြောင့်',
          'အဆောက်အအုံများ ပိုမိုမြင့်မားစွာ တည်ဆောက်နိုင်ရန် ကူညီပေးခဲ့သောကြောင့်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  PrimaryActivityDef(
    id: 'mock-year6-generalknowledge-2',
    subject: 'generalknowledge',
    grade: Grade.year6,
    contentType: 'quiz',
    titleEn: 'Understanding Economics: Money, Markets, and Trade',
    titleMy: 'စီးပွားရေးနားလည်ခြင်း - ငွေကြေး၊ စျေးကွက်နှင့် ကုန်သွယ်မှု',
    descriptionEn:
        'Learn about supply and demand, the difference between needs and wants, and how scarcity affects prices in everyday markets.',
    descriptionMy:
        'ပေးသွင်းမှုနှင့် ဝယ်လိုအား၊ လိုအပ်ချက်နှင့် လိုချင်စိတ်တို့၏ ကွာခြားချက်၊ ရှားပါးမှုက ဈေးနှုန်းကို မည်သို့ ထိခိုက်စေသည်ကို နေ့စဉ်စျေးကွက်များတွင် လေ့လာပါ။',
    starsReward: 20,
    questions: [
      QuizQuestion(
        questionEn:
            'Which of the following is an example of a \'need\' rather than a \'want\'?',
        questionMy:
            'အောက်ပါများထဲမှ \'လိုချင်စိတ် (want)\' မဟုတ်ဘဲ \'လိုအပ်ချက် (need)\' ဖြစ်သည့် ဥပမာမှာ အဘယ်နည်း။',
        optionsEn: [
          'Rice for daily meals',
          'A new toy car',
          'A video game console',
          'Fancy sneakers',
        ],
        optionsMy: [
          'နေ့စဉ်စားသောက်ရန် ထမင်း (ဆန်)',
          'ကားကစားစရာ အရုပ်အသစ်',
          'ဗီဒီယိုဂိမ်းစက်',
          'ဖက်ရှင်ဖိနပ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a market, what usually happens to the price of a product when demand increases but supply stays the same?',
        questionMy:
            'စျေးကွက်တွင် ပေးသွင်းမှု တူညီစွာရှိနေစဉ် ဝယ်လိုအား တိုးလာလျှင် ကုန်ပစ္စည်းတစ်ခု၏ ဈေးနှုန်းသည် များသောအားဖြင့် မည်သို့ဖြစ်လာမည်နည်း။',
        optionsEn: [
          'The price rises',
          'The price falls',
          'The price stays exactly the same',
          'The product disappears from shelves permanently',
        ],
        optionsMy: [
          'ဈေးနှုန်း မြင့်တက်လာလိမ့်မည်',
          'ဈေးနှုန်း ကျဆင်းလိမ့်မည်',
          'ဈေးနှုန်း လုံးဝ မပြောင်းလဲဘဲ ရှိနေလိမ့်မည်',
          'ကုန်ပစ္စည်းသည် စျေးကွက်မှ ထာဝစဉ် ပျောက်ကွယ်သွားလိမ့်မည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A drought damages much of the rice harvest, making rice scarce. What is the most likely effect on the price of rice?',
        questionMy:
            'မိုးခေါင်မှုကြောင့် ဆန်စပါးအထွက်နှုန်း များစွာပျက်စီးသွား၍ ဆန်ရှားပါးလာသည်။ ဆန်၏ဈေးနှုန်းအပေါ် အများဆုံး ဖြစ်လာနိုင်သည့် အကျိုးသက်ရောက်မှုမှာ အဘယ်နည်း။',
        optionsEn: [
          'The price of rice will likely rise',
          'The price of rice will likely fall',
          'The price of rice will not change at all',
          'Rice will become free',
        ],
        optionsMy: [
          'ဆန်ဈေးနှုန်း မြင့်တက်နိုင်ဖွယ်ရှိသည်',
          'ဆန်ဈေးနှုန်း ကျဆင်းနိုင်ဖွယ်ရှိသည်',
          'ဆန်ဈေးနှုန်း လုံးဝ မပြောင်းလဲပါ',
          'ဆန်ကို အခမဲ့ ရရှိလာမည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Farmers have an unusually large harvest of vegetables this year, so there are far more vegetables for sale than usual. What is most likely to happen to vegetable prices?',
        questionMy:
            'ဤနှစ်တွင် တောင်သူများသည် ပုံမှန်ထက် အထွက်နှုန်းများစွာ ရရှိကြသဖြင့် စျေးကွက်တွင် ရောင်းရန် ဟင်းသီးဟင်းရွက်များ ပုံမှန်ထက် များစွာ ပိုမိုရရှိလာသည်။ ဟင်းသီးဟင်းရွက်ဈေးနှုန်းများအပေါ် အများဆုံး ဖြစ်လာနိုင်သည့်အရာမှာ အဘယ်နည်း။',
        optionsEn: [
          'Prices will likely fall',
          'Prices will likely rise sharply',
          'Prices will stay exactly the same',
          'Vegetables will disappear from the market',
        ],
        optionsMy: [
          'ဈေးနှုန်းများ ကျဆင်းနိုင်ဖွယ်ရှိသည်',
          'ဈေးနှုန်းများ သိသိသာသာ မြင့်တက်နိုင်ဖွယ်ရှိသည်',
          'ဈေးနှုန်းများ လုံးဝ မပြောင်းလဲပါ',
          'ဟင်းသီးဟင်းရွက်များ စျေးကွက်မှ ပျောက်ကွယ်သွားလိမ့်မည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is \'trade\'?',
        questionMy: '\'ကုန်သွယ်မှု (trade)\' ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Exchanging goods or services with others to get what you need',
          'Throwing away things you do not want',
          'Keeping all your money in a piggy bank',
          'Growing food only for yourself',
        ],
        optionsMy: [
          'မိမိလိုအပ်သောအရာများ ရရှိစေရန် အခြားသူများနှင့် ကုန်ပစ္စည်း သို့မဟုတ် ဝန်ဆောင်မှုများ လဲလှယ်ခြင်း',
          'မလိုချင်သောအရာများကို စွန့်ပစ်ခြင်း',
          'ငွေအားလုံးကို ဝက်အိုးထဲတွင် သိမ်းထားခြင်း',
          'မိမိကိုယ်တိုင်စားရန်အတွက်သာ အစားအစာ စိုက်ပျိုးခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // Content-parity expansion (Year 1-4 General Knowledge/Science/Geography/
  // History toward Year 5/6's depth): generated via a workflow of 16
  // parallel (grade, subject) generation agents piped into 16 independent
  // adversarial fact-checkers, each explicitly instructed to default to
  // rejecting anything not fully confident is correct -- especially
  // Myanmar-specific claims. 25 of 44 requested modules passed verification
  // and are below; 19 did not make it in this pass (16 failed fact/
  // translation/age-appropriateness review -- several real catches, e.g. a
  // Myanmar monk-robe-color error, an internal contradiction in a Myanmar
  // flag question, and multiple Burmese mistranslations; 3 more --
  // Year 3 History -- never got generated at all because the workflow hit
  // a session usage limit mid-run). Year 1/2 History, Year 3 History, and
  // Year 4 History/Geography are the modules still short of the 5-module
  // target and are the natural next batch once re-run.
  PrimaryActivityDef(
    id: 'mock-year1-generalknowledge-3',
    subject: 'generalknowledge',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Community Helpers',
    titleMy: 'အသိုင်းအဝိုင်းကို ကူညီသူများ',
    descriptionEn: 'Meet the helpful people in our community and learn what they do for us.',
    descriptionMy: 'ကျွန်ုပ်တို့အသိုင်းအဝိုင်းရှိ ကူညီပေးသူများကို လေ့လာပြီး သူတို့လုပ်ဆောင်ပေးသည့်အလုပ်များကို သိရှိပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Who helps us when we are sick or hurt?',
        questionMy: 'ကျွန်ုပ်တို့ ဖျားနာ (သို့) ထိခိုက်ဒဏ်ရာရသောအခါ မည်သူက ကူညီပေးပါသနည်း။',
        optionsEn: ['A farmer', 'A doctor', 'A pilot', 'A singer'],
        optionsMy: ['လယ်သမား', 'ဆရာဝန်', 'လေယာဉ်မှူး', 'သီချင်းဆိုသူ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Who helps put out fires to keep us safe?',
        questionMy: 'မီးဘေးမှ ကျွန်ုပ်တို့ကို လုံခြုံအောင် မီးငြိမ်းသတ်ပေးသူကို မည်သူဟုခေါ်သနည်း။',
        optionsEn: ['A baker', 'A dentist', 'A firefighter', 'A librarian'],
        optionsMy: ['ပေါင်မုန့်ဖုတ်သမား', 'သွားဆရာဝန်', 'မီးသတ်သမား', 'စာကြည့်တိုက်မှူး'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Who teaches us to read and write at school?',
        questionMy: 'ကျောင်းတွင် ကျွန်ုပ်တို့ကို စာဖတ်ခြင်းနှင့် စာရေးခြင်း သင်ပေးသူကို မည်သူဟုခေါ်သနည်း။',
        optionsEn: ['A teacher', 'A driver', 'A tailor', 'A fisherman'],
        optionsMy: ['ဆရာ/ဆရာမ', 'ယာဉ်မောင်း', 'အထည်ချုပ်သမား', 'တံငါသည်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Who grows the rice and vegetables we eat?',
        questionMy: 'ကျွန်ုပ်တို့စားသုံးသည့် ဆန်နှင့်ဟင်းသီးဟင်းရွက်များကို မည်သူက စိုက်ပျိုးပေးသနည်း။',
        optionsEn: ['A police officer', 'A nurse', 'A painter', 'A farmer'],
        optionsMy: ['ရဲအရာရှိ', 'သူနာပြု', 'ပန်းချီဆရာ', 'လယ်သမား'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Who keeps our streets safe and helps if we are lost?',
        questionMy: 'လမ်းများကို လုံခြုံအောင် စောင့်ရှောက်ပြီး ကျွန်ုပ်တို့ လမ်းပျောက်လျှင် ကူညီပေးသူကို မည်သူဟုခေါ်သနည်း။',
        optionsEn: ['A police officer', 'A chef', 'A gardener', 'A postman'],
        optionsMy: ['ရဲအရာရှိ', 'စားဖိုမှူး', 'ဥယျာဉ်မှူး', 'စာပို့ဆရာ'],
        correctIndex: 0,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year1-generalknowledge-4',
    subject: 'generalknowledge',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Animals and Their Babies',
    titleMy: 'တိရစ္ဆာန်များနှင့် သူတို့၏ကလေးများ',
    descriptionEn: 'Learn the special names for baby animals and match them to their parents.',
    descriptionMy: 'တိရစ္ဆာန်ကလေးများ၏ အထူးအမည်များကို လေ့လာပြီး သူတို့၏မိဘများနှင့် တွဲကြည့်ပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'What do we call a baby dog?',
        questionMy: 'ခွေးကလေးကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A kitten', 'A puppy', 'A cub', 'A chick'],
        optionsMy: ['ကြောင်ကလေး', 'ခွေးကလေး', 'သားရဲကလေး', 'ကြက်ကလေး'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What do we call a baby cat?',
        questionMy: 'ကြောင်ကလေးကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A puppy', 'A calf', 'A kitten', 'A duckling'],
        optionsMy: ['ခွေးကလေး', 'နွားကလေး', 'ကြောင်ကလေး', 'ဘဲကလေး'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What do we call a baby cow?',
        questionMy: 'နွားကလေးကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A calf', 'A foal', 'A lamb', 'A piglet'],
        optionsMy: ['နွားကလေး', 'မြင်းကလေး', 'သိုးကလေး', 'ဝက်ကလေး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What do we call a baby chicken?',
        questionMy: 'ကြက်ကလေးကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A duckling', 'A gosling', 'A kitten', 'A chick'],
        optionsMy: ['ဘဲကလေး', 'ငန်းကလေး', 'ကြောင်ကလေး', 'ကြက်ကလေး'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What do we call a baby frog?',
        questionMy: 'ဖားကလေးကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A tadpole', 'A cub', 'A calf', 'A puppy'],
        optionsMy: ['ခေါင်းကြီးကောင်', 'သားရဲကလေး', 'နွားကလေး', 'ခွေးကလေး'],
        correctIndex: 0,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year1-history-3',
    subject: 'history',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Myanmar\'s Famous Places',
    titleMy: 'မြန်မာနိုင်ငံ၏ ကျော်ကြားသောနေရာများ',
    descriptionEn: 'Discover Myanmar\'s famous pagodas, lakes, and cities from long ago.',
    descriptionMy: 'ရှေးကတည်းက ကျော်ကြားသော မြန်မာ့ ဘုရားများ၊ အင်းလေများနှင့် မြို့များကို လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Which famous golden pagoda is in Yangon?',
        questionMy: 'ရန်ကုန်မြို့ရှိ ကျော်ကြားသော ရွှေဘုရားကြီးက ဘယ်ဘုရားလဲ။',
        optionsEn: ['Shwedagon Pagoda', 'Eiffel Tower', 'Great Wall of China', 'Statue of Liberty'],
        optionsMy: ['ရွှေတိဂုံဘုရား', 'အိုင်ဖယ်တာဝါ', 'တရုတ်မြန်ကတုတ်တံတိုင်းကြီး', 'လွတ်လပ်ရေးဆောင်းရုပ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the capital city of Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံ၏ မြို့တော်က ဘယ်မြို့လဲ။',
        optionsEn: ['Yangon', 'Mandalay', 'Bagan', 'Naypyidaw'],
        optionsMy: ['ရန်ကုန်', 'မန္တလေး', 'ပုဂံ', 'နေပြည်တော်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Which Myanmar city has thousands of old temples?',
        questionMy: 'ရှေးဟောင်းဘုရားပုထိုးများ ထောင်ချီရှိသော မြန်မာမြို့က ဘယ်မြို့လဲ။',
        optionsEn: ['Mandalay', 'Bagan', 'Yangon', 'Naypyidaw'],
        optionsMy: ['မန္တလေး', 'ပုဂံ', 'ရန်ကုန်', 'နေပြည်တော်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What is Inle Lake famous for?',
        questionMy: 'အင်းလေးကန်ကို ဘာကြောင့် ကျော်ကြားသနည်း။',
        optionsEn: ['A tall mountain', 'A big desert', 'A beautiful lake', 'A deep ocean'],
        optionsMy: ['မြင့်မားသောတောင်', 'ကျယ်ပြန့်သောသဲကန္တာရ', 'လှပသောကန်', 'နက်ရှိုင်းသောသမုဒ္ဒရာ'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Shwedagon Pagoda is covered in what?',
        questionMy: 'ရွှေတိဂုံဘုရားကို ဘာနှင့် မွမ်းမံထားသနည်း။',
        optionsEn: ['Wood', 'Gold', 'Silver', 'Glass'],
        optionsMy: ['သစ်သား', 'ရွှေ', 'ငွေ', 'ဖန်'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year1-history-5',
    subject: 'history',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Family Stories from Long Ago',
    titleMy: 'ရှေးအခါက မိသားစုပုံပြင်များ',
    descriptionEn: 'Learn how grandparents and old photos help us know our family\'s past.',
    descriptionMy: 'အဘိုးအဘွားများနှင့် ဓာတ်ပုံဟောင်းများက ငါတို့မိသားစု၏ အတိတ်ကို မည်သို့သိစေသည်ကို လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Who can tell us stories about our family\'s past?',
        questionMy: 'ငါတို့မိသားစု၏ အတိတ်အကြောင်းကို ပုံပြင်ပြောပြနိုင်သူက ဘယ်သူလဲ။',
        optionsEn: ['Grandparents', 'Babies', 'Pets', 'Strangers'],
        optionsMy: ['အဘိုးအဘွားများ', 'ကလေးငယ်များ', 'အိမ်မွေးတိရစ္ဆာန်များ', 'မသိကျွမ်းသူများ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What can help us see how people looked long ago?',
        questionMy: 'ရှေးအခါက လူတွေဘယ်လိုပုံပန်းသဏ္ဌာန်ရှိသည်ကို မြင်စေနိုင်သည့်အရာက ဘာလဲ။',
        optionsEn: ['New books', 'Old photographs', 'Video games', 'Fresh flowers'],
        optionsMy: ['စာအုပ်အသစ်များ', 'ဓာတ်ပုံဟောင်းများ', 'ဗီဒီယိုဂိမ်းများ', 'ပန်းစိုက်ပင်များ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What can we learn by listening to stories from our family?',
        questionMy: 'ငါတို့မိသားစု၏ ပုံပြင်များကို နားထောင်ခြင်းဖြင့် ဘာကို သင်ယူနိုင်သနည်း။',
        optionsEn: ['How to swim', 'How to cook rice', 'About our family\'s past', 'About the weather'],
        optionsMy: ['ရေကူးနည်း', 'ထမင်းချက်နည်း', 'ငါတို့မိသားစု၏ အတိတ်အကြောင်း', 'ရာသီဥတုအကြောင်း'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What do we call special old things kept by a family for many years?',
        questionMy: 'မိသားစုတစ်စုက နှစ်ပေါင်းများစွာ ထိန်းသိမ်းထားသော အထူးအရာဟောင်းများကို ဘာခေါ်သနည်း။',
        optionsEn: ['New toys', 'Fresh food', 'Empty boxes', 'Family treasures'],
        optionsMy: ['အရုပ်အသစ်များ', 'အစားအစာလတ်ဆတ်', 'ပုံးအလွတ်များ', 'မိသားစုအမွေအနှစ်များ'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Why is it important to know about our family\'s past?',
        questionMy: 'ငါတို့မိသားစု၏ အတိတ်အကြောင်းကို သိရှိခြင်းက ဘာကြောင့် အရေးကြီးသနည်း။',
        optionsEn: ['It helps us know our family history', 'It helps us fly airplanes', 'It helps us play football', 'It helps us swim faster'],
        optionsMy: ['ငါတို့မိသားစုရဲ့ သမိုင်းကြောင်းကို သိစေသောကြောင့်', 'လေယာဉ်ပျံမောင်းရန် ကူညီသောကြောင့်', 'ဘောလုံးကစားရန် ကူညီသောကြောင့်', 'ရေအမြန်ကူးရန် ကူညီသောကြောင့်'],
        correctIndex: 0,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year1-science-4',
    subject: 'science',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Animals Around Us',
    titleMy: 'ကျွန်ုပ်တို့ပတ်ဝန်းကျင်ရှိ တိရစ္ဆာန်များ',
    descriptionEn: 'Discover different animals, where they live, and how they move.',
    descriptionMy: 'တိရစ္ဆာန်အမျိုးမျိုး၊ သူတို့နေထိုင်ရာနေရာများနှင့် ရွေ့လျားပုံများကို စူးစမ်းလေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Which animal lives in water and has fins to help it swim?',
        questionMy: 'ရေထဲတွင်နေထိုင်ပြီး ရေကူးရန် အယက်ချောင်း(fins)ရှိသော တိရစ္ဆာန်မှာ အဘယ်နည်း။',
        optionsEn: ['A dog', 'A cat', 'A fish', 'A bird'],
        optionsMy: ['ခွေး', 'ကြောင်', 'ငါး', 'ငှက်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which animal can fly using its wings?',
        questionMy: 'အတောင်ပံများကို အသုံးပြု၍ ပျံနိုင်သောတိရစ္ဆာန်မှာ အဘယ်နည်း။',
        optionsEn: ['A cow', 'A bird', 'A fish', 'A snake'],
        optionsMy: ['နွား', 'ငှက်', 'ငါး', 'မြွေ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What do we call a baby dog?',
        questionMy: 'ခွေးကလေးကို အဘယ်သို့ခေါ်သနည်း။',
        optionsEn: ['A kitten', 'A calf', 'A chick', 'A puppy'],
        optionsMy: ['ကြောင်ငယ်', 'နွားငယ်', 'ကြက်ကလေး', 'ခွေးကလေး (puppy)'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Where does a farmer usually keep cows and chickens?',
        questionMy: 'တောင်သူတစ်ဦးသည် နွားနှင့်ကြက်များကို များသောအားဖြင့် မည်သည့်နေရာတွင် ထားရှိသနည်း။',
        optionsEn: ['In the sea', 'In the sky', 'On a farm', 'In a cave'],
        optionsMy: ['ပင်လယ်ထဲတွင်', 'ကောင်းကင်ပေါ်တွင်', 'တောင်ယာ/စက်ခြံတွင် (farm)', 'ဂူထဲတွင်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a wild animal that lives in the forest?',
        questionMy: 'တောထဲတွင်နေထိုင်သော တောရိုင်းတိရစ္ဆာန်မှာ အဘယ်နည်း။',
        optionsEn: ['A cat', 'An elephant', 'A dog', 'A cow'],
        optionsMy: ['ကြောင်', 'ဆင်', 'ခွေး', 'နွား'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year1-science-5',
    subject: 'science',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Light and Shadows',
    titleMy: 'အလင်းရောင်နှင့် အရိပ်များ',
    descriptionEn: 'Learn about things that give light and how shadows are formed.',
    descriptionMy: 'အလင်းရောင်ပေးသောအရာများနှင့် အရိပ်ဖြစ်ပေါ်ပုံကို လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Which of these gives us light in the daytime?',
        questionMy: 'နေ့အချိန်တွင် ကျွန်ုပ်တို့ကို အလင်းရောင်ပေးသောအရာမှာ အဘယ်နည်း။',
        optionsEn: ['The moon', 'A candle', 'The sun', 'A star'],
        optionsMy: ['လ', 'ဖယောင်းတိုင်', 'နေ (sun)', 'ကြယ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What do we call the dark shape made when light is blocked by an object?',
        questionMy: 'အရာဝတ္ထုတစ်ခုက အလင်းရောင်ကို ပိတ်ဆို့ခြင်းကြောင့် ဖြစ်ပေါ်လာသော မှောင်ရာပုံသဏ္ဌာန်ကို အဘယ်သို့ခေါ်သနည်း။',
        optionsEn: ['A rainbow', 'A shadow', 'A cloud', 'A reflection'],
        optionsMy: ['သက်တံ့', 'အရိပ် (shadow)', 'မိုးတိမ်', 'ရောင်ပြန်ဟပ်မှု'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'At what time of day do we usually see the moon and stars?',
        questionMy: 'လနှင့်ကြယ်များကို များသောအားဖြင့် ဘယ်အချိန်တွင် တွေ့ရလေ့ရှိသနည်း။',
        optionsEn: ['In the morning', 'At noon', 'At night', 'At lunchtime'],
        optionsMy: ['မနက်ခင်း', 'မွန်းတည့်ချိန်', 'ညအချိန် (night)', 'နေ့လယ်စာစားချိန်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which of these makes its own light in a dark room?',
        questionMy: 'မှောင်နေသောအခန်းထဲတွင် မိမိကိုယ်ပိုင်အလင်းရောင်ကို ဖန်တီးပေးနိုင်သောအရာမှာ အဘယ်နည်း။',
        optionsEn: ['A mirror', 'A torch (flashlight)', 'A book', 'A window'],
        optionsMy: ['မှန်', 'လက်နှိပ်ဓာတ်မီး (torch)', 'စာအုပ်', 'ပြတင်းပေါက်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What do we need to make a shadow?',
        questionMy: 'အရိပ်တစ်ခု ဖြစ်ပေါ်ရန် ဘာလိုအပ်သနည်း။',
        optionsEn: ['Water and soap', 'Music and dance', 'Wind and rain', 'Light and an object'],
        optionsMy: ['ရေနှင့်ဆပ်ပြာ', 'တေးဂီတနှင့်အက', 'လေနှင့်မိုး', 'အလင်းရောင်နှင့် အရာဝတ္ထု (light and an object)'],
        correctIndex: 3,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year2-generalknowledge-3',
    subject: 'generalknowledge',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'My Body and Staying Healthy',
    titleMy: 'ကျွန်ုပ်၏ခန္ဓာကိုယ်နှင့် ကျန်းမာရေးစောင့်ရှောက်ခြင်း',
    descriptionEn: 'Learn about the parts of your body and simple habits that keep you healthy.',
    descriptionMy: 'ခန္ဓာကိုယ်အစိတ်အပိုင်းများနှင့် ကျန်းမာရေးကောင်းမွန်စေမည့် ရိုးရှင်းသောအလေ့အထများကို လေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'Which body part do you use to see things around you?',
        questionMy: 'သင့်ပတ်ဝန်းကျင်ရှိအရာများကို မြင်ရန် ခန္ဓာကိုယ်ဘယ်အစိတ်အပိုင်းကို အသုံးပြုပါသနည်း။',
        optionsEn: ['Eyes', 'Ears', 'Nose', 'Mouth'],
        optionsMy: ['မျက်လုံး', 'နားရွက်', 'နှာခေါင်း', 'ပါးစပ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What should you do before eating food?',
        questionMy: 'အစားအစာမစားခင် သင်ဘာလုပ်သင့်သနည်း။',
        optionsEn: ['Watch TV', 'Wash your hands', 'Go outside', 'Take a nap'],
        optionsMy: ['တီဗီကြည့်ရန်', 'လက်ဆေးရန်', 'အပြင်ထွက်ရန်', 'အိပ်ရန်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What helps your body grow strong and healthy?',
        questionMy: 'ခန္ဓာကိုယ်ကို သန်မာကျန်းမာစွာ ကြီးထွားစေရန် အထောက်အကူပြုသည်မှာ အဘယ်နည်း။',
        optionsEn: ['Eating candy all day', 'Skipping meals', 'Eating healthy food like fruits and vegetables', 'Staying up very late every night'],
        optionsMy: ['တစ်နေ့လုံး သကြားလုံးများသာစားခြင်း', 'အစားအစာကျော်၍ မစားခြင်း', 'သစ်သီးဝလံနှင့် ဟင်းသီးဟင်းရွက်များကဲ့သို့ ကျန်းမာရေးနှင့်ညီညွတ်သော အစားအစာစားခြင်း', 'နေ့တိုင်းညနက်အထိ မအိပ်ဘဲနေခြင်း'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which part of your body pumps blood to keep you alive?',
        questionMy: 'အသက်ရှင်နေစေရန် သွေးများကို စုပ်ထုတ်ပေးသော ခန္ဓာကိုယ်အစိတ်အပိုင်းမှာ အဘယ်နည်း။',
        optionsEn: ['The elbow', 'The hair', 'The toenail', 'The heart'],
        optionsMy: ['တံတောင်ဆစ်', 'ဆံပင်', 'ခြေသည်းလက်သည်း', 'နှလုံး'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What should you do when you feel sick?',
        questionMy: 'နေမကောင်းဖြစ်တဲ့အခါ သင်ဘာလုပ်သင့်သနည်း။',
        optionsEn: ['Hide it from everyone', 'Tell a grown-up', 'Keep playing outside', 'Eat more sweets'],
        optionsMy: ['အားလုံးထံမှ ဖျောက်ထားရန်', 'လူကြီးတစ်ဦးဦးကို ပြောပြရန်', 'အပြင်တွင် ဆက်ကစားနေရန်', 'သကြားလုံး ပိုမိုစားရန်'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year2-generalknowledge-4',
    subject: 'generalknowledge',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Weather, Seasons, and the Sky',
    titleMy: 'ရာသီဥတု၊ ရာသီများနှင့် ကောင်းကင်',
    descriptionEn: 'Discover why the weather changes and what happens in the sky above us.',
    descriptionMy: 'ရာသီဥတု အဘယ်ကြောင့် ပြောင်းလဲသည်ကို၊ ကျွန်ုပ်တို့အထက် ကောင်းကင်တွင် ဖြစ်ပျက်နေသည်များကို ရှာဖွေလေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What falls from clouds during a rainstorm?',
        questionMy: 'မိုးသက်မုန်တိုင်းအတွင်း တိမ်တိုက်များမှ အဘယ်အရာကျလာသနည်း။',
        optionsEn: ['Rain', 'Sand', 'Leaves', 'Rocks'],
        optionsMy: ['မိုး', 'သဲ', 'အရွက်', 'ကျောက်ခဲ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Myanmar has a hot season, a rainy season, and one more — what is it?',
        questionMy: 'မြန်မာနိုင်ငံတွင် နွေရာသီ၊ မိုးရာသီနှင့် နောက်ထပ် တစ်ရာသီ ရှိပါသည် — ၎င်းမှာ အဘယ်နည်း။',
        optionsEn: ['The snowy season', 'The cold season', 'The windy season only', 'The dark season'],
        optionsMy: ['နှင်းကျရာသီ', 'ဆောင်းရာသီ', 'လေတိုက်ရာသီသာ', 'မှောင်ရာသီ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What do we call the big bright light in the sky during the day?',
        questionMy: 'နေ့အချိန်တွင် ကောင်းကင်ပေါ်ရှိ တောက်ပသောအလင်းကြီးကို အဘယ်ဟုခေါ်သနည်း။',
        optionsEn: ['The moon', 'A star', 'The sun', 'A cloud'],
        optionsMy: ['လ', 'ကြယ်', 'နေ', 'တိမ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What do you see in the sky at night that twinkles?',
        questionMy: 'ညအချိန် ကောင်းကင်ပေါ်တွင် တောက်ပတောက်ပ တောက်နေသောအရာကို သင်မြင်ရသနည်း။',
        optionsEn: ['Cars', 'Stars', 'Bicycles', 'Umbrellas'],
        optionsMy: ['ကားများ', 'ကြယ်များ', 'စက်ဘီးများ', 'ထီးများ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What should you wear or carry when it is raining outside?',
        questionMy: 'အပြင်တွင် မိုးရွာနေချိန် သင်ဝတ်ဆင် သို့မဟုတ် ယူဆောင်သင့်သည်မှာ အဘယ်နည်း။',
        optionsEn: ['A swimsuit', 'Sunglasses', 'Ice skates', 'An umbrella or raincoat'],
        optionsMy: ['ရေကူးဝတ်စုံ', 'နေကာမျက်မှန်', 'ရေခဲပေါ်လျှောကားများ', 'ထီး သို့မဟုတ် မိုးကာအင်္ကျီ'],
        correctIndex: 3,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year2-generalknowledge-5',
    subject: 'generalknowledge',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Myanmar\'s Special Places and Symbols',
    titleMy: 'မြန်မာနိုင်ငံ၏ထူးခြားသောနေရာများနှင့် သင်္ကေတများ',
    descriptionEn: 'Meet the famous places, flag, and symbols that make Myanmar special.',
    descriptionMy: 'မြန်မာနိုင်ငံကို ထူးခြားစေသော နာမည်ကြီးနေရာများ၊ အလံနှင့် သင်္ကေတများကို လေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What is the capital city of Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံ၏ မြို့တော်မှာ အဘယ်မြို့နည်း။',
        optionsEn: ['Yangon', 'Naypyidaw', 'Mandalay', 'Bagan'],
        optionsMy: ['ရန်ကုန်', 'နေပြည်တော်', 'မန္တလေး', 'ပုဂံ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which famous golden pagoda is in Yangon?',
        questionMy: 'ရန်ကုန်မြို့ရှိ နာမည်ကြီး ရွှေစေတီကြီးမှာ အဘယ်နည်း။',
        optionsEn: ['Shwedagon Pagoda', 'Eiffel Tower', 'Great Wall', 'Taj Mahal'],
        optionsMy: ['ရွှေတိဂုံစေတီတော်', 'အိုင်ဖယ်လ်တာဝါ', 'တရုတ်မြို့ရိုးကြီး', 'တာဂျ်မဟာလ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Bagan is famous in Myanmar for having thousands of what?',
        questionMy: 'ပုဂံမြို့သည် မြန်မာနိုင်ငံတွင် အဘယ်အရာ ထောင်ချီရှိသဖြင့် နာမည်ကြီးသနည်း။',
        optionsEn: ['Tall skyscrapers', 'Snow mountains', 'Ancient temples and pagodas', 'Big ships'],
        optionsMy: ['မိုးမျှော်တိုက်များ', 'နှင်းတောင်များ', 'ရှေးဟောင်းဘုရားပုထိုးများ', 'သင်္ဘောကြီးများ'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What color is NOT on the flag of Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံ၏အလံတွင် မပါဝင်သောအရောင်မှာ အဘယ်နည်း။',
        optionsEn: ['Yellow', 'Green', 'Red', 'Blue'],
        optionsMy: ['ဝါရောင်', 'အစိမ်းရောင်', 'အနီရောင်', 'အပြာရောင်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What is the name of Myanmar\'s longest river, important for boats and farming?',
        questionMy: 'လှေများနှင့် လယ်ယာစိုက်ပျိုးရေးအတွက် အရေးကြီးသော မြန်မာနိုင်ငံ၏ အရှည်ဆုံးမြစ်ကြီးအမည်ကို ဖော်ပြပါ။',
        optionsEn: ['The Nile River', 'The Ayeyarwady River', 'The Amazon River', 'The Mississippi River'],
        optionsMy: ['နိုင်းမြစ်', 'ဧရာဝတီမြစ်', 'အမေဇုန်မြစ်', 'မစ္စစ္စပီမြစ်'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year2-geography-3',
    subject: 'geography',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Land and Water',
    titleMy: 'ကုန်းမြေနှင့် ရေ',
    descriptionEn: 'Discover mountains, rivers, oceans, and islands that make up our world.',
    descriptionMy: 'ကျွန်ုပ်တို့ ကမ္ဘာကို ဖွဲ့စည်းထားသည့် တောင်များ၊ မြစ်များ၊ သမုဒ္ဒရာများနှင့် ကျွန်းများကို စူးစမ်းလေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What do we call a very tall piece of land that rises high above the ground?',
        questionMy: 'မြေပြင်ထက် အလွန်မြင့်မားစွာ ထောင်တက်နေသော မြေအပိုင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A river', 'A mountain', 'A cloud', 'A road'],
        optionsMy: ['မြစ်', 'တောင်', 'တိမ်', 'လမ်း'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What is the biggest area of salty water called?',
        questionMy: 'အငန်ဆုံးရေဖြင့် ဖွဲ့စည်းထားသော အကျယ်ဆုံးနေရာကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A pond', 'A well', 'An ocean', 'A puddle'],
        optionsMy: ['ရေကန်', 'ရေတွင်း', 'သမုဒ္ဒရာ', 'ရေအိုင်ငယ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which famous river flows through Myanmar and is used by many boats to carry goods?',
        questionMy: 'မြန်မာနိုင်ငံကို ဖြတ်သန်းစီးဆင်းပြီး ကုန်ပစ္စည်းများ သယ်ဆောင်ရန် လှေများစွာ အသုံးပြုသော နာမည်ကြီးမြစ်ကား အဘယ်နည်း။',
        optionsEn: ['The Nile River', 'The Ayeyarwady River', 'The Amazon River', 'The Thames River'],
        optionsMy: ['နိုင်းမြစ်', 'ဧရာဝတီမြစ်', 'အမေဇုန်မြစ်', 'သိမ်းမြစ်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What do we call land that is completely surrounded by water on all sides?',
        questionMy: 'ဘက်လေးဘက်စလုံး ရေဖြင့် ဝန်းရံနေသော ကုန်းမြေကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A valley', 'A desert', 'A hill', 'An island'],
        optionsMy: ['ချိုင့်ဝှမ်း', 'သဲကန္တာရ', 'တောင်ကုန်း', 'ကျွန်း'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Which of these best describes a valley?',
        questionMy: 'အောက်ပါတို့အနက် \'ချိုင့်ဝှမ်း\' ကို အကောင်းဆုံးဖော်ပြသည့်အချက်မှာ အဘယ်နည်း။',
        optionsEn: ['Low land between hills or mountains', 'The top of a mountain', 'A large ocean', 'A sandy desert'],
        optionsMy: ['တောင်ကုန်း သို့မဟုတ် တောင်များကြားရှိ နိမ့်သောမြေ', 'တောင်ထိပ်', 'ကျယ်ပြန့်သော သမုဒ္ဒရာ', 'သဲများသော ကန္တာရ'],
        correctIndex: 0,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year2-geography-5',
    subject: 'geography',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Continents and Countries',
    titleMy: 'တိုက်ကြီးများနှင့် နိုင်ငံများ',
    descriptionEn: 'Meet the continents of the world and find out which continent Myanmar belongs to.',
    descriptionMy: 'ကမ္ဘာပေါ်ရှိ တိုက်ကြီးများကို သိကျွမ်းပြီး မြန်မာနိုင်ငံ ပါဝင်သည့်တိုက်ကို ရှာဖွေလေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What do we call a very large area of land made up of many countries?',
        questionMy: 'နိုင်ငံအများအပြား ပါဝင်သည့် အလွန်ကျယ်ဝန်းသော မြေဧရိယာကြီးကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A continent', 'A city', 'A village', 'A river'],
        optionsMy: ['တိုက်ကြီး', 'မြို့', 'ကျေးရွာ', 'မြစ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which continent is Myanmar located in?',
        questionMy: 'မြန်မာနိုင်ငံသည် မည်သည့်တိုက်ကြီးတွင် တည်ရှိသနည်း။',
        optionsEn: ['Africa', 'Asia', 'Europe', 'Australia'],
        optionsMy: ['အာဖရိကတိုက်', 'အာရှတိုက်', 'ဥရောပတိုက်', 'သြစတြေးလျတိုက်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What round model can we use to see the whole shape of the Earth?',
        questionMy: 'ကမ္ဘာမြေကြီး၏ ပုံသဏ္ဌာန်တစ်ခုလုံးကို ကြည့်ရှုနိုင်သော လုံးဝိုင်းပုံစံကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A globe', 'A map', 'A compass', 'A telescope'],
        optionsMy: ['ကမ္ဘာလုံးပုံစံ (globe)', 'မြေပုံ', 'အရပ်မျက်နှာညွှန်းကိရိယာ', 'အမှန်ပြကွင်း'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is the name of a country, not a continent?',
        questionMy: 'အောက်ပါတို့အနက် တိုက်ကြီးမဟုတ်ဘဲ နိုင်ငံတစ်ခု၏ နာမည်ဖြစ်သည်မှာ အဘယ်နည်း။',
        optionsEn: ['Asia', 'Africa', 'Myanmar', 'Europe'],
        optionsMy: ['အာရှတိုက်', 'အာဖရိကတိုက်', 'မြန်မာနိုင်ငံ', 'ဥရောပတိုက်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'How many continents are there in the world?',
        questionMy: 'ကမ္ဘာပေါ်တွင် တိုက်ကြီးမည်မျှရှိသနည်း။',
        optionsEn: ['Five', 'Six', 'Eight', 'Seven'],
        optionsMy: ['ငါးတိုက်', 'ခြောက်တိုက်', 'ရှစ်တိုက်', 'ခုနစ်တိုက်'],
        correctIndex: 3,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year2-history-4',
    subject: 'history',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Getting Around Long Ago',
    titleMy: 'ရှေးက သွားလာခဲ့ကြပုံများ',
    descriptionEn: 'Learn how people and goods traveled from place to place before cars and motorbikes were common.',
    descriptionMy: 'ကားနှင့် မော်တော်ဆိုင်ကယ်များ အသုံးမများခင် လူများနှင့် ပစ္စည်းများ တစ်နေရာမှ တစ်နေရာသို့ မည်သို့ သွားလာခဲ့ကြသည်ကို လေ့လာကြည့်ကြပါစို့။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'Long ago, before cars were invented, how did people often travel on roads?',
        questionMy: 'ကားများ တီထွင်မလုပ်မီ ရှေးက လူများသည် လမ်းများပေါ်တွင် မကြာခဏ မည်သို့ သွားလာခဲ့ကြသနည်း။',
        optionsEn: ['By airplane', 'On foot, or riding animals like horses', 'By electric train', 'By motorbike'],
        optionsMy: ['လေယာဉ်ဖြင့်', 'ခြေလျင် သို့မဟုတ် မြင်းကဲ့သို့သော တိရစ္ဆာန်များကို စီးနင်း၍', 'လျှပ်စစ်ရထားဖြင့်', 'မော်တော်ဆိုင်ကယ်ဖြင့်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'In Myanmar, which large river has been used for centuries by boats to carry people and goods?',
        questionMy: 'မြန်မာနိုင်ငံတွင် လူများနှင့် ပစ္စည်းများကို သယ်ဆောင်ရန် ရှေးကာလများစွာကတည်းက လှေများဖြင့် အသုံးပြုခဲ့ကြသော မြစ်ကြီးမှာ မည်သည်နည်း။',
        optionsEn: ['The Nile River', 'The Amazon River', 'The Ayeyarwady River', 'The Mississippi River'],
        optionsMy: ['နိုင်းမြစ်', 'အမေဇုန်မြစ်', 'ဧရာဝတီမြစ်', 'မစ္စစ္စပီမြစ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What is the name of the traditional cart pulled by oxen that farmers used long ago (and some still use today) to carry things?',
        questionMy: 'လယ်သမားများသည် ရှေးက ပစ္စည်းများ သယ်ဆောင်ရန် အသုံးပြုခဲ့ပြီး ယနေ့တိုင် အချို့က ဆက်လက်အသုံးပြုနေဆဲဖြစ်သော နွားများဖြင့် ဆွဲသည့် လှည်း၏ အမည်ကို ဘာခေါ်သနည်း။',
        optionsEn: ['An ox-cart', 'A sports car', 'A subway train', 'A helicopter'],
        optionsMy: ['နွားလှည်း', 'အားကစားကား', 'မြေအောက်ရထား', 'ရဟတ်ယာဉ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Long ago, before phones and the internet, how long could it take for a letter to reach someone far away?',
        questionMy: 'ရှေးက ဖုန်းနှင့် အင်တာနက် မတီထွင်မီ၊ အလှမ်းဝေးသော သူတစ်ဦးထံ စာတစ်စောင် ရောက်ရှိရန် မည်မျှကြာနိုင်သနည်း။',
        optionsEn: ['It arrived instantly', 'It took only a few seconds', 'It never arrived', 'It could take many days or weeks'],
        optionsMy: ['ချက်ချင်းရောက်ရှိသည်', 'စက္ကန့်အနည်းငယ်သာ ကြာသည်', 'ဘယ်တော့မှ မရောက်ချေ', 'ရက်များ သို့မဟုတ် သီတင်းပတ်များစွာ ကြာနိုင်သည်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Which simple invention helped people move heavy loads more easily long ago?',
        questionMy: 'ရှေးက လူများအား လေးလံသောပစ္စည်းများကို ပိုမိုလွယ်ကူစွာ ရွှေ့ပြောင်းနိုင်ရန် ကူညီပေးခဲ့သည့် ရိုးရှင်းသော တီထွင်မှုမှာ မည်သည်နည်း။',
        optionsEn: ['The telephone', 'The wheel', 'The lightbulb', 'The camera'],
        optionsMy: ['တယ်လီဖုန်း', 'ဘီး', 'မီးလုံး', 'ကင်မရာ'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year2-history-5',
    subject: 'history',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Kings and Queens Long Ago',
    titleMy: 'ရှေးက ဘုရင်များနှင့် ဘုရင်မများ',
    descriptionEn: 'Meet the kings and queens who ruled kingdoms long before we had presidents and prime ministers.',
    descriptionMy: 'သမ္မတများနှင့် ဝန်ကြီးချုပ်များ မရှိမီ တိုင်းပြည်များကို အုပ်ချုပ်ခဲ့ကြသော ဘုရင်များနှင့် ဘုရင်မများကို လေ့လာကြည့်ကြပါစို့။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What do we call a man who rules a kingdom?',
        questionMy: 'တိုင်းပြည်တစ်ခုကို အုပ်ချုပ်သော အမျိုးသားကို ဘာခေါ်သနည်း။',
        optionsEn: ['A king', 'A doctor', 'A teacher', 'A farmer'],
        optionsMy: ['ဘုရင်', 'ဆရာဝန်', 'ဆရာ', 'လယ်သမား'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Long ago, Myanmar had a great kingdom called Bagan, famous for its thousands of pagodas and temples. Which king is remembered as an early ruler of Bagan?',
        questionMy: 'ရှေးအခါက မြန်မာနိုင်ငံတွင် ဘုရားပုထိုးများ ထောင်ချီတည်ရှိသော ပုဂံခေတ်ကြီး ရှိခဲ့ပါသည်။ ပုဂံ၏ ရှေးအစောပိုင်း ဘုရင်တစ်ပါးအဖြစ် မှတ်တမ်းတင်ခံရသော ဘုရင်မှာ မည်သူနည်း။',
        optionsEn: ['King Arthur', 'King Tut', 'King Anawrahta', 'King Henry'],
        optionsMy: ['ဘုရင် အာသာ', 'ဘုရင် တပ်တ်', 'ဘုရင် အနော်ရထာ', 'ဘုရင် ဟင်နရီ'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Long ago, how did most kings and queens usually get their position?',
        questionMy: 'ရှေးအခါက ဘုရင်နှင့် ဘုရင်မအများစုသည် သူတို့၏ ရာထူးကို အများအားဖြင့် မည်သို့ ရရှိခဲ့ကြသနည်း။',
        optionsEn: ['They won an election', 'They were born into a royal family', 'They applied for a job', 'They were chosen by a computer'],
        optionsMy: ['ရွေးကောက်ပွဲ နိုင်ခြင်းဖြင့်', 'မင်းမျိုးမင်းနွယ်တွင် မွေးဖွားခြင်းဖြင့်', 'အလုပ်လျှောက်ထားခြင်းဖြင့်', 'ကွန်ပျူတာက ရွေးချယ်ခြင်းဖြင့်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Where did kings and queens usually live?',
        questionMy: 'ဘုရင်နှင့် ဘုရင်မများသည် များသောအားဖြင့် မည်သည့်နေရာတွင် နေထိုင်ခဲ့ကြသနည်း။',
        optionsEn: ['In a small hut', 'In a school', 'In a shop', 'In a large palace'],
        optionsMy: ['သေးငယ်သော တဲလေးတွင်', 'ကျောင်းတွင်', 'ဆိုင်တွင်', 'နန်းတော်ကြီးတွင်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What special item did kings and queens often wear on their heads to show they were the ruler?',
        questionMy: 'ဘုရင်နှင့် ဘုရင်မများသည် မိမိတို့သည် အုပ်ချုပ်သူဖြစ်ကြောင်း ပြသရန် ဦးခေါင်းတွင် မကြာခဏ ဆင်ယင်ခဲ့ကြသော အထူးပစ္စည်းမှာ မည်သည်နည်း။',
        optionsEn: ['A crown', 'A backpack', 'A pair of shoes', 'A scarf'],
        optionsMy: ['သရဖူ', 'ကျောပိုးအိတ်', 'ဖိနပ်တစ်ရံ', 'လည်ဂါဒါ'],
        correctIndex: 0,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year2-science-4',
    subject: 'science',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'My Body & Senses',
    titleMy: 'ခန္ဓာကိုယ်နှင့် အာရုံငါးပါး',
    descriptionEn: 'Discover the five senses and how our body parts help us explore the world.',
    descriptionMy: 'အာရုံငါးပါးနှင့် ကျွန်ုပ်တို့၏ ခန္ဓာကိုယ်အစိတ်အပိုင်းများက ကမ္ဘာကို မည်သို့ စူးစမ်းလေ့လာစေကြောင်း လေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'Which part of the body do we use to taste food?',
        questionMy: 'အစားအစာ၏ အရသာကို ခံစားရန် မည်သည့်ခန္ဓာကိုယ်အစိတ်အပိုင်းကို အသုံးပြုသနည်း။',
        optionsEn: ['Ears', 'Nose', 'Tongue', 'Skin'],
        optionsMy: ['နား', 'နှာခေါင်း', 'လျှာ', 'အရေပြား'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which sense do we use when we touch ice and feel it is cold?',
        questionMy: 'ရေခဲကို ထိတွေ့ပြီး အေးမြသည်ကို ခံစားရာတွင် မည်သည့်အာရုံကို အသုံးပြုသနည်း။',
        optionsEn: ['Touch', 'Taste', 'Smell', 'Hearing'],
        optionsMy: ['ထိတွေ့ခံစားမှု (touch)', 'အရသာခံမှု', 'အနံ့ခံမှု', 'အကြားအာရုံ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which body part do we use to hear a bell ring?',
        questionMy: 'ခေါင်းလောင်းသံကို ကြားရန် မည်သည့်ခန္ဓာကိုယ်အစိတ်အပိုင်းကို အသုံးပြုသနည်း။',
        optionsEn: ['Nose', 'Tongue', 'Eyes', 'Ears'],
        optionsMy: ['နှာခေါင်း', 'လျှာ', 'မျက်လုံး', 'နား'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Which sense organ helps us see colors and shapes?',
        questionMy: 'အရောင်များနှင့် ပုံသဏ္ဌာန်များကို မြင်ရန် မည်သည့် အာရုံခံအင်္ဂါက ကူညီပေးသနည်း။',
        optionsEn: ['Ears', 'Eyes', 'Tongue', 'Nose'],
        optionsMy: ['နား', 'မျက်လုံး', 'လျှာ', 'နှာခေါင်း'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What covers most of our body and helps us feel hot, cold, and pain?',
        questionMy: 'ကျွန်ုပ်တို့၏ ခန္ဓာကိုယ် အများစုကို ဖုံးအုပ်ပြီး ပူခြင်း၊ အေးခြင်း၊ နာကျင်ခြင်းများကို ခံစားစေသည့်အရာမှာ အဘယ်နည်း။',
        optionsEn: ['Hair', 'Bones', 'Skin', 'Nails'],
        optionsMy: ['ဆံပင်', 'အရိုးများ', 'အရေပြား', 'လက်သည်းများ'],
        correctIndex: 2,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year2-science-5',
    subject: 'science',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'How Plants Grow',
    titleMy: 'အပင်များ မည်သို့ကြီးထွားသနည်း',
    descriptionEn: 'Learn what plants need to grow and the parts that make up a plant.',
    descriptionMy: 'အပင်များ ကြီးထွားရန် လိုအပ်သည့်အရာများနှင့် အပင်တစ်ပင်ကို ဖွဲ့စည်းထားသည့် အစိတ်အပိုင်းများကို လေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What do plants need from the sun to help them grow?',
        questionMy: 'အပင်များ ကြီးထွားရန် နေမှ မည်သည့်အရာကို ရရှိရန်လိုအပ်သနည်း။',
        optionsEn: ['Sound', 'Light', 'Salt', 'Ice'],
        optionsMy: ['အသံ', 'အလင်းရောင်', 'ဆား', 'ရေခဲ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which part of the plant takes in water from the soil?',
        questionMy: 'မြေဆီလွှာမှ ရေကို စုပ်ယူသည့် အပင်၏ အစိတ်အပိုင်းမှာ အဘယ်နည်း။',
        optionsEn: ['Leaf', 'Flower', 'Stem', 'Roots'],
        optionsMy: ['အရွက်', 'ပန်း', 'ပင်စည်', 'အမြစ်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What do we call the green part of a plant that makes food using sunlight?',
        questionMy: 'နေရောင်ခြည်ကို အသုံးပြု၍ အစာထုတ်လုပ်ပေးသော အပင်၏ အစိမ်းရောင်အစိတ်အပိုင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Leaf', 'Root', 'Seed', 'Petal'],
        optionsMy: ['အရွက်', 'အမြစ်', 'မျိုးစေ့', 'ပွင့်ဖတ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What can grow into a new plant when placed in soil with water and sunlight?',
        questionMy: 'ရေနှင့် နေရောင်ခြည်ရှိသော မြေဆီလွှာထဲတွင် ထားလိုက်သောအခါ အပင်သစ်တစ်ပင်အဖြစ် ကြီးထွားလာနိုင်သည့်အရာမှာ အဘယ်နည်း။',
        optionsEn: ['A stone', 'A feather', 'A seed', 'A cloud'],
        optionsMy: ['ကျောက်ခဲ', 'အမွေး', 'မျိုးစေ့', 'တိမ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Besides sunlight and water, what else do plants need to grow well?',
        questionMy: 'နေရောင်ခြည်နှင့် ရေအပြင် အပင်များ ကောင်းစွာကြီးထွားရန် မည်သည့်အရာကို ထပ်မံလိုအပ်သနည်း။',
        optionsEn: ['Sand', 'Soil', 'Sugar', 'Salt'],
        optionsMy: ['သဲ', 'မြေဆီလွှာ', 'သကြား', 'ဆား'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year3-generalknowledge-3',
    subject: 'generalknowledge',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Amazing Animals of the World',
    titleMy: 'ကမ္ဘာပေါ်ရှိ အံ့ဖွယ်တိရစ္ဆာန်များ',
    descriptionEn: 'Discover amazing animals from jungles, oceans, and grasslands around the world.',
    descriptionMy: 'ကမ္ဘာပေါ်ရှိ တောအုပ်များ၊ သမုဒ္ဒရာများနှင့် မြက်ခင်းလွင်ပြင်များမှ အံ့ဖွယ်တိရစ္ဆာန်များကို လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'Which animal is often called the "King of the Jungle"?',
        questionMy: 'မည်သည့်တိရစ္ဆာန်ကို "တောအုပ်ဘုရင်" ဟု မကြာခဏခေါ်လေ့ရှိသနည်း။',
        optionsEn: ['Tiger', 'Lion', 'Elephant', 'Zebra'],
        optionsMy: ['ကျား', 'ခြင်္သေ့', 'ဆင်', 'မြင်းနက်ကျား (ဇက်ဘရာ)'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What is the largest animal living in the ocean today?',
        questionMy: 'ယနေ့ သမုဒ္ဒရာထဲတွင် နေထိုင်နေသော အကြီးဆုံးတိရစ္ဆာန်မှာ အဘယ်နည်း။',
        optionsEn: ['Whale shark', 'Giant squid', 'Blue whale', 'Killer whale'],
        optionsMy: ['ငါးမန်းဝေလ (Whale shark)', 'ငါးပဲကင်းကြီး', 'ဝေလငါးပြာကြီး', 'ဝေလငါးသတ် (Orca)'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What do we call animals that eat only plants?',
        questionMy: 'အပင်များကိုသာ စားသုံးသော တိရစ္ဆာန်များကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Herbivores', 'Carnivores', 'Omnivores', 'Predators'],
        optionsMy: ['ပင်စားတိရစ္ဆာန် (herbivore)', 'အသားစားတိရစ္ဆာန် (carnivore)', 'အားလုံးစားတိရစ္ဆာန် (omnivore)', 'သားရဲတိရစ္ဆာန်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which animal has the longest neck, helping it reach leaves on tall trees?',
        questionMy: 'အမြင့်ကြီးသော သစ်ပင်များပေါ်ရှိ အရွက်များကို စားနိုင်ရန် လည်ပင်းအရှည်ဆုံးရှိသော တိရစ္ဆာန်မှာ အဘယ်နည်း။',
        optionsEn: ['Camel', 'Ostrich', 'Kangaroo', 'Giraffe'],
        optionsMy: ['ကုလားအုတ်', 'ဩစတရစ်ချ်ငှက်', 'ကင်ဂါရူး', 'ဂျိရာဖီ'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What do we call the natural place where an animal lives?',
        questionMy: 'တိရစ္ဆာန်တစ်ကောင် သဘာဝအတိုင်း နေထိုင်ရာနေရာကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Nest', 'Habitat', 'Territory', 'Environment'],
        optionsMy: ['အသိုက်', 'နေထိုင်ရာဒေသ (habitat)', 'နယ်မြေ', 'ပတ်ဝန်းကျင်'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year3-generalknowledge-4',
    subject: 'generalknowledge',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Myanmar\'s Rivers, Mountains, and Famous Places',
    titleMy: 'မြန်မာနိုင်ငံ၏ မြစ်များ၊ တောင်များနှင့် ကျော်ကြားသည့်နေရာများ',
    descriptionEn: 'Journey across Myanmar to learn about its great river, tallest mountain, and famous landmarks.',
    descriptionMy: 'မြန်မာနိုင်ငံရှိ မြစ်ကြီး၊ တောင်အမြင့်ဆုံးနှင့် ကျော်ကြားသော အထင်ကရနေရာများအကြောင်း ခရီးသွားလေ့လာကြရအောင်။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'What is the name of the longest river in Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံရှိ အရှည်ဆုံးမြစ်၏ အမည်ကား အဘယ်နည်း။',
        optionsEn: ['Chindwin River', 'Sittaung River', 'Ayeyarwady River', 'Thanlwin River'],
        optionsMy: ['ချင်းတွင်းမြစ်', 'စစ်တောင်းမြစ်', 'ဧရာဝတီမြစ်', 'သံလွင်မြစ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which city in Myanmar is home to the famous golden Shwedagon Pagoda?',
        questionMy: 'ကျော်ကြားသော ရွှေတိဂုံစေတီတော်ကြီးရှိသည့် မြို့မှာ မည်သည့်မြို့နည်း။',
        optionsEn: ['Yangon', 'Mandalay', 'Bagan', 'Taunggyi'],
        optionsMy: ['ရန်ကုန်', 'မန္တလေး', 'ပုဂံ', 'တောင်ကြီး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which lake in Shan State is famous for its floating gardens and fishermen who row boats with their legs?',
        questionMy: 'ရှမ်းပြည်နယ်ရှိ မြေနုအခင်းများနှင့် ခြေဖြင့်လှော်တတ်သော တံငါသည်များကြောင့် ကျော်ကြားသည့် အင်းကန်မှာ အဘယ်နည်း။',
        optionsEn: ['Indawgyi Lake', 'Meiktila Lake', 'Kandawgyi Lake', 'Inle Lake'],
        optionsMy: ['အင်းတော်ကြီးအင်း', 'မိတ္ထီလာအင်း', 'ကန်တော်ကြီး', 'အင်းလေးအင်း'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Which ancient city in Myanmar is famous for its thousands of temples and pagodas?',
        questionMy: 'ပုထိုးဘုရားပေါင်းထောင်ချီရှိသည့် ရှေးဟောင်းမြို့တော်အဖြစ် ကျော်ကြားသည့် မြန်မာ့မြို့ဟောင်းမှာ အဘယ်နည်း။',
        optionsEn: ['Mrauk-U', 'Bagan', 'Pyay', 'Mawlamyine'],
        optionsMy: ['မြောက်ဦး', 'ပုဂံ', 'ပြည်', 'မော်လမြိုင်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What is the name of Myanmar\'s tallest mountain?',
        questionMy: 'မြန်မာနိုင်ငံ၏ တောင်အမြင့်ဆုံး၏ အမည်ကား အဘယ်နည်း။',
        optionsEn: ['Popa Mountain', 'Nattaung', 'Hkakabo Razi', 'Zwekabin'],
        optionsMy: ['ပုပ္ပါးတောင်', 'နတ်တောင်', 'ခါကာဘိုရာဇီ', 'ဇွဲကပင်တောင်'],
        correctIndex: 2,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year3-geography-3',
    subject: 'geography',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Maps & Directions',
    titleMy: 'မြေပုံနှင့် ဦးတည်ချက်များ',
    descriptionEn: 'Discover how to read simple maps and find your way using north, south, east, and west.',
    descriptionMy: 'ရိုးရှင်းသော မြေပုံများကို ဖတ်ရှုနည်းနှင့် မြောက်၊ တောင်၊ အရှေ့၊ အနောက်တို့ဖြင့် လမ်းညွှန်နည်းကို စူးစမ်းလေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'What tool helps us find directions like north and south?',
        questionMy: 'မြောက်၊ တောင်ကဲ့သို့သော အရပ်မျက်နှာများကို ရှာဖွေရာတွင် မည်သည့်ကိရိယာက ကူညီပေးသနည်း။',
        optionsEn: ['A clock', 'A compass', 'A calculator', 'A calendar'],
        optionsMy: ['အချိန်ပြနာရီ', 'အရပ်ပြကိရိယာ (compass)', 'ဂဏန်းတွက်စက်', 'ပြက္ခဒိန်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'On a compass, which direction is opposite to North?',
        questionMy: 'အရပ်ပြကိရိယာ (compass) တွင် မြောက်ဘက်၏ ဆန့်ကျင်ဘက် အရပ်မျက်နှာမှာ အဘယ်နည်း။',
        optionsEn: ['East', 'West', 'South', 'Up'],
        optionsMy: ['အရှေ့', 'အနောက်', 'တောင်', 'အပေါ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'On most maps, which direction is usually shown at the top?',
        questionMy: 'မြေပုံအများစုတွင် ထိပ်ဆုံးအပိုင်းသည် များသောအားဖြင့် မည်သည့်အရပ်မျက်နှာကို ပြသသနည်း။',
        optionsEn: ['North', 'South', 'East', 'West'],
        optionsMy: ['မြောက်', 'တောင်', 'အရှေ့', 'အနောက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What do we call the small pictures on a map that stand for real things like schools or trees?',
        questionMy: 'ကျောင်းများ၊ သစ်ပင်များကဲ့သို့ အမှန်တကယ်ရှိသောအရာများကို ကိုယ်စားပြုသည့် မြေပုံပေါ်ရှိ ပုံငယ်များကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Numbers', 'Shadows', 'Letters', 'Symbols'],
        optionsMy: ['ဂဏန်းများ', 'အရိပ်များ', 'စာလုံးများ', 'သင်္ကေတများ (symbols)'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'The sun rises in the east. In which direction does it set?',
        questionMy: 'နေသည် အရှေ့ဘက်မှ ထွက်သည်။ မည်သည့်ဘက်တွင် ဝင်သနည်း။',
        optionsEn: ['West', 'East', 'North', 'South'],
        optionsMy: ['အနောက်', 'အရှေ့', 'မြောက်', 'တောင်'],
        correctIndex: 0,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year3-geography-4',
    subject: 'geography',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Continents and Oceans',
    titleMy: 'ကမ္ဘာ့တိုက်ကြီးများနှင့် သမုဒ္ဒရာများ',
    descriptionEn: 'Explore the world\'s seven continents and five oceans that make up our planet.',
    descriptionMy: 'ကျွန်ုပ်တို့၏ ကမ္ဘာဂြိုဟ်ကို ဖွဲ့စည်းထားသော တိုက်ကြီးခုနစ်တိုက်နှင့် သမုဒ္ဒရာငါးခုကို စူးစမ်းလေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'How many continents are there on Earth?',
        questionMy: 'ကမ္ဘာပေါ်တွင် တိုက်ကြီး မည်မျှရှိသနည်း။',
        optionsEn: ['Five', 'Six', 'Seven', 'Eight'],
        optionsMy: ['ငါးတိုက်', 'ခြောက်တိုက်', 'ခုနစ်တိုက်', 'ရှစ်တိုက်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which continent is Myanmar located in?',
        questionMy: 'မြန်မာနိုင်ငံသည် မည်သည့်တိုက်တွင် တည်ရှိသနည်း။',
        optionsEn: ['Africa', 'Asia', 'Europe', 'Australia'],
        optionsMy: ['အာဖရိကတိုက်', 'အာရှတိုက်', 'ဥရောပတိုက်', 'သြစတြေးလျတိုက်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What do we call a very large area of salt water, like the Indian Ocean?',
        questionMy: 'ဟိန္ဒူသမုဒ္ဒရာကဲ့သို့ အလွန်ကျယ်ဝန်းသော ဆားငန်ရေဧရိယာကြီးကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A lake', 'A river', 'An ocean', 'A pond'],
        optionsMy: ['အိုင်', 'မြစ်', 'သမုဒ္ဒရာ', 'ရေကန်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which ocean is closest to Myanmar\'s coastline?',
        questionMy: 'မြန်မာနိုင်ငံ၏ ပင်လယ်ကမ်းရိုးတန်းနှင့် အနီးဆုံးသမုဒ္ဒရာမှာ အဘယ်နည်း။',
        optionsEn: ['Pacific Ocean', 'Arctic Ocean', 'Atlantic Ocean', 'Indian Ocean'],
        optionsMy: ['ပစိဖိတ်သမုဒ္ဒရာ', 'အာတိတ်သမုဒ္ဒရာ', 'အတ္တလန္တိတ်သမုဒ္ဒရာ', 'ဟိန္ဒူသမုဒ္ဒရာ'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Which is the largest continent on Earth?',
        questionMy: 'ကမ္ဘာပေါ်တွင် အကြီးဆုံးတိုက်ကြီးမှာ မည်သည့်တိုက်ဖြစ်သနည်း။',
        optionsEn: ['Africa', 'Asia', 'Europe', 'South America'],
        optionsMy: ['အာဖရိကတိုက်', 'အာရှတိုက်', 'ဥရောပတိုက်', 'တောင်အမေရိကတိုက်'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year3-science-4',
    subject: 'science',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Light and Shadows',
    titleMy: 'အလင်းရောင်နှင့် အရိပ်များ',
    descriptionEn: 'Discover how light travels and how shadows are formed.',
    descriptionMy: 'အလင်းရောင် ခရီးသွားပုံနှင့် အရိပ်ဖြစ်ပေါ်ပုံကို စူးစမ်းလေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'Which of these is a natural source of light?',
        questionMy: 'မည်သည့်အရာသည် သဘာဝအလင်းရောင်အရင်းအမြစ် ဖြစ်သနည်း။',
        optionsEn: ['The Moon', 'A mirror', 'The Sun', 'A book'],
        optionsMy: ['လ', 'မှန်တစ်ချပ်', 'နေ', 'စာအုပ်တစ်အုပ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What is a shadow?',
        questionMy: 'အရိပ်ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: ['A bright reflection of light', 'A dark area where light is blocked', 'A type of light source', 'A colorful pattern on the ground'],
        optionsMy: ['အလင်းရောင် ထင်ဟပ်နေသော တောက်ပသည့်နေရာ', 'အလင်းရောင် ပိတ်ဆို့ခံရသော မှောင်မိုက်သည့်နေရာ', 'အလင်းရောင်အမျိုးအစားတစ်ခု', 'မြေပြင်ပေါ်ရှိ အရောင်စုံပုံစံ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which material lets light pass through easily, like glass?',
        questionMy: 'မှန်ကဲ့သို့ အလင်းရောင်ကို လွယ်ကူစွာ ဖောက်ဖျက်ဝင်ရောက်စေနိုင်သော ပစ္စည်းအမျိုးအစားကို အဘယ်ဟုခေါ်သနည်း။',
        optionsEn: ['Opaque', 'Magnetic', 'Liquid', 'Transparent'],
        optionsMy: ['အလင်းမမြင်ရသော (opaque)', 'သံလိုက်ဓာတ်ရှိသော', 'အရည်', 'အလင်းမြင်ရသော (transparent)'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What happens to a shadow when an object moves closer to a light source?',
        questionMy: 'အရာဝတ္ထုတစ်ခုကို အလင်းရင်းမြစ်နှင့် ပိုနီးအောင် ရွှေ့လိုက်လျှင် အရိပ်သည် မည်သို့ဖြစ်လာမည်နည်း။',
        optionsEn: ['It becomes bigger', 'It becomes smaller', 'It disappears', 'It changes color'],
        optionsMy: ['ပိုကြီးလာမည်', 'ပိုသေးလာမည်', 'ကွယ်ပျောက်သွားမည်', 'အရောင်ပြောင်းသွားမည်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'At what time of day are shadows usually the shortest?',
        questionMy: 'တစ်နေ့တာအတွင်း မည်သည့်အချိန်တွင် အရိပ်များသည် ပုံမှန်အားဖြင့် အတိုဆုံးဖြစ်သနည်း။',
        optionsEn: ['Early morning', 'Midday', 'Late evening', 'Midnight'],
        optionsMy: ['နံနက်စောစော', 'နေ့လယ်', 'ညနေခင်း', 'သန်းခေါင်ယံ'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year4-generalknowledge-3',
    subject: 'generalknowledge',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Amazing Animals and Their Homes',
    titleMy: 'အံ့ဖွယ်တိရစ္ဆာန်များနှင့် သူတို့နေထိုင်ရာဒေသများ',
    descriptionEn: 'Discover incredible animals from around the world and the habitats they call home.',
    descriptionMy: 'ကမ္ဘာတစ်ဝှမ်းရှိ အံ့ဖွယ်တိရစ္ဆာန်များနှင့် သူတို့နေထိုင်ရာနေရာများကို လေ့လာကြည့်ရှုပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'Which sea creature is actually a mammal, not a fish?',
        questionMy: 'အောက်ပါပင်လယ်သတ္တဝါများထဲမှ အမှန်တကယ် ငါးမဟုတ်ဘဲ နို့တိုက်သတ္တဝါဖြစ်သည့် တိရစ္ဆာန်မှာ မည်သည်နည်း။',
        optionsEn: ['Shark', 'Dolphin', 'Jellyfish', 'Octopus'],
        optionsMy: ['ငါးမန်း', 'ဒေါ်ဖင်းငါး', 'ဂျယ်လီငါး (jellyfish)', 'အောက်တိုပတ်စ် (octopus)'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What do we call an animal that eats both plants and meat?',
        questionMy: 'အပင်နှင့်အသားနှစ်မျိုးလုံးကို စားသုံးသည့် တိရစ္ဆာန်ကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Omnivore', 'Herbivore', 'Carnivore', 'Scavenger'],
        optionsMy: ['အားလုံးစားတိရစ္ဆာန် (omnivore)', 'အပင်စားတိရစ္ဆာန် (herbivore)', 'အသားစားတိရစ္ဆာန် (carnivore)', 'အကောင်သေစားတိရစ္ဆာန် (scavenger)'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these animals can change the color of its skin to hide from danger?',
        questionMy: 'အောက်ပါတိရစ္ဆာန်များထဲမှ အန္တရာယ်မှလွတ်ကင်းရန် အရေပြားအရောင်ကို ပြောင်းလဲနိုင်သည့် တိရစ္ဆာန်မှာ မည်သည်နည်း။',
        optionsEn: ['Elephant', 'Lion', 'Giraffe', 'Chameleon'],
        optionsMy: ['ဆင်', 'ခြင်္သေ့', 'ဂျီရာဖ်', 'ချင်မလီယွန် (chameleon)'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Where do polar bears live?',
        questionMy: 'ဝက်ဝံဖြူများ (polar bears) နေထိုင်ရာဒေသမှာ မည်သည့်နေရာဖြစ်သနည်း။',
        optionsEn: ['Sahara Desert', 'Amazon Rainforest', 'Arctic region', 'Australian outback'],
        optionsMy: ['ဆာဟာရသဲကန္တာရ', 'အမေဇုန်မိုးသစ်တော', 'အာတိတ်ဒေသ (Arctic)', 'သြစတြေးလျ ကျေးလက်ဒေသ'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which bird cannot fly but is an excellent swimmer?',
        questionMy: 'မပျံနိုင်သော်လည်း ရေကူးကျွမ်းကျင်သည့် ငှက်မှာ မည်သည်နည်း။',
        optionsEn: ['Eagle', 'Penguin', 'Parrot', 'Sparrow'],
        optionsMy: ['လင်းယုန်', 'ပင်ဂွင်း', 'ပါရော့ (parrot)', 'စာငှက်'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year4-generalknowledge-4',
    subject: 'generalknowledge',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Great Inventions That Changed the World',
    titleMy: 'ကမ္ဘာကိုပြောင်းလဲစေသော တီထွင်မှုကြီးများ',
    descriptionEn: 'Learn about clever inventions and the inventors who created them.',
    descriptionMy: 'ထူးချွန်သော တီထွင်မှုများနှင့် တီထွင်ခဲ့သူများအကြောင်း လေ့လာကြည့်ရှုပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'Who is credited with inventing the light bulb?',
        questionMy: 'မီးလုံးကို တီထွင်ခဲ့သူအဖြစ် အသိအမှတ်ပြုခံရသူမှာ မည်သူနည်း။',
        optionsEn: ['Isaac Newton', 'Alexander Graham Bell', 'Thomas Edison', 'Albert Einstein'],
        optionsMy: ['အိုက်ဇက်နယူတန်', 'အလက်ဇန္ဒား ဂရမ်ဘဲလ်', 'သောမတ်စ် အက်ဒီဆင်', 'အယ်လ်ဘတ် အိုင်းစတိုင်း'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What invention allows people to talk to someone far away using their voice?',
        questionMy: 'ဝေးကွာသောနေရာရှိသူတစ်ဦးနှင့် အသံဖြင့် စကားပြောနိုင်စေသည့် တီထွင်မှုမှာ မည်သည်နည်း။',
        optionsEn: ['Telephone', 'Television', 'Camera', 'Printing press'],
        optionsMy: ['တယ်လီဖုန်း', 'ရုပ်မြင်သံကြား', 'ကင်မရာ', 'ပုံနှိပ်စက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which invention helped people print many copies of books quickly?',
        questionMy: 'လူများအား စာအုပ်များကို အမြန်ပုံနှိပ်ကူညီပေးခဲ့သည့် တီထွင်မှုမှာ မည်သည်နည်း။',
        optionsEn: ['The telescope', 'The printing press', 'The compass', 'The steam engine'],
        optionsMy: ['အာကာသကြည့်မှန်ပြောင်း (telescope)', 'ပုံနှိပ်စက်', 'အရပ်ညွှန်တံ (compass)', 'ရေနွေးငွေ့စက်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which invention helped ships travel underwater?',
        questionMy: 'သင်္ဘောများအား ရေအောက်ခရီးသွားနိုင်စေသည့် တီထွင်မှုမှာ မည်သည်နည်း။',
        optionsEn: ['Airplane', 'Train', 'Automobile', 'Submarine'],
        optionsMy: ['လေယာဉ်ပျံ', 'မီးရထား', 'ကား', 'ရေငုပ်သင်္ဘော (submarine)'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What was invented to help people see tiny things too small for the eye alone?',
        questionMy: 'မျက်စိနှင့်တွေ့မြင်၍မရလောက်အောင် သေးငယ်သောအရာများကို ကြည့်ရှုနိုင်ရန် တီထွင်ခဲ့သော ကိရိယာမှာ မည်သည်နည်း။',
        optionsEn: ['Telescope', 'Microscope', 'Camera', 'Radio'],
        optionsMy: ['အာကာသကြည့်မှန်ပြောင်း (telescope)', 'အဏုကြည့်မှန်ပြောင်း (microscope)', 'ကင်မရာ', 'ရေဒီယို'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year4-geography-3',
    subject: 'geography',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Continents and Oceans of the World',
    titleMy: 'ကမ္ဘာ့ ကျွန်းတိုက်များနှင့် သမုဒ္ဒရာများ',
    descriptionEn: 'Learn about Earth\'s seven continents and its vast oceans, and find out where Myanmar fits in.',
    descriptionMy: 'ကမ္ဘာမြေ၏ ကျွန်းတိုက်ခုနစ်တိုက်နှင့် ကျယ်ဝန်းသော သမုဒ္ဒရာများအကြောင်း လေ့လာပြီး မြန်မာနိုင်ငံ မည်သည့်နေရာတွင် တည်ရှိသည်ကို လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'How many continents are there on Earth?',
        questionMy: 'ကမ္ဘာပေါ်တွင် ကျွန်းတိုက် စုစုပေါင်း မည်မျှရှိသနည်း။',
        optionsEn: ['5', '7', '8', '6'],
        optionsMy: ['၅ခု', '၇ခု', '၈ခု', '၆ခု'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which continent is the largest in the world?',
        questionMy: 'ကမ္ဘာပေါ်တွင် အကြီးဆုံး ကျွန်းတိုက်မှာ အဘယ်နည်း။',
        optionsEn: ['Africa', 'Europe', 'Asia', 'Australia'],
        optionsMy: ['အာဖရိကတိုက်', 'ဥရောပတိုက်', 'အာရှတိုက်', 'သြစတြေးလျတိုက်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which ocean is the largest in the world?',
        questionMy: 'ကမ္ဘာပေါ်တွင် အကျယ်ဝန်းဆုံး သမုဒ္ဒရာမှာ အဘယ်နည်း။',
        optionsEn: ['Atlantic Ocean', 'Arctic Ocean', 'Indian Ocean', 'Pacific Ocean'],
        optionsMy: ['အတ္လန္တစ်သမုဒ္ဒရာ', 'အာတိတ်သမုဒ္ဒရာ', 'အိန္ဒိယသမုဒ္ဒရာ', 'ပစိဖိတ်သမုဒ္ဒရာ'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Which continent is the smallest in the world?',
        questionMy: 'ကမ္ဘာပေါ်တွင် အသေးငယ်ဆုံး ကျွန်းတိုက်မှာ အဘယ်နည်း။',
        optionsEn: ['Australia', 'Asia', 'Africa', 'Europe'],
        optionsMy: ['သြစတြေးလျတိုက်', 'အာရှတိုက်', 'အာဖရိကတိုက်', 'ဥရောပတိုက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which ocean is closest to Myanmar\'s coast?',
        questionMy: 'မြန်မာနိုင်ငံ ကမ်းရိုးတန်းနှင့် အနီးဆုံးရှိသော သမုဒ္ဒရာမှာ အဘယ်နည်း။',
        optionsEn: ['Arctic Ocean', 'Pacific Ocean', 'Indian Ocean', 'Atlantic Ocean'],
        optionsMy: ['အာတိတ်သမုဒ္ဒရာ', 'ပစိဖိတ်သမုဒ္ဒရာ', 'အိန္ဒိယသမုဒ္ဒရာ', 'အတ္လန္တစ်သမုဒ္ဒရာ'],
        correctIndex: 2,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year4-geography-4',
    subject: 'geography',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Maps and Compass Directions',
    titleMy: 'မြေပုံဖတ်ခြင်းနှင့် အရပ်မျက်နှာများ',
    descriptionEn: 'Discover how maps work and learn the four main compass directions.',
    descriptionMy: 'မြေပုံများ မည်သို့အလုပ်လုပ်သည်ကို လေ့လာပြီး အဓိကအရပ်မျက်နှာ လေးမျိုးကို သင်ယူပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is a map?',
        questionMy: 'မြေပုံဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: ['A drawing that shows where places are', 'A drawing of a person', 'A list of numbers', 'A book about animals'],
        optionsMy: ['နေရာများ ရှိရာနေရာကို ပြသော ပုံစံတစ်ခု', 'လူတစ်ဦး၏ပုံစံ', 'ဂဏန်းများစာရင်း', 'တိရစ္ဆာန်များအကြောင်း စာအုပ်တစ်အုပ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which direction is opposite to North?',
        questionMy: 'မြောက်အရပ်၏ ဆန့်ကျင်ဘက်အရပ်မှာ အဘယ်နည်း။',
        optionsEn: ['East', 'South', 'West', 'Northeast'],
        optionsMy: ['အရှေ့', 'တောင်', 'အနောက်', 'အရှေ့မြောက်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'On most maps, which direction is at the top?',
        questionMy: 'မြေပုံအများစုတွင် အပေါ်ဘက်သည် မည်သည့်အရပ်ကို ကိုယ်စားပြုသနည်း။',
        optionsEn: ['South', 'East', 'North', 'West'],
        optionsMy: ['တောင်', 'အရှေ့', 'မြောက်', 'အနောက်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What tool helps us find directions?',
        questionMy: 'အရပ်မျက်နှာရှာရန် အကူအညီပေးသော ကိရိယာမှာ အဘယ်နည်း။',
        optionsEn: ['A ruler', 'A calculator', 'A thermometer', 'A compass'],
        optionsMy: ['ပေတံ', 'ဂဏန်းတွက်စက်', 'အပူချိန်တိုင်းကိရိယာ', 'အရပ်မျက်နှာညွှန်ကိရိယာ (compass)'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What do we call the small pictures or symbols used on a map to show things like rivers or roads?',
        questionMy: 'မြစ်များ၊ လမ်းများကဲ့သို့ အရာများကို ပြသရန် မြေပုံပေါ်တွင် အသုံးပြုသော ပုံသေးများ သို့မဟုတ် သင်္ကေတများကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Map colors only', 'Map titles', 'Map symbols (key)', 'Map borders'],
        optionsMy: ['မြေပုံအရောင်များသာ', 'မြေပုံခေါင်းစဉ်များ', 'မြေပုံသင်္ကေတများ (map key)', 'မြေပုံနယ်နိမိတ်များ'],
        correctIndex: 2,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year4-geography-5',
    subject: 'geography',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Myanmar\'s Rivers and Mountains',
    titleMy: 'မြန်မာနိုင်ငံ၏ မြစ်များနှင့် တောင်များ',
    descriptionEn: 'Learn about Myanmar\'s major rivers and mountains, from the Ayeyarwady to Hkakabo Razi.',
    descriptionMy: 'ဧရာဝတီမြစ်မှ ခါကာဘိုရာဇီအထိ မြန်မာနိုင်ငံ၏ အဓိကမြစ်များနှင့် တောင်များအကြောင်း လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is the longest river in Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံ၏ အရှည်ဆုံးမြစ်မှာ အဘယ်မြစ်နည်း။',
        optionsEn: ['Chindwin River', 'Sittaung River', 'Ayeyarwady River', 'Thanlwin River'],
        optionsMy: ['ချင်းတွင်းမြစ်', 'စစ်တောင်းမြစ်', 'ဧရာဝတီမြစ်', 'သံလွင်မြစ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which is the highest mountain in Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံ၏ အမြင့်ဆုံးတောင်မှာ အဘယ်တောင်နည်း။',
        optionsEn: ['Hkakabo Razi', 'Mount Popa', 'Mount Zwegabin', 'Nattaung'],
        optionsMy: ['ခါကာဘိုရာဇီ', 'ပုပ္ပါးတောင်', 'ဇွဲကပင်တောင်', 'နတ်တောင်း'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'In which part of Myanmar is Hkakabo Razi located?',
        questionMy: 'ခါကာဘိုရာဇီတောင်သည် မြန်မာနိုင်ငံ၏ မည်သည့်ဒေသတွင် တည်ရှိသနည်း။',
        optionsEn: ['Mon State', 'Rakhine State', 'Kachin State', 'Tanintharyi Region'],
        optionsMy: ['မွန်ပြည်နယ်', 'ရခိုင်ပြည်နယ်', 'ကချင်ပြည်နယ်', 'တနင်္သာရီတိုင်းဒေသကြီး'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'The Ayeyarwady River flows into which body of water?',
        questionMy: 'ဧရာဝတီမြစ်သည် မည်သည့်ရေပြင်ထဲသို့ စီးဆင်းဝင်ရောက်သနည်း။',
        optionsEn: ['Bay of Bengal', 'South China Sea', 'Pacific Ocean', 'Andaman Sea'],
        optionsMy: ['ဘင်္ဂလားပင်လယ်အော်', 'တောင်တရုတ်ပင်လယ်', 'ပစိဖိတ်သမုဒ္ဒရာ', 'အန္ဒမန်ပင်လယ်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Which river flows through Shan State and is Myanmar\'s second longest river?',
        questionMy: 'ရှမ်းပြည်နယ်ကို ဖြတ်သန်းစီးဆင်းပြီး မြန်မာနိုင်ငံ၏ ဒုတိယအရှည်ဆုံးမြစ်ဖြစ်သည့် မြစ်မှာ အဘယ်မြစ်နည်း။',
        optionsEn: ['Chindwin River', 'Thanlwin River', 'Sittaung River', 'Ayeyarwady River'],
        optionsMy: ['ချင်းတွင်းမြစ်', 'သံလွင်မြစ်', 'စစ်တောင်းမြစ်', 'ဧရာဝတီမြစ်'],
        correctIndex: 1,
      ),
    ],
  ),

  // History shortfall batch: fills Year 1/2 History (+1 each), Year 3/4
  // History (+3 each) to reach the 5-module target every other Primary
  // grade+subject pair in the content-parity batch above already hit.
  // Same generate -> adversarial-verify pipeline as that batch, this time
  // with a per-grade retry loop (up to 3 rounds) so a rejected module's
  // slot gets a fresh attempt rather than being left short -- all 8
  // needed modules passed verification in this run, no shortfall.
  PrimaryActivityDef(
    id: 'mock-year1-history-4',
    subject: 'history',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'How We Learn About the Past',
    titleMy: 'အတိတ်ကာလအကြောင်း ဘယ်လိုသိရသလဲ',
    descriptionEn: 'Discover how museums, old photographs, and stories from grandparents help us learn about people and places from long ago.',
    descriptionMy: 'ပြတိုက်များ၊ ဓာတ်ပုံဟောင်းများနှင့် အဘိုးအဘွားတို့၏ ပုံပြင်များက ရှေးက လူများနှင့် နေရာများအကြောင်း ကျွန်တော်တို့ကို ဘယ်လိုသင်ပေးသလဲဆိုတာ လေ့လာကြည့်ကြပါစို့။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'What is a museum used for?',
        questionMy: 'ပြတိုက်ကို ဘာအတွက်အသုံးပြုသလဲ။',
        optionsEn: ['Keeping and showing old things', 'Selling fresh fruit', 'Washing clothes', 'Playing football'],
        optionsMy: ['ရှေးဟောင်းပစ္စည်းများကို သိမ်းဆည်းပြသရန်', 'လတ်ဆတ်သောအသီးများ ရောင်းရန်', 'အဝတ်များ လျှော်ရန်', 'ဘောလုံးကစားရန်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Who can tell us stories about long ago?',
        questionMy: 'ရှေးက အကြောင်းအရာများကို ပုံပြင်ပြောပြနိုင်သူက မည်သူနည်း။',
        optionsEn: ['A brand new baby', 'Our grandparents', 'A toy robot', 'A cartoon character'],
        optionsMy: ['မွေးကင်းစ ကလေးငယ်', 'ကျွန်တော်တို့၏ အဘိုးအဘွားများ', 'အရုပ်စက်ရုပ်', 'ကာတွန်းဇာတ်ကောင်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Old photographs are usually...',
        questionMy: 'ဓာတ်ပုံဟောင်းများသည် များသောအားဖြင့်...',
        optionsEn: ['Moving videos with sound', 'Pictures on a phone screen only', 'Pictures taken a long time ago', 'Pictures of things that have not happened yet'],
        optionsMy: ['အသံပါ ရုပ်ရှင်ဗီဒီယိုများ', 'ဖုန်းမျက်နှာပြင်ပေါ်ရှိ ပုံများသာ', 'ကြာမြင့်စွာကတည်းက ရိုက်ထားသောပုံများ', 'မဖြစ်သေးသော အရာများ၏ ပုံများ'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which of these is very old and still stands in Myanmar today?',
        questionMy: 'အောက်ပါတို့အနက် ဘယ်ဟာက အလွန်ဟောင်းနွမ်းပြီး ယနေ့မြန်မာနိုင်ငံတွင် ရပ်တည်နေဆဲဖြစ်သနည်း။',
        optionsEn: ['A new shopping mall', 'A modern airport', 'A plastic toy', 'An old pagoda'],
        optionsMy: ['စျေးဝယ်စင်တာအသစ်', 'ခေတ်မီလေဆိပ်', 'ပလတ်စတစ်အရုပ်', 'ဘုရားဟောင်းတစ်ဆူ'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Why is it important not to touch things in a museum?',
        questionMy: 'ပြတိုက်ထဲရှိ ပစ္စည်းများကို လက်မထိသင့်တာက ဘာကြောင့်အရေးကြီးသနည်း။',
        optionsEn: ['To keep old things safe so others can see them too', 'Because touching makes them disappear', 'Because museums do not allow visitors', 'Because old things are always wet'],
        optionsMy: ['အခြားသူများလည်း ကြည့်ရှုနိုင်ဖို့ ရှေးဟောင်းပစ္စည်းများကို ဘေးကင်းစွာ ထိန်းသိမ်းထားရန်', 'ထိလိုက်ရင် ပျောက်သွားလို့', 'ပြတိုက်များက ဧည့်သည်တွေကို ခွင့်မပြုလို့', 'ရှေးဟောင်းပစ္စည်းတွေက အမြဲစိုနေလို့'],
        correctIndex: 0,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year2-history-3',
    subject: 'history',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Toys and Games Long Ago',
    titleMy: 'ရှေးက ကစားစရာများနှင့် ကစားများ',
    descriptionEn: 'Discover the toys and games children played with long before video games and computers existed.',
    descriptionMy: 'ဗီဒီယိုဂိမ်းများနှင့် ကွန်ပျူတာများ မရှိမီက ကလေးများ ကစားခဲ့ကြသော ကစားစရာများနှင့် ကစားများကို လေ့လာကြည့်ကြပါစို့။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What were many toys made from long ago, before plastic became common?',
        questionMy: 'ပလတ်စတစ် မသုံးများခင် ရှေးက ကစားစရာအများစုကို ဘာဖြင့်လုပ်ခဲ့ကြသနည်း။',
        optionsEn: ['Plastic', 'Wood', 'Glass', 'Metal'],
        optionsMy: ['ပလတ်စတစ်', 'သစ်သား', 'ဖန်', 'သတ္တု'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What is a toy that children have spun on the ground to play with for hundreds of years?',
        questionMy: 'နှစ်ပေါင်းရာနှင့်ချီပြီး ကလေးများ မြေပေါ်တွင် လှည့်ကစားခဲ့ကြသော ကစားစရာမှာ အဘယ်နည်း။',
        optionsEn: ['A remote control car', 'A video game console', 'An alphabet spinning top (spinning top)', 'A tablet computer'],
        optionsMy: ['ရီမုတ်ကွန်ထရိုကား', 'ဗီဒီယိုဂိမ်းစက်', 'အလှည့်ကစားစရာ (spinning top)', 'တက်ဘလက်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'In Myanmar, what is chinlone, a traditional game people still play today?',
        questionMy: 'မြန်မာနိုင်ငံတွင် ယနေ့တိုင် ကစားနေကြသော ရိုးရာကစားဖြစ်သည့် ခြင်းလုံးကစားသည် မည်သို့ကစားသနည်း။',
        optionsEn: ['A board game played with dice', 'A card game', 'A racing game with toy cars', 'A game where players keep a cane ball in the air using their feet'],
        optionsMy: ['တံခွက်နှင့်ကစားသော ဘုတ်ကစား', 'ကတ်ဂိမ်း', 'ကစားစရာကားများနှင့် ပြိုင်ကားပြေးခြင်း', 'ခြေဖြင့်ဝိုင်းကန်ပြီး ခြင်းလုံးကို လေထဲတွင်ဆက်တင်ကစားသည့်ကစား'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Long ago, toys did not have batteries. How did children make them move?',
        questionMy: 'ရှေးက ကစားစရာများတွင် ဘက်ထရီမပါခဲ့ပါ။ ကလေးများက ၎င်းတို့ကို မည်သို့လှုပ်ရှားစေခဲ့ကြသနည်း။',
        optionsEn: ['By pushing, pulling, or spinning them with their hands', 'By plugging them into a wall socket', 'By using a remote control', 'By charging them with solar panels'],
        optionsMy: ['လက်ဖြင့် တွန်း၊ ဆွဲ သို့မဟုတ် လှည့်၍', 'နံရံလျှပ်စစ်ခေါင်းတွင် တပ်ဆင်၍', 'ရီမုတ်ကွန်ထရိုအသုံးပြု၍', 'နေရောင်ခြည်ဓာတ်ခဲဖြင့် အားသွင်း၍'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How do we know what toys children played with a long time ago?',
        questionMy: 'ကလေးများ ကစားခဲ့ကြသော ရှေးက ကစားစရာများအကြောင်းကို ကျွန်ုပ်တို့ မည်သို့သိရသနည်း။',
        optionsEn: ['We guess randomly with no evidence', 'Museums keep old toys and pictures that show us', 'We only read new toy advertisements', 'It is impossible for anyone to know'],
        optionsMy: ['အထောက်အထားမရှိဘဲ ကျပန်းခန့်မှန်းခြင်းဖြင့်', 'ပြတိုက်များတွင် ရှေးက ကစားစရာများနှင့် ပုံများကို သိမ်းဆည်းထားသောကြောင့် သိရသည်', 'ကစားစရာအသစ်များ၏ ကြော်ငြာများကိုသာ ဖတ်ခြင်းဖြင့်', 'မည်သူမျှ သိရန်မဖြစ်နိုင်ပါ'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year3-history-3',
    subject: 'history',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Finding Out About the Past',
    titleMy: 'အတိတ်ကာလအကြောင်း စူးစမ်းလေ့လာခြင်း',
    descriptionEn: 'Discover how museums, old objects, and stories from grandparents help us learn what life was like long ago.',
    descriptionMy: 'ပြတိုက်များ၊ ရှေးဟောင်းပစ္စည်းများနှင့် အဘိုးအဘွားတို့၏ ပုံပြင်များက ရှေးအခါက ဘဝဘယ်လိုရှိခဲ့သလဲဆိုတာ ကျွန်တော်တို့ကို ဘယ်လိုအထောက်အကူပြုသလဲဆိုတာ လေ့လာကြည့်ကြပါစို့။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'What is a museum?',
        questionMy: 'ပြတိုက်ဆိုတာ ဘာလဲ။',
        optionsEn: ['A place where only new toys are sold', 'A place where old objects are kept and shown to people', 'A place where food is cooked', 'A place where cars are repaired'],
        optionsMy: ['အသစ်ကစားစရာများသာ ရောင်းသည့်နေရာ', 'ရှေးဟောင်းပစ္စည်းများကို သိမ်းဆည်းပြီး လူတွေကိုပြသသည့်နေရာ', 'အစားအစာချက်ပြုတ်သည့်နေရာ', 'ကားများပြင်ဆင်သည့်နေရာ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Who studies old objects buried in the ground to help us learn about the past?',
        questionMy: 'မြေထဲတွင် မြှုပ်နှံနေသော ရှေးဟောင်းပစ္စည်းများကို လေ့လာပြီး အတိတ်ကာလအကြောင်း သိရှိစေသူကို ဘာခေါ်သနည်း။',
        optionsEn: ['A pilot', 'A singer', 'A scientist called an archaeologist', 'A shop owner'],
        optionsMy: ['လေယာဉ်မှူး', 'သီချင်းဆိုသူ', 'ရှေးဟောင်းသုတေသီ (archaeologist) ဟုခေါ်သော သိပ္ပံပညာရှင်', 'ဆိုင်ပိုင်ရှင်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'How can old photographs help us learn about the past?',
        questionMy: 'ရှေးဟောင်းဓာတ်ပုံများသည် အတိတ်ကာလအကြောင်း လေ့လာရာတွင် ဘယ်လိုအထောက်အကူပြုသနည်း။',
        optionsEn: ['They show us what people, places, and things looked like long ago', 'They can tell jokes', 'They can play music', 'They predict the future'],
        optionsMy: ['ရှေးအခါက လူများ၊ နေရာများနှင့် အရာဝတ္ထုများ ဘယ်လိုပုံစံရှိခဲ့သလဲဆိုတာ ပြသနိုင်သည်', 'ဟာသပြောနိုင်သည်', 'ဂီတဖွင့်နိုင်သည်', 'အနာဂတ်ကို ဟောပြောနိုင်သည်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why is it useful to listen to stories from grandparents or elders?',
        questionMy: 'အဘိုးအဘွား သို့မဟုတ် အသက်ကြီးသူများ၏ ပုံပြင်များကို နားထောင်ခြင်းသည် အဘယ်ကြောင့် အသုံးဝင်သနည်း။',
        optionsEn: ['They can teach us to fly airplanes', 'They can cook every meal for us', 'They can build new computers', 'They can share memories of what life was like when they were young'],
        optionsMy: ['လေယာဉ်ပျံမောင်းနည်းကို သင်ပေးနိုင်သည်', 'အစားအစာတိုင်းကို ချက်ပြုတ်ပေးနိုင်သည်', 'ကွန်ပျူတာအသစ်များကို တည်ဆောက်ပေးနိုင်သည်', 'သူတို့ငယ်စဉ်က ဘဝဘယ်လိုရှိခဲ့သလဲဆိုတာ အမှတ်ရဖွယ်များကို ဝေမျှပေးနိုင်သည်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What do we call very old objects, such as pots or tools, that were made long ago and help us learn about the past?',
        questionMy: 'အိုးများ သို့မဟုတ် ကိရိယာများကဲ့သို့ ရှေးကတည်းကလုပ်ခဲ့ပြီး အတိတ်ကာလအကြောင်း လေ့လာရာတွင် အထောက်အကူပြုသည့် အလွန်ဟောင်းနွမ်းသည့်ပစ္စည်းများကို ဘာခေါ်သနည်း။',
        optionsEn: ['Toys', 'Vegetables', 'Artifacts', 'Machines'],
        optionsMy: ['ကစားစရာများ', 'ဟင်းသီးဟင်းရွက်များ', 'ရှေးဟောင်းအထောက်အထားပစ္စည်းများ (artifacts)', 'စက်ယန္တရားများ'],
        correctIndex: 2,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year3-history-4',
    subject: 'history',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Everyday Life in Myanmar Long Ago',
    titleMy: 'ရှေးက မြန်မာပြည်ရှိ နေ့စဉ်ဘဝ',
    descriptionEn: 'Step back in time to see how people in Myanmar traveled, farmed, and lived before electricity and cars were common.',
    descriptionMy: 'လျှပ်စစ်နှင့် ကားများ မရေပန်းစားမီ မြန်မာပြည်က လူများ ဘယ်လိုသွားလာ၊ လယ်ယာလုပ်ကိုင်၊ နေထိုင်ခဲ့ကြသလဲဆိုတာ အတိတ်ကာလကို ပြန်လည်လှည့်ကြည့်ကြပါစို့။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'Before cars were common, how did many people in Myanmar travel from place to place?',
        questionMy: 'ကားများ မရေပန်းစားမီက မြန်မာပြည်ရှိ လူအများစုသည် တစ်နေရာမှတစ်နေရာသို့ ဘယ်လိုသွားလာခဲ့ကြသနည်း။',
        optionsEn: ['By airplane', 'By ox cart or boat', 'By spaceship', 'By subway train'],
        optionsMy: ['လေယာဉ်ဖြင့်', 'နွားလှည်း သို့မဟုတ် လှေဖြင့်', 'အာကာသယာဉ်ဖြင့်', 'မြေအောက်ရထားဖြင့်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Before electric lights were common, what did people often use to light their homes at night?',
        questionMy: 'လျှပ်စစ်မီးမရေပန်းစားမီက ညအချိန် အိမ်ကိုမီးထွန်းရန် လူများ ဘာကို အသုံးများခဲ့ကြသနည်း။',
        optionsEn: ['Flashlights with batteries', 'Neon signs', 'Oil lamps or candles', 'Television screens'],
        optionsMy: ['ဘက်ထရီသုံး မီးရှူးမီးပန်း', 'နီယွန်ဆိုင်းဘုတ်', 'ဆီမီးအိမ် သို့မဟုတ် ဖယောင်းတိုင်', 'ရုပ်မြင်သံကြားစခရင်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What animal did farmers in Myanmar traditionally use to help plough rice fields?',
        questionMy: 'မြန်မာလယ်သမားများသည် ရိုးရာအရ လယ်ထွန်ရန် ဘယ်တိရစ္ဆာန်ကို အသုံးပြုခဲ့ကြသနည်း။',
        optionsEn: ['A buffalo', 'A tiger', 'A dolphin', 'A camel'],
        optionsMy: ['ကျွဲ', 'ကျားကြီး', 'ဒေါ်ဖင်း', 'ကုလားအုတ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Traditional houses in many Myanmar villages were often built raised up on wooden posts. What is one good reason for building houses this way?',
        questionMy: 'မြန်မာကျေးလက်များစွာရှိ ရိုးရာအိမ်များကို သစ်တိုင်များပေါ်တွင် မြှင့်၍ တည်ဆောက်လေ့ရှိကြသည်။ ဤသို့ တည်ဆောက်ခြင်း၏ ကောင်းသောအကြောင်းရင်းတစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: ['To make the roof easier to paint', 'To reduce the number of windows needed', 'To make the house taller than the neighbors for decoration', 'To keep the house safe from rain, floods, and animals on the ground'],
        optionsMy: ['ခေါင်မိုးကို ဆေးသုတ်ရလွယ်ကူစေရန်', 'ပြတင်းပေါက်အရေအတွက် လျှော့ချရန်', 'အိမ်နီးချင်းများထက် အိမ်ကို ပိုမြင့်အောင် အလှဆင်ရန်', 'မိုးရေ၊ ရေကြီးခြင်းနှင့် မြေပြင်ပေါ်ရှိတိရစ္ဆာန်များမှ အိမ်ကို ဘေးကင်းစေရန်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Long ago, before shops sold plastic bags, what did people in Myanmar often use to carry things like fruit or rice home from the market?',
        questionMy: 'ပလပ်စတစ်အိတ်များ မရောင်းချမီ ရှေးအခါက မြန်မာပြည်ရှိ လူများသည် ဈေးမှ အသီးအနှံ သို့မဟုတ် ဆန်စသည်တို့ကို အိမ်ပြန်သယ်ဆောင်ရန် ဘာကို အသုံးများခဲ့ကြသနည်း။',
        optionsEn: ['Metal boxes only', 'Baskets woven from bamboo', 'Glass bottles only', 'Paper cups only'],
        optionsMy: ['သတ္တုသေတ္တာများသာ', 'ဝါးဖြင့်ရက်လုပ်ထားသော တောင်းများ', 'ဖန်ပုလင်းများသာ', 'စက္ကူခွက်များသာ'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year3-history-5',
    subject: 'history',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Ancient Civilizations of the World',
    titleMy: 'ကမ္ဘာ့ ရှေးဟောင်းယဉ်ကျေးမှုများ',
    descriptionEn: 'Travel back thousands of years to meet the ancient Egyptians, Chinese, and Romans and discover their amazing achievements.',
    descriptionMy: 'နှစ်ထောင်ပေါင်းများစွာ နောက်ပြန်သွားပြီး ရှေးအီဂျစ်၊ တရုတ်နှင့် ရောမလူများကို တွေ့ဆုံကာ သူတို့၏ အံ့ဖွယ်ကောင်းသော စွမ်းဆောင်ချက်များကို ရှာဖွေလေ့လာကြပါစို့။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'Ancient Egypt was located along the banks of which famous river?',
        questionMy: 'ရှေးအီဂျစ်နိုင်ငံသည် မည်သည့် နာမည်ကျော် မြစ်၏ ကမ်းနားတွင် တည်ရှိခဲ့သနည်း။',
        optionsEn: ['The Nile River', 'The Amazon River', 'The Ayeyarwady River', 'The Yangtze River'],
        optionsMy: ['နိုင်းမြစ်', 'အမေဇုန်းမြစ်', 'ဧရာဝတီမြစ်', 'ယန်စီကျန်းမြစ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why did the ancient Egyptians build the huge pyramids?',
        questionMy: 'ရှေးအီဂျစ်လူများသည် အဘယ်ကြောင့် ပိရမစ်ကြီးများကို တည်ဆောက်ခဲ့ကြသနည်း။',
        optionsEn: ['To use as schools', 'To use as tombs for their pharaohs (kings)', 'To use as marketplaces', 'To use as swimming pools'],
        optionsMy: ['ကျောင်းများအဖြစ် အသုံးပြုရန်', 'သူတို့၏ ဖာရိုဘုရင်များ (pharaohs) ၏ သင်္ချိုင်းအဖြစ် အသုံးပြုရန်', 'ဈေးဆိုင်များအဖြစ် အသုံးပြုရန်', 'ရေကူးကန်များအဖြစ် အသုံးပြုရန်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'The ancient Egyptians wrote using picture symbols. What do we call this kind of writing?',
        questionMy: 'ရှေးအီဂျစ်လူများသည် ပုံသင်္ကေတများဖြင့် ရေးသားခဲ့ကြသည်။ ဤစာရေးနည်းကို ဘာခေါ်သနည်း။',
        optionsEn: ['Braille', 'Morse code', 'Hieroglyphics', 'Sign language'],
        optionsMy: ['ဘရေးလ်စာ', 'မော့စ်ကုဒ်', 'ဟိရိုဂလစ်ဖစ် (hieroglyphics) ပုံစာ', 'လက်သင်္ကေတဘာသာစကား'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What long structure did the ancient Chinese build to help protect their land from invaders?',
        questionMy: 'ရှေးတရုတ်လူများသည် သူတို့၏နယ်မြေကို ကျူးကျော်သူများထံမှ ကာကွယ်ရန် မည်သည့် ရှည်လျားသော အဆောက်အအုံကို တည်ဆောက်ခဲ့သနည်း။',
        optionsEn: ['The Eiffel Tower', 'The Leaning Tower', 'A giant bridge across the ocean', 'The Great Wall of China'],
        optionsMy: ['အိုင်ဖယ်ရဲတာဝါ', 'အနောက်စောင်းရဲတာဝါ', 'သမုဒ္ဒရာကို ဖြတ်သန်းသော ကြီးမားသောတံတား', 'တရုတ်မြို့ရိုးကြီး (Great Wall of China)'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'The ancient Romans were skilled builders. What did they build to carry water from faraway places into their cities?',
        questionMy: 'ရှေးရောမလူများသည် ကျွမ်းကျင်သော အဆောက်အအုံတည်ဆောက်သူများ ဖြစ်ခဲ့ကြသည်။ ရေကို ဝေးလံသောနေရာများမှ မြို့များအတွင်းသို့ သယ်ဆောင်ရန် သူတို့ ဘာတည်ဆောက်ခဲ့ကြသနည်း။',
        optionsEn: ['Aqueducts', 'Submarines', 'Elevators', 'Telephone wires'],
        optionsMy: ['ရေပြွန်တံတား (aqueducts)', 'ရေငုပ်သင်္ဘော', 'ဓာတ်လှေခါး', 'တယ်လီဖုန်းကြိုး'],
        correctIndex: 0,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year4-history-3',
    subject: 'history',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Bagan: City of a Thousand Temples',
    titleMy: 'ပုဂံ - ဘုရားပေါင်းထောင်ချီရှိသော မြို့တော်',
    descriptionEn: 'Travel back in time to Bagan, an ancient Myanmar city filled with thousands of temples and pagodas built long ago.',
    descriptionMy: 'ရှေးကျသောပုဂံမြို့ကို ပြန်လည်လည်ပတ်ကြည့်ရှုပြီး ရှေးက တည်ဆောက်ခဲ့ကြသော ဘုရားပေါင်းထောင်ချီရှိသည့် မြို့တော်အကြောင်း လေ့လာကြပါစို့။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is Bagan famous for?',
        questionMy: 'ပုဂံမြို့သည် ဘာကြောင့် ကျော်ကြားသနည်း။',
        optionsEn: ['Its thousands of ancient temples and pagodas', 'Its tall snowy mountains', 'Its big shopping malls', 'Its underground subway trains'],
        optionsMy: ['ဘုရားနှင့် စေတီပေါင်းထောင်ချီများ ရှိသောကြောင့်', 'မြင့်မားသောနှင်းတောင်များရှိသောကြောင့်', 'စျေးဝယ်စင်တာကြီးများရှိသောကြောင့်', 'မြေအောက်ရထားများရှိသောကြောင့်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which river flows near the ancient city of Bagan?',
        questionMy: 'ပုဂံရှေးဟောင်းမြို့တော်အနီးတွင် မည်သည့်မြစ်စီးဆင်းသနည်း။',
        optionsEn: ['The Nile River', 'The Amazon River', 'The Ayeyarwady River', 'The Yangtze River'],
        optionsMy: ['နိုင်းလ်မြစ်', 'အမေဇုန်မြစ်', 'ဧရာဝတီမြစ်', 'ယန်စီမြစ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Which Myanmar king is remembered for founding the Bagan Kingdom?',
        questionMy: 'ပုဂံခေတ်ကို တည်ထောင်ခဲ့သူအဖြစ် အောက်ပါဘုရင်များအနက် မည်သူကို မှတ်တမ်းတင်ကြသနည်း။',
        optionsEn: ['King Bayinnaung', 'King Alaungpaya', 'King Mindon', 'King Anawrahta'],
        optionsMy: ['ဘုရင့်နောင်', 'အလောင်းဘုရား', 'မင်းတုန်းမင်း', 'အနော်ရထာ'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'About how long ago were most of Bagan\'s temples built?',
        questionMy: 'ပုဂံရှိ ဘုရားအများစုကို လွန်ခဲ့သော အချိန်ကာလ မည်မျှက တည်ဆောက်ခဲ့ကြသနည်း။',
        optionsEn: ['Just last year', 'Almost a thousand years ago', 'About ten years ago', 'In the year 2020'],
        optionsMy: ['တနှစ်အတွင်းမှာသာ', 'နှစ်ပေါင်းတစ်ထောင်နီးပါးက', 'ဆယ်နှစ်ခန့်က', '၂၀၂၀ ပြည့်နှစ်တွင်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Why do many visitors travel to Bagan today?',
        questionMy: 'ယနေ့ ဧည့်သည်အများအပြားသည် အဘယ်ကြောင့် ပုဂံသို့ ခရီးသွားလေ့ရှိကြသနည်း။',
        optionsEn: ['To ski down mountains', 'To visit a big zoo', 'To see its many ancient temples and pagodas', 'To watch a rocket launch'],
        optionsMy: ['တောင်ပေါ်မှ စကီးစီးရန်', 'တိရစ္ဆာန်ရုံကြီးတစ်ခုသို့ လည်ပတ်ရန်', 'ရှေးဟောင်းဘုရား၊ စေတီများစွာကို လေ့လာကြည့်ရှုရန်', 'ဒုံးပျံပစ်လွှတ်သည်ကို ကြည့်ရန်'],
        correctIndex: 2,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year4-history-4',
    subject: 'history',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Ancient Egypt: Pyramids and Pharaohs',
    titleMy: 'ရှေးဟောင်းအီဂျစ်ပြည် - ပိရမစ်များနှင့် ဖာရိုဘုရင်များ',
    descriptionEn: 'Journey to ancient Egypt, where kings called pharaohs ruled and workers built huge stone pyramids beside the Nile River.',
    descriptionMy: 'ဖာရိုဘုရင်ဟုခေါ်သော ဘုရင်များ အုပ်ချုပ်ခဲ့ပြီး နိုင်းလ်မြစ်ကမ်းနားတွင် ကျောက်တုံးကြီးများဖြင့် ပိရမစ်တွေ တည်ဆောက်ခဲ့ကြသော ရှေးဟောင်းအီဂျစ်ပြည်ကို ခရီးသွားကြည့်ကြပါစို့။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'Ancient Egypt grew up along the banks of which river?',
        questionMy: 'ရှေးဟောင်းအီဂျစ်ပြည်သည် မည်သည့်မြစ်ကမ်းတစ်လျှောက်တွင် တည်ထောင်ခဲ့သနည်း။',
        optionsEn: ['The Ayeyarwady River', 'The Amazon River', 'The Nile River', 'The Mississippi River'],
        optionsMy: ['ဧရာဝတီမြစ်', 'အမေဇုန်မြစ်', 'နိုင်းလ်မြစ်', 'မစ္စစ္စပီမြစ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What do we call the rulers of ancient Egypt?',
        questionMy: 'ရှေးဟောင်းအီဂျစ်ပြည်၏ ဘုရင်များကို ဘာခေါ်သနည်း။',
        optionsEn: ['Presidents', 'Governors', 'Mayors', 'Pharaohs'],
        optionsMy: ['သမ္မတများ', 'ဘုရင်ခံများ', 'မြို့တော်ဝန်များ', 'ဖာရိုဘုရင်များ'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What were the great stone pyramids of Egypt originally built to be?',
        questionMy: 'အီဂျစ်ပြည်ရှိ ကျောက်ပိရမစ်ကြီးများကို မူလက ဘာအဖြစ် တည်ဆောက်ခဲ့ကြသနည်း။',
        optionsEn: ['Tombs for kings and queens', 'Schools for children', 'Marketplaces', 'Sports stadiums'],
        optionsMy: ['ဘုရင်၊ ဘုရင်မများ၏ သင်္ချိုင်းများအဖြစ်', 'ကလေးများအတွက် ကျောင်းများအဖြစ်', 'စျေးဆိုင်များအဖြစ်', 'အားကစားကွင်းများအဖြစ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What special picture writing did the ancient Egyptians use?',
        questionMy: 'ရှေးဟောင်းအီဂျစ်လူမျိုးများ အသုံးပြုခဲ့သော အထူးပုံစံစာလုံးကို ဘာခေါ်သနည်း။',
        optionsEn: ['Emojis', 'Braille', 'Hieroglyphs', 'Morse code'],
        optionsMy: ['အီမိုဂျီများ', 'မျက်မမြင်စာလုံး', 'ဟိရိုဂလစ်ဖစ် ပုံစံစာလုံး', 'မော့စ်ကုဒ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What is a \'mummy\' in ancient Egypt?',
        questionMy: 'ရှေးဟောင်းအီဂျစ်ပြည်တွင် \'မမ်မီ\' ဆိုတာ ဘာလဲ။',
        optionsEn: ['A modern robot', 'A body that was specially preserved and wrapped in cloth', 'A type of pyramid', 'A king\'s crown'],
        optionsMy: ['ခေတ်သစ်စက်ရုပ်တစ်ခု', 'အထူးနည်းလမ်းဖြင့် ထိန်းသိမ်း၍ အထည်နှင့်ပတ်ထားသော အလောင်း', 'ပိရမစ်အမျိုးအစားတစ်ခု', 'ဘုရင့်သရဖူ'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year4-history-5',
    subject: 'history',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Mandalay: Myanmar\'s Last Royal Capital',
    titleMy: 'မန္တလေး - မြန်မာ့နောက်ဆုံးဘုရင့်နန်းတော်မြို့',
    descriptionEn: 'Discover Mandalay, the city a Myanmar king built to be his royal capital, and the grand palace where the last kings once lived.',
    descriptionMy: 'မြန်မာဘုရင်တစ်ပါး နန်းတော်မြို့အဖြစ် တည်ထောင်ခဲ့သော မန္တလေးမြို့နှင့် နောက်ဆုံးဘုရင်များ နေထိုင်ခဲ့ကြသော နန်းတော်ကြီးအကြောင်း လေ့လာကြည့်ကြပါစို့။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'Who founded the city of Mandalay as Myanmar\'s royal capital?',
        questionMy: 'မန္တလေးမြို့ကို မြန်မာ့ဘုရင့်နန်းတော်မြို့အဖြစ် မည်သူတည်ထောင်ခဲ့သနည်း။',
        optionsEn: ['King Anawrahta', 'King Mindon', 'King Bayinnaung', 'King Thibaw'],
        optionsMy: ['ဘုရင်အနော်ရထာ', 'ဘုရင်မင်းတုန်း', 'ဘုရင့်နောင်', 'ဘုရင်သီပေါ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What grand building did the king live and rule from in Mandalay?',
        questionMy: 'မန္တလေးတွင် ဘုရင်သည် မည်သည့်နေရာကြီးတွင် နေထိုင်၍ တိုင်းပြည်ကို အုပ်ချုပ်ခဲ့သနည်း။',
        optionsEn: ['A lighthouse', 'A train station', 'A palace', 'A stadium'],
        optionsMy: ['မီးပြတိုက်', 'ရထားဘူတာ', 'နန်းတော်', 'အားကစားကွင်း'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Who was the last king to rule from the Mandalay Palace, before Myanmar came under British rule?',
        questionMy: 'မြန်မာနိုင်ငံ ဗြိတိသျှလက်အောက်မကျရောက်မီ မန္တလေးနန်းတော်မှ အုပ်ချုပ်ခဲ့သော နောက်ဆုံးဘုရင်မှာ မည်သူနည်း။',
        optionsEn: ['King Bayinnaung', 'King Anawrahta', 'King Mindon', 'King Thibaw'],
        optionsMy: ['ဘုရင့်နောင်', 'ဘုရင်အနော်ရထာ', 'ဘုရင်မင်းတုန်း', 'ဘုရင်သီပေါ'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Why do people visit the Mandalay Palace grounds today?',
        questionMy: 'ယနေ့ခေတ်တွင် လူများသည် မန္တလေးနန်းတော်ဝင်းသို့ အဘယ်ကြောင့် လာရောက်လည်ပတ်ကြသနည်း။',
        optionsEn: ['To learn about the kings who once lived there', 'To watch football matches', 'To catch fish', 'To plant rice'],
        optionsMy: ['ယခင်ကနေထိုင်ခဲ့ကြသော ဘုရင်များအကြောင်း လေ့လာရန်', 'ဘောလုံးပွဲများ ကြည့်ရှုရန်', 'ငါးဖမ်းရန်', 'စပါးစိုက်ပျိုးရန်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What surrounds the old Mandalay Palace, forming a big square shape to help protect it?',
        questionMy: 'မန္တလေးနန်းတော်ဟောင်းကို ကာကွယ်ရန် စတုရန်းပုံသဏ္ဍာန် ဖြစ်အောင် အဘယ်အရာဝန်းရံထားသနည်း။',
        optionsEn: ['A row of shops', 'A row of tall trees only', 'A row of statues', 'A wall and a moat (water-filled ditch)'],
        optionsMy: ['ဆိုင်တန်းများ', 'သစ်ပင်များသာ', 'ရုပ်ထုတန်းများ', 'မြို့ရိုးနှင့် မြို့ရေတွင်း (ရေမြောင်း)'],
        correctIndex: 3,
      ),
    ],
  ),

  // Final content-parity shortfall batch: fills the last 11 modules
  // across Year 1-4 General Knowledge/Geography/Science, completing the
  // 5-module target for every pair the parity effort touched (History
  // was completed in the prior shortfall batch above). Same
  // generate -> adversarial-verify -> per-pair-retry pipeline as that
  // batch -- all 11 needed modules passed verification this run, no
  // shortfall. This closes out the Year 1-4 GK/Geography/History/Science
  // depth-parity effort: every one of those 16 grade+subject pairs is
  // now at 5 modules.
  PrimaryActivityDef(
    id: 'mock-year1-generalknowledge-5',
    subject: 'generalknowledge',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Weather and the Seasons',
    titleMy: 'ရာသီဥတုနှင့် ရာသီများ',
    descriptionEn: 'Discover Myanmar\'s three seasons, rain, sun, and how to dress for different kinds of weather.',
    descriptionMy: 'မြန်မာနိုင်ငံ၏ ရာသီသုံးမျိုး၊ မိုး၊ နေရောင်နှင့် ရာသီဥတုအမျိုးမျိုးအတွက် အဝတ်အစားဝတ်ဆင်ပုံများကို လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'How many seasons does Myanmar have in a year?',
        questionMy: 'မြန်မာနိုင်ငံတွင် တစ်နှစ်လျှင် ရာသီပေါင်း မည်မျှ ရှိသနည်း။',
        optionsEn: ['Two seasons', 'Four seasons', 'Three seasons', 'Five seasons'],
        optionsMy: ['နှစ်ရာသီ', 'လေးရာသီ', 'သုံးရာသီ', 'ငါးရာသီ'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What do we call the season when it rains a lot in Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံတွင် မိုးများစွာ ရွာသွန်းသော ရာသီကို အဘယ်သို့ခေါ်သနည်း။',
        optionsEn: ['Rainy season', 'Cool season', 'Hot season', 'Dry season'],
        optionsMy: ['မိုးရာသီ', 'ဆောင်းရာသီ', 'နွေရာသီ', 'ခြောက်သွေ့ရာသီ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What can we carry to stay dry when it rains?',
        questionMy: 'မိုးရွာနေချိန်တွင် ရေမစိုအောင် ကိုင်ဆောင်နိုင်သည့် ပစ္စည်းက အဘယ်နည်း။',
        optionsEn: ['A fan', 'A blanket', 'A kite', 'An umbrella'],
        optionsMy: ['ပန်ကာ', 'စောင်', 'ဂုံးပျံ', 'ထီး'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What do we call small frozen bits of water that fall from the sky in very cold places?',
        questionMy: 'အလွန်အေးသောနေရာများတွင် ကောင်းကင်မှ ကျလာတတ်သော ရေခဲပွင့်ကလေးများကို အဘယ်သို့ခေါ်သနည်း။',
        optionsEn: ['Rain', 'Snow', 'Fog', 'Dew'],
        optionsMy: ['မိုး', 'နှင်း', 'မြူ', 'နှင်းစက်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What should we wear on a very hot, sunny day to protect us from the sun?',
        questionMy: 'နေပူပြင်းသော နေ့တွင် နေရောင်ခြည်မှကာကွယ်ရန် ဆောင်းသင့်သည့် ပစ္စည်းက အဘယ်နည်း။',
        optionsEn: ['A raincoat', 'A hat', 'Boots', 'Gloves'],
        optionsMy: ['မိုးကာအင်္ကျီ', 'ဦးထုပ်', 'ဖိနပ်ရှည်', 'လက်အိတ်'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year1-geography-3',
    subject: 'geography',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Places in Our Neighborhood',
    titleMy: 'ကျွန်ုပ်တို့ ရပ်ကွက်ရှိ နေရာများ',
    descriptionEn: 'Explore the shops, school, hospital, and other important places we visit near our home.',
    descriptionMy: 'ကျွန်ုပ်တို့ အိမ်အနီးတွင် သွားရောက်လေ့ရှိသော ဆိုင်များ၊ ကျောင်း၊ ဆေးရုံနှင့် အခြားအရေးကြီးသောနေရာများကို စူးစမ်းလေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Where do we go to buy vegetables, fruits, and fish?',
        questionMy: 'ဟင်းသီးဟင်းရွက်၊ သစ်သီးနှင့် ငါးများကို ဝယ်ရန် ကျွန်ုပ်တို့ မည်သည့်နေရာသို့ သွားကြသနည်း။',
        optionsEn: ['School', 'Market', 'Hospital', 'Playground'],
        optionsMy: ['ကျောင်း', 'ဈေး', 'ဆေးရုံ', 'ကစားကွင်း'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Where do we go when we are sick and need to see a doctor?',
        questionMy: 'ကျွန်ုပ်တို့ ဖျားနာပြီး ဆရာဝန်နှင့် တွေ့ဖို့လိုအပ်သောအခါ မည်သည့်နေရာသို့ သွားကြသနည်း။',
        optionsEn: ['Market', 'Playground', 'Hospital', 'School'],
        optionsMy: ['ဈေး', 'ကစားကွင်း', 'ဆေးရုံ', 'ကျောင်း'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Where do children go every day to learn to read and write?',
        questionMy: 'ကလေးများသည် ဖတ်တတ်၊ ရေးတတ်ရန် နေ့စဉ် မည်သည့်နေရာသို့ သွားကြသနည်း။',
        optionsEn: ['Hospital', 'Market', 'Playground', 'School'],
        optionsMy: ['ဆေးရုံ', 'ဈေး', 'ကစားကွင်း', 'ကျောင်း'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What place has fun equipment where children can play, like swings and slides?',
        questionMy: 'ကလေးများ ကစားနိုင်သော ကစားစရာပစ္စည်းများ ပါရှိသည့်နေရာသည် အဘယ်နည်း။',
        optionsEn: ['Playground', 'Hospital', 'Market', 'School'],
        optionsMy: ['ကစားကွင်း', 'ဆေးရုံ', 'ဈေး', 'ကျောင်း'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Where do many Myanmar people go to pray and make offerings?',
        questionMy: 'မြန်မာလူမျိုးများသည် ဆုတောင်းရန်နှင့် အလှူပြုရန် မကြာခဏ မည်သည့်နေရာသို့ သွားလေ့ရှိသနည်း။',
        optionsEn: ['Market', 'Pagoda', 'Playground', 'Hospital'],
        optionsMy: ['ဈေး', 'ဘုရား (Pagoda)', 'ကစားကွင်း', 'ဆေးရုံ'],
        correctIndex: 1,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year1-geography-4',
    subject: 'geography',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'Natural Things and Things People Make',
    titleMy: 'သဘာဝပစ္စည်းများနှင့် လူလုပ်ပစ္စည်းများ',
    descriptionEn: 'Learn to tell apart things that come from nature and things that people build or make.',
    descriptionMy: 'သဘာဝကဖြစ်ပေါ်စေသော အရာများနှင့် လူသားများ တည်ဆောက်သို့မဟုတ် ပြုလုပ်သောအရာများကို ခွဲခြားသိရှိအောင် လေ့လာပါ။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Which of these is made by nature, not built by people?',
        questionMy: 'အောက်ပါအရာများထဲမှ မည်သည်ကို လူလုပ်ခြင်းမဟုတ်ဘဲ သဘာဝကဖန်တီးထားသနည်း။',
        optionsEn: ['A tree', 'A house', 'A road', 'A bridge'],
        optionsMy: ['သစ်ပင်', 'အိမ်', 'လမ်း', 'တံတား'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is built by people?',
        questionMy: 'အောက်ပါအရာများထဲမှ မည်သည်ကို လူများက တည်ဆောက်ထားသနည်း။',
        optionsEn: ['A river', 'A mountain', 'A school', 'A forest'],
        optionsMy: ['မြစ်', 'တောင်', 'ကျောင်း', 'တောအုပ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'Who builds houses and roads?',
        questionMy: 'အိမ်များနှင့် လမ်းများကို မည်သူတို့က တည်ဆောက်ကြသနည်း။',
        optionsEn: ['Fish', 'People', 'Birds', 'Trees'],
        optionsMy: ['ငါးများ', 'လူများ', 'ငှက်များ', 'သစ်ပင်များ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which of these grows in the forest all by itself, without people planting it?',
        questionMy: 'လူတို့စိုက်ပျိုးခြင်းမရှိဘဲ တောအုပ်ထဲတွင် သဘာဝအလျောက် ကြီးထွားလာသည့်အရာသည် အဘယ်နည်း။',
        optionsEn: ['A car', 'A toy', 'A house', 'A wild tree'],
        optionsMy: ['ကား', 'အရုပ်ကစားစရာ', 'အိမ်', 'တောရိုင်းသစ်ပင်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Which one of these is a natural place?',
        questionMy: 'အောက်ပါနေရာများထဲမှ မည်သည်က သဘာဝနေရာဖြစ်သနည်း။',
        optionsEn: ['A market', 'A hospital', 'A mountain', 'A school'],
        optionsMy: ['ဈေး', 'ဆေးရုံ', 'တောင်', 'ကျောင်း'],
        correctIndex: 2,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year1-geography-5',
    subject: 'geography',
    grade: Grade.year1,
    contentType: 'quiz',
    titleEn: 'My Country, Myanmar',
    titleMy: 'ငါတို့ နိုင်ငံ မြန်မာ',
    descriptionEn: 'Learn about Myanmar, our home country — its flag, capital city, and national flower.',
    descriptionMy: 'ကျွန်ုပ်တို့ နေအိမ်နိုင်ငံဖြစ်သော မြန်မာနိုင်ငံအကြောင်း၊ အလံ၊ မြို့တော်နှင့် နိုင်ငံ့ပန်းကို လေ့လာကြရအောင်။',
    starsReward: 10,
    questions: [
      QuizQuestion(
        questionEn: 'Which color is NOT found in Myanmar\'s national flag?',
        questionMy: 'မြန်မာနိုင်ငံ အလံတွင် မပါဝင်သော အရောင်မှာ မည်သည်နည်း။',
        optionsEn: ['Blue', 'Yellow', 'Green', 'Red'],
        optionsMy: ['အပြာရောင်', 'အဝါရောင်', 'အစိမ်းရောင်', 'အနီရောင်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What shape sits in the center of Myanmar\'s national flag?',
        questionMy: 'မြန်မာနိုင်ငံအလံ၏ အလယ်တွင် မည်သည့်ပုံသဏ္ဍာန်ရှိသနည်း။',
        optionsEn: ['Circle', 'Triangle', 'Star', 'Square'],
        optionsMy: ['စက်ဝိုင်း', 'တြိဂံ', 'ကြယ်', 'စတုရန်း'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What is the capital city of Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံ၏ မြို့တော်မှာ မည်သည့်မြို့နည်း။',
        optionsEn: ['Yangon', 'Naypyidaw', 'Mandalay', 'Bagan'],
        optionsMy: ['ရန်ကုန်', 'နေပြည်တော်', 'မန္တလေး', 'ပုဂံ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What is the largest city in Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံရှိ အကြီးဆုံးမြို့မှာ မည်သည့်မြို့နည်း။',
        optionsEn: ['Mandalay', 'Naypyidaw', 'Bagan', 'Yangon'],
        optionsMy: ['မန္တလေး', 'နေပြည်တော်', 'ပုဂံ', 'ရန်ကုန်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What is the name of Myanmar\'s national flower?',
        questionMy: 'မြန်မာနိုင်ငံ၏ နိုင်ငံ့ပန်းအမည်မှာ အဘယ်နည်း။',
        optionsEn: ['Lotus', 'Rose', 'Padauk', 'Tulip'],
        optionsMy: ['ကြာ', 'နှင်းဆီ', 'ပိတောက်', 'တူးလစ်ပ်'],
        correctIndex: 2,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year2-geography-4',
    subject: 'geography',
    grade: Grade.year2,
    contentType: 'quiz',
    titleEn: 'Weather and Seasons',
    titleMy: 'ရာသီဥတုနှင့် ရာသီများ',
    descriptionEn: 'Learn about sunny days, rainy days, and the seasons that change throughout the year in Myanmar.',
    descriptionMy: 'နေသာသောနေ့ရက်များ၊ မိုးရွာသောနေ့ရက်များနှင့် မြန်မာနိုင်ငံ၏ တစ်နှစ်ပတ်လုံး ပြောင်းလဲနေသော ရာသီများအကြောင်း လေ့လာပါ။',
    starsReward: 12,
    questions: [
      QuizQuestion(
        questionEn: 'What falls from the sky during the rainy season?',
        questionMy: 'မိုးရာသီတွင် ကောင်းကင်မှ အဘယ်အရာ ကျလာသနည်း။',
        optionsEn: ['Rain', 'Snow', 'Sand', 'Leaves'],
        optionsMy: ['မိုး', 'နှင်း', 'သဲ', 'အရွက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which season in Myanmar is the hottest?',
        questionMy: 'မြန်မာနိုင်ငံ၏ ရာသီများထဲတွင် အပူဆုံးသော ရာသီမှာ အဘယ်ရာသီနည်း။',
        optionsEn: ['Cool season', 'Hot season', 'Rainy season', 'Windy season'],
        optionsMy: ['ဆောင်းရာသီ', 'နွေရာသီ', 'မိုးရာသီ', 'လေပြင်းရာသီ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What should you carry with you when it looks like it might rain?',
        questionMy: 'မိုးရွာမည့်ပုံပေါ်နေလျှင် သင်အဘယ်အရာကို ယူဆောင်သင့်သနည်း။',
        optionsEn: ['A fan', 'A ball', 'An umbrella', 'Sunglasses'],
        optionsMy: ['ပန်ကာ', 'ဘောလုံး', 'ထီး', 'နေကာမျက်မှန်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'During the cool season in Myanmar, how does the weather usually feel?',
        questionMy: 'မြန်မာနိုင်ငံ၏ ဆောင်းရာသီအတွင်း ရာသီဥတုသည် များသောအားဖြင့် မည်သို့ ခံစားရသနည်း။',
        optionsEn: ['Very hot', 'Very rainy', 'Snowy', 'Cool and a little cold'],
        optionsMy: ['အလွန်ပူပြင်းသည်', 'အလွန်မိုးများသည်', 'နှင်းများသည်', 'အေးပြီး အနည်းငယ် အေးမြသည်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'What might you wear to stay warm during the cool season?',
        questionMy: 'ဆောင်းရာသီအတွင်း နွေးထွေးနေစေရန် သင်အဘယ်အရာကို ဝတ်ဆင်နိုင်သနည်း။',
        optionsEn: ['Swimming shorts', 'A sun hat', 'A warm jacket', 'Sandals only'],
        optionsMy: ['ရေကူးဘောင်းဘီတို', 'နေကာဦးထုပ်', 'နွေးထွေးသော ဂျာကက်', 'ဖိနပ်တိုသာ'],
        correctIndex: 2,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year3-generalknowledge-5',
    subject: 'generalknowledge',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Our Sun, Moon, and Solar System',
    titleMy: 'ကျွန်ုပ်တို့၏ နေ၊ လနှင့် နေအဖွဲ့ဝင်စနစ်',
    descriptionEn: 'Learn simple facts about the Sun, Moon, Earth, and the planets that make up our solar system.',
    descriptionMy: 'နေ၊ လ၊ ကမ္ဘာနှင့် ကျွန်ုပ်တို့၏ နေအဖွဲ့ဝင်စနစ်ကို ဖွဲ့စည်းထားသော ဂြိုဟ်များအကြောင်း ရိုးရှင်းသောအချက်အလက်များကို လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'Which of these is the closest star to Earth?',
        questionMy: 'အောက်ပါတို့အနက် ကမ္ဘာနှင့်အနီးဆုံးကြယ်မှာ အဘယ်နည်း။',
        optionsEn: ['The Moon', 'The Sun', 'Mars', 'Jupiter'],
        optionsMy: ['လ', 'နေ', 'အင်္ဂါဂြိုဟ်', 'ကြာသပတေးဂြိုဟ်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which planet is our home, the one we live on?',
        questionMy: 'ကျွန်ုပ်တို့ နေထိုင်ရာ ဂြိုဟ်မှာ အဘယ်ဂြိုဟ်နည်း။',
        optionsEn: ['Mars', 'Venus', 'Earth', 'Saturn'],
        optionsMy: ['အင်္ဂါဂြိုဟ်', 'သောကြာဂြိုဟ်', 'ကမ္ဘာဂြိုဟ်', 'စနေဂြိုဟ်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What do we call the object in the night sky that slowly changes shape each month?',
        questionMy: 'လစဉ် ပုံသဏ္ဍာန်ဖြည်းညင်းစွာ ပြောင်းလဲသွားတတ်သည့် ညအချိန်ကောင်းကင်ရှိအရာဝတ္ထုကို အဘယ်ဟုခေါ်သနည်း။',
        optionsEn: ['A rainbow', 'A cloud', 'The Sun', 'The Moon'],
        optionsMy: ['သက်တံ', 'တိမ်', 'နေ', 'လ'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'How many planets are there in our solar system?',
        questionMy: 'ကျွန်ုပ်တို့၏ နေအဖွဲ့ဝင်စနစ်တွင် ဂြိုဟ်စုစုပေါင်း မည်မျှရှိသနည်း။',
        optionsEn: ['8', '6', '10', '5'],
        optionsMy: ['၈ခု', '၆ခု', '၁၀ခု', '၅ခု'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What gives the Earth light and warmth during the day?',
        questionMy: 'နေ့အချိန်တွင် ကမ္ဘာမြေအား အလင်းရောင်နှင့် အပူချိန်ပေးသောအရာမှာ အဘယ်နည်း။',
        optionsEn: ['Clouds', 'Stars', 'The Moon', 'The Sun'],
        optionsMy: ['တိမ်များ', 'ကြယ်များ', 'လ', 'နေ'],
        correctIndex: 3,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year3-geography-5',
    subject: 'geography',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Weather and Seasons',
    titleMy: 'ရာသီဥတုနှင့် ရာသီများ',
    descriptionEn: 'Learn about the hot, rainy, and cool seasons, and how the weather changes throughout the year in Myanmar.',
    descriptionMy: 'မြန်မာနိုင်ငံတွင် တစ်နှစ်ပတ်လုံး ရာသီဥတု မည်သို့ ပြောင်းလဲသည်ကို လေ့လာပြီး နွေရာသီ၊ မိုးရာသီနှင့် ဆောင်းရာသီများအကြောင်း သိရှိလေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'How many main seasons does Myanmar have in a year?',
        questionMy: 'မြန်မာနိုင်ငံတွင် တစ်နှစ်လျှင် အဓိကရာသီ မည်မျှရှိသနည်း။',
        optionsEn: ['Two seasons', 'Three seasons', 'Four seasons', 'Five seasons'],
        optionsMy: ['နှစ်ရာသီ', 'သုံးရာသီ', 'လေးရာသီ', 'ငါးရာသီ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which season brings the most rain to Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံသို့ မိုးအများဆုံးရွာသွန်းသော ရာသီမှာ အဘယ်နည်း။',
        optionsEn: ['Hot season', 'Rainy season', 'Cool season', 'Dry season'],
        optionsMy: ['နွေရာသီ', 'မိုးရာသီ', 'ဆောင်းရာသီ', 'မိုးခေါင်ရာသီ'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What should you wear on a very hot, sunny day to stay cool?',
        questionMy: 'နေပူပြင်းသောနေ့တွင် အေးမြစွာနေနိုင်ရန် မည်သည့်အဝတ်အစားကို ဝတ်သင့်သနည်း။',
        optionsEn: ['Light clothes and a hat', 'A thick winter coat', 'Rain boots and an umbrella', 'A wool sweater'],
        optionsMy: ['ပေါ့ပါးသောအဝတ်နှင့် ဦးထုပ်', 'ဆောင်းထူသောကုတ်အင်္ကျီ', 'မိုးဖုတ်ဖိနပ်နှင့် ထီး', 'သိုးမွှေးဆွယ်တာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'During the rainy season, what do we often see falling from dark clouds?',
        questionMy: 'မိုးရာသီအတွင်း မှောင်နေသောတိမ်တိုက်များမှ မကြာခဏကျရောက်တတ်သည်မှာ အဘယ်နည်း။',
        optionsEn: ['Snow', 'Rain', 'Sand', 'Leaves'],
        optionsMy: ['နှင်း', 'မိုး', 'သဲ', 'အရွက်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which season is the coolest time of the year in Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံတွင် တစ်နှစ်တာ အအေးဆုံးအချိန်ကာလမှာ မည်သည့်ရာသီနည်း။',
        optionsEn: ['Hot season', 'Rainy season', 'Cool season', 'Autumn season'],
        optionsMy: ['နွေရာသီ', 'မိုးရာသီ', 'ဆောင်းရာသီ', 'ဆောင်းဦးရာသီ'],
        correctIndex: 2,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year3-science-5',
    subject: 'science',
    grade: Grade.year3,
    contentType: 'quiz',
    titleEn: 'Sound and Hearing',
    titleMy: 'အသံနှင့် ကြားနာခြင်း',
    descriptionEn: 'Learn how sounds are made and how we hear them.',
    descriptionMy: 'အသံများ မည်သို့ဖြစ်ပေါ်လာသည်နှင့် ကျွန်ုပ်တို့ မည်သို့ကြားနာကြသည်ကို လေ့လာပါ။',
    starsReward: 14,
    questions: [
      QuizQuestion(
        questionEn: 'Which body part do we use to hear sounds?',
        questionMy: 'အသံများကို ကြားနာရန် မည်သည့်ခန္ဓာကိုယ်အစိတ်အပိုင်းကို သုံးသနည်း။',
        optionsEn: ['Ears', 'Eyes', 'Nose', 'Tongue'],
        optionsMy: ['နား', 'မျက်လုံး', 'နှာခေါင်း', 'လျှာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What happens to an object to make it produce a sound?',
        questionMy: 'အရာဝတ္ထုတစ်ခုက အသံထွက်ရန် ၎င်း၌ မည်သို့ဖြစ်ပျက်ရသနည်း။',
        optionsEn: ['It melts', 'It vibrates', 'It freezes', 'It disappears'],
        optionsMy: ['အရည်ပျော်သွားသည်', 'တုန်ခါသည်', 'ခဲသွားသည်', 'ပျောက်ကွယ်သွားသည်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which of these instruments makes its sound by being hit or struck?',
        questionMy: 'အောက်ပါတူရိယာများအနက် မည်သည့်တူရိယာသည် ရိုက်ခတ်ခြင်းဖြင့် အသံထွက်သနည်း။',
        optionsEn: ['Violin', 'Flute', 'Drum', 'Recorder'],
        optionsMy: ['ဗိုင်အိုလင်း (Violin)', 'ပလွေ (Flute)', 'ဒရမ် (Drum)', 'ရီကော်ဒါ (Recorder)'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'A loud sound and a quiet sound mainly differ in their:',
        questionMy: 'အသံကျယ်ခြင်းနှင့် အသံသိမ်ခြင်းသည် အဓိကအားဖြင့် မည်သည့်အချက်တွင် ကွာခြားသနည်း။',
        optionsEn: ['Color', 'Volume', 'Smell', 'Weight'],
        optionsMy: ['အရောင်', 'အသံအတိုးအကျယ် (Volume)', 'အနံ့', 'အလေးချိန်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'How does sound travel from one place to another?',
        questionMy: 'အသံသည် နေရာတစ်ခုမှ တစ်ခုသို့ မည်သို့ ပျံ့နှံ့သွားသနည်း။',
        optionsEn: ['Through invisible waves', 'Through light beams', 'Through electricity', 'Through magnetism'],
        optionsMy: ['မျက်စိမမြင်ရသော လှိုင်းများမှတစ်ဆင့်', 'အလင်းရောင်ကြောင်းများမှတစ်ဆင့်', 'လျှပ်စစ်မှတစ်ဆင့်', 'သံလိုက်စွမ်းအားမှတစ်ဆင့်'],
        correctIndex: 0,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year4-generalknowledge-5',
    subject: 'generalknowledge',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'Exploring Space and the Solar System',
    titleMy: 'အာကာသနှင့် နေအိမ်စုကို လေ့လာခြင်း',
    descriptionEn: 'Discover the Sun, planets, and stars that make up our solar system and the wider universe.',
    descriptionMy: 'ကျွန်ုပ်တို့၏ နေအိမ်စုနှင့် စကြဝဠာကြီးကို ဖွဲ့စည်းထားသော နေ၊ ဂြိုဟ်များနှင့် ကြယ်များအကြောင်း လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is the closest star to Earth?',
        questionMy: 'ကမ္ဘာနှင့် အနီးဆုံးကြယ်မှာ အဘယ်နည်း။',
        optionsEn: ['The Moon', 'The Sun', 'Mars', 'Venus'],
        optionsMy: ['လ', 'နေ', 'အင်္ဂါဂြိုဟ်', 'သောကြာဂြိုဟ်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which planet is known as the Red Planet?',
        questionMy: 'မည်သည့်ဂြိုဟ်ကို \'အနီရောင်ဂြိုဟ်\' ဟုခေါ်သနည်း။',
        optionsEn: ['Venus', 'Mars', 'Jupiter', 'Saturn'],
        optionsMy: ['သောကြာဂြိုဟ်', 'အင်္ဂါဂြိုဟ်', 'ကြာသပတေးဂြိုဟ်', 'စနေဂြိုဟ်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'What do we call a huge group of stars, dust, and gas in space?',
        questionMy: 'အာကာသရှိ ကြယ်များ၊ ဖုန်မှုန့်နှင့် ဓာတ်ငွေ့များ စုပေါင်းထားသော အုပ်စုကြီးကို အဘယ်ဟုခေါ်သနည်း။',
        optionsEn: ['Asteroid', 'Comet', 'Galaxy', 'Satellite'],
        optionsMy: ['ဂြိုဟ်ငယ် (Asteroid)', 'ကြယ်တံခွန် (Comet)', 'ဂလက်ဆီ (Galaxy)', 'ဂြိုဟ်တု (Satellite)'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'How many planets are there in our solar system?',
        questionMy: 'ကျွန်ုပ်တို့၏ နေအိမ်စုတွင် ဂြိုဟ်ဘယ်နှစ်လုံးရှိသနည်း။',
        optionsEn: ['7', '9', '8', '10'],
        optionsMy: ['၇', '၉', '၈', '၁၀'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What causes day and night on Earth?',
        questionMy: 'ကမ္ဘာပေါ်တွင် နေ့နှင့်ညဖြစ်ရခြင်း၏ အကြောင်းရင်းမှာ အဘယ်နည်း။',
        optionsEn: ['Earth orbiting the Sun', 'The Moon blocking the Sun', 'Clouds covering the sky', 'Earth spinning on its axis'],
        optionsMy: ['ကမ္ဘာသည် နေကို လှည့်ပတ်နေခြင်း', 'လသည် နေကို ကွယ်နေခြင်း', 'မိုးတိမ်များ ကောင်းကင်ကို ဖုံးအုပ်ထားခြင်း', 'ကမ္ဘာသည် မိမိဝင်ရိုးအတိုင်း လှည့်နေခြင်း'],
        correctIndex: 3,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year4-science-4',
    subject: 'science',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'The Water Cycle',
    titleMy: 'ရေလည်ပတ်မှု',
    descriptionEn: 'Learn how water moves between the sky, land, and sea through evaporation, condensation, and precipitation.',
    descriptionMy: 'ရေသည် ရေငွေ့ပျံခြင်း (Evaporation)၊ ရေငွေ့စိုပျံ့ခြင်း (Condensation) နှင့် မိုးရွာခြင်း (Precipitation) များမှတစ်ဆင့် ကောင်းကင်၊ ကုန်းမြေနှင့် ပင်လယ်အကြား မည်သို့လှုပ်ရှားသွားသည်ကို လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'What is the process called when the sun\'s heat turns liquid water into water vapor?',
        questionMy: 'နေရောင်ခြည်ပူပြင်းမှုကြောင့် ရေအရည်သည် ရေငွေ့အဖြစ်ပြောင်းလဲသွားခြင်းကို မည်သည့်လုပ်ငန်းစဉ်ဟုခေါ်သနည်း။',
        optionsEn: ['Evaporation', 'Freezing', 'Condensation', 'Precipitation'],
        optionsMy: ['ရေငွေ့ပျံခြင်း (Evaporation)', 'အေးခဲခြင်း', 'ရေငွေ့စိုပျံ့ခြင်း (Condensation)', 'မိုးရွာခြင်း (Precipitation)'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is NOT a form of precipitation?',
        questionMy: 'အောက်ပါအရာများအနက် မိုးရွာခြင်း (Precipitation) ၏ပုံစံတစ်ခု မဟုတ်သည်မှာ အဘယ်နည်း။',
        optionsEn: ['Rain', 'Snow', 'Evaporation', 'Hail'],
        optionsMy: ['မိုး', 'နှင်းခဲ', 'ရေငွေ့ပျံခြင်း (Evaporation)', 'နှင်းသီး'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What happens to water vapor when it rises high into the sky and cools down?',
        questionMy: 'ရေငွေ့သည် ကောင်းကင်ပေါ်သို့ မြင့်တက်ပြီး အေးလာသောအခါ မည်သို့ဖြစ်လာသနည်း။',
        optionsEn: ['It disappears completely', 'It turns into tiny water droplets that form clouds', 'It turns into gold', 'It becomes salt'],
        optionsMy: ['လုံးဝပျောက်ကွယ်သွားသည်', 'မိုးတိမ်များဖြစ်ပေါ်စေသော ရေပေါက်ငယ်များအဖြစ် ပြောင်းလဲသွားသည်', 'ရွှေအဖြစ်ပြောင်းသွားသည်', 'ဆားအဖြစ်ဖြစ်သွားသည်'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'After rain falls to the ground, where can the water go?',
        questionMy: 'မိုးရေသည် မြေပြင်ပေါ်သို့ ကျရောက်ပြီးနောက် ထိုရေသည် မည်သည့်နေရာများသို့ စီးဆင်းသွားနိုင်သနည်း။',
        optionsEn: ['It disappears into space', 'It turns into rock', 'Only into the ocean', 'Into rivers, lakes, and underground'],
        optionsMy: ['အာကာသထဲသို့ ပျောက်ကွယ်သွားသည်', 'ကျောက်တုံးများအဖြစ် ပြောင်းလဲသွားသည်', 'ပင်လယ်ထဲသို့သာ စီးဆင်းသွားသည်', 'မြစ်များ၊ အိုင်များနှင့် မြေအောက်သို့ စီးဆင်းသွားနိုင်သည်'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Which part of the water cycle describes water falling from clouds as rain or snow?',
        questionMy: 'မိုးတိမ်များမှ မိုးရေ သို့မဟုတ် နှင်းအဖြစ် ကျရောက်လာခြင်းကို ရေလည်ပတ်မှု၏ မည်သည့်အဆင့်ဟု ခေါ်သနည်း။',
        optionsEn: ['Condensation', 'Evaporation', 'Precipitation', 'Collection'],
        optionsMy: ['ရေငွေ့စိုပျံ့ခြင်း (Condensation)', 'ရေငွေ့ပျံခြင်း (Evaporation)', 'မိုးရွာခြင်း (Precipitation)', 'စုဆောင်းခြင်း (Collection)'],
        correctIndex: 2,
      ),
    ],
  ),

  PrimaryActivityDef(
    id: 'mock-year4-science-5',
    subject: 'science',
    grade: Grade.year4,
    contentType: 'quiz',
    titleEn: 'States of Matter',
    titleMy: 'ရုပ်ဝတ္ထု၏ အခြေအနေများ (States of Matter)',
    descriptionEn: 'Explore solids, liquids, and gases, and how matter can change from one state to another.',
    descriptionMy: 'အစိုင်အခဲ၊ အရည်နှင့် ဓာတ်ငွေ့တို့ကို လေ့လာပြီး ရုပ်ဝတ္ထုတစ်ခုသည် တစ်ခြားအခြေအနေသို့ မည်သို့ပြောင်းလဲသည်ကို လေ့လာပါ။',
    starsReward: 16,
    questions: [
      QuizQuestion(
        questionEn: 'Which of these is a solid?',
        questionMy: 'အောက်ပါတို့အနက် အစိုင်အခဲ (solid) အခြေအနေဖြစ်သည့်အရာက အဘယ်နည်း။',
        optionsEn: ['Ice', 'Water', 'Steam', 'Juice'],
        optionsMy: ['ရေခဲ', 'ရေ', 'ရေငွေ့', 'အသီးရည်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What happens to water when it is heated enough to boil?',
        questionMy: 'ရေကို ဆူအောင် လုံလောက်စွာ အပူပေးလိုက်လျှင် မည်သို့ဖြစ်သွားသနည်း။',
        optionsEn: ['It turns into a solid', 'It disappears completely', 'It turns into a gas', 'It turns into a rock'],
        optionsMy: ['အစိုင်အခဲဖြစ်သွားသည်', 'လုံးဝပျောက်သွားသည်', 'ဓာတ်ငွေ့ဖြစ်သွားသည်', 'ကျောက်ဖြစ်သွားသည်'],
        correctIndex: 2,
      ),
      QuizQuestion(
        questionEn: 'What is it called when a liquid changes into a solid by cooling?',
        questionMy: 'အရည်တစ်ခုကို အအေးခံ၍ အစိုင်အခဲအဖြစ် ပြောင်းလဲခြင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Melting', 'Freezing', 'Evaporating', 'Boiling'],
        optionsMy: ['အရည်ပျော်ခြင်း (Melting)', 'ခဲခြင်း (Freezing)', 'အငွေ့ပျံခြင်း (Evaporating)', 'ဆူပွက်ခြင်း (Boiling)'],
        correctIndex: 1,
      ),
      QuizQuestion(
        questionEn: 'Which state of matter has a fixed amount but changes shape to fit its container?',
        questionMy: 'ရုပ်ဝတ္ထု၏ မည်သည့်အခြေအနေသည် ပမာဏတည်ငြိမ်သော်လည်း ထည့်ထားသောပုံးပုံသဏ္ဍာန်အလိုက် ပုံသဏ္ဍာန်ပြောင်းလဲနိုင်သနည်း။',
        optionsEn: ['Solid', 'Gas', 'Ice', 'Liquid'],
        optionsMy: ['အစိုင်အခဲ (Solid)', 'ဓာတ်ငွေ့ (Gas)', 'ရေခဲ (Ice)', 'အရည် (Liquid)'],
        correctIndex: 3,
      ),
      QuizQuestion(
        questionEn: 'Which is true about a gas?',
        questionMy: 'ဓာတ်ငွေ့နှင့်ပတ်သက်၍ မှန်ကန်သောအချက်မှာ အဘယ်နည်း။',
        optionsEn: ['It has a fixed shape', 'It spreads out to fill its container', 'It cannot be poured', 'It always feels cold'],
        optionsMy: ['ပုံသေပုံသဏ္ဍာန်ရှိသည်', '၎င်းထည့်ထားသောနေရာတစ်ခုလုံးကို ပြန့်နှံ့သွားသည်', 'သွန်း၍မရနိုင်ပါ', 'အမြဲတမ်းအေးမြသောခံစားချက်ရှိသည်'],
        correctIndex: 1,
      ),
    ],
  ),
];
