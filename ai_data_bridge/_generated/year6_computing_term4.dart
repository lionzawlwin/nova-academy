// File: ai_data_bridge/_generated/year6_computing_term4.dart
// Year 6 Computing -- Term 4: "Databases" (Weeks 13-16).
// Staging artifact only -- not yet wired into course_pathway_bank.dart's
// Grade.year6 pathway. Follows on from Term 3 (Spreadsheets and Data
// Handling), where Nay Chi tallied a class-wide hobbies survey into a
// spreadsheet and built a pie chart. This term moves from spreadsheets
// into proper databases: what a database, record, field and table are,
// and how to search and sort real-world databases to answer genuine
// questions. Protagonist Nay Chi, a Nova School student, recurs across
// quiz flavour text and every Day 4 reading passage this term.
//
// Week 13 (What Is a Database?): records, fields and tables, introduced
// through the school library's digital catalogue, with an early spiral
// callback to Nay Chi's Term 3 spreadsheet survey. Week 14 (Searching a
// Database): search queries, keywords, exact matches and field-specific
// searches, contrasting vague searches with specific ones. Week 15
// (Sorting and Asking Big Questions): ascending/descending order and
// combining conditions with AND/OR to answer real questions. Week 16
// (Capstone -- Nay Chi's Class Hobbies Database Challenge, boss week):
// Nay Chi rebuilds her Term 3 hobbies spreadsheet as a proper searchable,
// sortable database with records and fields, using AND to confirm that
// coding and drawing really are joint favourites, with the recap day
// reviewing the whole term.

const CourseWeekDef _year6ComputingWeek13 = CourseWeekDef(
  id: "course-year6-computing-w13",
  weekNumber: 13,
  titleEn: "What Is a Database?",
  titleMy: "ဒေတာဘေ့စ် ဆိုသည်မှာ အဘယ်နည်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w13-d1",
      dayNumber: 1,
      titleEn: "Records, Fields and Tables",
      titleMy: "မှတ်တမ်း၊ အကွက်နှင့် ဇယားများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a database?",
          questionMy: "ဒေတာဘေ့စ် ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "An organised collection of information stored so it can be easily searched and sorted",
            "A single photograph saved on a computer",
            "A type of computer virus",
            "A password used to log into an app",
          ],
          optionsMy: [
            "အလွယ်တကူ ရှာဖွေ၍ စီစစ်နိုင်ရန် စနစ်တကျ စုစည်းသိမ်းဆည်းထားသော အချက်အလက်များ",
            "ကွန်ပျူတာတွင် သိမ်းဆည်းထားသော ဓာတ်ပုံတစ်ပုံ",
            "ကွန်ပျူတာဗိုင်းရပ်စ်တစ်မျိုး",
            "အက်ပ်တစ်ခုသို့ ဝင်ရောက်ရန် အသုံးပြုသော စကားဝှက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi opens her school library's digital catalogue and sees one whole row that lists a single book's title, author and shelf number all together. What is this one row called?",
          questionMy:
              "နှင်းချည်သည် သူမကျောင်း၏ စာကြည့်တိုက်ဒစ်ဂျစ်တယ်စာရင်းကို ဖွင့်ကြည့်ရာ စာအုပ်တစ်အုပ်၏ ခေါင်းစဉ်၊ စာရေးသူနှင့် စင်နံပါတ်တို့ကို တစ်တန်းတည်း ဖော်ပြထားသော အတန်းတစ်ခုလုံးကို တွေ့ရသည်။ ဤအတန်းတစ်ခုလုံးကို အဘယ်ဟုခေါ်သနည်း။",
          optionsEn: ["A field", "A record", "A password", "A pie chart"],
          optionsMy: [
            "အကွက် (Field)",
            "မှတ်တမ်း (Record)",
            "စကားဝှက်",
            "ဝိုင်းပုံဂရပ်",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "Within that same row, the single piece of information \"Shelf Number: B12\" by itself is called what?",
          questionMy:
              "ထိုအတန်းတစ်ခုတည်းအတွင်း \"စင်နံပါတ်: B12\" ဟူသော တစ်ခုတည်းသော အချက်အလက်ကို အဘယ်ဟုခေါ်သနည်း။",
          optionsEn: ["A record", "A table", "A field", "A query"],
          optionsMy: [
            "မှတ်တမ်း (Record)",
            "ဇယား (Table)",
            "အကွက် (Field)",
            "Query",
          ],
          correctIndex: 2,
        ),
        QuizQuestion(
          questionEn:
              "A database table is made of rows and columns, much like the spreadsheet Nay Chi used last term for her hobbies survey. What are a database table's columns usually called?",
          questionMy:
              "ဒေတာဘေ့စ်ဇယားတစ်ခုသည် အတန်းများနှင့် ကော်လံများဖြင့် ဖွဲ့စည်းထားပြီး၊ ယခင်တစ်နှစ်တာ နှင်းချည်ဝါသနာစစ်တမ်းအတွက် သုံးခဲ့သော ဇယားချက်ပြနှင့် ဆင်တူသည်။ ဒေတာဘေ့စ်ဇယားတစ်ခု၏ ကော်လံများကို ပုံမှန်အားဖြင့် အဘယ်ဟုခေါ်သနည်း။",
          optionsEn: ["Records", "Fields", "Queries", "Passwords"],
          optionsMy: [
            "မှတ်တမ်းများ (Records)",
            "အကွက်များ (Fields)",
            "Query များ",
            "စကားဝှက်များ",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "Which of these is a real-world example of a database in everyday life?",
          questionMy:
              "အောက်ပါတို့အနက် နေ့စဉ်ဘဝတွင် ဒေတာဘေ့စ်၏ လက်တွေ့ဥပမာမှာ အဘယ်နည်း။",
          optionsEn: [
            "A library catalogue that stores every book's title, author and shelf number",
            "A single drawing on a piece of paper",
            "One person's spoken opinion",
            "A blank notebook page",
          ],
          optionsMy: [
            "စာအုပ်တိုင်း၏ ခေါင်းစဉ်၊ စာရေးသူနှင့် စင်နံပါတ်ကို သိမ်းဆည်းထားသော စာကြည့်တိုက်စာရင်း",
            "စက္ကူတစ်ရွက်ပေါ်ရှိ ပုံတစ်ပုံ",
            "လူတစ်ဦး၏ နှုတ်ဖြင့်ပြောသော ထင်မြင်ချက်",
            "ဗလာမှတ်စုစာအုပ်စာမျက်နှာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w13-d2",
      dayNumber: 2,
      titleEn: "Match the Database Vocabulary",
      titleMy: "ဒေတာဘေ့စ်ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w13-dm-1",
          termEn: "Database",
          termMy: "ဒေတာဘေ့စ် (Database)",
          matchEn:
              "An organised collection of information that can be searched and sorted",
          matchMy:
              "အလွယ်တကူ ရှာဖွေ၍ စီစစ်နိုင်ရန် စနစ်တကျစုစည်းထားသော အချက်အလက်များ",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w13-dm-2",
          termEn: "Record",
          termMy: "မှတ်တမ်း (Record)",
          matchEn:
              "One complete set of information about a single person or thing, like one whole row",
          matchMy:
              "လူတစ်ဦး သို့မဟုတ် အရာတစ်ခုအကြောင်း အတန်းတစ်ခုလုံးအဖြစ် ဖော်ပြသည့် အချက်အလက်တစ်စုံလုံး",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w13-dm-3",
          termEn: "Field",
          termMy: "အကွက် (Field)",
          matchEn:
              "One single piece of information within a record, like one column's value",
          matchMy:
              "မှတ်တမ်းတစ်ခုအတွင်းရှိ ကော်လံတန်ဖိုးတစ်ခုကဲ့သို့ တစ်ခုတည်းသော အချက်အလက်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w13-dm-4",
          termEn: "Table",
          termMy: "ဇယား (Table)",
          matchEn:
              "A grid of records and fields arranged neatly in rows and columns",
          matchMy:
              "မှတ်တမ်းများနှင့် အကွက်များကို အတန်းနှင့်ကော်လံများဖြင့် သေသေသပ်သပ် စီစဉ်ထားသော ဇယား",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w13-dm-5",
          termEn: "Data",
          termMy: "အချက်အလက် (Data)",
          matchEn:
              "Facts and information, such as words and numbers, stored inside a database",
          matchMy:
              "ဒေတာဘေ့စ်အတွင်း သိမ်းဆည်းထားသော စာလုံးနှင့် ဂဏန်းကဲ့သို့သော အချက်အလက်များ",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w13-dm-6",
          termEn: "Column",
          termMy: "ကော်လံ (Column)",
          matchEn:
              "A field's category shared by every record in the table, such as \"Author\"",
          matchMy:
              "\"Author\" ကဲ့သို့ ဇယားရှိ မှတ်တမ်းတိုင်းက ဝေမျှသော အကွက်အမျိုးအစား",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w13-d3",
      dayNumber: 3,
      titleEn: "Sort: Record or Field?",
      titleMy: "စီစစ်ကြမည် - မှတ်တမ်းလား၊ အကွက်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Record", "Field"],
        bucketsMy: ["မှတ်တမ်း (Record)", "အကွက် (Field)"],
        items: [
          SortingItem(
            id: "y6comp-w13-sort-1",
            labelEn:
                "Nay Chi's whole row of information: a book's title, author and shelf number together",
            labelMy:
                "နှင်းချည်တွေ့ရသည့် အတန်းတစ်ခုလုံး - စာအုပ်တစ်အုပ်၏ ခေါင်းစဉ်၊ စာရေးသူနှင့် စင်နံပါတ်အားလုံး",
            correctBucketEn: "Record",
            correctBucketMy: "မှတ်တမ်း (Record)",
          ),
          SortingItem(
            id: "y6comp-w13-sort-2",
            labelEn: "Just the word \"Fantasy\" written under the Genre column",
            labelMy:
                "Genre ကော်လံအောက်တွင် ရေးထားသော \"Fantasy\" ဟူသောစကားလုံးတစ်လုံးတည်း",
            correctBucketEn: "Field",
            correctBucketMy: "အကွက် (Field)",
          ),
          SortingItem(
            id: "y6comp-w13-sort-3",
            labelEn:
                "One student's complete entry in the class database: name, age and favourite hobby all together",
            labelMy:
                "အတန်းဒေတာဘေ့စ်ရှိ ကျောင်းသားတစ်ဦး၏ ပြည့်စုံသောစာရင်းသွင်းချက် - အမည်၊ အသက်နှင့် အကြိုက်ဆုံးဝါသနာအားလုံး",
            correctBucketEn: "Record",
            correctBucketMy: "မှတ်တမ်း (Record)",
          ),
          SortingItem(
            id: "y6comp-w13-sort-4",
            labelEn: "Just the number \"12\" written under the Age column",
            labelMy:
                "Age ကော်လံအောက်တွင် ရေးထားသော \"12\" ဟူသော ဂဏန်းတစ်ခုတည်း",
            correctBucketEn: "Field",
            correctBucketMy: "အကွက် (Field)",
          ),
          SortingItem(
            id: "y6comp-w13-sort-5",
            labelEn:
                "One customer's full order details: name, item and price, all in one row",
            labelMy:
                "ဖောက်သည်တစ်ဦး၏ ပြည့်စုံသောအော်ဒါအသေးစိတ် - အမည်၊ ပစ္စည်းနှင့် ဈေးနှုန်းအားလုံးကို အတန်းတစ်ခုတည်းတွင်",
            correctBucketEn: "Record",
            correctBucketMy: "မှတ်တမ်း (Record)",
          ),
          SortingItem(
            id: "y6comp-w13-sort-6",
            labelEn: "Just the price \"3000 Kyats\" by itself",
            labelMy: "ဈေးနှုန်း \"ကျပ် 3000\" ဟူသော တန်ဖိုးတစ်ခုတည်း",
            correctBucketEn: "Field",
            correctBucketMy: "အကွက် (Field)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w13-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi Explores the Library Database",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည် စာကြည့်တိုက်ဒေတာဘေ့စ်ကို စူးစမ်းခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi Explores the Library Database",
        titleMy: "နှင်းချည် စာကြည့်တိုက်ဒေတာဘေ့စ်ကို စူးစမ်းခြင်း",
        passageEn:
            "Nay Chi is standing in front of a computer screen in Nova School's library, waiting to find a book for her class project. The school librarian, U Zaw, shows her a new digital catalogue instead of the old paper index cards. \"This is a database,\" he explains. \"Every single book in the whole library has its own row of information in here.\"\n\nNay Chi thinks back to last term, when she and her classmates tallied their favourite hobbies into a spreadsheet, with each student's answers sitting in their own row. \"So it's a bit like our hobbies spreadsheet,\" she says, \"with rows and columns.\" U Zaw nods and explains that each book's whole row is called a record, and that each single detail inside that row -- just the title, or just the shelf number -- is called a field. All of the library's records together, arranged neatly in rows and columns, form one big table.\n\nWhat excites Nay Chi most is what U Zaw says next: unlike her old paper spreadsheet, this database can search through thousands of records in a single second to find exactly what she needs. \"Next week,\" he tells her with a smile, \"I'll show you how to search it properly.\" Nay Chi can hardly wait to try it.",
        passageMy:
            "နှင်းချည်သည် Nova ကျောင်း စာကြည့်တိုက်ရှိ ကွန်ပျူတာစခရင်တစ်ခု၏ ရှေ့တွင် ရပ်နေပြီး သူမ၏ အတန်းစီမံကိန်းအတွက် စာအုပ်တစ်အုပ်ကို ရှာဖွေနေသည်။ ကျောင်းစာကြည့်တိုက်မှူး ဦးဇော်သည် ဟောင်းနွမ်းနေသော စက္ကူအညွှန်းကတ်များအစား ဒစ်ဂျစ်တယ်စာရင်းအသစ်တစ်ခုကို သူမအား ပြသည်။ \"ဒါက ဒေတာဘေ့စ် ပါ\" ဟု သူရှင်းပြသည်။ \"စာကြည့်တိုက်ထဲရှိ စာအုပ်တိုင်းမှာ ဒီထဲမှာ သူ့ကိုယ်ပိုင် အချက်အလက်အတန်းရှိတယ်။\"\n\nနှင်းချည်သည် ယခင်တစ်နှစ်တာ သူမနှင့် အတန်းဖော်များ သူတို့၏ အကြိုက်ဆုံးဝါသနာများကို ဇယားချက်ပြထဲသို့ တစ်ဂဏန်းချင်း သွင်းခဲ့ကြသည့် အချိန်ကို ပြန်သတိရမိသည်၊ ကျောင်းသားတစ်ဦးစီ၏ အဖြေများသည် သူတို့ကိုယ်ပိုင် အတန်းတစ်ခုစီတွင် ရှိခဲ့ကြသည်။ \"ဒါဆို ကျွန်မတို့ ဝါသနာဇယားနဲ့ နည်းနည်းဆင်တူတယ်ပေါ့\" ဟု သူမ ပြောသည်၊ \"အတန်းများနဲ့ ကော်လံများနဲ့ပေါ့။\" ဦးဇော် ခေါင်းညိတ်ပြီး စာအုပ်တိုင်း၏ အတန်းတစ်ခုလုံးကို record ဟုခေါ်ပြီး၊ ထိုအတန်းအတွင်းရှိ တစ်ခုတည်းသော အသေးစိတ်အချက် -- ခေါင်းစဉ်ချည်း သို့မဟုတ် စင်နံပါတ်ချည်း -- ကို field ဟုခေါ်ကြောင်း ရှင်းပြသည်။ စာကြည့်တိုက်၏ record များအားလုံးကို အတန်းနှင့်ကော်လံများဖြင့် သေသေသပ်သပ် စုစည်းထားခြင်းက ဇယား (table) ကြီးတစ်ခုကို ဖွဲ့စည်းပေးသည်။\n\nနှင်းချည်ကို အားအရဆုံးဖြစ်စေသည်မှာ ဦးဇော်ပြောသည့် နောက်စကားဖြစ်သည် -- သူမ၏ ဟောင်းနွမ်းသော စက္ကူဇယားနှင့်မတူဘဲ ဤဒေတာဘေ့စ်သည် မှတ်တမ်းထောင်ပေါင်းများစွာကို စက္ကန့်တစ်စက္ကန့်အတွင်း ရှာဖွေနိုင်ပြီး သူမလိုအပ်သည့်အရာကို တိတိကျကျ ရှာဖွေပေးနိုင်သည်။ \"လာမည့်အပတ်မှာ ဒီဒေတာဘေ့စ်ကို မှန်ကန်စွာ ရှာဖွေနည်းကို ပြပေးမယ်\" ဟု သူ ပြုံးလျက် သူမကို ပြောသည်။ နှင်းချည်သည် စမ်းသုံးဖို့ စိတ်လှုပ်ရှားလျက် စောင့်မျှော်နေသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Who shows Nay Chi the new digital catalogue in the library?",
            questionMy:
                "စာကြည့်တိုက်ရှိ ဒစ်ဂျစ်တယ်စာရင်းအသစ်ကို နှင်းချည်အား မည်သူက ပြသသနည်း။",
            optionsEn: [
              "Her classmate",
              "The school librarian, U Zaw",
              "Ms. Thanda, her coding teacher",
              "Her parents",
            ],
            optionsMy: [
              "သူမ၏ အတန်းဖော်",
              "ကျောင်းစာကြည့်တိုက်မှူး ဦးဇော်",
              "သူမ၏ ကုဒ်ရေးဆရာမ ဒေါ်သန္တာ",
              "သူမ၏ မိဘများ",
            ],
            correctIndex: 1,
          ),
          QuizQuestion(
            questionEn:
                "What does Nay Chi compare the library database to, based on last term's work?",
            questionMy:
                "ယခင်တစ်နှစ်တာ လုပ်ဆောင်ချက်ကို အခြေခံ၍ နှင်းချည်သည် စာကြည့်တိုက်ဒေတာဘေ့စ်ကို အဘယ်အရာနှင့် နှိုင်းယှဉ်သနည်း။",
            optionsEn: [
              "Her class hobbies spreadsheet",
              "A television programme",
              "A drawing app",
              "A mobile phone game",
            ],
            optionsMy: [
              "သူမ၏ အတန်းဝါသနာစစ်တမ်း ဇယားချက်ပြ",
              "ရုပ်မြင်သံကြားအစီအစဉ်တစ်ခု",
              "ပန်းချီရေးဆွဲသည့် အက်ပ်",
              "မိုဘိုင်းဖုန်းဂိမ်းတစ်ခု",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to U Zaw, what is a book's whole row of information called?",
            questionMy:
                "ဦးဇော်၏ ရှင်းပြချက်အရ စာအုပ်တစ်အုပ်၏ အချက်အလက်အတန်းတစ်ခုလုံးကို အဘယ်ဟုခေါ်သနည်း။",
            optionsEn: ["A field", "A password", "A record", "A pie chart"],
            optionsMy: [
              "အကွက် (Field)",
              "စကားဝှက်",
              "မှတ်တမ်း (Record)",
              "ဝိုင်းပုံဂရပ်",
            ],
            correctIndex: 2,
          ),
          QuizQuestion(
            questionEn:
                "What is a single detail inside that row, such as just the shelf number, called?",
            questionMy:
                "စင်နံပါတ်ချည်းကဲ့သို့ ထိုအတန်းအတွင်းရှိ တစ်ခုတည်းသော အသေးစိတ်အချက်ကို အဘယ်ဟုခေါ်သနည်း။",
            optionsEn: ["A table", "A field", "A query", "A record"],
            optionsMy: [
              "ဇယား (Table)",
              "အကွက် (Field)",
              "Query",
              "မှတ်တမ်း (Record)",
            ],
            correctIndex: 1,
          ),
          QuizQuestion(
            questionEn:
                "What is Nay Chi most excited about after talking with U Zaw?",
            questionMy:
                "ဦးဇော်နှင့် စကားပြောပြီးနောက် နှင်းချည်ကို အဘယ်အရာက အထူးစိတ်လှုပ်ရှားစေသနည်း။",
            optionsEn: [
              "That the database can search thousands of records in a single second",
              "That the library is closing early",
              "That she no longer needs to read any books",
              "That the computer can draw pictures for her",
            ],
            optionsMy: [
              "ဒေတာဘေ့စ်သည် မှတ်တမ်းထောင်ပေါင်းများစွာကို စက္ကန့်တစ်စက္ကန့်အတွင်း ရှာဖွေပေးနိုင်ခြင်း",
              "စာကြည့်တိုက် စောစောပိတ်တော့မည်ဖြစ်ခြင်း",
              "စာအုပ်မှန်သမျှကို ဖတ်စရာမလိုတော့ခြင်း",
              "ကွန်ပျူတာက သူမအတွက် ပုံများ ဆွဲပေးနိုင်ခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w13-d5",
      dayNumber: 5,
      titleEn: "Databases Round-Up",
      titleMy: "ဒေတာဘေ့စ် အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a database?",
          questionMy: "ဒေတာဘေ့စ် ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "An organised collection of information that can be searched and sorted",
            "A single hand-drawn poster",
            "A type of computer game",
            "A musical instrument",
          ],
          optionsMy: [
            "အလွယ်တကူ ရှာဖွေ၍ စီစစ်နိုင်ရန် စနစ်တကျစုစည်းထားသော အချက်အလက်များ",
            "လက်ဆွဲပုံနှင့်ရေးဆွဲထားသော ပိုစတာတစ်ခု",
            "ကွန်ပျူတာဂိမ်းတစ်မျိုး",
            "တူရိယာတစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a record?",
          questionMy: "Record ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A single field's colour",
            "One complete row of information about a single person or thing",
            "A search engine",
            "A type of spreadsheet formula",
          ],
          optionsMy: [
            "အကွက်တစ်ခု၏ အရောင်",
            "လူတစ်ဦး သို့မဟုတ် အရာတစ်ခုအကြောင်း ပြည့်စုံသော အချက်အလက်အတန်းတစ်ခု",
            "ရှာဖွေရေးအင်ဂျင်",
            "ဇယားချက်ပြဖော်မြူလာတစ်မျိုး",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn: "What is a field?",
          questionMy: "Field ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A whole table of records",
            "A single piece of information within a record",
            "A password",
            "A picture stored in the database",
          ],
          optionsMy: [
            "Record များ ပါဝင်သော ဇယားတစ်ခုလုံး",
            "Record တစ်ခုအတွင်းရှိ တစ်ခုတည်းသော အချက်အလက်",
            "စကားဝှက်",
            "ဒေတာဘေ့စ်တွင် သိမ်းဆည်းထားသော ပုံတစ်ပုံ",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn: "How is a database table arranged?",
          questionMy: "ဒေတာဘေ့စ်ဇယားတစ်ခုကို မည်သို့ စီစဉ်ထားသနည်း။",
          optionsEn: [
            "Randomly, with no pattern at all",
            "In rows (records) and columns (fields)",
            "Only as a single long paragraph",
            "As a series of unrelated photographs",
          ],
          optionsMy: [
            "ပုံစံတစ်ခုမျှမရှိဘဲ ကျပန်းစီစဉ်ထားခြင်း",
            "အတန်း (records) နှင့် ကော်လံ (fields) အနေဖြင့် စီစဉ်ထားခြင်း",
            "ရှည်လျားသော စာပိုဒ်တစ်ပိုဒ်အနေဖြင့်သာ",
            "ဆက်စပ်မှုမရှိသော ဓာတ်ပုံများစီးရီးအနေဖြင့်",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "Which of these is a real-world database Nay Chi encountered this week?",
          questionMy:
              "ဤအပတ်တွင် နှင်းချည် ကြုံတွေ့ခဲ့ရသော လက်တွေ့ဒေတာဘေ့စ်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Her school library's digital catalogue",
            "A single birthday card",
            "A television remote control",
            "A pencil case",
          ],
          optionsMy: [
            "သူမကျောင်း စာကြည့်တိုက်၏ ဒစ်ဂျစ်တယ်စာရင်း",
            "မွေးနေ့ကတ်တစ်ခု",
            "ရုပ်မြင်သံကြားထိန်းချုပ်ခလုတ်",
            "ခဲတံအိတ်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek14 = CourseWeekDef(
  id: "course-year6-computing-w14",
  weekNumber: 14,
  titleEn: "Searching a Database",
  titleMy: "ဒေတာဘေ့စ်ကို ရှာဖွေခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w14-d1",
      dayNumber: 1,
      titleEn: "Search Queries and Keywords",
      titleMy: "ရှာဖွေမှု Query များနှင့် Keyword များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a search query in a database?",
          questionMy:
              "ဒေတာဘေ့စ်တစ်ခုတွင် search query ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A picture stored inside a record",
            "A question or set of words typed in to find matching records",
            "A password that locks the database",
            "A column heading that never changes",
          ],
          optionsMy: [
            "Record တစ်ခုအတွင်း သိမ်းဆည်းထားသော ပုံတစ်ပုံ",
            "ကိုက်ညီသော record များကို ရှာဖွေရန် ရိုက်ထည့်လိုက်သော မေးခွန်း သို့မဟုတ် စကားလုံးအစုအဝေးတစ်ခု",
            "ဒေတာဘေ့စ်ကို ပိတ်ထားသော စကားဝှက်",
            "ဘယ်တော့မှ မပြောင်းလဲသော ကော်လံခေါင်းစဉ်",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi types just the word \"book\" into the library database and gets thousands of results. What is the problem with her search?",
          questionMy:
              "နှင်းချည်သည် စာကြည့်တိုက်ဒေတာဘေ့စ်တွင် \"book\" ဟူသောစကားလုံးတစ်ခုတည်းကို ရိုက်ထည့်ရာ ရလဒ်ထောင်ချီပေါ်လာသည်။ သူမ၏ ရှာဖွေမှု၌ ပြဿနာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Her keyword is too specific",
            "Her keyword is too vague, so it matches almost every record",
            "The database is completely broken",
            "She typed the wrong language",
          ],
          optionsMy: [
            "သူမ၏ keyword သည် အလွန်တိကျလွန်းခြင်း",
            "သူမ၏ keyword သည် မရေရာလွန်းသဖြင့် record တိုင်းနီးပါးနှင့် ကိုက်ညီနေခြင်း",
            "ဒေတာဘေ့စ်သည် လုံးဝ ပျက်စီးနေခြင်း",
            "မှားယွင်းသော ဘာသာစကားဖြင့် ရိုက်ထည့်မိခြင်း",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn: "What is an exact match in a database search?",
          questionMy:
              "ဒေတာဘေ့စ်ရှာဖွေမှုတွင် exact match ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A result where the search words are found written exactly as typed",
            "A result that is always wrong",
            "A record with no fields at all",
            "A search that never returns any results",
          ],
          optionsMy: [
            "ရှာဖွေထားသော စကားလုံးများကို ရိုက်ထည့်ထားသည့်အတိုင်း အတိအကျတွေ့ရသည့် ရလဒ်",
            "အမြဲတမ်း မှားယွင်းနေသော ရလဒ်",
            "အကွက်တစ်ခုမှမရှိသော record",
            "ရလဒ်ဘယ်တော့မှ မထုတ်ပေးသော ရှာဖွေမှု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi wants only books written by Roald Dahl, so instead of searching every field she searches only the Author field. What is this kind of search called?",
          questionMy:
              "နှင်းချည်သည် Roald Dahl ရေးသော စာအုပ်များကိုသာ လိုချင်သဖြင့် အကွက်အားလုံးကို ရှာမည့်အစား Author အကွက်ကိုသာ ရှာဖွေသည်။ ဤသို့ ရှာဖွေမှုအမျိုးအစားကို အဘယ်ဟုခေါ်သနည်း။",
          optionsEn: [
            "A field-specific search",
            "A random search",
            "A broken search",
            "A colour search",
          ],
          optionsMy: [
            "အကွက်တစ်ခုတည်းအား ရှာဖွေမှု (Field-specific search)",
            "ကျပန်းရှာဖွေမှု",
            "ပျက်စီးနေသော ရှာဖွေမှု",
            "အရောင်ရှာဖွေမှု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is searching a well-organised database with fields usually faster than reading every record one by one?",
          questionMy:
              "အကွက်များဖြင့် စနစ်တကျစီစဉ်ထားသော ဒေတာဘေ့စ်ကို ရှာဖွေခြင်းသည် record တိုင်းကို တစ်ခုချင်းစီ ဖတ်ခြင်းထက် အဘယ့်ကြောင့် ပုံမှန်အားဖြင့် ပိုမြန်သနည်း။",
          optionsEn: [
            "Because the database can jump straight to matching records instead of checking every single one by hand",
            "Because reading every record is always faster in every case",
            "Because fields make the screen brighter",
            "Because a database deletes records it does not want you to see",
          ],
          optionsMy: [
            "ဒေတာဘေ့စ်သည် record တိုင်းကို လက်ဖြင့် စစ်ဆေးနေမည့်အစား ကိုက်ညီသော record များထံသို့ တိုက်ရိုက်ရောက်နိုင်သောကြောင့်",
            "record တိုင်းကို ဖတ်ခြင်းသည် ကိစ္စတိုင်းတွင် အမြဲမြန်သောကြောင့်",
            "Field များက မျက်နှာပြင်ကို ပိုတောက်ပစေသောကြောင့်",
            "ဒေတာဘေ့စ်သည် မတွေ့စေချင်သော record များကို ဖျက်ပစ်လိုက်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w14-d2",
      dayNumber: 2,
      titleEn: "Match the Search Vocabulary",
      titleMy: "ရှာဖွေမှု ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w14-dm-1",
          termEn: "Search query",
          termMy: "Search Query",
          matchEn:
              "A question or set of words typed into a database to find matching records",
          matchMy:
              "ကိုက်ညီသော record များကို ရှာဖွေရန် ရိုက်ထည့်လိုက်သော မေးခွန်း သို့မဟုတ် စကားလုံးအစုအဝေး",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w14-dm-2",
          termEn: "Keyword",
          termMy: "Keyword",
          matchEn: "An important word used to search for matching information",
          matchMy:
              "ကိုက်ညီသော အချက်အလက်ကို ရှာဖွေရန် အသုံးပြုသော အရေးပါသော စကားလုံး",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w14-dm-3",
          termEn: "Filter",
          termMy: "Filter",
          matchEn:
              "A rule that narrows results down to only the records that match",
          matchMy:
              "ကိုက်ညီသော record များကိုသာ ကျန်ရှိစေရန် ရလဒ်များကို ကျဉ်းအောင်ပြုလုပ်ပေးသော စည်းကမ်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w14-dm-4",
          termEn: "Exact match",
          termMy: "Exact Match",
          matchEn:
              "A search result where the typed words are found written exactly as they were entered",
          matchMy:
              "ရိုက်ထည့်ထားသော စကားလုံးများကို ရိုက်ထည့်ထားသည့်အတိုင်း အတိအကျတွေ့ရသည့် ရှာဖွေမှုရလဒ်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w14-dm-5",
          termEn: "Search results",
          termMy: "Search Results",
          matchEn: "The list of records a database finds that match a search",
          matchMy:
              "ရှာဖွေမှုတစ်ခုနှင့် ကိုက်ညီသော ဒေတာဘေ့စ်တွေ့ရှိသည့် record များ၏ စာရင်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w14-dm-6",
          termEn: "Field-specific search",
          termMy: "အကွက်တစ်ခုတည်း ရှာဖွေမှု",
          matchEn:
              "Searching within just one field, such as only the Author field, instead of the whole record",
          matchMy:
              "Record တစ်ခုလုံးအစား Author အကွက်ကဲ့သို့ အကွက်တစ်ခုတည်းအတွင်းသာ ရှာဖွေခြင်း",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w14-d3",
      dayNumber: 3,
      titleEn: "Sort: Specific Search or Vague Search?",
      titleMy: "စီစစ်ကြမည် - တိကျသောရှာဖွေမှုလား၊ မရေရာသောရှာဖွေမှုလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Specific Search", "Vague Search"],
        bucketsMy: ["တိကျသောရှာဖွေမှု", "မရေရာသောရှာဖွေမှု"],
        items: [
          SortingItem(
            id: "y6comp-w14-sort-1",
            labelEn:
                "Typing \"adventure books for readers aged 10\" into the library database",
            labelMy:
                "စာကြည့်တိုက်ဒေတာဘေ့စ်တွင် \"အသက် ၁၀ နှစ်အတွက် စွန့်စားခန်းစာအုပ်များ\" ဟု ရိုက်ထည့်ခြင်း",
            correctBucketEn: "Specific Search",
            correctBucketMy: "တိကျသောရှာဖွေမှု",
          ),
          SortingItem(
            id: "y6comp-w14-sort-2",
            labelEn: "Typing just the word \"book\"",
            labelMy: "\"book\" ဟူသော စကားလုံးတစ်လုံးတည်း ရိုက်ထည့်ခြင်း",
            correctBucketEn: "Vague Search",
            correctBucketMy: "မရေရာသောရှာဖွေမှု",
          ),
          SortingItem(
            id: "y6comp-w14-sort-3",
            labelEn:
                "Searching the Author field for the exact name \"Roald Dahl\"",
            labelMy:
                "Author အကွက်တွင် \"Roald Dahl\" ဟူသော အမည်တိကျစွာဖြင့် ရှာဖွေခြင်း",
            correctBucketEn: "Specific Search",
            correctBucketMy: "တိကျသောရှာဖွေမှု",
          ),
          SortingItem(
            id: "y6comp-w14-sort-4",
            labelEn: "Typing just the word \"thing\"",
            labelMy: "\"thing\" ဟူသော စကားလုံးတစ်လုံးတည်း ရိုက်ထည့်ခြင်း",
            correctBucketEn: "Vague Search",
            correctBucketMy: "မရေရာသောရှာဖွေမှု",
          ),
          SortingItem(
            id: "y6comp-w14-sort-5",
            labelEn:
                "Searching the Genre field for \"Mystery\" to find only mystery books",
            labelMy:
                "လျှို့ဝှက်ဇာတ်လမ်း စာအုပ်များကိုသာ တွေ့ရှိရန် Genre အကွက်တွင် \"Mystery\" ဟု ရှာဖွေခြင်း",
            correctBucketEn: "Specific Search",
            correctBucketMy: "တိကျသောရှာဖွေမှု",
          ),
          SortingItem(
            id: "y6comp-w14-sort-6",
            labelEn: "Typing just the word \"stuff\"",
            labelMy: "\"stuff\" ဟူသော စကားလုံးတစ်လုံးတည်း ရိုက်ထည့်ခြင်း",
            correctBucketEn: "Vague Search",
            correctBucketMy: "မရေရာသောရှာဖွေမှု",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w14-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Perfect Search",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ ပြည့်စုံသောရှာဖွေမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Perfect Search",
        titleMy: "နှင်းချည်၏ ပြည့်စုံသောရှာဖွေမှု",
        passageEn:
            "Nay Chi needs a mystery book for her book report, due on Friday. She sits down at the library computer and types just one word into the search box: \"book\". Instantly, the screen fills with thousands of results -- picture books, cookbooks, textbooks, and every mystery novel the library owns, all mixed together. \"That's far too many to look through,\" she sighs.\n\nU Zaw walks over and reminds her of last week's lesson: a good search query uses specific keywords, not vague ones. Nay Chi tries again, this time searching the Genre field for the exact word \"Mystery\" instead of searching every field at once. The results shrink from thousands down to just forty books. Better -- but still too many to check one by one before class.\n\nNay Chi thinks for a moment, then adds one more detail: she searches for \"Mystery\" books that are also currently available on the shelf, not already borrowed by someone else. This time, only six books appear on the screen, and one of them -- a mystery about a missing school trophy -- looks exactly right. \"A specific search really does save time,\" Nay Chi tells U Zaw, tucking the book under her arm.",
        passageMy:
            "နှင်းချည်သည် သောကြာနေ့ ပေးရမည့် စာအုပ်အစီရင်ခံစာအတွက် လျှို့ဝှက်ဇာတ်လမ်းစာအုပ်တစ်အုပ် လိုအပ်နေသည်။ သူမသည် စာကြည့်တိုက်ကွန်ပျူတာရှေ့တွင် ထိုင်ပြီး ရှာဖွေမှုအကွက်ထဲသို့ \"book\" ဟူသော စကားလုံးတစ်လုံးတည်း ရိုက်ထည့်လိုက်သည်။ ချက်ချင်းပင် စခရင်တွင် ရလဒ်ထောင်ချီ ဖြစ်ပေါ်လာသည် -- ပုံပါစာအုပ်များ၊ ချက်ပြုတ်စာအုပ်များ၊ ကျောင်းစာအုပ်များနှင့် စာကြည့်တိုက်ပိုင်ဆိုင်သော လျှို့ဝှက်ဝတ္ထုအားလုံး ရောနှောနေသည်။ \"ဒါက ကြည့်ဖို့ အများကြီးလွန်းတယ်\" ဟု သူမ အသက်ပြင်းစွာချသည်။\n\nဦးဇော်သည် ရောက်လာပြီး ယခင်အပတ်သင်ခန်းစာကို ပြန်သတိရစေသည် -- ကောင်းသော search query တစ်ခုသည် မရေရာသော keyword များအစား တိကျသော keyword များကို အသုံးပြုသည်။ နှင်းချည်သည် ထပ်မံစမ်းသပ်ရာ ဤအကြိမ်တွင် အကွက်အားလုံးကို တစ်ပြိုင်နက် ရှာမည့်အစား Genre အကွက်တွင် \"Mystery\" ဟူသောစကားလုံးကို အတိအကျ ရှာဖွေသည်။ ရလဒ်များသည် ထောင်ချီမှ စာအုပ်လေးဆယ်သာ ကျန်ရှိသွားသည်။ ပိုကောင်းသော်လည်း အတန်းမတက်မီ တစ်ခုချင်းစီ စစ်ရန် ဆက်လက်များနေသေးသည်။\n\nနှင်းချည် ခဏတစ်ကြိမ် စဉ်းစားပြီး အသေးစိတ်တစ်ခုထပ်ထည့်လိုက်သည် -- သူတစ်ဦးဦးက ငှားသွားခြင်းမရှိဘဲ ယခုစင်ပေါ်တွင် ရရှိနိုင်သေးသော \"Mystery\" စာအုပ်များကိုသာ ရှာဖွေလိုက်သည်။ ဤအကြိမ်တွင် စာအုပ်ခြောက်အုပ်သာ စခရင်ပေါ်တွင် ပေါ်လာပြီး၊ ၎င်းတို့အနက် ကျောင်းဆုတံဆိပ် ပျောက်ဆုံးမှုအကြောင်း လျှို့ဝှက်ဇာတ်လမ်းတစ်ပုဒ်သည် သူမလိုချင်သည်နှင့် အတိအကျ တွေ့ပုံရသည်။ \"တိကျသောရှာဖွေမှုက အချိန်ကို တကယ်ပဲ ချွေတာပေးတယ်\" ဟု နှင်းချည်က ဦးဇော်ကို ပြောပြီး စာအုပ်ကို လက်ကတွယ်ကာယူသွားသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "Why does Nay Chi need a book from the library?",
            questionMy:
                "နှင်းချည်သည် စာကြည့်တိုက်မှ စာအုပ်တစ်အုပ် အဘယ့်ကြောင့် လိုအပ်နေသနည်း။",
            optionsEn: [
              "For a book report due on Friday",
              "To decorate her bedroom",
              "To give it as a birthday gift",
              "To sell it to a classmate",
            ],
            optionsMy: [
              "သောကြာနေ့ ပေးရမည့် စာအုပ်အစီရင်ခံစာအတွက်",
              "သူမ၏အိပ်ခန်းကို အလှဆင်ရန်",
              "မွေးနေ့လက်ဆောင်အနေဖြင့် ပေးရန်",
              "အတန်းဖော်တစ်ဦးအား ရောင်းစားရန်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What happens when Nay Chi first searches using just the word \"book\"?",
            questionMy:
                "\"book\" ဟူသော စကားလုံးတစ်လုံးတည်းဖြင့် ပထမဆုံးရှာဖွေသောအခါ အဘယ်အရာဖြစ်ပျက်သနည်း။",
            optionsEn: [
              "The database shows no results at all",
              "Thousands of unrelated results appear, mixed together",
              "The database only shows mystery books",
              "The computer switches off",
            ],
            optionsMy: [
              "ဒေတာဘေ့စ်တွင် ရလဒ်တစ်ခုမျှ လုံးဝ မပေါ်ပါ",
              "ဆက်စပ်မှုမရှိသော ရလဒ်ထောင်ချီ ရောနှောကာ ပေါ်လာသည်",
              "ဒေတာဘေ့စ်က လျှို့ဝှက်ဇာတ်လမ်းစာအုပ်များကိုသာ ပြသည်",
              "ကွန်ပျူတာ ပိတ်သွားသည်",
            ],
            correctIndex: 1,
          ),
          QuizQuestion(
            questionEn: "What does Nay Chi search for in her second attempt?",
            questionMy:
                "ဒုတိယအကြိမ် ကြိုးစားရာတွင် နှင်းချည် အဘယ်အရာကို ရှာဖွေသနည်း။",
            optionsEn: [
              "The exact word \"Mystery\" in the Genre field",
              "Her own name in the Author field",
              "The word \"cookbook\"",
              "A random page number",
            ],
            optionsMy: [
              "Genre အကွက်တွင် \"Mystery\" ဟူသော စကားလုံးတိကျစွာ",
              "Author အကွက်တွင် သူမ၏ ကိုယ်ပိုင်အမည်",
              "\"cookbook\" ဟူသော စကားလုံး",
              "ကျပန်းစာမျက်နှာနံပါတ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What extra detail does Nay Chi add to narrow her search down to just six books?",
            questionMy:
                "သူမ၏ ရှာဖွေမှုကို စာအုပ်ခြောက်အုပ်ထိသာ ကျဉ်းအောင် လုပ်ရန် နှင်းချည် ထပ်ထည့်လိုက်သော အသေးစိတ်အချက်မှာ အဘယ်နည်း။",
            optionsEn: [
              "Only books currently available on the shelf, not borrowed by someone else",
              "Only books written in French",
              "Only books published this year",
              "Only books with a red cover",
            ],
            optionsMy: [
              "တစ်ဦးဦးက ငှားသွားခြင်းမရှိဘဲ ယခုစင်ပေါ်တွင် ရရှိနိုင်သေးသော စာအုပ်များသာ",
              "ပြင်သစ်ဘာသာဖြင့် ရေးထားသော စာအုပ်များသာ",
              "ဤနှစ် ထုတ်ဝေခဲ့သော စာအုပ်များသာ",
              "အနီရောင်ဖုံးဖြင့် စာအုပ်များသာ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What lesson does Nay Chi learn by the end of the passage?",
            questionMy:
                "စာပိုဒ်အဆုံးတွင် နှင်းချည် သင်ယူမိသော သင်ခန်းစာမှာ အဘယ်နည်း။",
            optionsEn: [
              "A specific search really does save time",
              "Vague searches always work best",
              "Librarians should never help with searching",
              "Databases cannot search by genre",
            ],
            optionsMy: [
              "တိကျသောရှာဖွေမှုက အချိန်ကို တကယ်ပဲ ချွေတာပေးကြောင်း",
              "မရေရာသောရှာဖွေမှုများသည် အမြဲအကောင်းဆုံးအလုပ်လုပ်ကြောင်း",
              "စာကြည့်တိုက်မှူးများသည် ရှာဖွေမှုတွင် ဘယ်တော့မှ မကူညီသင့်ကြောင်း",
              "ဒေတာဘေ့စ်များသည် genre ဖြင့် ရှာဖွေ၍ မရနိုင်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w14-d5",
      dayNumber: 5,
      titleEn: "Searching Round-Up",
      titleMy: "ရှာဖွေမှု အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a keyword?",
          questionMy: "Keyword ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "An important word used to search for information",
            "A type of database error",
            "A colour used in charts",
            "A password used only once",
          ],
          optionsMy: [
            "အချက်အလက်ကို ရှာဖွေရန် အသုံးပြုသော အရေးပါသော စကားလုံး",
            "ဒေတာဘေ့စ်အမှားတစ်မျိုး",
            "ဂရပ်များတွင် သုံးသော အရောင်",
            "တစ်ကြိမ်တည်း သုံးသော စကားဝှက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why does typing a vague keyword like \"thing\" cause problems when searching a database?",
          questionMy:
              "\"thing\" ကဲ့သို့ မရေရာသော keyword ကို ရိုက်ထည့်ခြင်းက ဒေတာဘေ့စ်ရှာဖွေမှုတွင် အဘယ့်ကြောင့် ပြဿနာဖြစ်စေသနည်း။",
          optionsEn: [
            "It matches almost every record, giving far too many results",
            "It deletes every record in the database",
            "It only searches the Author field",
            "It makes the computer shut down",
          ],
          optionsMy: [
            "Record တိုင်းနီးပါးနှင့် ကိုက်ညီနေသဖြင့် ရလဒ်များစွာ ရလာစေခြင်း",
            "ဒေတာဘေ့စ်ရှိ record တိုင်းကို ဖျက်ပစ်ခြင်း",
            "Author အကွက်ကိုသာ ရှာဖွေခြင်း",
            "ကွန်ပျူတာကို ပိတ်ပစ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does a field-specific search do?",
          questionMy:
              "အကွက်တစ်ခုတည်း ရှာဖွေမှုတစ်ခုသည် အဘယ်အရာကို လုပ်ဆောင်သနည်း။",
          optionsEn: [
            "Searches within just one field instead of every field",
            "Deletes fields the searcher does not like",
            "Changes the colour of every record",
            "Always returns zero results",
          ],
          optionsMy: [
            "အကွက်အားလုံးအစား အကွက်တစ်ခုတည်းအတွင်းသာ ရှာဖွေခြင်း",
            "ရှာဖွေသူ မကြိုက်သော အကွက်များကို ဖျက်ပစ်ခြင်း",
            "Record တိုင်း၏ အရောင်ကို ပြောင်းလဲခြင်း",
            "ရလဒ်သုညကိုသာ အမြဲထုတ်ပေးခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading, how many books did Nay Chi's most specific search return?",
          questionMy:
              "စာဖတ်ခြင်းတွင် နှင်းချည်၏ အတိကျဆုံးရှာဖွေမှုက စာအုပ်ဘယ်နှစ်အုပ် ပြန်ထုတ်ပေးခဲ့သနည်း။",
          optionsEn: ["Six", "One thousand", "Zero", "Forty"],
          optionsMy: ["ခြောက်အုပ်", "တစ်ထောင်", "သုည", "လေးဆယ်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the main benefit of writing a specific, well-planned search query?",
          questionMy:
              "တိကျပြီး ကောင်းစွာစီစဉ်ထားသော search query တစ်ခုကို ရေးသားခြင်း၏ အဓိကအကျိုးကျေးဇူးမှာ အဘယ်နည်း။",
          optionsEn: [
            "It quickly finds exactly the records you need instead of thousands of irrelevant ones",
            "It makes the database delete old records",
            "It changes the database's password automatically",
            "It removes the need for fields entirely",
          ],
          optionsMy: [
            "ဆက်စပ်မှုမရှိသော ထောင်ချီရလဒ်များအစား သင်လိုအပ်သော record များကို လျင်မြန်စွာ တွေ့စေခြင်း",
            "ဒေတာဘေ့စ်က ဟောင်းနွမ်းသော record များကို ဖျက်ပစ်စေခြင်း",
            "ဒေတာဘေ့စ်၏ စကားဝှက်ကို အလိုအလျောက် ပြောင်းလဲပေးခြင်း",
            "အကွက်များ လိုအပ်ချက်ကို လုံးဝ ဖယ်ရှားပေးခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek15 = CourseWeekDef(
  id: "course-year6-computing-w15",
  weekNumber: 15,
  titleEn: "Sorting and Asking Big Questions",
  titleMy: "အချက်အလက်များကို စီစစ်ခြင်းနှင့် မေးခွန်းကြီးများ မေးမြန်းခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w15-d1",
      dayNumber: 1,
      titleEn: "Ascending, Descending and Combining Conditions",
      titleMy: "အတက်စဉ်၊ အဆင်းစဉ်နှင့် အခြေအနေများ ပေါင်းစပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What does it mean to sort a database's records in ascending order?",
          questionMy:
              "ဒေတာဘေ့စ်၏ record များကို ascending order ဖြင့် စီစစ်ခြင်းဆိုသည်မှာ အဘယ်အဓိပ္ပာယ်ရှိသနည်း။",
          optionsEn: [
            "Arranging them from smallest or earliest to largest or latest",
            "Deleting every record with a small value",
            "Arranging them in a completely random order",
            "Hiding the records from view",
          ],
          optionsMy: [
            "အသေးဆုံး သို့မဟုတ် အစောဆုံးမှ အကြီးဆုံး သို့မဟုတ် နောက်ဆုံးသို့ စီစဉ်ခြင်း",
            "တန်ဖိုးသေးငယ်သော record တိုင်းကို ဖျက်ပစ်ခြင်း",
            "လုံးဝကျပန်းအစီအစဉ်ဖြင့် စီစဉ်ခြင်း",
            "Record များကို မျက်နှာပြင်မှ ဖျောက်ထားခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi sorts the library database so the newest arrivals appear first and the oldest appear last. What is this order called?",
          questionMy:
              "နှင်းချည်သည် အသစ်ဆုံးရောက်ရှိလာသော စာအုပ်များ အရင်ဆုံးပေါ်ပြီး အဟောင်းဆုံးများ နောက်ဆုံးတွင် ပေါ်လာစေရန် စာကြည့်တိုက်ဒေတာဘေ့စ်ကို စီစစ်လိုက်သည်။ ဤအစီအစဉ်ကို အဘယ်ဟုခေါ်သနည်း။",
          optionsEn: [
            "Ascending order",
            "Descending order",
            "A search query",
            "A field",
          ],
          optionsMy: [
            "အတက်စဉ်အစီအစဉ် (Ascending order)",
            "အဆင်းစဉ်အစီအစဉ် (Descending order)",
            "Search query",
            "Field",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "What does combining two conditions with AND do to a database search?",
          questionMy:
              "AND ကို အသုံးပြု၍ အခြေအနေနှစ်ခုကို ပေါင်းစပ်ခြင်းက ဒေတာဘေ့စ်ရှာဖွေမှုတွင် အဘယ်အရာကို ဖြစ်ပေါ်စေသနည်း။",
          optionsEn: [
            "Only records that match both conditions at the same time appear in the results",
            "Every single record in the database appears, with no filtering at all",
            "The database deletes both conditions",
            "Only records matching neither condition appear",
          ],
          optionsMy: [
            "အခြေအနေနှစ်ခုလုံးနှင့် တစ်ပြိုင်နက် ကိုက်ညီသော record များသာ ရလဒ်တွင် ပေါ်လာခြင်း",
            "ဒေတာဘေ့စ်ရှိ record တိုင်းကို စစ်ထုတ်ခြင်းလုံးဝမရှိဘဲ ပေါ်လာခြင်း",
            "ဒေတာဘေ့စ်သည် အခြေအနေနှစ်ခုစလုံးကို ဖျက်ပစ်ခြင်း",
            "အခြေအနေနှစ်ခုစလုံးနှင့် မကိုက်ညီသော record များသာ ပေါ်လာခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What does combining two conditions with OR do to a database search?",
          questionMy:
              "OR ကို အသုံးပြု၍ အခြေအနေနှစ်ခုကို ပေါင်းစပ်ခြင်းက ဒေတာဘေ့စ်ရှာဖွေမှုတွင် အဘယ်အရာကို ဖြစ်ပေါ်စေသနည်း။",
          optionsEn: [
            "Any record that matches at least one of the conditions appears in the results",
            "Only records matching both conditions at once appear",
            "Nothing appears in the results at all",
            "The database is deleted permanently",
          ],
          optionsMy: [
            "အခြေအနေအနည်းဆုံး တစ်ခုနှင့် ကိုက်ညီသော record မှန်သမျှ ရလဒ်တွင် ပေါ်လာခြင်း",
            "အခြေအနေနှစ်ခုလုံးနှင့် တစ်ပြိုင်နက် ကိုက်ညီသော record များသာ ပေါ်လာခြင်း",
            "ရလဒ်တွင် ဘာမှ လုံးဝမပေါ်ခြင်း",
            "ဒေတာဘေ့စ်ကို အပြီးတိုင် ဖျက်ပစ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi wants to answer the real question \"Which mystery books are available right now?\" What must she do to answer it well?",
          questionMy:
              "\"ယခုအချိန်တွင် ရရှိနိုင်သော လျှို့ဝှက်ဇာတ်လမ်းစာအုပ်များမှာ မည်သည်များနည်း\" ဟူသော လက်တွေ့မေးခွန်းကို ဖြေရှင်းလိုသောအခါ နှင်းချည် ကောင်းစွာဖြေဆိုနိုင်ရန် အဘယ်အရာလုပ်ရမည်နည်း။",
          optionsEn: [
            "Combine Genre = Mystery AND Available = Yes in a single search",
            "Only look at the newest book in the library",
            "Ask a friend to guess the answer",
            "Delete every book that is not a mystery",
          ],
          optionsMy: [
            "Genre = Mystery AND Available = Yes ကို ရှာဖွေမှုတစ်ခုတည်းတွင် ပေါင်းစပ်ခြင်း",
            "စာကြည့်တိုက်ရှိ အသစ်ဆုံးစာအုပ်ကိုသာ ကြည့်ခြင်း",
            "အဖြေကို ခန့်မှန်းရန် သူငယ်ချင်းတစ်ဦးအား တောင်းဆိုခြင်း",
            "လျှို့ဝှက်ဇာတ်လမ်းမဟုတ်သော စာအုပ်တိုင်းကို ဖျက်ပစ်ခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w15-d2",
      dayNumber: 2,
      titleEn: "Match the Sorting and Query Vocabulary",
      titleMy: "စီစစ်ခြင်းနှင့် Query ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w15-dm-1",
          termEn: "Ascending order",
          termMy: "အတက်စဉ်အစီအစဉ် (Ascending order)",
          matchEn:
              "Arranging records from smallest or earliest to largest or latest, such as A to Z",
          matchMy:
              "A မှ Z သို့ကဲ့သို့ အသေးဆုံးမှ အကြီးဆုံးသို့ record များကို စီစဉ်ခြင်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w15-dm-2",
          termEn: "Descending order",
          termMy: "အဆင်းစဉ်အစီအစဉ် (Descending order)",
          matchEn:
              "Arranging records from largest or latest to smallest or earliest, such as Z to A",
          matchMy:
              "Z မှ A သို့ကဲ့သို့ အကြီးဆုံးမှ အသေးဆုံးသို့ record များကို စီစဉ်ခြင်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w15-dm-3",
          termEn: "Sort",
          termMy: "စီစစ်ခြင်း (Sort)",
          matchEn: "Putting records into a chosen order based on one field",
          matchMy:
              "အကွက်တစ်ခုအပေါ်အခြေခံ၍ record များကို ရွေးချယ်ထားသောအစီအစဉ်ဖြင့် စီစဉ်ခြင်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w15-dm-4",
          termEn: "AND (combined condition)",
          termMy: "AND (ပေါင်းစပ်အခြေအနေ)",
          matchEn:
              "A search rule where a record must match both conditions to appear in the results",
          matchMy:
              "Record တစ်ခုသည် ရလဒ်တွင် ပေါ်လာရန် အခြေအနေနှစ်ခုစလုံးနှင့် ကိုက်ညီရမည့် ရှာဖွေရေးစည်းကမ်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w15-dm-5",
          termEn: "OR (either condition)",
          termMy: "OR (တစ်ခုခုသောအခြေအနေ)",
          matchEn:
              "A search rule where a record appears if it matches at least one of the conditions",
          matchMy:
              "Record တစ်ခုသည် အခြေအနေအနည်းဆုံးတစ်ခုနှင့် ကိုက်ညီပါက ပေါ်လာစေမည့် ရှာဖွေရေးစည်းကမ်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w15-dm-6",
          termEn: "Real-world question",
          termMy: "လက်တွေ့မေးခွန်း",
          matchEn:
              "A genuine question that searching and sorting a database can help answer",
          matchMy:
              "ဒေတာဘေ့စ်ကို ရှာဖွေ၍ စီစစ်ခြင်းဖြင့် အဖြေရှာနိုင်သော အစစ်အမှန်မေးခွန်း",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w15-d3",
      dayNumber: 3,
      titleEn: "Sort: Ascending or Descending?",
      titleMy: "စီစစ်ကြမည် - အတက်စဉ်လား၊ အဆင်းစဉ်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Ascending Order", "Descending Order"],
        bucketsMy: ["အတက်စဉ်အစီအစဉ်", "အဆင်းစဉ်အစီအစဉ်"],
        items: [
          SortingItem(
            id: "y6comp-w15-sort-1",
            labelEn: "Book titles listed from A to Z",
            labelMy: "စာအုပ်ခေါင်းစဉ်များကို A မှ Z သို့ စာရင်းပြုစုထားခြင်း",
            correctBucketEn: "Ascending Order",
            correctBucketMy: "အတက်စဉ်အစီအစဉ်",
          ),
          SortingItem(
            id: "y6comp-w15-sort-2",
            labelEn: "Highest quiz scores listed first, then lowest",
            labelMy:
                "အမြင့်ဆုံးအမှတ်များကို အရင်ဆုံးစာရင်းပြုစုပြီး အနိမ့်ဆုံးများကို နောက်ဆုံးတင်ခြင်း",
            correctBucketEn: "Descending Order",
            correctBucketMy: "အဆင်းစဉ်အစီအစဉ်",
          ),
          SortingItem(
            id: "y6comp-w15-sort-3",
            labelEn: "Prices listed from cheapest to most expensive",
            labelMy:
                "ဈေးနှုန်းများကို အသက်သာဆုံးမှ အဈေးကြီးဆုံးသို့ စာရင်းပြုစုထားခြင်း",
            correctBucketEn: "Ascending Order",
            correctBucketMy: "အတက်စဉ်အစီအစဉ်",
          ),
          SortingItem(
            id: "y6comp-w15-sort-4",
            labelEn: "Newest library arrivals listed first, oldest listed last",
            labelMy:
                "အသစ်ဆုံးရောက်ရှိလာသော စာအုပ်များကို အရင်ဆုံးစာရင်းပြုစုပြီး အဟောင်းဆုံးများကို နောက်ဆုံးတင်ခြင်း",
            correctBucketEn: "Descending Order",
            correctBucketMy: "အဆင်းစဉ်အစီအစဉ်",
          ),
          SortingItem(
            id: "y6comp-w15-sort-5",
            labelEn: "Student ages listed from youngest to oldest",
            labelMy:
                "ကျောင်းသားအသက်များကို အငယ်ဆုံးမှ အကြီးဆုံးသို့ စာရင်းပြုစုထားခြင်း",
            correctBucketEn: "Ascending Order",
            correctBucketMy: "အတက်စဉ်အစီအစဉ်",
          ),
          SortingItem(
            id: "y6comp-w15-sort-6",
            labelEn:
                "Most-borrowed books listed first, least-borrowed listed last",
            labelMy:
                "အများဆုံးငှားရမ်းသော စာအုပ်များကို အရင်ဆုံးစာရင်းပြုစုပြီး အနည်းဆုံးငှားရမ်းသောများကို နောက်ဆုံးတင်ခြင်း",
            correctBucketEn: "Descending Order",
            correctBucketMy: "အဆင်းစဉ်အစီအစဉ်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w15-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Big Question",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ မေးခွန်းကြီး",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Big Question",
        titleMy: "နှင်းချည်၏ မေးခွန်းကြီး",
        passageEn:
            "Ms. Thanda sets the class a challenge: use the library database to answer a real question -- \"Which mystery books, currently available on the shelf, should we recommend to Year 6 pupils first?\" Nay Chi realises this is not a simple search. It needs both searching and sorting together.\n\nFirst, she builds her search query: Genre = Mystery AND Available = Yes. The AND makes sure only books that satisfy both conditions appear -- no borrowed books, and nothing outside the mystery genre. Eighteen books meet both conditions, still too many to recommend all at once.\n\nSo Nay Chi sorts the eighteen results in descending order by how many times each book has been borrowed before, most-borrowed first. The very top of her sorted list shows the three most popular available mystery books in the whole library. She reads out the three titles to her group, remembering how she once sorted her hobbies data by number of votes last term. \"Sorting and searching together really do answer big questions,\" she tells Ms. Thanda proudly.",
        passageMy:
            "ဒေါ်သန္တာသည် အတန်းအား စိန်ခေါ်ချက်တစ်ခု ပေးလိုက်သည် -- \"ယခုစင်ပေါ်တွင် ရရှိနိုင်သေးသော လျှို့ဝှက်ဇာတ်လမ်း စာအုပ်များအနက် Year 6 ကျောင်းသားများအား ဦးစွာ ဘယ်စာအုပ်များကို အကြံပြုသင့်သနည်း\" ဟူသော လက်တွေ့မေးခွန်းကို စာကြည့်တိုက်ဒေတာဘေ့စ်ကို အသုံးပြု၍ ဖြေရှင်းရန်ဖြစ်သည်။ ဒါသည် ရိုးရှင်းသော ရှာဖွေမှုတစ်ခုမဟုတ်ကြောင်း နှင်းချည် သိရှိလိုက်သည်။ ရှာဖွေခြင်းနှင့် စီစစ်ခြင်း နှစ်ခုစလုံး အတူတကွ လိုအပ်သည်။\n\nဦးစွာ သူမသည် search query ကို တည်ဆောက်သည် - Genre = Mystery AND Available = Yes။ AND က အခြေအနေနှစ်ခုစလုံးနှင့် ကိုက်ညီသော စာအုပ်များကိုသာ ပေါ်လာစေသည် -- ငှားထားသော စာအုပ်များနှင့် လျှို့ဝှက်ဇာတ်လမ်းအမျိုးအစားမဟုတ်သော စာအုပ်များ ပါဝင်မလာပါ။ စာအုပ်တစ်ဆယ့်ရှစ်အုပ်သည် အခြေအနေနှစ်ခုစလုံးနှင့် ကိုက်ညီသော်လည်း တစ်ကြိမ်တည်း အကြံပြုရန် ဆက်လက် များနေသေးသည်။\n\nထို့ကြောင့် နှင်းချည်သည် ထိုစာအုပ်တစ်ဆယ့်ရှစ်အုပ်ကို ယခင်က ငှားရမ်းခဲ့သော အကြိမ်အရေအတွက်ဖြင့် အများဆုံးငှားရမ်းသည့်စာအုပ် အရင်ဆုံးပေါ်စေရန် descending order ဖြင့် စီစစ်လိုက်သည်။ သူမ၏ စီစစ်ထားသောစာရင်း၏ အထိပ်ဆုံးတွင် စာကြည့်တိုက်တစ်ခုလုံးရှိ လူကြိုက်အများဆုံး ရရှိနိုင်သော လျှို့ဝှက်ဇာတ်လမ်းစာအုပ်သုံးအုပ်ကို တွေ့ရသည်။ သူမသည် ယခင်တစ်နှစ်တာ ဆန္ဒမဲအရေအတွက်ဖြင့် ဝါသနာအချက်အလက်ကို စီစစ်ခဲ့ဖူးသည့်အကြောင်း သတိရမိလျက် ခေါင်းစဉ်သုံးခုကို သူမ၏အုပ်စုအား ဖတ်ပြသည်။ \"စီစစ်ခြင်းနှင့် ရှာဖွေခြင်း နှစ်ခုပေါင်းလိုက်တာ မေးခွန်းကြီးတွေကို တကယ်ပဲ ဖြေရှင်းပေးနိုင်တယ်\" ဟု သူမက ဒေါ်သန္တာအား ဂုဏ်ယူစွာ ပြောပြသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What real question does Ms. Thanda ask the class to answer?",
            questionMy:
                "ဒေါ်သန္တာက အတန်းအား ဖြေရှင်းရန် အဘယ်လက်တွေ့မေးခွန်း မေးမြန်းသနည်း။",
            optionsEn: [
              "Which mystery books, currently available, should be recommended to Year 6 pupils first",
              "How many pencils are in the classroom",
              "Which student is the tallest",
              "What time does the library close",
            ],
            optionsMy: [
              "ယခုရရှိနိုင်သေးသော လျှို့ဝှက်ဇာတ်လမ်းစာအုပ်များအနက် Year 6 ကျောင်းသားများအား ဦးစွာ ဘယ်စာအုပ်များကို အကြံပြုသင့်သနည်း",
              "အတန်းထဲတွင် ခဲတံဘယ်နှစ်တံရှိသနည်း",
              "ကျောင်းသားထဲတွင် ဘယ်သူ အရပ်အမြင့်ဆုံးနည်း",
              "စာကြည့်တိုက် ဘယ်အချိန်ပိတ်သနည်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What search query does Nay Chi build first?",
            questionMy:
                "နှင်းချည် ဦးစွာ တည်ဆောက်လိုက်သော search query မှာ အဘယ်နည်း။",
            optionsEn: [
              "Genre = Mystery AND Available = Yes",
              "Author = Roald Dahl OR Author = J.K. Rowling",
              "Price = Free",
              "Title = Mystery",
            ],
            optionsMy: [
              "Genre = Mystery AND Available = Yes",
              "Author = Roald Dahl OR Author = J.K. Rowling",
              "Price = Free",
              "Title = Mystery",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How many books match both of Nay Chi's conditions?",
            questionMy:
                "နှင်းချည်၏ အခြေအနေနှစ်ခုစလုံးနှင့် ကိုက်ညီသော စာအုပ်ဘယ်နှစ်အုပ်ရှိသနည်း။",
            optionsEn: ["Eighteen", "Three", "One thousand", "Zero"],
            optionsMy: ["တစ်ဆယ့်ရှစ်အုပ်", "သုံးအုပ်", "တစ်ထောင်", "သုည"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How does Nay Chi sort her eighteen results?",
            questionMy:
                "သူမ၏ စာအုပ်တစ်ဆယ့်ရှစ်အုပ်ရလဒ်ကို နှင်းချည် မည်သို့ စီစစ်လိုက်သနည်း။",
            optionsEn: [
              "In descending order by how many times each book has been borrowed",
              "In ascending order by price",
              "Randomly, without any order",
              "Alphabetically by the librarian's name",
            ],
            optionsMy: [
              "စာအုပ်တစ်အုပ်စီ ယခင်ငှားရမ်းခဲ့သော အကြိမ်အရေအတွက်ဖြင့် descending order ဖြင့်",
              "ဈေးနှုန်းအလိုက် ascending order ဖြင့်",
              "အစီအစဉ်တစ်ခုမျှမရှိဘဲ ကျပန်းဖြင့်",
              "စာကြည့်တိုက်မှူး၏အမည်အလိုက် အက္ခရာစဉ်ဖြင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What does Nay Chi recall from last term that this task reminds her of?",
            questionMy:
                "ဤလုပ်ငန်းက နှင်းချည်အား ယခင်တစ်နှစ်တာမှ အဘယ်အရာကို ပြန်သတိရစေသနည်း။",
            optionsEn: [
              "Sorting her hobbies data by number of votes",
              "Learning her multiplication tables",
              "Building a paper aeroplane",
              "Painting a self-portrait",
            ],
            optionsMy: [
              "ဝါသနာအချက်အလက်ကို ဆန္ဒမဲအရေအတွက်ဖြင့် စီစစ်ခဲ့သည်",
              "မြှောက်ဇယားများ လေ့လာခဲ့သည်",
              "စက္ကူလေယာဉ်ပျံ တစ်စင်းလုပ်ခဲ့သည်",
              "မိမိကိုယ်ပုံ ပန်းချီရေးဆွဲခဲ့သည်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w15-d5",
      dayNumber: 5,
      titleEn: "Sorting and Questioning Round-Up",
      titleMy: "စီစစ်ခြင်းနှင့် မေးခွန်းမေးခြင်း အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does sorting records in descending order mean?",
          questionMy:
              "Record များကို descending order ဖြင့် စီစစ်ခြင်းဆိုသည်မှာ အဘယ်အဓိပ္ပာယ်ရှိသနည်း။",
          optionsEn: [
            "Arranging from largest or latest to smallest or earliest",
            "Arranging from smallest to largest only",
            "Deleting every large value",
            "Hiding all the records",
          ],
          optionsMy: [
            "အကြီးဆုံး သို့မဟုတ် နောက်ဆုံးမှ အသေးဆုံး သို့မဟုတ် အစောဆုံးသို့ စီစဉ်ခြင်း",
            "အသေးဆုံးမှ အကြီးဆုံးသို့သာ စီစဉ်ခြင်း",
            "တန်ဖိုးကြီးသမျှကို ဖျက်ပစ်ခြင်း",
            "record အားလုံးကို ဖျောက်ထားခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does AND do when combining two search conditions?",
          questionMy:
              "ရှာဖွေမှုအခြေအနေနှစ်ခုကို ပေါင်းစပ်ရာတွင် AND သည် အဘယ်အလုပ်ကို လုပ်ဆောင်သနည်း။",
          optionsEn: [
            "Requires a record to match both conditions to appear",
            "Requires a record to match only one condition",
            "Deletes both conditions completely",
            "Shows every record regardless of match",
          ],
          optionsMy: [
            "Record တစ်ခုသည် ပေါ်လာရန် အခြေအနေနှစ်ခုစလုံးနှင့် ကိုက်ညီရန် လိုအပ်ခြင်း",
            "Record တစ်ခုသည် အခြေအနေတစ်ခုတည်းနှင့်သာ ကိုက်ညီရန် လိုအပ်ခြင်း",
            "အခြေအနေနှစ်ခုစလုံးကို လုံးဝဖျက်ပစ်ခြင်း",
            "ကိုက်ညီစေ မကိုက်ညီစေ record တိုင်းကို ပြသခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does OR do when combining two search conditions?",
          questionMy:
              "ရှာဖွေမှုအခြေအနေနှစ်ခုကို ပေါင်းစပ်ရာတွင် OR သည် အဘယ်အလုပ်ကို လုပ်ဆောင်သနည်း။",
          optionsEn: [
            "Shows a record if it matches at least one of the conditions",
            "Shows a record only if it matches both conditions",
            "Deletes every matching record",
            "Only works with numbers, never words",
          ],
          optionsMy: [
            "Record တစ်ခုသည် အခြေအနေအနည်းဆုံးတစ်ခုနှင့် ကိုက်ညီပါက ပြသခြင်း",
            "Record တစ်ခုသည် အခြေအနေနှစ်ခုစလုံးနှင့် ကိုက်ညီမှသာ ပြသခြင်း",
            "ကိုက်ညီသော record တိုင်းကို ဖျက်ပစ်ခြင်း",
            "ဂဏန်းများနှင့်သာ အလုပ်လုပ်ပြီး စကားလုံးများနှင့် လုံးဝမလုပ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, what search query did Nay Chi and her class use to answer their real question?",
          questionMy:
              "စာဖတ်ခြင်းစာပိုဒ်တွင် နှင်းချည်နှင့် သူမ၏အတန်းသည် လက်တွေ့မေးခွန်းကို ဖြေရှင်းရန် မည်သည့် search query ကို အသုံးပြုခဲ့သနည်း။",
          optionsEn: [
            "Genre = Mystery AND Available = Yes",
            "Title = Cookbook",
            "Author = Unknown OR Author = Missing",
            "Price = 0",
          ],
          optionsMy: [
            "Genre = Mystery AND Available = Yes",
            "Title = Cookbook",
            "Author = Unknown OR Author = Missing",
            "Price = 0",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why does answering a real question often need both searching and sorting together?",
          questionMy:
              "လက်တွေ့မေးခွန်းတစ်ခုကို ဖြေရှင်းရာတွင် ရှာဖွေခြင်းနှင့် စီစစ်ခြင်း နှစ်ခုစလုံး အတူတကွ အဘယ့်ကြောင့် လိုအပ်လေ့ရှိသနည်း။",
          optionsEn: [
            "Searching narrows down to matching records, and sorting then puts those matching records into a useful order",
            "Sorting always deletes the search results",
            "Searching and sorting always give the exact same result",
            "Only sorting is ever necessary, searching is optional",
          ],
          optionsMy: [
            "ရှာဖွေခြင်းက ကိုက်ညီသော record များအထိ ကျဉ်းချုံ့ပေးပြီး၊ စီစစ်ခြင်းက ထို record များကို အသုံးဝင်သောအစီအစဉ်ဖြင့် ပြန်စီစဉ်ပေးသည်",
            "စီစစ်ခြင်းသည် ရှာဖွေမှုရလဒ်များကို အမြဲဖျက်ပစ်သည်",
            "ရှာဖွေခြင်းနှင့် စီစစ်ခြင်းက အမြဲ တူညီသောရလဒ်ကိုသာ ပေးသည်",
            "စီစစ်ခြင်းသာ လိုအပ်ပြီး ရှာဖွေခြင်းက ရွေးချယ်ခွင့်သာဖြစ်သည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek16 = CourseWeekDef(
  id: "course-year6-computing-w16",
  weekNumber: 16,
  titleEn: "Capstone: Nay Chi's Class Hobbies Database Challenge",
  titleMy: "Capstone - နှင်းချည်၏ အတန်းဝါသနာ ဒေတာဘေ့စ် စိန်ခေါ်မှု",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w16-d1",
      dayNumber: 1,
      titleEn: "Turning a Spreadsheet into a Database",
      titleMy: "ဇယားချက်ပြကို ဒေတာဘေ့စ်အဖြစ် ပြောင်းလဲခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Last term, what did Nay Chi and her classmates use to tally their favourite hobbies?",
          questionMy:
              "ယခင်တစ်နှစ်တာ နှင်းချည်နှင့် သူမ၏အတန်းဖော်များသည် သူတို့၏ အကြိုက်ဆုံးဝါသနာများကို တစ်ဂဏန်းချင်း စုစည်းရန် အဘယ်အရာကို အသုံးပြုခဲ့ကြသနည်း။",
          optionsEn: [
            "A spreadsheet with a pie chart",
            "A search engine",
            "A video game",
            "A musical instrument",
          ],
          optionsMy: [
            "ဝိုင်းပုံဂရပ်ပါသော ဇယားချက်ပြ",
            "ရှာဖွေရေးအင်ဂျင်",
            "ဗီဒီယိုဂိမ်း",
            "တူရိယာတစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "This term, Nay Chi rebuilds her hobbies data as a proper database. What must she decide first?",
          questionMy:
              "ဤတစ်နှစ်တာတွင် နှင်းချည်သည် သူမ၏ ဝါသနာအချက်အလက်များကို ပြည့်စုံသော ဒေတာဘေ့စ်တစ်ခုအဖြစ် ပြန်လည်တည်ဆောက်သည်။ သူမ ဦးစွာ ဆုံးဖြတ်ရမည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Which fields her database needs, such as Name, Favourite Hobby and Second Favourite Hobby",
            "What colour to paint the classroom wall",
            "Which day the library is closed",
            "How many chairs are in the classroom",
          ],
          optionsMy: [
            "Name၊ Favourite Hobby နှင့် Second Favourite Hobby ကဲ့သို့ သူမ၏ ဒေတာဘေ့စ်လိုအပ်သော field များ",
            "အတန်းနံရံကို ဘယ်အရောင်သုတ်မည်",
            "စာကြည့်တိုက် ဘယ်နေ့ ပိတ်မည်",
            "အတန်းထဲတွင် ကုလားထိုင်ဘယ်နှစ်လုံးရှိသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "How is a database different from the plain spreadsheet Nay Chi used last term, even though both use rows and columns?",
          questionMy:
              "ဇယားချက်ပြနှင့် ဒေတာဘေ့စ်နှစ်ခုစလုံးသည် အတန်းနှင့်ကော်လံများကို အသုံးပြုသော်လည်း ဒေတာဘေ့စ်သည် ယခင်တစ်နှစ်တာ နှင်းချည်သုံးခဲ့သော ရိုးရိုးဇယားချက်ပြနှင့် မည်သို့ ကွာခြားသနည်း။",
          optionsEn: [
            "A database is designed for fast, powerful searching and filtering across many records at once",
            "A database can only hold one single record",
            "A database cannot use rows or columns at all",
            "A database is only used for drawing pictures",
          ],
          optionsMy: [
            "ဒေတာဘေ့စ်သည် record အများအပြားကို တစ်ပြိုင်နက် လျင်မြန်ပြီး အားကောင်းစွာ ရှာဖွေစစ်ထုတ်နိုင်ရန် ဒီဇိုင်းထုတ်ထားခြင်း",
            "ဒေတာဘေ့စ်သည် record တစ်ခုတည်းကိုသာ ထားနိုင်ခြင်း",
            "ဒေတာဘေ့စ်သည် အတန်း သို့မဟုတ် ကော်လံများကို လုံးဝ မသုံးနိုင်ခြင်း",
            "ဒေတာဘေ့စ်သည် ပုံဆွဲရန်အတွက်သာ အသုံးပြုခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Last term's pie chart suggested coding and drawing were joint favourite hobbies. How can Nay Chi's new database confirm this more precisely?",
          questionMy:
              "ယခင်တစ်နှစ်တာ၏ ဝိုင်းပုံဂရပ်က coding နှင့် ပန်းချီရေးဆွဲခြင်းသည် ပူးတွဲအကြိုက်ဆုံးဝါသနာများဟု ဖော်ပြခဲ့သည်။ နှင်းချည်၏ ဒေတာဘေ့စ်အသစ်က ဤအချက်ကို ပိုတိကျစွာ မည်သို့ အတည်ပြုနိုင်သနည်း။",
          optionsEn: [
            "By searching Favourite Hobby = Coding AND counting, then repeating for Drawing to compare the exact numbers",
            "By deleting all records except one student's",
            "By changing every student's favourite hobby to Coding",
            "By painting the classroom a new colour",
          ],
          optionsMy: [
            "Favourite Hobby = Coding ကို ရှာဖွေ၍ ရေတွက်ပြီး Drawing အတွက်လည်း ထပ်လုပ်၍ အတိအကျ ဂဏန်းများကို နှိုင်းယှဉ်ခြင်းဖြင့်",
            "ကျောင်းသားတစ်ဦး၏ record တစ်ခုမှလွဲ၍ record အားလုံးကို ဖျက်ပစ်ခြင်းဖြင့်",
            "ကျောင်းသားတိုင်း၏ အကြိုက်ဆုံးဝါသနာကို Coding အဖြစ် ပြောင်းလဲခြင်းဖြင့်",
            "အတန်းအား အရောင်အသစ်တစ်ခု သုတ်ခြင်းဖြင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why does turning last term's survey into this term's searchable, sortable database make Nay Chi's investigation stronger?",
          questionMy:
              "ယခင်တစ်နှစ်တာ၏ စစ်တမ်းကို ဤတစ်နှစ်တာ ရှာဖွေ၍ စီစစ်နိုင်သော ဒေတာဘေ့စ်အဖြစ် ပြောင်းလဲခြင်းက နှင်းချည်၏ လေ့လာစုံစမ်းမှုကို အဘယ့်ကြောင့် ပိုမိုအားကောင်းစေသနည်း။",
          optionsEn: [
            "She can now search and filter to ask many specific new questions, not just read the single pie chart from before",
            "It makes the pie chart disappear completely",
            "It removes the need to collect any data at all",
            "It changes her classmates' actual hobbies",
          ],
          optionsMy: [
            "ယခင်ကရှိခဲ့သော ဝိုင်းပုံဂရပ်တစ်ခုတည်းကို ကြည့်ရုံသာမက ယခုတိကျသော မေးခွန်းအသစ်များစွာကို ရှာဖွေစစ်ထုတ်၍ မေးမြန်းနိုင်ခြင်း",
            "ဝိုင်းပုံဂရပ်ကို လုံးဝ ပျောက်ကွယ်စေခြင်း",
            "အချက်အလက် စုစည်းရန် လိုအပ်ချက်ကို လုံးဝ ဖယ်ရှားစေခြင်း",
            "သူမ၏ အတန်းဖော်များ၏ တကယ့်ဝါသနာများကို ပြောင်းလဲစေခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w16-d2",
      dayNumber: 2,
      titleEn: "Match the Term 4 Vocabulary",
      titleMy: "Term 4 ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w16-dm-1",
          termEn: "Database",
          termMy: "ဒေတာဘေ့စ် (Database)",
          matchEn:
              "An organised collection of information that can be searched and sorted",
          matchMy:
              "အလွယ်တကူ ရှာဖွေ၍ စီစစ်နိုင်ရန် စနစ်တကျစုစည်းထားသော အချက်အလက်များ",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w16-dm-2",
          termEn: "Record",
          termMy: "မှတ်တမ်း (Record)",
          matchEn:
              "One complete row of information about a single student in the class database",
          matchMy:
              "အတန်းဒေတာဘေ့စ်ရှိ ကျောင်းသားတစ်ဦးအကြောင်း ပြည့်စုံသော အချက်အလက်အတန်းတစ်ခု",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w16-dm-3",
          termEn: "Search query",
          termMy: "Search Query",
          matchEn:
              "Words typed in, such as Favourite Hobby = Coding, to find matching records",
          matchMy:
              "Favourite Hobby = Coding ကဲ့သို့ ကိုက်ညီသော record များကို ရှာဖွေရန် ရိုက်ထည့်လိုက်သော စကားလုံးများ",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w16-dm-4",
          termEn: "Filter",
          termMy: "Filter",
          matchEn:
              "A rule that narrows results down to only the records that match",
          matchMy:
              "ကိုက်ညီသော record များကိုသာ ကျန်ရှိစေရန် ရလဒ်များကို ကျဉ်းအောင်ပြုလုပ်ပေးသော စည်းကမ်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w16-dm-5",
          termEn: "Sort",
          termMy: "စီစစ်ခြင်း (Sort)",
          matchEn:
              "Arranging records into ascending or descending order based on one field",
          matchMy:
              "အကွက်တစ်ခုအပေါ်အခြေခံ၍ record များကို ascending သို့မဟုတ် descending order ဖြင့် စီစဉ်ခြင်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w16-dm-6",
          termEn: "AND / OR",
          termMy: "AND / OR",
          matchEn:
              "Words used to combine two search conditions, requiring both (AND) or either (OR) to match",
          matchMy:
              "အခြေအနေနှစ်ခုစလုံး (AND) သို့မဟုတ် တစ်ခုခု (OR) ကိုက်ညီရန် ရှာဖွေမှုအခြေအနေနှစ်ခုကို ပေါင်းစပ်ရန်အသုံးပြုသော စကားလုံးများ",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w16-d3",
      dayNumber: 3,
      titleEn: "Sort: Searching the Database or Sorting the Database?",
      titleMy: "စီစစ်ကြမည် - ဒေတာဘေ့စ်ကို ရှာဖွေခြင်းလား၊ စီစစ်ခြင်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Searching the Database", "Sorting the Database"],
        bucketsMy: ["ဒေတာဘေ့စ်ကို ရှာဖွေခြင်း", "ဒေတာဘေ့စ်ကို စီစစ်ခြင်း"],
        items: [
          SortingItem(
            id: "y6comp-w16-sort-1",
            labelEn:
                "Typing \"Coding\" into the Favourite Hobby field to find every student who chose it",
            labelMy:
                "Favourite Hobby အကွက်တွင် \"Coding\" ဟု ရိုက်ထည့်ကာ ရွေးချယ်ခဲ့သော ကျောင်းသားတိုင်းကို ရှာဖွေခြင်း",
            correctBucketEn: "Searching the Database",
            correctBucketMy: "ဒေတာဘေ့စ်ကို ရှာဖွေခြင်း",
          ),
          SortingItem(
            id: "y6comp-w16-sort-2",
            labelEn: "Arranging students' names from A to Z",
            labelMy: "ကျောင်းသားများ၏ အမည်များကို A မှ Z သို့ စီစဉ်ခြင်း",
            correctBucketEn: "Sorting the Database",
            correctBucketMy: "ဒေတာဘေ့စ်ကို စီစစ်ခြင်း",
          ),
          SortingItem(
            id: "y6comp-w16-sort-3",
            labelEn:
                "Using AND to find students whose Favourite Hobby is Coding and Second Favourite is Drawing",
            labelMy:
                "Favourite Hobby က Coding ဖြစ်ပြီး Second Favourite က Drawing ဖြစ်သော ကျောင်းသားများကို AND ဖြင့် ရှာဖွေခြင်း",
            correctBucketEn: "Searching the Database",
            correctBucketMy: "ဒေတာဘေ့စ်ကို ရှာဖွေခြင်း",
          ),
          SortingItem(
            id: "y6comp-w16-sort-4",
            labelEn:
                "Arranging the number of hobby votes from highest to lowest",
            labelMy:
                "ဝါသနာဆန္ဒမဲအရေအတွက်ကို အများဆုံးမှ အနည်းဆုံးသို့ စီစဉ်ခြင်း",
            correctBucketEn: "Sorting the Database",
            correctBucketMy: "ဒေတာဘေ့စ်ကို စီစစ်ခြင်း",
          ),
          SortingItem(
            id: "y6comp-w16-sort-5",
            labelEn: "Filtering the results to show only Year 6 students",
            labelMy:
                "Year 6 ကျောင်းသားများကိုသာ ပြသရန် ရလဒ်များကို filter လုပ်ခြင်း",
            correctBucketEn: "Searching the Database",
            correctBucketMy: "ဒေတာဘေ့စ်ကို ရှာဖွေခြင်း",
          ),
          SortingItem(
            id: "y6comp-w16-sort-6",
            labelEn: "Arranging records by age, youngest first",
            labelMy:
                "Record များကို အသက်အရွယ်အလိုက် အငယ်ဆုံးအရင်ဆုံးဖြစ်အောင် စီစဉ်ခြင်း",
            correctBucketEn: "Sorting the Database",
            correctBucketMy: "ဒေတာဘေ့စ်ကို စီစစ်ခြင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w16-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Hobbies Database",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ ဝါသနာဒေတာဘေ့စ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Hobbies Database",
        titleMy: "နှင်းချည်၏ ဝါသနာဒေတာဘေ့စ်",
        passageEn:
            "For her Term 4 capstone project, Nay Chi decides to rebuild last term's hobbies spreadsheet as a real database. She lists the fields she will need for each student's record: Name, Favourite Hobby, Second Favourite Hobby, and Age. One by one, she turns every row of her old spreadsheet into a proper database record, checking that no field is left empty.\n\nNay Chi remembers that her pie chart last term showed coding and drawing as joint favourites, but a pie chart alone could not tell her exactly how many students loved both. So she writes a search query: Favourite Hobby = Coding AND Second Favourite Hobby = Drawing. Four students match perfectly. Then she flips the query around -- Favourite Hobby = Drawing AND Second Favourite Hobby = Coding -- and finds four more students who love the pair the other way round. Together, that is eight students who genuinely enjoy both hobbies, a far more precise answer than her pie chart alone could ever give.\n\nFinally, Nay Chi sorts the whole class database in descending order by how many students share each favourite hobby, and presents her sorted, searched results to the class: \"Our database proves it,\" she announces. \"Coding and drawing really are joint favourites -- and now we know exactly how many of us love both.\" Ms. Thanda smiles, proud of how far Nay Chi has come from her very first line of code back in Term 1.",
        passageMy:
            "Term 4 capstone စီမံကိန်းအတွက် နှင်းချည်သည် ယခင်တစ်နှစ်တာ ဝါသနာဇယားချက်ပြကို အစစ်အမှန်ဒေတာဘေ့စ်တစ်ခုအဖြစ် ပြန်လည်တည်ဆောက်ရန် ဆုံးဖြတ်လိုက်သည်။ ကျောင်းသားတစ်ဦးစီ၏ record အတွက် လိုအပ်မည့် field များကို သူမ စာရင်းပြုစုသည် - Name၊ Favourite Hobby၊ Second Favourite Hobby နှင့် Age။ တစ်ခုချင်းစီ သူမ၏ ဟောင်းနွမ်းသောဇယားချက်ပြရှိ အတန်းတိုင်းကို ပြည့်စုံသော ဒေတာဘေ့စ် record အဖြစ် ပြောင်းလဲလိုက်ပြီး၊ field တစ်ခုမျှ ကွက်လပ်မကျန်ကြောင်း စစ်ဆေးသည်။\n\nနှင်းချည်သည် ယခင်တစ်နှစ်တာ၏ ဝိုင်းပုံဂရပ်က coding နှင့် ပန်းချီရေးဆွဲခြင်းကို ပူးတွဲအကြိုက်ဆုံးအဖြစ် ပြသခဲ့သော်လည်း ဝိုင်းပုံဂရပ်တစ်ခုတည်းက ကျောင်းသားဘယ်နှစ်ဦးက ဝါသနာနှစ်ခုစလုံးကို တကယ်ကြိုက်နှစ်သက်ကြောင်း အတိအကျ မပြောပြနိုင်ခဲ့ကြောင်း သတိရမိသည်။ ထို့ကြောင့် သူမသည် search query တစ်ခု ရေးလိုက်သည် - Favourite Hobby = Coding AND Second Favourite Hobby = Drawing။ ကျောင်းသားလေးဦးသည် အတိအကျ ကိုက်ညီသည်။ ထို့နောက် query ကို ပြောင်းပြန်လှန်လိုက်သည် -- Favourite Hobby = Drawing AND Second Favourite Hobby = Coding -- ၍ ဆန့်ကျင်ဘက်နည်းလမ်းဖြင့် ဝါသနာနှစ်ခုစလုံးကို ကြိုက်နှစ်သက်သော ကျောင်းသားလေးဦးထပ်ကို ရှာတွေ့သည်။ ပေါင်းလိုက်ပါက ဝါသနာနှစ်ခုစလုံးကို တကယ်ကြိုက်နှစ်သက်သော ကျောင်းသားရှစ်ဦးရှိကြောင်း ဝိုင်းပုံဂရပ်တစ်ခုတည်းထက် ပိုတိကျသော အဖြေတစ်ခု ရရှိသည်။\n\nနောက်ဆုံးတွင် နှင်းချည်သည် အတန်းဒေတာဘေ့စ်တစ်ခုလုံးကို ကျောင်းသားမည်မျှက အကြိုက်ဆုံးဝါသနာတစ်ခုစီကို ဝေမျှသည်ကို descending order ဖြင့် စီစစ်ပြီး၊ သူမ၏ စီစစ်ရှာဖွေထားသော ရလဒ်များကို အတန်းသို့ တင်ပြသည် - \"ကျွန်မတို့ ဒေတာဘေ့စ်က သက်သေပြပါတယ်\" ဟု သူမ ကြေညာသည်။ \"Coding နဲ့ ပန်းချီရေးဆွဲခြင်းဟာ ပူးတွဲအကြိုက်ဆုံးဝါသနာတွေ တကယ်ပဲဖြစ်ကြောင်း -- ဒီနှစ်ခုစလုံးကို ကျွန်မတို့ ဘယ်နှစ်ယောက် ကြိုက်နှစ်သက်ကြောင်း အခုတော့ အတိအကျ သိပြီ။\" ဒေါ်သန္တာ ပြုံးရွှင်နေသည်၊ Term 1 တွင် ပထမဆုံးကုဒ်လိုင်းရေးခဲ့ချိန်မှစ၍ နှင်းချည် ဘယ်လောက်ဝေးအောင် ရောက်လာခဲ့ကြောင်း ဂုဏ်ယူလျက်ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What is Nay Chi's Term 4 capstone project?",
            questionMy: "နှင်းချည်၏ Term 4 capstone စီမံကိန်းမှာ အဘယ်နည်း။",
            optionsEn: [
              "Rebuilding last term's hobbies spreadsheet as a real, searchable database",
              "Painting a new poster for the library",
              "Writing a brand-new coding app from scratch",
              "Building a website about her school",
            ],
            optionsMy: [
              "ယခင်တစ်နှစ်တာ ဝါသနာဇယားချက်ပြကို ရှာဖွေနိုင်သော အစစ်အမှန်ဒေတာဘေ့စ်အဖြစ် ပြန်လည်တည်ဆောက်ခြင်း",
              "စာကြည့်တိုက်အတွက် ပိုစတာအသစ်တစ်ခု ရေးဆွဲခြင်း",
              "လုံးဝကုဒ်ရေးအက်ပ်အသစ်တစ်ခု အစမှ ရေးသားခြင်း",
              "သူမကျောင်းအကြောင်း ဝဘ်ဆိုက်တစ်ခု တည်ဆောက်ခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which fields does Nay Chi list for each student's record?",
            questionMy:
                "ကျောင်းသားတစ်ဦးစီ၏ record အတွက် နှင်းချည် မည်သည့် field များကို စာရင်းပြုစုသနည်း။",
            optionsEn: [
              "Name, Favourite Hobby, Second Favourite Hobby, and Age",
              "Only a photograph",
              "Only a password",
              "Only a shelf number",
            ],
            optionsMy: [
              "Name၊ Favourite Hobby၊ Second Favourite Hobby နှင့် Age",
              "ဓာတ်ပုံတစ်ပုံသာ",
              "စကားဝှက်တစ်ခုသာ",
              "စင်နံပါတ်တစ်ခုသာ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What search query does Nay Chi write to find students who love coding first and drawing second?",
            questionMy:
                "Coding ကို ဦးစွာကြိုက်ပြီး Drawing ကို ဒုတိယကြိုက်သော ကျောင်းသားများကို ရှာဖွေရန် နှင်းချည် မည်သည့် search query ကို ရေးသနည်း။",
            optionsEn: [
              "Favourite Hobby = Coding AND Second Favourite Hobby = Drawing",
              "Age = 11 OR Age = 12",
              "Name = Nay Chi",
              "Favourite Hobby = Football",
            ],
            optionsMy: [
              "Favourite Hobby = Coding AND Second Favourite Hobby = Drawing",
              "Age = 11 OR Age = 12",
              "Name = Nay Chi",
              "Favourite Hobby = Football",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "How many students in total genuinely love both coding and drawing, once Nay Chi checks both search directions?",
            questionMy:
                "နှင်းချည်သည် ရှာဖွေမှုလမ်းကြောင်းနှစ်ခုစလုံးကို စစ်ဆေးပြီးနောက် coding နှင့် drawing နှစ်ခုစလုံးကို တကယ်ကြိုက်နှစ်သက်သော ကျောင်းသား စုစုပေါင်း ဘယ်နှစ်ဦးရှိသနည်း။",
            optionsEn: ["Eight", "Four", "Eighteen", "Zero"],
            optionsMy: ["ရှစ်ဦး", "လေးဦး", "တစ်ဆယ့်ရှစ်ဦး", "သုည"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What does Nay Chi do at the very end, after searching, to present her findings clearly?",
            questionMy:
                "ရှာဖွေမှုပြီးနောက် သူမ၏ တွေ့ရှိချက်များကို ရှင်းလင်းစွာ တင်ပြရန် နှင်းချည် နောက်ဆုံးတွင် အဘယ်အရာလုပ်ဆောင်သနည်း။",
            optionsEn: [
              "Sorts the whole class database in descending order by how many students share each hobby",
              "Deletes the entire database",
              "Hides her results from the class",
              "Repaints the classroom",
            ],
            optionsMy: [
              "ကျောင်းသားမည်မျှက အကြိုက်ဆုံးဝါသနာတစ်ခုစီကို ဝေမျှသည်ကို descending order ဖြင့် အတန်းဒေတာဘေ့စ်တစ်ခုလုံးကို စီစစ်ခြင်း",
              "ဒေတာဘေ့စ်တစ်ခုလုံးကို ဖျက်ပစ်ခြင်း",
              "သူမ၏ ရလဒ်များကို အတန်းမှ ဖျောက်ထားခြင်း",
              "အတန်းကို အသစ်ပြန်သုတ်ခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w16-d5",
      dayNumber: 5,
      titleEn: "Term 4 Round-Up: Databases",
      titleMy: "Term 4 အနှစ်ချုပ် - ဒေတာဘေ့စ်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a database?",
          questionMy: "ဒေတာဘေ့စ် ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "An organised collection of information stored so it can be easily searched and sorted",
            "A single hand-drawn poster",
            "A type of coding error",
            "A musical instrument",
          ],
          optionsMy: [
            "အလွယ်တကူ ရှာဖွေ၍ စီစစ်နိုင်ရန် စနစ်တကျစုစည်းသိမ်းဆည်းထားသော အချက်အလက်များ",
            "လက်ဆွဲပုံနှင့်ရေးဆွဲထားသော ပိုစတာတစ်ခု",
            "ကုဒ်ရေးသားရာတွင်ဖြစ်သော အမှားတစ်မျိုး",
            "တူရိယာတစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is the difference between a record and a field?",
          questionMy: "Record နှင့် Field ၏ ကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A record is one whole row of information; a field is one single piece of information within that row",
            "They mean exactly the same thing",
            "A record is a colour and a field is a shape",
            "A field always contains more information than a record",
          ],
          optionsMy: [
            "Record သည် အချက်အလက်အတန်းတစ်ခုလုံးဖြစ်ပြီး၊ Field သည် ထိုအတန်းအတွင်းရှိ တစ်ခုတည်းသော အချက်အလက်ဖြစ်သည်",
            "နှစ်ခုလုံးက အတူတူပင်ဖြစ်သည်",
            "Record သည် အရောင်တစ်ခုဖြစ်ပြီး Field သည် ပုံသဏ္ဌာန်တစ်ခုဖြစ်သည်",
            "Field သည် Record ထက် အမြဲအချက်အလက်ပိုများသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is a specific, well-planned search query better than a vague one?",
          questionMy:
              "တိကျပြီး ကောင်းစွာစီစဉ်ထားသော search query တစ်ခုသည် မရေရာသော query တစ်ခုထက် အဘယ့်ကြောင့် ပိုကောင်းသနည်း။",
          optionsEn: [
            "It quickly finds exactly the records you need instead of thousands of irrelevant ones",
            "It always returns zero results",
            "It deletes the database automatically",
            "It changes every field's colour",
          ],
          optionsMy: [
            "ဆက်စပ်မှုမရှိသော ထောင်ချီရလဒ်များအစား သင်လိုအပ်သော record များကို လျင်မြန်စွာ တွေ့စေခြင်း",
            "ရလဒ်သုညကို အမြဲ ပြန်ထုတ်ပေးခြင်း",
            "ဒေတာဘေ့စ်ကို အလိုအလျောက် ဖျက်ပစ်ခြင်း",
            "field တိုင်း၏ အရောင်ကို ပြောင်းလဲခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What does combining Genre = Mystery AND Available = Yes do when searching a database?",
          questionMy:
              "Genre = Mystery AND Available = Yes ကို ပေါင်းစပ်ခြင်းက ဒေတာဘေ့စ်ကို ရှာဖွေရာတွင် အဘယ်အရာကို ဖြစ်ပေါ်စေသနည်း။",
          optionsEn: [
            "Only mystery books that are also currently available appear in the results",
            "Every book in the library appears, with no filtering",
            "Only books that are borrowed appear",
            "The database is deleted",
          ],
          optionsMy: [
            "ယခုရရှိနိုင်သေးသော လျှို့ဝှက်ဇာတ်လမ်းစာအုပ်များသာ ရလဒ်တွင် ပေါ်လာခြင်း",
            "စစ်ထုတ်ခြင်းလုံးဝမရှိဘဲ စာကြည့်တိုက်ရှိ စာအုပ်တိုင်း ပေါ်လာခြင်း",
            "ငှားထားသော စာအုပ်များသာ ပေါ်လာခြင်း",
            "ဒေတာဘေ့စ် ဖျက်ပစ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In her capstone project, how many students did Nay Chi's database confirm genuinely love both coding and drawing?",
          questionMy:
              "သူမ၏ capstone စီမံကိန်းတွင် coding နှင့် drawing နှစ်ခုစလုံးကို တကယ်ကြိုက်နှစ်သက်ကြောင်း နှင်းချည်၏ ဒေတာဘေ့စ်က ကျောင်းသား ဘယ်နှစ်ဦးအတိအကျ အတည်ပြုသနည်း။",
          optionsEn: ["Eight", "Two", "Forty", "One thousand"],
          optionsMy: ["ရှစ်ဦး", "နှစ်ဦး", "လေးဆယ်", "တစ်ထောင်"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _year6ComputingTerm4 = CourseTermDef(
  id: "course-year6-computing-t4",
  termNumber: 4,
  titleEn: "Databases",
  titleMy: "ဒေတာဘေ့စ်များ",
  certificateTitleEn: "Database Explorer",
  certificateTitleMy: "ဒေတာဘေ့စ် စူးစမ်းသူ",
  weeks: [
    _year6ComputingWeek13,
    _year6ComputingWeek14,
    _year6ComputingWeek15,
    _year6ComputingWeek16,
  ],
);
