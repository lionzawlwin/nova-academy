import '../../../models/child_model.dart';
import '../interactive_content_models.dart';
import '../mock_quiz_data.dart';
import 'course_pathways_core.dart';

// =====================================================================
// Week 1: "Motion and Speed-Time Graphs"
// =====================================================================

const CourseWeekDef _igcsePhysWeek1 = CourseWeekDef(
  id: "course-igcse-phys-w1",
  weekNumber: 1,
  titleEn: "Motion and Speed-Time Graphs",
  titleMy: "ရွေ့လျားမှုနှင့် အမြန်နှုန်း-အချိန် ဂရပ်များ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w1-d1",
      dayNumber: 1,
      titleEn: "Speed, Velocity, and Acceleration",
      titleMy: "အမြန်နှုန်း၊ Velocity နှင့် အရှိန်",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is the key difference between speed and velocity?",
          questionMy: "Speed နှင့် Velocity ကြား အဓိက ကွာခြားချက်ကား အဘယ်နည်း။",
          optionsEn: [
            "Velocity has a direction (a vector), while speed is direction-less (a scalar)",
            "Speed always has a direction, but velocity does not",
            "There is no real difference between the two",
            "Velocity can only be measured in kilometres",
          ],
          optionsMy: [
            "Velocity တွင် ဦးတည်ချက် ရှိသည် (Vector)၊ Speed တွင်မူ ဦးတည်ချက် မရှိပါ (Scalar)",
            "Speed တွင် အမြဲ ဦးတည်ချက် ရှိသော်လည်း Velocity တွင် မရှိပါ",
            "နှစ်ခုကြား အမှန်တကယ် ကွာခြားချက် မရှိပါ",
            "Velocity ကို ကီလိုမီတာဖြင့်သာ တိုင်းတာနိုင်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Speed is how fast an object moves, regardless of direction. Velocity is speed in a stated direction.",
            "A car travelling at 60 km/h has a speed of 60 km/h, but its velocity also states which way it is going, e.g. 60 km/h north.",
          ],
          hintsMy: [
            "Speed ဆိုသည်မှာ ဦးတည်ချက် မခွဲခြားဘဲ ပစ္စည်းတစ်ခု မည်မျှ မြန်စွာ ရွေ့လျားသည်ကို ဆိုလိုသည်။ Velocity ဆိုသည်မှာ ဖော်ပြထားသော ဦးတည်ချက်ရှိသော Speed ဖြစ်သည်။",
            "နာရီလျှင် ကီလိုမီတာ ၆၀ ဖြင့် သွားနေသော ကားတစ်စီးသည် Speed ၆၀ km/h ရှိသော်လည်း ၎င်း၏ Velocity က မည်သည့်ဘက်သို့ သွားနေသည်ကိုပါ ဖော်ပြသည်၊ ဥပမာ- မြောက်ဘက်သို့ 60 km/h ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "On a distance-time graph, what does the gradient (slope) of the line represent?",
          questionMy:
              "Distance-Time ဂရပ်တစ်ခုတွင် မျဉ်း၏ Gradient (စောင်းချက်) က အဘယ်အရာကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "Speed",
            "Acceleration",
            "Total distance travelled",
            "Time taken",
          ],
          optionsMy: ["Speed", "အရှိန်", "စုစုပေါင်း ခရီးအကွာအဝေး", "ကြာချိန်"],
          correctIndex: 0,
          hintsEn: [
            "A steeper gradient means a greater distance covered per unit time, which is exactly the definition of speed.",
            "A horizontal (flat) section of a distance-time graph means the object is stationary -- zero gradient, zero speed.",
          ],
          hintsMy: [
            "ပို၍ စောင်းသော Gradient ဆိုသည်မှာ အချိန် ယူနစ်တစ်ခုလျှင် ခရီးအကွာအဝေး ပို၍ ဖုံးလွှမ်းသည်ဟု ဆိုလိုပြီး ၎င်းသည် Speed ၏ အဓိပ္ပာယ်ဖွင့်ဆိုချက် အတိအကျ ဖြစ်သည်။",
            "Distance-Time ဂရပ်တစ်ခု၏ အလျားလိုက် (ညီညာ) အပိုင်းသည် ပစ္စည်းသည် ရပ်တန့်နေသည်ဟု ဆိုလိုသည် -- Gradient သုည၊ Speed သုည ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "On a speed-time graph, how do you calculate the total distance travelled during a given time interval?",
          questionMy:
              "Speed-Time ဂရပ်တစ်ခုတွင် သတ်မှတ်ထားသော အချိန်ကာလအတွင်း ခရီးသွားခဲ့သော စုစုပေါင်း အကွာအဝေးကို မည်သို့ တွက်ချက်သနည်း။",
          optionsEn: [
            "Calculate the area under the graph (under the line) for that time interval",
            "Calculate the gradient of the line",
            "Read the y-axis value directly as the distance",
            "Multiply the y-axis value by itself",
          ],
          optionsMy: [
            "ထို အချိန်ကာလအတွက် ဂရပ်အောက်ရှိ ဧရိယာ (မျဉ်းအောက်) ကို တွက်ချက်ခြင်း",
            "မျဉ်း၏ Gradient ကို တွက်ချက်ခြင်း",
            "y-Axis တန်ဖိုးကို အကွာအဝေးအဖြစ် တိုက်ရိုက် ဖတ်ခြင်း",
            "y-Axis တန်ဖိုးကို ၎င်းကိုယ်တိုင်နှင့် မြှောက်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "For a constant speed section, area = speed x time, which gives distance -- the same principle extends to accelerating sections using the area of a triangle or trapezium.",
          ],
          hintsMy: [
            "တည်ငြိမ်သော Speed အပိုင်းအတွက် ဧရိယာ = Speed x Time ဖြစ်ပြီး အကွာအဝေး ရရှိသည် -- ဤ နိယာမသည် Triangle သို့မဟုတ် Trapezium ၏ ဧရိယာကို အသုံးပြု၍ အရှိန်တက်နေသော အပိုင်းများသို့ပါ ချဲ့ထွင်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w1-d2",
      dayNumber: 2,
      titleEn: "Match: Motion Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ရွေ့လျားမှု ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w1-dm-1",
          termEn: "Displacement",
          termMy: "Displacement",
          matchEn:
              "The straight-line distance from a starting point to a finishing point, in a stated direction",
          matchMy:
              "ဖော်ပြထားသော ဦးတည်ချက်တစ်ခုတွင် အစနေရာမှ အဆုံးနေရာသို့ ဖြောင့်ဖြောင့် အကွာအဝေး",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w1-dm-2",
          termEn: "Acceleration",
          termMy: "Acceleration",
          matchEn: "The rate of change of velocity with time",
          matchMy: "အချိန်နှင့်အတူ Velocity ပြောင်းလဲသည့် နှုန်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w1-dm-3",
          termEn: "Deceleration",
          termMy: "Deceleration",
          matchEn: "Negative acceleration -- the object is slowing down",
          matchMy: "Negative Acceleration -- ပစ္စည်းသည် နှေးကွေးလာနေသည်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w1-dm-4",
          termEn: "Scalar quantity",
          termMy: "Scalar Quantity",
          matchEn:
              "A quantity with magnitude only, no direction, such as speed or distance",
          matchMy:
              "Speed သို့မဟုတ် Distance ကဲ့သို့ ပမာဏသာ ရှိပြီး ဦးတည်ချက် မရှိသော ပမာဏ",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w1-dm-5",
          termEn: "Vector quantity",
          termMy: "Vector Quantity",
          matchEn:
              "A quantity with both magnitude and direction, such as velocity or displacement",
          matchMy:
              "Velocity သို့မဟုတ် Displacement ကဲ့သို့ ပမာဏနှင့် ဦးတည်ချက် နှစ်ခုစလုံး ရှိသော ပမာဏ",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w1-d3",
      dayNumber: 3,
      titleEn: "Sort: Distance-Time or Speed-Time Graph Feature?",
      titleMy: "စီစစ်ကြမည် - Distance-Time လား၊ Speed-Time ဂရပ် လက္ခဏာလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Distance-Time Graph", "Speed-Time Graph"],
        bucketsMy: ["Distance-Time Graph", "Speed-Time Graph"],
        items: [
          SortingItem(
            id: "igcsephys-w1-sort-1",
            labelEn: "Gradient represents speed",
            labelMy: "Gradient က Speed ကို ကိုယ်စားပြုသည်",
            correctBucketEn: "Distance-Time Graph",
            correctBucketMy: "Distance-Time Graph",
          ),
          SortingItem(
            id: "igcsephys-w1-sort-2",
            labelEn: "Gradient represents acceleration",
            labelMy: "Gradient က Acceleration ကို ကိုယ်စားပြုသည်",
            correctBucketEn: "Speed-Time Graph",
            correctBucketMy: "Speed-Time Graph",
          ),
          SortingItem(
            id: "igcsephys-w1-sort-3",
            labelEn: "Area under the graph represents distance travelled",
            labelMy:
                "ဂရပ်အောက်ရှိ ဧရိယာက ခရီးသွားခဲ့သော အကွာအဝေးကို ကိုယ်စားပြုသည်",
            correctBucketEn: "Speed-Time Graph",
            correctBucketMy: "Speed-Time Graph",
          ),
          SortingItem(
            id: "igcsephys-w1-sort-4",
            labelEn: "A horizontal (flat) line means the object is stationary",
            labelMy:
                "အလျားလိုက် (ညီညာ) မျဉ်းဆိုသည်မှာ ပစ္စည်းသည် ရပ်တန့်နေခြင်း ဖြစ်သည်",
            correctBucketEn: "Distance-Time Graph",
            correctBucketMy: "Distance-Time Graph",
          ),
          SortingItem(
            id: "igcsephys-w1-sort-5",
            labelEn:
                "A horizontal (flat) line means the object moves at constant speed",
            labelMy:
                "အလျားလိုက် (ညီညာ) မျဉ်းဆိုသည်မှာ ပစ္စည်းသည် တည်ငြိမ်သော Speed ဖြင့် ရွေ့လျားနေခြင်း ဖြစ်သည်",
            correctBucketEn: "Speed-Time Graph",
            correctBucketMy: "Speed-Time Graph",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w1-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Bus Journey Graph",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ ဘတ်စ်ကား ခရီးစဉ် ဂရပ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Bus Journey Graph",
        titleMy: "နေချည်၏ ဘတ်စ်ကား ခရီးစဉ် ဂရပ်",
        passageEn:
            "Ko Thura sketched a speed-time graph on the whiteboard showing Nay Chi's bus journey to school: the speed rose steadily from 0 to 15 m/s over the first 10 seconds, stayed constant at 15 m/s for the next 30 seconds, then fell steadily back to 0 m/s over a final 5 seconds as the bus pulled up to the school gate.\n\nHe asked Nay Chi to describe what was physically happening during each of the three sections. She explained that the first section, a straight line sloping upward, showed the bus accelerating away from the previous stop, since its speed was increasing at a constant rate. The middle section, a flat horizontal line, showed the bus travelling at a constant speed of 15 m/s along the main road, with an acceleration of exactly zero, since the gradient of a flat line is zero. The final section, a straight line sloping downward back to zero, showed the bus decelerating as the driver braked to stop safely at the school gate.\n\nKo Thura then asked her to calculate the total distance covered during the constant-speed middle section. Nay Chi recognised this as simply the area of a rectangle under that part of the graph: 15 m/s multiplied by 30 seconds, giving 450 metres. When he asked about the first accelerating section instead, she correctly identified it as a triangle rather than a rectangle, since the speed started at zero and rose in a straight line -- so its area, and therefore the distance covered, was found using half the base multiplied by the height: 0.5 x 10 x 15 = 75 metres.",
        passageMy:
            "ကိုသူရသည် နေချည်၏ ကျောင်းသို့ ဘတ်စ်ကား ခရီးစဉ်ကို ပြသော Speed-Time ဂရပ်တစ်ခုကို White Board ပေါ်တွင် ရေးဆွဲခဲ့သည် - ပထမ ဆက္ကန့် ၁၀ အတွင်း Speed သည် ၀ မှ 15 m/s အထိ တစ်သမတ်တည်း မြင့်တက်လာပြီး၊ နောက် ဆက္ကန့် ၃၀ အတွက် 15 m/s တွင် တည်ငြိမ်စွာ ရှိနေကာ၊ ဘတ်စ်ကားသည် ကျောင်းတံခါးဝသို့ ရောက်ရှိသောအခါ နောက်ဆုံး ဆက္ကန့် ၅ ကြာ ၀ m/s သို့ တစ်သမတ်တည်း ပြန်ကျသွားခဲ့သည်။\n\nအပိုင်း သုံးပိုင်းတစ်ခုစီအတွင်း ရုပ်ပိုင်းဆိုင်ရာ ဖြစ်ပျက်နေသည်ကို ဖော်ပြရန် ကိုသူရသည် နေချည်ကို တောင်းဆိုခဲ့သည်။ ပထမ အပိုင်း၊ အပေါ်ဘက်သို့ စောင်းနေသော ဖြောင့်မျဉ်းသည် ၎င်း၏ Speed သည် တစ်သမတ်တည်း နှုန်းဖြင့် တိုးလာနေသောကြောင့် ယခင် မှတ်တိုင်မှ ဘတ်စ်ကား အရှိန်တက်နေသည်ကို ပြသကြောင်း သူမ ရှင်းပြခဲ့သည်။ အလယ် အပိုင်း၊ အလျားလိုက် ညီညာသော မျဉ်းသည် ဘတ်စ်ကား အဓိက လမ်းမကြီးတစ်လျှောက် 15 m/s တည်ငြိမ်သော Speed ဖြင့် ခရီးသွားနေသည်ကို ပြသကြောင်း၊ ညီညာသော မျဉ်း၏ Gradient သည် သုည ဖြစ်သောကြောင့် Acceleration သည်လည်း အတိအကျ သုည ဖြစ်သည်။ နောက်ဆုံး အပိုင်း၊ သုညသို့ ပြန်ကျသော အောက်ဘက်သို့ စောင်းနေသော ဖြောင့်မျဉ်းသည် ကားမောင်းသူသည် ကျောင်းတံခါးဝတွင် လုံခြုံစွာ ရပ်ရန် ဘရိတ်နှိပ်စဉ် ဘတ်စ်ကား အရှိန်လျော့နေသည်ကို ပြသသည်။\n\nထို့နောက် တည်ငြိမ်သော Speed ရှိသော အလယ် အပိုင်းအတွင်း ဖုံးလွှမ်းခဲ့သော စုစုပေါင်း အကွာအဝေးကို တွက်ချက်ရန် ကိုသူရ သူမကို တောင်းဆိုခဲ့သည်။ ဤသည်ကို ဂရပ်၏ ထို့အစိတ်အပိုင်း အောက်ရှိ Rectangle တစ်ခု၏ ဧရိယာအဖြစ် ရိုးရိုးရှင်းရှင်း နေချည် ဖော်ထုတ်ခဲ့သည် - 15 m/s ကို ဆက္ကန့် ၃၀ ဖြင့် မြှောက်ကာ 450 မီတာ ရရှိခဲ့သည်။ ပထမ အရှိန်တက်နေသော အပိုင်းအကြောင်း မေးမြန်းသောအခါ Speed သည် သုညမှ စတင်ကာ ဖြောင့်မျဉ်းဖြင့် မြင့်တက်ခဲ့သောကြောင့် Rectangle မဟုတ်ဘဲ Triangle တစ်ခုအဖြစ် သူမ မှန်ကန်စွာ ဖော်ထုတ်ခဲ့သည် -- ထို့ကြောင့် ၎င်း၏ ဧရိယာနှင့် ခရီးသွားခဲ့သော အကွာအဝေးကို Base ၏ ထက်ဝက်ကို အမြင့်ဖြင့် မြှောက်ခြင်းဖြင့် ရရှိခဲ့သည် - 0.5 x 10 x 15 = 75 မီတာ ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does the middle flat section have zero acceleration?",
            questionMy:
                "အလယ် ညီညာသော အပိုင်းတွင် Acceleration သုည ရှိသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The gradient of a flat (horizontal) line is zero",
              "The bus has stopped completely",
              "The speed is increasing rapidly",
              "The graph is drawn incorrectly",
            ],
            optionsMy: [
              "ညီညာသော (အလျားလိုက်) မျဉ်း၏ Gradient သည် သုည ဖြစ်သောကြောင့်",
              "ဘတ်စ်ကား လုံးလုံးလျားလျား ရပ်သွားခဲ့သောကြောင့်",
              "Speed သည် လျင်မြန်စွာ တိုးလာနေသောကြောင့်",
              "ဂရပ်ကို မှားယွင်းစွာ ရေးဆွဲထားသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the flat section's gradient.",
            ],
            hintsMy: [
              "ညီညာသော အပိုင်း၏ Gradient ကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what shape did Nay Chi use to calculate the distance in the constant-speed section?",
            questionMy:
                "တည်ငြိမ်သော Speed အပိုင်းရှိ အကွာအဝေးကို တွက်ချက်ရန် နေချည် အသုံးပြုခဲ့သော ပုံသဏ္ဌာန်ကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: ["A rectangle", "A triangle", "A circle", "A trapezium"],
            optionsMy: ["Rectangle", "Triangle", "Circle", "Trapezium"],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing the constant-speed calculation.",
            ],
            hintsMy: [
              "တည်ငြိမ်သော Speed တွက်ချက်မှုကို ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to the final sentence, why did Nay Chi use a triangle's area formula for the first section instead?",
            questionMy:
                "ပထမ အပိုင်းအတွက် Triangle ၏ ဧရိယာ ဖော်မြူလာကို အစား နေချည် အသုံးပြုခဲ့ရသည့် အကြောင်းရင်းကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "The speed started at zero and rose in a straight line, forming a triangular shape under the graph",
              "The bus was not actually moving during this section",
              "The teacher told her to use that formula regardless",
              "The section lasted for exactly zero seconds",
            ],
            optionsMy: [
              "Speed သည် သုညမှ စတင်ကာ ဖြောင့်မျဉ်းဖြင့် မြင့်တက်ခဲ့သဖြင့် ဂရပ်အောက်တွင် Triangle ပုံသဏ္ဌာန် ဖွဲ့စည်းခဲ့သောကြောင့်",
              "ဘတ်စ်ကားသည် ဤအပိုင်းအတွင်း အမှန်တကယ် မရွေ့လျားခဲ့သောကြောင့်",
              "ဆရာက ထို ဖော်မြူလာကို မည်သို့ပင်ဖြစ်စေ အသုံးပြုရန် ပြောကြားခဲ့သောကြောင့်",
              "ထို အပိုင်းသည် ဆက္ကန့် သုည အတိအကျ ကြာခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the final sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w1-d5",
      dayNumber: 5,
      titleEn: "Week 1 Recap: Motion Graphs",
      titleMy: "ပထမပတ် ပြန်လည်သုံးသပ်ခြင်း - ရွေ့လျားမှု ဂရပ်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Velocity is different from speed because velocity has a...",
          questionMy: "Velocity တွင် ...ရှိသောကြောင့် Speed နှင့် ကွဲပြားသည်",
          optionsEn: [
            "Stated direction",
            "Larger number",
            "No units",
            "Different name only",
          ],
          optionsMy: [
            "ဖော်ပြထားသော ဦးတည်ချက်",
            "ပို၍ ကြီးသော ဂဏန်း",
            "ယူနစ် မရှိခြင်း",
            "ကွဲပြားသော အမည်သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "On a speed-time graph, the area under the line represents...",
          questionMy:
              "Speed-Time ဂရပ်တွင် မျဉ်းအောက်ရှိ ဧရိယာက ...ကို ကိုယ်စားပြုသည်",
          optionsEn: [
            "Distance travelled",
            "Acceleration",
            "Speed at one instant",
            "Time taken only",
          ],
          optionsMy: [
            "ခရီးသွားခဲ့သော အကွာအဝေး",
            "Acceleration",
            "တစ်ခဏတည်းရှိ Speed",
            "ကြာချိန်သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A curved (steepening) line on a distance-time graph shows the object is...",
          questionMy:
              "Distance-Time ဂရပ်ပေါ်ရှိ ကွေ့ကောက်နေသော (စောင်းလာနေသော) မျဉ်းသည် ပစ္စည်းသည်...ကို ပြသသည်",
          optionsEn: [
            "Accelerating",
            "Stationary",
            "Moving at constant speed",
            "Moving backward only",
          ],
          optionsMy: [
            "အရှိန်တက်နေခြင်း",
            "ရပ်တန့်နေခြင်း",
            "တည်ငြိမ်သော Speed ဖြင့် ရွေ့လျားနေခြင်း",
            "နောက်ပြန်သာ ရွေ့လျားနေခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 2: "Mass, Weight and Density"
// =====================================================================

const CourseWeekDef _igcsePhysWeek2 = CourseWeekDef(
  id: "course-igcse-phys-w2",
  weekNumber: 2,
  titleEn: "Mass, Weight and Density",
  titleMy: "ထုထည် (Mass)၊ အလေးချိန်နှင့် သိပ်သည်းဆ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w2-d1",
      dayNumber: 1,
      titleEn: "Mass, Weight and Gravitational Field Strength",
      titleMy: "Mass, Weight နှင့် Gravitational Field Strength",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A 5 kg object is taken from Earth (g = 10 N/kg) to the Moon (g = 1.6 N/kg). What happens to its mass and weight?",
          questionMy:
              "5 kg ပစ္စည်းတစ်ခုကို ကမ္ဘာမြေ (g = 10 N/kg) မှ လသို့ (g = 1.6 N/kg) ယူဆောင်သွားသည်။ ၎င်း၏ Mass နှင့် Weight တွင် အဘယ်ဖြစ်လာသနည်း။",
          optionsEn: [
            "Mass stays the same (5 kg), but weight decreases (from 50 N to 8 N)",
            "Both mass and weight stay exactly the same",
            "Mass decreases, but weight stays the same",
            "Both mass and weight increase",
          ],
          optionsMy: [
            "Mass မှာ တူညီစွာ ဆက်ရှိနေသည် (5 kg)၊ Weight မှာမူ လျော့ကျသည် (50 N မှ 8 N သို့)",
            "Mass နှင့် Weight နှစ်ခုစလုံး အတိအကျ တူညီနေသည်",
            "Mass လျော့ကျသော်လည်း Weight မှာ တူညီနေသည်",
            "Mass နှင့် Weight နှစ်ခုစလုံး တိုးလာသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Mass is the amount of matter in an object and does not change with location. Weight = mass x g, so it changes when g changes.",
          ],
          hintsMy: [
            "Mass ဆိုသည်မှာ ပစ္စည်းတစ်ခုအတွင်းရှိ ဒြပ်ဝတ္ထု ပမာဏ ဖြစ်ပြီး တည်နေရာနှင့်အတူ မပြောင်းလဲပါ။ Weight = Mass x g ဖြစ်သောကြောင့် g ပြောင်းလဲသည့်အခါ ပြောင်းလဲသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which formula correctly calculates density?",
          questionMy:
              "သိပ်သည်းဆကို မှန်ကန်စွာ တွက်ချက်သော ဖော်မြူလာကား အဘယ်နည်း။",
          optionsEn: [
            "Density = mass / volume",
            "Density = volume / mass",
            "Density = mass x volume",
            "Density = mass + volume",
          ],
          optionsMy: [
            "Density = Mass / Volume",
            "Density = Volume / Mass",
            "Density = Mass x Volume",
            "Density = Mass + Volume",
          ],
          correctIndex: 0,
          hintsEn: [
            "Density (rho) is defined as mass per unit volume: rho = m/V, typically measured in kg/m3 or g/cm3.",
          ],
          hintsMy: [
            "Density (rho) ကို ယူနစ် Volume တစ်ခုလျှင် Mass အဖြစ် သတ်မှတ်ဆိုထားသည်- rho = m/V၊ များသောအားဖြင့် kg/m3 သို့မဟုတ် g/cm3 ဖြင့် တိုင်းတာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "How can you measure the volume of an irregularly shaped solid, such as a small stone?",
          questionMy:
              "ကျောက်ခဲငယ်တစ်ခုကဲ့သို့ ပုံမှန်မဟုတ်သော ပုံသဏ္ဌာန်ရှိ အစိုင်အခဲတစ်ခု၏ Volume ကို မည်သို့ တိုင်းတာနိုင်သနည်း။",
          optionsEn: [
            "Submerge it in water in a measuring cylinder and record the rise in water level (the displacement method)",
            "Measure its mass only, since mass equals volume",
            "It is impossible to measure the volume of an irregular solid",
            "Weigh it in air only, with no water involved",
          ],
          optionsMy: [
            "ရေတိုင်းတာသော ပြွန်ထဲရှိ ရေထဲသို့ နှစ်ချကာ ရေအဆင့် မြင့်တက်လာမှုကို မှတ်တမ်းတင်ခြင်း (Displacement Method)",
            "Mass သာ တိုင်းတာခြင်း၊ Mass သည် Volume နှင့် ညီမျှသောကြောင့်",
            "ပုံမှန်မဟုတ်သော အစိုင်အခဲတစ်ခု၏ Volume ကို တိုင်းတာရန် မဖြစ်နိုင်ပါ",
            "ရေနှင့် မသက်ဆိုင်ဘဲ လေထဲတွင်သာ ချိန်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "The volume of water displaced (pushed up) equals the volume of the submerged solid -- a direct application of the fact that two objects cannot occupy the same space.",
          ],
          hintsMy: [
            "ရေ ရွေ့ထွက်သွားသော (တွန်းတက်လာသော) Volume သည် နှစ်ချထားသော အစိုင်အခဲ၏ Volume နှင့် ညီမျှသည် -- ပစ္စည်း နှစ်ခုသည် နေရာတစ်ခုတည်းကို တစ်ပြိုင်နက် သိမ်းယူ၍ မရသည့် အချက်ကို တိုက်ရိုက် အသုံးချခြင်း ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w2-d2",
      dayNumber: 2,
      titleEn: "Match: Mass, Weight, and Density Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Mass, Weight နှင့် Density ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w2-dm-1",
          termEn: "Mass",
          termMy: "Mass",
          matchEn:
              "The amount of matter in an object, measured in kilograms, unaffected by location",
          matchMy:
              "ကီလိုဂရမ်ဖြင့် တိုင်းတာသော ပစ္စည်းတစ်ခုအတွင်းရှိ ဒြပ်ဝတ္ထု ပမာဏ၊ တည်နေရာနှင့် မသက်ဆိုင်",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w2-dm-2",
          termEn: "Weight",
          termMy: "Weight",
          matchEn:
              "The force of gravity acting on an object's mass, measured in newtons",
          matchMy:
              "ပစ္စည်းတစ်ခု၏ Mass အပေါ် ဆွဲငင်ဆောင်ရွက်နေသော အားနစ်ကို Newton ဖြင့် တိုင်းတာခြင်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w2-dm-3",
          termEn: "Gravitational field strength (g)",
          termMy: "Gravitational Field Strength (g)",
          matchEn:
              "The force of gravity per unit mass at a location, roughly 10 N/kg on Earth",
          matchMy:
              "တည်နေရာတစ်ခုတွင် ယူနစ် Mass တစ်ခုလျှင် ဆွဲငင်အား၊ ကမ္ဘာပေါ်တွင် 10 N/kg ခန့်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w2-dm-4",
          termEn: "Density",
          termMy: "Density",
          matchEn: "Mass per unit volume, calculated as mass divided by volume",
          matchMy:
              "ယူနစ် Volume တစ်ခုလျှင် Mass၊ Mass ကို Volume ဖြင့် စား၍ တွက်ချက်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w2-dm-5",
          termEn: "Displacement method",
          termMy: "Displacement Method",
          matchEn:
              "Measuring the volume of an irregular solid by the rise in water level when it is submerged",
          matchMy:
              "အစိုင်အခဲကို ရေထဲသို့ နှစ်ချသည့်အခါ ရေအဆင့် မြင့်တက်လာမှုဖြင့် ပုံမှန်မဟုတ်သော အစိုင်အခဲ၏ Volume ကို တိုင်းတာခြင်း",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w2-d3",
      dayNumber: 3,
      titleEn: "Sort: Mass, Weight, or Density Concept?",
      titleMy: "စီစစ်ကြမည် - Mass, Weight သို့မဟုတ် Density သဘောတရား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Mass", "Weight", "Density"],
        bucketsMy: ["Mass", "Weight", "Density"],
        items: [
          SortingItem(
            id: "igcsephys-w2-sort-1",
            labelEn: "Stays the same on the Moon as it was on Earth",
            labelMy:
                "ကမ္ဘာပေါ်တွင် ရှိသည့်အတိုင်း လပေါ်တွင်လည်း တူညီစွာ ဆက်ရှိနေသည်",
            correctBucketEn: "Mass",
            correctBucketMy: "Mass",
          ),
          SortingItem(
            id: "igcsephys-w2-sort-2",
            labelEn: "Measured in newtons using a spring balance",
            labelMy: "စပရိန် ချိန်ခွင်ဖြင့် Newton ၌ တိုင်းတာသည်",
            correctBucketEn: "Weight",
            correctBucketMy: "Weight",
          ),
          SortingItem(
            id: "igcsephys-w2-sort-3",
            labelEn: "Calculated by dividing mass by volume",
            labelMy: "Mass ကို Volume ဖြင့် စား၍ တွက်ချက်သည်",
            correctBucketEn: "Density",
            correctBucketMy: "Density",
          ),
          SortingItem(
            id: "igcsephys-w2-sort-4",
            labelEn:
                "Would become zero in deep space, far from any gravitational field",
            labelMy:
                "ဆွဲငင်စက်ကွင်း မည်သည့်တစ်ခုမှ ဝေးကွာသော အာကာသ နက်နက်ရှိုင်းရှိုင်းတွင် သုည ဖြစ်လာမည်",
            correctBucketEn: "Weight",
            correctBucketMy: "Weight",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w2-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Displacement Can Experiment",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ Displacement Can စမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Displacement Can Experiment",
        titleMy: "နေချည်၏ Displacement Can စမ်းသပ်မှု",
        passageEn:
            "Ko Thura handed Nay Chi an irregularly shaped metal key and challenged her to find its density without ever calculating its volume from a formula, since no simple geometric formula exists for such an oddly shaped object.\n\nShe first placed the key on a digital balance and recorded its mass as 24 g. Next, she filled a displacement can with water right up to the spout, placed an empty measuring cylinder underneath the spout, and gently lowered the key into the can using a piece of thread, being careful not to let it touch the sides. As the key sank, water spilled out through the spout into the measuring cylinder below, and once the dripping stopped, she recorded the volume of water collected as 3 cm3 -- this was, she reasoned, exactly equal to the volume of the key itself, since the key had physically pushed that much water out of the can.\n\nWith both mass and volume now known, Nay Chi calculated the key's density: 24 g divided by 3 cm3, giving 8 g/cm3. Ko Thura then asked her to identify the metal from a reference table listing iron (7.9 g/cm3), copper (8.9 g/cm3), and zinc (7.1 g/cm3). Nay Chi noted her result sat closer to iron than the other two, and considering ordinary keys are commonly made from a brass or steel alloy rather than a pure single metal, she concluded the result was consistent with an iron-based alloy, while cautioning that a small measurement error in either the mass or the volume could easily shift the calculated density enough to make an alloy identification only approximate, not exact.",
        passageMy:
            "ကိုသူရသည် နေချည်အား ပုံမှန်မဟုတ်သော ပုံသဏ္ဌာန်ရှိ သံသော့တစ်ခုကို ပေးအပ်ပြီး ၎င်း၏ Volume ကို ဖော်မြူလာတစ်ခုမှ တစ်ကြိမ်မျှ တွက်ချက်ခြင်း မပြုဘဲ ၎င်း၏ Density ကို ရှာဖွေရန် စိန်ခေါ်ခဲ့သည်၊ အကြောင်းမှာ ဤသို့ ထူးထူးဆန်းဆန်း ပုံသဏ္ဌာန်ရှိ ပစ္စည်းတစ်ခုအတွက် ရိုးရှင်းသော Geometric ဖော်မြူလာ မရှိသောကြောင့်ဖြစ်သည်။\n\nသူမသည် ပထမဆုံး သော့ကို Digital ချိန်ခွင်ပေါ်တွင် ထားကာ ၎င်း၏ Mass ကို 24 g ဟု မှတ်တမ်းတင်ခဲ့သည်။ ထို့နောက် Displacement Can တစ်ခုကို ပိုက်ဝကတိုင် ရေဖြင့် ဖြည့်ကာ ပိုက်ဝအောက်တွင် ဗလာ Measuring Cylinder တစ်ခုကို ထားပြီး ချည်မျှင်တစ်ချောင်းကို အသုံးပြု၍ သော့ကို Can ထဲသို့ ဖြည်းညင်းစွာ ချထားခဲ့သည်၊ ဘေးများကို မထိစေရန် ဂရုစိုက်ခဲ့သည်။ သော့ ငုပ်ဝင်သွားစဉ် ရေသည် ပိုက်ဝမှတစ်ဆင့် အောက်ရှိ Measuring Cylinder ထဲသို့ ယိုစီးထွက်ခဲ့ပြီး ယိုစီးမှု ရပ်တန့်သွားသောအခါ စုဆောင်းရသော ရေ၏ Volume ကို 3 cm3 ဟု သူမ မှတ်တမ်းတင်ခဲ့သည် -- ဤသည်ကား Can မှ ထို ပမာဏအထိ ရေကို သော့က ရုပ်ပိုင်းဆိုင်ရာ တွန်းထုတ်ခဲ့သောကြောင့် သော့ကိုယ်တိုင်၏ Volume နှင့် အတိအကျ ညီမျှသည်ဟု သူမ ကျိုးကြောင်းဆင်ခြင်ခဲ့သည်။\n\nMass နှင့် Volume နှစ်ခုစလုံး သိရှိပြီးနောက် နေချည်သည် သော့၏ Density ကို တွက်ချက်ခဲ့သည် - 24 g ကို 3 cm3 ဖြင့် စား၍ 8 g/cm3 ရရှိခဲ့သည်။ ထို့နောက် Iron (7.9 g/cm3)၊ Copper (8.9 g/cm3) နှင့် Zinc (7.1 g/cm3) စာရင်းပါ ကိုးကားစရာ ဇယားတစ်ခုမှ သတ္တုကို ဖော်ထုတ်ရန် ကိုသူရ သူမကို တောင်းဆိုခဲ့သည်။ နေချည်၏ ရလဒ်သည် အခြား နှစ်ခုထက် Iron နှင့် ပို၍ နီးစပ်ကြောင်း သတိပြုမိခဲ့ပြီး ရိုးရိုး သော့များသည် စင်ကြယ်သော သတ္တု တစ်မျိုးတည်းအစား Brass သို့မဟုတ် Steel Alloy ဖြင့် များသောအားဖြင့် ပြုလုပ်ထားသည်ကို ထည့်သွင်းစဉ်းစားလျက် ရလဒ်သည် Iron-Based Alloy တစ်မျိုးနှင့် ကိုက်ညီကြောင်း သူမ ကောက်ချက်ချခဲ့သည်၊ သို့သော် Mass သို့မဟုတ် Volume တွင် ငယ်ငယ်စား တိုင်းတာမှု အမှားတစ်ခုသည် တွက်ချက်ထားသော Density ကို Alloy ဖော်ထုတ်ခြင်းသည် အတိအကျ မဟုတ်ဘဲ ခန့်မှန်းချက်သာ ဖြစ်စေလောက်အောင် လွယ်ကူစွာ ရွှေ့ပြောင်းစေနိုင်ကြောင်း သတိပေးခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why was the volume of water collected equal to the volume of the key?",
            questionMy:
                "စုဆောင်းရသော ရေ၏ Volume သည် သော့၏ Volume နှင့် ညီမျှခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The key physically pushed that much water out of the can as it submerged",
              "The key dissolved into the water completely",
              "The measuring cylinder was inaccurate",
              "Water was added separately to match the key's mass",
            ],
            optionsMy: [
              "သော့ ငုပ်ဝင်သွားစဉ် ထို ပမာဏအထိ ရေကို ရုပ်ပိုင်းဆိုင်ရာ တွန်းထုတ်ခဲ့သောကြောင့်",
              "သော့သည် ရေထဲတွင် လုံးလုံးလျားလျား ပျော်ဝင်သွားခဲ့သောကြောင့်",
              "Measuring Cylinder သည် တိကျမှု မရှိခဲ့သောကြောင့်",
              "သော့၏ Mass နှင့် ကိုက်ညီစေရန် ရေကို သီးခြား ထပ်ထည့်ခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining why the collected water equals the key's volume.",
            ],
            hintsMy: [
              "စုဆောင်းရသော ရေသည် သော့၏ Volume နှင့် အဘယ်ကြောင့် ညီမျှကြောင်း ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what density did Nay Chi calculate for the key?",
            questionMy:
                "သော့အတွက် နေချည် တွက်ချက်ခဲ့သော Density ကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: ["8 g/cm3", "24 g/cm3", "3 g/cm3", "7.9 g/cm3"],
            optionsMy: ["8 g/cm3", "24 g/cm3", "3 g/cm3", "7.9 g/cm3"],
            correctIndex: 0,
            hintsEn: ["Reread the sentence with the division calculation."],
            hintsMy: ["စား၍ တွက်ချက်မှု ပါဝင်သော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, why did Nay Chi caution that the alloy identification was only approximate?",
            questionMy:
                "Alloy ဖော်ထုတ်ခြင်းသည် ခန့်မှန်းချက်သာ ဖြစ်ကြောင်း နေချည် သတိပေးခဲ့ရသည့် အကြောင်းရင်းကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "A small measurement error in mass or volume could shift the calculated density noticeably",
              "The reference table was completely wrong",
              "The key was actually made of pure gold",
              "Density calculations are always impossible for metals",
            ],
            optionsMy: [
              "Mass သို့မဟုတ် Volume တွင် ငယ်ငယ်စား တိုင်းတာမှု အမှားတစ်ခုသည် တွက်ချက်ထားသော Density ကို ထင်ရှားစွာ ရွှေ့ပြောင်းစေနိုင်သောကြောင့်",
              "ကိုးကားစရာ ဇယားသည် လုံးလုံးလျားလျား မှားယွင်းနေသောကြောင့်",
              "သော့သည် စင်ကြယ်သော ရွှေဖြင့် အမှန်တကယ် ပြုလုပ်ထားခဲ့သောကြောင့်",
              "သတ္တုများအတွက် Density တွက်ချက်မှုသည် အမြဲ မဖြစ်နိုင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w2-d5",
      dayNumber: 5,
      titleEn: "Week 2 Recap: Mass, Weight, and Density",
      titleMy: "ဒုတိယပတ် ပြန်လည်သုံးသပ်ခြင်း - Mass, Weight နှင့် Density",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Weight is calculated as mass multiplied by...",
          questionMy: "Weight ကို Mass ကို ...ဖြင့် မြှောက်၍ တွက်ချက်သည်",
          optionsEn: [
            "Gravitational field strength (g)",
            "Volume",
            "Density",
            "Time",
          ],
          optionsMy: [
            "Gravitational Field Strength (g)",
            "Volume",
            "Density",
            "Time",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "The displacement method measures the volume of an irregular solid using...",
          questionMy:
              "Displacement Method သည် ...ကို အသုံးပြု၍ ပုံမှန်မဟုတ်သော အစိုင်အခဲ၏ Volume ကို တိုင်းတာသည်",
          optionsEn: [
            "The rise in water level",
            "A ruler only",
            "Its mass alone",
            "Its colour",
          ],
          optionsMy: [
            "ရေအဆင့် မြင့်တက်လာမှု",
            "စံညွှန်းကူးတစ်ခုတည်း",
            "၎င်း၏ Mass တစ်ခုတည်း",
            "၎င်း၏ အရောင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Mass, unlike weight, does not change when...",
          questionMy: "Mass သည် Weight နှင့် မတူဘဲ ...သည့်အခါ မပြောင်းလဲပါ",
          optionsEn: [
            "The location's gravitational field strength changes",
            "The object is measured",
            "The object is weighed",
            "Time passes",
          ],
          optionsMy: [
            "တည်နေရာ၏ Gravitational Field Strength ပြောင်းလဲသည့်အခါ",
            "ပစ္စည်းကို တိုင်းတာသည့်အခါ",
            "ပစ္စည်းကို ချိန်သည့်အခါ",
            "အချိန် ကုန်လွန်သည့်အခါ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 3: "Effects of Forces and Momentum"
// =====================================================================

const CourseWeekDef _igcsePhysWeek3 = CourseWeekDef(
  id: "course-igcse-phys-w3",
  weekNumber: 3,
  titleEn: "Effects of Forces and Momentum",
  titleMy: "အားများ၏ သက်ရောက်မှုနှင့် အဟုန် (Momentum)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w3-d1",
      dayNumber: 1,
      titleEn: "Newton's Second Law and Hooke's Law",
      titleMy: "Newton ၏ ဒုတိယနိယာမနှင့် Hooke ၏ နိယာမ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A resultant force of 20 N acts on a 4 kg object. What acceleration does it produce? (F = ma)",
          questionMy:
              "20 N ရလဒ်အားသည် 4 kg ပစ္စည်းတစ်ခုအပေါ် သက်ရောက်သည်။ ၎င်းက မည်သည့် Acceleration ထုတ်ပေးသနည်း။ (F = ma)",
          optionsEn: [
            "5 m/s2 (a = F/m = 20/4)",
            "80 m/s2",
            "16 m/s2",
            "24 m/s2",
          ],
          optionsMy: [
            "5 m/s2 (a = F/m = 20/4)",
            "80 m/s2",
            "16 m/s2",
            "24 m/s2",
          ],
          correctIndex: 0,
          hintsEn: [
            "Rearranging F = ma gives a = F/m. Substituting: a = 20 N / 4 kg = 5 m/s2.",
          ],
          hintsMy: [
            "F = ma ကို ပြန်စီစဉ်ပါက a = F/m ရရှိသည်။ အစားထိုးလိုက်ပါက- a = 20 N / 4 kg = 5 m/s2 ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "According to Hooke's Law, what happens to a spring's extension if the applied force is doubled, provided the limit of proportionality is not exceeded?",
          questionMy:
              "Hooke ၏ နိယာမအရ Proportionality ကန့်သတ်ချက်ကို မကျော်လွန်ဟု ယူဆလျှင် သက်ရောက်သော အားကို နှစ်ဆ တိုးလိုက်ပါက စပရိန်၏ Extension တွင် အဘယ်ဖြစ်လာသနည်း။",
          optionsEn: [
            "The extension also doubles, since extension is directly proportional to force",
            "The extension stays exactly the same",
            "The extension is halved",
            "The spring breaks immediately, always",
          ],
          optionsMy: [
            "Extension သည်လည်း နှစ်ဆ တိုးလာသည်၊ Extension သည် Force နှင့် တိုက်ရိုက် အချိုးကျသောကြောင့်",
            "Extension သည် အတိအကျ တူညီနေသည်",
            "Extension သည် ထက်ဝက် ကျဆင်းသည်",
            "စပရိန်သည် အမြဲ ချက်ချင်း ကျိုးသွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "F = kx, where k is the spring constant. Within the limit of proportionality, doubling F doubles x.",
          ],
          hintsMy: [
            "F = kx၊ k သည် Spring Constant ဖြစ်သည်။ Proportionality ကန့်သတ်ချက်အတွင်း F ကို နှစ်ဆ တိုးလိုက်ပါက x ကိုလည်း နှစ်ဆ တိုးစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a closed system with no external forces, what does the principle of conservation of momentum state?",
          questionMy:
              "အပြင်ပိုင်းအားများ မရှိသော Closed System တစ်ခုတွင် Conservation of Momentum နိယာမက အဘယ်ကို ဖော်ပြသနည်း။",
          optionsEn: [
            "Total momentum before a collision equals total momentum after the collision",
            "Momentum always increases after a collision",
            "Momentum always disappears after a collision",
            "Momentum only applies to stationary objects",
          ],
          optionsMy: [
            "ထိတွေ့မှု မဖြစ်မီ စုစုပေါင်း Momentum သည် ထိတွေ့မှုပြီးနောက် စုစုပေါင်း Momentum နှင့် ညီမျှသည်",
            "ထိတွေ့မှုပြီးနောက် Momentum သည် အမြဲ တိုးလာသည်",
            "ထိတွေ့မှုပြီးနောက် Momentum သည် အမြဲ ပျောက်ကွယ်သွားသည်",
            "Momentum သည် ရပ်တန့်နေသော ပစ္စည်းများအတွက်သာ သက်ဆိုင်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Momentum = mass x velocity. In collisions or explosions with no external forces, total momentum is conserved, even though individual objects' velocities change.",
          ],
          hintsMy: [
            "Momentum = Mass x Velocity ။ အပြင်ပိုင်းအား မရှိသော ထိတွေ့မှုများ သို့မဟုတ် ပေါက်ကွဲမှုများတွင် ပစ္စည်းတစ်ခုစီ၏ Velocity ပြောင်းလဲသည့်တိုင် စုစုပေါင်း Momentum ကို ထိန်းသိမ်းသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w3-d2",
      dayNumber: 2,
      titleEn: "Match: Forces and Momentum Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Forces နှင့် Momentum ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w3-dm-1",
          termEn: "Resultant force",
          termMy: "Resultant Force",
          matchEn:
              "The single overall force that results from combining all forces acting on an object",
          matchMy:
              "ပစ္စည်းတစ်ခုအပေါ် သက်ရောက်နေသော အားအားလုံးကို ပေါင်းစပ်ခြင်းမှ ရရှိသော စုစုပေါင်း တစ်ခုတည်းသော အား",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w3-dm-2",
          termEn: "Limit of proportionality",
          termMy: "Limit of Proportionality",
          matchEn:
              "The point beyond which extension is no longer proportional to the force applied",
          matchMy:
              "Extension သည် သက်ရောက်သော Force နှင့် နောက်ထပ် အချိုးမကျတော့သည့် အချက်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w3-dm-3",
          termEn: "Momentum",
          termMy: "Momentum",
          matchEn: "The product of an object's mass and velocity",
          matchMy: "ပစ္စည်းတစ်ခု၏ Mass နှင့် Velocity ၏ မြှောက်လဒ်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w3-dm-4",
          termEn: "Newton's second law",
          termMy: "Newton's Second Law",
          matchEn:
              "Resultant force equals mass multiplied by acceleration (F = ma)",
          matchMy:
              "Resultant Force သည် Mass ကို Acceleration ဖြင့် မြှောက်ထားခြင်းနှင့် ညီမျှသည် (F = ma)",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w3-dm-5",
          termEn: "Conservation of momentum",
          termMy: "Conservation of Momentum",
          matchEn:
              "Total momentum before an event equals total momentum after, provided no external force acts",
          matchMy:
              "အပြင်ပိုင်းအား မသက်ရောက်ပါက ဖြစ်ရပ်တစ်ခု မဖြစ်မီ စုစုပေါင်း Momentum သည် ပြီးနောက် စုစုပေါင်း Momentum နှင့် ညီမျှသည်",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w3-d3",
      dayNumber: 3,
      titleEn: "Sort: Newton's Law, Hooke's Law, or Momentum Concept?",
      titleMy:
          "စီစစ်ကြမည် - Newton's Law လား၊ Hooke's Law လား၊ Momentum သဘောတရားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Newton's Second Law", "Hooke's Law", "Momentum"],
        bucketsMy: ["Newton's Second Law", "Hooke's Law", "Momentum"],
        items: [
          SortingItem(
            id: "igcsephys-w3-sort-1",
            labelEn:
                "A larger resultant force produces a larger acceleration for the same mass",
            labelMy:
                "ပိုကြီးသော Resultant Force သည် တူညီသော Mass တစ်ခုအတွက် ပိုကြီးသော Acceleration ထုတ်ပေးသည်",
            correctBucketEn: "Newton's Second Law",
            correctBucketMy: "Newton's Second Law",
          ),
          SortingItem(
            id: "igcsephys-w3-sort-2",
            labelEn:
                "A spring's extension is proportional to the force applied, up to a limit",
            labelMy:
                "စပရိန်၏ Extension သည် ကန့်သတ်ချက်တစ်ခုအထိ သက်ရောက်သော Force နှင့် အချိုးကျသည်",
            correctBucketEn: "Hooke's Law",
            correctBucketMy: "Hooke's Law",
          ),
          SortingItem(
            id: "igcsephys-w3-sort-3",
            labelEn:
                "Two colliding trolleys have combined momentum before impact equal to after impact",
            labelMy:
                "ရင်ဆိုင်ထိတွေ့သော ကားနှစ်စီးသည် ထိတွေ့မှုမဖြစ်မီ ပေါင်းစပ် Momentum သည် ထိတွေ့မှု ပြီးနောက်နှင့် ညီမျှသည်",
            correctBucketEn: "Momentum",
            correctBucketMy: "Momentum",
          ),
          SortingItem(
            id: "igcsephys-w3-sort-4",
            labelEn: "Calculated by multiplying mass and acceleration",
            labelMy: "Mass နှင့် Acceleration ကို မြှောက်၍ တွက်ချက်သည်",
            correctBucketEn: "Newton's Second Law",
            correctBucketMy: "Newton's Second Law",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w3-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Trolley Collision Lab",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ ကားရင်ဆိုင်ထိတွေ့မှု ဓာတ်ခွဲခန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Trolley Collision Lab",
        titleMy: "နေချည်၏ ကားရင်ဆိုင်ထိတွေ့မှု ဓာတ်ခွဲခန်း",
        passageEn:
            "Ko Thura set up a low-friction track with two trolleys for Nay Chi: a 2 kg trolley moving at 3 m/s toward a stationary 1 kg trolley. When they collided, they stuck together and moved off as one combined mass.\n\nHe asked her to predict their combined velocity after the collision using conservation of momentum. Nay Chi calculated the total momentum before the collision: the moving trolley contributed 2 kg x 3 m/s = 6 kg m/s, while the stationary trolley contributed zero, since its velocity was zero. Total momentum before the collision was therefore 6 kg m/s. Since momentum is conserved in a closed system with no external forces, the total momentum immediately after the collision also had to equal 6 kg m/s, but now shared between a combined mass of 2 kg + 1 kg = 3 kg moving together at a single velocity.\n\nRearranging momentum = mass x velocity to find velocity, she divided the total momentum by the combined mass: 6 kg m/s / 3 kg = 2 m/s. When Ko Thura ran the actual experiment using a video camera to measure the trolleys' motion, the combined trolleys moved off at very close to 2 m/s, confirming her prediction. He then asked why the combined velocity was less than the original moving trolley's 3 m/s, even though no external force had acted. Nay Chi explained that this was not a violation of momentum conservation at all -- the same total momentum was simply now spread across a larger combined mass, so the velocity per unit mass necessarily had to be lower to keep momentum unchanged.",
        passageMy:
            "ကိုသူရသည် နေချည်အတွက် ကား နှစ်စီးပါသော ပွတ်တိုက်မှု နည်းသော Track တစ်ခုကို စီစဉ်ပေးခဲ့သည် - Stationary 1 kg ကားတစ်စီးဘက်သို့ 3 m/s ဖြင့် ရွေ့လျားနေသော 2 kg ကားတစ်စီး။ ၎င်းတို့ ထိတွေ့ကြသောအခါ ၎င်းတို့သည် အတူတကွ ကပ်ကာ ပေါင်းစပ် Mass တစ်ခုအဖြစ် ရွေ့လျားသွားခဲ့သည်။\n\nConservation of Momentum ကို အသုံးပြု၍ ထိတွေ့ပြီးနောက် ၎င်းတို့၏ ပေါင်းစပ် Velocity ကို ခန့်မှန်းရန် သူသည် သူမကို တောင်းဆိုခဲ့သည်။ နေချည်သည် ထိတွေ့မှုမဖြစ်မီ စုစုပေါင်း Momentum ကို တွက်ချက်ခဲ့သည် - ရွေ့လျားနေသော ကားသည် 2 kg x 3 m/s = 6 kg m/s ပါဝင်ခဲ့ပြီး Stationary ကားမှာမူ ၎င်း၏ Velocity သုည ဖြစ်သောကြောင့် သုည ပါဝင်ခဲ့သည်။ ထို့ကြောင့် ထိတွေ့မှုမဖြစ်မီ စုစုပေါင်း Momentum သည် 6 kg m/s ဖြစ်ခဲ့သည်။ အပြင်ပိုင်းအား မရှိသော Closed System တစ်ခုတွင် Momentum ကို ထိန်းသိမ်းသောကြောင့် ထိတွေ့မှု ပြီးနောက် ချက်ချင်း စုစုပေါင်း Momentum သည်လည်း 6 kg m/s နှင့် ညီမျှရမည် ဖြစ်သော်လည်း ယခု 2 kg + 1 kg = 3 kg ပေါင်းစပ် Mass တစ်ခုအား Velocity တစ်ခုတည်းဖြင့် အတူတကွ ရွေ့လျားစဉ် ဝေမျှသွားခဲ့သည်။\n\nVelocity ကို ရှာဖွေရန် Momentum = Mass x Velocity ကို ပြန်စီစဉ်ကာ သူမသည် စုစုပေါင်း Momentum ကို ပေါင်းစပ် Mass ဖြင့် စားခဲ့သည် - 6 kg m/s / 3 kg = 2 m/s ။ ကားများ၏ ရွေ့လျားမှုကို တိုင်းတာရန် ဗီဒီယို ကင်မရာကို အသုံးပြု၍ ကိုသူရ အမှန်တကယ် စမ်းသပ်မှုကို လုပ်ဆောင်ခဲ့သောအခါ ပေါင်းစပ် ကားများသည် 2 m/s နှင့် အလွန်နီးစပ်စွာ ရွေ့လျားသွားခဲ့ကာ သူမ၏ ခန့်မှန်းချက်ကို အတည်ပြုခဲ့သည်။ အပြင်ပိုင်းအား တစ်ခုမျှ မသက်ရောက်ခဲ့သော်လည်း ပေါင်းစပ် Velocity သည် မူလ ရွေ့လျားနေသော ကား၏ 3 m/s ထက် နည်းရသည့် အကြောင်းရင်းကို ထို့နောက် သူ မေးမြန်းခဲ့သည်။ ဤသည်ကား Momentum Conservation ကို ချိုးဖောက်ခြင်း လုံးဝ မဟုတ်ကြောင်း နေချည် ရှင်းပြခဲ့သည် -- တူညီသော စုစုပေါင်း Momentum သည် ယခု ကြီးမားသော ပေါင်းစပ် Mass တစ်ခု တစ်လျှောက်တွင် ရိုးရိုးရှင်းရှင်း ပျံ့နှံ့သွားခဲ့ခြင်းဖြစ်ကာ Momentum ကို မပြောင်းလဲစေရန် ယူနစ် Mass တစ်ခုလျှင် Velocity သည် နိမ့်ရန် လိုအပ်ခဲ့ခြင်း ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the total momentum before the collision?",
            questionMy:
                "ထိတွေ့မှုမဖြစ်မီ စုစုပေါင်း Momentum ကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: ["6 kg m/s", "3 kg m/s", "2 kg m/s", "9 kg m/s"],
            optionsMy: ["6 kg m/s", "3 kg m/s", "2 kg m/s", "9 kg m/s"],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence stating the total momentum before the collision.",
            ],
            hintsMy: [
              "ထိတွေ့မှုမဖြစ်မီ စုစုပေါင်း Momentum ကို ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what combined velocity did Nay Chi calculate after the collision?",
            questionMy:
                "ထိတွေ့မှုပြီးနောက် နေချည် တွက်ချက်ခဲ့သော ပေါင်းစပ် Velocity ကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: ["2 m/s", "3 m/s", "6 m/s", "1 m/s"],
            optionsMy: ["2 m/s", "3 m/s", "6 m/s", "1 m/s"],
            correctIndex: 0,
            hintsEn: ["Reread the sentence with the division calculation."],
            hintsMy: ["စား၍ တွက်ချက်မှု ပါဝင်သော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, why was the combined velocity lower than the original 3 m/s, even though momentum was conserved?",
            questionMy:
                "Momentum ကို ထိန်းသိမ်းထားသော်လည်း ပေါင်းစပ် Velocity သည် မူလ 3 m/s ထက် နိမ့်ရသည့် အကြောင်းရင်းကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "The same total momentum was spread across a larger combined mass, requiring a lower velocity per unit mass",
              "Momentum conservation was actually violated in this collision",
              "The trolleys lost all their momentum instantly",
              "The track had significant friction slowing everything down",
            ],
            optionsMy: [
              "တူညီသော စုစုပေါင်း Momentum သည် ကြီးမားသော ပေါင်းစပ် Mass တစ်ခု တစ်လျှောက်တွင် ပျံ့နှံ့သွားခဲ့ပြီး ယူနစ် Mass တစ်ခုလျှင် Velocity နိမ့်ရန် လိုအပ်ခဲ့သောကြောင့်",
              "ဤ ထိတွေ့မှုတွင် Momentum Conservation ကို အမှန်တကယ် ချိုးဖောက်ခဲ့သောကြောင့်",
              "ကားများသည် ၎င်းတို့၏ Momentum အားလုံးကို ချက်ချင်း ဆုံးရှုံးခဲ့သောကြောင့်",
              "Track တွင် အားလုံးကို နှေးကွေးစေသော သိသာထင်ရှားသော ပွတ်တိုက်မှု ရှိခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w3-d5",
      dayNumber: 5,
      titleEn: "Week 3 Recap: Forces and Momentum",
      titleMy: "တတိယပတ် ပြန်လည်သုံးသပ်ခြင်း - Forces နှင့် Momentum",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Newton's second law states that resultant force equals mass multiplied by...",
          questionMy:
              "Newton's Second Law အရ Resultant Force သည် Mass ကို ...ဖြင့် မြှောက်ထားခြင်းနှင့် ညီမျှသည်",
          optionsEn: ["Acceleration", "Time", "Distance", "Density"],
          optionsMy: ["Acceleration", "Time", "Distance", "Density"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Momentum is calculated as mass multiplied by...",
          questionMy: "Momentum ကို Mass ကို ...ဖြင့် မြှောက်၍ တွက်ချက်သည်",
          optionsEn: ["Velocity", "Acceleration", "Force", "Time"],
          optionsMy: ["Velocity", "Acceleration", "Force", "Time"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Beyond the limit of proportionality, a spring's extension is no longer...",
          questionMy:
              "Proportionality ကန့်သတ်ချက်ကို ကျော်လွန်ပါက စပရိန်၏ Extension သည် နောက်ထပ် ...မရှိတော့ပါ",
          optionsEn: [
            "Proportional to the applied force",
            "Measurable at all",
            "Made of metal",
            "Affected by force",
          ],
          optionsMy: [
            "သက်ရောက်သော Force နှင့် အချိုးကျခြင်း",
            "တိုင်းတာနိုင်ခြင်း လုံးဝ",
            "သတ္တုဖြင့် ပြုလုပ်ခြင်း",
            "Force ကြောင့် သက်ရောက်ခံရခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 4: "Mechanics Problem-Solving Studio" (Term 1 Capstone)
// =====================================================================

const CourseWeekDef _igcsePhysWeek4 = CourseWeekDef(
  id: "course-igcse-phys-w4",
  weekNumber: 4,
  titleEn: "Mechanics Problem-Solving Studio",
  titleMy: "မက္ကင်းနစ် ပြဿနာဖြေရှင်းခြင်း အလုပ်ရုံ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w4-d1",
      dayNumber: 1,
      titleEn: "Moments, Centre of Gravity, and Pressure",
      titleMy: "Moments, Centre of Gravity နှင့် Pressure",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A 10 N force acts 0.5 m from a pivot. What moment does it produce? (Moment = force x perpendicular distance)",
          questionMy:
              "10 N အား သည် Pivot မှ 0.5 m အကွာတွင် သက်ရောက်သည်။ ၎င်းက မည်သည့် Moment ထုတ်ပေးသနည်း။ (Moment = Force x Perpendicular Distance)",
          optionsEn: ["5 Nm (10 x 0.5)", "10.5 Nm", "20 Nm", "0.05 Nm"],
          optionsMy: ["5 Nm (10 x 0.5)", "10.5 Nm", "20 Nm", "0.05 Nm"],
          correctIndex: 0,
          hintsEn: [
            "Moment = force x perpendicular distance from the pivot = 10 N x 0.5 m = 5 Nm.",
          ],
          hintsMy: [
            "Moment = Force x Pivot မှ Perpendicular Distance = 10 N x 0.5 m = 5 Nm ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "According to the principle of moments, a system is balanced when...",
          questionMy:
              "Principle of Moments အရ စနစ်တစ်ခုသည် ...သည့်အခါ ဟန်ချက်ညီသည်",
          optionsEn: [
            "Total clockwise moments equal total anticlockwise moments",
            "All forces point in the same direction",
            "The pivot is removed entirely",
            "Only one force acts on the system",
          ],
          optionsMy: [
            "စုစုပေါင်း Clockwise Moment များသည် စုစုပေါင်း Anticlockwise Moment များနှင့် ညီမျှသည့်အခါ",
            "အားအားလုံးသည် ဦးတည်ချက် တစ်ခုတည်းသို့ ညွှန်ပြသည့်အခါ",
            "Pivot ကို လုံးဝ ဖယ်ရှားလိုက်သည့်အခါ",
            "စနစ်ပေါ်တွင် အား တစ်ခုတည်းသာ သက်ရောက်သည့်အခါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the definition of equilibrium in a turning-effects context -- like a seesaw balanced with equal moments on each side.",
          ],
          hintsMy: [
            "ဤသည်မှာ Turning-Effects ဆိုင်ရာ ရှုထောင့်တွင် Equilibrium ၏ အဓိပ္ပာယ်ဖွင့်ဆိုချက် ဖြစ်သည် -- ဘက်တစ်ဖက်စီတွင် Moment ညီမျှစွာရှိသော Seesaw တစ်ခုကဲ့သို့။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A force of 40 N is applied over an area of 2 m2. What pressure does it create? (P = F/A)",
          questionMy:
              "40 N အားကို 2 m2 ဧရိယာအပေါ် သက်ရောက်စေသည်။ ၎င်းက မည်သည့် Pressure ဖန်တီးသနည်း။ (P = F/A)",
          optionsEn: ["20 Pa (40/2)", "80 Pa", "42 Pa", "0.05 Pa"],
          optionsMy: ["20 Pa (40/2)", "80 Pa", "42 Pa", "0.05 Pa"],
          correctIndex: 0,
          hintsEn: [
            "Pressure = force / area = 40 N / 2 m2 = 20 Pa (pascals, N/m2).",
          ],
          hintsMy: [
            "Pressure = Force / Area = 40 N / 2 m2 = 20 Pa (Pascal, N/m2) ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w4-d2",
      dayNumber: 2,
      titleEn: "Match: Term 1 Recap Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ပထမတန်း ပြန်လည်သုံးသပ်ခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w4-dm-1",
          termEn: "Moment",
          termMy: "Moment",
          matchEn:
              "The turning effect of a force, calculated as force x perpendicular distance from the pivot",
          matchMy:
              "အား၏ လှည့်အား သက်ရောက်မှု၊ Force x Pivot မှ Perpendicular Distance ဖြင့် တွက်ချက်",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w4-dm-2",
          termEn: "Centre of gravity",
          termMy: "Centre of Gravity",
          matchEn:
              "The single point where an object's entire weight can be considered to act",
          matchMy:
              "ပစ္စည်းတစ်ခု၏ Weight တစ်ခုလုံး သက်ရောက်သည်ဟု ယူဆနိုင်သော တစ်ခုတည်းသော အချက်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w4-dm-3",
          termEn: "Pressure",
          termMy: "Pressure",
          matchEn:
              "Force acting per unit area, calculated as force divided by area",
          matchMy:
              "ယူနစ် ဧရိယာတစ်ခုလျှင် သက်ရောက်သော Force၊ Force ကို Area ဖြင့် စား၍ တွက်ချက်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w4-dm-4",
          termEn: "Equilibrium",
          termMy: "Equilibrium",
          matchEn:
              "A balanced state where the resultant force and resultant moment are both zero",
          matchMy:
              "Resultant Force နှင့် Resultant Moment နှစ်ခုစလုံး သုည ဖြစ်နေသော ဟန်ချက်ညီသော အခြေအနေ",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w4-dm-5",
          termEn: "Liquid pressure",
          termMy: "Liquid Pressure",
          matchEn:
              "Pressure in a liquid that increases with depth, calculated using depth x density x g",
          matchMy:
              "အနက်နှင့်အတူ တိုးလာသော အရည်တွင်းရှိ Pressure၊ Depth x Density x g ဖြင့် တွက်ချက်",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w4-d3",
      dayNumber: 3,
      titleEn: "Sort: Motion, Density, or Moments/Pressure Concept?",
      titleMy:
          "စီစစ်ကြမည် - Motion လား၊ Density လား၊ Moments/Pressure သဘောတရားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Motion", "Density", "Moments/Pressure"],
        bucketsMy: ["Motion", "Density", "Moments/Pressure"],
        items: [
          SortingItem(
            id: "igcsephys-w4-sort-1",
            labelEn:
                "Calculating acceleration from the gradient of a speed-time graph",
            labelMy: "Speed-Time ဂရပ်၏ Gradient မှ Acceleration တွက်ချက်ခြင်း",
            correctBucketEn: "Motion",
            correctBucketMy: "Motion",
          ),
          SortingItem(
            id: "igcsephys-w4-sort-2",
            labelEn:
                "Using the displacement method to find an irregular solid's volume",
            labelMy:
                "ပုံမှန်မဟုတ်သော အစိုင်အခဲ၏ Volume ရှာဖွေရန် Displacement Method ကို အသုံးပြုခြင်း",
            correctBucketEn: "Density",
            correctBucketMy: "Density",
          ),
          SortingItem(
            id: "igcsephys-w4-sort-3",
            labelEn:
                "Balancing a seesaw using equal clockwise and anticlockwise moments",
            labelMy:
                "Clockwise နှင့် Anticlockwise Moment ညီမျှစွာ အသုံးပြု၍ Seesaw ကို ဟန်ချက်ညီစေခြင်း",
            correctBucketEn: "Moments/Pressure",
            correctBucketMy: "Moments/Pressure",
          ),
          SortingItem(
            id: "igcsephys-w4-sort-4",
            labelEn:
                "Calculating force divided by area to find pressure on the ground",
            labelMy:
                "မြေပြင်ပေါ်ရှိ Pressure ရှာဖွေရန် Force ကို Area ဖြင့် စားခြင်း",
            correctBucketEn: "Moments/Pressure",
            correctBucketMy: "Moments/Pressure",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w4-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Seesaw Balancing Challenge",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ Seesaw ဟန်ချက်ညီစေရေး စိန်ခေါ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Seesaw Balancing Challenge",
        titleMy: "နေချည်၏ Seesaw ဟန်ချက်ညီစေရေး စိန်ခေါ်မှု",
        passageEn:
            "Ko Thura set Nay Chi a classic moments problem: a uniform seesaw pivoted exactly at its centre, with a 300 N child sitting 2 m from the pivot on the left side. Where exactly would a 400 N adult need to sit on the right side for the seesaw to balance perfectly?\n\nNay Chi began by calculating the child's moment: 300 N x 2 m = 600 Nm, acting anticlockwise, since the child was on the left. For the seesaw to balance, the principle of moments required the adult's clockwise moment on the right to exactly equal this: also 600 Nm. Since moment = force x distance, she rearranged to find the required distance: 600 Nm / 400 N = 1.5 m. The adult, despite weighing more than the child, needed to sit closer to the pivot -- exactly 1.5 m away -- for the two moments to balance.\n\nKo Thura then asked a follow-up: what if the seesaw itself was not uniform, but had its own centre of gravity shifted 0.2 m to the right of the pivot, and the seesaw's own weight was 100 N? Nay Chi recognised that the seesaw's own weight now also created a clockwise moment that had to be included: 100 N x 0.2 m = 20 Nm. This meant the total clockwise moment needed to balance the child's 600 Nm anticlockwise moment was now the adult's moment plus this extra 20 Nm, so the adult's required moment dropped to 580 Nm, placing them slightly closer to the pivot than before, at 580 / 400 = 1.45 m. This extension of the problem illustrated a rule Ko Thura repeated often: never assume an object's own weight is negligible in a moments problem unless the question explicitly states the object is 'light' or 'of negligible weight.'",
        passageMy:
            "ကိုသူရသည် နေချည်အား Classic Moments ပြဿနာတစ်ခု ပေးအပ်ခဲ့သည် - ၎င်း၏ ဗဟိုချက်တွင် အတိအကျ Pivot ချထားသော Uniform Seesaw တစ်ခု၊ ဘယ်ဘက်တွင် Pivot မှ 2 m အကွာ 300 N ကလေးတစ်ဦး ထိုင်နေသည်။ Seesaw ပြီးပြည့်စုံစွာ ဟန်ချက်ညီစေရန် 400 N လူကြီးတစ်ဦးသည် ညာဘက်တွင် အတိအကျ မည်သည့်နေရာတွင် ထိုင်ရမည်နည်း။\n\nနေချည်သည် ကလေး၏ Moment ကို တွက်ချက်ခြင်းဖြင့် စတင်ခဲ့သည် - ကလေးသည် ဘယ်ဘက်တွင် ရှိနေသောကြောင့် Anticlockwise ဖြင့် သက်ရောက်နေသော 300 N x 2 m = 600 Nm ။ Seesaw ဟန်ချက်ညီစေရန် Principle of Moments အရ ညာဘက်ရှိ လူကြီး၏ Clockwise Moment သည် ဤသို့ အတိအကျ ညီမျှရန် လိုအပ်ခဲ့သည် - 600 Nm လည်း ။ Moment = Force x Distance ဖြစ်သောကြောင့် လိုအပ်သော Distance ကို ရှာဖွေရန် သူမ ပြန်စီစဉ်ခဲ့သည် - 600 Nm / 400 N = 1.5 m ။ လူကြီးသည် ကလေးထက် ပို၍ လေးလံသော်လည်း Moment နှစ်ခု ဟန်ချက်ညီစေရန် Pivot နှင့် ပို၍ နီးစွာ -- အတိအကျ 1.5 m အကွာ -- ထိုင်ရန် လိုအပ်ခဲ့သည်။\n\nထို့နောက် ကိုသူရသည် ဆက်စပ်မေးခွန်းတစ်ခု မေးခဲ့သည် - Seesaw ကိုယ်တိုင်သည် Uniform မဟုတ်ဘဲ ၎င်း၏ ကိုယ်ပိုင် Centre of Gravity သည် Pivot ၏ ညာဘက်သို့ 0.2 m ရွေ့သွားပြီး Seesaw ၏ ကိုယ်ပိုင် Weight သည် 100 N ဖြစ်ခဲ့ပါက အဘယ်ဖြစ်လာမည်နည်း။ Seesaw ၏ ကိုယ်ပိုင် Weight သည် ယခု ထည့်သွင်းရမည့် Clockwise Moment တစ်ခုကိုပါ ဖန်တီးကြောင်း နေချည် ဖော်ထုတ်ခဲ့သည် - 100 N x 0.2 m = 20 Nm ။ ဆိုလိုသည်မှာ ကလေး၏ 600 Nm Anticlockwise Moment ကို ဟန်ချက်ညီစေရန် လိုအပ်သော စုစုပေါင်း Clockwise Moment သည် ယခု လူကြီး၏ Moment ပေါင်း ဤ ထပ်ဆောင်း 20 Nm ဖြစ်လာသဖြင့် လူကြီးအတွက် လိုအပ်သော Moment သည် 580 Nm သို့ ကျဆင်းသွားကာ ၎င်းတို့ကို ယခင်ထက် Pivot နှင့် အနည်းငယ် ပို၍ နီးအောင် ထားသွားခဲ့သည်၊ 580 / 400 = 1.45 m ။ ပြဿနာ၏ ဤ ချဲ့ထွင်မှုသည် ကိုသူရ မကြာခဏ ထပ်ခါထပ်ခါ ပြောကြားလေ့ရှိသော စည်းမျဉ်းတစ်ခုကို ဖော်ပြခဲ့သည် - မေးခွန်းက ပစ္စည်းကို 'Light' သို့မဟုတ် 'Negligible Weight ရှိသည်' ဟု အတိအလင်း ဖော်ပြထားခြင်း မရှိသရွေ့ Moments ပြဿနာတစ်ခုတွင် ပစ္စည်းတစ်ခု၏ ကိုယ်ပိုင် Weight ကို လျစ်လျူရှုနိုင်သည်ဟု ဘယ်တော့မှ မယူဆပါနှင့်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what distance from the pivot did Nay Chi calculate for the adult (ignoring the seesaw's own weight)?",
            questionMy:
                "(Seesaw ၏ ကိုယ်ပိုင် Weight ကို လျစ်လျူရှုလျှင်) လူကြီးအတွက် နေချည် တွက်ချက်ခဲ့သော Pivot မှ Distance ကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: ["1.5 m", "2 m", "600 m", "0.75 m"],
            optionsMy: ["1.5 m", "2 m", "600 m", "0.75 m"],
            correctIndex: 0,
            hintsEn: ["Reread the division calculation in paragraph 2."],
            hintsMy: ["စာပိုဒ် ၂ ရှိ စား၍ တွက်ချက်မှုကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did the seesaw's own weight need to be included in the second version of the problem?",
            questionMy:
                "ပြဿနာ၏ ဒုတိယ ပုံစံတွင် Seesaw ၏ ကိုယ်ပိုင် Weight ကို ထည့်သွင်းရန် လိုအပ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Its shifted centre of gravity created its own clockwise moment that had to be added",
              "The seesaw had no weight at all in this version",
              "The child's weight changed in the second version",
              "The pivot moved to a different location",
            ],
            optionsMy: [
              "၎င်း၏ ရွေ့သွားသော Centre of Gravity သည် ထည့်သွင်းရမည့် ၎င်း၏ ကိုယ်ပိုင် Clockwise Moment ကို ဖန်တီးခဲ့သောကြောင့်",
              "ဤ ပုံစံတွင် Seesaw တွင် Weight လုံးဝ မရှိခဲ့သောကြောင့်",
              "ဒုတိယ ပုံစံတွင် ကလေး၏ Weight ပြောင်းလဲခဲ့သောကြောင့်",
              "Pivot သည် မတူညီသော တည်နေရာသို့ ရွေ့ပြောင်းသွားခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the seesaw's own moment.",
            ],
            hintsMy: [
              "Seesaw ၏ ကိုယ်ပိုင် Moment ကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, what rule did Ko Thura repeat often about moments problems?",
            questionMy:
                "Moments ပြဿနာများအကြောင်း ကိုသူရ မကြာခဏ ထပ်ခါထပ်ခါ ပြောကြားလေ့ရှိသော စည်းမျဉ်းကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "Never assume an object's weight is negligible unless the question explicitly says so",
              "Always assume every object is weightless",
              "Moments problems never involve seesaws",
              "The pivot position never matters",
            ],
            optionsMy: [
              "မေးခွန်းက အတိအလင်း မဖော်ပြသရွေ့ ပစ္စည်းတစ်ခု၏ Weight ကို လျစ်လျူရှုနိုင်သည်ဟု ဘယ်တော့မှ မယူဆပါနှင့်",
              "ပစ္စည်းတိုင်းသည် Weightless ဖြစ်သည်ဟု အမြဲ ယူဆပါ",
              "Moments ပြဿနာများသည် Seesaw များနှင့် ဘယ်တော့မှ မသက်ဆိုင်ပါ",
              "Pivot တည်နေရာသည် ဘယ်တော့မှ အရေးမကြီးပါ",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w4-d5",
      dayNumber: 5,
      titleEn: "Term 1 Recap: Motion, Forces and Energy",
      titleMy: "ပထမတန်း ပြန်လည်သုံးသပ်ခြင်း - Motion, Forces and Energy",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "On a distance-time graph, a flat horizontal line means the object is...",
          questionMy:
              "Distance-Time ဂရပ်တွင် ညီညာသော အလျားလိုက် မျဉ်းသည် ပစ္စည်းသည်...ကို ဆိုလိုသည်",
          optionsEn: [
            "Stationary",
            "Accelerating",
            "Decelerating",
            "Moving very fast",
          ],
          optionsMy: [
            "ရပ်တန့်နေခြင်း",
            "အရှိန်တက်နေခြင်း",
            "အရှိန်လျော့နေခြင်း",
            "အလွန် မြန်စွာ ရွေ့လျားနေခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Density is calculated as mass divided by...",
          questionMy: "Density ကို Mass ကို ...ဖြင့် စား၍ တွက်ချက်သည်",
          optionsEn: ["Volume", "Weight", "Time", "Speed"],
          optionsMy: ["Volume", "Weight", "Time", "Speed"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A seesaw is balanced when total clockwise moments equal total...",
          questionMy:
              "Seesaw သည် စုစုပေါင်း Clockwise Moment များသည် စုစုပေါင်း ...နှင့် ညီမျှသည့်အခါ ဟန်ချက်ညီသည်",
          optionsEn: ["Anticlockwise moments", "Masses", "Speeds", "Pressures"],
          optionsMy: ["Anticlockwise Moment", "Mass", "Speed", "Pressure"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
const CourseTermDef igcsePhysicsTerm1 = CourseTermDef(
  id: "course-igcse-phys-term1",
  termNumber: 1,
  titleEn: "Motion, Forces and Energy",
  titleMy: "Motion, Forces and Energy",
  certificateTitleEn: "IGCSE Physics Term 1 Certificate",
  certificateTitleMy: "IGCSE ရူပဗေဒ ပထမတန်း အောင်လက်မှတ်",
  weeks: [_igcsePhysWeek1, _igcsePhysWeek2, _igcsePhysWeek3, _igcsePhysWeek4],
);
// =====================================================================
// Week 5: "Kinetic Particle Model of Matter"
// =====================================================================

const CourseWeekDef _igcsePhysWeek5 = CourseWeekDef(
  id: "course-igcse-phys-w5",
  weekNumber: 5,
  titleEn: "Kinetic Particle Model of Matter",
  titleMy: "ဒြပ်ဝတ္ထု၏ အမှုန်သီအိုရီ မော်ဒယ်",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w5-d1",
      dayNumber: 1,
      titleEn: "Brownian Motion and Gas Pressure",
      titleMy: "Brownian Motion နှင့် ဓာတ်ငွေ့ Pressure",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In the smoke cell experiment, smoke particles viewed under a microscope move in a constant, random, jittery path. What does this Brownian motion provide evidence for?",
          questionMy:
              "Smoke Cell စမ်းသပ်မှုတွင် မိုက်ခရိုစကုပ်အောက်၌ မြင်ရသော မီးခိုးအမှုန်များသည် ဆက်တိုက်၊ ကျပန်း၊ တုန်ခါနေသော လမ်းကြောင်းဖြင့် ရွေ့လျားသည်။ ဤ Brownian Motion သည် အဘယ်အရာအတွက် သက်သေအထောက်အထား ပေးသနည်း။",
          optionsEn: [
            "The existence of fast-moving, invisible air molecules constantly colliding with the smoke particles",
            "The smoke particles are alive and moving on their own",
            "The room's temperature is exactly zero degrees",
            "Light itself is made of moving particles",
          ],
          optionsMy: [
            "မီးခိုးအမှုန်များနှင့် ဆက်တိုက် ထိတွေ့နေသော လျင်မြန်စွာ ရွေ့လျားနေသော၊ မမြင်ရသော လေမော်လီကျူးများ ရှိနေကြောင်း",
            "မီးခိုးအမှုန်များသည် အသက်ရှင်နေပြီး ၎င်းတို့ ကိုယ်တိုင် ရွေ့လျားနေခြင်း",
            "အခန်း၏ အပူချိန်သည် အတိအကျ ဒီဂရီ သုည ဖြစ်ခြင်း",
            "အလင်းသည် ရွေ့လျားနေသော အမှုန်များဖြင့် ဖွဲ့စည်းထားခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "The larger, visible smoke particles are constantly knocked off course by countless invisible, much smaller, fast-moving air molecules colliding with them randomly from all directions.",
          ],
          hintsMy: [
            "ပို၍ ကြီးမား၍ မြင်နိုင်သော မီးခိုးအမှုန်များသည် ၎င်းတို့ကို ဦးတည်ချက် အားလုံးမှ ကျပန်းစွာ ထိတွေ့နေသော အရေအတွက် များစွာသော မမြင်ရသော၊ ပို၍ သေးငယ်၍ လျင်မြန်စွာ ရွေ့လျားနေသော လေမော်လီကျူးများက ဆက်တိုက် လမ်းကြောင်းအလွဲသို့ တွန်းပို့နေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "According to the kinetic particle model, what causes gas pressure on the walls of a container?",
          questionMy:
              "Kinetic Particle Model အရ ခွက်တစ်ခု၏ နံရံများပေါ်ရှိ ဓာတ်ငွေ့ Pressure ကို အဘယ်အရာက ဖြစ်စေသနည်း။",
          optionsEn: [
            "Countless gas particles constantly colliding with the walls, each collision exerting a tiny force",
            "The gas particles are stuck to the walls permanently",
            "The container itself pushes outward on the gas",
            "Gas pressure has nothing to do with particle motion",
          ],
          optionsMy: [
            "အရေအတွက် များစွာသော ဓာတ်ငွေ့ အမှုန်များသည် နံရံများနှင့် ဆက်တိုက် ထိတွေ့နေပြီး ထိတွေ့မှု တစ်ခုစီက အားငယ်ငယ်တစ်ခု ထုတ်ပေးနေခြင်း",
            "ဓာတ်ငွေ့ အမှုန်များသည် နံရံများတွင် ထာဝစဉ် ကပ်နေခြင်း",
            "ခွက်ကိုယ်တိုင်က ဓာတ်ငွေ့ကို အပြင်ဘက်သို့ တွန်းထုတ်နေခြင်း",
            "ဓာတ်ငွေ့ Pressure သည် အမှုန်ရွေ့လျားမှုနှင့် မည်သည့်ဆက်နွှယ်မှုမျှ မရှိခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Each individual collision is tiny, but the sheer number of collisions per second across a large surface area adds up to a measurable, continuous pressure.",
          ],
          hintsMy: [
            "ထိတွေ့မှု တစ်ခုစီသည် သေးငယ်သော်လည်း ကြီးမားသော မျက်နှာပြင် ဧရိယာတစ်ခုတစ်လျှောက် စက္ကန့်တစ်ခုလျှင် ထိတွေ့မှု အရေအတွက် ကြီးမားစွာ ရှိခြင်းက တိုင်းတာနိုင်သော၊ ဆက်တိုက် Pressure တစ်ခု ဖြစ်လာစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why does evaporation cause a cooling effect on the liquid left behind?",
          questionMy:
              "Evaporation သည် ကျန်ရစ်သော အရည်ပေါ်တွင် အအေးစွန်း သက်ရောက်မှု ဖြစ်စေရသည့် အကြောင်းရင်းကား အဘယ်နည်း။",
          optionsEn: [
            "The most energetic (fastest) particles escape first, leaving behind particles with lower average kinetic energy and thus a lower temperature",
            "Evaporation always adds heat energy to the liquid",
            "Only the slowest particles ever escape the liquid",
            "Evaporation has no effect on temperature at all",
          ],
          optionsMy: [
            "စွမ်းအင် အများဆုံး (အမြန်ဆုံး) အမှုန်များသည် ဦးစွာ ထွက်ပြေးကာ ပျမ်းမျှ Kinetic Energy ပို၍ နိမ့်သော အမှုန်များကို ကျန်ရစ်စေကာ ထို့ကြောင့် အပူချိန် နိမ့်လာသည်",
            "Evaporation သည် အရည်ထဲသို့ အပူစွမ်းအင် အမြဲ ထပ်ဆောင်း ပေးသည်",
            "အနှေးဆုံး အမှုန်များသာ အရည်မှ ဘယ်တော့မှ ထွက်ပြေးသည်",
            "Evaporation သည် အပူချိန်အပေါ် မည်သည့်သက်ရောက်မှုမျှ လုံးဝ မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Temperature is related to the average kinetic energy of particles. Removing the highest-energy particles lowers that average.",
          ],
          hintsMy: [
            "Temperature သည် အမှုန်များ၏ ပျမ်းမျှ Kinetic Energy နှင့် ဆက်နွှယ်နေသည်။ အမြင့်ဆုံး Energy ရှိသော အမှုန်များကို ဖယ်ရှားလိုက်ခြင်းသည် ထို ပျမ်းမျှကို လျော့ကျစေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w5-d2",
      dayNumber: 2,
      titleEn: "Match: Particle Model Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Particle Model ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w5-dm-1",
          termEn: "Brownian motion",
          termMy: "Brownian Motion",
          matchEn:
              "The random, jittery movement of visible particles caused by collisions with invisible, fast-moving molecules",
          matchMy:
              "မမြင်ရသော၊ လျင်မြန်စွာ ရွေ့လျားနေသော မော်လီကျူးများနှင့် ထိတွေ့မှုကြောင့် ဖြစ်ပေါ်သော မြင်နိုင်သော အမှုန်များ၏ ကျပန်း၊ တုန်ခါသော ရွေ့လျားမှု",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w5-dm-2",
          termEn: "Kinetic particle model",
          termMy: "Kinetic Particle Model",
          matchEn:
              "The theory that matter is made of particles in constant motion, whose behaviour depends on the state of matter",
          matchMy:
              "ဒြပ်ဝတ္ထုသည် ဆက်တိုက် ရွေ့လျားနေသော အမှုန်များဖြင့် ဖွဲ့စည်းထားပြီး ၎င်းတို့၏ အမူအကျင့်သည် ဒြပ်ဝတ္ထု၏ အခြေအနေအပေါ် မူတည်သည်ဟူသော သီအိုရီ",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w5-dm-3",
          termEn: "Evaporation",
          termMy: "Evaporation",
          matchEn:
              "Particles escaping from a liquid's surface at temperatures below the boiling point",
          matchMy:
              "အရည်ဆူချိန်အောက် အပူချိန်များတွင် အရည်၏ မျက်နှာပြင်မှ အမှုန်များ ထွက်ပြေးခြင်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w5-dm-4",
          termEn: "Gas pressure",
          termMy: "Gas Pressure",
          matchEn:
              "The result of countless gas particles colliding with the walls of their container",
          matchMy:
              "ဓာတ်ငွေ့ အမှုန် အရေအတွက် များစွာတို့ ၎င်းတို့၏ ခွက်နံရံများနှင့် ထိတွေ့ခြင်း၏ ရလဒ်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w5-dm-5",
          termEn: "Random motion",
          termMy: "Random Motion",
          matchEn:
              "Movement with no fixed pattern or predictable direction, typical of particles in liquids and gases",
          matchMy:
              "အရည်များနှင့် ဓာတ်ငွေ့များရှိ အမှုန်များ၏ ထုံးစံဖြစ်သော ပုံသေ ပုံစံ သို့မဟုတ် ခန့်မှန်းနိုင်သော ဦးတည်ချက် မရှိသော ရွေ့လျားမှု",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w5-d3",
      dayNumber: 3,
      titleEn: "Sort: Solid, Liquid, or Gas Particle Behaviour?",
      titleMy:
          "စီစစ်ကြမည် - အစိုင်အခဲ၊ အရည် သို့မဟုတ် ဓာတ်ငွေ့ အမှုန် အမူအကျင့်",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Solid", "Liquid", "Gas"],
        bucketsMy: ["Solid", "Liquid", "Gas"],
        items: [
          SortingItem(
            id: "igcsephys-w5-sort-1",
            labelEn:
                "Particles vibrate about fixed positions in a regular pattern",
            labelMy:
                "အမှုန်များသည် ပုံမှန် ပုံစံဖြင့် ပုံသေ တည်နေရာများတွင် တုန်ခါနေသည်",
            correctBucketEn: "Solid",
            correctBucketMy: "Solid",
          ),
          SortingItem(
            id: "igcsephys-w5-sort-2",
            labelEn: "Particles move randomly at high speed and are far apart",
            labelMy:
                "အမှုန်များသည် ဝေးကွာစွာ ရှိပြီး မြန်နှုန်းမြင့်စွာ ကျပန်း ရွေ့လျားသည်",
            correctBucketEn: "Gas",
            correctBucketMy: "Gas",
          ),
          SortingItem(
            id: "igcsephys-w5-sort-3",
            labelEn:
                "Particles are close together but can slide past one another",
            labelMy:
                "အမှုန်များသည် နီးကပ်စွာ ရှိသော်လည်း တစ်ခုနှင့်တစ်ခု ချောစွာ ဖြတ်သန်း ရွေ့လျားနိုင်သည်",
            correctBucketEn: "Liquid",
            correctBucketMy: "Liquid",
          ),
          SortingItem(
            id: "igcsephys-w5-sort-4",
            labelEn: "Has the strongest forces of attraction between particles",
            labelMy: "အမှုန်များကြား ဆွဲငင်အား အခိုင်မာဆုံး ရှိသည်",
            correctBucketEn: "Solid",
            correctBucketMy: "Solid",
          ),
          SortingItem(
            id: "igcsephys-w5-sort-5",
            labelEn:
                "Can be compressed easily due to the large spaces between particles",
            labelMy:
                "အမှုန်များကြား နေရာလွတ် ကြီးမားစွာ ရှိသောကြောင့် အလွယ်တကူ ချုံ့နိုင်သည်",
            correctBucketEn: "Gas",
            correctBucketMy: "Gas",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w5-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Smoke Cell Observation",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ Smoke Cell လေ့လာစောင့်ကြည့်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Smoke Cell Observation",
        titleMy: "နေချည်၏ Smoke Cell လေ့လာစောင့်ကြည့်မှု",
        passageEn:
            "Ko Thura set up a smoke cell experiment for Nay Chi: a small glass chamber filled with smoke, illuminated from the side and viewed from above through a microscope. At first, she expected to see the smoke particles drifting smoothly, or perhaps not moving at all, but instead she saw tiny specks of light dancing in a constant, jerky, random zigzag path, never settling and never following a predictable route.\n\nKo Thura asked her to explain what she was actually observing, since the smoke particles themselves were far too large to be individual air molecules. Nay Chi reasoned that the smoke particles she could see were being struck, from random directions, by the countless individual air molecules surrounding them -- molecules far too small to see directly, but moving fast enough and often enough that their collective impact was visible as this jittery motion of the larger smoke particles. Each individual collision nudged a smoke particle only slightly, but since collisions arrived unevenly from all directions at once, the net effect was an unpredictable, ever-changing path rather than a smooth line.\n\nHe then asked her to predict what would happen to the smoke particles' motion if the air in the cell were heated. Nay Chi correctly predicted the jittering would become more vigorous and rapid, since heating increases the average kinetic energy of the air molecules, making them move faster and collide with the smoke particles more forcefully and more frequently. This, she realised, was the same underlying idea connecting Brownian motion to the definition of temperature itself: temperature is fundamentally a measure of the average kinetic energy of the particles doing the colliding, not a separate, independent quantity.",
        passageMy:
            "ကိုသူရသည် နေချည်အတွက် Smoke Cell စမ်းသပ်မှုတစ်ခု စီစဉ်ပေးခဲ့သည် - ဘေးဘက်မှ အလင်းထိုးကာ အပေါ်ဘက်မှ မိုက်ခရိုစကုပ်ဖြင့် ကြည့်ရှုနိုင်သော မီးခိုးဖြင့် ဖြည့်ထားသော ဖန်ခန်းငယ်တစ်ခု။ ပထမတွင် မီးခိုးအမှုန်များသည် ချောမွေ့စွာ ရွေ့လျားနေမည်ဟု သို့မဟုတ် လုံးဝ ရွေ့လျားခြင်း မရှိဟု သူမ မျှော်လင့်ခဲ့သော်လည်း ယင်းအစား အလင်းအစက်ငယ်များသည် ဆက်တိုက်၊ ရုတ်တရက်၊ ကျပန်း ဇစ်ဇက်လမ်းကြောင်းတစ်လျှောက် ကခုန်နေသည်ကို တွေ့ရှိခဲ့ပြီး တစ်ခါမျှ မငြိမ်ဘဲ ခန့်မှန်းနိုင်သော လမ်းကြောင်းကို တစ်ခါမျှ မလိုက်ခဲ့ပါ။\n\nမီးခိုးအမှုန်များကိုယ်တိုင်သည် လေမော်လီကျူးတစ်ခုချင်းဖြစ်ရန် အလွန် ကြီးမားလွန်းသောကြောင့် သူမ အမှန်တကယ် စောင့်ကြည့်နေသည်ကို ရှင်းပြရန် ကိုသူရ သူမကို တောင်းဆိုခဲ့သည်။ သူမ တွေ့မြင်နိုင်သော မီးခိုးအမှုန်များသည် ၎င်းတို့ ဝန်းရံနေသော အရေအတွက် များစွာသော လေမော်လီကျူးတစ်ခုချင်းစီက ကျပန်း ဦးတည်ချက်များမှ ရိုက်ခတ်နေကြောင်း နေချည် ကျိုးကြောင်းဆင်ခြင်ခဲ့သည် -- တိုက်ရိုက် တွေ့မြင်ရန် အလွန် သေးငယ်လွန်းသော်လည်း လုံလောက်လျင်မြန်၍ လုံလောက် ခဏခဏ ရွေ့လျားနေသဖြင့် ၎င်းတို့၏ ပေါင်းစည်း သက်ရောက်မှုသည် ကြီးမားသော မီးခိုးအမှုန်များ၏ ဤ တုန်ခါသော ရွေ့လျားမှုအဖြစ် တွေ့မြင်နိုင်ခဲ့ခြင်း ဖြစ်သည်။ ထိတွေ့မှု တစ်ခုစီသည် မီးခိုးအမှုန်တစ်ခုကို အနည်းငယ်သာ တွန်းခဲ့သော်လည်း ထိတွေ့မှုများသည် ဦးတည်ချက် အားလုံးမှ တစ်ချိန်တည်း မညီမညာစွာ ရောက်ရှိနေသောကြောင့် စုစုပေါင်း သက်ရောက်မှုသည် ချောမွေ့သော မျဉ်းတစ်ခုအစား ခန့်မှန်း၍မရ၊ အမြဲ ပြောင်းလဲနေသော လမ်းကြောင်းတစ်ခု ဖြစ်ခဲ့သည်။\n\nCell အတွင်းရှိ လေကို အပူပေးလိုက်ပါက မီးခိုးအမှုန်များ၏ ရွေ့လျားမှုတွင် အဘယ်ဖြစ်လာမည်ကို ခန့်မှန်းရန် ထို့နောက် သူ သူမကို တောင်းဆိုခဲ့သည်။ အပူပေးခြင်းသည် လေမော်လီကျူးများ၏ ပျမ်းမျှ Kinetic Energy ကို တိုးမြှင့်ပေးကာ ၎င်းတို့ ပို၍ မြန်စွာ ရွေ့လျားစေကာ မီးခိုးအမှုန်များနှင့် ပို၍ အားပြင်းစွာ၊ ပို၍ ခဏခဏ ထိတွေ့စေသောကြောင့် တုန်ခါမှုသည် ပို၍ ပြင်းထန်၍ လျင်မြန်လာမည်ဟု နေချည် မှန်ကန်စွာ ခန့်မှန်းခဲ့သည်။ ဤသည်ကား Brownian Motion ကို Temperature ၏ အဓိပ္ပာယ်ဖွင့်ဆိုချက်ကိုယ်တိုင်နှင့် ချိတ်ဆက်ပေးသော တူညီသော အခြေခံ အယူအဆ ဖြစ်ကြောင်း သူမ သိရှိခဲ့သည် - Temperature သည် သီးခြား၊ လွတ်လပ်သော ပမာဏတစ်ခု မဟုတ်ဘဲ ထိတွေ့နေသော အမှုန်များ၏ ပျမ်းမျှ Kinetic Energy ကို အခြေခံ တိုင်းတာချက်တစ်ခု ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did the smoke particles move in a jittery, unpredictable path?",
            questionMy:
                "မီးခိုးအမှုန်များ တုန်ခါသော၊ ခန့်မှန်း၍မရသော လမ်းကြောင်းဖြင့် ရွေ့လျားခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They were struck unevenly from all directions by countless fast-moving air molecules",
              "They were being pulled by a magnet",
              "The microscope itself was shaking",
              "The smoke particles were alive",
            ],
            optionsMy: [
              "၎င်းတို့သည် လျင်မြန်စွာ ရွေ့လျားနေသော လေမော်လီကျူး အရေအတွက် များစွာက ဦးတည်ချက် အားလုံးမှ မညီမညာစွာ ရိုက်ခတ်ခံခဲ့ရသောကြောင့်",
              "၎င်းတို့သည် သံလိုက်တစ်ခုက ဆွဲငင်ခံခဲ့ရသောကြောင့်",
              "မိုက်ခရိုစကုပ်ကိုယ်တိုင် တုန်ခါနေသောကြောင့်",
              "မီးခိုးအမှုန်များသည် အသက်ရှင်နေသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread Nay Chi's explanation in paragraph 2."],
            hintsMy: ["စာပိုဒ် ၂ ရှိ နေချည်၏ ရှင်းပြချက်ကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Nay Chi predict would happen if the air in the cell were heated?",
            questionMy:
                "Cell အတွင်းရှိ လေကို အပူပေးလိုက်ပါက အဘယ်ဖြစ်လာမည်ဟု နေချည် ခန့်မှန်းခဲ့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The jittering would become more vigorous and rapid",
              "The smoke particles would stop moving completely",
              "The microscope would break",
              "Nothing would change at all",
            ],
            optionsMy: [
              "တုန်ခါမှုသည် ပို၍ ပြင်းထန်၍ လျင်မြန်လာမည်",
              "မီးခိုးအမှုန်များသည် လုံးလုံးလျားလျား ရွေ့လျားခြင်း ရပ်တန့်သွားမည်",
              "မိုက်ခရိုစကုပ် ကျိုးပေါက်သွားမည်",
              "မည်သည့်အရာမျှ လုံးဝ ပြောင်းလဲမည် မဟုတ်ပါ",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the sentence with Nay Chi's prediction."],
            hintsMy: [
              "နေချည်၏ ခန့်မှန်းချက် ပါဝင်သော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, how is temperature fundamentally defined in terms of particles?",
            questionMy:
                "Temperature ကို အမှုန်များနှင့် ပတ်သက်၍ အခြေခံအားဖြင့် မည်သို့ အဓိပ္ပာယ်ဖွင့်ဆိုသည်ကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "A measure of the average kinetic energy of the particles",
              "A completely separate quantity unrelated to particle motion",
              "The exact number of particles present",
              "The colour of the particles",
            ],
            optionsMy: [
              "အမှုန်များ၏ ပျမ်းမျှ Kinetic Energy တိုင်းတာချက်တစ်ခု",
              "အမှုန်ရွေ့လျားမှုနှင့် လုံးဝ မသက်ဆိုင်သော သီးခြား ပမာဏတစ်ခု",
              "ရှိနေသော အမှုန် အတိအကျ အရေအတွက်",
              "အမှုန်များ၏ အရောင်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w5-d5",
      dayNumber: 5,
      titleEn: "Week 5 Recap: Kinetic Particle Model",
      titleMy: "ပဉ္စမပတ် ပြန်လည်သုံးသပ်ခြင်း - Kinetic Particle Model",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Brownian motion provides evidence for...",
          questionMy: "Brownian Motion သည် ...အတွက် သက်သေအထောက်အထား ပေးသည်",
          optionsEn: [
            "Fast-moving, invisible molecules constantly colliding with visible particles",
            "The particles being magnetic",
            "Sound waves in air",
            "The colour of light",
          ],
          optionsMy: [
            "မြင်နိုင်သော အမှုန်များနှင့် ဆက်တိုက် ထိတွေ့နေသော လျင်မြန်စွာ ရွေ့လျားနေသော၊ မမြင်ရသော မော်လီကျူးများ",
            "အမှုန်များ သံလိုက်ဓာတ်ရှိခြင်း",
            "လေထုအတွင်းရှိ အသံလှိုင်းများ",
            "အလင်း၏ အရောင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Gas pressure results from...",
          questionMy: "ဓာတ်ငွေ့ Pressure သည် ...မှ ဖြစ်ပေါ်လာသည်",
          optionsEn: [
            "Particles colliding with the container walls",
            "The container's colour",
            "The gas being frozen solid",
            "Sound waves alone",
          ],
          optionsMy: [
            "ခွက်နံရံများနှင့် ထိတွေ့နေသော အမှုန်များ",
            "ခွက်၏ အရောင်",
            "ဓာတ်ငွေ့ အစိုင်အခဲအဖြစ် အေးခဲသွားခြင်း",
            "အသံလှိုင်းများ တစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Evaporation cools a liquid because the escaping particles have...",
          questionMy:
              "ထွက်ပြေးသော အမှုန်များတွင် ...ရှိသောကြောင့် Evaporation က အရည်ကို အအေးစွန်း သက်ရောက်စေသည်",
          optionsEn: [
            "Above-average kinetic energy",
            "Below-average kinetic energy",
            "No energy at all",
            "A magnetic charge",
          ],
          optionsMy: [
            "ပျမ်းမျှထက် ပိုမြင့်သော Kinetic Energy",
            "ပျမ်းမျှထက် ပိုနိမ့်သော Kinetic Energy",
            "Energy လုံးဝ မရှိခြင်း",
            "သံလိုက် အားသွင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 6: "Thermal Expansion and Temperature"
// =====================================================================

const CourseWeekDef _igcsePhysWeek6 = CourseWeekDef(
  id: "course-igcse-phys-w6",
  weekNumber: 6,
  titleEn: "Thermal Expansion and Temperature",
  titleMy: "အပူကြောင့် ပျံ့ကားခြင်းနှင့် အပူချိန်",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w6-d1",
      dayNumber: 1,
      titleEn: "Thermal Expansion and Specific Heat Capacity",
      titleMy: "အပူကြောင့် ပျံ့ကားခြင်းနှင့် Specific Heat Capacity",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Ranking solids, liquids, and gases by how much they expand for the same temperature rise, which order is correct?",
          questionMy:
              "အစိုင်အခဲ၊ အရည်နှင့် ဓာတ်ငွေ့များကို တူညီသော အပူချိန် မြင့်တက်မှုအတွက် မည်မျှ ပျံ့ကားသည်ကို အစီအစဉ်ဆွဲလျှင် မှန်ကန်သော အစီအစဉ်ကား အဘယ်နည်း။",
          optionsEn: [
            "Gases expand the most, then liquids, then solids expand the least",
            "Solids expand the most, then liquids, then gases expand the least",
            "All three expand by exactly the same amount",
            "Liquids expand the most, followed by gases, then solids",
          ],
          optionsMy: [
            "ဓာတ်ငွေ့ အများဆုံး ပျံ့ကားပြီး အရည်၊ နောက်ဆုံး အစိုင်အခဲ အနည်းဆုံး ပျံ့ကားသည်",
            "အစိုင်အခဲ အများဆုံး ပျံ့ကားပြီး အရည်၊ နောက်ဆုံး ဓာတ်ငွေ့ အနည်းဆုံး ပျံ့ကားသည်",
            "သုံးမျိုးလုံး အတိအကျ တူညီသော ပမာဏ ပျံ့ကားသည်",
            "အရည် အများဆုံး ပျံ့ကားပြီး ဓာတ်ငွေ့ ဒုတိယ၊ နောက်ဆုံး အစိုင်အခဲ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This follows directly from the kinetic particle model: gas particles are already far apart with weak forces, so extra kinetic energy from heating spreads them out much more than in a tightly bound solid.",
          ],
          hintsMy: [
            "ဤသည် Kinetic Particle Model မှ တိုက်ရိုက် လိုက်ပါလာသည်- ဓာတ်ငွေ့ အမှုန်များသည် ရှိပြီးသား ဝေးကွာစွာ ရှိကာ အားနည်းသည့် အားများ ရှိသောကြောင့် အပူပေးခြင်းမှ ရရှိသော ထပ်ဆောင်း Kinetic Energy သည် တင်းကျပ်စွာ ချည်နှောင်ထားသော အစိုင်အခဲထက် ပို၍ များစွာ ဖြန့်ကျဲပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "How much energy is needed to raise the temperature of 2 kg of water (specific heat capacity = 4200 J/(kg C)) by 5 C? (Q = mc(delta)T)",
          questionMy:
              "ရေ 2 kg (Specific Heat Capacity = 4200 J/(kg C)) ၏ အပူချိန်ကို 5 C တိုးမြှင့်ရန် မည်မျှ Energy လိုအပ်သနည်း။ (Q = mc(delta)T)",
          optionsEn: [
            "42,000 J (2 x 4200 x 5)",
            "4200 J",
            "8400 J",
            "21,000 J",
          ],
          optionsMy: [
            "42,000 J (2 x 4200 x 5)",
            "4200 J",
            "8400 J",
            "21,000 J",
          ],
          correctIndex: 0,
          hintsEn: ["Q = mc(delta)T = 2 kg x 4200 J/(kg C) x 5 C = 42,000 J."],
          hintsMy: ["Q = mc(delta)T = 2 kg x 4200 J/(kg C) x 5 C = 42,000 J ။"],
        ),
        QuizQuestion(
          questionEn:
              "Why must a mercury or alcohol thermometer have a narrow, uniform-bore capillary tube?",
          questionMy:
              "Mercury သို့မဟုတ် Alcohol သာမိုမီတာသည် ကျဉ်းမြောင်း၍ တူညီသော အချင်းရှိသော Capillary ပြွန် ရှိရရသည့် အကြောင်းရင်းကား အဘယ်နည်း။",
          optionsEn: [
            "A small change in liquid volume produces a large, easily readable change in the length of the liquid column",
            "It makes the thermometer weigh less",
            "It prevents the liquid from expanding at all",
            "It has no effect on the thermometer's sensitivity",
          ],
          optionsMy: [
            "အရည် Volume ၏ ငယ်ငယ်စား ပြောင်းလဲမှုသည် အရည် တိုင်၏ အလျားတွင် လွယ်ကူစွာ ဖတ်နိုင်သော ကြီးမားသော ပြောင်းလဲမှုကို ဖြစ်ပေါ်စေသည်",
            "သာမိုမီတာကို ပိုပေါ့စေသည်",
            "အရည်ကို လုံးဝ ပျံ့ကားခြင်း မရှိစေပါ",
            "သာမိုမီတာ၏ Sensitivity အပေါ် မည်သည့်သက်ရောက်မှုမျှ မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "A narrow tube means the same small volume change stretches over a longer length, magnifying the visible movement and improving precision.",
          ],
          hintsMy: [
            "ကျဉ်းမြောင်းသော ပြွန်ဆိုသည်မှာ ငယ်ငယ်စား Volume ပြောင်းလဲမှု တူညီသည်သည် ပို၍ ရှည်လျားသော အလျားတစ်လျှောက် ကျယ်ပြန့်ကာ တွေ့မြင်ရသော ရွေ့လျားမှုကို ချဲ့ထွင်ပေးကာ တိကျမှုကို တိုးတက်စေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w6-d2",
      dayNumber: 2,
      titleEn: "Match: Thermal Expansion Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Thermal Expansion ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w6-dm-1",
          termEn: "Thermal expansion",
          termMy: "Thermal Expansion",
          matchEn:
              "The increase in size of a substance as its temperature rises, due to particles moving further apart",
          matchMy:
              "အမှုန်များ ပို၍ ဝေးကွာစွာ ရွေ့လျားခြင်းကြောင့် အပူချိန် မြင့်တက်လာသည်နှင့်အမျှ ပစ္စည်းတစ်ခု၏ အရွယ်အစား တိုးလာခြင်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w6-dm-2",
          termEn: "Specific heat capacity",
          termMy: "Specific Heat Capacity",
          matchEn:
              "The energy needed to raise the temperature of 1 kg of a substance by 1 degree Celsius",
          matchMy:
              "ပစ္စည်းတစ်ခု၏ 1 kg ၏ အပူချိန်ကို 1 ဒီဂရီ Celsius တိုးမြှင့်ရန် လိုအပ်သော Energy",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w6-dm-3",
          termEn: "Thermocouple",
          termMy: "Thermocouple",
          matchEn:
              "A fast-responding electrical thermometer using the voltage generated between two different metals",
          matchMy:
              "မတူညီသော သတ္တု နှစ်မျိုးကြား ဖြစ်ပေါ်လာသော ဗို့အားကို အသုံးပြုသော လျင်မြန်စွာ တုံ့ပြန်သော လျှပ်စစ် သာမိုမီတာ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w6-dm-4",
          termEn: "Calibration",
          termMy: "Calibration",
          matchEn:
              "Marking a thermometer scale accurately against known fixed points, such as the freezing and boiling points of water",
          matchMy:
              "ရေ၏ အေးခဲချိန်နှင့် ဆူပွက်ချိန်ကဲ့သို့ သိရှိထားသော တည်ငြိမ်သော အချက်များနှင့် တိကျစွာ ကိုက်ညီအောင် သာမိုမီတာ စကေးကို အမှတ်အသားပြုခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w6-dm-5",
          termEn: "Bimetallic strip",
          termMy: "Bimetallic Strip",
          matchEn:
              "Two different metals bonded together that bend when heated because they expand at different rates",
          matchMy:
              "မတူညီသော နှုန်းများဖြင့် ပျံ့ကားသောကြောင့် အပူပေးလိုက်ပါက ကွေ့သွားသော ပေါင်းစပ်ထားသော သတ္တု နှစ်မျိုး",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w6-d3",
      dayNumber: 3,
      titleEn: "Sort: Solid, Liquid, or Gas Expansion?",
      titleMy: "စီစစ်ကြမည် - Solid, Liquid သို့မဟုတ် Gas Expansion",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Least Expansion", "Moderate Expansion", "Most Expansion"],
        bucketsMy: ["Least Expansion", "Moderate Expansion", "Most Expansion"],
        items: [
          SortingItem(
            id: "igcsephys-w6-sort-1",
            labelEn: "A steel railway track expanding slightly on a hot day",
            labelMy:
                "ပူပြင်းသော နေ့တစ်နေ့တွင် သံမဏိ ရထားလမ်း အနည်းငယ် ပျံ့ကားခြင်း",
            correctBucketEn: "Least Expansion",
            correctBucketMy: "Least Expansion",
          ),
          SortingItem(
            id: "igcsephys-w6-sort-2",
            labelEn:
                "Mercury rising up a thermometer's capillary tube when warmed",
            labelMy:
                "နွေးထွေးလိုက်သောအခါ Mercury သည် သာမိုမီတာ Capillary ပြွန်ပေါ်သို့ တက်လာခြင်း",
            correctBucketEn: "Moderate Expansion",
            correctBucketMy: "Moderate Expansion",
          ),
          SortingItem(
            id: "igcsephys-w6-sort-3",
            labelEn:
                "Air in a balloon expanding rapidly and noticeably when heated",
            labelMy:
                "လေပူးထဲရှိ လေသည် အပူပေးလိုက်သောအခါ လျင်မြန်၍ ထင်ရှားစွာ ပျံ့ကားခြင်း",
            correctBucketEn: "Most Expansion",
            correctBucketMy: "Most Expansion",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w6-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Kettle Heat Calculation",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ ဒန်ရေနွေးအိုး အပူ တွက်ချက်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Kettle Heat Calculation",
        titleMy: "နေချည်၏ ဒန်ရေနွေးအိုး အပူ တွက်ချက်မှု",
        passageEn:
            "Ko Thura asked Nay Chi to work out how much energy her family's electric kettle needed to heat 1.5 kg of water from a cold 20 C to a boiling 100 C, using the specific heat capacity of water, 4200 J/(kg C).\n\nShe identified the temperature change first: 100 C minus 20 C equals a rise of 80 C, not simply the final temperature alone -- a mistake Ko Thura warned was extremely common, since students often plugged in 100 C directly instead of calculating the actual change. Using Q = mc(delta)T, she substituted the values: 1.5 kg x 4200 J/(kg C) x 80 C, giving a total energy requirement of 504,000 J, or 504 kJ.\n\nKo Thura then connected this calculation to a real household kettle rated at 2000 W (2000 joules of energy delivered every second). He asked her to estimate the minimum time needed to heat the water, assuming no energy was wasted. Nay Chi divided the total energy by the power: 504,000 J / 2000 W = 252 seconds, or 4.2 minutes. She then reasoned that a real kettle would actually take longer than this theoretical minimum, since some of the electrical energy is inevitably wasted heating the kettle's own metal casing and the surrounding air, rather than going entirely into heating the water itself -- a real-world inefficiency the idealised formula does not account for.",
        passageMy:
            "ရေ၏ Specific Heat Capacity, 4200 J/(kg C) ကို အသုံးပြု၍ သူမ၏ မိသားစု ဒန်ရေနွေးအိုးသည် အအေး 20 C မှ ဆူပွက်နေသော 100 C အထိ ရေ 1.5 kg ကို အပူပေးရန် Energy မည်မျှ လိုအပ်ကြောင်း တွက်ချက်ရန် ကိုသူရ နေချည်ကို တောင်းဆိုခဲ့သည်။\n\nသူမသည် ပထမဆုံး အပူချိန် ပြောင်းလဲမှုကို ဖော်ထုတ်ခဲ့သည် - 100 C ကို 20 C ဖြင့် နှုတ်ပါက နောက်ဆုံး အပူချိန်တစ်ခုတည်း မဟုတ်ဘဲ 80 C မြင့်တက်မှုနှင့် ညီမျှသည် -- ကျောင်းသားများသည် အမှန်တကယ် ပြောင်းလဲမှုကို တွက်ချက်မည့်အစား 100 C ကို တိုက်ရိုက် ထည့်လေ့ရှိသောကြောင့် ဤအမှားကို ကိုသူရ အလွန် ဘုံဖြစ်ကြောင်း သတိပေးခဲ့သည်။ Q = mc(delta)T ကို အသုံးပြု၍ သူမသည် တန်ဖိုးများကို အစားထိုးခဲ့သည် - 1.5 kg x 4200 J/(kg C) x 80 C၊ ၎င်းက Energy လိုအပ်ချက် စုစုပေါင်း 504,000 J သို့မဟုတ် 504 kJ ကို ရရှိစေခဲ့သည်။\n\nထို့နောက် ကိုသူရသည် ဤ တွက်ချက်မှုကို 2000 W (စက္ကန့်တိုင်း Energy Joule ၂၀၀၀ ပေးအပ်) ရေတိုင်းအတွက် ရေးထားသော အမှန်တကယ် အိမ်သုံး ဒန်ရေနွေးအိုးတစ်ခုနှင့် ချိတ်ဆက်ခဲ့သည်။ Energy တစ်ခုမျှ မဆုံးရှုံးဟု ယူဆလျှင် ရေကို အပူပေးရန် လိုအပ်သော အနည်းဆုံး အချိန်ကို ခန့်မှန်းရန် သူ သူမကို တောင်းဆိုခဲ့သည်။ နေချည်သည် Energy စုစုပေါင်းကို Power ဖြင့် စားခဲ့သည် - 504,000 J / 2000 W = 252 ဆက္ကန့်၊ သို့မဟုတ် ၄.၂ မိနစ် ။ ထို့နောက် အမှန်တကယ် ဒန်ရေနွေးအိုးတစ်ခုသည် ဤ သီအိုရီ အနည်းဆုံးထက် ကာလ ပို၍ ကြာမည်ဟု သူမ ကျိုးကြောင်းဆင်ခြင်ခဲ့သည်၊ အကြောင်းမှာ လျှပ်စစ်စွမ်းအင်တစ်စိတ်တစ်ပိုင်းသည် ရေကိုယ်တိုင် အပူပေးရန်သို့ အပြည့်အဝ ဝင်ရောက်မည့်အစား ဒန်ရေနွေးအိုး၏ ကိုယ်ပိုင် သတ္တု ခွံနှင့် ဝန်းကျင် လေကို အပူပေးရာတွင် တွေ့ကတိကွင်း အလဟဿ ကုန်ကျသောကြောင့် ဖြစ်သည် -- ဤသည်ကား စံပြ ဖော်မြူလာက ထည့်သွင်းမစဉ်းစားသော အမှန်တကယ် ကမ္ဘာ၏ ထိရောက်မှု ညံ့ဖျင်းချက် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what common mistake did Ko Thura warn Nay Chi about?",
            questionMy:
                "ကိုသူရ နေချည်ကို သတိပေးခဲ့သော ဘုံအမှားကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Using the final temperature (100 C) directly instead of calculating the actual temperature change",
              "Using the wrong specific heat capacity value entirely",
              "Forgetting to include the mass in the calculation",
              "Using the wrong units for energy",
            ],
            optionsMy: [
              "အမှန်တကယ် အပူချိန် ပြောင်းလဲမှုကို တွက်ချက်မည့်အစား နောက်ဆုံး အပူချိန် (100 C) ကို တိုက်ရိုက် အသုံးပြုခြင်း",
              "Specific Heat Capacity တန်ဖိုးကို လုံးလုံးလျားလျား မှားယွင်းစွာ အသုံးပြုခြင်း",
              "တွက်ချက်မှုတွင် Mass ထည့်သွင်းရန် မေ့ကျန်ခြင်း",
              "Energy အတွက် မှားယွင်းသော ယူနစ်များ အသုံးပြုခြင်း",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the sentence about the common mistake."],
            hintsMy: ["ဘုံအမှားအကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what time did Nay Chi calculate as the minimum needed to boil the water?",
            questionMy:
                "ရေကို ဆူပွက်စေရန် လိုအပ်သော အနည်းဆုံး အချိန်အဖြစ် နေချည် တွက်ချက်ခဲ့သည့် အချိန်ကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "252 seconds (4.2 minutes)",
              "504 seconds",
              "80 seconds",
              "2000 seconds",
            ],
            optionsMy: [
              "ဆက္ကန့် ၂၅၂ (၄.၂ မိနစ်)",
              "ဆက္ကန့် ၅၀၄",
              "ဆက္ကန့် ၈၀",
              "ဆက္ကန့် ၂၀၀၀",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the division calculation in paragraph 3."],
            hintsMy: ["စာပိုဒ် ၃ ရှိ စား၍ တွက်ချက်မှုကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, why would a real kettle take longer than the calculated theoretical minimum?",
            questionMy:
                "အမှန်တကယ် ဒန်ရေနွေးအိုးတစ်ခုသည် တွက်ချက်ထားသော သီအိုရီ အနည်းဆုံးထက် ကြာမြင့်ရသည့် အကြောင်းရင်းကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "Some electrical energy is wasted heating the kettle's casing and surrounding air, not just the water",
              "The formula used was completely wrong",
              "Real kettles never actually reach boiling point",
              "Water in real kettles is a different substance",
            ],
            optionsMy: [
              "လျှပ်စစ်စွမ်းအင် တစ်စိတ်တစ်ပိုင်းသည် ရေကိုသာ မဟုတ်ဘဲ ဒန်ရေနွေးအိုး၏ ခွံနှင့် ဝန်းကျင် လေကို အပူပေးရာတွင် အလဟဿ ကုန်ကျသောကြောင့်",
              "အသုံးပြုခဲ့သော ဖော်မြူလာသည် လုံးလုံးလျားလျား မှားယွင်းနေသောကြောင့်",
              "အမှန်တကယ် ဒန်ရေနွေးအိုးများသည် ဆူပွက်ချိန်သို့ အမှန်တကယ် ဘယ်တော့မှ မရောက်သောကြောင့်",
              "အမှန်တကယ် ဒန်ရေနွေးအိုးများရှိ ရေသည် ကွဲပြားသော ဒြပ်ဝတ္ထုတစ်မျိုး ဖြစ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w6-d5",
      dayNumber: 5,
      titleEn: "Week 6 Recap: Thermal Expansion and Heat Capacity",
      titleMy:
          "ဆဌမပတ် ပြန်လည်သုံးသပ်ခြင်း - Thermal Expansion နှင့် Heat Capacity",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Gases expand more than solids for the same temperature rise because...",
          questionMy:
              "ဓာတ်ငွေ့များသည် တူညီသော အပူချိန် မြင့်တက်မှုအတွက် အစိုင်အခဲများထက် ပို၍ ပျံ့ကားသည့် အကြောင်းရင်းမှာ...",
          optionsEn: [
            "Gas particles are already far apart with weak forces between them",
            "Gases have no particles at all",
            "Solids always expand faster than gases",
            "Gas particles never move",
          ],
          optionsMy: [
            "ဓာတ်ငွေ့ အမှုန်များသည် ရှိပြီးသား ဝေးကွာစွာ ရှိကာ ၎င်းတို့ကြား အားများ အားနည်းသောကြောင့်",
            "ဓာတ်ငွေ့များတွင် အမှုန် လုံးဝ မရှိသောကြောင့်",
            "အစိုင်အခဲများသည် ဓာတ်ငွေ့များထက် အမြဲ ပို၍ မြန်စွာ ပျံ့ကားသောကြောင့်",
            "ဓာတ်ငွေ့ အမှုန်များသည် ဘယ်တော့မှ မရွေ့လျားသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Specific heat capacity is the energy needed to raise 1 kg of a substance by...",
          questionMy:
              "Specific Heat Capacity သည် ပစ္စည်းတစ်ခု၏ 1 kg ကို ...တိုးမြှင့်ရန် လိုအပ်သော Energy ဖြစ်သည်",
          optionsEn: [
            "1 degree Celsius",
            "100 degrees Celsius",
            "0 degrees",
            "10 degrees Celsius",
          ],
          optionsMy: [
            "1 ဒီဂရီ Celsius",
            "100 ဒီဂရီ Celsius",
            "0 ဒီဂရီ",
            "10 ဒီဂရီ Celsius",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A thermometer's capillary tube is made narrow to...",
          questionMy:
              "သာမိုမီတာ၏ Capillary ပြွန်ကို ...ရန် ကျဉ်းမြောင်းအောင် ပြုလုပ်ထားသည်",
          optionsEn: [
            "Magnify small volume changes into a readable length",
            "Make the thermometer heavier",
            "Prevent any liquid movement",
            "Reduce its cost only",
          ],
          optionsMy: [
            "ငယ်ငယ်စား Volume ပြောင်းလဲမှုများကို ဖတ်နိုင်သော အလျားအဖြစ် ချဲ့ထွင်ရန်",
            "သာမိုမီတာကို ပိုလေးလံစေရန်",
            "အရည် ရွေ့လျားမှု မည်သည်ကိုမျှ ကာကွယ်ရန်",
            "၎င်း၏ ကုန်ကျစရိတ်ကိုသာ လျှော့ချရန်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 7: "Thermal Energy Transfer"
// =====================================================================

const CourseWeekDef _igcsePhysWeek7 = CourseWeekDef(
  id: "course-igcse-phys-w7",
  weekNumber: 7,
  titleEn: "Thermal Energy Transfer",
  titleMy: "အပူစွမ်းအင် ကူးပြောင်းခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w7-d1",
      dayNumber: 1,
      titleEn: "Conduction, Convection, and Radiation",
      titleMy: "Conduction, Convection နှင့် Radiation",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Why are metals generally much better thermal conductors than non-metals like wood or plastic?",
          questionMy:
              "သတ္တုများသည် သစ်သား သို့မဟုတ် ပလပ်စတစ်ကဲ့သို့ သတ္တုမဟုတ်သော ပစ္စည်းများထက် များသောအားဖြင့် ပို၍ ကောင်းသော Thermal Conductor ဖြစ်ရသည့် အကြောင်းရင်းကား အဘယ်နည်း။",
          optionsEn: [
            "Metals have free (delocalised) electrons that can move quickly and transfer thermal energy through the material",
            "Metals have no particles at all",
            "Metals are always colder than non-metals",
            "Metals never conduct any energy",
          ],
          optionsMy: [
            "သတ္တုများတွင် ပစ္စည်းတစ်လျှောက် အပူစွမ်းအင်ကို လျင်မြန်စွာ ရွေ့လျားကာ ကူးပြောင်းပေးနိုင်သော လွတ်လပ်သော (Delocalised) Electron များ ရှိသောကြောင့်",
            "သတ္တုများတွင် အမှုန် လုံးဝ မရှိသောကြောင့်",
            "သတ္တုများသည် သတ္တုမဟုတ်သော ပစ္စည်းများထက် အမြဲ ပို၍ အေးသောကြောင့်",
            "သတ္တုများသည် Energy မည်သည်ကိုမျှ ဘယ်တော့မှ Conduct မလုပ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Free electrons gain kinetic energy at the hot end and move rapidly through the metal, colliding with other particles and transferring energy far faster than vibration alone can in a non-metal.",
          ],
          hintsMy: [
            "လွတ်လပ်သော Electron များသည် ပူသောအစွန်းတွင် Kinetic Energy ရရှိကာ သတ္တုတစ်လျှောက် လျင်မြန်စွာ ရွေ့လျားကာ အခြားအမှုန်များနှင့် ထိတွေ့ကာ သတ္တုမဟုတ်သော ပစ္စည်းတွင် တုန်ခါမှုသက်သက်ထက် ပို၍ လျင်မြန်စွာ Energy ကူးပြောင်းပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why does hot air rise, driving convection currents in a room heated by a radiator?",
          questionMy:
              "Radiator တစ်ခုဖြင့် အပူပေးထားသော အခန်းတွင် ပူနွေးသော လေသည် အပေါ်သို့ တက်ကာ Convection Current များကို တွန်းလှန်ပေးရသည့် အကြောင်းရင်းကား အဘယ်နည်း။",
          optionsEn: [
            "Heated air expands, becoming less dense than the surrounding cooler air, so it rises",
            "Heated air becomes heavier and sinks to the floor",
            "Hot air has no density at all",
            "Convection only happens in solids, never in air",
          ],
          optionsMy: [
            "အပူပေးထားသော လေသည် ပျံ့ကားလာကာ ဝန်းကျင်ရှိ အအေးလေထက် သိပ်သည်းဆ ပို၍ နည်းလာသောကြောင့် အပေါ်သို့ တက်လာသည်",
            "အပူပေးထားသော လေသည် ပို၍ လေးလံလာကာ ကြမ်းပြင်သို့ ငုပ်သွားသည်",
            "ပူနွေးသော လေတွင် သိပ်သည်းဆ လုံးဝ မရှိပါ",
            "Convection သည် အစိုင်အခဲများတွင်သာ ဖြစ်ပွားပြီး လေတွင် ဘယ်တော့မှ မဖြစ်ပွားပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "As it rises, the hot air is replaced by cooler, denser air sinking down to take its place, setting up a continuous circulating current.",
          ],
          hintsMy: [
            "ပူနွေးသော လေ အပေါ်သို့ တက်သွားစဉ် ၎င်း၏ နေရာကို ယူရန် သိပ်သည်းဆ ပို၍ရှိသော အအေးလေ ငုပ်ဝင်လာကာ ဆက်တိုက် ပတ်လည်နေသော Current တစ်ခု တည်ဆောက်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which surface is the best emitter and absorber of infrared radiation?",
          questionMy:
              "Infrared Radiation ကို ထုတ်လွှတ်ရန်နှင့် စုပ်ယူရန် အကောင်းဆုံး မျက်နှာပြင်ကား အဘယ်နည်း။",
          optionsEn: [
            "A matt (dull), black surface",
            "A shiny, white surface",
            "A polished, silver surface",
            "A transparent glass surface",
          ],
          optionsMy: [
            "Matt (ဖျော့) အနက်ရောင် မျက်နှာပြင်",
            "တောက်ပ၊ အဖြူရောင် မျက်နှာပြင်",
            "ပွတ်တိုက်ထားသော ငွေရောင် မျက်နှာပြင်",
            "ပွင့်လင်းသော ဖန် မျက်နှာပြင်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is why radiators are often painted matt black, and why solar water heaters use black-coated pipes, while shiny/white surfaces are used to reflect radiation away (e.g. survival blankets, vacuum flask linings).",
          ],
          hintsMy: [
            "ဤသည်ကား Radiator များကို Matt အနက်ရောင် သုတ်လေ့ရှိကြောင်းနှင့် နေရောင်ခြည် ရေနွေးစက်များတွင် အနက်ရောင် ကပ်ထားသော ပိုက်များ အသုံးပြုကြောင်း၊ တောက်ပ/အဖြူရောင် မျက်နှာပြင်များကိုမူ Radiation ကို ပြန်ရောင်ပြန်ရန် အသုံးပြုကြောင်း (ဥပမာ- အသက်ကယ် စောင်များ၊ Vacuum Flask အတွင်းလွှာ) ၏ အကြောင်းရင်းဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w7-d2",
      dayNumber: 2,
      titleEn: "Match: Thermal Transfer Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Thermal Transfer ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w7-dm-1",
          termEn: "Conduction",
          termMy: "Conduction",
          matchEn:
              "Thermal energy transfer through a material via particle vibration and free electrons, without the material itself moving",
          matchMy:
              "ပစ္စည်းကိုယ်တိုင် မရွေ့လျားဘဲ အမှုန် တုန်ခါမှုနှင့် လွတ်လပ်သော Electron များမှတစ်ဆင့် ပစ္စည်းတစ်ခုတစ်လျှောက် အပူစွမ်းအင် ကူးပြောင်းခြင်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w7-dm-2",
          termEn: "Convection",
          termMy: "Convection",
          matchEn:
              "Thermal energy transfer through a fluid caused by density differences creating a circulating current",
          matchMy:
              "Density ကွာခြားချက်များက ပတ်လည်နေသော Current တစ်ခု ဖြစ်ပေါ်စေခြင်းကြောင့် အရည်တစ်ခုတစ်လျှောက် အပူစွမ်းအင် ကူးပြောင်းခြင်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w7-dm-3",
          termEn: "Radiation (thermal)",
          termMy: "Radiation (Thermal)",
          matchEn:
              "The transfer of thermal energy as infrared electromagnetic waves, requiring no medium",
          matchMy:
              "အလယ်အလတ် တစ်ခုမျှ မလိုအပ်ဘဲ Infrared Electromagnetic လှိုင်းအဖြစ် အပူစွမ်းအင် ကူးပြောင်းခြင်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w7-dm-4",
          termEn: "Insulator",
          termMy: "Insulator",
          matchEn:
              "A material that conducts thermal energy poorly, used to slow down heat transfer",
          matchMy:
              "အပူစွမ်းအင်ကို ညံ့ဖျင်းစွာသာ Conduct လုပ်ပြီး အပူ ကူးပြောင်းမှုကို နှေးကွေးစေရန် အသုံးပြုသော ပစ္စည်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w7-dm-5",
          termEn: "Matt black surface",
          termMy: "Matt Black Surface",
          matchEn:
              "The best type of surface for both emitting and absorbing infrared radiation",
          matchMy:
              "Infrared Radiation ထုတ်လွှတ်ရန်နှင့် စုပ်ယူရန် နှစ်ခုစလုံးအတွက် အကောင်းဆုံး မျက်နှာပြင် အမျိုးအစား",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w7-d3",
      dayNumber: 3,
      titleEn: "Sort: Conduction, Convection, or Radiation?",
      titleMy: "စီစစ်ကြမည် - Conduction, Convection သို့မဟုတ် Radiation",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Conduction", "Convection", "Radiation"],
        bucketsMy: ["Conduction", "Convection", "Radiation"],
        items: [
          SortingItem(
            id: "igcsephys-w7-sort-1",
            labelEn: "A metal spoon in hot soup becoming hot at the handle end",
            labelMy:
                "ပူသော ဟင်းရည်ထဲရှိ သတ္တု ဇွန်းသည် လက်ကိုင် အစွန်းတွင် ပူလာခြင်း",
            correctBucketEn: "Conduction",
            correctBucketMy: "Conduction",
          ),
          SortingItem(
            id: "igcsephys-w7-sort-2",
            labelEn:
                "Warm air rising above a radiator and circulating around a room",
            labelMy:
                "Radiator အပေါ်တွင် ပူနွေးသော လေ တက်လာကာ အခန်းတစ်ခုလုံး ပတ်လည် ရွေ့လျားခြင်း",
            correctBucketEn: "Convection",
            correctBucketMy: "Convection",
          ),
          SortingItem(
            id: "igcsephys-w7-sort-3",
            labelEn:
                "Feeling the Sun's heat through the vacuum of space, with no medium in between",
            labelMy:
                "အကြားတွင် အလယ်အလတ် တစ်ခုမျှ မရှိဘဲ အာကာသ၏ Vacuum ကို ဖြတ်၍ နေ၏ အပူကို ခံစားရခြင်း",
            correctBucketEn: "Radiation",
            correctBucketMy: "Radiation",
          ),
          SortingItem(
            id: "igcsephys-w7-sort-4",
            labelEn:
                "Free electrons in a copper rod carrying thermal energy from the hot end to the cold end",
            labelMy:
                "ကြေးနီ တုတ်ချောင်းရှိ လွတ်လပ်သော Electron များသည် အပူစွမ်းအင်ကို ပူသောအစွန်းမှ အေးသောအစွန်းသို့ သယ်ဆောင်ခြင်း",
            correctBucketEn: "Conduction",
            correctBucketMy: "Conduction",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w7-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Vacuum Flask Investigation",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ Vacuum Flask စုံစမ်းစစ်ဆေးမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Vacuum Flask Investigation",
        titleMy: "နေချည်၏ Vacuum Flask စုံစမ်းစစ်ဆေးမှု",
        passageEn:
            "Ko Thura brought in a cut-away diagram of a vacuum flask (thermos) and asked Nay Chi to explain how each design feature blocked a different method of thermal energy transfer, since a good flask had to defeat all three at once.\n\nShe started with the double-walled glass container with a vacuum gap between the two layers. Since conduction and convection both require particles to carry energy along, a vacuum -- containing essentially no particles -- meant there was nothing to conduct or convect heat across the gap at all. Next, she noted that the inner surface of the glass was coated with a thin, shiny silvered layer. Since shiny surfaces are poor emitters and poor absorbers of infrared radiation, this silvering minimised the third transfer route: it reflected radiated heat back toward the hot liquid inside rather than letting it escape or absorbing it into the flask's structure.\n\nFinally, Ko Thura pointed to the plastic stopper and outer casing, asking why these were made from plastic rather than metal. Nay Chi explained that plastic is a poor conductor compared to metal, so even where the vacuum gap did not reach -- specifically at the stopper, which physically touches both the hot liquid and the outside air -- the plastic itself provided an additional barrier slowing down any remaining conductive heat loss through that single point of contact. Ko Thura summarised the whole design as a case study in applying three separate physics principles -- conduction, convection, and radiation -- to solve one single practical problem, rather than any single principle solving it alone.",
        passageMy:
            "ကိုသူရသည် Vacuum Flask (သာမော်စ်) ၏ ဖြတ်ထားသော ပုံကားချပ်တစ်ခုကို ယူဆောင်လာပြီး Flask ကောင်းတစ်ခုသည် သုံးမျိုးလုံးကို တစ်ပြိုင်နက် အနိုင်ယူရမည် ဖြစ်သောကြောင့် ဒီဇိုင်း လက္ခဏာတစ်ခုစီသည် မတူညီသော အပူစွမ်းအင် ကူးပြောင်းခြင်း နည်းလမ်းတစ်ခုကို မည်သို့ ပိတ်ဆို့ကြောင်း ရှင်းပြရန် နေချည်ကို တောင်းဆိုခဲ့သည်။\n\nသူမသည် အလွှာနှစ်ခုကြား Vacuum ကွက်လပ်ပါသော နှစ်ထပ်နံရံ ဖန်ခွက်ဖြင့် စတင်ခဲ့သည်။ Conduction နှင့် Convection နှစ်ခုစလုံးသည် Energy ကို သယ်ဆောင်ရန် အမှုန်များ လိုအပ်သောကြောင့် အခြေခံအားဖြင့် အမှုန် လုံးဝ မရှိသော Vacuum ဆိုသည်မှာ ကွက်လပ်တစ်လျှောက် Conduct သို့မဟုတ် Convect လုပ်ရန် မည်သည့်အရာမျှ လုံးဝ မရှိကြောင်း ဆိုလိုသည်။ ထို့နောက် ဖန်၏ အတွင်းပိုင်း မျက်နှာပြင်ကို ပါးလွှာသော၊ တောက်ပသော ငွေရောင် အလွှာဖြင့် ကပ်ထားကြောင်း သူမ သတိပြုမိခဲ့သည်။ တောက်ပသော မျက်နှာပြင်များသည် ညံ့ဖျင်းသော Infrared Radiation ထုတ်လွှတ်ရေးနှင့် စုပ်ယူရေးသူများ ဖြစ်သောကြောင့် ဤ ငွေရောင်ကပ်ခြင်းသည် တတိယ ကူးပြောင်းခြင်း လမ်းကြောင်းကို လျော့ချပေးခဲ့သည် - ၎င်းသည် အထွက်ပြေးစေခြင်း သို့မဟုတ် Flask ၏ ဖွဲ့စည်းပုံသို့ စုပ်ယူခြင်းအစား ထုတ်လွှတ်ထားသော အပူကို အတွင်းရှိ ပူသော အရည်ဘက်သို့ ပြန်ရောင်ပြန်ပေးခဲ့သည်။\n\nနောက်ဆုံးတွင် ကိုသူရသည် ပလပ်စတစ် Stopper နှင့် အပြင်ပိုင်း ခွံကို ညွှန်ပြပြီး ၎င်းတို့ကို သတ္တုအစား ပလပ်စတစ်ဖြင့် အဘယ်ကြောင့် ပြုလုပ်ထားကြောင်း မေးမြန်းခဲ့သည်။ ပလပ်စတစ်သည် သတ္တုနှင့် နှိုင်းယှဉ်လျှင် ညံ့ဖျင်းသော Conductor ဖြစ်သောကြောင့် Vacuum ကွက်လပ် မရောက်ရှိသော နေရာ -- ပူသော အရည်နှင့် အပြင်ဘက် လေ နှစ်ခုစလုံးကို ရုပ်ပိုင်းဆိုင်ရာ ထိတွေ့နေသော Stopper တွင်ပင် -- ပလပ်စတစ်ကိုယ်တိုင်သည် ထိတွေ့မှု အချက်တစ်ခုတည်းမှတစ်ဆင့် ကျန်ရှိနေသော Conductive အပူဆုံးရှုံးမှု မည်သည်ကိုမဆို နှေးကွေးစေသော ထပ်ဆောင်း Barrier တစ်ခု ပေးအပ်ကြောင်း နေချည် ရှင်းပြခဲ့သည်။ ကိုသူရသည် ဒီဇိုင်းတစ်ခုလုံးကို သီးခြား ရူပဗေဒ နိယာမ သုံးမျိုး -- Conduction, Convection နှင့် Radiation -- ကို တစ်ခုတည်းသော လက်တွေ့ကျ ပြဿနာတစ်ခု ဖြေရှင်းရန် အသုံးချသည့် Case Study တစ်ခုအဖြစ် အနှစ်ချုပ်ပြောကြားခဲ့ပြီး နိယာမတစ်ခုတည်းကသာ ၎င်းကို ဖြေရှင်းသည် မဟုတ်ပါ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does the vacuum gap block both conduction and convection?",
            questionMy:
                "Vacuum ကွက်လပ်သည် Conduction နှင့် Convection နှစ်ခုစလုံးကို ပိတ်ဆို့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Both processes require particles to carry energy, and a vacuum contains essentially no particles",
              "The vacuum makes the flask heavier",
              "The vacuum is filled with cold water",
              "The vacuum reflects light only",
            ],
            optionsMy: [
              "လုပ်ငန်းစဉ် နှစ်ခုစလုံးသည် Energy ကို သယ်ဆောင်ရန် အမှုန်များ လိုအပ်ပြီး Vacuum တွင် အခြေခံအားဖြင့် အမှုန် လုံးဝ မရှိသောကြောင့်",
              "Vacuum က Flask ကို ပိုလေးလံစေသောကြောင့်",
              "Vacuum ကို အအေးရေဖြင့် ဖြည့်ထားသောကြောင့်",
              "Vacuum က အလင်းကိုသာ ပြန်ရောင်ပြန်စေသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining what conduction and convection require.",
            ],
            hintsMy: [
              "Conduction နှင့် Convection က မည်သည်ကို လိုအပ်ကြောင်း ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what does the shiny silvered layer do?",
            questionMy:
                "တောက်ပသော ငွေရောင် အလွှာက မည်သို့ လုပ်ဆောင်ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Reflects radiated heat back toward the hot liquid instead of letting it escape",
              "Absorbs all the heat permanently",
              "Makes the flask lighter",
              "Increases conduction through the glass",
            ],
            optionsMy: [
              "အထွက်ပြေးစေခြင်းအစား ထုတ်လွှတ်ထားသော အပူကို ပူသော အရည်ဘက်သို့ ပြန်ရောင်ပြန်စေသည်",
              "အပူ အားလုံးကို ထာဝစဉ် စုပ်ယူသည်",
              "Flask ကို ပိုပေါ့စေသည်",
              "ဖန်ကို ဖြတ်၍ Conduction ကို တိုးမြှင့်ပေးသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about the silvered layer's function.",
            ],
            hintsMy: [
              "ငွေရောင် အလွှာ၏ လုပ်ဆောင်ချက်အကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, what overall lesson did Ko Thura draw from the vacuum flask design?",
            questionMy:
                "Vacuum Flask ဒီဇိုင်းမှ ကိုသူရ ရရှိခဲ့သော စုစုပေါင်း သင်ခန်းစာကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "Solving one practical problem often requires applying multiple separate physics principles together, not just one",
              "Only radiation matters in real engineering",
              "Vacuum flasks are impossible to design well",
              "Conduction is the only principle that matters",
            ],
            optionsMy: [
              "လက်တွေ့ ပြဿနာတစ်ခုကို ဖြေရှင်းရန် တစ်ခုတည်းသော နိယာမ မဟုတ်ဘဲ သီးခြား ရူပဗေဒ နိယာမ များစွာကို အတူတကွ အသုံးချရန် မကြာခဏ လိုအပ်ကြောင်း",
              "အမှန်တကယ် အင်ဂျင်နီယာလုပ်ငန်းတွင် Radiation တစ်ခုတည်းသာ အရေးကြီးကြောင်း",
              "Vacuum Flask များကို ကောင်းစွာ ဒီဇိုင်းဆွဲရန် မဖြစ်နိုင်ကြောင်း",
              "Conduction တစ်ခုတည်းသာ အရေးကြီးသော နိယာမ ဖြစ်ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w7-d5",
      dayNumber: 5,
      titleEn: "Week 7 Recap: Thermal Energy Transfer",
      titleMy: "သတ္တမပတ် ပြန်လည်သုံးသပ်ခြင်း - Thermal Energy Transfer",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Metals conduct heat well mainly because of...",
          questionMy:
              "သတ္တုများသည် ...ကြောင့် အဓိကအားဖြင့် အပူကို ကောင်းစွာ Conduct လုပ်သည်",
          optionsEn: [
            "Free (delocalised) electrons",
            "Their colour",
            "Having no particles",
            "Being transparent",
          ],
          optionsMy: [
            "လွတ်လပ်သော (Delocalised) Electron များ",
            "၎င်းတို့၏ အရောင်",
            "အမှုန် လုံးဝ မရှိခြင်း",
            "ပွင့်လင်းမြင်သာခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Convection currents form because heated fluid becomes...",
          questionMy:
              "အပူပေးထားသော အရည်သည် ...ဖြစ်လာသောကြောင့် Convection Current များ ဖွဲ့စည်းသည်",
          optionsEn: [
            "Less dense and rises",
            "Denser and sinks always",
            "Solid",
            "Invisible",
          ],
          optionsMy: [
            "Density ပို၍ နည်းလာကာ တက်လာ",
            "Density ပို၍ ရှိလာကာ အမြဲ ငုပ်ဝင်",
            "အစိုင်အခဲ",
            "မမြင်ရနိုင်သော",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Matt black surfaces are the best at emitting and absorbing...",
          questionMy:
              "Matt အနက်ရောင် မျက်နှာပြင်များသည် ...ကို ထုတ်လွှတ်ရန်နှင့် စုပ်ယူရန် အကောင်းဆုံး ဖြစ်သည်",
          optionsEn: [
            "Infrared radiation",
            "Sound waves",
            "Electric current",
            "Water",
          ],
          optionsMy: [
            "Infrared Radiation",
            "အသံလှိုင်းများ",
            "လျှပ်စီးကြောင်း",
            "ရေ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 8: "Thermal Physics Practical Lab" (Term 2 Capstone)
// =====================================================================

const CourseWeekDef _igcsePhysWeek8 = CourseWeekDef(
  id: "course-igcse-phys-w8",
  weekNumber: 8,
  titleEn: "Thermal Physics Practical Lab",
  titleMy: "အပူရူပဗေဒ ဓာတ်ခွဲခန်း လက်တွေ့စမ်းသပ်မှု",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w8-d1",
      dayNumber: 1,
      titleEn: "Latent Heat and Cooling Curves",
      titleMy: "Latent Heat နှင့် Cooling Curve",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "While ice is melting at exactly 0 C, energy is still being supplied, but the temperature does not rise. Where does this energy go?",
          questionMy:
              "ရေခဲသည် 0 C အတိအကျတွင် အရည်ပျော်နေစဉ် Energy ကို ဆက်လက် ထောက်ပံ့ပေးနေသော်လည်း အပူချိန် မတိုးတက်ပါ။ ဤ Energy သည် မည်သည့်နေရာသို့ သွားနေသနည်း။",
          optionsEn: [
            "It is used to break the forces holding particles in fixed positions, not to increase particle speed",
            "The energy simply disappears completely",
            "It is used to make the ice colder",
            "It converts into sound energy only",
          ],
          optionsMy: [
            "ပစ္စည်းများကို ပုံသေတည်နေရာတွင် ထိန်းထားသော အားများကို ချိုးဖျက်ရန် သုံးစွဲနေပြီး အမှုန်လျင်မြန်နှုန်း မြှင့်တင်ရန် မဟုတ်ပါ",
            "Energy သည် လုံးလုံးလျားလျား ပျောက်ကွယ်သွားသည်",
            "ရေခဲကို ပို၍ အေးစေရန် အသုံးပြုသည်",
            "အသံစွမ်းအင်အဖြစ်သာ ပြောင်းလဲသွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This energy is called specific latent heat -- the energy needed to change state without any temperature change, since it goes entirely into overcoming intermolecular forces.",
          ],
          hintsMy: [
            "ဤ Energy ကို Specific Latent Heat ဟု ခေါ်သည် -- အပူချိန် ပြောင်းလဲမှု မရှိဘဲ အခြေအနေ ပြောင်းလဲရန် လိုအပ်သော Energy ဖြစ်ပြီး ၎င်းသည် မော်လီကျူးကြားရှိ အားများကို အနိုင်ယူရန်သာ လုံးလုံးလျားလျား ဝင်ရောက်သွားသောကြောင့်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "On a cooling curve (temperature against time) for a substance changing from liquid to solid, what does the flat (horizontal) section represent?",
          questionMy:
              "အရည်မှ အစိုင်အခဲသို့ ပြောင်းလဲနေသော ပစ္စည်းတစ်ခု၏ Cooling Curve (အပူချိန် Vs အချိန်) တွင် ညီညာသော (အလျားလိုက်) အပိုင်းက အဘယ်ကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "The substance is freezing, releasing latent heat at the same rate it is being lost to the surroundings",
            "The substance has stopped losing energy entirely",
            "The substance is heating up rapidly",
            "The thermometer has broken",
          ],
          optionsMy: [
            "ပစ္စည်းသည် အေးခဲနေပြီး ဝန်းကျင်သို့ ဆုံးရှုံးနေသော နှုန်းနှင့် တူညီသော နှုန်းဖြင့် Latent Heat ကို ထုတ်လွှတ်နေသည်",
            "ပစ္စည်းသည် Energy ဆုံးရှုံးခြင်းကို လုံးဝ ရပ်တန့်သွားခဲ့သည်",
            "ပစ္စည်းသည် လျင်မြန်စွာ ပူနွေးလာနေသည်",
            "သာမိုမီတာ ကျိုးပေါက်သွားခဲ့သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "As the liquid freezes, the latent heat released by particles forming a solid structure exactly balances the heat being lost to the surroundings, keeping temperature constant during the change of state.",
          ],
          hintsMy: [
            "အရည် အေးခဲသွားစဉ် အစိုင်အခဲ ဖွဲ့စည်းပုံ ဖွဲ့စည်းနေသော အမှုန်များက ထုတ်လွှတ်သော Latent Heat သည် ဝန်းကျင်သို့ ဆုံးရှုံးနေသော အပူနှင့် အတိအကျ ဟန်ချက်ညီနေကာ အခြေအနေ ပြောင်းလဲနေစဉ် အပူချိန်ကို တည်ငြိမ်စွာ ထားပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "It takes 336,000 J to melt 1 kg of ice completely at 0 C. What is the specific latent heat of fusion of ice?",
          questionMy:
              "ရေခဲ 1 kg ကို 0 C တွင် လုံးလုံးလျားလျား အရည်ပျော်ရန် 336,000 J လိုအပ်သည်။ ရေခဲ၏ Specific Latent Heat of Fusion ကား အဘယ်နည်း။",
          optionsEn: ["336,000 J/kg", "336 J/kg", "1 J/kg", "3,360 J/kg"],
          optionsMy: ["336,000 J/kg", "336 J/kg", "1 J/kg", "3,360 J/kg"],
          correctIndex: 0,
          hintsEn: [
            "Specific latent heat = energy required / mass. Since the mass here is exactly 1 kg, the specific latent heat equals the energy directly: 336,000 J/kg.",
          ],
          hintsMy: [
            "Specific Latent Heat = လိုအပ်သော Energy / Mass ။ ဤနေရာတွင် Mass သည် 1 kg အတိအကျ ဖြစ်သောကြောင့် Specific Latent Heat သည် Energy နှင့် တိုက်ရိုက် ညီမျှသည် - 336,000 J/kg ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w8-d2",
      dayNumber: 2,
      titleEn: "Match: Term 2 Recap Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ဒုတိယတန်း ပြန်လည်သုံးသပ်ခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w8-dm-1",
          termEn: "Specific latent heat",
          termMy: "Specific Latent Heat",
          matchEn:
              "The energy needed to change the state of 1 kg of a substance without changing its temperature",
          matchMy:
              "ပစ္စည်းတစ်ခု၏ 1 kg ၏ အပူချိန်ကို မပြောင်းလဲဘဲ အခြေအနေ ပြောင်းလဲရန် လိုအပ်သော Energy",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w8-dm-2",
          termEn: "Latent heat of fusion",
          termMy: "Latent Heat of Fusion",
          matchEn:
              "The specific latent heat involved in changing between solid and liquid",
          matchMy:
              "အစိုင်အခဲနှင့် အရည် ကြားတွင် ပြောင်းလဲစဉ် ပါဝင်သော Specific Latent Heat",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w8-dm-3",
          termEn: "Latent heat of vaporisation",
          termMy: "Latent Heat of Vaporisation",
          matchEn:
              "The specific latent heat involved in changing between liquid and gas",
          matchMy:
              "အရည်နှင့် ဓာတ်ငွေ့ ကြားတွင် ပြောင်းလဲစဉ် ပါဝင်သော Specific Latent Heat",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w8-dm-4",
          termEn: "Cooling curve",
          termMy: "Cooling Curve",
          matchEn:
              "A graph of temperature against time showing flat sections during a change of state",
          matchMy:
              "အခြေအနေ ပြောင်းလဲစဉ် ညီညာသော အပိုင်းများ ပြသော Time Vs Temperature ဂရပ်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w8-dm-5",
          termEn: "Constant temperature during change of state",
          termMy: "Constant Temperature During Change of State",
          matchEn:
              "Occurs because energy supplied or released goes entirely into breaking or forming forces between particles",
          matchMy:
              "ထောက်ပံ့ သို့မဟုတ် ထုတ်လွှတ်သော Energy သည် အမှုန်များကြား အားများကို ချိုးဖျက်ခြင်း သို့မဟုတ် ဖွဲ့စည်းခြင်းသို့ လုံးလုံးလျားလျား ဝင်ရောက်သွားသောကြောင့် ဖြစ်ပေါ်",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w8-d3",
      dayNumber: 3,
      titleEn: "Sort: Thermal Physics or Motion/Forces Concept?",
      titleMy: "စီစစ်ကြမည် - Thermal Physics လား၊ Motion/Forces သဘောတရားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Thermal Physics Concept", "Motion/Forces Concept"],
        bucketsMy: ["Thermal Physics Concept", "Motion/Forces Concept"],
        items: [
          SortingItem(
            id: "igcsephys-w8-sort-1",
            labelEn: "Calculating the energy needed to boil a kettle of water",
            labelMy:
                "ဒန်ရေနွေးအိုးရေကို ဆူပွက်စေရန် လိုအပ်သော Energy တွက်ချက်ခြင်း",
            correctBucketEn: "Thermal Physics Concept",
            correctBucketMy: "Thermal Physics Concept",
          ),
          SortingItem(
            id: "igcsephys-w8-sort-2",
            labelEn:
                "Calculating the resultant force needed to accelerate a car",
            labelMy:
                "ကားတစ်စီးကို အရှိန်တက်စေရန် လိုအပ်သော Resultant Force တွက်ချက်ခြင်း",
            correctBucketEn: "Motion/Forces Concept",
            correctBucketMy: "Motion/Forces Concept",
          ),
          SortingItem(
            id: "igcsephys-w8-sort-3",
            labelEn:
                "Explaining why a cooling curve has a flat section during freezing",
            labelMy:
                "Cooling Curve တွင် အေးခဲနေစဉ် ညီညာသော အပိုင်း ရှိရသည့် အကြောင်းရင်း ရှင်းပြခြင်း",
            correctBucketEn: "Thermal Physics Concept",
            correctBucketMy: "Thermal Physics Concept",
          ),
          SortingItem(
            id: "igcsephys-w8-sort-4",
            labelEn:
                "Predicting the combined velocity of two colliding trolleys",
            labelMy:
                "ရင်ဆိုင်ထိတွေ့သော ကားနှစ်စီး၏ ပေါင်းစပ် Velocity ခန့်မှန်းခြင်း",
            correctBucketEn: "Motion/Forces Concept",
            correctBucketMy: "Motion/Forces Concept",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w8-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Term 2 Thermal Review",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ ဒုတိယတန်း Thermal ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Term 2 Thermal Review",
        titleMy: "နေချည်၏ ဒုတိယတန်း Thermal ပြန်လည်သုံးသပ်ခြင်း",
        passageEn:
            "For her Term 2 final review, Ko Thura asked Nay Chi to trace a single ice cube's journey from a freezer to a boiling saucepan, connecting every idea from the term into one continuous explanation.\n\nShe began with the frozen ice cube itself, its water molecules vibrating about fixed positions in a rigid lattice -- the coldest, most tightly bound arrangement in the kinetic particle model. As heat was applied, the temperature first rose steadily until reaching exactly 0 C, at which point the graph flattened: the incoming energy was now being used entirely to overcome the intermolecular forces holding the solid lattice together, the latent heat of fusion, rather than to raise the temperature further. Once fully melted, the particles could slide past each other as a liquid, and the temperature resumed rising steadily -- now governed by the water's specific heat capacity -- until it reached exactly 100 C, where the graph flattened a second time as the latent heat of vaporisation took over, this time breaking the remaining forces holding the liquid together entirely so that particles could escape as a gas.\n\nKo Thura then asked how the heat actually reached the ice cube inside the saucepan sitting on a stove. Nay Chi traced all three transfer methods in sequence: conduction carried heat from the stove's flame through the metal saucepan base via free electrons; convection currents then carried that heat upward and around through the water itself as warmer, less dense water rose past the melting ice; and throughout the whole process, radiation from the flame and the hot saucepan surface added a smaller, additional contribution, particularly noticeable if a hand was held near the pan without touching it. Ko Thura noted that this single melting ice cube, if properly explained end to end, actually demonstrated every major thermal physics idea from the entire term in one connected story.",
        passageMy:
            "ဒုတိယတန်း နောက်ဆုံး ပြန်လည်သုံးသပ်ခြင်းအတွက် ကိုသူရသည် ရေခဲအိတ်တစ်ခု၏ ခရီးစဉ်ကို Freezer မှ ဆူပွက်နေသော ဟင်းအိုးအထိ ခြေရာခံကာ ဤတန်း၏ အယူအဆတိုင်းကို ဆက်တိုက် ရှင်းပြချက် တစ်ခုတည်းအဖြစ် ချိတ်ဆက်ရန် နေချည်ကို တောင်းဆိုခဲ့သည်။\n\nသူမသည် အေးခဲနေသော ရေခဲအိတ်ကိုယ်တိုင်နှင့် စတင်ခဲ့သည်၊ ၎င်း၏ ရေမော်လီကျူးများသည် တင်းကျပ်သော Lattice အတွင်း ပုံသေ တည်နေရာများတွင် တုန်ခါနေကြသည် -- Kinetic Particle Model တွင် အအေးဆုံး၊ အတင်းကျပ်ဆုံး ချည်နှောင်ထားသော အစီအစဉ် ဖြစ်သည်။ အပူပေးလိုက်သောအခါ အပူချိန်သည် ပထမတွင် 0 C အတိအကျ ရောက်သည်အထိ တစ်သမတ်တည်း မြင့်တက်လာခဲ့ပြီး ထိုအချက်တွင် ဂရပ်သည် ညီညာသွားခဲ့သည် - ဝင်ရောက်လာသော Energy သည် အပူချိန်ကို ထပ်မံ တိုးမြှင့်ခြင်းအစား တင်းကျပ်သော Lattice ကို ချည်နှောင်ထားသော မော်လီကျူးကြား အားများကို အနိုင်ယူရန်သာ Latent Heat of Fusion အဖြစ် လုံးလုံးလျားလျား သုံးစွဲနေသည်။ အပြည့်အဝ အရည်ပျော်ပြီးသည်နှင့် အမှုန်များသည် အရည်တစ်မျိုးအဖြစ် တစ်ခုနှင့်တစ်ခု ချောစွာ ဖြတ်သန်း ရွေ့လျားနိုင်ကာ အပူချိန်သည် တစ်သမတ်တည်း ပြန်လည် မြင့်တက်လာခဲ့သည် -- ယခု ရေ၏ Specific Heat Capacity ဖြင့် ထိန်းချုပ်ခံနေရသည် -- 100 C အတိအကျ ရောက်သည်အထိ၊ ထိုနေရာတွင် ဂရပ်သည် ဒုတိယအကြိမ် ညီညာသွားခဲ့သည်၊ Latent Heat of Vaporisation က ဆက်ခံလိုက်ပြီး ဤအကြိမ်တွင် အမှုန်များ ဓာတ်ငွေ့အဖြစ် ထွက်ပြေးနိုင်စေရန် အရည်ကို လုံးလုံးလျားလျား ချည်နှောင်ထားသော ကျန်ရှိသော အားများကို ချိုးဖျက်ခဲ့သည်။\n\nထို့နောက် မီးဖိုပေါ်ရှိ ဟင်းအိုးအတွင်းရှိ ရေခဲအိတ်ထံသို့ အပူသည် အမှန်တကယ် မည်သို့ ရောက်ရှိခဲ့ကြောင်း ကိုသူရ မေးမြန်းခဲ့သည်။ နေချည်သည် ကူးပြောင်းခြင်း နည်းလမ်း သုံးမျိုးလုံးကို အစဉ်လိုက် ခြေရာခံခဲ့သည် - Conduction သည် လွတ်လပ်သော Electron များမှတစ်ဆင့် မီးဖို၏ မီးလျှံမှ သတ္တု ဟင်းအိုးအောက်ခြေကို ဖြတ်၍ အပူကို သယ်ဆောင်ခဲ့သည်; Convection Current များသည် ထို့နောက် ပို၍ ပူနွေး၍ Density ပို၍ နည်းသော ရေသည် အရည်ပျော်နေသော ရေခဲအနီးကို ဖြတ်၍ တက်လာသောအခါ ထို အပူကို ရေကိုယ်တိုင် တစ်လျှောက် အပေါ်သို့နှင့် ပတ်လည်သို့ သယ်ဆောင်ပေးခဲ့သည်; လုပ်ငန်းစဉ် တစ်ခုလုံးတစ်လျှောက် မီးလျှံနှင့် ပူသော ဟင်းအိုးမျက်နှာပြင်မှ Radiation သည် သေးငယ်သော၊ ထပ်ဆောင်း ပါဝင်မှုကို ပေါင်းထည့်ပေးခဲ့ပြီး၊ ဟင်းအိုးကို မထိတွေ့ဘဲ လက်ကို အနီးတွင် ကိုင်ထားလျှင် အထူး သတိပြုမိစေသည်။ ဤ တစ်ခုတည်းသော အရည်ပျော်နေသော ရေခဲအိတ်သည် အစအဆုံး မှန်ကန်စွာ ရှင်းပြပါက ဤတန်းတစ်လျှောက်လုံးမှ အဓိက Thermal Physics အယူအဆတိုင်းကို ချိတ်ဆက်ထားသော ဇာတ်လမ်းတစ်ခုတည်းတွင် အမှန်တကယ် သရုပ်ပြနေကြောင်း ကိုသူရ မှတ်ချက်ပြုခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did the temperature graph flatten at exactly 0 C?",
            questionMy:
                "အပူချိန် ဂရပ်သည် 0 C အတိအကျတွင် ညီညာသွားခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Incoming energy was used entirely to overcome intermolecular forces (latent heat of fusion), not to raise temperature",
              "The ice cube had completely disappeared",
              "The saucepan stopped being heated",
              "The thermometer was broken",
            ],
            optionsMy: [
              "ဝင်ရောက်လာသော Energy သည် အပူချိန် တိုးမြှင့်ခြင်းအစား မော်လီကျူးကြား အားများကို အနိုင်ယူရန် (Latent Heat of Fusion) လုံးလုံးလျားလျား သုံးစွဲနေသောကြောင့်",
              "ရေခဲအိတ်သည် လုံးလုံးလျားလျား ပျောက်ကွယ်သွားခဲ့သောကြောင့်",
              "ဟင်းအိုးကို အပူပေးခြင်း ရပ်တန့်သွားခဲ့သောကြောင့်",
              "သာမိုမီတာ ကျိုးပေါက်သွားခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the sentence about the graph flattening at 0 C."],
            hintsMy: [
              "0 C တွင် ဂရပ် ညီညာသွားကြောင်း ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, which transfer method carried heat from the flame through the metal saucepan base?",
            questionMy:
                "မီးလျှံမှ သတ္တု ဟင်းအိုးအောက်ခြေကို ဖြတ်၍ အပူကို သယ်ဆောင်ခဲ့သော ကူးပြောင်းခြင်း နည်းလမ်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: ["Conduction", "Convection", "Radiation", "Evaporation"],
            optionsMy: ["Conduction", "Convection", "Radiation", "Evaporation"],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence listing the three transfer methods in sequence.",
            ],
            hintsMy: [
              "ကူးပြောင်းခြင်း နည်းလမ်း သုံးမျိုးကို အစဉ်လိုက် ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, what did Ko Thura conclude the melting ice cube demonstrated?",
            questionMy:
                "အရည်ပျော်နေသော ရေခဲအိတ်သည် အဘယ်အရာကို သရုပ်ပြနေကြောင်း ကိုသူရ ကောက်ချက်ချခဲ့သည်ကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "Every major thermal physics idea from the entire term, connected in one story",
              "Only one single isolated fact about ice",
              "Nothing related to the term's content at all",
              "A mistake in the original experiment",
            ],
            optionsMy: [
              "ဤတန်းတစ်လျှောက်လုံးမှ အဓိက Thermal Physics အယူအဆတိုင်း၊ ဇာတ်လမ်းတစ်ခုတည်းတွင် ချိတ်ဆက်ထားခြင်း",
              "ရေခဲအကြောင်း သီးခြား အချက်တစ်ခုတည်းသာ",
              "ဤတန်း၏ အကြောင်းအရာနှင့် လုံးဝ မသက်ဆိုင်သော အရာ",
              "မူလ စမ်းသပ်မှုတွင် အမှားတစ်ခု",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w8-d5",
      dayNumber: 5,
      titleEn: "Term 2 Recap: Thermal Physics",
      titleMy: "ဒုတိယတန်း ပြန်လည်သုံးသပ်ခြင်း - Thermal Physics",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "During a change of state, temperature stays constant because energy is used to...",
          questionMy:
              "အခြေအနေ ပြောင်းလဲစဉ် Energy သည် ...ရန် သုံးစွဲနေသောကြောင့် အပူချိန် တည်ငြိမ်စွာ ရှိနေသည်",
          optionsEn: [
            "Break or form forces between particles",
            "Destroy the particles completely",
            "Increase particle speed only",
            "Change the particles' colour",
          ],
          optionsMy: [
            "အမှုန်များကြား အားများကို ချိုးဖျက်ရန် သို့မဟုတ် ဖွဲ့စည်းရန်",
            "အမှုန်များကို လုံးလုံးလျားလျား ဖျက်ဆီးရန်",
            "အမှုန် လျင်မြန်နှုန်းကိုသာ တိုးမြှင့်ရန်",
            "အမှုန်များ၏ အရောင်ကို ပြောင်းလဲရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Conduction, convection, and radiation are all methods of...",
          questionMy:
              "Conduction, Convection နှင့် Radiation တို့သည် ...၏ နည်းလမ်းများ ဖြစ်ကြသည်",
          optionsEn: [
            "Thermal energy transfer",
            "Sound production",
            "Light reflection only",
            "Electrical resistance",
          ],
          optionsMy: [
            "Thermal Energy Transfer",
            "အသံ ထုတ်လုပ်ခြင်း",
            "အလင်း ပြန်ရောင်ခြင်းသာ",
            "လျှပ်စစ် Resistance",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Gases expand more than solids for the same temperature change because gas particles are...",
          questionMy:
              "ဓာတ်ငွေ့ အမှုန်များသည် ...ဖြစ်သောကြောင့် တူညီသော အပူချိန် ပြောင်းလဲမှုအတွက် ဓာတ်ငွေ့များသည် အစိုင်အခဲများထက် ပို၍ ပျံ့ကားသည်",
          optionsEn: [
            "Already far apart with weak forces",
            "Tightly packed",
            "Unable to move",
            "Denser than solids",
          ],
          optionsMy: [
            "ရှိပြီးသား ဝေးကွာစွာ ရှိကာ အားများ အားနည်းသည်",
            "တင်းကျပ်စွာ ထုပ်ပိုးထားသည်",
            "ရွေ့လျား၍ မရ",
            "အစိုင်အခဲများထက် Density ပို၍ ရှိသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
const CourseTermDef igcsePhysicsTerm2 = CourseTermDef(
  id: "course-igcse-phys-term2",
  termNumber: 2,
  titleEn: "Thermal Physics",
  titleMy: "အပူရူပဗေဒ (Thermal Physics)",
  certificateTitleEn: "IGCSE Physics Term 2 Certificate",
  certificateTitleMy: "IGCSE ရူပဗေဒ ဒုတိယတန်း အောင်လက်မှတ်",
  weeks: [_igcsePhysWeek5, _igcsePhysWeek6, _igcsePhysWeek7, _igcsePhysWeek8],
);
// =====================================================================
// Week 9: "General Wave Properties"
// =====================================================================

const CourseWeekDef _igcsePhysWeek9 = CourseWeekDef(
  id: "course-igcse-phys-w9",
  weekNumber: 9,
  titleEn: "General Wave Properties",
  titleMy: "လှိုင်းများ၏ အထွေထွေ ဂုဏ်သတ္တိများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w9-d1",
      dayNumber: 1,
      titleEn: "Transverse Waves, Longitudinal Waves, and the Wave Equation",
      titleMy: "Transverse Wave, Longitudinal Wave နှင့် Wave Equation",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In a transverse wave, how do the particles vibrate relative to the direction the wave travels?",
          questionMy:
              "Transverse Wave တစ်ခုတွင် လှိုင်း ခရီးသွားသည့် ဦးတည်ချက်နှင့် ဆက်စပ်၍ အမှုန်များ မည်သို့ တုန်ခါသနည်း။",
          optionsEn: [
            "Perpendicular (at right angles) to the direction of travel",
            "Parallel to the direction of travel",
            "The particles do not move at all",
            "In a completely random direction",
          ],
          optionsMy: [
            "ခရီးသွားသည့် ဦးတည်ချက်နှင့် Perpendicular (တစ်ဆယ့်တစ်ဒီဂရီ) ဖြစ်စွာ",
            "ခရီးသွားသည့် ဦးတည်ချက်နှင့် Parallel ဖြစ်စွာ",
            "အမှုန်များသည် လုံးဝ မရွေ့လျားပါ",
            "လုံးဝ ကျပန်း ဦးတည်ချက်တစ်ခုဖြင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Light and water waves are classic examples of transverse waves -- the water surface moves up and down while the wave itself travels horizontally.",
          ],
          hintsMy: [
            "အလင်းနှင့် ရေလှိုင်းများသည် Transverse Wave ၏ Classic ဥပမာများ ဖြစ်ကြသည် -- လှိုင်းကိုယ်တိုင် အလျားလိုက် ခရီးသွားစဉ် ရေမျက်နှာပြင်သည် အပေါ်နှင့် အောက်သို့ ရွေ့လျားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A wave has a frequency of 5 Hz and a wavelength of 2 m. What is its speed? (v = f x lambda)",
          questionMy:
              "လှိုင်းတစ်ခုတွင် Frequency 5 Hz နှင့် Wavelength 2 m ရှိသည်။ ၎င်း၏ Speed ကား အဘယ်နည်း။ (v = f x lambda)",
          optionsEn: ["10 m/s (5 x 2)", "2.5 m/s", "7 m/s", "0.4 m/s"],
          optionsMy: ["10 m/s (5 x 2)", "2.5 m/s", "7 m/s", "0.4 m/s"],
          correctIndex: 0,
          hintsEn: ["v = f x lambda = 5 Hz x 2 m = 10 m/s."],
          hintsMy: ["v = f x lambda = 5 Hz x 2 m = 10 m/s ။"],
        ),
        QuizQuestion(
          questionEn:
              "Diffraction (waves spreading out after passing through a gap) is most noticeable when...",
          questionMy:
              "Diffraction (ကွက်လပ်တစ်ခုကို ဖြတ်ပြီးနောက် လှိုင်းများ ကျယ်ပြန့်စေခြင်း) သည် ...သည့်အခါ အထင်ရှားဆုံး ဖြစ်သည်",
          optionsEn: [
            "The gap width is approximately the same size as the wavelength",
            "The gap is enormous compared to the wavelength",
            "There is no gap at all",
            "The wave has zero frequency",
          ],
          optionsMy: [
            "ကွက်လပ် အကျယ်သည် Wavelength နှင့် ခန့်မှန်းအားဖြင့် တူညီသော အရွယ်အစား ရှိသည့်အခါ",
            "ကွက်လပ်သည် Wavelength နှင့် နှိုင်းယှဉ်လျှင် အလွန် ကြီးမားသည့်အခါ",
            "ကွက်လပ် လုံးဝ မရှိသည့်အခါ",
            "လှိုင်းတွင် Frequency သုည ရှိသည့်အခါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "If the gap is much wider than the wavelength, diffraction is barely noticeable; the effect becomes most pronounced as the gap size approaches the wavelength.",
          ],
          hintsMy: [
            "ကွက်လပ်သည် Wavelength ထက် များစွာ ကျယ်ပါက Diffraction ကို ရှားရှားပါးပါးသာ တွေ့ရမည် ဖြစ်ပြီး ကွက်လပ် အရွယ်အစားသည် Wavelength နှင့် နီးကပ်လာသည်နှင့်အမျှ သက်ရောက်မှု အထင်ရှားဆုံး ဖြစ်လာသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w9-d2",
      dayNumber: 2,
      titleEn: "Match: Wave Properties Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Wave Properties ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w9-dm-1",
          termEn: "Longitudinal wave",
          termMy: "Longitudinal Wave",
          matchEn:
              "A wave where particles vibrate parallel to the direction of travel, such as sound",
          matchMy:
              "အသံကဲ့သို့ အမှုန်များသည် ခရီးသွားသည့် ဦးတည်ချက်နှင့် Parallel ဖြစ်စွာ တုန်ခါသော လှိုင်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w9-dm-2",
          termEn: "Wavelength",
          termMy: "Wavelength",
          matchEn:
              "The distance between two identical points on adjacent wave cycles, such as crest to crest",
          matchMy:
              "Crest မှ Crest ကဲ့သို့ နီးကပ်သော လှိုင်း Cycle များပေါ်ရှိ တူညီသော အချက် နှစ်ခုကြား အကွာအဝေး",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w9-dm-3",
          termEn: "Refraction",
          termMy: "Refraction",
          matchEn:
              "The bending of a wave as it changes speed when entering a different medium",
          matchMy:
              "မတူညီသော အလယ်အလတ်တစ်ခုသို့ ဝင်ရောက်စဉ် Speed ပြောင်းလဲသည့်အခါ လှိုင်း ကွေ့ဝင်ခြင်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w9-dm-4",
          termEn: "Diffraction",
          termMy: "Diffraction",
          matchEn:
              "The spreading out of a wave after passing through a gap or around an obstacle",
          matchMy:
              "ကွက်လပ်တစ်ခုကို ဖြတ်ပြီးနောက် သို့မဟုတ် အတားအဆီးတစ်ခု ပတ်လည်တွင် လှိုင်း ကျယ်ပြန့်ခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w9-dm-5",
          termEn: "Amplitude",
          termMy: "Amplitude",
          matchEn:
              "The maximum displacement of a particle from its rest position, related to wave energy",
          matchMy:
              "လှိုင်း Energy နှင့် ဆက်နွှယ်နေသော အမှုန်တစ်ခု၏ Rest Position မှ အများဆုံး Displacement",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w9-d3",
      dayNumber: 3,
      titleEn: "Sort: Transverse Wave or Longitudinal Wave?",
      titleMy: "စီစစ်ကြမည် - Transverse Wave လား၊ Longitudinal Wave လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Transverse Wave", "Longitudinal Wave"],
        bucketsMy: ["Transverse Wave", "Longitudinal Wave"],
        items: [
          SortingItem(
            id: "igcsephys-w9-sort-1",
            labelEn:
                "Light waves -- vibration perpendicular to travel direction",
            labelMy:
                "အလင်းလှိုင်းများ -- ခရီးသွားသည့် ဦးတည်ချက်နှင့် Perpendicular တုန်ခါခြင်း",
            correctBucketEn: "Transverse Wave",
            correctBucketMy: "Transverse Wave",
          ),
          SortingItem(
            id: "igcsephys-w9-sort-2",
            labelEn:
                "Sound waves -- vibration parallel to travel direction, creating compressions and rarefactions",
            labelMy:
                "အသံလှိုင်းများ -- ခရီးသွားသည့် ဦးတည်ချက်နှင့် Parallel တုန်ခါကာ Compression နှင့် Rarefaction ဖန်တီးခြင်း",
            correctBucketEn: "Longitudinal Wave",
            correctBucketMy: "Longitudinal Wave",
          ),
          SortingItem(
            id: "igcsephys-w9-sort-3",
            labelEn:
                "Water ripples -- surface moves up and down as the wave moves outward",
            labelMy:
                "ရေလှိုင်း ချောင်ချင်းများ -- လှိုင်း အပြင်ဘက်သို့ ရွေ့လျားစဉ် မျက်နှာပြင် အပေါ်နှင့် အောက်သို့ ရွေ့လျားခြင်း",
            correctBucketEn: "Transverse Wave",
            correctBucketMy: "Transverse Wave",
          ),
          SortingItem(
            id: "igcsephys-w9-sort-4",
            labelEn:
                "A stretched slinky spring pushed and pulled along its length",
            labelMy:
                "ဆန့်ထားသော Slinky စပရိန်ကို ၎င်း၏ အလျားတစ်လျှောက် တွန်း၍ ဆွဲထုတ်ခြင်း",
            correctBucketEn: "Longitudinal Wave",
            correctBucketMy: "Longitudinal Wave",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w9-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Ripple Tank Puzzle",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ Ripple Tank ပဟေဠိ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Ripple Tank Puzzle",
        titleMy: "နေချည်၏ Ripple Tank ပဟေဠိ",
        passageEn:
            "Ko Thura set up a ripple tank -- a shallow water tray with a small vibrating motor generating regular waves -- and placed two barriers with gaps of different widths side by side: one gap much wider than the water waves' wavelength, and one gap almost exactly the same width as the wavelength.\n\nHe asked Nay Chi to predict what she would see at each gap before switching on the light source that cast the wave pattern's shadow onto a screen below. At the wide gap, she predicted the waves would pass through mostly unchanged, continuing in roughly straight lines with only the very edges curving slightly -- weak diffraction. At the narrow gap, she predicted the waves would spread out into nearly semicircular patterns on the far side, since the gap width was close to the wavelength -- strong diffraction. When Ko Thura switched on the light, both predictions matched the shadow pattern exactly.\n\nHe then asked why this same principle explained a real-world observation: radio waves, with wavelengths of hundreds of metres, can diffract significantly around large obstacles like hills and buildings, while visible light, with a wavelength of only a few hundred nanometres, essentially cannot diffract around everyday objects and instead casts sharp shadows. Nay Chi connected this directly back to the ripple tank rule: since radio wavelengths are comparable in size to everyday obstacles, strong diffraction occurs; since light's wavelength is many orders of magnitude smaller than any everyday obstacle, diffraction around it is far too small to notice, which is exactly why radios can receive signals behind a hill but sunlight cannot bend around a person to illuminate what is directly behind them.",
        passageMy:
            "ကိုသူရသည် Ripple Tank တစ်ခု -- ပုံမှန် လှိုင်းများ ထုတ်ပေးနေသော ငယ်ရွယ်သော တုန်ခါစက်ပါသော ရေထည့်ထားသည့် ကျယ်ပြန့်၍ ရေတိမ်သော ခွက် -- ကို စီစဉ်ပေးပြီး ကွက်လပ် ကျယ်ပြန့်မှု မတူညီသော အတားအဆီး နှစ်ခုကို အနီးအနားတွင် ချထားခဲ့သည် - တစ်ခုသည် ရေလှိုင်းများ၏ Wavelength ထက် များစွာ ပို၍ ကျယ်ပြန့်ပြီး နောက်တစ်ခုသည် Wavelength နှင့် လုနီးပါး တူညီသော ကျယ်ပြန့်မှု ရှိသည်။\n\nအောက်ရှိ မျက်နှာပြင်ပေါ်သို့ လှိုင်းပုံစံ၏ အရိပ်ကို ထုတ်ပေးသော အလင်းရင်းမြစ်ကို မဖွင့်မီ ကွက်လပ် တစ်ခုစီတွင် အဘယ်ကို တွေ့မြင်ရမည်ဟု ခန့်မှန်းရန် သူသည် နေချည်ကို တောင်းဆိုခဲ့သည်။ ကျယ်ပြန့်သော ကွက်လပ်တွင် လှိုင်းများသည် အများစု မပြောင်းလဲဘဲ ဖြတ်သန်းသွားမည်ဟု၊ အနားစွန်းများသာ အနည်းငယ် ကွေ့ဝင်ကာ ခန့်မှန်းအားဖြင့် ဖြောင့်မျဉ်းများဖြင့် ဆက်လက် ခရီးသွားမည်ဟု သူမ ခန့်မှန်းခဲ့သည် -- အားနည်းသော Diffraction ။ ကျဉ်းမြောင်းသော ကွက်လပ်တွင် ကွက်လပ် ကျယ်ပြန့်မှုသည် Wavelength နှင့် နီးစပ်သောကြောင့် လှိုင်းများသည် ဟိုဘက်ခြမ်းတွင် လုနီးပါး ထက်ဝိုင်း ပုံစံများအဖြစ် ကျယ်ပြန့်သွားမည်ဟု သူမ ခန့်မှန်းခဲ့သည် -- အားကောင်းသော Diffraction ။ ကိုသူရ အလင်းကို ဖွင့်လိုက်သောအခါ ခန့်မှန်းချက် နှစ်ခုစလုံးသည် အရိပ်ပုံစံနှင့် အတိအကျ ကိုက်ညီခဲ့သည်။\n\nဤ တူညီသော နိယာမသည် အမှန်တကယ် ကမ္ဘာ၏ လေ့လာတွေ့ရှိချက်တစ်ခုကို ရှင်းပြပုံကို ထို့နောက် သူ မေးမြန်းခဲ့သည် - Wavelength မီတာရာနှင့်ချီသော Radio Wave များသည် တောင်များနှင့် အဆောက်အအုံများကဲ့သို့ ကြီးမားသော အတားအဆီးများ ပတ်လည်တွင် သိသာစွာ Diffract ဖြစ်နိုင်သော်လည်း Wavelength Nanometre အနည်းငယ်သာ ရှိသော မြင်နိုင်သော အလင်းသည် နေ့စဉ် ပစ္စည်းများ ပတ်လည်တွင် Diffract ဖြစ်ခြင်း အခြေခံအားဖြင့် မရှိဘဲ ရှင်းလင်းသော အရိပ်များကို ယင်းအစား ကျရောက်စေသည်။ Radio Wavelength သည် နေ့စဉ် အတားအဆီးများနှင့် အရွယ်အစား နှိုင်းယှဉ်နိုင်သောကြောင့် အားကောင်းသော Diffraction ဖြစ်ပွားကြောင်း၊ အလင်း၏ Wavelength သည် နေ့စဉ် အတားအဆီး မည်သည်ထက်မဆို Order of Magnitude များစွာ သေးငယ်သောကြောင့် ၎င်းပတ်လည်ရှိ Diffraction သည် သတိပြုရန် အလွန် သေးငယ်သည်ဟူသော Ripple Tank စည်းမျဉ်းသို့ ဤသည်ကို နေချည် တိုက်ရိုက် ပြန်ချိတ်ဆက်ခဲ့သည်၊ ဤသည်ကား Radio များသည် တောင်တစ်လုံး၏ နောက်ကွယ်တွင် Signal များ လက်ခံနိုင်သော်လည်း နေရောင်ခြည်သည် ဤသူတစ်ဦး၏ နောက်ကွယ် ရှိအရာကို လင်းထိုးရန် လူတစ်ဦးပတ်လည် ကွေ့၍ မရသည့် အတိအကျ အကြောင်းရင်းဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what did Nay Chi predict would happen at the narrow gap?",
            questionMy:
                "ကျဉ်းမြောင်းသော ကွက်လပ်တွင် အဘယ်ဖြစ်လာမည်ဟု နေချည် ခန့်မှန်းခဲ့ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The waves would spread out into nearly semicircular patterns -- strong diffraction",
              "The waves would completely stop moving",
              "The waves would reverse direction entirely",
              "No waves would pass through at all",
            ],
            optionsMy: [
              "လှိုင်းများသည် လုနီးပါး ထက်ဝိုင်း ပုံစံများအဖြစ် ကျယ်ပြန့်သွားမည် -- အားကောင်းသော Diffraction",
              "လှိုင်းများသည် ရွေ့လျားခြင်း လုံးလုံးလျားလျား ရပ်တန့်သွားမည်",
              "လှိုင်းများသည် ဦးတည်ချက် လုံးလုံးလျားလျား ပြောင်းပြန်ဖြစ်သွားမည်",
              "လှိုင်း တစ်ခုမျှ လုံးဝ ဖြတ်သန်းမည် မဟုတ်ပါ",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the sentence about the narrow gap prediction."],
            hintsMy: [
              "ကျဉ်းမြောင်းသော ကွက်လပ် ခန့်မှန်းချက်အကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why can radio waves diffract significantly around hills while light cannot?",
            questionMy:
                "Radio Wave များသည် တောင်များ ပတ်လည်တွင် သိသာစွာ Diffract ဖြစ်နိုင်သော်လည်း အလင်းသည် ဖြစ်၍ မရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Radio wavelengths are comparable in size to the obstacles, while light's wavelength is far smaller",
              "Radio waves are much slower than light",
              "Light waves are longitudinal, unlike radio waves",
              "Hills only block light, never radio waves",
            ],
            optionsMy: [
              "Radio Wavelength သည် အတားအဆီးများ၏ အရွယ်အစားနှင့် နှိုင်းယှဉ်နိုင်သော်လည်း အလင်း၏ Wavelength သည် များစွာ သေးငယ်သောကြောင့်",
              "Radio Wave များသည် အလင်းထက် များစွာ ပို၍ နှေးကွေးသောကြောင့်",
              "အလင်းလှိုင်းများသည် Radio Wave များနှင့် မတူဘဲ Longitudinal ဖြစ်သောကြောင့်",
              "တောင်များသည် အလင်းကိုသာ ပိတ်ဆို့ပြီး Radio Wave များကို ဘယ်တော့မှ မပိတ်ဆို့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence comparing radio wavelength to light's wavelength.",
            ],
            hintsMy: [
              "Radio Wavelength ကို အလင်း၏ Wavelength နှင့် နှိုင်းယှဉ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, why can a radio receive signals behind a hill but sunlight cannot illuminate what is directly behind a person?",
            questionMy:
                "Radio သည် တောင်တစ်လုံးနောက်ကွယ်တွင် Signal များ လက်ခံနိုင်သော်လည်း နေရောင်ခြည်သည် လူတစ်ဦး၏ နောက်ကွယ်ရှိအရာကို လင်းထိုး၍ မရသည့် အကြောင်းရင်းကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "Radio wavelength is comparable to obstacle size (strong diffraction), light's wavelength is far too small (negligible diffraction)",
              "Radios are electronic devices and light is not",
              "The Sun is too far away to matter",
              "Radio waves are a type of sound wave",
            ],
            optionsMy: [
              "Radio Wavelength သည် အတားအဆီး အရွယ်အစားနှင့် နှိုင်းယှဉ်နိုင်သည် (အားကောင်းသော Diffraction)၊ အလင်း၏ Wavelength သည် အလွန် သေးငယ်လွန်းသည် (လျစ်လျူရှုနိုင်သော Diffraction)",
              "Radio များသည် Electronic ကိရိယာများ ဖြစ်ပြီး အလင်းက မဟုတ်သောကြောင့်",
              "နေသည် ဝေးကွာလွန်းသောကြောင့် အရေးမကြီးသောကြောင့်",
              "Radio Wave များသည် အသံလှိုင်းတစ်မျိုး ဖြစ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w9-d5",
      dayNumber: 5,
      titleEn: "Week 9 Recap: General Wave Properties",
      titleMy: "နဝမပတ် ပြန်လည်သုံးသပ်ခြင်း - Wave Properties",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In a longitudinal wave, particles vibrate...",
          questionMy: "Longitudinal Wave တစ်ခုတွင် အမှုန်များသည်...",
          optionsEn: [
            "Parallel to the direction of travel",
            "Perpendicular to the direction of travel",
            "Not at all",
            "Only in circles",
          ],
          optionsMy: [
            "ခရီးသွားသည့် ဦးတည်ချက်နှင့် Parallel ဖြစ်စွာ တုန်ခါ",
            "ခရီးသွားသည့် ဦးတည်ချက်နှင့် Perpendicular ဖြစ်စွာ တုန်ခါ",
            "လုံးဝ မတုန်ခါ",
            "စက်ဝိုင်းများဖြင့်သာ တုန်ခါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "The wave equation states speed equals frequency multiplied by...",
          questionMy:
              "Wave Equation အရ Speed သည် Frequency ကို ...ဖြင့် မြှောက်ထားခြင်းနှင့် ညီမျှသည်",
          optionsEn: ["Wavelength", "Amplitude", "Time period only", "Energy"],
          optionsMy: ["Wavelength", "Amplitude", "Time Period သာ", "Energy"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Diffraction is most noticeable when the gap width is close to the...",
          questionMy:
              "ကွက်လပ် အကျယ်သည် ...နှင့် နီးစပ်သည့်အခါ Diffraction သည် အထင်ရှားဆုံး ဖြစ်သည်",
          optionsEn: [
            "Wavelength",
            "Speed of light",
            "Amplitude",
            "Frequency in Hz",
          ],
          optionsMy: [
            "Wavelength",
            "အလင်း၏ Speed",
            "Amplitude",
            "Frequency (Hz)",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 10: "Light and Optics"
// =====================================================================

const CourseWeekDef _igcsePhysWeek10 = CourseWeekDef(
  id: "course-igcse-phys-w10",
  weekNumber: 10,
  titleEn: "Light and Optics",
  titleMy: "အလင်းနှင့် အလင်းဗေဒ (Optics)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w10-d1",
      dayNumber: 1,
      titleEn: "Reflection, Refraction, and Total Internal Reflection",
      titleMy: "Reflection, Refraction နှင့် Total Internal Reflection",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "According to the law of reflection, what is true about the angle of incidence and angle of reflection at a plane mirror?",
          questionMy:
              "Law of Reflection အရ Plane Mirror တစ်ခုတွင် Angle of Incidence နှင့် Angle of Reflection အကြောင်း အဘယ်သည် မှန်ကန်သနည်း။",
          optionsEn: [
            "They are always equal to each other",
            "The angle of reflection is always double the angle of incidence",
            "They have no relationship at all",
            "The angle of incidence is always 90 degrees",
          ],
          optionsMy: [
            "၎င်းတို့သည် တစ်ခုနှင့်တစ်ခု အမြဲ ညီမျှသည်",
            "Angle of Reflection သည် Angle of Incidence ၏ အမြဲ နှစ်ဆ ဖြစ်သည်",
            "၎င်းတို့တွင် မည်သည့်ဆက်နွှယ်မှုမျှ လုံးဝ မရှိပါ",
            "Angle of Incidence သည် အမြဲ ဒီဂရီ ၉၀ ဖြစ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Both angles are measured from the normal (a line perpendicular to the mirror surface at the point of reflection).",
          ],
          hintsMy: [
            "ထောင့် နှစ်ခုစလုံးကို Normal (Reflection ဖြစ်ရာ အချက်တွင် Mirror မျက်နှာပြင်နှင့် Perpendicular ဖြစ်သော မျဉ်း) မှ တိုင်းတာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A ray of light travels from air into glass, bending toward the normal. What does this tell us about the light's speed?",
          questionMy:
              "အလင်းတန်းတစ်ခုသည် လေမှ ဖန်ထဲသို့ ဝင်ရောက်ကာ Normal ဘက်သို့ ကွေ့သွားသည်။ ဤသည်က အလင်း၏ Speed အကြောင်း အဘယ်ကို ပြောပြသနည်း။",
          optionsEn: [
            "Light travels slower in glass than in air",
            "Light travels faster in glass than in air",
            "Light travels at the same speed in both",
            "Light stops moving entirely inside glass",
          ],
          optionsMy: [
            "အလင်းသည် လေထက် ဖန်တွင် ပို၍ နှေးကွေးစွာ ခရီးသွားသည်",
            "အလင်းသည် လေထက် ဖန်တွင် ပို၍ မြန်စွာ ခရီးသွားသည်",
            "အလင်းသည် နှစ်ခုလုံးတွင် တူညီသော Speed ဖြင့် ခရီးသွားသည်",
            "အလင်းသည် ဖန်အတွင်းတွင် လုံးလုံးလျားလျား ရွေ့လျားခြင်း ရပ်တန့်သွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Bending toward the normal when entering a medium indicates the wave has slowed down; bending away from the normal indicates speeding up.",
          ],
          hintsMy: [
            "အလယ်အလတ် တစ်ခုသို့ ဝင်ရောက်စဉ် Normal ဘက်သို့ ကွေ့ခြင်းသည် လှိုင်း နှေးကွေးလာကြောင်း ညွှန်ပြပြီး Normal မှ ဝေးကွာစွာ ကွေ့ခြင်းသည် မြန်လာကြောင်း ညွှန်ပြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Total internal reflection occurs when light travelling in a denser medium hits a boundary at an angle greater than the critical angle. What happens to the light?",
          questionMy:
              "Density ပို၍ ရှိသော အလယ်အလတ်တစ်ခုတွင် ခရီးသွားနေသော အလင်းသည် Critical Angle ထက် ပို၍ ကြီးသော ထောင့်တစ်ခုတွင် နယ်နိမိတ်တစ်ခုကို ထိတွေ့သည့်အခါ Total Internal Reflection ဖြစ်ပေါ်သည်။ အလင်းတွင် အဘယ်ဖြစ်လာသနည်း။",
          optionsEn: [
            "All the light is reflected back into the denser medium, with none refracting out",
            "All the light passes straight through unaffected",
            "The light is completely absorbed and disappears",
            "The light changes colour entirely",
          ],
          optionsMy: [
            "အလင်းအားလုံးသည် Density ပို၍ ရှိသော အလယ်အလတ်ထဲသို့ ပြန်ရောင်ပြန်ကာ အပြင်ဘက်သို့ Refract ဖြစ်ခြင်း လုံးဝ မရှိပါ",
            "အလင်းအားလုံးသည် သက်ရောက်မှု မရှိဘဲ တိုက်ရိုက် ဖြတ်သန်းသွားသည်",
            "အလင်းသည် လုံးလုံးလျားလျား စုပ်ယူခံရကာ ပျောက်ကွယ်သွားသည်",
            "အလင်းသည် လုံးလုံးလျားလျား အရောင် ပြောင်းလဲသွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This principle is used in optical fibres, where light reflects repeatedly along the fibre's internal boundary, carrying signals over long distances with minimal loss.",
          ],
          hintsMy: [
            "ဤ နိယာမကို Optical Fibre များတွင် အသုံးပြုပြီး အလင်းသည် Fibre ၏ အတွင်း နယ်နိမိတ်တစ်လျှောက် ထပ်ခါထပ်ခါ ပြန်ရောင်ပြန်ကာ အနည်းဆုံး ဆုံးရှုံးမှုဖြင့် Signal များကို ဝေးလံသော အကွာအဝေးအထိ သယ်ဆောင်ပေးသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w10-d2",
      dayNumber: 2,
      titleEn: "Match: Optics Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Optics ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w10-dm-1",
          termEn: "Normal",
          termMy: "Normal",
          matchEn:
              "An imaginary line perpendicular to a surface at the point light strikes it, used to measure angles",
          matchMy:
              "ထောင့်များ တိုင်းတာရန် အသုံးပြုသော အလင်းထိသော အချက်တွင် မျက်နှာပြင်နှင့် Perpendicular ဖြစ်သော စိတ်ကူးဖြင့် ဆွဲထားသော မျဉ်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w10-dm-2",
          termEn: "Refractive index",
          termMy: "Refractive Index",
          matchEn:
              "A number describing how much a material bends light, calculated as sin(i)/sin(r)",
          matchMy:
              "sin(i)/sin(r) ဖြင့် တွက်ချက်သော ပစ္စည်းတစ်ခုက အလင်းကို မည်မျှ ကွေ့စေကြောင်း ဖော်ပြသော ဂဏန်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w10-dm-3",
          termEn: "Critical angle",
          termMy: "Critical Angle",
          matchEn:
              "The angle of incidence beyond which total internal reflection occurs instead of refraction",
          matchMy:
              "ကျော်လွန်ပါက Refraction အစား Total Internal Reflection ဖြစ်ပေါ်စေသော Angle of Incidence",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w10-dm-4",
          termEn: "Total internal reflection",
          termMy: "Total Internal Reflection",
          matchEn:
              "All light reflecting back into a denser medium when it hits a boundary beyond the critical angle",
          matchMy:
              "Critical Angle ထက် ကျော်လွန်သော နယ်နိမိတ်တစ်ခုကို ထိတွေ့သည့်အခါ အလင်းအားလုံး Density ပို၍ ရှိသော အလယ်အလတ်သို့ ပြန်ရောင်ပြန်ခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w10-dm-5",
          termEn: "Optical fibre",
          termMy: "Optical Fibre",
          matchEn:
              "A thin glass strand that carries light signals using repeated total internal reflection",
          matchMy:
              "ထပ်ခါထပ်ခါ Total Internal Reflection ကို အသုံးပြု၍ အလင်း Signal များကို သယ်ဆောင်ပေးသော ပါးလွှာသော ဖန် ကြိုးမျှင်",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w10-d3",
      dayNumber: 3,
      titleEn: "Sort: Reflection, Refraction, or Total Internal Reflection?",
      titleMy:
          "စီစစ်ကြမည် - Reflection, Refraction သို့မဟုတ် Total Internal Reflection",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Reflection", "Refraction", "Total Internal Reflection"],
        bucketsMy: ["Reflection", "Refraction", "Total Internal Reflection"],
        items: [
          SortingItem(
            id: "igcsephys-w10-sort-1",
            labelEn:
                "Light bouncing off a plane mirror with angle of incidence equal to angle of reflection",
            labelMy:
                "Angle of Incidence သည် Angle of Reflection နှင့် ညီမျှစွာ Plane Mirror တစ်ခုမှ အလင်း ခုန်ကျခြင်း",
            correctBucketEn: "Reflection",
            correctBucketMy: "Reflection",
          ),
          SortingItem(
            id: "igcsephys-w10-sort-2",
            labelEn:
                "Light bending as it passes from air into water at an angle",
            labelMy:
                "ထောင့်တစ်ခုဖြင့် လေမှ ရေထဲသို့ ဖြတ်သန်းစဉ် အလင်း ကွေ့ဝင်ခြင်း",
            correctBucketEn: "Refraction",
            correctBucketMy: "Refraction",
          ),
          SortingItem(
            id: "igcsephys-w10-sort-3",
            labelEn:
                "Light inside an optical fibre bouncing repeatedly along the internal boundary",
            labelMy:
                "Optical Fibre အတွင်းရှိ အလင်းသည် အတွင်း နယ်နိမိတ်တစ်လျှောက် ထပ်ခါထပ်ခါ ခုန်ကျခြင်း",
            correctBucketEn: "Total Internal Reflection",
            correctBucketMy: "Total Internal Reflection",
          ),
          SortingItem(
            id: "igcsephys-w10-sort-4",
            labelEn:
                "A prism separating white light into a spectrum of colours",
            labelMy:
                "Prism တစ်ခုသည် အဖြူရောင် အလင်းကို အရောင်စုံ Spectrum အဖြစ် ခွဲထုတ်ခြင်း",
            correctBucketEn: "Refraction",
            correctBucketMy: "Refraction",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w10-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Optical Fibre Investigation",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ Optical Fibre စုံစမ်းစစ်ဆေးမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Optical Fibre Investigation",
        titleMy: "နေချည်၏ Optical Fibre စုံစမ်းစစ်ဆေးမှု",
        passageEn:
            "Ko Thura brought a bent glass rod to class and shone a laser pointer into one end, asking Nay Chi to predict what would happen to the light as it travelled along the curved path inside.\n\nShe recalled that glass is denser than air, and that light travelling inside a dense medium undergoes total internal reflection if it strikes the boundary at an angle greater than the critical angle for that material -- roughly 42 degrees for typical glass. As the laser light travelled along the curved rod, it repeatedly struck the internal glass-air boundary at angles greater than this critical angle, reflecting back into the glass each time rather than escaping outward, effectively trapping the light inside and guiding it along the curve until it emerged from the far end, still bright.\n\nKo Thura then asked why this glass rod experiment was directly relevant to real optical fibre communication cables used for internet data. Nay Chi explained that an optical fibre works on exactly the same principle, but is engineered far more precisely: a very thin glass core, surrounded by a cladding layer with a slightly lower refractive index, ensures light entering at a shallow angle always strikes the core-cladding boundary beyond the critical angle, guaranteeing total internal reflection at every single bounce along kilometres of cable. She noted one key advantage over old copper cables: since light signals experience far less energy loss over long distances than electrical signals in copper wire, and since optical fibres are immune to electrical interference, they can carry vastly more data, far more reliably, over much longer distances without needing as many signal boosters along the way.",
        passageMy:
            "ကိုသူရသည် ကွေ့ကောက်နေသော ဖန်တုတ်ချောင်းတစ်ချောင်းကို အတန်းသို့ ယူဆောင်လာပြီး Laser Pointer ကို အစွန်းတစ်ဖက်ထဲသို့ ထိုးလိုက်ကာ အတွင်းရှိ ကွေ့ကောက်သော လမ်းကြောင်းတစ်လျှောက် အလင်း ခရီးသွားစဉ် အဘယ်ဖြစ်လာမည်ကို ခန့်မှန်းရန် နေချည်ကို တောင်းဆိုခဲ့သည်။\n\nဖန်သည် လေထက် Density ပို၍ ရှိကြောင်း၊ Density ပို၍ ရှိသော အလယ်အလတ်တစ်ခုအတွင်း ခရီးသွားနေသော အလင်းသည် ထို ပစ္စည်းအတွက် Critical Angle -- ရိုးရိုး ဖန်အတွက် ဒီဂရီ ၄၂ ခန့် -- ထက် ပို၍ ကြီးသော ထောင့်တစ်ခုတွင် နယ်နိမိတ်ကို ထိတွေ့ပါက Total Internal Reflection ခံစားရကြောင်း သူမ သတိရခဲ့သည်။ Laser အလင်းသည် ကွေ့ကောက်နေသော တုတ်ချောင်းတစ်လျှောက် ခရီးသွားစဉ် ၎င်းသည် ဤ Critical Angle ထက် ပို၍ ကြီးသော ထောင့်များတွင် အတွင်း ဖန်-လေ နယ်နိမိတ်ကို ထပ်ခါထပ်ခါ ထိတွေ့ကာ အပြင်ဘက်သို့ ထွက်ပြေးမည့်အစား ဖန်ထဲသို့ တစ်ကြိမ်စီ ပြန်ရောင်ပြန်ကာ အလင်းကို အတွင်းတွင် ထိရောက်စွာ ထောင်ချောက်ချထားကာ တောက်ပနေဆဲ အစွန်း တစ်ဖက်မှ ထွက်လာသည်အထိ ကွေ့ကောက်နေသော လမ်းကြောင်းတစ်လျှောက် လမ်းညွှန်ပေးခဲ့သည်။\n\nဤ ဖန်တုတ်ချောင်း စမ်းသပ်မှုသည် Internet ဒေတာအတွက် အသုံးပြုသော အမှန်တကယ် Optical Fibre ဆက်သွယ်ရေး ကြိုးများနှင့် တိုက်ရိုက် သက်ဆိုင်ရသည့် အကြောင်းရင်းကို ထို့နောက် သူ မေးမြန်းခဲ့သည်။ Optical Fibre တစ်ခုသည် အတိအကျ တူညီသော နိယာမအပေါ် အလုပ်လုပ်သော်လည်း များစွာ ပို၍ တိကျစွာ အင်ဂျင်နီယာလုပ်ထားကြောင်း နေချည် ရှင်းပြခဲ့သည် - Refractive Index အနည်းငယ် နိမ့်သော Cladding အလွှာဖြင့် ဝန်းရံထားသော ပါးလွှာလှသော ဖန် Core တစ်ခုသည် ရှေ့ရှုထောင့် ကျဉ်းသော ထောင့်တွင် ဝင်ရောက်လာသော အလင်းသည် Critical Angle ထက် ကျော်လွန်သော Core-Cladding နယ်နိမိတ်ကို အမြဲ ထိတွေ့စေကြောင်း၊ ကြိုး ကီလိုမီတာနှင့်ချီသော အကွာအဝေးတစ်လျှောက် ခုန်ကျမှု တိုင်းတွင် Total Internal Reflection ကို အာမခံပေးကြောင်း သေချာစေသည်။ ဟောင်းနွမ်းနေသော ကြေးနီ ကြိုးများထက် အဓိက အားသာချက်တစ်ခုကို သူမ မှတ်ချက်ပြုခဲ့သည် - အလင်း Signal များသည် ကြေးနီ ကြိုးရှိ လျှပ်စစ် Signal များထက် ဝေးလံသော အကွာအဝေးများတွင် Energy ဆုံးရှုံးမှု များစွာ နည်းပါးသောကြောင့် နှင့် Optical Fibre များသည် လျှပ်စစ် ဟန်ချက်ပျက်မှုကို ခံနိုင်ရည်ရှိသောကြောင့် ၎င်းတို့သည် လမ်းတစ်လျှောက်တွင် Signal Booster များစွာ မလိုအပ်ဘဲ များစွာ ပို၍ များပြားသော ဒေတာကို များစွာ ပို၍ ယုံကြည်စိတ်ချစွာ၊ များစွာ ပို၍ ဝေးလံသော အကွာအဝေးများတွင် သယ်ဆောင်နိုင်ကြောင်း ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did the laser light stay trapped inside the curved glass rod?",
            questionMy:
                "Laser အလင်းသည် ကွေ့ကောက်နေသော ဖန်တုတ်ချောင်းအတွင်း ထောင်ချောက်ချခံနေရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It repeatedly struck the internal boundary at angles greater than the critical angle, causing total internal reflection",
              "The glass rod was painted black on the outside",
              "The laser was too weak to escape",
              "Glass absorbs all light instantly",
            ],
            optionsMy: [
              "၎င်းသည် Critical Angle ထက် ပို၍ ကြီးသော ထောင့်များတွင် အတွင်း နယ်နိမိတ်ကို ထပ်ခါထပ်ခါ ထိတွေ့ကာ Total Internal Reflection ဖြစ်စေခဲ့သောကြောင့်",
              "ဖန်တုတ်ချောင်း၏ အပြင်ဘက်ကို အနက်ရောင် သုတ်ထားသောကြောင့်",
              "Laser သည် ထွက်ပြေးရန် အားနည်းလွန်းခဲ့သောကြောင့်",
              "ဖန်သည် အလင်းအားလုံးကို ချက်ချင်း စုပ်ယူသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining why the light stayed trapped.",
            ],
            hintsMy: [
              "အလင်း ထောင်ချောက်ချခံနေရသည့် အကြောင်းရင်းကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what does the cladding layer's lower refractive index ensure?",
            questionMy:
                "Cladding အလွှာ၏ နိမ့်သော Refractive Index က အဘယ်ကို သေချာစေကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Light entering at a shallow angle always strikes the core-cladding boundary beyond the critical angle",
              "The fibre becomes completely opaque",
              "Light travels slower than in the old copper cables",
              "The fibre cannot carry any data at all",
            ],
            optionsMy: [
              "ရှေ့ရှုထောင့် ကျဉ်းသော ထောင့်တွင် ဝင်ရောက်လာသော အလင်းသည် Critical Angle ထက် ကျော်လွန်သော Core-Cladding နယ်နိမိတ်ကို အမြဲ ထိတွေ့သည်",
              "Fibre သည် လုံးလုံးလျားလျား Opaque ဖြစ်သွားသည်",
              "အလင်းသည် ဟောင်းနွမ်းနေသော ကြေးနီ ကြိုးများထက် ပို၍ နှေးကွေးစွာ ခရီးသွားသည်",
              "Fibre သည် ဒေတာ မည်သည်ကိုမျှ လုံးဝ သယ်ဆောင်၍ မရပါ",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the sentence about the core-cladding design."],
            hintsMy: [
              "Core-Cladding ဒီဇိုင်းအကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, what key advantage do optical fibres have over copper cables?",
            questionMy:
                "Optical Fibre များတွင် ကြေးနီ ကြိုးများထက် ရှိသော အဓိက အားသာချက်ကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "Far less energy loss over distance and immunity to electrical interference",
              "They are always shorter in length",
              "They are made entirely of copper",
              "They cannot carry any data at all",
            ],
            optionsMy: [
              "အကွာအဝေးတစ်လျှောက် Energy ဆုံးရှုံးမှု များစွာ နည်းပါးခြင်းနှင့် လျှပ်စစ် ဟန်ချက်ပျက်မှုကို ခံနိုင်ရည်ရှိခြင်း",
              "၎င်းတို့သည် အလျား အမြဲ ပို၍ တိုသည်",
              "၎င်းတို့သည် ကြေးနီဖြင့် လုံးလုံးလျားလျား ပြုလုပ်ထားသည်",
              "၎င်းတို့သည် ဒေတာ မည်သည်ကိုမျှ လုံးဝ သယ်ဆောင်၍ မရ",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w10-d5",
      dayNumber: 5,
      titleEn: "Week 10 Recap: Light and Optics",
      titleMy: "ဒဿမပတ် ပြန်လည်သုံးသပ်ခြင်း - Light and Optics",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "At a plane mirror, angle of incidence always equals...",
          questionMy:
              "Plane Mirror တစ်ခုတွင် Angle of Incidence သည် အမြဲ ...နှင့် ညီမျှသည်",
          optionsEn: [
            "Angle of reflection",
            "90 degrees",
            "Zero degrees",
            "The critical angle",
          ],
          optionsMy: [
            "Angle of Reflection",
            "ဒီဂရီ ၉၀",
            "ဒီဂရီ သုည",
            "Critical Angle",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Total internal reflection occurs when the angle of incidence exceeds the...",
          questionMy:
              "Angle of Incidence သည် ...ကို ကျော်လွန်သည့်အခါ Total Internal Reflection ဖြစ်ပေါ်သည်",
          optionsEn: ["Critical angle", "Normal", "Wavelength", "Frequency"],
          optionsMy: ["Critical Angle", "Normal", "Wavelength", "Frequency"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Optical fibres carry light signals using repeated...",
          questionMy:
              "Optical Fibre များသည် ထပ်ခါထပ်ခါ ...ကို အသုံးပြု၍ အလင်း Signal များကို သယ်ဆောင်သည်",
          optionsEn: [
            "Total internal reflection",
            "Diffraction",
            "Evaporation",
            "Convection",
          ],
          optionsMy: [
            "Total Internal Reflection",
            "Diffraction",
            "Evaporation",
            "Convection",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 11: "Sound Waves"
// =====================================================================

const CourseWeekDef _igcsePhysWeek11 = CourseWeekDef(
  id: "course-igcse-phys-w11",
  weekNumber: 11,
  titleEn: "Sound Waves",
  titleMy: "အသံလှိုင်းများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w11-d1",
      dayNumber: 1,
      titleEn: "Sound Production, Speed, and Echoes",
      titleMy: "Sound ဖြစ်ပေါ်ခြင်း၊ Speed နှင့် Echo",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Why can sound not travel through the vacuum of space, unlike light?",
          questionMy:
              "အလင်းနှင့် မတူဘဲ အသံသည် အာကာသ၏ Vacuum ကို ဖြတ်၍ ဘယ်တော့မှ ခရီးမသွားနိုင်ရသည့် အကြောင်းရင်းကား အဘယ်နည်း။",
          optionsEn: [
            "Sound is a longitudinal wave that requires particles of a medium to vibrate and pass energy along",
            "Sound travels faster than light in a vacuum",
            "Sound has no energy at all",
            "Space is too cold for sound to exist",
          ],
          optionsMy: [
            "အသံသည် Energy ကို ရွေ့လျားစေရန် အလယ်အလတ်တစ်ခု၏ အမှုန်များ တုန်ခါရန် လိုအပ်သော Longitudinal Wave ဖြစ်သောကြောင့်",
            "Vacuum တွင် အသံသည် အလင်းထက် ပို၍ မြန်စွာ ခရီးသွားသောကြောင့်",
            "အသံတွင် Energy လုံးဝ မရှိသောကြောင့်",
            "အာကာသသည် အသံ ရှိရန် အလွန် အေးလွန်းသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Unlike electromagnetic waves such as light, sound is a mechanical wave that needs a physical medium (solid, liquid, or gas) to travel through.",
          ],
          hintsMy: [
            "အလင်းကဲ့သို့ Electromagnetic လှိုင်းများနှင့် မတူဘဲ အသံသည် ဖြတ်သန်း ခရီးသွားရန် ရုပ်ပိုင်းဆိုင်ရာ အလယ်အလတ် (အစိုင်အခဲ၊ အရည် သို့မဟုတ် ဓာတ်ငွေ့) လိုအပ်သော Mechanical Wave ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "The speed of sound in air is approximately 340 m/s, while the speed of light is approximately 300,000,000 m/s. Why do you see lightning before you hear thunder from the same distant storm?",
          questionMy:
              "အသံ၏ Speed သည် လေတွင် ခန့်မှန်းအားဖြင့် 340 m/s ရှိပြီး အလင်း၏ Speed သည် ခန့်မှန်းအားဖြင့် 300,000,000 m/s ရှိသည်။ ဝေးကွာသော မိုးကြိုးမုန်တိုင်း တစ်ခုတည်းမှ လျှပ်စစ်ပြက်ခြင်းကို မိုးချုန်းသံမကြားမီ ဘာကြောင့် မြင်ရသနည်း။",
          optionsEn: [
            "Light travels vastly faster than sound, so it reaches your eyes almost instantly while the sound takes noticeably longer to arrive",
            "Light and sound travel at exactly the same speed",
            "Sound is always faster than light",
            "Lightning has no connection to thunder at all",
          ],
          optionsMy: [
            "အလင်းသည် အသံထက် များစွာ ပို၍ မြန်စွာ ခရီးသွားသောကြောင့် သင်၏ မျက်စိသို့ လုနီးပါး ချက်ချင်း ရောက်ရှိသော်လည်း အသံသည် ရောက်ရှိရန် ထင်ရှားစွာ ကြာမြင့်သည်",
            "အလင်းနှင့် အသံသည် အတိအကျ တူညီသော Speed ဖြင့် ခရီးသွားကြသည်",
            "အသံသည် အလင်းထက် အမြဲ ပို၍ မြန်သည်",
            "လျှပ်စစ်ပြက်ခြင်းသည် မိုးချုန်းသံနှင့် မည်သည့်ဆက်နွှယ်မှုမျှ လုံးဝ မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This same time-delay principle is used to estimate storm distance -- counting the seconds between seeing a flash and hearing thunder, then multiplying by the speed of sound.",
          ],
          hintsMy: [
            "ဤ တူညီသော အချိန်ကြန့်ကြာမှု နိယာမကို မုန်တိုင်း အကွာအဝေး ခန့်မှန်းရန် အသုံးပြုသည် -- လျှပ်စစ်ပြက်ခြင်း မြင်ရသည်မှ မိုးချုန်းသံ ကြားရသည်အထိ ဆက္ကန့်များကို ရေတွက်ကာ အသံ၏ Speed ဖြင့် မြှောက်ခြင်း ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Ultrasound has a frequency above 20,000 Hz, beyond the range of human hearing. Why is it used for medical imaging of unborn babies?",
          questionMy:
              "Ultrasound သည် လူသားများ ကြားနိုင်သော ကန့်သတ်ချက်ကို ကျော်လွန်ကာ 20,000 Hz ထက် ကြီးသော Frequency ရှိသည်။ ၎င်းကို မွေးဖွားရန် မတိုင်မီ ကလေးငယ်များ၏ ဆေးဘက်ဆိုင်ရာ ပုံရိပ်ဖော်ရန် အသုံးပြုရသည့် အကြောင်းရင်းကား အဘယ်နည်း။",
          optionsEn: [
            "It reflects off boundaries between different tissue types, allowing internal structures to be imaged safely without ionising radiation",
            "It is louder than normal human speech",
            "It destroys harmful bacteria in the body",
            "It has no medical use at all",
          ],
          optionsMy: [
            "မတူညီသော တစ္ဆူ (Tissue) အမျိုးအစားများကြား နယ်နိမိတ်များမှ ပြန်ရောင်ပြန်ကာ Ionising Radiation မပါဘဲ အတွင်းပိုင်း ဖွဲ့စည်းပုံများကို လုံခြုံစွာ ပုံရိပ်ဖော်နိုင်စေသောကြောင့်",
            "ရိုးရိုး လူသားများ၏ ပြောစကားထက် ပို၍ အသံကျယ်သောကြောင့်",
            "ခန္ဓာကိုယ်အတွင်းရှိ ဒုက္ခပေးသော ဘက်တီးရီးယားများကို ဖျက်ဆီးသောကြောင့်",
            "ဆေးဘက်ဆိုင်ရာ အသုံးချမှု လုံးဝ မရှိသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Ultrasound waves partially reflect at each tissue boundary, and timing these reflections builds up an image -- much safer for repeated use than X-rays, which use ionising radiation.",
          ],
          hintsMy: [
            "Ultrasound လှိုင်းများသည် တစ္ဆူ နယ်နိမိတ်တစ်ခုစီတွင် တစ်စိတ်တစ်ပိုင်း ပြန်ရောင်ပြန်ကာ ဤ ပြန်ရောင်ပြန်မှုများ၏ အချိန်ကို တွက်ချက်ခြင်းဖြင့် ပုံရိပ်တစ်ခု တည်ဆောက်ပေးသည် -- Ionising Radiation အသုံးပြုသော X-Ray များထက် ထပ်ခါထပ်ခါ အသုံးပြုရန် ပို၍ လုံခြုံသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w11-d2",
      dayNumber: 2,
      titleEn: "Match: Sound Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Sound ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w11-dm-1",
          termEn: "Echo",
          termMy: "Echo",
          matchEn:
              "Sound reflected off a surface, heard as a delayed repetition of the original sound",
          matchMy:
              "မျက်နှာပြင်တစ်ခုမှ ပြန်ရောင်ပြန်ပြီး မူလ အသံ၏ ကြန့်ကြာသော ထပ်ခါထပ်ခါ ကြားရသော အသံ",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w11-dm-2",
          termEn: "Ultrasound",
          termMy: "Ultrasound",
          matchEn:
              "Sound with a frequency above 20,000 Hz, beyond human hearing range",
          matchMy:
              "လူသား ကြားနိုင်သော ကန့်သတ်ချက်ကို ကျော်လွန်ကာ 20,000 Hz ထက် ကြီးသော Frequency ရှိသော အသံ",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w11-dm-3",
          termEn: "Compression",
          termMy: "Compression",
          matchEn:
              "A region in a sound wave where particles are pushed close together",
          matchMy:
              "အသံလှိုင်းတစ်ခုအတွင်း အမှုန်များ နီးကပ်စွာ တွန်းချထားသော ဒေသ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w11-dm-4",
          termEn: "Rarefaction",
          termMy: "Rarefaction",
          matchEn:
              "A region in a sound wave where particles are spread further apart",
          matchMy:
              "အသံလှိုင်းတစ်ခုအတွင်း အမှုန်များ ပို၍ ဝေးကွာစွာ ဖြန့်ကျဲထားသော ဒေသ",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w11-dm-5",
          termEn: "Human hearing range",
          termMy: "Human Hearing Range",
          matchEn:
              "Approximately 20 Hz to 20,000 Hz, the range of frequencies a typical human ear can detect",
          matchMy:
              "ခန့်မှန်းအားဖြင့် 20 Hz မှ 20,000 Hz အထိ၊ ရိုးရိုး လူသား နားတစ်ဖက်က ဖော်ထုတ်နိုင်သော Frequency အတိုင်းအတာ",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w11-d3",
      dayNumber: 3,
      titleEn: "Sort: Sound Property or Light Property?",
      titleMy: "စီစစ်ကြမည် - Sound Property လား၊ Light Property လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Sound Property", "Light Property"],
        bucketsMy: ["Sound Property", "Light Property"],
        items: [
          SortingItem(
            id: "igcsephys-w11-sort-1",
            labelEn: "Cannot travel through a vacuum",
            labelMy: "Vacuum ကို ဖြတ်၍ ခရီးမသွားနိုင်",
            correctBucketEn: "Sound Property",
            correctBucketMy: "Sound Property",
          ),
          SortingItem(
            id: "igcsephys-w11-sort-2",
            labelEn: "Travels at approximately 300,000,000 m/s in a vacuum",
            labelMy:
                "Vacuum တွင် ခန့်မှန်းအားဖြင့် 300,000,000 m/s ဖြင့် ခရီးသွားသည်",
            correctBucketEn: "Light Property",
            correctBucketMy: "Light Property",
          ),
          SortingItem(
            id: "igcsephys-w11-sort-3",
            labelEn:
                "Is a longitudinal wave with compressions and rarefactions",
            labelMy:
                "Compression နှင့် Rarefaction ပါဝင်သော Longitudinal Wave တစ်ခု ဖြစ်သည်",
            correctBucketEn: "Sound Property",
            correctBucketMy: "Sound Property",
          ),
          SortingItem(
            id: "igcsephys-w11-sort-4",
            labelEn: "Is a transverse wave that can travel through a vacuum",
            labelMy:
                "Vacuum ကို ဖြတ်၍ ခရီးသွားနိုင်သော Transverse Wave တစ်ခု ဖြစ်သည်",
            correctBucketEn: "Light Property",
            correctBucketMy: "Light Property",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w11-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Speed of Sound Experiment",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ Speed of Sound စမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Speed of Sound Experiment",
        titleMy: "နေချည်၏ Speed of Sound စမ်းသပ်မှု",
        passageEn:
            "Ko Thura took Nay Chi to a large, empty sports field with a tall brick wall at one end, and handed her a stopwatch and two wooden clappers to measure the speed of sound experimentally.\n\nShe stood exactly 170 m from the wall and clapped the two blocks together sharply, starting the stopwatch at the moment of the clap and stopping it the instant she heard the echo return. Averaging several repeated trials to reduce timing errors, she measured a time of exactly 1.0 second between the clap and the echo. Ko Thura reminded her that the sound had to travel from her position to the wall and then all the way back again, meaning the total distance covered was double the distance to the wall: 170 m x 2 = 340 m.\n\nUsing speed = distance / time, Nay Chi calculated the speed of sound: 340 m / 1.0 s = 340 m/s, matching the accepted value for the speed of sound in air closely. Ko Thura then asked why she needed to double the distance rather than simply dividing 170 m by 1.0 s. Nay Chi explained that doing so would have given her half the correct answer, since the stopwatch was measuring the time for a round trip -- sound travelling out to the wall and then echoing all the way back to her ears -- not simply a one-way journey, a distinction identical in principle to the round-trip logic used when calculating orbital distances using radar or sonar reflection times in other areas of physics.",
        passageMy:
            "ကိုသူရသည် နေချည်ကို အစွန်းတစ်ဖက်တွင် မြင့်မားသော အုတ်နံရံ ရှိသော ကျယ်ပြန့်၍ ဗလာ အားကစားကွင်းသို့ ခေါ်ဆောင်သွားပြီး Speed of Sound ကို စမ်းသပ်မှု ပြုလုပ် တိုင်းတာရန် Stopwatch တစ်ခုနှင့် သစ်သား Clapper နှစ်ခုကို ပေးအပ်ခဲ့သည်။\n\nသူမသည် နံရံမှ 170 m အတိအကျ တွင် ရပ်ပြီး သစ်သား ဘလောက်နှစ်ခုကို ထက်ထက်မြက်မြက် ရိုက်ခဲ့ကာ ရိုက်ချက်၏ အခိုက်တွင် Stopwatch ကို စတင်ကာ Echo ပြန်လာသည့် ခဏတွင် ရပ်တန့်ခဲ့သည်။ အချိန်ယူမှု အမှားများကို လျော့ချရန် ထပ်ခါထပ်ခါ စမ်းသပ်ချက်များကို ပျမ်းမျှတွက်ချက်ကာ ရိုက်ချက်နှင့် Echo ကြား 1.0 ဆက္ကန့် အတိအကျ ကြာချိန်ကို တိုင်းတာခဲ့သည်။ အသံသည် သူမ၏ တည်နေရာမှ နံရံသို့ ခရီးသွားပြီး ထို့နောက် ပြန်လည် လမ်းအကုန် ခရီးသွားရမည် ဖြစ်ကြောင်း၊ ဆိုလိုသည်မှာ ဖုံးလွှမ်းခဲ့သော စုစုပေါင်း အကွာအဝေးသည် နံရံအထိ အကွာအဝေး၏ နှစ်ဆ ဖြစ်ကြောင်း ကိုသူရ သူမကို သတိပေးခဲ့သည် - 170 m x 2 = 340 m ။\n\nSpeed = Distance / Time ကို အသုံးပြု၍ နေချည်သည် Speed of Sound ကို တွက်ချက်ခဲ့သည် - 340 m / 1.0 s = 340 m/s၊ လေထုအတွင်း Speed of Sound အတွက် လက်ခံထားသော တန်ဖိုးနှင့် နီးကပ်စွာ ကိုက်ညီခဲ့သည်။ 170 m ကို 1.0 s ဖြင့် ရိုးရိုးရှင်းရှင်း စားမည့်အစား အကွာအဝေးကို နှစ်ဆ တိုးရသည့် အကြောင်းရင်းကို ထို့နောက် သူ မေးမြန်းခဲ့သည်။ ဤသို့ လုပ်ဆောင်ခဲ့ပါက သူမကို မှန်ကန်သော အဖြေ၏ ထက်ဝက်ကိုသာ ပေးလိမ့်မည်ဟု နေချည် ရှင်းပြခဲ့သည်၊ အကြောင်းမှာ Stopwatch သည် အသွား-အပြန် ခရီးအတွက် အချိန်ကို တိုင်းတာနေခြင်း ဖြစ်သောကြောင့်ဖြစ်သည် -- အသံသည် နံရံသို့ သွားပြီး ထို့နောက် သူမ၏ နားများသို့ လမ်းအကုန် Echo ပြန်လာခြင်း -- ခရီးတစ်ဖက်တည်း ရိုးရိုးရှင်းရှင်း မဟုတ်ပါ၊ ဤသည်ကား ရူပဗေဒ၏ အခြား နယ်ပယ်များတွင် Radar သို့မဟုတ် Sonar ပြန်ရောင်ပြန် အချိန်များကို အသုံးပြု၍ Orbital အကွာအဝေးများ တွက်ချက်သည့်အခါ အသုံးပြုသော အသွား-အပြန် ခရီး ယုတ္တိဗေဒနှင့် နိယာမအရ တူညီသော ကွာခြားချက် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the total distance the sound travelled?",
            questionMy:
                "အသံ ခရီးသွားခဲ့သော စုစုပေါင်း အကွာအဝေးကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: ["340 m", "170 m", "1.0 m", "510 m"],
            optionsMy: ["340 m", "170 m", "1.0 m", "510 m"],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about doubling the distance to the wall.",
            ],
            hintsMy: [
              "နံရံအထိ အကွာအဝေးကို နှစ်ဆ တိုးခြင်းအကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what speed of sound did Nay Chi calculate?",
            questionMy:
                "နေချည် တွက်ချက်ခဲ့သော Speed of Sound ကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: ["340 m/s", "170 m/s", "1.0 m/s", "680 m/s"],
            optionsMy: ["340 m/s", "170 m/s", "1.0 m/s", "680 m/s"],
            correctIndex: 0,
            hintsEn: ["Reread the division calculation in paragraph 3."],
            hintsMy: ["စာပိုဒ် ၃ ရှိ စား၍ တွက်ချက်မှုကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, why would dividing 170 m by 1.0 s directly have given the wrong answer?",
            questionMy:
                "170 m ကို 1.0 s ဖြင့် တိုက်ရိုက် စားခြင်းက မှားယွင်းသော အဖြေကို ပေးလိမ့်မည့် အကြောင်းရင်းကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "The stopwatch measured a round-trip time, not a one-way journey",
              "170 m was measured incorrectly",
              "The stopwatch was broken",
              "Sound does not actually travel to walls",
            ],
            optionsMy: [
              "Stopwatch သည် ခရီးတစ်ဖက်တည်း မဟုတ်ဘဲ အသွား-အပြန် အချိန်ကို တိုင်းတာနေသောကြောင့်",
              "170 m ကို မှားယွင်းစွာ တိုင်းတာခဲ့သောကြောင့်",
              "Stopwatch ကျိုးပေါက်နေသောကြောင့်",
              "အသံသည် နံရံများသို့ အမှန်တကယ် ခရီးမသွားသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w11-d5",
      dayNumber: 5,
      titleEn: "Week 11 Recap: Sound Waves",
      titleMy: "ဧကာဒသမပတ် ပြန်လည်သုံးသပ်ခြင်း - Sound Waves",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Sound cannot travel through a vacuum because it needs...",
          questionMy:
              "အသံသည် ...လိုအပ်သောကြောင့် Vacuum ကို ဖြတ်၍ ခရီးမသွားနိုင်ပါ",
          optionsEn: [
            "A medium of particles",
            "Bright light",
            "High temperature",
            "A magnetic field",
          ],
          optionsMy: [
            "အမှုန်များ၏ အလယ်အလတ်တစ်ခု",
            "တောက်ပသော အလင်း",
            "မြင့်မားသော အပူချိန်",
            "သံလိုက်စက်ကွင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The typical human hearing range is approximately...",
          questionMy:
              "ရိုးရိုး လူသား ကြားနိုင်သော ကန့်သတ်ချက်သည် ခန့်မှန်းအားဖြင့်...",
          optionsEn: [
            "20 Hz to 20,000 Hz",
            "0 Hz to 5 Hz",
            "1,000,000 Hz to 2,000,000 Hz",
            "Unlimited",
          ],
          optionsMy: [
            "20 Hz မှ 20,000 Hz",
            "0 Hz မှ 5 Hz",
            "1,000,000 Hz မှ 2,000,000 Hz",
            "ကန့်သတ်ချက် မရှိ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An echo is caused by sound...",
          questionMy: "Echo သည် အသံ...ကြောင့် ဖြစ်ပေါ်သည်",
          optionsEn: [
            "Reflecting off a surface",
            "Disappearing entirely",
            "Speeding up infinitely",
            "Turning into light",
          ],
          optionsMy: [
            "မျက်နှာပြင်တစ်ခုမှ ပြန်ရောင်ပြန်ခြင်း",
            "လုံးလုံးလျားလျား ပျောက်ကွယ်သွားခြင်း",
            "အကန့်အသတ်မရှိ မြန်လာခြင်း",
            "အလင်းအဖြစ် ပြောင်းလဲသွားခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 12: "Waves and Optics Practical Studio" (Term 3 Capstone)
// =====================================================================

const CourseWeekDef _igcsePhysWeek12 = CourseWeekDef(
  id: "course-igcse-phys-w12",
  weekNumber: 12,
  titleEn: "Waves and Optics Practical Studio",
  titleMy: "လှိုင်းနှင့် အလင်းဗေဒ ဓာတ်ခွဲခန်း အလုပ်ရုံ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w12-d1",
      dayNumber: 1,
      titleEn: "Glass Block Refraction and Ripple Tank Calculations",
      titleMy: "Glass Block Refraction နှင့် Ripple Tank တွက်ချက်မှုများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In a glass block refraction experiment, a ray enters at 40 degrees to the normal and refracts to 25 degrees. What can you conclude?",
          questionMy:
              "Glass Block Refraction စမ်းသပ်မှုတစ်ခုတွင် အလင်းတန်းတစ်ခုသည် Normal နှင့် ဒီဂရီ ၄၀ တွင် ဝင်ရောက်ကာ ဒီဂရီ ၂၅ သို့ Refract ဖြစ်သည်။ သင် အဘယ်ကို ကောက်ချက်ချနိုင်သနည်း။",
          optionsEn: [
            "The glass is denser than air, since the ray bent toward the normal (smaller angle)",
            "The glass is less dense than air",
            "No refraction actually occurred",
            "The ray reflected instead of refracting",
          ],
          optionsMy: [
            "ဖန်သည် လေထက် Density ပို၍ ရှိသည်၊ အလင်းတန်း Normal ဘက်သို့ ကွေ့သွားခဲ့သောကြောင့် (ထောင့် ငယ်လာခြင်း)",
            "ဖန်သည် လေထက် Density ပို၍ နည်းသည်",
            "Refraction အမှန်တကယ် ဖြစ်ပေါ်ခဲ့ခြင်း မရှိပါ",
            "အလင်းတန်းသည် Refract မဟုတ်ဘဲ Reflect ဖြစ်ခဲ့သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Bending toward the normal (the angle decreasing from 40 to 25 degrees) always indicates entering a denser, slower medium.",
          ],
          hintsMy: [
            "Normal ဘက်သို့ ကွေ့ခြင်း (ထောင့် ၄၀ မှ ၂၅ ဒီဂရီသို့ လျော့ကျခြင်း) သည် Density ပို၍ ရှိသော၊ ပို၍ နှေးကွေးသော အလယ်အလတ်တစ်ခုသို့ ဝင်ရောက်ကြောင်း အမြဲ ညွှန်ပြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a ripple tank, waves have a wavelength of 3 cm and a frequency of 4 Hz. What is their speed?",
          questionMy:
              "Ripple Tank တစ်ခုတွင် လှိုင်းများသည် Wavelength 3 cm နှင့် Frequency 4 Hz ရှိသည်။ ၎င်းတို့၏ Speed ကား အဘယ်နည်း။",
          optionsEn: ["12 cm/s (3 x 4)", "0.75 cm/s", "7 cm/s", "1 cm/s"],
          optionsMy: ["12 cm/s (3 x 4)", "0.75 cm/s", "7 cm/s", "1 cm/s"],
          correctIndex: 0,
          hintsEn: ["v = f x lambda = 4 Hz x 3 cm = 12 cm/s."],
          hintsMy: ["v = f x lambda = 4 Hz x 3 cm = 12 cm/s ။"],
        ),
        QuizQuestion(
          questionEn:
              "In a ripple tank, waves crossing from deep water into a shallower region slow down. What happens to their wavelength if frequency stays constant?",
          questionMy:
              "Ripple Tank တစ်ခုတွင် ရေနက်မှ ရေတိမ်ဒေသသို့ ဖြတ်သန်းသော လှိုင်းများ နှေးကွေးလာသည်။ Frequency တည်ငြိမ်စွာ ဆက်ရှိနေပါက ၎င်းတို့၏ Wavelength တွင် အဘယ်ဖြစ်လာသနည်း။",
          optionsEn: [
            "The wavelength decreases, since v = f x lambda and f is fixed while v decreases",
            "The wavelength increases",
            "The wavelength stays exactly the same",
            "The wavelength becomes infinite",
          ],
          optionsMy: [
            "v = f x lambda ဖြစ်ပြီး v လျော့ကျစဉ် f ကို တည်ငြိမ်ထားသောကြောင့် Wavelength လျော့ကျသည်",
            "Wavelength တိုးလာသည်",
            "Wavelength အတိအကျ တူညီနေသည်",
            "Wavelength သည် Infinite ဖြစ်သွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Since v = f x lambda, if v decreases and f is unchanged, lambda must decrease proportionally to keep the equation balanced.",
          ],
          hintsMy: [
            "v = f x lambda ဖြစ်သောကြောင့် v လျော့ကျပြီး f မပြောင်းလဲပါက ညီမျှခြင်းကို ဟန်ချက်ညီစေရန် lambda သည် အချိုးကျ လျော့ကျရမည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w12-d2",
      dayNumber: 2,
      titleEn: "Match: Term 3 Recap Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - တတိယတန်း ပြန်လည်သုံးသပ်ခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w12-dm-1",
          termEn: "Angle of incidence",
          termMy: "Angle of Incidence",
          matchEn:
              "The angle between an incoming ray and the normal at the point it strikes a surface",
          matchMy:
              "ဝင်ရောက်လာသော အလင်းတန်းနှင့် ၎င်း မျက်နှာပြင်ကို ထိသော အချက်ရှိ Normal ကြား ထောင့်",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w12-dm-2",
          termEn: "Angle of refraction",
          termMy: "Angle of Refraction",
          matchEn:
              "The angle between the refracted ray and the normal after passing into a new medium",
          matchMy:
              "အလယ်အလတ်အသစ်တစ်ခုထဲသို့ ဖြတ်သန်းပြီးနောက် Refract ဖြစ်သော အလင်းတန်းနှင့် Normal ကြား ထောင့်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w12-dm-3",
          termEn: "Ripple tank",
          termMy: "Ripple Tank",
          matchEn:
              "A shallow water tray used to demonstrate wave behaviour such as reflection, refraction, and diffraction",
          matchMy:
              "Reflection, Refraction နှင့် Diffraction ကဲ့သို့ လှိုင်း အမူအကျင့်ကို သရုပ်ပြရန် အသုံးပြုသော ရေတိမ် ခွက်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w12-dm-4",
          termEn: "Sound reflection (echo timing)",
          termMy: "Sound Reflection (Echo Timing)",
          matchEn:
              "Using the time delay of a returning echo to calculate distance, since the sound makes a round trip",
          matchMy:
              "အသံသည် အသွား-အပြန် ခရီးလုပ်သောကြောင့် အကွာအဝေးကို တွက်ချက်ရန် ပြန်လာသော Echo ၏ အချိန်ကြန့်ကြာမှုကို အသုံးပြုခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w12-dm-5",
          termEn: "Wave speed decreasing in shallower water",
          termMy: "ရေတိမ်တွင် Wave Speed လျော့ကျခြင်း",
          matchEn:
              "Causes wavelength to decrease proportionally, since frequency stays constant",
          matchMy:
              "Frequency တည်ငြိမ်စွာ ဆက်ရှိနေသောကြောင့် Wavelength ကို အချိုးကျ လျော့ကျစေသည်",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w12-d3",
      dayNumber: 3,
      titleEn: "Sort: Waves Concept or Optics Concept?",
      titleMy: "စီစစ်ကြမည် - Waves သဘောတရားလား၊ Optics သဘောတရားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Waves Concept", "Optics Concept"],
        bucketsMy: ["Waves Concept", "Optics Concept"],
        items: [
          SortingItem(
            id: "igcsephys-w12-sort-1",
            labelEn:
                "Calculating wave speed using v = f x lambda in a ripple tank",
            labelMy:
                "Ripple Tank တစ်ခုတွင် v = f x lambda ကို အသုံးပြု၍ Wave Speed တွက်ချက်ခြင်း",
            correctBucketEn: "Waves Concept",
            correctBucketMy: "Waves Concept",
          ),
          SortingItem(
            id: "igcsephys-w12-sort-2",
            labelEn:
                "Determining whether glass is denser than air from a refracted ray's bend",
            labelMy:
                "Refract ဖြစ်သော အလင်းတန်း ကွေ့ခြင်းမှ ဖန်သည် လေထက် Density ရှိမရှိ ဆုံးဖြတ်ခြင်း",
            correctBucketEn: "Optics Concept",
            correctBucketMy: "Optics Concept",
          ),
          SortingItem(
            id: "igcsephys-w12-sort-3",
            labelEn:
                "Using critical angle to explain total internal reflection in an optical fibre",
            labelMy:
                "Optical Fibre တစ်ခုတွင် Total Internal Reflection ကို ရှင်းပြရန် Critical Angle ကို အသုံးပြုခြင်း",
            correctBucketEn: "Optics Concept",
            correctBucketMy: "Optics Concept",
          ),
          SortingItem(
            id: "igcsephys-w12-sort-4",
            labelEn:
                "Explaining why diffraction is strongest when gap size matches wavelength",
            labelMy:
                "ကွက်လပ် အရွယ်အစားသည် Wavelength နှင့် ကိုက်ညီသည့်အခါ Diffraction အားအကောင်းဆုံး ဖြစ်ရသည့် အကြောင်းရင်း ရှင်းပြခြင်း",
            correctBucketEn: "Waves Concept",
            correctBucketMy: "Waves Concept",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w12-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Term 3 Waves and Optics Review",
      titleMy:
          "စာဖတ်ခြင်း - နေချည်၏ တတိယတန်း Waves and Optics ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Term 3 Waves and Optics Review",
        titleMy: "နေချည်၏ တတိယတန်း Waves and Optics ပြန်လည်သုံးသပ်ခြင်း",
        passageEn:
            "For her Term 3 final review, Ko Thura gave Nay Chi a single unifying question: what does a general wave property from Week 9 have to do with the specific behaviour of both light and sound covered in Weeks 10 and 11?\n\nShe began with the wave equation itself, v = f x lambda, and pointed out that this single relationship applied identically to every wave she had studied that term -- light, sound, and water ripples alike -- even though these waves differed enormously in speed, in whether they needed a medium, and in whether they were transverse or longitudinal. What changed between wave types was not the underlying equation, but the specific values: light's staggering speed of 300,000,000 m/s in a vacuum, compared to sound's comparatively leisurely 340 m/s in air, meant that for the same frequency, light waves had enormously longer wavelengths than sound waves of the same pitch would have as sound.\n\nKo Thura then asked her to connect refraction and total internal reflection, both explained purely in terms of a wave's speed changing between media, to the diffraction rule from Week 9 about gap size versus wavelength. Nay Chi explained that all of these behaviours ultimately traced back to the same wave equation and the same fundamental idea: a wave's speed and wavelength are linked, and both properties determine how the wave interacts with boundaries, gaps, and obstacles it encounters. Light's extremely short wavelength meant it refracted sharply at boundaries and diffracted negligibly around everyday objects, while sound's much longer wavelength meant it diffracted noticeably around corners and obstacles that would cast a sharp shadow for light. Ko Thura was satisfied that Nay Chi had found the single mathematical thread -- the wave equation -- running underneath every seemingly separate topic in the entire term.",
        passageMy:
            "တတိယတန်း နောက်ဆုံး ပြန်လည်သုံးသပ်ခြင်းအတွက် ကိုသူရသည် နေချည်ကို ပေါင်းစည်းသော မေးခွန်းတစ်ခု ပေးအပ်ခဲ့သည် - ပတ် ၉ မှ General Wave Property တစ်ခုသည် ပတ် ၁၀ နှင့် ၁၁ တွင် ဖော်ပြထားသော အလင်းနှင့် အသံ နှစ်ခုစလုံး၏ တိကျသော အမူအကျင့်နှင့် အဘယ်သို့ ဆက်နွှယ်နေသနည်း။\n\nသူမသည် Wave Equation ကိုယ်တိုင်၊ v = f x lambda ဖြင့် စတင်ခဲ့ပြီး ဤ တစ်ခုတည်းသော ဆက်နွှယ်မှုသည် ထိုတန်းတွင် သင်ယူခဲ့ရသော လှိုင်းတိုင်းအတွက် -- အလင်း၊ အသံနှင့် ရေလှိုင်း ချောင်ချင်းများ တူညီစွာ -- ဤ လှိုင်းများသည် Speed တွင်၊ အလယ်အလတ် လိုအပ်ခြင်း ရှိမရှိတွင်နှင့် Transverse သို့မဟုတ် Longitudinal ဖြစ်ခြင်းတွင် များစွာ ကွာခြားနေသည်ဖြစ်စေ တူညီစွာ သက်ရောက်ကြောင်း ထောက်ပြခဲ့သည်။ လှိုင်း အမျိုးအစားများကြား ပြောင်းလဲသည်မှာ အခြေခံ ညီမျှခြင်း မဟုတ်ဘဲ တိကျသော တန်ဖိုးများသာ ဖြစ်ခဲ့သည် - Vacuum တွင် အလင်း၏ အံ့သြဖွယ် Speed 300,000,000 m/s ကို လေထုတွင် အသံ၏ နှိုင်းယှဉ်အားဖြင့် အေးဆေးသော 340 m/s နှင့် နှိုင်းယှဉ်လျှင် တူညီသော Frequency အတွက် အလင်းလှိုင်းများသည် တူညီသော အသံအနိမ့်အမြင့် (Pitch) ရှိသော အသံလှိုင်းများထက် များစွာ ရှည်လျားသော Wavelength ရှိကြောင်း ဆိုလိုသည်။\n\nအလယ်အလတ်များကြား လှိုင်း၏ Speed ပြောင်းလဲမှုအရ သန့်ရှင်းစွာ ရှင်းပြထားသော Refraction နှင့် Total Internal Reflection နှစ်ခုစလုံးကို ကွက်လပ် အရွယ်အစားနှင့် Wavelength အကြောင်း ပတ် ၉ မှ Diffraction စည်းမျဉ်းနှင့် ချိတ်ဆက်ရန် ကိုသူရ ထို့နောက် သူမကို တောင်းဆိုခဲ့သည်။ ဤ အမူအကျင့်များ အားလုံးသည် နောက်ဆုံးတွင် တူညီသော Wave Equation နှင့် တူညီသော အခြေခံ အယူအဆသို့ ပြန်ချိတ်ဆက်ကြောင်း နေချည် ရှင်းပြခဲ့သည် - လှိုင်း၏ Speed နှင့် Wavelength သည် ချိတ်ဆက်နေပြီး ဂုဏ်သတ္တိ နှစ်ခုစလုံးသည် လှိုင်းသည် ကြုံတွေ့ရသော နယ်နိမိတ်များ၊ ကွက်လပ်များနှင့် အတားအဆီးများနှင့် မည်သို့ ဆက်ဆံသည်ကို ဆုံးဖြတ်ပေးသည်။ အလင်း၏ အလွန် တိုတောင်းသော Wavelength က ၎င်းကို နယ်နိမိတ်များတွင် ထက်မြတ်စွာ Refract ဖြစ်စေပြီး နေ့စဉ် ပစ္စည်းများ ပတ်လည်တွင် လျစ်လျူရှုနိုင်လောက်အောင် Diffract ဖြစ်စေသည်ဟု ဆိုလိုပြီး၊ အသံ၏ များစွာ ပို၍ ရှည်လျားသော Wavelength က အလင်းအတွက် ရှင်းလင်းသော အရိပ်ကို ကျရောက်စေမည့် ထောင့်များနှင့် အတားအဆီးများ ပတ်လည်တွင် ၎င်းကို ထင်ရှားစွာ Diffract ဖြစ်စေသည်ဟု ဆိုလိုသည်။ ဤတန်းတစ်လျှောက်လုံးရှိ သီးခြားဟု ထင်ရသော ခေါင်းစဉ်တိုင်း၏ အောက်ခြေတွင် ရွေးလျှောက်နေသော တစ်ခုတည်းသော သင်္ချာဆိုင်ရာ ကွင်းဆက် -- Wave Equation -- ကို နေချည် တွေ့ရှိနိုင်ခဲ့ကြောင်း ကိုသူရ ကျေနပ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what changed between different wave types, if not the underlying equation?",
            questionMy:
                "အခြေခံ ညီမျှခြင်း မဟုတ်ပါက လှိုင်း အမျိုးအစားများကြား အဘယ်ပြောင်းလဲခဲ့ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The specific values, such as speed and resulting wavelength",
              "The colour of the wave equation itself",
              "Nothing changed at all between wave types",
              "The wave equation applied to only one type of wave",
            ],
            optionsMy: [
              "Speed နှင့် ရလဒ် Wavelength ကဲ့သို့ တိကျသော တန်ဖိုးများ",
              "Wave Equation ကိုယ်တိုင်၏ အရောင်",
              "လှိုင်း အမျိုးအစားများကြား မည်သည့်အရာမျှ လုံးဝ မပြောင်းလဲခဲ့ပါ",
              "Wave Equation သည် လှိုင်း အမျိုးအစား တစ်ခုတည်းတွင်သာ သက်ရောက်ခဲ့သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining what changed between wave types.",
            ],
            hintsMy: [
              "လှိုင်း အမျိုးအစားများကြား အဘယ်ပြောင်းလဲကြောင်း ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why does light diffract negligibly around everyday objects while sound diffracts noticeably?",
            questionMy:
                "အသံသည် ထင်ရှားစွာ Diffract ဖြစ်သော်လည်း အလင်းသည် နေ့စဉ် ပစ္စည်းများ ပတ်လည်တွင် လျစ်လျူရှုနိုင်လောက်အောင် Diffract ဖြစ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Light's wavelength is extremely short compared to everyday objects, while sound's wavelength is much longer",
              "Light travels slower than sound",
              "Sound cannot diffract at all",
              "Light has no wavelength at all",
            ],
            optionsMy: [
              "အလင်း၏ Wavelength သည် နေ့စဉ် ပစ္စည်းများနှင့် နှိုင်းယှဉ်လျှင် အလွန် တိုတောင်းသော်လည်း အသံ၏ Wavelength မှာမူ များစွာ ရှည်လျားသောကြောင့်",
              "အလင်းသည် အသံထက် ပို၍ နှေးကွေးစွာ ခရီးသွားသောကြောင့်",
              "အသံသည် လုံးဝ Diffract ဖြစ်၍ မရသောကြောင့်",
              "အလင်းတွင် Wavelength လုံးဝ မရှိသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence comparing light's and sound's wavelengths.",
            ],
            hintsMy: [
              "အလင်းနှင့် အသံ၏ Wavelength ကို နှိုင်းယှဉ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, what single mathematical thread did Ko Thura say ran underneath the whole term's topics?",
            questionMy:
                "ဤတန်းတစ်လျှောက်လုံး၏ ခေါင်းစဉ်များအောက်ခြေတွင် ရွေးလျှောက်နေကြောင်း ကိုသူရ ပြောကြားခဲ့သော တစ်ခုတည်းသော သင်္ချာဆိုင်ရာ ကွင်းဆက်ကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "The wave equation (v = f x lambda)",
              "The formula for density",
              "Newton's second law",
              "The formula for specific heat capacity",
            ],
            optionsMy: [
              "Wave Equation (v = f x lambda)",
              "Density Formula",
              "Newton's Second Law",
              "Specific Heat Capacity Formula",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w12-d5",
      dayNumber: 5,
      titleEn: "Term 3 Recap: Properties of Waves",
      titleMy: "တတိယတန်း ပြန်လည်သုံးသပ်ခြင်း - Properties of Waves",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The wave equation v = f x lambda applies to...",
          questionMy: "Wave Equation v = f x lambda သည် ...တွင် သက်ရောက်သည်",
          optionsEn: [
            "Every type of wave, including light, sound, and water waves",
            "Only light waves",
            "Only sound waves",
            "No waves at all",
          ],
          optionsMy: [
            "အလင်း၊ အသံနှင့် ရေလှိုင်း အပါအဝင် လှိုင်း အမျိုးအစားတိုင်း",
            "အလင်းလှိုင်းများသာ",
            "အသံလှိုင်းများသာ",
            "လှိုင်း မည်သည်တွင်မှ မသက်ရောက်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Total internal reflection can occur only when light travels from a...",
          questionMy:
              "Total Internal Reflection သည် အလင်း ...မှ ခရီးသွားသည့်အခါသာ ဖြစ်ပေါ်နိုင်သည်",
          optionsEn: [
            "Denser medium toward a less dense medium",
            "Less dense medium toward a denser medium",
            "Vacuum toward another vacuum",
            "Solid toward another identical solid",
          ],
          optionsMy: [
            "Density ပို၍ ရှိသော အလယ်အလတ်မှ Density ပို၍ နည်းသော အလယ်အလတ်ဘက်သို့",
            "Density ပို၍ နည်းသော အလယ်အလတ်မှ Density ပို၍ ရှိသော အလယ်အလတ်ဘက်သို့",
            "Vacuum မှ အခြား Vacuum ဘက်သို့",
            "အစိုင်အခဲမှ အခြား တူညီသော အစိုင်အခဲဘက်သို့",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Sound cannot travel through a vacuum because it is a...",
          questionMy:
              "အသံသည် ...ဖြစ်သောကြောင့် Vacuum ကို ဖြတ်၍ ခရီးမသွားနိုင်ပါ",
          optionsEn: [
            "Mechanical (longitudinal) wave needing a medium",
            "Type of light wave",
            "Wave with infinite speed",
            "Wave with zero energy",
          ],
          optionsMy: [
            "အလယ်အလတ် လိုအပ်သော Mechanical (Longitudinal) Wave",
            "အလင်းလှိုင်း အမျိုးအစား",
            "Speed Infinite ရှိသော Wave",
            "Energy သုည ရှိသော Wave",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
const CourseTermDef igcsePhysicsTerm3 = CourseTermDef(
  id: "course-igcse-phys-term3",
  termNumber: 3,
  titleEn: "Properties of Waves",
  titleMy: "လှိုင်းများ၏ ဂုဏ်သတ္တိများ",
  certificateTitleEn: "IGCSE Physics Term 3 Certificate",
  certificateTitleMy: "IGCSE ရူပဗေဒ တတိယတန်း အောင်လက်မှတ်",
  weeks: [
    _igcsePhysWeek9,
    _igcsePhysWeek10,
    _igcsePhysWeek11,
    _igcsePhysWeek12,
  ],
);
// =====================================================================
// Week 13: "Simple Phenomena of Magnetism"
// =====================================================================

const CourseWeekDef _igcsePhysWeek13 = CourseWeekDef(
  id: "course-igcse-phys-w13",
  weekNumber: 13,
  titleEn: "Simple Phenomena of Magnetism",
  titleMy: "သံလိုက်စွမ်းပကား၏ အခြေခံ ဖြစ်စဉ်များ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w13-d1",
      dayNumber: 1,
      titleEn: "Magnetic Poles, Fields, and Materials",
      titleMy: "Magnetic Poles, Fields နှင့် Materials",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What happens when two north poles of separate bar magnets are brought close together?",
          questionMy:
              "သီးခြား Bar Magnet နှစ်ခု၏ North Pole နှစ်ခုကို အနီးသို့ ယူဆောင်လာပါက အဘယ်ဖြစ်လာသနည်း။",
          optionsEn: [
            "They repel each other",
            "They attract each other strongly",
            "Nothing happens at all",
            "They both instantly lose their magnetism",
          ],
          optionsMy: [
            "တစ်ခုနှင့်တစ်ခု တွန်းလှန်ကြသည်",
            "တစ်ခုနှင့်တစ်ခု ပြင်းထန်စွာ ဆွဲငင်ကြသည်",
            "မည်သည့်အရာမျှ လုံးဝ မဖြစ်ပေါ်ပါ",
            "နှစ်ခုစလုံး ၎င်းတို့၏ သံလိုက်ဓာတ်ကို ချက်ချင်း ဆုံးရှုံးကြသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Like poles (N-N or S-S) repel; unlike poles (N-S) attract -- the same fundamental rule as electric charges.",
          ],
          hintsMy: [
            "Like Pole များ (N-N သို့မဟုတ် S-S) တွန်းလှန်ကြသည်; Unlike Pole များ (N-S) ဆွဲငင်ကြသည် -- လျှပ်စစ် အားသွင်းများ၏ တူညီသော အခြေခံ စည်းမျဉ်း ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the key difference between a permanent magnet and an induced magnet?",
          questionMy:
              "Permanent Magnet နှင့် Induced Magnet ကြား အဓိက ကွာခြားချက်ကား အဘယ်နည်း။",
          optionsEn: [
            "A permanent magnet keeps its magnetism without an external field; an induced magnet only becomes magnetic while inside a magnetic field",
            "A permanent magnet is never actually magnetic at all",
            "An induced magnet is always stronger than a permanent magnet",
            "There is no real difference between the two",
          ],
          optionsMy: [
            "Permanent Magnet သည် အပြင်ပိုင်း Field တစ်ခု မရှိဘဲ ၎င်း၏ သံလိုက်ဓာတ်ကို ဆက်ထိန်းထားသည်; Induced Magnet သည် သံလိုက်စက်ကွင်း အတွင်းရှိနေစဉ်သာ Magnetic ဖြစ်သည်",
            "Permanent Magnet သည် အမှန်တကယ် Magnetic လုံးဝ မဟုတ်ပါ",
            "Induced Magnet သည် Permanent Magnet ထက် အမြဲ ပို၍ အားကောင်းသည်",
            "နှစ်ခုကြား အမှန်တကယ် ကွာခြားချက် မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Soft iron becomes an induced magnet when placed in a magnetic field, but loses its magnetism almost completely once removed, unlike steel used for permanent magnets.",
          ],
          hintsMy: [
            "သံလိုက်စက်ကွင်း တစ်ခုအတွင်း ထားလိုက်ပါက Soft Iron သည် Induced Magnet ဖြစ်လာသော်လည်း ဖယ်ရှားလိုက်ပါက ၎င်း၏ သံလိုက်ဓာတ်ကို လုနီးပါး လုံးလုံးလျားလျား ဆုံးရှုံးသည်၊ Permanent Magnet များအတွက် အသုံးပြုသော Steel နှင့် မတူပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which of these is NOT a magnetic material?",
          questionMy:
              "အောက်ပါတို့တွင် Magnetic Material မဟုတ်သည် မှာ အဘယ်နည်း။",
          optionsEn: ["Copper", "Iron", "Steel", "Nickel"],
          optionsMy: ["ကြေးနီ", "သံ", "Steel", "Nickel"],
          correctIndex: 0,
          hintsEn: [
            "The main magnetic materials are iron, steel, cobalt, and nickel. Copper, aluminium, wood, and plastic are all non-magnetic.",
          ],
          hintsMy: [
            "အဓိက Magnetic Material များမှာ Iron, Steel, Cobalt နှင့် Nickel တို့ ဖြစ်ကြသည်။ ကြေးနီ၊ Aluminium၊ သစ်သားနှင့် ပလပ်စတစ် အားလုံးသည် Non-Magnetic ဖြစ်ကြသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w13-d2",
      dayNumber: 2,
      titleEn: "Match: Magnetism Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Magnetism ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w13-dm-1",
          termEn: "Magnetic field",
          termMy: "Magnetic Field",
          matchEn:
              "The region around a magnet where a magnetic force can be detected",
          matchMy: "သံလိုက်အား ဖော်ထုတ်နိုင်သော သံလိုက်တစ်ခု ပတ်လည်ရှိ ဒေသ",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w13-dm-2",
          termEn: "Field lines",
          termMy: "Field Lines",
          matchEn:
              "Lines showing the direction of a magnetic field, running from north pole to south pole outside the magnet",
          matchMy:
              "သံလိုက်စက်ကွင်း၏ ဦးတည်ချက်ကို ပြသော မျဉ်းများ၊ သံလိုက်၏ အပြင်ဘက်တွင် North Pole မှ South Pole သို့ ပြေးသည်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w13-dm-3",
          termEn: "Induced magnet",
          termMy: "Induced Magnet",
          matchEn:
              "A material that becomes magnetic only while placed within a magnetic field",
          matchMy:
              "သံလိုက်စက်ကွင်း တစ်ခုအတွင်း ထားလိုက်ချိန်တွင်သာ Magnetic ဖြစ်လာသော ပစ္စည်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w13-dm-4",
          termEn: "Soft iron",
          termMy: "Soft Iron",
          matchEn:
              "A material easily magnetised and demagnetised, ideal for induced magnets and electromagnets",
          matchMy:
              "Induced Magnet များနှင့် Electromagnet များအတွက် စံပြ ဖြစ်ပြီး လွယ်ကူစွာ Magnetise နှင့် Demagnetise ဖြစ်နိုင်သော ပစ္စည်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w13-dm-5",
          termEn: "Steel",
          termMy: "Steel",
          matchEn:
              "A material that retains its magnetism well, making it ideal for permanent magnets",
          matchMy:
              "၎င်း၏ သံလိုက်ဓာတ်ကို ကောင်းစွာ ထိန်းထားနိုင်ပြီး Permanent Magnet များအတွက် စံပြ ဖြစ်သော ပစ္စည်း",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w13-d3",
      dayNumber: 3,
      titleEn: "Sort: Magnetic or Non-Magnetic Material?",
      titleMy: "စီစစ်ကြမည် - Magnetic လား၊ Non-Magnetic ပစ္စည်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Magnetic Material", "Non-Magnetic Material"],
        bucketsMy: ["Magnetic Material", "Non-Magnetic Material"],
        items: [
          SortingItem(
            id: "igcsephys-w13-sort-1",
            labelEn: "Iron",
            labelMy: "Iron (သံ)",
            correctBucketEn: "Magnetic Material",
            correctBucketMy: "Magnetic Material",
          ),
          SortingItem(
            id: "igcsephys-w13-sort-2",
            labelEn: "Aluminium",
            labelMy: "Aluminium",
            correctBucketEn: "Non-Magnetic Material",
            correctBucketMy: "Non-Magnetic Material",
          ),
          SortingItem(
            id: "igcsephys-w13-sort-3",
            labelEn: "Nickel",
            labelMy: "Nickel",
            correctBucketEn: "Magnetic Material",
            correctBucketMy: "Magnetic Material",
          ),
          SortingItem(
            id: "igcsephys-w13-sort-4",
            labelEn: "Plastic",
            labelMy: "ပလပ်စတစ်",
            correctBucketEn: "Non-Magnetic Material",
            correctBucketMy: "Non-Magnetic Material",
          ),
          SortingItem(
            id: "igcsephys-w13-sort-5",
            labelEn: "Cobalt",
            labelMy: "Cobalt",
            correctBucketEn: "Magnetic Material",
            correctBucketMy: "Magnetic Material",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w13-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Scrapyard Magnet Question",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ ပစ္စည်းစွန့်ရာ ခန်း သံလိုက် မေးခွန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Scrapyard Magnet Question",
        titleMy: "နေချည်၏ ပစ္စည်းစွန့်ရာ ခန်း သံလိုက် မေးခွန်း",
        passageEn:
            "Ko Thura showed Nay Chi a photograph of a scrapyard crane lifting a huge pile of mixed metal waste using an enormous electromagnet, then asked her why an electromagnet -- essentially a coil of wire wrapped around a soft iron core -- was chosen over a simple permanent magnet for this job.\n\nShe reasoned through the requirements of the task first: the crane needed to pick up a large load of scrap metal at one location and then release it precisely at another, over and over throughout the working day. A permanent magnet, she realised, would create an immediate problem -- while it could certainly pick up the scrap, there was no simple way to switch off its magnetism to release the load exactly where needed, since permanent magnets are permanently magnetic by definition. An electromagnet solved this directly: switching off the electric current flowing through the coil removed the magnetic field almost instantly, dropping the load cleanly and precisely without needing to physically pry the metal away.\n\nKo Thura then asked why the electromagnet's core was made from soft iron specifically, rather than steel. Nay Chi connected this back to what she had learned about induced magnets: soft iron becomes strongly magnetic while current flows through the surrounding coil, but loses its magnetism almost completely the instant the current stops, exactly the rapid on/off behaviour the crane needed. Steel, by contrast, would have retained some magnetism even after the current was switched off, since steel holds onto induced magnetism far more stubbornly -- meaning a steel-core electromagnet might have kept dropped scrap metal stuck to it, defeating the entire purpose of the machine.",
        passageMy:
            "ကိုသူရသည် နေချည်ကို ရောနှောထားသော သတ္တု ပစ္စည်းစွန့်ပစ်ပစ္စည်း ပုံကြီးတစ်ခုကို ကြီးမားသော Electromagnet ဖြင့် ချီမြှောက်နေသော ပစ္စည်းစွန့်ရာခန်း Crane ဓာတ်ပုံတစ်ခုကို ပြသခဲ့ပြီး Electromagnet -- Soft Iron Core တစ်ခု ပတ်လည်တွင် ပတ်ထားသော ကြိုးအလိပ်တစ်ခု အဓိကအားဖြင့် -- ကို ဤ အလုပ်အတွက် ရိုးရိုး Permanent Magnet တစ်ခုအစား ရွေးချယ်ရသည့် အကြောင်းရင်းကို မေးမြန်းခဲ့သည်။\n\nသူမသည် ပထမဆုံး တာဝန်၏ လိုအပ်ချက်များအတွက် ကျိုးကြောင်းဆင်ခြင်ခဲ့သည် - Crane သည် တည်နေရာတစ်ခုတွင် ကြီးမားသော သတ္တု ပစ္စည်းစွန့်ပစ်ပစ္စည်း ပမာဏတစ်ခုကို ဆွဲယူပြီး ထို့နောက် အလုပ်နေ့တစ်နေ့လုံးတွင် ထပ်ခါထပ်ခါ အခြားနေရာတစ်ခုတွင် တိကျစွာ လွှတ်ပေးရန် လိုအပ်သည်။ Permanent Magnet တစ်ခုသည် ချက်ချင်း ပြဿနာတစ်ခု ဖန်တီးမည်ဟု သူမ သိရှိခဲ့သည် -- ၎င်းသည် ပစ္စည်းစွန့်ပစ်ပစ္စည်းကို ဆွဲယူနိုင်ကြောင်း သေချာသော်လည်း Permanent Magnet များသည် အဓိပ္ပာယ်ဖွင့်ဆိုချက်အရ Permanently Magnetic ဖြစ်သောကြောင့် လိုအပ်သည့်နေရာတွင် တိကျစွာ ပစ္စည်းကို လွှတ်ပေးရန် ၎င်း၏ သံလိုက်ဓာတ်ကို ပိတ်ရန် ရိုးရှင်းသော နည်းလမ်း မရှိပါ။ Electromagnet တစ်ခုသည် ဤသည်ကို တိုက်ရိုက် ဖြေရှင်းပေးခဲ့သည် - ကြိုးအလိပ်ကို ဖြတ်သန်းနေသော လျှပ်စစ်ဓာတ်ကို ပိတ်လိုက်ခြင်းသည် သံလိုက်စက်ကွင်းကို လုနီးပါး ချက်ချင်း ဖယ်ရှားပေးကာ သတ္တုကို ရုပ်ပိုင်းဆိုင်ရာ ဆွဲထုတ်ရန် မလိုအပ်ဘဲ ပစ္စည်းစွန့်ပစ်ပစ္စည်းကို သန့်ရှင်း၍ တိကျစွာ ချထားပေးခဲ့သည်။\n\nElectromagnet ၏ Core ကို Steel မဟုတ်ဘဲ Soft Iron ဖြင့် အထူးသဖြင့် ပြုလုပ်ထားရသည့် အကြောင်းရင်းကို ထို့နောက် ကိုသူရ မေးမြန်းခဲ့သည်။ Induced Magnet များအကြောင်း သင်ယူခဲ့ရသည့်အရာနှင့် နေချည် ဤသည်ကို ပြန်ချိတ်ဆက်ခဲ့သည် - Soft Iron သည် ပတ်လည်ရှိ ကြိုးအလိပ်ကို ဖြတ်သန်း လျှပ်စီးကြောင်း ရှိနေစဉ် ပြင်းထန်စွာ Magnetic ဖြစ်လာသော်လည်း လျှပ်စီးကြောင်း ရပ်တန့်သွားသည့် ခဏတွင် ၎င်း၏ သံလိုက်ဓာတ်ကို လုနီးပါး လုံးလုံးလျားလျား ဆုံးရှုံးသည်၊ Crane လိုအပ်သော လျင်မြန်သော On/Off အမူအကျင့် အတိအကျ ဖြစ်သည်။ Steel မှာမူ ဆန့်ကျင်ဘက်အနေဖြင့် လျှပ်စီးကြောင်း ပိတ်ပြီးနောက်ပင် သံလိုက်ဓာတ် အနည်းငယ် ဆက်ထိန်းသိမ်းထားမည် ဖြစ်ကြောင်း၊ Steel သည် Induced Magnetism ကို များစွာ ပို၍ ခေါင်းမာစွာ ဆက်ကိုင်ထားသောကြောင့်ဖြစ်ကြောင်း -- ဆိုလိုသည်မှာ Steel Core Electromagnet တစ်ခုသည် ချလိုက်သော ပစ္စည်းစွန့်ပစ်ပစ္စည်းကို ၎င်းနှင့် ကပ်နေစေနိုင်ကာ စက်၏ ရည်ရွယ်ချက် တစ်ခုလုံးကို ရှုံးနိမ့်စေနိုင်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what problem would a permanent magnet create for the crane?",
            questionMy:
                "Permanent Magnet တစ်ခုသည် Crane အတွက် ဖန်တီးလိမ့်မည့် ပြဿနာကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "There would be no simple way to switch off its magnetism to release the load precisely",
              "It would be too light to lift any scrap metal",
              "It would only work on plastic materials",
              "It would attract only aluminium",
            ],
            optionsMy: [
              "ပစ္စည်းကို တိကျစွာ လွှတ်ပေးရန် ၎င်း၏ သံလိုက်ဓာတ်ကို ပိတ်ရန် ရိုးရှင်းသော နည်းလမ်း မရှိလိမ့်မည်",
              "သတ္တု ပစ္စည်းစွန့်ပစ်ပစ္စည်း မည်သည်ကိုမျှ ချီမြှောက်ရန် အလွန် ပေါ့လွန်းလိမ့်မည်",
              "ပလပ်စတစ် ပစ္စည်းများတွင်သာ အလုပ်ဖြစ်လိမ့်မည်",
              "Aluminium ကိုသာ ဆွဲငင်လိမ့်မည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the permanent magnet problem.",
            ],
            hintsMy: [
              "Permanent Magnet ပြဿနာကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why was soft iron used for the electromagnet's core rather than steel?",
            questionMy:
                "Electromagnet ၏ Core တွင် Steel မဟုတ်ဘဲ Soft Iron ကို အသုံးပြုခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Soft iron loses its magnetism almost instantly when current stops, unlike steel which retains it stubbornly",
              "Soft iron is much cheaper than steel in every case",
              "Steel cannot conduct electricity at all",
              "Soft iron is completely non-magnetic",
            ],
            optionsMy: [
              "Soft Iron သည် လျှပ်စီးကြောင်း ရပ်တန့်သည့်အခါ ၎င်း၏ သံလိုက်ဓာတ်ကို လုနီးပါး ချက်ချင်း ဆုံးရှုံးသော်လည်း Steel မှာမူ ခေါင်းမာစွာ ဆက်ထိန်းထားသောကြောင့်",
              "Soft Iron သည် အခြေအနေတိုင်းတွင် Steel ထက် များစွာ ဈေးသက်သာသောကြောင့်",
              "Steel သည် လျှပ်စစ်ကို လုံးဝ Conduct မလုပ်နိုင်သောကြောင့်",
              "Soft Iron သည် လုံးလုံးလျားလျား Non-Magnetic ဖြစ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence comparing soft iron and steel's retention of magnetism.",
            ],
            hintsMy: [
              "Soft Iron နှင့် Steel ၏ သံလိုက်ဓာတ် ထိန်းသိမ်းမှုကို နှိုင်းယှဉ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, what would happen if the electromagnet's core were made of steel instead?",
            questionMy:
                "Electromagnet ၏ Core ကို Steel ဖြင့် ယင်းအစား ပြုလုပ်ခဲ့ပါက အဘယ်ဖြစ်လာနိုင်ကြောင်းကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "Dropped scrap metal might stay stuck to it, defeating the machine's purpose",
              "The crane would work perfectly with no issues",
              "The electromagnet would become permanently non-magnetic",
              "The scrap metal would instantly melt",
            ],
            optionsMy: [
              "ချလိုက်သော ပစ္စည်းစွန့်ပစ်ပစ္စည်းသည် ၎င်းနှင့် ကပ်နေနိုင်ကာ စက်၏ ရည်ရွယ်ချက်ကို ရှုံးနိမ့်စေနိုင်သည်",
              "Crane သည် ပြဿနာ မရှိဘဲ ပြီးပြည့်စုံစွာ အလုပ်လုပ်လိမ့်မည်",
              "Electromagnet သည် ထာဝစဉ် Non-Magnetic ဖြစ်သွားလိမ့်မည်",
              "ပစ္စည်းစွန့်ပစ်ပစ္စည်းသည် ချက်ချင်း အရည်ပျော်သွားလိမ့်မည်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w13-d5",
      dayNumber: 5,
      titleEn: "Week 13 Recap: Simple Magnetism",
      titleMy: "ဆယ့်သုံးပတ် ပြန်လည်သုံးသပ်ခြင်း - Simple Magnetism",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Like magnetic poles (N-N or S-S) always...",
          questionMy: "Like Magnetic Pole များ (N-N သို့မဟုတ် S-S) သည် အမြဲ...",
          optionsEn: [
            "Repel each other",
            "Attract each other",
            "Have no effect on each other",
            "Merge into one pole",
          ],
          optionsMy: [
            "တစ်ခုနှင့်တစ်ခု တွန်းလှန်ကြသည်",
            "တစ်ခုနှင့်တစ်ခု ဆွဲငင်ကြသည်",
            "တစ်ခုနှင့်တစ်ခု သက်ရောက်မှု မရှိပါ",
            "Pole တစ်ခုတည်းအဖြစ် ပေါင်းစည်းသွားကြသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An induced magnet only remains magnetic while...",
          questionMy:
              "Induced Magnet တစ်ခုသည် ...စဉ်တွင်သာ Magnetic ဆက်ဖြစ်နေသည်",
          optionsEn: [
            "Inside a magnetic field",
            "Painted a certain colour",
            "At room temperature only",
            "Held by a human hand",
          ],
          optionsMy: [
            "သံလိုက်စက်ကွင်း အတွင်း",
            "အရောင်တစ်မျိုး သုတ်ထားစဉ်",
            "အခန်းအပူချိန်တွင်သာ",
            "လူသား လက်ဖြင့် ကိုင်ထားစဉ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which is a magnetic material?",
          questionMy: "Magnetic Material တစ်ခုသည် အဘယ်နည်း",
          optionsEn: ["Nickel", "Copper", "Wood", "Plastic"],
          optionsMy: ["Nickel", "ကြေးနီ", "သစ်သား", "ပလပ်စတစ်"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 14: "Electrical Quantities and Circuits"
// =====================================================================

const CourseWeekDef _igcsePhysWeek14 = CourseWeekDef(
  id: "course-igcse-phys-w14",
  weekNumber: 14,
  titleEn: "Electrical Quantities and Circuits",
  titleMy: "လျှပ်စစ် ပမာဏများနှင့် ပတ်လမ်းများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w14-d1",
      dayNumber: 1,
      titleEn: "Current, Voltage, Resistance, and Ohm's Law",
      titleMy: "Current, Voltage, Resistance နှင့် Ohm's Law",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A 12 V battery drives a current of 3 A through a resistor. What is the resistor's resistance? (V = IR)",
          questionMy:
              "Battery 12 V သည် Resistor တစ်ခုကို ဖြတ်၍ Current 3 A ကို ရွေ့လျားစေသည်။ Resistor ၏ Resistance ကား အဘယ်နည်း။ (V = IR)",
          optionsEn: [
            "4 ohms (R = V/I = 12/3)",
            "36 ohms",
            "9 ohms",
            "15 ohms",
          ],
          optionsMy: [
            "4 ohms (R = V/I = 12/3)",
            "36 ohms",
            "9 ohms",
            "15 ohms",
          ],
          correctIndex: 0,
          hintsEn: ["Rearranging V = IR gives R = V/I = 12 V / 3 A = 4 ohms."],
          hintsMy: [
            "V = IR ကို ပြန်စီစဉ်ပါက R = V/I = 12 V / 3 A = 4 ohms ရရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "An appliance operates at 230 V and draws a current of 2 A. What electrical power does it use? (P = IV)",
          questionMy:
              "ပစ္စည်းတစ်ခုသည် 230 V တွင် လုပ်ဆောင်ပြီး Current 2 A ကို ဆွဲယူသည်။ ၎င်းက မည်သည့် Electrical Power သုံးစွဲသနည်း။ (P = IV)",
          optionsEn: ["460 W (2 x 230)", "232 W", "228 W", "115 W"],
          optionsMy: ["460 W (2 x 230)", "232 W", "228 W", "115 W"],
          correctIndex: 0,
          hintsEn: ["P = IV = 2 A x 230 V = 460 W."],
          hintsMy: ["P = IV = 2 A x 230 V = 460 W ။"],
        ),
        QuizQuestion(
          questionEn: "What is current, in terms of electric charge?",
          questionMy: "လျှပ်စစ် အားသွင်းအရ Current ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The rate of flow of electric charge",
            "The total amount of charge stored permanently",
            "The colour of the electric wire",
            "The temperature of the circuit",
          ],
          optionsMy: [
            "လျှပ်စစ် အားသွင်း စီးဆင်းသည့် နှုန်း",
            "ထာဝစဉ် သိုလှောင်ထားသော စုစုပေါင်း အားသွင်း ပမာဏ",
            "လျှပ်စစ်ကြိုး၏ အရောင်",
            "ပတ်လမ်း၏ အပူချိန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Current (amps) measures how much charge passes a point per second: I = Q/t.",
          ],
          hintsMy: [
            "Current (Amps) သည် စက္ကန့်တစ်ခုလျှင် အချက်တစ်ခုကို မည်မျှ အားသွင်း ဖြတ်သန်းသည်ကို တိုင်းတာသည်- I = Q/t ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w14-d2",
      dayNumber: 2,
      titleEn: "Match: Electrical Quantities Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Electrical Quantities ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w14-dm-1",
          termEn: "Current",
          termMy: "Current",
          matchEn: "The rate of flow of electric charge, measured in amperes",
          matchMy:
              "Ampere ဖြင့် တိုင်းတာသော လျှပ်စစ် အားသွင်း စီးဆင်းသည့် နှုန်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w14-dm-2",
          termEn: "Voltage (potential difference)",
          termMy: "Voltage (Potential Difference)",
          matchEn:
              "The energy transferred per unit charge between two points, measured in volts",
          matchMy:
              "Volt ဖြင့် တိုင်းတာသော အချက် နှစ်ခုကြား ယူနစ် အားသွင်းတစ်ခုလျှင် ကူးပြောင်းသော Energy",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w14-dm-3",
          termEn: "Resistance",
          termMy: "Resistance",
          matchEn:
              "A measure of how much a component opposes the flow of current, measured in ohms",
          matchMy:
              "Ohm ဖြင့် တိုင်းတာသော ပစ္စည်းတစ်ခုက Current စီးဆင်းမှုကို မည်မျှ ဆန့်ကျင်ကြောင်း တိုင်းတာချက်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w14-dm-4",
          termEn: "Ohm's law",
          termMy: "Ohm's Law",
          matchEn:
              "Voltage equals current multiplied by resistance (V = IR), for a resistor at constant temperature",
          matchMy:
              "အပူချိန် တည်ငြိမ်နေသော Resistor တစ်ခုအတွက် Voltage သည် Current ကို Resistance ဖြင့် မြှောက်ထားခြင်းနှင့် ညီမျှသည် (V = IR)",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w14-dm-5",
          termEn: "Electrical power",
          termMy: "Electrical Power",
          matchEn:
              "The rate of energy transfer in a circuit, calculated as current multiplied by voltage (P = IV)",
          matchMy:
              "ပတ်လမ်းတစ်ခုတွင် Energy ကူးပြောင်းသည့် နှုန်း၊ Current ကို Voltage ဖြင့် မြှောက်၍ တွက်ချက် (P = IV)",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w14-d3",
      dayNumber: 3,
      titleEn: "Sort: Current, Voltage, or Resistance Unit?",
      titleMy: "စီစစ်ကြမည် - Current, Voltage သို့မဟုတ် Resistance ယူနစ်",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Current", "Voltage", "Resistance"],
        bucketsMy: ["Current", "Voltage", "Resistance"],
        items: [
          SortingItem(
            id: "igcsephys-w14-sort-1",
            labelEn: "Measured in amperes (A)",
            labelMy: "Ampere (A) ဖြင့် တိုင်းတာ",
            correctBucketEn: "Current",
            correctBucketMy: "Current",
          ),
          SortingItem(
            id: "igcsephys-w14-sort-2",
            labelEn: "Measured in volts (V)",
            labelMy: "Volt (V) ဖြင့် တိုင်းတာ",
            correctBucketEn: "Voltage",
            correctBucketMy: "Voltage",
          ),
          SortingItem(
            id: "igcsephys-w14-sort-3",
            labelEn: "Measured in ohms (Ohm)",
            labelMy: "Ohm ဖြင့် တိုင်းတာ",
            correctBucketEn: "Resistance",
            correctBucketMy: "Resistance",
          ),
          SortingItem(
            id: "igcsephys-w14-sort-4",
            labelEn: "Measured using an ammeter connected in series",
            labelMy: "Series တွင် ချိတ်ဆက်ထားသော Ammeter ဖြင့် တိုင်းတာ",
            correctBucketEn: "Current",
            correctBucketMy: "Current",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w14-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Ohm's Law Investigation",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ Ohm's Law စုံစမ်းစစ်ဆေးမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Ohm's Law Investigation",
        titleMy: "နေချည်၏ Ohm's Law စုံစမ်းစစ်ဆေးမှု",
        passageEn:
            "Ko Thura set up a simple circuit for Nay Chi: a fixed resistor, an ammeter connected in series to measure current, a voltmeter connected in parallel across the resistor to measure voltage, and a variable power supply she could adjust in steps.\n\nShe recorded five pairs of readings as she increased the voltage in equal steps: at 2 V, the current read 0.4 A; at 4 V, 0.8 A; at 6 V, 1.2 A; at 8 V, 1.6 A; and at 10 V, 2.0 A. Plotting these on a graph of voltage against current, she found the points formed a straight line passing through the origin, confirming that voltage and current were directly proportional for this resistor at constant temperature -- exactly what Ohm's law predicted.\n\nKo Thura then asked her to calculate the resistance from her data, and to check whether it stayed constant across all five readings. Using R = V/I for each pair, Nay Chi calculated 2/0.4 = 5 ohms, 4/0.8 = 5 ohms, 6/1.2 = 5 ohms, 8/1.6 = 5 ohms, and 10/2.0 = 5 ohms -- a constant 5 ohms throughout, matching the gradient of her straight-line graph exactly. He then asked what she would expect to see if she repeated the experiment with a filament lamp instead of a fixed resistor. Nay Chi predicted the graph would curve rather than stay straight, since a filament lamp's resistance increases as it heats up at higher currents, meaning the resistance would no longer stay constant and Ohm's law's simple straight-line relationship would only hold true at very low currents before the filament heated up significantly.",
        passageMy:
            "ကိုသူရသည် နေချည်အတွက် ရိုးရှင်းသော ပတ်လမ်းတစ်ခု စီစဉ်ပေးခဲ့သည် - တည်ငြိမ်သော Resistor တစ်ခု၊ Current တိုင်းရန် Series တွင် ချိတ်ဆက်ထားသော Ammeter တစ်ခု၊ Voltage တိုင်းရန် Resistor ကို ဖြတ်၍ Parallel တွင် ချိတ်ဆက်ထားသော Voltmeter တစ်ခုနှင့် သူမ အဆင့်ဆင့် ချိန်ညှိနိုင်သော Variable Power Supply တစ်ခု။\n\nVoltage ကို ညီမျှသော အဆင့်ဖြင့် တိုးမြှင့်လိုက်စဉ် သူမသည် ဖတ်ရှုမှု ငါးစုံကို မှတ်တမ်းတင်ခဲ့သည် - 2 V တွင် Current 0.4 A ဖတ်ခဲ့ပြီး; 4 V တွင် 0.8 A; 6 V တွင် 1.2 A; 8 V တွင် 1.6 A; နှင့် 10 V တွင် 2.0 A ။ Voltage Vs Current ဂရပ်တစ်ခုပေါ်တွင် ဤအချက်များကို ရေးဆွဲကာ Origin ကို ဖြတ်၍ ဖြောင့်မျဉ်းတစ်ခု ဖွဲ့စည်းသည်ကို သူမ တွေ့ရှိခဲ့ပြီး ဤ Resistor အတွက် အပူချိန် တည်ငြိမ်စွာ ရှိစဉ် Voltage နှင့် Current သည် တိုက်ရိုက် အချိုးကျကြောင်း အတည်ပြုခဲ့သည် -- Ohm's Law ခန့်မှန်းထားသည့်အတိုင်း အတိအကျ ဖြစ်သည်။\n\nသူမ၏ ဒေတာမှ Resistance ကို တွက်ချက်ရန်နှင့် ဖတ်ရှုမှု ငါးစုံလုံးတစ်လျှောက် တည်ငြိမ်စွာ ဆက်ရှိမရှိ စစ်ဆေးရန် ကိုသူရ သူမကို တောင်းဆိုခဲ့သည်။ အစုံတစ်ခုစီအတွက် R = V/I ကို အသုံးပြု၍ နေချည်သည် 2/0.4 = 5 ohms, 4/0.8 = 5 ohms, 6/1.2 = 5 ohms, 8/1.6 = 5 ohms နှင့် 10/2.0 = 5 ohms ဟု တွက်ချက်ခဲ့သည် -- တစ်လျှောက်လုံး တည်ငြိမ်သော 5 ohms ဖြစ်ပြီး ၎င်း၏ ဖြောင့်မျဉ်း ဂရပ်၏ Gradient နှင့် အတိအကျ ကိုက်ညီခဲ့သည်။ တည်ငြိမ်သော Resistor အစား Filament Lamp တစ်ခုနှင့် စမ်းသပ်မှုကို ထပ်လုပ်ပါက အဘယ်ကို မျှော်လင့်ရမည်ကို ထို့နောက် သူ မေးမြန်းခဲ့သည်။ Filament Lamp တစ်ခု၏ Resistance သည် Current ပို၍ ကြီးသည့်အခါ ပူနွေးလာသဖြင့် တိုးလာသောကြောင့် ဂရပ်သည် ဖြောင့်မျဉ်း ဆက်ရှိမည့်အစား ကွေ့ကောက်မည်ဟု နေချည် ခန့်မှန်းခဲ့သည်၊ ဆိုလိုသည်မှာ Resistance သည် နောက်ထပ် တည်ငြိမ်စွာ ဆက်မရှိတော့ဘဲ Ohm's Law ၏ ရိုးရှင်းသော ဖြောင့်မျဉ်း ဆက်နွှယ်မှုသည် Filament ထင်ရှားစွာ ပူမလာမီ အလွန် နိမ့်သော Current များတွင်သာ မှန်ကန်နေလိမ့်မည် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what shape did the voltage-current graph form?",
            questionMy:
                "Voltage-Current ဂရပ်သည် မည်သည့် ပုံသဏ္ဌာန် ဖွဲ့စည်းခဲ့ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "A straight line passing through the origin",
              "A curved line",
              "A perfect circle",
              "A horizontal flat line",
            ],
            optionsMy: [
              "Origin ကို ဖြတ်သော ဖြောင့်မျဉ်း",
              "ကွေ့ကောက်နေသော မျဉ်း",
              "ပြီးပြည့်စုံသော စက်ဝိုင်း",
              "အလျားလိုက် ညီညာသော မျဉ်း",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the sentence describing the graph's shape."],
            hintsMy: [
              "ဂရပ်၏ ပုံသဏ္ဌာန်ကို ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what resistance did Nay Chi calculate consistently across all five readings?",
            questionMy:
                "ဖတ်ရှုမှု ငါးစုံလုံးတစ်လျှောက် နေချည် တသမတ်တည်း တွက်ချက်ခဲ့သော Resistance ကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: ["5 ohms", "2 ohms", "10 ohms", "0.4 ohms"],
            optionsMy: ["5 ohms", "2 ohms", "10 ohms", "0.4 ohms"],
            correctIndex: 0,
            hintsEn: ["Reread the calculations in paragraph 3."],
            hintsMy: ["စာပိုဒ် ၃ ရှိ တွက်ချက်မှုများကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, why would a filament lamp's graph curve rather than stay straight?",
            questionMy:
                "Filament Lamp ၏ ဂရပ်သည် ဖြောင့်မျဉ်း ဆက်မရှိဘဲ ကွေ့ကောက်ရသည့် အကြောင်းရင်းကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "The lamp's resistance increases as it heats up at higher currents",
              "The lamp has no resistance at all",
              "The lamp only works with alternating current",
              "The voltmeter would stop working",
            ],
            optionsMy: [
              "Lamp ၏ Resistance သည် Current ပို၍ ကြီးသည့်အခါ ပူနွေးလာသဖြင့် တိုးလာသောကြောင့်",
              "Lamp တွင် Resistance လုံးဝ မရှိသောကြောင့်",
              "Lamp သည် Alternating Current ဖြင့်သာ အလုပ်လုပ်သောကြောင့်",
              "Voltmeter သည် အလုပ်လုပ်ခြင်း ရပ်တန့်သွားလိမ့်မည်ဖြစ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w14-d5",
      dayNumber: 5,
      titleEn: "Week 14 Recap: Electrical Quantities",
      titleMy: "ဆယ့်လေးပတ် ပြန်လည်သုံးသပ်ခြင်း - Electrical Quantities",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Ohm's law states voltage equals current multiplied by...",
          questionMy:
              "Ohm's Law အရ Voltage သည် Current ကို ...ဖြင့် မြှောက်ထားခြင်းနှင့် ညီမျှသည်",
          optionsEn: ["Resistance", "Power", "Time", "Charge"],
          optionsMy: ["Resistance", "Power", "Time", "Charge"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Electrical power is calculated as current multiplied by...",
          questionMy:
              "Electrical Power ကို Current ကို ...ဖြင့် မြှောက်၍ တွက်ချက်သည်",
          optionsEn: ["Voltage", "Resistance", "Time only", "Mass"],
          optionsMy: ["Voltage", "Resistance", "Time သာ", "Mass"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Current is measured using an ammeter connected in...",
          questionMy:
              "Current ကို ...တွင် ချိတ်ဆက်ထားသော Ammeter ဖြင့် တိုင်းတာသည်",
          optionsEn: [
            "Series",
            "Parallel only",
            "Neither series nor parallel",
            "Reverse",
          ],
          optionsMy: [
            "Series",
            "Parallel သာ",
            "Series သော်လည်းကောင်း Parallel သော်လည်းကောင်း မဟုတ်",
            "ပြောင်းပြန်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 15: "Series and Parallel Circuits"
// =====================================================================

const CourseWeekDef _igcsePhysWeek15 = CourseWeekDef(
  id: "course-igcse-phys-w15",
  weekNumber: 15,
  titleEn: "Series and Parallel Circuits",
  titleMy: "ဆက်တိုက် (Series) နှင့် ယှဉ်တွဲ (Parallel) ပတ်လမ်းများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w15-d1",
      dayNumber: 1,
      titleEn: "Series vs Parallel Circuit Rules",
      titleMy: "Series Vs Parallel Circuit စည်းမျဉ်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In a series circuit with two lamps, if one lamp's filament breaks, what happens to the other lamp?",
          questionMy:
              "Lamp နှစ်ခုပါသော Series Circuit တစ်ခုတွင် Lamp တစ်ခု၏ Filament ပျက်စီးသွားပါက အခြား Lamp တွင် အဘယ်ဖြစ်လာသနည်း။",
          optionsEn: [
            "It also goes out, since the circuit is broken and current can no longer flow anywhere in the loop",
            "It becomes brighter than before",
            "It stays exactly the same as before",
            "It starts flashing on and off",
          ],
          optionsMy: [
            "၎င်းသည်လည်း ငြိမ်းသွားသည်၊ ပတ်လမ်း ပျက်စီးသွားပြီး Loop အတွင်းရှိ မည်သည့်နေရာတွင်မျှ Current ဆက်လက် စီးဆင်း၍ မရနိုင်တော့သောကြောင့်",
            "ယခင်ထက် ပို၍ တောက်ပလာသည်",
            "ယခင်နှင့် အတိအကျ တူညီစွာ ဆက်ရှိနေသည်",
            "ခဏခဏ တောက်ငြိမ်းလာသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "In a series circuit, there is only one loop for current, so a break anywhere stops current everywhere in that loop.",
          ],
          hintsMy: [
            "Series Circuit တွင် Current အတွက် Loop တစ်ခုတည်းသာ ရှိသောကြောင့် မည်သည့်နေရာတွင် ပျက်စီးသွားသည်ဖြစ်စေ ထို Loop အတွင်းရှိ နေရာတိုင်းတွင် Current ကို ရပ်တန့်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Two resistors of 6 ohms and 3 ohms are connected in parallel. What is the combined resistance? (1/R = 1/R1 + 1/R2)",
          questionMy:
              "6 ohms နှင့် 3 ohms Resistor နှစ်ခုကို Parallel တွင် ချိတ်ဆက်ထားသည်။ ပေါင်းစပ် Resistance ကား အဘယ်နည်း။ (1/R = 1/R1 + 1/R2)",
          optionsEn: [
            "2 ohms (1/R = 1/6 + 1/3 = 3/6, so R = 2)",
            "9 ohms",
            "4.5 ohms",
            "18 ohms",
          ],
          optionsMy: [
            "2 ohms (1/R = 1/6 + 1/3 = 3/6, so R = 2)",
            "9 ohms",
            "4.5 ohms",
            "18 ohms",
          ],
          correctIndex: 0,
          hintsEn: [
            "1/R = 1/6 + 1/3 = 1/6 + 2/6 = 3/6 = 1/2. Therefore R = 2 ohms. Combined resistance in parallel is always less than the smallest individual resistor.",
          ],
          hintsMy: [
            "1/R = 1/6 + 1/3 = 1/6 + 2/6 = 3/6 = 1/2ဖြစ်သောကြောင့် R = 2 ohms ။ Parallel တွင် ပေါင်းစပ် Resistance သည် သီးခြား Resistor အသေးဆုံးထက် အမြဲ နည်းသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a parallel circuit, what stays the same across each branch, regardless of that branch's resistance?",
          questionMy:
              "Parallel Circuit တစ်ခုတွင် ထို Branch ၏ Resistance မည်သို့ ရှိသည်ဖြစ်စေ Branch တစ်ခုစီတစ်လျှောက် အဘယ်အရာ တူညီစွာ ဆက်ရှိနေသနည်း။",
          optionsEn: [
            "The voltage across each branch",
            "The current through each branch",
            "The colour of the wires",
            "The temperature of each branch",
          ],
          optionsMy: [
            "Branch တစ်ခုစီတစ်လျှောက် Voltage",
            "Branch တစ်ခုစီကို ဖြတ်၍ Current",
            "ကြိုးများ၏ အရောင်",
            "Branch တစ်ခုစီ၏ အပူချိန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Each branch of a parallel circuit is connected directly across the same two points, so they all experience the same potential difference, though current divides between branches based on their resistance.",
          ],
          hintsMy: [
            "Parallel Circuit ၏ Branch တစ်ခုစီသည် အချက် နှစ်ခုတည်းကို တိုက်ရိုက် ဖြတ်၍ ချိတ်ဆက်ထားသောကြောင့် အားလုံးသည် တူညီသော Potential Difference ကို ခံစားရသော်လည်း Current မှာမူ ၎င်းတို့၏ Resistance အလိုက် Branch များကြား ခွဲဝေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w15-d2",
      dayNumber: 2,
      titleEn: "Match: Series and Parallel Circuit Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Series နှင့် Parallel Circuit ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w15-dm-1",
          termEn: "Series circuit",
          termMy: "Series Circuit",
          matchEn:
              "A circuit with only one loop, where the same current flows through every component",
          matchMy:
              "Loop တစ်ခုတည်းသာ ရှိသော ပတ်လမ်း၊ ပစ္စည်းတိုင်းကို တူညီသော Current ဖြတ်သန်းသည်",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w15-dm-2",
          termEn: "Parallel circuit",
          termMy: "Parallel Circuit",
          matchEn:
              "A circuit with multiple branches, where each branch has the same voltage but current divides",
          matchMy:
              "Branch များစွာ ရှိသော ပတ်လမ်း၊ Branch တိုင်းတွင် Voltage တူညီသော်လည်း Current ခွဲဝေသည်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w15-dm-3",
          termEn: "Potential divider",
          termMy: "Potential Divider",
          matchEn:
              "A circuit of resistors in series used to split a supply voltage into smaller output voltages",
          matchMy:
              "ထောက်ပံ့ Voltage ကို ပို၍ သေးငယ်သော ထုတ်ပေး Voltage များအဖြစ် ခွဲရန် အသုံးပြုသော Series Resistor ပတ်လမ်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w15-dm-4",
          termEn: "Combined resistance (series)",
          termMy: "Combined Resistance (Series)",
          matchEn:
              "In series, total resistance equals the simple sum of each individual resistance",
          matchMy:
              "Series တွင် စုစုပေါင်း Resistance သည် သီးခြား Resistance တစ်ခုစီ၏ ရိုးရှင်းသော ပေါင်းလဒ်နှင့် ညီမျှသည်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w15-dm-5",
          termEn: "Combined resistance (parallel)",
          termMy: "Combined Resistance (Parallel)",
          matchEn:
              "In parallel, total resistance is always less than the smallest individual resistor",
          matchMy:
              "Parallel တွင် စုစုပေါင်း Resistance သည် သီးခြား Resistor အသေးဆုံးထက် အမြဲ နည်းသည်",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w15-d3",
      dayNumber: 3,
      titleEn: "Sort: Series or Parallel Circuit Rule?",
      titleMy: "စီစစ်ကြမည် - Series လား၊ Parallel Circuit စည်းမျဉ်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Series Circuit Rule", "Parallel Circuit Rule"],
        bucketsMy: ["Series Circuit Rule", "Parallel Circuit Rule"],
        items: [
          SortingItem(
            id: "igcsephys-w15-sort-1",
            labelEn: "The same current flows through every component",
            labelMy: "ပစ္စည်းတိုင်းကို တူညီသော Current ဖြတ်သန်းသည်",
            correctBucketEn: "Series Circuit Rule",
            correctBucketMy: "Series Circuit Rule",
          ),
          SortingItem(
            id: "igcsephys-w15-sort-2",
            labelEn: "Voltage is the same across each branch",
            labelMy: "Branch တစ်ခုစီတစ်လျှောက် Voltage တူညီသည်",
            correctBucketEn: "Parallel Circuit Rule",
            correctBucketMy: "Parallel Circuit Rule",
          ),
          SortingItem(
            id: "igcsephys-w15-sort-3",
            labelEn:
                "One broken component stops current everywhere in the loop",
            labelMy:
                "ပျက်စီးသွားသော ပစ္စည်း တစ်ခုသည် Loop အတွင်းရှိ နေရာတိုင်းတွင် Current ကို ရပ်တန့်စေသည်",
            correctBucketEn: "Series Circuit Rule",
            correctBucketMy: "Series Circuit Rule",
          ),
          SortingItem(
            id: "igcsephys-w15-sort-4",
            labelEn: "One broken branch does not affect other branches",
            labelMy:
                "ပျက်စီးသွားသော Branch တစ်ခုသည် အခြား Branch များကို သက်ရောက်မှု မရှိစေ",
            correctBucketEn: "Parallel Circuit Rule",
            correctBucketMy: "Parallel Circuit Rule",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w15-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Christmas Lights Debate",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ ခရစ္စမတ် မီးများ အငြင်းပွားမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Christmas Lights Debate",
        titleMy: "နေချည်၏ ခရစ္စမတ် မီးများ အငြင်းပွားမှု",
        passageEn:
            "Ko Thura described a common household frustration to Nay Chi: an old string of decorative lights where, if a single bulb burns out, the entire string goes dark, forcing a frustrating search for the one faulty bulb among dozens. He asked her to identify how these lights were wired, and to propose a better design.\n\nNay Chi immediately recognised the symptom as characteristic of a series circuit: since there is only one loop for current in a series circuit, a single broken filament creates a gap that stops current everywhere along that loop, extinguishing every bulb simultaneously, not just the faulty one. She proposed rewiring the string as a parallel circuit instead, where each bulb formed its own independent branch across the same two supply wires -- in this design, one bulb burning out would only break that single branch, leaving every other bulb's separate loop completely unaffected and still glowing normally.\n\nKo Thura then asked why old-fashioned Christmas lights were often wired in series despite this obvious drawback, rather than simply using parallel wiring from the start. Nay Chi reasoned through the practical trade-off: a series string could use many small, cheap, low-voltage bulbs that together divided up the full mains voltage between them, whereas a parallel string required each individual bulb to be rated for close to the full supply voltage itself, since parallel branches all experience the same voltage as the supply. This made series wiring cheaper to manufacture historically, even though it came at the cost of the reliability problem Ko Thura had described -- a classic engineering trade-off between manufacturing cost and reliability that modern LED lights, using more sophisticated internal wiring, have since largely solved.",
        passageMy:
            "ကိုသူရသည် အိမ်သုံး စိတ်ပျက်စရာ ဘုံပြဿနာတစ်ခုကို နေချည်ကို ဖော်ပြခဲ့သည် - ဓာတ်မီးသီးတစ်လုံး လောင်ကျွမ်းသွားပါက ဓာတ်မီးအလှဆင် ကြိုးတစ်ခုလုံး ငြိမ်းသွားကာ ဒါဇင်ချီရှိသော မီးသီးများထဲမှ ချို့ယွင်းနေသော မီးသီးတစ်လုံးအတွက် စိတ်ပျက်ဖွယ် ရှာဖွေမှုကို ဖြစ်ပေါ်စေသော ဓာတ်မီးသီးဟောင်း ကြိုးတစ်ခု။ ဤ ဓာတ်မီးများကို မည်သို့ ကြိုးဆက်ထားကြောင်း ဖော်ထုတ်ရန်နှင့် ဒီဇိုင်း ပို၍ ကောင်းသည့်တစ်ခု အဆိုပြုရန် သူသည် သူမကို တောင်းဆိုခဲ့သည်။\n\nဤ လက္ခဏာသည် Series Circuit ၏ ထူးခြားချက် ဖြစ်ကြောင်း နေချည် ချက်ချင်း ဖော်ထုတ်ခဲ့သည် - Series Circuit တွင် Current အတွက် Loop တစ်ခုတည်းသာ ရှိသောကြောင့် Filament တစ်ခု ပျက်စီးသွားခြင်းသည် ကွက်လပ်တစ်ခု ဖန်တီးကာ ထို Loop တစ်လျှောက်တွင် နေရာတိုင်း၌ Current ကို ရပ်တန့်စေကာ ချို့ယွင်းသော မီးသီးတစ်လုံးတည်း မဟုတ်ဘဲ မီးသီးတိုင်းကို တစ်ပြိုင်နက် ငြိမ်းသွားစေသည်။ ဓာတ်မီးသီးတိုင်းသည် ထောက်ပံ့ကြိုး နှစ်ချောင်းတည်းကို ဖြတ်၍ ၎င်းကိုယ်ပိုင် လွတ်လပ်သော Branch တစ်ခု ဖွဲ့စည်းသော Parallel Circuit တစ်ခုအဖြစ် ကြိုးကို ပြန်လည် ကြိုးဆက်ရန် သူမ အဆိုပြုခဲ့သည် -- ဤ ဒီဇိုင်းတွင် မီးသီးတစ်လုံး လောင်ကျွမ်းသွားခြင်းသည် ထို Branch တစ်ခုတည်းကိုသာ ချိုးဖျက်ကာ အခြား မီးသီးတိုင်း၏ သီးခြား Loop ကို လုံးဝ သက်ရောက်မှု မရှိစေဘဲ ပုံမှန် ဆက်လက် တောက်နေစေမည် ဖြစ်သည်။\n\nဓာတ်မီးဆန်း ကြိုးအစား ရိုးရိုး Parallel ကြိုးဆက်ခြင်းကို အစကတည်းက အသုံးပြုမည့်အစား ဤ ထင်ရှားသော ချို့ယွင်းချက် ရှိပါလျက် ခရစ္စမတ် ဓာတ်မီးသီးဟောင်းများကို Series တွင် မကြာခဏ ကြိုးဆက်ရသည့် အကြောင်းရင်းကို ထို့နောက် ကိုသူရ မေးမြန်းခဲ့သည်။ Series ကြိုးတစ်ခုသည် ဓာတ်မီးသီးငယ်များစွာ၊ ဈေးသက်သာ၍ Voltage နိမ့်ကို အသုံးပြုနိုင်ကာ ၎င်းတို့ အားလုံး Mains Voltage အပြည့်အစုံကို ၎င်းတို့ကြား ခွဲဝေထားသော်လည်း Parallel ကြိုးတစ်ခုသည် Branch တိုင်းသည် ထောက်ပံ့မှုနှင့် တူညီသော Voltage ကို ခံစားရသောကြောင့် မီးသီးတစ်လုံးချင်းစီသည် ထောက်ပံ့ Voltage အပြည့်နှင့် နီးစပ်စွာ Rate ပြုလုပ်ရန် လိုအပ်ကြောင်း လက်တွေ့ကျ Trade-Off ကို ဖြတ်၍ နေချည် ကျိုးကြောင်းဆင်ခြင်ခဲ့သည်။ ဤသည်ကား ကိုသူရ ဖော်ပြခဲ့သော ယုံကြည်စိတ်ချမှု ပြဿနာ ကုန်ကျခဲ့ပါလျက် သမိုင်းကြောင်းအရ Series ကြိုးဆက်ခြင်းကို ထုတ်လုပ်ရန် ဈေးသက်သာစေခဲ့ခဲ့သည် -- ခေတ်သစ် LED ဓာတ်မီးများသည် ပို၍ ဆန်းပြားသော အတွင်း ကြိုးဆက်မှုကို အသုံးပြု၍ များစွာ ဖြေရှင်းပြီးဖြစ်သော ထုတ်လုပ်မှု ကုန်ကျစရိတ်နှင့် ယုံကြည်စိတ်ချမှုကြား Classic အင်ဂျင်နီယာ Trade-Off ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did Nay Chi propose rewiring the lights as a parallel circuit?",
            questionMy:
                "ဓာတ်မီးများကို Parallel Circuit တစ်ခုအဖြစ် ပြန်လည် ကြိုးဆက်ရန် နေချည် အဆိုပြုခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "One bulb burning out would only break that branch, leaving other bulbs unaffected",
              "Parallel circuits use no electricity at all",
              "Parallel circuits are always more expensive",
              "Series circuits never have any faults",
            ],
            optionsMy: [
              "မီးသီးတစ်လုံး လောင်ကျွမ်းသွားခြင်းသည် ထို Branch တစ်ခုတည်းကိုသာ ချိုးဖျက်ကာ အခြား မီးသီးများကို သက်ရောက်မှု မရှိစေသောကြောင့်",
              "Parallel Circuit များသည် လျှပ်စစ် လုံးဝ မသုံးစွဲသောကြောင့်",
              "Parallel Circuit များသည် အမြဲ ပို၍ ဈေးကြီးသောကြောင့်",
              "Series Circuit များတွင် ချို့ယွင်းချက် ဘယ်တော့မှ မရှိသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining Nay Chi's proposed design.",
            ],
            hintsMy: [
              "နေချည် အဆိုပြုထားသော ဒီဇိုင်းကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why was series wiring historically cheaper to manufacture?",
            questionMy:
                "Series ကြိုးဆက်ခြင်းသည် သမိုင်းကြောင်းအရ ထုတ်လုပ်ရန် ဈေးသက်သာခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It could use many small, cheap, low-voltage bulbs dividing up the mains voltage between them",
              "It required no electricity at all",
              "It used only one single bulb per string",
              "It never actually worked at all",
            ],
            optionsMy: [
              "Mains Voltage ကို ၎င်းတို့ကြား ခွဲဝေသော ဈေးသက်သာ၍ Voltage နိမ့်သော မီးသီးငယ်များစွာကို အသုံးပြုနိုင်ခဲ့သောကြောင့်",
              "လျှပ်စစ် လုံးဝ မလိုအပ်ခဲ့သောကြောင့်",
              "ကြိုးတစ်ခုလျှင် မီးသီးတစ်လုံးတည်းသာ အသုံးပြုခဲ့သောကြောင့်",
              "အမှန်တကယ် လုံးဝ အလုပ်မလုပ်ခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the sentence about the practical trade-off."],
            hintsMy: [
              "လက်တွေ့ကျ Trade-Off အကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, what has largely solved this historical trade-off?",
            questionMy:
                "ဤ သမိုင်းကြောင်းအရ Trade-Off ကို များစွာ ဖြေရှင်းပေးခဲ့သည့် အရာကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "Modern LED lights using more sophisticated internal wiring",
              "Removing all bulbs from the string entirely",
              "Going back to using only series circuits",
              "Nothing has ever solved this problem",
            ],
            optionsMy: [
              "ပို၍ ဆန်းပြားသော အတွင်း ကြိုးဆက်မှု အသုံးပြုသော ခေတ်သစ် LED ဓာတ်မီးများ",
              "ကြိုးမှ မီးသီးအားလုံးကို လုံးလုံးလျားလျား ဖယ်ရှားခြင်း",
              "Series Circuit များကိုသာ အသုံးပြုသည့် နည်းလမ်းသို့ ပြန်သွားခြင်း",
              "ဤပြဿနာကို ဘယ်တော့မှ မည်သည့်အရာမျှ မဖြေရှင်းနိုင်ခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w15-d5",
      dayNumber: 5,
      titleEn: "Week 15 Recap: Series and Parallel Circuits",
      titleMy: "ဆယ့်ငါးပတ် ပြန်လည်သုံးသပ်ခြင်း - Series and Parallel Circuits",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In a series circuit, the current is...",
          questionMy: "Series Circuit တစ်ခုတွင် Current သည်...",
          optionsEn: [
            "The same everywhere in the loop",
            "Different at every point",
            "Always zero",
            "Only present at the battery",
          ],
          optionsMy: [
            "Loop တစ်လျှောက် နေရာတိုင်းတွင် တူညီသည်",
            "အချက်တိုင်းတွင် မတူညီပါ",
            "အမြဲ သုည ဖြစ်သည်",
            "Battery တွင်သာ ရှိသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In a parallel circuit, voltage across each branch is...",
          questionMy:
              "Parallel Circuit တစ်ခုတွင် Branch တစ်ခုစီတစ်လျှောက် Voltage သည်...",
          optionsEn: [
            "The same as the supply voltage",
            "Always zero",
            "Different for every branch always",
            "Impossible to measure",
          ],
          optionsMy: [
            "ထောက်ပံ့ Voltage နှင့် တူညီသည်",
            "အမြဲ သုည ဖြစ်သည်",
            "Branch တိုင်းအတွက် အမြဲ ကွဲပြားသည်",
            "တိုင်းတာ၍ မဖြစ်နိုင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Combined resistance in a parallel circuit is always...",
          questionMy:
              "Parallel Circuit တစ်ခုတွင် ပေါင်းစပ် Resistance သည် အမြဲ...",
          optionsEn: [
            "Less than the smallest individual resistor",
            "Greater than the sum of all resistors",
            "Exactly zero",
            "Equal to the largest resistor only",
          ],
          optionsMy: [
            "သီးခြား Resistor အသေးဆုံးထက် နည်းသည်",
            "Resistor အားလုံး၏ ပေါင်းလဒ်ထက် ကြီးသည်",
            "အတိအကျ သုည",
            "Resistor အကြီးဆုံးနှင့်သာ ညီမျှသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 16: "Electrical Safety and Mains Electricity" (Term 4 Capstone)
// =====================================================================

const CourseWeekDef _igcsePhysWeek16 = CourseWeekDef(
  id: "course-igcse-phys-w16",
  weekNumber: 16,
  titleEn: "Electrical Safety and Mains Electricity",
  titleMy: "လျှပ်စစ် လုံခြုံရေးနှင့် အိမ်သုံး မိုင်းလျှပ်စစ်မီး",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w16-d1",
      dayNumber: 1,
      titleEn: "Fuses, Earth Wires, and the Cost of Electricity",
      titleMy: "Fuse, Earth Wire နှင့် လျှပ်စစ် ကုန်ကျစရိတ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "How does a fuse protect an electrical appliance and its wiring?",
          questionMy:
              "Fuse တစ်ခုသည် လျှပ်စစ်ပစ္စည်းနှင့် ၎င်း၏ ကြိုးဆက်မှုကို မည်သို့ ကာကွယ်ပေးသနည်း။",
          optionsEn: [
            "A thin wire inside the fuse melts and breaks the circuit if the current exceeds a safe rated value",
            "It permanently increases the voltage supplied",
            "It makes the appliance run faster",
            "It has no actual safety function",
          ],
          optionsMy: [
            "Fuse အတွင်းရှိ ပါးလွှာသော ကြိုးသည် Current သည် လုံခြုံသော Rate တန်ဖိုးကို ကျော်လွန်ပါက အရည်ပျော်ကာ ပတ်လမ်းကို ချိုးဖျက်သည်",
            "ထောက်ပံ့ထားသော Voltage ကို ထာဝစဉ် တိုးမြှင့်ပေးသည်",
            "ပစ္စည်းကို ပို၍ မြန်စွာ လည်ပတ်စေသည်",
            "အမှန်တကယ် လုံခြုံရေး လုပ်ဆောင်ချက် မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "If a fault causes too much current to flow, the fuse wire heats up, melts, and creates a gap that stops the current, preventing overheating and fire.",
          ],
          hintsMy: [
            "ချို့ယွင်းချက်တစ်ခုသည် Current ပို၍ များစွာ စီးဆင်းစေပါက Fuse ကြိုးသည် ပူနွေးလာကာ အရည်ပျော်ကာ Current ကို ရပ်တန့်စေသည့် ကွက်လပ်တစ်ခု ဖန်တီးကာ ပူလွန်းခြင်းနှင့် မီးလောင်ခြင်းကို ကာကွယ်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the purpose of an earth wire connected to the metal casing of an appliance?",
          questionMy:
              "ပစ္စည်းတစ်ခု၏ သတ္တု ခွံနှင့် ချိတ်ဆက်ထားသော Earth Wire ၏ ရည်ရွယ်ချက်ကား အဘယ်နည်း။",
          optionsEn: [
            "It provides a safe, low-resistance path for fault current, preventing the casing from becoming dangerously live and causing an electric shock",
            "It makes the appliance heavier for stability",
            "It increases the appliance's power output",
            "It has no safety purpose at all",
          ],
          optionsMy: [
            "ချို့ယွင်းချက် Current အတွက် လုံခြုံ၍ Resistance နည်းသော လမ်းကြောင်းတစ်ခု ပေးအပ်ကာ ခွံကို အန္တရာယ်ရှိစွာ Live ဖြစ်ခြင်းနှင့် လျှပ်စစ်ရိုက်ခြင်းကို ကာကွယ်ပေးသည်",
            "တည်ငြိမ်မှုအတွက် ပစ္စည်းကို ပို၍ လေးလံစေသည်",
            "ပစ္စည်း၏ Power ထွက်ချက်ကို တိုးမြှင့်ပေးသည်",
            "လုံခြုံရေး ရည်ရွယ်ချက် လုံးဝ မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "If a fault causes the live wire to touch the metal casing, the earth wire provides a path of very low resistance, causing a large current to flow that blows the fuse quickly, rather than the casing staying dangerously live for someone to touch.",
          ],
          hintsMy: [
            "ချို့ယွင်းချက်တစ်ခုသည် Live ကြိုးကို သတ္တု ခွံနှင့် ထိတွေ့စေပါက Earth Wire သည် Resistance အလွန် နည်းသော လမ်းကြောင်းတစ်ခု ပေးအပ်ကာ Fuse ကို လျင်မြန်စွာ ပေါက်ကွဲစေမည့် Current ကြီးမား တစ်ခု စီးဆင်းစေသည်၊ ခွံသည် တစ်စုံတစ်ဦးကို ထိတွေ့စေရန် အန္တရာယ်ရှိစွာ Live ဆက်ရှိနေခြင်းအစား ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A 2000 W appliance is used for 3 hours. If electricity costs 0.20 dollars per kWh, what is the total cost?",
          questionMy:
              "2000 W ပစ္စည်းတစ်ခုကို ၃ နာရီ အသုံးပြုသည်။ လျှပ်စစ်တစ် kWh လျှင် ဒေါ်လာ 0.20 ကျသင့်ပါက စုစုပေါင်း ကုန်ကျစရိတ် ကား အဘယ်နည်း။",
          optionsEn: [
            "1.20 dollars (2 kW x 3 h x 0.20)",
            "0.60 dollars",
            "6.00 dollars",
            "0.20 dollars",
          ],
          optionsMy: [
            "ဒေါ်လာ 1.20 (2 kW x 3 h x 0.20)",
            "ဒေါ်လာ 0.60",
            "ဒေါ်လာ 6.00",
            "ဒေါ်လာ 0.20",
          ],
          correctIndex: 0,
          hintsEn: [
            "2000 W = 2 kW. Energy used = power(kW) x time(h) = 2 x 3 = 6 kWh. Cost = 6 kWh x 0.20 = 1.20 dollars.",
          ],
          hintsMy: [
            "2000 W = 2 kW ။ သုံးစွဲသော Energy = Power(kW) x Time(h) = 2 x 3 = 6 kWh ။ Cost = 6 kWh x 0.20 = ဒေါ်လာ 1.20 ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w16-d2",
      dayNumber: 2,
      titleEn: "Match: Term 4 Recap Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - စတုတ္ထတန်း ပြန်လည်သုံးသပ်ခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w16-dm-1",
          termEn: "Circuit breaker",
          termMy: "Circuit Breaker",
          matchEn:
              "A resettable safety switch that trips and breaks a circuit when current exceeds a safe level",
          matchMy:
              "Current သည် လုံခြုံသော အဆင့်ကို ကျော်လွန်ပါက ပတ်လမ်းကို ချိုးဖျက်ပေးသော ပြန်လည် ချိန်ညှိနိုင်သော လုံခြုံရေး Switch",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w16-dm-2",
          termEn: "Double insulation",
          termMy: "Double Insulation",
          matchEn:
              "A design using two layers of insulating material so an earth wire is not needed",
          matchMy:
              "Earth Wire မလိုအပ်စေရန် Insulating ပစ္စည်း အလွှာ နှစ်ထပ် အသုံးပြုသော ဒီဇိုင်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w16-dm-3",
          termEn: "Live wire",
          termMy: "Live Wire",
          matchEn:
              "The wire carrying the alternating supply voltage into an appliance",
          matchMy:
              "Alternating ထောက်ပံ့ Voltage ကို ပစ္စည်းတစ်ခုထဲသို့ သယ်ဆောင်ပေးသော ကြိုး",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w16-dm-4",
          termEn: "Neutral wire",
          termMy: "Neutral Wire",
          matchEn:
              "The wire that completes the circuit, normally at close to zero volts",
          matchMy:
              "ပတ်လမ်းကို ပြီးပြည့်စုံစေသော ကြိုး၊ ပုံမှန်အားဖြင့် Volt သုညနှင့် နီးစပ်စွာ ရှိသည်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w16-dm-5",
          termEn: "Cost of electrical energy",
          termMy: "Cost of Electrical Energy",
          matchEn:
              "Calculated as power in kilowatts multiplied by time in hours multiplied by cost per kWh",
          matchMy:
              "Kilowatt ရှိ Power ကို Hour ရှိ Time ဖြင့် မြှောက်ပြီး kWh တစ်ခုစီ ကုန်ကျစရိတ်ဖြင့် ထပ်မံ မြှောက်၍ တွက်ချက်",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w16-d3",
      dayNumber: 3,
      titleEn: "Sort: Magnetism, Circuits, or Electrical Safety Concept?",
      titleMy:
          "စီစစ်ကြမည် - Magnetism, Circuits သို့မဟုတ် Electrical Safety သဘောတရားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Magnetism Concept",
          "Circuits Concept",
          "Electrical Safety Concept",
        ],
        bucketsMy: [
          "Magnetism Concept",
          "Circuits Concept",
          "Electrical Safety Concept",
        ],
        items: [
          SortingItem(
            id: "igcsephys-w16-sort-1",
            labelEn: "Explaining why like poles repel",
            labelMy: "Like Pole များ တွန်းလှန်ရသည့် အကြောင်းရင်း ရှင်းပြခြင်း",
            correctBucketEn: "Magnetism Concept",
            correctBucketMy: "Magnetism Concept",
          ),
          SortingItem(
            id: "igcsephys-w16-sort-2",
            labelEn: "Calculating combined resistance in a parallel circuit",
            labelMy:
                "Parallel Circuit တစ်ခုတွင် ပေါင်းစပ် Resistance တွက်ချက်ခြင်း",
            correctBucketEn: "Circuits Concept",
            correctBucketMy: "Circuits Concept",
          ),
          SortingItem(
            id: "igcsephys-w16-sort-3",
            labelEn: "Explaining how a fuse prevents overheating and fire",
            labelMy:
                "Fuse တစ်ခုသည် ပူလွန်းခြင်းနှင့် မီးလောင်ခြင်းကို မည်သို့ ကာကွယ်ကြောင်း ရှင်းပြခြင်း",
            correctBucketEn: "Electrical Safety Concept",
            correctBucketMy: "Electrical Safety Concept",
          ),
          SortingItem(
            id: "igcsephys-w16-sort-4",
            labelEn: "Distinguishing an induced magnet from a permanent magnet",
            labelMy: "Induced Magnet ကို Permanent Magnet နှင့် ခွဲခြားခြင်း",
            correctBucketEn: "Magnetism Concept",
            correctBucketMy: "Magnetism Concept",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w16-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Term 4 Electricity Review",
      titleMy:
          "စာဖတ်ခြင်း - နေချည်၏ စတုတ္ထတန်း Electricity ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Term 4 Electricity Review",
        titleMy: "နေချည်၏ စတုတ္ထတန်း Electricity ပြန်လည်သုံးသပ်ခြင်း",
        passageEn:
            "For her Term 4 final review, Ko Thura asked Nay Chi to explain, from first principles, everything that happens when a faulty toaster with a cracked live wire touches its own metal casing while a person is holding it.\n\nShe began with Ohm's law and circuit basics: since the earth wire connects the metal casing to the ground with an extremely low resistance path, the fault created a near-short-circuit -- a huge current, far larger than the toaster's normal operating current, suddenly flowed through the earth wire rather than through the person, since current always takes the path of least resistance and the earth wire's resistance was vastly lower than a human body's. This huge surge of current was exactly what the fuse was designed to detect: within a fraction of a second, the fuse wire heated up rapidly, melted, and broke the circuit completely, cutting off power to the toaster before a dangerous current could reach the casing at all.\n\nKo Thura then asked what would have happened if the same faulty toaster had double insulation instead of a metal casing and earth wire. Nay Chi explained that double insulation works on an entirely different principle: rather than providing an escape path for fault current like an earth wire does, it uses two independent layers of insulating material specifically to prevent the live wire from ever making electrical contact with anything a person could touch in the first place, making an earth wire unnecessary since there is no conductive casing for a fault to reach. She concluded that both systems achieved the same safety outcome -- protecting the user from electric shock -- through two fundamentally different engineering strategies: one by rapidly cutting power after a fault occurs, the other by preventing the fault from ever being able to reach the user at all.",
        passageMy:
            "စတုတ္ထတန်း နောက်ဆုံး ပြန်လည်သုံးသပ်ခြင်းအတွက် Live ကြိုး ကွဲပြားသော ချို့ယွင်းသော Toaster တစ်ခု ၎င်းကိုယ်ပိုင် သတ္တု ခွံနှင့် ထိတွေ့သည့်အခါ လူတစ်ဦးက ၎င်းကို ကိုင်ထားနေစဉ် ဖြစ်ပျက်သမျှ အားလုံးကို ပထမ နိယာမများမှ ရှင်းပြရန် ကိုသူရ နေချည်ကို တောင်းဆိုခဲ့သည်။\n\nသူမသည် Ohm's Law နှင့် ပတ်လမ်း အခြေခံများဖြင့် စတင်ခဲ့သည် - Earth Wire သည် သတ္တု ခွံကို Resistance အလွန် နည်းသော လမ်းကြောင်းတစ်ခုနှင့် မြေထိသို့ ချိတ်ဆက်ထားသောကြောင့် ချို့ယွင်းချက်သည် Short-Circuit နီးပါးတစ်ခု ဖန်တီးခဲ့သည် -- Toaster ၏ ပုံမှန် လုပ်ဆောင် Current ထက် များစွာ ကြီးမားသော Current ကြီးမားတစ်ခုသည် လူတစ်ဦးထက် Earth Wire ကို ဖြတ်၍ ချက်ချင်း စီးဆင်းခဲ့သည်၊ အကြောင်းမှာ Current သည် Resistance အနည်းဆုံး လမ်းကြောင်းကို အမြဲ ယူပြီး Earth Wire ၏ Resistance သည် လူသား ခန္ဓာကိုယ်ထက် များစွာ နိမ့်နေသောကြောင့်ဖြစ်သည်။ ဤ Current ၏ ကြီးမားသော လှိုင်းသည် Fuse ဖော်ထုတ်ရန် ဒီဇိုင်းထုတ်ထားသည့် အတိအကျ အရာ ဖြစ်ခဲ့သည် - စက္ကန့်တစ်စိတ်တစ်ပိုင်းအတွင်း Fuse ကြိုးသည် လျင်မြန်စွာ ပူနွေးလာကာ အရည်ပျော်ကာ ပတ်လမ်းကို လုံးလုံးလျားလျား ချိုးဖျက်ကာ Toaster သို့ Power ကို ဖြတ်တောက်ခဲ့ပြီး အန္တရာယ်ရှိသော Current သည် ခွံသို့ လုံးဝ ရောက်ရှိခြင်း မပြုမီ ဖြစ်ခဲ့သည်။\n\nတူညီသော ချို့ယွင်းသော Toaster သည် သတ္တု ခွံနှင့် Earth Wire အစား Double Insulation ရှိခဲ့ပါက အဘယ်ဖြစ်လာမည်ကို ထို့နောက် ကိုသူရ မေးမြန်းခဲ့သည်။ Double Insulation သည် လုံးဝ မတူညီသော နိယာမတစ်ခုအပေါ် အလုပ်လုပ်ကြောင်း နေချည် ရှင်းပြခဲ့သည် - Earth Wire ပြုလုပ်သကဲ့သို့ ချို့ယွင်းချက် Current အတွက် ထွက်ပေါက် လမ်းကြောင်းတစ်ခု ပေးအပ်မည့်အစား ၎င်းသည် Live ကြိုးကို လူတစ်ဦးက ထိတွေ့နိုင်သည့် မည်သည့်အရာနှင့်မျှ လျှပ်စစ် ထိတွေ့မှု ဘယ်တော့မှ မဖြစ်ပေါ်စေရန် သီးသန့် Insulating ပစ္စည်း အလွှာ လွတ်လပ်သော နှစ်ထပ်ကို အသုံးပြုကာ ချို့ယွင်းချက်တစ်ခု ရောက်ရှိရန် Conductive ခွံ မရှိသောကြောင့် Earth Wire မလိုအပ်စေခြင်း ဖြစ်သည်။ စနစ် နှစ်ခုစလုံးသည် တူညီသော လုံခြုံရေး ရလဒ် -- သုံးစွဲသူကို လျှပ်စစ်ရိုက်ခြင်းမှ ကာကွယ်ပေးခြင်း -- ကို အခြေခံအားဖြင့် ကွဲပြားသော အင်ဂျင်နီယာ မဟာဗျူဟာ နှစ်ခုမှတစ်ဆင့် ရရှိကြောင်း သူမ ကောက်ချက်ချခဲ့သည် - တစ်ခုသည် ချို့ယွင်းချက် ဖြစ်ပေါ်ပြီးနောက် Power ကို လျင်မြန်စွာ ဖြတ်တောက်ခြင်းဖြင့်၊ အခြားတစ်ခုသည် ချို့ယွင်းချက်ကို သုံးစွဲသူထံ ဘယ်တော့မှ ရောက်ရှိနိုင်ခြင်း မရှိစေရန် ကာကွယ်ခြင်းဖြင့် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did the huge current flow through the earth wire rather than through the person?",
            questionMy:
                "ကြီးမားသော Current သည် လူတစ်ဦးထက် Earth Wire ကို ဖြတ်၍ စီးဆင်းရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Current always takes the path of least resistance, and the earth wire's resistance was far lower than a human body's",
              "The person was standing far away from the toaster",
              "The earth wire was disconnected entirely",
              "Human bodies do not conduct electricity at all",
            ],
            optionsMy: [
              "Current သည် Resistance အနည်းဆုံး လမ်းကြောင်းကို အမြဲ ယူပြီး Earth Wire ၏ Resistance သည် လူသား ခန္ဓာကိုယ်ထက် များစွာ နိမ့်နေသောကြောင့်",
              "လူတစ်ဦးသည် Toaster မှ ဝေးကွာစွာ ရပ်နေသောကြောင့်",
              "Earth Wire ကို လုံးလုံးလျားလျား ဖြုတ်ထားခဲ့သောကြောင့်",
              "လူသား ခန္ဓာကိုယ်များသည် လျှပ်စစ်ကို လုံးဝ Conduct မလုပ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining why current chose the earth wire path.",
            ],
            hintsMy: [
              "Current သည် Earth Wire လမ်းကြောင်းကို အဘယ်ကြောင့် ရွေးချယ်ခဲ့ကြောင်း ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, how does double insulation prevent electric shock, unlike an earth wire?",
            questionMy:
                "Double Insulation သည် Earth Wire နှင့် မတူဘဲ လျှပ်စစ်ရိုက်ခြင်းကို မည်သို့ ကာကွယ်ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It prevents the live wire from ever making contact with anything a person could touch, rather than providing an escape path",
              "It increases the voltage to a safer level",
              "It removes the need for any electricity at all",
              "It makes the toaster completely waterproof",
            ],
            optionsMy: [
              "ထွက်ပေါက် လမ်းကြောင်းတစ်ခု ပေးအပ်မည့်အစား Live ကြိုးကို လူတစ်ဦးက ထိတွေ့နိုင်သည့် မည်သည့်အရာနှင့်မျှ ဘယ်တော့မှ ထိတွေ့မှု မဖြစ်ပေါ်စေခြင်း",
              "Voltage ကို ပို၍ လုံခြုံသော အဆင့်သို့ တိုးမြှင့်ပေးခြင်း",
              "လျှပ်စစ် မည်သည့်အရာမျှ လိုအပ်ခြင်း ဖယ်ရှားပေးခြင်း",
              "Toaster ကို လုံးလုံးလျားလျား ရေစိုခံ ဖြစ်စေခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining double insulation's principle.",
            ],
            hintsMy: [
              "Double Insulation ၏ နိယာမကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, how do fuses/earth wires and double insulation differ in their safety strategy?",
            questionMy:
                "Fuse/Earth Wire နှင့် Double Insulation တို့သည် ၎င်းတို့၏ လုံခြုံရေး မဟာဗျူဟာတွင် မည်သို့ ကွဲပြားကြောင်းကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "One cuts power after a fault occurs; the other prevents the fault from ever reaching the user",
              "They are actually identical in every way",
              "Neither system provides any real safety",
              "Both systems require exactly the same components",
            ],
            optionsMy: [
              "တစ်ခုသည် ချို့ယွင်းချက် ဖြစ်ပေါ်ပြီးနောက် Power ကို ဖြတ်တောက်ပြီး အခြားတစ်ခုသည် ချို့ယွင်းချက်ကို သုံးစွဲသူထံ ဘယ်တော့မှ ရောက်ရှိနိုင်ခြင်း မရှိစေရန် ကာကွယ်သည်",
              "၎င်းတို့သည် နည်းလမ်း အားလုံးတွင် အမှန်တကယ် တူညီသည်",
              "စနစ် မည်သည့်တစ်ခုမျှ အမှန်တကယ် လုံခြုံရေး မပေးပါ",
              "စနစ် နှစ်ခုစလုံးသည် အတိအကျ တူညီသော ပါဝင်ပစ္စည်းများ လိုအပ်သည်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w16-d5",
      dayNumber: 5,
      titleEn: "Term 4 Recap: Electricity and Magnetism",
      titleMy: "စတုတ္ထတန်း ပြန်လည်သုံးသပ်ခြင်း - Electricity and Magnetism",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A fuse protects a circuit by...",
          questionMy: "Fuse တစ်ခုသည် ...ဖြင့် ပတ်လမ်းကို ကာကွယ်ပေးသည်",
          optionsEn: [
            "Melting and breaking the circuit if current is too high",
            "Increasing the voltage permanently",
            "Making the appliance run faster",
            "Storing extra electrical energy",
          ],
          optionsMy: [
            "Current ပို၍ ကြီးလွန်းပါက အရည်ပျော်ကာ ပတ်လမ်းကို ချိုးဖျက်ခြင်း",
            "Voltage ကို ထာဝစဉ် တိုးမြှင့်ခြင်း",
            "ပစ္စည်းကို ပို၍ မြန်စွာ လည်ပတ်စေခြင်း",
            "ထပ်ဆောင်း Electrical Energy သိုလှောင်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In a series circuit, a break anywhere in the loop...",
          questionMy:
              "Series Circuit တစ်ခုတွင် Loop အတွင်း နေရာမည်သို့မဆို ကွက်လပ်တစ်ခုသည်...",
          optionsEn: [
            "Stops current everywhere in that loop",
            "Only affects one component",
            "Has no effect on the circuit",
            "Increases the current",
          ],
          optionsMy: [
            "ထို Loop အတွင်းရှိ နေရာတိုင်းတွင် Current ကို ရပ်တန့်စေသည်",
            "ပစ္စည်း တစ်ခုကိုသာ သက်ရောက်စေသည်",
            "ပတ်လမ်းအပေါ် သက်ရောက်မှု မရှိပါ",
            "Current ကို တိုးမြှင့်ပေးသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Like magnetic poles always...",
          questionMy: "Like Magnetic Pole များသည် အမြဲ...",
          optionsEn: [
            "Repel each other",
            "Attract each other",
            "Have no effect on each other",
            "Merge into one",
          ],
          optionsMy: [
            "တစ်ခုနှင့်တစ်ခု တွန်းလှန်ကြသည်",
            "တစ်ခုနှင့်တစ်ခု ဆွဲငင်ကြသည်",
            "တစ်ခုနှင့်တစ်ခု သက်ရောက်မှု မရှိပါ",
            "တစ်ခုတည်းအဖြစ် ပေါင်းစည်းကြသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
const CourseTermDef igcsePhysicsTerm4 = CourseTermDef(
  id: "course-igcse-phys-term4",
  termNumber: 4,
  titleEn: "Electricity and Magnetism",
  titleMy: "လျှပ်စစ်နှင့် သံလိုက်စွမ်းပကား",
  certificateTitleEn: "IGCSE Physics Term 4 Certificate",
  certificateTitleMy: "IGCSE ရူပဗေဒ စတုတ္ထတန်း အောင်လက်မှတ်",
  weeks: [
    _igcsePhysWeek13,
    _igcsePhysWeek14,
    _igcsePhysWeek15,
    _igcsePhysWeek16,
  ],
);
// =====================================================================
// Week 17: "Electromagnetic Effects"
// =====================================================================

const CourseWeekDef _igcsePhysWeek17 = CourseWeekDef(
  id: "course-igcse-phys-w17",
  weekNumber: 17,
  titleEn: "Electromagnetic Effects",
  titleMy: "လျှပ်စစ်သံလိုက် သက်ရောက်မှုများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w17-d1",
      dayNumber: 1,
      titleEn: "The Motor Effect and Electric Motors",
      titleMy: "The Motor Effect နှင့် Electric Motor",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A current-carrying wire is placed in a magnetic field. What happens to the wire?",
          questionMy:
              "Current သယ်ဆောင်ထားသော ကြိုးတစ်ခုကို သံလိုက်စက်ကွင်း တစ်ခုအတွင်း ထားလိုက်သည်။ ကြိုးတွင် အဘယ်ဖြစ်လာသနည်း။",
          optionsEn: [
            "It experiences a force, which can cause it to move -- the motor effect",
            "It immediately loses all its current",
            "It becomes permanently magnetised itself",
            "Nothing happens at all to the wire",
          ],
          optionsMy: [
            "အားတစ်ခု ခံစားရကာ ရွေ့လျားစေနိုင်သည် -- The Motor Effect",
            "၎င်း၏ Current အားလုံးကို ချက်ချင်း ဆုံးရှုံးသည်",
            "ကိုယ်တိုင် ထာဝစဉ် Magnetised ဖြစ်သွားသည်",
            "ကြိုးတွင် မည်သည့်အရာမျှ လုံးဝ မဖြစ်ပေါ်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This force is the basis of the electric motor -- use Fleming's left-hand rule to find its direction: thumb = motion (force), first finger = field, second finger = current.",
          ],
          hintsMy: [
            "ဤ အားသည် Electric Motor ၏ အခြေခံ ဖြစ်သည် -- ၎င်း၏ ဦးတည်ချက်ကို ရှာဖွေရန် Fleming's Left-Hand Rule ကို အသုံးပြုပါ- မလိတ်လက်မ = Motion (Force)၊ လက်ညှိုးလက်ချောင်း = Field၊ အလယ်လက်ချောင်း = Current ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the purpose of the split-ring commutator in a simple DC electric motor?",
          questionMy:
              "ရိုးရှင်းသော DC Electric Motor တစ်ခုတွင် Split-Ring Commutator ၏ ရည်ရွယ်ချက်ကား အဘယ်နည်း။",
          optionsEn: [
            "It reverses the current direction in the coil every half turn, keeping the turning force acting in the same rotational direction",
            "It permanently stops the motor from turning",
            "It increases the voltage supplied to the motor",
            "It has no functional purpose at all",
          ],
          optionsMy: [
            "လှည့်အား တူညီသော လှည့်ပတ် ဦးတည်ချက်တွင် ဆက်လက် လုပ်ဆောင်နေစေရန် ကွင်း၏ Current ဦးတည်ချက်ကို ထက်ဝက် လှည့်တိုင်း ပြောင်းပြန်ပေးသည်",
            "Motor ကို ထာဝစဉ် လှည့်ပတ်ခြင်း မှ ရပ်တန့်စေသည်",
            "Motor သို့ ထောက်ပံ့သော Voltage ကို တိုးမြှင့်ပေးသည်",
            "လုပ်ဆောင်ချက်ဆိုင်ရာ ရည်ရွယ်ချက် လုံးဝ မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Without the commutator, the coil would turn only 180 degrees before the force reversed and pushed it back -- the commutator ensures continuous one-directional rotation.",
          ],
          hintsMy: [
            "Commutator မရှိပါက ကွင်းသည် ဒီဂရီ ၁၈၀ သာ လှည့်ပတ်ပြီး အားသည် ပြောင်းပြန်ဖြစ်ကာ ၎င်းကို နောက်ပြန်တွန်းလိမ့်မည် -- Commutator သည် ဆက်တိုက် ဦးတည်ချက်တစ်ခုတည်း လှည့်ပတ်မှုကို သေချာစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "How can you increase the strength of an electromagnet made from a solenoid?",
          questionMy:
              "Solenoid မှ ပြုလုပ်ထားသော Electromagnet ၏ အားကို မည်သို့ တိုးမြှင့်နိုင်သနည်း။",
          optionsEn: [
            "Increase the current, add more turns of wire, or insert a soft iron core",
            "Decrease the current to zero",
            "Remove all wire turns completely",
            "Use a plastic core instead of iron",
          ],
          optionsMy: [
            "Current တိုးမြှင့်ခြင်း၊ ကြိုးလှည့်ပတ် အရေအတွက် တိုးမြှင့်ခြင်း သို့မဟုတ် Soft Iron Core ထည့်သွင်းခြင်း",
            "Current ကို သုညသို့ လျော့ချခြင်း",
            "ကြိုးလှည့်ပတ်မှု အားလုံးကို လုံးလုံးလျားလျား ဖယ်ရှားခြင်း",
            "Iron အစား Plastic Core ကို အသုံးပြုခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "All three factors increase the magnetic field strength produced by a current-carrying coil -- the soft iron core concentrates and strengthens the field further.",
          ],
          hintsMy: [
            "အချက် သုံးခုစလုံးသည် Current သယ်ဆောင်ထားသော ကွင်းတစ်ခု ထုတ်ပေးသော သံလိုက်စက်ကွင်း အားကို တိုးမြှင့်ပေးသည် -- Soft Iron Core သည် Field ကို ထပ်မံ စုစည်း၍ အားကောင်းစေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w17-d2",
      dayNumber: 2,
      titleEn: "Match: Electromagnetism Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Electromagnetism ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w17-dm-1",
          termEn: "Solenoid",
          termMy: "Solenoid",
          matchEn:
              "A coil of wire that produces a magnetic field similar to a bar magnet when current flows through it",
          matchMy:
              "Current စီးဆင်းသည့်အခါ Bar Magnet နှင့် ဆင်တူသော သံလိုက်စက်ကွင်း ထုတ်ပေးသော ကြိုးလှည့်ပတ်",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w17-dm-2",
          termEn: "Fleming's left-hand rule",
          termMy: "Fleming's Left-Hand Rule",
          matchEn:
              "A method to find the direction of the force on a current-carrying wire in a magnetic field",
          matchMy:
              "သံလိုက်စက်ကွင်းတစ်ခုအတွင်း Current သယ်ဆောင်ထားသော ကြိုးတစ်ခုပေါ်ရှိ Force ၏ ဦးတည်ချက်ကို ရှာဖွေသော နည်းလမ်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w17-dm-3",
          termEn: "Split-ring commutator",
          termMy: "Split-Ring Commutator",
          matchEn:
              "A device in a DC motor that reverses current direction every half turn to keep rotation continuous",
          matchMy:
              "DC Motor တစ်ခုတွင် လှည့်ပတ်မှု ဆက်တိုက်ရှိစေရန် ထက်ဝက် လှည့်တိုင်း Current ဦးတည်ချက်ကို ပြောင်းပြန်ပေးသော ကိရိယာ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w17-dm-4",
          termEn: "Motor effect",
          termMy: "Motor Effect",
          matchEn:
              "The force experienced by a current-carrying conductor placed in a magnetic field",
          matchMy:
              "သံလိုက်စက်ကွင်းတစ်ခုအတွင်း ထားလိုက်သော Current သယ်ဆောင်ထားသော Conductor တစ်ခု ခံစားရသော Force",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w17-dm-5",
          termEn: "Electromagnet",
          termMy: "Electromagnet",
          matchEn:
              "A magnet formed by current flowing through a coil wound around a soft iron core",
          matchMy:
              "Soft Iron Core ပတ်လည်တွင် လှည့်ပတ်ထားသော ကွင်းတစ်ခုကို ဖြတ်သန်းသော Current ဖြင့် ဖွဲ့စည်းလာသော သံလိုက်",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w17-d3",
      dayNumber: 3,
      titleEn: "Sort: Increases Electromagnet Strength or Not?",
      titleMy:
          "စီစစ်ကြမည် - Electromagnet အားကို တိုးမြှင့်ပေးသလား၊ မပေးဘူးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Increases Strength", "Does Not Increase Strength"],
        bucketsMy: ["Increases Strength", "Does Not Increase Strength"],
        items: [
          SortingItem(
            id: "igcsephys-w17-sort-1",
            labelEn: "Increasing the current through the coil",
            labelMy: "ကွင်းကို ဖြတ်သန်း Current တိုးမြှင့်ခြင်း",
            correctBucketEn: "Increases Strength",
            correctBucketMy: "Increases Strength",
          ),
          SortingItem(
            id: "igcsephys-w17-sort-2",
            labelEn: "Adding more turns of wire to the coil",
            labelMy: "ကွင်းသို့ ကြိုးလှည့်ပတ် ထပ်ဆောင်း ထည့်ခြင်း",
            correctBucketEn: "Increases Strength",
            correctBucketMy: "Increases Strength",
          ),
          SortingItem(
            id: "igcsephys-w17-sort-3",
            labelEn: "Replacing the soft iron core with a plastic core",
            labelMy: "Soft Iron Core ကို Plastic Core ဖြင့် အစားထိုးခြင်း",
            correctBucketEn: "Does Not Increase Strength",
            correctBucketMy: "Does Not Increase Strength",
          ),
          SortingItem(
            id: "igcsephys-w17-sort-4",
            labelEn: "Inserting a soft iron core into the coil",
            labelMy: "ကွင်းထဲသို့ Soft Iron Core ထည့်သွင်းခြင်း",
            correctBucketEn: "Increases Strength",
            correctBucketMy: "Increases Strength",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w17-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's DC Motor Model",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ DC Motor မော်ဒယ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's DC Motor Model",
        titleMy: "နေချည်၏ DC Motor မော်ဒယ်",
        passageEn:
            "Ko Thura helped Nay Chi build a simple working model DC motor: a coil of wire mounted between the poles of a permanent magnet, connected to a battery through a split-ring commutator and carbon brushes.\n\nAs current flowed through one side of the coil, she used Fleming's left-hand rule to predict the force direction: with her first finger pointing along the magnetic field (from the north pole toward the south pole) and her second finger pointing along the current direction, her thumb indicated the force pushing that side of the coil upward. On the opposite side of the coil, the current flowed in the reverse direction, so the same reasoning predicted a downward force there instead -- together, these two opposite forces on opposite sides of the coil created a turning effect, rotating the coil.\n\nShe then watched what happened as the coil reached the vertical position, halfway through its rotation. At this exact moment, the commutator's gap crossed the brushes, momentarily reversing which way current flowed through the coil for the second half of the turn. Ko Thura asked her why this reversal was essential rather than just letting the coil continue with the original current direction. Nay Chi explained that without the reversal, the force on each side of the coil would also reverse direction relative to the coil's new orientation, which would push the coil back toward its starting position rather than continuing to rotate the same way -- the motor would simply oscillate back and forth instead of spinning continuously. The commutator's precisely timed reversal ensured the force always acted to continue the rotation in the same direction, turn after turn.",
        passageMy:
            "ကိုသူရသည် ရိုးရှင်းသော အလုပ်လုပ်နေသော DC Motor မော်ဒယ်တစ်ခု တည်ဆောက်ရန် နေချည်ကို ကူညီခဲ့သည် - Permanent Magnet၏ Pole များကြားတွင် တပ်ဆင်ထားသော ကြိုးလှည့်ပတ်တစ်ခုကို Split-Ring Commutator နှင့် Carbon Brush များမှတစ်ဆင့် Battery တစ်ခုနှင့် ချိတ်ဆက်ထားသည်။\n\nCurrent သည် ကွင်း၏ တစ်ဖက်ကို ဖြတ်သန်း စီးဆင်းစဉ် Force ဦးတည်ချက်ကို ခန့်မှန်းရန် သူမ Fleming's Left-Hand Rule ကို အသုံးပြုခဲ့သည် - သူမ၏ လက်ညှိုးလက်ချောင်းသည် သံလိုက်စက်ကွင်းတစ်လျှောက် (North Pole မှ South Pole ဘက်သို့) ညွှန်ပြနေစဉ် သူမ၏ အလယ်လက်ချောင်းသည် Current ဦးတည်ချက်တစ်လျှောက် ညွှန်ပြနေစဉ် သူမ၏ မလိတ်လက်မသည် ကွင်း၏ ထိုဘက်ကို အပေါ်သို့ တွန်းနေသော Force ကို ညွှန်ပြခဲ့သည်။ ကွင်း၏ ဆန့်ကျင်ဘက်တွင် Current သည် ပြောင်းပြန် ဦးတည်ချက်ဖြင့် စီးဆင်းသောကြောင့် တူညီသော ကျိုးကြောင်းဆင်ခြင်ချက်သည် ထိုနေရာတွင် အောက်ဘက်သို့ Force တစ်ခုကို ယင်းအစား ခန့်မှန်းခဲ့သည် -- ဤ ဆန့်ကျင်ဘက် Force နှစ်ခု ကွင်း၏ ဆန့်ကျင်ဘက်နေရာများတွင် အတူတကွ လှည့်အား သက်ရောက်မှုတစ်ခု ဖန်တီးကာ ကွင်းကို လှည့်ပတ်စေခဲ့သည်။\n\nကွင်းသည် ၎င်း၏ လှည့်ပတ်မှု လမ်းလယ်တွင် ဒေါင်လိုက် တည်နေရာသို့ ရောက်ရှိသည့်အခါ အဘယ်ဖြစ်လာသည်ကို ထို့နောက် သူမ ကြည့်ရှုခဲ့သည်။ ဤ အတိအကျ အခိုက်တွင် Commutator ၏ ကွက်လပ်သည် Brush များကို ဖြတ်သန်းကာ လှည့်ပတ်မှု ဒုတိယ တစ်ဝက်အတွက် ကွင်းကို ဖြတ်သန်း Current စီးဆင်းသည့်ဘက်ကို ခေတ္တ ပြောင်းပြန် ဖြစ်စေခဲ့သည်။ မူလ Current ဦးတည်ချက်ဖြင့် ကွင်းကို ဆက်လက် လုပ်ဆောင်စေရုံမှလွဲ၍ ဤ ပြောင်းပြန်ဖြစ်ခြင်းသည် မရှိမဖြစ် ဖြစ်ရသည့် အကြောင်းရင်းကို ကိုသူရ သူမကို မေးမြန်းခဲ့သည်။ ပြောင်းပြန် ဖြစ်ခြင်း မရှိပါက ကွင်း၏ ဘက်တစ်ဖက်စီရှိ Force သည်လည်း ကွင်း၏ တည်နေရာအသစ်နှင့် ဆက်စပ်၍ ဦးတည်ချက် ပြောင်းပြန် ဖြစ်သွားကာ ၎င်းသည် တူညီသော နည်းလမ်းဖြင့် ဆက်လက် မလှည့်ပတ်စေဘဲ ကွင်းကို မူလ စတင်ခဲ့သော တည်နေရာသို့ ပြန်တွန်းမည်ဖြစ်ကြောင်း -- Motor သည် ဆက်တိုက် လှည့်ပတ်နေမည့်အစား ရိုးရိုးရှင်းရှင်း ရှေ့နောက် တက်ကျဖြစ်နေလိမ့်မည်ဟု နေချည် ရှင်းပြခဲ့သည်။ Commutator ၏ တိကျစွာ အချိန်ကိုက် ပြောင်းပြန်ဖြစ်ခြင်းသည် Force သည် ဆက်တိုက် ဦးတည်ချက်တစ်ခုတည်းတွင် လှည့်ပတ်မှုကို ဆက်လက် လုပ်ဆောင်စေရန် သေချာစေခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what did the two opposite forces on opposite sides of the coil create together?",
            questionMy:
                "ကွင်း၏ ဆန့်ကျင်ဘက်နေရာများရှိ ဆန့်ကျင်ဘက် Force နှစ်ခု အတူတကွ ဖန်တီးခဲ့သည့် အရာကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "A turning effect that rotated the coil",
              "A complete stop of all motion",
              "An increase in the battery's voltage",
              "A change in the magnet's colour",
            ],
            optionsMy: [
              "ကွင်းကို လှည့်ပတ်စေသော လှည့်အား သက်ရောက်မှု",
              "ရွေ့လျားမှု အားလုံး၏ လုံးလုံးလျားလျား ရပ်တန့်ခြင်း",
              "Battery ၏ Voltage တိုးလာခြင်း",
              "သံလိုက်၏ အရောင် ပြောင်းလဲခြင်း",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of paragraph 2."],
            hintsMy: ["စာပိုဒ် ၂ ၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, when did the commutator reverse the current direction?",
            questionMy:
                "Commutator သည် Current ဦးတည်ချက်ကို မည်သည့်အချိန်တွင် ပြောင်းပြန် ဖြစ်စေခဲ့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "When the coil reached the vertical position, halfway through rotation",
              "At the very start of the experiment only",
              "Never -- the current direction stayed constant throughout",
              "Only when the battery was removed",
            ],
            optionsMy: [
              "ကွင်းသည် လှည့်ပတ်မှု လမ်းလယ်တွင် ဒေါင်လိုက် တည်နေရာသို့ ရောက်ရှိသည့်အခါ",
              "စမ်းသပ်မှု၏ အစတွင်သာ",
              "ဘယ်တော့မှ မဟုတ်ပါ -- Current ဦးတည်ချက်သည် တစ်လျှောက်လုံး တည်ငြိမ်စွာ ဆက်ရှိနေသည်",
              "Battery ကို ဖယ်ရှားလိုက်သည့်အခါသာ",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the sentence about the commutator's timing."],
            hintsMy: [
              "Commutator ၏ အချိန်ကိုက်အကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, what would happen without the commutator's reversal?",
            questionMy:
                "Commutator ၏ ပြောင်းပြန်ဖြစ်ခြင်း မရှိပါက အဘယ်ဖြစ်လာမည်ကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "The motor would oscillate back and forth instead of spinning continuously",
              "The motor would spin twice as fast",
              "The motor would work perfectly with no issues",
              "The permanent magnet would lose its magnetism",
            ],
            optionsMy: [
              "Motor သည် ဆက်တိုက် လှည့်ပတ်မည့်အစား ရှေ့နောက် တက်ကျဖြစ်နေလိမ့်မည်",
              "Motor သည် နှစ်ဆ လျင်မြန်စွာ လှည့်ပတ်လိမ့်မည်",
              "Motor သည် ပြဿနာ မရှိဘဲ ပြီးပြည့်စုံစွာ အလုပ်လုပ်လိမ့်မည်",
              "Permanent Magnet သည် ၎င်း၏ သံလိုက်ဓာတ်ကို ဆုံးရှုံးလိမ့်မည်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w17-d5",
      dayNumber: 5,
      titleEn: "Week 17 Recap: Electromagnetic Effects",
      titleMy: "ဆယ့်ခုနစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - Electromagnetic Effects",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "The motor effect is the force experienced by a current-carrying wire in a...",
          questionMy:
              "Motor Effect ဆိုသည်မှာ Current သယ်ဆောင်ထားသော ကြိုးတစ်ခု ...အတွင်း ခံစားရသော Force ဖြစ်သည်",
          optionsEn: [
            "Magnetic field",
            "Vacuum only",
            "Sound wave",
            "Gravitational field only",
          ],
          optionsMy: [
            "သံလိုက်စက်ကွင်း",
            "Vacuum သာ",
            "အသံလှိုင်း",
            "Gravitational Field သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A split-ring commutator keeps a DC motor spinning by...",
          questionMy:
              "Split-Ring Commutator သည် ...ဖြင့် DC Motor ကို ဆက်လက် လှည့်ပတ်စေသည်",
          optionsEn: [
            "Reversing the current direction every half turn",
            "Stopping the current completely",
            "Increasing the voltage infinitely",
            "Removing the magnetic field",
          ],
          optionsMy: [
            "ထက်ဝက် လှည့်တိုင်း Current ဦးတည်ချက်ကို ပြောင်းပြန် ဖြစ်စေခြင်း",
            "Current ကို လုံးလုံးလျားလျား ရပ်တန့်စေခြင်း",
            "Voltage ကို အကန့်အသတ်မရှိ တိုးမြှင့်ခြင်း",
            "သံလိုက်စက်ကွင်းကို ဖယ်ရှားခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A soft iron core inside a solenoid's coil...",
          questionMy: "Solenoid ၏ ကွင်းအတွင်းရှိ Soft Iron Core သည်...",
          optionsEn: [
            "Strengthens the electromagnet's magnetic field",
            "Removes all magnetism completely",
            "Has no effect on the field at all",
            "Turns the solenoid into a battery",
          ],
          optionsMy: [
            "Electromagnet ၏ သံလိုက်စက်ကွင်းကို အားကောင်းစေသည်",
            "သံလိုက်ဓာတ် အားလုံးကို လုံးလုံးလျားလျား ဖယ်ရှားသည်",
            "Field အပေါ် သက်ရောက်မှု လုံးဝ မရှိပါ",
            "Solenoid ကို Battery အဖြစ် ပြောင်းလဲစေသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 18: "Electromagnetic Induction"
// =====================================================================

const CourseWeekDef _igcsePhysWeek18 = CourseWeekDef(
  id: "course-igcse-phys-w18",
  weekNumber: 18,
  titleEn: "Electromagnetic Induction",
  titleMy: "လျှပ်စစ်သံလိုက် လှုံ့ဆော်မှု (Induction)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w18-d1",
      dayNumber: 1,
      titleEn: "Generators and Transformers",
      titleMy: "Generator နှင့် Transformer",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "How does moving a magnet into a coil of wire generate an electric current?",
          questionMy:
              "သံလိုက်တစ်ခုကို ကြိုးလှည့်ပတ်တစ်ခုထဲသို့ ရွေ့လျားစေခြင်းသည် လျှပ်စစ် Current တစ်ခုကို မည်သို့ ထုတ်ပေးသနည်း။",
          optionsEn: [
            "The changing magnetic field through the coil induces an electromotive force (emf), driving a current",
            "The magnet directly pushes electrons out of the wire physically",
            "The coil must first be heated to a high temperature",
            "Moving a magnet never actually generates any current",
          ],
          optionsMy: [
            "ကွင်းကို ဖြတ်သန်း ပြောင်းလဲနေသော သံလိုက်စက်ကွင်းသည် Electromotive Force (Emf) ကို လှုံ့ဆော်ကာ Current တစ်ခု ရွေ့လျားစေသည်",
            "သံလိုက်သည် Electron များကို ကြိုးမှ ရုပ်ပိုင်းဆိုင်ရာ တိုက်ရိုက် တွန်းထုတ်သည်",
            "ကွင်းကို ပထမဆုံး အပူချိန်မြင့်စွာ အပူပေးရမည်",
            "သံလိုက်တစ်ခုကို ရွေ့လျားစေခြင်းသည် Current မည်သည်ကိုမျှ အမှန်တကယ် ဘယ်တော့မှ မထုတ်ပေးပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is Faraday's law of electromagnetic induction -- a changing magnetic field (from relative motion between magnet and coil) induces a voltage, which drives current if the circuit is complete.",
          ],
          hintsMy: [
            "ဤသည်မှာ Faraday's Law of Electromagnetic Induction ဖြစ်သည် -- ပြောင်းလဲနေသော သံလိုက်စက်ကွင်းတစ်ခု (သံလိုက်နှင့် ကွင်းကြား ဆွေမျိုး ရွေ့လျားမှုမှ) သည် Voltage တစ်ခုကို လှုံ့ဆော်ကာ ပတ်လမ်း ပြီးပြည့်စုံပါက Current တစ်ခုကို ရွေ့လျားစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A step-up transformer has 100 turns on the primary coil and 500 turns on the secondary coil. If the primary voltage is 20 V, what is the secondary voltage? (Vp/Vs = Np/Ns)",
          questionMy:
              "Step-Up Transformer တစ်ခုတွင် Primary Coil တွင် လှည့်ပတ် ၁၀၀ နှင့် Secondary Coil တွင် လှည့်ပတ် ၅၀၀ ရှိသည်။ Primary Voltage သည် 20 V ဖြစ်ပါက Secondary Voltage ကား အဘယ်နည်း။ (Vp/Vs = Np/Ns)",
          optionsEn: ["100 V (20 x 500/100)", "4 V", "20 V", "500 V"],
          optionsMy: ["100 V (20 x 500/100)", "4 V", "20 V", "500 V"],
          correctIndex: 0,
          hintsEn: [
            "Vs = Vp x (Ns/Np) = 20 x (500/100) = 20 x 5 = 100 V. A step-up transformer always has more turns on the secondary than the primary.",
          ],
          hintsMy: [
            "Vs = Vp x (Ns/Np) = 20 x (500/100) = 20 x 5 = 100 V ။ Step-Up Transformer တစ်ခုတွင် Secondary သည် Primary ထက် လှည့်ပတ် အမြဲ ပို၍ များသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "For an ideal transformer, if voltage increases from primary to secondary, what must happen to current?",
          questionMy:
              "စံပြ Transformer တစ်ခုအတွက် Voltage သည် Primary မှ Secondary သို့ တိုးလာပါက Current တွင် အဘယ်ဖြစ်ရမည်နည်း။",
          optionsEn: [
            "Current must decrease proportionally, since power in equals power out",
            "Current must also increase by the same factor",
            "Current stays exactly the same",
            "Current becomes exactly zero",
          ],
          optionsMy: [
            "Power In သည် Power Out နှင့် ညီမျှသောကြောင့် Current သည် အချိုးကျ လျော့ကျရမည်",
            "Current သည်လည်း တူညီသော Factor ဖြင့် တိုးလာရမည်",
            "Current သည် အတိအကျ တူညီနေသည်",
            "Current သည် အတိအကျ သုည ဖြစ်လာသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "For an ideal (100% efficient) transformer, Vp x Ip = Vs x Is, so if Vs is larger than Vp, Is must be smaller than Ip to keep power constant.",
          ],
          hintsMy: [
            "စံပြ (100% ထိရောက်မှု) Transformer တစ်ခုအတွက် Vp x Ip = Vs x Is ဖြစ်သောကြောင့် Vs သည် Vp ထက် ကြီးပါက Power တည်ငြိမ်စွာ ဆက်ရှိစေရန် Is သည် Ip ထက် ငယ်ရမည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w18-d2",
      dayNumber: 2,
      titleEn: "Match: Induction and Transformer Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Induction နှင့် Transformer ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w18-dm-1",
          termEn: "Electromagnetic induction",
          termMy: "Electromagnetic Induction",
          matchEn:
              "Generating a voltage by changing the magnetic field around a conductor",
          matchMy:
              "Conductor တစ်ခု ပတ်လည်ရှိ သံလိုက်စက်ကွင်းကို ပြောင်းလဲစေခြင်းဖြင့် Voltage တစ်ခု ထုတ်ပေးခြင်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w18-dm-2",
          termEn: "AC generator",
          termMy: "AC Generator",
          matchEn:
              "A device that rotates a coil in a magnetic field to produce alternating current",
          matchMy:
              "Alternating Current ထုတ်ပေးရန် သံလိုက်စက်ကွင်းအတွင်း ကွင်းတစ်ခုကို လှည့်ပတ်ပေးသော ကိရိယာ",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w18-dm-3",
          termEn: "Step-up transformer",
          termMy: "Step-Up Transformer",
          matchEn:
              "A transformer with more turns on the secondary coil than the primary, increasing voltage",
          matchMy:
              "Voltage ကို တိုးမြှင့်ကာ Primary ထက် Secondary Coil တွင် လှည့်ပတ် ပို၍ များသော Transformer",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w18-dm-4",
          termEn: "Step-down transformer",
          termMy: "Step-Down Transformer",
          matchEn:
              "A transformer with fewer turns on the secondary coil than the primary, decreasing voltage",
          matchMy:
              "Voltage ကို လျော့ချကာ Primary ထက် Secondary Coil တွင် လှည့်ပတ် ပို၍ နည်းသော Transformer",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w18-dm-5",
          termEn: "Ideal transformer efficiency",
          termMy: "Ideal Transformer Efficiency",
          matchEn:
              "The assumption that power input equals power output, with no energy lost",
          matchMy:
              "Energy ဆုံးရှုံးမှု မရှိဘဲ Power Input သည် Power Output နှင့် ညီမျှသည်ဟူသော ယူဆချက်",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w18-d3",
      dayNumber: 3,
      titleEn: "Sort: Step-Up or Step-Down Transformer?",
      titleMy: "စီစစ်ကြမည် - Step-Up လား၊ Step-Down Transformer လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Step-Up Transformer", "Step-Down Transformer"],
        bucketsMy: ["Step-Up Transformer", "Step-Down Transformer"],
        items: [
          SortingItem(
            id: "igcsephys-w18-sort-1",
            labelEn: "Secondary coil has more turns than the primary coil",
            labelMy:
                "Secondary Coil တွင် Primary Coil ထက် လှည့်ပတ် ပို၍ များသည်",
            correctBucketEn: "Step-Up Transformer",
            correctBucketMy: "Step-Up Transformer",
          ),
          SortingItem(
            id: "igcsephys-w18-sort-2",
            labelEn:
                "Used at power stations to raise voltage for efficient long-distance transmission",
            labelMy:
                "ထိရောက်သော ဝေးလံသော အကွာအဝေး ပို့ဆောင်ရေးအတွက် Voltage မြှင့်ရန် လျှပ်စစ်ဓာတ်အားပေး စက်ရုံများတွင် အသုံးပြု",
            correctBucketEn: "Step-Up Transformer",
            correctBucketMy: "Step-Up Transformer",
          ),
          SortingItem(
            id: "igcsephys-w18-sort-3",
            labelEn: "Secondary coil has fewer turns than the primary coil",
            labelMy:
                "Secondary Coil တွင် Primary Coil ထက် လှည့်ပတ် ပို၍ နည်းသည်",
            correctBucketEn: "Step-Down Transformer",
            correctBucketMy: "Step-Down Transformer",
          ),
          SortingItem(
            id: "igcsephys-w18-sort-4",
            labelEn:
                "Used to reduce mains voltage safely for household appliances like phone chargers",
            labelMy:
                "Phone Charger ကဲ့သို့ အိမ်သုံးပစ္စည်းများအတွက် Mains Voltage ကို လုံခြုံစွာ လျှော့ချရန် အသုံးပြု",
            correctBucketEn: "Step-Down Transformer",
            correctBucketMy: "Step-Down Transformer",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w18-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Power Grid Question",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ Power Grid မေးခွန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Power Grid Question",
        titleMy: "နေချည်၏ Power Grid မေးခွန်း",
        passageEn:
            "Ko Thura asked Nay Chi a question that had puzzled her for weeks: why does the national power grid transmit electricity at extremely high voltages, like 400,000 V, along overhead cables, only to step the voltage back down to a safe 230 V by the time it reaches a household socket?\n\nShe began by recalling that any real transmission cable has some resistance, and that power lost to heating in a cable is calculated as current squared multiplied by resistance (P = I2R) -- critically, this loss depends on the current, not directly on the voltage or the power being delivered. Since the same electrical power can be delivered as either a high voltage with a low current, or a low voltage with a high current, transmitting power at very high voltage allows the current to be kept very low for the same power delivered, which -- because the loss depends on current squared -- dramatically reduces the wasted heat energy lost along the length of the cables.\n\nKo Thura then asked why the voltage could not simply stay at 400,000 V all the way into people's homes, since that would seemingly avoid needing any transformers at all along the way. Nay Chi explained this was a straightforward safety trade-off: 400,000 V would be lethally dangerous in an ordinary household appliance or wall socket, so step-down transformers were needed at substations to progressively reduce the voltage to a much safer level before it reached homes, schools, and businesses. She summarised the whole system as a chain of trade-offs managed by transformers: step-up transformers at power stations minimised transmission losses over long distances, while step-down transformers at the far end restored safety for everyday use -- two opposite transformer designs working together to solve two different problems within the same overall system.",
        passageMy:
            "ကိုသူရသည် သူမကို ရက်သတ္တပတ်များစွာ ခက်ခဲစေခဲ့သော မေးခွန်းတစ်ခုကို နေချည်ကို မေးမြန်းခဲ့သည် - နိုင်ငံတော် Power Grid သည် ၎င်းသည် အိမ်သုံး Socket တစ်ခုသို့ ရောက်ရှိချိန်တွင် Voltage ကို လုံခြုံသော 230 V သို့ ပြန်လည် လျော့ချရန်သာ 400,000 V ကဲ့သို့ အလွန် မြင့်မားသော Voltage များတွင် အပေါ်ရှိ ကြိုးများတစ်လျှောက် လျှပ်စစ်ကို ဘာကြောင့် ပို့လွှတ်ရသနည်း။\n\nအမှန်တကယ် Transmission ကြိုး မည်သည်တွင်မဆို Resistance အနည်းငယ် ရှိကြောင်း၊ ကြိုးထဲရှိ အပူပေးခြင်းသို့ ဆုံးရှုံးသော Power ကို Current ကို ကွက်ရင်းအဖြစ် Resistance ဖြင့် မြှောက်ကာ တွက်ချက်ကြောင်း (P = I2R) -- အရေးကြီးသည်မှာ ဤ ဆုံးရှုံးမှုသည် Voltage သို့မဟုတ် ပေးအပ်နေသော Power အပေါ် တိုက်ရိုက် အခြေခံမည့်အစား Current အပေါ် အခြေခံသည် -- ကို သူမ ပထမဆုံး သတိရခဲ့သည်။ တူညီသော လျှပ်စစ် Power ကို Voltage မြင့်၍ Current နိမ့်သော အနေအထားဖြင့် သော်လည်းကောင်း Voltage နိမ့်၍ Current မြင့်သော အနေအထားဖြင့် သော်လည်းကောင်း ပေးအပ်နိုင်သောကြောင့် Voltage အလွန် မြင့်မားစွာဖြင့် Power ပို့လွှတ်ခြင်းက တူညီသော ပေးအပ် Power အတွက် Current ကို အလွန် နိမ့်စွာ ထိန်းထားခွင့်ပြုသည်၊ ၎င်းသည် -- ဆုံးရှုံးမှုသည် Current ကွက်ရင်းအပေါ် အခြေခံသောကြောင့် -- ကြိုးများ၏ အလျားတစ်လျှောက် အလဟဿ ဆုံးရှုံးသော အပူ Energy ကို များစွာ လျှော့ချပေးသည်။\n\nလမ်းတစ်လျှောက် Transformer မည်သည်ကိုမျှ လိုအပ်ခြင်း ရှောင်ရှားနိုင်လိမ့်မည်ဟု ထင်ရသောကြောင့် Voltage ကို လူများ၏ အိမ်များထဲသို့ ဝင်ရောက်သည်အထိ 400,000 V တွင် ရိုးရိုးရှင်းရှင်း ဆက်ထားရန် မဖြစ်နိုင်ရသည့် အကြောင်းရင်းကို ထို့နောက် ကိုသူရ မေးမြန်းခဲ့သည်။ ဤသည်ကား ရှင်းလင်းသော လုံခြုံရေး Trade-Off တစ်ခု ဖြစ်ကြောင်း နေချည် ရှင်းပြခဲ့သည် - 400,000 V သည် ရိုးရိုး အိမ်သုံးပစ္စည်း သို့မဟုတ် နံရံ Socket တစ်ခုတွင် သေစေနိုင်လောက်အောင် အန္တရာယ်ရှိမည်ဖြစ်ကြောင်း၊ ထို့ကြောင့် အိမ်များ၊ ကျောင်းများနှင့် စီးပွားရေးလုပ်ငန်းများသို့ ရောက်ရှိမီ Voltage ကို ပို၍ လုံခြုံသော အဆင့်သို့ တဖြည်းဖြည်း လျှော့ချရန် Sub-Station များတွင် Step-Down Transformer များ လိုအပ်ကြောင်းဖြစ်သည်။ Transformer များက စီမံခန့်ခွဲသော Trade-Off ကွင်းဆက်တစ်ခုအဖြစ် စနစ်တစ်ခုလုံးကို သူမ အနှစ်ချုပ် ဖော်ပြခဲ့သည် - လျှပ်စစ်ဓာတ်အားပေး စက်ရုံများရှိ Step-Up Transformer များသည် ဝေးလံသော အကွာအဝေးများတစ်လျှောက် Transmission ဆုံးရှုံးမှုများကို လျှော့ချပေးသော်လည်း အဝေးဆုံးရှိ Step-Down Transformer များသည် နေ့စဉ် အသုံးပြုရန် လုံခြုံမှုကို ပြန်လည် ရရှိစေသည် -- Transformer ဒီဇိုင်း ဆန့်ကျင်ဘက် နှစ်ခုသည် တူညီသော စနစ်တစ်ခုလုံးအတွင်း ကွဲပြားသော ပြဿနာ နှစ်ခုကို ဖြေရှင်းရန် အတူတကွ လုပ်ဆောင်နေသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does transmitting power at high voltage reduce energy loss?",
            questionMy:
                "Voltage မြင့်၍ Power ပို့လွှတ်ခြင်းသည် Energy ဆုံးရှုံးမှုကို လျှော့ချပေးရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It allows the current to be kept low, and power loss depends on current squared, not voltage",
              "High voltage always eliminates all resistance",
              "High voltage makes the cables shorter",
              "Power loss has nothing to do with current at all",
            ],
            optionsMy: [
              "Current ကို နိမ့်စွာ ထိန်းထားခွင့်ပြုပြီး Power ဆုံးရှုံးမှုသည် Voltage မဟုတ်ဘဲ Current ကွက်ရင်းအပေါ် အခြေခံသောကြောင့်",
              "Voltage မြင့်ခြင်းသည် Resistance အားလုံးကို အမြဲ ဖယ်ရှားသောကြောင့်",
              "Voltage မြင့်ခြင်းသည် ကြိုးများကို တိုတောင်းစေသောကြောင့်",
              "Power ဆုံးရှုံးမှုသည် Current နှင့် လုံးဝ မသက်ဆိုင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about P = I2R and why high voltage helps.",
            ],
            hintsMy: [
              "P = I2R အကြောင်းနှင့် Voltage မြင့်ခြင်းက အဘယ်ကြောင့် အထောက်အကူပြုကြောင်း ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why can voltage not simply stay at 400,000 V all the way into homes?",
            questionMy:
                "Voltage ကို အိမ်များထဲသို့ ဝင်ရောက်သည်အထိ 400,000 V တွင် ရိုးရိုးရှင်းရှင်း ဆက်ထား၍ မရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It would be lethally dangerous in ordinary household appliances or sockets",
              "It would make appliances run too slowly",
              "Transformers are illegal to use for this purpose",
              "400,000 V cannot actually travel through any cable",
            ],
            optionsMy: [
              "ရိုးရိုး အိမ်သုံးပစ္စည်း သို့မဟုတ် Socket များတွင် သေစေနိုင်လောက်အောင် အန္တရာယ်ရှိလိမ့်မည်ဖြစ်သောကြောင့်",
              "ပစ္စည်းများကို အလွန် နှေးကွေးစွာ လည်ပတ်စေမည်ဖြစ်သောကြောင့်",
              "ဤရည်ရွယ်ချက်အတွက် Transformer သုံးရန် တရားမဝင်သောကြောင့်",
              "400,000 V သည် ကြိုး မည်သည်ကိုမျှ ဖြတ်၍ အမှန်တကယ် ခရီးမသွားနိုင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the sentence about the safety trade-off."],
            hintsMy: [
              "လုံခြုံရေး Trade-Off အကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, how do step-up and step-down transformers work together in the grid system?",
            questionMy:
                "Step-Up နှင့် Step-Down Transformer များသည် Grid စနစ်တွင် အတူတကွ မည်သို့ လုပ်ဆောင်ကြောင်းကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "Step-up transformers minimise transmission losses while step-down transformers restore safety for everyday use",
              "They perform exactly the same function",
              "Only step-up transformers are actually used anywhere",
              "They cancel each other out completely, achieving nothing",
            ],
            optionsMy: [
              "Step-Up Transformer များက Transmission ဆုံးရှုံးမှုများကို လျှော့ချစဉ် Step-Down Transformer များက နေ့စဉ် အသုံးပြုရန် လုံခြုံမှုကို ပြန်လည် ရရှိစေသည်",
              "၎င်းတို့သည် အတိအကျ တူညီသော လုပ်ဆောင်ချက် ဆောင်ရွက်ကြသည်",
              "Step-Up Transformer များကိုသာ နေရာမည်သည်တွင်မဆို အမှန်တကယ် အသုံးပြုကြသည်",
              "၎င်းတို့သည် တစ်ခုနှင့်တစ်ခု လုံးလုံးလျားလျား ပြန်ဖျက်ကာ မည်သည့်အရာမျှ မရရှိစေပါ",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w18-d5",
      dayNumber: 5,
      titleEn: "Week 18 Recap: Electromagnetic Induction",
      titleMy: "ဆယ့်ရှစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - Electromagnetic Induction",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Electromagnetic induction generates a voltage when there is a...",
          questionMy:
              "...ရှိသည့်အခါ Electromagnetic Induction သည် Voltage တစ်ခု ထုတ်ပေးသည်",
          optionsEn: [
            "Changing magnetic field",
            "Constant temperature",
            "Fixed magnetic field only",
            "Silent room",
          ],
          optionsMy: [
            "ပြောင်းလဲနေသော သံလိုက်စက်ကွင်း",
            "တည်ငြိမ်သော အပူချိန်",
            "ပုံသေ သံလိုက်စက်ကွင်းသာ",
            "တိတ်ဆိတ်သော အခန်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A step-up transformer has more turns on the...",
          questionMy: "Step-Up Transformer တွင် ...တွင် လှည့်ပတ် ပို၍ များသည်",
          optionsEn: [
            "Secondary coil than the primary coil",
            "Primary coil than the secondary coil",
            "Neither coil",
            "Both coils equally always",
          ],
          optionsMy: [
            "Primary Coil ထက် Secondary Coil",
            "Secondary Coil ထက် Primary Coil",
            "Coil မည်သည်တွင်မှ",
            "Coil နှစ်ခုစလုံးတွင် အမြဲ ညီမျှစွာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "High-voltage power transmission reduces energy loss because power loss depends on...",
          questionMy:
              "Power ဆုံးရှုံးမှုသည် ...အပေါ် အခြေခံသောကြောင့် Voltage မြင့်သော Power Transmission သည် Energy ဆုံးရှုံးမှုကို လျှော့ချသည်",
          optionsEn: [
            "Current squared",
            "Voltage squared only",
            "Colour of the cable",
            "Distance travelled by light",
          ],
          optionsMy: [
            "Current ကွက်ရင်း",
            "Voltage ကွက်ရင်းသာ",
            "ကြိုး၏ အရောင်",
            "အလင်း ခရီးသွားသော အကွာအဝေး",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 19: "Electronic Systems"
// =====================================================================

const CourseWeekDef _igcsePhysWeek19 = CourseWeekDef(
  id: "course-igcse-phys-w19",
  weekNumber: 19,
  titleEn: "Electronic Systems",
  titleMy: "အီလက်ထရောနစ် စနစ်များ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w19-d1",
      dayNumber: 1,
      titleEn: "Logic Gates, Thermistors, and LDRs",
      titleMy: "Logic Gate, Thermistor နှင့် LDR",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "An AND logic gate has two inputs. When does its output become 1 (high)?",
          questionMy:
              "AND Logic Gate တစ်ခုတွင် Input နှစ်ခု ရှိသည်။ ၎င်း၏ Output သည် မည်သည့်အခါ 1 (High) ဖြစ်လာသနည်း။",
          optionsEn: [
            "Only when both inputs are 1",
            "When at least one input is 1",
            "Only when both inputs are 0",
            "The output is always 1, regardless of inputs",
          ],
          optionsMy: [
            "Input နှစ်ခုစလုံး 1 ဖြစ်သည့်အခါသာ",
            "Input အနည်းဆုံး တစ်ခု 1 ဖြစ်သည့်အခါ",
            "Input နှစ်ခုစလုံး 0 ဖြစ်သည့်အခါသာ",
            "Input မည်သို့ ရှိသည်ဖြစ်စေ Output သည် အမြဲ 1 ဖြစ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "An AND gate models the word 'and' logically -- both conditions must be true (1) for the output to be true.",
          ],
          hintsMy: [
            "AND Gate သည် 'and' ဟူသော စကားလုံးကို ယုတ္တိနည်းအရ မော်ဒယ်ဆွဲထားသည် -- Output True ဖြစ်ရန် အခြေအနေ နှစ်ခုစလုံး True (1) ဖြစ်ရမည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "How does the resistance of a thermistor typically change as temperature increases?",
          questionMy:
              "အပူချိန် မြင့်တက်လာသည်နှင့်အမျှ Thermistor တစ်ခု၏ Resistance သည် များသောအားဖြင့် မည်သို့ ပြောင်းလဲသနည်း။",
          optionsEn: [
            "Its resistance decreases",
            "Its resistance increases",
            "Its resistance stays exactly constant",
            "It stops conducting electricity entirely",
          ],
          optionsMy: [
            "၎င်း၏ Resistance လျော့ကျသည်",
            "၎င်း၏ Resistance တိုးလာသည်",
            "၎င်း၏ Resistance အတိအကျ တည်ငြိမ်စွာ ဆက်ရှိနေသည်",
            "လျှပ်စစ် Conduct လုပ်ခြင်းကို လုံးလုံးလျားလျား ရပ်တန့်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is why a thermistor is used in temperature-sensing circuits, such as a fire alarm that triggers as resistance falls with rising heat.",
          ],
          hintsMy: [
            "ဤသည်ကား Resistance သည် တိုးလာသော အပူနှင့်အမျှ ကျဆင်းသည့်အခါ လှုံ့ဆော်သော Fire Alarm ကဲ့သို့ Temperature-Sensing ပတ်လမ်းများတွင် Thermistor ကို အသုံးပြုရသည့် အကြောင်းရင်း ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What happens to the resistance of a light-dependent resistor (LDR) as light intensity increases?",
          questionMy:
              "အလင်း ပြင်းအား တိုးလာလာသည်နှင့်အမျှ Light-Dependent Resistor (LDR) တစ်ခု၏ Resistance တွင် အဘယ်ဖြစ်လာသနည်း။",
          optionsEn: [
            "Its resistance decreases",
            "Its resistance increases",
            "It has no relationship with light at all",
            "It only responds to sound, not light",
          ],
          optionsMy: [
            "၎င်း၏ Resistance လျော့ကျသည်",
            "၎င်း၏ Resistance တိုးလာသည်",
            "အလင်းနှင့် မည်သည့်ဆက်နွှယ်မှုမျှ မရှိပါ",
            "အလင်းကို မဟုတ်ဘဲ အသံကိုသာ တုံ့ပြန်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is why an LDR is used in automatic streetlight circuits -- as darkness falls, resistance rises, and this change can be used to trigger the lights to switch on.",
          ],
          hintsMy: [
            "ဤသည်ကား Automatic လမ်းမီး ပတ်လမ်းများတွင် LDR ကို အသုံးပြုရသည့် အကြောင်းရင်း ဖြစ်သည် -- မှောင်လာသည်နှင့်အမျှ Resistance မြင့်တက်လာကာ ဤ ပြောင်းလဲမှုကို မီးများကို ဖွင့်ရန် လှုံ့ဆော်ရန် အသုံးပြုနိုင်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w19-d2",
      dayNumber: 2,
      titleEn: "Match: Electronics Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Electronics ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w19-dm-1",
          termEn: "OR gate",
          termMy: "OR Gate",
          matchEn: "A logic gate whose output is 1 if at least one input is 1",
          matchMy:
              "Input အနည်းဆုံး တစ်ခု 1 ဖြစ်ပါက Output 1 ဖြစ်သော Logic Gate",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w19-dm-2",
          termEn: "NOT gate",
          termMy: "NOT Gate",
          matchEn:
              "A logic gate with a single input that inverts the signal -- 1 becomes 0 and 0 becomes 1",
          matchMy:
              "Signal ကို ပြောင်းပြန် ဖြစ်စေသော Input တစ်ခုတည်း ပါဝင်သော Logic Gate -- 1 သည် 0 ဖြစ်လာပြီး 0 သည် 1 ဖြစ်လာသည်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w19-dm-3",
          termEn: "Relay",
          termMy: "Relay",
          matchEn:
              "An electromagnetic switch allowing a small current to control a much larger circuit",
          matchMy:
              "Current ငယ်တစ်ခုအား ပို၍ ကြီးမားသော ပတ်လမ်းတစ်ခုကို ထိန်းချုပ်ခွင့်ပြုသော Electromagnetic Switch",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w19-dm-4",
          termEn: "Thermistor",
          termMy: "Thermistor",
          matchEn:
              "A resistor whose resistance decreases as temperature increases",
          matchMy: "အပူချိန် တိုးလာသည်နှင့်အမျှ Resistance လျော့ကျသော Resistor",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w19-dm-5",
          termEn: "Light-dependent resistor (LDR)",
          termMy: "Light-Dependent Resistor (LDR)",
          matchEn:
              "A resistor whose resistance decreases as light intensity increases",
          matchMy:
              "အလင်း ပြင်းအား တိုးလာသည်နှင့်အမျှ Resistance လျော့ကျသော Resistor",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w19-d3",
      dayNumber: 3,
      titleEn: "Sort: AND, OR, or NOT Gate Behaviour?",
      titleMy: "စီစစ်ကြမည် - AND, OR သို့မဟုတ် NOT Gate အမူအကျင့်",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["AND Gate", "OR Gate", "NOT Gate"],
        bucketsMy: ["AND Gate", "OR Gate", "NOT Gate"],
        items: [
          SortingItem(
            id: "igcsephys-w19-sort-1",
            labelEn: "Output is 1 only when both inputs are 1",
            labelMy: "Input နှစ်ခုစလုံး 1 ဖြစ်သည့်အခါသာ Output 1 ဖြစ်သည်",
            correctBucketEn: "AND Gate",
            correctBucketMy: "AND Gate",
          ),
          SortingItem(
            id: "igcsephys-w19-sort-2",
            labelEn: "Output is 1 if at least one input is 1",
            labelMy: "Input အနည်းဆုံး တစ်ခု 1 ဖြစ်ပါက Output 1 ဖြစ်သည်",
            correctBucketEn: "OR Gate",
            correctBucketMy: "OR Gate",
          ),
          SortingItem(
            id: "igcsephys-w19-sort-3",
            labelEn: "Has only one input and inverts the signal",
            labelMy:
                "Input တစ်ခုတည်းသာ ပါဝင်ပြီး Signal ကို ပြောင်းပြန် ဖြစ်စေသည်",
            correctBucketEn: "NOT Gate",
            correctBucketMy: "NOT Gate",
          ),
          SortingItem(
            id: "igcsephys-w19-sort-4",
            labelEn: "Both inputs must be true for the output to be true",
            labelMy: "Output True ဖြစ်ရန် Input နှစ်ခုစလုံး True ဖြစ်ရမည်",
            correctBucketEn: "AND Gate",
            correctBucketMy: "AND Gate",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w19-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Automatic Streetlight Design",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ Automatic လမ်းမီး ဒီဇိုင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Automatic Streetlight Design",
        titleMy: "နေချည်၏ Automatic လမ်းမီး ဒီဇိုင်း",
        passageEn:
            "Ko Thura challenged Nay Chi to design a control circuit for an automatic streetlight that switches on at dusk and off at dawn, using only the components she had learned about that week: an LDR, a relay, and a small control circuit.\n\nShe reasoned through the requirement first: the light needed to detect falling darkness and respond by switching on a much larger, higher-power lamp circuit than the small control circuit itself could safely carry. She placed the LDR in a potential divider arrangement within the control circuit, so that as light levels fell in the evening, the LDR's resistance increased, changing the voltage output from the divider in a predictable, measurable way that a simple sensing circuit could detect.\n\nShe then explained why the relay was essential rather than optional: the control circuit itself, powered by a small battery, could only safely handle a tiny current, nowhere near enough to directly power a bright street lamp. The relay solved this mismatch by using the small control current to energise an electromagnet, which then mechanically closed a separate, completely independent switch capable of carrying the much larger current needed for the lamp itself. Ko Thura pointed out that this design illustrated a common electronics principle: a sensing component (the LDR) detects a real-world condition, a switching component (the relay) safely bridges the gap between a weak control signal and a powerful output circuit, and the whole system works together automatically with no human needing to flip a switch every evening and morning.",
        passageMy:
            "ကိုသူရသည် သူမ ထိုအပတ်တွင် သင်ယူခဲ့ရသော ပါဝင်ပစ္စည်းများကိုသာ အသုံးပြု၍ ညနေခင်း၌ ဖွင့်ကာ မိုးသောက်ချိန်၌ ပိတ်သော Automatic လမ်းမီးတစ်ခု၏ ထိန်းချုပ်ရေး ပတ်လမ်းကို ဒီဇိုင်းဆွဲရန် နေချည်ကို စိန်ခေါ်ခဲ့သည် - LDR, Relay နှင့် ထိန်းချုပ်ရေး ပတ်လမ်းငယ်တစ်ခု။\n\nသူမသည် ပထမဆုံး လိုအပ်ချက်ကို ကျိုးကြောင်းဆင်ခြင်ခဲ့သည် - မီးသည် ကျဆင်းလာသော အမှောင်ကို ဖော်ထုတ်ကာ ထိန်းချုပ်ရေး ပတ်လမ်းငယ်ကိုယ်တိုင် လုံခြုံစွာ သယ်ဆောင်နိုင်သည်ထက် များစွာ ပို၍ ကြီးမား၍ Power ပို၍ မြင့်သော Lamp ပတ်လမ်းကို ဖွင့်ကာ တုံ့ပြန်ရန် လိုအပ်သည်။ သူမသည် LDR ကို ထိန်းချုပ်ရေး ပတ်လမ်းအတွင်း Potential Divider အစီအစဉ်တစ်ခုတွင် ထားခဲ့ပြီး ညနေခင်းတွင် အလင်း အဆင့်များ ကျဆင်းလာသောအခါ LDR ၏ Resistance တိုးလာကာ ခန့်မှန်း၍ ရသော၊ တိုင်းတာနိုင်သော နည်းလမ်းဖြင့် Divider မှ Voltage Output ကို ပြောင်းလဲစေသည်။\n\nRelay သည် Optional မဟုတ်ဘဲ မရှိမဖြစ် ဖြစ်ရသည့် အကြောင်းရင်းကို ထို့နောက် သူမ ရှင်းပြခဲ့သည် - Battery ငယ်တစ်ခုမှ Power ရရှိသော ထိန်းချုပ်ရေး ပတ်လမ်းကိုယ်တိုင်သည် Current အနည်းငယ်ကိုသာ လုံခြုံစွာ ကိုင်တွယ်နိုင်ပြီး တောက်ပသော လမ်းမီးတစ်ခုကို တိုက်ရိုက် Power ပေးနိုင်သည့် နေရာနှင့် လုံးဝ မနီးပါး ဖြစ်သည်။ Relay သည် ဤ ကိုက်ညီမှု မရှိမှုကို Electromagnet တစ်ခုကို လှုံ့ဆော်ရန် ထိန်းချုပ်ရေး Current ငယ်ကို အသုံးပြု၍ ဖြေရှင်းပေးခဲ့ပြီး ၎င်းက Lamp ကိုယ်တိုင်အတွက် လိုအပ်သော ပို၍ ကြီးမားသော Current ကို သယ်ဆောင်နိုင်သော သီးခြား၊ လုံးလုံးလျားလျား လွတ်လပ်သော Switch တစ်ခုကို စက်ပိုင်းဆိုင်ရာ ပိတ်ပေးခဲ့သည်။ ဤ ဒီဇိုင်းသည် ဘုံ Electronics နိယာမတစ်ခုကို ဖော်ပြခဲ့ကြောင်း ကိုသူရ ထောက်ပြခဲ့သည် - Sensing ပါဝင်ပစ္စည်းတစ်ခု (LDR) သည် အမှန်တကယ် ကမ္ဘာ့ အခြေအနေတစ်ခုကို ဖော်ထုတ်ကာ Switching ပါဝင်ပစ္စည်းတစ်ခု (Relay) သည် အားနည်းသော ထိန်းချုပ်ရေး Signal နှင့် အားကောင်းသော Output ပတ်လမ်းကြား ကွက်လပ်ကို လုံခြုံစွာ ချိတ်ဆက်ပေးကာ စနစ်တစ်ခုလုံးသည် ညနေခင်းနှင့် မနက်ခင်း တစ်နေ့ Switch ကို လူတစ်ဦးက ပြောင်းလှန်ရန် မလိုအပ်ဘဲ အလိုအလျောက် အတူတကွ အလုပ်လုပ်ကြသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what happened to the LDR's resistance as light levels fell?",
            questionMy:
                "အလင်း အဆင့်များ ကျဆင်းလာသည့်အခါ LDR ၏ Resistance တွင် အဘယ်ဖြစ်လာကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It increased, changing the voltage output from the potential divider",
              "It decreased to zero instantly",
              "It stayed exactly the same",
              "It became infinite immediately",
            ],
            optionsMy: [
              "၎င်း တိုးလာကာ Potential Divider မှ Voltage Output ကို ပြောင်းလဲစေသည်",
              "၎င်း ချက်ချင်း သုညသို့ ကျဆင်းသည်",
              "၎င်း အတိအကျ တူညီနေသည်",
              "၎င်း ချက်ချင်း Infinite ဖြစ်လာသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about the LDR's resistance in the potential divider.",
            ],
            hintsMy: [
              "Potential Divider ရှိ LDR ၏ Resistance အကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why was the relay essential rather than optional?",
            questionMy:
                "Relay သည် Optional မဟုတ်ဘဲ မရှိမဖြစ် ဖြစ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The control circuit could not safely carry the much larger current needed by the lamp directly",
              "The relay made the lamp brighter than any other lamp",
              "The relay was simply cheaper than the LDR",
              "Relays are required by law for all circuits",
            ],
            optionsMy: [
              "ထိန်းချုပ်ရေး ပတ်လမ်းသည် Lamp လိုအပ်သော ပို၍ ကြီးမားသော Current ကို တိုက်ရိုက် လုံခြုံစွာ မသယ်ဆောင်နိုင်သောကြောင့်",
              "Relay သည် Lamp ကို အခြား Lamp မည်သည်ထက်မဆို ပို၍ တောက်ပစေသောကြောင့်",
              "Relay သည် LDR ထက် ရိုးရိုးရှင်းရှင်း ဈေးသက်သာသောကြောင့်",
              "Relay များကို ပတ်လမ်း အားလုံးအတွက် ဥပဒေအရ လိုအပ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the current mismatch the relay solved.",
            ],
            hintsMy: [
              "Relay ဖြေရှင်းပေးခဲ့သော Current ကိုက်ညီမှု မရှိမှုကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, what three roles did Ko Thura identify in this design?",
            questionMy:
                "ဤ ဒီဇိုင်းတွင် ကိုသူရ ဖော်ထုတ်ခဲ့သော အခန်းကဏ္ဍ သုံးခုကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "A sensing component, a switching component, and an automatic system needing no human intervention",
              "Only a single component doing everything",
              "Two identical relays working against each other",
              "A component that only works during the day",
            ],
            optionsMy: [
              "Sensing ပါဝင်ပစ္စည်းတစ်ခု၊ Switching ပါဝင်ပစ္စည်းတစ်ခုနှင့် လူသား ဝင်ရောက်စွက်ဖက်ရန် မလိုအပ်သော Automatic စနစ်တစ်ခု",
              "အားလုံးကို လုပ်ဆောင်နေသော ပါဝင်ပစ္စည်း တစ်ခုတည်း",
              "တစ်ခုနှင့်တစ်ခု ဆန့်ကျင်နေသော တူညီသော Relay နှစ်ခု",
              "နေ့ခင်းဘက်တွင်သာ အလုပ်လုပ်သော ပါဝင်ပစ္စည်းတစ်ခု",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w19-d5",
      dayNumber: 5,
      titleEn: "Week 19 Recap: Electronic Systems",
      titleMy: "ဆယ့်ကိုးပတ် ပြန်လည်သုံးသပ်ခြင်း - Electronic Systems",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "An AND gate's output is 1 only when...",
          questionMy: "AND Gate ၏ Output သည် ...ဖြစ်သည့်အခါသာ 1 ဖြစ်သည်",
          optionsEn: [
            "Both inputs are 1",
            "At least one input is 1",
            "Both inputs are 0",
            "No inputs exist",
          ],
          optionsMy: [
            "Input နှစ်ခုစလုံး 1 ဖြစ်",
            "Input အနည်းဆုံး တစ်ခု 1 ဖြစ်",
            "Input နှစ်ခုစလုံး 0 ဖြစ်",
            "Input လုံးဝ မရှိ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A relay allows a small current to control a...",
          questionMy:
              "Relay တစ်ခုသည် Current ငယ်တစ်ခုအား ...ကို ထိန်းချုပ်ခွင့်ပြုသည်",
          optionsEn: [
            "Much larger circuit",
            "Smaller battery only",
            "Single resistor only",
            "Light beam directly",
          ],
          optionsMy: [
            "ပို၍ ကြီးမားသော ပတ်လမ်း",
            "ပို၍ သေးငယ်သော Battery သာ",
            "Resistor တစ်ခုတည်းသာ",
            "အလင်းရောင် တိုက်ရိုက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An LDR's resistance decreases as...",
          questionMy: "...သည့်အခါ LDR ၏ Resistance လျော့ကျသည်",
          optionsEn: [
            "Light intensity increases",
            "Temperature decreases only",
            "Sound gets louder",
            "Current stops flowing",
          ],
          optionsMy: [
            "အလင်း ပြင်းအား တိုးလာ",
            "အပူချိန် လျော့ကျ",
            "အသံ ပို၍ ကျယ်လာ",
            "Current စီးဆင်းမှု ရပ်တန့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 20: "Electromagnetic & Electronic Studio" (Term 5 Capstone)
// =====================================================================

const CourseWeekDef _igcsePhysWeek20 = CourseWeekDef(
  id: "course-igcse-phys-w20",
  weekNumber: 20,
  titleEn: "Electromagnetic & Electronic Studio",
  titleMy: "လျှပ်စစ်သံလိုက်နှင့် အီလက်ထရောနစ် အလုပ်ရုံ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-phys-w20-d1",
      dayNumber: 1,
      titleEn: "Combined Transformer and Logic Circuit Problems",
      titleMy: "ပေါင်းစပ် Transformer နှင့် Logic Circuit ပြဿနာများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "An ideal step-down transformer has a primary voltage of 230 V and current of 2 A. The secondary voltage is 23 V. What is the secondary current? (Vp x Ip = Vs x Is)",
          questionMy:
              "စံပြ Step-Down Transformer တစ်ခုတွင် Primary Voltage 230 V နှင့် Current 2 A ရှိသည်။ Secondary Voltage သည် 23 V ဖြစ်သည်။ Secondary Current ကား အဘယ်နည်း။ (Vp x Ip = Vs x Is)",
          optionsEn: [
            "20 A (230 x 2 = 23 x Is, so Is = 460/23 = 20)",
            "2 A",
            "0.2 A",
            "230 A",
          ],
          optionsMy: [
            "20 A (230 x 2 = 23 x Is, Is = 460/23 = 20)",
            "2 A",
            "0.2 A",
            "230 A",
          ],
          correctIndex: 0,
          hintsEn: [
            "Power in = power out: 230 x 2 = 460 W. Is = 460 / 23 = 20 A. Since voltage decreased by 10 times, current increased by 10 times.",
          ],
          hintsMy: [
            "Power In = Power Out: 230 x 2 = 460 W ။ Is = 460 / 23 = 20 A ။ Voltage သည် ၁၀ ဆ လျော့ကျသောကြောင့် Current သည် ၁၀ ဆ တိုးလာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A security system should trigger an alarm (output = 1) only when a door sensor detects opening (input A = 1) AND the system is armed (input B = 1). Which logic gate matches this requirement?",
          questionMy:
              "လုံခြုံရေး စနစ်တစ်ခုသည် တံခါး Sensor က ဖွင့်ခြင်းကို ဖော်ထုတ်သည့်အခါ (Input A = 1) AND စနစ်ကို Arm ပြုလုပ်ထားသည့်အခါ (Input B = 1) တွင်သာ Alarm (Output = 1) ကို လှုံ့ဆော်သင့်သည်။ ဤ လိုအပ်ချက်နှင့် ကိုက်ညီသော Logic Gate ကား အဘယ်နည်း။",
          optionsEn: [
            "AND gate",
            "NOT gate",
            "A gate is never needed for this system",
            "Only a relay, with no logic gate at all",
          ],
          optionsMy: [
            "AND Gate",
            "NOT Gate",
            "ဤ စနစ်အတွက် Gate ဘယ်တော့မှ မလိုအပ်ပါ",
            "Relay တစ်ခုတည်း၊ Logic Gate လုံးဝ မပါဘဲ",
          ],
          correctIndex: 0,
          hintsEn: [
            "The requirement uses the word 'AND', requiring both conditions to be true simultaneously -- exactly what an AND gate models.",
          ],
          hintsMy: [
            "လိုအပ်ချက်သည် 'AND' ဟူသော စကားလုံးကို အသုံးပြုကာ အခြေအနေ နှစ်ခုစလုံး တစ်ချိန်တည်း True ဖြစ်ရန် လိုအပ်သည် -- AND Gate မော်ဒယ်ဆွဲထားသည့် အတိအကျ အရာ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a simple DC motor, when the coil is momentarily aligned parallel to the magnetic field (vertical position), why does the commutator's timing matter most at this exact instant?",
          questionMy:
              "ရိုးရှင်းသော DC Motor တစ်ခုတွင် ကွင်းသည် သံလိုက်စက်ကွင်းနှင့် ခေတ္တ Parallel ဖြစ်နေသည့် (ဒေါင်လိုက် တည်နေရာ) အချိန်တွင် Commutator ၏ အချိန်ကိုက်သည် ဤ အတိအကျ ခဏတွင် အဘယ်ကြောင့် အရေးအကြီးဆုံး ဖြစ်သနည်း။",
          optionsEn: [
            "This is exactly when the current direction must reverse to keep the turning force acting in the same rotational direction",
            "The motor is completely switched off at this point permanently",
            "The magnetic field disappears entirely at this point",
            "Nothing important happens at this position at all",
          ],
          optionsMy: [
            "ဤသည်ကား လှည့်အား တူညီသော လှည့်ပတ် ဦးတည်ချက်တွင် ဆက်လက် လုပ်ဆောင်နေစေရန် Current ဦးတည်ချက် ပြောင်းပြန် ဖြစ်ရမည့် အတိအကျ အချက် ဖြစ်သည်",
            "ဤအချက်တွင် Motor သည် ထာဝစဉ် လုံးလုံးလျားလျား ပိတ်သွားသည်",
            "ဤအချက်တွင် သံလိုက်စက်ကွင်း လုံးလုံးလျားလျား ပျောက်ကွယ်သွားသည်",
            "ဤ တည်နေရာတွင် အရေးကြီးသော အရာ မည်သည်မျှ လုံးဝ မဖြစ်ပေါ်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Without a well-timed reversal at exactly this instant, the force would begin pushing the coil backward instead of continuing to rotate it forward.",
          ],
          hintsMy: [
            "ဤ အတိအကျ ခဏတွင် ကောင်းစွာ အချိန်ကိုက်ထားသော ပြောင်းပြန်ဖြစ်ခြင်း မရှိပါက Force သည် ကွင်းကို ရှေ့ဆက် ဆက်လက် မလှည့်ပတ်စေဘဲ နောက်ပြန် တွန်းစတင်လိမ့်မည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w20-d2",
      dayNumber: 2,
      titleEn: "Match: Term 5 Recap Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ပဉ္စမတန်း ပြန်လည်သုံးသပ်ခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsephys-w20-dm-1",
          termEn: "Ideal transformer power law",
          termMy: "Ideal Transformer Power Law",
          matchEn: "Power input equals power output: Vp x Ip = Vs x Is",
          matchMy:
              "Power Input သည် Power Output နှင့် ညီမျှသည်- Vp x Ip = Vs x Is",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsephys-w20-dm-2",
          termEn: "Truth table",
          termMy: "Truth Table",
          matchEn:
              "A table listing every combination of inputs and the resulting output for a logic gate",
          matchMy:
              "Logic Gate တစ်ခုအတွက် Input ပေါင်းစုံနှင့် ရလဒ် Output ကို ဖော်ပြသော ဇယား",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsephys-w20-dm-3",
          termEn: "Fleming's left-hand rule",
          termMy: "Fleming's Left-Hand Rule",
          matchEn:
              "Thumb = force/motion, first finger = field, second finger = current",
          matchMy:
              "မလိတ်လက်မ = Force/Motion၊ လက်ညှိုးလက်ချောင်း = Field၊ အလယ်လက်ချောင်း = Current",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsephys-w20-dm-4",
          termEn: "Faraday's law of induction",
          termMy: "Faraday's Law of Induction",
          matchEn:
              "A changing magnetic field induces a voltage in a nearby conductor",
          matchMy:
              "ပြောင်းလဲနေသော သံလိုက်စက်ကွင်းတစ်ခုသည် အနီးရှိ Conductor တစ်ခုအတွင်း Voltage တစ်ခုကို လှုံ့ဆော်ပေးသည်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsephys-w20-dm-5",
          termEn: "Sensing and switching components",
          termMy: "Sensing and Switching Components",
          matchEn:
              "A pattern where a sensor (like an LDR) detects a condition and a switch (like a relay) acts on it",
          matchMy:
              "Sensor (LDR ကဲ့သို့) သည် အခြေအနေတစ်ခုကို ဖော်ထုတ်ကာ Switch (Relay ကဲ့သို့) သည် လုပ်ဆောင်ချက်ပြုသော ပုံစံ",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w20-d3",
      dayNumber: 3,
      titleEn: "Sort: Electromagnetism Concept or Electronics Concept?",
      titleMy:
          "စီစစ်ကြမည် - Electromagnetism သဘောတရားလား၊ Electronics သဘောတရားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Electromagnetism Concept", "Electronics Concept"],
        bucketsMy: ["Electromagnetism Concept", "Electronics Concept"],
        items: [
          SortingItem(
            id: "igcsephys-w20-sort-1",
            labelEn:
                "Calculating a transformer's secondary voltage from the turns ratio",
            labelMy:
                "လှည့်ပတ် အချိုးမှ Transformer ၏ Secondary Voltage တွက်ချက်ခြင်း",
            correctBucketEn: "Electromagnetism Concept",
            correctBucketMy: "Electromagnetism Concept",
          ),
          SortingItem(
            id: "igcsephys-w20-sort-2",
            labelEn:
                "Designing a truth table for a combined AND-OR logic circuit",
            labelMy:
                "ပေါင်းစပ် AND-OR Logic Circuit တစ်ခုအတွက် Truth Table ဒီဇိုင်းဆွဲခြင်း",
            correctBucketEn: "Electronics Concept",
            correctBucketMy: "Electronics Concept",
          ),
          SortingItem(
            id: "igcsephys-w20-sort-3",
            labelEn:
                "Using Fleming's left-hand rule to find the direction of the motor effect",
            labelMy:
                "Motor Effect ၏ ဦးတည်ချက်ကို ရှာဖွေရန် Fleming's Left-Hand Rule ကို အသုံးပြုခြင်း",
            correctBucketEn: "Electromagnetism Concept",
            correctBucketMy: "Electromagnetism Concept",
          ),
          SortingItem(
            id: "igcsephys-w20-sort-4",
            labelEn:
                "Choosing a relay to bridge a weak sensor signal and a powerful lamp circuit",
            labelMy:
                "အားနည်းသော Sensor Signal နှင့် အားကောင်းသော Lamp Circuit ကို ချိတ်ဆက်ရန် Relay ရွေးချယ်ခြင်း",
            correctBucketEn: "Electronics Concept",
            correctBucketMy: "Electronics Concept",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w20-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Term 5 Electromagnetism Review",
      titleMy:
          "စာဖတ်ခြင်း - နေချည်၏ ပဉ္စမတန်း Electromagnetism ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Term 5 Electromagnetism Review",
        titleMy: "နေချည်၏ ပဉ္စမတန်း Electromagnetism ပြန်လည်သုံးသပ်ခြင်း",
        passageEn:
            "For her Term 5 final review, Ko Thura asked Nay Chi to design a complete small-scale renewable energy demonstration: a hand-cranked generator charging a battery through a step-down transformer and a simple automatic control circuit that only allows charging to occur when a light sensor detects daylight.\n\nShe began with the generator itself: turning the crank rotated a coil within a magnetic field, and by Faraday's law, this changing magnetic field through the coil induced an alternating voltage -- the same fundamental process, she noted, as the motor effect in reverse. Where a motor uses current in a magnetic field to produce rotation, a generator uses rotation in a magnetic field to produce current, the two effects being essentially mirror images of the same underlying relationship between electricity and magnetism.\n\nSince her hand-cranking would likely produce a voltage too high and unstable for the sensitive battery to safely accept, she added a step-down transformer to bring the voltage to a safer, more consistent level, applying the same Vp/Vs = Np/Ns relationship she had used earlier in the term. Finally, for the automatic daylight control, she built a circuit using an LDR feeding into a control system that only allowed charging current to reach the battery when light levels exceeded a set threshold -- functionally an AND-type condition requiring both 'daylight detected' and 'hand-crank turning' to be true simultaneously before charging occurred. Ko Thura noted that this single project had required Nay Chi to combine electromagnetic induction, transformer calculations, and sensing/switching electronics -- exactly the kind of multi-concept synthesis the IGCSE Extended Paper rewarded most highly.",
        passageMy:
            "ပဉ္စမတန်း နောက်ဆုံး ပြန်လည်သုံးသပ်ခြင်းအတွက် လက်ဖြင့် လှည့်ပတ်သော Generator တစ်ခုသည် Step-Down Transformer တစ်ခုနှင့် အလင်း Sensor တစ်ခု နေ့အလင်း ဖော်ထုတ်ချိန်တွင်သာ အားသွင်းခြင်း ဖြစ်ပေါ်ခွင့်ပြုသော ရိုးရှင်းသော Automatic ထိန်းချုပ်ရေး ပတ်လမ်းတစ်ခုမှတစ်ဆင့် Battery ကို အားသွင်းသော ပြီးပြည့်စုံသော အသေးစား ပြန်လည်ဖြစ်ပေါ်နိုင်သော စွမ်းအင် သရုပ်ပြမှုတစ်ခု ဒီဇိုင်းဆွဲရန် ကိုသူရ နေချည်ကို တောင်းဆိုခဲ့သည်။\n\nသူမသည် Generator ကိုယ်တိုင်နှင့် စတင်ခဲ့သည် - လှည့်ကို လှည့်ပတ်ခြင်းသည် သံလိုက်စက်ကွင်းတစ်ခုအတွင်း ကွင်းတစ်ခုကို လှည့်ပတ်စေပြီး Faraday's Law အရ ကွင်းကို ဖြတ်သန်း ဤ ပြောင်းလဲနေသော သံလိုက်စက်ကွင်းသည် Alternating Voltage တစ်ခုကို လှုံ့ဆော်ခဲ့သည် -- ၎င်းသည် ပြောင်းပြန် Motor Effect နှင့် တူညီသော အခြေခံ လုပ်ငန်းစဉ်ဖြစ်ကြောင်း သူမ မှတ်ချက်ပြုခဲ့သည်။ Motor တစ်ခုသည် Rotation ထုတ်ပေးရန် သံလိုက်စက်ကွင်းအတွင်း Current ကို အသုံးပြုသည့်နေရာတွင် Generator တစ်ခုသည် Current ထုတ်ပေးရန် သံလိုက်စက်ကွင်းအတွင်း Rotation ကို အသုံးပြုသည်၊ သက်ရောက်မှု နှစ်ခုသည် လျှပ်စစ်နှင့် သံလိုက်ဓာတ်ကြား တူညီသော အခြေခံ ဆက်နွှယ်မှု၏ အထောင်ပုံရိပ်များ အခြေခံအားဖြင့် ဖြစ်သည်။\n\nသူမ၏ လက်ဖြင့် လှည့်ပတ်ခြင်းသည် Battery သိမ်မွေ့သည် လုံခြုံစွာ လက်ခံရန် Voltage ပို၍ မြင့်မား၍ တည်ငြိမ်မှု မရှိနိုင်သောကြောင့် Voltage ကို ပို၍ လုံခြုံ၍ ပို၍ တစ်သမတ်တည်း ရှိသော အဆင့်သို့ ယူဆောင်လာရန် Step-Down Transformer တစ်ခုကို ထည့်သွင်းခဲ့ပြီး ဤတန်း၏ အစောပိုင်းတွင် အသုံးပြုခဲ့သော တူညီသော Vp/Vs = Np/Ns ဆက်နွှယ်မှုကို အသုံးချခဲ့သည်။ နောက်ဆုံးတွင် Automatic နေ့အလင်း ထိန်းချုပ်ရေးအတွက် အလင်း အဆင့်များသည် သတ်မှတ်ထားသော ကန့်သတ်ချက်ကို ကျော်လွန်သည့်အခါသာ အားသွင်း Current ကို Battery သို့ ရောက်ရှိခွင့်ပြုသော ထိန်းချုပ်ရေး စနစ်ထဲသို့ ဖြည့်စွက်ပေးသော LDR ကို အသုံးပြု၍ ပတ်လမ်းတစ်ခု တည်ဆောက်ခဲ့သည် -- 'နေ့အလင်း ဖော်ထုတ်ပြီ' နှင့် 'လက်ဖြင့် လှည့် လှည့်ပတ်နေသည်' နှစ်ခုစလုံး အားသွင်းမှု ဖြစ်ပေါ်ပြီး မတိုင်မီ တစ်ချိန်တည်း True ဖြစ်ရန် လိုအပ်ကြောင်း AND-Type အခြေအနေတစ်ခု လုပ်ဆောင်ချက်ပြုသည်။ ဤ တစ်ခုတည်းသော စီမံကိန်းသည် Electromagnetic Induction၊ Transformer တွက်ချက်မှုများနှင့် Sensing/Switching Electronics တို့ကို ပေါင်းစပ်ရန် နေချည်ကို လိုအပ်စေခဲ့ကြောင်း ကိုသူရ မှတ်ချက်ပြုခဲ့သည် -- IGCSE Extended Paper က အများဆုံး ဆုချီးမြှင့်သော Multi-Concept ပေါင်းစပ်မှု အမျိုးအစား အတိအကျ ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how does a generator's process relate to the motor effect?",
            questionMy:
                "Generator ၏ လုပ်ငန်းစဉ်သည် Motor Effect နှင့် မည်သို့ ဆက်နွှယ်ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They are essentially mirror images: a motor uses current to produce rotation, a generator uses rotation to produce current",
              "They are completely unrelated concepts",
              "A generator only works with sound waves",
              "A generator and a motor are exactly identical in every way",
            ],
            optionsMy: [
              "၎င်းတို့သည် အခြေခံအားဖြင့် အထောင်ပုံရိပ်များ ဖြစ်ကြသည် - Motor သည် Rotation ထုတ်ပေးရန် Current ကို အသုံးပြုပြီး Generator သည် Current ထုတ်ပေးရန် Rotation ကို အသုံးပြု",
              "၎င်းတို့သည် လုံးဝ မဆက်နွှယ်သော အယူအဆများ ဖြစ်ကြသည်",
              "Generator သည် အသံလှိုင်းများနှင့်သာ အလုပ်လုပ်သည်",
              "Generator နှင့် Motor သည် နည်းလမ်း အားလုံးတွင် အတိအကျ တူညီသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about the mirror-image relationship.",
            ],
            hintsMy: [
              "အထောင်ပုံရိပ် ဆက်နွှယ်မှုအကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did Nay Chi add a step-down transformer to her design?",
            questionMy:
                "သူမ၏ ဒီဇိုင်းသို့ Step-Down Transformer ထည့်သွင်းခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Her hand-cranking would produce a voltage too high and unstable for the battery to safely accept",
              "The transformer made the crank spin faster",
              "Step-down transformers are required by law",
              "It had nothing to do with voltage at all",
            ],
            optionsMy: [
              "သူမ၏ လက်ဖြင့် လှည့်ပတ်ခြင်းသည် Battery လုံခြုံစွာ လက်ခံရန် Voltage ပို၍ မြင့်မား၍ တည်ငြိမ်မှု မရှိနိုင်သောကြောင့်",
              "Transformer သည် လှည့်ကို ပို၍ မြန်စွာ လှည့်ပတ်စေသောကြောင့်",
              "Step-Down Transformer များကို ဥပဒေအရ လိုအပ်သောကြောင့်",
              "Voltage နှင့် လုံးဝ မသက်ဆိုင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about why the transformer was added.",
            ],
            hintsMy: [
              "Transformer ထည့်သွင်းခဲ့ရသည့် အကြောင်းရင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, what skill did this project demonstrate that Ko Thura valued most?",
            questionMy:
                "ကိုသူရ အများဆုံး တန်ဖိုးထားသော ဤ စီမံကိန်း သရုပ်ပြခဲ့သည့် ကျွမ်းကျင်မှုကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "Combining multiple concepts (induction, transformers, electronics) into one synthesis",
              "Memorising a single isolated fact",
              "Drawing the most colourful circuit diagram",
              "Finishing the project in the shortest time",
            ],
            optionsMy: [
              "Concept များစွာ (Induction, Transformers, Electronics) ကို Synthesis တစ်ခုတည်းအဖြစ် ပေါင်းစပ်ခြင်း",
              "သီးခြား အချက်တစ်ခုတည်းကို အလွတ်ကျက်ခြင်း",
              "Circuit Diagram အရောင်အစုံဆုံးကို ဆွဲခြင်း",
              "စီမံကိန်းကို အတိုကျဆုံး အချိန်ဖြင့် ပြီးမြောက်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-phys-w20-d5",
      dayNumber: 5,
      titleEn: "Term 5 Recap: Electromagnetic Effects",
      titleMy: "ပဉ္စမတန်း ပြန်လည်သုံးသပ်ခြင်း - Electromagnetic Effects",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "For an ideal transformer, power input always equals...",
          questionMy:
              "စံပြ Transformer တစ်ခုအတွက် Power Input သည် အမြဲ ...နှင့် ညီမျှသည်",
          optionsEn: [
            "Power output",
            "Zero",
            "Double the power output",
            "The number of turns only",
          ],
          optionsMy: [
            "Power Output",
            "သုည",
            "Power Output ၏ နှစ်ဆ",
            "လှည့်ပတ် အရေအတွက်သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A generator produces current by rotating a coil within a...",
          questionMy:
              "Generator တစ်ခုသည် ...အတွင်း ကွင်းတစ်ခုကို လှည့်ပတ်ခြင်းဖြင့် Current ထုတ်ပေးသည်",
          optionsEn: [
            "Magnetic field",
            "Vacuum only",
            "Sound wave",
            "Beam of light",
          ],
          optionsMy: [
            "သံလိုက်စက်ကွင်း",
            "Vacuum သာ",
            "အသံလှိုင်း",
            "အလင်းရောင် တန်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "An LDR combined with a control circuit is an example of...",
          questionMy:
              "ထိန်းချုပ်ရေး ပတ်လမ်းတစ်ခုနှင့် ပေါင်းစပ်ထားသော LDR သည် ...၏ ဥပမာတစ်ခု ဖြစ်သည်",
          optionsEn: [
            "A sensing component",
            "A permanent magnet",
            "A step-up transformer",
            "A sound wave detector",
          ],
          optionsMy: [
            "Sensing ပါဝင်ပစ္စည်း",
            "Permanent Magnet",
            "Step-Up Transformer",
            "အသံလှိုင်း ဖော်ထုတ်ကိရိယာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
const CourseTermDef igcsePhysicsTerm5 = CourseTermDef(
  id: "course-igcse-phys-term5",
  termNumber: 5,
  titleEn: "Electromagnetic Effects",
  titleMy: "လျှပ်စစ်သံလိုက် သက်ရောက်မှုများ",
  certificateTitleEn: "IGCSE Physics Term 5 Certificate",
  certificateTitleMy: "IGCSE ရူပဗေဒ ပဉ္စမတန်း အောင်လက်မှတ်",
  weeks: [
    _igcsePhysWeek17,
    _igcsePhysWeek18,
    _igcsePhysWeek19,
    _igcsePhysWeek20,
  ],
);

/// IGCSE Physics pathway -- Terms 1-5 of 9 authored so far (Terms 6-9 to
/// follow: Atomic Physics; Space Physics; Experimental Skills; Exam Prep &
/// Graduation). `totalWeeks: 36` reflects the full 9-term aspirational
/// course length.
const CoursePathwayDef igcsePhysicsPathway = CoursePathwayDef(
  id: "course-igcse-physics",
  subject: "physics",
  grade: Grade.igcse,
  titleEn: "IGCSE Physics",
  titleMy: "IGCSE ရူပဗေဒ",
  descriptionEn:
      "A rigorous, exam-focused Cambridge IGCSE Physics pathway covering motion and forces, thermal physics, waves and optics, electricity and magnetism, electromagnetic effects, atomic physics, space physics, and experimental technique.",
  descriptionMy:
      "ရွေ့လျားမှုနှင့် အားများ၊ အပူရူပဗေဒ၊ လှိုင်းနှင့် အလင်းဗေဒ၊ လျှပ်စစ်နှင့် သံလိုက်စွမ်းပကား၊ လျှပ်စစ်သံလိုက် သက်ရောက်မှုများ၊ အက်တမ် ရူပဗေဒ၊ အာကာသ ရူပဗေဒနှင့် လက်တွေ့စမ်းသပ်မှု နည်းစနစ်များကို လွှမ်းခြုံသော တင်းကျပ်ပြီး စာမေးပွဲဗဟိုပြု Cambridge IGCSE ရူပဗေဒ လမ်းကြောင်း။",
  totalWeeks: 36,
  terms: [
    igcsePhysicsTerm1,
    igcsePhysicsTerm2,
    igcsePhysicsTerm3,
    igcsePhysicsTerm4,
    igcsePhysicsTerm5,
  ],
);
