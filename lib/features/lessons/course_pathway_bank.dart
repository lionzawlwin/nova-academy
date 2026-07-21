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
/// Secondary 1 Computing, Terms 1-2 (Weeks 1-8) are fully authored (see
/// [secondary1ComputingPathway]) -- two complete terms proving the
/// pipeline end-to-end (data model, all four interaction types, gamified
/// path UI, persisted completion) before committing to authoring Term 3.
/// Weeks 1-4 (Term 1) follow a deliberate Cambridge/Collins-style spiral:
/// Week 1 introduces hardware vs. software and input/output/storage; Week
/// 2 revisits storage at a deeper level (CPU/RAM/motherboard -- processing
/// vs. memory vs. storage); Week 3 revisits the hardware/software split
/// from the software side (system vs. application software); Week 4
/// applies both back to a practical skill (organizing files/folders),
/// reinforcing storage and software concepts in a new context rather than
/// introducing them once and moving on. Weeks 5-8 (Term 2) continue the
/// spiral outward: Week 5 introduces networks (LAN/WAN, wired/wireless);
/// Week 6 narrows to the specific internet service students already use
/// day-to-day (the Web, browsers, search engines); Week 7 revisits that
/// same internet/network territory through an online-safety lens; Week 8
/// closes the term by revisiting Term 1 Week 2's storage/hardware content
/// at a deeper level -- how storage is actually made of bits and bytes.
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

// =====================================================================
// Secondary 1 Computing -- Term 2, Week 5: "Connecting Computers: What
// is a Network?"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek5 = CourseWeekDef(
  id: 'course-secondary1-computing-w5',
  weekNumber: 5,
  titleEn: 'Connecting Computers: What is a Network?',
  titleMy: 'ကွန်ပျူတာများ ချိတ်ဆက်ခြင်း - ကွန်ရက်ဆိုသည်မှာ',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w5-d1',
      dayNumber: 1,
      titleEn: 'What is a Network?',
      titleMy: 'ကွန်ရက်ဆိုသည်မှာ',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a computer network?',
          questionMy: 'ကွန်ပျူတာကွန်ရက်ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Two or more computers connected together to share data',
            'A single computer with no connections',
            'A type of printer',
            'A software application for drawing',
          ],
          optionsMy: [
            'ဒေတာမျှဝေရန် ချိတ်ဆက်ထားသော ကွန်ပျူတာနှစ်လုံး သို့မဟုတ် ထို့ထက်ပို၍',
            'ချိတ်ဆက်မှုမရှိသော ကွန်ပျူတာတစ်လုံးတည်း',
            'ပရင်တာအမျိုးအစားတစ်ခု',
            'ပုံဆွဲရန် software application',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does LAN stand for?',
          questionMy: 'LAN ဆိုသည်မှာ ဘာ၏ အတိုကောက်ဖြစ်သနည်း။',
          optionsEn: [
            'Local Area Network',
            'Long Area Network',
            'Little Access Network',
            'Live Application Network',
          ],
          optionsMy: [
            'Local Area Network',
            'Long Area Network',
            'Little Access Network',
            'Live Application Network',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What is the main benefit of connecting computers into a network?',
          questionMy:
              'ကွန်ပျူတာများကို ကွန်ရက်တစ်ခုအဖြစ် ချိတ်ဆက်ခြင်း၏ အဓိကအကျိုးကျေးဇူးမှာ အဘယ်နည်း။',
          optionsEn: [
            'Sharing files, printers, and an internet connection easily',
            'Making each computer heavier',
            'Removing the need for electricity',
            'Making files impossible to open',
          ],
          optionsMy: [
            'ဖိုင်များ၊ ပရင်တာများနှင့် အင်တာနက်ချိတ်ဆက်မှုကို လွယ်ကူစွာ မျှဝေနိုင်ခြင်း',
            'ကွန်ပျူတာတစ်လုံးစီကို ပိုလေးလံသွားစေခြင်း',
            'လျှပ်စစ်လိုအပ်မှုကို ဖယ်ရှားပေးခြင်း',
            'ဖိုင်များကို ဖွင့်၍မရအောင် ပြုလုပ်ခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which device connects a home network to the internet?',
          questionMy:
              'အိမ်ကွန်ရက်ကို အင်တာနက်နှင့် ချိတ်ဆက်ပေးသည့် ပစ္စည်းမှာ အဘယ်နည်း။',
          optionsEn: ['A router', 'A keyboard', 'A monitor', 'A mouse'],
          optionsMy: ['Router', 'ကီးဘုတ်', 'မော်နီတာ', 'မောက်စ်'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'The Internet, which connects millions of networks across the world, is an example of a...',
          questionMy:
              'ကမ္ဘာတစ်ဝှမ်းရှိ ကွန်ရက်သန်းချီကို ချိတ်ဆက်ပေးသော အင်တာနက်သည် ဘယ်အမျိုးအစား ကွန်ရက်၏ ဥပမာဖြစ်သနည်း။',
          optionsEn: [
            'WAN (Wide Area Network)',
            'LAN (Local Area Network)',
            'A single computer',
            'A printer cable',
          ],
          optionsMy: [
            'WAN (Wide Area Network)',
            'LAN (Local Area Network)',
            'ကွန်ပျူတာတစ်လုံးတည်း',
            'ပရင်တာကြိုး',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w5-d2',
      dayNumber: 2,
      titleEn: 'Network Vocabulary',
      titleMy: 'ကွန်ရက်ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w5-net-lan',
          termEn: 'LAN',
          termMy: 'LAN',
          matchEn: 'A network covering a small area, like one school building',
          matchMy:
              'ကျောင်းအဆောက်အအုံတစ်ခုကဲ့သို့ ဧရိယာသေးငယ်သောနေရာကို လွှမ်းခြုံသော ကွန်ရက်',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w5-net-wan',
          termEn: 'WAN',
          termMy: 'WAN',
          matchEn:
              'A network covering a very large area, like a whole country',
          matchMy:
              'တစ်နိုင်ငံလုံးကဲ့သို့ ဧရိယာအလွန်ကျယ်ပြန့်သောနေရာကို လွှမ်းခြုံသော ကွန်ရက်',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w5-net-router',
          termEn: 'Router',
          termMy: 'Router',
          matchEn:
              'A device that directs data between networks and connects to the internet',
          matchMy:
              'ကွန်ရက်များအကြား ဒေတာကို ညွှန်ကြားပေးပြီး အင်တာနက်နှင့်ချိတ်ဆက်ပေးသော ပစ္စည်း',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w5-net-wifi',
          termEn: 'Wi-Fi',
          termMy: 'Wi-Fi',
          matchEn: 'A way of connecting to a network wirelessly',
          matchMy: 'ကြိုးမပါဘဲ ကွန်ရက်တစ်ခုသို့ ချိတ်ဆက်နိုင်သောနည်းလမ်း',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w5-net-server',
          termEn: 'Server',
          termMy: 'Server',
          matchEn:
              'A powerful computer that stores files and shares them with other computers',
          matchMy:
              'ဖိုင်များကို သိမ်းဆည်းပြီး အခြားကွန်ပျူတာများနှင့် မျှဝေပေးသော အားကောင်းသည့် ကွန်ပျူတာ',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w5-d3',
      dayNumber: 3,
      titleEn: 'Wired or Wireless?',
      titleMy: 'ကြိုးပါလား၊ ကြိုးမပါလား',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Wired', 'Wireless'],
        bucketsMy: ['Wired (ကြိုးပါ)', 'Wireless (ကြိုးမပါ)'],
        items: [
          SortingItem(
            id: 'w5-sort-ethernet',
            labelEn: 'Ethernet Cable',
            labelMy: 'Ethernet Cable',
            correctBucketEn: 'Wired',
            correctBucketMy: 'Wired (ကြိုးပါ)',
          ),
          SortingItem(
            id: 'w5-sort-fibre',
            labelEn: 'Fibre-Optic Cable',
            labelMy: 'Fibre-Optic Cable',
            correctBucketEn: 'Wired',
            correctBucketMy: 'Wired (ကြိုးပါ)',
          ),
          SortingItem(
            id: 'w5-sort-telephoneline',
            labelEn: 'Telephone Line',
            labelMy: 'Telephone Line',
            correctBucketEn: 'Wired',
            correctBucketMy: 'Wired (ကြိုးပါ)',
          ),
          SortingItem(
            id: 'w5-sort-wifi',
            labelEn: 'Wi-Fi',
            labelMy: 'Wi-Fi',
            correctBucketEn: 'Wireless',
            correctBucketMy: 'Wireless (ကြိုးမပါ)',
          ),
          SortingItem(
            id: 'w5-sort-bluetooth',
            labelEn: 'Bluetooth',
            labelMy: 'Bluetooth',
            correctBucketEn: 'Wireless',
            correctBucketMy: 'Wireless (ကြိုးမပါ)',
          ),
          SortingItem(
            id: 'w5-sort-mobiledata',
            labelEn: 'Mobile Data',
            labelMy: 'Mobile Data',
            correctBucketEn: 'Wireless',
            correctBucketMy: 'Wireless (ကြိုးမပါ)',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w5-d4',
      dayNumber: 4,
      titleEn: 'The School Computer Lab',
      titleMy: 'ကျောင်း ကွန်ပျူတာဓာတ်ခွဲခန်း',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: 'The School Computer Lab',
        titleMy: 'ကျောင်း ကွန်ပျူတာဓာတ်ခွဲခန်း',
        passageEn:
            "Every computer in Min Min's school computer lab is connected together to make a LAN. This means Min Min can save his work onto the shared server, and open the same file later on a different computer in the same room. When his class needs to print their projects, every computer sends the job to one shared printer, so the school does not need to buy a printer for each desk. Min Min's teacher explains that this network also connects to a router, which links the whole school to the internet so students can research online.",
        passageMy:
            'မင်းမင်း၏ ကျောင်းကွန်ပျူတာဓာတ်ခွဲခန်းရှိ ကွန်ပျူတာတိုင်းကို LAN တစ်ခုဖြစ်အောင် အတူချိတ်ဆက်ထားသည်။ ဆိုလိုသည်မှာ မင်းမင်းသည် သူ၏အလုပ်ကို မျှဝေထားသော server ပေါ်တွင် သိမ်းဆည်းနိုင်ပြီး၊ အချိန်နောက်ကျမှ တစ်ခန်းတည်းရှိ ကွန်ပျူတာတစ်လုံးမှ တူညီသောဖိုင်ကို ပြန်ဖွင့်နိုင်သည်။ သူ၏အတန်းက ပရောဂျက်များကို ပရင့်ထုတ်လိုသောအခါ ကွန်ပျူတာတိုင်းက အလုပ်ကို မျှဝေထားသော ပရင်တာတစ်လုံးထံ ပေးပို့ကြသဖြင့် ကျောင်းသည် စားပွဲတိုင်းအတွက် ပရင်တာသီးသန့် ဝယ်စရာမလိုပါ။ မင်းမင်း၏ဆရာက ဤကွန်ရက်သည် router တစ်ခုနှင့်လည်း ချိတ်ဆက်ထားပြီး ကျောင်းတစ်ကျောင်းလုံးကို အင်တာနက်နှင့်ဆက်စပ်ပေးသဖြင့် ကျောင်းသားများ အွန်လိုင်းသုတေသနပြုနိုင်ကြောင်း ရှင်းပြသည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                'What do all the computers in the lab make when connected together?',
            questionMy:
                'ဓာတ်ခွဲခန်းရှိ ကွန်ပျူတာအားလုံးကို အတူချိတ်ဆက်လိုက်သောအခါ ဘာဖြစ်လာသနည်း။',
            optionsEn: ['A LAN', 'A printer', 'A router', 'A monitor'],
            optionsMy: ['LAN', 'ပရင်တာ', 'Router', 'မော်နီတာ'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'Where does Min Min save his work so he can open it on a different computer?',
            questionMy:
                'မင်းမင်းသည် အခြားကွန်ပျူတာတစ်လုံးတွင် ပြန်ဖွင့်နိုင်ရန် သူ၏အလုပ်ကို မည်သည့်နေရာတွင် သိမ်းဆည်းသနည်း။',
            optionsEn: [
              'The shared server',
              'His pocket',
              'The printer',
              'The router',
            ],
            optionsMy: ['မျှဝေထားသော server', 'သူ၏အိတ်ကပ်', 'ပရင်တာ', 'Router'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Why doesn't the school need a printer for every desk?",
            questionMy:
                'ကျောင်းသည် စားပွဲတိုင်းအတွက် ပရင်တာအဘယ့်ကြောင့် မလိုအပ်သနည်း။',
            optionsEn: [
              'Every computer can send jobs to one shared printer',
              'Printers are illegal',
              'Students are not allowed to print',
              'Computers cannot connect to printers',
            ],
            optionsMy: [
              'ကွန်ပျူတာတိုင်းက မျှဝေထားသော ပရင်တာတစ်လုံးထံ အလုပ်ပို့နိုင်၍',
              'ပရင်တာများသည် တရားမဝင်၍',
              'ကျောင်းသားများ ပရင့်ထုတ်ခွင့်မရှိ၍',
              'ကွန်ပျူတာများသည် ပရင်တာနှင့် ချိတ်ဆက်၍မရ၍',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What connects the whole school's network to the internet?",
            questionMy:
                'ကျောင်းတစ်ကျောင်းလုံး၏ ကွန်ရက်ကို အင်တာနက်နှင့် ချိတ်ဆက်ပေးသည်မှာ အဘယ်နည်း။',
            optionsEn: ['A router', 'A mouse', 'A keyboard', 'A monitor'],
            optionsMy: ['Router', 'မောက်စ်', 'ကီးဘုတ်', 'မော်နီတာ'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'Why do students need the network connected to the internet?',
            questionMy:
                'ကျောင်းသားများသည် ကွန်ရက်ကို အင်တာနက်နှင့် ချိတ်ဆက်ရန် အဘယ့်ကြောင့်လိုအပ်သနည်း။',
            optionsEn: [
              'So they can research online',
              'So the computers become heavier',
              'So printers stop working',
              'So files disappear',
            ],
            optionsMy: [
              'အွန်လိုင်းသုတေသနပြုနိုင်ရန်',
              'ကွန်ပျူတာများ ပိုလေးလံသွားစေရန်',
              'ပရင်တာများ ရပ်တန့်သွားစေရန်',
              'ဖိုင်များ ပျောက်ကွယ်သွားစေရန်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w5-d5',
      dayNumber: 5,
      titleEn: 'Week 5 Recap Quiz',
      titleMy: 'ပဉ္စမပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a network?',
          questionMy: 'ကွန်ရက်ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Two or more computers connected together to share data',
            'A single unconnected computer',
            'A type of software only',
            'A physical printer',
          ],
          optionsMy: [
            'ဒေတာမျှဝေရန် ချိတ်ဆက်ထားသော ကွန်ပျူတာနှစ်လုံး သို့မဟုတ် ထို့ထက်ပို၍',
            'ချိတ်ဆက်မှုမရှိသော ကွန်ပျူတာတစ်လုံးတည်း',
            'Software တစ်မျိုးတည်း',
            'ရုပ်ပိုင်း ပရင်တာ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which is usually bigger, a LAN or a WAN?',
          questionMy: 'LAN နှင့် WAN တွင် ဘယ်ဟာက ပိုကြီးပါသနည်း။',
          optionsEn: [
            'A WAN',
            'A LAN',
            'They are always equal',
            'Neither has a size',
          ],
          optionsMy: ['WAN', 'LAN', 'အမြဲတမ်း တူညီသည်', 'အရွယ်အစား မရှိပါ'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What connects a home network to the internet?',
          questionMy:
              'အိမ်ကွန်ရက်ကို အင်တာနက်နှင့် ချိတ်ဆက်ပေးသည်မှာ အဘယ်နည်း။',
          optionsEn: ['A router', 'A keyboard', 'A monitor', 'A mouse'],
          optionsMy: ['Router', 'ကီးဘုတ်', 'မော်နီတာ', 'မောက်စ်'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which of these is a wireless way to connect to a network?',
          questionMy:
              'အောက်ပါတို့အနက် ကွန်ရက်တစ်ခုသို့ ကြိုးမပါဘဲ ချိတ်ဆက်နိုင်သောနည်းလမ်းမှာ အဘယ်နည်း။',
          optionsEn: [
            'Wi-Fi',
            'Ethernet Cable',
            'Telephone Line',
            'Fibre-Optic Cable',
          ],
          optionsMy: [
            'Wi-Fi',
            'Ethernet Cable',
            'Telephone Line',
            'Fibre-Optic Cable',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does a server do?',
          questionMy: 'Server သည် ဘာလုပ်ဆောင်သနည်း။',
          optionsEn: [
            'Stores files and shares them with other computers on the network',
            'Only prints documents',
            'Only plays music',
            'Only displays pictures',
          ],
          optionsMy: [
            'ဖိုင်များကို သိမ်းဆည်းပြီး ကွန်ရက်ပေါ်ရှိ အခြားကွန်ပျူတာများနှင့် မျှဝေပေးသည်',
            'စာရွက်စာတမ်းများသာ ပရင့်ထုတ်သည်',
            'ဂီတသာဖွင့်သည်',
            'ပုံများသာပြသည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 2, Week 6: "The Internet and the World
// Wide Web"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek6 = CourseWeekDef(
  id: 'course-secondary1-computing-w6',
  weekNumber: 6,
  titleEn: 'The Internet and the World Wide Web',
  titleMy: 'အင်တာနက်နှင့် ကမ္ဘာလုံးဆိုင်ရာ ဝက်ဘ်ကွန်ရက်',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w6-d1',
      dayNumber: 1,
      titleEn: 'Internet vs. World Wide Web',
      titleMy: 'အင်တာနက် နှင့် ကမ္ဘာလုံးဆိုင်ရာ ဝက်ဘ်ကွန်ရက်',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is the Internet?',
          questionMy: 'အင်တာနက်ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A huge network connecting computers and networks around the world',
            'A single website',
            'A type of printer',
            'A physical cable only',
          ],
          optionsMy: [
            'ကမ္ဘာတစ်ဝှမ်းရှိ ကွန်ပျူတာများနှင့် ကွန်ရက်များကို ချိတ်ဆက်ပေးသော ကွန်ရက်ကြီးတစ်ခု',
            'ဝက်ဘ်ဆိုက်တစ်ခုတည်း',
            'ပရင်တာအမျိုးအစားတစ်ခု',
            'ရုပ်ပိုင်းကြိုးတစ်ခုတည်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is the World Wide Web (WWW)?',
          questionMy:
              'ကမ္ဘာလုံးဆိုင်ရာ ဝက်ဘ်ကွန်ရက် (WWW) ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A collection of websites and pages you can view using a browser',
            'The same thing as a router',
            'A type of hard drive',
            'A brand of computer',
          ],
          optionsMy: [
            'Browser ဖြင့်ကြည့်ရှုနိုင်သော ဝက်ဘ်ဆိုက်နှင့်စာမျက်နှာများ စုစည်းမှု',
            'Router နှင့်တူညီသောအရာ',
            'Hard drive အမျိုးအစားတစ်ခု',
            'ကွန်ပျူတာအမှတ်တံဆိပ်တစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What software do you use to view websites?',
          questionMy: 'ဝက်ဘ်ဆိုက်များကို ကြည့်ရှုရန် ဘာ software ကိုသုံးသနည်း။',
          optionsEn: [
            'A web browser',
            'A word processor',
            'An operating system only',
            'A printer driver',
          ],
          optionsMy: [
            'Web browser',
            'Word processor',
            'Operating system တစ်ခုတည်း',
            'Printer driver',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What do we call the address of a website, e.g. www.example.com?',
          questionMy:
              'www.example.com ကဲ့သို့ ဝက်ဘ်ဆိုက်၏ လိပ်စာကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['A URL', 'A CPU', 'A folder', 'A file extension'],
          optionsMy: ['URL', 'CPU', 'Folder', 'File extension'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What tool helps you find information by typing in keywords?',
          questionMy:
              'သော့ချက်စာလုံးများ ရိုက်ထည့်ပြီး အချက်အလက်ရှာဖွေရန် ကူညီပေးသောကိရိယာမှာ အဘယ်နည်း။',
          optionsEn: [
            'A search engine',
            'A printer',
            'A motherboard',
            'A power supply',
          ],
          optionsMy: ['Search engine', 'ပရင်တာ', 'Motherboard', 'Power supply'],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w6-d2',
      dayNumber: 2,
      titleEn: 'Match the Internet Terms',
      titleMy: 'အင်တာနက်ဝေါဟာရများကို ကိုက်ညီပါ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w6-net-browser',
          termEn: 'Web Browser',
          termMy: 'Web Browser',
          matchEn: 'Software used to visit and view websites',
          matchMy: 'ဝက်ဘ်ဆိုက်များ ဝင်ရောက်ကြည့်ရှုရန်သုံးသော software',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w6-net-url',
          termEn: 'URL',
          termMy: 'URL',
          matchEn: 'The address used to find a specific website',
          matchMy: 'ဝက်ဘ်ဆိုက်တစ်ခုကို ရှာဖွေရန်သုံးသော လိပ်စာ',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w6-net-searchengine',
          termEn: 'Search Engine',
          termMy: 'Search Engine',
          matchEn: 'A tool that helps you find information using keywords',
          matchMy:
              'သော့ချက်စာလုံးများသုံးပြီး အချက်အလက်ရှာဖွေရန် ကူညီသောကိရိယာ',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w6-net-website',
          termEn: 'Website',
          termMy: 'Website',
          matchEn: 'A collection of related web pages',
          matchMy: 'ဆက်စပ်ဝက်ဘ်စာမျက်နှာများ စုစည်းမှု',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w6-net-email',
          termEn: 'Email',
          termMy: 'Email',
          matchEn: 'A way of sending written messages over the internet',
          matchMy: 'အင်တာနက်မှတစ်ဆင့် စာသားစကားများ ပေးပို့သောနည်းလမ်း',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w6-d3',
      dayNumber: 3,
      titleEn: 'Internet Services',
      titleMy: 'အင်တာနက် ဝန်ဆောင်မှုများ',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Communication', 'Finding Information'],
        bucketsMy: [
          'Communication (ဆက်သွယ်ရေး)',
          'Finding Information (အချက်အလက်ရှာဖွေခြင်း)',
        ],
        items: [
          SortingItem(
            id: 'w6-sort-email',
            labelEn: 'Email',
            labelMy: 'Email',
            correctBucketEn: 'Communication',
            correctBucketMy: 'Communication (ဆက်သွယ်ရေး)',
          ),
          SortingItem(
            id: 'w6-sort-messaging',
            labelEn: 'Instant Messaging',
            labelMy: 'Instant Messaging',
            correctBucketEn: 'Communication',
            correctBucketMy: 'Communication (ဆက်သွယ်ရေး)',
          ),
          SortingItem(
            id: 'w6-sort-videocall',
            labelEn: 'Video Call',
            labelMy: 'Video Call',
            correctBucketEn: 'Communication',
            correctBucketMy: 'Communication (ဆက်သွယ်ရေး)',
          ),
          SortingItem(
            id: 'w6-sort-searchengine',
            labelEn: 'Search Engine',
            labelMy: 'Search Engine',
            correctBucketEn: 'Finding Information',
            correctBucketMy: 'Finding Information (အချက်အလက်ရှာဖွေခြင်း)',
          ),
          SortingItem(
            id: 'w6-sort-encyclopedia',
            labelEn: 'Online Encyclopedia',
            labelMy: 'Online Encyclopedia',
            correctBucketEn: 'Finding Information',
            correctBucketMy: 'Finding Information (အချက်အလက်ရှာဖွေခြင်း)',
          ),
          SortingItem(
            id: 'w6-sort-newswebsite',
            labelEn: 'News Website',
            labelMy: 'News Website',
            correctBucketEn: 'Finding Information',
            correctBucketMy: 'Finding Information (အချက်အလက်ရှာဖွေခြင်း)',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w6-d4',
      dayNumber: 4,
      titleEn: "Zaw Zaw's Homework Research",
      titleMy: 'ဇော်ဇော်၏ အိမ်စာ သုတေသန',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Zaw Zaw's Homework Research",
        titleMy: 'ဇော်ဇော်၏ အိမ်စာ သုတေသန',
        passageEn:
            "For his geography homework, Zaw Zaw opened a web browser and typed a few keywords into a search engine to find facts about volcanoes. The search engine showed him a list of websites, and he clicked on one whose URL ended in a trusted address. He read several pages on that website and took notes. When he finished, Zaw Zaw used email to send his notes to his project partner, who was working from home that day.",
        passageMy:
            'ဇော်ဇော်သည် သူ၏ ပထဝီဝင်အိမ်စာအတွက် web browser တစ်ခုကိုဖွင့်ပြီး မီးတောင်များအကြောင်း အချက်အလက်ရှာဖွေရန် search engine ထဲသို့ သော့ချက်စာလုံးများ ရိုက်ထည့်ခဲ့သည်။ Search engine က ဝက်ဘ်ဆိုက်များစာရင်းကို ပြသပေးပြီး၊ သူသည် ယုံကြည်ရသောလိပ်စာဖြင့် အဆုံးသတ်သော URL တစ်ခုကို နှိပ်လိုက်သည်။ ထိုဝက်ဘ်ဆိုက်ပေါ်ရှိ စာမျက်နှာများစွာကို ဖတ်ပြီး မှတ်စုများ ရေးခဲ့သည်။ ပြီးသောအခါ ဇော်ဇော်သည် ထိုနေ့တွင် အိမ်မှအလုပ်လုပ်နေသော ပရောဂျက်လုပ်ဖော်ကိုင်ဖက်ထံ သူ၏မှတ်စုများကို email ဖြင့် ပေးပို့ခဲ့သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What did Zaw Zaw open to search for information?',
            questionMy: 'ဇော်ဇော်သည် အချက်အလက်ရှာဖွေရန် ဘာကိုဖွင့်ခဲ့သနည်း။',
            optionsEn: [
              'A web browser',
              'A word processor',
              'An email inbox only',
              'A printer',
            ],
            optionsMy: [
              'Web browser',
              'Word processor',
              'Email inbox တစ်ခုတည်း',
              'ပရင်တာ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did he type into the search engine?',
            questionMy: 'သူသည် search engine ထဲသို့ ဘာရိုက်ထည့်ခဲ့သနည်း။',
            optionsEn: [
              'Keywords',
              'His password',
              'His home address',
              'A file extension',
            ],
            optionsMy: [
              'သော့ချက်စာလုံးများ',
              'သူ၏စကားဝှက်',
              'သူ၏အိမ်လိပ်စာ',
              'File extension',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What is the address of a website called?',
            questionMy: 'ဝက်ဘ်ဆိုက်၏ လိပ်စာကို ဘာဟုခေါ်သနည်း။',
            optionsEn: ['A URL', 'A CPU', 'A byte', 'A folder'],
            optionsMy: ['URL', 'CPU', 'Byte', 'Folder'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did Zaw Zaw do on the website he trusted?',
            questionMy:
                'ဇော်ဇော်သည် ယုံကြည်ရသော ဝက်ဘ်ဆိုက်ပေါ်တွင် ဘာလုပ်ခဲ့သနည်း။',
            optionsEn: [
              'Read pages and took notes',
              'Deleted the website',
              'Printed his password',
              'Turned off the router',
            ],
            optionsMy: [
              'စာမျက်နှာများဖတ်ပြီး မှတ်စုရေးခဲ့သည်',
              'ဝက်ဘ်ဆိုက်ကို ဖျက်ခဲ့သည်',
              'သူ၏စကားဝှက်ကို ပရင့်ထုတ်ခဲ့သည်',
              'Router ကို ပိတ်ခဲ့သည်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'How did Zaw Zaw send his notes to his project partner?',
            questionMy:
                'ဇော်ဇော်သည် သူ၏မှတ်စုများကို ပရောဂျက်လုပ်ဖော်ကိုင်ဖက်ထံ မည်သို့ ပေးပို့ခဲ့သနည်း။',
            optionsEn: [
              'By email',
              'By printing and mailing it',
              'By phone call only',
              'By deleting it',
            ],
            optionsMy: [
              'Email ဖြင့်',
              'ပရင့်ထုတ်ပြီး စာပို့ခြင်းဖြင့်',
              'ဖုန်းခေါ်ဆိုမှုဖြင့်သာ',
              'ဖျက်ပစ်ခြင်းဖြင့်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w6-d5',
      dayNumber: 5,
      titleEn: 'Week 6 Recap Quiz',
      titleMy: 'ဆဌမပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is the World Wide Web?',
          questionMy: 'ကမ္ဘာလုံးဆိုင်ရာ ဝက်ဘ်ကွန်ရက်ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A collection of websites and pages viewed using a browser',
            'A single router',
            'A type of hard drive',
            'A physical cable',
          ],
          optionsMy: [
            'Browser ဖြင့်ကြည့်ရှုသော ဝက်ဘ်ဆိုက်နှင့်စာမျက်နှာများ စုစည်းမှု',
            'Router တစ်ခုတည်း',
            'Hard drive အမျိုးအစားတစ်ခု',
            'ရုပ်ပိုင်းကြိုး',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What software lets you view websites?',
          questionMy:
              'ဝက်ဘ်ဆိုက်များ ကြည့်ရှုနိုင်စေသော software မှာ အဘယ်နည်း။',
          optionsEn: [
            'A web browser',
            'A word processor',
            'An antivirus',
            'A printer driver',
          ],
          optionsMy: ['Web browser', 'Word processor', 'Antivirus', 'Printer driver'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What do we call a website's address?",
          questionMy: 'ဝက်ဘ်ဆိုက်တစ်ခု၏ လိပ်စာကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['A URL', 'A byte', 'A CPU', 'A folder'],
          optionsMy: ['URL', 'Byte', 'CPU', 'Folder'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is used mainly for communication?',
          questionMy:
              'အောက်ပါတို့အနက် ဆက်သွယ်ရေးအတွက် အဓိကသုံးသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Email',
            'A search engine',
            'An online encyclopedia',
            'A news website',
          ],
          optionsMy: [
            'Email',
            'Search engine',
            'Online encyclopedia',
            'News website',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What tool helps you find information using keywords?',
          questionMy:
              'သော့ချက်စာလုံးများသုံးပြီး အချက်အလက်ရှာဖွေရန် ကူညီပေးသောကိရိယာမှာ အဘယ်နည်း။',
          optionsEn: ['A search engine', 'A router', 'A motherboard', 'A CPU'],
          optionsMy: ['Search engine', 'Router', 'Motherboard', 'CPU'],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 2, Week 7: "Staying Safe Online"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek7 = CourseWeekDef(
  id: 'course-secondary1-computing-w7',
  weekNumber: 7,
  titleEn: 'Staying Safe Online',
  titleMy: 'အွန်လိုင်းတွင် လုံခြုံစွာနေထိုင်ခြင်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w7-d1',
      dayNumber: 1,
      titleEn: 'Keeping Yourself Safe Online',
      titleMy: 'မိမိကိုယ်ကို အွန်လိုင်းတွင် လုံခြုံအောင်ထားခြင်း',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'Which of these is a strong password?',
          questionMy: 'အောက်ပါတို့အနက် ခိုင်မာသောစကားဝှက်မှာ အဘယ်နည်း။',
          optionsEn: ['Tr7!kPq29xz', '123456', 'password', 'your own name'],
          optionsMy: [
            'Tr7!kPq29xz',
            '123456',
            'password',
            'မိမိကိုယ်ပိုင်နာမည်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which of these counts as "personal information" you should keep private online?',
          questionMy:
              'အောက်ပါတို့အနက် အွန်လိုင်းတွင် လျှို့ဝှက်ထားသင့်သော "ကိုယ်ရေးကိုယ်တာအချက်အလက်" မှာ အဘယ်နည်း။',
          optionsEn: [
            'Your home address',
            'Your favourite colour',
            'Your favourite animal',
            'Your favourite subject',
          ],
          optionsMy: [
            'သင်၏ အိမ်လိပ်စာ',
            'သင်နှစ်သက်သော အရောင်',
            'သင်နှစ်သက်သော တိရစ္ဆာန်',
            'သင်နှစ်သက်သော ဘာသာရပ်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What should you do if a stranger online asks for your home address?',
          questionMy:
              'အွန်လိုင်းရှိ စိမ်းသူတစ်ဦးက သင့်အိမ်လိပ်စာကို မေးလျှင် သင်ဘာလုပ်သင့်သနည်း။',
          optionsEn: [
            'Refuse and tell a trusted adult',
            'Give it to them immediately',
            'Give them a fake address instead',
            'Ask them for their address first',
          ],
          optionsMy: [
            'ငြင်းဆန်ပြီး ယုံကြည်ရသူကြီးတစ်ဦးကို ပြောပြပါ',
            'ချက်ချင်းပေးလိုက်ပါ',
            'အစားထိုးအတု လိပ်စာတစ်ခု ပေးလိုက်ပါ',
            'သူတို့၏လိပ်စာကို ပထမဆုံးမေးပါ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is "cyberbullying"?',
          questionMy: '"Cyberbullying" ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Using the internet to repeatedly hurt or upset someone',
            'Using the internet to do homework',
            'Using the internet to play educational games',
            'Using the internet to email a teacher',
          ],
          optionsMy: [
            'အင်တာနက်ကို သုံး၍ တစ်စုံတစ်ဦးအား ထပ်ခါထပ်ခါ စိတ်ဆင်းရဲစေခြင်း',
            'အင်တာနက်ကို သုံး၍ အိမ်စာလုပ်ခြင်း',
            'အင်တာနက်ကို သုံး၍ ပညာရေးဂိမ်းများ ကစားခြင်း',
            'အင်တာနက်ကို သုံး၍ ဆရာ့ထံ email ပို့ခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why should you tell a trusted adult if something online makes you uncomfortable?',
          questionMy:
              'အွန်လိုင်းရှိ အရာတစ်ခုက သင့်ကို စိတ်မသက်မသာဖြစ်စေလျှင် ယုံကြည်ရသူကြီးတစ်ဦးကို အဘယ့်ကြောင့် ပြောသင့်သနည်း။',
          optionsEn: [
            'So they can help keep you safe',
            'So they can delete the internet',
            'So they can take your computer away forever',
            'So they can post it online themselves',
          ],
          optionsMy: [
            'သင့်ကို လုံခြုံအောင် ကူညီစောင့်ရှောက်ပေးနိုင်ရန်',
            'အင်တာနက်ကို ဖျက်ပစ်နိုင်ရန်',
            'သင့်ကွန်ပျူတာကို အမြဲတမ်း သိမ်းယူနိုင်ရန်',
            'သူတို့ကိုယ်တိုင် အွန်လိုင်းတွင် ပြန်တင်နိုင်ရန်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w7-d2',
      dayNumber: 2,
      titleEn: 'Online Safety Vocabulary',
      titleMy: 'အွန်လိုင်းလုံခြုံရေး ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w7-safety-password',
          termEn: 'Strong Password',
          termMy: 'Strong Password',
          matchEn: 'A password that is long and hard for others to guess',
          matchMy: 'ရှည်လျားပြီး အခြားသူများ မှန်းရခက်သော စကားဝှက်',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w7-safety-personalinfo',
          termEn: 'Personal Information',
          termMy: 'Personal Information',
          matchEn:
              'Details like your address or phone number that should stay private',
          matchMy:
              'လျှို့ဝှက်ထားသင့်သော အိမ်လိပ်စာ သို့မဟုတ် ဖုန်းနံပါတ်ကဲ့သို့သော အသေးစိတ်အချက်များ',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w7-safety-phishing',
          termEn: 'Phishing',
          termMy: 'Phishing',
          matchEn:
              'A trick used to steal personal information through fake messages or websites',
          matchMy:
              'အတုစာသား သို့မဟုတ် ဝက်ဘ်ဆိုက်များဖြင့် ကိုယ်ရေးကိုယ်တာအချက်အလက်များကို ခိုးယူသောလှည့်ကွက်',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w7-safety-cyberbullying',
          termEn: 'Cyberbullying',
          termMy: 'Cyberbullying',
          matchEn: 'Using the internet to repeatedly hurt or upset someone',
          matchMy:
              'အင်တာနက်ကိုသုံး၍ တစ်စုံတစ်ဦးအား ထပ်ခါထပ်ခါ စိတ်ဆင်းရဲစေခြင်း',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w7-safety-privacysettings',
          termEn: 'Privacy Settings',
          termMy: 'Privacy Settings',
          matchEn: 'Controls that limit who can see what you post online',
          matchMy:
              'အွန်လိုင်းတင်ထားသော အကြောင်းအရာကို မည်သူကြည့်နိုင်သည်ကို ကန့်သတ်ပေးသောချိန်ညှိချက်များ',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w7-d3',
      dayNumber: 3,
      titleEn: 'Safe or Unsafe Online Behaviour?',
      titleMy: 'လုံခြုံမှုရှိသလား၊ မရှိသလား',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Safe', 'Unsafe'],
        bucketsMy: ['Safe (လုံခြုံသော)', 'Unsafe (မလုံခြုံသော)'],
        items: [
          SortingItem(
            id: 'w7-sort-sharepassword',
            labelEn: 'Sharing your password with a friend',
            labelMy: 'သူငယ်ချင်းတစ်ဦးထံ စကားဝှက်မျှဝေခြင်း',
            correctBucketEn: 'Unsafe',
            correctBucketMy: 'Unsafe (မလုံခြုံသော)',
          ),
          SortingItem(
            id: 'w7-sort-tellattr',
            labelEn: 'Telling a trusted adult about a scary message',
            labelMy: 'ကြောက်စရာစာတစ်စောင်အကြောင်း ယုံကြည်ရသူကြီးကို ပြောပြခြင်း',
            correctBucketEn: 'Safe',
            correctBucketMy: 'Safe (လုံခြုံသော)',
          ),
          SortingItem(
            id: 'w7-sort-uniquepassword',
            labelEn: 'Using a strong, unique password',
            labelMy: 'ခိုင်မာပြီး ထူးခြားသောစကားဝှက်သုံးခြင်း',
            correctBucketEn: 'Safe',
            correctBucketMy: 'Safe (လုံခြုံသော)',
          ),
          SortingItem(
            id: 'w7-sort-clickunknownlink',
            labelEn: 'Clicking a link from an unknown sender',
            labelMy: 'မသိသူထံမှ လင့်ခ်ကို နှိပ်ခြင်း',
            correctBucketEn: 'Unsafe',
            correctBucketMy: 'Unsafe (မလုံခြုံသော)',
          ),
          SortingItem(
            id: 'w7-sort-keepaddressprivate',
            labelEn: 'Keeping your home address private',
            labelMy: 'အိမ်လိပ်စာကို လျှို့ဝှက်ထားခြင်း',
            correctBucketEn: 'Safe',
            correctBucketMy: 'Safe (လုံခြုံသော)',
          ),
          SortingItem(
            id: 'w7-sort-meetstranger',
            labelEn: 'Meeting an online stranger alone',
            labelMy: 'အွန်လိုင်းစိမ်းသူတစ်ဦးနှင့် တစ်ကိုယ်တည်းတွေ့ဆုံခြင်း',
            correctBucketEn: 'Unsafe',
            correctBucketMy: 'Unsafe (မလုံခြုံသော)',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w7-d4',
      dayNumber: 4,
      titleEn: 'Thandar and the Strange Message',
      titleMy: 'သန္တာနှင့် ထူးဆန်းသောစာ',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: 'Thandar and the Strange Message',
        titleMy: 'သန္တာနှင့် ထူးဆန်းသောစာ',
        passageEn:
            'One evening, Thandar received a message from an account she did not recognise. The message claimed she had won a prize and asked her to type in her password to "confirm" it. Thandar remembered her class had learned about phishing, so instead of replying, she did not click the link and told her mother straight away. Her mother explained that real prizes never ask for a password, and together they blocked the account and reported the message.',
        passageMy:
            'တစ်နေ့ညနေတွင် သန္တာသည် သူမမသိသော အကောင့်တစ်ခုမှ စာတစ်စောင် ရရှိခဲ့သည်။ ထိုစာတွင် သူမ ဆုတစ်ခုရရှိကြောင်းနှင့် ၎င်းကို "အတည်ပြု" ရန် စကားဝှက်ရိုက်ထည့်ပေးရန် တောင်းဆိုထားသည်။ သန္တာသည် သူမ၏အတန်းတွင် phishing အကြောင်း သင်ခဲ့ဖူးသည်ကို သတိရသဖြင့် ပြန်စာမပို့ဘဲ၊ လင့်ခ်ကိုလည်း မနှိပ်ဘဲ မိခင်ကို ချက်ချင်းပြောပြခဲ့သည်။ သူမ၏မိခင်က တကယ့်ဆုများသည် စကားဝှက်ကို ဘယ်တော့မှ မတောင်းဆိုကြောင်း ရှင်းပြပြီး အတူတကွ ထိုအကောင့်ကို block လုပ်ကာ တိုင်ကြားခဲ့ကြသည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What did the strange message ask Thandar to do?',
            questionMy: 'ထူးဆန်းသောစာက သန္တာကို ဘာလုပ်ရန် တောင်းဆိုခဲ့သနည်း။',
            optionsEn: [
              'Type in her password',
              'Delete her account',
              'Call the police',
              'Turn off her computer',
            ],
            optionsMy: [
              'သူမ၏စကားဝှက်ကို ရိုက်ထည့်ရန်',
              'သူမ၏အကောင့်ကို ဖျက်ရန်',
              'ရဲကို ခေါ်ရန်',
              'ကွန်ပျူတာကို ပိတ်ရန်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'What had Thandar learned about at school that helped her?',
            questionMy:
                'သန္တာအား ကူညီပေးခဲ့သော ကျောင်းမှသင်ခဲ့ရသည့်အရာမှာ အဘယ်နည်း။',
            optionsEn: [
              'Phishing',
              'Printing',
              'Motherboards',
              'File extensions',
            ],
            optionsMy: [
              'Phishing',
              'ပရင့်ထုတ်ခြင်း',
              'Motherboard များ',
              'File extension များ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'Who did Thandar tell about the message?',
            questionMy: 'သန္တာသည် ထိုစာအကြောင်း မည်သူ့ကို ပြောပြခဲ့သနည်း။',
            optionsEn: [
              'Her mother',
              'A stranger',
              'No one',
              'The message sender',
            ],
            optionsMy: ['သူမ၏မိခင်', 'စိမ်းသူတစ်ဦး', 'မည်သူ့ကိုမျှ', 'စာပို့သူ'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What does a real prize never ask you for?',
            questionMy: 'တကယ့်ဆုများသည် ဘာကို ဘယ်တော့မှ မတောင်းဆိုပါ။',
            optionsEn: [
              'Your password',
              'Your name',
              'Your congratulations',
              'Your smile',
            ],
            optionsMy: ['သင်၏စကားဝှက်', 'သင်၏နာမည်', 'သင်၏ဂုဏ်ပြုစကား', 'သင့်အပြုံး'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did Thandar and her mother do with the account?',
            questionMy:
                'သန္တာနှင့်မိခင်တို့သည် ထိုအကောင့်ကို မည်သို့ လုပ်ဆောင်ခဲ့ကြသနည်း။',
            optionsEn: [
              'Blocked it and reported the message',
              'Sent it their password',
              'Shared it with friends',
              'Ignored it and did nothing',
            ],
            optionsMy: [
              'Block လုပ်ပြီး စာကို တိုင်ကြားခဲ့ကြသည်',
              'သူတို့၏စကားဝှက်ကို ပို့ခဲ့ကြသည်',
              'သူငယ်ချင်းများနှင့် မျှဝေခဲ့ကြသည်',
              'လျစ်လျူရှုပြီး ဘာမှမလုပ်ခဲ့ကြပါ',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w7-d5',
      dayNumber: 5,
      titleEn: 'Week 7 Recap Quiz',
      titleMy: 'သတ္တမပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What makes a password strong?',
          questionMy: 'စကားဝှက်တစ်ခုကို ခိုင်မာစေသည့်အချက်မှာ အဘယ်နည်း။',
          optionsEn: [
            'It is long and hard for others to guess',
            'It is your own name',
            'It is short and simple',
            'It is the same as your username',
          ],
          optionsMy: [
            'ရှည်လျားပြီး အခြားသူများ မှန်းရခက်ခြင်း',
            'မိမိကိုယ်ပိုင်နာမည်ဖြစ်ခြင်း',
            'တိုတောင်းရိုးရှင်းခြင်း',
            'Username နှင့်တူညီခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What should you do if an online stranger asks for personal information?',
          questionMy:
              'အွန်လိုင်းစိမ်းသူတစ်ဦးက ကိုယ်ရေးကိုယ်တာအချက်အလက်တောင်းလျှင် သင်ဘာလုပ်သင့်သနည်း။',
          optionsEn: [
            'Refuse and tell a trusted adult',
            'Give it to them right away',
            'Ask them for money first',
            'Share it on social media',
          ],
          optionsMy: [
            'ငြင်းဆန်ပြီး ယုံကြည်ရသူကြီးကို ပြောပြပါ',
            'ချက်ချင်းပေးလိုက်ပါ',
            'ပထမဆုံး ငွေတောင်းပါ',
            'Social media ပေါ်တွင် မျှဝေပါ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is phishing?',
          questionMy: 'Phishing ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A trick to steal personal information using fake messages',
            'A way to make your computer faster',
            'A type of strong password',
            'A type of printer',
          ],
          optionsMy: [
            'အတုစာသားများဖြင့် ကိုယ်ရေးကိုယ်တာအချက်အလက်ခိုးယူသောလှည့်ကွက်',
            'ကွန်ပျူတာကို ပိုမြန်စေသောနည်းလမ်း',
            'ခိုင်မာသော စကားဝှက်အမျိုးအစားတစ်ခု',
            'ပရင်တာအမျိုးအစားတစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is cyberbullying?',
          questionMy: 'Cyberbullying ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Using the internet to repeatedly hurt or upset someone',
            'Using the internet to learn new skills',
            'Using the internet to email your teacher',
            'Using the internet to do research',
          ],
          optionsMy: [
            'အင်တာနက်ကိုသုံး၍ တစ်စုံတစ်ဦးအား ထပ်ခါထပ်ခါ စိတ်ဆင်းရဲစေခြင်း',
            'အင်တာနက်ကိုသုံး၍ ကျွမ်းကျင်မှုအသစ်များ သင်ယူခြင်း',
            'အင်တာနက်ကိုသုံး၍ ဆရာ့ထံ email ပို့ခြင်း',
            'အင်တာနက်ကိုသုံး၍ သုတေသနပြုခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'If something online makes you feel unsafe, what should you do?',
          questionMy:
              'အွန်လိုင်းရှိအရာတစ်ခုက သင့်ကို မလုံခြုံဟုခံစားရလျှင် သင်ဘာလုပ်သင့်သနည်း။',
          optionsEn: [
            'Tell a trusted adult',
            'Keep it a secret',
            'Reply with your password',
            'Share more personal information',
          ],
          optionsMy: [
            'ယုံကြည်ရသူကြီးတစ်ဦးကို ပြောပြပါ',
            'လျှို့ဝှက်ထားပါ',
            'စကားဝှက်ဖြင့် ပြန်စာပို့ပါ',
            'ကိုယ်ရေးကိုယ်တာအချက်အလက် ပိုမျှဝေပါ',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 2, Week 8: "Data in a Computer: Bits
// and Bytes"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek8 = CourseWeekDef(
  id: 'course-secondary1-computing-w8',
  weekNumber: 8,
  titleEn: 'Data in a Computer: Bits and Bytes',
  titleMy: 'ကွန်ပျူတာရှိဒေတာ - Bits and Bytes',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w8-d1',
      dayNumber: 1,
      titleEn: 'Computers Speak in 0s and 1s',
      titleMy: 'ကွန်ပျူတာသည် 0 နှင့် 1 ဖြင့် ပြောဆိုသည်',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              'What are the only two digits computers use to represent data?',
          questionMy:
              'ကွန်ပျူတာများ ဒေတာကို ကိုယ်စားပြုရန် အသုံးပြုသည့် တစ်ခုတည်းသောဂဏန်းနှစ်လုံးမှာ အဘယ်နည်း။',
          optionsEn: ['0 and 1', '1 and 2', 'A and B', 'Yes and No'],
          optionsMy: ['0 and 1', '1 and 2', 'A and B', 'Yes and No'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What do we call a single binary digit (0 or 1)?',
          questionMy: 'binary ဂဏန်းတစ်လုံးတည်း (0 သို့မဟုတ် 1) ကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['A bit', 'A byte', 'A folder', 'A pixel'],
          optionsMy: ['Bit', 'Byte', 'Folder', 'Pixel'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'How many bits make one byte?',
          questionMy: 'Byte တစ်ခုတွင် bit မည်မျှပါဝင်သနည်း။',
          optionsEn: ['8', '2', '10', '100'],
          optionsMy: ['8', '2', '10', '100'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why do computers use binary (0s and 1s) instead of letters?',
          questionMy:
              'ကွန်ပျူတာများသည် အက္ခရာအစား binary (0s and 1s) ကို အဘယ့်ကြောင့်သုံးသနည်း။',
          optionsEn: [
            'Because electronic circuits can easily represent two states: on and off',
            'Because binary is easier for humans to read',
            'Because binary takes up more space',
            'Because computers cannot use numbers',
          ],
          optionsMy: [
            'လျှပ်စစ်ဆားကစ်များသည် on နှင့် off ဟူသော အခြေအနေနှစ်ခုကို လွယ်ကူစွာ ကိုယ်စားပြုနိုင်၍',
            'Binary သည် လူသားများ ဖတ်ရလွယ်ကူ၍',
            'Binary သည် နေရာပိုယူ၍',
            'ကွန်ပျူတာများသည် ဂဏန်းများကို သုံး၍မရ၍',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which unit is larger?',
          questionMy: 'ဘယ်ယူနစ်က ပိုကြီးပါသနည်း။',
          optionsEn: [
            'A kilobyte (KB)',
            'A byte',
            'A bit',
            'None, they are all equal',
          ],
          optionsMy: ['Kilobyte (KB)', 'Byte', 'Bit', 'အားလုံးတူညီသည်'],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w8-d2',
      dayNumber: 2,
      titleEn: 'Match the Data Units',
      titleMy: 'ဒေတာယူနစ်များကို ကိုက်ညီပါ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w8-data-bit',
          termEn: 'Bit',
          termMy: 'Bit',
          matchEn: 'The smallest unit of data, either a 0 or a 1',
          matchMy: 'ဒေတာ၏ အသေးငယ်ဆုံးယူနစ်၊ 0 သို့မဟုတ် 1',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w8-data-byte',
          termEn: 'Byte',
          termMy: 'Byte',
          matchEn: 'A group of 8 bits',
          matchMy: 'Bit ၈ ခုပါဝင်သော အုပ်စု',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w8-data-kb',
          termEn: 'Kilobyte (KB)',
          termMy: 'Kilobyte (KB)',
          matchEn: 'About 1,000 bytes',
          matchMy: 'Byte ခန့် ၁,၀၀၀',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w8-data-mb',
          termEn: 'Megabyte (MB)',
          termMy: 'Megabyte (MB)',
          matchEn: 'About 1,000 kilobytes',
          matchMy: 'Kilobyte ခန့် ၁,၀၀၀',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w8-data-binary',
          termEn: 'Binary',
          termMy: 'Binary',
          matchEn: 'A number system using only 0s and 1s',
          matchMy: '0 နှင့် 1 သာအသုံးပြုသော ဂဏန်းစနစ်တစ်ခု',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w8-d3',
      dayNumber: 3,
      titleEn: 'Data Unit or Not?',
      titleMy: 'ဒေတာယူနစ်လား၊ မဟုတ်လား',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Unit of Data Size', 'Not a Unit of Data Size'],
        bucketsMy: [
          'Unit of Data Size (ဒေတာအရွယ်အစားယူနစ်)',
          'Not a Unit of Data Size (ဒေတာအရွယ်အစားယူနစ်မဟုတ်)',
        ],
        items: [
          SortingItem(
            id: 'w8-sort-bit',
            labelEn: 'Bit',
            labelMy: 'Bit',
            correctBucketEn: 'Unit of Data Size',
            correctBucketMy: 'Unit of Data Size (ဒေတာအရွယ်အစားယူနစ်)',
          ),
          SortingItem(
            id: 'w8-sort-byte',
            labelEn: 'Byte',
            labelMy: 'Byte',
            correctBucketEn: 'Unit of Data Size',
            correctBucketMy: 'Unit of Data Size (ဒေတာအရွယ်အစားယူနစ်)',
          ),
          SortingItem(
            id: 'w8-sort-kilobyte',
            labelEn: 'Kilobyte',
            labelMy: 'Kilobyte',
            correctBucketEn: 'Unit of Data Size',
            correctBucketMy: 'Unit of Data Size (ဒေတာအရွယ်အစားယူနစ်)',
          ),
          SortingItem(
            id: 'w8-sort-mouse',
            labelEn: 'Mouse',
            labelMy: 'မောက်စ်',
            correctBucketEn: 'Not a Unit of Data Size',
            correctBucketMy:
                'Not a Unit of Data Size (ဒေတာအရွယ်အစားယူနစ်မဟုတ်)',
          ),
          SortingItem(
            id: 'w8-sort-printer',
            labelEn: 'Printer',
            labelMy: 'ပရင်တာ',
            correctBucketEn: 'Not a Unit of Data Size',
            correctBucketMy:
                'Not a Unit of Data Size (ဒေတာအရွယ်အစားယူနစ်မဟုတ်)',
          ),
          SortingItem(
            id: 'w8-sort-monitor',
            labelEn: 'Monitor',
            labelMy: 'မော်နီတာ',
            correctBucketEn: 'Not a Unit of Data Size',
            correctBucketMy:
                'Not a Unit of Data Size (ဒေတာအရွယ်အစားယူနစ်မဟုတ်)',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w8-d4',
      dayNumber: 4,
      titleEn: "Kyaw Kyaw's New Phone",
      titleMy: 'ကျော်ကျော်၏ ဖုန်းအသစ်',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Kyaw Kyaw's New Phone",
        titleMy: 'ကျော်ကျော်၏ ဖုန်းအသစ်',
        passageEn:
            "Kyaw Kyaw's new phone advertises 128 gigabytes of storage. His older sister explains that this storage is really just a huge number of bytes, and each byte is made of 8 tiny bits -- each bit being just a 0 or a 1. A single photo might take up a few megabytes, made of thousands of bytes, while a short video takes up even more. Understanding that all of it, from a text message to a movie, is stored using only 0s and 1s helped Kyaw Kyaw understand why his phone's storage can eventually fill up.",
        passageMy:
            'ကျော်ကျော်၏ ဖုန်းအသစ်တွင် gigabyte ၁၂၈ သိုလှောင်ခန်းရှိကြောင်း ကြော်ငြာထားသည်။ သူ့အစ်မကြီးက ဤသိုလှောင်ခန်းသည် byte အလွန်များစွာသာဖြစ်ပြီး byte တစ်ခုစီသည် bit ၈ ခုစီဖြင့်ဖွဲ့စည်းထားကြောင်း -- bit တစ်ခုစီသည် 0 သို့မဟုတ် 1 သာဖြစ်ကြောင်း ရှင်းပြသည်။ ဓာတ်ပုံတစ်ပုံတည်းသည် byte ထောင်ချီဖြင့်ဖွဲ့စည်းထားသော megabyte အနည်းငယ်ယူနိုင်ပြီး၊ ဗီဒီယိုတိုတစ်ခုမူ ပိုပင်ယူနိုင်သည်။ Text message တစ်ခုမှသည် ရုပ်ရှင်တစ်ခုအထိ အားလုံးကို 0s and 1s သာအသုံးပြု၍ သိမ်းဆည်းထားကြောင်း နားလည်ခြင်းသည် ကျော်ကျော်အား သူ့ဖုန်း၏ သိုလှောင်ခန်း အဘယ့်ကြောင့် နောက်ဆုံးတွင် ပြည့်သွားနိုင်ကြောင်း နားလည်စေခဲ့သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What does Kyaw Kyaw's sister explain storage is really made of?",
            questionMy:
                'ကျော်ကျော်၏အစ်မသည် သိုလှောင်ခန်းသည် အမှန်တကယ် ဘာဖြင့်ဖွဲ့စည်းထားကြောင်း ရှင်းပြခဲ့သနည်း။',
            optionsEn: [
              'A huge number of bytes',
              'Printer ink',
              'Wi-Fi signals',
              'Router cables',
            ],
            optionsMy: [
              'Byte အလွန်များစွာ',
              'ပရင်တာမင်',
              'Wi-Fi အချက်ပြမှုများ',
              'Router ကြိုးများ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'How many bits make up each byte?',
            questionMy: 'Byte တစ်ခုစီသည် bit မည်မျှဖြင့်ဖွဲ့စည်းထားသနည်း။',
            optionsEn: ['8', '2', '100', '1'],
            optionsMy: ['8', '2', '100', '1'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What two values can a single bit be?',
            questionMy: 'Bit တစ်ခုသည် မည်သည့်တန်ဖိုးနှစ်ခု ဖြစ်နိုင်သနည်း။',
            optionsEn: ['0 or 1', '1 or 2', 'A or B', 'Yes or Maybe'],
            optionsMy: ['0 or 1', '1 or 2', 'A or B', 'Yes or Maybe'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'Which usually takes up more storage, a photo or a short video?',
            questionMy:
                'ဓာတ်ပုံနှင့် ဗီဒီယိုတိုတွင် ဘယ်ဟာက သိုလှောင်ခန်း ပိုယူသနည်း။',
            optionsEn: [
              'A short video',
              'A photo',
              'They always use exactly the same amount',
              'Neither uses any storage',
            ],
            optionsMy: [
              'ဗီဒီယိုတို',
              'ဓာတ်ပုံ',
              'အမြဲတမ်းတူညီစွာယူသည်',
              'ဘယ်ဟာမှ သိုလှောင်ခန်းမယူပါ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why can Kyaw Kyaw's phone storage eventually fill up?",
            questionMy:
                'ကျော်ကျော်၏ဖုန်းသိုလှောင်ခန်းသည် နောက်ဆုံးတွင် အဘယ့်ကြောင့် ပြည့်သွားနိုင်သနည်း။',
            optionsEn: [
              'Because every photo, video, and message is made of bytes that take up space',
              'Because bits disappear over time',
              'Because the router runs out of Wi-Fi',
              'Because the CPU stops working',
            ],
            optionsMy: [
              'ဓာတ်ပုံ၊ ဗီဒီယို၊ စာတိုင်းသည် နေရာယူသော byte များဖြင့်ဖွဲ့စည်းထားသောကြောင့်',
              'Bit များသည် အချိန်ကြာလာသည်နှင့်အမျှ ပျောက်ကွယ်သွား၍',
              'Router ၏ Wi-Fi ကုန်သွား၍',
              'CPU အလုပ်လုပ်ရပ်သွား၍',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w8-d5',
      dayNumber: 5,
      titleEn: 'Week 8 Recap Quiz',
      titleMy: 'အဌမပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What two digits does binary use?',
          questionMy: 'Binary သည် ဂဏန်းနှစ်လုံးအနက် ဘာကိုသုံးသနည်း။',
          optionsEn: ['0 and 1', '1 and 2', 'A and B', '2 and 4'],
          optionsMy: ['0 and 1', '1 and 2', 'A and B', '2 and 4'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is a single 0 or 1 called?',
          questionMy: '0 သို့မဟုတ် 1 တစ်ခုတည်းကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['A bit', 'A byte', 'A megabyte', 'A folder'],
          optionsMy: ['Bit', 'Byte', 'Megabyte', 'Folder'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'How many bits are in a byte?',
          questionMy: 'Byte တစ်ခုတွင် bit မည်မျှရှိသနည်း။',
          optionsEn: ['8', '2', '4', '16'],
          optionsMy: ['8', '2', '4', '16'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Why can computer circuits easily use binary?',
          questionMy:
              'ကွန်ပျူတာဆားကစ်များသည် binary ကို အဘယ့်ကြောင့် လွယ်ကူစွာသုံးနိုင်သနည်း။',
          optionsEn: [
            'Because they can represent two states: on and off',
            'Because binary uses letters',
            'Because binary is louder',
            'Because binary is a colour',
          ],
          optionsMy: [
            'On နှင့် off ဟူသော အခြေအနေနှစ်ခုကို ကိုယ်စားပြုနိုင်သောကြောင့်',
            'Binary သည် အက္ခရာများသုံးသောကြောင့်',
            'Binary သည် ပိုကျယ်လောင်သောကြောင့်',
            'Binary သည် အရောင်တစ်မျိုးဖြစ်သောကြောင့်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is the largest amount of data?',
          questionMy: 'အောက်ပါတို့တွင် အကြီးဆုံးဒေတာပမာဏမှာ အဘယ်နည်း။',
          optionsEn: ['A megabyte (MB)', 'A kilobyte (KB)', 'A byte', 'A bit'],
          optionsMy: ['Megabyte (MB)', 'Kilobyte (KB)', 'Byte', 'Bit'],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 3, Week 9: "What is an Algorithm?"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek9 = CourseWeekDef(
  id: 'course-secondary1-computing-w9',
  weekNumber: 9,
  titleEn: 'What is an Algorithm?',
  titleMy: 'Algorithm ဆိုသည်မှာ အဘယ်နည်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w9-d1',
      dayNumber: 1,
      titleEn: 'What is an Algorithm?',
      titleMy: 'Algorithm ဆိုသည်မှာ',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is an algorithm?',
          questionMy: 'Algorithm ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A set of step-by-step instructions to complete a task',
            'A type of computer hardware',
            'A single word with no meaning',
            'A picture with no instructions',
          ],
          optionsMy: [
            'လုပ်ငန်းတစ်ခုအား ပြီးမြောက်စေရန် အဆင့်ဆင့်ညွှန်ကြားချက်များစု',
            'ကွန်ပျူတာ hardware အမျိုးအစားတစ်ခု',
            'အဓိပ္ပာယ်မရှိသော စကားလုံးတစ်ခုတည်း',
            'ညွှန်ကြားချက်မပါသော ပုံတစ်ပုံ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is an everyday example of an algorithm?',
          questionMy:
              'အောက်ပါတို့အနက် နေ့စဉ်ဘဝတွင် algorithm ၏ ဥပမာဖြစ်သည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A recipe for baking a cake',
            'A blank sheet of paper',
            'A closed box',
            'A silent room',
          ],
          optionsMy: [
            'ကိတ်မုန့်ဖုတ်ရန် ချက်ပြုတ်နည်းစာအုပ်',
            'အလွတ်စာရွက်တစ်ရွက်',
            'ပိတ်ထားသော ဘူးတစ်လုံး',
            'တိတ်ဆိတ်နေသော အခန်းတစ်ခန်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Why does the order of steps in an algorithm matter?',
          questionMy:
              'Algorithm တစ်ခု၏ အဆင့်များ၏ အစီအစဉ်သည် အဘယ့်ကြောင့် အရေးကြီးသနည်း။',
          optionsEn: [
            'Doing steps in the wrong order can give the wrong result',
            'The order never matters',
            'Algorithms have no steps',
            'Order only matters for software, not algorithms',
          ],
          optionsMy: [
            'အဆင့်များကို မှားသောအစီအစဉ်ဖြင့်လုပ်ခြင်းသည် မှားသောရလဒ်ကို ဖြစ်စေနိုင်သည်',
            'အစီအစဉ်သည် ဘယ်တော့မှ အရေးမကြီးပါ',
            'Algorithm များတွင် အဆင့်များ မရှိပါ',
            'အစီအစဉ်သည် software တွင်သာ အရေးကြီးပြီး algorithm တွင် မကြီးပါ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What do we call a single step inside an algorithm?',
          questionMy: 'Algorithm တစ်ခုအတွင်းရှိ အဆင့်တစ်ခုတည်းကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['An instruction', 'A router', 'A byte', 'A folder'],
          optionsMy: ['ညွှန်ကြားချက်', 'Router', 'Byte', 'Folder'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Is an algorithm the same thing as a computer program?',
          questionMy:
              'Algorithm သည် ကွန်ပျူတာပရိုဂရမ်နှင့် တူညီပါသလား။',
          optionsEn: [
            'No -- an algorithm is the plan; a program is that plan written in code a computer can run',
            'Yes, they are always exactly the same',
            'No, an algorithm is a type of hardware',
            'No, only computers can have algorithms',
          ],
          optionsMy: [
            'မတူပါ -- algorithm သည် အစီအစဉ်ဖြစ်ပြီး၊ program သည် ကွန်ပျူတာလည်ပတ်နိုင်သော ကုဒ်ဖြင့်ရေးထားသော ထိုအစီအစဉ်ဖြစ်သည်',
            'ဟုတ်ပါသည်၊ အမြဲတမ်း အတူတူပင်ဖြစ်သည်',
            'မတူပါ၊ algorithm သည် hardware အမျိုးအစားတစ်ခုဖြစ်သည်',
            'မတူပါ၊ ကွန်ပျူတာများသာ algorithm ရှိနိုင်သည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w9-d2',
      dayNumber: 2,
      titleEn: 'Algorithm Vocabulary',
      titleMy: 'Algorithm ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w9-algo-algorithm',
          termEn: 'Algorithm',
          termMy: 'Algorithm',
          matchEn: 'A set of step-by-step instructions to complete a task',
          matchMy: 'လုပ်ငန်းတစ်ခုအား ပြီးမြောက်စေရန် အဆင့်ဆင့်ညွှန်ကြားချက်များစု',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w9-algo-sequence',
          termEn: 'Sequence',
          termMy: 'Sequence',
          matchEn: 'Instructions carried out one after another, in order',
          matchMy: 'အစီအစဉ်အလိုက် တစ်ခုပြီးတစ်ခု ဆောင်ရွက်သော ညွှန်ကြားချက်များ',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w9-algo-instruction',
          termEn: 'Instruction',
          termMy: 'Instruction',
          matchEn: 'A single step telling the computer what to do',
          matchMy: 'ကွန်ပျူတာအား မည်သို့ဆောင်ရွက်ရမည်ကို ညွှန်ကြားသော အဆင့်တစ်ခု',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w9-algo-input',
          termEn: 'Input',
          termMy: 'Input',
          matchEn: 'Data given to an algorithm before it starts',
          matchMy: 'Algorithm မစတင်မီ ပေးအပ်ထားသော ဒေတာ',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w9-algo-output',
          termEn: 'Output',
          termMy: 'Output',
          matchEn: 'The result an algorithm produces at the end',
          matchMy: 'Algorithm အဆုံးတွင် ထုတ်ပေးသော ရလဒ်',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w9-d3',
      dayNumber: 3,
      titleEn: 'Algorithm or Not?',
      titleMy: 'Algorithm လား၊ မဟုတ်လား',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Algorithm', 'Not an Algorithm'],
        bucketsMy: ['Algorithm', 'Not an Algorithm (Algorithm မဟုတ်)'],
        items: [
          SortingItem(
            id: 'w9-sort-recipe',
            labelEn: 'Recipe for a cake',
            labelMy: 'ကိတ်မုန့်ချက်ပြုတ်နည်း',
            correctBucketEn: 'Algorithm',
            correctBucketMy: 'Algorithm',
          ),
          SortingItem(
            id: 'w9-sort-directions',
            labelEn: 'Directions to school',
            labelMy: 'ကျောင်းသို့ လမ်းညွှန်ချက်များ',
            correctBucketEn: 'Algorithm',
            correctBucketMy: 'Algorithm',
          ),
          SortingItem(
            id: 'w9-sort-brushteeth',
            labelEn: 'Steps to brush your teeth',
            labelMy: 'သွားတိုက်ရန် အဆင့်များ',
            correctBucketEn: 'Algorithm',
            correctBucketMy: 'Algorithm',
          ),
          SortingItem(
            id: 'w9-sort-photo',
            labelEn: 'A single photo',
            labelMy: 'ဓာတ်ပုံတစ်ပုံတည်း',
            correctBucketEn: 'Not an Algorithm',
            correctBucketMy: 'Not an Algorithm (Algorithm မဟုတ်)',
          ),
          SortingItem(
            id: 'w9-sort-blankpage',
            labelEn: 'A blank page',
            labelMy: 'အလွတ်စာမျက်နှာတစ်ရွက်',
            correctBucketEn: 'Not an Algorithm',
            correctBucketMy: 'Not an Algorithm (Algorithm မဟုတ်)',
          ),
          SortingItem(
            id: 'w9-sort-musicnote',
            labelEn: 'One musical note',
            labelMy: 'ဂီတမှတ်တစ်ခုတည်း',
            correctBucketEn: 'Not an Algorithm',
            correctBucketMy: 'Not an Algorithm (Algorithm မဟုတ်)',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w9-d4',
      dayNumber: 4,
      titleEn: "Hnin Hnin's Recipe Mistake",
      titleMy: 'နှင်းနှင်း၏ ချက်ပြုတ်နည်း အမှား',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Hnin Hnin's Recipe Mistake",
        titleMy: 'နှင်းနှင်း၏ ချက်ပြုတ်နည်း အမှား',
        passageEn:
            "Hnin Hnin wanted to bake cookies, so she followed a recipe -- an everyday algorithm. The recipe said: mix the butter and sugar first, then add the flour, then bake in the oven. In a hurry, Hnin Hnin put the flour in before mixing the butter and sugar properly. The cookie dough came out lumpy and did not bake evenly. Her mother explained that an algorithm's steps must be followed in the correct order, because changing the sequence can change the result, even if every step is technically completed.",
        passageMy:
            'နှင်းနှင်းသည် ကွတ်ကီးဖုတ်လိုသောကြောင့် ချက်ပြုတ်နည်းတစ်ခု -- နေ့စဉ်ဘဝ algorithm တစ်ခုကို လိုက်နာခဲ့သည်။ ချက်ပြုတ်နည်းတွင် ဦးစွာ ထောပတ်နှင့်သကြားကို ရောနှောရန်၊ ပြီးမှ မုန့်ညက်ထည့်ရန်၊ ပြီးမှ မီးဖိုတွင်ဖုတ်ရန် ဖော်ပြထားသည်။ အလျင်စလိုဖြင့် နှင်းနှင်းသည် ထောပတ်နှင့်သကြားကို ကောင်းစွာမရောနှောမီ မုန့်ညက်ကို အရင်ထည့်ခဲ့သည်။ ကွတ်ကီးမုန့်ညက်သည် တုံးရုံးရုံးဖြစ်ပြီး တညီညာတည်း မဖုတ်တတ်ခဲ့ပါ။ သူမ၏မိခင်က algorithm တစ်ခု၏ အဆင့်များကို မှန်ကန်သောအစီအစဉ်ဖြင့် လိုက်နာရန် လိုအပ်ကြောင်း -- အဆင့်တိုင်းကို ပြီးမြောက်အောင်လုပ်ထားစေကာမူ၊ အစီအစဉ်ပြောင်းလိုက်လျှင် ရလဒ်ပါ ပြောင်းသွားနိုင်ကြောင်း ရှင်းပြခဲ့သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What did Hnin Hnin want to bake?',
            questionMy: 'နှင်းနှင်းသည် ဘာဖုတ်လိုခဲ့သနည်း။',
            optionsEn: ['Cookies', 'Bread', 'A cake', 'Pizza'],
            optionsMy: ['ကွတ်ကီး', 'ပေါင်မုန့်', 'ကိတ်မုန့်', 'ပီဇာ'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did the recipe say to mix first?',
            questionMy: 'ချက်ပြုတ်နည်းက ဦးဆုံးရောနှောရန် ဘာဟုပြောထားသနည်း။',
            optionsEn: [
              'The butter and sugar',
              'The flour and eggs',
              'The oven and tray',
              'The milk and water',
            ],
            optionsMy: [
              'ထောပတ်နှင့်သကြား',
              'မုန့်ညက်နှင့်ကြက်ဥ',
              'မီးဖိုနှင့်ပန်းကန်ပြား',
              'နို့နှင့်ရေ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What mistake did Hnin Hnin make?',
            questionMy: 'နှင်းနှင်းသည် ဘာအမှားလုပ်ခဲ့သနည်း။',
            optionsEn: [
              'She put the flour in before mixing the butter and sugar properly',
              'She forgot to turn on the oven',
              'She used the wrong recipe entirely',
              'She did not use any ingredients',
            ],
            optionsMy: [
              'ထောပတ်နှင့်သကြားကို ကောင်းစွာမရောနှောမီ မုန့်ညက်ကို အရင်ထည့်ခဲ့သည်',
              'မီးဖိုဖွင့်ရန် မေ့ခဲ့သည်',
              'လုံးဝမှားနေသော ချက်ပြုတ်နည်းကို သုံးခဲ့သည်',
              'ပါဝင်ပစ္စည်းတစ်ခုမျှ မသုံးခဲ့ပါ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What happened to the cookie dough because of the mistake?',
            questionMy:
                'ထိုအမှားကြောင့် ကွတ်ကီးမုန့်ညက်သည် မည်သို့ဖြစ်ခဲ့သနည်း။',
            optionsEn: [
              'It came out lumpy and did not bake evenly',
              'It became perfectly smooth',
              'It disappeared completely',
              'It turned into bread instead',
            ],
            optionsMy: [
              'တုံးရုံးရုံးဖြစ်ပြီး တညီညာတည်း မဖုတ်တတ်ခဲ့ပါ',
              'အလွန်ချောမွေ့သွားခဲ့သည်',
              'လုံးဝပျောက်ကွယ်သွားခဲ့သည်',
              'ပေါင်မုန့်အဖြစ် ပြောင်းသွားခဲ့သည်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Hnin Hnin's mother explain about algorithms?",
            questionMy:
                'နှင်းနှင်း၏မိခင်သည် algorithm များအကြောင်း ဘာရှင်းပြခဲ့သနည်း။',
            optionsEn: [
              'Steps must be followed in the correct order, or the result can change',
              'The order of steps never matters at all',
              'Only computers can follow algorithms',
              'Recipes are not a type of algorithm',
            ],
            optionsMy: [
              'အဆင့်များကို မှန်ကန်သောအစီအစဉ်ဖြင့် လိုက်နာရမည်၊ မဟုတ်ပါက ရလဒ်ပြောင်းသွားနိုင်သည်',
              'အဆင့်များ၏ အစီအစဉ်သည် ဘယ်တော့မှ အရေးမကြီးပါ',
              'ကွန်ပျူတာများသာ algorithm များကို လိုက်နာနိုင်သည်',
              'ချက်ပြုတ်နည်းများသည် algorithm အမျိုးအစား မဟုတ်ပါ',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w9-d5',
      dayNumber: 5,
      titleEn: 'Week 9 Recap Quiz',
      titleMy: 'နဝမပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is an algorithm?',
          questionMy: 'Algorithm ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A set of step-by-step instructions to complete a task',
            'A type of hardware',
            'A single meaningless word',
            'A picture with no instructions',
          ],
          optionsMy: [
            'လုပ်ငန်းတစ်ခုအား ပြီးမြောက်စေရန် အဆင့်ဆင့်ညွှန်ကြားချက်များစု',
            'Hardware အမျိုးအစားတစ်ခု',
            'အဓိပ္ပာယ်မရှိသော စကားလုံးတစ်ခုတည်း',
            'ညွှန်ကြားချက်မပါသော ပုံတစ်ပုံ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is an everyday algorithm?',
          questionMy: 'အောက်ပါတို့အနက် နေ့စဉ်ဘဝ algorithm တစ်ခုမှာ အဘယ်နည်း။',
          optionsEn: [
            'A recipe',
            'A blank page',
            'A closed box',
            'A silent room',
          ],
          optionsMy: ['ချက်ပြုတ်နည်း', 'အလွတ်စာမျက်နှာ', 'ပိတ်ထားသောဘူး', 'တိတ်ဆိတ်သောအခန်း'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Why does the order of steps matter in an algorithm?',
          questionMy: 'Algorithm တစ်ခုတွင် အဆင့်များ၏ အစီအစဉ်သည် အဘယ့်ကြောင့် အရေးကြီးသနည်း။',
          optionsEn: [
            'The wrong order can produce the wrong result',
            'It never matters',
            'Algorithms have no order',
            'Only software has order, not algorithms',
          ],
          optionsMy: [
            'မှားသောအစီအစဉ်သည် မှားသောရလဒ်ကို ဖြစ်စေနိုင်သည်',
            'ဘယ်တော့မှ အရေးမကြီးပါ',
            'Algorithm များတွင် အစီအစဉ် မရှိပါ',
            'Software တွင်သာ အစီအစဉ်ရှိပြီး algorithm တွင် မရှိပါ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is a single step inside an algorithm called?',
          questionMy: 'Algorithm တစ်ခုအတွင်းရှိ အဆင့်တစ်ခုတည်းကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['An instruction', 'A router', 'A byte', 'A folder'],
          optionsMy: ['ညွှန်ကြားချက်', 'Router', 'Byte', 'Folder'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is the difference between an algorithm and a program?',
          questionMy: 'Algorithm နှင့် program ကွာခြားချက်မှာ အဘယ်နည်း။',
          optionsEn: [
            'An algorithm is the plan; a program is that plan written in code',
            'They are always exactly the same thing',
            'An algorithm is a type of hardware',
            'Only a program can exist without an algorithm',
          ],
          optionsMy: [
            'Algorithm သည် အစီအစဉ်ဖြစ်ပြီး program သည် ကုဒ်ဖြင့်ရေးထားသော ထိုအစီအစဉ်ဖြစ်သည်',
            'အမြဲတမ်း အတူတူပင်ဖြစ်သည်',
            'Algorithm သည် hardware အမျိုးအစားတစ်ခုဖြစ်သည်',
            'Program တစ်ခုတည်းသာ algorithm မရှိဘဲ ရှိနိုင်သည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 3, Week 10: "Flowcharts: Drawing
// Algorithms"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek10 = CourseWeekDef(
  id: 'course-secondary1-computing-w10',
  weekNumber: 10,
  titleEn: 'Flowcharts: Drawing Algorithms',
  titleMy: 'Flowchart - Algorithm များကို ပုံဆွဲခြင်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w10-d1',
      dayNumber: 1,
      titleEn: 'Flowchart Symbols',
      titleMy: 'Flowchart သင်္ကေတများ',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a flowchart?',
          questionMy: 'Flowchart ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A diagram that shows the steps of an algorithm using symbols',
            'A type of computer hardware',
            'A list of website addresses',
            'A kind of storage device',
          ],
          optionsMy: [
            'သင်္ကေတများသုံးပြီး algorithm တစ်ခု၏ အဆင့်များကို ပြသော ပုံကြမ်း',
            'ကွန်ပျူတာ hardware အမျိုးအစားတစ်ခု',
            'ဝက်ဘ်ဆိုက်လိပ်စာများစာရင်း',
            'သိုလှောင်ရေးပစ္စည်းအမျိုးအစားတစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which shape usually marks the start or end of a flowchart?',
          questionMy: 'Flowchart တစ်ခု၏ အစ သို့မဟုတ် အဆုံးကို ပြသလေ့ရှိသော ပုံသဏ္ဍာန်မှာ အဘယ်နည်း။',
          optionsEn: ['An oval', 'A triangle', 'A star', 'A cube'],
          optionsMy: ['ဘဲဥပုံ (oval)', 'တြိဂံ', 'ကြယ်ပုံ', 'ကုဗပုံ'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which shape usually represents a process or action?',
          questionMy: 'လုပ်ဆောင်ချက် သို့မဟုတ် process ကို ပြသလေ့ရှိသော ပုံသဏ္ဍာန်မှာ အဘယ်နည်း။',
          optionsEn: ['A rectangle', 'An oval', 'A circle', 'A star'],
          optionsMy: ['ထောင့်မှန်စတုဂံ (rectangle)', 'ဘဲဥပုံ', 'စက်ဝိုင်း', 'ကြယ်ပုံ'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which shape usually represents input or output?',
          questionMy: 'Input သို့မဟုတ် output ကို ပြသလေ့ရှိသော ပုံသဏ္ဍာန်မှာ အဘယ်နည်း။',
          optionsEn: ['A parallelogram', 'A rectangle', 'An oval', 'A triangle'],
          optionsMy: ['ပါရာလယ်လိုဂရမ် (parallelogram)', 'ထောင့်မှန်စတုဂံ', 'ဘဲဥပုံ', 'တြိဂံ'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What do the arrows in a flowchart show?',
          questionMy: 'Flowchart ထဲရှိ မြားများသည် ဘာပြသနည်း။',
          optionsEn: [
            'The order/direction the steps happen in',
            'The colour of each step',
            'The size of the computer',
            'The price of the software',
          ],
          optionsMy: [
            'အဆင့်များ ဖြစ်ပျက်သည့် အစီအစဉ်/ဦးတည်ချက်',
            'အဆင့်တစ်ခုစီ၏ အရောင်',
            'ကွန်ပျူတာ၏ အရွယ်အစား',
            'Software ၏ စျေးနှုန်း',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w10-d2',
      dayNumber: 2,
      titleEn: 'Match the Flowchart Symbols',
      titleMy: 'Flowchart သင်္ကေတများကို ကိုက်ညီပါ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w10-flow-oval',
          termEn: 'Oval',
          termMy: 'Oval',
          matchEn: 'Marks the start or end of a flowchart',
          matchMy: 'Flowchart တစ်ခု၏ အစ သို့မဟုတ် အဆုံးကို ပြသည်',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w10-flow-rectangle',
          termEn: 'Rectangle',
          termMy: 'Rectangle',
          matchEn: 'Shows a process or action to be carried out',
          matchMy: 'ဆောင်ရွက်ရမည့် process သို့မဟုတ် လုပ်ဆောင်ချက်ကို ပြသည်',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w10-flow-parallelogram',
          termEn: 'Parallelogram',
          termMy: 'Parallelogram',
          matchEn: 'Shows an input or output',
          matchMy: 'Input သို့မဟုတ် output ကို ပြသည်',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w10-flow-arrow',
          termEn: 'Arrow',
          termMy: 'Arrow',
          matchEn: 'Shows the direction the steps flow in',
          matchMy: 'အဆင့်များ စီးဆင်းသည့်ဦးတည်ချက်ကို ပြသည်',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w10-flow-diamond',
          termEn: 'Diamond',
          termMy: 'Diamond',
          matchEn: 'Shows a decision that needs a yes or no answer',
          matchMy: 'ဟုတ် သို့မဟုတ် မဟုတ် ဟု ဖြေရမည့် ဆုံးဖြတ်ချက်ကို ပြသည်',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w10-d3',
      dayNumber: 3,
      titleEn: 'Which Symbol?',
      titleMy: 'ဘယ်သင်္ကေတလဲ',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Start/End', 'Process', 'Input/Output'],
        bucketsMy: [
          'Start/End (အစ/အဆုံး)',
          'Process (လုပ်ဆောင်ချက်)',
          'Input/Output',
        ],
        items: [
          SortingItem(
            id: 'w10-sort-begin',
            labelEn: 'Begin',
            labelMy: 'Begin',
            correctBucketEn: 'Start/End',
            correctBucketMy: 'Start/End (အစ/အဆုံး)',
          ),
          SortingItem(
            id: 'w10-sort-end',
            labelEn: 'End',
            labelMy: 'End',
            correctBucketEn: 'Start/End',
            correctBucketMy: 'Start/End (အစ/အဆုံး)',
          ),
          SortingItem(
            id: 'w10-sort-add',
            labelEn: 'Add the two numbers together',
            labelMy: 'ဂဏန်းနှစ်လုံးကို ပေါင်းလိုက်ပါ',
            correctBucketEn: 'Process',
            correctBucketMy: 'Process (လုပ်ဆောင်ချက်)',
          ),
          SortingItem(
            id: 'w10-sort-multiply',
            labelEn: 'Multiply the numbers',
            labelMy: 'ဂဏန်းများကို မြှောက်ပါ',
            correctBucketEn: 'Process',
            correctBucketMy: 'Process (လုပ်ဆောင်ချက်)',
          ),
          SortingItem(
            id: 'w10-sort-typename',
            labelEn: 'Type your name',
            labelMy: 'သင့်နာမည်ကို ရိုက်ထည့်ပါ',
            correctBucketEn: 'Input/Output',
            correctBucketMy: 'Input/Output',
          ),
          SortingItem(
            id: 'w10-sort-display',
            labelEn: 'Display the result on screen',
            labelMy: 'ရလဒ်ကို မျက်နှာပြင်ပေါ်တွင် ပြပါ',
            correctBucketEn: 'Input/Output',
            correctBucketMy: 'Input/Output',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w10-d4',
      dayNumber: 4,
      titleEn: 'Making a Cup of Tea',
      titleMy: 'လက်ဖက်ရည် တစ်ခွက်ပြုလုပ်ခြင်း',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: 'Making a Cup of Tea',
        titleMy: 'လက်ဖက်ရည် တစ်ခွက်ပြုလုပ်ခြင်း',
        passageEn:
            "In computing class, Aung Aung's teacher drew a flowchart for making a cup of tea. It began with an oval labelled 'Start'. Next came a rectangle: 'Boil the water'. Another rectangle followed: 'Put a tea bag in the cup'. A third rectangle said 'Pour in the hot water'. A parallelogram then displayed the message 'Tea is ready!', showing an output rather than another action. The flowchart finished with an oval labelled 'End'. Aung Aung realised that a flowchart is really just an algorithm drawn as a picture, making each step easy to follow in order.",
        passageMy:
            'ကွန်ပျူတာသင်တန်းတွင် အောင်အောင်၏ဆရာသည် လက်ဖက်ရည်တစ်ခွက်ပြုလုပ်ရန် flowchart တစ်ခုကို ရေးဆွဲပြခဲ့သည်။ ၎င်းသည် "Start" ဟုအမှတ်ရေးထားသော oval တစ်ခုဖြင့် စတင်ခဲ့သည်။ ထို့နောက် rectangle တစ်ခု ပါလာသည် - "ရေကို ဆူအောင်ကျိုပါ"။ နောက်ထပ် rectangle တစ်ခု ဆက်လာသည် - "လက်ဖက်ရည်အိတ်ကို ခွက်ထဲထည့်ပါ"။ တတိယ rectangle တစ်ခုက "ပူသောရေကို လောင်းထည့်ပါ" ဟုဆိုသည်။ ထို့နောက် parallelogram တစ်ခုက "လက်ဖက်ရည် အသင့်ဖြစ်ပါပြီ!" ဟူသော output စာသားကို ပြသည်။ Flowchart သည် "End" ဟုအမှတ်ရေးထားသော oval တစ်ခုဖြင့် ပြီးဆုံးသွားသည်။ Flowchart တစ်ခုသည် algorithm တစ်ခုကို ပုံအဖြစ်ရေးဆွဲထားခြင်းသာဖြစ်ပြီး၊ အဆင့်တစ်ခုစီကို အစီအစဉ်အလိုက် လိုက်နာရန် လွယ်ကူစေကြောင်း အောင်အောင် နားလည်လိုက်သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What shape did the flowchart start with?',
            questionMy: 'Flowchart သည် ဘယ်ပုံသဏ္ဍာန်ဖြင့် စတင်ခဲ့သနည်း။',
            optionsEn: ['An oval', 'A rectangle', 'A diamond', 'A parallelogram'],
            optionsMy: ['Oval', 'Rectangle', 'Diamond', 'Parallelogram'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did the first rectangle say?',
            questionMy: 'ပထမ rectangle တွင် ဘာရေးထားသနည်း။',
            optionsEn: [
              'Boil the water',
              'Pour in the hot water',
              'Put a tea bag in the cup',
              'End',
            ],
            optionsMy: [
              'ရေကို ဆူအောင်ကျိုပါ',
              'ပူသောရေကို လောင်းထည့်ပါ',
              'လက်ဖက်ရည်အိတ်ကို ခွက်ထဲထည့်ပါ',
              'End',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'Which shape displayed the message "Tea is ready!"?',
            questionMy: '"လက်ဖက်ရည် အသင့်ဖြစ်ပါပြီ!" ဟူသောစာသားကို ဘယ်ပုံသဏ္ဍာန်က ပြသခဲ့သနည်း။',
            optionsEn: ['A parallelogram', 'An oval', 'A diamond', 'A rectangle'],
            optionsMy: ['Parallelogram', 'Oval', 'Diamond', 'Rectangle'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did Aung Aung realise a flowchart really is?',
            questionMy: 'Flowchart တစ်ခုသည် အမှန်တကယ် ဘာဖြစ်ကြောင်း အောင်အောင် နားလည်လိုက်သနည်း။',
            optionsEn: [
              'An algorithm drawn as a picture',
              'A type of hardware',
              'A kind of storage device',
              'A website address',
            ],
            optionsMy: [
              'Algorithm တစ်ခုကို ပုံအဖြစ်ရေးဆွဲထားခြင်း',
              'Hardware အမျိုးအစားတစ်ခု',
              'သိုလှောင်ရေးပစ္စည်းအမျိုးအစားတစ်ခု',
              'ဝက်ဘ်ဆိုက်လိပ်စာ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What shape ended the flowchart?',
            questionMy: 'Flowchart သည် ဘယ်ပုံသဏ္ဍာန်ဖြင့် ပြီးဆုံးခဲ့သနည်း။',
            optionsEn: ['An oval', 'A rectangle', 'A parallelogram', 'A diamond'],
            optionsMy: ['Oval', 'Rectangle', 'Parallelogram', 'Diamond'],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w10-d5',
      dayNumber: 5,
      titleEn: 'Week 10 Recap Quiz',
      titleMy: 'ဒသမပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What does a flowchart show?',
          questionMy: 'Flowchart တစ်ခုက ဘာကိုပြသနည်း။',
          optionsEn: [
            "An algorithm's steps drawn using symbols",
            'A list of file names',
            'A type of hardware',
            'A network diagram only',
          ],
          optionsMy: [
            'Algorithm တစ်ခု၏ အဆင့်များကို သင်္ကေတများဖြင့် ရေးဆွဲထားခြင်း',
            'ဖိုင်အမည်စာရင်း',
            'Hardware အမျိုးအစားတစ်ခု',
            'ကွန်ရက်ပုံကြမ်းတစ်ခုတည်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which shape marks the start or end?',
          questionMy: 'ဘယ်ပုံသဏ္ဍာန်က အစ သို့မဟုတ် အဆုံးကို ပြသနည်း။',
          optionsEn: ['An oval', 'A rectangle', 'A diamond', 'A parallelogram'],
          optionsMy: ['Oval', 'Rectangle', 'Diamond', 'Parallelogram'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which shape shows a process or action?',
          questionMy: 'ဘယ်ပုံသဏ္ဍာန်က process သို့မဟုတ် လုပ်ဆောင်ချက်ကို ပြသနည်း။',
          optionsEn: ['A rectangle', 'An oval', 'A diamond', 'A star'],
          optionsMy: ['Rectangle', 'Oval', 'Diamond', 'Star'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which shape shows input or output?',
          questionMy: 'ဘယ်ပုံသဏ္ဍာန်က input သို့မဟုတ် output ကို ပြသနည်း။',
          optionsEn: ['A parallelogram', 'A rectangle', 'An oval', 'A diamond'],
          optionsMy: ['Parallelogram', 'Rectangle', 'Oval', 'Diamond'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What do arrows show in a flowchart?',
          questionMy: 'Flowchart ထဲရှိ မြားများက ဘာကိုပြသနည်း။',
          optionsEn: [
            'The order the steps happen in',
            'The price of the software',
            'The colour of the screen',
            'The size of the file',
          ],
          optionsMy: [
            'အဆင့်များ ဖြစ်ပျက်သည့်အစီအစဉ်',
            'Software ၏ စျေးနှုန်း',
            'မျက်နှာပြင်၏ အရောင်',
            'ဖိုင်၏ အရွယ်အစား',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 3, Week 11: "Selection: Making
// Decisions"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek11 = CourseWeekDef(
  id: 'course-secondary1-computing-w11',
  weekNumber: 11,
  titleEn: 'Selection: Making Decisions',
  titleMy: 'Selection - ဆုံးဖြတ်ချက်ချခြင်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w11-d1',
      dayNumber: 1,
      titleEn: 'Making Decisions in an Algorithm',
      titleMy: 'Algorithm တစ်ခုတွင် ဆုံးဖြတ်ချက်ချခြင်း',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is "selection" in an algorithm?',
          questionMy: 'Algorithm တစ်ခုတွင် "selection" ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Choosing what to do next based on whether something is true or false',
            'Always doing the same step every time',
            'Deleting all the steps',
            'Only producing output, with no input',
          ],
          optionsMy: [
            'တစ်စုံတစ်ခု မှန်သည်၊ မှားသည်ကို လိုက်၍ နောက်ဘာလုပ်မည်ကို ရွေးချယ်ခြင်း',
            'အချိန်တိုင်း တူညီသောအဆင့်ကိုသာ လုပ်ဆောင်ခြင်း',
            'အဆင့်အားလုံးကို ဖျက်ပစ်ခြင်း',
            'Input မပါဘဲ output ကိုသာ ထုတ်ပေးခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which flowchart shape represents a decision?',
          questionMy: 'ဆုံးဖြတ်ချက်ကို ပြသသော flowchart ပုံသဏ္ဍာန်မှာ အဘယ်နည်း။',
          optionsEn: ['A diamond', 'An oval', 'A rectangle', 'A parallelogram'],
          optionsMy: ['Diamond', 'Oval', 'Rectangle', 'Parallelogram'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: '"IF it is raining, THEN take an umbrella" is an example of...',
          questionMy: '"မိုးရွာလျှင် ထီးယူပါ" ဆိုသည်မှာ ဘာ၏ ဥပမာဖြစ်သနည်း။',
          optionsEn: [
            'Selection',
            'A single output with no condition',
            'A type of hardware',
            'A file extension',
          ],
          optionsMy: ['Selection', 'အခြေအနေမပါသော output တစ်ခုတည်း', 'Hardware အမျိုးအစားတစ်ခု', 'File extension'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'A decision in an algorithm is usually answered with...',
          questionMy: 'Algorithm တစ်ခုရှိ ဆုံးဖြတ်ချက်ကို များသောအားဖြင့် ဘာဖြင့် ဖြေလေ့ရှိသနည်း။',
          optionsEn: ['Yes or No (true or false)', 'A colour', 'A file name', 'A price'],
          optionsMy: ['ဟုတ် သို့မဟုတ် မဟုတ် (true or false)', 'အရောင်', 'ဖိုင်အမည်', 'စျေးနှုန်း'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Why is selection useful in algorithms?',
          questionMy: 'Selection သည် algorithm များတွင် အဘယ့်ကြောင့် အသုံးဝင်သနည်း။',
          optionsEn: [
            'It lets the algorithm react differently depending on the situation',
            'It makes the algorithm slower for no reason',
            'It removes the need for any steps',
            'It only works with pictures',
          ],
          optionsMy: [
            'အခြေအနေအလိုက် algorithm ကို မတူညီသောတုံ့ပြန်မှုများ ပြုလုပ်စေနိုင်သည်',
            'အကြောင်းမဲ့ algorithm ကို နှေးစေသည်',
            'မည်သည့်အဆင့်မှ လိုအပ်ခြင်းကို ဖယ်ရှားပေးသည်',
            'ပုံများနှင့်သာ အလုပ်လုပ်သည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w11-d2',
      dayNumber: 2,
      titleEn: 'Selection Vocabulary',
      titleMy: 'Selection ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w11-sel-selection',
          termEn: 'Selection',
          termMy: 'Selection',
          matchEn: 'Choosing what to do next based on a condition',
          matchMy: 'အခြေအနေတစ်ခုပေါ်မူတည်၍ နောက်ဘာလုပ်မည်ကို ရွေးချယ်ခြင်း',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w11-sel-condition',
          termEn: 'Condition',
          termMy: 'Condition',
          matchEn: 'A yes/no question that controls what happens next',
          matchMy: 'ဆက်လက်ဖြစ်ပျက်မည့်အရာကို ထိန်းချုပ်ပေးသော ဟုတ်/မဟုတ်မေးခွန်း',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w11-sel-if',
          termEn: 'IF',
          termMy: 'IF',
          matchEn: 'The word used to start a decision in an algorithm',
          matchMy: 'Algorithm တစ်ခုတွင် ဆုံးဖြတ်ချက်ကို စတင်ရန်သုံးသော စကားလုံး',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w11-sel-diamondshape',
          termEn: 'Diamond Shape',
          termMy: 'Diamond Shape',
          matchEn: 'The flowchart symbol used to show a decision',
          matchMy: 'ဆုံးဖြတ်ချက်ကို ပြသရန်သုံးသော flowchart သင်္ကေတ',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w11-sel-branch',
          termEn: 'Branch',
          termMy: 'Branch',
          matchEn: 'One of the possible paths after a decision (yes path or no path)',
          matchMy: 'ဆုံးဖြတ်ချက်ပြီးနောက် ဖြစ်နိုင်သောလမ်းကြောင်းတစ်ခု (ဟုတ်လမ်း သို့မဟုတ် မဟုတ်လမ်း)',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w11-d3',
      dayNumber: 3,
      titleEn: 'Decision or Instruction?',
      titleMy: 'ဆုံးဖြတ်ချက်လား၊ ညွှန်ကြားချက်လား',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Decision (Yes/No Question)', 'Instruction (Just an Action)'],
        bucketsMy: [
          'Decision (ဟုတ်/မဟုတ် မေးခွန်း)',
          'Instruction (လုပ်ဆောင်ချက်သာ)',
        ],
        items: [
          SortingItem(
            id: 'w11-sort-israining',
            labelEn: 'Is it raining?',
            labelMy: 'မိုးရွာနေပါသလား။',
            correctBucketEn: 'Decision (Yes/No Question)',
            correctBucketMy: 'Decision (ဟုတ်/မဟုတ် မေးခွန်း)',
          ),
          SortingItem(
            id: 'w11-sort-takeumbrella',
            labelEn: 'Take an umbrella',
            labelMy: 'ထီးယူပါ',
            correctBucketEn: 'Instruction (Just an Action)',
            correctBucketMy: 'Instruction (လုပ်ဆောင်ချက်သာ)',
          ),
          SortingItem(
            id: 'w11-sort-iscorrect',
            labelEn: 'Is the answer correct?',
            labelMy: 'အဖြေမှန်ပါသလား။',
            correctBucketEn: 'Decision (Yes/No Question)',
            correctBucketMy: 'Decision (ဟုတ်/မဟုတ် မေးခွန်း)',
          ),
          SortingItem(
            id: 'w11-sort-printresult',
            labelEn: 'Print the result',
            labelMy: 'ရလဒ်ကို ပရင့်ထုတ်ပါ',
            correctBucketEn: 'Instruction (Just an Action)',
            correctBucketMy: 'Instruction (လုပ်ဆောင်ချက်သာ)',
          ),
          SortingItem(
            id: 'w11-sort-isdoorlocked',
            labelEn: 'Is the door locked?',
            labelMy: 'တံခါးကို သော့ခတ်ထားပါသလား။',
            correctBucketEn: 'Decision (Yes/No Question)',
            correctBucketMy: 'Decision (ဟုတ်/မဟုတ် မေးခွန်း)',
          ),
          SortingItem(
            id: 'w11-sort-opendoor',
            labelEn: 'Open the door',
            labelMy: 'တံခါးဖွင့်ပါ',
            correctBucketEn: 'Instruction (Just an Action)',
            correctBucketMy: 'Instruction (လုပ်ဆောင်ချက်သာ)',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w11-d4',
      dayNumber: 4,
      titleEn: "Su Su's Morning Decision",
      titleMy: 'စုစု၏ မနက်ခင်း ဆုံးဖြတ်ချက်',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su's Morning Decision",
        titleMy: 'စုစု၏ မနက်ခင်း ဆုံးဖြတ်ချက်',
        passageEn:
            "Every morning before leaving for school, Su Su follows a simple algorithm with a decision inside it. First, she looks out of the window to check the weather -- that is the condition. IF it is raining, THEN she puts an umbrella in her bag. IF it is not raining, THEN she leaves the umbrella at home. This single decision changes what Su Su does next, even though the rest of her morning routine, brushing her teeth and eating breakfast, stays exactly the same sequence every day.",
        passageMy:
            'စုစုသည် ကျောင်းသွားရန် အိမ်မှမထွက်မီ နံနက်တိုင်း ဆုံးဖြတ်ချက်တစ်ခုပါဝင်သော ရိုးရှင်းသော algorithm တစ်ခုကို လိုက်နာသည်။ ဦးစွာ ရာသီဥတုကို စစ်ဆေးရန် ပြတင်းပေါက်မှ ကြည့်သည် -- ၎င်းသည် condition ဖြစ်သည်။ မိုးရွာလျှင် သူမသည် အိတ်ထဲသို့ ထီးထည့်သည်။ မိုးမရွာလျှင် သူမသည် ထီးကို အိမ်တွင်ချန်ထားသည်။ ဤဆုံးဖြတ်ချက်တစ်ခုတည်းသည် စုစု နောက်တစ်ခုလုပ်မည့်အရာကို ပြောင်းလဲသွားစေသော်လည်း၊ သွားတိုက်ခြင်းနှင့် နံနက်စာစားခြင်းကဲ့သို့ သူမ၏ ကျန်နံနက်ခင်းအစီအစဉ်မှာမူ နေ့တိုင်း တူညီသောအစီအစဉ်အတိုင်း ရှိနေဆဲဖြစ်သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What does Su Su check first every morning?',
            questionMy: 'စုစုသည် နံနက်တိုင်း ဦးစွာ ဘာစစ်ဆေးသနည်း။',
            optionsEn: ['The weather', 'Her homework', 'The time', 'Her phone'],
            optionsMy: ['ရာသီဥတု', 'အိမ်စာ', 'အချိန်', 'ဖုန်း'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What is the condition in Su Su\'s algorithm?',
            questionMy: 'စုစု၏ algorithm ရှိ condition မှာ အဘယ်နည်း။',
            optionsEn: [
              'Whether it is raining or not',
              'Whether she brushed her teeth',
              'Whether she ate breakfast',
              'Whether she has her phone',
            ],
            optionsMy: [
              'မိုးရွာသလား မရွာသလား',
              'သွားတိုက်ပြီးလား',
              'နံနက်စာစားပြီးလား',
              'ဖုန်းပါလား',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What does Su Su do IF it is raining?',
            questionMy: 'မိုးရွာလျှင် စုစုသည် ဘာလုပ်သနည်း။',
            optionsEn: [
              'She puts an umbrella in her bag',
              'She stays home all day',
              'She leaves her bag at home',
              'She takes a different route',
            ],
            optionsMy: [
              'အိတ်ထဲသို့ ထီးထည့်သည်',
              'တစ်နေ့လုံး အိမ်တွင်နေသည်',
              'အိတ်ကို အိမ်တွင်ချန်ထားသည်',
              'မတူညီသောလမ်းကို သွားသည်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What does Su Su do IF it is NOT raining?',
            questionMy: 'မိုးမရွာလျှင် စုစုသည် ဘာလုပ်သနည်း။',
            optionsEn: [
              'She leaves the umbrella at home',
              'She still takes the umbrella',
              'She does not go to school',
              'She takes two umbrellas',
            ],
            optionsMy: [
              'ထီးကို အိမ်တွင်ချန်ထားသည်',
              'ထီးကို ဆက်ယူသည်',
              'ကျောင်းမသွားပါ',
              'ထီးနှစ်ချောင်း ယူသည်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What stays exactly the same sequence every day, regardless of the decision?',
            questionMy: 'ဆုံးဖြတ်ချက်မည်သို့ပင်ဖြစ်စေ၊ နေ့တိုင်း တူညီသောအစီအစဉ်ဖြင့် ရှိနေဆဲဖြစ်သည့်အရာမှာ အဘယ်နည်း။',
            optionsEn: [
              'Brushing her teeth and eating breakfast',
              'Whether she takes an umbrella',
              'The weather',
              'What time school starts',
            ],
            optionsMy: [
              'သွားတိုက်ခြင်းနှင့် နံနက်စာစားခြင်း',
              'ထီးယူသလား မယူသလား',
              'မိုးလင်းမလင်း',
              'ကျောင်းစတင်ချိန်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w11-d5',
      dayNumber: 5,
      titleEn: 'Week 11 Recap Quiz',
      titleMy: 'ဧကာဒသမပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is selection in an algorithm?',
          questionMy: 'Algorithm တစ်ခုတွင် selection ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Choosing what to do next based on a condition',
            'Doing the exact same step every time',
            'Removing all steps',
            'Only handling output',
          ],
          optionsMy: [
            'အခြေအနေတစ်ခုပေါ်မူတည်၍ နောက်ဘာလုပ်မည်ကို ရွေးချယ်ခြင်း',
            'အချိန်တိုင်း တူညီသောအဆင့်ကိုသာ လုပ်ဆောင်ခြင်း',
            'အဆင့်အားလုံးကို ဖယ်ရှားခြင်း',
            'Output ကိုသာ ကိုင်တွယ်ခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which shape represents a decision in a flowchart?',
          questionMy: 'Flowchart တွင် ဆုံးဖြတ်ချက်ကို ပြသောပုံသဏ္ဍာန်မှာ အဘယ်နည်း။',
          optionsEn: ['A diamond', 'An oval', 'A rectangle', 'A parallelogram'],
          optionsMy: ['Diamond', 'Oval', 'Rectangle', 'Parallelogram'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'A condition is usually answered with...',
          questionMy: 'Condition ကို များသောအားဖြင့် ဘာဖြင့်ဖြေလေ့ရှိသနည်း။',
          optionsEn: ['Yes or No', 'A colour', 'A price', 'A file name'],
          optionsMy: ['ဟုတ် သို့မဟုတ် မဟုတ်', 'အရောင်', 'စျေးနှုန်း', 'ဖိုင်အမည်'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is a decision, not an instruction?',
          questionMy: 'အောက်ပါတို့အနက် ညွှန်ကြားချက်မဟုတ်ဘဲ ဆုံးဖြတ်ချက်ဖြစ်သည်မှာ အဘယ်နည်း။',
          optionsEn: ['Is it raining?', 'Take an umbrella', 'Print the result', 'Open the door'],
          optionsMy: ['မိုးရွာနေပါသလား။', 'ထီးယူပါ', 'ရလဒ်ကို ပရင့်ထုတ်ပါ', 'တံခါးဖွင့်ပါ'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Why is selection useful?',
          questionMy: 'Selection သည် အဘယ့်ကြောင့် အသုံးဝင်သနည်း။',
          optionsEn: [
            'It lets an algorithm react differently depending on the situation',
            'It always slows the algorithm down for no reason',
            'It deletes unnecessary steps permanently',
            'It only works with pictures, not real decisions',
          ],
          optionsMy: [
            'အခြေအနေအလိုက် algorithm ကို မတူညီသောတုံ့ပြန်မှုများ ပြုလုပ်စေနိုင်သည်',
            'အကြောင်းမဲ့ algorithm ကို အမြဲနှေးစေသည်',
            'မလိုအပ်သောအဆင့်များကို အမြဲတမ်းဖျက်ပစ်သည်',
            'ပုံများနှင့်သာ အလုပ်လုပ်ပြီး တကယ့်ဆုံးဖြတ်ချက်နှင့် မသက်ဆိုင်ပါ',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 3, Week 12: "Loops: Repeating Steps"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek12 = CourseWeekDef(
  id: 'course-secondary1-computing-w12',
  weekNumber: 12,
  titleEn: 'Loops: Repeating Steps',
  titleMy: 'Loop - အဆင့်များကို ထပ်ခါလုပ်ခြင်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w12-d1',
      dayNumber: 1,
      titleEn: 'Repeating Steps with Loops',
      titleMy: 'Loop များဖြင့် အဆင့်များကို ထပ်ခါလုပ်ခြင်း',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a "loop" in an algorithm?',
          questionMy: 'Algorithm တစ်ခုတွင် "loop" ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A set of steps that repeats multiple times',
            'A step that only happens once',
            'A type of hardware',
            'A file extension',
          ],
          optionsMy: [
            'အကြိမ်ကြိမ် ထပ်ခါလုပ်သော အဆင့်များစု',
            'တစ်ကြိမ်တည်း ဖြစ်ပျက်သော အဆင့်',
            'Hardware အမျိုးအစားတစ်ခု',
            'File extension',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Why do programmers use loops?',
          questionMy: 'Programmer များသည် loop များကို အဘယ့်ကြောင့် သုံးကြသနည်း။',
          optionsEn: [
            'To repeat the same steps without writing them out again and again',
            'To make the algorithm shorter by deleting steps',
            'To stop the algorithm from working',
            'To turn instructions into hardware',
          ],
          optionsMy: [
            'တူညီသောအဆင့်များကို ထပ်ခါထပ်ခါ ပြန်မရေးဘဲ ထပ်ခါလုပ်စေရန်',
            'အဆင့်များဖျက်ပစ်ကာ algorithm ကို ပိုတိုစေရန်',
            'Algorithm ကို အလုပ်မလုပ်အောင် ရပ်ရန်',
            'ညွှန်ကြားချက်များကို hardware အဖြစ် ပြောင်းရန်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is a real-life example of a loop?',
          questionMy: 'အောက်ပါတို့အနက် loop ၏ နေ့စဉ်ဘဝဥပမာမှာ အဘယ်နည်း။',
          optionsEn: [
            'Brushing every tooth one by one',
            'Opening a door once',
            'Turning on a computer once',
            'Saving one file',
          ],
          optionsMy: [
            'သွားတစ်ချောင်းချင်းစီကို တစ်ခုပြီးတစ်ခု တိုက်ခြင်း',
            'တံခါးကို တစ်ကြိမ်တည်း ဖွင့်ခြင်း',
            'ကွန်ပျူတာကို တစ်ကြိမ်တည်း ဖွင့်ခြင်း',
            'ဖိုင်တစ်ခုတည်း သိမ်းဆည်းခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What usually tells a loop when to stop repeating?',
          questionMy: 'Loop တစ်ခုကို ထပ်ခါလုပ်ခြင်းရပ်ရန် များသောအားဖြင့် ဘာက ပြောပြသနည်း။',
          optionsEn: [
            'A condition',
            'The colour of the screen',
            'The size of the monitor',
            'The price of the computer',
          ],
          optionsMy: [
            'Condition တစ်ခု',
            'မျက်နှာပြင်၏ အရောင်',
            'မော်နီတာ၏ အရွယ်အစား',
            'ကွန်ပျူတာ၏ စျေးနှုန်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these best describes an algorithm using sequence, selection, AND loop together?',
          questionMy: 'Sequence, selection နှင့် loop သုံးမျိုးလုံးကို အတူသုံးထားသော algorithm ကို အကောင်းဆုံးဖော်ပြထားသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Steps in order, a decision, and steps that repeat',
            'Only pictures with no steps',
            'Only one instruction repeated forever with no condition',
            'Hardware with no instructions',
          ],
          optionsMy: [
            'အစီအစဉ်အတိုင်း အဆင့်များ၊ ဆုံးဖြတ်ချက်တစ်ခု၊ ပြီးလျှင် ထပ်ခါလုပ်သောအဆင့်များ',
            'အဆင့်မပါသော ပုံများသာ',
            'Condition မပါဘဲ ညွှန်ကြားချက်တစ်ခုတည်းကို အစဉ်ထာဝရ ထပ်ခါလုပ်ခြင်း',
            'ညွှန်ကြားချက်မပါသော hardware',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w12-d2',
      dayNumber: 2,
      titleEn: 'Loop Vocabulary',
      titleMy: 'Loop ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w12-loop-loop',
          termEn: 'Loop',
          termMy: 'Loop',
          matchEn: 'A set of steps that repeats multiple times',
          matchMy: 'အကြိမ်ကြိမ် ထပ်ခါလုပ်သော အဆင့်များစု',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w12-loop-repeat',
          termEn: 'Repeat',
          termMy: 'Repeat',
          matchEn: 'To carry out the same steps again',
          matchMy: 'တူညီသောအဆင့်များကို ထပ်မံဆောင်ရွက်ခြင်း',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w12-loop-condition',
          termEn: 'Condition (loop)',
          termMy: 'Condition (loop)',
          matchEn: 'Tells the loop when to stop repeating',
          matchMy: 'Loop ကို ထပ်ခါလုပ်ခြင်းရပ်ရမည့်အချိန် ပြောပြသည်',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w12-loop-sequence',
          termEn: 'Sequence',
          termMy: 'Sequence',
          matchEn: 'Instructions carried out one after another, in order',
          matchMy: 'အစီအစဉ်အလိုက် တစ်ခုပြီးတစ်ခု ဆောင်ရွက်သော ညွှန်ကြားချက်များ',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w12-loop-selection',
          termEn: 'Selection',
          termMy: 'Selection',
          matchEn: 'Choosing what to do next based on a condition',
          matchMy: 'အခြေအနေတစ်ခုပေါ်မူတည်၍ နောက်ဘာလုပ်မည်ကို ရွေးချယ်ခြင်း',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w12-d3',
      dayNumber: 3,
      titleEn: 'Needs a Loop or Just Once?',
      titleMy: 'Loop လိုသလား၊ တစ်ကြိမ်တည်းလား',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Needs a Loop (Repeated)', 'Just Once'],
        bucketsMy: [
          'Needs a Loop (ထပ်ခါလုပ်ရန်လို)',
          'Just Once (တစ်ကြိမ်တည်း)',
        ],
        items: [
          SortingItem(
            id: 'w12-sort-brushteeth',
            labelEn: 'Brushing each tooth',
            labelMy: 'သွားတစ်ချောင်းချင်းစီကို တိုက်ခြင်း',
            correctBucketEn: 'Needs a Loop (Repeated)',
            correctBucketMy: 'Needs a Loop (ထပ်ခါလုပ်ရန်လို)',
          ),
          SortingItem(
            id: 'w12-sort-turnoncomputer',
            labelEn: 'Turning on the computer',
            labelMy: 'ကွန်ပျူတာကိုဖွင့်ခြင်း',
            correctBucketEn: 'Just Once',
            correctBucketMy: 'Just Once (တစ်ကြိမ်တည်း)',
          ),
          SortingItem(
            id: 'w12-sort-printpages',
            labelEn: 'Printing every page of a 10-page report',
            labelMy: 'စာမျက်နှာ ၁၀ မျက်နှာပါ အစီရင်ခံစာ၏ စာမျက်နှာတိုင်းကို ပရင့်ထုတ်ခြင်း',
            correctBucketEn: 'Needs a Loop (Repeated)',
            correctBucketMy: 'Needs a Loop (ထပ်ခါလုပ်ရန်လို)',
          ),
          SortingItem(
            id: 'w12-sort-openbag',
            labelEn: 'Opening your school bag in the morning',
            labelMy: 'မနက်ခင်း ကျောင်းအိတ်ကိုဖွင့်ခြင်း',
            correctBucketEn: 'Just Once',
            correctBucketMy: 'Just Once (တစ်ကြိမ်တည်း)',
          ),
          SortingItem(
            id: 'w12-sort-waterplants',
            labelEn: 'Watering every plant in a row of 20 plants',
            labelMy: 'အပင် ၂၀ တန်းစီရှိ အပင်တိုင်းကို ရေလောင်းခြင်း',
            correctBucketEn: 'Needs a Loop (Repeated)',
            correctBucketMy: 'Needs a Loop (ထပ်ခါလုပ်ရန်လို)',
          ),
          SortingItem(
            id: 'w12-sort-lockdoor',
            labelEn: 'Locking the front door at night',
            labelMy: 'ညနေ အိမ်ရှေ့တံခါးကို သော့ခတ်ခြင်း',
            correctBucketEn: 'Just Once',
            correctBucketMy: 'Just Once (တစ်ကြိမ်တည်း)',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w12-d4',
      dayNumber: 4,
      titleEn: "Aye Aye's Robot Helper",
      titleMy: 'အေးအေး၏ Robot လက်ထောက်',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Aye Aye's Robot Helper",
        titleMy: 'အေးအေး၏ Robot လက်ထောက်',
        passageEn:
            "For her end-of-term project, Aye Aye programmed a small robot to water a row of 8 plant pots. The robot's algorithm used all three building blocks she had learned this term. First came a sequence: move forward, then stop above a pot. Next came a selection: IF the soil looks dry, THEN pour water; IF not, THEN skip that pot. Finally, a loop repeated the whole sequence-and-selection process 8 times, once for each pot, until every pot had been checked.",
        passageMy:
            'သူမ၏ Term ကုန်ချိန် ပရောဂျက်အတွက် အေးအေးသည် အပင်အိုးတန်း ၈ လုံးကို ရေလောင်းရန် robot သေးလေးတစ်ခုကို ပရိုဂရမ်ရေးခဲ့သည်။ Robot ၏ algorithm သည် သူမ ဤ Term အတွင်း သင်ခဲ့ရသော အခြေခံအစိတ်အပိုင်းသုံးမျိုးလုံးကို သုံးထားသည်။ ပထမဦးစွာ sequence တစ်ခု ပါလာသည် - ရှေ့သို့ရွေ့ပါ၊ ပြီးမှ အိုးတစ်လုံးအပေါ်တွင် ရပ်ပါ။ ထို့နောက် selection တစ်ခု ပါလာသည် - မြေသည် ခြောက်နေပါက ရေလောင်းပါ၊ မခြောက်ပါက ထိုအိုးကို ကျော်သွားပါ။ နောက်ဆုံးတွင် loop တစ်ခုသည် sequence-and-selection လုပ်ငန်းစဉ်တစ်ခုလုံးကို အိုးတစ်လုံးစီအတွက် ၈ ကြိမ် ထပ်ခါလုပ်ပေးပြီး၊ အိုးတိုင်းကို စစ်ဆေးပြီးသည်အထိ ဆက်လုပ်ခဲ့သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What did Aye Aye program the robot to do?',
            questionMy: 'အေးအေးသည် robot ကို ဘာလုပ်ရန် ပရိုဂရမ်ရေးခဲ့သနည်း။',
            optionsEn: [
              'Water a row of 8 plant pots',
              'Print a 10-page report',
              'Send an email',
              'Draw a flowchart',
            ],
            optionsMy: [
              'အပင်အိုးတန်း ၈ လုံးကို ရေလောင်းရန်',
              'စာမျက်နှာ ၁၀ မျက်နှာပါ အစီရင်ခံစာကို ပရင့်ထုတ်ရန်',
              'Email ပို့ရန်',
              'Flowchart ရေးဆွဲရန်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did the robot's sequence do first?",
            questionMy: 'Robot ၏ sequence သည် ပထမဦးစွာ ဘာလုပ်ခဲ့သနည်း။',
            optionsEn: [
              'Move forward, then stop above a pot',
              'Pour water immediately',
              'Turn off completely',
              'Skip every pot',
            ],
            optionsMy: [
              'ရှေ့သို့ရွှေ့ပြီး အိုးတစ်လုံးအပေါ်တွင် ရပ်ခြင်း',
              'ချက်ချင်းရေလောင်းခြင်း',
              'လုံးဝပိတ်ခြင်း',
              'အိုးတိုင်းကို ကျော်ခြင်း',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What condition did the robot's selection check?",
            questionMy: 'Robot ၏ selection သည် ဘာ condition ကို စစ်ဆေးခဲ့သနည်း။',
            optionsEn: [
              'Whether the soil looks dry',
              'Whether the robot has power',
              'Whether the sun is out',
              'Whether it is a school day',
            ],
            optionsMy: [
              'မြေ ခြောက်နေသလား',
              'Robot တွင် ပါဝါရှိသလား',
              'နေထွက်နေသလား',
              'ကျောင်းရက်ဖြစ်သလား',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'How many times did the loop repeat?',
            questionMy: 'Loop သည် မည်မျှ ထပ်ခါလုပ်ခဲ့သနည်း။',
            optionsEn: ['8 times', '1 time', '100 times', 'It never repeated'],
            optionsMy: ['၈ ကြိမ်', '၁ ကြိမ်', '၁၀၀ ကြိမ်', 'တစ်ခါမျှ ထပ်ခါမလုပ်ခဲ့ပါ'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Which three algorithm building blocks did Aye Aye's robot use together?",
            questionMy: 'အေးအေး၏ robot သည် algorithm အခြေခံအစိတ်အပိုင်း မည်သည့်သုံးမျိုးကို အတူသုံးခဲ့သနည်း။',
            optionsEn: [
              'Sequence, selection, and loop',
              'Only hardware and software',
              'Only input and output',
              'Only a monitor and a keyboard',
            ],
            optionsMy: [
              'Sequence, selection, နှင့် loop',
              'Hardware နှင့် software သာ',
              'Input နှင့် output သာ',
              'မော်နီတာနှင့် ကီးဘုတ်သာ',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w12-d5',
      dayNumber: 5,
      titleEn: 'Week 12 Recap Quiz',
      titleMy: 'ဒွါဒသမပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a loop?',
          questionMy: 'Loop ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A set of steps that repeats multiple times',
            'A step that happens only once',
            'A type of hardware',
            'A file extension',
          ],
          optionsMy: [
            'အကြိမ်ကြိမ် ထပ်ခါလုပ်သော အဆင့်များစု',
            'တစ်ကြိမ်တည်း ဖြစ်ပျက်သော အဆင့်',
            'Hardware အမျိုးအစားတစ်ခု',
            'File extension',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Why are loops useful?',
          questionMy: 'Loop များသည် အဘယ့်ကြောင့် အသုံးဝင်သနည်း။',
          optionsEn: [
            'They let you repeat steps without writing them out again and again',
            'They delete unnecessary steps forever',
            'They stop an algorithm from running',
            'They turn software into hardware',
          ],
          optionsMy: [
            'အဆင့်များကို ထပ်ခါထပ်ခါ ပြန်မရေးဘဲ ထပ်ခါလုပ်စေနိုင်သည်',
            'မလိုအပ်သောအဆင့်များကို ထာဝရဖျက်ပစ်သည်',
            'Algorithm ကို အလုပ်မလုပ်အောင် ရပ်စေသည်',
            'Software ကို hardware အဖြစ် ပြောင်းပေးသည်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What usually stops a loop from repeating forever?',
          questionMy: 'Loop တစ်ခုကို အစဉ်ထာဝရမထပ်ခါလုပ်အောင် များသောအားဖြင့် ဘာက ရပ်စေသနည်း။',
          optionsEn: ['A condition', 'A colour', 'A price', 'A file name'],
          optionsMy: ['Condition တစ်ခု', 'အရောင်', 'စျေးနှုန်း', 'ဖိုင်အမည်'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these needs a loop, rather than just happening once?',
          questionMy: 'အောက်ပါတို့အနက် တစ်ကြိမ်တည်းမဟုတ်ဘဲ loop လိုအပ်သည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Watering every plant in a row of 20',
            'Turning on the computer',
            'Opening your school bag',
            'Locking the front door at night',
          ],
          optionsMy: [
            'အပင် ၂၀ တန်းစီရှိ အပင်တိုင်းကို ရေလောင်းခြင်း',
            'ကွန်ပျူတာကိုဖွင့်ခြင်း',
            'ကျောင်းအိတ်ဖွင့်ခြင်း',
            'ညနေ အိမ်ရှေ့တံခါးကို သော့ခတ်ခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'A well-designed algorithm can combine sequence, selection, and loop. What does "sequence" mean again?',
          questionMy: 'ကောင်းစွာဒီဇိုင်းထုတ်ထားသော algorithm သည် sequence, selection နှင့် loop ကို ပေါင်းစပ်နိုင်သည်။ "Sequence" ဆိုသည်မှာ အဘယ်သို့ဆိုလိုပါသနည်း။',
          optionsEn: [
            'Instructions carried out one after another, in order',
            'A decision that needs a yes or no answer',
            'Steps that repeat multiple times',
            'A type of computer hardware',
          ],
          optionsMy: [
            'အစီအစဉ်အလိုက် တစ်ခုပြီးတစ်ခု ဆောင်ရွက်သော ညွှန်ကြားချက်များ',
            'ဟုတ် သို့မဟုတ် မဟုတ် ဖြေရမည့် ဆုံးဖြတ်ချက်',
            'အကြိမ်ကြိမ်ထပ်ခါလုပ်သော အဆင့်များ',
            'ကွန်ပျူတာ hardware အမျိုးအစားတစ်ခု',
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
  ], // Term 1 complete (Weeks 1-4)
);

/// Secondary 1 Computing -- Term 2. Spirals back to Term 1's storage and
/// hardware/software concepts in a new context (networks, then data
/// representation) rather than dropping them: Week 5 introduces networks
/// (LAN/WAN, wired/wireless); Week 6 narrows to the internet-specific
/// service most students already use (the Web); Week 7 revisits that same
/// internet/network territory through a safety lens; Week 8 closes the
/// term by revisiting Term 1 Week 2's storage/hardware content at a
/// deeper level -- how storage is actually made of bits and bytes.
const CourseTermDef _secondary1ComputingTerm2 = CourseTermDef(
  id: 'course-secondary1-computing-t2',
  termNumber: 2,
  titleEn: 'Networks, the Internet & Data',
  titleMy: 'ကွန်ရက်၊ အင်တာနက်နှင့် ဒေတာ',
  certificateTitleEn: 'Networks, the Internet & Data',
  certificateTitleMy: 'ကွန်ရက်၊ အင်တာနက်နှင့် ဒေတာ',
  weeks: [
    _secondary1ComputingWeek5,
    _secondary1ComputingWeek6,
    _secondary1ComputingWeek7,
    _secondary1ComputingWeek8,
  ], // Term 2 complete (Weeks 5-8)
);

/// Secondary 1 Computing -- Term 3. Moves from "how computers work" and
/// "how computers connect" (Terms 1-2) to "how to instruct a computer":
/// Week 9 introduces algorithms as ordered step-by-step instructions;
/// Week 10 represents that same idea visually as a flowchart; Week 11
/// adds selection (decisions) on top of plain sequence; Week 12 closes
/// the term -- and the full 3-term vertical slice -- by adding loops and
/// explicitly tying sequence + selection + loop together in one example.
const CourseTermDef _secondary1ComputingTerm3 = CourseTermDef(
  id: 'course-secondary1-computing-t3',
  termNumber: 3,
  titleEn: 'Algorithms & Programming Basics',
  titleMy: 'Algorithm နှင့် Programming အခြေခံများ',
  certificateTitleEn: 'Algorithms & Programming Basics',
  certificateTitleMy: 'Algorithm နှင့် Programming အခြေခံ',
  weeks: [
    _secondary1ComputingWeek9,
    _secondary1ComputingWeek10,
    _secondary1ComputingWeek11,
    _secondary1ComputingWeek12,
  ], // Term 3 complete (Weeks 9-12) -- all 3 terms now represented
);

/// Secondary 1 Computing's full-year pathway. All 3 terms (Weeks 1-12)
/// are now represented -- [totalWeeks] stays 36 (the full roadmap's true
/// size) even though each term's [weeks] list is only a 4-week vertical
/// slice so far (a real term is closer to ~12 weeks), so UI code can show
/// "Week 1 of 36" honestly rather than "Week 1 of 12".
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
  terms: [
    _secondary1ComputingTerm1,
    _secondary1ComputingTerm2,
    _secondary1ComputingTerm3,
  ],
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
