// =====================================================================
// Year 1 English -- Term 5: "Describing Words" (Weeks 17-20)
// =====================================================================

// =====================================================================
// Week 17: "Describing Size, Colour, and Feeling"
// =====================================================================

const CourseWeekDef _year1EnglishWeek17 = CourseWeekDef(
  id: "course-year1-english-w17",
  weekNumber: 17,
  titleEn: "Describing Size, Colour, and Feeling",
  titleMy: "အရွယ်အစား၊ အရောင်နှင့် ခံစားချက် ဖော်ပြခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w17-d1",
      dayNumber: 1,
      titleEn: "Big, Small, Red, Blue, Happy, Sad",
      titleMy: "ကြီး၊ သေး၊ အနီ၊ အပြာ၊ ပျော်၊ ဝမ်းနည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Moe Moe has a tiny ant and a huge elephant. Which word describes the elephant?",
          questionMy:
              "မိုးမိုးတွင် ပုရွက်ဆိတ်ကလေးနှင့် ဆင်ကြီးတစ်ကောင် ရှိသည်။ ဆင်ကို ဖော်ပြသည့် စကားလုံးက ဘာလဲ။",
          optionsEn: ["Big", "Small", "Red", "Sad"],
          optionsMy: ["ကြီး", "သေး", "အနီရောင်", "ဝမ်းနည်း"],
          correctIndex: 0,
          hintsEn: [
            "An elephant is much bigger than an ant.",
            "The opposite of \"small\" is...",
          ],
          hintsMy: [
            "ဆင်သည် ပုရွက်ဆိတ်ထက် များစွာ ပိုကြီးသည်။",
            "\"သေး\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက...",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi's ball is the colour of the sky on a clear day. What colour is the ball?",
          questionMy:
              "နေချည်၏ ဘောလုံးသည် ကြည်လင်သောနေ့တွင် ကောင်းကင်၏ အရောင်ဖြစ်သည်။ ဘောလုံးက ဘာအရောင်လဲ။",
          optionsEn: ["Blue", "Red", "Big", "Small"],
          optionsMy: ["အပြာရောင်", "အနီရောင်", "ကြီး", "သေး"],
          correctIndex: 0,
          hintsEn: [
            "Look up at a clear sky -- what colour do you see?",
            "It rhymes with \"glue\" and \"true\".",
          ],
          hintsMy: [
            "ကြည်လင်သောကောင်းကင်ကို မော့ကြည့်ပါ -- ဘာအရောင်တွေ့သနည်း။",
            "ကောင်းကင်၏ အရောင်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Htet Htet's kite flew away and popped. How does Htet Htet feel?",
          questionMy:
              "ထက်ထက်၏ လေယာဉ်ပျံသည် ပျံသွားပြီး ပေါက်သွားသည်။ ထက်ထက် ဘယ်လိုခံစားရသနည်း။",
          optionsEn: ["Sad", "Happy", "Big", "Blue"],
          optionsMy: ["ဝမ်းနည်း", "ပျော်", "ကြီး", "အပြာရောင်"],
          correctIndex: 0,
          hintsEn: [
            "Losing a favourite toy usually does not make someone feel good.",
            "The opposite of \"happy\" is...",
          ],
          hintsMy: [
            "အကြိုက်ဆုံး ကစားစရာ ပျောက်သွားလျှင် ပျော်စရာ မကောင်းပါ။",
            "\"ပျော်\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက...",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Moe Moe got a new red bicycle for her birthday. How does Moe Moe feel?",
          questionMy:
              "မိုးမိုးသည် မွေးနေ့အတွက် စက်ဘီးအသစ် တစ်စီး ရရှိသည်။ မိုးမိုး ဘယ်လိုခံစားရသနည်း။",
          optionsEn: ["Happy", "Sad", "Small", "Blue"],
          optionsMy: ["ပျော်", "ဝမ်းနည်း", "သေး", "အပြာရောင်"],
          correctIndex: 0,
          hintsEn: [
            "Getting a wonderful birthday gift usually makes someone feel good.",
            "The opposite of \"sad\" is...",
          ],
          hintsMy: [
            "မွေးနေ့လက်ဆောင်ကောင်း ရရှိလျှင် ပျော်စရာကောင်းသည်။",
            "\"ဝမ်းနည်း\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက...",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w17-d2",
      dayNumber: 2,
      titleEn: "Match: Describing Words",
      titleMy: "ကိုက်ညီစွာ တွဲချိတ်ခြင်း - ဖော်ပြချက် စကားလုံးများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w17-dm1",
          termEn: "Big",
          termMy: "ကြီး",
          matchEn: "A very large size, like an elephant.",
          matchMy: "ဆင်ကဲ့သို့ အရွယ်အစား အလွန်ကြီးခြင်း။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w17-dm2",
          termEn: "Small",
          termMy: "သေး",
          matchEn: "A very tiny size, like an ant.",
          matchMy: "ပုရွက်ဆိတ်ကဲ့သို့ အရွယ်အစား အလွန်သေးငယ်ခြင်း။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w17-dm3",
          termEn: "Red",
          termMy: "အနီရောင်",
          matchEn: "The colour of a ripe tomato.",
          matchMy: "မှည့်သောခရမ်းချဉ်သီး၏ အရောင်။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w17-dm4",
          termEn: "Blue",
          termMy: "အပြာရောင်",
          matchEn: "The colour of a clear sky.",
          matchMy: "ကြည်လင်သောကောင်းကင်၏ အရောင်။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w17-dm5",
          termEn: "Happy",
          termMy: "ပျော်",
          matchEn: "How you feel on your birthday.",
          matchMy: "မွေးနေ့တွင် ခံစားရသည့်အနေအထား။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w17-dm6",
          termEn: "Sad",
          termMy: "ဝမ်းနည်း",
          matchEn: "How you feel when a toy breaks.",
          matchMy: "ကစားစရာ ပျက်သွားလျှင် ခံစားရသည့်အနေအထား။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w17-d3",
      dayNumber: 3,
      titleEn: "Sort: Size, Colour, or Feeling?",
      titleMy: "စီစဉ်ခြင်း - အရွယ်အစား၊ အရောင်၊ (သို့) ခံစားချက်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Size or Colour", "Feeling"],
        bucketsMy: ["အရွယ်အစား (သို့) အရောင်", "ခံစားချက်"],
        items: [
          SortingItem(
            id: "y1eng-w17-sort1",
            labelEn: "Big",
            labelMy: "ကြီး",
            correctBucketEn: "Size or Colour",
            correctBucketMy: "အရွယ်အစား (သို့) အရောင်",
          ),
          SortingItem(
            id: "y1eng-w17-sort2",
            labelEn: "Happy",
            labelMy: "ပျော်",
            correctBucketEn: "Feeling",
            correctBucketMy: "ခံစားချက်",
          ),
          SortingItem(
            id: "y1eng-w17-sort3",
            labelEn: "Blue",
            labelMy: "အပြာရောင်",
            correctBucketEn: "Size or Colour",
            correctBucketMy: "အရွယ်အစား (သို့) အရောင်",
          ),
          SortingItem(
            id: "y1eng-w17-sort4",
            labelEn: "Sad",
            labelMy: "ဝမ်းနည်း",
            correctBucketEn: "Feeling",
            correctBucketMy: "ခံစားချက်",
          ),
          SortingItem(
            id: "y1eng-w17-sort5",
            labelEn: "Small",
            labelMy: "သေး",
            correctBucketEn: "Size or Colour",
            correctBucketMy: "အရွယ်အစား (သို့) အရောင်",
          ),
          SortingItem(
            id: "y1eng-w17-sort6",
            labelEn: "Red",
            labelMy: "အနီရောင်",
            correctBucketEn: "Size or Colour",
            correctBucketMy: "အရွယ်အစား (သို့) အရောင်",
          ),
          SortingItem(
            id: "y1eng-w17-sort7",
            labelEn: "Scared",
            labelMy: "ကြောက်",
            correctBucketEn: "Feeling",
            correctBucketMy: "ခံစားချက်",
          ),
          SortingItem(
            id: "y1eng-w17-sort8",
            labelEn: "Yellow",
            labelMy: "ဝါရောင်",
            correctBucketEn: "Size or Colour",
            correctBucketMy: "အရွယ်အစား (သို့) အရောင်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w17-d4",
      dayNumber: 4,
      titleEn: "Reading: Moe Moe's Balloon",
      titleMy: "စာဖတ်ခြင်း - မိုးမိုး၏ ပုံးအိမ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Moe Moe's Balloon",
        titleMy: "မိုးမိုး၏ ပုံးအိမ်",
        passageEn:
            "Moe Moe went to the shop with her mother. Moe Moe saw a big, red balloon. It was bigger than Moe Moe's head! Moe Moe felt very happy. Moe Moe held the string tight. Then a small, blue bird flew close by. The bird bumped the balloon. Pop! The balloon burst with a loud bang. Moe Moe felt sad for a moment. Then Moe Moe's mother bought a new balloon. It was small and yellow. Moe Moe smiled and felt happy again.",
        passageMy:
            "မိုးမိုးသည် အမေနှင့်အတူ ဆိုင်သို့ သွားသည်။ မိုးမိုးသည် ကြီးမားသော အနီရောင် ပုံးအိမ်တစ်လုံးကို မြင်သည်။ ၎င်းသည် မိုးမိုး၏ ခေါင်းထက်ပင် ကြီးသည်။ မိုးမိုး အလွန်ပျော်ရွှင်သည်။ မိုးမိုးသည် ကြိုးကို တင်းတင်းကိုင်ထားသည်။ ထို့နောက် သေးငယ်သော အပြာရောင် ငှက်ကလေးတစ်ကောင် အနီးမှ ပျံသွားသည်။ ငှက်သည် ပုံးအိမ်ကို တိုက်မိသည်။ ပေါက်သွားပြီ! ပုံးအိမ်သည် အသံကျယ်စွာ ပေါက်သွားသည်။ မိုးမိုး ခဏတာ ဝမ်းနည်းသွားသည်။ ထို့နောက် မိုးမိုး၏ အမေက ပုံးအိမ်အသစ်တစ်လုံး ဝယ်ပေးသည်။ ၎င်းသည် သေးငယ်ပြီး ဝါရောင်ဖြစ်သည်။ မိုးမိုး ပြုံးလို့ ပြန်ပျော်သွားသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What colour was Moe Moe's first balloon?",
            questionMy: "မိုးမိုး၏ ပထမပုံးအိမ်က ဘာအရောင်လဲ။",
            optionsEn: ["Red", "Blue", "Yellow", "Green"],
            optionsMy: ["အနီရောင်", "အပြာရောင်", "ဝါရောင်", "အစိမ်းရောင်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What size was the bird that bumped the balloon?",
            questionMy: "ပုံးအိမ်ကို တိုက်မိသော ငှက်၏ အရွယ်အစားက ဘာလဲ။",
            optionsEn: ["Small", "Big", "Huge", "Tall"],
            optionsMy: ["သေး", "ကြီး", "ကြီးမား", "မြင့်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How did Moe Moe feel when the balloon popped?",
            questionMy: "ပုံးအိမ် ပေါက်သွားချိန် မိုးမိုး ဘယ်လိုခံစားရသလဲ။",
            optionsEn: ["Sad", "Happy", "Big", "Small"],
            optionsMy: ["ဝမ်းနည်း", "ပျော်", "ကြီး", "သေး"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What colour was the new balloon at the end?",
            questionMy: "နောက်ဆုံးတွင် ရရှိသော ပုံးအိမ်အသစ်က ဘာအရောင်လဲ။",
            optionsEn: ["Yellow", "Red", "Blue", "Purple"],
            optionsMy: ["ဝါရောင်", "အနီရောင်", "အပြာရောင်", "ခရမ်းရောင်"],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w17-d5",
      dayNumber: 5,
      titleEn: "Recap: Size, Colour, and Feeling",
      titleMy: "ပြန်လည်သုံးသပ်ခြင်း - အရွယ်အစား၊ အရောင်နှင့် ခံစားချက်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which word describes a very large size?",
          questionMy: "အရွယ်အစား အလွန်ကြီးခြင်းကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Big", "Small", "Sad", "Happy"],
          optionsMy: ["ကြီး", "သေး", "ဝမ်းနည်း", "ပျော်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word names the colour of the sky?",
          questionMy: "ကောင်းကင်၏ အရောင်ကို ခေါ်သည့် စကားလုံးက ဘာလဲ။",
          optionsEn: ["Blue", "Red", "Big", "Small"],
          optionsMy: ["အပြာရောင်", "အနီရောင်", "ကြီး", "သေး"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, what popped Moe Moe's first balloon?",
          questionMy:
              "စာဖတ်အပိုင်းတွင် မိုးမိုး၏ ပထမပုံးအိမ်ကို ဘာက ပေါက်စေသနည်း။",
          optionsEn: [
            "A small, blue bird",
            "A big, red car",
            "A happy child",
            "A yellow balloon",
          ],
          optionsMy: [
            "သေးငယ်သော အပြာရောင်ငှက်",
            "ကြီးမားသော အနီရောင်ကား",
            "ပျော်ရွှင်သောကလေး",
            "ဝါရောင်ပုံးအိမ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "If a toy breaks, how would you probably feel?",
          questionMy: "ကစားစရာတစ်ခု ပျက်သွားလျှင် သင် ဘယ်လိုခံစားရနိုင်သနည်း။",
          optionsEn: ["Sad", "Happy", "Big", "Blue"],
          optionsMy: ["ဝမ်းနည်း", "ပျော်", "ကြီး", "အပြာရောင်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What colour was Moe Moe's new balloon at the end of the story?",
          questionMy:
              "ဇာတ်လမ်း အဆုံးတွင် မိုးမိုး၏ ပုံးအိမ်အသစ်က ဘာအရောင်ဖြစ်သနည်း။",
          optionsEn: ["Yellow", "Red", "Blue", "Green"],
          optionsMy: ["ဝါရောင်", "အနီရောင်", "အပြာရောင်", "အစိမ်းရောင်"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 18: "Describing People and Animals"
// =====================================================================

const CourseWeekDef _year1EnglishWeek18 = CourseWeekDef(
  id: "course-year1-english-w18",
  weekNumber: 18,
  titleEn: "Describing People and Animals",
  titleMy: "လူနှင့် တိရစ္ဆာန် ဖော်ပြခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w18-d1",
      dayNumber: 1,
      titleEn: "Tall, Short, Fast, Slow",
      titleMy: "မြင့်၊ ပု၊ မြန်၊ နှေး",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Nay Chi's father can reach the top shelf easily. Which word describes him?",
          questionMy:
              "နေချည်၏ အဖေသည် အပေါ်ဆုံးစင်ကို လွယ်ကူစွာ လက်လှမ်းမီသည်။ သူ့ကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Tall", "Short", "Slow", "Small"],
          optionsMy: ["မြင့်", "ပု", "နှေး", "သေး"],
          correctIndex: 0,
          hintsEn: [
            "Someone who can reach a high shelf easily is usually...",
            "The opposite of \"short\" is...",
          ],
          hintsMy: [
            "စင်ရဲ့ အမြင့်ဆုံးအထိ လွယ်ကူစွာ လက်လှမ်းမီသူသည် ပုံမှန်အားဖြင့်...",
            "\"ပု\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက...",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Htet Htet's puppy is small and cannot reach the table. Which word describes the puppy?",
          questionMy:
              "ထက်ထက်၏ ခွေးကလေးသည် သေးငယ်ပြီး စားပွဲကို မမီနိုင်ပါ။ ခွေးကလေးကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Short", "Tall", "Fast", "Loud"],
          optionsMy: ["ပု", "မြင့်", "မြန်", "အသံကျယ်"],
          correctIndex: 0,
          hintsEn: [
            "Something that cannot reach high places is usually...",
            "The opposite of \"tall\" is...",
          ],
          hintsMy: [
            "မြင့်သောနေရာကို မလှမ်းမီနိုင်သူသည် ပုံမှန်အားဖြင့်...",
            "\"မြင့်\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက...",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A cheetah can run faster than any other animal. Which word describes the cheetah?",
          questionMy:
              "ကျားသစ်တစ်ကောင်သည် တိရစ္ဆာန်တခြားများထက် ပိုမြန်စွာ ပြေးနိုင်သည်။ ကျားသစ်ကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Fast", "Slow", "Tall", "Short"],
          optionsMy: ["မြန်", "နှေး", "မြင့်", "ပု"],
          correctIndex: 0,
          hintsEn: [
            "An animal that wins every race is usually...",
            "The opposite of \"slow\" is...",
          ],
          hintsMy: [
            "အပြေးပြိုင်ပွဲတိုင်း အနိုင်ရသော တိရစ္ဆာန်သည် ပုံမှန်အားဖြင့်...",
            "\"နှေး\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက...",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A tortoise takes a long time to cross the garden. Which word describes the tortoise?",
          questionMy:
              "လိပ်တစ်ကောင်သည် ဥယျာဉ်ကို ဖြတ်ကျော်ရန် အချိန်ကြာသည်။ လိပ်ကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Slow", "Fast", "Tall", "Happy"],
          optionsMy: ["နှေး", "မြန်", "မြင့်", "ပျော်"],
          correctIndex: 0,
          hintsEn: [
            "Something that takes a long time to move is usually...",
            "The opposite of \"fast\" is...",
          ],
          hintsMy: [
            "ရွှေ့ရန် အချိန်ကြာသောအရာသည် ပုံမှန်အားဖြင့်...",
            "\"မြန်\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက...",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w18-d2",
      dayNumber: 2,
      titleEn: "Match: People and Animal Words",
      titleMy: "ကိုက်ညီစွာ တွဲချိတ်ခြင်း - လူနှင့် တိရစ္ဆာန် စကားလုံးများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w18-dm1",
          termEn: "Tall",
          termMy: "မြင့်",
          matchEn: "Can reach the top shelf easily.",
          matchMy: "အပေါ်ဆုံးစင်ကို လွယ်ကူစွာ လက်လှမ်းမီသူ။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w18-dm2",
          termEn: "Short",
          termMy: "ပု",
          matchEn: "Cannot reach the top shelf.",
          matchMy: "အပေါ်ဆုံးစင်ကို လက်မလှမ်းမီသူ။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w18-dm3",
          termEn: "Fast",
          termMy: "မြန်",
          matchEn: "A cheetah running.",
          matchMy: "ပြေးနေသောကျားသစ်။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w18-dm4",
          termEn: "Slow",
          termMy: "နှေး",
          matchEn: "A tortoise crossing the garden.",
          matchMy: "ဥယျာဉ်ကို ဖြတ်ကျော်နေသောလိပ်။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w18-dm5",
          termEn: "Friendly",
          termMy: "ဖော်ရွေ",
          matchEn: "A puppy that licks your hand.",
          matchMy: "သင့်လက်ကို လျက်တတ်သောခွေးကလေး။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w18-dm6",
          termEn: "Loud",
          termMy: "အသံကျယ်",
          matchEn: "A lion's big roar.",
          matchMy: "ခြင်္သေ့၏ ကြီးမားသောဟောက်သံ။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w18-d3",
      dayNumber: 3,
      titleEn: "Sort: People Words or Animal Words?",
      titleMy: "စီစဉ်ခြင်း - လူဖော်ပြချက်လား၊ တိရစ္ဆာန်ဖော်ပြချက်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Describes People", "Describes Animals"],
        bucketsMy: ["လူကို ဖော်ပြသည်", "တိရစ္ဆာန်ကို ဖော်ပြသည်"],
        items: [
          SortingItem(
            id: "y1eng-w18-sort1",
            labelEn: "Tall teacher",
            labelMy: "မြင့်သောဆရာ",
            correctBucketEn: "Describes People",
            correctBucketMy: "လူကို ဖော်ပြသည်",
          ),
          SortingItem(
            id: "y1eng-w18-sort2",
            labelEn: "Fast cheetah",
            labelMy: "မြန်သောကျားသစ်",
            correctBucketEn: "Describes Animals",
            correctBucketMy: "တိရစ္ဆာန်ကို ဖော်ပြသည်",
          ),
          SortingItem(
            id: "y1eng-w18-sort3",
            labelEn: "Kind grandmother",
            labelMy: "ကြင်နာသောအဖွား",
            correctBucketEn: "Describes People",
            correctBucketMy: "လူကို ဖော်ပြသည်",
          ),
          SortingItem(
            id: "y1eng-w18-sort4",
            labelEn: "Slow tortoise",
            labelMy: "နှေးသောလိပ်",
            correctBucketEn: "Describes Animals",
            correctBucketMy: "တိရစ္ဆာန်ကို ဖော်ပြသည်",
          ),
          SortingItem(
            id: "y1eng-w18-sort5",
            labelEn: "Friendly puppy",
            labelMy: "ဖော်ရွေသောခွေးကလေး",
            correctBucketEn: "Describes Animals",
            correctBucketMy: "တိရစ္ဆာန်ကို ဖော်ပြသည်",
          ),
          SortingItem(
            id: "y1eng-w18-sort6",
            labelEn: "Short boy",
            labelMy: "ပုသောယောက်ျားလေး",
            correctBucketEn: "Describes People",
            correctBucketMy: "လူကို ဖော်ပြသည်",
          ),
          SortingItem(
            id: "y1eng-w18-sort7",
            labelEn: "Loud lion",
            labelMy: "အသံကျယ်သောခြင်္သေ့",
            correctBucketEn: "Describes Animals",
            correctBucketMy: "တိရစ္ဆာန်ကို ဖော်ပြသည်",
          ),
          SortingItem(
            id: "y1eng-w18-sort8",
            labelEn: "Happy girl",
            labelMy: "ပျော်ရွှင်သောမိန်းကလေး",
            correctBucketEn: "Describes People",
            correctBucketMy: "လူကို ဖော်ပြသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w18-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi and the Farm Animals",
      titleMy: "စာဖတ်ခြင်း - နေချည်နှင့် တောင်သူ့တိရစ္ဆာန်များ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi and the Farm Animals",
        titleMy: "နေချည်နှင့် တောင်သူ့တိရစ္ဆာန်များ",
        passageEn:
            "Nay Chi went to visit her uncle's farm. Nay Chi saw a tall horse standing by the fence. The horse was friendly and let Nay Chi pat its nose. Then Nay Chi saw a short, fat pig in the mud. The pig was slow and sleepy. A fast little dog ran past, barking loudly. Nay Chi laughed and ran after the dog. Last, Nay Chi met a fluffy, gentle sheep. The sheep was calm and quiet. Nay Chi loved every animal on the farm.",
        passageMy:
            "နေချည်သည် ဦးလေး၏ တောင်ယာသို့ သွားရောက်လည်ပတ်သည်။ နေချည်သည် စည်းရိုးအနီးရှိ မြင့်သောမြင်းတစ်ကောင်ကို မြင်သည်။ မြင်းသည် ဖော်ရွေပြီး နေချည်ကို နှာခေါင်းကို ပွတ်ခွင့်ပြုသည်။ ထို့နောက် ရွှံ့ထဲရှိ ပုပြီး ဝသောဝက်တစ်ကောင်ကို မြင်သည်။ ဝက်သည် နှေးကွေးပြီး အိပ်ချင်နေသည်။ မြန်သောခွေးလေးတစ်ကောင် အသံကျယ်စွာ ဟောင်ရင်း ပြေးဖြတ်သွားသည်။ နေချည် ရယ်ကာ ခွေးလေးကို လိုက်ပြေးသည်။ နောက်ဆုံးတွင် နေချည်သည် အမွှေးထူပြီး နူးညံ့သောသိုးတစ်ကောင်ကို တွေ့သည်။ သိုးသည် တည်ငြိမ်ပြီး ငြိမ်သက်သည်။ နေချည်သည် တောင်ယာရှိ တိရစ္ဆာန်တိုင်းကို နှစ်သက်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What word describes the horse Nay Chi saw?",
            questionMy: "နေချည်တွေ့သောမြင်းကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
            optionsEn: [
              "Tall and friendly",
              "Short and fast",
              "Loud and sad",
              "Small and slow",
            ],
            optionsMy: [
              "မြင့်ပြီး ဖော်ရွေ",
              "ပုပြီး မြန်",
              "အသံကျယ်ပြီး ဝမ်းနည်း",
              "သေးပြီး နှေး",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How did the pig look and act?",
            questionMy: "ဝက်သည် ဘယ်လို ရုပ်ဆင်းနှင့် အပြုအမူ ရှိသနည်း။",
            optionsEn: [
              "Short, fat, and slow",
              "Tall, thin, and fast",
              "Small and loud",
              "Big and friendly",
            ],
            optionsMy: [
              "ပု၊ ဝ၊ နှေး",
              "မြင့်၊ ပိန်၊ မြန်",
              "သေးပြီး အသံကျယ်",
              "ကြီးပြီး ဖော်ရွေ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did the little dog do?",
            questionMy: "ခွေးလေးသည် ဘာလုပ်ခဲ့သနည်း။",
            optionsEn: [
              "Ran fast and barked loudly",
              "Slept in the mud",
              "Stood by the fence",
              "Ate quietly",
            ],
            optionsMy: [
              "မြန်စွာပြေးပြီး အသံကျယ်စွာဟောင်သည်",
              "ရွှံ့ထဲအိပ်နေသည်",
              "စည်းရိုးအနီးရပ်နေသည်",
              "တိတ်တိတ်စားသည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What word describes the sheep Nay Chi met last?",
            questionMy:
                "နေချည် နောက်ဆုံးတွေ့သောသိုးကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
            optionsEn: [
              "Calm and quiet",
              "Fast and loud",
              "Short and sad",
              "Tall and angry",
            ],
            optionsMy: [
              "တည်ငြိမ်ပြီး ငြိမ်သက်",
              "မြန်ပြီး အသံကျယ်",
              "ပုပြီး ဝမ်းနည်း",
              "မြင့်ပြီး ဒေါသထွက်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w18-d5",
      dayNumber: 5,
      titleEn: "Recap: People and Animals",
      titleMy: "ပြန်လည်သုံးသပ်ခြင်း - လူနှင့် တိရစ္ဆာန်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which word describes someone who can reach a high shelf easily?",
          questionMy:
              "အမြင့်စင်ကို လွယ်ကူစွာ လက်လှမ်းမီသူကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Tall", "Short", "Slow", "Sad"],
          optionsMy: ["မြင့်", "ပု", "နှေး", "ဝမ်းနည်း"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word describes a cheetah running a race?",
          questionMy:
              "ပြိုင်ပွဲတွင် ပြေးနေသောကျားသစ်ကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Fast", "Slow", "Short", "Loud"],
          optionsMy: ["မြန်", "နှေး", "ပု", "အသံကျယ်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, which animal was slow and sleepy in the mud?",
          questionMy:
              "စာဖတ်အပိုင်းတွင် ရွှံ့ထဲ၌ နှေးကွေးပြီး အိပ်ချင်နေသောတိရစ္ဆာန်က ဘာလဲ။",
          optionsEn: ["The pig", "The horse", "The dog", "The sheep"],
          optionsMy: ["ဝက်", "မြင်း", "ခွေး", "သိုး"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word means the opposite of \"tall\"?",
          questionMy: "\"မြင့်\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Short", "Fast", "Loud", "Happy"],
          optionsMy: ["ပု", "မြန်", "အသံကျယ်", "ပျော်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, what kind of animal did Nay Chi meet last, and how did it act?",
          questionMy:
              "စာဖတ်အပိုင်းတွင် နေချည် နောက်ဆုံးတွေ့သောတိရစ္ဆာန်က ဘာဖြစ်ပြီး ဘယ်လိုပြုမူသနည်း။",
          optionsEn: [
            "A calm, quiet sheep",
            "A fast, loud dog",
            "A tall, friendly horse",
            "A short, fat pig",
          ],
          optionsMy: [
            "တည်ငြိမ်၍ ငြိမ်သက်သောသိုး",
            "မြန်ပြီး အသံကျယ်သောခွေး",
            "မြင့်ပြီး ဖော်ရွေသောမြင်း",
            "ပုပြီး ဝသောဝက်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 19: "Describing Places"
// =====================================================================

const CourseWeekDef _year1EnglishWeek19 = CourseWeekDef(
  id: "course-year1-english-w19",
  weekNumber: 19,
  titleEn: "Describing Places",
  titleMy: "နေရာများ ဖော်ပြခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w19-d1",
      dayNumber: 1,
      titleEn: "Noisy, Quiet, Clean, Messy",
      titleMy: "အသံကျယ်၊ တိတ်ဆိတ်၊ သန့်ရှင်း၊ ရှုပ်ပွ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Moe Moe's classroom is full of children talking and laughing loudly. Which word describes the classroom?",
          questionMy:
              "မိုးမိုး၏ စာသင်ခန်းတွင် ကလေးများ အသံကျယ်စွာ ပြောဆိုရယ်မောနေကြသည်။ စာသင်ခန်းကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Noisy", "Quiet", "Clean", "Small"],
          optionsMy: ["အသံကျယ်", "တိတ်ဆိတ်", "သန့်ရှင်း", "သေး"],
          correctIndex: 0,
          hintsEn: [
            "A place full of loud talking and laughing is...",
            "The opposite of \"quiet\" is...",
          ],
          hintsMy: [
            "ကျယ်လောင်စွာ ပြောဆိုရယ်မောနေသောနေရာက...",
            "\"တိတ်ဆိတ်\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက...",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi's library has no one talking, so it is very calm and silent. Which word describes the library?",
          questionMy:
              "နေချည်၏ စာကြည့်တိုက်တွင် ဘယ်သူမှ မပြောဆိုသဖြင့် အလွန်တည်ငြိမ်ငြိမ်သက်သည်။ စာကြည့်တိုက်ကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Quiet", "Noisy", "Messy", "Big"],
          optionsMy: ["တိတ်ဆိတ်", "အသံကျယ်", "ရှုပ်ပွ", "ကြီး"],
          correctIndex: 0,
          hintsEn: [
            "A place with no loud sound is...",
            "The opposite of \"noisy\" is...",
          ],
          hintsMy: [
            "ကျယ်လောင်သောအသံ မရှိသောနေရာက...",
            "\"အသံကျယ်\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက...",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Htet Htet's bedroom has toys and books everywhere on the floor. Which word describes the bedroom?",
          questionMy:
              "ထက်ထက်၏ အိပ်ခန်းတွင် ကစားစရာနှင့် စာအုပ်များ ကြမ်းပြင်ပေါ် အနှံ့ကျဲနေသည်။ အိပ်ခန်းကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Messy", "Clean", "Quiet", "Tall"],
          optionsMy: ["ရှုပ်ပွ", "သန့်ရှင်း", "တိတ်ဆိတ်", "မြင့်"],
          correctIndex: 0,
          hintsEn: [
            "A place with things scattered everywhere is...",
            "The opposite of \"clean\" is...",
          ],
          hintsMy: [
            "ပစ္စည်းများ အနှံ့ကျဲနေသောနေရာက...",
            "\"သန့်ရှင်း\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက...",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Moe Moe's kitchen has every dish washed and put away neatly. Which word describes the kitchen?",
          questionMy:
              "မိုးမိုး၏ မီးဖိုချောင်တွင် ပန်းကန်ပြားများအားလုံး ဆေးပြီး သေသေသပ်သပ် ထားရှိသည်။ မီးဖိုချောင်ကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Clean", "Messy", "Noisy", "Small"],
          optionsMy: ["သန့်ရှင်း", "ရှုပ်ပွ", "အသံကျယ်", "သေး"],
          correctIndex: 0,
          hintsEn: [
            "A place with everything neat and tidy is...",
            "The opposite of \"messy\" is...",
          ],
          hintsMy: [
            "အရာအားလုံးကို သေချာသပ်ရပ်စွာ ထားရှိသောနေရာက...",
            "\"ရှုပ်ပွ\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက...",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w19-d2",
      dayNumber: 2,
      titleEn: "Match: Describing Places",
      titleMy: "ကိုက်ညီစွာ တွဲချိတ်ခြင်း - နေရာဖော်ပြချက်များ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w19-dm1",
          termEn: "Noisy",
          termMy: "အသံကျယ်",
          matchEn: "A classroom full of loud talking.",
          matchMy: "အသံကျယ်စွာ ပြောဆိုနေသောစာသင်ခန်း။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w19-dm2",
          termEn: "Quiet",
          termMy: "တိတ်ဆိတ်",
          matchEn: "A library with no one talking.",
          matchMy: "ဘယ်သူမှ မပြောသောစာကြည့်တိုက်။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w19-dm3",
          termEn: "Clean",
          termMy: "သန့်ရှင်း",
          matchEn: "A kitchen with everything washed and neat.",
          matchMy: "အားလုံးဆေးပြီး သေသပ်သောမီးဖိုချောင်။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w19-dm4",
          termEn: "Messy",
          termMy: "ရှုပ်ပွ",
          matchEn: "A bedroom with toys everywhere.",
          matchMy: "ကစားစရာများ အနှံ့ကျဲနေသောအိပ်ခန်း။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w19-dm5",
          termEn: "Crowded",
          termMy: "လူထူထပ်",
          matchEn: "A market full of many people.",
          matchMy: "လူအများကြီးရှိသောစျေး။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w19-dm6",
          termEn: "Empty",
          termMy: "လူမရှိ",
          matchEn: "A playground with no one on it.",
          matchMy: "ဘယ်သူမှ မရှိသောကစားကွင်း။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w19-d3",
      dayNumber: 3,
      titleEn: "Sort: Loud Places or Calm Places?",
      titleMy: "စီစဉ်ခြင်း - အသံကျယ်သောနေရာလား၊ တိတ်ဆိတ်သောနေရာလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Loud Place", "Calm Place"],
        bucketsMy: ["အသံကျယ်သောနေရာ", "တိတ်ဆိတ်သောနေရာ"],
        items: [
          SortingItem(
            id: "y1eng-w19-sort1",
            labelEn: "Noisy classroom",
            labelMy: "အသံကျယ်သောစာသင်ခန်း",
            correctBucketEn: "Loud Place",
            correctBucketMy: "အသံကျယ်သောနေရာ",
          ),
          SortingItem(
            id: "y1eng-w19-sort2",
            labelEn: "Quiet library",
            labelMy: "တိတ်ဆိတ်သောစာကြည့်တိုက်",
            correctBucketEn: "Calm Place",
            correctBucketMy: "တိတ်ဆိတ်သောနေရာ",
          ),
          SortingItem(
            id: "y1eng-w19-sort3",
            labelEn: "Crowded market",
            labelMy: "လူထူထပ်သောစျေး",
            correctBucketEn: "Loud Place",
            correctBucketMy: "အသံကျယ်သောနေရာ",
          ),
          SortingItem(
            id: "y1eng-w19-sort4",
            labelEn: "Sleepy bedroom at night",
            labelMy: "ညအချိန် အိပ်ငိုက်နေသောအိပ်ခန်း",
            correctBucketEn: "Calm Place",
            correctBucketMy: "တိတ်ဆိတ်သောနေရာ",
          ),
          SortingItem(
            id: "y1eng-w19-sort5",
            labelEn: "Busy playground",
            labelMy: "လှုပ်ရှားနေသောကစားကွင်း",
            correctBucketEn: "Loud Place",
            correctBucketMy: "အသံကျယ်သောနေရာ",
          ),
          SortingItem(
            id: "y1eng-w19-sort6",
            labelEn: "Empty temple hall",
            labelMy: "လူမရှိသောဘုရားကျောင်းခန်းမ",
            correctBucketEn: "Calm Place",
            correctBucketMy: "တိတ်ဆိတ်သောနေရာ",
          ),
          SortingItem(
            id: "y1eng-w19-sort7",
            labelEn: "Traffic street",
            labelMy: "ယာဉ်ကြောများသောလမ်း",
            correctBucketEn: "Loud Place",
            correctBucketMy: "အသံကျယ်သောနေရာ",
          ),
          SortingItem(
            id: "y1eng-w19-sort8",
            labelEn: "Peaceful garden",
            labelMy: "ငြိမ်းချမ်းသောဥယျာဉ်",
            correctBucketEn: "Calm Place",
            correctBucketMy: "တိတ်ဆိတ်သောနေရာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w19-d4",
      dayNumber: 4,
      titleEn: "Reading: Htet Htet's Two Favourite Places",
      titleMy: "စာဖတ်ခြင်း - ထက်ထက်၏ အကြိုက်ဆုံးနေရာနှစ်ခု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Htet Htet's Two Favourite Places",
        titleMy: "ထက်ထက်၏ အကြိုက်ဆုံးနေရာနှစ်ခု",
        passageEn:
            "Htet Htet has two favourite places. The first place is the playground. The playground is noisy and crowded. Children shout and run and swing on the swings. Htet Htet loves playing there in the morning. The second place is the school library. The library is quiet and clean. No one shouts inside. Books sit neatly on the shelves. Htet Htet loves reading there in the afternoon. Htet Htet says both places make her happy, just in different ways.",
        passageMy:
            "ထက်ထက်တွင် အကြိုက်ဆုံးနေရာနှစ်ခု ရှိသည်။ ပထမနေရာမှာ ကစားကွင်းဖြစ်သည်။ ကစားကွင်းသည် အသံကျယ်ပြီး လူထူထပ်သည်။ ကလေးများ အော်ဟစ်ပြေးလွှား၍ လွန်ခြင်စီးကြသည်။ ထက်ထက်သည် မနက်ခင်းတွင် ထိုနေရာ၌ ကစားရသည်ကို ကြိုက်သည်။ ဒုတိယနေရာမှာ ကျောင်း၏ စာကြည့်တိုက်ဖြစ်သည်။ စာကြည့်တိုက်သည် တိတ်ဆိတ်ပြီး သန့်ရှင်းသည်။ အထဲတွင် ဘယ်သူမှ အော်ဟစ်ကြသည်မဟုတ်။ စာအုပ်များသည် စင်ပေါ်တွင် သေချာစွာ ရှိနေသည်။ ထက်ထက်သည် နေ့လည်ခင်းတွင် ထိုနေရာ၌ စာဖတ်ရသည်ကို ကြိုက်သည်။ ထက်ထက်က နေရာနှစ်ခုစလုံးသည် သူမကို မတူညီသောနည်းလမ်းများဖြင့် ပျော်စေကြောင်း ပြောသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "Which word describes the playground?",
            questionMy: "ကစားကွင်းကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
            optionsEn: [
              "Noisy and crowded",
              "Quiet and clean",
              "Small and sad",
              "Tall and empty",
            ],
            optionsMy: [
              "အသံကျယ်ပြီး လူထူထပ်",
              "တိတ်ဆိတ်ပြီး သန့်ရှင်း",
              "သေးပြီး ဝမ်းနည်း",
              "မြင့်ပြီး လူမရှိ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Which word describes the school library?",
            questionMy: "ကျောင်း၏ စာကြည့်တိုက်ကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
            optionsEn: [
              "Quiet and clean",
              "Noisy and messy",
              "Big and loud",
              "Crowded and dirty",
            ],
            optionsMy: [
              "တိတ်ဆိတ်ပြီး သန့်ရှင်း",
              "အသံကျယ်ပြီး ရှုပ်ပွ",
              "ကြီးပြီး အသံကျယ်",
              "လူထူထပ်ပြီး ညစ်ပတ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "When does Htet Htet love playing at the playground?",
            questionMy:
                "ထက်ထက်သည် ကစားကွင်းတွင် ဘယ်အချိန် ကစားရသည်ကို ကြိုက်သနည်း။",
            optionsEn: [
              "In the morning",
              "In the afternoon",
              "At night",
              "On the weekend",
            ],
            optionsMy: ["မနက်ခင်း", "နေ့လည်ခင်း", "ညအချိန်", "စနေ၊တနင်္ဂနွေ"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to the passage, how do the two places make Htet Htet feel?",
            questionMy:
                "စာဖတ်အပိုင်းအရ နေရာနှစ်ခုစလုံးက ထက်ထက်ကို ဘယ်လိုခံစားစေသနည်း။",
            optionsEn: [
              "Happy, in different ways",
              "Sad and scared",
              "Bored and tired",
              "Angry and loud",
            ],
            optionsMy: [
              "မတူညီသောနည်းလမ်းများဖြင့် ပျော်ရွှင်စေသည်",
              "ဝမ်းနည်းပြီး ကြောက်စေသည်",
              "ငြီးငွေ့ပြီး ပင်ပန်းစေသည်",
              "ဒေါသထွက်ပြီး အသံကျယ်စေသည်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w19-d5",
      dayNumber: 5,
      titleEn: "Recap: Describing Places",
      titleMy: "ပြန်လည်သုံးသပ်ခြင်း - နေရာများ ဖော်ပြခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which word describes a place full of loud talking?",
          questionMy:
              "ကျယ်လောင်စွာ ပြောဆိုနေသောနေရာကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Noisy", "Quiet", "Clean", "Tall"],
          optionsMy: ["အသံကျယ်", "တိတ်ဆိတ်", "သန့်ရှင်း", "မြင့်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which word describes a room with everything neat and washed?",
          questionMy:
              "အားလုံးသေချာ၍ ဆေးကြောပြီးသောအခန်းကို ဖော်ပြသည့်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Clean", "Messy", "Noisy", "Fast"],
          optionsMy: ["သန့်ရှင်း", "ရှုပ်ပွ", "အသံကျယ်", "မြန်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, which place did Htet Htet describe as quiet and clean?",
          questionMy:
              "စာဖတ်အပိုင်းတွင် ထက်ထက်က တိတ်ဆိတ်ပြီး သန့်ရှင်းသည်ဟု ဖော်ပြခဲ့သောနေရာက ဘာလဲ။",
          optionsEn: [
            "The school library",
            "The playground",
            "The market",
            "The street",
          ],
          optionsMy: ["ကျောင်း၏ စာကြည့်တိုက်", "ကစားကွင်း", "စျေး", "လမ်း"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word means the opposite of \"noisy\"?",
          questionMy: "\"အသံကျယ်\" ၏ ဆန့်ကျင်ဘက်စကားလုံးက ဘာလဲ။",
          optionsEn: ["Quiet", "Messy", "Crowded", "Fast"],
          optionsMy: ["တိတ်ဆိတ်", "ရှုပ်ပွ", "လူထူထပ်", "မြန်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, when did Htet Htet love playing at the noisy, crowded playground?",
          questionMy:
              "စာဖတ်အပိုင်းတွင် ထက်ထက်သည် အသံကျယ်၍ လူထူထပ်သောကစားကွင်းတွင် ဘယ်အချိန် ကစားရသည်ကို ကြိုက်ခဲ့သနည်း။",
          optionsEn: [
            "In the morning",
            "In the afternoon",
            "At midnight",
            "Never",
          ],
          optionsMy: ["မနက်ခင်း", "နေ့လည်ခင်း", "သန်းခေါင်ယံ", "ဘယ်တော့မှ"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 20 (Boss Week): "Describe and Guess"
// =====================================================================

const CourseWeekDef _year1EnglishWeek20 = CourseWeekDef(
  id: "course-year1-english-w20",
  weekNumber: 20,
  titleEn: "Describe and Guess",
  titleMy: "ဖော်ပြပြီး ခန့်မှန်းခြင်း",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w20-d1",
      dayNumber: 1,
      titleEn: "Guess the Thing",
      titleMy: "အရာဝတ္ထုကို ခန့်မှန်းပါ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Moe Moe says, \"I am big and red. I am a fruit that grows on a tree.\" What is Moe Moe describing?",
          questionMy:
              "မိုးမိုးက \"ကျွန်မသည် ကြီးပြီး အနီရောင်ဖြစ်သည်။ သစ်ပင်ပေါ်တွင် ပေါက်သောအသီးဖြစ်သည်\" ဟု ပြောသည်။ မိုးမိုးက ဘာကို ဖော်ပြနေသနည်း။",
          optionsEn: ["An apple", "A pea", "A blueberry", "A leaf"],
          optionsMy: ["ပန်းသီး", "ပဲစေ့", "ဘလူးဘယ်ရီ", "အရွက်"],
          correctIndex: 0,
          hintsEn: [
            "Think of a big, red fruit that grows on a tree.",
            "It starts with the letter \"A\" and keeps the doctor away!",
          ],
          hintsMy: [
            "သစ်ပင်ပေါ်တွင် ပေါက်သော ကြီးပြီးအနီရောင်အသီးကို စဉ်းစားပါ။",
            "\"A\" ဖြင့် စတင်သည့် ကျန်းမာရေးနှင့်ကောင်းသောအသီး!",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi says, \"I am small and quiet. I have a soft, furry body and I say meow.\" What is Nay Chi describing?",
          questionMy:
              "နေချည်က \"ကျွန်မသည် သေးငယ်ပြီး တိတ်ဆိတ်သည်။ နူးညံ့သော အမွှေးထူကိုယ်ခန္ဓာရှိပြီး မျောင်းမျောင်းဟု အော်တတ်သည်\" ဟု ပြောသည်။ နေချည်က ဘာကို ဖော်ပြနေသနည်း။",
          optionsEn: ["A cat", "An elephant", "A cow", "A fish"],
          optionsMy: ["ကြောင်", "ဆင်", "နွား", "ငါး"],
          correctIndex: 0,
          hintsEn: [
            "Think of a small, soft, furry animal that people keep as a pet.",
            "This animal says \"meow\".",
          ],
          hintsMy: [
            "အိမ်မွေးတိရစ္ဆာန်အဖြစ် ထားတတ်သော သေးငယ်ပြီး နူးညံ့သောတိရစ္ဆာန်ကို စဉ်းစားပါ။",
            "ဤတိရစ္ဆာန်သည် \"မျောင်းမျောင်း\" ဟုအော်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Htet Htet says, \"I am tall and I am covered in green leaves. Birds like to sit on my branches.\" What is Htet Htet describing?",
          questionMy:
              "ထက်ထက်က \"ကျွန်မသည် မြင့်ပြီး အစိမ်းရောင်အရွက်များဖြင့် ဖုံးလွှမ်းနေသည်။ ငှက်များသည် ကျွန်မ၏ အကိုင်းများပေါ် ထိုင်ရန်ကြိုက်သည်\" ဟု ပြောသည်။ ထက်ထက်က ဘာကို ဖော်ပြနေသနည်း။",
          optionsEn: ["A tree", "A car", "A house", "A river"],
          optionsMy: ["သစ်ပင်", "ကား", "အိမ်", "မြစ်"],
          correctIndex: 0,
          hintsEn: [
            "Think of something tall with green leaves and branches.",
            "Birds build their nests in this tall, leafy thing.",
          ],
          hintsMy: [
            "အစိမ်းရောင်အရွက်နှင့် အကိုင်းများရှိသော မြင့်သောအရာကို စဉ်းစားပါ။",
            "ငှက်များ အသိုက်ဆောက်တတ်သော မြင့်ပြီးအရွက်ထူသောအရာ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Moe Moe says, \"I am small, fast, and buzzy. I am yellow and black, and I make honey.\" What is Moe Moe describing?",
          questionMy:
              "မိုးမိုးက \"ကျွန်မသည် သေးငယ်ပြီး မြန်ဆန်ကာ ဗုတ်ဗုတ်မြည်သည်။ ဝါရောင်နှင့် အမည်းရောင်ရှိပြီး ပျားရည်ကို ထုတ်လုပ်သည်\" ဟု ပြောသည်။ မိုးမိုးက ဘာကို ဖော်ပြနေသနည်း။",
          optionsEn: ["A bee", "A cat", "A tree", "A house"],
          optionsMy: ["ပျား", "ကြောင်", "သစ်ပင်", "အိမ်"],
          correctIndex: 0,
          hintsEn: [
            "Think of a small, buzzing insect that is yellow and black.",
            "This insect makes honey!",
          ],
          hintsMy: [
            "ဝါရောင်နှင့် အမည်းရောင်ရှိသော ဗုတ်ဗုတ်မြည်သောပိုးမွှားကို စဉ်းစားပါ။",
            "ဤပိုးမွှားသည် ပျားရည်ထုတ်သည်!",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w20-d2",
      dayNumber: 2,
      titleEn: "Match: Clues to Answers",
      titleMy: "ကိုက်ညီစွာ တွဲချိတ်ခြင်း - အရိပ်အမြွက်နှင့် အဖြေများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w20-dm1",
          termEn: "Big, red, and grows on a tree",
          termMy: "ကြီး၊ အနီရောင်၊ သစ်ပင်ပေါ် ပေါက်သည်",
          matchEn: "An apple",
          matchMy: "ပန်းသီး",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w20-dm2",
          termEn: "Small, soft, and says meow",
          termMy: "သေး၊ နူးညံ့၊ မျောင်းမျောင်းအော်သည်",
          matchEn: "A cat",
          matchMy: "ကြောင်",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w20-dm3",
          termEn: "Tall, green, and covered in leaves",
          termMy: "မြင့်၊ အစိမ်းရောင်၊ အရွက်များဖြင့် ဖုံးလွှမ်း",
          matchEn: "A tree",
          matchMy: "သစ်ပင်",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w20-dm4",
          termEn: "Small, fast, and buzzy",
          termMy: "သေး၊ မြန်၊ ဗုတ်ဗုတ်မြည်",
          matchEn: "A bee",
          matchMy: "ပျား",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w20-dm5",
          termEn: "Noisy and crowded with running children",
          termMy: "အသံကျယ်ပြီး ကလေးများ ပြေးလွှားနေသောနေရာ",
          matchEn: "A playground",
          matchMy: "ကစားကွင်း",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w20-dm6",
          termEn: "Quiet and clean with neat books",
          termMy: "တိတ်ဆိတ်ပြီး သန့်ရှင်းကာ စာအုပ်များ သေသပ်",
          matchEn: "A library",
          matchMy: "စာကြည့်တိုက်",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w20-d3",
      dayNumber: 3,
      titleEn: "Sort: Clue Type",
      titleMy: "စီစဉ်ခြင်း - အရိပ်အမြွက် အမျိုးအစား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Size, Colour, or Feeling Clue",
          "Person, Animal, or Place Clue",
        ],
        bucketsMy: [
          "အရွယ်အစား/အရောင်/ခံစားချက် အရိပ်အမြွက်",
          "လူ/တိရစ္ဆာန်/နေရာ အရိပ်အမြွက်",
        ],
        items: [
          SortingItem(
            id: "y1eng-w20-sort1",
            labelEn: "I am big and red",
            labelMy: "ကျွန်မသည် ကြီးပြီး အနီရောင်ဖြစ်သည်",
            correctBucketEn: "Size, Colour, or Feeling Clue",
            correctBucketMy: "အရွယ်အစား/အရောင်/ခံစားချက် အရိပ်အမြွက်",
          ),
          SortingItem(
            id: "y1eng-w20-sort2",
            labelEn: "I say meow and I am furry",
            labelMy: "ကျွန်မသည် မျောင်းမျောင်းအော်ပြီး အမွှေးထူသည်",
            correctBucketEn: "Person, Animal, or Place Clue",
            correctBucketMy: "လူ/တိရစ္ဆာန်/နေရာ အရိပ်အမြွက်",
          ),
          SortingItem(
            id: "y1eng-w20-sort3",
            labelEn: "I am quiet and clean",
            labelMy: "ကျွန်မသည် တိတ်ဆိတ်ပြီး သန့်ရှင်းသည်",
            correctBucketEn: "Size, Colour, or Feeling Clue",
            correctBucketMy: "အရွယ်အစား/အရောင်/ခံစားချက် အရိပ်အမြွက်",
          ),
          SortingItem(
            id: "y1eng-w20-sort4",
            labelEn: "I am a tall tree full of birds",
            labelMy: "ကျွန်မသည် ငှက်များနှင့် ပြည့်နေသော မြင့်သောသစ်ပင်ဖြစ်သည်",
            correctBucketEn: "Person, Animal, or Place Clue",
            correctBucketMy: "လူ/တိရစ္ဆာန်/နေရာ အရိပ်အမြွက်",
          ),
          SortingItem(
            id: "y1eng-w20-sort5",
            labelEn: "I am happy on my birthday",
            labelMy: "ကျွန်မသည် မွေးနေ့တွင် ပျော်ရွှင်သည်",
            correctBucketEn: "Size, Colour, or Feeling Clue",
            correctBucketMy: "အရွယ်အစား/အရောင်/ခံစားချက် အရိပ်အမြွက်",
          ),
          SortingItem(
            id: "y1eng-w20-sort6",
            labelEn: "I am a noisy, crowded playground",
            labelMy: "ကျွန်မသည် အသံကျယ်ပြီး လူထူထပ်သောကစားကွင်းဖြစ်သည်",
            correctBucketEn: "Person, Animal, or Place Clue",
            correctBucketMy: "လူ/တိရစ္ဆာန်/နေရာ အရိပ်အမြွက်",
          ),
          SortingItem(
            id: "y1eng-w20-sort7",
            labelEn: "I am small and blue",
            labelMy: "ကျွန်မသည် သေးငယ်ပြီး အပြာရောင်ဖြစ်သည်",
            correctBucketEn: "Size, Colour, or Feeling Clue",
            correctBucketMy: "အရွယ်အစား/အရောင်/ခံစားချက် အရိပ်အမြွက်",
          ),
          SortingItem(
            id: "y1eng-w20-sort8",
            labelEn: "I am a fast, friendly puppy",
            labelMy: "ကျွန်မသည် မြန်ပြီး ဖော်ရွေသောခွေးကလေးဖြစ်သည်",
            correctBucketEn: "Person, Animal, or Place Clue",
            correctBucketMy: "လူ/တိရစ္ဆာန်/နေရာ အရိပ်အမြွက်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w20-d4",
      dayNumber: 4,
      titleEn: "Reading: The Guessing Game",
      titleMy: "စာဖတ်ခြင်း - ခန့်မှန်းဂိမ်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The Guessing Game",
        titleMy: "ခန့်မှန်းဂိမ်း",
        passageEn:
            "Moe Moe, Nay Chi, and Htet Htet played a guessing game after school. Moe Moe went first. \"I am big and I am grey. I have a long trunk and big ears,\" said Moe Moe. Nay Chi shouted, \"An elephant!\" Moe Moe smiled and nodded. Next, Nay Chi took a turn. \"I am noisy and crowded. Children run and shout and swing on swings,\" said Nay Chi. Htet Htet laughed and said, \"A playground!\" Nay Chi clapped her hands. Then Htet Htet took the last turn. \"I am small, and I feel happy. I have a red bow and I like to jump,\" said Htet Htet. Moe Moe thought hard, then said, \"A happy little girl!\" All three friends laughed. They played the guessing game until it was time to go home.",
        passageMy:
            "မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့သည် ကျောင်းဆင်းပြီးနောက် ခန့်မှန်းဂိမ်းတစ်ခု ကစားကြသည်။ မိုးမိုးက ဦးစွာစတင်သည်။ \"ကျွန်မသည် ကြီးမားပြီး မီးခိုးရောင်ဖြစ်သည်။ ရှည်လျားသော ခွာနှင့် ကြီးမားသော နားရွက်များ ရှိသည်\" ဟု မိုးမိုးက ပြောသည်။ နေချည်က \"ဆင်ပဲ!\" ဟု အော်ပြောသည်။ မိုးမိုး ပြုံးကာ ခေါင်းညိတ်လိုက်သည်။ ထို့နောက် နေချည်၏ အလှည့်ရောက်သည်။ \"ကျွန်မသည် အသံကျယ်ပြီး လူထူထပ်သည်။ ကလေးများသည် ပြေးလွှားအော်ဟစ်ပြီး လွန်ခြင်စီးကြသည်\" ဟု နေချည်က ပြောသည်။ ထက်ထက် ရယ်ကာ \"ကစားကွင်းပဲ!\" ဟု ပြောသည်။ နေချည် လက်ခုပ်တီးလိုက်သည်။ ထို့နောက် ထက်ထက်၏ နောက်ဆုံးအလှည့် ရောက်သည်။ \"ကျွန်မသည် သေးငယ်ပြီး ပျော်ရွှင်နေသည်။ အနီရောင်ဖဲကြိုးတန်ဆာနှင့် ခုန်ရသည်ကို ကြိုက်သည်\" ဟု ထက်ထက်က ပြောသည်။ မိုးမိုး စဉ်းစားကာ \"ပျော်ရွှင်နေသော မိန်းကလေးလေးပဲ!\" ဟု ပြောသည်။ သူငယ်ချင်းသုံးဦးလုံး ရယ်မောကြသည်။ အိမ်ပြန်ချိန်မတိုင်မီအထိ ခန့်မှန်းဂိမ်းကို ဆက်ကစားခဲ့ကြသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did Moe Moe describe first?",
            questionMy: "မိုးမိုးက ပထမဆုံး ဘာကို ဖော်ပြခဲ့သနည်း။",
            optionsEn: [
              "An elephant",
              "A playground",
              "A little girl",
              "A bee",
            ],
            optionsMy: ["ဆင်", "ကစားကွင်း", "မိန်းကလေးလေး", "ပျား"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Which words did Nay Chi use to describe her turn?",
            questionMy: "နေချည်၏ အလှည့်တွင် ဘယ်စကားလုံးများကို သုံးခဲ့သနည်း။",
            optionsEn: [
              "Noisy and crowded",
              "Quiet and clean",
              "Big and grey",
              "Small and happy",
            ],
            optionsMy: [
              "အသံကျယ်ပြီး လူထူထပ်",
              "တိတ်ဆိတ်ပြီး သန့်ရှင်း",
              "ကြီးပြီး မီးခိုးရောင်",
              "သေးငယ်ပြီး ပျော်ရွှင်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Moe Moe guess for Htet Htet's clue?",
            questionMy:
                "ထက်ထက်၏ အရိပ်အမြွက်အတွက် မိုးမိုးက ဘာဟု ခန့်မှန်းခဲ့သနည်း။",
            optionsEn: [
              "A happy little girl",
              "An elephant",
              "A playground",
              "A tree",
            ],
            optionsMy: [
              "ပျော်ရွှင်နေသော မိန်းကလေးလေး",
              "ဆင်",
              "ကစားကွင်း",
              "သစ်ပင်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to the passage, when did the three friends stop playing the guessing game?",
            questionMy:
                "စာဖတ်အပိုင်းအရ သူငယ်ချင်းသုံးဦးသည် ခန့်မှန်းဂိမ်းကို ဘယ်အချိန်တွင် ရပ်လိုက်ကြသနည်း။",
            optionsEn: [
              "When it was time to go home",
              "When it started to rain",
              "When their teacher called them",
              "When they got hungry",
            ],
            optionsMy: [
              "အိမ်ပြန်ချိန် ရောက်သောအခါ",
              "မိုးရွာစသောအခါ",
              "ဆရာက ခေါ်သောအခါ",
              "ဗိုက်ဆာလာသောအခါ",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w20-d5",
      dayNumber: 5,
      titleEn: "Recap: Describe and Guess",
      titleMy: "ပြန်လည်သုံးသပ်ခြင်း - ဖော်ပြပြီး ခန့်မှန်းခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "\"I am big and red, and I grow on a tree.\" What am I?",
          questionMy:
              "\"ကျွန်မသည် ကြီးပြီး အနီရောင်ဖြစ်ကာ သစ်ပင်ပေါ်တွင် ပေါက်သည်။\" ကျွန်မသည် ဘာဖြစ်သနည်း။",
          optionsEn: ["An apple", "A cat", "A library", "A bee"],
          optionsMy: ["ပန်းသီး", "ကြောင်", "စာကြည့်တိုက်", "ပျား"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "\"I am small, soft, and I say meow.\" What am I?",
          questionMy:
              "\"ကျွန်မသည် သေးငယ်ပြီး နူးညံ့ကာ မျောင်းမျောင်းအော်သည်။\" ကျွန်မသည် ဘာဖြစ်သနည်း။",
          optionsEn: ["A cat", "A tree", "A playground", "An apple"],
          optionsMy: ["ကြောင်", "သစ်ပင်", "ကစားကွင်း", "ပန်းသီး"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "\"I am noisy and crowded, with children running and swinging.\" What am I?",
          questionMy:
              "\"ကျွန်မသည် အသံကျယ်ပြီး လူထူထပ်ကာ ကလေးများ ပြေးလွှားလွန်ခြင်စီးနေကြသည်။\" ကျွန်မသည် ဘာဖြစ်သနည်း။",
          optionsEn: ["A playground", "A library", "A tree", "A bee"],
          optionsMy: ["ကစားကွင်း", "စာကြည့်တိုက်", "သစ်ပင်", "ပျား"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, who guessed \"A happy little girl\"?",
          questionMy:
              "စာဖတ်အပိုင်းတွင် \"ပျော်ရွှင်နေသော မိန်းကလေးလေး\" ဟု ဘယ်သူ ခန့်မှန်းခဲ့သနည်း။",
          optionsEn: ["Moe Moe", "Nay Chi", "Htet Htet", "Their teacher"],
          optionsMy: ["မိုးမိုး", "နေချည်", "ထက်ထက်", "ဆရာမ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, what clue did Nay Chi give that Htet Htet correctly guessed as \"a playground\"?",
          questionMy:
              "စာဖတ်အပိုင်းတွင် ထက်ထက်က \"ကစားကွင်း\" ဟု မှန်ကန်စွာ ခန့်မှန်းနိုင်ရန် နေချည်က ဘယ်အရိပ်အမြွက်ကို ပေးခဲ့သနည်း။",
          optionsEn: [
            "Noisy and crowded, with children running and shouting",
            "Big and grey, with a long trunk",
            "Small and happy, with a red bow",
            "Quiet and clean, with neat books",
          ],
          optionsMy: [
            "အသံကျယ်ပြီး လူထူထပ်ကာ ကလေးများ ပြေးလွှားအော်ဟစ်နေကြသည်",
            "ကြီးမားပြီး မီးခိုးရောင်ဖြစ်ကာ ရှည်လျားသော ခွာရှိသည်",
            "သေးငယ်ပြီး ပျော်ရွှင်ကာ အနီရောင်ဖဲကြိုးတန်ဆာရှိသည်",
            "တိတ်ဆိတ်ပြီး သန့်ရှင်းကာ စာအုပ်များ သေသပ်သည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term wrapper
// =====================================================================

const CourseTermDef _year1EnglishTerm5 = CourseTermDef(
  id: "course-year1-english-t5",
  termNumber: 5,
  titleEn: "Describing Words",
  titleMy: "ဖော်ပြချက် စကားလုံးများ",
  certificateTitleEn: "Describing Words",
  certificateTitleMy: "ဖော်ပြချက် စကားလုံးများ",
  weeks: [
    _year1EnglishWeek17,
    _year1EnglishWeek18,
    _year1EnglishWeek19,
    _year1EnglishWeek20,
  ],
);
