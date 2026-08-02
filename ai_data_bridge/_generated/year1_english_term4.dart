// =====================================================================
// Year 1 English -- Term 4: "Rhyme and Sound Play" (Weeks 13-16)
// =====================================================================
//
// Week 13 introduces rhyming words (words ending with the same sound);
// Week 14 introduces clapping syllables (breaking words into beats);
// Week 15 introduces alliteration (words starting with the same sound);
// Week 16 is the capstone/boss week, "The Rhyme Time Show," a class
// performance combining all three skills in one continuous story
// starring the recurring cast -- Moe Moe (who starred in Week 13's
// reading passage) performs the rhyme, Nay Chi (Week 14's star)
// performs the syllable claps, and Htet Htet (Week 15's star) performs
// the alliteration, mirroring the style of _year1MathematicsTerm1's
// Week 4 capstone.

const CourseWeekDef _year1EnglishWeek13 = CourseWeekDef(
  id: "course-year1-english-w13",
  weekNumber: 13,
  titleEn: "Rhyming Words",
  titleMy: "ကာရန်တူ စကားလုံးများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w13-d1",
      dayNumber: 1,
      titleEn: "What Rhymes?",
      titleMy: "ဘာတွေက ကာရန်တူကြသလဲ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which word rhymes with \"cat\"?",
          questionMy: "\"cat\" နှင့် ကာရန်တူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["hat", "dog", "sun", "box"],
          optionsMy: ["hat", "dog", "sun", "box"],
          correctIndex: 0,
          hintsEn: [
            "Say \"cat\" and \"hat\" out loud -- rhyming words end with the same sound.",
            "Cat, hat... -at! Listen for the word that ends in \"-at\".",
          ],
          hintsMy: [
            "\"cat\" နှင့် \"hat\" ကို အသံထွက်ကြည့်ပါ -- ကာရန်တူသော စကားလုံးများသည် အဆုံးသတ်အသံ တူညီကြသည်။",
            "Cat, hat... -at! \"-at\" ဖြင့် အဆုံးသတ်သော စကားလုံးကို နားထောင်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which word rhymes with \"sun\"?",
          questionMy: "\"sun\" နှင့် ကာရန်တူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["fun", "cat", "tree", "hat"],
          optionsMy: ["fun", "cat", "tree", "hat"],
          correctIndex: 0,
          hintsEn: [
            "Say \"sun\" and \"fun\" out loud -- listen for the same ending sound.",
            "Sun, fun... -un! Look for the word that ends in \"-un\".",
          ],
          hintsMy: [
            "\"sun\" နှင့် \"fun\" ကို အသံထွက်ကြည့်ပါ -- အဆုံးသတ်အသံ တူညီမှုကို နားထောင်ပါ။",
            "Sun, fun... -un! \"-un\" ဖြင့် အဆုံးသတ်သော စကားလုံးကို ရှာပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which word rhymes with \"pig\"?",
          questionMy: "\"pig\" နှင့် ကာရန်တူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["wig", "dog", "cup", "box"],
          optionsMy: ["wig", "dog", "cup", "box"],
          correctIndex: 0,
          hintsEn: [
            "Say \"pig\" and \"wig\" out loud -- the endings match!",
            "Pig, wig... -ig! Listen for the word ending in \"-ig\".",
          ],
          hintsMy: [
            "\"pig\" နှင့် \"wig\" ကို အသံထွက်ကြည့်ပါ -- အဆုံးသတ်အသံ ကိုက်ညီနေသည်။",
            "Pig, wig... -ig! \"-ig\" ဖြင့် အဆုံးသတ်သော စကားလုံးကို နားထောင်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which word rhymes with \"star\"?",
          questionMy: "\"star\" နှင့် ကာရန်တူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["car", "dog", "sun", "hat"],
          optionsMy: ["car", "dog", "sun", "hat"],
          correctIndex: 0,
          hintsEn: [
            "Say \"star\" and \"car\" out loud -- listen closely to the ending sound.",
            "Star, car... -ar! Find the word that ends in \"-ar\".",
          ],
          hintsMy: [
            "\"star\" နှင့် \"car\" ကို အသံထွက်ကြည့်ပါ -- အဆုံးသတ်အသံကို သေချာနားထောင်ပါ။",
            "Star, car... -ar! \"-ar\" ဖြင့် အဆုံးသတ်သော စကားလုံးကို ရှာပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w13-d2",
      dayNumber: 2,
      titleEn: "Match the Rhyming Pairs",
      titleMy: "ကာရန်တူအတွဲများကို ချိတ်ဆက်ပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w13-dm1",
          termEn: "bat",
          termMy: "bat",
          matchEn: "Rhymes with \"cat\" -- same ending sound",
          matchMy: "\"cat\" နှင့် ကာရန်တူသည် -- အဆုံးသတ်အသံ တူညီသည်",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w13-dm2",
          termEn: "run",
          termMy: "run",
          matchEn: "Rhymes with \"sun\" -- same ending sound",
          matchMy: "\"sun\" နှင့် ကာရန်တူသည် -- အဆုံးသတ်အသံ တူညီသည်",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w13-dm3",
          termEn: "dig",
          termMy: "dig",
          matchEn: "Rhymes with \"pig\" -- same ending sound",
          matchMy: "\"pig\" နှင့် ကာရန်တူသည် -- အဆုံးသတ်အသံ တူညီသည်",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w13-dm4",
          termEn: "far",
          termMy: "far",
          matchEn: "Rhymes with \"star\" -- same ending sound",
          matchMy: "\"star\" နှင့် ကာရန်တူသည် -- အဆုံးသတ်အသံ တူညီသည်",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w13-dm5",
          termEn: "top",
          termMy: "top",
          matchEn: "Rhymes with \"hop\" -- same ending sound",
          matchMy: "\"hop\" နှင့် ကာရန်တူသည် -- အဆုံးသတ်အသံ တူညီသည်",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w13-dm6",
          termEn: "bee",
          termMy: "bee",
          matchEn: "Rhymes with \"tree\" -- same ending sound",
          matchMy: "\"tree\" နှင့် ကာရန်တူသည် -- အဆုံးသတ်အသံ တူညီသည်",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w13-d3",
      dayNumber: 3,
      titleEn: "Sort the Rhyming Families",
      titleMy: "ကာရန်မိသားစုများကို ခွဲခြားပါ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Rhymes with \"cat\"", "Rhymes with \"sun\""],
        bucketsMy: ["\"cat\" နှင့် ကာရန်တူသည်", "\"sun\" နှင့် ကာရန်တူသည်"],
        items: [
          SortingItem(
            id: "y1eng-w13-sort1",
            labelEn: "hat",
            labelMy: "hat",
            correctBucketEn: "Rhymes with \"cat\"",
            correctBucketMy: "\"cat\" နှင့် ကာရန်တူသည်",
          ),
          SortingItem(
            id: "y1eng-w13-sort2",
            labelEn: "mat",
            labelMy: "mat",
            correctBucketEn: "Rhymes with \"cat\"",
            correctBucketMy: "\"cat\" နှင့် ကာရန်တူသည်",
          ),
          SortingItem(
            id: "y1eng-w13-sort3",
            labelEn: "bat",
            labelMy: "bat",
            correctBucketEn: "Rhymes with \"cat\"",
            correctBucketMy: "\"cat\" နှင့် ကာရန်တူသည်",
          ),
          SortingItem(
            id: "y1eng-w13-sort4",
            labelEn: "rat",
            labelMy: "rat",
            correctBucketEn: "Rhymes with \"cat\"",
            correctBucketMy: "\"cat\" နှင့် ကာရန်တူသည်",
          ),
          SortingItem(
            id: "y1eng-w13-sort5",
            labelEn: "fun",
            labelMy: "fun",
            correctBucketEn: "Rhymes with \"sun\"",
            correctBucketMy: "\"sun\" နှင့် ကာရန်တူသည်",
          ),
          SortingItem(
            id: "y1eng-w13-sort6",
            labelEn: "run",
            labelMy: "run",
            correctBucketEn: "Rhymes with \"sun\"",
            correctBucketMy: "\"sun\" နှင့် ကာရန်တူသည်",
          ),
          SortingItem(
            id: "y1eng-w13-sort7",
            labelEn: "bun",
            labelMy: "bun",
            correctBucketEn: "Rhymes with \"sun\"",
            correctBucketMy: "\"sun\" နှင့် ကာရန်တူသည်",
          ),
          SortingItem(
            id: "y1eng-w13-sort8",
            labelEn: "nun",
            labelMy: "nun",
            correctBucketEn: "Rhymes with \"sun\"",
            correctBucketMy: "\"sun\" နှင့် ကာရန်တူသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w13-d4",
      dayNumber: 4,
      titleEn: "Moe Moe's Rhyming Walk",
      titleMy: "မိုးမိုး၏ ကာရန်လမ်းလျှောက်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Moe Moe's Rhyming Walk",
        titleMy: "မိုးမိုး၏ ကာရန်လမ်းလျှောက်ခြင်း",
        passageEn:
            "Moe Moe went for a walk with her mom. Moe Moe saw a big red hat. \"Hat rhymes with cat!\" said Moe Moe. Moe Moe saw a small brown mat. \"Mat rhymes with cat too!\" said Moe Moe. Then Moe Moe saw the sun shining bright. \"Sun rhymes with fun!\" said Moe Moe. Moe Moe had so much fun finding rhymes on her walk.",
        passageMy:
            "မိုးမိုးသည် အမေနှင့်အတူ လမ်းလျှောက်ထွက်သည်။ မိုးမိုးသည် အနီရောင် ဦးထုပ်ကြီးတစ်ခု တွေ့သည်။ \"Hat က cat နဲ့ ကာရန်တူတယ်!\" ဟု မိုးမိုးက ပြောသည်။ မိုးမိုးသည် အညိုရောင် ကော်ဇောငယ်တစ်ခု တွေ့သည်။ \"Mat ကလည်း cat နဲ့ ကာရန်တူတယ်!\" ဟု မိုးမိုးက ပြောသည်။ ထို့နောက် မိုးမိုးသည် နေရောင်ခြည် တောက်ပနေသည်ကို မြင်လိုက်သည်။ \"Sun က fun နဲ့ ကာရန်တူတယ်!\" ဟု မိုးမိုးက ပြောသည်။ မိုးမိုးသည် လမ်းလျှောက်စဉ် ကာရန်များ ရှာဖွေရသည်ကို အလွန် ပျော်ရွှင်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "Who went for a walk with her mom?",
            questionMy: "ဘယ်သူက အမေနှင့်အတူ လမ်းလျှောက်ထွက်ခဲ့သနည်း။",
            optionsEn: ["Moe Moe", "Nay Chi", "Htet Htet", "Ms. Thandar"],
            optionsMy: ["Moe Moe", "Nay Chi", "Htet Htet", "Ms. Thandar"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What word did Moe Moe say rhymes with \"cat\"?",
            questionMy:
                "\"cat\" နှင့် ကာရန်တူကြောင်း မိုးမိုး ဘာလို့ ပြောခဲ့သနည်း။",
            optionsEn: ["hat", "sun", "fun", "dog"],
            optionsMy: ["hat", "sun", "fun", "dog"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Moe Moe see shining in the sky?",
            questionMy:
                "မိုးမိုးသည် ကောင်းကင်တွင် တောက်ပနေသော အဘယ်အရာကို မြင်ခဲ့သနည်း။",
            optionsEn: ["The sun", "The moon", "A star", "A bird"],
            optionsMy: ["နေ", "လ", "ကြယ်တစ်လုံး", "ငှက်တစ်ကောင်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What word rhymes with \"sun\" in the story?",
            questionMy:
                "ဇာတ်လမ်းထဲတွင် \"sun\" နှင့် ကာရန်တူသော စကားလုံးက အဘယ်နည်း။",
            optionsEn: ["fun", "cat", "mat", "hat"],
            optionsMy: ["fun", "cat", "mat", "hat"],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w13-d5",
      dayNumber: 5,
      titleEn: "Rhyming Words Recap",
      titleMy: "ကာရန်တူ စကားလုံးများ ပြန်လှန်သုံးသပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which word rhymes with \"cat\"?",
          questionMy: "\"cat\" နှင့် ကာရန်တူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["hat", "dog", "sun", "box"],
          optionsMy: ["hat", "dog", "sun", "box"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word rhymes with \"pig\"?",
          questionMy: "\"pig\" နှင့် ကာရန်တူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["wig", "cup", "box", "dog"],
          optionsMy: ["wig", "cup", "box", "dog"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In the drag-match game, which word matched \"star\"?",
          questionMy:
              "ချိတ်ဆက်ဂိမ်းထဲတွင် \"star\" နှင့် မည်သည့်စကားလုံး တွဲထားသနည်း။",
          optionsEn: ["far", "dog", "sun", "hat"],
          optionsMy: ["far", "dog", "sun", "hat"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Moe Moe's story, what word did she say rhymes with \"sun\"?",
          questionMy:
              "မိုးမိုး၏ ဇာတ်လမ်းထဲတွင် \"sun\" နှင့် ကာရန်တူကြောင်း သူမ ဘာစကားလုံးကို ပြောခဲ့သနည်း။",
          optionsEn: ["fun", "cat", "mat", "hat"],
          optionsMy: ["fun", "cat", "mat", "hat"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which pair of words rhymes?",
          questionMy: "ဘယ်စကားလုံးအတွဲက ကာရန်တူသနည်း။",
          optionsEn: [
            "bun and run",
            "bun and cat",
            "bun and star",
            "bun and pig",
          ],
          optionsMy: [
            "bun and run",
            "bun and cat",
            "bun and star",
            "bun and pig",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year1EnglishWeek14 = CourseWeekDef(
  id: "course-year1-english-w14",
  weekNumber: 14,
  titleEn: "Clapping Syllables",
  titleMy: "အသံလုံးများကို လက်ခုပ်တီးခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w14-d1",
      dayNumber: 1,
      titleEn: "How Many Claps?",
      titleMy: "လက်ခုပ် ဘယ်နှစ်ခါတီးရမလဲ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "How many claps are in the word \"cat\"?",
          questionMy:
              "\"cat\" ဟူသော စကားလုံးတွင် လက်ခုပ် ဘယ်နှစ်ခါ ပါဝင်သနည်း။",
          optionsEn: ["1", "2", "3", "4"],
          optionsMy: ["1", "2", "3", "4"],
          correctIndex: 0,
          hintsEn: [
            "Say \"cat\" slowly and clap for each beat you hear -- cat has just one beat.",
            "Clap once while you say \"cat\" -- one clap, one beat!",
          ],
          hintsMy: [
            "\"cat\" ကို နှေးနှေး အသံထွက်ပြီး ကြားရသော အသံစီအတွက် လက်ခုပ်တီးကြည့်ပါ -- cat မှာ အသံစီ တစ်ခုတည်း ရှိသည်။",
            "\"cat\" ပြောရင်း တစ်ခါတီးပါ -- တစ်ခုပ်၊ တစ်ခုပ်!",
          ],
        ),
        QuizQuestion(
          questionEn: "How many claps are in the word \"banana\"?",
          questionMy:
              "\"banana\" ဟူသော စကားလုံးတွင် လက်ခုပ် ဘယ်နှစ်ခါ ပါဝင်သနည်း။",
          optionsEn: ["3", "1", "2", "4"],
          optionsMy: ["3", "1", "2", "4"],
          correctIndex: 0,
          hintsEn: [
            "Say \"ba-na-na\" slowly, one part at a time, and clap for each part.",
            "Ba (clap) - na (clap) - na (clap) -- count the claps!",
          ],
          hintsMy: [
            "\"ba-na-na\" ကို တစ်ပိုင်းချင်း နှေးနှေး အသံထွက်ပြီး ပိုင်းတိုင်းအတွက် လက်ခုပ်တီးပါ။",
            "Ba (တီး) - na (တီး) - na (တီး) -- လက်ခုပ်အရေအတွက်ကို ရေတွက်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "How many claps are in the word \"apple\"?",
          questionMy:
              "\"apple\" ဟူသော စကားလုံးတွင် လက်ခုပ် ဘယ်နှစ်ခါ ပါဝင်သနည်း။",
          optionsEn: ["2", "1", "3", "4"],
          optionsMy: ["2", "1", "3", "4"],
          correctIndex: 0,
          hintsEn: [
            "Say \"ap-ple\" slowly, one part at a time.",
            "Ap (clap) - ple (clap) -- that is two claps.",
          ],
          hintsMy: [
            "\"ap-ple\" ကို တစ်ပိုင်းချင်း နှေးနှေး အသံထွက်ပါ။",
            "Ap (တီး) - ple (တီး) -- လက်ခုပ် နှစ်ခု ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "How many claps are in the word \"elephant\"?",
          questionMy:
              "\"elephant\" ဟူသော စကားလုံးတွင် လက်ခုပ် ဘယ်နှစ်ခါ ပါဝင်သနည်း။",
          optionsEn: ["3", "2", "1", "4"],
          optionsMy: ["3", "2", "1", "4"],
          correctIndex: 0,
          hintsEn: [
            "Say \"el-e-phant\" slowly, one part at a time.",
            "El (clap) - e (clap) - phant (clap) -- that is three claps.",
          ],
          hintsMy: [
            "\"el-e-phant\" ကို တစ်ပိုင်းချင်း နှေးနှေး အသံထွက်ပါ။",
            "El (တီး) - e (တီး) - phant (တီး) -- လက်ခုပ် သုံးခု ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w14-d2",
      dayNumber: 2,
      titleEn: "Match the Word to Its Claps",
      titleMy: "စကားလုံးကို လက်ခုပ်အရေအတွက်နှင့် ချိတ်ဆက်ပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w14-dm1",
          termEn: "dog",
          termMy: "dog",
          matchEn: "1 clap -- \"dog\" has one part",
          matchMy: "၁ ခုပ် -- \"dog\" တွင် အပိုင်း တစ်ပိုင်း ရှိသည်",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w14-dm2",
          termEn: "tiger",
          termMy: "tiger",
          matchEn: "2 claps -- \"ti-ger\" has two parts",
          matchMy: "၂ ခုပ် -- \"ti-ger\" တွင် အပိုင်း နှစ်ပိုင်း ရှိသည်",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w14-dm3",
          termEn: "computer",
          termMy: "computer",
          matchEn: "3 claps -- \"com-pu-ter\" has three parts",
          matchMy: "၃ ခုပ် -- \"com-pu-ter\" တွင် အပိုင်း သုံးပိုင်း ရှိသည်",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w14-dm4",
          termEn: "sun",
          termMy: "sun",
          matchEn: "1 clap -- \"sun\" has one part",
          matchMy: "၁ ခုပ် -- \"sun\" တွင် အပိုင်း တစ်ပိုင်း ရှိသည်",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w14-dm5",
          termEn: "rabbit",
          termMy: "rabbit",
          matchEn: "2 claps -- \"rab-bit\" has two parts",
          matchMy: "၂ ခုပ် -- \"rab-bit\" တွင် အပိုင်း နှစ်ပိုင်း ရှိသည်",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w14-dm6",
          termEn: "butterfly",
          termMy: "butterfly",
          matchEn: "3 claps -- \"but-ter-fly\" has three parts",
          matchMy: "၃ ခုပ် -- \"but-ter-fly\" တွင် အပိုင်း သုံးပိုင်း ရှိသည်",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w14-d3",
      dayNumber: 3,
      titleEn: "Sort by Number of Claps",
      titleMy: "လက်ခုပ်အရေအတွက်အလိုက် ခွဲခြားပါ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["1 Clap (Short Words)", "2 or More Claps (Long Words)"],
        bucketsMy: [
          "၁ ခုပ် (စကားလုံးတိုများ)",
          "၂ ခုပ်နှင့်အထက် (စကားလုံးရှည်များ)",
        ],
        items: [
          SortingItem(
            id: "y1eng-w14-sort1",
            labelEn: "cat",
            labelMy: "cat",
            correctBucketEn: "1 Clap (Short Words)",
            correctBucketMy: "၁ ခုပ် (စကားလုံးတိုများ)",
          ),
          SortingItem(
            id: "y1eng-w14-sort2",
            labelEn: "sun",
            labelMy: "sun",
            correctBucketEn: "1 Clap (Short Words)",
            correctBucketMy: "၁ ခုပ် (စကားလုံးတိုများ)",
          ),
          SortingItem(
            id: "y1eng-w14-sort3",
            labelEn: "dog",
            labelMy: "dog",
            correctBucketEn: "1 Clap (Short Words)",
            correctBucketMy: "၁ ခုပ် (စကားလုံးတိုများ)",
          ),
          SortingItem(
            id: "y1eng-w14-sort4",
            labelEn: "pig",
            labelMy: "pig",
            correctBucketEn: "1 Clap (Short Words)",
            correctBucketMy: "၁ ခုပ် (စကားလုံးတိုများ)",
          ),
          SortingItem(
            id: "y1eng-w14-sort5",
            labelEn: "tiger",
            labelMy: "tiger",
            correctBucketEn: "2 or More Claps (Long Words)",
            correctBucketMy: "၂ ခုပ်နှင့်အထက် (စကားလုံးရှည်များ)",
          ),
          SortingItem(
            id: "y1eng-w14-sort6",
            labelEn: "banana",
            labelMy: "banana",
            correctBucketEn: "2 or More Claps (Long Words)",
            correctBucketMy: "၂ ခုပ်နှင့်အထက် (စကားလုံးရှည်များ)",
          ),
          SortingItem(
            id: "y1eng-w14-sort7",
            labelEn: "apple",
            labelMy: "apple",
            correctBucketEn: "2 or More Claps (Long Words)",
            correctBucketMy: "၂ ခုပ်နှင့်အထက် (စကားလုံးရှည်များ)",
          ),
          SortingItem(
            id: "y1eng-w14-sort8",
            labelEn: "elephant",
            labelMy: "elephant",
            correctBucketEn: "2 or More Claps (Long Words)",
            correctBucketMy: "၂ ခုပ်နှင့်အထက် (စကားလုံးရှည်များ)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w14-d4",
      dayNumber: 4,
      titleEn: "Nay Chi Claps for Snack Time",
      titleMy: "နေချည် သရေစာစားချိန်တွင် လက်ခုပ်တီးသည်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi Claps for Snack Time",
        titleMy: "နေချည် သရေစာစားချိန်တွင် လက်ခုပ်တီးသည်",
        passageEn:
            "It was snack time at school. Nay Chi looked at the fruit on the table. Nay Chi saw an apple and clapped two times: ap-ple. Nay Chi saw a banana and clapped three times: ba-na-na. Nay Chi saw one grape and clapped just one time: grape. \"Clapping helps me hear the parts in each word!\" said Nay Chi. Nay Chi's friends clapped along too, and everyone had a fun snack time.",
        passageMy:
            "ကျောင်းတွင် သရေစာစားချိန် ရောက်လာသည်။ နေချည်သည် စားပွဲပေါ်ရှိ အသီးများကို ကြည့်လိုက်သည်။ နေချည်သည် ပန်းသီးတစ်လုံး တွေ့ပြီး နှစ်ခါတီးလိုက်သည် - ap-ple။ နေချည်သည် ငှက်ပျောသီးတစ်လုံး တွေ့ပြီး သုံးခါတီးလိုက်သည် - ba-na-na။ နေချည်သည် စပျစ်သီးတစ်လုံး တွေ့ပြီး တစ်ခါတည်း တီးလိုက်သည် - grape။ \"လက်ခုပ်တီးခြင်းက စကားလုံးတစ်ခုစီရဲ့ အပိုင်းတွေကို ကြားနိုင်ဖို့ ကူညီပေးတယ်!\" ဟု နေချည်က ပြောသည်။ နေချည်၏ သူငယ်ချင်းများကလည်း အတူတကွ လက်ခုပ်တီးခဲ့ကြပြီး၊ အားလုံး ပျော်ရွှင်သော သရေစာစားချိန် ရရှိခဲ့ကြသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "Who clapped at snack time?",
            questionMy: "သရေစာစားချိန်တွင် ဘယ်သူ လက်ခုပ်တီးခဲ့သနည်း။",
            optionsEn: ["Nay Chi", "Moe Moe", "Htet Htet", "The teacher"],
            optionsMy: ["Nay Chi", "Moe Moe", "Htet Htet", "ဆရာမ"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How many times did Nay Chi clap for \"banana\"?",
            questionMy:
                "နေချည်သည် \"banana\" အတွက် ဘယ်နှစ်ခါ လက်ခုပ်တီးခဲ့သနည်း။",
            optionsEn: ["3", "1", "2", "4"],
            optionsMy: ["3", "1", "2", "4"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How many times did Nay Chi clap for \"grape\"?",
            questionMy:
                "နေချည်သည် \"grape\" အတွက် ဘယ်နှစ်ခါ လက်ခုပ်တီးခဲ့သနည်း။",
            optionsEn: ["1", "2", "3", "4"],
            optionsMy: ["1", "2", "3", "4"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to Nay Chi, what does clapping help her hear?",
            questionMy:
                "နေချည်ပြောသည့်အတိုင်း လက်ခုပ်တီးခြင်းက သူမကို ဘာကြားရအောင် ကူညီပေးသနည်း။",
            optionsEn: [
              "The parts in each word",
              "The color of the fruit",
              "The taste of the fruit",
              "The size of the table",
            ],
            optionsMy: [
              "စကားလုံးတစ်ခုစီရဲ့ အပိုင်းများ",
              "အသီး၏ အရောင်",
              "အသီး၏ အရသာ",
              "စားပွဲ၏ အရွယ်အစား",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w14-d5",
      dayNumber: 5,
      titleEn: "Clapping Syllables Recap",
      titleMy: "အသံလုံးများ လက်ခုပ်တီးခြင်း ပြန်လှန်သုံးသပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "How many claps are in the word \"cat\"?",
          questionMy:
              "\"cat\" ဟူသော စကားလုံးတွင် လက်ခုပ် ဘယ်နှစ်ခါ ပါဝင်သနည်း။",
          optionsEn: ["1", "2", "3", "4"],
          optionsMy: ["1", "2", "3", "4"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "How many claps are in the word \"elephant\"?",
          questionMy:
              "\"elephant\" ဟူသော စကားလုံးတွင် လက်ခုပ် ဘယ်နှစ်ခါ ပါဝင်သနည်း။",
          optionsEn: ["3", "1", "2", "4"],
          optionsMy: ["3", "1", "2", "4"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the drag-match game, how many claps does \"rabbit\" have?",
          questionMy:
              "ချိတ်ဆက်ဂိမ်းထဲတွင် \"rabbit\" တွင် လက်ခုပ် ဘယ်နှစ်ခါ ရှိသနည်း။",
          optionsEn: ["2", "1", "3", "4"],
          optionsMy: ["2", "1", "3", "4"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's story, how many times did she clap for \"banana\"?",
          questionMy:
              "နေချည်၏ ဇာတ်လမ်းထဲတွင် သူမသည် \"banana\" အတွက် ဘယ်နှစ်ခါ လက်ခုပ်တီးခဲ့သနည်း။",
          optionsEn: ["3", "1", "2", "4"],
          optionsMy: ["3", "1", "2", "4"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word belongs in the \"1 Clap\" bucket?",
          questionMy: "\"၁ ခုပ်\" အတွဲထဲသို့ မည်သည့်စကားလုံး ဝင်ရမည်နည်း။",
          optionsEn: ["sun", "tiger", "banana", "elephant"],
          optionsMy: ["sun", "tiger", "banana", "elephant"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year1EnglishWeek15 = CourseWeekDef(
  id: "course-year1-english-w15",
  weekNumber: 15,
  titleEn: "Same Starting Sound (Alliteration)",
  titleMy: "အစသံတူ စကားလုံးများ (အက္ခရာသံ ထပ်ခြင်း)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w15-d1",
      dayNumber: 1,
      titleEn: "Listen to the First Sound",
      titleMy: "ပထမဆုံး အသံကို နားထောင်ပါ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which word starts with the same sound as \"big\"?",
          questionMy: "\"big\" နှင့် အစသံတူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["ball", "sun", "cat", "dog"],
          optionsMy: ["ball", "sun", "cat", "dog"],
          correctIndex: 0,
          hintsEn: [
            "Say \"big\" and \"ball\" out loud -- do they start with the same sound?",
            "Big, ball... both start with the \"b\" sound!",
          ],
          hintsMy: [
            "\"big\" နှင့် \"ball\" ကို အသံထွက်ကြည့်ပါ -- အစသံ တူညီနေပါသလား။",
            "Big, ball... နှစ်ခုစလုံး \"b\" အသံဖြင့် စတင်သည်!",
          ],
        ),
        QuizQuestion(
          questionEn: "Which word starts with the same sound as \"sun\"?",
          questionMy: "\"sun\" နှင့် အစသံတူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["snake", "dog", "hat", "tree"],
          optionsMy: ["snake", "dog", "hat", "tree"],
          correctIndex: 0,
          hintsEn: [
            "Say \"sun\" and \"snake\" out loud -- listen to the very first sound.",
            "Sun, snake... both start with the \"s\" sound!",
          ],
          hintsMy: [
            "\"sun\" နှင့် \"snake\" ကို အသံထွက်ကြည့်ပါ -- ပထမဆုံး အသံကို သေချာနားထောင်ပါ။",
            "Sun, snake... နှစ်ခုစလုံး \"s\" အသံဖြင့် စတင်သည်!",
          ],
        ),
        QuizQuestion(
          questionEn: "Which word starts with the same sound as \"mouse\"?",
          questionMy: "\"mouse\" နှင့် အစသံတူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["moon", "cat", "ball", "dog"],
          optionsMy: ["moon", "cat", "ball", "dog"],
          correctIndex: 0,
          hintsEn: [
            "Say \"mouse\" and \"moon\" out loud -- do they start the same way?",
            "Mouse, moon... both start with the \"m\" sound!",
          ],
          hintsMy: [
            "\"mouse\" နှင့် \"moon\" ကို အသံထွက်ကြည့်ပါ -- အစတူညီပါသလား။",
            "Mouse, moon... နှစ်ခုစလုံး \"m\" အသံဖြင့် စတင်သည်!",
          ],
        ),
        QuizQuestion(
          questionEn: "Which word starts with the same sound as \"three\"?",
          questionMy: "\"three\" နှင့် အစသံတူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["tree", "dog", "ball", "sun"],
          optionsMy: ["tree", "dog", "ball", "sun"],
          correctIndex: 0,
          hintsEn: [
            "Say \"three\" and \"tree\" out loud -- listen to the first sound.",
            "Three, tree... both start with the same sound!",
          ],
          hintsMy: [
            "\"three\" နှင့် \"tree\" ကို အသံထွက်ကြည့်ပါ -- ပထမဆုံးအသံကို နားထောင်ပါ။",
            "Three, tree... နှစ်ခုစလုံး အစသံ တူညီသည်!",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w15-d2",
      dayNumber: 2,
      titleEn: "Match Words That Start the Same",
      titleMy: "အစတူသော စကားလုံးများကို ချိတ်ဆက်ပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w15-dm1",
          termEn: "ball",
          termMy: "ball",
          matchEn: "Starts with the same sound as \"big\" -- the \"b\" sound",
          matchMy: "\"big\" နှင့် အစသံတူသည် -- \"b\" အသံ",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w15-dm2",
          termEn: "snake",
          termMy: "snake",
          matchEn: "Starts with the same sound as \"sun\" -- the \"s\" sound",
          matchMy: "\"sun\" နှင့် အစသံတူသည် -- \"s\" အသံ",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w15-dm3",
          termEn: "moon",
          termMy: "moon",
          matchEn: "Starts with the same sound as \"mouse\" -- the \"m\" sound",
          matchMy: "\"mouse\" နှင့် အစသံတူသည် -- \"m\" အသံ",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w15-dm4",
          termEn: "tree",
          termMy: "tree",
          matchEn: "Starts with the same sound as \"three\" -- the \"t\" sound",
          matchMy: "\"three\" နှင့် အစသံတူသည် -- \"t\" အသံ",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w15-dm5",
          termEn: "duck",
          termMy: "duck",
          matchEn: "Starts with the same sound as \"dog\" -- the \"d\" sound",
          matchMy: "\"dog\" နှင့် အစသံတူသည် -- \"d\" အသံ",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w15-dm6",
          termEn: "hen",
          termMy: "hen",
          matchEn: "Starts with the same sound as \"hat\" -- the \"h\" sound",
          matchMy: "\"hat\" နှင့် အစသံတူသည် -- \"h\" အသံ",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w15-d3",
      dayNumber: 3,
      titleEn: "Sort by First Sound",
      titleMy: "ပထမဆုံးအသံအလိုက် ခွဲခြားပါ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Starts with \"b\"", "Starts with \"s\""],
        bucketsMy: ["\"b\" ဖြင့် စတင်သည်", "\"s\" ဖြင့် စတင်သည်"],
        items: [
          SortingItem(
            id: "y1eng-w15-sort1",
            labelEn: "big",
            labelMy: "big",
            correctBucketEn: "Starts with \"b\"",
            correctBucketMy: "\"b\" ဖြင့် စတင်သည်",
          ),
          SortingItem(
            id: "y1eng-w15-sort2",
            labelEn: "ball",
            labelMy: "ball",
            correctBucketEn: "Starts with \"b\"",
            correctBucketMy: "\"b\" ဖြင့် စတင်သည်",
          ),
          SortingItem(
            id: "y1eng-w15-sort3",
            labelEn: "bear",
            labelMy: "bear",
            correctBucketEn: "Starts with \"b\"",
            correctBucketMy: "\"b\" ဖြင့် စတင်သည်",
          ),
          SortingItem(
            id: "y1eng-w15-sort4",
            labelEn: "bird",
            labelMy: "bird",
            correctBucketEn: "Starts with \"b\"",
            correctBucketMy: "\"b\" ဖြင့် စတင်သည်",
          ),
          SortingItem(
            id: "y1eng-w15-sort5",
            labelEn: "sun",
            labelMy: "sun",
            correctBucketEn: "Starts with \"s\"",
            correctBucketMy: "\"s\" ဖြင့် စတင်သည်",
          ),
          SortingItem(
            id: "y1eng-w15-sort6",
            labelEn: "snake",
            labelMy: "snake",
            correctBucketEn: "Starts with \"s\"",
            correctBucketMy: "\"s\" ဖြင့် စတင်သည်",
          ),
          SortingItem(
            id: "y1eng-w15-sort7",
            labelEn: "star",
            labelMy: "star",
            correctBucketEn: "Starts with \"s\"",
            correctBucketMy: "\"s\" ဖြင့် စတင်သည်",
          ),
          SortingItem(
            id: "y1eng-w15-sort8",
            labelEn: "sock",
            labelMy: "sock",
            correctBucketEn: "Starts with \"s\"",
            correctBucketMy: "\"s\" ဖြင့် စတင်သည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w15-d4",
      dayNumber: 4,
      titleEn: "Htet Htet's Big Blue Ball",
      titleMy: "ထက်ထက်၏ ကြီးမားသော အပြာရောင် ဘောလုံး",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Htet Htet's Big Blue Ball",
        titleMy: "ထက်ထက်၏ ကြီးမားသော အပြာရောင် ဘောလုံး",
        passageEn:
            "Htet Htet had a big blue ball. \"Big,\" \"blue,\" and \"ball\" all start with the same sound. Htet Htet bounced the ball down the path. Then Htet Htet saw a silly snake in the sand. \"Silly,\" \"snake,\" and \"sand\" all start with the same sound too. Htet Htet laughed and said, \"I love words that start the same!\" Htet Htet ran home to tell everyone the good news.",
        passageMy:
            "ထက်ထက်တွင် ကြီးမားသော အပြာရောင် ဘောလုံးတစ်လုံး ရှိသည်။ \"Big,\" \"blue,\" နှင့် \"ball\" တို့ အားလုံး အစသံတူကြသည်။ ထက်ထက်သည် ဘောလုံးကို လမ်းတစ်လျှောက် ပက်ကန်ခဲ့သည်။ ထို့နောက် ထက်ထက်သည် သဲထဲတွင် ရယ်စရာကောင်းသော မြွေတစ်ကောင် တွေ့လိုက်သည်။ \"Silly,\" \"snake,\" နှင့် \"sand\" တို့လည်း အစသံတူကြသည်။ ထက်ထက်သည် ရယ်မောရင်း \"အစတူတဲ့ စကားလုံးတွေ ရှာရတာ ကြိုက်တယ်!\" ဟု ပြောခဲ့သည်။ ထက်ထက်သည် သတင်းကောင်းကို အားလုံးကို ပြောပြရန် အိမ်ပြန်ပြေးခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What color was Htet Htet's ball?",
            questionMy: "ထက်ထက်၏ ဘောလုံးသည် ဘယ်အရောင် ရှိသနည်း။",
            optionsEn: ["Blue", "Red", "Green", "Yellow"],
            optionsMy: ["အပြာရောင်", "အနီရောင်", "အစိမ်းရောင်", "အဝါရောင်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What three words did Htet Htet notice all started with the same sound at the start of the story?",
            questionMy:
                "ဇာတ်လမ်းအစတွင် အစသံတူကြောင်း ထက်ထက် သတိထားမိသော စကားလုံးသုံးလုံးက အဘယ်နည်း။",
            optionsEn: [
              "big, blue, and ball",
              "cat, dog, and sun",
              "sun, snake, and sand",
              "hen, hat, and duck",
            ],
            optionsMy: [
              "big, blue, and ball",
              "cat, dog, and sun",
              "sun, snake, and sand",
              "hen, hat, and duck",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Htet Htet see sliding in the sand?",
            questionMy:
                "ထက်ထက်သည် သဲထဲတွင် ခွေချင်းလျှောနေသော အဘယ်အရာကို တွေ့ခဲ့သနည်း။",
            optionsEn: ["A snake", "A ball", "A bird", "A cat"],
            optionsMy: [
              "မြွေတစ်ကောင်",
              "ဘောလုံးတစ်လုံး",
              "ငှက်တစ်ကောင်",
              "ကြောင်တစ်ကောင်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Htet Htet say she loves finding?",
            questionMy: "ထက်ထက်သည် ဘာရှာဖွေရတာကို ကြိုက်ကြောင်း ပြောခဲ့သနည်း။",
            optionsEn: [
              "Words that start the same",
              "Big blue balls",
              "Silly snakes",
              "Sandy paths",
            ],
            optionsMy: [
              "အစတူသော စကားလုံးများ",
              "ကြီးမားသော အပြာရောင် ဘောလုံးများ",
              "ရယ်စရာကောင်းသော မြွေများ",
              "သဲများနှင့် ပြည့်နေသော လမ်းများ",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w15-d5",
      dayNumber: 5,
      titleEn: "Same Starting Sound Recap",
      titleMy: "အစသံတူ စကားလုံးများ ပြန်လှန်သုံးသပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which word starts with the same sound as \"big\"?",
          questionMy: "\"big\" နှင့် အစသံတူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["ball", "sun", "cat", "dog"],
          optionsMy: ["ball", "sun", "cat", "dog"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word starts with the same sound as \"sun\"?",
          questionMy: "\"sun\" နှင့် အစသံတူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["snake", "dog", "hat", "tree"],
          optionsMy: ["snake", "dog", "hat", "tree"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In the drag-match game, which word matched \"mouse\"?",
          questionMy:
              "ချိတ်ဆက်ဂိမ်းထဲတွင် \"mouse\" နှင့် မည်သည့်စကားလုံး တွဲထားသနည်း။",
          optionsEn: ["moon", "tree", "duck", "hen"],
          optionsMy: ["moon", "tree", "duck", "hen"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Htet Htet's story, what animal did she see sliding in the sand?",
          questionMy:
              "ထက်ထက်၏ ဇာတ်လမ်းထဲတွင် သဲထဲ၌ ခွေချင်းလျှောနေသော ဘယ်တိရစ္ဆာန်ကို တွေ့ခဲ့သနည်း။",
          optionsEn: ["A snake", "A ball", "A bird", "A cat"],
          optionsMy: [
            "မြွေတစ်ကောင်",
            "ဘောလုံးတစ်လုံး",
            "ငှက်တစ်ကောင်",
            "ကြောင်တစ်ကောင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word belongs in the \"Starts with s\" bucket?",
          questionMy:
              "\"s\" ဖြင့် စတင်သည် အတွဲထဲသို့ မည်သည့်စကားလုံး ဝင်ရမည်နည်း။",
          optionsEn: ["star", "big", "bear", "bird"],
          optionsMy: ["star", "big", "bear", "bird"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

/// Week 16: the term's capstone/boss week -- "The Rhyme Time Show," a
/// class performance combining rhyming words (Week 13), clapping
/// syllables (Week 14), and alliteration (Week 15) in one continuous
/// story. Moe Moe, Nay Chi, and Htet Htet each perform the skill from
/// the week they starred in, closing the term with all three friends
/// on stage together.
const CourseWeekDef _year1EnglishWeek16 = CourseWeekDef(
  id: "course-year1-english-w16",
  weekNumber: 16,
  titleEn: "The Rhyme Time Show",
  titleMy: "ကာရန်ချိန် ဖျော်ဖြေပွဲ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w16-d1",
      dayNumber: 1,
      titleEn: "Getting Ready for the Show",
      titleMy: "ဖျော်ဖြေပွဲအတွက် ပြင်ဆင်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which word rhymes with \"star\"?",
          questionMy: "\"star\" နှင့် ကာရန်တူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["car", "dog", "sun", "hat"],
          optionsMy: ["car", "dog", "sun", "hat"],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 13 -- say \"star\" and \"car\" out loud, listen to the ending sound.",
            "Star, car... -ar! Both end the same way.",
          ],
          hintsMy: [
            "Week 13 ကို သတိရပါ -- \"star\" နှင့် \"car\" ကို အသံထွက်ကြည့်ပါ၊ အဆုံးသတ်အသံကို နားထောင်ပါ။",
            "Star, car... -ar! နှစ်ခုစလုံး အဆုံးသတ် တူညီသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "How many claps are in the word \"banana\"?",
          questionMy:
              "\"banana\" ဟူသော စကားလုံးတွင် လက်ခုပ် ဘယ်နှစ်ခါ ပါဝင်သနည်း။",
          optionsEn: ["3", "1", "2", "4"],
          optionsMy: ["3", "1", "2", "4"],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 14 -- say \"ba-na-na\" slowly, one part at a time.",
            "Ba (clap) - na (clap) - na (clap) -- count the claps!",
          ],
          hintsMy: [
            "Week 14 ကို သတိရပါ -- \"ba-na-na\" ကို တစ်ပိုင်းချင်း နှေးနှေး အသံထွက်ပါ။",
            "Ba (တီး) - na (တီး) - na (တီး) -- လက်ခုပ်ရေတွက်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which word starts with the same sound as \"big\"?",
          questionMy: "\"big\" နှင့် အစသံတူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["ball", "sun", "cat", "dog"],
          optionsMy: ["ball", "sun", "cat", "dog"],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 15 -- say \"big\" and \"ball\" out loud, listen to the first sound.",
            "Big, ball... both start with the \"b\" sound!",
          ],
          hintsMy: [
            "Week 15 ကို သတိရပါ -- \"big\" နှင့် \"ball\" ကို အသံထွက်ကြည့်ပါ၊ ပထမဆုံးအသံကို နားထောင်ပါ။",
            "Big, ball... နှစ်ခုစလုံး \"b\" အသံနှင့် စတင်သည်!",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Moe Moe, Nay Chi, and Htet Htet are practicing for the Rhyme Time Show. Which skill uses clapping to count word parts?",
          questionMy:
              "မိုးမိုး၊ နေချည်၊ နှင့် ထက်ထက်တို့သည် ကာရန်ချိန် ဖျော်ဖြေပွဲအတွက် လေ့ကျင့်နေကြသည်။ စကားလုံး၏ အပိုင်းများကို ရေတွက်ရန် လက်ခုပ်တီးခြင်းကို အသုံးပြုသော ကျွမ်းကျင်မှုက အဘယ်နည်း။",
          optionsEn: [
            "Counting syllables",
            "Finding rhymes",
            "Finding the same starting sound",
            "Reading a book",
          ],
          optionsMy: [
            "အသံလုံးများကို ရေတွက်ခြင်း",
            "ကာရန်တွေ ရှာဖွေခြင်း",
            "အစသံတူညီမှုကို ရှာဖွေခြင်း",
            "စာအုပ်တစ်အုပ် ဖတ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 14's lesson on breaking words into beats.",
            "This is the skill where you clap once for every part you hear in a word.",
          ],
          hintsMy: [
            "Week 14 ၏ စကားလုံးများကို ရိုက်ချက်များအဖြစ် ပိုင်းခြားသည့် သင်ခန်းစာကို သတိရပါ။",
            "ဤသည်မှာ စကားလုံးတစ်ခုတွင် ကြားရသော အပိုင်းတိုင်းအတွက် တစ်ကြိမ်စီ လက်ခုပ်တီးရသော ကျွမ်းကျင်မှု ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w16-d2",
      dayNumber: 2,
      titleEn: "Match the Show's Word Skills",
      titleMy: "ဖျော်ဖြေပွဲ၏ စကားလုံး ကျွမ်းကျင်မှုများကို ချိတ်ဆက်ပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w16-dm1",
          termEn: "hat",
          termMy: "hat",
          matchEn: "Rhymes with \"cat\" -- same ending sound",
          matchMy: "\"cat\" နှင့် ကာရန်တူသည် -- အဆုံးသတ်အသံ တူညီသည်",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w16-dm2",
          termEn: "tiger",
          termMy: "tiger",
          matchEn: "2 claps -- \"ti-ger\" has two parts",
          matchMy: "၂ ခုပ် -- \"ti-ger\" တွင် အပိုင်း နှစ်ပိုင်း ရှိသည်",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w16-dm3",
          termEn: "duck",
          termMy: "duck",
          matchEn: "Starts with the same sound as \"dog\" -- the \"d\" sound",
          matchMy: "\"dog\" နှင့် အစသံတူသည် -- \"d\" အသံ",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w16-dm4",
          termEn: "fun",
          termMy: "fun",
          matchEn: "Rhymes with \"sun\" -- same ending sound",
          matchMy: "\"sun\" နှင့် ကာရန်တူသည် -- အဆုံးသတ်အသံ တူညီသည်",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w16-dm5",
          termEn: "elephant",
          termMy: "elephant",
          matchEn: "3 claps -- \"el-e-phant\" has three parts",
          matchMy: "၃ ခုပ် -- \"el-e-phant\" တွင် အပိုင်း သုံးပိုင်း ရှိသည်",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w16-dm6",
          termEn: "snake",
          termMy: "snake",
          matchEn: "Starts with the same sound as \"sun\" -- the \"s\" sound",
          matchMy: "\"sun\" နှင့် အစသံတူသည် -- \"s\" အသံ",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w16-d3",
      dayNumber: 3,
      titleEn: "Sort: Rhyme or Same Start Sound?",
      titleMy: "ခွဲခြားပါ - ကာရန်လား၊ အစတူလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Rhymes with \"cat\"", "Starts Like \"big\""],
        bucketsMy: ["\"cat\" နှင့် ကာရန်တူသည်", "\"big\" ကဲ့သို့ အစတူသည်"],
        items: [
          SortingItem(
            id: "y1eng-w16-sort1",
            labelEn: "hat",
            labelMy: "hat",
            correctBucketEn: "Rhymes with \"cat\"",
            correctBucketMy: "\"cat\" နှင့် ကာရန်တူသည်",
          ),
          SortingItem(
            id: "y1eng-w16-sort2",
            labelEn: "mat",
            labelMy: "mat",
            correctBucketEn: "Rhymes with \"cat\"",
            correctBucketMy: "\"cat\" နှင့် ကာရန်တူသည်",
          ),
          SortingItem(
            id: "y1eng-w16-sort3",
            labelEn: "bat",
            labelMy: "bat",
            correctBucketEn: "Rhymes with \"cat\"",
            correctBucketMy: "\"cat\" နှင့် ကာရန်တူသည်",
          ),
          SortingItem(
            id: "y1eng-w16-sort4",
            labelEn: "rat",
            labelMy: "rat",
            correctBucketEn: "Rhymes with \"cat\"",
            correctBucketMy: "\"cat\" နှင့် ကာရန်တူသည်",
          ),
          SortingItem(
            id: "y1eng-w16-sort5",
            labelEn: "ball",
            labelMy: "ball",
            correctBucketEn: "Starts Like \"big\"",
            correctBucketMy: "\"big\" ကဲ့သို့ အစတူသည်",
          ),
          SortingItem(
            id: "y1eng-w16-sort6",
            labelEn: "bear",
            labelMy: "bear",
            correctBucketEn: "Starts Like \"big\"",
            correctBucketMy: "\"big\" ကဲ့သို့ အစတူသည်",
          ),
          SortingItem(
            id: "y1eng-w16-sort7",
            labelEn: "bird",
            labelMy: "bird",
            correctBucketEn: "Starts Like \"big\"",
            correctBucketMy: "\"big\" ကဲ့သို့ အစတူသည်",
          ),
          SortingItem(
            id: "y1eng-w16-sort8",
            labelEn: "bell",
            labelMy: "bell",
            correctBucketEn: "Starts Like \"big\"",
            correctBucketMy: "\"big\" ကဲ့သို့ အစတူသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w16-d4",
      dayNumber: 4,
      titleEn: "The Rhyme Time Show",
      titleMy: "ကာရန်ချိန် ဖျော်ဖြေပွဲ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The Rhyme Time Show",
        titleMy: "ကာရန်ချိန် ဖျော်ဖြေပွဲ",
        passageEn:
            "It was the day of the Rhyme Time Show at school. Moe Moe, Nay Chi, and Htet Htet stood on the small stage together. Moe Moe went first. She held up a picture of a cat and a hat. \"Cat and hat rhyme! They end with the same sound,\" said Moe Moe. Everyone clapped. Next, Nay Chi stepped forward with a picture of a banana. \"Watch me count the parts,\" said Nay Chi. She clapped three times: ba-na-na. \"Banana has three claps!\" said Nay Chi. Everyone clapped along with her. Then Htet Htet held up a big blue ball. \"Big, blue, and ball all start with the same sound,\" said Htet Htet. The class listened and said the words together: big, blue, ball. At the end, all three friends took a bow. Ms. Thandar smiled and said, \"You used rhyme, claps, and matching first sounds -- all three ways to play with words!\" Moe Moe, Nay Chi, and Htet Htet felt very proud of their Rhyme Time Show.",
        passageMy:
            "ကျောင်းတွင် ကာရန်ချိန် ဖျော်ဖြေပွဲ ကျင်းပသည့်နေ့ ရောက်လာသည်။ မိုးမိုး၊ နေချည်၊ နှင့် ထက်ထက်တို့ စင်ငယ်ပေါ်တွင် အတူတကွ ရပ်နေကြသည်။ မိုးမိုးက ဦးဆွဲစတင်သည်။ သူမသည် ကြောင်တစ်ကောင်နှင့် ဦးထုပ်တစ်ခု၏ ပုံကို ကိုင်ဆောင်ပြသသည်။ \"Cat နဲ့ hat က ကာရန်တူတယ်! အဆုံးသတ်အသံ တူတယ်\" ဟု မိုးမိုးက ပြောသည်။ အားလုံး လက်ခုပ်တီးကြသည်။ ထို့နောက် နေချည်သည် ငှက်ပျောသီးပုံနှင့်အတူ ရှေ့သို့ ထွက်လာသည်။ \"အပိုင်းတွေကို ရေတွက်ကြည့်ပါ\" ဟု နေချည်က ပြောသည်။ သူမသည် သုံးခါတီးလိုက်သည် - ba-na-na။ \"ငှက်ပျောသီးမှာ လက်ခုပ် သုံးခု ရှိတယ်!\" ဟု နေချည်က ပြောသည်။ အားလုံးက သူမနှင့်အတူ လက်ခုပ်တီးကြသည်။ ထို့နောက် ထက်ထက်သည် ကြီးမားသော အပြာရောင် ဘောလုံးတစ်လုံးကို ကိုင်ဆောင်ပြသသည်။ \"Big, blue, နဲ့ ball တို့ အားလုံး အစတူတယ်\" ဟု ထက်ထက်က ပြောသည်။ အတန်းသားများက နားထောင်ပြီး စကားလုံးများကို အတူတကွ ပြောကြသည် - big, blue, ball။ အဆုံးတွင် သူငယ်ချင်းသုံးဦးလုံးက ဦးညွှတ်ကြသည်။ ဆရာမ သန္တာသည် ပြုံးရင်း \"သင်တို့ ကာရန်၊ လက်ခုပ်၊ နှင့် အစသံတူညီမှုကို သုံးခဲ့ကြတယ် -- စကားလုံးများနှင့် ကစားနည်း သုံးမျိုးလုံးပဲ!\" ဟု ပြောခဲ့သည်။ မိုးမိုး၊ နေချည်၊ နှင့် ထက်ထက်တို့သည် သူတို့၏ ကာရန်ချိန် ဖျော်ဖြေပွဲအတွက် အလွန် ဂုဏ်ယူခဲ့ကြသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "Who went first in the Rhyme Time Show?",
            questionMy: "ကာရန်ချိန် ဖျော်ဖြေပွဲတွင် ဘယ်သူ ဦးဆွဲစတင်ခဲ့သနည်း။",
            optionsEn: ["Moe Moe", "Nay Chi", "Htet Htet", "Ms. Thandar"],
            optionsMy: ["Moe Moe", "Nay Chi", "Htet Htet", "Ms. Thandar"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What word did Nay Chi clap three times?",
            questionMy: "နေချည်သည် ဘယ်စကားလုံးအတွက် သုံးခါတီးခဲ့သနည်း။",
            optionsEn: ["Banana", "Cat", "Ball", "Hat"],
            optionsMy: ["Banana", "Cat", "Ball", "Hat"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What three words did Htet Htet say all start with the same sound?",
            questionMy:
                "အစသံတူကြောင်း ထက်ထက် ပြောခဲ့သော စကားလုံးသုံးလုံးက အဘယ်နည်း။",
            optionsEn: [
              "big, blue, and ball",
              "cat, hat, and mat",
              "sun, fun, and run",
              "dog, duck, and bear",
            ],
            optionsMy: [
              "big, blue, and ball",
              "cat, hat, and mat",
              "sun, fun, and run",
              "dog, duck, and bear",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to Ms. Thandar, what three ways did the friends play with words?",
            questionMy:
                "ဆရာမ သန္တာ ပြောသည့်အတိုင်း သူငယ်ချင်းများသည် စကားလုံးများနှင့် ဘယ်နည်းလမ်းသုံးမျိုးဖြင့် ကစားခဲ့ကြသနည်း။",
            optionsEn: [
              "Rhyme, claps, and matching first sounds",
              "Singing, dancing, and drawing",
              "Reading, writing, and spelling",
              "Running, jumping, and clapping",
            ],
            optionsMy: [
              "ကာရန်၊ လက်ခုပ်၊ နှင့် အစသံတူညီမှု",
              "သီချင်းဆိုခြင်း၊ ကခြင်း၊ နှင့် ပန်းချီဆွဲခြင်း",
              "ဖတ်ခြင်း၊ ရေးခြင်း၊ နှင့် စာလုံးပေါင်းခြင်း",
              "ပြေးခြင်း၊ ခုန်ခြင်း၊ နှင့် လက်ခုပ်တီးခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w16-d5",
      dayNumber: 5,
      titleEn: "Term 4 Recap: The Rhyme Time Show",
      titleMy: "စတုတ္ထသက်တမ်း ပြန်လှန်သုံးသပ်ခြင်း - ကာရန်ချိန် ဖျော်ဖြေပွဲ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which word rhymes with \"cat\"?",
          questionMy: "\"cat\" နှင့် ကာရန်တူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["hat", "dog", "sun", "box"],
          optionsMy: ["hat", "dog", "sun", "box"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "How many claps are in the word \"elephant\"?",
          questionMy:
              "\"elephant\" ဟူသော စကားလုံးတွင် လက်ခုပ် ဘယ်နှစ်ခါ ပါဝင်သနည်း။",
          optionsEn: ["3", "1", "2", "4"],
          optionsMy: ["3", "1", "2", "4"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word starts with the same sound as \"big\"?",
          questionMy: "\"big\" နှင့် အစသံတူသော စကားလုံးက အဘယ်နည်း။",
          optionsEn: ["ball", "sun", "cat", "dog"],
          optionsMy: ["ball", "sun", "cat", "dog"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the Rhyme Time Show story, who clapped three times for \"banana\"?",
          questionMy:
              "ကာရန်ချိန် ဖျော်ဖြေပွဲ ဇာတ်လမ်းထဲတွင် \"banana\" အတွက် ဘယ်သူ သုံးခါတီးခဲ့သနည်း။",
          optionsEn: ["Nay Chi", "Moe Moe", "Htet Htet", "Ms. Thandar"],
          optionsMy: ["Nay Chi", "Moe Moe", "Htet Htet", "Ms. Thandar"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What did all three friends use together at the Rhyme Time Show?",
          questionMy:
              "ကာရန်ချိန် ဖျော်ဖြေပွဲတွင် သူငယ်ချင်းသုံးဦးလုံး အတူတကွ ဘာကို အသုံးပြုခဲ့ကြသနည်း။",
          optionsEn: [
            "Rhyme, claps, and matching first sounds",
            "Only rhyme",
            "Only claps",
            "Only matching first sounds",
          ],
          optionsMy: [
            "ကာရန်၊ လက်ခုပ်၊ နှင့် အစသံတူညီမှု",
            "ကာရန်သာ",
            "လက်ခုပ်သာ",
            "အစသံတူညီမှုသာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

/// Term 4: "Rhyme and Sound Play" (Weeks 13-16) closes out the first
/// half of Year 1 English's phonological-awareness strand, moving from
/// ending sounds (rhyme) to word-part beats (syllables) to beginning
/// sounds (alliteration), then combining all three in a capstone class
/// performance.
const CourseTermDef _year1EnglishTerm4 = CourseTermDef(
  id: "course-year1-english-t4",
  termNumber: 4,
  titleEn: "Rhyme and Sound Play",
  titleMy: "ကာရန်နှင့် အသံဖြင့်ကစားခြင်း",
  certificateTitleEn: "Rhyme and Sound Play",
  certificateTitleMy: "ကာရန်နှင့် အသံဖြင့်ကစားခြင်း",
  weeks: [
    _year1EnglishWeek13,
    _year1EnglishWeek14,
    _year1EnglishWeek15,
    _year1EnglishWeek16,
  ],
);
