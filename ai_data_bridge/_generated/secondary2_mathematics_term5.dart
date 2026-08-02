const CourseWeekDef _secondary2MathematicsWeek17 = CourseWeekDef(
  id: "course-secondary2-mathematics-w17",
  weekNumber: 17,
  titleEn: "Solving Linear Equations",
  titleMy: "Linear ညီမျှခြင်းများ ဖြေရှင်းခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w17-d1",
      dayNumber: 1,
      titleEn: "Equations with Unknowns on Both Sides",
      titleMy: "ဘက်နှစ်ဘက်စလုံးတွင် မသိကိန်းပါသော ညီမျှခြင်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Solve 5x + 3 = 3x + 11.",
          questionMy: "5x + 3 = 3x + 11 ကို ဖြေရှင်းပါ။",
          optionsEn: ["x = 4", "x = 8", "x = 2", "x = 14"],
          optionsMy: ["x = 4", "x = 8", "x = 2", "x = 14"],
          correctIndex: 0,
          hintsEn: [
            "First move the x terms to one side by subtracting 3x from both sides: 2x + 3 = 11.",
            "Then subtract 3 from both sides and divide by 2: 2x = 8, so x = 4.",
          ],
          hintsMy: [
            "ပထမဆုံး ဘက်နှစ်ဘက်စလုံးမှ 3x ကို နုတ်ခြင်းဖြင့် x Term များကို ဘက်တစ်ဘက်သို့ ရွှေ့ပါ — 2x + 3 = 11။",
            "ထို့နောက် ဘက်နှစ်ဘက်စလုံးမှ 3 ကို နုတ်ပြီး 2 ဖြင့်စားပါ — 2x = 8, ထို့ကြောင့် x = 4။",
          ],
        ),
        QuizQuestion(
          questionEn: "Solve 4(x + 2) = 20.",
          questionMy: "4(x + 2) = 20 ကို ဖြေရှင်းပါ။",
          optionsEn: ["x = 3", "x = 5", "x = 18", "x = 2"],
          optionsMy: ["x = 3", "x = 5", "x = 18", "x = 2"],
          correctIndex: 0,
          hintsEn: [
            "First expand the bracket: 4x + 8 = 20.",
            "Subtract 8 from both sides: 4x = 12, then divide by 4: x = 3.",
          ],
          hintsMy: [
            "ပထမဆုံး ကွင်းကို ဖြန့်ပါ — 4x + 8 = 20။",
            "ဘက်နှစ်ဘက်စလုံးမှ 8 ကို နုတ်ပါ — 4x = 12, ထို့နောက် 4 ဖြင့်စားပါ — x = 3။",
          ],
        ),
        QuizQuestion(
          questionEn: "Solve x/3 + 2 = 5.",
          questionMy: "x/3 + 2 = 5 ကို ဖြေရှင်းပါ။",
          optionsEn: ["x = 9", "x = 15", "x = 1", "x = 21"],
          optionsMy: ["x = 9", "x = 15", "x = 1", "x = 21"],
          correctIndex: 0,
          hintsEn: [
            "First subtract 2 from both sides: x/3 = 3.",
            "Then multiply both sides by 3: x = 9.",
          ],
          hintsMy: [
            "ပထမဆုံး ဘက်နှစ်ဘက်စလုံးမှ 2 ကို နုတ်ပါ — x/3 = 3။",
            "ထို့နောက် ဘက်နှစ်ဘက်စလုံးကို 3 ဖြင့်မြှောက်ပါ — x = 9။",
          ],
        ),
        QuizQuestion(
          questionEn: "Solve 3(x - 1) = 2(x + 4).",
          questionMy: "3(x - 1) = 2(x + 4) ကို ဖြေရှင်းပါ။",
          optionsEn: ["x = 11", "x = 5", "x = 3", "x = 1"],
          optionsMy: ["x = 11", "x = 5", "x = 3", "x = 1"],
          correctIndex: 0,
          hintsEn: [
            "First expand both brackets: 3x - 3 = 2x + 8.",
            "Subtract 2x from both sides: x - 3 = 8, then add 3: x = 11.",
          ],
          hintsMy: [
            "ပထမဆုံး ကွင်းနှစ်ခုစလုံးကို ဖြန့်ပါ — 3x - 3 = 2x + 8။",
            "ဘက်နှစ်ဘက်စလုံးမှ 2x ကို နုတ်ပါ — x - 3 = 8, ထို့နောက် 3 ကို ပေါင်းပါ — x = 11။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w17-d2",
      dayNumber: 2,
      titleEn: "Match the Equations Vocabulary",
      titleMy: "ညီမျှခြင်း ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w17-dm-1",
          termEn: "Linear Equation",
          termMy: "Linear ညီမျှခြင်း",
          matchEn:
              "An equation where the unknown appears only to the power of 1",
          matchMy: "မသိကိန်းသည် Power 1 တွင်သာ ပေါ်လာသော ညီမျှခြင်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w17-dm-2",
          termEn: "Solve",
          termMy: "ဖြေရှင်းခြင်း (Solve)",
          matchEn:
              "To find the value of the unknown that makes the equation true",
          matchMy:
              "ညီမျှခြင်းကို မှန်ကန်စေမည့် မသိကိန်း၏ တန်ဖိုးကို ရှာဖွေခြင်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w17-dm-3",
          termEn: "Balance Both Sides",
          termMy: "ဘက်နှစ်ဘက် ဟန်ချက်ညှိခြင်း",
          matchEn:
              "Doing the same operation to both sides of an equation to keep it equal",
          matchMy:
              "ညီမျှခြင်းကို ညီမျှသည်ရှိနေစေရန် ဘက်နှစ်ဘက်စလုံးတွင် လုပ်ဆောင်ချက်တူညီစွာ ပြုလုပ်ခြင်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w17-dm-4",
          termEn: "Check the Solution",
          termMy: "ဖြေရှင်းချက် စစ်ဆေးခြင်း",
          matchEn:
              "Substituting the answer back into the original equation to confirm it works",
          matchMy:
              "အဖြေသည် အလုပ်ဖြစ်ကြောင်း အတည်ပြုရန် မူလညီမျှခြင်းထဲသို့ ပြန်အစားထိုးခြင်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w17-dm-5",
          termEn: "Inverse Operation",
          termMy: "ဆန့်ကျင်ဘက် လုပ်ဆောင်ချက် (Inverse Operation)",
          matchEn:
              "An operation that undoes another, e.g. subtraction undoes addition",
          matchMy:
              "အခြားလုပ်ဆောင်ချက်တစ်ခုကို ပြန်ဖျက်ပေးသောလုပ်ဆောင်ချက်၊ ဥပမာ နုတ်ခြင်းသည် ပေါင်းခြင်းကို ပြန်ဖျက်ပေးသည်",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w17-dm-6",
          termEn: "Unknown",
          termMy: "မသိကိန်း (Unknown)",
          matchEn:
              "The letter in an equation whose value has not yet been found",
          matchMy: "တန်ဖိုးကို မရှာတွေ့သေးသော ညီမျှခြင်းထဲရှိ အက္ခရာ",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w17-d3",
      dayNumber: 3,
      titleEn: "Sort: Correct Solution or Incorrect Solution?",
      titleMy: "စီစစ်ကြမည် - ဖြေရှင်းချက် မှန်လား၊ မှားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Correct Solution", "Incorrect Solution"],
        bucketsMy: ["ဖြေရှင်းချက် မှန်", "ဖြေရှင်းချက် မှား"],
        items: [
          SortingItem(
            id: "s2math-w17-sort-1",
            labelEn: "3x + 2 = 11, x = 3",
            labelMy: "3x + 2 = 11, x = 3",
            correctBucketEn: "Correct Solution",
            correctBucketMy: "ဖြေရှင်းချက် မှန်",
          ),
          SortingItem(
            id: "s2math-w17-sort-2",
            labelEn: "3x + 2 = 11, x = 4",
            labelMy: "3x + 2 = 11, x = 4",
            correctBucketEn: "Incorrect Solution",
            correctBucketMy: "ဖြေရှင်းချက် မှား",
          ),
          SortingItem(
            id: "s2math-w17-sort-3",
            labelEn: "2(x + 3) = 16, x = 5",
            labelMy: "2(x + 3) = 16, x = 5",
            correctBucketEn: "Correct Solution",
            correctBucketMy: "ဖြေရှင်းချက် မှန်",
          ),
          SortingItem(
            id: "s2math-w17-sort-4",
            labelEn: "2(x + 3) = 16, x = 8",
            labelMy: "2(x + 3) = 16, x = 8",
            correctBucketEn: "Incorrect Solution",
            correctBucketMy: "ဖြေရှင်းချက် မှား",
          ),
          SortingItem(
            id: "s2math-w17-sort-5",
            labelEn: "5x - 4 = 3x + 6, x = 5",
            labelMy: "5x - 4 = 3x + 6, x = 5",
            correctBucketEn: "Correct Solution",
            correctBucketMy: "ဖြေရှင်းချက် မှန်",
          ),
          SortingItem(
            id: "s2math-w17-sort-6",
            labelEn: "5x - 4 = 3x + 6, x = 1",
            labelMy: "5x - 4 = 3x + 6, x = 1",
            correctBucketEn: "Incorrect Solution",
            correctBucketMy: "ဖြေရှင်းချက် မှား",
          ),
          SortingItem(
            id: "s2math-w17-sort-7",
            labelEn: "x/4 = 6, x = 24",
            labelMy: "x/4 = 6, x = 24",
            correctBucketEn: "Correct Solution",
            correctBucketMy: "ဖြေရှင်းချက် မှန်",
          ),
          SortingItem(
            id: "s2math-w17-sort-8",
            labelEn: "x/4 = 6, x = 2",
            labelMy: "x/4 = 6, x = 2",
            correctBucketEn: "Incorrect Solution",
            correctBucketMy: "ဖြေရှင်းချက် မှား",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w17-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su's Two Phone Plans",
      titleMy: "စာဖတ်ခြင်း - စုစု၏ ဖုန်းစနစ်နှစ်ခု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su's Two Phone Plans",
        titleMy: "စုစု၏ ဖုန်းစနစ်နှစ်ခု",
        passageEn:
            "Su Su was comparing two phone plans for her family. Plan A charged a flat monthly fee of 15,000 units with no extra cost per gigabyte of data. Plan B charged a lower monthly fee of 9,000 units, but added 2,000 units for every extra gigabyte of data used beyond a small included amount.\n\n\"At what point do the two plans cost the same?\" her father asked. Su Su set up an equation, letting x represent the number of extra gigabytes: Plan A's cost was simply 15,000, and Plan B's cost was 9,000 + 2,000x. Setting them equal: 15,000 = 9,000 + 2,000x.\n\nSolving step by step, she subtracted 9,000 from both sides: 6,000 = 2,000x. Dividing both sides by 2,000 gave x = 3. \"The two plans cost exactly the same at 3 extra gigabytes,\" Su Su explained. \"Below 3 gigabytes, Plan B is cheaper. Above 3 gigabytes, Plan A becomes the better deal, since its price never changes no matter how much data you use.\" She checked her answer by substituting x = 3 back into Plan B's cost: 9,000 + 2,000(3) = 9,000 + 6,000 = 15,000, exactly matching Plan A. Her father was impressed that an equation could answer a real household budgeting question so precisely.",
        passageMy:
            "စုစုသည် သူမ၏ မိသားစုအတွက် ဖုန်းစနစ်နှစ်ခုကို နှိုင်းယှဉ်နေခဲ့သည်။ Plan A သည် Data Gigabyte အတွက် ထပ်ကုန်ကျစရိတ်မရှိဘဲ လစဉ်ကိန်းသေအခကြေးငွေ ယူနစ် 15,000 တောင်းခံခဲ့သည်။ Plan B သည် လစဉ်အခကြေးငွေ ယူနစ် 9,000 ဖြင့် ပိုနည်းစွာ တောင်းခံသော်လည်း ပါဝင်ပမာဏငယ်ကျော်လွန်ပါက Data Gigabyte တစ်ခုအတွက် ယူနစ် 2,000 ထပ်ဆောင်း ထပ်ကောက်ခံခဲ့သည်။\n\n'ဘယ်နေရာမှာ စနစ်နှစ်ခု တူညီသောကုန်ကျစရိတ် ရှိမလဲ' ဟု သူ့အဖေက မေးခဲ့သည်။ x ကို ထပ်ဆောင်း Gigabyte အရေအတွက် ကိုယ်စားပြုစေလျက် စုစုသည် ညီမျှခြင်းတစ်ခု စီစဉ်ခဲ့သည် — Plan A ၏ ကုန်ကျစရိတ်သည် ရိုးရှင်းစွာ 15,000 ဖြစ်ပြီး Plan B ၏ ကုန်ကျစရိတ်သည် 9,000 + 2,000x ဖြစ်သည်။ ၎င်းတို့ကို ညီမျှစေလိုက်ရာ — 15,000 = 9,000 + 2,000x။\n\nအဆင့်ဆင့် ဖြေရှင်းရင်း ဘက်နှစ်ဘက်စလုံးမှ 9,000 ကို နုတ်ခဲ့သည် — 6,000 = 2,000x။ ဘက်နှစ်ဘက်စလုံးကို 2,000 ဖြင့် စားလိုက်ရာ x = 3 ရရှိသည်။ 'စနစ်နှစ်ခုသည် ထပ်ဆောင်း Gigabyte 3 ခုတွင် ကုန်ကျစရိတ်အတိအကျ တူညီသည်' ဟု စုစု ရှင်းပြခဲ့သည်။ '3 Gigabyte အောက်တွင် Plan B က ပိုစျေးသက်သာသည်။ 3 Gigabyte အထက်တွင် Plan A ကို Data မည်မျှသုံးသည်ဖြစ်စေ ဈေးနှုန်း ဘယ်တော့မှ မပြောင်းလဲသောကြောင့် ပိုကောင်းသောကမ်းလှမ်းချက် ဖြစ်လာသည်' ။ သူမသည် x = 3 ကို Plan B ၏ ကုန်ကျစရိတ်ထဲသို့ ပြန်အစားထိုးကာ သူမ၏ အဖြေကို စစ်ဆေးခဲ့သည် — 9,000 + 2,000(3) = 9,000 + 6,000 = 15,000, Plan A နှင့် အတိအကျ ကိုက်ညီသည်။ ညီမျှခြင်းတစ်ခုသည် အိမ်ထောင်စု ဘတ်ဂျက်မေးခွန်းအမှန်တစ်ခုကို ဤမျှ တိကျစွာ ဖြေဆိုနိုင်ကြောင်း သူ့အဖေ အထင်ကြီးခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what equation did Su Su set up?",
            questionMy: "စာပိုဒ် ၂ အရ စုစု မည်သည့်ညီမျှခြင်းကို စီစဉ်ခဲ့သနည်း။",
            optionsEn: [
              "15,000 = 9,000 + 2,000x",
              "15,000 + 9,000 = 2,000x",
              "15,000 - 9,000 = x",
              "9,000 = 15,000 + 2,000x",
            ],
            optionsMy: [
              "15,000 = 9,000 + 2,000x",
              "15,000 + 9,000 = 2,000x",
              "15,000 - 9,000 = x",
              "9,000 = 15,000 + 2,000x",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, at how many extra gigabytes do the plans cost the same?",
            questionMy:
                "စာပိုဒ် ၃ အရ ထပ်ဆောင်း Gigabyte မည်မျှတွင် စနစ်နှစ်ခု ကုန်ကျစရိတ် တူညီသနည်း။",
            optionsEn: ["3", "6", "9", "15"],
            optionsMy: ["3", "6", "9", "15"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, which plan is cheaper below 3 extra gigabytes?",
            questionMy:
                "စာပိုဒ် ၃ အရ ထပ်ဆောင်း Gigabyte 3 ခုအောက်တွင် မည်သည့်စနစ်က ပိုစျေးသက်သာသနည်း။",
            optionsEn: [
              "Plan B",
              "Plan A",
              "Both cost exactly the same always",
              "Neither plan works",
            ],
            optionsMy: [
              "Plan B",
              "Plan A",
              "နှစ်ခုစလုံး အမြဲတူညီ",
              "စနစ်နှစ်ခုစလုံး အလုပ်မလုပ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, how did Su Su check her answer?",
            questionMy:
                "စာပိုဒ် ၃ အရ စုစုသည် သူမ၏ အဖြေကို မည်သို့ စစ်ဆေးခဲ့သနည်း။",
            optionsEn: [
              "She substituted x = 3 back into Plan B's cost and confirmed it matched Plan A",
              "She guessed the answer without checking",
              "She asked her father for the answer directly",
              "She measured the phones with a ruler",
            ],
            optionsMy: [
              "x = 3 ကို Plan B ၏ ကုန်ကျစရိတ်ထဲသို့ ပြန်အစားထိုးပြီး Plan A နှင့် ကိုက်ညီကြောင်း အတည်ပြုခဲ့သည်",
              "မစစ်ဆေးဘဲ အဖြေကို ခန့်မှန်းခဲ့သည်",
              "သူ့အဖေကို တိုက်ရိုက် အဖြေမေးခဲ့သည်",
              "ဖုန်းများကို ပေတံဖြင့် တိုင်းတာခဲ့သည်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w17-d5",
      dayNumber: 5,
      titleEn: "Solving Linear Equations Recap Quiz",
      titleMy: "Linear ညီမျှခြင်းများ ဖြေရှင်းခြင်း ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Solve 4x + 5 = 2x + 13.",
          questionMy: "4x + 5 = 2x + 13 ကို ဖြေရှင်းပါ။",
          optionsEn: ["x = 4", "x = 8", "x = 9", "x = 2"],
          optionsMy: ["x = 4", "x = 8", "x = 9", "x = 2"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Solve 3(x + 1) = 15.",
          questionMy: "3(x + 1) = 15 ကို ဖြေရှင်းပါ။",
          optionsEn: ["x = 4", "x = 5", "x = 14", "x = 3"],
          optionsMy: ["x = 4", "x = 5", "x = 14", "x = 3"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Solve x/5 + 1 = 4.",
          questionMy: "x/5 + 1 = 4 ကို ဖြေရှင်းပါ။",
          optionsEn: ["x = 15", "x = 20", "x = 3", "x = 25"],
          optionsMy: ["x = 15", "x = 20", "x = 3", "x = 25"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "To check a solution, you should...",
          questionMy: "ဖြေရှင်းချက်တစ်ခုကို စစ်ဆေးရန် သင် ...",
          optionsEn: [
            "Substitute it back into the original equation",
            "Never check it at all",
            "Only check if the answer is a whole number",
            "Guess a different answer instead",
          ],
          optionsMy: [
            "မူလညီမျှခြင်းထဲသို့ ပြန်အစားထိုးရမည်",
            "ဘယ်တော့မှ လုံးဝ မစစ်ဆေးရမည်",
            "အဖြေသည် ကိန်းပြည့်ဖြစ်မှသာ စစ်ဆေးရမည်",
            "အခြားအဖြေတစ်ခုကို အစား ခန့်မှန်းရမည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Su Su's phone plan story, the two plans cost the same at how many extra gigabytes?",
          questionMy:
              "စုစု၏ ဖုန်းစနစ်ဇာတ်လမ်းတွင် စနစ်နှစ်ခု ထပ်ဆောင်း Gigabyte မည်မျှတွင် ကုန်ကျစရိတ် တူညီသနည်း။",
          optionsEn: ["3", "6", "9", "15"],
          optionsMy: ["3", "6", "9", "15"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek18 = CourseWeekDef(
  id: "course-secondary2-mathematics-w18",
  weekNumber: 18,
  titleEn: "Coordinates and Straight Lines",
  titleMy: "Coordinate များနှင့် မျဉ်းဖြောင့်များ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w18-d1",
      dayNumber: 1,
      titleEn: "y = mx + c and Gradients",
      titleMy: "y = mx + c နှင့် Gradient များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In the equation y = mx + c, what does m represent?",
          questionMy:
              "y = mx + c ညီမျှခြင်းတွင် m သည် မည်သည်ကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "The gradient (slope)",
            "The y-intercept",
            "The x-coordinate",
            "A fixed constant of 1",
          ],
          optionsMy: [
            "Gradient (Slope)",
            "Y-Intercept",
            "X-Coordinate",
            "ကိန်းသေ 1 တစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "m controls how steep the line is.",
            "A larger m value means a steeper line.",
          ],
          hintsMy: [
            "m သည် မျဉ်း မည်မျှစောက်သည်ကို ထိန်းချုပ်သည်။",
            "m တန်ဖိုးကြီးလေလေ မျဉ်းစောက်လေလေဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "In the equation y = 3x + 2, what is the y-intercept?",
          questionMy: "y = 3x + 2 ညီမျှခြင်းတွင် y-intercept မှာ အဘယ်နည်း။",
          optionsEn: ["2", "3", "0", "5"],
          optionsMy: ["2", "3", "0", "5"],
          correctIndex: 0,
          hintsEn: [
            "The y-intercept is c, the number added at the end, where the line crosses the y-axis.",
            "In y = 3x + 2, the c value is 2.",
          ],
          hintsMy: [
            "Y-Intercept သည် c ဖြစ်ပြီး နောက်ဆုံးတွင် ပေါင်းထားသောဂဏန်းဖြစ်ပြီး မျဉ်းသည် Y-Axis ကို ဖြတ်သွားသောနေရာဖြစ်သည်။",
            "y = 3x + 2 တွင် c တန်ဖိုးသည် 2 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A line passes through (0, 4) and (2, 8). What is its gradient?",
          questionMy:
              "မျဉ်းတစ်ခုသည် (0, 4) နှင့် (2, 8) ကို ဖြတ်သွားသည်။ ၎င်း၏ Gradient မှာ အဘယ်နည်း။",
          optionsEn: ["2", "4", "8", "1/2"],
          optionsMy: ["2", "4", "8", "1/2"],
          correctIndex: 0,
          hintsEn: [
            "Gradient = change in y ÷ change in x.",
            "(8 - 4) ÷ (2 - 0) = 4 ÷ 2 = 2.",
          ],
          hintsMy: [
            "Gradient = y ပြောင်းလဲမှု ÷ x ပြောင်းလဲမှု။",
            "(8 - 4) ÷ (2 - 0) = 4 ÷ 2 = 2 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the equation of a line with gradient 5 and y-intercept -3?",
          questionMy:
              "Gradient 5 နှင့် Y-Intercept -3 ရှိသော မျဉ်း၏ ညီမျှခြင်းမှာ အဘယ်နည်း။",
          optionsEn: ["y = 5x - 3", "y = -3x + 5", "y = 5x + 3", "y = 3x - 5"],
          optionsMy: ["y = 5x - 3", "y = -3x + 5", "y = 5x + 3", "y = 3x - 5"],
          correctIndex: 0,
          hintsEn: [
            "Substitute m = 5 and c = -3 into y = mx + c.",
            "y = 5x + (-3), which simplifies to y = 5x - 3.",
          ],
          hintsMy: [
            "m = 5 နှင့် c = -3 ကို y = mx + c ထဲသို့ အစားထိုးပါ။",
            "y = 5x + (-3), ၎င်းသည် y = 5x - 3 အဖြစ် ရိုးရှင်းသွားသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w18-d2",
      dayNumber: 2,
      titleEn: "Match the Coordinates Vocabulary",
      titleMy: "Coordinate ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w18-dm-1",
          termEn: "Gradient",
          termMy: "Gradient (စောက်ရှိန်)",
          matchEn:
              "A measure of how steep a line is, calculated as change in y over change in x",
          matchMy:
              "မျဉ်းတစ်ခု မည်မျှစောက်သည်ကို တိုင်းတာချက်၊ y ပြောင်းလဲမှုကို x ပြောင်းလဲမှုဖြင့် စား၍ တွက်ချက်",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w18-dm-2",
          termEn: "Y-Intercept",
          termMy: "Y-Intercept (Y-Axis ဖြတ်ရာအမှတ်)",
          matchEn: "The point where a line crosses the y-axis, where x = 0",
          matchMy: "x = 0 ဖြစ်သည့် မျဉ်းသည် Y-Axis ကို ဖြတ်သွားသောနေရာ",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w18-dm-3",
          termEn: "Coordinate",
          termMy: "Coordinate (တည်နေရာအမှတ်)",
          matchEn:
              "A pair of numbers (x, y) showing a point's position on a graph",
          matchMy: "ဂရပ်ပေါ်ရှိ အမှတ်တစ်ခု၏ တည်နေရာကို ပြသော ဂဏန်းအတွဲ (x, y)",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w18-dm-4",
          termEn: "Origin",
          termMy: "Origin (ဗဟိုအမှတ်)",
          matchEn: "The point (0, 0) where the x-axis and y-axis meet",
          matchMy: "X-Axis နှင့် Y-Axis တွေ့ဆုံရာအမှတ် (0, 0)",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w18-dm-5",
          termEn: "x-axis",
          termMy: "X-Axis (ရေပြင်ညီဝင်ရိုး)",
          matchEn: "The horizontal number line on a graph",
          matchMy: "ဂရပ်ပေါ်ရှိ ရေပြင်ညီ ဂဏန်းမျဉ်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w18-dm-6",
          termEn: "y-axis",
          termMy: "Y-Axis (ဒေါင်လိုက်ဝင်ရိုး)",
          matchEn: "The vertical number line on a graph",
          matchMy: "ဂရပ်ပေါ်ရှိ ဒေါင်လိုက် ဂဏန်းမျဉ်း",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w18-d3",
      dayNumber: 3,
      titleEn: "Sort: Positive Gradient or Negative Gradient?",
      titleMy: "စီစစ်ကြမည် - Gradient အပေါင်းလား၊ အနုတ်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Positive Gradient", "Negative Gradient"],
        bucketsMy: ["Gradient အပေါင်း", "Gradient အနုတ်"],
        items: [
          SortingItem(
            id: "s2math-w18-sort-1",
            labelEn: "y = 4x + 1 (line rises left to right)",
            labelMy: "y = 4x + 1 (မျဉ်းသည် ဘယ်မှညာသို့ တက်နေသည်)",
            correctBucketEn: "Positive Gradient",
            correctBucketMy: "Gradient အပေါင်း",
          ),
          SortingItem(
            id: "s2math-w18-sort-2",
            labelEn: "y = -2x + 5 (line falls left to right)",
            labelMy: "y = -2x + 5 (မျဉ်းသည် ဘယ်မှညာသို့ ကျဆင်းနေသည်)",
            correctBucketEn: "Negative Gradient",
            correctBucketMy: "Gradient အနုတ်",
          ),
          SortingItem(
            id: "s2math-w18-sort-3",
            labelEn: "A line through (0, 0) and (2, 6)",
            labelMy: "(0, 0) နှင့် (2, 6) ကို ဖြတ်သွားသော မျဉ်း",
            correctBucketEn: "Positive Gradient",
            correctBucketMy: "Gradient အပေါင်း",
          ),
          SortingItem(
            id: "s2math-w18-sort-4",
            labelEn: "A line through (0, 8) and (4, 0)",
            labelMy: "(0, 8) နှင့် (4, 0) ကို ဖြတ်သွားသော မျဉ်း",
            correctBucketEn: "Negative Gradient",
            correctBucketMy: "Gradient အနုတ်",
          ),
          SortingItem(
            id: "s2math-w18-sort-5",
            labelEn: "y = 7x (steep upward line)",
            labelMy: "y = 7x (အထက်သို့ စောက်နေသော မျဉ်း)",
            correctBucketEn: "Positive Gradient",
            correctBucketMy: "Gradient အပေါင်း",
          ),
          SortingItem(
            id: "s2math-w18-sort-6",
            labelEn: "y = -x + 3 (line falls left to right)",
            labelMy: "y = -x + 3 (မျဉ်းသည် ဘယ်မှညာသို့ ကျဆင်းနေသည်)",
            correctBucketEn: "Negative Gradient",
            correctBucketMy: "Gradient အနုတ်",
          ),
          SortingItem(
            id: "s2math-w18-sort-7",
            labelEn: "A distance-time graph for a car speeding up",
            labelMy: "အလျင်တက်နေသော ကားအတွက် အကွာအဝေး-အချိန် ဂရပ်",
            correctBucketEn: "Positive Gradient",
            correctBucketMy: "Gradient အပေါင်း",
          ),
          SortingItem(
            id: "s2math-w18-sort-8",
            labelEn: "A savings account balance falling as money is spent",
            labelMy: "ငွေသုံးစွဲသည်နှင့်အမျှ ကျဆင်းနေသော စုငွေအကောင့်လက်ကျန်",
            correctBucketEn: "Negative Gradient",
            correctBucketMy: "Gradient အနုတ်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w18-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiri Graphs Her Savings",
      titleMy: "စာဖတ်ခြင်း - သီရိ သူမ၏ စုငွေကို ဂရပ်ဆွဲခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri Graphs Her Savings",
        titleMy: "သီရိ သူမ၏ စုငွေကို ဂရပ်ဆွဲခြင်း",
        passageEn:
            "Thiri started a savings jar with 2,000 units already inside, and she added exactly 500 units every week from her allowance. Wanting to predict her savings without counting every week by hand, she wrote an equation: y = 500x + 2,000, where x was the number of weeks and y was her total savings.\n\nPlotting a few points to check her equation, she found: at x = 0 (the very start), y = 2,000, matching her starting amount exactly. At x = 4 weeks, y = 500(4) + 2,000 = 2,000 + 2,000 = 4,000. She plotted (0, 2000) and (4, 4000) on a graph and drew a straight line through them, confirming the line's gradient matched the 500 units she added each week.\n\nHer brother asked when she would reach 10,000 units. Instead of counting weeks one by one, Thiri substituted y = 10,000 into her equation: 10,000 = 500x + 2,000. Subtracting 2,000 from both sides gave 8,000 = 500x, and dividing by 500 gave x = 16. \"In 16 weeks, I'll have exactly 10,000 units,\" she told him. \"The y-intercept, 2,000, is where I started, and the gradient, 500, is how fast I'm growing -- once you know both, the equation predicts any point on the line without drawing it out at all.\"",
        passageMy:
            "သီရိသည် ငွေထည့်အိုးထဲတွင် ယူနစ် 2,000 အစပြု ထည့်ထားပြီး သူမ၏ ချေးငွေမှ တစ်ပတ်လျှင် ယူနစ် 500 အတိအကျ ထပ်ထည့်ခဲ့သည်။ ပတ်တိုင်း လက်ဖြင့် ရေတွက်ခြင်းမလုပ်ဘဲ သူမ၏ စုငွေကို ကြိုတင်ခန့်မှန်းလိုသောကြောင့် ညီမျှခြင်းတစ်ခု ရေးခဲ့သည် — y = 500x + 2,000, x သည် ပတ်အရေအတွက်ဖြစ်ပြီး y သည် သူမ၏ စုစုပေါင်း စုငွေဖြစ်သည်။\n\nသူမ၏ ညီမျှခြင်း စစ်ဆေးရန် အမှတ်အနည်းငယ်ကို Plot လုပ်ရာ တွေ့ရှိခဲ့သည် — x = 0 (အစအဦးစတွင်) y = 2,000, သူမ၏ အစပြုပမာဏနှင့် အတိအကျ ကိုက်ညီသည်။ x = 4 ပတ်တွင် y = 500(4) + 2,000 = 2,000 + 2,000 = 4,000 ဖြစ်သည်။ သူမသည် (0, 2000) နှင့် (4, 4000) ကို ဂရပ်ပေါ်တွင် Plot လုပ်ပြီး ၎င်းတို့ကို ဖြတ်သန်း၍ မျဉ်းဖြောင့်တစ်ကြောင်း ရေးဆွဲခဲ့ရာ မျဉ်း၏ Gradient သည် ပတ်တိုင်း ထပ်ထည့်ခဲ့သော ယူနစ် 500 နှင့် ကိုက်ညီကြောင်း အတည်ပြုခဲ့သည်။\n\nသူမ၏ ညီအစ်ကိုက ဘယ်တော့ ယူနစ် 10,000 ရောက်မည်ကို မေးခဲ့သည်။ ပတ်တစ်ပတ်ချင်းစီ ရေတွက်မည့်အစား သီရိသည် y = 10,000 ကို သူမ၏ ညီမျှခြင်းထဲသို့ အစားထိုးခဲ့သည် — 10,000 = 500x + 2,000။ ဘက်နှစ်ဘက်စလုံးမှ 2,000 ကို နုတ်လိုက်ရာ 8,000 = 500x ရရှိပြီး 500 ဖြင့် စားလိုက်ရာ x = 16 ရရှိသည်။ '16 ပတ်အတွင်း ငါ့ဆီမှာ ယူနစ် 10,000 အတိအကျ ရှိလာမယ်' ဟု သူမ ညီအစ်ကိုကို ပြောခဲ့သည်။ 'Y-Intercept 2,000 က ငါ စတင်ခဲ့တဲ့နေရာဖြစ်ပြီး Gradient 500 က ငါ ဘယ်လောက်မြန်မြန် ကြီးထွားနေလဲဆိုတာပါ — နှစ်ခုစလုံးကို သိရင် ညီမျှခြင်းက မျဉ်းပေါ်ရှိ အမှတ်တစ်ခုခုကို ဆွဲပြစရာမလိုဘဲ ကြိုတင်ခန့်မှန်းပေးနိုင်တယ်' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what equation did Thiri write?",
            questionMy: "စာပိုဒ် ၁ အရ သီရိ မည်သည့်ညီမျှခြင်းကို ရေးခဲ့သနည်း။",
            optionsEn: [
              "y = 500x + 2,000",
              "y = 2,000x + 500",
              "y = 500x",
              "y = 2,000",
            ],
            optionsMy: [
              "y = 500x + 2,000",
              "y = 2,000x + 500",
              "y = 500x",
              "y = 2,000",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was Thiri's savings at 4 weeks?",
            questionMy: "စာပိုဒ် ၂ အရ 4 ပတ်တွင် သီရိ၏ စုငွေမှာ အဘယ်နည်း။",
            optionsEn: ["4,000", "2,000", "500", "10,000"],
            optionsMy: ["4,000", "2,000", "500", "10,000"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, after how many weeks would Thiri reach 10,000 units?",
            questionMy:
                "စာပိုဒ် ၃ အရ သီရိသည် ဘယ်နှပတ်ကြာမှ ယူနစ် 10,000 ရောက်မည်နည်း။",
            optionsEn: ["16 weeks", "8 weeks", "20 weeks", "4 weeks"],
            optionsMy: ["16 ပတ်", "8 ပတ်", "20 ပတ်", "4 ပတ်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Thiri say the y-intercept and gradient told her?",
            questionMy:
                "စာပိုဒ် ၃ အရ Y-Intercept နှင့် Gradient က သူမကို မည်သည့်အချက်ပြောပြသည်ဟု သီရိ ပြောခဲ့သနည်း။",
            optionsEn: [
              "Where she started and how fast she was growing",
              "Nothing useful at all",
              "Only the exact colour of her savings jar",
              "The name of the bank she used",
            ],
            optionsMy: [
              "သူမ ဘယ်နေရာမှ စတင်ခဲ့ပြီး ဘယ်လောက်မြန်မြန် ကြီးထွားနေလဲ",
              "အသုံးဝင်သောအရာ မရှိကြောင်း",
              "သူမ၏ စုငွေအိုး၏ အရောင်အတိအကျသာ",
              "သူမအသုံးပြုသော ဘဏ်၏ အမည်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w18-d5",
      dayNumber: 5,
      titleEn: "Coordinates and Straight Lines Recap Quiz",
      titleMy:
          "Coordinate များနှင့် မျဉ်းဖြောင့်များ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In y = mx + c, m represents...",
          questionMy: "y = mx + c တွင် m သည် ...",
          optionsEn: [
            "The gradient",
            "The y-intercept",
            "The x-coordinate",
            "A fixed value of 1",
          ],
          optionsMy: [
            "Gradient",
            "Y-Intercept",
            "X-Coordinate",
            "ကိန်းသေတန်ဖိုး 1",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In y = 4x + 7, what is the y-intercept?",
          questionMy: "y = 4x + 7 တွင် Y-Intercept မှာ အဘယ်နည်း။",
          optionsEn: ["7", "4", "0", "11"],
          optionsMy: ["7", "4", "0", "11"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A line passes through (0, 2) and (3, 11). What is its gradient?",
          questionMy:
              "မျဉ်းတစ်ခုသည် (0, 2) နှင့် (3, 11) ကို ဖြတ်သွားသည်။ ၎င်း၏ Gradient မှာ အဘယ်နည်း။",
          optionsEn: ["3", "9", "11", "1/3"],
          optionsMy: ["3", "9", "11", "1/3"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The origin is the point...",
          questionMy: "Origin သည် ... အမှတ်ဖြစ်သည်။",
          optionsEn: ["(0, 0)", "(1, 1)", "(0, 1)", "(1, 0)"],
          optionsMy: ["(0, 0)", "(1, 1)", "(0, 1)", "(1, 0)"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Thiri's story, what did the gradient of 500 represent?",
          questionMy:
              "သီရိ၏ ဇာတ်လမ်းတွင် Gradient 500 သည် မည်သည်ကို ကိုယ်စားပြုခဲ့သနည်း။",
          optionsEn: [
            "How much she saved each week",
            "The total money in the jar at the start",
            "The number of weeks she had been saving",
            "The colour of the savings jar",
          ],
          optionsMy: [
            "ပတ်တိုင်း သူမ စုဆောင်းသောပမာဏ",
            "အစပြုချိန်တွင် အိုးထဲရှိ ငွေစုစုပေါင်း",
            "သူမ စုငွေထားခဲ့သော ပတ်အရေအတွက်",
            "စုငွေအိုး၏ အရောင်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek19 = CourseWeekDef(
  id: "course-secondary2-mathematics-w19",
  weekNumber: 19,
  titleEn: "Real-Life Graphs",
  titleMy: "လက်တွေ့ဘဝ ဂရပ်များ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w19-d1",
      dayNumber: 1,
      titleEn: "Conversion Graphs and Distance-Time Graphs",
      titleMy: "ပြောင်းလဲမှု ဂရပ်များနှင့် အကွာအဝေး-အချိန် ဂရပ်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A conversion graph shows kilometres against miles. What is it used for?",
          questionMy:
              "ပြောင်းလဲမှု ဂရပ်တစ်ခုသည် ကီလိုမီတာနှင့် မိုင်ကို ပြသသည်။ ၎င်းကို မည်သည့်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Converting a measurement in one unit to another without a formula",
            "Showing how fast a car is travelling",
            "Showing profit and loss over time",
            "Measuring angles between two lines",
          ],
          optionsMy: [
            "ဖော်မြူလာမလိုဘဲ တိုင်းတာချက်တစ်ခုကို ယူနစ်တစ်ခုမှ အခြားတစ်ခုသို့ ပြောင်းလဲခြင်း",
            "ကားတစ်စီး မည်မျှမြန်စွာ ခရီးသွားနေသည်ကို ပြသခြင်း",
            "အချိန်ကြာလာသည်နှင့်အမျှ အမြတ်နှင့် အရှုံးကို ပြသခြင်း",
            "မျဉ်းနှစ်ကြောင်းကြား ထောင့်များကို တိုင်းတာခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "A conversion graph lets you read across from one axis to the other to find an equivalent value.",
            "For example, finding how many miles equal 10 kilometres, just by reading the graph.",
          ],
          hintsMy: [
            "ပြောင်းလဲမှု ဂရပ်တစ်ခုသည် ညီမျှသောတန်ဖိုးကို ရှာရန် Axis တစ်ခုမှ အခြားတစ်ခုသို့ ဖတ်ရှုစေသည်။",
            "ဥပမာ ကီလိုမီတာ 10 ခုသည် မိုင် မည်မျှနှင့် ညီသည်ကို ဂရပ်ကိုဖတ်ရုံဖြင့် ရှာဖွေခြင်း။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "On a distance-time graph, what does a flat (horizontal) section represent?",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်တစ်ခုတွင် ညီညာသော (ရေပြင်ညီ) အပိုင်းသည် မည်သည်ကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "The object has stopped moving",
            "The object is moving at its fastest speed",
            "The object is moving backwards",
            "The graph has an error",
          ],
          optionsMy: [
            "အရာဝတ္ထုသည် ရပ်တန့်နေသည်",
            "အရာဝတ္ထုသည် အမြန်ဆုံးအလျင်ဖြင့် ရွေ့လျားနေသည်",
            "အရာဝတ္ထုသည် နောက်ပြန်ရွေ့လျားနေသည်",
            "ဂရပ်တွင် အမှားတစ်ခု ရှိနေသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A flat line means distance is not changing as time passes.",
            "If distance stays the same while time increases, the object must be stationary.",
          ],
          hintsMy: [
            "ညီညာသောမျဉ်းသည် အချိန်ကြာလာသော်လည်း အကွာအဝေး မပြောင်းလဲဟု ဆိုလိုသည်။",
            "အချိန်တိုးလာစဉ် အကွာအဝေး တူညီနေပါက အရာဝတ္ထုသည် ရပ်နေမည် ဖြစ်ကြောင်း။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "On a distance-time graph, which section shows the fastest speed?",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်တစ်ခုတွင် မည်သည့်အပိုင်းက အမြန်ဆုံးအလျင်ကို ပြသနည်း။",
          optionsEn: [
            "The steepest section of the line",
            "The flattest section of the line",
            "The section closest to the origin",
            "It cannot be determined from the graph",
          ],
          optionsMy: [
            "မျဉ်း၏ အစောက်ဆုံးအပိုင်း",
            "မျဉ်း၏ အညီညာဆုံးအပိုင်း",
            "Origin နှင့် အနီးဆုံးအပိုင်း",
            "ဂရပ်မှ ဆုံးဖြတ်၍ မရနိုင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 18: a steeper gradient means a faster rate of change.",
            "On a distance-time graph, gradient represents speed, so the steepest section is the fastest.",
          ],
          hintsMy: [
            "Week 18 ကို ပြန်တွေးကြည့်ပါ — Gradient စောက်လေလေ ပြောင်းလဲမှုနှုန်း မြန်လေလေဖြစ်သည်။",
            "အကွာအဝေး-အချိန် ဂရပ်ပေါ်တွင် Gradient သည် အလျင်ကို ကိုယ်စားပြုသောကြောင့် အစောက်ဆုံးအပိုင်းသည် အမြန်ဆုံးဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A conversion graph shows that 5 kilometres equals about 3.1 miles. About how many miles equal 10 kilometres?",
          questionMy:
              "ပြောင်းလဲမှု ဂရပ်တစ်ခုက ကီလိုမီတာ 5 ခုသည် မိုင် 3.1 ခန့်နှင့် ညီကြောင်း ပြသသည်။ ကီလိုမီတာ 10 ခုသည် မိုင် မည်မျှခန့်နှင့် ညီသနည်း။",
          optionsEn: [
            "About 6.2 miles",
            "About 3.1 miles",
            "About 15.5 miles",
            "About 1.6 miles",
          ],
          optionsMy: [
            "မိုင် 6.2 ခန့်",
            "မိုင် 3.1 ခန့်",
            "မိုင် 15.5 ခန့်",
            "မိုင် 1.6 ခန့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Since 10 kilometres is double 5 kilometres, the equivalent miles should also roughly double.",
            "3.1 × 2 = 6.2.",
          ],
          hintsMy: [
            "ကီလိုမီတာ 10 ခုသည် ကီလိုမီတာ 5 ခု၏ နှစ်ဆဖြစ်သောကြောင့် ညီမျှသောမိုင်လည်း ခန့်မှန်းအားဖြင့် နှစ်ဆဖြစ်သင့်သည်။",
            "3.1 × 2 = 6.2 ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w19-d2",
      dayNumber: 2,
      titleEn: "Match the Real-Life Graphs Vocabulary",
      titleMy: "လက်တွေ့ဘဝ ဂရပ် ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w19-dm-1",
          termEn: "Conversion Graph",
          termMy: "ပြောင်းလဲမှု ဂရပ် (Conversion Graph)",
          matchEn:
              "A graph used to convert between two units without a formula",
          matchMy:
              "ဖော်မြူလာမလိုဘဲ ယူနစ်နှစ်ခုကြား ပြောင်းလဲရန် အသုံးပြုသော ဂရပ်",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w19-dm-2",
          termEn: "Distance-Time Graph",
          termMy: "အကွာအဝေး-အချိန် ဂရပ်",
          matchEn: "A graph showing how far something has travelled over time",
          matchMy:
              "အရာဝတ္ထုတစ်ခု အချိန်ကြာလာသည်နှင့်အမျှ မည်မျှခရီးသွားခဲ့သည်ကို ပြသောဂရပ်",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w19-dm-3",
          termEn: "Stationary",
          termMy: "ရပ်နေသော (Stationary)",
          matchEn:
              "Not moving, shown as a flat section on a distance-time graph",
          matchMy:
              "ရွေ့လျားမနေခြင်း၊ အကွာအဝေး-အချိန် ဂရပ်ပေါ်တွင် ညီညာသောအပိုင်းအဖြစ် ပြသ",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w19-dm-4",
          termEn: "Interpreting Data",
          termMy: "အချက်အလက် အနက်ဖွင့်ဖော်ပြခြင်း",
          matchEn: "Reading and explaining what a graph's shape actually means",
          matchMy:
              "ဂရပ်၏ပုံသဏ္ဌာန်က အမှန်တကယ် ဘာကိုဆိုလိုသည်ကို ဖတ်ရှု၍ ရှင်းပြခြင်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w19-dm-5",
          termEn: "Speed",
          termMy: "အလျင် (Speed)",
          matchEn:
              "How fast something is moving, shown by the gradient on a distance-time graph",
          matchMy:
              "အရာဝတ္ထုတစ်ခု မည်မျှမြန်စွာ ရွေ့လျားနေသည်၊ အကွာအဝေး-အချိန် ဂရပ်ပေါ်ရှိ Gradient ဖြင့် ပြသ",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w19-dm-6",
          termEn: "Steepest Section",
          termMy: "အစောက်ဆုံးအပိုင်း",
          matchEn: "The part of a graph with the largest gradient",
          matchMy: "အကြီးဆုံး Gradient ရှိသော ဂရပ်၏ အပိုင်းအစ",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w19-d3",
      dayNumber: 3,
      titleEn: "Sort: Moving or Stationary?",
      titleMy: "စီစစ်ကြမည် - ရွေ့လျားနေလား၊ ရပ်နေလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Moving", "Stationary"],
        bucketsMy: ["ရွေ့လျားနေ", "ရပ်နေ"],
        items: [
          SortingItem(
            id: "s2math-w19-sort-1",
            labelEn: "A steep upward line on a distance-time graph",
            labelMy: "အကွာအဝေး-အချိန် ဂရပ်ပေါ်ရှိ အထက်သို့ စောက်သော မျဉ်း",
            correctBucketEn: "Moving",
            correctBucketMy: "ရွေ့လျားနေ",
          ),
          SortingItem(
            id: "s2math-w19-sort-2",
            labelEn: "A flat horizontal line on a distance-time graph",
            labelMy: "အကွာအဝေး-အချိန် ဂရပ်ပေါ်ရှိ ညီညာသော ရေပြင်ညီမျဉ်း",
            correctBucketEn: "Stationary",
            correctBucketMy: "ရပ်နေ",
          ),
          SortingItem(
            id: "s2math-w19-sort-3",
            labelEn: "A gentle upward slope on a distance-time graph",
            labelMy: "အကွာအဝေး-အချိန် ဂရပ်ပေါ်ရှိ ညင်သာသော အထက်တက်သွယ်ကွေ့",
            correctBucketEn: "Moving",
            correctBucketMy: "ရွေ့လျားနေ",
          ),
          SortingItem(
            id: "s2math-w19-sort-4",
            labelEn: "A bus waiting at a bus stop for 5 minutes",
            labelMy: "ဘတ်စ်ကားမှတ်တိုင်တွင် 5 မိနစ် စောင့်နေသော ဘတ်စ်ကား",
            correctBucketEn: "Stationary",
            correctBucketMy: "ရပ်နေ",
          ),
          SortingItem(
            id: "s2math-w19-sort-5",
            labelEn: "A runner sprinting, shown as a steep line",
            labelMy: "အစောက်မျဉ်းအဖြစ် ပြသထားသော ပြေးသောလူ",
            correctBucketEn: "Moving",
            correctBucketMy: "ရွေ့လျားနေ",
          ),
          SortingItem(
            id: "s2math-w19-sort-6",
            labelEn: "A car parked in a car park for an hour",
            labelMy: "တစ်နာရီကြာ ကားပါကင်တွင် ရပ်နားထားသော ကား",
            correctBucketEn: "Stationary",
            correctBucketMy: "ရပ်နေ",
          ),
          SortingItem(
            id: "s2math-w19-sort-7",
            labelEn: "A cyclist pedalling at a steady pace",
            labelMy: "ညီညာသောအရှိန်ဖြင့် စက်ဘီးစီးနေသူ",
            correctBucketEn: "Moving",
            correctBucketMy: "ရွေ့လျားနေ",
          ),
          SortingItem(
            id: "s2math-w19-sort-8",
            labelEn: "A hiker resting at the top of a hill for 20 minutes",
            labelMy: "တောင်ထိပ်တွင် 20 မိနစ် နားနေသော တောင်တက်သူ",
            correctBucketEn: "Stationary",
            correctBucketMy: "ရပ်နေ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w19-d4",
      dayNumber: 4,
      titleEn: "Reading: Mya's Cycling Journey Graph",
      titleMy: "စာဖတ်ခြင်း - မြ၏ စက်ဘီးစီး ခရီးစဉ် ဂရပ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Mya's Cycling Journey Graph",
        titleMy: "မြ၏ စက်ဘီးစီး ခရီးစဉ် ဂရပ်",
        passageEn:
            "Mya wore a fitness tracker during her weekend cycling trip and afterward studied the distance-time graph it produced. The first section of the graph rose steeply for 20 minutes, showing she covered 8 kilometres quickly at the start of her ride.\n\nThe graph then flattened out completely for 15 minutes -- Mya remembered stopping at a roadside stall to buy water during exactly that stretch, so the flat section made perfect sense as a stationary period. After that, the line rose again, but more gently than the first section, covering only 4 kilometres over the next 20 minutes.\n\n\"Why was the second riding section slower than the first?\" her teacher asked when Mya brought the graph to school. Comparing the two sloped sections, Mya calculated the gradients: the first section's speed was 8 km ÷ 20 min = 0.4 km/min, while the second section's speed was 4 km ÷ 20 min = 0.2 km/min, exactly half as fast. \"I was probably tired after my water stop, and there might have been a hill,\" Mya guessed. \"But mathematically, I know for certain the second section's gradient was smaller, which is exactly what a less steep line on the graph shows -- the graph told the true story of my ride even better than my memory did.\"",
        passageMy:
            "မြသည် သီတင်းပတ်ဆုံး စက်ဘီးစီးခရီးစဉ်တွင် ကာယကြံ့ခိုင်ရေး Tracker တစ်ခု ဝတ်ဆင်ခဲ့ပြီး ခရီးစဉ်ပြီးနောက် ၎င်း ထုတ်ပေးသော အကွာအဝေး-အချိန် ဂရပ်ကို လေ့လာခဲ့သည်။ ဂရပ်၏ ပထမအပိုင်းသည် 20 မိနစ်ကြာ ချက်ချင်း စောက်စောက်တက်ခဲ့ပြီး သူမ ၎င်းစီးလှည့်၏ အစနေရာတွင် ကီလိုမီတာ 8 ကီလိုမီတာကို လျင်မြန်စွာ ဖြတ်သန်းခဲ့ကြောင်း ပြသခဲ့သည်။\n\nထို့နောက် ဂရပ်သည် 15 မိနစ်ကြာ လုံးဝ ညီညာသွားခဲ့သည် — မြသည် ထိုကာလတည်းတွင် ရေဝယ်ရန် လမ်းဘေးဆိုင်တစ်ဆိုင်တွင် ရပ်နားခဲ့ကြောင်း သတိရမိသောကြောင့် ညီညာသောအပိုင်းသည် ရပ်နားခြင်းကာလအဖြစ် အလွန်ကိုက်ညီခဲ့သည်။ ထိုနောက် မျဉ်းသည် ပြန်လည်တက်လာခဲ့သော်လည်း ပထမအပိုင်းထက် ပိုညင်သာစွာဖြင့် နောက်ဆက်တွဲ 20 မိနစ်တွင် ကီလိုမီတာ 4 ကီလိုမီတာသာ ဖြတ်သန်းခဲ့သည်။\n\n'ဒုတိယစီးပတ်ဟာ ဘာလို့ ပထမပတ်ထက် ပိုနှေးခဲ့တာလဲ' ဟု မြ ဂရပ်ကို ကျောင်းသို့ ယူဆောင်လာသောအခါ ဆရာမက မေးခဲ့သည်။ ဆွယ်ကွေ့နေသောအပိုင်းနှစ်ခုကို နှိုင်းယှဉ်ရင်း မြသည် Gradient များကို တွက်ချက်ခဲ့သည် — ပထမအပိုင်း၏ အလျင်သည် 8 km ÷ 20 min = 0.4 km/min ဖြစ်ပြီး ဒုတိယအပိုင်း၏ အလျင်သည် 4 km ÷ 20 min = 0.2 km/min ဖြစ်ကာ အတိအကျ တစ်ဝက်နှုန်းလျှော့ကျခဲ့သည်။ 'ငါ ရေရပ်နားပြီးနောက် ပင်ပန်းသွားချင် ပင်ပန်းသွားမှာပါ၊ တောင်ကုန်းလည်း ရှိနိုင်တယ်' ဟု မြ ခန့်မှန်းခဲ့သည်။ 'ဒါပေမယ့် သင်္ချာအရဆိုရင် ဒုတိယအပိုင်း၏ Gradient က ငယ်ခဲ့တယ်ဆိုတာ ငါ ဧကန်အမှန်သိတယ်၊ ဒါက ဂရပ်ပေါ်ရှိ ညင်သာသောမျဉ်းက ပြသနေတာအတိအကျပါပဲ — ဂရပ်က ငါ့မှတ်ဉာဏ်ထက်တောင် ငါ့ခရီးစဉ်ရဲ့ တကယ့်ဇာတ်လမ်းကို ပြောပြခဲ့တာပါ' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, how far did Mya travel in the first 20 minutes?",
            questionMy:
                "စာပိုဒ် ၁ အရ ပထမ 20 မိနစ်တွင် မြ မည်မျှဝေးစွာ ခရီးသွားခဲ့သနည်း။",
            optionsEn: [
              "8 kilometres",
              "4 kilometres",
              "15 kilometres",
              "12 kilometres",
            ],
            optionsMy: [
              "ကီလိုမီတာ 8",
              "ကီလိုမီတာ 4",
              "ကီလိုမီတာ 15",
              "ကီလိုမီတာ 12",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why was the graph flat for 15 minutes?",
            questionMy:
                "စာပိုဒ် ၂ အရ ဂရပ်သည် 15 မိနစ်ကြာ အဘယ်ကြောင့် ညီညာသွားခဲ့သနည်း။",
            optionsEn: [
              "Mya stopped at a roadside stall to buy water",
              "Her tracker stopped working",
              "She was cycling at her fastest speed",
              "The graph had an error",
            ],
            optionsMy: [
              "မြသည် ရေဝယ်ရန် လမ်းဘေးဆိုင်တွင် ရပ်နားခဲ့ကြောင်း",
              "သူမ၏ Tracker အလုပ်မလုပ်တော့ကြောင်း",
              "သူမ အမြန်ဆုံးအလျင်ဖြင့် စက်ဘီးစီးနေခဲ့ကြောင်း",
              "ဂရပ်တွင် အမှားတစ်ခု ရှိနေကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what was the second section's speed?",
            questionMy: "စာပိုဒ် ၃ အရ ဒုတိယအပိုင်း၏ အလျင်မှာ အဘယ်နည်း။",
            optionsEn: ["0.2 km/min", "0.4 km/min", "0.8 km/min", "4 km/min"],
            optionsMy: ["0.2 km/min", "0.4 km/min", "0.8 km/min", "4 km/min"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Mya conclude about the graph compared to her memory?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဂရပ်ကို သူမ၏ မှတ်ဉာဏ်နှင့် နှိုင်းယှဉ်ပြီး မြ မည်သို့ နိဂုံးချုပ်ခဲ့သနည်း။",
            optionsEn: [
              "The graph told the true story of her ride even better than her memory",
              "The graph was completely wrong and should be ignored",
              "Her memory was always more accurate than any graph",
              "Graphs and memory always agree exactly",
            ],
            optionsMy: [
              "ဂရပ်သည် သူမ၏ မှတ်ဉာဏ်ထက်တောင် သူမ၏ ခရီးစဉ်၏ တကယ့်ဇာတ်လမ်းကို ပြောပြခဲ့ကြောင်း",
              "ဂရပ်သည် လုံးဝ မှားယွင်းသောကြောင့် လျစ်လျူရှုသင့်ကြောင်း",
              "သူမ၏ မှတ်ဉာဏ်သည် ဂရပ်မည်သည်ထက်မဆို အမြဲ ပိုတိကျခဲ့ကြောင်း",
              "ဂရပ်များနှင့် မှတ်ဉာဏ်သည် အမြဲ အတိအကျ ကိုက်ညီကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w19-d5",
      dayNumber: 5,
      titleEn: "Real-Life Graphs Recap Quiz",
      titleMy: "လက်တွေ့ဘဝ ဂရပ်များ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A conversion graph is used to...",
          questionMy: "ပြောင်းလဲမှု ဂရပ်တစ်ခုကို ... ရန် အသုံးပြုသည်။",
          optionsEn: [
            "Convert between two units without a formula",
            "Show profit and loss only",
            "Measure angles",
            "Calculate simple interest",
          ],
          optionsMy: [
            "ဖော်မြူလာမလိုဘဲ ယူနစ်နှစ်ခုကြား ပြောင်းလဲရန်",
            "အမြတ်နှင့်အရှုံးကိုသာ ပြသရန်",
            "ထောင့်များကို တိုင်းတာရန်",
            "Simple Interest ကို တွက်ချက်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A flat section on a distance-time graph means the object is...",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်ပေါ်ရှိ ညီညာသောအပိုင်းသည် အရာဝတ္ထု ... ကို ဆိုလိုသည်။",
          optionsEn: [
            "Stationary",
            "Moving at top speed",
            "Moving backwards",
            "Accelerating",
          ],
          optionsMy: [
            "ရပ်နေသည်",
            "အမြန်ဆုံးအလျင်ဖြင့် ရွေ့လျားနေသည်",
            "နောက်ပြန်ရွေ့လျားနေသည်",
            "အရှိန်မြင့်နေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The steepest section of a distance-time graph shows...",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်၏ အစောက်ဆုံးအပိုင်းသည် ... ကို ပြသသည်။",
          optionsEn: [
            "The fastest speed",
            "The slowest speed",
            "No movement at all",
            "An error in the data",
          ],
          optionsMy: [
            "အမြန်ဆုံးအလျင်",
            "အနှေးဆုံးအလျင်",
            "လှုပ်ရှားမှု လုံးဝမရှိခြင်း",
            "အချက်အလက်ရှိ အမှားတစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Mya's cycling story, what did the flat section of her graph represent?",
          questionMy:
              "မြ၏ စက်ဘီးစီး ဇာတ်လမ်းတွင် သူမ၏ ဂရပ်ရှိ ညီညာသောအပိုင်းသည် မည်သည်ကို ကိုယ်စားပြုခဲ့သနည်း။",
          optionsEn: [
            "Stopping at a roadside stall to buy water",
            "Cycling at her fastest speed",
            "A broken fitness tracker",
            "Riding backwards",
          ],
          optionsMy: [
            "ရေဝယ်ရန် လမ်းဘေးဆိုင်တွင် ရပ်နားခြင်း",
            "အမြန်ဆုံးအလျင်ဖြင့် စက်ဘီးစီးခြင်း",
            "ကျန်းမာရေး Tracker ပျက်ခြင်း",
            "နောက်ပြန်စီးခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Mya's story, the first section's speed was 0.4 km/min. What was the second section's speed?",
          questionMy:
              "မြ၏ ဇာတ်လမ်းတွင် ပထမအပိုင်း၏ အလျင်သည် 0.4 km/min ဖြစ်သည်။ ဒုတိယအပိုင်း၏ အလျင်မှာ အဘယ်နည်း။",
          optionsEn: ["0.2 km/min", "0.4 km/min", "0.8 km/min", "1.0 km/min"],
          optionsMy: ["0.2 km/min", "0.4 km/min", "0.8 km/min", "1.0 km/min"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek20 = CourseWeekDef(
  id: "course-secondary2-mathematics-w20",
  weekNumber: 20,
  titleEn: "Capstone: The Graph Detective",
  titleMy: "အထွတ်အထိပ် - ဂရပ် စုံထောက်",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w20-d1",
      dayNumber: 1,
      titleEn: "Finding Equations and Intersecting Lines",
      titleMy: "ညီမျှခြင်းများ ရှာဖွေခြင်းနှင့် ဆုံမျဉ်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A line passes through (0, 3) and (2, 11). What is its equation?",
          questionMy:
              "မျဉ်းတစ်ခုသည် (0, 3) နှင့် (2, 11) ကို ဖြတ်သွားသည်။ ၎င်း၏ ညီမျှခြင်းမှာ အဘယ်နည်း။",
          optionsEn: ["y = 4x + 3", "y = 3x + 4", "y = 8x + 3", "y = 4x + 11"],
          optionsMy: ["y = 4x + 3", "y = 3x + 4", "y = 8x + 3", "y = 4x + 11"],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 18: find the gradient first using (11 - 3) ÷ (2 - 0), then use the point (0, 3) to find c directly.",
            "Gradient = 8 ÷ 2 = 4. Since (0, 3) is the y-intercept, c = 3, giving y = 4x + 3.",
          ],
          hintsMy: [
            "Week 18 ကို ပြန်တွေးကြည့်ပါ — (11 - 3) ÷ (2 - 0) ကိုသုံး၍ Gradient ကို ပထမဆုံးရှာပြီး ထို့နောက် (0, 3) အမှတ်ကိုသုံး၍ c ကို တိုက်ရိုက်ရှာပါ။",
            "Gradient = 8 ÷ 2 = 4 ဖြစ်သည်။ (0, 3) သည် Y-Intercept ဖြစ်သောကြောင့် c = 3 ဖြစ်ပြီး y = 4x + 3 ရရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Two lines, y = 2x + 1 and y = -x + 10, meet at a point of intersection. What is the x-value there?",
          questionMy:
              "မျဉ်းနှစ်ကြောင်း y = 2x + 1 နှင့် y = -x + 10 တို့သည် ဆုံမျဉ်းအမှတ်တစ်ခုတွင် တွေ့ဆုံသည်။ ထိုနေရာ၏ x တန်ဖိုးမှာ အဘယ်နည်း။",
          optionsEn: ["3", "1", "10", "7"],
          optionsMy: ["3", "1", "10", "7"],
          correctIndex: 0,
          hintsEn: [
            "At the point of intersection, both equations give the same y-value, so set them equal: 2x + 1 = -x + 10.",
            "Add x to both sides: 3x + 1 = 10, subtract 1: 3x = 9, divide by 3: x = 3.",
          ],
          hintsMy: [
            "ဆုံမျဉ်းအမှတ်တွင် ညီမျှခြင်းနှစ်ခုစလုံးသည် y တန်ဖိုးတူညီသည်ဖြစ်၍ ညီမျှစေပါ — 2x + 1 = -x + 10။",
            "ဘက်နှစ်ဘက်စလုံးတွင် x ကို ပေါင်းပါ — 3x + 1 = 10, 1 ကို နုတ်ပါ — 3x = 9, 3 ဖြင့် စားပါ — x = 3။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A taxi charges a flat 2,000 units plus 300 units per kilometre. Write this as an equation, where y is the total cost and x is the distance.",
          questionMy:
              "တက္ကစီတစ်စီးသည် ကိန်းသေ ယူနစ် 2,000 ထပ်၍ ကီလိုမီတာလျှင် ယူနစ် 300 တောင်းခံသည်။ y သည် ကုန်ကျစရိတ်စုစုပေါင်းဖြစ်ပြီး x သည် အကွာအဝေးဖြစ်လျှင် ၎င်းကို ညီမျှခြင်းအဖြစ် ရေးပါ။",
          optionsEn: [
            "y = 300x + 2,000",
            "y = 2,000x + 300",
            "y = 2,300x",
            "y = 300x - 2,000",
          ],
          optionsMy: [
            "y = 300x + 2,000",
            "y = 2,000x + 300",
            "y = 2,300x",
            "y = 300x - 2,000",
          ],
          correctIndex: 0,
          hintsEn: [
            "The flat fee is the y-intercept (c), and the per-kilometre charge is the gradient (m).",
            "y = mx + c becomes y = 300x + 2,000.",
          ],
          hintsMy: [
            "ကိန်းသေအခကြေးငွေသည် Y-Intercept (c) ဖြစ်ပြီး ကီလိုမီတာအလိုက် အခကြေးငွေသည် Gradient (m) ဖြစ်သည်။",
            "y = mx + c သည် y = 300x + 2,000 ဖြစ်လာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Using y = 300x + 2,000, at what distance does the taxi fare reach exactly 5,000 units?",
          questionMy:
              "y = 300x + 2,000 ကိုသုံး၍ တက္ကစီခ ယူနစ် 5,000 အတိအကျ ရောက်သည့် အကွာအဝေးမှာ အဘယ်နည်း။",
          optionsEn: ["10 km", "5 km", "16.7 km", "3 km"],
          optionsMy: ["10 km", "5 km", "16.7 km", "3 km"],
          correctIndex: 0,
          hintsEn: [
            "Substitute y = 5,000: 5,000 = 300x + 2,000.",
            "Subtract 2,000: 3,000 = 300x, then divide by 300: x = 10.",
          ],
          hintsMy: [
            "y = 5,000 ကို အစားထိုးပါ — 5,000 = 300x + 2,000။",
            "2,000 ကို နုတ်ပါ — 3,000 = 300x, ထို့နောက် 300 ဖြင့် စားပါ — x = 10။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w20-d2",
      dayNumber: 2,
      titleEn: "Match the Whole-Term Vocabulary",
      titleMy: "တစ်သင်တန်းလုံး ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w20-dm-1",
          termEn: "Point of Intersection",
          termMy: "ဆုံမျဉ်းအမှတ် (Point of Intersection)",
          matchEn:
              "The single point where two lines cross, sharing the same x and y values",
          matchMy:
              "မျဉ်းနှစ်ကြောင်း ဖြတ်သန်းရာ x နှင့် y တန်ဖိုးတူညီသော အမှတ်တစ်ခုတည်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w20-dm-2",
          termEn: "Finding an Equation from Two Points",
          termMy: "အမှတ်နှစ်ခုမှ ညီမျှခြင်းကို ရှာဖွေခြင်း",
          matchEn:
              "Calculating the gradient first, then using one point to find the y-intercept",
          matchMy:
              "Gradient ကို ပထမဆုံးတွက်ချက်ပြီး ထို့နောက် Y-Intercept ကို ရှာရန် အမှတ်တစ်ခုကို အသုံးပြုခြင်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w20-dm-3",
          termEn: "Linear Model",
          termMy: "Linear ပုံစံ (Linear Model)",
          matchEn:
              "Using a straight-line equation to represent a real-world situation",
          matchMy:
              "လက်တွေ့ဘဝအခြေအနေတစ်ခုကို ကိုယ်စားပြုရန် မျဉ်းဖြောင့်ညီမျှခြင်းကို အသုံးပြုခြင်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w20-dm-4",
          termEn: "Rate of Change",
          termMy: "ပြောင်းလဲမှုနှုန်း (Rate of Change)",
          matchEn:
              "How quickly one quantity changes compared to another, equal to the gradient",
          matchMy:
              "Gradient နှင့် ညီမျှသော၊ ပမာဏတစ်ခု အခြားတစ်ခုနှင့် နှိုင်းယှဉ်၍ မည်မျှလျင်မြန်စွာ ပြောင်းလဲသနည်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w20-dm-5",
          termEn: "Flat Fee",
          termMy: "ကိန်းသေအခကြေးငွေ (Flat Fee)",
          matchEn:
              "A fixed starting charge that does not change, equal to the y-intercept",
          matchMy:
              "Y-Intercept နှင့် ညီမျှသော၊ ပြောင်းလဲခြင်းမရှိသော ကိန်းသေအစပြုအခကြေးငွေ",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w20-dm-6",
          termEn: "Simultaneous Equations",
          termMy: "တစ်ပြိုင်နက် ညီမျှခြင်းများ (Simultaneous Equations)",
          matchEn:
              "Two or more equations solved together to find a shared solution",
          matchMy:
              "ဝေမျှသော ဖြေရှင်းချက်ကို ရှာဖွေရန် အတူတကွ ဖြေရှင်းသော ညီမျှခြင်းနှစ်ခု သို့မဟုတ် ထို့ထက်ပို",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w20-d3",
      dayNumber: 3,
      titleEn: "Sort: About Equations or About Graphs?",
      titleMy: "စီစစ်ကြမည် - ညီမျှခြင်းအကြောင်းလား၊ ဂရပ်အကြောင်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["About Solving Equations", "About Reading Graphs"],
        bucketsMy: [
          "ညီမျှခြင်း ဖြေရှင်းခြင်း အကြောင်း",
          "ဂရပ် ဖတ်ရှုခြင်း အကြောင်း",
        ],
        items: [
          SortingItem(
            id: "s2math-w20-sort-1",
            labelEn: "Moving x terms to one side of an equation",
            labelMy: "x Term များကို ညီမျှခြင်းတစ်ခု၏ ဘက်တစ်ဘက်သို့ ရွှေ့ခြင်း",
            correctBucketEn: "About Solving Equations",
            correctBucketMy: "ညီမျှခြင်း ဖြေရှင်းခြင်း အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w20-sort-2",
            labelEn:
                "Identifying the steepest section of a distance-time graph",
            labelMy:
                "အကွာအဝေး-အချိန် ဂရပ်၏ အစောက်ဆုံးအပိုင်းကို ခွဲခြားသိမြင်ခြင်း",
            correctBucketEn: "About Reading Graphs",
            correctBucketMy: "ဂရပ် ဖတ်ရှုခြင်း အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w20-sort-3",
            labelEn: "Expanding a bracket in an equation before solving",
            labelMy: "ဖြေရှင်းမီ ညီမျှခြင်းတစ်ခုရှိ ကွင်းကို ဖြန့်ခြင်း",
            correctBucketEn: "About Solving Equations",
            correctBucketMy: "ညီမျှခြင်း ဖြေရှင်းခြင်း အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w20-sort-4",
            labelEn: "Reading a flat section on a graph as a stationary period",
            labelMy:
                "ဂရပ်ပေါ်ရှိ ညီညာသောအပိုင်းကို ရပ်နားချိန်အဖြစ် ဖတ်ရှုခြင်း",
            correctBucketEn: "About Reading Graphs",
            correctBucketMy: "ဂရပ် ဖတ်ရှုခြင်း အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w20-sort-5",
            labelEn: "Checking a solution by substituting it back in",
            labelMy: "ဖြေရှင်းချက်တစ်ခုကို ပြန်အစားထိုး၍ စစ်ဆေးခြင်း",
            correctBucketEn: "About Solving Equations",
            correctBucketMy: "ညီမျှခြင်း ဖြေရှင်းခြင်း အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w20-sort-6",
            labelEn: "Comparing the gradients of two sloped sections",
            labelMy:
                "ဆွယ်ကွေ့နေသောအပိုင်းနှစ်ခု၏ Gradient များကို နှိုင်းယှဉ်ခြင်း",
            correctBucketEn: "About Reading Graphs",
            correctBucketMy: "ဂရပ် ဖတ်ရှုခြင်း အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w20-sort-7",
            labelEn: "Setting two equations equal to find where they intersect",
            labelMy: "ဆုံရာနေရာကို ရှာရန် ညီမျှခြင်းနှစ်ခုကို ညီမျှစေခြင်း",
            correctBucketEn: "About Solving Equations",
            correctBucketMy: "ညီမျှခြင်း ဖြေရှင်းခြင်း အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w20-sort-8",
            labelEn: "Using a conversion graph to change kilometres to miles",
            labelMy:
                "ကီလိုမီတာမှ မိုင်သို့ ပြောင်းလဲရန် ပြောင်းလဲမှု ဂရပ်ကို အသုံးပြုခြင်း",
            correctBucketEn: "About Reading Graphs",
            correctBucketMy: "ဂရပ် ဖတ်ရှုခြင်း အကြောင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w20-d4",
      dayNumber: 4,
      titleEn: "Reading: The Case of the Missing Delivery Van",
      titleMy: "စာဖတ်ခြင်း - ပျောက်ဆုံးနေသော ပို့ဆောင်ရေးကားအမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The Case of the Missing Delivery Van",
        titleMy: "ပျောက်ဆုံးနေသော ပို့ဆောင်ရေးကားအမှု",
        passageEn:
            "For the term's capstone, Su Su's teacher presented the class with a puzzle: two delivery vans, A and B, left the same depot at the same time heading in the same direction, but their distance-time data had gotten mixed up. Van A's data fit the equation y = 40x, where x was hours and y was kilometres travelled, showing it moved at a constant 40 km/h with no stops. Van B's data fit y = 20x + 60, meaning it started 60 kilometres further ahead but moved more slowly, at only 20 km/h.\n\n\"At some point, Van A must catch up to Van B,\" the teacher said. \"Find exactly when and where.\" Su Su set the two equations equal, since at the moment Van A caught up, both vans would be at the same distance from the depot at the same time: 40x = 20x + 60.\n\nSolving step by step, she subtracted 20x from both sides: 20x = 60, then divided by 20: x = 3. Substituting x = 3 back into Van A's equation gave y = 40(3) = 120 kilometres. \"Van A catches Van B after exactly 3 hours, 120 kilometres from the depot,\" Su Su announced. She checked her answer using Van B's equation too: y = 20(3) + 60 = 60 + 60 = 120, exactly matching. \"Every skill from this whole term led here,\" she told the class. \"Writing an equation from real information, solving it step by step, and finding where two graphs intersect -- that's the entire mystery solved with three lines of algebra, no guessing required.\"",
        passageMy:
            "သင်တန်း၏ အထွတ်အထိပ်အတွက် စုစု၏ ဆရာမက အတန်းကို ပဟေဠိတစ်ခု တင်ပြခဲ့သည် — ပို့ဆောင်ရေးကားနှစ်စီး၊ A နှင့် B တို့သည် ဒီပိုဌာနတစ်ခုတည်းမှ တစ်ချိန်တည်း ဦးတည်ရာတစ်ခုတည်းသို့ ထွက်ခွာခဲ့ကြသော်လည်း ၎င်းတို့၏ အကွာအဝေး-အချိန် အချက်အလက်များ ရောနှောသွားခဲ့သည်။ Van A ၏ အချက်အလက်သည် y = 40x ညီမျှခြင်းနှင့် ကိုက်ညီပြီး x သည် နာရီအရေအတွက်ဖြစ်ကာ y သည် ကီလိုမီတာအရေအတွက်ဖြစ်ကာ ၎င်းသည် ရပ်နားခြင်းမရှိဘဲ 40 km/h ကိန်းသေအလျင်ဖြင့် ရွေ့လျားခဲ့ကြောင်း ပြသခဲ့သည်။ Van B ၏ အချက်အလက်သည် y = 20x + 60 နှင့် ကိုက်ညီပြီး ၎င်းသည် ကီလိုမီတာ 60 ကီလိုမီတာ ရှေ့မှစတင်ခဲ့သော်လည်း 20 km/h ဖြင့်သာ ပိုနှေးစွာ ရွေ့လျားခဲ့ကြောင်း ဆိုလိုသည်။\n\n'တစ်ချိန်ချိန်တွင် Van A သည် Van B ကို လိုက်မှီရမည်' ဟု ဆရာမက ပြောခဲ့သည်။ 'ဘယ်အချိန်၊ ဘယ်နေရာတွင်ဆိုတာ အတိအကျ ရှာဖွေပါ' ။ Van A လိုက်မှီသောအချိန်တွင် ကားနှစ်စီးလုံးသည် တစ်ချိန်တည်း ဒီပိုဌာနမှ အကွာအဝေးတူညီစွာ ရှိနေမည်ဖြစ်ကြောင်း သိသောကြောင့် စုစုသည် ညီမျှခြင်းနှစ်ခုကို ညီမျှစေခဲ့သည် — 40x = 20x + 60။\n\nအဆင့်ဆင့် ဖြေရှင်းရင်း ဘက်နှစ်ဘက်စလုံးမှ 20x ကို နုတ်ခဲ့သည် — 20x = 60, ထို့နောက် 20 ဖြင့် စားခဲ့သည် — x = 3။ x = 3 ကို Van A ၏ ညီမျှခြင်းထဲသို့ ပြန်အစားထိုးခဲ့ရာ y = 40(3) = 120 ကီလိုမီတာ ရရှိသည်။ 'Van A သည် ဒီပိုဌာနမှ ကီလိုမီတာ 120 ကီလိုမီတာအကွာတွင် 3 နာရီအတိအကျကြာမှ Van B ကို လိုက်မှီသည်' ဟု စုစု ကြေညာခဲ့သည်။ သူမသည် Van B ၏ ညီမျှခြင်းကိုသုံး၍ သူမ၏ အဖြေကို ထပ်စစ်ဆေးခဲ့သည် — y = 20(3) + 60 = 60 + 60 = 120, အတိအကျ ကိုက်ညီသည်။ 'ဒီသင်တန်းတစ်ခုလုံးမှ ကျွမ်းကျင်မှုတိုင်းသည် ဒီနေရာသို့ ဦးတည်ခဲ့တယ်' ဟု သူမက အတန်းကို ပြောခဲ့သည်။ 'လက်တွေ့အချက်အလက်မှ ညီမျှခြင်းတစ်ခု ရေးသားခြင်း၊ အဆင့်ဆင့်ဖြေရှင်းခြင်းနှင့် ဂရပ်နှစ်ခု ဆုံရာနေရာကို ရှာဖွေခြင်း — ဒါက ခန့်မှန်းချက်လုံးဝ မလိုအပ်ဘဲ Algebra စာကြောင်းသုံးကြောင်းနဲ့ ဖြေရှင်းလိုက်တဲ့ လျှို့ဝှက်ဇာတ်လမ်းတစ်ခုလုံးပါပဲ' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "According to paragraph 1, what was Van A's speed?",
            questionMy: "စာပိုဒ် ၁ အရ Van A ၏ အလျင်မှာ အဘယ်နည်း။",
            optionsEn: ["40 km/h", "20 km/h", "60 km/h", "120 km/h"],
            optionsMy: ["40 km/h", "20 km/h", "60 km/h", "120 km/h"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what equation did Su Su set up?",
            questionMy: "စာပိုဒ် ၂ အရ စုစု မည်သည့်ညီမျှခြင်းကို စီစဉ်ခဲ့သနည်း။",
            optionsEn: [
              "40x = 20x + 60",
              "40x + 20x = 60",
              "40x - 20x = 60",
              "60x = 40x",
            ],
            optionsMy: [
              "40x = 20x + 60",
              "40x + 20x = 60",
              "40x - 20x = 60",
              "60x = 40x",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, after how many hours did Van A catch Van B?",
            questionMy:
                "စာပိုဒ် ၃ အရ Van A သည် ဘယ်နှနာရီကြာမှ Van B ကို လိုက်မှီခဲ့သနည်း။",
            optionsEn: ["3 hours", "20 hours", "60 hours", "120 hours"],
            optionsMy: ["3 hours", "20 hours", "60 hours", "120 hours"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, at what distance from the depot did Van A catch Van B?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဒီပိုဌာနမှ မည်သည့်အကွာအဝေးတွင် Van A သည် Van B ကို လိုက်မှီခဲ့သနည်း။",
            optionsEn: [
              "120 kilometres",
              "60 kilometres",
              "40 kilometres",
              "3 kilometres",
            ],
            optionsMy: [
              "ကီလိုမီတာ 120",
              "ကီလိုမီတာ 60",
              "ကီလိုမီတာ 40",
              "ကီလိုမီတာ 3",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w20-d5",
      dayNumber: 5,
      titleEn: "Linear Equations and Graphs Term Round-Up",
      titleMy: "Linear ညီမျှခြင်းများနှင့် ဂရပ်များ သင်တန်း အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Solve 6x + 2 = 4x + 10.",
          questionMy: "6x + 2 = 4x + 10 ကို ဖြေရှင်းပါ။",
          optionsEn: ["x = 4", "x = 8", "x = 2", "x = 12"],
          optionsMy: ["x = 4", "x = 8", "x = 2", "x = 12"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A line passes through (0, 5) and (1, 9). What is its gradient?",
          questionMy:
              "မျဉ်းတစ်ခုသည် (0, 5) နှင့် (1, 9) ကို ဖြတ်သွားသည်။ ၎င်း၏ Gradient မှာ အဘယ်နည်း။",
          optionsEn: ["4", "5", "9", "1/4"],
          optionsMy: ["4", "5", "9", "1/4"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A flat section on a distance-time graph means the object is...",
          questionMy:
              "အကွာအဝေး-အချိန် ဂရပ်ပေါ်ရှိ ညီညာသောအပိုင်းသည် အရာဝတ္ထု ... ကို ဆိုလိုသည်။",
          optionsEn: [
            "Stationary",
            "Moving fastest",
            "Moving backwards",
            "Accelerating",
          ],
          optionsMy: [
            "ရပ်နေသည်",
            "အမြန်ဆုံး ရွေ့လျားနေသည်",
            "နောက်ပြန်ရွေ့လျားနေသည်",
            "အရှိန်မြင့်နေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Two lines y = 3x + 2 and y = x + 8 intersect where x equals...",
          questionMy:
              "မျဉ်းနှစ်ကြောင်း y = 3x + 2 နှင့် y = x + 8 တို့သည် x ... တွင် ဆုံသည်။",
          optionsEn: ["3", "6", "2", "8"],
          optionsMy: ["3", "6", "2", "8"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the delivery van mystery, at what distance did Van A catch Van B?",
          questionMy:
              "ပို့ဆောင်ရေးကားလျှို့ဝှက်ဇာတ်လမ်းတွင် မည်သည့်အကွာအဝေးတွင် Van A သည် Van B ကို လိုက်မှီခဲ့သနည်း။",
          optionsEn: [
            "120 kilometres",
            "60 kilometres",
            "40 kilometres",
            "3 kilometres",
          ],
          optionsMy: [
            "ကီလိုမီတာ 120",
            "ကီလိုမီတာ 60",
            "ကီလိုမီတာ 40",
            "ကီလိုမီတာ 3",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary2MathematicsTerm5 = CourseTermDef(
  id: "course-secondary2-mathematics-t5",
  termNumber: 5,
  titleEn: "Linear Equations and Graphs",
  titleMy: "Linear ညီမျှခြင်းများနှင့် ဂရပ်များ",
  certificateTitleEn: "Linear Equations and Graphs",
  certificateTitleMy: "Linear ညီမျှခြင်းများနှင့် ဂရပ်များ",
  weeks: [
    _secondary2MathematicsWeek17,
    _secondary2MathematicsWeek18,
    _secondary2MathematicsWeek19,
    _secondary2MathematicsWeek20,
  ],
);
