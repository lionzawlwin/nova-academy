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
  final int
  termNumber; // 1-9 across the full 36-week pathway (each term is a short thematic/certificate milestone, not a literal 12-week school term)
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
          matchEn: 'A network covering a very large area, like a whole country',
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
          questionMy: 'ကမ္ဘာလုံးဆိုင်ရာ ဝက်ဘ်ကွန်ရက် (WWW) ဆိုသည်မှာ အဘယ်နည်း။',
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
          optionsMy: [
            'Web browser',
            'Word processor',
            'Antivirus',
            'Printer driver',
          ],
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
            labelMy:
                'ကြောက်စရာစာတစ်စောင်အကြောင်း ယုံကြည်ရသူကြီးကို ပြောပြခြင်း',
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
            optionsMy: [
              'သူမ၏မိခင်',
              'စိမ်းသူတစ်ဦး',
              'မည်သူ့ကိုမျှ',
              'စာပို့သူ',
            ],
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
            optionsMy: [
              'သင်၏စကားဝှက်',
              'သင်၏နာမည်',
              'သင်၏ဂုဏ်ပြုစကား',
              'သင့်အပြုံး',
            ],
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
          questionMy:
              'binary ဂဏန်းတစ်လုံးတည်း (0 သို့မဟုတ် 1) ကို ဘာဟုခေါ်သနည်း။',
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
            questionEn: "Why can Kyaw Kyaw's phone storage eventually fill up?",
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
          questionMy:
              'Algorithm တစ်ခုအတွင်းရှိ အဆင့်တစ်ခုတည်းကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['An instruction', 'A router', 'A byte', 'A folder'],
          optionsMy: ['ညွှန်ကြားချက်', 'Router', 'Byte', 'Folder'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Is an algorithm the same thing as a computer program?',
          questionMy: 'Algorithm သည် ကွန်ပျူတာပရိုဂရမ်နှင့် တူညီပါသလား။',
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
          matchMy:
              'လုပ်ငန်းတစ်ခုအား ပြီးမြောက်စေရန် အဆင့်ဆင့်ညွှန်ကြားချက်များစု',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w9-algo-sequence',
          termEn: 'Sequence',
          termMy: 'Sequence',
          matchEn: 'Instructions carried out one after another, in order',
          matchMy:
              'အစီအစဉ်အလိုက် တစ်ခုပြီးတစ်ခု ဆောင်ရွက်သော ညွှန်ကြားချက်များ',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w9-algo-instruction',
          termEn: 'Instruction',
          termMy: 'Instruction',
          matchEn: 'A single step telling the computer what to do',
          matchMy:
              'ကွန်ပျူတာအား မည်သို့ဆောင်ရွက်ရမည်ကို ညွှန်ကြားသော အဆင့်တစ်ခု',
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
            questionEn:
                'What happened to the cookie dough because of the mistake?',
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
          optionsMy: [
            'ချက်ပြုတ်နည်း',
            'အလွတ်စာမျက်နှာ',
            'ပိတ်ထားသောဘူး',
            'တိတ်ဆိတ်သောအခန်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Why does the order of steps matter in an algorithm?',
          questionMy:
              'Algorithm တစ်ခုတွင် အဆင့်များ၏ အစီအစဉ်သည် အဘယ့်ကြောင့် အရေးကြီးသနည်း။',
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
          questionMy:
              'Algorithm တစ်ခုအတွင်းရှိ အဆင့်တစ်ခုတည်းကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['An instruction', 'A router', 'A byte', 'A folder'],
          optionsMy: ['ညွှန်ကြားချက်', 'Router', 'Byte', 'Folder'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What is the difference between an algorithm and a program?',
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
          questionEn:
              'Which shape usually marks the start or end of a flowchart?',
          questionMy:
              'Flowchart တစ်ခု၏ အစ သို့မဟုတ် အဆုံးကို ပြသလေ့ရှိသော ပုံသဏ္ဍာန်မှာ အဘယ်နည်း။',
          optionsEn: ['An oval', 'A triangle', 'A star', 'A cube'],
          optionsMy: ['ဘဲဥပုံ (oval)', 'တြိဂံ', 'ကြယ်ပုံ', 'ကုဗပုံ'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which shape usually represents a process or action?',
          questionMy:
              'လုပ်ဆောင်ချက် သို့မဟုတ် process ကို ပြသလေ့ရှိသော ပုံသဏ္ဍာန်မှာ အဘယ်နည်း။',
          optionsEn: ['A rectangle', 'An oval', 'A circle', 'A star'],
          optionsMy: [
            'ထောင့်မှန်စတုဂံ (rectangle)',
            'ဘဲဥပုံ',
            'စက်ဝိုင်း',
            'ကြယ်ပုံ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which shape usually represents input or output?',
          questionMy:
              'Input သို့မဟုတ် output ကို ပြသလေ့ရှိသော ပုံသဏ္ဍာန်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A parallelogram',
            'A rectangle',
            'An oval',
            'A triangle',
          ],
          optionsMy: [
            'ပါရာလယ်လိုဂရမ် (parallelogram)',
            'ထောင့်မှန်စတုဂံ',
            'ဘဲဥပုံ',
            'တြိဂံ',
          ],
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
            optionsEn: [
              'An oval',
              'A rectangle',
              'A diamond',
              'A parallelogram',
            ],
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
            questionMy:
                '"လက်ဖက်ရည် အသင့်ဖြစ်ပါပြီ!" ဟူသောစာသားကို ဘယ်ပုံသဏ္ဍာန်က ပြသခဲ့သနည်း။',
            optionsEn: [
              'A parallelogram',
              'An oval',
              'A diamond',
              'A rectangle',
            ],
            optionsMy: ['Parallelogram', 'Oval', 'Diamond', 'Rectangle'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did Aung Aung realise a flowchart really is?',
            questionMy:
                'Flowchart တစ်ခုသည် အမှန်တကယ် ဘာဖြစ်ကြောင်း အောင်အောင် နားလည်လိုက်သနည်း။',
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
            optionsEn: [
              'An oval',
              'A rectangle',
              'A parallelogram',
              'A diamond',
            ],
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
          questionMy:
              'ဘယ်ပုံသဏ္ဍာန်က process သို့မဟုတ် လုပ်ဆောင်ချက်ကို ပြသနည်း။',
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
          questionMy:
              'ဆုံးဖြတ်ချက်ကို ပြသသော flowchart ပုံသဏ္ဍာန်မှာ အဘယ်နည်း။',
          optionsEn: ['A diamond', 'An oval', 'A rectangle', 'A parallelogram'],
          optionsMy: ['Diamond', 'Oval', 'Rectangle', 'Parallelogram'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              '"IF it is raining, THEN take an umbrella" is an example of...',
          questionMy: '"မိုးရွာလျှင် ထီးယူပါ" ဆိုသည်မှာ ဘာ၏ ဥပမာဖြစ်သနည်း။',
          optionsEn: [
            'Selection',
            'A single output with no condition',
            'A type of hardware',
            'A file extension',
          ],
          optionsMy: [
            'Selection',
            'အခြေအနေမပါသော output တစ်ခုတည်း',
            'Hardware အမျိုးအစားတစ်ခု',
            'File extension',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'A decision in an algorithm is usually answered with...',
          questionMy:
              'Algorithm တစ်ခုရှိ ဆုံးဖြတ်ချက်ကို များသောအားဖြင့် ဘာဖြင့် ဖြေလေ့ရှိသနည်း။',
          optionsEn: [
            'Yes or No (true or false)',
            'A colour',
            'A file name',
            'A price',
          ],
          optionsMy: [
            'ဟုတ် သို့မဟုတ် မဟုတ် (true or false)',
            'အရောင်',
            'ဖိုင်အမည်',
            'စျေးနှုန်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Why is selection useful in algorithms?',
          questionMy:
              'Selection သည် algorithm များတွင် အဘယ့်ကြောင့် အသုံးဝင်သနည်း။',
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
          matchMy:
              'ဆက်လက်ဖြစ်ပျက်မည့်အရာကို ထိန်းချုပ်ပေးသော ဟုတ်/မဟုတ်မေးခွန်း',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w11-sel-if',
          termEn: 'IF',
          termMy: 'IF',
          matchEn: 'The word used to start a decision in an algorithm',
          matchMy:
              'Algorithm တစ်ခုတွင် ဆုံးဖြတ်ချက်ကို စတင်ရန်သုံးသော စကားလုံး',
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
          matchEn:
              'One of the possible paths after a decision (yes path or no path)',
          matchMy:
              'ဆုံးဖြတ်ချက်ပြီးနောက် ဖြစ်နိုင်သောလမ်းကြောင်းတစ်ခု (ဟုတ်လမ်း သို့မဟုတ် မဟုတ်လမ်း)',
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
        bucketsEn: [
          'Decision (Yes/No Question)',
          'Instruction (Just an Action)',
        ],
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
            questionEn:
                'What stays exactly the same sequence every day, regardless of the decision?',
            questionMy:
                'ဆုံးဖြတ်ချက်မည်သို့ပင်ဖြစ်စေ၊ နေ့တိုင်း တူညီသောအစီအစဉ်ဖြင့် ရှိနေဆဲဖြစ်သည့်အရာမှာ အဘယ်နည်း။',
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
          questionMy:
              'Flowchart တွင် ဆုံးဖြတ်ချက်ကို ပြသောပုံသဏ္ဍာန်မှာ အဘယ်နည်း။',
          optionsEn: ['A diamond', 'An oval', 'A rectangle', 'A parallelogram'],
          optionsMy: ['Diamond', 'Oval', 'Rectangle', 'Parallelogram'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'A condition is usually answered with...',
          questionMy: 'Condition ကို များသောအားဖြင့် ဘာဖြင့်ဖြေလေ့ရှိသနည်း။',
          optionsEn: ['Yes or No', 'A colour', 'A price', 'A file name'],
          optionsMy: [
            'ဟုတ် သို့မဟုတ် မဟုတ်',
            'အရောင်',
            'စျေးနှုန်း',
            'ဖိုင်အမည်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is a decision, not an instruction?',
          questionMy:
              'အောက်ပါတို့အနက် ညွှန်ကြားချက်မဟုတ်ဘဲ ဆုံးဖြတ်ချက်ဖြစ်သည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Is it raining?',
            'Take an umbrella',
            'Print the result',
            'Open the door',
          ],
          optionsMy: [
            'မိုးရွာနေပါသလား။',
            'ထီးယူပါ',
            'ရလဒ်ကို ပရင့်ထုတ်ပါ',
            'တံခါးဖွင့်ပါ',
          ],
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
          questionMy:
              'Programmer များသည် loop များကို အဘယ့်ကြောင့် သုံးကြသနည်း။',
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
          questionMy:
              'Loop တစ်ခုကို ထပ်ခါလုပ်ခြင်းရပ်ရန် များသောအားဖြင့် ဘာက ပြောပြသနည်း။',
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
          questionEn:
              'Which of these best describes an algorithm using sequence, selection, AND loop together?',
          questionMy:
              'Sequence, selection နှင့် loop သုံးမျိုးလုံးကို အတူသုံးထားသော algorithm ကို အကောင်းဆုံးဖော်ပြထားသည်မှာ အဘယ်နည်း။',
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
          matchMy:
              'အစီအစဉ်အလိုက် တစ်ခုပြီးတစ်ခု ဆောင်ရွက်သော ညွှန်ကြားချက်များ',
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
            labelMy:
                'စာမျက်နှာ ၁၀ မျက်နှာပါ အစီရင်ခံစာ၏ စာမျက်နှာတိုင်းကို ပရင့်ထုတ်ခြင်း',
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
            questionMy:
                'Robot ၏ selection သည် ဘာ condition ကို စစ်ဆေးခဲ့သနည်း။',
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
            optionsMy: [
              '၈ ကြိမ်',
              '၁ ကြိမ်',
              '၁၀၀ ကြိမ်',
              'တစ်ခါမျှ ထပ်ခါမလုပ်ခဲ့ပါ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which three algorithm building blocks did Aye Aye's robot use together?",
            questionMy:
                'အေးအေး၏ robot သည် algorithm အခြေခံအစိတ်အပိုင်း မည်သည့်သုံးမျိုးကို အတူသုံးခဲ့သနည်း။',
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
          questionMy:
              'Loop တစ်ခုကို အစဉ်ထာဝရမထပ်ခါလုပ်အောင် များသောအားဖြင့် ဘာက ရပ်စေသနည်း။',
          optionsEn: ['A condition', 'A colour', 'A price', 'A file name'],
          optionsMy: ['Condition တစ်ခု', 'အရောင်', 'စျေးနှုန်း', 'ဖိုင်အမည်'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which of these needs a loop, rather than just happening once?',
          questionMy:
              'အောက်ပါတို့အနက် တစ်ကြိမ်တည်းမဟုတ်ဘဲ loop လိုအပ်သည်မှာ အဘယ်နည်း။',
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
          questionEn:
              'A well-designed algorithm can combine sequence, selection, and loop. What does "sequence" mean again?',
          questionMy:
              'ကောင်းစွာဒီဇိုင်းထုတ်ထားသော algorithm သည် sequence, selection နှင့် loop ကို ပေါင်းစပ်နိုင်သည်။ "Sequence" ဆိုသည်မှာ အဘယ်သို့ဆိုလိုပါသနည်း။',
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

// =====================================================================
// Secondary 1 Computing -- Term 4, Week 13: "Variables: Storing
// Information in Programs"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek13 = CourseWeekDef(
  id: 'course-secondary1-computing-w13',
  weekNumber: 13,
  titleEn: 'Variables: Storing Information in Programs',
  titleMy: 'Variable - ပရိုဂရမ်များတွင် အချက်အလက်သိမ်းဆည်းခြင်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w13-d1',
      dayNumber: 1,
      titleEn: 'What is a Variable?',
      titleMy: 'Variable ဆိုသည်မှာ',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a variable in a program?',
          questionMy: 'ပရိုဂရမ်တစ်ခုရှိ variable ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A named place to store a value that can change',
            'A physical part of the computer',
            'A type of flowchart symbol',
            'A fixed number that never changes',
          ],
          optionsMy: [
            'ပြောင်းလဲနိုင်သော တန်ဖိုးတစ်ခုကို သိမ်းဆည်းရန် အမည်ပေးထားသောနေရာ',
            'ကွန်ပျူတာ၏ ရုပ်ပိုင်းအစိတ်အပိုင်း',
            'Flowchart သင်္ကေတအမျိုးအစားတစ်ခု',
            'ဘယ်တော့မှ မပြောင်းလဲသော ဂဏန်းသေတစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is a valid variable name?',
          questionMy: 'အောက်ပါတို့အနက် မှန်ကန်သော variable အမည်မှာ အဘယ်နည်း။',
          optionsEn: ['studentScore', 'student score', '5score', 'score!'],
          optionsMy: ['studentScore', 'student score', '5score', 'score!'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why do we give variables clear names, like "score" instead of "x"?',
          questionMy:
              'Variable များကို "x" မဟုတ်ဘဲ "score" ကဲ့သို့ ရှင်းလင်းသောအမည်များ အဘယ့်ကြောင့် ပေးကြသနည်း။',
          optionsEn: [
            'So the program is easier for people to read and understand',
            'So the computer runs faster',
            'So the variable becomes a constant',
            'So it turns into a loop',
          ],
          optionsMy: [
            'ပရိုဂရမ်ကို လူများ ဖတ်ရှုနားလည်ရလွယ်ကူစေရန်',
            'ကွန်ပျူတာ ပိုမြန်စေရန်',
            'Variable ကို constant အဖြစ် ပြောင်းစေရန်',
            'Loop အဖြစ် ပြောင်းသွားစေရန်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What happens when a variable\'s value is "assigned"?',
          questionMy:
              'Variable တစ်ခု၏ တန်ဖိုးကို "assign" လုပ်လိုက်သောအခါ ဘာဖြစ်သနည်း။',
          optionsEn: [
            'The variable is given a new value to store',
            'The variable is deleted permanently',
            'The variable turns into a flowchart',
            'The computer is turned off',
          ],
          optionsMy: [
            'Variable သည် သိမ်းဆည်းရန် တန်ဖိုးအသစ်တစ်ခု ရရှိသည်',
            'Variable သည် အမြဲတမ်း ဖျက်ပစ်ခံရသည်',
            'Variable သည် flowchart အဖြစ် ပြောင်းသွားသည်',
            'ကွန်ပျူတာကို ပိတ်လိုက်သည်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'In "score = 0", what is 0?',
          questionMy: '"score = 0" တွင် 0 သည် အဘယ်အရာဖြစ်သနည်း။',
          optionsEn: [
            'The value assigned to the variable score',
            'The name of the variable',
            'A flowchart symbol',
            'A type of loop',
          ],
          optionsMy: [
            'Score ဟူသော variable ကို assign လုပ်ထားသော တန်ဖိုး',
            'Variable ၏ အမည်',
            'Flowchart သင်္ကေတတစ်ခု',
            'Loop အမျိုးအစားတစ်ခု',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w13-d2',
      dayNumber: 2,
      titleEn: 'Variable Vocabulary',
      titleMy: 'Variable ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w13-var-variable',
          termEn: 'Variable',
          termMy: 'Variable',
          matchEn:
              'A named place in a program that stores a value which can change',
          matchMy:
              'ပြောင်းလဲနိုင်သော တန်ဖိုးတစ်ခုကို သိမ်းဆည်းသော ပရိုဂရမ်အတွင်းရှိ အမည်ပေးထားသောနေရာ',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w13-var-value',
          termEn: 'Value',
          termMy: 'Value',
          matchEn: 'The actual piece of information stored inside a variable',
          matchMy: 'Variable တစ်ခုအတွင်း သိမ်းဆည်းထားသော အချက်အလက်အမှန်',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w13-var-assign',
          termEn: 'Assign',
          termMy: 'Assign',
          matchEn: 'To give a variable a value to store',
          matchMy: 'Variable တစ်ခုအား သိမ်းဆည်းရန် တန်ဖိုးတစ်ခု ပေးခြင်း',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w13-var-variablename',
          termEn: 'Variable Name',
          termMy: 'Variable Name',
          matchEn:
              'The label used to refer to a variable, e.g. score or playerName',
          matchMy:
              'Variable တစ်ခုကို ရည်ညွှန်းရန်သုံးသော အမည်၊ ဥပမာ score သို့မဟုတ် playerName',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w13-var-datatype',
          termEn: 'Data Type',
          termMy: 'Data Type',
          matchEn:
              'The kind of value a variable stores, such as a number or text',
          matchMy:
              'Variable တစ်ခုသိမ်းဆည်းသော တန်ဖိုးအမျိုးအစား၊ ဂဏန်း သို့မဟုတ် စာသားကဲ့သို့',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w13-d3',
      dayNumber: 3,
      titleEn: 'Valid or Invalid Variable Name?',
      titleMy: 'မှန်ကန်သော variable အမည်လား၊ မဟုတ်လား',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Valid Variable Name', 'Invalid Variable Name'],
        bucketsMy: [
          'Valid Variable Name (မှန်ကန်သောအမည်)',
          'Invalid Variable Name (မမှန်ကန်သောအမည်)',
        ],
        items: [
          SortingItem(
            id: 'w13-sort-studentscore',
            labelEn: 'studentScore',
            labelMy: 'studentScore',
            correctBucketEn: 'Valid Variable Name',
            correctBucketMy: 'Valid Variable Name (မှန်ကန်သောအမည်)',
          ),
          SortingItem(
            id: 'w13-sort-playername',
            labelEn: 'playerName',
            labelMy: 'playerName',
            correctBucketEn: 'Valid Variable Name',
            correctBucketMy: 'Valid Variable Name (မှန်ကန်သောအမည်)',
          ),
          SortingItem(
            id: 'w13-sort-totalcount',
            labelEn: 'totalCount',
            labelMy: 'totalCount',
            correctBucketEn: 'Valid Variable Name',
            correctBucketMy: 'Valid Variable Name (မှန်ကန်သောအမည်)',
          ),
          SortingItem(
            id: 'w13-sort-studentspace',
            labelEn: 'student score',
            labelMy: 'student score',
            correctBucketEn: 'Invalid Variable Name',
            correctBucketMy: 'Invalid Variable Name (မမှန်ကန်သောအမည်)',
          ),
          SortingItem(
            id: 'w13-sort-5score',
            labelEn: '5score',
            labelMy: '5score',
            correctBucketEn: 'Invalid Variable Name',
            correctBucketMy: 'Invalid Variable Name (မမှန်ကန်သောအမည်)',
          ),
          SortingItem(
            id: 'w13-sort-totalbang',
            labelEn: 'total!',
            labelMy: 'total!',
            correctBucketEn: 'Invalid Variable Name',
            correctBucketMy: 'Invalid Variable Name (မမှန်ကန်သောအမည်)',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w13-d4',
      dayNumber: 4,
      titleEn: "Thiha's Game Score",
      titleMy: 'သီဟ၏ ဂိမ်းရမှတ်',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiha's Game Score",
        titleMy: 'သီဟ၏ ဂိမ်းရမှတ်',
        passageEn:
            "While making a simple quiz game, Thiha created a variable called score and set it to 0 at the start. Every time a player answered a question correctly, his program added 1 to the score variable, so its value changed from 0, to 1, to 2, and so on. At the end of the quiz, the program displayed the value stored inside score so the player could see how many points they had earned. Thiha realised that without a variable, his program would have no way to remember the score as the game continued.",
        passageMy:
            'ရိုးရှင်းသော quiz ဂိမ်းတစ်ခု ပြုလုပ်နေစဉ် သီဟသည် score ဟုခေါ်သော variable တစ်ခုကို ဖန်တီးပြီး အစတွင် 0 ဟု သတ်မှတ်ခဲ့သည်။ Player တစ်ဦးက မေးခွန်းတစ်ခုကို မှန်ကန်စွာဖြေတိုင်း သူ၏ ပရိုဂရမ်သည် score variable ထဲသို့ 1 ပေါင်းထည့်ခဲ့သဖြင့် ၎င်း၏တန်ဖိုးသည် 0 မှ 1၊ 2 သို့ တဖြည်းဖြည်း ပြောင်းလဲသွားသည်။ Quiz အဆုံးတွင် ပရိုဂရမ်သည် score အတွင်းသိမ်းဆည်းထားသော တန်ဖိုးကို ပြသပေးသဖြင့် player က မိမိရရှိသော အမှတ်အရေအတွက်ကို မြင်နိုင်ခဲ့သည်။ Variable တစ်ခုမရှိလျှင် ဂိမ်းဆက်လက်လည်ပတ်နေစဉ် ရမှတ်ကို မှတ်ထားနိုင်စွမ်း သူ၏ ပရိုဂရမ်တွင် လုံးဝမရှိကြောင်း သီဟ နားလည်လိုက်သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What did Thiha call the variable he created?',
            questionMy: 'သီဟသည် ဖန်တီးခဲ့သော variable ကို ဘာဟုခေါ်ခဲ့သနည်း။',
            optionsEn: ['score', 'player', 'quiz', 'total'],
            optionsMy: ['score', 'player', 'quiz', 'total'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What value did the score variable start with?',
            questionMy: 'Score variable သည် ဘယ်တန်ဖိုးဖြင့် စတင်ခဲ့သနည်း။',
            optionsEn: ['0', '1', '10', '100'],
            optionsMy: ['0', '1', '10', '100'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What happened to the score variable's value when a player answered correctly?",
            questionMy:
                'Player တစ်ဦးက မှန်ကန်စွာဖြေသောအခါ score variable ၏တန်ဖိုးသည် မည်သို့ဖြစ်သွားသနည်း။',
            optionsEn: [
              '1 was added to it',
              'It was deleted',
              'It turned into text',
              'It stayed at 0 forever',
            ],
            optionsMy: [
              '၎င်းထဲသို့ 1 ပေါင်းထည့်ခဲ့သည်',
              'ဖျက်ပစ်ခံရသည်',
              'စာသားအဖြစ် ပြောင်းသွားသည်',
              '0 တွင်ပင် အမြဲတည်နေသည်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did the program display at the end of the quiz?',
            questionMy: 'Quiz အဆုံးတွင် ပရိုဂရမ်သည် ဘာကိုပြသခဲ့သနည်း။',
            optionsEn: [
              'The value stored inside score',
              'The variable\'s name only',
              'A flowchart',
              'A blank screen',
            ],
            optionsMy: [
              'Score အတွင်းသိမ်းဆည်းထားသော တန်ဖိုး',
              'Variable ၏အမည်သာ',
              'Flowchart တစ်ခု',
              'မျက်နှာပြင်အလွတ်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'Why did Thiha need a variable at all?',
            questionMy: 'သီဟသည် variable တစ်ခုကို အဘယ့်ကြောင့် လိုအပ်ခဲ့သနည်း။',
            optionsEn: [
              'To remember the score as the game continued',
              'To make the game slower',
              'To delete the questions',
              'To turn the game into a flowchart',
            ],
            optionsMy: [
              'ဂိမ်းဆက်လက်လည်ပတ်နေစဉ် ရမှတ်ကို မှတ်ထားရန်',
              'ဂိမ်းကို ပိုနှေးစေရန်',
              'မေးခွန်းများကို ဖျက်ရန်',
              'ဂိမ်းကို flowchart အဖြစ် ပြောင်းရန်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w13-d5',
      dayNumber: 5,
      titleEn: 'Week 13 Recap Quiz',
      titleMy: 'တစ်ဆယ့်သုံးပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a variable?',
          questionMy: 'Variable ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A named place that stores a value which can change',
            'A physical computer part',
            'A flowchart symbol',
            'A number that never changes',
          ],
          optionsMy: [
            'ပြောင်းလဲနိုင်သော တန်ဖိုးကို သိမ်းဆည်းသော အမည်ပေးထားသောနေရာ',
            'ကွန်ပျူတာ၏ ရုပ်ပိုင်းအစိတ်အပိုင်း',
            'Flowchart သင်္ကေတတစ်ခု',
            'ဘယ်တော့မှ မပြောင်းလဲသောဂဏန်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is a valid variable name?',
          questionMy: 'အောက်ပါတို့အနက် မှန်ကန်သော variable အမည်မှာ အဘယ်နည်း။',
          optionsEn: ['totalScore', 'total score', '9total', 'total#'],
          optionsMy: ['totalScore', 'total score', '9total', 'total#'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does "assign" mean in programming?',
          questionMy: 'Programming တွင် "assign" ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Giving a variable a value to store',
            'Deleting a variable',
            'Turning a variable into a loop',
            'Turning off the computer',
          ],
          optionsMy: [
            'Variable တစ်ခုအား သိမ်းဆည်းရန် တန်ဖိုးပေးခြင်း',
            'Variable တစ်ခုကို ဖျက်ခြင်း',
            'Variable ကို loop အဖြစ် ပြောင်းခြင်း',
            'ကွန်ပျူတာကို ပိတ်ခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is stored inside a variable called "value"?',
          questionMy:
              '"Value" ဟုခေါ်သည်မှာ variable တစ်ခုအတွင်း ဘာသိမ်းဆည်းထားခြင်းဖြစ်သနည်း။',
          optionsEn: [
            'The actual piece of information it holds',
            'Its name only',
            'A flowchart',
            'A loop',
          ],
          optionsMy: [
            'ကိုင်ထားသော အချက်အလက်အမှန်',
            '၎င်း၏အမည်သာ',
            'Flowchart တစ်ခု',
            'Loop တစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why should variable names be clear, like "score" rather than "x"?',
          questionMy:
              'Variable အမည်များကို "x" မဟုတ်ဘဲ "score" ကဲ့သို့ ရှင်းလင်းစွာ အဘယ့်ကြောင့် ပေးသင့်သနည်း။',
          optionsEn: [
            'It makes the program easier for people to read and understand',
            'It makes the computer run faster',
            'It turns the variable into a constant',
            'It is required by the computer to run at all',
          ],
          optionsMy: [
            'ပရိုဂရမ်ကို လူများ ဖတ်ရှုနားလည်ရလွယ်ကူစေသည်',
            'ကွန်ပျူတာကို ပိုမြန်စေသည်',
            'Variable ကို constant အဖြစ် ပြောင်းစေသည်',
            'ကွန်ပျူတာ အလုပ်လုပ်ရန် လိုအပ်ချက်တစ်ခုဖြစ်သည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 4, Week 14: "Writing Pseudocode"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek14 = CourseWeekDef(
  id: 'course-secondary1-computing-w14',
  weekNumber: 14,
  titleEn: 'Writing Pseudocode',
  titleMy: 'Pseudocode ရေးသားခြင်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w14-d1',
      dayNumber: 1,
      titleEn: 'What is Pseudocode?',
      titleMy: 'Pseudocode ဆိုသည်မှာ',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is pseudocode?',
          questionMy: 'Pseudocode ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A way of writing an algorithm using simple, structured English instead of real code',
            'A programming language a computer can run directly',
            'A type of computer hardware',
            'A flowchart symbol',
          ],
          optionsMy: [
            'တကယ့်ကုဒ်အစား ရိုးရှင်းပြီး တည်ဆောက်ပုံရှိသော အင်္ဂလိပ်စာဖြင့် algorithm ရေးသားနည်း',
            'ကွန်ပျူတာ တိုက်ရိုက်လည်ပတ်နိုင်သော ပရိုဂရမ်းမင်းဘာသာစကား',
            'ကွန်ပျူတာ hardware အမျိုးအစားတစ်ခု',
            'Flowchart သင်္ကေတတစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which pseudocode keyword is used to get information from the user?',
          questionMy:
              'User ထံမှ အချက်အလက်ရယူရန်သုံးသော pseudocode keyword မှာ အဘယ်နည်း။',
          optionsEn: ['INPUT', 'OUTPUT', 'IF', 'WHILE'],
          optionsMy: ['INPUT', 'OUTPUT', 'IF', 'WHILE'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which pseudocode keyword is used to display information to the user?',
          questionMy:
              'User ထံ အချက်အလက်ပြသရန်သုံးသော pseudocode keyword မှာ အဘယ်နည်း။',
          optionsEn: ['OUTPUT', 'INPUT', 'SET', 'WHILE'],
          optionsMy: ['OUTPUT', 'INPUT', 'SET', 'WHILE'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which pseudocode keyword starts a decision (selection)?',
          questionMy:
              'ဆုံးဖြတ်ချက် (selection) စတင်ရန်သုံးသော pseudocode keyword မှာ အဘယ်နည်း။',
          optionsEn: ['IF', 'OUTPUT', 'INPUT', 'WHILE'],
          optionsMy: ['IF', 'OUTPUT', 'INPUT', 'WHILE'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why do programmers write pseudocode before writing real code?',
          questionMy:
              'Programmer များသည် တကယ့်ကုဒ်မရေးမီ pseudocode ကို အဘယ့်ကြောင့် ရေးကြသနည်း။',
          optionsEn: [
            "To plan the algorithm's logic clearly before worrying about exact programming syntax",
            'Because computers can run pseudocode directly',
            'Because pseudocode is faster than real code',
            'Because pseudocode replaces flowcharts completely',
          ],
          optionsMy: [
            'တိကျသော programming syntax ကို မစိုးရိမ်မီ algorithm ၏ logic ကို ရှင်းလင်းစွာ စီစဉ်ရန်',
            'ကွန်ပျူတာများသည် pseudocode ကို တိုက်ရိုက်လည်ပတ်နိုင်၍',
            'Pseudocode သည် တကယ့်ကုဒ်ထက် မြန်၍',
            'Pseudocode သည် flowchart ကို လုံးဝ အစားထိုးသည့်အတွက်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w14-d2',
      dayNumber: 2,
      titleEn: 'Pseudocode Keywords',
      titleMy: 'Pseudocode Keyword များ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w14-pc-input',
          termEn: 'INPUT',
          termMy: 'INPUT',
          matchEn: 'Gets a value from the user',
          matchMy: 'User ထံမှ တန်ဖိုးတစ်ခု ရယူသည်',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w14-pc-output',
          termEn: 'OUTPUT',
          termMy: 'OUTPUT',
          matchEn: 'Displays a value to the user',
          matchMy: 'User ထံ တန်ဖိုးတစ်ခုကို ပြသသည်',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w14-pc-ifthen',
          termEn: 'IF...THEN',
          termMy: 'IF...THEN',
          matchEn: 'Starts a decision based on a condition',
          matchMy: 'Condition တစ်ခုအပေါ်အခြေခံသော ဆုံးဖြတ်ချက်ကို စတင်သည်',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w14-pc-while',
          termEn: 'WHILE...ENDWHILE',
          termMy: 'WHILE...ENDWHILE',
          matchEn: 'Repeats steps while a condition is true',
          matchMy: 'Condition မှန်နေသရွေ့ အဆင့်များကို ထပ်ခါလုပ်သည်',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w14-pc-set',
          termEn: 'SET',
          termMy: 'SET',
          matchEn: 'Assigns a value to a variable',
          matchMy: 'Variable တစ်ခုအား တန်ဖိုးတစ်ခု assign လုပ်သည်',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w14-d3',
      dayNumber: 3,
      titleEn: 'Which Keyword?',
      titleMy: 'ဘယ် keyword လဲ',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Input/Output', 'Selection', 'Loop'],
        bucketsMy: [
          'Input/Output',
          'Selection (ဆုံးဖြတ်ချက်)',
          'Loop (ထပ်ခါလုပ်ခြင်း)',
        ],
        items: [
          SortingItem(
            id: 'w14-sort-input',
            labelEn: 'INPUT',
            labelMy: 'INPUT',
            correctBucketEn: 'Input/Output',
            correctBucketMy: 'Input/Output',
          ),
          SortingItem(
            id: 'w14-sort-output',
            labelEn: 'OUTPUT',
            labelMy: 'OUTPUT',
            correctBucketEn: 'Input/Output',
            correctBucketMy: 'Input/Output',
          ),
          SortingItem(
            id: 'w14-sort-if',
            labelEn: 'IF',
            labelMy: 'IF',
            correctBucketEn: 'Selection',
            correctBucketMy: 'Selection (ဆုံးဖြတ်ချက်)',
          ),
          SortingItem(
            id: 'w14-sort-ifelse',
            labelEn: 'IF...ELSE',
            labelMy: 'IF...ELSE',
            correctBucketEn: 'Selection',
            correctBucketMy: 'Selection (ဆုံးဖြတ်ချက်)',
          ),
          SortingItem(
            id: 'w14-sort-while',
            labelEn: 'WHILE',
            labelMy: 'WHILE',
            correctBucketEn: 'Loop',
            correctBucketMy: 'Loop (ထပ်ခါလုပ်ခြင်း)',
          ),
          SortingItem(
            id: 'w14-sort-repeat',
            labelEn: 'REPEAT',
            labelMy: 'REPEAT',
            correctBucketEn: 'Loop',
            correctBucketMy: 'Loop (ထပ်ခါလုပ်ခြင်း)',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w14-d4',
      dayNumber: 4,
      titleEn: "Nilar Writes Her First Pseudocode",
      titleMy: 'နီလာ၏ ပထမဆုံး Pseudocode',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nilar Writes Her First Pseudocode",
        titleMy: 'နီလာ၏ ပထမဆုံး Pseudocode',
        passageEn:
            "For homework, Nilar had to design an algorithm that asks for a user's name and then greets them. Instead of jumping straight into a programming language, her teacher asked her to write pseudocode first. Nilar wrote: INPUT name, then OUTPUT 'Hello, ' name. She realised this pseudocode described exactly what her program needed to do, in plain steps, without worrying yet about the exact punctuation a real programming language would need. Later, when she learned an actual programming language, converting her pseudocode into real code was much easier because the logic was already planned.",
        passageMy:
            'အိမ်စာအတွက် နီလာသည် user တစ်ဦး၏အမည်ကိုမေးပြီး နှုတ်ဆက်ပေးမည့် algorithm တစ်ခုကို ဒီဇိုင်းဆွဲရမည်ဖြစ်သည်။ Programming ဘာသာစကားထဲသို့ တိုက်ရိုက်ဝင်မည့်အစား သူမ၏ဆရာမက pseudocode ကို အရင်ရေးရန် တောင်းဆိုခဲ့သည်။ နီလာက ရေးခဲ့သည် - INPUT name, ပြီးမှ OUTPUT \'Hello, \' name။ ဤ pseudocode သည် သူမ၏ ပရိုဂရမ်လုပ်ရမည့်အရာကို ရိုးရှင်းသောအဆင့်များဖြင့် တိကျစွာ ဖော်ပြထားကြောင်း၊ တကယ့် programming ဘာသာစကားလိုအပ်သည့် တိကျသောဗျည်းသင်္ကေတများကို မစိုးရိမ်ရသေးကြောင်း သူမနားလည်လိုက်သည်။ နောက်ပိုင်းတွင် တကယ့် programming ဘာသာစကားတစ်ခုကို သင်ယူသောအခါ logic ကို စီစဉ်ပြီးသားဖြစ်နေသောကြောင့် သူမ၏ pseudocode ကို တကယ့်ကုဒ်အဖြစ် ပြောင်းရန် ပိုမိုလွယ်ကူခဲ့သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did Nilar's algorithm need to do?",
            questionMy: 'နီလာ၏ algorithm သည် ဘာလုပ်ရန်လိုအပ်ခဲ့သနည်း။',
            optionsEn: [
              "Ask for a user's name and greet them",
              'Delete the user\'s name',
              'Turn off the computer',
              'Draw a flowchart only',
            ],
            optionsMy: [
              'User ၏အမည်ကိုမေးပြီး နှုတ်ဆက်ပေးရန်',
              'User ၏အမည်ကို ဖျက်ရန်',
              'ကွန်ပျူတာကို ပိတ်ရန်',
              'Flowchart တစ်ခုတည်း ရေးဆွဲရန်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did Nilar write pseudocode instead of first?',
            questionMy: 'နီလာသည် ဘာအစား pseudocode ကို အရင်ရေးခဲ့သနည်း။',
            optionsEn: [
              'A real programming language',
              'A flowchart',
              'A quiz',
              'A drag-match activity',
            ],
            optionsMy: [
              'တကယ့် programming ဘာသာစကား',
              'Flowchart',
              'Quiz',
              'Drag-match activity',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Which keyword did Nilar use to get the user's name?",
            questionMy: 'နီလာသည် user ၏အမည်ရယူရန် ဘယ် keyword ကိုသုံးခဲ့သနည်း။',
            optionsEn: ['INPUT', 'OUTPUT', 'IF', 'WHILE'],
            optionsMy: ['INPUT', 'OUTPUT', 'IF', 'WHILE'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'Which keyword did Nilar use to greet the user?',
            questionMy:
                'နီလာသည် user ကိုနှုတ်ဆက်ရန် ဘယ် keyword ကိုသုံးခဲ့သနည်း။',
            optionsEn: ['OUTPUT', 'INPUT', 'IF', 'WHILE'],
            optionsMy: ['OUTPUT', 'INPUT', 'IF', 'WHILE'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'Why was converting the pseudocode into real code easier later?',
            questionMy:
                'Pseudocode ကို တကယ့်ကုဒ်အဖြစ် ပြောင်းရန် နောက်ပိုင်းတွင် အဘယ့်ကြောင့် ပိုလွယ်ကူခဲ့သနည်း။',
            optionsEn: [
              'The logic was already planned',
              'The computer did it automatically',
              'Nilar deleted the pseudocode first',
              'Real code does not need logic',
            ],
            optionsMy: [
              'Logic ကို စီစဉ်ပြီးသားဖြစ်နေသောကြောင့်',
              'ကွန်ပျူတာက အလိုအလျောက်လုပ်ပေးသောကြောင့်',
              'နီလာက pseudocode ကို အရင်ဖျက်လိုက်သောကြောင့်',
              'တကယ့်ကုဒ်သည် logic မလိုအပ်သောကြောင့်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w14-d5',
      dayNumber: 5,
      titleEn: 'Week 14 Recap Quiz',
      titleMy: 'တစ်ဆယ့်လေးပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is pseudocode?',
          questionMy: 'Pseudocode ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A structured, plain-English way of writing an algorithm before coding it',
            'A programming language computers run directly',
            'A type of hardware',
            'A flowchart symbol',
          ],
          optionsMy: [
            'ကုဒ်မရေးမီ algorithm ကို တည်ဆောက်ပုံရှိသော ရိုးရှင်းအင်္ဂလိပ်စာဖြင့်ရေးနည်း',
            'ကွန်ပျူတာ တိုက်ရိုက်လည်ပတ်နိုင်သော programming ဘာသာစကား',
            'Hardware အမျိုးအစားတစ်ခု',
            'Flowchart သင်္ကေတတစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which keyword gets a value from the user?',
          questionMy: 'User ထံမှ တန်ဖိုးရယူသော keyword မှာ အဘယ်နည်း။',
          optionsEn: ['INPUT', 'OUTPUT', 'IF', 'WHILE'],
          optionsMy: ['INPUT', 'OUTPUT', 'IF', 'WHILE'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which keyword displays a value to the user?',
          questionMy: 'User ထံ တန်ဖိုးပြသသော keyword မှာ အဘယ်နည်း။',
          optionsEn: ['OUTPUT', 'INPUT', 'SET', 'WHILE'],
          optionsMy: ['OUTPUT', 'INPUT', 'SET', 'WHILE'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which keyword starts a decision?',
          questionMy: 'ဆုံးဖြတ်ချက်တစ်ခုကို စတင်သော keyword မှာ အဘယ်နည်း။',
          optionsEn: ['IF', 'OUTPUT', 'INPUT', 'SET'],
          optionsMy: ['IF', 'OUTPUT', 'INPUT', 'SET'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Why is pseudocode written before real code?',
          questionMy: 'Pseudocode ကို တကယ့်ကုဒ်မရေးမီ အဘယ့်ကြောင့်ရေးသနည်း။',
          optionsEn: [
            "To plan the algorithm's logic before worrying about exact syntax",
            'Because it runs faster than real code',
            'Because computers can run it directly',
            'Because it replaces flowcharts entirely',
          ],
          optionsMy: [
            'တိကျသော syntax ကို မစိုးရိမ်မီ algorithm ၏ logic ကို စီစဉ်ရန်',
            'တကယ့်ကုဒ်ထက် ပိုမြန်၍',
            'ကွန်ပျူတာများက တိုက်ရိုက်လည်ပတ်နိုင်၍',
            'Flowchart များကို လုံးဝအစားထိုးသောကြောင့်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 4, Week 15: "Working with Numbers and
// Text in Programs"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek15 = CourseWeekDef(
  id: 'course-secondary1-computing-w15',
  weekNumber: 15,
  titleEn: 'Working with Numbers and Text in Programs',
  titleMy: 'ပရိုဂရမ်များတွင် ဂဏန်းနှင့် စာသားကို အသုံးပြုခြင်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w15-d1',
      dayNumber: 1,
      titleEn: 'Numbers vs. Text',
      titleMy: 'ဂဏန်းနှင့် စာသား',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which data type would a variable storing someone's age usually be?",
          questionMy:
              'တစ်စုံတစ်ဦး၏ အသက်ကို သိမ်းဆည်းသော variable သည် များသောအားဖြင့် ဘယ် data type ဖြစ်လေ့ရှိသနည်း။',
          optionsEn: ['A number', 'Text', 'A flowchart', 'A loop'],
          optionsMy: ['ဂဏန်း (Number)', 'စာသား (Text)', 'Flowchart', 'Loop'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which data type would a variable storing someone's name usually be?",
          questionMy:
              'တစ်စုံတစ်ဦး၏ အမည်ကို သိမ်းဆည်းသော variable သည် များသောအားဖြင့် ဘယ် data type ဖြစ်လေ့ရှိသနည်း။',
          optionsEn: ['Text', 'A number', 'A flowchart', 'A loop'],
          optionsMy: ['စာသား (Text)', 'ဂဏန်း (Number)', 'Flowchart', 'Loop'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does the + operator do when used with two numbers?',
          questionMy:
              'ဂဏန်းနှစ်လုံးနှင့်သုံးလျှင် + operator သည် ဘာလုပ်ဆောင်သနည်း။',
          optionsEn: [
            'Adds them together',
            'Joins them as text',
            'Deletes them',
            'Compares them',
          ],
          optionsMy: [
            'ပေါင်းလိုက်သည်',
            'စာသားအဖြစ် ဆက်စပ်ပေးသည်',
            'ဖျက်ပစ်သည်',
            'နှိုင်းယှဉ်သည်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is it called when two pieces of text are joined together, e.g. 'Hello' and 'World' into 'HelloWorld'?",
          questionMy:
              "'Hello' နှင့် 'World' ကို 'HelloWorld' အဖြစ် ဆက်စပ်ပေးသကဲ့သို့ စာသားနှစ်ခုကို ပေါင်းစည်းခြင်းကို ဘာဟုခေါ်သနည်း။",
          optionsEn: [
            'Joining (concatenation)',
            'Subtraction',
            'Selection',
            'Looping',
          ],
          optionsMy: [
            'ဆက်စပ်ခြင်း (concatenation)',
            'နှုတ်ခြင်း',
            'Selection',
            'Looping',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is an arithmetic operator?',
          questionMy: 'အောက်ပါတို့အနက် သင်္ချာ operator တစ်ခုမှာ အဘယ်နည်း။',
          optionsEn: ['*', 'IF', 'WHILE', 'OUTPUT'],
          optionsMy: ['*', 'IF', 'WHILE', 'OUTPUT'],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w15-d2',
      dayNumber: 2,
      titleEn: 'Numbers and Text Vocabulary',
      titleMy: 'ဂဏန်းနှင့်စာသား ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w15-nt-number',
          termEn: 'Number (data type)',
          termMy: 'Number (data type)',
          matchEn:
              'A data type used to store values you can do maths with, like 7 or 3.5',
          matchMy:
              '7 သို့မဟုတ် 3.5 ကဲ့သို့ သင်္ချာလုပ်ဆောင်နိုင်သော တန်ဖိုးများကို သိမ်းဆည်းသော data type',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w15-nt-text',
          termEn: 'Text (data type)',
          termMy: 'Text (data type)',
          matchEn: 'A data type used to store words or sentences, like a name',
          matchMy:
              'အမည်ကဲ့သို့ စကားလုံးများ သို့မဟုတ် စာကြောင်းများကို သိမ်းဆည်းသော data type',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w15-nt-addition',
          termEn: '+ (Addition)',
          termMy: '+ (Addition)',
          matchEn: 'An operator that adds two numbers together',
          matchMy: 'ဂဏန်းနှစ်လုံးကို ပေါင်းပေးသော operator',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w15-nt-subtraction',
          termEn: '- (Subtraction)',
          termMy: '- (Subtraction)',
          matchEn: 'An operator that takes one number away from another',
          matchMy: 'ဂဏန်းတစ်လုံးမှ တစ်လုံးကို နှုတ်ပေးသော operator',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w15-nt-joining',
          termEn: 'Joining (Concatenation)',
          termMy: 'Joining (Concatenation)',
          matchEn: 'Combining two pieces of text into one',
          matchMy: 'စာသားနှစ်ခုကို တစ်ခုတည်းအဖြစ် ပေါင်းစည်းခြင်း',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w15-d3',
      dayNumber: 3,
      titleEn: 'Number or Text?',
      titleMy: 'ဂဏန်းလား၊ စာသားလား',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Number', 'Text'],
        bucketsMy: ['Number (ဂဏန်း)', 'Text (စာသား)'],
        items: [
          SortingItem(
            id: 'w15-sort-age',
            labelEn: '25 (age)',
            labelMy: '25 (အသက်)',
            correctBucketEn: 'Number',
            correctBucketMy: 'Number (ဂဏန်း)',
          ),
          SortingItem(
            id: 'w15-sort-name',
            labelEn: '"Aye Aye" (name)',
            labelMy: '"အေးအေး" (အမည်)',
            correctBucketEn: 'Text',
            correctBucketMy: 'Text (စာသား)',
          ),
          SortingItem(
            id: 'w15-sort-score',
            labelEn: '100 (score)',
            labelMy: '100 (ရမှတ်)',
            correctBucketEn: 'Number',
            correctBucketMy: 'Number (ဂဏန်း)',
          ),
          SortingItem(
            id: 'w15-sort-city',
            labelEn: '"Yangon" (city)',
            labelMy: '"ရန်ကုန်" (မြို့)',
            correctBucketEn: 'Text',
            correctBucketMy: 'Text (စာသား)',
          ),
          SortingItem(
            id: 'w15-sort-price',
            labelEn: '3.5 (price)',
            labelMy: '3.5 (စျေးနှုန်း)',
            correctBucketEn: 'Number',
            correctBucketMy: 'Number (ဂဏန်း)',
          ),
          SortingItem(
            id: 'w15-sort-greeting',
            labelEn: '"Hello!" (greeting)',
            labelMy: '"Hello!" (နှုတ်ဆက်စကား)',
            correctBucketEn: 'Text',
            correctBucketMy: 'Text (စာသား)',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w15-d4',
      dayNumber: 4,
      titleEn: "Kaung's Shopping Total",
      titleMy: 'ကောင်း၏ စျေးဝယ်စုစုပေါင်း',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Kaung's Shopping Total",
        titleMy: 'ကောင်း၏ စျေးဝယ်စုစုပေါင်း',
        passageEn:
            "Kaung wrote a simple program to add up his shopping. He created a variable called price1 and set it to 500, and another called price2 set to 300. His program then added price1 + price2 and stored the result in a new variable called total, giving 800. Kaung also wanted to print a friendly message, so his program joined the text 'Your total is ' with the value of total to display 'Your total is 800'. This showed Kaung that numbers could be added with +, while text could be joined together in a similar way, but the two operations meant very different things depending on the data type.",
        passageMy:
            "ကောင်းသည် သူ၏စျေးဝယ်ငွေများကို ပေါင်းရန် ရိုးရှင်းသောပရိုဂရမ်တစ်ခု ရေးခဲ့သည်။ သူသည် price1 ဟုခေါ်သော variable တစ်ခုကို ဖန်တီးပြီး 500 ဟု သတ်မှတ်ခဲ့ပြီး၊ price2 ဟုခေါ်သော နောက်တစ်ခုကို 300 ဟု သတ်မှတ်ခဲ့သည်။ သူ၏ပရိုဂရမ်သည် price1 + price2 ကို ပေါင်းပြီး ရလဒ်ကို total ဟုခေါ်သော variable အသစ်တစ်ခုတွင် သိမ်းဆည်းခဲ့ရာ 800 ရရှိခဲ့သည်။ ကောင်းသည် ရင်းနှီးသောစာသားတစ်ခုကိုပါ ပရင့်ထုတ်လိုသဖြင့် သူ၏ပရိုဂရမ်သည် 'Your total is ' ဟူသော စာသားကို total ၏တန်ဖိုးနှင့် ဆက်စပ်ပြီး 'Your total is 800' ဟု ပြသခဲ့သည်။ ဂဏန်းများကို + ဖြင့် ပေါင်းနိုင်သကဲ့သို့ စာသားများကိုလည်း ဆင်တူသောနည်းလမ်းဖြင့် ဆက်စပ်နိုင်သော်လည်း၊ operation နှစ်ခုစလုံးသည် data type အလိုက် လုံးဝကွာခြားသောအရာများကို ဆိုလိုကြောင်း ဤအရာသည် ကောင်းအား ပြသခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What value did Kaung set price1 to?',
            questionMy: 'ကောင်းသည် price1 ကို ဘယ်တန်ဖိုးဖြင့် သတ်မှတ်ခဲ့သနည်း။',
            optionsEn: ['500', '300', '800', '0'],
            optionsMy: ['500', '300', '800', '0'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What value did Kaung set price2 to?',
            questionMy: 'ကောင်းသည် price2 ကို ဘယ်တန်ဖိုးဖြင့် သတ်မှတ်ခဲ့သနည်း။',
            optionsEn: ['300', '500', '800', '0'],
            optionsMy: ['300', '500', '800', '0'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What was stored in the variable called total?',
            questionMy: 'Total ဟုခေါ်သော variable တွင် ဘာသိမ်းဆည်းထားခဲ့သနည်း။',
            optionsEn: ['800', '500', '300', '0'],
            optionsMy: ['800', '500', '300', '0'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Kaung's program join together to make a friendly message?",
            questionMy:
                'ကောင်း၏ပရိုဂရမ်သည် ရင်းနှီးသောစာတစ်ကြောင်း ရေးရန် ဘာကို ဆက်စပ်ခဲ့သနည်း။',
            optionsEn: [
              "The text 'Your total is ' with the value of total",
              'price1 with price2 only',
              'Two flowcharts',
              'Two loops',
            ],
            optionsMy: [
              "'Your total is ' ဟူသောစာသားနှင့် total ၏တန်ဖိုး",
              'Price1 နှင့် price2 ကိုသာ',
              'Flowchart နှစ်ခု',
              'Loop နှစ်ခု',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'What did Kaung learn about the + idea with numbers vs. text?',
            questionMy:
                'ဂဏန်းနှင့် စာသားတို့၏ + ဆိုင်ရာအယူအဆအကြောင်း ကောင်းသည် ဘာသင်ယူခဲ့သနည်း။',
            optionsEn: [
              'It means very different things depending on the data type',
              'It always means the exact same thing',
              'It only works with text, never numbers',
              'It deletes both values',
            ],
            optionsMy: [
              'Data type အလိုက် လုံးဝကွာခြားသောအရာများကို ဆိုလိုသည်',
              'အမြဲတမ်း အတူတူပင်ဆိုလိုသည်',
              'စာသားနှင့်သာ အလုပ်လုပ်ပြီး ဂဏန်းနှင့် လုံးဝမသက်ဆိုင်ပါ',
              'တန်ဖိုးနှစ်ခုစလုံးကို ဖျက်ပစ်သည်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w15-d5',
      dayNumber: 5,
      titleEn: 'Week 15 Recap Quiz',
      titleMy: 'တစ်ဆယ့်ငါးပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'Which data type stores values like 7 or 3.5?',
          questionMy:
              '7 သို့မဟုတ် 3.5 ကဲ့သို့သော တန်ဖိုးများကို ဘယ် data type က သိမ်းဆည်းသနည်း။',
          optionsEn: ['Number', 'Text', 'Loop', 'Selection'],
          optionsMy: ['Number', 'Text', 'Loop', 'Selection'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which data type stores words or sentences?',
          questionMy:
              'စကားလုံးများ သို့မဟုတ် စာကြောင်းများကို ဘယ် data type က သိမ်းဆည်းသနည်း။',
          optionsEn: ['Text', 'Number', 'Loop', 'Selection'],
          optionsMy: ['Text', 'Number', 'Loop', 'Selection'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does the + operator do with two numbers?',
          questionMy: 'ဂဏန်းနှစ်လုံးနှင့် + operator သည် ဘာလုပ်ဆောင်သနည်း။',
          optionsEn: [
            'Adds them',
            'Deletes them',
            'Compares them',
            'Sorts them',
          ],
          optionsMy: ['ပေါင်းသည်', 'ဖျက်ပစ်သည်', 'နှိုင်းယှဉ်သည်', 'စီစဉ်သည်'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is joining two pieces of text together called?',
          questionMy: 'စာသားနှစ်ခုကို ပေါင်းစပ်ခြင်းကို ဘာဟုခေါ်သနည်း။',
          optionsEn: [
            'Joining (concatenation)',
            'Subtraction',
            'Selection',
            'Looping',
          ],
          optionsMy: [
            'ဆက်စပ်ခြင်း (concatenation)',
            'နှုတ်ခြင်း',
            'Selection',
            'Looping',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is an arithmetic operator?',
          questionMy: 'အောက်ပါတို့အနက် သင်္ချာ operator တစ်ခုမှာ အဘယ်နည်း။',
          optionsEn: ['-', 'IF', 'OUTPUT', 'WHILE'],
          optionsMy: ['-', 'IF', 'OUTPUT', 'WHILE'],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 4, Week 16: "Designing a Simple
// Program"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek16 = CourseWeekDef(
  id: 'course-secondary1-computing-w16',
  weekNumber: 16,
  titleEn: 'Designing a Simple Program',
  titleMy: 'ရိုးရှင်းသော ပရိုဂရမ်တစ်ခု ဒီဇိုင်းဆွဲခြင်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w16-d1',
      dayNumber: 1,
      titleEn: 'Planning, Testing and Debugging',
      titleMy: 'စီစဉ်ခြင်း၊ စမ်းသပ်ခြင်းနှင့် Debugging',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              'What are the three core building blocks used to structure any algorithm?',
          questionMy:
              'Algorithm မည်သည့်ကို တည်ဆောက်ရန်သုံးသော အခြေခံအစိတ်အပိုင်းသုံးမျိုးမှာ အဘယ်နည်း။',
          optionsEn: [
            'Sequence, selection, and loop',
            'Variable, pseudocode, and flowchart',
            'Input, output, and storage',
            'Hardware, software, and network',
          ],
          optionsMy: [
            'Sequence, selection, နှင့် loop',
            'Variable, pseudocode, နှင့် flowchart',
            'Input, output, နှင့် storage',
            'Hardware, software, နှင့် network',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is "testing" a program?',
          questionMy:
              '"Testing" ဆိုသည်မှာ ပရိုဂရမ်တစ်ခုနှင့် ပတ်သက်၍ အဘယ်နည်း။',
          optionsEn: [
            'Running it to check whether it works correctly',
            'Deleting all its variables',
            'Turning it into hardware',
            'Removing all its loops',
          ],
          optionsMy: [
            '၎င်းမှန်ကန်စွာ အလုပ်လုပ်မလုပ် စစ်ဆေးရန် လည်ပတ်ကြည့်ခြင်း',
            '၎င်း၏ variable အားလုံးကို ဖျက်ခြင်း',
            '၎င်းကို hardware အဖြစ် ပြောင်းခြင်း',
            '၎င်း၏ loop အားလုံးကို ဖယ်ရှားခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is "debugging"?',
          questionMy: '"Debugging" ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Finding and fixing errors (bugs) in a program',
            'Adding new bugs on purpose',
            'Turning a program into a flowchart',
            'Renaming all its variables',
          ],
          optionsMy: [
            'ပရိုဂရမ်တစ်ခုရှိ အမှားများ (bugs) ကို ရှာဖွေပြင်ဆင်ခြင်း',
            'အမှားအသစ်များကို တမင်ထည့်ခြင်း',
            'ပရိုဂရမ်ကို flowchart အဖြစ် ပြောင်းခြင်း',
            '၎င်း၏ variable အားလုံးကို အမည်ပြန်ပေးခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why do programmers test their programs with different inputs?',
          questionMy:
              'Programmer များသည် ၎င်းတို့၏ ပရိုဂရမ်များကို မတူညီသော input များဖြင့် အဘယ့်ကြောင့် စမ်းသပ်ကြသနည်း။',
          optionsEn: [
            'To check the program works correctly in different situations',
            'To make the program slower',
            'To delete all its pseudocode',
            'Because testing is required by law',
          ],
          optionsMy: [
            'ပရိုဂရမ်သည် မတူညီသောအခြေအနေများတွင် မှန်ကန်စွာအလုပ်လုပ်မလုပ် စစ်ဆေးရန်',
            'ပရိုဂရမ်ကို ပိုနှေးစေရန်',
            '၎င်း၏ pseudocode အားလုံးကို ဖျက်ရန်',
            'Testing သည် ဥပဒေအရ လိုအပ်သောကြောင့်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which comes first when designing a program?',
          questionMy: 'ပရိုဂရမ်တစ်ခု ဒီဇိုင်းဆွဲသောအခါ ဘာအရင်လုပ်သနည်း။',
          optionsEn: [
            'Planning the algorithm (e.g. with pseudocode or a flowchart) before writing code',
            'Testing before any code is written',
            'Debugging before the algorithm is planned',
            'Deleting variables before planning',
          ],
          optionsMy: [
            'ကုဒ်မရေးမီ algorithm ကို (pseudocode သို့မဟုတ် flowchart ဖြင့်) စီစဉ်ခြင်း',
            'ကုဒ်မရေးသေးမီ testing လုပ်ခြင်း',
            'Algorithm မစီစဉ်မီ debugging လုပ်ခြင်း',
            'မစီစဉ်မီ variable များ ဖျက်ခြင်း',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w16-d2',
      dayNumber: 2,
      titleEn: 'Program Design Vocabulary',
      titleMy: 'ပရိုဂရမ်ဒီဇိုင်း ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w16-design-algorithmdesign',
          termEn: 'Algorithm Design',
          termMy: 'Algorithm Design',
          matchEn:
              'Planning the logical steps a program will follow before writing code',
          matchMy:
              'ကုဒ်မရေးမီ ပရိုဂရမ်လိုက်နာမည့် ယုတ္တိရှိသောအဆင့်များကို စီစဉ်ခြင်း',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w16-design-pseudocode',
          termEn: 'Pseudocode',
          termMy: 'Pseudocode',
          matchEn:
              'A plain, structured way of writing an algorithm before coding it',
          matchMy:
              'ကုဒ်မရေးမီ algorithm ကို ရေးရန် ရိုးရှင်းပြီး တည်ဆောက်ပုံရှိသောနည်းလမ်း',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w16-design-testing',
          termEn: 'Testing',
          termMy: 'Testing',
          matchEn: 'Running a program to check whether it works correctly',
          matchMy:
              'ပရိုဂရမ်တစ်ခု မှန်ကန်စွာအလုပ်လုပ်မလုပ် စစ်ဆေးရန် လည်ပတ်ကြည့်ခြင်း',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w16-design-debugging',
          termEn: 'Debugging',
          termMy: 'Debugging',
          matchEn: 'Finding and fixing errors in a program',
          matchMy: 'ပရိုဂရမ်တစ်ခုရှိ အမှားများကို ရှာဖွေပြင်ဆင်ခြင်း',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w16-design-variable',
          termEn: 'Variable',
          termMy: 'Variable',
          matchEn:
              'A named place that stores a value which can change while the program runs',
          matchMy:
              'ပရိုဂရမ်လည်ပတ်နေစဉ် ပြောင်းလဲနိုင်သော တန်ဖိုးကို သိမ်းဆည်းသော အမည်ပေးထားသောနေရာ',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w16-d3',
      dayNumber: 3,
      titleEn: 'Which Building Block?',
      titleMy: 'ဘယ် အခြေခံအစိတ်အပိုင်းလဲ',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Sequence', 'Selection', 'Loop', 'Variable'],
        bucketsMy: ['Sequence', 'Selection', 'Loop', 'Variable'],
        items: [
          SortingItem(
            id: 'w16-sort-boilwater',
            labelEn: 'Boil the water, then add the tea bag',
            labelMy: 'ရေကိုဆူအောင်ကျိုပြီး လက်ဖက်ရည်အိတ်ကို ထည့်ပါ',
            correctBucketEn: 'Sequence',
            correctBucketMy: 'Sequence',
          ),
          SortingItem(
            id: 'w16-sort-moveforward',
            labelEn: 'Move forward, then stop above a pot',
            labelMy: 'ရှေ့သို့ရွှေ့ပြီး အိုးတစ်လုံးအပေါ်တွင် ရပ်ပါ',
            correctBucketEn: 'Sequence',
            correctBucketMy: 'Sequence',
          ),
          SortingItem(
            id: 'w16-sort-soildry',
            labelEn: 'IF the soil is dry, THEN water it',
            labelMy: 'မြေခြောက်နေပါက ရေလောင်းပါ',
            correctBucketEn: 'Selection',
            correctBucketMy: 'Selection',
          ),
          SortingItem(
            id: 'w16-sort-raining',
            labelEn: 'IF it is raining, THEN take an umbrella',
            labelMy: 'မိုးရွာလျှင် ထီးယူပါ',
            correctBucketEn: 'Selection',
            correctBucketMy: 'Selection',
          ),
          SortingItem(
            id: 'w16-sort-repeat8',
            labelEn: 'Repeat 8 times for each plant pot',
            labelMy: 'အပင်အိုးတစ်လုံးစီအတွက် ၈ ကြိမ် ထပ်ခါလုပ်ပါ',
            correctBucketEn: 'Loop',
            correctBucketMy: 'Loop',
          ),
          SortingItem(
            id: 'w16-sort-scorezero',
            labelEn: 'score = 0',
            labelMy: 'score = 0',
            correctBucketEn: 'Variable',
            correctBucketMy: 'Variable',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w16-d4',
      dayNumber: 4,
      titleEn: "Thazin's Quiz Score Program",
      titleMy: 'သဇင်၏ Quiz ရမှတ်ပရိုဂရမ်',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thazin's Quiz Score Program",
        titleMy: 'သဇင်၏ Quiz ရမှတ်ပရိုဂရမ်',
        passageEn:
            "For her final project, Thazin designed a simple quiz program using everything she had learned this term. First, she planned it with pseudocode: a sequence to set a variable called score to 0, a loop that repeated for each of 5 questions, and a selection inside the loop that added 1 to score IF the player's answer was correct. After writing her code, Thazin tested it by playing through the quiz herself, checking that the score displayed correctly at the end. She found one bug: her selection was checking the wrong variable, so she debugged it by fixing that line and testing again until every answer worked as expected.",
        passageMy:
            'သူမ၏ နောက်ဆုံးပရောဂျက်အတွက် သဇင်သည် ဤ term တွင် သင်ယူခဲ့ရသမျှကို အသုံးပြု၍ ရိုးရှင်းသော quiz ပရိုဂရမ်တစ်ခုကို ဒီဇိုင်းဆွဲခဲ့သည်။ ဦးစွာ pseudocode ဖြင့် စီစဉ်ခဲ့သည် - score ဟုခေါ်သော variable ကို 0 ဟုသတ်မှတ်ရန် sequence တစ်ခု၊ မေးခွန်း ၅ ခုတစ်ခုစီအတွက် ထပ်ခါလုပ်မည့် loop တစ်ခု၊ ပြီးလျှင် player ၏အဖြေမှန်ပါက score ထဲသို့ 1 ပေါင်းထည့်မည့် loop အတွင်းရှိ selection တစ်ခု။ သူမ၏ကုဒ်ကို ရေးပြီးသည့်နောက် သဇင်သည် quiz ကို ကိုယ်တိုင်ကစားကြည့်ခြင်းဖြင့် စမ်းသပ်ကာ၊ အဆုံးတွင် score မှန်ကန်စွာ ပေါ်မပေါ် စစ်ဆေးခဲ့သည်။ Bug တစ်ခုတွေ့ခဲ့သည် - သူမ၏ selection သည် variable မှားကို စစ်ဆေးနေခြင်းဖြစ်၍၊ ထိုစာကြောင်းကို ပြင်ဆင်ကာ အဖြေတိုင်း မျှော်လင့်ထားသည့်အတိုင်း အလုပ်လုပ်သည်အထိ ထပ်မံစမ်းသပ်ခြင်းဖြင့် debug လုပ်ခဲ့သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did Thazin's sequence do at the start?",
            questionMy: 'သဇင်၏ sequence သည် အစတွင် ဘာလုပ်ခဲ့သနည်း။',
            optionsEn: [
              'Set the score variable to 0',
              'Delete the quiz questions',
              'Print the final score immediately',
              'Turn off the loop',
            ],
            optionsMy: [
              'Score variable ကို 0 ဟု သတ်မှတ်ခဲ့သည်',
              'Quiz မေးခွန်းများကို ဖျက်ခဲ့သည်',
              'နောက်ဆုံးရမှတ်ကို ချက်ချင်းပရင့်ထုတ်ခဲ့သည်',
              'Loop ကို ပိတ်ခဲ့သည်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Thazin's loop repeat for?",
            questionMy: 'သဇင်၏ loop သည် ဘာအတွက် ထပ်ခါလုပ်ခဲ့သနည်း။',
            optionsEn: [
              'Each of the 5 questions',
              'Every variable in the program',
              'Every pot in a garden',
              'Every flowchart symbol',
            ],
            optionsMy: [
              'မေးခွန်း ၅ ခု တစ်ခုစီအတွက်',
              'ပရိုဂရမ်ရှိ variable တိုင်းအတွက်',
              'ဥယျာဉ်ရှိ အိုးတိုင်းအတွက်',
              'Flowchart သင်္ကေတတိုင်းအတွက်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "When did Thazin's selection add 1 to the score?",
            questionMy:
                'သဇင်၏ selection သည် score ထဲသို့ ဘယ်အချိန်တွင် 1 ပေါင်းထည့်ခဲ့သနည်း။',
            optionsEn: [
              "IF the player's answer was correct",
              'IF the loop finished',
              'IF the variable was deleted',
              'IF the pseudocode was printed',
            ],
            optionsMy: [
              "Player ၏အဖြေမှန်ပါက",
              'Loop ပြီးဆုံးပါက',
              'Variable ဖျက်ခံရပါက',
              'Pseudocode ပရင့်ထုတ်ခံရပါက',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did Thazin do to check her program worked?',
            questionMy:
                'သူမ၏ပရိုဂရမ် အလုပ်လုပ်မလုပ် စစ်ဆေးရန် သဇင်ဘာလုပ်ခဲ့သနည်း။',
            optionsEn: [
              'Tested it by playing through the quiz herself',
              'Deleted all the variables',
              'Skipped writing pseudocode',
              'Turned off the computer',
            ],
            optionsMy: [
              'Quiz ကို ကိုယ်တိုင်ကစားကြည့်ခြင်းဖြင့် စမ်းသပ်ခဲ့သည်',
              'Variable အားလုံးကို ဖျက်ခဲ့သည်',
              'Pseudocode ရေးခြင်းကို ကျော်ခဲ့သည်',
              'ကွန်ပျူတာကို ပိတ်ခဲ့သည်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'What was the bug Thazin found, and how did she fix it?',
            questionMy:
                'သဇင်တွေ့ရှိခဲ့သော bug မှာ အဘယ်နည်း၊ မည်သို့ပြင်ဆင်ခဲ့သနည်း။',
            optionsEn: [
              'Her selection checked the wrong variable, so she fixed that line and tested again',
              'Her computer had no power, so she charged it',
              'Her loop never started, so she deleted it',
              'Her pseudocode was too long, so she shortened it',
            ],
            optionsMy: [
              'သူမ၏ selection သည် variable မှားကို စစ်ဆေးနေသဖြင့် ထိုစာကြောင်းကို ပြင်ဆင်ပြီး ထပ်မံစမ်းသပ်ခဲ့သည်',
              'သူမ၏ကွန်ပျူတာတွင် ပါဝါမရှိသဖြင့် အားသွင်းခဲ့သည်',
              'သူမ၏ loop ဘယ်တော့မှ စတင်၍မရသဖြင့် ဖျက်ပစ်ခဲ့သည်',
              'သူမ၏ pseudocode ရှည်လွန်းသဖြင့် တိုစေခဲ့သည်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w16-d5',
      dayNumber: 5,
      titleEn: 'Week 16 Recap Quiz',
      titleMy: 'တစ်ဆယ့်ခြောက်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              'What are the three core building blocks of any algorithm?',
          questionMy:
              'Algorithm မည်သည့်ကိုမဆို တည်ဆောက်သော အခြေခံအစိတ်အပိုင်းသုံးမျိုးမှာ အဘယ်နည်း။',
          optionsEn: [
            'Sequence, selection, and loop',
            'Variable, hardware, and software',
            'Input, output, and storage',
            'Router, server, and Wi-Fi',
          ],
          optionsMy: [
            'Sequence, selection, နှင့် loop',
            'Variable, hardware, နှင့် software',
            'Input, output, နှင့် storage',
            'Router, server, နှင့် Wi-Fi',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is testing a program?',
          questionMy: 'ပရိုဂရမ်တစ်ခုကို testing လုပ်ခြင်းဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Running it to check whether it works correctly',
            'Deleting its variables',
            'Turning it into hardware',
            'Removing its loops',
          ],
          optionsMy: [
            '၎င်းမှန်ကန်စွာ အလုပ်လုပ်မလုပ် စစ်ဆေးရန် လည်ပတ်ကြည့်ခြင်း',
            '၎င်း၏ variable များကို ဖျက်ခြင်း',
            '၎င်းကို hardware အဖြစ် ပြောင်းခြင်း',
            '၎င်း၏ loop များကို ဖယ်ရှားခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is debugging?',
          questionMy: 'Debugging ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Finding and fixing errors in a program',
            'Adding new bugs on purpose',
            'Turning code into a flowchart',
            'Renaming variables',
          ],
          optionsMy: [
            'ပရိုဂရမ်တစ်ခုရှိ အမှားများကို ရှာဖွေပြင်ဆင်ခြင်း',
            'အမှားအသစ်များကို တမင်ထည့်ခြင်း',
            'ကုဒ်ကို flowchart အဖြစ် ပြောင်းခြင်း',
            'Variable များကို အမည်ပြန်ပေးခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What should you do before writing real code?',
          questionMy: 'တကယ့်ကုဒ်မရေးမီ ဘာလုပ်သင့်သနည်း။',
          optionsEn: [
            'Plan the algorithm with pseudocode or a flowchart',
            'Test the program first',
            'Debug a program that does not exist yet',
            'Delete all variables',
          ],
          optionsMy: [
            'Pseudocode သို့မဟုတ် flowchart ဖြင့် algorithm ကို စီစဉ်ရန်',
            'ပရိုဂရမ်ကို အရင်စမ်းသပ်ရန်',
            'မရှိသေးသော ပရိုဂရမ်ကို debug လုပ်ရန်',
            'Variable အားလုံးကို ဖျက်ရန်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Why do programmers test with different inputs?',
          questionMy:
              'Programmer များသည် မတူညီသော input များဖြင့် အဘယ့်ကြောင့် စမ်းသပ်ကြသနည်း။',
          optionsEn: [
            'To check the program works correctly in different situations',
            'To make the program slower',
            'Because it is required by law',
            'To delete unused variables',
          ],
          optionsMy: [
            'ပရိုဂရမ်သည် မတူညီသောအခြေအနေများတွင် မှန်ကန်စွာအလုပ်လုပ်မလုပ် စစ်ဆေးရန်',
            'ပရိုဂရမ်ကို ပိုနှေးစေရန်',
            'ဥပဒေအရ လိုအပ်သောကြောင့်',
            'အသုံးမပြုသော variable များကို ဖျက်ရန်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary1ComputingTerm4 = CourseTermDef(
  id: 'course-secondary1-computing-t4',
  termNumber: 4,
  titleEn: 'Programming Fundamentals II',
  titleMy: 'Programming အခြေခံများ ၂',
  certificateTitleEn: 'Programming Fundamentals II',
  certificateTitleMy: 'Programming အခြေခံ ၂',
  weeks: [
    _secondary1ComputingWeek13,
    _secondary1ComputingWeek14,
    _secondary1ComputingWeek15,
    _secondary1ComputingWeek16,
  ], // Term 4 complete (Weeks 13-16)
);

// =====================================================================
// Secondary 1 Computing -- Term 5, Week 17: "Selection in Code: IF and ELSE"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek17 = CourseWeekDef(
  id: 'course-secondary1-computing-w17',
  weekNumber: 17,
  titleEn: 'Selection in Code: IF and ELSE',
  titleMy: 'Code ထဲရှိ Selection - IF နှင့် ELSE',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w17-d1',
      dayNumber: 1,
      titleEn: 'Writing an IF Statement',
      titleMy: 'IF Statement ရေးသားခြင်း',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What does an IF statement let a program do?',
          questionMy:
              'IF statement တစ်ခုက ပရိုဂရမ်အား မည်သို့ပြုလုပ်ခွင့်ပေးသနည်း။',
          optionsEn: [
            'Choose between different actions based on a condition',
            'Store a value that never changes',
            'Repeat the same steps forever',
            'Delete a variable permanently',
          ],
          optionsMy: [
            'Condition တစ်ခုအပေါ်မူတည်၍ မတူညီသော လုပ်ဆောင်ချက်များကို ရွေးချယ်ခြင်း',
            'ဘယ်တော့မှ မပြောင်းလဲသော တန်ဖိုးတစ်ခုကို သိမ်းဆည်းခြင်း',
            'အဆင့်တူများကို အမြဲထပ်ခါလုပ်ခြင်း',
            'Variable တစ်ခုကို အမြဲတမ်း ဖျက်ခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'In "IF score > 50 THEN print Pass ELSE print Fail", what happens if score is 40?',
          questionMy:
              '"IF score > 50 THEN print Pass ELSE print Fail" တွင် score သည် 40 ဖြစ်ပါက ဘာဖြစ်မည်နည်း။',
          optionsEn: [
            'The program prints Fail',
            'The program prints Pass',
            'The program deletes the score variable',
            'The program repeats forever',
          ],
          optionsMy: [
            'ပရိုဂရမ်သည် Fail ဟု ပရင့်ထုတ်သည်',
            'ပရိုဂရမ်သည် Pass ဟု ပရင့်ထုတ်သည်',
            'ပရိုဂရမ်သည် score variable ကို ဖျက်ပစ်သည်',
            'ပရိုဂရမ်သည် အမြဲထပ်ခါလုပ်နေသည်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is a "condition" in an IF statement?',
          questionMy: 'IF statement တစ်ခုရှိ "condition" ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A question that is either true or false',
            'A named place that stores a value',
            'A symbol used to draw a flowchart',
            'A list of steps repeated many times',
          ],
          optionsMy: [
            'True သို့မဟုတ် False ဖြစ်သော မေးခွန်းတစ်ခု',
            'တန်ဖိုးတစ်ခုကို သိမ်းဆည်းသော အမည်ပေးထားသောနေရာ',
            'Flowchart ရေးဆွဲရန်သုံးသော သင်္ကေတတစ်ခု',
            'အကြိမ်များစွာ ထပ်ခါလုပ်သော အဆင့်များစာရင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which symbol means "greater than" in a condition?',
          questionMy:
              'Condition တစ်ခုတွင် "ထက်ကြီးသည်" ကို ဘယ်သင်္ကေတဖြင့် ပြသနည်း။',
          optionsEn: ['>', '=', '+', '#'],
          optionsMy: ['>', '=', '+', '#'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What runs if the condition in an IF...ELSE is false?',
          questionMy:
              'IF...ELSE တွင် condition သည် false ဖြစ်ပါက ဘာအပိုင်း run သွားမည်နည်း။',
          optionsEn: [
            'The ELSE branch',
            'The IF branch',
            'Nothing runs at all',
            'The loop counter',
          ],
          optionsMy: [
            'ELSE အပိုင်း',
            'IF အပိုင်း',
            'ဘာမှ run မသွားပါ',
            'Loop counter',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w17-d2',
      dayNumber: 2,
      titleEn: 'Selection Vocabulary',
      titleMy: 'Selection ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w17-sel-ifstatement',
          termEn: 'IF Statement',
          termMy: 'IF Statement',
          matchEn:
              'A selection structure that runs code only when a condition is true',
          matchMy:
              'Condition သည် true ဖြစ်မှသာ ကုဒ်ကို run စေသော selection ဖွဲ့စည်းပုံ',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w17-sel-else',
          termEn: 'ELSE',
          termMy: 'ELSE',
          matchEn:
              'The branch of an IF statement that runs when the condition is false',
          matchMy:
              'Condition သည် false ဖြစ်သောအခါ run သွားသော IF statement ၏ အပိုင်း',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w17-sel-condition',
          termEn: 'Condition',
          termMy: 'Condition',
          matchEn: 'A question in a program that is either true or false',
          matchMy:
              'ပရိုဂရမ်တစ်ခုအတွင်းရှိ true သို့မဟုတ် false ဖြစ်သော မေးခွန်းတစ်ခု',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w17-sel-comparisonoperator',
          termEn: 'Comparison Operator',
          termMy: 'Comparison Operator',
          matchEn:
              'A symbol such as > or < used to compare two values in a condition',
          matchMy:
              'Condition တစ်ခုတွင် တန်ဖိုးနှစ်ခုကို နှိုင်းယှဉ်ရန်သုံးသော > သို့မဟုတ် < ကဲ့သို့သော သင်္ကေတ',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w17-sel-booleanexpression',
          termEn: 'Boolean Expression',
          termMy: 'Boolean Expression',
          matchEn: 'An expression that evaluates to either true or false',
          matchMy: 'True သို့မဟုတ် false တစ်ခုအဖြစ် ရလဒ်ထွက်သော expression',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w17-d3',
      dayNumber: 3,
      titleEn: 'True or False?',
      titleMy: 'True လား False လား',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['True', 'False'],
        bucketsMy: ['True', 'False'],
        items: [
          SortingItem(
            id: 'w17-sort-8gt3',
            labelEn: '8 > 3',
            labelMy: '8 > 3',
            correctBucketEn: 'True',
            correctBucketMy: 'True',
          ),
          SortingItem(
            id: 'w17-sort-2gt10',
            labelEn: '2 > 10',
            labelMy: '2 > 10',
            correctBucketEn: 'False',
            correctBucketMy: 'False',
          ),
          SortingItem(
            id: 'w17-sort-6eq6',
            labelEn: '6 = 6',
            labelMy: '6 = 6',
            correctBucketEn: 'True',
            correctBucketMy: 'True',
          ),
          SortingItem(
            id: 'w17-sort-5eq9',
            labelEn: '5 = 9',
            labelMy: '5 = 9',
            correctBucketEn: 'False',
            correctBucketMy: 'False',
          ),
          SortingItem(
            id: 'w17-sort-8lt2',
            labelEn: '8 < 2',
            labelMy: '8 < 2',
            correctBucketEn: 'False',
            correctBucketMy: 'False',
          ),
          SortingItem(
            id: 'w17-sort-1lt9',
            labelEn: '1 < 9',
            labelMy: '1 < 9',
            correctBucketEn: 'True',
            correctBucketMy: 'True',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w17-d4',
      dayNumber: 4,
      titleEn: "Nilar's Pass or Fail Program",
      titleMy: 'နီလာ၏ Pass Fail ပရိုဂရမ်',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nilar's Pass or Fail Program",
        titleMy: 'နီလာ၏ Pass Fail ပရိုဂရမ်',
        passageEn:
            "Nilar wrote a program to mark a test using a variable called score. Her pseudocode used an IF statement: IF score is greater than or equal to 50 THEN print Pass, ELSE print Fail. When she tested it with score set to 65, the condition was true, so the program printed Pass. When she tested it again with score set to 30, the condition was false, so the ELSE branch ran instead and the program printed Fail. Nilar realised that without the ELSE branch, her program would only ever handle passing scores and would print nothing for a failing one.",
        passageMy:
            "နီလာသည် score ဟုခေါ်သော variable တစ်ခုကို အသုံးပြု၍ စာမေးပွဲအမှတ်ပေးရန် ပရိုဂရမ်တစ်ခု ရေးခဲ့သည်။ သူမ၏ pseudocode တွင် IF statement တစ်ခုကို သုံးထားသည် - score သည် 50 ထက်ကြီးသည် သို့မဟုတ် ညီပါက Pass ဟု ပရင့်ထုတ်ပြီး၊ မဟုတ်ပါက ELSE အပိုင်းက Fail ဟု ပရင့်ထုတ်သည်။ Score ကို 65 ဟုသတ်မှတ်၍ စမ်းသပ်ကြည့်ရာ condition သည် true ဖြစ်သဖြင့် ပရိုဂရမ်သည် Pass ဟု ပရင့်ထုတ်ခဲ့သည်။ Score ကို 30 ဟု ပြန်လည်သတ်မှတ်၍ စမ်းသပ်ကြည့်ရာ condition သည် false ဖြစ်သွားသဖြင့် ELSE အပိုင်း run သွားကာ ပရိုဂရမ်သည် Fail ဟု ပရင့်ထုတ်ခဲ့သည်။ ELSE အပိုင်းမရှိပါက သူမ၏ ပရိုဂရမ်သည် အောင်မှတ်ကိုသာ ကိုင်တွယ်နိုင်ပြီး ကျရှုံးသော မှတ်အတွက် ဘာမှ ပရင့်ထုတ်နိုင်မည်မဟုတ်ကြောင်း နီလာ နားလည်လိုက်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What variable did Nilar use in her program?',
            questionMy:
                'နီလာသည် သူမ၏ပရိုဂရမ်တွင် ဘယ် variable ကို သုံးခဲ့သနည်း။',
            optionsEn: ['score', 'pass', 'fail', 'test'],
            optionsMy: ['score', 'pass', 'fail', 'test'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did the IF condition check?',
            questionMy: 'IF condition သည် ဘာကို စစ်ဆေးခဲ့သနည်း။',
            optionsEn: [
              'Whether score was greater than or equal to 50',
              'Whether score was a valid variable name',
              'Whether the loop had finished',
              'Whether the computer was on',
            ],
            optionsMy: [
              'Score သည် 50 ထက်ကြီး သို့မဟုတ် ညီမမညီ',
              'Score သည် မှန်ကန်သော variable အမည်ဟုတ်မဟုတ်',
              'Loop ပြီးဆုံးမပြီးဆုံး',
              'ကွန်ပျူတာဖွင့်မဖွင့်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did the program print when score was 65?',
            questionMy:
                'Score သည် 65 ဖြစ်သောအခါ ပရိုဂရမ်သည် ဘာပရင့်ထုတ်ခဲ့သနည်း။',
            optionsEn: ['Pass', 'Fail', 'Nothing', '65'],
            optionsMy: ['Pass', 'Fail', 'ဘာမှ', '65'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'What ran when score was 30 and the condition was false?',
            questionMy:
                'Score 30 ဖြစ်ပြီး condition false ဖြစ်သောအခါ ဘာ run သွားခဲ့သနည်း။',
            optionsEn: [
              'The ELSE branch',
              'The IF branch',
              'A loop',
              'Nothing at all',
            ],
            optionsMy: [
              'ELSE အပိုင်း',
              'IF အပိုင်း',
              'Loop တစ်ခု',
              'ဘာမှမဟုတ်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'Why did Nilar need the ELSE branch?',
            questionMy: 'နီလာသည် ELSE အပိုင်းကို အဘယ့်ကြောင့် လိုအပ်ခဲ့သနည်း။',
            optionsEn: [
              'So the program could also handle failing scores',
              'So the program would run faster',
              'So the variable would become a constant',
              'So the loop would repeat forever',
            ],
            optionsMy: [
              'ပရိုဂရမ်သည် ကျရှုံးသောမှတ်ကိုပါ ကိုင်တွယ်နိုင်ရန်',
              'ပရိုဂရမ် ပိုမြန်စေရန်',
              'Variable ကို constant အဖြစ် ပြောင်းရန်',
              'Loop ကို အမြဲထပ်ခါလုပ်စေရန်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w17-d5',
      dayNumber: 5,
      titleEn: 'Week 17 Recap Quiz',
      titleMy: 'တစ်ဆယ့်ခုနစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What does an IF statement let a program do?',
          questionMy:
              'IF statement တစ်ခုက ပရိုဂရမ်အား မည်သို့ပြုလုပ်ခွင့်ပေးသနည်း။',
          optionsEn: [
            'Choose between actions based on a condition',
            'Store a fixed value forever',
            'Repeat forever',
            'Delete every variable',
          ],
          optionsMy: [
            'Condition အပေါ်မူတည်၍ လုပ်ဆောင်ချက်ရွေးချယ်ခြင်း',
            'ဘယ်တော့မှ မပြောင်းလဲသော တန်ဖိုးကို သိမ်းဆည်းခြင်း',
            'အမြဲထပ်ခါလုပ်ခြင်း',
            'Variable တိုင်းကို ဖျက်ခြင်း',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is a condition?',
          questionMy: 'Condition ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A question that is true or false',
            'A stored value that never changes',
            'A flowchart symbol',
            'A loop counter',
          ],
          optionsMy: [
            'True သို့မဟုတ် false ဖြစ်သော မေးခွန်း',
            'ဘယ်တော့မှ မပြောင်းလဲသော တန်ဖိုး',
            'Flowchart သင်္ကေတ',
            'Loop counter',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What runs when an IF condition is false and there is an ELSE branch?',
          questionMy:
              'IF condition false ဖြစ်ပြီး ELSE ပါရှိပါက ဘာ run သွားမည်နည်း။',
          optionsEn: [
            'The ELSE branch',
            'The IF branch',
            'Nothing',
            'The whole program stops',
          ],
          optionsMy: [
            'ELSE အပိုင်း',
            'IF အပိုင်း',
            'ဘာမှ',
            'ပရိုဂရမ်တစ်ခုလုံး ရပ်သွားသည်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which symbol checks if two values are equal?',
          questionMy: 'တန်ဖိုးနှစ်ခု ညီမညီ စစ်ဆေးရန် ဘယ်သင်္ကေတသုံးသနည်း။',
          optionsEn: ['=', '>', '+', '#'],
          optionsMy: ['=', '>', '+', '#'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does a Boolean expression evaluate to?',
          questionMy: 'Boolean expression တစ်ခု၏ ရလဒ်မှာ အဘယ်နည်း။',
          optionsEn: [
            'True or false',
            'A variable name',
            'A flowchart',
            'A loop',
          ],
          optionsMy: [
            'True သို့မဟုတ် false',
            'Variable အမည်တစ်ခု',
            'Flowchart',
            'Loop',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 5, Week 18: "Count-Controlled Loops: FOR"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek18 = CourseWeekDef(
  id: 'course-secondary1-computing-w18',
  weekNumber: 18,
  titleEn: 'Count-Controlled Loops: FOR',
  titleMy: 'Count-Controlled Loop - FOR',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w18-d1',
      dayNumber: 1,
      titleEn: 'What is a Count-Controlled Loop?',
      titleMy: 'Count-Controlled Loop ဆိုသည်မှာ',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a count-controlled loop?',
          questionMy: 'Count-controlled loop ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A loop that repeats an exact number of times',
            'A loop that never stops',
            'A variable that stores a count',
            'An IF statement inside another IF statement',
          ],
          optionsMy: [
            'အတိအကျ အကြိမ်ရေအတွက် ထပ်ခါလုပ်သော loop',
            'ဘယ်တော့မှ မရပ်သော loop',
            'အရေအတွက်ကို သိမ်းဆည်းသော variable',
            'IF statement တစ်ခုအတွင်း နောက် IF statement တစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'In "FOR count = 1 TO 5", how many times does the loop run?',
          questionMy:
              '"FOR count = 1 TO 5" တွင် loop သည် ဘယ်နှကြိမ် run မည်နည်း။',
          optionsEn: ['5', '1', '4', '6'],
          optionsMy: ['5', '1', '4', '6'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What is often used to keep track of how many times a loop has run?',
          questionMy:
              'Loop တစ်ခု ဘယ်နှကြိမ် run ပြီးကြောင်း မှတ်သားရန် ဘာကိုသုံးလေ့ရှိသနည်း။',
          optionsEn: [
            'A loop counter (a variable)',
            'A flowchart symbol',
            'A reading passage',
            'A drag-match card',
          ],
          optionsMy: [
            'Loop counter (variable တစ်ခု)',
            'Flowchart သင်္ကေတ',
            'Reading passage',
            'Drag-match card',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which of these is an example of a count-controlled loop?',
          questionMy: 'အောက်ပါတို့အနက် count-controlled loop ဥပမာမှာ အဘယ်နည်း။',
          optionsEn: [
            'FOR day = 1 TO 7',
            'IF score > 50 THEN print Pass',
            'score = 0',
            'playerName',
          ],
          optionsMy: [
            'FOR day = 1 TO 7',
            'IF score > 50 THEN print Pass',
            'score = 0',
            'playerName',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why use a loop instead of writing the same line many times?',
          questionMy:
              'တူညီသောစာကြောင်းကို ကြိမ်ဖန်များစွာ ရေးမည့်အစား loop ကို အဘယ့်ကြောင့် အသုံးပြုသနည်း။',
          optionsEn: [
            'It avoids repeating the same code over and over',
            'It deletes all the variables',
            'It turns the program into a flowchart',
            'It makes the condition always false',
          ],
          optionsMy: [
            'တူညီသောကုဒ်ကို ထပ်ခါထပ်ခါ မရေးရအောင် ရှောင်ရှားပေးသည်',
            'Variable အားလုံးကို ဖျက်ပစ်သည်',
            'ပရိုဂရမ်ကို flowchart အဖြစ် ပြောင်းသည်',
            'Condition ကို အမြဲ false ဖြစ်စေသည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w18-d2',
      dayNumber: 2,
      titleEn: 'Loop Vocabulary',
      titleMy: 'Loop ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w18-loop-forloop',
          termEn: 'FOR Loop',
          termMy: 'FOR Loop',
          matchEn: 'A loop that repeats a set number of times',
          matchMy: 'သတ်မှတ်ထားသော အကြိမ်ရေအတွက် ထပ်ခါလုပ်သော loop',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w18-loop-counter',
          termEn: 'Loop Counter',
          termMy: 'Loop Counter',
          matchEn:
              'A variable that keeps track of how many times a loop has run',
          matchMy:
              'Loop တစ်ခု ဘယ်နှကြိမ် run ပြီးကြောင်း မှတ်သားထားသော variable',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w18-loop-countcontrolled',
          termEn: 'Count-Controlled Loop',
          termMy: 'Count-Controlled Loop',
          matchEn: 'A loop that repeats an exact, known number of times',
          matchMy: 'သိပြီးသား အတိအကျအကြိမ်ရေအတွက် ထပ်ခါလုပ်သော loop',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w18-loop-iteration',
          termEn: 'Iteration',
          termMy: 'Iteration',
          matchEn: 'One single run-through of the steps inside a loop',
          matchMy: 'Loop အတွင်းရှိ အဆင့်များကို တစ်ကြိမ် run ခြင်း',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w18-loop-repeat',
          termEn: 'Repeat',
          termMy: 'Repeat',
          matchEn: 'To run the same steps again',
          matchMy: 'တူညီသောအဆင့်များကို ထပ်မံ run ခြင်း',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w18-d3',
      dayNumber: 3,
      titleEn: 'Count-Controlled or Not?',
      titleMy: 'Count-Controlled ဟုတ်၊ မဟုတ်',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Count-Controlled Loop', 'Not a Count-Controlled Loop'],
        bucketsMy: ['Count-Controlled Loop', 'Not a Count-Controlled Loop'],
        items: [
          SortingItem(
            id: 'w18-sort-forday17',
            labelEn: 'FOR day = 1 TO 7',
            labelMy: 'FOR day = 1 TO 7',
            correctBucketEn: 'Count-Controlled Loop',
            correctBucketMy: 'Count-Controlled Loop',
          ),
          SortingItem(
            id: 'w18-sort-repeat3',
            labelEn: 'Repeat 3 times',
            labelMy: 'Repeat 3 times',
            correctBucketEn: 'Count-Controlled Loop',
            correctBucketMy: 'Count-Controlled Loop',
          ),
          SortingItem(
            id: 'w18-sort-forcount10',
            labelEn: 'FOR count = 1 TO 10',
            labelMy: 'FOR count = 1 TO 10',
            correctBucketEn: 'Count-Controlled Loop',
            correctBucketMy: 'Count-Controlled Loop',
          ),
          SortingItem(
            id: 'w18-sort-scorezero',
            labelEn: 'score = 0',
            labelMy: 'score = 0',
            correctBucketEn: 'Not a Count-Controlled Loop',
            correctBucketMy: 'Not a Count-Controlled Loop',
          ),
          SortingItem(
            id: 'w18-sort-ifscore',
            labelEn: 'IF score > 50 THEN print Pass',
            labelMy: 'IF score > 50 THEN print Pass',
            correctBucketEn: 'Not a Count-Controlled Loop',
            correctBucketMy: 'Not a Count-Controlled Loop',
          ),
          SortingItem(
            id: 'w18-sort-keepgoing',
            labelEn: 'Keep going UNTIL the player quits',
            labelMy: 'Keep going UNTIL the player quits',
            correctBucketEn: 'Not a Count-Controlled Loop',
            correctBucketMy: 'Not a Count-Controlled Loop',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w18-d4',
      dayNumber: 4,
      titleEn: "Aung's Flower Garden Loop",
      titleMy: 'အောင်၏ ပန်းဥယျာဉ် Loop',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Aung's Flower Garden Loop",
        titleMy: 'အောင်၏ ပန်းဥယျာဉ် Loop',
        passageEn:
            "Aung had 8 flower pots in his garden and wanted his program to water every single one. Instead of writing the watering step 8 separate times, he used a count-controlled loop: FOR pot = 1 TO 8, water the pot. Each time the loop ran, the loop counter called pot increased by 1, from 1 all the way up to 8, and the watering step ran once for every value. When the counter reached 8, the loop stopped automatically because it had already repeated the exact number of times Aung asked for. This saved him from writing the same watering instruction again and again.",
        passageMy:
            'အောင်တွင် ဥယျာဉ်ထဲ ပန်းအိုး ၈ လုံးရှိပြီး သူ့ပရိုဂရမ်ဖြင့် အားလုံးကို ရေလောင်းစေလိုသည်။ ရေလောင်းသည့်အဆင့်ကို သီးခြား ၈ ကြိမ် ရေးမည့်အစား count-controlled loop တစ်ခုကို သုံးခဲ့သည် - FOR pot = 1 TO 8, ထိုအိုးကို ရေလောင်းပါ။ Loop run တိုင်း pot ဟုခေါ်သော loop counter သည် 1 မှ 8 အထိ 1 လုံးစီ တိုးလာပြီး တန်ဖိုးတိုင်းအတွက် ရေလောင်းသည့်အဆင့် တစ်ကြိမ်စီ run ခဲ့သည်။ Counter သည် 8 ရောက်သောအခါ အောင်တောင်းဆိုထားသော အတိအကျအကြိမ်ရေ ပြီးပြီဖြစ်၍ loop သည် အလိုအလျောက် ရပ်သွားခဲ့သည်။ ၎င်းသည် ရေလောင်းသည့်ညွှန်ကြားချက်ကို ထပ်ခါထပ်ခါ ရေးရခြင်းမှ အောင့်ကို ကယ်တင်ပေးခဲ့သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'How many flower pots did Aung have?',
            questionMy: 'အောင့်တွင် ပန်းအိုး ဘယ်နှလုံး ရှိခဲ့သနည်း။',
            optionsEn: ['8', '5', '10', '1'],
            optionsMy: ['8', '5', '10', '1'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'What did Aung use instead of writing the watering step 8 times?',
            questionMy:
                'ရေလောင်းသည့်အဆင့်ကို ၈ ကြိမ်ရေးမည့်အစား အောင်ဘာသုံးခဲ့သနည်း။',
            optionsEn: [
              'A count-controlled loop',
              'A new variable only',
              'An IF statement',
              'A reading passage',
            ],
            optionsMy: [
              'Count-controlled loop',
              'Variable အသစ်တစ်ခုသာ',
              'IF statement',
              'Reading passage',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What was the loop counter called?',
            questionMy: 'Loop counter ကို ဘာဟုခေါ်ခဲ့သနည်း။',
            optionsEn: ['pot', 'garden', 'water', 'aung'],
            optionsMy: ['pot', 'garden', 'water', 'aung'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What happened each time the loop ran?',
            questionMy: 'Loop run တိုင်း ဘာဖြစ်ခဲ့သနည်း။',
            optionsEn: [
              'The loop counter increased by 1 and a pot was watered',
              'The garden was deleted',
              'The condition turned false forever',
              'A new flower pot appeared',
            ],
            optionsMy: [
              'Loop counter 1 လုံး တိုးပြီး အိုးတစ်လုံး ရေလောင်းခံရသည်',
              'ဥယျာဉ်ကို ဖျက်ပစ်သည်',
              'Condition အမြဲ false ဖြစ်သွားသည်',
              'ပန်းအိုးအသစ်တစ်လုံး ပေါ်လာသည်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'Why did the loop stop when the counter reached 8?',
            questionMy:
                'Counter သည် 8 ရောက်သောအခါ loop ဘာကြောင့် ရပ်သွားခဲ့သနည်း။',
            optionsEn: [
              'It had already run the exact number of times Aung asked for',
              'The garden ran out of water',
              'The variable was deleted',
              'The condition never became true',
            ],
            optionsMy: [
              'အောင်တောင်းဆိုထားသော အတိအကျအကြိမ်ရေ ပြီးပြီဖြစ်၍',
              'ဥယျာဉ်တွင် ရေကုန်သွားသောကြောင့်',
              'Variable ကို ဖျက်ပစ်သောကြောင့်',
              'Condition ဘယ်တော့မှ true မဖြစ်သောကြောင့်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w18-d5',
      dayNumber: 5,
      titleEn: 'Week 18 Recap Quiz',
      titleMy: 'တစ်ဆယ့်ရှစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a count-controlled loop?',
          questionMy: 'Count-controlled loop ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A loop that repeats an exact number of times',
            'A condition that is always false',
            'A variable that never changes',
            'A flowchart symbol',
          ],
          optionsMy: [
            'အတိအကျအကြိမ်ရေအတွက် ထပ်ခါလုပ်သော loop',
            'အမြဲ false ဖြစ်သော condition',
            'ဘယ်တော့မှ မပြောင်းလဲသော variable',
            'Flowchart သင်္ကေတ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'In "FOR i = 1 TO 10", how many times does the loop run?',
          questionMy: '"FOR i = 1 TO 10" တွင် loop ဘယ်နှကြိမ် run မည်နည်း။',
          optionsEn: ['10', '1', '9', '11'],
          optionsMy: ['10', '1', '9', '11'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is a loop counter?',
          questionMy: 'Loop counter ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A variable that tracks how many times a loop has run',
            'A type of flowchart',
            'A comparison operator',
            'A reading passage',
          ],
          optionsMy: [
            'Loop run ပြီးသည့် အကြိမ်ရေကို မှတ်သားသော variable',
            'Flowchart အမျိုးအစား',
            'Comparison operator',
            'Reading passage',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'One run-through of the steps inside a loop is called what?',
          questionMy:
              'Loop အတွင်းရှိ အဆင့်များကို တစ်ကြိမ် run ခြင်းကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['An iteration', 'A condition', 'A variable', 'A boolean'],
          optionsMy: ['Iteration', 'Condition', 'Variable', 'Boolean'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why use a loop instead of repeating the same code many times?',
          questionMy:
              'တူညီသောကုဒ်ကို ကြိမ်ဖန်များစွာ ရေးမည့်အစား loop ကို အဘယ့်ကြောင့် သုံးသနည်း။',
          optionsEn: [
            'It avoids writing the same code over and over',
            'It makes the condition always true',
            'It deletes all variables',
            'It turns the code into a flowchart',
          ],
          optionsMy: [
            'တူညီသောကုဒ်ကို ထပ်ခါမရေးရအောင် ရှောင်ရှားပေးသည်',
            'Condition ကို အမြဲ true ဖြစ်စေသည်',
            'Variable အားလုံးကို ဖျက်သည်',
            'ကုဒ်ကို flowchart အဖြစ် ပြောင်းသည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 5, Week 19: "Condition-Controlled Loops: WHILE"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek19 = CourseWeekDef(
  id: 'course-secondary1-computing-w19',
  weekNumber: 19,
  titleEn: 'Condition-Controlled Loops: WHILE',
  titleMy: 'Condition-Controlled Loop - WHILE',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w19-d1',
      dayNumber: 1,
      titleEn: 'What is a Condition-Controlled Loop?',
      titleMy: 'Condition-Controlled Loop ဆိုသည်မှာ',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a condition-controlled loop?',
          questionMy: 'Condition-controlled loop ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A loop that keeps repeating as long as a condition is true',
            'A loop that always repeats exactly 10 times',
            'A variable that stores true or false',
            'A flowchart symbol for input',
          ],
          optionsMy: [
            'Condition true ဖြစ်နေသရွေ့ ဆက်ထပ်ခါလုပ်နေသော loop',
            'အမြဲတမ်း အတိအကျ ၁၀ ကြိမ် ထပ်ခါလုပ်သော loop',
            'True သို့မဟုတ် false ကို သိမ်းဆည်းသော variable',
            'Input အတွက် flowchart သင်္ကေတ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'In "WHILE score < 100 DO add points", when does the loop stop?',
          questionMy:
              '"WHILE score < 100 DO add points" တွင် loop ဘယ်အချိန် ရပ်မည်နည်း။',
          optionsEn: [
            'When score is no longer less than 100',
            'After exactly 5 times',
            'When the variable is deleted',
            'It never stops',
          ],
          optionsMy: [
            'Score သည် 100 ထက် မနည်းတော့သောအခါ',
            'အတိအကျ ၅ ကြိမ်ပြီးသောအခါ',
            'Variable ကို ဖျက်လိုက်သောအခါ',
            'ဘယ်တော့မှ မရပ်ပါ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What is the risk if the condition in a WHILE loop never becomes false?',
          questionMy:
              'WHILE loop ၏ condition ဘယ်တော့မှ false မဖြစ်ပါက ဘာအန္တရာယ်ရှိနိုင်သနည်း။',
          optionsEn: [
            'An infinite loop that never stops',
            'The variable turns into text',
            'The program becomes a flowchart',
            'The comparison operator disappears',
          ],
          optionsMy: [
            'ဘယ်တော့မှ မရပ်သော infinite loop',
            'Variable သည် စာသားအဖြစ် ပြောင်းသွားသည်',
            'ပရိုဂရမ်သည် flowchart အဖြစ် ဖြစ်သွားသည်',
            'Comparison operator ပျောက်သွားသည်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which loop is best when you do not know exactly how many times to repeat?',
          questionMy:
              'ဘယ်နှကြိမ်ထပ်ရမည်ကို အတိအကျ မသိသောအခါ ဘယ် loop က ပိုသင့်တော်သနည်း။',
          optionsEn: [
            'A condition-controlled loop (WHILE)',
            'A count-controlled loop (FOR) only',
            'No loop is ever needed',
            'A drag-match card',
          ],
          optionsMy: [
            'Condition-controlled loop (WHILE)',
            'Count-controlled loop (FOR) သာ',
            'Loop ဘာမှ မလိုအပ်ပါ',
            'Drag-match card',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does REPEAT ... UNTIL do?',
          questionMy: 'REPEAT ... UNTIL သည် ဘာလုပ်ဆောင်သနည်း။',
          optionsEn: [
            'Keeps repeating until a condition becomes true',
            'Repeats exactly once and stops',
            'Deletes the loop counter',
            'Turns a loop into an IF statement',
          ],
          optionsMy: [
            'Condition true ဖြစ်လာသည်အထိ ဆက်ထပ်ခါလုပ်သည်',
            'အတိအကျ တစ်ကြိမ်သာ run ပြီးရပ်သည်',
            'Loop counter ကို ဖျက်သည်',
            'Loop ကို IF statement အဖြစ် ပြောင်းသည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w19-d2',
      dayNumber: 2,
      titleEn: 'WHILE Loop Vocabulary',
      titleMy: 'WHILE Loop ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w19-loop-whileloop',
          termEn: 'WHILE Loop',
          termMy: 'WHILE Loop',
          matchEn:
              'A loop that keeps repeating as long as its condition stays true',
          matchMy: 'Condition true ဖြစ်နေသရွေ့ ဆက်ထပ်ခါလုပ်နေသော loop',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w19-loop-conditioncontrolled',
          termEn: 'Condition-Controlled Loop',
          termMy: 'Condition-Controlled Loop',
          matchEn:
              'A loop whose number of repeats depends on a condition, not a fixed count',
          matchMy:
              'ထပ်ခါလုပ်သည့်အကြိမ်ရေသည် အတိအကျအရေအတွက်မဟုတ်ဘဲ condition အပေါ်မူတည်သော loop',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w19-loop-infiniteloop',
          termEn: 'Infinite Loop',
          termMy: 'Infinite Loop',
          matchEn:
              'A loop whose condition never becomes false, so it never stops',
          matchMy:
              'Condition ဘယ်တော့မှ false မဖြစ်၍ ဘယ်တော့မှ မရပ်တော့သော loop',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w19-loop-repeatuntil',
          termEn: 'REPEAT UNTIL',
          termMy: 'REPEAT UNTIL',
          matchEn:
              'A loop that keeps repeating until its condition becomes true',
          matchMy: 'Condition true ဖြစ်လာသည်အထိ ဆက်ထပ်ခါလုပ်သော loop',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w19-loop-loopcondition',
          termEn: 'Loop Condition',
          termMy: 'Loop Condition',
          matchEn:
              'The true/false test that decides whether a loop keeps repeating',
          matchMy: 'Loop ဆက်ထပ်ခါလုပ်ရန် ဆုံးဖြတ်ပေးသော true/false စစ်ဆေးချက်',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w19-d3',
      dayNumber: 3,
      titleEn: 'Count-Controlled or Condition-Controlled?',
      titleMy: 'Count-Controlled လား Condition-Controlled လား',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Count-Controlled Loop', 'Condition-Controlled Loop'],
        bucketsMy: ['Count-Controlled Loop', 'Condition-Controlled Loop'],
        items: [
          SortingItem(
            id: 'w19-sort-fori20',
            labelEn: 'FOR i = 1 TO 20',
            labelMy: 'FOR i = 1 TO 20',
            correctBucketEn: 'Count-Controlled Loop',
            correctBucketMy: 'Count-Controlled Loop',
          ),
          SortingItem(
            id: 'w19-sort-whilehealth',
            labelEn: 'WHILE health > 0 DO fight',
            labelMy: 'WHILE health > 0 DO fight',
            correctBucketEn: 'Condition-Controlled Loop',
            correctBucketMy: 'Condition-Controlled Loop',
          ),
          SortingItem(
            id: 'w19-sort-repeat6',
            labelEn: 'Repeat 6 times',
            labelMy: 'Repeat 6 times',
            correctBucketEn: 'Count-Controlled Loop',
            correctBucketMy: 'Count-Controlled Loop',
          ),
          SortingItem(
            id: 'w19-sort-repeatuntilcorrect',
            labelEn: 'REPEAT ask password UNTIL correct',
            labelMy: 'REPEAT ask password UNTIL correct',
            correctBucketEn: 'Condition-Controlled Loop',
            correctBucketMy: 'Condition-Controlled Loop',
          ),
          SortingItem(
            id: 'w19-sort-forweek12',
            labelEn: 'FOR week = 1 TO 12',
            labelMy: 'FOR week = 1 TO 12',
            correctBucketEn: 'Count-Controlled Loop',
            correctBucketMy: 'Count-Controlled Loop',
          ),
          SortingItem(
            id: 'w19-sort-whilestock',
            labelEn: 'WHILE stock > 0 DO sell item',
            labelMy: 'WHILE stock > 0 DO sell item',
            correctBucketEn: 'Condition-Controlled Loop',
            correctBucketMy: 'Condition-Controlled Loop',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w19-d4',
      dayNumber: 4,
      titleEn: "Zin's Password Checker",
      titleMy: 'ဇင်၏ Password စစ်ဆေးမှု ပရိုဂရမ်',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Zin's Password Checker",
        titleMy: 'ဇင်၏ Password စစ်ဆေးမှု ပရိုဂရမ်',
        passageEn:
            "Zin wanted his program to keep asking for a password until the user typed the correct one, but he had no idea how many attempts a user might need. A count-controlled loop would not work well here, since he did not know the exact number of times to repeat in advance. Instead, he used a condition-controlled loop: WHILE the entered password is not correct, keep asking. Each time through the loop, his program compared the entered password with the correct one stored in a variable. As soon as the user typed the correct password, the condition became false and the loop stopped, letting the program continue.",
        passageMy:
            'ဇင်သည် user မှန်ကန်သော password ရိုက်ထည့်သည်အထိ password ကို ဆက်တိုက်မေးနေမည့် ပရိုဂရမ်တစ်ခု လိုချင်ခဲ့သော်လည်း user ကြိုးစားရမည့် အကြိမ်ရေကို သူမသိပါ။ ဤနေရာတွင် count-controlled loop သည် သင့်တော်မည်မဟုတ်ပါ၊ အဘယ်ကြောင့်ဆိုသော် ကြိုတင်ကြိမ်ရေကို သူ အတိအကျမသိသောကြောင့်ဖြစ်သည်။ ယင်းအစား condition-controlled loop တစ်ခုကို သုံးခဲ့သည် - ရိုက်ထည့်သော password သည် မမှန်ကန်သေးသရွေ့ ဆက်မေးပါ။ Loop run တိုင်း သူ့ပရိုဂရမ်သည် ရိုက်ထည့်သော password ကို variable တစ်ခုအတွင်း သိမ်းဆည်းထားသော မှန်ကန်သည့် password နှင့် နှိုင်းယှဉ်ခဲ့သည်။ User မှန်ကန်သော password ရိုက်ထည့်လိုက်သည်နှင့် condition သည် false ဖြစ်သွားပြီး loop ရပ်သွားကာ ပရိုဂရမ်ဆက်လက် လည်ပတ်စေခဲ့သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                'Why did a count-controlled loop not work well for the password checker?',
            questionMy:
                'Password checker အတွက် count-controlled loop ဘာကြောင့် သင့်တော်မည်မဟုတ်ခဲ့သနည်း။',
            optionsEn: [
              'Zin did not know the exact number of attempts in advance',
              'Count-controlled loops cannot use variables',
              'FOR loops are always slower',
              'Password checkers cannot use loops at all',
            ],
            optionsMy: [
              'ဇင် ကြိုးစားရမည့် အကြိမ်ရေကို ကြိုတင်မသိသောကြောင့်',
              'Count-controlled loop များတွင် variable သုံး၍မရသောကြောင့်',
              'FOR loop များသည် အမြဲပိုနှေးသောကြောင့်',
              'Password checker များတွင် loop လုံးဝသုံး၍မရသောကြောင့်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What kind of loop did Zin use instead?',
            questionMy: 'ဇင် ယင်းအစား ဘယ် loop အမျိုးအစားကို သုံးခဲ့သနည်း။',
            optionsEn: [
              'A condition-controlled loop (WHILE)',
              'A count-controlled loop (FOR)',
              'No loop at all',
              'A sorting activity',
            ],
            optionsMy: [
              'Condition-controlled loop (WHILE)',
              'Count-controlled loop (FOR)',
              'Loop လုံးဝမသုံးပါ',
              'Sorting activity',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did the loop condition check each time?',
            questionMy: 'Loop condition သည် အကြိမ်တိုင်း ဘာစစ်ဆေးခဲ့သနည်း။',
            optionsEn: [
              'Whether the entered password matched the correct one',
              'Whether the computer was switched on',
              'Whether the loop counter reached 8',
              'Whether a flowchart was drawn',
            ],
            optionsMy: [
              'ရိုက်ထည့်သော password သည် မှန်ကန်သောတစ်ခုနှင့် ကိုက်ညီမကိုက်ညီ',
              'ကွန်ပျူတာဖွင့်မဖွင့်',
              'Loop counter သည် 8 ရောက်မရောက်',
              'Flowchart ဆွဲမဆွဲ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'When did the loop stop?',
            questionMy: 'Loop ဘယ်အချိန်တွင် ရပ်သွားခဲ့သနည်း။',
            optionsEn: [
              'As soon as the user typed the correct password',
              'After exactly 8 attempts',
              'When the variable was deleted',
              'It never stopped',
            ],
            optionsMy: [
              'User မှန်ကန်သော password ရိုက်ထည့်လိုက်သည်နှင့်',
              'အတိအကျ ၈ ကြိမ်ပြီးနောက်',
              'Variable ကို ဖျက်လိုက်သောအခါ',
              'ဘယ်တော့မှ မရပ်ခဲ့ပါ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did the program store the correct password in?',
            questionMy:
                'ပရိုဂရမ်သည် မှန်ကန်သော password ကို ဘာထဲတွင် သိမ်းဆည်းထားခဲ့သနည်း။',
            optionsEn: [
              'A variable',
              'A flowchart',
              'A drag-match card',
              'A loop counter only',
            ],
            optionsMy: [
              'Variable',
              'Flowchart',
              'Drag-match card',
              'Loop counter သာ',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w19-d5',
      dayNumber: 5,
      titleEn: 'Week 19 Recap Quiz',
      titleMy: 'တစ်ဆယ့်ကိုးပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is a condition-controlled loop?',
          questionMy: 'Condition-controlled loop ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A loop that repeats as long as (or until) a condition is met',
            'A loop that always runs 10 times',
            'A variable that stores text',
            'A comparison operator',
          ],
          optionsMy: [
            'Condition ပြည့်မီနေသရွေ့ (သို့) ပြည့်မီသည်အထိ ထပ်ခါလုပ်သော loop',
            'အမြဲတမ်း ၁၀ ကြိမ် run သော loop',
            'စာသားကို သိမ်းဆည်းသော variable',
            'Comparison operator',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'When does a WHILE loop stop?',
          questionMy: 'WHILE loop ဘယ်အချိန် ရပ်သနည်း။',
          optionsEn: [
            'When its condition becomes false',
            'After exactly 5 times always',
            'When the variable is renamed',
            'It never stops',
          ],
          optionsMy: [
            'Condition false ဖြစ်သွားသောအခါ',
            'အမြဲတမ်း အတိအကျ ၅ ကြိမ်ပြီးနောက်',
            'Variable အမည်ပြောင်းလိုက်သောအခါ',
            'ဘယ်တော့မှ မရပ်ပါ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is an infinite loop?',
          questionMy: 'Infinite loop ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'A loop whose condition never becomes false',
            'A loop that runs exactly once',
            'A loop with no counter',
            'A flowchart symbol',
          ],
          optionsMy: [
            'Condition ဘယ်တော့မှ false မဖြစ်သော loop',
            'အတိအကျ တစ်ကြိမ်သာ run သော loop',
            'Counter မပါသော loop',
            'Flowchart သင်္ကေတ',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which loop type suits a password checker best, since the number of attempts is unknown?',
          questionMy:
              'ကြိုးစားရမည့် အကြိမ်ရေ မသိသောကြောင့် password checker တစ်ခုအတွက် ဘယ် loop အမျိုးအစားက ပိုသင့်တော်သနည်း။',
          optionsEn: [
            'A condition-controlled loop',
            'A count-controlled loop only',
            'No loop is needed',
            'A drag-match activity',
          ],
          optionsMy: [
            'Condition-controlled loop',
            'Count-controlled loop သာ',
            'Loop မလိုအပ်ပါ',
            'Drag-match activity',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does REPEAT ... UNTIL keep doing?',
          questionMy: 'REPEAT ... UNTIL သည် ဘာကို ဆက်လုပ်နေသနည်း။',
          optionsEn: [
            'Repeating until a condition becomes true',
            'Repeating exactly once',
            'Deleting the loop counter',
            'Turning into an IF statement',
          ],
          optionsMy: [
            'Condition true ဖြစ်သည်အထိ ထပ်ခါလုပ်ခြင်း',
            'အတိအကျ တစ်ကြိမ်သာ ထပ်ခါလုပ်ခြင်း',
            'Loop counter ကို ဖျက်ခြင်း',
            'IF statement အဖြစ် ပြောင်းခြင်း',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 5, Week 20: "Building a Complete Program"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek20 = CourseWeekDef(
  id: 'course-secondary1-computing-w20',
  weekNumber: 20,
  titleEn: 'Building a Complete Program',
  titleMy: 'ပရိုဂရမ်တစ်ခုလုံး တည်ဆောက်ခြင်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w20-d1',
      dayNumber: 1,
      titleEn: 'Combining Variables, Selection and Loops',
      titleMy: 'Variable, Selection နှင့် Loop များ ပေါင်းစပ်ခြင်း',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'Which loop keeps repeating an exact number of times?',
          questionMy: 'ဘယ် loop က အတိအကျအကြိမ်ရေအတွက် ထပ်ခါလုပ်သနည်း။',
          optionsEn: [
            'A count-controlled loop (FOR)',
            'A condition-controlled loop only',
            'An IF statement',
            'A variable',
          ],
          optionsMy: [
            'Count-controlled loop (FOR)',
            'Condition-controlled loop သာ',
            'IF statement',
            'Variable',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which loop keeps repeating based on a true/false condition?',
          questionMy:
              'True/false condition အပေါ်မူတည်၍ ဘယ် loop က ထပ်ခါလုပ်သနည်း။',
          optionsEn: [
            'A condition-controlled loop (WHILE)',
            'A count-controlled loop only',
            'A drag-match pair',
            'A sorting bucket',
          ],
          optionsMy: [
            'Condition-controlled loop (WHILE)',
            'Count-controlled loop သာ',
            'Drag-match pair',
            'Sorting bucket',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does an IF...ELSE let a program choose between?',
          questionMy:
              'IF...ELSE က ပရိုဂရမ်အား ဘာနှစ်ခုကြားမှ ရွေးချယ်ခွင့်ပေးသနည်း။',
          optionsEn: [
            'Two different sets of actions depending on a condition',
            'Two different loop counters',
            'Two different data types only',
            'Two different flowchart shapes',
          ],
          optionsMy: [
            'Condition အပေါ်မူတည်၍ မတူညီသော လုပ်ဆောင်ချက် နှစ်မျိုး',
            'မတူညီသော loop counter နှစ်ခု',
            'မတူညီသော data type နှစ်မျိုးသာ',
            'မတူညီသော flowchart ပုံသဏ္ဍာန် နှစ်မျိုး',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What is used to store and update information as a program runs?',
          questionMy:
              'ပရိုဂရမ်လည်ပတ်နေစဉ် အချက်အလက်ကို သိမ်းဆည်းပြီး update လုပ်ရန် ဘာကိုသုံးသနည်း။',
          optionsEn: [
            'A variable',
            'A comparison operator',
            'A flowchart symbol',
            'A sorting bucket',
          ],
          optionsMy: [
            'Variable',
            'Comparison operator',
            'Flowchart သင်္ကေတ',
            'Sorting bucket',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why plan with pseudocode before coding a program that combines variables, selection, and loops?',
          questionMy:
              'Variable, selection, loop များ ပေါင်းစပ်ထားသော ပရိုဂရမ်တစ်ခုကို ကုဒ်မရေးမီ pseudocode ဖြင့် အဘယ့်ကြောင့် စီစဉ်သင့်သနည်း။',
          optionsEn: [
            'To organize the logic clearly before writing actual code',
            'Because pseudocode runs faster than real code',
            'Because computers cannot run code without pseudocode first',
            'To avoid using any variables',
          ],
          optionsMy: [
            'အမှန်တကယ်ကုဒ်မရေးမီ logic ကို ရှင်းလင်းစွာ စီစဉ်ရန်',
            'Pseudocode သည် အစစ်ကုဒ်ထက် ပိုမြန်သောကြောင့်',
            'ကွန်ပျူတာသည် pseudocode မရှိဘဲ ကုဒ်ကို run မရသောကြောင့်',
            'Variable မည်သည့်အမျိုးအစားမျှ မသုံးရန်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w20-d2',
      dayNumber: 2,
      titleEn: 'Programming Building Blocks Recap',
      titleMy: 'Programming အခြေခံအစိတ်အပိုင်းများ ပြန်လည်သုံးသပ်ခြင်း',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w20-recap-sequence',
          termEn: 'Sequence',
          termMy: 'Sequence',
          matchEn: 'Steps that run one after another in a fixed order',
          matchMy: 'အစဉ်လိုက် တစ်ခုပြီးတစ်ခု run သွားသော အဆင့်များ',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w20-recap-selection',
          termEn: 'Selection',
          termMy: 'Selection',
          matchEn: 'Choosing between actions using an IF (and optional ELSE)',
          matchMy:
              'IF (နှင့် ELSE) ကို အသုံးပြု၍ လုပ်ဆောင်ချက်များအကြား ရွေးချယ်ခြင်း',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w20-recap-iteration',
          termEn: 'Iteration (Loop)',
          termMy: 'Iteration (Loop)',
          matchEn:
              'Repeating steps, either a set number of times or until a condition is met',
          matchMy:
              'အဆင့်များကို သတ်မှတ်အကြိမ်ရေ (သို့) condition ပြည့်မီသည်အထိ ထပ်ခါလုပ်ခြင်း',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w20-recap-variable',
          termEn: 'Variable',
          termMy: 'Variable',
          matchEn:
              'A named place that stores a value which can change while a program runs',
          matchMy:
              'ပရိုဂရမ်လည်ပတ်နေစဉ် ပြောင်းလဲနိုင်သော တန်ဖိုးကို သိမ်းဆည်းသော အမည်ပေးထားသောနေရာ',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w20-recap-algorithm',
          termEn: 'Algorithm',
          termMy: 'Algorithm',
          matchEn: 'A precise, ordered set of steps for solving a problem',
          matchMy:
              'ပြဿနာတစ်ခုကို ဖြေရှင်းရန် တိကျစွာစီစဉ်ထားသော အဆင့်များစုစည်းမှု',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w20-d3',
      dayNumber: 3,
      titleEn: 'Which Building Block?',
      titleMy: 'ဘယ် အခြေခံအစိတ်အပိုင်းလဲ',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Sequence', 'Selection', 'Loop', 'Variable'],
        bucketsMy: ['Sequence', 'Selection', 'Loop', 'Variable'],
        items: [
          SortingItem(
            id: 'w20-sort-totalzero',
            labelEn: 'total = 0',
            labelMy: 'total = 0',
            correctBucketEn: 'Variable',
            correctBucketMy: 'Variable',
          ),
          SortingItem(
            id: 'w20-sort-iftotal',
            labelEn: 'IF total > 100 THEN print Winner',
            labelMy: 'IF total > 100 THEN print Winner',
            correctBucketEn: 'Selection',
            correctBucketMy: 'Selection',
          ),
          SortingItem(
            id: 'w20-sort-forround',
            labelEn: 'FOR round = 1 TO 5',
            labelMy: 'FOR round = 1 TO 5',
            correctBucketEn: 'Loop',
            correctBucketMy: 'Loop',
          ),
          SortingItem(
            id: 'w20-sort-whilelives',
            labelEn: 'WHILE lives > 0 DO play',
            labelMy: 'WHILE lives > 0 DO play',
            correctBucketEn: 'Loop',
            correctBucketMy: 'Loop',
          ),
          SortingItem(
            id: 'w20-sort-askgreet',
            labelEn: "Ask the player's name, then greet them",
            labelMy: 'ကစားသူ၏အမည် မေးပြီး နှုတ်ဆက်ပါ',
            correctBucketEn: 'Sequence',
            correctBucketMy: 'Sequence',
          ),
          SortingItem(
            id: 'w20-sort-attemptsplusone',
            labelEn: 'attempts = attempts + 1',
            labelMy: 'attempts = attempts + 1',
            correctBucketEn: 'Variable',
            correctBucketMy: 'Variable',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w20-d4',
      dayNumber: 4,
      titleEn: "Hnin's Number Guessing Game",
      titleMy: 'နှင်း၏ ဂဏန်းယူဆ ဂိမ်း',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Hnin's Number Guessing Game",
        titleMy: 'နှင်း၏ ဂဏန်းယူဆ ဂိမ်း',
        passageEn:
            "For her end-of-term project, Hnin designed a number guessing game combining everything she had learned. She planned it with pseudocode first: a variable called secretNumber storing the answer, and a condition-controlled loop that kept asking WHILE the player's guess was not equal to secretNumber. Inside the loop, she used selection: IF the guess was too high, the program printed too high, ELSE IF the guess was too low, it printed too low. When the player finally guessed correctly, the loop's condition became false and it stopped, printing a congratulations message. Hnin tested the game with several different guesses and debugged one issue, where her IF statement compared the wrong variable, before it worked correctly every time.",
        passageMy:
            'Term အဆုံးပရောဂျက်အတွက် နှင်းသည် သင်ယူခဲ့ရသမျှကို ပေါင်းစပ်၍ ဂဏန်းယူဆဂိမ်းတစ်ခု ဒီဇိုင်းဆွဲခဲ့သည်။ ဦးစွာ pseudocode ဖြင့် စီစဉ်ခဲ့သည် - အဖြေကို သိမ်းဆည်းမည့် secretNumber ဟုခေါ်သော variable တစ်ခု၊ ပြီးလျှင် player ၏ယူဆချက်သည် secretNumber နှင့် မညီသရွေ့ ဆက်မေးမည့် condition-controlled loop တစ်ခု။ Loop အတွင်းတွင် selection ကို သုံးခဲ့သည် - ယူဆချက်သည် များနေပါက too high ဟု ပရင့်ထုတ်ပြီး၊ နည်းနေပါက too low ဟု ပရင့်ထုတ်သည်။ Player နောက်ဆုံးတွင် မှန်ကန်စွာ ယူဆနိုင်သောအခါ loop ၏ condition သည် false ဖြစ်သွားပြီး ရပ်သွားကာ ဂုဏ်ပြုစာသား ပရင့်ထုတ်ခဲ့သည်။ နှင်းသည် မတူညီသော ယူဆချက်များစွာဖြင့် ဂိမ်းကို စမ်းသပ်ခဲ့ပြီး သူမ၏ IF statement သည် variable မှားကို နှိုင်းယှဉ်နေသည့် ပြဿနာတစ်ခုကို ရှာဖွေပြင်ဆင်ကာ အကြိမ်တိုင်း မှန်ကန်စွာအလုပ်လုပ်သည်အထိ debug လုပ်ခဲ့သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What did the secretNumber variable store?',
            questionMy: 'SecretNumber variable သည် ဘာကို သိမ်းဆည်းထားခဲ့သနည်း။',
            optionsEn: [
              'The answer the player needed to guess',
              'The number of loop iterations',
              "The player's name",
              'A flowchart symbol',
            ],
            optionsMy: [
              'Player ယူဆရမည့် အဖြေ',
              'Loop iteration အရေအတွက်',
              'Player ၏အမည်',
              'Flowchart သင်္ကေတ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'What kind of loop did Hnin use to keep asking for guesses?',
            questionMy:
                'ဆက်လက်မေးမြန်းရန် နှင်း ဘယ် loop အမျိုးအစားကို သုံးခဲ့သနည်း။',
            optionsEn: [
              'A condition-controlled loop',
              'A count-controlled loop only',
              'No loop at all',
              'A sorting loop',
            ],
            optionsMy: [
              'Condition-controlled loop',
              'Count-controlled loop သာ',
              'Loop လုံးဝမသုံးပါ',
              'Sorting loop',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What did the selection inside the loop check?',
            questionMy: 'Loop အတွင်းရှိ selection သည် ဘာကို စစ်ဆေးခဲ့သနည်း။',
            optionsEn: [
              'Whether the guess was too high or too low',
              'Whether the computer was on',
              'Whether the loop counter was a valid name',
              'Whether the pseudocode was printed',
            ],
            optionsMy: [
              'ယူဆချက်သည် များနေမနေ (သို့) နည်းနေမနေ',
              'ကွန်ပျူတာဖွင့်မဖွင့်',
              'Loop counter သည် မှန်ကန်သောအမည် ဟုတ်မဟုတ်',
              'Pseudocode ပရင့်ထုတ်မထုတ်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'When did the loop stop?',
            questionMy: 'Loop ဘယ်အချိန်တွင် ရပ်သွားခဲ့သနည်း။',
            optionsEn: [
              'When the player finally guessed correctly',
              'After exactly 5 guesses always',
              'When the variable was renamed',
              'It never stopped',
            ],
            optionsMy: [
              'Player နောက်ဆုံးတွင် မှန်ကန်စွာ ယူဆနိုင်သောအခါ',
              'အမြဲတမ်း အတိအကျ ၅ ကြိမ်ပြီးနောက်',
              'Variable အမည်ပြောင်းလိုက်သောအခါ',
              'ဘယ်တော့မှ မရပ်ခဲ့ပါ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: 'What bug did Hnin find and fix?',
            questionMy: 'နှင်း ဘယ် bug ကို တွေ့ရှိပြီး ပြင်ဆင်ခဲ့သနည်း။',
            optionsEn: [
              'Her IF statement was comparing the wrong variable',
              'Her computer had no power',
              'Her loop never started',
              'Her pseudocode was missing entirely',
            ],
            optionsMy: [
              'သူမ၏ IF statement သည် variable မှားကို နှိုင်းယှဉ်နေသည်',
              'သူမ၏ကွန်ပျူတာတွင် ပါဝါမရှိ',
              'သူမ၏ loop ဘယ်တော့မှ မစခဲ့',
              'သူမ၏ pseudocode လုံးဝ ပျောက်နေသည်',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w20-d5',
      dayNumber: 5,
      titleEn: 'Week 20 Recap Quiz',
      titleMy: 'နှစ်ဆယ်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              'Which of the four building blocks chooses between actions using a condition?',
          questionMy:
              'အခြေခံအစိတ်အပိုင်းလေးမျိုးအနက် ဘယ်တစ်ခုက condition ကို အသုံးပြု၍ လုပ်ဆောင်ချက်များအကြား ရွေးချယ်သနည်း။',
          optionsEn: ['Selection', 'Sequence', 'Variable', 'Data type'],
          optionsMy: ['Selection', 'Sequence', 'Variable', 'Data type'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which building block repeats steps?',
          questionMy: 'ဘယ် အခြေခံအစိတ်အပိုင်းက အဆင့်များကို ထပ်ခါလုပ်သနည်း။',
          optionsEn: ['Iteration (loop)', 'Sequence', 'Selection', 'Variable'],
          optionsMy: ['Iteration (loop)', 'Sequence', 'Selection', 'Variable'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What stores and updates information as a program runs?',
          questionMy:
              'ပရိုဂရမ်လည်ပတ်နေစဉ် အချက်အလက်ကို ဘာက သိမ်းဆည်းပြီး update လုပ်သနည်း။',
          optionsEn: [
            'A variable',
            'A loop counter only',
            'A flowchart shape',
            'A comparison symbol',
          ],
          optionsMy: [
            'Variable',
            'Loop counter သာ',
            'Flowchart ပုံသဏ္ဍာန်',
            'Comparison symbol',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why do programmers test a program with different inputs before finishing?',
          questionMy:
              'Programmer များသည် ပရိုဂရမ်တစ်ခုကို မပြီးမီ မတူညီသော input များဖြင့် အဘယ့်ကြောင့် စမ်းသပ်ကြသနည်း။',
          optionsEn: [
            'To check it works correctly in different situations',
            'To make the loop run forever',
            'To delete all the variables',
            'Because testing is optional and rarely done',
          ],
          optionsMy: [
            'မတူညီသောအခြေအနေများတွင် မှန်ကန်စွာအလုပ်လုပ်မလုပ် စစ်ဆေးရန်',
            'Loop ကို အမြဲထာဝရ run စေရန်',
            'Variable အားလုံးကို ဖျက်ရန်',
            'Testing သည် ရွေးချယ်ခွင့်ဖြစ်ပြီး ရှားရှားပါးပါး လုပ်လေ့ရှိသောကြောင့်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is debugging?',
          questionMy: 'Debugging ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'Finding and fixing errors in a program',
            'Adding new features to a program',
            'Deleting a program entirely',
            'Renaming every variable',
          ],
          optionsMy: [
            'ပရိုဂရမ်တစ်ခုရှိ အမှားများကို ရှာဖွေပြင်ဆင်ခြင်း',
            'ပရိုဂရမ်တစ်ခုသို့ feature အသစ်များ ထည့်ခြင်း',
            'ပရိုဂရမ်တစ်ခုကို လုံးဝဖျက်ခြင်း',
            'Variable တိုင်းကို အမည်ပြန်ပေးခြင်း',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary1ComputingTerm5 = CourseTermDef(
  id: 'course-secondary1-computing-t5',
  termNumber: 5,
  titleEn: 'Programming Fundamentals III',
  titleMy: 'Programming အခြေခံများ ၃',
  certificateTitleEn: 'Programming Fundamentals III',
  certificateTitleMy: 'Programming အခြေခံ ၃',
  weeks: [
    _secondary1ComputingWeek17,
    _secondary1ComputingWeek18,
    _secondary1ComputingWeek19,
    _secondary1ComputingWeek20,
  ], // Term 5 complete (Weeks 17-20); Term 6 not authored yet
);

/// Secondary 1 Computing's full-year pathway. Terms 1-5 (Weeks 1-20) are
/// now represented -- [totalWeeks] stays 36 (the full roadmap's true
/// size) even though each term's [weeks] list is only a 4-week vertical
/// slice so far (a real term is closer to ~12 weeks), so UI code can show
/// "Week 1 of 36" honestly rather than "Week 1 of 20". Each [CourseTermDef]
/// is a short thematic/certificate milestone (Coursera-style), not a
/// literal 12-week school term, so the pathway grows via more terms
/// (6, 7, 8...) rather than by inflating any one term to 12 weeks.
const CoursePathwayDef secondary1ComputingPathway = CoursePathwayDef(
  id: 'course-secondary1-computing',
  subject: 'computing',
  grade: Grade.secondary1,
  titleEn: 'Computing — Full Year Course',
  titleMy: 'ကွန်ပျူတာ — နှစ်တစ်ခုလုံး သင်တန်း',
  descriptionEn:
      'A full academic-year computing course: 36 weeks of daily bite-sized lessons across multiple thematic terms.',
  descriptionMy:
      'ကွန်ပျူတာ ပညာသင်နှစ်တစ်ခုလုံး သင်တန်း - အပိုင်းများစွာအတွင်း ၃၆ ပတ်၊ နေ့စဉ် သင်ခန်းစာများ။',
  totalWeeks: 36,
  terms: [
    _secondary1ComputingTerm1,
    _secondary1ComputingTerm2,
    _secondary1ComputingTerm3,
    _secondary1ComputingTerm4,
    _secondary1ComputingTerm5,
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
