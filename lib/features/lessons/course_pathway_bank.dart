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
/// Secondary 1 Computing's full 36-week, 9-term pathway (see
/// [secondary1ComputingPathway]) is now complete: Term 1 (Computing
/// Foundations) and Term 2 (Networks, the Internet & Data) proved the
/// pipeline end-to-end (data model, all four interaction types, gamified
/// path UI, persisted completion); Terms 3, 4, 5 and 7 built a
/// Programming Fundamentals arc from algorithms/flowcharts through
/// pseudocode variables and selection/iteration to real Python-style
/// code; Term 6 (Data Representation) and Term 8 (Digital Citizenship &
/// Online Safety) broke up that arc with breadth strands so a real
/// full-year course doesn't read as programming end-to-end; Term 9
/// (Computational Thinking & Your Own Project) closes the year by naming
/// the decomposition/abstraction/pattern-recognition skills used
/// implicitly throughout, then has students plan and build a program of
/// their own. Weeks 1-4 (Term 1) follow a deliberate Cambridge/Collins-
/// style spiral: Week 1 introduces hardware vs. software and
/// input/output/storage; Week 2 revisits storage at a deeper level
/// (CPU/RAM/motherboard -- processing vs. memory vs. storage); Week 3
/// revisits the hardware/software split from the software side (system
/// vs. application software); Week 4 applies both back to a practical
/// skill (organizing files/folders), reinforcing storage and software
/// concepts in a new context rather than introducing them once and
/// moving on. Weeks 5-8 (Term 2) continue the spiral outward: Week 5
/// introduces networks (LAN/WAN, wired/wireless); Week 6 narrows to the
/// specific internet service students already use day-to-day (the Web,
/// browsers, search engines); Week 7 revisits that same internet/network
/// territory through an online-safety lens; Week 8 closes the term by
/// revisiting Term 1 Week 2's storage/hardware content at a deeper level
/// -- how storage is actually made of bits and bytes. This spiral
/// pattern (revisit earlier strands at a deeper level in a new context,
/// rather than teach once and move on) continues across every later term
/// through Week 36.
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
  ], // Term 5 complete (Weeks 17-20)
);

// =====================================================================
// Secondary 1 Computing -- Term 6, Week 21: "Binary: The Computer's Only
// Language"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek21 = CourseWeekDef(
  id: 'course-secondary1-computing-w21',
  weekNumber: 21,
  titleEn: "Binary: The Computer's Only Language",
  titleMy: 'Binary - ကွန်ပျူတာ၏ တစ်ခုတည်းသောဘာသာစကား',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w21-d1',
      dayNumber: 1,
      titleEn: 'Why Do Computers Only Use 0s and 1s?',
      titleMy: 'ကွန်ပျူတာသည် အဘယ့်ကြောင့် 0 နှင့် 1 ကိုသာ အသုံးပြုသနည်း',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              'In Week 8 you learned every bit is either a 0 or a 1. What real, physical thing inside a computer does a bit actually represent?',
          questionMy:
              'Week 8 တွင် bit တိုင်းသည် 0 သို့မဟုတ် 1 ဖြစ်ကြောင်း သင်ယူခဲ့ပြီးဖြစ်သည်။ bit တစ်ခုသည် ကွန်ပျူတာအတွင်းရှိ မည်သည့်အရာအမှန်ကို ကိုယ်စားပြုသနည်း။',
          optionsEn: [
            'An electrical signal that is either on or off',
            'A picture drawn on the screen',
            'A sound the speaker makes',
            'A key on the keyboard',
          ],
          optionsMy: [
            'On သို့မဟုတ် off ဖြစ်သော လျှပ်စစ်အချက်ပြမှု',
            'မျက်နှာပြင်ပေါ်တွင် ရေးဆွဲထားသော ပုံတစ်ပုံ',
            'Speaker မှထွက်သော အသံ',
            'Keyboard ပေါ်ရှိ ခလုတ်တစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What do we call a sequence of bits read together, such as 1011?',
          questionMy:
              '1011 ကဲ့သို့ အတူတကွဖတ်ရသော bit များစဉ်ကို ဘာဟုခေါ်သနည်း။',
          optionsEn: [
            'A binary number',
            'A single bit',
            'A pixel',
            'An algorithm',
          ],
          optionsMy: ['Binary ဂဏန်း', 'Bit တစ်ခုတည်း', 'Pixel', 'Algorithm'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Which of these is a valid binary number, using only the digits computers understand?',
          questionMy:
              'အောက်ပါတို့တွင် ကွန်ပျူတာနားလည်သော ဂဏန်းများကိုသာ အသုံးပြုထားသော မှန်ကန်သော binary ဂဏန်းမှာ အဘယ်နည်း။',
          optionsEn: ['1011', '1021', '2010', '1029'],
          optionsMy: ['1011', '1021', '2010', '1029'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'A row of 4 light switches, each either ON or OFF, is like 4 bits. How many different ON/OFF patterns can 4 switches make?',
          questionMy:
              'ON သို့မဟုတ် OFF ဖြစ်နိုင်သော မီးခလုတ် ၄ ခုတန်းစီသည် bit ၄ ခုနှင့်တူသည်။ မီးခလုတ် ၄ ခုသည် မတူညီသော ON/OFF ပုံစံ မည်မျှပြုလုပ်နိုင်သနည်း။',
          optionsEn: ['16', '4', '8', '2'],
          optionsMy: ['16', '4', '8', '2'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why can electronic circuits inside a computer represent binary so easily?',
          questionMy:
              'ကွန်ပျူတာအတွင်းရှိ လျှပ်စစ်ဆားကစ်များသည် binary ကို အဘယ့်ကြောင့် လွယ်ကူစွာ ကိုယ်စားပြုနိုင်သနည်း။',
          optionsEn: [
            'Because a circuit can easily be either on (current flowing) or off (no current)',
            'Because circuits can count to 10 directly',
            'Because circuits understand English letters',
            'Because circuits can only turn red or blue',
          ],
          optionsMy: [
            'ဆားကစ်တစ်ခုသည် on (လျှပ်စီးကြောင်းစီး) သို့မဟုတ် off (လျှပ်စီးကြောင်းမစီး) ဖြစ်နိုင်၍ လွယ်ကူစွာ ကိုယ်စားပြုနိုင်သောကြောင့်',
            'ဆားကစ်များသည် 10 အထိ တိုက်ရိုက်ရေတွက်နိုင်သောကြောင့်',
            'ဆားကစ်များသည် English အက္ခရာများကို နားလည်သောကြောင့်',
            'ဆားကစ်များသည် အနီရောင် သို့မဟုတ် အပြာရောင်သာ ပြောင်းနိုင်သောကြောင့်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w21-d2',
      dayNumber: 2,
      titleEn: 'Binary Vocabulary',
      titleMy: 'Binary ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w21-bin-binarynumber',
          termEn: 'Binary Number',
          termMy: 'Binary Number',
          matchEn: 'A sequence of bits, such as 1011, made only of 0s and 1s',
          matchMy: '1011 ကဲ့သို့ 0 နှင့် 1 သာဖြင့်ဖွဲ့စည်းထားသော bit များစဉ်',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w21-bin-bitpattern',
          termEn: 'Bit Pattern',
          termMy: 'Bit Pattern',
          matchEn:
              'A specific arrangement of 0s and 1s that can represent different data',
          matchMy:
              'ဒေတာအမျိုးမျိုးကို ကိုယ်စားပြုနိုင်သော 0 နှင့် 1 ၏ သီးခြားစီစဉ်မှု',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w21-bin-onstate',
          termEn: 'On State (1)',
          termMy: 'On State (1)',
          matchEn:
              'A bit representing an electrical signal that is switched on',
          matchMy: 'ဖွင့်ထားသော လျှပ်စစ်အချက်ပြမှုကို ကိုယ်စားပြုသော bit',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w21-bin-offstate',
          termEn: 'Off State (0)',
          termMy: 'Off State (0)',
          matchEn:
              'A bit representing an electrical signal that is switched off',
          matchMy: 'ပိတ်ထားသော လျှပ်စစ်အချက်ပြမှုကို ကိုယ်စားပြုသော bit',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w21-bin-circuit',
          termEn: 'Electronic Circuit',
          termMy: 'Electronic Circuit',
          matchEn:
              'The physical hardware inside a computer that can be either on or off',
          matchMy:
              'On သို့မဟုတ် off ဖြစ်နိုင်သော ကွန်ပျူတာအတွင်းရှိ ရုပ်ပိုင်းဆိုင်ရာ hardware',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w21-d3',
      dayNumber: 3,
      titleEn: 'Valid Binary Number or Not?',
      titleMy: 'မှန်ကန်သော Binary ဂဏန်းလား၊ မဟုတ်လား',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Valid Binary Number', 'Not a Valid Binary Number'],
        bucketsMy: ['Valid Binary Number', 'Not a Valid Binary Number'],
        items: [
          SortingItem(
            id: 'w21-sort-1011',
            labelEn: '1011',
            labelMy: '1011',
            correctBucketEn: 'Valid Binary Number',
            correctBucketMy: 'Valid Binary Number',
          ),
          SortingItem(
            id: 'w21-sort-1101',
            labelEn: '1101',
            labelMy: '1101',
            correctBucketEn: 'Valid Binary Number',
            correctBucketMy: 'Valid Binary Number',
          ),
          SortingItem(
            id: 'w21-sort-1021',
            labelEn: '1021',
            labelMy: '1021',
            correctBucketEn: 'Not a Valid Binary Number',
            correctBucketMy: 'Not a Valid Binary Number',
          ),
          SortingItem(
            id: 'w21-sort-0000',
            labelEn: '0000',
            labelMy: '0000',
            correctBucketEn: 'Valid Binary Number',
            correctBucketMy: 'Valid Binary Number',
          ),
          SortingItem(
            id: 'w21-sort-119',
            labelEn: '119',
            labelMy: '119',
            correctBucketEn: 'Not a Valid Binary Number',
            correctBucketMy: 'Not a Valid Binary Number',
          ),
          SortingItem(
            id: 'w21-sort-2222',
            labelEn: '2222',
            labelMy: '2222',
            correctBucketEn: 'Not a Valid Binary Number',
            correctBucketMy: 'Not a Valid Binary Number',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w21-d4',
      dayNumber: 4,
      titleEn: "Su Su's Light Switch Pattern",
      titleMy: 'စုစု၏ မီးခလုတ် ပုံစံ',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su's Light Switch Pattern",
        titleMy: 'စုစု၏ မီးခလုတ် ပုံစံ',
        passageEn:
            "Su Su's class was learning about binary, so her teacher gave everyone four light switches in a row and asked them to explore how many different patterns of ON and OFF they could make. Su Su realised each switch was just like a bit: ON meant 1, and OFF meant 0. With four switches, she could write down patterns like '0000', '0001', '1010', and '1111'. After trying every combination carefully, she counted exactly 16 different patterns -- the same number Kyaw Kyaw's teacher had mentioned back in Week 8 when talking about how much a group of bits can represent. Su Su realised that a computer's memory is really just millions of tiny switches like hers, all turning on and off to store every photo, message, and app on a phone.",
        passageMy:
            "စုစု၏ အတန်းသည် binary အကြောင်း သင်ယူနေကြရာ ဆရာမက အားလုံးအား တန်းစီထားသော မီးခလုတ်လေးခုကို ပေးပြီး ON နှင့် OFF ပုံစံ မည်မျှပြုလုပ်နိုင်သနည်းဟု စူးစမ်းခိုင်းခဲ့သည်။ စုစုသည် မီးခလုတ်တစ်ခုစီသည် bit တစ်ခုနှင့် တူညီကြောင်း သဘောပေါက်လိုက်သည် - ON ဆိုသည်မှာ 1 ဖြစ်ပြီး OFF ဆိုသည်မှာ 0 ဖြစ်သည်။ မီးခလုတ်လေးခုဖြင့် '0000'၊ '0001'၊ '1010'၊ '1111' ကဲ့သို့သော ပုံစံများကို ရေးမှတ်နိုင်ခဲ့သည်။ ဖြစ်နိုင်သည့် ပေါင်းစပ်မှုအားလုံးကို ဂရုတစိုက်စမ်းသပ်ပြီးနောက် ပုံစံ ၁၆ မျိုးရှိကြောင်း အတိအကျ ရေတွက်နိုင်ခဲ့သည် -- Week 8 တွင် ကျော်ကျော်၏ ဆရာက bit အုပ်စုတစ်ခု မည်မျှ ကိုယ်စားပြုနိုင်ကြောင်း ပြောခဲ့စဉ်က ဖော်ပြခဲ့သည့် ဂဏန်းအတိုင်းပင်ဖြစ်သည်။ ကွန်ပျူတာ၏ memory သည် သူမ၏ မီးခလုတ်များကဲ့သို့ ခလုတ်ငယ်များစွာ ဖွဲ့စည်းထားပြီး ဖုန်းရှိ ဓာတ်ပုံ၊ စာတိုင်း၊ app တိုင်းကို သိမ်းဆည်းရန် on/off အမြဲပြောင်းလဲနေခြင်းသာဖြစ်ကြောင်း စုစု သဘောပေါက်လိုက်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did each light switch represent in Su Su's class?",
            questionMy:
                'စုစုတို့အတန်းတွင် မီးခလုတ်တစ်ခုစီသည် ဘာကို ကိုယ်စားပြုခဲ့သနည်း။',
            optionsEn: [
              'A single bit',
              'A whole byte',
              'A pixel',
              'A kilobyte',
            ],
            optionsMy: ['Bit တစ်ခုတည်း', 'Byte တစ်ခုလုံး', 'Pixel', 'Kilobyte'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did ON mean in Su Su's pattern?",
            questionMy: 'စုစု၏ပုံစံတွင် ON ဆိုသည်မှာ ဘာကိုဆိုလိုသနည်း။',
            optionsEn: ['1', '0', 'A letter', 'A color'],
            optionsMy: ['1', '0', 'အက္ခရာတစ်ခု', 'အရောင်တစ်ခု'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'How many different ON/OFF patterns could 4 switches make?',
            questionMy:
                'မီးခလုတ် ၄ ခုသည် ON/OFF ပုံစံ မည်မျှ ပြုလုပ်နိုင်ခဲ့သနည်း။',
            optionsEn: ['16', '4', '8', '12'],
            optionsMy: ['16', '4', '8', '12'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What is a computer's memory really made of, according to the passage?",
            questionMy:
                'စာပိုဒ်အရ ကွန်ပျူတာ၏ memory သည် အမှန်တကယ် ဘာဖြင့်ဖွဲ့စည်းထားသနည်း။',
            optionsEn: [
              'Millions of tiny switches turning on and off',
              'Millions of tiny light bulbs that never turn off',
              'A single large switch',
              'Paper punched with holes',
            ],
            optionsMy: [
              'On/off အမြဲပြောင်းလဲနေသော ခလုတ်ငယ်များစွာ',
              'ဘယ်တော့မှ မပိတ်သော မီးလုံးငယ်များစွာ',
              'ခလုတ်ကြီးတစ်ခုတည်း',
              'အပေါက်ဖောက်ထားသော စက္ကူ',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'Which of these is a valid pattern using only 0s and 1s?',
            questionMy:
                'အောက်ပါတို့တွင် 0 နှင့် 1 ကိုသာ အသုံးပြုထားသော မှန်ကန်သောပုံစံမှာ အဘယ်နည်း။',
            optionsEn: ['1010', '1020', '2020', '1200'],
            optionsMy: ['1010', '1020', '2020', '1200'],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w21-d5',
      dayNumber: 5,
      titleEn: 'Week 21 Recap Quiz',
      titleMy: 'နှစ်ဆယ့်တစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
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
          questionEn: 'What does a bit represent electronically?',
          questionMy: 'Bit တစ်ခုသည် လျှပ်စစ်အားဖြင့် ဘာကို ကိုယ်စားပြုသနည်း။',
          optionsEn: [
            'An on or off electrical signal',
            'A spoken word',
            'A printed letter',
            'A musical note',
          ],
          optionsMy: [
            'On သို့မဟုတ် off လျှပ်စစ်အချက်ပြမှု',
            'ပြောဆိုထားသော စကားလုံး',
            'ပုံနှိပ်ထားသော အက္ခရာ',
            'ဂီတမှတ်တစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'How many different patterns can 4 bits make?',
          questionMy: 'Bit ၄ ခုသည် ပုံစံ မည်မျှ ပြုလုပ်နိုင်သနည်း။',
          optionsEn: ['16', '4', '8', '2'],
          optionsMy: ['16', '4', '8', '2'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which of these is a valid binary number?',
          questionMy: 'အောက်ပါတို့တွင် မှန်ကန်သော binary ဂဏန်းမှာ အဘယ်နည်း။',
          optionsEn: ['0110', '0190', '3210', '0192'],
          optionsMy: ['0110', '0190', '3210', '0192'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What do we call a sequence of bits such as 1010?',
          questionMy: '1010 ကဲ့သို့ bit များစဉ်ကို ဘာဟုခေါ်သနည်း။',
          optionsEn: [
            'A binary number',
            'A pixel',
            'A byte range',
            'An algorithm',
          ],
          optionsMy: ['Binary ဂဏန်း', 'Pixel', 'Byte range', 'Algorithm'],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 6, Week 22: "Converting Between Denary
// and Binary"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek22 = CourseWeekDef(
  id: 'course-secondary1-computing-w22',
  weekNumber: 22,
  titleEn: 'Converting Between Denary and Binary',
  titleMy: 'Denary နှင့် Binary ကူးပြောင်းခြင်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w22-d1',
      dayNumber: 1,
      titleEn: 'The Place Value Table',
      titleMy: 'Place Value ဇယား',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              'In an 8-bit binary number, what is the value of the left-most (biggest) place?',
          questionMy:
              '8-bit binary ဂဏန်းတစ်ခုတွင် ဘယ်ဘက်စွန်း (အကြီးဆုံး) နေရာ၏ တန်ဖိုးမှာ အဘယ်နည်း။',
          optionsEn: ['128', '64', '256', '8'],
          optionsMy: ['128', '64', '256', '8'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What do we call the everyday number system that uses digits 0-9, like the ones used for scores and prices?',
          questionMy:
              'Score များနှင့် စျေးနှုန်းများအတွက်သုံးသည့် 0-9 ဂဏန်းများကို အသုံးပြုသော နေ့စဉ်ဂဏန်းစနစ်ကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['Denary (decimal)', 'Binary', 'ASCII', 'Pixel'],
          optionsMy: ['Denary (decimal)', 'Binary', 'ASCII', 'Pixel'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'To convert binary 00001010 to denary, which place values have a 1 in them?',
          questionMy:
              'Binary 00001010 ကို denary သို့ ကူးပြောင်းရန် ဘယ် place value များတွင် 1 ပါသနည်း။',
          optionsEn: ['8 and 2', '4 and 1', '128 and 64', '16 and 2'],
          optionsMy: ['8 and 2', '4 and 1', '128 and 64', '16 and 2'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What is the largest denary value that fits in a single byte (8 bits)?',
          questionMy:
              'Byte တစ်ခု (bit 8 ခု) တွင် ဆံ့နိုင်သော အကြီးဆုံး denary တန်ဖိုးမှာ အဘယ်နည်း။',
          optionsEn: ['255', '256', '128', '99'],
          optionsMy: ['255', '256', '128', '99'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'When converting binary to denary, what do you do with the place values where the bit is 1?',
          questionMy:
              'Binary ကို denary သို့ ကူးပြောင်းရာတွင် bit သည် 1 ဖြစ်သော place value များကို မည်သို့ပြုလုပ်ရသနည်း။',
          optionsEn: [
            'Add them all together',
            'Multiply them all together',
            'Ignore them',
            'Subtract them from 255',
          ],
          optionsMy: [
            'အားလုံးကို ပေါင်းလိုက်ရသည်',
            'အားလုံးကို မြှောက်လိုက်ရသည်',
            'လျစ်လျူရှုလိုက်ရသည်',
            '255 မှနှုတ်လိုက်ရသည်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w22-d2',
      dayNumber: 2,
      titleEn: 'Conversion Vocabulary',
      titleMy: 'ကူးပြောင်းခြင်း ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w22-conv-denary',
          termEn: 'Denary',
          termMy: 'Denary',
          matchEn: 'The everyday base-10 number system using digits 0-9',
          matchMy: '0-9 ဂဏန်းများကို အသုံးပြုသော နေ့စဉ် base-10 ဂဏန်းစနစ်',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w22-conv-placevalue',
          termEn: 'Place Value',
          termMy: 'Place Value',
          matchEn:
              "The value a digit's position gives it, such as 128, 64, 32, and so on in binary",
          matchMy:
              'Binary တွင် 128၊ 64၊ 32 စသဖြင့် ဂဏန်း၏ အနေအထားကပေးသော တန်ဖိုး',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w22-conv-bintoden',
          termEn: 'Binary to Denary',
          termMy: 'Binary to Denary',
          matchEn:
              'Adding up the place values wherever a binary number has a 1',
          matchMy:
              'Binary ဂဏန်းတွင် 1 ရှိသည့်နေရာတိုင်းရှိ place value များကို ပေါင်းခြင်း',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w22-conv-dentobin',
          termEn: 'Denary to Binary',
          termMy: 'Denary to Binary',
          matchEn:
              'Working out which place values add up to make a given denary number',
          matchMy:
              'ပေးထားသော denary ဂဏန်းတစ်ခု ဖြစ်လာစေရန် ပေါင်းရမည့် place value များကို ရှာဖွေခြင်း',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w22-conv-byterange',
          termEn: 'Byte Range',
          termMy: 'Byte Range',
          matchEn:
              'The full set of denary values a single byte can store, 0 to 255',
          matchMy:
              'Byte တစ်ခု သိမ်းဆည်းနိုင်သော denary တန်ဖိုးအပြည့်အစုံ 0 မှ 255',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w22-d3',
      dayNumber: 3,
      titleEn: 'Odd or Even?',
      titleMy: 'ဂဏန်းမ ဂဏန်းစုံ',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Even Denary Value', 'Odd Denary Value'],
        bucketsMy: ['Even Denary Value', 'Odd Denary Value'],
        items: [
          SortingItem(
            id: 'w22-sort-1010',
            labelEn: '1010',
            labelMy: '1010',
            correctBucketEn: 'Even Denary Value',
            correctBucketMy: 'Even Denary Value',
          ),
          SortingItem(
            id: 'w22-sort-1011',
            labelEn: '1011',
            labelMy: '1011',
            correctBucketEn: 'Odd Denary Value',
            correctBucketMy: 'Odd Denary Value',
          ),
          SortingItem(
            id: 'w22-sort-0110',
            labelEn: '0110',
            labelMy: '0110',
            correctBucketEn: 'Even Denary Value',
            correctBucketMy: 'Even Denary Value',
          ),
          SortingItem(
            id: 'w22-sort-0111',
            labelEn: '0111',
            labelMy: '0111',
            correctBucketEn: 'Odd Denary Value',
            correctBucketMy: 'Odd Denary Value',
          ),
          SortingItem(
            id: 'w22-sort-1000',
            labelEn: '1000',
            labelMy: '1000',
            correctBucketEn: 'Even Denary Value',
            correctBucketMy: 'Even Denary Value',
          ),
          SortingItem(
            id: 'w22-sort-1001',
            labelEn: '1001',
            labelMy: '1001',
            correctBucketEn: 'Odd Denary Value',
            correctBucketMy: 'Odd Denary Value',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w22-d4',
      dayNumber: 4,
      titleEn: "Ko Ko's Score Converter",
      titleMy: 'ကိုကို၏ Score ကူးပြောင်းစက်',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Ko Ko's Score Converter",
        titleMy: 'ကိုကို၏ Score ကူးပြောင်းစက်',
        passageEn:
            "Ko Ko was building a simple scoreboard program and wanted to understand how the computer stored his score internally. His teacher showed him the place value table for an 8-bit byte: 128, 64, 32, 16, 8, 4, 2, and 1. To convert the binary number 00010110 to denary, Ko Ko looked at which place values had a 1: the 16, the 4, and the 2. Adding 16 + 4 + 2 gave him 22, so 00010110 in binary was the same as 22 in denary -- exactly his current game score. Ko Ko also learned that since a byte has only 8 bits, the biggest score it could ever store was 255, made from adding up every single place value at once. If his game needed a higher score than that, the program would need two bytes instead of one.",
        passageMy:
            'ကိုကိုသည် ရိုးရှင်းသော scoreboard ပရိုဂရမ်တစ်ခုကို တည်ဆောက်နေရာ ကွန်ပျူတာက သူ့ score ကို အတွင်းပိုင်းတွင် မည်သို့ သိမ်းဆည်းထားသည်ကို နားလည်လိုခဲ့သည်။ သူ့ဆရာက 8-bit byte တစ်ခု၏ place value ဇယားကို ပြသခဲ့သည် - 128၊ 64၊ 32၊ 16၊ 8၊ 4၊ 2၊ 1။ Binary ဂဏန်း 00010110 ကို denary သို့ ကူးပြောင်းရန် ကိုကိုသည် 1 ပါသော place value များကို ကြည့်ခဲ့သည် - 16၊ 4၊ နှင့် 2။ 16 + 4 + 2 ကို ပေါင်းလိုက်ရာ 22 ရရှိခဲ့ပြီး 00010110 binary သည် denary 22 နှင့် အတူတူပင်ဖြစ်ကြောင်း -- ၎င်းသည် သူ၏ ယခုလက်ရှိ ဂိမ်း score အတိအကျပင်ဖြစ်သည်။ Byte တစ်ခုတွင် bit ၈ ခုသာရှိသောကြောင့် သိမ်းဆည်းနိုင်သော အကြီးဆုံး score မှာ place value အားလုံးကို တစ်ပြိုင်နက်ပေါင်းလိုက်သော 255 ဖြစ်ကြောင်း ကိုကို သိရှိခဲ့သည်။ သူ့ဂိမ်းက ၎င်းထက် score ပိုမြင့်လိုအပ်ပါက ပရိုဂရမ်သည် byte တစ်ခုအစား နှစ်ခု လိုအပ်လာပေမည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What was Ko Ko's binary number equal to in denary?",
            questionMy:
                'ကိုကို၏ binary ဂဏန်းသည် denary တွင် မည်မျှ ညီမျှသနည်း။',
            optionsEn: ['22', '16', '10', '255'],
            optionsMy: ['22', '16', '10', '255'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Which place values had a 1 in Ko Ko's binary number?",
            questionMy:
                'ကိုကို၏ binary ဂဏန်းတွင် ဘယ် place value များတွင် 1 ပါခဲ့သနည်း။',
            optionsEn: [
              '16, 4, and 2',
              '128, 64, and 32',
              '8 and 1',
              '256 and 128',
            ],
            optionsMy: [
              '16, 4, and 2',
              '128, 64, and 32',
              '8 and 1',
              '256 and 128',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'What is the largest denary value a single byte can store?',
            questionMy:
                'Byte တစ်ခု သိမ်းဆည်းနိုင်သော အကြီးဆုံး denary တန်ဖိုးမှာ အဘယ်နည်း။',
            optionsEn: ['255', '256', '128', '99'],
            optionsMy: ['255', '256', '128', '99'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What would Ko Ko need if his game needed a score higher than a single byte can store?",
            questionMy:
                'ကိုကို၏ ဂိမ်းတွင် byte တစ်ခုသိမ်းနိုင်သည်ထက် score ပိုမြင့်လိုအပ်ပါက ဘာလိုအပ်မည်နည်း။',
            optionsEn: [
              'Two bytes instead of one',
              'A smaller place value table',
              'No bits at all',
              'A negative binary number',
            ],
            optionsMy: [
              'Byte တစ်ခုအစား နှစ်ခု',
              'ပိုသေးငယ်သော place value ဇယား',
              'Bit လုံးဝမရှိခြင်း',
              'Negative binary ဂဏန်းတစ်ခု',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Ko Ko's teacher show him to help with the conversion?",
            questionMy:
                'ကူးပြောင်းခြင်းကို ကူညီရန် ကိုကို၏ဆရာက ဘာကို ပြသခဲ့သနည်း။',
            optionsEn: [
              'The place value table',
              'A flowchart',
              'An ASCII table',
              'A pixel grid',
            ],
            optionsMy: [
              'Place value ဇယား',
              'Flowchart',
              'ASCII ဇယား',
              'Pixel grid',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w22-d5',
      dayNumber: 5,
      titleEn: 'Week 22 Recap Quiz',
      titleMy: 'နှစ်ဆယ့်နှစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is the biggest place value in an 8-bit byte?',
          questionMy:
              '8-bit byte တစ်ခုတွင် အကြီးဆုံး place value မှာ အဘယ်နည်း။',
          optionsEn: ['128', '64', '256', '1'],
          optionsMy: ['128', '64', '256', '1'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is the largest denary value a byte can store?',
          questionMy:
              'Byte တစ်ခု သိမ်းဆည်းနိုင်သော အကြီးဆုံး denary တန်ဖိုးမှာ အဘယ်နည်း။',
          optionsEn: ['255', '256', '128', '64'],
          optionsMy: ['255', '256', '128', '64'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'To convert binary to denary, what do you do with place values where the bit is 1?',
          questionMy:
              'Binary ကို denary ပြောင်းရန် bit 1 ဖြစ်သော place value များကို မည်သို့ပြုလုပ်ရသနည်း။',
          optionsEn: [
            'Add them together',
            'Multiply them',
            'Ignore them',
            'Subtract them',
          ],
          optionsMy: [
            'ပေါင်းလိုက်သည်',
            'မြှောက်လိုက်သည်',
            'လျစ်လျူရှုသည်',
            'နှုတ်လိုက်သည်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is the everyday base-10 number system called?',
          questionMy: 'နေ့စဉ်သုံး base-10 ဂဏန်းစနစ်ကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['Denary', 'Binary', 'ASCII', 'Pixel'],
          optionsMy: ['Denary', 'Binary', 'ASCII', 'Pixel'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'How many bits are in one byte?',
          questionMy: 'Byte တစ်ခုတွင် bit မည်မျှရှိသနည်း။',
          optionsEn: ['8', '2', '4', '16'],
          optionsMy: ['8', '2', '4', '16'],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 6, Week 23: "Representing Text and
// Images in Binary"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek23 = CourseWeekDef(
  id: 'course-secondary1-computing-w23',
  weekNumber: 23,
  titleEn: 'Representing Text and Images in Binary',
  titleMy: 'Binary ဖြင့် Text နှင့် Image ကို ကိုယ်စားပြုခြင်း',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w23-d1',
      dayNumber: 1,
      titleEn: 'From Characters to Numbers: ASCII',
      titleMy: 'Character များမှ ဂဏန်းများသို့ - ASCII',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "How does a computer store a letter like 'A'?",
          questionMy:
              "ကွန်ပျူတာသည် 'A' ကဲ့သို့ အက္ခရာတစ်ခုကို မည်သို့ သိမ်းဆည်းသနည်း။",
          optionsEn: [
            'As a number, using a character code such as ASCII',
            'As a tiny photograph of the letter',
            'As a sound recording',
            'As a physical switch permanently set to that letter',
          ],
          optionsMy: [
            'ASCII ကဲ့သို့ character code တစ်ခုကို အသုံးပြု၍ ဂဏန်းတစ်ခုအဖြစ်',
            'အက္ခရာ၏ ဓာတ်ပုံငယ်တစ်ပုံအဖြစ်',
            'အသံသွင်းချက်တစ်ခုအဖြစ်',
            'ထိုအက္ခရာအတွက် အမြဲတမ်း သတ်မှတ်ထားသော ရုပ်ပိုင်းဆိုင်ရာ ခလုတ်တစ်ခုအဖြစ်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What is the name of the common character code system that assigns each letter, digit, and symbol a number?',
          questionMy:
              'အက္ခရာ၊ ဂဏန်း၊ သင်္ကေတတိုင်းကို ဂဏန်းတစ်ခုပေးသော ရေပန်းစားသည့် character code စနစ်ကို ဘာဟုခေါ်သနည်း။',
          optionsEn: ['ASCII', 'Pixel', 'Byte', 'Binary'],
          optionsMy: ['ASCII', 'Pixel', 'Byte', 'Binary'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Once a character has a character code (a number), how does the computer actually store that number?',
          questionMy:
              'Character တစ်ခုသည် character code (ဂဏန်း) ရရှိပြီးနောက် ကွန်ပျူတာသည် ထိုဂဏန်းကို မည်သို့ သိမ်းဆည်းသနည်း။',
          optionsEn: [
            'As binary (0s and 1s)',
            'As a picture',
            'As a sound wave',
            'As a color',
          ],
          optionsMy: [
            'Binary (0s and 1s) အဖြစ်',
            'ပုံအဖြစ်',
            'အသံလှိုင်းအဖြစ်',
            'အရောင်အဖြစ်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is a pixel?',
          questionMy: 'Pixel ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'One single colored dot that makes up part of a digital image',
            'A single character code',
            'A unit of storage larger than a byte',
            'A type of loop',
          ],
          optionsMy: [
            'Digital ပုံတစ်ပုံ၏ တစ်စိတ်တစ်ပိုင်း ဖြစ်သော အရောင်ရှိအစက်တစ်စက်',
            'Character code တစ်ခုတည်း',
            'Byte ထက်ကြီးသော သိုလှောင်ခန်းယူနစ်',
            'Loop အမျိုးအစားတစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'How is the color of a single pixel stored inside a computer?',
          questionMy:
              'Pixel တစ်ခု၏ အရောင်ကို ကွန်ပျူတာအတွင်း မည်သို့ သိမ်းဆည်းသနည်း။',
          optionsEn: [
            'As a binary number',
            'As a spoken word',
            'As a character code only',
            'It is not stored at all',
          ],
          optionsMy: [
            'Binary ဂဏန်းအဖြစ်',
            'ပြောဆိုထားသော စကားလုံးအဖြစ်',
            'Character code အဖြစ်သာ',
            'လုံးဝ မသိမ်းဆည်းပါ',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w23-d2',
      dayNumber: 2,
      titleEn: 'Text and Image Vocabulary',
      titleMy: 'Text နှင့် Image ဆိုင်ရာ ဝေါဟာရများ',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w23-txt-ascii',
          termEn: 'ASCII',
          termMy: 'ASCII',
          matchEn:
              'A character code system that assigns every letter, digit, and symbol a number',
          matchMy:
              'အက္ခရာ၊ ဂဏန်း၊ သင်္ကေတတိုင်းကို ဂဏန်းတစ်ခုပေးသော character code စနစ်',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w23-txt-charcode',
          termEn: 'Character Code',
          termMy: 'Character Code',
          matchEn:
              'The specific number assigned to one character, later stored in binary',
          matchMy:
              'Character တစ်ခုသို့ ပေးအပ်ထားသော သီးခြားဂဏန်း၊ နောက်ပိုင်း binary ဖြင့် သိမ်းဆည်း',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w23-txt-pixel',
          termEn: 'Pixel',
          termMy: 'Pixel',
          matchEn:
              'One small colored dot; images are made of a grid of many pixels',
          matchMy:
              'အရောင်ရှိ အစက်ငယ်တစ်စက်၊ ပုံများသည် pixel များစွာ၏ ဇယားဖြင့်ဖွဲ့စည်း',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w23-txt-resolution',
          termEn: 'Resolution',
          termMy: 'Resolution',
          matchEn:
              'The number of pixels that make up an image -- more pixels means a sharper picture',
          matchMy:
              'ပုံတစ်ပုံဖွဲ့စည်းသော pixel အရေအတွက် -- pixel များလေ ပုံရှင်းလင်းလေ',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w23-txt-bitmap',
          termEn: 'Bitmap Image',
          termMy: 'Bitmap Image',
          matchEn:
              'A digital image stored as a grid of pixels, each with its own binary color value',
          matchMy:
              'Pixel တစ်ခုစီတွင် ကိုယ်ပိုင် binary အရောင်တန်ဖိုးရှိသော ဇယားအဖြစ် သိမ်းဆည်းထားသော digital ပုံ',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w23-d3',
      dayNumber: 3,
      titleEn: 'Text or Image?',
      titleMy: 'Text လား Image လား',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ['Represents Text', 'Represents an Image'],
        bucketsMy: ['Represents Text', 'Represents an Image'],
        items: [
          SortingItem(
            id: 'w23-sort-asciicode',
            labelEn: 'ASCII code',
            labelMy: 'ASCII code',
            correctBucketEn: 'Represents Text',
            correctBucketMy: 'Represents Text',
          ),
          SortingItem(
            id: 'w23-sort-characterset',
            labelEn: 'Character set',
            labelMy: 'Character set',
            correctBucketEn: 'Represents Text',
            correctBucketMy: 'Represents Text',
          ),
          SortingItem(
            id: 'w23-sort-pixel',
            labelEn: 'Pixel',
            labelMy: 'Pixel',
            correctBucketEn: 'Represents an Image',
            correctBucketMy: 'Represents an Image',
          ),
          SortingItem(
            id: 'w23-sort-pixelcolor',
            labelEn: 'Pixel color value',
            labelMy: 'Pixel color value',
            correctBucketEn: 'Represents an Image',
            correctBucketMy: 'Represents an Image',
          ),
          SortingItem(
            id: 'w23-sort-resolution',
            labelEn: 'Resolution',
            labelMy: 'Resolution',
            correctBucketEn: 'Represents an Image',
            correctBucketMy: 'Represents an Image',
          ),
          SortingItem(
            id: 'w23-sort-lettera',
            labelEn: 'Letter A stored as a number',
            labelMy: 'Letter A ကို ဂဏန်းအဖြစ်သိမ်းဆည်းခြင်း',
            correctBucketEn: 'Represents Text',
            correctBucketMy: 'Represents Text',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w23-d4',
      dayNumber: 4,
      titleEn: "Moe Moe's Secret Message",
      titleMy: 'မိုမို၏ လျှို့ဝှက်စာ',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Moe Moe's Secret Message",
        titleMy: 'မိုမို၏ လျှို့ဝှက်စာ',
        passageEn:
            "Moe Moe wanted to send her friend a secret message using only numbers. She learned that every character on her keyboard already has a secret number of its own, called a character code -- in the common ASCII system, the letter 'A' is 65, 'B' is 66, and so on. Moe Moe wrote her friend's name as a list of ASCII numbers instead of letters, knowing the computer would store each of those numbers in binary underneath anyway. Her classmate Thiha was working on something similar with a tiny 4x4 pixel image of a smiley face: each of the 16 pixels had its own color, and each color was stored as a binary number too. Moe Moe realised that whether it was a text message or a picture, a computer only ever really stored one thing -- numbers written in binary.",
        passageMy:
            "မိုမိုသည် သူငယ်ချင်းထံ ဂဏန်းများသာအသုံးပြု၍ လျှို့ဝှက်စာတစ်စောင် ပို့လိုခဲ့သည်။ သူမ၏ keyboard ပေါ်ရှိ character တိုင်းသည် character code ဟုခေါ်သော ကိုယ်ပိုင်လျှို့ဝှက်ဂဏန်းရှိပြီးဖြစ်ကြောင်း သိရှိခဲ့သည် -- ရေပန်းစားသော ASCII စနစ်တွင် 'A' သည် 65 ဖြစ်ပြီး 'B' သည် 66 ဖြစ်သည်။ မိုမိုသည် သူ့သူငယ်ချင်းအမည်ကို အက္ခရာအစား ASCII ဂဏန်းများစာရင်းအဖြစ် ရေးခဲ့ပြီး ကွန်ပျူတာက ထိုဂဏန်းတစ်ခုစီကို binary ဖြင့် အတွင်းတွင် သိမ်းဆည်းမည်ကို သိထားသည်။ သူမ၏အတန်းသား သီဟသည် 4x4 pixel ပါ smiley face ပုံငယ်တစ်ပုံနှင့် ဆင်တူသော အလုပ်တစ်ခု လုပ်နေသည် - pixel ၁၆ ခုစီတွင် ၎င်းတို့၏ အရောင်ရှိပြီး ထိုအရောင်တစ်ခုစီကိုလည်း binary ဂဏန်းအဖြစ် သိမ်းဆည်းထားသည်။ Text message ဖြစ်စေ၊ ပုံဖြစ်စေ ကွန်ပျူတာသည် binary ဖြင့်ရေးထားသော ဂဏန်းများကိုသာ အမှန်တကယ် သိမ်းဆည်းနေခြင်းသာဖြစ်ကြောင်း မိုမို သဘောပေါက်လိုက်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: 'What is a character code?',
            questionMy: 'Character code ဆိုသည်မှာ အဘယ်နည်း။',
            optionsEn: [
              'A secret number assigned to each character',
              'A type of image file',
              'A loop that repeats letters',
              'A pixel grid',
            ],
            optionsMy: [
              'Character တစ်ခုစီသို့ ပေးအပ်ထားသော လျှို့ဝှက်ဂဏန်း',
              'ပုံဖိုင် အမျိုးအစားတစ်ခု',
              'အက္ခရာများကို ထပ်ခါလုပ်သော loop',
              'Pixel grid',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "In ASCII, what number does the letter 'A' have?",
            questionMy: "ASCII တွင် 'A' အက္ခရာသည် ဂဏန်းမည်မျှရှိသနည်း။",
            optionsEn: ['65', '66', '1', '100'],
            optionsMy: ['65', '66', '1', '100'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How many pixels were in Thiha's smiley face image?",
            questionMy: 'သီဟ၏ smiley face ပုံတွင် pixel မည်မျှရှိခဲ့သနည်း။',
            optionsEn: ['16', '4', '8', '64'],
            optionsMy: ['16', '4', '8', '64'],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How is each pixel's color stored inside a computer?",
            questionMy:
                'Pixel တစ်ခုစီ၏ အရောင်ကို ကွန်ပျူတာအတွင်း မည်သို့ သိမ်းဆည်းသနည်း။',
            optionsEn: [
              'As a binary number',
              'As a spoken description',
              'As a character code only',
              'As a physical color chip',
            ],
            optionsMy: [
              'Binary ဂဏန်းအဖြစ်',
              'ပြောဆိုထားသော ဖော်ပြချက်အဖြစ်',
              'Character code အဖြစ်သာ',
              'ရုပ်ပိုင်းဆိုင်ရာ အရောင်ခြစ်တစ်ခုအဖြစ်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to Moe Moe's realisation, what does a computer really store underneath everything?",
            questionMy:
                'မိုမို၏ သဘောပေါက်မှုအရ ကွန်ပျူတာသည် အားလုံး၏ အောက်ခံတွင် အမှန်တကယ် ဘာကို သိမ်းဆည်းထားသနည်း။',
            optionsEn: [
              'Numbers written in binary',
              'Pictures drawn by hand',
              'Sounds recorded on tape',
              'Letters printed on paper',
            ],
            optionsMy: [
              'Binary ဖြင့်ရေးထားသော ဂဏန်းများ',
              'လက်ဖြင့်ရေးဆွဲထားသော ပုံများ',
              'Tape ပေါ်တွင်သွင်းထားသော အသံများ',
              'စက္ကူပေါ်တွင် ပုံနှိပ်ထားသော အက္ခရာများ',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w23-d5',
      dayNumber: 5,
      titleEn: 'Week 23 Recap Quiz',
      titleMy: 'နှစ်ဆယ့်သုံးပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              'What does ASCII assign to each letter, digit, and symbol?',
          questionMy:
              'ASCII သည် အက္ခရာ၊ ဂဏန်း၊ သင်္ကေတတိုင်းကို ဘာပေးအပ်သနည်း။',
          optionsEn: ['A number', 'A color', 'A sound', 'A loop'],
          optionsMy: ['ဂဏန်းတစ်ခု', 'အရောင်တစ်ခု', 'အသံတစ်ခု', 'Loop တစ်ခု'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is a pixel?',
          questionMy: 'Pixel ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'One colored dot that makes up part of an image',
            'A character code',
            'A unit larger than a byte',
            'A loop counter',
          ],
          optionsMy: [
            'ပုံ၏တစ်စိတ်တစ်ပိုင်းဖြစ်သော အရောင်ရှိအစက်တစ်စက်',
            'Character code',
            'Byte ထက်ကြီးသော ယူနစ်',
            'Loop counter',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'How is a character code eventually stored inside a computer?',
          questionMy:
              'Character code တစ်ခုကို ကွန်ပျူတာအတွင်း နောက်ဆုံး မည်သို့ သိမ်းဆည်းသနည်း။',
          optionsEn: ['As binary', 'As a sound', 'As a color chip', 'As paper'],
          optionsMy: [
            'Binary အဖြစ်',
            'အသံအဖြစ်',
            'အရောင်ခြစ်အဖြစ်',
            'စက္ကူအဖြစ်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What does resolution measure?',
          questionMy: 'Resolution သည် ဘာကို တိုင်းတာသနည်း။',
          optionsEn: [
            'The number of pixels that make up an image',
            'The number of characters in a message',
            'The speed of a loop',
            'The size of a variable name',
          ],
          optionsMy: [
            'ပုံတစ်ပုံဖွဲ့စည်းသော pixel အရေအတွက်',
            'စာတိုတစ်ခုရှိ character အရေအတွက်',
            'Loop ၏အမြန်နှုန်း',
            'Variable အမည်၏ အရွယ်အစား',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What do both text and images ultimately get stored as?',
          questionMy:
              'Text နှင့် image နှစ်ခုစလုံးကို နောက်ဆုံးတွင် ဘာအဖြစ် သိမ်းဆည်းသနည်း။',
          optionsEn: [
            'Binary numbers',
            'Spoken words',
            'Physical objects',
            'Colored ink',
          ],
          optionsMy: [
            'Binary ဂဏန်းများ',
            'ပြောဆိုထားသော စကားလုံးများ',
            'ရုပ်ပိုင်းဆိုင်ရာ ပစ္စည်းများ',
            'အရောင်စက္ကူ',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 6, Week 24: "Data Representation in the
// Real World" (capstone)
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek24 = CourseWeekDef(
  id: 'course-secondary1-computing-w24',
  weekNumber: 24,
  titleEn: 'Data Representation in the Real World',
  titleMy: 'လက်တွေ့ဘဝတွင် ဒေတာ ကိုယ်စားပြုမှု',
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: 'course-s1-computing-w24-d1',
      dayNumber: 1,
      titleEn: 'Putting Data Representation Together',
      titleMy: 'ဒေတာ ကိုယ်စားပြုမှု ပေါင်းစပ်ခြင်း',
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is the smallest unit of data in a computer?',
          questionMy: 'ကွန်ပျူတာတစ်ခု၏ ဒေတာအသေးငယ်ဆုံးယူနစ်မှာ အဘယ်နည်း။',
          optionsEn: ['A bit', 'A byte', 'A pixel', 'A kilobyte'],
          optionsMy: ['Bit', 'Byte', 'Pixel', 'Kilobyte'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Why does a short text message usually take up less storage than a high-resolution photo?',
          questionMy:
              'စာတိုတစ်ခုသည် ပုံရိပ်ကြည်လင်သော ဓာတ်ပုံတစ်ပုံထက် သိုလှောင်ခန်း အဘယ့်ကြောင့် နည်းပါးသနည်း။',
          optionsEn: [
            'A photo is made of many pixels, each needing its own binary color value, while text needs far fewer character codes',
            'Text cannot be stored in binary',
            'Photos do not use any storage at all',
            'A photo always has fewer bits than a single letter',
          ],
          optionsMy: [
            'ဓာတ်ပုံသည် pixel များစွာဖြင့်ဖွဲ့စည်းထားပြီး တစ်ခုစီတွင် ကိုယ်ပိုင် binary အရောင်တန်ဖိုးလိုအပ်ပြီး text တွင်မူ character code အနည်းငယ်သာ လိုအပ်၍',
            'Text ကို binary ဖြင့် မသိမ်းဆည်းနိုင်၍',
            'ဓာတ်ပုံများသည် သိုလှောင်ခန်း လုံးဝမသုံး၍',
            'ဓာတ်ပုံတစ်ပုံသည် အက္ခရာတစ်လုံးထက် bit ပိုနည်းသောကြောင့်',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What lets a computer turn the letters you type into binary?',
          questionMy:
              'ကွန်ပျူတာသည် သင်ရိုက်ထည့်သော အက္ခရာများကို binary အဖြစ် ဘာက ပြောင်းလဲစေသနည်း။',
          optionsEn: [
            'A character code system such as ASCII',
            'A sorting bucket',
            'A loop counter',
            'A comparison operator',
          ],
          optionsMy: [
            'ASCII ကဲ့သို့ character code စနစ်',
            'Sorting bucket',
            'Loop counter',
            'Comparison operator',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'Which unit of data is the largest?',
          questionMy: 'ဒေတာယူနစ်များအနက် ဘယ်ဟာက အကြီးဆုံးဖြစ်သနည်း။',
          optionsEn: ['A megabyte (MB)', 'A kilobyte (KB)', 'A byte', 'A bit'],
          optionsMy: ['Megabyte (MB)', 'Kilobyte (KB)', 'Byte', 'Bit'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What do bits, bytes, character codes, and pixel colors all have in common?',
          questionMy:
              'Bit၊ byte၊ character code၊ pixel color တို့တွင် ဘာအားလုံးဆက်စပ်မှုရှိသနည်း။',
          optionsEn: [
            'They are all ultimately stored using only 0s and 1s',
            'They are all measured in seconds',
            'They are all types of loops',
            'They are all names for the same exact thing',
          ],
          optionsMy: [
            'အားလုံးသည် နောက်ဆုံးတွင် 0 နှင့် 1 ကိုသာအသုံးပြု၍ သိမ်းဆည်း',
            'အားလုံးသည် စက္ကန့်ဖြင့် တိုင်းတာ',
            'အားလုံးသည် loop အမျိုးအစားများ',
            'အားလုံးသည် အတူတူတစ်ခုတည်း၏ အမည်များ',
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w24-d2',
      dayNumber: 2,
      titleEn: 'Data Representation Recap',
      titleMy: 'ဒေတာ ကိုယ်စားပြုမှု ပြန်လည်သုံးသပ်ခြင်း',
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: 'w24-recap-bit',
          termEn: 'Bit',
          termMy: 'Bit',
          matchEn: 'The smallest unit of data, either a 0 or a 1',
          matchMy: 'ဒေတာ၏ အသေးငယ်ဆုံးယူနစ်၊ 0 သို့မဟုတ် 1',
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: 'w24-recap-byte',
          termEn: 'Byte',
          termMy: 'Byte',
          matchEn:
              'A group of 8 bits, able to store any denary value from 0 to 255',
          matchMy:
              'Bit ၈ ခုပါဝင်သော အုပ်စု၊ denary တန်ဖိုး 0 မှ 255 အထိ သိမ်းဆည်းနိုင်',
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: 'w24-recap-binarynumber',
          termEn: 'Binary Number',
          termMy: 'Binary Number',
          matchEn:
              'A sequence of bits, such as 1011, used to represent all data inside a computer',
          matchMy:
              'ကွန်ပျူတာအတွင်းရှိ ဒေတာအားလုံးကို ကိုယ်စားပြုရန်သုံးသော 1011 ကဲ့သို့ bit များစဉ်',
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: 'w24-recap-charcode',
          termEn: 'Character Code',
          termMy: 'Character Code',
          matchEn:
              'A number, such as an ASCII code, that represents one letter, digit, or symbol',
          matchMy:
              'အက္ခရာ၊ ဂဏန်း၊ သင်္ကေတတစ်ခုကို ကိုယ်စားပြုသော ASCII code ကဲ့သို့ ဂဏန်းတစ်ခု',
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: 'w24-recap-pixel',
          termEn: 'Pixel',
          termMy: 'Pixel',
          matchEn:
              'One colored dot in a digital image, with its color stored as a binary number',
          matchMy:
              'Digital ပုံတစ်ပုံရှိ အရောင်ရှိအစက်တစ်စက်၊ ၎င်း၏အရောင်ကို binary ဂဏန်းအဖြစ် သိမ်းဆည်း',
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w24-d3',
      dayNumber: 3,
      titleEn: 'Which Data Representation Concept?',
      titleMy: 'ဘယ် ဒေတာ ကိုယ်စားပြုမှု သဘောတရားလဲ',
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          'Binary Basics',
          'Text Encoding',
          'Image Encoding',
          'Storage Unit',
        ],
        bucketsMy: [
          'Binary Basics',
          'Text Encoding',
          'Image Encoding',
          'Storage Unit',
        ],
        items: [
          SortingItem(
            id: 'w24-sort-0and1',
            labelEn: '0 and 1',
            labelMy: '0 and 1',
            correctBucketEn: 'Binary Basics',
            correctBucketMy: 'Binary Basics',
          ),
          SortingItem(
            id: 'w24-sort-onoffbit',
            labelEn: 'A bit that is either on or off',
            labelMy: 'On သို့မဟုတ် off ဖြစ်သော bit တစ်ခု',
            correctBucketEn: 'Binary Basics',
            correctBucketMy: 'Binary Basics',
          ),
          SortingItem(
            id: 'w24-sort-asciicode',
            labelEn: 'ASCII code',
            labelMy: 'ASCII code',
            correctBucketEn: 'Text Encoding',
            correctBucketMy: 'Text Encoding',
          ),
          SortingItem(
            id: 'w24-sort-charactercode',
            labelEn: 'Character code',
            labelMy: 'Character code',
            correctBucketEn: 'Text Encoding',
            correctBucketMy: 'Text Encoding',
          ),
          SortingItem(
            id: 'w24-sort-pixelcolorvalue',
            labelEn: 'Pixel color value',
            labelMy: 'Pixel color value',
            correctBucketEn: 'Image Encoding',
            correctBucketMy: 'Image Encoding',
          ),
          SortingItem(
            id: 'w24-sort-kilobyte',
            labelEn: 'Kilobyte (KB)',
            labelMy: 'Kilobyte (KB)',
            correctBucketEn: 'Storage Unit',
            correctBucketMy: 'Storage Unit',
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w24-d4',
      dayNumber: 4,
      titleEn: "Zaw's School Poster",
      titleMy: 'ဇော်၏ ကျောင်းပိုစတာ',
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Zaw's School Poster",
        titleMy: 'ဇော်၏ ကျောင်းပိုစတာ',
        passageEn:
            "For his final computing project, Zaw designed a digital poster combining a title made of text and a small logo image. He remembered that his title's letters would each be stored using ASCII character codes, and those codes -- like every other kind of data -- would ultimately be stored as binary numbers made of bits. His logo was a tiny image built from a grid of pixels, and each pixel's color was also stored as its own binary number, just like Thiha's smiley face from Week 23. When Zaw checked his poster's final file size, he noticed the logo image took up far more storage than the title text, since a single pixel already needs its own binary number and his logo had hundreds of them, while his title only needed a handful of character codes. Zaw's teacher explained that this was exactly why photos and videos use so much more of a phone's storage than text messages do -- everything comes down to how many bits are needed, whether measured in bytes, kilobytes, or megabytes.",
        passageMy:
            'Zaw ၏ နောက်ဆုံးကွန်ပျူတာပရောဂျက်အတွက် သူသည် Text ဖြင့် ခေါင်းစဉ်တစ်ခုနှင့် logo ပုံငယ်တစ်ပုံကို ပေါင်းစပ်ထားသော digital ပိုစတာတစ်ခု ဒီဇိုင်းဆွဲခဲ့သည်။ သူ့ခေါင်းစဉ်ရှိ အက္ခရာတစ်ခုစီသည် ASCII character code များဖြင့် သိမ်းဆည်းထားမည်ကို မှတ်မိပြီး ထိုကုဒ်များသည် -- ဒေတာအခြားအမျိုးအစားများကဲ့သို့ပင် -- နောက်ဆုံးတွင် bit များဖြင့်ဖွဲ့စည်းထားသော binary ဂဏန်းများအဖြစ် သိမ်းဆည်းမည်ဖြစ်ကြောင်း သိထားသည်။ သူ့ logo သည် pixel ဇယားမှ တည်ဆောက်ထားသော ပုံငယ်တစ်ပုံဖြစ်ပြီး pixel တစ်ခုစီ၏အရောင်ကိုလည်း Week 23 မှ သီဟ၏ smiley face ကဲ့သို့ ကိုယ်ပိုင် binary ဂဏန်းအဖြစ် သိမ်းဆည်းထားသည်။ Zaw သည် သူ့ပိုစတာ၏ file size နောက်ဆုံးကို စစ်ဆေးကြည့်ရာ pixel တစ်ခုစီသည် ၎င်း၏ကိုယ်ပိုင် binary ဂဏန်းလိုအပ်ပြီး logo တွင် ရာနှင့်ချီပါဝင်နေသဖြင့် logo ပုံသည် ခေါင်းစဉ် text ထက် သိုလှောင်ခန်းများစွာ ပိုယူနေကြောင်း တွေ့ရှိခဲ့သည်၊ ခေါင်းစဉ်တွင်မူ character code အနည်းငယ်သာ လိုအပ်သည်။ Zaw ၏ ဆရာက ဓာတ်ပုံနှင့် ဗီဒီယိုများသည် text message များထက် ဖုန်း၏ သိုလှောင်ခန်းကို ပိုမိုအသုံးများနေရသည့် အကြောင်းရင်းမှာ ဤအတိုင်းပင်ဖြစ်ကြောင်း -- Byte၊ Kilobyte၊ Megabyte မည်သို့တိုင်းတာစေ bit မည်မျှလိုအပ်သည်ဆိုသည်အပေါ်သာ မူတည်ကြောင်း ရှင်းပြခဲ့သည်။',
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What two things did Zaw's poster combine?",
            questionMy: 'ဇော်၏ ပိုစတာသည် ဘာနှစ်ခုကို ပေါင်းစပ်ထားခဲ့သနည်း။',
            optionsEn: [
              'A text title and a logo image',
              'Two separate videos',
              'A loop and a variable',
              'Two ASCII tables',
            ],
            optionsMy: [
              'Text ခေါင်းစဉ်တစ်ခုနှင့် logo ပုံတစ်ပုံ',
              'သီးခြားဗီဒီယိုနှစ်ခု',
              'Loop နှင့် variable',
              'ASCII ဇယားနှစ်ခု',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How were the letters in Zaw's title stored?",
            questionMy:
                'ဇော်၏ ခေါင်းစဉ်ရှိ အက္ခရာများကို မည်သို့ သိမ်းဆည်းခဲ့သနည်း။',
            optionsEn: [
              'As ASCII character codes, then as binary',
              'As spoken sounds',
              'As pixels only',
              'As kilobytes directly',
            ],
            optionsMy: [
              'ASCII character code များအဖြစ်၊ ပြီးလျှင် binary အဖြစ်',
              'ပြောဆိုထားသော အသံများအဖြစ်',
              'Pixel များအဖြစ်သာ',
              'Kilobyte များအဖြစ် တိုက်ရိုက်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                'Why did the logo image take up more storage than the title text?',
            questionMy:
                'Logo ပုံသည် ခေါင်းစဉ် text ထက် သိုလှောင်ခန်း အဘယ့်ကြောင့် ပိုယူခဲ့သနည်း။',
            optionsEn: [
              'Each pixel needed its own binary color value, and there were hundreds of them',
              'Images are never stored in binary',
              'Text always needs more character codes than pixels',
              'The logo had no color at all',
            ],
            optionsMy: [
              'Pixel တစ်ခုစီသည် ကိုယ်ပိုင် binary အရောင်တန်ဖိုးလိုအပ်ပြီး ရာနှင့်ချီပါဝင်နေ၍',
              'ပုံများကို binary ဖြင့် ဘယ်တော့မှ မသိမ်းဆည်း၍',
              'Text သည် pixel ထက် character code ပိုလိုအပ်အမြဲ၍',
              'Logo တွင် အရောင် လုံးဝမရှိ၍',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to Zaw's teacher, what determines how much storage something needs?",
            questionMy:
                'ဇော်၏ဆရာအရ တစ်ခုခုသည် သိုလှောင်ခန်း မည်မျှလိုအပ်သည်ကို ဘာက ဆုံးဖြတ်သနည်း။',
            optionsEn: [
              'How many bits are needed to represent it',
              'The color of the file icon',
              'How old the file is',
              'The name of the file',
            ],
            optionsMy: [
              '၎င်းကို ကိုယ်စားပြုရန် bit မည်မျှလိုအပ်သည်',
              'File icon ၏ အရောင်',
              'File ၏ အသက်အရွယ်',
              'File ၏ အမည်',
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What units did Zaw's teacher mention for measuring storage?",
            questionMy:
                'ဇော်၏ ဆရာက သိုလှောင်ခန်း တိုင်းတာရန် ဘယ်ယူနစ်များကို ဖော်ပြခဲ့သနည်း။',
            optionsEn: [
              'Bytes, kilobytes, and megabytes',
              'Bits per second only',
              'Pixels per inch only',
              'ASCII codes only',
            ],
            optionsMy: [
              'Byte၊ kilobyte၊ megabyte',
              'Bits per second သာ',
              'Pixels per inch သာ',
              'ASCII code များသာ',
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: 'course-s1-computing-w24-d5',
      dayNumber: 5,
      titleEn: 'Week 24 Recap Quiz',
      titleMy: 'နှစ်ဆယ့်လေးပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ',
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: 'What is the smallest unit of data a computer uses?',
          questionMy: 'ကွန်ပျူတာတစ်ခုသုံးသော ဒေတာအသေးငယ်ဆုံးယူနစ်မှာ အဘယ်နည်း။',
          optionsEn: ['A bit', 'A byte', 'A pixel', 'A kilobyte'],
          optionsMy: ['Bit', 'Byte', 'Pixel', 'Kilobyte'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'How many bits make up one byte?',
          questionMy: 'Byte တစ်ခုတွင် bit မည်မျှပါဝင်သနည်း။',
          optionsEn: ['8', '2', '10', '16'],
          optionsMy: ['8', '2', '10', '16'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'What system assigns each letter, digit, and symbol a number?',
          questionMy:
              'အက္ခရာ၊ ဂဏန်း၊ သင်္ကေတတိုင်းကို ဂဏန်းတစ်ခုပေးအပ်သော စနစ်မှာ အဘယ်နည်း။',
          optionsEn: ['ASCII', 'Binary', 'Pixel grid', 'Sorting bucket'],
          optionsMy: ['ASCII', 'Binary', 'Pixel grid', 'Sorting bucket'],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: 'What is a pixel?',
          questionMy: 'Pixel ဆိုသည်မှာ အဘယ်နည်း။',
          optionsEn: [
            'One colored dot that makes up part of a digital image',
            'A character code',
            'A unit larger than a byte',
            'A type of loop',
          ],
          optionsMy: [
            'Digital ပုံ၏ တစ်စိတ်တစ်ပိုင်းဖြစ်သော အရောင်ရှိအစက်တစ်စက်',
            'Character code',
            'Byte ထက်ကြီးသော ယူနစ်',
            'Loop အမျိုးအစားတစ်ခု',
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              'Ultimately, what does every piece of data in a computer come down to?',
          questionMy:
              'ကွန်ပျူတာတစ်ခုရှိ ဒေတာတိုင်းသည် နောက်ဆုံးတွင် ဘာအဖြစ် ရှိနေသနည်း။',
          optionsEn: [
            'Binary numbers made of 0s and 1s',
            'Spoken words',
            'Physical paper',
            'Colored ink',
          ],
          optionsMy: [
            '0 နှင့် 1 ဖြင့်ဖွဲ့စည်းထားသော binary ဂဏန်းများ',
            'ပြောဆိုထားသော စကားလုံးများ',
            'ရုပ်ပိုင်းဆိုင်ရာ စက္ကူ',
            'အရောင်စက္ကူမင်',
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary1ComputingTerm6 = CourseTermDef(
  id: 'course-secondary1-computing-t6',
  termNumber: 6,
  titleEn: 'Data Representation',
  titleMy: 'ဒေတာ ကိုယ်စားပြုမှု',
  certificateTitleEn: 'Data Representation',
  certificateTitleMy: 'ဒေတာ ကိုယ်စားပြုမှု',
  weeks: [
    _secondary1ComputingWeek21,
    _secondary1ComputingWeek22,
    _secondary1ComputingWeek23,
    _secondary1ComputingWeek24,
  ], // Term 6 complete (Weeks 21-24)
);

// =====================================================================
// Secondary 1 Computing -- Term 7, Week 25: "Meet a Real Programming
// Language"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek25 = CourseWeekDef(
  id: "course-secondary1-computing-w25",
  weekNumber: 25,
  titleEn: "Meet a Real Programming Language",
  titleMy: "အစစ်အမှန် Programming Language နှင့် တွေ့ဆုံခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s1-computing-w25-d1",
      dayNumber: 1,
      titleEn: "From Pseudocode to Real Code",
      titleMy: "Pseudocode မှ အစစ်အမှန် Code သို့",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What is the main difference between pseudocode and a real programming language?",
          questionMy:
              "Pseudocode နှင့် အစစ်အမှန် programming language ကြား အဓိကကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A real language must follow exact syntax rules a computer can run, while pseudocode does not",
            "Pseudocode always runs faster than real code",
            "A real programming language has no variables",
            "Pseudocode is only used by computers, not people",
          ],
          optionsMy: [
            "အစစ်အမှန် language သည် ကွန်ပျူတာ run နိုင်သော အတိအကျ syntax စည်းမျဉ်းများကို လိုက်နာရသော်လည်း pseudocode တွင် မလိုအပ်ပါ",
            "Pseudocode သည် အစစ်အမှန် code ထက် အမြဲမြန်သည်",
            "အစစ်အမှန် programming language တွင် variable မရှိပါ",
            "Pseudocode ကို ကွန်ပျူတာသာ အသုံးပြုပြီး လူများ အသုံးမပြုပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does the print() function do in real code?",
          questionMy: "အစစ်အမှန် code တွင် print() function က ဘာလုပ်သနည်း။",
          optionsEn: [
            "Displays output on the screen",
            "Deletes a variable",
            "Draws a flowchart",
            "Repeats code forever",
          ],
          optionsMy: [
            "မျက်နှာပြင်ပေါ်တွင် output ပြသသည်",
            "Variable တစ်ခုကို ဖျက်သည်",
            "Flowchart ရေးဆွဲသည်",
            "Code ကို အမြဲထပ်ခါလုပ်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a comment used for in real code?",
          questionMy: "အစစ်အမှန် code တွင် comment ကို ဘာအတွက်သုံးသနည်း။",
          optionsEn: [
            "Explaining code to people, without affecting how it runs",
            "Making the program run faster",
            "Storing a value",
            "Ending a loop",
          ],
          optionsMy: [
            "Code run ပုံကို မထိခိုက်ဘဲ လူများအား ရှင်းပြရန်",
            "ပရိုဂရမ်ကို ပိုမြန်စေရန်",
            "တန်ဖိုးတစ်ခု သိမ်းဆည်းရန်",
            "Loop ကို ရပ်တန့်စေရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why does capitalization matter in most real programming languages (e.g. Print vs print)?",
          questionMy:
              "အစစ်အမှန် programming language အများစုတွင် စာလုံးအကြီးအသေး (ဥပမာ Print နှင့် print) အဘယ့်ကြောင့် အရေးကြီးသနည်း။",
          optionsEn: [
            "Because the language is case sensitive, so Print and print are treated as different words",
            "Because capital letters use more memory",
            "Because lowercase letters are not allowed",
            "Because it changes the data type",
          ],
          optionsMy: [
            "Language သည် case sensitive ဖြစ်သဖြင့် Print နှင့် print ကို မတူညီသောစကားလုံးများအဖြစ် သတ်မှတ်၍",
            "စာလုံးအကြီးများသည် memory ပိုသုံးသဖြင့်",
            "စာလုံးအသေးများ အသုံးပြုခွင့်မရှိသဖြင့်",
            "Data type ကို ပြောင်းလဲစေသဖြင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In pseudocode's OUTPUT \"Hello\", which real-code line does this become?",
          questionMy:
              "Pseudocode ၏ OUTPUT \"Hello\" သည် အစစ်အမှန် code တွင် ဘယ်စာကြောင်းဖြစ်သွားမည်နည်း။",
          optionsEn: [
            "print('Hello')",
            "OUTPUT print Hello",
            "Hello = print",
            "IF Hello THEN print",
          ],
          optionsMy: [
            "print('Hello')",
            "OUTPUT print Hello",
            "Hello = print",
            "IF Hello THEN print",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w25-d2",
      dayNumber: 2,
      titleEn: "Real Code Vocabulary",
      titleMy: "အစစ်အမှန် Code ဆိုင်ရာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w25-lang-programminglanguage",
          termEn: "Programming Language",
          termMy: "Programming Language",
          matchEn:
              "A set of exact rules and words a computer can follow to run a program",
          matchMy:
              "ကွန်ပျူတာ ပရိုဂရမ်တစ်ခုကို run စေရန် လိုက်နာနိုင်သော အတိအကျစည်းမျဉ်းနှင့် စကားလုံးအစုအဝေး",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w25-lang-printfunction",
          termEn: "print() Function",
          termMy: "print() Function",
          matchEn: "A command that displays output on the screen",
          matchMy: "မျက်နှာပြင်ပေါ်တွင် output ပြသသော command တစ်ခု",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w25-lang-comment",
          termEn: "Comment",
          termMy: "Comment",
          matchEn:
              "A note in the code, ignored by the computer, that explains it to people",
          matchMy:
              "ကွန်ပျူတာက လျစ်လျူရှုထားသော်လည်း လူများအား ရှင်းပြပေးသော code ထဲရှိမှတ်စု",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w25-lang-syntax",
          termEn: "Syntax",
          termMy: "Syntax",
          matchEn:
              "The exact set of rules for how code must be written so the computer can understand it",
          matchMy:
              "ကွန်ပျူတာနားလည်နိုင်ရန် code ကို မည်သို့ရေးရမည့် အတိအကျစည်းမျဉ်းအစု",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w25-lang-casesensitive",
          termEn: "Case Sensitive",
          termMy: "Case Sensitive",
          matchEn:
              "When uppercase and lowercase letters are treated as different, e.g. print and Print",
          matchMy:
              "စာလုံးအကြီးနှင့်အသေးကို မတူညီဟု သတ်မှတ်ခြင်း၊ ဥပမာ print နှင့် Print",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w25-d3",
      dayNumber: 3,
      titleEn: "Correct or Incorrect print() Syntax?",
      titleMy: "print() Syntax မှန်လား မှားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Correct Syntax", "Incorrect Syntax"],
        bucketsMy: ["Correct Syntax (မှန်ကန်)", "Incorrect Syntax (မမှန်ကန်)"],
        items: [
          SortingItem(
            id: "w25-sort-printhello",
            labelEn: "print('Hello!')",
            labelMy: "print('Hello!')",
            correctBucketEn: "Correct Syntax",
            correctBucketMy: "Correct Syntax (မှန်ကန်)",
          ),
          SortingItem(
            id: "w25-sort-printnoquotes",
            labelEn: "print(Hello!)",
            labelMy: "print(Hello!)",
            correctBucketEn: "Incorrect Syntax",
            correctBucketMy: "Incorrect Syntax (မမှန်ကန်)",
          ),
          SortingItem(
            id: "w25-sort-printcapital",
            labelEn: "Print('Hello!')",
            labelMy: "Print('Hello!')",
            correctBucketEn: "Incorrect Syntax",
            correctBucketMy: "Incorrect Syntax (မမှန်ကန်)",
          ),
          SortingItem(
            id: "w25-sort-printbye",
            labelEn: "print('Goodbye!')",
            labelMy: "print('Goodbye!')",
            correctBucketEn: "Correct Syntax",
            correctBucketMy: "Correct Syntax (မှန်ကန်)",
          ),
          SortingItem(
            id: "w25-sort-misspelled",
            labelEn: "prnt('Hello!')",
            labelMy: "prnt('Hello!')",
            correctBucketEn: "Incorrect Syntax",
            correctBucketMy: "Incorrect Syntax (မမှန်ကန်)",
          ),
          SortingItem(
            id: "w25-sort-noparens",
            labelEn: "print 'Hello!'",
            labelMy: "print 'Hello!'",
            correctBucketEn: "Incorrect Syntax",
            correctBucketMy: "Incorrect Syntax (မမှန်ကန်)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w25-d4",
      dayNumber: 4,
      titleEn: "Aye's First Real Program",
      titleMy: "အေး၏ ပထမဆုံး အစစ်အမှန် ပရိုဂရမ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Aye's First Real Program",
        titleMy: "အေး၏ ပထမဆုံး အစစ်အမှန် ပရိုဂရမ်",
        passageEn:
            "Aye had already written pseudocode with the line OUTPUT \"Welcome!\", so she knew exactly what her program needed to do. She opened a real code editor and typed Print('Welcome!'), but when she ran it, the computer showed an error. Her teacher explained that the language was case sensitive, so Print and print were treated as completely different words. Aye fixed her mistake by typing print('Welcome!') with a lowercase p, and this time the program ran perfectly, showing Welcome! on the screen. She also added a comment above her code, # This greets the user, so that anyone reading her program later would understand what it did without having to run it first.",
        passageMy:
            "အေးသည် OUTPUT \"Welcome!\" ဟူသော pseudocode စာကြောင်းကို ရေးထားပြီးဖြစ်၍ သူမ၏ ပရိုဂရမ်က ဘာလုပ်ရမည်ကို အတိအကျသိထားသည်။ သူမသည် အစစ်အမှန် code editor တစ်ခုကို ဖွင့်ပြီး Print('Welcome!') ဟု ရိုက်ထည့်ခဲ့သော်လည်း run လိုက်သောအခါ ကွန်ပျူတာက error ပြသခဲ့သည်။ ဆရာမက language သည် case sensitive ဖြစ်၍ Print နှင့် print ကို လုံးဝမတူညီသော စကားလုံးများအဖြစ် သတ်မှတ်ကြောင်း ရှင်းပြခဲ့သည်။ အေးသည် print('Welcome!') ဟု စာလုံးအသေး p ဖြင့် ပြင်ရိုက်လိုက်ရာ ဤတစ်ကြိမ်တွင် ပရိုဂရမ်သည် စနစ်တကျ run သွားပြီး မျက်နှာပြင်ပေါ်တွင် Welcome! ဟု ပြသခဲ့သည်။ သူမသည် code အပေါ်တွင် # This greets the user ဟူသော comment တစ်ခုကိုပါ ထည့်လိုက်ရာ နောက်ဖတ်မည့်သူတိုင်း run ကြည့်စရာမလိုဘဲ ၎င်းက ဘာလုပ်သည်ကို နားလည်စေခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What pseudocode line had Aye already written?",
            questionMy:
                "အေးသည် ဘယ် pseudocode စာကြောင်းကို ရေးထားပြီးဖြစ်သနည်း။",
            optionsEn: [
              "OUTPUT \"Welcome!\"",
              "IF score > 50",
              "FOR count = 1 TO 5",
              "score = 0",
            ],
            optionsMy: [
              "OUTPUT \"Welcome!\"",
              "IF score > 50",
              "FOR count = 1 TO 5",
              "score = 0",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Why did Aye's first attempt cause an error?",
            questionMy:
                "အေး၏ ပထမကြိမ်ကြိုးစားမှုသည် အဘယ့်ကြောင့် error ဖြစ်ခဲ့သနည်း။",
            optionsEn: [
              "She used a capital P in Print, but the language is case sensitive",
              "She forgot to write any code at all",
              "She used a loop instead of print",
              "She deleted her variable",
            ],
            optionsMy: [
              "Language သည် case sensitive ဖြစ်ပြီး Print တွင် P စာလုံးကြီးအသုံးပြုခဲ့၍",
              "Code လုံးဝမရေးမိ၍",
              "print အစား loop သုံးမိ၍",
              "Variable ကို ဖျက်မိ၍",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How did Aye fix her code?",
            questionMy: "အေးသည် သူမ၏ code ကို မည်သို့ပြင်ခဲ့သနည်း။",
            optionsEn: [
              "She typed print with a lowercase p",
              "She deleted the whole program",
              "She added a loop",
              "She turned it back into pseudocode",
            ],
            optionsMy: [
              "Print ကို စာလုံးအသေး p ဖြင့် ပြန်ရိုက်ခဲ့သည်",
              "ပရိုဂရမ်တစ်ခုလုံးကို ဖျက်ခဲ့သည်",
              "Loop တစ်ခု ထည့်ခဲ့သည်",
              "Pseudocode အဖြစ် ပြန်ပြောင်းခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Aye's comment explain?",
            questionMy: "အေး၏ comment သည် ဘာကို ရှင်းပြခဲ့သနည်း။",
            optionsEn: [
              "That the code greets the user",
              "The variable's data type",
              "How many times the loop repeats",
              "The value of the condition",
            ],
            optionsMy: [
              "Code သည် user ကို ကြိုဆိုကြောင်း",
              "Variable ၏ data type",
              "Loop ဘယ်နှကြိမ်ထပ်ကြောင်း",
              "Condition ၏ တန်ဖိုး",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why are comments useful, even though the computer ignores them?",
            questionMy:
                "ကွန်ပျူတာက comment ကို လျစ်လျူရှုသော်လည်း အဘယ့်ကြောင့် အသုံးဝင်သနည်း။",
            optionsEn: [
              "They help people reading the code understand it later",
              "They make the program run faster",
              "They fix syntax errors automatically",
              "They turn code into a flowchart",
            ],
            optionsMy: [
              "နောက်ဖတ်မည့်သူများအား code ကို နားလည်စေရန် ကူညီပေးသည်",
              "ပရိုဂရမ်ကို ပိုမြန်စေသည်",
              "Syntax error များကို အလိုအလျောက် ပြင်ပေးသည်",
              "Code ကို flowchart အဖြစ် ပြောင်းသည်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w25-d5",
      dayNumber: 5,
      titleEn: "Week 25 Recap Quiz",
      titleMy: "နှစ်ဆယ့်ငါးပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What must real code follow that pseudocode does not require?",
          questionMy:
              "Pseudocode တွင် မလိုအပ်သော်လည်း အစစ်အမှန် code တွင် ဘာကို လိုက်နာရသနည်း။",
          optionsEn: [
            "Exact syntax rules the computer can run",
            "A flowchart symbol for every line",
            "A drag-match card",
            "A reading passage",
          ],
          optionsMy: [
            "ကွန်ပျူတာ run နိုင်သော အတိအကျ syntax စည်းမျဉ်း",
            "စာကြောင်းတိုင်းအတွက် flowchart သင်္ကေတ",
            "Drag-match card",
            "Reading passage",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does print() do?",
          questionMy: "print() က ဘာလုပ်သနည်း။",
          optionsEn: [
            "Displays output on the screen",
            "Stores a value forever",
            "Deletes the program",
            "Draws a flowchart",
          ],
          optionsMy: [
            "မျက်နှာပြင်ပေါ်တွင် output ပြသသည်",
            "တန်ဖိုးကို အမြဲသိမ်းဆည်းထားသည်",
            "ပရိုဂရမ်ကို ဖျက်သည်",
            "Flowchart ရေးဆွဲသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is correct print() syntax?",
          questionMy: "အောက်ပါတို့အနက် print() syntax မှန်ကန်သည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "print('Hi!')",
            "print Hi!",
            "Hi! = print",
            "prnt('Hi!')",
          ],
          optionsMy: [
            "print('Hi!')",
            "print Hi!",
            "Hi! = print",
            "prnt('Hi!')",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a comment for?",
          questionMy: "Comment ကို ဘာအတွက်သုံးသနည်း။",
          optionsEn: [
            "Explaining code to people",
            "Making a variable",
            "Repeating code",
            "Comparing two values",
          ],
          optionsMy: [
            "Code ကို လူများအား ရှင်းပြရန်",
            "Variable ဖန်တီးရန်",
            "Code ကို ထပ်ခါလုပ်ရန်",
            "တန်ဖိုးနှစ်ခု နှိုင်းယှဉ်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why does Print (capital P) cause an error in most real languages?",
          questionMy:
              "Language အများစုတွင် Print (P စာလုံးကြီး) သည် အဘယ့်ကြောင့် error ဖြစ်စေသနည်း။",
          optionsEn: [
            "The language is case sensitive",
            "The word is spelled wrong",
            "It is missing a variable",
            "It is a comment, not code",
          ],
          optionsMy: [
            "Language သည် case sensitive ဖြစ်၍",
            "စာလုံးပေါင်းမှားသဖြင့်",
            "Variable မပါသဖြင့်",
            "Code မဟုတ်ဘဲ comment ဖြစ်၍",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 7, Week 26: "Variables and Input/Output
// in Real Code"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek26 = CourseWeekDef(
  id: "course-secondary1-computing-w26",
  weekNumber: 26,
  titleEn: "Variables and Input/Output in Real Code",
  titleMy: "Code ထဲရှိ Variable နှင့် Input/Output",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s1-computing-w26-d1",
      dayNumber: 1,
      titleEn: "Assigning Variables in Real Code",
      titleMy: "Code ထဲတွင် Variable Assign လုပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "How do you assign the value 'Aye' to a variable called name in real code?",
          questionMy:
              "Real code တွင် name ဟူသော variable သို့ 'Aye' ဟူသောတန်ဖိုးကို မည်သို့ assign လုပ်သနည်း။",
          optionsEn: [
            "name = 'Aye'",
            "name == 'Aye'",
            "'Aye' = name",
            "name -> 'Aye'",
          ],
          optionsMy: [
            "name = 'Aye'",
            "name == 'Aye'",
            "'Aye' = name",
            "name -> 'Aye'",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does the input() function do?",
          questionMy: "input() function က ဘာလုပ်သနည်း။",
          optionsEn: [
            "Lets the program ask the user to type something and store it",
            "Deletes a variable",
            "Prints text without needing a variable",
            "Loops forever",
          ],
          optionsMy: [
            "User ထံမှ စာရိုက်ထည့်ခိုင်းပြီး သိမ်းဆည်းစေသည်",
            "Variable ကို ဖျက်သည်",
            "Variable မလိုဘဲ စာသားပရင့်ထုတ်သည်",
            "အမြဲထပ်ခါလုပ်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In real code, what type of value is 'Aye' considered?",
          questionMy: "Real code တွင် 'Aye' သည် ဘယ် data type ဖြစ်သနည်း။",
          optionsEn: [
            "A string (text)",
            "An integer (whole number)",
            "A Boolean",
            "A comment",
          ],
          optionsMy: [
            "String (စာသား)",
            "Integer (ဂဏန်းအပြည့်)",
            "Boolean",
            "Comment",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In real code, what type of value is 25 (written without quotes) considered?",
          questionMy:
              "Real code တွင် 25 (quote မပါဘဲရေးထားသော) သည် ဘယ် data type ဖြစ်သနည်း။",
          optionsEn: [
            "An integer (whole number)",
            "A string (text)",
            "A comment",
            "A print statement",
          ],
          optionsMy: [
            "Integer (ဂဏန်းအပြည့်)",
            "String (စာသား)",
            "Comment",
            "print statement",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "If name = 'Aye', what does print(name) display?",
          questionMy: "name = 'Aye' ဖြစ်ပါက print(name) သည် ဘာပြသမည်နည်း။",
          optionsEn: ["Aye", "name", "'Aye'", "Nothing at all"],
          optionsMy: ["Aye", "name", "'Aye'", "ဘာမှမပြသ"],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w26-d2",
      dayNumber: 2,
      titleEn: "Variables and I/O Vocabulary",
      titleMy: "Variable နှင့် I/O ဆိုင်ရာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w26-io-assignmentoperator",
          termEn: "Assignment Operator",
          termMy: "Assignment Operator",
          matchEn: "The = symbol used to give a variable a value in real code",
          matchMy:
              "Real code တွင် variable တစ်ခုသို့ တန်ဖိုးပေးရန်သုံးသော = သင်္ကေတ",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w26-io-inputfunction",
          termEn: "input() Function",
          termMy: "input() Function",
          matchEn:
              "A command that lets the program ask the user to type something",
          matchMy: "User ထံမှ စာရိုက်ထည့်ခိုင်းစေနိုင်သော command တစ်ခု",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w26-io-string",
          termEn: "String",
          termMy: "String",
          matchEn: "A data type for text, written inside quotes such as 'Aye'",
          matchMy: "'Aye' ကဲ့သို့ quote အတွင်းရေးထားသော စာသားအတွက် data type",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w26-io-integer",
          termEn: "Integer",
          termMy: "Integer",
          matchEn:
              "A data type for whole numbers, written without quotes such as 25",
          matchMy: "25 ကဲ့သို့ quote မပါဘဲရေးထားသော ဂဏန်းအပြည့်အတွက် data type",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w26-io-printvariable",
          termEn: "print(variable)",
          termMy: "print(variable)",
          matchEn:
              "Displays the value currently stored inside a variable, not its name",
          matchMy:
              "Variable ၏ အမည်မဟုတ်ဘဲ အတွင်းသိမ်းဆည်းထားသော လက်ရှိတန်ဖိုးကို ပြသသည်",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w26-d3",
      dayNumber: 3,
      titleEn: "String or Integer?",
      titleMy: "String လား Integer လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["String", "Integer"],
        bucketsMy: ["String (စာသား)", "Integer (ဂဏန်းအပြည့်)"],
        items: [
          SortingItem(
            id: "w26-sort-yangon",
            labelEn: "'Yangon'",
            labelMy: "'Yangon'",
            correctBucketEn: "String",
            correctBucketMy: "String (စာသား)",
          ),
          SortingItem(
            id: "w26-sort-seven",
            labelEn: "7",
            labelMy: "7",
            correctBucketEn: "Integer",
            correctBucketMy: "Integer (ဂဏန်းအပြည့်)",
          ),
          SortingItem(
            id: "w26-sort-myanmar",
            labelEn: "'Myanmar'",
            labelMy: "'Myanmar'",
            correctBucketEn: "String",
            correctBucketMy: "String (စာသား)",
          ),
          SortingItem(
            id: "w26-sort-2026",
            labelEn: "2026",
            labelMy: "2026",
            correctBucketEn: "Integer",
            correctBucketMy: "Integer (ဂဏန်းအပြည့်)",
          ),
          SortingItem(
            id: "w26-sort-hello",
            labelEn: "'Hello!'",
            labelMy: "'Hello!'",
            correctBucketEn: "String",
            correctBucketMy: "String (စာသား)",
          ),
          SortingItem(
            id: "w26-sort-zero",
            labelEn: "0",
            labelMy: "0",
            correctBucketEn: "Integer",
            correctBucketMy: "Integer (ဂဏန်းအပြည့်)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w26-d4",
      dayNumber: 4,
      titleEn: "Zaw's Greeting Program",
      titleMy: "ဇော်၏ နှုတ်ဆက်စကား ပရိုဂရမ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Zaw's Greeting Program",
        titleMy: "ဇော်၏ နှုတ်ဆက်စကား ပရိုဂရမ်",
        passageEn:
            "Zaw wanted his program to greet whoever ran it by name, so he wrote name = input('What is your name? ') to ask the user a question and store their answer inside a variable called name. Then he wrote print('Hello, ' + name) so the program would join the text Hello, together with whatever the user had typed. When Zaw ran the program and typed Su Su at the input prompt, the screen displayed Hello, Su Su. He realised that input() and a variable worked together perfectly: input() collected the answer, and the variable remembered it so print() could use it later in the program.",
        passageMy:
            "ဇော်သည် သူ၏ ပရိုဂရမ်ကို run သောသူတိုင်းအား နာမည်ဖြင့် နှုတ်ဆက်စေချင်ခဲ့သဖြင့် name = input('What is your name? ') ဟု ရေးခဲ့ပြီး user အား မေးခွန်းမေးကာ ၎င်း၏အဖြေကို name ဟုခေါ်သော variable အတွင်း သိမ်းဆည်းခဲ့သည်။ ထို့နောက် print('Hello, ' + name) ဟု ရေးခဲ့ရာ ပရိုဂရမ်သည် Hello, ဟူသောစာသားကို user ရိုက်ထည့်လိုက်သည့်စာသားနှင့် ဆက်စပ်ပေးလိုက်သည်။ ဇော်သည် ပရိုဂရမ်ကို run ပြီး input prompt တွင် Su Su ဟု ရိုက်ထည့်လိုက်ရာ မျက်နှာပြင်ပေါ်တွင် Hello, Su Su ဟု ပေါ်လာခဲ့သည်။ input() နှင့် variable တို့သည် ကောင်းစွာ ပေါင်းစပ်အလုပ်လုပ်ကြောင်း သူနားလည်လိုက်သည် - input() က အဖြေကို ရယူပြီး variable က ၎င်းကို မှတ်ထားကာ print() က နောက်ပိုင်းတွင် အသုံးပြုနိုင်စေသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What variable did Zaw's program store the user's answer in?",
            questionMy:
                "ဇော်၏ ပရိုဂရမ်သည် user ၏အဖြေကို ဘယ် variable တွင် သိမ်းဆည်းခဲ့သနည်း။",
            optionsEn: ["name", "score", "greeting", "input"],
            optionsMy: ["name", "score", "greeting", "input"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What function did Zaw use to ask the user a question?",
            questionMy:
                "User ကို မေးခွန်းမေးရန် ဇော် ဘယ် function ကို သုံးခဲ့သနည်း။",
            optionsEn: ["input()", "print()", "if", "for"],
            optionsMy: ["input()", "print()", "if", "for"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did the screen display when Zaw typed Su Su?",
            questionMy:
                "ဇော်သည် Su Su ဟု ရိုက်ထည့်သောအခါ မျက်နှာပြင်တွင် ဘာပေါ်ခဲ့သနည်း။",
            optionsEn: [
              "Hello, Su Su",
              "Su Su, Hello",
              "name = Su Su",
              "Nothing at all",
            ],
            optionsMy: [
              "Hello, Su Su",
              "Su Su, Hello",
              "name = Su Su",
              "ဘာမှမပေါ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did print() join together in Zaw's code?",
            questionMy:
                "ဇော်၏ code တွင် print() က ဘာနှင့်ဘာကို ဆက်စပ်ပေးခဲ့သနည်း။",
            optionsEn: [
              "The text Hello, and the value stored in name",
              "Two separate loops",
              "Two comments",
              "A condition and a comparison operator",
            ],
            optionsMy: [
              "Hello, ဟူသောစာသားနှင့် name အတွင်းရှိတန်ဖိုး",
              "Loop နှစ်ခု",
              "Comment နှစ်ခု",
              "Condition နှင့် comparison operator",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Why did Zaw need a variable in his program?",
            questionMy:
                "ဇော်သည် သူ၏ ပရိုဂရမ်တွင် variable တစ်ခုကို အဘယ့်ကြောင့် လိုအပ်ခဲ့သနည်း။",
            optionsEn: [
              "So the answer collected by input() could be remembered and reused",
              "So the program would run without any code at all",
              "So the print() function would be deleted",
              "So the condition would always be false",
            ],
            optionsMy: [
              "Input() ရရှိသော အဖြေကို မှတ်ထားပြီး ပြန်သုံးနိုင်ရန်",
              "Code လုံးဝမပါဘဲ ပရိုဂရမ် run နိုင်ရန်",
              "Print() function ကို ဖျက်နိုင်ရန်",
              "Condition ကို အမြဲ false ဖြစ်စေရန်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w26-d5",
      dayNumber: 5,
      titleEn: "Week 26 Recap Quiz",
      titleMy: "နှစ်ဆယ့်ခြောက်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which line correctly assigns 'Aye' to the variable name?",
          questionMy:
              "name ဟူသော variable သို့ 'Aye' ကို မှန်ကန်စွာ assign လုပ်သည့်စာကြောင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "name = 'Aye'",
            "'Aye' == name",
            "name -> 'Aye'",
            "assign name 'Aye'",
          ],
          optionsMy: [
            "name = 'Aye'",
            "'Aye' == name",
            "name -> 'Aye'",
            "assign name 'Aye'",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does input() let a program do?",
          questionMy: "input() က ပရိုဂရမ်အား ဘာလုပ်ခွင့်ပေးသနည်း။",
          optionsEn: [
            "Ask the user to type something and store it",
            "Delete a variable",
            "Repeat forever",
            "Draw a flowchart",
          ],
          optionsMy: [
            "User ကို စာရိုက်ထည့်ခိုင်းပြီး သိမ်းဆည်းသည်",
            "Variable ကို ဖျက်သည်",
            "အမြဲထပ်ခါလုပ်သည်",
            "Flowchart ရေးဆွဲသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Is 'Yangon' a string or an integer?",
          questionMy: "'Yangon' သည် string လား integer လား။",
          optionsEn: ["String", "Integer", "Neither", "Both"],
          optionsMy: ["String", "Integer", "နှစ်ခုစလုံးမဟုတ်", "နှစ်ခုစလုံး"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Is 25 (without quotes) a string or an integer?",
          questionMy: "25 (quote မပါ) သည် string လား integer လား။",
          optionsEn: ["Integer", "String", "Neither", "Both"],
          optionsMy: ["Integer", "String", "နှစ်ခုစလုံးမဟုတ်", "နှစ်ခုစလုံး"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "If x = 25, what does print(x) show?",
          questionMy: "x = 25 ဖြစ်ပါက print(x) သည် ဘာပြသမည်နည်း။",
          optionsEn: ["25", "x", "'25'", "Nothing"],
          optionsMy: ["25", "x", "'25'", "ဘာမှမပြသ"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 7, Week 27: "Selection and Loops in Real
// Code"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek27 = CourseWeekDef(
  id: "course-secondary1-computing-w27",
  weekNumber: 27,
  titleEn: "Selection and Loops in Real Code",
  titleMy: "Code ထဲရှိ Selection နှင့် Loop",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s1-computing-w27-d1",
      dayNumber: 1,
      titleEn: "Writing if, for, and while in Real Code",
      titleMy: "Real Code တွင် if, for, while ရေးသားခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What symbol must come at the end of an if line in real code, e.g. if score > 50:?",
          questionMy:
              "Real code ရှိ if စာကြောင်းအဆုံးတွင် ဘာသင်္ကေတလာရမည်နည်း၊ ဥပမာ if score > 50: ။",
          optionsEn: [
            "A colon (:)",
            "A semicolon (;)",
            "A comma (,)",
            "A question mark (?)",
          ],
          optionsMy: [
            "Colon (:)",
            "Semicolon (;)",
            "Comma (,)",
            "Question mark (?)",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What controls which lines belong inside an if block in real code?",
          questionMy:
              "Real code တွင် ဘယ်စာကြောင်းများ if block အတွင်းပါသည်ကို ဘာက ထိန်းချုပ်သနည်း။",
          optionsEn: [
            "Indentation (spaces at the start of the line)",
            "The color of the text",
            "The length of the variable name",
            "Capital letters",
          ],
          optionsMy: [
            "Indentation (စာကြောင်းအစရှိ space များ)",
            "စာသား၏အရောင်",
            "Variable အမည်၏ ရှည်လျားမှု",
            "စာလုံးအကြီးများ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In for i in range(5):, how many times does the loop run?",
          questionMy:
              "for i in range(5): တွင် loop သည် ဘယ်နှကြိမ် run မည်နည်း။",
          optionsEn: ["5", "4", "6", "1"],
          optionsMy: ["5", "4", "6", "1"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What keyword lets a program check an additional condition after an if, before else?",
          questionMy:
              "If နောက်၊ else မတိုင်မီ condition နောက်တစ်ခုကို စစ်ဆေးရန် ဘယ် keyword ကိုသုံးသနည်း။",
          optionsEn: ["elif", "THEN", "REPEAT", "loop"],
          optionsMy: ["elif", "THEN", "REPEAT", "loop"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What must eventually happen for a while loop to stop?",
          questionMy: "While loop ရပ်ရန် နောက်ဆုံးတွင် ဘာဖြစ်ရမည်နည်း။",
          optionsEn: [
            "Its condition must become false",
            "The print() function must run",
            "A comment must be added",
            "A variable must be deleted",
          ],
          optionsMy: [
            "၎င်း၏ condition သည် false ဖြစ်လာရမည်",
            "print() function run ရမည်",
            "Comment ထည့်ရမည်",
            "Variable ကို ဖျက်ရမည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w27-d2",
      dayNumber: 2,
      titleEn: "Selection and Loop Vocabulary",
      titleMy: "Selection နှင့် Loop ဆိုင်ရာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w27-sel-ifstatement",
          termEn: "if Statement",
          termMy: "if Statement",
          matchEn:
              "A selection structure in real code, written as if condition: followed by an indented block",
          matchMy:
              "Real code ရှိ selection ဖွဲ့စည်းပုံ၊ if condition: ဟုရေးပြီး indent လုပ်ထားသောအပိုင်းကို ဆက်ရေးသည်",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w27-sel-elif",
          termEn: "elif",
          termMy: "elif",
          matchEn:
              "A keyword for checking another condition if the first if was false",
          matchMy:
              "ပထမ if သည် false ဖြစ်ခဲ့ပါက နောက်ထပ် condition တစ်ခုကို စစ်ဆေးရန် keyword",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w27-sel-indentation",
          termEn: "Indentation",
          termMy: "Indentation",
          matchEn:
              "Spaces at the start of a line that show which code belongs inside a block",
          matchMy:
              "ဘယ် code သည် block အတွင်းပါသည်ကို ပြသော စာကြောင်းအစရှိ space များ",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w27-sel-rangefunction",
          termEn: "range() Function",
          termMy: "range() Function",
          matchEn:
              "Used with a for loop to repeat a set number of times, e.g. range(5)",
          matchMy:
              "Range(5) ကဲ့သို့ for loop နှင့်အတူ သတ်မှတ်အကြိမ်ရေ ထပ်ခါလုပ်ရန် သုံးသည်",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w27-sel-whileloop",
          termEn: "while Loop",
          termMy: "while Loop",
          matchEn:
              "A loop that keeps running as long as its condition stays true",
          matchMy: "Condition true ဖြစ်နေသရွေ့ ဆက်လက် run နေသော loop",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w27-d3",
      dayNumber: 3,
      titleEn: "Selection or Iteration?",
      titleMy: "Selection လား Iteration လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Selection", "Iteration"],
        bucketsMy: ["Selection", "Iteration"],
        items: [
          SortingItem(
            id: "w27-sort-ifage",
            labelEn: "if age >= 18:",
            labelMy: "if age >= 18:",
            correctBucketEn: "Selection",
            correctBucketMy: "Selection",
          ),
          SortingItem(
            id: "w27-sort-forrange10",
            labelEn: "for i in range(10):",
            labelMy: "for i in range(10):",
            correctBucketEn: "Iteration",
            correctBucketMy: "Iteration",
          ),
          SortingItem(
            id: "w27-sort-whiletotal",
            labelEn: "while total < 100:",
            labelMy: "while total < 100:",
            correctBucketEn: "Iteration",
            correctBucketMy: "Iteration",
          ),
          SortingItem(
            id: "w27-sort-elifgrade",
            labelEn: "elif grade == 'B':",
            labelMy: "elif grade == 'B':",
            correctBucketEn: "Selection",
            correctBucketMy: "Selection",
          ),
          SortingItem(
            id: "w27-sort-fordayrange7",
            labelEn: "for day in range(7):",
            labelMy: "for day in range(7):",
            correctBucketEn: "Iteration",
            correctBucketMy: "Iteration",
          ),
          SortingItem(
            id: "w27-sort-ifxequals0",
            labelEn: "if x == 0:",
            labelMy: "if x == 0:",
            correctBucketEn: "Selection",
            correctBucketMy: "Selection",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w27-d4",
      dayNumber: 4,
      titleEn: "Nilar's Pass or Fail Program in Real Code",
      titleMy: "နီလာ၏ Pass Fail ပရိုဂရမ် (Real Code ဖြင့်)",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nilar's Pass or Fail Program in Real Code",
        titleMy: "နီလာ၏ Pass Fail ပရိုဂရမ် (Real Code ဖြင့်)",
        passageEn:
            "Nilar remembered her old pseudocode: IF score is greater than or equal to 50 THEN print Pass, ELSE print Fail. Now that she knew real syntax, she rewrote it as if score >= 50: on one line, followed by an indented print('Pass'), then else: on its own line, followed by an indented print('Fail'). When she set score = 65 and ran the program, the condition score >= 50 was true, so it printed Pass. When she changed the code to score = 30 and ran it again, the condition was false, so the indented line under else ran instead, printing Fail. Nilar noticed that the real code did exactly what her pseudocode had described, just written with a colon, indentation, and real syntax instead of IF, THEN, and ELSE in capital letters.",
        passageMy:
            "နီလာသည် သူမ၏ ဟောင်းနွမ်းသော pseudocode ကို သတိရခဲ့သည် - score သည် 50 ထက်ကြီးသည် သို့မဟုတ် ညီပါက Pass ဟု ပရင့်ထုတ်ပြီး၊ မဟုတ်ပါက Fail ဟု ပရင့်ထုတ်သည်။ အခုတော့ real syntax ကို သိပြီဖြစ်၍ သူမသည် if score >= 50: ဟု တစ်ကြောင်းတည်းရေးပြီး၊ ၎င်းအောက်တွင် indent လုပ်ထားသော print('Pass') ကို ဆက်ရေးကာ၊ else: ကို သီးခြားစာကြောင်းတွင် ရေးပြီး ၎င်းအောက်တွင် indent လုပ်ထားသော print('Fail') ကို ဆက်ရေးလိုက်သည်။ Score = 65 ဟု သတ်မှတ်ပြီး run လိုက်ရာ condition score >= 50 သည် true ဖြစ်သဖြင့် Pass ဟု ပရင့်ထုတ်ခဲ့သည်။ Code ကို score = 30 ဟု ပြောင်းပြီး ထပ်run လိုက်ရာ condition သည် false ဖြစ်သွားသဖြင့် else အောက်ရှိ indent လုပ်ထားသောစာကြောင်းက run သွားကာ Fail ဟု ပရင့်ထုတ်ခဲ့သည်။ Real code သည် သူမ၏ pseudocode က ဖော်ပြထားသည့်အတိုင်း အတိအကျပြုလုပ်ပေးကြောင်း၊ ကွာသည်မှာ IF, THEN, ELSE ကို စာလုံးကြီးများဖြင့်ရေးမည့်အစား colon, indentation နှင့် real syntax ဖြင့်ရေးထားခြင်းသာဖြစ်ကြောင်း နီလာ သတိပြုမိလိုက်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did Nilar write on the first line of her real code?",
            questionMy:
                "နီလာသည် သူမ၏ real code ပထမစာကြောင်းတွင် ဘာရေးခဲ့သနည်း။",
            optionsEn: [
              "if score >= 50:",
              "print('Pass')",
              "else:",
              "score = 65",
            ],
            optionsMy: [
              "if score >= 50:",
              "print('Pass')",
              "else:",
              "score = 65",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What ran when score was set to 65?",
            questionMy: "Score ကို 65 ဟု သတ်မှတ်သောအခါ ဘာ run သွားခဲ့သနည်း။",
            optionsEn: [
              "The indented print('Pass') line",
              "The indented print('Fail') line",
              "Nothing at all",
              "Both lines at once",
            ],
            optionsMy: [
              "Indent လုပ်ထားသော print('Pass') စာကြောင်း",
              "Indent လုပ်ထားသော print('Fail') စာကြောင်း",
              "ဘာမှမ run",
              "စာကြောင်းနှစ်ကြောင်းလုံး တစ်ပြိုင်နက်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What ran when score was changed to 30?",
            questionMy: "Score ကို 30 ဟု ပြောင်းသောအခါ ဘာ run သွားခဲ့သနည်း။",
            optionsEn: [
              "The indented line under else",
              "The indented line under if",
              "A loop",
              "Nothing at all",
            ],
            optionsMy: [
              "Else အောက်ရှိ indent လုပ်ထားသောစာကြောင်း",
              "If အောက်ရှိ indent လုပ်ထားသောစာကြောင်း",
              "Loop",
              "ဘာမှမ run",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What symbol did Nilar add after score >= 50 in real code?",
            questionMy:
                "Real code တွင် score >= 50 နောက်တွင် နီလာ ဘာသင်္ကေတထည့်ခဲ့သနည်း။",
            optionsEn: [
              "A colon (:)",
              "A semicolon (;)",
              "A question mark (?)",
              "A comma (,)",
            ],
            optionsMy: [
              "Colon (:)",
              "Semicolon (;)",
              "Question mark (?)",
              "Comma (,)",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What was the main difference between Nilar's pseudocode and her real code?",
            questionMy:
                "နီလာ၏ pseudocode နှင့် real code ကြား အဓိကကွာခြားချက်မှာ အဘယ်နည်း။",
            optionsEn: [
              "The real code used a colon, indentation, and lowercase keywords instead of capital-letter words",
              "The real code did something completely different",
              "The pseudocode used a loop, but the real code did not",
              "The real code had no condition at all",
            ],
            optionsMy: [
              "Real code သည် စာလုံးကြီးများအစား colon, indentation, စာလုံးအသေး keyword များသုံးထား၍",
              "Real code သည် လုံးဝမတူညီသောအရာလုပ်ဆောင်၍",
              "Pseudocode တွင် loop သုံးထားပြီး real code တွင် မသုံး၍",
              "Real code တွင် condition လုံးဝမပါ၍",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w27-d5",
      dayNumber: 5,
      titleEn: "Week 27 Recap Quiz",
      titleMy: "နှစ်ဆယ့်ခုနစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What must follow a condition on an if line in real code?",
          questionMy:
              "Real code ရှိ if စာကြောင်းတွင် condition နောက်တွင် ဘာလာရမည်နည်း။",
          optionsEn: [
            "A colon (:)",
            "A semicolon (;)",
            "A comma (,)",
            "An equals sign (=)",
          ],
          optionsMy: [
            "Colon (:)",
            "Semicolon (;)",
            "Comma (,)",
            "Equals sign (=)",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What shows which lines belong inside a block?",
          questionMy: "Block အတွင်းပါသော စာကြောင်းများကို ဘာကပြသနည်း။",
          optionsEn: [
            "Indentation",
            "Capital letters",
            "Comments",
            "Variable names",
          ],
          optionsMy: [
            "Indentation",
            "စာလုံးအကြီးများ",
            "Comments",
            "Variable အမည်များ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "How many times does for i in range(4): repeat?",
          questionMy: "for i in range(4): သည် ဘယ်နှကြိမ် ထပ်ခါလုပ်မည်နည်း။",
          optionsEn: ["4", "3", "5", "1"],
          optionsMy: ["4", "3", "5", "1"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does elif let a program check?",
          questionMy: "Elif သည် ပရိုဂရမ်အား ဘာစစ်ဆေးခွင့်ပေးသနည်း။",
          optionsEn: [
            "Another condition, if the first if was false",
            "How many times a loop runs",
            "The value of a comment",
            "Whether a variable is deleted",
          ],
          optionsMy: [
            "ပထမ if false ဖြစ်ခဲ့ပါက condition နောက်တစ်ခု",
            "Loop ဘယ်နှကြိမ် run သည်",
            "Comment ၏တန်ဖိုး",
            "Variable ဖျက်ခံရမရ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What must happen for a while loop to eventually stop?",
          questionMy: "While loop နောက်ဆုံးရပ်ရန် ဘာဖြစ်ရမည်နည်း။",
          optionsEn: [
            "Its condition must become false",
            "A comment must run",
            "A variable must be printed",
            "The loop counter must be deleted",
          ],
          optionsMy: [
            "Condition သည် false ဖြစ်လာရမည်",
            "Comment run ရမည်",
            "Variable ပရင့်ထုတ်ရမည်",
            "Loop counter ဖျက်ရမည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 7, Week 28: "Write a Complete Program"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek28 = CourseWeekDef(
  id: "course-secondary1-computing-w28",
  weekNumber: 28,
  titleEn: "Write a Complete Program",
  titleMy: "ပရိုဂရမ်တစ်ခုလုံး ရေးသားခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s1-computing-w28-d1",
      dayNumber: 1,
      titleEn: "Bringing It All Together",
      titleMy: "အားလုံးကို ပေါင်းစပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which building blocks work together in a complete program?",
          questionMy:
              "ပရိုဂရမ်တစ်ခုလုံးတွင် ဘယ် building block များ ပေါင်းစပ်အလုပ်လုပ်သနည်း။",
          optionsEn: [
            "Variables, selection, and iteration all working together",
            "Only variables, nothing else",
            "Only loops, nothing else",
            "Only comments",
          ],
          optionsMy: [
            "Variable, selection, iteration အားလုံး ပေါင်းစပ်",
            "Variable သာ၊ တခြားမပါ",
            "Loop သာ၊ တခြားမပါ",
            "Comment သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a \"syntax error\"?",
          questionMy: "\"Syntax error\" ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A mistake that breaks the language rules, stopping the program from running",
            "A mistake in the story of a reading passage",
            "A variable with the wrong name",
            "A loop that runs too many times",
          ],
          optionsMy: [
            "Language စည်းမျဉ်းကိုချိုးဖောက်ပြီး ပရိုဂရမ် run မရအောင် ဖြစ်စေသော အမှား",
            "Reading passage ၏ ဇာတ်လမ်းအမှား",
            "အမည်မှားသော variable",
            "အကြိမ်များစွာ run သွားသော loop",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is missing from this line that would cause a syntax error: if score > 50 print('Pass')?",
          questionMy:
              "if score > 50 print('Pass') ဟူသောစာကြောင်းတွင် syntax error ဖြစ်စေမည့် ပျောက်နေသောအရာက အဘယ်နည်း။",
          optionsEn: [
            "A colon (:) after the condition",
            "A variable",
            "A loop",
            "A comment",
          ],
          optionsMy: [
            "Condition နောက်ရှိ colon (:)",
            "Variable",
            "Loop",
            "Comment",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why do programmers test a program with different input values?",
          questionMy:
              "Programmer များသည် input တန်ဖိုးအမျိုးမျိုးဖြင့် ပရိုဂရမ်ကို အဘယ့်ကြောင့် test လုပ်ကြသနည်း။",
          optionsEn: [
            "To check it behaves correctly in every case, not just one",
            "To make the program run slower on purpose",
            "To delete all its variables",
            "To turn it into pseudocode again",
          ],
          optionsMy: [
            "အခြေအနေတိုင်းတွင် မှန်ကန်စွာအလုပ်လုပ်မလုပ် စစ်ဆေးရန်",
            "ရည်ရွယ်ချက်ရှိရှိ ပရိုဂရမ်ကို ပိုနှေးအောင်လုပ်ရန်",
            "Variable အားလုံးကို ဖျက်ရန်",
            "Pseudocode အဖြစ် ပြန်ပြောင်းရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is \"debugging\"?",
          questionMy: "\"Debugging\" ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Finding and fixing mistakes in a program",
            "Writing a program for the first time",
            "Deleting a program completely",
            "Translating code into pseudocode",
          ],
          optionsMy: [
            "ပရိုဂရမ်ရှိ အမှားများကို ရှာဖွေပြင်ဆင်ခြင်း",
            "ပရိုဂရမ်တစ်ခုကို ပထမဆုံးအကြိမ် ရေးသားခြင်း",
            "ပရိုဂရမ်ကို လုံးဝဖျက်ပစ်ခြင်း",
            "Code ကို pseudocode အဖြစ် ပြန်ပြောင်းခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w28-d2",
      dayNumber: 2,
      titleEn: "Term 7 Recap Vocabulary",
      titleMy: "Term 7 ပြန်လည်သုံးသပ် ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w28-recap-printfunction",
          termEn: "print() Function",
          termMy: "print() Function",
          matchEn: "Displays output on the screen in real code",
          matchMy: "Real code တွင် မျက်နှာပြင်ပေါ်တွင် output ပြသသည်",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w28-recap-assignmentoperator",
          termEn: "Assignment Operator (=)",
          termMy: "Assignment Operator (=)",
          matchEn: "Gives a variable a value in real code, e.g. score = 0",
          matchMy:
              "Real code တွင် score = 0 ကဲ့သို့ variable သို့ တန်ဖိုးပေးသည်",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w28-recap-ifelifelse",
          termEn: "if / elif / else",
          termMy: "if / elif / else",
          matchEn:
              "Selection structures that choose between actions based on a condition",
          matchMy:
              "Condition အပေါ်မူတည်၍ လုပ်ဆောင်ချက်ရွေးချယ်ပေးသော selection ဖွဲ့စည်းပုံများ",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w28-recap-forwhileloop",
          termEn: "for / while Loop",
          termMy: "for / while Loop",
          matchEn: "Iteration structures that repeat code in real syntax",
          matchMy:
              "Real syntax ဖြင့် code ကို ထပ်ခါလုပ်ပေးသော iteration ဖွဲ့စည်းပုံများ",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w28-recap-syntaxerror",
          termEn: "Syntax Error",
          termMy: "Syntax Error",
          matchEn:
              "A mistake that breaks the language's exact rules and stops a program from running",
          matchMy:
              "Language ၏ အတိအကျစည်းမျဉ်းကိုချိုးဖောက်ပြီး ပရိုဂရမ် run မရအောင် ဖြစ်စေသောအမှား",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w28-d3",
      dayNumber: 3,
      titleEn: "Which Building Block?",
      titleMy: "ဘယ် Building Block လဲ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Variable", "Selection", "Iteration", "Output"],
        bucketsMy: ["Variable", "Selection", "Iteration", "Output"],
        items: [
          SortingItem(
            id: "w28-sort-scorezero",
            labelEn: "score = 0",
            labelMy: "score = 0",
            correctBucketEn: "Variable",
            correctBucketMy: "Variable",
          ),
          SortingItem(
            id: "w28-sort-ifscore50",
            labelEn: "if score > 50:",
            labelMy: "if score > 50:",
            correctBucketEn: "Selection",
            correctBucketMy: "Selection",
          ),
          SortingItem(
            id: "w28-sort-forrange10",
            labelEn: "for i in range(10):",
            labelMy: "for i in range(10):",
            correctBucketEn: "Iteration",
            correctBucketMy: "Iteration",
          ),
          SortingItem(
            id: "w28-sort-printscore",
            labelEn: "print(score)",
            labelMy: "print(score)",
            correctBucketEn: "Output",
            correctBucketMy: "Output",
          ),
          SortingItem(
            id: "w28-sort-nameinput",
            labelEn: "name = input('Name? ')",
            labelMy: "name = input('Name? ')",
            correctBucketEn: "Variable",
            correctBucketMy: "Variable",
          ),
          SortingItem(
            id: "w28-sort-whiletotal",
            labelEn: "while total < 100:",
            labelMy: "while total < 100:",
            correctBucketEn: "Iteration",
            correctBucketMy: "Iteration",
          ),
          SortingItem(
            id: "w28-sort-elifgradeb",
            labelEn: "elif grade == 'B':",
            labelMy: "elif grade == 'B':",
            correctBucketEn: "Selection",
            correctBucketMy: "Selection",
          ),
          SortingItem(
            id: "w28-sort-printdone",
            labelEn: "print('Done!')",
            labelMy: "print('Done!')",
            correctBucketEn: "Output",
            correctBucketMy: "Output",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w28-d4",
      dayNumber: 4,
      titleEn: "Hla Hla's Grade Calculator",
      titleMy: "လှလှ၏ အမှတ်တွက်ချက်စက် ပရိုဂရမ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Hla Hla's Grade Calculator",
        titleMy: "လှလှ၏ အမှတ်တွက်ချက်စက် ပရိုဂရမ်",
        passageEn:
            "Hla Hla planned a complete program that would ask for a test score and print a grade. She wrote score = int(input('Enter your score: ')) to collect a number from the user, then if score >= 80: print('Grade A'), elif score >= 50: print('Grade B'), and else: print('Grade C') to choose the right message. On her first attempt she forgot the colon after else, and the program refused to run with a syntax error. After adding the missing colon, she tested her program three times: with 90 it printed Grade A, with 60 it printed Grade B, and with 30 it printed Grade C. Hla Hla was proud that her finished program combined a variable to store the score, selection to choose between grades, and print() to show the result -- everything she had learned across the whole term, working together in one real program.",
        passageMy:
            "လှလှသည် test score တစ်ခုမေးပြီး grade တစ်ခုပရင့်ထုတ်ပေးမည့် ပရိုဂရမ်တစ်ခုလုံးကို စီစဉ်ခဲ့သည်။ User ထံမှ ဂဏန်းတစ်ခု ရယူရန် score = int(input('Enter your score: ')) ဟု ရေးခဲ့ပြီး၊ မှန်ကန်သော message ကို ရွေးချယ်ရန် if score >= 80: print('Grade A'), elif score >= 50: print('Grade B'), else: print('Grade C') ဟု ဆက်ရေးခဲ့သည်။ ပထမကြိမ်ကြိုးစားရာတွင် else နောက်ရှိ colon ကို မေ့ကျန်ခဲ့ရာ ပရိုဂရမ်သည် syntax error ဖြင့် run ရန် ငြင်းဆန်ခဲ့သည်။ ပျောက်နေသော colon ကို ထည့်ပြီးနောက် သူမသည် ပရိုဂရမ်ကို သုံးကြိမ် test လုပ်ခဲ့သည် - 90 ဖြင့် Grade A ပရင့်ထုတ်ခဲ့ပြီး၊ 60 ဖြင့် Grade B ပရင့်ထုတ်ကာ၊ 30 ဖြင့် Grade C ပရင့်ထုတ်ခဲ့သည်။ သူမ၏ ပြီးစီးသော ပရိုဂရမ်သည် score ကို သိမ်းဆည်းရန် variable တစ်ခု၊ grade ရွေးချယ်ရန် selection၊ ရလဒ်ပြသရန် print() ကို ပေါင်းစပ်ထားခြင်းအား လှလှ ဂုဏ်ယူခဲ့သည် - Term တစ်ခုလုံးသင်ခဲ့သော အရာအားလုံးသည် ပရိုဂရမ်စစ်စစ်တစ်ခုအတွင်း ပေါင်းစပ်အလုပ်လုပ်နေခြင်းဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did Hla Hla's program collect from the user?",
            questionMy: "လှလှ၏ ပရိုဂရမ်သည် user ထံမှ ဘာကို ရယူခဲ့သနည်း။",
            optionsEn: [
              "A test score",
              "A comment",
              "A loop counter",
              "A syntax error",
            ],
            optionsMy: [
              "Test score",
              "Comment",
              "Loop counter",
              "Syntax error",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What mistake caused Hla Hla's first attempt to fail?",
            questionMy: "လှလှ၏ ပထမကြိုးစားမှု မအောင်မြင်ရသည့်အမှားက အဘယ်နည်း။",
            optionsEn: [
              "She forgot the colon after else",
              "She forgot to use a variable",
              "She used two loops by mistake",
              "She deleted her print() function",
            ],
            optionsMy: [
              "Else နောက်ရှိ colon ကို မေ့ကျန်ခဲ့၍",
              "Variable သုံးရန် မေ့ကျန်ခဲ့၍",
              "Loop နှစ်ခု မှားသုံးမိ၍",
              "Print() function ကို ဖျက်မိ၍",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did the program print when the score was 60?",
            questionMy: "Score 60 ဖြစ်သောအခါ ပရိုဂရမ်သည် ဘာပရင့်ထုတ်ခဲ့သနည်း။",
            optionsEn: ["Grade B", "Grade A", "Grade C", "A syntax error"],
            optionsMy: ["Grade B", "Grade A", "Grade C", "Syntax error"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which three building blocks worked together in Hla Hla's finished program?",
            questionMy:
                "လှလှ၏ ပြီးစီးသောပရိုဂရမ်တွင် ဘယ် building block သုံးခုပေါင်းစပ်ထားသနည်း။",
            optionsEn: [
              "A variable, selection, and print()",
              "Only comments and a loop",
              "Only a flowchart and pseudocode",
              "Only a syntax error and a variable",
            ],
            optionsMy: [
              "Variable, selection, print()",
              "Comment နှင့် loop သာ",
              "Flowchart နှင့် pseudocode သာ",
              "Syntax error နှင့် variable သာ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why did Hla Hla test her program three times with different scores?",
            questionMy:
                "လှလှသည် score အမျိုးမျိုးဖြင့် ပရိုဂရမ်ကို သုံးကြိမ်တိတိ test လုပ်ခဲ့သည်မှာ အဘယ့်ကြောင့်နည်း။",
            optionsEn: [
              "To check every branch of the selection worked correctly",
              "To make the program run slower",
              "To delete the variable",
              "To turn the program back into pseudocode",
            ],
            optionsMy: [
              "Selection ၏ branch တိုင်း မှန်ကန်စွာအလုပ်လုပ်မလုပ် စစ်ဆေးရန်",
              "ပရိုဂရမ်ကို ပိုနှေးအောင်လုပ်ရန်",
              "Variable ကို ဖျက်ရန်",
              "ပရိုဂရမ်ကို pseudocode အဖြစ် ပြန်ပြောင်းရန်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w28-d5",
      dayNumber: 5,
      titleEn: "Week 28 Recap Quiz",
      titleMy: "နှစ်ဆယ့်ရှစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What three building blocks make up a complete program?",
          questionMy:
              "ပရိုဂရမ်တစ်ခုလုံးတွင် ဘယ် building block သုံးခု ပါဝင်သနည်း။",
          optionsEn: [
            "Variables, selection, and iteration",
            "Only comments",
            "Only flowcharts",
            "Only pseudocode",
          ],
          optionsMy: [
            "Variable, selection, iteration",
            "Comment သာ",
            "Flowchart သာ",
            "Pseudocode သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a syntax error?",
          questionMy: "Syntax error ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A mistake that stops a program from running",
            "A correct program with no mistakes",
            "A type of loop",
            "A type of variable",
          ],
          optionsMy: [
            "ပရိုဂရမ် run မရအောင် ဖြစ်စေသောအမှား",
            "အမှားမရှိသော မှန်ကန်သောပရိုဂရမ်",
            "Loop အမျိုးအစား",
            "Variable အမျိုးအစား",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does debugging mean?",
          questionMy: "Debugging ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Finding and fixing mistakes in a program",
            "Deleting a program",
            "Writing pseudocode only",
            "Turning off the computer",
          ],
          optionsMy: [
            "ပရိုဂရမ်ရှိအမှားများကို ရှာဖွေပြင်ဆင်ခြင်း",
            "ပရိုဂရမ်ကို ဖျက်ခြင်း",
            "Pseudocode သာရေးခြင်း",
            "ကွန်ပျူတာကို ပိတ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is it important to test a program with different inputs?",
          questionMy:
              "Input အမျိုးမျိုးဖြင့် ပရိုဂရမ်ကို test လုပ်ခြင်းက အဘယ့်ကြောင့် အရေးကြီးသနည်း။",
          optionsEn: [
            "To make sure it works correctly in every case",
            "To make the program slower",
            "To delete all comments",
            "To turn selection into iteration",
          ],
          optionsMy: [
            "အခြေအနေတိုင်းတွင် မှန်ကန်စွာအလုပ်လုပ်ကြောင်း သေချာစေရန်",
            "ပရိုဂရမ်ကို ပိုနှေးစေရန်",
            "Comment အားလုံးကို ဖျက်ရန်",
            "Selection ကို iteration အဖြစ် ပြောင်းရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In real code, what always ends an if or else line before its indented block?",
          questionMy:
              "Real code တွင် if သို့မဟုတ် else စာကြောင်း၏ indent block မတိုင်မီ ဘာက အမြဲအဆုံးသတ်သနည်း။",
          optionsEn: [
            "A colon (:)",
            "A semicolon (;)",
            "A comma (,)",
            "An equals sign (=)",
          ],
          optionsMy: [
            "Colon (:)",
            "Semicolon (;)",
            "Comma (,)",
            "Equals sign (=)",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary1ComputingTerm7 = CourseTermDef(
  id: "course-secondary1-computing-t7",
  termNumber: 7,
  titleEn: "From Pseudocode to Real Code",
  titleMy: "Pseudocode မှ အစစ်အမှန် Code သို့",
  certificateTitleEn: "From Pseudocode to Real Code",
  certificateTitleMy: "Pseudocode မှ အစစ်အမှန် Code သို့",
  weeks: [
    _secondary1ComputingWeek25,
    _secondary1ComputingWeek26,
    _secondary1ComputingWeek27,
    _secondary1ComputingWeek28,
  ], // Term 7 complete (Weeks 25-28)
);

// =====================================================================
// Secondary 1 Computing -- Term 8, Week 29: "Protecting Your Personal
// Information"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek29 = CourseWeekDef(
  id: "course-secondary1-computing-w29",
  weekNumber: 29,
  titleEn: "Protecting Your Personal Information",
  titleMy: "ကိုယ်ရေးကိုယ်တာအချက်အလက်ကို ကာကွယ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s1-computing-w29-d1",
      dayNumber: 1,
      titleEn: "What Should You Keep Private?",
      titleMy: "ဘာကို လျှို့ဝှက်ထားသင့်သနည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a \"digital footprint\"?",
          questionMy: "\"Digital footprint\" ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The trail of information you leave behind every time you post or share something online",
            "A type of computer virus",
            "A password made only of numbers",
            "A photo of your actual footprint",
          ],
          optionsMy: [
            "အွန်လိုင်းတွင် post တင်သည့်အခါတိုင်း ကျန်ရစ်ခဲ့သော အချက်အလက်ခြေရာများ",
            "ကွန်ပျူတာ ဗိုင်းရပ်စ်အမျိုးအစားတစ်ခု",
            "ဂဏန်းသာဖြင့်ဖွဲ့စည်းထားသော စကားဝှက်",
            "မိမိခြေရာ၏ဓာတ်ပုံ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why can posting a photo tagged with your exact location be risky?",
          questionMy:
              "မိမိတည်နေရာကို တိတိကျကျ tag တပ်ထားသောဓာတ်ပုံ post တင်ခြင်းသည် အဘယ့်ကြောင့် အန္တရာယ်ရှိနိုင်သနည်း။",
          optionsEn: [
            "It can show strangers exactly where you are or are not",
            "It makes the photo load more slowly",
            "It uses up more storage space",
            "It changes the photo's colours",
          ],
          optionsMy: [
            "စိမ်းသူများအား သင်ရှိနေရာ (သို့) မရှိနေရာကို တိတိကျကျ ပြသနိုင်သောကြောင့်",
            "ဓာတ်ပုံ load ဖြစ်ရန် ပိုနှေးစေသောကြောင့်",
            "သိုလှောင်ခန်း ပိုမိုသုံးစွဲစေသောကြောင့်",
            "ဓာတ်ပုံ၏အရောင်ကို ပြောင်းလဲစေသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What do privacy settings let you control?",
          questionMy:
              "Privacy settings များက သင့်အား ဘာကို ထိန်းချုပ်ခွင့်ပေးသနည်း။",
          optionsEn: [
            "Who can see what you post online",
            "How fast your internet connection is",
            "How much battery your phone has",
            "What language your device uses",
          ],
          optionsMy: [
            "အွန်လိုင်းတင်ထားသည်များကို မည်သူကြည့်နိုင်သည်ကို",
            "အင်တာနက်ချိတ်ဆက်မှု မည်မျှမြန်သည်ကို",
            "ဖုန်း battery မည်မျှရှိသည်ကို",
            "Device က ဘယ်ဘာသာစကားသုံးသည်ကို",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Before posting something online, what is a good habit to build?",
          questionMy:
              "အွန်လိုင်းတွင် post မတင်မီ မည်သည့်အလေ့အထကောင်းကို မွေးမြူသင့်သနည်း။",
          optionsEn: [
            "Thinking about who might see it and what it reveals about you",
            "Posting as quickly as possible without checking",
            "Only thinking about how many likes it might get",
            "Copying whatever your friends post",
          ],
          optionsMy: [
            "မည်သူကြည့်နိုင်ပြီး သင့်အကြောင်း မည်သည်ကို ဖော်ပြနေသည်ကို စဉ်းစားခြင်း",
            "မစစ်ဆေးဘဲ အမြန်ဆုံး post တင်ခြင်း",
            "Like အရေအတွက်ကိုသာ စဉ်းစားခြင်း",
            "သူငယ်ချင်းများ post တင်သည့်အတိုင်း ကူးယူခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which of these is still personal information worth protecting, even though it feels small?",
          questionMy:
              "အောက်ပါတို့အနက် သေးငယ်ပုံပေါက်သော်လည်း ကာကွယ်ထားသင့်သေးသော ကိုယ်ရေးကိုယ်တာအချက်အလက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Your daily school schedule and when you're usually home alone",
            "Your favourite subject",
            "Your favourite colour",
            "Your favourite school lunch",
          ],
          optionsMy: [
            "သင်၏နေ့စဉ်ကျောင်းအချိန်ဇယားနှင့် အိမ်တွင် တစ်ကိုယ်တည်းဖြစ်လေ့ရှိသည့်အချိန်",
            "သင်နှစ်သက်သော ဘာသာရပ်",
            "သင်နှစ်သက်သော အရောင်",
            "သင်နှစ်သက်သော ကျောင်းထမင်းစားနေရာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w29-d2",
      dayNumber: 2,
      titleEn: "Privacy Vocabulary",
      titleMy: "Privacy ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w29-privacy-digitalfootprint",
          termEn: "Digital Footprint",
          termMy: "Digital Footprint",
          matchEn:
              "The trail of information a person leaves behind by using the internet",
          matchMy:
              "အင်တာနက်သုံးစွဲခြင်းဖြင့် လူတစ်ဦးကျန်ရစ်ခဲ့သော အချက်အလက်ခြေရာ",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w29-privacy-oversharing",
          termEn: "Oversharing",
          termMy: "Oversharing",
          matchEn:
              "Posting more personal information online than is safe or necessary",
          matchMy:
              "လုံခြုံမှုမရှိသော (သို့) မလိုအပ်သော ကိုယ်ရေးအချက်အလက် အလွန်အကျွံ post တင်ခြင်း",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w29-privacy-settings",
          termEn: "Privacy Settings",
          termMy: "Privacy Settings",
          matchEn: "Controls that limit who can see what you post online",
          matchMy:
              "အွန်လိုင်းတင်ထားသည်ကို မည်သူကြည့်နိုင်သည်ကို ကန့်သတ်ပေးသောချိန်ညှိချက်များ",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w29-privacy-locationtag",
          termEn: "Location Tag",
          termMy: "Location Tag",
          matchEn: "A label that shows exactly where a photo or post was made",
          matchMy:
              "ဓာတ်ပုံ (သို့) post ကို ဘယ်နေရာမှလုပ်ကြောင်း တိကျစွာပြသည့် label",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w29-privacy-trustedadult",
          termEn: "Trusted Adult",
          termMy: "Trusted Adult",
          matchEn:
              "A parent, guardian, or teacher you can go to for help online",
          matchMy:
              "အွန်လိုင်းအကူအညီအတွက် သွားနိုင်သော မိဘ၊ အုပ်ထိန်းသူ (သို့) ဆရာ",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w29-d3",
      dayNumber: 3,
      titleEn: "Safe to Share, or Keep Private?",
      titleMy: "Public မျှဝေနိုင်သလား၊ လျှို့ဝှက်ထားရမလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Safe to Share Publicly", "Keep Private"],
        bucketsMy: [
          "Safe to Share Publicly (တင်နိုင်သော)",
          "Keep Private (လျှို့ဝှက်ထားရမည့်)",
        ],
        items: [
          SortingItem(
            id: "w29-sort-favouritehobby",
            labelEn: "Your favourite hobby",
            labelMy: "သင်နှစ်သက်သော ဝါသနာ",
            correctBucketEn: "Safe to Share Publicly",
            correctBucketMy: "Safe to Share Publicly (တင်နိုင်သော)",
          ),
          SortingItem(
            id: "w29-sort-homeaddress",
            labelEn: "Your home address",
            labelMy: "သင်၏အိမ်လိပ်စာ",
            correctBucketEn: "Keep Private",
            correctBucketMy: "Keep Private (လျှို့ဝှက်ထားရမည့်)",
          ),
          SortingItem(
            id: "w29-sort-phonenumber",
            labelEn: "Your phone number",
            labelMy: "သင်၏ဖုန်းနံပါတ်",
            correctBucketEn: "Keep Private",
            correctBucketMy: "Keep Private (လျှို့ဝှက်ထားရမည့်)",
          ),
          SortingItem(
            id: "w29-sort-favouritesubject",
            labelEn: "Your favourite school subject",
            labelMy: "သင်နှစ်သက်သော ကျောင်းဘာသာရပ်",
            correctBucketEn: "Safe to Share Publicly",
            correctBucketMy: "Safe to Share Publicly (တင်နိုင်သော)",
          ),
          SortingItem(
            id: "w29-sort-schedule",
            labelEn: "Your daily school schedule and when you're home alone",
            labelMy: "သင်၏နေ့စဉ်အချိန်ဇယားနှင့် တစ်ကိုယ်တည်းရှိချိန်",
            correctBucketEn: "Keep Private",
            correctBucketMy: "Keep Private (လျှို့ဝှက်ထားရမည့်)",
          ),
          SortingItem(
            id: "w29-sort-favouritecolour",
            labelEn: "Your favourite colour",
            labelMy: "သင်နှစ်သက်သော အရောင်",
            correctBucketEn: "Safe to Share Publicly",
            correctBucketMy: "Safe to Share Publicly (တင်နိုင်သော)",
          ),
          SortingItem(
            id: "w29-sort-fullbirthdate",
            labelEn: "Your full birth date and where you were born",
            labelMy: "သင်၏မွေးနေ့အပြည့်အစုံနှင့် မွေးဖွားရာနေရာ",
            correctBucketEn: "Keep Private",
            correctBucketMy: "Keep Private (လျှို့ဝှက်ထားရမည့်)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w29-d4",
      dayNumber: 4,
      titleEn: "Ei Ei's Holiday Photo",
      titleMy: "အိအိ၏ အားလပ်ရက်ဓာတ်ပုံ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Ei Ei's Holiday Photo",
        titleMy: "အိအိ၏ အားလပ်ရက်ဓာတ်ပုံ",
        passageEn:
            "Ei Ei was excited to post a photo from her family's beach holiday. She almost included a location tag showing exactly which hotel they were staying at and wrote a caption saying their house would be empty for a whole week. Just before posting, she remembered her class had learned about digital footprints -- once something is posted, it is very hard to fully take back, and strangers could see it too. She remembered Thandar's story about a phishing message from Term 2, and realised protecting personal information mattered just as much as spotting a trick message. So Ei Ei removed the location tag, changed her caption to something general, and checked that only her friends could see the post using her privacy settings. She still shared her happy memory, just more safely.",
        passageMy:
            "အိအိသည် သူမ၏မိသားစု ပင်လယ်ကမ်းခြေအားလပ်ရက် ဓာတ်ပုံကို post တင်ရန် စိတ်လှုပ်ရှားခဲ့သည်။ သူမတည်းခိုနေသော ဟိုတယ်ကို တိတိကျကျပြသော location tag ကို ထည့်ပေးမလို ဖြစ်ခဲ့ပြီး၊ သူတို့အိမ်သည် တစ်ပတ်လုံး ဗလာဖြစ်နေမည့်အကြောင်း caption ရေးထားခဲ့သည်။ Post မတင်မီ သူမသည် digital footprint အကြောင်း အတန်းတွင်သင်ခဲ့ဖူးသည်ကို သတိရခဲ့သည် - တစ်ခုခု post တင်ပြီးသည်နှင့် ပြန်ရုတ်သိမ်းရန် အလွန်ခက်ခဲပြီး စိမ်းသူများလည်း မြင်နိုင်ကြောင်း။ သူမသည် Term 2 တွင် phishing message အကြောင်း သန္တာ၏ဇာတ်လမ်းကို သတိရမိပြီး ကိုယ်ရေးကိုယ်တာအချက်အလက် ကာကွယ်ခြင်းသည် လှည့်ကွက်စာကို သတိထားမိခြင်းနှင့် အတူတူပင် အရေးကြီးကြောင်း သဘောပေါက်ခဲ့သည်။ ထို့ကြောင့် အိအိသည် location tag ကိုဖျက်ပြီး caption ကို ယေဘုယျအဖြစ် ပြောင်းကာ privacy settings ဖြင့် သူမ၏သူငယ်ချင်းများသာ post ကိုမြင်နိုင်အောင် စစ်ဆေးခဲ့သည်။ သူမ၏ပျော်ရွှင်ဖွယ်အမှတ်တရကို ပိုမိုလုံခြုံစွာ ဆက်လက်မျှဝေနိုင်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What almost went into Ei Ei's caption before she stopped herself?",
            questionMy:
                "အိအိ သူမ့်ကိုယ်သူ မတားဆီးမီ caption ထဲ ဘာထည့်မလိုဖြစ်ခဲ့သနည်း။",
            optionsEn: [
              "That their house would be empty for a whole week",
              "Her favourite beach game",
              "Her school timetable for the year",
              "Her friend's phone number",
            ],
            optionsMy: [
              "သူတို့အိမ်သည် တစ်ပတ်လုံးဗလာဖြစ်နေမည့်အကြောင်း",
              "သူမနှစ်သက်သော ကမ်းခြေဂိမ်း",
              "တစ်နှစ်စာ ကျောင်းအချိန်ဇယား",
              "သူငယ်ချင်း၏ဖုန်းနံပါတ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Ei Ei remember from an earlier lesson?",
            questionMy: "အိအိသည် အရင်သင်ခန်းစာမှ ဘာကို သတိရမိခဲ့သနည်း။",
            optionsEn: [
              "The idea of a digital footprint",
              "How to draw a flowchart",
              "How to convert binary to denary",
              "How to write a for loop",
            ],
            optionsMy: [
              "Digital footprint ဆိုသောအယူအဆ",
              "Flowchart ရေးနည်း",
              "Binary ကို denary သို့ ပြောင်းနည်း",
              "For loop ရေးနည်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Whose earlier story did Ei Ei think of?",
            questionMy: "အိအိသည် မည်သူ၏အရင်ဇာတ်လမ်းကို သတိရမိခဲ့သနည်း။",
            optionsEn: ["Thandar's", "Zaw's", "Hla Hla's", "Nilar's"],
            optionsMy: ["သန္တာ၏", "ဇော်၏", "လှလှ၏", "နီလာ၏"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What two things did Ei Ei change before posting?",
            questionMy: "Post မတင်မီ အိအိ ဘာနှစ်ခုပြောင်းခဲ့သနည်း။",
            optionsEn: [
              "She removed the location tag and changed her caption",
              "She deleted the photo completely",
              "She changed her password and username",
              "She turned off her phone",
            ],
            optionsMy: [
              "Location tag ကိုဖျက်ပြီး caption ကို ပြောင်းခဲ့သည်",
              "ဓာတ်ပုံကို လုံးဝဖျက်ခဲ့သည်",
              "စကားဝှက်နှင့် username ကို ပြောင်းခဲ့သည်",
              "ဖုန်းကို ပိတ်ခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Ei Ei use to limit who could see her post?",
            questionMy:
                "Post ကို မည်သူကြည့်နိုင်သည်ကို ကန့်သတ်ရန် အိအိ ဘာကိုသုံးခဲ့သနည်း။",
            optionsEn: [
              "Her privacy settings",
              "A strong password",
              "A loop",
              "A location tag",
            ],
            optionsMy: [
              "Privacy settings",
              "ခိုင်မာသောစကားဝှက်",
              "Loop",
              "Location tag",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w29-d5",
      dayNumber: 5,
      titleEn: "Week 29 Recap Quiz",
      titleMy: "နှစ်ဆယ့်ကိုးပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a digital footprint?",
          questionMy: "Digital footprint ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The trail of information you leave behind online",
            "A password made of numbers only",
            "A type of computer virus",
            "A picture of your foot",
          ],
          optionsMy: [
            "အွန်လိုင်းတွင်ကျန်ရစ်ခဲ့သော အချက်အလက်ခြေရာ",
            "ဂဏန်းသာဖြင့်ဖွဲ့စည်းထားသော စကားဝှက်",
            "ကွန်ပျူတာဗိုင်းရပ်စ်အမျိုးအစား",
            "ခြေရာ၏ဓာတ်ပုံ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What do privacy settings control?",
          questionMy: "Privacy settings များက ဘာကို ထိန်းချုပ်သနည်း။",
          optionsEn: [
            "Who can see what you post",
            "How fast your internet is",
            "Your phone's battery life",
            "Your device's language",
          ],
          optionsMy: [
            "Post တင်ထားသည်ကို မည်သူကြည့်နိုင်သည်",
            "အင်တာနက်မြန်နှုန်း",
            "ဖုန်း battery",
            "Device ဘာသာစကား",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is a location tag risky to include on a public post?",
          questionMy:
              "Public post တွင် location tag ထည့်ခြင်းသည် အဘယ့်ကြောင့် အန္တရာယ်ရှိနိုင်သနည်း။",
          optionsEn: [
            "It shows strangers exactly where you are",
            "It makes photos load slower",
            "It uses more storage",
            "It changes the photo's colours",
          ],
          optionsMy: [
            "စိမ်းသူများအား သင်ရှိရာနေရာကို တိတိကျကျပြသနိုင်သောကြောင့်",
            "ဓာတ်ပုံပိုနှေးအောင်ဖြစ်စေသောကြောင့်",
            "သိုလှောင်ခန်းပိုသုံးသောကြောင့်",
            "ဓာတ်ပုံအရောင်ပြောင်းစေသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What should you do before posting something online?",
          questionMy: "အွန်လိုင်းတွင် post မတင်မီ ဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Think about who might see it and what it reveals",
            "Post as fast as possible",
            "Only think about likes",
            "Copy what friends post",
          ],
          optionsMy: [
            "မည်သူကြည့်နိုင်ပြီး ဘာဖော်ပြနေသည်ကို စဉ်းစားပါ",
            "အမြန်ဆုံး post တင်ပါ",
            "Like ကိုသာ စဉ်းစားပါ",
            "သူငယ်ချင်း post ကို ကူးယူပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Even small details like your daily schedule can be personal information because:",
          questionMy:
              "နေ့စဉ်အချိန်ဇယားကဲ့သို့ အသေးအဖွဲ့အချက်များပင် ကိုယ်ရေးကိုယ်တာအချက်အလက်ဖြစ်နိုင်သည်မှာ:",
          optionsEn: [
            "It can reveal when you are alone or where you will be",
            "It takes up storage space",
            "It changes your password",
            "It slows down your device",
          ],
          optionsMy: [
            "သင်တစ်ကိုယ်တည်းရှိချိန် (သို့) ရှိမည့်နေရာကို ဖော်ပြနိုင်သောကြောင့်",
            "သိုလှောင်ခန်းသုံးသောကြောင့်",
            "စကားဝှက်ကိုပြောင်းလဲစေသောကြောင့်",
            "Device ကို နှေးအောင်လုပ်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 8, Week 30: "Strong Passwords and
// Account Security"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek30 = CourseWeekDef(
  id: "course-secondary1-computing-w30",
  weekNumber: 30,
  titleEn: "Strong Passwords and Account Security",
  titleMy: "ခိုင်မာသောစကားဝှက်နှင့် အကောင့်လုံခြုံရေး",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s1-computing-w30-d1",
      dayNumber: 1,
      titleEn: "Keeping Your Accounts Secure",
      titleMy: "မိမိအကောင့်များကို လုံခြုံအောင်ထားခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Why is it risky to use the same password for every account?",
          questionMy:
              "အကောင့်တိုင်းတွင် စကားဝှက်တစ်ခုတည်းသုံးခြင်းသည် အဘယ့်ကြောင့် အန္တရာယ်ရှိနိုင်သနည်း။",
          optionsEn: [
            "If one account is broken into, every other account becomes at risk too",
            "It makes your password too long to remember",
            "It makes your accounts load more slowly",
            "It is against the rules of every website",
          ],
          optionsMy: [
            "အကောင့်တစ်ခု ဝင်ရောက်ခံရလျှင် ကျန်အကောင့်များလည်း အန္တရာယ်ရှိလာသောကြောင့်",
            "စကားဝှက်ကို မှတ်ရန် ရှည်လွန်းလာစေသောကြောင့်",
            "အကောင့်များ load ဖြစ်ရန် ပိုနှေးစေသောကြောင့်",
            "Website တိုင်း၏စည်းမျဉ်းကို ဆန့်ကျင်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is the strongest password?",
          questionMy: "အောက်ပါတို့အနက် အခိုင်မာဆုံးစကားဝှက်မှာ အဘယ်နည်း။",
          optionsEn: ["Tr7!kPq29xz", "password1", "myname2010", "123456789"],
          optionsMy: ["Tr7!kPq29xz", "password1", "myname2010", "123456789"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Who should you share your password with?",
          questionMy: "သင်၏စကားဝှက်ကို မည်သူနှင့် မျှဝေသင့်သနည်း။",
          optionsEn: [
            "No one -- not even close friends",
            "Any close friend who asks",
            "Anyone in your class",
            "Anyone who messages you online",
          ],
          optionsMy: [
            "မည်သူနှင့်မျှ မျှဝေသင့်ပါ - ရင်းနှီးသောသူငယ်ချင်းပင်",
            "မေးလာသော ရင်းနှီးသောသူငယ်ချင်းတိုင်း",
            "အတန်းထဲရှိ မည်သူမဆို",
            "အွန်လိုင်းတွင် message ပို့လာသော မည်သူမဆို",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A message says \"Your account will be deleted -- log in here now to save it!\" What should you do?",
          questionMy:
              "\"သင်၏အကောင့်ကို ဖျက်ပစ်တော့မည် - ယခုပင် login ဝင်၍ ကယ်တင်ပါ!\" ဟူသောစာကို ရရှိလျှင် သင်ဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Be suspicious, don't click the link, and check with a trusted adult",
            "Log in immediately using the link in the message",
            "Reply with your password right away",
            "Forward the message to all your friends",
          ],
          optionsMy: [
            "သံသယရှိပြီး link ကိုမနှိပ်ဘဲ ယုံကြည်ရသူကြီးနှင့် စစ်ဆေးပါ",
            "Message ထဲရှိ link ဖြင့် ချက်ချင်း login ဝင်ပါ",
            "ချက်ချင်း စကားဝှက်ဖြင့် ပြန်စာပို့ပါ",
            "Message ကို သူငယ်ချင်းအားလုံးထံ ပေးပို့ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What makes a password easy for others to guess?",
          questionMy:
              "စကားဝှက်တစ်ခုကို အခြားသူများ မှန်းရလွယ်ကူစေသည့်အချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Using your own name or birthday",
            "Mixing letters, numbers, and symbols",
            "Making it long",
            "Using a random phrase",
          ],
          optionsMy: [
            "မိမိကိုယ်ပိုင်နာမည် (သို့) မွေးနေ့ကို သုံးခြင်း",
            "စာလုံး၊ ဂဏန်း၊ သင်္ကေတများ ရောနှောသုံးခြင်း",
            "ရှည်လျားအောင်ဖန်တီးခြင်း",
            "ကျပန်းစာစုတစ်ခုသုံးခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w30-d2",
      dayNumber: 2,
      titleEn: "Account Security Vocabulary",
      titleMy: "အကောင့်လုံခြုံရေး ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w30-security-strongpassword",
          termEn: "Strong Password",
          termMy: "Strong Password",
          matchEn:
              "A long password mixing letters, numbers, and symbols that is hard to guess",
          matchMy:
              "စာလုံး၊ ဂဏန်း၊ သင်္ကေတများ ရောနှောထားပြီး မှန်းရခက်သော ရှည်လျားသောစကားဝှက်",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w30-security-weakpassword",
          termEn: "Weak Password",
          termMy: "Weak Password",
          matchEn:
              "A short or predictable password, like a real word or a birth date",
          matchMy:
              "တကယ့်စကားလုံး (သို့) မွေးနေ့ကဲ့သို့ တိုတောင်း၍ မှန်းရလွယ်သောစကားဝှက်",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w30-security-accountsecurity",
          termEn: "Account Security",
          termMy: "Account Security",
          matchEn: "Keeping an online account safe from unwanted access",
          matchMy: "အွန်လိုင်းအကောင့်ကို မလိုလားသောဝင်ရောက်မှုမှ ကာကွယ်ခြင်း",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w30-security-suspiciouslogin",
          termEn: "Suspicious Login Request",
          termMy: "Suspicious Login Request",
          matchEn:
              "An unexpected message urgently asking you to log in or share your password",
          matchMy:
              "Login ဝင်ရန် (သို့) စကားဝှက်မျှဝေရန် အလျင်စလိုတောင်းဆိုသော မမျှော်လင့်ထားသောစာ",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w30-security-reusedpassword",
          termEn: "Reused Password",
          termMy: "Reused Password",
          matchEn:
              "The same password used across many accounts, risky if one account is broken into",
          matchMy:
              "အကောင့်အများအတွက် အသုံးပြုသော စကားဝှက်တစ်ခုတည်း၊ တစ်ခုပေါက်ကြားလျှင် အန္တရာယ်ရှိသည်",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w30-d3",
      dayNumber: 3,
      titleEn: "Strong Password, or Weak Password?",
      titleMy: "ခိုင်မာသောစကားဝှက်လား၊ အားနည်းသောစကားဝှက်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Strong Password", "Weak Password"],
        bucketsMy: [
          "Strong Password (ခိုင်မာသော)",
          "Weak Password (အားနည်းသော)",
        ],
        items: [
          SortingItem(
            id: "w30-sort-tr7kpq",
            labelEn: "Tr7!kPq29xz",
            labelMy: "Tr7!kPq29xz",
            correctBucketEn: "Strong Password",
            correctBucketMy: "Strong Password (ခိုင်မာသော)",
          ),
          SortingItem(
            id: "w30-sort-123456",
            labelEn: "123456",
            labelMy: "123456",
            correctBucketEn: "Weak Password",
            correctBucketMy: "Weak Password (အားနည်းသော)",
          ),
          SortingItem(
            id: "w30-sort-ownname",
            labelEn: "Your own first name",
            labelMy: "မိမိ၏ပထမနာမည်",
            correctBucketEn: "Weak Password",
            correctBucketMy: "Weak Password (အားနည်းသော)",
          ),
          SortingItem(
            id: "w30-sort-randomphrase",
            labelEn: "Zg8#mLwq!42kT",
            labelMy: "Zg8#mLwq!42kT",
            correctBucketEn: "Strong Password",
            correctBucketMy: "Strong Password (ခိုင်မာသော)",
          ),
          SortingItem(
            id: "w30-sort-petname",
            labelEn: "Your pet's name only",
            labelMy: "မိမိအိမ်မွေးတိရစ္ဆာန်နာမည်သာ",
            correctBucketEn: "Weak Password",
            correctBucketMy: "Weak Password (အားနည်းသော)",
          ),
          SortingItem(
            id: "w30-sort-birthdatepassword",
            labelEn: "Your birth date only, like 15062012",
            labelMy: "မိမိမွေးနေ့သာ, 15062012 ကဲ့သို့",
            correctBucketEn: "Weak Password",
            correctBucketMy: "Weak Password (အားနည်းသော)",
          ),
          SortingItem(
            id: "w30-sort-longmix",
            labelEn: "Qx4\$vNp7!eR2w",
            labelMy: "Qx4\$vNp7!eR2w",
            correctBucketEn: "Strong Password",
            correctBucketMy: "Strong Password (ခိုင်မာသော)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w30-d4",
      dayNumber: 4,
      titleEn: "Chit Su's Suspicious Message",
      titleMy: "ချစ်စု၏ သံသယဖြစ်ဖွယ်စာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Chit Su's Suspicious Message",
        titleMy: "ချစ်စု၏ သံသယဖြစ်ဖွယ်စာ",
        passageEn:
            "Chit Su received a message that looked like it was from her favourite game, saying \"Your account will be deleted -- log in here now to save it!\" with a link attached. Her first instinct was to click it right away because she was worried about losing her progress. But she paused and remembered what her class had learned: real companies do not usually threaten to delete your account within minutes, and urgent messages like this are often designed to trick you into typing your password into a fake page. Instead of clicking the link, Chit Su opened the real game app directly and checked her account there -- it was completely fine. She reported the suspicious message and told her older sister what had happened, glad she had paused before reacting.",
        passageMy:
            "ချစ်စုသည် သူမနှစ်သက်သော game မှလာသည့်ပုံစံဖြင့် \"သင်၏အကောင့်ကို ဖျက်ပစ်တော့မည် - ယခုပင် login ဝင်၍ ကယ်တင်ပါ!\" ဟူသော message တစ်စောင်ကို link တစ်ခုနှင့်အတူ ရရှိခဲ့သည်။ သူမ၏ ပထမတုံ့ပြန်မှုက progress ပျောက်ဆုံးမည်ကို စိုးရိမ်သဖြင့် link ကို ချက်ချင်းနှိပ်ရန်ဖြစ်ခဲ့သည်။ သို့သော် သူမရပ်တန့်ကာ အတန်းတွင်သင်ခဲ့ဖူးသည်ကို သတိရမိသည် - တကယ့်ကုမ္ပဏီများသည် ရက်ပိုင်းအတွင်း အကောင့်ဖျက်ပစ်မည်ဟု ခြိမ်းခြောက်လေ့မရှိပြီး၊ ဤကဲ့သို့ အလျင်စလို message များသည် သင့်စကားဝှက်ကို အတု page တစ်ခုတွင် ရိုက်ထည့်စေရန် ဒီဇိုင်းထုတ်ထားလေ့ရှိကြောင်း။ Link ကိုနှိပ်မည့်အစား ချစ်စုသည် တကယ့် game app ကို တိုက်ရိုက်ဖွင့်ပြီး သူမ၏အကောင့်ကို စစ်ဆေးခဲ့ရာ လုံးဝပြဿနာမရှိကြောင်း တွေ့ခဲ့သည်။ သူမသည် ထိုသံသယဖြစ်ဖွယ်စာကို တိုင်ကြားပြီး အစ်မကြီးကို ဖြစ်ပျက်ခဲ့သမျှကို ပြောပြခဲ့သည်၊ တုံ့ပြန်မီ ရပ်တန့်ခဲ့ခြင်းအတွက် သူမ ပျော်ရွှင်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did the suspicious message threaten to do?",
            questionMy: "သံသယဖြစ်ဖွယ်စာက ဘာလုပ်မည်ဟု ခြိမ်းခြောက်ခဲ့သနည်း။",
            optionsEn: [
              "Delete her account",
              "Give her a free prize",
              "Update her password automatically",
              "Send her a certificate",
            ],
            optionsMy: [
              "သူမ၏အကောင့်ဖျက်ပစ်မည်",
              "အခမဲ့ဆုပေးမည်",
              "စကားဝှက်ကို အလိုအလျောက်ပြောင်းပေးမည်",
              "လက်မှတ်ပေးမည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Why did Chit Su pause before clicking the link?",
            questionMy: "Link ကိုမနှိပ်မီ ချစ်စု အဘယ့်ကြောင့် ရပ်တန့်ခဲ့သနည်း။",
            optionsEn: [
              "She remembered urgent messages like this are often tricks",
              "She had no internet connection",
              "Her phone battery died",
              "She did not know how to click links",
            ],
            optionsMy: [
              "ဤကဲ့သို့ အလျင်စလိုစာများသည် လှည့်ကွက်များများဖြစ်ကြောင်း သတိရမိသောကြောင့်",
              "အင်တာနက်ချိတ်ဆက်မှုမရှိသောကြောင့်",
              "ဖုန်း battery ကုန်သွားသောကြောင့်",
              "Link နှိပ်နည်းမသိသောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "How did Chit Su check if her account was really at risk?",
            questionMy:
                "သူမ၏အကောင့် တကယ်အန္တရာယ်ရှိမရှိ ချစ်စု မည်သို့စစ်ဆေးခဲ့သနည်း။",
            optionsEn: [
              "She opened the real game app directly instead of using the link",
              "She typed her password into the link's page",
              "She ignored it completely and did nothing",
              "She replied asking for more information",
            ],
            optionsMy: [
              "Link မသုံးဘဲ တကယ့် game app ကို တိုက်ရိုက်ဖွင့်ခဲ့သည်",
              "Link ၏ page ထဲသို့ စကားဝှက်ရိုက်ထည့်ခဲ့သည်",
              "လုံးဝလျစ်လျူရှုပြီး ဘာမှမလုပ်ခဲ့ပါ",
              "အချက်အလက်ပိုမိုတောင်းရန် ပြန်စာပို့ခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Chit Su do after checking her account?",
            questionMy: "အကောင့်စစ်ဆေးပြီးနောက် ချစ်စု ဘာဆက်လုပ်ခဲ့သနည်း။",
            optionsEn: [
              "She reported the message and told her older sister",
              "She deleted her account herself",
              "She shared the link with her friends",
              "She replied to the message with her password",
            ],
            optionsMy: [
              "Message ကို တိုင်ကြားပြီး အစ်မကြီးကို ပြောပြခဲ့သည်",
              "သူမကိုယ်တိုင် အကောင့်ကို ဖျက်ခဲ့သည်",
              "Link ကို သူငယ်ချင်းများနှင့် မျှဝေခဲ့သည်",
              "Message ကို စကားဝှက်ဖြင့် ပြန်စာပို့ခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What does this story suggest real companies rarely do?",
            questionMy:
                "ဤဇာတ်လမ်းက တကယ့်ကုမ္ပဏီများ ရှားရှားပါးပါးသာလုပ်တတ်သည်ဟု ဖော်ပြသည်မှာ အဘယ်နည်း။",
            optionsEn: [
              "Threaten to delete your account within minutes",
              "Send you a welcome message",
              "Ask for feedback about their service",
              "Offer customer support",
            ],
            optionsMy: [
              "ရက်ပိုင်းအတွင်း အကောင့်ဖျက်ပစ်မည်ဟု ခြိမ်းခြောက်ခြင်း",
              "ကြိုဆိုသောစာပို့ခြင်း",
              "ဝန်ဆောင်မှုအတွက် အကြံပြုချက်တောင်းခြင်း",
              "ဖောက်သည်ဝန်ဆောင်မှုပေးခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w30-d5",
      dayNumber: 5,
      titleEn: "Week 30 Recap Quiz",
      titleMy: "သုံးဆယ်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What makes a password strong?",
          questionMy: "စကားဝှက်တစ်ခုကို ခိုင်မာစေသည့်အချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "It is long and mixes letters, numbers, and symbols",
            "It is your own name",
            "It is short and simple",
            "It is the same as your username",
          ],
          optionsMy: [
            "ရှည်လျားပြီး စာလုံး၊ ဂဏန်း၊ သင်္ကေတများ ရောနှောထားခြင်း",
            "မိမိကိုယ်ပိုင်နာမည်ဖြစ်ခြင်း",
            "တိုတောင်းရိုးရှင်းခြင်း",
            "Username နှင့်တူညီခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Why is reusing the same password risky?",
          questionMy:
              "စကားဝှက်တစ်ခုတည်း ထပ်ခါသုံးခြင်း အဘယ့်ကြောင့် အန္တရာယ်ရှိသနည်း။",
          optionsEn: [
            "If one account is broken into, all your accounts are at risk",
            "It makes the password too easy to remember",
            "It slows down your device",
            "It is against every website's design",
          ],
          optionsMy: [
            "အကောင့်တစ်ခု ပေါက်ကြားလျှင် အကောင့်အားလုံး အန္တရာယ်ရှိသောကြောင့်",
            "မှတ်ရလွယ်လွန်းစေသောကြောင့်",
            "Device ကို နှေးအောင်လုပ်သောကြောင့်",
            "Website ၏ ဒီဇိုင်းကို ဆန့်ကျင်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Who should you share your password with?",
          questionMy: "သင်၏စကားဝှက်ကို မည်သူနှင့် မျှဝေသင့်သနည်း။",
          optionsEn: [
            "No one",
            "Your best friend",
            "Your classmates",
            "Anyone who asks nicely",
          ],
          optionsMy: [
            "မည်သူနှင့်မျှ",
            "ရင်းနှီးသောသူငယ်ချင်း",
            "အတန်းဖော်များ",
            "ယဉ်ကျေးစွာမေးသော မည်သူမဆို",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What should you do if you get an urgent message asking you to log in immediately?",
          questionMy:
              "ချက်ချင်း login ဝင်ရန်တောင်းဆိုသော အလျင်စလိုစာရလျှင် ဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Be suspicious and check with a trusted adult before doing anything",
            "Click the link right away to be safe",
            "Reply with your password immediately",
            "Ignore it and delete your account yourself",
          ],
          optionsMy: [
            "သံသယရှိပြီး မည်သည့်အရာမှမလုပ်မီ ယုံကြည်ရသူကြီးနှင့် စစ်ဆေးပါ",
            "လုံခြုံစေရန် link ကို ချက်ချင်းနှိပ်ပါ",
            "ချက်ချင်း စကားဝှက်ဖြင့် ပြန်စာပို့ပါ",
            "လျစ်လျူရှုပြီး ကိုယ်တိုင်အကောင့်ဖျက်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is account security?",
          questionMy: "Account security ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Keeping an online account safe from unwanted access",
            "Making an account load faster",
            "Deleting an account completely",
            "Sharing an account with friends",
          ],
          optionsMy: [
            "အွန်လိုင်းအကောင့်ကို မလိုလားသောဝင်ရောက်မှုမှ ကာကွယ်ခြင်း",
            "အကောင့်ကို ပိုမြန်စွာ load ဖြစ်စေခြင်း",
            "အကောင့်ကို လုံးဝဖျက်ခြင်း",
            "အကောင့်ကို သူငယ်ချင်းများနှင့် မျှဝေခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 8, Week 31: "Being Kind Online"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek31 = CourseWeekDef(
  id: "course-secondary1-computing-w31",
  weekNumber: 31,
  titleEn: "Being Kind Online",
  titleMy: "အွန်လိုင်းတွင် ကြင်နာစွာနေထိုင်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s1-computing-w31-d1",
      dayNumber: 1,
      titleEn: "Netiquette and Being an Upstander",
      titleMy: "Netiquette နှင့် Upstander ဖြစ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is \"netiquette\"?",
          questionMy: "\"Netiquette\" ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Good manners and polite behaviour when communicating online",
            "A type of computer network cable",
            "A password rule",
            "A way to speed up the internet",
          ],
          optionsMy: [
            "အွန်လိုင်းတွင် ဆက်သွယ်ရာတွင် ယဉ်ကျေးသိမ်မွေ့စွာ ကျင့်ကြံခြင်း",
            "ကွန်ပျူတာကွန်ရက် ကေဘယ်အမျိုးအစား",
            "စကားဝှက် စည်းမျဉ်း",
            "အင်တာနက်မြန်ဆန်စေသောနည်းလမ်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the difference between disagreeing with someone and being unkind to them online?",
          questionMy:
              "အွန်လိုင်းတွင် တစ်စုံတစ်ဦးနှင့် သဘောထားကွဲလွဲခြင်းနှင့် သူ့ကို ရက်စက်စွာဆက်ဆံခြင်းတို့၏ ကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Disagreeing focuses on the idea; being unkind attacks the person",
            "There is no difference between them",
            "Disagreeing is always worse",
            "Being unkind is always allowed if you disagree first",
          ],
          optionsMy: [
            "သဘောထားကွဲလွဲခြင်းသည် အယူအဆအပေါ်တွင်ရှိပြီး၊ ရက်စက်ခြင်းသည် လူပုဂ္ဂိုလ်ကို တိုက်ခိုက်ခြင်းဖြစ်သည်",
            "ကွာခြားချက်မရှိပါ",
            "သဘောထားကွဲလွဲခြင်းက အမြဲပိုဆိုးသည်",
            "ဦးစွာသဘောထားကွဲလျှင် ရက်စက်ခွင့်ရှိသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is an \"upstander\"?",
          questionMy: "\"Upstander\" ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Someone who speaks up or gets help when they see unkindness online",
            "Someone who joins in with cyberbullying",
            "Someone who ignores everything they see online",
            "A type of strong password",
          ],
          optionsMy: [
            "အွန်လိုင်းတွင် ရက်စက်မှုကိုမြင်လျှင် အသံထွက်ပြော (သို့) အကူအညီရှာသောသူ",
            "Cyberbullying တွင် ပါဝင်လိုက်ပါသောသူ",
            "အွန်လိုင်းတွင်မြင်သမျှကို လျစ်လျူရှုသောသူ",
            "ခိုင်မာသောစကားဝှက်အမျိုးအစား",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why does a post stay part of your digital footprint even after you delete it?",
          questionMy:
              "Post တစ်ခုကို ဖျက်ပြီးနောက်ပင် digital footprint အစိတ်အပိုင်းအဖြစ် ဆက်ရှိနေခြင်းမှာ အဘယ့်ကြောင့်နည်း။",
          optionsEn: [
            "Others may have already seen, saved, or shared it before it was deleted",
            "Deleted posts always disappear completely and instantly",
            "It automatically becomes a password",
            "It changes into a different file type",
          ],
          optionsMy: [
            "ဖျက်ပစ်မီ အခြားသူများ မြင်ပြီး၊ သိမ်းဆည်း (သို့) မျှဝေပြီးသွားနိုင်သောကြောင့်",
            "ဖျက်ထားသော post များသည် အမြဲလုံးဝချက်ချင်းပျောက်ကွယ်သွားသောကြောင့်",
            "အလိုအလျောက် စကားဝှက်ဖြစ်သွားသောကြောင့်",
            "File အမျိုးအစားပြောင်းလဲသွားသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "If a friend tells you they are being bullied online, what is the best first step?",
          questionMy:
              "သူငယ်ချင်းတစ်ဦးက အွန်လိုင်းတွင် bully ခံနေရကြောင်း ပြောပြလျှင် အကောင်းဆုံးပထမလုပ်ဆောင်ချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Listen, support them, and help them tell a trusted adult",
            "Tell them to ignore it forever",
            "Post about it publicly to embarrass the bully",
            "Message the bully back with unkind words",
          ],
          optionsMy: [
            "နားထောင်ပေးပြီး ယုံကြည်ရသူကြီးကို ပြောပြရန် ကူညီပါ",
            "ထာဝရလျစ်လျူရှုရန် ပြောပါ",
            "Bully ကို အရှက်ရအောင် အများသူငှာ post တင်ပါ",
            "Bully ထံ ရက်စက်သောစကားများဖြင့် message ပြန်ပို့ပါ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w31-d2",
      dayNumber: 2,
      titleEn: "Being Kind Online Vocabulary",
      titleMy: "အွန်လိုင်းကြင်နာမှု ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w31-kind-netiquette",
          termEn: "Netiquette",
          termMy: "Netiquette",
          matchEn:
              "Good manners and polite behaviour when communicating online",
          matchMy:
              "အွန်လိုင်းတွင် ဆက်သွယ်ရာတွင် ယဉ်ကျေးသိမ်မွေ့စွာ ကျင့်ကြံခြင်း",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w31-kind-upstander",
          termEn: "Upstander",
          termMy: "Upstander",
          matchEn:
              "Someone who speaks up or gets help when they see unkindness online",
          matchMy: "ရက်စက်မှုကို မြင်လျှင် အသံထွက်ပြော (သို့) အကူအညီရှာသောသူ",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w31-kind-digitalfootprintrevisit",
          termEn: "Digital Footprint",
          termMy: "Digital Footprint",
          matchEn:
              "The lasting trail a post leaves behind, even after deletion",
          matchMy: "ဖျက်ပြီးနောက်ပင် post တစ်ခုကျန်ရစ်ခဲ့သော ရေရှည်ခြေရာ",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w31-kind-reportblock",
          termEn: "Report and Block",
          termMy: "Report and Block",
          matchEn:
              "Tools used to flag unkind behaviour and stop it reaching you",
          matchMy:
              "ရက်စက်မှုကို တိုင်ကြားပြီး သင့်ထံမရောက်အောင် ရပ်တန့်ပေးသောကိရိယာများ",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w31-kind-cyberbullyingrevisit",
          termEn: "Cyberbullying",
          termMy: "Cyberbullying",
          matchEn: "Using the internet to repeatedly hurt or upset someone",
          matchMy:
              "အင်တာနက်ကိုသုံး၍ တစ်စုံတစ်ဦးအား ထပ်ခါထပ်ခါ စိတ်ဆင်းရဲစေခြင်း",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w31-d3",
      dayNumber: 3,
      titleEn: "Kind, or Unkind Online Behaviour?",
      titleMy: "ကြင်နာမှုရှိသလား၊ မရှိသလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Kind Online Behaviour", "Unkind Online Behaviour"],
        bucketsMy: [
          "Kind Online Behaviour (ကြင်နာသော)",
          "Unkind Online Behaviour (ရက်စက်သော)",
        ],
        items: [
          SortingItem(
            id: "w31-sort-encouragingcomment",
            labelEn: "Leaving an encouraging comment on a classmate's work",
            labelMy: "အတန်းဖော်၏အလုပ်တွင် အားပေးစကားထားခြင်း",
            correctBucketEn: "Kind Online Behaviour",
            correctBucketMy: "Kind Online Behaviour (ကြင်နာသော)",
          ),
          SortingItem(
            id: "w31-sort-spreadrumour",
            labelEn: "Spreading a rumour about someone online",
            labelMy:
                "အွန်လိုင်းတွင် တစ်စုံတစ်ဦးအကြောင်း ကောလာဟလ ပျံ့နှံ့စေခြင်း",
            correctBucketEn: "Unkind Online Behaviour",
            correctBucketMy: "Unkind Online Behaviour (ရက်စက်သော)",
          ),
          SortingItem(
            id: "w31-sort-mockingphoto",
            labelEn: "Mocking someone's photo in the comments",
            labelMy: "Comment တွင် တစ်စုံတစ်ဦး၏ဓာတ်ပုံကို ပြောင်လှောင်ခြင်း",
            correctBucketEn: "Unkind Online Behaviour",
            correctBucketMy: "Unkind Online Behaviour (ရက်စက်သော)",
          ),
          SortingItem(
            id: "w31-sort-reportbullying",
            labelEn: "Reporting bullying you see to a trusted adult",
            labelMy: "တွေ့ရသော bullying ကို ယုံကြည်ရသူကြီးအားတိုင်ကြားခြင်း",
            correctBucketEn: "Kind Online Behaviour",
            correctBucketMy: "Kind Online Behaviour (ကြင်နာသော)",
          ),
          SortingItem(
            id: "w31-sort-excludeonpurpose",
            labelEn: "Purposely excluding someone from a group chat",
            labelMy: "Group chat မှ တစ်စုံတစ်ဦးကို တမင်ထုတ်ပယ်ခြင်း",
            correctBucketEn: "Unkind Online Behaviour",
            correctBucketMy: "Unkind Online Behaviour (ရက်စက်သော)",
          ),
          SortingItem(
            id: "w31-sort-includingeveryone",
            labelEn: "Including everyone kindly in a group project chat",
            labelMy:
                "Group project chat တွင် အားလုံးကို ကြင်နာစွာ ထည့်သွင်းခြင်း",
            correctBucketEn: "Kind Online Behaviour",
            correctBucketMy: "Kind Online Behaviour (ကြင်နာသော)",
          ),
          SortingItem(
            id: "w31-sort-sharingembarrassingphoto",
            labelEn: "Sharing an embarrassing photo of a friend without asking",
            labelMy:
                "မေးမြန်းခြင်းမရှိဘဲ သူငယ်ချင်း၏အရှက်ရဖွယ်ဓာတ်ပုံကို မျှဝေခြင်း",
            correctBucketEn: "Unkind Online Behaviour",
            correctBucketMy: "Unkind Online Behaviour (ရက်စက်သော)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w31-d4",
      dayNumber: 4,
      titleEn: "Nandar Speaks Up",
      titleMy: "နန္ဒာ အသံထွက်ပြောသည်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nandar Speaks Up",
        titleMy: "နန္ဒာ အသံထွက်ပြောသည်",
        passageEn:
            "Nandar noticed some classmates mocking a photo their classmate Su Su had posted, leaving unkind comments about how she looked. At first Nandar felt unsure whether to say anything, but she remembered her class had learned about being an \"upstander\" rather than a silent bystander. Instead of joining in or scrolling past, Nandar left a kind comment supporting Su Su and privately messaged her to check she was okay. She also took a screenshot of the unkind comments and showed them to her teacher, who was able to step in and help. Su Su later thanked Nandar for noticing and for caring enough to act, even though it would have been easier to say nothing.",
        passageMy:
            "နန္ဒာသည် အတန်းဖော်တချို့က အတန်းဖော် စုစုတင်ခဲ့သောဓာတ်ပုံကို ပြောင်လှောင်ပြီး သူမ၏ပုံပန်းအကြောင်း ရက်စက်သောcomment များ ချန်ထားသည်ကို သတိထားမိခဲ့သည်။ ပထမတွင် နန္ဒာသည် တစ်ခုခုပြောသင့်၊ မပြောသင့် မသေချာခဲ့ပါ၊ သို့သော် အတန်းတွင် \"upstander\" ဖြစ်ရန် အသံတိတ်ကြည့်နေသူထက် သင်ခဲ့ဖူးသည်ကို သတိရမိခဲ့သည်။ ပါဝင်ရန် (သို့) ကျော်ဖတ်ရန်အစား၊ နန္ဒာသည် စုစုကို ထောက်ခံသည့် ကြင်နာသော comment တစ်ခုချန်ထားပြီး သူမ ကောင်းမွန်ကြောင်း စစ်ဆေးရန် private message ပို့ခဲ့သည်။ သူမသည် ရက်စက်သော comment များကို screenshot ရိုက်ပြီး ဆရာမအား ပြသခဲ့ရာ ဆရာမက ဝင်ရောက်ကူညီပေးနိုင်ခဲ့သည်။ ဤသို့ပြုလုပ်ရန် ပိုလွယ်ကူမည့် ဘာမှမပြောခြင်းထက် သတိထားမိပြီး ဂရုစိုက်ခဲ့သောအတွက် စုစုက နန္ဒာကို နောက်ပိုင်း ကျေးဇူးတင်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What were some classmates doing to Su Su's photo?",
            questionMy:
                "အတန်းဖော်တချို့သည် စုစု၏ဓာတ်ပုံကို ဘာလုပ်နေခဲ့ကြသနည်း။",
            optionsEn: [
              "Mocking it with unkind comments",
              "Reporting it to a teacher",
              "Sharing it kindly with encouragement",
              "Asking for permission to repost it",
            ],
            optionsMy: [
              "ရက်စက်သော comment များဖြင့် ပြောင်လှောင်နေခဲ့ကြသည်",
              "ဆရာမထံ တိုင်ကြားနေခဲ့ကြသည်",
              "အားပေးစကားနှင့် ကြင်နာစွာမျှဝေခဲ့ကြသည်",
              "ပြန်တင်ရန် ခွင့်တောင်းနေခဲ့ကြသည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What idea from class did Nandar remember?",
            questionMy: "နန္ဒာ အတန်းမှ ဘာအယူအဆကို သတိရမိခဲ့သနည်း။",
            optionsEn: [
              "Being an upstander rather than a silent bystander",
              "How to convert binary to denary",
              "How to write a for loop",
              "How to draw a flowchart",
            ],
            optionsMy: [
              "အသံတိတ်ကြည့်နေသူထက် upstander ဖြစ်ရန်",
              "Binary ကို denary သို့ ပြောင်းနည်း",
              "For loop ရေးနည်း",
              "Flowchart ရေးနည်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What two things did Nandar do to help?",
            questionMy: "ကူညီရန် နန္ဒာ ဘာနှစ်ခုလုပ်ခဲ့သနည်း။",
            optionsEn: [
              "Left a kind comment and privately messaged Su Su",
              "Joined in with the unkind comments",
              "Deleted her own account",
              "Ignored the situation completely",
            ],
            optionsMy: [
              "ကြင်နာသော comment ချန်ထားပြီး စုစုအား private message ပို့ခဲ့သည်",
              "ရက်စက်သော comment များတွင် ပါဝင်ခဲ့သည်",
              "မိမိကိုယ်ပိုင်အကောင့်ကို ဖျက်ခဲ့သည်",
              "အခြေအနေကို လုံးဝလျစ်လျူရှုခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Nandar show to her teacher?",
            questionMy: "နန္ဒာသည် ဆရာမအား ဘာပြသခဲ့သနည်း။",
            optionsEn: [
              "A screenshot of the unkind comments",
              "Her own password",
              "A copy of her homework",
              "A photo of Su Su's house",
            ],
            optionsMy: [
              "ရက်စက်သော comment များ၏ screenshot",
              "မိမိကိုယ်ပိုင်စကားဝှက်",
              "မိမိအိမ်စာမိတ္တူ",
              "စုစု၏အိမ်ဓာတ်ပုံ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How did Su Su feel about what Nandar did?",
            questionMy: "နန္ဒာလုပ်ခဲ့သည့်အရာကို စုစု ဘယ်လိုခံစားခဲ့သနည်း။",
            optionsEn: [
              "Thankful that Nandar noticed and cared enough to act",
              "Angry that Nandar told the teacher",
              "Embarrassed that anyone knew",
              "Indifferent about the whole situation",
            ],
            optionsMy: [
              "နန္ဒာ သတိထားမိပြီး ဂရုစိုက်ကြောင်း ကျေးဇူးတင်ခဲ့သည်",
              "ဆရာမကို ပြောခဲ့သည့်အတွက် စိတ်ဆိုးခဲ့သည်",
              "မည်သူမဆိုသိသွားသည့်အတွက် အရှက်ရခဲ့သည်",
              "အခြေအနေတစ်ခုလုံးကို ဂရုမစိုက်ခဲ့ပါ",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w31-d5",
      dayNumber: 5,
      titleEn: "Week 31 Recap Quiz",
      titleMy: "သုံးဆယ့်တစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is netiquette?",
          questionMy: "Netiquette ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Good manners when communicating online",
            "A type of network cable",
            "A password rule",
            "A way to speed up the internet",
          ],
          optionsMy: [
            "အွန်လိုင်းဆက်သွယ်ရာတွင် ယဉ်ကျေးသိမ်မွေ့ခြင်း",
            "ကွန်ရက်ကေဘယ်အမျိုးအစား",
            "စကားဝှက်စည်းမျဉ်း",
            "အင်တာနက်မြန်ဆန်စေသောနည်းလမ်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is an upstander?",
          questionMy: "Upstander ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Someone who speaks up when they see unkindness online",
            "Someone who joins in with bullying",
            "Someone who ignores everything",
            "A type of password",
          ],
          optionsMy: [
            "အွန်လိုင်းတွင် ရက်စက်မှုကိုမြင်လျှင် အသံထွက်ပြောသူ",
            "Bullying တွင်ပါဝင်သူ",
            "အားလုံးကို လျစ်လျူရှုသူ",
            "စကားဝှက်အမျိုးအစား",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What should you do if you see cyberbullying happening?",
          questionMy: "Cyberbullying ဖြစ်နေသည်ကို တွေ့ရလျှင် ဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Support the person affected and tell a trusted adult",
            "Join in to fit in with others",
            "Record it and share it further",
            "Do nothing and scroll past",
          ],
          optionsMy: [
            "ထိခိုက်ခံရသူကို ထောက်ခံပြီး ယုံကြည်ရသူကြီးကို ပြောပြပါ",
            "အခြားသူများနှင့်ကိုက်ညီရန် ပါဝင်ပါ",
            "မှတ်တမ်းတင်ပြီး ဆက်လက်မျှဝေပါ",
            "ဘာမှမလုပ်ဘဲ ကျော်ဖတ်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Why can a post still matter even after it is deleted?",
          questionMy:
              "Post တစ်ခုကို ဖျက်ပြီးနောက်ပင် အဘယ့်ကြောင့် ဆက်အရေးကြီးနေနိုင်သနည်း။",
          optionsEn: [
            "Others may have already seen, saved, or shared it",
            "It becomes a stronger password",
            "It automatically becomes private",
            "It changes into a different app",
          ],
          optionsMy: [
            "အခြားသူများ မြင်ပြီး၊ သိမ်းဆည်း (သို့) မျှဝေပြီးသွားနိုင်သောကြောင့်",
            "ပိုခိုင်မာသောစကားဝှက်ဖြစ်သွားသောကြောင့်",
            "အလိုအလျောက် private ဖြစ်သွားသောကြောင့်",
            "App မတူညီအောင်ပြောင်းလဲသွားသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the difference between disagreeing and being unkind?",
          questionMy:
              "သဘောထားကွဲလွဲခြင်းနှင့် ရက်စက်ခြင်း၏ကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Disagreeing focuses on the idea; being unkind attacks the person",
            "There is no real difference",
            "Disagreeing is always unkind",
            "Being unkind is a form of politeness",
          ],
          optionsMy: [
            "သဘောထားကွဲလွဲခြင်းသည် အယူအဆအပေါ်တွင်ရှိပြီး ရက်စက်ခြင်းသည် လူပုဂ္ဂိုလ်ကိုတိုက်ခိုက်ခြင်းဖြစ်သည်",
            "တကယ့်ကွာခြားချက်မရှိပါ",
            "သဘောထားကွဲလွဲခြင်းသည် အမြဲရက်စက်သည်",
            "ရက်စက်ခြင်းသည် ယဉ်ကျေးမှုတစ်မျိုးဖြစ်သည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 8, Week 32: "Staying Safe and Thinking
// Critically Online" (capstone)
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek32 = CourseWeekDef(
  id: "course-secondary1-computing-w32",
  weekNumber: 32,
  titleEn: "Staying Safe and Thinking Critically Online",
  titleMy:
      "အွန်လိုင်းတွင် လုံခြုံစွာနေထိုင်ပြီး ဆင်ခြင်တုံတရားဖြင့် တွေးခေါ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s1-computing-w32-d1",
      dayNumber: 1,
      titleEn: "Bringing Term 8 Together",
      titleMy: "Term 8 အားလုံးကို ပေါင်းစပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which four skills work together to keep you safe and kind online?",
          questionMy:
              "အွန်လိုင်းတွင် လုံခြုံပြီး ကြင်နာစေရန် ကျွမ်းကျင်မှုလေးမျိုး ဘယ်ဟာတွေ ပေါင်းစပ်သနည်း။",
          optionsEn: [
            "Protecting personal information, strong passwords, kindness, and critical thinking",
            "Only strong passwords",
            "Only kindness",
            "Only fast typing",
          ],
          optionsMy: [
            "ကိုယ်ရေးအချက်အလက်ကာကွယ်ခြင်း၊ ခိုင်မာသောစကားဝှက်၊ ကြင်နာမှု၊ ဆင်ခြင်တုံတရား",
            "ခိုင်မာသောစကားဝှက်သာ",
            "ကြင်နာမှုသာ",
            "စာစီအမြန်ရိုက်ခြင်းသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A message claims \"Scientists say chocolate cures every illness -- share now!\" What should you do first?",
          questionMy:
              "\"သိပ္ပံပညာရှင်များက ချောကလက်သည် ရောဂါအားလုံးကို ကုစားနိုင်သည်ဟု ဆိုသည် - ယခုပင်မျှဝေပါ!\" ဟူသောစာကို ရရှိလျှင် ပထမဆုံးဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Check whether it comes from a trustworthy, verifiable source before sharing",
            "Share it immediately with everyone you know",
            "Believe it completely because it mentions scientists",
            "Reply asking for your friends' passwords",
          ],
          optionsMy: [
            "မျှဝေမီ ယုံကြည်စိတ်ချရသော အရင်းအမြစ်မှလာသလားစစ်ဆေးပါ",
            "မိမိသိသောအားလုံးထံ ချက်ချင်းမျှဝေပါ",
            "သိပ္ပံပညာရှင်ဖော်ပြထားသောကြောင့် လုံးဝယုံကြည်ပါ",
            "သူငယ်ချင်းများ၏စကားဝှက်ကို တောင်းရန် ပြန်စာပို့ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a sign that an online message might be a scam?",
          questionMy:
              "အွန်လိုင်းစာသည် လှည့်ကွက်ဖြစ်နိုင်ကြောင်း လက္ခဏာတစ်ခုမှာ အဘယ်နည်း။",
          optionsEn: [
            "It urgently pressures you to act fast or share personal information",
            "It is written politely",
            "It comes from a classmate",
            "It contains a school logo",
          ],
          optionsMy: [
            "ချက်ချင်းလုပ်ရန် (သို့) ကိုယ်ရေးအချက်အလက်မျှဝေရန် အလျင်စလိုဖိအားပေးခြင်း",
            "ယဉ်ကျေးစွာရေးထားခြင်း",
            "အတန်းဖော်ထံမှလာခြင်း",
            "ကျောင်းလိုဂို ပါရှိခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "If something online makes you feel unsafe or unsure, what is always the right move?",
          questionMy:
              "အွန်လိုင်းရှိအရာတစ်ခုက သင့်ကို မလုံခြုံ (သို့) မသေချာခံစားရလျှင် အမြဲမှန်ကန်သော လုပ်ဆောင်ချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Tell a trusted adult",
            "Keep it a secret",
            "Share it further to see what others think",
            "Reply with personal information to prove yourself",
          ],
          optionsMy: [
            "ယုံကြည်ရသူကြီးကို ပြောပြပါ",
            "လျှို့ဝှက်ထားပါ",
            "အခြားသူများထင်မြင်ချက်ကြည့်ရန် ဆက်မျှဝေပါ",
            "မိမိကိုယ်ကို သက်သေပြရန် ကိုယ်ရေးအချက်အလက်ဖြင့် ပြန်စာပို့ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is thinking critically about what you see online an important skill?",
          questionMy:
              "အွန်လိုင်းတွင်မြင်ရသည်များအကြောင်း ဆင်ခြင်တုံတရားဖြင့်တွေးခေါ်ခြင်းသည် အဘယ့်ကြောင့် အရေးကြီးသောကျွမ်းကျင်မှုဖြစ်သနည်း။",
          optionsEn: [
            "Not everything online is true, and careless sharing can spread harmful mistakes",
            "It makes your internet connection faster",
            "It is required to create a strong password",
            "It automatically deletes cyberbullies' accounts",
          ],
          optionsMy: [
            "အွန်လိုင်းရှိအရာအားလုံးသည် အမှန်မဟုတ်ပြီး၊ သတိမမူဘဲမျှဝေခြင်းက အန္တရာယ်ရှိသောအမှားများကို ပျံ့နှံ့စေနိုင်သောကြောင့်",
            "အင်တာနက်ချိတ်ဆက်မှု ပိုမြန်စေသောကြောင့်",
            "ခိုင်မာသောစကားဝှက်ဖန်တီးရန် လိုအပ်သောကြောင့်",
            "Cyberbully အကောင့်များကို အလိုအလျောက်ဖျက်ပေးသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w32-d2",
      dayNumber: 2,
      titleEn: "Term 8 Recap Vocabulary",
      titleMy: "Term 8 ပြန်လည်သုံးသပ် ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w32-recap-digitalfootprint",
          termEn: "Digital Footprint",
          termMy: "Digital Footprint",
          matchEn: "The trail of information you leave behind online",
          matchMy: "အွန်လိုင်းတွင်ကျန်ရစ်ခဲ့သော အချက်အလက်ခြေရာ",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w32-recap-strongpassword",
          termEn: "Strong Password",
          termMy: "Strong Password",
          matchEn: "A long password mixing letters, numbers, and symbols",
          matchMy:
              "စာလုံး၊ ဂဏန်း၊ သင်္ကေတများ ရောနှောထားသော ရှည်လျားသောစကားဝှက်",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w32-recap-upstander",
          termEn: "Upstander",
          termMy: "Upstander",
          matchEn: "Someone who speaks up when they see unkindness online",
          matchMy: "ရက်စက်မှုကိုမြင်လျှင် အသံထွက်ပြောသောသူ",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w32-recap-scam",
          termEn: "Scam",
          termMy: "Scam",
          matchEn:
              "A trick, often urgent, designed to steal information or money",
          matchMy:
              "အချက်အလက် (သို့) ငွေခိုးယူရန် ဒီဇိုင်းထုတ်ထားသော အလျင်စလိုလှည့်ကွက်",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w32-recap-trustedadult",
          termEn: "Trusted Adult",
          termMy: "Trusted Adult",
          matchEn:
              "A parent, guardian, or teacher you can go to for help online",
          matchMy:
              "အွန်လိုင်းအကူအညီအတွက် သွားနိုင်သော မိဘ၊ အုပ်ထိန်းသူ (သို့) ဆရာ",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w32-d3",
      dayNumber: 3,
      titleEn: "Which Digital Citizenship Skill?",
      titleMy: "ဘယ် Digital Citizenship ကျွမ်းကျင်မှုလဲ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Personal Info",
          "Password Safety",
          "Online Kindness",
          "Critical Thinking",
        ],
        bucketsMy: [
          "Personal Info",
          "Password Safety",
          "Online Kindness",
          "Critical Thinking",
        ],
        items: [
          SortingItem(
            id: "w32-sort-locationtag",
            labelEn: "Removing a location tag before posting",
            labelMy: "Post မတင်မီ location tag ကိုဖျက်ခြင်း",
            correctBucketEn: "Personal Info",
            correctBucketMy: "Personal Info",
          ),
          SortingItem(
            id: "w32-sort-mixedpassword",
            labelEn: "Using letters, numbers, and symbols in a password",
            labelMy: "စကားဝှက်တွင် စာလုံး၊ ဂဏန်း၊ သင်္ကေတရောနှောသုံးခြင်း",
            correctBucketEn: "Password Safety",
            correctBucketMy: "Password Safety",
          ),
          SortingItem(
            id: "w32-sort-supportivecomment",
            labelEn: "Leaving a supportive comment for a classmate",
            labelMy: "အတန်းဖော်အတွက် အားပေးcomment ထားခြင်း",
            correctBucketEn: "Online Kindness",
            correctBucketMy: "Online Kindness",
          ),
          SortingItem(
            id: "w32-sort-checksource",
            labelEn: "Checking a claim's source before sharing it",
            labelMy: "မျှဝေမီ အချက်အလက်၏ အရင်းအမြစ်ကို စစ်ဆေးခြင်း",
            correctBucketEn: "Critical Thinking",
            correctBucketMy: "Critical Thinking",
          ),
          SortingItem(
            id: "w32-sort-neverreuse",
            labelEn: "Never reusing the same password across accounts",
            labelMy: "အကောင့်များတွင် စကားဝှက်တစ်ခုတည်း ဘယ်တော့မှမသုံးခြင်း",
            correctBucketEn: "Password Safety",
            correctBucketMy: "Password Safety",
          ),
          SortingItem(
            id: "w32-sort-privacysettingscheck",
            labelEn: "Checking privacy settings before posting a photo",
            labelMy: "ဓာတ်ပုံမတင်မီ privacy settings ကိုစစ်ဆေးခြင်း",
            correctBucketEn: "Personal Info",
            correctBucketMy: "Personal Info",
          ),
          SortingItem(
            id: "w32-sort-reportcyberbullying",
            labelEn: "Reporting cyberbullying to a trusted adult",
            labelMy: "Cyberbullying ကို ယုံကြည်ရသူကြီးအား တိုင်ကြားခြင်း",
            correctBucketEn: "Online Kindness",
            correctBucketMy: "Online Kindness",
          ),
          SortingItem(
            id: "w32-sort-suspiciouspause",
            labelEn: "Pausing before clicking an urgent, suspicious link",
            labelMy: "အလျင်စလိုသံသယဖြစ်ဖွယ်link ကိုမနှိပ်မီ ရပ်တန့်ခြင်း",
            correctBucketEn: "Critical Thinking",
            correctBucketMy: "Critical Thinking",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w32-d4",
      dayNumber: 4,
      titleEn: "Thiri's Careful Week Online",
      titleMy: "သီရိ၏ သတိထားသော အွန်လိုင်းရက်သတ္တပတ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri's Careful Week Online",
        titleMy: "သီရိ၏ သတိထားသော အွန်လိုင်းရက်သတ္တပတ်",
        passageEn:
            "During one busy week, Thiri put everything she had learned about digital citizenship into practice. On Monday, she posted a school project photo but removed the exact location tag first. On Tuesday, she created a brand new account and made sure to use a long, unique password instead of reusing an old one. On Wednesday, a message claimed she had won a prize and urgently asked her to \"confirm\" her password -- she recognised the trick immediately and told her father instead of clicking anything. On Thursday, she noticed a classmate being teased in a group chat and left a kind comment supporting them, then quietly told her teacher. On Friday, a friend shared an exciting claim about a \"miracle cure\" with no real source, so Thiri gently suggested checking where the information actually came from before believing it. By the end of the week, Thiri realised that staying safe online was not about avoiding the internet -- it was about protecting her information, securing her accounts, being kind, and always thinking carefully about what she saw and shared.",
        passageMy:
            "အလုပ်များသောရက်သတ္တပတ်တစ်ခုအတွင်း သီရိသည် digital citizenship အကြောင်း သင်ခဲ့ဖူးသမျှကို လက်တွေ့အသုံးချခဲ့သည်။ တနင်္လာနေ့တွင် သူမသည် ကျောင်းစီမံကိန်းဓာတ်ပုံကို post တင်ခဲ့သော်လည်း တိတိကျကျ location tag ကို ဦးစွာဖျက်ခဲ့သည်။ အင်္ဂါနေ့တွင် သူမသည် အကောင့်အသစ်တစ်ခု ဖန်တီးခဲ့ပြီး ဟောင်းသောစကားဝှက်ကို ပြန်မသုံးဘဲ ရှည်လျားသော ထူးခြားသောစကားဝှက် သုံးခဲ့သည်ကို သေချာစေခဲ့သည်။ ဗုဒ္ဓဟူးနေ့တွင် သူမ ဆုတစ်ခုရရှိကြောင်း message တစ်ခုက အလျင်စလို သူမ၏စကားဝှက် \"အတည်ပြု\" ရန်တောင်းဆိုခဲ့သည် - သူမသည် လှည့်ကွက်ကို ချက်ချင်းသိရှိပြီး မည်သည့်အရာကိုမျှမနှိပ်ဘဲ ဖခင်ကို ပြောပြခဲ့သည်။ကြာသပတေးနေ့တွင် သူမသည် group chat တွင် အတန်းဖော်တစ်ဦး ပြောင်လှောင်ခံနေရသည်ကို သတိထားမိပြီး ထောက်ခံသည့် ကြင်နာသော comment ချန်ထားကာ ဆရာမကို တိတ်တဆိတ်ပြောပြခဲ့သည်။ သောကြာနေ့တွင် သူငယ်ချင်းတစ်ဦးက \"အံ့ဖွယ်ကုထုံး\" အကြောင်း အရင်းအမြစ်အစစ်အမှန်မရှိဘဲ စိတ်လှုပ်ရှားဖွယ်စာသားတစ်ခုကို မျှဝေခဲ့ရာ၊ သီရိသည် ယုံကြည်မီ အချက်အလက် တကယ်ဘယ်ကလာသည်ကို စစ်ဆေးဖို့ ယဉ်ကျေးစွာအကြံပြုခဲ့သည်။ ရက်သတ္တပတ်ကုန်ချိန်တွင် သီရိသည် အွန်လိုင်းတွင် လုံခြုံစွာနေထိုင်ခြင်းသည် အင်တာနက်ကို ရှောင်ကြဉ်ခြင်း မဟုတ်ဘဲ - မိမိအချက်အလက်ကို ကာကွယ်ခြင်း၊ အကောင့်များကို လုံခြုံအောင်ထားခြင်း၊ ကြင်နာခြင်း၊ မြင်ရ/မျှဝေရသမျှကို အမြဲသေချာစွာစဉ်းစားခြင်းတို့ ဖြစ်ကြောင်း သဘောပေါက်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did Thiri remove before posting her project photo?",
            questionMy: "စီမံကိန်းဓာတ်ပုံ post မတင်မီ သီရိ ဘာဖျက်ခဲ့သနည်း။",
            optionsEn: [
              "The exact location tag",
              "The photo itself",
              "Her username",
              "Her comment",
            ],
            optionsMy: [
              "တိတိကျကျ location tag",
              "ဓာတ်ပုံကိုယ်တိုင်",
              "Username",
              "Comment",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Thiri do about her new account's password?",
            questionMy:
                "အကောင့်အသစ်၏ စကားဝှက်နှင့်ပတ်သက်၍ သီရိ ဘာလုပ်ခဲ့သနည်း။",
            optionsEn: [
              "She used a long, unique password instead of reusing an old one",
              "She reused her old password to save time",
              "She shared it with a friend",
              "She left it blank",
            ],
            optionsMy: [
              "ဟောင်းသောစကားဝှက်ပြန်မသုံးဘဲ ရှည်လျားထူးခြားသောစကားဝှက်သုံးခဲ့သည်",
              "အချိန်ချွေတာရန် ဟောင်းသောစကားဝှက်ပြန်သုံးခဲ့သည်",
              "သူငယ်ချင်းတစ်ဦးထံ မျှဝေခဲ့သည်",
              "အလွတ်ချန်ထားခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Thiri do when a message urgently asked her to \"confirm\" her password?",
            questionMy:
                "Message တစ်ခုက အလျင်စလို သူမ၏စကားဝှက် \"အတည်ပြု\" ရန်တောင်းဆိုသောအခါ သီရိ ဘာလုပ်ခဲ့သနည်း။",
            optionsEn: [
              "Recognised the trick and told her father",
              "Typed her password in right away",
              "Ignored it and forgot about it",
              "Shared it with all her friends",
            ],
            optionsMy: [
              "လှည့်ကွက်ကိုသိရှိပြီး ဖခင်ကို ပြောပြခဲ့သည်",
              "စကားဝှက်ကို ချက်ချင်းရိုက်ထည့်ခဲ့သည်",
              "လျစ်လျူရှုပြီး မေ့ပစ်ခဲ့သည်",
              "သူငယ်ချင်းအားလုံးနှင့် မျှဝေခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Thiri do when she saw a classmate being teased?",
            questionMy:
                "အတန်းဖော်တစ်ဦး ပြောင်လှောင်ခံနေရသည်ကို တွေ့ရသောအခါ သီရိ ဘာလုပ်ခဲ့သနည်း။",
            optionsEn: [
              "Left a kind comment and quietly told her teacher",
              "Joined in with the teasing",
              "Ignored it and said nothing",
              "Deleted the classmate's account",
            ],
            optionsMy: [
              "ကြင်နာသော comment ချန်ထားပြီး ဆရာမကို တိတ်တဆိတ်ပြောပြခဲ့သည်",
              "ပြောင်လှောင်မှုတွင် ပါဝင်ခဲ့သည်",
              "လျစ်လျူရှုပြီး ဘာမှမပြောခဲ့ပါ",
              "အတန်းဖော်၏အကောင့်ကို ဖျက်ခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Thiri realise staying safe online was really about?",
            questionMy:
                "အွန်လိုင်းတွင် လုံခြုံစွာနေထိုင်ခြင်းသည် တကယ်တမ်း ဘာအကြောင်းဖြစ်ကြောင်း သီရိ သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "Protecting information, securing accounts, kindness, and careful thinking together",
              "Avoiding the internet completely",
              "Only using strong passwords",
              "Only being kind to friends",
            ],
            optionsMy: [
              "အချက်အလက်ကာကွယ်ခြင်း၊ အကောင့်လုံခြုံစေခြင်း၊ ကြင်နာခြင်း၊ သေချာစွာစဉ်းစားခြင်း အားလုံးပေါင်းစပ်",
              "အင်တာနက်ကို လုံးဝရှောင်ကြဉ်ခြင်း",
              "ခိုင်မာသောစကားဝှက်ကိုသာသုံးခြင်း",
              "သူငယ်ချင်းများကိုသာ ကြင်နာခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w32-d5",
      dayNumber: 5,
      titleEn: "Week 32 Recap Quiz",
      titleMy: "သုံးဆယ့်နှစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What four skills did Term 8 focus on?",
          questionMy: "Term 8 က ကျွမ်းကျင်မှုလေးမျိုးကို အာရုံစိုက်ခဲ့သနည်း။",
          optionsEn: [
            "Personal info, password safety, kindness, and critical thinking",
            "Only variables and loops",
            "Only binary numbers",
            "Only pixels and ASCII",
          ],
          optionsMy: [
            "ကိုယ်ရေးအချက်အလက်၊ စကားဝှက်၊ ကြင်နာမှု၊ ဆင်ခြင်တုံတရား",
            "Variable နှင့် loop သာ",
            "Binary number သာ",
            "Pixel နှင့် ASCII သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What should you do before believing or sharing a surprising online claim?",
          questionMy:
              "အွန်လိုင်းရှိ အံ့ဩဖွယ်စာသားကို မယုံကြည်မီ (သို့) မမျှဝေမီ ဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Check whether it comes from a trustworthy source",
            "Share it as fast as possible",
            "Assume it is always true",
            "Ask for someone's password to verify it",
          ],
          optionsMy: [
            "ယုံကြည်စိတ်ချရသော အရင်းအမြစ်မှလာသလား စစ်ဆေးပါ",
            "အမြန်ဆုံးမျှဝေပါ",
            "အမြဲမှန်ကန်သည်ဟု ယူဆပါ",
            "အတည်ပြုရန် မည်သူ့စကားဝှက်ကိုမဆို တောင်းပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a common sign of an online scam?",
          questionMy: "အွန်လိုင်းလှည့်ကွက်၏ ဘုံလက္ခဏာတစ်ခုမှာ အဘယ်နည်း။",
          optionsEn: [
            "Urgent pressure to act fast or share information",
            "Polite, friendly writing",
            "A message from a classmate",
            "A school logo in the message",
          ],
          optionsMy: [
            "ချက်ချင်းလုပ်ရန် (သို့) အချက်အလက်မျှဝေရန် အလျင်စလိုဖိအားပေးခြင်း",
            "ယဉ်ကျေးရင်းနှီးသောစာသား",
            "အတန်းဖော်ထံမှ message",
            "Message ထဲရှိ ကျောင်းလိုဂို",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What should you always do if something online worries you?",
          questionMy:
              "အွန်လိုင်းရှိအရာတစ်ခုက စိုးရိမ်စေလျှင် အမြဲဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Tell a trusted adult",
            "Keep it a secret",
            "Share it with strangers",
            "Reply with personal information",
          ],
          optionsMy: [
            "ယုံကြည်ရသူကြီးကို ပြောပြပါ",
            "လျှို့ဝှက်ထားပါ",
            "စိမ်းသူများနှင့် မျှဝေပါ",
            "ကိုယ်ရေးအချက်အလက်ဖြင့် ပြန်စာပို့ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "According to this term, staying safe online is really about:",
          questionMy:
              "ဤ Term အရ အွန်လိုင်းတွင်လုံခြုံစွာနေထိုင်ခြင်းသည် တကယ်တမ်း:",
          optionsEn: [
            "Protecting information, securing accounts, being kind, and thinking carefully",
            "Avoiding the internet completely",
            "Only using a strong password",
            "Only reporting other people",
          ],
          optionsMy: [
            "အချက်အလက်ကာကွယ်ခြင်း၊ အကောင့်လုံခြုံစေခြင်း၊ ကြင်နာခြင်း၊ သေချာစွာစဉ်းစားခြင်း",
            "အင်တာနက်ကို လုံးဝရှောင်ကြဉ်ခြင်း",
            "ခိုင်မာသောစကားဝှက်ကိုသာသုံးခြင်း",
            "အခြားသူများကိုသာတိုင်ကြားခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary1ComputingTerm8 = CourseTermDef(
  id: "course-secondary1-computing-t8",
  termNumber: 8,
  titleEn: "Digital Citizenship & Online Safety",
  titleMy: "ဒီဂျစ်တယ်နိုင်ငံသားဖြစ်မှုနှင့် အွန်လိုင်းလုံခြုံရေး",
  certificateTitleEn: "Digital Citizenship & Online Safety",
  certificateTitleMy: "ဒီဂျစ်တယ်နိုင်ငံသားဖြစ်မှုနှင့် အွန်လိုင်းလုံခြုံရေး",
  weeks: [
    _secondary1ComputingWeek29,
    _secondary1ComputingWeek30,
    _secondary1ComputingWeek31,
    _secondary1ComputingWeek32,
  ], // Term 8 complete (Weeks 29-32)
);

// =====================================================================
// Secondary 1 Computing -- Term 9, Week 33: "What is Computational
// Thinking?"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek33 = CourseWeekDef(
  id: "course-secondary1-computing-w33",
  weekNumber: 33,
  titleEn: "What is Computational Thinking?",
  titleMy: "Computational Thinking ဆိုသည်မှာ အဘယ်နည်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s1-computing-w33-d1",
      dayNumber: 1,
      titleEn: "Breaking Problems Into Pieces",
      titleMy: "ပြဿနာများကို အစိတ်အပိုင်းများခွဲခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is decomposition in computational thinking?",
          questionMy:
              "Computational thinking တွင် decomposition ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Breaking a big problem into smaller, easier pieces",
            "Deleting a problem completely",
            "Making a problem bigger and harder",
            "Ignoring a problem until it goes away",
          ],
          optionsMy: [
            "ပြဿနာကြီးတစ်ခုကို ပိုလွယ်ကူသော အစိတ်အပိုင်းငယ်များအဖြစ် ခွဲခြင်း",
            "ပြဿနာကို လုံးဝဖျက်ပစ်ခြင်း",
            "ပြဿနာကို ပိုကြီးပြီး ပိုခက်ခဲအောင်လုပ်ခြင်း",
            "ပြဿနာကို လျစ်လျူရှုထားခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "You have used decomposition all year without naming it. Which earlier skill was really decomposition?",
          questionMy:
              "သင်သည် ဒီနှစ်တစ်ခုလုံး နာမည်မတပ်ဘဲ decomposition ကို သုံးခဲ့ပြီးဖြစ်သည်။ အရင်ကသင်ခဲ့သော ဘယ်ကျွမ်းကျင်မှုက အမှန်တကယ် decomposition ဖြစ်သနည်း။",
          optionsEn: [
            "Breaking an algorithm into a sequence of small steps",
            "Choosing a strong password",
            "Drawing a flowchart oval shape",
            "Printing text on the screen",
          ],
          optionsMy: [
            "Algorithm တစ်ခုကို အဆင့်ငယ်များအစီအစဉ်အဖြစ် ခွဲခြင်း",
            "ခိုင်မာသောစကားဝှက် ရွေးချယ်ခြင်း",
            "Flowchart ဘဲဥပုံ ဆွဲခြင်း",
            "မျက်နှာပြင်ပေါ်တွင် စာသားပရင့်ထုတ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is pattern recognition?",
          questionMy: "Pattern recognition ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Noticing similarities or repeated features between problems",
            "Deleting repeated code from a program",
            "Drawing a brand-new shape nobody has seen",
            "Choosing random numbers for a program",
          ],
          optionsMy: [
            "ပြဿနာများကြား ဆင်တူမှု (သို့) ထပ်ခါထပ်ခါဖြစ်သော လက္ခဏာများကို သတိပြုမိခြင်း",
            "ပရိုဂရမ်မှ ထပ်နေသော code ကို ဖျက်ခြင်း",
            "မည်သူမျှမမြင်ဖူးသော ပုံသဏ္ဍာန်အသစ် ဆွဲခြင်း",
            "ပရိုဂရမ်အတွက် ကျပန်းဂဏန်း ရွေးချယ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which of these earlier topics used pattern recognition, even though you didn't call it that?",
          questionMy:
              "အောက်ပါ အရင်က ခေါင်းစဉ်များထဲက ဘယ်ဟာက pattern recognition ကို သုံးခဲ့သနည်း၊ ထိုအမည်ဖြင့် မခေါ်ခဲ့ကြောင်း။",
          optionsEn: [
            "Noticing that a FOR loop repeats the same steps many times",
            "Choosing a weak password",
            "Turning off a computer",
            "Buying a new phone",
          ],
          optionsMy: [
            "FOR loop သည် တူညီသောအဆင့်များကို အကြိမ်များစွာ ထပ်ခါလုပ်ကြောင်း သတိပြုမိခြင်း",
            "အားနည်းသောစကားဝှက် ရွေးချယ်ခြင်း",
            "ကွန်ပျူတာကို ပိတ်ခြင်း",
            "ဖုန်းအသစ် ဝယ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is computational thinking useful outside of computing too?",
          questionMy:
              "Computational thinking သည် computing ပြင်ပတွင်ပါ အဘယ့်ကြောင့် အသုံးဝင်သနည်း။",
          optionsEn: [
            "It helps you solve any complex problem by breaking it down and spotting patterns",
            "It only works for computers, nothing else",
            "It makes every problem more complicated",
            "It replaces the need to think at all",
          ],
          optionsMy: [
            "ရှုပ်ထွေးသောပြဿနာမည်သည့်ဟာမဆို ခွဲခြင်းနှင့် pattern ရှာဖွေခြင်းဖြင့် ဖြေရှင်းရာတွင် ကူညီပေးသည်",
            "ကွန်ပျူတာအတွက်သာ အလုပ်လုပ်သည်",
            "ပြဿနာတိုင်းကို ပိုရှုပ်ထွေးအောင်လုပ်သည်",
            "စဉ်းစားရန် လိုအပ်ချက်ကို လုံးဝအစားထိုးသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w33-d2",
      dayNumber: 2,
      titleEn: "Computational Thinking Vocabulary",
      titleMy: "Computational Thinking ဆိုင်ရာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w33-ct-computationalthinking",
          termEn: "Computational Thinking",
          termMy: "Computational Thinking",
          matchEn:
              "A way of solving problems by breaking them down, spotting patterns, and planning steps",
          matchMy:
              "ပြဿနာများကို ခွဲခြမ်းခြင်း၊ pattern ရှာဖွေခြင်းနှင့် အဆင့်များစီစဉ်ခြင်းဖြင့် ဖြေရှင်းသောနည်းလမ်း",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w33-ct-decomposition",
          termEn: "Decomposition",
          termMy: "Decomposition",
          matchEn:
              "Breaking a big problem into smaller, more manageable sub-problems",
          matchMy:
              "ပြဿနာကြီးတစ်ခုကို စီမံခန့်ခွဲရလွယ်ကူသော sub-problem ငယ်များအဖြစ် ခွဲခြင်း",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w33-ct-patternrecognition",
          termEn: "Pattern Recognition",
          termMy: "Pattern Recognition",
          matchEn:
              "Noticing similarities or repeated features between problems",
          matchMy:
              "ပြဿနာများကြား ဆင်တူမှု (သို့) ထပ်ခံလက္ခဏာများ သတိပြုမိခြင်း",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w33-ct-subproblem",
          termEn: "Sub-problem",
          termMy: "Sub-problem",
          matchEn: "One of the smaller pieces a big problem is broken into",
          matchMy: "ပြဿနာကြီးတစ်ခု ခွဲထားသော အစိတ်အပိုင်းငယ်တစ်ခု",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w33-ct-problemsolvingskill",
          termEn: "Problem-Solving Skill",
          termMy: "Problem-Solving Skill",
          matchEn: "An ability used to work out how to reach a goal",
          matchMy: "ရည်မှန်းချက်တစ်ခုသို့ ရောက်ရန် လမ်းရှာသည့် စွမ်းရည်",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w33-d3",
      dayNumber: 3,
      titleEn: "Decomposition or Pattern Recognition?",
      titleMy: "Decomposition လား Pattern Recognition လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Decomposition", "Pattern Recognition"],
        bucketsMy: ["Decomposition", "Pattern Recognition"],
        items: [
          SortingItem(
            id: "w33-sort-partyplan",
            labelEn:
                "Splitting 'plan a party' into invitations, food, and games",
            labelMy:
                "'ပါတီစီစဉ်ခြင်း' ကို ဖိတ်စာ၊ အစားအစာနှင့် ဂိမ်းများအဖြစ် ခွဲခြင်း",
            correctBucketEn: "Decomposition",
            correctBucketMy: "Decomposition",
          ),
          SortingItem(
            id: "w33-sort-programsplit",
            labelEn:
                "Splitting 'write a program' into variables, selection, and loops",
            labelMy:
                "'ပရိုဂရမ်ရေးခြင်း' ကို variable၊ selection နှင့် loop များအဖြစ် ခွဲခြင်း",
            correctBucketEn: "Decomposition",
            correctBucketMy: "Decomposition",
          ),
          SortingItem(
            id: "w33-sort-repeatsteps",
            labelEn:
                "Noticing two different problems both repeat the same steps",
            labelMy:
                "မတူညီသောပြဿနာနှစ်ခုစလုံး တူညီသောအဆင့်များ ထပ်နေကြောင်း သတိပြုမိခြင်း",
            correctBucketEn: "Pattern Recognition",
            correctBucketMy: "Pattern Recognition",
          ),
          SortingItem(
            id: "w33-sort-mathslikelastweek",
            labelEn:
                "Seeing that today's maths problem looks like one you solved last week",
            labelMy:
                "ယနေ့သင်္ချာပြဿနာသည် ပြီးခဲ့သောသီတင်းပတ်က ဖြေခဲ့သောပြဿနာနှင့် ဆင်တူကြောင်း တွေ့ရှိခြင်း",
            correctBucketEn: "Pattern Recognition",
            correctBucketMy: "Pattern Recognition",
          ),
          SortingItem(
            id: "w33-sort-cleanhouse",
            labelEn: "Breaking 'clean the house' into separate rooms to clean",
            labelMy: "'အိမ်သန့်ရှင်းရေး' ကို အခန်းသီးခြားစီအဖြစ် ခွဲခြင်း",
            correctBucketEn: "Decomposition",
            correctBucketMy: "Decomposition",
          ),
          SortingItem(
            id: "w33-sort-forloopcounter",
            labelEn:
                "Spotting that every FOR loop you've written has a counter that changes",
            labelMy:
                "ရေးခဲ့သမျှ FOR loop တိုင်းတွင် ပြောင်းလဲနေသော counter ရှိကြောင်း တွေ့ရှိခြင်း",
            correctBucketEn: "Pattern Recognition",
            correctBucketMy: "Pattern Recognition",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w33-d4",
      dayNumber: 4,
      titleEn: "Thura's School Project Puzzle",
      titleMy: "သူရ၏ ကျောင်းပရိုဂျက် ပဟေဠိ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thura's School Project Puzzle",
        titleMy: "သူရ၏ ကျောင်းပရိုဂျက် ပဟေဠိ",
        passageEn:
            "Thura's teacher gave the class a big project: organize a school exhibition in just two weeks. At first the task felt overwhelming, so Thura used decomposition -- he broke the huge project into smaller sub-problems: booking the hall, inviting guests, preparing posters, and arranging chairs. Each sub-problem was small enough to plan on its own. While working through the poster sub-problem, Thura noticed something interesting: every poster needed the same three things -- a title, an image, and a short description. That was pattern recognition -- spotting a repeated structure meant he could design one poster template and reuse it for every subject, instead of designing each poster from scratch. By combining decomposition (breaking the big project down) with pattern recognition (reusing what repeated), Thura finished early, and his teacher pointed out that this was exactly the kind of thinking programmers use when planning software.",
        passageMy:
            "သူရ၏ ဆရာက အတန်းကို ရက်သတ္တနှစ်ပတ်အတွင်း ကျောင်းပြပွဲတစ်ခု စီစဉ်ရန် ပရိုဂျက်ကြီးတစ်ခု ပေးအပ်ခဲ့သည်။ ပထမတွင် အလုပ်သည် လွန်စွာများပြားနေသည်ဟု ခံစားရသောကြောင့် သူရသည် decomposition ကို သုံးခဲ့သည် -- ပရိုဂျက်ကြီးကို sub-problem ငယ်များအဖြစ် ခွဲခဲ့သည်: ခန်းမငှားခြင်း၊ ဧည့်သည်ဖိတ်ခြင်း၊ ပိုစတာပြင်ဆင်ခြင်းနှင့် ကုလားထိုင်များစီစဉ်ခြင်း။ Sub-problem တစ်ခုစီသည် သီးခြားစီစဉ်ရလောက်အောင် သေးငယ်ခဲ့သည်။ ပိုစတာ sub-problem တွင် အလုပ်လုပ်နေစဉ် သူရသည် စိတ်ဝင်စားစရာအရာတစ်ခု သတိပြုမိခဲ့သည် - ပိုစတာတိုင်းတွင် တူညီသောအရာသုံးမျိုး လိုအပ်ကြောင်း -- ခေါင်းစဉ်၊ ပုံနှင့် အကျဉ်းချုပ်ဖော်ပြချက်။ ဤသည်ကား pattern recognition ဖြစ်သည် -- ထပ်ခံဖွဲ့စည်းပုံကို တွေ့ရှိခြင်းက ဘာသာရပ်တိုင်းအတွက် ပိုစတာတစ်ခုချင်းစီ အသစ်ဒီဇိုင်းရေးမည့်အစား template တစ်ခုတည်း ဒီဇိုင်းရေးပြီး ပြန်သုံးနိုင်စေခဲ့သည်။ Decomposition (ပရိုဂျက်ကြီးကိုခွဲခြင်း) နှင့် pattern recognition (ထပ်ခံအရာများ ပြန်သုံးခြင်း) ကို ပေါင်းစပ်လိုက်ခြင်းဖြင့် သူရသည် စောစီးစွာ ပြီးစီးခဲ့ပြီး၊ ဤသည်ကား programmer များ software ကို စီစဉ်ရာတွင် အသုံးပြုသည့် တွေးခေါ်ပုံအတိအကျဖြစ်ကြောင်း သူရ၏ဆရာက ထောက်ပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What big task did Thura's teacher give the class?",
            questionMy: "သူရ၏ဆရာက အတန်းကို ဘယ်လုပ်ငန်းကြီးကို ပေးအပ်ခဲ့သနည်း။",
            optionsEn: [
              "Organizing a school exhibition in two weeks",
              "Writing a computer program",
              "Building a flowchart",
              "Choosing a strong password",
            ],
            optionsMy: [
              "ရက်သတ္တနှစ်ပတ်အတွင်း ကျောင်းပြပွဲစီစဉ်ခြင်း",
              "ကွန်ပျူတာပရိုဂရမ် ရေးခြင်း",
              "Flowchart ဆောက်ခြင်း",
              "ခိုင်မာသောစကားဝှက် ရွေးချယ်ခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Thura break the big project into, using decomposition?",
            questionMy:
                "Decomposition သုံး၍ သူရသည် ပရိုဂျက်ကြီးကို ဘာများအဖြစ် ခွဲခဲ့သနည်း။",
            optionsEn: [
              "Smaller sub-problems like booking the hall and preparing posters",
              "A single unbreakable task",
              "Two identical copies of the same task",
              "A list of passwords",
            ],
            optionsMy: [
              "ခန်းမငှားခြင်းနှင့် ပိုစတာပြင်ဆင်ခြင်းကဲ့သို့ sub-problem ငယ်များ",
              "ခွဲမရသော လုပ်ငန်းတစ်ခုတည်း",
              "အလုပ်တစ်ခုတည်း၏ တူညီမိတ္တူနှစ်ခု",
              "စကားဝှက်စာရင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What pattern did Thura notice while working on the posters?",
            questionMy:
                "ပိုစတာများကို အလုပ်လုပ်နေစဉ် သူရ ဘယ် pattern ကို သတိပြုမိခဲ့သနည်း။",
            optionsEn: [
              "Every poster needed the same three things: a title, an image, and a description",
              "Every poster needed a completely different design",
              "No two posters were ever similar",
              "Posters did not need any images",
            ],
            optionsMy: [
              "ပိုစတာတိုင်းတွင် ခေါင်းစဉ်၊ ပုံနှင့် ဖော်ပြချက်ဟူသော တူညီသောအရာသုံးမျိုး လိုအပ်",
              "ပိုစတာတိုင်းတွင် လုံးဝကွဲပြားသောဒီဇိုင်း လိုအပ်",
              "ပိုစတာနှစ်ခုမျှ ဘယ်တော့မှ မဆင်တူ",
              "ပိုစတာများတွင် ပုံလိုအပ်ချက်မရှိ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did spotting that pattern let Thura do?",
            questionMy:
                "ထို pattern ကိုတွေ့ရှိခြင်းက သူရအား ဘာလုပ်နိုင်စေခဲ့သနည်း။",
            optionsEn: [
              "Design one poster template and reuse it for every subject",
              "Delete all the posters completely",
              "Cancel the whole exhibition",
              "Avoid using decomposition altogether",
            ],
            optionsMy: [
              "ပိုစတာ template တစ်ခုတည်းဒီဇိုင်းရေးပြီး ဘာသာရပ်တိုင်းအတွက် ပြန်သုံး",
              "ပိုစတာအားလုံးကို လုံးဝဖျက်ပစ်",
              "ပြပွဲတစ်ခုလုံး ပယ်ဖျက်",
              "Decomposition ကို လုံးဝမသုံး",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Thura's teacher say his combined thinking was similar to?",
            questionMy:
                "သူရ၏ပေါင်းစပ်တွေးခေါ်မှုသည် ဘာနှင့်ဆင်တူကြောင်း ဆရာကပြောခဲ့သနည်း။",
            optionsEn: [
              "The kind of thinking programmers use when planning software",
              "A type of computer hardware",
              "A weak password",
              "A syntax error",
            ],
            optionsMy: [
              "Programmer များ software ကို စီစဉ်ရာတွင် အသုံးပြုသည့် တွေးခေါ်ပုံ",
              "ကွန်ပျူတာ hardware အမျိုးအစားတစ်ခု",
              "အားနည်းသောစကားဝှက်",
              "Syntax error",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w33-d5",
      dayNumber: 5,
      titleEn: "Week 33 Recap Quiz",
      titleMy: "နှစ်ဆယ့်သုံးပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is decomposition?",
          questionMy: "Decomposition ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Breaking a big problem into smaller, easier pieces",
            "Deleting a problem",
            "Making a problem harder",
            "Ignoring a problem",
          ],
          optionsMy: [
            "ပြဿနာကြီးကို ပိုလွယ်ကူသော အစိတ်အပိုင်းငယ်များအဖြစ် ခွဲခြင်း",
            "ပြဿနာကို ဖျက်ခြင်း",
            "ပြဿနာကို ပိုခက်ခဲအောင်လုပ်ခြင်း",
            "ပြဿနာကို လျစ်လျူရှုခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is pattern recognition?",
          questionMy: "Pattern recognition ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Noticing similarities or repeated features between problems",
            "Deleting repeated code",
            "Drawing a random shape",
            "Choosing a password",
          ],
          optionsMy: [
            "ပြဿနာများကြား ဆင်တူမှု (သို့) ထပ်ခံလက္ခဏာများ သတိပြုမိခြင်း",
            "ထပ်နေသော code ကို ဖျက်ခြင်း",
            "ကျပန်းပုံသဏ္ဍာန် ဆွဲခြင်း",
            "စကားဝှက် ရွေးချယ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which earlier skill was really decomposition all along?",
          questionMy:
              "အရင်ကသင်ခဲ့သော ဘယ်ကျွမ်းကျင်မှုက အမှန်တကယ် decomposition ဖြစ်ခဲ့သနည်း။",
          optionsEn: [
            "Breaking an algorithm into a sequence of small steps",
            "Choosing a strong password",
            "Turning on a computer",
            "Printing an image",
          ],
          optionsMy: [
            "Algorithm တစ်ခုကို အဆင့်ငယ်များအစီအစဉ်အဖြစ် ခွဲခြင်း",
            "ခိုင်မာသောစကားဝှက် ရွေးချယ်ခြင်း",
            "ကွန်ပျူတာဖွင့်ခြင်း",
            "ပုံပရင့်ထုတ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is computational thinking?",
          questionMy: "Computational thinking ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A way of solving problems by breaking them down and spotting patterns",
            "A type of computer hardware",
            "A programming language",
            "A password rule",
          ],
          optionsMy: [
            "ပြဿနာများကို ခွဲခြမ်းပြီး pattern ရှာဖွေခြင်းဖြင့် ဖြေရှင်းသောနည်းလမ်း",
            "ကွန်ပျူတာ hardware အမျိုးအစားတစ်ခု",
            "Programming language တစ်ခု",
            "စကားဝှက်စည်းမျဉ်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Why is computational thinking useful beyond computing?",
          questionMy:
              "Computational thinking သည် computing ပြင်ပတွင် အဘယ့်ကြောင့် အသုံးဝင်သနည်း။",
          optionsEn: [
            "It helps solve any complex problem, not just computer problems",
            "It only works inside a computer",
            "It makes every problem harder",
            "It removes the need to plan",
          ],
          optionsMy: [
            "ကွန်ပျူတာပြဿနာသာမက ရှုပ်ထွေးသောပြဿနာမည်သည့်ဟာမဆို ဖြေရှင်းရာတွင် ကူညီသည်",
            "ကွန်ပျူတာအတွင်းသာ အလုပ်လုပ်သည်",
            "ပြဿနာတိုင်းကို ပိုခက်ခဲအောင်လုပ်သည်",
            "စီစဉ်ရန် လိုအပ်ချက်ကို ဖယ်ရှားသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 9, Week 34: "Abstraction and Algorithm
// Design"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek34 = CourseWeekDef(
  id: "course-secondary1-computing-w34",
  weekNumber: 34,
  titleEn: "Abstraction and Algorithm Design",
  titleMy: "Abstraction နှင့် Algorithm ဒီဇိုင်းရေးဆွဲခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s1-computing-w34-d1",
      dayNumber: 1,
      titleEn: "Focusing on What Matters",
      titleMy: "အရေးကြီးသောအရာကို အာရုံစိုက်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is abstraction?",
          questionMy: "Abstraction ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Focusing on the important details of a problem and ignoring the ones that don't matter",
            "Adding every possible detail to a problem",
            "Deleting a problem entirely",
            "Making a problem more confusing on purpose",
          ],
          optionsMy: [
            "ပြဿနာ၏ အရေးကြီးသောအသေးစိတ်များကို အာရုံစိုက်ပြီး အရေးမကြီးသည်များကို လျစ်လျူရှုခြင်း",
            "ပြဿနာသို့ ဖြစ်နိုင်သမျှ အသေးစိတ်အားလုံး ထည့်ခြင်း",
            "ပြဿနာကို လုံးဝဖျက်ပစ်ခြင်း",
            "ရည်ရွယ်ချက်ရှိရှိ ပြဿနာကို ပိုရှုပ်ထွေးအောင်လုပ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "When you draw a flowchart, why do you use simple shapes instead of drawing every real-world detail?",
          questionMy:
              "Flowchart ဆွဲသောအခါ လက်တွေ့ကမ္ဘာ၏ အသေးစိတ်အားလုံးမဆွဲဘဲ ရိုးရှင်းသောပုံသဏ္ဍာန်များ အဘယ့်ကြောင့် သုံးသနည်း။",
          optionsEn: [
            "Because a flowchart is an abstraction -- it keeps only the steps that matter",
            "Because drawing detail is against the rules",
            "Because computers cannot understand shapes",
            "Because flowcharts must always be blank",
          ],
          optionsMy: [
            "Flowchart သည် abstraction တစ်ခုဖြစ်သောကြောင့် -- အရေးကြီးသောအဆင့်များကိုသာ ထားရှိသည်",
            "အသေးစိတ်ဆွဲခြင်းသည် စည်းမျဉ်းနှင့်ဆန့်ကျင်သောကြောင့်",
            "ကွန်ပျူတာများသည် ပုံသဏ္ဍာန်ကို နားမလည်နိုင်သောကြောင့်",
            "Flowchart များသည် အမြဲအလွတ်ဖြစ်ရမည်ဖြစ်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "You are designing an app to find the fastest bus route. Which detail would abstraction leave OUT?",
          questionMy:
              "အမြန်ဆုံးဘတ်စ်ကားလမ်းကြောင်းရှာဖွေသော app တစ်ခု ဒီဇိုင်းရေးနေသည်။ Abstraction က ဘယ်အသေးစိတ်ကို ချန်ထားခဲ့မည်နည်း။",
          optionsEn: [
            "The color of the bus",
            "The bus stop locations",
            "The travel time between stops",
            "Which buses connect at which stops",
          ],
          optionsMy: [
            "ဘတ်စ်ကား၏ အရောင်",
            "ဘတ်စ်ကားမှတ်တိုင်များ တည်နေရာ",
            "မှတ်တိုင်ကြားခရီးချိန်",
            "ဘယ်ဘတ်စ်ကားများ ဘယ်မှတ်တိုင်တွင် ဆက်စပ်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What do we call a simplified representation of something real, built using abstraction?",
          questionMy:
              "Abstraction သုံး၍ တည်ဆောက်ထားသော လက်တွေ့ကမ္ဘာ၏ ရိုးရှင်းသောကိုယ်စားပြုပုံကို ဘာဟုခေါ်သနည်း။",
          optionsEn: ["A model", "A syntax error", "A password", "A byte"],
          optionsMy: ["Model", "Syntax error", "Password", "Byte"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is abstraction useful when designing an algorithm for a new problem?",
          questionMy:
              "ပြဿနာအသစ်တစ်ခုအတွက် algorithm ဒီဇိုင်းရေးရာတွင် abstraction သည် အဘယ့်ကြောင့် အသုံးဝင်သနည်း။",
          optionsEn: [
            "It stops you getting lost in unnecessary detail so you can focus on the steps that solve the problem",
            "It hides the whole problem so you never have to solve it",
            "It adds unnecessary steps to every algorithm",
            "It removes the need for decomposition",
          ],
          optionsMy: [
            "မလိုအပ်သောအသေးစိတ်ထဲ ပျောက်နေခြင်းကို တားဆီးပြီး ပြဿနာဖြေရှင်းသောအဆင့်များကို အာရုံစိုက်စေသည်",
            "ပြဿနာတစ်ခုလုံးကို ဖုံးကွယ်ထားပြီး ဖြေရှင်းရန်မလိုအောင်လုပ်သည်",
            "Algorithm တိုင်းတွင် မလိုအပ်သောအဆင့်များ ထပ်ထည့်သည်",
            "Decomposition လိုအပ်ချက်ကို ဖယ်ရှားသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w34-d2",
      dayNumber: 2,
      titleEn: "Abstraction Vocabulary",
      titleMy: "Abstraction ဆိုင်ရာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w34-abs-abstraction",
          termEn: "Abstraction",
          termMy: "Abstraction",
          matchEn:
              "Focusing on important details and ignoring ones that don't matter",
          matchMy:
              "အရေးကြီးသောအသေးစိတ်များကို အာရုံစိုက်ပြီး အရေးမကြီးသည်များကို လျစ်လျူရှုခြင်း",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w34-abs-algorithmdesign",
          termEn: "Algorithm Design",
          termMy: "Algorithm Design",
          matchEn:
              "Planning the steps that solve a problem before writing any code",
          matchMy: "Code မရေးမီ ပြဿနာဖြေရှင်းမည့်အဆင့်များကို စီစဉ်ခြင်း",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w34-abs-relevantdetail",
          termEn: "Relevant Detail",
          termMy: "Relevant Detail",
          matchEn: "Information that matters for solving the problem",
          matchMy: "ပြဿနာဖြေရှင်းရန် အရေးကြီးသော အချက်အလက်",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w34-abs-irrelevantdetail",
          termEn: "Irrelevant Detail",
          termMy: "Irrelevant Detail",
          matchEn: "Information that does not affect solving the problem",
          matchMy: "ပြဿနာဖြေရှင်းရန် သက်ရောက်မှုမရှိသော အချက်အလက်",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w34-abs-model",
          termEn: "Model",
          termMy: "Model",
          matchEn:
              "A simplified representation of something real, built using abstraction",
          matchMy:
              "Abstraction သုံး၍တည်ဆောက်ထားသော လက်တွေ့ကမ္ဘာ၏ ရိုးရှင်းကိုယ်စားပြုပုံ",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w34-d3",
      dayNumber: 3,
      titleEn: "Relevant or Irrelevant?",
      titleMy: "Relevant လား Irrelevant လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Relevant Detail", "Irrelevant Detail"],
        bucketsMy: ["Relevant Detail", "Irrelevant Detail"],
        items: [
          SortingItem(
            id: "w34-sort-stoplocations",
            labelEn: "The bus stop locations",
            labelMy: "ဘတ်စ်ကားမှတ်တိုင်များ တည်နေရာ",
            correctBucketEn: "Relevant Detail",
            correctBucketMy: "Relevant Detail",
          ),
          SortingItem(
            id: "w34-sort-traveltime",
            labelEn: "The travel time between stops",
            labelMy: "မှတ်တိုင်ကြားခရီးချိန်",
            correctBucketEn: "Relevant Detail",
            correctBucketMy: "Relevant Detail",
          ),
          SortingItem(
            id: "w34-sort-connections",
            labelEn: "Which buses connect at which stops",
            labelMy: "ဘယ်ဘတ်စ်ကားများ ဘယ်မှတ်တိုင်တွင် ဆက်စပ်သည်",
            correctBucketEn: "Relevant Detail",
            correctBucketMy: "Relevant Detail",
          ),
          SortingItem(
            id: "w34-sort-buscolor",
            labelEn: "The color of the bus",
            labelMy: "ဘတ်စ်ကား၏ အရောင်",
            correctBucketEn: "Irrelevant Detail",
            correctBucketMy: "Irrelevant Detail",
          ),
          SortingItem(
            id: "w34-sort-drivername",
            labelEn: "The driver's name",
            labelMy: "ယာဉ်မောင်း၏ အမည်",
            correctBucketEn: "Irrelevant Detail",
            correctBucketMy: "Irrelevant Detail",
          ),
          SortingItem(
            id: "w34-sort-seatcount",
            labelEn: "The number of seats the bus has",
            labelMy: "ဘတ်စ်ကား၏ ထိုင်ခုံအရေအတွက်",
            correctBucketEn: "Irrelevant Detail",
            correctBucketMy: "Irrelevant Detail",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w34-d4",
      dayNumber: 4,
      titleEn: "May May's Study Timetable Algorithm",
      titleMy: "မေမေ၏ စာသင်ချိန်ဇယား Algorithm",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "May May's Study Timetable Algorithm",
        titleMy: "မေမေ၏ စာသင်ချိန်ဇယား Algorithm",
        passageEn:
            "May May wanted to design an algorithm to build her weekly study timetable, so she thought carefully about what actually mattered. At first she considered including her favorite pen color, which chair she liked to sit in, and the exact weather each day -- but she realized none of those details would change how the timetable worked. Using abstraction, she kept only the relevant details: which subject, which day, and what time, and left everything else out. With just those three pieces of information, she drew a flowchart: for each subject, decide a day and a time, then check the day is not already full before adding it. Her simplified model made the algorithm easy to follow, and her teacher explained that this was abstraction in action -- focusing only on what mattered let May May design a clear, working algorithm instead of getting lost in unnecessary detail.",
        passageMy:
            "မေမေသည် သူမ၏ အပတ်စဉ်စာသင်ချိန်ဇယား တည်ဆောက်ရန် algorithm တစ်ခု ဒီဇိုင်းရေးလိုသောကြောင့် အမှန်တကယ်အရေးကြီးသည်များကို ဂရုတစိုက်စဉ်းစားခဲ့သည်။ ပထမတွင် သူမကြိုက်နှစ်သက်သော ခဲတံအရောင်၊ ထိုင်လိုသောကုလားထိုင်နှင့် နေ့စဉ်ရာသီဥတုအတိအကျကို ထည့်သွင်းစဉ်းစားခဲ့သော်လည်း၊ ထိုအသေးစိတ်များသည် ဇယားအလုပ်လုပ်ပုံကို လုံးဝမပြောင်းလဲစေကြောင်း သိရှိခဲ့သည်။ Abstraction ကို သုံး၍ သူမသည် သက်ဆိုင်ရာအသေးစိတ်များကိုသာ ထားရှိခဲ့သည် - ဘာသာရပ်၊ နေ့နှင့် အချိန်၊ ကျန်အားလုံးကို ချန်ထားခဲ့သည်။ ထိုအချက်အလက်သုံးမျိုးဖြင့်သာ သူမသည် flowchart တစ်ခုဆွဲခဲ့သည်: ဘာသာရပ်တစ်ခုစီအတွက် နေ့နှင့်အချိန်ဆုံးဖြတ်ပြီး၊ ထည့်သွင်းမီ ထိုနေ့တွင် အချိန်ပြည့်နေသလားစစ်ဆေးရသည်။ သူမ၏ ရိုးရှင်းသော model က algorithm ကို လိုက်နာရလွယ်ကူစေပြီး၊ ဤသည်ကား abstraction ၏ လက်တွေ့လုပ်ဆောင်ချက်ဖြစ်ကြောင်း -- အရေးကြီးသည်များကိုသာ အာရုံစိုက်ခြင်းက မလိုအပ်သောအသေးစိတ်ထဲ ပျောက်နေမည့်အစား မေမေအား ရှင်းလင်းသော algorithm တစ်ခု ဒီဇိုင်းရေးနိုင်စေခဲ့ကြောင်း ဆရာက ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did May May want to design an algorithm for?",
            questionMy:
                "မေမေသည် ဘာအတွက် algorithm တစ်ခု ဒီဇိုင်းရေးလိုခဲ့သနည်း။",
            optionsEn: [
              "Her weekly study timetable",
              "A computer game",
              "A password checker",
              "A flowchart symbol chart",
            ],
            optionsMy: [
              "သူမ၏ အပတ်စဉ်စာသင်ချိန်ဇယား",
              "ကွန်ပျူတာဂိမ်း",
              "စကားဝှက်စစ်ဆေးစနစ်",
              "Flowchart သင်္ကေတဇယား",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which details did May May realize were irrelevant to her timetable algorithm?",
            questionMy:
                "မေမေ၏ ဇယား algorithm အတွက် ဘယ်အသေးစိတ်များ irrelevant ဖြစ်ကြောင်း သိရှိခဲ့သနည်း။",
            optionsEn: [
              "Her pen color, chair choice, and the daily weather",
              "The subject and the day",
              "The time of the class",
              "Whether the day was already full",
            ],
            optionsMy: [
              "ခဲတံအရောင်၊ ကုလားထိုင်ရွေးချယ်မှုနှင့် နေ့စဉ်ရာသီဥတု",
              "ဘာသာရပ်နှင့် နေ့",
              "အတန်း၏ အချိန်",
              "ထိုနေ့သည် အချိန်ပြည့်နေမနေ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which three relevant details did May May keep, using abstraction?",
            questionMy:
                "Abstraction သုံး၍ မေမေ သက်ဆိုင်ရာအသေးစိတ်သုံးမျိုးကို ဘာများထားရှိခဲ့သနည်း။",
            optionsEn: [
              "Which subject, which day, and what time",
              "Pen color, chair, and weather",
              "Only the subject",
              "Only the weather",
            ],
            optionsMy: [
              "ဘာသာရပ်၊ နေ့နှင့် အချိန်",
              "ခဲတံအရောင်၊ ကုလားထိုင်နှင့် ရာသီဥတု",
              "ဘာသာရပ်တစ်ခုတည်း",
              "ရာသီဥတုတစ်ခုတည်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did May May's algorithm check before adding a subject to a day?",
            questionMy:
                "ဘာသာရပ်တစ်ခုကို နေ့တစ်နေ့သို့ ထည့်သွင်းမီ မေမေ၏ algorithm ဘာစစ်ဆေးခဲ့သနည်း။",
            optionsEn: [
              "That the day was not already full",
              "That the pen color matched",
              "That the weather was sunny",
              "That the chair was comfortable",
            ],
            optionsMy: [
              "ထိုနေ့သည် အချိန်ပြည့်နေမနေ",
              "ခဲတံအရောင် ကိုက်ညီမညီ",
              "ရာသီဥတုနေသာမသာ",
              "ကုလားထိုင် သက်တောင့်သက်သာရှိမရှိ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did May May's teacher say focusing only on what mattered was an example of?",
            questionMy:
                "အရေးကြီးသည်များကိုသာ အာရုံစိုက်ခြင်းသည် ဘာ၏ ဥပမာဖြစ်ကြောင်း ဆရာက ပြောခဲ့သနည်း။",
            optionsEn: [
              "Abstraction",
              "A syntax error",
              "A weak password",
              "Cyberbullying",
            ],
            optionsMy: [
              "Abstraction",
              "Syntax error",
              "အားနည်းသောစကားဝှက်",
              "Cyberbullying",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w34-d5",
      dayNumber: 5,
      titleEn: "Week 34 Recap Quiz",
      titleMy: "နှစ်ဆယ့်လေးပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is abstraction?",
          questionMy: "Abstraction ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Focusing on important details and ignoring ones that don't matter",
            "Adding every possible detail",
            "Deleting a problem completely",
            "Making a problem more confusing",
          ],
          optionsMy: [
            "အရေးကြီးသောအသေးစိတ်များကို အာရုံစိုက်ပြီး အရေးမကြီးသည်များကို လျစ်လျူရှုခြင်း",
            "ဖြစ်နိုင်သမျှအသေးစိတ်အားလုံး ထည့်ခြင်း",
            "ပြဿနာကို လုံးဝဖျက်ခြင်း",
            "ပြဿနာကို ပိုရှုပ်ထွေးအောင်လုပ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a model in computational thinking?",
          questionMy: "Computational thinking တွင် model ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A simplified representation of something real",
            "A type of syntax error",
            "A weak password",
            "A loop counter",
          ],
          optionsMy: [
            "လက်တွေ့ကမ္ဘာ၏ ရိုးရှင်းသောကိုယ်စားပြုပုံ",
            "Syntax error အမျိုးအစားတစ်ခု",
            "အားနည်းသောစကားဝှက်",
            "Loop counter",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why does a flowchart use simple shapes instead of real-world detail?",
          questionMy:
              "Flowchart သည် လက်တွေ့ကမ္ဘာ အသေးစိတ်အစား ရိုးရှင်းသောပုံသဏ္ဍာန်များ အဘယ့်ကြောင့် သုံးသနည်း။",
          optionsEn: [
            "Because it is an abstraction that keeps only what matters",
            "Because detail is against the rules",
            "Because computers cannot read shapes",
            "Because flowcharts must stay blank",
          ],
          optionsMy: [
            "အရေးကြီးသည်များကိုသာ ထားရှိသော abstraction ဖြစ်သောကြောင့်",
            "အသေးစိတ်သည် စည်းမျဉ်းနှင့်ဆန့်ကျင်သောကြောင့်",
            "ကွန်ပျူတာသည် ပုံသဏ္ဍာန်ကို မဖတ်နိုင်သောကြောင့်",
            "Flowchart များသည် အလွတ်ကျန်ရမည်ဖြစ်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is algorithm design?",
          questionMy: "Algorithm design ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Planning the steps that solve a problem before writing any code",
            "Writing code without any plan",
            "Deleting an algorithm",
            "Choosing a password",
          ],
          optionsMy: [
            "Code မရေးမီ ပြဿနာဖြေရှင်းမည့်အဆင့်များကို စီစဉ်ခြင်း",
            "အစီအစဉ်မရှိဘဲ code ရေးခြင်း",
            "Algorithm ကို ဖျက်ခြင်း",
            "စကားဝှက်ရွေးချယ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is abstraction useful when designing a new algorithm?",
          questionMy:
              "Algorithm အသစ်ဒီဇိုင်းရေးရာတွင် abstraction သည် အဘယ့်ကြောင့် အသုံးဝင်သနည်း။",
          optionsEn: [
            "It stops you getting lost in unnecessary detail",
            "It hides the whole problem",
            "It adds unnecessary steps",
            "It removes the need to plan",
          ],
          optionsMy: [
            "မလိုအပ်သောအသေးစိတ်ထဲ ပျောက်နေခြင်းကို တားဆီးသည်",
            "ပြဿနာတစ်ခုလုံးကို ဖုံးကွယ်ထားသည်",
            "မလိုအပ်သောအဆင့်များ ထပ်ထည့်သည်",
            "စီစဉ်ရန်လိုအပ်ချက်ကို ဖယ်ရှားသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 9, Week 35: "Planning Your Own Program"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek35 = CourseWeekDef(
  id: "course-secondary1-computing-w35",
  weekNumber: 35,
  titleEn: "Planning Your Own Program",
  titleMy: "ကိုယ်ပိုင်ပရိုဂရမ် စီစဉ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s1-computing-w35-d1",
      dayNumber: 1,
      titleEn: "How to Plan a Program",
      titleMy: "ပရိုဂရမ်တစ်ခု စီစဉ်နည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Before writing any code, what should a programmer do first?",
          questionMy: "Code မရေးမီ programmer တစ်ဦး ဦးစွာဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Plan what the program needs to do, using decomposition to break it into pieces",
            "Start typing random code immediately",
            "Skip planning entirely",
            "Delete the problem",
          ],
          optionsMy: [
            "Decomposition သုံး၍ ပရိုဂရမ်လုပ်ဆောင်ရမည့်အရာကို အစိတ်အပိုင်းများခွဲပြီး စီစဉ်",
            "ချက်ချင်း ကျပန်း code ရိုက်စတင်",
            "စီစဉ်ခြင်းကို လုံးဝကျော်ချန်",
            "ပြဿနာကို ဖျက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "If your program needs to remember a player's score that changes during the game, what building block will you need?",
          questionMy:
              "ဂိမ်းအတွင်း ပြောင်းလဲနေသော player ၏ score ကို မှတ်ရန် ပရိုဂရမ်လိုအပ်လျှင် ဘယ် building block လိုအပ်မည်နည်း။",
          optionsEn: [
            "A variable",
            "A syntax error",
            "A password",
            "A flowchart oval",
          ],
          optionsMy: [
            "Variable",
            "Syntax error",
            "Password",
            "Flowchart ဘဲဥပုံ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "If your program needs to do something different depending on whether an answer is correct, what building block will you need?",
          questionMy:
              "အဖြေမှန်မမှန်ပေါ်မူတည်၍ မတူညီသောအရာလုပ်ရန် ပရိုဂရမ်လိုအပ်လျှင် ဘယ် building block လိုအပ်မည်နည်း။",
          optionsEn: [
            "Selection (if / elif / else)",
            "A variable only",
            "A comment only",
            "A password only",
          ],
          optionsMy: [
            "Selection (if / elif / else)",
            "Variable တစ်ခုတည်း",
            "Comment တစ်ခုတည်း",
            "Password တစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "If your program needs to repeat an action, like asking a question five times, what building block will you need?",
          questionMy:
              "မေးခွန်းတစ်ခုကို ငါးကြိမ်မေးခြင်းကဲ့သို့ လုပ်ဆောင်ချက်တစ်ခုထပ်ရန် ပရိုဂရမ်လိုအပ်လျှင် ဘယ် building block လိုအပ်မည်နည်း။",
          optionsEn: [
            "Iteration (a loop)",
            "A variable only",
            "A model only",
            "A print() statement only",
          ],
          optionsMy: [
            "Iteration (loop)",
            "Variable တစ်ခုတည်း",
            "Model တစ်ခုတည်း",
            "Print() statement တစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a test case?",
          questionMy: "Test case ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A specific input used to check whether a program produces the correct result",
            "A type of syntax error",
            "A password rule",
            "A flowchart symbol",
          ],
          optionsMy: [
            "ပရိုဂရမ်သည် မှန်ကန်သောရလဒ်ပေးမပေး စစ်ဆေးရန်သုံးသော အတိအကျ input",
            "Syntax error အမျိုးအစားတစ်ခု",
            "Password စည်းမျဉ်း",
            "Flowchart သင်္ကေတ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w35-d2",
      dayNumber: 2,
      titleEn: "Program Planning Vocabulary",
      titleMy: "ပရိုဂရမ်စီစဉ်ခြင်း ဆိုင်ရာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w35-plan-programplan",
          termEn: "Program Plan",
          termMy: "Program Plan",
          matchEn:
              "A decomposition of what a program needs to do before any code is written",
          matchMy:
              "Code မရေးမီ ပရိုဂရမ်လုပ်ဆောင်ရမည့်အရာကို decomposition လုပ်ထားခြင်း",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w35-plan-requirement",
          termEn: "Requirement",
          termMy: "Requirement",
          matchEn: "Something the finished program must be able to do",
          matchMy: "ပြီးစီးသောပရိုဂရမ် လုပ်နိုင်ရမည့်အရာတစ်ခု",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w35-plan-testcase",
          termEn: "Test Case",
          termMy: "Test Case",
          matchEn: "A specific input used to check a program works correctly",
          matchMy:
              "ပရိုဂရမ်မှန်ကန်စွာအလုပ်လုပ်မလုပ် စစ်ဆေးရန်သုံးသော အတိအကျ input",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w35-plan-pseudocodeplan",
          termEn: "Pseudocode Plan",
          termMy: "Pseudocode Plan",
          matchEn:
              "A program's plan written in plain, structured steps before real code",
          matchMy:
              "Real code မရေးမီ ရိုးရှင်း၊ ဖွဲ့စည်းထားသောအဆင့်များဖြင့် ရေးသားထားသော ပရိုဂရမ်အစီအစဉ်",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w35-plan-design",
          termEn: "Design",
          termMy: "Design",
          matchEn: "Deciding how the pieces of a program will fit together",
          matchMy:
              "ပရိုဂရမ်၏ အစိတ်အပိုင်းများ မည်သို့ပေါင်းစပ်မည်ကို ဆုံးဖြတ်ခြင်း",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w35-d3",
      dayNumber: 3,
      titleEn: "What Does Your Program Need?",
      titleMy: "သင့်ပရိုဂရမ် ဘာလိုအပ်သနည်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Needs a Variable",
          "Needs Selection",
          "Needs a Loop",
          "Needs Output",
        ],
        bucketsMy: [
          "Needs a Variable",
          "Needs Selection",
          "Needs a Loop",
          "Needs Output",
        ],
        items: [
          SortingItem(
            id: "w35-sort-rememberpoints",
            labelEn: "Remembering how many points a player has earned",
            labelMy: "Player ရရှိထားသော အမှတ်အရေအတွက်ကို မှတ်ထားခြင်း",
            correctBucketEn: "Needs a Variable",
            correctBucketMy: "Needs a Variable",
          ),
          SortingItem(
            id: "w35-sort-passfail",
            labelEn: "Deciding whether to show 'Pass' or 'Fail'",
            labelMy: "'Pass' (သို့) 'Fail' ပြသရန် ဆုံးဖြတ်ခြင်း",
            correctBucketEn: "Needs Selection",
            correctBucketMy: "Needs Selection",
          ),
          SortingItem(
            id: "w35-sort-askfive",
            labelEn: "Asking a quiz question five times in a row",
            labelMy: "Quiz မေးခွန်းတစ်ခုကို ငါးကြိမ်ဆက်တိုက်မေးခြင်း",
            correctBucketEn: "Needs a Loop",
            correctBucketMy: "Needs a Loop",
          ),
          SortingItem(
            id: "w35-sort-showscore",
            labelEn: "Showing the player's final score on the screen",
            labelMy: "Player ၏ နောက်ဆုံးအမှတ်ကို မျက်နှာပြင်ပေါ်ပြသခြင်း",
            correctBucketEn: "Needs Output",
            correctBucketMy: "Needs Output",
          ),
          SortingItem(
            id: "w35-sort-storename",
            labelEn: "Storing a player's name after they type it in",
            labelMy: "Player အမည်ရိုက်ထည့်ပြီးနောက် သိမ်းဆည်းခြင်း",
            correctBucketEn: "Needs a Variable",
            correctBucketMy: "Needs a Variable",
          ),
          SortingItem(
            id: "w35-sort-prizelevels",
            labelEn: "Choosing between three prize levels based on score",
            labelMy: "Score အပေါ်မူတည်၍ ဆုသုံးအဆင့်ကြားရွေးချယ်ခြင်း",
            correctBucketEn: "Needs Selection",
            correctBucketMy: "Needs Selection",
          ),
          SortingItem(
            id: "w35-sort-countten",
            labelEn: "Counting from 1 to 10 to build a times table",
            labelMy: "မြှောက်ဇယားတည်ဆောက်ရန် ၁ မှ ၁၀ အထိရေတွက်ခြင်း",
            correctBucketEn: "Needs a Loop",
            correctBucketMy: "Needs a Loop",
          ),
          SortingItem(
            id: "w35-sort-welldone",
            labelEn: "Displaying a 'Well done!' message",
            labelMy: "'Well done!' စာသား ပြသခြင်း",
            correctBucketEn: "Needs Output",
            correctBucketMy: "Needs Output",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w35-d4",
      dayNumber: 4,
      titleEn: "Sandar's Number-Guessing Game Plan",
      titleMy: "စန္ဒာ၏ ဂဏန်းခန့်မှန်းဂိမ်း အစီအစဉ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Sandar's Number-Guessing Game Plan",
        titleMy: "စန္ဒာ၏ ဂဏန်းခန့်မှန်းဂိမ်း အစီအစဉ်",
        passageEn:
            "Sandar decided to design her own program: a number-guessing game where the player tries to guess a secret number. Before writing any real code, she planned it on paper using decomposition. First, she listed her requirements: the program needs to remember the secret number, so it needs a variable. It needs to compare the player's guess to the secret number and respond differently depending on whether the guess is too high, too low, or correct, so it needs selection. It needs to keep asking until the player guesses correctly, so it needs a loop. Finally, it needs to print a message telling the player the result, so it needs output. Sandar wrote all of this as a pseudocode plan, then chose three test cases to check later: guessing correctly on the first try, guessing too low, and guessing too high. Only once her plan covered every piece did she feel ready to turn it into real code next.",
        passageMy:
            "စန္ဒာသည် သူမ၏ ကိုယ်ပိုင်ပရိုဂရမ်တစ်ခု ဒီဇိုင်းရေးရန် ဆုံးဖြတ်ခဲ့သည်: player က လျှို့ဝှက်ဂဏန်းကို ခန့်မှန်းရမည့် ဂဏန်းခန့်မှန်းဂိမ်းတစ်ခု။ Real code မရေးမီ decomposition သုံး၍ စက္ကူပေါ်တွင် စီစဉ်ခဲ့သည်။ ပထမ၊ သူမ၏ requirement များကို စာရင်းပြုစုခဲ့သည်: ပရိုဂရမ်သည် လျှို့ဝှက်ဂဏန်းကို မှတ်ထားရမည်ဖြစ်၍ variable လိုအပ်သည်။ Player ၏ခန့်မှန်းချက်ကို လျှို့ဝှက်ဂဏန်းနှင့်နှိုင်းယှဉ်ပြီး ခန့်မှန်းချက်သည် များလွန်း၊ နည်းလွန်း (သို့) မှန်ကန်ခြင်းအလိုက် မတူညီစွာတုံ့ပြန်ရမည်ဖြစ်၍ selection လိုအပ်သည်။ Player မှန်ကန်စွာခန့်မှန်းသည်အထိ ဆက်တိုက်မေးနေရမည်ဖြစ်၍ loop လိုအပ်သည်။ နောက်ဆုံးတွင် player ကို ရလဒ်ပြောပြရန် message တစ်ခုပရင့်ထုတ်ရမည်ဖြစ်၍ output လိုအပ်သည်။ စန္ဒာသည် ဤအရာအားလုံးကို pseudocode plan အဖြစ်ရေးသားခဲ့ပြီး၊ နောက်ပိုင်းစစ်ဆေးရန် test case သုံးခုရွေးချယ်ခဲ့သည်: ပထမကြိမ်တွင်ပင် မှန်ကန်စွာခန့်မှန်းခြင်း၊ နည်းလွန်းစွာခန့်မှန်းခြင်းနှင့် များလွန်းစွာခန့်မှန်းခြင်း။ သူမ၏ plan သည် အစိတ်အပိုင်းအားလုံးကို လွှမ်းခြုံထားမှသာ next real code အဖြစ်ပြောင်းရန် အသင့်ဖြစ်ကြောင်း ခံစားရခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What kind of program did Sandar decide to design?",
            questionMy:
                "စန္ဒာ ဘယ်လိုပရိုဂရမ်မျိုး ဒီဇိုင်းရေးရန် ဆုံးဖြတ်ခဲ့သနည်း။",
            optionsEn: [
              "A number-guessing game",
              "A password checker",
              "A grade calculator",
              "A flowchart drawing tool",
            ],
            optionsMy: [
              "ဂဏန်းခန့်မှန်းဂိမ်း",
              "စကားဝှက်စစ်ဆေးစနစ်",
              "အမှတ်တွက်ချက်စက်",
              "Flowchart ရေးဆွဲသည့်ကိရိယာ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Why did Sandar's program need a variable?",
            questionMy: "စန္ဒာ၏ ပရိုဂရမ် အဘယ့်ကြောင့် variable လိုအပ်ခဲ့သနည်း။",
            optionsEn: [
              "To remember the secret number",
              "To draw a flowchart",
              "To choose a password",
              "To print a comment",
            ],
            optionsMy: [
              "လျှို့ဝှက်ဂဏန်းကို မှတ်ထားရန်",
              "Flowchart ဆွဲရန်",
              "စကားဝှက်ရွေးချယ်ရန်",
              "Comment ပရင့်ထုတ်ရန်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Why did Sandar's program need selection?",
            questionMy:
                "စန္ဒာ၏ ပရိုဂရမ် အဘယ့်ကြောင့် selection လိုအပ်ခဲ့သနည်း။",
            optionsEn: [
              "To respond differently depending on whether the guess was too high, too low, or correct",
              "To remember the secret number",
              "To repeat a question five times",
              "To choose a strong password",
            ],
            optionsMy: [
              "ခန့်မှန်းချက်သည် များလွန်း၊ နည်းလွန်း (သို့) မှန်ကန်ခြင်းအလိုက် မတူညီစွာတုံ့ပြန်ရန်",
              "လျှို့ဝှက်ဂဏန်းကို မှတ်ထားရန်",
              "မေးခွန်းကို ငါးကြိမ်ထပ်ရန်",
              "ခိုင်မာသောစကားဝှက်ရွေးချယ်ရန်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What three test cases did Sandar choose?",
            questionMy: "စန္ဒာ ဘယ် test case သုံးခုကို ရွေးချယ်ခဲ့သနည်း။",
            optionsEn: [
              "Guessing correctly first try, guessing too low, and guessing too high",
              "Three different passwords",
              "Three different flowchart shapes",
              "Three different pen colors",
            ],
            optionsMy: [
              "ပထမကြိမ်တွင်မှန်ခန့်မှန်းခြင်း၊ နည်းလွန်းစွာခန့်မှန်းခြင်း၊ များလွန်းစွာခန့်မှန်းခြင်း",
              "စကားဝှက်သုံးမျိုး",
              "Flowchart ပုံသဏ္ဍာန်သုံးမျိုး",
              "ခဲတံအရောင်သုံးမျိုး",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Sandar do before she felt ready to write real code?",
            questionMy:
                "Real code ရေးရန် အသင့်ဖြစ်ကြောင်းခံစားရမီ စန္ဒာ ဘာလုပ်ခဲ့သနည်း။",
            optionsEn: [
              "She made sure her pseudocode plan covered every piece needed",
              "She deleted her plan",
              "She skipped planning entirely",
              "She only thought about the pen color",
            ],
            optionsMy: [
              "သူမ၏ pseudocode plan သည် လိုအပ်သောအစိတ်အပိုင်းအားလုံးကို လွှမ်းခြုံကြောင်း သေချာစေခဲ့သည်",
              "သူမ၏ plan ကို ဖျက်ခဲ့သည်",
              "စီစဉ်ခြင်းကို လုံးဝကျော်ခဲ့သည်",
              "ခဲတံအရောင်ကိုသာ တွေးခဲ့သည်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w35-d5",
      dayNumber: 5,
      titleEn: "Week 35 Recap Quiz",
      titleMy: "နှစ်ဆယ့်ငါးပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What should a programmer do before writing any code?",
          questionMy: "Code မရေးမီ programmer တစ်ဦး ဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Plan what the program needs to do",
            "Start typing random code",
            "Skip planning",
            "Delete the problem",
          ],
          optionsMy: [
            "ပရိုဂရမ်လုပ်ဆောင်ရမည့်အရာကို စီစဉ်",
            "ကျပန်း code ရိုက်စတင်",
            "စီစဉ်ခြင်းကျော်",
            "ပြဿနာဖျက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What building block do you need to remember a changing value?",
          questionMy:
              "ပြောင်းလဲနေသောတန်ဖိုးတစ်ခုမှတ်ရန် ဘယ် building block လိုအပ်သနည်း။",
          optionsEn: ["A variable", "A syntax error", "A model", "A password"],
          optionsMy: ["Variable", "Syntax error", "Model", "Password"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What building block do you need to repeat an action several times?",
          questionMy:
              "လုပ်ဆောင်ချက်တစ်ခုကို အကြိမ်ကြိမ်ထပ်ရန် ဘယ် building block လိုအပ်သနည်း။",
          optionsEn: [
            "A loop (iteration)",
            "A variable only",
            "A model only",
            "A comment only",
          ],
          optionsMy: [
            "Loop (iteration)",
            "Variable တစ်ခုတည်း",
            "Model တစ်ခုတည်း",
            "Comment တစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a test case?",
          questionMy: "Test case ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A specific input used to check a program works correctly",
            "A type of syntax error",
            "A password rule",
            "A flowchart symbol",
          ],
          optionsMy: [
            "ပရိုဂရမ်မှန်ကန်စွာအလုပ်လုပ်မလုပ် စစ်ဆေးရန်သုံးသော အတိအကျ input",
            "Syntax error အမျိုးအစားတစ်ခု",
            "Password စည်းမျဉ်း",
            "Flowchart သင်္ကေတ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a pseudocode plan?",
          questionMy: "Pseudocode plan ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A program's plan written in plain, structured steps before real code",
            "Real code with no plan at all",
            "A type of password",
            "A flowchart with no shapes",
          ],
          optionsMy: [
            "Real code မရေးမီ ရိုးရှင်း၊ ဖွဲ့စည်းထားသောအဆင့်များဖြင့်ရေးသားထားသော ပရိုဂရမ်အစီအစဉ်",
            "Plan လုံးဝမရှိသော real code",
            "Password အမျိုးအစားတစ်ခု",
            "ပုံသဏ္ဍာန်မပါသော flowchart",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 1 Computing -- Term 9, Week 36 (FINAL WEEK): "Build, Test,
// and Celebrate"
// =====================================================================

const CourseWeekDef _secondary1ComputingWeek36 = CourseWeekDef(
  id: "course-secondary1-computing-w36",
  weekNumber: 36,
  titleEn: "Build, Test, and Celebrate",
  titleMy: "တည်ဆောက်ခြင်း၊ Test လုပ်ခြင်းနှင့် ဂုဏ်ပြုခြင်း",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s1-computing-w36-d1",
      dayNumber: 1,
      titleEn: "From Plan to Real Code",
      titleMy: "Plan မှ Real Code သို့",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "After planning a program on paper, what is the next step?",
          questionMy:
              "စက္ကူပေါ်တွင် ပရိုဂရမ်စီစဉ်ပြီးနောက် နောက်တစ်ဆင့်က အဘယ်နည်း။",
          optionsEn: [
            "Writing the plan as real code using print(), variables, if/else, and loops",
            "Deleting the plan completely",
            "Starting a brand-new, unrelated plan",
            "Choosing a password",
          ],
          optionsMy: [
            "Print(), variable, if/else, loop များသုံး၍ plan ကို real code အဖြစ်ရေးခြင်း",
            "Plan ကို လုံးဝဖျက်ခြင်း",
            "မသက်ဆိုင်သော plan အသစ်စတင်ခြင်း",
            "Password ရွေးချယ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which real code line would store a player's guess as a variable, using input()?",
          questionMy:
              "input() သုံး၍ player ၏ခန့်မှန်းချက်ကို variable အဖြစ်သိမ်းဆည်းမည့် real code စာကြောင်းက အဘယ်နည်း။",
          optionsEn: [
            "guess = int(input('Guess a number: '))",
            "guess == int(input('Guess a number: '))",
            "print(guess) input()",
            "for guess in range(10):",
          ],
          optionsMy: [
            "guess = int(input('Guess a number: '))",
            "guess == int(input('Guess a number: '))",
            "print(guess) input()",
            "for guess in range(10):",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which real code line correctly checks whether a guess is too low?",
          questionMy:
              "ခန့်မှန်းချက် နည်းလွန်းမနည်းလွန်း မှန်ကန်စွာစစ်ဆေးသော real code စာကြောင်းက အဘယ်နည်း။",
          optionsEn: [
            "if guess < secret_number:",
            "if guess < secret_number",
            "if guess = secret_number:",
            "while guess < secret_number",
          ],
          optionsMy: [
            "if guess < secret_number:",
            "if guess < secret_number",
            "if guess = secret_number:",
            "while guess < secret_number",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why should you test your program with more than one input value?",
          questionMy:
              "ပရိုဂရမ်ကို input value တစ်ခုထက်ပိုပြီး test လုပ်သင့်သည်မှာ အဘယ့်ကြောင့်နည်း။",
          optionsEn: [
            "To check it behaves correctly in every case your test cases cover",
            "To make it run slower on purpose",
            "To delete its variables",
            "To turn it back into pseudocode",
          ],
          optionsMy: [
            "Test case များ လွှမ်းခြုံသောအခြေအနေတိုင်းတွင် မှန်ကန်စွာအလုပ်လုပ်မလုပ် စစ်ဆေးရန်",
            "ရည်ရွယ်ချက်ရှိရှိ ပိုနှေးအောင်လုပ်ရန်",
            "Variable များကို ဖျက်ရန်",
            "Pseudocode အဖြစ် ပြန်ပြောင်းရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which skills from earlier this year helped you plan your program before coding it?",
          questionMy:
              "ဒီနှစ်အစောပိုင်းက ဘယ်ကျွမ်းကျင်မှုများက code မရေးမီ ပရိုဂရမ်စီစဉ်ရာတွင် ကူညီခဲ့သနည်း။",
          optionsEn: [
            "Decomposition and abstraction",
            "Only choosing a password",
            "Only drawing an oval shape",
            "Only turning on the computer",
          ],
          optionsMy: [
            "Decomposition နှင့် abstraction",
            "Password ရွေးချယ်ခြင်းသာ",
            "ဘဲဥပုံဆွဲခြင်းသာ",
            "ကွန်ပျူတာဖွင့်ခြင်းသာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w36-d2",
      dayNumber: 2,
      titleEn: "Term 9 Recap Vocabulary",
      titleMy: "Term 9 ပြန်လည်သုံးသပ် ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w36-recap-decomposition",
          termEn: "Decomposition",
          termMy: "Decomposition",
          matchEn:
              "Breaking a big problem into smaller, manageable sub-problems",
          matchMy: "ပြဿနာကြီးတစ်ခုကို sub-problem ငယ်များအဖြစ် ခွဲခြင်း",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w36-recap-abstraction",
          termEn: "Abstraction",
          termMy: "Abstraction",
          matchEn:
              "Focusing on important details and ignoring ones that don't matter",
          matchMy:
              "အရေးကြီးသောအသေးစိတ်များကို အာရုံစိုက်ပြီး အရေးမကြီးသည်များကို လျစ်လျူရှုခြင်း",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w36-recap-patternrecognition",
          termEn: "Pattern Recognition",
          termMy: "Pattern Recognition",
          matchEn:
              "Noticing similarities or repeated features between problems",
          matchMy:
              "ပြဿနာများကြား ဆင်တူမှု (သို့) ထပ်ခံလက္ခဏာများ သတိပြုမိခြင်း",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w36-recap-programplan",
          termEn: "Program Plan",
          termMy: "Program Plan",
          matchEn:
              "A decomposition of what a program needs before any code is written",
          matchMy:
              "Code မရေးမီ ပရိုဂရမ်လိုအပ်ချက်ကို decomposition လုပ်ထားခြင်း",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w36-recap-testcase",
          termEn: "Test Case",
          termMy: "Test Case",
          matchEn: "A specific input used to check a program works correctly",
          matchMy:
              "ပရိုဂရမ်မှန်ကန်စွာအလုပ်လုပ်မလုပ် စစ်ဆေးရန်သုံးသော အတိအကျ input",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s1-computing-w36-d3",
      dayNumber: 3,
      titleEn: "A Year of Computing: Which Topic?",
      titleMy: "ကွန်ပျူတာနှစ်တစ်ခုလုံး: ဘယ်ခေါင်းစဉ်လဲ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Hardware, Networks & Data",
          "Programming & Code",
          "Data Representation",
          "Digital Citizenship & Thinking Skills",
        ],
        bucketsMy: [
          "Hardware, Networks & Data",
          "Programming & Code",
          "Data Representation",
          "Digital Citizenship & Thinking Skills",
        ],
        items: [
          SortingItem(
            id: "w36-sort-cpuram",
            labelEn: "CPU and RAM",
            labelMy: "CPU နှင့် RAM",
            correctBucketEn: "Hardware, Networks & Data",
            correctBucketMy: "Hardware, Networks & Data",
          ),
          SortingItem(
            id: "w36-sort-lanwan",
            labelEn: "LAN and WAN",
            labelMy: "LAN နှင့် WAN",
            correctBucketEn: "Hardware, Networks & Data",
            correctBucketMy: "Hardware, Networks & Data",
          ),
          SortingItem(
            id: "w36-sort-variablesloops",
            labelEn: "Variables and loops",
            labelMy: "Variable နှင့် loop",
            correctBucketEn: "Programming & Code",
            correctBucketMy: "Programming & Code",
          ),
          SortingItem(
            id: "w36-sort-ifelifelse",
            labelEn: "if / elif / else in real code",
            labelMy: "Real code ရှိ if / elif / else",
            correctBucketEn: "Programming & Code",
            correctBucketMy: "Programming & Code",
          ),
          SortingItem(
            id: "w36-sort-binarybits",
            labelEn: "Binary numbers and bits",
            labelMy: "Binary number နှင့် bit",
            correctBucketEn: "Data Representation",
            correctBucketMy: "Data Representation",
          ),
          SortingItem(
            id: "w36-sort-asciicodes",
            labelEn: "ASCII character codes",
            labelMy: "ASCII character code",
            correctBucketEn: "Data Representation",
            correctBucketMy: "Data Representation",
          ),
          SortingItem(
            id: "w36-sort-strongpasswords",
            labelEn: "Strong passwords",
            labelMy: "ခိုင်မာသောစကားဝှက်",
            correctBucketEn: "Digital Citizenship & Thinking Skills",
            correctBucketMy: "Digital Citizenship & Thinking Skills",
          ),
          SortingItem(
            id: "w36-sort-decompositionabstraction",
            labelEn: "Decomposition and abstraction",
            labelMy: "Decomposition နှင့် abstraction",
            correctBucketEn: "Digital Citizenship & Thinking Skills",
            correctBucketMy: "Digital Citizenship & Thinking Skills",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w36-d4",
      dayNumber: 4,
      titleEn: "Sandar's Finished Game",
      titleMy: "စန္ဒာ၏ ပြီးစီးသောဂိမ်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Sandar's Finished Game",
        titleMy: "စန္ဒာ၏ ပြီးစီးသောဂိမ်း",
        passageEn:
            "With her plan ready from last week, Sandar sat down to turn it into real code. She wrote secret_number = 7 to store the number, then used a while loop, while guess != secret_number:, to keep asking until the player guessed correctly. Inside the loop she wrote guess = int(input('Guess a number: ')), then used selection: if guess < secret_number: print('Too low'), elif guess > secret_number: print('Too high'), and finally print('Correct!') once the loop ended. On her first attempt she forgot the colon after the while line and got a syntax error; after fixing it, she tested her program with three cases -- guessing too low, too high, and correct -- and every case worked. Looking back over the whole year, Sandar realized her finished game used a bit of everything: the hardware her code ran on, the real-code syntax from Term 7, the variables and selection and loops she had practiced since Term 4, and the decomposition and abstraction she had just learned to plan it. She felt proud that a year that started with 'what is a computer?' had ended with her building, testing, and celebrating a program entirely her own.",
        passageMy:
            "ပြီးခဲ့သောသီတင်းပတ်က plan အသင့်ဖြင့် စန္ဒာသည် real code အဖြစ်ပြောင်းရန် ထိုင်ခဲ့သည်။ ဂဏန်းကိုသိမ်းရန် secret_number = 7 ဟု ရေးခဲ့ပြီး၊ player မှန်ကန်စွာခန့်မှန်းသည်အထိ ဆက်တိုက်မေးရန် while loop ဖြစ်သော while guess != secret_number: ကို သုံးခဲ့သည်။ Loop အတွင်း guess = int(input('Guess a number: ')) ဟု ရေးပြီး၊ selection သုံးခဲ့သည်: if guess < secret_number: print('Too low'), elif guess > secret_number: print('Too high'), နောက်ဆုံးတွင် loop ပြီးဆုံးသောအခါ print('Correct!') ။ ပထမကြိမ်ကြိုးစားရာတွင် while စာကြောင်းနောက်ရှိ colon ကို မေ့ကျန်ခဲ့ရာ syntax error ရရှိခဲ့သည်။ ပြင်ဆင်ပြီးနောက် သူမသည် ပရိုဂရမ်ကို test case သုံးခု -- နည်းလွန်းစွာခန့်မှန်းခြင်း၊ များလွန်းစွာခန့်မှန်းခြင်းနှင့် မှန်ကန်စွာခန့်မှန်းခြင်း -- ဖြင့် test လုပ်ခဲ့ရာ အားလုံးအောင်မြင်ခဲ့သည်။ နှစ်တစ်ခုလုံးကို ပြန်ကြည့်လိုက်သောအခါ သူမ၏ ပြီးစီးသောဂိမ်းသည် အရာအားလုံးမှ အနည်းငယ်စီပါဝင်ကြောင်း စန္ဒာ သိရှိခဲ့သည် - သူမ၏ code run သည့် hardware၊ Term 7 မှ real code syntax၊ Term 4 မှစတင် လေ့ကျင့်ခဲ့သော variable၊ selection နှင့် loop များ၊ ထို့နောက် plan စီစဉ်ရန် အသစ်သင်ခဲ့သော decomposition နှင့် abstraction။ 'ကွန်ပျူတာဆိုသည်မှာ အဘယ်နည်း' ဟူသော မေးခွန်းဖြင့် စတင်ခဲ့သော နှစ်တစ်ခုလုံးသည် သူမကိုယ်တိုင်ပိုင်ဆိုင်သော ပရိုဂရမ်တစ်ခုကို တည်ဆောက်ခြင်း၊ test လုပ်ခြင်းနှင့် ဂုဏ်ပြုခြင်းဖြင့် အဆုံးသတ်ခဲ့ကြောင်း သူမ ဂုဏ်ယူစွာ ခံစားရခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What loop did Sandar use to keep asking for a guess?",
            questionMy:
                "ခန့်မှန်းချက်ကို ဆက်တိုက်မေးရန် စန္ဒာ ဘယ် loop သုံးခဲ့သနည်း။",
            optionsEn: [
              "A while loop",
              "A for loop only",
              "No loop at all",
              "A print() loop",
            ],
            optionsMy: [
              "While loop",
              "For loop သာ",
              "Loop လုံးဝမသုံး",
              "Print() loop",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What mistake caused Sandar's first attempt to fail?",
            questionMy: "စန္ဒာ၏ ပထမကြိုးစားမှု မအောင်မြင်ရသည့်အမှားက အဘယ်နည်း။",
            optionsEn: [
              "She forgot the colon after the while line",
              "She forgot to use a variable",
              "She used the wrong secret number",
              "She deleted her print() function",
            ],
            optionsMy: [
              "While စာကြောင်းနောက်ရှိ colon ကို မေ့ကျန်ခဲ့၍",
              "Variable သုံးရန် မေ့ကျန်ခဲ့၍",
              "လျှို့ဝှက်ဂဏန်း မှားသုံးမိ၍",
              "Print() function ကို ဖျက်မိ၍",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What three test cases did Sandar use to test her finished program?",
            questionMy:
                "ပြီးစီးသောပရိုဂရမ်ကို test လုပ်ရန် စန္ဒာ ဘယ် test case သုံးခုသုံးခဲ့သနည်း။",
            optionsEn: [
              "Guessing too low, too high, and correct",
              "Three different secret numbers",
              "Three different passwords",
              "Three different flowcharts",
            ],
            optionsMy: [
              "နည်းလွန်းစွာ၊ များလွန်းစွာနှင့် မှန်ကန်စွာခန့်မှန်းခြင်း",
              "လျှို့ဝှက်ဂဏန်း သုံးခု",
              "Password သုံးခု",
              "Flowchart သုံးခု",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which skills from Term 9 helped Sandar plan her game before coding it?",
            questionMy:
                "Term 9 မှ ဘယ်ကျွမ်းကျင်မှုများက code မရေးမီ ဂိမ်းစီစဉ်ရာတွင် ကူညီခဲ့သနည်း။",
            optionsEn: [
              "Decomposition and abstraction",
              "Only a strong password",
              "Only a flowchart oval",
              "Only ASCII codes",
            ],
            optionsMy: [
              "Decomposition နှင့် abstraction",
              "ခိုင်မာသောစကားဝှက်သာ",
              "Flowchart ဘဲဥပုံသာ",
              "ASCII code သာ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What question did the whole year of learning start with, according to the passage?",
            questionMy:
                "ဤစာပိုဒ်အရ နှစ်တစ်ခုလုံးသင်ကြားမှု ဘယ်မေးခွန်းဖြင့် စတင်ခဲ့သနည်း။",
            optionsEn: [
              "'What is a computer?'",
              "'What is a password?'",
              "'What is a loop?'",
              "'What is ASCII?'",
            ],
            optionsMy: [
              "'ကွန်ပျူတာဆိုသည်မှာ အဘယ်နည်း'",
              "'Password ဆိုသည်မှာ အဘယ်နည်း'",
              "'Loop ဆိုသည်မှာ အဘယ်နည်း'",
              "'ASCII ဆိုသည်မှာ အဘယ်နည်း'",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s1-computing-w36-d5",
      dayNumber: 5,
      titleEn: "Week 36 Recap Quiz -- A Year in Review",
      titleMy:
          "နှစ်ဆယ့်ခြောက်ပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ - နှစ်တစ်ခုလုံးပြန်လည်ကြည့်ရှုခြင်း",
      kind: LessonKind.quiz,
      xpReward: 20,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What do we call the physical parts of a computer you can touch?",
          questionMy:
              "ကွန်ပျူတာ၏ ထိတွေ့နိုင်သော ရုပ်ပိုင်းဆိုင်ရာအစိတ်အပိုင်းများကို ဘာဟုခေါ်သနည်း။",
          optionsEn: ["Hardware", "Software", "A password", "An algorithm"],
          optionsMy: ["Hardware", "Software", "Password", "Algorithm"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Computers store all data using only two digits. What are they?",
          questionMy:
              "ကွန်ပျူတာများသည် ဒေတာအားလုံးကို ဂဏန်းနှစ်လုံးဖြင့်သာ သိမ်းဆည်းသည်။ ဘာနှစ်လုံးလဲ။",
          optionsEn: ["0 and 1", "1 and 2", "A and B", "5 and 10"],
          optionsMy: ["0 နှင့် 1", "1 နှင့် 2", "A နှင့် B", "5 နှင့် 10"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In real code, what symbol ends an if, elif, else, for, or while line before its indented block?",
          questionMy:
              "Real code တွင် if, elif, else, for, while စာကြောင်းများ၏ indent block မတိုင်မီ ဘာသင်္ကေတက အဆုံးသတ်သနည်း။",
          optionsEn: [
            "A colon (:)",
            "A semicolon (;)",
            "A comma (,)",
            "A hashtag (#)",
          ],
          optionsMy: ["Colon (:)", "Semicolon (;)", "Comma (,)", "Hashtag (#)"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "If something online makes you feel unsafe, what should you always do?",
          questionMy:
              "အွန်လိုင်းရှိအရာတစ်ခုက မလုံခြုံဟု ခံစားရလျှင် အမြဲမည်သို့ပြုလုပ်သင့်သနည်း။",
          optionsEn: [
            "Tell a trusted adult",
            "Keep it a secret",
            "Share it with everyone",
            "Reply with personal information",
          ],
          optionsMy: [
            "ယုံကြည်ရသူကြီးကို ပြောပြပါ",
            "လျှို့ဝှက်ထားပါ",
            "အားလုံးထံမျှဝေပါ",
            "ကိုယ်ရေးအချက်အလက်ဖြင့် ပြန်စာပို့ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What do we call breaking a big problem into smaller pieces?",
          questionMy:
              "ပြဿနာကြီးတစ်ခုကို အစိတ်အပိုင်းငယ်များအဖြစ် ခွဲခြင်းကို ဘာဟုခေါ်သနည်း။",
          optionsEn: [
            "Decomposition",
            "Abstraction",
            "Syntax error",
            "Debugging",
          ],
          optionsMy: [
            "Decomposition",
            "Abstraction",
            "Syntax error",
            "Debugging",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary1ComputingTerm9 = CourseTermDef(
  id: "course-secondary1-computing-t9",
  termNumber: 9,
  titleEn: "Computational Thinking & Your Own Project",
  titleMy: "Computational Thinking နှင့် ကိုယ်ပိုင်ပရိုဂျက်",
  certificateTitleEn: "Computational Thinking & Your Own Project",
  certificateTitleMy: "Computational Thinking နှင့် ကိုယ်ပိုင်ပရိုဂျက်",
  weeks: [
    _secondary1ComputingWeek33,
    _secondary1ComputingWeek34,
    _secondary1ComputingWeek35,
    _secondary1ComputingWeek36,
  ], // Term 9 complete (Weeks 33-36) -- FINAL TERM, full 36-week pathway complete
);

/// Secondary 1 Computing's full-year pathway. All 9 terms (Weeks 1-36)
/// are now represented, completing the full [totalWeeks] roadmap for
/// real -- "Week 1 of 36" is now literally true across the whole
/// pathway, not just an honest progress-bar placeholder. Each
/// [CourseTermDef] is a short thematic/certificate milestone
/// (Coursera-style), not a literal 12-week school term: this Year 1
/// vertical slice authors 4 weeks per term (9 terms x 4 weeks = 36
/// weeks) rather than a literal ~12-week term. A Year 2 pathway (Grade
/// [Grade.secondary2] onward) would be a new, separate
/// [CoursePathwayDef] appended to [allCoursePathways], not more terms
/// grafted onto this one.
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
    _secondary1ComputingTerm6,
    _secondary1ComputingTerm7,
    _secondary1ComputingTerm8,
    _secondary1ComputingTerm9,
  ],
);

/// Every defined course pathway -- extend this list as more subjects/
/// grades get authored beyond this vertical slice.
const List<CoursePathwayDef> allCoursePathways = [
  secondary1ComputingPathway,
  secondary2ComputingPathway,
];

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

// =====================================================================
// Secondary 2 Computing -- Term 1, Week 1: "What is a List?"
// =====================================================================

const CourseWeekDef _secondary2ComputingWeek1 = CourseWeekDef(
  id: "course-secondary2-computing-w1",
  weekNumber: 1,
  titleEn: "What is a List?",
  titleMy: "List ဆိုသည်မှာ အဘယ်နည်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-computing-w1-d1",
      dayNumber: 1,
      titleEn: "Storing Many Values Together",
      titleMy: "တန်ဖိုးများစွာကို အတူတကွ သိမ်းဆည်းခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Why is scores = [85, 90, 78] better than writing score1 = 85, score2 = 90, score3 = 78 separately?",
          questionMy:
              "score1 = 85, score2 = 90, score3 = 78 ဟု သီးခြားရေးမည့်အစား scores = [85, 90, 78] ဟုရေးခြင်းသည် အဘယ့်ကြောင့် ပိုကောင်းသနည်း။",
          optionsEn: [
            "A single list can hold many related values together, instead of needing a new variable name for each one",
            "A list can only ever hold one value",
            "A list automatically makes the program run faster",
            "A list deletes itself after being used once",
          ],
          optionsMy: [
            "List တစ်ခုတည်းက ဆက်စပ်တန်ဖိုးများကို အတူတကွထားနိုင်ပြီး၊ တန်ဖိုးတစ်ခုစီအတွက် variable အမည်အသစ် မလိုအပ်ပါ",
            "List တစ်ခုသည် တန်ဖိုးတစ်ခုသာ ထားနိုင်သည်",
            "List တစ်ခုက ပရိုဂရမ်ကို အလိုအလျောက် ပိုမြန်စေသည်",
            "List တစ်ခုသည် တစ်ကြိမ်သုံးပြီးလျှင် self ဖျက်သွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In real code, how do you write a list containing the numbers 10, 20, and 30?",
          questionMy:
              "Real code တွင် 10၊ 20၊ 30 ဂဏန်းများပါသော list တစ်ခုကို မည်သို့ရေးသနည်း။",
          optionsEn: [
            "[10, 20, 30]",
            "(10, 20, 30)",
            "{10, 20, 30}",
            "10, 20, 30",
          ],
          optionsMy: [
            "[10, 20, 30]",
            "(10, 20, 30)",
            "{10, 20, 30}",
            "10, 20, 30",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is each individual value inside a list called?",
          questionMy: "List တစ်ခုအတွင်းရှိ တန်ဖိုးတစ်ခုစီကို ဘာဟုခေါ်သနည်း။",
          optionsEn: [
            "An element (or item)",
            "A comment",
            "A syntax error",
            "A print statement",
          ],
          optionsMy: [
            "Element (သို့) item",
            "Comment",
            "Syntax error",
            "print statement",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "If scores = [85, 90, 78], what is scores[0]?",
          questionMy:
              "scores = [85, 90, 78] ဖြစ်ပါက scores[0] သည် အဘယ်တန်ဖိုးဖြစ်သနည်း။",
          optionsEn: ["85", "90", "78", "0"],
          optionsMy: ["85", "90", "78", "0"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why do Python lists (and many real languages) start counting positions from 0 instead of 1?",
          questionMy:
              "Python list များ (နှင့် အခြား real language များစွာ) သည် position များကို 1 အစား 0 မှ အဘယ့်ကြောင့် စတွက်ကြသနည်း။",
          optionsEn: [
            "It is the language's convention: the first position is index 0, the second is index 1, and so on",
            "Because index 0 means the list is empty",
            "Because indexes always count backwards from the last element",
            "Because the first element in a list never has an index",
          ],
          optionsMy: [
            "Language ၏ convention ဖြစ်သည် - ပထမနေရာသည် index 0၊ ဒုတိယနေရာသည် index 1 စသဖြင့်ဖြစ်သည်",
            "Index 0 က list ဗလာဖြစ်ကြောင်း ဆိုလိုသောကြောင့်",
            "Index များသည် နောက်ဆုံး element မှ နောက်ပြန်ရေတွက်ကြသောကြောင့်",
            "List ၏ ပထမ element တွင် index လုံးဝမရှိသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-computing-w1-d2",
      dayNumber: 2,
      titleEn: "List Vocabulary",
      titleMy: "List ဆိုင်ရာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w1-list-list",
          termEn: "List",
          termMy: "List",
          matchEn:
              "A single variable that can hold many values together, written inside square brackets [ ]",
          matchMy:
              "Square bracket [ ] အတွင်းရေးထားပြီး တန်ဖိုးများစွာကို အတူတကွထားနိုင်သော variable တစ်ခု",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w1-list-element",
          termEn: "Element (Item)",
          termMy: "Element (Item)",
          matchEn: "One individual value stored inside a list",
          matchMy: "List တစ်ခုအတွင်း သိမ်းဆည်းထားသော တန်ဖိုးတစ်ခု",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w1-list-index",
          termEn: "Index",
          termMy: "Index",
          matchEn:
              "A number showing an element's position in a list, starting at 0",
          matchMy: "List တစ်ခုအတွင်း element ၏ တည်နေရာကို 0 မှစပြီးပြသော ဂဏန်း",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w1-list-zerobased",
          termEn: "Zero-Based Indexing",
          termMy: "Zero-Based Indexing",
          matchEn:
              "The convention where the first element in a list has index 0, not index 1",
          matchMy:
              "List ၏ ပထမ element သည် index 1 မဟုတ်ဘဲ index 0 ဖြစ်သော convention",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w1-list-array",
          termEn: "Array",
          termMy: "Array",
          matchEn:
              "Another common name for a list-like structure used to store many values together",
          matchMy:
              "တန်ဖိုးများစွာကို အတူတကွသိမ်းဆည်းရန်သုံးသော list ကဲ့သို့ ဖွဲ့စည်းပုံအတွက် အခြားနာမည်တစ်ခု",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-computing-w1-d3",
      dayNumber: 3,
      titleEn: "List or Single Variable?",
      titleMy: "List လား Variable တစ်ခုတည်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Needs a List", "One Variable is Enough"],
        bucketsMy: ["List လိုအပ်သည်", "Variable တစ်ခုတည်း လုံလောက်သည်"],
        items: [
          SortingItem(
            id: "w1-sort-classscores",
            labelEn: "Storing every student's score in a class",
            labelMy: "အတန်းရှိ ကျောင်းသားတိုင်း၏ score ကို သိမ်းဆည်းခြင်း",
            correctBucketEn: "Needs a List",
            correctBucketMy: "List လိုအပ်သည်",
          ),
          SortingItem(
            id: "w1-sort-oneage",
            labelEn: "Storing one person's age",
            labelMy: "လူတစ်ဦး၏ အသက်ကို သိမ်းဆည်းခြင်း",
            correctBucketEn: "One Variable is Enough",
            correctBucketMy: "Variable တစ်ခုတည်း လုံလောက်သည်",
          ),
          SortingItem(
            id: "w1-sort-shoppinglist",
            labelEn: "Storing a shopping list with 8 items",
            labelMy: "item ၈ခုပါသော ဈေးဝယ်စာရင်းကို သိမ်းဆည်းခြင်း",
            correctBucketEn: "Needs a List",
            correctBucketMy: "List လိုအပ်သည်",
          ),
          SortingItem(
            id: "w1-sort-today",
            labelEn: "Storing today's date",
            labelMy: "ယနေ့ရက်စွဲကို သိမ်းဆည်းခြင်း",
            correctBucketEn: "One Variable is Enough",
            correctBucketMy: "Variable တစ်ခုတည်း လုံလောက်သည်",
          ),
          SortingItem(
            id: "w1-sort-teamnames",
            labelEn: "Storing the names of every player on a team",
            labelMy: "အသင်းတစ်သင်းရှိ ကစားသမားတိုင်း၏ အမည်ကို သိမ်းဆည်းခြင်း",
            correctBucketEn: "Needs a List",
            correctBucketMy: "List လိုအပ်သည်",
          ),
          SortingItem(
            id: "w1-sort-passwordcheck",
            labelEn: "Storing whether a password is correct (true or false)",
            labelMy: "Password မှန်၊ မမှန် (true/false) ကို သိမ်းဆည်းခြင်း",
            correctBucketEn: "One Variable is Enough",
            correctBucketMy: "Variable တစ်ခုတည်း လုံလောက်သည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-computing-w1-d4",
      dayNumber: 4,
      titleEn: "Htet's Score List",
      titleMy: "ထက်၏ Score List",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Htet's Score List",
        titleMy: "ထက်၏ Score List",
        passageEn:
            "Htet used to write score1 = 85, score2 = 90, and score3 = 78 to store his three quiz scores. When his teacher added a fourth quiz, he realized he would need score4 too, and a fifth quiz would need score5 after that. His older sister, who had already studied lists in Secondary 2, showed him a better way: scores = [85, 90, 78]. Now all three scores lived inside a single variable called scores. She explained that scores[0] was 85, scores[1] was 90, and scores[2] was 78, because Python lists count positions starting from 0, not 1. When Htet's teacher later added a fourth quiz score of 92, he simply added it to the same list instead of creating a brand-new variable, so his list became scores = [85, 90, 78, 92]. Htet realized a list could grow to hold as many scores as he ever needed, without ever running out of variable names.",
        passageMy:
            "ထက်သည် သူ၏ quiz score သုံးခုကို သိမ်းဆည်းရန် score1 = 85, score2 = 90, score3 = 78 ဟု ရေးလေ့ရှိသည်။ ဆရာမက စတုတ္ထ quiz တစ်ခု ထပ်ထည့်လိုက်သောအခါ score4 ပါ လိုအပ်လာကြောင်း၊ ပဉ္စမ quiz ထပ်ရှိလာလျှင် score5 ထပ်လိုအပ်ဦးမည်ဖြစ်ကြောင်း သူသိလိုက်သည်။ Secondary 2 တွင် list ကို လေ့လာပြီးသား သူ၏အစ်မကြီးက ပိုကောင်းသော နည်းလမ်းကို ပြသပေးသည် - scores = [85, 90, 78]။ ယခုအခါ score သုံးခုစလုံးသည် scores ဟုခေါ်သော variable တစ်ခုတည်းအတွင်း နေထိုင်နေပြီဖြစ်သည်။ Python list များသည် position ကို 1 အစား 0 မှစတွက်သောကြောင့် scores[0] သည် 85၊ scores[1] သည် 90၊ scores[2] သည် 78 ဖြစ်ကြောင်း သူမ ရှင်းပြခဲ့သည်။ နောက်ပိုင်းတွင် ဆရာမက စတုတ္ထ quiz score 92 ထပ်ထည့်လိုက်သောအခါ ထက်သည် variable အသစ်မဖန်တီးဘဲ list တစ်ခုတည်းထဲသို့ ရိုးရှင်းစွာထပ်ထည့်လိုက်ရာ scores = [85, 90, 78, 92] ဖြစ်သွားသည်။ List တစ်ခုသည် variable အမည်ကုန်ခန်းစရာမလိုဘဲ လိုအပ်သမျှ score အရေအတွက်အထိ ကြီးထွားနိုင်ကြောင်း ထက် သဘောပေါက်လိုက်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What were Htet's three original separate variables called?",
            questionMy: "ထက်၏ မူလ variable သီးခြားသုံးခု၏ အမည်များက အဘယ်နည်း။",
            optionsEn: [
              "score1, score2, and score3",
              "scores[0], scores[1], and scores[2]",
              "list1, list2, and list3",
              "total, average, and max",
            ],
            optionsMy: [
              "score1, score2, score3",
              "scores[0], scores[1], scores[2]",
              "list1, list2, list3",
              "total, average, max",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What is scores[0] equal to in scores = [85, 90, 78]?",
            questionMy:
                "scores = [85, 90, 78] တွင် scores[0] သည် မည်သည့်တန်ဖိုးနှင့် ညီသနည်း။",
            optionsEn: ["85", "90", "78", "0"],
            optionsMy: ["85", "90", "78", "0"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why do Python lists start counting positions at 0 instead of 1?",
            questionMy:
                "Python list များသည် position ကို 1 အစား 0 မှ အဘယ့်ကြောင့် စတွက်သနည်း။",
            optionsEn: [
              "Because that is the language's zero-based indexing convention",
              "Because 0 means the list has ended",
              "Because it makes the list run faster",
              "Because 1 is reserved for the list's name",
            ],
            optionsMy: [
              "Language ၏ zero-based indexing convention ဖြစ်သောကြောင့်",
              "0 က list ပြီးဆုံးကြောင်းဆိုလိုသောကြောင့်",
              "List ကို ပိုမြန်စေသောကြောင့်",
              "1 ကို list ၏အမည်အတွက် သီးသန့်ထားသောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Htet's list look like after his teacher added a fourth score of 92?",
            questionMy:
                "ဆရာမက စတုတ္ထ score 92 ထပ်ထည့်ပြီးနောက် ထက်၏ list သည် မည်သို့ဖြစ်သွားသနည်း။",
            optionsEn: [
              "scores = [85, 90, 78, 92]",
              "score4 = [85, 90, 78, 92]",
              "scores = [92]",
              "scores = [85, 90, 78]",
            ],
            optionsMy: [
              "scores = [85, 90, 78, 92]",
              "score4 = [85, 90, 78, 92]",
              "scores = [92]",
              "scores = [85, 90, 78]",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to the passage, what is a list's main advantage over separate variables?",
            questionMy:
                "ဇာတ်လမ်းအရ list ၏ variable သီးခြားများထက် အဓိကအားသာချက်က အဘယ်နည်း။",
            optionsEn: [
              "It can grow to hold as many values as needed, without new variable names",
              "It always runs faster than a variable",
              "It can only ever hold exactly three values",
              "It deletes itself once printed",
            ],
            optionsMy: [
              "Variable အမည်အသစ်မလိုဘဲ လိုအပ်သမျှတန်ဖိုးအထိ ကြီးထွားနိုင်ခြင်း",
              "Variable ထက် အမြဲပိုမြန်ခြင်း",
              "တန်ဖိုးအတိအကျသုံးခုကိုသာ အမြဲထားနိုင်ခြင်း",
              "print လုပ်ပြီးလျှင် self ဖျက်သွားခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-computing-w1-d5",
      dayNumber: 5,
      titleEn: "Week 1 Recap Quiz",
      titleMy: "ပထမပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a list?",
          questionMy: "List ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A single variable that holds many values together",
            "A variable that holds only one value",
            "A type of loop",
            "A type of comment",
          ],
          optionsMy: [
            "တန်ဖိုးများစွာကို အတူတကွထားသော variable တစ်ခု",
            "တန်ဖိုးတစ်ခုသာထားသော variable",
            "Loop အမျိုးအစားတစ်ခု",
            "Comment အမျိုးအစားတစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "How do you write a list of the numbers 1, 2, and 3?",
          questionMy: "1, 2, 3 ဂဏန်းများပါသော list ကို မည်သို့ရေးသနည်း။",
          optionsEn: ["[1, 2, 3]", "(1, 2, 3)", "{1, 2, 3}", "1-2-3"],
          optionsMy: ["[1, 2, 3]", "(1, 2, 3)", "{1, 2, 3}", "1-2-3"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is the index of the first element in a list?",
          questionMy: "List တစ်ခု၏ ပထမ element ၏ index က မည်သို့ဖြစ်သနည်း။",
          optionsEn: ["0", "1", "-1", "It has no index"],
          optionsMy: ["0", "1", "-1", "Index မရှိပါ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is each individual value inside a list called?",
          questionMy: "List အတွင်းရှိ တန်ဖိုးတစ်ခုစီကို ဘာဟုခေါ်သနည်း။",
          optionsEn: ["An element", "A loop", "A comment", "A syntax"],
          optionsMy: ["Element", "Loop", "Comment", "Syntax"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "If scores = [85, 90, 78], what is scores[2]?",
          questionMy:
              "scores = [85, 90, 78] ဖြစ်ပါက scores[2] သည် အဘယ်တန်ဖိုးဖြစ်သနည်း။",
          optionsEn: ["78", "85", "90", "2"],
          optionsMy: ["78", "85", "90", "2"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 2 Computing -- Term 1, Week 2: "Adding, Removing, and
// Updating List Items"
// =====================================================================

const CourseWeekDef _secondary2ComputingWeek2 = CourseWeekDef(
  id: "course-secondary2-computing-w2",
  weekNumber: 2,
  titleEn: "Adding, Removing, and Updating List Items",
  titleMy: "List Item များ ထည့်ခြင်း၊ ဖျက်ခြင်းနှင့် ပြောင်းလဲခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-computing-w2-d1",
      dayNumber: 1,
      titleEn: "Changing a List",
      titleMy: "List တစ်ခုကို ပြောင်းလဲခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which line adds 95 to the end of the list scores?",
          questionMy:
              "scores list ၏ အဆုံးသို့ 95 ကို ထပ်ထည့်မည့်စာကြောင်းက အဘယ်နည်း။",
          optionsEn: [
            "scores.append(95)",
            "scores.add(95)",
            "scores + 95",
            "scores[95]",
          ],
          optionsMy: [
            "scores.append(95)",
            "scores.add(95)",
            "scores + 95",
            "scores[95]",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "If scores = [85, 90, 78], what does scores.remove(90) do?",
          questionMy:
              "scores = [85, 90, 78] ဖြစ်ပါက scores.remove(90) သည် ဘာလုပ်သနည်း။",
          optionsEn: [
            "Removes the value 90 from the list, leaving [85, 78]",
            "Removes the value at index 90",
            "Adds 90 to the list",
            "Deletes the entire list",
          ],
          optionsMy: [
            "List မှ 90 တန်ဖိုးကို ဖျက်ပြီး [85, 78] ကျန်စေသည်",
            "Index 90 ရှိတန်ဖိုးကို ဖျက်သည်",
            "List ထဲသို့ 90 ကို ထည့်သည်",
            "List တစ်ခုလုံးကို ဖျက်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "If scores = [85, 90, 78], what does scores[0] = 100 do?",
          questionMy:
              "scores = [85, 90, 78] ဖြစ်ပါက scores[0] = 100 သည် ဘာလုပ်သနည်း။",
          optionsEn: [
            "Changes the first element to 100, making the list [100, 90, 78]",
            "Adds 100 as a brand-new element",
            "Removes the first element completely",
            "Causes the list to become empty",
          ],
          optionsMy: [
            "ပထမ element ကို 100 သို့ပြောင်းပြီး list ကို [100, 90, 78] ဖြစ်စေသည်",
            "100 ကို element အသစ်အဖြစ် ထည့်သည်",
            "ပထမ element ကို လုံးဝဖျက်သည်",
            "List ကို ဗလာဖြစ်စေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does len(scores) return for scores = [85, 90, 78]?",
          questionMy:
              "scores = [85, 90, 78] အတွက် len(scores) သည် ဘာပြန်ပေးသနည်း။",
          optionsEn: [
            "3, the number of elements in the list",
            "85, the first element",
            "0, because lists have no length",
            "The highest score in the list",
          ],
          optionsMy: [
            "3, list ထဲရှိ element အရေအတွက်",
            "85, ပထမ element",
            "0, list များတွင် အလျားမရှိသောကြောင့်",
            "List ထဲရှိ score အမြင့်ဆုံး",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "How do you write an empty list in real code?",
          questionMy: "Real code တွင် list ဗလာတစ်ခုကို မည်သို့ရေးသနည်း။",
          optionsEn: ["[]", "()", "{}", "null"],
          optionsMy: ["[]", "()", "{}", "null"],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-computing-w2-d2",
      dayNumber: 2,
      titleEn: "List Operations Vocabulary",
      titleMy: "List Operation ဆိုင်ရာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w2-ops-append",
          termEn: "append()",
          termMy: "append()",
          matchEn: "A method that adds a new element to the end of a list",
          matchMy: "List ၏ အဆုံးသို့ element အသစ်ထည့်ပေးသော method တစ်ခု",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w2-ops-remove",
          termEn: "remove()",
          termMy: "remove()",
          matchEn: "A method that deletes a specific value from a list",
          matchMy: "List မှ တန်ဖိုးတစ်ခုအတိအကျကို ဖျက်ပေးသော method တစ်ခု",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w2-ops-updatebyindex",
          termEn: "Update by Index",
          termMy: "Update by Index",
          matchEn:
              "Changing an existing element's value using its position, e.g. scores[0] = 100",
          matchMy:
              "scores[0] = 100 ကဲ့သို့ position သုံး၍ ရှိပြီးသား element ၏ တန်ဖိုးကို ပြောင်းလဲခြင်း",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w2-ops-emptylist",
          termEn: "Empty List",
          termMy: "Empty List",
          matchEn: "A list with no elements yet, written as []",
          matchMy: "[] ဟုရေးသားထားပြီး element တစ်ခုမျှ မရှိသေးသော list",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w2-ops-len",
          termEn: "len()",
          termMy: "len()",
          matchEn:
              "A function that returns how many elements are inside a list",
          matchMy:
              "List အတွင်း element ဘယ်နှခုရှိသည်ကို ပြန်ပေးသော function တစ်ခု",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-computing-w2-d3",
      dayNumber: 3,
      titleEn: "Correct or Incorrect List Syntax?",
      titleMy: "List Syntax မှန်လား မှားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Correct Syntax", "Incorrect Syntax"],
        bucketsMy: ["Correct Syntax (မှန်ကန်)", "Incorrect Syntax (မမှန်ကန်)"],
        items: [
          SortingItem(
            id: "w2-sort-append",
            labelEn: "scores.append(95)",
            labelMy: "scores.append(95)",
            correctBucketEn: "Correct Syntax",
            correctBucketMy: "Correct Syntax (မှန်ကန်)",
          ),
          SortingItem(
            id: "w2-sort-add",
            labelEn: "scores.add(95)",
            labelMy: "scores.add(95)",
            correctBucketEn: "Incorrect Syntax",
            correctBucketMy: "Incorrect Syntax (မမှန်ကန်)",
          ),
          SortingItem(
            id: "w2-sort-remove",
            labelEn: "scores.remove(90)",
            labelMy: "scores.remove(90)",
            correctBucketEn: "Correct Syntax",
            correctBucketMy: "Correct Syntax (မှန်ကန်)",
          ),
          SortingItem(
            id: "w2-sort-updateindex",
            labelEn: "scores[0] = 100",
            labelMy: "scores[0] = 100",
            correctBucketEn: "Correct Syntax",
            correctBucketMy: "Correct Syntax (မှန်ကန်)",
          ),
          SortingItem(
            id: "w2-sort-reversedassign",
            labelEn: "100 = scores[0]",
            labelMy: "100 = scores[0]",
            correctBucketEn: "Incorrect Syntax",
            correctBucketMy: "Incorrect Syntax (မမှန်ကန်)",
          ),
          SortingItem(
            id: "w2-sort-delete",
            labelEn: "scores.delete(90)",
            labelMy: "scores.delete(90)",
            correctBucketEn: "Incorrect Syntax",
            correctBucketMy: "Incorrect Syntax (မမှန်ကန်)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-computing-w2-d4",
      dayNumber: 4,
      titleEn: "Mya's Shopping List",
      titleMy: "မြ၏ ဈေးဝယ်စာရင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Mya's Shopping List",
        titleMy: "မြ၏ ဈေးဝယ်စာရင်း",
        passageEn:
            "Mya started a shopping list with shopping = ['rice', 'eggs']. On her way to the store she remembered she needed milk too, so she wrote shopping.append('milk'), giving her shopping = ['rice', 'eggs', 'milk']. At home she remembered she already had plenty of eggs, so she removed them with shopping.remove('eggs'), leaving shopping = ['rice', 'milk']. At the store she changed her mind about plain milk and wanted oat milk instead, so she updated the second item by its index: shopping[1] = 'oat milk', giving her final list shopping = ['rice', 'oat milk']. Before checking out, she used len(shopping) to confirm she had exactly 2 items, matching what she could see in her basket.",
        passageMy:
            "မြသည် shopping = ['rice', 'eggs'] ဖြင့် ဈေးဝယ်စာရင်းကို စတင်ခဲ့သည်။ ဈေးသို့သွားရင်း နို့လည်း လိုအပ်ကြောင်း သတိရသဖြင့် shopping.append('milk') ဟု ရေးလိုက်ရာ shopping = ['rice', 'eggs', 'milk'] ဖြစ်သွားသည်။ အိမ်တွင် ကြက်ဥလုံလောက်စွာရှိပြီးသားဖြစ်ကြောင်း သတိရသဖြင့် shopping.remove('eggs') ဖြင့် ဖျက်ခဲ့ရာ shopping = ['rice', 'milk'] ကျန်ခဲ့သည်။ ဈေးဆိုင်တွင် နို့ရိုးရိုးအစား oat milk ကို လိုချင်စိတ်ပြောင်းလိုက်ရာ ဒုတိယ item ကို index ဖြင့် ပြောင်းလိုက်သည် - shopping[1] = 'oat milk'၊ နောက်ဆုံး list မှာ shopping = ['rice', 'oat milk'] ဖြစ်သည်။ ငွေရှင်းမီ သူမ၏ ခြင်းတောင်းထဲက items အရေအတွက်နှင့် ကိုက်ညီမကိုက်ညီ သိရန် len(shopping) ကိုသုံး၍ item ၂ခု အတိအကျ ရှိကြောင်း အတည်ပြုခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What method did Mya use to add milk to her list?",
            questionMy:
                "မြသည် သူမ၏ list သို့ milk ထည့်ရန် ဘယ် method သုံးခဲ့သနည်း။",
            optionsEn: ["append()", "remove()", "len()", "print()"],
            optionsMy: ["append()", "remove()", "len()", "print()"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What method did Mya use to remove eggs from her list?",
            questionMy:
                "မြသည် သူမ၏ list မှ eggs ကို ဖျက်ရန် ဘယ် method သုံးခဲ့သနည်း။",
            optionsEn: ["remove()", "append()", "len()", "delete()"],
            optionsMy: ["remove()", "append()", "len()", "delete()"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How did Mya change milk into oat milk?",
            questionMy:
                "မြသည် milk ကို oat milk အဖြစ် မည်သို့ပြောင်းလဲခဲ့သနည်း။",
            optionsEn: [
              "She updated it by index: shopping[1] = 'oat milk'",
              "She used append() to add a second milk",
              "She deleted the whole list and started over",
              "She used len() to change it",
            ],
            optionsMy: [
              "Index ဖြင့် ပြောင်းလဲခဲ့သည်: shopping[1] = 'oat milk'",
              "Append() သုံး၍ milk ဒုတိယခု ထပ်ထည့်ခဲ့သည်",
              "List တစ်ခုလုံးကို ဖျက်ပြီး အသစ်ပြန်စခဲ့သည်",
              "Len() သုံး၍ ပြောင်းလဲခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Mya's final list look like?",
            questionMy: "မြ၏ နောက်ဆုံး list သည် မည်သို့ဖြစ်ခဲ့သနည်း။",
            optionsEn: [
              "shopping = ['rice', 'oat milk']",
              "shopping = ['rice', 'eggs', 'milk']",
              "shopping = ['rice', 'eggs']",
              "shopping = []",
            ],
            optionsMy: [
              "shopping = ['rice', 'oat milk']",
              "shopping = ['rice', 'eggs', 'milk']",
              "shopping = ['rice', 'eggs']",
              "shopping = []",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Mya use len(shopping) for before checking out?",
            questionMy:
                "ငွေမရှင်းမီ မြသည် len(shopping) ကို ဘာအတွက်သုံးခဲ့သနည်း။",
            optionsEn: [
              "To confirm her list had exactly 2 items",
              "To add a new item",
              "To delete her whole list",
              "To change milk into oat milk",
            ],
            optionsMy: [
              "သူမ list တွင် item ၂ခု အတိအကျရှိကြောင်း အတည်ပြုရန်",
              "Item အသစ်ထည့်ရန်",
              "List တစ်ခုလုံးကို ဖျက်ရန်",
              "Milk ကို oat milk အဖြစ်ပြောင်းရန်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-computing-w2-d5",
      dayNumber: 5,
      titleEn: "Week 2 Recap Quiz",
      titleMy: "ဒုတိယပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which method adds a new item to the end of a list?",
          questionMy: "List ၏ အဆုံးသို့ item အသစ်ထည့်ပေးသော method က အဘယ်နည်း။",
          optionsEn: ["append()", "remove()", "len()", "input()"],
          optionsMy: ["append()", "remove()", "len()", "input()"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which method removes a specific value from a list?",
          questionMy:
              "List မှ တန်ဖိုးတစ်ခုအတိအကျကို ဖျက်ပေးသော method က အဘယ်နည်း။",
          optionsEn: ["remove()", "append()", "print()", "len()"],
          optionsMy: ["remove()", "append()", "print()", "len()"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "How do you update the first item in a list to 100?",
          questionMy: "List ၏ ပထမ item ကို 100 သို့ မည်သို့ update လုပ်သနည်း။",
          optionsEn: [
            "scores[0] = 100",
            "100 = scores[0]",
            "scores.append(100)",
            "scores.remove(100)",
          ],
          optionsMy: [
            "scores[0] = 100",
            "100 = scores[0]",
            "scores.append(100)",
            "scores.remove(100)",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does len() tell you about a list?",
          questionMy: "len() က list တစ်ခုအကြောင်း ဘာကို ပြောပြသနည်း။",
          optionsEn: [
            "How many elements it contains",
            "The list's first element only",
            "Whether the list is a string",
            "The list's highest value",
          ],
          optionsMy: [
            "Element ဘယ်နှခု ပါဝင်သည်ကို",
            "List ၏ ပထမ element ကိုသာ",
            "List သည် string ဟုတ်မဟုတ်ကို",
            "List ၏ အမြင့်ဆုံးတန်ဖိုးကို",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "How do you write an empty list?",
          questionMy: "List ဗလာတစ်ခုကို မည်သို့ရေးသနည်း။",
          optionsEn: ["[]", "{}", "()", "empty"],
          optionsMy: ["[]", "{}", "()", "empty"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 2 Computing -- Term 1, Week 3: "Looping Through a List"
// =====================================================================

const CourseWeekDef _secondary2ComputingWeek3 = CourseWeekDef(
  id: "course-secondary2-computing-w3",
  weekNumber: 3,
  titleEn: "Looping Through a List",
  titleMy: "List တစ်ခုလုံးကို Loop ဖြင့် လှည့်ပတ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-computing-w3-d1",
      dayNumber: 1,
      titleEn: "for Loops and Lists",
      titleMy: "for Loop နှင့် List",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which line prints every score in scores, one at a time?",
          questionMy:
              "scores ထဲရှိ score တိုင်းကို တစ်ခုချင်း print ထုတ်မည့်စာကြောင်းက အဘယ်နည်း။",
          optionsEn: [
            "for score in scores: print(score)",
            "print(scores) once only",
            "for score = scores: print",
            "while scores: print(score)",
          ],
          optionsMy: [
            "for score in scores: print(score)",
            "print(scores) တစ်ကြိမ်သာ",
            "for score = scores: print",
            "while scores: print(score)",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is an accumulator variable (e.g. total = 0 before a loop) used for?",
          questionMy:
              "Loop မတိုင်မီ total = 0 ကဲ့သို့ accumulator variable ကို ဘာအတွက်သုံးသနည်း။",
          optionsEn: [
            "To keep a running total that updates on every pass through the loop",
            "To store only the list's first element",
            "To stop the loop immediately",
            "To delete the list once the loop finishes",
          ],
          optionsMy: [
            "Loop ၏ လှည့်ပတ်တိုင်းတွင် update ဖြစ်နေသော စုစုပေါင်းတန်ဖိုးကို ထိန်းထားရန်",
            "List ၏ ပထမ element ကိုသာ သိမ်းရန်",
            "Loop ကို ချက်ချင်းရပ်ရန်",
            "Loop ပြီးဆုံးလျှင် list ကို ဖျက်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "For scores = [85, 90, 78], what does total hold after total = 0 then for score in scores: total = total + score finishes?",
          questionMy:
              "scores = [85, 90, 78] အတွက် total = 0 ပြီးနောက် for score in scores: total = total + score ပြီးဆုံးလျှင် total သည် မည်သည့်တန်ဖိုးဖြစ်နေသနည်း။",
          optionsEn: [
            "253, the sum of all three scores",
            "85, only the first score",
            "3, the number of scores",
            "0, because total resets every loop",
          ],
          optionsMy: [
            "253, score သုံးခု၏ ပေါင်းလဒ်",
            "85, ပထမ score သာ",
            "3, score အရေအတွက်",
            "0, total သည် loop တိုင်းတွင် reset ဖြစ်နေသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What does the built-in function max(scores) return for scores = [85, 90, 78]?",
          questionMy:
              "scores = [85, 90, 78] အတွက် built-in function max(scores) သည် ဘာပြန်ပေးသနည်း။",
          optionsEn: [
            "90, the highest value in the list",
            "78, the lowest value",
            "3, the length of the list",
            "85, only the first element",
          ],
          optionsMy: [
            "90, list ထဲရှိ အမြင့်ဆုံးတန်ဖိုး",
            "78, အနိမ့်ဆုံးတန်ဖိုး",
            "3, list ၏ အလျား",
            "85, ပထမ element သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is a for loop useful for processing a list, instead of writing scores[0], scores[1], scores[2] separately?",
          questionMy:
              "scores[0], scores[1], scores[2] ဟု သီးခြားရေးမည့်အစား list ကို process လုပ်ရန် for loop အဘယ့်ကြောင့် အသုံးဝင်သနည်း။",
          optionsEn: [
            "It automatically visits every element, even if the list's length changes later",
            "It only ever works on lists with exactly 3 elements",
            "It deletes the list immediately after running",
            "It only prints the very last element",
          ],
          optionsMy: [
            "List ၏ အလျားနောင်တွင် ပြောင်းလဲသွားလျှင်ပင် element တိုင်းသို့ အလိုအလျောက် ရောက်ရှိသည်",
            "Element ၃ခုအတိအကျရှိသော list တွင်သာ အလုပ်လုပ်သည်",
            "Run ပြီးလျှင် list ကို ချက်ချင်းဖျက်သည်",
            "နောက်ဆုံး element ကိုသာ print ထုတ်သည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-computing-w3-d2",
      dayNumber: 2,
      titleEn: "Looping Vocabulary",
      titleMy: "Loop ဆိုင်ရာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w3-loop-foritem",
          termEn: "for item in list:",
          termMy: "for item in list:",
          matchEn:
              "A loop that runs once for every element in a list, in order",
          matchMy:
              "List ထဲရှိ element တိုင်းအတွက် အစဉ်လိုက် တစ်ကြိမ်စီ run သော loop",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w3-loop-accumulator",
          termEn: "Accumulator Variable",
          termMy: "Accumulator Variable",
          matchEn:
              "A variable (e.g. total = 0) that collects a running result across every pass of a loop",
          matchMy:
              "Loop ၏ လှည့်ပတ်တိုင်းအတွက် ရလဒ်ကို စုဆောင်းသိမ်းဆည်းသော variable (ဥပမာ total = 0)",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w3-loop-sum",
          termEn: "Sum",
          termMy: "Sum",
          matchEn:
              "The total you get by adding every element in a list together",
          matchMy: "List ထဲရှိ element အားလုံးကို ပေါင်းလိုက်၍ ရသောစုစုပေါင်း",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w3-loop-max",
          termEn: "max()",
          termMy: "max()",
          matchEn:
              "A built-in function that returns the largest value in a list",
          matchMy:
              "List ထဲရှိ အကြီးဆုံးတန်ဖိုးကို ပြန်ပေးသော built-in function",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w3-loop-min",
          termEn: "min()",
          termMy: "min()",
          matchEn:
              "A built-in function that returns the smallest value in a list",
          matchMy: "List ထဲရှိ အသေးဆုံးတန်ဖိုးကို ပြန်ပေးသော built-in function",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-computing-w3-d3",
      dayNumber: 3,
      titleEn: "Processes the Whole List or Just One Value?",
      titleMy: "List တစ်ခုလုံးကို Process လုပ်သလား၊ တန်ဖိုးတစ်ခုတည်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Processes the Whole List", "Just One Value"],
        bucketsMy: ["List တစ်ခုလုံးကို Process လုပ်သည်", "တန်ဖိုးတစ်ခုတည်း"],
        items: [
          SortingItem(
            id: "w3-sort-forprint",
            labelEn: "for score in scores: print(score)",
            labelMy: "for score in scores: print(score)",
            correctBucketEn: "Processes the Whole List",
            correctBucketMy: "List တစ်ခုလုံးကို Process လုပ်သည်",
          ),
          SortingItem(
            id: "w3-sort-printfirst",
            labelEn: "print(scores[0])",
            labelMy: "print(scores[0])",
            correctBucketEn: "Just One Value",
            correctBucketMy: "တန်ဖိုးတစ်ခုတည်း",
          ),
          SortingItem(
            id: "w3-sort-fortotal",
            labelEn: "for score in scores: total = total + score",
            labelMy: "for score in scores: total = total + score",
            correctBucketEn: "Processes the Whole List",
            correctBucketMy: "List တစ်ခုလုံးကို Process လုပ်သည်",
          ),
          SortingItem(
            id: "w3-sort-updateindex1",
            labelEn: "scores[1] = 100",
            labelMy: "scores[1] = 100",
            correctBucketEn: "Just One Value",
            correctBucketMy: "တန်ဖိုးတစ်ခုတည်း",
          ),
          SortingItem(
            id: "w3-sort-maxscores",
            labelEn: "max(scores)",
            labelMy: "max(scores)",
            correctBucketEn: "Processes the Whole List",
            correctBucketMy: "List တစ်ခုလုံးကို Process လုပ်သည်",
          ),
          SortingItem(
            id: "w3-sort-removeitem",
            labelEn: "scores.remove(90)",
            labelMy: "scores.remove(90)",
            correctBucketEn: "Just One Value",
            correctBucketMy: "တန်ဖိုးတစ်ခုတည်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-computing-w3-d4",
      dayNumber: 4,
      titleEn: "Kyaw's Class Average",
      titleMy: "ကျော်၏ အတန်း Average",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Kyaw's Class Average",
        titleMy: "ကျော်၏ အတန်း Average",
        passageEn:
            "Kyaw had scores = [85, 90, 78, 92, 66] for his class's latest quiz and wanted to find the average. He started with total = 0, then wrote a for loop: for score in scores: total = total + score. After the loop finished, total held the sum of all five scores, 411. He then divided by how many scores there were: average = total / len(scores), getting 82.2. Curious about the extremes, he also checked the highest score with max(scores), which gave 92, and the lowest with min(scores), which gave 66. Kyaw realized that looping through the list let him process every single score without writing five separate lines of code by hand.",
        passageMy:
            "ကျော်တွင် သူ၏အတန်းရဲ့ နောက်ဆုံး quiz အတွက် scores = [85, 90, 78, 92, 66] ရှိပြီး average ကို ရှာလိုသည်။ total = 0 ဖြင့် စတင်ပြီး for loop တစ်ခုရေးခဲ့သည်: for score in scores: total = total + score။ Loop ပြီးဆုံးသောအခါ total သည် score ငါးခု၏ ပေါင်းလဒ်ဖြစ်သော 411 ကို ကိုင်ဆောင်ထားသည်။ ထို့နောက် score အရေအတွက်ဖြင့် စားခဲ့သည် - average = total / len(scores)၊ 82.2 ရရှိသည်။ အစွန်းအဖျားများကို စိတ်ဝင်စားသဖြင့် max(scores) ဖြင့် အမြင့်ဆုံးကို စစ်ကြည့်ရာ 92 ရရှိပြီး၊ min(scores) ဖြင့် အနိမ့်ဆုံးကို စစ်ကြည့်ရာ 66 ရရှိသည်။ List ကို loop ဖြင့် လှည့်ပတ်ခြင်းက score ငါးခုစလုံးကို လက်နှင့်စာကြောင်းငါးကြောင်းသီးခြားမရေးဘဲ process လုပ်နိုင်ကြောင်း ကျော် သဘောပေါက်လိုက်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did total equal after the loop finished?",
            questionMy:
                "Loop ပြီးဆုံးပြီးနောက် total သည် မည်သည့်တန်ဖိုးနှင့် ညီသနည်း။",
            optionsEn: [
              "411, the sum of all five scores",
              "5, the number of scores",
              "85, the first score",
              "82.2, the average",
            ],
            optionsMy: [
              "411, score ငါးခု၏ ပေါင်းလဒ်",
              "5, score အရေအတွက်",
              "85, ပထမ score",
              "82.2, average",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How did Kyaw calculate the average?",
            questionMy: "ကျော်သည် average ကို မည်သို့ တွက်ချက်ခဲ့သနည်း။",
            optionsEn: [
              "He divided total by len(scores)",
              "He multiplied total by len(scores)",
              "He used max(scores) directly",
              "He guessed it",
            ],
            optionsMy: [
              "Total ကို len(scores) ဖြင့် စားခဲ့သည်",
              "Total ကို len(scores) ဖြင့် မြှောက်ခဲ့သည်",
              "Max(scores) ကို တိုက်ရိုက်သုံးခဲ့သည်",
              "ခန့်မှန်းခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did max(scores) return?",
            questionMy: "max(scores) သည် ဘာပြန်ပေးခဲ့သနည်း။",
            optionsEn: [
              "92, the highest score",
              "66, the lowest score",
              "411, the sum",
              "5, the count",
            ],
            optionsMy: [
              "92, အမြင့်ဆုံး score",
              "66, အနိမ့်ဆုံး score",
              "411, ပေါင်းလဒ်",
              "5, count",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did min(scores) return?",
            questionMy: "min(scores) သည် ဘာပြန်ပေးခဲ့သနည်း။",
            optionsEn: [
              "66, the lowest score",
              "92, the highest score",
              "411, the sum",
              "82.2, the average",
            ],
            optionsMy: [
              "66, အနိမ့်ဆုံး score",
              "92, အမြင့်ဆုံး score",
              "411, ပေါင်းလဒ်",
              "82.2, average",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to the passage, what was the main benefit of looping through the list?",
            questionMy:
                "ဇာတ်လမ်းအရ list ကို loop ဖြင့် လှည့်ပတ်ခြင်း၏ အဓိကအကျိုးကျေးဇူးက အဘယ်နည်း။",
            optionsEn: [
              "It processed every score without writing five separate lines by hand",
              "It deleted scores automatically",
              "It only worked for exactly 3 scores",
              "It replaced the need for a list entirely",
            ],
            optionsMy: [
              "Score ငါးခုစလုံးကို လက်နှင့် စာကြောင်းငါးကြောင်းမရေးဘဲ process လုပ်နိုင်ခဲ့ခြင်း",
              "Score များကို အလိုအလျောက် ဖျက်ခဲ့ခြင်း",
              "Score ၃ခုအတိအကျအတွက်သာ အလုပ်လုပ်ခဲ့ခြင်း",
              "List လိုအပ်ချက်ကို လုံးဝ ပယ်ဖျက်ပေးခဲ့ခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-computing-w3-d5",
      dayNumber: 5,
      titleEn: "Week 3 Recap Quiz",
      titleMy: "တတိယပတ် ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does for score in scores: do?",
          questionMy: "for score in scores: သည် ဘာလုပ်သနည်း။",
          optionsEn: [
            "Runs a block of code once for every element in scores",
            "Runs a block of code exactly once",
            "Deletes every element in scores",
            "Only runs if scores is empty",
          ],
          optionsMy: [
            "scores ထဲရှိ element တိုင်းအတွက် code block ကို တစ်ကြိမ်စီ run သည်",
            "Code block ကို အတိအကျတစ်ကြိမ်သာ run သည်",
            "scores ထဲရှိ element တိုင်းကို ဖျက်သည်",
            "scores ဗလာဖြစ်မှသာ run သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is an accumulator variable used for?",
          questionMy: "Accumulator variable ကို ဘာအတွက်သုံးသနည်း။",
          optionsEn: [
            "Keeping a running total across a loop",
            "Storing only the last element",
            "Stopping a loop",
            "Deleting a list",
          ],
          optionsMy: [
            "Loop တစ်လျှောက် စုစုပေါင်းတန်ဖိုးကို ထိန်းထားရန်",
            "နောက်ဆုံး element ကိုသာ သိမ်းရန်",
            "Loop ကို ရပ်ရန်",
            "List ကို ဖျက်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does max() return?",
          questionMy: "max() က ဘာပြန်ပေးသနည်း။",
          optionsEn: [
            "The largest value in a list",
            "The smallest value in a list",
            "The number of elements",
            "The first element only",
          ],
          optionsMy: [
            "List ထဲရှိ အကြီးဆုံးတန်ဖိုး",
            "List ထဲရှိ အသေးဆုံးတန်ဖိုး",
            "Element အရေအတွက်",
            "ပထမ element သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does min() return?",
          questionMy: "min() က ဘာပြန်ပေးသနည်း။",
          optionsEn: [
            "The smallest value in a list",
            "The largest value in a list",
            "The sum of all values",
            "The last element only",
          ],
          optionsMy: [
            "List ထဲရှိ အသေးဆုံးတန်ဖိုး",
            "List ထဲရှိ အကြီးဆုံးတန်ဖိုး",
            "တန်ဖိုးအားလုံး၏ ပေါင်းလဒ်",
            "နောက်ဆုံး element သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why use a for loop instead of writing scores[0], scores[1], scores[2] separately?",
          questionMy:
              "scores[0], scores[1], scores[2] ကို သီးခြားမရေးဘဲ for loop သုံးရသည်မှာ အဘယ့်ကြောင့်နည်း။",
          optionsEn: [
            "It automatically works no matter how long the list is",
            "It only works for lists with 3 items",
            "It is required by Python for all code",
            "It deletes the list afterward",
          ],
          optionsMy: [
            "List မည်မျှရှည်စေကာမူ အလိုအလျောက် အလုပ်လုပ်သောကြောင့်",
            "Item ၃ခုပါသော list အတွက်သာ အလုပ်လုပ်သောကြောင့်",
            "Code အားလုံးအတွက် Python က လိုအပ်သောကြောင့်",
            "ပြီးလျှင် list ကို ဖျက်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Secondary 2 Computing -- Term 1, Week 4: "Using a List in a Real
// Program" (capstone)
// =====================================================================

const CourseWeekDef _secondary2ComputingWeek4 = CourseWeekDef(
  id: "course-secondary2-computing-w4",
  weekNumber: 4,
  titleEn: "Using a List in a Real Program",
  titleMy: "Real ပရိုဂရမ်တွင် List အသုံးပြုခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-computing-w4-d1",
      dayNumber: 1,
      titleEn: "Planning a List-Based Program",
      titleMy: "List အခြေခံပရိုဂရမ်ကို စီစဉ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which building block would you use to store 5 quiz scores in one program?",
          questionMy:
              "ပရိုဂရမ်တစ်ခုတွင် quiz score ၅ခုကို သိမ်းဆည်းရန် ဘယ် building block သုံးမည်နည်း။",
          optionsEn: [
            "A list",
            "Five separate if statements",
            "A single comment",
            "A print() statement only",
          ],
          optionsMy: [
            "List",
            "if statement ငါးခု သီးခြား",
            "Comment တစ်ခုတည်း",
            "print() statement တစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which building block would you use to process every score in that list?",
          questionMy:
              "List ထဲရှိ score တိုင်းကို process လုပ်ရန် ဘယ် building block သုံးမည်နည်း။",
          optionsEn: [
            "A for loop",
            "A single print() with no loop",
            "Deleting the list",
            "An empty list",
          ],
          optionsMy: [
            "for loop",
            "loop မပါဘဲ print() တစ်ခုတည်း",
            "list ကို ဖျက်ခြင်း",
            "list ဗလာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which line correctly creates an empty list ready to collect scores one at a time?",
          questionMy:
              "score များကို တစ်ခုချင်းစုဆောင်းရန် အသင့်ဖြစ်သော list ဗလာကို မှန်ကန်စွာဖန်တီးမည့်စာကြောင်းက အဘယ်နည်း။",
          optionsEn: [
            "scores = []",
            "scores = 0",
            "scores = 'empty'",
            "scores == []",
          ],
          optionsMy: [
            "scores = []",
            "scores = 0",
            "scores = 'empty'",
            "scores == []",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "If you also want to check whether the average score is a pass (>= 50), what extra building block do you need?",
          questionMy:
              "Average score သည် pass (>= 50) ဟုတ်မဟုတ် ထပ်စစ်ဆေးလိုပါက ဘယ် building block ထပ်လိုအပ်မည်နည်း။",
          optionsEn: [
            "An if / else selection",
            "Another list",
            "A new print() function",
            "Deleting the loop",
          ],
          optionsMy: [
            "if / else selection",
            "list နောက်ထပ်တစ်ခု",
            "print() function အသစ်",
            "loop ကို ဖျက်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is testing your list-based program with more than one set of scores important?",
          questionMy:
              "List အခြေခံပရိုဂရမ်ကို score set တစ်ခုထက်ပိုပြီး test လုပ်သင့်သည်မှာ အဘယ့်ကြောင့်နည်း။",
          optionsEn: [
            "To make sure it works correctly across different cases, not just one lucky example",
            "To make the program run slower on purpose",
            "To delete all the variables afterward",
            "Because Python requires exactly one test only",
          ],
          optionsMy: [
            "ကံကောင်းမှုတစ်ခုတည်းသာမက အခြေအနေအမျိုးမျိုးတွင် မှန်ကန်စွာအလုပ်လုပ်ကြောင်း သေချာစေရန်",
            "ရည်ရွယ်ချက်ရှိရှိ ပရိုဂရမ်ကို ပိုနှေးအောင်လုပ်ရန်",
            "နောက်ပိုင်းတွင် variable အားလုံးကို ဖျက်ရန်",
            "Python က test တစ်ကြိမ်တိတိသာ လိုအပ်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-computing-w4-d2",
      dayNumber: 2,
      titleEn: "Term Vocabulary Recap",
      titleMy: "Term ဝေါဟာရ ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "w4-recap-list",
          termEn: "List",
          termMy: "List",
          matchEn:
              "A single variable that can hold many values together, written inside square brackets [ ]",
          matchMy:
              "Square bracket [ ] အတွင်းရေးထားပြီး တန်ဖိုးများစွာကို အတူတကွထားနိုင်သော variable တစ်ခု",
          colorValue: 0xFF56CCF2,
        ),
        DragMatchPair(
          id: "w4-recap-append",
          termEn: "append()",
          termMy: "append()",
          matchEn: "A method that adds a new element to the end of a list",
          matchMy: "List ၏ အဆုံးသို့ element အသစ်ထည့်ပေးသော method တစ်ခု",
          colorValue: 0xFFFF6F61,
        ),
        DragMatchPair(
          id: "w4-recap-foritem",
          termEn: "for item in list:",
          termMy: "for item in list:",
          matchEn:
              "A loop that runs once for every element in a list, in order",
          matchMy:
              "List ထဲရှိ element တိုင်းအတွက် အစဉ်လိုက် တစ်ကြိမ်စီ run သော loop",
          colorValue: 0xFF6FCF97,
        ),
        DragMatchPair(
          id: "w4-recap-accumulator",
          termEn: "Accumulator Variable",
          termMy: "Accumulator Variable",
          matchEn:
              "A variable (e.g. total = 0) that collects a running result across every pass of a loop",
          matchMy:
              "Loop ၏ လှည့်ပတ်တိုင်းအတွက် ရလဒ်ကို စုဆောင်းသိမ်းဆည်းသော variable (ဥပမာ total = 0)",
          colorValue: 0xFFF2994A,
        ),
        DragMatchPair(
          id: "w4-recap-average",
          termEn: "Average",
          termMy: "Average",
          matchEn:
              "The sum of a list's values divided by how many values there are",
          matchMy:
              "List ၏ တန်ဖိုးများ၏ ပေါင်းလဒ်ကို တန်ဖိုးအရေအတွက်ဖြင့် စားလိုက်သောရလဒ်",
          colorValue: 0xFFBB6BD9,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-computing-w4-d3",
      dayNumber: 3,
      titleEn: "Which Building Block?",
      titleMy: "ဘယ် Building Block လဲ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["List", "Loop", "Variable", "Selection"],
        bucketsMy: ["List", "Loop", "Variable", "Selection"],
        items: [
          SortingItem(
            id: "w4-sort-scoreslist",
            labelEn: "scores = [85, 90, 78]",
            labelMy: "scores = [85, 90, 78]",
            correctBucketEn: "List",
            correctBucketMy: "List",
          ),
          SortingItem(
            id: "w4-sort-fortotal",
            labelEn: "for score in scores: total = total + score",
            labelMy: "for score in scores: total = total + score",
            correctBucketEn: "Loop",
            correctBucketMy: "Loop",
          ),
          SortingItem(
            id: "w4-sort-namevar",
            labelEn: "name = 'Phyo'",
            labelMy: "name = 'Phyo'",
            correctBucketEn: "Variable",
            correctBucketMy: "Variable",
          ),
          SortingItem(
            id: "w4-sort-ifaverage",
            labelEn: "if average >= 50:",
            labelMy: "if average >= 50:",
            correctBucketEn: "Selection",
            correctBucketMy: "Selection",
          ),
          SortingItem(
            id: "w4-sort-append95",
            labelEn: "scores.append(95)",
            labelMy: "scores.append(95)",
            correctBucketEn: "List",
            correctBucketMy: "List",
          ),
          SortingItem(
            id: "w4-sort-whiletotal",
            labelEn: "while total < 100:",
            labelMy: "while total < 100:",
            correctBucketEn: "Loop",
            correctBucketMy: "Loop",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-computing-w4-d4",
      dayNumber: 4,
      titleEn: "Phyo's Average Calculator",
      titleMy: "ဖြိုး၏ Average Calculator",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Phyo's Average Calculator",
        titleMy: "ဖြိုး၏ Average Calculator",
        passageEn:
            "Phyo planned her program on paper before writing any code. It needed a list to store scores, a loop to add them all up, a variable for the running total, and an if/else to say whether the average was a pass or not. She wrote scores = [85, 90, 78, 92, 66], then total = 0, then for score in scores: total = total + score, then average = total / len(scores). Finally she wrote if average >= 50: print('Pass') else: print('Needs improvement'). Running it, average came out to 82.2, so the program printed Pass. She tested it again with scores = [30, 40, 20] to check the other case, and this time it correctly printed Needs improvement. While testing, she noticed she had forgotten the colon after her if line the first time, causing a syntax error; after adding it back in, the program ran correctly. Phyo realized her whole programming toolkit -- variables, selection, loops, and now lists -- had finally come together in one working program.",
        passageMy:
            "ဖြိုးသည် code မရေးမီ သူမ၏ ပရိုဂရမ်ကို စက္ကူပေါ်တွင် စီစဉ်ခဲ့သည်။ Score များကို သိမ်းဆည်းရန် list တစ်ခု၊ ၎င်းတို့ကို ပေါင်းရန် loop တစ်ခု၊ စုစုပေါင်းအတွက် variable တစ်ခုနှင့် average pass ဖြစ်မဖြစ် ပြောပြရန် if/else တစ်ခု လိုအပ်ခဲ့သည်။ scores = [85, 90, 78, 92, 66] ဟု ရေးပြီး၊ total = 0၊ ထို့နောက် for score in scores: total = total + score၊ ထို့နောက် average = total / len(scores) ဟု ရေးခဲ့သည်။ နောက်ဆုံးတွင် if average >= 50: print('Pass') else: print('Needs improvement') ဟု ရေးခဲ့သည်။ Run လိုက်ရာ average သည် 82.2 ဖြစ်လာသဖြင့် ပရိုဂရမ်က Pass ဟု print ထုတ်ခဲ့သည်။ အခြားအခြေအနေကို စစ်ဆေးရန် scores = [30, 40, 20] ဖြင့် ထပ်စမ်းသပ်ရာ ဤအကြိမ်တွင် Needs improvement ဟု မှန်ကန်စွာ print ထုတ်ခဲ့သည်။ Test လုပ်နေစဉ် ပထမအကြိမ် if စာကြောင်းနောက်ရှိ colon ကို မေ့ကျန်ခဲ့ရာ syntax error ဖြစ်ခဲ့ကြောင်း သတိပြုမိသည်။ ပြန်ထည့်ပြီးနောက် ပရိုဂရမ်သည် မှန်ကန်စွာ run သွားသည်။ Variable၊ selection၊ loop နှင့် ယခု list -- သူမ၏ programming toolkit တစ်ခုလုံးသည် ပရိုဂရမ်တစ်ခုတည်းတွင် နောက်ဆုံး ပေါင်းစပ်ရောက်ရှိလာကြောင်း ဖြိုး သဘောပေါက်လိုက်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did Phyo's list of scores look like?",
            questionMy: "ဖြိုး၏ score list သည် မည်သို့ဖြစ်ခဲ့သနည်း။",
            optionsEn: [
              "scores = [85, 90, 78, 92, 66]",
              "scores = [30, 40, 20]",
              "scores = []",
              "scores = [82.2]",
            ],
            optionsMy: [
              "scores = [85, 90, 78, 92, 66]",
              "scores = [30, 40, 20]",
              "scores = []",
              "scores = [82.2]",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did the program print for the first set of scores?",
            questionMy:
                "ပထမ score set အတွက် ပရိုဂရမ်သည် ဘာ print ထုတ်ခဲ့သနည်း။",
            optionsEn: [
              "Pass",
              "Needs improvement",
              "An error",
              "Nothing at all",
            ],
            optionsMy: ["Pass", "Needs improvement", "Error", "ဘာမှမပြသ"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What mistake caused Phyo's first attempt to fail?",
            questionMy: "ဖြိုး၏ ပထမကြိုးစားမှု မအောင်မြင်ရသည့်အမှားက အဘယ်နည်း။",
            optionsEn: [
              "She forgot the colon after her if line",
              "She forgot to create the list",
              "She used append() instead of a loop",
              "She deleted the average variable",
            ],
            optionsMy: [
              "If စာကြောင်းနောက်ရှိ colon ကို မေ့ကျန်ခဲ့သည်",
              "List ဖန်တီးရန် မေ့ကျန်ခဲ့သည်",
              "Loop အစား append() သုံးမိခဲ့သည်",
              "Average variable ကို ဖျက်မိခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did the program print when Phyo tested it with scores = [30, 40, 20]?",
            questionMy:
                "scores = [30, 40, 20] ဖြင့် ဖြိုး test လုပ်ခဲ့သောအခါ ပရိုဂရမ်သည် ဘာ print ထုတ်ခဲ့သနည်း။",
            optionsEn: ["Needs improvement", "Pass", "An error", "82.2"],
            optionsMy: ["Needs improvement", "Pass", "Error", "82.2"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to the passage, which building blocks came together in Phyo's finished program?",
            questionMy:
                "ဇာတ်လမ်းအရ ဖြိုး၏ ပြီးစီးသောပရိုဂရမ်တွင် ဘယ် building block များ ပေါင်းစပ်ပါဝင်ခဲ့သနည်း။",
            optionsEn: [
              "Variables, selection, loops, and lists",
              "Only a list, nothing else",
              "Only comments and print()",
              "Only a while loop",
            ],
            optionsMy: [
              "Variable, selection, loop နှင့် list",
              "List တစ်ခုတည်း",
              "Comment နှင့် print() တစ်ခုတည်း",
              "while loop တစ်ခုတည်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-computing-w4-d5",
      dayNumber: 5,
      titleEn: "Term 1 Recap Quiz",
      titleMy: "Term 1 ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What building block stores many related values together?",
          questionMy:
              "ဆက်စပ်တန်ဖိုးများစွာကို အတူတကွသိမ်းဆည်းသော building block က အဘယ်နည်း။",
          optionsEn: [
            "A list",
            "A single variable",
            "A comment",
            "A print() statement",
          ],
          optionsMy: [
            "List",
            "Variable တစ်ခုတည်း",
            "Comment",
            "print() statement",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What building block runs a block of code once for every element in a list?",
          questionMy:
              "List ထဲရှိ element တိုင်းအတွက် code block ကို တစ်ကြိမ်စီ run ပေးသော building block က အဘယ်နည်း။",
          optionsEn: [
            "A for loop",
            "An if statement",
            "A comment",
            "A single variable",
          ],
          optionsMy: [
            "for loop",
            "if statement",
            "Comment",
            "Variable တစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What method adds a new item to the end of a list?",
          questionMy: "List ၏ အဆုံးသို့ item အသစ်ထည့်ပေးသော method က အဘယ်နည်း။",
          optionsEn: ["append()", "remove()", "len()", "print()"],
          optionsMy: ["append()", "remove()", "len()", "print()"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is average = total / len(scores) calculating?",
          questionMy:
              "average = total / len(scores) သည် ဘာကို တွက်ချက်နေသနည်း။",
          optionsEn: [
            "The average of all the scores in the list",
            "The number of scores only",
            "The highest score only",
            "Whether the list is empty",
          ],
          optionsMy: [
            "List ထဲရှိ score အားလုံး၏ ပျမ်းမျှတန်ဖိုး",
            "Score အရေအတွက်ကိုသာ",
            "အမြင့်ဆုံး score ကိုသာ",
            "List ဗလာဟုတ်မဟုတ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is testing a program with more than one input important?",
          questionMy:
              "ပရိုဂရမ်ကို input တစ်ခုထက်ပိုပြီး test လုပ်သင့်သည်မှာ အဘယ့်ကြောင့်နည်း။",
          optionsEn: [
            "To make sure it works correctly in every case it should handle",
            "To make the program slower on purpose",
            "Because Python requires it",
            "To delete the list afterward",
          ],
          optionsMy: [
            "ကိုင်တွယ်သင့်သော အခြေအနေတိုင်းတွင် မှန်ကန်စွာအလုပ်လုပ်ကြောင်း သေချာစေရန်",
            "ရည်ရွယ်ချက်ရှိရှိ ပရိုဂရမ်ကို ပိုနှေးအောင်လုပ်ရန်",
            "Python က လိုအပ်သောကြောင့်",
            "List ကို နောက်ပိုင်းတွင် ဖျက်ရန်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary2ComputingTerm1 = CourseTermDef(
  id: "course-secondary2-computing-t1",
  termNumber: 1,
  titleEn: "Lists and Arrays",
  titleMy: "List နှင့် Array",
  certificateTitleEn: "Lists and Arrays",
  certificateTitleMy: "List နှင့် Array",
  weeks: [
    _secondary2ComputingWeek1,
    _secondary2ComputingWeek2,
    _secondary2ComputingWeek3,
    _secondary2ComputingWeek4,
  ], // Term 1 complete (Weeks 1-4) -- first term of the new Secondary 2 pathway
);

/// Secondary 2 Computing's pathway (Grade [Grade.secondary2]) -- the "Year
/// 2" continuation flagged in [secondary1ComputingPathway]'s own doc
/// comment, authored as its own independent [CoursePathwayDef] rather
/// than more terms grafted onto Secondary 1. Currently only Term 1
/// (Weeks 1-4, Lists and Arrays) is authored; [totalWeeks] stays 36 for
/// the same "honest progress bar" reason Secondary 1's did while only a
/// handful of weeks exist. Term 1 picks up directly where Secondary 1
/// Term 9 left off: its Week 36 capstone program used single variables,
/// selection, and loops, and this term's four weeks extend that straight
/// into lists (storing many values, adding/removing/updating items,
/// looping through a list, and a capstone list-based program).
const CoursePathwayDef secondary2ComputingPathway = CoursePathwayDef(
  id: "course-secondary2-computing",
  subject: "computing",
  grade: Grade.secondary2,
  titleEn: "Computing — Year 2 Course",
  titleMy: "ကွန်ပျူတာ — ဒုတိယနှစ် သင်တန်း",
  descriptionEn:
      "The second academic-year computing course, continuing on from Secondary 1: daily bite-sized lessons building on real-code programming with new topics such as lists and arrays.",
  descriptionMy:
      "ဒုတိယမြောက် ပညာသင်နှစ် ကွန်ပျူတာသင်တန်း -- Secondary 1 မှအခြေခံ၍ ဆက်လက်တည်ဆောက်သည့်၊ list နှင့် array ကဲ့သို့ ခေါင်းစဉ်အသစ်များပါဝင်သော real-code programming နေ့စဉ်အတိုချုပ်သင်ခန်းစာများ။",
  totalWeeks: 36,
  terms: [_secondary2ComputingTerm1],
);
