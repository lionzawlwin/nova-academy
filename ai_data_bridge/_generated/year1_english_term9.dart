// =====================================================================
// Year 1 English -- Term 9: "The Year 1 English Showcase"
// Weeks 33-36 (global week numbers). This closing term reviews the
// whole 36-week Year 1 English pathway in three themed recap weeks --
// Week 33 revisits Terms 1-2 (phonics and sentence building), Week 34
// revisits Terms 3-4 (storytelling and sound play), and Week 35 revisits
// Terms 5-6 (describing and questioning) -- before Week 36's capstone
// showcase, where Moe Moe, Nay Chi, and Htet Htet each present a piece
// of the whole year and the class ties every term together at once.
// =====================================================================

// =====================================================================
// Week 33: "Phonics and Sentences Recap" (recaps Terms 1-2)
// =====================================================================

const CourseWeekDef _year1EnglishWeek33 = CourseWeekDef(
  id: "course-year1-english-w33",
  weekNumber: 33,
  titleEn: "Phonics and Sentences Recap",
  titleMy: "အသံထွက်စာလုံးနှင့် စာကြောင်းများ ပြန်လည်သုံးသပ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w33-d1",
      dayNumber: 1,
      titleEn: "Phonics and Sentences Quiz",
      titleMy: "အသံထွက်စာလုံးနှင့် စာကြောင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which of these words is a CVC word, like the ones from Term 1?",
          questionMy:
              "အောက်ပါ စကားလုံးများအနက် ပထမနှစ်ဝက် (Term 1) က သင်ခဲ့သော CVC စကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["cat", "ship", "three", "play"],
          optionsMy: ["cat", "ship", "three", "play"],
          correctIndex: 0,
          hintsEn: [
            "Recall Term 1's phonics box -- a CVC word has just three sounds: consonant, vowel, consonant, like c-a-t.",
            "\"Ship\" starts with two letters making one sound, and \"three\"/\"play\" have more than three letters -- only one option is a simple three-sound word.",
          ],
          hintsMy: [
            "Term 1 ၏ အသံထွက်သင်ခန်းစာကို သတိရပါ -- CVC စကားလုံးတွင် အသံသုံးသံသာ ရှိသည် - အက္ခရာ၊ သရ၊ အက္ခရာ၊ ဥပမာ c-a-t။",
            "\"Ship\" သည် အသံတစ်သံပြုသော အက္ခရာနှစ်လုံးဖြင့် စတင်ပြီး \"three\"/\"play\" တွင် အက္ခရာသုံးလုံးထက် ပိုများသည် -- ရိုးရှင်းသော အသံသုံးသံပါစကားလုံးမှာ တစ်ခုသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which word has the 'sh' digraph, like we learned in Term 1?",
          questionMy:
              "Term 1 တွင် သင်ခဲ့သော 'sh' ဒိုင်ဂရပ်ပါသော စကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["ship", "cat", "sun", "dog"],
          optionsMy: ["ship", "cat", "sun", "dog"],
          correctIndex: 0,
          hintsEn: [
            "Recall Term 1 -- a digraph is two letters that make one new sound together, like s and h making \"sh\".",
            "Look at the very first two letters of each word -- only one option starts with s and h side by side.",
          ],
          hintsMy: [
            "Term 1 ကို သတိရပါ -- ဒိုင်ဂရပ်ဆိုသည်မှာ အက္ခရာနှစ်လုံးပေါင်း၍ အသံသစ်တစ်သံ ပြုလုပ်ခြင်းဖြစ်သည်၊ s နှင့် h ပေါင်း၍ \"sh\" ဖြစ်လာသကဲ့သို့။",
            "စကားလုံးတစ်ခုစီ၏ ပထမအက္ခရာနှစ်လုံးကို ကြည့်ပါ -- s နှင့် h ကို ဆက်တိုက်ဖြင့် စတင်သည့်အရာမှာ တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which word is a sight word we should know straight away, like Term 1 taught us?",
          questionMy:
              "Term 1 က သင်ပေးခဲ့သည့်အတိုင်း ချက်ချင်းသိသင့်သော အမြင်ဖတ်စကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["the", "hop", "pig", "mud"],
          optionsMy: ["the", "hop", "pig", "mud"],
          correctIndex: 0,
          hintsEn: [
            "Recall Term 1's sight word cards -- these are words we don't need to sound out, we just know them by sight.",
            "\"Hop\", \"pig\", and \"mud\" are all CVC words we sound out -- only one option is a sight word we read on sight.",
          ],
          hintsMy: [
            "Term 1 ၏ အမြင်ဖတ်ကတ်ပြားများကို သတိရပါ -- ဤစကားလုံးများသည် အသံထွက်ရန် မလိုအပ်ဘဲ အမြင်ဖြင့် ချက်ချင်း သိရသည့်စကားလုံးများ ဖြစ်သည်။",
            "\"Hop\"၊ \"pig\" နှင့် \"mud\" တို့သည် အသံထွက်ရသော CVC စကားလုံးများသာ ဖြစ်ကြသည် -- အမြင်ဖတ်ရသောစကားလုံးမှာ တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these is a complete simple sentence, the way Term 2 taught us to build one?",
          questionMy:
              "Term 2 က သင်ခန်းစားနည်း စာကြောင်းပြည့်စုံစွာ တည်ဆောက်ရမည့်အတိုင်း ဖြစ်သည့် အရာမှာ မည်သည်နည်း။",
          optionsEn: ["The cat sat.", "cat the sat", "sat cat the", "The cat"],
          optionsMy: ["The cat sat.", "cat the sat", "sat cat the", "The cat"],
          correctIndex: 0,
          hintsEn: [
            "Recall Term 2 -- a simple sentence has a naming word and an action word, starts with a capital letter, and ends with a full stop.",
            "Only one option is in the right word order, starts with a capital letter, and ends with a full stop.",
          ],
          hintsMy: [
            "Term 2 ကို သတိရပါ -- ရိုးရှင်းသော စာကြောင်းတွင် နာမည်ပေးစကားလုံးနှင့် လုပ်ဆောင်မှုစကားလုံး ရှိပြီး၊ အက္ခရာကြီးဖြင့် စတင်ကာ စာကြောင်းဆုံးအမှတ်ဖြင့် အဆုံးသတ်သည်။",
            "စကားလုံးအစီအစဉ်မှန်ကန်ပြီး အက္ခရာကြီးဖြင့်စတင်ကာ စာကြောင်းဆုံးအမှတ်ဖြင့်အဆုံးသတ်သောအရာမှာ တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w33-d2",
      dayNumber: 2,
      titleEn: "Match the Phonics and Sentence Terms",
      titleMy: "အသံထွက်နှင့် စာကြောင်း ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w33-dm1",
          termEn: "CVC Word",
          termMy: "CVC စကားလုံး (အက္ခရာ-သရ-အက္ခရာ)",
          matchEn:
              "A short word made of consonant-vowel-consonant sounds, like cat or dog.",
          matchMy:
              "အက္ခရာ-သရ-အက္ခရာ အသံများဖြင့် ဖွဲ့စည်းထားသော စကားလုံးတိုတစ်လုံး၊ ဥပမာ cat သို့မဟုတ် dog။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w33-dm2",
          termEn: "Digraph",
          termMy: "ဒိုင်ဂရပ် (Digraph)",
          matchEn: "Two letters that make one sound together, like sh in ship.",
          matchMy:
              "အက္ခရာနှစ်လုံးပေါင်း၍ အသံတစ်သံတည်း ပြုလုပ်ခြင်း၊ ဥပမာ ship တွင် sh။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w33-dm3",
          termEn: "Sight Word",
          termMy: "အမြင်ဖတ်စကားလုံး (Sight Word)",
          matchEn:
              "A word we know by sight and read straight away, like the or is.",
          matchMy:
              "အမြင်ဖြင့် သိပြီး ချက်ချင်းဖတ်နိုင်သောစကားလုံး၊ ဥပမာ the သို့မဟုတ် is။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w33-dm4",
          termEn: "Capital Letter",
          termMy: "အက္ခရာကြီး (Capital Letter)",
          matchEn: "The big letter used to start every sentence.",
          matchMy: "စာကြောင်းတိုင်းကို စတင်ရန် အသုံးပြုသော အက္ခရာကြီး။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w33-dm5",
          termEn: "Full Stop",
          termMy: "စာကြောင်းဆုံးအမှတ် (Full Stop)",
          matchEn: "The small dot used to end a telling sentence.",
          matchMy: "ပြောပြသောစာကြောင်းကို အဆုံးသတ်ရန် အသုံးပြုသော အစက်ငယ်။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w33-dm6",
          termEn: "Simple Sentence",
          termMy: "ရိုးရှင်းသော စာကြောင်း (Simple Sentence)",
          matchEn:
              "A sentence with a naming word and an action word, like The dog ran.",
          matchMy:
              "နာမည်ပေးစကားလုံးနှင့် လုပ်ဆောင်မှုစကားလုံးပါသောစာကြောင်း၊ ဥပမာ The dog ran။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w33-d3",
      dayNumber: 3,
      titleEn: "Sort: CVC Word or Digraph Word?",
      titleMy: "စီစစ်ကြမည် - CVC စကားလုံးလား၊ ဒိုင်ဂရပ်စကားလုံးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["CVC Word", "Digraph Word"],
        bucketsMy: ["CVC စကားလုံး", "ဒိုင်ဂရပ်စကားလုံး"],
        items: [
          SortingItem(
            id: "y1eng-w33-sort1",
            labelEn: "cat",
            labelMy: "cat",
            correctBucketEn: "CVC Word",
            correctBucketMy: "CVC စကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w33-sort2",
            labelEn: "sun",
            labelMy: "sun",
            correctBucketEn: "CVC Word",
            correctBucketMy: "CVC စကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w33-sort3",
            labelEn: "pig",
            labelMy: "pig",
            correctBucketEn: "CVC Word",
            correctBucketMy: "CVC စကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w33-sort4",
            labelEn: "bed",
            labelMy: "bed",
            correctBucketEn: "CVC Word",
            correctBucketMy: "CVC စကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w33-sort5",
            labelEn: "ship",
            labelMy: "ship",
            correctBucketEn: "Digraph Word",
            correctBucketMy: "ဒိုင်ဂရပ်စကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w33-sort6",
            labelEn: "chip",
            labelMy: "chip",
            correctBucketEn: "Digraph Word",
            correctBucketMy: "ဒိုင်ဂရပ်စကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w33-sort7",
            labelEn: "that",
            labelMy: "that",
            correctBucketEn: "Digraph Word",
            correctBucketMy: "ဒိုင်ဂရပ်စကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w33-sort8",
            labelEn: "fish",
            labelMy: "fish",
            correctBucketEn: "Digraph Word",
            correctBucketMy: "ဒိုင်ဂရပ်စကားလုံး",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w33-d4",
      dayNumber: 4,
      titleEn: "Reading: Moe Moe's Phonics Box",
      titleMy: "စာဖတ်ခြင်း - မိုးမိုး၏ အသံထွက်သေတ္တာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Moe Moe's Phonics Box",
        titleMy: "မိုးမိုး၏ အသံထွက်သေတ္တာ",
        passageEn:
            "Moe Moe had a small box of phonics cards at home. Inside the box were CVC words like cat, sun, and pig, each with just three sounds to blend together. Some cards had digraphs too, like ship and chip, where two letters made one new sound. Moe Moe also found sight word cards, like the and is, which she could read straight away without sounding them out. After sorting the cards, Moe Moe picked up a pencil and wrote a simple sentence: 'The cat sat.' She remembered to start with a capital letter and finish with a full stop. Moe Moe smiled and read her sentence out loud three times.",
        passageMy:
            "မိုးမိုးတွင် အိမ်၌ အသံထွက်ကတ်ပြားသေတ္တာငယ်တစ်ခု ရှိသည်။ သေတ္တာထဲတွင် cat၊ sun နှင့် pig ကဲ့သို့ CVC စကားလုံးများ ပါဝင်ပြီး၊ တစ်ခုစီတွင် ပေါင်းစည်းရမည့် အသံသုံးသံသာ ရှိသည်။ ကတ်ပြားအချို့တွင် ship နှင့် chip ကဲ့သို့ ဒိုင်ဂရပ်များလည်း ပါဝင်ပြီး၊ ထိုနေရာတွင် အက္ခရာနှစ်လုံးက အသံသစ်တစ်သံ ပြုလုပ်သည်။ မိုးမိုးသည် the နှင့် is ကဲ့သို့ အမြင်ဖတ်ကတ်ပြားများကိုလည်း တွေ့ရှိခဲ့ပြီး၊ ၎င်းတို့ကို အသံထွက်ရန် မလိုအပ်ဘဲ ချက်ချင်း ဖတ်နိုင်ခဲ့သည်။ ကတ်ပြားများကို စီရွေးပြီးနောက် မိုးမိုးသည် ခဲတံကိုကိုင်ပြီး ရိုးရှင်းသော စာကြောင်းတစ်ကြောင်းကို ရေးလိုက်သည် - 'The cat sat.' သူမသည် အက္ခရာကြီးဖြင့်စတင်ပြီး စာကြောင်းဆုံးအမှတ်ဖြင့် အဆုံးသတ်ရန် မမေ့ခဲ့ပါ။ မိုးမိုးသည် ပြုံးလျက် သူမ၏စာကြောင်းကို သုံးကြိမ် အသံထွက်ဖတ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What kind of words did Moe Moe find in her phonics box, like cat, sun, and pig?",
            questionMy:
                "cat၊ sun နှင့် pig ကဲ့သို့ မိုးမိုးသည် သူမ၏ အသံထွက်သေတ္တာထဲမှ မည်သည့်ရံပုံစံစကားလုံးများ တွေ့ရှိခဲ့သနည်း။",
            optionsEn: ["CVC words", "Digraphs", "Sight words", "Full stops"],
            optionsMy: ["CVC words", "Digraphs", "Sight words", "Full stops"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Which two digraph words did Moe Moe find in the box?",
            questionMy:
                "မိုးမိုးသည် သေတ္တာထဲတွင် ဒိုင်ဂရပ်စကားလုံးနှစ်လုံးအနက် မည်သည်တို့ကို တွေ့ခဲ့သနည်း။",
            optionsEn: [
              "Ship and chip",
              "Cat and sun",
              "The and is",
              "Pig and bed",
            ],
            optionsMy: [
              "Ship and chip",
              "Cat and sun",
              "The and is",
              "Pig and bed",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Which sight words could Moe Moe read straight away?",
            questionMy:
                "မိုးမိုးသည် မည်သည့် အမြင်ဖတ်စကားလုံးများကို ချက်ချင်းဖတ်နိုင်ခဲ့သနည်း။",
            optionsEn: [
              "the and is",
              "cat and sun",
              "ship and chip",
              "pig and bed",
            ],
            optionsMy: [
              "the and is",
              "cat and sun",
              "ship and chip",
              "pig and bed",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What simple sentence did Moe Moe write at the end?",
            questionMy:
                "မိုးမိုးသည် နောက်ဆုံးတွင် မည်သည့် ရိုးရှင်းသောစာကြောင်းကို ရေးခဲ့သနည်း။",
            optionsEn: [
              "The cat sat.",
              "The sun is big.",
              "Ship chip that.",
              "Cat sun pig.",
            ],
            optionsMy: [
              "The cat sat.",
              "The sun is big.",
              "Ship chip that.",
              "Cat sun pig.",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w33-d5",
      dayNumber: 5,
      titleEn: "Week 33 Recap: Phonics and Sentences",
      titleMy: "အပတ်စဉ် 33 ပြန်လည်သုံးသပ်ခြင်း - အသံထွက်နှင့် စာကြောင်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which word is a CVC word?",
          questionMy: "မည်သည့်စကားလုံးသည် CVC စကားလုံး ဖြစ်သနည်း။",
          optionsEn: ["dog", "fish", "three", "play"],
          optionsMy: ["dog", "fish", "three", "play"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which word has a digraph, like Moe Moe found in her box?",
          questionMy:
              "မိုးမိုး သူမ၏ သေတ္တာထဲမှ တွေ့ခဲ့သကဲ့သို့ မည်သည့်စကားလုံးတွင် ဒိုင်ဂရပ် ပါသနည်း။",
          optionsEn: ["fish", "cat", "sun", "bed"],
          optionsMy: ["fish", "cat", "sun", "bed"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word is a sight word we read straight away?",
          questionMy: "ချက်ချင်းဖတ်ရသော အမြင်ဖတ်စကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["is", "hop", "mud", "pig"],
          optionsMy: ["is", "hop", "mud", "pig"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which is a complete simple sentence, like the one Moe Moe wrote?",
          questionMy:
              "မိုးမိုး ရေးခဲ့သောစာကြောင်းကဲ့သို့ ပြည့်စုံသောရိုးရှင်းစာကြောင်းမှာ မည်သည်နည်း။",
          optionsEn: ["The cat sat.", "cat the sat", "sat cat", "The cat"],
          optionsMy: ["The cat sat.", "cat the sat", "sat cat", "The cat"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, how many times did Moe Moe read her sentence out loud?",
          questionMy:
              "စာဖတ်ခန်းတွင် မိုးမိုးသည် သူမ၏စာကြောင်းကို မည်မျှကြိမ် အသံထွက်ဖတ်ခဲ့သနည်း။",
          optionsEn: ["Three times", "One time", "Two times", "Four times"],
          optionsMy: ["Three times", "One time", "Two times", "Four times"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 34: "Storytelling and Sound Play Recap" (recaps Terms 3-4)
// =====================================================================

const CourseWeekDef _year1EnglishWeek34 = CourseWeekDef(
  id: "course-year1-english-w34",
  weekNumber: 34,
  titleEn: "Storytelling and Sound Play Recap",
  titleMy: "ဇာတ်လမ်းပြောပြခြင်းနှင့် အသံဖြင့်ကစားခြင်း ပြန်လည်သုံးသပ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w34-d1",
      dayNumber: 1,
      titleEn: "Storytelling and Sound Play Quiz",
      titleMy: "ဇာတ်လမ်းနှင့် အသံဖြင့်ကစားခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In a story, which part comes first?",
          questionMy: "ဇာတ်လမ်းတစ်ပုဒ်တွင် မည်သည့်အပိုင်းက ပထမဆုံး လာသနည်း။",
          optionsEn: [
            "The beginning",
            "The middle",
            "The ending",
            "The problem",
          ],
          optionsMy: [
            "အစ (Beginning)",
            "အလယ်ပိုင်း (Middle)",
            "အဆုံး (Ending)",
            "ပြဿနာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Term 3's story map -- every story starts with the beginning, where we meet the characters.",
            "Think about your favorite story -- what do you read on the very first page?",
          ],
          hintsMy: [
            "Term 3 ၏ ဇာတ်လမ်းမြေပုံကို သတိရပါ -- ဇာတ်လမ်းတိုင်းသည် ဇာတ်ကောင်များကို စတင်တွေ့ရသည့် အစဖြင့် စတင်သည်။",
            "သင်နှစ်သက်သော ဇာတ်လမ်းကို စဉ်းစားကြည့်ပါ -- ပထမစာမျက်နှာတွင် သင် ဘာဖတ်ရသနည်း။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which word rhymes with 'cat', like we practiced in Term 4?",
          questionMy:
              "Term 4 တွင် လေ့ကျင့်ခဲ့သည့်အတိုင်း 'cat' နှင့် သံထပ်သောစကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["hat", "dog", "sun", "big"],
          optionsMy: ["hat", "dog", "sun", "big"],
          correctIndex: 0,
          hintsEn: [
            "Recall Term 4's rhyme games -- rhyming words end with the same sound.",
            "Say \"cat\" and each option out loud -- which one ends with the exact same sound?",
          ],
          hintsMy: [
            "Term 4 ၏ သံထပ်ကစားနည်းများကို သတိရပါ -- သံထပ်စကားလုံးများသည် တူညီသောအသံဖြင့် အဆုံးသတ်ကြသည်။",
            "\"cat\" နှင့် ရွေးချယ်စရာတစ်ခုစီကို အသံထွက်ကြည့်ပါ -- တူညီသောအသံနှင့် အဆုံးသတ်သည့်အရာက မည်သည်နည်း။",
          ],
        ),
        QuizQuestion(
          questionEn: "How many syllables (beats) are in the word 'sunset'?",
          questionMy: "'sunset' စကားလုံးတွင် အသံလုံး (beat) မည်မျှ ရှိသနည်း။",
          optionsEn: ["2", "1", "3", "4"],
          optionsMy: ["2", "1", "3", "4"],
          correctIndex: 0,
          hintsEn: [
            "Recall Term 4's clapping game -- clap once for each syllable: sun-set.",
            "Clap the word slowly: \"sun\" is one clap, \"set\" is another clap -- how many claps in total?",
          ],
          hintsMy: [
            "Term 4 ၏ လက်ခုပ်တီးကစားနည်းကို သတိရပါ -- အသံလုံးတစ်လုံးစီအတွက် တစ်ချက်စီ လက်ခုပ်တီးပါ - sun-set။",
            "စကားလုံးကို ဖြေးဖြေးချင်းလက်ခုပ်တီးကြည့်ပါ - \"sun\" အတွက် တစ်ချက်၊ \"set\" အတွက် နောက်တစ်ချက် -- စုစုပေါင်း မည်မျှ ရှိသနည်း။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which pair of words shows alliteration, starting with the same sound, like Term 4 taught us?",
          questionMy:
              "Term 4 က သင်ပေးခဲ့သည့်အတိုင်း တူညီသောအသံဖြင့် စတင်သည့် အသံဦးထပ်ခြင်း (alliteration) ပြသည့် စကားလုံးအတွဲမှာ မည်သည်နည်း။",
          optionsEn: ["Big Bear", "Big Cat", "Small Bear", "Red Bear"],
          optionsMy: ["Big Bear", "Big Cat", "Small Bear", "Red Bear"],
          correctIndex: 0,
          hintsEn: [
            "Recall Term 4's alliteration game -- both words in the pair must start with the exact same sound.",
            "Say the first sound of each word in every pair -- only one pair matches all the way through: b and b.",
          ],
          hintsMy: [
            "Term 4 ၏ အသံဦးထပ်ခြင်း ကစားနည်းကို သတိရပါ -- အတွဲထဲရှိ စကားလုံးနှစ်လုံးစလုံးသည် အသံတူတူဖြင့် စတင်ရမည်။",
            "အတွဲတစ်ခုစီရှိ စကားလုံးတစ်ခုစီ၏ ပထမအသံကို အသံထွက်ကြည့်ပါ -- b နှင့် b အားလုံးကိုက်ညီသောအတွဲမှာ တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w34-d2",
      dayNumber: 2,
      titleEn: "Match the Storytelling and Rhyme Terms",
      titleMy: "ဇာတ်လမ်းနှင့် သံထပ် ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w34-dm1",
          termEn: "Beginning",
          termMy: "အစ (Beginning)",
          matchEn: "The first part of a story, where we meet the characters.",
          matchMy: "ဇာတ်ကောင်များကို စတင်တွေ့ရသည့် ဇာတ်လမ်း၏ ပထမအပိုင်း။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w34-dm2",
          termEn: "Middle",
          termMy: "အလယ်ပိုင်း (Middle)",
          matchEn:
              "The part of a story where something happens or a problem starts.",
          matchMy: "တစ်ခုခုဖြစ်ပျက်သော (သို့) ပြဿနာ စတင်သော ဇာတ်လမ်း၏ အပိုင်း။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w34-dm3",
          termEn: "Ending",
          termMy: "အဆုံး (Ending)",
          matchEn: "The last part of a story, where the problem is solved.",
          matchMy: "ပြဿနာ ဖြေရှင်းပြီးသော ဇာတ်လမ်း၏ နောက်ဆုံးအပိုင်း။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w34-dm4",
          termEn: "Rhyme",
          termMy: "သံထပ်ခြင်း (Rhyme)",
          matchEn: "Words that end with the same sound, like cat and hat.",
          matchMy:
              "တူညီသောအသံဖြင့် အဆုံးသတ်သော စကားလုံးများ၊ ဥပမာ cat နှင့် hat။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w34-dm5",
          termEn: "Syllable",
          termMy: "အသံလုံး (Syllable)",
          matchEn: "A clap or beat in a word, like sun-set has two.",
          matchMy:
              "စကားလုံးတစ်ခုရှိ လက်ခုပ်တီးမှု (သို့) beat တစ်ခု၊ ဥပမာ sun-set တွင် နှစ်ခုရှိသည်။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w34-dm6",
          termEn: "Alliteration",
          termMy: "အသံဦးထပ်ခြင်း (Alliteration)",
          matchEn:
              "Words in a row that start with the same sound, like big brown bear.",
          matchMy:
              "တူညီသောအသံဖြင့် စတင်သော ဆက်တိုက်စကားလုံးများ၊ ဥပမာ big brown bear။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w34-d3",
      dayNumber: 3,
      titleEn: "Sort: Rhymes with Cat or Rhymes with Hen?",
      titleMy: "စီစစ်ကြမည် - Cat နှင့် သံထပ်သလား၊ Hen နှင့် သံထပ်သလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Rhymes with Cat", "Rhymes with Hen"],
        bucketsMy: ["Cat နှင့် သံထပ်သည်", "Hen နှင့် သံထပ်သည်"],
        items: [
          SortingItem(
            id: "y1eng-w34-sort1",
            labelEn: "hat",
            labelMy: "hat",
            correctBucketEn: "Rhymes with Cat",
            correctBucketMy: "Cat နှင့် သံထပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w34-sort2",
            labelEn: "mat",
            labelMy: "mat",
            correctBucketEn: "Rhymes with Cat",
            correctBucketMy: "Cat နှင့် သံထပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w34-sort3",
            labelEn: "bat",
            labelMy: "bat",
            correctBucketEn: "Rhymes with Cat",
            correctBucketMy: "Cat နှင့် သံထပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w34-sort4",
            labelEn: "sat",
            labelMy: "sat",
            correctBucketEn: "Rhymes with Cat",
            correctBucketMy: "Cat နှင့် သံထပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w34-sort5",
            labelEn: "pen",
            labelMy: "pen",
            correctBucketEn: "Rhymes with Hen",
            correctBucketMy: "Hen နှင့် သံထပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w34-sort6",
            labelEn: "ten",
            labelMy: "ten",
            correctBucketEn: "Rhymes with Hen",
            correctBucketMy: "Hen နှင့် သံထပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w34-sort7",
            labelEn: "den",
            labelMy: "den",
            correctBucketEn: "Rhymes with Hen",
            correctBucketMy: "Hen နှင့် သံထပ်သည်",
          ),
          SortingItem(
            id: "y1eng-w34-sort8",
            labelEn: "men",
            labelMy: "men",
            correctBucketEn: "Rhymes with Hen",
            correctBucketMy: "Hen နှင့် သံထပ်သည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w34-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi Retells a Story",
      titleMy: "စာဖတ်ခြင်း - နေချည် ဇာတ်လမ်းကို ပြန်ပြောပြသည်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi Retells a Story",
        titleMy: "နေချည် ဇာတ်လမ်းကို ပြန်ပြောပြသည်",
        passageEn:
            "At school, Nay Chi's teacher read the story of the Three Little Pigs to the whole class. Afterward, Nay Chi wanted to retell the story to her little sister at home, in the right order. First, Nay Chi told the beginning: three little pigs built three different houses. Next came the middle: a big bad wolf huffed and puffed and blew down two of the houses. Then came the ending: the wolf could not blow down the strong brick house, and the pigs were safe. While Nay Chi told the story, she played a rhyme game too, saying that pig rhymes with big, and house rhymes with mouse. She even clapped out the syllables in the word 'wolf-house': two claps in total. Her little sister laughed and clapped along, asking Nay Chi to tell the whole story again.",
        passageMy:
            "ကျောင်းတွင် နေချည်၏ ဆရာမက အတန်းတစ်ခုလုံးအား ဝက်သငယ်သုံးကောင် ဇာတ်လမ်းကို ဖတ်ပြခဲ့သည်။ ထို့နောက် နေချည်သည် ထိုဇာတ်လမ်းကို မှန်ကန်သောအစဉ်လိုက်ဖြင့် အိမ်တွင်ရှိ ညီမလေးအား ပြန်ပြောပြလိုသည်။ ပထမဦးစွာ နေချည်သည် အစကို ပြောပြသည် - ဝက်သငယ်သုံးကောင်သည် မတူညီသောအိမ်သုံးလုံးကို ဆောက်လုပ်ခဲ့ကြသည်။ ထို့နောက် အလယ်ပိုင်း ရောက်လာသည် - တောခွေးဆိုးကြီးက ပွက်ပွက်မှုတ်ပြီး အိမ်နှစ်လုံးကို လေတိုက်ဖျက်ဆီးလိုက်သည်။ ထို့နောက် အဆုံးသတ်လာသည် - တောခွေးက ခိုင်ခံ့သော အုတ်အိမ်ကို လေတိုက်ဖျက်ဆီးမရဘဲ ဝက်သငယ်များ ဘေးကင်းစွာ ရှိနေခဲ့ကြသည်။ ဇာတ်လမ်းပြောနေစဉ် နေချည်သည် သံထပ်ကစားနည်းကိုလည်း ကစားခဲ့သည် - pig သည် big နှင့် သံထပ်ပြီး house သည် mouse နှင့် သံထပ်ကြောင်း ပြောပြသည်။ သူမသည် 'wolf-house' စကားလုံး၏ အသံလုံးများကိုပါ လက်ခုပ်တီးကြည့်ခဲ့သည် - စုစုပေါင်း နှစ်ချက်။ သူမ၏ ညီမလေးသည် ရယ်မောကာ လက်ခုပ်တီးရင်း၊ ဇာတ်လမ်းတစ်ခုလုံးကို ထပ်ပြောပြရန် နေချည်ကို တောင်းဆိုခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did the three little pigs build at the beginning of the story?",
            questionMy:
                "ဇာတ်လမ်း၏ အစတွင် ဝက်သငယ်သုံးကောင် မည်သည်ကို ဆောက်လုပ်ခဲ့ကြသနည်း။",
            optionsEn: [
              "Three different houses",
              "One big castle",
              "A boat",
              "A school",
            ],
            optionsMy: [
              "Three different houses",
              "One big castle",
              "A boat",
              "A school",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did the wolf do to two of the houses in the middle of the story?",
            questionMy:
                "ဇာတ်လမ်း၏ အလယ်ပိုင်းတွင် တောခွေးသည် အိမ်နှစ်လုံးကို မည်သို့ ပြုလုပ်ခဲ့သနည်း။",
            optionsEn: [
              "Blew them down",
              "Painted them",
              "Sold them",
              "Locked them",
            ],
            optionsMy: [
              "Blew them down",
              "Painted them",
              "Sold them",
              "Locked them",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Which word did Nay Chi say rhymes with 'pig'?",
            questionMy:
                "နေချည်သည် 'pig' နှင့် မည်သည့်စကားလုံး သံထပ်ကြောင်း ပြောခဲ့သနည်း။",
            optionsEn: ["big", "house", "wolf", "mouse"],
            optionsMy: ["big", "house", "wolf", "mouse"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "How many claps did Nay Chi count in the word 'wolf-house'?",
            questionMy:
                "နေချည်သည် 'wolf-house' စကားလုံးတွင် လက်ခုပ်တီးမှု မည်မျှ ရေတွက်ခဲ့သနည်း။",
            optionsEn: ["Two claps", "One clap", "Three claps", "Four claps"],
            optionsMy: ["Two claps", "One clap", "Three claps", "Four claps"],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w34-d5",
      dayNumber: 5,
      titleEn: "Week 34 Recap: Storytelling and Sound Play",
      titleMy:
          "အပတ်စဉ် 34 ပြန်လည်သုံးသပ်ခြင်း - ဇာတ်လမ်းနှင့် အသံဖြင့်ကစားခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In a story, which part is the ending?",
          questionMy: "ဇာတ်လမ်းတစ်ပုဒ်တွင် အဆုံးအပိုင်းမှာ မည်သည်နည်း။",
          optionsEn: [
            "Where the problem is solved",
            "Where we meet the characters",
            "Where the problem starts",
            "The title of the story",
          ],
          optionsMy: [
            "ပြဿနာဖြေရှင်းရာနေရာ",
            "ဇာတ်ကောင်များကို စတင်တွေ့ရာနေရာ",
            "ပြဿနာစတင်ရာနေရာ",
            "ဇာတ်လမ်း၏ ခေါင်းစဉ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which word rhymes with 'hen'?",
          questionMy: "'hen' နှင့် သံထပ်သောစကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["pen", "cat", "dog", "fish"],
          optionsMy: ["pen", "cat", "dog", "fish"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the story Nay Chi retold, which word did she say rhymes with 'house'?",
          questionMy:
              "နေချည် ပြန်ပြောပြခဲ့သော ဇာတ်လမ်းတွင် 'house' နှင့် သံထပ်သောစကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["mouse", "wolf", "pig", "brick"],
          optionsMy: ["mouse", "wolf", "pig", "brick"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which pair of words is an example of alliteration?",
          questionMy:
              "မည်သည့်စကားလုံးအတွဲသည် အသံဦးထပ်ခြင်း (alliteration) ၏ ဥပမာဖြစ်သနည်း။",
          optionsEn: ["Big Bear", "Big Cat", "Tall Bear", "Red Bear"],
          optionsMy: ["Big Bear", "Big Cat", "Tall Bear", "Red Bear"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "How many little pigs were in the story Nay Chi retold to her sister?",
          questionMy:
              "နေချည် ညီမလေးအား ပြန်ပြောပြခဲ့သော ဇာတ်လမ်းတွင် ဝက်သငယ် မည်မျှ ရှိခဲ့သနည်း။",
          optionsEn: ["Three", "Two", "Four", "One"],
          optionsMy: ["Three", "Two", "Four", "One"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 35: "Describing and Questioning Recap" (recaps Terms 5-6)
// =====================================================================

const CourseWeekDef _year1EnglishWeek35 = CourseWeekDef(
  id: "course-year1-english-w35",
  weekNumber: 35,
  titleEn: "Describing and Questioning Recap",
  titleMy: "ဖော်ပြသောစကားလုံးနှင့် မေးခွန်းများ ပြန်လည်သုံးသပ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w35-d1",
      dayNumber: 1,
      titleEn: "Describing and Questioning Quiz",
      titleMy: "ဖော်ပြသောစကားလုံးနှင့် မေးခွန်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which describing word (adjective) tells us more about the dog in 'The furry dog ran'?",
          questionMy:
              "'The furry dog ran' ဝါကျရှိ ခွေးအကြောင်း ပိုမိုဖော်ပြပေးသော ဖော်ပြသောစကားလုံး (adjective) မှာ မည်သည်နည်း။",
          optionsEn: ["furry", "dog", "ran", "the"],
          optionsMy: ["furry", "dog", "ran", "the"],
          correctIndex: 0,
          hintsEn: [
            "Recall Term 5's describing words -- an adjective tells us more about a naming word, like how it looks or feels.",
            "\"Dog\" is the naming word and \"ran\" is the action word -- which word describes what the dog feels like?",
          ],
          hintsMy: [
            "Term 5 ၏ ဖော်ပြသောစကားလုံးများကို သတိရပါ -- adjective သည် နာမည်ပေးစကားလုံးတစ်ခုအကြောင်း ပိုမိုဖော်ပြသည် - မည်သို့ ကြည့်ရသည် (သို့) ခံစားရသည်။",
            "\"Dog\" သည် နာမည်ပေးစကားလုံးဖြစ်ပြီး \"ran\" သည် လုပ်ဆောင်မှုစကားလုံးဖြစ်သည် -- ခွေး၏ ခံစားချက်ကို ဖော်ပြသောစကားလုံးမှာ မည်သည်နည်း။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which question word do we use to ask about a place, like Term 6 taught us?",
          questionMy:
              "Term 6 က သင်ပေးခဲ့သည့်အတိုင်း နေရာတစ်ခုအကြောင်း မေးရန် အသုံးပြုသော မေးခွန်းစကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["Where", "Big", "Ran", "Dog"],
          optionsMy: ["Where", "Big", "Ran", "Dog"],
          correctIndex: 0,
          hintsEn: [
            "Recall Term 6's question words -- \"Where\" always asks about a place, like a park or a house.",
            "Only one option is a question word at all -- the others are a describing word, an action word, and a naming word.",
          ],
          hintsMy: [
            "Term 6 ၏ မေးခွန်းစကားလုံးများကို သတိရပါ -- \"Where\" သည် ပန်းခြံ (သို့) အိမ်ကဲ့သို့ နေရာတစ်ခုအကြောင်းကို အမြဲမေးသည်။",
            "မေးခွန်းစကားလုံးအမှန်မှာ တစ်ခုတည်းသာ ဖြစ်ပြီး ကျန်အရာများမှာ ဖော်ပြသောစကားလုံး၊ လုပ်ဆောင်မှုစကားလုံးနှင့် နာမည်ပေးစကားလုံးများသာ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the polite thing to say after someone gives you a gift, like Term 6 taught us?",
          questionMy:
              "Term 6 က သင်ပေးခဲ့သည့်အတိုင်း လူတစ်ဦးက လက်ဆောင်ပေးပြီးနောက် ပြောသင့်သော ယဉ်ကျေးသောစကားမှာ မည်သည်နည်း။",
          optionsEn: ["Thank you", "Go away", "No", "Stop"],
          optionsMy: ["Thank you", "Go away", "No", "Stop"],
          correctIndex: 0,
          hintsEn: [
            "Recall Term 6's polite words -- we always say this after someone is kind to us.",
            "Three of these options sound rude or unkind -- only one is a polite, thankful phrase.",
          ],
          hintsMy: [
            "Term 6 ၏ ယဉ်ကျေးသောစကားလုံးများကို သတိရပါ -- လူတစ်ဦးက ကျွန်ုပ်တို့အား ကြင်နာပြီးနောက် ဤစကားကို အမြဲပြောသည်။",
            "ဤရွေးချယ်စရာများအနက် သုံးခုမှာ ရိုင်းစိုင်းသည်ဟု (သို့) မကြင်နာသည်ဟု ကြားရသည် -- ယဉ်ကျေးပြီး ကျေးဇူးတင်သောစကားမှာ တစ်ခုတည်းသာ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which question word do we use to ask about a person, like Term 6 taught us?",
          questionMy:
              "Term 6 က သင်ပေးခဲ့သည့်အတိုင်း လူတစ်ဦးအကြောင်း မေးရန် အသုံးပြုသော မေးခွန်းစကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["Who", "Where", "What color", "How many"],
          optionsMy: ["Who", "Where", "What color", "How many"],
          correctIndex: 0,
          hintsEn: [
            "Recall Term 6's question words -- \"Who\" always asks about a person, like a friend or a teacher.",
            "\"Where\" asks about a place, and the others ask about color or number -- only one asks about a person.",
          ],
          hintsMy: [
            "Term 6 ၏ မေးခွန်းစကားလုံးများကို သတိရပါ -- \"Who\" သည် သူငယ်ချင်း (သို့) ဆရာမကဲ့သို့ လူတစ်ဦးအကြောင်းကို အမြဲမေးသည်။",
            "\"Where\" သည် နေရာအကြောင်းကို မေးပြီး ကျန်အရာများက အရောင် (သို့) အရေအတွက်ကို မေးသည် -- လူအကြောင်းကို မေးသည့်အရာမှာ တစ်ခုတည်းသာ ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w35-d2",
      dayNumber: 2,
      titleEn: "Match the Describing and Question Terms",
      titleMy:
          "ဖော်ပြသောစကားလုံးနှင့် မေးခွန်း ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w35-dm1",
          termEn: "Adjective",
          termMy: "ဖော်ပြသောစကားလုံး (Adjective)",
          matchEn:
              "A describing word that tells us more about a naming word, like fluffy or big.",
          matchMy:
              "နာမည်ပေးစကားလုံးအကြောင်း ပိုမိုဖော်ပြသောစကားလုံး၊ ဥပမာ fluffy (သို့) big။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w35-dm2",
          termEn: "Who",
          termMy: "မည်သူ (Who)",
          matchEn: "The question word we use to ask about a person.",
          matchMy: "လူတစ်ဦးအကြောင်းကို မေးရန် အသုံးပြုသော မေးခွန်းစကားလုံး။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w35-dm3",
          termEn: "Where",
          termMy: "မည်သည့်နေရာ (Where)",
          matchEn: "The question word we use to ask about a place.",
          matchMy: "နေရာတစ်ခုအကြောင်းကို မေးရန် အသုံးပြုသော မေးခွန်းစကားလုံး။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w35-dm4",
          termEn: "What",
          termMy: "မည်သည့်အရာ (What)",
          matchEn: "The question word we use to ask about a thing.",
          matchMy:
              "အရာဝတ္ထုတစ်ခုအကြောင်းကို မေးရန် အသုံးပြုသော မေးခွန်းစကားလုံး။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w35-dm5",
          termEn: "Please",
          termMy: "ကျေးဇူးပြု၍ (Please)",
          matchEn: "The polite word we say when we ask for something.",
          matchMy: "တစ်ခုခုတောင်းသောအခါ ပြောသော ယဉ်ကျေးသောစကားလုံး။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w35-dm6",
          termEn: "Thank You",
          termMy: "ကျေးဇူးတင်ပါသည် (Thank You)",
          matchEn:
              "The polite words we say after someone helps us or gives us something.",
          matchMy:
              "လူတစ်ဦးက ကူညီပေးသည် (သို့) တစ်ခုခုပေးအပ်ပြီးနောက် ပြောသောယဉ်ကျေးသောစကားလုံးများ။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w35-d3",
      dayNumber: 3,
      titleEn: "Sort: Describing Word or Question Word?",
      titleMy: "စီစစ်ကြမည် - ဖော်ပြသောစကားလုံးလား၊ မေးခွန်းစကားလုံးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Describing Word", "Question Word"],
        bucketsMy: ["ဖော်ပြသောစကားလုံး", "မေးခွန်းစကားလုံး"],
        items: [
          SortingItem(
            id: "y1eng-w35-sort1",
            labelEn: "soft",
            labelMy: "soft",
            correctBucketEn: "Describing Word",
            correctBucketMy: "ဖော်ပြသောစကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w35-sort2",
            labelEn: "tall",
            labelMy: "tall",
            correctBucketEn: "Describing Word",
            correctBucketMy: "ဖော်ပြသောစကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w35-sort3",
            labelEn: "shiny",
            labelMy: "shiny",
            correctBucketEn: "Describing Word",
            correctBucketMy: "ဖော်ပြသောစကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w35-sort4",
            labelEn: "sweet",
            labelMy: "sweet",
            correctBucketEn: "Describing Word",
            correctBucketMy: "ဖော်ပြသောစကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w35-sort5",
            labelEn: "Who",
            labelMy: "Who",
            correctBucketEn: "Question Word",
            correctBucketMy: "မေးခွန်းစကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w35-sort6",
            labelEn: "Where",
            labelMy: "Where",
            correctBucketEn: "Question Word",
            correctBucketMy: "မေးခွန်းစကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w35-sort7",
            labelEn: "What",
            labelMy: "What",
            correctBucketEn: "Question Word",
            correctBucketMy: "မေးခွန်းစကားလုံး",
          ),
          SortingItem(
            id: "y1eng-w35-sort8",
            labelEn: "How",
            labelMy: "How",
            correctBucketEn: "Question Word",
            correctBucketMy: "မေးခွန်းစကားလုံး",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w35-d4",
      dayNumber: 4,
      titleEn: "Reading: Htet Htet's Trip to the Market",
      titleMy: "စာဖတ်ခြင်း - ထက်ထက်၏ စျေးသို့ခရီးစဉ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Htet Htet's Trip to the Market",
        titleMy: "ထက်ထက်၏ စျေးသို့ခရီးစဉ်",
        passageEn:
            "On Saturday, Htet Htet went to the market with her grandmother. At the fruit stall, Htet Htet saw a shiny red apple and a soft yellow banana, and she pointed out both describing words to her grandmother. Then Htet Htet wanted to know more, so she asked a polite question: 'Where did these apples come from?' The seller smiled and answered kindly. Next, Htet Htet asked another question: 'Who grew these sweet mangoes?' The seller said a farmer nearby grew them. Before they left, Htet Htet remembered her manners and said, 'Thank you,' to the kind seller. Her grandmother smiled and said Htet Htet had asked very good questions today.",
        passageMy:
            "စနေနေ့တွင် ထက်ထက်သည် အဖွားနှင့်အတူ စျေးသို့ သွားခဲ့သည်။ သစ်သီးဆိုင်တွင် ထက်ထက်သည် တောက်ပသော ပန်းသီးနီတစ်လုံးနှင့် နူးညံ့သော ငှက်ပျောသီးဝါတစ်လုံးကို မြင်ခဲ့ပြီး၊ ဖော်ပြသောစကားလုံးနှစ်ခုစလုံးကို အဖွားအား ညွှန်ပြခဲ့သည်။ ထို့နောက် ထက်ထက်သည် ပိုမိုသိလိုသဖြင့် ယဉ်ကျေးစွာ မေးခွန်းတစ်ခု မေးခဲ့သည် - 'Where did these apples come from?' အရောင်းသည်က ပြုံးရင်း ကြင်နာစွာ ဖြေခဲ့သည်။ ထို့နောက် ထက်ထက်သည် နောက်ထပ်မေးခွန်းတစ်ခု မေးခဲ့သည် - 'Who grew these sweet mangoes?' အရောင်းသည်က အနီးအနားရှိ လယ်သမားတစ်ဦးက စိုက်ပျိုးခဲ့ကြောင်း ပြောပြခဲ့သည်။ ထွက်ခွာမီ ထက်ထက်သည် သူမ၏ ကျင့်ဝတ်ကို သတိရပြီး ကြင်နာသော အရောင်းသည်အား 'Thank you' ဟု ပြောခဲ့သည်။ အဖွားသည် ပြုံးရင်း ထက်ထက် ယနေ့ ကောင်းမွန်သော မေးခွန်းများ မေးခဲ့ကြောင်း ပြောခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Which two describing words did Htet Htet use for the fruit?",
            questionMy:
                "ထက်ထက်သည် သစ်သီးအတွက် ဖော်ပြသောစကားလုံးနှစ်လုံးအနက် မည်သည်တို့ကို အသုံးပြုခဲ့သနည်း။",
            optionsEn: [
              "Shiny and soft",
              "Big and small",
              "Red and Who",
              "Where and Thank you",
            ],
            optionsMy: [
              "Shiny and soft",
              "Big and small",
              "Red and Who",
              "Where and Thank you",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which question word did Htet Htet use to ask where the apples came from?",
            questionMy:
                "ပန်းသီးများ မည်သည့်နေရာမှ ရရှိသည်ကို မေးရန် ထက်ထက် မည်သည့်မေးခွန်းစကားလုံးကို သုံးခဲ့သနည်း။",
            optionsEn: ["Where", "Who", "What", "How many"],
            optionsMy: ["Where", "Who", "What", "How many"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which question word did Htet Htet use to ask who grew the mangoes?",
            questionMy:
                "သရက်သီးများကို မည်သူ စိုက်ပျိုးသည်ကို မေးရန် ထက်ထက် မည်သည့်မေးခွန်းစကားလုံးကို သုံးခဲ့သနည်း။",
            optionsEn: ["Who", "Where", "What", "Please"],
            optionsMy: ["Who", "Where", "What", "Please"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What polite word did Htet Htet say to the seller before leaving?",
            questionMy:
                "ထွက်ခွာမီ ထက်ထက်သည် အရောင်းသည်အား မည်သည့်ယဉ်ကျေးသောစကားလုံးကို ပြောခဲ့သနည်း။",
            optionsEn: ["Thank you", "Go away", "Stop", "No"],
            optionsMy: ["Thank you", "Go away", "Stop", "No"],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w35-d5",
      dayNumber: 5,
      titleEn: "Week 35 Recap: Describing and Questioning",
      titleMy:
          "အပတ်စဉ် 35 ပြန်လည်သုံးသပ်ခြင်း - ဖော်ပြသောစကားလုံးနှင့် မေးခွန်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which word describes how the banana felt, like in Htet Htet's story?",
          questionMy:
              "ထက်ထက်၏ ဇာတ်လမ်းတွင် ငှက်ပျောသီး မည်သို့ ခံစားရသည်ကို ဖော်ပြသောစကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["soft", "Where", "Who", "market"],
          optionsMy: ["soft", "Where", "Who", "market"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which question word asks about a place?",
          questionMy: "မည်သည့်မေးခွန်းစကားလုံးက နေရာအကြောင်းကို မေးသနည်း။",
          optionsEn: ["Where", "Who", "What", "Please"],
          optionsMy: ["Where", "Who", "What", "Please"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, what did Htet Htet say to the seller before leaving the market?",
          questionMy:
              "စာဖတ်ခန်းတွင် ထက်ထက်သည် စျေးမှ ထွက်ခွာမီ အရောင်းသည်အား မည်သည်ကို ပြောခဲ့သနည်း။",
          optionsEn: ["Thank you", "Go away", "No", "Stop"],
          optionsMy: ["Thank you", "Go away", "No", "Stop"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which question word asks about a person?",
          questionMy: "မည်သည့်မေးခွန်းစကားလုံးက လူတစ်ဦးအကြောင်းကို မေးသနည်း။",
          optionsEn: ["Who", "Where", "What color", "How many"],
          optionsMy: ["Who", "Where", "What color", "How many"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which describing word tells us the apple was shiny, from Htet Htet's trip to the market?",
          questionMy:
              "ထက်ထက်၏ စျေးသို့ခရီးစဉ်တွင် ပန်းသီးတောက်ပကြောင်း ဖော်ပြသောစကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["shiny", "market", "grandmother", "seller"],
          optionsMy: ["shiny", "market", "grandmother", "seller"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 36 (Boss Week): "The Year 1 English Showcase" -- capstone
// combining Week 33's phonics and sentences, Week 34's storytelling and
// rhyme, and Week 35's describing words and questions in one continuous
// class showcase, with Moe Moe, Nay Chi, and Htet Htet each presenting
// a piece and every earlier term explicitly named.
// =====================================================================

const CourseWeekDef _year1EnglishWeek36 = CourseWeekDef(
  id: "course-year1-english-w36",
  weekNumber: 36,
  titleEn: "The Year 1 English Showcase",
  titleMy: "ပထမတန်း အင်္ဂလိပ်စာ ပြပွဲ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w36-d1",
      dayNumber: 1,
      titleEn: "Multi-Skill Showcase Quiz",
      titleMy: "ကျွမ်းကျင်မှုပေါင်းစုံ ပြပွဲ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which is a complete simple sentence, built the way Week 33 recapped?",
          questionMy:
              "Week 33 က ပြန်လည်သုံးသပ်ခဲ့သည့်အတိုင်း တည်ဆောက်ထားသော ပြည့်စုံသည့် ရိုးရှင်းသောစာကြောင်းမှာ မည်သည်နည်း။",
          optionsEn: ["The cat sat.", "cat the sat", "Sh ip", "the the the"],
          optionsMy: ["The cat sat.", "cat the sat", "Sh ip", "the the the"],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 33's recap of Term 1 and Term 2 -- a simple sentence needs the right word order, a capital letter, and a full stop.",
            "Only one option reads correctly as words in order, with a capital letter at the start and a full stop at the end.",
          ],
          hintsMy: [
            "Week 33 ၏ Term 1 နှင့် Term 2 ပြန်လည်သုံးသပ်ချက်ကို သတိရပါ -- ရိုးရှင်းသောစာကြောင်းတွင် မှန်ကန်သောစကားလုံးအစီအစဉ်၊ အက္ခရာကြီးနှင့် စာကြောင်းဆုံးအမှတ် လိုအပ်သည်။",
            "စကားလုံးအစီအစဉ်မှန်ကန်ပြီး အက္ခရာကြီးဖြင့်စတင်ကာ စာကြောင်းဆုံးအမှတ်ဖြင့်အဆုံးသတ်သောအရာမှာ တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which word rhymes with 'hen', the sound play Week 34 recapped?",
          questionMy:
              "Week 34 က ပြန်လည်သုံးသပ်ခဲ့သည့် အသံဖြင့်ကစားခြင်းအရ 'hen' နှင့် သံထပ်သောစကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["pen", "cat", "dog", "big"],
          optionsMy: ["pen", "cat", "dog", "big"],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 34's recap of Term 3 and Term 4 -- rhyming words end with the exact same sound.",
            "Say \"hen\" and each option out loud -- only one ends with the same sound.",
          ],
          hintsMy: [
            "Week 34 ၏ Term 3 နှင့် Term 4 ပြန်လည်သုံးသပ်ချက်ကို သတိရပါ -- သံထပ်စကားလုံးများသည် တူညီသောအသံနှင့် အဆုံးသတ်ကြသည်။",
            "\"hen\" နှင့် ရွေးချယ်စရာတစ်ခုစီကို အသံထွက်ကြည့်ပါ -- တူညီသောအသံနှင့် အဆုံးသတ်သည့်အရာက တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which describing word could tell us about a soft, fluffy rabbit, the way Week 35 recapped?",
          questionMy:
              "Week 35 က ပြန်လည်သုံးသပ်ခဲ့သည့်အတိုင်း နူးညံ့ပွေ့ပျအေးသောယုန်တစ်ကောင်အကြောင်း ဖော်ပြပေးနိုင်သော ဖော်ပြသောစကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["soft", "jump", "run", "where"],
          optionsMy: ["soft", "jump", "run", "where"],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 35's recap of Term 5 -- an adjective describes what something looks or feels like.",
            "\"Jump\" and \"run\" are action words, and \"where\" is a question word -- only one option describes a feeling.",
          ],
          hintsMy: [
            "Week 35 ၏ Term 5 ပြန်လည်သုံးသပ်ချက်ကို သတိရပါ -- adjective သည် အရာဝတ္ထုတစ်ခု၏ ကြည့်ရသည့်ပုံ (သို့) ခံစားရသည့်ပုံကို ဖော်ပြသည်။",
            "\"Jump\" နှင့် \"run\" တို့သည် လုပ်ဆောင်မှုစကားလုံးများဖြစ်ပြီး \"where\" သည် မေးခွန်းစကားလုံးတစ်ခုဖြစ်သည် -- ခံစားချက်ကို ဖော်ပြသောအရာမှာ တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which question word would we use to ask about a friend presenting at the showcase, the way Week 35 recapped?",
          questionMy:
              "Week 35 က ပြန်လည်သုံးသပ်ခဲ့သည့်အတိုင်း ပြပွဲတွင် ဖော်ပြနေသော သူငယ်ချင်းတစ်ဦးအကြောင်း မေးရန် အသုံးပြုမည့် မေးခွန်းစကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["Who", "What color", "Where", "How many"],
          optionsMy: ["Who", "What color", "Where", "How many"],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 35's recap of Term 6 -- \"Who\" always asks about a person.",
            "The other options ask about color, place, or number -- only one asks about a person.",
          ],
          hintsMy: [
            "Week 35 ၏ Term 6 ပြန်လည်သုံးသပ်ချက်ကို သတိရပါ -- \"Who\" သည် လူတစ်ဦးအကြောင်းကို အမြဲမေးသည်။",
            "ကျန်ရွေးချယ်စရာများက အရောင်၊ နေရာ (သို့) အရေအတွက်ကို မေးသည် -- လူအကြောင်းကို မေးသည့်အရာမှာ တစ်ခုတည်းသာ ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w36-d2",
      dayNumber: 2,
      titleEn: "Match the Whole Year's English Skills",
      titleMy:
          "တစ်နှစ်လုံး၏ အင်္ဂလိပ်စာ ကျွမ်းကျင်မှုများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w36-dm1",
          termEn: "Phonics",
          termMy: "အသံထွက် (Phonics)",
          matchEn:
              "Sounding out letters and letter pairs to read words, like cat and ship, from Term 1.",
          matchMy:
              "Term 1 မှ cat နှင့် ship ကဲ့သို့ စကားလုံးများ ဖတ်ရန် အက္ခရာများနှင့် အက္ခရာအတွဲများကို အသံထွက်ခြင်း။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w36-dm2",
          termEn: "Sentences",
          termMy: "စာကြောင်းများ (Sentences)",
          matchEn:
              "Putting naming and action words together with a capital letter and a full stop, from Term 2.",
          matchMy:
              "Term 2 မှ နာမည်ပေးစကားလုံးနှင့် လုပ်ဆောင်မှုစကားလုံးကို အက္ခရာကြီးနှင့် စာကြောင်းဆုံးအမှတ်ဖြင့် ပေါင်းစပ်ခြင်း။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w36-dm3",
          termEn: "Storytelling",
          termMy: "ဇာတ်လမ်းပြောခြင်း (Storytelling)",
          matchEn:
              "Telling a story in order: beginning, middle, and end, from Term 3.",
          matchMy:
              "Term 3 မှ ဇာတ်လမ်းတစ်ပုဒ်ကို အစ၊ အလယ်ပိုင်းနှင့် အဆုံး အစဉ်လိုက် ပြောပြခြင်း။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w36-dm4",
          termEn: "Rhyme",
          termMy: "သံထပ်ခြင်း (Rhyme)",
          matchEn:
              "Words that end with the same sound, like cat and hat, from Term 4.",
          matchMy:
              "Term 4 မှ cat နှင့် hat ကဲ့သို့ တူညီသောအသံဖြင့် အဆုံးသတ်သော စကားလုံးများ။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w36-dm5",
          termEn: "Describing Words",
          termMy: "ဖော်ပြသောစကားလုံးများ (Describing Words)",
          matchEn:
              "Words like soft or shiny that tell us more about something, from Term 5.",
          matchMy:
              "Term 5 မှ soft (သို့) shiny ကဲ့သို့ အရာဝတ္ထုတစ်ခုအကြောင်း ပိုမိုဖော်ပြသောစကားလုံးများ။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w36-dm6",
          termEn: "Question Words",
          termMy: "မေးခွန်းစကားလုံးများ (Question Words)",
          matchEn:
              "Words like who and where that help us ask questions, from Term 6.",
          matchMy:
              "Term 6 မှ who နှင့် where ကဲ့သို့ မေးခွန်းများ မေးရန် ကူညီပေးသောစကားလုံးများ။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w36-d3",
      dayNumber: 3,
      titleEn: "Sort: About Sounds and Words, or About Asking and Describing?",
      titleMy:
          "စီစစ်ကြမည် - အသံနှင့် စကားလုံးများအကြောင်းလား၊ မေးခြင်းနှင့် ဖော်ပြခြင်းအကြောင်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["About Sounds and Words", "About Asking and Describing"],
        bucketsMy: [
          "အသံနှင့် စကားလုံးများအကြောင်း",
          "မေးခြင်းနှင့် ဖော်ပြခြင်းအကြောင်း",
        ],
        items: [
          SortingItem(
            id: "y1eng-w36-sort1",
            labelEn: "Digraph",
            labelMy: "Digraph",
            correctBucketEn: "About Sounds and Words",
            correctBucketMy: "အသံနှင့် စကားလုံးများအကြောင်း",
          ),
          SortingItem(
            id: "y1eng-w36-sort2",
            labelEn: "Rhyme",
            labelMy: "Rhyme",
            correctBucketEn: "About Sounds and Words",
            correctBucketMy: "အသံနှင့် စကားလုံးများအကြောင်း",
          ),
          SortingItem(
            id: "y1eng-w36-sort3",
            labelEn: "CVC Word",
            labelMy: "CVC Word",
            correctBucketEn: "About Sounds and Words",
            correctBucketMy: "အသံနှင့် စကားလုံးများအကြောင်း",
          ),
          SortingItem(
            id: "y1eng-w36-sort4",
            labelEn: "Syllable",
            labelMy: "Syllable",
            correctBucketEn: "About Sounds and Words",
            correctBucketMy: "အသံနှင့် စကားလုံးများအကြောင်း",
          ),
          SortingItem(
            id: "y1eng-w36-sort5",
            labelEn: "Adjective",
            labelMy: "Adjective",
            correctBucketEn: "About Asking and Describing",
            correctBucketMy: "မေးခြင်းနှင့် ဖော်ပြခြင်းအကြောင်း",
          ),
          SortingItem(
            id: "y1eng-w36-sort6",
            labelEn: "Question Word",
            labelMy: "Question Word",
            correctBucketEn: "About Asking and Describing",
            correctBucketMy: "မေးခြင်းနှင့် ဖော်ပြခြင်းအကြောင်း",
          ),
          SortingItem(
            id: "y1eng-w36-sort7",
            labelEn: "Please",
            labelMy: "Please",
            correctBucketEn: "About Asking and Describing",
            correctBucketMy: "မေးခြင်းနှင့် ဖော်ပြခြင်းအကြောင်း",
          ),
          SortingItem(
            id: "y1eng-w36-sort8",
            labelEn: "Who",
            labelMy: "Who",
            correctBucketEn: "About Asking and Describing",
            correctBucketMy: "မေးခြင်းနှင့် ဖော်ပြခြင်းအကြောင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w36-d4",
      dayNumber: 4,
      titleEn: "Reading: The Year 1 English Showcase",
      titleMy: "စာဖတ်ခြင်း - ပထမတန်း အင်္ဂလိပ်စာ ပြပွဲ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The Year 1 English Showcase",
        titleMy: "ပထမတန်း အင်္ဂလိပ်စာ ပြပွဲ",
        passageEn:
            "At the end of the year, Moe Moe, Nay Chi, and Htet Htet stood in front of the whole class for the Year 1 English Showcase. Moe Moe went first and opened her phonics box from Term 1, sounding out CVC words like cat and digraph words like ship for everyone to hear. Then Moe Moe read a simple sentence from Term 2 out loud: 'The cat sat.' Next, Nay Chi took her turn and retold the story of the Three Little Pigs from Term 3, telling the beginning, the middle, and the ending in the right order. Nay Chi also played the rhyme game from Term 4, showing that pig rhymes with big, and clapping out the two syllables in 'wolf-house'. Finally, Htet Htet stepped forward and used describing words from Term 5, telling everyone about a shiny red apple and a soft yellow banana. Htet Htet then asked polite questions from Term 6, saying 'Where did these apples come from?' and 'Who grew these mangoes?', before remembering to say 'Thank you' to her friends. When the showcase ended, all three friends stood together and agreed that every single term of Year 1 English -- phonics, sentences, storytelling, rhyme, describing words, and questions -- had helped them become confident readers, writers, and speakers.",
        passageMy:
            "နှစ်ကုန်တွင် မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့သည် ပထမတန်း အင်္ဂလိပ်စာ ပြပွဲအတွက် အတန်းတစ်ခုလုံး၏ ရှေ့တွင် ရပ်နေခဲ့ကြသည်။ မိုးမိုးသည် ပထမဆုံး စတင်ပြီး Term 1 ၏ အသံထွက်သေတ္တာကို ဖွင့်ကာ cat ကဲ့သို့ CVC စကားလုံးများနှင့် ship ကဲ့သို့ ဒိုင်ဂရပ်စကားလုံးများကို အားလုံးကြားနိုင်အောင် အသံထွက်ပြခဲ့သည်။ ထို့နောက် မိုးမိုးသည် Term 2 မှ ရိုးရှင်းသောစာကြောင်းတစ်ကြောင်းကို အသံထွက်ဖတ်ပြခဲ့သည် - 'The cat sat.' ထို့နောက် နေချည်၏ အလှည့်ရောက်လာပြီး Term 3 မှ ဝက်သငယ်သုံးကောင် ဇာတ်လမ်းကို အစ၊ အလယ်ပိုင်းနှင့် အဆုံးကို မှန်ကန်သောအစဉ်လိုက်ဖြင့် ပြန်ပြောပြခဲ့သည်။ နေချည်သည် Term 4 မှ သံထပ်ကစားနည်းကိုလည်း ကစားပြခဲ့ပြီး pig သည် big နှင့် သံထပ်ကြောင်းပြပြီး 'wolf-house' ၏ အသံလုံးနှစ်လုံးကို လက်ခုပ်တီးပြခဲ့သည်။ နောက်ဆုံးတွင် ထက်ထက်သည် ရှေ့ထွက်လာပြီး Term 5 မှ ဖော်ပြသောစကားလုံးများကို အသုံးပြုကာ တောက်ပသောပန်းသီးနီနှင့် နူးညံ့သောငှက်ပျောသီးဝါအကြောင်း အားလုံးအား ပြောပြခဲ့သည်။ ထို့နောက် ထက်ထက်သည် Term 6 မှ ယဉ်ကျေးသောမေးခွန်းများကို မေးခဲ့ပြီး 'Where did these apples come from?' နှင့် 'Who grew these mangoes?' ဟု မေးခဲ့ကာ၊ သူငယ်ချင်းများအား 'Thank you' ဟု ပြောရန် မမေ့ခဲ့ပါ။ ပြပွဲပြီးဆုံးသောအခါ သူငယ်ချင်းသုံးဦးလုံးသည် အတူတကွရပ်နေကာ ပထမတန်း အင်္ဂလိပ်စာ၏ Term တစ်ခုစီ -- အသံထွက်၊ စာကြောင်းများ၊ ဇာတ်လမ်းပြောခြင်း၊ သံထပ်ခြင်း၊ ဖော်ပြသောစကားလုံးများနှင့် မေးခွန်းများ -- အားလုံးက သူတို့ကို ယုံကြည်မှုရှိသော စာဖတ်သူ၊ စာရေးသူနှင့် စကားပြောသူများ ဖြစ်လာအောင် ကူညီပေးခဲ့ကြောင်း သဘောတူခဲ့ကြသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Which two kinds of words did Moe Moe show from her Term 1 phonics box?",
            questionMy:
                "မိုးမိုးသည် Term 1 အသံထွက်သေတ္တာမှ မည်သည့်စကားလုံးအမျိုးအစားနှစ်ခုကို ပြသခဲ့သနည်း။",
            optionsEn: [
              "CVC words and digraph words",
              "Rhyming words and syllables",
              "Question words and adjectives",
              "Capital letters and full stops",
            ],
            optionsMy: [
              "CVC words and digraph words",
              "Rhyming words and syllables",
              "Question words and adjectives",
              "Capital letters and full stops",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which story did Nay Chi retell in order at the showcase?",
            questionMy:
                "ပြပွဲတွင် နေချည်သည် မည်သည့်ဇာတ်လမ်းကို အစဉ်လိုက် ပြန်ပြောပြခဲ့သနည်း။",
            optionsEn: [
              "The Three Little Pigs",
              "Cinderella",
              "The Ugly Duckling",
              "Goldilocks",
            ],
            optionsMy: [
              "The Three Little Pigs",
              "Cinderella",
              "The Ugly Duckling",
              "Goldilocks",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which two describing words did Htet Htet use for the fruit at the showcase?",
            questionMy:
                "ပြပွဲတွင် ထက်ထက်သည် သစ်သီးအတွက် ဖော်ပြသောစကားလုံးနှစ်လုံးအနက် မည်သည်တို့ကို သုံးခဲ့သနည်း။",
            optionsEn: [
              "Shiny and soft",
              "Who and Where",
              "Big and small",
              "Please and Thank you",
            ],
            optionsMy: [
              "Shiny and soft",
              "Who and Where",
              "Big and small",
              "Please and Thank you",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did all three friends agree helped them become confident readers, writers, and speakers?",
            questionMy:
                "ယုံကြည်မှုရှိသော စာဖတ်သူ၊ စာရေးသူနှင့် စကားပြောသူများ ဖြစ်လာအောင် မည်သည်က ကူညီပေးခဲ့ကြောင်း သူငယ်ချင်းသုံးဦးလုံး သဘောတူခဲ့ကြသနည်း။",
            optionsEn: [
              "Every term of Year 1 English",
              "Only Term 1's phonics",
              "Only Term 6's questions",
              "Nothing from this year",
            ],
            optionsMy: [
              "Every term of Year 1 English",
              "Only Term 1's phonics",
              "Only Term 6's questions",
              "Nothing from this year",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w36-d5",
      dayNumber: 5,
      titleEn: "Week 36 Recap: The Year 1 English Showcase",
      titleMy: "အပတ်စဉ် 36 ပြန်လည်သုံးသပ်ခြင်း - ပထမတန်း အင်္ဂလိပ်စာ ပြပွဲ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which word is a CVC word, like Moe Moe showed at the showcase?",
          questionMy:
              "မိုးမိုး ပြပွဲတွင် ပြသခဲ့သကဲ့သို့ မည်သည့်စကားလုံးသည် CVC စကားလုံး ဖြစ်သနည်း။",
          optionsEn: ["cat", "ship", "three", "play"],
          optionsMy: ["cat", "ship", "three", "play"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which word rhymes with 'pig', like Nay Chi showed at the showcase?",
          questionMy:
              "နေချည် ပြပွဲတွင် ပြသခဲ့သကဲ့သို့ 'pig' နှင့် သံထပ်သောစကားလုံးမှာ မည်သည်နည်း။",
          optionsEn: ["big", "house", "wolf", "cat"],
          optionsMy: ["big", "house", "wolf", "cat"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which describing word did Htet Htet use for the banana at the showcase?",
          questionMy:
              "ပြပွဲတွင် ထက်ထက်သည် ငှက်ပျောသီးအတွက် မည်သည့်ဖော်ပြသောစကားလုံးကို သုံးခဲ့သနည်း။",
          optionsEn: ["soft", "Where", "Who", "Thank you"],
          optionsMy: ["soft", "Where", "Who", "Thank you"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which question word did Htet Htet use to ask who grew the mangoes?",
          questionMy:
              "သရက်သီးများကို မည်သူ စိုက်ပျိုးသည်ကို မေးရန် ထက်ထက် မည်သည့်မေးခွန်းစကားလုံးကို သုံးခဲ့သနည်း။",
          optionsEn: ["Who", "Where", "What", "Please"],
          optionsMy: ["Who", "Where", "What", "Please"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Looking back at the whole showcase, how many terms of Year 1 English skills did Moe Moe, Nay Chi, and Htet Htet bring together?",
          questionMy:
              "ပြပွဲတစ်ခုလုံးကို ပြန်ကြည့်လျှင် မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့သည် ပထမတန်း အင်္ဂလိပ်စာ Term မည်မျှကို ပေါင်းစပ် ပြသခဲ့ကြသနည်း။",
          optionsEn: ["Six terms", "Two terms", "Nine terms", "Zero terms"],
          optionsMy: ["Six terms", "Two terms", "Nine terms", "Zero terms"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

/// Term 9: "The Year 1 English Showcase" (Weeks 33-36) closes out the
/// full 36-week Year 1 English pathway. Week 33 recaps Terms 1-2
/// (phonics and sentence building), Week 34 recaps Terms 3-4
/// (storytelling and sound play), and Week 35 recaps Terms 5-6
/// (describing and questioning), before Week 36's capstone showcase
/// spirals back through all six skill areas at once -- explicitly
/// naming each earlier term's contribution -- the same way
/// _year1MathematicsTerm1's own Week 4 capstone worked.
const CourseTermDef _year1EnglishTerm9 = CourseTermDef(
  id: "course-year1-english-t9",
  termNumber: 9,
  titleEn: "Year 1 English Showcase",
  titleMy: "ပထမတန်း အင်္ဂလိပ်စာ ပြပွဲ",
  certificateTitleEn: "Year 1 English Showcase",
  certificateTitleMy: "ပထမတန်း အင်္ဂလိပ်စာ ပြပွဲ",
  weeks: [
    _year1EnglishWeek33,
    _year1EnglishWeek34,
    _year1EnglishWeek35,
    _year1EnglishWeek36,
  ],
);
