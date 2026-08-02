const CourseWeekDef _secondary2ScienceWeek33 = CourseWeekDef(
  id: "course-secondary2-science-w33",
  weekNumber: 33,
  titleEn: "Speed and Distance",
  titleMy: "အမြန်နှုန်း နှင့် အကွာအဝေး",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-science-w33-d1",
      dayNumber: 1,
      titleEn: "Calculating Speed",
      titleMy: "အမြန်နှုန်း တွက်ချက်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is the formula used to calculate speed?",
          questionMy:
              "အမြန်နှုန်းကို တွက်ချက်ရန် အသုံးပြုသော ဖော်မြူလာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Speed = Distance ÷ Time",
            "Speed = Time ÷ Distance",
            "Speed = Distance × Time",
            "Speed = Distance + Time",
          ],
          optionsMy: [
            "အမြန်နှုန်း = အကွာအဝေး ÷ အချိန်",
            "အမြန်နှုန်း = အချိန် ÷ အကွာအဝေး",
            "အမြန်နှုန်း = အကွာအဝေး × အချိန်",
            "အမြန်နှုန်း = အကွာအဝေး + အချိန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about how far something travels compared to how long it takes — speed measures distance covered per unit of time.",
            "If a car covers more distance in the same time, it must be dividing a bigger distance by the same time — that's the correct order of the formula.",
          ],
          hintsMy: [
            "တစ်ခုခုသည် မည်မျှကြာမြင့်စွာ ကြာသည်ကို နှိုင်းယှဉ်ပြီး မည်မျှဝေးဝေး သွားရောက်နိုင်ကြောင်းကို စဉ်းစားပါ — အမြန်နှုန်းသည် အချိန်ယူနစ်တစ်ခုလျှင် လွှမ်းခြုံသောအကွာအဝေးကို တိုင်းတာသည်။",
            "ကားတစ်စီးသည် အချိန်တူညီအတွင်း အကွာအဝေးပိုများစွာ လွှမ်းခြုံပါက ၎င်းသည် အချိန်တူညီဖြင့် အကွာအဝေးပိုကြီးကို စားနေခြင်းဖြစ်ရမည် — ၎င်းသည် ဖော်မြူလာ၏ မှန်ကန်သောအစီအစဉ်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which of these is a correct unit for measuring speed?",
          questionMy:
              "အောက်ပါတို့အနက် အမြန်နှုန်းကို တိုင်းတာရန် မှန်ကန်သော ယူနစ်မှာ အဘယ်နည်း။",
          optionsEn: [
            "m/s (metres per second)",
            "kg/m³ (kilograms per cubic metre)",
            "N/m² (newtons per square metre)",
            "J (joules)",
          ],
          optionsMy: [
            "m/s (စက္ကန့်လျှင် မီတာ)",
            "kg/m³ (ကုဗမီတာလျှင် ကီလိုဂရမ်)",
            "N/m² (နယူတန်လျှင် စတုရန်းမီတာ)",
            "J (ဂျူးလ်)",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall from earlier terms which unit measured mass per volume, and which measured force per area — speed's unit combines distance and time only.",
            "Speed always pairs a distance unit (like metres or kilometres) with a time unit (like seconds or hours), such as m/s or km/h.",
          ],
          hintsMy: [
            "ယခင်စာသင်ချိန်များမှ မည်သည့်ယူနစ်က ထုထည်တစ်ခုလျှင် ဒြပ်ထုကို၊ မည်သည့်ယူနစ်က မျက်နှာပြင်တစ်ခုလျှင် အားကို တိုင်းတာသည်ကို သတိရပါ — အမြန်နှုန်း၏ ယူနစ်သည် အကွာအဝေးနှင့် အချိန်ကိုသာ ပေါင်းစပ်ထားသည်။",
            "အမြန်နှုန်းသည် အကွာအဝေးယူနစ် (မီတာ သို့မဟုတ် ကီလိုမီတာကဲ့သို့) ကို အချိန်ယူနစ် (စက္ကန့် သို့မဟုတ် နာရီကဲ့သို့) နှင့် အမြဲတွဲစပ်သည်၊ ဥပမာ m/s သို့မဟုတ် km/h ကဲ့သို့။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A car travels 150 km in 3 hours. What is its average speed?",
          questionMy:
              "ကားတစ်စီးသည် ၃ နာရီအတွင်း ၁၅၀ ကီလိုမီတာ ခရီးသွားသည်။ ၎င်း၏ ပျမ်းမျှအမြန်နှုန်းမှာ အဘယ်နည်း။",
          optionsEn: ["50 km/h", "450 km/h", "3 km/h", "147 km/h"],
          optionsMy: ["50 km/h", "450 km/h", "3 km/h", "147 km/h"],
          correctIndex: 0,
          hintsEn: [
            "Apply the formula from the first question: divide the total distance by the total time taken.",
            "Check which option matches distance divided by time using the numbers given in the question.",
          ],
          hintsMy: [
            "ပထမမေးခွန်းမှ ဖော်မြူလာကို အသုံးချပါ — စုစုပေါင်းအကွာအဝေးကို စုစုပေါင်းအချိန်ဖြင့် စားပါ။",
            "မေးခွန်းတွင်ပေးထားသော ကိန်းဂဏန်းများကို သုံး၍ အကွာအဝေးကို အချိန်ဖြင့် စားလိုက်သည့် ရလဒ်နှင့် ကိုက်ညီသော ရွေးချယ်စရာကို စစ်ဆေးပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A train travels 100 km in the first hour, then 50 km in the next two hours. What is its average speed for the whole 3-hour journey?",
          questionMy:
              "ရထားတစ်စီးသည် ပထမနာရီအတွင်း ၁၀၀ ကီလိုမီတာ ခရီးသွားပြီးနောက် ဒုတိယ ၂ နာရီအတွင်း ၅၀ ကီလိုမီတာ ထပ်မံ ခရီးသွားသည်။ ၃ နာရီပါဝင်သော ခရီးစဉ်တစ်ခုလုံး၏ ပျမ်းမျှအမြန်နှုန်းမှာ အဘယ်နည်း။",
          optionsEn: ["50 km/h", "62.5 km/h", "150 km/h", "75 km/h"],
          optionsMy: ["50 km/h", "62.5 km/h", "150 km/h", "75 km/h"],
          correctIndex: 0,
          hintsEn: [
            "Average speed for a whole journey uses total distance divided by total time — not simply the average of the two individual speeds.",
            "Add both distances together for the total distance, and add both times together for the total time, then divide.",
          ],
          hintsMy: [
            "ခရီးစဉ်တစ်ခုလုံး၏ ပျမ်းမျှအမြန်နှုန်းသည် စုစုပေါင်းအကွာအဝေးကို စုစုပေါင်းအချိန်ဖြင့် စားခြင်းကို အသုံးပြုသည် — တစ်ကောင်စီ၏ အမြန်နှုန်းနှစ်ခု၏ ပျမ်းမျှသာ မဟုတ်ချေ။",
            "အကွာအဝေးနှစ်ခုကို ပေါင်း၍ စုစုပေါင်းအကွာအဝေးကို ရှာပါ၊ အချိန်နှစ်ခုကိုလည်း ပေါင်း၍ စုစုပေါင်းအချိန်ကို ရှာပြီးမှ စားပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w33-d2",
      dayNumber: 2,
      titleEn: "Speed Vocabulary",
      titleMy: "အမြန်နှုန်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2s-w33-dm1",
          termEn: "Speed",
          termMy: "အမြန်နှုန်း (Speed)",
          matchEn:
              "How fast an object is moving, measured as distance travelled per unit of time",
          matchMy:
              "အရာဝတ္ထုတစ်ခု မည်မျှမြန်ဆန်စွာ ရွေ့လျားနေသည်ကို ဖော်ပြပြီး အချိန်ယူနစ်တစ်ခုလျှင် ခရီးသွားရသော အကွာအဝေးဖြင့် တိုင်းတာသည်",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2s-w33-dm2",
          termEn: "Distance",
          termMy: "အကွာအဝေး (Distance)",
          matchEn: "The total length of the path an object has travelled",
          matchMy: "အရာဝတ္ထုတစ်ခု ခရီးသွားခဲ့သော လမ်းကြောင်း၏ စုစုပေါင်း အလျား",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2s-w33-dm3",
          termEn: "Time",
          termMy: "အချိန် (Time)",
          matchEn:
              "The duration taken for a journey, often measured in seconds or hours",
          matchMy:
              "ခရီးစဉ်တစ်ခုအတွက် ကြာမြင့်သောကာလ၊ များသောအားဖြင့် စက္ကန့် သို့မဟုတ် နာရီဖြင့် တိုင်းတာသည်",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2s-w33-dm4",
          termEn: "Average Speed",
          termMy: "ပျမ်းမျှ အမြန်နှုန်း (Average Speed)",
          matchEn:
              "Total distance travelled divided by total time taken for a whole journey",
          matchMy:
              "ခရီးစဉ်တစ်ခုလုံးအတွက် စုစုပေါင်း ခရီးသွားခဲ့သော အကွာအဝေးကို စုစုပေါင်း အချိန်ဖြင့် စားခြင်း",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2s-w33-dm5",
          termEn: "m/s (metres per second)",
          termMy: "m/s (စက္ကန့်လျှင် မီတာ)",
          matchEn:
              "The SI unit for speed, commonly used for short distances or fast-moving objects",
          matchMy:
              "အမြန်နှုန်းအတွက် SI ယူနစ်ဖြစ်ပြီး အကွာအဝေးတိုများ သို့မဟုတ် လျင်မြန်စွာ ရွေ့လျားသောအရာများအတွက် အသုံးများသည်",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2s-w33-dm6",
          termEn: "km/h (kilometres per hour)",
          termMy: "km/h (နာရီလျှင် ကီလိုမီတာ)",
          matchEn:
              "A common unit for speed over longer distances, such as car or train journeys",
          matchMy:
              "ကား သို့မဟုတ် ရထားခရီးစဉ်များကဲ့သို့ ဝေးလံသောအကွာအဝေးများအတွက် အသုံးများသော အမြန်နှုန်းယူနစ်",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w33-d3",
      dayNumber: 3,
      titleEn: "Sorting Fast or Slow Speeds",
      titleMy: "မြန်ဆန် သို့မဟုတ် နှေးကွေးသော အမြန်နှုန်းများကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Fast Speed", "Slow Speed"],
        bucketsMy: ["မြန်ဆန်သောအမြန်နှုန်း", "နှေးကွေးသောအမြန်နှုန်း"],
        items: [
          SortingItem(
            id: "s2s-w33-sort1",
            labelEn: "A cheetah sprinting at 30 m/s",
            labelMy: "ကျားသစ်တစ်ကောင် ၃၀ m/s ဖြင့် အပြေးမြန်နေခြင်း",
            correctBucketEn: "Fast Speed",
            correctBucketMy: "မြန်ဆန်သောအမြန်နှုန်း",
          ),
          SortingItem(
            id: "s2s-w33-sort2",
            labelEn: "A garden snail moving at 0.001 m/s",
            labelMy: "ဥယျာဉ်ခရုတစ်ကောင် ၀.၀၀၁ m/s ဖြင့် ရွေ့လျားနေခြင်း",
            correctBucketEn: "Slow Speed",
            correctBucketMy: "နှေးကွေးသောအမြန်နှုန်း",
          ),
          SortingItem(
            id: "s2s-w33-sort3",
            labelEn: "A commercial jet flying at 250 m/s",
            labelMy:
                "ခရီးသည်တင် လေယာဉ်ကြီးတစ်စင်း ၂၅၀ m/s ဖြင့် ပျံသန်းနေခြင်း",
            correctBucketEn: "Fast Speed",
            correctBucketMy: "မြန်ဆန်သောအမြန်နှုန်း",
          ),
          SortingItem(
            id: "s2s-w33-sort4",
            labelEn: "A person walking at 1.4 m/s",
            labelMy: "လူတစ်ဦး ၁.၄ m/s ဖြင့် လမ်းလျှောက်နေခြင်း",
            correctBucketEn: "Slow Speed",
            correctBucketMy: "နှေးကွေးသောအမြန်နှုန်း",
          ),
          SortingItem(
            id: "s2s-w33-sort5",
            labelEn: "A high-speed train travelling at 83 m/s",
            labelMy: "မြန်နှုန်းမြင့် ရထားတစ်စီး ၈၃ m/s ဖြင့် ခရီးသွားနေခြင်း",
            correctBucketEn: "Fast Speed",
            correctBucketMy: "မြန်ဆန်သောအမြန်နှုန်း",
          ),
          SortingItem(
            id: "s2s-w33-sort6",
            labelEn: "A tortoise walking at 0.06 m/s",
            labelMy: "လိပ်တစ်ကောင် ၀.၀၆ m/s ဖြင့် လျှောက်လှမ်းနေခြင်း",
            correctBucketEn: "Slow Speed",
            correctBucketMy: "နှေးကွေးသောအမြန်နှုန်း",
          ),
          SortingItem(
            id: "s2s-w33-sort7",
            labelEn: "A cyclist racing at 12 m/s",
            labelMy:
                "စက်ဘီးစီး အားကစားသမားတစ်ဦး ၁၂ m/s ဖြင့် ပြိုင်ပွဲဝင်နေခြင်း",
            correctBucketEn: "Fast Speed",
            correctBucketMy: "မြန်ဆန်သောအမြန်နှုန်း",
          ),
          SortingItem(
            id: "s2s-w33-sort8",
            labelEn: "A sloth moving through trees at 0.02 m/s",
            labelMy:
                "ချုံနွယ်ကောင်တစ်ကောင် သစ်ပင်များကြား ၀.၀၂ m/s ဖြင့် ရွေ့လျားနေခြင်း",
            correctBucketEn: "Slow Speed",
            correctBucketMy: "နှေးကွေးသောအမြန်နှုန်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w33-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su's Cycling Challenge",
      titleMy: "စာဖတ်ခြင်း — စုစု၏ စက်ဘီးစီး စိန်ခေါ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su's Cycling Challenge",
        titleMy: "စုစု၏ စက်ဘီးစီး စိန်ခေါ်မှု",
        passageEn:
            "Su Su decided to track her speed on her weekend cycling route to see how her performance changed along the way. She used a stopwatch and the distance markers along the path to record her progress in stages. For the first 20 minutes, she cycled along a flat, straight road and covered 6 kilometres, feeling strong and steady. Then she reached a long uphill section, and over the next 15 minutes she managed only 2 kilometres, her legs burning with effort. Finally, on the downhill stretch home, she flew for 10 minutes and covered 5 kilometres without even pedalling hard. That evening, Su Su calculated her speed for each stage separately, discovering that her uphill speed was far slower than her flat-road speed, and her downhill speed was the fastest of all. When she calculated her average speed for the whole 45-minute, 13-kilometre ride, she found it was lower than her flat-road speed but higher than her uphill speed, since average speed depends on the total distance and total time for the entire journey, not just one section. Su Su realised that a distance-time graph of her ride would show a steep rise on the flat section, a shallow rise going uphill, and the steepest rise of all on the downhill stretch.",
        passageMy:
            "စုစုသည် သူမ၏ စနေ၊တနင်္ဂနွေ စက်ဘီးစီးလမ်းကြောင်းတွင် မိမိ၏ စွမ်းဆောင်ရည် ခရီးတစ်လျှောက် မည်သို့ပြောင်းလဲကြောင်း ကြည့်ရှုရန် သူမ၏ အမြန်နှုန်းကို မှတ်တမ်းတင်ရန် ဆုံးဖြတ်ခဲ့သည်။ သူမသည် တစ်ဆင့်ချင်းစီ တိုးတက်မှုကို မှတ်တမ်းတင်ရန် စတော့ဝပ်ချ်နှင့် လမ်းတစ်လျှောက်ရှိ အကွာအဝေးအမှတ်များကို အသုံးပြုခဲ့သည်။ ပထမ ၂၀ မိနစ်အတွင်း သူမသည် ညီညာဖြောင့်တန်းသောလမ်းတစ်လျှောက် စက်ဘီးစီးပြီး ၆ ကီလိုမီတာ ရောက်ခဲ့ကာ သန်မာစွာ တည်ငြိမ်စွာ ခံစားခဲ့ရသည်။ ထို့နောက် သူမသည် ရှည်လျားသော တောင်တက်လမ်းပိုင်းသို့ ရောက်ရှိခဲ့ပြီး နောက်ထပ် ၁၅ မိနစ်အတွင်း ၂ ကီလိုမီတာသာ ရောက်ခဲ့ကာ သူမ၏ ခြေထောက်များ ကြိုးစားအားထုတ်မှုကြောင့် ပူလောင်နေခဲ့သည်။ နောက်ဆုံးတွင် အိမ်ပြန်တောင်ကြွင်းလမ်းပိုင်းတွင် သူမသည် ၁၀ မိနစ်ကြာ ပျံသန်းသကဲ့သို့ ရွေ့လျားပြီး စက်ဘီးကို အားစိုက်နင်းစရာမလိုဘဲ ၅ ကီလိုမီတာ ရောက်ခဲ့သည်။ ထိုည စုစုသည် အဆင့်တစ်ခုချင်းစီအတွက် သူမ၏ အမြန်နှုန်းကို တွက်ချက်ခဲ့ပြီး သူမ၏ တောင်တက်အမြန်နှုန်းသည် ညီညာလမ်း၏ အမြန်နှုန်းထက် များစွာ ပိုနှေးကြောင်း၊ တောင်ကြွင်းလမ်း၏ အမြန်နှုန်းမှာ အားလုံးထက် အမြန်ဆုံးဖြစ်ကြောင်း တွေ့ရှိခဲ့သည်။ ခရီးစဉ်တစ်ခုလုံး ၄၅ မိနစ်နှင့် ၁၃ ကီလိုမီတာအတွက် ပျမ်းမျှအမြန်နှုန်းကို တွက်ချက်သောအခါ ၎င်းသည် ညီညာလမ်း၏ အမြန်နှုန်းထက် နိမ့်သော်လည်း တောင်တက်အမြန်နှုန်းထက် ပိုမြင့်ကြောင်း တွေ့ရှိခဲ့သည်၊ အဘယ်ကြောင့်ဆိုသော် ပျမ်းမျှအမြန်နှုန်းသည် တစ်ပိုင်းတည်း မဟုတ်ဘဲ ခရီးစဉ်တစ်ခုလုံး၏ စုစုပေါင်း အကွာအဝေးနှင့် စုစုပေါင်း အချိန်အပေါ် မူတည်သောကြောင့်ဖြစ်သည်။ သူမ၏ ခရီးစဉ်၏ အကွာအဝေး-အချိန် ဂရပ်သည် ညီညာလမ်းပိုင်းတွင် ချက်ချင်းမြင့်တက်မှုကို၊ တောင်တက်လမ်းတွင် ဖြည်းညင်းစွာ မြင့်တက်မှုကို၊ တောင်ကြွင်းလမ်းပိုင်းတွင် အားလုံးထက် အချက်ချင်းဆုံး မြင့်တက်မှုကို ပြသလိမ့်မည်ဟု စုစု သဘောပေါက်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "During which section of her ride did Su Su cycle the slowest?",
            questionMy:
                "စုစု၏ ခရီးစဉ်တွင် မည်သည့်အပိုင်းတွင် အနှေးဆုံး စက်ဘီးစီးခဲ့သနည်း။",
            optionsEn: [
              "The uphill section",
              "The flat road section",
              "The downhill section",
              "She cycled at the same speed throughout",
            ],
            optionsMy: [
              "တောင်တက်လမ်းပိုင်း",
              "ညီညာလမ်းပိုင်း",
              "တောင်ကြွင်းလမ်းပိုင်း",
              "တစ်ခရီးလုံး အမြန်နှုန်းတူညီစွာ စီးခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why was Su Su's average speed for the whole ride lower than her flat-road speed?",
            questionMy:
                "ခရီးစဉ်တစ်ခုလုံးအတွက် စုစု၏ ပျမ်းမျှအမြန်နှုန်းသည် ၎င်း၏ ညီညာလမ်းအမြန်နှုန်းထက် အဘယ်ကြောင့် နိမ့်ခဲ့သနည်း။",
            optionsEn: [
              "Because average speed depends on the total distance and total time for the whole journey, including the slower uphill section",
              "Because her stopwatch was broken",
              "Because average speed is always the slowest speed recorded",
              "Because downhill speed does not count towards average speed",
            ],
            optionsMy: [
              "ပျမ်းမျှအမြန်နှုန်းသည် အနှေးဆုံးဖြစ်သော တောင်တက်အပိုင်းအပါအဝင် ခရီးစဉ်တစ်ခုလုံး၏ စုစုပေါင်းအကွာအဝေးနှင့် စုစုပေါင်းအချိန်အပေါ် မူတည်သောကြောင့်",
              "သူမ၏ စတော့ဝပ်ချ် ပျက်စီးနေခဲ့သောကြောင့်",
              "ပျမ်းမျှအမြန်နှုန်းသည် မှတ်တမ်းတင်ထားသော အနှေးဆုံးအမြန်နှုန်း အမြဲတမ်းဖြစ်သောကြောင့်",
              "တောင်ကြွင်းလမ်းအမြန်နှုန်းသည် ပျမ်းမျှအမြန်နှုန်းတွင် မပါဝင်သောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "How long did Su Su's entire cycling route take in total?",
            questionMy:
                "စုစု၏ စက်ဘီးစီးလမ်းကြောင်းတစ်ခုလုံးမှာ စုစုပေါင်း မည်မျှကြာမြင့်ခဲ့သနည်း။",
            optionsEn: ["45 minutes", "20 minutes", "15 minutes", "10 minutes"],
            optionsMy: ["၄၅ မိနစ်", "၂၀ မိနစ်", "၁၅ မိနစ်", "၁၀ မိနစ်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Based on the passage, what shape would the downhill section make on a distance-time graph?",
            questionMy:
                "စာပိုဒ်အရ တောင်ကြွင်းလမ်းပိုင်းသည် အကွာအဝေး-အချိန် ဂရပ်ပေါ်တွင် မည်သည့်ပုံသဏ္ဌာန်ကို ဖြစ်စေမည်နည်း။",
            optionsEn: [
              "The steepest rise of all three sections",
              "A completely flat line",
              "A line sloping downward",
              "Exactly the same slope as the flat road section",
            ],
            optionsMy: [
              "အပိုင်းသုံးပိုင်းအနက် အစောင်းချိန်ပြင်းထန်ဆုံး မြင့်တက်မှု",
              "လုံးဝ ပြင်ညီသော မျဉ်း",
              "အောက်သို့ စောင်းနေသော မျဉ်း",
              "ညီညာလမ်းပိုင်းနှင့် အတိအကျ တူညီသော စောင်းချိန်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w33-d5",
      dayNumber: 5,
      titleEn: "Speed and Distance Recap Quiz",
      titleMy: "အမြန်နှုန်းနှင့် အကွာအဝေး ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Speed is calculated by dividing distance by...",
          questionMy:
              "အမြန်နှုန်းကို အကွာအဝေးအား အဘယ်အရာဖြင့် စားခြင်းဖြင့် တွက်ချက်သနည်း...",
          optionsEn: ["Time", "Mass", "Volume", "Force"],
          optionsMy: ["အချိန်", "ဒြပ်ထု", "ထုထည်", "အား"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is a unit used to measure speed?",
          questionMy:
              "အောက်ပါတို့အနက် အမြန်နှုန်းကို တိုင်းတာရန် အသုံးပြုသော ယူနစ်မှာ အဘယ်နည်း...",
          optionsEn: ["km/h", "kg/m³", "N/m²", "J"],
          optionsMy: ["km/h", "kg/m³", "N/m²", "J"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Average speed for a whole journey is calculated using...",
          questionMy:
              "ခရီးစဉ်တစ်ခုလုံး၏ ပျမ်းမျှအမြန်နှုန်းကို အဘယ်အရာဖြင့် တွက်ချက်သနည်း...",
          optionsEn: [
            "Total distance divided by total time",
            "The fastest speed reached during the journey",
            "The slowest speed reached during the journey",
            "The distance travelled in the first minute only",
          ],
          optionsMy: [
            "စုစုပေါင်းအကွာအဝေးကို စုစုပေါင်းအချိန်ဖြင့် စားခြင်း",
            "ခရီးစဉ်အတွင်း ရောက်ရှိခဲ့သော အမြန်ဆုံးအမြန်နှုန်း",
            "ခရီးစဉ်အတွင်း ရောက်ရှိခဲ့သော အနှေးဆုံးအမြန်နှုန်း",
            "ပထမမိနစ်တွင်သာ ခရီးသွားခဲ့သော အကွာအဝေး",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A cyclist travels 40 km in 2 hours. What is her average speed?",
          questionMy:
              "စက်ဘီးစီးသူတစ်ဦးသည် ၂ နာရီအတွင်း ၄၀ ကီလိုမီတာ ခရီးသွားသည်။ ၎င်း၏ ပျမ်းမျှအမြန်နှုန်းမှာ အဘယ်နည်း။",
          optionsEn: ["20 km/h", "80 km/h", "42 km/h", "2 km/h"],
          optionsMy: ["20 km/h", "80 km/h", "42 km/h", "2 km/h"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Su Su's cycling story, on which part of her route was she travelling fastest?",
          questionMy:
              "စုစု၏ စက်ဘီးစီးဇာတ်လမ်းတွင် သူမ၏ လမ်းကြောင်း မည်သည့်အပိုင်းတွင် အမြန်ဆုံး ခရီးသွားခဲ့သနည်း။",
          optionsEn: [
            "The downhill section",
            "The uphill section",
            "The flat road section",
            "She travelled at the same speed the whole way",
          ],
          optionsMy: [
            "တောင်ကြွင်းလမ်းပိုင်း",
            "တောင်တက်လမ်းပိုင်း",
            "ညီညာလမ်းပိုင်း",
            "သူမသည် ခရီးတစ်လျှောက်လုံး အမြန်နှုန်းတူညီစွာ သွားခဲ့သည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2ScienceWeek34 = CourseWeekDef(
  id: "course-secondary2-science-w34",
  weekNumber: 34,
  titleEn: "Distance-Time Graphs",
  titleMy: "အကွာအဝေး-အချိန် ဂရပ်များ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-science-w34-d1",
      dayNumber: 1,
      titleEn: "Reading Distance-Time Graphs",
      titleMy: "အကွာအဝေး-အချိန် ဂရပ်များ ဖတ်ရှုခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "On a distance-time graph, what does the slope (gradient) of the line represent?",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်တစ်ခုတွင် မျဉ်း၏ စောင်းချိန် (gradient) သည် အဘယ်အရာကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "The speed of the object",
            "The total distance travelled",
            "The time taken for the journey",
            "The mass of the object",
          ],
          optionsMy: [
            "အရာဝတ္ထု၏ အမြန်နှုန်း",
            "ခရီးသွားခဲ့သော စုစုပေါင်းအကွာအဝေး",
            "ခရီးစဉ်အတွက် ကြာမြင့်သောအချိန်",
            "အရာဝတ္ထု၏ ဒြပ်ထု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall the formula for speed — distance divided by time — and think about how a graph's steepness relates to that ratio.",
            "A line that rises quickly over a short time period represents a larger change in distance per unit time.",
          ],
          hintsMy: [
            "အမြန်နှုန်းအတွက် ဖော်မြူလာကို သတိရပါ — အကွာအဝေးကို အချိန်ဖြင့် စားခြင်း — ဂရပ်တစ်ခု၏ စောင်းချိန်သည် ထိုအချိုးနှင့် မည်သို့ ဆက်စပ်သည်ကို စဉ်းစားပါ။",
            "ကာလတိုတစ်ခုအတွင်း လျင်မြန်စွာ မြင့်တက်သောမျဉ်းသည် အချိန်ယူနစ်တစ်ခုလျှင် အကွာအဝေး ပြောင်းလဲမှု ပိုကြီးမားကြောင်း ကိုယ်စားပြုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What does a horizontal (flat) line on a distance-time graph indicate?",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်တစ်ခုပေါ်ရှိ ပြင်ညီ (flat) မျဉ်းတစ်ခုသည် အဘယ်အရာကို ညွှန်ပြသနည်း။",
          optionsEn: [
            "The object is stationary (not moving)",
            "The object is moving at a constant high speed",
            "The object is accelerating rapidly",
            "The object has travelled the maximum possible distance",
          ],
          optionsMy: [
            "အရာဝတ္ထုသည် ရပ်တန့်နေသည် (မရွေ့လျားချေ)",
            "အရာဝတ္ထုသည် မြင့်မားသော အမြန်နှုန်းစဉ်ဆက်မပြတ် ရွေ့လျားနေသည်",
            "အရာဝတ္ထုသည် လျင်မြန်စွာ အရှိန်မြှင့်နေသည်",
            "အရာဝတ္ထုသည် ဖြစ်နိုင်ဆုံး အကွာအဝေးအများဆုံးကို ခရီးသွားပြီးဖြစ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "If distance is not increasing at all as time passes, what must be true about the object's motion?",
            "No change in the vertical (distance) value while time keeps moving forward horizontally means the object simply isn't going anywhere.",
          ],
          hintsMy: [
            "အချိန်ကုန်လွန်သွားစဉ် အကွာအဝေးသည် လုံးဝ မတိုးလာပါက အရာဝတ္ထု၏ ရွေ့လျားမှုအကြောင်း အဘယ်အချက် မှန်ကန်ရမည်နည်း။",
            "အချိန်သည် ရေပြင်ညီအတိုင်း ဆက်လက်ရွေ့လျားနေစဉ် ဒေါင်လိုက် (အကွာအဝေး) တန်ဖိုးတွင် ပြောင်းလဲမှု မရှိခြင်းသည် အရာဝတ္ထု မည်သည့်နေရာသို့မျှ မသွားကြောင်း ရိုးရှင်းစွာ ဆိုလိုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Two lines are drawn on the same distance-time graph. Line A is steeper than Line B. What does this tell us?",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်တစ်ခုတည်းပေါ်တွင် မျဉ်းနှစ်ခု ရေးဆွဲထားသည်။ မျဉ်း A သည် မျဉ်း B ထက် စောင်းချိန်ပိုများသည်။ ၎င်းသည် ကျွန်ုပ်တို့အား အဘယ်အရာကို ပြောပြသနည်း။",
          optionsEn: [
            "The object represented by Line A is travelling faster than the one represented by Line B",
            "Line A represents an object that travelled a shorter distance overall",
            "Line A represents an object that took more time to finish its journey",
            "There is no meaningful difference between the two lines",
          ],
          optionsMy: [
            "မျဉ်း A ကိုယ်စားပြုသော အရာဝတ္ထုသည် မျဉ်း B ကိုယ်စားပြုသော အရာဝတ္ထုထက် ပိုမြန်စွာ ခရီးသွားနေသည်",
            "မျဉ်း A သည် စုစုပေါင်း ပိုတိုသောအကွာအဝေးကို ခရီးသွားခဲ့သော အရာဝတ္ထုကို ကိုယ်စားပြုသည်",
            "မျဉ်း A သည် ခရီးစဉ်ပြီးဆုံးရန် အချိန်ပိုကြာသော အရာဝတ္ထုကို ကိုယ်စားပြုသည်",
            "မျဉ်းနှစ်ခုကြား သိသာထင်ရှားသော ခြားနားချက် မရှိချေ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Remember: on this type of graph, steepness directly relates to speed.",
            "A steeper slope means more distance is covered in the same amount of time, which is exactly what a faster speed looks like.",
          ],
          hintsMy: [
            "မှတ်ထားပါ — ဤဂရပ်အမျိုးအစားတွင် စောင်းချိန်သည် အမြန်နှုန်းနှင့် တိုက်ရိုက် ဆက်စပ်သည်။",
            "စောင်းချိန်ပိုများခြင်းသည် အချိန်တူညီအတွင်း အကွာအဝေးပိုများစွာ လွှမ်းခြုံခြင်းကို ဆိုလိုပြီး ၎င်းသည် ပိုမြန်သောအမြန်နှုန်း၏ ပုံသဏ္ဌာန်အတိအကျဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A distance-time graph shows a line rising steeply, then becoming flat for a while, then rising again but less steeply than before. What does this graph tell us about the journey?",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်တစ်ခုသည် ရုတ်တရက် မြင့်တက်သောမျဉ်းကို ပြသပြီး ခဏတာ ပြင်ညီဖြစ်သွားကာ ထို့နောက် ယခင်ကထက် စောင်းချိန်နည်းစွာ ပြန်လည်မြင့်တက်လာသည်ကို ပြသသည်။ ဤဂရပ်သည် ခရီးစဉ်အကြောင်း ကျွန်ုပ်တို့အား အဘယ်အရာ ပြောပြသနည်း။",
          optionsEn: [
            "The object moved fast, then stopped for a rest, then moved again at a slower speed",
            "The object moved at exactly the same constant speed the entire time",
            "The object moved backwards during the flat section",
            "The object was completely stationary for the whole journey",
          ],
          optionsMy: [
            "အရာဝတ္ထုသည် မြန်စွာ ရွေ့လျားခဲ့ပြီး ခဏငြိမ်သက်နားနားရသည်၊ ထို့နောက် ပိုနှေးသောအမြန်နှုန်းဖြင့် ထပ်မံ ရွေ့လျားခဲ့သည်",
            "အရာဝတ္ထုသည် တစ်ချိန်လုံး အတိအကျ တူညီသောစဉ်ဆက်မပြတ် အမြန်နှုန်းဖြင့် ရွေ့လျားခဲ့သည်",
            "အရာဝတ္ထုသည် ပြင်ညီအပိုင်းအတွင်း နောက်ပြန်ရွေ့လျားခဲ့သည်",
            "အရာဝတ္ထုသည် ခရီးစဉ်တစ်ခုလုံးအတွက် လုံးဝ ရပ်တန့်နေခဲ့သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Break the graph into its three sections and interpret each one separately using what you know about steep, flat, and gentle slopes.",
            "Steep means fast movement, flat means no movement at all, and a gentler slope afterwards means movement continues but at a reduced speed.",
          ],
          hintsMy: [
            "ဂရပ်ကို ၎င်း၏ အပိုင်းသုံးပိုင်းအဖြစ် ခွဲခြားပြီး စောင်းချိန်ပြင်းထန်ခြင်း၊ ပြင်ညီခြင်းနှင့် ဖြည်းညင်းခြင်းအကြောင်း သင်သိသည်များကို အသုံးပြု၍ တစ်ခုချင်းစီ အဓိပ္ပာယ်ဖွင့်ပါ။",
            "စောင်းချိန်ပြင်းထန်ခြင်းသည် လျင်မြန်သောရွေ့လျားမှုကို ဆိုလိုပြီး ပြင်ညီခြင်းသည် လုံးဝ ရွေ့လျားမှုမရှိကြောင်းကို ဆိုလိုကာ နောက်ပိုင်း ဖြည်းညင်းသောစောင်းချိန်သည် ရွေ့လျားမှု ဆက်လက်ရှိသော်လည်း အမြန်နှုန်း လျော့နည်းသွားကြောင်း ဆိုလိုသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w34-d2",
      dayNumber: 2,
      titleEn: "Graph Vocabulary",
      titleMy: "ဂရပ် ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2s-w34-dm1",
          termEn: "Distance-Time Graph",
          termMy: "အကွာအဝေး-အချိန် ဂရပ် (Distance-Time Graph)",
          matchEn:
              "A graph plotting the distance an object has travelled against the time taken",
          matchMy:
              "အရာဝတ္ထုတစ်ခု ခရီးသွားခဲ့သော အကွာအဝေးကို ကြာမြင့်သောအချိန်နှင့် နှိုင်းယှဉ် ရေးဆွဲထားသော ဂရပ်",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2s-w34-dm2",
          termEn: "Slope (Gradient)",
          termMy: "စောင်းချိန် (Gradient)",
          matchEn:
              "The steepness of a line on a graph; on a distance-time graph, this equals speed",
          matchMy:
              "ဂရပ်တစ်ခုပေါ်ရှိ မျဉ်း၏ စောင်းချိန်အတိုင်းအတာ၊ အကွာအဝေး-အချိန် ဂရပ်တွင် ၎င်းသည် အမြန်နှုန်းနှင့် ညီမျှသည်",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2s-w34-dm3",
          termEn: "Stationary",
          termMy: "ရပ်တန့်နေသော (Stationary)",
          matchEn:
              "Not moving; shown as a flat, horizontal line on a distance-time graph",
          matchMy:
              "မရွေ့လျားခြင်း၊ အကွာအဝေး-အချိန်ဂရပ်တွင် ပြင်ညီသောမျဉ်းအဖြစ် ပြသသည်",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2s-w34-dm4",
          termEn: "Steep Line",
          termMy: "စောင်းချိန်ပြင်းထန်သောမျဉ်း (Steep Line)",
          matchEn:
              "A line with a large slope, showing that an object is moving fast",
          matchMy:
              "စောင်းချိန်ကြီးမားသော မျဉ်းတစ်ခု၊ အရာဝတ္ထုတစ်ခု မြန်စွာ ရွေ့လျားနေကြောင်း ပြသသည်",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2s-w34-dm5",
          termEn: "Gentle Slope",
          termMy: "ဖြည်းညင်းသောစောင်းချိန် (Gentle Slope)",
          matchEn:
              "A line with a small slope, showing that an object is moving slowly",
          matchMy:
              "စောင်းချိန်သေးငယ်သော မျဉ်းတစ်ခု၊ အရာဝတ္ထုတစ်ခု နှေးကွေးစွာ ရွေ့လျားနေကြောင်း ပြသသည်",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2s-w34-dm6",
          termEn: "Journey",
          termMy: "ခရီးစဉ် (Journey)",
          matchEn:
              "The whole path of movement from start to finish, which a graph can tell the story of",
          matchMy:
              "အစမှ အဆုံးအထိ ရွေ့လျားမှု၏ လမ်းကြောင်းတစ်ခုလုံး၊ ဂရပ်တစ်ခုက ၎င်း၏ဇာတ်လမ်းကို ပြောပြနိုင်သည်",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w34-d3",
      dayNumber: 3,
      titleEn: "Sorting Moving or Stationary",
      titleMy: "ရွေ့လျားခြင်း သို့မဟုတ် ရပ်တန့်ခြင်းကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Moving", "Stationary"],
        bucketsMy: ["ရွေ့လျားနေသော", "ရပ်တန့်နေသော"],
        items: [
          SortingItem(
            id: "s2s-w34-sort1",
            labelEn: "A steep upward line",
            labelMy: "စောင်းချိန်ပြင်းထန်စွာ အထက်သို့တက်နေသော မျဉ်း",
            correctBucketEn: "Moving",
            correctBucketMy: "ရွေ့လျားနေသော",
          ),
          SortingItem(
            id: "s2s-w34-sort2",
            labelEn: "A flat horizontal line",
            labelMy: "ပြင်ညီသော ရေပြင်ညီမျဉ်း",
            correctBucketEn: "Stationary",
            correctBucketMy: "ရပ်တန့်နေသော",
          ),
          SortingItem(
            id: "s2s-w34-sort3",
            labelEn: "A gently sloping upward line",
            labelMy: "ဖြည်းညင်းစွာ အထက်သို့ စောင်းနေသော မျဉ်း",
            correctBucketEn: "Moving",
            correctBucketMy: "ရွေ့လျားနေသော",
          ),
          SortingItem(
            id: "s2s-w34-sort4",
            labelEn: "A line that stays at the same height over time",
            labelMy: "အချိန်ကြာလာသော်လည်း အမြင့်တူညီအတိုင်း ရှိနေသော မျဉ်း",
            correctBucketEn: "Stationary",
            correctBucketMy: "ရပ်တန့်နေသော",
          ),
          SortingItem(
            id: "s2s-w34-sort5",
            labelEn: "A very steep line rising quickly",
            labelMy:
                "လျင်မြန်စွာ မြင့်တက်နေသော အလွန် စောင်းချိန်ပြင်းသော မျဉ်း",
            correctBucketEn: "Moving",
            correctBucketMy: "ရွေ့လျားနေသော",
          ),
          SortingItem(
            id: "s2s-w34-sort6",
            labelEn: "No change in distance as time passes",
            labelMy:
                "အချိန်ကုန်လွန်သွားစဉ် အကွာအဝေးတွင် ပြောင်းလဲမှု မရှိခြင်း",
            correctBucketEn: "Stationary",
            correctBucketMy: "ရပ်တန့်နေသော",
          ),
          SortingItem(
            id: "s2s-w34-sort7",
            labelEn: "A slowly rising line over a long time period",
            labelMy:
                "ကြာရှည်သောအချိန်ကာလတစ်လျှောက် နှေးကွေးစွာ မြင့်တက်နေသော မျဉ်း",
            correctBucketEn: "Moving",
            correctBucketMy: "ရွေ့လျားနေသော",
          ),
          SortingItem(
            id: "s2s-w34-sort8",
            labelEn: "A perfectly flat section in the middle of a graph",
            labelMy: "ဂရပ်တစ်ခု၏ အလယ်ပိုင်းရှိ လုံးဝပြင်ညီသော အပိုင်း",
            correctBucketEn: "Stationary",
            correctBucketMy: "ရပ်တန့်နေသော",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w34-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's School Bus Journey",
      titleMy: "စာဖတ်ခြင်း — နေချည်၏ ကျောင်းဘတ်စ်ကား ခရီးစဉ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's School Bus Journey",
        titleMy: "နေချည်၏ ကျောင်းဘတ်စ်ကား ခရီးစဉ်",
        passageEn:
            "Nay Chi loved sitting by the window on her school bus, watching a small GPS tracker app show her distance travelled every minute. One morning, she decided to sketch what her journey's distance-time graph would look like based on what she observed. For the first ten minutes, the bus drove quickly along an open road out of her neighbourhood, and the line on her sketch rose in a steep, straight climb. Then the bus reached a busy intersection and waited at a red light for nearly five minutes; during this time, the distance reading did not change at all, so Nay Chi drew a completely flat section. Once the light turned green, the bus continued, but now it crawled through heavy morning traffic near the school, covering far less distance in the remaining fifteen minutes than it had during the first ten. Nay Chi drew this final section as a much gentler, shallower rise than the first climb. Looking at her finished sketch, Nay Chi realised she could tell the entire story of her journey just from the shape of the lines: a fast start, a complete stop, and then a slow crawl to school, all without needing a single word of description.",
        passageMy:
            "နေချည်သည် သူမ၏ ကျောင်းဘတ်စ်ကားပေါ်တွင် ပြတင်းပေါက်အနီးထိုင်ရန် နှစ်သက်ပြီး GPS ခြေရာခံအက်ပ်လေးက မိနစ်တိုင်း ပြသသော သူမ၏ ခရီးသွား အကွာအဝေးကို ကြည့်ရှုလေ့ရှိသည်။ တစ်နံနက်တွင် သူမသည် တွေ့ရှိချက်များအပေါ်မူတည်၍ သူမ၏ ခရီးစဉ်၏ အကွာအဝေး-အချိန်ဂရပ် မည်သို့ ပုံစံရှိမည်ကို ပုံဖော်ရေးဆွဲရန် ဆုံးဖြတ်ခဲ့သည်။ ပထမ ၁၀ မိနစ်အတွင်း ဘတ်စ်ကားသည် သူမ၏ ရပ်ကွက်မှ ဟင်းလင်းလမ်းတစ်လျှောက် လျင်မြန်စွာ မောင်းနှင်ခဲ့ပြီး သူမ၏ပုံကြမ်းရေးဆွဲထားသော မျဉ်းသည် ချောမွေ့စွာ ပြင်းထန်စွာ တက်ခဲ့သည်။ ထို့နောက် ဘတ်စ်ကားသည် အသွားအလာများသော လမ်းဆုံသို့ ရောက်ရှိပြီး မီးနီတွင် ငါးမိနစ်နီးပါး စောင့်ဆိုင်းခဲ့ရသည်၊ ဤအချိန်အတွင်း အကွာအဝေးဖတ်ချက်သည် လုံးဝ မပြောင်းလဲသောကြောင့် နေချည်သည် လုံးဝ ပြင်ညီသောအပိုင်းကို ရေးဆွဲခဲ့သည်။ မီးစိမ်းပြောင်းသွားသောအခါ ဘတ်စ်ကားသည် ဆက်လက်မောင်းနှင်ခဲ့သော်လည်း ယခုအခါ ကျောင်းအနီးရှိ နံနက်ခင်း အသွားအလာကျပ်တည်းမှုကြောင့် ဖြည်းညင်းစွာသာ သွားနိုင်ခဲ့ပြီး ကျန်ရှိသော ၁၅ မိနစ်အတွင်း ပထမ ၁၀ မိနစ်ကထက် အကွာအဝေး နည်းနည်းသာ ရောက်ခဲ့သည်။ နေချည်သည် ဤနောက်ဆုံးအပိုင်းကို ပထမတက်ခဲ့သည့် အတက်ထက် ပိုမိုဖြည်းညင်းပြီး ပိုမိုသိမ်မွေ့သော မြင့်တက်မှုအဖြစ် ရေးဆွဲခဲ့သည်။ သူမ၏ပြီးစီးသွားသော ပုံကြမ်းကို ကြည့်ရှုစဉ် နေချည်သည် စကားလုံးတစ်လုံးမျှ ရှင်းပြရန်မလိုဘဲ မျဉ်းများ၏ ပုံသဏ္ဌာန်မှသာ သူမ၏ ခရီးစဉ်တစ်ခုလုံး၏ ဇာတ်လမ်းကို ပြောပြနိုင်ကြောင်း သဘောပေါက်ခဲ့သည် — မြန်ဆန်သော အစပိုင်း၊ လုံးဝ ရပ်တန့်ခြင်းနှင့် ထို့နောက် ကျောင်းသို့ နှေးကွေးစွာ တွားသွားခြင်းတို့ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did the flat section of Nay Chi's graph represent?",
            questionMy:
                "နေချည်၏ ဂရပ်ရှိ ပြင်ညီအပိုင်းသည် အဘယ်အရာကို ကိုယ်စားပြုခဲ့သနည်း။",
            optionsEn: [
              "The bus waiting at a red light, not moving",
              "The bus travelling at its fastest speed",
              "The bus reversing back the way it came",
              "A mistake in the GPS tracker",
            ],
            optionsMy: [
              "မီးနီတွင် ရပ်တန့်စောင့်ဆိုင်းနေသော၊ မရွေ့လျားသော ဘတ်စ်ကား",
              "အမြန်ဆုံးအမြန်နှုန်းဖြင့် ခရီးသွားနေသော ဘတ်စ်ကား",
              "လာခဲ့သောလမ်းအတိုင်း ပြန်လှည့်နေသော ဘတ်စ်ကား",
              "GPS ခြေရာခံစနစ်၏ အမှား",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why was the final section of the graph a gentler slope than the first section?",
            questionMy:
                "ဂရပ်၏ နောက်ဆုံးအပိုင်းသည် ပထမအပိုင်းထက် အဘယ်ကြောင့် ဖြည်းညင်းသော စောင်းချိန်ရှိခဲ့သနည်း။",
            optionsEn: [
              "Because the bus moved more slowly through heavy traffic near the school",
              "Because the bus was stationary for that whole section",
              "Because the bus travelled backwards",
              "Because the GPS tracker stopped working",
            ],
            optionsMy: [
              "ကျောင်းအနီးရှိ အသွားအလာကျပ်တည်းမှုကြောင့် ဘတ်စ်ကားသည် ပိုနှေးစွာ သွားခဲ့ရသောကြောင့်",
              "ဘတ်စ်ကားသည် ထိုအပိုင်းတစ်ခုလုံးအတွက် ရပ်တန့်နေခဲ့သောကြောင့်",
              "ဘတ်စ်ကားသည် နောက်ပြန်ခရီးသွားခဲ့သောကြောင့်",
              "GPS ခြေရာခံစနစ် အလုပ်မလုပ်တော့သောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How long did the bus wait at the red light?",
            questionMy: "ဘတ်စ်ကားသည် မီးနီတွင် မည်မျှကြာစောင့်ဆိုင်းခဲ့သနည်း။",
            optionsEn: [
              "Nearly five minutes",
              "Ten minutes",
              "Fifteen minutes",
              "It did not stop at all",
            ],
            optionsMy: [
              "ငါးမိနစ်နီးပါး",
              "ဆယ်မိနစ်",
              "ဆယ့်ငါးမိနစ်",
              "လုံးဝ မရပ်ခဲ့ချေ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Nay Chi conclude she could do just by looking at the shape of a distance-time graph?",
            questionMy:
                "အကွာအဝေး-အချိန် ဂရပ်၏ ပုံသဏ္ဌာန်ကိုသာ ကြည့်ရှုခြင်းဖြင့် မိမိအဘယ်အရာ ပြုလုပ်နိုင်ကြောင်း နေချည် ကောက်ချက်ချခဲ့သနည်း။",
            optionsEn: [
              "Tell the whole story of a journey without needing written description",
              "Calculate the exact fuel used by the bus",
              "Know the bus driver's name",
              "Determine the weather during the journey",
            ],
            optionsMy: [
              "ရေးသားရှင်းပြရန် မလိုဘဲ ခရီးစဉ်တစ်ခု၏ ဇာတ်လမ်းတစ်ခုလုံးကို ပြောပြနိုင်ခြင်း",
              "ဘတ်စ်ကား သုံးစွဲခဲ့သော လောင်စာ အတိအကျကို တွက်ချက်ခြင်း",
              "ဘတ်စ်ကားမောင်းသူ၏ အမည်ကို သိရှိခြင်း",
              "ခရီးစဉ်အတွင်း ရာသီဥတုကို ဆုံးဖြတ်ခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w34-d5",
      dayNumber: 5,
      titleEn: "Distance-Time Graphs Recap Quiz",
      titleMy: "အကွာအဝေး-အချိန် ဂရပ်များ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "On a distance-time graph, the slope of the line represents...",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်တွင် မျဉ်း၏ စောင်းချိန်သည် အဘယ်အရာကို ကိုယ်စားပြုသနည်း...",
          optionsEn: ["Speed", "Mass", "Time only", "Colour"],
          optionsMy: ["အမြန်နှုန်း", "ဒြပ်ထု", "အချိန်တစ်ခုတည်း", "အရောင်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A flat, horizontal line on a distance-time graph means the object is...",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်ပေါ်ရှိ ပြင်ညီသော ရေပြင်ညီမျဉ်းသည် အရာဝတ္ထု အဘယ်အခြေအနေတွင် ရှိနေကြောင်း ဆိုလိုသနည်း...",
          optionsEn: [
            "Stationary (not moving)",
            "Moving at top speed",
            "Accelerating quickly",
            "Moving backwards",
          ],
          optionsMy: [
            "ရပ်တန့်နေသည် (မရွေ့လျားချေ)",
            "အမြန်ဆုံးအမြန်နှုန်းဖြင့် ရွေ့လျားနေသည်",
            "လျင်မြန်စွာ အရှိန်မြှင့်နေသည်",
            "နောက်ပြန် ရွေ့လျားနေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "If Line A is steeper than Line B on the same distance-time graph, the object in Line A is...",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်တစ်ခုတည်းပေါ်တွင် မျဉ်း A သည် မျဉ်း B ထက် စောင်းချိန်ပိုများပါက မျဉ်း A ၏ အရာဝတ္ထုသည် အဘယ်အရာဖြစ်သနည်း...",
          optionsEn: [
            "Travelling faster",
            "Travelling slower",
            "Not moving at all",
            "Travelling the same speed as Line B",
          ],
          optionsMy: [
            "ပိုမြန်စွာ ခရီးသွားနေသည်",
            "ပိုနှေးစွာ ခရီးသွားနေသည်",
            "လုံးဝ မရွေ့လျားချေ",
            "မျဉ်း B နှင့် အမြန်နှုန်းတူညီစွာ ခရီးသွားနေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A line on a distance-time graph rises steadily from 0 to 100 metres in 20 seconds. What is the speed?",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်ပေါ်ရှိ မျဉ်းတစ်ခုသည် ၂၀ စက္ကန့်အတွင်း ၀ မှ ၁၀၀ မီတာအထိ တည်ငြိမ်စွာ မြင့်တက်သည်။ အမြန်နှုန်းမှာ အဘယ်နည်း။",
          optionsEn: ["5 m/s", "20 m/s", "100 m/s", "2000 m/s"],
          optionsMy: ["5 m/s", "20 m/s", "100 m/s", "2000 m/s"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's bus journey story, what caused the flat section on her graph?",
          questionMy:
              "နေချည်၏ ဘတ်စ်ကားခရီးစဉ်ဇာတ်လမ်းတွင် ၎င်း၏ ဂရပ်ပေါ်ရှိ ပြင်ညီအပိုင်းကို အဘယ်အရာက ဖြစ်စေခဲ့သနည်း။",
          optionsEn: [
            "The bus waiting at a red light",
            "The bus travelling at its fastest speed",
            "A malfunction in the GPS tracker",
            "The bus travelling backwards",
          ],
          optionsMy: [
            "ဘတ်စ်ကား မီးနီတွင် ရပ်တန့်စောင့်ဆိုင်းနေခြင်း",
            "ဘတ်စ်ကား အမြန်ဆုံးအမြန်နှုန်းဖြင့် ခရီးသွားနေခြင်း",
            "GPS ခြေရာခံစနစ် ချို့ယွင်းခြင်း",
            "ဘတ်စ်ကား နောက်ပြန် ခရီးသွားနေခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2ScienceWeek35 = CourseWeekDef(
  id: "course-secondary2-science-w35",
  weekNumber: 35,
  titleEn: "Year 8 Science Review",
  titleMy: "Year 8 သိပ္ပံ ပြန်လည်သုံးသပ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-science-w35-d1",
      dayNumber: 1,
      titleEn: "Whole-Year Recap Quiz",
      titleMy: "တစ်နှစ်တာလုံး ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What three things do plants need to carry out photosynthesis?",
          questionMy:
              "အပင်များသည် အလင်းမှီစုဖွဲ့ခြင်း ပြုလုပ်ရန် လိုအပ်သော အချက်သုံးချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Light, water, and carbon dioxide",
            "Soil, oxygen, and darkness",
            "Fertiliser, wind, and heat only",
            "Light, oxygen, and sugar",
          ],
          optionsMy: [
            "အလင်းရောင်၊ ရေနှင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ်",
            "မြေဆီလွှာ၊ အောက်ဆီဂျင်နှင့် မှောင်ခြင်း",
            "မြေသြဇာ၊ လေနှင့် အပူသာ",
            "အလင်းရောင်၊ အောက်ဆီဂျင်နှင့် သကြား",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think back to the very first term of Year 8 Science — what raw materials do leaves take in to make food?",
            "Chlorophyll captures light energy, which is used along with two raw materials absorbed by roots and leaves to build sugar.",
          ],
          hintsMy: [
            "Year 8 သိပ္ပံ ပထမနှစ်ဝက်ကို ပြန်သတိရပါ — အရွက်များသည် အစာဖန်တီးရန် မည်သည့် ကုန်ကြမ်းများကို စုပ်ယူသနည်း။",
            "ကလိုရိုဖေါ်သည် အလင်းစွမ်းအင်ကို ဖမ်းယူပြီး အမြစ်နှင့် အရွက်များမှ စုပ်ယူသော ကုန်ကြမ်းနှစ်မျိုးနှင့်အတူ သကြားဖန်တီးရန် အသုံးပြုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which of these metals is the most reactive?",
          questionMy:
              "အောက်ပါသတ္တုများအနက် အဓာတ်ပြုနိုင်ဆုံးမှာ အဘယ်သတ္တုနည်း။",
          optionsEn: ["Sodium", "Iron", "Gold", "Copper"],
          optionsMy: ["ဆိုဒီယမ်", "သံ", "ရွှေ", "ကြေးနီ"],
          correctIndex: 0,
          hintsEn: [
            "Recall the reactivity series order from an earlier term — which metal reacts violently even with cold water?",
            "This metal is so reactive it must be stored under oil to prevent it reacting with moisture in the air.",
          ],
          hintsMy: [
            "ယခင်စာသင်ချိန်တစ်ခုမှ ဓာတ်ပြုနိုင်စွမ်းအစဉ်ကို သတိရပါ — မည်သည့်သတ္တုသည် အေးသောရေနှင့်ပင် ပြင်းထန်စွာ ဓာတ်ပြုသနည်း။",
            "ဤသတ္တုသည် လေထဲရှိ စိုထိုင်းဆနှင့် ဓာတ်ပြုမှုမှ ကာကွယ်ရန် ဆီအောက်တွင် သိမ်းဆည်းထားရမည့်အတိုင်း ဓာတ်ပြုနိုင်စွမ်းမြင့်မားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "An object floats in water because its density is...",
          questionMy:
              "အရာဝတ္ထုတစ်ခုသည် ရေပေါ်ပေါ်နေသည်မှာ ၎င်း၏ သိပ်သည်းဆကြောင့် အဘယ်ကြောင့်နည်း...",
          optionsEn: [
            "Less than the density of water",
            "Greater than the density of water",
            "Exactly equal to zero",
            "Unrelated to whether it floats",
          ],
          optionsMy: [
            "ရေ၏ သိပ်သည်းဆထက် နည်းသောကြောင့်",
            "ရေ၏ သိပ်သည်းဆထက် များသောကြောင့်",
            "အတိအကျ သုညနှင့် ညီသောကြောင့်",
            "ပေါ်၊ နစ်မည်သင့်မသင့်နှင့် မသက်ဆိုင်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think back to the density term — compare the object's density directly with the density of the liquid it's placed in.",
            "If something is 'lighter' relative to its size than water is, it will rise to the surface.",
          ],
          hintsMy: [
            "သိပ်သည်းဆ စာသင်ချိန်ကို ပြန်သတိရပါ — အရာဝတ္ထု၏ သိပ်သည်းဆကို ၎င်းရှိနေသောအရည်၏ သိပ်သည်းဆနှင့် တိုက်ရိုက် နှိုင်းယှဉ်ပါ။",
            "တစ်စုံတစ်ခုသည် ၎င်း၏ အရွယ်အစားနှင့် နှိုင်းယှဉ်ပါက ရေထက် 'ပေါ့' ပါက ၎င်းသည် မျက်နှာပြင်ပေါ်သို့ မျောတက်လာမည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Convection is the transfer of heat through the movement of...",
          questionMy:
              "အပူစီးဆင်းခြင်း (Convection) သည် အဘယ်အရာ၏ ရွေ့လျားမှုမှတဆင့် အပူကူးပြောင်းခြင်းဖြစ်သနည်း...",
          optionsEn: [
            "Liquids and gases (fluids)",
            "Solids only",
            "A vacuum with no matter at all",
            "Light waves only",
          ],
          optionsMy: [
            "အရည်နှင့် ဓာတ်ငွေ့များ (fluids)",
            "အခဲပစ္စည်းများသာ",
            "ပစ္စည်းလုံးဝ မရှိသော ဗက်ကျူးမ်",
            "အလင်းလှိုင်းများသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall the thermal energy transfer term — this method of heat transfer requires particles that can actually flow and circulate, unlike a solid.",
            "Warm fluid rises while cooler fluid sinks, creating a circulating current that carries heat.",
          ],
          hintsMy: [
            "အပူစွမ်းအင် ကူးပြောင်းခြင်း စာသင်ချိန်ကို သတိရပါ — ဤအပူကူးပြောင်းနည်းလမ်းသည် အခဲနှင့်မတူဘဲ စီးဆင်း လှည့်ပတ်နိုင်သော အနုမြူများ လိုအပ်သည်။",
            "နွေးထွေးသောအရည် သို့မဟုတ် ဓာတ်ငွေ့သည် အထက်သို့ တက်ပြီး အေးမြသောအရည် သို့မဟုတ် ဓာတ်ငွေ့သည် အောက်သို့ ကျဆင်းကာ အပူကို သယ်ဆောင်သော လှည့်ပတ်စီးဆင်းမှုကို ဖန်တီးသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w35-d2",
      dayNumber: 2,
      titleEn: "Whole-Year Vocabulary",
      titleMy: "တစ်နှစ်တာလုံး ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2s-w35-dm1",
          termEn: "Photosynthesis",
          termMy: "အလင်းမှီစုဖွဲ့ခြင်း (Photosynthesis)",
          matchEn:
              "The process plants use to make food from light, water, and carbon dioxide",
          matchMy:
              "အပင်များ အလင်းရောင်၊ ရေနှင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ်တို့မှ အစာဖန်တီးရန် အသုံးပြုသော ဖြစ်စဉ်",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2s-w35-dm2",
          termEn: "Conservation of Mass",
          termMy: "ဒြပ်ထု တည်မြဲမှု နိယာမ (Conservation of Mass)",
          matchEn:
              "The rule that mass is neither created nor destroyed in a chemical reaction",
          matchMy:
              "ဓာတုဓာတ်ပြုမှုတစ်ခုတွင် ဒြပ်ထုကို ဖန်တီး၍၊ ဖျက်ဆီး၍ မရနိုင်ကြောင်း နိယာမ",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2s-w35-dm3",
          termEn: "Density",
          termMy: "သိပ်သည်းဆ (Density)",
          matchEn:
              "Mass per unit volume, which determines whether an object floats or sinks",
          matchMy:
              "ထုထည်တစ်ခုလျှင် ဒြပ်ထု၊ အရာဝတ္ထုတစ်ခု ပေါ်နေမည်၊ နစ်မြုပ်မည်ကို ဆုံးဖြတ်ပေးသည်",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2s-w35-dm4",
          termEn: "Reactivity Series",
          termMy: "ဓာတ်ပြုနိုင်စွမ်းအစဉ် (Reactivity Series)",
          matchEn: "An order of metals ranked from most to least reactive",
          matchMy:
              "သတ္တုများကို ဓာတ်ပြုနိုင်စွမ်း အများဆုံးမှ အနည်းဆုံးအထိ စီရင်ထားသော အစဉ်",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2s-w35-dm5",
          termEn: "Thermal Conduction",
          termMy: "အပူ လျှောက်ကူးခြင်း (Thermal Conduction)",
          matchEn:
              "Heat transfer through direct contact between particles, mainly in solids",
          matchMy:
              "အနုမြူများကြား တိုက်ရိုက်ထိတွေ့မှုမှတဆင့် အပူကူးပြောင်းခြင်း၊ အဓိကအားဖြင့် အခဲပစ္စည်းများတွင်",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2s-w35-dm6",
          termEn: "Carbon Cycle",
          termMy: "ကာဗွန် သံသရာ (Carbon Cycle)",
          matchEn:
              "The continuous movement of carbon between the atmosphere, oceans, and living things",
          matchMy:
              "လေထု၊ သမုဒ္ဒရာနှင့် သက်ရှိများအကြား ကာဗွန်ဓာတ် စဉ်ဆက်မပြတ် လည်ပတ်သွားလာမှု",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w35-d3",
      dayNumber: 3,
      titleEn: "Sorting Biology or Chemistry and Physics",
      titleMy: "ဇီဝဗေဒ သို့မဟုတ် ဓာတုဗေဒနှင့် ရူပဗေဒကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Biology", "Chemistry and Physics"],
        bucketsMy: ["ဇီဝဗေဒ", "ဓာတုဗေဒနှင့် ရူပဗေဒ"],
        items: [
          SortingItem(
            id: "s2s-w35-sort1",
            labelEn: "Photosynthesis making food in leaves",
            labelMy: "အရွက်များတွင် အစာဖန်တီးပေးသော အလင်းမှီစုဖွဲ့ခြင်း",
            correctBucketEn: "Biology",
            correctBucketMy: "ဇီဝဗေဒ",
          ),
          SortingItem(
            id: "s2s-w35-sort2",
            labelEn: "Blood carrying oxygen around the body",
            labelMy:
                "ခန္ဓာကိုယ်တစ်ခုလုံးသို့ အောက်ဆီဂျင်ကို သယ်ဆောင်ပေးသော သွေး",
            correctBucketEn: "Biology",
            correctBucketMy: "ဇီဝဗေဒ",
          ),
          SortingItem(
            id: "s2s-w35-sort3",
            labelEn: "Animals adapting to survive in harsh environments",
            labelMy:
                "ပြင်းထန်သောပတ်ဝန်းကျင်များတွင် ရှင်သန်ရန် လိုက်လျောညီထွေဖြစ်နေသော တိရစ္ဆာန်များ",
            correctBucketEn: "Biology",
            correctBucketMy: "ဇီဝဗေဒ",
          ),
          SortingItem(
            id: "s2s-w35-sort4",
            labelEn: "Predator-prey population cycles",
            labelMy: "သားကောင်-သားရဲ သက်ရှိအရေအတွက် သံသရာများ",
            correctBucketEn: "Biology",
            correctBucketMy: "ဇီဝဗေဒ",
          ),
          SortingItem(
            id: "s2s-w35-sort5",
            labelEn: "Combustion needing oxygen to burn fuel",
            labelMy: "လောင်စာကို လောင်ကျွမ်းစေရန် အောက်ဆီဂျင် လိုအပ်ခြင်း",
            correctBucketEn: "Chemistry and Physics",
            correctBucketMy: "ဓာတုဗေဒနှင့် ရူပဗေဒ",
          ),
          SortingItem(
            id: "s2s-w35-sort6",
            labelEn: "Metals displacing each other in reactions",
            labelMy:
                "ဓာတ်ပြုမှုများတွင် သတ္တုများ တစ်ခုနှင့်တစ်ခု နေရာဝင်ယူခြင်း",
            correctBucketEn: "Chemistry and Physics",
            correctBucketMy: "ဓာတုဗေဒနှင့် ရူပဗေဒ",
          ),
          SortingItem(
            id: "s2s-w35-sort7",
            labelEn: "Density determining whether an object floats or sinks",
            labelMy:
                "အရာဝတ္ထုတစ်ခု ပေါ်နေမည်၊ နစ်မြုပ်မည်ကို ဆုံးဖြတ်ပေးသော သိပ်သည်းဆ",
            correctBucketEn: "Chemistry and Physics",
            correctBucketMy: "ဓာတုဗေဒနှင့် ရူပဗေဒ",
          ),
          SortingItem(
            id: "s2s-w35-sort8",
            labelEn: "Insulators reducing heat loss",
            labelMy: "အပူဆုံးရှုံးမှုကို လျှော့ချပေးသော အပူကာပစ္စည်းများ",
            correctBucketEn: "Chemistry and Physics",
            correctBucketMy: "ဓာတုဗေဒနှင့် ရူပဗေဒ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w35-d4",
      dayNumber: 4,
      titleEn: "Reading: Mya's Year of Science Notes",
      titleMy: "စာဖတ်ခြင်း — မြ၏ တစ်နှစ်တာ သိပ္ပံမှတ်စုများ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Mya's Year of Science Notes",
        titleMy: "မြ၏ တစ်နှစ်တာ သိပ္ပံမှတ်စုများ",
        passageEn:
            "With the final science exam approaching, Mya spread her notebook open across her desk and began flipping through an entire year of notes, page by page. Near the beginning, she found her sketches of leaf cross-sections and the equation for photosynthesis, reminding her how plants convert light into food. A few pages later, she rediscovered her balanced word equations from the chemistry unit, alongside notes on why mass is always conserved in a reaction. Further on, she found the density calculations that had helped her explain why a heavy steel ship still floats. Flipping past her human biology diagrams of the heart and lungs, she reached the section on metals, where her table ranked reactive metals from sodium down to gold. Near the middle of the year, colourful diagrams of energy transfer and insulation reminded her of the thermos she had designed to keep soup hot for hours. Closer to the end, her notes on adaptation, food chains, and population cycles brought back memories of the class's field trip with quadrats. Finally, she reached her most recent pages on the carbon cycle and climate change. Looking at everything spread before her, Mya realised how much the different topics connected to each other, and she felt ready and confident for whatever the review quiz would ask.",
        passageMy:
            "နောက်ဆုံး သိပ္ပံစာမေးပွဲ နီးကပ်လာသောကြောင့် မြသည် သူမ၏ မှတ်စုစာအုပ်ကို စားပွဲပေါ်တွင် ဖြန့်ချထားပြီး တစ်နှစ်တာလုံး မှတ်စုများကို စာမျက်နှာတစ်ခုပြီးတစ်ခု လှန်ကြည့်ခဲ့သည်။ အစောပိုင်းတွင် သူမသည် အရွက်ဖြတ်ပိုင်းများ၏ ပုံများနှင့် အလင်းမှီစုဖွဲ့ခြင်း ညီမျှခြင်းကို တွေ့ရှိပြီး အပင်များသည် အလင်းရောင်ကို အစာအဖြစ် မည်သို့ပြောင်းလဲကြောင်း ပြန်သတိရစေခဲ့သည်။ စာမျက်နှာအနည်းငယ် နောက်ပိုင်းတွင် ဓာတုဗေဒယူနစ်မှ ဟန်ချက်ညီသော စကားလုံးညီမျှခြင်းများနှင့် ဓာတ်ပြုမှုတစ်ခုတွင် ဒြပ်ထုသည် အမြဲတမ်း တည်မြဲကြောင်း မှတ်စုများကို ပြန်တွေ့ခဲ့သည်။ ရှေ့ဆက်ကြည့်ရှုသောအခါ သံမဏိသင်္ဘောကြီးတစ်စင်း ရေပေါ်ပေါ်နေရသည့်အကြောင်းကို ရှင်းပြရန် ကူညီခဲ့သော သိပ်သည်းဆတွက်ချက်မှုများကို တွေ့ရှိခဲ့သည်။ နှလုံးနှင့် အဆုတ်ပုံများကို လှန်ဖတ်ပြီးနောက် သတ္တုများအပိုင်းသို့ ရောက်ခဲ့ပြီး သူမ၏ ဇယားတွင် ဆိုဒီယမ်မှ ရွှေအထိ ဓာတ်ပြုနိုင်စွမ်းရှိသော သတ္တုများကို အစဉ်လိုက် ဖော်ပြထားသည်။ နှစ်၏ အလယ်ပိုင်းအနီးတွင် စွမ်းအင်ကူးပြောင်းမှုနှင့် အပူကာကွယ်မှု၏ အရောင်စုံပုံများသည် သူမ ဒီဇိုင်းဆွဲခဲ့သော ဟင်းချိုကို နာရီအတော်ကြာ ပူနွေးထားနိုင်သော အပူထိန်းဗူးကို ပြန်သတိရစေခဲ့သည်။ အဆုံးနှင့်ပိုနီးသောနေရာတွင် လိုက်လျောညီထွေဖြစ်ခြင်း၊ အစားအစာကွင်းဆက်များနှင့် သက်ရှိအရေအတွက် သံသရာများအကြောင်း မှတ်စုများသည် ကွက်လပ်များသုံးသော အတန်း၏ ကွင်းဆင်းလေ့လာမှုခရီးကို ပြန်သတိရစေခဲ့သည်။ နောက်ဆုံးတွင် သူမသည် ကာဗွန်သံသရာနှင့် ရာသီဥတုပြောင်းလဲမှုအကြောင်း လတ်တလောစာမျက်နှာများသို့ ရောက်ရှိခဲ့သည်။ သူမ၏ ရှေ့တွင် ဖြန့်ချထားသောအရာအားလုံးကို ကြည့်ရှုစဉ် ဘာသာရပ်အမျိုးမျိုးသည် တစ်ခုနှင့်တစ်ခု မည်မျှဆက်စပ်နေကြောင်း မြသည် သဘောပေါက်ခဲ့ပြီး ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိက မည်သည့်မေးခွန်းမေးမည်ဖြစ်စေ အသင့်ဖြစ်ပြီး ယုံကြည်မှုရှိလာခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did Mya's notes near the beginning of the notebook remind her about?",
            questionMy:
                "မြ၏ မှတ်စုစာအုပ် အစောပိုင်းရှိ မှတ်စုများသည် သူမအား အဘယ်အကြောင်းကို ပြန်သတိရစေခဲ့သနည်း။",
            optionsEn: [
              "How plants convert light into food through photosynthesis",
              "How to build a hydraulic machine",
              "The reactivity of metals",
              "The greenhouse effect",
            ],
            optionsMy: [
              "အပင်များသည် အလင်းမှီစုဖွဲ့ခြင်းမှတဆင့် အလင်းရောင်ကို အစာအဖြစ် မည်သို့ပြောင်းလဲကြောင်း",
              "ဟိုက်ဒရောလစ် စက်ကို မည်သို့တည်ဆောက်ရမည်ကြောင်း",
              "သတ္တုများ၏ ဓာတ်ပြုနိုင်စွမ်း",
              "ဖန်လုံအိမ် အာနိသင်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Mya's density calculations help explain?",
            questionMy:
                "မြ၏ သိပ်သည်းဆတွက်ချက်မှုများသည် အဘယ်အရာကို ရှင်းပြရန် ကူညီပေးခဲ့သနည်း။",
            optionsEn: [
              "Why a heavy steel ship still floats on water",
              "Why metals rust over time",
              "Why plants need sunlight",
              "Why gases expand when heated",
            ],
            optionsMy: [
              "အလေးချိန်များသော သံမဏိသင်္ဘောကြီးတစ်စင်း ရေပေါ်ပေါ်နေရသည့်အကြောင်း",
              "သတ္တုများသည် အချိန်ကြာလာသည်နှင့်အမျှ ချေးရသည့်အကြောင်း",
              "အပင်များသည် နေရောင်ခြည်လိုအပ်ခြင်း၏ အကြောင်း",
              "ဓာတ်ငွေ့များသည် အပူပေးလိုက်သောအခါ ချဲ့ထွင်ခြင်း၏ အကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What real project did the energy transfer and insulation notes remind Mya of?",
            questionMy:
                "စွမ်းအင်ကူးပြောင်းမှုနှင့် အပူကာကွယ်မှု မှတ်စုများသည် မြအား မည်သည့် လက်တွေ့ပရောဂျက်ကို ပြန်သတိရစေခဲ့သနည်း။",
            optionsEn: [
              "The thermos she designed to keep soup hot for hours",
              "The hydraulic machine she built",
              "The field study using quadrats",
              "The environmental summit debate",
            ],
            optionsMy: [
              "ဟင်းချိုကို နာရီအတော်ကြာ ပူနွေးထားနိုင်ရန် သူမ ဒီဇိုင်းဆွဲခဲ့သော အပူထိန်းဗူး",
              "သူမ တည်ဆောက်ခဲ့သော ဟိုက်ဒရောလစ် စက်",
              "ကွက်လပ်များသုံး၍ ပြုလုပ်ခဲ့သော ကွင်းဆင်းလေ့လာမှု",
              "သဘာဝပတ်ဝန်းကျင်ဆိုင်ရာ ညီလာခံ ဆွေးနွေးပွဲ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What was near the very end of Mya's notebook?",
            questionMy: "မြ၏ မှတ်စုစာအုပ် အဆုံးအနီးတွင် အဘယ်အရာ ရှိခဲ့သနည်း။",
            optionsEn: [
              "The carbon cycle and climate change",
              "Photosynthesis and leaf structure",
              "The reactivity series of metals",
              "Blood and circulation",
            ],
            optionsMy: [
              "ကာဗွန်သံသရာနှင့် ရာသီဥတုပြောင်းလဲမှု",
              "အလင်းမှီစုဖွဲ့ခြင်းနှင့် အရွက်ဖွဲ့စည်းပုံ",
              "သတ္တုများ၏ ဓာတ်ပြုနိုင်စွမ်းအစဉ်",
              "သွေးနှင့် သွေးလှည့်ပတ်မှုစနစ်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w35-d5",
      dayNumber: 5,
      titleEn: "Year 8 Science Review Recap Quiz",
      titleMy: "Year 8 သိပ္ပံ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Plants use photosynthesis to convert light energy into...",
          questionMy:
              "အပင်များသည် အလင်းစွမ်းအင်ကို အဘယ်အရာအဖြစ် ပြောင်းလဲရန် အလင်းမှီစုဖွဲ့ခြင်းကို အသုံးပြုသနည်း...",
          optionsEn: [
            "Stored chemical energy (food) in plants",
            "Sound energy",
            "Electrical energy",
            "Nuclear energy",
          ],
          optionsMy: [
            "အပင်များတွင် သိုလှောင်ထားသော ဓာတုစွမ်းအင် (အစာ)",
            "အသံစွမ်းအင်",
            "လျှပ်စစ်စွမ်းအင်",
            "နျူကလီးယားစွမ်းအင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In a chemical reaction, the total mass of reactants and products...",
          questionMy:
              "ဓာတ်ပြုမှုတစ်ခုတွင် ဓာတ်ပြုပစ္စည်းများနှင့် ရလဒ်ပစ္စည်းများ၏ စုစုပေါင်း ဒြပ်ထုသည်...",
          optionsEn: [
            "Stays the same (is conserved)",
            "Always increases",
            "Always decreases",
            "Becomes zero",
          ],
          optionsMy: [
            "မပြောင်းလဲဘဲ တည်မြဲနေသည် (conserved ဖြစ်သည်)",
            "အမြဲတမ်း တိုးလာသည်",
            "အမြဲတမ်း လျော့နည်းသည်",
            "သုညဖြစ်သွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An object sinks in water because its density is...",
          questionMy:
              "အရာဝတ္ထုတစ်ခုသည် ရေထဲနစ်မြုပ်သွားသည်မှာ ၎င်း၏ သိပ်သည်းဆကြောင့် အဘယ်ကြောင့်နည်း...",
          optionsEn: [
            "Greater than the density of water",
            "Less than the density of water",
            "Exactly equal to the density of water",
            "Unrelated to whether it sinks",
          ],
          optionsMy: [
            "ရေ၏ သိပ်သည်းဆထက် များသောကြောင့်",
            "ရေ၏ သိပ်သည်းဆထက် နည်းသောကြောင့်",
            "ရေ၏ သိပ်သည်းဆနှင့် အတိအကျ ညီသောကြောင့်",
            "နစ်မြုပ်မည်သင့်မသင့်နှင့် မသက်ဆိုင်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What might happen to a predator population if its prey population crashes?",
          questionMy:
              "သားရဲအရေအတွက်၏ သားကောင်အရေအတွက် ပြိုကျသွားပါက သားရဲအရေအတွက်တွင် အဘယ်အရာ ဖြစ်လာနိုင်သနည်း။",
          optionsEn: [
            "The predator population may decrease due to food shortage",
            "The predator population always increases immediately",
            "There is no connection between the two populations",
            "The predators switch permanently to eating only plants",
          ],
          optionsMy: [
            "အစားအစာ ရှားပါးမှုကြောင့် သားရဲအရေအတွက် ကျဆင်းနိုင်သည်",
            "သားရဲအရေအတွက် ချက်ချင်း သေချာစွာ တိုးလာမည်ဖြစ်သည်",
            "သက်ရှိအရေအတွက်နှစ်ခုကြား ဆက်စပ်မှု မရှိချေ",
            "သားရဲများသည် အပင်များကိုသာ အမြဲတမ်း ပြောင်းလဲစားသုံးလာသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Mya's story, what did she realise while reviewing her science notebook?",
          questionMy:
              "မြ၏ ဇာတ်လမ်းတွင် သူမ၏ သိပ္ပံမှတ်စုစာအုပ်ကို ပြန်လည်သုံးသပ်နေစဉ် သူမ အဘယ်အရာကို သဘောပေါက်ခဲ့သနည်း။",
          optionsEn: [
            "That the different science topics all connected to each other",
            "That she had forgotten everything from the entire year",
            "That photosynthesis was the only topic worth remembering",
            "That her notebook was missing several important pages",
          ],
          optionsMy: [
            "သိပ္ပံဘာသာရပ် အမျိုးမျိုးသည် တစ်ခုနှင့်တစ်ခု ဆက်စပ်နေကြောင်း",
            "တစ်နှစ်တာလုံးမှ အားလုံးကို မေ့လျော့သွားကြောင်း",
            "အလင်းမှီစုဖွဲ့ခြင်းသာ မှတ်မိထိုက်သော ဘာသာရပ်တစ်ခုတည်းဖြစ်ကြောင်း",
            "သူမ၏ မှတ်စုစာအုပ်တွင် အရေးကြီးသောစာမျက်နှာများစွာ ပျောက်ဆုံးနေကြောင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2ScienceWeek36 = CourseWeekDef(
  id: "course-secondary2-science-w36",
  weekNumber: 36,
  titleEn: "Science Investigation Project",
  titleMy: "သိပ္ပံ စူးစမ်းလေ့လာမှု ပရောဂျက်",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-science-w36-d1",
      dayNumber: 1,
      titleEn: "Hypothesis and Fair Testing",
      titleMy: "သုတေသနအခန်းစိတ်ချက်နှင့် တရားမျှတသောစမ်းသပ်မှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a hypothesis?",
          questionMy: "သုတေသနအခန်းစိတ်ချက် (Hypothesis) ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A testable prediction about what will happen in an experiment, often based on prior knowledge",
            "A definite fact that has already been proven true",
            "A random guess with no scientific reasoning behind it",
            "The final result of a completed experiment",
          ],
          optionsMy: [
            "ယခင်အသိပညာအပေါ် အခြေခံ၍ စမ်းသပ်မှုတစ်ခုတွင် အဘယ်အရာဖြစ်လာမည်ကို စမ်းသပ်နိုင်သော ခန့်မှန်းချက်",
            "အရင်ကတည်းက မှန်ကန်ကြောင်း သက်သေပြပြီးသား အတိအကျအချက်",
            "သိပ္ပံနည်းကျ ဆင်ခြင်တုံတရားလုံးဝ မပါဝင်သော ကျပန်းခန့်မှန်းချက်",
            "ပြီးစီးသွားသော စမ်းသပ်မှု၏ နောက်ဆုံးရလဒ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about the plant growth investigation from the very first term — before running the experiment, what did the scientist need to state first?",
            "A good hypothesis can actually be tested and shown to be either supported or not supported by data.",
          ],
          hintsMy: [
            "ပထမဆုံးစာသင်ချိန်မှ အပင်ကြီးထွားမှု စူးစမ်းလေ့လာမှုကို စဉ်းစားပါ — စမ်းသပ်မှု မလုပ်ဆောင်မီ သိပ္ပံပညာရှင်က ဦးစွာ အဘယ်အရာကို ဖော်ပြရန် လိုအပ်သနည်း။",
            "ကောင်းမွန်သော သုတေသနအခန်းစိတ်ချက်သည် အမှန်တကယ် စမ်းသပ်နိုင်ပြီး အချက်အလက်များက ထောက်ခံသည် သို့မဟုတ် ထောက်ခံမှုမပြုကြောင်း ပြသနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "In a fair test, what is the independent variable?",
          questionMy:
              "တရားမျှတသောစမ်းသပ်မှုတစ်ခုတွင် လွတ်လပ်သောကိန်းရှင် (Independent Variable) ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The one factor that the experimenter deliberately changes",
            "The factor that is measured as the result",
            "A factor that is kept exactly the same throughout",
            "A factor that has no effect on the experiment at all",
          ],
          optionsMy: [
            "စမ်းသပ်သူက တမင်တကာ ပြောင်းလဲသော အချက်တစ်ခုတည်း",
            "ရလဒ်အဖြစ် တိုင်းတာသော အချက်",
            "တစ်ခုလုံးအတွက် အတိအကျ တူညီအောင် ထိန်းထားသော အချက်",
            "စမ်းသပ်မှုအပေါ် လုံးဝ သက်ရောက်မှု မရှိသော အချက်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think back to the plant growth experiment — if you were testing different amounts of fertiliser, which factor would you be the one choosing to change?",
            "The independent variable is the 'cause' the experimenter controls, while the dependent variable is the 'effect' that gets measured.",
          ],
          hintsMy: [
            "အပင်ကြီးထွားမှု စမ်းသပ်ချက်ကို ပြန်သတိရပါ — မြေသြဇာ ပမာဏအမျိုးမျိုးကို စမ်းသပ်နေပါက မည်သည့်အချက်ကို ပြောင်းလဲရန် ရွေးချယ်မည်နည်း။",
            "လွတ်လပ်သောကိန်းရှင်သည် စမ်းသပ်သူ ထိန်းချုပ်သော 'အကြောင်း' ဖြစ်ပြီး မှီခိုကိန်းရှင်သည် တိုင်းတာသော 'အကျိုးဆက်' ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "In a fair test, what is a control variable?",
          questionMy:
              "တရားမျှတသောစမ်းသပ်မှုတစ်ခုတွင် ထိန်းချုပ်ကိန်းရှင် (Control Variable) ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A factor kept the same throughout the experiment so it doesn't affect the results",
            "The factor the experimenter deliberately changes",
            "The final measured outcome of the experiment",
            "A factor that is impossible to keep constant",
          ],
          optionsMy: [
            "ရလဒ်များအပေါ် သက်ရောက်မှု မရှိစေရန် စမ်းသပ်မှုတစ်ခုလုံးအတွက် တူညီအောင် ထိန်းထားသော အချက်",
            "စမ်းသပ်သူက တမင်တကာ ပြောင်းလဲသော အချက်",
            "စမ်းသပ်မှု၏ နောက်ဆုံးတိုင်းတာသောရလဒ်",
            "စဉ်ဆက်မပြတ် ထိန်းထားရန် မဖြစ်နိုင်သော အချက်",
          ],
          correctIndex: 0,
          hintsEn: [
            "If you were testing how fertiliser amount affects plant growth, what other factors (like light or water) would you need to keep identical for every plant?",
            "Keeping every other factor constant ensures that any difference in results is caused only by the one variable you changed on purpose.",
          ],
          hintsMy: [
            "မြေသြဇာပမာဏသည် အပင်ကြီးထွားမှုအပေါ် မည်သို့သက်ရောက်ကြောင်း စမ်းသပ်နေပါက အခြားအချက်များ (အလင်းရောင် သို့မဟုတ် ရေကဲ့သို့) ကို အပင်တိုင်းအတွက် အတူတူဖြစ်အောင် မည်သို့ထိန်းထားရမည်နည်း။",
            "အခြားအချက်တိုင်းကို စဉ်ဆက်မပြတ် ထိန်းထားခြင်းသည် ရလဒ်များတွင် ကွာခြားချက်သည် တမင်ပြောင်းလဲထားသော ကိန်းရှင်တစ်ခုတည်းကြောင့်သာ ဖြစ်ကြောင်း သေချာစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why is it important to only change one variable at a time in an experiment?",
          questionMy:
              "စမ်းသပ်မှုတစ်ခုတွင် တစ်ကြိမ်လျှင် ကိန်းရှင်တစ်ခုတည်းကိုသာ ပြောင်းလဲရန် အဘယ်ကြောင့် အရေးကြီးသနည်း။",
          optionsEn: [
            "So you can be sure that any change in results is due to that one variable, not something else",
            "Because changing multiple variables always makes the experiment faster",
            "Because scientists are required to follow this rule with no actual reason",
            "Because it makes the experiment more difficult for no benefit",
          ],
          optionsMy: [
            "ရလဒ်များတွင် ပြောင်းလဲမှုမည်သည် ထိုကိန်းရှင်တစ်ခုတည်းကြောင့်သာ ဖြစ်ပြီး အခြားအရာကြောင့် မဟုတ်ကြောင်း သေချာစေရန်",
            "ကိန်းရှင်များစွာ ပြောင်းလဲခြင်းသည် စမ်းသပ်မှုကို အမြဲတမ်း ပိုမြန်စေသောကြောင့်",
            "သိပ္ပံပညာရှင်များသည် အမှန်တကယ် အကြောင်းရင်း မရှိဘဲ ဤစည်းမျဉ်းကို လိုက်နာရန် လိုအပ်သောကြောင့်",
            "၎င်းသည် အကျိုးအမြတ်မရှိဘဲ စမ်းသပ်မှုကို ပိုခက်ခဲစေသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "If you changed both the fertiliser amount and the amount of sunlight at the same time, could you tell which one caused a plant to grow taller?",
            "Isolating a single variable is what makes an experiment's conclusion reliable and trustworthy.",
          ],
          hintsMy: [
            "မြေသြဇာပမာဏနှင့် နေရောင်ခြည်ပမာဏကို တစ်ပြိုင်နက် ပြောင်းလဲပါက အပင်တစ်ပင် ပိုမိုမြင့်တက်ကြီးထွားရသည်မှာ မည်သည့်အချက်ကြောင့်ဖြစ်ကြောင်း သင် ဆုံးဖြတ်နိုင်ပါသလား။",
            "ကိန်းရှင်တစ်ခုတည်းကို ဖယ်ထုတ်ခြင်းသည် စမ်းသပ်မှု၏ ကောက်ချက်ကို ယုံကြည်စိတ်ချရအောင် ဖြစ်စေသည့် အချက်ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w36-d2",
      dayNumber: 2,
      titleEn: "Investigation Vocabulary",
      titleMy: "စူးစမ်းလေ့လာမှု ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2s-w36-dm1",
          termEn: "Hypothesis",
          termMy: "သုတေသနအခန်းစိတ်ချက် (Hypothesis)",
          matchEn:
              "A testable prediction about what will happen in an experiment",
          matchMy:
              "စမ်းသပ်မှုတစ်ခုတွင် အဘယ်အရာဖြစ်လာမည်ကို စမ်းသပ်နိုင်သော ခန့်မှန်းချက်",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2s-w36-dm2",
          termEn: "Independent Variable",
          termMy: "လွတ်လပ်သောကိန်းရှင် (Independent Variable)",
          matchEn: "The one factor the experimenter deliberately changes",
          matchMy: "စမ်းသပ်သူက တမင်တကာ ပြောင်းလဲသော အချက်တစ်ခုတည်း",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2s-w36-dm3",
          termEn: "Dependent Variable",
          termMy: "မှီခိုကိန်းရှင် (Dependent Variable)",
          matchEn:
              "The factor that is measured to see the effect of the change",
          matchMy:
              "ပြောင်းလဲမှု၏ အကျိုးသက်ရောက်မှုကို သိရှိရန် တိုင်းတာသော အချက်",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2s-w36-dm4",
          termEn: "Control Variable",
          termMy: "ထိန်းချုပ်ကိန်းရှင် (Control Variable)",
          matchEn:
              "A factor kept the same for every test so it does not affect the result",
          matchMy:
              "ရလဒ်ကို မထိခိုက်စေရန် စမ်းသပ်မှုတိုင်းအတွက် တူညီအောင် ထိန်းထားသော အချက်",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2s-w36-dm5",
          termEn: "Fair Test",
          termMy: "တရားမျှတသောစမ်းသပ်မှု (Fair Test)",
          matchEn:
              "An experiment where only one variable changes while all others are controlled",
          matchMy:
              "အခြားကိန်းရှင်အားလုံးကို ထိန်းချုပ်ထားစဉ် ကိန်းရှင်တစ်ခုတည်းသာ ပြောင်းလဲသော စမ်းသပ်မှု",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2s-w36-dm6",
          termEn: "Conclusion",
          termMy: "ကောက်ချက် (Conclusion)",
          matchEn:
              "A summary of what the results show, based on the evidence collected",
          matchMy:
              "စုဆောင်းရရှိသော သက်သေအထောက်အထားများအပေါ် အခြေခံ၍ ရလဒ်များက အဘယ်အရာပြသကြောင်း အနှစ်ချုပ်",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w36-d3",
      dayNumber: 3,
      titleEn: "Sorting Independent or Dependent Variables",
      titleMy: "လွတ်လပ်သော သို့မဟုတ် မှီခိုကိန်းရှင်များကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Independent Variable", "Dependent Variable"],
        bucketsMy: ["လွတ်လပ်သောကိန်းရှင်", "မှီခိုကိန်းရှင်"],
        items: [
          SortingItem(
            id: "s2s-w36-sort1",
            labelEn: "The amount of fertiliser given to a plant",
            labelMy: "အပင်တစ်ပင်ကို ပေးသော မြေသြဇာပမာဏ",
            correctBucketEn: "Independent Variable",
            correctBucketMy: "လွတ်လပ်သောကိန်းရှင်",
          ),
          SortingItem(
            id: "s2s-w36-sort2",
            labelEn: "The height the plant grows to",
            labelMy: "အပင် ကြီးထွားသည့် အမြင့်",
            correctBucketEn: "Dependent Variable",
            correctBucketMy: "မှီခိုကိန်းရှင်",
          ),
          SortingItem(
            id: "s2s-w36-sort3",
            labelEn: "The type of metal used in a reactivity test",
            labelMy:
                "ဓာတ်ပြုနိုင်စွမ်း စမ်းသပ်မှုတွင် အသုံးပြုသော သတ္တုအမျိုးအစား",
            correctBucketEn: "Independent Variable",
            correctBucketMy: "လွတ်လပ်သောကိန်းရှင်",
          ),
          SortingItem(
            id: "s2s-w36-sort4",
            labelEn: "How quickly bubbles form during the reaction",
            labelMy:
                "ဓာတ်ပြုမှုအတွင်း ပွက်များ မည်မျှမြန်ဆန်စွာ ပေါ်ပေါက်သနည်း",
            correctBucketEn: "Dependent Variable",
            correctBucketMy: "မှီခိုကိန်းရှင်",
          ),
          SortingItem(
            id: "s2s-w36-sort5",
            labelEn: "The temperature setting of a water bath",
            labelMy: "ရေချိုးကန်တစ်ခု၏ အပူချိန်သတ်မှတ်ချက်",
            correctBucketEn: "Independent Variable",
            correctBucketMy: "လွတ်လပ်သောကိန်းရှင်",
          ),
          SortingItem(
            id: "s2s-w36-sort6",
            labelEn: "The time it takes for ice to melt",
            labelMy: "ရေခဲ အရည်ပျော်ရန် ကြာချိန်",
            correctBucketEn: "Dependent Variable",
            correctBucketMy: "မှီခိုကိန်းရှင်",
          ),
          SortingItem(
            id: "s2s-w36-sort7",
            labelEn: "The amount of light a plant receives",
            labelMy: "အပင်တစ်ပင် ရရှိသော အလင်းရောင် ပမာဏ",
            correctBucketEn: "Independent Variable",
            correctBucketMy: "လွတ်လပ်သောကိန်းရှင်",
          ),
          SortingItem(
            id: "s2s-w36-sort8",
            labelEn: "The number of leaves a plant produces",
            labelMy: "အပင်တစ်ပင် ဖန်တီးသော အရွက်အရေအတွက်",
            correctBucketEn: "Dependent Variable",
            correctBucketMy: "မှီခိုကိန်းရှင်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w36-d4",
      dayNumber: 4,
      titleEn: "Reading: Aye Chan's Final Investigation",
      titleMy: "စာဖတ်ခြင်း — အေးချမ်း၏ နောက်ဆုံး စူးစမ်းလေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Aye Chan's Final Investigation",
        titleMy: "အေးချမ်း၏ နောက်ဆုံး စူးစမ်းလေ့လာမှု",
        passageEn:
            "As the final week of Year 8 Science arrived, Aye Chan realised she had one last task before completing the whole course: designing her very own scientific investigation from start to finish. She thought back to the very first project of the year, when her class had tested how different amounts of fertiliser affected plant growth, carefully keeping the light, water, and pot size identical for every plant. Inspired by that early fair test, Aye Chan decided to investigate a question of her own: did the colour of light affect how quickly seeds germinated? She wrote her hypothesis first, predicting that seeds exposed to red light would germinate faster than those under blue or white light, based on what she had read about plants absorbing certain wavelengths more efficiently. She identified her independent variable as the colour of light, her dependent variable as the number of days until germination, and her control variables as the amount of water, the temperature, and the type of seed, keeping every pot identical except for the light colour. Over two careful weeks, she recorded her results daily in a table. When she finally analysed her data, she found her red-light seeds had indeed germinated fastest, supporting her hypothesis. Writing her conclusion, Aye Chan felt proud: she had used every single skill from her whole year of Science, from forming a hypothesis to running a fair test, to complete her very own investigation.",
        passageMy:
            "Year 8 သိပ္ပံ၏ နောက်ဆုံးအပတ် ရောက်ရှိလာသောအခါ အေးချမ်းသည် သင်တန်းတစ်ခုလုံး ပြီးမြောက်ရန် နောက်ဆုံးလုပ်ငန်းတစ်ခု ကျန်ရှိသေးကြောင်း သဘောပေါက်ခဲ့သည် — သူမ ကိုယ်ပိုင် သိပ္ပံနည်းကျ စူးစမ်းလေ့လာမှုတစ်ခုကို အစအဆုံး ဒီဇိုင်းဆွဲရန်ဖြစ်သည်။ သူမသည် နှစ်၏ ပထမဆုံးပရောဂျက်ကို ပြန်သတိရခဲ့သည် — ထိုအချိန်က သူမ၏ အတန်းသည် မြေသြဇာ ပမာဏအမျိုးမျိုးက အပင်ကြီးထွားမှုအပေါ် မည်သို့သက်ရောက်ကြောင်း စမ်းသပ်ခဲ့ပြီး အပင်တိုင်းအတွက် အလင်းရောင်၊ ရေနှင့် အိုးအရွယ်အစားကို ဂရုတစိုက် တူညီအောင် ထိန်းထားခဲ့ကြသည်။ ထိုအစောပိုင်း တရားမျှတသောစမ်းသပ်မှုမှ လှုံ့ဆော်မှုရရှိပြီး အေးချမ်းသည် သူမကိုယ်ပိုင် မေးခွန်းတစ်ခုကို စူးစမ်းလေ့လာရန် ဆုံးဖြတ်ခဲ့သည် — အလင်းရောင်၏ အရောင်သည် မျိုးစေ့ပေါက်ဖွားနှုန်းအပေါ် သက်ရောက်မှုရှိပါသလား။ သူမသည် သူမ၏ သုတေသနအခန်းစိတ်ချက်ကို ဦးစွာရေးသားခဲ့ပြီး၊ အပင်များသည် လှိုင်းရှည်အချို့ကို ပိုမိုထိရောက်စွာ စုပ်ယူကြောင်း သူမ ဖတ်ရှုထားသည်အပေါ် အခြေခံ၍ အနီရောင်အလင်းရောင်ခံရသော မျိုးစေ့များသည် အပြာရောင် သို့မဟုတ် အဖြူရောင်အလင်းအောက်ရှိ မျိုးစေ့များထက် ပိုမြန်စွာ ပေါက်ဖွားလိမ့်မည်ဟု ခန့်မှန်းခဲ့သည်။ သူမသည် သူမ၏ လွတ်လပ်သောကိန်းရှင်ကို အလင်းရောင်၏ အရောင်၊ မှီခိုကိန်းရှင်ကို မျိုးစေ့ပေါက်ဖွားရန် ကြာသောရက်အရေအတွက်၊ ထိန်းချုပ်ကိန်းရှင်များကို ရေပမာဏ၊ အပူချိန်နှင့် မျိုးစေ့အမျိုးအစားအဖြစ် ဖော်ထုတ်ခဲ့ပြီး အိုးတိုင်းကို အလင်းရောင် အရောင်မှလွဲ၍ အားလုံး တူညီအောင် ထိန်းထားခဲ့သည်။ ဂရုတစိုက်ဖြစ်သော နှစ်ပတ်တာကာလအတွင်း သူမသည် ရလဒ်များကို ဇယားတစ်ခုတွင် နေ့စဉ် မှတ်တမ်းတင်ခဲ့သည်။ သူမ၏ အချက်အလက်များကို နောက်ဆုံး ခွဲခြမ်းစိတ်ဖြာသောအခါ သူမ၏ အနီရောင်အလင်း မျိုးစေ့များသည် အမှန်တကယ်ပင် အမြန်ဆုံးပေါက်ဖွားခဲ့ကြောင်း တွေ့ရှိပြီး သူမ၏ သုတေသနအခန်းစိတ်ချက်ကို ထောက်ခံခဲ့သည်။ သူမ၏ ကောက်ချက်ကို ရေးသားစဉ် အေးချမ်းသည် ဂုဏ်ယူမိခဲ့သည် — သူမသည် သုတေသနအခန်းစိတ်ချက် ဖော်ထုတ်ခြင်းမှ တရားမျှတသောစမ်းသပ်မှု လုပ်ဆောင်ခြင်းအထိ တစ်နှစ်တာ သိပ္ပံသင်ခန်းစာမှ ကျွမ်းကျင်မှုတိုင်းကို အသုံးပြု၍ သူမကိုယ်ပိုင် စူးစမ်းလေ့လာမှုကို ပြီးမြောက်အောင် လုပ်ဆောင်နိုင်ခဲ့ပြီဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What was Aye Chan's hypothesis about?",
            questionMy:
                "အေးချမ်း၏ သုတေသနအခန်းစိတ်ချက်သည် အဘယ်အကြောင်းအရာ ဖြစ်သနည်း။",
            optionsEn: [
              "That seeds exposed to red light would germinate faster than those under blue or white light",
              "That fertiliser amount affects plant height",
              "That metals react differently with acids",
              "That insulators reduce heat loss",
            ],
            optionsMy: [
              "အနီရောင်အလင်းရောင်ခံရသော မျိုးစေ့များသည် အပြာရောင် သို့မဟုတ် အဖြူရောင်အလင်းအောက်ရှိ မျိုးစေ့များထက် ပိုမြန်စွာ ပေါက်ဖွားလိမ့်မည်ဟူသော အကြောင်းအရာ",
              "မြေသြဇာပမာဏသည် အပင်၏ အမြင့်ကို သက်ရောက်စေသည်ဟူသော အကြောင်းအရာ",
              "သတ္တုများသည် အက်ဆစ်များနှင့် ကွဲပြားစွာ ဓာတ်ပြုသည်ဟူသော အကြောင်းအရာ",
              "အပူကာပစ္စည်းများသည် အပူဆုံးရှုံးမှုကို လျှော့ချပေးသည်ဟူသော အကြောင်းအရာ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What was Aye Chan's independent variable?",
            questionMy: "အေးချမ်း၏ လွတ်လပ်သောကိန်းရှင်မှာ အဘယ်နည်း။",
            optionsEn: [
              "The colour of light",
              "The number of days until germination",
              "The amount of water given",
              "The type of seed used",
            ],
            optionsMy: [
              "အလင်းရောင်၏ အရောင်",
              "မျိုးစေ့ပေါက်ဖွားရန် ကြာသောရက်အရေအတွက်",
              "ပေးသော ရေပမာဏ",
              "အသုံးပြုသော မျိုးစေ့အမျိုးအစား",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Which factors did Aye Chan keep as control variables?",
            questionMy:
                "အေးချမ်းသည် မည်သည့်အချက်များကို ထိန်းချုပ်ကိန်းရှင်များအဖြစ် ထိန်းထားခဲ့သနည်း။",
            optionsEn: [
              "The amount of water, the temperature, and the type of seed",
              "The colour of light and the number of days",
              "The size of the pot and the fertiliser type",
              "Nothing was kept the same",
            ],
            optionsMy: [
              "ရေပမာဏ၊ အပူချိန်နှင့် မျိုးစေ့အမျိုးအစား",
              "အလင်းရောင်၏ အရောင်နှင့် ရက်အရေအတွက်",
              "အိုး၏ အရွယ်အစားနှင့် မြေသြဇာအမျိုးအစား",
              "မည်သည့်အရာမျှ တူညီအောင် မထိန်းထားခဲ့ချေ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What earlier project from the very first term inspired Aye Chan's investigation?",
            questionMy:
                "ပထမဆုံးစာသင်ချိန်မှ မည်သည့် ယခင်ပရောဂျက်သည် အေးချမ်း၏ စူးစမ်းလေ့လာမှုကို လှုံ့ဆော်ပေးခဲ့သနည်း။",
            optionsEn: [
              "The fair test on how fertiliser amounts affected plant growth",
              "The hydraulic machine project",
              "The environmental summit debate",
              "The ecology field study with quadrats",
            ],
            optionsMy: [
              "မြေသြဇာပမာဏများက အပင်ကြီးထွားမှုအပေါ် မည်သို့သက်ရောက်ကြောင်း စမ်းသပ်ခဲ့သော တရားမျှတသောစမ်းသပ်မှု",
              "ဟိုက်ဒရောလစ် စက် ပရောဂျက်",
              "သဘာဝပတ်ဝန်းကျင်ဆိုင်ရာ ညီလာခံ ဆွေးနွေးပွဲ",
              "ကွက်လပ်များသုံးသော ဂေဟဗေဒ ကွင်းဆင်းလေ့လာမှု",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w36-d5",
      dayNumber: 5,
      titleEn: "Year 8 Science Final Recap Quiz",
      titleMy: "Year 8 သိပ္ပံ နောက်ဆုံး ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Photosynthesis converts light energy into...",
          questionMy:
              "အလင်းမှီစုဖွဲ့ခြင်းသည် အလင်းစွမ်းအင်ကို အဘယ်အရာအဖြစ် ပြောင်းလဲသနည်း...",
          optionsEn: [
            "Stored chemical energy (food) in plants",
            "Sound energy",
            "Nuclear energy",
            "Magnetic energy",
          ],
          optionsMy: [
            "အပင်များတွင် သိုလှောင်ထားသော ဓာတုစွမ်းအင် (အစာ)",
            "အသံစွမ်းအင်",
            "နျူကလီးယားစွမ်းအင်",
            "သံလိုက်စွမ်းအင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In a chemical reaction, the total mass of reactants and products...",
          questionMy:
              "ဓာတ်ပြုမှုတစ်ခုတွင် ဓာတ်ပြုပစ္စည်းများနှင့် ရလဒ်ပစ္စည်းများ၏ စုစုပေါင်း ဒြပ်ထုသည်...",
          optionsEn: [
            "Stays the same (is conserved)",
            "Always increases",
            "Always decreases",
            "Becomes zero",
          ],
          optionsMy: [
            "မပြောင်းလဲဘဲ တည်မြဲနေသည် (conserved ဖြစ်သည်)",
            "အမြဲတမ်း တိုးလာသည်",
            "အမြဲတမ်း လျော့နည်းသည်",
            "သုညဖြစ်သွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An object sinks in water because its density is...",
          questionMy:
              "အရာဝတ္ထုတစ်ခုသည် ရေထဲနစ်မြုပ်သွားသည်မှာ ၎င်း၏ သိပ်သည်းဆကြောင့် အဘယ်ကြောင့်နည်း...",
          optionsEn: [
            "Greater than the density of water",
            "Less than the density of water",
            "Exactly equal to the density of water",
            "Unrelated to whether it sinks",
          ],
          optionsMy: [
            "ရေ၏ သိပ်သည်းဆထက် များသောကြောင့်",
            "ရေ၏ သိပ်သည်းဆထက် နည်းသောကြောင့်",
            "ရေ၏ သိပ်သည်းဆနှင့် အတိအကျ ညီသောကြောင့်",
            "နစ်မြုပ်မည်သင့်မသင့်နှင့် မသက်ဆိုင်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which organ pumps blood around the human body?",
          questionMy:
              "လူ့ခန္ဓာကိုယ်တစ်ခုလုံးသို့ သွေးကို မည်သည့်အင်္ဂါက ပန့်ပို့ပေးသနည်း။",
          optionsEn: ["The heart", "The lungs", "The stomach", "The liver"],
          optionsMy: ["နှလုံး", "အဆုတ်", "အစာအိမ်", "အသည်း"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Aye Chan's final investigation, what was her independent variable?",
          questionMy:
              "အေးချမ်း၏ နောက်ဆုံး စူးစမ်းလေ့လာမှုတွင် သူမ၏ လွတ်လပ်သောကိန်းရှင်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The colour of light",
            "The number of days until germination",
            "The amount of water given",
            "The type of pot used",
          ],
          optionsMy: [
            "အလင်းရောင်၏ အရောင်",
            "မျိုးစေ့ပေါက်ဖွားရန် ကြာသောရက်အရေအတွက်",
            "ပေးသော ရေပမာဏ",
            "အသုံးပြုသော အိုးအမျိုးအစား",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary2ScienceTerm9 = CourseTermDef(
  id: "course-secondary2-science-term9",
  termNumber: 9,
  titleEn: "Physics - Motion and Forces",
  titleMy: "ရူပဗေဒ — ရွေ့လျားမှုနှင့် အားများ",
  certificateTitleEn: "Physics - Motion and Forces",
  certificateTitleMy: "ရူပဗေဒ — ရွေ့လျားမှုနှင့် အားများ",
  weeks: [
    _secondary2ScienceWeek33,
    _secondary2ScienceWeek34,
    _secondary2ScienceWeek35,
    _secondary2ScienceWeek36,
  ],
);
