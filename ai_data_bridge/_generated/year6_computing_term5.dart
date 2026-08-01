// File: ai_data_bridge/_generated/year6_computing_term5.dart
// Year 6 Computing -- Term 5: "Game Creation Project" (Weeks 17-20).
// Staging artifact only -- not yet wired into course_pathway_bank.dart's
// Grade.year6 pathway. Follows Term 4 (Databases) by moving into this
// term's obvious capstone-heavy focus: planning and building a small
// original interactive game, tying together sequence and functions from
// Term 1, the searchable/sortable data thinking from Term 4, and Year 5's
// variables/conditions foundation. Protagonist Nay Chi, a Nova School
// student, recurs across quiz flavour text and every Day 4 reading
// passage this term.
//
// Week 17 (Planning a Game): choosing a genre and goal, writing rules,
// and storyboarding a design document before touching any code -- and,
// in a spiral revisit of Week 16's capstone, Nay Chi turns her class
// hobbies database into design-brief data, filtering it to find which
// game genres her classmates would most enjoy before she starts
// planning. Week 18 (Characters, Sprites and Backgrounds): designing
// sprites, costumes, and backdrops, and understanding x/y coordinates as
// the stage a game's characters move around on. Week 19 (Game Logic:
// Score, Lives and Collisions): using variables to track score and
// lives, detecting collisions/events, and writing the if-conditions that
// decide when a player wins or loses. Week 20 (Capstone -- Nay Chi's
// Game Jam Challenge, boss week): planning, building, playtesting and
// debugging an original small game that combines a design document,
// sprites on a backdrop, and score/lives/win-lose logic, with the recap
// day reviewing the whole term.

const CourseWeekDef _year6ComputingWeek17 = CourseWeekDef(
  id: "course-year6-computing-w17",
  weekNumber: 17,
  titleEn: "Planning a Game",
  titleMy: "ဂိမ်းတစ်ခု စီစဉ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w17-d1",
      dayNumber: 1,
      titleEn: "Genre, Goal and Rules",
      titleMy: "အမျိုးအစား၊ ရည်မှန်းချက်နှင့် စည်းမျဉ်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Before writing any code for a new game, what should a game designer decide first?",
          questionMy:
              "ဂိမ်းအသစ်တစ်ခုအတွက် ကုဒ်တစ်ကြောင်းမှ မရေးမီ ဂိမ်းဒီဇိုင်နာတစ်ဦးက ဦးစွာ အဘယ်အရာကို ဆုံးဖြတ်သင့်သနည်း။",
          optionsEn: [
            "What colour the loading screen will be",
            "The game's genre, goal and rules",
            "Which font the credits will use",
            "How much the game will cost to buy",
          ],
          optionsMy: [
            "Loading screen ၏ အရောင်ကို ဆုံးဖြတ်ရန်",
            "ဂိမ်း၏ အမျိုးအစား၊ ရည်မှန်းချက်နှင့် စည်းမျဉ်းများ",
            "Credits တွင် သုံးမည့် Font",
            "ဂိမ်းဝယ်ယူရန် ကုန်ကျစရိတ်",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn: "What does a game's \"goal\" mean?",
          questionMy:
              "ဂိမ်းတစ်ခု၏ \"ရည်မှန်းချက် (goal)\" ဆိုသည်မှာ အဘယ်အဓိပ္ပာယ်ရှိသနည်း။",
          optionsEn: [
            "The name of the game's main character",
            "What the player is trying to achieve in order to win",
            "The number of levels the game has",
            "The price of the game",
          ],
          optionsMy: [
            "ဂိမ်း၏ အဓိကဇာတ်ကောင်၏ အမည်",
            "ရှုံးနိမ့်ခြင်းမှ ကာကွယ်ရန် ကစားသမားက ရရှိရန်ကြိုးစားသော အရာ",
            "ဂိမ်းရှိ အဆင့်အရေအတွက်",
            "ဂိမ်း၏ ဈေးနှုန်း",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi wants her classmates to enjoy her new game. Why does she plan a design document before coding?",
          questionMy:
              "နှင်းချည်သည် သူမ၏ ဂိမ်းသစ်ကို အတန်းဖော်များ နှစ်သက်စေလိုသည်။ ကုဒ်မရေးမီ Design Document တစ်ခု စီစဉ်ရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "It stops the game from having any bugs at all",
            "It helps her think through genre, goal and rules clearly before building anything",
            "It is required by every coding app automatically",
            "It replaces the need to test the game afterwards",
          ],
          optionsMy: [
            "ဂိမ်းတွင် bug လုံးဝ မရှိစေရန် ကာကွယ်ပေးသည်",
            "မည်သည့်အရာမျှ မတည်ဆောက်မီ အမျိုးအစား၊ ရည်မှန်းချက်နှင့် စည်းမျဉ်းများကို ရှင်းလင်းစွာ စဉ်းစားနိုင်စေသည်",
            "ကုဒ်ရေးအက်ပ်တိုင်းက အလိုအလျောက် တောင်းဆိုသည်",
            "ဂိမ်းကို နောက်ပိုင်းစမ်းသပ်ရန် မလိုအပ်စေတော့ပါ",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn: "What are game \"rules\"?",
          questionMy: "ဂိမ်း \"စည်းမျဉ်းများ (rules)\" ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The instructions that decide what the player can and cannot do, and how the game is won or lost",
            "The list of people who tested the game",
            "The colours used for the backdrop",
            "The name printed on the loading screen",
          ],
          optionsMy: [
            "ကစားသမား လုပ်နိုင်သည်၊ မလုပ်နိုင်သည်များနှင့် ဂိမ်းအနိုင်ရ/ရှုံးနိမ့်ပုံကို ဆုံးဖြတ်ပေးသော ညွှန်ကြားချက်များ",
            "ဂိမ်းကို စမ်းသပ်ခဲ့သူများ၏ စာရင်း",
            "နောက်ခံအတွက် အသုံးပြုသော အရောင်များ",
            "Loading screen ပေါ်တွင် ပုံနှိပ်ထားသော အမည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is an example of a simple game genre?",
          questionMy:
              "အောက်ပါတို့တွင် ရိုးရှင်းသော ဂိမ်းအမျိုးအစား၏ ဥပမာမှာ အဘယ်နည်း။",
          optionsEn: [
            "A maze-chase game",
            "A file folder",
            "A print() command",
            "A spreadsheet formula",
          ],
          optionsMy: [
            "ရွှံ့ကွေ့လမ်းအတွင်း လိုက်ဖမ်းသည့် ဂိမ်း (maze-chase)",
            "ဖိုင်တွဲတစ်ခု",
            "print() command တစ်ခု",
            "ဇယားဖော်မြူလာတစ်ခု",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w17-d2",
      dayNumber: 2,
      titleEn: "Match the Game Planning Vocabulary",
      titleMy: "ဂိမ်းစီစဉ်ခြင်း ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w17-dm-1",
          termEn: "Genre",
          termMy: "အမျိုးအစား (Genre)",
          matchEn:
              "The general type or category a game belongs to, such as maze-chase or racing",
          matchMy:
              "ရွှံ့ကွေ့လမ်းလိုက်ဖမ်းခြင်း သို့မဟုတ် ပြေးပွဲကဲ့သို့ ဂိမ်းတစ်ခုပါဝင်သော ယေဘုယျအမျိုးအစား",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w17-dm-2",
          termEn: "Goal",
          termMy: "ရည်မှန်းချက် (Goal)",
          matchEn: "What the player must achieve to win the game",
          matchMy: "ဂိမ်းအနိုင်ရရှိရန် ကစားသမားက ဆောင်ရွက်ရမည့် အရာ",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w17-dm-3",
          termEn: "Rules",
          termMy: "စည်းမျဉ်းများ (Rules)",
          matchEn:
              "The instructions that decide what a player can and cannot do in the game",
          matchMy:
              "ကစားသမားလုပ်နိုင်သည်၊ မလုပ်နိုင်သည်များကို ဆုံးဖြတ်ပေးသော ညွှန်ကြားချက်များ",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w17-dm-4",
          termEn: "Design document",
          termMy: "Design Document",
          matchEn:
              "A written plan describing a game's genre, goal, rules and characters before coding begins",
          matchMy:
              "ကုဒ်မစတင်မီ ဂိမ်း၏ အမျိုးအစား၊ ရည်မှန်းချက်၊ စည်းမျဉ်းများနှင့် ဇာတ်ကောင်များကို ဖော်ပြထားသော ရေးသားစီစဉ်ချက်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w17-dm-5",
          termEn: "Storyboard",
          termMy: "Storyboard",
          matchEn:
              "A series of simple sketches showing how a game's screens will look and change",
          matchMy:
              "ဂိမ်း၏ မျက်နှာပြင်များ မည်သို့ပုံသဏ္ဌာန်ရှိပြီး ပြောင်းလဲသွားမည်ကို ပြသည့် ရိုးရှင်းသော ရေးဆွဲပုံများ တစ်စီးတန်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w17-dm-6",
          termEn: "Player",
          termMy: "ကစားသမား (Player)",
          matchEn:
              "The person controlling the game's actions in order to try to reach the goal",
          matchMy:
              "ရည်မှန်းချက်ကို ရောက်ရှိရန် ဂိမ်းလုပ်ဆောင်ချက်များကို ထိန်းချုပ်နေသော လူပုဂ္ဂိုလ်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w17-d3",
      dayNumber: 3,
      titleEn: "Sort: Planning Stage or Coding Stage?",
      titleMy: "စီစစ်ကြမည် - စီစဉ်သည့်အဆင့်လား၊ ကုဒ်ရေးအဆင့်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Planning Stage", "Coding Stage"],
        bucketsMy: ["စီစဉ်သည့်အဆင့်", "ကုဒ်ရေးသည့်အဆင့်"],
        items: [
          SortingItem(
            id: "y6comp-w17-sort-1",
            labelEn:
                "Sketching a storyboard of the game's main screens on paper",
            labelMy:
                "ဂိမ်း၏ အဓိကမျက်နှာပြင်များကို စာရွက်ပေါ်တွင် Storyboard ရေးဆွဲခြင်း",
            correctBucketEn: "Planning Stage",
            correctBucketMy: "စီစဉ်သည့်အဆင့်",
          ),
          SortingItem(
            id: "y6comp-w17-sort-2",
            labelEn:
                "Typing the exact command that moves a sprite across the screen",
            labelMy:
                "Sprite ကို မျက်နှာပြင်ပေါ်ရွှေ့ပေးမည့် command ကို အတိအကျ ရိုက်ထည့်ခြင်း",
            correctBucketEn: "Coding Stage",
            correctBucketMy: "ကုဒ်ရေးသည့်အဆင့်",
          ),
          SortingItem(
            id: "y6comp-w17-sort-3",
            labelEn:
                "Deciding whether the game will be a maze-chase or a racing game",
            labelMy:
                "ဂိမ်းသည် ရွှံ့ကွေ့လမ်းလိုက်ဖမ်းခြင်း သို့မဟုတ် ပြေးပွဲဂိမ်း ဖြစ်မည်ကို ဆုံးဖြတ်ခြင်း",
            correctBucketEn: "Planning Stage",
            correctBucketMy: "စီစဉ်သည့်အဆင့်",
          ),
          SortingItem(
            id: "y6comp-w17-sort-4",
            labelEn:
                "Writing the if-statement that checks whether the player has won",
            labelMy:
                "ကစားသမား အနိုင်ရရှိမရှိကို စစ်ဆေးမည့် if-statement ကို ရေးသားခြင်း",
            correctBucketEn: "Coding Stage",
            correctBucketMy: "ကုဒ်ရေးသည့်အဆင့်",
          ),
          SortingItem(
            id: "y6comp-w17-sort-5",
            labelEn:
                "Writing a list of rules explaining what the player can and cannot do",
            labelMy:
                "ကစားသမား လုပ်နိုင်သည်၊ မလုပ်နိုင်သည်များကို ရှင်းပြသော စည်းမျဉ်းစာရင်း ရေးသားခြင်း",
            correctBucketEn: "Planning Stage",
            correctBucketMy: "စီစဉ်သည့်အဆင့်",
          ),
          SortingItem(
            id: "y6comp-w17-sort-6",
            labelEn:
                "Running the game to test whether the sprite actually moves",
            labelMy:
                "Sprite အမှန်တကယ် ရွေ့လျားမရွေ့လျားကို စမ်းသပ်ရန် ဂိမ်းကို Run လုပ်ခြင်း",
            correctBucketEn: "Coding Stage",
            correctBucketMy: "ကုဒ်ရေးသည့်အဆင့်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w17-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Database Becomes a Design Brief",
      titleMy:
          "စာဖတ်ခြင်း - နှင်းချည်၏ ဒေတာဘေ့စ်သည် Design Brief တစ်ခု ဖြစ်လာခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Database Becomes a Design Brief",
        titleMy: "နှင်းချည်၏ ဒေတာဘေ့စ်သည် Design Brief တစ်ခု ဖြစ်လာခြင်း",
        passageEn:
            "Ms. Thanda announces that Term 5's project will be different from anything Nay Chi has built before: each pupil will plan and code their own small game. Nay Chi is thrilled, but she is not sure which genre her classmates would enjoy most -- until she remembers the class hobbies database she built back in Week 16.\n\nInstead of starting from a guess, Nay Chi reopens her old database and writes a fresh search query: pupils whose favourite subject field says \"coding\" AND whose hobbies field mentions \"drawing\" or \"puzzles\". The search returns a neat list of names, sorted in descending order by how many hobbies each pupil recorded. Nay Chi realises this group would probably enjoy a colourful maze-chase game more than a fast-paced racing game, since several of them listed \"puzzles\" as a favourite hobby.\n\nWith real evidence instead of a guess, Nay Chi opens a blank design document. She writes down her genre (a maze-chase game), her goal (collect all the stars while avoiding a chasing monster), and her first three rules. \"My old database is helping me plan a brand-new game,\" she tells Ms. Thanda proudly, sketching her first storyboard sketch on the next line of her notebook.",
        passageMy:
            "ဒေါ်သန္တာက Term 5 ၏ စီမံကိန်းသည် နှင်းချည် ယခင်တည်ဆောက်ဖူးသည့် မည်သည့်အရာနှင့်မျှ မတူကြောင်း ကြေညာသည် -- ကျောင်းသားတစ်ဦးစီသည် သူတို့ကိုယ်ပိုင် ဂိမ်းငယ်တစ်ခုကို စီစဉ်၍ ကုဒ်ရေးရမည်ဖြစ်သည်။ နှင်းချည် အလွန်ပျော်ရွှင်သော်လည်း အတန်းဖော်များ မည်သည့်အမျိုးအစားကို အနှစ်သက်ဆုံးဖြစ်မည်ကို မသေချာ -- Week 16 တွင် သူမတည်ဆောက်ခဲ့သော အတန်းဝါသနာ ဒေတာဘေ့စ်ကို ပြန်သတိရမိသည့်အထိ။\n\nခန့်မှန်းချက်တစ်ခုမှ မစတင်ဘဲ နှင်းချည်သည် သူမ၏ ဒေတာဘေ့စ်ဟောင်းကို ပြန်ဖွင့်ပြီး အသစ်တစ်ခု search query ရေးသည် -- အကြိုက်ဆုံးဘာသာရပ် field တွင် \"coding\" ဟုဖော်ပြပြီး ဝါသနာ field တွင် \"ပန်းချီရေးဆွဲခြင်း\" သို့မဟုတ် \"ပဟေဠိ\" ဟု ဖော်ပြထားသော ကျောင်းသားများ။ ရှာဖွေမှုသည် ဝါသနာများ မည်မျှမှတ်တမ်းတင်ထားသည်ဆိုသည့်အလိုက် ဆင်းသက်အစီအစဉ်ဖြင့် စီထားသော အမည်စာရင်းသန့်ကို ပြန်ပေးသည်။ ၎င်းတို့ထဲမှ အချို့က \"ပဟေဠိ\" ကို အကြိုက်ဆုံးဝါသနာအဖြစ် စာရင်းပြုစုထားသဖြင့် ဤအဖွဲ့သည် အမြန်ပြေးပွဲဂိမ်းထက် ရောင်စုံရွှံ့ကွေ့လမ်းလိုက်ဖမ်းသည့် ဂိမ်းတစ်ခုကို ပိုနှစ်သက်နိုင်ကြောင်း နှင်းချည် သဘောပေါက်သွားသည်။\n\nခန့်မှန်းချက်အစား အထောက်အထားစစ်ဆေးမှုအမှန်ဖြင့် နှင်းချည်သည် ဗလာ Design Document တစ်ခုကို ဖွင့်လိုက်သည်။ သူမ၏ အမျိုးအစား (ရွှံ့ကွေ့လမ်းလိုက်ဖမ်းသည့်ဂိမ်း)၊ ရည်မှန်းချက် (လိုက်ဖမ်းနေသောသတ္တဝါကို ရှောင်ရှားလျက် ကြယ်များအားလုံးကို စုဆောင်းခြင်း) နှင့် သူမ၏ ပထမဆုံးစည်းမျဉ်းသုံးခုကို ရေးမှတ်လိုက်သည်။ \"ငါ့ဒေတာဘေ့စ်ဟောင်းက ဂိမ်းအသစ်တစ်ခု စီစဉ်ဖို့ တကယ်ကူညီပေးနေတယ်\" ဟု သူမ ဒေါ်သန္တာအား ဂုဏ်ယူစွာ ပြောပြသည်၊ သူမ၏ notebook တွင် ပထမဆုံး Storyboard ပုံကို ဆက်ရေးဆွဲလျက်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What is Term 5's project, according to Ms. Thanda?",
            questionMy:
                "ဒေါ်သန္တာ၏ ဆိုနေချက်အရ Term 5 ၏ စီမံကိန်းမှာ အဘယ်နည်း။",
            optionsEn: [
              "Each pupil plans and codes their own small game",
              "The class rebuilds the school website",
              "Every pupil writes a spreadsheet formula",
              "The class watches a documentary about hardware",
            ],
            optionsMy: [
              "ကျောင်းသားတစ်ဦးစီက ကိုယ်ပိုင် ဂိမ်းငယ်တစ်ခုကို စီစဉ်၍ ကုဒ်ရေးရမည်",
              "အတန်းက ကျောင်း website ကို ပြန်တည်ဆောက်မည်",
              "ကျောင်းသားတိုင်းက ဇယားဖော်မြူလာ ရေးရမည်",
              "အတန်းက Hardware အကြောင်း မှတ်တမ်းရုပ်ရှင် ကြည့်ရမည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What does Nay Chi reopen to help her decide on a game genre?",
            questionMy:
                "ဂိမ်းအမျိုးအစား ဆုံးဖြတ်ရန်အတွက် နှင်းချည် အဘယ်အရာကို ပြန်ဖွင့်သနည်း။",
            optionsEn: [
              "Her old class hobbies database from Week 16",
              "A search engine",
              "Her school report card",
              "A different pupil's design document",
            ],
            optionsMy: [
              "Week 16 က သူမ၏ အတန်းဝါသနာ ဒေတာဘေ့စ်ဟောင်း",
              "Search Engine",
              "သူမ၏ ကျောင်းအစီရင်ခံစာ",
              "အခြားကျောင်းသားတစ်ဦး၏ Design Document",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What search query does Nay Chi write in the database?",
            questionMy:
                "ဒေတာဘေ့စ်ထဲတွင် နှင်းချည် အဘယ် search query ကို ရေးသနည်း။",
            optionsEn: [
              "Favourite subject is \"coding\" AND hobbies mention \"drawing\" or \"puzzles\"",
              "Only pupils whose age is exactly eleven",
              "Only pupils who dislike computers",
              "Favourite subject is \"art\" OR favourite subject is \"music\"",
            ],
            optionsMy: [
              "အကြိုက်ဆုံးဘာသာရပ်သည် \"coding\" ဖြစ်ပြီး ဝါသနာများက \"ပန်းချီရေးဆွဲခြင်း\" သို့မဟုတ် \"ပဟေဠိ\" ဖော်ပြသည်",
              "အသက် တစ်ဆယ့်တစ်နှစ်အတိအကျ ရှိသော ကျောင်းသားများသာ",
              "ကွန်ပျူတာကို မကြိုက်သော ကျောင်းသားများသာ",
              "အကြိုက်ဆုံးဘာသာရပ် \"အနုပညာ\" သို့မဟုတ် \"ဂီတ\" ဖြစ်ခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How is the search result list sorted?",
            questionMy: "ရှာဖွေမှုရလဒ် စာရင်းကို မည်ကဲ့သို့ စီထားသနည်း။",
            optionsEn: [
              "Alphabetically by first name only",
              "In descending order by how many hobbies each pupil recorded",
              "Randomly, in no particular order",
              "By height, tallest pupil first",
            ],
            optionsMy: [
              "ရှေ့နာမည်အလိုက် အက္ခရာစဉ်သာ",
              "ကျောင်းသားတစ်ဦးစီ မှတ်တမ်းတင်ထားသော ဝါသနာအရေအတွက်ဖြင့် ဆင်းသက်စီထားခြင်း",
              "အစီအစဉ်မရှိဘဲ ကျပန်း",
              "အရပ်အမြင့်ဆုံး ကျောင်းသားကို ဦးစားပေးစီထားခြင်း",
            ],
            correctIndex: 1,
          ),
          QuizQuestion(
            questionEn:
                "What genre and goal does Nay Chi choose for her design document?",
            questionMy:
                "သူမ၏ Design Document အတွက် နှင်းချည် ရွေးချယ်သော အမျိုးအစားနှင့် ရည်မှန်းချက်မှာ အဘယ်နည်း။",
            optionsEn: [
              "A racing game where the player crosses the finish line first",
              "A quiz game where the player answers ten questions",
              "A maze-chase game where the player collects all the stars while avoiding a chasing monster",
              "A spreadsheet game where the player sorts numbers",
            ],
            optionsMy: [
              "အနိုင်ရရန် ဂီတလိုင်းကို အရင်ဆုံး ဖြတ်ရသည့် ပြေးပွဲဂိမ်း",
              "မေးခွန်းဆယ်ခု ဖြေဆိုရသည့် Quiz ဂိမ်း",
              "လိုက်ဖမ်းနေသောသတ္တဝါကို ရှောင်ရှားလျက် ကြယ်များအားလုံးကို စုဆောင်းရသည့် ရွှံ့ကွေ့လမ်းလိုက်ဖမ်းသည့်ဂိမ်း",
              "ဂဏန်းများကို စီရသည့် ဇယားဂိမ်း",
            ],
            correctIndex: 2,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w17-d5",
      dayNumber: 5,
      titleEn: "Game Planning Round-Up",
      titleMy: "ဂိမ်းစီစဉ်ခြင်း အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What should a designer decide before writing any code for a game?",
          questionMy:
              "ဂိမ်းအတွက် ကုဒ်တစ်ကြောင်းမျှ မရေးမီ ဒီဇိုင်နာတစ်ဦး အဘယ်အရာကို ဆုံးဖြတ်သင့်သနည်း။",
          optionsEn: [
            "The genre, goal and rules",
            "Which laptop brand to use",
            "How many friends will watch",
            "The credits music",
          ],
          optionsMy: [
            "အမျိုးအစား၊ ရည်မှန်းချက်နှင့် စည်းမျဉ်းများ",
            "အသုံးပြုမည့် Laptop အမှတ်တံဆိပ်",
            "ကြည့်ရှုမည့် သူငယ်ချင်းအရေအတွက်",
            "Credits တွင် သုံးမည့်တေးဂီတ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a design document used for?",
          questionMy: "Design Document ကို အဘယ်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Recording planning decisions such as genre, goal and rules before coding",
            "Storing the final finished game file only",
            "Replacing the need for testing",
            "Listing the price of the game",
          ],
          optionsMy: [
            "ကုဒ်မရေးမီ အမျိုးအစား၊ ရည်မှန်းချက်၊ စည်းမျဉ်းကဲ့သို့ စီစဉ်ဆုံးဖြတ်ချက်များကို မှတ်တမ်းတင်ရန်",
            "ပြီးစီးထားသော ဂိမ်းဖိုင်ကိုသာ သိမ်းဆည်းရန်",
            "စမ်းသပ်ခြင်းလုပ်ငန်း လိုအပ်ချက်ကို ဖယ်ရှားရန်",
            "ဂိမ်း၏ ဈေးနှုန်းကို ဖော်ပြရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's design document, what is her chosen game goal?",
          questionMy:
              "နှင်းချည်၏ Design Document တွင် သူမရွေးချယ်ထားသော ဂိမ်းရည်မှန်းချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Collect all the stars while avoiding a chasing monster",
            "Answer ten trivia questions correctly",
            "Sort a spreadsheet from smallest to largest",
            "Cross a finish line before a timer runs out",
          ],
          optionsMy: [
            "လိုက်ဖမ်းနေသောသတ္တဝါကို ရှောင်ရှားလျက် ကြယ်များအားလုံးကို စုဆောင်းရန်",
            "Trivia မေးခွန်း ဆယ်ခုကို မှန်ကန်စွာဖြေရန်",
            "ဇယားကို အသေးဆုံးမှ အကြီးဆုံးသို့ စီရန်",
            "အချိန်မကုန်ခင် ဂီတလိုင်းကို ဖြတ်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What tool did Nay Chi reuse from Term 4 to help plan her game genre?",
          questionMy:
              "သူမ၏ ဂိမ်းအမျိုးအစား စီစဉ်ရန် Term 4 မှ နှင်းချည် ပြန်အသုံးချသော tool မှာ အဘယ်နည်း။",
          optionsEn: [
            "A searchable, sortable class hobbies database",
            "A weather forecast website",
            "A calculator app",
            "A drawing tablet",
          ],
          optionsMy: [
            "ရှာဖွေနိုင်၊ စီနိုင်သော အတန်းဝါသနာ ဒေတာဘေ့စ်",
            "ရာသီဥတု ခန့်မှန်းချက် Website",
            "ဂဏန်းတွက်စက်အက်ပ်",
            "ပုံဆွဲ Tablet",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What comes right after planning stage decisions like genre and rules are written down?",
          questionMy:
              "အမျိုးအစားနှင့် စည်းမျဉ်းများကဲ့သို့ စီစဉ်သည့်အဆင့်ဆုံးဖြတ်ချက်များ ရေးမှတ်ပြီးနောက် ဆက်လက်ဖြစ်ပေါ်သည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Sketching a storyboard and then coding the game",
            "Deleting the whole plan and starting again randomly",
            "Immediately selling the game",
            "Skipping straight to writing credits",
          ],
          optionsMy: [
            "Storyboard ရေးဆွဲပြီးနောက် ဂိမ်းကို ကုဒ်ရေးခြင်း",
            "အစီအစဉ်တစ်ခုလုံးကို ဖျက်ပြီး ကျပန်းပြန်စတင်ခြင်း",
            "ဂိမ်းကို ချက်ချင်းရောင်းချခြင်း",
            "Credits ရေးရန် တိုက်ရိုက်ကျော်သွားခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek18 = CourseWeekDef(
  id: "course-year6-computing-w18",
  weekNumber: 18,
  titleEn: "Characters, Sprites and Backgrounds",
  titleMy: "ဇာတ်ကောင်၊ Sprite နှင့် နောက်ခံများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w18-d1",
      dayNumber: 1,
      titleEn: "Sprites, Costumes and Backdrops",
      titleMy: "Sprite၊ Costume နှင့် Backdrop များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In game design, what is a \"sprite\"?",
          questionMy:
              "ဂိမ်းဒီဇိုင်းတွင် \"Sprite\" ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A character or object that can move and be controlled in a game",
            "A type of coding error",
            "A file storage folder",
            "A search query keyword",
          ],
          optionsMy: [
            "ဂိမ်းတွင်း ရွေ့လျားနိုင်ပြီး ထိန်းချုပ်နိုင်သော ဇာတ်ကောင် သို့မဟုတ် ပစ္စည်း",
            "ကုဒ်ရေးအမှားတစ်မျိုး",
            "ဖိုင်သိမ်းဆည်းသော ဖိုင်တွဲ",
            "Search query စကားလုံးတစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a \"costume\" in game design?",
          questionMy:
              "ဂိမ်းဒီဇိုင်းတွင် \"Costume\" ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A different appearance a sprite can switch to, such as for animation",
            "The password protecting a game",
            "A rule about winning the game",
            "The genre of the game",
          ],
          optionsMy: [
            "ဇာတ်ကောင်တစ်ခု ပြောင်းလဲပြသနိုင်သော ပုံသဏ္ဌာန်တစ်ခု၊ ဥပမာ animation အတွက်",
            "ဂိမ်းကို ကာကွယ်ပေးသော စကားဝှက်",
            "ဂိမ်းအနိုင်ရရှိရေးဆိုင်ရာ စည်းမျဉ်းတစ်ခု",
            "ဂိမ်း၏ အမျိုးအစား",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi wants her maze-chase monster to look like it is walking. What should she use?",
          questionMy:
              "နှင်းချည်သည် သူမ၏ ရွှံ့ကွေ့လမ်းလိုက်ဖမ်းဂိမ်းရှိ သတ္တဝါကို လမ်းလျှောက်နေသည့် ပုံသဏ္ဌာန်ဖြစ်စေလိုသည်။ သူမ အဘယ်အရာကို အသုံးပြုသင့်သနည်း။",
          optionsEn: [
            "Two or more costumes that switch quickly to create movement",
            "A louder background music track",
            "A longer function name",
            "A brand-new coding language",
          ],
          optionsMy: [
            "ရွေ့လျားမှုပုံဖော်ရန် လျင်မြန်စွာ ပြောင်းလဲပေးသော Costume နှစ်ခု (သို့) ထို့ထက်ပို",
            "ပိုကျယ်လောင်သော နောက်ခံ တေးဂီတ",
            "ပိုရှည်သော function အမည်",
            "လုံးဝ Coding ဘာသာစကားအသစ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a \"backdrop\" (background) in a game?",
          questionMy:
              "ဂိမ်းတစ်ခုတွင် \"Backdrop\" (နောက်ခံ) ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "The scene or setting the sprites appear and move on top of",
            "A type of variable that stores a score",
            "A collision detection rule",
            "A sorting algorithm",
          ],
          optionsMy: [
            "Sprite များ ပေါ်လာပြီး ရွေ့လျားရာနေရာဖြစ်သော မြင်ကွင်း သို့မဟုတ် နောက်ခံ",
            "Score သိမ်းသော variable အမျိုးအစားတစ်ခု",
            "ပတ်သတ်ထိစပ်မှု စည်းမျဉ်းတစ်ခု",
            "Sorting algorithm တစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why do most game-making tools use an x/y coordinate grid for the stage?",
          questionMy:
              "ဂိမ်းဖန်တီးရေး Tool အများစုသည် Stage အတွက် x/y Coordinate grid ကို အဘယ့်ကြောင့် အသုံးပြုသနည်း။",
          optionsEn: [
            "It gives every exact position on the stage a precise pair of numbers",
            "It makes the game load faster",
            "It removes the need for sprites",
            "It changes the game's genre automatically",
          ],
          optionsMy: [
            "Stage ပေါ်ရှိ တည်နေရာအတိအကျတိုင်းကို ဂဏန်းအတွဲတစ်တွဲ တိကျစွာ ပေးနိုင်သည်",
            "ဂိမ်းကို ပိုမြန်စွာ load ဖြစ်စေသည်",
            "Sprite များ လိုအပ်ချက်ကို ဖယ်ရှားပေးသည်",
            "ဂိမ်း၏ အမျိုးအစားကို အလိုအလျောက် ပြောင်းပေးသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w18-d2",
      dayNumber: 2,
      titleEn: "Match the Sprite and Stage Vocabulary",
      titleMy: "Sprite နှင့် Stage ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w18-dm-1",
          termEn: "Sprite",
          termMy: "Sprite",
          matchEn:
              "A character or object in a game that can move and be controlled",
          matchMy:
              "ရွေ့လျားနိုင်ပြီး ထိန်းချုပ်နိုင်သော ဂိမ်းအတွင်းရှိ ဇာတ်ကောင် သို့မဟုတ် ပစ္စည်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w18-dm-2",
          termEn: "Costume",
          termMy: "Costume",
          matchEn:
              "A different look a sprite can switch between, often used to animate movement",
          matchMy:
              "Sprite တစ်ခု ပြောင်းလဲသုံးနိုင်သော ပုံသဏ္ဌာန်ကွဲပြားမှု၊ ရွေ့လျားမှုကို animation ပြသရန် အသုံးများသည်",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w18-dm-3",
          termEn: "Backdrop",
          termMy: "Backdrop",
          matchEn:
              "The background scene that sprites appear and move in front of",
          matchMy:
              "Sprite များ ပေါ်လာပြီး ရှေ့မှောက်တွင် ရွေ့လျားရာ နောက်ခံမြင်ကွင်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w18-dm-4",
          termEn: "x-coordinate",
          termMy: "x-Coordinate",
          matchEn:
              "The number describing a sprite's left-right position on the stage",
          matchMy: "Stage ပေါ်ရှိ Sprite ၏ ဘယ်-ညာ တည်နေရာကို ဖော်ပြသော ဂဏန်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w18-dm-5",
          termEn: "y-coordinate",
          termMy: "y-Coordinate",
          matchEn:
              "The number describing a sprite's up-down position on the stage",
          matchMy:
              "Stage ပေါ်ရှိ Sprite ၏ အပေါ်-အောက် တည်နေရာကို ဖော်ပြသော ဂဏန်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w18-dm-6",
          termEn: "Stage",
          termMy: "Stage",
          matchEn:
              "The whole visible screen area where a game's action takes place",
          matchMy:
              "ဂိမ်း၏ လှုပ်ရှားမှုများ ဖြစ်ပေါ်ရာ မျက်နှာပြင်ဧရိယာ တစ်ခုလုံး",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w18-d3",
      dayNumber: 3,
      titleEn: "Sort: Sprite Feature or Coordinate?",
      titleMy: "စီစစ်ကြမည် - Sprite Feature လား၊ Coordinate လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Sprite Feature", "Coordinate"],
        bucketsMy: ["Sprite Feature", "Coordinate"],
        items: [
          SortingItem(
            id: "y6comp-w18-sort-1",
            labelEn: "A costume showing the monster's left foot forward",
            labelMy: "သတ္တဝါ၏ ဘယ်ခြေထောက် ရှေ့ထွက်နေသော Costume တစ်ခု",
            correctBucketEn: "Sprite Feature",
            correctBucketMy: "Sprite Feature",
          ),
          SortingItem(
            id: "y6comp-w18-sort-2",
            labelEn: "The number 120, showing how far right a sprite has moved",
            labelMy:
                "Sprite တစ်ခု ညာဘက်သို့ မည်မျှရွေ့သွားသည်ကို ပြသည့် ဂဏန်း 120",
            correctBucketEn: "Coordinate",
            correctBucketMy: "Coordinate",
          ),
          SortingItem(
            id: "y6comp-w18-sort-3",
            labelEn: "A backdrop showing a green forest maze",
            labelMy: "စိမ်းလန်းသော တောရွှံ့ကွေ့လမ်း ပြသည့် Backdrop တစ်ခု",
            correctBucketEn: "Sprite Feature",
            correctBucketMy: "Sprite Feature",
          ),
          SortingItem(
            id: "y6comp-w18-sort-4",
            labelEn: "The number -50, showing how far down a sprite has moved",
            labelMy:
                "Sprite တစ်ခု အောက်သို့ မည်မျှရွေ့သွားသည်ကို ပြသည့် ဂဏန်း -50",
            correctBucketEn: "Coordinate",
            correctBucketMy: "Coordinate",
          ),
          SortingItem(
            id: "y6comp-w18-sort-5",
            labelEn: "A star sprite's shining, animated costume",
            labelMy: "ကြယ် sprite တစ်ခု၏ တောက်ပနေသော animation costume",
            correctBucketEn: "Sprite Feature",
            correctBucketMy: "Sprite Feature",
          ),
          SortingItem(
            id: "y6comp-w18-sort-6",
            labelEn:
                "A precise pair of numbers marking exactly where a sprite is on the stage",
            labelMy:
                "Sprite တစ်ခု Stage ပေါ်တွင် တည်ရှိရာနေရာကို အတိအကျ ဖော်ပြသည့် ဂဏန်းအတွဲ",
            correctBucketEn: "Coordinate",
            correctBucketMy: "Coordinate",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w18-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi Builds Her Stage",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည် သူမ၏ Stage ကို တည်ဆောက်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi Builds Her Stage",
        titleMy: "နှင်းချည် သူမ၏ Stage ကို တည်ဆောက်ခြင်း",
        passageEn:
            "With her design document finished, Nay Chi opens her game-making app to bring her maze-chase idea to life. First she chooses a backdrop: a green forest maze with narrow paths and leafy walls. It fills the whole stage, giving her game a proper setting for the very first time.\n\nNext, Nay Chi adds two sprites: a small golden star her player will collect, and a round purple monster that will chase the player through the maze. For the monster, she draws two costumes -- one with its left foot forward, one with its right foot forward -- and switches quickly between them so it looks like it is truly walking rather than gliding stiffly across the screen.\n\nFinally, Nay Chi experiments with the stage's coordinate grid, placing her star sprite at exactly x: 150, y: 80 near the top-right corner of the maze, and her monster sprite at x: -150, y: -80 in the bottom-left corner, as far from the star as possible. \"Now I know exactly where everything starts,\" she says, satisfied, ready to give her sprites some real game logic next.",
        passageMy:
            "သူမ၏ Design Document ပြီးစီးသွားသောအခါ နှင်းချည်သည် သူမ၏ ရွှံ့ကွေ့လမ်းလိုက်ဖမ်းအိုင်ဒီယာကို အသက်သွင်းရန် ဂိမ်းဖန်တီးရေးအက်ပ်ကို ဖွင့်လိုက်သည်။ ဦးစွာ Backdrop တစ်ခု ရွေးချယ်သည် -- ကျဉ်းမြောင်းသော လမ်းကြောင်းနှင့် အရွက်များနံရံရှိ စိမ်းလန်းသော တောရွှံ့ကွေ့လမ်း။ ၎င်းသည် Stage တစ်ခုလုံးကို ဖုံးလွှမ်းထားပြီး ဂိမ်းအတွက် ပထမဆုံးအကြိမ် စစ်မှန်သော အခင်းအကျင်းတစ်ခု ပေးလိုက်သည်။\n\nထို့နောက် နှင်းချည်သည် Sprite နှစ်ခု ထည့်သွင်းသည် -- ကစားသမား စုဆောင်းရမည့် အနုသေးငယ်သော ရွှေရောင်ကြယ်တစ်ခုနှင့်၊ ကစားသမားကို ရွှံ့ကွေ့လမ်းအတွင်း လိုက်ဖမ်းမည့် လုံးဝန်းသော ခရမ်းရောင်သတ္တဝါတစ်ခု။ သတ္တဝါအတွက် Costume နှစ်ခု ရေးဆွဲသည် -- တစ်ခုတွင် ဘယ်ခြေထောက်ရှေ့ထွက်၊ တစ်ခုတွင် ညာခြေထောက်ရှေ့ထွက် -- ပြီး၎င်းတို့ကို လျင်မြန်စွာ ပြောင်းလိုက်ခြင်းဖြင့် စက်ရိုက်စွာ မျက်နှာပြင်ကို ချောချောလျှော့သွားမည့်အစား တကယ်လမ်းလျှောက်နေသကဲ့သို့ ပုံသဏ္ဌာန်ဖြစ်စေသည်။\n\nနောက်ဆုံးတွင် နှင်းချည်သည် Stage ၏ Coordinate Grid ကို စမ်းသပ်ကာ သူမ၏ ကြယ် sprite ကို ရွှံ့ကွေ့လမ်း၏ အထက်-ညာဘက်ထောင့်အနီးရှိ x: 150, y: 80 တွင် အတိအကျ ချထားပြီး၊ သူမ၏ သတ္တဝါ sprite ကို ကြယ်နှင့် အဝေးဆုံးဖြစ်စေရန် အောက်-ဘယ်ဘက်ထောင့်ရှိ x: -150, y: -80 တွင် ချထားသည်။ \"အခုတော့ အရာအားလုံး ဘယ်နေရာကနေ စတင်မယ်ဆိုတာ ငါအတိအကျ သိပြီ\" ဟု သူမ ကျေနပ်ဂုဏ်ယူစွာ ပြောလိုက်သည်၊ သူမ၏ sprite များအတွက် စစ်မှန်သော ဂိမ်း logic ကို ဆက်လက်ပေးရန် အသင့်ဖြစ်နေသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What backdrop does Nay Chi choose for her game?",
            questionMy:
                "သူမ၏ ဂိမ်းအတွက် နှင်းချည် အဘယ် Backdrop ကို ရွေးချယ်သနည်း။",
            optionsEn: [
              "A green forest maze with narrow paths",
              "A blank white screen",
              "A photo of her classroom",
              "A racing track",
            ],
            optionsMy: [
              "ကျဉ်းမြောင်းသော လမ်းကြောင်းရှိ စိမ်းလန်းသော တောရွှံ့ကွေ့လမ်း",
              "ဗလာအဖြူရောင် မျက်နှာပြင်",
              "သူမ၏ စာသင်ခန်း ဓာတ်ပုံ",
              "ပြေးပွဲလမ်းကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What two sprites does Nay Chi add to her game?",
            questionMy:
                "သူမ၏ ဂိမ်းသို့ နှင်းချည် Sprite နှစ်ခု မည်သည်တို့ကို ထည့်သွင်းသနည်း။",
            optionsEn: [
              "A golden star and a purple monster",
              "A red car and a blue car",
              "A teacher and a student",
              "A search box and a sort button",
            ],
            optionsMy: [
              "ရွှေရောင်ကြယ်နှင့် ခရမ်းရောင်သတ္တဝါ",
              "အနီရောင်ကားနှင့် အပြာရောင်ကား",
              "ဆရာမနှင့် ကျောင်းသား",
              "Search box နှင့် Sort ခလုတ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why does Nay Chi give the monster two different costumes?",
            questionMy:
                "သတ္တဝါကို Costume နှစ်ခုကွဲပြားပေးရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
            optionsEn: [
              "To switch quickly between them so it looks like it is truly walking",
              "To let the monster change genre",
              "To make the monster invisible",
              "To increase the monster's score",
            ],
            optionsMy: [
              "ချက်ချင်းပြောင်းလဲခြင်းဖြင့် တကယ်လမ်းလျှောက်နေသကဲ့သို့ ပုံသဏ္ဌာန်ဖြစ်စေရန်",
              "သတ္တဝါ၏ အမျိုးအစားကို ပြောင်းလဲရန်",
              "သတ္တဝါကို မမြင်နိုင်အောင် ပြုလုပ်ရန်",
              "သတ္တဝါ၏ Score ကို တိုးမြှင့်ရန်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Where does Nay Chi place her star sprite using the coordinate grid?",
            questionMy:
                "Coordinate Grid ကို အသုံးပြု၍ နှင်းချည် သူမ၏ ကြယ် sprite ကို မည်သည့်နေရာတွင် ချထားသနည်း။",
            optionsEn: [
              "x: 150, y: 80, near the top-right corner",
              "x: 0, y: 0, in the exact centre",
              "x: -150, y: -80, in the bottom-left corner",
              "Outside the stage entirely",
            ],
            optionsMy: [
              "အထက်-ညာဘက်ထောင့်အနီးရှိ x: 150, y: 80",
              "ဗဟိုချက်အတိအကျရှိ x: 0, y: 0",
              "အောက်-ဘယ်ဘက်ထောင့်ရှိ x: -150, y: -80",
              "Stage အပြင်ဘက် လုံးဝ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What does Nay Chi say she is ready for at the end of the passage?",
            questionMy:
                "စာပိုဒ်အဆုံးတွင် သူမ အဘယ်အရာအတွက် အသင့်ဖြစ်နေကြောင်း နှင်းချည် ပြောသနည်း။",
            optionsEn: [
              "Giving her sprites some real game logic",
              "Deleting her whole project",
              "Choosing a completely new genre",
              "Selling her game to a shop",
            ],
            optionsMy: [
              "သူမ၏ sprite များအတွက် စစ်မှန်သော ဂိမ်း logic ပေးရန်",
              "သူမ၏ စီမံကိန်းတစ်ခုလုံးကို ဖျက်ရန်",
              "လုံးဝ အမျိုးအစားအသစ်တစ်ခု ရွေးချယ်ရန်",
              "သူမ၏ ဂိမ်းကို ဆိုင်တစ်ဆိုင်သို့ ရောင်းချရန်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w18-d5",
      dayNumber: 5,
      titleEn: "Sprites and Backgrounds Round-Up",
      titleMy: "Sprite နှင့် နောက်ခံများ အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a sprite?",
          questionMy: "Sprite ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A character or object that can move and be controlled in a game",
            "A hidden coding error",
            "A saved search query",
            "A type of backdrop only",
          ],
          optionsMy: [
            "ဂိမ်းတွင်း ရွေ့လျားနိုင်ပြီး ထိန်းချုပ်နိုင်သော ဇာတ်ကောင် သို့မဟုတ် ပစ္စည်း",
            "ဖုံးကွယ်ထားသော ကုဒ်အမှား",
            "သိမ်းဆည်းထားသော search query",
            "Backdrop အမျိုးအစားတစ်ခုသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does switching between costumes quickly create?",
          questionMy:
              "Costume များကို လျင်မြန်စွာ ပြောင်းလဲခြင်းက အဘယ်ရလဒ် ဖြစ်ပေါ်စေသနည်း။",
          optionsEn: [
            "The appearance of movement or animation",
            "A new backdrop",
            "A different genre",
            "A search filter",
          ],
          optionsMy: [
            "ရွေ့လျားမှု သို့မဟုတ် Animation ပုံသဏ္ဌာန်",
            "Backdrop အသစ်",
            "အမျိုးအစားကွဲပြားမှု",
            "Search filter",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does an x/y coordinate pair describe?",
          questionMy: "x/y Coordinate အတွဲတစ်ခု၏ ဖော်ပြချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A sprite's exact position on the stage",
            "The colour of a backdrop",
            "The name of a function",
            "A search keyword",
          ],
          optionsMy: [
            "Stage ပေါ်ရှိ Sprite ၏ အတိအကျ တည်နေရာ",
            "Backdrop ၏ အရောင်",
            "Function တစ်ခု၏ အမည်",
            "Search keyword တစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In Nay Chi's game, what is the backdrop?",
          questionMy: "နှင်းချည်၏ ဂိမ်းတွင် Backdrop သည် အဘယ်နည်း။",
          optionsEn: [
            "A green forest maze",
            "A racing track",
            "A blank page",
            "A spreadsheet grid",
          ],
          optionsMy: [
            "စိမ်းလန်းသော တောရွှံ့ကွေ့လမ်း",
            "ပြေးပွဲလမ်းကြောင်း",
            "ဗလာစာမျက်နှာ",
            "ဇယား grid",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why does Nay Chi place her star and monster sprites at opposite corners of the stage?",
          questionMy:
              "ကြယ်နှင့် သတ္တဝါ sprite များကို Stage ၏ ဆန့်ကျင်ဘက်ထောင့်များတွင် နှင်းချည် ချထားသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "To place them as far apart as possible at the start",
            "Because coordinates must always be negative",
            "To hide the star from the player",
            "Because it changes the game's genre",
          ],
          optionsMy: [
            "စတင်ချိန်တွင် တတ်နိုင်သမျှ ဝေးကွာစွာ ချထားရန်",
            "Coordinate များသည် အမြဲ အနှုတ်ဂဏန်း ဖြစ်ရမည်ဖြစ်၍",
            "ကစားသမားထံမှ ကြယ်ကို ဖျောက်ထားရန်",
            "ဂိမ်း၏ အမျိုးအစားကို ပြောင်းလဲပေးသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek19 = CourseWeekDef(
  id: "course-year6-computing-w19",
  weekNumber: 19,
  titleEn: "Game Logic: Score, Lives and Collisions",
  titleMy: "ဂိမ်း Logic - Score၊ Lives နှင့် ထိစပ်မှုများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w19-d1",
      dayNumber: 1,
      titleEn: "Score Variables and Collision Events",
      titleMy: "Score Variable များနှင့် ထိစပ်မှု Event များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What kind of variable would a game use to keep track of how many stars a player has collected?",
          questionMy:
              "ကစားသမား ကြယ်မည်မျှ စုဆောင်းထားသည်ကို မှတ်တမ်းတင်ရန် ဂိမ်းတစ်ခုက မည်သည့်အမျိုးအစား Variable ကို အသုံးပြုမည်နည်း။",
          optionsEn: [
            "A score variable that increases each time a star is collected",
            "A backdrop variable",
            "A costume variable",
            "A genre variable",
          ],
          optionsMy: [
            "ကြယ်တစ်ခု စုဆောင်းမိတိုင်း တိုးလာသော Score variable",
            "Backdrop variable",
            "Costume variable",
            "Genre variable",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is a \"collision\" in a game, such as Nay Chi's maze-chase?",
          questionMy:
              "နှင်းချည်၏ ရွှံ့ကွေ့လမ်းလိုက်ဖမ်းဂိမ်းကဲ့သို့သော ဂိမ်းတွင် \"ထိစပ်မှု (collision)\" ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "When two sprites touch each other on the stage",
            "When a variable's name is misspelled",
            "When the backdrop changes colour",
            "When the player closes the app",
          ],
          optionsMy: [
            "Sprite နှစ်ခု Stage ပေါ်တွင် အချင်းချင်း ထိတွေ့သောအခါ",
            "Variable တစ်ခု၏ အမည်ကို စာလုံးမှားရေးမိသောအခါ",
            "Backdrop ၏ အရောင် ပြောင်းလဲသွားသောအခါ",
            "ကစားသမားက အက်ပ်ကို ပိတ်လိုက်သောအခါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's game, what should happen when her player sprite touches the star sprite?",
          questionMy:
              "နှင်းချည်၏ ဂိမ်းတွင် ကစားသမား sprite သည် ကြယ် sprite ကို ထိတွေ့လိုက်ပါက အဘယ်အရာ ဖြစ်ပေါ်သင့်သနည်း။",
          optionsEn: [
            "The score variable increases and the star disappears",
            "The whole game closes automatically",
            "The backdrop deletes itself",
            "Nothing at all should happen",
          ],
          optionsMy: [
            "Score variable တိုးလာပြီး ကြယ် ပျောက်သွားသည်",
            "ဂိမ်းတစ်ခုလုံး အလိုအလျောက် ပိတ်သွားသည်",
            "Backdrop သည် သူ့ကိုယ်သူ ဖျက်ပစ်သည်",
            "ဘာမှ လုံးဝ ဖြစ်ပေါ်မည်မဟုတ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What if-condition would decide when the player has lost the game due to running out of lives?",
          questionMy:
              "ကစားသမား၏ Lives ကုန်သွား၍ ဂိမ်းရှုံးနိမ့်ချိန်ကို ဆုံးဖြတ်မည့် if-condition မှာ အဘယ်နည်း။",
          optionsEn: [
            "If the lives variable reaches zero, then show a \"Game Over\" message",
            "If the backdrop is green, then increase the score",
            "If the sprite has two costumes, then end the game",
            "If the genre is maze-chase, then double the score",
          ],
          optionsMy: [
            "Lives variable သုည (0) ရောက်ပါက \"Game Over\" စာတန်း ပြရန်",
            "Backdrop သည် အစိမ်းရောင်ဖြစ်ပါက Score တိုးမြှင့်ရန်",
            "Sprite တွင် Costume နှစ်ခုရှိပါက ဂိမ်းကို ရပ်ရန်",
            "Genre သည် ရွှံ့ကွေ့လမ်းလိုက်ဖမ်း ဖြစ်ပါက Score နှစ်ဆတိုးရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why do game makers usually test collision and win/lose logic many times before finishing a game?",
          questionMy:
              "ဂိမ်းဖန်တီးသူများသည် ဂိမ်းကို မပြီးမီ ထိစပ်မှုနှင့် အနိုင်ရ/ရှုံးနိမ့် logic ကို အကြိမ်ကြိမ် အဘယ့်ကြောင့် စမ်းသပ်လေ့ရှိသနည်း။",
          optionsEn: [
            "To make sure the score, lives and win/lose rules all behave correctly for the player",
            "Because testing changes the game's genre",
            "Because it makes the backdrop more colourful",
            "Because it is required to name a sprite",
          ],
          optionsMy: [
            "Score၊ Lives နှင့် အနိုင်ရ/ရှုံးနိမ့် စည်းမျဉ်းများ ကစားသမားအတွက် မှန်ကန်စွာ လုပ်ဆောင်ကြောင်း သေချာစေရန်",
            "စမ်းသပ်ခြင်းက ဂိမ်း၏ Genre ကို ပြောင်းလဲစေသောကြောင့်",
            "Backdrop ကို ပိုရောင်စုံစေသောကြောင့်",
            "Sprite တစ်ခုကို အမည်ပေးရန် လိုအပ်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w19-d2",
      dayNumber: 2,
      titleEn: "Match the Game Logic Vocabulary",
      titleMy: "ဂိမ်း Logic ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w19-dm-1",
          termEn: "Score variable",
          termMy: "Score Variable",
          matchEn:
              "A number stored by the game that increases as the player achieves the goal",
          matchMy:
              "ကစားသမား ရည်မှန်းချက်ကို အောင်မြင်လာသည်နှင့်အမျှ တိုးလာသော ဂိမ်းသိမ်းဆည်းထားသည့် ဂဏန်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w19-dm-2",
          termEn: "Lives variable",
          termMy: "Lives Variable",
          matchEn:
              "A number that decreases when the player is caught, ending the game at zero",
          matchMy:
              "ကစားသမား ဖမ်းမိသောအခါ လျော့ကျသွားပြီး သုညရောက်လျှင် ဂိမ်းကို ရပ်တန့်စေသော ဂဏန်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w19-dm-3",
          termEn: "Collision",
          termMy: "ထိစပ်မှု (Collision)",
          matchEn: "The moment when two sprites touch each other on the stage",
          matchMy:
              "Sprite နှစ်ခု Stage ပေါ်တွင် အချင်းချင်း ထိတွေ့မိသည့်အချိန်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w19-dm-4",
          termEn: "Event",
          termMy: "Event",
          matchEn:
              "Something that happens in a game, such as a key press or a collision, that triggers a response",
          matchMy:
              "ခလုတ်နှိပ်ခြင်း သို့မဟုတ် ထိစပ်မှုကဲ့သို့ တုံ့ပြန်ချက်တစ်ခု ဖြစ်ပေါ်စေသော ဂိမ်းအတွင်း ဖြစ်ရပ်တစ်ခု",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w19-dm-5",
          termEn: "Win condition",
          termMy: "အနိုင်ရ Condition",
          matchEn:
              "The if-condition that decides when the player has achieved the game's goal",
          matchMy:
              "ကစားသမား ဂိမ်း၏ ရည်မှန်းချက်ကို အောင်မြင်ချိန်ကို ဆုံးဖြတ်ပေးသော if-condition",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w19-dm-6",
          termEn: "Lose condition",
          termMy: "ရှုံးနိမ့် Condition",
          matchEn:
              "The if-condition that decides when the player has failed the game, such as running out of lives",
          matchMy:
              "Lives ကုန်ဆုံးခြင်းကဲ့သို့ ကစားသမား ဂိမ်းတွင် ရှုံးနိမ့်ချိန်ကို ဆုံးဖြတ်ပေးသော if-condition",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w19-d3",
      dayNumber: 3,
      titleEn: "Sort: Win Logic or Lose Logic?",
      titleMy: "စီစစ်ကြမည် - အနိုင်ရ Logic လား၊ ရှုံးနိမ့် Logic လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Win Logic", "Lose Logic"],
        bucketsMy: ["အနိုင်ရ Logic", "ရှုံးနိမ့် Logic"],
        items: [
          SortingItem(
            id: "y6comp-w19-sort-1",
            labelEn: "If all stars have been collected, then show \"You Win!\"",
            labelMy: "ကြယ်အားလုံး စုဆောင်းပြီးပါက \"You Win!\" ဟု ပြရန်",
            correctBucketEn: "Win Logic",
            correctBucketMy: "အနိုင်ရ Logic",
          ),
          SortingItem(
            id: "y6comp-w19-sort-2",
            labelEn:
                "If the lives variable reaches zero, then show \"Game Over\"",
            labelMy: "Lives variable သုည ရောက်ပါက \"Game Over\" ဟု ပြရန်",
            correctBucketEn: "Lose Logic",
            correctBucketMy: "ရှုံးနိမ့် Logic",
          ),
          SortingItem(
            id: "y6comp-w19-sort-3",
            labelEn:
                "If the score reaches the target number, then the player has succeeded",
            labelMy:
                "Score သည် ပစ်မှတ်ဂဏန်းရောက်ပါက ကစားသမားသည် အောင်မြင်ပြီဖြစ်သည်",
            correctBucketEn: "Win Logic",
            correctBucketMy: "အနိုင်ရ Logic",
          ),
          SortingItem(
            id: "y6comp-w19-sort-4",
            labelEn:
                "If the monster sprite collides with the player three times, then end the game",
            labelMy:
                "သတ္တဝါ sprite သည် ကစားသမားနှင့် သုံးကြိမ် ထိစပ်ပါက ဂိမ်းကို ရပ်ရန်",
            correctBucketEn: "Lose Logic",
            correctBucketMy: "ရှုံးနိမ့် Logic",
          ),
          SortingItem(
            id: "y6comp-w19-sort-5",
            labelEn:
                "If the last star sprite disappears, then the player has achieved the goal",
            labelMy:
                "နောက်ဆုံးကြယ် sprite ပျောက်သွားပါက ကစားသမားသည် ရည်မှန်းချက်ကို ရရှိပြီဖြစ်သည်",
            correctBucketEn: "Win Logic",
            correctBucketMy: "အနိုင်ရ Logic",
          ),
          SortingItem(
            id: "y6comp-w19-sort-6",
            labelEn:
                "If the timer runs out before the goal is reached, then the player fails",
            labelMy:
                "ရည်မှန်းချက် မရောက်မီ အချိန်ကုန်သွားပါက ကစားသမား ရှုံးနိမ့်ပြီဖြစ်သည်",
            correctBucketEn: "Lose Logic",
            correctBucketMy: "ရှုံးနိမ့် Logic",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w19-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's First Playtest",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ ပထမဆုံး Playtest",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's First Playtest",
        titleMy: "နှင်းချည်၏ ပထမဆုံး Playtest",
        passageEn:
            "Nay Chi's maze now has a star, a chasing monster, and a proper backdrop, but nothing happens yet when they meet. She creates two variables, score and lives, both starting at zero and three. Then she writes her first piece of game logic: \"when the player sprite touches the star sprite, change score by 1, and hide the star.\" She runs the game, guides her player toward the star, and cheers as the number on her screen jumps from 0 to 1.\n\nNext, Nay Chi writes the trickier rule for the monster: \"when the player sprite touches the monster sprite, change lives by -1.\" She adds an if-condition underneath: \"if lives equals 0, then show Game Over and stop the game.\" To test it properly, she deliberately walks her player straight into the monster three times in a row, watching her lives counter fall from three to two, to one, to zero -- and, exactly as planned, \"Game Over\" appears on the screen.\n\nFinally, Nay Chi writes her win condition: \"if score equals 5, then show You Win! and stop the game,\" since she has placed exactly five stars around the maze. She plays through one more time, collecting every star carefully while dodging the monster, and grins when \"You Win!\" flashes across the screen. \"Just like my database queries had to be exactly right,\" she says, \"these conditions have to be exactly right too -- or the whole game breaks.\"",
        passageMy:
            "နှင်းချည်၏ ရွှံ့ကွေ့လမ်းတွင် ကြယ်၊ လိုက်ဖမ်းနေသောသတ္တဝါနှင့် စစ်မှန်သော Backdrop ရှိနှင့်ပြီးဖြစ်သော်လည်း ၎င်းတို့ တွေ့ဆုံသောအခါ ဘာမှ မဖြစ်ပေါ်သေးပါ။ သူမသည် Variable နှစ်ခု -- score နှင့် lives -- ကို ဖန်တီးလိုက်ပြီး၊ score ကို သုညနှင့် lives ကို သုံးဖြင့် စတင်ထားသည်။ ထို့နောက် သူမ၏ ပထမဆုံး ဂိမ်း Logic ကို ရေးသားသည် -- \"ကစားသမား sprite သည် ကြယ် sprite ကို ထိတွေ့လျှင် score ကို 1 တိုးပြီး ကြယ်ကို ဖျောက်ရန်\"။ သူမ ဂိမ်းကို Run လုပ်ပြီး ကစားသမားကို ကြယ်ဘက်သို့ ဦးတည်စေကာ မျက်နှာပြင်ပေါ်ရှိ ဂဏန်းသည် 0 မှ 1 သို့ ခုန်တက်သွားသည့်အတွက် ဝမ်းသာအားရ ဖြစ်သည်။\n\nထို့နောက် နှင်းချည်သည် သတ္တဝါအတွက် ပိုခက်ခဲသော စည်းမျဉ်းကို ရေးသည် -- \"ကစားသမား sprite သည် သတ္တဝါ sprite ကို ထိတွေ့လျှင် lives ကို -1 ပြောင်းရန်\"။ ၎င်းအောက်တွင် if-condition တစ်ခု ထပ်ထည့်သည် -- \"lives သည် 0 နှင့်ညီလျှင် Game Over ဟု ပြပြီး ဂိမ်းကို ရပ်ရန်\"။ ကောင်းစွာစမ်းသပ်ရန် သူမသည် သူမ၏ ကစားသမားကို သတ္တဝါဘက်သို့ တမင်တကာ ဆက်တိုက်သုံးကြိမ် လျှောက်သွားစေကာ Lives ကောင်တာ သုံးမှ နှစ်၊ နှစ်မှ တစ်၊ တစ်မှ သုညသို့ ကျဆင်းသွားသည်ကို ကြည့်နေသည် -- စီစဉ်ထားသည့်အတိုင်း အတိအကျ \"Game Over\" ဟူသော စာသည် မျက်နှာပြင်ပေါ်တွင် ပေါ်လာသည်။\n\nနောက်ဆုံးတွင် နှင်းချည်သည် ကြယ်ငါးခုကို ရွှံ့ကွေ့လမ်းတစ်ဝိုက်တွင် အတိအကျ ချထားထားသည့်အတွက် သူမ၏ အနိုင်ရ Condition ကို ရေးသည် -- \"score သည် 5 နှင့်ညီလျှင် You Win! ဟု ပြပြီး ဂိမ်းကို ရပ်ရန်\"။ သူမသည် ကြယ်တိုင်းကို သတိထား၍ စုဆောင်းလျက် သတ္တဝါကို ရှောင်ရှားကာ တစ်ကြိမ်ပြန်ကစားကြည့်ရာ \"You Win!\" ဟူသော စာသည် မျက်နှာပြင်ပေါ်တွင် တောက်ပလင်းလက်လာသောအခါ ပြုံးမိသည်။ \"ငါ့ဒေတာဘေ့စ် query တွေက တိကျရမယ်ဆိုသလိုပဲ\" ဟု သူမပြောသည်၊ \"ဒီ condition တွေလည်း အတိအကျ ရှိရမယ် -- မဟုတ်ရင် ဂိမ်းတစ်ခုလုံး ပျက်သွားနိုင်တယ်။\"",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What two variables does Nay Chi create for her game?",
            questionMy:
                "သူမ၏ ဂိမ်းအတွက် နှင်းချည် Variable နှစ်ခု မည်သည်တို့ကို ဖန်တီးသနည်း။",
            optionsEn: [
              "Score and lives",
              "Genre and goal",
              "Backdrop and costume",
              "Search and sort",
            ],
            optionsMy: [
              "Score နှင့် Lives",
              "Genre နှင့် Goal",
              "Backdrop နှင့် Costume",
              "Search နှင့် Sort",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What happens when the player sprite touches the star sprite?",
            questionMy:
                "ကစားသမား sprite သည် ကြယ် sprite ကို ထိတွေ့လိုက်ပါက အဘယ်အရာ ဖြစ်ပေါ်သနည်း။",
            optionsEn: [
              "Score increases by 1 and the star hides",
              "Lives increase by 1",
              "The backdrop changes colour",
              "Nothing happens",
            ],
            optionsMy: [
              "Score 1 တိုးပြီး ကြယ် ဖျောက်သွားသည်",
              "Lives 1 တိုးသည်",
              "Backdrop ၏ အရောင် ပြောင်းသွားသည်",
              "ဘာမှ မဖြစ်ပေါ်ပါ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How does Nay Chi test her lose condition?",
            questionMy:
                "သူမ၏ ရှုံးနိမ့် Condition ကို နှင်းချည် မည်ကဲ့သို့ စမ်းသပ်သနည်း။",
            optionsEn: [
              "By walking her player into the monster three times in a row",
              "By deleting the monster sprite",
              "By changing the backdrop colour",
              "By turning off her computer",
            ],
            optionsMy: [
              "ကစားသမားကို သတ္တဝါဘက်သို့ ဆက်တိုက်သုံးကြိမ် လျှောက်သွားစေခြင်းဖြင့်",
              "သတ္တဝါ sprite ကို ဖျက်ပစ်ခြင်းဖြင့်",
              "Backdrop ၏ အရောင် ပြောင်းလဲခြင်းဖြင့်",
              "သူမ၏ ကွန်ပျူတာကို ပိတ်လိုက်ခြင်းဖြင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What is Nay Chi's win condition based on?",
            questionMy:
                "နှင်းချည်၏ အနိုင်ရ Condition သည် အဘယ်အပေါ် အခြေခံသနည်း။",
            optionsEn: [
              "Score equalling 5, matching the number of stars placed in the maze",
              "The player pressing a key ten times",
              "The backdrop turning red",
              "The monster disappearing",
            ],
            optionsMy: [
              "ရွှံ့ကွေ့လမ်းတွင် ချထားသော ကြယ်အရေအတွက်နှင့်ညီသော Score 5 ရောက်ခြင်း",
              "ကစားသမားက ခလုတ်ကို ဆယ်ကြိမ် နှိပ်ခြင်း",
              "Backdrop သည် အနီရောင် ပြောင်းသွားခြင်း",
              "သတ္တဝါ ပျောက်သွားခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What comparison does Nay Chi make at the end of the passage?",
            questionMy:
                "စာပိုဒ်အဆုံးတွင် နှင်းချည် အဘယ်နှိုင်းယှဉ်ချက်ကို ပြုလုပ်သနည်း။",
            optionsEn: [
              "That her game conditions must be exactly right, just like her database queries had to be",
              "That games are easier than databases",
              "That databases no longer matter now she can code",
              "That her monster sprite looks like her database",
            ],
            optionsMy: [
              "သူမ၏ ဒေတာဘေ့စ် query များ တိကျရသလို ဂိမ်း condition များလည်း အတိအကျ ရှိရမည်ဖြစ်ကြောင်း",
              "ဂိမ်းများသည် ဒေတာဘေ့စ်များထက် ပိုလွယ်ကူကြောင်း",
              "ကုဒ်ရေးတတ်ပြီးနောက် ဒေတာဘေ့စ် အရေးမကြီးတော့ကြောင်း",
              "သူမ၏ သတ္တဝါ sprite သည် သူမ၏ ဒေတာဘေ့စ်နှင့် တူနေကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w19-d5",
      dayNumber: 5,
      titleEn: "Game Logic Round-Up",
      titleMy: "ဂိမ်း Logic အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does a collision mean in a game?",
          questionMy:
              "ဂိမ်းတစ်ခုတွင် ထိစပ်မှု (collision) ဆိုသည်မှာ အဘယ်အဓိပ္ပာယ်ရှိသနည်း။",
          optionsEn: [
            "Two sprites touching each other",
            "A backdrop changing colour",
            "A variable being renamed",
            "A sprite gaining a new costume",
          ],
          optionsMy: [
            "Sprite နှစ်ခု အချင်းချင်း ထိတွေ့ခြင်း",
            "Backdrop ၏ အရောင် ပြောင်းလဲခြင်း",
            "Variable တစ်ခု အမည်ပြောင်းခြင်း",
            "Sprite တစ်ခု Costume အသစ်ရရှိခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What happens to the lives variable when the player is caught by the monster?",
          questionMy:
              "ကစားသမား သတ္တဝါက ဖမ်းမိလိုက်သောအခါ Lives variable ကို အဘယ်ပြောင်းလဲမှု ဖြစ်ပေါ်စေသနည်း။",
          optionsEn: [
            "It decreases",
            "It increases",
            "It changes colour",
            "It becomes the score variable",
          ],
          optionsMy: [
            "ကျဆင်းသွားသည်",
            "တိုးလာသည်",
            "အရောင်ပြောင်းသွားသည်",
            "Score variable ဖြစ်လာသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's game, what happens when the lives variable reaches zero?",
          questionMy:
              "နှင်းချည်၏ ဂိမ်းတွင် Lives variable သုည ရောက်သွားသောအခါ အဘယ်အရာ ဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "\"Game Over\" is shown and the game stops",
            "The score doubles",
            "A new star appears",
            "The backdrop disappears",
          ],
          optionsMy: [
            "\"Game Over\" ပြသပြီး ဂိမ်း ရပ်တန့်သွားသည်",
            "Score နှစ်ဆတိုးသွားသည်",
            "ကြယ်အသစ် ပေါ်လာသည်",
            "Backdrop ပျောက်သွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is Nay Chi's win condition set to?",
          questionMy:
              "နှင်းချည်၏ အနိုင်ရ Condition ကို မည်သို့ သတ်မှတ်ထားသနည်း။",
          optionsEn: [
            "Score equals 5",
            "Lives equals 5",
            "The monster disappears",
            "The backdrop turns blue",
          ],
          optionsMy: [
            "Score သည် 5 နှင့်ညီသည်",
            "Lives သည် 5 နှင့်ညီသည်",
            "သတ္တဝါ ပျောက်သွားသည်",
            "Backdrop သည် အပြာရောင် ပြောင်းသွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why does Nay Chi deliberately test her lose condition by walking into the monster on purpose?",
          questionMy:
              "သတ္တဝါဘက်သို့ တမင်တကာ လျှောက်သွားစေခြင်းဖြင့် ရှုံးနိမ့် Condition ကို နှင်းချည် စမ်းသပ်ရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "To make sure her lose logic actually works correctly before finishing the game",
            "Because it increases her score",
            "Because it changes the game's genre",
            "Because the design document requires it, without any testing purpose",
          ],
          optionsMy: [
            "ဂိမ်းမပြီးမီ သူမ၏ ရှုံးနိမ့် Logic အမှန်တကယ် မှန်ကန်စွာ အလုပ်လုပ်ကြောင်း သေချာစေရန်",
            "Score တိုးမြှင့်ပေးသောကြောင့်",
            "ဂိမ်း၏ Genre ကို ပြောင်းလဲပေးသောကြောင့်",
            "Design Document က စမ်းသပ်ရည်ရွယ်ချက်မပါဘဲ တောင်းဆိုသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek20 = CourseWeekDef(
  id: "course-year6-computing-w20",
  weekNumber: 20,
  titleEn: "Capstone: Nay Chi's Game Jam Challenge",
  titleMy: "Capstone - နှင်းချည်၏ Game Jam စိန်ခေါ်မှု",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w20-d1",
      dayNumber: 1,
      titleEn: "Building the Whole Game",
      titleMy: "ဂိမ်းတစ်ခုလုံးကို တည်ဆောက်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Before Nay Chi starts her Game Jam challenge, what should she review from Week 17?",
          questionMy:
              "Game Jam စိန်ခေါ်မှု မစတင်မီ Week 17 မှ နှင်းချည် အဘယ်အရာကို ပြန်လည်သုံးသပ်သင့်သနည်း။",
          optionsEn: [
            "Her finished design document with genre, goal and rules",
            "A completely new spreadsheet",
            "Her library book list",
            "An unrelated science project",
          ],
          optionsMy: [
            "အမျိုးအစား၊ ရည်မှန်းချက်နှင့် စည်းမျဉ်းများပါဝင်သော ပြီးစီးထားသည့် Design Document",
            "လုံးဝ ဇယားအသစ်တစ်ခု",
            "သူမ၏ စာကြည့်တိုက်စာအုပ်စာရင်း",
            "မသက်ဆိုင်သော သိပ္ပံစီမံကိန်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In her final game, what three ingredients does Nay Chi need to combine, from Weeks 17-19?",
          questionMy:
              "Week 17 မှ 19 အထိကို ဆက်စပ်၍ သူမ၏ နောက်ဆုံးဂိမ်းတွင် ပေါင်းစပ်ရမည့် အရာသုံးခုမှာ အဘယ်နည်း။",
          optionsEn: [
            "A design document, sprites on a backdrop, and score/lives/win-lose logic",
            "A database, a spreadsheet, and a search query",
            "A pixel grid, a byte counter, and an IP address",
            "A password rule, a flowchart, and a loop counter",
          ],
          optionsMy: [
            "Design Document၊ Backdrop ပေါ်ရှိ Sprite များနှင့် Score/Lives/အနိုင်ရ-ရှုံးနိမ့် Logic",
            "Database၊ Spreadsheet နှင့် Search Query",
            "Pixel Grid၊ Byte Counter နှင့် IP Address",
            "Password စည်းမျဉ်း၊ Flowchart နှင့် Loop Counter",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is \"playtesting\"?",
          questionMy: "\"Playtesting\" ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "Playing through a game yourself to check whether it works as intended",
            "Selling a finished game to other pupils",
            "Deleting a game's design document",
            "Renaming all of a game's sprites",
          ],
          optionsMy: [
            "ဂိမ်းသည် ရည်ရွယ်ထားသည့်အတိုင်း အလုပ်လုပ်မလုပ်ကို ကိုယ်တိုင်ကစားစစ်ဆေးခြင်း",
            "ပြီးစီးထားသော ဂိမ်းကို အခြားကျောင်းသားများထံ ရောင်းချခြင်း",
            "ဂိမ်း၏ Design Document ကို ဖျက်ပစ်ခြင်း",
            "ဂိမ်း၏ Sprite အားလုံးကို အမည်ပြောင်းခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "While playtesting, Nay Chi notices her score never increases even when her player touches the star. What should she do?",
          questionMy:
              "Playtest လုပ်နေစဉ် ကစားသမားက ကြယ်ကို ထိတွေ့ပါသော်လည်း Score လုံးဝ မတိုးလာသည်ကို နှင်းချည် သတိပြုမိသည်။ သူမ အဘယ်အရာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Debug her collision code by checking whether the score-changing block is correctly attached to the touching event",
            "Delete the star sprite completely and give up",
            "Ignore it since scores do not matter",
            "Change the game's genre instead",
          ],
          optionsMy: [
            "Score ပြောင်းလဲပေးသော block သည် ထိတွေ့မှု event နှင့် မှန်ကန်စွာ ချိတ်ဆက်ထားမထားကို စစ်ဆေး၍ Debug လုပ်ရန်",
            "ကြယ် sprite ကို လုံးဝဖျက်ပြီး လက်လျှော့ရန်",
            "Score သည် အရေးမကြီးသောကြောင့် လျစ်လျူရှုရန်",
            "ယင်းအစား ဂိမ်း၏ Genre ကို ပြောင်းလဲရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is a capstone game project a good way to finish this term?",
          questionMy:
              "ဤ Term ကို ပြီးစီးရန် Capstone ဂိမ်းစီမံကိန်းသည် အဘယ့်ကြောင့် ကောင်းသော နည်းလမ်းတစ်ခု ဖြစ်သနည်း။",
          optionsEn: [
            "It brings planning, sprites, coordinates, variables and logic together in one original project",
            "It only tests one small fact from one single week",
            "It requires no planning at all",
            "It replaces the need to ever code again",
          ],
          optionsMy: [
            "Planning၊ Sprite၊ Coordinate၊ Variable နှင့် Logic များကို မူရင်းစီမံကိန်းတစ်ခုတည်းတွင် ပေါင်းစပ်ပေးသောကြောင့်",
            "တစ်ပတ်တည်း၏ သေးငယ်သောအချက်တစ်ခုကိုသာ စစ်ဆေးသောကြောင့်",
            "စီစဉ်မှု လုံးဝ မလိုအပ်သောကြောင့်",
            "နောင်တွင် ကုဒ်ရေးဖို့ မလိုတော့စေသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w20-d2",
      dayNumber: 2,
      titleEn: "Match the Term 5 Vocabulary",
      titleMy: "Term 5 ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w20-dm-1",
          termEn: "Design document",
          termMy: "Design Document",
          matchEn:
              "A written plan of a game's genre, goal and rules made before coding begins",
          matchMy:
              "ကုဒ်မစတင်မီ ရေးသားထားသော ဂိမ်း၏ Genre၊ Goal နှင့် Rules စီစဉ်ချက်",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w20-dm-2",
          termEn: "Sprite",
          termMy: "Sprite",
          matchEn:
              "A character or object that moves and can be controlled in a game",
          matchMy:
              "ဂိမ်းတွင်း ရွေ့လျားနိုင်ပြီး ထိန်းချုပ်နိုင်သော ဇာတ်ကောင် သို့မဟုတ် ပစ္စည်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w20-dm-3",
          termEn: "Coordinate",
          termMy: "Coordinate",
          matchEn:
              "A number pair (x, y) that pinpoints a sprite's exact position on the stage",
          matchMy:
              "Stage ပေါ်ရှိ Sprite ၏ အတိအကျတည်နေရာကို ညွှန်ပြသော ဂဏန်းအတွဲ (x, y)",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w20-dm-4",
          termEn: "Collision",
          termMy: "ထိစပ်မှု (Collision)",
          matchEn:
              "The moment two sprites touch each other, often triggering a game event",
          matchMy:
              "Sprite နှစ်ခု အချင်းချင်း ထိတွေ့သည့်အခိုက်အတန့်၊ များသောအားဖြင့် ဂိမ်း Event တစ်ခုကို ဖြစ်ပေါ်စေသည်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w20-dm-5",
          termEn: "Win/lose condition",
          termMy: "အနိုင်ရ/ရှုံးနိမ့် Condition",
          matchEn:
              "The if-condition that decides when a player has succeeded or failed",
          matchMy:
              "ကစားသမား အောင်မြင် သို့မဟုတ် ရှုံးနိမ့်ချိန်ကို ဆုံးဖြတ်ပေးသော if-condition",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w20-dm-6",
          termEn: "Playtesting",
          termMy: "Playtesting",
          matchEn:
              "Playing through a game yourself to find and fix problems before it is finished",
          matchMy:
              "ပြီးစီးခြင်းမတိုင်မီ ပြဿနာများကို ရှာဖွေပြင်ဆင်ရန် ဂိမ်းကို ကိုယ်တိုင်ကစားစစ်ဆေးခြင်း",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w20-d3",
      dayNumber: 3,
      titleEn: "Sort: Planning Skill or Building Skill?",
      titleMy: "စီစစ်ကြမည် - Planning Skill လား၊ Building Skill လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Planning Skill", "Building Skill"],
        bucketsMy: ["Planning Skill", "Building Skill"],
        items: [
          SortingItem(
            id: "y6comp-w20-sort-1",
            labelEn: "Writing a design document with genre, goal and rules",
            labelMy:
                "Genre၊ Goal နှင့် Rules ပါဝင်သော Design Document ရေးသားခြင်း",
            correctBucketEn: "Planning Skill",
            correctBucketMy: "Planning Skill",
          ),
          SortingItem(
            id: "y6comp-w20-sort-2",
            labelEn:
                "Placing a star sprite at exact x/y coordinates on the stage",
            labelMy:
                "ကြယ် sprite ကို Stage ပေါ်ရှိ x/y coordinate အတိအကျတွင် ချထားခြင်း",
            correctBucketEn: "Building Skill",
            correctBucketMy: "Building Skill",
          ),
          SortingItem(
            id: "y6comp-w20-sort-3",
            labelEn:
                "Sketching a storyboard of the game's screens before coding",
            labelMy: "ကုဒ်မရေးမီ ဂိမ်း၏ မျက်နှာပြင်များ Storyboard ရေးဆွဲခြင်း",
            correctBucketEn: "Planning Skill",
            correctBucketMy: "Planning Skill",
          ),
          SortingItem(
            id: "y6comp-w20-sort-4",
            labelEn:
                "Writing the if-condition that checks whether lives has reached zero",
            labelMy:
                "Lives သုည ရောက်မရောက်ကို စစ်ဆေးသော if-condition ရေးသားခြင်း",
            correctBucketEn: "Building Skill",
            correctBucketMy: "Building Skill",
          ),
          SortingItem(
            id: "y6comp-w20-sort-5",
            labelEn: "Deciding the maze-chase genre would suit the class best",
            labelMy:
                "ရွှံ့ကွေ့လမ်းလိုက်ဖမ်းသည့် Genre သည် အတန်းအတွက် အသင့်တော်ဆုံးဖြစ်ကြောင်း ဆုံးဖြတ်ခြင်း",
            correctBucketEn: "Planning Skill",
            correctBucketMy: "Planning Skill",
          ),
          SortingItem(
            id: "y6comp-w20-sort-6",
            labelEn:
                "Debugging the collision code so the score variable updates correctly",
            labelMy:
                "Score variable မှန်ကန်စွာ update ဖြစ်စေရန် ထိစပ်မှုကုဒ်ကို Debug လုပ်ခြင်း",
            correctBucketEn: "Building Skill",
            correctBucketMy: "Building Skill",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w20-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Game Jam Day",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ Game Jam နေ့",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Game Jam Day",
        titleMy: "နှင်းချည်၏ Game Jam နေ့",
        passageEn:
            "Nova School's Game Jam day has finally arrived: every Year 6 pupil has one lesson to finish, playtest and present a small original game. Nay Chi lays her design document flat on the desk beside her laptop, checking off each planned piece one by one -- backdrop, sprites, score, lives, win condition, lose condition -- as she assembles her maze-chase game exactly as she planned it back in Week 17.\n\nHalf an hour in, Nay Chi hits a snag: her score refuses to increase, even when her player sprite clearly touches the star. She traces her code carefully, the same way she hunted bugs back in her Term 1 debugging lessons, and finds the problem -- her \"change score by 1\" block was accidentally attached to the wrong event. She moves it under the correct \"when touching star\" event, runs the game again, and grins as her score finally ticks up from 0 to 1.\n\nBy the end of the lesson, Nay Chi's game runs perfectly: her player dodges the monster, collects all five stars, and \"You Win!\" flashes proudly across the screen. She presents it to her table group, walking them through her design document, her sprite choices, and the exact bug she fixed. \"Planning it first, and testing it properly at the end, made all the difference,\" she tells them, already sketching ideas in her notebook for an even bigger game next term.",
        passageMy:
            "Nova ကျောင်း၏ Game Jam နေ့ ရောက်ရှိလာပြီဖြစ်သည် -- Year 6 ကျောင်းသားတိုင်းသည် သူတို့၏ ဂိမ်းငယ်ကို ပြီးစီးအောင်လုပ်ရန်၊ Playtest လုပ်ရန်နှင့် တင်ပြရန် သင်ခန်းစာတစ်ခု ရှိသည်။ နှင်းချည်သည် သူမ၏ Design Document ကို Laptop ဘေးတွင် ချထားပြီး၊ Backdrop၊ Sprite များ၊ Score၊ Lives၊ အနိုင်ရ Condition၊ ရှုံးနိမ့် Condition -- စီစဉ်ထားခဲ့သည့်အတိုင်း တစ်ခုပြီးတစ်ခု အမှန်ခြစ်ကာ Week 17 က စီစဉ်ခဲ့သည့်အတိုင်း သူမ၏ ရွှံ့ကွေ့လမ်းလိုက်ဖမ်းဂိမ်းကို ဆက်လက်တည်ဆောက်နေသည်။\n\nတစ်နာရီဝက်ကျော်သောအခါ နှင်းချည် ပြဿနာတစ်ခု ကြုံတွေ့ရသည် -- ကစားသမား sprite သည် ကြယ်ကို ရှင်းရှင်းလင်းလင်း ထိတွေ့ပါသော်လည်း Score လုံးဝ မတိုးလာပါ။ Term 1 ၏ Debugging သင်ခန်းစာများတွင် bug ရှာဖွေခဲ့ပုံအတိုင်း သူမ ကုဒ်ကို သေချာစွာ ခြေရာခံကြည့်ရာ ပြဿနာကို တွေ့ရှိသည် -- သူမ၏ \"change score by 1\" block သည် မှားယွင်းသော event နှင့် အမှတ်တမဲ့ ချိတ်ဆက်မိနေခြင်းဖြစ်သည်။ သူမ ၎င်းကို မှန်ကန်သော \"ကြယ်ထိတွေ့ချိန်\" event အောက်သို့ ရွှေ့ပြီး ဂိမ်းကို ပြန်Run လုပ်ကြည့်ရာ Score သည် နောက်ဆုံး 0 မှ 1 သို့ တက်လာသည့်အတွက် ပြုံးမိသည်။\n\nသင်ခန်းစာအဆုံးတွင် နှင်းချည်၏ ဂိမ်းသည် ချောမွေ့စွာ အလုပ်လုပ်နေသည် -- ကစားသမားက သတ္တဝါကို ရှောင်ရှားပြီး ကြယ်ငါးခုစလုံးကို စုဆောင်းကာ \"You Win!\" ဟူသော စာသည် မျက်နှာပြင်ပေါ်တွင် ဂုဏ်ယူစွာ တောက်ပလင်းလက်လာသည်။ သူမသည် သူမ၏ Design Document၊ Sprite ရွေးချယ်မှုများနှင့် ပြင်ဆင်ခဲ့သော Bug အတိအကျကို ရှင်းပြလျက် သူမ၏ စားပွဲအုပ်စုသို့ တင်ပြသည်။ \"အရင်ဆုံး စီစဉ်ပြီး၊ အဆုံးမှာ မှန်ကန်စွာ စမ်းသပ်ခဲ့တာက အကုန်လုံးကို ကွာခြားစေတယ်\" ဟု သူမ ၎င်းတို့အား ပြောပြသည်၊ နောက် Term အတွက် ပိုကြီးမားသော ဂိမ်းတစ်ခု အတွက် idea များကို notebook ထဲ ဆက်ရေးဆွဲလျက်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What is Nova School's Game Jam day?",
            questionMy: "Nova ကျောင်း၏ Game Jam နေ့ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
            optionsEn: [
              "A lesson where every Year 6 pupil finishes, playtests and presents a small original game",
              "A day for cleaning the computer lab",
              "A day for taking a written exam only",
              "A holiday with no lessons",
            ],
            optionsMy: [
              "Year 6 ကျောင်းသားတိုင်း သူတို့၏ ဂိမ်းငယ်ကို ပြီးစီးအောင်လုပ်ပြီး Playtest လုပ်ကာ တင်ပြရသည့် သင်ခန်းစာ",
              "ကွန်ပျူတာဓာတ်ခွဲခန်းကို သန့်ရှင်းရေးလုပ်သည့်နေ့",
              "စာရေးစာမေးပွဲ ဖြေဆိုရုံသာ ရှိသည့်နေ့",
              "သင်ခန်းစာမရှိသော ရုံးပိတ်ရက်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What problem does Nay Chi discover while playtesting?",
            questionMy:
                "Playtest လုပ်နေစဉ် နှင်းချည် အဘယ်ပြဿနာကို တွေ့ရှိသနည်း။",
            optionsEn: [
              "Her score refuses to increase even when the star is touched",
              "Her whole game disappears",
              "The monster sprite is missing",
              "The backdrop will not load",
            ],
            optionsMy: [
              "ကြယ်ကို ထိတွေ့ပါသော်လည်း Score လုံးဝ မတိုးလာခြင်း",
              "သူမ၏ ဂိမ်းတစ်ခုလုံး ပျောက်သွားခြင်း",
              "သတ္တဝါ Sprite ပျောက်နေခြင်း",
              "Backdrop လုံးဝ Load မဖြစ်ခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What was the actual bug that Nay Chi found?",
            questionMy: "နှင်းချည် တွေ့ရှိခဲ့သော အမှန်တကယ် Bug မှာ အဘယ်နည်း။",
            optionsEn: [
              "Her \"change score by 1\" block was attached to the wrong event",
              "Her laptop had run out of battery",
              "Her design document was blank",
              "Her backdrop had the wrong colours",
            ],
            optionsMy: [
              "\"change score by 1\" block သည် မှားယွင်းသော event နှင့် ချိတ်ဆက်နေခြင်း",
              "Laptop ဘက်ထရီ ကုန်သွားခြင်း",
              "Design Document ဗလာဖြစ်နေခြင်း",
              "Backdrop ၏ အရောင်များ မှားယွင်းနေခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What earlier term's skill does Nay Chi use to trace and fix her bug?",
            questionMy:
                "Bug ကို ခြေရာခံပြီး ပြင်ဆင်ရန် Term အစောပိုင်း၏ Skill မည်သည့်အရာကို နှင်းချည် အသုံးချသနည်း။",
            optionsEn: [
              "Debugging skills from Term 1",
              "Database searching skills from Term 4",
              "Spreadsheet formulas from Term 3",
              "HTML page design from Term 2",
            ],
            optionsMy: [
              "Term 1 ၏ Debugging Skill",
              "Term 4 ၏ Database ရှာဖွေခြင်း Skill",
              "Term 3 ၏ Spreadsheet ဖော်မြူလာ",
              "Term 2 ၏ HTML စာမျက်နှာဒီဇိုင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What lesson does Nay Chi share with her table group at the end of the passage?",
            questionMy:
                "စာပိုဒ်အဆုံးတွင် သူမ၏ စားပွဲအုပ်စုအား နှင်းချည် မည်သည့်သင်ခန်းစာကို မျှဝေသနည်း။",
            optionsEn: [
              "Planning first and testing properly at the end made all the difference",
              "Games do not need any planning at all",
              "Testing a game is a waste of time",
              "Only the teacher should ever test a game",
            ],
            optionsMy: [
              "အရင်ဆုံး စီစဉ်ပြီး အဆုံးတွင် မှန်ကန်စွာ စမ်းသပ်ခဲ့ခြင်းက အကုန်လုံးကို ကွာခြားစေကြောင်း",
              "ဂိမ်းများသည် Planning လုံးဝ မလိုအပ်ကြောင်း",
              "ဂိမ်းတစ်ခုကို စမ်းသပ်ခြင်းသည် အချိန်ဖြုန်းခြင်းဖြစ်ကြောင်း",
              "ဆရာမတစ်ဦးတည်းသာ ဂိမ်းကို စမ်းသပ်သင့်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w20-d5",
      dayNumber: 5,
      titleEn: "Term 5 Round-Up: Game Creation",
      titleMy: "Term 5 အနှစ်ချုပ် - ဂိမ်းဖန်တီးခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What should a game designer decide before writing any code, according to Week 17?",
          questionMy:
              "Week 17 အရ ဂိမ်းအတွက် ကုဒ်မရေးမီ ဒီဇိုင်နာတစ်ဦး အဘယ်အရာကို ဆုံးဖြတ်သင့်သနည်း။",
          optionsEn: [
            "The genre, goal and rules, written in a design document",
            "The final selling price only",
            "The credits music alone",
            "Nothing -- coding should always start first",
          ],
          optionsMy: [
            "Design Document တွင် ရေးထားသော Genre၊ Goal နှင့် Rules",
            "နောက်ဆုံးရောင်းဈေးသာ",
            "Credits တေးဂီတသာ",
            "ဘာမှမလို -- ကုဒ်ကို အမြဲ အရင်ဆုံးစတင်သင့်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "According to Week 18, what does a sprite's x/y coordinate describe?",
          questionMy:
              "Week 18 အရ Sprite တစ်ခု၏ x/y Coordinate သည် အဘယ်အရာကို ဖော်ပြသနည်း။",
          optionsEn: [
            "Its exact position on the stage",
            "Its genre",
            "Its win condition",
            "Its design document",
          ],
          optionsMy: [
            "Stage ပေါ်ရှိ ၎င်း၏ အတိအကျတည်နေရာ",
            "၎င်း၏ Genre",
            "၎င်း၏ အနိုင်ရ Condition",
            "၎င်း၏ Design Document",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "According to Week 19, what happens when the player sprite collides with the monster sprite in Nay Chi's game?",
          questionMy:
              "Week 19 အရ ကစားသမား sprite သည် သတ္တဝါ sprite နှင့် ထိစပ်လိုက်ပါက နှင်းချည်၏ ဂိမ်းတွင် အဘယ်အရာ ဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "Lives decreases by 1",
            "Score increases by 1",
            "The backdrop changes",
            "The star disappears",
          ],
          optionsMy: [
            "Lives 1 လျော့ကျသွားသည်",
            "Score 1 တိုးလာသည်",
            "Backdrop ပြောင်းလဲသွားသည်",
            "ကြယ် ပျောက်သွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In her Week 20 capstone, what bug did Nay Chi find and fix in her own game?",
          questionMy:
              "Week 20 Capstone တွင် သူမ၏ ဂိမ်းထဲရှိ မည်သည့် Bug ကို နှင်းချည် တွေ့ရှိပြင်ဆင်ခဲ့သနည်း။",
          optionsEn: [
            "Her \"change score by 1\" block was attached to the wrong event",
            "Her monster sprite had no costume at all",
            "Her backdrop was completely missing",
            "Her lives variable started at a negative number",
          ],
          optionsMy: [
            "\"change score by 1\" block သည် မှားယွင်းသော event နှင့် ချိတ်ဆက်နေခြင်း",
            "သတ္တဝါ sprite တွင် Costume လုံးဝ မရှိခြင်း",
            "Backdrop လုံးဝ ပျောက်ဆုံးနေခြင်း",
            "Lives variable သည် အနှုတ်ဂဏန်းဖြင့် စတင်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the overall lesson of this whole term's Game Jam capstone?",
          questionMy:
              "ဤ Term တစ်ခုလုံး၏ Game Jam Capstone မှ ရရှိသော အထွေထွေသင်ခန်းစာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Careful planning, building with sprites and logic, and thorough testing together make a working game",
            "Only testing matters; planning is unnecessary",
            "Only planning matters; testing is unnecessary",
            "Games do not need sprites, variables or logic at all",
          ],
          optionsMy: [
            "ဂရုတစိုက် Planning၊ Sprite နှင့် Logic ဖြင့် တည်ဆောက်ခြင်းနှင့် စေ့စေ့စပ်စပ် စမ်းသပ်ခြင်းတို့ ပေါင်းစပ်မှသာ အလုပ်လုပ်သော ဂိမ်းတစ်ခု ရရှိကြောင်း",
            "Testing တစ်ခုတည်းသာ အရေးကြီးပြီး Planning မလိုအပ်ကြောင်း",
            "Planning တစ်ခုတည်းသာ အရေးကြီးပြီး Testing မလိုအပ်ကြောင်း",
            "ဂိမ်းများတွင် Sprite၊ Variable သို့မဟုတ် Logic လုံးဝ မလိုအပ်ကြောင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _year6ComputingTerm5 = CourseTermDef(
  id: "course-year6-computing-t5",
  termNumber: 5,
  titleEn: "Game Creation Project",
  titleMy: "ဂိမ်းဖန်တီးရေး စီမံကိန်း",
  certificateTitleEn: "Game Creator",
  certificateTitleMy: "ဂိမ်းဖန်တီးသူ",
  weeks: [
    _year6ComputingWeek17,
    _year6ComputingWeek18,
    _year6ComputingWeek19,
    _year6ComputingWeek20,
  ],
);
