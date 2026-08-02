const CourseWeekDef _secondary2MathematicsWeek29 = CourseWeekDef(
  id: "course-secondary2-mathematics-w29",
  weekNumber: 29,
  titleEn: "Area of 2D Shapes",
  titleMy: "၂-ဖက်မြင်ပုံများ၏ ဧရိယာ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w29-d1",
      dayNumber: 1,
      titleEn: "Parallelograms, Trapeziums and Circles",
      titleMy: "ဥအလားကွင်းများ၊ လက်ဖက်ရွက်ပုံများနှင့် စက်ဝိုင်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A parallelogram has a base of 8 cm and a height of 5 cm. What is its area?",
          questionMy:
              "ဥအလားကွင်းတစ်ခုသည် အခြေ 8 cm နှင့် အမြင့် 5 cm ရှိပါသည်။ ဧရိယာမှာ အဘယ်နည်း။",
          optionsEn: ["40 cm²", "26 cm²", "13 cm²", "20 cm²"],
          optionsMy: ["40 cm²", "26 cm²", "13 cm²", "20 cm²"],
          correctIndex: 0,
          hintsEn: [
            "Area of a parallelogram = base × height.",
            "8 × 5 = 40 cm².",
          ],
          hintsMy: [
            "ဥအလားကွင်း၏ ဧရိယာ = အခြေ × အမြင့်။",
            "8 × 5 = 40 cm² ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A trapezium has parallel sides of 6 cm and 10 cm, and a height of 4 cm. What is its area?",
          questionMy:
              "လက်ဖက်ရွက်ပုံတစ်ခုသည် ပြိုင်ဘက် 6 cm နှင့် 10 cm၊ အမြင့် 4 cm ရှိပါသည်။ ဧရိယာမှာ အဘယ်နည်း။",
          optionsEn: ["32 cm²", "40 cm²", "16 cm²", "64 cm²"],
          optionsMy: ["32 cm²", "40 cm²", "16 cm²", "64 cm²"],
          correctIndex: 0,
          hintsEn: [
            "Area of a trapezium = ½ × (sum of parallel sides) × height.",
            "½ × (6 + 10) × 4 = ½ × 16 × 4 = 32 cm².",
          ],
          hintsMy: [
            "လက်ဖက်ရွက်ပုံ၏ ဧရိယာ = ½ × (ပြိုင်ဘက်နှစ်ဖက် ပေါင်းလဒ်) × အမြင့်။",
            "½ × (6 + 10) × 4 = ½ × 16 × 4 = 32 cm² ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A circle has a radius of 7 cm. Using π ≈ 3.14, what is its area (to the nearest whole number)?",
          questionMy:
              "စက်ဝိုင်းတစ်ခု၏ အချင်းဝက်သည် 7 cm ဖြစ်ပါသည်။ π ≈ 3.14 ကို အသုံးပြု၍ ဧရိယာမှာ အဘယ်နည်း (အနီးဆုံးကိန်းပြည့်)။",
          optionsEn: ["154 cm²", "44 cm²", "22 cm²", "49 cm²"],
          optionsMy: ["154 cm²", "44 cm²", "22 cm²", "49 cm²"],
          correctIndex: 0,
          hintsEn: [
            "Area of a circle = π × radius².",
            "3.14 × 7 × 7 = 3.14 × 49 ≈ 154 cm².",
          ],
          hintsMy: [
            "စက်ဝိုင်း၏ ဧရိယာ = π × အချင်းဝက်²။",
            "3.14 × 7 × 7 = 3.14 × 49 ≈ 154 cm² ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A parallelogram has an area of 60 cm² and a base of 12 cm. What is its height?",
          questionMy:
              "ဥအလားကွင်းတစ်ခု၏ ဧရိယာသည် 60 cm² ဖြစ်ပြီး အခြေ 12 cm ရှိပါသည်။ အမြင့်မှာ အဘယ်နည်း။",
          optionsEn: ["5 cm", "6 cm", "48 cm", "72 cm"],
          optionsMy: ["5 cm", "6 cm", "48 cm", "72 cm"],
          correctIndex: 0,
          hintsEn: ["Height = Area ÷ base.", "60 ÷ 12 = 5 cm."],
          hintsMy: ["အမြင့် = ဧရိယာ ÷ အခြေ။", "60 ÷ 12 = 5 cm ဖြစ်သည်။"],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w29-d2",
      dayNumber: 2,
      titleEn: "2D Area Vocabulary",
      titleMy: "၂-ဖက်မြင် ဧရိယာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2m-w29-dm1",
          termEn: "Parallelogram",
          termMy: "ဥအလားကွင်း (Parallelogram)",
          matchEn: "A four-sided shape with two pairs of parallel sides",
          matchMy: "ပြိုင်ဘက်နှစ်စုံရှိသော ဘက်လေးဘက်ပုံ",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2m-w29-dm2",
          termEn: "Trapezium",
          termMy: "လက်ဖက်ရွက်ပုံ (Trapezium)",
          matchEn: "A four-sided shape with exactly one pair of parallel sides",
          matchMy: "ပြိုင်ဘက်တစ်စုံသာရှိသော ဘက်လေးဘက်ပုံ",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2m-w29-dm3",
          termEn: "Pi (π)",
          termMy: "ပိုင် (π)",
          matchEn: "A constant approximately equal to 3.14, used for circles",
          matchMy: "စက်ဝိုင်းများအတွက် အသုံးပြုသည့် 3.14 ခန့်ညီမျှသော ကိန်းသေ",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2m-w29-dm4",
          termEn: "Radius",
          termMy: "အချင်းဝက် (Radius)",
          matchEn: "The distance from the centre of a circle to its edge",
          matchMy: "စက်ဝိုင်း၏ဗဟိုမှ အနားသို့ အကွာအဝေး",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2m-w29-dm5",
          termEn: "Area",
          termMy: "ဧရိယာ (Area)",
          matchEn: "The amount of surface a 2D shape covers",
          matchMy: "၂-ဖက်မြင်ပုံတစ်ခု လွှမ်းခြုံသော မျက်နှာပြင်ပမာဏ",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2m-w29-dm6",
          termEn: "Parallel Sides",
          termMy: "ပြိုင်ဘက်များ (Parallel Sides)",
          matchEn: "Sides that never meet and stay the same distance apart",
          matchMy: "တွေ့ခြင်းမရှိဘဲ အကွာအဝေးတူညီစွာ ရှိနေသော ဘက်များ",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w29-d3",
      dayNumber: 3,
      titleEn: "Sorting Shape Formulas",
      titleMy: "ပုံသဏ္ဌာန်ဖော်မြူလာများကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Uses Base and Height", "Uses Pi (π)"],
        bucketsMy: ["အခြေနှင့်အမြင့် သုံးသည်", "ပိုင် (π) သုံးသည်"],
        items: [
          SortingItem(
            id: "s2m-w29-sort1",
            labelEn: "Parallelogram area",
            labelMy: "ဥအလားကွင်း ဧရိယာ",
            correctBucketEn: "Uses Base and Height",
            correctBucketMy: "အခြေနှင့်အမြင့် သုံးသည်",
          ),
          SortingItem(
            id: "s2m-w29-sort2",
            labelEn: "Circle area",
            labelMy: "စက်ဝိုင်း ဧရိယာ",
            correctBucketEn: "Uses Pi (π)",
            correctBucketMy: "ပိုင် (π) သုံးသည်",
          ),
          SortingItem(
            id: "s2m-w29-sort3",
            labelEn: "Circle circumference",
            labelMy: "စက်ဝိုင်း အနားပတ်လျား",
            correctBucketEn: "Uses Pi (π)",
            correctBucketMy: "ပိုင် (π) သုံးသည်",
          ),
          SortingItem(
            id: "s2m-w29-sort4",
            labelEn: "Trapezium area",
            labelMy: "လက်ဖက်ရွက်ပုံ ဧရိယာ",
            correctBucketEn: "Uses Base and Height",
            correctBucketMy: "အခြေနှင့်အမြင့် သုံးသည်",
          ),
          SortingItem(
            id: "s2m-w29-sort5",
            labelEn: "Radius squared",
            labelMy: "အချင်းဝက် စတုရန်း",
            correctBucketEn: "Uses Pi (π)",
            correctBucketMy: "ပိုင် (π) သုံးသည်",
          ),
          SortingItem(
            id: "s2m-w29-sort6",
            labelEn: "Base × Height",
            labelMy: "အခြေ × အမြင့်",
            correctBucketEn: "Uses Base and Height",
            correctBucketMy: "အခြေနှင့်အမြင့် သုံးသည်",
          ),
          SortingItem(
            id: "s2m-w29-sort7",
            labelEn: "Diameter × π",
            labelMy: "အချင်းအလျား × π",
            correctBucketEn: "Uses Pi (π)",
            correctBucketMy: "ပိုင် (π) သုံးသည်",
          ),
          SortingItem(
            id: "s2m-w29-sort8",
            labelEn: "Sum of parallel sides × ½ height",
            labelMy: "ပြိုင်ဘက်များပေါင်းလဒ် × ½ အမြင့်",
            correctBucketEn: "Uses Base and Height",
            correctBucketMy: "အခြေနှင့်အမြင့် သုံးသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w29-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiri's Garden Plan",
      titleMy: "စာဖတ်ခြင်း — သီရိ၏ ဥယျာဉ်စီမံကိန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri's Garden Plan",
        titleMy: "သီရိ၏ ဥယျာဉ်စီမံကိန်း",
        passageEn:
            "Thiri was designing a new garden for her family's yard. She wanted three sections: a parallelogram-shaped vegetable patch with a base of 6 m and a height of 4 m, giving an area of 6 × 4 = 24 m². Next to it, she planned a trapezium-shaped flower bed with parallel sides of 3 m and 5 m and a height of 2 m, giving an area of ½ × (3 + 5) × 2 = 8 m². Finally, she wanted a circular pond with a radius of 2 m. Using π ≈ 3.14, the pond's area was 3.14 × 2 × 2 = 12.56 m², which she rounded to about 12.6 m². Adding all three sections together, Thiri's garden would cover approximately 24 + 8 + 12.6 = 44.6 m² in total.",
        passageMy:
            "သီရိသည် သူမ၏မိသားစုအိမ်ဝင်းအတွက် ဥယျာဉ်သစ်တစ်ခု ဒီဇိုင်းဆွဲနေခဲ့သည်။ သူမသည် အပိုင်းသုံးပိုင်း လိုချင်ခဲ့သည် — ဥအလားကွင်းပုံစံ ဟင်းသီးဟင်းရွက်ခင်းတစ်ခု အခြေ 6 m နှင့် အမြင့် 4 m ရှိပြီး ဧရိယာ 6 × 4 = 24 m² ရရှိသည်။ ၎င်းအနီးတွင် လက်ဖက်ရွက်ပုံစံ ပန်းခင်းတစ်ခုကို ပြိုင်ဘက် 3 m နှင့် 5 m၊ အမြင့် 2 m ဖြင့် စီစဉ်ထားပြီး ဧရိယာ ½ × (3 + 5) × 2 = 8 m² ရရှိသည်။ နောက်ဆုံးတွင် အချင်းဝက် 2 m ရှိသော စက်ဝိုင်းပုံ ရေကန်တစ်ခု လိုချင်ခဲ့သည်။ π ≈ 3.14 ကို အသုံးပြု၍ ရေကန်၏ ဧရိယာသည် 3.14 × 2 × 2 = 12.56 m² ဖြစ်ပြီး၊ သူမသည် ခန့်မှန်း 12.6 m² အဖြစ် ခန့်မှန်းခဲ့သည်။ အပိုင်းသုံးပိုင်းလုံးကို ပေါင်းလိုက်ပါက သီရိ၏ ဥယျာဉ်သည် စုစုပေါင်း ခန့်မှန်း 24 + 8 + 12.6 = 44.6 m² ဖုံးလွှမ်းမည်ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What was the area of the vegetable patch?",
            questionMy: "ဟင်းသီးဟင်းရွက်ခင်း၏ ဧရိယာမှာ အဘယ်နည်း။",
            optionsEn: ["24 m²", "8 m²", "12.6 m²", "44.6 m²"],
            optionsMy: ["24 m²", "8 m²", "12.6 m²", "44.6 m²"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What shape was the flower bed?",
            questionMy: "ပန်းခင်းသည် မည်သည့်ပုံသဏ္ဌာန် ဖြစ်ခဲ့သနည်း။",
            optionsEn: ["Trapezium", "Parallelogram", "Circle", "Triangle"],
            optionsMy: ["လက်ဖက်ရွက်ပုံ", "ဥအလားကွင်း", "စက်ဝိုင်း", "တြိဂံ"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What was the approximate area of the circular pond?",
            questionMy: "စက်ဝိုင်းပုံရေကန်၏ ခန့်မှန်းဧရိယာမှာ အဘယ်နည်း။",
            optionsEn: ["12.6 m²", "24 m²", "8 m²", "6.28 m²"],
            optionsMy: ["12.6 m²", "24 m²", "8 m²", "6.28 m²"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What was the total approximate area of Thiri's whole garden?",
            questionMy:
                "သီရိ၏ ဥယျာဉ်တစ်ခုလုံး၏ စုစုပေါင်း ခန့်မှန်းဧရိယာမှာ အဘယ်နည်း။",
            optionsEn: ["44.6 m²", "24 m²", "32 m²", "20.6 m²"],
            optionsMy: ["44.6 m²", "24 m²", "32 m²", "20.6 m²"],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w29-d5",
      dayNumber: 5,
      titleEn: "Area of 2D Shapes Recap Quiz",
      titleMy: "၂-ဖက်မြင်ပုံများ ဧရိယာ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The area of a parallelogram is calculated as...",
          questionMy: "ဥအလားကွင်း၏ ဧရိယာကို မည်သို့ တွက်ချက်သနည်း...",
          optionsEn: [
            "Base × Height",
            "½ × Base × Height",
            "Base + Height",
            "Base ÷ Height",
          ],
          optionsMy: [
            "အခြေ × အမြင့်",
            "½ × အခြေ × အမြင့်",
            "အခြေ + အမြင့်",
            "အခြေ ÷ အမြင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The area of a circle is calculated as...",
          questionMy: "စက်ဝိုင်း၏ ဧရိယာကို မည်သို့ တွက်ချက်သနည်း...",
          optionsEn: [
            "π × radius²",
            "π × diameter",
            "2 × π × radius",
            "radius²",
          ],
          optionsMy: [
            "π × အချင်းဝက်²",
            "π × အချင်းအလျား",
            "2 × π × အချင်းဝက်",
            "အချင်းဝက်²",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A trapezium has parallel sides of 4 cm and 8 cm, and a height of 3 cm. What is its area?",
          questionMy:
              "လက်ဖက်ရွက်ပုံတစ်ခုသည် ပြိုင်ဘက် 4 cm နှင့် 8 cm၊ အမြင့် 3 cm ရှိပါသည်။ ဧရိယာမှာ အဘယ်နည်း။",
          optionsEn: ["18 cm²", "24 cm²", "12 cm²", "36 cm²"],
          optionsMy: ["18 cm²", "24 cm²", "12 cm²", "36 cm²"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A circle has a radius of 5 cm. Using π ≈ 3.14, what is its area?",
          questionMy:
              "စက်ဝိုင်းတစ်ခု၏ အချင်းဝက်သည် 5 cm ဖြစ်ပါသည်။ π ≈ 3.14 ကို အသုံးပြု၍ ဧရိယာမှာ အဘယ်နည်း။",
          optionsEn: ["78.5 cm²", "31.4 cm²", "15.7 cm²", "25 cm²"],
          optionsMy: ["78.5 cm²", "31.4 cm²", "15.7 cm²", "25 cm²"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Thiri's garden story, what shape was the vegetable patch?",
          questionMy:
              "သီရိ၏ ဥယျာဉ်ဇာတ်လမ်းတွင် ဟင်းသီးဟင်းရွက်ခင်းသည် မည်သည့်ပုံသဏ္ဌာန် ဖြစ်ခဲ့သနည်း။",
          optionsEn: ["Parallelogram", "Trapezium", "Circle", "Square"],
          optionsMy: ["ဥအလားကွင်း", "လက်ဖက်ရွက်ပုံ", "စက်ဝိုင်း", "စတုရန်း"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek30 = CourseWeekDef(
  id: "course-secondary2-mathematics-w30",
  weekNumber: 30,
  titleEn: "Volume and Surface Area",
  titleMy: "ထုထည် နှင့် မျက်နှာပြင်ဧရိယာ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w30-d1",
      dayNumber: 1,
      titleEn: "Cuboids, Prisms and Cylinders",
      titleMy: "ကျုပ်ကွက်များ၊ ပရစ်ဇမ်များနှင့် ဆလင်ဒါများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A cuboid has length 5 cm, width 4 cm, and height 3 cm. What is its volume?",
          questionMy:
              "ကျုပ်ကွက်တစ်ခုသည် အလျား 5 cm၊ အကျယ် 4 cm နှင့် အမြင့် 3 cm ရှိပါသည်။ ထုထည်မှာ အဘယ်နည်း။",
          optionsEn: ["60 cm³", "12 cm³", "20 cm³", "47 cm³"],
          optionsMy: ["60 cm³", "12 cm³", "20 cm³", "47 cm³"],
          correctIndex: 0,
          hintsEn: [
            "Volume of a cuboid = length × width × height.",
            "5 × 4 × 3 = 60 cm³.",
          ],
          hintsMy: [
            "ကျုပ်ကွက်၏ ထုထည် = အလျား × အကျယ် × အမြင့်။",
            "5 × 4 × 3 = 60 cm³ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A triangular prism has a cross-sectional area of 12 cm² and a length of 10 cm. What is its volume?",
          questionMy:
              "တြိဂံပရစ်ဇမ်တစ်ခု၏ ဖြတ်ကျယ်ဧရိယာသည် 12 cm² ဖြစ်ပြီး အလျား 10 cm ရှိပါသည်။ ထုထည်မှာ အဘယ်နည်း။",
          optionsEn: ["120 cm³", "22 cm³", "1.2 cm³", "60 cm³"],
          optionsMy: ["120 cm³", "22 cm³", "1.2 cm³", "60 cm³"],
          correctIndex: 0,
          hintsEn: [
            "Volume of a prism = cross-sectional area × length.",
            "12 × 10 = 120 cm³.",
          ],
          hintsMy: [
            "ပရစ်ဇမ်၏ ထုထည် = ဖြတ်ကျယ်ဧရိယာ × အလျား။",
            "12 × 10 = 120 cm³ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A cylinder has a radius of 3 cm and a height of 10 cm. Using π ≈ 3.14, what is its volume (to the nearest whole number)?",
          questionMy:
              "ဆလင်ဒါတစ်ခု၏ အချင်းဝက်သည် 3 cm နှင့် အမြင့် 10 cm ဖြစ်ပါသည်။ π ≈ 3.14 ကို အသုံးပြု၍ ထုထည်မှာ အဘယ်နည်း (အနီးဆုံးကိန်းပြည့်)။",
          optionsEn: ["283 cm³", "94 cm³", "30 cm³", "188 cm³"],
          optionsMy: ["283 cm³", "94 cm³", "30 cm³", "188 cm³"],
          correctIndex: 0,
          hintsEn: [
            "Volume of a cylinder = π × radius² × height.",
            "3.14 × 3 × 3 × 10 = 3.14 × 9 × 10 = 282.6 ≈ 283 cm³.",
          ],
          hintsMy: [
            "ဆလင်ဒါ၏ ထုထည် = π × အချင်းဝက်² × အမြင့်။",
            "3.14 × 3 × 3 × 10 = 3.14 × 9 × 10 = 282.6 ≈ 283 cm³ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A cuboid has dimensions 2 cm × 3 cm × 4 cm. What is its total surface area?",
          questionMy:
              "ကျုပ်ကွက်တစ်ခု၏ အတိုင်းအတာသည် 2 cm × 3 cm × 4 cm ဖြစ်ပါသည်။ စုစုပေါင်း မျက်နှာပြင်ဧရိယာမှာ အဘယ်နည်း။",
          optionsEn: ["52 cm²", "24 cm²", "9 cm²", "26 cm²"],
          optionsMy: ["52 cm²", "24 cm²", "9 cm²", "26 cm²"],
          correctIndex: 0,
          hintsEn: [
            "Surface area = 2 × (length × width + width × height + length × height).",
            "2 × (2×3 + 3×4 + 2×4) = 2 × (6 + 12 + 8) = 2 × 26 = 52 cm².",
          ],
          hintsMy: [
            "မျက်နှာပြင်ဧရိယာ = 2 × (အလျား × အကျယ် + အကျယ် × အမြင့် + အလျား × အမြင့်)။",
            "2 × (2×3 + 3×4 + 2×4) = 2 × (6 + 12 + 8) = 2 × 26 = 52 cm² ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w30-d2",
      dayNumber: 2,
      titleEn: "Volume and Surface Area Vocabulary",
      titleMy: "ထုထည်နှင့် မျက်နှာပြင်ဧရိယာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2m-w30-dm1",
          termEn: "Cuboid",
          termMy: "ကျုပ်ကွက် (Cuboid)",
          matchEn: "A 3D shape with six rectangular faces",
          matchMy: "စတုဂံမျက်နှာခြောက်ခုရှိသော ၃-ဖက်မြင်ပုံ",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2m-w30-dm2",
          termEn: "Prism",
          termMy: "ပရစ်ဇမ် (Prism)",
          matchEn: "A 3D shape with the same cross-section along its length",
          matchMy: "အလျားတစ်လျှောက် ဖြတ်ကျယ်တူညီသော ၃-ဖက်မြင်ပုံ",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2m-w30-dm3",
          termEn: "Cylinder",
          termMy: "ဆလင်ဒါ (Cylinder)",
          matchEn:
              "A 3D shape with two circular ends joined by a curved surface",
          matchMy:
              "ကွေးသော မျက်နှာပြင်ဖြင့် ချိတ်ဆက်ထားသော စက်ဝိုင်းအဖျားနှစ်ခုရှိသော ၃-ဖက်မြင်ပုံ",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2m-w30-dm4",
          termEn: "Volume",
          termMy: "ထုထည် (Volume)",
          matchEn: "The amount of space a 3D shape occupies",
          matchMy: "၃-ဖက်မြင်ပုံတစ်ခု နေရာယူထားသော ပမာဏ",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2m-w30-dm5",
          termEn: "Surface Area",
          termMy: "မျက်နှာပြင်ဧရိယာ (Surface Area)",
          matchEn: "The total area of all the outer faces of a 3D shape",
          matchMy: "၃-ဖက်မြင်ပုံတစ်ခု၏ အပြင်ဘက်မျက်နှာများ၏ စုစုပေါင်းဧရိယာ",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2m-w30-dm6",
          termEn: "Cross-Section",
          termMy: "ဖြတ်ကျယ် (Cross-Section)",
          matchEn: "The flat shape formed when a 3D object is sliced through",
          matchMy:
              "၃-ဖက်မြင်အရာဝတ္ထုတစ်ခုကို ဖြတ်ခြင်းအားဖြင့် ရရှိသော ပြားညီပုံသဏ္ဌာန်",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w30-d3",
      dayNumber: 3,
      titleEn: "Sorting Volume and Surface Area Formulas",
      titleMy: "ထုထည်နှင့် မျက်နှာပြင်ဧရိယာ ဖော်မြူလာများကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Volume Formula", "Surface Area Formula"],
        bucketsMy: ["ထုထည် ဖော်မြူလာ", "မျက်နှာပြင်ဧရိယာ ဖော်မြူလာ"],
        items: [
          SortingItem(
            id: "s2m-w30-sort1",
            labelEn: "Length × Width × Height",
            labelMy: "အလျား × အကျယ် × အမြင့်",
            correctBucketEn: "Volume Formula",
            correctBucketMy: "ထုထည် ဖော်မြူလာ",
          ),
          SortingItem(
            id: "s2m-w30-sort2",
            labelEn: "Cross-sectional area × Length",
            labelMy: "ဖြတ်ကျယ်ဧရိယာ × အလျား",
            correctBucketEn: "Volume Formula",
            correctBucketMy: "ထုထည် ဖော်မြူလာ",
          ),
          SortingItem(
            id: "s2m-w30-sort3",
            labelEn: "π × radius² × height",
            labelMy: "π × အချင်းဝက်² × အမြင့်",
            correctBucketEn: "Volume Formula",
            correctBucketMy: "ထုထည် ဖော်မြူလာ",
          ),
          SortingItem(
            id: "s2m-w30-sort4",
            labelEn: "Sum of all face areas",
            labelMy: "မျက်နှာအားလုံး၏ ဧရိယာပေါင်းလဒ်",
            correctBucketEn: "Surface Area Formula",
            correctBucketMy: "မျက်နှာပြင်ဧရိယာ ဖော်မြူလာ",
          ),
          SortingItem(
            id: "s2m-w30-sort5",
            labelEn: "2 × (lw + wh + lh)",
            labelMy: "2 × (lw + wh + lh)",
            correctBucketEn: "Surface Area Formula",
            correctBucketMy: "မျက်နှာပြင်ဧရိယာ ဖော်မြူလာ",
          ),
          SortingItem(
            id: "s2m-w30-sort6",
            labelEn: "Measured in cm³",
            labelMy: "cm³ ဖြင့် တိုင်းတာသည်",
            correctBucketEn: "Volume Formula",
            correctBucketMy: "ထုထည် ဖော်မြူလာ",
          ),
          SortingItem(
            id: "s2m-w30-sort7",
            labelEn: "Measured in cm²",
            labelMy: "cm² ဖြင့် တိုင်းတာသည်",
            correctBucketEn: "Surface Area Formula",
            correctBucketMy: "မျက်နှာပြင်ဧရိယာ ဖော်မြူလာ",
          ),
          SortingItem(
            id: "s2m-w30-sort8",
            labelEn: "Curved surface + two circular ends",
            labelMy: "ကွေးသောမျက်နှာပြင် + စက်ဝိုင်းအဖျားနှစ်ခု",
            correctBucketEn: "Surface Area Formula",
            correctBucketMy: "မျက်နှာပြင်ဧရိယာ ဖော်မြူလာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w30-d4",
      dayNumber: 4,
      titleEn: "Reading: Mya's Water Tank",
      titleMy: "စာဖတ်ခြင်း — မြ၏ ရေတိုင်ကီ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Mya's Water Tank",
        titleMy: "မြ၏ ရေတိုင်ကီ",
        passageEn:
            "Mya's family needed a new water tank for their rooftop garden. She compared two designs. The first was a cuboid tank measuring 2 m long, 1 m wide, and 1.5 m high, giving a volume of 2 × 1 × 1.5 = 3 m³. The second was a cylindrical tank with a radius of 0.8 m and a height of 1.5 m. Using π ≈ 3.14, its volume was 3.14 × 0.8 × 0.8 × 1.5 = 3.0144 m³, almost the same as the cuboid. Mya then calculated the surface area of the cuboid tank to estimate how much material was needed: 2 × (2×1 + 1×1.5 + 2×1.5) = 2 × (2 + 1.5 + 3) = 2 × 6.5 = 13 m². Since both tanks held almost the same amount of water, Mya chose the cylindrical design because it needed less material to build, showing how shape affects efficiency even when volume stays the same.",
        passageMy:
            "မြ၏ မိသားစုသည် ၎င်းတို့၏ အမိုးပေါ်ဥယျာဉ်အတွက် ရေတိုင်ကီသစ်တစ်ခု လိုအပ်ခဲ့သည်။ သူမသည် ဒီဇိုင်းနှစ်မျိုးကို နှိုင်းယှဉ်ခဲ့သည်။ ပထမတစ်ခုသည် ကျုပ်ကွက်ပုံစံတိုင်ကီ 2 m ရှည်၊ 1 m ကျယ်၊ 1.5 m မြင့်ရှိပြီး ထုထည် 2 × 1 × 1.5 = 3 m³ ရရှိသည်။ ဒုတိယတစ်ခုသည် ဆလင်ဒါပုံစံတိုင်ကီ အချင်းဝက် 0.8 m နှင့် အမြင့် 1.5 m ရှိသည်။ π ≈ 3.14 ကို အသုံးပြု၍ ၎င်း၏ ထုထည်သည် 3.14 × 0.8 × 0.8 × 1.5 = 3.0144 m³ ဖြစ်ပြီး ကျုပ်ကွက်နှင့် နီးပါးတူညီသည်။ ထို့နောက် မြသည် လိုအပ်သော ပစ္စည်းပမာဏကို ခန့်မှန်းရန် ကျုပ်ကွက်တိုင်ကီ၏ မျက်နှာပြင်ဧရိယာကို တွက်ချက်ခဲ့သည် — 2 × (2×1 + 1×1.5 + 2×1.5) = 2 × (2 + 1.5 + 3) = 2 × 6.5 = 13 m²။ တိုင်ကီနှစ်ခုစလုံးသည် ရေပမာဏ နီးပါးတူညီစွာ ဆံ့ခဲ့သောကြောင့် မြသည် ဆလင်ဒါဒီဇိုင်းကို ရွေးချယ်ခဲ့သည် — အကြောင်းမှာ တည်ဆောက်ရန် ပစ္စည်းနည်းနည်းသာ လိုအပ်ခဲ့သောကြောင့်ဖြစ်ပြီး၊ ထုထည်တူညီနေသော်လည်း ပုံသဏ္ဌာန်သည် ထိရောက်မှုကို မည်သို့ သက်ရောက်စေသည်ကို ပြသသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What was the volume of the cuboid tank?",
            questionMy: "ကျုပ်ကွက်တိုင်ကီ၏ ထုထည်မှာ အဘယ်နည်း။",
            optionsEn: ["3 m³", "13 m³", "3.0144 m³", "6.5 m³"],
            optionsMy: ["3 m³", "13 m³", "3.0144 m³", "6.5 m³"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What was the surface area of the cuboid tank?",
            questionMy: "ကျုပ်ကွက်တိုင်ကီ၏ မျက်နှာပြင်ဧရိယာမှာ အဘယ်နည်း။",
            optionsEn: ["13 m²", "3 m²", "6.5 m²", "26 m²"],
            optionsMy: ["13 m²", "3 m²", "6.5 m²", "26 m²"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Which tank shape did Mya finally choose?",
            questionMy:
                "မြသည် နောက်ဆုံးတွင် မည်သည့်တိုင်ကီပုံသဏ္ဌာန်ကို ရွေးချယ်ခဲ့သနည်း။",
            optionsEn: ["Cylindrical", "Cuboid", "Neither", "Both equally"],
            optionsMy: [
              "ဆလင်ဒါပုံစံ",
              "ကျုပ်ကွက်ပုံစံ",
              "မည်သည့်တစ်ခုမျှမဟုတ်",
              "နှစ်ခုစလုံးအညီအမျှ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Why did Mya choose that tank design?",
            questionMy:
                "မြသည် အဘယ်ကြောင့် ထိုတိုင်ကီဒီဇိုင်းကို ရွေးချယ်ခဲ့သနည်း။",
            optionsEn: [
              "It needed less material despite holding almost the same volume",
              "It held much more water",
              "It was cheaper to paint",
              "It was taller",
            ],
            optionsMy: [
              "ထုထည်နီးပါးတူညီသော်လည်း ပစ္စည်းနည်းနည်းသာ လိုအပ်သောကြောင့်",
              "ရေများစွာ ပိုမိုဆံ့သောကြောင့်",
              "ဆေးသုတ်ရန် ပိုချိုသာသောကြောင့်",
              "ပိုမြင့်သောကြောင့်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w30-d5",
      dayNumber: 5,
      titleEn: "Volume and Surface Area Recap Quiz",
      titleMy: "ထုထည်နှင့် မျက်နှာပြင်ဧရိယာ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The volume of a cuboid is calculated as...",
          questionMy: "ကျုပ်ကွက်၏ ထုထည်ကို မည်သို့ တွက်ချက်သနည်း...",
          optionsEn: [
            "Length × Width × Height",
            "Length + Width + Height",
            "2 × (Length + Width)",
            "Length × Width",
          ],
          optionsMy: [
            "အလျား × အကျယ် × အမြင့်",
            "အလျား + အကျယ် + အမြင့်",
            "2 × (အလျား + အကျယ်)",
            "အလျား × အကျယ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The volume of a cylinder is calculated as...",
          questionMy: "ဆလင်ဒါ၏ ထုထည်ကို မည်သို့ တွက်ချက်သနည်း...",
          optionsEn: [
            "π × radius² × height",
            "2 × π × radius",
            "π × radius²",
            "radius × height",
          ],
          optionsMy: [
            "π × အချင်းဝက်² × အမြင့်",
            "2 × π × အချင်းဝက်",
            "π × အချင်းဝက်²",
            "အချင်းဝက် × အမြင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A cuboid has length 6 cm, width 2 cm, and height 5 cm. What is its volume?",
          questionMy:
              "ကျုပ်ကွက်တစ်ခုသည် အလျား 6 cm၊ အကျယ် 2 cm နှင့် အမြင့် 5 cm ရှိပါသည်။ ထုထည်မှာ အဘယ်နည်း။",
          optionsEn: ["60 cm³", "13 cm³", "30 cm³", "17 cm³"],
          optionsMy: ["60 cm³", "13 cm³", "30 cm³", "17 cm³"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A prism has a cross-sectional area of 8 cm² and length 6 cm. What is its volume?",
          questionMy:
              "ပရစ်ဇမ်တစ်ခု၏ ဖြတ်ကျယ်ဧရိယာသည် 8 cm² ဖြစ်ပြီး အလျား 6 cm ရှိပါသည်။ ထုထည်မှာ အဘယ်နည်း။",
          optionsEn: ["48 cm³", "14 cm³", "1.33 cm³", "24 cm³"],
          optionsMy: ["48 cm³", "14 cm³", "1.33 cm³", "24 cm³"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Mya's water tank story, which shape needed less material despite a similar volume?",
          questionMy:
              "မြ၏ ရေတိုင်ကီဇာတ်လမ်းတွင် ထုထည်ဆင်တူသော်လည်း မည်သည့်ပုံသဏ္ဌာန်က ပစ္စည်းနည်းနည်းသာ လိုအပ်ခဲ့သနည်း။",
          optionsEn: [
            "Cylinder",
            "Cuboid",
            "Both needed the same",
            "Neither was calculated",
          ],
          optionsMy: [
            "ဆလင်ဒါ",
            "ကျုပ်ကွက်",
            "နှစ်ခုစလုံး တူညီစွာ လိုအပ်သည်",
            "မည်သည့်တစ်ခုမျှ မတွက်ချက်ခဲ့ချေ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek31 = CourseWeekDef(
  id: "course-secondary2-mathematics-w31",
  weekNumber: 31,
  titleEn: "Enlargement",
  titleMy: "ပုံချဲ့ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w31-d1",
      dayNumber: 1,
      titleEn: "Scale Factors and Centres of Enlargement",
      titleMy: "အချိုးကိန်းများနှင့် ပုံချဲ့ခြင်းဗဟိုမှတ်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A shape has a side of 4 cm. It is enlarged by a scale factor of 3. What is the new side length?",
          questionMy:
              "ပုံသဏ္ဌာန်တစ်ခု၏ ဘက်တစ်ဘက်သည် 4 cm ရှိပါသည်။ အချိုးကိန်း 3 ဖြင့် ချဲ့ထားပါသည်။ ဘက်အသစ်အလျားမှာ အဘယ်နည်း။",
          optionsEn: ["12 cm", "7 cm", "1.33 cm", "43 cm"],
          optionsMy: ["12 cm", "7 cm", "1.33 cm", "43 cm"],
          correctIndex: 0,
          hintsEn: [
            "New length = original length × scale factor.",
            "4 × 3 = 12 cm.",
          ],
          hintsMy: [
            "အလျားအသစ် = မူလအလျား × အချိုးကိန်း။",
            "4 × 3 = 12 cm ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A shape is enlarged by a scale factor of ½. If the original side was 10 cm, what is the new side length?",
          questionMy:
              "ပုံသဏ္ဌာန်တစ်ခုကို အချိုးကိန်း ½ ဖြင့် ချဲ့ထားပါသည်။ မူလဘက် 10 cm ဖြစ်ပါက ဘက်အသစ်အလျားမှာ အဘယ်နည်း။",
          optionsEn: ["5 cm", "20 cm", "10.5 cm", "9.5 cm"],
          optionsMy: ["5 cm", "20 cm", "10.5 cm", "9.5 cm"],
          correctIndex: 0,
          hintsEn: [
            "A scale factor between 0 and 1 makes the shape smaller.",
            "10 × ½ = 5 cm.",
          ],
          hintsMy: [
            "0 နှင့် 1 ကြားရှိ အချိုးကိန်းသည် ပုံသဏ္ဌာန်ကို ငယ်စေသည်။",
            "10 × ½ = 5 cm ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What does the centre of enlargement determine?",
          questionMy: "ပုံချဲ့ခြင်းဗဟိုမှတ်သည် အဘယ်အရာကို ဆုံးဖြတ်သနည်း။",
          optionsEn: [
            "The fixed point the shape enlarges from",
            "The new scale factor",
            "The area of the shape",
            "The colour of the shape",
          ],
          optionsMy: [
            "ပုံသဏ္ဌာန် ချဲ့ထွက်ရာ ငြိမ်သက်နေသော အမှတ်",
            "အချိုးကိန်းအသစ်",
            "ပုံသဏ္ဌာန်၏ဧရိယာ",
            "ပုံသဏ္ဌာန်၏အရောင်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Every point on the enlarged shape moves away from (or towards) this one fixed point.",
            "It is a location on the grid, not a number or measurement.",
          ],
          hintsMy: [
            "ချဲ့ထားသော ပုံသဏ္ဌာန်ပေါ်ရှိ အမှတ်တိုင်းသည် ဤငြိမ်သက်နေသော အမှတ်တစ်ခုမှ ဝေးရာသို့ (သို့မဟုတ် အနီးသို့) ရွှေ့သွားသည်။",
            "၎င်းသည် ဂရစ်ကွက်ပေါ်ရှိ တည်နေရာတစ်ခုဖြစ်ပြီး ဂဏန်း သို့မဟုတ် တိုင်းတာမှုမဟုတ်ချေ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Two similar shapes have corresponding sides of 6 cm and 18 cm. What is the scale factor from the smaller to the larger?",
          questionMy:
              "ဆင်တူပုံသဏ္ဌာန်နှစ်ခု၏ ညီမျှသောဘက်များသည် 6 cm နှင့် 18 cm ဖြစ်ပါသည်။ ငယ်သောပုံမှ ကြီးသောပုံသို့ အချိုးကိန်းမှာ အဘယ်နည်း။",
          optionsEn: ["3", "12", "24", "0.33"],
          optionsMy: ["3", "12", "24", "0.33"],
          correctIndex: 0,
          hintsEn: [
            "Scale factor = new length ÷ original length.",
            "18 ÷ 6 = 3.",
          ],
          hintsMy: [
            "အချိုးကိန်း = အလျားအသစ် ÷ မူလအလျား။",
            "18 ÷ 6 = 3 ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w31-d2",
      dayNumber: 2,
      titleEn: "Enlargement Vocabulary",
      titleMy: "ပုံချဲ့ခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2m-w31-dm1",
          termEn: "Scale Factor",
          termMy: "အချိုးကိန်း (Scale Factor)",
          matchEn:
              "The number a shape's dimensions are multiplied by during enlargement",
          matchMy:
              "ပုံချဲ့နေစဉ် ပုံသဏ္ဌာန်၏ အတိုင်းအတာများကို မြှောက်ရသည့်ဂဏန်း",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2m-w31-dm2",
          termEn: "Centre of Enlargement",
          termMy: "ပုံချဲ့ခြင်းဗဟိုမှတ် (Centre of Enlargement)",
          matchEn: "The fixed point from which a shape is enlarged",
          matchMy: "ပုံသဏ္ဌာန်တစ်ခု ချဲ့ထွက်ရာ ငြိမ်သက်နေသော အမှတ်",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2m-w31-dm3",
          termEn: "Similar Shapes",
          termMy: "ဆင်တူပုံသဏ္ဌာန်များ (Similar Shapes)",
          matchEn: "Shapes with the same angles but different sizes",
          matchMy: "ထောင့်တူညီသော်လည်း အရွယ်အစားမတူသော ပုံသဏ္ဌာန်များ",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2m-w31-dm4",
          termEn: "Corresponding Sides",
          termMy: "ညီမျှသောဘက်များ (Corresponding Sides)",
          matchEn: "Sides in the same position on two similar shapes",
          matchMy: "ဆင်တူပုံသဏ္ဌာန်နှစ်ခုပေါ်ရှိ နေရာတူညီသော ဘက်များ",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2m-w31-dm5",
          termEn: "Enlargement",
          termMy: "ပုံချဲ့ခြင်း (Enlargement)",
          matchEn:
              "A transformation that changes a shape's size using a scale factor",
          matchMy:
              "အချိုးကိန်းကို အသုံးပြု၍ ပုံသဏ္ဌာန်၏ အရွယ်အစားကို ပြောင်းလဲသော အသွင်ပြောင်းမှု",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2m-w31-dm6",
          termEn: "Reduction",
          termMy: "အသေးချုံ့ခြင်း (Reduction)",
          matchEn:
              "An enlargement with a scale factor between 0 and 1, making the shape smaller",
          matchMy:
              "ပုံသဏ္ဌာန်ကို ငယ်စေသော 0 နှင့် 1 ကြားရှိ အချိုးကိန်းဖြင့် ပုံချဲ့ခြင်း",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w31-d3",
      dayNumber: 3,
      titleEn: "Sorting Enlargement or Reduction",
      titleMy: "ပုံချဲ့ခြင်း သို့မဟုတ် အသေးချုံ့ခြင်း စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Makes Shape Bigger", "Makes Shape Smaller"],
        bucketsMy: ["ပုံသဏ္ဌာန်ကို ကြီးစေသည်", "ပုံသဏ္ဌာန်ကို ငယ်စေသည်"],
        items: [
          SortingItem(
            id: "s2m-w31-sort1",
            labelEn: "Scale factor 2",
            labelMy: "အချိုးကိန်း 2",
            correctBucketEn: "Makes Shape Bigger",
            correctBucketMy: "ပုံသဏ္ဌာန်ကို ကြီးစေသည်",
          ),
          SortingItem(
            id: "s2m-w31-sort2",
            labelEn: "Scale factor ½",
            labelMy: "အချိုးကိန်း ½",
            correctBucketEn: "Makes Shape Smaller",
            correctBucketMy: "ပုံသဏ္ဌာန်ကို ငယ်စေသည်",
          ),
          SortingItem(
            id: "s2m-w31-sort3",
            labelEn: "Scale factor 5",
            labelMy: "အချိုးကိန်း 5",
            correctBucketEn: "Makes Shape Bigger",
            correctBucketMy: "ပုံသဏ္ဌာန်ကို ကြီးစေသည်",
          ),
          SortingItem(
            id: "s2m-w31-sort4",
            labelEn: "Scale factor 0.25",
            labelMy: "အချိုးကိန်း 0.25",
            correctBucketEn: "Makes Shape Smaller",
            correctBucketMy: "ပုံသဏ္ဌာန်ကို ငယ်စေသည်",
          ),
          SortingItem(
            id: "s2m-w31-sort5",
            labelEn: "Scale factor 1.5",
            labelMy: "အချိုးကိန်း 1.5",
            correctBucketEn: "Makes Shape Bigger",
            correctBucketMy: "ပုံသဏ္ဌာန်ကို ကြီးစေသည်",
          ),
          SortingItem(
            id: "s2m-w31-sort6",
            labelEn: "Scale factor ⅓",
            labelMy: "အချိုးကိန်း ⅓",
            correctBucketEn: "Makes Shape Smaller",
            correctBucketMy: "ပုံသဏ္ဌာန်ကို ငယ်စေသည်",
          ),
          SortingItem(
            id: "s2m-w31-sort7",
            labelEn: "Scale factor 10",
            labelMy: "အချိုးကိန်း 10",
            correctBucketEn: "Makes Shape Bigger",
            correctBucketMy: "ပုံသဏ္ဌာန်ကို ကြီးစေသည်",
          ),
          SortingItem(
            id: "s2m-w31-sort8",
            labelEn: "Scale factor 0.8",
            labelMy: "အချိုးကိန်း 0.8",
            correctBucketEn: "Makes Shape Smaller",
            correctBucketMy: "ပုံသဏ္ဌာန်ကို ငယ်စေသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w31-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su's Model Village",
      titleMy: "စာဖတ်ခြင်း — စုစု၏ မော်ဒယ်ရွာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su's Model Village",
        titleMy: "စုစု၏ မော်ဒယ်ရွာ",
        passageEn:
            "Su Su was building a model village for an art project using enlargement rules. She started with a small template house measuring 3 cm tall. Using a scale factor of 4 from a fixed centre of enlargement on her desk, she drew a larger house 3 × 4 = 12 cm tall for the village entrance. For the houses further from the centre, she used a scale factor of 2, giving heights of 3 × 2 = 6 cm. Su Su noticed that every house she drew was similar to the original template — same shape, same angles, just different sizes, because every corresponding side had been multiplied by the same scale factor. When her teacher asked how she'd know if two houses were truly similar, Su Su explained that the ratio between any pair of corresponding sides had to be exactly the same everywhere in the shape.",
        passageMy:
            "စုစုသည် အနုပညာပရောဂျက်တစ်ခုအတွက် ပုံချဲ့ခြင်းစည်းမျဉ်းများကို အသုံးပြု၍ မော်ဒယ်ရွာတစ်ခု တည်ဆောက်နေခဲ့သည်။ သူမသည် အမြင့် 3 cm ရှိသော အိမ်ပုံစံသေးလေးတစ်ခုဖြင့် စတင်ခဲ့သည်။ သူမ၏စားပွဲပေါ်ရှိ ငြိမ်သက်နေသော ပုံချဲ့ခြင်းဗဟိုမှတ်မှ အချိုးကိန်း 4 ကို အသုံးပြု၍ ရွာဝင်ပေါက်အတွက် အိမ်ကြီး 3 × 4 = 12 cm မြင့် ဆွဲခဲ့သည်။ ဗဟိုမှ ပိုဝေးသော အိမ်များအတွက် အချိုးကိန်း 2 ကို အသုံးပြု၍ အမြင့် 3 × 2 = 6 cm ရရှိခဲ့သည်။ စုစုသည် သူမဆွဲသော အိမ်တိုင်းသည် မူလပုံစံနှင့် ဆင်တူကြောင်း သတိပြုမိခဲ့သည် — ပုံသဏ္ဌာန်တူ၊ ထောင့်တူ၊ အရွယ်အစားသာ ကွာခြားသည်၊ အကြောင်းမှာ ညီမျှသောဘက်တိုင်းကို အချိုးကိန်းတူညီစွာ မြှောက်ထားသောကြောင့်ဖြစ်သည်။ ဆရာမက အိမ်နှစ်လုံးသည် အမှန်တကယ် ဆင်တူကြောင်း မည်သို့သိနိုင်မည်နည်းဟု မေးသောအခါ၊ စုစုက ညီမျှသောဘက်အတွဲမည်သည့်တွင်မဆို အချိုးသည် ပုံသဏ္ဌာန်တစ်ခုလုံးတွင် အတိအကျ တူညီရမည်ဖြစ်ကြောင်း ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "How tall was the original template house?",
            questionMy: "မူလပုံစံ အိမ်သည် မည်မျှမြင့်ခဲ့သနည်း။",
            optionsEn: ["3 cm", "12 cm", "6 cm", "4 cm"],
            optionsMy: ["3 cm", "12 cm", "6 cm", "4 cm"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How tall was the house at the village entrance?",
            questionMy: "ရွာဝင်ပေါက်ရှိ အိမ်သည် မည်မျှမြင့်ခဲ့သနည်း။",
            optionsEn: ["12 cm", "3 cm", "6 cm", "8 cm"],
            optionsMy: ["12 cm", "3 cm", "6 cm", "8 cm"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What scale factor did Su Su use for the houses further from the centre?",
            questionMy:
                "စုစုသည် ဗဟိုမှ ပိုဝေးသော အိမ်များအတွက် မည်သည့်အချိုးကိန်း အသုံးပြုခဲ့သနည်း။",
            optionsEn: ["2", "4", "6", "3"],
            optionsMy: ["2", "4", "6", "3"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "How did Su Su explain that two houses were truly similar?",
            questionMy:
                "စုစုသည် အိမ်နှစ်လုံး အမှန်တကယ် ဆင်တူကြောင်း မည်သို့ ရှင်းပြခဲ့သနည်း။",
            optionsEn: [
              "The ratio between corresponding sides was the same everywhere",
              "They were painted the same colour",
              "They had the same number of windows",
              "They were built on the same day",
            ],
            optionsMy: [
              "ညီမျှသောဘက်များအကြား အချိုးသည် နေရာတိုင်းတွင် တူညီသောကြောင့်",
              "အရောင်တူညီစွာ ဆေးသုတ်ထားသောကြောင့်",
              "ပြတင်းပေါက်အရေအတွက် တူညီသောကြောင့်",
              "နေ့ချင်းတည်ဆောက်ထားသောကြောင့်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w31-d5",
      dayNumber: 5,
      titleEn: "Enlargement Recap Quiz",
      titleMy: "ပုံချဲ့ခြင်း ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A scale factor greater than 1 makes a shape...",
          questionMy: "1 ထက်ကြီးသော အချိုးကိန်းသည် ပုံသဏ္ဌာန်ကို...",
          optionsEn: ["Bigger", "Smaller", "The same size", "Rotate"],
          optionsMy: [
            "ကြီးစေသည်",
            "ငယ်စေသည်",
            "အရွယ်အစားတူညီစေသည်",
            "လှည့်စေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The centre of enlargement is...",
          questionMy: "ပုံချဲ့ခြင်းဗဟိုမှတ်ဆိုသည်မှာ...",
          optionsEn: [
            "The fixed point a shape enlarges from",
            "The scale factor",
            "The area of the new shape",
            "The perimeter of the shape",
          ],
          optionsMy: [
            "ပုံသဏ္ဌာန် ချဲ့ထွက်ရာ ငြိမ်သက်နေသော အမှတ်",
            "အချိုးကိန်း",
            "ပုံသဏ္ဌာန်အသစ်၏ ဧရိယာ",
            "ပုံသဏ္ဌာန်၏ အနားပတ်လျား",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A shape with a side of 5 cm is enlarged by a scale factor of 4. What is the new side length?",
          questionMy:
              "ဘက် 5 cm ရှိသော ပုံသဏ္ဌာန်တစ်ခုကို အချိုးကိန်း 4 ဖြင့် ချဲ့ထားပါသည်။ ဘက်အသစ်အလျားမှာ အဘယ်နည်း။",
          optionsEn: ["20 cm", "9 cm", "1.25 cm", "45 cm"],
          optionsMy: ["20 cm", "9 cm", "1.25 cm", "45 cm"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Two similar shapes have corresponding sides of 4 cm and 20 cm. What is the scale factor?",
          questionMy:
              "ဆင်တူပုံသဏ္ဌာန်နှစ်ခု၏ ညီမျှသောဘက်များသည် 4 cm နှင့် 20 cm ဖြစ်ပါသည်။ အချိုးကိန်းမှာ အဘယ်နည်း။",
          optionsEn: ["5", "16", "24", "0.2"],
          optionsMy: ["5", "16", "24", "0.2"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Su Su's model village story, what scale factor was used for the entrance house?",
          questionMy:
              "စုစု၏ မော်ဒယ်ရွာ ဇာတ်လမ်းတွင် ဝင်ပေါက်အိမ်အတွက် မည်သည့်အချိုးကိန်း အသုံးပြုခဲ့သနည်း။",
          optionsEn: ["4", "2", "3", "6"],
          optionsMy: ["4", "2", "3", "6"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek32 = CourseWeekDef(
  id: "course-secondary2-mathematics-w32",
  weekNumber: 32,
  titleEn: "Packaging Designer",
  titleMy: "ထုပ်ပိုးမှု ဒီဇိုင်နာ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w32-d1",
      dayNumber: 1,
      titleEn: "Optimizing Packaging",
      titleMy: "ထုပ်ပိုးမှု အကောင်းဆုံးဖြစ်အောင် ပြုလုပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A box needs to hold a volume of at least 100 cm³. Option A is 5×5×4 cm, Option B is 4×4×6 cm. Which has a larger volume?",
          questionMy:
              "ဘူးတစ်ခုသည် အနည်းဆုံး ထုထည် 100 cm³ ဆံ့ရမည်ဖြစ်သည်။ ရွေးချယ်စရာ A သည် 5×5×4 cm, ရွေးချယ်စရာ B သည် 4×4×6 cm ဖြစ်ပါသည်။ မည်သည် ပိုကြီးသော ထုထည် ရှိသနည်း။",
          optionsEn: [
            "Option A (100 cm³)",
            "Option B (96 cm³)",
            "Both are equal",
            "Neither reaches 100 cm³",
          ],
          optionsMy: [
            "ရွေးချယ်စရာ A (100 cm³)",
            "ရွေးချယ်စရာ B (96 cm³)",
            "နှစ်ခုစလုံး တူညီသည်",
            "မည်သည့်တစ်ခုမျှ 100 cm³ မရောက်ချေ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Calculate each volume: Option A = 5×5×4, Option B = 4×4×6.",
            "Option A = 100 cm³, Option B = 96 cm³. Option A is larger.",
          ],
          hintsMy: [
            "ထုထည်တစ်ခုစီကို တွက်ချက်ပါ — ရွေးချယ်စရာ A = 5×5×4, ရွေးချယ်စရာ B = 4×4×6။",
            "ရွေးချယ်စရာ A = 100 cm³, ရွေးချယ်စရာ B = 96 cm³ ဖြစ်၍ ရွေးချယ်စရာ A ပိုကြီးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "For the same volume, why might a designer prefer a box shape with lower surface area?",
          questionMy:
              "ထုထည်တူညီသော်လည်း ဒီဇိုင်နာသည် အဘယ်ကြောင့် မျက်နှာပြင်ဧရိယာ ပိုနည်းသော ဘူးပုံသဏ္ဌာန်ကို ပိုနှစ်သက်နိုင်သနည်း။",
          optionsEn: [
            "It uses less material, reducing cost",
            "It always holds more volume",
            "It is always taller",
            "It changes the product inside",
          ],
          optionsMy: [
            "ပစ္စည်းနည်းနည်းသာ အသုံးပြုရသဖြင့် ကုန်ကျစရိတ် လျော့ကျစေသောကြောင့်",
            "အမြဲတမ်း ထုထည်ပိုများသောကြောင့်",
            "အမြဲတမ်း ပိုမြင့်သောကြောင့်",
            "အထဲရှိ ကုန်ပစ္စည်းကို ပြောင်းလဲစေသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Surface area relates directly to how much cardboard or material is needed.",
            "Less surface area for the same volume means less material cost.",
          ],
          hintsMy: [
            "မျက်နှာပြင်ဧရိယာသည် လိုအပ်သော ကတ်ထူ သို့မဟုတ် ပစ္စည်းပမာဏနှင့် တိုက်ရိုက်ဆက်စပ်နေသည်။",
            "ထုထည်တူညီစွာဖြင့် မျက်နှာပြင်ဧရိယာနည်းလျှင် ပစ္စည်းကုန်ကျစရိတ်နည်းသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A cylindrical tin has a radius of 4 cm and a height of 10 cm. Using π ≈ 3.14, what is its volume (to the nearest whole number)?",
          questionMy:
              "ဒလင်ဒါပုံ ဗူးတစ်ခု၏ အချင်းဝက်သည် 4 cm နှင့် အမြင့် 10 cm ဖြစ်ပါသည်။ π ≈ 3.14 ကို အသုံးပြု၍ ထုထည်မှာ အဘယ်နည်း (အနီးဆုံးကိန်းပြည့်)။",
          optionsEn: ["502 cm³", "126 cm³", "40 cm³", "251 cm³"],
          optionsMy: ["502 cm³", "126 cm³", "40 cm³", "251 cm³"],
          correctIndex: 0,
          hintsEn: [
            "Volume of a cylinder = π × radius² × height.",
            "3.14 × 4 × 4 × 10 = 3.14 × 16 × 10 = 502.4 ≈ 502 cm³.",
          ],
          hintsMy: [
            "ဆလင်ဒါ၏ ထုထည် = π × အချင်းဝက်² × အမြင့်။",
            "3.14 × 4 × 4 × 10 = 3.14 × 16 × 10 = 502.4 ≈ 502 cm³ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A net is unfolded from a 3D shape. What does the net show?",
          questionMy:
              "နက်တစ်ခုကို ၃-ဖက်မြင်ပုံသဏ္ဌာန်မှ ဖြန့်ချထားပါသည်။ နက်သည် အဘယ်အရာကို ပြသနည်း။",
          optionsEn: [
            "All the flat faces of the 3D shape laid out flat",
            "Only the volume of the shape",
            "Only the top face of the shape",
            "The colour of the shape",
          ],
          optionsMy: [
            "၃-ဖက်မြင်ပုံသဏ္ဌာန်၏ ပြားညီမျက်နှာအားလုံးကို ဖြန့်ချထားခြင်း",
            "ပုံသဏ္ဌာန်၏ ထုထည်သာ",
            "ပုံသဏ္ဌာန်၏ ထိပ်ဖက်မျက်နှာသာ",
            "ပုံသဏ္ဌာန်၏ အရောင်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A net is what you'd get if you cut along the edges of a 3D shape and flattened it out.",
            "It shows every face, which is useful for calculating total surface area and designing packaging.",
          ],
          hintsMy: [
            "နက်ဆိုသည်မှာ ၃-ဖက်မြင်ပုံသဏ္ဌာန်၏ အနားများအတိုင်း ဖြတ်၍ ပြားညီအောင် ဖြန့်ချလိုက်ပါက ရရှိမည့်ပုံဖြစ်သည်။",
            "၎င်းသည် မျက်နှာတိုင်းကို ပြသပြီး စုစုပေါင်း မျက်နှာပြင်ဧရိယာ တွက်ချက်ရန်နှင့် ထုပ်ပိုးမှု ဒီဇိုင်းဆွဲရန် အသုံးဝင်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w32-d2",
      dayNumber: 2,
      titleEn: "Packaging Design Vocabulary",
      titleMy: "ထုပ်ပိုးမှု ဒီဇိုင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2m-w32-dm1",
          termEn: "Net",
          termMy: "နက် (Net)",
          matchEn: "A 3D shape's faces laid out flat, unfolded",
          matchMy: "၃-ဖက်မြင်ပုံသဏ္ဌာန်၏ မျက်နှာများကို ဖြန့်ချထားခြင်း",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2m-w32-dm2",
          termEn: "Optimize",
          termMy: "အကောင်းဆုံးဖြစ်အောင် ပြုလုပ်ခြင်း (Optimize)",
          matchEn: "To make something as effective or useful as possible",
          matchMy:
              "တစ်စုံတစ်ခုကို အကျိုးရှိဆုံး သို့မဟုတ် အသုံးဝင်ဆုံးဖြစ်အောင် ပြုလုပ်ခြင်း",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2m-w32-dm3",
          termEn: "Minimise Surface Area",
          termMy:
              "မျက်နှာပြင်ဧရိယာ အနည်းဆုံးဖြစ်အောင် ပြုလုပ်ခြင်း (Minimise Surface Area)",
          matchEn:
              "To design a shape using the least amount of outer material for a given volume",
          matchMy:
              "ထုထည်အတိအကျအတွက် အပြင်ပစ္စည်း အနည်းဆုံးအသုံးပြု၍ ပုံသဏ္ဌာန်ဒီဇိုင်းဆွဲခြင်း",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2m-w32-dm4",
          termEn: "Packaging",
          termMy: "ထုပ်ပိုးမှု (Packaging)",
          matchEn: "Material used to wrap or contain a product",
          matchMy:
              "ကုန်ပစ္စည်းကို ထုပ်ပိုး သို့မဟုတ် ထည့်သွင်းရန် အသုံးပြုသော ပစ္စည်း",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2m-w32-dm5",
          termEn: "Material Cost",
          termMy: "ပစ္စည်းကုန်ကျစရိတ် (Material Cost)",
          matchEn: "The cost of the raw material needed to build packaging",
          matchMy:
              "ထုပ်ပိုးမှု တည်ဆောက်ရန် လိုအပ်သော ကုန်ကြမ်းပစ္စည်း၏ ကုန်ကျစရိတ်",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2m-w32-dm6",
          termEn: "Efficient Design",
          termMy: "ထိရောက်သောဒီဇိုင်း (Efficient Design)",
          matchEn:
              "A design that achieves its purpose with the least waste of material or space",
          matchMy:
              "ပစ္စည်း သို့မဟုတ် နေရာ ဆုံးရှုံးမှုအနည်းဆုံးဖြင့် ရည်ရွယ်ချက်ပြည့်မှီသော ဒီဇိုင်း",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w32-d3",
      dayNumber: 3,
      titleEn: "Sorting Packaging Design Decisions",
      titleMy: "ထုပ်ပိုးမှု ဒီဇိုင်း ဆုံးဖြတ်ချက်များကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Reduces Material Cost", "Increases Material Cost"],
        bucketsMy: [
          "ပစ္စည်းကုန်ကျစရိတ် လျော့ကျစေသည်",
          "ပစ္စည်းကုန်ကျစရိတ် တိုးမြှင့်စေသည်",
        ],
        items: [
          SortingItem(
            id: "s2m-w32-sort1",
            labelEn: "Choosing lower surface area for same volume",
            labelMy:
                "ထုထည်တူညီစွာဖြင့် မျက်နှာပြင်ဧရိယာနည်းသည်ကို ရွေးချယ်ခြင်း",
            correctBucketEn: "Reduces Material Cost",
            correctBucketMy: "ပစ္စည်းကုန်ကျစရိတ် လျော့ကျစေသည်",
          ),
          SortingItem(
            id: "s2m-w32-sort2",
            labelEn:
                "Using a cylindrical can instead of a boxy shape with more corners",
            labelMy: "ထောင့်ပိုများသော ဘူးပုံစံအစား ဆလင်ဒါပုံ ဗူးသုံးခြင်း",
            correctBucketEn: "Reduces Material Cost",
            correctBucketMy: "ပစ္စည်းကုန်ကျစရိတ် လျော့ကျစေသည်",
          ),
          SortingItem(
            id: "s2m-w32-sort3",
            labelEn: "Adding unnecessary extra layers of cardboard",
            labelMy: "မလိုအပ်သော ကတ်ထူထပ်ပိုများ ထပ်ထည့်ခြင်း",
            correctBucketEn: "Increases Material Cost",
            correctBucketMy: "ပစ္စည်းကုန်ကျစရိတ် တိုးမြှင့်စေသည်",
          ),
          SortingItem(
            id: "s2m-w32-sort4",
            labelEn:
                "Choosing a shape with a much higher surface area for the same volume",
            labelMy:
                "ထုထည်တူညီစွာဖြင့် မျက်နှာပြင်ဧရိယာပိုများသည့်ပုံကို ရွေးချယ်ခြင်း",
            correctBucketEn: "Increases Material Cost",
            correctBucketMy: "ပစ္စည်းကုန်ကျစရိတ် တိုးမြှင့်စေသည်",
          ),
          SortingItem(
            id: "s2m-w32-sort5",
            labelEn: "Designing a net with minimal wasted material",
            labelMy: "ပစ္စည်းအလေအလွင့်အနည်းဆုံးဖြင့် နက်ဒီဇိုင်းဆွဲခြင်း",
            correctBucketEn: "Reduces Material Cost",
            correctBucketMy: "ပစ္စည်းကုန်ကျစရိတ် လျော့ကျစေသည်",
          ),
          SortingItem(
            id: "s2m-w32-sort6",
            labelEn: "Using excess padding beyond what is needed",
            labelMy: "လိုအပ်သည်ထက် ပိုသော ခေါင်းအုံးထည့်ပစ္စည်း သုံးခြင်း",
            correctBucketEn: "Increases Material Cost",
            correctBucketMy: "ပစ္စည်းကုန်ကျစရိတ် တိုးမြှင့်စေသည်",
          ),
          SortingItem(
            id: "s2m-w32-sort7",
            labelEn: "Calculating volume before choosing box dimensions",
            labelMy: "ဘူးအတိုင်းအတာ မရွေးချယ်မီ ထုထည်ကို တွက်ချက်ခြင်း",
            correctBucketEn: "Reduces Material Cost",
            correctBucketMy: "ပစ္စည်းကုန်ကျစရိတ် လျော့ကျစေသည်",
          ),
          SortingItem(
            id: "s2m-w32-sort8",
            labelEn: "Ignoring surface area when choosing packaging shape",
            labelMy:
                "ထုပ်ပိုးမှုပုံသဏ္ဌာန် ရွေးချယ်ရာတွင် မျက်နှာပြင်ဧရိယာကို လျစ်လျူရှုခြင်း",
            correctBucketEn: "Increases Material Cost",
            correctBucketMy: "ပစ္စည်းကုန်ကျစရိတ် တိုးမြှင့်စေသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w32-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiri Designs a Juice Box",
      titleMy: "စာဖတ်ခြင်း — သီရိ ဖျော်ရည်ဘူးဒီဇိုင်းဆွဲခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri Designs a Juice Box",
        titleMy: "သီရိ ဖျော်ရည်ဘူးဒီဇိုင်းဆွဲခြင်း",
        passageEn:
            "Thiri's class was set a challenge: design a juice box that holds exactly 500 cm³ using the least amount of cardboard possible. She tried two designs. Design A was a tall thin cuboid: 5 cm × 5 cm × 20 cm, giving a volume of 5 × 5 × 20 = 500 cm³ and a surface area of 2 × (5×5 + 5×20 + 5×20) = 2 × (25 + 100 + 100) = 450 cm². Design B was a more cube-like cuboid: 10 cm × 10 cm × 5 cm, giving the same volume, 10 × 10 × 5 = 500 cm³, but a much smaller surface area of 2 × (10×10 + 10×5 + 10×5) = 2 × (100 + 50 + 50) = 400 cm². Even though both boxes held exactly the same amount of juice, Design B needed 50 cm² less cardboard, saving material and cost across thousands of boxes. Thiri realised that shapes closer to a cube generally use less material than long thin shapes for the same volume.",
        passageMy:
            "သီရိ၏အတန်းသည် စိန်ခေါ်မှုတစ်ခု ချမှတ်ခံရသည် — ကတ်ထူ အနည်းဆုံးအသုံးပြု၍ 500 cm³ အတိအကျ ဆံ့သော ဖျော်ရည်ဘူးတစ်ခု ဒီဇိုင်းဆွဲရန်။ သူမသည် ဒီဇိုင်းနှစ်မျိုး စမ်းသပ်ခဲ့သည်။ ဒီဇိုင်း A သည် မြင့်ပါးသော ကျုပ်ကွက် — 5 cm × 5 cm × 20 cm ဖြစ်ပြီး ထုထည် 5 × 5 × 20 = 500 cm³ နှင့် မျက်နှာပြင်ဧရိယာ 2 × (5×5 + 5×20 + 5×20) = 2 × (25 + 100 + 100) = 450 cm² ရရှိသည်။ ဒီဇိုင်း B သည် ကုဗပုံနှင့်ပိုတူသော ကျုပ်ကွက် — 10 cm × 10 cm × 5 cm ဖြစ်ပြီး ထုထည်တူညီစွာ 10 × 10 × 5 = 500 cm³ ရရှိသော်လည်း မျက်နှာပြင်ဧရိယာသည် 2 × (10×10 + 10×5 + 10×5) = 2 × (100 + 50 + 50) = 400 cm² ဖြင့် များစွာသေးငယ်သည်။ ဘူးနှစ်ခုစလုံးသည် ဖျော်ရည်ပမာဏ အတိအကျတူညီသော်လည်း၊ ဒီဇိုင်း B သည် ကတ်ထူ 50 cm² နည်းနည်းသာ လိုအပ်ပြီး၊ ဘူးထောင်ပေါင်းများစွာအတွက် ပစ္စည်းနှင့် ကုန်ကျစရိတ် ချွေတာနိုင်သည်။ သီရိသည် ကုဗပုံနှင့်ပိုနီးစပ်သော ပုံသဏ္ဌာန်များသည် ထုထည်တူညီစွာအတွက် ရှည်ပါးသောပုံသဏ္ဌာန်များထက် ပစ္စည်းနည်းနည်းသာ အသုံးပြုကြောင်း သဘောပေါက်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What was the volume of both juice box designs?",
            questionMy: "ဖျော်ရည်ဘူးဒီဇိုင်း နှစ်မျိုးလုံး၏ ထုထည်မှာ အဘယ်နည်း။",
            optionsEn: ["500 cm³", "450 cm³", "400 cm³", "50 cm³"],
            optionsMy: ["500 cm³", "450 cm³", "400 cm³", "50 cm³"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What was the surface area of Design B?",
            questionMy: "ဒီဇိုင်း B ၏ မျက်နှာပြင်ဧရိယာမှာ အဘယ်နည်း။",
            optionsEn: ["400 cm²", "450 cm²", "500 cm²", "50 cm²"],
            optionsMy: ["400 cm²", "450 cm²", "500 cm²", "50 cm²"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "How much less cardboard did Design B need compared to Design A?",
            questionMy:
                "ဒီဇိုင်း B သည် ဒီဇိုင်း A နှင့် နှိုင်းယှဉ်ပါက ကတ်ထူ မည်မျှနည်းနည်းသာ လိုအပ်ခဲ့သနည်း။",
            optionsEn: ["50 cm²", "100 cm²", "450 cm²", "500 cm²"],
            optionsMy: ["50 cm²", "100 cm²", "450 cm²", "500 cm²"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Thiri conclude about shapes closer to a cube?",
            questionMy:
                "ကုဗပုံနှင့်ပိုနီးစပ်သော ပုံသဏ္ဌာန်များအကြောင်း သီရိ မည်သို့ ကောက်ချက်ချခဲ့သနည်း။",
            optionsEn: [
              "They generally use less material than long thin shapes for the same volume",
              "They always hold less juice",
              "They are always more expensive",
              "They cannot be used for packaging",
            ],
            optionsMy: [
              "ထုထည်တူညီစွာအတွက် ရှည်ပါးသောပုံသဏ္ဌာန်များထက် ပစ္စည်းနည်းနည်းသာ ယေဘုယျအားဖြင့် အသုံးပြုကြောင်း",
              "အမြဲတမ်း ဖျော်ရည်နည်းနည်းသာ ဆံ့ကြောင်း",
              "အမြဲတမ်း ပိုစျေးကြီးကြောင်း",
              "ထုပ်ပိုးမှုအတွက် အသုံးမပြုနိုင်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w32-d5",
      dayNumber: 5,
      titleEn: "Term 8 Final Recap Quiz",
      titleMy: "Term 8 နောက်ဆုံး ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A trapezium has parallel sides of 5 cm and 9 cm, and a height of 6 cm. What is its area?",
          questionMy:
              "လက်ဖက်ရွက်ပုံတစ်ခုသည် ပြိုင်ဘက် 5 cm နှင့် 9 cm၊ အမြင့် 6 cm ရှိပါသည်။ ဧရိယာမှာ အဘယ်နည်း။",
          optionsEn: ["42 cm²", "30 cm²", "54 cm²", "84 cm²"],
          optionsMy: ["42 cm²", "30 cm²", "54 cm²", "84 cm²"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A cuboid has length 4 cm, width 3 cm, and height 2 cm. What is its volume?",
          questionMy:
              "ကျုပ်ကွက်တစ်ခုသည် အလျား 4 cm၊ အကျယ် 3 cm နှင့် အမြင့် 2 cm ရှိပါသည်။ ထုထည်မှာ အဘယ်နည်း။",
          optionsEn: ["24 cm³", "9 cm³", "12 cm³", "20 cm³"],
          optionsMy: ["24 cm³", "9 cm³", "12 cm³", "20 cm³"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A shape with a side of 6 cm is enlarged by a scale factor of 2.5. What is the new side length?",
          questionMy:
              "ဘက် 6 cm ရှိသော ပုံသဏ္ဌာန်တစ်ခုကို အချိုးကိန်း 2.5 ဖြင့် ချဲ့ထားပါသည်။ ဘက်အသစ်အလျားမှာ အဘယ်နည်း။",
          optionsEn: ["15 cm", "8.5 cm", "3.5 cm", "12 cm"],
          optionsMy: ["15 cm", "8.5 cm", "3.5 cm", "12 cm"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "For the same volume, why would a packaging designer prefer a shape with lower surface area?",
          questionMy:
              "ထုထည်တူညီသော်လည်း ထုပ်ပိုးမှုဒီဇိုင်နာသည် အဘယ်ကြောင့် မျက်နှာပြင်ဧရိယာနည်းသော ပုံသဏ္ဌာန်ကို ပိုနှစ်သက်နိုင်သနည်း။",
          optionsEn: [
            "It uses less material, reducing cost",
            "It always looks better",
            "It changes the volume",
            "It is easier to paint",
          ],
          optionsMy: [
            "ပစ္စည်းနည်းနည်းသာ အသုံးပြုရသဖြင့် ကုန်ကျစရိတ် လျော့ကျစေသောကြောင့်",
            "အမြဲတမ်း ပိုလှသောကြောင့်",
            "ထုထည်ကို ပြောင်းလဲစေသောကြောင့်",
            "ဆေးသုတ်ရန် ပိုလွယ်ကူသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Thiri's juice box story, which design used less cardboard for the same volume?",
          questionMy:
              "သီရိ၏ ဖျော်ရည်ဘူးဇာတ်လမ်းတွင် ထုထည်တူညီစွာအတွက် မည်သည့်ဒီဇိုင်းက ကတ်ထူနည်းနည်းသာ အသုံးပြုခဲ့သနည်း။",
          optionsEn: [
            "Design B (the more cube-like shape)",
            "Design A (the tall thin shape)",
            "Both used the same amount",
            "Neither could be calculated",
          ],
          optionsMy: [
            "ဒီဇိုင်း B (ကုဗပုံနှင့်ပိုတူသောပုံသဏ္ဌာန်)",
            "ဒီဇိုင်း A (မြင့်ပါးသောပုံသဏ္ဌာန်)",
            "နှစ်ခုစလုံး ပမာဏတူညီစွာ အသုံးပြုခဲ့သည်",
            "မည်သည့်တစ်ခုမျှ တွက်ချက်၍မရချေ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary2MathematicsTerm8 = CourseTermDef(
  id: "course-secondary2-mathematics-term8",
  termNumber: 8,
  titleEn: "Area, Volume and Transformations",
  titleMy: "ဧရိယာ၊ ထုထည်နှင့် အသွင်ပြောင်းမှုများ",
  certificateTitleEn: "Area, Volume and Transformations",
  certificateTitleMy: "ဧရိယာ၊ ထုထည်နှင့် အသွင်ပြောင်းမှုများ",
  weeks: [
    _secondary2MathematicsWeek29,
    _secondary2MathematicsWeek30,
    _secondary2MathematicsWeek31,
    _secondary2MathematicsWeek32,
  ],
);
