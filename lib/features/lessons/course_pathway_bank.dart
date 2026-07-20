/// Hand-written (non-Freezed, no build_runner needed) static content for
/// "Academic Year" course pathways -- a full 36-week, term/week/daily-lesson
/// structure layered *on top of* the existing per-grade curriculum banks
/// (`primary_curriculum_bank.dart` / `secondary_curriculum_bank.dart`),
/// not a replacement for them. Follows the exact same plain-Dart,
/// bilingual `*En`/`*My` convention every other bank in this directory
/// uses, and completion still flows through the existing
/// `markModuleCompleted`/`activeChildProvider` machinery via each daily
/// lesson's [DailyLessonDef.id] -- no Firestore schema changes needed.
///
/// Secondary 1 Computing, Term 1 (Weeks 1-4) is fully authored (see
/// [secondary1ComputingPathway]) -- a complete first term proving the
/// pipeline end-to-end (data model, all four interaction types, gamified
/// path UI, persisted completion) before committing to authoring Terms 2-3.
/// Weeks 1-4 follow a deliberate Cambridge/Collins-style spiral: Week 1
/// introduces hardware vs. software and input/output/storage; Week 2
/// revisits storage at a deeper level (CPU/RAM/motherboard -- processing
/// vs. memory vs. storage); Week 3 revisits the hardware/software split
/// from the software side (system vs. application software); Week 4
/// applies both back to a practical skill (organizing files/folders),
/// reinforcing storage and software concepts in a new context rather than
/// introducing them once and moving on.
library;

import '../../models/child_model.dart';
import 'interactive_content_models.dart';
import 'mock_quiz_data.dart';

/// Which interactive screen a [DailyLessonDef] plays through.
enum LessonKind { quiz, dragMatch, sorting, reading }

/// One bite-sized daily node on a [CourseWeekDef]'s path (Duolingo-style
/// unit). Exactly one of [quizQuestions]/[dragMatchPairs]/[sortingActivity]/
/// [readingPassage] is populated, matching [kind].
class DailyLessonDef {
  const DailyLessonDef({
    required this.id,
    required this.dayNumber,
    required this.titleEn,
    required this.titleMy,
    required this.kind,
    this.xpReward = 10,
    this.isRecapDay = false,
    this.quizQuestions = const [],
    this.dragMatchPairs = const [],
    this.sortingActivity,
    this.readingPassage,
  });

  final String id;
  final int dayNumber; // 1-5, Mon-Fri
  final String titleEn;
  final String titleMy;
  final LessonKind kind;
  final int xpReward;

  /// Friday-style lighter/recap day -- shown with a distinct icon on the
  /// week path, same content mechanics as a regular quiz day otherwise.
  final bool isRecapDay;

  final List<QuizQuestion> quizQuestions;
  final List<DragMatchPair> dragMatchPairs;
  final SortingActivity? sortingActivity;
  final ReadingPassageModel? readingPassage;
}

/// One week (Duolingo-style "unit") within a [CourseTermDef].
class CourseWeekDef {
  const CourseWeekDef({
    required this.id,
    required this.weekNumber,
    required this.titleEn,
    required this.titleMy,
    required this.xpReward,
    required this.dailyLessons,
    this.isBossWeek = false,
  });

  final String id;
  final int weekNumber; // 1-36 across the whole pathway
  final String titleEn;
  final String titleMy;
  final int xpReward; // bonus awarded once every daily lesson is complete
  final bool isBossWeek;
  final List<DailyLessonDef> dailyLessons;
}

/// One term (Coursera-style milestone) within a [CoursePathwayDef].
class CourseTermDef {
  const CourseTermDef({
    required this.id,
    required this.termNumber,
    required this.titleEn,
    required this.titleMy,
    required this.certificateTitleEn,
    required this.certificateTitleMy,
    required this.weeks,
  });

  final String id;
  final int termNumber; // 1-3
  final String titleEn;
  final String titleMy;
  final String certificateTitleEn;
  final String certificateTitleMy;
  final List<CourseWeekDef> weeks;
}

/// Top-level container: one full academic-year course for one subject at
/// one grade.
class CoursePathwayDef {
  const CoursePathwayDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.totalWeeks,
    required this.terms,
  });

  final String id;
  final String subject;
  final Grade grade;
  final String titleEn;
  final String titleMy;
  final String descriptionEn;
  final String descriptionMy;
  final int totalWeeks; // 36 for a full year, even while only Week 1 exists
  final List<CourseTermDef> terms;
}

// =====================================================================
// Secondary 1 Computing -- Term 1, Week 1: "What is a Computer?"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek1 = CourseWeekDef(
  id: 'course-secondary1-computing-w1',
  weekNumber: 1,
  titleEn: 'What is a Computer?',
  titleMy: 'ကွန်ပျူတာဆိုသည်မှာ အဘယ်နည်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w1-d1',
      dayNumber: 1,
      titleEn: 'Computers Around Us',
      titleMy: 'ကျွန်တော်တို့ပတ်ဝန်းကျင်ရှိ ကွန်ပျူတာများ',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              'Which of these everyday devices contains a small computer inside it?',
          questionMy:
              'အောက်ပါ နေ့စဉ်သုံးပစ္စည်းများအနက် ဘယ်ဟာမှာ ကွန်ပျူတာသေးလေး ပါဝင်သနည်း။',
          optionsEn: [
            'A wooden spoon',
            'A smart TV',
            'A plain glass cup',
            'A cotton towel',
          ],
          optionsMy: [
            'သစ်သားဇွန်း',
            'စမတ်တီဗီ',
            'ဖန်ခွက်ရိုးရိုး',
            'ချည်သားပုဝါ',
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn: 'A computer is best described as a machine that...',
          questionMy:
              'ကွန်ပျူတာကို အကောင်းဆုံးဖော်ပြရလျှင် ဘာစက်ဟု ဆိုနိုင်သနည်း။',
          optionsEn: [
            'Takes in data, processes it, and produces output',
            'Only makes noise',
            'Only stores food',
            'Cannot be programmed',
          ],
          optionsMy: [
            'ဒေတာလက်ခံ၊ ဆောင်ရွက်ပြီး ရလဒ်ထုတ်ပေးသောစက်',
            'အသံသာမြည်သောစက်',
            'အစားအစာသာသိမ်းသောစက်',
            'ပရိုဂရမ်မလုပ်နိုင်သောစက်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is NOT usually considered a computer?',
          questionMy:
              'အောက်ပါတို့အနက် ပုံမှန်အားဖြင့် ကွန်ပျူတာမဟုတ်သည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A plain paper book',
            'A laptop',
            'A smartphone',
            'A tablet',
          ],
          optionsMy: [
            'စာရွက်စာအုပ်ရိုးရိုး',
            'လက်ပ်တော့',
            'စမတ်ဖုန်း',
            'တက်ဘလက်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'A laptop, a smartphone, and a smart watch are all examples of...',
          questionMy:
              'လက်ပ်တော့၊ စမတ်ဖုန်းနှင့် စမတ်နာရီတို့သည် ဘာ၏ ဥပမာများဖြစ်ကြသနည်း။',
          optionsEn: [
            'Computing devices',
            'Musical instruments',
            'Cooking tools',
            'Sports equipment',
          ],
          optionsMy: [
            'ကွန်ပျူတာဆိုင်ရာ ပစ္စည်းများ',
            'တူရိယာများ',
            'ချက်ပြုတ်ကိရိယာများ',
            'အားကစားပစ္စည်းများ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is a main reason students use computers at school?',
          questionMy:
              'ကျောင်းသားများ ကျောင်းတွင် ကွန်ပျူတာသုံးရသည့် အဓိကအကြောင်းရင်းတစ်ခုမှာ အဘယ်နည်း။',
          optionsEn: [
            'To help with learning tasks like writing and research',
            'To replace all teachers',
            'Because books no longer exist',
            'To make more noise in class',
          ],
          optionsMy: [
            'စာရေးခြင်းနှင့် သုတေသနကဲ့သို့ သင်ယူမှုလုပ်ငန်းများအတွက် ကူညီရန်',
            'ဆရာဆရာမများအားလုံးကို အစားထိုးရန်',
            'စာအုပ်များ မရှိတော့သောကြောင့်',
            'အတန်းထဲတွင် ပိုကျယ်လောင်စေရန်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w1-d2',
      dayNumber: 2,
      titleEn: 'Hardware vs. Software',
      titleMy: 'Hardware နှင့် Software',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w1-hw-keyboard',
          termEn: 'Keyboard',
          termMy: 'ကီးဘုတ်',
          matchEn: 'A physical part you can touch (hardware)',
          matchMy: 'လက်ဖြင့် ထိတွေ့နိုင်သော ရုပ်ပိုင်းအစိတ်အပိုင်း (hardware)',
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: 'w1-sw-game',
          termEn: 'A game app',
          termMy: 'ဂိမ်းအက်ပ်',
          matchEn: 'A program you cannot physically touch (software)',
          matchMy: 'ရုပ်ပိုင်းအရ မထိတွေ့နိုင်သော ပရိုဂရမ် (software)',
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: 'w1-hw-monitor',
          termEn: 'Monitor',
          termMy: 'မော်နီတာ',
          matchEn: 'The physical screen you look at (hardware)',
          matchMy: 'ကြည့်ရသော ရုပ်ပိုင်းမျက်နှာပြင် (hardware)',
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: 'w1-sw-browser',
          termEn: 'A web browser',
          termMy: 'ဝက်ဘ်ဘရောက်ဆာ',
          matchEn: 'A program used to browse the internet (software)',
          matchMy: 'အင်တာနက်ကြည့်ရှုရန်သုံးသော ပရိုဂရမ် (software)',
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: 'w1-hw-mouse',
          termEn: 'Mouse',
          termMy: 'မောက်စ်',
          matchEn: 'A physical device used to point and click (hardware)',
          matchMy: 'ညွှန်ပြပြီးနှိပ်ရန်သုံးသော ရုပ်ပိုင်းပစ္စည်း (hardware)',
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w1-d3',
      dayNumber: 3,
      titleEn: 'Sort the Devices',
      titleMy: 'ပစ္စည်းများကို ခွဲခြားစီပါ',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Input', 'Output', 'Storage'],
        bucketsMy: [
          'Input (ထည့်သွင်းရေး)',
          'Output (ထုတ်ပေးရေး)',
          'Storage (သိုလှောင်ရေး)',
        ],
        items: [
          SortingItem(
            id: 'w1-sort-mouse',
            labelEn: 'Mouse',
            labelMy: 'မောက်စ်',
            correctBucketEn: 'Input',
            correctBucketMy: 'Input (ထည့်သွင်းရေး)',
          ),
          SortingItem(
            id: 'w1-sort-keyboard',
            labelEn: 'Keyboard',
            labelMy: 'ကီးဘုတ်',
            correctBucketEn: 'Input',
            correctBucketMy: 'Input (ထည့်သွင်းရေး)',
          ),
          SortingItem(
            id: 'w1-sort-printer',
            labelEn: 'Printer',
            labelMy: 'ပရင်တာ',
            correctBucketEn: 'Output',
            correctBucketMy: 'Output (ထုတ်ပေးရေး)',
          ),
          SortingItem(
            id: 'w1-sort-monitor',
            labelEn: 'Monitor',
            labelMy: 'မော်နီတာ',
            correctBucketEn: 'Output',
            correctBucketMy: 'Output (ထုတ်ပေးရေး)',
          ),
          SortingItem(
            id: 'w1-sort-harddrive',
            labelEn: 'Hard Drive',
            labelMy: 'Hard Drive',
            correctBucketEn: 'Storage',
            correctBucketMy: 'Storage (သိုလှောင်ရေး)',
          ),
          SortingItem(
            id: 'w1-sort-usb',
            labelEn: 'USB Flash Drive',
            labelMy: 'USB Flash Drive',
            correctBucketEn: 'Storage',
            correctBucketMy: 'Storage (သိုလှောင်ရေး)',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w1-d4',
      dayNumber: 4,
      titleEn: 'A Day With My Computer',
      titleMy: 'ကွန်ပျူတာနှင့် တစ်နေ့တာ',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: 'A Day With My Computer',
        titleMy: 'ကွန်ပျူတာနှင့် တစ်နေ့တာ',
        passageEn:
            "Every morning, Thiri turns on her family's computer to check her school timetable. The screen (a monitor) shows her the icons. She clicks the mouse to open her homework, and types her answers using the keyboard. When she is finished, she saves her work onto the hard drive so it will still be there tomorrow, then prints one page on the printer to show her teacher.",
        passageMy:
            'နံနက်တိုင်း သီရိသည် ကျောင်းအချိန်ဇယားကို စစ်ဆေးရန် မိသားစုကွန်ပျူတာကို ဖွင့်လေ့ရှိသည်။ မော်နီတာက အိုင်ကွန်များကို ပြသည်။ သူမသည် အိမ်စာဖွင့်ရန် မောက်စ်ကို နှိပ်ပြီး ကီးဘုတ်ဖြင့် အဖြေများကို ရိုက်ထည့်သည်။ ပြီးသောအခါ မနက်ဖြန်တွင်လည်း ရှိနေအောင် သူမ၏အလုပ်ကို hard drive ပေါ်တွင် သိမ်းဆည်းပြီး ဆရာမကို ပြရန် စာမျက်နှာတစ်ချပ်ကို ပရင်တာဖြင့် ပရင့်ထုတ်လိုက်သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What does Thiri use to type her answers?',
            questionMy: 'သီရိသည် အဖြေများ ရိုက်ထည့်ရန် ဘာကိုအသုံးပြုသနည်း။',
            optionsEn: [
              'The monitor',
              'The keyboard',
              'The printer',
              'The hard drive',
            ],
            optionsMy: ['မော်နီတာ', 'ကီးဘုတ်', 'ပရင်တာ', 'Hard drive'],
            correctIndex: 1,
          ),
          QuizQuestion(
            questionEn: 'Why does Thiri save her work on the hard drive?',
            questionMy:
                'သီရိသည် သူမ၏အလုပ်ကို hard drive ပေါ်တွင် သိမ်းဆည်းသည်မှာ ဘာကြောင့်နည်း။',
            optionsEn: [
              'So it will still be there tomorrow',
              'To make it disappear',
              "So her teacher cannot see it",
              'Because printers need it',
            ],
            optionsMy: [
              'မနက်ဖြန်တွင်လည်း ရှိနေစေရန်',
              'ပျောက်သွားစေရန်',
              'ဆရာမမမြင်စေရန်',
              'ပရင်တာအတွက် လိုအပ်၍',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What does Thiri look at to see the icons?',
            questionMy: 'သီရိသည် အိုင်ကွန်များကို မြင်ရန် ဘာကိုကြည့်သနည်း။',
            optionsEn: [
              'The printer',
              'The hard drive',
              'The monitor',
              'The keyboard',
            ],
            optionsMy: ['ပရင်တာ', 'Hard drive', 'မော်နီတာ', 'ကီးဘုတ်'],
            correctIndex: 2,
          ),
          QuizQuestion(
            questionEn: 'What does Thiri click to open her homework?',
            questionMy: 'သီရိသည် အိမ်စာဖွင့်ရန် ဘာကိုနှိပ်သနည်း။',
            optionsEn: [
              'The printer',
              'The mouse',
              'The hard drive',
              'The monitor',
            ],
            optionsMy: ['ပရင်တာ', 'မောက်စ်', 'Hard drive', 'မော်နီတာ'],
            correctIndex: 1,
          ),
          QuizQuestion(
            questionEn: 'What does Thiri do with the printer at the end?',
            questionMy: 'အဆုံးတွင် သီရိသည် ပရင်တာနှင့် ဘာလုပ်သနည်း။',
            optionsEn: [
              'Prints a page to show her teacher',
              'Turns it into a monitor',
              'Deletes her homework',
              'Saves her password on it',
            ],
            optionsMy: [
              'ဆရာမကို ပြရန် စာမျက်နှာတစ်ချပ် ပရင့်ထုတ်သည်',
              'မော်နီတာအဖြစ် ပြောင်းလိုက်သည်',
              'အိမ်စာကို ဖျက်ပစ်သည်',
              'စကားဝှက်ကို ၎င်းပေါ်တွင် သိမ်းသည်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w1-d5',
      dayNumber: 5,
      titleEn: 'Week 1 Recap Quiz',
      titleMy: 'ပထမပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'Which of these is an example of software, not hardware?',
          questionMy:
              'အောက်ပါတို့အနက် hardware မဟုတ်ဘဲ software ဥပမာဖြစ်သည်မှာ အဘယ်နည်း။',
          optionsEn: ['Keyboard', 'A word processor app', 'Monitor', 'Mouse'],
          optionsMy: ['ကီးဘုတ်', 'Word processor app', 'မော်နီတာ', 'မောက်စ်'],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              'What do we call the physical parts of a computer that you can touch?',
          questionMy:
              'ထိတွေ့နိုင်သော ကွန်ပျူတာ၏ ရုပ်ပိုင်းအစိတ်အပိုင်းများကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['Software', 'Hardware', 'A network', 'A password'],
          optionsMy: ['Software', 'Hardware', 'ကွန်ရက်', 'စကားဝှက်'],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn: 'Which of these devices belongs in the "Output" group?',
          questionMy: '"Output" အုပ်စုတွင် ပါဝင်သည့် ပစ္စည်းမှာ အဘယ်နည်း။',
          optionsEn: ['Mouse', 'Keyboard', 'Printer', 'A USB flash drive'],
          optionsMy: ['မောက်စ်', 'ကီးဘုတ်', 'ပရင်တာ', 'USB Flash Drive'],
          correctIndex: 2,
        ),
        QuizQuestion(
          questionEn: 'A hard drive is mainly used for...',
          questionMy: 'Hard drive ကို အဓိကအားဖြင့် ဘာအတွက် အသုံးပြုသနည်း။',
          optionsEn: [
            'Storing data long-term',
            'Printing paper',
            'Playing sound only',
            'Connecting to Wi-Fi only',
          ],
          optionsMy: [
            'ဒေတာကို ရေရှည်သိမ်းဆည်းရန်',
            'စက္ကူပရင့်ထုတ်ရန်',
            'အသံသာဖွင့်ရန်',
            'Wi-Fi ချိတ်ဆက်ရန်သာ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is the main purpose of a keyboard?',
          questionMy: 'ကီးဘုတ်၏ အဓိကရည်ရွယ်ချက်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Typing letters and numbers',
            'Printing photos',
            'Playing music',
            'Storing files permanently',
          ],
          optionsMy: [
            'အက္ခရာနှင့် ဂဏန်းများ ရိုက်ထည့်ရန်',
            'ဓာတ်ပုံများ ပရင့်ထုတ်ရန်',
            'ဂီတဖွင့်ရန်',
            'ဖိုင်များကို အမြဲတမ်းသိမ်းဆည်းရန်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 1, Week 2: "Inside the Computer"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek2 = CourseWeekDef(
  id: 'course-secondary1-computing-w2',
  weekNumber: 2,
  titleEn: 'Inside the Computer',
  titleMy: 'ကွန်ပျူတာအတွင်းပိုင်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w2-d1',
      dayNumber: 1,
      titleEn: 'The Brain of the Computer',
      titleMy: 'ကွန်ပျူတာ၏ ဦးနှောက်',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What does CPU stand for?',
          questionMy: 'CPU ဆိုသည်မှာ ဘာ၏ အတိုကောက်ဖြစ်သနည်း။',
          optionsEn: [
            'Central Processing Unit',
            'Central Print Unit',
            'Computer Personal Unit',
            'Central Power Unit',
          ],
          optionsMy: [
            'Central Processing Unit',
            'Central Print Unit',
            'Computer Personal Unit',
            'Central Power Unit',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is the main job of the CPU?',
          questionMy: 'CPU ၏ အဓိကတာဝန်မှာ အဘယ်နည်း။',
          optionsEn: [
            'To process instructions and carry out calculations',
            'To store photos permanently',
            'To print documents',
            'To connect to Wi-Fi only',
          ],
          optionsMy: [
            'ညွှန်ကြားချက်များကို ဆောင်ရွက်ပြီး တွက်ချက်မှုများ ပြုလုပ်ရန်',
            'ဓာတ်ပုံများကို အမြဲထာဝရ သိမ်းဆည်းရန်',
            'စာရွက်စာတမ်းများ ပရင့်ထုတ်ရန်',
            'Wi-Fi ကိုသာ ချိတ်ဆက်ရန်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which part of the computer is often called its "brain"?',
          questionMy:
              'ကွန်ပျူတာ၏ "ဦးနှောက်" ဟု မကြာခဏခေါ်လေ့ရှိသော အစိတ်အပိုင်းမှာ အဘယ်နည်း။',
          optionsEn: ['The CPU', 'The mouse', 'The monitor', 'The speaker'],
          optionsMy: ['CPU', 'မောက်စ်', 'မော်နီတာ', 'စပီကာ'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'RAM is mainly used to...',
          questionMy: 'RAM ကို အဓိကအားဖြင့် ဘာအတွက်အသုံးပြုသနည်း။',
          optionsEn: [
            'Temporarily hold data the CPU is currently using',
            'Permanently store all files forever',
            'Print pages',
            'Play sound only',
          ],
          optionsMy: [
            'CPU လက်ရှိအသုံးပြုနေသော ဒေတာကို ယာယီသိမ်းထားရန်',
            'ဖိုင်အားလုံးကို အမြဲထာဝရသိမ်းဆည်းရန်',
            'စာမျက်နှာများ ပရင့်ထုတ်ရန်',
            'အသံသာဖွင့်ရန်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What usually happens to the data in RAM when the computer is turned off?',
          questionMy:
              'ကွန်ပျူတာကို ပိတ်လိုက်သောအခါ RAM ထဲရှိဒေတာသည် များသောအားဖြင့် မည်သို့ဖြစ်သွားသနည်း။',
          optionsEn: [
            'It is usually lost',
            'It turns into hardware',
            'It turns into software',
            'It is automatically printed',
          ],
          optionsMy: [
            'များသောအားဖြင့် ပျောက်ဆုံးသွားတတ်သည်',
            'hardware အဖြစ် ပြောင်းသွားသည်',
            'software အဖြစ် ပြောင်းသွားသည်',
            'အလိုအလျောက် ပရင့်ထွက်သွားသည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w2-d2',
      dayNumber: 2,
      titleEn: 'Match the Components',
      titleMy: 'အစိတ်အပိုင်းများကို ကိုက်ညီပါ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w2-comp-cpu',
          termEn: 'CPU',
          termMy: 'CPU',
          matchEn: "Processes instructions and does calculations (the 'brain')",
          matchMy:
              "ညွှန်ကြားချက်များကို ဆောင်ရွက်ပြီး တွက်ချက်မှုပြုလုပ်သည် ('ဦးနှောက်')",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w2-comp-ram',
          termEn: 'RAM',
          termMy: 'RAM',
          matchEn: 'Temporarily holds data the computer is using right now',
          matchMy: 'ကွန်ပျူတာက ယခုအသုံးပြုနေသော ဒေတာကို ယာယီသိမ်းထားသည်',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w2-comp-motherboard',
          termEn: 'Motherboard',
          termMy: 'Motherboard',
          matchEn:
              'The main circuit board connecting every other part together',
          matchMy:
              'အခြားအစိတ်အပိုင်းများအားလုံးကို ချိတ်ဆက်ပေးသော အဓိကဆားကစ်ဘုတ်',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w2-comp-storage',
          termEn: 'Hard Drive / SSD',
          termMy: 'Hard Drive / SSD',
          matchEn:
              'Stores files and programs permanently, even when powered off',
          matchMy:
              'လျှပ်စစ်ပိတ်နေချိန်တွင်ပင် ဖိုင်နှင့်ပရိုဂရမ်များကို အမြဲသိမ်းဆည်းသည်',
          colorValue: 0xFFF2C94C,
        ),
        DragMatchPair(
          id: 'w2-comp-psu',
          termEn: 'Power Supply Unit',
          termMy: 'Power Supply Unit',
          matchEn:
              'Converts electricity from the wall into power the computer can use',
          matchMy:
              'နံရံလျှပ်စစ်ကို ကွန်ပျူတာသုံးနိုင်သော ပါဝါအဖြစ် ပြောင်းပေးသည်',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w2-d3',
      dayNumber: 3,
      titleEn: 'Processing, Memory or Storage?',
      titleMy: 'တွက်ချက်ခြင်း၊ မှတ်ဉာဏ် သို့မဟုတ် သိုလှောင်ခြင်း',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Processing', 'Memory', 'Storage'],
        bucketsMy: [
          'Processing (တွက်ချက်ခြင်း)',
          'Memory (မှတ်ဉာဏ်)',
          'Storage (သိုလှောင်ရေး)',
        ],
        items: [
          SortingItem(
            id: 'w2-sort-cpu',
            labelEn: 'CPU',
            labelMy: 'CPU',
            correctBucketEn: 'Processing',
            correctBucketMy: 'Processing (တွက်ချက်ခြင်း)',
          ),
          SortingItem(
            id: 'w2-sort-gpu',
            labelEn: 'Graphics Card',
            labelMy: 'Graphics Card',
            correctBucketEn: 'Processing',
            correctBucketMy: 'Processing (တွက်ချက်ခြင်း)',
          ),
          SortingItem(
            id: 'w2-sort-ram',
            labelEn: 'RAM',
            labelMy: 'RAM',
            correctBucketEn: 'Memory',
            correctBucketMy: 'Memory (မှတ်ဉာဏ်)',
          ),
          SortingItem(
            id: 'w2-sort-rom',
            labelEn: 'ROM',
            labelMy: 'ROM',
            correctBucketEn: 'Memory',
            correctBucketMy: 'Memory (မှတ်ဉာဏ်)',
          ),
          SortingItem(
            id: 'w2-sort-harddrive',
            labelEn: 'Hard Drive',
            labelMy: 'Hard Drive',
            correctBucketEn: 'Storage',
            correctBucketMy: 'Storage (သိုလှောင်ရေး)',
          ),
          SortingItem(
            id: 'w2-sort-ssd',
            labelEn: 'SSD',
            labelMy: 'SSD',
            correctBucketEn: 'Storage',
            correctBucketMy: 'Storage (သိုလှောင်ရေး)',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w2-d4',
      dayNumber: 4,
      titleEn: 'Opening the Computer Case',
      titleMy: 'ကွန်ပျူတာအကာဖွင့်ကြည့်ခြင်း',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: 'Opening the Computer Case',
        titleMy: 'ကွန်ပျူတာအကာဖွင့်ကြည့်ခြင်း',
        passageEn:
            "On Saturday, Aung's uncle opened the family's old desktop computer to show him what was inside. Aung saw a big circuit board called the motherboard, which connects everything together. A small square chip called the CPU sat in the middle -- his uncle called it the computer's 'brain' because it processes every instruction. Next to it were thin sticks called RAM, which hold data only while the computer is switched on. Down at the bottom, a hard drive stored all of Aung's photos and games permanently, even after the computer was turned off.",
        passageMy:
            'စနေနေ့တွင် အောင်၏ ဦးလေးသည် မိသားစု၏ ဟောင်းနေပြီဖြစ်သော desktop ကွန်ပျူတာကို ဖွင့်ပြီး အတွင်းပိုင်းကို ပြပေးသည်။ အောင်သည် အရာအားလုံးကို ချိတ်ဆက်ပေးသော motherboard ဟုခေါ်သော ဆားကစ်ဘုတ်ကြီးတစ်ခုကို မြင်ရသည်။ အလယ်တွင် CPU ဟုခေါ်သော ဆလင်ပတ်သေးလေးကို ဦးလေးက ကွန်ပျူတာ၏ "ဦးနှောက်" ဟုခေါ်သည် -- အဘယ်ကြောင့်ဆိုသော် ၎င်းသည် ညွှန်ကြားချက်တိုင်းကို ဆောင်ရွက်သောကြောင့်ဖြစ်သည်။ ၎င်း၏အနီးတွင် RAM ဟုခေါ်သော ချောင်းပါးပါးများသည် ကွန်ပျူတာဖွင့်ထားချိန်တွင်သာ ဒေတာကို ကိုင်ထားသည်။ အောက်ခြေတွင် hard drive တစ်ခုသည် ကွန်ပျူတာကိုပိတ်ပြီးနောက်တွင်ပင် အောင်၏ဓာတ်ပုံနှင့်ဂိမ်းများအားလုံးကို အမြဲတမ်းသိမ်းဆည်းပေးသည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did Aung's uncle call the CPU?",
            questionMy: 'အောင်၏ဦးလေးသည် CPU ကို ဘာဟုခေါ်ခဲ့သနည်း။',
            optionsEn: [
              "The computer's 'brain'",
              'The computer\'s heart',
              'A hard drive',
              'A motherboard',
            ],
            optionsMy: [
              'ကွန်ပျူတာ၏ "ဦးနှောက်"',
              'ကွန်ပျူတာ၏ "နှလုံး"',
              'Hard drive',
              'Motherboard',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What connects every part of the computer together?',
            questionMy:
                'ကွန်ပျူတာ၏ အစိတ်အပိုင်းအားလုံးကို ချိတ်ဆက်ပေးသည်မှာ အဘယ်နည်း။',
            optionsEn: [
              'The motherboard',
              'The RAM',
              'The hard drive',
              'The CPU',
            ],
            optionsMy: ['Motherboard', 'RAM', 'Hard drive', 'CPU'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'Which part only holds data while the computer is switched on?',
            questionMy:
                'ကွန်ပျူတာဖွင့်ထားချိန်တွင်သာ ဒေတာကို ကိုင်ထားသော အစိတ်အပိုင်းမှာ အဘယ်နည်း။',
            optionsEn: ['RAM', 'The hard drive', 'The motherboard', 'The case'],
            optionsMy: ['RAM', 'Hard drive', 'Motherboard', 'ကွန်ပျူတာအကာ'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Where were Aung's photos and games stored permanently?",
            questionMy:
                'အောင်၏ ဓာတ်ပုံနှင့်ဂိမ်းများကို အမြဲတမ်းသိမ်းဆည်းရာနေရာမှာ အဘယ်နည်း။',
            optionsEn: ['The hard drive', 'The RAM', 'The CPU', 'The monitor'],
            optionsMy: ['Hard drive', 'RAM', 'CPU', 'မော်နီတာ'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'Who opened the computer with Aung?',
            questionMy: 'အောင်နှင့်အတူ ကွန်ပျူတာကို မည်သူဖွင့်ခဲ့သနည်း။',
            optionsEn: [
              'His uncle',
              'His teacher',
              'His sister',
              'A shopkeeper',
            ],
            optionsMy: ['ဦးလေး', 'ဆရာ', 'ညီမ', 'ဆိုင်ရှင်'],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w2-d5',
      dayNumber: 5,
      titleEn: 'Week 2 Recap Quiz',
      titleMy: 'ဒုတိယပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'Which part of the computer processes instructions?',
          questionMy:
              'ကွန်ပျူတာ၏ ညွှန်ကြားချက်များကို ဆောင်ရွက်သော အစိတ်အပိုင်းမှာ အဘယ်နည်း။',
          optionsEn: ['The CPU', 'The RAM', 'The monitor', 'The mouse'],
          optionsMy: ['CPU', 'RAM', 'မော်နီတာ', 'မောက်စ်'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which part connects all the other components together?',
          questionMy:
              'အခြားအစိတ်အပိုင်းများအားလုံးကို ချိတ်ဆက်ပေးသည့်အပိုင်းမှာ အဘယ်နည်း။',
          optionsEn: [
            'The motherboard',
            'The keyboard',
            'The printer',
            'The speaker',
          ],
          optionsMy: ['Motherboard', 'ကီးဘုတ်', 'ပရင်တာ', 'စပီကာ'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is an example of permanent storage?',
          questionMy:
              'အောက်ပါတို့အနက် အမြဲတမ်းသိုလှောင်မှု ဥပမာဖြစ်သည်မှာ အဘယ်နည်း။',
          optionsEn: ['A hard drive', 'RAM', 'A monitor', 'A speaker'],
          optionsMy: ['Hard drive', 'RAM', 'မော်နီတာ', 'စပီကာ'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does RAM lose when the computer is switched off?',
          questionMy:
              'ကွန်ပျူတာကို ပိတ်လိုက်သောအခါ RAM သည် ဘာကိုဆုံးရှုံးသနည်း။',
          optionsEn: [
            'The data it was temporarily holding',
            'Its physical shape',
            'Its color',
            'Its motherboard',
          ],
          optionsMy: [
            'ယာယီကိုင်ထားသောဒေတာ',
            'ရုပ်ပိုင်းပုံသဏ္ဍာန်',
            'အရောင်',
            'Motherboard',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does a Power Supply Unit (PSU) do?',
          questionMy: 'Power Supply Unit (PSU) သည် ဘာလုပ်ဆောင်သနည်း။',
          optionsEn: [
            'Converts wall electricity into power the computer can use',
            'Stores photos permanently',
            'Processes instructions',
            'Displays pictures',
          ],
          optionsMy: [
            'နံရံလျှပ်စစ်ကို ကွန်ပျူတာသုံးနိုင်သောပါဝါအဖြစ် ပြောင်းပေးသည်',
            'ဓာတ်ပုံများကို အမြဲသိမ်းဆည်းသည်',
            'ညွှန်ကြားချက်များကို ဆောင်ရွက်သည်',
            'ပုံများကို ပြသည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 1, Week 3: "Software: Instructions for
// the Computer"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek3 = CourseWeekDef(
  id: 'course-secondary1-computing-w3',
  weekNumber: 3,
  titleEn: 'Software: Instructions for the Computer',
  titleMy: 'Software - ကွန်ပျူတာ့ညွှန်ကြားချက်များ',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w3-d1',
      dayNumber: 1,
      titleEn: 'What is Software?',
      titleMy: 'Software ဆိုသည်မှာ',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'Software is best described as...',
          questionMy:
              'Software ကို အကောင်းဆုံးဖော်ပြရလျှင် အဘယ်သို့ဆိုနိုင်သနည်း။',
          optionsEn: [
            'A set of instructions that tells a computer what to do',
            'A physical part you can touch',
            'Only the monitor and keyboard',
            'A type of electricity',
          ],
          optionsMy: [
            'ကွန်ပျူတာအား မည်သို့ဆောင်ရွက်ရမည်ကို ညွှန်ကြားသည့် ညွှန်ကြားချက်စု',
            'လက်ဖြင့်ထိတွေ့နိုင်သော ရုပ်ပိုင်းအစိတ်အပိုင်း',
            'မော်နီတာနှင့် ကီးဘုတ်သာ',
            'လျှပ်စစ်အမျိုးအစားတစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is an operating system?',
          questionMy: 'အောက်ပါတို့အနက် operating system တစ်ခုမှာ အဘယ်နည်း။',
          optionsEn: ['Windows', 'A word document', 'A photo', 'A song'],
          optionsMy: [
            'Windows',
            'Word document တစ်ခု',
            'ဓာတ်ပုံတစ်ပုံ',
            'သီချင်းတစ်ပုဒ်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is "system software" mainly responsible for?',
          questionMy:
              '"System software" သည် အဓိကအားဖြင့် ဘာအတွက်တာဝန်ရှိသနည်း။',
          optionsEn: [
            'Managing and running the whole computer',
            'Only playing games',
            'Only editing photos',
            'Only printing documents',
          ],
          optionsMy: [
            'ကွန်ပျူတာတစ်ခုလုံးကို စီမံခန့်ခွဲပြီး လည်ပတ်စေရန်',
            'ဂိမ်းသာကစားရန်',
            'ဓာတ်ပုံသာတည်းဖြတ်ရန်',
            'စာရွက်စာတမ်းသာ ပရင့်ထုတ်ရန်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is application software?',
          questionMy: 'အောက်ပါတို့အနက် application software မှာ အဘယ်နည်း။',
          optionsEn: [
            'A drawing app',
            'The operating system',
            'The motherboard',
            'The CPU',
          ],
          optionsMy: ['ပန်းချီအက်ပ်', 'Operating system', 'Motherboard', 'CPU'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Without any software installed, a computer would be...',
          questionMy:
              'Software တစ်ခုမှမထည့်ထားလျှင် ကွန်ပျူတာသည် မည်သို့ဖြစ်နေမည်နည်း။',
          optionsEn: [
            'Unable to do anything useful',
            'Faster than usual',
            'Automatically connected to the internet',
            'Able to fix itself',
          ],
          optionsMy: [
            'အသုံးဝင်သောအရာမှမလုပ်နိုင်ဘဲ ဖြစ်နေမည်',
            'ပုံမှန်ထက် မြန်နေမည်',
            'အင်တာနက်ကို အလိုအလျောက်ချိတ်ဆက်နေမည်',
            'မိမိကိုယ်ကို ပြင်နိုင်မည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w3-d2',
      dayNumber: 2,
      titleEn: 'System or Application Software?',
      titleMy: 'System Software လား Application Software လား',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w3-sw-os',
          termEn: 'Operating system (e.g. Windows)',
          termMy: 'Operating system (Windows စသည်)',
          matchEn: 'System software that manages the whole computer',
          matchMy: 'ကွန်ပျူတာတစ်ခုလုံးကို စီမံခန့်ခွဲသော system software',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w3-sw-drawing',
          termEn: 'A drawing app',
          termMy: 'ပန်းချီအက်ပ်',
          matchEn: 'Application software used to create pictures',
          matchMy: 'ပုံများဖန်တီးရန်သုံးသော application software',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w3-sw-antivirus',
          termEn: 'Antivirus program',
          termMy: 'Antivirus ပရိုဂရမ်',
          matchEn:
              'System software that protects the computer from harmful programs',
          matchMy:
              'ကွန်ပျူတာကို အန္တရာယ်ရှိသောပရိုဂရမ်များမှ ကာကွယ်ပေးသော system software',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w3-sw-wordprocessor',
          termEn: 'A word processor',
          termMy: 'Word processor',
          matchEn: 'Application software used to write documents',
          matchMy: 'စာရွက်စာတမ်းများ ရေးရန်သုံးသော application software',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w3-sw-browser',
          termEn: 'A web browser',
          termMy: 'ဝက်ဘ်ဘရောက်ဆာ',
          matchEn: 'Application software used to visit websites',
          matchMy:
              'ဝက်ဘ်ဆိုက်များ ဝင်ရောက်ကြည့်ရှုရန်သုံးသော application software',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w3-d3',
      dayNumber: 3,
      titleEn: 'Sort the Software',
      titleMy: 'Software များကို ခွဲခြားစီပါ',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['System Software', 'Application Software'],
        bucketsMy: ['System Software', 'Application Software'],
        items: [
          SortingItem(
            id: 'w3-sort-os',
            labelEn: 'Operating System',
            labelMy: 'Operating System',
            correctBucketEn: 'System Software',
            correctBucketMy: 'System Software',
          ),
          SortingItem(
            id: 'w3-sort-antivirus',
            labelEn: 'Antivirus',
            labelMy: 'Antivirus',
            correctBucketEn: 'System Software',
            correctBucketMy: 'System Software',
          ),
          SortingItem(
            id: 'w3-sort-printerdriver',
            labelEn: 'Printer Driver',
            labelMy: 'Printer Driver',
            correctBucketEn: 'System Software',
            correctBucketMy: 'System Software',
          ),
          SortingItem(
            id: 'w3-sort-drawingapp',
            labelEn: 'Drawing App',
            labelMy: 'ပန်းချီအက်ပ်',
            correctBucketEn: 'Application Software',
            correctBucketMy: 'Application Software',
          ),
          SortingItem(
            id: 'w3-sort-wordprocessor',
            labelEn: 'Word Processor',
            labelMy: 'Word Processor',
            correctBucketEn: 'Application Software',
            correctBucketMy: 'Application Software',
          ),
          SortingItem(
            id: 'w3-sort-game',
            labelEn: 'A Game',
            labelMy: 'ဂိမ်းတစ်ခု',
            correctBucketEn: 'Application Software',
            correctBucketMy: 'Application Software',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w3-d4',
      dayNumber: 4,
      titleEn: "Su Su's Tablet",
      titleMy: 'စုစု၏ တက်ဘလက်',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su's Tablet",
        titleMy: 'စုစု၏ တက်ဘလက်',
        passageEn:
            "Su Su's tablet runs an operating system that manages everything happening inside it -- that's the system software working quietly in the background. In the morning, she opens a reading app for her English homework. At lunchtime, she uses a drawing app to design a birthday card. In the evening, she opens a web browser to look up facts for her science project. Each of these apps is application software -- a program installed for one specific job. Without the operating system running first, none of Su Su's apps would even be able to open.",
        passageMy:
            'စုစု၏ တက်ဘလက်သည် အတွင်းတွင်ဖြစ်ပျက်နေသမျှကို စီမံခန့်ခွဲပေးသော operating system တစ်ခုပေါ်တွင် လည်ပတ်နေသည် -- ၎င်းသည် နောက်ကွယ်မှတိတ်တဆိတ် အလုပ်လုပ်နေသော system software ပင်ဖြစ်သည်။ မနက်ခင်းတွင် သူမသည် အင်္ဂလိပ်စာအိမ်စာအတွက် reading app ကိုဖွင့်သည်။ နေ့လည်စာစားချိန်တွင် မွေးနေ့ကတ်ပြားဒီဇိုင်းဆွဲရန် drawing app ကိုသုံးသည်။ ညနေတွင် သိပ္ပံပရောဂျက်အတွက် အချက်အလက်များရှာရန် web browser ကိုဖွင့်သည်။ ဤအက်ပ်တစ်ခုစီသည် application software ဖြစ်ပြီး -- တာဝန်တစ်ခုတည်းအတွက် ထည့်သွင်းထားသော ပရိုဂရမ်တစ်ခုစီဖြစ်သည်။ operating system အရင်ဆုံးမလည်ပတ်ဘဲနှင့် စုစု၏ အက်ပ်များထဲမှ တစ်ခုမျှ ဖွင့်၍ပင် မရနိုင်ပါ။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What manages everything happening inside Su Su's tablet?",
            questionMy:
                'စုစု၏ တက်ဘလက်အတွင်း ဖြစ်ပျက်နေသမျှကို ဘာကစီမံခန့်ခွဲသနည်း။',
            optionsEn: [
              'The operating system',
              'The drawing app',
              'The web browser',
              'The reading app',
            ],
            optionsMy: [
              'Operating system',
              'Drawing app',
              'Web browser',
              'Reading app',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'Which app does Su Su use for her English homework?',
            questionMy: 'စုစုသည် အင်္ဂလိပ်စာအိမ်စာအတွက် ဘယ်အက်ပ်ကိုသုံးသနည်း။',
            optionsEn: [
              'A reading app',
              'A drawing app',
              'A web browser',
              'An antivirus',
            ],
            optionsMy: [
              'Reading app',
              'Drawing app',
              'Web browser',
              'Antivirus',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'Which app does Su Su use to design a birthday card?',
            questionMy:
                'စုစုသည် မွေးနေ့ကတ်ပြားဒီဇိုင်းဆွဲရန် ဘယ်အက်ပ်ကိုသုံးသနည်း။',
            optionsEn: [
              'A drawing app',
              'A reading app',
              'A web browser',
              'An operating system',
            ],
            optionsMy: [
              'Drawing app',
              'Reading app',
              'Web browser',
              'Operating system',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'Which app does Su Su use for her science project?',
            questionMy: 'စုစုသည် သိပ္ပံပရောဂျက်အတွက် ဘယ်အက်ပ်ကိုသုံးသနည်း။',
            optionsEn: [
              'A web browser',
              'A drawing app',
              'A reading app',
              'An antivirus',
            ],
            optionsMy: [
              'Web browser',
              'Drawing app',
              'Reading app',
              'Antivirus',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What would happen to Su Su's apps if the operating system did not run first?",
            questionMy:
                'Operating system အရင်ဆုံးမလည်ပတ်ပါက စုစု၏ အက်ပ်များ မည်သို့ဖြစ်မည်နည်း။',
            optionsEn: [
              'None of them would be able to open',
              'They would run faster',
              'They would become system software',
              'They would delete themselves',
            ],
            optionsMy: [
              'တစ်ခုမျှ ဖွင့်၍မရနိုင်ပါ',
              'ပိုမြန်စွာ အလုပ်လုပ်လိမ့်မည်',
              'System software အဖြစ်ပြောင်းလိမ့်မည်',
              'သူတို့ကိုယ်တိုင် ဖျက်ပစ်လိမ့်မည်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w3-d5',
      dayNumber: 5,
      titleEn: 'Week 3 Recap Quiz',
      titleMy: 'တတိယပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'Which type of software manages the whole computer?',
          questionMy:
              'ကွန်ပျူတာတစ်ခုလုံးကို စီမံခန့်ခွဲသော software အမျိုးအစားမှာ အဘယ်နည်း။',
          optionsEn: [
            'System software',
            'Application software',
            'Hardware',
            'A motherboard',
          ],
          optionsMy: [
            'System software',
            'Application software',
            'Hardware',
            'Motherboard',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'A word processor and a drawing app are both examples of...',
          questionMy:
              'Word processor နှင့် drawing app နှစ်ခုစလုံးသည် ဘာ၏ ဥပမာများဖြစ်ကြသနည်း။',
          optionsEn: [
            'Application software',
            'System software',
            'Hardware',
            'A CPU',
          ],
          optionsMy: [
            'Application software',
            'System software',
            'Hardware',
            'CPU',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does an operating system do?',
          questionMy: 'Operating system သည် ဘာလုပ်ဆောင်သနည်း။',
          optionsEn: [
            'Manages the whole computer so other software can run',
            'Only plays music',
            'Only stores photos',
            'Only connects the mouse',
          ],
          optionsMy: [
            'အခြား software များ လည်ပတ်နိုင်ရန် ကွန်ပျူတာတစ်ခုလုံးကို စီမံခန့်ခွဲသည်',
            'ဂီတသာဖွင့်သည်',
            'ဓာတ်ပုံသာသိမ်းသည်',
            'မောက်စ်ကိုသာ ချိတ်ဆက်သည်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which of these best protects a computer from harmful programs?',
          questionMy:
              'ကွန်ပျူတာကို အန္တရာယ်ရှိသောပရိုဂရမ်များမှ အကောင်းဆုံးကာကွယ်ပေးသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Antivirus software',
            'A web browser',
            'A drawing app',
            'A word processor',
          ],
          optionsMy: [
            'Antivirus software',
            'Web browser',
            'Drawing app',
            'Word processor',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Hardware is to touching as software is to...',
          questionMy: 'Hardware သည် ထိတွေ့နိုင်သကဲ့သို့ software မှာမူ...',
          optionsEn: [
            'A set of instructions you cannot physically touch',
            'A screen you look at',
            'A cable you plug in',
            'A battery you charge',
          ],
          optionsMy: [
            'ရုပ်ပိုင်းအရ ထိတွေ့၍မရသော ညွှန်ကြားချက်များစု',
            'ကြည့်ရသောစခရင်',
            'ချိတ်ဆက်သော ကြိုး',
            'အားသွင်းရသော ဘက်ထရီ',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 1, Week 4: "Files and Folders"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek4 = CourseWeekDef(
  id: 'course-secondary1-computing-w4',
  weekNumber: 4,
  titleEn: 'Files and Folders',
  titleMy: 'ဖိုင်များနှင့် ဖိုလ်ဒါများ',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w4-d1',
      dayNumber: 1,
      titleEn: 'Organizing My Work',
      titleMy: 'ကျွန်ုပ်၏အလုပ်ကို စနစ်တကျစီစဉ်ခြင်း',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a "file" on a computer?',
          questionMy: 'ကွန်ပျူတာပေါ်ရှိ "file" ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A single item, like a document, photo, or song, saved with a name',
            'A drawer for keeping paper',
            'Only a type of software',
            'A part of the CPU',
          ],
          optionsMy: [
            'အမည်တစ်ခုဖြင့် သိမ်းဆည်းထားသော စာရွက်စာတမ်း၊ ဓာတ်ပုံ သို့မဟုတ် သီချင်းကဲ့သို့ ပစ္စည်းတစ်ခု',
            'စာရွက်များထားရန် အံဆွဲတစ်ခု',
            'Software အမျိုးအစားတစ်ခုသာ',
            'CPU ၏ အစိတ်အပိုင်းတစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is a "folder" used for?',
          questionMy: '"Folder" ကို ဘာအတွက်အသုံးပြုသနည်း။',
          optionsEn: [
            'Grouping related files together so they are easy to find',
            'Making the computer faster',
            'Printing documents',
            'Connecting to the internet',
          ],
          optionsMy: [
            'ဆက်စပ်ဖိုင်များကို လွယ်ကူစွာရှာနိုင်ရန် အုပ်စုဖွဲ့ထားရန်',
            'ကွန်ပျူတာကို ပိုမြန်စေရန်',
            'စာရွက်စာတမ်းများ ပရင့်ထုတ်ရန်',
            'အင်တာနက်ကို ချိတ်ဆက်ရန်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which of these file extensions usually belongs to a photo?',
          questionMy:
              'အောက်ပါဖိုင်နောက်ဆက်တွဲများအနက် ဓာတ်ပုံတစ်ပုံ၏ ဖြစ်လေ့ရှိသည်မှာ အဘယ်နည်း။',
          optionsEn: ['.jpg', '.mp3', '.docx', '.mp4'],
          optionsMy: ['.jpg', '.mp3', '.docx', '.mp4'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which of these file extensions usually belongs to a song?',
          questionMy:
              'အောက်ပါဖိုင်နောက်ဆက်တွဲများအနက် သီချင်းတစ်ပုဒ်၏ ဖြစ်လေ့ရှိသည်မှာ အဘယ်နည်း။',
          optionsEn: ['.mp3', '.jpg', '.docx', '.mp4'],
          optionsMy: ['.mp3', '.jpg', '.docx', '.mp4'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why is it a good idea to name files clearly, e.g. "Science_Homework.docx"?',
          questionMy:
              'ဖိုင်များကို "Science_Homework.docx" ကဲ့သို့ ရှင်းလင်းစွာ အမည်ပေးခြင်းသည် အဘယ်ကြောင့် ကောင်းသနည်း။',
          optionsEn: [
            'So you and others can find and understand the file later',
            'So the file becomes smaller',
            'So the computer runs faster',
            'So it turns into a folder',
          ],
          optionsMy: [
            'နောင်တွင် ကိုယ်တိုင်နှင့် အခြားသူများ ဖိုင်ကို ရှာဖွေနားလည်နိုင်ရန်',
            'ဖိုင်ပိုသေးလာစေရန်',
            'ကွန်ပျူတာ ပိုမြန်စေရန်',
            'Folder အဖြစ် ပြောင်းသွားစေရန်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w4-d2',
      dayNumber: 2,
      titleEn: 'Match the File Type',
      titleMy: 'ဖိုင်အမျိုးအစားကို ကိုက်ညီပါ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w4-file-jpg',
          termEn: 'photo.jpg',
          termMy: 'photo.jpg',
          matchEn: 'A picture or image file',
          matchMy: 'ပုံ သို့မဟုတ် ဓာတ်ပုံဖိုင်',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w4-file-mp3',
          termEn: 'song.mp3',
          termMy: 'song.mp3',
          matchEn: 'A sound or music file',
          matchMy: 'အသံ သို့မဟုတ် ဂီတဖိုင်',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w4-file-docx',
          termEn: 'essay.docx',
          termMy: 'essay.docx',
          matchEn: 'A written document file',
          matchMy: 'ရေးသားထားသော စာရွက်စာတမ်းဖိုင်',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w4-file-mp4',
          termEn: 'video.mp4',
          termMy: 'video.mp4',
          matchEn: 'A moving video file',
          matchMy: 'ရွေ့လျားနေသော ဗီဒီယိုဖိုင်',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w4-file-pdf',
          termEn: 'report.pdf',
          termMy: 'report.pdf',
          matchEn: 'A document file that looks the same on any device',
          matchMy:
              'မည်သည့်ကွန်ပျူတာတွင်မဆို တူညီစွာပေါ်နေသော စာရွက်စာတမ်းဖိုင်',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w4-d3',
      dayNumber: 3,
      titleEn: 'Sort the Files into Folders',
      titleMy: 'ဖိုင်များကို ဖိုလ်ဒါများထဲ ခွဲခြားစီပါ',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Documents', 'Pictures', 'Music'],
        bucketsMy: ['Documents', 'Pictures', 'Music'],
        items: [
          SortingItem(
            id: 'w4-sort-essay',
            labelEn: 'essay.docx',
            labelMy: 'essay.docx',
            correctBucketEn: 'Documents',
            correctBucketMy: 'Documents',
          ),
          SortingItem(
            id: 'w4-sort-report',
            labelEn: 'report.pdf',
            labelMy: 'report.pdf',
            correctBucketEn: 'Documents',
            correctBucketMy: 'Documents',
          ),
          SortingItem(
            id: 'w4-sort-holiday',
            labelEn: 'holiday.jpg',
            labelMy: 'holiday.jpg',
            correctBucketEn: 'Pictures',
            correctBucketMy: 'Pictures',
          ),
          SortingItem(
            id: 'w4-sort-selfie',
            labelEn: 'selfie.png',
            labelMy: 'selfie.png',
            correctBucketEn: 'Pictures',
            correctBucketMy: 'Pictures',
          ),
          SortingItem(
            id: 'w4-sort-song',
            labelEn: 'song.mp3',
            labelMy: 'song.mp3',
            correctBucketEn: 'Music',
            correctBucketMy: 'Music',
          ),
          SortingItem(
            id: 'w4-sort-podcast',
            labelEn: 'podcast.mp3',
            labelMy: 'podcast.mp3',
            correctBucketEn: 'Music',
            correctBucketMy: 'Music',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w4-d4',
      dayNumber: 4,
      titleEn: "Hla Hla's Science Project",
      titleMy: 'လှလှ၏ သိပ္ပံပရောဂျက်',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Hla Hla's Science Project",
        titleMy: 'လှလှ၏ သိပ္ပံပရောဂျက်',
        passageEn:
            "Before starting her science project, Hla Hla made a new folder on the computer called 'Science Project'. Inside it, she saved her written report as a .docx file, a photo of her experiment as a .jpg file, and a short video of the results as an .mp4 file. She gave every file a clear name instead of leaving it as 'Untitled', so her teacher could find each part quickly. When it was time to submit her project, Hla Hla simply opened the 'Science Project' folder and everything she needed was there in one place.",
        passageMy:
            'လှလှသည် သူမ၏ သိပ္ပံပရောဂျက်ကို မစတင်မီ ကွန်ပျူတာပေါ်တွင် "Science Project" ဟု နာမည်ပေးထားသော folder အသစ်တစ်ခု ဖန်တီးခဲ့သည်။ ၎င်း၏အတွင်းတွင် သူမ၏ ရေးသားထားသော အစီရင်ခံစာကို .docx ဖိုင်အဖြစ်၊ စမ်းသပ်မှု၏ ဓာတ်ပုံကို .jpg ဖိုင်အဖြစ်၊ ရလဒ်များ၏ ဗီဒီယိုတိုတစ်ခုကို .mp4 ဖိုင်အဖြစ် သိမ်းဆည်းခဲ့သည်။ သူမသည် ဖိုင်တိုင်းကို "Untitled" အဖြစ် မထားခဲ့ဘဲ ရှင်းလင်းသောအမည်ပေးခဲ့သဖြင့် ဆရာမသည် အပိုင်းတစ်ခုစီကို လျင်မြန်စွာရှာတွေ့နိုင်ခဲ့သည်။ ပရောဂျက်တင်သွင်းချိန်ရောက်သောအခါ လှလှသည် "Science Project" folder ကိုသာ ဖွင့်လိုက်ရုံဖြင့် လိုအပ်သမျှအားလုံးကို တစ်နေရာတည်းတွင် တွေ့ရှိခဲ့သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What did Hla Hla name her new folder?',
            questionMy: 'လှလှသည် သူမ၏ folder အသစ်ကို ဘာအမည်ပေးခဲ့သနည်း။',
            optionsEn: [
              'Science Project',
              'My Homework',
              'Untitled',
              'School Files',
            ],
            optionsMy: [
              'Science Project',
              'My Homework',
              'Untitled',
              'School Files',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What file type was her written report?',
            questionMy: 'သူမ၏ ရေးသားအစီရင်ခံစာသည် ဘယ်ဖိုင်အမျိုးအစားဖြစ်သနည်း။',
            optionsEn: ['.docx', '.jpg', '.mp4', '.mp3'],
            optionsMy: ['.docx', '.jpg', '.mp4', '.mp3'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What file type was the photo of her experiment?',
            questionMy:
                'သူမ၏ စမ်းသပ်မှုဓာတ်ပုံသည် ဘယ်ဖိုင်အမျိုးအစားဖြစ်သနည်း။',
            optionsEn: ['.jpg', '.docx', '.mp4', '.mp3'],
            optionsMy: ['.jpg', '.docx', '.mp4', '.mp3'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What file type was the video of her results?',
            questionMy: 'သူမ၏ ရလဒ်ဗီဒီယိုသည် ဘယ်ဖိုင်အမျိုးအစားဖြစ်သနည်း။',
            optionsEn: ['.mp4', '.jpg', '.docx', '.mp3'],
            optionsMy: ['.mp4', '.jpg', '.docx', '.mp3'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'Why did Hla Hla give every file a clear name?',
            questionMy:
                'လှလှသည် ဖိုင်တိုင်းကို ရှင်းလင်းသောအမည် အဘယ်ကြောင့် ပေးခဲ့သနည်း။',
            optionsEn: [
              'So her teacher could find each part quickly',
              'So the files would delete themselves',
              'So the folder would disappear',
              'So the computer would run out of storage',
            ],
            optionsMy: [
              'ဆရာမသည် အပိုင်းတစ်ခုစီကို လျင်မြန်စွာရှာတွေ့နိုင်ရန်',
              'ဖိုင်များ ကိုယ်တိုင်ဖျက်သွားစေရန်',
              'Folder ပျောက်ကွယ်သွားစေရန်',
              'ကွန်ပျူတာ storage ကုန်သွားစေရန်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w4-d5',
      dayNumber: 5,
      titleEn: 'Week 4 Recap Quiz',
      titleMy: 'စတုတ္ထပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a folder mainly used for?',
          questionMy: 'Folder ကို အဓိကအားဖြင့် ဘာအတွက်အသုံးပြုသနည်း။',
          optionsEn: [
            'Grouping related files together',
            'Processing instructions',
            'Connecting to Wi-Fi',
            'Playing music aloud',
          ],
          optionsMy: [
            'ဆက်စပ်ဖိုင်များကို အုပ်စုဖွဲ့ထားရန်',
            'ညွှန်ကြားချက်များကို ဆောင်ရွက်ရန်',
            'Wi-Fi ချိတ်ဆက်ရန်',
            'ဂီတကျယ်ကျယ်ဖွင့်ရန်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these file extensions belongs to a document?',
          questionMy:
              'အောက်ပါဖိုင်နောက်ဆက်တွဲများအနက် စာရွက်စာတမ်းတစ်ခု၏ ဖြစ်သည်မှာ အဘယ်နည်း။',
          optionsEn: ['.docx', '.mp3', '.jpg', '.mp4'],
          optionsMy: ['.docx', '.mp3', '.jpg', '.mp4'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which of these is application software that could be used to write a report?',
          questionMy:
              'အစီရင်ခံစာရေးရန်သုံးနိုင်သော application software မှာ အဘယ်နည်း။',
          optionsEn: [
            'A word processor',
            'An operating system',
            'A CPU',
            'A motherboard',
          ],
          optionsMy: [
            'Word processor',
            'Operating system',
            'CPU',
            'Motherboard',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Where would a photo taken for a project usually be permanently stored?',
          questionMy:
              'ပရောဂျက်အတွက် ရိုက်ထားသောဓာတ်ပုံကို ပုံမှန်အားဖြင့် အမြဲတမ်း မည်သည့်နေရာတွင် သိမ်းဆည်းလေ့ရှိသနည်း။',
          optionsEn: [
            'The hard drive / SSD',
            'The RAM',
            'The CPU',
            'The monitor',
          ],
          optionsMy: ['Hard drive / SSD', 'RAM', 'CPU', 'မော်နီတာ'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Why is it useful to organize files into named folders?',
          questionMy:
              'ဖိုင်များကို နာမည်ပေးထားသော folder များထဲသို့ စနစ်တကျစီစဉ်ခြင်းသည် အဘယ်ကြောင့် အသုံးဝင်သနည်း။',
          optionsEn: [
            'It makes files easier to find and understand later',
            'It makes the CPU faster',
            'It turns files into software',
            'It deletes old files automatically',
          ],
          optionsMy: [
            'ဖိုင်များကို နောင်တွင် ပိုလွယ်ကူစွာ ရှာဖွေနားလည်နိုင်စေသည်',
            'CPU ကို ပိုမြန်စေသည်',
            'ဖိုင်များကို software အဖြစ်ပြောင်းစေသည်',
            'ဖိုင်ဟောင်းများကို အလိုအလျောက်ဖျက်ပစ်သည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary1ComputingTerm1 = CourseTermDef(
  id: 'course-secondary1-computing-t1',
  termNumber: 1,
  titleEn: 'Computing Foundations',
  titleMy: 'ကွန်ပျူတာ အခြေခံများ',
  certificateTitleEn: 'Computing Foundations',
  certificateTitleMy: 'ကွန်ပျူတာ အခြေခံ',
  weeks: [
    _secondary1ComputingWeek1,
    _secondary1ComputingWeek2,
    _secondary1ComputingWeek3,
    _secondary1ComputingWeek4,
  ], // Term 1 complete (Weeks 1-4); Terms 2-3 not authored yet
);

/// Secondary 1 Computing's full-year pathway. Only Term 1 (Weeks 1-4) is
/// populated so far -- [totalWeeks] stays 36 (the full roadmap's true
/// size) even though [terms] only contains what's been authored, so UI
/// code can show "Week 1 of 36" honestly rather than "Week 1 of 4".
const CoursePathwayDef secondary1ComputingPathway = CoursePathwayDef(
  id: 'course-secondary1-computing',
  subject: 'computing',
  grade: Grade.secondary1,
  titleEn: 'Computing — Full Year Course',
  titleMy: 'ကွန်ပျူတာ — နှစ်တစ်ခုလုံး သင်တန်း',
  descriptionEn:
      'A full academic-year computing course: 3 terms, 36 weeks, daily bite-sized lessons.',
  descriptionMy:
      'ကွန်ပျူတာ ပညာသင်နှစ်တစ်ခုလုံး သင်တန်း - ၃ ဂိမ်း၊ ၃၆ ပတ်၊ နေ့စဉ် သင်ခန်းစာများ။',
  totalWeeks: 36,
  terms: [_secondary1ComputingTerm1],
);

/// Every defined course pathway -- extend this list as more subjects/
/// grades get authored beyond this vertical slice.
const List<CoursePathwayDef> allCoursePathways = [secondary1ComputingPathway];

/// Finds the [DailyLessonDef] with [id] across every pathway/term/week, or
/// `null` if not found (e.g. a stale or mistyped id). Single shared lookup
/// used by [quizQuestionsForModule]/[dragMatchPairsForModule]'s
/// course-pathway fallback and by [SortingScreen]/[ReadingScreen] directly.
DailyLessonDef? courseDailyLessonById(String id) {
  for (final pathway in allCoursePathways) {
    for (final term in pathway.terms) {
      for (final week in term.weeks) {
        for (final lesson in week.dailyLessons) {
          if (lesson.id == id) return lesson;
        }
      }
    }
  }
  return null;
}
