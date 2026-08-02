// =====================================================================
// Year 1 English -- Term 1: "Phonics and Blending Mastery"
// Global weeks 1-4.
//
// Recurring cast (Moe Moe / Nay Chi / Htet Htet) rotates who stars in
// each week's Day-4 reading passage: Week 1 -- Moe Moe, Week 2 -- Nay
// Chi, Week 3 -- Htet Htet, Week 4 (capstone) -- all three together.
// =====================================================================

// =====================================================================
// Week 1: "CVC Word Building"
// =====================================================================

const CourseWeekDef _year1EnglishWeek1 = CourseWeekDef(
  id: "course-year1-english-w1",
  weekNumber: 1,
  titleEn: "CVC Word Building",
  titleMy: "CVC စကားလုံးများ တည်ဆောက်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w1-d1",
      dayNumber: 1,
      titleEn: "Blend the Sounds",
      titleMy: "အသံများ ပေါင်းစပ်ဖတ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Blend these sounds together: /c/ /a/ /t/. What word do they make?",
          questionMy:
              "ဒီအသံများကို ပေါင်းစပ်ကြည့်ပါ - /c/ /a/ /t/။ ဘယ်စကားလုံး ဖြစ်လာမလဲ။",
          optionsEn: ["cat", "cap", "can", "hat"],
          optionsMy: ["cat", "cap", "can", "hat"],
          correctIndex: 0,
          hintsEn: [
            "Say each sound slowly: /c/... /a/... /t/...",
            "Now blend them fast: c-a-t. Say it quickly, like one word.",
          ],
          hintsMy: [
            "တစ်သံချင်းစီကို နှေးနှေးရွတ်ကြည့်ပါ - /c/... /a/... /t/...",
            "အခုတော့ မြန်မြန်ပေါင်းရွတ်ကြည့်ပါ - c-a-t။ စကားလုံးတစ်လုံးလိုပဲ မြန်မြန်ရွတ်ကြည့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Blend these sounds together: /h/ /a/ /t/. What word do they make?",
          questionMy:
              "ဒီအသံများကို ပေါင်းစပ်ကြည့်ပါ - /h/ /a/ /t/။ ဘယ်စကားလုံး ဖြစ်လာမလဲ။",
          optionsEn: ["hat", "hit", "ham", "cap"],
          optionsMy: ["hat", "hit", "ham", "cap"],
          correctIndex: 0,
          hintsEn: [
            "Say each sound slowly: /h/... /a/... /t/...",
            "Now blend them fast: h-a-t. Say it quickly, like one word.",
          ],
          hintsMy: [
            "တစ်သံချင်းစီကို နှေးနှေးရွတ်ကြည့်ပါ - /h/... /a/... /t/...",
            "အခုတော့ မြန်မြန်ပေါင်းရွတ်ကြည့်ပါ - h-a-t။ စကားလုံးတစ်လုံးလိုပဲ မြန်မြန်ရွတ်ကြည့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Blend these sounds together: /d/ /o/ /g/. What word do they make?",
          questionMy:
              "ဒီအသံများကို ပေါင်းစပ်ကြည့်ပါ - /d/ /o/ /g/။ ဘယ်စကားလုံး ဖြစ်လာမလဲ။",
          optionsEn: ["dog", "dig", "dot", "dug"],
          optionsMy: ["dog", "dig", "dot", "dug"],
          correctIndex: 0,
          hintsEn: [
            "Say each sound slowly: /d/... /o/... /g/...",
            "Now blend them fast: d-o-g. Say it quickly, like one word.",
          ],
          hintsMy: [
            "တစ်သံချင်းစီကို နှေးနှေးရွတ်ကြည့်ပါ - /d/... /o/... /g/...",
            "အခုတော့ မြန်မြန်ပေါင်းရွတ်ကြည့်ပါ - d-o-g။ စကားလုံးတစ်လုံးလိုပဲ မြန်မြန်ရွတ်ကြည့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Blend these sounds together: /s/ /u/ /n/. What word do they make?",
          questionMy:
              "ဒီအသံများကို ပေါင်းစပ်ကြည့်ပါ - /s/ /u/ /n/။ ဘယ်စကားလုံး ဖြစ်လာမလဲ။",
          optionsEn: ["sun", "sin", "sat", "run"],
          optionsMy: ["sun", "sin", "sat", "run"],
          correctIndex: 0,
          hintsEn: [
            "Say each sound slowly: /s/... /u/... /n/...",
            "Now blend them fast: s-u-n. Say it quickly, like one word.",
          ],
          hintsMy: [
            "တစ်သံချင်းစီကို နှေးနှေးရွတ်ကြည့်ပါ - /s/... /u/... /n/...",
            "အခုတော့ မြန်မြန်ပေါင်းရွတ်ကြည့်ပါ - s-u-n။ စကားလုံးတစ်လုံးလိုပဲ မြန်မြန်ရွတ်ကြည့်ပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w1-d2",
      dayNumber: 2,
      titleEn: "Match: CVC Words",
      titleMy: "ကိုက်ညီစွာ တွဲချိတ်ခြင်း - CVC စကားလုံးများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w1-dm1",
          termEn: "cat",
          termMy: "cat",
          matchEn: "A furry pet that says meow.",
          matchMy: "မျောင်း ဟစ်တတ်တဲ့ အမွေးများသော အိမ်ချောင်းငယ်လေး။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w1-dm2",
          termEn: "hat",
          termMy: "hat",
          matchEn: "You wear this on your head.",
          matchMy: "ခေါင်းပေါ်တွင် ဆောင်းတဲ့အရာ။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w1-dm3",
          termEn: "rat",
          termMy: "rat",
          matchEn: "A small animal with a long tail that likes cheese.",
          matchMy: "အမြီးရှည်ပြီး ချိစ်ကို နှစ်သက်တဲ့ တိရစ္ဆာန်ငယ်လေး။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w1-dm4",
          termEn: "dog",
          termMy: "dog",
          matchEn: "A pet that barks and wags its tail.",
          matchMy: "ဟောင်တတ်ပြီး အမြီးခါတတ်တဲ့ အိမ်မွေးတိရစ္ဆာန်။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w1-dm5",
          termEn: "sun",
          termMy: "sun",
          matchEn: "It shines brightly in the sky in the daytime.",
          matchMy: "နေ့ခင်းအချိန် ကောင်းကင်တွင် တောက်ပစွာ ထွန်းလင်းနေတဲ့အရာ။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w1-dm6",
          termEn: "pig",
          termMy: "pig",
          matchEn: "A pink farm animal that says oink.",
          matchMy: "ဝက်သံပြုတတ်တဲ့ ပန်းရောင် တောင်သူ့ခြံသား တိရစ္ဆာန်။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w1-d3",
      dayNumber: 3,
      titleEn: "Sort: Middle Sound",
      titleMy: "စီစစ်ကြမည် - အလယ်အသံ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Middle Sound: a", "Middle Sound: Not a"],
        bucketsMy: ["အလယ်အသံ - a", "အလယ်အသံ - a မဟုတ်"],
        items: [
          SortingItem(
            id: "y1eng-w1-sort1",
            labelEn: "cat",
            labelMy: "cat",
            correctBucketEn: "Middle Sound: a",
            correctBucketMy: "အလယ်အသံ - a",
          ),
          SortingItem(
            id: "y1eng-w1-sort2",
            labelEn: "hat",
            labelMy: "hat",
            correctBucketEn: "Middle Sound: a",
            correctBucketMy: "အလယ်အသံ - a",
          ),
          SortingItem(
            id: "y1eng-w1-sort3",
            labelEn: "rat",
            labelMy: "rat",
            correctBucketEn: "Middle Sound: a",
            correctBucketMy: "အလယ်အသံ - a",
          ),
          SortingItem(
            id: "y1eng-w1-sort4",
            labelEn: "bag",
            labelMy: "bag",
            correctBucketEn: "Middle Sound: a",
            correctBucketMy: "အလယ်အသံ - a",
          ),
          SortingItem(
            id: "y1eng-w1-sort5",
            labelEn: "dog",
            labelMy: "dog",
            correctBucketEn: "Middle Sound: Not a",
            correctBucketMy: "အလယ်အသံ - a မဟုတ်",
          ),
          SortingItem(
            id: "y1eng-w1-sort6",
            labelEn: "sun",
            labelMy: "sun",
            correctBucketEn: "Middle Sound: Not a",
            correctBucketMy: "အလယ်အသံ - a မဟုတ်",
          ),
          SortingItem(
            id: "y1eng-w1-sort7",
            labelEn: "pig",
            labelMy: "pig",
            correctBucketEn: "Middle Sound: Not a",
            correctBucketMy: "အလယ်အသံ - a မဟုတ်",
          ),
          SortingItem(
            id: "y1eng-w1-sort8",
            labelEn: "bed",
            labelMy: "bed",
            correctBucketEn: "Middle Sound: Not a",
            correctBucketMy: "အလယ်အသံ - a မဟုတ်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w1-d4",
      dayNumber: 4,
      titleEn: "Reading: Moe Moe's Pets",
      titleMy: "စာဖတ်ခြင်း - မိုးမိုး၏ အိမ်မွေးတိရစ္ဆာန်များ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Moe Moe's Pets",
        titleMy: "မိုးမိုး၏ အိမ်မွေးတိရစ္ဆာန်များ",
        passageEn:
            "Moe Moe has a cat. The cat sat on a mat. Moe Moe has a dog too. The dog ran to Moe Moe. Moe Moe put on a red hat. Moe Moe went out in the hot sun. A rat ran past Moe Moe's feet. Moe Moe said, \"Run, rat, run!\"",
        passageMy:
            "မိုးမိုးမှာ ကြောင်တစ်ကောင် ရှိသည်။ ကြောင်သည် အခင်းပေါ်တွင် ထိုင်နေသည်။ မိုးမိုးမှာ ခွေးတစ်ကောင်လည်း ရှိသေးသည်။ ခွေးသည် မိုးမိုးထံသို့ ပြေးလာသည်။ မိုးမိုးသည် အနီရောင် ဦးထုပ်ကို ဆောင်းလိုက်သည်။ မိုးမိုးသည် အပူပြင်းသော နေရောင်ထဲသို့ ထွက်သွားသည်။ ကြွက်တစ်ကောင်သည် မိုးမိုး၏ ခြေထောက်ရှေ့မှ ပြေးဖြတ်သွားသည်။ မိုးမိုးက \"ပြေး၊ ကြွက်ရေ ပြေး!\" ဟု ပြောလိုက်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What pet did Moe Moe have that sat on a mat?",
            questionMy:
                "မိုးမိုးမှာ ရှိတဲ့ အခင်းပေါ်ထိုင်နေတဲ့ အိမ်မွေးတိရစ္ဆာန်က ဘာလဲ။",
            optionsEn: ["cat", "dog", "rat", "pig"],
            optionsMy: ["cat", "dog", "rat", "pig"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What color hat did Moe Moe wear?",
            questionMy: "မိုးမိုး ဆောင်းထားတဲ့ ဦးထုပ်က ဘယ်အရောင်လဲ။",
            optionsEn: ["red", "blue", "green", "yellow"],
            optionsMy: ["အနီရောင်", "အပြာရောင်", "အစိမ်းရောင်", "အဝါရောင်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What ran past Moe Moe's feet?",
            questionMy: "မိုးမိုး၏ ခြေထောက်ရှေ့မှ ဘာက ပြေးဖြတ်သွားသလဲ။",
            optionsEn: ["a rat", "a dog", "a cat", "a pig"],
            optionsMy: [
              "ကြွက်တစ်ကောင်",
              "ခွေးတစ်ကောင်",
              "ကြောင်တစ်ကောင်",
              "ဝက်တစ်ကောင်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Where did the dog run to?",
            questionMy: "ခွေးက ဘယ်ကို ပြေးသွားသလဲ။",
            optionsEn: ["to Moe Moe", "to the sun", "to the mat", "to the rat"],
            optionsMy: [
              "မိုးမိုးထံသို့",
              "နေရောင်ဆီသို့",
              "အခင်းပေါ်သို့",
              "ကြွက်ဆီသို့",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w1-d5",
      dayNumber: 5,
      titleEn: "Week 1 Recap",
      titleMy: "Week 1 ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Blend /s/ /u/ /n/. What word is it?",
          questionMy: "/s/ /u/ /n/ ကို ပေါင်းစပ်ကြည့်ပါ။ ဘယ်စကားလုံးလဲ။",
          optionsEn: ["sun", "sin", "sat", "run"],
          optionsMy: ["sun", "sin", "sat", "run"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which animal 'says meow' in our matching game?",
          questionMy:
              "ကျွန်ုပ်တို့ ကိုက်ညီရွေးချယ်ရေးဂိမ်းထဲက 'မျောင်း' ဟစ်တဲ့ တိရစ္ဆာန်က ဘယ်တစ်ကောင်လဲ။",
          optionsEn: ["cat", "dog", "pig", "rat"],
          optionsMy: ["cat", "dog", "pig", "rat"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word has the middle sound /a/: 'bag' or 'dog'?",
          questionMy: "ဘယ်စကားလုံးက အလယ်အသံ /a/ ပါလဲ - 'bag' လား 'dog' လား။",
          optionsEn: ["bag", "dog", "sun", "pig"],
          optionsMy: ["bag", "dog", "sun", "pig"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In Moe Moe's story, what did Moe Moe say to the rat?",
          questionMy: "မိုးမိုး၏ ဇာတ်လမ်းထဲမှာ မိုးမိုးက ကြွက်ကို ဘာပြောခဲ့လဲ။",
          optionsEn: [
            "Run, rat, run!",
            "Stop, rat, stop!",
            "Hello, rat!",
            "Go home, rat!",
          ],
          optionsMy: [
            "ပြေး၊ ကြွက်ရေ ပြေး!",
            "ရပ်၊ ကြွက်ရေ ရပ်!",
            "မင်္ဂလာပါ၊ ကြွက်ရေ!",
            "အိမ်ပြန်၊ ကြွက်ရေ!",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is a CVC word?",
          questionMy: "အောက်ပါစကားလုံးများထဲက ဘယ်ဟာက CVC စကားလုံးလဲ။",
          optionsEn: ["cat", "tree", "elephant", "blue"],
          optionsMy: ["cat", "tree", "elephant", "blue"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 2: "Digraph Sounds (sh, ch, th, ck)"
// =====================================================================

const CourseWeekDef _year1EnglishWeek2 = CourseWeekDef(
  id: "course-year1-english-w2",
  weekNumber: 2,
  titleEn: "Digraph Sounds (sh, ch, th, ck)",
  titleMy: "ဒွန်အက္ခရာအသံများ (sh, ch, th, ck)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w2-d1",
      dayNumber: 1,
      titleEn: "Blend the Digraph Sounds",
      titleMy: "ဒွန်အက္ခရာအသံများ ပေါင်းစပ်ဖတ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Blend these sounds together: /sh/ /i/ /p/. What word do they make?",
          questionMy:
              "ဒီအသံများကို ပေါင်းစပ်ကြည့်ပါ - /sh/ /i/ /p/။ ဘယ်စကားလုံး ဖြစ်လာမလဲ။",
          optionsEn: ["ship", "chip", "shop", "sip"],
          optionsMy: ["ship", "chip", "shop", "sip"],
          correctIndex: 0,
          hintsEn: [
            "Two letters, s and h, make one new sound: /sh/.",
            "Now blend all three sounds fast: sh-i-p.",
          ],
          hintsMy: [
            "s နှင့် h အက္ခရာနှစ်လုံးသည် အသံသစ်တစ်ခု ဖြစ်လာသည် - /sh/။",
            "အခုတော့ အသံသုံးခုလုံးကို မြန်မြန်ပေါင်းစပ်ကြည့်ပါ - sh-i-p။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Blend these sounds together: /ch/ /i/ /p/. What word do they make?",
          questionMy:
              "ဒီအသံများကို ပေါင်းစပ်ကြည့်ပါ - /ch/ /i/ /p/။ ဘယ်စကားလုံး ဖြစ်လာမလဲ။",
          optionsEn: ["chip", "ship", "chin", "chop"],
          optionsMy: ["chip", "ship", "chin", "chop"],
          correctIndex: 0,
          hintsEn: [
            "Two letters, c and h, make one new sound: /ch/.",
            "Now blend all three sounds fast: ch-i-p.",
          ],
          hintsMy: [
            "c နှင့် h အက္ခရာနှစ်လုံးသည် အသံသစ်တစ်ခု ဖြစ်လာသည် - /ch/။",
            "အခုတော့ အသံသုံးခုလုံးကို မြန်မြန်ပေါင်းစပ်ကြည့်ပါ - ch-i-p။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Blend these sounds together: /th/ /i/ /n/. What word do they make?",
          questionMy:
              "ဒီအသံများကို ပေါင်းစပ်ကြည့်ပါ - /th/ /i/ /n/။ ဘယ်စကားလုံး ဖြစ်လာမလဲ။",
          optionsEn: ["thin", "chin", "shin", "than"],
          optionsMy: ["thin", "chin", "shin", "than"],
          correctIndex: 0,
          hintsEn: [
            "Two letters, t and h, make one new sound: /th/.",
            "Now blend all three sounds fast: th-i-n.",
          ],
          hintsMy: [
            "t နှင့် h အက္ခရာနှစ်လုံးသည် အသံသစ်တစ်ခု ဖြစ်လာသည် - /th/။",
            "အခုတော့ အသံသုံးခုလုံးကို မြန်မြန်ပေါင်းစပ်ကြည့်ပါ - th-i-n။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Blend these sounds together: /d/ /u/ /ck/. What word do they make?",
          questionMy:
              "ဒီအသံများကို ပေါင်းစပ်ကြည့်ပါ - /d/ /u/ /ck/။ ဘယ်စကားလုံး ဖြစ်လာမလဲ။",
          optionsEn: ["duck", "dock", "deck", "duct"],
          optionsMy: ["duck", "dock", "deck", "duct"],
          correctIndex: 0,
          hintsEn: [
            "Two letters, c and k, make one sound at the end: /ck/.",
            "Now blend all three sounds fast: d-u-ck.",
          ],
          hintsMy: [
            "c နှင့် k အက္ခရာနှစ်လုံးသည် အဆုံးတွင် အသံတစ်ခုတည်း ဖြစ်လာသည် - /ck/။",
            "အခုတော့ အသံသုံးခုလုံးကို မြန်မြန်ပေါင်းစပ်ကြည့်ပါ - d-u-ck။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w2-d2",
      dayNumber: 2,
      titleEn: "Match: Digraph Words",
      titleMy: "ကိုက်ညီစွာ တွဲချိတ်ခြင်း - ဒွန်အက္ခရာစကားလုံးများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w2-dm1",
          termEn: "ship",
          termMy: "ship",
          matchEn: "A big boat that sails on the sea.",
          matchMy: "ပင်လယ်ထဲတွင် ရွက်လွှင့်တဲ့ သင်္ဘောကြီးတစ်စီး။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w2-dm2",
          termEn: "chip",
          termMy: "chip",
          matchEn: "A small piece of food, like a potato chip.",
          matchMy: "အာလူးကြော်လိုမျိုး အစားအစာ အသေးလေးတစ်ခု။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w2-dm3",
          termEn: "thin",
          termMy: "thin",
          matchEn: "Not thick or wide.",
          matchMy: "ထူထူပြောင်ပြောင် (သို့) ကျယ်ကျယ် မဟုတ်ခြင်း။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w2-dm4",
          termEn: "duck",
          termMy: "duck",
          matchEn: "A bird that swims and says quack.",
          matchMy: "ရေကူးတတ်ပြီး ကွတ်ကွတ်ဟစ်တဲ့ ငှက်တစ်ကောင်။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w2-dm5",
          termEn: "shell",
          termMy: "shell",
          matchEn: "The hard cover on a snail or an egg.",
          matchMy: "ခရုသင်း (သို့) ကြက်ဥပေါ်ရှိ မာကျောသော အခွံ။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w2-dm6",
          termEn: "sock",
          termMy: "sock",
          matchEn: "You wear this on your foot before your shoe.",
          matchMy: "ဖိနပ်မဝတ်မီ ခြေထောက်ပေါ်တွင် ဝတ်ဆင်တဲ့အရာ။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w2-d3",
      dayNumber: 3,
      titleEn: "Sort: Where Is the Digraph?",
      titleMy: "စီစစ်ကြမည် - ဒွန်အက္ခရာက ဘယ်မှာလဲ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Digraph at the Start", "Digraph (ck) at the End"],
        bucketsMy: [
          "ဒွန်အက္ခရာ အစတွင်ရှိသည်",
          "ဒွန်အက္ခရာ (ck) အဆုံးတွင်ရှိသည်",
        ],
        items: [
          SortingItem(
            id: "y1eng-w2-sort1",
            labelEn: "ship",
            labelMy: "ship",
            correctBucketEn: "Digraph at the Start",
            correctBucketMy: "ဒွန်အက္ခရာ အစတွင်ရှိသည်",
          ),
          SortingItem(
            id: "y1eng-w2-sort2",
            labelEn: "chip",
            labelMy: "chip",
            correctBucketEn: "Digraph at the Start",
            correctBucketMy: "ဒွန်အက္ခရာ အစတွင်ရှိသည်",
          ),
          SortingItem(
            id: "y1eng-w2-sort3",
            labelEn: "thin",
            labelMy: "thin",
            correctBucketEn: "Digraph at the Start",
            correctBucketMy: "ဒွန်အက္ခရာ အစတွင်ရှိသည်",
          ),
          SortingItem(
            id: "y1eng-w2-sort4",
            labelEn: "shell",
            labelMy: "shell",
            correctBucketEn: "Digraph at the Start",
            correctBucketMy: "ဒွန်အက္ခရာ အစတွင်ရှိသည်",
          ),
          SortingItem(
            id: "y1eng-w2-sort5",
            labelEn: "duck",
            labelMy: "duck",
            correctBucketEn: "Digraph (ck) at the End",
            correctBucketMy: "ဒွန်အက္ခရာ (ck) အဆုံးတွင်ရှိသည်",
          ),
          SortingItem(
            id: "y1eng-w2-sort6",
            labelEn: "sock",
            labelMy: "sock",
            correctBucketEn: "Digraph (ck) at the End",
            correctBucketMy: "ဒွန်အက္ခရာ (ck) အဆုံးတွင်ရှိသည်",
          ),
          SortingItem(
            id: "y1eng-w2-sort7",
            labelEn: "rock",
            labelMy: "rock",
            correctBucketEn: "Digraph (ck) at the End",
            correctBucketMy: "ဒွန်အက္ခရာ (ck) အဆုံးတွင်ရှိသည်",
          ),
          SortingItem(
            id: "y1eng-w2-sort8",
            labelEn: "sack",
            labelMy: "sack",
            correctBucketEn: "Digraph (ck) at the End",
            correctBucketMy: "ဒွန်အက္ခရာ (ck) အဆုံးတွင်ရှိသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w2-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi and the Little Duck",
      titleMy: "စာဖတ်ခြင်း - နေချည်နှင့် ဘဲကလေး",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi and the Little Duck",
        titleMy: "နေချည်နှင့် ဘဲကလေး",
        passageEn:
            "Nay Chi went for a walk by the pond. Nay Chi saw a little duck swim past. The duck was thin but very fast. Nay Chi sat on a rock to watch. Nay Chi had a bag of chips too. A fish popped up with a splash! Nay Chi's sock got wet from the water. \"What fun!\" said Nay Chi, and Nay Chi laughed.",
        passageMy:
            "နေချည်သည် ရေကန်ဘေးတွင် လမ်းလျှောက်ထွက်သွားသည်။ နေချည်သည် ဘဲကလေးတစ်ကောင် ရေကူးဖြတ်သွားသည်ကို မြင်လိုက်သည်။ ဘဲကလေးသည် ပိန်ပိန်ပါးပါးရှိသော်လည်း အလွန်မြန်ဆန်သည်။ နေချည်သည် ကြည့်ရှုရန် ကျောက်တုံးတစ်တုံးပေါ်တွင် ထိုင်ခဲ့သည်။ နေချည်တွင် အာလူးကြော် အိတ်တစ်အိတ် ပါရှိခဲ့သည်။ ငါးတစ်ကောင်သည် ရေဖျန်းသံနှင့်အတူ ပေါ်လာသည်! နေချည်၏ ခြေအိတ်သည် ရေထဲမှ စိုစွတ်သွားသည်။ \"ဒါက ပျော်စရာကောင်းလိုက်တာ!\" ဟု နေချည်က ပြောပြီး ရယ်မောခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did Nay Chi see swim past?",
            questionMy: "နေချည် ရေကူးဖြတ်သွားသည်ကို မြင်ခဲ့ရသည့်အရာက ဘာလဲ။",
            optionsEn: ["a duck", "a fish", "a ship", "a rat"],
            optionsMy: [
              "ဘဲတစ်ကောင်",
              "ငါးတစ်ကောင်",
              "သင်္ဘောတစ်စီး",
              "ကြွက်တစ်ကောင်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Nay Chi sit on?",
            questionMy: "နေချည် ဘာပေါ်တွင် ထိုင်ခဲ့သလဲ။",
            optionsEn: ["a rock", "a sock", "a chip", "a shell"],
            optionsMy: [
              "ကျောက်တုံးတစ်တုံး",
              "ခြေအိတ်တစ်ခု",
              "အာလူးကြော်တစ်ချပ်",
              "အခွံတစ်ခု",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What got wet in the story?",
            questionMy: "ဇာတ်လမ်းထဲတွင် ဘာသည် စိုစွတ်သွားခဲ့သလဲ။",
            optionsEn: [
              "Nay Chi's sock",
              "Nay Chi's hat",
              "the duck's wing",
              "the bag of chips",
            ],
            optionsMy: [
              "နေချည်၏ ခြေအိတ်",
              "နေချည်၏ ဦးထုပ်",
              "ဘဲ၏ အတောင်",
              "အာလူးကြော်အိတ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What snack did Nay Chi have in Nay Chi's bag?",
            questionMy: "နေချည်၏ အိတ်ထဲတွင် ဘယ်သရေစာ ပါခဲ့သလဲ။",
            optionsEn: ["chips", "ship", "shell", "sock"],
            optionsMy: ["အာလူးကြော်", "သင်္ဘော", "အခွံ", "ခြေအိတ်"],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w2-d5",
      dayNumber: 5,
      titleEn: "Week 2 Recap",
      titleMy: "Week 2 ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Blend /sh/ /i/ /p/. What word is it?",
          questionMy: "/sh/ /i/ /p/ ကို ပေါင်းစပ်ကြည့်ပါ။ ဘယ်စကားလုံးလဲ။",
          optionsEn: ["ship", "chip", "shop", "sip"],
          optionsMy: ["ship", "chip", "shop", "sip"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word means 'a bird that swims and says quack'?",
          questionMy:
              "'ရေကူးတတ်ပြီး ကွတ်ကွတ်ဟစ်တဲ့ ငှက်' ဆိုတဲ့ အဓိပ္ပာယ်ရှိတဲ့ စကားလုံးက ဘယ်ဟာလဲ။",
          optionsEn: ["duck", "ship", "thin", "sock"],
          optionsMy: ["duck", "ship", "thin", "sock"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Does 'duck' have its digraph at the start or the end?",
          questionMy: "'duck' ရဲ့ ဒွန်အက္ခရာက အစမှာလား၊ အဆုံးမှာလား။",
          optionsEn: [
            "at the end",
            "at the start",
            "in the middle",
            "no digraph",
          ],
          optionsMy: ["အဆုံးတွင်", "အစတွင်", "အလယ်တွင်", "ဒွန်အက္ခရာ မရှိပါ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's story, what did Nay Chi sit on to watch the duck?",
          questionMy:
              "နေချည်၏ ဇာတ်လမ်းထဲတွင် ဘဲကို ကြည့်ရန် နေချည် ဘာပေါ်ထိုင်ခဲ့သလဲ။",
          optionsEn: ["a rock", "a sock", "a boat", "a bag"],
          optionsMy: [
            "ကျောက်တုံးတစ်တုံး",
            "ခြေအိတ်တစ်ခု",
            "လှေတစ်စင်း",
            "အိတ်တစ်လုံး",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word has the 'th' digraph?",
          questionMy: "ဘယ်စကားလုံးမှာ 'th' ဒွန်အက္ခရာ ပါလဲ။",
          optionsEn: ["thin", "chip", "duck", "sock"],
          optionsMy: ["thin", "chip", "duck", "sock"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 3: "Common Sight Words"
// =====================================================================

const CourseWeekDef _year1EnglishWeek3 = CourseWeekDef(
  id: "course-year1-english-w3",
  weekNumber: 3,
  titleEn: "Common Sight Words",
  titleMy: "မကြာခဏ တွေ့ရသော အမြင်ဖတ်စကားလုံးများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w3-d1",
      dayNumber: 1,
      titleEn: "Read It on Sight",
      titleMy: "တစ်ကြည့်တည်းနဲ့ ဖတ်ကြမည်",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which word is \"the\"?",
          questionMy: "\"the\" ဆိုတဲ့ စကားလုံးက ဘယ်ဟာလဲ။",
          optionsEn: ["the", "that", "this", "then"],
          optionsMy: ["the", "that", "this", "then"],
          correctIndex: 0,
          hintsEn: [
            "Look at the first two letters: t-h.",
            "This word has just 3 letters: t-h-e.",
          ],
          hintsMy: [
            "ပထမ အက္ခရာနှစ်လုံးကို ကြည့်ပါ - t-h။",
            "ဒီစကားလုံးမှာ အက္ခရာ 3 လုံးပဲ ပါသည် - t-h-e။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which word is \"is\"?",
          questionMy: "\"is\" ဆိုတဲ့ စကားလုံးက ဘယ်ဟာလဲ။",
          optionsEn: ["is", "it", "if", "in"],
          optionsMy: ["is", "it", "if", "in"],
          correctIndex: 0,
          hintsEn: [
            "This tiny word has just 2 letters.",
            "It starts with the letter i and ends with s.",
          ],
          hintsMy: [
            "ဒီစကားလုံးသေးသေးလေးမှာ အက္ခရာ 2 လုံးပဲ ပါသည်။",
            "အက္ခရာ i နဲ့ စပြီး s နဲ့ ဆုံးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which word is \"and\"?",
          questionMy: "\"and\" ဆိုတဲ့ စကားလုံးက ဘယ်ဟာလဲ။",
          optionsEn: ["and", "any", "ant", "end"],
          optionsMy: ["and", "any", "ant", "end"],
          correctIndex: 0,
          hintsEn: [
            "This word has 3 letters: a-n-d.",
            "It starts with the letter a, just like \"cat\" and \"hat\" from Week 1.",
          ],
          hintsMy: [
            "ဒီစကားလုံးမှာ အက္ခရာ 3 လုံး ပါသည် - a-n-d။",
            "Week 1 က \"cat\" နဲ့ \"hat\" လိုပဲ အက္ခရာ a နဲ့ စတင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which word is \"you\"?",
          questionMy: "\"you\" ဆိုတဲ့ စကားလုံးက ဘယ်ဟာလဲ။",
          optionsEn: ["you", "your", "yes", "yet"],
          optionsMy: ["you", "your", "yes", "yet"],
          correctIndex: 0,
          hintsEn: [
            "This word has 3 letters: y-o-u.",
            "It is the word we use to talk to a friend, like \"Can you read?\"",
          ],
          hintsMy: [
            "ဒီစကားလုံးမှာ အက္ခရာ 3 လုံး ပါသည် - y-o-u။",
            "ဒါက သူငယ်ချင်းကို ပြောဆိုတဲ့အခါ သုံးတဲ့ စကားလုံးဖြစ်သည် - \"Can you read?\" လိုမျိုး။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w3-d2",
      dayNumber: 2,
      titleEn: "Match: Sight Words in Sentences",
      titleMy: "ကိုက်ညီစွာ တွဲချိတ်ခြင်း - အမြင်ဖတ်စကားလုံးများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w3-dm1",
          termEn: "the",
          termMy: "the",
          matchEn: "The sun is hot.",
          matchMy: "နေသည် ပူသည်။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w3-dm2",
          termEn: "is",
          termMy: "is",
          matchEn: "Moe Moe is happy.",
          matchMy: "မိုးမိုးသည် ပျော်နေသည်။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w3-dm3",
          termEn: "a",
          termMy: "a",
          matchEn: "I see a cat.",
          matchMy: "ကျွန်မ ကြောင်တစ်ကောင် မြင်ရသည်။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w3-dm4",
          termEn: "and",
          termMy: "and",
          matchEn: "I like cats and dogs.",
          matchMy: "ကျွန်မသည် ကြောင်နှင့် ခွေးများကို နှစ်သက်သည်။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w3-dm5",
          termEn: "my",
          termMy: "my",
          matchEn: "This is my hat.",
          matchMy: "ဒါက ကျွန်မ၏ ဦးထုပ်ဖြစ်သည်။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w3-dm6",
          termEn: "you",
          termMy: "you",
          matchEn: "Can you see the duck?",
          matchMy: "ဘဲကို မင်း မြင်ရလား။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w3-d3",
      dayNumber: 3,
      titleEn: "Sort: Sight Word or Sound It Out?",
      titleMy: "စီစစ်ကြမည် - အမြင်ဖတ်လား၊ အသံပေါင်းစပ်ရလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Sight Word (Read on Sight)",
          "Sound It Out (Blend the Sounds)",
        ],
        bucketsMy: [
          "အမြင်ဖတ်စကားလုံး (တစ်ကြည့်တည်းနဲ့ ဖတ်ရသည်)",
          "အသံများ ပေါင်းစပ်ဖတ်ရသည့်စကားလုံး",
        ],
        items: [
          SortingItem(
            id: "y1eng-w3-sort1",
            labelEn: "the",
            labelMy: "the",
            correctBucketEn: "Sight Word (Read on Sight)",
            correctBucketMy: "အမြင်ဖတ်စကားလုံး (တစ်ကြည့်တည်းနဲ့ ဖတ်ရသည်)",
          ),
          SortingItem(
            id: "y1eng-w3-sort2",
            labelEn: "is",
            labelMy: "is",
            correctBucketEn: "Sight Word (Read on Sight)",
            correctBucketMy: "အမြင်ဖတ်စကားလုံး (တစ်ကြည့်တည်းနဲ့ ဖတ်ရသည်)",
          ),
          SortingItem(
            id: "y1eng-w3-sort3",
            labelEn: "a",
            labelMy: "a",
            correctBucketEn: "Sight Word (Read on Sight)",
            correctBucketMy: "အမြင်ဖတ်စကားလုံး (တစ်ကြည့်တည်းနဲ့ ဖတ်ရသည်)",
          ),
          SortingItem(
            id: "y1eng-w3-sort4",
            labelEn: "and",
            labelMy: "and",
            correctBucketEn: "Sight Word (Read on Sight)",
            correctBucketMy: "အမြင်ဖတ်စကားလုံး (တစ်ကြည့်တည်းနဲ့ ဖတ်ရသည်)",
          ),
          SortingItem(
            id: "y1eng-w3-sort5",
            labelEn: "my",
            labelMy: "my",
            correctBucketEn: "Sight Word (Read on Sight)",
            correctBucketMy: "အမြင်ဖတ်စကားလုံး (တစ်ကြည့်တည်းနဲ့ ဖတ်ရသည်)",
          ),
          SortingItem(
            id: "y1eng-w3-sort6",
            labelEn: "you",
            labelMy: "you",
            correctBucketEn: "Sight Word (Read on Sight)",
            correctBucketMy: "အမြင်ဖတ်စကားလုံး (တစ်ကြည့်တည်းနဲ့ ဖတ်ရသည်)",
          ),
          SortingItem(
            id: "y1eng-w3-sort7",
            labelEn: "cat",
            labelMy: "cat",
            correctBucketEn: "Sound It Out (Blend the Sounds)",
            correctBucketMy: "အသံများ ပေါင်းစပ်ဖတ်ရသည့်စကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w3-sort8",
            labelEn: "ship",
            labelMy: "ship",
            correctBucketEn: "Sound It Out (Blend the Sounds)",
            correctBucketMy: "အသံများ ပေါင်းစပ်ဖတ်ရသည့်စကားလုံး",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w3-d4",
      dayNumber: 4,
      titleEn: "Reading: Htet Htet Reads a Book",
      titleMy: "စာဖတ်ခြင်း - ထက်ထက် စာအုပ်ဖတ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Htet Htet Reads a Book",
        titleMy: "ထက်ထက် စာအုပ်ဖတ်ခြင်း",
        passageEn:
            "Htet Htet has a book. \"I can read it,\" Htet Htet said. The book is about a dog and a duck. Htet Htet reads, \"The dog ran to the pond.\" Htet Htet reads, \"A duck swims in the sun.\" Htet Htet likes the pictures too. \"You are a good reader,\" said Htet Htet's teacher. Htet Htet smiled and read some more.",
        passageMy:
            "ထက်ထက်မှာ စာအုပ်တစ်အုပ် ရှိသည်။ \"ကျွန်မ ဒါကို ဖတ်တတ်တယ်\" ဟု ထက်ထက်က ပြောလိုက်သည်။ ဒီစာအုပ်က ခွေးတစ်ကောင်နှင့် ဘဲတစ်ကောင်အကြောင်းဖြစ်သည်။ ထက်ထက်က \"ခွေးသည် ရေကန်ဆီသို့ ပြေးသွားသည်\" ဟု ဖတ်လိုက်သည်။ ထက်ထက်က \"ဘဲသည် နေရောင်ထဲတွင် ရေကူးသည်\" ဟု ဆက်ဖတ်သည်။ ထက်ထက်သည် ပုံများကိုလည်း နှစ်သက်သည်။ \"မင်းက ဖတ်စာအလွန်ကောင်းတဲ့ ကလေးပဲ\" ဟု ထက်ထက်၏ ဆရာမက ပြောခဲ့သည်။ ထက်ထက် ပြုံးလျက် ထပ်ဖတ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What is Htet Htet's book about?",
            questionMy: "ထက်ထက်၏ စာအုပ်က ဘာအကြောင်းဖြစ်သလဲ။",
            optionsEn: [
              "a dog and a duck",
              "a cat and a rat",
              "a ship and a chip",
              "my hat and my sock",
            ],
            optionsMy: [
              "ခွေးနှင့် ဘဲ",
              "ကြောင်နှင့် ကြွက်",
              "သင်္ဘောနှင့် အာလူးကြော်",
              "ကျွန်မ၏ ဦးထုပ်နှင့် ခြေအိတ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Where did the dog run to?",
            questionMy: "ခွေးက ဘယ်ကို ပြေးသွားသလဲ။",
            optionsEn: ["the pond", "the sun", "the book", "the hat"],
            optionsMy: ["ရေကန်", "နေရောင်", "စာအုပ်", "ဦးထုပ်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did the duck do in the sun?",
            questionMy: "ဘဲသည် နေရောင်ထဲတွင် ဘာလုပ်ခဲ့သလဲ။",
            optionsEn: ["swim", "sleep", "run", "sing"],
            optionsMy: ["ရေကူးသည်", "အိပ်သည်", "ပြေးသည်", "သီချင်းဆိုသည်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did the teacher say to Htet Htet?",
            questionMy: "ဆရာမက ထက်ထက်အား ဘာပြောခဲ့သလဲ။",
            optionsEn: [
              "You are a good reader.",
              "You are a good runner.",
              "You are a good singer.",
              "You are a good painter.",
            ],
            optionsMy: [
              "မင်းက ဖတ်စာအလွန်ကောင်းတဲ့ ကလေးပဲ။",
              "မင်းက ပြေးအလွန်ကောင်းတဲ့ ကလေးပဲ။",
              "မင်းက သီချင်းအလွန်ကောင်းတဲ့ ကလေးပဲ။",
              "မင်းက ပန်းချီအလွန်ကောင်းတဲ့ ကလေးပဲ။",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w3-d5",
      dayNumber: 5,
      titleEn: "Week 3 Recap",
      titleMy: "Week 3 ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which word is \"you\"?",
          questionMy: "\"you\" ဆိုတဲ့ စကားလုံးက ဘယ်ဟာလဲ။",
          optionsEn: ["you", "your", "yes", "yet"],
          optionsMy: ["you", "your", "yes", "yet"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which sight word completes: \"This is ___ hat.\"?",
          questionMy:
              "\"This is ___ hat.\" ဆိုတဲ့ စာကြောင်းကို ဘယ် အမြင်ဖတ်စကားလုံးက ဖြည့်ပေးလဲ။",
          optionsEn: ["my", "the", "is", "and"],
          optionsMy: ["my", "the", "is", "and"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Is \"the\" a sight word or a sound-it-out word?",
          questionMy:
              "\"the\" က အမြင်ဖတ်စကားလုံးလား၊ အသံပေါင်းစပ်ဖတ်ရတဲ့ စကားလုံးလား။",
          optionsEn: [
            "a sight word",
            "a sound-it-out word",
            "a digraph",
            "a rhyme",
          ],
          optionsMy: [
            "အမြင်ဖတ်စကားလုံး",
            "အသံပေါင်းစပ်ဖတ်ရတဲ့စကားလုံး",
            "ဒွန်အက္ခရာ",
            "စကားလုံးတွဲဆိုင်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Htet Htet's story, what did the teacher say to Htet Htet?",
          questionMy: "ထက်ထက်၏ ဇာတ်လမ်းထဲတွင် ဆရာမက ထက်ထက်အား ဘာပြောခဲ့သလဲ။",
          optionsEn: [
            "You are a good reader.",
            "You are a good writer.",
            "You are a good singer.",
            "You are a good runner.",
          ],
          optionsMy: [
            "မင်းက ဖတ်စာအလွန်ကောင်းတဲ့ ကလေးပဲ။",
            "မင်းက ရေးစာအလွန်ကောင်းတဲ့ ကလေးပဲ။",
            "မင်းက သီချင်းအလွန်ကောင်းတဲ့ ကလေးပဲ။",
            "မင်းက ပြေးအလွန်ကောင်းတဲ့ ကလေးပဲ။",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which of these words do we read on sight, without sounding it out?",
          questionMy:
              "အောက်ပါစကားလုံးများထဲက ဘယ်ဟာကို အသံမပေါင်းစပ်ဘဲ တစ်ကြည့်တည်းနဲ့ ဖတ်ကြသလဲ။",
          optionsEn: ["the", "cat", "ship", "duck"],
          optionsMy: ["the", "cat", "ship", "duck"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 4 (capstone/boss week): "The Little Reader"
// =====================================================================

const CourseWeekDef _year1EnglishWeek4 = CourseWeekDef(
  id: "course-year1-english-w4",
  weekNumber: 4,
  titleEn: "The Little Reader",
  titleMy: "ငယ်ရွယ်တဲ့ စာဖတ်သူလေး",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w4-d1",
      dayNumber: 1,
      titleEn: "The Reading Challenge",
      titleMy: "ဖတ်ရှုခြင်း စိန်ခေါ်မှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Moe Moe blends /c/ /a/ /t/. What word does Moe Moe make?",
          questionMy:
              "မိုးမိုးသည် /c/ /a/ /t/ ကို ပေါင်းစပ်နေသည်။ ဘယ်စကားလုံး ဖြစ်လာမလဲ။",
          optionsEn: ["cat", "hat", "dog", "sun"],
          optionsMy: ["cat", "hat", "dog", "sun"],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 1: say each sound slowly, then blend them fast.",
            "c-a-t blended together sounds like the pet that says meow.",
          ],
          hintsMy: [
            "Week 1 ကို သတိရပါ - တစ်သံချင်းစီကို နှေးနှေးရွတ်ပြီး မြန်မြန်ပေါင်းစပ်ကြည့်ပါ။",
            "c-a-t ကို ပေါင်းစပ်လိုက်လျှင် 'မျောင်း' ဟစ်တတ်တဲ့ တိရစ္ဆာန်ကလေးလို အသံထွက်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi blends /sh/ /i/ /p/. What word does Nay Chi make?",
          questionMy:
              "နေချည်သည် /sh/ /i/ /p/ ကို ပေါင်းစပ်နေသည်။ ဘယ်စကားလုံး ဖြစ်လာမလဲ။",
          optionsEn: ["ship", "chip", "thin", "duck"],
          optionsMy: ["ship", "chip", "thin", "duck"],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 2: s and h together make one new sound, /sh/.",
            "sh-i-p blended together is a big boat that sails on the sea.",
          ],
          hintsMy: [
            "Week 2 ကို သတိရပါ - s နှင့် h ပေါင်းလိုက်လျှင် အသံသစ်တစ်ခု /sh/ ဖြစ်လာသည်။",
            "sh-i-p ကို ပေါင်းစပ်လိုက်လျှင် ပင်လယ်ထဲတွင် ရွက်လွှင့်တဲ့ သင်္ဘောကြီး ဖြစ်လာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Htet Htet needs the sight word that means \"belonging to me.\" Which word is it?",
          questionMy:
              "ထက်ထက်သည် \"ကျွန်မပိုင်\" ဟု အဓိပ္ပာယ်ရှိသော အမြင်ဖတ်စကားလုံး လိုအပ်နေသည်။ ဘယ်စကားလုံးလဲ။",
          optionsEn: ["my", "you", "the", "is"],
          optionsMy: ["my", "you", "the", "is"],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 3: this is a sight word we read without sounding it out.",
            "It is the word in \"This is my hat.\"",
          ],
          hintsMy: [
            "Week 3 ကို သတိရပါ - ဒါက အသံမပေါင်းစပ်ဘဲ ဖတ်ရတဲ့ အမြင်ဖတ်စကားလုံးဖြစ်သည်။",
            "ဒါက \"This is my hat.\" ထဲက စကားလုံးဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "The three friends want to read the word for a bird that swims and says quack. Blend /d/ /u/ /ck/ -- what word is it?",
          questionMy:
              "သူငယ်ချင်း သုံးယောက်တို့သည် ရေကူးတတ်ပြီး ကွတ်ကွတ်ဟစ်တဲ့ ငှက်၏ စကားလုံးကို ဖတ်လိုနေကြသည်။ /d/ /u/ /ck/ ကို ပေါင်းစပ်ကြည့်ပါ - ဘယ်စကားလုံးလဲ။",
          optionsEn: ["duck", "dog", "duct", "dock"],
          optionsMy: ["duck", "dog", "duct", "dock"],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 2: c and k together at the end make one sound, /ck/.",
            "d-u-ck blended together is the bird that swims and says quack.",
          ],
          hintsMy: [
            "Week 2 ကို သတိရပါ - c နှင့် k ပေါင်းလိုက်လျှင် အဆုံးတွင် အသံတစ်ခုတည်း /ck/ ဖြစ်လာသည်။",
            "d-u-ck ကို ပေါင်းစပ်လိုက်လျှင် ရေကူးတတ်ပြီး ကွတ်ကွတ်ဟစ်တဲ့ ငှက် ဖြစ်လာသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w4-d2",
      dayNumber: 2,
      titleEn: "Match: Blends, Digraphs and Sight Words",
      titleMy:
          "ကိုက်ညီစွာ တွဲချိတ်ခြင်း - အသံပေါင်း၊ ဒွန်အက္ခရာနှင့် အမြင်ဖတ်စကားလုံးများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w4-dm1",
          termEn: "cat",
          termMy: "cat",
          matchEn: "A small pet that says meow.",
          matchMy: "မျောင်း ဟစ်တတ်တဲ့ အိမ်ချောင်းငယ်လေး။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w4-dm2",
          termEn: "ship",
          termMy: "ship",
          matchEn: "A big boat that sails on the sea.",
          matchMy: "ပင်လယ်ထဲတွင် ရွက်လွှင့်တဲ့ သင်္ဘောကြီးတစ်စီး။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w4-dm3",
          termEn: "the",
          termMy: "the",
          matchEn: "The sun is hot.",
          matchMy: "နေသည် ပူသည်။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w4-dm4",
          termEn: "duck",
          termMy: "duck",
          matchEn: "A bird that swims and says quack.",
          matchMy: "ရေကူးတတ်ပြီး ကွတ်ကွတ်ဟစ်တဲ့ ငှက်တစ်ကောင်။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w4-dm5",
          termEn: "you",
          termMy: "you",
          matchEn: "Can you see the duck?",
          matchMy: "ဘဲကို မင်း မြင်ရလား။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w4-dm6",
          termEn: "sun",
          termMy: "sun",
          matchEn: "It shines brightly in the sky in the daytime.",
          matchMy: "နေ့ခင်းအချိန် ကောင်းကင်တွင် တောက်ပစွာ ထွန်းလင်းနေတဲ့အရာ။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w4-d3",
      dayNumber: 3,
      titleEn: "Sort: Sound It Out or Sight Word?",
      titleMy: "စီစစ်ကြမည် - အသံပေါင်းစပ်ရလား၊ အမြင်ဖတ်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Sound It Out (Blend the Sounds)",
          "Sight Word (Read on Sight)",
        ],
        bucketsMy: [
          "အသံများ ပေါင်းစပ်ဖတ်ရသည့်စကားလုံး",
          "အမြင်ဖတ်စကားလုံး (တစ်ကြည့်တည်းနဲ့ ဖတ်ရသည်)",
        ],
        items: [
          SortingItem(
            id: "y1eng-w4-sort1",
            labelEn: "cat",
            labelMy: "cat",
            correctBucketEn: "Sound It Out (Blend the Sounds)",
            correctBucketMy: "အသံများ ပေါင်းစပ်ဖတ်ရသည့်စကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w4-sort2",
            labelEn: "ship",
            labelMy: "ship",
            correctBucketEn: "Sound It Out (Blend the Sounds)",
            correctBucketMy: "အသံများ ပေါင်းစပ်ဖတ်ရသည့်စကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w4-sort3",
            labelEn: "duck",
            labelMy: "duck",
            correctBucketEn: "Sound It Out (Blend the Sounds)",
            correctBucketMy: "အသံများ ပေါင်းစပ်ဖတ်ရသည့်စကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w4-sort4",
            labelEn: "thin",
            labelMy: "thin",
            correctBucketEn: "Sound It Out (Blend the Sounds)",
            correctBucketMy: "အသံများ ပေါင်းစပ်ဖတ်ရသည့်စကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w4-sort5",
            labelEn: "the",
            labelMy: "the",
            correctBucketEn: "Sight Word (Read on Sight)",
            correctBucketMy: "အမြင်ဖတ်စကားလုံး (တစ်ကြည့်တည်းနဲ့ ဖတ်ရသည်)",
          ),
          SortingItem(
            id: "y1eng-w4-sort6",
            labelEn: "is",
            labelMy: "is",
            correctBucketEn: "Sight Word (Read on Sight)",
            correctBucketMy: "အမြင်ဖတ်စကားလုံး (တစ်ကြည့်တည်းနဲ့ ဖတ်ရသည်)",
          ),
          SortingItem(
            id: "y1eng-w4-sort7",
            labelEn: "my",
            labelMy: "my",
            correctBucketEn: "Sight Word (Read on Sight)",
            correctBucketMy: "အမြင်ဖတ်စကားလုံး (တစ်ကြည့်တည်းနဲ့ ဖတ်ရသည်)",
          ),
          SortingItem(
            id: "y1eng-w4-sort8",
            labelEn: "you",
            labelMy: "you",
            correctBucketEn: "Sight Word (Read on Sight)",
            correctBucketMy: "အမြင်ဖတ်စကားလုံး (တစ်ကြည့်တည်းနဲ့ ဖတ်ရသည်)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w4-d4",
      dayNumber: 4,
      titleEn: "Reading: The Little Reader",
      titleMy: "စာဖတ်ခြင်း - ငယ်ရွယ်တဲ့ စာဖတ်သူလေး",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The Little Reader",
        titleMy: "ငယ်ရွယ်တဲ့ စာဖတ်သူလေး",
        passageEn:
            "Moe Moe, Nay Chi, and Htet Htet found a little book under a tree. \"Let's read it together,\" said Moe Moe. The first page showed a cat, and Nay Chi blended the sounds: \"c-a-t, cat!\" The next page showed a ship, and Htet Htet said, \"sh-i-p, ship!\" Then they saw a word they knew on sight: \"the.\" \"The duck swims in the sun,\" read Moe Moe. \"You can read it too!\" said Nay Chi to Htet Htet. Together, the three friends finished the little book and smiled.",
        passageMy:
            "မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့ သုံးယောက်သည် သစ်ပင်တစ်ပင်အောက်တွင် စာအုပ်ငယ်တစ်အုပ် တွေ့ကြသည်။ \"အတူတူ ဖတ်ကြရအောင်\" ဟု မိုးမိုးက ပြောလိုက်သည်။ ပထမစာမျက်နှာတွင် ကြောင်တစ်ကောင် ရှိပြီး နေချည်က အသံများကို ပေါင်းစပ်ဖတ်ခဲ့သည် - \"c-a-t, cat!\" နောက်စာမျက်နှာတွင် သင်္ဘောတစ်စီး ရှိပြီး ထက်ထက်က \"sh-i-p, ship!\" ဟု ပြောလိုက်သည်။ ထို့နောက် သူတို့သည် တစ်ကြည့်တည်းနဲ့ သိနေသော စကားလုံးကို တွေ့ကြသည် - \"the\"။ \"ဘဲသည် နေရောင်ထဲတွင် ရေကူးသည်\" ဟု မိုးမိုးက ဖတ်ပြသည်။ \"မင်းလည်း ဖတ်နိုင်တယ်!\" ဟု နေချည်က ထက်ထက်အား ပြောလိုက်သည်။ သူငယ်ချင်း သုံးယောက်တို့သည် စာအုပ်ငယ်ကို အတူတကွ ပြီးအောင် ဖတ်ပြီး ပြုံးလိုက်ကြသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Where did Moe Moe, Nay Chi, and Htet Htet find the little book?",
            questionMy:
                "မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့ စာအုပ်ငယ်ကို ဘယ်မှာ တွေ့ခဲ့ကြသလဲ။",
            optionsEn: ["under a tree", "in a pond", "on a rock", "in a bag"],
            optionsMy: [
              "သစ်ပင်တစ်ပင်အောက်တွင်",
              "ရေကန်ထဲတွင်",
              "ကျောက်တုံးပေါ်တွင်",
              "အိတ်ထဲတွင်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Who blended the sounds for the word \"cat\"?",
            questionMy:
                "\"cat\" စကားလုံး၏ အသံများကို ဘယ်သူက ပေါင်းစပ်ဖတ်ခဲ့သလဲ။",
            optionsEn: ["Nay Chi", "Moe Moe", "Htet Htet", "the teacher"],
            optionsMy: ["နေချည်", "မိုးမိုး", "ထက်ထက်", "ဆရာမ"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What sight word did the three friends see and read without sounding out?",
            questionMy:
                "သူငယ်ချင်း သုံးယောက်တို့ အသံမပေါင်းစပ်ဘဲ ဖတ်ခဲ့ကြတဲ့ အမြင်ဖတ်စကားလုံးက ဘာလဲ။",
            optionsEn: ["the", "cat", "ship", "duck"],
            optionsMy: ["the", "cat", "ship", "duck"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Moe Moe read about the duck?",
            questionMy: "ဘဲအကြောင်း မိုးမိုးက ဘာဖတ်ပြခဲ့သလဲ။",
            optionsEn: [
              "The duck swims in the sun.",
              "The duck sat on a mat.",
              "The duck ran to the pond.",
              "The duck wore a red hat.",
            ],
            optionsMy: [
              "ဘဲသည် နေရောင်ထဲတွင် ရေကူးသည်။",
              "ဘဲသည် အခင်းပေါ်တွင် ထိုင်နေသည်။",
              "ဘဲသည် ရေကန်ဆီသို့ ပြေးသွားသည်။",
              "ဘဲသည် အနီရောင် ဦးထုပ် ဆောင်းထားသည်။",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w4-d5",
      dayNumber: 5,
      titleEn: "Term 1 Recap",
      titleMy: "Term 1 ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Blend /h/ /a/ /t/. What word is it?",
          questionMy: "/h/ /a/ /t/ ကို ပေါင်းစပ်ကြည့်ပါ။ ဘယ်စကားလုံးလဲ။",
          optionsEn: ["hat", "cat", "hit", "cap"],
          optionsMy: ["hat", "cat", "hit", "cap"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word has the 'ch' digraph?",
          questionMy: "ဘယ်စကားလုံးမှာ 'ch' ဒွန်အက္ခရာ ပါလဲ။",
          optionsEn: ["chip", "ship", "thin", "duck"],
          optionsMy: ["chip", "ship", "thin", "duck"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which word do we read on sight without sounding it out: 'is' or 'ship'?",
          questionMy:
              "ဘယ်စကားလုံးကို အသံမပေါင်းစပ်ဘဲ တစ်ကြည့်တည်းနဲ့ ဖတ်ကြသလဲ - 'is' လား 'ship' လား။",
          optionsEn: ["is", "ship", "chip", "duck"],
          optionsMy: ["is", "ship", "chip", "duck"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In The Little Reader, who said \"You can read it too!\" to Htet Htet?",
          questionMy:
              "The Little Reader ဇာတ်လမ်းထဲတွင် ထက်ထက်ကို \"မင်းလည်း ဖတ်နိုင်တယ်!\" ဟု ဘယ်သူက ပြောခဲ့သလဲ။",
          optionsEn: [
            "Nay Chi",
            "Moe Moe",
            "the teacher",
            "Htet Htet's brother",
          ],
          optionsMy: ["နေချည်", "မိုးမိုး", "ဆရာမ", "ထက်ထက်၏ ညီ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which skill did Moe Moe, Nay Chi, and Htet Htet use to read the whole book together: blending sounds, sight words, or both?",
          questionMy:
              "စာအုပ်တစ်အုပ်လုံးကို အတူတကွ ဖတ်ရန် မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့ ဘယ်ကျွမ်းကျင်မှုများကို သုံးခဲ့ကြသလဲ - အသံပေါင်းစပ်ခြင်း၊ အမြင်ဖတ်စကားလုံးများ၊ (သို့) နှစ်ခုစလုံးလား။",
          optionsEn: [
            "both blending sounds and sight words",
            "only blending sounds",
            "only sight words",
            "neither",
          ],
          optionsMy: [
            "အသံပေါင်းစပ်ခြင်းနှင့် အမြင်ဖတ်စကားလုံး နှစ်ခုလုံး",
            "အသံပေါင်းစပ်ခြင်းသာ",
            "အမြင်ဖတ်စကားလုံးသာ",
            "မည်သည့်ကျွမ်းကျင်မှုမျှ မသုံးပါ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Year 1 English -- Term 1 wrapper
// =====================================================================

const CourseTermDef _year1EnglishTerm1 = CourseTermDef(
  id: "course-year1-english-t1",
  termNumber: 1,
  titleEn: "Phonics and Blending Mastery",
  titleMy: "အသံထွက်နှင့် ပေါင်းစပ်ဖတ်ခြင်း ကျွမ်းကျင်မှု",
  certificateTitleEn: "Phonics and Blending Mastery",
  certificateTitleMy: "အသံထွက်နှင့် ပေါင်းစပ်ဖတ်ခြင်း ကျွမ်းကျင်မှု",
  weeks: [
    _year1EnglishWeek1,
    _year1EnglishWeek2,
    _year1EnglishWeek3,
    _year1EnglishWeek4,
  ],
);
