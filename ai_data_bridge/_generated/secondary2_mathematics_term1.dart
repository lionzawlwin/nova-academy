const CourseWeekDef _secondary2MathematicsWeek1 = CourseWeekDef(
  id: "course-secondary2-mathematics-w1",
  weekNumber: 1,
  titleEn: "Working with Integers",
  titleMy: "ကိန်းပြည့်များဖြင့် တွက်ချက်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w1-d1",
      dayNumber: 1,
      titleEn: "Multiplying and Dividing Integers",
      titleMy: "ကိန်းပြည့်များကို မြှောက်ခြင်းနှင့် စားခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is (-6) × (-4)?",
          questionMy: "(-6) × (-4) သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["24", "-24", "10", "-10"],
          optionsMy: ["24", "-24", "10", "-10"],
          correctIndex: 0,
          hintsEn: [
            "When you multiply two negative numbers together, the negatives cancel out.",
            "Same signs (negative × negative, or positive × positive) always give a positive answer.",
          ],
          hintsMy: [
            "အနုတ်ဂဏန်းနှစ်ခုကို အတူတကွမြှောက်လိုက်သောအခါ အနုတ်လက္ခဏာများ ပယ်ဖျက်သွားသည်။",
            "လက္ခဏာတူသည့်အခါ (အနုတ်×အနုတ်၊ သို့မဟုတ် အပေါင်း×အပေါင်း) အဖြေသည် အမြဲ အပေါင်းဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is (-15) ÷ 3?",
          questionMy: "(-15) ÷ 3 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["-5", "5", "-18", "18"],
          optionsMy: ["-5", "5", "-18", "18"],
          correctIndex: 0,
          hintsEn: [
            "One number is negative and the other is positive, so the rule for different signs applies.",
            "Different signs (negative ÷ positive, or positive ÷ negative) always give a negative answer.",
          ],
          hintsMy: [
            "ဂဏန်းတစ်ခုသည် အနုတ်ဖြစ်ပြီး အခြားတစ်ခုသည် အပေါင်းဖြစ်သောကြောင့် လက္ခဏာမတူသည့် စည်းမျဉ်းကို အသုံးပြုရသည်။",
            "လက္ခဏာမတူသည့်အခါ (အနုတ်÷အပေါင်း၊ သို့မဟုတ် အပေါင်း÷အနုတ်) အဖြေသည် အမြဲ အနုတ်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is (-2) × 3 × (-4)?",
          questionMy: "(-2) × 3 × (-4) သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["24", "-24", "9", "-9"],
          optionsMy: ["24", "-24", "9", "-9"],
          correctIndex: 0,
          hintsEn: [
            "Work left to right: (-2) × 3 = -6 first, then -6 × (-4).",
            "Two negative signs appear in total across the whole calculation -- an even number of negatives gives a positive final answer.",
          ],
          hintsMy: [
            "ဘယ်မှညာသို့ တွက်ချက်ပါ — ပထမဆုံး (-2) × 3 = -6၊ ထို့နောက် -6 × (-4)။",
            "တွက်ချက်မှုတစ်ခုလုံးတွင် အနုတ်လက္ခဏာ စုစုပေါင်း နှစ်ခုပေါ်လာသည် — အနုတ်အရေအတွက် စုံပါက နောက်ဆုံးအဖြေသည် အပေါင်းဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Using BODMAS, what is -3 + 4 × (-2)?",
          questionMy: "BODMAS ကို အသုံးပြု၍ -3 + 4 × (-2) သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["-11", "14", "-2", "2"],
          optionsMy: ["-11", "14", "-2", "2"],
          correctIndex: 0,
          hintsEn: [
            "BODMAS means multiplication happens before addition, even when negative numbers are involved.",
            "First calculate 4 × (-2) = -8, then -3 + (-8) = -11.",
          ],
          hintsMy: [
            "BODMAS ဆိုသည်မှာ အနုတ်ဂဏန်းများ ပါဝင်နေသည့်တိုင် မြှောက်ခြင်းကို အပေါင်းခြင်းမတိုင်မီ အရင်လုပ်ရသည်။",
            "ပထမဆုံး 4 × (-2) = -8 ကို တွက်ပြီး ထို့နောက် -3 + (-8) = -11 ကို တွက်ပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w1-d2",
      dayNumber: 2,
      titleEn: "Match the Integer Vocabulary",
      titleMy: "ကိန်းပြည့် ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w1-dm-1",
          termEn: "Integer",
          termMy: "ကိန်းပြည့် (Integer)",
          matchEn: "A whole number that can be positive, negative, or zero",
          matchMy: "အပေါင်း၊ အနုတ် သို့မဟုတ် သုည ဖြစ်နိုင်သော ကိန်းပြည့်",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w1-dm-2",
          termEn: "BODMAS",
          termMy: "BODMAS (တွက်ချက်မှုအစီအစဉ်)",
          matchEn:
              "The order of operations: Brackets, Orders, Division/Multiplication, Addition/Subtraction",
          matchMy:
              "တွက်ချက်မှုအစီအစဉ် - ကွင်း၊ ထပ်ကိန်း၊ စား/မြှောက်၊ ပေါင်း/နုတ်",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w1-dm-3",
          termEn: "Same Signs Rule",
          termMy: "လက္ခဏာတူညီမှု စည်းမျဉ်း",
          matchEn:
              "Multiplying or dividing two numbers with the same sign gives a positive answer",
          matchMy:
              "လက္ခဏာတူသည့် ဂဏန်းနှစ်ခုကို မြှောက်ခြင်း သို့မဟုတ် စားခြင်းသည် အပေါင်းအဖြေ ရရှိစေသည်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w1-dm-4",
          termEn: "Different Signs Rule",
          termMy: "လက္ခဏာမတူညီမှု စည်းမျဉ်း",
          matchEn:
              "Multiplying or dividing two numbers with different signs gives a negative answer",
          matchMy:
              "လက္ခဏာမတူသည့် ဂဏန်းနှစ်ခုကို မြှောက်ခြင်း သို့မဟုတ် စားခြင်းသည် အနုတ်အဖြေ ရရှိစေသည်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w1-dm-5",
          termEn: "Product",
          termMy: "ရလဒ် (မြှောက်ခြင်း) (Product)",
          matchEn: "The result of multiplying two or more numbers",
          matchMy:
              "ဂဏန်းနှစ်ခု သို့မဟုတ် ထို့ထက်ပိုသော ဂဏန်းများကို မြှောက်ရာမှ ရရှိသောရလဒ်",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w1-dm-6",
          termEn: "Quotient",
          termMy: "ရလဒ် (စားခြင်း) (Quotient)",
          matchEn: "The result of dividing one number by another",
          matchMy: "ဂဏန်းတစ်ခုကို အခြားတစ်ခုဖြင့် စားရာမှ ရရှိသောရလဒ်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w1-d3",
      dayNumber: 3,
      titleEn: "Sort: Positive Result or Negative Result?",
      titleMy: "စီစစ်ကြမည် - အဖြေ အပေါင်းလား၊ အနုတ်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Positive Result", "Negative Result"],
        bucketsMy: ["အဖြေ အပေါင်း", "အဖြေ အနုတ်"],
        items: [
          SortingItem(
            id: "s2math-w1-sort-1",
            labelEn: "(-3) × (-5)",
            labelMy: "(-3) × (-5)",
            correctBucketEn: "Positive Result",
            correctBucketMy: "အဖြေ အပေါင်း",
          ),
          SortingItem(
            id: "s2math-w1-sort-2",
            labelEn: "(-8) ÷ 2",
            labelMy: "(-8) ÷ 2",
            correctBucketEn: "Negative Result",
            correctBucketMy: "အဖြေ အနုတ်",
          ),
          SortingItem(
            id: "s2math-w1-sort-3",
            labelEn: "6 × (-2)",
            labelMy: "6 × (-2)",
            correctBucketEn: "Negative Result",
            correctBucketMy: "အဖြေ အနုတ်",
          ),
          SortingItem(
            id: "s2math-w1-sort-4",
            labelEn: "(-9) ÷ (-3)",
            labelMy: "(-9) ÷ (-3)",
            correctBucketEn: "Positive Result",
            correctBucketMy: "အဖြေ အပေါင်း",
          ),
          SortingItem(
            id: "s2math-w1-sort-5",
            labelEn: "(-4) × (-4)",
            labelMy: "(-4) × (-4)",
            correctBucketEn: "Positive Result",
            correctBucketMy: "အဖြေ အပေါင်း",
          ),
          SortingItem(
            id: "s2math-w1-sort-6",
            labelEn: "10 ÷ (-5)",
            labelMy: "10 ÷ (-5)",
            correctBucketEn: "Negative Result",
            correctBucketMy: "အဖြေ အနုတ်",
          ),
          SortingItem(
            id: "s2math-w1-sort-7",
            labelEn: "(-7) × 1",
            labelMy: "(-7) × 1",
            correctBucketEn: "Negative Result",
            correctBucketMy: "အဖြေ အနုတ်",
          ),
          SortingItem(
            id: "s2math-w1-sort-8",
            labelEn: "(-12) ÷ (-4)",
            labelMy: "(-12) ÷ (-4)",
            correctBucketEn: "Positive Result",
            correctBucketMy: "အဖြေ အပေါင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w1-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su and Thiri's Diving Log",
      titleMy: "စာဖတ်ခြင်း - စုစုနှင့် သီရိ၏ ငုပ်လျှိုးခုန်ချ မှတ်တမ်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su and Thiri's Diving Log",
        titleMy: "စုစုနှင့် သီရိ၏ ငုပ်လျှိုးခုန်ချ မှတ်တမ်း",
        passageEn:
            "Su Su and Thiri were logging data for a school science trip, recording how deep a diver descended below sea level at different points during a dive. Every reading was a negative number, since sea level itself counted as zero and every metre below it counted as negative. Thiri wrote -12m for the first checkpoint, then -12m more for the second stage of the descent.\n\n\"So how far below sea level is the diver after two stages?\" Thiri asked. Su Su multiplied instead of adding by mistake at first: -12 × 2 = -24, which happened to give the right answer for this particular case, but she caught herself. \"Wait, we should be adding two separate drops, not multiplying,\" she said, redoing it as -12 + (-12) = -24. Both methods landed on the same number here, but Su Su knew that wouldn't always be true.\n\nLater, the diver rose back up in three equal, timed stages, ascending a total of 18 metres. Su Su used division to work out each stage: 18 ÷ 3 = 6 metres per stage, an ascent, so a positive number. But the diver's overall position was still measured from zero — starting at -24m and rising by 18m brought the diver to -24 + 18 = -6m, still below sea level. \"One number for how big each step is, a different sign for which direction it goes,\" Su Su explained to Thiri. \"That's the part everyone mixes up.\"",
        passageMy:
            "စုစုနှင့် သီရိတို့သည် ကျောင်းသိပ္ပံခရီးစဉ်တစ်ခုအတွက် အချက်အလက်များ မှတ်တမ်းတင်နေခဲ့ကြပြီး၊ ငုပ်လျှိုးခုန်ချသူတစ်ဦး ငုပ်လျှိုးနေစဉ် အချိန်အမှတ်များအလိုက် ပင်လယ်ရေမျက်နှာပြင်အောက် မည်မျှနက်စွာသွားသည်ကို မှတ်တမ်းတင်ခဲ့ကြသည်။ ပင်လယ်ရေမျက်နှာပြင်ကိုယ်တိုင် သုညအဖြစ် ရေတွက်ထားသောကြောင့် ၎င်း၏အောက်ရှိ မီတာတိုင်းသည် အနုတ်ဂဏန်းအဖြစ် ရေတွက်ခဲ့သည်။ သီရိသည် ပထမစစ်ဆေးရေးမှတ်တိုင်အတွက် -12m ဟုရေးခဲ့ပြီး ဒုတိယအဆင့်ငုပ်ချမှုအတွက် ထပ်မံ -12m ဟု ရေးခဲ့သည်။\n\n'ဒါဆို အဆင့်နှစ်ဆင့်ပြီးနောက် ငုပ်လျှိုးသူသည် ပင်လယ်ရေမျက်နှာပြင်အောက် ဘယ်လောက်ရှိနေမလဲ' ဟု သီရိမေးခဲ့သည်။ စုစုသည် ပထမတွင် အမှတ်မထင် ပေါင်းစား၏အစား မြှောက်လိုက်မိသည် — -12 × 2 = -24 ဖြင့် ဤသီးခြားအခြေအနေအတွက် မှန်ကန်သောအဖြေ ရရှိခဲ့သော်လည်း သူမ သတိပြုမိလိုက်သည်။ 'ဟေး၊ ကျွန်မတို့ ကျဆင်းမှုနှစ်ခုသီးခြားစီကို ပေါင်းသင့်တယ်၊ မြှောက်တာမဟုတ်ဘူး' ဟု သူမက ပြောပြီး -12 + (-12) = -24 ဟု ပြန်လည်တွက်ချက်ခဲ့သည်။ နည်းလမ်းနှစ်ခုစလုံးသည် ဤနေရာတွင် ဂဏန်းတစ်ခုတည်းသို့ ရောက်ရှိခဲ့သော်လည်း ထိုသို့ အမြဲမှန်မည်မဟုတ်ကြောင်း စုစု သိရှိထားသည်။\n\nနောက်ပိုင်းတွင် ငုပ်လျှိုးသူသည် အညီအမျှ၊ အချိန်ကိုက်သုံးအဆင့်ဖြင့် စုစုပေါင်း ၁၈ မီတာ ပြန်တက်လာခဲ့သည်။ စုစုသည် အဆင့်တစ်ခုစီကို ရှာရန် စားခြင်းကို အသုံးပြုခဲ့သည် — 18 ÷ 3 = 6 မီတာ တစ်အဆင့်စီ၊ ၎င်းသည် တက်ခြင်းဖြစ်၍ အပေါင်းဂဏန်းဖြစ်သည်။ သို့သော် ငုပ်လျှိုးသူ၏ တစ်ခုလုံးတည်နေရာမှာ သုညမှ တိုင်းတာဆဲဖြစ်သည် — -24m မှစတင်ပြီး 18m တက်လာသဖြင့် ငုပ်လျှိုးသူသည် -24 + 18 = -6m ရောက်ရှိလာပြီး ပင်လယ်ရေမျက်နှာပြင်အောက် ဆက်ရှိနေဆဲဖြစ်သည်။ 'အဆင့်တစ်ခုစီ ဘယ်လောက်ကြီးသလဲဆိုတာအတွက် ဂဏန်းတစ်ခု၊ ဘယ်ဘက်ကိုသွားသလဲဆိုတာအတွက် လက္ခဏာမတူဘူး' ဟု စုစုက သီရိအား ရှင်းပြခဲ့သည်။ 'အဲဒါက လူတိုင်းရောထွေးလေ့ရှိတဲ့ အပိုင်းပါပဲ' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, why was every reading recorded as a negative number?",
            questionMy:
                "စာပိုဒ် ၁ အရ အချက်အလက်တစ်ခုစီကို အနုတ်ဂဏန်းအဖြစ် အဘယ်ကြောင့် မှတ်တမ်းတင်ခဲ့သနည်း။",
            optionsEn: [
              "Sea level counted as zero, and every metre below it counted as negative",
              "The diving equipment was broken",
              "Negative numbers are always more accurate",
              "The diver never actually went underwater",
            ],
            optionsMy: [
              "ပင်လယ်ရေမျက်နှာပြင်ကို သုညအဖြစ် ရေတွက်ထားပြီး ၎င်းအောက်ရှိ မီတာတိုင်းကို အနုတ်အဖြစ် ရေတွက်ကြောင့်",
              "ငုပ်လျှိုးကိရိယာ ပျက်နေသောကြောင့်",
              "အနုတ်ဂဏန်းများသည် အမြဲပိုတိကျသောကြောင့်",
              "ငုပ်လျှိုးသူသည် ရေအောက်သို့ လုံးဝ မဆင်းခဲ့ကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what mistake did Su Su make at first?",
            questionMy:
                "စာပိုဒ် ၂ အရ စုစု ပထမတွင် မည်သည့်အမှားပြုလုပ်ခဲ့သနည်း။",
            optionsEn: [
              "She multiplied instead of adding, though it happened to give the right answer this time",
              "She used the wrong sign for sea level",
              "She forgot the diver's name completely",
              "She divided by zero accidentally",
            ],
            optionsMy: [
              "ပေါင်းစားအစား မြှောက်လိုက်မိပြီး ဤအကြိမ်တွင် အဖြေမှန်ရရှိခဲ့ကြောင်း",
              "ပင်လယ်ရေမျက်နှာပြင်အတွက် လက္ခဏာမှားယွင်းစွာ သုံးမိကြောင်း",
              "ငုပ်လျှိုးသူ၏ အမည်ကို လုံးဝ မေ့သွားကြောင်း",
              "သုညဖြင့် မတော်တဆ စားမိကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, how did Su Su calculate the ascent per stage?",
            questionMy:
                "စာပိုဒ် ၃ အရ အဆင့်တစ်ခုစီ တက်ရမည့်အကွာအဝေးကို စုစု မည်သို့ တွက်ချက်ခဲ့သနည်း။",
            optionsEn: [
              "She divided 18 by 3 to get 6 metres per stage",
              "She multiplied 18 by 3",
              "She subtracted 3 from 18",
              "She guessed without calculating",
            ],
            optionsMy: [
              "18 ကို 3 ဖြင့် စား၍ တစ်အဆင့်လျှင် 6 မီတာ ရရှိခဲ့ကြောင်း",
              "18 ကို 3 ဖြင့် မြှောက်ခဲ့ကြောင်း",
              "18 မှ 3 ကို နုတ်ခဲ့ကြောင်း",
              "မတွက်ချက်ဘဲ ခန့်မှန်းခဲ့ကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what was the diver's final position after rising 18 metres from -24m?",
            questionMy:
                "စာပိုဒ် ၃ အရ -24m မှ 18 မီတာ တက်လာပြီးနောက် ငုပ်လျှိုးသူ၏ နောက်ဆုံးတည်နေရာမှာ အဘယ်နည်း။",
            optionsEn: ["-6m", "6m", "-42m", "42m"],
            optionsMy: ["-6m", "6m", "-42m", "42m"],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w1-d5",
      dayNumber: 5,
      titleEn: "Working with Integers Recap Quiz",
      titleMy: "ကိန်းပြည့်များ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is (-5) × (-6)?",
          questionMy: "(-5) × (-6) သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["30", "-30", "11", "-11"],
          optionsMy: ["30", "-30", "11", "-11"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is (-20) ÷ 4?",
          questionMy: "(-20) ÷ 4 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["-5", "5", "-16", "16"],
          optionsMy: ["-5", "5", "-16", "16"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Multiplying two numbers with the same sign always gives a...",
          questionMy:
              "လက္ခဏာတူညီသော ဂဏန်းနှစ်ခုကို မြှောက်ခြင်းသည် အမြဲ ... ကို ရရှိစေသည်။",
          optionsEn: [
            "Positive answer",
            "Negative answer",
            "Answer of zero",
            "Undefined answer",
          ],
          optionsMy: [
            "အပေါင်းအဖြေ",
            "အနုတ်အဖြေ",
            "သုညအဖြေ",
            "အဓိပ္ပာယ်မရှိသောအဖြေ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Using BODMAS, what is 5 - 2 × (-3)?",
          questionMy: "BODMAS ကိုသုံး၍ 5 - 2 × (-3) သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["11", "-1", "9", "-9"],
          optionsMy: ["11", "-1", "9", "-9"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Su Su and Thiri's diving log, starting at -24m and rising 18m gives a final position of...",
          questionMy:
              "စုစုနှင့် သီရိ၏ ငုပ်လျှိုးမှတ်တမ်းတွင် -24m မှစတင်ပြီး 18m တက်လာပါက နောက်ဆုံးတည်နေရာမှာ ...",
          optionsEn: ["-6m", "6m", "-42m", "0m"],
          optionsMy: ["-6m", "6m", "-42m", "0m"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek2 = CourseWeekDef(
  id: "course-secondary2-mathematics-w2",
  weekNumber: 2,
  titleEn: "Powers and Roots",
  titleMy: "ထပ်ကိန်းများနှင့် ပင်ရင်းကိန်းများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w2-d1",
      dayNumber: 1,
      titleEn: "Squares, Cubes, and Roots",
      titleMy: "စတုရန်းကိန်း၊ ကုဗကိန်းနှင့် ပင်ရင်းကိန်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is 7²?",
          questionMy: "7² သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["49", "14", "21", "9"],
          optionsMy: ["49", "14", "21", "9"],
          correctIndex: 0,
          hintsEn: [
            "The small 2 means 'squared' -- multiply the number by itself.",
            "7² means 7 × 7, not 7 × 2.",
          ],
          hintsMy: [
            "ပေါ်တွင်ရှိသော ငယ်ငယ်ကိန်း 2 သည် 'စတုရန်း (squared)' ကို ဆိုလိုပြီး ဂဏန်းကို ကိုယ်တိုင်ဖြင့် မြှောက်ရသည်။",
            "7² ဆိုသည်မှာ 7 × 7 ကို ဆိုလိုသည်၊ 7 × 2 မဟုတ်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is 4³?",
          questionMy: "4³ သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["64", "12", "16", "43"],
          optionsMy: ["64", "12", "16", "43"],
          correctIndex: 0,
          hintsEn: [
            "The small 3 means 'cubed' -- multiply the number by itself three times.",
            "4³ means 4 × 4 × 4, which is 16 × 4.",
          ],
          hintsMy: [
            "ပေါ်တွင်ရှိသော ငယ်ငယ်ကိန်း 3 သည် 'ကုဗ (cubed)' ကို ဆိုလိုပြီး ဂဏန်းကို ကိုယ်တိုင်ဖြင့် သုံးကြိမ် မြှောက်ရသည်။",
            "4³ ဆိုသည်မှာ 4 × 4 × 4 ကို ဆိုလိုပြီး 16 × 4 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is √81?",
          questionMy: "√81 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["9", "8", "40.5", "6561"],
          optionsMy: ["9", "8", "40.5", "6561"],
          correctIndex: 0,
          hintsEn: [
            "A square root asks: what number, multiplied by itself, gives 81?",
            "9 × 9 = 81, so √81 = 9.",
          ],
          hintsMy: [
            "Square Root က မေးထားသည် — မည်သည့်ဂဏန်းကို ကိုယ်တိုင်ဖြင့်မြှောက်လျှင် 81 ရမည်နည်း။",
            "9 × 9 = 81 ဖြစ်သောကြောင့် √81 = 9 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is ∛27?",
          questionMy: "∛27 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["3", "9", "27", "6"],
          optionsMy: ["3", "9", "27", "6"],
          correctIndex: 0,
          hintsEn: [
            "A cube root asks: what number, multiplied by itself three times, gives 27?",
            "3 × 3 × 3 = 27, so ∛27 = 3.",
          ],
          hintsMy: [
            "Cube Root က မေးထားသည် — မည်သည့်ဂဏန်းကို ကိုယ်တိုင်ဖြင့် သုံးကြိမ်မြှောက်လျှင် 27 ရမည်နည်း။",
            "3 × 3 × 3 = 27 ဖြစ်သောကြောင့် ∛27 = 3 ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w2-d2",
      dayNumber: 2,
      titleEn: "Match the Powers and Roots Vocabulary",
      titleMy: "ထပ်ကိန်းနှင့် ပင်ရင်းကိန်း ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w2-dm-1",
          termEn: "Square Number",
          termMy: "စတုရန်းကိန်း (Square Number)",
          matchEn: "The result of multiplying a number by itself, e.g. 5² = 25",
          matchMy:
              "ဂဏန်းတစ်ခုကို ကိုယ်တိုင်ဖြင့် မြှောက်ရာမှ ရရှိသောရလဒ်၊ ဥပမာ 5² = 25",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w2-dm-2",
          termEn: "Cube Number",
          termMy: "ကုဗကိန်း (Cube Number)",
          matchEn:
              "The result of multiplying a number by itself three times, e.g. 2³ = 8",
          matchMy:
              "ဂဏန်းတစ်ခုကို ကိုယ်တိုင်ဖြင့် သုံးကြိမ်မြှောက်ရာမှ ရရှိသောရလဒ်၊ ဥပမာ 2³ = 8",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w2-dm-3",
          termEn: "Square Root",
          termMy: "ပင်ရင်းစတုရန်းကိန်း (Square Root)",
          matchEn:
              "The number that, multiplied by itself, gives the original number",
          matchMy: "မူလဂဏန်းကို ရရှိစေရန် ကိုယ်တိုင်ဖြင့် မြှောက်ရမည့်ဂဏန်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w2-dm-4",
          termEn: "Cube Root",
          termMy: "ပင်ရင်းကုဗကိန်း (Cube Root)",
          matchEn:
              "The number that, multiplied by itself three times, gives the original number",
          matchMy:
              "မူလဂဏန်းကို ရရှိစေရန် ကိုယ်တိုင်ဖြင့် သုံးကြိမ်မြှောက်ရမည့်ဂဏန်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w2-dm-5",
          termEn: "Base",
          termMy: "အခြေကိန်း (Base)",
          matchEn:
              "The number being multiplied by itself in a power, e.g. the 5 in 5³",
          matchMy:
              "ထပ်ကိန်းတစ်ခုတွင် ကိုယ်တိုင်ဖြင့် မြှောက်နေသောဂဏန်း၊ ဥပမာ 5³ ရှိ 5",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w2-dm-6",
          termEn: "Exponent",
          termMy: "ထပ်ကိန်း (Exponent)",
          matchEn:
              "The small number showing how many times to multiply the base, e.g. the 3 in 5³",
          matchMy:
              "အခြေကိန်းကို ဘယ်နှကြိမ် မြှောက်ရမည်ကို ပြသော ငယ်ငယ်ကိန်း၊ ဥပမာ 5³ ရှိ 3",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w2-d3",
      dayNumber: 3,
      titleEn: "Sort: Perfect Square or Perfect Cube?",
      titleMy: "စီစစ်ကြမည် - Perfect Square လား၊ Perfect Cube လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Perfect Square Number", "Perfect Cube Number"],
        bucketsMy: ["Perfect Square ကိန်း", "Perfect Cube ကိန်း"],
        items: [
          SortingItem(
            id: "s2math-w2-sort-1",
            labelEn: "16 (4²)",
            labelMy: "16 (4²)",
            correctBucketEn: "Perfect Square Number",
            correctBucketMy: "Perfect Square ကိန်း",
          ),
          SortingItem(
            id: "s2math-w2-sort-2",
            labelEn: "8 (2³)",
            labelMy: "8 (2³)",
            correctBucketEn: "Perfect Cube Number",
            correctBucketMy: "Perfect Cube ကိန်း",
          ),
          SortingItem(
            id: "s2math-w2-sort-3",
            labelEn: "25 (5²)",
            labelMy: "25 (5²)",
            correctBucketEn: "Perfect Square Number",
            correctBucketMy: "Perfect Square ကိန်း",
          ),
          SortingItem(
            id: "s2math-w2-sort-4",
            labelEn: "27 (3³)",
            labelMy: "27 (3³)",
            correctBucketEn: "Perfect Cube Number",
            correctBucketMy: "Perfect Cube ကိန်း",
          ),
          SortingItem(
            id: "s2math-w2-sort-5",
            labelEn: "49 (7²)",
            labelMy: "49 (7²)",
            correctBucketEn: "Perfect Square Number",
            correctBucketMy: "Perfect Square ကိန်း",
          ),
          SortingItem(
            id: "s2math-w2-sort-6",
            labelEn: "125 (5³)",
            labelMy: "125 (5³)",
            correctBucketEn: "Perfect Cube Number",
            correctBucketMy: "Perfect Cube ကိန်း",
          ),
          SortingItem(
            id: "s2math-w2-sort-7",
            labelEn: "100 (10²)",
            labelMy: "100 (10²)",
            correctBucketEn: "Perfect Square Number",
            correctBucketMy: "Perfect Square ကိန်း",
          ),
          SortingItem(
            id: "s2math-w2-sort-8",
            labelEn: "216 (6³)",
            labelMy: "216 (6³)",
            correctBucketEn: "Perfect Cube Number",
            correctBucketMy: "Perfect Cube ကိန်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w2-d4",
      dayNumber: 4,
      titleEn: "Reading: Mya's Garden and Storage Box",
      titleMy: "စာဖတ်ခြင်း - မြ၏ ဥယျာဉ်နှင့် သိုလှောင်ဗူး",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Mya's Garden and Storage Box",
        titleMy: "မြ၏ ဥယျာဉ်နှင့် သိုလှောင်ဗူး",
        passageEn:
            "Mya's family was building a small square vegetable garden, and her father asked her to work out how much fencing wire they needed. He told her each side of the square garden would be 9 metres long. \"If it's a square, I only need to know one side,\" Mya realised, \"because a square's area is just that side squared.\" She calculated 9² = 81, so the garden's area was 81 square metres -- though for the fencing itself, she still needed the perimeter, four sides of 9 metres, which came to 36 metres of wire.\n\nA few days later, Mya helped pack a cube-shaped storage box for the same garden's tools. The box's height, width, and depth were all equal, exactly 4 units on each edge, since it was a perfect cube. \"A cube's volume is the edge length cubed,\" her father reminded her. Mya worked out 4³ = 4 × 4 × 4 = 64, so the box could hold 64 cubic units of tools and soil bags.\n\nLater, comparing notes with Su Su, Mya realised the two calculations were opposites of each other in a sense. Given a square's area of 81, finding the side length meant taking a square root: √81 = 9. Given a cube's volume of 64, finding the edge length meant taking a cube root: ∛64 = 4. \"Squaring and square-rooting undo each other,\" Mya said, \"exactly like cubing and cube-rooting do.\"",
        passageMy:
            "မြ၏ မိသားစုသည် စတုရန်းပုံသဏ္ဌာန် ဟင်းသီးဟင်းရွက် ဥယျာဉ်ငယ်တစ်ခု တည်ဆောက်နေခဲ့ကြပြီး၊ သူမ၏အဖေက ခြံစည်းရိုးကြိုးကြိုး မည်မျှလိုအပ်မည်ကို တွက်ချက်ရန် သူမကို တောင်းဆိုခဲ့သည်။ စတုရန်းဥယျာဉ်၏ ဘက်တစ်ဘက်စီသည် 9 မီတာ ရှိမည်ဖြစ်ကြောင်း သူ ပြောခဲ့သည်။ 'စတုရန်းတစ်ခုဆိုရင် ဘက်တစ်ဘက်ကိုပဲ သိစရာလိုတယ်' ဟု မြ သဘောပေါက်လိုက်သည်၊ 'ဘာဖြစ်လို့လဲဆိုတော့ စတုရန်း၏ဧရိယာက ဘက်ကို စတုရန်းလုပ်လိုက်တာပါပဲ' ။ သူမ 9² = 81 ဟု တွက်ချက်ခဲ့ရာ ဥယျာဉ်၏ဧရိယာသည် စတုရန်းမီတာ 81 ဖြစ်ခဲ့သည် — သို့သော် ခြံစည်းရိုးကြိုးအတွက်တော့ Perimeter ကိုသာ လိုအပ်ပြီး ဘက်လေးဘက်၊ 9 မီတာစီသည် ကြိုးမီတာ 36 ဖြစ်လာသည်။\n\nရက်အနည်းငယ်ကြာသောအခါ မြသည် တူညီသောဥယျာဉ်၏ ကိရိယာများအတွက် ကုဗပုံသဏ္ဌာန် သိုလှောင်ဗူးတစ်ခု ထုပ်ပိုးရန် ကူညီခဲ့သည်။ ဗူး၏ အမြင့်၊ အကျယ်နှင့် အနက်တို့သည် Perfect Cube တစ်ခုဖြစ်သောကြောင့် ဘက်တစ်ဘက်စီ 4 ယူနစ်စီ အညီအမျှ ရှိခဲ့သည်။ 'ကုဗတစ်ခု၏ Volume က အနားရှည်ကို ကုဗလုပ်လိုက်တာပါ' ဟု သူမ၏အဖေက ပြန်သတိပေးခဲ့သည်။ မြသည် 4³ = 4 × 4 × 4 = 64 ဟု တွက်ချက်ခဲ့ရာ ဗူးသည် ကိရိယာနှင့် မြေဆီအိတ်များ ကုဗယူနစ် 64 ဆံ့နိုင်ကြောင်း သိရသည်။\n\nနောက်ပိုင်း စုစုနှင့် မှတ်စုများ ယှဉ်ကြည့်ရာ တွက်ချက်မှုနှစ်ခုသည် တစ်ခုနှင့်တစ်ခု ဆန့်ကျင်ဘက်ဖြစ်နေကြောင်း မြ သဘောပေါက်လိုက်သည်။ စတုရန်းတစ်ခု၏ ဧရိယာ 81 ကိုပေးထားပါက ဘက်ရှည်ကို ရှာခြင်းသည် ပင်ရင်းစတုရန်းကိန်း ယူရမည်ဖြစ်သည် — √81 = 9။ ကုဗတစ်ခု၏ Volume 64 ကိုပေးထားပါက အနားရှည်ကို ရှာခြင်းသည် ပင်ရင်းကုဗကိန်း ယူရမည်ဖြစ်သည် — ∛64 = 4။ 'စတုရန်းလုပ်ခြင်းနှင့် ပင်ရင်းစတုရန်းကိန်းယူခြင်းသည် တစ်ခုနှင့်တစ်ခု ပြန်ဖျက်ပေးကြတယ်' ဟု မြက ပြောခဲ့သည်၊ 'ကုဗလုပ်ခြင်းနှင့် ပင်ရင်းကုဗကိန်းယူခြင်းလိုပဲ' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what was the area of Mya's square garden?",
            questionMy: "စာပိုဒ် ၁ အရ မြ၏ စတုရန်းဥယျာဉ်၏ ဧရိယာမှာ အဘယ်နည်း။",
            optionsEn: [
              "81 square metres",
              "36 square metres",
              "9 square metres",
              "18 square metres",
            ],
            optionsMy: [
              "စတုရန်းမီတာ 81",
              "စတုရန်းမီတာ 36",
              "စတုရန်းမီတာ 9",
              "စတုရန်းမီတာ 18",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 1, how much fencing wire did the garden need?",
            questionMy:
                "စာပိုဒ် ၁ အရ ဥယျာဉ်အတွက် ခြံစည်းရိုးကြိုး မည်မျှလိုအပ်ခဲ့သနည်း။",
            optionsEn: ["36 metres", "81 metres", "9 metres", "4 metres"],
            optionsMy: ["36 မီတာ", "81 မီတာ", "9 မီတာ", "4 မီတာ"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the volume of the storage box?",
            questionMy: "စာပိုဒ် ၂ အရ သိုလှောင်ဗူး၏ Volume မှာ အဘယ်နည်း။",
            optionsEn: [
              "64 cubic units",
              "16 cubic units",
              "12 cubic units",
              "4 cubic units",
            ],
            optionsMy: [
              "ကုဗယူနစ် 64",
              "ကုဗယူနစ် 16",
              "ကုဗယူနစ် 12",
              "ကုဗယူနစ် 4",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Mya realise about squaring and square-rooting?",
            questionMy:
                "စာပိုဒ် ၃ အရ စတုရန်းလုပ်ခြင်းနှင့် ပင်ရင်းစတုရန်းကိန်းယူခြင်းအကြောင်း မြ မည်သို့ သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "They undo each other, just like cubing and cube-rooting do",
              "They are completely unrelated operations",
              "Only squaring is ever useful in real life",
              "Square roots can only be found for even numbers",
            ],
            optionsMy: [
              "ကုဗလုပ်ခြင်းနှင့် ပင်ရင်းကုဗကိန်းယူခြင်းကဲ့သို့ပင် တစ်ခုနှင့်တစ်ခု ပြန်ဖျက်ပေးကြောင်း",
              "လုံးဝ မသက်ဆိုင်သော တွက်ချက်မှုများဖြစ်ကြောင်း",
              "စတုရန်းလုပ်ခြင်းသာ ဘဝတွင် အသုံးဝင်ကြောင်း",
              "Square Root ကို စုံကိန်းများအတွက်သာ ရှာနိုင်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w2-d5",
      dayNumber: 5,
      titleEn: "Powers and Roots Recap Quiz",
      titleMy: "ထပ်ကိန်းနှင့် ပင်ရင်းကိန်း ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is 6²?",
          questionMy: "6² သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["36", "12", "18", "8"],
          optionsMy: ["36", "12", "18", "8"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is 3³?",
          questionMy: "3³ သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["27", "9", "6", "33"],
          optionsMy: ["27", "9", "6", "33"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is √64?",
          questionMy: "√64 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["8", "16", "32", "4"],
          optionsMy: ["8", "16", "32", "4"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is ∛8?",
          questionMy: "∛8 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["2", "4", "8", "3"],
          optionsMy: ["2", "4", "8", "3"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Mya's story, a cube's volume equals its edge length...",
          questionMy:
              "မြ၏ ဇာတ်လမ်းတွင် ကုဗတစ်ခု၏ Volume သည် ၎င်း၏ အနားရှည်ကို ...",
          optionsEn: ["Cubed", "Squared", "Doubled", "Halved"],
          optionsMy: [
            "ကုဗလုပ်ထားခြင်း",
            "စတုရန်းလုပ်ထားခြင်း",
            "နှစ်ဆလုပ်ထားခြင်း",
            "တစ်ဝက်ခွဲထားခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek3 = CourseWeekDef(
  id: "course-secondary2-mathematics-w3",
  weekNumber: 3,
  titleEn: "Index Laws",
  titleMy: "ထပ်ကိန်း စည်းမျဉ်းများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w3-d1",
      dayNumber: 1,
      titleEn: "Multiplying and Dividing Indices",
      titleMy: "ထပ်ကိန်းများ မြှောက်ခြင်းနှင့် စားခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Using the index law, what is 2³ × 2⁴?",
          questionMy: "ထပ်ကိန်းစည်းမျဉ်းကိုသုံး၍ 2³ × 2⁴ သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["2⁷", "2¹²", "4⁷", "2⁴"],
          optionsMy: ["2⁷", "2¹²", "4⁷", "2⁴"],
          correctIndex: 0,
          hintsEn: [
            "When multiplying powers with the same base, add the exponents together.",
            "2³ × 2⁴ = 2^(3+4) = 2⁷.",
          ],
          hintsMy: [
            "အခြေကိန်းတူသော ထပ်ကိန်းများကို မြှောက်သောအခါ ထပ်ကိန်းနံပါတ်များကို အတူတကွ ပေါင်းပါ။",
            "2³ × 2⁴ = 2^(3+4) = 2⁷ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Using the index law, what is 5⁶ ÷ 5²?",
          questionMy: "ထပ်ကိန်းစည်းမျဉ်းကိုသုံး၍ 5⁶ ÷ 5² သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["5⁴", "5³", "5⁸", "5¹²"],
          optionsMy: ["5⁴", "5³", "5⁸", "5¹²"],
          correctIndex: 0,
          hintsEn: [
            "When dividing powers with the same base, subtract the exponents.",
            "5⁶ ÷ 5² = 5^(6-2) = 5⁴.",
          ],
          hintsMy: [
            "အခြေကိန်းတူသော ထပ်ကိန်းများကို စားသောအခါ ထပ်ကိန်းနံပါတ်များကို နုတ်ပါ။",
            "5⁶ ÷ 5² = 5^(6-2) = 5⁴ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is 7⁰?",
          questionMy: "7⁰ သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["1", "0", "7", "49"],
          optionsMy: ["1", "0", "7", "49"],
          correctIndex: 0,
          hintsEn: [
            "Any non-zero number raised to the power of zero always equals 1.",
            "This is a special rule -- it doesn't matter whether the base is 7, 100, or 1,000,000.",
          ],
          hintsMy: [
            "သုညမဟုတ်သော ဂဏန်းကို 0 ထပ်ကိန်းဖြင့် မြှောက်ပါက အမြဲ 1 ဖြစ်သည်။",
            "ဒါက အထူးစည်းမျဉ်းတစ်ခုဖြစ်သည် — အခြေကိန်းသည် 7 ဖြစ်စေ၊ 100 ဖြစ်စေ၊ 1,000,000 ဖြစ်စေ ဘာမှမကွာပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "Simplify x⁵ × x³.",
          questionMy: "x⁵ × x³ ကို ရိုးရှင်းအောင်ပြုလုပ်ပါ။",
          optionsEn: ["x⁸", "x¹⁵", "x²", "2x⁸"],
          optionsMy: ["x⁸", "x¹⁵", "x²", "2x⁸"],
          correctIndex: 0,
          hintsEn: [
            "The same multiplying-indices law works for letters (algebra) too, not just numbers.",
            "x⁵ × x³ = x^(5+3) = x⁸.",
          ],
          hintsMy: [
            "ထပ်ကိန်းများ မြှောက်ခြင်း စည်းမျဉ်းတူညီသည်ကို ဂဏန်းများအတွက်သာမက အက္ခရာများ (Algebra) အတွက်လည်း သုံးနိုင်သည်။",
            "x⁵ × x³ = x^(5+3) = x⁸ ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w3-d2",
      dayNumber: 2,
      titleEn: "Match the Index Laws Vocabulary",
      titleMy: "ထပ်ကိန်းစည်းမျဉ်း ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w3-dm-1",
          termEn: "Index (Exponent)",
          termMy: "ထပ်ကိန်း (Index / Exponent)",
          matchEn:
              "The small number showing how many times to multiply the base",
          matchMy: "အခြေကိန်းကို ဘယ်နှကြိမ် မြှောက်ရမည်ကို ပြသော ငယ်ငယ်ကိန်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w3-dm-2",
          termEn: "Base",
          termMy: "အခြေကိန်း (Base)",
          matchEn: "The number or letter being raised to a power",
          matchMy: "ထပ်ကိန်းတင်ခံရသော ဂဏန်း သို့မဟုတ် အက္ခရာ",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w3-dm-3",
          termEn: "Multiplying Indices Law",
          termMy: "ထပ်ကိန်းများ မြှောက်ခြင်း စည်းမျဉ်း",
          matchEn:
              "When multiplying powers with the same base, add the exponents",
          matchMy:
              "အခြေကိန်းတူသော ထပ်ကိန်းများကို မြှောက်သောအခါ ထပ်ကိန်းများကို ပေါင်းရသည်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w3-dm-4",
          termEn: "Dividing Indices Law",
          termMy: "ထပ်ကိန်းများ စားခြင်း စည်းမျဉ်း",
          matchEn:
              "When dividing powers with the same base, subtract the exponents",
          matchMy:
              "အခြေကိန်းတူသော ထပ်ကိန်းများကို စားသောအခါ ထပ်ကိန်းများကို နုတ်ရသည်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w3-dm-5",
          termEn: "Power of Zero Law",
          termMy: "သုညထပ်ကိန်း စည်းမျဉ်း",
          matchEn: "Any non-zero number raised to the power of zero equals 1",
          matchMy: "သုညမဟုတ်သော ဂဏန်းကို 0 ထပ်ကိန်းဖြင့် မြှောက်ပါက 1 ဖြစ်သည်",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w3-dm-6",
          termEn: "Index Form",
          termMy: "ထပ်ကိန်းပုံစံ (Index Form)",
          matchEn:
              "Writing a repeated multiplication using a base and an exponent, e.g. 3⁴",
          matchMy:
              "ထပ်ခါထပ်ခါ မြှောက်ခြင်းကို အခြေကိန်းနှင့် ထပ်ကိန်းဖြင့် ရေးသားခြင်း၊ ဥပမာ 3⁴",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w3-d3",
      dayNumber: 3,
      titleEn: "Sort: Correctly Simplified or Incorrectly Simplified?",
      titleMy:
          "စီစစ်ကြမည် - မှန်ကန်စွာ ရိုးရှင်းအောင်ပြုလုပ်ထားလား၊ မှားယွင်းစွာလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Correctly Simplified", "Incorrectly Simplified"],
        bucketsMy: ["မှန်ကန်စွာ ရိုးရှင်းထား", "မှားယွင်းစွာ ရိုးရှင်းထား"],
        items: [
          SortingItem(
            id: "s2math-w3-sort-1",
            labelEn: "3² × 3³ = 3⁵",
            labelMy: "3² × 3³ = 3⁵",
            correctBucketEn: "Correctly Simplified",
            correctBucketMy: "မှန်ကန်စွာ ရိုးရှင်းထား",
          ),
          SortingItem(
            id: "s2math-w3-sort-2",
            labelEn: "2⁴ × 2² = 2⁸",
            labelMy: "2⁴ × 2² = 2⁸",
            correctBucketEn: "Incorrectly Simplified",
            correctBucketMy: "မှားယွင်းစွာ ရိုးရှင်းထား",
          ),
          SortingItem(
            id: "s2math-w3-sort-3",
            labelEn: "6⁵ ÷ 6² = 6³",
            labelMy: "6⁵ ÷ 6² = 6³",
            correctBucketEn: "Correctly Simplified",
            correctBucketMy: "မှန်ကန်စွာ ရိုးရှင်းထား",
          ),
          SortingItem(
            id: "s2math-w3-sort-4",
            labelEn: "4⁷ ÷ 4³ = 4²",
            labelMy: "4⁷ ÷ 4³ = 4²",
            correctBucketEn: "Incorrectly Simplified",
            correctBucketMy: "မှားယွင်းစွာ ရိုးရှင်းထား",
          ),
          SortingItem(
            id: "s2math-w3-sort-5",
            labelEn: "9⁰ = 1",
            labelMy: "9⁰ = 1",
            correctBucketEn: "Correctly Simplified",
            correctBucketMy: "မှန်ကန်စွာ ရိုးရှင်းထား",
          ),
          SortingItem(
            id: "s2math-w3-sort-6",
            labelEn: "9⁰ = 0",
            labelMy: "9⁰ = 0",
            correctBucketEn: "Incorrectly Simplified",
            correctBucketMy: "မှားယွင်းစွာ ရိုးရှင်းထား",
          ),
          SortingItem(
            id: "s2math-w3-sort-7",
            labelEn: "x² × x⁴ = x⁶",
            labelMy: "x² × x⁴ = x⁶",
            correctBucketEn: "Correctly Simplified",
            correctBucketMy: "မှန်ကန်စွာ ရိုးရှင်းထား",
          ),
          SortingItem(
            id: "s2math-w3-sort-8",
            labelEn: "y⁶ ÷ y³ = y³",
            labelMy: "y⁶ ÷ y³ = y³",
            correctBucketEn: "Correctly Simplified",
            correctBucketMy: "မှန်ကန်စွာ ရိုးရှင်းထား",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w3-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiri's Bacteria Experiment",
      titleMy: "စာဖတ်ခြင်း - သီရိ၏ ဘက်တီးရီးယား စမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri's Bacteria Experiment",
        titleMy: "သီရိ၏ ဘက်တီးရီးယား စမ်းသပ်မှု",
        passageEn:
            "For a joint science-and-maths project, Thiri was tracking a bacteria colony that doubled in size every hour. Starting from a single bacterium, after 1 hour there were 2, described as 2¹. After 2 hours there were 4, or 2². Thiri noticed the pattern immediately: after any number of hours, the population was 2 raised to that number of hours.\n\nHer teacher then asked a harder question: if the colony had been growing for 3 hours before Thiri's first measurement, and she then measured it growing for another 4 hours, how would she combine those two stages using index notation instead of working out each stage separately? \"The first 3 hours give 2³ worth of growth, and the next 4 hours multiply that by another 2⁴,\" Thiri reasoned. \"So altogether it's 2³ × 2⁴, which by the index law is just 2⁷.\" She checked by counting manually -- 2⁷ = 128 -- and it matched exactly.\n\nSu Su, working on a related storage problem, needed to know how many times bigger a hard drive with 2⁴⁰ bytes of storage was compared to one with 2³⁵ bytes. Instead of calculating both huge numbers separately, she used the dividing-indices law directly: 2⁴⁰ ÷ 2³⁵ = 2⁵ = 32. \"Index laws turn enormous multiplication and division problems into simple subtraction and addition of exponents,\" Su Su told Thiri. \"That's the whole point of learning them.\"",
        passageMy:
            "သိပ္ပံနှင့် သင်္ချာ ပူးတွဲစီမံကိန်းတစ်ခုအတွက် သီရိသည် နာရီတိုင်း အရွယ်အစား နှစ်ဆတိုးလာသော ဘက်တီးရီးယား အသိုက်အဝန်းတစ်ခုကို ခြေရာခံနေခဲ့သည်။ ဘက်တီးရီးယားတစ်ခုတည်းမှ စတင်၍ 1 နာရီအကြာတွင် 2 ခု ရှိလာပြီး ၎င်းကို 2¹ ဟု ဖော်ပြသည်။ 2 နာရီအကြာတွင် 4 ခု၊ သို့မဟုတ် 2² ဖြစ်လာသည်။ သီရိသည် ပုံစံကို ချက်ချင်း သတိပြုမိသည် — နာရီအရေအတွက် မည်မျှကြာသည်ဖြစ်စေ လူဦးရေသည် 2 ကို နာရီအရေအတွက်ထပ်ကိန်းအဖြစ် ချထားသည်နှင့် ညီသည်။\n\nသူမ၏ ဆရာမက ပိုခက်ခဲသော မေးခွန်းတစ်ခု ထပ်မံမေးခဲ့သည် — အသိုက်အဝန်းသည် သီရိ၏ ပထမတိုင်းတာမှုမတိုင်မီ 3 နာရီကြာ ကြီးထွားနေခဲ့ပြီး ၎င်းနောက် 4 နာရီထပ်ကြီးထွားသည်ကို တိုင်းတာလျှင် ထိုအဆင့်နှစ်ခုကို အဆင့်တစ်ခုစီ သီးခြားတွက်ချက်မည့်အစား Index Notation ဖြင့် မည်သို့ပေါင်းစပ်မည်နည်း။ 'ပထမ 3 နာရီက 2³ တန်ဖိုးရှိသော ကြီးထွားမှုပေးပြီး ထို့နောက် 4 နာရီက ၎င်းကို 2⁴ ဖြင့် ထပ်မံမြှောက်သည်' ဟု သီရိ ဆင်ခြင်ခဲ့သည်။ 'ဒါကြောင့် အားလုံးပေါင်းလိုက်ရင် 2³ × 2⁴ ဖြစ်ပြီး ထပ်ကိန်းစည်းမျဉ်းအရ ၎င်းသည် 2⁷ ရိုးရိုးလေးပါပဲ' ။ သူမ လက်ဖြင့်ရေတွက်၍ စစ်ဆေးကြည့်ရာ 2⁷ = 128 ဖြစ်ပြီး အတိအကျ ကိုက်ညီခဲ့သည်။\n\nဆက်စပ်နေသော သိုလှောင်မှုပြဿနာတစ်ခုတွင် အလုပ်လုပ်နေသော စုစုက Byte 2⁴⁰ ပါဝင်သော Hard Drive တစ်ခုသည် Byte 2³⁵ ပါဝင်သော Hard Drive တစ်ခုနှင့် နှိုင်းယှဉ်လျှင် ဘယ်နှစ်ဆ ပိုကြီးသည်ကို သိလိုခဲ့သည်။ ကြီးမားသော ဂဏန်းနှစ်ခုကို သီးခြားစီ တွက်ချက်မည့်အစား သူမသည် ထပ်ကိန်းများ စားခြင်း စည်းမျဉ်းကို တိုက်ရိုက်အသုံးပြုခဲ့သည် — 2⁴⁰ ÷ 2³⁵ = 2⁵ = 32။ 'ထပ်ကိန်းစည်းမျဉ်းများသည် ကြီးမားသော မြှောက်ခြင်းနှင့် စားခြင်းပြဿနာများကို ထပ်ကိန်းများ နုတ်ခြင်းနှင့် ပေါင်းခြင်း ရိုးရှင်းသောပြဿနာများအဖြစ် ပြောင်းလဲပေးသည်' ဟု စုစုက သီရိကို ပြောခဲ့သည်။ 'ဒါက ၎င်းတို့ကို လေ့လာရသည့် အဓိကအကြောင်းရင်းပါပဲ' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, how did Thiri describe the bacteria population after any number of hours?",
            questionMy:
                "စာပိုဒ် ၁ အရ နာရီအရေအတွက် မည်မျှကြာသည်ဖြစ်စေ ဘက်တီးရီးယားလူဦးရေကို သီရိ မည်သို့ ဖော်ပြခဲ့သနည်း။",
            optionsEn: [
              "2 raised to the power of that number of hours",
              "The number of hours doubled",
              "Always exactly 2, no matter how many hours",
              "The number of hours squared",
            ],
            optionsMy: [
              "2 ကို ထိုနာရီအရေအတွက်ထပ်ကိန်းအဖြစ် ချထားသည်",
              "နာရီအရေအတွက်ကို နှစ်ဆတိုးထားသည်",
              "နာရီမည်မျှကြာသည်ဖြစ်စေ အမြဲ အတိအကျ 2",
              "နာရီအရေအတွက်ကို စတုရန်းလုပ်ထားသည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how did Thiri combine 3 hours and 4 hours of growth using index notation?",
            questionMy:
                "စာပိုဒ် ၂ အရ 3 နာရီနှင့် 4 နာရီ ကြီးထွားမှုကို သီရိ Index Notation ဖြင့် မည်သို့ ပေါင်းစပ်ခဲ့သနည်း။",
            optionsEn: ["2³ × 2⁴ = 2⁷", "2³ + 2⁴ = 2⁷", "2³ - 2⁴", "2³ ÷ 2⁴"],
            optionsMy: ["2³ × 2⁴ = 2⁷", "2³ + 2⁴ = 2⁷", "2³ - 2⁴", "2³ ÷ 2⁴"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what law did Su Su use to compare the two hard drives?",
            questionMy:
                "စာပိုဒ် ၃ အရ Hard Drive နှစ်ခုကို နှိုင်းယှဉ်ရန် စုစု မည်သည့်စည်းမျဉ်းကို အသုံးပြုခဲ့သနည်း။",
            optionsEn: [
              "The dividing-indices law",
              "The multiplying-indices law",
              "The power of zero law",
              "No law at all -- she guessed",
            ],
            optionsMy: [
              "ထပ်ကိန်းများ စားခြင်း စည်းမျဉ်း",
              "ထပ်ကိန်းများ မြှောက်ခြင်း စည်းမျဉ်း",
              "သုညထပ်ကိန်း စည်းမျဉ်း",
              "စည်းမျဉ်းမရှိဘဲ ခန့်မှန်းခဲ့ကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, how many times bigger was the 2⁴⁰-byte drive than the 2³⁵-byte drive?",
            questionMy:
                "စာပိုဒ် ၃ အရ Byte 2⁴⁰ Drive သည် Byte 2³⁵ Drive ထက် ဘယ်နှစ်ဆ ပိုကြီးခဲ့သနည်း။",
            optionsEn: ["32 times", "5 times", "75 times", "2 times"],
            optionsMy: ["၃၂ ဆ", "၅ ဆ", "၇၅ ဆ", "၂ ဆ"],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w3-d5",
      dayNumber: 5,
      titleEn: "Index Laws Recap Quiz",
      titleMy: "ထပ်ကိန်း စည်းမျဉ်း ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is 3² × 3⁵?",
          questionMy: "3² × 3⁵ သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["3⁷", "3¹⁰", "9⁷", "3³"],
          optionsMy: ["3⁷", "3¹⁰", "9⁷", "3³"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is 8⁵ ÷ 8³?",
          questionMy: "8⁵ ÷ 8³ သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["8²", "8⁸", "8¹⁵", "1"],
          optionsMy: ["8²", "8⁸", "8¹⁵", "1"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is 12⁰?",
          questionMy: "12⁰ သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["1", "0", "12", "144"],
          optionsMy: ["1", "0", "12", "144"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Simplify y⁶ × y².",
          questionMy: "y⁶ × y² ကို ရိုးရှင်းအောင်ပြုလုပ်ပါ။",
          optionsEn: ["y⁸", "y¹²", "y⁴", "y³"],
          optionsMy: ["y⁸", "y¹²", "y⁴", "y³"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Su Su's hard-drive comparison, she used the dividing-indices law to find...",
          questionMy:
              "စုစု၏ Hard Drive နှိုင်းယှဉ်မှုတွင် ထပ်ကိန်းများ စားခြင်း စည်းမျဉ်းကို ... ရှာရန် အသုံးပြုခဲ့သည်။",
          optionsEn: [
            "How many times bigger one drive was than the other",
            "The exact byte count of both drives added together",
            "The colour of the hard drive",
            "The price of the hard drive",
          ],
          optionsMy: [
            "Drive တစ်ခုသည် အခြားတစ်ခုထက် ဘယ်နှစ်ဆပိုကြီးသည်ကို",
            "Drive နှစ်ခုစလုံး၏ Byte အရေအတွက် ပေါင်းစုစုပေါင်းကို",
            "Hard Drive ၏ အရောင်ကို",
            "Hard Drive ၏ ဈေးနှုန်းကို",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek4 = CourseWeekDef(
  id: "course-secondary2-mathematics-w4",
  weekNumber: 4,
  titleEn: "Capstone: Number Theory Challenge",
  titleMy: "အထွတ်အထိပ် - ဂဏန်းသီအိုရီ စိန်ခေါ်မှု",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w4-d1",
      dayNumber: 1,
      titleEn: "Prime Factorization, HCF, and LCM",
      titleMy: "ပင်ရင်းကိန်းခွဲခြင်း၊ HCF နှင့် LCM",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is the prime factorization of 60?",
          questionMy:
              "60 ၏ ပင်ရင်းကိန်းခွဲခြင်း (Prime Factorization) မှာ အဘယ်နည်း။",
          optionsEn: ["2² × 3 × 5", "2 × 3 × 10", "4 × 15", "6 × 10"],
          optionsMy: ["2² × 3 × 5", "2 × 3 × 10", "4 × 15", "6 × 10"],
          correctIndex: 0,
          hintsEn: [
            "Keep dividing by the smallest prime number possible until only prime numbers remain: 60 = 2 × 30 = 2 × 2 × 15 = 2 × 2 × 3 × 5.",
            "The other options use factors like 10, 4, 15, or 6, which are not themselves prime numbers.",
          ],
          hintsMy: [
            "ပင်ရင်းကိန်းများသာ ကျန်ရှိသည်အထိ အသေးဆုံးပင်ရင်းကိန်းဖြင့် ဆက်တိုက်စားပါ — 60 = 2 × 30 = 2 × 2 × 15 = 2 × 2 × 3 × 5။",
            "အခြားရွေးချယ်စရာများသည် 10, 4, 15, 6 ကဲ့သို့ ကိန်းများကို သုံးထားပြီး ၎င်းတို့ကိုယ်တိုင် ပင်ရင်းကိန်းများ မဟုတ်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is the HCF (Highest Common Factor) of 18 and 24?",
          questionMy: "18 နှင့် 24 ၏ HCF (Highest Common Factor) မှာ အဘယ်နည်း။",
          optionsEn: ["6", "3", "12", "72"],
          optionsMy: ["6", "3", "12", "72"],
          correctIndex: 0,
          hintsEn: [
            "List the factors of each number: 18 = 1, 2, 3, 6, 9, 18. 24 = 1, 2, 3, 4, 6, 8, 12, 24.",
            "The highest number that appears in both lists is the HCF.",
          ],
          hintsMy: [
            "ဂဏန်းတစ်ခုစီ၏ Factor များကို ဖော်ပြပါ — 18 = 1, 2, 3, 6, 9, 18။ 24 = 1, 2, 3, 4, 6, 8, 12, 24။",
            "စာရင်းနှစ်ခုစလုံးတွင် ပါဝင်သော အမြင့်ဆုံးဂဏန်းသည် HCF ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is the LCM (Lowest Common Multiple) of 4 and 6?",
          questionMy: "4 နှင့် 6 ၏ LCM (Lowest Common Multiple) မှာ အဘယ်နည်း။",
          optionsEn: ["12", "24", "10", "2"],
          optionsMy: ["12", "24", "10", "2"],
          correctIndex: 0,
          hintsEn: [
            "List the multiples of each number: 4, 8, 12, 16... and 6, 12, 18, 24...",
            "The smallest number that appears in both lists is the LCM.",
          ],
          hintsMy: [
            "ဂဏန်းတစ်ခုစီ၏ Multiple များကို ဖော်ပြပါ — 4, 8, 12, 16... နှင့် 6, 12, 18, 24...",
            "စာရင်းနှစ်ခုစလုံးတွင် ပါဝင်သော အသေးဆုံးဂဏန်းသည် LCM ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Two bells ring every 12 seconds and 18 seconds. If they ring together now, after how many seconds will they ring together again?",
          questionMy:
              "ခေါင်းလောင်းနှစ်လုံးသည် 12 စက္ကန့်နှင့် 18 စက္ကန့်တိုင်း တီးလေ့ရှိသည်။ ယခု အတူတကွတီးလျှင် နောက်တစ်ကြိမ် စက္ကန့်မည်မျှအကြာတွင် အတူတကွ ထပ်တီးမည်နည်း။",
          optionsEn: ["36 seconds", "6 seconds", "30 seconds", "216 seconds"],
          optionsMy: ["36 seconds", "6 seconds", "30 seconds", "216 seconds"],
          correctIndex: 0,
          hintsEn: [
            "This is an LCM problem -- you need the smallest number both 12 and 18 divide into evenly.",
            "LCM(12, 18) = 36.",
          ],
          hintsMy: [
            "ဒါက LCM ပြဿနာတစ်ခုဖြစ်သည် — 12 နှင့် 18 နှစ်ခုစလုံးကို အညီအမျှ စားနိုင်သော အသေးဆုံးဂဏန်းလိုအပ်သည်။",
            "LCM(12, 18) = 36 ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w4-d2",
      dayNumber: 2,
      titleEn: "Match the Number Theory Vocabulary",
      titleMy: "ဂဏန်းသီအိုရီ ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w4-dm-1",
          termEn: "Prime Number",
          termMy: "ပင်ရင်းကိန်း (Prime Number)",
          matchEn:
              "A number greater than 1 with exactly two factors: 1 and itself",
          matchMy:
              "Factor အတိအကျနှစ်ခု ရှိသော 1 ထက်ကြီးသည့်ဂဏန်း - 1 နှင့် ကိုယ်တိုင်",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w4-dm-2",
          termEn: "Composite Number",
          termMy: "ဒြပ်ပေါင်းကိန်း (Composite Number)",
          matchEn: "A number greater than 1 with more than two factors",
          matchMy: "Factor နှစ်ခုထက်ပိုသော 1 ထက်ကြီးသည့်ဂဏန်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w4-dm-3",
          termEn: "Prime Factorization",
          termMy: "ပင်ရင်းကိန်းခွဲခြင်း (Prime Factorization)",
          matchEn: "Writing a number as a product of only its prime factors",
          matchMy:
              "ဂဏန်းတစ်ခုကို ၎င်း၏ ပင်ရင်းကိန်း Factor များ၏ ရလဒ်အဖြစ်သာ ရေးသားခြင်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w4-dm-4",
          termEn: "Factor Tree",
          termMy: "Factor သစ်ပင် (Factor Tree)",
          matchEn:
              "A diagram that breaks a number down into its prime factors step by step",
          matchMy:
              "ဂဏန်းတစ်ခုကို ၎င်း၏ ပင်ရင်းကိန်း Factor များအဖြစ် အဆင့်ဆင့် ခွဲခြမ်းပြသော ပုံကြမ်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w4-dm-5",
          termEn: "HCF (Highest Common Factor)",
          termMy: "HCF (အများဆုံးဘုံ Factor)",
          matchEn:
              "The largest number that divides evenly into two or more numbers",
          matchMy:
              "ဂဏန်းနှစ်ခု သို့မဟုတ် ထို့ထက်ပိုသော ဂဏန်းများကို အညီအမျှစားနိုင်သော အကြီးဆုံးဂဏန်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w4-dm-6",
          termEn: "LCM (Lowest Common Multiple)",
          termMy: "LCM (အနည်းဆုံးဘုံ Multiple)",
          matchEn:
              "The smallest number that two or more numbers all divide evenly into",
          matchMy:
              "ဂဏန်းနှစ်ခု သို့မဟုတ် ထို့ထက်ပိုသော ဂဏန်းများ အားလုံး အညီအမျှစားနိုင်သော အသေးဆုံးဂဏန်း",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w4-d3",
      dayNumber: 3,
      titleEn: "Sort: Prime Number or Composite Number?",
      titleMy: "စီစစ်ကြမည် - ပင်ရင်းကိန်းလား၊ ဒြပ်ပေါင်းကိန်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Prime Number", "Composite Number"],
        bucketsMy: ["ပင်ရင်းကိန်း", "ဒြပ်ပေါင်းကိန်း"],
        items: [
          SortingItem(
            id: "s2math-w4-sort-1",
            labelEn: "7 (only divides evenly by 1 and 7)",
            labelMy: "7 (1 နှင့် 7 ဖြင့်သာ အညီအမျှစားနိုင်သည်)",
            correctBucketEn: "Prime Number",
            correctBucketMy: "ပင်ရင်းကိန်း",
          ),
          SortingItem(
            id: "s2math-w4-sort-2",
            labelEn: "12 (divides evenly by 1, 2, 3, 4, 6, and 12)",
            labelMy: "12 (1, 2, 3, 4, 6, 12 ဖြင့် အညီအမျှစားနိုင်သည်)",
            correctBucketEn: "Composite Number",
            correctBucketMy: "ဒြပ်ပေါင်းကိန်း",
          ),
          SortingItem(
            id: "s2math-w4-sort-3",
            labelEn: "13 (only divides evenly by 1 and 13)",
            labelMy: "13 (1 နှင့် 13 ဖြင့်သာ အညီအမျှစားနိုင်သည်)",
            correctBucketEn: "Prime Number",
            correctBucketMy: "ပင်ရင်းကိန်း",
          ),
          SortingItem(
            id: "s2math-w4-sort-4",
            labelEn: "21 (divides evenly by 1, 3, 7, and 21)",
            labelMy: "21 (1, 3, 7, 21 ဖြင့် အညီအမျှစားနိုင်သည်)",
            correctBucketEn: "Composite Number",
            correctBucketMy: "ဒြပ်ပေါင်းကိန်း",
          ),
          SortingItem(
            id: "s2math-w4-sort-5",
            labelEn: "2 (the only even prime number)",
            labelMy: "2 (တစ်ခုတည်းသော စုံဂဏန်းပင်ရင်းကိန်း)",
            correctBucketEn: "Prime Number",
            correctBucketMy: "ပင်ရင်းကိန်း",
          ),
          SortingItem(
            id: "s2math-w4-sort-6",
            labelEn: "15 (divides evenly by 1, 3, 5, and 15)",
            labelMy: "15 (1, 3, 5, 15 ဖြင့် အညီအမျှစားနိုင်သည်)",
            correctBucketEn: "Composite Number",
            correctBucketMy: "ဒြပ်ပေါင်းကိန်း",
          ),
          SortingItem(
            id: "s2math-w4-sort-7",
            labelEn: "29 (only divides evenly by 1 and 29)",
            labelMy: "29 (1 နှင့် 29 ဖြင့်သာ အညီအမျှစားနိုင်သည်)",
            correctBucketEn: "Prime Number",
            correctBucketMy: "ပင်ရင်းကိန်း",
          ),
          SortingItem(
            id: "s2math-w4-sort-8",
            labelEn: "35 (divides evenly by 1, 5, 7, and 35)",
            labelMy: "35 (1, 5, 7, 35 ဖြင့် အညီအမျှစားနိုင်သည်)",
            correctBucketEn: "Composite Number",
            correctBucketMy: "ဒြပ်ပေါင်းကိန်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w4-d4",
      dayNumber: 4,
      titleEn: "Reading: The Number Theory Escape Room",
      titleMy: "စာဖတ်ခြင်း - ဂဏန်းသီအိုရီ Escape Room",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The Number Theory Escape Room",
        titleMy: "ဂဏန်းသီအိုရီ Escape Room",
        passageEn:
            "For the term's final challenge, the maths teacher locked Su Su, Thiri, and Mya's team in a classroom \"escape room\" with four number puzzles standing between them and the door key. The first lock needed the answer to (-8) × (-3) + 2² -- a mix of directed numbers and powers from the term's earlier weeks. Mya worked it out calmly: (-8) × (-3) = 24, and 2² = 4, so 24 + 4 = 28. The first digit dial clicked into place.\n\nThe second lock displayed 60 written as a product of prime numbers, with the digits of the answer needed in order. Thiri drew a quick factor tree: 60 = 2 × 30 = 2 × 2 × 15 = 2 × 2 × 3 × 5, giving the prime factorization 2² × 3 × 5. She typed \"2235\" and the second dial turned.\n\nThe third lock was a word problem taped to the wall: two robots patrol a corridor, one returning to its start point every 8 minutes, the other every 12 minutes. Both robots start together -- after how many minutes will they next be at the start point at the same time? \"That's an LCM question,\" Su Su said immediately, listing multiples of 8 and 12 until she found 24 in both lists. The third dial clicked open.\n\nThe final lock asked for the HCF of 36 and 48, needed to unlock the actual door. Working together, the team listed factors of both numbers and agreed on 12. As the door swung open, their teacher smiled. \"Every one of those puzzles used something you learned this term,\" she said. \"Directed numbers, powers, index laws, and now HCF and LCM -- number theory isn't just abstract rules. It's a toolkit for solving exactly this kind of problem.\"",
        passageMy:
            "သင်တန်း၏ နောက်ဆုံးစိန်ခေါ်မှုအတွက် သင်္ချာဆရာမသည် စုစု၊ သီရိနှင့် မြတို့၏ အဖွဲ့ကို ၎င်းတို့နှင့် တံခါးသော့ကြားတွင် ဂဏန်းပဟေဠိလေးခု ရှိနေသော 'Escape Room' စာသင်ခန်းတစ်ခုအတွင်း ချုပ်ထားခဲ့သည်။ ပထမသော့ခလောက်ကို ဖွင့်ရန် (-8) × (-3) + 2² ၏ အဖြေ လိုအပ်ခဲ့ပြီး — ၎င်းသည် သင်တန်း၏ ယခင်ပတ်များမှ ဦးတည်ဂဏန်းနှင့် ထပ်ကိန်းများ ရောနှောထားသော ပုစ္ဆာတစ်ပုဒ်ဖြစ်သည်။ မြသည် တည်ငြိမ်စွာ တွက်ချက်ခဲ့သည် — (-8) × (-3) = 24 ဖြစ်ပြီး 2² = 4 ဖြစ်သောကြောင့် 24 + 4 = 28 ဖြစ်သည်။ ပထမဂဏန်းအလှည့် ကလစ်တစ်ချက်နှင့် ရွေ့သွားသည်။\n\nဒုတိယသော့ခလောက်တွင် 60 ကို ပင်ရင်းကိန်းများ၏ ရလဒ်အဖြစ် ဖော်ပြထားပြီး အဖြေ၏ ဂဏန်းများကို အစဉ်လိုက် လိုအပ်ခဲ့သည်။ သီရိသည် Factor Tree လေးတစ်ခုကို လျင်မြန်စွာ ရေးဆွဲခဲ့သည် — 60 = 2 × 30 = 2 × 2 × 15 = 2 × 2 × 3 × 5၊ ပင်ရင်းကိန်းခွဲခြင်း 2² × 3 × 5 ကို ရရှိစေသည်။ သူမသည် '2235' ဟု ရိုက်ထည့်လိုက်ရာ ဒုတိယအလှည့် ကွေ့သွားသည်။\n\nတတိယသော့ခလောက်သည် နံရံပေါ်တွင် ကပ်ထားသော ပုစ္ဆာစာသားတစ်ခုဖြစ်သည် — ရိုဘော့နှစ်လုံးသည် လမ်းကြောင်းတစ်ခုကို လှည့်ကင်းလှည့်နေရာ တစ်လုံးသည် 8 မိနစ်တိုင်း၊ အခြားတစ်လုံးသည် 12 မိနစ်တိုင်း စတင်ရာနေရာသို့ ပြန်ရောက်လေ့ရှိသည်။ ရိုဘော့နှစ်လုံးလုံး အတူတကွစတင်ပါက နောက်တစ်ကြိမ် စတင်ရာနေရာတွင် တစ်ချိန်တည်း ရောက်ရှိရန် မိနစ်မည်မျှလိုအပ်မည်နည်း။ 'ဒါက LCM မေးခွန်းတစ်ခုပါ' ဟု စုစုက ချက်ချင်းပြောခဲ့ပြီး 8 နှင့် 12 ၏ Multiple များကို 24 နှစ်ခုစလုံးတွင် တွေ့သည်အထိ ဖော်ပြခဲ့သည်။ တတိယအလှည့် ကလစ်ဖွင့်လိုက်သည်။\n\nနောက်ဆုံးသော့ခလောက်သည် တံခါးအမှန်ကို ဖွင့်ရန် လိုအပ်သော 36 နှင့် 48 ၏ HCF ကို မေးခဲ့သည်။ အဖွဲ့ဝင်များ အတူတကွ ပူးပေါင်းလုပ်ဆောင်ရင်း ဂဏန်းနှစ်ခုလုံး၏ Factor များကို ဖော်ပြပြီး 12 ဖြစ်ကြောင်း သဘောတူညီခဲ့ကြသည်။ တံခါးဖွင့်လိုက်သောအခါ သူတို့ဆရာမ ပြုံးလိုက်သည်။ 'ထိုပုစ္ဆာတိုင်းသည် ဒီသင်တန်းမှာ သင်ယူခဲ့တဲ့အရာတစ်ခုကို အသုံးပြုခဲ့တာပါ' ဟု သူမက ပြောခဲ့သည်။ 'ဦးတည်ဂဏန်း၊ ထပ်ကိန်း၊ ထပ်ကိန်းစည်းမျဉ်းနှင့် ယခု HCF နှင့် LCM — ဂဏန်းသီအိုရီဆိုတာ စည်းမျဉ်းစိတ်ကူးထဲက အရာသက်သက်မဟုတ်ဘူး။ ဒီလိုပုစ္ဆာမျိုးများကို ဖြေရှင်းဖို့ အသုံးအဆောင်တစ်ခုပါပဲ' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what was the answer to the first lock's puzzle?",
            questionMy: "စာပိုဒ် ၁ အရ ပထမသော့ခလောက်၏ ပုစ္ဆာအဖြေမှာ အဘယ်နည်း။",
            optionsEn: ["28", "22", "26", "20"],
            optionsMy: ["28", "22", "26", "20"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was 60's prime factorization?",
            questionMy: "စာပိုဒ် ၂ အရ 60 ၏ ပင်ရင်းကိန်းခွဲခြင်းမှာ အဘယ်နည်း။",
            optionsEn: ["2² × 3 × 5", "2 × 3 × 10", "6 × 10", "4 × 3 × 5"],
            optionsMy: ["2² × 3 × 5", "2 × 3 × 10", "6 × 10", "4 × 3 × 5"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, after how many minutes would the two robots next meet at the start point together?",
            questionMy:
                "စာပိုဒ် ၃ အရ ရိုဘော့နှစ်လုံးသည် စတင်ရာနေရာတွင် နောက်တစ်ကြိမ် မိနစ်မည်မျှအကြာတွင် အတူတကွ တွေ့မည်နည်း။",
            optionsEn: ["24 minutes", "8 minutes", "12 minutes", "96 minutes"],
            optionsMy: ["၂၄ မိနစ်", "၈ မိနစ်", "၁၂ မိနစ်", "၉၆ မိနစ်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, what was the HCF of 36 and 48?",
            questionMy: "စာပိုဒ် ၄ အရ 36 နှင့် 48 ၏ HCF မှာ အဘယ်နည်း။",
            optionsEn: ["12", "6", "4", "144"],
            optionsMy: ["12", "6", "4", "144"],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w4-d5",
      dayNumber: 5,
      titleEn: "Advanced Number Systems Term Round-Up",
      titleMy: "Advanced Number Systems သင်တန်း အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is (-9) × (-2)?",
          questionMy: "(-9) × (-2) သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["18", "-18", "11", "-11"],
          optionsMy: ["18", "-18", "11", "-11"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is 5³?",
          questionMy: "5³ သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["125", "15", "25", "53"],
          optionsMy: ["125", "15", "25", "53"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Using index laws, what is 4⁵ ÷ 4²?",
          questionMy: "ထပ်ကိန်းစည်းမျဉ်းကိုသုံး၍ 4⁵ ÷ 4² သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["4³", "4⁷", "4¹⁰", "1"],
          optionsMy: ["4³", "4⁷", "4¹⁰", "1"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is the prime factorization of 36?",
          questionMy: "36 ၏ ပင်ရင်းကိန်းခွဲခြင်းမှာ အဘယ်နည်း။",
          optionsEn: ["2² × 3²", "2 × 3 × 6", "4 × 9", "6²"],
          optionsMy: ["2² × 3²", "2 × 3 × 6", "4 × 9", "6²"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the escape room challenge, what was the answer to the LCM question about the two robots?",
          questionMy:
              "Escape Room စိန်ခေါ်မှုတွင် ရိုဘော့နှစ်လုံးအကြောင်း LCM မေးခွန်း၏ အဖြေမှာ အဘယ်နည်း။",
          optionsEn: ["24 minutes", "8 minutes", "12 minutes", "96 minutes"],
          optionsMy: ["၂၄ မိနစ်", "၈ မိနစ်", "၁၂ မိနစ်", "၉၆ မိနစ်"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary2MathematicsTerm1 = CourseTermDef(
  id: "course-secondary2-mathematics-t1",
  termNumber: 1,
  titleEn: "Advanced Number Systems",
  titleMy: "အဆင့်မြင့် ဂဏန်းစနစ်များ",
  certificateTitleEn: "Advanced Number Systems",
  certificateTitleMy: "အဆင့်မြင့် ဂဏန်းစနစ်များ",
  weeks: [
    _secondary2MathematicsWeek1,
    _secondary2MathematicsWeek2,
    _secondary2MathematicsWeek3,
    _secondary2MathematicsWeek4,
  ],
);
