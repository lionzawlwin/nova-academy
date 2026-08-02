// =====================================================================
// Year 1 English -- Term 2: "Building Simple Sentences" (Weeks 5-8)
// =====================================================================
//
// Week 5 introduces the three basic rules of a sentence (capital letter,
// full stop, word order); Week 6 introduces naming words (nouns) for
// people, places, and things; Week 7 introduces action words (verbs) in
// the simple present tense; Week 8 is the capstone/boss week, combining
// all three skills into one continuous real-world story scenario about
// writing simple sentences describing a school day. Moe Moe, Nay Chi,
// and Htet Htet -- the same recurring Year 1 cast used throughout Year 1
// Mathematics and Year 1 Science -- rotate as the star of each week's
// Day 4 reading passage (Moe Moe in Week 5, Nay Chi in Week 6, Htet Htet
// in Week 7), and all three appear together in Week 8's capstone story.

// =====================================================================
// Year 1 English -- Term 2, Week 5: "What Makes a Sentence"
// =====================================================================

const CourseWeekDef _year1EnglishWeek5 = CourseWeekDef(
  id: "course-year1-english-w5",
  weekNumber: 5,
  titleEn: "What Makes a Sentence",
  titleMy: "ဝါကျတစ်ခု ဖွဲ့စည်းပုံ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w5-d1",
      dayNumber: 1,
      titleEn: "Capital Letters and Full Stops",
      titleMy: "အက္ခရာအကြီးနှင့် ရပ်ချက်ပုဒ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which sentence starts correctly, with a capital letter?",
          questionMy: "မည်သည့်ဝါကျသည် အက္ခရာအကြီးဖြင့် မှန်ကန်စွာ စတင်ပါသနည်း။",
          optionsEn: [
            "The cat is happy.",
            "the cat is happy.",
            "THE cat is happy.",
            "the Cat is happy.",
          ],
          optionsMy: [
            "The cat is happy.",
            "the cat is happy.",
            "THE cat is happy.",
            "the Cat is happy.",
          ],
          correctIndex: 0,
          hintsEn: [
            "A sentence must always begin with one big letter, called a capital letter -- look at the very first letter of each option.",
            "Only one of these sentences has just the first letter big, and all the rest of the letters small -- that is the correct way to start a sentence.",
          ],
          hintsMy: [
            "ဝါကျတစ်ခုသည် အမြဲတမ်း အက္ခရာအကြီးတစ်လုံးဖြင့် စတင်ရမည် -- ရွေးချယ်စရာတစ်ခုစီ၏ ပထမဆုံးအက္ခရာကို ကြည့်ပါ။",
            "ဤရွေးချယ်စရာများအနက် တစ်ခုတည်းသာ ပထမအက္ခရာသာ အကြီးဖြစ်ပြီး ကျန်အက္ခရာများ အသေးဖြစ်သည် -- ၎င်းသည် ဝါကျစတင်ရန် မှန်ကန်သောနည်းလမ်းဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which sentence ends correctly, with a full stop?",
          questionMy:
              "မည်သည့်ဝါကျသည် ရပ်ချက်ပုဒ်ဖြင့် မှန်ကန်စွာ အဆုံးသတ်ပါသနည်း။",
          optionsEn: [
            "Nay Chi likes red apples.",
            "Nay Chi likes red apples",
            "Nay Chi likes red apples,",
            "Nay Chi likes red apples!!",
          ],
          optionsMy: [
            "Nay Chi likes red apples.",
            "Nay Chi likes red apples",
            "Nay Chi likes red apples,",
            "Nay Chi likes red apples!!",
          ],
          correctIndex: 0,
          hintsEn: [
            "A telling sentence should end with one small dot, called a full stop -- not with nothing, a comma, or extra marks.",
            "Look for the option that ends with just a single small dot right after the last word.",
          ],
          hintsMy: [
            "ပြောပြသောဝါကျသည် ရပ်ချက်ပုဒ်ဟုခေါ်သော အစက်ငယ်တစ်ခုဖြင့် အဆုံးသတ်သင့်သည် -- ဘာမျှမပါခြင်း၊ ကော်မာ (သို့) အမှတ်အသားများ ပိုပါခြင်းမဟုတ်ပါ။",
            "နောက်ဆုံးစကားလုံးပြီးနောက် အစက်ငယ်တစ်ခုတည်းဖြင့် အဆုံးသတ်သော ရွေးချယ်စရာကို ရှာပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which group of words is in the right order to make a real sentence?",
          questionMy:
              "မည်သည့်စကားလုံးအုပ်စုသည် စစ်မှန်သောဝါကျတစ်ခု ဖြစ်လာရန် မှန်ကန်သောစီစဉ်မှုတွင် ရှိပါသနည်း။",
          optionsEn: [
            "Moe Moe runs fast.",
            "Fast Moe Moe runs.",
            "Runs fast Moe Moe.",
            "Moe Moe fast runs.",
          ],
          optionsMy: [
            "Moe Moe runs fast.",
            "Fast Moe Moe runs.",
            "Runs fast Moe Moe.",
            "Moe Moe fast runs.",
          ],
          correctIndex: 0,
          hintsEn: [
            "Words in a sentence must be in the right order for it to make sense -- read each option aloud and listen for which one sounds natural.",
            "The naming word (who) usually comes first, then the action word (what they do), then extra describing words -- like 'Moe Moe runs fast.'",
          ],
          hintsMy: [
            "ဝါကျတစ်ခုအတွင်း စကားလုံးများသည် အဓိပ္ပာယ်ရှိစေရန် မှန်ကန်သောအစီအစဉ်တွင် ရှိရမည် -- ရွေးချယ်စရာတစ်ခုစီကို အသံထွက်ဖတ်ပြီး ဘယ်ဟာက သဘာဝကျမှန်း နားထောင်ကြည့်ပါ။",
            "အမည်ပေးစကားလုံး (ဘယ်သူ) က များသောအားဖြင့် ပထမဆုံးလာပြီး ထို့နောက် လုပ်ဆောင်မှုစကားလုံး (ဘာလုပ်သည်)၊ ထို့နောက် ဖော်ပြချက်စကားလုံးများ လာသည် -- 'Moe Moe runs fast.' ကဲ့သို့ပင်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Htet Htet wrote: 'htet htet reads a book' What two things are missing to make this a correct sentence?",
          questionMy:
              "ထက်ထက်က 'htet htet reads a book' ဟု ရေးခဲ့သည်။ ဤဝါကျကို မှန်ကန်စေရန် ဘာနှစ်ခု ချန်ထားခဲ့သနည်း။",
          optionsEn: [
            "A capital letter at the start and a full stop at the end",
            "More words in the middle",
            "A question mark and an exclamation mark",
            "Nothing -- it is already correct",
          ],
          optionsMy: [
            "အစတွင် အက္ခရာအကြီးနှင့် အဆုံးတွင် ရပ်ချက်ပုဒ်",
            "အလယ်တွင် စကားလုံးများ ထပ်ထည့်ခြင်း",
            "မေးခွန်းအမှတ်နှင့် အားပြင်းအမှတ်",
            "ဘာမျှ ချန်ထားခဲ့ခြင်းမရှိပါ -- ၎င်းသည် မှန်ကန်ပြီးသားဖြစ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Look closely at 'htet htet' -- notice there is no big letter anywhere, and check what mark comes after 'book'.",
            "Remember today's two lessons: every sentence needs a capital letter at the start and a full stop at the end.",
          ],
          hintsMy: [
            "'htet htet' ကို သေချာကြည့်ပါ -- အက္ခရာအကြီး တစ်လုံးမှမရှိကြောင်း သတိပြုပါ၊ 'book' ပြီးနောက် ဘာအမှတ်အသားရှိမရှိလည်း စစ်ကြည့်ပါ။",
            "ယနေ့သင်ခန်းစာနှစ်ခုကို သတိရပါ -- ဝါကျတိုင်းသည် အစတွင် အက္ခရာအကြီးနှင့် အဆုံးတွင် ရပ်ချက်ပုဒ် လိုအပ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w5-d2",
      dayNumber: 2,
      titleEn: "Match: Parts of a Sentence",
      titleMy: "ကိုက်ညီစွာ တွဲချိတ်ပါ - ဝါကျ၏ အစိတ်အပိုင်းများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w5-dm1",
          termEn: "Sentence",
          termMy: "ဝါကျ (Sentence)",
          matchEn: "A group of words put together that tells a complete idea.",
          matchMy:
              "အပြည့်အစုံသော အတွေးတစ်ခုကို ဖော်ပြသည့် စကားလုံးများ ပေါင်းစပ်ထားမှု။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w5-dm2",
          termEn: "Capital Letter",
          termMy: "အက္ခရာအကြီး (Capital Letter)",
          matchEn:
              "The big letter that starts every sentence, like the 'M' in 'Moe Moe runs.'",
          matchMy:
              "ဝါကျတိုင်းကို စတင်စေသော အက္ခရာအကြီးဖြစ်ပြီး 'Moe Moe runs.' ထဲက 'M' ကဲ့သို့ ဖြစ်သည်။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w5-dm3",
          termEn: "Full Stop",
          termMy: "ရပ်ချက်ပုဒ် (Full Stop)",
          matchEn:
              "The small dot that ends every telling sentence, showing it is finished.",
          matchMy:
              "ပြောပြသောဝါကျတိုင်းကို အဆုံးသတ်ပြီး ဝါကျပြီးဆုံးကြောင်း ပြသသော အစက်ငယ်။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w5-dm4",
          termEn: "Word Order",
          termMy: "စကားလုံးအစီအစဉ် (Word Order)",
          matchEn:
              "Putting words in the right place so a sentence makes sense.",
          matchMy:
              "ဝါကျတစ်ခု အဓိပ္ပာယ်ရှိစေရန် စကားလုံးများကို မှန်ကန်သောနေရာတွင် စီထားခြင်း။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w5-dm5",
          termEn: "Beginning",
          termMy: "အစ (Beginning)",
          matchEn:
              "The very first part of a sentence, where the capital letter goes.",
          matchMy: "အက္ခရာအကြီးရှိရမည့် ဝါကျ၏ ပထမဆုံးအပိုင်း။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w5-dm6",
          termEn: "End",
          termMy: "အဆုံး (End)",
          matchEn:
              "The very last part of a sentence, where the full stop goes.",
          matchMy: "ရပ်ချက်ပုဒ်ရှိရမည့် ဝါကျ၏ နောက်ဆုံးအပိုင်း။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w5-d3",
      dayNumber: 3,
      titleEn: "Sort: Correct or Incorrect Sentence?",
      titleMy: "စီစစ်ကြမည် - ဝါကျမှန်သလား၊ မှားသလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Correct Sentence", "Incorrect Sentence"],
        bucketsMy: ["မှန်ကန်သောဝါကျ", "မှားယွင်းသောဝါကျ"],
        items: [
          SortingItem(
            id: "y1eng-w5-sort1",
            labelEn: "Nay Chi likes cats.",
            labelMy: "Nay Chi likes cats.",
            correctBucketEn: "Correct Sentence",
            correctBucketMy: "မှန်ကန်သောဝါကျ",
          ),
          SortingItem(
            id: "y1eng-w5-sort2",
            labelEn: "nay chi likes cats",
            labelMy: "nay chi likes cats",
            correctBucketEn: "Incorrect Sentence",
            correctBucketMy: "မှားယွင်းသောဝါကျ",
          ),
          SortingItem(
            id: "y1eng-w5-sort3",
            labelEn: "Moe Moe plays ball.",
            labelMy: "Moe Moe plays ball.",
            correctBucketEn: "Correct Sentence",
            correctBucketMy: "မှန်ကန်သောဝါကျ",
          ),
          SortingItem(
            id: "y1eng-w5-sort4",
            labelEn: "ball plays Moe Moe",
            labelMy: "ball plays Moe Moe",
            correctBucketEn: "Incorrect Sentence",
            correctBucketMy: "မှားယွင်းသောဝါကျ",
          ),
          SortingItem(
            id: "y1eng-w5-sort5",
            labelEn: "Htet Htet reads a book.",
            labelMy: "Htet Htet reads a book.",
            correctBucketEn: "Correct Sentence",
            correctBucketMy: "မှန်ကန်သောဝါကျ",
          ),
          SortingItem(
            id: "y1eng-w5-sort6",
            labelEn: "htet htet reads a book",
            labelMy: "htet htet reads a book",
            correctBucketEn: "Incorrect Sentence",
            correctBucketMy: "မှားယွင်းသောဝါကျ",
          ),
          SortingItem(
            id: "y1eng-w5-sort7",
            labelEn: "The sun is hot.",
            labelMy: "The sun is hot.",
            correctBucketEn: "Correct Sentence",
            correctBucketMy: "မှန်ကန်သောဝါကျ",
          ),
          SortingItem(
            id: "y1eng-w5-sort8",
            labelEn: "hot is sun The",
            labelMy: "hot is sun The",
            correctBucketEn: "Incorrect Sentence",
            correctBucketMy: "မှားယွင်းသောဝါကျ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w5-d4",
      dayNumber: 4,
      titleEn: "Reading: Moe Moe's Messy Sentences",
      titleMy: "စာဖတ်ခြင်း - မိုးမိုး၏ ရှုပ်ထွေးနေသောဝါကျများ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Moe Moe's Messy Sentences",
        titleMy: "မိုးမိုး၏ ရှုပ်ထွေးနေသောဝါကျများ",
        passageEn:
            "Moe Moe wrote a message for her friend Nay Chi. She wrote: 'moe moe has a red ball' Moe Moe's teacher looked at the message and smiled. 'You forgot two small things,' the teacher said. 'Every sentence needs a capital letter at the start, and a full stop at the end.' Moe Moe looked again and saw her mistake. She crossed it out and wrote it again: 'Moe Moe has a red ball.' Now the sentence started with a big letter and ended with a small dot. Moe Moe read the words in order -- first her name, then what she has -- and the sentence made perfect sense. She was proud of her tidy new sentence, and gave the message to Nay Chi with a big smile.",
        passageMy:
            "မိုးမိုးသည် သူမ၏ သူငယ်ချင်း နေချည်အတွက် စာတိုတစ်စောင် ရေးခဲ့သည်။ သူမက 'moe moe has a red ball' ဟု ရေးခဲ့သည်။ မိုးမိုး၏ ဆရာမက ထိုစာကို ကြည့်ပြီး ပြုံးလိုက်သည်။ 'မင်း အသေးစားနှစ်ခု မေ့သွားတယ်' ဟု ဆရာမက ပြောခဲ့သည်။ 'ဝါကျတိုင်းမှာ အစမှာ အက္ခရာအကြီးတစ်လုံးနဲ့ အဆုံးမှာ ရပ်ချက်ပုဒ်တစ်ခု လိုအပ်တယ်' ဟု ဆက်ပြောခဲ့သည်။ မိုးမိုးက ထပ်ကြည့်ပြီး သူမ၏အမှားကို တွေ့လိုက်သည်။ သူမသည် ၎င်းကို ဖျက်ပြီး ထပ်ရေးခဲ့သည် - 'Moe Moe has a red ball.' ယခုအခါ ဝါကျသည် အက္ခရာအကြီးဖြင့် စတင်ပြီး အစက်ငယ်ဖြင့် အဆုံးသတ်ခဲ့သည်။ မိုးမိုးသည် စကားလုံးများကို အစီအစဉ်အတိုင်း ဖတ်ခဲ့သည် -- ပထမ သူမ၏အမည်၊ ထို့နောက် သူမတွင် ဘာရှိသည် -- ဝါကျသည် အလွန်ကောင်းမွန်စွာ အဓိပ္ပာယ်ရှိခဲ့သည်။ သူမ၏ သပ်ရပ်သောဝါကျအသစ်ကို ဂုဏ်ယူပြီး ပြုံးရွှင်စွာ နေချည်ထံ စာကို ပေးအပ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What two small things did Moe Moe forget in her first message?",
            questionMy:
                "မိုးမိုးက သူမ၏ ပထမစာတွင် အသေးစား ဘာနှစ်ခု မေ့သွားခဲ့သနည်း။",
            optionsEn: [
              "A capital letter at the start and a full stop at the end",
              "A capital letter and an exclamation mark",
              "Two full stops",
              "A question mark and a comma",
            ],
            optionsMy: [
              "အစတွင် အက္ခရာအကြီးနှင့် အဆုံးတွင် ရပ်ချက်ပုဒ်",
              "အက္ခရာအကြီးနှင့် အားပြင်းအမှတ်",
              "ရပ်ချက်ပုဒ်နှစ်ခု",
              "မေးခွန်းအမှတ်နှင့် ကော်မာ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How did Moe Moe fix her sentence?",
            questionMy: "မိုးမိုးက သူမ၏ဝါကျကို မည်သို့ ပြင်ဆင်ခဲ့သနည်း။",
            optionsEn: [
              "She crossed it out and wrote it again with a capital letter and a full stop",
              "She added more words",
              "She changed the ball to a book",
              "She erased the whole message",
            ],
            optionsMy: [
              "ဖျက်ပြီး အက္ခရာအကြီးနှင့် ရပ်ချက်ပုဒ်ပါစေ၍ ထပ်ရေးခဲ့သည်",
              "စကားလုံးများ ထပ်ထည့်ခဲ့သည်",
              "ဘောလုံးကို စာအုပ်အဖြစ် ပြောင်းလဲခဲ့သည်",
              "စာတစ်စောင်လုံးကို ဖျက်ပစ်ခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "In what order did Moe Moe's fixed sentence tell the words?",
            questionMy:
                "မိုးမိုး၏ ပြင်ဆင်ပြီးဝါကျတွင် စကားလုံးများကို မည်သည့်အစီအစဉ်ဖြင့် ဖော်ပြခဲ့သနည်း။",
            optionsEn: [
              "First her name, then what she has",
              "First the ball, then her name",
              "First the teacher, then the ball",
              "The words had no order at all",
            ],
            optionsMy: [
              "ပထမ သူမ၏အမည်၊ ထို့နောက် သူမတွင်ရှိသောအရာ",
              "ပထမ ဘောလုံး၊ ထို့နောက် သူမ၏အမည်",
              "ပထမ ဆရာမ၊ ထို့နောက် ဘောလုံး",
              "စကားလုံးများတွင် မည်သည့်အစီအစဉ်မျှ မရှိပါ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How did Moe Moe feel about her new, tidy sentence?",
            questionMy:
                "မိုးမိုးက သူမ၏ သပ်ရပ်သောဝါကျအသစ်နှင့် ပတ်သက်ပြီး မည်သို့ ခံစားခဲ့သနည်း။",
            optionsEn: ["Proud", "Angry", "Confused", "Sad"],
            optionsMy: [
              "ဂုဏ်ယူသည်",
              "ဒေါသထွက်သည်",
              "ရှုပ်ထွေးသည်",
              "ဝမ်းနည်းသည်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w5-d5",
      dayNumber: 5,
      titleEn: "Week 5 Recap: What Makes a Sentence",
      titleMy: "အပတ်စဉ် ၅ ပြန်လည်သုံးသပ်ခြင်း - ဝါကျတစ်ခု ဖွဲ့စည်းပုံ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which mark shows that a sentence has finished?",
          questionMy: "ဝါကျတစ်ခု ပြီးဆုံးကြောင်း ပြသသည့်အမှတ်အသားမှာ အဘယ်နည်း။",
          optionsEn: ["A full stop", "A capital letter", "A number", "A space"],
          optionsMy: ["ရပ်ချက်ပုဒ်", "အက္ခရာအကြီး", "ဂဏန်း", "နေရာလွတ်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which letter must start every sentence?",
          questionMy: "ဝါကျတိုင်းကို မည်သည့်အက္ခရာဖြင့် စတင်ရမည်နည်း။",
          optionsEn: [
            "A capital letter",
            "A small letter",
            "A number",
            "A full stop",
          ],
          optionsMy: ["အက္ခရာအကြီး", "အက္ခရာသေး", "ဂဏန်း", "ရပ်ချက်ပုဒ်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which group of words is in the right order: 'Fast Moe Moe runs.' or 'Moe Moe runs fast.'?",
          questionMy:
              "ဘယ်စကားလုံးအုပ်စုသည် မှန်ကန်သောအစီအစဉ်ဖြင့် ရှိသနည်း - 'Fast Moe Moe runs.' (သို့) 'Moe Moe runs fast.'",
          optionsEn: [
            "Moe Moe runs fast.",
            "Fast Moe Moe runs.",
            "Both are correct",
            "Neither is correct",
          ],
          optionsMy: [
            "Moe Moe runs fast.",
            "Fast Moe Moe runs.",
            "နှစ်ခုစလုံး မှန်ကန်သည်",
            "နှစ်ခုစလုံး မှားနေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, what did Moe Moe forget in her first message to Nay Chi?",
          questionMy:
              "စာဖတ်ခန်းတွင် မိုးမိုးက နေချည်ထံ ပထမပို့သောစာတွင် ဘာမေ့သွားခဲ့သနည်း။",
          optionsEn: [
            "A capital letter at the start and a full stop at the end",
            "The word 'ball'",
            "Nay Chi's name",
            "A picture",
          ],
          optionsMy: [
            "အစတွင် အက္ခရာအကြီးနှင့် အဆုံးတွင် ရပ်ချက်ပုဒ်",
            "'ball' ဟူသော စကားလုံး",
            "နေချည်၏ အမည်",
            "ပုံတစ်ပုံ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What three things does every correct sentence need, from this week's lessons?",
          questionMy:
              "ဤအပတ်စဉ်၏ သင်ခန်းစာများအရ ဝါကျမှန်တိုင်းတွင် ဘာသုံးခု ရှိရမည်နည်း။",
          optionsEn: [
            "A capital letter at the start, a full stop at the end, and words in the right order",
            "Only a full stop",
            "Only big letters throughout",
            "Only many words",
          ],
          optionsMy: [
            "အစတွင် အက္ခရာအကြီး၊ အဆုံးတွင် ရပ်ချက်ပုဒ်နှင့် မှန်ကန်သောစကားလုံးအစီအစဉ်",
            "ရပ်ချက်ပုဒ်တစ်ခုတည်းသာ",
            "အက္ခရာအကြီးများသာ တစ်ဝါကျလုံး",
            "စကားလုံး အများကြီးသာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Year 1 English -- Term 2, Week 6: "Naming Words (Nouns)"
// =====================================================================

const CourseWeekDef _year1EnglishWeek6 = CourseWeekDef(
  id: "course-year1-english-w6",
  weekNumber: 6,
  titleEn: "Naming Words (Nouns)",
  titleMy: "အမည်ပေးစကားလုံးများ (နာမ်များ)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w6-d1",
      dayNumber: 1,
      titleEn: "People, Places, and Things",
      titleMy: "လူများ၊ နေရာများနှင့် အရာဝတ္ထုများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Naming words (nouns) name a person, a place, or a thing. Which word in \"Moe Moe found a ball in the park\" is a naming word for a thing?",
          questionMy:
              "အမည်ပေးစကားလုံး (နာမ်) များသည် လူ၊ နေရာ (သို့) အရာဝတ္ထုကို အမည်တပ်သည်။ \"Moe Moe found a ball in the park\" တွင် အရာဝတ္ထုတစ်ခုကို အမည်ပေးသော စကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["found", "ball", "in", "the"],
          optionsMy: ["found", "ball", "in", "the"],
          correctIndex: 1,
          hintsEn: [
            "A naming word (noun) tells us a person, a place, or a thing -- look for a word that names something you could point at.",
            "'Found' tells what Moe Moe did (an action), and 'in'/'the' are just small connecting words -- only one word here names a thing.",
          ],
          hintsMy: [
            "အမည်ပေးစကားလုံး (နာမ်) သည် လူ၊ နေရာ (သို့) အရာဝတ္ထုကို ဖော်ပြသည် -- ညွှန်ပြနိုင်သောအရာတစ်ခုကို အမည်ပေးသော စကားလုံးကို ရှာပါ။",
            "'Found' က မိုးမိုး လုပ်ခဲ့သောအရာ (လုပ်ဆောင်ချက်) ကို ဖော်ပြပြီး 'in'/'the' တို့သည် သေးငယ်သော ဆက်စပ်စကားလုံးများသာ ဖြစ်သည် -- ဤနေရာတွင် အရာဝတ္ထုတစ်ခုကို အမည်ပေးသော စကားလုံး တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which word is a naming word for a place in \"Nay Chi walked to the market\"?",
          questionMy:
              "\"Nay Chi walked to the market\" တွင် နေရာတစ်ခုကို အမည်ပေးသော စကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["walked", "to", "market", "the"],
          optionsMy: ["walked", "to", "market", "the"],
          correctIndex: 2,
          hintsEn: [
            "Naming words can name a place, like a market, a school, or a park -- look for the word that names somewhere you can go.",
            "'Walked' is an action word, and 'to'/'the' are small connecting words -- the naming word here names the place Nay Chi walked to.",
          ],
          hintsMy: [
            "အမည်ပေးစကားလုံးများသည် စျေး၊ ကျောင်း (သို့) ပန်းခြံကဲ့သို့ နေရာတစ်ခုကို အမည်ပေးနိုင်သည် -- သွားနိုင်သောနေရာကို အမည်ပေးသော စကားလုံးကို ရှာပါ။",
            "'Walked' သည် လုပ်ဆောင်မှုစကားလုံးဖြစ်ပြီး 'to'/'the' တို့သည် သေးငယ်သော ဆက်စပ်စကားလုံးများဖြစ်သည် -- ဤနေရာက အမည်ပေးစကားလုံးသည် နေချည် လျှောက်သွားခဲ့သောနေရာကို အမည်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which word is a naming word for a person in \"The teacher smiled at the students\"?",
          questionMy:
              "\"The teacher smiled at the students\" တွင် လူတစ်ဦးကို အမည်ပေးသော စကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["smiled", "teacher", "at", "the"],
          optionsMy: ["smiled", "teacher", "at", "the"],
          correctIndex: 1,
          hintsEn: [
            "Naming words can name a person, like a teacher, a friend, or a mother -- look for the word that names someone.",
            "'Smiled' is an action word, and 'at'/'the' are small connecting words -- only one word here names a person.",
          ],
          hintsMy: [
            "အမည်ပေးစကားလုံးများသည် ဆရာမ၊ သူငယ်ချင်း (သို့) မိခင်ကဲ့သို့ လူတစ်ဦးကို အမည်ပေးနိုင်သည် -- တစ်စုံတစ်ယောက်ကို အမည်ပေးသော စကားလုံးကို ရှာပါ။",
            "'Smiled' သည် လုပ်ဆောင်မှုစကားလုံးဖြစ်ပြီး 'at'/'the' တို့သည် သေးငယ်သော ဆက်စပ်စကားလုံးများဖြစ်သည် -- ဤနေရာတွင် လူတစ်ဦးကို အမည်ပေးသော စကားလုံး တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which word is a naming word for a thing in \"The dog chased a ball quickly\"?",
          questionMy:
              "\"The dog chased a ball quickly\" တွင် အရာဝတ္ထုတစ်ခုကို အမည်ပေးသော စကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["chased", "a", "ball", "quickly"],
          optionsMy: ["chased", "a", "ball", "quickly"],
          correctIndex: 2,
          hintsEn: [
            "Naming words can also name a thing (an object) -- look for the word that names something you could hold in your hand.",
            "'Chased' is an action word, 'a' is a small connecting word, and 'quickly' describes how -- only one word here names a thing.",
          ],
          hintsMy: [
            "အမည်ပေးစကားလုံးများသည် အရာဝတ္ထု (တစ်ခုခု) ကိုလည်း အမည်ပေးနိုင်သည် -- လက်ဖြင့်ကိုင်နိုင်သောအရာကို အမည်ပေးသော စကားလုံးကို ရှာပါ။",
            "'Chased' သည် လုပ်ဆောင်မှုစကားလုံးဖြစ်ပြီး 'a' သည် သေးငယ်သော ဆက်စပ်စကားလုံးဖြစ်ကာ 'quickly' က မည်သို့ ဆိုသည်ကို ဖော်ပြသည် -- ဤနေရာတွင် အရာဝတ္ထုတစ်ခုကို အမည်ပေးသော စကားလုံး တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w6-d2",
      dayNumber: 2,
      titleEn: "Match the Naming Words",
      titleMy: "အမည်ပေးစကားလုံးများကို ကိုက်ညီစွာ တွဲချိတ်ပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w6-dm1",
          termEn: "teacher",
          termMy: "teacher",
          matchEn: "A naming word (noun) for a person who works at a school.",
          matchMy:
              "ကျောင်းတွင် အလုပ်လုပ်သောသူကို ရည်ညွှန်းသော အမည်ပေးစကားလုံး (နာမ်)။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w6-dm2",
          termEn: "park",
          termMy: "park",
          matchEn:
              "A naming word (noun) for a place where children play outside.",
          matchMy:
              "ကလေးများ အပြင်ဘက်တွင် ကစားသောနေရာကို ရည်ညွှန်းသော အမည်ပေးစကားလုံး (နာမ်)။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w6-dm3",
          termEn: "ball",
          termMy: "ball",
          matchEn:
              "A naming word (noun) for a round thing you can throw and catch.",
          matchMy:
              "ပစ်ပေးနိုင်ပြီး ဖမ်းနိုင်သော လုံးဝန်းသည့်အရာကို ရည်ညွှန်းသော အမည်ပေးစကားလုံး (နာမ်)။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w6-dm4",
          termEn: "cat",
          termMy: "cat",
          matchEn:
              "A naming word (noun) for a small furry animal that says 'meow.'",
          matchMy:
              "'meow' ဟု အသံပြုတတ်သော သားရေမွှေးသော တိရစ္ဆာန်ငယ်တစ်ကောင်ကို ရည်ညွှန်းသော အမည်ပေးစကားလုံး (နာမ်)။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w6-dm5",
          termEn: "mother",
          termMy: "mother",
          matchEn:
              "A naming word (noun) for a person in your family who takes care of you.",
          matchMy:
              "သင့်ကို ဂရုစိုက်ပေးသော မိသားစုထဲရှိ လူတစ်ဦးကို ရည်ညွှန်းသော အမည်ပေးစကားလုံး (နာမ်)။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w6-dm6",
          termEn: "school",
          termMy: "school",
          matchEn:
              "A naming word (noun) for a place where children go to learn.",
          matchMy:
              "ကလေးများ သင်ယူရန် သွားသောနေရာကို ရည်ညွှန်းသော အမည်ပေးစကားလုံး (နာမ်)။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w6-d3",
      dayNumber: 3,
      titleEn: "Sort: Naming Word or Not?",
      titleMy: "စီစစ်ကြမည် - အမည်ပေးစကားလုံး ဖြစ်သလား၊ မဟုတ်ဘူးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Naming Word (Noun)", "Not a Naming Word"],
        bucketsMy: ["အမည်ပေးစကားလုံး (နာမ်)", "အမည်ပေးစကားလုံး မဟုတ်ပါ"],
        items: [
          SortingItem(
            id: "y1eng-w6-sort1",
            labelEn: "school",
            labelMy: "school",
            correctBucketEn: "Naming Word (Noun)",
            correctBucketMy: "အမည်ပေးစကားလုံး (နာမ်)",
          ),
          SortingItem(
            id: "y1eng-w6-sort2",
            labelEn: "run",
            labelMy: "run",
            correctBucketEn: "Not a Naming Word",
            correctBucketMy: "အမည်ပေးစကားလုံး မဟုတ်ပါ",
          ),
          SortingItem(
            id: "y1eng-w6-sort3",
            labelEn: "book",
            labelMy: "book",
            correctBucketEn: "Naming Word (Noun)",
            correctBucketMy: "အမည်ပေးစကားလုံး (နာမ်)",
          ),
          SortingItem(
            id: "y1eng-w6-sort4",
            labelEn: "happy",
            labelMy: "happy",
            correctBucketEn: "Not a Naming Word",
            correctBucketMy: "အမည်ပေးစကားလုံး မဟုတ်ပါ",
          ),
          SortingItem(
            id: "y1eng-w6-sort5",
            labelEn: "teacher",
            labelMy: "teacher",
            correctBucketEn: "Naming Word (Noun)",
            correctBucketMy: "အမည်ပေးစကားလုံး (နာမ်)",
          ),
          SortingItem(
            id: "y1eng-w6-sort6",
            labelEn: "jump",
            labelMy: "jump",
            correctBucketEn: "Not a Naming Word",
            correctBucketMy: "အမည်ပေးစကားလုံး မဟုတ်ပါ",
          ),
          SortingItem(
            id: "y1eng-w6-sort7",
            labelEn: "park",
            labelMy: "park",
            correctBucketEn: "Naming Word (Noun)",
            correctBucketMy: "အမည်ပေးစကားလုံး (နာမ်)",
          ),
          SortingItem(
            id: "y1eng-w6-sort8",
            labelEn: "fast",
            labelMy: "fast",
            correctBucketEn: "Not a Naming Word",
            correctBucketMy: "အမည်ပေးစကားလုံး မဟုတ်ပါ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w6-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Naming Word Hunt",
      titleMy: "စာဖတ်ခြင်း - နေချည်၏ အမည်ပေးစကားလုံး ရှာဖွေရေးခရီး",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Naming Word Hunt",
        titleMy: "နေချည်၏ အမည်ပေးစကားလုံး ရှာဖွေရေးခရီး",
        passageEn:
            "Nay Chi's teacher gave the class a fun game: find five naming words hiding around the classroom. Nay Chi looked around and started her hunt. First, she pointed at her friend and said, 'Teacher, that is a naming word -- it names a person!' Next, Nay Chi walked to the window and pointed outside at the school garden. 'Garden is a naming word too -- it names a place!' she said proudly. Then Nay Chi picked up her pencil case from her desk. 'Pencil case is a naming word -- it names a thing!' she called out. On her way back to her seat, Nay Chi spotted a small bird sitting on the windowsill. 'Bird is a naming word for an animal!' she said, smiling. Finally, Nay Chi thought about her own family at home and said one more naming word out loud: 'Mother -- that names a person in my family!' By the end of the game, Nay Chi had found five naming words all by herself, and she understood that naming words are everywhere -- for people, places, things, animals, and family.",
        passageMy:
            "နေချည်၏ ဆရာမက အတန်းသားများအား ပျော်စရာကစားနည်းတစ်ခု ပေးခဲ့သည် - စာသင်ခန်းပတ်လည်တွင် ပုန်းနေသော အမည်ပေးစကားလုံးငါးလုံးကို ရှာဖွေရန်။ နေချည်သည် ပတ်လည်ကြည့်ပြီး သူမ၏ ရှာဖွေမှုကို စတင်ခဲ့သည်။ ပထမဆုံး သူမသည် သူမ၏ သူငယ်ချင်းကို ညွှန်ပြီး 'ဆရာမ၊ ဒါက အမည်ပေးစကားလုံးပါ -- လူတစ်ယောက်ကို အမည်ပေးတာပါ!' ဟု ပြောခဲ့သည်။ ထို့နောက် နေချည်သည် ပြတင်းပေါက်ဆီသို့ လျှောက်သွားပြီး ကျောင်း၏ ဥယျာဉ်ကို အပြင်ဘက်တွင် ညွှန်ပြခဲ့သည်။ 'ဥယျာဉ် ဆိုတာလည်း အမည်ပေးစကားလုံးပါ -- နေရာတစ်ခုကို အမည်ပေးတာပါ!' ဟု သူမ ဂုဏ်ယူစွာ ပြောခဲ့သည်။ ထို့နောက် နေချည်သည် သူမ၏ စားပွဲပေါ်မှ ခဲတံအိတ်ကို ကောက်ယူခဲ့သည်။ 'ခဲတံအိတ် ဆိုတာ အမည်ပေးစကားလုံးပါ -- အရာဝတ္ထုတစ်ခုကို အမည်ပေးတာပါ!' ဟု သူမ ကျယ်လောင်စွာ ပြောခဲ့သည်။ သူမ၏ ခုံဆီ ပြန်သွားစဉ် နေချည်သည် ပြတင်းခုံပေါ်တွင် ထိုင်နေသော ငှက်ငယ်တစ်ကောင်ကို တွေ့လိုက်သည်။ 'ငှက် ဆိုတာ တိရစ္ဆာန်တစ်ကောင်ကို အမည်ပေးသော စကားလုံးပါ!' ဟု ပြုံးရွှင်စွာ ပြောခဲ့သည်။ နောက်ဆုံးတွင် နေချည်သည် အိမ်ရှိ သူမ၏ မိသားစုအကြောင်း တွေးပြီး နောက်ထပ် အမည်ပေးစကားလုံးတစ်လုံးကို အသံထွက် ပြောခဲ့သည် - 'မိခင် -- ဒါက ကျွန်မမိသားစုထဲရှိ လူတစ်ယောက်ကို အမည်ပေးတာပါ!' ကစားနည်း အဆုံးသတ်ချိန်တွင် နေချည်သည် အမည်ပေးစကားလုံး ငါးလုံးကို သူမကိုယ်တိုင် ရှာတွေ့ခဲ့ပြီး၊ အမည်ပေးစကားလုံးများသည် လူများ၊ နေရာများ၊ အရာဝတ္ထုများ၊ တိရစ္ဆာန်များနှင့် မိသားစုအတွက် နေရာတိုင်းတွင် ရှိနေကြောင်း နားလည်သဘောပေါက်လာခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What game did Nay Chi's teacher give the class?",
            questionMy:
                "နေချည်၏ ဆရာမက အတန်းသားများအား ဘယ်လိုကစားနည်း ပေးခဲ့သနည်း။",
            optionsEn: [
              "Find five naming words hiding around the classroom",
              "Draw five pictures",
              "Sing five songs",
              "Count to five",
            ],
            optionsMy: [
              "စာသင်ခန်းပတ်လည်ရှိ ပုန်းနေသော အမည်ပေးစကားလုံးငါးလုံးကို ရှာဖွေရန်",
              "ပုံငါးပုံ ဆွဲရန်",
              "သီချင်းငါးပုဒ် ဆိုရန်",
              "ငါးအထိ ရေတွက်ရန်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which naming word did Nay Chi find that names a place?",
            questionMy:
                "နေချည် တွေ့ခဲ့သော နေရာတစ်ခုကို အမည်ပေးသည့် စကားလုံးမှာ အဘယ်နည်း။",
            optionsEn: ["Garden", "Teacher", "Bird", "Mother"],
            optionsMy: ["ဥယျာဉ်", "ဆရာမ", "ငှက်", "မိခင်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which naming word did Nay Chi find that names an animal?",
            questionMy:
                "နေချည် တွေ့ခဲ့သော တိရစ္ဆာန်တစ်ကောင်ကို အမည်ပေးသည့် စကားလုံးမှာ အဘယ်နည်း။",
            optionsEn: ["Bird", "Pencil case", "Garden", "Teacher"],
            optionsMy: ["ငှက်", "ခဲတံအိတ်", "ဥယျာဉ်", "ဆရာမ"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "By the end of the game, how many naming words had Nay Chi found?",
            questionMy:
                "ကစားနည်းအဆုံးတွင် နေချည်သည် အမည်ပေးစကားလုံး မည်မျှ ရှာတွေ့ခဲ့သနည်း။",
            optionsEn: ["Five", "Three", "Ten", "Two"],
            optionsMy: ["ငါးလုံး", "သုံးလုံး", "ဆယ်လုံး", "နှစ်လုံး"],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w6-d5",
      dayNumber: 5,
      titleEn: "Week 6 Recap: Naming Words",
      titleMy: "အပတ်စဉ် ၆ ပြန်လည်သုံးသပ်ခြင်း - အမည်ပေးစကားလုံးများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Naming words (nouns) name a person, a place, a thing, or an...",
          questionMy:
              "အမည်ပေးစကားလုံး (နာမ်) များသည် လူ၊ နေရာ၊ အရာဝတ္ထု (သို့) ဘာကို အမည်ပေးသနည်း။",
          optionsEn: ["Animal", "Action", "Feeling word", "Full stop"],
          optionsMy: [
            "တိရစ္ဆာန်",
            "လုပ်ဆောင်ချက်",
            "ခံစားချက်ဆိုင်ရာစကားလုံး",
            "ရပ်ချက်ပုဒ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which word is a naming word for a thing: 'ball', 'run', or 'happy'?",
          questionMy:
              "'ball'၊ 'run'၊ 'happy' တို့တွင် ဘယ်စကားလုံးသည် အရာဝတ္ထုတစ်ခုကို အမည်ပေးသောစကားလုံး ဖြစ်သနည်း။",
          optionsEn: ["ball", "run", "happy", "Both run and happy"],
          optionsMy: ["ball", "run", "happy", "run နှင့် happy နှစ်ခုစလုံး"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which word names a person: 'teacher', 'jump', or 'fast'?",
          questionMy:
              "'teacher'၊ 'jump'၊ 'fast' တို့တွင် ဘယ်စကားလုံးသည် လူတစ်ယောက်ကို အမည်ပေးသနည်း။",
          optionsEn: ["teacher", "jump", "fast", "None of these"],
          optionsMy: ["teacher", "jump", "fast", "ဘယ်စကားလုံးမှမဟုတ်ပါ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, which naming word did Nay Chi say names a person in her own family?",
          questionMy:
              "စာဖတ်ခန်းတွင် နေချည်က သူမ၏ မိသားစုထဲရှိ လူတစ်ယောက်ကို အမည်ပေးသည်ဟု ပြောခဲ့သောစကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["Mother", "Teacher", "Bird", "Garden"],
          optionsMy: ["မိခင်", "ဆရာမ", "ငှက်", "ဥယျာဉ်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is NOT a naming word?",
          questionMy:
              "အောက်ပါတို့အနက် အမည်ပေးစကားလုံး မဟုတ်သည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: ["jump", "school", "cat", "mother"],
          optionsMy: ["jump", "school", "cat", "mother"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Year 1 English -- Term 2, Week 7: "Action Words (Verbs)"
// =====================================================================

const CourseWeekDef _year1EnglishWeek7 = CourseWeekDef(
  id: "course-year1-english-w7",
  weekNumber: 7,
  titleEn: "Action Words (Verbs)",
  titleMy: "လုပ်ဆောင်မှုစကားလုံးများ (ကြိယာများ)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w7-d1",
      dayNumber: 1,
      titleEn: "What Are Action Words?",
      titleMy: "လုပ်ဆောင်မှုစကားလုံးများ ဆိုသည်မှာ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which word is the action word in \"Moe Moe runs to the park\"?",
          questionMy:
              "\"Moe Moe runs to the park\" တွင် လုပ်ဆောင်မှုစကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["runs", "Moe Moe", "to", "park"],
          optionsMy: ["runs", "Moe Moe", "to", "park"],
          correctIndex: 0,
          hintsEn: [
            "An action word (verb) tells what someone is doing -- look for the word that shows movement or doing something.",
            "'Moe Moe' names who, and 'to'/'park' name where -- only one word here shows the action.",
          ],
          hintsMy: [
            "လုပ်ဆောင်မှုစကားလုံး (ကြိယာ) သည် တစ်စုံတစ်ယောက် ဘာလုပ်နေသည်ကို ဖော်ပြသည် -- လှုပ်ရှားမှု (သို့) တစ်ခုခုလုပ်ဆောင်ခြင်းကို ပြသောစကားလုံးကို ရှာပါ။",
            "'Moe Moe' က ဘယ်သူဆိုသည်ကို အမည်ပေးပြီး 'to'/'park' တို့က ဘယ်နေရာဆိုသည်ကို အမည်ပေးသည် -- ဤနေရာတွင် လုပ်ဆောင်မှုကို ပြသောစကားလုံး တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which word is the action word in \"Nay Chi eats an apple\"?",
          questionMy:
              "\"Nay Chi eats an apple\" တွင် လုပ်ဆောင်မှုစကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["Nay Chi", "eats", "an", "apple"],
          optionsMy: ["Nay Chi", "eats", "an", "apple"],
          correctIndex: 1,
          hintsEn: [
            "Action words show what someone does, like eating, playing, or jumping -- look for the doing word.",
            "'Nay Chi' names who, and 'apple' names a thing -- only one word here shows what she is doing.",
          ],
          hintsMy: [
            "လုပ်ဆောင်မှုစကားလုံးများသည် စားခြင်း၊ ကစားခြင်း (သို့) ခုန်ကျော်ခြင်းကဲ့သို့ တစ်စုံတစ်ယောက် ဘာလုပ်သည်ကို ပြသည် -- ပြုလုပ်သည့်စကားလုံးကို ရှာပါ။",
            "'Nay Chi' က ဘယ်သူဆိုသည်ကို အမည်ပေးပြီး 'apple' က အရာဝတ္ထုတစ်ခုကို အမည်ပေးသည် -- ဤနေရာတွင် သူမ ဘာလုပ်နေသည်ကို ပြသောစကားလုံး တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which word is the action word in \"Htet Htet plays with a ball\"?",
          questionMy:
              "\"Htet Htet plays with a ball\" တွင် လုပ်ဆောင်မှုစကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["Htet Htet", "plays", "with", "ball"],
          optionsMy: ["Htet Htet", "plays", "with", "ball"],
          correctIndex: 1,
          hintsEn: [
            "Look for the word that tells what Htet Htet is doing right now.",
            "'Ball' names a thing, and 'with' is a small connecting word -- only one word here shows the action.",
          ],
          hintsMy: [
            "ထက်ထက် ယခုလက်ရှိ ဘာလုပ်နေသည်ကို ဖော်ပြသောစကားလုံးကို ရှာပါ။",
            "'Ball' က အရာဝတ္ထုတစ်ခုကို အမည်ပေးပြီး 'with' သည် သေးငယ်သော ဆက်စပ်စကားလုံးဖြစ်သည် -- ဤနေရာတွင် လုပ်ဆောင်မှုကို ပြသောစကားလုံး တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which word is the action word in \"The children jump over the rope\"?",
          questionMy:
              "\"The children jump over the rope\" တွင် လုပ်ဆောင်မှုစကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["children", "jump", "over", "rope"],
          optionsMy: ["children", "jump", "over", "rope"],
          correctIndex: 1,
          hintsEn: [
            "Action words can show big movements too, like jumping, running, or climbing.",
            "'Children' names who, and 'rope' names a thing -- only one word here shows what they are doing.",
          ],
          hintsMy: [
            "လုပ်ဆောင်မှုစကားလုံးများသည် ခုန်ကျော်ခြင်း၊ ပြေးခြင်း (သို့) တက်ခြင်းကဲ့သို့ လှုပ်ရှားမှုကြီးများကိုလည်း ပြသနိုင်သည်။",
            "'Children' က ဘယ်သူများဆိုသည်ကို အမည်ပေးပြီး 'rope' က အရာဝတ္ထုတစ်ခုကို အမည်ပေးသည် -- ဤနေရာတွင် သူတို့ ဘာလုပ်နေသည်ကို ပြသောစကားလုံး တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w7-d2",
      dayNumber: 2,
      titleEn: "Match the Action Words",
      titleMy: "လုပ်ဆောင်မှုစကားလုံးများကို ကိုက်ညီစွာ တွဲချိတ်ပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w7-dm1",
          termEn: "run",
          termMy: "run",
          matchEn:
              "An action word (verb) meaning to move fast using your legs.",
          matchMy:
              "ခြေထောက်ဖြင့် လျင်မြန်စွာ ရွေ့လျားခြင်းကို ဆိုလိုသော လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w7-dm2",
          termEn: "eat",
          termMy: "eat",
          matchEn:
              "An action word (verb) meaning to put food in your mouth and chew it.",
          matchMy:
              "အစားအစာကို ပါးစပ်ထဲထည့်ပြီး ခဲခြင်းကို ဆိုလိုသော လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w7-dm3",
          termEn: "play",
          termMy: "play",
          matchEn:
              "An action word (verb) meaning to have fun doing a game or activity.",
          matchMy:
              "ကစားနည်း (သို့) လှုပ်ရှားမှုတစ်ခုဖြင့် ပျော်ရွှင်စွာ ကစားခြင်းကို ဆိုလိုသော လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w7-dm4",
          termEn: "jump",
          termMy: "jump",
          matchEn:
              "An action word (verb) meaning to push off the ground and go up in the air.",
          matchMy:
              "မြေပြင်မှ တွန်းတက်ပြီး လေထဲသို့ ပျံတက်ခြင်းကို ဆိုလိုသော လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w7-dm5",
          termEn: "walk",
          termMy: "walk",
          matchEn:
              "An action word (verb) meaning to move using your legs, one step at a time.",
          matchMy:
              "ခြေလှမ်းတစ်လှမ်းချင်းစီဖြင့် ခြေထောက်ကို အသုံးပြု၍ ရွေ့လျားခြင်းကို ဆိုလိုသော လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w7-dm6",
          termEn: "Action Word (Verb)",
          termMy: "လုပ်ဆောင်မှုစကားလုံး (Action Word)",
          matchEn: "A word that tells what someone is doing.",
          matchMy: "တစ်စုံတစ်ယောက် ဘာလုပ်နေသည်ကို ဖော်ပြသော စကားလုံး။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w7-d3",
      dayNumber: 3,
      titleEn: "Sort: Action Word or Naming Word?",
      titleMy: "စီစစ်ကြမည် - လုပ်ဆောင်မှုစကားလုံးလား၊ အမည်ပေးစကားလုံးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Action Word (Verb)", "Naming Word (Noun)"],
        bucketsMy: ["လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)", "အမည်ပေးစကားလုံး (နာမ်)"],
        items: [
          SortingItem(
            id: "y1eng-w7-sort1",
            labelEn: "run",
            labelMy: "run",
            correctBucketEn: "Action Word (Verb)",
            correctBucketMy: "လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)",
          ),
          SortingItem(
            id: "y1eng-w7-sort2",
            labelEn: "school",
            labelMy: "school",
            correctBucketEn: "Naming Word (Noun)",
            correctBucketMy: "အမည်ပေးစကားလုံး (နာမ်)",
          ),
          SortingItem(
            id: "y1eng-w7-sort3",
            labelEn: "jump",
            labelMy: "jump",
            correctBucketEn: "Action Word (Verb)",
            correctBucketMy: "လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)",
          ),
          SortingItem(
            id: "y1eng-w7-sort4",
            labelEn: "teacher",
            labelMy: "teacher",
            correctBucketEn: "Naming Word (Noun)",
            correctBucketMy: "အမည်ပေးစကားလုံး (နာမ်)",
          ),
          SortingItem(
            id: "y1eng-w7-sort5",
            labelEn: "eat",
            labelMy: "eat",
            correctBucketEn: "Action Word (Verb)",
            correctBucketMy: "လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)",
          ),
          SortingItem(
            id: "y1eng-w7-sort6",
            labelEn: "ball",
            labelMy: "ball",
            correctBucketEn: "Naming Word (Noun)",
            correctBucketMy: "အမည်ပေးစကားလုံး (နာမ်)",
          ),
          SortingItem(
            id: "y1eng-w7-sort7",
            labelEn: "play",
            labelMy: "play",
            correctBucketEn: "Action Word (Verb)",
            correctBucketMy: "လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)",
          ),
          SortingItem(
            id: "y1eng-w7-sort8",
            labelEn: "park",
            labelMy: "park",
            correctBucketEn: "Naming Word (Noun)",
            correctBucketMy: "အမည်ပေးစကားလုံး (နာမ်)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w7-d4",
      dayNumber: 4,
      titleEn: "Reading: Htet Htet's Busy Day of Action Words",
      titleMy:
          "စာဖတ်ခြင်း - ထက်ထက်၏ လုပ်ဆောင်မှုစကားလုံးများနှင့် အလုပ်များသောနေ့",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Htet Htet's Busy Day of Action Words",
        titleMy: "ထက်ထက်၏ လုပ်ဆောင်မှုစကားလုံးများနှင့် အလုပ်များသောနေ့",
        passageEn:
            "Htet Htet woke up early and stretched. First, Htet Htet runs to the kitchen for breakfast. Then Htet Htet eats a warm bowl of rice with egg. After breakfast, Htet Htet walks to school with her friends, chatting happily along the way. At school, during break time, Htet Htet plays a fun game with Moe Moe and Nay Chi in the playground. When the teacher calls everyone back, Htet Htet jumps over a small puddle on the way to the classroom door. By the end of the day, Htet Htet had run, eaten, walked, played, and jumped -- five different action words, all in just one busy day.",
        passageMy:
            "ထက်ထက်သည် စောစီးစွာ နိုးထပြီး ကိုယ်ဟန်ဆန့်ခဲ့သည်။ ပထမဆုံး ထက်ထက်သည် နံနက်စာအတွက် မီးဖိုချောင်ဆီသို့ ပြေးသွားသည်။ ထို့နောက် ထက်ထက်သည် ကြက်ဥနှင့် ထမင်းပူပူတစ်ခွက်ကို စားခဲ့သည်။ နံနက်စာစားပြီးနောက် ထက်ထက်သည် သူငယ်ချင်းများနှင့်အတူ လမ်းတလျှောက် ပျော်ရွှင်စွာ စကားပြောရင်း ကျောင်းဆီသို့ လမ်းလျှောက်သွားခဲ့သည်။ ကျောင်းတွင် အနားယူချိန်၌ ထက်ထက်သည် ကစားကွင်းတွင် မိုးမိုးနှင့် နေချည်တို့နှင့်အတူ ပျော်စရာ ကစားနည်းတစ်ခုကို ကစားခဲ့သည်။ ဆရာမက အားလုံးကို ပြန်ခေါ်သောအခါ ထက်ထက်သည် စာသင်ခန်းတံခါးဆီ သွားရာလမ်းတွင် ရေအိုင်ငယ်တစ်ခုကို ခုန်ကျော်ခဲ့သည်။ တစ်နေ့တာအဆုံးတွင် ထက်ထက်သည် ပြေးခဲ့ပြီး၊ စားခဲ့ပြီး၊ လမ်းလျှောက်ခဲ့ပြီး၊ ကစားခဲ့ပြီး၊ ခုန်ကျော်ခဲ့သည် -- တစ်နေ့တာ အလုပ်များသောနေ့တစ်နေ့အတွင်း လုပ်ဆောင်မှုစကားလုံး ငါးလုံးလုံးကို ပြုလုပ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What action word tells how Htet Htet went to the kitchen for breakfast?",
            questionMy:
                "ထက်ထက် နံနက်စာအတွက် မီးဖိုချောင်ဆီ မည်သို့ သွားခဲ့ကြောင်းပြသော လုပ်ဆောင်မှုစကားလုံးမှာ အဘယ်နည်း။",
            optionsEn: ["Runs", "Eats", "Walks", "Jumps"],
            optionsMy: [
              "ပြေးခြင်း",
              "စားခြင်း",
              "လမ်းလျှောက်ခြင်း",
              "ခုန်ကျော်ခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Htet Htet do during break time at school?",
            questionMy: "ကျောင်းတွင် အနားယူချိန်၌ ထက်ထက် ဘာလုပ်ခဲ့သနည်း။",
            optionsEn: [
              "Played a game with Moe Moe and Nay Chi",
              "Ate breakfast",
              "Walked home",
              "Jumped over a puddle",
            ],
            optionsMy: [
              "မိုးမိုးနှင့် နေချည်တို့နှင့်အတူ ကစားနည်းတစ်ခု ကစားခဲ့သည်",
              "နံနက်စာ စားခဲ့သည်",
              "အိမ်ကို လမ်းလျှောက်သွားခဲ့သည်",
              "ရေအိုင်တစ်ခုကို ခုန်ကျော်ခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Htet Htet jump over on the way to the classroom door?",
            questionMy:
                "စာသင်ခန်းတံခါးဆီသွားရာလမ်းတွင် ထက်ထက် ဘာကို ခုန်ကျော်ခဲ့သနည်း။",
            optionsEn: ["A small puddle", "A ball", "A chair", "A book"],
            optionsMy: ["ရေအိုင်ငယ်", "ဘောလုံး", "ကုလားထိုင်", "စာအုပ်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "How many different action words did Htet Htet do in her busy day?",
            questionMy:
                "ထက်ထက် အလုပ်များသောနေ့တွင် မတူညီသော လုပ်ဆောင်မှုစကားလုံး မည်မျှ ပြုလုပ်ခဲ့သနည်း။",
            optionsEn: ["Five", "Three", "Two", "Ten"],
            optionsMy: ["ငါးလုံး", "သုံးလုံး", "နှစ်လုံး", "ဆယ်လုံး"],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w7-d5",
      dayNumber: 5,
      titleEn: "Week 7 Recap: Action Words",
      titleMy: "အပတ်စဉ် ၇ ပြန်လည်သုံးသပ်ခြင်း - လုပ်ဆောင်မှုစကားလုံးများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Action words (verbs) tell what someone is...",
          questionMy:
              "လုပ်ဆောင်မှုစကားလုံး (ကြိယာ) များသည် တစ်စုံတစ်ယောက် ဘာလုပ်နေသည်ကို ဖော်ပြသနည်း။",
          optionsEn: ["Doing", "Naming", "Counting", "Coloring"],
          optionsMy: [
            "လုပ်ဆောင်နေသည်",
            "အမည်ပေးနေသည်",
            "ရေတွက်နေသည်",
            "ဆေးဆိုးနေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which word is an action word: 'run', 'school', or 'happy'?",
          questionMy:
              "'run'၊ 'school'၊ 'happy' တို့တွင် ဘယ်စကားလုံးသည် လုပ်ဆောင်မှုစကားလုံး ဖြစ်သနည်း။",
          optionsEn: ["run", "school", "happy", "Both school and happy"],
          optionsMy: [
            "run",
            "school",
            "happy",
            "school နှင့် happy နှစ်ခုစလုံး",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the sorting activity, which bucket did 'jump' belong to?",
          questionMy:
              "စီစစ်ခြင်းလှုပ်ရှားမှုတွင် 'jump' သည် မည်သည့်အမျိုးအစားထဲတွင် ပါဝင်ခဲ့သနည်း။",
          optionsEn: [
            "Action Word (Verb)",
            "Naming Word (Noun)",
            "Capital Letter",
            "Full Stop",
          ],
          optionsMy: [
            "လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)",
            "အမည်ပေးစကားလုံး (နာမ်)",
            "အက္ခရာအကြီး",
            "ရပ်ချက်ပုဒ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, what action word describes what Htet Htet did in the playground with her friends?",
          questionMy:
              "စာဖတ်ခန်းတွင် ထက်ထက် သူငယ်ချင်းများနှင့်အတူ ကစားကွင်း၌ ပြုလုပ်ခဲ့သည့်အရာကို ဖော်ပြသော လုပ်ဆောင်မှုစကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["Plays", "Runs", "Eats", "Jumps"],
          optionsMy: ["ကစားခြင်း", "ပြေးခြင်း", "စားခြင်း", "ခုန်ကျော်ခြင်း"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is an action word, not a naming word?",
          questionMy:
              "အောက်ပါတို့တွင် အမည်ပေးစကားလုံးမဟုတ်ဘဲ လုပ်ဆောင်မှုစကားလုံးဖြစ်သည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: ["eat", "ball", "teacher", "park"],
          optionsMy: ["eat", "ball", "teacher", "park"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Year 1 English -- Term 2, Week 8 (Boss Week): "Writing About My Day"
// =====================================================================
//
// The capstone/review week, combining Week 5's capital letter/full
// stop/word order rules, Week 6's naming words, and Week 7's action
// words into one continuous real-world story scenario, matching the
// style of _year1MathematicsTerm1's Week 4 capstone -- Moe Moe, Nay Chi,
// and Htet Htet all appear together for the first time this term.

const CourseWeekDef _year1EnglishWeek8 = CourseWeekDef(
  id: "course-year1-english-w8",
  weekNumber: 8,
  titleEn: "Writing About My Day",
  titleMy: "ကျွန်ုပ်၏ တစ်နေ့ကို ရေးသားခြင်း",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y1-eng-w8-d1",
      dayNumber: 1,
      titleEn: "Putting It All Together",
      titleMy: "အားလုံးကို ပေါင်းစပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which is a complete, correct sentence?",
          questionMy: "မည်သည့်အရာသည် ပြည့်စုံသော၊ မှန်ကန်သောဝါကျ ဖြစ်သနည်း။",
          optionsEn: [
            "Moe Moe eats breakfast.",
            "moe moe eats breakfast",
            "eats breakfast Moe Moe.",
            "Moe Moe eats breakfast",
          ],
          optionsMy: [
            "Moe Moe eats breakfast.",
            "moe moe eats breakfast",
            "eats breakfast Moe Moe.",
            "Moe Moe eats breakfast",
          ],
          correctIndex: 0,
          hintsEn: [
            "Check all three things a correct sentence needs: a capital letter at the start, a full stop at the end, and words in the right order.",
            "Look closely -- only one option has a capital letter, the words in the right order, and a full stop, all together.",
          ],
          hintsMy: [
            "မှန်ကန်သောဝါကျတစ်ခုတွင် လိုအပ်သော အရာသုံးခုကို စစ်ကြည့်ပါ - အစတွင် အက္ခရာအကြီး၊ အဆုံးတွင် ရပ်ချက်ပုဒ်နှင့် မှန်ကန်သောစကားလုံးအစီအစဉ်။",
            "သေချာကြည့်ပါ -- ရွေးချယ်စရာတစ်ခုတည်းသာ အက္ခရာအကြီး၊ မှန်ကန်သောစကားလုံးအစီအစဉ်နှင့် ရပ်ချက်ပုဒ် အားလုံးအတူတကွ ပါဝင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the sentence \"Nay Chi reads a book,\" which word is the naming word (noun) for a thing?",
          questionMy:
              "\"Nay Chi reads a book\" ဝါကျတွင် အရာဝတ္ထုတစ်ခုကို အမည်ပေးသော အမည်ပေးစကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["book", "reads", "a", "Nay Chi"],
          optionsMy: ["book", "reads", "a", "Nay Chi"],
          correctIndex: 0,
          hintsEn: [
            "Remember Week 6 -- naming words (nouns) name a person, a place, or a thing.",
            "'Reads' is the action word here, and 'Nay Chi' names a person -- look for the word that names the thing she reads.",
          ],
          hintsMy: [
            "Week 6 ကို သတိရပါ -- အမည်ပေးစကားလုံး (နာမ်) များသည် လူ၊ နေရာ (သို့) အရာဝတ္ထုကို အမည်ပေးသည်။",
            "'Reads' သည် ဤနေရာက လုပ်ဆောင်မှုစကားလုံးဖြစ်ပြီး 'Nay Chi' က လူတစ်ဦးကို အမည်ပေးသည် -- သူမ ဖတ်နေသောအရာကို အမည်ပေးသောစကားလုံးကို ရှာပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the sentence \"Htet Htet jumps over the rope,\" which word is the action word (verb)?",
          questionMy:
              "\"Htet Htet jumps over the rope\" ဝါကျတွင် လုပ်ဆောင်မှုစကားလုံး (ကြိယာ) မှာ အဘယ်နည်း။",
          optionsEn: ["jumps", "Htet Htet", "over", "rope"],
          optionsMy: ["jumps", "Htet Htet", "over", "rope"],
          correctIndex: 0,
          hintsEn: [
            "Remember Week 7 -- action words (verbs) tell what someone is doing.",
            "'Htet Htet' names who, and 'rope' names a thing -- only one word here shows the action.",
          ],
          hintsMy: [
            "Week 7 ကို သတိရပါ -- လုပ်ဆောင်မှုစကားလုံး (ကြိယာ) များသည် တစ်စုံတစ်ယောက် ဘာလုပ်နေသည်ကို ဖော်ပြသည်။",
            "'Htet Htet' က ဘယ်သူဆိုသည်ကို အမည်ပေးပြီး 'rope' က အရာဝတ္ထုတစ်ခုကို အမည်ပေးသည် -- ဤနေရာတွင် လုပ်ဆောင်မှုကို ပြသောစကားလုံး တစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Put these words in the right order to make a correct sentence: 'plays. ball a Moe Moe'",
          questionMy:
              "ဤစကားလုံးများကို မှန်ကန်သောဝါကျဖြစ်ရန် အစီအစဉ်မှန်ဖြင့် စီပါ - 'plays. ball a Moe Moe'",
          optionsEn: [
            "Moe Moe plays a ball.",
            "ball plays a Moe Moe.",
            "a Moe Moe ball plays.",
            "plays Moe Moe a ball.",
          ],
          optionsMy: [
            "Moe Moe plays a ball.",
            "ball plays a Moe Moe.",
            "a Moe Moe ball plays.",
            "plays Moe Moe a ball.",
          ],
          correctIndex: 0,
          hintsEn: [
            "Remember Week 5 -- the naming word (who) usually comes first, then the action word (what they do).",
            "Start with 'Moe Moe' (who), then 'plays' (the action), then 'a ball' (the thing), and end with a full stop.",
          ],
          hintsMy: [
            "Week 5 ကို သတိရပါ -- အမည်ပေးစကားလုံး (ဘယ်သူ) က များသောအားဖြင့် ပထမဆုံးလာပြီး ထို့နောက် လုပ်ဆောင်မှုစကားလုံး (ဘာလုပ်သည်) လာသည်။",
            "'Moe Moe' (ဘယ်သူ) ဖြင့် စတင်ပြီး 'plays' (လုပ်ဆောင်မှု)၊ ထို့နောက် 'a ball' (အရာဝတ္ထု) လာကာ ရပ်ချက်ပုဒ်ဖြင့် အဆုံးသတ်ပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w8-d2",
      dayNumber: 2,
      titleEn: "Match: Review of the Whole Term",
      titleMy: "ကိုက်ညီစွာ တွဲချိတ်ပါ - ဤနှစ်ဝက်တစ်ခုလုံး ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y1eng-w8-dm1",
          termEn: "Capital Letter",
          termMy: "အက္ခရာအကြီး (Capital Letter)",
          matchEn: "The big letter that starts every sentence.",
          matchMy: "ဝါကျတိုင်းကို စတင်စေသော အက္ခရာအကြီး။",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "y1eng-w8-dm2",
          termEn: "Full Stop",
          termMy: "ရပ်ချက်ပုဒ် (Full Stop)",
          matchEn: "The small dot that ends every telling sentence.",
          matchMy: "ပြောပြသောဝါကျတိုင်းကို အဆုံးသတ်သော အစက်ငယ်။",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "y1eng-w8-dm3",
          termEn: "Naming Word (Noun)",
          termMy: "အမည်ပေးစကားလုံး (Naming Word)",
          matchEn: "A word that names a person, a place, or a thing.",
          matchMy: "လူ၊ နေရာ (သို့) အရာဝတ္ထုတစ်ခုကို အမည်ပေးသော စကားလုံး။",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "y1eng-w8-dm4",
          termEn: "Action Word (Verb)",
          termMy: "လုပ်ဆောင်မှုစကားလုံး (Action Word)",
          matchEn: "A word that tells what someone is doing.",
          matchMy: "တစ်စုံတစ်ယောက် ဘာလုပ်နေသည်ကို ဖော်ပြသော စကားလုံး။",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "y1eng-w8-dm5",
          termEn: "Sentence",
          termMy: "ဝါကျ (Sentence)",
          matchEn: "A group of words put together that tells a complete idea.",
          matchMy:
              "အပြည့်အစုံသော အတွေးတစ်ခုကို ဖော်ပြသည့် စကားလုံးများ ပေါင်းစပ်ထားမှု။",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "y1eng-w8-dm6",
          termEn: "Word Order",
          termMy: "စကားလုံးအစီအစဉ် (Word Order)",
          matchEn:
              "Putting words in the right place so a sentence makes sense.",
          matchMy:
              "ဝါကျတစ်ခု အဓိပ္ပာယ်ရှိစေရန် စကားလုံးများကို မှန်ကန်သောနေရာတွင် စီထားခြင်း။",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y1-eng-w8-d3",
      dayNumber: 3,
      titleEn: "Sort: Naming Word or Action Word? (School Day Words)",
      titleMy:
          "စီစစ်ကြမည် - အမည်ပေးစကားလုံးလား၊ လုပ်ဆောင်မှုစကားလုံးလား (ကျောင်းနေ့စကားလုံးများ)",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Naming Word (Noun)", "Action Word (Verb)"],
        bucketsMy: ["အမည်ပေးစကားလုံး (နာမ်)", "လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)"],
        items: [
          SortingItem(
            id: "y1eng-w8-sort1",
            labelEn: "teacher",
            labelMy: "teacher",
            correctBucketEn: "Naming Word (Noun)",
            correctBucketMy: "အမည်ပေးစကားလုံး (နာမ်)",
          ),
          SortingItem(
            id: "y1eng-w8-sort2",
            labelEn: "write",
            labelMy: "write",
            correctBucketEn: "Action Word (Verb)",
            correctBucketMy: "လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)",
          ),
          SortingItem(
            id: "y1eng-w8-sort3",
            labelEn: "classroom",
            labelMy: "classroom",
            correctBucketEn: "Naming Word (Noun)",
            correctBucketMy: "အမည်ပေးစကားလုံး (နာမ်)",
          ),
          SortingItem(
            id: "y1eng-w8-sort4",
            labelEn: "read",
            labelMy: "read",
            correctBucketEn: "Action Word (Verb)",
            correctBucketMy: "လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)",
          ),
          SortingItem(
            id: "y1eng-w8-sort5",
            labelEn: "friend",
            labelMy: "friend",
            correctBucketEn: "Naming Word (Noun)",
            correctBucketMy: "အမည်ပေးစကားလုံး (နာမ်)",
          ),
          SortingItem(
            id: "y1eng-w8-sort6",
            labelEn: "play",
            labelMy: "play",
            correctBucketEn: "Action Word (Verb)",
            correctBucketMy: "လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)",
          ),
          SortingItem(
            id: "y1eng-w8-sort7",
            labelEn: "lunch",
            labelMy: "lunch",
            correctBucketEn: "Naming Word (Noun)",
            correctBucketMy: "အမည်ပေးစကားလုံး (နာမ်)",
          ),
          SortingItem(
            id: "y1eng-w8-sort8",
            labelEn: "jump",
            labelMy: "jump",
            correctBucketEn: "Action Word (Verb)",
            correctBucketMy: "လုပ်ဆောင်မှုစကားလုံး (ကြိယာ)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w8-d4",
      dayNumber: 4,
      titleEn: "Reading: Writing About Our Day at School",
      titleMy: "စာဖတ်ခြင်း - ကျွန်ုပ်တို့၏ ကျောင်းနေ့ကို ရေးသားခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Writing About Our Day at School",
        titleMy: "ကျွန်ုပ်တို့၏ ကျောင်းနေ့ကို ရေးသားခြင်း",
        passageEn:
            "At the end of the school day, the teacher gave Moe Moe, Nay Chi, and Htet Htet a special task: write one true sentence about your day, using a naming word and an action word, with a capital letter at the start and a full stop at the end. Moe Moe thought about her morning and wrote: 'Moe Moe eats rice for breakfast.' She checked her sentence carefully -- it started with a capital letter, 'Moe Moe' and 'rice' were naming words, 'eats' was the action word, and it ended with a full stop. Nay Chi thought about break time and wrote: 'Nay Chi plays with a ball.' Her sentence had a naming word for a person, a naming word for a thing, and an action word too, all in the right order. Htet Htet thought about the walk to school and wrote: 'Htet Htet walks to school.' The teacher read all three sentences aloud and smiled. 'Every sentence here has a capital letter, a full stop, naming words, and an action word, all in the right order,' the teacher said. 'You have all learned to write a real sentence about your day.' Moe Moe, Nay Chi, and Htet Htet looked at each other proudly -- they had turned a simple part of their school day into three correct sentences, all by themselves.",
        passageMy:
            "ကျောင်းနေ့ အဆုံးသတ်ချိန်တွင် ဆရာမက မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့အား အထူးလုပ်ဆောင်ချက်တစ်ခု ပေးအပ်ခဲ့သည် - အမည်ပေးစကားလုံးတစ်လုံးနှင့် လုပ်ဆောင်မှုစကားလုံးတစ်လုံး သုံးပြီး၊ အစတွင် အက္ခရာအကြီးနှင့် အဆုံးတွင် ရပ်ချက်ပုဒ်ပါစေ၍ သင့်နေ့အကြောင်း စစ်မှန်သော ဝါကျတစ်ခု ရေးပါ။ မိုးမိုးသည် သူမ၏ မနက်ခင်းကို တွေးပြီး ဤသို့ ရေးခဲ့သည် - 'Moe Moe eats rice for breakfast.' သူမသည် သူမ၏ဝါကျကို သေချာစွာ စစ်ဆေးခဲ့သည် -- အက္ခရာအကြီးဖြင့် စတင်ခဲ့ပြီး 'Moe Moe' နှင့် 'rice' တို့သည် အမည်ပေးစကားလုံးများ ဖြစ်ကာ 'eats' သည် လုပ်ဆောင်မှုစကားလုံး ဖြစ်ပြီး ရပ်ချက်ပုဒ်ဖြင့် အဆုံးသတ်ခဲ့သည်။ နေချည်သည် အနားယူချိန်ကို တွေးပြီး ဤသို့ ရေးခဲ့သည် - 'Nay Chi plays with a ball.' သူမ၏ ဝါကျတွင် လူတစ်ဦးအတွက် အမည်ပေးစကားလုံးတစ်လုံး၊ အရာဝတ္ထုတစ်ခုအတွက် အမည်ပေးစကားလုံးတစ်လုံးနှင့် လုပ်ဆောင်မှုစကားလုံးတစ်လုံးပါ ပါဝင်ပြီး၊ အားလုံးကို မှန်ကန်သောအစီအစဉ်ဖြင့် စီထားခဲ့သည်။ ထက်ထက်သည် ကျောင်းသို့ လမ်းလျှောက်သွားချိန်ကို တွေးပြီး ဤသို့ ရေးခဲ့သည် - 'Htet Htet walks to school.' ဆရာမက ဝါကျသုံးခုလုံးကို အသံထွက်ဖတ်ပြီး ပြုံးလိုက်သည်။ 'ဒီနေရာက ဝါကျတိုင်းမှာ အက္ခရာအကြီး၊ ရပ်ချက်ပုဒ်၊ အမည်ပေးစကားလုံးများနှင့် လုပ်ဆောင်မှုစကားလုံးတစ်လုံးပါ အားလုံး မှန်ကန်သောအစီအစဉ်ဖြင့် ပါဝင်ပါတယ်' ဟု ဆရာမက ပြောခဲ့သည်။ 'သင်တို့ အားလုံး သင်တို့နေ့အကြောင်း စစ်မှန်သောဝါကျတစ်ခု ရေးတတ်ကြပါပြီ' ဟု ဆက်ပြောခဲ့သည်။ မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့သည် တစ်ဦးကိုတစ်ဦး ဂုဏ်ယူစွာ ကြည့်လိုက်ကြသည် -- သူတို့သည် ကျောင်းနေ့၏ ရိုးရှင်းသောအစိတ်အပိုင်းတစ်ခုကို သူတို့ကိုယ်တိုင် ဝါကျမှန်သုံးခုအဖြစ် ပြောင်းလဲပြခဲ့ကြပြီ ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What special task did the teacher give Moe Moe, Nay Chi, and Htet Htet?",
            questionMy:
                "ဆရာမက မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့အား ဘယ်လို အထူးလုပ်ဆောင်ချက် ပေးအပ်ခဲ့သနည်း။",
            optionsEn: [
              "Write one true sentence about their day, with a naming word, an action word, a capital letter, and a full stop",
              "Draw a picture of their day",
              "Sing a song about their day",
              "Count the hours in their day",
            ],
            optionsMy: [
              "အမည်ပေးစကားလုံး၊ လုပ်ဆောင်မှုစကားလုံး၊ အက္ခရာအကြီးနှင့် ရပ်ချက်ပုဒ်ပါသော သူတို့နေ့အကြောင်း စစ်မှန်သောဝါကျတစ်ခု ရေးရန်",
              "သူတို့နေ့ကို ပုံဆွဲရန်",
              "သူတို့နေ့အကြောင်း သီချင်းတစ်ပုဒ် ဆိုရန်",
              "သူတို့နေ့ရှိ နာရီများကို ရေတွက်ရန်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What sentence did Moe Moe write?",
            questionMy: "မိုးမိုးက ဘယ်ဝါကျ ရေးခဲ့သနည်း။",
            optionsEn: [
              "Moe Moe eats rice for breakfast.",
              "Moe Moe plays with a ball.",
              "Moe Moe walks to school.",
              "Moe Moe reads a book.",
            ],
            optionsMy: [
              "Moe Moe eats rice for breakfast.",
              "Moe Moe plays with a ball.",
              "Moe Moe walks to school.",
              "Moe Moe reads a book.",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "In Nay Chi's sentence, which word is the action word (verb)?",
            questionMy:
                "နေချည်၏ ဝါကျတွင် ဘယ်စကားလုံးသည် လုပ်ဆောင်မှုစကားလုံး (ကြိယာ) ဖြစ်သနည်း။",
            optionsEn: ["plays", "Nay Chi", "ball", "with"],
            optionsMy: ["plays", "Nay Chi", "ball", "with"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to the teacher, what did every sentence have, all in the right order?",
            questionMy:
                "ဆရာမ၏ အဆိုအရ ဝါကျတိုင်းတွင် မှန်ကန်သောအစီအစဉ်ဖြင့် ဘာများ ပါရှိခဲ့သနည်း။",
            optionsEn: [
              "A capital letter, a full stop, naming words, and an action word",
              "Only naming words",
              "Only a full stop",
              "Pictures and colors",
            ],
            optionsMy: [
              "အက္ခရာအကြီး၊ ရပ်ချက်ပုဒ်၊ အမည်ပေးစကားလုံးများနှင့် လုပ်ဆောင်မှုစကားလုံး",
              "အမည်ပေးစကားလုံးများသာ",
              "ရပ်ချက်ပုဒ်တစ်ခုတည်းသာ",
              "ပုံများနှင့် အရောင်များ",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y1-eng-w8-d5",
      dayNumber: 5,
      titleEn: "Week 8 Recap: Writing About My Day -- Term 2 Capstone",
      titleMy:
          "အပတ်စဉ် ၈ ပြန်လည်သုံးသပ်ခြင်း - ကျွန်ုပ်၏တစ်နေ့ကို ရေးသားခြင်း -- ဒုတိယနှစ်ဝက် အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which is a complete, correct sentence: 'moe moe reads' or 'Moe Moe reads a book.'?",
          questionMy:
              "ဘယ်ဟာက ပြည့်စုံသော မှန်ကန်သောဝါကျ ဖြစ်သနည်း - 'moe moe reads' (သို့) 'Moe Moe reads a book.'",
          optionsEn: [
            "Moe Moe reads a book.",
            "moe moe reads",
            "Both are correct",
            "Neither is correct",
          ],
          optionsMy: [
            "Moe Moe reads a book.",
            "moe moe reads",
            "နှစ်ခုစလုံး မှန်ကန်သည်",
            "နှစ်ခုစလုံး မှားနေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In \"Nay Chi plays with a ball,\" which word is the naming word (noun) for a thing?",
          questionMy:
              "\"Nay Chi plays with a ball\" တွင် အရာဝတ္ထုတစ်ခုကို အမည်ပေးသော အမည်ပေးစကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["ball", "plays", "with", "Nay Chi"],
          optionsMy: ["ball", "plays", "with", "Nay Chi"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In \"Htet Htet walks to school,\" which word is the action word (verb)?",
          questionMy:
              "\"Htet Htet walks to school\" တွင် လုပ်ဆောင်မှုစကားလုံး (ကြိယာ) မှာ အဘယ်နည်း။",
          optionsEn: ["walks", "Htet Htet", "to", "school"],
          optionsMy: ["walks", "Htet Htet", "to", "school"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, what did the teacher say every sentence needed, all in the right order?",
          questionMy:
              "စာဖတ်ခန်းတွင် ဆရာမက ဝါကျတိုင်းတွင် မှန်ကန်သောအစီအစဉ်ဖြင့် ဘာလိုအပ်ကြောင်း ပြောခဲ့သနည်း။",
          optionsEn: [
            "A capital letter, a full stop, naming words, and an action word",
            "Only pictures",
            "Only naming words",
            "Only full stops",
          ],
          optionsMy: [
            "အက္ခရာအကြီး၊ ရပ်ချက်ပုဒ်၊ အမည်ပေးစကားလုံးများနှင့် လုပ်ဆောင်မှုစကားလုံး",
            "ပုံများသာ",
            "အမည်ပေးစကားလုံးများသာ",
            "ရပ်ချက်ပုဒ်များသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Looking back at this whole term, what three skills did Moe Moe, Nay Chi, and Htet Htet combine to write about their day?",
          questionMy:
              "ဤနှစ်ဝက်တစ်ခုလုံးကို ပြန်ကြည့်လျှင် မိုးမိုး၊ နေချည်နှင့် ထက်ထက်တို့ သူတို့၏နေ့ကို ရေးသားရန် ဘာကျွမ်းကျင်မှုသုံးခု ပေါင်းစပ်အသုံးပြုခဲ့ကြသနည်း။",
          optionsEn: [
            "Capital letters and full stops, naming words, and action words -- all in the right word order",
            "Only drawing pictures",
            "Only counting numbers",
            "Only singing songs",
          ],
          optionsMy: [
            "အက္ခရာအကြီးနှင့် ရပ်ချက်ပုဒ်များ၊ အမည်ပေးစကားလုံးများနှင့် လုပ်ဆောင်မှုစကားလုံးများ -- မှန်ကန်သောစကားလုံးအစီအစဉ်ဖြင့်",
            "ပုံများ ဆွဲခြင်းသာ",
            "ဂဏန်းများ ရေတွက်ခြင်းသာ",
            "သီချင်းများ ဆိုခြင်းသာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

/// Term 2: "Building Simple Sentences" (Weeks 5-8) follows directly on
/// from Year 1 English's Term 1 (weeks 1-4, sounds/letters foundations),
/// building toward genuine sentence-writing: Week 5 establishes the
/// three mechanical rules every sentence needs (capital letter, full
/// stop, word order); Week 6 introduces naming words (nouns) for
/// people, places, and things; Week 7 introduces action words (verbs)
/// in the simple present tense; Week 8 is the capstone, combining all
/// three skills into one continuous real-world story in which Moe Moe,
/// Nay Chi, and Htet Htet each write a correct sentence about their own
/// school day.
const CourseTermDef _year1EnglishTerm2 = CourseTermDef(
  id: "course-year1-english-t2",
  termNumber: 2,
  titleEn: "Building Simple Sentences",
  titleMy: "ရိုးရှင်းသော ဝါကျများ တည်ဆောက်ခြင်း",
  certificateTitleEn: "Building Simple Sentences",
  certificateTitleMy: "ရိုးရှင်းသော ဝါကျများ တည်ဆောက်ခြင်း",
  weeks: [
    _year1EnglishWeek5,
    _year1EnglishWeek6,
    _year1EnglishWeek7,
    _year1EnglishWeek8,
  ],
);
