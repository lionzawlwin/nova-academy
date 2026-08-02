const CourseWeekDef _secondary2MathematicsWeek5 = CourseWeekDef(
  id: "course-secondary2-mathematics-w5",
  weekNumber: 5,
  titleEn: "Expanding Brackets",
  titleMy: "ကွင်းများ ဖြန့်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w5-d1",
      dayNumber: 1,
      titleEn: "Multiplying Out Single Brackets",
      titleMy: "ကွင်းတစ်ခုတည်းကို မြှောက်ဖြန့်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Expand 3(x + 4).",
          questionMy: "3(x + 4) ကို ဖြန့်ပါ။",
          optionsEn: ["3x + 12", "3x + 4", "x + 12", "3x + 7"],
          optionsMy: ["3x + 12", "3x + 4", "x + 12", "3x + 7"],
          correctIndex: 0,
          hintsEn: [
            "Multiply the term outside the bracket by every term inside it.",
            "3 × x = 3x, and 3 × 4 = 12, so the answer is 3x + 12.",
          ],
          hintsMy: [
            "ကွင်းအပြင်ဘက်ရှိ Term ကို ကွင်းအတွင်းရှိ Term တစ်ခုစီနှင့် မြှောက်ပါ။",
            "3 × x = 3x ဖြစ်ပြီး 3 × 4 = 12 ဖြစ်သောကြောင့် အဖြေမှာ 3x + 12 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Expand -2(y - 5).",
          questionMy: "-2(y - 5) ကို ဖြန့်ပါ။",
          optionsEn: ["-2y + 10", "-2y - 10", "2y + 10", "-2y - 5"],
          optionsMy: ["-2y + 10", "-2y - 10", "2y + 10", "-2y - 5"],
          correctIndex: 0,
          hintsEn: [
            "Be careful with the negative sign outside the bracket -- it multiplies every term inside too.",
            "-2 × y = -2y, and -2 × (-5) = +10, so the answer is -2y + 10.",
          ],
          hintsMy: [
            "ကွင်းအပြင်ဘက်ရှိ အနုတ်လက္ခဏာကို သတိထားပါ — ၎င်းသည် အတွင်းရှိ Term တစ်ခုစီကိုပါ မြှောက်သည်။",
            "-2 × y = -2y ဖြစ်ပြီး -2 × (-5) = +10 ဖြစ်သောကြောင့် အဖြေမှာ -2y + 10 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Expand and simplify 4(x + 2) + 3x.",
          questionMy: "4(x + 2) + 3x ကို ဖြန့်ပြီး ရိုးရှင်းအောင်ပြုလုပ်ပါ။",
          optionsEn: ["7x + 8", "4x + 8 + 3x", "7x + 2", "12x + 8"],
          optionsMy: ["7x + 8", "4x + 8 + 3x", "7x + 2", "12x + 8"],
          correctIndex: 0,
          hintsEn: [
            "First expand the bracket: 4(x + 2) = 4x + 8. Then combine with the remaining 3x.",
            "4x + 3x = 7x, so the fully simplified answer is 7x + 8.",
          ],
          hintsMy: [
            "ပထမဆုံး ကွင်းကို ဖြန့်ပါ — 4(x + 2) = 4x + 8။ ထို့နောက် ကျန်ရှိသော 3x နှင့် ပေါင်းစပ်ပါ။",
            "4x + 3x = 7x ဖြစ်သောကြောင့် အပြည့်အစုံ ရိုးရှင်းအောင်ပြုလုပ်ထားသော အဖြေမှာ 7x + 8 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Expand 5(2x - 3).",
          questionMy: "5(2x - 3) ကို ဖြန့်ပါ။",
          optionsEn: ["10x - 15", "10x - 3", "7x - 15", "10x + 15"],
          optionsMy: ["10x - 15", "10x - 3", "7x - 15", "10x + 15"],
          correctIndex: 0,
          hintsEn: [
            "5 × 2x = 10x, and 5 × (-3) = -15.",
            "Combine both results: 10x - 15.",
          ],
          hintsMy: [
            "5 × 2x = 10x ဖြစ်ပြီး 5 × (-3) = -15 ဖြစ်သည်။",
            "ရလဒ်နှစ်ခုစလုံးကို ပေါင်းစပ်ပါ — 10x - 15။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w5-d2",
      dayNumber: 2,
      titleEn: "Match the Expanding Brackets Vocabulary",
      titleMy: "ကွင်းဖြန့်ခြင်း ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w5-dm-1",
          termEn: "Expand",
          termMy: "ဖြန့်ခြင်း (Expand)",
          matchEn: "To multiply out a bracket, removing it from the expression",
          matchMy: "ကွင်းကို ဖော်ပြချက်မှ ဖယ်ရှားစေရန် မြှောက်ဖြန့်ခြင်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w5-dm-2",
          termEn: "Term",
          termMy: "အသုံးအနှုန်း (Term)",
          matchEn:
              "A single number, letter, or number-letter combination in an expression",
          matchMy:
              "ဖော်ပြချက်တစ်ခုအတွင်းရှိ ဂဏန်းတစ်ခု၊ အက္ခရာတစ်ခု သို့မဟုတ် ဂဏန်း-အက္ခရာ ပေါင်းစပ်မှု",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w5-dm-3",
          termEn: "Like Terms",
          termMy: "တူညီသော Term များ (Like Terms)",
          matchEn:
              "Terms that contain the exact same letter part, e.g. 3x and 5x",
          matchMy: "အက္ခရာအပိုင်း အတိအကျတူညီသော Term များ၊ ဥပမာ 3x နှင့် 5x",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w5-dm-4",
          termEn: "Simplify",
          termMy: "ရိုးရှင်းအောင်ပြုလုပ်ခြင်း (Simplify)",
          matchEn: "To combine like terms into a shorter expression",
          matchMy:
              "တူညီသော Term များကို ပိုတိုသောဖော်ပြချက်တစ်ခုအဖြစ် ပေါင်းစပ်ခြင်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w5-dm-5",
          termEn: "Coefficient",
          termMy: "ကိန်းဆက် (Coefficient)",
          matchEn:
              "The number multiplying a letter in a term, e.g. the 3 in 3x",
          matchMy: "Term တစ်ခုရှိ အက္ခရာကို မြှောက်နေသော ဂဏန်း၊ ဥပမာ 3x ရှိ 3",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w5-dm-6",
          termEn: "Expression",
          termMy: "ဖော်ပြချက် (Expression)",
          matchEn:
              "A collection of terms combined with + or - signs, with no equals sign",
          matchMy:
              "'=' သင်္ကေတမပါဘဲ + သို့မဟုတ် - ဖြင့် ပေါင်းစပ်ထားသော Term များ",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w5-d3",
      dayNumber: 3,
      titleEn: "Sort: Correctly Expanded or Incorrectly Expanded?",
      titleMy: "စီစစ်ကြမည် - မှန်ကန်စွာ ဖြန့်ထားလား၊ မှားယွင်းစွာလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Correctly Expanded", "Incorrectly Expanded"],
        bucketsMy: ["မှန်ကန်စွာ ဖြန့်ထား", "မှားယွင်းစွာ ဖြန့်ထား"],
        items: [
          SortingItem(
            id: "s2math-w5-sort-1",
            labelEn: "2(x + 3) = 2x + 6",
            labelMy: "2(x + 3) = 2x + 6",
            correctBucketEn: "Correctly Expanded",
            correctBucketMy: "မှန်ကန်စွာ ဖြန့်ထား",
          ),
          SortingItem(
            id: "s2math-w5-sort-2",
            labelEn: "4(x + 1) = 4x + 1",
            labelMy: "4(x + 1) = 4x + 1",
            correctBucketEn: "Incorrectly Expanded",
            correctBucketMy: "မှားယွင်းစွာ ဖြန့်ထား",
          ),
          SortingItem(
            id: "s2math-w5-sort-3",
            labelEn: "-3(x - 2) = -3x + 6",
            labelMy: "-3(x - 2) = -3x + 6",
            correctBucketEn: "Correctly Expanded",
            correctBucketMy: "မှန်ကန်စွာ ဖြန့်ထား",
          ),
          SortingItem(
            id: "s2math-w5-sort-4",
            labelEn: "-3(x - 2) = -3x - 6",
            labelMy: "-3(x - 2) = -3x - 6",
            correctBucketEn: "Incorrectly Expanded",
            correctBucketMy: "မှားယွင်းစွာ ဖြန့်ထား",
          ),
          SortingItem(
            id: "s2math-w5-sort-5",
            labelEn: "5(2x + 3) = 10x + 15",
            labelMy: "5(2x + 3) = 10x + 15",
            correctBucketEn: "Correctly Expanded",
            correctBucketMy: "မှန်ကန်စွာ ဖြန့်ထား",
          ),
          SortingItem(
            id: "s2math-w5-sort-6",
            labelEn: "6(x - 4) = 6x - 10",
            labelMy: "6(x - 4) = 6x - 10",
            correctBucketEn: "Incorrectly Expanded",
            correctBucketMy: "မှားယွင်းစွာ ဖြန့်ထား",
          ),
          SortingItem(
            id: "s2math-w5-sort-7",
            labelEn: "-2(3x + 1) = -6x - 2",
            labelMy: "-2(3x + 1) = -6x - 2",
            correctBucketEn: "Correctly Expanded",
            correctBucketMy: "မှန်ကန်စွာ ဖြန့်ထား",
          ),
          SortingItem(
            id: "s2math-w5-sort-8",
            labelEn: "7(x + 5) = 7x + 35",
            labelMy: "7(x + 5) = 7x + 35",
            correctBucketEn: "Correctly Expanded",
            correctBucketMy: "မှန်ကန်စွာ ဖြန့်ထား",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w5-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su's Party Budget",
      titleMy: "စာဖတ်ခြင်း - စုစု၏ ပါတီအသုံးစရိတ် စီစဉ်ချက်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su's Party Budget",
        titleMy: "စုစု၏ ပါတီအသုံးစရိတ် စီစဉ်ချက်",
        passageEn:
            "Su Su was planning a class party and needed to calculate the total cost of snack bags, but she didn't yet know exactly how many students would attend. She let x stand for the number of students, and worked out that each snack bag would cost 3 units of money, plus a fixed 4 units for decorations that didn't depend on the number of guests at all. Her total cost expression became 3(x + fixed cost thinking), which she realised needed rewriting more carefully.\n\nHer teacher helped her separate the two parts properly: the snack cost was 3x (three units per student), and the decoration cost was a flat 4, giving a total of 3x + 4 -- not 3(x + 4), since the fixed decoration cost didn't scale with each extra student the way the snacks did. \"If I'd written 3(x + 4) instead,\" Su Su realised, \"expanding it would give 3x + 12, which means I'd have accidentally tripled my decoration budget instead of keeping it fixed at 4.\"\n\nLater, Thiri pointed out a genuinely different situation where expanding a bracket was exactly right: if every student's snack bag itself contained a drink costing 2 units and a snack costing 3 units, then each bag cost (2 + 3) units, and x bags cost x(2 + 3), which correctly expands to 2x + 3x = 5x. \"The difference,\" Su Su said, \"is whether the thing inside the bracket actually multiplies by x, or whether it's separate and just gets added on afterward.\"",
        passageMy:
            "စုစုသည် အတန်းပါတီတစ်ခု စီစဉ်နေခဲ့ပြီး Snack အိတ်များ၏ ကုန်ကျစရိတ်စုစုပေါင်းကို တွက်ချက်ရန် လိုအပ်ခဲ့သော်လည်း ကျောင်းသားဘယ်နှယောက် တက်ရောက်မည်ကို အတိအကျ မသိသေးပါ။ ကျောင်းသားအရေအတွက်ကို x ဟု သတ်မှတ်ခဲ့ပြီး Snack အိတ်တစ်လုံးစီသည် ငွေကြေးယူနစ် 3 ခု ကုန်ကျပြီး ဧည့်သည်အရေအတွက်နှင့် လုံးဝမသက်ဆိုင်သော အလှဆင်ခြင်းအတွက် ကိန်းသေယူနစ် 4 ခု ထပ်ကုန်ကျမည်ဟု တွက်ချက်ခဲ့သည်။ သူမ၏ ကုန်ကျစရိတ်စုစုပေါင်း ဖော်ပြချက်သည် 3(x + ကိန်းသေတွေး) ဖြစ်လာခဲ့ပြီး ပိုသေချာစွာ ပြန်ရေးရန် လိုအပ်ကြောင်း သူမ သဘောပေါက်လိုက်သည်။\n\nသူမ၏ ဆရာမက အပိုင်းနှစ်ပိုင်းကို မှန်ကန်စွာ ခွဲထုတ်ရန် ကူညီပေးခဲ့သည် — Snack ကုန်ကျစရိတ်သည် 3x (ကျောင်းသားတစ်ဦးလျှင် ယူနစ်သုံးခု) ဖြစ်ပြီး အလှဆင်ကုန်ကျစရိတ်မှာ ကိန်းသေ 4 ဖြစ်ကာ စုစုပေါင်း 3x + 4 ကို ရရှိစေသည် — 3(x + 4) မဟုတ်ပါ၊ ဘာဖြစ်လို့လဲဆိုတော့ ကိန်းသေအလှဆင်ကုန်ကျစရိတ်သည် Snack ကဲ့သို့ ကျောင်းသားထပ်တိုးတိုင်း အချိုးကျ မတိုးသောကြောင့်ဖြစ်သည်။ 'အကယ်၍ 3(x + 4) ဟု အစား ရေးထားရင်' ဟု စုစု သဘောပေါက်လိုက်သည်၊ 'ဖြန့်ချလိုက်ရင် 3x + 12 ရမှာဖြစ်ပြီး ငါ့ရဲ့ အလှဆင်ဘတ်ဂျက်ကို ကိန်းသေ 4 အနေနဲ့ ထားမည့်အစား မတော်တဆ သုံးဆတိုးလိုက်တဲ့သဘောပါပဲ' ။\n\nနောက်ပိုင်း သီရိသည် ကွင်းကို ဖြန့်ခြင်းသည် အတိအကျမှန်ကန်သော ကွဲပြားသည့်အခြေအနေတစ်ခုကို ထောက်ပြခဲ့သည် — ကျောင်းသားတိုင်း၏ Snack အိတ်ကိုယ်တိုင်တွင် ယူနစ် 2 ခုကုန်ကျသော အဖျော်ရည်နှင့် ယူနစ် 3 ခုကုန်ကျသော Snack ပါဝင်ပါက အိတ်တစ်လုံးစီသည် (2 + 3) ယူနစ် ကုန်ကျပြီး အိတ် x လုံးသည် x(2 + 3) ကုန်ကျမည်ဖြစ်ကာ ၎င်းသည် 2x + 3x = 5x ဟု မှန်ကန်စွာ ဖြန့်ချနိုင်သည်။ 'ကွာခြားချက်ကတော့' ဟု စုစု ပြောခဲ့သည်၊ 'ကွင်းအတွင်းရှိအရာက x နှင့် အမှန်တကယ် မြှောက်ခြင်းလား၊ သို့မဟုတ် သီးခြားဖြစ်ပြီး နောက်မှသာ ထပ်ပေါင်းခံရတာလား ဆိုတာပါပဲ' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was Su Su's correct total cost expression?",
            questionMy:
                "စာပိုဒ် ၂ အရ စုစု၏ မှန်ကန်သော ကုန်ကျစရိတ်စုစုပေါင်း ဖော်ပြချက်မှာ အဘယ်နည်း။",
            optionsEn: ["3x + 4", "3(x + 4)", "3x + 12", "4x + 3"],
            optionsMy: ["3x + 4", "3(x + 4)", "3x + 12", "4x + 3"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what mistake would writing 3(x + 4) have caused?",
            questionMy:
                "စာပိုဒ် ၂ အရ 3(x + 4) ဟု ရေးလျှင် မည်သည့်အမှား ဖြစ်ပေါ်စေမည်နည်း။",
            optionsEn: [
              "It would accidentally triple the fixed decoration budget instead of keeping it at 4",
              "It would make the snack cost too low",
              "It would remove the decoration cost entirely",
              "It would have no effect on the calculation at all",
            ],
            optionsMy: [
              "ကိန်းသေအလှဆင်ဘတ်ဂျက်ကို 4 အနေနဲ့ ထားမည့်အစား မတော်တဆ သုံးဆတိုးလိုက်မည်",
              "Snack ကုန်ကျစရိတ်ကို နည်းလွန်းစေမည်",
              "အလှဆင်ကုန်ကျစရိတ်ကို လုံးဝ ဖယ်ရှားပစ်မည်",
              "တွက်ချက်မှုအပေါ် မည်သည့်သက်ရောက်မှုမျှ မရှိမည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did each snack bag cost, according to Thiri's example?",
            questionMy:
                "စာပိုဒ် ၃ အရ သီရိ၏ ဥပမာအရ Snack အိတ်တစ်လုံးစီ မည်မျှကုန်ကျခဲ့သနည်း။",
            optionsEn: [
              "(2 + 3) units, a drink and a snack",
              "Only 2 units for a drink",
              "Only 3 units for a snack",
              "5 units for decorations only",
            ],
            optionsMy: [
              "(2 + 3) ယူနစ်၊ အဖျော်ရည်နှင့် Snack",
              "အဖျော်ရည်အတွက် 2 ယူနစ်သာ",
              "Snack အတွက် 3 ယူနစ်သာ",
              "အလှဆင်ခြင်းအတွက်သာ 5 ယူနစ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what determines whether expanding a bracket is the correct approach?",
            questionMy:
                "စာပိုဒ် ၃ အရ ကွင်းဖြန့်ခြင်းသည် မှန်ကန်သော နည်းလမ်းဟုတ်မဟုတ် မည်သည့်အချက်က ဆုံးဖြတ်ပေးသနည်း။",
            optionsEn: [
              "Whether the thing inside the bracket actually multiplies by x, or is separate and added afterward",
              "The colour of the number written",
              "Whether the answer is a whole number or not",
              "The day of the week the calculation is done",
            ],
            optionsMy: [
              "ကွင်းအတွင်းရှိအရာသည် x နှင့် အမှန်တကယ် မြှောက်ခြင်းလား၊ သို့မဟုတ် သီးခြားဖြစ်ပြီး နောက်မှထပ်ပေါင်းခံရသလား",
              "ရေးထားသောဂဏန်း၏ အရောင်",
              "အဖြေသည် ကိန်းပြည့်ဟုတ်မဟုတ်",
              "တွက်ချက်သောနေ့",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w5-d5",
      dayNumber: 5,
      titleEn: "Expanding Brackets Recap Quiz",
      titleMy: "ကွင်းဖြန့်ခြင်း ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Expand 4(x + 3).",
          questionMy: "4(x + 3) ကို ဖြန့်ပါ။",
          optionsEn: ["4x + 12", "4x + 3", "x + 12", "4x + 7"],
          optionsMy: ["4x + 12", "4x + 3", "x + 12", "4x + 7"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Expand -3(x - 2).",
          questionMy: "-3(x - 2) ကို ဖြန့်ပါ။",
          optionsEn: ["-3x + 6", "-3x - 6", "3x + 6", "-3x - 2"],
          optionsMy: ["-3x + 6", "-3x - 6", "3x + 6", "-3x - 2"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Expand and simplify 2(x + 5) + 3x.",
          questionMy: "2(x + 5) + 3x ကို ဖြန့်ပြီး ရိုးရှင်းအောင်ပြုလုပ်ပါ။",
          optionsEn: ["5x + 10", "2x + 10 + 3x", "5x + 5", "6x + 10"],
          optionsMy: ["5x + 10", "2x + 10 + 3x", "5x + 5", "6x + 10"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Su Su's party budget, why was 3x + 4 correct instead of 3(x + 4)?",
          questionMy:
              "စုစု၏ ပါတီအသုံးစရိတ်တွင် 3(x + 4) အစား 3x + 4 အဘယ်ကြောင့် မှန်ကန်ခဲ့သနည်း။",
          optionsEn: [
            "The decoration cost was fixed and did not scale with each extra student",
            "The snack cost was fixed instead",
            "Both costs scaled with the number of students equally",
            "Neither cost actually mattered to the total",
          ],
          optionsMy: [
            "အလှဆင်ကုန်ကျစရိတ်သည် ကိန်းသေဖြစ်ပြီး ကျောင်းသားထပ်တိုးတိုင်း အချိုးကျ မတိုးသောကြောင့်",
            "Snack ကုန်ကျစရိတ်သည် ကိန်းသေဖြစ်ခဲ့ကြောင့်",
            "ကုန်ကျစရိတ်နှစ်ခုစလုံးသည် ကျောင်းသားအရေအတွက်နှင့် အညီအမျှ အချိုးကျတိုးခဲ့ကြောင့်",
            "ကုန်ကျစရိတ်နှစ်ခုစလုံးသည် စုစုပေါင်းအတွက် အရေးမကြီးခဲ့ကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Expand 6(2x + 1).",
          questionMy: "6(2x + 1) ကို ဖြန့်ပါ။",
          optionsEn: ["12x + 6", "12x + 1", "8x + 6", "12x + 12"],
          optionsMy: ["12x + 6", "12x + 1", "8x + 6", "12x + 12"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek6 = CourseWeekDef(
  id: "course-secondary2-mathematics-w6",
  weekNumber: 6,
  titleEn: "Factorising Expressions",
  titleMy: "ဖော်ပြချက်များ Factorise လုပ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w6-d1",
      dayNumber: 1,
      titleEn: "Finding Common Factors",
      titleMy: "ဘုံ Factor များ ရှာဖွေခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What is the highest common factor of the terms in 6x + 9?",
          questionMy:
              "6x + 9 ရှိ Term များ၏ Highest Common Factor မှာ အဘယ်နည်း။",
          optionsEn: ["3", "6", "9", "2"],
          optionsMy: ["3", "6", "9", "2"],
          correctIndex: 0,
          hintsEn: [
            "Find the highest number that divides evenly into both 6 and 9.",
            "6 = 3 × 2, and 9 = 3 × 3, so 3 is the common factor.",
          ],
          hintsMy: [
            "6 နှင့် 9 နှစ်ခုစလုံးကို အညီအမျှစားနိုင်သော အမြင့်ဆုံးဂဏန်းကို ရှာပါ။",
            "6 = 3 × 2 ဖြစ်ပြီး 9 = 3 × 3 ဖြစ်သောကြောင့် 3 သည် ဘုံ Factor ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Factorise 6x + 9.",
          questionMy: "6x + 9 ကို Factorise လုပ်ပါ။",
          optionsEn: ["3(2x + 3)", "3(2x + 9)", "6(x + 9)", "9(x + 6)"],
          optionsMy: ["3(2x + 3)", "3(2x + 9)", "6(x + 9)", "9(x + 6)"],
          correctIndex: 0,
          hintsEn: [
            "Take the common factor 3 outside the bracket, then divide each term by 3 to find what stays inside.",
            "6x ÷ 3 = 2x, and 9 ÷ 3 = 3, giving 3(2x + 3).",
          ],
          hintsMy: [
            "ဘုံ Factor 3 ကို ကွင်းအပြင်သို့ ယူထုတ်ပြီး Term တစ်ခုစီကို 3 ဖြင့်စား၍ အတွင်းတွင် ကျန်ရစ်မည့်အရာကို ရှာပါ။",
            "6x ÷ 3 = 2x ဖြစ်ပြီး 9 ÷ 3 = 3 ဖြစ်သောကြောင့် 3(2x + 3) ရရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Factorise 10x - 15.",
          questionMy: "10x - 15 ကို Factorise လုပ်ပါ။",
          optionsEn: ["5(2x - 3)", "5(2x - 15)", "10(x - 15)", "2(5x - 15)"],
          optionsMy: ["5(2x - 3)", "5(2x - 15)", "10(x - 15)", "2(5x - 15)"],
          correctIndex: 0,
          hintsEn: [
            "The highest common factor of 10 and 15 is 5.",
            "10x ÷ 5 = 2x, and 15 ÷ 5 = 3, giving 5(2x - 3).",
          ],
          hintsMy: [
            "10 နှင့် 15 ၏ Highest Common Factor သည် 5 ဖြစ်သည်။",
            "10x ÷ 5 = 2x ဖြစ်ပြီး 15 ÷ 5 = 3 ဖြစ်သောကြောင့် 5(2x - 3) ရရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "How can you check that a factorised expression is correct?",
          questionMy:
              "Factorise ထားသော ဖော်ပြချက်တစ်ခု မှန်ကန်ကြောင်း မည်သို့ စစ်ဆေးနိုင်သနည်း။",
          optionsEn: [
            "Expand it back out and check it matches the original expression",
            "Check whether the answer contains the letter x",
            "Count the number of terms only",
            "There is no way to check a factorised answer",
          ],
          optionsMy: [
            "ပြန်ဖြန့်ချကြည့်ပြီး မူလဖော်ပြချက်နှင့် ကိုက်ညီမကိုက်ညီ စစ်ဆေးခြင်း",
            "အဖြေတွင် x အက္ခရာပါ မပါ စစ်ဆေးခြင်းသာ",
            "Term အရေအတွက်ကိုသာ ရေတွက်ခြင်း",
            "Factorise ထားသောအဖြေကို စစ်ဆေးရန် နည်းလမ်း မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Factorising and expanding are opposite operations, like square rooting and squaring.",
            "If 3(2x + 3) is correct, expanding it should give you back 6x + 9.",
          ],
          hintsMy: [
            "Factorise လုပ်ခြင်းနှင့် ဖြန့်ခြင်းသည် Square Rooting နှင့် Squaring ကဲ့သို့ ဆန့်ကျင်ဘက် လုပ်ဆောင်ချက်များဖြစ်သည်။",
            "3(2x + 3) မှန်ကန်ပါက ၎င်းကို ပြန်ဖြန့်ချလိုက်ပါက 6x + 9 ပြန်ရရှိရမည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w6-d2",
      dayNumber: 2,
      titleEn: "Match the Factorising Vocabulary",
      titleMy: "Factorise ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w6-dm-1",
          termEn: "Factorise",
          termMy: "Factorise (ဘုံသင်္ကေတ ထုတ်ယူခြင်း)",
          matchEn:
              "To write an expression as a common factor multiplied by a bracket",
          matchMy:
              "ဖော်ပြချက်တစ်ခုကို ဘုံ Factor နှင့် ကွင်းတစ်ခု မြှောက်ထားသည့်ပုံစံဖြင့် ရေးသားခြင်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w6-dm-2",
          termEn: "Common Factor",
          termMy: "ဘုံ Factor (Common Factor)",
          matchEn:
              "A number or letter that divides evenly into every term in an expression",
          matchMy:
              "ဖော်ပြချက်တစ်ခုအတွင်းရှိ Term တိုင်းကို အညီအမျှစားနိုင်သော ဂဏန်း သို့မဟုတ် အက္ခရာ",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w6-dm-3",
          termEn: "Highest Common Factor",
          termMy: "အမြင့်ဆုံးဘုံ Factor",
          matchEn:
              "The largest common factor that can be taken outside the bracket",
          matchMy: "ကွင်းအပြင်သို့ ယူထုတ်နိုင်သော အကြီးဆုံးဘုံ Factor",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w6-dm-4",
          termEn: "Factorised Form",
          termMy: "Factorise ပြီးပုံစံ",
          matchEn:
              "An expression written as a factor outside a bracket, e.g. 3(2x + 3)",
          matchMy:
              "ကွင်းအပြင်တွင် Factor ပါသော ပုံစံဖြင့် ရေးသားထားသော ဖော်ပြချက်၊ ဥပမာ 3(2x + 3)",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w6-dm-5",
          termEn: "Expanded Form",
          termMy: "ဖြန့်ပြီးပုံစံ",
          matchEn:
              "An expression with all brackets multiplied out, e.g. 6x + 9",
          matchMy: "ကွင်းအားလုံးကို မြှောက်ဖြန့်ထားသော ဖော်ပြချက်၊ ဥပမာ 6x + 9",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w6-dm-6",
          termEn: "Check by Expanding",
          termMy: "ဖြန့်ချ၍ စစ်ဆေးခြင်း",
          matchEn:
              "Verifying a factorised answer by expanding it back to the original expression",
          matchMy:
              "Factorise ထားသောအဖြေကို မူလဖော်ပြချက်သို့ ပြန်ဖြန့်ချ၍ အတည်ပြုခြင်း",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w6-d3",
      dayNumber: 3,
      titleEn: "Sort: Fully Factorised or Not Fully Factorised?",
      titleMy: "စီစစ်ကြမည် - အပြည့်အစုံ Factorise ပြီးလား၊ မပြီးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Fully Factorised", "Not Fully Factorised"],
        bucketsMy: ["အပြည့်အစုံ Factorise ပြီး", "အပြည့်အစုံ မဟုတ်သေး"],
        items: [
          SortingItem(
            id: "s2math-w6-sort-1",
            labelEn: "6x + 9 = 3(2x + 3)",
            labelMy: "6x + 9 = 3(2x + 3)",
            correctBucketEn: "Fully Factorised",
            correctBucketMy: "အပြည့်အစုံ Factorise ပြီး",
          ),
          SortingItem(
            id: "s2math-w6-sort-2",
            labelEn: "12x + 18 = 2(6x + 9)",
            labelMy: "12x + 18 = 2(6x + 9)",
            correctBucketEn: "Not Fully Factorised",
            correctBucketMy: "အပြည့်အစုံ မဟုတ်သေး",
          ),
          SortingItem(
            id: "s2math-w6-sort-3",
            labelEn: "8x + 12 = 4(2x + 3)",
            labelMy: "8x + 12 = 4(2x + 3)",
            correctBucketEn: "Fully Factorised",
            correctBucketMy: "အပြည့်အစုံ Factorise ပြီး",
          ),
          SortingItem(
            id: "s2math-w6-sort-4",
            labelEn: "20x + 30 = 5(4x + 6)",
            labelMy: "20x + 30 = 5(4x + 6)",
            correctBucketEn: "Not Fully Factorised",
            correctBucketMy: "အပြည့်အစုံ မဟုတ်သေး",
          ),
          SortingItem(
            id: "s2math-w6-sort-5",
            labelEn: "15x + 25 = 5(3x + 5)",
            labelMy: "15x + 25 = 5(3x + 5)",
            correctBucketEn: "Fully Factorised",
            correctBucketMy: "အပြည့်အစုံ Factorise ပြီး",
          ),
          SortingItem(
            id: "s2math-w6-sort-6",
            labelEn: "9x + 6 = 3(3x + 2)",
            labelMy: "9x + 6 = 3(3x + 2)",
            correctBucketEn: "Fully Factorised",
            correctBucketMy: "အပြည့်အစုံ Factorise ပြီး",
          ),
          SortingItem(
            id: "s2math-w6-sort-7",
            labelEn: "16x + 24 = 4(4x + 6)",
            labelMy: "16x + 24 = 4(4x + 6)",
            correctBucketEn: "Not Fully Factorised",
            correctBucketMy: "အပြည့်အစုံ မဟုတ်သေး",
          ),
          SortingItem(
            id: "s2math-w6-sort-8",
            labelEn: "14x + 21 = 7(2x + 3)",
            labelMy: "14x + 21 = 7(2x + 3)",
            correctBucketEn: "Fully Factorised",
            correctBucketMy: "အပြည့်အစုံ Factorise ပြီး",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w6-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiri's Garden Beds",
      titleMy: "စာဖတ်ခြင်း - သီရိ၏ ဥယျာဉ်ကွက်များ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri's Garden Beds",
        titleMy: "သီရိ၏ ဥယျာဉ်ကွက်များ",
        passageEn:
            "Thiri's school was building several rectangular vegetable beds, and the total area needed for fencing material worked out to 12x + 18 square units, where x represented an unknown length that varied bed to bed. The gardening teacher asked the class to factorise this so the school could order materials in convenient bundles.\n\nThiri looked for the highest common factor of 12 and 18 first. She listed factors of each: 12 = 1, 2, 3, 4, 6, 12, and 18 = 1, 2, 3, 6, 9, 18. The highest number in both lists was 6. Dividing each term by 6, she found 12x ÷ 6 = 2x and 18 ÷ 6 = 3, giving the factorised form 6(2x + 3).\n\n\"Why does factorising even matter here?\" a classmate asked. \"Because 6(2x + 3) tells us the beds naturally come in groups of 6 units of area,\" Thiri explained, \"which matches exactly how the fencing material is sold -- in bundles of 6. If we'd left it as 12x + 18, we might not have noticed that convenient grouping at all.\" To double-check her work, she expanded 6(2x + 3) back out: 6 × 2x = 12x, and 6 × 3 = 18, giving 12x + 18 again exactly. \"Expanding is the perfect way to check a factorising answer,\" she said, \"because the two processes undo each other.\"",
        passageMy:
            "သီရိ၏ ကျောင်းသည် စတုဂံပုံသဏ္ဌာန် ဟင်းသီးဟင်းရွက် ဥယျာဉ်ကွက်များစွာ တည်ဆောက်နေခဲ့ပြီး ခြံစည်းရိုးပစ္စည်းအတွက် လိုအပ်သော ဧရိယာစုစုပေါင်းသည် 12x + 18 စတုရန်းယူနစ် ရှိလာခဲ့သည်၊ x သည် ကွက်တစ်ခုစီ ကွာခြားနေသော အလျား မသိကိန်းတစ်ခုကို ကိုယ်စားပြုသည်။ ဥယျာဉ်စိုက်ပျိုးရေးဆရာမက ကျောင်းက ပစ္စည်းများကို အဆင်ပြေသော အထုပ်များအဖြစ် မှာယူနိုင်ရန် ဤအရာကို Factorise လုပ်ရန် အတန်းကို တောင်းဆိုခဲ့သည်။\n\nသီရိသည် 12 နှင့် 18 ၏ Highest Common Factor ကို ပထမဆုံး ရှာခဲ့သည်။ ဂဏန်းတစ်ခုစီ၏ Factor များကို ဖော်ပြခဲ့သည် — 12 = 1, 2, 3, 4, 6, 12၊ 18 = 1, 2, 3, 6, 9, 18။ စာရင်းနှစ်ခုစလုံးရှိ အမြင့်ဆုံးဂဏန်းမှာ 6 ဖြစ်သည်။ Term တစ်ခုစီကို 6 ဖြင့်စား၍ 12x ÷ 6 = 2x နှင့် 18 ÷ 6 = 3 ကို တွေ့ရှိခဲ့ရာ Factorise ပြီးပုံစံ 6(2x + 3) ရရှိသည်။\n\n'ဒီနေရာမှာ Factorise လုပ်ခြင်းက ဘာလို့ အရေးကြီးတာလဲ' ဟု အတန်းဖော်တစ်ဦးက မေးခဲ့သည်။ '6(2x + 3) က ကွက်တွေဟာ 6 ယူနစ်ဧရိယာအုပ်စုအလိုက် သဘာဝကျကျ လာတယ်ဆိုတာ ပြောပြနေလို့ပါ' ဟု သီရိရှင်းပြခဲ့သည်၊ 'ဒါက ခြံစည်းရိုးပစ္စည်းကို 6 ယူနစ်အထုပ်အလိုက် ရောင်းချသည့်ပုံစံနှင့် အတိအကျ ကိုက်ညီတယ်။ 12x + 18 အနေနဲ့ ချန်ထားခဲ့ရင် ဒီအဆင်ပြေတဲ့ အုပ်စုဖွဲ့မှုကို လုံးဝ မသတိပြုမိနိုင်ခဲ့ဘူး' ။ သူမ၏ အလုပ်ကို ထပ်စစ်ရန် 6(2x + 3) ကို ပြန်ဖြန့်ချခဲ့သည် — 6 × 2x = 12x ဖြစ်ပြီး 6 × 3 = 18 ဖြစ်ကာ 12x + 18 ကို အတိအကျ ပြန်ရရှိသည်။ 'ဖြန့်ချခြင်းသည် Factorise အဖြေကို စစ်ဆေးရန် အပြည့်အစုံ အံ့ဝင်သော နည်းလမ်းဖြစ်သည်' ဟု သူမက ပြောခဲ့သည်၊ 'ဘာဖြစ်လို့လဲဆိုတော့ လုပ်ငန်းစဉ်နှစ်ခုစလုံးက တစ်ခုနှင့်တစ်ခု ပြန်ဖျက်ပေးကြလို့ပါ' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the highest common factor of 12 and 18?",
            questionMy:
                "စာပိုဒ် ၂ အရ 12 နှင့် 18 ၏ Highest Common Factor မှာ အဘယ်နည်း။",
            optionsEn: ["6", "3", "12", "18"],
            optionsMy: ["6", "3", "12", "18"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the factorised form of 12x + 18?",
            questionMy:
                "စာပိုဒ် ၂ အရ 12x + 18 ၏ Factorise ပြီးပုံစံမှာ အဘယ်နည်း။",
            optionsEn: ["6(2x + 3)", "2(6x + 9)", "3(4x + 6)", "12(x + 18)"],
            optionsMy: ["6(2x + 3)", "2(6x + 9)", "3(4x + 6)", "12(x + 18)"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did the factorised form matter for ordering materials?",
            questionMy:
                "စာပိုဒ် ၃ အရ ပစ္စည်းများ မှာယူရန်အတွက် Factorise ပြီးပုံစံက အဘယ်ကြောင့် အရေးကြီးခဲ့သနည်း။",
            optionsEn: [
              "It matched exactly how the fencing material was sold, in bundles of 6",
              "It made the area smaller than it actually was",
              "It had no real connection to ordering materials at all",
              "It changed the actual area of the garden beds",
            ],
            optionsMy: [
              "ခြံစည်းရိုးပစ္စည်းကို 6 ယူနစ်အထုပ်အလိုက် ရောင်းချသည့်ပုံစံနှင့် အတိအကျ ကိုက်ညီသောကြောင့်",
              "အမှန်တကယ် ဧရိယာထက် ငယ်စေသောကြောင့်",
              "ပစ္စည်းများ မှာယူခြင်းနှင့် စစ်မှန်သော ဆက်စပ်မှု လုံးဝ မရှိသောကြောင့်",
              "ဥယျာဉ်ကွက်များ၏ အမှန်တကယ်ဧရိယာကို ပြောင်းလဲပစ်သောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, how did Thiri check her factorised answer?",
            questionMy:
                "စာပိုဒ် ၃ အရ သီရိသည် သူမ၏ Factorise ထားသောအဖြေကို မည်သို့ စစ်ဆေးခဲ့သနည်း။",
            optionsEn: [
              "She expanded 6(2x + 3) back out and confirmed it matched 12x + 18",
              "She asked her teacher for the answer directly",
              "She guessed the answer was correct without checking",
              "She measured the garden with a ruler instead",
            ],
            optionsMy: [
              "6(2x + 3) ကို ပြန်ဖြန့်ချပြီး 12x + 18 နှင့် ကိုက်ညီကြောင်း အတည်ပြုခဲ့သည်",
              "ဆရာမကို တိုက်ရိုက် အဖြေမေးခဲ့သည်",
              "မစစ်ဆေးဘဲ အဖြေမှန်ကန်သည်ဟု ခန့်မှန်းခဲ့သည်",
              "ဥယျာဉ်ကို ပေတံဖြင့် တိုင်းတာခဲ့သည်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w6-d5",
      dayNumber: 5,
      titleEn: "Factorising Recap Quiz",
      titleMy: "Factorise ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Factorise 8x + 12.",
          questionMy: "8x + 12 ကို Factorise လုပ်ပါ။",
          optionsEn: ["4(2x + 3)", "4(2x + 12)", "8(x + 12)", "2(4x + 6)"],
          optionsMy: ["4(2x + 3)", "4(2x + 12)", "8(x + 12)", "2(4x + 6)"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is the highest common factor of 15 and 20?",
          questionMy: "15 နှင့် 20 ၏ Highest Common Factor မှာ အဘယ်နည်း။",
          optionsEn: ["5", "10", "15", "20"],
          optionsMy: ["5", "10", "15", "20"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Factorise 9x + 15.",
          questionMy: "9x + 15 ကို Factorise လုပ်ပါ။",
          optionsEn: ["3(3x + 5)", "3(3x + 15)", "9(x + 15)", "5(3x + 3)"],
          optionsMy: ["3(3x + 5)", "3(3x + 15)", "9(x + 15)", "5(3x + 3)"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "How can you check a factorised answer is correct?",
          questionMy:
              "Factorise ထားသောအဖြေ မှန်ကန်ကြောင်း မည်သို့ စစ်ဆေးနိုင်သနည်း။",
          optionsEn: [
            "Expand it back out and compare it to the original expression",
            "Count the letters used",
            "Check if it looks neat",
            "There is no way to check",
          ],
          optionsMy: [
            "ပြန်ဖြန့်ချပြီး မူလဖော်ပြချက်နှင့် နှိုင်းယှဉ်ခြင်း",
            "အသုံးပြုထားသော အက္ခရာများကို ရေတွက်ခြင်း",
            "သပ်ရပ်ကြည့်ကောင်းမကောင်း စစ်ဆေးခြင်း",
            "စစ်ဆေးရန် နည်းလမ်း မရှိပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Thiri's garden story, the factorised form 6(2x + 3) matched...",
          questionMy:
              "သီရိ၏ ဥယျာဉ်ဇာတ်လမ်းတွင် Factorise ပြီးပုံစံ 6(2x + 3) သည် ... နှင့် ကိုက်ညီခဲ့သည်။",
          optionsEn: [
            "How the fencing material was sold, in bundles of 6",
            "The colour of the fencing",
            "The number of students in the class",
            "Nothing useful at all",
          ],
          optionsMy: [
            "ခြံစည်းရိုးပစ္စည်းကို 6 ယူနစ်အထုပ်အလိုက် ရောင်းချသည့်ပုံစံ",
            "ခြံစည်းရိုး၏ အရောင်",
            "အတန်းထဲရှိ ကျောင်းသားအရေအတွက်",
            "အသုံးဝင်သောအရာ မရှိကြောင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek7 = CourseWeekDef(
  id: "course-secondary2-mathematics-w7",
  weekNumber: 7,
  titleEn: "Using and Deriving Formulas",
  titleMy: "ဖော်မြူလာများ အသုံးပြုခြင်းနှင့် ဆင်းသက်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w7-d1",
      dayNumber: 1,
      titleEn: "Substituting into Formulas",
      titleMy: "ဖော်မြူလာများသို့ Substitution ပြုလုပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "If A = l × w, and l = 8, w = 5, what is A?",
          questionMy:
              "A = l × w ဖြစ်ပြီး l = 8, w = 5 ဖြစ်ပါက A သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["40", "13", "3", "85"],
          optionsMy: ["40", "13", "3", "85"],
          correctIndex: 0,
          hintsEn: [
            "Substitution means replacing each letter with its given number.",
            "A = 8 × 5 = 40.",
          ],
          hintsMy: [
            "Substitution ဆိုသည်မှာ အက္ခရာတစ်ခုစီကို ပေးထားသောဂဏန်းနှင့် အစားထိုးခြင်းဖြစ်သည်။",
            "A = 8 × 5 = 40 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "If P = 2(l + w), and l = 6, w = 4, what is P?",
          questionMy:
              "P = 2(l + w) ဖြစ်ပြီး l = 6, w = 4 ဖြစ်ပါက P သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["20", "10", "24", "48"],
          optionsMy: ["20", "10", "24", "48"],
          correctIndex: 0,
          hintsEn: [
            "First add l + w inside the bracket, then multiply the result by 2.",
            "P = 2(6 + 4) = 2 × 10 = 20.",
          ],
          hintsMy: [
            "ပထမဆုံး ကွင်းအတွင်းတွင် l + w ကို ပေါင်းပြီး ထို့နောက် ရလဒ်ကို 2 ဖြင့် မြှောက်ပါ။",
            "P = 2(6 + 4) = 2 × 10 = 20 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "If v = u + at, and u = 5, a = 3, t = 4, what is v?",
          questionMy:
              "v = u + at ဖြစ်ပြီး u = 5, a = 3, t = 4 ဖြစ်ပါက v သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["17", "12", "60", "9"],
          optionsMy: ["17", "12", "60", "9"],
          correctIndex: 0,
          hintsEn: [
            "Follow BODMAS: multiply a and t first, then add u.",
            "at = 3 × 4 = 12, then v = 5 + 12 = 17.",
          ],
          hintsMy: [
            "BODMAS ကို လိုက်နာပါ — ပထမဆုံး a နှင့် t ကို မြှောက်ပါ၊ ထို့နောက် u ကို ပေါင်းပါ။",
            "at = 3 × 4 = 12 ဖြစ်ပြီး v = 5 + 12 = 17 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A phone plan costs C = 20 + 0.10n kyats-equivalent units, where n is the number of extra minutes used. What is C when n = 30?",
          questionMy:
              "ဖုန်းစနစ်တစ်ခုသည် C = 20 + 0.10n ယူနစ် ကုန်ကျပြီး n သည် အသုံးပြုထားသော အပိုမိနစ်အရေအတွက်ဖြစ်သည်။ n = 30 ဖြစ်ပါက C သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["23", "20.3", "50", "3"],
          optionsMy: ["23", "20.3", "50", "3"],
          correctIndex: 0,
          hintsEn: [
            "Substitute n = 30 into the formula: C = 20 + 0.10 × 30.",
            "0.10 × 30 = 3, so C = 20 + 3 = 23.",
          ],
          hintsMy: [
            "n = 30 ကို ဖော်မြူလာထဲသို့ အစားထိုးပါ — C = 20 + 0.10 × 30။",
            "0.10 × 30 = 3 ဖြစ်သောကြောင့် C = 20 + 3 = 23 ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w7-d2",
      dayNumber: 2,
      titleEn: "Match the Formula Vocabulary",
      titleMy: "ဖော်မြူလာ ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w7-dm-1",
          termEn: "Formula",
          termMy: "ဖော်မြူလာ (Formula)",
          matchEn:
              "A mathematical rule connecting two or more variables, e.g. A = l × w",
          matchMy:
              "Variable နှစ်ခု သို့မဟုတ် ထို့ထက်ပိုသည်တို့ကို ချိတ်ဆက်ပေးသော သင်္ချာစည်းမျဉ်း၊ ဥပမာ A = l × w",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w7-dm-2",
          termEn: "Substitution",
          termMy: "Substitution (ဂဏန်းအစားထိုးခြင်း)",
          matchEn: "Replacing a letter in a formula with a known number",
          matchMy:
              "ဖော်မြူလာတစ်ခုရှိ အက္ခရာကို သိရှိထားသော ဂဏန်းတစ်ခုနှင့် အစားထိုးခြင်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w7-dm-3",
          termEn: "Variable",
          termMy: "Variable (ကိန်းရှင်)",
          matchEn: "A letter that stands for a value that can change",
          matchMy: "ပြောင်းလဲနိုင်သောတန်ဖိုးကို ကိုယ်စားပြုသော အက္ခရာ",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w7-dm-4",
          termEn: "Subject of the Formula",
          termMy: "ဖော်မြူလာ၏ Subject",
          matchEn:
              "The single letter on its own on one side of the formula, e.g. the A in A = l × w",
          matchMy:
              "ဖော်မြူလာ၏ တစ်ဖက်တွင် ကိုယ်တိုင်တစ်ယောက်တည်းရှိသော အက္ခရာ၊ ဥပမာ A = l × w ရှိ A",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w7-dm-5",
          termEn: "Deriving a Formula",
          termMy: "ဖော်မြူလာ ဆင်းသက်ခြင်း",
          matchEn:
              "Writing a new formula in symbols from a description given in words",
          matchMy:
              "စကားလုံးဖြင့် ဖော်ပြထားသော ဖော်ပြချက်မှ သင်္ကေတဖော်မြူလာသစ်တစ်ခု ရေးသားခြင်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w7-dm-6",
          termEn: "Real-Life Formula",
          termMy: "လက်တွေ့ဘဝ ဖော်မြူလာ",
          matchEn:
              "A formula used to model a real situation, such as cost, speed, or distance",
          matchMy:
              "ကုန်ကျစရိတ်၊ အလျင် သို့မဟုတ် အကွာအဝေးကဲ့သို့သော အခြေအနေအမှန်ကို ပုံဖော်ရန် အသုံးပြုသော ဖော်မြူလာ",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w7-d3",
      dayNumber: 3,
      titleEn: "Sort: Correct Substitution or Incorrect Substitution?",
      titleMy: "စီစစ်ကြမည် - Substitution မှန်လား၊ မှားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Correct Substitution", "Incorrect Substitution"],
        bucketsMy: ["Substitution မှန်", "Substitution မှား"],
        items: [
          SortingItem(
            id: "s2math-w7-sort-1",
            labelEn: "A = l × w, l = 5, w = 3, so A = 15",
            labelMy: "A = l × w, l = 5, w = 3, ထို့ကြောင့် A = 15",
            correctBucketEn: "Correct Substitution",
            correctBucketMy: "Substitution မှန်",
          ),
          SortingItem(
            id: "s2math-w7-sort-2",
            labelEn: "A = l × w, l = 5, w = 3, so A = 8",
            labelMy: "A = l × w, l = 5, w = 3, ထို့ကြောင့် A = 8",
            correctBucketEn: "Incorrect Substitution",
            correctBucketMy: "Substitution မှား",
          ),
          SortingItem(
            id: "s2math-w7-sort-3",
            labelEn: "P = 2(l + w), l = 4, w = 6, so P = 20",
            labelMy: "P = 2(l + w), l = 4, w = 6, ထို့ကြောင့် P = 20",
            correctBucketEn: "Correct Substitution",
            correctBucketMy: "Substitution မှန်",
          ),
          SortingItem(
            id: "s2math-w7-sort-4",
            labelEn: "P = 2(l + w), l = 4, w = 6, so P = 24",
            labelMy: "P = 2(l + w), l = 4, w = 6, ထို့ကြောင့် P = 24",
            correctBucketEn: "Incorrect Substitution",
            correctBucketMy: "Substitution မှား",
          ),
          SortingItem(
            id: "s2math-w7-sort-5",
            labelEn: "v = u + at, u = 2, a = 5, t = 3, so v = 17",
            labelMy: "v = u + at, u = 2, a = 5, t = 3, ထို့ကြောင့် v = 17",
            correctBucketEn: "Correct Substitution",
            correctBucketMy: "Substitution မှန်",
          ),
          SortingItem(
            id: "s2math-w7-sort-6",
            labelEn: "v = u + at, u = 2, a = 5, t = 3, so v = 30",
            labelMy: "v = u + at, u = 2, a = 5, t = 3, ထို့ကြောင့် v = 30",
            correctBucketEn: "Incorrect Substitution",
            correctBucketMy: "Substitution မှား",
          ),
          SortingItem(
            id: "s2math-w7-sort-7",
            labelEn: "C = 20 + 0.10n, n = 10, so C = 21",
            labelMy: "C = 20 + 0.10n, n = 10, ထို့ကြောင့် C = 21",
            correctBucketEn: "Correct Substitution",
            correctBucketMy: "Substitution မှန်",
          ),
          SortingItem(
            id: "s2math-w7-sort-8",
            labelEn: "C = 20 + 0.10n, n = 10, so C = 3",
            labelMy: "C = 20 + 0.10n, n = 10, ထို့ကြောင့် C = 3",
            correctBucketEn: "Incorrect Substitution",
            correctBucketMy: "Substitution မှား",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w7-d4",
      dayNumber: 4,
      titleEn: "Reading: Mya's Taxi Fare Formula",
      titleMy: "စာဖတ်ခြင်း - မြ၏ တက္ကစီခ ဖော်မြူလာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Mya's Taxi Fare Formula",
        titleMy: "မြ၏ တက္ကစီခ ဖော်မြူလာ",
        passageEn:
            "Mya's family often took taxis, and she noticed the fare seemed to follow a pattern: there was always a starting charge, plus an extra amount for every kilometre travelled. Curious, she asked the driver directly, and he told her the starting charge was 1000 kyats-equivalent units, plus 200 units for every kilometre. Mya wrote this in words first: total fare equals the starting charge plus 200 times the number of kilometres.\n\nHer teacher showed her how to turn that sentence into a proper formula. Letting F stand for the total fare and d stand for the distance in kilometres, the words became F = 1000 + 200d. \"That's deriving a formula,\" her teacher explained, \"turning a description in words into symbols that work for any distance, not just one specific trip.\"\n\nTo test it, Mya substituted d = 5 for a five-kilometre trip: F = 1000 + 200 × 5 = 1000 + 1000 = 2000. She checked this against a real receipt from a similar trip and it matched closely. Later, Su Su pointed out that the formula could also work backwards -- if you knew the fare, you could substitute it in and solve for the distance instead, though that required rearranging the formula rather than simple substitution. \"Substituting in is easy once you have the formula,\" Mya said. \"The real skill was writing the formula correctly in the first place.\"",
        passageMy:
            "မြ၏ မိသားစုသည် တက္ကစီကို မကြာခဏ စီးလေ့ရှိခဲ့ပြီး ခသည် ပုံစံတစ်ခုကို လိုက်နာနေဟန်ရှိသည်ကို သတိပြုမိခဲ့သည် — အမြဲ အစပြုငွေတစ်ခု ရှိပြီး ကီလိုမီတာတိုင်း ခရီးသွားတိုင်း ငွေပိုကုန်ကျသည်။ စိတ်ဝင်စားသောကြောင့် သူမ ယာဉ်မောင်းအားတိုက်ရိုက် မေးခဲ့ရာ သူက အစပြုငွေသည် ယူနစ် 1000 ဖြစ်ပြီး ကီလိုမီတာတိုင်း ယူနစ် 200 ထပ်ကုန်ကျမည်ဟု ပြောခဲ့သည်။ မြသည် ၎င်းကို ပထမဆုံး စကားလုံးဖြင့် ရေးခဲ့သည် — ခစုစုပေါင်းသည် အစပြုငွေနှင့် ကီလိုမီတာအရေအတွက်ကို 200 ဖြင့်မြှောက်ထားသည့်ရလဒ် ပေါင်းလိုက်သည်နှင့် ညီသည်။\n\nသူမ၏ ဆရာမသည် ထိုဝါကျကို ပြည့်စုံသောဖော်မြူလာအဖြစ် မည်သို့ ပြောင်းလဲရမည်ကို ပြသခဲ့သည်။ F ကို ခစုစုပေါင်းအတွက် ကိုယ်စားပြုစေ၊ d ကို ကီလိုမီတာအတွက် အကွာအဝေးအဖြစ် ကိုယ်စားပြုစေလျှင် စကားလုံးများသည် F = 1000 + 200d ဖြစ်လာခဲ့သည်။ 'ဒါက ဖော်မြူလာဆင်းသက်ခြင်းပါ' ဟု ဆရာမက ရှင်းပြခဲ့သည်၊ 'စကားလုံးဖြင့် ဖော်ပြချက်ကို ခရီးအတိအကျတစ်ခုအတွက်သာမက အကွာအဝေးမည်သည့်အတွက်မဆို သုံးနိုင်သော သင်္ကေတများအဖြစ် ပြောင်းလဲပေးလိုက်တာပါ' ။\n\nစမ်းသပ်ရန် မြသည် ငါးကီလိုမီတာခရီးအတွက် d = 5 ကို အစားထိုးခဲ့သည် — F = 1000 + 200 × 5 = 1000 + 1000 = 2000။ ဤအချက်ကို ဆင်တူသော ခရီးမှ အမှန်တကယ်ဖြတ်ပိုင်းနှင့် နှိုင်းယှဉ်ကြည့်ရာ နီးစပ်စွာ ကိုက်ညီခဲ့သည်။ နောက်ပိုင်း စုစုက ဖော်မြူလာသည် ပြောင်းပြန်လည်း အလုပ်လုပ်နိုင်ကြောင်း ထောက်ပြခဲ့သည် — ခကို သိပါက ၎င်းကို အစားထိုးပြီး အကွာအဝေးအတွက် ဖြေရှင်းနိုင်သော်လည်း ၎င်းအတွက် ရိုးရှင်းသော Substitution မဟုတ်ဘဲ ဖော်မြူလာကို ပြန်လည်စီစဉ်ရန် လိုအပ်သည်။ 'ဖော်မြူလာရရှိပြီးရင် Substitution လုပ်ဖို့က လွယ်ကူပါတယ်' ဟု မြက ပြောခဲ့သည်။ 'တကယ့်ကျွမ်းကျင်မှုက ဖော်မြူလာကို ပထမဦးဆုံး မှန်ကန်စွာ ရေးတတ်ဖို့ပါပဲ' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what formula did Mya's teacher help her derive?",
            questionMy:
                "စာပိုဒ် ၂ အရ မြ၏ ဆရာမက မည်သည့်ဖော်မြူလာကို ဆင်းသက်ရန် ကူညီခဲ့သနည်း။",
            optionsEn: [
              "F = 1000 + 200d",
              "F = 200 + 1000d",
              "F = 1000d",
              "F = 1000 - 200d",
            ],
            optionsMy: [
              "F = 1000 + 200d",
              "F = 200 + 1000d",
              "F = 1000d",
              "F = 1000 - 200d",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what was the fare for a 5-kilometre trip?",
            questionMy: "စာပိုဒ် ၃ အရ 5 ကီလိုမီတာခရီးအတွက် ခမှာ အဘယ်နည်း။",
            optionsEn: ["2000", "1200", "1000", "200"],
            optionsMy: ["2000", "1200", "1000", "200"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Su Su point out about the formula?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဖော်မြူလာအကြောင်း စုစု မည်သို့ ထောက်ပြခဲ့သနည်း။",
            optionsEn: [
              "It could work backwards to find distance from fare, but required rearranging",
              "It could never be used for any other trip",
              "It only worked for exactly 5 kilometres",
              "It had no practical use at all",
            ],
            optionsMy: [
              "ခမှ အကွာအဝေးကို ရှာရန် ပြောင်းပြန်လည်း အလုပ်လုပ်နိုင်သော်လည်း ပြန်လည်စီစဉ်ရန် လိုအပ်ကြောင်း",
              "အခြားခရီးမည်သည့်အတွက်မျှ ဘယ်တော့မှ မသုံးနိုင်ကြောင်း",
              "5 ကီလိုမီတာအတွက်သာ အလုပ်လုပ်ကြောင်း",
              "လက်တွေ့အသုံးဝင်မှု လုံးဝ မရှိကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Mya say was the real skill?",
            questionMy:
                "စာပိုဒ် ၃ အရ တကယ့်ကျွမ်းကျင်မှုဆိုသည်မှာ အဘယ်နည်းဟု မြက ပြောခဲ့သနည်း။",
            optionsEn: [
              "Writing the formula correctly in the first place",
              "Substituting numbers in, which she said was the hardest part",
              "Memorising the taxi driver's exact words",
              "Riding in a taxi every single day",
            ],
            optionsMy: [
              "ဖော်မြူလာကို ပထမဦးဆုံး မှန်ကန်စွာ ရေးတတ်ခြင်း",
              "ဂဏန်းများ အစားထိုးခြင်း၊ ၎င်းကို အခက်ခဲဆုံးအပိုင်းဟု သူမ ပြောခဲ့ကြောင်း",
              "တက္ကစီယာဉ်မောင်း၏ စကားလုံးအတိအကျကို အလွတ်ကျက်ခြင်း",
              "နေ့စဉ် တက္ကစီစီးခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w7-d5",
      dayNumber: 5,
      titleEn: "Formulas Recap Quiz",
      titleMy: "ဖော်မြူလာ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "If A = l × w, l = 7, w = 4, what is A?",
          questionMy: "A = l × w, l = 7, w = 4 ဖြစ်ပါက A သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["28", "11", "3", "74"],
          optionsMy: ["28", "11", "3", "74"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "If P = 2(l + w), l = 5, w = 3, what is P?",
          questionMy:
              "P = 2(l + w), l = 5, w = 3 ဖြစ်ပါက P သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["16", "8", "15", "30"],
          optionsMy: ["16", "8", "15", "30"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Substitution means...",
          questionMy: "Substitution ဆိုသည်မှာ ...",
          optionsEn: [
            "Replacing a letter in a formula with a known number",
            "Expanding a bracket",
            "Factorising an expression",
            "Drawing a graph",
          ],
          optionsMy: [
            "ဖော်မြူလာရှိ အက္ခရာကို သိရှိထားသော ဂဏန်းနှင့် အစားထိုးခြင်း",
            "ကွင်းတစ်ခု ဖြန့်ခြင်း",
            "ဖော်ပြချက်တစ်ခု Factorise လုပ်ခြင်း",
            "ဂရပ် ရေးဆွဲခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Mya's taxi fare formula F = 1000 + 200d, what does d represent?",
          questionMy:
              "မြ၏ တက္ကစီခ ဖော်မြူလာ F = 1000 + 200d တွင် d သည် မည်သည်ကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "The distance travelled in kilometres",
            "The starting charge",
            "The driver's name",
            "The total number of taxis",
          ],
          optionsMy: [
            "ခရီးသွားသော ကီလိုမီတာအကွာအဝေး",
            "အစပြုငွေ",
            "ယာဉ်မောင်း၏ အမည်",
            "တက္ကစီစုစုပေါင်းအရေအတွက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What was the fare for a 5-kilometre taxi trip using F = 1000 + 200d?",
          questionMy:
              "F = 1000 + 200d ကိုသုံး၍ 5 ကီလိုမီတာ တက္ကစီခရီးအတွက် ခမှာ အဘယ်နည်း။",
          optionsEn: ["2000", "1200", "1000", "5000"],
          optionsMy: ["2000", "1200", "1000", "5000"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek8 = CourseWeekDef(
  id: "course-secondary2-mathematics-w8",
  weekNumber: 8,
  titleEn: "Capstone: The Algebra Architect",
  titleMy: "အထွတ်အထိပ် - Algebra ဗိသုကာပညာရှင်",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w8-d1",
      dayNumber: 1,
      titleEn: "Area, Perimeter, and Building Equations",
      titleMy: "ဧရိယာ၊ Perimeter နှင့် ညီမျှခြင်းများ တည်ဆောက်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A rectangle has length (x + 3) and width 4. What is an expanded expression for its area?",
          questionMy:
              "စတုဂံတစ်ခု၏ အလျားသည် (x + 3) ဖြစ်ပြီး အကျယ်သည် 4 ဖြစ်သည်။ ၎င်း၏ ဧရိယာအတွက် ဖြန့်ချထားသောဖော်ပြချက်မှာ အဘယ်နည်း။",
          optionsEn: ["4x + 12", "4x + 3", "x + 12", "4x"],
          optionsMy: ["4x + 12", "4x + 3", "x + 12", "4x"],
          correctIndex: 0,
          hintsEn: [
            "Area = length × width, so multiply 4 by (x + 3).",
            "4 × x = 4x, and 4 × 3 = 12, giving 4x + 12.",
          ],
          hintsMy: [
            "ဧရိယာ = အလျား × အကျယ်ဖြစ်သောကြောင့် 4 ကို (x + 3) နှင့် မြှောက်ပါ။",
            "4 × x = 4x ဖြစ်ပြီး 4 × 3 = 12 ဖြစ်သောကြောင့် 4x + 12 ရရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A rectangle's perimeter expression is 6x + 10. Factorise this fully.",
          questionMy:
              "စတုဂံတစ်ခု၏ Perimeter ဖော်ပြချက်သည် 6x + 10 ဖြစ်သည်။ ၎င်းကို အပြည့်အစုံ Factorise လုပ်ပါ။",
          optionsEn: ["2(3x + 5)", "2(3x + 10)", "6(x + 10)", "5(3x + 2)"],
          optionsMy: ["2(3x + 5)", "2(3x + 10)", "6(x + 10)", "5(3x + 2)"],
          correctIndex: 0,
          hintsEn: [
            "The highest common factor of 6 and 10 is 2.",
            "6x ÷ 2 = 3x, and 10 ÷ 2 = 5, giving 2(3x + 5).",
          ],
          hintsMy: [
            "6 နှင့် 10 ၏ Highest Common Factor သည် 2 ဖြစ်သည်။",
            "6x ÷ 2 = 3x ဖြစ်ပြီး 10 ÷ 2 = 5 ဖြစ်သောကြောင့် 2(3x + 5) ရရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A number, when multiplied by 3 and then increased by 7, gives 25. Which equation correctly represents this?",
          questionMy:
              "ဂဏန်းတစ်ခုကို 3 ဖြင့်မြှောက်ပြီး ထို့နောက် 7 ထပ်ပေါင်းလိုက်ပါက 25 ရသည်။ ဤအခြေအနေကို မှန်ကန်စွာ ကိုယ်စားပြုသော ညီမျှခြင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "3x + 7 = 25",
            "3x - 7 = 25",
            "x + 7 = 25",
            "7x + 3 = 25",
          ],
          optionsMy: [
            "3x + 7 = 25",
            "3x - 7 = 25",
            "x + 7 = 25",
            "7x + 3 = 25",
          ],
          correctIndex: 0,
          hintsEn: [
            "\"Multiplied by 3\" means 3x, and \"increased by 7\" means adding 7 to that.",
            "\"Gives 25\" means the whole expression equals 25.",
          ],
          hintsMy: [
            "'3 ဖြင့်မြှောက်ခြင်း' ဆိုသည်မှာ 3x ဖြစ်ပြီး '7 ထပ်ပေါင်းခြင်း' ဆိုသည်မှာ ၎င်းကို 7 ထပ်ပေါင်းခြင်းဖြစ်သည်။",
            "'25 ရသည်' ဆိုသည်မှာ ဖော်ပြချက်တစ်ခုလုံးသည် 25 နှင့် ညီသည်ဟု ဆိုလိုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A room's floor area is 5(x + 2) square units and also equals 5x + 10 when expanded. If x = 4, what is the floor area?",
          questionMy:
              "အခန်းတစ်ခန်း၏ ကြမ်းပြင်ဧရိယာသည် 5(x + 2) စတုရန်းယူနစ်ဖြစ်ပြီး ဖြန့်ချလိုက်ပါက 5x + 10 နှင့်လည်း ညီသည်။ x = 4 ဖြစ်ပါက ကြမ်းပြင်ဧရိယာမှာ အဘယ်နည်း။",
          optionsEn: ["30", "14", "20", "10"],
          optionsMy: ["30", "14", "20", "10"],
          correctIndex: 0,
          hintsEn: [
            "You can substitute x = 4 into either the factorised or expanded form -- both should give the same answer.",
            "Using the expanded form: 5(4) + 10 = 20 + 10 = 30.",
          ],
          hintsMy: [
            "x = 4 ကို Factorise ပြီးပုံစံ သို့မဟုတ် ဖြန့်ပြီးပုံစံ မည်သည့်ပုံစံမဆို အစားထိုးနိုင်သည် — အဖြေတူညီရမည်။",
            "ဖြန့်ပြီးပုံစံကို အသုံးပြု၍ — 5(4) + 10 = 20 + 10 = 30 ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w8-d2",
      dayNumber: 2,
      titleEn: "Match the Whole-Term Vocabulary",
      titleMy: "တစ်သင်တန်းလုံး ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w8-dm-1",
          termEn: "Expand",
          termMy: "ဖြန့်ခြင်း (Expand)",
          matchEn: "To multiply out a bracket, removing it from the expression",
          matchMy: "ကွင်းကို ဖော်ပြချက်မှ ဖယ်ရှားစေရန် မြှောက်ဖြန့်ခြင်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w8-dm-2",
          termEn: "Factorise",
          termMy: "Factorise (ဘုံသင်္ကေတ ထုတ်ယူခြင်း)",
          matchEn:
              "To write an expression as a common factor multiplied by a bracket",
          matchMy:
              "ဖော်ပြချက်တစ်ခုကို ဘုံ Factor နှင့် ကွင်းတစ်ခု မြှောက်ထားသည့်ပုံစံဖြင့် ရေးသားခြင်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w8-dm-3",
          termEn: "Substitution",
          termMy: "Substitution (ဂဏန်းအစားထိုးခြင်း)",
          matchEn: "Replacing a letter in a formula with a known number",
          matchMy:
              "ဖော်မြူလာတစ်ခုရှိ အက္ခရာကို သိရှိထားသော ဂဏန်းတစ်ခုနှင့် အစားထိုးခြင်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w8-dm-4",
          termEn: "Area Formula",
          termMy: "ဧရိယာ ဖော်မြူလာ",
          matchEn: "For a rectangle, area equals length multiplied by width",
          matchMy:
              "စတုဂံတစ်ခုအတွက် ဧရိယာသည် အလျားကို အကျယ်ဖြင့်မြှောက်ထားသည်နှင့် ညီသည်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w8-dm-5",
          termEn: "Building an Equation",
          termMy: "ညီမျှခြင်းတစ်ခု တည်ဆောက်ခြင်း",
          matchEn:
              "Turning a word problem into a mathematical statement using symbols",
          matchMy:
              "ပုစ္ဆာစာသားတစ်ခုကို သင်္ကေတများသုံး၍ သင်္ချာဖော်ပြချက်တစ်ခုအဖြစ် ပြောင်းလဲခြင်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w8-dm-6",
          termEn: "Logic Puzzle",
          termMy: "Logic ပဟေဠိ",
          matchEn:
              "A problem solved by careful step-by-step reasoning rather than guessing",
          matchMy:
              "ခန့်မှန်းခြင်းအစား ဂရုတစိုက် အဆင့်ဆင့် ဆင်ခြင်တွေးခေါ်မှုဖြင့် ဖြေရှင်းသောပြဿနာ",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w8-d3",
      dayNumber: 3,
      titleEn: "Sort: About Area/Perimeter or About Formulas/Equations?",
      titleMy:
          "စီစစ်ကြမည် - ဧရိယာ/Perimeter အကြောင်းလား၊ ဖော်မြူလာ/ညီမျှခြင်း အကြောင်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["About Area/Perimeter", "About Formulas/Equations"],
        bucketsMy: [
          "ဧရိယာ/Perimeter အကြောင်း",
          "ဖော်မြူလာ/ညီမျှခြင်း အကြောင်း",
        ],
        items: [
          SortingItem(
            id: "s2math-w8-sort-1",
            labelEn: "A rectangle's area equals length times width.",
            labelMy:
                "စတုဂံတစ်ခု၏ ဧရိယာသည် အလျားနှင့် အကျယ်ကို မြှောက်ထားသည်နှင့် ညီသည်။",
            correctBucketEn: "About Area/Perimeter",
            correctBucketMy: "ဧရိယာ/Perimeter အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w8-sort-2",
            labelEn:
                "Substituting x = 4 into a formula to find a numerical answer.",
            labelMy:
                "ဂဏန်းအဖြေရရှိရန် ဖော်မြူလာထဲသို့ x = 4 ကို အစားထိုးခြင်း။",
            correctBucketEn: "About Formulas/Equations",
            correctBucketMy: "ဖော်မြူလာ/ညီမျှခြင်း အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w8-sort-3",
            labelEn:
                "Perimeter is the total distance around the outside of a shape.",
            labelMy:
                "Perimeter သည် ပုံသဏ္ဌာန်တစ်ခု၏ ပြင်ပပတ်လည် အကွာအဝေးစုစုပေါင်းဖြစ်သည်။",
            correctBucketEn: "About Area/Perimeter",
            correctBucketMy: "ဧရိယာ/Perimeter အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w8-sort-4",
            labelEn: "Turning \"a number plus 7 gives 25\" into 3x + 7 = 25.",
            labelMy:
                "'ဂဏန်းတစ်ခု ထပ်ပေါင်း 7 က 25 ရသည်' ကို 3x + 7 = 25 အဖြစ် ပြောင်းလဲခြင်း။",
            correctBucketEn: "About Formulas/Equations",
            correctBucketMy: "ဖော်မြူလာ/ညီမျှခြင်း အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w8-sort-5",
            labelEn: "4(x + 3) expands to give the area of a rectangular room.",
            labelMy:
                "4(x + 3) ကို ဖြန့်ချလိုက်ပါက အခန်းတစ်ခန်း၏ ဧရိယာကို ရရှိသည်။",
            correctBucketEn: "About Area/Perimeter",
            correctBucketMy: "ဧရိယာ/Perimeter အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w8-sort-6",
            labelEn: "F = 1000 + 200d is a formula for a taxi fare.",
            labelMy: "F = 1000 + 200d သည် တက္ကစီခအတွက် ဖော်မြူလာတစ်ခုဖြစ်သည်။",
            correctBucketEn: "About Formulas/Equations",
            correctBucketMy: "ဖော်မြူလာ/ညီမျှခြင်း အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w8-sort-7",
            labelEn:
                "Two equal sides and two equal sides make up a rectangle's perimeter.",
            labelMy:
                "ညီမျှသောဘက်နှစ်ဘက်နှင့် ညီမျှသောဘက်နှစ်ဘက်တို့သည် စတုဂံတစ်ခု၏ Perimeter ကို ဖွဲ့စည်းသည်။",
            correctBucketEn: "About Area/Perimeter",
            correctBucketMy: "ဧရိယာ/Perimeter အကြောင်း",
          ),
          SortingItem(
            id: "s2math-w8-sort-8",
            labelEn:
                "A logic puzzle uses step-by-step reasoning to solve for an unknown.",
            labelMy:
                "Logic ပဟေဠိတစ်ခုသည် မသိကိန်းတစ်ခုကို ဖြေရှင်းရန် အဆင့်ဆင့် ဆင်ခြင်တွေးခေါ်မှုကို အသုံးပြုသည်။",
            correctBucketEn: "About Formulas/Equations",
            correctBucketMy: "ဖော်မြူလာ/ညီမျှခြင်း အကြောင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w8-d4",
      dayNumber: 4,
      titleEn: "Reading: The Algebra Architect's Design",
      titleMy: "စာဖတ်ခြင်း - Algebra ဗိသုကာပညာရှင်၏ ဒီဇိုင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The Algebra Architect's Design",
        titleMy: "Algebra ဗိသုကာပညာရှင်၏ ဒီဇိုင်း",
        passageEn:
            "For the term's capstone project, Su Su, Thiri, and Mya were asked to design a small community reading room without knowing its final size in advance -- the exact dimensions would depend on how much land the school could secure, represented by an unknown x. Their design brief required the floor to be rectangular, with length (x + 3) metres and width 4 metres.\n\nMya started with the area: expanding 4(x + 3) gave 4x + 12 square metres. \"So whatever x turns out to be,\" she said, \"we can predict the flooring cost by substituting the real value in later.\" Thiri tackled the perimeter next, needed for the skirting board around the room's edge: 2(length + width) = 2((x + 3) + 4) = 2(x + 7) = 2x + 14 metres, factorised and expanded in a single step to check both matched.\n\nThe team's final challenge was a logic puzzle from their teacher: \"If the room's actual perimeter turns out to be 30 metres, what is x?\" Su Su set up the equation directly from their own formula: 2x + 14 = 30. Working backwards, she subtracted 14 from both sides to get 2x = 16, then divided by 2 to find x = 8. Checking it, she substituted x = 8 back into the original expressions: length = 11m, width = 4m, and perimeter = 2(11 + 4) = 30m, exactly matching. \"Every algebra skill from this whole term,\" Su Su said, \"expanding, factorising, formulas, and equations -- they're really just different tools for the same job: describing something before you know its exact size.\"",
        passageMy:
            "သင်တန်း၏ အထွတ်အထိပ်စီမံကိန်းအတွက် စုစု၊ သီရိနှင့် မြတို့သည် နောက်ဆုံးအရွယ်အစားကို ကြိုတင်မသိဘဲ ရပ်ရွာစာဖတ်ခန်းငယ်တစ်ခု ဒီဇိုင်းရေးဆွဲရန် တောင်းဆိုခံခဲ့ရသည် — အတိအကျ ချင်းအတိုင်းအတာသည် ကျောင်းက မည်မျှမြေယူနိုင်မည်ဆိုသည်ပေါ်တွင် မူတည်ပြီး ၎င်းကို မသိကိန်း x ဖြင့် ကိုယ်စားပြုသည်။ ၎င်းတို့၏ ဒီဇိုင်းလိုအပ်ချက်တွင် ကြမ်းပြင်သည် စတုဂံပုံသဏ္ဌာန်ရှိရမည်ဖြစ်ပြီး အလျား (x + 3) မီတာနှင့် အကျယ် 4 မီတာ ရှိရမည်ဖြစ်သည်။\n\nမြသည် ဧရိယာဖြင့် စတင်ခဲ့သည် — 4(x + 3) ကို ဖြန့်ချလိုက်ပါက စတုရန်းမီတာ 4x + 12 ရရှိသည်။ 'ဒါကြောင့် x က ဘယ်လိုပဲဖြစ်ဖြစ်' ဟု သူမက ပြောခဲ့သည်၊ 'နောက်ပိုင်း အမှန်တန်ဖိုးကို အစားထိုးလိုက်ရင် ကြမ်းခင်းကုန်ကျစရိတ်ကို ကြိုတင်ခန့်မှန်းနိုင်တယ်' ။ သီရိသည် ဒုတိယအနေဖြင့် Perimeter ကို ကိုင်တွယ်ခဲ့သည်၊ အခန်း၏ အနားပတ်လည် Skirting Board အတွက် လိုအပ်သည် — 2(အလျား + အကျယ်) = 2((x + 3) + 4) = 2(x + 7) = 2x + 14 မီတာ၊ ၎င်းကို Factorise ပြီးပုံစံနှင့် ဖြန့်ပြီးပုံစံ နှစ်ခုစလုံး တစ်ဆင့်တည်းဖြင့် ကိုက်ညီမကိုက်ညီ စစ်ဆေးခဲ့သည်။\n\nအဖွဲ့၏ နောက်ဆုံးစိန်ခေါ်မှုသည် ၎င်းတို့ ဆရာမ၏ Logic ပဟေဠိတစ်ခုဖြစ်သည် — 'အခန်း၏ အမှန်တကယ် Perimeter သည် 30 မီတာ ဖြစ်ပါက x မှာ အဘယ်နည်း' ။ စုစုသည် ၎င်းတို့ကိုယ်ပိုင် ဖော်မြူလာမှ တိုက်ရိုက် ညီမျှခြင်းကို တည်ဆောက်ခဲ့သည် — 2x + 14 = 30။ ပြောင်းပြန်လုပ်ဆောင်ရင်း ဘက်နှစ်ဘက်စလုံးမှ 14 ကို နုတ်ပြီး 2x = 16 ကို ရရှိကာ ထို့နောက် 2 ဖြင့်စား၍ x = 8 ကို ရှာတွေ့ခဲ့သည်။ စစ်ဆေးရန် သူမသည် x = 8 ကို မူလဖော်ပြချက်များထဲသို့ ပြန်အစားထိုးခဲ့သည် — အလျား = 11m, အကျယ် = 4m, Perimeter = 2(11 + 4) = 30m ဖြင့် အတိအကျ ကိုက်ညီခဲ့သည်။ 'ဒီသင်တန်းတစ်ခုလုံးမှ Algebra ကျွမ်းကျင်မှုတိုင်း' ဟု စုစုက ပြောခဲ့သည်၊ 'ဖြန့်ခြင်း၊ Factorise လုပ်ခြင်း၊ ဖော်မြူလာနှင့် ညီမျှခြင်းတို့ — ၎င်းတို့သည် အလုပ်တစ်ခုတည်းအတွက် ကွဲပြားသောကိရိယာများသာ ဖြစ်ကြတယ် — အရွယ်အစားအတိအကျ မသိမီ တစ်ခုခုကို ဖော်ပြခြင်းပါပဲ' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the room's area expression when expanded?",
            questionMy:
                "စာပိုဒ် ၂ အရ အခန်း၏ ဧရိယာဖော်ပြချက်ကို ဖြန့်ချလိုက်ပါက အဘယ်နည်း။",
            optionsEn: ["4x + 12", "4x + 3", "x + 7", "2x + 14"],
            optionsMy: ["4x + 12", "4x + 3", "x + 7", "2x + 14"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the perimeter formula Thiri derived?",
            questionMy:
                "စာပိုဒ် ၂ အရ သီရိ ဆင်းသက်ခဲ့သော Perimeter ဖော်မြူလာမှာ အဘယ်နည်း။",
            optionsEn: ["2x + 14", "4x + 12", "x + 7", "2x + 7"],
            optionsMy: ["2x + 14", "4x + 12", "x + 7", "2x + 7"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what value of x did Su Su find using the equation 2x + 14 = 30?",
            questionMy:
                "စာပိုဒ် ၃ အရ ညီမျှခြင်း 2x + 14 = 30 ကိုသုံး၍ စုစု x ၏ မည်သည့်တန်ဖိုးကို ရှာတွေ့ခဲ့သနည်း။",
            optionsEn: ["8", "16", "30", "14"],
            optionsMy: ["8", "16", "30", "14"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Su Su conclude about all the term's algebra skills?",
            questionMy:
                "စာပိုဒ် ၃ အရ သင်တန်း၏ Algebra ကျွမ်းကျင်မှုအားလုံးအကြောင်း စုစု မည်သို့ နိဂုံးချုပ်ခဲ့သနည်း။",
            optionsEn: [
              "They are different tools for describing something before you know its exact size",
              "They are completely unrelated to each other",
              "Only equations are ever actually useful",
              "None of them applied to the room design at all",
            ],
            optionsMy: [
              "အရွယ်အစားအတိအကျ မသိမီ တစ်ခုခုကို ဖော်ပြရန် ကွဲပြားသောကိရိယာများသာ ဖြစ်ကြောင်း",
              "တစ်ခုနှင့်တစ်ခု လုံးဝ မသက်ဆိုင်ကြောင်း",
              "ညီမျှခြင်းများသာ တကယ် အသုံးဝင်ကြောင်း",
              "အခန်းဒီဇိုင်းတွင် တစ်ခုမျှ လုံးဝ မသက်ဆိုင်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w8-d5",
      dayNumber: 5,
      titleEn: "Algebra Expansion Term Round-Up",
      titleMy: "Algebra Expansion သင်တန်း အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Expand 3(x + 5).",
          questionMy: "3(x + 5) ကို ဖြန့်ပါ။",
          optionsEn: ["3x + 15", "3x + 5", "x + 15", "3x + 8"],
          optionsMy: ["3x + 15", "3x + 5", "x + 15", "3x + 8"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Factorise 8x + 20.",
          questionMy: "8x + 20 ကို Factorise လုပ်ပါ။",
          optionsEn: ["4(2x + 5)", "4(2x + 20)", "8(x + 20)", "2(4x + 10)"],
          optionsMy: ["4(2x + 5)", "4(2x + 20)", "8(x + 20)", "2(4x + 10)"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "If A = l × w, l = 9, w = 3, what is A?",
          questionMy: "A = l × w, l = 9, w = 3 ဖြစ်ပါက A သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["27", "12", "6", "93"],
          optionsMy: ["27", "12", "6", "93"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Solve the equation 2x + 14 = 30 for x.",
          questionMy: "ညီမျှခြင်း 2x + 14 = 30 ကို x အတွက် ဖြေရှင်းပါ။",
          optionsEn: ["8", "16", "22", "44"],
          optionsMy: ["8", "16", "22", "44"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the Algebra Architect capstone, what did Su Su say algebra skills were really tools for?",
          questionMy:
              "Algebra ဗိသုကာပညာရှင် အထွတ်အထိပ်တွင် Algebra ကျွမ်းကျင်မှုများသည် အမှန်တကယ် မည်သည့်အရာအတွက် ကိရိယာများဖြစ်သည်ဟု စုစု ပြောခဲ့သနည်း။",
          optionsEn: [
            "Describing something before you know its exact size",
            "Only measuring rooms specifically",
            "Nothing useful at all",
            "Only calculating taxi fares",
          ],
          optionsMy: [
            "အရွယ်အစားအတိအကျ မသိမီ တစ်ခုခုကို ဖော်ပြရန်",
            "အခန်းများကို တိုင်းတာရန်သာ",
            "အသုံးဝင်သောအရာ မရှိကြောင်း",
            "တက္ကစီခများကိုသာ တွက်ချက်ရန်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary2MathematicsTerm2 = CourseTermDef(
  id: "course-secondary2-mathematics-t2",
  termNumber: 2,
  titleEn: "Algebra Expansion",
  titleMy: "Algebra တိုးချဲ့ခြင်း",
  certificateTitleEn: "Algebra Expansion",
  certificateTitleMy: "Algebra တိုးချဲ့ခြင်း",
  weeks: [
    _secondary2MathematicsWeek5,
    _secondary2MathematicsWeek6,
    _secondary2MathematicsWeek7,
    _secondary2MathematicsWeek8,
  ],
);
