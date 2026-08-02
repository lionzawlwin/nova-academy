const CourseWeekDef _secondary2MathematicsWeek21 = CourseWeekDef(
  id: "course-secondary2-mathematics-w21",
  weekNumber: 21,
  titleEn: "Organizing Data",
  titleMy: "အချက်အလက်များ စုစည်းခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w21-d1",
      dayNumber: 1,
      titleEn: "Grouped Frequency Tables and Class Intervals",
      titleMy: "စုစည်းထားသော Frequency ဇယားများနှင့် Class Interval များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Why would a data set of 100 students' heights be grouped into class intervals like 140-150cm?",
          questionMy:
              "ကျောင်းသား 100 ဦး၏ အရပ်အမြင့်အချက်အလက်များကို 140-150cm ကဲ့သို့သော Class Interval များအဖြစ် အဘယ်ကြောင့် စုစည်းသနည်း။",
          optionsEn: [
            "It summarises a large spread of individual values into manageable groups",
            "It makes the data completely inaccurate on purpose",
            "It removes the need to collect data at all",
            "It only works for exactly 100 people",
          ],
          optionsMy: [
            "တစ်ဦးချင်းတန်ဖိုးများစွာ ပျံ့နှံ့နေသည်ကို ကိုင်တွယ်နိုင်သော အုပ်စုများအဖြစ် အနှစ်ချုပ်ပေးသောကြောင့်",
            "အချက်အလက်ကို တမင်တကာ လုံးဝ တိကျမှုမရှိစေရန်",
            "အချက်အလက် စုဆောင်းရန် လိုအပ်ချက်ကို လုံးဝ ဖယ်ရှားပေးသောကြောင့်",
            "လူ 100 ဦးအတွက်သာ အလုပ်လုပ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Individually listing 100 different exact heights would be hard to read at a glance.",
            "Grouping into ranges like 140-150cm makes patterns in the data much easier to see quickly.",
          ],
          hintsMy: [
            "မတူညီသော အမြင့် 100 ခုကို တစ်ခုချင်းစီ ဖော်ပြခြင်းသည် တစ်ကြည့်တည်းနှင့် ဖတ်ရခက်မည်ဖြစ်သည်။",
            "140-150cm ကဲ့သို့သော အကွာအဝေးများအဖြစ် စုစည်းခြင်းသည် အချက်အလက်ရှိပုံစံများကို လျင်မြန်စွာ မြင်ရလွယ်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A class interval is written 20 ≤ x < 30. Which value belongs inside this interval?",
          questionMy:
              "Class Interval တစ်ခုကို 20 ≤ x < 30 ဟု ရေးထားသည်။ မည်သည့်တန်ဖိုးသည် ဤအကွာအဝေးအတွင်း ပါဝင်သနည်း။",
          optionsEn: ["25", "30", "19", "35"],
          optionsMy: ["25", "30", "19", "35"],
          correctIndex: 0,
          hintsEn: [
            "The symbol ≤ means \"less than or equal to,\" and < means strictly \"less than.\"",
            "20 is included, but 30 itself is not, since the interval stops just before 30.",
          ],
          hintsMy: [
            "≤ သင်္ကေတသည် 'ညီမျှ သို့မဟုတ် ငယ်' ကို ဆိုလိုပြီး < သည် တိကျစွာ 'ငယ်' ကို ဆိုလိုသည်။",
            "20 ပါဝင်သော်လည်း 30 ကိုယ်တိုင် မပါဝင်ပါ၊ အကွာအဝေးသည် 30 မတိုင်မီတွင် ရပ်တန့်သောကြောင့်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is continuous data?",
          questionMy: "Continuous Data ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Data that can take any value within a range, such as height or weight",
            "Data that can only be whole numbers, such as the number of students",
            "Data that never has any numerical value at all",
            "Data collected only once a year",
          ],
          optionsMy: [
            "အရပ်အမြင့် သို့မဟုတ် အလေးချိန်ကဲ့သို့ အကွာအဝေးတစ်ခုအတွင်း မည်သည့်တန်ဖိုးမဆို ယူနိုင်သော အချက်အလက်",
            "ကျောင်းသားအရေအတွက်ကဲ့သို့ ကိန်းပြည့်များသာ ဖြစ်နိုင်သော အချက်အလက်",
            "ဂဏန်းတန်ဖိုးမည်သည်မျှ ဘယ်တော့မှ မရှိသော အချက်အလက်",
            "တစ်နှစ်လျှင် တစ်ကြိမ်သာ စုဆောင်းသော အချက်အလက်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A person's height can be 152.3cm, 152.34cm, or any value in between -- there are no gaps.",
            "This is different from discrete data, like the number of students, which jumps in whole steps.",
          ],
          hintsMy: [
            "လူတစ်ဦး၏ အရပ်အမြင့်သည် 152.3cm, 152.34cm သို့မဟုတ် ကြားရှိ တန်ဖိုးမည်သည်မဆို ဖြစ်နိုင်သည် — ကွက်လပ်များ မရှိပါ။",
            "ဤသည် ကျောင်းသားအရေအတွက်ကဲ့သို့ ကိန်းပြည့်အဆင့်ဖြင့် ခုန်တက်သော Discrete Data နှင့် ကွဲပြားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A grouped frequency table shows 15 students in the interval 10-20 minutes for travel time. What does this tell us exactly?",
          questionMy:
              "စုစည်းထားသော Frequency ဇယားတစ်ခုက ခရီးသွားချိန်အတွက် 10-20 မိနစ် အကွာအဝေးတွင် ကျောင်းသား 15 ဦး ရှိကြောင်း ပြသသည်။ ၎င်းက ကျွန်ုပ်တို့အား အတိအကျ မည်သည့်အရာကို ပြောပြသနည်း။",
          optionsEn: [
            "15 students had a travel time somewhere between 10 and 20 minutes, but not the exact individual times",
            "Every one of the 15 students took exactly 15 minutes",
            "Only 1 student is included in this interval",
            "The exact travel time of each of the 15 students is known precisely",
          ],
          optionsMy: [
            "ကျောင်းသား 15 ဦးသည် ခရီးသွားချိန် 10 မှ 20 မိနစ်ကြားတွင် ရှိကြောင်း၊ သို့သော် တစ်ဦးချင်းအတိအကျအချိန် မဟုတ်ကြောင်း",
            "ကျောင်းသား 15 ဦးစလုံးသည် အတိအကျ 15 မိနစ် ကြာခဲ့ကြောင်း",
            "ဤအကွာအဝေးတွင် ကျောင်းသားတစ်ဦးသာ ပါဝင်ကြောင်း",
            "ကျောင်းသား 15 ဦးစီ၏ အတိအကျခရီးသွားချိန်ကို တိကျစွာ သိရှိကြောင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Grouped data trades individual precision for a clearer overall picture.",
            "You know the count of students within the range, but not each one's exact minute.",
          ],
          hintsMy: [
            "စုစည်းထားသော အချက်အလက်သည် ပိုရှင်းလင်းသော ပုံလုံးအတွက် တစ်ဦးချင်းတိကျမှုကို လဲလှယ်သည်။",
            "အကွာအဝေးအတွင်းရှိ ကျောင်းသားအရေအတွက်ကို သိသော်လည်း တစ်ဦးချင်း၏ အတိအကျမိနစ်ကို မသိပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w21-d2",
      dayNumber: 2,
      titleEn: "Match the Data Vocabulary",
      titleMy: "အချက်အလက် ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w21-dm-1",
          termEn: "Grouped Frequency Table",
          termMy: "စုစည်းထားသော Frequency ဇယား",
          matchEn:
              "A table showing how many data values fall into each class interval",
          matchMy:
              "Class Interval တစ်ခုစီအတွင်း အချက်အလက်တန်ဖိုး ဘယ်နှခု ကျရောက်သည်ကို ပြသောဇယား",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w21-dm-2",
          termEn: "Class Interval",
          termMy: "Class Interval (အတန်းအကွာအဝေး)",
          matchEn:
              "A range of values used to group continuous data, e.g. 20-30",
          matchMy:
              "Continuous Data ကို အုပ်စုဖွဲ့ရန် အသုံးပြုသော တန်ဖိုးအကွာအဝေး၊ ဥပမာ 20-30",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w21-dm-3",
          termEn: "Continuous Data",
          termMy: "Continuous Data (အဆက်မပြတ်အချက်အလက်)",
          matchEn:
              "Data that can take any value within a range, such as height or time",
          matchMy:
              "အရပ်အမြင့် သို့မဟုတ် အချိန်ကဲ့သို့ အကွာအဝေးတစ်ခုအတွင်း မည်သည့်တန်ဖိုးမဆို ယူနိုင်သော အချက်အလက်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w21-dm-4",
          termEn: "Discrete Data",
          termMy: "Discrete Data (သီးခြားအချက်အလက်)",
          matchEn:
              "Data that can only take specific separate values, such as a count of people",
          matchMy:
              "လူဦးရေရေတွက်ချက်ကဲ့သို့ သီးခြားတန်ဖိုးများကိုသာ ယူနိုင်သော အချက်အလက်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w21-dm-5",
          termEn: "Frequency",
          termMy: "Frequency (ကြိမ်နှုန်း)",
          matchEn:
              "The number of times a value or range of values occurs in a data set",
          matchMy:
              "အချက်အလက်တစ်ခုအတွင်း တန်ဖိုးတစ်ခု သို့မဟုတ် တန်ဖိုးအကွာအဝေးတစ်ခု ဖြစ်ပွားသောအကြိမ်ရေ",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w21-dm-6",
          termEn: "Data Set",
          termMy: "Data Set (အချက်အလက်အစု)",
          matchEn: "A collection of related values collected for analysis",
          matchMy:
              "ခွဲခြမ်းစိတ်ဖြာရန် စုဆောင်းထားသော ဆက်စပ်တန်ဖိုးများ ပေါင်းစည်းမှု",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w21-d3",
      dayNumber: 3,
      titleEn: "Sort: Continuous Data or Discrete Data?",
      titleMy: "စီစစ်ကြမည် - Continuous Data လား၊ Discrete Data လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Continuous Data", "Discrete Data"],
        bucketsMy: [
          "Continuous Data (အဆက်မပြတ်အချက်အလက်)",
          "Discrete Data (သီးခြားအချက်အလက်)",
        ],
        items: [
          SortingItem(
            id: "s2math-w21-sort-1",
            labelEn: "A person's height in centimetres",
            labelMy: "လူတစ်ဦး၏ အရပ်အမြင့် (စင်တီမီတာ)",
            correctBucketEn: "Continuous Data",
            correctBucketMy: "Continuous Data (အဆက်မပြတ်အချက်အလက်)",
          ),
          SortingItem(
            id: "s2math-w21-sort-2",
            labelEn: "The number of students in a class",
            labelMy: "အတန်းထဲရှိ ကျောင်းသားအရေအတွက်",
            correctBucketEn: "Discrete Data",
            correctBucketMy: "Discrete Data (သီးခြားအချက်အလက်)",
          ),
          SortingItem(
            id: "s2math-w21-sort-3",
            labelEn: "The time taken to run a race, in seconds",
            labelMy: "အပြေးပြိုင်ပွဲ ပြေးရသည့်အချိန် (စက္ကန့်)",
            correctBucketEn: "Continuous Data",
            correctBucketMy: "Continuous Data (အဆက်မပြတ်အချက်အလက်)",
          ),
          SortingItem(
            id: "s2math-w21-sort-4",
            labelEn: "The number of goals scored in a match",
            labelMy: "ပွဲစဉ်တစ်ခုတွင် သွင်းသော ဂိုးအရေအတွက်",
            correctBucketEn: "Discrete Data",
            correctBucketMy: "Discrete Data (သီးခြားအချက်အလက်)",
          ),
          SortingItem(
            id: "s2math-w21-sort-5",
            labelEn: "A bag's weight in kilograms",
            labelMy: "အိတ်တစ်လုံး၏ အလေးချိန် (ကီလိုဂရမ်)",
            correctBucketEn: "Continuous Data",
            correctBucketMy: "Continuous Data (အဆက်မပြတ်အချက်အလက်)",
          ),
          SortingItem(
            id: "s2math-w21-sort-6",
            labelEn: "The number of pets a family owns",
            labelMy: "မိသားစုတစ်ခု ပိုင်ဆိုင်သော အိမ်မွေးတိရစ္ဆာန်အရေအတွက်",
            correctBucketEn: "Discrete Data",
            correctBucketMy: "Discrete Data (သီးခြားအချက်အလက်)",
          ),
          SortingItem(
            id: "s2math-w21-sort-7",
            labelEn: "The temperature outside in degrees Celsius",
            labelMy: "အပြင်ဘက် အပူချိန် (ဒီဂရီ Celsius)",
            correctBucketEn: "Continuous Data",
            correctBucketMy: "Continuous Data (အဆက်မပြတ်အချက်အလက်)",
          ),
          SortingItem(
            id: "s2math-w21-sort-8",
            labelEn: "The number of cars in a car park",
            labelMy: "ကားပါကင်တွင် ရှိသော ကားအရေအတွက်",
            correctBucketEn: "Discrete Data",
            correctBucketMy: "Discrete Data (သီးခြားအချက်အလက်)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w21-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su's Sleep Survey",
      titleMy: "စာဖတ်ခြင်း - စုစု၏ အိပ်စက်ချိန် စစ်တမ်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su's Sleep Survey",
        titleMy: "စုစု၏ အိပ်စက်ချိန် စစ်တမ်း",
        passageEn:
            "Su Su surveyed all 40 students in her year group, asking how many hours they slept the night before. Instead of listing 40 individual numbers like 6.5, 7.25, and 8.75 hours, which would be almost impossible to read at a glance, she organised the data into class intervals: 4 ≤ h < 6, 6 ≤ h < 8, 8 ≤ h < 10, and 10 ≤ h < 12.\n\nCounting students into each interval, she found 3 students slept between 4 and 6 hours, 22 students slept between 6 and 8 hours, 13 students slept between 8 and 10 hours, and 2 students slept between 10 and 12 hours. \"This grouped frequency table makes the overall pattern obvious at a glance,\" Su Su told her teacher. \"Most students, 22 out of 40, slept between 6 and 8 hours.\"\n\nHer teacher then asked whether she knew exactly how long any individual student slept. \"No,\" Su Su admitted, \"grouping loses that individual detail. If a student is in the 6 ≤ h < 8 interval, all I know is they slept somewhere in that two-hour window, not the exact number of hours.\" She explained this was the fundamental trade-off of using class intervals: individual precision was exchanged for a summary clear enough to spot patterns across the whole year group instantly.",
        passageMy:
            "စုစုသည် သူမ၏ တန်းအုပ်စု ကျောင်းသား 40 ဦးလုံးကို စစ်တမ်းကောက်ယူခဲ့ပြီး ညနေရင်း ဘယ်နှနာရီအိပ်ခဲ့သည်ကို မေးမြန်းခဲ့သည်။ 6.5, 7.25 နှင့် 8.75 နာရီကဲ့သို့သော ကျောင်းသား 40 ဦးတစ်ဦးချင်းစီ၏ ဂဏန်းများကို ဖော်ပြမည့်အစား၊ ၎င်းသည် တစ်ကြည့်တည်းနှင့် ဖတ်ရန် မဖြစ်နိုင်လောက်အောင် ခက်ခဲသောကြောင့် သူမသည် အချက်အလက်ကို Class Interval များအဖြစ် စုစည်းခဲ့သည် — 4 ≤ h < 6, 6 ≤ h < 8, 8 ≤ h < 10, 10 ≤ h < 12။\n\nကျောင်းသားများကို အကွာအဝေးတစ်ခုစီအတွင်း ရေတွက်ရာ ကျောင်းသား 3 ဦးသည် 4 မှ 6 နာရီအကြား၊ ကျောင်းသား 22 ဦးသည် 6 မှ 8 နာရီအကြား၊ ကျောင်းသား 13 ဦးသည် 8 မှ 10 နာရီအကြား၊ ကျောင်းသား 2 ဦးသည် 10 မှ 12 နာရီအကြား အိပ်စက်ခဲ့ကြောင်း တွေ့ရှိခဲ့သည်။ 'ဒီစုစည်းထားသော Frequency ဇယားက တစ်ကြည့်တည်းနဲ့ ယေဘုယျပုံစံကို ရှင်းလင်းစေတယ်' ဟု စုစုက ဆရာမကို ပြောခဲ့သည်။ 'ကျောင်းသား 40 ဦးအနက် အများဆုံး 22 ဦးသည် 6 မှ 8 နာရီအကြား အိပ်စက်ခဲ့ကြသည်' ။\n\nထို့နောက် ကျောင်းသားတစ်ဦးချင်းစီ တိကျစွာ ဘယ်လောက်ကြာအိပ်ခဲ့သည်ကို သူမ သိသလား ဆရာမက မေးခဲ့သည်။ 'မသိပါ' ဟု စုစု ဝန်ခံခဲ့သည်၊ 'စုစည်းခြင်းသည် ထိုတစ်ဦးချင်းအသေးစိတ်ကို ဆုံးရှုံးစေတယ်။ ကျောင်းသားတစ်ဦးသည် 6 ≤ h < 8 အကွာအဝေးတွင် ရှိပါက ငါသိတာက ၎င်းသည် ထိုနှစ်နာရီပတ်လည်ကာလအတွင်း တစ်နေရာရာတွင် အိပ်စက်ခဲ့ကြောင်းသာဖြစ်ပြီး အတိအကျနာရီအရေအတွက် မဟုတ်ဘူး' ။ ၎င်းသည် Class Interval အသုံးပြုခြင်း၏ အခြေခံ လဲလှယ်မှုဖြစ်ကြောင်း — တစ်ဦးချင်းတိကျမှုကို တန်းအုပ်စုတစ်ခုလုံးရှိ ပုံစံများကို ချက်ချင်း ရှာဖွေနိုင်လောက်အောင် ရှင်းလင်းသော အနှစ်ချုပ်နှင့် လဲလှယ်ခြင်းဖြစ်ကြောင်း သူမ ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how many students slept between 6 and 8 hours?",
            questionMy:
                "စာပိုဒ် ၂ အရ ကျောင်းသား ဘယ်နှဦးသည် 6 မှ 8 နာရီအကြား အိပ်စက်ခဲ့သနည်း။",
            optionsEn: ["22", "3", "13", "2"],
            optionsMy: ["22", "3", "13", "2"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how many total students were surveyed?",
            questionMy:
                "စာပိုဒ် ၂ အရ ကျောင်းသား စုစုပေါင်း ဘယ်နှဦး စစ်တမ်းကောက်ယူခဲ့သနည်း။",
            optionsEn: ["40", "22", "13", "4"],
            optionsMy: ["40", "22", "13", "4"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Su Su say was lost by grouping data?",
            questionMy:
                "စာပိုဒ် ၃ အရ အချက်အလက် စုစည်းခြင်းဖြင့် မည်သည်ကို ဆုံးရှုံးသည်ဟု စုစု ပြောခဲ့သနည်း။",
            optionsEn: [
              "Individual detail, such as each student's exact number of hours",
              "The total number of students surveyed",
              "The class interval boundaries",
              "Nothing at all was lost",
            ],
            optionsMy: [
              "ကျောင်းသားတစ်ဦးစီ၏ အတိအကျနာရီအရေအတွက်ကဲ့သို့ တစ်ဦးချင်းအသေးစိတ်",
              "စစ်တမ်းကောက်ယူထားသော ကျောင်းသား စုစုပေါင်းအရေအတွက်",
              "Class Interval နယ်နိမိတ်များ",
              "မည်သည့်အရာမျှ မဆုံးရှုံးကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Su Su call the trade-off of using class intervals?",
            questionMy:
                "စာပိုဒ် ၃ အရ Class Interval အသုံးပြုခြင်း၏ လဲလှယ်မှုကို စုစု မည်သို့ခေါ်ခဲ့သနည်း။",
            optionsEn: [
              "Individual precision exchanged for a summary clear enough to spot patterns",
              "A complete waste of time with no benefit",
              "A method that only works for exactly 40 people",
              "Something with no real trade-off at all",
            ],
            optionsMy: [
              "ပုံစံများကို ရှာဖွေနိုင်လောက်အောင် ရှင်းလင်းသော အနှစ်ချုပ်နှင့် တစ်ဦးချင်းတိကျမှုကို လဲလှယ်ခြင်း",
              "အကျိုးအမြတ်လုံးဝမရှိသော အချိန်ဖြုန်းမှုတစ်ခု",
              "လူ 40 ဦးအတွက်သာ အလုပ်လုပ်သောနည်းလမ်း",
              "စစ်မှန်သောလဲလှယ်မှု လုံးဝမရှိသောအရာ",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w21-d5",
      dayNumber: 5,
      titleEn: "Organizing Data Recap Quiz",
      titleMy: "အချက်အလက် စုစည်းခြင်း ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A grouped frequency table is used to...",
          questionMy: "စုစည်းထားသော Frequency ဇယားကို ... ရန် အသုံးပြုသည်။",
          optionsEn: [
            "Summarise a large spread of values into manageable groups",
            "Remove the need for any data collection",
            "Make data completely inaccurate on purpose",
            "Only work with exactly 100 values",
          ],
          optionsMy: [
            "တန်ဖိုးများစွာ ပျံ့နှံ့နေသည်ကို ကိုင်တွယ်နိုင်သော အုပ်စုများအဖြစ် အနှစ်ချုပ်ရန်",
            "အချက်အလက် စုဆောင်းရန် လိုအပ်ချက်ကို ဖယ်ရှားရန်",
            "အချက်အလက်ကို တမင်တကာ လုံးဝ တိကျမှုမရှိစေရန်",
            "တန်ဖိုးအတိအကျ 100 ခုနှင့်သာ အလုပ်လုပ်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A person's height is an example of...",
          questionMy: "လူတစ်ဦး၏ အရပ်အမြင့်သည် ... ၏ ဥပမာတစ်ခုဖြစ်သည်။",
          optionsEn: [
            "Continuous data",
            "Discrete data",
            "No data at all",
            "A class interval only",
          ],
          optionsMy: [
            "Continuous Data",
            "Discrete Data",
            "အချက်အလက် လုံးဝမရှိခြင်း",
            "Class Interval တစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The number of students in a class is an example of...",
          questionMy:
              "အတန်းထဲရှိ ကျောင်းသားအရေအတွက်သည် ... ၏ ဥပမာတစ်ခုဖြစ်သည်။",
          optionsEn: [
            "Discrete data",
            "Continuous data",
            "No data at all",
            "A class interval only",
          ],
          optionsMy: [
            "Discrete Data",
            "Continuous Data",
            "အချက်အလက် လုံးဝမရှိခြင်း",
            "Class Interval တစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the class interval 20 ≤ x < 30, which number is included?",
          questionMy: "Class Interval 20 ≤ x < 30 တွင် မည်သည့်ဂဏန်းပါဝင်သနည်း။",
          optionsEn: ["20", "30", "19", "31"],
          optionsMy: ["20", "30", "19", "31"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Su Su's sleep survey, how many students slept between 6 and 8 hours?",
          questionMy:
              "စုစု၏ အိပ်စက်ချိန်စစ်တမ်းတွင် ကျောင်းသား ဘယ်နှဦးသည် 6 မှ 8 နာရီအကြား အိပ်စက်ခဲ့သနည်း။",
          optionsEn: ["22", "3", "13", "40"],
          optionsMy: ["22", "3", "13", "40"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek22 = CourseWeekDef(
  id: "course-secondary2-mathematics-w22",
  weekNumber: 22,
  titleEn: "Averages from Tables",
  titleMy: "ဇယားများမှ ပျမ်းမျှတန်ဖိုးများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w22-d1",
      dayNumber: 1,
      titleEn: "Estimating the Mean, Modal Class, and Median Class",
      titleMy: "ပျမ်းမျှတန်ဖိုးခန့်မှန်းခြင်း၊ Modal Class နှင့် Median Class",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Why do we estimate the mean for grouped data instead of calculating it exactly?",
          questionMy:
              "စုစည်းထားသော အချက်အလက်အတွက် ပျမ်းမျှတန်ဖိုးကို အတိအကျတွက်ချက်မည့်အစား အဘယ်ကြောင့် ခန့်မှန်းသနည်း။",
          optionsEn: [
            "The individual exact values within each class interval are unknown",
            "Estimating is always faster than exact calculation for every data type",
            "Grouped data cannot have a mean at all",
            "Only calculators can find an exact mean",
          ],
          optionsMy: [
            "Class Interval တစ်ခုစီအတွင်းရှိ တစ်ဦးချင်းအတိအကျတန်ဖိုးများကို မသိသောကြောင့်",
            "ခန့်မှန်းခြင်းသည် အချက်အလက်အမျိုးအစားတိုင်းအတွက် အမြဲ ပိုမြန်သောကြောင့်",
            "စုစည်းထားသော အချက်အလက်တွင် ပျမ်းမျှတန်ဖိုး လုံးဝ မရှိနိုင်သောကြောင့်",
            "ကာလကူလေတာသာ ပျမ်းမျှတန်ဖိုးအတိအကျ ရှာနိုင်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 21: grouped data only tells you how many values fall in each interval, not the exact values.",
            "We use the midpoint of each interval as a reasonable stand-in for the unknown exact values inside it.",
          ],
          hintsMy: [
            "Week 21 ကို ပြန်တွေးကြည့်ပါ — စုစည်းထားသော အချက်အလက်သည် အကွာအဝေးတစ်ခုစီအတွင်း ဘယ်နှခုရှိသည်ကိုသာ ပြောပြသည်၊ တန်ဖိုးအတိအကျ မဟုတ်ပါ။",
            "အတွင်းရှိ မသိသေးသောတန်ဖိုးအတိအကျများ၏ ကျိုးကြောင်းဆီလျော်သော ကိုယ်စားအဖြစ် အကွာအဝေးတစ်ခုစီ၏ Midpoint ကို အသုံးပြုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is the midpoint of the class interval 10 ≤ x < 20?",
          questionMy: "Class Interval 10 ≤ x < 20 ၏ Midpoint မှာ အဘယ်နည်း။",
          optionsEn: ["15", "10", "20", "30"],
          optionsMy: ["15", "10", "20", "30"],
          correctIndex: 0,
          hintsEn: [
            "The midpoint is halfway between the interval's two boundary values.",
            "(10 + 20) ÷ 2 = 15.",
          ],
          hintsMy: [
            "Midpoint သည် အကွာအဝေး၏ နယ်နိမိတ်တန်ဖိုးနှစ်ခုကြား တစ်ဝက်နေရာတွင် ရှိသည်။",
            "(10 + 20) ÷ 2 = 15 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a grouped frequency table, which class has the most data values in it?",
          questionMy:
              "စုစည်းထားသော Frequency ဇယားတစ်ခုတွင် မည်သည့် Class တွင် အချက်အလက်တန်ဖိုး အများဆုံးရှိသနည်း။",
          optionsEn: [
            "The modal class",
            "The median class",
            "Any class interval, they are all equal",
            "None of the classes have any data",
          ],
          optionsMy: [
            "Modal Class",
            "Median Class",
            "Class Interval မည်သည်မဆို, အားလုံးတူညီသည်",
            "Class မည်သည်မျှတွင် အချက်အလက် မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "\"Modal\" comes from \"mode,\" which means the most frequently occurring value or group.",
            "The modal class simply has the highest frequency of all the class intervals.",
          ],
          hintsMy: [
            "'Modal' သည် အများဆုံးဖြစ်ပွားသောတန်ဖိုး သို့မဟုတ် အုပ်စုကို ဆိုလိုသော 'Mode' မှ လာသည်။",
            "Modal Class သည် Class Interval အားလုံးထဲမှ Frequency အမြင့်ဆုံးရှိသောအရာဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "The median class is the class interval that contains...",
          questionMy: "Median Class သည် ... ပါဝင်သော Class Interval ဖြစ်သည်။",
          optionsEn: [
            "The middle value when all the data is arranged in order",
            "The largest frequency of any class",
            "Only the very first data value collected",
            "Only the very last data value collected",
          ],
          optionsMy: [
            "အချက်အလက်အားလုံးကို အစဉ်လိုက်စီထားသောအခါ အလယ်တန်ဖိုး",
            "Class မည်သည်၏မဆို အကြီးဆုံး Frequency",
            "စုဆောင်းထားသော ပထမဆုံးအချက်အလက်တန်ဖိုးသာ",
            "စုဆောင်းထားသော နောက်ဆုံးအချက်အလက်တန်ဖိုးသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "The median class is found by locating where the middle position of the whole ordered data set falls.",
            "This is different from the modal class, which is about frequency, not position.",
          ],
          hintsMy: [
            "Median Class ကို စီစဉ်ထားသော အချက်အလက်တစ်ခုလုံး၏ အလယ်တည်နေရာ ကျရောက်ရာနေရာကို ရှာဖွေ၍ ရရှိသည်။",
            "ဒါသည် Frequency အကြောင်းဖြစ်သော Modal Class နှင့် ကွဲပြားပြီး တည်နေရာအကြောင်း မဟုတ်ပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w22-d2",
      dayNumber: 2,
      titleEn: "Match the Averages Vocabulary",
      titleMy: "ပျမ်းမျှတန်ဖိုး ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w22-dm-1",
          termEn: "Estimated Mean",
          termMy: "ခန့်မှန်းပျမ်းမျှတန်ဖိုး (Estimated Mean)",
          matchEn:
              "The mean calculated using each class interval's midpoint, since exact values are unknown",
          matchMy:
              "တန်ဖိုးအတိအကျ မသိသောကြောင့် Class Interval တစ်ခုစီ၏ Midpoint ကိုသုံး၍ တွက်ချက်သော ပျမ်းမျှတန်ဖိုး",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w22-dm-2",
          termEn: "Midpoint",
          termMy: "Midpoint (အလယ်တည်နေရာ)",
          matchEn:
              "The value exactly halfway between a class interval's two boundaries",
          matchMy:
              "Class Interval တစ်ခု၏ နယ်နိမိတ်နှစ်ခုကြား အတိအကျအလယ်တွင်ရှိသောတန်ဖိုး",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w22-dm-3",
          termEn: "Modal Class",
          termMy: "Modal Class (အများဆုံးအတန်း)",
          matchEn: "The class interval with the highest frequency",
          matchMy: "Frequency အမြင့်ဆုံးရှိသော Class Interval",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w22-dm-4",
          termEn: "Median Class",
          termMy: "Median Class (အလယ်အတန်း)",
          matchEn:
              "The class interval that contains the middle value of the ordered data",
          matchMy: "စီစဉ်ထားသော အချက်အလက်၏ အလယ်တန်ဖိုး ပါဝင်သော Class Interval",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w22-dm-5",
          termEn: "Mean",
          termMy: "ပျမ်းမျှတန်ဖိုး (Mean)",
          matchEn: "The sum of all values divided by how many values there are",
          matchMy:
              "တန်ဖိုးအားလုံး၏ ပေါင်းလဒ်ကို တန်ဖိုးအရေအတွက်ဖြင့် စားထားသည်",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w22-dm-6",
          termEn: "Mode",
          termMy: "Mode (အများဆုံးဖြစ်ပေါ်တန်ဖိုး)",
          matchEn: "The value or group that occurs most frequently",
          matchMy: "အများဆုံးဖြစ်ပွားသော တန်ဖိုး သို့မဟုတ် အုပ်စု",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w22-d3",
      dayNumber: 3,
      titleEn: "Sort: About the Modal Class or About the Median Class?",
      titleMy: "စီစစ်ကြမည် - Modal Class အကြောင်းလား၊ Median Class အကြောင်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["About the Modal Class", "About the Median Class"],
        bucketsMy: ["Modal Class အကြောင်း", "Median Class အကြောင်း"],
        items: [
          SortingItem(
            id: "s2math-w22-sort-1",
            labelEn: "The class interval with the highest frequency",
            labelMy: "Frequency အမြင့်ဆုံးရှိသော Class Interval",
            correctBucketEn: "About the Modal Class",
            correctBucketMy: "Modal Class အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w22-sort-2",
            labelEn:
                "The class interval containing the middle position of ordered data",
            labelMy:
                "စီစဉ်ထားသော အချက်အလက်၏ အလယ်တည်နေရာ ပါဝင်သော Class Interval",
            correctBucketEn: "About the Median Class",
            correctBucketMy: "Median Class အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w22-sort-3",
            labelEn: "Concerned with which range occurs most often",
            labelMy: "မည်သည့်အကွာအဝေးက အများဆုံးဖြစ်ပွားသည်နှင့် သက်ဆိုင်",
            correctBucketEn: "About the Modal Class",
            correctBucketMy: "Modal Class အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w22-sort-4",
            labelEn: "Concerned with position, not frequency",
            labelMy: "Frequency မဟုတ်ဘဲ တည်နေရာနှင့် သက်ဆိုင်",
            correctBucketEn: "About the Median Class",
            correctBucketMy: "Median Class အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w22-sort-5",
            labelEn: "If most students scored 60-70, this is that interval",
            labelMy: "ကျောင်းသားအများစု 60-70 ရလျှင် ဒါသည် ထိုအကွာအဝေးဖြစ်သည်",
            correctBucketEn: "About the Modal Class",
            correctBucketMy: "Modal Class အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w22-sort-6",
            labelEn:
                "Found by locating the middle-ranked data value's interval",
            labelMy: "အလယ်အဆင့်ရှိ အချက်အလက်တန်ဖိုး၏ အကွာအဝေးကို ရှာဖွေ၍ ရရှိ",
            correctBucketEn: "About the Median Class",
            correctBucketMy: "Median Class အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w22-sort-7",
            labelEn: "The most popular class interval by count",
            labelMy: "ရေတွက်ချက်အရ လူကြိုက်အများဆုံး Class Interval",
            correctBucketEn: "About the Modal Class",
            correctBucketMy: "Modal Class အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w22-sort-8",
            labelEn: "The interval where the 'middle' data point sits",
            labelMy: "'အလယ်' အချက်အလက်အမှတ် ရှိသည့် အကွာအဝေး",
            correctBucketEn: "About the Median Class",
            correctBucketMy: "Median Class အကြောင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w22-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiri Estimates the Class Average",
      titleMy: "စာဖတ်ခြင်း - သီရိ အတန်းပျမ်းမျှကို ခန့်မှန်းခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri Estimates the Class Average",
        titleMy: "သီရိ အတန်းပျမ်းမျှကို ခန့်မှန်းခြင်း",
        passageEn:
            "Thiri's class of 30 students took a test, and their scores were grouped into a frequency table: 5 students scored 0-20, 8 students scored 20-40, 12 students scored 40-60, and 5 students scored 60-80. Since she only knew the ranges, not each individual score, Thiri needed to estimate the mean rather than calculate it exactly.\n\nShe found the midpoint of each interval: 10, 30, 50, and 70. Multiplying each midpoint by its frequency gave: 5 × 10 = 50, 8 × 30 = 240, 12 × 50 = 600, and 5 × 70 = 350. Adding these together gave 50 + 240 + 600 + 350 = 1,240. Dividing by the total number of students, 30, gave an estimated mean of 1,240 ÷ 30 ≈ 41.3.\n\nThiri also identified the modal class, 40-60, since it had the highest frequency of 12 students, and the median class. With 30 students, the middle position was between the 15th and 16th student when ranked in order. Counting cumulatively -- 5 students in the first interval, 13 by the end of the second, 25 by the end of the third -- both the 15th and 16th students fell within the 40-60 interval, making it the median class as well as the modal class this time. \"The estimated mean, modal class, and median class don't always agree,\" Thiri told her teacher, \"but this time all three point to roughly the same middle territory of the data, which makes me fairly confident the class generally scored around there.\"",
        passageMy:
            "သီရိ၏ ကျောင်းသား 30 ဦးအတန်းသည် စာမေးပွဲတစ်ခု ဖြေဆိုခဲ့ကြပြီး ၎င်းတို့၏ ရမှတ်များကို Frequency ဇယားတစ်ခုအဖြစ် စုစည်းခဲ့သည် — ကျောင်းသား 5 ဦးသည် 0-20 ရရှိ၊ ကျောင်းသား 8 ဦးသည် 20-40 ရရှိ၊ ကျောင်းသား 12 ဦးသည် 40-60 ရရှိ၊ ကျောင်းသား 5 ဦးသည် 60-80 ရရှိခဲ့သည်။ သီရိသည် အကွာအဝေးများကိုသာ သိပြီး တစ်ဦးချင်းရမှတ်ကို မသိသောကြောင့် ပျမ်းမျှတန်ဖိုးကို အတိအကျတွက်ချက်မည့်အစား ခန့်မှန်းရန် လိုအပ်ခဲ့သည်။\n\nသူမသည် အကွာအဝေးတစ်ခုစီ၏ Midpoint ကို ရှာတွေ့ခဲ့သည် — 10, 30, 50, 70။ Midpoint တစ်ခုစီကို ၎င်း၏ Frequency ဖြင့် မြှောက်လိုက်ရာ — 5 × 10 = 50, 8 × 30 = 240, 12 × 50 = 600, 5 × 70 = 350 ရရှိခဲ့သည်။ ၎င်းတို့ကို ပေါင်းစည်းလိုက်ရာ 50 + 240 + 600 + 350 = 1,240 ရရှိခဲ့သည်။ ကျောင်းသား စုစုပေါင်း 30 ဦးဖြင့် စားလိုက်ရာ ခန့်မှန်းပျမ်းမျှတန်ဖိုး 1,240 ÷ 30 ≈ 41.3 ရရှိခဲ့သည်။\n\nသီရိသည် Modal Class 40-60 ကိုလည်း ခွဲခြားသိရှိခဲ့သည်၊ ၎င်းသည် ကျောင်းသား 12 ဦးဖြင့် Frequency အမြင့်ဆုံးရှိသောကြောင့်ဖြစ်ပြီး Median Class ကိုလည်း ခွဲခြားသိရှိခဲ့သည်။ ကျောင်းသား 30 ဦးဖြင့် အစဉ်လိုက်စီထားသောအခါ အလယ်တည်နေရာသည် ကျောင်းသား 15 ဦးမြောက်နှင့် 16 ဦးမြောက်ကြားတွင် ရှိသည်။ အစုစည်းအလိုက် ရေတွက်ရာ — ပထမအကွာအဝေးတွင် ကျောင်းသား 5 ဦး၊ ဒုတိယအကွာအဝေးအဆုံးတွင် 13 ဦး၊ တတိယအကွာအဝေးအဆုံးတွင် 25 ဦး — 15 ဦးမြောက်နှင့် 16 ဦးမြောက် နှစ်ဦးစလုံးသည် 40-60 အကွာအဝေးတွင် ကျရောက်ခဲ့ရာ ဤအကြိမ်တွင် Modal Class ဖြစ်သည့်အပြင် Median Class လည်း ဖြစ်လာခဲ့သည်။ 'ခန့်မှန်းပျမ်းမျှတန်ဖိုး၊ Modal Class နှင့် Median Class တို့သည် အမြဲ သဘောတူညီကြသည် မဟုတ်ပါ' ဟု သီရိက ဆရာမကို ပြောခဲ့သည်၊ 'ဒါပေမယ့် ဒီအကြိမ်တော့ သုံးခုစလုံးက အချက်အလက်ရဲ့ အလားတူ အလယ်ဒေသကို ညွှန်ပြနေတာကြောင့် အတန်းက ယေဘုယျအားဖြင့် အဲဒီနေရာ ရမှတ်ရရှိခဲ့တယ်ဆိုတာ ငါ အတော်လေး ယုံကြည်စိတ်ချမိတယ်' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the estimated mean?",
            questionMy: "စာပိုဒ် ၂ အရ ခန့်မှန်းပျမ်းမျှတန်ဖိုးမှာ အဘယ်နည်း။",
            optionsEn: [
              "Approximately 41.3",
              "Approximately 30",
              "Approximately 50",
              "Approximately 1,240",
            ],
            optionsMy: ["41.3 ခန့်", "30 ခန့်", "50 ခန့်", "1,240 ခန့်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "According to paragraph 3, what was the modal class?",
            questionMy: "စာပိုဒ် ၃ အရ Modal Class မှာ အဘယ်နည်း။",
            optionsEn: ["40-60", "0-20", "20-40", "60-80"],
            optionsMy: ["40-60", "0-20", "20-40", "60-80"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "According to paragraph 3, what was the median class?",
            questionMy: "စာပိုဒ် ၃ အရ Median Class မှာ အဘယ်နည်း။",
            optionsEn: ["40-60", "0-20", "20-40", "60-80"],
            optionsMy: ["40-60", "0-20", "20-40", "60-80"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why was Thiri fairly confident about the class's general performance?",
            questionMy:
                "စာပိုဒ် ၃ အရ အတန်း၏ ယေဘုယျစွမ်းဆောင်ရည်အကြောင်း သီရိ အဘယ်ကြောင့် အတော်လေး ယုံကြည်စိတ်ချခဲ့သနည်း။",
            optionsEn: [
              "The estimated mean, modal class, and median class all pointed to roughly the same area",
              "She guessed randomly without any calculation",
              "All 30 students scored the exact same mark",
              "None of the three measures agreed with each other at all",
            ],
            optionsMy: [
              "ခန့်မှန်းပျမ်းမျှတန်ဖိုး၊ Modal Class နှင့် Median Class အားလုံးက အလားတူ ဧရိယာကို ညွှန်ပြနေသောကြောင့်",
              "တွက်ချက်မှု မပါဘဲ ကျပန်း ခန့်မှန်းခဲ့သောကြောင့်",
              "ကျောင်းသား 30 ဦးစလုံးသည် အမှတ်အတိအကျ တူညီစွာ ရရှိခဲ့သောကြောင့်",
              "တွက်ချက်မှုသုံးခုအနက် တစ်ခုမျှ တစ်ခုနှင့်တစ်ခု လုံးဝ မသဘောတူခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w22-d5",
      dayNumber: 5,
      titleEn: "Averages from Tables Recap Quiz",
      titleMy: "ဇယားများမှ ပျမ်းမျှတန်ဖိုးများ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The midpoint of the class interval 30 ≤ x < 40 is...",
          questionMy: "Class Interval 30 ≤ x < 40 ၏ Midpoint မှာ ...",
          optionsEn: ["35", "30", "40", "70"],
          optionsMy: ["35", "30", "40", "70"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The modal class is the class interval with...",
          questionMy: "Modal Class သည် ... ရှိသော Class Interval ဖြစ်သည်။",
          optionsEn: [
            "The highest frequency",
            "The lowest frequency",
            "The middle position of the data",
            "No data at all",
          ],
          optionsMy: [
            "Frequency အမြင့်ဆုံး",
            "Frequency အနိမ့်ဆုံး",
            "အချက်အလက်၏ အလယ်တည်နေရာ",
            "အချက်အလက် လုံးဝမရှိ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The median class contains...",
          questionMy: "Median Class တွင် ... ပါဝင်သည်။",
          optionsEn: [
            "The middle value of the ordered data",
            "The highest frequency",
            "Only the first data value",
            "Only the last data value",
          ],
          optionsMy: [
            "စီစဉ်ထားသော အချက်အလက်၏ အလယ်တန်ဖိုး",
            "Frequency အမြင့်ဆုံး",
            "ပထမဆုံးအချက်အလက်တန်ဖိုးသာ",
            "နောက်ဆုံးအချက်အလက်တန်ဖိုးသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "We estimate the mean for grouped data because...",
          questionMy:
              "စုစည်းထားသော အချက်အလက်အတွက် ပျမ်းမျှတန်ဖိုးကို ခန့်မှန်းရသည်မှာ ...",
          optionsEn: [
            "The individual exact values inside each class interval are unknown",
            "Estimating is always more accurate than exact calculation",
            "Grouped data can never have a mean",
            "Only calculators can find a mean",
          ],
          optionsMy: [
            "Class Interval တစ်ခုစီအတွင်းရှိ တစ်ဦးချင်းအတိအကျတန်ဖိုးများကို မသိသောကြောင့်",
            "ခန့်မှန်းခြင်းသည် အတိအကျတွက်ချက်မှုထက် အမြဲ ပိုတိကျသောကြောင့်",
            "စုစည်းထားသော အချက်အလက်တွင် ပျမ်းမျှတန်ဖိုး လုံးဝ မရှိနိုင်သောကြောင့်",
            "ကာလကူလေတာသာ ပျမ်းမျှတန်ဖိုးရှာနိုင်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Thiri's class, what was the estimated mean test score?",
          questionMy:
              "သီရိ၏ အတန်းတွင် ခန့်မှန်း ပျမ်းမျှစာမေးပွဲရမှတ်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Approximately 41.3",
            "Approximately 50",
            "Approximately 30",
            "Approximately 60",
          ],
          optionsMy: ["41.3 ခန့်", "50 ခန့်", "30 ခန့်", "60 ခန့်"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek23 = CourseWeekDef(
  id: "course-secondary2-mathematics-w23",
  weekNumber: 23,
  titleEn: "Scatter Graphs",
  titleMy: "Scatter ဂရပ်များ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w23-d1",
      dayNumber: 1,
      titleEn: "Correlation and the Line of Best Fit",
      titleMy: "Correlation နှင့် Line of Best Fit",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a scatter graph used for?",
          questionMy: "Scatter ဂရပ်တစ်ခုကို မည်သည့်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Showing the relationship between two different variables",
            "Showing how one variable changes over time only",
            "Showing exact profit and loss figures",
            "Showing only whole-number data",
          ],
          optionsMy: [
            "Variable နှစ်ခုကြား ဆက်စပ်မှုကို ပြသရန်",
            "Variable တစ်ခု အချိန်ကြာလာသည်နှင့်အမျှ ပြောင်းလဲပုံကိုသာ ပြသရန်",
            "အမြတ်နှင့်အရှုံး ကိန်းဂဏန်းအတိအကျကို ပြသရန်",
            "ကိန်းပြည့်အချက်အလက်ကိုသာ ပြသရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Each point on a scatter graph represents one pair of related values, such as hours studied and test score.",
            "The overall pattern of the points reveals whether the two variables are connected.",
          ],
          hintsMy: [
            "Scatter ဂရပ်ပေါ်ရှိ အမှတ်တစ်ခုစီသည် လေ့လာသောနာရီနှင့် စာမေးပွဲရမှတ်ကဲ့သို့ ဆက်စပ်တန်ဖိုးတစ်တွဲကို ကိုယ်စားပြုသည်။",
            "အမှတ်များ၏ ယေဘုယျပုံစံသည် Variable နှစ်ခု ဆက်စပ်နေမနေကို ဖော်ပြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A scatter graph shows points rising from bottom-left to top-right. What type of correlation is this?",
          questionMy:
              "Scatter ဂရပ်တစ်ခုက အောက်ဘယ်ဘက်မှ အထက်ညာဘက်သို့ တက်နေသော အမှတ်များကို ပြသသည်။ ၎င်းသည် မည်သည့် Correlation အမျိုးအစားဖြစ်သနည်း။",
          optionsEn: [
            "Positive correlation",
            "Negative correlation",
            "No correlation",
            "Perfect correlation only",
          ],
          optionsMy: [
            "Positive Correlation",
            "Negative Correlation",
            "Correlation မရှိခြင်း",
            "Perfect Correlation သာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "When both variables increase together, the correlation is positive.",
            "Think of hours studied and test scores -- more hours usually means higher scores, an upward pattern.",
          ],
          hintsMy: [
            "Variable နှစ်ခုစလုံး အတူတကွ တိုးလာသောအခါ Correlation သည် Positive ဖြစ်သည်။",
            "လေ့လာသောနာရီနှင့် စာမေးပွဲရမှတ်ကို တွေးကြည့်ပါ — နာရီပိုများလေ ရမှတ်ပိုမြင့်လေ ဖြစ်တတ်ပြီး အထက်ရောက်ပုံစံဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What does a negative correlation look like on a scatter graph?",
          questionMy:
              "Negative Correlation သည် Scatter ဂရပ်ပေါ်တွင် မည်သို့ ပုံပေါ်သနည်း။",
          optionsEn: [
            "Points fall from top-left to bottom-right as one variable increases",
            "Points rise from bottom-left to top-right",
            "Points are scattered with no visible pattern at all",
            "All points sit on a single horizontal line",
          ],
          optionsMy: [
            "Variable တစ်ခု တိုးလာသည်နှင့်အမျှ အမှတ်များသည် အထက်ဘယ်ဘက်မှ အောက်ညာဘက်သို့ ကျဆင်း",
            "အမှတ်များသည် အောက်ဘယ်ဘက်မှ အထက်ညာဘက်သို့ တက်",
            "အမှတ်များသည် မြင်ရသောပုံစံ လုံးဝမရှိဘဲ ပျံ့နှံ့နေ",
            "အမှတ်အားလုံးသည် ရေပြင်ညီမျဉ်းတစ်ကြောင်းတည်းပေါ်တွင် ရှိနေ",
          ],
          correctIndex: 0,
          hintsEn: [
            "In a negative correlation, as one variable goes up, the other tends to go down.",
            "Think of a car's age and its resale value -- as age increases, value usually decreases.",
          ],
          hintsMy: [
            "Negative Correlation တွင် Variable တစ်ခု တက်လာသည်နှင့်အမျှ အခြားတစ်ခုသည် ကျဆင်းတတ်သည်။",
            "ကား၏ သက်တမ်းနှင့် ပြန်ရောင်းစျေးကို တွေးကြည့်ပါ — သက်တမ်းတိုးလာလေလေ တန်ဖိုးများသောအားဖြင့် ကျဆင်းလေလေ ဖြစ်တတ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is the line of best fit used for?",
          questionMy: "Line of Best Fit ကို မည်သည့်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Making predictions and showing the general trend of scattered points",
            "Connecting every single point exactly with no gaps",
            "Removing outliers from the data completely",
            "Making the graph look decorative only",
          ],
          optionsMy: [
            "ခန့်မှန်းချက်ပြုလုပ်ရန်နှင့် ပျံ့နှံ့နေသော အမှတ်များ၏ ယေဘုယျလမ်းကြောင်းကို ပြသရန်",
            "အမှတ်တစ်ခုချင်းစီကို ကွက်လပ်မရှိဘဲ အတိအကျ ချိတ်ဆက်ရန်",
            "အချက်အလက်မှ Outlier များကို လုံးဝ ဖယ်ရှားရန်",
            "ဂရပ်ကို အလှဆင်ရန်အတွက်သာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "The line of best fit passes through the middle of the scattered points, not through every single one exactly.",
            "It approximates the overall trend, letting you estimate values not directly measured.",
          ],
          hintsMy: [
            "Line of Best Fit သည် အမှတ်တစ်ခုချင်းစီကို အတိအကျ ဖြတ်သွားခြင်းမဟုတ်ဘဲ ပျံ့နှံ့နေသော အမှတ်များ၏ အလယ်ကို ဖြတ်သွားသည်။",
            "၎င်းသည် ယေဘုယျလမ်းကြောင်းကို ခန့်မှန်းပေးပြီး တိုက်ရိုက်မတိုင်းတာထားသော တန်ဖိုးများကို ခန့်မှန်းစေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w23-d2",
      dayNumber: 2,
      titleEn: "Match the Scatter Graph Vocabulary",
      titleMy: "Scatter ဂရပ် ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w23-dm-1",
          termEn: "Scatter Graph",
          termMy: "Scatter ဂရပ်",
          matchEn:
              "A graph of plotted points showing the relationship between two variables",
          matchMy:
              "Variable နှစ်ခုကြား ဆက်စပ်မှုကို ပြသော Plot ထားသည့် အမှတ်များ၏ ဂရပ်",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w23-dm-2",
          termEn: "Positive Correlation",
          termMy: "Positive Correlation (အပေါင်းဆက်စပ်မှု)",
          matchEn: "As one variable increases, the other also increases",
          matchMy: "Variable တစ်ခု တိုးလာသည်နှင့်အမျှ အခြားတစ်ခုလည်း တိုးလာသည်",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w23-dm-3",
          termEn: "Negative Correlation",
          termMy: "Negative Correlation (အနုတ်ဆက်စပ်မှု)",
          matchEn: "As one variable increases, the other decreases",
          matchMy: "Variable တစ်ခု တိုးလာသည်နှင့်အမျှ အခြားတစ်ခု ကျဆင်းသည်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w23-dm-4",
          termEn: "No Correlation",
          termMy: "Correlation မရှိခြင်း",
          matchEn: "No clear relationship exists between the two variables",
          matchMy: "Variable နှစ်ခုကြား ရှင်းလင်းသော ဆက်စပ်မှု မရှိခြင်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w23-dm-5",
          termEn: "Line of Best Fit",
          termMy: "Line of Best Fit (အံကိုက်မျဉ်း)",
          matchEn:
              "A straight line drawn through the middle of scattered points to show the trend",
          matchMy:
              "လမ်းကြောင်းကို ပြသရန် ပျံ့နှံ့နေသော အမှတ်များ၏ အလယ်တွင် ရေးဆွဲသော မျဉ်းဖြောင့်",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w23-dm-6",
          termEn: "Outlier",
          termMy: "Outlier (ကွာရှင်းသောအမှတ်)",
          matchEn:
              "A point that lies far away from the overall pattern of the data",
          matchMy: "အချက်အလက်၏ ယေဘုယျပုံစံမှ ဝေးလံစွာ ရှိနေသောအမှတ်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w23-d3",
      dayNumber: 3,
      titleEn: "Sort: Positive Correlation or Negative Correlation?",
      titleMy:
          "စီစစ်ကြမည် - Positive Correlation လား၊ Negative Correlation လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Positive Correlation", "Negative Correlation"],
        bucketsMy: [
          "Positive Correlation (အပေါင်းဆက်စပ်မှု)",
          "Negative Correlation (အနုတ်ဆက်စပ်မှု)",
        ],
        items: [
          SortingItem(
            id: "s2math-w23-sort-1",
            labelEn: "Hours studied and test scores",
            labelMy: "လေ့လာသောနာရီနှင့် စာမေးပွဲရမှတ်",
            correctBucketEn: "Positive Correlation",
            correctBucketMy: "Positive Correlation (အပေါင်းဆက်စပ်မှု)",
          ),
          SortingItem(
            id: "s2math-w23-sort-2",
            labelEn: "A car's age and its resale value",
            labelMy: "ကား၏ သက်တမ်းနှင့် ပြန်ရောင်းစျေး",
            correctBucketEn: "Negative Correlation",
            correctBucketMy: "Negative Correlation (အနုတ်ဆက်စပ်မှု)",
          ),
          SortingItem(
            id: "s2math-w23-sort-3",
            labelEn: "Ice cream sales and daily temperature",
            labelMy: "ရေခဲမုန့်ရောင်းအားနှင့် နေ့စဉ်အပူချိန်",
            correctBucketEn: "Positive Correlation",
            correctBucketMy: "Positive Correlation (အပေါင်းဆက်စပ်မှု)",
          ),
          SortingItem(
            id: "s2math-w23-sort-4",
            labelEn: "The altitude of a location and its air temperature",
            labelMy: "နေရာတစ်ခု၏ အမြင့်နှင့် ၎င်း၏ လေထုအပူချိန်",
            correctBucketEn: "Negative Correlation",
            correctBucketMy: "Negative Correlation (အနုတ်ဆက်စပ်မှု)",
          ),
          SortingItem(
            id: "s2math-w23-sort-5",
            labelEn: "Plant height and amount of sunlight received",
            labelMy: "အပင်အမြင့်နှင့် ရရှိသောနေရောင်ခြည်ပမာဏ",
            correctBucketEn: "Positive Correlation",
            correctBucketMy: "Positive Correlation (အပေါင်းဆက်စပ်မှု)",
          ),
          SortingItem(
            id: "s2math-w23-sort-6",
            labelEn: "Speed of a journey and the time it takes to arrive",
            labelMy: "ခရီးစဉ်တစ်ခု၏ အလျင်နှင့် ရောက်ရှိရန်ကြာချိန်",
            correctBucketEn: "Negative Correlation",
            correctBucketMy: "Negative Correlation (အနုတ်ဆက်စပ်မှု)",
          ),
          SortingItem(
            id: "s2math-w23-sort-7",
            labelEn: "Distance run and calories burned",
            labelMy: "ပြေးသောအကွာအဝေးနှင့် လောင်ကျွမ်းသော ကယ်လိုရီ",
            correctBucketEn: "Positive Correlation",
            correctBucketMy: "Positive Correlation (အပေါင်းဆက်စပ်မှု)",
          ),
          SortingItem(
            id: "s2math-w23-sort-8",
            labelEn:
                "A phone battery's charge level and hours since it was charged",
            labelMy: "ဖုန်းဘက်ထရီအား အဆင့်နှင့် အားသွင်းပြီးနောက် ကြာချိန်",
            correctBucketEn: "Negative Correlation",
            correctBucketMy: "Negative Correlation (အနုတ်ဆက်စပ်မှု)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w23-d4",
      dayNumber: 4,
      titleEn: "Reading: Mya Investigates Ice Cream Sales",
      titleMy: "စာဖတ်ခြင်း - မြ ရေခဲမုန့်ရောင်းအားကို စုံစမ်းစစ်ဆေးခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Mya Investigates Ice Cream Sales",
        titleMy: "မြ ရေခဲမုန့်ရောင်းအားကို စုံစမ်းစစ်ဆေးခြင်း",
        passageEn:
            "Mya's uncle ran an ice cream stall and wondered whether daily temperature actually affected his sales, or whether it was just his imagination. Mya collected 10 days of data, pairing each day's highest temperature with the number of ice creams sold, and plotted them on a scatter graph.\n\nThe points formed a clear upward pattern: hotter days generally had higher sales, and cooler days generally had lower sales. \"This is positive correlation,\" Mya told her uncle. \"As temperature increases, sales tend to increase too.\" She drew a line of best fit through the middle of the scattered points, noticing it didn't pass through every single point exactly, but captured the overall trend well.\n\nOne day stood out from the pattern: it was hot, but sales were unusually low. \"That's an outlier,\" Mya explained. \"Maybe the stall was closed part of that day, or there was a competing event nearby -- something outside the normal temperature-sales relationship happened.\" Using her line of best fit, Mya's uncle could now estimate sales for a predicted temperature before the day even started, though Mya reminded him it was still just an estimate. \"Correlation shows a relationship exists,\" she said, \"but it doesn't prove temperature directly causes higher sales -- other factors, like weekends or holidays, might matter too.\"",
        passageMy:
            "မြ၏ ဦးလေးသည် ရေခဲမုန့်ဆိုင်ခန်းတစ်ခု လည်ပတ်ခဲ့ပြီး နေ့စဉ်အပူချိန်သည် ၎င်း၏ ရောင်းအားကို အမှန်တကယ် သက်ရောက်မှုရှိမရှိ သို့မဟုတ် ၎င်း၏ စိတ်ကူးသာလား သိလိုခဲ့သည်။ မြသည် ရက် 10 ရက် အချက်အလက်ကို စုဆောင်းခဲ့ပြီး ရက်တစ်ရက်စီ၏ အမြင့်ဆုံးအပူချိန်ကို ရောင်းချသော ရေခဲမုန့်အရေအတွက်နှင့် တွဲစပ်ကာ Scatter ဂရပ်ပေါ်တွင် Plot လုပ်ခဲ့သည်။\n\nအမှတ်များသည် ရှင်းလင်းသော အထက်ရောက်ပုံစံကို ဖွဲ့စည်းခဲ့သည် — ပူပြင်းသောနေ့များတွင် ယေဘုယျအားဖြင့် ရောင်းအားမြင့်ပြီး အေးမြသောနေ့များတွင် ယေဘုယျအားဖြင့် ရောင်းအားနိမ့်ခဲ့သည်။ 'ဒါက Positive Correlation ပါ' ဟု မြက ဦးလေးကို ပြောခဲ့သည်။ 'အပူချိန် တိုးလာသည်နှင့်အမျှ ရောင်းအားလည်း တိုးလာတတ်တယ်' ။ သူမသည် ပျံ့နှံ့နေသော အမှတ်များ၏ အလယ်တွင် Line of Best Fit တစ်ကြောင်း ရေးဆွဲခဲ့ပြီး ၎င်းသည် အမှတ်တစ်ခုချင်းစီကို အတိအကျ မဖြတ်သွားသော်လည်း ယေဘုယျလမ်းကြောင်းကို ကောင်းစွာ ဖမ်းစီးထားသည်ကို သတိပြုမိသည်။\n\nတစ်ရက်သည် ပုံစံမှ ကွဲထွက်ခဲ့သည် — ပူပြင်းသော်လည်း ရောင်းအားသည် ထူးဆန်းစွာ နည်းခဲ့သည်။ 'ဒါက Outlier တစ်ခုပါ' ဟု မြ ရှင်းပြခဲ့သည်။ 'ဆိုင်ကို ထိုနေ့၏ တစ်စိတ်တစ်ပိုင်းအတွင်း ပိတ်ထားလိုက်သလား၊ ဒါမှမဟုတ် အနီးတွင် ယှဉ်ပြိုင်ပွဲတစ်ခု ရှိနေလိုက်သလား — ပုံမှန်အပူချိန်-ရောင်းအား ဆက်စပ်မှုအပြင် တစ်ခုခု ဖြစ်ပျက်ခဲ့တာပါ' ။ သူမ၏ Line of Best Fit ကိုသုံး၍ မြ၏ ဦးလေးသည် နေ့မစတင်မီပင် ခန့်မှန်းအပူချိန်တစ်ခုအတွက် ရောင်းအားကို ခန့်မှန်းနိုင်ခဲ့သော်လည်း ၎င်းသည် ခန့်မှန်းချက်တစ်ခုသာ ဖြစ်ကြောင်း မြက သတိပေးခဲ့သည်။ 'Correlation က ဆက်စပ်မှုတစ်ခု ရှိကြောင်း ပြသတယ်' ဟု သူမက ပြောခဲ့သည်၊ 'ဒါပေမယ့် အပူချိန်က ရောင်းအားမြင့်တက်ခြင်းကို တိုက်ရိုက် ဖြစ်စေတယ်ဆိုတာ မသက်သေပြဘူး — ရက်သတ္တပတ်ဆုံး ရုံးပိတ်ရက်တွေကဲ့သို့ အခြားအချက်များလည်း အရေးကြီးနိုင်တယ်' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what type of correlation did Mya find?",
            questionMy:
                "စာပိုဒ် ၂ အရ မြ မည်သည့် Correlation အမျိုးအစားကို တွေ့ရှိခဲ့သနည်း။",
            optionsEn: [
              "Positive correlation",
              "Negative correlation",
              "No correlation at all",
              "Perfect correlation with no outliers",
            ],
            optionsMy: [
              "Positive Correlation",
              "Negative Correlation",
              "Correlation လုံးဝမရှိခြင်း",
              "Outlier မရှိသော Perfect Correlation",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what was unusual about the outlier day?",
            questionMy:
                "စာပိုဒ် ၃ အရ Outlier ရက်အကြောင်း အထူးအခြားခြင်းသည် အဘယ်နည်း။",
            optionsEn: [
              "It was hot, but sales were unusually low",
              "It was the only day the stall opened at all",
              "It was cold and sales were also low, matching the pattern",
              "It had the highest sales of the whole data set",
            ],
            optionsMy: [
              "ပူပြင်းသော်လည်း ရောင်းအားသည် ထူးဆန်းစွာ နည်းခဲ့ကြောင်း",
              "ဆိုင်ဖွင့်ခဲ့သော တစ်ရက်တည်းသော နေ့ဖြစ်ကြောင်း",
              "အေးမြပြီး ရောင်းအားလည်း နည်းသဖြင့် ပုံစံနှင့် ကိုက်ညီကြောင်း",
              "အချက်အလက်တစ်ခုလုံးထဲမှ ရောင်းအားအမြင့်ဆုံးဖြစ်ကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what could Mya's uncle now do using the line of best fit?",
            questionMy:
                "စာပိုဒ် ၃ အရ Line of Best Fit ကိုသုံး၍ မြ၏ ဦးလေး ယခု မည်သည်ကို ပြုလုပ်နိုင်ခဲ့သနည်း။",
            optionsEn: [
              "Estimate sales for a predicted temperature before the day started",
              "Know the exact sales figure with total certainty every time",
              "Remove all outliers from future data completely",
              "Guarantee identical sales every single day",
            ],
            optionsMy: [
              "နေ့မစတင်မီပင် ခန့်မှန်းအပူချိန်တစ်ခုအတွက် ရောင်းအားကို ခန့်မှန်းရန်",
              "ရောင်းအားကိန်းဂဏန်းအတိအကျကို အချိန်တိုင်း လုံးဝသေချာစွာ သိရန်",
              "နောင်လာမည့် အချက်အလက်မှ Outlier အားလုံးကို လုံးဝ ဖယ်ရှားရန်",
              "နေ့စဉ်တိုင်း ရောင်းအားတူညီစေရန် အာမခံရန်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Mya say correlation does NOT prove?",
            questionMy:
                "စာပိုဒ် ၃ အရ Correlation က မည်သည်ကို မသက်သေပြကြောင်း မြ ပြောခဲ့သနည်း။",
            optionsEn: [
              "That temperature directly causes higher sales",
              "That a relationship exists between the two variables",
              "That the data can be plotted on a graph",
              "That outliers can exist in data",
            ],
            optionsMy: [
              "အပူချိန်က ရောင်းအားမြင့်တက်ခြင်းကို တိုက်ရိုက် ဖြစ်စေကြောင်း",
              "Variable နှစ်ခုကြား ဆက်စပ်မှု ရှိကြောင်း",
              "အချက်အလက်ကို ဂရပ်ပေါ်တွင် Plot လုပ်နိုင်ကြောင်း",
              "Outlier များ အချက်အလက်ထဲတွင် ရှိနိုင်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w23-d5",
      dayNumber: 5,
      titleEn: "Scatter Graphs Recap Quiz",
      titleMy: "Scatter ဂရပ်များ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A scatter graph shows the relationship between...",
          questionMy: "Scatter ဂရပ်တစ်ခုသည် ... ကြား ဆက်စပ်မှုကို ပြသသည်။",
          optionsEn: [
            "Two variables",
            "Only one variable",
            "Profit and loss only",
            "Whole numbers only",
          ],
          optionsMy: [
            "Variable နှစ်ခု",
            "Variable တစ်ခုသာ",
            "အမြတ်နှင့်အရှုံးသာ",
            "ကိန်းပြည့်သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Points rising from bottom-left to top-right show...",
          questionMy:
              "အောက်ဘယ်ဘက်မှ အထက်ညာဘက်သို့ တက်နေသော အမှတ်များသည် ... ကို ပြသသည်။",
          optionsEn: [
            "Positive correlation",
            "Negative correlation",
            "No correlation",
            "An outlier only",
          ],
          optionsMy: [
            "Positive Correlation",
            "Negative Correlation",
            "Correlation မရှိခြင်း",
            "Outlier တစ်ခုသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A car's age and resale value typically show...",
          questionMy:
              "ကား၏ သက်တမ်းနှင့် ပြန်ရောင်းစျေးသည် ယေဘုယျအားဖြင့် ... ကို ပြသသည်။",
          optionsEn: [
            "Negative correlation",
            "Positive correlation",
            "No correlation",
            "Perfect correlation only",
          ],
          optionsMy: [
            "Negative Correlation",
            "Positive Correlation",
            "Correlation မရှိခြင်း",
            "Perfect Correlation သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An outlier is...",
          questionMy: "Outlier တစ်ခုသည် ...",
          optionsEn: [
            "A point far from the overall pattern of the data",
            "The most common point in the data",
            "The line of best fit itself",
            "A point that always sits exactly on the line of best fit",
          ],
          optionsMy: [
            "အချက်အလက်၏ ယေဘုယျပုံစံမှ ဝေးလံစွာ ရှိနေသောအမှတ်",
            "အချက်အလက်ထဲရှိ အသုံးများဆုံးအမှတ်",
            "Line of Best Fit ကိုယ်တိုင်",
            "Line of Best Fit ပေါ်တွင် အမြဲ တိကျစွာ ရှိနေသောအမှတ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Mya's ice cream story, what did the hot day with unusually low sales represent?",
          questionMy:
              "မြ၏ ရေခဲမုန့် ဇာတ်လမ်းတွင် ရောင်းအား ထူးဆန်းစွာနည်းသော ပူပြင်းသောနေ့သည် မည်သည်ကို ကိုယ်စားပြုခဲ့သနည်း။",
          optionsEn: [
            "An outlier",
            "The line of best fit",
            "Positive correlation",
            "The modal class",
          ],
          optionsMy: [
            "Outlier တစ်ခု",
            "Line of Best Fit",
            "Positive Correlation",
            "Modal Class",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek24 = CourseWeekDef(
  id: "course-secondary2-mathematics-w24",
  weekNumber: 24,
  titleEn: "Capstone: Statistical Investigation",
  titleMy: "အထွတ်အထိပ် - စာရင်းအင်း စုံစမ်းစစ်ဆေးမှု",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w24-d1",
      dayNumber: 1,
      titleEn: "Hypothesis Testing, Data Analysis, and Reporting",
      titleMy:
          "Hypothesis စမ်းသပ်ခြင်း၊ အချက်အလက်ခွဲခြမ်းစိတ်ဖြာခြင်းနှင့် အစီရင်ခံခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a hypothesis in a statistical investigation?",
          questionMy:
              "စာရင်းအင်း စုံစမ်းစစ်ဆေးမှုတစ်ခုတွင် Hypothesis ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A testable prediction made before collecting and analysing data",
            "The final conclusion after all data has been analysed",
            "A type of scatter graph",
            "A rule that must always be true, no testing needed",
          ],
          optionsMy: [
            "အချက်အလက် မစုဆောင်းမီ၊ ခွဲခြမ်းစိတ်ဖြာမီ ပြုလုပ်သော စမ်းသပ်နိုင်သည့် ခန့်မှန်းချက်",
            "အချက်အလက်အားလုံး ခွဲခြမ်းစိတ်ဖြာပြီးနောက် နောက်ဆုံးနိဂုံးချုပ်ချက်",
            "Scatter ဂရပ် အမျိုးအစားတစ်ခု",
            "စမ်းသပ်ရန် မလိုအပ်ဘဲ အမြဲ မှန်ကန်ရမည့် စည်းမျဉ်းတစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "A hypothesis comes first, before any data is gathered.",
            "For example: \"Students who study more hours score higher on tests\" -- this is testable using real data.",
          ],
          hintsMy: [
            "Hypothesis သည် အချက်အလက် မစုဆောင်းမီ ပထမဆုံး လာသည်။",
            "ဥပမာ — 'နာရီပိုများများလေ့လာသော ကျောင်းသားများသည် စာမေးပွဲတွင် ရမှတ်ပိုမြင့်သည်' — ၎င်းသည် အချက်အလက်အမှန်ဖြင့် စမ်းသပ်နိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A survey of 60 students shows a positive correlation between hours studied and test scores. Does this alone prove studying causes higher scores?",
          questionMy:
              "ကျောင်းသား 60 ဦး စစ်တမ်းတစ်ခုက လေ့လာသောနာရီနှင့် စာမေးပွဲရမှတ်ကြား Positive Correlation ကို ပြသသည်။ ဤတစ်ခုတည်းက စာလေ့လာခြင်းသည် ရမှတ်မြင့်တက်စေကြောင်း သက်သေပြပါသလား။",
          optionsEn: [
            "No, correlation alone does not prove causation",
            "Yes, correlation always proves one thing causes another",
            "It proves the opposite is true instead",
            "It proves nothing was measured correctly",
          ],
          optionsMy: [
            "မဟုတ်ပါ၊ Correlation တစ်ခုတည်းသည် Causation ကို မသက်သေပြပါ",
            "ဟုတ်ကဲ့၊ Correlation သည် တစ်ခုက အခြားတစ်ခုကို ဖြစ်စေကြောင်း အမြဲ သက်သေပြသည်",
            "ဆန့်ကျင်ဘက်က မှန်ကန်ကြောင်း သက်သေပြသည်",
            "မည်သည့်အရာကိုမျှ မှန်ကန်စွာ မတိုင်းတာခဲ့ကြောင်း သက်သေပြသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 23: correlation shows a relationship exists, but other factors might explain it too.",
            "Perhaps more motivated students both study more AND naturally perform better, rather than studying itself being the only cause.",
          ],
          hintsMy: [
            "Week 23 ကို ပြန်တွေးကြည့်ပါ — Correlation က ဆက်စပ်မှုတစ်ခု ရှိကြောင်း ပြသသော်လည်း အခြားအချက်များကလည်း ရှင်းပြနိုင်သည်။",
            "စိတ်ဓာတ်ပိုမြင့်သော ကျောင်းသားများသည် ပိုလေ့လာသည့်အပြင် သဘာဝအလျောက် ပိုကောင်းစွာ လုပ်ဆောင်နိုင်ကြသောကြောင့် ဖြစ်နိုင်ပြီး စာလေ့လာခြင်းသာလျှင် တစ်ခုတည်းသောအကြောင်းရင်း မဟုတ်နိုင်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why is it important to have a large, representative sample in a statistical investigation?",
          questionMy:
              "စာရင်းအင်း စုံစမ်းစစ်ဆေးမှုတစ်ခုတွင် ကြီးမား၊ ကိုယ်စားပြုနိုင်သော Sample ရှိရန် အဘယ်ကြောင့် အရေးကြီးသနည်း။",
          optionsEn: [
            "A small or biased sample may not accurately reflect the whole population",
            "Small samples always give more accurate results than large ones",
            "Sample size never actually matters for any investigation",
            "Only samples of exactly 100 people count as valid",
          ],
          optionsMy: [
            "Sample သေးငယ် သို့မဟုတ် ဘက်လိုက်မှုရှိပါက လူဦးရေတစ်ခုလုံးကို တိကျစွာ ထင်ဟပ်ကြောင်း မမည်သောကြောင့်",
            "Sample သေးငယ်များသည် ကြီးမားသော Sample များထက် အမြဲ ပိုတိကျသောကြောင့်",
            "Sample အရွယ်အစားသည် စုံစမ်းစစ်ဆေးမှုမည်သည့်အတွက်မဆို အမှန်တကယ် အရေးမကြီးသောကြောင့်",
            "လူ 100 ဦးအတိအကျ ပါဝင်သော Sample သာ တရားဝင်ဖြစ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "If you only survey 5 friends, your results might not represent the whole school accurately.",
            "A larger, more varied sample reduces the chance of the results being skewed by unusual individuals.",
          ],
          hintsMy: [
            "သူငယ်ချင်း 5 ဦးကိုသာ စစ်တမ်းကောက်ယူပါက သင်၏ ရလဒ်များသည် ကျောင်းတစ်ခုလုံးကို တိကျစွာ ကိုယ်စားပြု မည်မဟုတ်နိုင်ပါ။",
            "ကြီးမား၊ ပိုမတူညီသော Sample သည် ထူးဆန်းသောလူပုဂ္ဂိုလ်များက ရလဒ်များကို ကွေ့ညွှတ်စေနိုင်ခြေကို လျှော့ချပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What should a good statistical report include?",
          questionMy:
              "ကောင်းမွန်သော စာရင်းအင်းအစီရင်ခံစာတစ်ခုတွင် မည်သည့်အချက်များ ပါဝင်သင့်သနည်း။",
          optionsEn: [
            "The hypothesis, the data collected, the analysis method, and a clear conclusion",
            "Only a list of raw numbers with no explanation at all",
            "Only the final conclusion, with no supporting evidence",
            "Random guesses with no data behind them",
          ],
          optionsMy: [
            "Hypothesis, စုဆောင်းထားသော အချက်အလက်, ခွဲခြမ်းစိတ်ဖြာနည်းနှင့် ရှင်းလင်းသော နိဂုံးချုပ်ချက်",
            "ရှင်းလင်းချက် လုံးဝမပါဘဲ ဂဏန်းစာရင်း အစိုးမရသာ",
            "နောက်ခံသက်သေမပါဘဲ နောက်ဆုံးနိဂုံးချုပ်ချက်သာ",
            "အချက်အလက် နောက်ခံမရှိသော ကျပန်းခန့်မှန်းချက်များ",
          ],
          correctIndex: 0,
          hintsEn: [
            "A good report lets someone else follow your reasoning from question to answer.",
            "It should tell the whole story: what you predicted, what you found, how you found it, and what it means.",
          ],
          hintsMy: [
            "ကောင်းမွန်သော အစီရင်ခံစာတစ်ခုသည် အခြားလူတစ်ဦးအား သင်၏ မေးခွန်းမှ အဖြေအထိ ဆင်ခြင်တွေးခေါ်မှုကို လိုက်နာနိုင်စေသည်။",
            "၎င်းသည် ဇာတ်လမ်းတစ်ခုလုံးကို ပြောပြသင့်သည် — မည်သို့ ခန့်မှန်းခဲ့သနည်း၊ မည်သည်ကို တွေ့ရှိခဲ့သနည်း၊ မည်သို့ ရှာတွေ့ခဲ့သနည်း၊ ၎င်းက မည်သည်ကို ဆိုလိုသနည်း။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w24-d2",
      dayNumber: 2,
      titleEn: "Match the Whole-Term Vocabulary",
      titleMy: "တစ်သင်တန်းလုံး ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w24-dm-1",
          termEn: "Hypothesis",
          termMy: "Hypothesis (စမ်းသပ်ခန့်မှန်းချက်)",
          matchEn:
              "A testable prediction made before collecting and analysing data",
          matchMy:
              "အချက်အလက် မစုဆောင်းမီ ပြုလုပ်သော စမ်းသပ်နိုင်သည့် ခန့်မှန်းချက်",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w24-dm-2",
          termEn: "Sample",
          termMy: "Sample (နမူနာအစု)",
          matchEn:
              "A smaller group selected from a larger population to represent it",
          matchMy:
              "ကြီးမားသော လူဦးရေကို ကိုယ်စားပြုရန် ရွေးချယ်ထားသော ငယ်သောအုပ်စု",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w24-dm-3",
          termEn: "Correlation vs Causation",
          termMy: "Correlation နှင့် Causation ကွာခြားချက်",
          matchEn:
              "The idea that a relationship between two things does not always mean one causes the other",
          matchMy:
              "အရာနှစ်ခုကြား ဆက်စပ်မှုသည် တစ်ခုက အခြားတစ်ခုကို ဖြစ်စေသည်ဟု အမြဲ ဆိုလိုချင်ခြင်းမဟုတ်ဟူသောအယူအဆ",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w24-dm-4",
          termEn: "Data Analysis",
          termMy: "အချက်အလက် ခွဲခြမ်းစိတ်ဖြာခြင်း",
          matchEn:
              "Examining collected data to find patterns and draw conclusions",
          matchMy:
              "ပုံစံများ ရှာဖွေရန်နှင့် နိဂုံးချုပ်ချက်များ ဆွဲရန် စုဆောင်းထားသော အချက်အလက်ကို စစ်ဆေးခြင်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w24-dm-5",
          termEn: "Conclusion",
          termMy: "နိဂုံးချုပ်ချက် (Conclusion)",
          matchEn:
              "A final statement about whether the data supports or rejects the hypothesis",
          matchMy:
              "အချက်အလက်သည် Hypothesis ကို ထောက်ခံသလား၊ ငြင်းပယ်သလား ဆိုသော နောက်ဆုံးဖော်ပြချက်",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w24-dm-6",
          termEn: "Statistical Report",
          termMy: "စာရင်းအင်း အစီရင်ခံစာ",
          matchEn:
              "A written summary of a hypothesis, data, analysis, and conclusion",
          matchMy:
              "Hypothesis, အချက်အလက်, ခွဲခြမ်းစိတ်ဖြာမှုနှင့် နိဂုံးချုပ်ချက်၏ ရေးသားထားသော အနှစ်ချုပ်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w24-d3",
      dayNumber: 3,
      titleEn: "Sort: Part of a Good Investigation or Not?",
      titleMy:
          "စီစစ်ကြမည် - စုံစမ်းစစ်ဆေးမှုကောင်းတစ်ခု၏ အစိတ်အပိုင်းလား၊ မဟုတ်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Part of a Good Investigation",
          "Not Part of a Good Investigation",
        ],
        bucketsMy: [
          "စုံစမ်းစစ်ဆေးမှုကောင်း၏ အစိတ်အပိုင်း",
          "စုံစမ်းစစ်ဆေးမှုကောင်း၏ အစိတ်အပိုင်း မဟုတ်ပါ",
        ],
        items: [
          SortingItem(
            id: "s2math-w24-sort-1",
            labelEn: "Writing a clear hypothesis before collecting data",
            labelMy:
                "အချက်အလက် မစုဆောင်းမီ ရှင်းလင်းသော Hypothesis ရေးသားခြင်း",
            correctBucketEn: "Part of a Good Investigation",
            correctBucketMy: "စုံစမ်းစစ်ဆေးမှုကောင်း၏ အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "s2math-w24-sort-2",
            labelEn:
                "Surveying only 3 friends and calling it representative of the whole school",
            labelMy:
                "သူငယ်ချင်း 3 ဦးကိုသာ စစ်တမ်းကောက်ယူပြီး ကျောင်းတစ်ခုလုံးကို ကိုယ်စားပြုသည်ဟု ခေါ်ခြင်း",
            correctBucketEn: "Not Part of a Good Investigation",
            correctBucketMy: "စုံစမ်းစစ်ဆေးမှုကောင်း၏ အစိတ်အပိုင်း မဟုတ်ပါ",
          ),
          SortingItem(
            id: "s2math-w24-sort-3",
            labelEn: "Using a large, varied sample of students",
            labelMy: "ကျောင်းသား ကြီးမား၊ ကွဲပြားသော Sample ကို အသုံးပြုခြင်း",
            correctBucketEn: "Part of a Good Investigation",
            correctBucketMy: "စုံစမ်းစစ်ဆေးမှုကောင်း၏ အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "s2math-w24-sort-4",
            labelEn:
                "Claiming correlation proves causation without further evidence",
            labelMy:
                "နောက်ထပ်သက်သေမရှိဘဲ Correlation က Causation ကို သက်သေပြသည်ဟု ပြောဆိုခြင်း",
            correctBucketEn: "Not Part of a Good Investigation",
            correctBucketMy: "စုံစမ်းစစ်ဆေးမှုကောင်း၏ အစိတ်အပိုင်း မဟုတ်ပါ",
          ),
          SortingItem(
            id: "s2math-w24-sort-5",
            labelEn: "Reporting both the hypothesis and the actual data found",
            labelMy:
                "Hypothesis နှင့် တွေ့ရှိထားသော အချက်အလက်အမှန် နှစ်ခုစလုံးကို အစီရင်ခံခြင်း",
            correctBucketEn: "Part of a Good Investigation",
            correctBucketMy: "စုံစမ်းစစ်ဆေးမှုကောင်း၏ အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "s2math-w24-sort-6",
            labelEn:
                "Ignoring data that doesn't support the original hypothesis",
            labelMy:
                "မူလ Hypothesis ကို မထောက်ခံသော အချက်အလက်ကို လျစ်လျူရှုခြင်း",
            correctBucketEn: "Not Part of a Good Investigation",
            correctBucketMy: "စုံစမ်းစစ်ဆေးမှုကောင်း၏ အစိတ်အပိုင်း မဟုတ်ပါ",
          ),
          SortingItem(
            id: "s2math-w24-sort-7",
            labelEn: "Drawing a conclusion based on the actual data collected",
            labelMy:
                "စုဆောင်းထားသော အချက်အလက်အမှန်ကို အခြေခံ၍ နိဂုံးချုပ်ခြင်း",
            correctBucketEn: "Part of a Good Investigation",
            correctBucketMy: "စုံစမ်းစစ်ဆေးမှုကောင်း၏ အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "s2math-w24-sort-8",
            labelEn:
                "Changing the hypothesis after seeing the results to match them",
            labelMy:
                "ရလဒ်များကို တွေ့ရှိပြီးနောက် ကိုက်ညီစေရန် Hypothesis ကို ပြောင်းလဲခြင်း",
            correctBucketEn: "Not Part of a Good Investigation",
            correctBucketMy: "စုံစမ်းစစ်ဆေးမှုကောင်း၏ အစိတ်အပိုင်း မဟုတ်ပါ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w24-d4",
      dayNumber: 4,
      titleEn: "Reading: The School Break-Time Investigation",
      titleMy: "စာဖတ်ခြင်း - ကျောင်းအားလပ်ချိန် စုံစမ်းစစ်ဆေးမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The School Break-Time Investigation",
        titleMy: "ကျောင်းအားလပ်ချိန် စုံစမ်းစစ်ဆေးမှု",
        passageEn:
            "For the term's final project, Su Su, Thiri, and Mya conducted a full statistical investigation into whether students who ate breakfast performed better on morning quizzes. Their hypothesis was clear from the start: \"Students who eat breakfast score higher on morning quizzes than students who skip it.\"\n\nRather than asking only their close friends, they surveyed all 80 students across two year groups, recording each student's breakfast habit (yes or no) alongside their most recent quiz score. Grouping the data, they found the average score for breakfast-eaters was 78%, while the average for those who skipped breakfast was 64% -- a meaningful 14-point gap.\n\nBefore celebrating, Thiri raised an important caution: \"This is correlation, not proof of causation. Maybe students who eat breakfast also tend to sleep better, or have more organised morning routines overall -- breakfast itself might not be the only real cause.\" The team agreed to note this limitation clearly in their report rather than overstating their conclusion.\n\nTheir final report included all four required parts: the original hypothesis, a summary of their 80-student data set, their analysis showing the 14-point average gap, and a careful conclusion: \"Our data supports a link between breakfast and morning quiz performance, though other factors may also contribute, and this investigation cannot prove breakfast alone causes the difference.\" Their teacher praised the report specifically for not overclaiming, calling it a genuinely well-conducted piece of statistical work.",
        passageMy:
            "သင်တန်း၏ နောက်ဆုံးစီမံကိန်းအတွက် စုစု၊ သီရိနှင့် မြတို့သည် နံနက်ခင်း စားနေသော ကျောင်းသားများသည် နံနက်ပိုင်း ပဟေဠိများတွင် ပိုကောင်းစွာ လုပ်ဆောင်ကြောင်းလား ဟူသော စာရင်းအင်း စုံစမ်းစစ်ဆေးမှုအပြည့်အစုံကို ပြုလုပ်ခဲ့ကြသည်။ ၎င်းတို့၏ Hypothesis သည် အစကတည်းက ရှင်းလင်းခဲ့သည် — 'နံနက်စာစားသော ကျောင်းသားများသည် ကျော်လွှားသော ကျောင်းသားများထက် နံနက်ခင်း ပဟေဠိများတွင် ရမှတ်ပိုမြင့်သည်' ။\n\nသူတို့၏ ရင်းနှီးသောသူငယ်ချင်းများကိုသာ မေးမြန်းမည့်အစား ၎င်းတို့သည် တန်းအုပ်စုနှစ်ခုမှ ကျောင်းသား 80 ဦးလုံးကို စစ်တမ်းကောက်ယူခဲ့ပြီး ကျောင်းသားတစ်ဦးစီ၏ နံနက်စာအလေ့အထ (ဟုတ် သို့မဟုတ် မဟုတ်) ကို ၎င်းတို့၏ လတ်တလောစာမေးပွဲ ရမှတ်နှင့်အတူ မှတ်တမ်းတင်ခဲ့သည်။ အချက်အလက်ကို အုပ်စုဖွဲ့လိုက်ရာ နံနက်စာစားသူများ၏ ပျမ်းမျှရမှတ်သည် 78% ဖြစ်ပြီး နံနက်စာကျော်လွှားသူများ၏ ပျမ်းမျှမှာ 64% ဖြစ်ကြောင်း တွေ့ရှိခဲ့သည် — အဓိပ္ပာယ်ရှိသော 14 မှတ် ကွာဟမှုတစ်ခုပင်။\n\nဂုဏ်ယူဝမ်းမြောက်မှု မတိုင်မီ သီရိသည် အရေးကြီးသော သတိပေးချက်တစ်ခု ထောက်ပြခဲ့သည် — 'ဒါက Correlation ပါ၊ Causation ၏ သက်သေမဟုတ်ပါ။ နံနက်စာစားသော ကျောင်းသားများသည် ပိုကောင်းစွာ အိပ်စက်ခြင်း သို့မဟုတ် ယေဘုယျအားဖြင့် ပိုစုစည်းထားသော နံနက်ခင်း အလေ့အကျင့်များ ရှိနိုင်ကြသောကြောင့် နံနက်စာကိုယ်တိုင်သည် တစ်ခုတည်းသော စစ်မှန်သော အကြောင်းရင်း မဖြစ်နိုင်ပါ' ။ ၎င်းတို့၏ Report တွင် ၎င်းတို့၏ နိဂုံးချုပ်ချက်ကို ချဲ့ကားလွန်းမည့်အစား ဤကန့်သတ်ချက်ကို ရှင်းလင်းစွာ မှတ်ချက်ပြုရန် အဖွဲ့က သဘောတူညီခဲ့ကြသည်။\n\n၎င်းတို့၏ နောက်ဆုံးအစီရင်ခံစာတွင် လိုအပ်သော အပိုင်းလေးပိုင်းလုံး ပါဝင်ခဲ့သည် — မူလ Hypothesis၊ ကျောင်းသား 80 ဦး၏ အချက်အလက်အနှစ်ချုပ်၊ 14 မှတ် ပျမ်းမျှကွာဟမှုကို ပြသသော ၎င်းတို့၏ ခွဲခြမ်းစိတ်ဖြာမှုနှင့် ဂရုတစိုက်ရေးသားထားသော နိဂုံးချုပ်ချက် — 'ကျွန်ုပ်တို့၏ အချက်အလက်သည် နံနက်စာနှင့် နံနက်ခင်း ပဟေဠိစွမ်းဆောင်ရည်ကြား ဆက်စပ်မှုတစ်ခုကို ထောက်ခံသော်လည်း အခြားအချက်များလည်း အကျိုးသက်ရောက်နိုင်ပြီး ဤစုံစမ်းစစ်ဆေးမှုသည် နံနက်စာတစ်ခုတည်းသာ ကွာခြားမှုကို ဖြစ်စေသည်ဟု မသက်သေပြနိုင်ပါ' ။ ၎င်းတို့ဆရာမက Report ကို ချဲ့ကားလွန်းခြင်း မရှိခဲ့သည့်အတွက် အထူးချီးမွမ်းခဲ့ပြီး ၎င်းကို စစ်မှန်စွာ ကောင်းမွန်စွာ ပြုလုပ်ထားသော စာရင်းအင်းအလုပ်တစ်ခုအဖြစ် ခေါ်ဆိုခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what was the team's hypothesis?",
            questionMy: "စာပိုဒ် ၁ အရ အဖွဲ့၏ Hypothesis မှာ အဘယ်နည်း။",
            optionsEn: [
              "Students who eat breakfast score higher on morning quizzes than those who skip it",
              "All students score exactly the same regardless of breakfast",
              "Breakfast has no connection to quiz scores at all",
              "Only students who skip breakfast score well",
            ],
            optionsMy: [
              "နံနက်စာစားသော ကျောင်းသားများသည် ကျော်လွှားသူများထက် နံနက်ခင်း ပဟေဠိများတွင် ရမှတ်ပိုမြင့်ကြောင်း",
              "ကျောင်းသားအားလုံးသည် နံနက်စာနှင့် သက်ဆိုင်စရာမလိုဘဲ ရမှတ်အတိအကျ တူညီကြောင်း",
              "နံနက်စာသည် ပဟေဠိရမှတ်နှင့် လုံးဝ ဆက်စပ်မှု မရှိကြောင်း",
              "နံနက်စာ ကျော်လွှားသော ကျောင်းသားများသာ ကောင်းစွာ ရမှတ်ရကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how many students were surveyed?",
            questionMy:
                "စာပိုဒ် ၂ အရ ကျောင်းသား ဘယ်နှဦး စစ်တမ်းကောက်ယူခဲ့သနည်း။",
            optionsEn: ["80", "40", "14", "64"],
            optionsMy: ["80", "40", "14", "64"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what caution did Thiri raise?",
            questionMy:
                "စာပိုဒ် ၃ အရ သီရိ မည်သည့်သတိပေးချက်ကို ထောက်ပြခဲ့သနည်း။",
            optionsEn: [
              "That correlation is not proof of causation, and other factors might contribute",
              "That the data was completely fake and should be discarded",
              "That only 3 students were actually surveyed",
              "That breakfast has been proven scientifically to cause higher scores",
            ],
            optionsMy: [
              "Correlation သည် Causation ၏ သက်သေမဟုတ်ပြီး အခြားအချက်များလည်း အကျိုးသက်ရောက်နိုင်ကြောင်း",
              "အချက်အလက်သည် လုံးဝ အတုဖြစ်ပြီး စွန့်ပစ်သင့်ကြောင်း",
              "ကျောင်းသား 3 ဦးကိုသာ အမှန်တကယ် စစ်တမ်းကောက်ယူခဲ့ကြောင်း",
              "နံနက်စာသည် ရမှတ်မြင့်တက်စေကြောင်း သိပ္ပံနည်းကျ သက်သေပြပြီးဖြစ်ကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, why did the teacher praise the report?",
            questionMy:
                "စာပိုဒ် ၄ အရ ဆရာမ Report ကို အဘယ်ကြောင့် ချီးမွမ်းခဲ့သနည်း။",
            optionsEn: [
              "It did not overclaim its conclusion",
              "It contained only a hypothesis with no data at all",
              "It ignored all limitations in the investigation",
              "It claimed breakfast was proven to be the only cause",
            ],
            optionsMy: [
              "၎င်း၏ နိဂုံးချုပ်ချက်ကို ချဲ့ကားလွန်း၍ မတင်ပြခဲ့သောကြောင့်",
              "Hypothesis တစ်ခုတည်းသာ ပါဝင်ပြီး အချက်အလက် လုံးဝမပါခဲ့ကြောင့်",
              "စုံစမ်းစစ်ဆေးမှုရှိ ကန့်သတ်ချက်အားလုံးကို လျစ်လျူရှုထားခဲ့ကြောင့်",
              "နံနက်စာသည် တစ်ခုတည်းသောအကြောင်းရင်းဟု သက်သေပြပြီးဖြစ်ကြောင်း ပြောဆိုခဲ့ကြောင့်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w24-d5",
      dayNumber: 5,
      titleEn: "Statistics and Data Presentation Term Round-Up",
      titleMy: "စာရင်းအင်းနှင့် အချက်အလက်တင်ပြခြင်း သင်တန်း အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A hypothesis is...",
          questionMy: "Hypothesis တစ်ခုသည် ...",
          optionsEn: [
            "A testable prediction made before collecting data",
            "A final conclusion made after all analysis",
            "A type of scatter graph",
            "A rule that never needs testing",
          ],
          optionsMy: [
            "အချက်အလက် မစုဆောင်းမီ ပြုလုပ်သော စမ်းသပ်နိုင်သည့် ခန့်မှန်းချက်",
            "ခွဲခြမ်းစိတ်ဖြာမှုအားလုံးပြီးနောက် ပြုလုပ်သော နောက်ဆုံးနိဂုံးချုပ်ချက်",
            "Scatter ဂရပ် အမျိုးအစားတစ်ခု",
            "စမ်းသပ်ရန် လိုအပ်ခြင်းမရှိသောစည်းမျဉ်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Correlation alone...",
          questionMy: "Correlation တစ်ခုတည်းသည် ...",
          optionsEn: [
            "Does not prove causation",
            "Always proves one thing causes another",
            "Proves the exact opposite is true",
            "Means the data was collected incorrectly",
          ],
          optionsMy: [
            "Causation ကို မသက်သေပြပါ",
            "တစ်ခုက အခြားတစ်ခုကို ဖြစ်စေကြောင်း အမြဲ သက်သေပြသည်",
            "အတိအကျ ဆန့်ကျင်ဘက်က မှန်ကန်ကြောင်း သက်သေပြသည်",
            "အချက်အလက်ကို မမှန်ကန်စွာ စုဆောင်းခဲ့ကြောင်း ဆိုလိုသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A grouped frequency table is used for...",
          questionMy: "စုစည်းထားသော Frequency ဇယားကို ... ရန် အသုံးပြုသည်။",
          optionsEn: [
            "Summarising a large spread of data into manageable groups",
            "Proving causation directly",
            "Removing the need for a hypothesis",
            "Making data completely random",
          ],
          optionsMy: [
            "အချက်အလက်များစွာ ပျံ့နှံ့နေသည်ကို ကိုင်တွယ်နိုင်သော အုပ်စုများအဖြစ် အနှစ်ချုပ်ရန်",
            "Causation ကို တိုက်ရိုက် သက်သေပြရန်",
            "Hypothesis လိုအပ်ချက်ကို ဖယ်ရှားရန်",
            "အချက်အလက်ကို လုံးဝ ကျပန်းဖြစ်စေရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A good statistical report should include...",
          questionMy:
              "ကောင်းမွန်သော စာရင်းအင်းအစီရင်ခံစာတစ်ခုတွင် ... ပါဝင်သင့်သည်။",
          optionsEn: [
            "The hypothesis, data, analysis, and a careful conclusion",
            "Only the conclusion, with no supporting evidence",
            "Only raw numbers with no explanation",
            "Guesses with no data behind them",
          ],
          optionsMy: [
            "Hypothesis, အချက်အလက်, ခွဲခြမ်းစိတ်ဖြာမှုနှင့် ဂရုတစိုက်ရေးသားထားသော နိဂုံးချုပ်ချက်",
            "နောက်ခံသက်သေမပါဘဲ နိဂုံးချုပ်ချက်သာ",
            "ရှင်းလင်းချက်မပါဘဲ ဂဏန်းစာရင်း အစိုးမရသာ",
            "အချက်အလက် နောက်ခံမရှိသော ခန့်မှန်းချက်များ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the breakfast investigation, what was the average score gap between the two groups?",
          questionMy:
              "နံနက်စာ စုံစမ်းစစ်ဆေးမှုတွင် အုပ်စုနှစ်ခုကြား ပျမ်းမျှရမှတ်ကွာဟမှုမှာ အဘယ်နည်း။",
          optionsEn: ["14 points", "80 points", "64 points", "78 points"],
          optionsMy: ["14 points", "80 points", "64 points", "78 points"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary2MathematicsTerm6 = CourseTermDef(
  id: "course-secondary2-mathematics-t6",
  termNumber: 6,
  titleEn: "Statistics and Data Presentation",
  titleMy: "စာရင်းအင်းနှင့် အချက်အလက်တင်ပြခြင်း",
  certificateTitleEn: "Statistics and Data Presentation",
  certificateTitleMy: "စာရင်းအင်းနှင့် အချက်အလက်တင်ပြခြင်း",
  weeks: [
    _secondary2MathematicsWeek21,
    _secondary2MathematicsWeek22,
    _secondary2MathematicsWeek23,
    _secondary2MathematicsWeek24,
  ],
);
