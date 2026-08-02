const CourseWeekDef _secondary2MathematicsWeek33 = CourseWeekDef(
  id: "course-secondary2-mathematics-w33",
  weekNumber: 33,
  titleEn: "Theoretical Probability",
  titleMy: "သီအိုရီအရ ဖြစ်နိုင်ခြေ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w33-d1",
      dayNumber: 1,
      titleEn: "Sample Spaces and Mutually Exclusive Events",
      titleMy: "Sample Spaces နှင့် အပြန်အလှန်ဖယ်ကျဉ်သော အဖြစ်အပျက်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A fair six-sided die is rolled. What is the probability of rolling a 4?",
          questionMy:
              "ဘက်ခြောက်ဘက်ရှိ တံစားတစ်လုံးကို လှိမ့်ပါသည်။ 4 ရမည့်ဖြစ်နိုင်ခြေမှာ အဘယ်နည်း။",
          optionsEn: ["1/6", "1/4", "4/6", "1/2"],
          optionsMy: ["1/6", "1/4", "4/6", "1/2"],
          correctIndex: 0,
          hintsEn: [
            "Probability = number of favourable outcomes ÷ total number of outcomes.",
            "There is 1 way to roll a 4 out of 6 possible outcomes, so 1/6.",
          ],
          hintsMy: [
            "ဖြစ်နိုင်ခြေ = နှစ်သက်ဖွယ်ရလဒ်အရေအတွက် ÷ ရလဒ်စုစုပေါင်းအရေအတွက်။",
            "ရလဒ်ဖြစ်နိုင်ခြေ 6 ခုအနက် 4 ရနိုင်ချေ 1 ခုသာရှိသဖြင့် 1/6 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A bag has 3 red balls and 7 blue balls. What is the probability of picking a red ball?",
          questionMy:
              "အိတ်တစ်လုံးတွင် အနီရောင်ဘောလုံး 3 လုံးနှင့် အပြာရောင်ဘောလုံး 7 လုံး ရှိပါသည်။ အနီရောင်ဘောလုံး ရွေးနိုင်ခြေမှာ အဘယ်နည်း။",
          optionsEn: ["3/10", "7/10", "3/7", "1/3"],
          optionsMy: ["3/10", "7/10", "3/7", "1/3"],
          correctIndex: 0,
          hintsEn: [
            "Total balls = 3 + 7 = 10.",
            "Probability of red = 3 ÷ 10 = 3/10.",
          ],
          hintsMy: [
            "ဘောလုံးစုစုပေါင်း = 3 + 7 = 10။",
            "အနီရောင် ဖြစ်နိုင်ခြေ = 3 ÷ 10 = 3/10 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Two events are mutually exclusive if...",
          questionMy:
              "အဖြစ်အပျက်နှစ်ခုသည် မည်သည့်အခါ အပြန်အလှန်ဖယ်ကျဉ်သည်ဟု ဆိုနိုင်သနည်း...",
          optionsEn: [
            "They cannot both happen at the same time",
            "They always happen together",
            "They have the same probability",
            "They are unrelated",
          ],
          optionsMy: [
            "နှစ်ခုစလုံး တစ်ချိန်တည်းတွင် ဖြစ်ပျက်၍မရသောကြောင့်",
            "အမြဲတမ်း အတူတကွ ဖြစ်ပျက်သောကြောင့်",
            "ဖြစ်နိုင်ခြေတူညီသောကြောင့်",
            "မသက်ဆိုင်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about rolling a die: can you roll both a 2 AND a 5 on the same single roll?",
            "Mutually exclusive events share no common outcomes — only one can occur per trial.",
          ],
          hintsMy: [
            "တံစားလှိမ့်ခြင်းကို စဉ်းစားပါ — တစ်ကြိမ်တည်းတွင် 2 နှင့် 5 ကို အတူတကွ ရနိုင်ပါသလား။",
            "အပြန်အလှန်ဖယ်ကျဉ်သော အဖြစ်အပျက်များသည် ဘုံရလဒ်မရှိချေ — စမ်းသပ်မှုတစ်ခုလျှင် တစ်ခုသာ ဖြစ်ပျက်နိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "The sample space for tossing two coins is listed as {HH, HT, TH, TT}. What is the probability of getting exactly one head?",
          questionMy:
              "အမြှုပ်နှစ်ခု ပစ်ချရာတွင် Sample Space သည် {HH, HT, TH, TT} ဟု ဖော်ပြထားပါသည်။ ခေါင်း တစ်ခုတည်း အတိအကျ ရမည့်ဖြစ်နိုင်ခြေမှာ အဘယ်နည်း။",
          optionsEn: ["1/2", "1/4", "3/4", "1"],
          optionsMy: ["1/2", "1/4", "3/4", "1"],
          correctIndex: 0,
          hintsEn: [
            "Look at the 4 outcomes and count how many have exactly one H.",
            "HT and TH have exactly one head — that's 2 out of 4 = 1/2.",
          ],
          hintsMy: [
            "ရလဒ် 4 ခုကို ကြည့်ပြီး H တစ်ခုတည်းရှိသည့် ရလဒ်အရေအတွက်ကို ရေတွက်ပါ။",
            "HT နှင့် TH တွင် ခေါင်းတစ်ခုတည်း အတိအကျရှိသည် — ၄ ခုအနက် ၂ ခုဖြစ်၍ 1/2 ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w33-d2",
      dayNumber: 2,
      titleEn: "Probability Vocabulary",
      titleMy: "ဖြစ်နိုင်ခြေ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2m-w33-dm1",
          termEn: "Probability",
          termMy: "ဖြစ်နိုင်ခြေ (Probability)",
          matchEn:
              "A measure of how likely an event is to happen, between 0 and 1",
          matchMy: "0 နှင့် 1 ကြားရှိ အဖြစ်အပျက်တစ်ခု ဖြစ်နိုင်ခြေအတိုင်းအတာ",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2m-w33-dm2",
          termEn: "Sample Space",
          termMy: "Sample Space (ဖြစ်နိုင်သောရလဒ်စု)",
          matchEn: "The set of all possible outcomes of an experiment",
          matchMy: "စမ်းသပ်မှုတစ်ခု၏ ဖြစ်နိုင်သော ရလဒ်အားလုံး၏ အစု",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2m-w33-dm3",
          termEn: "Mutually Exclusive",
          termMy: "အပြန်အလှန်ဖယ်ကျဉ်သော (Mutually Exclusive)",
          matchEn: "Events that cannot happen at the same time",
          matchMy: "တစ်ချိန်တည်းတွင် ဖြစ်ပျက်၍မရသော အဖြစ်အပျက်များ",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2m-w33-dm4",
          termEn: "Venn Diagram",
          termMy: "Venn ပုံ (Venn Diagram)",
          matchEn:
              "A diagram using overlapping circles to show relationships between sets",
          matchMy:
              "အစုများအကြား ဆက်စပ်မှုကို ပြသရန် ထပ်နေသော စက်ဝိုင်းများသုံးထားသောပုံ",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2m-w33-dm5",
          termEn: "Favourable Outcome",
          termMy: "နှစ်သက်ဖွယ်ရလဒ် (Favourable Outcome)",
          matchEn: "An outcome that matches the event you are looking for",
          matchMy: "ရှာဖွေနေသော အဖြစ်အပျက်နှင့် ကိုက်ညီသော ရလဒ်",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2m-w33-dm6",
          termEn: "Outcome",
          termMy: "ရလဒ် (Outcome)",
          matchEn: "A single possible result of an experiment",
          matchMy: "စမ်းသပ်မှုတစ်ခု၏ ဖြစ်နိုင်သော ရလဒ်တစ်ခုတည်း",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w33-d3",
      dayNumber: 3,
      titleEn: "Sorting Possible or Impossible Events",
      titleMy:
          "ဖြစ်နိုင်သော သို့မဟုတ် ဖြစ်မနိုင်သော အဖြစ်အပျက်များကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Mutually Exclusive", "Not Mutually Exclusive"],
        bucketsMy: ["အပြန်အလှန်ဖယ်ကျဉ်သည်", "အပြန်အလှန်ဖယ်ကျဉ်ခြင်းမရှိချေ"],
        items: [
          SortingItem(
            id: "s2m-w33-sort1",
            labelEn: "Rolling an even number or an odd number on one die",
            labelMy: "တံစားတစ်လုံးတွင် စုံကိန်း သို့မဟုတ် မကိန်း ရခြင်း",
            correctBucketEn: "Mutually Exclusive",
            correctBucketMy: "အပြန်အလှန်ဖယ်ကျဉ်သည်",
          ),
          SortingItem(
            id: "s2m-w33-sort2",
            labelEn: "Drawing a red card or a king from a deck",
            labelMy: "ကတ်ထုတ်ရာတွင် အနီရောင် သို့မဟုတ် ကတ်ဘုရင် ထွက်ခြင်း",
            correctBucketEn: "Not Mutually Exclusive",
            correctBucketMy: "အပြန်အလှန်ဖယ်ကျဉ်ခြင်းမရှိချေ",
          ),
          SortingItem(
            id: "s2m-w33-sort3",
            labelEn: "Tossing heads or tails on one coin",
            labelMy: "အမြှုပ်တစ်ခုတွင် ခေါင်း သို့မဟုတ် နောက်ကျောရခြင်း",
            correctBucketEn: "Mutually Exclusive",
            correctBucketMy: "အပြန်အလှန်ဖယ်ကျဉ်သည်",
          ),
          SortingItem(
            id: "s2m-w33-sort4",
            labelEn: "Being a student and being a football player",
            labelMy: "ကျောင်းသားဖြစ်ခြင်းနှင့် ဘောလုံးသမားဖြစ်ခြင်း",
            correctBucketEn: "Not Mutually Exclusive",
            correctBucketMy: "အပြန်အလှန်ဖယ်ကျဉ်ခြင်းမရှိချေ",
          ),
          SortingItem(
            id: "s2m-w33-sort5",
            labelEn: "Rolling a 1 or a 6 on one die",
            labelMy: "တံစားတစ်လုံးတွင် 1 သို့မဟုတ် 6 ရခြင်း",
            correctBucketEn: "Mutually Exclusive",
            correctBucketMy: "အပြန်အလှန်ဖယ်ကျဉ်သည်",
          ),
          SortingItem(
            id: "s2m-w33-sort6",
            labelEn: "Liking maths and liking science",
            labelMy: "သင်္ချာကြိုက်ခြင်းနှင့် သိပ္ပံကြိုက်ခြင်း",
            correctBucketEn: "Not Mutually Exclusive",
            correctBucketMy: "အပြန်အလှန်ဖယ်ကျဉ်ခြင်းမရှိချေ",
          ),
          SortingItem(
            id: "s2m-w33-sort7",
            labelEn: "Picking a red ball or a blue ball from a bag in one pick",
            labelMy:
                "အိတ်မှ တစ်ကြိမ်ထုတ်ရာတွင် အနီရောင် သို့မဟုတ် အပြာရောင်ဘောလုံး ရခြင်း",
            correctBucketEn: "Mutually Exclusive",
            correctBucketMy: "အပြန်အလှန်ဖယ်ကျဉ်သည်",
          ),
          SortingItem(
            id: "s2m-w33-sort8",
            labelEn: "Being tall and being good at basketball",
            labelMy: "အရပ်မြင့်ခြင်းနှင့် ဘတ်စကက်ဘောကောင်းခြင်း",
            correctBucketEn: "Not Mutually Exclusive",
            correctBucketMy: "အပြန်အလှန်ဖယ်ကျဉ်ခြင်းမရှိချေ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w33-d4",
      dayNumber: 4,
      titleEn: "Reading: Mya's Card Game",
      titleMy: "စာဖတ်ခြင်း — မြ၏ ကတ်ဂိမ်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Mya's Card Game",
        titleMy: "မြ၏ ကတ်ဂိမ်း",
        passageEn:
            "Mya was teaching her younger brother about probability using a standard deck of 52 playing cards. She explained that the sample space for drawing one card contained all 52 cards, each equally likely to be drawn. She asked him: what is the probability of drawing a heart? Since there are 13 hearts in the deck, the probability is 13/52, which simplifies to 1/4. Next, she asked about drawing a king or a queen. Since there are 4 kings and 4 queens, and a card cannot be both a king and a queen at once, these events are mutually exclusive, so she added the probabilities: 4/52 + 4/52 = 8/52, which simplifies to 2/13. Her brother then asked about drawing a heart or a king. Since the king of hearts is both a heart and a king, these events are not mutually exclusive, so Mya explained they would need to subtract the overlap to avoid double-counting — a rule for a later lesson.",
        passageMy:
            "မြသည် ကတ်ပုံမှန် 52 ချပ်ဖြင့် သူမ၏ညီလေးကို ဖြစ်နိုင်ခြေအကြောင်း သင်ပြနေခဲ့သည်။ ကတ်တစ်ချပ် ထုတ်ရန် Sample Space တွင် ကတ် 52 ချပ်လုံး ပါဝင်ပြီး တစ်ချပ်စီသည် ထုတ်ရနိုင်ခြေ တူညီကြောင်း ရှင်းပြခဲ့သည်။ သူမက ညီလေးအား မေးခဲ့သည် — ကျက်သရေထုတ်ရန် ဖြစ်နိုင်ခြေမှာ အဘယ်နည်း။ ကတ်ပုံတွင် ကျက်သရေ 13 ချပ်ရှိသောကြောင့် ဖြစ်နိုင်ခြေသည် 13/52 ဖြစ်ပြီး ရိုးရှင်းအောင်ပြုလုပ်ပါက 1/4 ဖြစ်သည်။ ထို့နောက် သူသည် ဘုရင် သို့မဟုတ် မိဖုရားထုတ်ရန်အကြောင်း မေးခဲ့သည်။ ဘုရင် 4 ချပ်နှင့် မိဖုရား 4 ချပ်ရှိပြီး ကတ်တစ်ချပ်သည် ဘုရင်နှင့် မိဖုရား တစ်ပြိုင်နက် မဖြစ်နိုင်သောကြောင့် ဤအဖြစ်အပျက်များသည် အပြန်အလှန်ဖယ်ကျဉ်ကြသည် — ထို့ကြောင့် သူမသည် ဖြစ်နိုင်ခြေများကို ပေါင်းလိုက်သည် — 4/52 + 4/52 = 8/52 ဖြစ်ပြီး ရိုးရှင်းအောင်ပြုလုပ်ပါက 2/13 ဖြစ်သည်။ ညီလေးက ကျက်သရေ သို့မဟုတ် ဘုရင်ထုတ်ရန်အကြောင်း ထပ်မံမေးခဲ့သည်။ ကျက်သရေဘုရင်သည် ကျက်သရေလည်းဖြစ်၊ ဘုရင်လည်းဖြစ်သောကြောင့် ဤအဖြစ်အပျက်များသည် အပြန်အလှန်ဖယ်ကျဉ်ခြင်း မရှိချေ — ထို့ကြောင့် နှစ်ကြိမ်ရေတွက်မိခြင်းကို ရှောင်ရှားရန် ထပ်နေသောအပိုင်းကို နှုတ်ရမည်ဟု မြက ရှင်းပြခဲ့သည် — နောက်သင်ခန်းစာတစ်ခုအတွက် စည်းမျဉ်းဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What was the probability of drawing a heart?",
            questionMy: "ကျက်သရေထုတ်ရန် ဖြစ်နိုင်ခြေမှာ အဘယ်နည်း။",
            optionsEn: ["1/4", "1/13", "1/52", "13/4"],
            optionsMy: ["1/4", "1/13", "1/52", "13/4"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What was the probability of drawing a king or a queen?",
            questionMy:
                "ဘုရင် သို့မဟုတ် မိဖုရားထုတ်ရန် ဖြစ်နိုင်ခြေမှာ အဘယ်နည်း။",
            optionsEn: ["2/13", "1/4", "8/52", "4/52"],
            optionsMy: ["2/13", "1/4", "8/52", "4/52"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Why were 'king or queen' events mutually exclusive?",
            questionMy:
                "'ဘုရင် သို့မဟုတ် မိဖုရား' အဖြစ်အပျက်များသည် အဘယ်ကြောင့် အပြန်အလှန်ဖယ်ကျဉ်ကြသနည်း။",
            optionsEn: [
              "A card cannot be both a king and a queen at once",
              "Kings and queens look the same",
              "There are equal numbers of each",
              "They are both red cards",
            ],
            optionsMy: [
              "ကတ်တစ်ချပ်သည် ဘုရင်နှင့် မိဖုရား တစ်ပြိုင်နက် မဖြစ်နိုင်သောကြောင့်",
              "ဘုရင်နှင့် မိဖုရားတို့သည် အသွင်တူညီသောကြောင့်",
              "အရေအတွက် တူညီသောကြောင့်",
              "နှစ်ခုစလုံး အနီရောင်ကတ်ဖြစ်သောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why were 'heart or king' events NOT mutually exclusive?",
            questionMy:
                "'ကျက်သရေ သို့မဟုတ် ဘုရင်' အဖြစ်အပျက်များသည် အဘယ်ကြောင့် အပြန်အလှန်ဖယ်ကျဉ်ခြင်း မရှိချေသနည်း။",
            optionsEn: [
              "The king of hearts belongs to both groups",
              "Hearts and kings are unrelated",
              "There is no king of hearts in a deck",
              "Hearts always outnumber kings",
            ],
            optionsMy: [
              "ကျက်သရေဘုရင်သည် အုပ်စုနှစ်ခုလုံးတွင် ပါဝင်သောကြောင့်",
              "ကျက်သရေနှင့် ဘုရင်သည် မသက်ဆိုင်သောကြောင့်",
              "ကတ်ပုံတွင် ကျက်သရေဘုရင် မရှိသောကြောင့်",
              "ကျက်သရေသည် ဘုရင်ထက် အမြဲပိုများသောကြောင့်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w33-d5",
      dayNumber: 5,
      titleEn: "Theoretical Probability Recap Quiz",
      titleMy: "သီအိုရီအရ ဖြစ်နိုင်ခြေ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Probability is calculated as...",
          questionMy: "ဖြစ်နိုင်ခြေကို မည်သို့ တွက်ချက်သနည်း...",
          optionsEn: [
            "Favourable outcomes ÷ total outcomes",
            "Total outcomes ÷ favourable outcomes",
            "Favourable outcomes × total outcomes",
            "Favourable outcomes + total outcomes",
          ],
          optionsMy: [
            "နှစ်သက်ဖွယ်ရလဒ် ÷ ရလဒ်စုစုပေါင်း",
            "ရလဒ်စုစုပေါင်း ÷ နှစ်သက်ဖွယ်ရလဒ်",
            "နှစ်သက်ဖွယ်ရလဒ် × ရလဒ်စုစုပေါင်း",
            "နှစ်သက်ဖွယ်ရလဒ် + ရလဒ်စုစုပေါင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A fair coin is tossed. What is the probability of getting tails?",
          questionMy:
              "မျှတသော အမြှုပ်တစ်ခုကို ပစ်ချပါသည်။ နောက်ကျော ရမည့်ဖြစ်နိုင်ခြေမှာ အဘယ်နည်း။",
          optionsEn: ["1/2", "1/4", "1", "0"],
          optionsMy: ["1/2", "1/4", "1", "0"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A bag has 4 green balls and 6 yellow balls. What is the probability of picking green?",
          questionMy:
              "အိတ်တစ်လုံးတွင် အစိမ်းရောင်ဘောလုံး 4 လုံးနှင့် အဝါရောင်ဘောလုံး 6 လုံး ရှိပါသည်။ အစိမ်းရောင် ရွေးနိုင်ခြေမှာ အဘယ်နည်း။",
          optionsEn: ["4/10", "6/10", "4/6", "1/4"],
          optionsMy: ["4/10", "6/10", "4/6", "1/4"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Rolling a 3 or rolling an even number on one die — are these mutually exclusive?",
          questionMy:
              "တံစားတစ်လုံးတွင် 3 ရခြင်း သို့မဟုတ် စုံကိန်း ရခြင်း — ဤအဖြစ်အပျက်များသည် အပြန်အလှန်ဖယ်ကျဉ်ကြသလား။",
          optionsEn: [
            "Yes — 3 is odd, so it cannot also be even",
            "No — they can happen together",
            "Only sometimes",
            "Cannot be determined",
          ],
          optionsMy: [
            "ဟုတ်သည် — 3 သည် မကိန်းဖြစ်၍ စုံကိန်းလည်း မဖြစ်နိုင်ချေ",
            "မဟုတ်ချေ — အတူတကွ ဖြစ်ပျက်နိုင်သည်",
            "တစ်ခါတစ်ရံသာ",
            "ဆုံးဖြတ်၍မရ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Mya's card game story, what was the probability of drawing a king or a queen?",
          questionMy:
              "မြ၏ ကတ်ဂိမ်းဇာတ်လမ်းတွင် ဘုရင် သို့မဟုတ် မိဖုရားထုတ်ရန် ဖြစ်နိုင်ခြေမှာ အဘယ်နည်း။",
          optionsEn: ["2/13", "1/4", "1/13", "1/2"],
          optionsMy: ["2/13", "1/4", "1/13", "1/2"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek34 = CourseWeekDef(
  id: "course-secondary2-mathematics-w34",
  weekNumber: 34,
  titleEn: "Experimental Probability",
  titleMy: "စမ်းသပ်မှုအရ ဖြစ်နိုင်ခြေ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w34-d1",
      dayNumber: 1,
      titleEn: "Relative Frequency and Trials",
      titleMy: "ဆွေးနွေးမှုအကြိမ်ရေနှင့် စမ်းသပ်မှုများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A coin is tossed 50 times and lands on heads 28 times. What is the relative frequency of heads?",
          questionMy:
              "အမြှုပ်တစ်ခုကို 50 ကြိမ် ပစ်ချရာ ခေါင်း 28 ကြိမ် ကျရောက်ပါသည်။ ခေါင်း၏ ဆွေးနွေးမှုအကြိမ်ရေမှာ အဘယ်နည်း။",
          optionsEn: ["28/50 (0.56)", "50/28", "22/50", "1/2"],
          optionsMy: ["28/50 (0.56)", "50/28", "22/50", "1/2"],
          correctIndex: 0,
          hintsEn: [
            "Relative frequency = number of times the event happened ÷ total number of trials.",
            "28 ÷ 50 = 0.56, or 28/50.",
          ],
          hintsMy: [
            "ဆွေးနွေးမှုအကြိမ်ရေ = အဖြစ်အပျက်ဖြစ်ပျက်သည့်အကြိမ်ရေ ÷ စမ်းသပ်မှုစုစုပေါင်းအကြိမ်ရေ။",
            "28 ÷ 50 = 0.56 သို့မဟုတ် 28/50 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A die is rolled 60 times and lands on 6 a total of 8 times. What is the relative frequency of rolling a 6?",
          questionMy:
              "တံစားတစ်လုံးကို 60 ကြိမ် လှိမ့်ရာ 6 သည် 8 ကြိမ် ကျရောက်ပါသည်။ 6 ကျရောက်မည့် ဆွေးနွေးမှုအကြိမ်ရေမှာ အဘယ်နည်း။",
          optionsEn: ["8/60 (about 0.13)", "60/8", "6/60", "1/6"],
          optionsMy: ["8/60 (ခန့်မှန်း 0.13)", "60/8", "6/60", "1/6"],
          correctIndex: 0,
          hintsEn: [
            "Relative frequency = number of times 6 occurred ÷ total rolls.",
            "8 ÷ 60 ≈ 0.13.",
          ],
          hintsMy: [
            "ဆွေးနွေးမှုအကြိမ်ရေ = 6 ကျရောက်သည့်အကြိမ်ရေ ÷ လှိမ့်စုစုပေါင်းအကြိမ်ရေ။",
            "8 ÷ 60 ≈ 0.13 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "As the number of trials increases, relative frequency generally...",
          questionMy:
              "စမ်းသပ်မှုအကြိမ်ရေ တိုးလာသည်နှင့်အမျှ ဆွေးနွေးမှုအကြိမ်ရေသည် ယေဘုယျအားဖြင့်...",
          optionsEn: [
            "Gets closer to the theoretical probability",
            "Moves further from theoretical probability",
            "Stays exactly the same",
            "Becomes zero",
          ],
          optionsMy: [
            "သီအိုရီအရ ဖြစ်နိုင်ခြေနှင့် ပိုနီးကပ်လာသည်",
            "သီအိုရီအရ ဖြစ်နိုင်ခြေမှ ပိုဝေးသွားသည်",
            "အတိအကျ မပြောင်းလဲဘဲ ရှိနေသည်",
            "သုညဖြစ်သွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the Law of Large Numbers — more trials give a more reliable estimate.",
            "With only a few trials, results can look random and far from the true probability.",
          ],
          hintsMy: [
            "ဤသည်ကို ကိန်းအများကြီးဥပဒေ (Law of Large Numbers) ဟု ခေါ်သည် — စမ်းသပ်မှု ပိုများလေ ခန့်မှန်းချက် ပိုယုံကြည်စိတ်ချရလေဖြစ်သည်။",
            "စမ်းသပ်မှု နည်းနည်းသာလုပ်ပါက ရလဒ်များသည် ကျပန်းကဲ့သို့ဖြစ်ပြီး အစစ်အမှန်ဖြစ်နိုင်ခြေနှင့် ဝေးနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A spinner is tested 100 times: red comes up 52 times, blue comes up 48 times. What is the relative frequency of blue?",
          questionMy:
              "လည်စက်တစ်ခုကို 100 ကြိမ် စမ်းသပ်ရာ အနီရောင် 52 ကြိမ်၊ အပြာရောင် 48 ကြိမ် ကျရောက်ပါသည်။ အပြာရောင်၏ ဆွေးနွေးမှုအကြိမ်ရေမှာ အဘယ်နည်း။",
          optionsEn: ["48/100 (0.48)", "52/100", "48/52", "100/48"],
          optionsMy: ["48/100 (0.48)", "52/100", "48/52", "100/48"],
          correctIndex: 0,
          hintsEn: [
            "Relative frequency = number of times blue occurred ÷ total spins.",
            "48 ÷ 100 = 0.48.",
          ],
          hintsMy: [
            "ဆွေးနွေးမှုအကြိမ်ရေ = အပြာရောင် ကျရောက်သည့်အကြိမ်ရေ ÷ လှည့်စုစုပေါင်းအကြိမ်ရေ။",
            "48 ÷ 100 = 0.48 ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w34-d2",
      dayNumber: 2,
      titleEn: "Experimental Probability Vocabulary",
      titleMy: "စမ်းသပ်မှုအရ ဖြစ်နိုင်ခြေ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2m-w34-dm1",
          termEn: "Relative Frequency",
          termMy: "ဆွေးနွေးမှုအကြိမ်ရေ (Relative Frequency)",
          matchEn:
              "The number of times an event happens divided by the total trials",
          matchMy:
              "အဖြစ်အပျက်တစ်ခု ဖြစ်ပျက်သည့်အကြိမ်ရေကို စစ်ဆေးမှုစုစုပေါင်းဖြင့် စားလိုက်သောတန်ဖိုး",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2m-w34-dm2",
          termEn: "Trial",
          termMy: "စမ်းသပ်မှု (Trial)",
          matchEn: "A single repetition of an experiment",
          matchMy: "စမ်းသပ်မှုတစ်ခု၏ တစ်ကြိမ်လုပ်ဆောင်ခြင်း",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2m-w34-dm3",
          termEn: "Experimental Probability",
          termMy: "စမ်းသပ်မှုအရ ဖြစ်နိုင်ခြေ (Experimental Probability)",
          matchEn:
              "Probability estimated from actual results of repeated trials",
          matchMy:
              "ထပ်ခါထပ်ခါ စမ်းသပ်မှု၏ အမှန်တကယ်ရလဒ်များမှ ခန့်မှန်းသော ဖြစ်နိုင်ခြေ",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2m-w34-dm4",
          termEn: "Law of Large Numbers",
          termMy: "ကိန်းအများကြီးဥပဒေ (Law of Large Numbers)",
          matchEn:
              "The rule that more trials bring experimental results closer to theoretical probability",
          matchMy:
              "စမ်းသပ်မှု ပိုများလေ စမ်းသပ်မှုရလဒ်များ သီအိုရီအရ ဖြစ်နိုင်ခြေနှင့် ပိုနီးကပ်လေဖြစ်သည့် စည်းမျဉ်း",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2m-w34-dm5",
          termEn: "Bias",
          termMy: "မမျှတမှု (Bias)",
          matchEn:
              "When an object or experiment does not give equally likely outcomes",
          matchMy:
              "အရာဝတ္ထု သို့မဟုတ် စမ်းသပ်မှုတစ်ခုသည် ရလဒ်များကို တူညီစွာ မပေးသည့်အခြေအနေ",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2m-w34-dm6",
          termEn: "Estimate",
          termMy: "ခန့်မှန်းခြင်း (Estimate)",
          matchEn: "An approximate value based on available data",
          matchMy: "ရရှိနိုင်သော အချက်အလက်ကို အခြေခံသော ခန့်မှန်းတန်ဖိုး",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w34-d3",
      dayNumber: 3,
      titleEn: "Sorting Theoretical or Experimental Probability",
      titleMy: "သီအိုရီအရ သို့မဟုတ် စမ်းသပ်မှုအရ ဖြစ်နိုင်ခြေကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Theoretical Probability", "Experimental Probability"],
        bucketsMy: ["သီအိုရီအရ ဖြစ်နိုင်ခြေ", "စမ်းသပ်မှုအရ ဖြစ်နိုင်ခြေ"],
        items: [
          SortingItem(
            id: "s2m-w34-sort1",
            labelEn: "Calculated using logical reasoning before any trials",
            labelMy: "စမ်းသပ်မှု မလုပ်မီ ယုတ္တိဗေဒဆင်ခြင်ဖြင့် တွက်ချက်ခြင်း",
            correctBucketEn: "Theoretical Probability",
            correctBucketMy: "သီအိုရီအရ ဖြစ်နိုင်ခြေ",
          ),
          SortingItem(
            id: "s2m-w34-sort2",
            labelEn:
                "Found by actually rolling a die 100 times and counting results",
            labelMy: "တံစားကို အမှန်တကယ် 100 ကြိမ်လှိမ့်ပြီး ရလဒ်ရေတွက်ခြင်း",
            correctBucketEn: "Experimental Probability",
            correctBucketMy: "စမ်းသပ်မှုအရ ဖြစ်နိုင်ခြေ",
          ),
          SortingItem(
            id: "s2m-w34-sort3",
            labelEn: "1/6 chance of rolling a specific number on a fair die",
            labelMy: "မျှတသော တံစားပေါ်တွင် သတ်မှတ်ဂဏန်း ရနိုင်ခြေ 1/6",
            correctBucketEn: "Theoretical Probability",
            correctBucketMy: "သီအိုရီအရ ဖြစ်နိုင်ခြေ",
          ),
          SortingItem(
            id: "s2m-w34-sort4",
            labelEn: "Relative frequency from 50 coin tosses",
            labelMy: "အမြှုပ်ပစ်ချမှု 50 ကြိမ်မှ ဆွေးနွေးမှုအကြိမ်ရေ",
            correctBucketEn: "Experimental Probability",
            correctBucketMy: "စမ်းသပ်မှုအရ ဖြစ်နိုင်ခြေ",
          ),
          SortingItem(
            id: "s2m-w34-sort5",
            labelEn: "13/52 chance of drawing a heart from a deck",
            labelMy: "ကတ်ပုံမှ ကျက်သရေရနိုင်ခြေ 13/52",
            correctBucketEn: "Theoretical Probability",
            correctBucketMy: "သီအိုရီအရ ဖြစ်နိုင်ခြေ",
          ),
          SortingItem(
            id: "s2m-w34-sort6",
            labelEn: "Recording spinner results over 200 spins",
            labelMy: "လည်စက် 200 ကြိမ်၏ ရလဒ်များကို မှတ်တမ်းတင်ခြင်း",
            correctBucketEn: "Experimental Probability",
            correctBucketMy: "စမ်းသပ်မှုအရ ဖြစ်နိုင်ခြေ",
          ),
          SortingItem(
            id: "s2m-w34-sort7",
            labelEn: "Based on counting outcomes in a sample space",
            labelMy: "Sample Space တွင် ရလဒ်ရေတွက်ခြင်းကို အခြေခံသည်",
            correctBucketEn: "Theoretical Probability",
            correctBucketMy: "သီအိုရီအရ ဖြစ်နိုင်ခြေ",
          ),
          SortingItem(
            id: "s2m-w34-sort8",
            labelEn: "Based on data collected from real trials",
            labelMy:
                "အမှန်တကယ် စမ်းသပ်မှုမှ စုဆောင်းရရှိသော အချက်အလက်ကို အခြေခံသည်",
            correctBucketEn: "Experimental Probability",
            correctBucketMy: "စမ်းသပ်မှုအရ ဖြစ်နိုင်ခြေ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w34-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su Tests a Coin",
      titleMy: "စာဖတ်ခြင်း — စုစု အမြှုပ်စမ်းသပ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su Tests a Coin",
        titleMy: "စုစု အမြှုပ်စမ်းသပ်ခြင်း",
        passageEn:
            "Su Su's science club wanted to check whether a coin found in an old drawer was fair. The theoretical probability of heads for a fair coin is 1/2, or 0.5. Su Su tossed the coin 20 times and got 13 heads, giving a relative frequency of 13/20 = 0.65 — quite far from 0.5. Her classmate suggested this could just be chance with so few trials, so they tossed the coin 100 more times. Across all 120 tosses, they recorded 68 heads in total, giving a relative frequency of 68/120 ≈ 0.567 — closer to 0.5 than before, but still a bit higher. Su Su's teacher explained that with even more trials, say 1000 tosses, the relative frequency would likely settle even closer to the true probability, whatever that probability actually was — this is the Law of Large Numbers in action. The club decided more testing was needed before concluding the coin was biased.",
        passageMy:
            "စုစု၏ သိပ္ပံကလပ်သည် ဆွဲအံဟောင်းတွင် တွေ့ခဲ့သော အမြှုပ်တစ်ခု မျှတမမျှတ စစ်ဆေးလိုခဲ့သည်။ မျှတသော အမြှုပ်တစ်ခု၏ ခေါင်းရမည့် သီအိုရီအရ ဖြစ်နိုင်ခြေမှာ 1/2 သို့မဟုတ် 0.5 ဖြစ်သည်။ စုစုသည် အမြှုပ်ကို 20 ကြိမ် ပစ်ချရာ ခေါင်း 13 ကြိမ် ရရှိပြီး ဆွေးနွေးမှုအကြိမ်ရေ 13/20 = 0.65 ဖြစ်သည် — 0.5 နှင့် အတော်ဝေးသည်။ သူမ၏ အတန်းသားက စမ်းသပ်မှု နည်းသောကြောင့် ကျပန်းသာဖြစ်နိုင်သည်ဟု အကြံပြုသောကြောင့် သူတို့သည် နောက်ထပ် 100 ကြိမ် ပစ်ချခဲ့ကြသည်။ ပစ်ချမှုစုစုပေါင်း 120 ကြိမ်တွင် ခေါင်း 68 ကြိမ် မှတ်တမ်းတင်ခဲ့ပြီး ဆွေးနွေးမှုအကြိမ်ရေ 68/120 ≈ 0.567 ဖြစ်သည် — ယခင်ထက် 0.5 နှင့် ပိုနီးကပ်သော်လည်း အနည်းငယ် ပိုမြင့်နေသည်။ စုစု၏ဆရာမက ပစ်ချမှု ပိုများလေ ဥပမာ 1000 ကြိမ်ပစ်ချပါက ဆွေးနွေးမှုအကြိမ်ရေသည် အစစ်အမှန်ဖြစ်နိုင်ခြေနှင့် ပိုနီးကပ်လာမည်ဟု ရှင်းပြခဲ့သည် — ၎င်းသည် ကိန်းအများကြီးဥပဒေ လက်တွေ့ကျင့်သုံးမှုဖြစ်သည်။ ကလပ်သည် အမြှုပ်မမျှတဟု ကောက်ချက်မချမီ ထပ်မံစမ်းသပ်မှု လိုအပ်ကြောင်း ဆုံးဖြတ်ခဲ့ကြသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What is the theoretical probability of heads for a fair coin?",
            questionMy:
                "မျှတသော အမြှုပ်တစ်ခု၏ ခေါင်းရမည့် သီအိုရီအရ ဖြစ်နိုင်ခြေမှာ အဘယ်နည်း။",
            optionsEn: ["1/2 (0.5)", "1/4", "1", "13/20"],
            optionsMy: ["1/2 (0.5)", "1/4", "1", "13/20"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What was the relative frequency of heads after the first 20 tosses?",
            questionMy:
                "ပထမ 20 ကြိမ်ပစ်ချပြီးနောက် ခေါင်း၏ ဆွေးနွေးမှုအကြိမ်ရေမှာ အဘယ်နည်း။",
            optionsEn: ["0.65", "0.5", "0.567", "0.13"],
            optionsMy: ["0.65", "0.5", "0.567", "0.13"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What was the relative frequency of heads after all 120 tosses?",
            questionMy:
                "ပစ်ချမှုစုစုပေါင်း 120 ကြိမ်ပြီးနောက် ခေါင်း၏ ဆွေးနွေးမှုအကြိမ်ရေမှာ အဘယ်နည်း။",
            optionsEn: ["Approximately 0.567", "Exactly 0.5", "0.65", "0.68"],
            optionsMy: ["ခန့်မှန်း 0.567", "အတိအကျ 0.5", "0.65", "0.68"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did the teacher say would happen with even more trials?",
            questionMy:
                "ထပ်မံစမ်းသပ်မှု ပိုများလာပါက မည်သို့ဖြစ်လာမည်ဟု ဆရာမက ပြောခဲ့သနည်း။",
            optionsEn: [
              "The relative frequency would settle closer to the true probability",
              "The relative frequency would become random",
              "The coin would become fair",
              "The results would stop mattering",
            ],
            optionsMy: [
              "ဆွေးနွေးမှုအကြိမ်ရေသည် အစစ်အမှန်ဖြစ်နိုင်ခြေနှင့် ပိုနီးကပ်လာမည်",
              "ဆွေးနွေးမှုအကြိမ်ရေသည် ကျပန်းဖြစ်လာမည်",
              "အမြှုပ်သည် မျှတလာမည်",
              "ရလဒ်များသည် အရေးမကြီးတော့ချေ",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w34-d5",
      dayNumber: 5,
      titleEn: "Experimental Probability Recap Quiz",
      titleMy: "စမ်းသပ်မှုအရ ဖြစ်နိုင်ခြေ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Relative frequency is calculated as...",
          questionMy: "ဆွေးနွေးမှုအကြိမ်ရေကို မည်သို့ တွက်ချက်သနည်း...",
          optionsEn: [
            "Number of times an event happened ÷ total trials",
            "Total trials ÷ number of times an event happened",
            "Total trials × number of outcomes",
            "Number of outcomes ÷ total trials",
          ],
          optionsMy: [
            "အဖြစ်အပျက်ဖြစ်ပျက်သည့်အကြိမ်ရေ ÷ စစ်ဆေးမှုစုစုပေါင်း",
            "စစ်ဆေးမှုစုစုပေါင်း ÷ အဖြစ်အပျက်ဖြစ်ပျက်သည့်အကြိမ်ရေ",
            "စစ်ဆေးမှုစုစုပေါင်း × ရလဒ်အရေအတွက်",
            "ရလဒ်အရေအတွက် ÷ စစ်ဆေးမှုစုစုပေါင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A die is rolled 40 times and lands on 5 a total of 6 times. What is the relative frequency of rolling a 5?",
          questionMy:
              "တံစားတစ်လုံးကို 40 ကြိမ် လှိမ့်ရာ 5 သည် 6 ကြိမ် ကျရောက်ပါသည်။ 5 ကျရောက်မည့် ဆွေးနွေးမှုအကြိမ်ရေမှာ အဘယ်နည်း။",
          optionsEn: ["6/40 (0.15)", "40/6", "5/40", "1/6"],
          optionsMy: ["6/40 (0.15)", "40/6", "5/40", "1/6"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The Law of Large Numbers states that...",
          questionMy: "ကိန်းအများကြီးဥပဒေက မည်သို့ ဆိုသနည်း...",
          optionsEn: [
            "More trials bring relative frequency closer to true probability",
            "Fewer trials give more accurate results",
            "Probability always equals exactly 0.5",
            "Trials do not affect probability",
          ],
          optionsMy: [
            "စမ်းသပ်မှု ပိုများလေ ဆွေးနွေးမှုအကြိမ်ရေသည် အစစ်အမှန်ဖြစ်နိုင်ခြေနှင့် ပိုနီးကပ်လေဖြစ်သည်",
            "စမ်းသပ်မှု နည်းလေ ရလဒ် ပိုတိကျလေဖြစ်သည်",
            "ဖြစ်နိုင်ခြေသည် အမြဲတမ်း 0.5 အတိအကျ ညီမျှသည်",
            "စမ်းသပ်မှုသည် ဖြစ်နိုင်ခြေကို မသက်ရောက်ချေ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A spinner is tested 200 times: green comes up 40 times. What is the relative frequency of green?",
          questionMy:
              "လည်စက်တစ်ခုကို 200 ကြိမ် စမ်းသပ်ရာ အစိမ်းရောင် 40 ကြိမ် ကျရောက်ပါသည်။ အစိမ်းရောင်၏ ဆွေးနွေးမှုအကြိမ်ရေမှာ အဘယ်နည်း။",
          optionsEn: ["40/200 (0.2)", "200/40", "40/160", "1/40"],
          optionsMy: ["40/200 (0.2)", "200/40", "40/160", "1/40"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Su Su's coin story, why did the club decide more testing was needed?",
          questionMy:
              "စုစု၏ အမြှုပ်ဇာတ်လမ်းတွင် ကလပ်သည် အဘယ်ကြောင့် ထပ်မံစမ်းသပ်မှု လိုအပ်ကြောင်း ဆုံးဖြတ်ခဲ့သနည်း။",
          optionsEn: [
            "The relative frequency was still a bit different from theoretical probability",
            "The coin looked strange",
            "They wanted to try a different coin",
            "They had run out of time",
          ],
          optionsMy: [
            "ဆွေးနွေးမှုအကြိမ်ရေသည် သီအိုရီအရ ဖြစ်နိုင်ခြေနှင့် အနည်းငယ် ကွာခြားနေသေးသောကြောင့်",
            "အမြှုပ်သည် ထူးဆန်းသော အသွင်ရှိသောကြောင့်",
            "အမြှုပ်အခြားတစ်ခု စမ်းသပ်လိုသောကြောင့်",
            "အချိန်ကုန်သွားသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek35 = CourseWeekDef(
  id: "course-secondary2-mathematics-w35",
  weekNumber: 35,
  titleEn: "Year 8 Maths Revision",
  titleMy: "Year 8 သင်္ချာ ပြန်လည်လေ့ကျင့်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w35-d1",
      dayNumber: 1,
      titleEn: "Algebra Mastery Recap",
      titleMy: "အက္ခရာသင်္ချာ ကျွမ်းကျင်မှု ပြန်လည်ကြည့်ရှုခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Expand and simplify: 3(x + 4) + 2x",
          questionMy: "ဖြန့်ထုတ်ပြီး ရိုးရှင်းအောင်ပြုလုပ်ပါ — 3(x + 4) + 2x",
          optionsEn: ["5x + 12", "5x + 4", "3x + 12", "6x + 4"],
          optionsMy: ["5x + 12", "5x + 4", "3x + 12", "6x + 4"],
          correctIndex: 0,
          hintsEn: [
            "First expand the bracket: 3(x + 4) = 3x + 12.",
            "Then combine like terms: 3x + 12 + 2x = 5x + 12.",
          ],
          hintsMy: [
            "ပထမဆုံး ကွင်းကို ဖြန့်ထုတ်ပါ — 3(x + 4) = 3x + 12။",
            "ထို့နောက် တူညီသောအသုတ်များကို ပေါင်းစည်းပါ — 3x + 12 + 2x = 5x + 12 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Factorise fully: 6x + 9",
          questionMy: "အပြည့်အစုံ ခွဲထုတ်ပါ — 6x + 9",
          optionsEn: ["3(2x + 3)", "2(3x + 4)", "6(x + 9)", "3(2x + 9)"],
          optionsMy: ["3(2x + 3)", "2(3x + 4)", "6(x + 9)", "3(2x + 9)"],
          correctIndex: 0,
          hintsEn: [
            "Find the highest common factor of 6x and 9, which is 3.",
            "3 × 2x = 6x and 3 × 3 = 9, so 6x + 9 = 3(2x + 3).",
          ],
          hintsMy: [
            "6x နှင့် 9 ၏ အမြင့်ဆုံးဘုံဆကိန်းကို ရှာပါ — 3 ဖြစ်သည်။",
            "3 × 2x = 6x နှင့် 3 × 3 = 9 ဖြစ်၍ 6x + 9 = 3(2x + 3) ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Solve for x: 4x - 7 = 13",
          questionMy: "x အတွက် ဖြေရှင်းပါ — 4x - 7 = 13",
          optionsEn: ["x = 5", "x = 6", "x = 4", "x = 1.5"],
          optionsMy: ["x = 5", "x = 6", "x = 4", "x = 1.5"],
          correctIndex: 0,
          hintsEn: [
            "Add 7 to both sides: 4x = 20.",
            "Divide both sides by 4: x = 5.",
          ],
          hintsMy: [
            "ဘက်နှစ်ဘက်လုံးတွင် 7 ပေါင်းပါ — 4x = 20 ဖြစ်သည်။",
            "ဘက်နှစ်ဘက်လုံးကို 4 ဖြင့် စားပါ — x = 5 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Using index laws, simplify: x³ × x²",
          questionMy:
              "ထပ်ညွှန်းကိန်း နိယာမများကို အသုံးပြု၍ ရိုးရှင်းအောင်ပြုလုပ်ပါ — x³ × x²",
          optionsEn: ["x⁵", "x⁶", "x", "2x⁵"],
          optionsMy: ["x⁵", "x⁶", "x", "2x⁵"],
          correctIndex: 0,
          hintsEn: [
            "When multiplying powers with the same base, add the exponents.",
            "3 + 2 = 5, so x³ × x² = x⁵.",
          ],
          hintsMy: [
            "အခြေတူညီသော ထပ်ကိန်းများကို မြှောက်ရာတွင် ထပ်ညွှန်းကိန်းများကို ပေါင်းပါ။",
            "3 + 2 = 5 ဖြစ်၍ x³ × x² = x⁵ ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w35-d2",
      dayNumber: 2,
      titleEn: "Geometry and Data Recap Vocabulary",
      titleMy: "ဂျီဩမေတြီနှင့် အချက်အလက် ပြန်လည်ကြည့်ရှု ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2m-w35-dm1",
          termEn: "Pythagoras' Theorem",
          termMy: "ပိုက်သာဂိုရတ် သီအိုရမ် (Pythagoras' Theorem)",
          matchEn:
              "a² + b² = c², relating the sides of a right-angled triangle",
          matchMy: "ထောင့်မှန်တြိဂံ၏ ဘက်များကို ဆက်စပ်ပေးသော a² + b² = c²",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2m-w35-dm2",
          termEn: "Scale Factor",
          termMy: "အချိုးကိန်း (Scale Factor)",
          matchEn:
              "The number a shape's dimensions are multiplied by during enlargement",
          matchMy:
              "ပုံချဲ့နေစဉ် ပုံသဏ္ဌာန်၏ အတိုင်းအတာများကို မြှောက်ရသည့်ဂဏန်း",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2m-w35-dm3",
          termEn: "Median",
          termMy: "အလယ်ကြားကိန်း (Median)",
          matchEn: "The middle value in an ordered data set",
          matchMy: "စီစဉ်ထားသော အချက်အလက်အစုတွင် အလယ်ကတန်ဖိုး",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2m-w35-dm4",
          termEn: "Probability",
          termMy: "ဖြစ်နိုင်ခြေ (Probability)",
          matchEn: "A measure of how likely an event is to happen",
          matchMy: "အဖြစ်အပျက်တစ်ခု ဖြစ်နိုင်ခြေအတိုင်းအတာ",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2m-w35-dm5",
          termEn: "Ratio",
          termMy: "အချိုး (Ratio)",
          matchEn: "A way of comparing two or more quantities",
          matchMy: "ပမာဏနှစ်ခု သို့မဟုတ် ထို့ထက်ပို၍ နှိုင်းယှဉ်ခြင်းနည်းလမ်း",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2m-w35-dm6",
          termEn: "Volume",
          termMy: "ထုထည် (Volume)",
          matchEn: "The amount of space a 3D shape occupies",
          matchMy: "၃-ဖက်မြင်ပုံတစ်ခု နေရာယူထားသော ပမာဏ",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w35-d3",
      dayNumber: 3,
      titleEn: "Sorting Skills by Topic",
      titleMy: "စွမ်းရည်များကို ခေါင်းစဉ်အလိုက် စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Algebra and Number", "Geometry and Data"],
        bucketsMy: [
          "အက္ခရာသင်္ချာနှင့် ကိန်းဂဏန်း",
          "ဂျီဩမေတြီနှင့် အချက်အလက်",
        ],
        items: [
          SortingItem(
            id: "s2m-w35-sort1",
            labelEn: "Factorising expressions",
            labelMy: "ဆခွဲကိန်း ခွဲထုတ်ခြင်း",
            correctBucketEn: "Algebra and Number",
            correctBucketMy: "အက္ခရာသင်္ချာနှင့် ကိန်းဂဏန်း",
          ),
          SortingItem(
            id: "s2m-w35-sort2",
            labelEn: "Pythagoras' Theorem",
            labelMy: "ပိုက်သာဂိုရတ် သီအိုရမ်",
            correctBucketEn: "Geometry and Data",
            correctBucketMy: "ဂျီဩမေတြီနှင့် အချက်အလက်",
          ),
          SortingItem(
            id: "s2m-w35-sort3",
            labelEn: "Index laws",
            labelMy: "ထပ်ညွှန်းကိန်း နိယာမများ",
            correctBucketEn: "Algebra and Number",
            correctBucketMy: "အက္ခရာသင်္ချာနှင့် ကိန်းဂဏန်း",
          ),
          SortingItem(
            id: "s2m-w35-sort4",
            labelEn: "Scatter graphs",
            labelMy: "အစက်ချ ဂရပ်များ",
            correctBucketEn: "Geometry and Data",
            correctBucketMy: "ဂျီဩမေတြီနှင့် အချက်အလက်",
          ),
          SortingItem(
            id: "s2m-w35-sort5",
            labelEn: "Solving linear equations",
            labelMy: "မျဉ်းဖြောင့် ညီမျှခြင်းများ ဖြေရှင်းခြင်း",
            correctBucketEn: "Algebra and Number",
            correctBucketMy: "အက္ခရာသင်္ချာနှင့် ကိန်းဂဏန်း",
          ),
          SortingItem(
            id: "s2m-w35-sort6",
            labelEn: "Enlargement and scale factors",
            labelMy: "ပုံချဲ့ခြင်းနှင့် အချိုးကိန်းများ",
            correctBucketEn: "Geometry and Data",
            correctBucketMy: "ဂျီဩမေတြီနှင့် အချက်အလက်",
          ),
          SortingItem(
            id: "s2m-w35-sort7",
            labelEn: "Percentage change",
            labelMy: "ရာခိုင်နှုန်း အပြောင်းအလဲ",
            correctBucketEn: "Algebra and Number",
            correctBucketMy: "အက္ခရာသင်္ချာနှင့် ကိန်းဂဏန်း",
          ),
          SortingItem(
            id: "s2m-w35-sort8",
            labelEn: "Averages from tables",
            labelMy: "ဇယားများမှ ပျမ်းမျှကိန်းများ",
            correctBucketEn: "Geometry and Data",
            correctBucketMy: "ဂျီဩမေတြီနှင့် အချက်အလက်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w35-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiri's Year in Maths",
      titleMy: "စာဖတ်ခြင်း — သီရိ၏ သင်္ချာနှစ်တစ်နှစ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri's Year in Maths",
        titleMy: "သီရိ၏ သင်္ချာနှစ်တစ်နှစ်",
        passageEn:
            "Looking back over the year, Thiri realised how much mathematics connected together. She had started with integers and powers, learning that index laws like x³ × x² = x⁵ made complex expressions manageable. Algebra came next, where expanding brackets and factorising became tools she used again and again, even in later topics like solving equations for real-life graphs. Geometry brought parallel lines, polygons, and her favourite discovery, Pythagoras' theorem, connecting the sides of right-angled triangles. Fractions, decimals, and percentages tied into financial maths, showing her how interest and discounts worked in real shops. Statistics taught her to organise data and find averages, while ratio and proportion appeared again in compound measures like speed and density. Area, volume, and enlargement brought geometry and algebra together in packaging design. Finally, probability tied everything to real-world uncertainty — predicting outcomes using both theory and experiments. Thiri realised that maths was never really separate topics; it was one connected way of thinking about the world.",
        passageMy:
            "နှစ်တစ်နှစ်ကို ပြန်လည်ကြည့်ရှုရာတွင် သင်္ချာသည် မည်မျှ တစ်ခုနှင့်တစ်ခု ဆက်စပ်နေကြောင်း သီရိ သဘောပေါက်ခဲ့သည်။ သူမသည် ကိန်းပြည့်များနှင့် ထပ်ကိန်းများဖြင့် စတင်ခဲ့ပြီး၊ x³ × x² = x⁵ ကဲ့သို့သော ထပ်ညွှန်းကိန်းနိယာမများက ရှုပ်ထွေးသော ဆခွဲကိန်းများကို ကိုင်တွယ်နိုင်စေကြောင်း သင်ယူခဲ့သည်။ ထို့နောက် အက္ခရာသင်္ချာသည် ကွင်းဖြန့်ထုတ်ခြင်းနှင့် ခွဲထုတ်ခြင်းကို နောက်ပိုင်းသင်ခန်းစာများဥပမာ လက်တွေ့ဂရပ်များအတွက် ညီမျှခြင်းဖြေရှင်းခြင်းတွင်ပင် ထပ်ခါထပ်ခါ အသုံးပြုသော ကိရိယာများဖြစ်ခဲ့သည်။ ဂျီဩမေတြီသည် ပြိုင်မျဉ်းများ၊ ဗဟုဂံများနှင့် သူမ၏ အကြိုက်ဆုံးရှာတွေ့ချက် — ထောင့်မှန်တြိဂံ၏ ဘက်များကို ဆက်စပ်ပေးသော ပိုက်သာဂိုရတ်သီအိုရမ်ကို ယူဆောင်လာခဲ့သည်။ အပိုင်းကိန်း၊ ဒသမကိန်းနှင့် ရာခိုင်နှုန်းများသည် ဘဏ္ဍာရေးသင်္ချာနှင့် ဆက်စပ်ကာ၊ အတိုးနှင့် လျှော့စျေးများ ဆိုင်များတွင် မည်သို့အလုပ်လုပ်သည်ကို ပြသခဲ့သည်။ စာရင်းအင်းသည် အချက်အလက် စုစည်းစီစဉ်ရန်နှင့် ပျမ်းမျှရှာဖွေရန် သင်ပေးခဲ့ပြီး၊ အချိုးနှင့် အချိုးကျမှုသည် အလျင်နှင့် သိပ်သည်းဆကဲ့သို့ ပေါင်းစပ်တိုင်းတာမှုများတွင် ထပ်မံပေါ်လာခဲ့သည်။ ဧရိယာ၊ ထုထည်နှင့် ပုံချဲ့ခြင်းသည် ထုပ်ပိုးမှုဒီဇိုင်းတွင် ဂျီဩမေတြီနှင့် အက္ခရာသင်္ချာကို အတူယူဆောင်လာခဲ့သည်။ နောက်ဆုံးတွင် ဖြစ်နိုင်ခြေသည် အားလုံးကို အစစ်အမှန် ကမ္ဘာ့မသေချာမှုနှင့် ဆက်စပ်ပေးခဲ့သည် — သီအိုရီနှင့် စမ်းသပ်မှုနှစ်မျိုးလုံးကို အသုံးပြု၍ ရလဒ်များကို ခန့်မှန်းခြင်းဖြင့်။ သင်္ချာသည် လုံးဝသီးခြားသင်ခန်းစာများ မဟုတ်ဘဲ ကမ္ဘာကို တွေးခေါ်ရန် ဆက်စပ်နေသော နည်းလမ်းတစ်ခုတည်းဖြစ်ကြောင်း သီရိ သဘောပေါက်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did Thiri learn from index laws?",
            questionMy:
                "ထပ်ညွှန်းကိန်း နိယာမများမှ သီရိ အဘယ်အရာကို သင်ယူခဲ့သနည်း။",
            optionsEn: [
              "They made complex expressions manageable",
              "They were unrelated to algebra",
              "They only applied to fractions",
              "They replaced all other topics",
            ],
            optionsMy: [
              "ရှုပ်ထွေးသော ဆခွဲကိန်းများကို ကိုင်တွယ်နိုင်စေကြောင်း",
              "အက္ခရာသင်္ချာနှင့် မသက်ဆိုင်ကြောင်း",
              "အပိုင်းကိန်းများအတွက်သာ သုံးနိုင်ကြောင်း",
              "အခြားသင်ခန်းစာအားလုံးကို အစားထိုးခဲ့ကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What was Thiri's favourite discovery in geometry?",
            questionMy:
                "ဂျီဩမေတြီတွင် သီရိ၏ အကြိုက်ဆုံးရှာတွေ့ချက်မှာ အဘယ်နည်း။",
            optionsEn: [
              "Pythagoras' theorem",
              "Enlargement",
              "Parallel lines",
              "Polygons",
            ],
            optionsMy: [
              "ပိုက်သာဂိုရတ်သီအိုရမ်",
              "ပုံချဲ့ခြင်း",
              "ပြိုင်မျဉ်းများ",
              "ဗဟုဂံများ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "How did ratio and proportion appear again later in the year?",
            questionMy:
                "အချိုးနှင့် အချိုးကျမှုသည် နှစ်နောက်ပိုင်းတွင် မည်သို့ ထပ်မံပေါ်လာခဲ့သနည်း။",
            optionsEn: [
              "In compound measures like speed and density",
              "In probability only",
              "In Pythagoras' theorem",
              "They did not appear again",
            ],
            optionsMy: [
              "အလျင်နှင့် သိပ်သည်းဆကဲ့သို့ ပေါင်းစပ်တိုင်းတာမှုများတွင်",
              "ဖြစ်နိုင်ခြေတွင်သာ",
              "ပိုက်သာဂိုရတ်သီအိုရမ်တွင်",
              "ထပ်မံမပေါ်လာချေ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What was Thiri's overall conclusion about maths?",
            questionMy: "သင်္ချာအကြောင်း သီရိ၏ အလုံးစုံ ကောက်ချက်မှာ အဘယ်နည်း။",
            optionsEn: [
              "It was one connected way of thinking about the world",
              "Each topic was completely separate",
              "Only algebra mattered",
              "Geometry was the only useful topic",
            ],
            optionsMy: [
              "ကမ္ဘာကို တွေးခေါ်ရန် ဆက်စပ်နေသော နည်းလမ်းတစ်ခုတည်းဖြစ်ကြောင်း",
              "သင်ခန်းစာတိုင်း လုံးဝသီးခြားဖြစ်ကြောင်း",
              "အက္ခရာသင်္ချာသာ အရေးကြီးကြောင်း",
              "ဂျီဩမေတြီသာ အသုံးဝင်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w35-d5",
      dayNumber: 5,
      titleEn: "Year 8 Maths Revision Recap Quiz",
      titleMy: "Year 8 သင်္ချာ ပြန်လည်လေ့ကျင့်ခြင်း ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Solve for x: 3x + 5 = 20",
          questionMy: "x အတွက် ဖြေရှင်းပါ — 3x + 5 = 20",
          optionsEn: ["x = 5", "x = 8", "x = 15", "x = 6"],
          optionsMy: ["x = 5", "x = 8", "x = 15", "x = 6"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A right-angled triangle has legs of 6 cm and 8 cm. What is the hypotenuse?",
          questionMy:
              "ထောင့်မှန်တြိဂံတစ်ခု၏ ဘက် 6 cm နှင့် 8 cm ရှိပါသည်။ အရှည်ဆုံးဘက်မှာ အဘယ်နည်း။",
          optionsEn: ["10 cm", "14 cm", "48 cm", "7 cm"],
          optionsMy: ["10 cm", "14 cm", "48 cm", "7 cm"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A cuboid has volume 24 cm³ and a base area of 6 cm². What is its height?",
          questionMy:
              "ကျုပ်ကွက်တစ်ခု၏ ထုထည်သည် 24 cm³ ဖြစ်ပြီး အခြေဧရိယာ 6 cm² ရှိပါသည်။ အမြင့်မှာ အဘယ်နည်း။",
          optionsEn: ["4 cm", "6 cm", "18 cm", "144 cm"],
          optionsMy: ["4 cm", "6 cm", "18 cm", "144 cm"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A fair die is rolled. What is the probability of rolling a number greater than 4?",
          questionMy:
              "မျှတသော တံစားတစ်လုံးကို လှိမ့်ပါသည်။ 4 ထက်ကြီးသော ဂဏန်း ရမည့်ဖြစ်နိုင်ခြေမှာ အဘယ်နည်း။",
          optionsEn: ["1/3", "1/2", "1/6", "2/3"],
          optionsMy: ["1/3", "1/2", "1/6", "2/3"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Thiri's reflection story, what was her overall conclusion about maths?",
          questionMy:
              "သီရိ၏ တွေးတောဆင်ခြင်ဇာတ်လမ်းတွင် သင်္ချာအကြောင်း သူမ၏ အလုံးစုံကောက်ချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "It was one connected way of thinking about the world",
            "It was many unrelated topics",
            "It was only useful for exams",
            "It had no real-life uses",
          ],
          optionsMy: [
            "ကမ္ဘာကို တွေးခေါ်ရန် ဆက်စပ်နေသော နည်းလမ်းတစ်ခုတည်းဖြစ်ကြောင်း",
            "မသက်ဆိုင်သော သင်ခန်းစာများစွာဖြစ်ကြောင်း",
            "စာမေးပွဲအတွက်သာ အသုံးဝင်ကြောင်း",
            "လက်တွေ့ဘဝတွင် အသုံးမဝင်ကြောင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek36 = CourseWeekDef(
  id: "course-secondary2-mathematics-w36",
  weekNumber: 36,
  titleEn: "The Ultimate Maths Escape Room",
  titleMy: "သင်္ချာ ဉာဏ်စမ်း လွတ်မြောက်ခန်း",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w36-d1",
      dayNumber: 1,
      titleEn: "Escape Room: Logical Deduction Puzzles",
      titleMy: "လွတ်မြောက်ခန်း — ယုတ္တိဗေဒဆင်ခြင် ပဟေဠိများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Locked Door 1: The combination is the value of x in 5x - 3 = 22. What is the combination?",
          questionMy:
              "ခန်းပိတ်တံခါး 1 — ကုဒ်သည် 5x - 3 = 22 ရှိ x တန်ဖိုးဖြစ်သည်။ ကုဒ်မှာ အဘယ်နည်း။",
          optionsEn: ["5", "4", "19", "25"],
          optionsMy: ["5", "4", "19", "25"],
          correctIndex: 0,
          hintsEn: [
            "Add 3 to both sides: 5x = 25.",
            "Divide both sides by 5: x = 5.",
          ],
          hintsMy: [
            "ဘက်နှစ်ဘက်လုံးတွင် 3 ပေါင်းပါ — 5x = 25 ဖြစ်သည်။",
            "ဘက်နှစ်ဘက်လုံးကို 5 ဖြင့် စားပါ — x = 5 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Locked Door 2: A chest requires the area of a circle with radius 5 cm (using π ≈ 3.14), rounded to the nearest whole number. What is the code?",
          questionMy:
              "ခန်းပိတ်တံခါး 2 — သေတ္တာသည် အချင်းဝက် 5 cm ရှိသော စက်ဝိုင်း၏ ဧရိယာ (π ≈ 3.14 သုံး၍) အနီးဆုံးကိန်းပြည့်ကို လိုအပ်သည်။ ကုဒ်မှာ အဘယ်နည်း။",
          optionsEn: ["79", "31", "16", "157"],
          optionsMy: ["79", "31", "16", "157"],
          correctIndex: 0,
          hintsEn: [
            "Area of a circle = π × radius².",
            "3.14 × 5 × 5 = 78.5, which rounds to 79.",
          ],
          hintsMy: [
            "စက်ဝိုင်း၏ ဧရိယာ = π × အချင်းဝက်²။",
            "3.14 × 5 × 5 = 78.5 ဖြစ်ပြီး အနီးဆုံးကိန်းပြည့် 79 သို့ ဝိုင်းသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Locked Door 3: A safe requires the probability of NOT rolling a 6 on a fair die, as a fraction. What is the answer?",
          questionMy:
              "ခန်းပိတ်တံခါး 3 — သေတ္တာခံသည် မျှတသောတံစားတွင် 6 မရမည့် ဖြစ်နိုင်ခြေကို အပိုင်းကိန်းအဖြစ် လိုအပ်သည်။ အဖြေမှာ အဘယ်နည်း။",
          optionsEn: ["5/6", "1/6", "1/2", "4/6"],
          optionsMy: ["5/6", "1/6", "1/2", "4/6"],
          correctIndex: 0,
          hintsEn: [
            "Probability of NOT an event = 1 − probability of the event.",
            "Probability of rolling a 6 is 1/6, so probability of NOT rolling a 6 is 1 − 1/6 = 5/6.",
          ],
          hintsMy: [
            "အဖြစ်အပျက် မဖြစ်ခြင်း၏ ဖြစ်နိုင်ခြေ = 1 − အဖြစ်အပျက်၏ ဖြစ်နိုင်ခြေ။",
            "6 ရမည့်ဖြစ်နိုင်ခြေသည် 1/6 ဖြစ်၍ 6 မရမည့်ဖြစ်နိုင်ခြေသည် 1 − 1/6 = 5/6 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Final Door: A cuboid box has volume 60 cm³, length 5 cm, and width 4 cm. What is its height — the final escape code?",
          questionMy:
              "နောက်ဆုံးတံခါး — ကျုပ်ကွက်ဘူးတစ်ခု၏ ထုထည်သည် 60 cm³၊ အလျား 5 cm နှင့် အကျယ် 4 cm ရှိပါသည်။ အမြင့်မှာ အဘယ်နည်း — နောက်ဆုံး လွတ်မြောက်ကုဒ်ဖြစ်သည်။",
          optionsEn: ["3 cm", "20 cm", "51 cm", "12 cm"],
          optionsMy: ["3 cm", "20 cm", "51 cm", "12 cm"],
          correctIndex: 0,
          hintsEn: [
            "Height = Volume ÷ (length × width).",
            "60 ÷ (5 × 4) = 60 ÷ 20 = 3 cm.",
          ],
          hintsMy: [
            "အမြင့် = ထုထည် ÷ (အလျား × အကျယ်)။",
            "60 ÷ (5 × 4) = 60 ÷ 20 = 3 cm ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w36-d2",
      dayNumber: 2,
      titleEn: "Escape Room Vocabulary",
      titleMy: "လွတ်မြောက်ခန်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2m-w36-dm1",
          termEn: "Logical Deduction",
          termMy: "ယုတ္တိဗေဒဆင်ခြင်ခြင်း (Logical Deduction)",
          matchEn:
              "Working out an answer step by step using known facts and rules",
          matchMy:
              "သိရှိထားသော အချက်များနှင့် စည်းမျဉ်းများကို အသုံးပြု၍ အဆင့်ဆင့် အဖြေရှာခြင်း",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2m-w36-dm2",
          termEn: "Multi-Step Problem",
          termMy: "အဆင့်ပေါင်းများစွာ ပြဿနာ (Multi-Step Problem)",
          matchEn: "A problem that requires more than one calculation to solve",
          matchMy: "ဖြေရှင်းရန် တွက်ချက်မှုတစ်ခုထက်ပို၍ လိုအပ်သော ပြဿနာ",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2m-w36-dm3",
          termEn: "Teamwork",
          termMy: "အဖွဲ့လိုက်လုပ်ဆောင်ခြင်း (Teamwork)",
          matchEn: "Working together with others to reach a shared goal",
          matchMy:
              "ဘုံရည်မှန်းချက်ကို ရောက်ရှိရန် အခြားသူများနှင့် အတူတကွ လုပ်ဆောင်ခြင်း",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2m-w36-dm4",
          termEn: "Combination",
          termMy: "ကုဒ်ပေါင်းစပ်မှု (Combination)",
          matchEn:
              "A sequence of numbers or symbols needed to unlock something",
          matchMy:
              "တစ်စုံတစ်ခုကို ဖွင့်ရန် လိုအပ်သော ဂဏန်း သို့မဟုတ် သင်္ကေတများ၏ အစီအစဉ်",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2m-w36-dm5",
          termEn: "Verify",
          termMy: "အတည်ပြုခြင်း (Verify)",
          matchEn: "To check that an answer is correct",
          matchMy: "အဖြေတစ်ခု မှန်ကန်ကြောင်း စစ်ဆေးခြင်း",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2m-w36-dm6",
          termEn: "Strategy",
          termMy: "နည်းဗျူဟာ (Strategy)",
          matchEn: "A planned approach for solving a problem efficiently",
          matchMy: "ပြဿနာကို ထိရောက်စွာ ဖြေရှင်းရန် စီစဉ်ထားသော ချဉ်းကပ်နည်း",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w36-d3",
      dayNumber: 3,
      titleEn: "Sorting Escape Room Clues by Topic",
      titleMy: "လွတ်မြောက်ခန်း အချက်ပြများကို ခေါင်းစဉ်အလိုက် စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Algebra Clue", "Geometry or Probability Clue"],
        bucketsMy: [
          "အက္ခရာသင်္ချာ အချက်ပြ",
          "ဂျီဩမေတြီ သို့မဟုတ် ဖြစ်နိုင်ခြေ အချက်ပြ",
        ],
        items: [
          SortingItem(
            id: "s2m-w36-sort1",
            labelEn: "Solve 5x - 3 = 22 for the combination",
            labelMy: "ကုဒ်အတွက် 5x - 3 = 22 ကို ဖြေရှင်းပါ",
            correctBucketEn: "Algebra Clue",
            correctBucketMy: "အက္ခရာသင်္ချာ အချက်ပြ",
          ),
          SortingItem(
            id: "s2m-w36-sort2",
            labelEn: "Find the area of a circle for the door code",
            labelMy: "တံခါးကုဒ်အတွက် စက်ဝိုင်း၏ ဧရိယာကို ရှာပါ",
            correctBucketEn: "Geometry or Probability Clue",
            correctBucketMy: "ဂျီဩမေတြီ သို့မဟုတ် ဖြစ်နိုင်ခြေ အချက်ပြ",
          ),
          SortingItem(
            id: "s2m-w36-sort3",
            labelEn: "Calculate the probability of not rolling a 6",
            labelMy: "6 မရမည့်ဖြစ်နိုင်ခြေကို တွက်ချက်ပါ",
            correctBucketEn: "Geometry or Probability Clue",
            correctBucketMy: "ဂျီဩမေတြီ သို့မဟုတ် ဖြစ်နိုင်ခြေ အချက်ပြ",
          ),
          SortingItem(
            id: "s2m-w36-sort4",
            labelEn: "Simplify an expression to open a lock",
            labelMy: "သော့ဖွင့်ရန် ဖော်ပြချက်ကို ရိုးရှင်းအောင်ပြုလုပ်ပါ",
            correctBucketEn: "Algebra Clue",
            correctBucketMy: "အက္ခရာသင်္ချာ အချက်ပြ",
          ),
          SortingItem(
            id: "s2m-w36-sort5",
            labelEn: "Find the missing height of a cuboid",
            labelMy: "ကျုပ်ကွက်တစ်ခု၏ ပျောက်ဆုံးနေသော အမြင့်ကို ရှာပါ",
            correctBucketEn: "Geometry or Probability Clue",
            correctBucketMy: "ဂျီဩမေတြီ သို့မဟုတ် ဖြစ်နိုင်ခြေ အချက်ပြ",
          ),
          SortingItem(
            id: "s2m-w36-sort6",
            labelEn: "Factorise an expression for a hidden number",
            labelMy: "ဖျောက်ထားသောဂဏန်းအတွက် ဖော်ပြချက်ကို ခွဲထုတ်ပါ",
            correctBucketEn: "Algebra Clue",
            correctBucketMy: "အက္ခရာသင်္ချာ အချက်ပြ",
          ),
          SortingItem(
            id: "s2m-w36-sort7",
            labelEn: "Use Pythagoras' theorem to find a missing side",
            labelMy:
                "ပျောက်ဆုံးနေသောဘက်ကို ရှာရန် ပိုက်သာဂိုရတ်သီအိုရမ် သုံးပါ",
            correctBucketEn: "Geometry or Probability Clue",
            correctBucketMy: "ဂျီဩမေတြီ သို့မဟုတ် ဖြစ်နိုင်ခြေ အချက်ပြ",
          ),
          SortingItem(
            id: "s2m-w36-sort8",
            labelEn: "Solve a linear equation for a passcode digit",
            labelMy: "ပတ်စ်ကုဒ်ဂဏန်းအတွက် မျဉ်းဖြောင့်ညီမျှခြင်းကို ဖြေရှင်းပါ",
            correctBucketEn: "Algebra Clue",
            correctBucketMy: "အက္ခရာသင်္ချာ အချက်ပြ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w36-d4",
      dayNumber: 4,
      titleEn: "Reading: The Team's Final Challenge",
      titleMy: "စာဖတ်ခြင်း — အသင်း၏ နောက်ဆုံးစိန်ခေါ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The Team's Final Challenge",
        titleMy: "အသင်း၏ နောက်ဆုံးစိန်ခေါ်မှု",
        passageEn:
            "Su Su, Thiri, and Mya were the last team locked inside the escape room, with only ten minutes remaining. The first locked box needed the solution to 5x - 3 = 22; Su Su solved it quickly, getting x = 5. The second door required the area of a circular seal with a radius of 5 cm; Thiri calculated 3.14 × 5 × 5 = 78.5, rounding to 79. The third puzzle, a safe, asked for the probability of NOT rolling a 6 on a die; Mya reasoned that since rolling a 6 has probability 1/6, not rolling a 6 must be 1 − 1/6 = 5/6. With three numbers found — 5, 79, and 5/6 — they realised the final door needed the height of a cuboid box with volume 60 cm³, length 5 cm, and width 4 cm. Working together, they calculated 60 ÷ (5 × 4) = 3. Entering all four numbers into the final panel, the door swung open with two minutes to spare. Their teacher congratulated them: every clue had used a different area of maths they had studied all year, proving that logical deduction and teamwork could solve anything.",
        passageMy:
            "စုစု၊ သီရိနှင့် မြတို့သည် လွတ်မြောက်ခန်းအတွင်း ပိတ်မိနေသော နောက်ဆုံးအသင်းဖြစ်ပြီး ၁၀ မိနစ်သာ ကျန်ရှိတော့သည်။ ပထမတံခါးပိတ်သေတ္တာသည် 5x - 3 = 22 ၏ အဖြေကို လိုအပ်ခဲ့သည် — စုစုသည် x = 5 ဟု လျင်မြန်စွာ ဖြေရှင်းခဲ့သည်။ ဒုတိယတံခါးသည် အချင်းဝက် 5 cm ရှိသော စက်ဝိုင်းတံဆိပ်၏ ဧရိယာကို လိုအပ်ခဲ့သည် — သီရိသည် 3.14 × 5 × 5 = 78.5 ကို တွက်ချက်ပြီး 79 သို့ ဝိုင်းခဲ့သည်။ တတိယပဟေဠိ၊ သေတ္တာခံတစ်ခုသည် တံစားတွင် 6 မရမည့် ဖြစ်နိုင်ခြေကို မေးခဲ့သည် — မြသည် 6 ရမည့်ဖြစ်နိုင်ခြေသည် 1/6 ဖြစ်၍ 6 မရမည့်သည် 1 − 1/6 = 5/6 ဖြစ်ရမည်ဟု ဆင်ခြင်ခဲ့သည်။ ဂဏန်းသုံးလုံးရရှိပြီးနောက် — 5, 79, နှင့် 5/6 — နောက်ဆုံးတံခါးသည် ထုထည် 60 cm³၊ အလျား 5 cm နှင့် အကျယ် 4 cm ရှိသော ကျုပ်ကွက်ဘူးတစ်ခု၏ အမြင့်ကို လိုအပ်ကြောင်း သူတို့ သဘောပေါက်ခဲ့ကြသည်။ အတူတကွ လုပ်ဆောင်ကာ 60 ÷ (5 × 4) = 3 ကို တွက်ချက်ခဲ့ကြသည်။ ဂဏန်းလေးလုံးလုံးကို နောက်ဆုံးပန်နယ်တွင် ရိုက်ထည့်လိုက်ပြီးနောက်၊ တံခါးသည် ၂ မိနစ်ကျန်ချိန်တွင် ဖွင့်ထွက်ခဲ့သည်။ သူတို့၏ဆရာက ဂုဏ်ပြုခဲ့သည် — အချက်ပြတိုင်းသည် တစ်နှစ်လုံး သင်ယူခဲ့သော သင်္ချာနယ်ပယ်တစ်ခုစီကို အသုံးပြုခဲ့ပြီး၊ ယုတ္တိဗေဒဆင်ခြင်ခြင်းနှင့် အဖွဲ့လိုက်လုပ်ဆောင်ခြင်းသည် မည်သည့်အရာကိုမဆို ဖြေရှင်းနိုင်ကြောင်း သက်သေပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What was the answer to the first locked box?",
            questionMy: "ပထမတံခါးပိတ်သေတ္တာ၏ အဖြေမှာ အဘယ်နည်း။",
            optionsEn: ["5", "79", "5/6", "3"],
            optionsMy: ["5", "79", "5/6", "3"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Who solved the probability puzzle?",
            questionMy: "ဖြစ်နိုင်ခြေ ပဟေဠိကို မည်သူ ဖြေရှင်းခဲ့သနည်း။",
            optionsEn: ["Mya", "Su Su", "Thiri", "Their teacher"],
            optionsMy: ["မြ", "စုစု", "သီရိ", "သူတို့ဆရာ"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What was needed to open the final door?",
            questionMy: "နောက်ဆုံးတံခါးဖွင့်ရန် အဘယ်အရာ လိုအပ်ခဲ့သနည်း။",
            optionsEn: [
              "The height of a cuboid box with volume 60 cm³",
              "Another probability calculation",
              "A second circle's area",
              "A password from their teacher",
            ],
            optionsMy: [
              "ထုထည် 60 cm³ ရှိသော ကျုပ်ကွက်ဘူး၏ အမြင့်",
              "ဖြစ်နိုင်ခြေ တွက်ချက်မှု နောက်တစ်ခု",
              "စက်ဝိုင်းဒုတိယခု၏ ဧရိယာ",
              "ဆရာမှ စကားဝှက်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did the team's escape prove, according to the teacher?",
            questionMy:
                "ဆရာ၏ အဆိုအရ အသင်း၏ လွတ်မြောက်မှုက အဘယ်အရာကို သက်သေပြခဲ့သနည်း။",
            optionsEn: [
              "Logical deduction and teamwork could solve anything",
              "Only algebra mattered",
              "Luck was more important than maths",
              "The escape room was too easy",
            ],
            optionsMy: [
              "ယုတ္တိဗေဒဆင်ခြင်ခြင်းနှင့် အဖွဲ့လိုက်လုပ်ဆောင်ခြင်းသည် မည်သည့်အရာကိုမဆို ဖြေရှင်းနိုင်ကြောင်း",
              "အက္ခရာသင်္ချာသာ အရေးကြီးကြောင်း",
              "ကံသည် သင်္ချာထက် ပိုအရေးကြီးကြောင်း",
              "လွတ်မြောက်ခန်းသည် လွယ်ကူလွန်းကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w36-d5",
      dayNumber: 5,
      titleEn: "Term 9 and Year 8 Final Recap Quiz",
      titleMy: "Term 9 နှင့် Year 8 နောက်ဆုံး ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Solve for x: 5x - 3 = 22",
          questionMy: "x အတွက် ဖြေရှင်းပါ — 5x - 3 = 22",
          optionsEn: ["x = 5", "x = 4", "x = 19", "x = 25"],
          optionsMy: ["x = 5", "x = 4", "x = 19", "x = 25"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A fair die is rolled. What is the probability of NOT rolling a 6?",
          questionMy:
              "မျှတသော တံစားတစ်လုံးကို လှိမ့်ပါသည်။ 6 မရမည့် ဖြစ်နိုင်ခြေမှာ အဘယ်နည်း။",
          optionsEn: ["5/6", "1/6", "1/2", "1"],
          optionsMy: ["5/6", "1/6", "1/2", "1"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A cuboid box has volume 60 cm³, length 5 cm, and width 4 cm. What is its height?",
          questionMy:
              "ကျုပ်ကွက်ဘူးတစ်ခု၏ ထုထည်သည် 60 cm³၊ အလျား 5 cm နှင့် အကျယ် 4 cm ရှိပါသည်။ အမြင့်မှာ အဘယ်နည်း။",
          optionsEn: ["3 cm", "20 cm", "51 cm", "12 cm"],
          optionsMy: ["3 cm", "20 cm", "51 cm", "12 cm"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A circle has a radius of 5 cm. Using π ≈ 3.14, what is its area, rounded to the nearest whole number?",
          questionMy:
              "စက်ဝိုင်းတစ်ခု၏ အချင်းဝက်သည် 5 cm ဖြစ်ပါသည်။ π ≈ 3.14 ကို အသုံးပြု၍ ဧရိယာမှာ အဘယ်နည်း (အနီးဆုံးကိန်းပြည့်)။",
          optionsEn: ["79 cm²", "31 cm²", "16 cm²", "157 cm²"],
          optionsMy: ["79 cm²", "31 cm²", "16 cm²", "157 cm²"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the escape room story, what did solving all four clues prove about maths?",
          questionMy:
              "လွတ်မြောက်ခန်း ဇာတ်လမ်းတွင် အချက်ပြလေးခုလုံးကို ဖြေရှင်းနိုင်ခြင်းက သင်္ချာအကြောင်း အဘယ်အရာကို သက်သေပြခဲ့သနည်း။",
          optionsEn: [
            "Logical deduction and teamwork could solve anything",
            "Only one topic in maths really mattered",
            "Maths topics are all separate and unrelated",
            "Escape rooms are only for algebra",
          ],
          optionsMy: [
            "ယုတ္တိဗေဒဆင်ခြင်ခြင်းနှင့် အဖွဲ့လိုက်လုပ်ဆောင်ခြင်းသည် မည်သည့်အရာကိုမဆို ဖြေရှင်းနိုင်ကြောင်း",
            "သင်္ချာတွင် ခေါင်းစဉ်တစ်ခုသာ အမှန်တကယ် အရေးကြီးကြောင်း",
            "သင်္ချာခေါင်းစဉ်များသည် လုံးဝသီးခြားဖြစ်ပြီး မဆက်စပ်ကြောင်း",
            "လွတ်မြောက်ခန်းများသည် အက္ခရာသင်္ချာအတွက်သာဖြစ်ကြောင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary2MathematicsTerm9 = CourseTermDef(
  id: "course-secondary2-mathematics-term9",
  termNumber: 9,
  titleEn: "Probability and Year 8 Review",
  titleMy: "ဖြစ်နိုင်ခြေနှင့် Year 8 ပြန်လည်လေ့လာခြင်း",
  certificateTitleEn: "Probability and Year 8 Review",
  certificateTitleMy: "ဖြစ်နိုင်ခြေနှင့် Year 8 ပြန်လည်လေ့လာခြင်း",
  weeks: [
    _secondary2MathematicsWeek33,
    _secondary2MathematicsWeek34,
    _secondary2MathematicsWeek35,
    _secondary2MathematicsWeek36,
  ],
);
