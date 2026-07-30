// File: ai_data_bridge/_generated/igcse_combined_science_term9.dart
// IGCSE Combined Science -- Term 9: "Physics - Electricity, Magnetism
// and Final Prep" (Weeks 33-36), authored from the corrected weekly
// topic map in ai_data_bridge/igcse_combined_science_all_terms.dart.
// Staging artifact only -- not yet wired into course_pathway_bank.dart's
// Grade.igcse pathway. Follows the exact DailyLessonDef/CourseWeekDef/
// CourseTermDef schema and id/xp conventions established by Terms 1-8
// (igcse_combined_science_term1.dart through
// igcse_combined_science_term8.dart) and _secondary3SciencePathway,
// including its rotating cast of named Myanmar-student protagonists
// (one per week's reading passage, not a single fixed character).
// FINAL TERM -- completes the full 36-week IGCSE Combined Science
// pathway.
//
// Week 33 (Electricity and Circuits): current, voltage, resistance,
// Ohm's law (V = IR), series and parallel circuits. Week 34 (Electric
// Circuits Safety and Magnetism): electrical power and energy, fuses
// and circuit breakers, electromagnets. Week 35 (Exam Prep --
// Combined Science Comprehensive Revision): a deliberate no-new-content
// review week spanning biology, chemistry, and physics from across the
// whole year. Week 36 (Capstone -- IGCSE Combined Science Mock
// Examinations): a multiple-choice paper, a theory paper, and a
// practical-test-simulation, mirroring real IGCSE exam structure and
// closing the pathway.

import 'package:nova_academy/features/lessons/course_pathway_bank.dart';
import 'package:nova_academy/features/lessons/interactive_content_models.dart';
import 'package:nova_academy/features/lessons/mock_quiz_data.dart';

// =====================================================================
// Week 33: "Electricity and Circuits"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek33 = CourseWeekDef(
  id: "course-igcse-combsci-w33",
  weekNumber: 33,
  titleEn: "Electricity and Circuits",
  titleMy: "လျှပ်စစ်နှင့် ပတ်လမ်းများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w33-d1",
      dayNumber: 1,
      titleEn: "Current, Voltage and Ohm's Law Quiz",
      titleMy: "လျှပ်စီးကြောင်း၊ ဗို့အားနှင့် Ohm's Law ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Electric current is defined as...",
          questionMy: "လျှပ်စစ်စီးကြောင်းကို မည်သို့ အဓိပ္ပာယ်ဖွင့်ဆိုသနည်း။",
          optionsEn: [
            "The rate of flow of electric charge",
            "The energy transferred per unit charge",
            "The opposition to current flow",
            "The rate of energy transfer only",
          ],
          optionsMy: [
            "လျှပ်စစ်ဓာတ်အားစီးဆင်းသည့်နှုန်း",
            "အားအလျော်အလိုက် ကူးပြောင်းသည့် စွမ်းအင်",
            "လျှပ်စီးကြောင်းစီးဆင်းမှုကို ဆန့်ကျင်မှု",
            "စွမ်းအင်ကူးပြောင်းသည့်နှုန်းသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Current is measured in amperes (A), using an ammeter connected in series in the circuit.",
            "A larger current means more charge is flowing past a point in the circuit each second.",
          ],
          hintsMy: [
            "လျှပ်စီးကြောင်းကို ပတ်လမ်းအတွင်း series ချိတ်ဆက်ထားသော ammeter ကိုအသုံးပြု၍ အမ်ပီယာ (A) ဖြင့် တိုင်းတာသည်။",
            "ပို၍များသော လျှပ်စီးကြောင်းသည် ပတ်လမ်းရှိ နေရာတစ်ခုကို တစ်စက္ကန့်လျှင် ဓာတ်အားပို၍စီးဆင်းနေခြင်းကို ဆိုလိုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Ohm's law states that...",
          questionMy: "Ohm's law အရ မည်သို့ ဖော်ပြထားသနည်း။",
          optionsEn: [
            "V = IR, voltage equals current multiplied by resistance",
            "V = I + R, voltage equals current added to resistance",
            "V = I / R only, with no other relationship",
            "Resistance has no effect on current at all",
          ],
          optionsMy: [
            "V = IR၊ ဗို့အားသည် လျှပ်စီးကြောင်းနှင့် ခံနိုင်ရည်ကို မြှောက်ခြင်းနှင့် ညီသည်",
            "V = I + R၊ ဗို့အားသည် လျှပ်စီးကြောင်းနှင့် ခံနိုင်ရည်ကို ပေါင်းခြင်းနှင့် ညီသည်",
            "V = I / R သာ၊ အခြားဆက်စပ်မှု မရှိပါ",
            "ခံနိုင်ရည်သည် လျှပ်စီးကြောင်းအပေါ် လုံးဝ သက်ရောက်မှုမရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Rearranging this equation also gives I = V/R and R = V/I, useful for calculating whichever quantity is unknown.",
            "For a fixed voltage, a higher resistance means a lower current -- resistance opposes the flow of charge.",
          ],
          hintsMy: [
            "ဤညီမျှခြင်းကို ပြန်လည်စီစဉ်ခြင်းက I = V/R နှင့် R = V/I ကိုလည်း ရရှိစေပြီး၊ မသိသောပမာဏကို တွက်ချက်ရာတွင် အသုံးဝင်သည်။",
            "ဗို့အားတည်ငြိမ်နေချိန်တွင် ခံနိုင်ရည်ပို၍များပါက လျှပ်စီးကြောင်းပို၍နည်းသည် -- ခံနိုင်ရည်သည် ဓာတ်အားစီးဆင်းမှုကို ဆန့်ကျင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a series circuit, the current at every point in the circuit is...",
          questionMy:
              "Series ပတ်လမ်းတစ်ခုတွင် ပတ်လမ်းအတွင်းရှိ နေရာတိုင်း၌ လျှပ်စီးကြောင်းသည် မည်သို့ရှိသနည်း။",
          optionsEn: [
            "The same throughout the whole circuit",
            "Different at each component",
            "Always exactly zero",
            "Always infinite",
          ],
          optionsMy: [
            "ပတ်လမ်းတစ်ခုလုံးတစ်လျှောက် တူညီသည်",
            "အစိတ်အပိုင်းတစ်ခုစီတွင် ကွဲပြားသည်",
            "အမြဲတမ်း အတိအကျ သုည",
            "အမြဲတမ်း အနန္တ",
          ],
          correctIndex: 0,
          hintsEn: [
            "A series circuit has a single loop, so charge has only one pathway to flow through -- the same current passes through every component.",
            "This is different from a parallel circuit, where current can split across multiple branches.",
          ],
          hintsMy: [
            "Series ပတ်လမ်းတွင် လမ်းကြောင်းတစ်ခုတည်းသာ ရှိသောကြောင့် ဓာတ်အားစီးဆင်းရန် လမ်းကြောင်းတစ်ခုတည်းသာရှိပြီး -- အစိတ်အပိုင်းတိုင်းကိုဖြတ်၍ လျှပ်စီးကြောင်းတူညီသည်။",
            "ဤသည်မှာ လျှပ်စီးကြောင်းသည် ဌာနခွဲများစွာသို့ ကွဲထွက်နိုင်သော parallel ပတ်လမ်းနှင့် ကွဲပြားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a parallel circuit, the potential difference (voltage) across each branch is...",
          questionMy:
              "Parallel ပတ်လမ်းတစ်ခုတွင် ဌာနခွဲတစ်ခုစီကို ဖြတ်သန်းသော ဗို့အားကွာခြားချက် (potential difference) သည် မည်သို့ရှိသနည်း။",
          optionsEn: [
            "The same across each branch",
            "Always different, adding up like in series",
            "Always exactly zero",
            "Undefined and unmeasurable",
          ],
          optionsMy: [
            "ဌာနခွဲတစ်ခုစီတွင် တူညီသည်",
            "Series ကဲ့သို့ ပေါင်းပေါင်းသွားပြီး အမြဲကွဲပြားသည်",
            "အမြဲတမ်း အတိအကျ သုည",
            "သတ်မှတ်၍ မရနိုင်ဘဲ တိုင်းတာ၍ မရနိုင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Each parallel branch connects directly across the same two points of the circuit's supply.",
            "This is why removing one bulb in a parallel circuit does not stop current flowing through the other branches.",
          ],
          hintsMy: [
            "Parallel ဌာနခွဲတစ်ခုစီသည် ပတ်လမ်း၏ ပေးသွင်းမှု၏ အမှတ်နှစ်ခုတည်းကို တိုက်ရိုက်ချိတ်ဆက်ထားသည်။",
            "ဤအကြောင်းကြောင့် parallel ပတ်လမ်းတစ်ခုတွင် မီးလုံးတစ်လုံးကို ဖယ်ရှားလိုက်ခြင်းသည် အခြားဌာနခွဲများကို ဖြတ်သန်းစီးဆင်းနေသော လျှပ်စီးကြောင်းကို ရပ်တန့်မစေပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w33-d2",
      dayNumber: 2,
      titleEn: "Match the Electricity Vocabulary",
      titleMy: "လျှပ်စစ်ဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w33-dm-1",
          termEn: "Current",
          termMy: "လျှပ်စီးကြောင်း (Current)",
          matchEn:
              "The rate of flow of electric charge, measured in amperes (A).",
          matchMy:
              "အမ်ပီယာ (A) ဖြင့် တိုင်းတာသော လျှပ်စစ်ဓာတ်အားစီးဆင်းသည့်နှုန်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w33-dm-2",
          termEn: "Voltage (Potential Difference)",
          termMy: "ဗို့အား (Potential Difference)",
          matchEn:
              "The energy transferred per unit charge between two points in a circuit, measured in volts (V).",
          matchMy:
              "ပတ်လမ်းအတွင်း အမှတ်နှစ်ခုကြား ဓာတ်အားယူနစ်တစ်ခုလျှင် ကူးပြောင်းသော စွမ်းအင်၊ ဗို့ (V) ဖြင့် တိုင်းတာသည်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w33-dm-3",
          termEn: "Resistance",
          termMy: "ခံနိုင်ရည် (Resistance)",
          matchEn: "The opposition to the flow of current, measured in ohms.",
          matchMy:
              "အုမ်း (ohms) ဖြင့် တိုင်းတာသော လျှပ်စီးကြောင်းစီးဆင်းမှုကို ဆန့်ကျင်မှု။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w33-dm-4",
          termEn: "Series Circuit",
          termMy: "Series ပတ်လမ်း",
          matchEn:
              "A circuit with a single loop, where the same current flows through every component.",
          matchMy:
              "အစိတ်အပိုင်းတိုင်းကို ဖြတ်သန်းသော လျှပ်စီးကြောင်းတူညီသည့်၊ လမ်းကြောင်းတစ်ခုတည်းသာရှိသော ပတ်လမ်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w33-dm-5",
          termEn: "Parallel Circuit",
          termMy: "Parallel ပတ်လမ်း",
          matchEn:
              "A circuit with multiple loops, where the voltage is the same across each branch but the current can differ.",
          matchMy:
              "ဗို့အားသည် ဌာနခွဲတိုင်းတွင် တူညီသော်လည်း လျှပ်စီးကြောင်း ကွဲပြားနိုင်သော၊ လမ်းကြောင်းများစွာရှိသော ပတ်လမ်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w33-d3",
      dayNumber: 3,
      titleEn: "Sort: Series or Parallel Circuit Feature?",
      titleMy: "စီစစ်ကြမည် - Series (သို့) Parallel ပတ်လမ်း ဂုဏ်သတ္တိ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Series Circuit Feature", "Parallel Circuit Feature"],
        bucketsMy: ["Series ပတ်လမ်း ဂုဏ်သတ္တိ", "Parallel ပတ်လမ်း ဂုဏ်သတ္တိ"],
        items: [
          SortingItem(
            id: "igcsecs-w33-sort-1",
            labelEn: "The same current flows throughout the whole circuit",
            labelMy:
                "ပတ်လမ်းတစ်ခုလုံးတစ်လျှောက် တူညီသောလျှပ်စီးကြောင်း စီးဆင်းခြင်း",
            correctBucketEn: "Series Circuit Feature",
            correctBucketMy: "Series ပတ်လမ်း ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w33-sort-2",
            labelEn: "The same voltage is measured across each branch",
            labelMy:
                "ဌာနခွဲတစ်ခုစီကို ဖြတ်သန်း တူညီသောဗို့အား တိုင်းတာရရှိခြင်း",
            correctBucketEn: "Parallel Circuit Feature",
            correctBucketMy: "Parallel ပတ်လမ်း ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w33-sort-3",
            labelEn: "If one bulb breaks, the whole circuit stops working",
            labelMy:
                "မီးလုံးတစ်လုံးပျက်ပါက ပတ်လမ်းတစ်ခုလုံး အလုပ်မလုပ်တော့ခြင်း",
            correctBucketEn: "Series Circuit Feature",
            correctBucketMy: "Series ပတ်လမ်း ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w33-sort-4",
            labelEn: "If one bulb breaks, the others keep working",
            labelMy: "မီးလုံးတစ်လုံးပျက်ပါက အခြားများ ဆက်လက်အလုပ်လုပ်နေခြင်း",
            correctBucketEn: "Parallel Circuit Feature",
            correctBucketMy: "Parallel ပတ်လမ်း ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w33-sort-5",
            labelEn: "Voltage splits across the components",
            labelMy: "ဗို့အားသည် အစိတ်အပိုင်းများတစ်လျှောက် ခွဲထွက်ခြင်း",
            correctBucketEn: "Series Circuit Feature",
            correctBucketMy: "Series ပတ်လမ်း ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w33-sort-6",
            labelEn: "Current splits across the branches",
            labelMy: "လျှပ်စီးကြောင်းသည် ဌာနခွဲများတစ်လျှောက် ခွဲထွက်ခြင်း",
            correctBucketEn: "Parallel Circuit Feature",
            correctBucketMy: "Parallel ပတ်လမ်း ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w33-sort-7",
            labelEn: "Only one pathway for charge to flow through",
            labelMy: "ဓာတ်အားစီးဆင်းရန် လမ်းကြောင်းတစ်ခုတည်းသာရှိခြင်း",
            correctBucketEn: "Series Circuit Feature",
            correctBucketMy: "Series ပတ်လမ်း ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w33-sort-8",
            labelEn: "Multiple pathways for charge to flow through",
            labelMy: "ဓာတ်အားစီးဆင်းရန် လမ်းကြောင်းများစွာရှိခြင်း",
            correctBucketEn: "Parallel Circuit Feature",
            correctBucketMy: "Parallel ပတ်လမ်း ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w33-sort-9",
            labelEn:
                "Household wiring typically uses this so appliances work independently",
            labelMy:
                "စက်ကိရိယာများ လွတ်လပ်စွာ အလုပ်လုပ်နိုင်ရန် အိမ်တွင်းလျှပ်စစ်ကြိုးဆက်များ ယေဘုယျအားဖြင့် ဤနည်းကို အသုံးပြုခြင်း",
            correctBucketEn: "Parallel Circuit Feature",
            correctBucketMy: "Parallel ပတ်လမ်း ဂုဏ်သတ္တိ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w33-d4",
      dayNumber: 4,
      titleEn: "Reading: Zayar Lin's Circuit Comparison",
      titleMy: "စာဖတ်ခြင်း - ဇေယျာလင်း၏ ပတ်လမ်းနှိုင်းယှဉ်ချက်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Zayar Lin's Circuit Comparison",
        titleMy: "ဇေယျာလင်း၏ ပတ်လမ်းနှိုင်းယှဉ်ချက်",
        passageEn:
            "For his electricity practical, Zayar Lin built two circuits with identical batteries and two identical bulbs each -- one wired in series, and one wired in parallel -- to compare their behaviour directly.\n\nIn the series circuit, Zayar Lin placed an ammeter at three different points along the single loop and recorded an identical reading at each point, confirming that current is the same everywhere in a series circuit. When he used a voltmeter across each bulb, the two readings added up to the battery's total voltage -- the voltage had split between the two bulbs, and correspondingly, both bulbs glowed noticeably dimmer than a single bulb connected alone would.\n\nIn the parallel circuit, Zayar Lin instead placed a voltmeter across each of the two branches and found identical readings equal to the full battery voltage on both -- unlike in the series circuit, the voltage had not split. Both bulbs in the parallel circuit glowed at full, normal brightness, just as a single bulb would if connected alone. When Zayar Lin then removed one bulb from each circuit to see what happened, the series circuit's remaining bulb went out completely, since removing a bulb broke the circuit's only pathway; the parallel circuit's remaining bulb, however, kept glowing at full brightness, since the other branch still provided a complete pathway for current to flow.",
        passageMy:
            "သူ၏ လျှပ်စစ်လက်တွေ့စမ်းသပ်မှုအတွက် ဇေယျာလင်းသည် တူညီသောဘက်ထရီများနှင့် မီးလုံးနှစ်လုံးစီပါသော ပတ်လမ်းနှစ်ခု -- တစ်ခုကို series ချိတ်ဆက်ပြီး တစ်ခုကို parallel ချိတ်ဆက်ကာ -- ၎င်းတို့၏ အမူအကျင့်ကို တိုက်ရိုက်နှိုင်းယှဉ်ရန် တည်ဆောက်ခဲ့သည်။\n\nSeries ပတ်လမ်းတွင် ဇေယျာလင်းသည် ammeter ကို လမ်းကြောင်းတစ်ခုတည်း၏ မတူညီသောနေရာသုံးခုတွင် ထားခဲ့ပြီး နေရာတစ်ခုစီတွင် တူညီသောတိုင်းတာချက်ကို မှတ်တမ်းတင်ခဲ့ကာ၊ series ပတ်လမ်းတစ်ခု၏ နေရာတိုင်းတွင် လျှပ်စီးကြောင်းတူညီကြောင်း အတည်ပြုခဲ့သည်။ voltmeter ကို မီးလုံးတစ်ခုစီတွင် အသုံးပြုသောအခါ တိုင်းတာချက်နှစ်ခု ပေါင်းလိုက်ရာ ဘက်ထရီ၏ စုစုပေါင်းဗို့အားနှင့် ညီမျှခဲ့ပြီး -- ဗို့အားသည် မီးလုံးနှစ်လုံးကြား ခွဲထွက်ခဲ့သည်၊ ၎င်းနှင့်အညီ မီးလုံးနှစ်လုံးစလုံးသည် တစ်လုံးတည်းသီးသန့်ချိတ်ဆက်ထားလျှင် ရရှိမည့်ထက် ထင်ရှားစွာ မှိန်မှိန်ပြောင်ခဲ့သည်။\n\nParallel ပတ်လမ်းတွင် ဇေယျာလင်းသည် voltmeter ကို ဌာနခွဲနှစ်ခုစီတွင် ထားခဲ့ပြီး နှစ်ခုစလုံးတွင် ဘက်ထရီ၏ ဗို့အားအပြည့်နှင့် ညီမျှသော တိုင်းတာချက်တူညီကို တွေ့ရှိခဲ့သည် -- series ပတ်လမ်းနှင့်မတူဘဲ ဗို့အား မခွဲထွက်ခဲ့ပါ။ Parallel ပတ်လမ်းရှိ မီးလုံးနှစ်လုံးစလုံးသည် တစ်လုံးတည်း သီးသန့်ချိတ်ဆက်ထားလျှင်ရရှိမည့်ကဲ့သို့ ပုံမှန်တောက်ပမှုအပြည့်ဖြင့် တောက်ခဲ့သည်။ ထို့နောက် ဇေယျာလင်းသည် အဘယ်အရာဖြစ်ပျက်ကြောင်း ကြည့်ရန် ပတ်လမ်းတစ်ခုစီမှ မီးလုံးတစ်လုံးကို ဖယ်ရှားလိုက်သောအခါ series ပတ်လမ်း၏ ကျန်ရှိသောမီးလုံးသည် လုံးဝ ငြိမ်းသွားခဲ့သည်၊ အကြောင်းမှာ မီးလုံးတစ်လုံးဖယ်ရှားခြင်းက ပတ်လမ်း၏ တစ်ခုတည်းသောလမ်းကြောင်းကို ဖြတ်တောက်ခဲ့သောကြောင့်ဖြစ်သည်၊ သို့သော် parallel ပတ်လမ်း၏ ကျန်ရှိသောမီးလုံးမူ တောက်ပမှုအပြည့်ဖြင့် ဆက်လက်တောက်ခဲ့ပြီး၊ အကြောင်းမှာ အခြားဌာနခွဲက လျှပ်စီးကြောင်းစီးဆင်းရန် အပြည့်အစုံ လမ်းကြောင်းကို ဆက်လက်ပေးခဲ့သောကြောင့်ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did the ammeter readings at three points in the series circuit show?",
            questionMy:
                "Series ပတ်လမ်းရှိ နေရာသုံးခု၌ ammeter တိုင်းတာချက်များက အဘယ်အရာကို ပြသခဲ့သနည်း။",
            optionsEn: [
              "Identical readings at every point, confirming current is the same throughout a series circuit",
              "Completely different readings at each point",
              "A reading of zero at every point",
              "The ammeter could not be used in a series circuit",
            ],
            optionsMy: [
              "နေရာတိုင်းတွင် တူညီသောတိုင်းတာချက်၊ series ပတ်လမ်းတစ်ခုလျှင် လျှပ်စီးကြောင်းတူညီကြောင်း အတည်ပြုခြင်း",
              "နေရာတစ်ခုစီတွင် လုံးဝကွဲပြားသောတိုင်းတာချက်",
              "နေရာတိုင်းတွင် သုညတိုင်းတာချက်",
              "Series ပတ်လမ်းတွင် ammeter ကို အသုံးမပြုနိုင်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the series circuit's ammeter readings.",
              "This confirms the key rule that current is the same at every point in a series circuit.",
            ],
            hintsMy: [
              "Series ပတ်လမ်း၏ ammeter တိုင်းတာချက်များကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်က series ပတ်လမ်းတစ်ခု၏ နေရာတိုင်းတွင် လျှပ်စီးကြောင်းတူညီသည်ဟူသော အဓိကနိယာမကို အတည်ပြုပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did the bulbs in the series circuit glow dimmer than a single bulb alone?",
            questionMy:
                "Series ပတ်လမ်းရှိ မီးလုံးများသည် သီးသန့်မီးလုံးတစ်လုံးထက် အဘယ်ကြောင့် မှိန်မှိန်တောက်ခဲ့သနည်း။",
            optionsEn: [
              "The voltage split between the two bulbs",
              "The current split between the two bulbs",
              "One bulb was broken from the start",
              "The battery was almost dead",
            ],
            optionsMy: [
              "ဗို့အားသည် မီးလုံးနှစ်လုံးကြား ခွဲထွက်ခဲ့ခြင်း",
              "လျှပ်စီးကြောင်းသည် မီးလုံးနှစ်လုံးကြား ခွဲထွက်ခဲ့ခြင်း",
              "မီးလုံးတစ်လုံး အစကတည်းက ပျက်နေခဲ့ခြင်း",
              "ဘက်ထရီ နီးပါးကုန်နေခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the voltmeter readings.",
              "Each bulb only received a share of the total voltage, reducing its brightness compared to receiving the full voltage alone.",
            ],
            hintsMy: [
              "Voltmeter တိုင်းတာချက်များကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "မီးလုံးတစ်လုံးစီသည် စုစုပေါင်းဗို့အား၏ အစိတ်အပိုင်းတစ်ခုသာ ရရှိသောကြောင့် ဗို့အားအပြည့်ရရှိလျှင်ထက် တောက်ပမှု နည်းသွားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What happened when Zayar Lin removed one bulb from the series circuit?",
            questionMy:
                "ဇေယျာလင်းသည် series ပတ်လမ်းမှ မီးလုံးတစ်လုံးဖယ်ရှားလိုက်သောအခါ အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "The remaining bulb went out completely, since the circuit's only pathway was broken",
              "The remaining bulb glowed brighter than before",
              "Nothing changed at all",
              "The battery exploded",
            ],
            optionsMy: [
              "ကျန်ရှိသောမီးလုံးသည် ပတ်လမ်း၏ တစ်ခုတည်းသောလမ်းကြောင်း ဖြတ်တောက်သွားသောကြောင့် လုံးဝ ငြိမ်းသွားခြင်း",
              "ကျန်ရှိသောမီးလုံးသည် ယခင်ကထက် ပို၍တောက်ပလာခြင်း",
              "မည်သည့်အရာမျှ မပြောင်းလဲခြင်း",
              "ဘက်ထရီ ပေါက်ကွဲသွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of removing a bulb from each circuit.",
              "A series circuit has only one pathway -- breaking it anywhere stops current everywhere in the loop.",
            ],
            hintsMy: [
              "ပတ်လမ်းတစ်ခုစီမှ မီးလုံးဖယ်ရှားခြင်းကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "Series ပတ်လမ်းတွင် လမ်းကြောင်းတစ်ခုတည်းသာရှိသောကြောင့် မည်သည့်နေရာတွင် ဖြတ်တောက်သည်ဖြစ်စေ လမ်းကြောင်းတစ်ခုလုံးရှိ လျှပ်စီးကြောင်း ရပ်တန့်သွားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What happened when Zayar Lin removed one bulb from the parallel circuit?",
            questionMy:
                "ဇေယျာလင်းသည် parallel ပတ်လမ်းမှ မီးလုံးတစ်လုံးဖယ်ရှားလိုက်သောအခါ အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "The remaining bulb kept glowing at full brightness, since the other branch still provided a pathway",
              "The remaining bulb also went out immediately",
              "The remaining bulb became dimmer",
              "The circuit caught fire",
            ],
            optionsMy: [
              "ကျန်ရှိသောမီးလုံးသည် အခြားဌာနခွဲက လမ်းကြောင်းကို ဆက်လက်ပေးထားသောကြောင့် တောက်ပမှုအပြည့်ဖြင့် ဆက်လက်တောက်ခြင်း",
              "ကျန်ရှိသောမီးလုံးသည်လည်း ချက်ချင်းလျှင် ငြိမ်းသွားခြင်း",
              "ကျန်ရှိသောမီးလုံးသည် မှိန်လာခြင်း",
              "ပတ်လမ်းသည် မီးလောင်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Each parallel branch is an independent pathway, so removing one does not affect the others.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "Parallel ဌာနခွဲတစ်ခုစီသည် လွတ်လပ်သောလမ်းကြောင်းတစ်ခုဖြစ်သောကြောင့် တစ်ခုကိုဖယ်ရှားခြင်းက အခြားများကို မထိခိုက်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w33-d5",
      dayNumber: 5,
      titleEn: "Week 33 Recap: Electricity and Circuits",
      titleMy: "အပတ်စဉ် ၃၃ ပြန်လည်သုံးသပ်ခြင်း - လျှပ်စစ်နှင့် ပတ်လမ်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Current is measured in...",
          questionMy: "လျှပ်စီးကြောင်းကို မည်သည့်ယူနစ်ဖြင့် တိုင်းတာသနည်း။",
          optionsEn: ["Amperes", "Volts", "Ohms", "Watts"],
          optionsMy: ["အမ်ပီယာ", "ဗို့", "အုမ်း", "ဝပ်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Ohm's law is written as...",
          questionMy: "Ohm's law ကို မည်သို့ ရေးသားသနည်း။",
          optionsEn: ["V = IR", "V = I + R", "V = I - R", "V = R / I only"],
          optionsMy: ["V = IR", "V = I + R", "V = I - R", "V = R / I သာ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In a series circuit, current is...",
          questionMy: "Series ပတ်လမ်းတွင် လျှပ်စီးကြောင်းသည် မည်သို့ရှိသနည်း။",
          optionsEn: [
            "The same everywhere",
            "Different at each point",
            "Always zero",
            "Undefined",
          ],
          optionsMy: [
            "နေရာတိုင်းတွင် တူညီသည်",
            "နေရာတစ်ခုစီတွင် ကွဲပြားသည်",
            "အမြဲတမ်း သုည",
            "သတ်မှတ်မထားပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In a parallel circuit, voltage across each branch is...",
          questionMy:
              "Parallel ပတ်လမ်းတွင် ဌာနခွဲတစ်ခုစီရှိ ဗို့အားသည် မည်သို့ရှိသနည်း။",
          optionsEn: [
            "The same",
            "Always different",
            "Always zero",
            "Undefined",
          ],
          optionsMy: [
            "တူညီသည်",
            "အမြဲကွဲပြားသည်",
            "အမြဲတမ်း သုည",
            "သတ်မှတ်မထားပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Resistance is measured in...",
          questionMy: "ခံနိုင်ရည်ကို မည်သည့်ယူနစ်ဖြင့် တိုင်းတာသနည်း။",
          optionsEn: ["Ohms", "Amperes", "Volts", "Joules"],
          optionsMy: ["အုမ်း", "အမ်ပီယာ", "ဗို့", "ဂျူးလ်"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 34: "Electric Circuits Safety and Magnetism"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek34 = CourseWeekDef(
  id: "course-igcse-combsci-w34",
  weekNumber: 34,
  titleEn: "Electric Circuits Safety and Magnetism",
  titleMy: "လျှပ်စစ်ပတ်လမ်း လုံခြုံရေးနှင့် သံလိုက်စွမ်းပကား",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w34-d1",
      dayNumber: 1,
      titleEn: "Power, Fuses and Electromagnets Quiz",
      titleMy: "ပါဝါ၊ ဖျူးစ်နှင့် လျှပ်စစ်သံလိုက်များ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Electrical power is calculated using...",
          questionMy: "လျှပ်စစ်ပါဝါကို မည်သို့ တွက်ချက်သနည်း။",
          optionsEn: [
            "P = IV, power equals current multiplied by voltage",
            "P = I + V, power equals current added to voltage",
            "P = I - V, power equals current minus voltage",
            "Power has no formula at all",
          ],
          optionsMy: [
            "P = IV၊ ပါဝါသည် လျှပ်စီးကြောင်းနှင့် ဗို့အားကို မြှောက်ခြင်းနှင့် ညီသည်",
            "P = I + V၊ ပါဝါသည် လျှပ်စီးကြောင်းနှင့် ဗို့အားကို ပေါင်းခြင်းနှင့် ညီသည်",
            "P = I - V၊ ပါဝါသည် လျှပ်စီးကြောင်းနှင့် ဗို့အားကို နှုတ်ခြင်းနှင့် ညီသည်",
            "ပါဝါသည် မည်သည့်ဖော်မြူလာမျှ မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Power is measured in watts (W), and this formula lets you calculate it from an ammeter and voltmeter reading.",
            "A higher power rating means energy is being transferred at a faster rate -- for example, a 100 W bulb transfers energy faster than a 60 W bulb.",
          ],
          hintsMy: [
            "ပါဝါကို ဝပ် (W) ဖြင့် တိုင်းတာပြီး ဤဖော်မြူလာက ammeter နှင့် voltmeter တိုင်းတာချက်မှ ၎င်းကို တွက်ချက်ခွင့်ပြုသည်။",
            "ပိုမြင့်သော ပါဝါသတ်မှတ်ချက်သည် စွမ်းအင်ကို ပို၍မြန်ဆန်စွာ ကူးပြောင်းနေသည်ကို ဆိုလိုသည် -- ဥပမာ 100W မီးလုံးသည် 60W မီးလုံးထက် စွမ်းအင်ကို ပို၍မြန်ဆန်စွာ ကူးပြောင်းသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "A fuse protects a circuit by...",
          questionMy: "ဖျူးစ်တစ်ခုသည် ပတ်လမ်းတစ်ခုကို မည်သို့ ကာကွယ်ပေးသနည်း။",
          optionsEn: [
            "Melting and breaking the circuit if current becomes dangerously high",
            "Increasing the voltage automatically",
            "Storing electrical energy for later use",
            "Converting AC current into DC current",
          ],
          optionsMy: [
            "လျှပ်စီးကြောင်း အန္တရာယ်ရှိလောက်အောင် မြင့်တက်ပါက ပျော်ကျပြီး ပတ်လမ်းကို ဖြတ်တောက်ခြင်း",
            "ဗို့အားကို အလိုအလျောက် တိုးမြှင့်ခြင်း",
            "နောက်တစ်ချိန်တွင် အသုံးပြုရန် လျှပ်စစ်စွမ်းအင်ကို သိုလှောင်ခြင်း",
            "AC လျှပ်စီးကြောင်းကို DC လျှပ်စီးကြောင်းအဖြစ် ပြောင်းလဲခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "A fuse contains a thin wire designed to melt if too much current passes through it, breaking the circuit before wires overheat.",
            "This protects the circuit's wiring and connected appliances from damage or fire caused by excessive current.",
          ],
          hintsMy: [
            "ဖျူးစ်တွင် လျှပ်စီးကြောင်း အလွန်အကျွံဖြတ်သန်းပါက ပျော်ကျရန် ဒီဇိုင်းထုတ်ထားသော ကြေးဆူးကြိုးပါးပါးတစ်ခု ပါဝင်ပြီး၊ ကြိုးများပူလွန်းမီ ပတ်လမ်းကို ဖြတ်တောက်ပေးသည်။",
            "ဤသည်က ပတ်လမ်း၏ ကြိုးဆက်များနှင့် ချိတ်ဆက်ထားသော စက်ကိရိယာများကို လျှပ်စီးကြောင်း အလွန်အကျွံကြောင့် ပျက်စီးခြင်း (သို့) မီးလောင်ခြင်းမှ ကာကွယ်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "The strength of an electromagnet's magnetic field can be increased by...",
          questionMy:
              "လျှပ်စစ်သံလိုက်တစ်ခု၏ သံလိုက်စက်ကွင်းအားကို မည်သို့ တိုးမြှင့်နိုင်သနည်း။",
          optionsEn: [
            "Increasing the current or adding more coil turns",
            "Removing the iron core from the coil",
            "Decreasing the current flowing through the coil",
            "Using a wooden core instead of an iron one",
          ],
          optionsMy: [
            "လျှပ်စီးကြောင်း တိုးမြှင့်ခြင်း (သို့) ကွင်းအလှည့်ပိုထည့်ခြင်း",
            "ကွင်းမှ သံဓာတ်အနှစ်ကို ဖယ်ရှားခြင်း",
            "ကွင်းကိုဖြတ်သန်းသော လျှပ်စီးကြောင်း လျှော့ချခြင်း",
            "သံဓာတ်အနှစ်အစား သစ်သားအနှစ် အသုံးပြုခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "More current and more coil turns both increase the strength of the magnetic field produced.",
            "Adding an iron core also concentrates and strengthens the field, since iron is easily magnetised.",
          ],
          hintsMy: [
            "လျှပ်စီးကြောင်းပို၍များခြင်းနှင့် ကွင်းအလှည့်ပို၍များခြင်း နှစ်ခုစလုံးသည် ဖြစ်ပေါ်လာသော သံလိုက်စက်ကွင်းအားကို တိုးမြှင့်ပေးသည်။",
            "သံဓာတ်အနှစ်ထည့်ခြင်းသည် စက်ကွင်းကို စုစည်း၍ ပို၍အားကောင်းစေသည်၊ အကြောင်းမှာ သံဓာတ်သည် လွယ်ကူစွာ သံလိုက်ဖြစ်တတ်သောကြောင့်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "The magnetic field pattern around a straight current-carrying wire is...",
          questionMy:
              "ဒေါင်လိုက်လျှပ်စီးကြောင်းသယ်ဆောင်ကြိုးတစ်ချောင်း ဝန်းကျင်ရှိ သံလိုက်စက်ကွင်းပုံစံသည် မည်သို့ရှိသနည်း။",
          optionsEn: [
            "Concentric circles around the wire",
            "A straight line running along the wire",
            "No magnetic field at all",
            "A single point at the wire's centre only",
          ],
          optionsMy: [
            "ကြိုးဝန်းကျင်ရှိ အလယ်ဗဟိုတူ အဝိုင်းများ",
            "ကြိုးတစ်လျှောက် ဖြောင့်တန်းသောမျဉ်း",
            "သံလိုက်စက်ကွင်း လုံးဝမရှိပါ",
            "ကြိုး၏ အလယ်ဗဟို အမှတ်တစ်ခုသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This pattern can be shown using iron filings sprinkled on a card held around the wire, or with small plotting compasses.",
            "Wrapping the wire into a coil (a solenoid) combines these circular fields into a much stronger overall field, similar to a bar magnet.",
          ],
          hintsMy: [
            "ဤပုံစံကို ကြိုးဝန်းကျင်တွင် ကိုင်ထားသော ကတ်ပြားပေါ် ဖြန့်ကြဲထားသော သံမှုန့်များ (သို့) ရွေ့လျားနိုင်သော အံ့ကွန်းပါစ်ငယ်များကို အသုံးပြု၍ ပြသနိုင်သည်။",
            "ကြိုးကို ကွင်း (solenoid) အဖြစ် ပတ်ရစ်ခြင်းက ဤအဝိုင်းစက်ကွင်းများကို ဘား သံလိုက်နှင့် ဆင်တူသော ပို၍အားကောင်းသည့် စက်ကွင်းစုစုပေါင်းအဖြစ် ပေါင်းစည်းပေးသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w34-d2",
      dayNumber: 2,
      titleEn: "Match the Circuit Safety and Magnetism Vocabulary",
      titleMy:
          "ပတ်လမ်းလုံခြုံရေးနှင့် သံလိုက်ဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w34-dm-1",
          termEn: "Power (Electrical)",
          termMy: "ပါဝါ (Electrical Power)",
          matchEn:
              "The rate of energy transfer, calculated as current multiplied by voltage (P = IV).",
          matchMy:
              "လျှပ်စီးကြောင်းနှင့် ဗို့အားကို မြှောက်ခြင်းဖြင့် တွက်ချက်သော (P = IV) စွမ်းအင်ကူးပြောင်းသည့်နှုန်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w34-dm-2",
          termEn: "Fuse",
          termMy: "ဖျူးစ် (Fuse)",
          matchEn:
              "A thin wire that melts and breaks a circuit if the current becomes dangerously high.",
          matchMy:
              "လျှပ်စီးကြောင်း အန္တရာယ်ရှိလောက်အောင် မြင့်တက်ပါက ပျော်ကျပြီး ပတ်လမ်းကို ဖြတ်တောက်သော ကြိုးပါးပါး။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w34-dm-3",
          termEn: "Circuit Breaker",
          termMy: "ပတ်လမ်းဖြတ်တောက်ကိရိယာ (Circuit Breaker)",
          matchEn:
              "A switch that automatically opens to stop current flow when it detects excessive current, and can be reset and reused unlike a fuse.",
          matchMy:
              "လျှပ်စီးကြောင်းအလွန်အကျွံကို တွေ့ရှိသောအခါ လျှပ်စီးကြောင်းရပ်တန့်ရန် အလိုအလျောက် ဖွင့်လှစ်ပြီး ဖျူးစ်နှင့်မတူဘဲ ပြန်လည်သတ်မှတ်၍ ထပ်မံအသုံးပြုနိုင်သော ခလုတ်။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w34-dm-4",
          termEn: "Electromagnet",
          termMy: "လျှပ်စစ်သံလိုက် (Electromagnet)",
          matchEn:
              "A magnet created by passing an electric current through a coil of wire, often wrapped around an iron core.",
          matchMy:
              "များသောအားဖြင့် သံဓာတ်အနှစ်တစ်ခုပတ်လျက် ကြိုးကွင်းတစ်ခုကို ဖြတ်၍ လျှပ်စီးကြောင်းစီးဆင်းစေခြင်းဖြင့် ဖန်တီးသော သံလိုက်။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w34-dm-5",
          termEn: "Solenoid",
          termMy: "Solenoid",
          matchEn:
              "A coil of wire that produces a magnetic field similar to a bar magnet when a current flows through it.",
          matchMy:
              "လျှပ်စီးကြောင်းစီးဆင်းသောအခါ ဘား သံလိုက်နှင့် ဆင်တူသော သံလိုက်စက်ကွင်းတစ်ခု ထုတ်ပေးသော ကြိုးကွင်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w34-d3",
      dayNumber: 3,
      titleEn: "Sort: Electrical Safety Device or Magnetism Concept?",
      titleMy:
          "စီစစ်ကြမည် - လျှပ်စစ်လုံခြုံရေး ကိရိယာ (သို့) သံလိုက်ဆိုင်ရာ အယူအဆ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Electrical Safety Device", "Magnetism Concept"],
        bucketsMy: ["လျှပ်စစ်လုံခြုံရေး ကိရိယာ", "သံလိုက်ဆိုင်ရာ အယူအဆ"],
        items: [
          SortingItem(
            id: "igcsecs-w34-sort-1",
            labelEn: "Fuse",
            labelMy: "ဖျူးစ်",
            correctBucketEn: "Electrical Safety Device",
            correctBucketMy: "လျှပ်စစ်လုံခြုံရေး ကိရိယာ",
          ),
          SortingItem(
            id: "igcsecs-w34-sort-2",
            labelEn: "Circuit breaker",
            labelMy: "ပတ်လမ်းဖြတ်တောက်ကိရိယာ",
            correctBucketEn: "Electrical Safety Device",
            correctBucketMy: "လျှပ်စစ်လုံခြုံရေး ကိရိယာ",
          ),
          SortingItem(
            id: "igcsecs-w34-sort-3",
            labelEn: "Earth wire",
            labelMy: "မြေတိုင်ကြိုး",
            correctBucketEn: "Electrical Safety Device",
            correctBucketMy: "လျှပ်စစ်လုံခြုံရေး ကိရိယာ",
          ),
          SortingItem(
            id: "igcsecs-w34-sort-4",
            labelEn: "Electromagnet",
            labelMy: "လျှပ်စစ်သံလိုက်",
            correctBucketEn: "Magnetism Concept",
            correctBucketMy: "သံလိုက်ဆိုင်ရာ အယူအဆ",
          ),
          SortingItem(
            id: "igcsecs-w34-sort-5",
            labelEn: "Solenoid",
            labelMy: "Solenoid",
            correctBucketEn: "Magnetism Concept",
            correctBucketMy: "သံလိုက်ဆိုင်ရာ အယူအဆ",
          ),
          SortingItem(
            id: "igcsecs-w34-sort-6",
            labelEn: "Magnetic field circling a current-carrying wire",
            labelMy:
                "လျှပ်စီးကြောင်းသယ်ဆောင်ကြိုးတစ်ခုကို ဝန်းရံနေသော သံလိုက်စက်ကွင်း",
            correctBucketEn: "Magnetism Concept",
            correctBucketMy: "သံလိုက်ဆိုင်ရာ အယူအဆ",
          ),
          SortingItem(
            id: "igcsecs-w34-sort-7",
            labelEn: "Insulation covering a plug's wires",
            labelMy:
                "ပလပ်ကြိုးများကို ဖုံးအုပ်ထားသော လျှပ်စစ်လွှမ်းအင်ဆူလေးရှင်း",
            correctBucketEn: "Electrical Safety Device",
            correctBucketMy: "လျှပ်စစ်လုံခြုံရေး ကိရိယာ",
          ),
          SortingItem(
            id: "igcsecs-w34-sort-8",
            labelEn: "An iron core strengthening a magnetic field",
            labelMy: "သံလိုက်စက်ကွင်းကို အားကောင်းစေသော သံဓာတ်အနှစ်",
            correctBucketEn: "Magnetism Concept",
            correctBucketMy: "သံလိုက်ဆိုင်ရာ အယူအဆ",
          ),
          SortingItem(
            id: "igcsecs-w34-sort-9",
            labelEn: "A correctly rated fuse preventing wires from overheating",
            labelMy:
                "ကြိုးများ ပူလွန်းခြင်းမှ ကာကွယ်ပေးသော မှန်ကန်သတ်မှတ်ချက်ရှိသောဖျူးစ်",
            correctBucketEn: "Electrical Safety Device",
            correctBucketMy: "လျှပ်စစ်လုံခြုံရေး ကိရိယာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w34-d4",
      dayNumber: 4,
      titleEn: "Reading: Wai Yan's Electromagnet Strength Test",
      titleMy: "စာဖတ်ခြင်း - ဝေယံ၏ လျှပ်စစ်သံလိုက်အား စမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Wai Yan's Electromagnet Strength Test",
        titleMy: "ဝေယံ၏ လျှပ်စစ်သံလိုက်အား စမ်းသပ်မှု",
        passageEn:
            "For his magnetism practical, Wai Yan built a simple electromagnet by wrapping insulated wire around an iron nail and connecting the ends to a battery. He tested how many small paperclips the electromagnet could pick up as a measure of its magnetic strength, keeping the battery and nail identical throughout and changing only one variable at a time for a fair test.\n\nFirst, Wai Yan kept the number of coil turns fixed at twenty and tested three different currents by swapping in batteries of different voltages. As the current increased, the number of paperclips the electromagnet could lift also increased, confirming that a higher current produces a stronger magnetic field.\n\nNext, Wai Yan kept the current fixed and instead varied the number of coil turns, testing ten, twenty, and thirty turns of wire around the same nail. Again, more coil turns picked up more paperclips, confirming that increasing the number of turns also strengthens the field. As a final comparison, Wai Yan removed the iron nail entirely and tested the same coil and current with nothing but air inside the coil -- it could barely lift a single paperclip, dramatically weaker than with the iron core in place, since iron concentrates and strengthens the magnetic field far more than air can. His teacher connected this investigation back to circuit safety: just as choosing the right coil turns and current controls an electromagnet's strength deliberately, choosing a correctly rated fuse for a circuit controls how much current is allowed to flow before the circuit is deliberately broken to prevent damage.",
        passageMy:
            "သူ၏ သံလိုက်ဗေဒလက်တွေ့စမ်းသပ်မှုအတွက် ဝေယံသည် ရွှမ်းအနှောင့်ကာကြိုးကို သံခြေချောင်းတစ်ချောင်းပတ်လျက် ဘက်ထရီသို့ အစွန်းများကို ချိတ်ဆက်ပေးပြီး ရိုးရှင်းသော လျှပ်စစ်သံလိုက်တစ်ခု တည်ဆောက်ခဲ့သည်။ ၎င်း၏ သံလိုက်အားကို တိုင်းတာသည့်အနေဖြင့် လျှပ်စစ်သံလိုက်သည် စက္ကူညှပ်ငယ်များကို မည်မျှစုစည်းနိုင်ကြောင်း စမ်းသပ်ခဲ့ပြီး၊ ဘက်ထရီနှင့်ချောင်းကို တစ်လျှောက်လုံး တူညီအောင်ထားကာ မျှတသောစမ်းသပ်မှုအတွက် ကိန်းရှင်တစ်ခုကိုသာ တစ်ကြိမ်တွင် ပြောင်းလဲခဲ့သည်။\n\nပထမဆုံးအနေဖြင့် ဝေယံသည် ကွင်းအလှည့်အရေအတွက်ကို နှစ်ဆယ်ခုတွင် တစ်သားတည်း ထားခဲ့ပြီး ဗို့အားမတူညီသော ဘက်ထရီများကို ဖလှယ်ခြင်းဖြင့် မတူညီသောလျှပ်စီးကြောင်းသုံးခု စမ်းသပ်ခဲ့သည်။ လျှပ်စီးကြောင်း တိုးလာသည်နှင့်အမျှ လျှပ်စစ်သံလိုက် ချီးပေးနိုင်သော စက္ကူညှပ်အရေအတွက်လည်း တိုးလာခဲ့ပြီး၊ ပို၍များသောလျှပ်စီးကြောင်းက ပို၍အားကောင်းသောသံလိုက်စက်ကွင်းကို ဖြစ်ပေါ်စေကြောင်း အတည်ပြုခဲ့သည်။\n\nထို့နောက် ဝေယံသည် လျှပ်စီးကြောင်းကို တစ်သားတည်းထားခဲ့ပြီး ကွင်းအလှည့်အရေအတွက်ကို ချောင်းတစ်ချောင်းတည်းတွင် ဆယ်ခု၊ နှစ်ဆယ်ခုနှင့် သုံးဆယ်ခု ပြောင်းလဲစမ်းသပ်ခဲ့သည်။ ထပ်တိုးလာသည်နှင့်အမျှ ကွင်းအလှည့်ပို၍များသောအခါ ပို၍များသော စက္ကူညှပ်များကို ချီးပေးနိုင်ခဲ့ပြီး၊ ကွင်းအလှည့်အရေအတွက် တိုးမြှင့်ခြင်းကလည်း စက်ကွင်းကို ပို၍အားကောင်းစေကြောင်း ထပ်မံအတည်ပြုခဲ့သည်။ နောက်ဆုံးနှိုင်းယှဉ်ချက်အနေဖြင့် ဝေယံသည် သံခြေချောင်းကို လုံးဝ ဖယ်ရှားပြီး ကွင်းအတွင်း လေသာရှိသော တူညီသောကွင်းနှင့် လျှပ်စီးကြောင်းကို စမ်းသပ်ခဲ့သည် -- ၎င်းသည် စက္ကူညှပ်တစ်ခုကိုပင် တောင်ကနဲ ချီနိုင်ခဲ့ပြီး၊ သံဓာတ်အနှစ်ထားရှိချိန်ထက် ဆိုးရွားစွာ အားနည်းသွားခဲ့သည်၊ အကြောင်းမှာ သံဓာတ်သည် လေထက် သံလိုက်စက်ကွင်းကို ပို၍စုစည်း၍ ပို၍အားကောင်းစေနိုင်သောကြောင့်ဖြစ်သည်။ သူ၏ ဆရာက ဤစူးစမ်းလေ့လာမှုကို ပတ်လမ်းလုံခြုံရေးနှင့် ပြန်လည်ချိတ်ဆက်ပြောပြခဲ့သည်: ကွင်းအလှည့်နှင့် လျှပ်စီးကြောင်း မှန်ကန်စွာ ရွေးချယ်ခြင်းက လျှပ်စစ်သံလိုက်၏ အားကို ရည်ရွယ်ချက်ရှိရှိ ထိန်းချုပ်ပေးသည့်နည်းတူ၊ ပတ်လမ်းအတွက် မှန်ကန်သော သတ်မှတ်ချက်ရှိသောဖျူးစ်ကို ရွေးချယ်ခြင်းက ပျက်စီးမှုကို ကာကွယ်ရန် ပတ်လမ်းကို ရည်ရွယ်ချက်ရှိရှိ ဖြတ်တောက်မီ လျှပ်စီးကြောင်းမည်မျှစီးဆင်းခွင့်ပြုမည်ကို ထိန်းချုပ်ပေးသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What happened as Wai Yan increased the current, keeping coil turns fixed?",
            questionMy:
                "ကွင်းအလှည့်ကို တစ်သားတည်းထားပြီး ဝေယံသည် လျှပ်စီးကြောင်းတိုးမြှင့်လိုက်သောအခါ အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "The number of paperclips the electromagnet could lift also increased",
              "The electromagnet stopped working entirely",
              "The number of paperclips decreased",
              "Nothing changed at all",
            ],
            optionsMy: [
              "လျှပ်စစ်သံလိုက် ချီနိုင်သော စက္ကူညှပ်အရေအတွက်လည်း တိုးလာခဲ့ခြင်း",
              "လျှပ်စစ်သံလိုက် လုံးဝ အလုပ်လုပ်ခြင်း ရပ်တန့်သွားခဲ့ခြင်း",
              "စက္ကူညှပ်အရေအတွက် လျော့ကျသွားခဲ့ခြင်း",
              "မည်သည့်အရာမျှ မပြောင်းလဲခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of increasing current.",
              "Higher current produces a stronger magnetic field, able to lift more paperclips.",
            ],
            hintsMy: [
              "လျှပ်စီးကြောင်းတိုးမြှင့်ခြင်းကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ပို၍များသောလျှပ်စီးကြောင်းက ပို၍အားကောင်းသောသံလိုက်စက်ကွင်းကို ဖြစ်ပေါ်စေပြီး ပို၍များသောစက္ကူညှပ်များကို ချီနိုင်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What happened when Wai Yan increased the number of coil turns, keeping current fixed?",
            questionMy:
                "လျှပ်စီးကြောင်းကို တစ်သားတည်းထားပြီး ဝေယံသည် ကွင်းအလှည့်အရေအတွက် တိုးမြှင့်လိုက်သောအခါ အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "More coil turns also picked up more paperclips",
              "More coil turns picked up fewer paperclips",
              "The wire melted immediately",
              "The nail turned into a permanent magnet instantly",
            ],
            optionsMy: [
              "ကွင်းအလှည့်ပို၍များသောအခါ ပို၍များသောစက္ကူညှပ်များကို ချီနိုင်ခဲ့ခြင်း",
              "ကွင်းအလှည့်ပို၍များသောအခါ ပို၍နည်းသောစက္ကူညှပ်များကိုသာ ချီနိုင်ခဲ့ခြင်း",
              "ကြိုးသည် ချက်ချင်းလျှင် အရည်ပျော်သွားခဲ့ခြင်း",
              "ချောင်းသည် ချက်ချင်းလျှင် အမြဲတမ်းသံလိုက်အဖြစ် ပြောင်းသွားခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of varying coil turns.",
              "More coil turns also strengthen the magnetic field, matching the pattern seen with increased current.",
            ],
            hintsMy: [
              "ကွင်းအလှည့်ပြောင်းလဲခြင်းကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ကွင်းအလှည့်ပို၍များခြင်းသည်လည်း လျှပ်စီးကြောင်းတိုးမြှင့်ခြင်းနှင့် တွေ့ရသော ပုံစံတူညီစွာ သံလိုက်စက်ကွင်းကို အားကောင်းစေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What happened when Wai Yan removed the iron nail entirely?",
            questionMy:
                "ဝေယံသည် သံခြေချောင်းကို လုံးဝ ဖယ်ရှားလိုက်သောအခါ အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "The electromagnet became dramatically weaker, barely lifting a single paperclip",
              "The electromagnet became much stronger",
              "Nothing changed at all",
              "The battery stopped working",
            ],
            optionsMy: [
              "လျှပ်စစ်သံလိုက် ဆိုးရွားစွာ အားနည်းသွားခဲ့ပြီး စက္ကူညှပ်တစ်ခုကိုပင် တောင်ကနဲသာ ချီနိုင်ခဲ့ခြင်း",
              "လျှပ်စစ်သံလိုက် များစွာ ပို၍အားကောင်းလာခဲ့ခြင်း",
              "မည်သည့်အရာမျှ မပြောင်းလဲခဲ့ခြင်း",
              "ဘက်ထရီ အလုပ်ရပ်တန့်သွားခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of testing without the iron core.",
              "Iron concentrates and strengthens the magnetic field far more effectively than air.",
            ],
            hintsMy: [
              "သံဓာတ်အနှစ်မပါဘဲ စမ်းသပ်ခြင်းကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "သံဓာတ်သည် လေထက် သံလိုက်စက်ကွင်းကို ပို၍ထိရောက်စွာ စုစည်း၍ ပို၍အားကောင်းစေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "How did Wai Yan's teacher connect the electromagnet investigation to circuit safety?",
            questionMy:
                "ဝေယံ၏ဆရာသည် လျှပ်စစ်သံလိုက်စူးစမ်းလေ့လာမှုကို ပတ်လမ်းလုံခြုံရေးနှင့် မည်သို့ ချိတ်ဆက်ပြောပြခဲ့သနည်း။",
            optionsEn: [
              "Choosing a correctly rated fuse controls how much current is allowed before the circuit breaks, similar to controlling an electromagnet's strength deliberately",
              "Fuses and electromagnets have no connection at all",
              "Electromagnets always need a fuse to work",
              "Fuses are made from iron nails",
            ],
            optionsMy: [
              "မှန်ကန်သတ်မှတ်ချက်ရှိသောဖျူးစ်ကို ရွေးချယ်ခြင်းက ပတ်လမ်းဖြတ်တောက်မီ လျှပ်စီးကြောင်းမည်မျှစီးဆင်းခွင့်ပြုမည်ကို ထိန်းချုပ်ပြီး၊ လျှပ်စစ်သံလိုက်အားကို ရည်ရွယ်ချက်ရှိရှိ ထိန်းချုပ်ခြင်းနှင့် ဆင်တူခြင်း",
              "ဖျူးစ်များနှင့် လျှပ်စစ်သံလိုက်များသည် မည်သည့်ဆက်စပ်မှုမျှမရှိခြင်း",
              "လျှပ်စစ်သံလိုက်များသည် အလုပ်လုပ်ရန် ဖျူးစ်တစ်ခု အမြဲလိုအပ်ခြင်း",
              "ဖျူးစ်များကို သံခြေချောင်းများမှ ပြုလုပ်ထားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Both ideas are about deliberately controlling how much current is allowed to flow.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အယူအဆနှစ်ခုစလုံးသည် လျှပ်စီးကြောင်းမည်မျှစီးဆင်းခွင့်ပြုမည်ကို ရည်ရွယ်ချက်ရှိရှိ ထိန်းချုပ်ခြင်းနှင့်ပတ်သက်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w34-d5",
      dayNumber: 5,
      titleEn: "Week 34 Recap: Circuit Safety and Magnetism",
      titleMy:
          "အပတ်စဉ် ၃၄ ပြန်လည်သုံးသပ်ခြင်း - ပတ်လမ်းလုံခြုံရေးနှင့် သံလိုက်စွမ်းပကား",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Power equals current multiplied by...",
          questionMy:
              "ပါဝါသည် လျှပ်စီးကြောင်းကို မည်သည့်အရာနှင့် မြှောက်ခြင်းနှင့် ညီသနည်း။",
          optionsEn: ["Voltage", "Resistance only", "Time only", "Frequency"],
          optionsMy: ["ဗို့အား", "ခံနိုင်ရည်သာ", "အချိန်သာ", "ကြိမ်နှုန်း"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A fuse works by...",
          questionMy: "ဖျူးစ်တစ်ခုသည် မည်သို့ အလုပ်လုပ်သနည်း။",
          optionsEn: [
            "Melting when current is too high",
            "Increasing voltage",
            "Storing energy",
            "Cooling the wires",
          ],
          optionsMy: [
            "လျှပ်စီးကြောင်းများလွန်းသောအခါ ပျော်ကျခြင်း",
            "ဗို့အားတိုးမြှင့်ခြင်း",
            "စွမ်းအင်သိုလှောင်ခြင်း",
            "ကြိုးများကို အေးမြစေခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An electromagnet's strength increases with...",
          questionMy:
              "လျှပ်စစ်သံလိုက်တစ်ခု၏ အားသည် မည်သည့်အရာနှင့်အတူ တိုးလာသနည်း။",
          optionsEn: [
            "More current and more coil turns",
            "Less current only",
            "Removing the iron core",
            "No connection at all",
          ],
          optionsMy: [
            "ပို၍များသောလျှပ်စီးကြောင်းနှင့် ကွင်းအလှည့်ပို၍များခြင်း",
            "လျှပ်စီးကြောင်းနည်းခြင်းသာ",
            "သံဓာတ်အနှစ်ကို ဖယ်ရှားခြင်း",
            "မည်သည့်ဆက်စပ်မှုမျှမရှိ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "The magnetic field around a straight current-carrying wire forms...",
          questionMy:
              "ဒေါင်လိုက်လျှပ်စီးကြောင်းသယ်ဆောင်ကြိုးတစ်ခုဝန်းကျင်ရှိ သံလိုက်စက်ကွင်းသည် မည်သို့သောပုံစံ ဖြစ်ပေါ်စေသနည်း။",
          optionsEn: [
            "Concentric circles",
            "A straight line",
            "No pattern at all",
            "A single point",
          ],
          optionsMy: [
            "အလယ်ဗဟိုတူ အဝိုင်းများ",
            "ဖြောင့်တန်းသောမျဉ်း",
            "ပုံစံ လုံးဝမရှိပါ",
            "အမှတ်တစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Unlike a fuse, a circuit breaker can be...",
          questionMy:
              "ဖျူးစ်နှင့်မတူဘဲ ပတ်လမ်းဖြတ်တောက်ကိရိယာကို မည်သို့ ပြုလုပ်နိုင်သနည်း။",
          optionsEn: [
            "Reset and reused",
            "Used only once ever",
            "Melted permanently",
            "Ignored entirely",
          ],
          optionsMy: [
            "ပြန်လည်သတ်မှတ်၍ ထပ်မံအသုံးပြုနိုင်ခြင်း",
            "တစ်ကြိမ်တည်းသာ အသုံးပြုနိုင်ခြင်း",
            "အမြဲတမ်း ပျော်ကျသွားခြင်း",
            "လုံးဝ လျစ်လျူရှုနိုင်ခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 35: "Combined Science Comprehensive Revision" (Exam Prep)
// =====================================================================

const CourseWeekDef _igcseCombSciWeek35 = CourseWeekDef(
  id: "course-igcse-combsci-w35",
  weekNumber: 35,
  titleEn: "Combined Science Comprehensive Revision",
  titleMy: "ပေါင်းစပ်သိပ္ပံ ခြုံငုံသုံးသပ် လေ့ကျင့်ခန်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w35-d1",
      dayNumber: 1,
      titleEn: "Biology, Chemistry and Physics Recap Quiz",
      titleMy: "ဇီဝဗေဒ၊ ဓာတုဗေဒနှင့် ရူပဗေဒ ခြုံငုံသုံးသပ်ချက် ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Osmosis is the movement of water molecules from...",
          questionMy:
              "Osmosis သည် ရေမော်လီကျူးများ မည်သို့ရွေ့လျားခြင်းဖြစ်သနည်း။",
          optionsEn: [
            "A dilute solution to a concentrated solution, through a partially permeable membrane",
            "A concentrated solution to a dilute solution, through solid rock",
            "Any solution to any other solution equally in both directions with no net movement",
            "Only within animal cells, never in plants",
          ],
          optionsMy: [
            "တစ်စိတ်တစ်ပိုင်းသာဖြတ်သန်းနိုင်သောအမြှေးပါးကို ဖြတ်၍ ဖျော့သောဒြပ်ရည်မှ ပျစ်သောဒြပ်ရည်သို့",
            "ကျောက်တုံးအစိုင်အခဲကိုဖြတ်၍ ပျစ်သောဒြပ်ရည်မှ ဖျော့သောဒြပ်ရည်သို့",
            "ဦးတည်ချက်နှစ်ခုစလုံးတွင် တူညီစွာ ခြားနားမှုမရှိသော ရွေ့လျားမှု",
            "တိရစ္ဆာန်ဆဲလ်များတွင်သာ၊ အပင်များတွင် ဘယ်တော့မှမဖြစ်ပေါ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is a Term 1 concept -- osmosis is a special case of diffusion involving water specifically, across a partially permeable membrane.",
            "Water moves down its own concentration gradient, from where it is more concentrated to where it is less concentrated.",
          ],
          hintsMy: [
            "ဤသည်မှာ ပထမနှစ်ဝက်၏ အယူအဆဖြစ်ပြီး -- osmosis သည် တစ်စိတ်တစ်ပိုင်းသာဖြတ်သန်းနိုင်သောအမြှေးပါးကို ဖြတ်ကာ ရေအထူးအလုပ်လုပ်သော diffusion ၏ အထူးအမျိုးအစားတစ်ခုဖြစ်သည်။",
            "ရေသည် ၎င်း၏ ကိုယ်ပိုင်ပျစ်ဆေးအညွှန်းကို ကျဆင်း၍ ရွေ့လျားပြီး၊ ပို၍ပျစ်သောနေရာမှ ပို၍ဖျော့သောနေရာသို့ သွားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "The mole concept is used to calculate...",
          questionMy: "Mole အယူအဆကို မည်သည့်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Quantities of reactants and products in a chemical reaction",
            "Wave speed only",
            "Body temperature only",
            "Genetic ratios only",
          ],
          optionsMy: [
            "ဓာတုတုံ့ပြန်မှုတစ်ခုရှိ တုံ့ပြန်ပစ္စည်းများနှင့် ထွက်ကုန်များ၏ ပမာဏများ",
            "လှိုင်းအမြန်နှုန်းသာ",
            "ခန္ဓာကိုယ်အပူချိန်သာ",
            "မျိုးရိုးဗီဇအချိုးများသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is a Term 2 concept -- the mole links the mass of a substance to the number of particles it contains.",
            "It allows chemists to calculate exact quantities needed for balanced equations, not just qualitative descriptions.",
          ],
          hintsMy: [
            "ဤသည်မှာ ဒုတိယနှစ်ဝက်၏ အယူအဆဖြစ်ပြီး -- Mole သည် ဒြပ်ဝတ္ထုတစ်ခု၏ အလေးချိန်ကို ၎င်းပါဝင်သော အမှုန်အရေအတွက်နှင့် ချိတ်ဆက်ပေးသည်။",
            "၎င်းက ဓာတုပညာရှင်များကို ရိုးရှင်းသောအရည်အသွေးဖော်ပြချက်များထက် ချိန်ညှိထားသောညီမျှခြင်းများအတွက် လိုအပ်သော အတိအကျပမာဏများကို တွက်ချက်ခွင့်ပြုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Newton's second law of motion states that force equals...",
          questionMy:
              "နယူတန်၏ ရွေ့လျားမှုဒုတိယနိယာမအရ အားသည် မည်သို့ ညီမျှသနည်း။",
          optionsEn: [
            "Mass multiplied by acceleration (F = ma)",
            "Mass added to acceleration",
            "Mass divided by acceleration only, with no other relationship",
            "Mass alone, with acceleration having no effect",
          ],
          optionsMy: [
            "ထုထည်ကို အရှိန်နှင့် မြှောက်ခြင်း (F = ma)",
            "ထုထည်ကို အရှိန်နှင့် ပေါင်းခြင်း",
            "ထုထည်ကို အရှိန်နှင့် စားခြင်းသာ၊ အခြားဆက်စပ်မှု မရှိ",
            "ထုထည်တစ်ခုတည်း၊ အရှိန်က မည်သို့မျှသက်ရောက်မှုမရှိ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is a Term 3 concept -- for a fixed mass, a larger force produces a larger acceleration.",
            "Rearranging gives a = F/m, showing that a heavier object needs more force to achieve the same acceleration.",
          ],
          hintsMy: [
            "ဤသည်မှာ တတိယနှစ်ဝက်၏ အယူအဆဖြစ်ပြီး -- ထုထည်တည်ငြိမ်နေချိန်တွင် အားပို၍များပါက အရှိန်ပို၍များသည်။",
            "ပြန်လည်စီစဉ်ခြင်းက a = F/m ကို ပေးပြီး၊ ပို၍လေးသောအရာဝတ္ထုသည် တူညီသောအရှိန်ရရှိရန် အားပို၍လိုအပ်ကြောင်း ပြသသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "When reading an IGCSE exam question, the command word \"explain\" requires you to...",
          questionMy:
              "IGCSE စာမေးပွဲမေးခွန်းတစ်ခုကို ဖတ်ရှုသောအခါ command word \"explain\" သည် မည်သို့ ဖြေဆိုရန် လိုအပ်စေသနည်း။",
          optionsEn: [
            "Give reasons or causes, not just describe what happens",
            "Simply list facts with no reasoning at all",
            "Draw a diagram only, with no writing",
            "Only give a one-word answer",
          ],
          optionsMy: [
            "ဖြစ်ပျက်သည်ကို ဖော်ပြရုံသာမက အကြောင်းရင်း (သို့) အကြောင်းပြချက်များ ပေးရန်",
            "ဆင်ခြင်တွေးခေါ်မှု မပါဘဲ အချက်အလက်များကိုသာ ဖော်ပြရန်",
            "စာမပါဘဲ ပုံဆွဲပြရန်သာ",
            "စကားလုံးတစ်လုံးတည်းဖြင့်သာ ဖြေဆိုရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Command words tell you exactly what kind of answer an examiner expects -- \"describe\" and \"explain\" require different depths of answer.",
            "\"Explain\" specifically asks for the why behind an observation, using scientific reasoning, not just what was observed.",
          ],
          hintsMy: [
            "Command word များက စာစစ်ဆရာတစ်ဦးက မည်သို့သောအဖြေအမျိုးအစား မျှော်လင့်ကြောင်း အတိအကျ ပြောပြသည် -- \"describe\" နှင့် \"explain\" တို့သည် အဖြေအနက်ရှိုင်းမှု ကွဲပြားသည်။",
            "\"Explain\" သည် တွေ့ရှိချက်၏ နောက်ကွယ်ရှိ အကြောင်းရင်းကို သိပ္ပံဆိုင်ရာဆင်ခြင်တွေးခေါ်မှုဖြင့် တိကျစွာ တောင်းဆိုသည်၊ တွေ့ရှိချက်ကိုသာ ဖော်ပြခြင်း မဟုတ်ပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w35-d2",
      dayNumber: 2,
      titleEn: "Match the Whole-Year Vocabulary Review",
      titleMy:
          "တစ်နှစ်လုံး ဝေါဟာရများ ပြန်လည်သုံးသပ်ခြင်း ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w35-dm-1",
          termEn: "Enzyme",
          termMy: "အင်ဇိုင်း (Enzyme)",
          matchEn:
              "A biological catalyst that speeds up a specific metabolic reaction without being used up.",
          matchMy:
              "အသုံးမကုန်ဘဲ သီးခြားဇီဝဖြစ်စဉ်တုံ့ပြန်မှုတစ်ခုကို အရှိန်မြှင့်ပေးသော ဇီဝဓာတ်ကူပစ္စည်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w35-dm-2",
          termEn: "Mole",
          termMy: "Mole",
          matchEn:
              "A unit linking the mass of a substance to the number of particles it contains, used in chemical calculations.",
          matchMy:
              "ဓာတုတွက်ချက်မှုများတွင် အသုံးပြုသော၊ ဒြပ်ဝတ္ထုတစ်ခု၏ အလေးချိန်ကို ၎င်းပါဝင်သောအမှုန်အရေအတွက်နှင့် ချိတ်ဆက်ပေးသော ယူနစ်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w35-dm-3",
          termEn: "Newton's Second Law",
          termMy: "နယူတန်၏ ဒုတိယနိယာမ",
          matchEn:
              "The law stating that force equals mass multiplied by acceleration (F = ma).",
          matchMy:
              "အားသည် ထုထည်ကို အရှိန်နှင့် မြှောက်ခြင်းနှင့် ညီမျှသည် (F = ma) ဟု ဖော်ပြသောနိယာမ။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w35-dm-4",
          termEn: "Homeostasis",
          termMy: "Homeostasis",
          matchEn:
              "The maintenance of a constant internal environment despite changes outside the body.",
          matchMy:
              "ခန္ဓာကိုယ်ပြင်ပရှိ ပြောင်းလဲမှုများ ရှိနေသော်လည်း အတွင်းပိုင်းပတ်ဝန်းကျင်ကို ဆက်လက်ထိန်းသိမ်းခြင်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w35-dm-5",
          termEn: "Electromagnet",
          termMy: "လျှပ်စစ်သံလိုက် (Electromagnet)",
          matchEn:
              "A magnet created by passing an electric current through a coil of wire.",
          matchMy:
              "ကြိုးကွင်းတစ်ခုကို ဖြတ်၍ လျှပ်စီးကြောင်းစီးဆင်းစေခြင်းဖြင့် ဖန်တီးသော သံလိုက်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w35-d3",
      dayNumber: 3,
      titleEn: "Sort: Biology, Chemistry, or Physics?",
      titleMy: "စီစစ်ကြမည် - ဇီဝဗေဒ၊ ဓာတုဗေဒ (သို့) ရူပဗေဒ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Biology", "Chemistry", "Physics"],
        bucketsMy: ["ဇီဝဗေဒ", "ဓာတုဗေဒ", "ရူပဗေဒ"],
        items: [
          SortingItem(
            id: "igcsecs-w35-sort-1",
            labelEn: "Osmosis across a cell membrane",
            labelMy: "ဆဲလ်မြှေးပါးကိုဖြတ်၍ Osmosis",
            correctBucketEn: "Biology",
            correctBucketMy: "ဇီဝဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w35-sort-2",
            labelEn: "Natural selection and evolution",
            labelMy: "သဘာဝရွေးချယ်မှုနှင့် ဆင့်ကဲဖြစ်စဉ်",
            correctBucketEn: "Biology",
            correctBucketMy: "ဇီဝဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w35-sort-3",
            labelEn: "Hormonal control by the endocrine system",
            labelMy: "အင်ဒိုကရိန်းစနစ်ဖြင့် ဟိုမုန်းထိန်းချုပ်မှု",
            correctBucketEn: "Biology",
            correctBucketMy: "ဇီဝဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w35-sort-4",
            labelEn: "Balancing chemical equations using the mole concept",
            labelMy: "Mole အယူအဆအသုံးပြု၍ ဓာတုညီမျှခြင်းများ ချိန်ညှိခြင်း",
            correctBucketEn: "Chemistry",
            correctBucketMy: "ဓာတုဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w35-sort-5",
            labelEn: "The reactivity series of metals",
            labelMy: "သတ္တုများ၏ ဓာတ်ပြုနိုင်စွမ်း အစဉ်",
            correctBucketEn: "Chemistry",
            correctBucketMy: "ဓာတုဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w35-sort-6",
            labelEn: "Fractional distillation of crude oil",
            labelMy: "ရေနံကြမ်း fractional distillation",
            correctBucketEn: "Chemistry",
            correctBucketMy: "ဓာတုဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w35-sort-7",
            labelEn: "Newton's laws of motion",
            labelMy: "နယူတန်၏ ရွေ့လျားမှုနိယာမများ",
            correctBucketEn: "Physics",
            correctBucketMy: "ရူပဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w35-sort-8",
            labelEn: "The wave equation v = f x wavelength",
            labelMy: "လှိုင်းညီမျှခြင်း v = f x wavelength",
            correctBucketEn: "Physics",
            correctBucketMy: "ရူပဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w35-sort-9",
            labelEn: "Ohm's law relating voltage, current and resistance",
            labelMy:
                "ဗို့အား၊ လျှပ်စီးကြောင်းနှင့် ခံနိုင်ရည်တို့ကို ဆက်စပ်ပေးသော Ohm's law",
            correctBucketEn: "Physics",
            correctBucketMy: "ရူပဗေဒ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w35-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su Hlaing's Revision Strategy",
      titleMy: "စာဖတ်ခြင်း - စုစုလှိုင်၏ ပြန်လည်လေ့လာမှု နည်းဗျူဟာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su Hlaing's Revision Strategy",
        titleMy: "စုစုလှိုင်၏ ပြန်လည်လေ့လာမှု နည်းဗျူဟာ",
        passageEn:
            "With the IGCSE Combined Science exam approaching, Su Su Hlaing built a structured revision timetable covering all three sciences rather than cramming everything in a single long session the night before. She divided her available weeks into rotating blocks -- biology one day, chemistry the next, physics after that -- deliberately mixing the subjects rather than finishing one entirely before starting another, since research on learning suggests interleaved practice like this builds stronger, more flexible understanding than blocking a single topic together.\n\nFor each topic, Su Su Hlaing used active recall instead of simply rereading her notes: she closed her textbook and tried to write out everything she remembered about a topic such as osmosis or Newton's laws from memory first, only checking her notes afterward to identify gaps. She found this method uncomfortable at first, since it exposed exactly what she did not yet know, but far more effective than the passive feeling of rereading notes that already looked familiar.\n\nSu Su Hlaing also practised past exam papers under timed conditions, paying close attention to command words like \"describe,\" \"explain,\" and \"calculate,\" since she had lost marks in earlier practice by writing a description when the question asked her to explain the reasoning behind an observation. She kept a running list of every mistake she made on practice papers, revisiting that list in her final week to make sure she genuinely understood why each error had happened rather than just correcting the answer and moving on.",
        passageMy:
            "IGCSE ပေါင်းစပ်သိပ္ပံ စာမေးပွဲ ရောက်ရှိတော့မည်ဖြစ်၍ စုစုလှိုင်သည် ညမီ အားလုံးကို တစ်ကြိမ်ရှည်ရှည်ကြာအောင် အာရုံစူးစိုက်ကျက်မှတ်ခြင်းအစား သိပ္ပံဘာသာရပ်သုံးခုလုံးကို ဖုံးအုပ်သော ဖွဲ့စည်းထားသည့် ပြန်လည်လေ့လာမှုအချိန်ဇယားတစ်ခုကို တည်ဆောက်ခဲ့သည်။ သူမသည် ရရှိနိုင်သောအပတ်များကို လှည့်ပတ်ဘလောက်များအဖြစ် ခွဲခြားခဲ့သည် -- တစ်ရက်ဇီဝဗေဒ၊ နောက်တစ်ရက် ဓာတုဗေဒ၊ ထို့နောက် ရူပဗေဒ -- ဘာသာရပ်တစ်ခုကို လုံးဝပြီးမြောက်အောင်လုပ်ပြီးမှ အခြားတစ်ခုကို စတင်ခြင်းအစား ရည်ရွယ်ချက်ရှိရှိ ရောစပ်ခဲ့သည်၊ အကြောင်းမှာ သင်ယူမှုဆိုင်ရာ သုတေသနက ဤကဲ့သို့ ဆက်စပ်ရောစပ် လေ့ကျင့်ခြင်းသည် ဘာသာရပ်တစ်ခုတည်းကို အုပ်စုဖွဲ့ခြင်းထက် ပို၍ခိုင်မာ၍ ပို၍ပြောင်းလွယ်ပြင်လွယ်သော နားလည်မှုကို တည်ဆောက်ပေးကြောင်း အကြံပြုသောကြောင့်ဖြစ်သည်။\n\nဘာသာရပ်တစ်ခုစီအတွက် စုစုလှိုင်သည် ၎င်း၏ မှတ်စုများကို ရိုးရိုးရှင်းရှင်း ပြန်ဖတ်ခြင်းအစား active recall ကို အသုံးပြုခဲ့သည်: သူမသည် ၎င်း၏ကျောင်းသုံးစာအုပ်ကို ပိတ်ပြီး osmosis (သို့) နယူတန်၏ နိယာမများကဲ့သို့သော ဘာသာရပ်တစ်ခုနှင့်ပတ်သက်၍ မှတ်ဉာဏ်ထဲမှ သူမမှတ်မိသမျှကို ဦးစွာရေးထုတ်ရန် ကြိုးစားခဲ့ပြီး၊ အားနည်းချက်များကို ဖော်ထုတ်ရန် ၎င်း၏မှတ်စုများကို ထို့နောက်တွင်သာ စစ်ဆေးခဲ့သည်။ ၎င်းက သူမမသိသေးသည်ကို အတိအကျ ဖော်ထုတ်စေသောကြောင့် ဤနည်းလမ်းသည် အစပိုင်းတွင် သက်တောင့်သက်သာမရှိကြောင်း သူမတွေ့ရှိခဲ့သော်လည်း ရင်းနှီးနေဟန်ရှိသော မှတ်စုများကို ပြန်ဖတ်ခြင်း၏ passive ခံစားချက်ထက် များစွာ ပို၍ထိရောက်ကြောင်း တွေ့ရှိခဲ့သည်။\n\nစုစုလှိုင်သည် \"describe,\" \"explain,\" နှင့် \"calculate\" ကဲ့သို့သော command word များကို ဂရုတစိုက် အာရုံစိုက်ကာ အချိန်သတ်မှတ်ချက်ဖြင့် ယခင်စာမေးပွဲစာရွက်များကို လေ့ကျင့်ခဲ့သည်၊ အကြောင်းမှာ မေးခွန်းက တွေ့ရှိချက်တစ်ခု၏ နောက်ကွယ်ရှိ ဆင်ခြင်တွေးခေါ်မှုကို ရှင်းပြရန်တောင်းဆိုချိန်တွင် ဖော်ပြချက်တစ်ခုသာ ရေးသားခဲ့ခြင်းကြောင့် ယခင်လေ့ကျင့်မှုများတွင် အမှတ်များ ဆုံးရှုံးခဲ့ဖူးသောကြောင့်ဖြစ်သည်။ သူမသည် လေ့ကျင့်စာရွက်များတွင် ပြုမိသော အမှားတိုင်းကို စာရင်းတစ်ခုအဖြစ် ဆက်လက်ထိန်းသိမ်းထားခဲ့ပြီး၊ အဖြေကို ပြုပြင်ကာ ရှေ့ဆက်သွားခြင်းသာမက အမှားတစ်ခုစီ အဘယ်ကြောင့် ဖြစ်ပျက်ခဲ့ကြောင်း သူမ အမှန်တကယ် နားလည်ကြောင်း သေချာစေရန် နောက်ဆုံးအပတ်တွင် ထိုစာရင်းကို ပြန်လည် ကြည့်ရှုခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Why did Su Su Hlaing deliberately mix subjects rather than finishing one before starting another?",
            questionMy:
                "စုစုလှိုင်သည် ဘာသာရပ်တစ်ခုကို လုံးဝပြီးမြောက်အောင်လုပ်ပြီးမှ အခြားတစ်ခုကို စတင်ခြင်းအစား ဘာသာရပ်များကို အဘယ်ကြောင့် ရည်ရွယ်ချက်ရှိရှိ ရောစပ်ခဲ့သနည်း။",
            optionsEn: [
              "Interleaved practice builds stronger, more flexible understanding than blocking a single topic together",
              "It was simply faster to switch subjects every day",
              "Her school required it",
              "She disliked chemistry and wanted to avoid it",
            ],
            optionsMy: [
              "ဆက်စပ်ရောစပ်လေ့ကျင့်ခြင်းသည် ဘာသာရပ်တစ်ခုတည်းကို အုပ်စုဖွဲ့ခြင်းထက် ပို၍ခိုင်မာ၍ ပို၍ပြောင်းလွယ်ပြင်လွယ်သော နားလည်မှုကို တည်ဆောက်ပေးသောကြောင့်",
              "ဘာသာရပ်များကို နေ့စဉ်ပြောင်းရန် ရိုးရိုးရှင်းရှင်း ပို၍မြန်ခဲ့သောကြောင့်",
              "သူမ၏ကျောင်းက ဤသို့လုပ်ရန် တောင်းဆိုခဲ့သောကြောင့်",
              "ဓာတုဗေဒကို သူမ မနှစ်သက်ဘဲ ရှောင်ကြဉ်လိုခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first paragraph's explanation of interleaved practice.",
              "Research suggests this rotating approach builds more durable understanding than studying one topic in one long block.",
            ],
            hintsMy: [
              "ဆက်စပ်ရောစပ်လေ့ကျင့်ခြင်းကို ရှင်းပြထားသည့် ပထမစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "သုတေသနက ဤလှည့်ပတ်နည်းလမ်းသည် ဘာသာရပ်တစ်ခုကို တစ်ကြိမ်ရှည်ရှည်လေ့လာခြင်းထက် ပို၍ရေရှည်တည်တံ့သော နားလည်မှုကို တည်ဆောက်ကြောင်း အကြံပြုသည်။",
            ],
          ),
          QuizQuestion(
            questionEn: "What was active recall, as Su Su Hlaing used it?",
            questionMy:
                "Active recall ကို စုစုလှိုင် မည်သို့ အသုံးပြုခဲ့သနည်း။",
            optionsEn: [
              "Writing out everything remembered about a topic from memory before checking notes",
              "Simply rereading her notes over and over",
              "Copying her notes out word for word",
              "Never checking her notes at all",
            ],
            optionsMy: [
              "မှတ်စုများ မစစ်ဆေးမီ ဘာသာရပ်တစ်ခုနှင့်ပတ်သက်၍ မှတ်ဉာဏ်ထဲမှ မှတ်မိသမျှကို ရေးထုတ်ခြင်း",
              "မှတ်စုများကို ထပ်ခါထပ်ခါ ရိုးရိုးရှင်းရှင်း ပြန်ဖတ်ခြင်း",
              "မှတ်စုများကို စကားလုံးအတိုင်း ကူးယူခြင်း",
              "မှတ်စုများကို ဘယ်တော့မှ လုံးဝ မစစ်ဆေးခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of active recall.",
              "Only after writing from memory did Su Su Hlaing check her notes, to identify gaps.",
            ],
            hintsMy: [
              "Active recall ကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "မှတ်ဉာဏ်မှ ရေးထုတ်ပြီးမှသာ စုစုလှိုင်သည် ၎င်း၏မှတ်စုများကို အားနည်းချက်များ ဖော်ထုတ်ရန် စစ်ဆေးခဲ့သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why had Su Su Hlaing lost marks in earlier practice papers?",
            questionMy:
                "စုစုလှိုင်သည် ယခင်လေ့ကျင့်စာမေးပွဲစာရွက်များတွင် အဘယ်ကြောင့် အမှတ်များ ဆုံးရှုံးခဲ့သနည်း။",
            optionsEn: [
              "She wrote a description when the question's command word asked her to explain",
              "She ran out of time before starting",
              "She wrote in the wrong language entirely",
              "She never attempted any past papers",
            ],
            optionsMy: [
              "မေးခွန်း၏ command word က ရှင်းပြရန် တောင်းဆိုချိန်တွင် ဖော်ပြချက်တစ်ခုသာ ရေးသားခဲ့ခြင်းကြောင့်",
              "မစတင်မီ အချိန်ကုန်သွားခဲ့ခြင်းကြောင့်",
              "မှားယွင်းသောဘာသာစကားဖြင့် လုံးဝ ရေးသားခဲ့ခြင်းကြောင့်",
              "ယခင်စာမေးပွဲစာရွက်များကို ဘယ်တော့မှ မစမ်းသပ်ခဲ့ခြင်းကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation of her command word mistake.",
              "\"Explain\" and \"describe\" require different depths of answer, and mixing them up costs marks.",
            ],
            hintsMy: [
              "Command word အမှားကို ရှင်းပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "\"Explain\" နှင့် \"describe\" သည် အဖြေအနက်ရှိုင်းမှု ကွဲပြားကြပြီး၊ ရောထွေးခြင်းက အမှတ်များ ဆုံးရှုံးစေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Su Su Hlaing do with her list of practice-paper mistakes?",
            questionMy:
                "စုစုလှိုင်သည် ၎င်း၏ လေ့ကျင့်စာရွက်အမှားစာရင်းကို မည်သို့ အသုံးချခဲ့သနည်း။",
            optionsEn: [
              "Revisited it in her final week to genuinely understand why each error happened",
              "Threw it away immediately after each practice paper",
              "Never looked at it again",
              "Only counted the total number of mistakes without reviewing them",
            ],
            optionsMy: [
              "အမှားတစ်ခုစီ အဘယ်ကြောင့် ဖြစ်ပျက်ခဲ့ကြောင်း အမှန်တကယ် နားလည်ရန် နောက်ဆုံးအပတ်တွင် ပြန်လည်ကြည့်ရှုခဲ့ခြင်း",
              "လေ့ကျင့်စာရွက်တစ်ခုစီပြီးနောက် ချက်ချင်းစွန့်ပစ်ခဲ့ခြင်း",
              "ထပ်မံ လုံးဝ ကြည့်ရှုခြင်းမရှိခဲ့ခြင်း",
              "ပြန်လည်စစ်ဆေးခြင်းမရှိဘဲ အမှားစုစုပေါင်းအရေအတွက်ကိုသာ ရေတွက်ခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Understanding why an error happened prevents repeating it, unlike simply correcting the answer and moving on.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အမှားတစ်ခု အဘယ်ကြောင့်ဖြစ်ပျက်ခဲ့ကြောင်း နားလည်ခြင်းက ၎င်းကို ထပ်မံမပြုမိစေရန် ကာကွယ်ပေးပြီး၊ အဖြေကိုသာ ပြုပြင်ကာ ရှေ့ဆက်သွားခြင်းနှင့် ကွဲပြားသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w35-d5",
      dayNumber: 5,
      titleEn: "Week 35 Recap: Comprehensive Revision",
      titleMy: "အပတ်စဉ် ၃၅ ပြန်လည်သုံးသပ်ခြင်း - ခြုံငုံသုံးသပ်ချက်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Interleaved revision means...",
          questionMy:
              "ဆက်စပ်ရောစပ်လေ့ကျင့်ခြင်း (Interleaved revision) ဆိုသည်မှာ အဘယ်အရာကို ဆိုလိုသနည်း။",
          optionsEn: [
            "Mixing subjects rather than blocking one topic at a time",
            "Studying only one subject forever",
            "Never reviewing past mistakes",
            "Ignoring command words",
          ],
          optionsMy: [
            "တစ်ကြိမ်လျှင် ဘာသာရပ်တစ်ခုတည်း အုပ်စုဖွဲ့ခြင်းအစား ဘာသာရပ်များ ရောစပ်ခြင်း",
            "ဘာသာရပ်တစ်ခုတည်းကိုသာ ထာဝစဉ် လေ့လာခြင်း",
            "ယခင်အမှားများကို ဘယ်တော့မှ ပြန်လည်မကြည့်ရှုခြင်း",
            "Command word များကို လျစ်လျူရှုခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Active recall involves...",
          questionMy: "Active recall တွင် အဘယ်အရာ ပါဝင်သနည်း။",
          optionsEn: [
            "Writing from memory before checking notes",
            "Only rereading notes passively",
            "Ignoring the topic entirely",
            "Copying notes word for word",
          ],
          optionsMy: [
            "မှတ်စုမစစ်ဆေးမီ မှတ်ဉာဏ်မှ ရေးထုတ်ခြင်း",
            "မှတ်စုများကို passive ဖြင့်သာ ပြန်ဖတ်ခြင်း",
            "ဘာသာရပ်ကို လုံးဝ လျစ်လျူရှုခြင်း",
            "မှတ်စုများကို စကားလုံးအတိုင်း ကူးယူခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The command word \"explain\" requires...",
          questionMy:
              "Command word \"explain\" သည် မည်သို့သောအဖြေ တောင်းဆိုသနည်း။",
          optionsEn: [
            "Reasons or causes",
            "A description only",
            "A single word",
            "A drawing only",
          ],
          optionsMy: [
            "အကြောင်းရင်း (သို့) အကြောင်းပြချက်များ",
            "ဖော်ပြချက်တစ်ခုသာ",
            "စကားလုံးတစ်လုံးတည်း",
            "ပုံဆွဲခြင်းသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "F = ma is a formula from...",
          questionMy: "F = ma သည် မည်သည့်ဘာသာရပ်မှ ဖော်မြူလာဖြစ်သနည်း။",
          optionsEn: ["Physics", "Biology", "Chemistry", "Geography"],
          optionsMy: ["ရူပဗေဒ", "ဇီဝဗေဒ", "ဓာတုဗေဒ", "ပထဝီဝင်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The mole concept belongs to...",
          questionMy: "Mole အယူအဆသည် မည်သည့်ဘာသာရပ်နှင့် သက်ဆိုင်သနည်း။",
          optionsEn: ["Chemistry", "Biology", "Physics", "History"],
          optionsMy: ["ဓာတုဗေဒ", "ဇီဝဗေဒ", "ရူပဗေဒ", "သမိုင်း"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 36 (Capstone): "IGCSE Combined Science Mock Examinations"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek36 = CourseWeekDef(
  id: "course-igcse-combsci-w36",
  weekNumber: 36,
  titleEn: "IGCSE Combined Science Mock Examinations",
  titleMy: "IGCSE ပေါင်းစပ်သိပ္ပံ ပုံစံတူ စာမေးပွဲများ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w36-d1",
      dayNumber: 1,
      titleEn: "Mock Multiple Choice Paper",
      titleMy: "ပုံစံတူ ရွေးချယ်ဖြေဆိုရမည့် မေးခွန်းစာရွက်",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which process transfers heat energy by electromagnetic waves, needing no medium?",
          questionMy:
              "မည်သည့်လုပ်ငန်းစဉ်သည် အလယ်အလတ်ပစ္စည်း မလိုအပ်ဘဲ လျှပ်စစ်သံလိုက်လှိုင်းများဖြင့် အပူစွမ်းအင်ကို ကူးပြောင်းသနည်း။",
          optionsEn: ["Radiation", "Conduction", "Convection", "Osmosis"],
          optionsMy: [
            "ရေဒီယေးရှင်း",
            "ကွန်ဒတ်ရှင်း",
            "ကွန်ဗက်ရှင်း",
            "Osmosis",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the same method by which thermal energy from the Sun reaches Earth across empty space.",
            "Unlike conduction and convection, this method needs no particles to travel through.",
          ],
          hintsMy: [
            "ဤသည်မှာ နေမှ အပူစွမ်းအင် ဟင်းလင်းအာကာသကိုဖြတ်၍ ကမ္ဘာသို့ဆိုက်ရောက်ပုံ နည်းလမ်းအတိအကျပင်ဖြစ်သည်။",
            "ကွန်ဒတ်ရှင်းနှင့် ကွန်ဗက်ရှင်းနှင့်မတူဘဲ ဤနည်းလမ်းသည် ဖြတ်သန်းရန် အမှုန်များ မလိုအပ်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a monohybrid cross Aa x aa, what fraction of offspring is expected to be heterozygous (Aa)?",
          questionMy:
              "Monohybrid cross Aa x aa တွင် သားရင်ဇာတ်များ၏ မည်သည့်အပိုင်းအစသည် heterozygous (Aa) ဖြစ်မည်ဟု ခန့်မှန်းရသနည်း။",
          optionsEn: ["1/2", "1/4", "3/4", "0"],
          optionsMy: ["1/2", "1/4", "3/4", "0"],
          correctIndex: 0,
          hintsEn: [
            "Draw a Punnett square: Aa crossed with aa gives Aa, Aa, aa, and aa.",
            "Two of the four combinations are Aa -- that is 2 out of 4, or 1/2.",
          ],
          hintsMy: [
            "Punnett square ရေးဆွဲကြည့်ပါ: Aa ကို aa နှင့် ဖြတ်ခေါင်းစပ်ခြင်းက Aa, Aa, aa နှင့် aa ကို ပေးသည်။",
            "ပေါင်းစပ်မှုလေးခုအနက် နှစ်ခုသည် Aa ဖြစ်သည် -- ၎င်းသည် ၄ ခုအနက် ၂ ခု၊ (သို့) 1/2 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which formula correctly relates voltage, current, and resistance?",
          questionMy:
              "မည်သည့်ဖော်မြူလာသည် ဗို့အား၊ လျှပ်စီးကြောင်းနှင့် ခံနိုင်ရည်ကို မှန်ကန်စွာ ဆက်စပ်ပေးသနည်း။",
          optionsEn: [
            "V = IR",
            "V = I + R",
            "V = I - R",
            "V has no relationship to I or R",
          ],
          optionsMy: [
            "V = IR",
            "V = I + R",
            "V = I - R",
            "V သည် I (သို့) R နှင့် မည်သို့မျှမဆက်စပ်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is Ohm's law -- voltage equals current multiplied by resistance.",
            "Rearranging it also gives I = V/R and R = V/I.",
          ],
          hintsMy: [
            "ဤသည်မှာ Ohm's law ဖြစ်ပြီး -- ဗို့အားသည် လျှပ်စီးကြောင်းကို ခံနိုင်ရည်နှင့် မြှောက်ခြင်းနှင့် ညီသည်။",
            "ပြန်လည်စီစဉ်ခြင်းက I = V/R နှင့် R = V/I ကိုလည်း ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A hydrocarbon that decolourises bromine water contains a...",
          questionMy:
              "ဗရိုမင်ရေကို အရောင်ပျောက်စေသော ဟိုက်ဒရိုကာဘွန်တစ်ခုတွင် မည်သည့်အရာပါဝင်သနည်း။",
          optionsEn: [
            "Carbon-carbon double bond (an alkene)",
            "Only single bonds (an alkane)",
            "No carbon atoms at all",
            "Only nitrogen atoms",
          ],
          optionsMy: [
            "ကာဗွန်-ကာဗွန် နှစ်ထပ်ချိတ်ဆက်မှု (အယ်လ်ကင်း)",
            "စင်္ကြားချိတ်ဆက်မှုသာ (အယ်လ်ကိန်း)",
            "ကာဗွန်အက်တမ် လုံးဝမပါဝင်ခြင်း",
            "နိုက်ထရိုဂျင်အက်တမ်များသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the bromine water test for unsaturation.",
            "Only alkenes, not alkanes, react with and decolourise bromine water.",
          ],
          hintsMy: [
            "ဤသည်မှာ unsaturation အတွက် ဗရိုမင်ရေစမ်းသပ်မှုဖြစ်သည်။",
            "အယ်လ်ကင်းများသာ ဗရိုမင်ရေနှင့် ဓာတ်ပြု၍ အရောင်ပျောက်စေပြီး အယ်လ်ကိန်းများ ဤသို့မဟုတ်ပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w36-d2",
      dayNumber: 2,
      titleEn: "Match the Final Whole-Course Vocabulary",
      titleMy: "သင်တန်းတစ်ခုလုံး နောက်ဆုံးဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w36-dm-1",
          termEn: "Diffusion",
          termMy: "ပျံ့နှံ့ခြင်း (Diffusion)",
          matchEn:
              "The net movement of particles from a region of higher concentration to a region of lower concentration.",
          matchMy:
              "ပျစ်ဆေးအညွှန်းမြင့်သောနေရာမှ ပျစ်ဆေးအညွှန်းနိမ့်သောနေရာသို့ အမှုန်များ၏ စုစုပေါင်းရွေ့လျားမှု။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w36-dm-2",
          termEn: "Reactivity Series",
          termMy: "ဓာတ်ပြုနိုင်စွမ်း အစဉ် (Reactivity Series)",
          matchEn:
              "An ordered list of metals from most to least reactive, used to predict displacement reactions.",
          matchMy:
              "အစားထိုးတုံ့ပြန်မှုများကို ခန့်မှန်းရန် အသုံးပြုသော၊ ဓာတ်ပြုနိုင်စွမ်းအများဆုံးမှ အနည်းဆုံးအထိ သတ္တုများစီစဉ်ထားသော စာရင်း။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w36-dm-3",
          termEn: "Total Internal Reflection",
          termMy: "စုစုပေါင်း အတွင်းဘက်ပြန်ဟပ်ခြင်း (TIR)",
          matchEn:
              "The complete reflection of light inside a denser medium beyond the critical angle.",
          matchMy:
              "အထွေထွေထောင့်ကို ကျော်လွန်ပါက ပိုသိပ်သည်းသော အလယ်အလတ်ပစ္စည်းအတွင်းရှိ အလင်း လုံးဝပြန်ဟပ်ခြင်း။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w36-dm-4",
          termEn: "Natural Selection",
          termMy: "သဘာဝရွေးချယ်မှု (Natural Selection)",
          matchEn:
              "The process by which organisms best suited to their environment survive and reproduce, changing allele frequency over generations.",
          matchMy:
              "၎င်းတို့၏ပတ်ဝန်းကျင်နှင့် အသင့်လျော်ဆုံးသော သက်ရှိများ ရှင်သန်ကာ မျိုးပွားပြီး မျိုးဆက်များတစ်လျှောက် allele ရေတိုးအညွှန်းကို ပြောင်းလဲပေးသည့် လုပ်ငန်းစဉ်။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w36-dm-5",
          termEn: "Series Circuit",
          termMy: "Series ပတ်လမ်း",
          matchEn:
              "A circuit with a single loop, where the same current flows through every component.",
          matchMy:
              "အစိတ်အပိုင်းတိုင်းကို ဖြတ်သန်းသော လျှပ်စီးကြောင်းတူညီသည့်၊ လမ်းကြောင်းတစ်ခုတည်းသာရှိသော ပတ်လမ်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w36-d3",
      dayNumber: 3,
      titleEn: "Sort: Final Biology, Chemistry, or Physics Review",
      titleMy:
          "စီစစ်ကြမည် - နောက်ဆုံး ဇီဝဗေဒ၊ ဓာတုဗေဒ (သို့) ရူပဗေဒ ပြန်လည်သုံးသပ်ချက်",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Biology", "Chemistry", "Physics"],
        bucketsMy: ["ဇီဝဗေဒ", "ဓာတုဗေဒ", "ရူပဗေဒ"],
        items: [
          SortingItem(
            id: "igcsecs-w36-sort-1",
            labelEn: "The human circulatory system",
            labelMy: "လူ့သွေးလည်ပတ်ခြင်းစနစ်",
            correctBucketEn: "Biology",
            correctBucketMy: "ဇီဝဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w36-sort-2",
            labelEn: "Reflex arcs and the nervous system",
            labelMy: "Reflex arc များနှင့် အာရုံကြောစနစ်",
            correctBucketEn: "Biology",
            correctBucketMy: "ဇီဝဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w36-sort-3",
            labelEn: "DNA, genes, and inheritance",
            labelMy: "DNA၊ ဂျင်းမ်များနှင့် မျိုးရိုးလိုက်ခြင်း",
            correctBucketEn: "Biology",
            correctBucketMy: "ဇီဝဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w36-sort-4",
            labelEn: "Acids, bases, and salts",
            labelMy: "အက်ဆစ်၊ ဘေ့စ်နှင့် ဆားများ",
            correctBucketEn: "Chemistry",
            correctBucketMy: "ဓာတုဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w36-sort-5",
            labelEn: "Alkanes, alkenes, and polymerisation",
            labelMy: "အယ်လ်ကိန်းများ၊ အယ်လ်ကင်းများနှင့် Polymerisation",
            correctBucketEn: "Chemistry",
            correctBucketMy: "ဓာတုဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w36-sort-6",
            labelEn: "Water treatment and the greenhouse effect",
            labelMy: "ရေသန့်စင်ခြင်းနှင့် ဖန်လုံအိမ်အာနိသင်",
            correctBucketEn: "Chemistry",
            correctBucketMy: "ဓာတုဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w36-sort-7",
            labelEn: "Forces, motion, and energy",
            labelMy: "အားများ၊ ရွေ့လျားမှုနှင့် စွမ်းအင်",
            correctBucketEn: "Physics",
            correctBucketMy: "ရူပဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w36-sort-8",
            labelEn: "Waves, light, and sound",
            labelMy: "လှိုင်းများ၊ အလင်းနှင့် အသံ",
            correctBucketEn: "Physics",
            correctBucketMy: "ရူပဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w36-sort-9",
            labelEn: "Circuits, electricity, and magnetism",
            labelMy: "ပတ်လမ်းများ၊ လျှပ်စစ်နှင့် သံလိုက်စွမ်းပကား",
            correctBucketEn: "Physics",
            correctBucketMy: "ရူပဗေဒ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w36-d4",
      dayNumber: 4,
      titleEn: "Reading: Kyaw Zin's Mock Exam Day",
      titleMy: "စာဖတ်ခြင်း - ကျော်ဇင်၏ ပုံစံတူစာမေးပွဲနေ့",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Kyaw Zin's Mock Exam Day",
        titleMy: "ကျော်ဇင်၏ ပုံစံတူစာမေးပွဲနေ့",
        passageEn:
            "On the final day of the course, Kyaw Zin sat a full set of mock IGCSE Combined Science papers under strict timed conditions, exactly mirroring the structure of the real examination: a multiple-choice paper, a longer theory paper with structured questions, and a practical-test-simulation paper based on a described experiment.\n\nOn the multiple-choice paper, Kyaw Zin worked through questions covering all nine terms of the course, from Term 1's cell biology through Term 9's circuits and magnetism, moving quickly past questions he was confident about and flagging harder ones to revisit if time allowed, exactly as his revision week had taught him. On the theory paper, he paid close attention to each question's command word, writing full explanations rather than bare descriptions whenever a question asked him to \"explain,\" and showing every step of his working on calculation questions, since partial credit is often available even if a final numerical answer is wrong.\n\nThe practical-test-simulation paper described an experiment investigating the resistance of a wire at different lengths and asked Kyaw Zin to identify the independent variable, the dependent variable, and the control variables, then to sketch the expected shape of a results graph and explain the pattern using the physics he had learned. Reflecting on the whole day afterward, Kyaw Zin realised that the paper had drawn on skills built across the entire year -- not just recalling isolated facts, but reasoning through unfamiliar problems using ideas that connected biology, chemistry, and physics together, exactly the kind of integrated scientific thinking the whole course had been building toward from Week 1 onward.",
        passageMy:
            "သင်တန်း၏ နောက်ဆုံးနေ့တွင် ကျော်ဇင်သည် တင်းကျပ်သော အချိန်သတ်မှတ်ချက်ဖြင့် ပုံစံတူ IGCSE ပေါင်းစပ်သိပ္ပံ စာရွက်အစုံတစ်စုံလုံးကို ဖြေဆိုခဲ့သည်၊ ၎င်းသည် တကယ့်စာမေးပွဲ၏ ဖွဲ့စည်းပုံ အတိအကျပင် ရောင်ပြန်ဟပ်စေသည်: ရွေးချယ်ဖြေဆိုရမည့် မေးခွန်းစာရွက်၊ ဖွဲ့စည်းထားသော မေးခွန်းများပါသည့် ရှည်လျားသော သီအိုရီစာရွက်နှင့် ဖော်ပြထားသော စမ်းသပ်မှုတစ်ခုအပေါ် အခြေခံသော လက်တွေ့စမ်းသပ်မှု ပုံစံတူစာရွက်။\n\nရွေးချယ်ဖြေဆိုရမည့် မေးခွန်းစာရွက်တွင် ကျော်ဇင်သည် ပထမနှစ်ဝက်၏ ဆဲလ်ဇီဝဗေဒမှ နဝမနှစ်ဝက်၏ ပတ်လမ်းများနှင့် သံလိုက်စွမ်းပကားအထိ သင်တန်း၏ နှစ်ဝက်ကိုးခုလုံးကို ဖုံးအုပ်သော မေးခွန်းများကို ဖြေဆိုခဲ့ပြီး၊ သူယုံကြည်စိတ်ချသော မေးခွန်းများကို လျင်မြန်စွာ ကျော်ဖြတ်ကာ ခက်ခဲသောမေးခွန်းများကို အချိန်ရှိပါက ပြန်လည်ဖြေဆိုရန် အမှတ်အသားပြုခဲ့သည်၊ သူ၏ ပြန်လည်လေ့လာမှုအပတ်က သင်ပေးခဲ့သည့်အတိုင်းပင်ဖြစ်သည်။ သီအိုရီစာရွက်တွင် သူသည် မေးခွန်းတစ်ခုစီ၏ command word ကို ဂရုတစိုက် အာရုံစိုက်ခဲ့ပြီး၊ မေးခွန်းက \"explain\" လုပ်ရန် တောင်းဆိုတိုင်း ရိုးရိုးဖော်ပြချက်များအစား ပြည့်စုံသောရှင်းလင်းချက်များ ရေးသားခဲ့ကာ၊ တွက်ချက်မှုမေးခွန်းများတွင် ၎င်း၏ အလုပ်လုပ်ဆောင်ချက် အဆင့်တိုင်းကို ပြသခဲ့သည်၊ အကြောင်းမှာ နောက်ဆုံးကိန်းဂဏန်းအဖြေ မှားနေသော်လည်း တစ်စိတ်တစ်ပိုင်းအမှတ်ကို များသောအားဖြင့် ရရှိနိုင်ခြင်းကြောင့်ဖြစ်သည်။\n\nလက်တွေ့စမ်းသပ်မှု ပုံစံတူစာရွက်သည် ကြိုးတစ်ချောင်း၏ ခံနိုင်ရည်ကို ကြိုးအလျားမတူညီစွာစူးစမ်းလေ့လာသော စမ်းသပ်မှုတစ်ခုကို ဖော်ပြခဲ့ပြီး၊ ကျော်ဇင်အား independent variable, dependent variable နှင့် control variable များကို ဖော်ထုတ်ရန်၊ ထို့နောက် ခန့်မှန်းထားသော ရလဒ်ဂရပ်၏ ပုံသဏ္ဌာန်ကို ရေးဆွဲကာ သူသင်ယူထားသော ရူပဗေဒကိုအသုံးပြု၍ ပုံစံကို ရှင်းပြရန် တောင်းဆိုခဲ့သည်။ ထို့နောက် တစ်နေ့တာလုံးကို ပြန်လည်သုံးသပ်ကြည့်ရာ ကျော်ဇင်သည် ဤစာရွက်သည် တစ်နှစ်လုံးတစ်ဆက်တည်း တည်ဆောက်ထားသော ကျွမ်းကျင်မှုများအပေါ် အခြေခံထားကြောင်း သဘောပေါက်လာခဲ့သည် -- သီးသန့်အချက်အလက်များကို ပြန်လည်သတိရရုံသာမက၊ ဇီဝဗေဒ၊ ဓာတုဗေဒနှင့် ရူပဗေဒကို ချိတ်ဆက်ပေးသော အယူအဆများကို အသုံးပြု၍ မရင်းနှီးသေးသော ပြဿနာများကို ဆင်ခြင်တွေးခေါ်ခြင်း၊ ၎င်းသည် သင်တန်းတစ်ခုလုံးက အပတ်စဉ် ၁ မှစ၍ တည်ဆောက်ခဲ့သည့် ပေါင်းစပ်သိပ္ပံဆိုင်ရာ တွေးခေါ်မှုအမျိုးအစား အတိအကျပင်ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What three papers made up Kyaw Zin's mock exam set?",
            questionMy:
                "ကျော်ဇင်၏ ပုံစံတူစာမေးပွဲစုံသည် မည်သည့်စာရွက်သုံးခုပါဝင်ခဲ့သနည်း။",
            optionsEn: [
              "A multiple-choice paper, a theory paper, and a practical-test-simulation paper",
              "Three identical multiple-choice papers",
              "Only a single essay paper",
              "A paper on history and geography only",
            ],
            optionsMy: [
              "ရွေးချယ်ဖြေဆိုရမည့် မေးခွန်းစာရွက်၊ သီအိုရီစာရွက်နှင့် လက်တွေ့စမ်းသပ်မှု ပုံစံတူစာရွက်",
              "အတူတူသော ရွေးချယ်ဖြေဆိုရမည့် မေးခွန်းစာရွက် သုံးရွက်",
              "စာစီစာကုံးစာရွက်တစ်ရွက်တည်းသာ",
              "သမိုင်းနှင့် ပထဝီဝင်စာရွက်တစ်ရွက်တည်းသာ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first paragraph's description of the mock exam structure.",
              "This structure mirrors the real IGCSE Combined Science examination.",
            ],
            hintsMy: [
              "ပုံစံတူစာမေးပွဲဖွဲ့စည်းပုံကို ဖော်ပြထားသည့် ပထမစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤဖွဲ့စည်းပုံသည် တကယ့် IGCSE ပေါင်းစပ်သိပ္ပံစာမေးပွဲကို ရောင်ပြန်ဟပ်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Kyaw Zin show every step of his working on calculation questions?",
            questionMy:
                "တွက်ချက်မှုမေးခွန်းများတွင် ကျော်ဇင် အလုပ်လုပ်ဆောင်ချက်၏ အဆင့်တိုင်းကို အဘယ်ကြောင့် ပြသခဲ့သနည်း။",
            optionsEn: [
              "Partial credit is often available even if the final numerical answer is wrong",
              "It made the paper look longer",
              "His teacher required exactly ten lines per answer",
              "Showing working was not actually necessary",
            ],
            optionsMy: [
              "နောက်ဆုံးကိန်းဂဏန်းအဖြေ မှားနေသော်လည်း တစ်စိတ်တစ်ပိုင်းအမှတ်ကို များသောအားဖြင့် ရရှိနိုင်ခြင်းကြောင့်",
              "စာရွက်ကို ပို၍ရှည်ကြည့်စေခြင်းအတွက်",
              "သူ၏ဆရာက အဖြေတစ်ခုလျှင် ၁၀ ကြောင်း အတိအကျ တောင်းဆိုခဲ့ခြင်းကြောင့်",
              "အလုပ်လုပ်ဆောင်ချက် ပြသခြင်းသည် အမှန်တကယ် မလိုအပ်ခဲ့ခြင်းကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation of showing working.",
              "This is a standard exam strategy: examiners often award marks for correct method even without a fully correct final answer.",
            ],
            hintsMy: [
              "အလုပ်လုပ်ဆောင်ချက် ပြသခြင်းကို ရှင်းပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ စံသတ်မှတ် စာမေးပွဲနည်းဗျူဟာဖြစ်သည်: စာစစ်ဆရာများသည် နောက်ဆုံးအဖြေ လုံးလုံးမှန်ကန်ခြင်းမရှိသော်လည်း မှန်ကန်သောနည်းလမ်းအတွက် အမှတ်များ ပေးလေ့ရှိသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did the practical-test-simulation paper describe an experiment about?",
            questionMy:
                "လက်တွေ့စမ်းသပ်မှု ပုံစံတူစာရွက်သည် မည်သည့်စမ်းသပ်မှုကို ဖော်ပြခဲ့သနည်း။",
            optionsEn: [
              "The resistance of a wire at different lengths",
              "The pH of different acids",
              "The reproduction rate of flowering plants",
              "The temperature of the Sun",
            ],
            optionsMy: [
              "ကြိုးတစ်ချောင်း၏ ခံနိုင်ရည်ကို ကြိုးအလျားမတူညီစွာ",
              "အက်ဆစ်မတူညီများ၏ pH",
              "ပန်းပွင့်သောအပင်များ၏ မျိုးပွားနှုန်း",
              "နေ၏ အပူချိန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of the practical-test-simulation paper.",
              "This links back to the electricity and circuits content from Week 33.",
            ],
            hintsMy: [
              "လက်တွေ့စမ်းသပ်မှု ပုံစံတူစာရွက်ကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်က အပတ်စဉ် ၃၃ မှ လျှပ်စစ်နှင့် ပတ်လမ်းများဆိုင်ရာအကြောင်းအရာနှင့် ပြန်လည်ဆက်စပ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Kyaw Zin realise about the mock exam papers overall?",
            questionMy:
                "ပုံစံတူစာမေးပွဲစာရွက်များအလုံးစုံနှင့်ပတ်သက်၍ ကျော်ဇင် အဘယ်အရာကို သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "They drew on skills built across the entire year, connecting biology, chemistry, and physics together",
              "They only tested Term 9's content",
              "They had nothing to do with the rest of the course",
              "They were entirely unrelated to real IGCSE exams",
            ],
            optionsMy: [
              "ဇီဝဗေဒ၊ ဓာတုဗေဒနှင့် ရူပဗေဒကို ချိတ်ဆက်ပေးလျက် တစ်နှစ်လုံးတစ်ဆက်တည်း တည်ဆောက်ထားသော ကျွမ်းကျင်မှုများအပေါ် အခြေခံခဲ့ကြောင်း",
              "နဝမနှစ်ဝက်အကြောင်းအရာကိုသာ စမ်းသပ်ခဲ့ကြောင်း",
              "သင်တန်း၏ ကျန်အပိုင်းများနှင့် မည်သို့မျှမသက်ဆိုင်ခဲ့ကြောင်း",
              "တကယ့် IGCSE စာမေးပွဲများနှင့် လုံးဝ မသက်ဆိုင်ခဲ့ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "The integrated thinking required draws on ideas from every term of the course, not just isolated facts.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "လိုအပ်သော ပေါင်းစပ်တွေးခေါ်မှုသည် သီးခြားအချက်အလက်များထက် သင်တန်း၏ နှစ်ဝက်တိုင်းမှ အယူအဆများအပေါ် အခြေခံသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w36-d5",
      dayNumber: 5,
      titleEn: "Term 9 Recap: Electricity, Magnetism and Final Prep",
      titleMy:
          "နဝမနှစ်ဝက် ပြန်လည်သုံးသပ်ခြင်း - လျှပ်စစ်၊ သံလိုက်စွမ်းပကားနှင့် နောက်ဆုံးပြင်ဆင်မှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Current is measured with an ammeter connected in...",
          questionMy:
              "လျှပ်စီးကြောင်းကို ammeter ဖြင့် မည်သို့ ချိတ်ဆက်၍ တိုင်းတာသနည်း။",
          optionsEn: [
            "Series with the component",
            "Parallel with the component only",
            "No connection needed",
            "Only outside the circuit",
          ],
          optionsMy: [
            "အစိတ်အပိုင်းနှင့် series",
            "အစိတ်အပိုင်းနှင့် parallel သာ",
            "ချိတ်ဆက်ရန်မလိုအပ်",
            "ပတ်လမ်းအပြင်ဘက်တွင်သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A fuse breaks a circuit by...",
          questionMy: "ဖျူးစ်တစ်ခုသည် ပတ်လမ်းတစ်ခုကို မည်သို့ ဖြတ်တောက်သနည်း။",
          optionsEn: [
            "Melting when current is too high",
            "Never melting",
            "Increasing resistance permanently",
            "Storing extra charge",
          ],
          optionsMy: [
            "လျှပ်စီးကြောင်းများလွန်းသောအခါ ပျော်ကျခြင်း",
            "ဘယ်တော့မှ မပျော်ကျခြင်း",
            "ခံနိုင်ရည်ကို အမြဲတမ်း တိုးမြှင့်ခြင်း",
            "ဓာတ်အားအပို သိုလှောင်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Command words like \"explain\" and \"calculate\" tell you...",
          questionMy:
              "\"explain\" နှင့် \"calculate\" ကဲ့သို့သော command word များက မည်သည့်အရာကို ပြောပြသနည်း။",
          optionsEn: [
            "What kind of answer the examiner expects",
            "Nothing useful at all",
            "The exact word count required",
            "Only the subject being tested",
          ],
          optionsMy: [
            "စာစစ်ဆရာမျှော်လင့်သော အဖြေအမျိုးအစား",
            "အသုံးဝင်မှုမရှိသောအရာ",
            "လိုအပ်သောစာလုံးအရေအတွက်အတိအကျ",
            "စမ်းသပ်နေသောဘာသာရပ်သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The IGCSE mock exam papers tested...",
          questionMy:
              "IGCSE ပုံစံတူစာမေးပွဲစာရွက်များက အဘယ်အရာကို စစ်ဆေးခဲ့သနည်း။",
          optionsEn: [
            "Skills and knowledge built across the whole year",
            "Only Week 36's content",
            "Only multiple-choice memorisation",
            "Nothing related to real exams",
          ],
          optionsMy: [
            "တစ်နှစ်လုံးတစ်ဆက်တည်း တည်ဆောက်ထားသော ကျွမ်းကျင်မှုနှင့် အသိပညာ",
            "အပတ်စဉ် ၃၆ အကြောင်းအရာသာ",
            "ရွေးချယ်ဖြေဆိုရမည့်မေးခွန်း အလွတ်ကျက်မှတ်ခြင်းသာ",
            "တကယ့်စာမေးပွဲနှင့် မသက်ဆိုင်သောအရာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "An electromagnet is created by passing current through...",
          questionMy:
              "လျှပ်စစ်သံလိုက်တစ်ခုကို မည်သည့်အရာကိုဖြတ်၍ လျှပ်စီးကြောင်းစီးဆင်းစေခြင်းဖြင့် ဖန်တီးသနည်း။",
          optionsEn: [
            "A coil of wire",
            "A single straight nail with no wire",
            "Pure water",
            "A wooden block",
          ],
          optionsMy: [
            "ကြိုးကွင်းတစ်ခု",
            "ကြိုးမပါသော သံခြေချောင်းတစ်ချောင်းတည်း",
            "စင်ကြယ်ရေ",
            "သစ်သားတုံး",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 9: "Electricity, Magnetism and Final Prep" (Weeks 33-36)
// =====================================================================

const CourseTermDef igcseCombinedScienceTerm9 = CourseTermDef(
  id: "course-igcse-combsci-t9",
  termNumber: 9,
  titleEn: "Electricity, Magnetism and Final Prep",
  titleMy: "လျှပ်စစ်၊ သံလိုက်စွမ်းပကားနှင့် နောက်ဆုံးပြင်ဆင်မှု",
  certificateTitleEn: "Electricity, Magnetism and Final Prep",
  certificateTitleMy: "လျှပ်စစ်၊ သံလိုက်စွမ်းပကားနှင့် နောက်ဆုံးပြင်ဆင်မှု",
  weeks: [
    _igcseCombSciWeek33,
    _igcseCombSciWeek34,
    _igcseCombSciWeek35,
    _igcseCombSciWeek36,
  ],
);
