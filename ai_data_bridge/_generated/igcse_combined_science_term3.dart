// File: ai_data_bridge/_generated/igcse_combined_science_term3.dart
// IGCSE Combined Science -- Term 3: "Physics - Motion, Forces and Energy"
// (Weeks 9-12), authored from the corrected weekly topic map in
// ai_data_bridge/igcse_combined_science_all_terms.dart. Staging artifact
// only -- not yet wired into course_pathway_bank.dart's Grade.igcse
// pathway. Follows the exact DailyLessonDef/CourseWeekDef/CourseTermDef
// schema and id/xp conventions established by Terms 1-2
// (igcse_combined_science_term1.dart, igcse_combined_science_term2.dart)
// and _secondary3SciencePathway, including its rotating cast of named
// Myanmar-student protagonists (one per week's reading passage, not a
// single fixed character).
//
// Week 9 (Speed, Velocity, and Acceleration): distance-time and
// speed-time graphs, calculating acceleration. Week 10 (Effects of
// Forces): Newton's three laws of motion, F = ma, weight and
// gravitational field strength, terminal velocity. Week 11 (Energy
// Resources and Transfer): kinetic and gravitational potential energy,
// conservation of energy, renewable vs. non-renewable resources.
// Week 12 (Capstone -- Forces and Energy Lab): practical mechanics and
// energy efficiency calculations mirroring IGCSE assessment standards.

import 'package:nova_academy/features/lessons/course_pathway_bank.dart';
import 'package:nova_academy/features/lessons/interactive_content_models.dart';
import 'package:nova_academy/features/lessons/mock_quiz_data.dart';

// =====================================================================
// Week 9: "Speed, Velocity, and Acceleration"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek9 = CourseWeekDef(
  id: "course-igcse-combsci-w9",
  weekNumber: 9,
  titleEn: "Speed, Velocity, and Acceleration",
  titleMy: "အမြန်နှုန်း၊ အဟုန်နှင့် အရှိန်",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w9-d1",
      dayNumber: 1,
      titleEn: "Motion Graphs Quiz",
      titleMy: "ရွေ့လျားမှု ဂရပ်များ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What does the gradient (slope) of a distance-time graph represent?",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်၏ စောင်းငူ (gradient) သည် မည်သည့်အရာကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "Speed",
            "Acceleration",
            "Distance travelled only",
            "Time taken only",
          ],
          optionsMy: ["အမြန်နှုန်း", "အရှိန်", "ခရီးကွာဝေးမှုသာ", "ကြာချိန်သာ"],
          correctIndex: 0,
          hintsEn: [
            "Speed is distance divided by time -- and gradient on this graph is exactly rise (distance) over run (time).",
            "A steeper line means a greater gradient, which means the object was travelling faster.",
          ],
          hintsMy: [
            "အမြန်နှုန်းသည် အကွာအဝေးကို အချိန်ဖြင့် စားထားခြင်းဖြစ်သည် -- ဤဂရပ်ပေါ်ရှိ စောင်းငူသည် အတက် (အကွာအဝေး) ကို အပြေး (အချိန်) ဖြင့် စားထားခြင်းအတိအကျဖြစ်သည်။",
            "စောင်းသောမျဉ်းသည် ပိုမြင့်သော စောင်းငူကို ဆိုလိုပြီး ၎င်းသည် အရာဝတ္ထုသည် ပိုမြန်စွာ ခရီးသွားနေကြောင်း ဆိုလိုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What does the gradient of a speed-time graph represent?",
          questionMy:
              "အမြန်နှုန်း-အချိန် ဂရပ်၏ စောင်းငူသည် မည်သည့်အရာကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "Acceleration",
            "Distance travelled",
            "Speed only",
            "Mass",
          ],
          optionsMy: ["အရှိန်", "ခရီးကွာဝေးမှု", "အမြန်နှုန်းသာ", "ထုထည်"],
          correctIndex: 0,
          hintsEn: [
            "Acceleration is the rate of change of speed -- exactly what a speed-time graph's gradient shows.",
            "A flat, horizontal line on a speed-time graph means zero acceleration (constant speed).",
          ],
          hintsMy: [
            "အရှိန်သည် အမြန်နှုန်းပြောင်းလဲမှုနှုန်းဖြစ်သည် -- အမြန်နှုန်း-အချိန် ဂရပ်၏ စောင်းငူက ပြသနေသည့်အရာအတိအကျဖြစ်သည်။",
            "အမြန်နှုန်း-အချိန်ဂရပ်ပေါ်ရှိ ညီညာသော ပြင်ညီမျဉ်းသည် အရှိန် သုည (အမြန်နှုန်း ပုံသေ) ကို ဆိုလိုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What does the area under a speed-time graph represent?",
          questionMy:
              "အမြန်နှုန်း-အချိန် ဂရပ်အောက်ရှိ ဧရိယာသည် မည်သည့်အရာကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "The distance travelled",
            "The acceleration",
            "The mass of the object",
            "The starting time only",
          ],
          optionsMy: [
            "ခရီးကွာဝေးမှု",
            "အရှိန်",
            "အရာဝတ္ထု၏ ထုထည်",
            "စတင်ချိန်သာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "For a constant speed, area = speed x time, which is exactly the distance formula.",
            "This works even for changing speed -- the total area under the whole graph still equals total distance.",
          ],
          hintsMy: [
            "ပုံသေအမြန်နှုန်းအတွက် ဧရိယာ = အမြန်နှုန်း x အချိန်၊ ၎င်းသည် အကွာအဝေး ဖော်မြူလာအတိအကျ ဖြစ်သည်။",
            "ဤသည်မှာ အမြန်နှုန်းပြောင်းလဲနေသည့်ကိစ္စတွင်ပင် အလုပ်လုပ်သည် -- ဂရပ်တစ်ခုလုံးအောက်ရှိ စုစုပေါင်းဧရိယာသည် စုစုပေါင်း ခရီးကွာဝေးမှုနှင့် ဆက်လက် ညီမျှသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Velocity is different from speed because velocity also has a...",
          questionMy:
              "အဟုန် (Velocity) သည် အမြန်နှုန်းနှင့် ကွာခြားသည့်အကြောင်းရင်းမှာ အဟုန်တွင် မည်သည့်အရာလည်း ရှိသောကြောင့်ဖြစ်သနည်း။",
          optionsEn: ["Direction", "Mass", "Time", "Distance only"],
          optionsMy: ["ဦးတည်ချက်", "ထုထည်", "အချိန်", "အကွာအဝေးသာ"],
          correctIndex: 0,
          hintsEn: [
            "Speed is a scalar quantity (magnitude only); velocity is a vector quantity (magnitude and direction).",
            "A car travelling at 50 km/h north has a different velocity than one travelling at 50 km/h south, even though their speed is the same.",
          ],
          hintsMy: [
            "အမြန်နှုန်းသည် စကေးလာပမာဏ (magnitude သာ) ဖြစ်ပြီး; အဟုန်သည် ဗက်တာပမာဏ (magnitude နှင့် ဦးတည်ချက်) ဖြစ်သည်။",
            "မြောက်ဘက်သို့ ၅၀ km/h ဖြင့် သွားနေသော ကားတစ်စီးသည် တောင်ဘက်သို့ ၅၀ km/h ဖြင့် သွားနေသောကားနှင့် မတူညီသော အဟုန်ရှိသည်၊ ၎င်းတို့၏ အမြန်နှုန်းတူညီသော်လည်းပင်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w9-d2",
      dayNumber: 2,
      titleEn: "Match the Motion Vocabulary",
      titleMy: "ရွေ့လျားမှုဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w9-dm-1",
          termEn: "Speed",
          termMy: "အမြန်နှုန်း (Speed)",
          matchEn:
              "Distance travelled divided by time taken; a scalar quantity.",
          matchMy: "ကြာချိန်ဖြင့် စားထားသော ခရီးကွာဝေးမှု; စကေးလာပမာဏ။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w9-dm-2",
          termEn: "Velocity",
          termMy: "အဟုန် (Velocity)",
          matchEn: "Speed in a stated direction; a vector quantity.",
          matchMy: "ဖော်ပြထားသော ဦးတည်ချက်ရှိသော အမြန်နှုန်း; ဗက်တာပမာဏ။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w9-dm-3",
          termEn: "Acceleration",
          termMy: "အရှိန် (Acceleration)",
          matchEn: "The rate of change of velocity.",
          matchMy: "အဟုန်ပြောင်းလဲမှုနှုန်း။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w9-dm-4",
          termEn: "Distance-Time Graph",
          termMy: "အကွာအဝေး-အချိန် ဂရပ် (Distance-Time Graph)",
          matchEn: "A graph whose gradient shows speed.",
          matchMy: "စောင်းငူက အမြန်နှုန်းကို ပြသသော ဂရပ်။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w9-dm-5",
          termEn: "Speed-Time Graph",
          termMy: "အမြန်နှုန်း-အချိန် ဂရပ် (Speed-Time Graph)",
          matchEn:
              "A graph whose gradient shows acceleration and whose area shows distance.",
          matchMy:
              "စောင်းငူက အရှိန်ကိုပြပြီး ဧရိယာက ခရီးကွာဝေးမှုကို ပြသော ဂရပ်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w9-d3",
      dayNumber: 3,
      titleEn: "Sort: Distance-Time or Speed-Time Graph Feature?",
      titleMy:
          "စီစစ်ကြမည် - အကွာအဝေး-အချိန် (သို့) အမြန်နှုန်း-အချိန် ဂရပ်ဂုဏ်သတ္တိ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Distance-Time Graph Feature", "Speed-Time Graph Feature"],
        bucketsMy: [
          "အကွာအဝေး-အချိန် ဂရပ်ဂုဏ်သတ္တိ",
          "အမြန်နှုန်း-အချိန် ဂရပ်ဂုဏ်သတ္တိ",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w9-sort-1",
            labelEn: "Gradient shows speed",
            labelMy: "စောင်းငူက အမြန်နှုန်းကို ပြသည်",
            correctBucketEn: "Distance-Time Graph Feature",
            correctBucketMy: "အကွာအဝေး-အချိန် ဂရပ်ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w9-sort-2",
            labelEn: "A flat horizontal line means the object is stationary",
            labelMy: "ညီညာသော ပြင်ညီမျဉ်းသည် အရာဝတ္ထု ရပ်နေကြောင်း ဆိုလိုသည်",
            correctBucketEn: "Distance-Time Graph Feature",
            correctBucketMy: "အကွာအဝေး-အချိန် ဂရပ်ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w9-sort-3",
            labelEn: "A curving line shows changing speed",
            labelMy: "ကွေးသောမျဉ်းသည် အမြန်နှုန်းပြောင်းလဲနေကြောင်း ပြသည်",
            correctBucketEn: "Distance-Time Graph Feature",
            correctBucketMy: "အကွာအဝေး-အချိန် ဂရပ်ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w9-sort-4",
            labelEn: "Y-axis shows distance travelled",
            labelMy: "Y-ဝင်ရိုးသည် ခရီးကွာဝေးမှုကို ပြသည်",
            correctBucketEn: "Distance-Time Graph Feature",
            correctBucketMy: "အကွာအဝေး-အချိန် ဂရပ်ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w9-sort-5",
            labelEn: "Gradient shows acceleration",
            labelMy: "စောင်းငူက အရှိန်ကို ပြသည်",
            correctBucketEn: "Speed-Time Graph Feature",
            correctBucketMy: "အမြန်နှုန်း-အချိန် ဂရပ်ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w9-sort-6",
            labelEn: "Area under the graph shows distance travelled",
            labelMy: "ဂရပ်အောက်ရှိ ဧရိယာက ခရီးကွာဝေးမှုကို ပြသည်",
            correctBucketEn: "Speed-Time Graph Feature",
            correctBucketMy: "အမြန်နှုန်း-အချိန် ဂရပ်ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w9-sort-7",
            labelEn: "A flat horizontal line means constant speed",
            labelMy: "ညီညာသော ပြင်ညီမျဉ်းသည် ပုံသေအမြန်နှုန်းကို ဆိုလိုသည်",
            correctBucketEn: "Speed-Time Graph Feature",
            correctBucketMy: "အမြန်နှုန်း-အချိန် ဂရပ်ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w9-sort-8",
            labelEn: "Y-axis shows speed",
            labelMy: "Y-ဝင်ရိုးသည် အမြန်နှုန်းကို ပြသည်",
            correctBucketEn: "Speed-Time Graph Feature",
            correctBucketMy: "အမြန်နှုန်း-အချိန် ဂရပ်ဂုဏ်သတ္တိ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w9-d4",
      dayNumber: 4,
      titleEn: "Reading: Thura Aung's Cycling Speed Investigation",
      titleMy: "စာဖတ်ခြင်း - သူရအောင်၏ စက်ဘီးစီး အမြန်နှုန်း စမ်းသပ်လေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thura Aung's Cycling Speed Investigation",
        titleMy: "သူရအောင်၏ စက်ဘီးစီး အမြန်နှုန်း စမ်းသပ်လေ့လာမှု",
        passageEn:
            "For his physics practical, Thura Aung cycled along a straight, marked path, and a classmate recorded how far he had travelled every two seconds. Back in class, he plotted his readings on a distance-time graph and noticed the line was straight for the first ten seconds, then curved upward more steeply for the final ten seconds.\n\nThura Aung calculated the gradient of the straight first section by dividing the distance covered by the time taken, giving him a constant speed of 4 metres per second. For the curved second section, he realised a single gradient calculation would not work, since the line's steepness itself was changing -- meaning his speed was increasing, not constant.\n\nTo understand the second section better, his teacher had him convert his data into a speed-time graph instead. On this new graph, the first section appeared as a flat horizontal line at 4 m/s, confirming constant speed, while the second section appeared as a straight line sloping upward, its gradient giving a constant acceleration of 0.5 m/s^2. Thura Aung realised the two graph types told two different parts of the same story: the distance-time graph's curve had hidden the fact that his acceleration was actually constant, something the speed-time graph's straight line made immediately obvious.",
        passageMy:
            "သူရအောင်၏ ရူပဗေဒ လက်တွေ့စမ်းသပ်မှုအတွက် သူသည် အမှတ်အသားလုပ်ထားသော ဖြောင့်တန်းသော လမ်းတစ်လျှောက် စက်ဘီးစီးခဲ့ပြီး၊ အတန်းဖော်တစ်ဦးက ၂ စက္ကန့်တစ်ကြိမ် သူ ခရီးသွားခဲ့သည့်အကွာအဝေးကို မှတ်တမ်းတင်ခဲ့သည်။ အတန်းသို့ ပြန်ရောက်သောအခါ သူသည် ဖတ်ချက်များကို အကွာအဝေး-အချိန် ဂရပ်ပေါ်တွင် ရေးဆွဲကြည့်ရာ ပထမ ၁၀ စက္ကန့်အတွက် မျဉ်းသည် ဖြောင့်တန်းနေပြီး၊ နောက်ဆုံး ၁၀ စက္ကန့်တွင် ပိုမိုစောင်းစွာ အပေါ်သို့ ကွေးသွားသည်ကို သတိပြုမိသည်။\n\nသူရအောင်သည် ပထမ ဖြောင့်တန်းသောအပိုင်း၏ စောင်းငူကို ခရီးသွားရသည့်အကွာအဝေးကို ကြာချိန်ဖြင့် စားခြင်းဖြင့် တွက်ချက်ခဲ့ပြီး၊ တစ်စက္ကန့်လျှင် မီတာ ၄ မီတာ ပုံသေအမြန်နှုန်းကို ရရှိခဲ့သည်။ ဒုတိယကွေးသောအပိုင်းအတွက် သူသည် စောင်းငူတွက်ချက်မှုတစ်ခုတည်းသည် အလုပ်မဖြစ်နိုင်ကြောင်း သဘောပေါက်ခဲ့သည်၊ အဘယ်ကြောင့်ဆိုသော် မျဉ်း၏ စောင်းမှုကိုယ်တိုင် ပြောင်းလဲနေသောကြောင့် -- ၎င်းက သူ၏ အမြန်နှုန်းသည် ပုံသေမဟုတ်ဘဲ တိုးလာနေကြောင်း ဆိုလိုသည်။\n\nဒုတိယအပိုင်းကို ပိုမိုနားလည်စေရန် သူ၏ ဆရာမက သူ့အား အချက်အလက်များကို အမြန်နှုန်း-အချိန်ဂရပ်အဖြစ် ပြောင်းလဲခိုင်းခဲ့သည်။ ဤဂရပ်အသစ်ပေါ်တွင် ပထမအပိုင်းသည် 4 m/s တွင် ညီညာသော ပြင်ညီမျဉ်းအဖြစ် ပေါ်လာပြီး ပုံသေအမြန်နှုန်းကို အတည်ပြုခဲ့သည်၊ ဒုတိယအပိုင်းကမူ အပေါ်သို့ စောင်းတက်နေသော ဖြောင့်တန်းမျဉ်းအဖြစ် ပေါ်ခဲ့ပြီး ၎င်း၏ စောင်းငူက 0.5 m/s^2 ပုံသေအရှိန်ကို ပေးခဲ့သည်။ သူရအောင်သည် ဂရပ်အမျိုးအစားနှစ်ခုက တူညီသောဇာတ်လမ်း၏ မတူညီသောအပိုင်းနှစ်ပိုင်းကို ပြောပြနေကြောင်း သဘောပေါက်လာသည်: အကွာအဝေး-အချိန်ဂရပ်၏ ကွေးမှုသည် သူ၏အရှိန်သည် အမှန်တကယ် ပုံသေဖြစ်နေကြောင်း ဖုံးကွယ်ထားခဲ့ပြီး၊ ထိုအချက်ကို အမြန်နှုန်း-အချိန်ဂရပ်၏ ဖြောင့်တန်းမျဉ်းက ချက်ချင်း ထင်ရှားစေခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What was Thura Aung's constant speed during the first section of his ride?",
            questionMy:
                "သူရအောင်၏ ခရီးစဉ် ပထမအပိုင်းအတွင်း ပုံသေအမြန်နှုန်း မည်မျှရှိသနည်း။",
            optionsEn: ["4 m/s", "0.5 m/s", "10 m/s", "2 m/s"],
            optionsMy: ["4 m/s", "0.5 m/s", "10 m/s", "2 m/s"],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's gradient calculation for the first section.",
              "The distance-time graph's gradient over the first ten seconds gives this value directly.",
            ],
            hintsMy: [
              "ပထမအပိုင်းအတွက် စောင်းငူတွက်ချက်မှုနှင့်ပတ်သက်သော ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ပထမ ၁၀ စက္ကန့်အတွင်းရှိ အကွာအဝေး-အချိန်ဂရပ်၏ စောင်းငူသည် ဤတန်ဖိုးကို တိုက်ရိုက် ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why couldn't Thura Aung use a single gradient calculation for the curved second section?",
            questionMy:
                "ဒုတိယကွေးသောအပိုင်းအတွက် သူရအောင်သည် စောင်းငူတွက်ချက်မှုတစ်ခုတည်းကို အဘယ်ကြောင့် အသုံးမပြုနိုင်ခဲ့သနည်း။",
            optionsEn: [
              "The line's steepness itself was changing, meaning speed was not constant",
              "He forgot how to calculate gradient",
              "The graph had no y-axis",
              "He ran out of time to finish the calculation",
            ],
            optionsMy: [
              "မျဉ်း၏ စောင်းမှုကိုယ်တိုင် ပြောင်းလဲနေသဖြင့် အမြန်နှုန်း ပုံသေမဟုတ်ကြောင်း ဆိုလိုသောကြောင့်",
              "စောင်းငူကို မည်သို့တွက်ချက်ရမည် မေ့သွားသောကြောင့်",
              "ဂရပ်တွင် Y-ဝင်ရိုး မရှိသောကြောင့်",
              "တွက်ချက်မှုကို ပြီးအောင်လုပ်ရန် အချိန်ကုန်သွားသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation of why the curved section is different.",
              "A single gradient only works for a straight line, where the steepness stays constant throughout.",
            ],
            hintsMy: [
              "ကွေးသောအပိုင်း အဘယ်ကြောင့် ကွာခြားကြောင်းရှင်းပြသော ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "စောင်းငူတစ်ခုတည်းသည် ဖြောင့်တန်းမျဉ်းအတွက်သာ အလုပ်လုပ်ပြီး၊ ထိုနေရာတွင် စောင်းမှုသည် တစ်လျှောက်လုံး ပုံသေဖြစ်နေရမည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did the second section's speed-time graph gradient reveal?",
            questionMy:
                "ဒုတိယအပိုင်း၏ အမြန်နှုန်း-အချိန်ဂရပ် စောင်းငူက မည်သည့်အချက်ကို ဖော်ပြခဲ့သနည်း။",
            optionsEn: [
              "A constant acceleration of 0.5 m/s^2",
              "A constant speed of 4 m/s",
              "Zero acceleration throughout",
              "That Thura Aung had stopped moving",
            ],
            optionsMy: [
              "0.5 m/s^2 ပုံသေအရှိန်",
              "4 m/s ပုံသေအမြန်နှုန်း",
              "တစ်လျှောက်လုံး အရှိန်သုည",
              "သူရအောင် ရွေ့လျားမှု ရပ်တန့်ခဲ့ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of the speed-time graph's second section.",
              "A straight, sloping line on a speed-time graph means a constant (not changing) acceleration.",
            ],
            hintsMy: [
              "အမြန်နှုန်း-အချိန်ဂရပ်၏ ဒုတိယအပိုင်းနှင့်ပတ်သက်သော ဖော်ပြချက်ရှိသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အမြန်နှုန်း-အချိန်ဂရပ်ပေါ်ရှိ စောင်းတက်နေသော ဖြောင့်တန်းမျဉ်းသည် ပုံသေ (မပြောင်းလဲသော) အရှိန်ကို ဆိုလိုသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Thura Aung realise about the relationship between the two graph types?",
            questionMy:
                "ဂရပ်အမျိုးအစားနှစ်ခုကြားရှိ ဆက်စပ်မှုနှင့်ပတ်သက်၍ သူရအောင် မည်သည့်အချက်ကို သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "The speed-time graph made his constant acceleration obvious, which the distance-time graph's curve had hidden",
              "The two graphs always show exactly the same shape",
              "Only the distance-time graph is ever useful",
              "Speed-time graphs cannot show acceleration",
            ],
            optionsMy: [
              "အမြန်နှုန်း-အချိန်ဂရပ်က သူ၏ ပုံသေအရှိန်ကို ထင်ရှားစေခဲ့ပြီး၊ ၎င်းကို အကွာအဝေး-အချိန်ဂရပ်၏ ကွေးမှုက ဖုံးကွယ်ထားခဲ့သည်",
              "ဂရပ်နှစ်ခုလုံးသည် အမြဲတမ်း အတိအကျတူညီသော ပုံသဏ္ဍာန်ကို ပြသသည်",
              "အကွာအဝေး-အချိန်ဂရပ်သာ အသုံးဝင်ဖူးသည်",
              "အမြန်နှုန်း-အချိန်ဂရပ်များသည် အရှိန်ကို ပြသနိုင်ခြင်း မရှိပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "The distance-time graph's curve and the speed-time graph's straight line describe the same motion in two different ways.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အကွာအဝေး-အချိန်ဂရပ်၏ ကွေးမှုနှင့် အမြန်နှုန်း-အချိန်ဂရပ်၏ ဖြောင့်တန်းမျဉ်းသည် တူညီသောရွေ့လျားမှုကို နည်းလမ်းနှစ်မျိုးဖြင့် ဖော်ပြထားခြင်းဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w9-d5",
      dayNumber: 5,
      titleEn: "Week 9 Recap: Speed, Velocity, and Acceleration",
      titleMy: "အပတ်စဉ် ၉ ပြန်လည်သုံးသပ်ခြင်း - အမြန်နှုန်း၊ အဟုန်နှင့် အရှိန်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The gradient of a distance-time graph shows...",
          questionMy:
              "အကွာအဝေး-အချိန်ဂရပ်၏ စောင်းငူသည် မည်သည့်အရာကို ပြသသနည်း။",
          optionsEn: ["Speed", "Acceleration", "Mass", "Force"],
          optionsMy: ["အမြန်နှုန်း", "အရှိန်", "ထုထည်", "အား"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The gradient of a speed-time graph shows...",
          questionMy:
              "အမြန်နှုန်း-အချိန်ဂရပ်၏ စောင်းငူသည် မည်သည့်အရာကို ပြသသနည်း။",
          optionsEn: ["Acceleration", "Distance", "Mass", "Time only"],
          optionsMy: ["အရှိန်", "အကွာအဝေး", "ထုထည်", "အချိန်သာ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The area under a speed-time graph shows...",
          questionMy:
              "အမြန်နှုန်း-အချိန်ဂရပ်အောက်ရှိ ဧရိယာသည် မည်သည့်အရာကို ပြသသနည်း။",
          optionsEn: [
            "Distance travelled",
            "Acceleration",
            "Mass",
            "Direction",
          ],
          optionsMy: ["ခရီးကွာဝေးမှု", "အရှိန်", "ထုထည်", "ဦးတည်ချက်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Velocity differs from speed because it includes...",
          questionMy:
              "အဟုန်သည် အမြန်နှုန်းနှင့် ကွာခြားရသည့်အကြောင်းရင်းမှာ မည်သည့်အရာ ပါဝင်သောကြောင့်ဖြစ်သနည်း။",
          optionsEn: ["Direction", "Time", "Mass", "Force"],
          optionsMy: ["ဦးတည်ချက်", "အချိန်", "ထုထည်", "အား"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 10: "Effects of Forces"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek10 = CourseWeekDef(
  id: "course-igcse-combsci-w10",
  weekNumber: 10,
  titleEn: "Effects of Forces",
  titleMy: "အားများ၏ သက်ရောက်မှုများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w10-d1",
      dayNumber: 1,
      titleEn: "Newton's Laws Quiz",
      titleMy: "နယူတန်၏ နိယာမများ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Newton's First Law states that an object stays at rest or moves at constant velocity unless...",
          questionMy:
              "နယူတန်၏ ပထမနိယာမအရ အရာဝတ္ထုတစ်ခုသည် မည်သည့်အခြေအနေမှလွဲ၍ ငြိမ်နေ (သို့) ပုံသေအဟုန်ဖြင့် ရွေ့လျားနေမည်ဟု ဖော်ပြသနည်း။",
          optionsEn: [
            "A resultant (unbalanced) force acts on it",
            "It is painted a different colour",
            "It is placed on a table",
            "Someone is watching it",
          ],
          optionsMy: [
            "ရလဒ်အား (မမျှတသောအား) တစ်ခု ၎င်းအပေါ် သက်ရောက်ခြင်း",
            "မတူညီသောအရောင် ဆိုးပေးခြင်း",
            "စားပွဲပေါ်တွင် တင်ထားခြင်း",
            "တစ်စုံတစ်ဦးက ကြည့်နေခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is often called the law of inertia -- objects resist changes to their motion.",
            "Only an unbalanced force (one not cancelled out by an opposite force) can change an object's speed or direction.",
          ],
          hintsMy: [
            "ဤသည်ကို ဆွဲငင်ခုခံခြင်းဥပဒေ (law of inertia) ဟု မကြာခဏ ခေါ်ကြသည် -- အရာဝတ္ထုများသည် ၎င်းတို့၏ ရွေ့လျားမှု ပြောင်းလဲခြင်းကို ခုခံသည်။",
            "ဆန့်ကျင်ဘက်အားတစ်ခုက ရှင်းလင်းပေးမထားသော မမျှတသောအားတစ်ခုသာ အရာဝတ္ထု၏ အမြန်နှုန်း (သို့) ဦးတည်ချက်ကို ပြောင်းလဲနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Newton's Second Law is written as the equation...",
          questionMy:
              "နယူတန်၏ ဒုတိယနိယာမကို မည်သည့်ညီမျှခြင်းအဖြစ် ရေးသားထားသနည်း။",
          optionsEn: ["F = ma", "E = mc^2", "v = u + at", "P = mv"],
          optionsMy: ["F = ma", "E = mc^2", "v = u + at", "P = mv"],
          correctIndex: 0,
          hintsEn: [
            "Force equals mass multiplied by acceleration.",
            "This equation shows that a larger force produces a larger acceleration, for the same mass.",
          ],
          hintsMy: [
            "အားသည် ထုထည်ကို အရှိန်ဖြင့် မြှောက်ထားခြင်းနှင့် ညီမျှသည်။",
            "ဤညီမျှခြင်းက ထုထည်တူညီပါက ပိုကြီးသောအားသည် ပိုကြီးသောအရှိန်ကို ဖြစ်ပေါ်စေကြောင်း ပြသသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Newton's Third Law states that for every action force, there is a...",
          questionMy:
              "နယူတန်၏ တတိယနိယာမအရ လုပ်ဆောင်အား (action force) တိုင်းအတွက် မည်သည့်အရာ ရှိသနည်း။",
          optionsEn: [
            "Equal and opposite reaction force",
            "Smaller reaction force in the same direction",
            "No reaction at all",
            "A force twice as large in the same direction",
          ],
          optionsMy: [
            "ညီမျှပြီး ဆန့်ကျင်ဘက် တုံ့ပြန်အား",
            "တူညီသောဦးတည်ချက်ရှိသော ပိုသေးငယ်သည့် တုံ့ပြန်အား",
            "တုံ့ပြန်အား လုံးဝ မရှိပါ",
            "တူညီသောဦးတည်ချက်ရှိသော နှစ်ဆကြီးသောအား",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is often summarised as \"every action has an equal and opposite reaction.\"",
            "When you push on a wall, the wall pushes back on you with the same size of force, in the opposite direction.",
          ],
          hintsMy: [
            "ဤသည်ကို \"လုပ်ဆောင်မှုတိုင်းတွင် ညီမျှပြီး ဆန့်ကျင်ဘက်တုံ့ပြန်မှု ရှိသည်\" ဟု မကြာခဏ အကျဉ်းချုပ်ကြသည်။",
            "သင်သည် နံရံကို တွန်းသောအခါ နံရံက သင့်ကို တူညီသောအားအရွယ်အစားဖြင့် ဆန့်ကျင်ဘက်ဦးတည်ချက်သို့ ပြန်တွန်းသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "A skydiver reaches terminal velocity when...",
          questionMy:
              "မိုးလှေခုန်သူတစ်ဦးသည် မည်သည့်အချိန်တွင် အမြင့်ဆုံးအမြန်နှုန်း (Terminal velocity) သို့ ရောက်ရှိသနည်း။",
          optionsEn: [
            "Air resistance becomes equal to their weight, so the resultant force is zero",
            "They first jump out of the plane",
            "Their parachute has not yet opened",
            "Gravity stops acting on them completely",
          ],
          optionsMy: [
            "လေခုခံအားသည် ၎င်း၏အလေးချိန်နှင့် ညီမျှလာသောကြောင့် ရလဒ်အားသည် သုညဖြစ်လာသည်",
            "လေယာဉ်မှ ဦးစွာ ခုန်ချသောအချိန်",
            "ရွက်ဖြန့်ထီး မဖွင့်ရသေးသည့်အချိန်",
            "ဆွဲငင်အားက ၎င်းတို့အပေါ် လုံးဝ မသက်ရောက်တော့သည့်အချိန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "As speed increases, air resistance increases too -- eventually it grows large enough to balance weight exactly.",
            "When the resultant force becomes zero, acceleration also becomes zero, so speed stops increasing (becomes constant).",
          ],
          hintsMy: [
            "အမြန်နှုန်းတိုးလာသည်နှင့်အမျှ လေခုခံအားလည်း တိုးလာသည် -- နောက်ဆုံးတွင် ၎င်းသည် အလေးချိန်ကို အတိအကျ ညီမျှစေလောက်အောင် ကြီးထွားလာသည်။",
            "ရလဒ်အားသည် သုညဖြစ်လာသောအခါ အရှိန်လည်း သုညဖြစ်လာသဖြင့် အမြန်နှုန်း တိုးလာခြင်း ရပ်တန့်သည် (ပုံသေဖြစ်သွားသည်)။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w10-d2",
      dayNumber: 2,
      titleEn: "Match the Forces Vocabulary",
      titleMy: "အားများဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w10-dm-1",
          termEn: "Newton's First Law",
          termMy: "နယူတန်၏ ပထမနိယာမ (First Law)",
          matchEn:
              "An object stays at rest or constant velocity unless a resultant force acts on it.",
          matchMy:
              "ရလဒ်အားတစ်ခု မသက်ရောက်ပါက အရာဝတ္ထုတစ်ခုသည် ငြိမ်နေ (သို့) ပုံသေအဟုန်ဖြင့် ရွေ့လျားနေသည်။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w10-dm-2",
          termEn: "Newton's Second Law",
          termMy: "နယူတန်၏ ဒုတိယနိယာမ (Second Law)",
          matchEn: "Force equals mass multiplied by acceleration (F = ma).",
          matchMy:
              "အားသည် ထုထည်ကို အရှိန်ဖြင့် မြှောက်ထားခြင်းနှင့် ညီမျှသည် (F = ma)။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w10-dm-3",
          termEn: "Newton's Third Law",
          termMy: "နယူတန်၏ တတိယနိယာမ (Third Law)",
          matchEn:
              "Every action force has an equal and opposite reaction force.",
          matchMy:
              "လုပ်ဆောင်အားတိုင်းတွင် ညီမျှပြီး ဆန့်ကျင်ဘက် တုံ့ပြန်အား ရှိသည်။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w10-dm-4",
          termEn: "Weight",
          termMy: "အလေးချိန် (Weight)",
          matchEn:
              "The force of gravity on an object, equal to mass multiplied by gravitational field strength.",
          matchMy:
              "အရာဝတ္ထုတစ်ခုအပေါ် ဆွဲငင်အား၏ အားဖြစ်ပြီး၊ ထုထည်ကို ဂရာဝီတီရှေ့တန်းအား အားဖြင့် မြှောက်ထားခြင်းနှင့် ညီမျှသည်။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w10-dm-5",
          termEn: "Terminal Velocity",
          termMy: "အမြင့်ဆုံးအမြန်နှုန်း (Terminal Velocity)",
          matchEn:
              "The constant maximum speed reached when air resistance equals weight.",
          matchMy:
              "လေခုခံအားသည် အလေးချိန်နှင့် ညီမျှသောအခါ ရောက်ရှိသော ပုံသေအမြင့်ဆုံးအမြန်နှုန်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w10-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Law of Motion?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် ရွေ့လျားမှု နိယာမလဲ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Newton's First Law",
          "Newton's Second Law",
          "Newton's Third Law",
        ],
        bucketsMy: [
          "နယူတန်၏ ပထမနိယာမ",
          "နယူတန်၏ ဒုတိယနိယာမ",
          "နယူတန်၏ တတိယနိယာမ",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w10-sort-1",
            labelEn:
                "A book stays still on a table because balanced forces act on it",
            labelMy:
                "စာအုပ်တစ်အုပ်သည် မျှတသောအားများ သက်ရောက်နေသောကြောင့် စားပွဲပေါ်တွင် တည်ငြိမ်နေသည်",
            correctBucketEn: "Newton's First Law",
            correctBucketMy: "နယူတန်၏ ပထမနိယာမ",
          ),
          SortingItem(
            id: "igcsecs-w10-sort-2",
            labelEn:
                "A ball rolling on ice keeps moving at constant speed with no friction",
            labelMy:
                "ရေခဲပေါ်တွင် လိမ့်နေသော ဘောလုံးသည် ပွတ်တိုက်အားမရှိဘဲ ပုံသေအမြန်နှုန်းဖြင့် ဆက်လက်ရွေ့လျားနေသည်",
            correctBucketEn: "Newton's First Law",
            correctBucketMy: "နယူတန်၏ ပထမနိယာမ",
          ),
          SortingItem(
            id: "igcsecs-w10-sort-3",
            labelEn:
                "A stationary object needs an unbalanced force to start moving",
            labelMy:
                "ငြိမ်နေသော အရာဝတ္ထုတစ်ခုသည် ရွေ့လျားစတင်ရန် မမျှတသောအားတစ်ခု လိုအပ်သည်",
            correctBucketEn: "Newton's First Law",
            correctBucketMy: "နယူတန်၏ ပထမနိယာမ",
          ),
          SortingItem(
            id: "igcsecs-w10-sort-4",
            labelEn: "Doubling the force on a trolley doubles its acceleration",
            labelMy:
                "လှည်းတစ်စီးအပေါ် အားနှစ်ဆတိုးပေးလိုက်ပါက ၎င်း၏ အရှိန် နှစ်ဆ တိုးလာသည်",
            correctBucketEn: "Newton's Second Law",
            correctBucketMy: "နယူတန်၏ ဒုတိယနိယာမ",
          ),
          SortingItem(
            id: "igcsecs-w10-sort-5",
            labelEn:
                "A heavier car needs a bigger force to reach the same acceleration",
            labelMy:
                "ပိုလေးသောကားတစ်စီးသည် တူညီသောအရှိန်ရောက်ရန် ပိုကြီးသောအား လိုအပ်သည်",
            correctBucketEn: "Newton's Second Law",
            correctBucketMy: "နယူတန်၏ ဒုတိယနိယာမ",
          ),
          SortingItem(
            id: "igcsecs-w10-sort-6",
            labelEn: "F = ma is used to calculate the resulting acceleration",
            labelMy:
                "F = ma ကို ဖြစ်ပေါ်လာသောအရှိန်ကို တွက်ချက်ရန် အသုံးပြုသည်",
            correctBucketEn: "Newton's Second Law",
            correctBucketMy: "နယူတန်၏ ဒုတိယနိယာမ",
          ),
          SortingItem(
            id: "igcsecs-w10-sort-7",
            labelEn:
                "A swimmer pushes water backward, and water pushes the swimmer forward",
            labelMy:
                "ရေကူးသမားတစ်ဦးသည် ရေကို နောက်ဘက်သို့ တွန်းလိုက်သောအခါ ရေသည် ရေကူးသမားကို ရှေ့ဘက်သို့ ပြန်တွန်းသည်",
            correctBucketEn: "Newton's Third Law",
            correctBucketMy: "နယူတန်၏ တတိယနိယာမ",
          ),
          SortingItem(
            id: "igcsecs-w10-sort-8",
            labelEn:
                "A rocket pushes gas downward, and gas pushes the rocket upward",
            labelMy:
                "ဒုံးပျံသည် ဓာတ်ငွေ့ကို အောက်ဘက်သို့ တွန်းလိုက်သောအခါ ဓာတ်ငွေ့သည် ဒုံးပျံကို အပေါ်ဘက်သို့ ပြန်တွန်းသည်",
            correctBucketEn: "Newton's Third Law",
            correctBucketMy: "နယူတန်၏ တတိယနိယာမ",
          ),
          SortingItem(
            id: "igcsecs-w10-sort-9",
            labelEn:
                "Walking forward relies on your foot pushing the ground backward",
            labelMy:
                "ရှေ့သို့ လမ်းလျှောက်ခြင်းသည် သင့်ခြေထောက်က မြေကို နောက်ဘက်သို့ တွန်းလိုက်ခြင်းအပေါ် မှီခိုသည်",
            correctBucketEn: "Newton's Third Law",
            correctBucketMy: "နယူတန်၏ တတိယနိယာမ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w10-d4",
      dayNumber: 4,
      titleEn: "Reading: Moe Moe's Falling Coffee Filter Experiment",
      titleMy:
          "စာဖတ်ခြင်း - မိုးမိုး၏ ပြုတ်ကျနေသော ကော်ဖီစစ်ကတ်ပါဆာ စမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Moe Moe's Falling Coffee Filter Experiment",
        titleMy: "မိုးမိုး၏ ပြုတ်ကျနေသော ကော်ဖီစစ်ကတ်ပါဆာ စမ်းသပ်မှု",
        passageEn:
            "To model terminal velocity safely in class, Moe Moe dropped a paper coffee filter from a fixed height and filmed its fall in slow motion, since a real skydiver's fall would be far too fast and dangerous to observe directly. Watching the footage frame by frame, she noticed the filter accelerated quickly for a brief moment right after release, then appeared to fall at a constant speed for the rest of the drop.\n\nMoe Moe explained the initial acceleration using Newton's Second Law: right after release, the filter's weight (pulling it down) was much larger than the air resistance acting on it (which barely existed yet, since the filter was barely moving), so there was a large resultant force downward, producing a large acceleration. As the filter sped up, air resistance grew larger too, since air resistance increases with speed.\n\nEventually, Moe Moe observed the filter reach a point where it seemed to stop accelerating altogether, falling at a constant speed for the rest of its journey to the floor. She explained this was the moment air resistance had grown large enough to exactly equal the filter's weight -- meaning the resultant force was now zero, so by Newton's First Law, the filter continued at a constant velocity rather than accelerating further. She noted that a real skydiver experiences exactly the same three stages, just at a much higher terminal velocity, since a human's much greater weight requires far more air resistance to balance it out.",
        passageMy:
            "အတန်းတွင် အမြင့်ဆုံးအမြန်နှုန်းကို ဘေးကင်းစွာ ပုံဖော်ရန် မိုးမိုးသည် စက္ကူကော်ဖီစစ်ကတ်ပါဆာတစ်ခုကို ပုံသေအမြင့်တစ်ခုမှ ချထားလိုက်ပြီး ၎င်း၏ ပြုတ်ကျမှုကို နှေးကွေးသောလှုပ်ရှားမှု (slow motion) ဖြင့် ရိုက်ကူးခဲ့သည်၊ အဘယ်ကြောင့်ဆိုသော် စစ်မှန်သော မိုးလှေခုန်သူတစ်ဦး၏ ပြုတ်ကျမှုသည် တိုက်ရိုက်စောင့်ကြည့်ရန် အလွန်လျင်မြန်ပြီး အန္တရာယ်ရှိသောကြောင့်ဖြစ်သည်။ ဗီဒီယိုအကွက်တစ်ခုချင်းစီကို ကြည့်ရှုစဉ် သူသည် စစ်ကတ်ပါဆာသည် လွှတ်ပြီးချင်း တိုတိုတဲ့ ခဏတစ်ဖြုတ်တွင် လျင်မြန်စွာ အရှိန်တက်ပြီး ထို့နောက် ကျန်ရှိသော ကျခြင်းအတွင်း ပုံသေအမြန်နှုန်းဖြင့် ကျသွားသည်ကို ဖြစ်ပုံရသည်။\n\nမိုးမိုးသည် အစပိုင်း အရှိန်တက်ခြင်းကို နယူတန်၏ ဒုတိယနိယာမဖြင့် ရှင်းပြခဲ့သည်: လွှတ်ပြီးချင်း စစ်ကတ်ပါဆာ၏ အလေးချိန် (အောက်သို့ ဆွဲနေ) သည် ၎င်းအပေါ် သက်ရောက်နေသော လေခုခံအား (စစ်ကတ်ပါဆာ ရွေ့လျားနေဆဲ ဖြစ်သောကြောင့် လက်ရှိမရှိသလောက်) ထက် အလွန်ပိုကြီးသောကြောင့် အောက်သို့ ကြီးမားသော ရလဒ်အား ရှိပြီး ကြီးမားသော အရှိန်ကို ဖြစ်ပေါ်စေခဲ့သည်။ စစ်ကတ်ပါဆာ ပိုမိုမြန်လာသည်နှင့်အမျှ လေခုခံအားလည်း ကြီးလာသည်၊ အဘယ်ကြောင့်ဆိုသော် လေခုခံအားသည် အမြန်နှုန်းနှင့်အတူ တိုးလာသောကြောင့်ဖြစ်သည်။\n\nနောက်ဆုံးတွင် မိုးမိုးသည် စစ်ကတ်ပါဆာသည် လုံးဝ အရှိန်တက်ခြင်း ရပ်တန့်သွားသည့်အမှတ်တစ်ခုသို့ ရောက်သွားသည်ကို တွေ့ရှိခဲ့ပြီး၊ ကြမ်းပြင်သို့ ကျန်ရှိသောခရီးတစ်လျှောက်လုံး ပုံသေအမြန်နှုန်းဖြင့် ကျသွားခဲ့သည်။ သူသည် ဤသည်မှာ လေခုခံအားသည် စစ်ကတ်ပါဆာ၏အလေးချိန်နှင့် အတိအကျ ညီမျှသည့် အချိန်ဖြစ်ကြောင်း ရှင်းပြခဲ့သည် -- ၎င်းက ရလဒ်အားသည် ယခုအခါ သုညဖြစ်နေကြောင်း ဆိုလိုသောကြောင့် နယူတန်၏ ပထမနိယာမအရ စစ်ကတ်ပါဆာသည် နောက်ထပ် အရှိန်မတက်ဘဲ ပုံသေအဟုန်ဖြင့် ဆက်လက်ရွေ့လျားခဲ့သည်။ စစ်မှန်သော မိုးလှေခုန်သူတစ်ဦးသည် အလားတူအဆင့်သုံးဆင့်ကို အတိအတိအကျအတွေ့ကြုံရသော်လည်း၊ လူသား၏ ပိုကြီးသောအလေးချိန်သည် ၎င်းကို ချိန်ညှိရန် ပိုများသောလေခုခံအား လိုအပ်သဖြင့် အမြင့်ဆုံးအမြန်နှုန်း ပိုမြင့်သည်ဟု သူ ဆင်ခြင်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Why did the coffee filter accelerate quickly right after being released?",
            questionMy:
                "ကော်ဖီစစ်ကတ်ပါဆာသည် လွှတ်ပြီးချင်း အဘယ်ကြောင့် လျင်မြန်စွာ အရှိန်တက်ခဲ့သနည်း။",
            optionsEn: [
              "Its weight was much larger than the air resistance acting on it at that moment",
              "There was no gravity acting on it yet",
              "Air resistance was already at its maximum",
              "The filter was being pushed by a hand",
            ],
            optionsMy: [
              "ထိုအချိန်တွင် ၎င်းအပေါ် သက်ရောက်နေသော လေခုခံအားထက် ၎င်း၏အလေးချိန် အလွန်ပိုကြီးသောကြောင့်",
              "ဆွဲငင်အား မသက်ရောက်သေးသောကြောင့်",
              "လေခုခံအားသည် အမြင့်ဆုံးသို့ ရောက်ပြီးဖြစ်သောကြောင့်",
              "စစ်ကတ်ပါဆာကို လက်ဖြင့် တွန်းထားခြင်းခံရသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation of the initial moment right after release.",
              "A large resultant force (weight much bigger than air resistance) produces a large acceleration, by F = ma.",
            ],
            hintsMy: [
              "လွှတ်ပြီးချင်း အစပိုင်းအချိန်နှင့်ပတ်သက်သော ဒုတိယစာပိုဒ်ရှင်းပြချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ကြီးမားသော ရလဒ်အား (လေခုခံအားထက် အလေးချိန်ပိုကြီးခြင်း) သည် F = ma အရ ကြီးမားသောအရှိန်ကို ဖြစ်ပေါ်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did air resistance grow larger as the filter fell?",
            questionMy:
                "စစ်ကတ်ပါဆာ ကျဆင်းလာသည်နှင့်အမျှ လေခုခံအား အဘယ်ကြောင့် ပိုကြီးလာသနည်း။",
            optionsEn: [
              "Air resistance increases with speed",
              "The filter grew larger in size",
              "Gravity decreased over time",
              "The room got colder",
            ],
            optionsMy: [
              "လေခုခံအားသည် အမြန်နှုန်းနှင့်အတူ တိုးလာသောကြောင့်",
              "စစ်ကတ်ပါဆာ ပိုကြီးလာသောကြောင့်",
              "ဆွဲငင်အား အချိန်နှင့်အမျှ လျော့ကျလာသောကြောင့်",
              "အခန်း ပိုအေးလာသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the second paragraph's final sentence.",
              "The faster an object moves through air, the more air resistance opposes it.",
            ],
            hintsMy: [
              "ဤအချက်ကို ဒုတိယစာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အရာဝတ္ထုတစ်ခု လေထုကို ဖြတ်ပြီး ပိုမြန်လေလေ လေခုခံအားက ပိုဆန့်ကျင်လေလေ ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did the filter stop accelerating and fall at a constant speed?",
            questionMy:
                "စစ်ကတ်ပါဆာသည် အဘယ်ကြောင့် အရှိန်တက်ခြင်း ရပ်တန့်ပြီး ပုံသေအမြန်နှုန်းဖြင့် ကျခဲ့သနည်း။",
            optionsEn: [
              "Air resistance grew large enough to exactly equal its weight, making the resultant force zero",
              "The filter ran out of energy",
              "Gravity switched off",
              "The filter reversed direction",
            ],
            optionsMy: [
              "လေခုခံအားသည် ၎င်း၏အလေးချိန်နှင့် အတိအကျ ညီမျှစေလောက်အောင် ကြီးထွားလာပြီး ရလဒ်အားကို သုညဖြစ်စေခဲ့သောကြောင့်",
              "စစ်ကတ်ပါဆာ စွမ်းအင်ကုန်သွားသောကြောင့်",
              "ဆွဲငင်အား ပိတ်သွားသောကြောင့်",
              "စစ်ကတ်ပါဆာ ဦးတည်ချက် ပြောင်းပြန်ဖြစ်သွားသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation of this stage.",
              "By Newton's First Law, zero resultant force means constant velocity, not zero velocity.",
            ],
            hintsMy: [
              "ဤအဆင့်နှင့်ပတ်သက်သော တတိယစာပိုဒ်၏ ရှင်းပြချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "နယူတန်၏ ပထမနိယာမအရ ရလဒ်အားသုညသည် ပုံသေအဟုန်ကို ဆိုလိုသည်၊ အဟုန်သုညကို ဆိုလိုခြင်းမဟုတ်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why does a real skydiver have a much higher terminal velocity than a paper filter?",
            questionMy:
                "စစ်မှန်သော မိုးလှေခုန်သူတစ်ဦးသည် စက္ကူစစ်ကတ်ပါဆာတစ်ခုထက် အမြင့်ဆုံးအမြန်နှုန်း ပိုမြင့်ရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
            optionsEn: [
              "A human's much greater weight requires far more air resistance to balance it out",
              "Humans do not experience gravity",
              "Skydivers never reach terminal velocity",
              "Air resistance does not affect humans",
            ],
            optionsMy: [
              "လူသား၏ ပိုကြီးသောအလေးချိန်သည် ချိန်ညှိရန် ပိုများသောလေခုခံအား လိုအပ်သောကြောင့်",
              "လူသားများသည် ဆွဲငင်အားကို မခံစားရသောကြောင့်",
              "မိုးလှေခုန်သူများသည် အမြင့်ဆုံးအမြန်နှုန်း လုံးဝ မရောက်ဖူးသောကြောင့်",
              "လေခုခံအားသည် လူသားများကို မထိခိုက်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "A heavier object needs a larger air resistance force to reach the balance point where resultant force is zero.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ပိုလေးသောအရာဝတ္ထုတစ်ခုသည် ရလဒ်အားသုညဖြစ်သည့် ဟန်ချက်ညီမှတ်သို့ ရောက်ရန် ပိုကြီးသောလေခုခံအား လိုအပ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w10-d5",
      dayNumber: 5,
      titleEn: "Week 10 Recap: Effects of Forces",
      titleMy: "အပတ်စဉ် ၁၀ ပြန်လည်သုံးသပ်ခြင်း - အားများ၏ သက်ရောက်မှုများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Newton's First Law is often called the law of...",
          questionMy: "နယူတန်၏ ပထမနိယာမကို မည်သည့်ဥပဒေဟု မကြာခဏ ခေါ်ကြသနည်း။",
          optionsEn: ["Inertia", "Gravity", "Reflection", "Conservation"],
          optionsMy: [
            "ဆွဲငင်ခုခံခြင်း (Inertia)",
            "ဆွဲငင်အား",
            "ရောင်ပြန်ဟပ်မှု",
            "ထိန်းသိမ်းမှု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "F = ma is the equation for Newton's...",
          questionMy:
              "F = ma သည် နယူတန်၏ မည်သည့်နိယာမအတွက် ညီမျှခြင်းဖြစ်သနည်း။",
          optionsEn: ["Second Law", "First Law", "Third Law", "Fourth Law"],
          optionsMy: ["ဒုတိယနိယာမ", "ပထမနိယာမ", "တတိယနိယာမ", "စတုတ္ထနိယာမ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Newton's Third Law describes...",
          questionMy: "နယူတန်၏ တတိယနိယာမသည် မည်သည့်အရာကို ဖော်ပြသနည်း။",
          optionsEn: [
            "Equal and opposite action-reaction force pairs",
            "The relationship between mass and acceleration",
            "Terminal velocity only",
            "The law of conservation of energy",
          ],
          optionsMy: [
            "ညီမျှပြီး ဆန့်ကျင်ဘက် လုပ်ဆောင်-တုံ့ပြန် အားစုံလုပ်ငန်း",
            "ထုထည်နှင့် အရှိန်ကြား ဆက်စပ်မှု",
            "အမြင့်ဆုံးအမြန်နှုန်းသာ",
            "စွမ်းအင်ထိန်းသိမ်းမှု ဥပဒေ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Terminal velocity occurs when...",
          questionMy:
              "အမြင့်ဆုံးအမြန်နှုန်းသည် မည်သည့်အချိန်တွင် ဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "Air resistance equals weight, so resultant force is zero",
            "Gravity disappears completely",
            "An object stops moving completely",
            "Air resistance is always zero",
          ],
          optionsMy: [
            "လေခုခံအားသည် အလေးချိန်နှင့် ညီမျှသောကြောင့် ရလဒ်အားသည် သုညဖြစ်သည်",
            "ဆွဲငင်အား လုံးဝ ပျောက်ကွယ်သွားသည်",
            "အရာဝတ္ထုတစ်ခု ရွေ့လျားမှု လုံးဝ ရပ်တန့်သွားသည်",
            "လေခုခံအား အမြဲတမ်း သုညဖြစ်သည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 11: "Energy Resources and Transfer"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek11 = CourseWeekDef(
  id: "course-igcse-combsci-w11",
  weekNumber: 11,
  titleEn: "Energy Resources and Transfer",
  titleMy: "စွမ်းအင် အရင်းအမြစ်များနှင့် ကူးပြောင်းမှု",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w11-d1",
      dayNumber: 1,
      titleEn: "Energy and Energy Resources Quiz",
      titleMy: "စွမ်းအင်နှင့် စွမ်းအင်အရင်းအမြစ်များ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Kinetic energy is the energy an object has because of its...",
          questionMy:
              "ကိုင်းနက်တစ်စွမ်းအင် (Kinetic energy) သည် အရာဝတ္ထုတစ်ခု၏ မည်သည့်အချက်ကြောင့် ရှိသော စွမ်းအင်ဖြစ်သနည်း။",
          optionsEn: [
            "Motion",
            "Height above the ground only",
            "Colour",
            "Temperature only",
          ],
          optionsMy: [
            "ရွေ့လျားမှု",
            "မြေပြင်အထက် အမြင့်သာ",
            "အရောင်",
            "အပူချိန်သာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Kinetic energy = 1/2 x mass x velocity squared -- notice velocity is the key variable.",
            "A moving car has kinetic energy; a car parked with its engine off has none, regardless of colour or temperature.",
          ],
          hintsMy: [
            "ကိုင်းနက်တစ်စွမ်းအင် = ၁/၂ x ထုထည် x အဟုန်စတုရန်း -- အဟုန်သည် အဓိကကိန်းရှင်ဖြစ်ကြောင်း သတိပြုပါ။",
            "ရွေ့လျားနေသောကားတစ်စီးတွင် ကိုင်းနက်တစ်စွမ်းအင် ရှိပြီး၊ အင်ဂျင်ပိတ်ထားသော ရပ်နားထားသောကားတွင် အရောင် (သို့) အပူချိန် မည်သို့ပင်ရှိစေ လုံးဝ မရှိပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Gravitational potential energy depends on an object's...",
          questionMy:
              "ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင် (Gravitational potential energy) သည် အရာဝတ္ထုတစ်ခု၏ မည်သည့်အချက်ပေါ် မှီခိုသနည်း။",
          optionsEn: [
            "Height above a reference point",
            "Colour and shape",
            "Speed only",
            "Temperature only",
          ],
          optionsMy: [
            "ရည်ညွှန်းအမှတ်အထက် အမြင့်",
            "အရောင်နှင့် ပုံသဏ္ဍာန်",
            "အမြန်နှုန်းသာ",
            "အပူချိန်သာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Gravitational potential energy = mass x gravitational field strength x height.",
            "An object raised higher above the ground has more gravitational potential energy, even if it isn't moving.",
          ],
          hintsMy: [
            "ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင် = ထုထည် x ဂရာဝီတီရှေ့တန်းအား x အမြင့်။",
            "မြေပြင်အထက် ပိုမြင့်စွာ မြှင့်တင်ထားသော အရာဝတ္ထုတစ်ခုသည် ရွေ့လျားနေခြင်း မရှိစေကာမူ ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင် ပိုများသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "The principle of conservation of energy states that energy...",
          questionMy:
              "စွမ်းအင်ထိန်းသိမ်းမှု (Conservation of energy) မူသည် စွမ်းအင်နှင့်ပတ်သက်၍ မည်သို့ ဖော်ပြသနည်း။",
          optionsEn: [
            "Cannot be created or destroyed, only transferred from one form to another",
            "Is always destroyed after use",
            "Can be created from nothing",
            "Only exists in kinetic form",
          ],
          optionsMy: [
            "ဖန်တီးခြင်း (သို့) ဖျက်ဆီးခြင်း မပြုနိုင်ဘဲ ပုံစံတစ်ခုမှ တစ်ခုသို့ ကူးပြောင်းသည်",
            "အသုံးပြုပြီးနောက် အမြဲတမ်း ဖျက်ဆီးခံရသည်",
            "မည်သည့်အရာမှမှ ဖန်တီးနိုင်သည်",
            "ကိုင်းနက်တစ်ပုံစံတွင်သာ ရှိသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "When a ball falls, its gravitational potential energy transforms into kinetic energy -- the total amount stays the same.",
            "Energy that seems \"lost\" (like to sound or heat) has actually just been transferred into a less useful form.",
          ],
          hintsMy: [
            "ဘောလုံးတစ်လုံး ကျဆင်းသောအခါ ၎င်း၏ ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင်သည် ကိုင်းနက်တစ်စွမ်းအင်အဖြစ် ကူးပြောင်းသည် -- စုစုပေါင်းပမာဏ တူညီနေဆဲဖြစ်သည်။",
            "\"ဆုံးရှုံး\" သွားသည်ဟုထင်ရသောစွမ်းအင် (အသံ သို့ အပူကဲ့သို့) သည် အမှန်တကယ်တွင် အသုံးဝင်မှုနည်းသော ပုံစံသို့ ကူးပြောင်းသွားခြင်းသာဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which of these is a renewable energy resource?",
          questionMy:
              "အောက်ပါတို့အနက် ပြန်လည်ပြည့်ဖြိုးနိုင်သော စွမ်းအင်အရင်းအမြစ် (Renewable) ဖြစ်သည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: ["Solar power", "Coal", "Natural gas", "Oil"],
          optionsMy: ["ဆိုလာစွမ်းအင်", "ကျောက်မီးသွေး", "သဘာဝဓာတ်ငွေ့", "ရေနံ"],
          correctIndex: 0,
          hintsEn: [
            "A renewable resource is naturally replenished faster than it is used, like sunlight, wind, or flowing water.",
            "Fossil fuels (coal, natural gas, oil) took millions of years to form and cannot be replaced within a human lifetime.",
          ],
          hintsMy: [
            "ပြန်လည်ပြည့်ဖြိုးနိုင်သော အရင်းအမြစ်တစ်ခုသည် အသုံးပြုသည်ထက် ပိုမြန်စွာ သဘာဝအတိုင်း ပြန်လည်ဖြည့်တင်းသည်၊ နေရောင်ခြည်၊ လေ (သို့) စီးဆင်းနေသောရေကဲ့သို့။",
            "ဖော်ဆစ်လ်လောင်စာများ (ကျောက်မီးသွေး၊ သဘာဝဓာတ်ငွေ့၊ ရေနံ) သည် ဖြစ်ပေါ်ရန် နှစ်သန်းချီကြာမြင့်ခဲ့ပြီး လူသားတစ်ဦး၏ဘဝတစ်လျှောက်အတွင်း အစားထိုးနိုင်ခြင်း မရှိပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w11-d2",
      dayNumber: 2,
      titleEn: "Match the Energy Vocabulary",
      titleMy: "စွမ်းအင်ဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w11-dm-1",
          termEn: "Kinetic Energy",
          termMy: "ကိုင်းနက်တစ်စွမ်းအင် (Kinetic Energy)",
          matchEn: "The energy an object has because it is moving.",
          matchMy: "အရာဝတ္ထုတစ်ခု ရွေ့လျားနေသောကြောင့် ရှိသော စွမ်းအင်။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w11-dm-2",
          termEn: "Gravitational Potential Energy",
          termMy: "ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင် (Gravitational Potential Energy)",
          matchEn:
              "The energy an object has because of its height above a reference point.",
          matchMy:
              "အရာဝတ္ထုတစ်ခု ရည်ညွှန်းအမှတ်အထက် အမြင့်ကြောင့် ရှိသော စွမ်းအင်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w11-dm-3",
          termEn: "Conservation of Energy",
          termMy: "စွမ်းအင်ထိန်းသိမ်းမှု (Conservation of Energy)",
          matchEn:
              "Energy cannot be created or destroyed, only transferred between forms.",
          matchMy:
              "စွမ်းအင်ကို ဖန်တီးခြင်း (သို့) ဖျက်ဆီးခြင်း မပြုနိုင်ဘဲ ပုံစံများအကြား ကူးပြောင်းသာ ပြုနိုင်သည်။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w11-dm-4",
          termEn: "Renewable Energy Resource",
          termMy: "ပြန်လည်ပြည့်ဖြိုးနိုင်သော စွမ်းအင်အရင်းအမြစ် (Renewable)",
          matchEn:
              "A resource naturally replenished faster than it is used, like solar or wind.",
          matchMy:
              "အသုံးပြုသည်ထက် ပိုမြန်စွာ သဘာဝအတိုင်း ပြန်လည်ဖြည့်တင်းသော အရင်းအမြစ်၊ ဆိုလာ (သို့) လေကဲ့သို့။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w11-dm-5",
          termEn: "Non-Renewable Energy Resource",
          termMy:
              "ပြန်လည်မပြည့်ဖြိုးနိုင်သော စွမ်းအင်အရင်းအမြစ် (Non-Renewable)",
          matchEn:
              "A finite resource that takes millions of years to form and will eventually run out.",
          matchMy:
              "ဖြစ်ပေါ်ရန် နှစ်သန်းချီကြာမြင့်ပြီး နောက်ဆုံးတွင် ကုန်ခန်းသွားမည့် ကန့်သတ်အရင်းအမြစ်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w11-d3",
      dayNumber: 3,
      titleEn: "Sort: Renewable or Non-Renewable?",
      titleMy: "စီစစ်ကြမည် - ပြန်လည်ပြည့်ဖြိုးနိုင်လား၊ မပြည့်ဖြိုးနိုင်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Renewable Energy Resource",
          "Non-Renewable Energy Resource",
        ],
        bucketsMy: [
          "ပြန်လည်ပြည့်ဖြိုးနိုင်သောစွမ်းအင်",
          "ပြန်လည်မပြည့်ဖြိုးနိုင်သောစွမ်းအင်",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w11-sort-1",
            labelEn: "Solar power",
            labelMy: "ဆိုလာစွမ်းအင်",
            correctBucketEn: "Renewable Energy Resource",
            correctBucketMy: "ပြန်လည်ပြည့်ဖြိုးနိုင်သောစွမ်းအင်",
          ),
          SortingItem(
            id: "igcsecs-w11-sort-2",
            labelEn: "Wind power",
            labelMy: "လေအားစွမ်းအင်",
            correctBucketEn: "Renewable Energy Resource",
            correctBucketMy: "ပြန်လည်ပြည့်ဖြိုးနိုင်သောစွမ်းအင်",
          ),
          SortingItem(
            id: "igcsecs-w11-sort-3",
            labelEn: "Hydroelectric power",
            labelMy: "ရေအားလျှပ်စစ်စွမ်းအင်",
            correctBucketEn: "Renewable Energy Resource",
            correctBucketMy: "ပြန်လည်ပြည့်ဖြိုးနိုင်သောစွမ်းအင်",
          ),
          SortingItem(
            id: "igcsecs-w11-sort-4",
            labelEn: "Geothermal power",
            labelMy: "ဂျီယိုသာမယ်စွမ်းအင် (မြေအောက်အပူစွမ်းအင်)",
            correctBucketEn: "Renewable Energy Resource",
            correctBucketMy: "ပြန်လည်ပြည့်ဖြိုးနိုင်သောစွမ်းအင်",
          ),
          SortingItem(
            id: "igcsecs-w11-sort-5",
            labelEn: "Coal",
            labelMy: "ကျောက်မီးသွေး",
            correctBucketEn: "Non-Renewable Energy Resource",
            correctBucketMy: "ပြန်လည်မပြည့်ဖြိုးနိုင်သောစွမ်းအင်",
          ),
          SortingItem(
            id: "igcsecs-w11-sort-6",
            labelEn: "Crude oil",
            labelMy: "ရေနံစိမ်း",
            correctBucketEn: "Non-Renewable Energy Resource",
            correctBucketMy: "ပြန်လည်မပြည့်ဖြိုးနိုင်သောစွမ်းအင်",
          ),
          SortingItem(
            id: "igcsecs-w11-sort-7",
            labelEn: "Natural gas",
            labelMy: "သဘာဝဓာတ်ငွေ့",
            correctBucketEn: "Non-Renewable Energy Resource",
            correctBucketMy: "ပြန်လည်မပြည့်ဖြိုးနိုင်သောစွမ်းအင်",
          ),
          SortingItem(
            id: "igcsecs-w11-sort-8",
            labelEn: "Nuclear fuel (uranium)",
            labelMy: "နျူကလီးယားလောင်စာ (ယူရေနီယမ်)",
            correctBucketEn: "Non-Renewable Energy Resource",
            correctBucketMy: "ပြန်လည်မပြည့်ဖြိုးနိုင်သောစွမ်းအင်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w11-d4",
      dayNumber: 4,
      titleEn: "Reading: Zin Ko's Pendulum Energy Investigation",
      titleMy:
          "စာဖတ်ခြင်း - ဇင်ကို၏ ချိန်ခွင်လှုပ် (Pendulum) စွမ်းအင် စမ်းသပ်လေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Zin Ko's Pendulum Energy Investigation",
        titleMy: "ဇင်ကို၏ ချိန်ခွင်လှုပ် (Pendulum) စွမ်းအင် စမ်းသပ်လေ့လာမှု",
        passageEn:
            "For an energy transfer practical, Zin Ko set up a simple pendulum, pulled the bob back to a measured height above its lowest point, and let it go, filming its swing on his phone in slow motion. His task was to explain the energy transfers happening throughout a single swing, using the principle of conservation of energy.\n\nAt the highest point, just before release, Zin Ko noted the bob was momentarily stationary, meaning it had zero kinetic energy but maximum gravitational potential energy, since it was at its greatest height above the lowest point of the swing. As the bob swung downward, he observed it speeding up continuously, reaching its fastest speed exactly at the lowest point of the swing -- the point of maximum kinetic energy and zero gravitational potential energy relative to that lowest point.\n\nZin Ko calculated the bob's gravitational potential energy at the highest point (mass x gravitational field strength x height) and compared it to the kinetic energy he calculated at the lowest point (1/2 x mass x velocity squared, using speed measurements from his slow-motion footage). His two values came out very close but not perfectly equal, with a small amount of energy unaccounted for. His teacher explained this difference was not a true loss of energy, since energy can never simply disappear, but was actually transferred into other forms -- mainly sound and heat generated by air resistance and friction at the pivot point -- which meant the total energy at every point in the swing genuinely stayed conserved, even though not all of it remained as useful kinetic or potential energy.",
        passageMy:
            "စွမ်းအင်ကူးပြောင်းမှု လက်တွေ့စမ်းသပ်မှုအတွက် ဇင်ကိုသည် ရိုးရှင်းသော ချိန်ခွင်လှုပ်တစ်ခုကို ပြင်ဆင်ခဲ့ပြီး၊ ချိန်ခွင်လှုပ်ခေါင်းကို ၎င်း၏ အနိမ့်ဆုံးအမှတ်အထက် တိုင်းတာထားသော အမြင့်တစ်ခုသို့ ဆွဲယူပြီးနောက် လွှတ်ချလိုက်ကာ ၎င်း၏ ချီတက်လှုပ်ခါမှုကို ဖုန်းဖြင့် နှေးကွေးသောလှုပ်ရှားမှုဖြင့် ရိုက်ကူးခဲ့သည်။ သူ၏ တာဝန်မှာ စွမ်းအင်ထိန်းသိမ်းမှုမူကို အသုံးပြု၍ တစ်ကြိမ်တည်း ချီတက်လှုပ်ခါမှုတစ်လျှောက်လုံး ဖြစ်ပေါ်နေသော စွမ်းအင်ကူးပြောင်းမှုများကို ရှင်းပြရန်ဖြစ်သည်။\n\nအမြင့်ဆုံးအမှတ်တွင် လွှတ်ချမီအချိန်၌ ဇင်ကိုသည် ချိန်ခွင်လှုပ်ခေါင်းသည် ခဏတာ ငြိမ်နေသည်ကို သတိပြုမိသည်၊ ၎င်းက ကိုင်းနက်တစ်စွမ်းအင် သုညရှိပြီး အများဆုံး ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင် ရှိကြောင်း ဆိုလိုသည်၊ အဘယ်ကြောင့်ဆိုသော် ၎င်းသည် ချီတက်လှုပ်ခါမှု၏ အနိမ့်ဆုံးအမှတ်အထက် အမြင့်ဆုံးအမှတ်တွင် ရှိသောကြောင့်ဖြစ်သည်။ ချိန်ခွင်လှုပ်ခေါင်း အောက်သို့ ချီတက်လာသောအခါ သူသည် ၎င်းသည် စဉ်ဆက်မပြတ် မြန်လာသည်ကို တွေ့ရှိခဲ့ပြီး၊ ချီတက်လှုပ်ခါမှု၏ အနိမ့်ဆုံးအမှတ်တွင် အမြန်ဆုံးအမြန်နှုန်းသို့ ရောက်ရှိခဲ့သည် -- ၎င်းသည် အများဆုံး ကိုင်းနက်တစ်စွမ်းအင်နှင့် ထိုအနိမ့်ဆုံးအမှတ်နှင့် ဆက်စပ်၍ ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင် သုည ရှိသည့်အမှတ်ဖြစ်သည်။\n\nဇင်ကိုသည် အမြင့်ဆုံးအမှတ်ရှိ ချိန်ခွင်လှုပ်ခေါင်း၏ ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင် (ထုထည် x ဂရာဝီတီရှေ့တန်းအား x အမြင့်) ကို တွက်ချက်ပြီး၊ အနိမ့်ဆုံးအမှတ်တွင် တွက်ချက်ခဲ့သော ကိုင်းနက်တစ်စွမ်းအင် (၁/၂ x ထုထည် x အဟုန်စတုရန်း၊ ၎င်း၏ နှေးကွေးသောလှုပ်ရှားမှု ဗီဒီယိုမှ အမြန်နှုန်းတိုင်းတာချက်များကို အသုံးပြု၍) နှင့် နှိုင်းယှဉ်ခဲ့သည်။ သူ၏ တန်ဖိုးနှစ်ခုသည် အလွန်နီးစပ်သော်လည်း အတိအကျ မညီမျှခဲ့ပါ၊ စွမ်းအင်အနည်းငယ်ကို ရေတွက်၍မရသေးပါ။ သူ၏ ဆရာမက ဤကွာခြားချက်သည် စွမ်းအင်၏ စစ်မှန်သော ဆုံးရှုံးမှုမဟုတ်ကြောင်း ရှင်းပြခဲ့သည်၊ အဘယ်ကြောင့်ဆိုသော် စွမ်းအင်သည် ရိုးရှင်းစွာ ပျောက်ကွယ်ခြင်း လုံးဝ မပြုနိုင်သောကြောင့်ဖြစ်သည်၊ သို့သော် ၎င်းသည် အခြားပုံစံများသို့ ကူးပြောင်းသွားခြင်းသာ ဖြစ်သည် -- အဓိကအားဖြင့် လေခုခံအားနှင့် ချိတ်ဆက်အမှတ်ရှိ ပွတ်တိုက်မှုကြောင့် ဖြစ်ပေါ်လာသော အသံနှင့် အပူဖြစ်သည် -- ၎င်းက ချီတက်လှုပ်ခါမှုအတွင်း အမှတ်တိုင်းရှိ စုစုပေါင်းစွမ်းအင်သည် အသုံးဝင်သော ကိုင်းနက်တစ် (သို့) ပိုတန်ရှယ်စွမ်းအင်အဖြစ် အားလုံးမကျန်ရစ်ခဲ့ကာမူ အမှန်တကယ် ထိန်းသိမ်းခံထားရဆဲဖြစ်ကြောင်း ဆိုလိုသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "At the highest point of the swing, just before release, what was the bob's kinetic energy?",
            questionMy:
                "ချီတက်လှုပ်ခါမှု၏ အမြင့်ဆုံးအမှတ်တွင် လွှတ်ချမီ ချိန်ခွင်လှုပ်ခေါင်း၏ ကိုင်းနက်တစ်စွမ်းအင် မည်မျှရှိသနည်း။",
            optionsEn: [
              "Zero",
              "Maximum",
              "Half of maximum",
              "Equal to potential energy",
            ],
            optionsMy: [
              "သုည",
              "အများဆုံး",
              "အများဆုံး၏ တစ်ဝက်",
              "ပိုတန်ရှယ်စွမ်းအင်နှင့် ညီမျှ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph, where Zin Ko describes the bob's state right before release.",
              "The bob was momentarily stationary at this point -- stationary objects have no kinetic energy.",
            ],
            hintsMy: [
              "ဇင်ကိုသည် လွှတ်ချမီ ချိန်ခွင်လှုပ်ခေါင်း၏ အခြေအနေကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ချိန်ခွင်လှုပ်ခေါင်းသည် ဤအမှတ်တွင် ခဏတာ ငြိမ်နေသည် -- ငြိမ်နေသောအရာဝတ္ထုများတွင် ကိုင်းနက်တစ်စွမ်းအင် မရှိပါ။",
            ],
          ),
          QuizQuestion(
            questionEn: "Where did the bob reach its maximum kinetic energy?",
            questionMy:
                "ချိန်ခွင်လှုပ်ခေါင်းသည် မည်သည့်နေရာတွင် အများဆုံး ကိုင်းနက်တစ်စွမ်းအင်ကို ရောက်ရှိသနည်း။",
            optionsEn: [
              "At the lowest point of the swing",
              "At the highest point of the swing",
              "Halfway through the swing only",
              "It never reached a maximum",
            ],
            optionsMy: [
              "ချီတက်လှုပ်ခါမှု၏ အနိမ့်ဆုံးအမှတ်တွင်",
              "ချီတက်လှုပ်ခါမှု၏ အမြင့်ဆုံးအမှတ်တွင်",
              "ချီတက်လှုပ်ခါမှု၏ တစ်ဝက်တွင်သာ",
              "လုံးဝ အများဆုံးအမှတ် မရောက်ခဲ့ပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the bob's speed as it swings.",
              "The bob is fastest at the point where all its gravitational potential energy has converted into kinetic energy.",
            ],
            hintsMy: [
              "ချိန်ခွင်လှုပ်ခေါင်း ချီတက်လှုပ်ခါစဉ် အမြန်နှုန်းနှင့်ပတ်သက်သော ဒုတိယစာပိုဒ်၏ ဖော်ပြချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ချိန်ခွင်လှုပ်ခေါင်း၏ ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင်အားလုံး ကိုင်းနက်တစ်စွမ်းအင်အဖြစ် ကူးပြောင်းပြီးသည့်အမှတ်တွင် အမြန်ဆုံးဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Zin Ko's two energy calculations not come out perfectly equal?",
            questionMy:
                "ဇင်ကို၏ စွမ်းအင်တွက်ချက်မှုနှစ်ခုသည် အဘယ်ကြောင့် အတိအကျ ညီမျှခြင်း မရှိခဲ့သနည်း။",
            optionsEn: [
              "Some energy transferred into sound and heat from air resistance and friction",
              "His calculations were completely wrong",
              "Energy was genuinely destroyed",
              "The pendulum did not actually swing",
            ],
            optionsMy: [
              "လေခုခံအားနှင့် ပွတ်တိုက်မှုမှ အသံနှင့် အပူအဖြစ် စွမ်းအင်အနည်းငယ် ကူးပြောင်းသွားခြင်း",
              "သူ၏ တွက်ချက်မှုများ လုံးဝ မှားယွင်းခဲ့ခြင်း",
              "စွမ်းအင် အစစ်အမှန် ဖျက်ဆီးခံခဲ့ရခြင်း",
              "ချိန်ခွင်လှုပ်သည် အမှန်တကယ် မလှုပ်ခါခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation of the small difference between the two calculated values.",
              "Energy is never truly destroyed -- it was transferred into less useful forms like sound and heat.",
            ],
            hintsMy: [
              "တွက်ချက်ထားသော တန်ဖိုးနှစ်ခုကြား အနည်းငယ်ကွာခြားချက်ကို ရှင်းပြထားသော တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "စွမ်းအင်သည် လုံးဝ ဖျက်ဆီးခံရခြင်း မရှိပါ -- ၎င်းသည် အသံနှင့် အပူကဲ့သို့ အသုံးဝင်မှုနည်းသောပုံစံများသို့ ကူးပြောင်းသွားခြင်းဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to Zin Ko's teacher, why does the total energy remain conserved throughout the swing?",
            questionMy:
                "ဇင်ကို၏ ဆရာမအရ ချီတက်လှုပ်ခါမှုတစ်လျှောက်လုံး စုစုပေါင်းစွမ်းအင် အဘယ်ကြောင့် ထိန်းသိမ်းခံထားရဆဲဖြစ်သနည်း။",
            optionsEn: [
              "Energy can never simply disappear -- it is only transferred into other forms",
              "The pendulum bob has infinite energy",
              "Air resistance adds new energy to the system",
              "Friction destroys energy completely",
            ],
            optionsMy: [
              "စွမ်းအင်သည် ရိုးရှင်းစွာ ပျောက်ကွယ်ခြင်း လုံးဝ မပြုနိုင်ပါ -- အခြားပုံစံများသို့ ကူးပြောင်းသွားခြင်းသာ ဖြစ်သည်",
              "ချိန်ခွင်လှုပ်ခေါင်းတွင် အကန့်အသတ်မရှိသော စွမ်းအင် ရှိသည်",
              "လေခုခံအားက စနစ်ထဲသို့ စွမ်းအင်အသစ် ထည့်ပေးသည်",
              "ပွတ်တိုက်မှုက စွမ်းအင်ကို လုံးဝ ဖျက်ဆီးသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "This is the fundamental principle of conservation of energy: total energy stays constant, only its form changes.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ဤသည်မှာ စွမ်းအင်ထိန်းသိမ်းမှု၏ အခြေခံမူဖြစ်သည်: စုစုပေါင်းစွမ်းအင် ပုံသေဖြစ်နေဆဲဖြစ်ပြီး ၎င်း၏ပုံစံသာ ပြောင်းလဲသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w11-d5",
      dayNumber: 5,
      titleEn: "Week 11 Recap: Energy Resources and Transfer",
      titleMy:
          "အပတ်စဉ် ၁၁ ပြန်လည်သုံးသပ်ခြင်း - စွမ်းအင် အရင်းအမြစ်များနှင့် ကူးပြောင်းမှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Kinetic energy depends on an object's...",
          questionMy:
              "ကိုင်းနက်တစ်စွမ်းအင်သည် အရာဝတ္ထုတစ်ခု၏ မည်သည့်အချက်ပေါ် မှီခိုသနည်း။",
          optionsEn: ["Motion (speed)", "Colour", "Age", "Smell"],
          optionsMy: [
            "ရွေ့လျားမှု (အမြန်နှုန်း)",
            "အရောင်",
            "အသက်အရွယ်",
            "အနံ့",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Gravitational potential energy depends on an object's...",
          questionMy:
              "ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင်သည် အရာဝတ္ထုတစ်ခု၏ မည်သည့်အချက်ပေါ် မှီခိုသနည်း။",
          optionsEn: ["Height", "Colour", "Age", "Smell"],
          optionsMy: ["အမြင့်", "အရောင်", "အသက်အရွယ်", "အနံ့"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Conservation of energy means energy...",
          questionMy:
              "စွမ်းအင်ထိန်းသိမ်းမှုသည် စွမ်းအင်နှင့်ပတ်သက်၍ မည်သို့ ဆိုလိုသနည်း။",
          optionsEn: [
            "Cannot be created or destroyed",
            "Is always destroyed",
            "Can be created from nothing",
            "Never changes form",
          ],
          optionsMy: [
            "ဖန်တီးခြင်း (သို့) ဖျက်ဆီးခြင်း မပြုနိုင်ပါ",
            "အမြဲတမ်း ဖျက်ဆီးခံရသည်",
            "မည်သည့်အရာမှမှ ဖန်တီးနိုင်သည်",
            "ပုံစံ လုံးဝ မပြောင်းလဲပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is a non-renewable energy resource?",
          questionMy:
              "အောက်ပါတို့အနက် ပြန်လည်မပြည့်ဖြိုးနိုင်သော စွမ်းအင်အရင်းအမြစ်ဖြစ်သည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Coal",
            "Solar power",
            "Wind power",
            "Hydroelectric power",
          ],
          optionsMy: [
            "ကျောက်မီးသွေး",
            "ဆိုလာစွမ်းအင်",
            "လေအားစွမ်းအင်",
            "ရေအားလျှပ်စစ်စွမ်းအင်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 12 (Capstone): "Forces and Energy Lab"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek12 = CourseWeekDef(
  id: "course-igcse-combsci-w12",
  weekNumber: 12,
  titleEn: "Forces and Energy Lab",
  titleMy: "အားနှင့် စွမ်းအင် ဓာတ်ခွဲခန်း",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w12-d1",
      dayNumber: 1,
      titleEn: "Energy Efficiency Quiz",
      titleMy: "စွမ်းအင် ထိရောက်မှု ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Efficiency is calculated as...",
          questionMy: "ထိရောက်မှု (Efficiency) ကို မည်သို့ တွက်ချက်သနည်း။",
          optionsEn: [
            "(Useful energy output / total energy input) x 100%",
            "Total energy input only",
            "Wasted energy minus useful energy",
            "Mass multiplied by height",
          ],
          optionsMy: [
            "(အသုံးဝင်စွမ်းအင်ထွက်ရှိမှု / စုစုပေါင်းစွမ်းအင်ဝင်ရောက်မှု) x 100%",
            "စုစုပေါင်းစွမ်းအင်ဝင်ရောက်မှုသာ",
            "ဖျက်ဆီးခံရသောစွမ်းအင် နုတ် အသုံးဝင်စွမ်းအင်",
            "ထုထည်ကို အမြင့်ဖြင့် မြှောက်ထားခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Efficiency compares how much useful energy comes out compared to the total energy that went in.",
            "No real device is 100% efficient -- some energy is always wasted, usually as heat or sound.",
          ],
          hintsMy: [
            "ထိရောက်မှုသည် ဝင်ရောက်လာသော စုစုပေါင်းစွမ်းအင်နှင့်နှိုင်းယှဉ်ပါက အသုံးဝင်စွမ်းအင် မည်မျှ ထွက်ရှိကြောင်း နှိုင်းယှဉ်သည်။",
            "စစ်မှန်သော ကိရိယာမည်သည်မှ ၁၀၀% ထိရောက်မှု မရှိပါ -- စွမ်းအင်အနည်းငယ်ကို အမြဲတမ်း ဖျက်ဆီးလေ့ရှိသည်၊ များသောအားဖြင့် အပူ (သို့) အသံအဖြစ်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A trolley of mass 2 kg is pushed with a resultant force of 4 N. What is its acceleration?",
          questionMy:
              "ထုထည် ၂ ကီလိုဂရမ်ရှိသော လှည်းတစ်စီးကို ရလဒ်အား ၄ နယူတန်ဖြင့် တွန်းလိုက်သည်။ ၎င်း၏ အရှိန် မည်မျှရှိသနည်း။",
          optionsEn: ["2 m/s^2", "8 m/s^2", "0.5 m/s^2", "6 m/s^2"],
          optionsMy: ["2 m/s^2", "8 m/s^2", "0.5 m/s^2", "6 m/s^2"],
          correctIndex: 0,
          hintsEn: [
            "F = ma, so a = F / m.",
            "4 N divided by 2 kg gives the acceleration.",
          ],
          hintsMy: [
            "F = ma ဖြစ်သောကြောင့် a = F / m ဖြစ်သည်။",
            "၄ နယူတန်ကို ၂ ကီလိုဂရမ်ဖြင့် စားခြင်းက အရှိန်ကို ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A ball dropped from a height loses gravitational potential energy as it falls. Where does that energy mainly go, ignoring air resistance?",
          questionMy:
              "အမြင့်တစ်ခုမှ ချထားလိုက်သော ဘောလုံးတစ်လုံးသည် ကျဆင်းသည်နှင့်အမျှ ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင် ဆုံးရှုံးသည်။ လေခုခံအားကို လျစ်လျူရှုလျှင် ထိုစွမ်းအင်သည် အဓိကအားဖြင့် မည်သို့ဖြစ်သွားသနည်း။",
          optionsEn: [
            "It converts into kinetic energy",
            "It disappears completely",
            "It converts into mass",
            "It stays as potential energy",
          ],
          optionsMy: [
            "ကိုင်းနက်တစ်စွမ်းအင်အဖြစ် ကူးပြောင်းသည်",
            "လုံးဝ ပျောက်ကွယ်သွားသည်",
            "ထုထည်အဖြစ် ကူးပြောင်းသည်",
            "ပိုတန်ရှယ်စွမ်းအင်အဖြစ် ဆက်လက်ရှိနေသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "As the ball falls and loses height, it gains speed -- a clear sign of gained kinetic energy.",
            "This follows directly from the principle of conservation of energy.",
          ],
          hintsMy: [
            "ဘောလုံး ကျဆင်းပြီး အမြင့်ဆုံးရှုံးလာသည်နှင့်အမျှ ၎င်းသည် အမြန်နှုန်း ရရှိလာသည် -- ရရှိလာသော ကိုင်းနက်တစ်စွမ်းအင်၏ ရှင်းလင်းသောသက်သေဖြစ်သည်။",
            "ဤသည်မှာ စွမ်းအင်ထိန်းသိမ်းမှုမူမှ တိုက်ရိုက် ဆင်းသက်လာခြင်းဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a real electric motor, most wasted energy is typically lost as...",
          questionMy:
              "စစ်မှန်သော လျှပ်စစ်မော်တာတစ်ခုတွင် ဖျက်ဆီးခံရသောစွမ်းအင်အများစုသည် များသောအားဖြင့် မည်သို့ ဆုံးရှုံးသနည်း။",
          optionsEn: [
            "Heat, due to friction and electrical resistance",
            "Light",
            "Mass",
            "Gravitational potential energy",
          ],
          optionsMy: [
            "ပွတ်တိုက်မှုနှင့် လျှပ်စစ်ခုခံအားကြောင့် ဖြစ်ပေါ်လာသော အပူ",
            "အလင်း",
            "ထုထည်",
            "ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Most real machines waste energy as heat, generated by moving parts rubbing together or by electrical resistance.",
            "Touch a motor that has been running for a while -- it usually feels warm, showing energy is being wasted as heat.",
          ],
          hintsMy: [
            "စစ်မှန်သော စက်ကိရိယာအများစုသည် ရွေ့လျားနေသောအစိတ်အပိုင်းများ ပွတ်တိုက်ခြင်း (သို့) လျှပ်စစ်ခုခံအားကြောင့် ဖြစ်ပေါ်လာသော အပူအဖြစ် စွမ်းအင်ကို ဖျက်ဆီးလေ့ရှိသည်။",
            "အချိန်အနည်းငယ် အလုပ်လုပ်နေသော မော်တာကို တို့ကြည့်ပါ -- ၎င်းသည် များသောအားဖြင့် နွေးနွေးအေးအေးခံစားရပြီး၊ စွမ်းအင်ကို အပူအဖြစ် ဖျက်ဆီးနေကြောင်း ပြသသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w12-d2",
      dayNumber: 2,
      titleEn: "Match the Efficiency Vocabulary",
      titleMy: "ထိရောက်မှုဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w12-dm-1",
          termEn: "Efficiency",
          termMy: "ထိရောက်မှု (Efficiency)",
          matchEn:
              "Useful energy output divided by total energy input, as a percentage.",
          matchMy:
              "စုစုပေါင်းစွမ်းအင်ဝင်ရောက်မှုဖြင့် စားထားသော အသုံးဝင်စွမ်းအင်ထွက်ရှိမှု၊ ရာခိုင်နှုန်းအနေဖြင့်။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w12-dm-2",
          termEn: "Useful Energy",
          termMy: "အသုံးဝင်စွမ်းအင် (Useful Energy)",
          matchEn: "The energy output that does the intended job.",
          matchMy:
              "ရည်ရွယ်ထားသော လုပ်ငန်းကို ဆောင်ရွက်ပေးသော စွမ်းအင်ထွက်ရှိမှု။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w12-dm-3",
          termEn: "Wasted Energy",
          termMy: "ဖျက်ဆီးခံရသောစွမ်းအင် (Wasted Energy)",
          matchEn:
              "Energy transferred into a form (usually heat or sound) that is not useful.",
          matchMy:
              "အသုံးမဝင်သော ပုံစံ (များသောအားဖြင့် အပူ သို့ အသံ) သို့ ကူးပြောင်းသွားသော စွမ်းအင်။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w12-dm-4",
          termEn: "Sankey Diagram",
          termMy: "ဆန်ကီပုံ (Sankey Diagram)",
          matchEn:
              "A diagram whose arrow widths show the proportion of energy going to useful and wasted forms.",
          matchMy:
              "မြှားအကျယ်များက အသုံးဝင်ပြီး ဖျက်ဆီးခံရသောပုံစံများသို့ သွားသော စွမ်းအင်အချိုးကို ပြသသော ပုံ။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w12-dm-5",
          termEn: "Work Done",
          termMy: "လုပ်ဆောင်ချက် (Work Done)",
          matchEn:
              "The energy transferred when a force moves an object through a distance.",
          matchMy:
              "အားတစ်ခုသည် အရာဝတ္ထုတစ်ခုကို အကွာအဝေးတစ်ခုဖြတ်၍ ရွှေ့သောအခါ ကူးပြောင်းသည့် စွမ်းအင်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w12-d3",
      dayNumber: 3,
      titleEn: "Sort: Useful or Wasted Energy Output?",
      titleMy: "စီစစ်ကြမည် - အသုံးဝင် (သို့) ဖျက်ဆီးခံရသော စွမ်းအင်ထွက်ရှိမှု",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Useful Energy Output", "Wasted Energy Output"],
        bucketsMy: [
          "အသုံးဝင်စွမ်းအင်ထွက်ရှိမှု",
          "ဖျက်ဆီးခံရသောစွမ်းအင်ထွက်ရှိမှု",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w12-sort-1",
            labelEn: "Light from a light bulb",
            labelMy: "မီးသီးမှ အလင်းရောင်",
            correctBucketEn: "Useful Energy Output",
            correctBucketMy: "အသုံးဝင်စွမ်းအင်ထွက်ရှိမှု",
          ),
          SortingItem(
            id: "igcsecs-w12-sort-2",
            labelEn: "Heat from a light bulb",
            labelMy: "မီးသီးမှ အပူ",
            correctBucketEn: "Wasted Energy Output",
            correctBucketMy: "ဖျက်ဆီးခံရသောစွမ်းအင်ထွက်ရှိမှု",
          ),
          SortingItem(
            id: "igcsecs-w12-sort-3",
            labelEn: "Kinetic energy of a spinning electric motor's shaft",
            labelMy:
                "လှည့်နေသော လျှပ်စစ်မော်တာ၏ ဝင်ရိုးမှ ကိုင်းနက်တစ်စွမ်းအင်",
            correctBucketEn: "Useful Energy Output",
            correctBucketMy: "အသုံးဝင်စွမ်းအင်ထွက်ရှိမှု",
          ),
          SortingItem(
            id: "igcsecs-w12-sort-4",
            labelEn: "Sound and heat from an electric motor's moving parts",
            labelMy:
                "လျှပ်စစ်မော်တာ၏ ရွေ့လျားနေသောအစိတ်အပိုင်းများမှ အသံနှင့် အပူ",
            correctBucketEn: "Wasted Energy Output",
            correctBucketMy: "ဖျက်ဆီးခံရသောစွမ်းအင်ထွက်ရှိမှု",
          ),
          SortingItem(
            id: "igcsecs-w12-sort-5",
            labelEn: "Sound from a loudspeaker",
            labelMy: "စပီကာမှ အသံ",
            correctBucketEn: "Useful Energy Output",
            correctBucketMy: "အသုံးဝင်စွမ်းအင်ထွက်ရှိမှု",
          ),
          SortingItem(
            id: "igcsecs-w12-sort-6",
            labelEn: "Heat from a loudspeaker's circuit",
            labelMy: "စပီကာ၏ ဆားကစ်မှ အပူ",
            correctBucketEn: "Wasted Energy Output",
            correctBucketMy: "ဖျက်ဆီးခံရသောစွမ်းအင်ထွက်ရှိမှု",
          ),
          SortingItem(
            id: "igcsecs-w12-sort-7",
            labelEn: "Kinetic energy of a moving car",
            labelMy: "ရွေ့လျားနေသောကား၏ ကိုင်းနက်တစ်စွမ်းအင်",
            correctBucketEn: "Useful Energy Output",
            correctBucketMy: "အသုံးဝင်စွမ်းအင်ထွက်ရှိမှု",
          ),
          SortingItem(
            id: "igcsecs-w12-sort-8",
            labelEn: "Heat from a car engine and friction with the road",
            labelMy: "ကားအင်ဂျင်နှင့် လမ်းနှင့် ပွတ်တိုက်မှုမှ အပူ",
            correctBucketEn: "Wasted Energy Output",
            correctBucketMy: "ဖျက်ဆီးခံရသောစွမ်းအင်ထွက်ရှိမှု",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w12-d4",
      dayNumber: 4,
      titleEn: "Reading: Htet Wai's Toy Car Efficiency Investigation",
      titleMy: "စာဖတ်ခြင်း - ထက်ဝေ၏ ကစားစရာကား ထိရောက်မှု စမ်းသပ်လေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Htet Wai's Toy Car Efficiency Investigation",
        titleMy: "ထက်ဝေ၏ ကစားစရာကား ထိရောက်မှု စမ်းသပ်လေ့လာမှု",
        passageEn:
            "For the term's final capstone, Htet Wai investigated the efficiency of a wind-up toy car, combining the term's forces and energy content into one connected problem. He wound the car's spring using a fixed number of turns, measured its mass (0.2 kg), then released it and used a speed-time graph from a tracking app to find its acceleration and top speed across a level floor.\n\nFirst, Htet Wai applied Newton's Second Law to the car's initial acceleration phase, using F = ma to calculate the resultant force accelerating it forward. Next, he calculated the car's maximum kinetic energy at top speed, using 1/2 x mass x velocity squared. To find the total energy input, he estimated the elastic potential energy originally stored in the wound spring, based on data from the manufacturer.\n\nDividing the car's maximum kinetic energy (the useful output) by the total spring energy (the input), then multiplying by 100%, Htet Wai calculated an efficiency of around 65%. He explained the remaining 35% was not lost but transferred into other forms: friction between the wheels and the floor, friction inside the spring mechanism itself, and air resistance all converted some of the spring's energy into heat and sound rather than into the car's motion. Reviewing his full investigation afterward, Htet Wai realised it had used nearly everything the term covered -- Newton's Second Law, kinetic energy, energy conservation, and efficiency -- chained together into a single practical problem, exactly the kind of connected reasoning a real IGCSE paper would expect.",
        passageMy:
            "ထိုနှစ်ဝက်၏ နောက်ဆုံးစီမံကိန်းအတွက် ထက်ဝေသည် ချစ်ကတ်ချက်ကစားစရာကားတစ်စီး၏ ထိရောက်မှုကို စစ်ဆေးလေ့လာခဲ့ပြီး၊ ထိုနှစ်ဝက်၏ အားနှင့် စွမ်းအင်အကြောင်းအရာများကို ပြဿနာတစ်ခုတည်းအဖြစ် ပေါင်းစပ်ခဲ့သည်။ သူသည် ကား၏ စပရင်ကို ပုံသေလှည့်ပတ်အကြိမ်ရေဖြင့် အလုံးလုံးလှည့်ခဲ့ပြီး၊ ၎င်း၏ ထုထည် (၀.၂ ကီလိုဂရမ်) ကို တိုင်းတာကာ လွှတ်ချလိုက်ပြီးနောက် ခြေရာခံအက်ပ်တစ်ခုမှ အမြန်နှုန်း-အချိန်ဂရပ်ကို အသုံးပြု၍ ညီညာသောကြမ်းပြင်ကို ဖြတ်ပြီး ၎င်း၏ အရှိန်နှင့် အမြင့်ဆုံးအမြန်နှုန်းကို ရှာဖွေခဲ့သည်။\n\nပထမဦးစွာ ထက်ဝေသည် F = ma ကို အသုံးပြု၍ ကား၏ အစပိုင်း အရှိန်တက်ခြင်းအဆင့်တွင် ၎င်းကို ရှေ့သို့ တွန်းပေးနေသော ရလဒ်အားကို တွက်ချက်ရန် နယူတန်၏ ဒုတိယနိယာမကို အသုံးပြုခဲ့သည်။ ထို့နောက် သူသည် ၁/၂ x ထုထည် x အဟုန်စတုရန်းကို အသုံးပြု၍ ကား၏ အမြင့်ဆုံးအမြန်နှုန်းရှိ အများဆုံး ကိုင်းနက်တစ်စွမ်းအင်ကို တွက်ချက်ခဲ့သည်။ စုစုပေါင်းစွမ်းအင်ဝင်ရောက်မှုကို ရှာဖွေရန် သူသည် ထုတ်လုပ်သူ၏ အချက်အလက်ကို အခြေခံ၍ လှုပ်ပတ်ထားသော စပရင်တွင် မူလစတင်သိမ်းဆည်းထားသော ဆွဲငင်ပိုတန်ရှယ်စွမ်းအင် (elastic potential energy) ကို ခန့်မှန်းခဲ့သည်။\n\nကား၏ အများဆုံး ကိုင်းနက်တစ်စွမ်းအင် (အသုံးဝင်ထွက်ရှိမှု) ကို စုစုပေါင်း စပရင်စွမ်းအင် (ဝင်ရောက်မှု) ဖြင့် စားပြီး ၁၀၀% ဖြင့် မြှောက်ခြင်းဖြင့် ထက်ဝေသည် ခန့်မှန်းခြေ ၆၅% ထိရောက်မှုကို တွက်ချက်ခဲ့သည်။ သူသည် ကျန်ရှိသော ၃၅% သည် ဆုံးရှုံးသွားခြင်းမဟုတ်ဘဲ အခြားပုံစံများသို့ ကူးပြောင်းသွားခြင်းဖြစ်ကြောင်း ရှင်းပြခဲ့သည်: ဘီးများနှင့် ကြမ်းပြင်ကြားရှိ ပွတ်တိုက်မှု၊ စပရင်စက်ပိုင်းအတွင်းရှိ ပွတ်တိုက်မှုနှင့် လေခုခံအားတို့သည် စပရင်၏ စွမ်းအင်အနည်းငယ်ကို ကား၏ ရွေ့လျားမှုအဖြစ်မဟုတ်ဘဲ အပူနှင့် အသံအဖြစ် ကူးပြောင်းစေခဲ့သည်။ သူ၏ စမ်းသပ်လေ့လာမှုအပြည့်အစုံကို နောက်ပိုင်းတွင် ပြန်လည်စစ်ဆေးကြည့်ရာ ထက်ဝေသည် ၎င်းသည် ထိုနှစ်ဝက် ဖုံးအုပ်ခဲ့သည့် အရာနီးပါးအားလုံးကို အသုံးပြုခဲ့ကြောင်း သဘောပေါက်လာသည် -- နယူတန်၏ ဒုတိယနိယာမ၊ ကိုင်းနက်တစ်စွမ်းအင်၊ စွမ်းအင်ထိန်းသိမ်းမှုနှင့် ထိရောက်မှုတို့ကို လက်တွေ့ပြဿနာတစ်ခုတည်းသို့ ချိတ်ဆက်ထားသည် -- ၎င်းသည် တကယ့် IGCSE စာမေးပွဲစာရွက်က မျှော်လင့်သည့် ဆက်စပ်ဆင်ခြင်တွေးခေါ်မှုအမျိုးအစား အတိအကျ ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Which law did Htet Wai apply to calculate the resultant force accelerating the car?",
            questionMy:
                "ကားကို အရှိန်တက်စေသည့် ရလဒ်အားကို တွက်ချက်ရန် ထက်ဝေ မည်သည့်နိယာမကို အသုံးပြုခဲ့သနည်း။",
            optionsEn: [
              "Newton's Second Law",
              "Newton's First Law",
              "Newton's Third Law",
              "The law of conservation of mass",
            ],
            optionsMy: [
              "နယူတန်၏ ဒုတိယနိယာမ",
              "နယူတန်၏ ပထမနိယာမ",
              "နယူတန်၏ တတိယနိယာမ",
              "ထုထည်ထိန်းသိမ်းမှု ဥပဒေ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's first calculation.",
              "F = ma is Newton's Second Law.",
            ],
            hintsMy: [
              "ဒုတိယစာပိုဒ်၏ ပထမတွက်ချက်မှုကို ပြန်ဖတ်ကြည့်ပါ။",
              "F = ma သည် နယူတန်၏ ဒုတိယနိယာမ ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What efficiency did Htet Wai calculate for the toy car?",
            questionMy:
                "ထက်ဝေသည် ကစားစရာကားအတွက် ထိရောက်မှု မည်မျှ တွက်ချက်ခဲ့သနည်း။",
            optionsEn: ["Around 65%", "Around 100%", "Around 35%", "Around 0%"],
            optionsMy: [
              "ခန့်မှန်းခြေ ၆၅%",
              "ခန့်မှန်းခြေ ၁၀၀%",
              "ခန့်မှန်းခြေ ၃၅%",
              "ခန့်မှန်းခြေ ၀%",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's efficiency calculation.",
              "Useful kinetic energy output divided by total spring energy input, times 100%.",
            ],
            hintsMy: [
              "တတိယစာပိုဒ်၏ ထိရောက်မှုတွက်ချက်မှုကို ပြန်ဖတ်ကြည့်ပါ။",
              "အသုံးဝင် ကိုင်းနက်တစ်စွမ်းအင်ထွက်ရှိမှုကို စုစုပေါင်း စပရင်စွမ်းအင်ဝင်ရောက်မှုဖြင့် စားပြီး ၁၀၀% ဖြင့် မြှောက်ခြင်း။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What happened to the remaining 35% of the spring's energy?",
            questionMy:
                "စပရင်၏ ကျန်ရှိသော ၃၅% စွမ်းအင်သည် မည်သို့ ဖြစ်သွားခဲ့သနည်း။",
            optionsEn: [
              "It transferred into heat and sound through friction and air resistance",
              "It was completely destroyed",
              "It converted into extra mass for the car",
              "It disappeared with no explanation",
            ],
            optionsMy: [
              "ပွတ်တိုက်မှုနှင့် လေခုခံအားမှတစ်ဆင့် အပူနှင့် အသံအဖြစ် ကူးပြောင်းသွားခြင်း",
              "လုံးဝ ဖျက်ဆီးခံရခြင်း",
              "ကားအတွက် ထုထည်အပိုအဖြစ် ကူးပြောင်းသွားခြင်း",
              "ရှင်းလင်းချက်မရှိဘဲ ပျောက်ကွယ်သွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation of where the remaining energy went.",
              "Friction between the wheels and floor, friction in the spring mechanism, and air resistance all waste energy as heat and sound.",
            ],
            hintsMy: [
              "ကျန်ရှိသောစွမ်းအင် မည်သို့ဖြစ်သွားကြောင်း ရှင်းပြထားသော တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဘီးများနှင့် ကြမ်းပြင်ကြားရှိ ပွတ်တိုက်မှု၊ စပရင်စက်ပိုင်းအတွင်းရှိ ပွတ်တိုက်မှုနှင့် လေခုခံအားတို့သည် စွမ်းအင်ကို အပူနှင့် အသံအဖြစ် ဖျက်ဆီးကြသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Htet Wai realise about his investigation upon reviewing it?",
            questionMy:
                "ထက်ဝေသည် သူ၏ စမ်းသပ်လေ့လာမှုကို ပြန်လည်စစ်ဆေးရာတွင် မည်သည့်အချက်ကို သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "It chained together nearly everything the term covered into one connected problem",
              "It only tested one isolated fact",
              "It had nothing to do with Newton's laws",
              "It was unrelated to energy efficiency",
            ],
            optionsMy: [
              "ထိုနှစ်ဝက် ဖုံးအုပ်ခဲ့သည့် အရာနီးပါးအားလုံးကို လက်တွေ့ပြဿနာတစ်ခုတည်းသို့ ချိတ်ဆက်ထားခဲ့ကြောင်း",
              "သီးခြားအချက်တစ်ခုတည်းကိုသာ စစ်ဆေးခဲ့ကြောင်း",
              "နယူတန်၏ နိယာမများနှင့် လုံးဝ မသက်ဆိုင်ကြောင်း",
              "စွမ်းအင်ထိရောက်မှုနှင့် မသက်ဆိုင်ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "The investigation combined Newton's Second Law, kinetic energy, energy conservation, and efficiency all in one.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "စမ်းသပ်လေ့လာမှုသည် နယူတန်၏ ဒုတိယနိယာမ၊ ကိုင်းနက်တစ်စွမ်းအင်၊ စွမ်းအင်ထိန်းသိမ်းမှုနှင့် ထိရောက်မှုတို့ကို တစ်ခုတည်းတွင် ပေါင်းစပ်ထားသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w12-d5",
      dayNumber: 5,
      titleEn: "Term 3 Recap: Motion, Forces and Energy",
      titleMy:
          "တတိယနှစ်ဝက် ပြန်လည်သုံးသပ်ခြင်း - ရွေ့လျားမှု၊ အားများနှင့် စွမ်းအင်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The gradient of a speed-time graph shows...",
          questionMy:
              "အမြန်နှုန်း-အချိန်ဂရပ်၏ စောင်းငူသည် မည်သည့်အရာကို ပြသသနည်း။",
          optionsEn: ["Acceleration", "Distance", "Mass", "Weight"],
          optionsMy: ["အရှိန်", "အကွာအဝေး", "ထုထည်", "အလေးချိန်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "F = ma is Newton's...",
          questionMy: "F = ma သည် နယူတန်၏ မည်သည့်နိယာမဖြစ်သနည်း။",
          optionsEn: ["Second Law", "First Law", "Third Law", "Zeroth Law"],
          optionsMy: ["ဒုတိယနိယာမ", "ပထမနိယာမ", "တတိယနိယာမ", "သုညနိယာမ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Gravitational potential energy converts into kinetic energy when an object...",
          questionMy:
              "အရာဝတ္ထုတစ်ခု မည်သည့်အချိန်တွင် ဂရာဝီတီ ပိုတန်ရှယ်စွမ်းအင်သည် ကိုင်းနက်တစ်စွမ်းအင်အဖြစ် ကူးပြောင်းသနည်း။",
          optionsEn: ["Falls", "Stays still", "Cools down", "Changes colour"],
          optionsMy: [
            "ကျဆင်းသည့်အခါ",
            "မလှုပ်ဘဲနေသည့်အခါ",
            "အအေးခံသည့်အခါ",
            "အရောင်ပြောင်းသည့်အခါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Efficiency compares useful energy output to...",
          questionMy:
              "ထိရောက်မှုသည် အသုံးဝင်စွမ်းအင်ထွက်ရှိမှုကို မည်သည့်အရာနှင့် နှိုင်းယှဉ်သနည်း။",
          optionsEn: [
            "Total energy input",
            "Mass only",
            "Time taken only",
            "Colour of the device",
          ],
          optionsMy: [
            "စုစုပေါင်းစွမ်းအင်ဝင်ရောက်မှု",
            "ထုထည်သာ",
            "ကြာချိန်သာ",
            "ကိရိယာ၏အရောင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In real machines, wasted energy is most commonly lost as...",
          questionMy:
              "စစ်မှန်သောစက်ကိရိယာများတွင် ဖျက်ဆီးခံရသောစွမ်းအင်သည် များသောအားဖြင့် မည်သို့ ဆုံးရှုံးလေ့ရှိသနည်း။",
          optionsEn: [
            "Heat (and sometimes sound)",
            "Extra mass",
            "Extra colour",
            "Nothing is ever wasted",
          ],
          optionsMy: [
            "အပူ (တစ်ခါတစ်ရံ အသံ)",
            "ထုထည်အပို",
            "အရောင်အပို",
            "မည်သည့်အရာမျှ မဖျက်ဆီးခံရပါ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 3: "Physics - Motion, Forces and Energy" (Weeks 9-12)
// =====================================================================

const CourseTermDef igcseCombinedScienceTerm3 = CourseTermDef(
  id: "course-igcse-combsci-t3",
  termNumber: 3,
  titleEn: "Motion, Forces and Energy",
  titleMy: "ရွေ့လျားမှု၊ အားများနှင့် စွမ်းအင်",
  certificateTitleEn: "Motion, Forces and Energy",
  certificateTitleMy: "ရွေ့လျားမှု၊ အားများနှင့် စွမ်းအင်",
  weeks: [
    _igcseCombSciWeek9,
    _igcseCombSciWeek10,
    _igcseCombSciWeek11,
    _igcseCombSciWeek12,
  ],
);
