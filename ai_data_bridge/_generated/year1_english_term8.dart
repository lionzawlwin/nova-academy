// =====================================================================
// Year 1 English -- Term 8, Week 29: "Beginning, Middle, End"
// =====================================================================
//
// Term 8 ("Writing Simple Stories") opens with the foundational idea that
// every simple story is planned in three clear parts before it is
// written: Week 29 teaches beginning/middle/end directly; Week 30 builds
// on a planned story by teaching describing words (adjectives) to make
// plain sentences more interesting; Week 31 teaches the final step of
// checking writing (capital letters, full stops, simple spelling); Week
// 32 is the capstone, combining all three skills as Moe Moe, Nay Chi, and
// Htet Htet each plan, write, and check a complete short story for their
// class's own story book.

const CourseWeekDef _year1EnglishWeek29 = CourseWeekDef(
  id: "course-year1-english-w29",
  weekNumber: 29,
  titleEn: "Beginning, Middle, End",
  titleMy: "အစ၊ အလယ်၊ အဆုံး",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w29-d1",
      dayNumber: 1,
      titleEn: "What is a Story Made Of?",
      titleMy: "ဇာတ်လမ်းတစ်ပုဒ်ကို ဘာတွေနှင့် ဖွဲ့စည်းထားသနည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Every simple story has three parts. What are they called?",
          questionMy:
              "ရိုးရှင်းသောဇာတ်လမ်းတိုင်းတွင် အပိုင်းသုံးပိုင်း ရှိသည်။ ၎င်းတို့ကို ဘာလို့ခေါ်သနည်း။",
          optionsEn: [
            "Beginning, middle, and end",
            "Big, bigger, and biggest",
            "Red, blue, and green",
            "Fast, faster, and fastest",
          ],
          optionsMy: [
            "အစ၊ အလယ်၊ နှင့် အဆုံး",
            "ကြီး၊ ပိုကြီး၊ နှင့် အကြီးဆုံး",
            "အနီ၊ အပြာ၊ နှင့် အစိမ်း",
            "မြန်၊ ပိုမြန်၊ နှင့် အမြန်ဆုံး",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about how a story starts, what happens next, and how it finishes.",
            "The first part is called the beginning, the last part is called the end.",
          ],
          hintsMy: [
            "ဇာတ်လမ်းတစ်ပုဒ်သည် မည်သို့စတင်သည်၊ ဆက်လက်ဖြစ်ပျက်သည်၊ နောက်ဆုံး မည်သို့ပြီးဆုံးသည်ကို စဉ်းစားကြည့်ပါ။",
            "ပထမအပိုင်းကို \"အစ\" ဟုခေါ်ပြီး နောက်ဆုံးအပိုင်းကို \"အဆုံး\" ဟုခေါ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What does the beginning of a story usually tell us?",
          questionMy:
              "ဇာတ်လမ်းတစ်ပုဒ်၏ အစသည် များသောအားဖြင့် ကျွန်ုပ်တို့ကို ဘာကိုပြောပြသနည်း။",
          optionsEn: [
            "Who the characters are and where the story happens",
            "How the story ends",
            "The title of the book only",
            "Nothing important",
          ],
          optionsMy: [
            "ဇာတ်ကောင်များ မည်သူဖြစ်ပြီး ဇာတ်လမ်းသည် မည်သည့်နေရာတွင် ဖြစ်ပျက်သည်ကို",
            "ဇာတ်လမ်း မည်သို့ အဆုံးသတ်သည်ကို",
            "စာအုပ်၏ ခေါင်းစဉ်ကိုသာ",
            "အရေးမကြီးသောအရာများ",
          ],
          correctIndex: 0,
          hintsEn: [
            "The beginning comes first, so it introduces the people and the place.",
            "Think about the very first sentences of a story you know.",
          ],
          hintsMy: [
            "အစသည် အဦးဆုံးလာသောကြောင့် လူများနှင့် နေရာကို မိတ်ဆက်ပေးသည်။",
            "သင်သိသောဇာတ်လမ်းတစ်ပုဒ်၏ ပထမဆုံးဝါကျများကို စဉ်းစားကြည့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "What usually happens in the middle of a story?",
          questionMy:
              "ဇာတ်လမ်းတစ်ပုဒ်၏ အလယ်တွင် များသောအားဖြင့် ဘာဖြစ်ပျက်သနည်း။",
          optionsEn: [
            "Something happens, like a problem or an adventure",
            "The story has not started yet",
            "Nothing happens at all",
            "The characters are introduced for the first time",
          ],
          optionsMy: [
            "ပြဿနာ (သို့) စွန့်စားခန်းလိုမျိုး တစ်စုံတစ်ရာ ဖြစ်ပျက်သည်",
            "ဇာတ်လမ်း မစတင်သေးပါ",
            "ဘာမှ မဖြစ်ပျက်ပါ",
            "ဇာတ်ကောင်များကို ပထမဆုံးအကြိမ် မိတ်ဆက်ပေးသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The middle is the biggest part, where the exciting action takes place.",
            "Think about a problem the characters must solve.",
          ],
          hintsMy: [
            "အလယ်ပိုင်းသည် အကြီးဆုံးအပိုင်းဖြစ်ပြီး စိတ်လှုပ်ရှားစရာ လှုပ်ရှားမှုများ ဖြစ်ပျက်ရာနေရာ ဖြစ်သည်။",
            "ဇာတ်ကောင်များ ဖြေရှင်းရမည့် ပြဿနာတစ်ခုကို စဉ်းစားကြည့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "What does the end of a story do?",
          questionMy: "ဇာတ်လမ်း၏ အဆုံးသည် ဘာလုပ်ပေးသနည်း။",
          optionsEn: [
            "It tells us how the story finishes",
            "It tells us who the characters are for the first time",
            "It only shows a picture",
            "It repeats the beginning again",
          ],
          optionsMy: [
            "ဇာတ်လမ်း မည်သို့ ပြီးဆုံးသည်ကို ကျွန်ုပ်တို့ကို ပြောပြသည်",
            "ဇာတ်ကောင်များကို ပထမဆုံးအကြိမ် မိတ်ဆက်ပေးသည်",
            "ပုံတစ်ပုံကိုသာ ပြသသည်",
            "အစကို ထပ်မံပြောပြသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The end comes last, after the problem in the middle is solved.",
            "Think about the last sentence of a story you know, like 'they lived happily ever after.'",
          ],
          hintsMy: [
            "အလယ်ပိုင်းရှိ ပြဿနာ ဖြေရှင်းပြီးနောက် အဆုံးသည် နောက်ဆုံးလာသည်။",
            "\"သူတို့ ပျော်ရွှင်စွာ နေထိုင်ခဲ့ကြသည်\" ကဲ့သို့ သင်သိသောဇာတ်လမ်း၏ နောက်ဆုံးဝါကျကို စဉ်းစားကြည့်ပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w29-d2",
      dayNumber: 2,
      titleEn: "Match the Story Planning Words",
      titleMy: "ဇာတ်လမ်းစီစဉ်ခြင်း စကားလုံးများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w29-dm1",
          termEn: "Beginning",
          termMy: "အစ (Beginning)",
          matchEn:
              "The first part of a story -- it tells us who the characters are and where they are.",
          matchMy:
              "ဇာတ်လမ်း၏ ပထမအပိုင်း -- ဇာတ်ကောင်များ မည်သူများဖြစ်ပြီး မည်သည့်နေရာတွင်ရှိသည်ကို ပြောပြသည်။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w29-dm2",
          termEn: "Middle",
          termMy: "အလယ် (Middle)",
          matchEn:
              "The biggest part of a story -- this is where something happens, like a problem.",
          matchMy:
              "ဇာတ်လမ်း၏ အကြီးဆုံးအပိုင်း -- ပြဿနာလိုမျိုး တစ်စုံတစ်ရာ ဖြစ်ပျက်ရာနေရာ ဖြစ်သည်။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w29-dm3",
          termEn: "End",
          termMy: "အဆုံး (End)",
          matchEn:
              "The last part of a story -- it tells us how the problem is solved and how the story finishes.",
          matchMy:
              "ဇာတ်လမ်း၏ နောက်ဆုံးအပိုင်း -- ပြဿနာ မည်သို့ ဖြေရှင်းပြီး ဇာတ်လမ်း မည်သို့ပြီးဆုံးသည်ကို ပြောပြသည်။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w29-dm4",
          termEn: "Character",
          termMy: "ဇာတ်ကောင် (Character)",
          matchEn: "A person or animal in a story.",
          matchMy: "ဇာတ်လမ်းထဲရှိ လူ (သို့) တိရစ္ဆာန်တစ်ကောင်။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w29-dm5",
          termEn: "Setting",
          termMy: "နေရာဇာတ်ခင်း (Setting)",
          matchEn: "The place and time where a story happens.",
          matchMy: "ဇာတ်လမ်း ဖြစ်ပျက်ရာ နေရာနှင့် အချိန်။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w29-dm6",
          termEn: "Problem",
          termMy: "ပြဿနာ (Problem)",
          matchEn: "Something a character needs to solve or fix in the story.",
          matchMy:
              "ဇာတ်လမ်းထဲတွင် ဇာတ်ကောင်တစ်ဦး ဖြေရှင်း (သို့) ပြင်ရမည့် အရာတစ်ခု။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w29-d3",
      dayNumber: 3,
      titleEn: "Sort: Beginning or End?",
      titleMy: "စီစစ်ကြမည် - အစလား၊ အဆုံးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Beginning of a Story", "End of a Story"],
        bucketsMy: ["ဇာတ်လမ်း၏ အစ", "ဇာတ်လမ်း၏ အဆုံး"],
        items: [
          SortingItem(
            id: "y1eng-w29-sort1",
            labelEn: "Once upon a time, there was a small rabbit.",
            labelMy: "တစ်ခါတစ်ရံက ယုန်ကလေးတစ်ကောင် ရှိခဲ့သည်။",
            correctBucketEn: "Beginning of a Story",
            correctBucketMy: "ဇာတ်လမ်း၏ အစ",
          ),
          SortingItem(
            id: "y1eng-w29-sort2",
            labelEn: "They all lived happily ever after.",
            labelMy: "သူတို့အားလုံး ပျော်ရွှင်စွာ နေထိုင်ခဲ့ကြသည်။",
            correctBucketEn: "End of a Story",
            correctBucketMy: "ဇာတ်လမ်း၏ အဆုံး",
          ),
          SortingItem(
            id: "y1eng-w29-sort3",
            labelEn: "One morning, Moe Moe woke up early.",
            labelMy: "တစ်နေ့မနက်တွင် မိုးမိုး စောစောနိုးခဲ့သည်။",
            correctBucketEn: "Beginning of a Story",
            correctBucketMy: "ဇာတ်လမ်း၏ အစ",
          ),
          SortingItem(
            id: "y1eng-w29-sort4",
            labelEn: "Moe Moe smiled and went happily to sleep.",
            labelMy: "မိုးမိုးသည် ပြုံးလျက် ပျော်ရွှင်စွာ အိပ်ရာဝင်ခဲ့သည်။",
            correctBucketEn: "End of a Story",
            correctBucketMy: "ဇာတ်လမ်း၏ အဆုံး",
          ),
          SortingItem(
            id: "y1eng-w29-sort5",
            labelEn: "Nay Chi lived in a small house near the river.",
            labelMy: "နေချည်သည် မြစ်ဘေးရှိ အိမ်ငယ်တစ်လုံးတွင် နေထိုင်ခဲ့သည်။",
            correctBucketEn: "Beginning of a Story",
            correctBucketMy: "ဇာတ်လမ်း၏ အစ",
          ),
          SortingItem(
            id: "y1eng-w29-sort6",
            labelEn: "Nay Chi thanked her friend, and the story ended.",
            labelMy:
                "နေချည်သည် သူငယ်ချင်းကို ကျေးဇူးတင်ပြီး ဇာတ်လမ်း ပြီးဆုံးခဲ့သည်။",
            correctBucketEn: "End of a Story",
            correctBucketMy: "ဇာတ်လမ်း၏ အဆုံး",
          ),
          SortingItem(
            id: "y1eng-w29-sort7",
            labelEn: "It was a sunny day when Htet Htet went to the park.",
            labelMy: "ထက်ထက် ပန်းခြံသို့ သွားသောနေ့သည် နေသာသောနေ့ ဖြစ်ခဲ့သည်။",
            correctBucketEn: "Beginning of a Story",
            correctBucketMy: "ဇာတ်လမ်း၏ အစ",
          ),
          SortingItem(
            id: "y1eng-w29-sort8",
            labelEn: "At last, everyone was safe and happy.",
            labelMy: "နောက်ဆုံးတွင် အားလုံး လုံခြုံပြီး ပျော်ရွှင်ကြသည်။",
            correctBucketEn: "End of a Story",
            correctBucketMy: "ဇာတ်လမ်း၏ အဆုံး",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w29-d4",
      dayNumber: 4,
      titleEn: "Reading: Moe Moe Plans a Story",
      titleMy: "စာဖတ်ခြင်း - မိုးမိုး ဇာတ်လမ်းတစ်ပုဒ် စီစဉ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Moe Moe Plans a Story",
        titleMy: "မိုးမိုး ဇာတ်လမ်းတစ်ပုဒ် စီစဉ်ခြင်း",
        passageEn:
            "Moe Moe wanted to write a story about a lost kitten. First, Moe Moe thought about the beginning. In the beginning, a small kitten is lost in a big park. Next, Moe Moe thought about the middle. In the middle, the kitten looks for home and meets a kind dog who wants to help. Then, Moe Moe thought about the end. In the end, the kind dog helps the kitten find its way home. Moe Moe smiled. Now the story had a beginning, a middle, and an end.",
        passageMy:
            "မိုးမိုးသည် ကြောင်ကလေးတစ်ကောင် ပျောက်ဆုံးသွားသည့် ဇာတ်လမ်းတစ်ပုဒ် ရေးလိုသည်။ ပထမဦးစွာ မိုးမိုးသည် အစအကြောင်း စဉ်းစားခဲ့သည်။ အစတွင် ကြောင်ကလေးတစ်ကောင် ပန်းခြံကြီးထဲတွင် ပျောက်ဆုံးနေသည်။ ထို့နောက် မိုးမိုးသည် အလယ်ပိုင်းအကြောင်း စဉ်းစားခဲ့သည်။ အလယ်ပိုင်းတွင် ကြောင်ကလေးသည် အိမ်ကိုရှာဖွေရင်း ကူညီလိုသော ခွေးသနားကလေးတစ်ကောင်ကို တွေ့ခဲ့သည်။ ထို့နောက် မိုးမိုးသည် အဆုံးအကြောင်း စဉ်းစားခဲ့သည်။ အဆုံးတွင် သနားတတ်သော ခွေးကလေးသည် ကြောင်ကလေးအား အိမ်ပြန်လမ်း ရှာပေးခဲ့သည်။ မိုးမိုး ပြုံးလိုက်သည်။ ယခုအခါ ဇာတ်လမ်းတွင် အစ၊ အလယ်၊ အဆုံး ရှိသွားပြီ ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What is Moe Moe's story about?",
            questionMy: "မိုးမိုး၏ ဇာတ်လမ်းသည် ဘာနှင့်ပတ်သက်သနည်း။",
            optionsEn: [
              "A lost kitten",
              "A lost dog",
              "A birthday party",
              "A big park with no animals",
            ],
            optionsMy: [
              "ပျောက်ဆုံးနေသော ကြောင်ကလေး",
              "ပျောက်ဆုံးနေသော ခွေးကလေး",
              "မွေးနေ့ပါတီ",
              "တိရစ္ဆာန်မရှိသော ပန်းခြံကြီး",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "In the beginning of the story, where is the kitten?",
            questionMy:
                "ဇာတ်လမ်း၏ အစတွင် ကြောင်ကလေးသည် မည်သည့်နေရာတွင် ရှိသနည်း။",
            optionsEn: [
              "Lost in a big park",
              "At home with its mother",
              "At school",
              "In a small box",
            ],
            optionsMy: [
              "ပန်းခြံကြီးထဲတွင် ပျောက်ဆုံးနေသည်",
              "အမေနှင့်အတူ အိမ်တွင်",
              "ကျောင်းတွင်",
              "ဘောက်စ်ငယ်တစ်လုံးထဲတွင်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "In the middle of the story, who does the kitten meet?",
            questionMy:
                "ဇာတ်လမ်း၏ အလယ်ပိုင်းတွင် ကြောင်ကလေးသည် မည်သူကို တွေ့ခဲ့သနည်း။",
            optionsEn: [
              "A kind dog who wants to help",
              "A scary tiger",
              "Another lost kitten",
              "No one at all",
            ],
            optionsMy: [
              "ကူညီလိုသော သနားတတ်သော ခွေးကလေး",
              "ကြောက်စရာကောင်းသော ကျားကြီး",
              "အခြားပျောက်ဆုံးနေသော ကြောင်ကလေးတစ်ကောင်",
              "ဘယ်သူမှ မရှိပါ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "In the end of the story, what happens to the kitten?",
            questionMy:
                "ဇာတ်လမ်း၏ အဆုံးတွင် ကြောင်ကလေးအပေါ် ဘာဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "The dog helps it find its way home",
              "It stays lost forever",
              "It runs away from the dog",
              "It falls asleep in the park",
            ],
            optionsMy: [
              "ခွေးကလေးက အိမ်ပြန်လမ်း ရှာပေးသည်",
              "အမြဲတမ်း ပျောက်ဆုံးနေဆဲ ဖြစ်သည်",
              "ခွေးကလေးထံမှ ထွက်ပြေးသည်",
              "ပန်းခြံထဲတွင် အိပ်ပျော်သွားသည်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w29-d5",
      dayNumber: 5,
      titleEn: "Week 29 Recap: Beginning, Middle, End",
      titleMy: "အပတ်စဉ် 29 ပြန်လည်သုံးသပ်ခြင်း - အစ၊ အလယ်၊ အဆုံး",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "How many main parts does a simple story have?",
          questionMy:
              "ရိုးရှင်းသောဇာတ်လမ်းတစ်ပုဒ်တွင် အဓိကအပိုင်း မည်မျှ ရှိသနည်း။",
          optionsEn: [
            "Three: beginning, middle, and end",
            "One part only",
            "Five parts",
            "Two parts only",
          ],
          optionsMy: [
            "သုံးပိုင်း - အစ၊ အလယ်၊ အဆုံး",
            "တစ်ပိုင်းသာ",
            "ငါးပိုင်း",
            "နှစ်ပိုင်းသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What do we call the place and time where a story happens?",
          questionMy: "ဇာတ်လမ်း ဖြစ်ပျက်ရာ နေရာနှင့် အချိန်ကို ဘာဟု ခေါ်သနည်း။",
          optionsEn: ["The setting", "The problem", "The end", "The character"],
          optionsMy: [
            "နေရာဇာတ်ခင်း (Setting)",
            "ပြဿနာ (Problem)",
            "အဆုံး (End)",
            "ဇာတ်ကောင် (Character)",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which sentence sounds like the beginning of a story?",
          questionMy: "မည်သည့်ဝါကျသည် ဇာတ်လမ်း၏ အစနှင့် ဆင်တူသနည်း။",
          optionsEn: [
            "Once upon a time, there was a small rabbit.",
            "They all lived happily ever after.",
            "The end.",
            "At last, everyone was safe and happy.",
          ],
          optionsMy: [
            "တစ်ခါတစ်ရံက ယုန်ကလေးတစ်ကောင် ရှိခဲ့သည်။",
            "သူတို့အားလုံး ပျော်ရွှင်စွာ နေထိုင်ခဲ့ကြသည်။",
            "ဇာတ်လမ်းအဆုံး။",
            "နောက်ဆုံးတွင် အားလုံး လုံခြုံပြီး ပျော်ရွှင်ကြသည်။",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In Moe Moe's story, what happened in the middle?",
          questionMy: "မိုးမိုး၏ ဇာတ်လမ်းတွင် အလယ်ပိုင်း၌ ဘာဖြစ်ပျက်ခဲ့သနည်း။",
          optionsEn: [
            "The kitten met a kind dog who wanted to help",
            "The kitten went to school",
            "Moe Moe fell asleep",
            "Nothing happened at all",
          ],
          optionsMy: [
            "ကြောင်ကလေးသည် ကူညီလိုသော သနားတတ်သောခွေးကလေးကို တွေ့ခဲ့သည်",
            "ကြောင်ကလေးသည် ကျောင်းသို့ သွားခဲ့သည်",
            "မိုးမိုး အိပ်ပျော်သွားသည်",
            "ဘာမှ မဖြစ်ပျက်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is it helpful to plan a story's beginning, middle, and end before writing it?",
          questionMy:
              "ဇာတ်လမ်းတစ်ပုဒ်ကို မရေးမီ အစ၊ အလယ်၊ အဆုံးကို စီစဉ်ထားခြင်းသည် အဘယ့်ကြောင့် အထောက်အကူဖြစ်သနည်း။",
          optionsEn: [
            "It helps the story make sense from start to finish",
            "It makes the story longer for no reason",
            "It is not helpful at all",
            "It only matters for the title",
          ],
          optionsMy: [
            "ဇာတ်လမ်းကို အစမှအဆုံးအထိ အဓိပ္ပာယ်ရှိစေသည်",
            "အကြောင်းမဲ့ ဇာတ်လမ်းကို ရှည်စေသည်",
            "လုံးဝ အထောက်အကူ မဖြစ်ပါ",
            "ခေါင်းစဉ်နှင့်သာ သက်ဆိုင်သည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Year 1 English -- Term 8, Week 30: "Adding Describing Words to Writing"
// =====================================================================

const CourseWeekDef _year1EnglishWeek30 = CourseWeekDef(
  id: "course-year1-english-w30",
  weekNumber: 30,
  titleEn: "Adding Describing Words to Writing",
  titleMy: "ရေးသားမှုတွင် ဖော်ပြသည့်စကားလုံးများ ထည့်သွင်းခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w30-d1",
      dayNumber: 1,
      titleEn: "What is a Describing Word?",
      titleMy: "ဖော်ပြသည့်စကားလုံး ဆိုသည်မှာ အဘယ်နည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A describing word tells us more about a person, animal, or thing. What is another name for it?",
          questionMy:
              "ဖော်ပြသည့်စကားလုံးသည် လူ၊ တိရစ္ဆာန် (သို့) အရာဝတ္ထုတစ်ခုအကြောင်း ပို၍ပြောပြသည်။ ၎င်းကို အခြားဘယ်လိုခေါ်သနည်း။",
          optionsEn: [
            "An adjective",
            "A full stop",
            "A capital letter",
            "A question mark",
          ],
          optionsMy: [
            "နာမဝိသေသန (Adjective)",
            "ရပ်ချက် (Full Stop)",
            "အက္ခရာကြီး (Capital Letter)",
            "မေးခွန်းအမှတ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about a word like 'big' or 'happy' -- it describes something.",
            "This word is also used in Day 2's matching game.",
          ],
          hintsMy: [
            "\"ကြီး\" (သို့) \"ပျော်ရွှင်သော\" ကဲ့သို့သောစကားလုံးကို စဉ်းစားကြည့်ပါ -- ၎င်းက တစ်ခုခုကို ဖော်ပြသည်။",
            "ဤစကားလုံးကို ဒုတိယနေ့ ကိုက်ညီစွာတွဲချိတ်ခြင်း ဂိမ်းတွင်လည်း သုံးထားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which sentence uses a describing word?",
          questionMy: "မည်သည့်ဝါကျသည် ဖော်ပြသည့်စကားလုံးကို အသုံးပြုထားသနည်း။",
          optionsEn: [
            "The big dog ran fast.",
            "The dog ran.",
            "A dog ran.",
            "Dogs ran.",
          ],
          optionsMy: [
            "ခွေးကြီးသည် မြန်စွာ ပြေးခဲ့သည်။",
            "ခွေးသည် ပြေးခဲ့သည်။",
            "ခွေးတစ်ကောင် ပြေးခဲ့သည်။",
            "ခွေးများ ပြေးခဲ့ကြသည်။",
          ],
          correctIndex: 0,
          hintsEn: [
            "Look for a word that tells us more about the dog, like its size or speed.",
            "'Big' and 'fast' are describing words -- the other sentences do not have them.",
          ],
          hintsMy: [
            "ခွေး၏ အရွယ်အစား (သို့) မြန်နှုန်းကို ပို၍ပြောပြသောစကားလုံးကို ရှာကြည့်ပါ။",
            "\"ကြီး\" နှင့် \"မြန်စွာ\" တို့သည် ဖော်ပြသည့်စကားလုံးများဖြစ်ပြီး အခြားဝါကျများတွင် မပါရှိပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "Why do writers add describing words to their sentences?",
          questionMy:
              "စာရေးဆရာများသည် ၎င်းတို့၏ ဝါကျများတွင် ဖော်ပြသည့်စကားလုံးများကို အဘယ့်ကြောင့် ထည့်ကြသနည်း။",
          optionsEn: [
            "To make writing more interesting and clear",
            "To make sentences shorter",
            "To make sentences harder to read",
            "Describing words are never useful",
          ],
          optionsMy: [
            "ရေးသားချက်ကို ပို၍ စိတ်ဝင်စားဖွယ်နှင့် ရှင်းလင်းအောင် ပြုလုပ်ရန်",
            "ဝါကျများကို ပို၍ တိုစေရန်",
            "ဝါကျများကို ဖတ်ရခက်စေရန်",
            "ဖော်ပြသည့်စကားလုံးများသည် လုံးဝ အသုံးမဝင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about the difference between 'The dog ran.' and 'The big brown dog ran fast.'",
            "Describing words help the reader picture what is happening.",
          ],
          hintsMy: [
            "\"ခွေးသည် ပြေးခဲ့သည်။\" နှင့် \"ခွေးကြီးညိုသည် မြန်စွာ ပြေးခဲ့သည်။\" ကြားက ကွာခြားချက်ကို စဉ်းစားကြည့်ပါ။",
            "ဖော်ပြသည့်စကားလုံးများသည် ဖတ်ရှုသူအား ဖြစ်ပျက်နေသည့်အရာကို စိတ်ကူးမြင်နိုင်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the sentence 'The shiny red apple fell from the tree,' which words are describing words?",
          questionMy:
              "\"တောက်ပတောက်ပ အနီရောင် ပန်းသီးသည် သစ်ပင်မှ ကျဆင်းလာသည်\" ဟူသော ဝါကျတွင် မည်သည့်စကားလုံးများသည် ဖော်ပြသည့်စကားလုံးများ ဖြစ်ကြသနည်း။",
          optionsEn: [
            "Shiny and red",
            "Apple and tree",
            "Fell and from",
            "The and the",
          ],
          optionsMy: [
            "တောက်ပတောက်ပ နှင့် အနီရောင်",
            "ပန်းသီး နှင့် သစ်ပင်",
            "ကျဆင်းလာသည် နှင့် မှ",
            "ထို နှင့် ထို",
          ],
          correctIndex: 0,
          hintsEn: [
            "Describing words tell us more about the apple -- what does it look like?",
            "'Shiny' and 'red' both describe the apple's appearance.",
          ],
          hintsMy: [
            "ဖော်ပြသည့်စကားလုံးများသည် ပန်းသီးအကြောင်း ပို၍ပြောပြသည် -- ၎င်း မည်သို့ ရုပ်ပုံပေါက်သနည်း။",
            "\"တောက်ပတောက်ပ\" နှင့် \"အနီရောင်\" နှစ်ခုစလုံးသည် ပန်းသီး၏ အသွင်အပြင်ကို ဖော်ပြသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w30-d2",
      dayNumber: 2,
      titleEn: "Match the Describing Word Types",
      titleMy: "ဖော်ပြသည့်စကားလုံးအမျိုးအစားများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w30-dm1",
          termEn: "Describing Word",
          termMy: "ဖော်ပြသည့်စကားလုံး (Describing Word)",
          matchEn:
              "A word that tells us more about a person, animal, or thing -- also called an adjective.",
          matchMy:
              "လူ၊ တိရစ္ဆာန် (သို့) အရာဝတ္ထုတစ်ခုအကြောင်း ပို၍ပြောပြသောစကားလုံး -- နာမဝိသေသန ဟုလည်း ခေါ်သည်။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w30-dm2",
          termEn: "Size Word",
          termMy: "အရွယ်အစားစကားလုံး (Size Word)",
          matchEn:
              "A describing word that tells us how big or small something is, like 'big' or 'tiny'.",
          matchMy:
              "တစ်ခုခု မည်မျှကြီး (သို့) သေးသည်ကို ပြောပြသော ဖော်ပြချက်စကားလုံး၊ ဥပမာ \"ကြီး\" (သို့) \"သေးငယ်သော\"။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w30-dm3",
          termEn: "Colour Word",
          termMy: "အရောင်စကားလုံး (Colour Word)",
          matchEn:
              "A describing word that tells us the colour of something, like 'red' or 'blue'.",
          matchMy:
              "တစ်ခုခု၏ အရောင်ကို ပြောပြသော ဖော်ပြချက်စကားလုံး၊ ဥပမာ \"အနီရောင်\" (သို့) \"အပြာရောင်\"။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w30-dm4",
          termEn: "Feeling Word",
          termMy: "ခံစားချက်စကားလုံး (Feeling Word)",
          matchEn:
              "A describing word that tells us how someone feels, like 'happy' or 'sad'.",
          matchMy:
              "တစ်စုံတစ်ယောက် မည်သို့ခံစားနေသည်ကို ပြောပြသော ဖော်ပြချက်စကားလုံး၊ ဥပမာ \"ပျော်ရွှင်သော\" (သို့) \"ဝမ်းနည်းသော\"။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w30-dm5",
          termEn: "Touch Word",
          termMy: "ထိတွေ့ခံစားချက်စကားလုံး (Touch Word)",
          matchEn:
              "A describing word that tells us how something feels to touch, like 'soft' or 'rough'.",
          matchMy:
              "တစ်ခုခုကို ထိတွေ့လျှင် မည်သို့ခံစားရသည်ကို ပြောပြသော ဖော်ပြချက်စကားလုံး၊ ဥပမာ \"နူးညံ့သော\" (သို့) \"ရိုင်းပျသော\"။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w30-dm6",
          termEn: "Sound Word",
          termMy: "အသံဖော်ပြသည့်စကားလုံး (Sound Word)",
          matchEn:
              "A describing word that tells us about a sound, like 'loud' or 'quiet'.",
          matchMy:
              "အသံတစ်ခုအကြောင်း ပြောပြသော ဖော်ပြချက်စကားလုံး၊ ဥပမာ \"ကျယ်သော\" (သို့) \"တိတ်ဆိတ်သော\"။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w30-d3",
      dayNumber: 3,
      titleEn: "Sort: Has a Describing Word or Not?",
      titleMy: "စီစစ်ကြမည် - ဖော်ပြသည့်စကားလုံး ပါသလား၊ မပါဘူးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Has a Describing Word", "No Describing Word"],
        bucketsMy: ["ဖော်ပြသည့်စကားလုံး ပါသည်", "ဖော်ပြသည့်စကားလုံး မပါ"],
        items: [
          SortingItem(
            id: "y1eng-w30-sort1",
            labelEn: "The fluffy cat sat on the mat.",
            labelMy: "ပွေ့ပွေ့ကြောင်ကလေးသည် ငြင်းပေါ်တွင် ထိုင်နေသည်။",
            correctBucketEn: "Has a Describing Word",
            correctBucketMy: "ဖော်ပြသည့်စကားလုံး ပါသည်",
          ),
          SortingItem(
            id: "y1eng-w30-sort2",
            labelEn: "The cat sat.",
            labelMy: "ကြောင်သည် ထိုင်နေသည်။",
            correctBucketEn: "No Describing Word",
            correctBucketMy: "ဖော်ပြသည့်စကားလုံး မပါ",
          ),
          SortingItem(
            id: "y1eng-w30-sort3",
            labelEn: "Nay Chi has a spotted dog.",
            labelMy: "နေချည်တွင် အစက်များပါသော ခွေးတစ်ကောင် ရှိသည်။",
            correctBucketEn: "Has a Describing Word",
            correctBucketMy: "ဖော်ပြသည့်စကားလုံး ပါသည်",
          ),
          SortingItem(
            id: "y1eng-w30-sort4",
            labelEn: "Nay Chi has a dog.",
            labelMy: "နေချည်တွင် ခွေးတစ်ကောင် ရှိသည်။",
            correctBucketEn: "No Describing Word",
            correctBucketMy: "ဖော်ပြသည့်စကားလုံး မပါ",
          ),
          SortingItem(
            id: "y1eng-w30-sort5",
            labelEn: "The sky is bright blue.",
            labelMy: "ကောင်းကင်သည် တောက်ပသော အပြာရောင် ဖြစ်သည်။",
            correctBucketEn: "Has a Describing Word",
            correctBucketMy: "ဖော်ပြသည့်စကားလုံး ပါသည်",
          ),
          SortingItem(
            id: "y1eng-w30-sort6",
            labelEn: "The sun is up.",
            labelMy: "နေထွက်နေသည်။",
            correctBucketEn: "No Describing Word",
            correctBucketMy: "ဖော်ပြသည့်စကားလုံး မပါ",
          ),
          SortingItem(
            id: "y1eng-w30-sort7",
            labelEn: "Htet Htet ate a sweet, juicy mango.",
            labelMy:
                "ထက်ထက်သည် ချိုမြိန်ပြီး အရည်များသော သရက်သီးတစ်လုံးကို စားခဲ့သည်။",
            correctBucketEn: "Has a Describing Word",
            correctBucketMy: "ဖော်ပြသည့်စကားလုံး ပါသည်",
          ),
          SortingItem(
            id: "y1eng-w30-sort8",
            labelEn: "Htet Htet ate a snack.",
            labelMy: "ထက်ထက်သည် သရေစာတစ်ခု စားခဲ့သည်။",
            correctBucketEn: "No Describing Word",
            correctBucketMy: "ဖော်ပြသည့်စကားလုံး မပါ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w30-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Colourful Garden",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ အရောင်စုံဥယျာဉ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Colourful Garden",
        titleMy: "နေချည်၏ အရောင်စုံဥယျာဉ်",
        passageEn:
            "Nay Chi wrote a sentence about her garden: 'The flower grew.' Her teacher smiled and asked, 'What did the flower look like?' Nay Chi thought carefully and wrote a new sentence: 'The bright pink flower grew tall and strong.' Her teacher said the new sentence painted a picture in her mind. Nay Chi felt proud. She looked around her garden and wrote more sentences, adding describing words like 'soft,' 'sweet,' and 'buzzing' for the bees. Nay Chi learned that describing words make writing come alive.",
        passageMy:
            "နေချည်သည် သူမ၏ ဥယျာဉ်အကြောင်း ဝါကျတစ်ခု ရေးခဲ့သည် - \"ပန်းပွင့် ပေါက်ခဲ့သည်။\" သူမ၏ ဆရာမက ပြုံးလျက် \"ပန်းပွင့်သည် မည်သို့ ရုပ်ပုံပေါက်သနည်း\" ဟု မေးခဲ့သည်။ နေချည်သည် ဂရုတစိုက် စဉ်းစားပြီး ဝါကျအသစ်တစ်ခု ရေးခဲ့သည် - \"တောက်ပသော ပန်းရောင် ပန်းပွင့်သည် မြင့်မားပြီး ခိုင်မာစွာ ပေါက်ခဲ့သည်။\" သူမ၏ ဆရာမက ဝါကျအသစ်သည် စိတ်ထဲတွင် ပုံရိပ်တစ်ခု ရေးဆွဲပေးသည်ဟု ပြောခဲ့သည်။ နေချည် ဂုဏ်ယူမိသည်။ သူမသည် ဥယျာဉ်ပတ်ဝန်းကျင်ကို ကြည့်ပြီး ပျားများအတွက် \"နူးညံ့သော\"၊ \"ချိုသော\"၊ \"ဟုန်းညံနေသော\" ကဲ့သို့သော ဖော်ပြချက်စကားလုံးများ ထပ်ဆင့်ထည့်၍ ဝါကျများ ပိုမိုရေးခဲ့သည်။ ဖော်ပြသည့်စကားလုံးများသည် ရေးသားချက်ကို အသက်ဝင်စေကြောင်း နေချည် သင်ယူခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What was Nay Chi's first, plain sentence about the flower?",
            questionMy:
                "နေချည်၏ ပန်းပွင့်အကြောင်း ပထမဆုံး ရိုးရှင်းသောဝါကျမှာ အဘယ်နည်း။",
            optionsEn: [
              "'The flower grew.'",
              "'The bright pink flower grew tall.'",
              "'The bee buzzed.'",
              "'Nay Chi has a garden.'",
            ],
            optionsMy: [
              "\"ပန်းပွင့် ပေါက်ခဲ့သည်။\"",
              "\"တောက်ပသော ပန်းရောင် ပန်းပွင့်သည် မြင့်မားစွာ ပေါက်ခဲ့သည်။\"",
              "\"ပျားက ဟုန်းညံခဲ့သည်။\"",
              "\"နေချည်တွင် ဥယျာဉ်တစ်ခု ရှိသည်။\"",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Nay Chi's teacher ask her?",
            questionMy: "နေချည်၏ ဆရာမက သူမကို ဘာမေးခဲ့သနည်း။",
            optionsEn: [
              "What did the flower look like?",
              "How many flowers are there?",
              "What is your name?",
              "Where is the garden?",
            ],
            optionsMy: [
              "ပန်းပွင့်သည် မည်သို့ ရုပ်ပုံပေါက်သနည်း",
              "ပန်းပွင့် မည်မျှ ရှိသနည်း",
              "သင့်နာမည် ဘာလဲ",
              "ဥယျာဉ် ဘယ်နေရာမှာလဲ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Which describing word did Nay Chi use for the bees?",
            questionMy:
                "နေချည်သည် ပျားများအတွက် မည်သည့်ဖော်ပြချက်စကားလုံးကို သုံးခဲ့သနည်း။",
            optionsEn: ["Buzzing", "Sad", "Loud and angry", "Cold"],
            optionsMy: [
              "ဟုန်းညံနေသော",
              "ဝမ်းနည်းသော",
              "ကျယ်လောင်ပြီး ဒေါသထွက်သော",
              "အေးမြသော",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Nay Chi learn by the end of the story?",
            questionMy: "ဇာတ်လမ်း အဆုံးတွင် နေချည် ဘာကို သင်ယူခဲ့သနည်း။",
            optionsEn: [
              "Describing words make writing come alive",
              "Describing words are not useful",
              "Only teachers can use describing words",
              "Gardens do not need describing words",
            ],
            optionsMy: [
              "ဖော်ပြသည့်စကားလုံးများသည် ရေးသားချက်ကို အသက်ဝင်စေသည်",
              "ဖော်ပြသည့်စကားလုံးများသည် အသုံးမဝင်ပါ",
              "ဆရာများသာ ဖော်ပြသည့်စကားလုံးများကို သုံးနိုင်သည်",
              "ဥယျာဉ်များတွင် ဖော်ပြသည့်စကားလုံး မလိုအပ်ပါ",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w30-d5",
      dayNumber: 5,
      titleEn: "Week 30 Recap: Describing Words",
      titleMy: "အပတ်စဉ် 30 ပြန်လည်သုံးသပ်ခြင်း - ဖော်ပြသည့်စကားလုံးများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is another name for a describing word?",
          questionMy: "ဖော်ပြသည့်စကားလုံး၏ အခြားအမည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "An adjective",
            "A full stop",
            "A character",
            "A setting",
          ],
          optionsMy: [
            "နာမဝိသေသန (Adjective)",
            "ရပ်ချက် (Full Stop)",
            "ဇာတ်ကောင်",
            "နေရာဇာတ်ခင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which type of describing word tells us how big or small something is?",
          questionMy:
              "မည်သည့်ဖော်ပြချက်စကားလုံးအမျိုးအစားက တစ်ခုခု မည်မျှကြီး (သို့) သေးသည်ကို ပြောပြသနည်း။",
          optionsEn: [
            "A size word",
            "A feeling word",
            "A sound word",
            "A full stop",
          ],
          optionsMy: [
            "အရွယ်အစားစကားလုံး",
            "ခံစားချက်စကားလုံး",
            "အသံဖော်ပြသည့်စကားလုံး",
            "ရပ်ချက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which sentence has a describing word?",
          questionMy: "မည်သည့်ဝါကျသည် ဖော်ပြသည့်စကားလုံး ပါရှိသနည်း။",
          optionsEn: [
            "The fluffy cat sat on the mat.",
            "The cat sat.",
            "A cat sat.",
            "Cats sat.",
          ],
          optionsMy: [
            "ပွေ့ပွေ့ကြောင်ကလေးသည် ငြင်းပေါ်တွင် ထိုင်နေသည်။",
            "ကြောင်သည် ထိုင်နေသည်။",
            "ကြောင်တစ်ကောင် ထိုင်နေသည်။",
            "ကြောင်များ ထိုင်နေကြသည်။",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's story, what new sentence did she write about the flower?",
          questionMy:
              "နေချည်၏ ဇာတ်လမ်းတွင် ပန်းပွင့်အကြောင်း ဝါကျအသစ် မည်သို့ ရေးခဲ့သနည်း။",
          optionsEn: [
            "'The bright pink flower grew tall and strong.'",
            "'The flower grew.'",
            "'A flower is a plant.'",
            "'Nay Chi likes gardens.'",
          ],
          optionsMy: [
            "\"တောက်ပသော ပန်းရောင် ပန်းပွင့်သည် မြင့်မားပြီး ခိုင်မာစွာ ပေါက်ခဲ့သည်။\"",
            "\"ပန်းပွင့် ပေါက်ခဲ့သည်။\"",
            "\"ပန်းပွင့်သည် အပင်တစ်မျိုးဖြစ်သည်။\"",
            "\"နေချည်သည် ဥယျာဉ်များကို ကြိုက်နှစ်သက်သည်။\"",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why should you add a describing word to a plain sentence like 'The dog ran'?",
          questionMy:
              "\"ခွေးသည် ပြေးခဲ့သည်\" ကဲ့သို့ ရိုးရှင်းသောဝါကျတွင် ဖော်ပြသည့်စကားလုံး အဘယ့်ကြောင့် ထည့်သင့်သနည်း။",
          optionsEn: [
            "To make the sentence more interesting and paint a clearer picture",
            "To make the sentence disappear",
            "Describing words are only for numbers",
            "It is against the rules to add them",
          ],
          optionsMy: [
            "ဝါကျကို ပို၍ စိတ်ဝင်စားဖွယ်ဖြစ်စေပြီး ပုံရိပ် ပို၍ ရှင်းလင်းစေရန်",
            "ဝါကျကို ပျောက်သွားစေရန်",
            "ဖော်ပြသည့်စကားလုံးများသည် ဂဏန်းများအတွက်သာ ဖြစ်သည်",
            "၎င်းတို့ ထည့်ခြင်းသည် စည်းမျဉ်းနှင့် ဆန့်ကျင်သည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Year 1 English -- Term 8, Week 31: "Checking Your Writing"
// =====================================================================

const CourseWeekDef _year1EnglishWeek31 = CourseWeekDef(
  id: "course-year1-english-w31",
  weekNumber: 31,
  titleEn: "Checking Your Writing",
  titleMy: "သင့်ရေးသားချက်ကို စစ်ဆေးခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w31-d1",
      dayNumber: 1,
      titleEn: "How Do We Check Our Writing?",
      titleMy: "ကျွန်ုပ်တို့၏ ရေးသားချက်ကို မည်သို့ စစ်ဆေးကြသနည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Every sentence should start with a...?",
          questionMy: "ဝါကျတိုင်းသည် ဘာဖြင့် စတင်သင့်သနည်း။",
          optionsEn: [
            "Capital letter",
            "Small letter",
            "Number",
            "Question mark only",
          ],
          optionsMy: ["အက္ခရာကြီး", "အက္ခရာသေး", "ဂဏန်း", "မေးခွန်းအမှတ်သာ"],
          correctIndex: 0,
          hintsEn: [
            "Think about the first letter of the first word in a sentence.",
            "This is different from a small letter -- it is a bigger, tall letter.",
          ],
          hintsMy: [
            "ဝါကျ၏ ပထမစကားလုံး၏ ပထမအက္ခရာကို စဉ်းစားကြည့်ပါ။",
            "ဤအက္ခရာသည် အက္ခရာသေးနှင့် ကွာခြားသည် -- ၎င်းသည် ပို၍ကြီးပြီး မြင့်သော အက္ခရာ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What should we put at the end of a telling sentence?",
          questionMy: "ပြောပြသောဝါကျ၏ အဆုံးတွင် ဘာထည့်သင့်သနည်း။",
          optionsEn: [
            "A full stop",
            "A capital letter",
            "Nothing at all",
            "Another whole sentence",
          ],
          optionsMy: [
            "ရပ်ချက် (Full Stop)",
            "အက္ခရာကြီး",
            "ဘာမှ မထည့်ရ",
            "အခြားဝါကျတစ်ခုလုံး",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about the small dot that shows a sentence has finished.",
            "This mark comes after the last word of the sentence.",
          ],
          hintsMy: [
            "ဝါကျတစ်ခု ပြီးဆုံးကြောင်း ပြသော အစက်ငယ်ကို စဉ်းစားကြည့်ပါ။",
            "ဤသင်္ကေတသည် ဝါကျ၏ နောက်ဆုံးစကားလုံးနောက်တွင် လာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is a good way to check if a word is spelled correctly?",
          questionMy:
              "စကားလုံးတစ်ခု စာလုံးပေါင်း မှန်မမှန် စစ်ဆေးရန် ကောင်းသောနည်းလမ်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Look at the word carefully and sound it out",
            "Never check spelling",
            "Only guess",
            "Erase the whole sentence",
          ],
          optionsMy: [
            "စကားလုံးကို ဂရုတစိုက်ကြည့်ပြီး အသံထွက်၍ စမ်းကြည့်ခြင်း",
            "စာလုံးပေါင်းကို လုံးဝ မစစ်ဆေးပါနှင့်",
            "ခန့်မှန်းရုံသာ",
            "ဝါကျတစ်ခုလုံးကို ဖျက်ပစ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about breaking a word into its sounds to see if it matches.",
            "You can also check a word against ones you already know.",
          ],
          hintsMy: [
            "စကားလုံးကို အသံများအဖြစ် ခွဲခြမ်းပြီး ကိုက်ညီမကိုက်ညီ ကြည့်ခြင်းကို စဉ်းစားကြည့်ပါ။",
            "သင်သိပြီးသားစကားလုံးများနှင့်လည်း နှိုင်းယှဉ် စစ်ဆေးနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why is it important to check your writing after you finish?",
          questionMy:
              "ရေးသားပြီးနောက် သင့်ရေးသားချက်ကို စစ်ဆေးခြင်း အဘယ့်ကြောင့် အရေးကြီးသနည်း။",
          optionsEn: [
            "To find and fix any mistakes",
            "To make the writing disappear",
            "Checking is never important",
            "To make the writing longer",
          ],
          optionsMy: [
            "မှားယွင်းချက်များကို ရှာဖွေပြီး ပြင်ဆင်ရန်",
            "ရေးသားချက်ကို ပျောက်သွားစေရန်",
            "စစ်ဆေးခြင်းသည် လုံးဝ အရေးမကြီးပါ",
            "ရေးသားချက်ကို ပို၍ ရှည်စေရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about what might happen if a capital letter or full stop is missing.",
            "Checking helps other people read and understand your writing easily.",
          ],
          hintsMy: [
            "အက္ခရာကြီး (သို့) ရပ်ချက် ပျောက်နေလျှင် ဘာဖြစ်နိုင်သည်ကို စဉ်းစားကြည့်ပါ။",
            "စစ်ဆေးခြင်းသည် အခြားသူများ သင့်ရေးသားချက်ကို လွယ်ကူစွာ ဖတ်ပြီး နားလည်နိုင်ရန် ကူညီပေးသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w31-d2",
      dayNumber: 2,
      titleEn: "Match the Checking Words",
      titleMy: "စစ်ဆေးခြင်း စကားလုံးများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w31-dm1",
          termEn: "Capital Letter",
          termMy: "အက္ခရာကြီး (Capital Letter)",
          matchEn:
              "A big, tall letter used at the start of a sentence or for a name.",
          matchMy:
              "ဝါကျ၏ အစ (သို့) နာမည်တစ်ခုအတွက် သုံးသော ကြီးမားမြင့်မားသော အက္ခရာ။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w31-dm2",
          termEn: "Full Stop",
          termMy: "ရပ်ချက် (Full Stop)",
          matchEn: "A small dot placed at the end of a telling sentence.",
          matchMy: "ပြောပြသောဝါကျ၏ အဆုံးတွင် ထားသော အစက်ငယ်။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w31-dm3",
          termEn: "Checking",
          termMy: "စစ်ဆေးခြင်း (Checking)",
          matchEn:
              "Looking back at your writing carefully to find and fix mistakes.",
          matchMy:
              "မှားယွင်းချက်များကို ရှာဖွေပြီး ပြင်ဆင်ရန် သင့်ရေးသားချက်ကို ပြန်လည် ဂရုတစိုက်ကြည့်ခြင်း။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w31-dm4",
          termEn: "Spelling",
          termMy: "စာလုံးပေါင်း (Spelling)",
          matchEn:
              "Putting the correct letters in the correct order to write a word.",
          matchMy:
              "စကားလုံးတစ်ခုကို ရေးရန် မှန်ကန်သောအက္ခရာများကို မှန်ကန်သောအစဉ်လိုက် ထားခြင်း။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w31-dm5",
          termEn: "Sentence",
          termMy: "ဝါကျ (Sentence)",
          matchEn:
              "A group of words that makes complete sense, starting with a capital letter and ending with a full stop.",
          matchMy:
              "အက္ခရာကြီးဖြင့် စတင်ပြီး ရပ်ချက်ဖြင့် အဆုံးသတ်သော၊ အဓိပ္ပာယ်ပြည့်စုံသော စကားလုံးအုပ်စု။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w31-dm6",
          termEn: "Mistake",
          termMy: "မှားယွင်းချက် (Mistake)",
          matchEn:
              "Something written that is not quite correct, like a missing capital letter.",
          matchMy:
              "အက္ခရာကြီး ကျန်နေခြင်းလိုမျိုး၊ အနည်းငယ် မှန်ကန်မှုမရှိသော ရေးသားချက်။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w31-d3",
      dayNumber: 3,
      titleEn: "Sort: Correct or Needs Fixing?",
      titleMy: "စီစစ်ကြမည် - မှန်ကန်သလား၊ ပြင်ဆင်ရန် လိုသလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Correct", "Needs Fixing"],
        bucketsMy: ["မှန်ကန်သည်", "ပြင်ဆင်ရန် လိုအပ်သည်"],
        items: [
          SortingItem(
            id: "y1eng-w31-sort1",
            labelEn: "Moe Moe likes mangoes.",
            labelMy: "Moe Moe likes mangoes.",
            correctBucketEn: "Correct",
            correctBucketMy: "မှန်ကန်သည်",
          ),
          SortingItem(
            id: "y1eng-w31-sort2",
            labelEn: "moe moe likes mangoes",
            labelMy: "moe moe likes mangoes",
            correctBucketEn: "Needs Fixing",
            correctBucketMy: "ပြင်ဆင်ရန် လိုအပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w31-sort3",
            labelEn: "Nay Chi went to school.",
            labelMy: "Nay Chi went to school.",
            correctBucketEn: "Correct",
            correctBucketMy: "မှန်ကန်သည်",
          ),
          SortingItem(
            id: "y1eng-w31-sort4",
            labelEn: "nay chi went to school",
            labelMy: "nay chi went to school",
            correctBucketEn: "Needs Fixing",
            correctBucketMy: "ပြင်ဆင်ရန် လိုအပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w31-sort5",
            labelEn: "Htet Htet has a red bag.",
            labelMy: "Htet Htet has a red bag.",
            correctBucketEn: "Correct",
            correctBucketMy: "မှန်ကန်သည်",
          ),
          SortingItem(
            id: "y1eng-w31-sort6",
            labelEn: "Htet Htet has a red bag",
            labelMy: "Htet Htet has a red bag",
            correctBucketEn: "Needs Fixing",
            correctBucketMy: "ပြင်ဆင်ရန် လိုအပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w31-sort7",
            labelEn: "The sun is bright.",
            labelMy: "The sun is bright.",
            correctBucketEn: "Correct",
            correctBucketMy: "မှန်ကန်သည်",
          ),
          SortingItem(
            id: "y1eng-w31-sort8",
            labelEn: "the Sun is bright.",
            labelMy: "the Sun is bright.",
            correctBucketEn: "Needs Fixing",
            correctBucketMy: "ပြင်ဆင်ရန် လိုအပ်သည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w31-d4",
      dayNumber: 4,
      titleEn: "Reading: Htet Htet Checks Her Story",
      titleMy: "စာဖတ်ခြင်း - ထက်ထက် သူမ၏ဇာတ်လမ်းကို စစ်ဆေးခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Htet Htet Checks Her Story",
        titleMy: "ထက်ထက် သူမ၏ဇာတ်လမ်းကို စစ်ဆေးခြင်း",
        passageEn:
            "Htet Htet finished writing a short story about a butterfly. Before showing her teacher, Htet Htet decided to check her writing carefully. First, she checked that every sentence started with a capital letter. Next, she checked that every telling sentence ended with a full stop. Then, she looked at each word slowly and sounded it out to check the spelling. Htet Htet found one mistake -- she had forgotten a full stop at the end of a sentence. She fixed it happily. Htet Htet's teacher read the story and said it was ready to be published in the class story book.",
        passageMy:
            "ထက်ထက်သည် လိပ်ပြာတစ်ကောင်အကြောင်း ဇာတ်လမ်းတိုတစ်ပုဒ် ရေးပြီးစီးခဲ့သည်။ ဆရာမကို မပြသမီ ထက်ထက်သည် သူမ၏ ရေးသားချက်ကို ဂရုတစိုက် စစ်ဆေးရန် ဆုံးဖြတ်ခဲ့သည်။ ပထမဦးစွာ ဝါကျတိုင်း အက္ခရာကြီးဖြင့် စတင်မစတင် စစ်ဆေးခဲ့သည်။ ထို့နောက် ပြောပြသောဝါကျတိုင်း ရပ်ချက်ဖြင့် အဆုံးသတ်မသတ် စစ်ဆေးခဲ့သည်။ ထို့နောက် စကားလုံးတစ်လုံးစီကို ဖြည်းညင်းစွာ ကြည့်ပြီး စာလုံးပေါင်း မှန်မမှန် အသံထွက်၍ စစ်ဆေးခဲ့သည်။ ထက်ထက်သည် မှားယွင်းချက်တစ်ခု တွေ့ခဲ့သည် -- ဝါကျတစ်ခု၏ အဆုံးတွင် ရပ်ချက် မေ့ကျန်ခဲ့သည်။ သူမသည် ပျော်ရွှင်စွာ ပြင်ဆင်ခဲ့သည်။ ထက်ထက်၏ ဆရာမသည် ဇာတ်လမ်းကို ဖတ်ပြီး အတန်း ဇာတ်လမ်းစာအုပ်တွင် ထုတ်ဝေရန် အသင့်ဖြစ်ကြောင်း ပြောခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did Htet Htet write her story about?",
            questionMy: "ထက်ထက်သည် သူမ၏ ဇာတ်လမ်းကို ဘာအကြောင်း ရေးခဲ့သနည်း။",
            optionsEn: [
              "A butterfly",
              "A birthday party",
              "A lost kitten",
              "A garden",
            ],
            optionsMy: [
              "လိပ်ပြာတစ်ကောင်",
              "မွေးနေ့ပါတီ",
              "ပျောက်ဆုံးနေသော ကြောင်ကလေး",
              "ဥယျာဉ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Htet Htet check first?",
            questionMy: "ထက်ထက် ပထမဆုံး ဘာကို စစ်ဆေးခဲ့သနည်း။",
            optionsEn: [
              "That every sentence started with a capital letter",
              "That every word was a describing word",
              "That the story was long enough",
              "That the title was correct",
            ],
            optionsMy: [
              "ဝါကျတိုင်း အက္ခရာကြီးဖြင့် စတင်ခြင်း ရှိမရှိ",
              "စကားလုံးတိုင်း ဖော်ပြသည့်စကားလုံးဖြစ်ခြင်း ရှိမရှိ",
              "ဇာတ်လမ်းသည် လုံလောက်အောင် ရှည်ခြင်း ရှိမရှိ",
              "ခေါင်းစဉ် မှန်ကန်ခြင်း ရှိမရှိ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What mistake did Htet Htet find in her writing?",
            questionMy:
                "ထက်ထက်သည် သူမ၏ ရေးသားချက်တွင် မည်သည့်မှားယွင်းချက်ကို တွေ့ခဲ့သနည်း။",
            optionsEn: [
              "A missing full stop at the end of a sentence",
              "A missing picture",
              "A missing title",
              "Too many capital letters",
            ],
            optionsMy: [
              "ဝါကျတစ်ခု၏ အဆုံးတွင် ရပ်ချက် ပျောက်နေခြင်း",
              "ပုံ ပျောက်နေခြင်း",
              "ခေါင်းစဉ် ပျောက်နေခြင်း",
              "အက္ခရာကြီး များလွန်းခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Htet Htet's teacher say about the finished, checked story?",
            questionMy:
                "ထက်ထက်၏ ဆရာမသည် စစ်ဆေးပြီးသား ဇာတ်လမ်းအကြောင်း ဘာပြောခဲ့သနည်း။",
            optionsEn: [
              "It was ready to be published in the class story book",
              "It needed to be rewritten completely",
              "It had too many mistakes",
              "It was too short to read",
            ],
            optionsMy: [
              "အတန်း ဇာတ်လမ်းစာအုပ်တွင် ထုတ်ဝေရန် အသင့်ဖြစ်ကြောင်း",
              "လုံးဝ ပြန်ရေးရမည်ဖြစ်ကြောင်း",
              "မှားယွင်းချက် အလွန်များနေကြောင်း",
              "ဖတ်ရန် တိုလွန်းကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w31-d5",
      dayNumber: 5,
      titleEn: "Week 31 Recap: Checking Your Writing",
      titleMy: "အပတ်စဉ် 31 ပြန်လည်သုံးသပ်ခြင်း - ရေးသားချက်ကို စစ်ဆေးခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What should every sentence start with?",
          questionMy: "ဝါကျတိုင်း ဘာဖြင့် စတင်သင့်သနည်း။",
          optionsEn: [
            "A capital letter",
            "A full stop",
            "A question mark",
            "A number",
          ],
          optionsMy: ["အက္ခရာကြီး", "ရပ်ချက်", "မေးခွန်းအမှတ်", "ဂဏန်း"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is checking?",
          questionMy: "\"စစ်ဆေးခြင်း\" ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Looking back at your writing carefully to find and fix mistakes",
            "Writing a brand new story",
            "Drawing a picture",
            "Reading someone else's book",
          ],
          optionsMy: [
            "မှားယွင်းချက်များကို ရှာဖွေပြင်ဆင်ရန် သင့်ရေးသားချက်ကို ပြန်လည်ဂရုတစိုက်ကြည့်ခြင်း",
            "ဇာတ်လမ်းအသစ်တစ်ပုဒ် ရေးခြင်း",
            "ပုံတစ်ပုံ ရေးဆွဲခြင်း",
            "တစ်ခြားသူ၏ စာအုပ်ကို ဖတ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which sentence is written correctly?",
          questionMy: "မည်သည့်ဝါကျသည် မှန်ကန်စွာ ရေးသားထားသနည်း။",
          optionsEn: [
            "Moe Moe likes mangoes.",
            "moe moe likes mangoes",
            "Moe moe likes mangoes",
            "moe Moe likes mangoes.",
          ],
          optionsMy: [
            "Moe Moe likes mangoes.",
            "moe moe likes mangoes",
            "Moe moe likes mangoes",
            "moe Moe likes mangoes.",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, what mistake did Htet Htet find and fix?",
          questionMy:
              "စာဖတ်ခန်းတွင် ထက်ထက် မည်သည့်မှားယွင်းချက်ကို တွေ့ပြင်ဆင်ခဲ့သနည်း။",
          optionsEn: [
            "A missing full stop at the end of a sentence",
            "A missing describing word",
            "A missing character name",
            "A missing picture",
          ],
          optionsMy: [
            "ဝါကျတစ်ခု၏ အဆုံးတွင် ရပ်ချက် ပျောက်နေခြင်း",
            "ဖော်ပြသည့်စကားလုံး ပျောက်နေခြင်း",
            "ဇာတ်ကောင်နာမည် ပျောက်နေခြင်း",
            "ပုံ ပျောက်နေခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Why is checking your writing an important last step?",
          questionMy:
              "သင့်ရေးသားချက်ကို စစ်ဆေးခြင်းသည် အဘယ့်ကြောင့် နောက်ဆုံးအဆင့် အရေးကြီးသနည်း။",
          optionsEn: [
            "It helps make sure your writing is clear and correct before others read it",
            "It makes the story shorter",
            "It is not an important step",
            "It changes the story's characters",
          ],
          optionsMy: [
            "အခြားသူများ မဖတ်မီ သင့်ရေးသားချက် ရှင်းလင်းမှန်ကန်ကြောင်း သေချာစေရန် ကူညီပေးသည်",
            "ဇာတ်လမ်းကို တိုစေသည်",
            "အရေးကြီးသောအဆင့် မဟုတ်ပါ",
            "ဇာတ်လမ်း၏ ဇာတ်ကောင်များကို ပြောင်းလဲစေသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Year 1 English -- Term 8, Week 32 (Capstone): "My First Story Book"
// =====================================================================
//
// The boss week combines all three of this term's skills in one
// continuous scenario: Moe Moe, Nay Chi, and Htet Htet each plan a
// story with a beginning/middle/end (Week 29), add describing words to
// make their sentences more interesting (Week 30), and check their
// finished writing together for capital letters, full stops, and
// spelling (Week 31) -- exactly the way Year 1 Mathematics's own Week 4
// capstone combined its first three weeks' skills into one scenario.

const CourseWeekDef _year1EnglishWeek32 = CourseWeekDef(
  id: "course-year1-english-w32",
  weekNumber: 32,
  titleEn: "My First Story Book",
  titleMy: "ကျွန်ုပ်၏ ပထမဆုံး ဇာတ်လမ်းစာအုပ်",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w32-d1",
      dayNumber: 1,
      titleEn: "Planning My Story",
      titleMy: "ကျွန်ုပ်၏ ဇာတ်လမ်းကို စီစဉ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Moe Moe, Nay Chi, and Htet Htet are each planning a story for their class story book. What should they plan first?",
          questionMy:
              "မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့သည် အတန်း ဇာတ်လမ်းစာအုပ်အတွက် ဇာတ်လမ်းတစ်ပုဒ်စီ စီစဉ်နေကြသည်။ သူတို့ ဘာကို ဦးစွာ စီစဉ်သင့်သနည်း။",
          optionsEn: [
            "The beginning, middle, and end",
            "Only the describing words",
            "Only the spelling",
            "Nothing -- just start writing",
          ],
          optionsMy: [
            "အစ၊ အလယ်၊ အဆုံး",
            "ဖော်ပြသည့်စကားလုံးများကိုသာ",
            "စာလုံးပေါင်းကိုသာ",
            "ဘာမှမလုပ်ဘဲ ချက်ချင်း ရေးစတင်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 29's lesson -- every story needs three planned parts before writing.",
            "Think about who the characters are, what problem happens, and how it is solved.",
          ],
          hintsMy: [
            "Week 29 ၏ သင်ခန်းစာကို သတိရပါ -- ဇာတ်လမ်းတိုင်းသည် မရေးမီ စီစဉ်ထားရမည့် အပိုင်းသုံးပိုင်း လိုအပ်သည်။",
            "ဇာတ်ကောင်များ မည်သူများဖြစ်ပြီး မည်သည့်ပြဿနာဖြစ်ပေါ်ကာ မည်သို့ ဖြေရှင်းသည်ကို စဉ်းစားကြည့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Moe Moe planned the beginning of her story: 'A kitten is lost in a park.' In the middle, Moe Moe wants to make her writing more interesting. What should she add?",
          questionMy:
              "မိုးမိုးသည် သူမ၏ ဇာတ်လမ်းအစကို စီစဉ်ခဲ့သည် - \"ပန်းခြံတစ်ခုတွင် ကြောင်ကလေးတစ်ကောင် ပျောက်ဆုံးနေသည်။\" အလယ်ပိုင်းတွင် မိုးမိုးသည် သူမ၏ ရေးသားချက်ကို ပို၍ စိတ်ဝင်စားဖွယ်ဖြစ်စေလိုသည်။ ဘာ ထပ်ထည့်သင့်သနည်း။",
          optionsEn: [
            "Describing words, like what the park looks like",
            "Nothing, plain sentences are best",
            "Only full stops",
            "Only capital letters",
          ],
          optionsMy: [
            "ပန်းခြံ မည်သို့ ရုပ်ပုံပေါက်သည်ကဲ့သို့သော ဖော်ပြသည့်စကားလုံးများ",
            "ဘာမှမထည့်ဘဲ ရိုးရိုးဝါကျများသာ အကောင်းဆုံးဖြစ်သည်",
            "ရပ်ချက်များကိုသာ",
            "အက္ခရာကြီးများကိုသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 30's lesson -- describing words paint a clearer picture for the reader.",
            "Think about words like 'big,' 'green,' or 'quiet' that could describe the park.",
          ],
          hintsMy: [
            "Week 30 ၏ သင်ခန်းစာကို သတိရပါ -- ဖော်ပြသည့်စကားလုံးများသည် ဖတ်ရှုသူအတွက် ပုံရိပ် ပို၍ ရှင်းလင်းအောင် ရေးဆွဲပေးသည်။",
            "ပန်းခြံကို ဖော်ပြနိုင်သော \"ကြီးမားသော\"၊ \"စိမ်းလန်းသော\"၊ (သို့) \"တိတ်ဆိတ်သော\" ကဲ့သို့သော စကားလုံးများကို စဉ်းစားကြည့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "After Nay Chi finished writing her whole story, what should she do before showing her teacher?",
          questionMy:
              "နေချည်သည် သူမ၏ ဇာတ်လမ်းတစ်ပုဒ်လုံးကို ရေးပြီးနောက် ဆရာမကို မပြသမီ ဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Check her writing for capital letters, full stops, and spelling",
            "Throw the story away",
            "Add more characters without planning",
            "Nothing -- writing is never checked",
          ],
          optionsMy: [
            "သူမ၏ ရေးသားချက်ရှိ အက္ခရာကြီး၊ ရပ်ချက်နှင့် စာလုံးပေါင်းများကို စစ်ဆေးခြင်း",
            "ဇာတ်လမ်းကို စွန့်ပစ်ခြင်း",
            "စီစဉ်မှုမပြုဘဲ ဇာတ်ကောင်များ ထပ်ထည့်ခြင်း",
            "ဘာမှမလုပ်ဘဲနေခြင်း -- ရေးသားချက်ကို ဘယ်တော့မှ မစစ်ဆေးရ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 31's lesson -- checking helps find and fix mistakes.",
            "Think about capital letters at the start of sentences and full stops at the end.",
          ],
          hintsMy: [
            "Week 31 ၏ သင်ခန်းစာကို သတိရပါ -- စစ်ဆေးခြင်းသည် မှားယွင်းချက်များကို ရှာဖွေပြင်ဆင်ရန် ကူညီပေးသည်။",
            "ဝါကျအစရှိ အက္ခရာကြီးနှင့် အဆုံးရှိ ရပ်ချက်ကို စဉ်းစားကြည့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Htet Htet planned her beginning, added describing words in the middle, and checked her writing at the end. What did Htet Htet do overall?",
          questionMy:
              "ထက်ထက်သည် သူမ၏ အစကို စီစဉ်ခဲ့ပြီး၊ အလယ်ပိုင်းတွင် ဖော်ပြသည့်စကားလုံးများ ထည့်ခဲ့ပြီး၊ အဆုံးတွင် သူမ၏ ရေးသားချက်ကို စစ်ဆေးခဲ့သည်။ ထက်ထက် အခြေခံအားဖြင့် ဘာလုပ်ခဲ့သနည်း။",
          optionsEn: [
            "She wrote and checked a complete simple story, combining all three skills",
            "She only planned but never wrote anything",
            "She only checked spelling and nothing else",
            "She only drew pictures, not words",
          ],
          optionsMy: [
            "ကျွမ်းကျင်မှုသုံးမျိုးကို ပေါင်းစပ်၍ ရိုးရှင်းသောဇာတ်လမ်းတစ်ပုဒ်လုံးကို ရေးသားပြီး စစ်ဆေးခဲ့သည်",
            "စီစဉ်ခြင်းကိုသာ လုပ်ခဲ့ပြီး ဘာမှ မရေးခဲ့ပါ",
            "စာလုံးပေါင်းကိုသာ စစ်ဆေးခဲ့ပြီး တခြားဘာမှ မလုပ်ခဲ့ပါ",
            "ပုံများကိုသာ ရေးဆွဲခဲ့ပြီး စကားလုံးများ မရေးခဲ့ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about all three weeks' skills combined -- planning, describing words, and checking.",
            "This is exactly what 'My First Story Book' is all about.",
          ],
          hintsMy: [
            "သီတင်းသုံးပတ်စလုံး၏ ကျွမ်းကျင်မှုများ ပေါင်းစပ်ထားခြင်းကို စဉ်းစားကြည့်ပါ -- စီစဉ်ခြင်း၊ ဖော်ပြသည့်စကားလုံးများနှင့် စစ်ဆေးခြင်း။",
            "ဤသည်မှာ \"ကျွန်ုပ်၏ ပထမဆုံး ဇာတ်လမ်းစာအုပ်\" ၏ အနှစ်သာရ အတိအကျပင် ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w32-d2",
      dayNumber: 2,
      titleEn: "Match the Story Skills",
      titleMy: "ဇာတ်လမ်းကျွမ်းကျင်မှုများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w32-dm1",
          termEn: "Beginning",
          termMy: "အစ (Beginning)",
          matchEn:
              "The first part of a story, introducing characters and setting.",
          matchMy:
              "ဇာတ်ကောင်များနှင့် နေရာဇာတ်ခင်းကို မိတ်ဆက်ပေးသော ဇာတ်လမ်း၏ ပထမအပိုင်း။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w32-dm2",
          termEn: "Middle",
          termMy: "အလယ် (Middle)",
          matchEn: "The part where something happens, like a problem to solve.",
          matchMy: "ဖြေရှင်းရမည့် ပြဿနာလိုမျိုး တစ်စုံတစ်ရာ ဖြစ်ပျက်ရာအပိုင်း။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w32-dm3",
          termEn: "End",
          termMy: "အဆုံး (End)",
          matchEn:
              "The last part, telling how the problem is solved and the story finishes.",
          matchMy:
              "ပြဿနာ မည်သို့ ဖြေရှင်းပြီး ဇာတ်လမ်း မည်သို့ ပြီးဆုံးသည်ကို ပြောပြသော နောက်ဆုံးအပိုင်း။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w32-dm4",
          termEn: "Describing Word",
          termMy: "ဖော်ပြသည့်စကားလုံး (Describing Word)",
          matchEn:
              "A word that makes writing more interesting, like 'shiny' or 'happy'.",
          matchMy:
              "\"တောက်ပသော\" (သို့) \"ပျော်ရွှင်သော\" ကဲ့သို့ ရေးသားချက်ကို ပို၍ စိတ်ဝင်စားဖွယ်ဖြစ်စေသော စကားလုံး။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w32-dm5",
          termEn: "Capital Letter",
          termMy: "အက္ခရာကြီး (Capital Letter)",
          matchEn: "The big letter used at the start of every sentence.",
          matchMy: "ဝါကျတိုင်း၏ အစတွင် သုံးသော အက္ခရာကြီး။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w32-dm6",
          termEn: "Full Stop",
          termMy: "ရပ်ချက် (Full Stop)",
          matchEn: "The small dot used at the end of every telling sentence.",
          matchMy: "ပြောပြသောဝါကျတိုင်း၏ အဆုံးတွင် သုံးသော အစက်ငယ်။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w32-d3",
      dayNumber: 3,
      titleEn: "Sort: Ready to Publish or Needs Checking?",
      titleMy: "စီစစ်ကြမည် - ထုတ်ဝေရန် အသင့်လား၊ စစ်ဆေးရန် လိုသလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Ready to Publish", "Needs Checking"],
        bucketsMy: ["ထုတ်ဝေရန် အသင့်ဖြစ်သည်", "စစ်ဆေးရန် လိုအပ်သည်"],
        items: [
          SortingItem(
            id: "y1eng-w32-sort1",
            labelEn: "The shiny red kite flew high in the sky.",
            labelMy: "The shiny red kite flew high in the sky.",
            correctBucketEn: "Ready to Publish",
            correctBucketMy: "ထုတ်ဝေရန် အသင့်ဖြစ်သည်",
          ),
          SortingItem(
            id: "y1eng-w32-sort2",
            labelEn: "the shiny red kite flew high in the sky",
            labelMy: "the shiny red kite flew high in the sky",
            correctBucketEn: "Needs Checking",
            correctBucketMy: "စစ်ဆေးရန် လိုအပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w32-sort3",
            labelEn: "Moe Moe wrote a happy story.",
            labelMy: "Moe Moe wrote a happy story.",
            correctBucketEn: "Ready to Publish",
            correctBucketMy: "ထုတ်ဝေရန် အသင့်ဖြစ်သည်",
          ),
          SortingItem(
            id: "y1eng-w32-sort4",
            labelEn: "moe moe wrote a happy story",
            labelMy: "moe moe wrote a happy story",
            correctBucketEn: "Needs Checking",
            correctBucketMy: "စစ်ဆေးရန် လိုအပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w32-sort5",
            labelEn: "Nay Chi's fluffy cat slept quietly.",
            labelMy: "Nay Chi's fluffy cat slept quietly.",
            correctBucketEn: "Ready to Publish",
            correctBucketMy: "ထုတ်ဝေရန် အသင့်ဖြစ်သည်",
          ),
          SortingItem(
            id: "y1eng-w32-sort6",
            labelEn: "Nay Chi's fluffy cat slept quietly",
            labelMy: "Nay Chi's fluffy cat slept quietly",
            correctBucketEn: "Needs Checking",
            correctBucketMy: "စစ်ဆေးရန် လိုအပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w32-sort7",
            labelEn: "Htet Htet drew a colourful picture.",
            labelMy: "Htet Htet drew a colourful picture.",
            correctBucketEn: "Ready to Publish",
            correctBucketMy: "ထုတ်ဝေရန် အသင့်ဖြစ်သည်",
          ),
          SortingItem(
            id: "y1eng-w32-sort8",
            labelEn: "htet htet drew a colourful picture.",
            labelMy: "htet htet drew a colourful picture.",
            correctBucketEn: "Needs Checking",
            correctBucketMy: "စစ်ဆေးရန် လိုအပ်သည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w32-d4",
      dayNumber: 4,
      titleEn: "Reading: The Three Friends' Story Book",
      titleMy: "စာဖတ်ခြင်း - သူငယ်ချင်းသုံးဦး၏ ဇာတ်လမ်းစာအုပ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The Three Friends' Story Book",
        titleMy: "သူငယ်ချင်းသုံးဦး၏ ဇာတ်လမ်းစာအုပ်",
        passageEn:
            "Moe Moe, Nay Chi, and Htet Htet were making their very own class story book. First, each friend planned their story with a clear beginning, middle, and end. Moe Moe planned a story about a lost kitten who finds its way home. Nay Chi planned a story about a colourful garden full of buzzing bees. Htet Htet planned a story about a shiny red kite flying high on a windy day. Next, each friend wrote their story, adding describing words to make their sentences more interesting -- soft fur, sweet flowers, and a bright, windy sky. Finally, before showing their teacher, the three friends checked each other's writing together. They looked for capital letters at the start of every sentence, full stops at the end, and they sounded out tricky words to check the spelling. Moe Moe found a missing full stop in Nay Chi's story, and Nay Chi found a missing capital letter in Htet Htet's story. Everyone fixed their mistakes happily. At last, the teacher read all three stories and said they were ready to be bound together into the class's very first story book.",
        passageMy:
            "မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့သည် သူတို့ကိုယ်ပိုင် အတန်း ဇာတ်လမ်းစာအုပ်ကို ပြုလုပ်နေကြသည်။ ပထမဦးစွာ သူငယ်ချင်းတစ်ဦးစီသည် သူတို့၏ ဇာတ်လမ်းကို ရှင်းလင်းသော အစ၊ အလယ်၊ အဆုံးဖြင့် စီစဉ်ခဲ့ကြသည်။ မိုးမိုးသည် အိမ်ပြန်လမ်းရှာတွေ့သော ပျောက်ဆုံးနေသည့်ကြောင်ကလေးအကြောင်း ဇာတ်လမ်းတစ်ပုဒ် စီစဉ်ခဲ့သည်။ နေချည်သည် ဟုန်းညံနေသောပျားများနှင့်ပြည့်နှက်နေသော အရောင်စုံဥယျာဉ်အကြောင်း ဇာတ်လမ်းတစ်ပုဒ် စီစဉ်ခဲ့သည်။ ထက်ထက်သည် လေတိုက်နေသောနေ့တွင် မြင့်စွာပျံသန်းနေသော တောက်ပသောအနီရောင် လေယာဉ်ကလေးအကြောင်း ဇာတ်လမ်းတစ်ပုဒ် စီစဉ်ခဲ့သည်။ ထို့နောက် သူငယ်ချင်းတစ်ဦးစီသည် သူတို့၏ဝါကျများကို ပို၍စိတ်ဝင်စားဖွယ်ဖြစ်စေရန် ဖော်ပြသည့်စကားလုံးများ ထည့်သွင်း၍ ဇာတ်လမ်းများကို ရေးခဲ့ကြသည် -- နူးညံ့သောအမွှေး၊ ချိုမြိန်သောပန်းများနှင့် တောက်ပ၍ လေတိုက်နေသောကောင်းကင်။ နောက်ဆုံးတွင် ဆရာမကို မပြသမီ သူငယ်ချင်းသုံးဦးသည် တစ်ဦးနှင့်တစ်ဦး ရေးသားချက်များကို အတူတကွ စစ်ဆေးခဲ့ကြသည်။ သူတို့သည် ဝါကျတိုင်း၏ အစရှိ အက္ခရာကြီးများ၊ အဆုံးရှိ ရပ်ချက်များကို ရှာဖွေပြီး၊ ခက်ခဲသောစကားလုံးများကို အသံထွက်၍ စာလုံးပေါင်း မှန်မမှန် စစ်ဆေးခဲ့ကြသည်။ မိုးမိုးသည် နေချည်၏ ဇာတ်လမ်းတွင် ပျောက်နေသော ရပ်ချက်တစ်ခုကို တွေ့ခဲ့ပြီး၊ နေချည်သည် ထက်ထက်၏ ဇာတ်လမ်းတွင် ပျောက်နေသော အက္ခရာကြီးတစ်ခုကို တွေ့ခဲ့သည်။ အားလုံးသည် သူတို့၏ မှားယွင်းချက်များကို ပျော်ရွှင်စွာ ပြင်ဆင်ခဲ့ကြသည်။ နောက်ဆုံးတွင် ဆရာမသည် ဇာတ်လမ်းသုံးပုဒ်လုံးကို ဖတ်ပြီး အတန်း၏ ပထမဆုံး ဇာတ်လမ်းစာအုပ်အဖြစ် အတူတကွ ချုပ်ဆက်ရန် အသင့်ဖြစ်ကြောင်း ပြောခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What was Moe Moe's story about?",
            questionMy: "မိုးမိုး၏ ဇာတ်လမ်းသည် ဘာအကြောင်းဖြစ်သနည်း။",
            optionsEn: [
              "A lost kitten who finds its way home",
              "A colourful garden",
              "A shiny red kite",
              "A birthday party",
            ],
            optionsMy: [
              "အိမ်ပြန်လမ်းရှာတွေ့သော ပျောက်ဆုံးနေသည့်ကြောင်ကလေး",
              "အရောင်စုံဥယျာဉ်",
              "တောက်ပသောအနီရောင်လေယာဉ်ကလေး",
              "မွေးနေ့ပါတီ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What describing words did the friends add to make their sentences more interesting?",
            questionMy:
                "သူငယ်ချင်းများသည် သူတို့၏ ဝါကျများကို ပို၍ စိတ်ဝင်စားဖွယ်ဖြစ်စေရန် မည်သည့်ဖော်ပြသည့်စကားလုံးများ ထည့်ခဲ့ကြသနည်း။",
            optionsEn: [
              "Words like 'soft,' 'sweet,' and 'bright'",
              "No describing words at all",
              "Only numbers",
              "Only capital letters",
            ],
            optionsMy: [
              "\"နူးညံ့သော\"၊ \"ချိုမြိန်သော\"နှင့် \"တောက်ပသော\" ကဲ့သို့သောစကားလုံးများ",
              "ဖော်ပြသည့်စကားလုံး လုံးဝ မထည့်ခဲ့ပါ",
              "ဂဏန်းများကိုသာ",
              "အက္ခရာကြီးများကိုသာ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What mistake did Moe Moe find in Nay Chi's story?",
            questionMy:
                "နေချည်၏ ဇာတ်လမ်းတွင် မိုးမိုးသည် မည်သည့်မှားယွင်းချက်ကို တွေ့ခဲ့သနည်း။",
            optionsEn: [
              "A missing full stop",
              "A missing character",
              "A missing title",
              "A missing describing word",
            ],
            optionsMy: [
              "ပျောက်နေသော ရပ်ချက်",
              "ပျောက်နေသော ဇာတ်ကောင်",
              "ပျောက်နေသော ခေါင်းစဉ်",
              "ပျောက်နေသော ဖော်ပြသည့်စကားလုံး",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did the teacher say about the three checked and finished stories?",
            questionMy:
                "စစ်ဆေးပြီး ပြီးစီးသွားသော ဇာတ်လမ်းသုံးပုဒ်အကြောင်း ဆရာမ ဘာပြောခဲ့သနည်း။",
            optionsEn: [
              "They were ready to be bound into the class's first story book",
              "They needed to be planned all over again",
              "They had too many mistakes to fix",
              "They were too short to read",
            ],
            optionsMy: [
              "အတန်း၏ ပထမဆုံးဇာတ်လမ်းစာအုပ်အဖြစ် ချုပ်ဆက်ရန် အသင့်ဖြစ်ကြောင်း",
              "ထပ်မံ၍ အစအဆုံး စီစဉ်ရမည်ဖြစ်ကြောင်း",
              "ပြင်ရန် မှားယွင်းချက် အလွန်များနေကြောင်း",
              "ဖတ်ရန် တိုလွန်းနေကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w32-d5",
      dayNumber: 5,
      titleEn: "Week 32 Recap: My First Story Book -- Term 8 Capstone",
      titleMy:
          "အပတ်စဉ် 32 ပြန်လည်သုံးသပ်ခြင်း - ကျွန်ုပ်၏ ပထမဆုံး ဇာတ်လမ်းစာအုပ် -- နှစ်ဝက် 8 အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What are the three parts every story needs, which the three friends planned first?",
          questionMy:
              "သူငယ်ချင်းသုံးဦးက ဦးစွာ စီစဉ်ခဲ့သော ဇာတ်လမ်းတိုင်းလိုအပ်သည့် အပိုင်းသုံးပိုင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Beginning, middle, and end",
            "Title, author, and pictures only",
            "Only a middle",
            "Numbers, letters, and colours",
          ],
          optionsMy: [
            "အစ၊ အလယ်၊ အဆုံး",
            "ခေါင်းစဉ်၊ စာရေးသူနှင့် ပုံများသာ",
            "အလယ်ပိုင်းသာ",
            "ဂဏန်း၊ အက္ခရာနှင့် အရောင်များ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What did Nay Chi and Htet Htet add to their sentences to make them more interesting?",
          questionMy:
              "နေချည်နှင့် ထက်ထက်တို့သည် သူတို့၏ဝါကျများကို ပို၍ စိတ်ဝင်စားဖွယ်ဖြစ်စေရန် ဘာထည့်ခဲ့ကြသနည်း။",
          optionsEn: [
            "Describing words",
            "Only numbers",
            "Only questions",
            "Nothing new",
          ],
          optionsMy: [
            "ဖော်ပြသည့်စကားလုံးများ",
            "ဂဏန်းများကိုသာ",
            "မေးခွန်းများကိုသာ",
            "ဘာမှ အသစ်မထည့်ခဲ့ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Before showing their teacher, what did the three friends do to their writing?",
          questionMy:
              "ဆရာမကို မပြသမီ သူငယ်ချင်းသုံးဦးသည် သူတို့၏ ရေးသားချက်ကို ဘာလုပ်ခဲ့ကြသနည်း။",
          optionsEn: [
            "Checked it together for capital letters, full stops, and spelling",
            "Threw it away and started a new story",
            "Added more pictures only",
            "Nothing at all",
          ],
          optionsMy: [
            "အက္ခရာကြီး၊ ရပ်ချက်နှင့် စာလုံးပေါင်းများအတွက် အတူတကွ စစ်ဆေးခဲ့ကြသည်",
            "စွန့်ပစ်ပြီး ဇာတ်လမ်းအသစ် စတင်ခဲ့ကြသည်",
            "ပုံများကိုသာ ထပ်ထည့်ခဲ့ကြသည်",
            "ဘာမှမလုပ်ခဲ့ကြပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, what mistake did Nay Chi find in Htet Htet's story?",
          questionMy:
              "စာဖတ်ခန်းတွင် ထက်ထက်၏ ဇာတ်လမ်းတွင် နေချည်သည် မည်သည့်မှားယွင်းချက်ကို တွေ့ခဲ့သနည်း။",
          optionsEn: [
            "A missing capital letter",
            "A missing full stop",
            "A missing character",
            "A missing ending",
          ],
          optionsMy: [
            "ပျောက်နေသော အက္ခရာကြီး",
            "ပျောက်နေသော ရပ်ချက်",
            "ပျောက်နေသော ဇာတ်ကောင်",
            "ပျောက်နေသော အဆုံးသတ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Looking back at the whole term, what one big skill did Moe Moe, Nay Chi, and Htet Htet all use together to make their first story book?",
          questionMy:
              "ဤနှစ်ဝက်တစ်ခုလုံးကို ပြန်ကြည့်လျှင် မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့ ၎င်းတို့၏ ပထမဆုံး ဇာတ်လမ်းစာအုပ်ကို ပြုလုပ်ရန် အတူတကွ အသုံးပြုခဲ့သော ကျွမ်းကျင်မှုကြီးတစ်ခုတည်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Planning a story, adding describing words, and checking their writing",
            "Only drawing pictures, nothing else mattered",
            "Only counting pages, nothing else mattered",
            "Only choosing a title, nothing else mattered",
          ],
          optionsMy: [
            "ဇာတ်လမ်းစီစဉ်ခြင်း၊ ဖော်ပြသည့်စကားလုံးများ ထည့်သွင်းခြင်းနှင့် ရေးသားချက်ကို စစ်ဆေးခြင်း",
            "ပုံများကိုသာ ရေးဆွဲခဲ့ခြင်းမှလွဲ၍ အခြားမည်သည့်အရာမျှ အရေးမကြီးပါ",
            "စာမျက်နှာများကိုသာ ရေတွက်ခဲ့ခြင်းမှလွဲ၍ အခြားမည်သည့်အရာမျှ အရေးမကြီးပါ",
            "ခေါင်းစဉ်ကိုသာ ရွေးချယ်ခဲ့ခြင်းမှလွဲ၍ အခြားမည်သည့်အရာမျှ အရေးမကြီးပါ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

/// Term 8: "Writing Simple Stories" (Weeks 29-32) teaches the foundations
/// of narrative writing: Week 29 introduces beginning/middle/end story
/// planning; Week 30 layers in describing words (adjectives) to make
/// plain sentences more interesting; Week 31 teaches the final checking
/// step -- capital letters, full stops, and simple spelling checks; Week
/// 32 is the capstone, where Moe Moe, Nay Chi, and Htet Htet each plan,
/// write, and check a complete short story for their class's own story
/// book, combining all three skills in one continuous scenario, the same
/// way Year 1 Mathematics's own Week 4 capstone worked.
const CourseTermDef _year1EnglishTerm8 = CourseTermDef(
  id: "course-year1-english-t8",
  termNumber: 8,
  titleEn: "Writing Simple Stories",
  titleMy: "ရိုးရှင်းသော ဇာတ်လမ်းများ ရေးသားခြင်း",
  certificateTitleEn: "Writing Simple Stories",
  certificateTitleMy: "ရိုးရှင်းသော ဇာတ်လမ်းများ ရေးသားခြင်း",
  weeks: [
    _year1EnglishWeek29,
    _year1EnglishWeek30,
    _year1EnglishWeek31,
    _year1EnglishWeek32,
  ],
);
