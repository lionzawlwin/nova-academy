// File: ai_data_bridge/_generated/year6_computing_term3.dart
// Year 6 Computing -- Term 3: "Spreadsheets and Data Handling" (absolute
// Weeks 9-12). Staging artifact only -- not yet wired into
// course_pathway_bank.dart's Grade.year6 pathway. Follows on from Term 2
// (web page creation: HTML tags, images, links, page design) by moving
// pupils into a new domain -- organising and calculating real data in a
// spreadsheet -- while spiralling back to the recurring "every small
// detail must be exactly right" lesson from a fresh angle (formula syntax
// and cell ranges instead of colons and quotation marks). Protagonist Nay
// Chi, a Nova School student, recurs across quiz flavour text and every
// Day 4 reading passage this term.
//
// Week 9 (Getting to Know Spreadsheets): rows, columns, cells and cell
// references -- opens with Nay Chi recalling her Term 2 wireframe-planning
// habit and applying it to planning a spreadsheet's columns before typing
// any data. Week 10 (Formulas That Do the Work For You): the = sign,
// plain arithmetic formulas versus named functions (SUM, AVERAGE, MAX,
// MIN), and a missing-equals-sign bug that echoes the forgotten-colon and
// missing-quotation-mark bugs of Terms 1 and 2. Week 11 (Formatting and
// Charts): bold and number formatting, and choosing between a bar chart
// (comparing separate amounts) and a pie chart (parts of a whole). Week
// 12 (Capstone -- Nay Chi's Class Hobbies Survey, boss week): Nay Chi
// turns her Term 2 "All About Me & My Hobbies" page into a whole-class
// hobbies survey, tallies results, writes a SUM formula whose range
// misses the last row of data, traces and fixes it exactly as she once
// traced her forgotten colon and missing quotation mark, then builds a
// pie chart to answer the real question of which hobby is most popular --
// with the recap day reviewing the whole term.

const CourseWeekDef _year6ComputingWeek9 = CourseWeekDef(
  id: "course-year6-computing-w9",
  weekNumber: 9,
  titleEn: "Getting to Know Spreadsheets",
  titleMy: "ဇယားချက်ပြများကို စတင်လေ့လာခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w9-d1",
      dayNumber: 1,
      titleEn: "Rows, Columns and Cells",
      titleMy: "အတန်းများ၊ ကော်လံများနှင့် ဆဲလ်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What is the grid of rows and columns used to organise, calculate and analyse data called?",
          questionMy:
              "ဒေတာများကို စီစဉ်၊ တွက်ချက်နှင့် ဆန်းစစ်ရန် အသုံးပြုသော အတန်းနှင့်ကော်လံများပါ ဇယားပုံစံကို အဘယ်ဟု ခေါ်သနည်း။",
          optionsEn: [
            "A spreadsheet",
            "A web page",
            "A flowchart",
            "A database",
          ],
          optionsMy: [
            "ဇယားချက်ပြ (Spreadsheet)",
            "ဝက်ဘ်စာမျက်နှာ",
            "လုပ်ငန်းစဉ် ဖလိုချတ်",
            "ဒေတာဘေ့စ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In a spreadsheet, what do we call a single box where a row and a column meet?",
          questionMy:
              "ဇယားချက်ပြတစ်ခုတွင် အတန်းတစ်ခုနှင့် ကော်လံတစ်ခု ဆုံရာနေရာကို အဘယ်ဟု ခေါ်သနည်း။",
          optionsEn: ["A cell", "A tag", "A function", "A folder"],
          optionsMy: [
            "ဆဲလ် (Cell)",
            "တဂ် (Tag)",
            "ဖန်ရှင် (Function)",
            "ဖိုင်တွဲ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the cell reference \"B3\", what does the letter B tell you?",
          questionMy:
              "ဆဲလ်ကိုးကား \"B3\" တွင် B စာလုံးက သင့်အား ဘာကို ပြောပြသနည်း။",
          optionsEn: [
            "Which column the cell is in",
            "Which row the cell is in",
            "The value stored in the cell",
            "The colour of the cell",
          ],
          optionsMy: [
            "ဆဲလ်သည် မည်သည့်ကော်လံတွင် ရှိသည်",
            "ဆဲလ်သည် မည်သည့်အတန်းတွင် ရှိသည်",
            "ဆဲလ်ထဲ သိမ်းထားသော တန်ဖိုး",
            "ဆဲလ်၏ အရောင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi remembers that before coding her Term 2 web page, she planned it with a wireframe first. What should she do before typing data into a brand-new spreadsheet?",
          questionMy:
              "Term 2 ဝက်ဘ်စာမျက်နှာကို ကုဒ်မရေးမီ wireframe ဖြင့် စီစဉ်ခဲ့ကြောင်း နှင်းချည် သတိရသည်။ လုံးဝအသစ်သော ဇယားချက်ပြတစ်ခုထဲသို့ ဒေတာမရိုက်မီ သူမ ဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Plan which columns and rows she will need",
            "Immediately colour every cell red",
            "Delete the column headings",
            "Turn off her computer",
          ],
          optionsMy: [
            "လိုအပ်မည့် ကော်လံနှင့် အတန်းများကို စီစဉ်ရန်",
            "ဆဲလ်တိုင်းကို ချက်ချင်း အနီရောင်သုတ်ရန်",
            "ကော်လံခေါင်းစဉ်များကို ဖျက်ရန်",
            "ကွန်ပျူတာကို ပိတ်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is an example of a valid cell reference?",
          questionMy:
              "အောက်ပါတို့တွင် မှန်ကန်သော ဆဲလ်ကိုးကား ဥပမာမှာ အဘယ်နည်း။",
          optionsEn: ["D5", "5D", "Row 5", "Column D"],
          optionsMy: ["D5", "5D", "Row 5 (အတန်း ၅)", "Column D (ကော်လံ D)"],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w9-d2",
      dayNumber: 2,
      titleEn: "Match the Spreadsheet Vocabulary",
      titleMy: "ဇယားချက်ပြ ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w9-dm-1",
          termEn: "Spreadsheet",
          termMy: "Spreadsheet (ဇယားချက်ပြ)",
          matchEn:
              "A grid of rows and columns used to organise, calculate and analyse data",
          matchMy:
              "ဒေတာများကို စီစဉ်၊ တွက်ချက်နှင့် ဆန်းစစ်ရန် အသုံးပြုသော အတန်းနှင့်ကော်လံများပါ ဇယားပုံစံ",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w9-dm-2",
          termEn: "Row",
          termMy: "Row (အတန်း)",
          matchEn:
              "A horizontal line of cells running across a spreadsheet, labelled with a number",
          matchMy:
              "ဂဏန်းဖြင့် အမှတ်အသားပြုထားပြီး ဇယားချက်ပြတစ်ခုကို ဖြတ်ကျော်တည်ရှိသော ဆဲလ်များ၏ အလျားလိုက်တန်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w9-dm-3",
          termEn: "Column",
          termMy: "Column (ကော်လံ)",
          matchEn:
              "A vertical line of cells running down a spreadsheet, labelled with a letter",
          matchMy:
              "အက္ခရာဖြင့် အမှတ်အသားပြုထားပြီး ဇယားချက်ပြတစ်ခုတွင် ဒေါင်လိုက် ဆင်းသွားသော ဆဲလ်များ၏ တန်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w9-dm-4",
          termEn: "Cell",
          termMy: "Cell (ဆဲလ်)",
          matchEn:
              "A single box where one row and one column meet, holding one piece of data",
          matchMy:
              "အတန်းတစ်ခုနှင့် ကော်လံတစ်ခု ဆုံရာနေရာရှိ ဒေတာတစ်ခုတည်း သိမ်းထားသော အကွက်တစ်ခု",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w9-dm-5",
          termEn: "Cell Reference",
          termMy: "Cell Reference (ဆဲလ်ကိုးကား)",
          matchEn:
              "The column letter plus row number, such as B3, that names one exact cell",
          matchMy:
              "ဆဲလ်တစ်ခုတည်းကို အတိအကျ ဖော်ပြသော ကော်လံအက္ခရာနှင့် အတန်းဂဏန်း ပေါင်းစပ်ချက်၊ ဥပမာ B3",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w9-dm-6",
          termEn: "Worksheet",
          termMy: "Worksheet (အလုပ်လုပ်ရသော စာမျက်နှာ)",
          matchEn:
              "One page of rows and columns inside a spreadsheet file, shown as a tab at the bottom of the screen",
          matchMy:
              "ဇယားချက်ပြဖိုင်တစ်ခုအတွင်းရှိ အတန်းနှင့်ကော်လံများပါဝင်သော စာမျက်နှာတစ်ခု၊ စခရင်၏ အောက်ခြေတွင် တဘ်တစ်ခုအဖြစ် ပြသနေသည်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w9-d3",
      dayNumber: 3,
      titleEn: "Sort: Column Letter or Row Number?",
      titleMy: "စီစစ်ကြမည် - ကော်လံအက္ခရာလား၊ အတန်းဂဏန်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Names a Column", "Names a Row"],
        bucketsMy: ["ကော်လံကို ဖော်ပြသည်", "အတန်းကို ဖော်ပြသည်"],
        items: [
          SortingItem(
            id: "y6comp-w9-sort-1",
            labelEn: "A",
            labelMy: "A",
            correctBucketEn: "Names a Column",
            correctBucketMy: "ကော်လံကို ဖော်ပြသည်",
          ),
          SortingItem(
            id: "y6comp-w9-sort-2",
            labelEn: "D",
            labelMy: "D",
            correctBucketEn: "Names a Column",
            correctBucketMy: "ကော်လံကို ဖော်ပြသည်",
          ),
          SortingItem(
            id: "y6comp-w9-sort-3",
            labelEn: "F",
            labelMy: "F",
            correctBucketEn: "Names a Column",
            correctBucketMy: "ကော်လံကို ဖော်ပြသည်",
          ),
          SortingItem(
            id: "y6comp-w9-sort-4",
            labelEn: "3",
            labelMy: "3",
            correctBucketEn: "Names a Row",
            correctBucketMy: "အတန်းကို ဖော်ပြသည်",
          ),
          SortingItem(
            id: "y6comp-w9-sort-5",
            labelEn: "7",
            labelMy: "7",
            correctBucketEn: "Names a Row",
            correctBucketMy: "အတန်းကို ဖော်ပြသည်",
          ),
          SortingItem(
            id: "y6comp-w9-sort-6",
            labelEn: "12",
            labelMy: "12",
            correctBucketEn: "Names a Row",
            correctBucketMy: "အတန်းကို ဖော်ပြသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w9-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Pocket Money Tracker",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ ပေါက်ငွေမှတ်တမ်းစာရင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Pocket Money Tracker",
        titleMy: "နှင်းချည်၏ ပေါက်ငွေမှတ်တမ်းစာရင်း",
        passageEn:
            "When her computing teacher opened a brand-new spreadsheet app on the class tablets, Nay Chi remembered how she had planned her Term 2 web page with a wireframe before typing a single tag. \"A spreadsheet is a grid of rows and columns for organising data,\" her teacher explained, \"but just like a web page, it works best when you plan it before you start.\" So instead of typing straight away, Nay Chi first sketched on paper exactly which columns she would need to track a week of her pocket money: Day, Amount Received, and Amount Spent.\n\nOnly once her plan was clear did Nay Chi begin typing. In cell A1 she wrote \"Day\", in B1 \"Amount Received (Ks)\", and in C1 \"Amount Spent (Ks)\". Her teacher showed the class how every cell had its own address, called a cell reference, made from its column letter and row number -- the cell in column B, row 3, was simply called B3. Nay Chi liked how neat and exact that felt, each cell having one clear name of its own.\n\nBy the end of the lesson, Nay Chi had filled in a full week of pocket money data, one row for each day. Whenever she needed to find a particular value, she no longer had to search the whole grid -- she could go straight to its cell reference, such as C5 for what she spent on Friday. She smiled, realising that planning her columns first, just like planning her web page first, had made the whole spreadsheet far easier to build.",
        passageMy:
            "ကွန်ပျူတာဆရာမက အတန်းတက်ဘလက်များတွင် လုံးဝအသစ်သော ဇယားချက်ပြအက်ပ်တစ်ခုကို ဖွင့်လိုက်သောအခါ Term 2 ဝက်ဘ်စာမျက်နှာကို tag တစ်ခုမျှ မရိုက်မီ wireframe ဖြင့် စီစဉ်ခဲ့ဖူးသည်ကို နှင်းချည် သတိရလာခဲ့သည်။ \"ဇယားချက်ပြတစ်ခုဆိုသည်မှာ ဒေတာများကို စီစဉ်ရန် အတန်းနှင့်ကော်လံများပါသော ဇယားပုံစံတစ်ခုပါ\" ဟု ဆရာမက ရှင်းပြခဲ့သည်၊ \"ဒါပေမယ့် ဝက်ဘ်စာမျက်နှာနှင့်အတူတူပဲ၊ စတင်မရေးမီ စီစဉ်ထားရင် အကောင်းဆုံးအလုပ်လုပ်တယ်\" ။ ထို့ကြောင့် ချက်ချင်းမရေးမီ နှင်းချည်သည် တစ်ပတ်စာ ပေါက်ငွေကို ခြေရာခံရန် လိုအပ်မည့် ကော်လံများဖြစ်သော Day၊ Amount Received နှင့် Amount Spent ကို စက္ကူပေါ်တွင် ဦးစွာ ရေးဆွဲခဲ့သည်။\n\nသူမ၏အစီအစဉ် ရှင်းလင်းသွားမှသာ နှင်းချည် ရိုက်ထည့်ရန် စတင်ခဲ့သည်။ ဆဲလ် A1 တွင် \"Day\" ဟု၊ B1 တွင် \"Amount Received (Ks)\" ဟု၊ C1 တွင် \"Amount Spent (Ks)\" ဟု ရေးထည့်ခဲ့သည်။ ဆဲလ်တိုင်းတွင် ၎င်း၏ကော်လံအက္ခရာနှင့် အတန်းဂဏန်းဖြင့် ဖွဲ့စည်းထားသော ဆဲလ်ကိုးကား ဟုခေါ်သော လိပ်စာတစ်ခုစီ ရှိကြောင်း ဆရာမက အတန်းသားများအား ပြသခဲ့သည် -- ကော်လံ B, အတန်း 3 ရှိ ဆဲလ်ကို B3 ဟု ရိုးရှင်းစွာ ခေါ်ခြင်းဖြစ်သည်။ ဆဲလ်တစ်ခုစီတွင် ၎င်း၏ကိုယ်ပိုင် ရှင်းလင်းသော အမည်တစ်ခုစီ ရှိနေခြင်းကို နှင်းချည် နှစ်သက်ခဲ့သည်။\n\nသင်ခန်းစာအဆုံးတွင် နှင်းချည်သည် တစ်ပတ်စာ ပေါက်ငွေဒေတာအပြည့်ကို ရက်တစ်ရက်လျှင် အတန်းတစ်တန်းနှုန်းဖြင့် ဖြည့်စွက်ပြီးသွားခဲ့သည်။ တန်ဖိုးတစ်ခုကို ရှာချင်ချိန်တိုင်း ဇယားတစ်ခုလုံးကို ရှာဖွေရန် မလိုတော့ဘဲ၊ သောကြာနေ့ ကုန်ကျစရိတ်အတွက် C5 ကဲ့သို့ ၎င်း၏ဆဲလ်ကိုးကားထံ တိုက်ရိုက်သွားနိုင်ခဲ့သည်။ ကော်လံများကို အရင်စီစဉ်ခြင်းသည် ဝက်ဘ်စာမျက်နှာကို အရင်စီစဉ်ခြင်းနှင့်အတူတူပင် ဇယားချက်ပြတစ်ခုလုံးကို တည်ဆောက်ရန် ပိုမိုလွယ်ကူစေခဲ့ကြောင်း သူမ ပြုံးရင်း သဘောပေါက်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did Nay Chi remember doing before coding her Term 2 web page?",
            questionMy:
                "Term 2 ဝက်ဘ်စာမျက်နှာကို ကုဒ်မရေးမီ နှင်းချည် ဘာလုပ်ခဲ့ကြောင်း သတိရခဲ့သနည်း။",
            optionsEn: [
              "Planning it with a wireframe first",
              "Deleting all her earlier work",
              "Asking a friend to type it for her",
              "Turning off her computer's sound",
            ],
            optionsMy: [
              "Wireframe ဖြင့် ဦးစွာ စီစဉ်ခဲ့ခြင်း",
              "သူမ၏ ယခင်အလုပ်အားလုံးကို ဖျက်ခဲ့ခြင်း",
              "သူငယ်ချင်းတစ်ဦးအား ရိုက်ပေးခိုင်းခဲ့ခြင်း",
              "ကွန်ပျူတာ၏ အသံကို ပိတ်ခဲ့ခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What three columns did Nay Chi plan for her pocket money tracker?",
            questionMy:
                "နှင်းချည်သည် သူမ၏ ပေါက်ငွေမှတ်တမ်းစာရင်းအတွက် ကော်လံသုံးခုမည်သို့ စီစဉ်ခဲ့သနည်း။",
            optionsEn: [
              "Day, Amount Received, and Amount Spent",
              "Name, Address, and Phone Number",
              "Hobby, Colour, and Chart Type",
              "Row, Column, and Cell",
            ],
            optionsMy: [
              "Day, Amount Received နှင့် Amount Spent",
              "Name, Address နှင့် Phone Number",
              "Hobby, Colour နှင့် Chart Type",
              "Row, Column နှင့် Cell",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What is a cell reference made from?",
            questionMy:
                "ဆဲလ်ကိုးကားတစ်ခုကို မည်သည့်အရာများဖြင့် ဖွဲ့စည်းထားသနည်း။",
            optionsEn: [
              "A column letter and a row number",
              "A colour and a font size",
              "A chart title and a legend",
              "A tag and a closing tag",
            ],
            optionsMy: [
              "ကော်လံအက္ခရာနှင့် အတန်းဂဏန်း",
              "အရောင်နှင့် စာလုံးအရွယ်အစား",
              "ဂရပ်ခေါင်းစဉ်နှင့် အညွှန်း",
              "Tag နှင့် ပိတ်တဂ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to the passage, what does the cell reference B3 mean?",
            questionMy: "စာပိုဒ်အရ ဆဲလ်ကိုးကား B3 က ဘာကို ဆိုလိုသနည်း။",
            optionsEn: [
              "The cell in column B, row 3",
              "The cell in row B, column 3",
              "The third worksheet in the file",
              "The third chart on the page",
            ],
            optionsMy: [
              "ကော်လံ B, အတန်း 3 ရှိ ဆဲလ်",
              "အတန်း B, ကော်လံ 3 ရှိ ဆဲလ်",
              "ဖိုင်ထဲရှိ တတိယမြောက် worksheet",
              "စာမျက်နှာပေါ်ရှိ တတိယမြောက် ဂရပ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Nay Chi realise by the end of the lesson?",
            questionMy: "သင်ခန်းစာအဆုံးတွင် နှင်းချည် ဘာကို သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "Planning her columns first made the spreadsheet far easier to build",
              "Cell references are never useful",
              "Spreadsheets cannot store money values",
              "Rows and columns are exactly the same thing",
            ],
            optionsMy: [
              "ကော်လံများကို အရင်စီစဉ်ခြင်းက ဇယားချက်ပြကို ပိုမိုလွယ်ကူစွာ တည်ဆောက်စေခဲ့ခြင်း",
              "ဆဲလ်ကိုးကားများသည် လုံးဝအသုံးမဝင်ခြင်း",
              "ဇယားချက်ပြများသည် ငွေကြေးတန်ဖိုးများကို သိမ်းဆည်း၍မရခြင်း",
              "အတန်းနှင့် ကော်လံသည် အတိအတိတူညီခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w9-d5",
      dayNumber: 5,
      titleEn: "Spreadsheet Basics Round-Up",
      titleMy: "ဇယားချက်ပြ အခြေခံအချက်များ အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a spreadsheet made up of?",
          questionMy: "ဇယားချက်ပြတစ်ခုသည် ဘာများဖြင့် ဖွဲ့စည်းထားသနည်း။",
          optionsEn: [
            "Rows and columns of cells",
            "Hyperlinks and images only",
            "Colons and function calls only",
            "Sensors and IPO cycles",
          ],
          optionsMy: [
            "ဆဲလ်များ၏ အတန်းနှင့်ကော်လံများ",
            "Hyperlink နှင့် ပုံများသာ",
            "Colon နှင့် function ခေါ်ယူမှုများသာ",
            "Sensor များနှင့် IPO cycle များ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What do we call the box where a row and a column meet?",
          questionMy:
              "အတန်းတစ်ခုနှင့် ကော်လံတစ်ခု ဆုံရာနေရာကို အဘယ်ဟု ခေါ်သနည်း။",
          optionsEn: ["A cell", "A tag", "A worksheet tab", "A pie chart"],
          optionsMy: ["ဆဲလ်", "တဂ်", "Worksheet တဘ်", "ဝိုင်းပုံဂရပ်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In a cell reference such as D7, what does the letter stand for?",
          questionMy:
              "D7 ကဲ့သို့ ဆဲလ်ကိုးကားတစ်ခုတွင် အက္ခရာက ဘာကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "The column",
            "The row",
            "The worksheet name",
            "The chart legend",
          ],
          optionsMy: ["ကော်လံ", "အတန်း", "Worksheet အမည်", "ဂရပ်အညွှန်း"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What should you do before typing data into a brand-new spreadsheet?",
          questionMy:
              "လုံးဝအသစ်သော ဇယားချက်ပြတစ်ခုထဲသို့ ဒေတာမရိုက်မီ ဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Plan which columns and rows are needed",
            "Colour every cell without a plan",
            "Delete the file immediately",
            "Turn off the internet connection",
          ],
          optionsMy: [
            "လိုအပ်သော ကော်လံနှင့်အတန်းများကို စီစဉ်ရန်",
            "အစီအစဉ်မရှိဘဲ ဆဲလ်အားလုံးကို အရောင်သုတ်ရန်",
            "ဖိုင်ကို ချက်ချင်း ဖျက်ရန်",
            "အင်တာနက်ချိတ်ဆက်မှုကို ပိတ်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "This week, Nay Chi connected her spreadsheet-planning habit to which earlier project?",
          questionMy:
              "ဤအပတ်တွင် နှင်းချည်သည် သူမ၏ ဇယားချက်ပြစီစဉ်ခြင်းအကျင့်ကို ယခင်စီမံကိန်းမည်သည်နှင့် ဆက်စပ်ခဲ့သနည်း။",
          optionsEn: [
            "Her Term 2 web page, which she planned with a wireframe",
            "Her Term 1 Birthday Countdown program",
            "A chart she has not built yet",
            "A database she has not learned about yet",
          ],
          optionsMy: [
            "သူမ Wireframe ဖြင့် စီစဉ်ခဲ့သော Term 2 ဝက်ဘ်စာမျက်နှာ",
            "သူမ၏ Term 1 မွေးနေ့ရေတွက်ချိန် ပရိုဂရမ်",
            "မတည်ဆောက်ရသေးသော ဂရပ်တစ်ခု",
            "မသင်ရသေးသော ဒေတာဘေ့စ်တစ်ခု",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek10 = CourseWeekDef(
  id: "course-year6-computing-w10",
  weekNumber: 10,
  titleEn: "Formulas That Do the Work For You",
  titleMy: "အလုပ်ကို သင့်အစား လုပ်ပေးသော ဖော်မြူလာများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w10-d1",
      dayNumber: 1,
      titleEn: "Formulas and Functions",
      titleMy: "ဖော်မြူလာများနှင့် ဖန်ရှင်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which symbol must every spreadsheet formula begin with, so the program knows to calculate rather than just display text?",
          questionMy:
              "ဇယားချက်ပြအား စာသားအဖြစ်သာ ပြသမည့်အစား တွက်ချက်ရမည်ကို သိစေရန် ဖော်မြူလာတိုင်း မည်သည့်သင်္ကေတဖြင့် အစပြုရမည်နည်း။",
          optionsEn: [
            "An equals sign (=)",
            "A colon (:)",
            "A hashtag (#)",
            "A question mark (?)",
          ],
          optionsMy: [
            "ညီမျှခြင်းသင်္ကေတ (=)",
            "ကော်လံ (:)",
            "ဟက်ရှ်တက် (#)",
            "မေးခွန်းအမှတ် (?)",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which built-in function adds up all the numbers in a chosen range of cells?",
          questionMy:
              "ရွေးချယ်ထားသော ဆဲလ်အပိုင်းအခြားရှိ ဂဏန်းအားလုံးကို ပေါင်းပေးသော built-in function မှာ အဘယ်နည်း။",
          optionsEn: ["SUM", "AVERAGE", "MAX", "MIN"],
          optionsMy: ["SUM", "AVERAGE", "MAX", "MIN"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does the AVERAGE function calculate?",
          questionMy: "AVERAGE function က ဘာကို တွက်ချက်ပေးသနည်း။",
          optionsEn: [
            "The mean value of a range of numbers",
            "The total of a range of numbers",
            "The single biggest number in a range",
            "The single smallest number in a range",
          ],
          optionsMy: [
            "ဂဏန်းအပိုင်းအခြားတစ်ခု၏ ပျမ်းမျှတန်ဖိုး",
            "ဂဏန်းအပိုင်းအခြားတစ်ခု၏ စုစုပေါင်း",
            "အပိုင်းအခြားရှိ အကြီးဆုံးဂဏန်းတစ်ခုတည်း",
            "အပိုင်းအခြားရှိ အငယ်ဆုံးဂဏန်းတစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi types SUM(B2:B6) into a cell without an equals sign in front, and nothing calculates. Using her Term 1 vocabulary, what kind of mistake is this?",
          questionMy:
              "နှင်းချည်သည် ဆဲလ်တစ်ခုထဲသို့ ရှေ့တွင် ညီမျှခြင်းသင်္ကေတမပါဘဲ SUM(B2:B6) ဟု ရိုက်ထည့်လိုက်ရာ ဘာမှ တွက်ချက်မပေးပါ။ သူမ၏ Term 1 ဝေါဟာရကို သုံး၍ ဆိုရလျှင် ဤသည်မှာ မည်သည့်အမှားအမျိုးအစားနည်း။",
          optionsEn: [
            "A syntax error, because a required symbol is missing",
            "A logic error, because her numbers are wrong",
            "A hardware error, because her mouse is broken",
            "A binary error, because a 1 was typed instead of a 0",
          ],
          optionsMy: [
            "Syntax error တစ်ခုဖြစ်သည်၊ လိုအပ်သော သင်္ကေတတစ်ခု ချန်ကျန်နေသောကြောင့်ဖြစ်သည်",
            "Logic error တစ်ခုဖြစ်သည်၊ ဂဏန်းများ မှားနေသောကြောင့်ဖြစ်သည်",
            "Hardware error တစ်ခုဖြစ်သည်၊ မောက်စ်ပျက်နေသောကြောင့်ဖြစ်သည်",
            "Binary error တစ်ခုဖြစ်သည်၊ 0 အစား 1 ကို ရိုက်မိသောကြောင့်ဖြစ်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which function would you use to find the single highest score in a list of test results?",
          questionMy:
              "စာမေးပွဲရလဒ်စာရင်းတစ်ခုရှိ အမြင့်ဆုံးရမှတ်တစ်ခုတည်းကို ရှာရန် မည်သည့် function ကို သုံးမည်နည်း။",
          optionsEn: ["MAX", "MIN", "SUM", "AVERAGE"],
          optionsMy: ["MAX", "MIN", "SUM", "AVERAGE"],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w10-d2",
      dayNumber: 2,
      titleEn: "Match the Formula Vocabulary",
      titleMy: "ဖော်မြူလာ ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w10-dm-1",
          termEn: "Formula",
          termMy: "Formula (ဖော်မြူလာ)",
          matchEn:
              "An instruction starting with = that tells a spreadsheet to calculate a value",
          matchMy:
              "ဇယားချက်ပြအား တန်ဖိုးတစ်ခု တွက်ချက်ရန် = ဖြင့် စတင်သော ညွှန်ကြားချက်",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w10-dm-2",
          termEn: "Function",
          termMy: "Function (ဖန်ရှင်)",
          matchEn:
              "A ready-made formula with a name, such as SUM, that performs a specific calculation",
          matchMy:
              "SUM ကဲ့သို့ အမည်ပါရှိပြီး တိကျသော တွက်ချက်မှုတစ်ခုကို ပြုလုပ်ပေးသော အသင့်ပြင်ထားသည့် ဖော်မြူလာ",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w10-dm-3",
          termEn: "SUM",
          termMy: "SUM",
          matchEn:
              "The function that adds together every number in a chosen range",
          matchMy:
              "ရွေးချယ်ထားသော အပိုင်းအခြားရှိ ဂဏန်းအားလုံးကို ပေါင်းပေးသော function",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w10-dm-4",
          termEn: "AVERAGE",
          termMy: "AVERAGE",
          matchEn:
              "The function that calculates the mean value of a chosen range",
          matchMy:
              "ရွေးချယ်ထားသော အပိုင်းအခြား၏ ပျမ်းမျှတန်ဖိုးကို တွက်ချက်ပေးသော function",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w10-dm-5",
          termEn: "MAX",
          termMy: "MAX",
          matchEn:
              "The function that finds the single largest number in a chosen range",
          matchMy:
              "ရွေးချယ်ထားသော အပိုင်းအခြားရှိ အကြီးဆုံးဂဏန်းတစ်ခုတည်းကို ရှာပေးသော function",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w10-dm-6",
          termEn: "MIN",
          termMy: "MIN",
          matchEn:
              "The function that finds the single smallest number in a chosen range",
          matchMy:
              "ရွေးချယ်ထားသော အပိုင်းအခြားရှိ အငယ်ဆုံးဂဏန်းတစ်ခုတည်းကို ရှာပေးသော function",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w10-d3",
      dayNumber: 3,
      titleEn: "Sort: Function or Plain Formula?",
      titleMy: "စီစစ်ကြမည် - Function လား၊ ရိုးရိုးဖော်မြူလာလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Uses a Named Function", "A Plain Arithmetic Formula"],
        bucketsMy: [
          "အမည်ပါ Function သုံးထားသည်",
          "ရိုးရိုး ဂဏန်းတွက်ချက်မှု ဖော်မြူလာ",
        ],
        items: [
          SortingItem(
            id: "y6comp-w10-sort-1",
            labelEn: "=SUM(B2:B6)",
            labelMy: "=SUM(B2:B6)",
            correctBucketEn: "Uses a Named Function",
            correctBucketMy: "အမည်ပါ Function သုံးထားသည်",
          ),
          SortingItem(
            id: "y6comp-w10-sort-2",
            labelEn: "=AVERAGE(C2:C6)",
            labelMy: "=AVERAGE(C2:C6)",
            correctBucketEn: "Uses a Named Function",
            correctBucketMy: "အမည်ပါ Function သုံးထားသည်",
          ),
          SortingItem(
            id: "y6comp-w10-sort-3",
            labelEn: "=MAX(D2:D6)",
            labelMy: "=MAX(D2:D6)",
            correctBucketEn: "Uses a Named Function",
            correctBucketMy: "အမည်ပါ Function သုံးထားသည်",
          ),
          SortingItem(
            id: "y6comp-w10-sort-4",
            labelEn: "=B2+B3",
            labelMy: "=B2+B3",
            correctBucketEn: "A Plain Arithmetic Formula",
            correctBucketMy: "ရိုးရိုး ဂဏန်းတွက်ချက်မှု ဖော်မြူလာ",
          ),
          SortingItem(
            id: "y6comp-w10-sort-5",
            labelEn: "=C4-C5",
            labelMy: "=C4-C5",
            correctBucketEn: "A Plain Arithmetic Formula",
            correctBucketMy: "ရိုးရိုး ဂဏန်းတွက်ချက်မှု ဖော်မြူလာ",
          ),
          SortingItem(
            id: "y6comp-w10-sort-6",
            labelEn: "=D2*D3",
            labelMy: "=D2*D3",
            correctBucketEn: "A Plain Arithmetic Formula",
            correctBucketMy: "ရိုးရိုး ဂဏန်းတွက်ချက်မှု ဖော်မြူလာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w10-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Formula Adventure",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ ဖော်မြူလာ စွန့်စားခန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Formula Adventure",
        titleMy: "နှင်းချည်၏ ဖော်မြူလာ စွန့်စားခန်း",
        passageEn:
            "With a whole week of pocket money data filled into her spreadsheet, Nay Chi wanted to know exactly how much she had spent in total. At first, she reached for a calculator and started adding the five numbers in column C one by one, but her teacher smiled and said, \"There's a much faster way -- the SUM function can add a whole range of cells for you in an instant.\"\n\nExcited, Nay Chi clicked an empty cell and typed SUM(C2:C6). She pressed enter, but instead of a total, the cell just showed the plain text she had typed -- nothing had been calculated at all. Remembering how carefully she once traced her Term 1 code for a forgotten colon, and her Term 2 <img> tag for a missing quotation mark, she checked her formula letter by letter. There it was: she had left off the equals sign at the very start. She retyped it correctly as =SUM(C2:C6), pressed enter, and this time a proper total appeared instantly.\n\nFeeling confident, Nay Chi tried one more formula, =AVERAGE(C2:C6), to see how much she spent on an average day. The number appeared at once, and she nodded to herself -- whether it was a forgotten colon, a missing quotation mark, or a missing equals sign, the lesson was always the same: get every small detail exactly right, and the computer will do the rest of the work for you.",
        passageMy:
            "တစ်ပတ်စာ ပေါက်ငွေဒေတာအပြည့်ကို သူမ၏ ဇယားချက်ပြထဲသို့ ဖြည့်စွက်ပြီးနောက် နှင်းချည်သည် စုစုပေါင်း မည်မျှကုန်ကျခဲ့သည်ကို အတိအကျ သိချင်ခဲ့သည်။ ဦးစွာ တွက်စက်တစ်ခုကို ကိုင်ယူပြီး ကော်လံ C ရှိ ဂဏန်းငါးလုံးကို တစ်ခုချင်းစီ ပေါင်းစတင်ခဲ့သည်၊ သို့သော် ဆရာမက ပြုံးရင်း \"ပိုမြန်တဲ့နည်းတစ်ခု ရှိတယ် -- SUM function က ဆဲလ်အပိုင်းအခြားတစ်ခုလုံးကို တစ်ခဏတည်းနဲ့ ပေါင်းပေးနိုင်တယ်\" ဟု ပြောခဲ့သည်။\n\nစိတ်လှုပ်ရှားစွာ နှင်းချည်သည် အလွတ်ဆဲလ်တစ်ခုကို နှိပ်ပြီး SUM(C2:C6) ဟု ရိုက်ထည့်ခဲ့သည်။ Enter နှိပ်လိုက်သောအခါ စုစုပေါင်းအစား သူမရိုက်ထည့်ခဲ့သော ရိုးရိုးစာသားသာ ဆဲလ်တွင် ပေါ်နေခဲ့ပြီး ဘာမှ မတွက်ချက်ပေးခဲ့ပါ။ တစ်ခါက သူမ၏ Term 1 ကုဒ်ကို မေ့ကျန်ခဲ့သော colon ရှာဖွေခဲ့ဘူးသည့်နည်းတူ၊ Term 2 <img> tag ကို ပျောက်ဆုံးနေသော ပိတ်ကိုးမျိုး ရှာဖွေခဲ့ဘူးသည့်နည်းတူ သူမ၏ ဖော်မြူလာကို အက္ခရာချင်းအလိုက် ပြန်စစ်ဆေးခဲ့သည်။ ထိုအခါ တွေ့ခဲ့သည် -- အစတွင် ညီမျှခြင်းသင်္ကေတကို ချန်ခဲ့မိခြင်းဖြစ်သည်။ သူမသည် =SUM(C2:C6) ဟု မှန်ကန်စွာ ပြန်ရိုက်ထည့်ကာ Enter နှိပ်လိုက်ရာ ဤအကြိမ်တွင် မှန်ကန်သော စုစုပေါင်းတစ်ခု ချက်ချင်း ပေါ်လာခဲ့သည်။\n\nယုံကြည်မှု ရရှိလာသဖြင့် နှင်းချည်သည် ပျမ်းမျှအားဖြင့် တစ်ရက်ကို မည်မျှသုံးခဲ့သည်ကို ကြည့်ရန် =AVERAGE(C2:C6) ဟူသော ဖော်မြူလာတစ်ခုကို ထပ်မံစမ်းသပ်ခဲ့သည်။ ဂဏန်းတစ်ခု ချက်ချင်း ပေါ်လာခဲ့ပြီး၊ သူမ ဦးခေါင်းညိတ်ခဲ့သည် -- မေ့ကျန်ခဲ့သော colon ဖြစ်စေ၊ ပျောက်ဆုံးနေသော ပိတ်ကိုးမျိုးဖြစ်စေ၊ ပျောက်ဆုံးနေသော ညီမျှခြင်းသင်္ကေတဖြစ်စေ သင်ခန်းစာသည် အမြဲတစ်မျိုးတည်းပင်ဖြစ်ကြောင်း -- အသေးစိတ်အချက်တိုင်းကို အတိအကျလုပ်ပါက ကွန်ပျူတာက ကျန်အလုပ်ကို လုပ်ပေးလိမ့်မည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did Nay Chi first try to use to add up her week's spending?",
            questionMy:
                "နှင်းချည်သည် သူမ၏ တစ်ပတ်စာ ကုန်ကျစရိတ်ကို ပေါင်းရန် ဦးဆုံး မည်သည့်နည်းကို စမ်းသုံးခဲ့သနည်း။",
            optionsEn: [
              "A calculator, adding the numbers one by one",
              "The MAX function",
              "A pie chart",
              "A cell reference",
            ],
            optionsMy: [
              "ဂဏန်းများကို တစ်ခုချင်းပေါင်းသော တွက်စက်",
              "MAX function",
              "ဝိုင်းပုံဂရပ်",
              "ဆဲလ်ကိုးကား",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What exact mistake did Nay Chi make when she first typed her SUM formula?",
            questionMy:
                "SUM ဖော်မြူလာကို ဦးစွာရိုက်ထည့်စဉ် နှင်းချည် အတိအကျ ဘာအမှား လုပ်မိခဲ့သနည်း။",
            optionsEn: [
              "She left off the equals sign at the start",
              "She used AVERAGE instead of SUM",
              "She chose the wrong range of cells",
              "She typed her formula in the wrong worksheet",
            ],
            optionsMy: [
              "အစတွင် ညီမျှခြင်းသင်္ကေတကို ချန်ခဲ့မိသည်",
              "SUM အစား AVERAGE ကို သုံးမိသည်",
              "မှားယွင်းသော ဆဲလ်အပိုင်းအခြားကို ရွေးချယ်မိသည်",
              "မှားယွင်းသော worksheet တွင် ဖော်မြူလာရိုက်ထည့်မိသည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What is the correctly written formula Nay Chi ended up using?",
            questionMy:
                "နှင်းချည် နောက်ဆုံး အသုံးပြုခဲ့သော မှန်ကန်စွာ ရေးထားသော ဖော်မြူလာမှာ အဘယ်နည်း။",
            optionsEn: [
              "=SUM(C2:C6)",
              "SUM(C2:C6)",
              "=AVERAGE(C2:C6) only",
              "=C2+C3+C4",
            ],
            optionsMy: [
              "=SUM(C2:C6)",
              "SUM(C2:C6)",
              "=AVERAGE(C2:C6) တစ်ခုတည်း",
              "=C2+C3+C4",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did the =AVERAGE(C2:C6) formula tell Nay Chi?",
            questionMy:
                "=AVERAGE(C2:C6) ဖော်မြူလာက နှင်းချည်အား ဘာကို ပြောပြခဲ့သနည်း။",
            optionsEn: [
              "How much she spent on an average day",
              "The single highest amount she spent",
              "The single lowest amount she spent",
              "The total number of days in the week",
            ],
            optionsMy: [
              "ပျမ်းမျှအားဖြင့် တစ်ရက်ကို မည်မျှသုံးခဲ့သနည်း",
              "သုံးခဲ့သော အမြင့်ဆုံးပမာဏတစ်ခုတည်း",
              "သုံးခဲ့သော အနည်းဆုံးပမာဏတစ်ခုတည်း",
              "ရက်သတ္တပတ်တစ်ခု၏ ရက်စုစုပေါင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What lesson does Nay Chi connect across her forgotten colon, missing quotation mark, and missing equals sign?",
            questionMy:
                "မေ့ကျန်ခဲ့သော colon၊ ပျောက်ဆုံးနေသော ပိတ်ကိုးမျိုးနှင့် ပျောက်ဆုံးနေသော ညီမျှခြင်းသင်္ကေတတို့ကို နှင်းချည် မည်သည့်သင်ခန်းစာဖြင့် ဆက်စပ်ခဲ့သနည်း။",
            optionsEn: [
              "Getting every small detail exactly right is what makes the computer do the work correctly",
              "Only colons matter in computing, nothing else",
              "Formulas never need to be checked",
              "Functions and formulas are always identical",
            ],
            optionsMy: [
              "အသေးစိတ်အချက်တိုင်းကို အတိအကျလုပ်ခြင်းသည် ကွန်ပျူတာကို မှန်ကန်စွာ အလုပ်လုပ်စေသည့် အချက်ဖြစ်ခြင်း",
              "ကွန်ပျူတာအတတ်ပညာတွင် colon တစ်ခုတည်းသာ အရေးကြီးခြင်း",
              "ဖော်မြူလာများကို စစ်ဆေးရန် လုံးဝမလိုအပ်ခြင်း",
              "Function နှင့် formula သည် အမြဲတစ်ခုတည်းဖြစ်ခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w10-d5",
      dayNumber: 5,
      titleEn: "Formulas and Functions Round-Up",
      titleMy: "ဖော်မြူလာများနှင့် ဖန်ရှင်များ အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What must every spreadsheet formula start with?",
          questionMy:
              "ဇယားချက်ပြ ဖော်မြူလာတိုင်း မည်သည့်အရာဖြင့် အစပြုရမည်နည်း။",
          optionsEn: [
            "An equals sign (=)",
            "A colon (:)",
            "A closing tag",
            "A cell reference only",
          ],
          optionsMy: [
            "ညီမျှခြင်းသင်္ကေတ (=)",
            "ကော်လံ (:)",
            "ပိတ်တဂ်",
            "ဆဲလ်ကိုးကားတစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which function adds up a range of numbers?",
          questionMy:
              "ဂဏန်းအပိုင်းအခြားတစ်ခုကို ပေါင်းပေးသော function မှာ အဘယ်နည်း။",
          optionsEn: ["SUM", "MAX", "MIN", "AVERAGE"],
          optionsMy: ["SUM", "MAX", "MIN", "AVERAGE"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which function finds the mean value of a range of numbers?",
          questionMy:
              "ဂဏန်းအပိုင်းအခြားတစ်ခု၏ ပျမ်းမျှတန်ဖိုးကို ရှာပေးသော function မှာ အဘယ်နည်း။",
          optionsEn: ["AVERAGE", "SUM", "MAX", "MIN"],
          optionsMy: ["AVERAGE", "SUM", "MAX", "MIN"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is the difference between =B2+B3 and =SUM(B2:B6)?",
          questionMy: "=B2+B3 နှင့် =SUM(B2:B6) ကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The first is a plain arithmetic formula, the second uses a named function",
            "There is no difference at all",
            "The first uses a chart, the second does not",
            "The second one never calculates anything",
          ],
          optionsMy: [
            "ပထမတစ်ခုသည် ရိုးရိုးဂဏန်းတွက်ချက်မှုဖော်မြူလာဖြစ်ပြီး ဒုတိယတစ်ခုသည် အမည်ပါ function တစ်ခုသုံးထားသည်",
            "ကွာခြားချက် လုံးဝမရှိပါ",
            "ပထမတစ်ခုသည် ဂရပ်တစ်ခု အသုံးပြုပြီး ဒုတိယတစ်ခုက မသုံးပါ",
            "ဒုတိယတစ်ခုသည် ဘာကိုမှ လုံးဝ မတွက်ချက်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's formula adventure this week, what exact mistake did she trace and fix?",
          questionMy:
              "ဤအပတ်၏ နှင်းချည်၏ ဖော်မြူလာ စွန့်စားခန်းတွင် သူမ ရှာဖွေပြင်ဆင်ခဲ့သော အတိအကျ အမှားမှာ အဘယ်နည်း။",
          optionsEn: [
            "A missing equals sign at the start of her formula",
            "A missing closing tag in her web page",
            "A missing colon in her code",
            "A missing chart title",
          ],
          optionsMy: [
            "ဖော်မြူလာ၏အစတွင် ပျောက်ဆုံးနေသော ညီမျှခြင်းသင်္ကေတ",
            "ဝက်ဘ်စာမျက်နှာရှိ ပျောက်ဆုံးနေသော ပိတ်တဂ်",
            "ကုဒ်ရှိ ပျောက်ဆုံးနေသော colon",
            "ပျောက်ဆုံးနေသော ဂရပ်ခေါင်းစဉ်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek11 = CourseWeekDef(
  id: "course-year6-computing-w11",
  weekNumber: 11,
  titleEn: "Formatting and Charts: Making Data Speak",
  titleMy: "ဖော်မတ်ချခြင်းနှင့် ဂရပ်များ - ဒေတာကို စကားပြောစေခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w11-d1",
      dayNumber: 1,
      titleEn: "Formatting and Choosing the Right Chart",
      titleMy: "ဖော်မတ်ချခြင်းနှင့် သင့်လျော်သော ဂရပ် ရွေးချယ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Why might Nay Chi make her column headings bold in a spreadsheet?",
          questionMy:
              "နှင်းချည်သည် ဇယားချက်ပြတစ်ခုတွင် ကော်လံခေါင်းစဉ်များကို အဘယ့်ကြောင့် စာလုံးထူ ပြုလုပ်နိုင်သနည်း။",
          optionsEn: [
            "To make the headings stand out clearly from the data below them",
            "To change the numbers stored in the cells",
            "To delete the column entirely",
            "To turn the text into a formula",
          ],
          optionsMy: [
            "အောက်ရှိ ဒေတာများနှင့် ခေါင်းစဉ်များကို ရှင်းလင်းစွာ ကွဲပြားစေရန်",
            "ဆဲလ်များထဲရှိ ဂဏန်းများကို ပြောင်းလဲရန်",
            "ကော်လံတစ်ခုလုံးကို ဖျက်ရန်",
            "စာသားကို ဖော်မြူလာအဖြစ် ပြောင်းလဲရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A chart that compares separate amounts across different categories, like rainfall in each month, is usually best shown as which chart type?",
          questionMy:
              "လအလိုက် မိုးရေချိန်ကဲ့သို့ အမျိုးအစားအသီးသီးရှိ သီးခြားပမာဏများကို နှိုင်းယှဉ်ပြသည့် ဂရပ်ကို အများအားဖြင့် မည်သည့်ဂရပ်အမျိုးအစားဖြင့် ပြသသင့်သနည်း။",
          optionsEn: [
            "A bar chart",
            "A pie chart",
            "A cell reference",
            "A worksheet tab",
          ],
          optionsMy: [
            "ဘားဂရပ် (Bar Chart)",
            "ဝိုင်းပုံဂရပ် (Pie Chart)",
            "ဆဲလ်ကိုးကား",
            "Worksheet တဘ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A chart that shows how a whole class's votes are shared out between different hobbies is usually best shown as which chart type?",
          questionMy:
              "အတန်းတစ်ခုလုံး၏ မဲများကို ဝါသနာအမျိုးမျိုးကြား ဝေမျှထားပုံကို ပြသသည့် ဂရပ်ကို အများအားဖြင့် မည်သည့်ဂရပ်အမျိုးအစားဖြင့် ပြသသင့်သနည်း။",
          optionsEn: ["A pie chart", "A bar chart", "A formula", "A function"],
          optionsMy: [
            "ဝိုင်းပုံဂရပ် (Pie Chart)",
            "ဘားဂရပ် (Bar Chart)",
            "ဖော်မြူလာ",
            "ဖန်ရှင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a chart title for?",
          questionMy: "ဂရပ်ခေါင်းစဉ် (chart title) ကို ဘာအတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "To tell the reader clearly what the chart is showing",
            "To store a number for a formula",
            "To colour the background of the chart",
            "To delete unwanted data",
          ],
          optionsMy: [
            "ဖတ်ရှုသူအား ဂရပ်ကဘာကို ပြသနေသည်ကို ရှင်းလင်းစွာ ပြောပြရန်",
            "ဖော်မြူလာတစ်ခုအတွက် ဂဏန်းတစ်ခုကို သိမ်းရန်",
            "ဂရပ်၏ နောက်ခံအရောင်ကို သတ်မှတ်ရန်",
            "မလိုအပ်သော ဒေတာကို ဖျက်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why might Nay Chi format a column of money values to always show two decimal places, such as 500.00?",
          questionMy:
              "ငွေကြေးတန်ဖိုးများပါသော ကော်လံကို 500.00 ကဲ့သို့ ဒဿမနေရာနှစ်နေရာ အမြဲပြသအောင် နှင်းချည် အဘယ့်ကြောင့် ဖော်မတ်ချနိုင်သနည်း။",
          optionsEn: [
            "So that every amount is shown clearly and consistently as money",
            "So that the numbers turn into text",
            "So that the formulas stop working",
            "So that the column disappears",
          ],
          optionsMy: [
            "ပမာဏတိုင်းကို ငွေကြေးအဖြစ် ရှင်းလင်းစွာနှင့် တသမတ်တည်း ပြသနိုင်ရန်",
            "ဂဏန်းများကို စာသားအဖြစ် ပြောင်းလဲရန်",
            "ဖော်မြူလာများ အလုပ်မလုပ်တော့စေရန်",
            "ကော်လံ ပျောက်ကွယ်သွားစေရန်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w11-d2",
      dayNumber: 2,
      titleEn: "Match the Formatting and Chart Vocabulary",
      titleMy: "ဖော်မတ်ချခြင်းနှင့် ဂရပ် ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w11-dm-1",
          termEn: "Bold",
          termMy: "Bold (စာလုံးထူ)",
          matchEn:
              "Text formatting that makes letters thicker and darker to help them stand out",
          matchMy:
              "အက္ခရာများကို ပိုထူထဲ၊ ပိုမည်းအောင် ပြုလုပ်ပြီး ထင်ရှားစေသော စာလုံးဖော်မတ်",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w11-dm-2",
          termEn: "Number Format",
          termMy: "Number Format (ဂဏန်းပုံစံချမှတ်ခြင်း)",
          matchEn:
              "A setting that controls how numbers are displayed, such as as currency or with decimal places",
          matchMy:
              "ငွေကြေးအဖြစ် သို့မဟုတ် ဒဿမနေရာများပါစေရန် ဂဏန်းများကို မည်သို့ပြသမည်ကို ထိန်းချုပ်ပေးသော ဆက်တင်",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w11-dm-3",
          termEn: "Bar Chart",
          termMy: "Bar Chart (ဘားဂရပ်)",
          matchEn:
              "A chart using separate bars to compare amounts across different categories",
          matchMy:
              "အမျိုးအစားအသီးသီးရှိ ပမာဏများကို နှိုင်းယှဉ်ရန် သီးခြားဘားများသုံးထားသော ဂရပ်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w11-dm-4",
          termEn: "Pie Chart",
          termMy: "Pie Chart (ဝိုင်းပုံဂရပ်)",
          matchEn:
              "A circular chart divided into slices that show how a whole is shared between parts",
          matchMy:
              "အစိတ်အပိုင်းများကြား တစ်ခုလုံးကို မည်သို့ ဝေမျှထားသည်ကို ပြသသည့် အပိုင်းလေးများဖြင့် ခွဲထားသော စက်ဝိုင်းပုံဂရပ်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w11-dm-5",
          termEn: "Chart Title",
          termMy: "Chart Title (ဂရပ်ခေါင်းစဉ်)",
          matchEn:
              "Words above a chart that tell the reader exactly what data is being shown",
          matchMy:
              "ဂရပ်၏ အထက်တွင်ရှိပြီး မည်သည့်ဒေတာကို ပြသနေသည်ကို ဖတ်ရှုသူအား အတိအကျ ပြောပြသော စကားလုံးများ",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w11-dm-6",
          termEn: "Sort (data)",
          termMy: "Sort (data) (အချက်အလက် စီစဉ်ခြင်း)",
          matchEn:
              "A spreadsheet tool that rearranges rows, for example smallest to largest or A to Z",
          matchMy:
              "အတန်းများကို ဥပမာ အသေးဆုံးမှ အကြီးဆုံးသို့ သို့မဟုတ် A မှ Z သို့ ပြန်လည်စီစဉ်ပေးသော ဇယားချက်ပြကိရိယာ",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w11-d3",
      dayNumber: 3,
      titleEn: "Sort: Best as a Bar Chart or a Pie Chart?",
      titleMy:
          "စီစစ်ကြမည် - ဘားဂရပ်နှင့် သင့်လျော်သလား၊ ဝိုင်းပုံဂရပ်နှင့် သင့်လျော်သလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Best Shown as a Bar Chart", "Best Shown as a Pie Chart"],
        bucketsMy: [
          "ဘားဂရပ်ဖြင့် ပြသရန် အသင့်လျော်ဆုံး",
          "ဝိုင်းပုံဂရပ်ဖြင့် ပြသရန် အသင့်လျော်ဆုံး",
        ],
        items: [
          SortingItem(
            id: "y6comp-w11-sort-1",
            labelEn: "Rainfall recorded each month of the year",
            labelMy: "နှစ်တစ်နှစ်၏ လအလိုက် မိုးရေချိန်မှတ်တမ်း",
            correctBucketEn: "Best Shown as a Bar Chart",
            correctBucketMy: "ဘားဂရပ်ဖြင့် ပြသရန် အသင့်လျော်ဆုံး",
          ),
          SortingItem(
            id: "y6comp-w11-sort-2",
            labelEn: "Number of books read by each pupil in the class",
            labelMy: "အတန်းရှိ ကျောင်းသားတစ်ဦးစီ ဖတ်ရှုသော စာအုပ်အရေအတွက်",
            correctBucketEn: "Best Shown as a Bar Chart",
            correctBucketMy: "ဘားဂရပ်ဖြင့် ပြသရန် အသင့်လျော်ဆုံး",
          ),
          SortingItem(
            id: "y6comp-w11-sort-3",
            labelEn: "Pocket money received on each day of the week",
            labelMy: "ရက်သတ္တပတ်တစ်ခုအတွင်း တစ်ရက်စီ ရရှိသော ပေါက်ငွေ",
            correctBucketEn: "Best Shown as a Bar Chart",
            correctBucketMy: "ဘားဂရပ်ဖြင့် ပြသရန် အသင့်လျော်ဆုံး",
          ),
          SortingItem(
            id: "y6comp-w11-sort-4",
            labelEn: "Share of the whole class who chose each favourite hobby",
            labelMy:
                "အတန်းတစ်ခုလုံးအနက် အနှစ်ဆုံးဝါသနာကို ရွေးချယ်ကြသူများ၏ ဝေစု",
            correctBucketEn: "Best Shown as a Pie Chart",
            correctBucketMy: "ဝိုင်းပုံဂရပ်ဖြင့် ပြသရန် အသင့်လျော်ဆုံး",
          ),
          SortingItem(
            id: "y6comp-w11-sort-5",
            labelEn: "Percentage of a school day spent on each subject",
            labelMy:
                "ကျောင်းရက်တစ်ရက်၏ ဘာသာရပ်တစ်ခုစီအတွက် အသုံးပြုသော ရာခိုင်နှုန်း",
            correctBucketEn: "Best Shown as a Pie Chart",
            correctBucketMy: "ဝိုင်းပုံဂရပ်ဖြင့် ပြသရန် အသင့်လျော်ဆုံး",
          ),
          SortingItem(
            id: "y6comp-w11-sort-6",
            labelEn:
                "Proportion of votes each candidate received in a class election",
            labelMy:
                "အတန်းရွေးကောက်ပွဲတွင် ကိုယ်စားလှယ်လောင်းတစ်ဦးစီ ရရှိသော မဲအချိုး",
            correctBucketEn: "Best Shown as a Pie Chart",
            correctBucketMy: "ဝိုင်းပုံဂရပ်ဖြင့် ပြသရန် အသင့်လျော်ဆုံး",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w11-d4",
      dayNumber: 4,
      titleEn: "Reading: Turning Numbers into a Picture",
      titleMy: "စာဖတ်ခြင်း - ဂဏန်းများကို ပုံရိပ်အဖြစ် ပြောင်းလဲခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Turning Numbers into a Picture",
        titleMy: "ဂဏန်းများကို ပုံရိပ်အဖြစ် ပြောင်းလဲခြင်း",
        passageEn:
            "Nay Chi's pocket money spreadsheet already had working SUM and AVERAGE formulas, but her teacher wanted the class to make their spreadsheets easier to read too. Nay Chi selected her header row and made it bold, so \"Day\", \"Amount Received\" and \"Amount Spent\" stood out clearly above her data. She then formatted her money columns to always show two decimal places, so every value looked neat and consistent, like 500.00 Ks instead of just 500.\n\nNext, Nay Chi wanted to turn her week of spending into a chart. She thought carefully about her data: it showed five separate daily amounts, not parts of one single whole, so she chose a bar chart rather than a pie chart, with one bar for each day. She gave it the chart title \"My Week of Spending\" so anyone looking at it would instantly understand what it showed.\n\nAcross the room, her friend Su Su had used a bar chart to show what proportion of the class had chosen each favourite hobby, but the bars did not add up to feel like one whole class at all. Nay Chi gently pointed out that since Su Su's data showed how the whole class was shared between hobbies, a pie chart would make far more sense. Su Su swapped her chart, and together they agreed: the right chart depends on what the data is actually trying to show.",
        passageMy:
            "နှင်းချည်၏ ပေါက်ငွေ ဇယားချက်ပြတွင် SUM နှင့် AVERAGE ဖော်မြူလာများ အလုပ်လုပ်နေခဲ့ပြီးသားဖြစ်သော်လည်း၊ ဇယားချက်ပြများကို ပိုမိုဖတ်ရှုရလွယ်ကူစေချင်ကြောင်း ဆရာမက အတန်းသားများအား ပြောခဲ့သည်။ နှင်းချည်သည် သူမ၏ ခေါင်းစဉ်အတန်းကို ရွေးချယ်ပြီး စာလုံးထူပြုလုပ်ခဲ့ရာ \"Day\"၊ \"Amount Received\" နှင့် \"Amount Spent\" တို့သည် သူမ၏ဒေတာအထက်တွင် ရှင်းလင်းစွာ ထင်ရှားလာခဲ့သည်။ ထို့နောက် သူမ၏ ငွေကြေးကော်လံများကို ဒဿမနေရာနှစ်နေရာ အမြဲပြသအောင် ဖော်မတ်ချခဲ့ရာ 500 ဟု ရိုးရိုးမပြသဘဲ 500.00 Ks ကဲ့သို့ တန်ဖိုးတိုင်း သပ်ရပ်၊ တသမတ်တည်း ပေါ်လာခဲ့သည်။\n\nထို့နောက် နှင်းချည်သည် သူမ၏ တစ်ပတ်စာ ကုန်ကျစရိတ်ကို ဂရပ်တစ်ခုအဖြစ် ပြောင်းလဲလိုခဲ့သည်။ သူမ၏ ဒေတာကို ဂရုတစိုက် စဉ်းစားကြည့်ရာ ၎င်းသည် တစ်ခုလုံး၏ အစိတ်အပိုင်းများမဟုတ်ဘဲ ရက်ငါးရက်စာ သီးခြားပမာဏငါးခု ဖြစ်ကြောင်း တွေ့ရသဖြင့် ဝိုင်းပုံဂရပ်အစား ဘားဂရပ်ကို ရက်တစ်ရက်လျှင် ဘားတစ်ခုနှုန်းဖြင့် ရွေးချယ်ခဲ့သည်။ ဖတ်ရှုသူတိုင်း ချက်ချင်းနားလည်နိုင်စေရန် \"My Week of Spending\" ဟူသော ဂရပ်ခေါင်းစဉ်ကို ပေးခဲ့သည်။\n\nအခန်းတစ်ဖက်တွင် သူမ၏သူငယ်ချင်း စုစုက အတန်းတစ်ခုလုံးက အနှစ်ဆုံးဝါသနာတစ်ခုစီကို မည်မျှရွေးချယ်ခဲ့ကြသည်ကို ပြသရန် ဘားဂရပ်တစ်ခု အသုံးပြုခဲ့သော်လည်း ဘားများသည် အတန်းတစ်ခုလုံးဖြစ်ကြောင်း လုံးဝ ခံစားမရနိုင်ခဲ့ပါ။ စုစု၏ ဒေတာသည် အတန်းတစ်ခုလုံးကို ဝါသနာများကြား မည်သို့ ဝေမျှထားသည်ကို ပြသနေသောကြောင့် ဝိုင်းပုံဂရပ်က ပိုသင့်လျော်ကြောင်း နှင်းချည်က နူးညံ့စွာ ညွှန်ပြခဲ့သည်။ စုစုသည် သူမ၏ဂရပ်ကို ပြောင်းလဲခဲ့ပြီး နှစ်ဦးစလုံး သဘောတူခဲ့ကြသည် -- မှန်ကန်သောဂရပ်သည် ဒေတာက တကယ်ဘာကို ပြသလိုသည်ပေါ်တွင် မူတည်ကြောင်း။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What formatting did Nay Chi apply to her header row?",
            questionMy:
                "နှင်းချည်သည် သူမ၏ ခေါင်းစဉ်အတန်းကို မည်သည့်ဖော်မတ်ချမှု ပြုလုပ်ခဲ့သနည်း။",
            optionsEn: [
              "She made it bold",
              "She deleted it",
              "She turned it into a chart",
              "She hid it from view",
            ],
            optionsMy: [
              "စာလုံးထူ ပြုလုပ်ခဲ့သည်",
              "ဖျက်ခဲ့သည်",
              "ဂရပ်အဖြစ် ပြောင်းလဲခဲ့သည်",
              "ကွယ်ပျောက်အောင် ဖုံးကွယ်ခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why did Nay Chi format her money values to show two decimal places?",
            questionMy:
                "နှင်းချည်သည် သူမ၏ ငွေကြေးတန်ဖိုးများကို ဒဿမနေရာနှစ်နေရာ ပြသအောင် အဘယ့်ကြောင့် ဖော်မတ်ချခဲ့သနည်း။",
            optionsEn: [
              "So every amount looked neat and consistent as money",
              "So the numbers would disappear",
              "So her formulas would stop working",
              "So the column would turn into a chart",
            ],
            optionsMy: [
              "ပမာဏတိုင်း ငွေကြေးအဖြစ် သပ်ရပ်ပြီး တသမတ်တည်း မြင်ရရန်",
              "ဂဏန်းများ ပျောက်ကွယ်သွားစေရန်",
              "သူမ၏ ဖော်မြူလာများ အလုပ်ရပ်တန့်စေရန်",
              "ကော်လံ ဂရပ်တစ်ခုအဖြစ် ပြောင်းလဲသွားစေရန်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which chart type did Nay Chi choose for her week of spending, and why?",
            questionMy:
                "နှင်းချည်သည် သူမ၏ တစ်ပတ်စာ ကုန်ကျစရိတ်အတွက် မည်သည့်ဂရပ်အမျိုးအစားကို ရွေးချယ်ခဲ့ပြီး အဘယ့်ကြောင့်နည်း။",
            optionsEn: [
              "A bar chart, because her data showed five separate daily amounts",
              "A pie chart, because her data showed parts of one whole",
              "No chart, because charts are not useful",
              "A worksheet tab, because it stores data",
            ],
            optionsMy: [
              "ဘားဂရပ်၊ အကြောင်းမှာ သူမ၏ဒေတာသည် ရက်ငါးရက်စာ သီးခြားပမာဏငါးခုကို ပြသနေသောကြောင့်ဖြစ်သည်",
              "ဝိုင်းပုံဂရပ်၊ အကြောင်းမှာ သူမ၏ဒေတာသည် တစ်ခုလုံး၏ အစိတ်အပိုင်းများကို ပြသနေသောကြောင့်ဖြစ်သည်",
              "ဂရပ်လုံးဝမရွေးချယ်ခဲ့ပါ၊ အကြောင်းမှာ ဂရပ်များ အသုံးမဝင်သောကြောင့်ဖြစ်သည်",
              "Worksheet တဘ်၊ အကြောင်းမှာ ဒေတာကို သိမ်းဆည်းပေးသောကြောင့်ဖြစ်သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What mistake did Su Su make with her chart, and what should it have been instead?",
            questionMy:
                "စုစုသည် သူမ၏ဂရပ်တွင် မည်သည့်အမှားလုပ်မိခဲ့ပြီး အစား မည်သို့ဖြစ်သင့်သနည်း။",
            optionsEn: [
              "She used a bar chart for parts-of-a-whole data that should have been a pie chart",
              "She used a pie chart for daily amounts that should have been a bar chart",
              "She forgot to add any data at all",
              "She used a formula instead of a chart",
            ],
            optionsMy: [
              "တစ်ခုလုံး၏ အစိတ်အပိုင်းဒေတာအတွက် ဘားဂရပ်ကို သုံးမိခဲ့ပြီး ဝိုင်းပုံဂရပ်ဖြစ်သင့်သည်",
              "နေ့စဉ်ပမာဏအတွက် ဝိုင်းပုံဂရပ်ကို သုံးမိခဲ့ပြီး ဘားဂရပ်ဖြစ်သင့်သည်",
              "ဒေတာလုံးဝ ထည့်သွင်းရန် မေ့ကျန်ခဲ့သည်",
              "ဂရပ်အစား ဖော်မြူလာကို သုံးမိခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Nay Chi and Su Su agree at the end of the passage?",
            questionMy:
                "စာပိုဒ်အဆုံးတွင် နှင်းချည်နှင့် စုစု မည်သို့ သဘောတူခဲ့ကြသနည်း။",
            optionsEn: [
              "The right chart depends on what the data is actually trying to show",
              "Bar charts are always better than pie charts",
              "Charts should never have a title",
              "Formatting is more important than charts",
            ],
            optionsMy: [
              "မှန်ကန်သောဂရပ်သည် ဒေတာက တကယ်ဘာကို ပြသလိုသည်ပေါ်တွင် မူတည်ကြောင်း",
              "ဘားဂရပ်သည် ဝိုင်းပုံဂရပ်ထက် အမြဲပိုကောင်းကြောင်း",
              "ဂရပ်များတွင် ခေါင်းစဉ် လုံးဝမလိုအပ်ကြောင်း",
              "ဖော်မတ်ချခြင်းသည် ဂရပ်ထက် ပိုအရေးကြီးကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w11-d5",
      dayNumber: 5,
      titleEn: "Formatting and Charts Round-Up",
      titleMy: "ဖော်မတ်ချခြင်းနှင့် ဂရပ်များ အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does making text bold help with in a spreadsheet?",
          questionMy:
              "ဇယားချက်ပြတစ်ခုတွင် စာသားကို စာလုံးထူပြုလုပ်ခြင်းက ဘာနှင့် ကူညီပေးသနည်း။",
          optionsEn: [
            "Making headings stand out clearly",
            "Deleting unwanted rows",
            "Turning formulas into charts",
            "Hiding a whole worksheet",
          ],
          optionsMy: [
            "ခေါင်းစဉ်များကို ရှင်းလင်းစွာ ထင်ရှားစေခြင်း",
            "မလိုအပ်သောအတန်းများ ဖျက်ခြင်း",
            "ဖော်မြူလာများကို ဂရပ်အဖြစ် ပြောင်းလဲခြင်း",
            "worksheet တစ်ခုလုံးကို ဖုံးကွယ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which chart type best compares separate amounts across categories, like books read by each pupil?",
          questionMy:
              "ကျောင်းသားတစ်ဦးစီ ဖတ်ရှုသော စာအုပ်အရေအတွက်ကဲ့သို့ အမျိုးအစားများကြား သီးခြားပမာဏများကို နှိုင်းယှဉ်ရန် မည်သည့်ဂရပ်အမျိုးအစားက အသင့်လျော်ဆုံးနည်း။",
          optionsEn: [
            "A bar chart",
            "A pie chart",
            "A cell reference",
            "A number format",
          ],
          optionsMy: [
            "ဘားဂရပ်",
            "ဝိုင်းပုံဂရပ်",
            "ဆဲလ်ကိုးကား",
            "Number Format",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which chart type best shows how a whole is shared between different parts, like hobby choices across a class?",
          questionMy:
              "အတန်းတစ်ခုလုံး၏ ဝါသနာရွေးချယ်မှုများကဲ့သို့ တစ်ခုလုံးကို အစိတ်အပိုင်းများကြား မည်သို့ ဝေမျှထားသည်ကို ပြသရန် မည်သည့်ဂရပ်အမျိုးအစားက အသင့်လျော်ဆုံးနည်း။",
          optionsEn: [
            "A pie chart",
            "A bar chart",
            "A worksheet tab",
            "A cell reference",
          ],
          optionsMy: [
            "ဝိုင်းပုံဂရပ်",
            "ဘားဂရပ်",
            "Worksheet တဘ်",
            "ဆဲလ်ကိုးကား",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is the purpose of a chart title?",
          questionMy: "ဂရပ်ခေါင်းစဉ်၏ ရည်ရွယ်ချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "To tell the reader clearly what the chart is showing",
            "To store the chart's raw numbers",
            "To colour the chart's bars randomly",
            "To delete the chart if unwanted",
          ],
          optionsMy: [
            "ဖတ်ရှုသူအား ဂရပ်ကဘာကို ပြသနေသည်ကို ရှင်းလင်းစွာ ပြောပြရန်",
            "ဂရပ်၏ ဂဏန်းအရင်းအမြစ်များကို သိမ်းဆည်းရန်",
            "ဂရပ်၏ဘားများကို ကျပန်းအရောင်သုတ်ရန်",
            "မလိုအပ်ပါက ဂရပ်ကို ဖျက်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In this week's reading, what did Nay Chi help Su Su realise about her chart?",
          questionMy:
              "ဤအပတ်၏ စာဖတ်ခန်းတွင် နှင်းချည်သည် စုစု၏ ဂရပ်နှင့်ပတ်သက်၍ ဘာကို သိရှိစေခဲ့သနည်း။",
          optionsEn: [
            "That parts-of-a-whole data is better shown as a pie chart than a bar chart",
            "That her chart needed no title at all",
            "That her data should have been deleted",
            "That bar charts can never be used for hobbies",
          ],
          optionsMy: [
            "တစ်ခုလုံး၏ အစိတ်အပိုင်းဒေတာကို ဘားဂရပ်ထက် ဝိုင်းပုံဂရပ်ဖြင့် ပိုကောင်းစွာ ပြသနိုင်ကြောင်း",
            "သူမ၏ ဂရပ်တွင် ခေါင်းစဉ် လုံးဝမလိုအပ်ကြောင်း",
            "သူမ၏ ဒေတာကို ဖျက်ပစ်သင့်ကြောင်း",
            "ဝါသနာများအတွက် ဘားဂရပ်ကို လုံးဝသုံး၍ မရကြောင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek12 = CourseWeekDef(
  id: "course-year6-computing-w12",
  weekNumber: 12,
  titleEn: "Capstone: Nay Chi's Class Hobbies Survey",
  titleMy: "အဆုံးသတ်စီမံကိန်း - နှင်းချည်၏ အတန်းဝါသနာစစ်တမ်း",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w12-d1",
      dayNumber: 1,
      titleEn: "Planning Nay Chi's Survey Project",
      titleMy: "နှင်းချည်၏ စစ်တမ်းစီမံကိန်းကို စီစဉ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Before collecting any data for her class hobbies survey, what is the first thing Nay Chi should decide?",
          questionMy:
              "သူမ၏ အတန်းဝါသနာစစ်တမ်းအတွက် ဒေတာမစုမီ နှင်းချည် ဦးဆုံး ဆုံးဖြတ်ရမည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Exactly what survey question she wants to ask",
            "Which chart colours look prettiest",
            "How to format her formulas",
            "Which cell reference to use first",
          ],
          optionsMy: [
            "သူမ မေးလိုသော စစ်တမ်းမေးခွန်းကို အတိအကျ ဆုံးဖြတ်ရန်",
            "ဂရပ်၏ လှပဆုံးအရောင်များ",
            "ဖော်မြူလာများကို ဖော်မတ်ချနည်း",
            "ဦးစွာ သုံးရမည့် ဆဲလ်ကိုးကား",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the correct name for making a small mark to count each classmate's answer as they announce their favourite hobby?",
          questionMy:
              "အတန်းဖော်တစ်ဦးစီက သူ၏အနှစ်ဆုံးဝါသနာကို ကြေညာသောအခါ ရေတွက်ရန် အမှတ်အသေးလေးတစ်ခု လုပ်ခြင်းကို အဘယ်ဟု အမည်ပေးသင့်သနည်း။",
          optionsEn: [
            "A tally",
            "A formula",
            "A cell reference",
            "A pie chart",
          ],
          optionsMy: [
            "Tally (မှတ်တမ်းအမှတ်ခြစ်)",
            "ဖော်မြူလာ",
            "ဆဲလ်ကိုးကား",
            "ဝိုင်းပုံဂရပ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "After collecting tally marks for each hobby, what should Nay Chi type into her spreadsheet's rows and columns?",
          questionMy:
              "ဝါသနာတစ်ခုစီအတွက် tally အမှတ်များကို စုဆောင်းပြီးနောက် နှင်းချည်သည် ဇယားချက်ပြ၏ အတန်းနှင့်ကော်လံများထဲသို့ ဘာများ ရိုက်ထည့်သင့်သနည်း။",
          optionsEn: [
            "Each hobby name and its matching tally total",
            "Only a chart, with no numbers at all",
            "Her friends' home addresses",
            "A single colon for every hobby",
          ],
          optionsMy: [
            "ဝါသနာအမည်တစ်ခုစီနှင့် ၎င်း၏ ကိုက်ညီသည့် tally စုစုပေါင်း",
            "ဂရပ်တစ်ခုတည်းသာ၊ ဂဏန်းလုံးဝမပါဘဲ",
            "သူငယ်ချင်းများ၏ နေအိမ်လိပ်စာများ",
            "ဝါသနာတိုင်းအတွက် colon တစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which function should Nay Chi use to find the total number of classmates who answered her survey?",
          questionMy:
              "သူမ၏ စစ်တမ်းကို ဖြေဆိုခဲ့သော အတန်းဖော် စုစုပေါင်းအရေအတွက်ကို ရှာရန် မည်သည့် function ကို သုံးသင့်သနည်း။",
          optionsEn: ["SUM", "MAX", "MIN", "AVERAGE"],
          optionsMy: ["SUM", "MAX", "MIN", "AVERAGE"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Since her survey results show how the whole class's answers are shared between different hobbies, which chart type fits best?",
          questionMy:
              "သူမ၏ စစ်တမ်းရလဒ်များသည် အတန်းတစ်ခုလုံး၏ အဖြေများကို ဝါသနာအမျိုးမျိုးကြား ဝေမျှထားပုံကို ပြသနေသဖြင့် မည်သည့်ဂရပ်အမျိုးအစားက အသင့်လျော်ဆုံးဖြစ်သနည်း။",
          optionsEn: [
            "A pie chart",
            "A bar chart showing only one hobby",
            "No chart at all",
            "A worksheet tab",
          ],
          optionsMy: [
            "ဝိုင်းပုံဂရပ်",
            "ဝါသနာတစ်ခုတည်းသာ ပြသော ဘားဂရပ်",
            "ဂရပ်လုံးဝ မလို",
            "Worksheet တဘ်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w12-d2",
      dayNumber: 2,
      titleEn: "Match the Survey Project Vocabulary",
      titleMy: "စစ်တမ်းစီမံကိန်း ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w12-dm-1",
          termEn: "Survey Question",
          termMy: "Survey Question (စစ်တမ်းမေးခွန်း)",
          matchEn:
              "The single clear question every classmate is asked to answer, such as 'What is your favourite hobby?'",
          matchMy:
              "'သင့်အနှစ်ဆုံးဝါသနာက ဘာလဲ' ကဲ့သို့ အတန်းဖော်တိုင်းကို ဖြေဆိုခိုင်းသော ရှင်းလင်းသည့် မေးခွန်းတစ်ခုတည်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w12-dm-2",
          termEn: "Tally",
          termMy: "Tally (မှတ်တမ်းအမှတ်ခြစ်)",
          matchEn:
              "A small mark made each time someone gives a particular answer, used to count results",
          matchMy:
              "ရလဒ်များကို ရေတွက်ရန် တစ်စုံတစ်ယောက်က အဖြေတစ်ခု ပေးတိုင်း ပြုလုပ်သော အမှတ်အသေးလေး",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w12-dm-3",
          termEn: "Data Range",
          termMy: "Data Range (ဒေတာအပိုင်းအခြား)",
          matchEn:
              "The group of cells, such as B2 to B6, that a formula looks inside to do its calculation",
          matchMy:
              "ဖော်မြူလာတစ်ခုက တွက်ချက်ရန် ကြည့်ရှုသော B2 မှ B6 အထိကဲ့သို့ ဆဲလ်အုပ်စု",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w12-dm-4",
          termEn: "Total",
          termMy: "Total (ကိန်းစုစုပေါင်း)",
          matchEn:
              "The single number produced by adding every value in a range together, often using SUM",
          matchMy:
              "အပိုင်းအခြားတစ်ခုရှိ တန်ဖိုးအားလုံးကို SUM ကို အသုံးပြု၍ ပေါင်းလိုက်သောအခါ ရရှိသော ဂဏန်းတစ်ခုတည်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w12-dm-5",
          termEn: "Average",
          termMy: "Average (ပျမ်းမျှ)",
          matchEn:
              "The mean value of a range of numbers, found using the AVERAGE function",
          matchMy:
              "AVERAGE function ကို သုံး၍ ရှာတွေ့သော ဂဏန်းအပိုင်းအခြားတစ်ခု၏ ပျမ်းမျှတန်ဖိုး",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w12-dm-6",
          termEn: "Chart Legend",
          termMy: "Chart Legend (ဂရပ်အညွှန်း)",
          matchEn:
              "The key beside a chart that explains which colour or slice stands for which category",
          matchMy:
              "မည်သည့်အရောင် သို့မဟုတ် အပိုင်းအစသည် မည်သည့်အမျိုးအစားကို ကိုယ်စားပြုသည်ကို ရှင်းပြသော ဂရပ်ဘေးရှိ အညွှန်း",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w12-d3",
      dayNumber: 3,
      titleEn: "Sort: Planning Step or Building Step?",
      titleMy: "စီစစ်ကြမည် - စီစဉ်မှုအဆင့်လား၊ တည်ဆောက်မှုအဆင့်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Something Nay Chi Did While Planning",
          "Something Nay Chi Did While Building",
        ],
        bucketsMy: [
          "နှင်းချည် စီစဉ်စဉ် လုပ်ဆောင်ခဲ့သည့်အရာ",
          "နှင်းချည် တည်ဆောက်စဉ် လုပ်ဆောင်ခဲ့သည့်အရာ",
        ],
        items: [
          SortingItem(
            id: "y6comp-w12-sort-1",
            labelEn: "Wrote down her exact survey question",
            labelMy: "သူမ၏ တိကျသော စစ်တမ်းမေးခွန်းကို ရေးမှတ်ခဲ့ခြင်း",
            correctBucketEn: "Something Nay Chi Did While Planning",
            correctBucketMy: "နှင်းချည် စီစဉ်စဉ် လုပ်ဆောင်ခဲ့သည့်အရာ",
          ),
          SortingItem(
            id: "y6comp-w12-sort-2",
            labelEn: "Decided which chart type would fit her data",
            labelMy:
                "သူမ၏ဒေတာနှင့် ကိုက်ညီမည့် ဂရပ်အမျိုးအစားကို ဆုံးဖြတ်ခဲ့ခြင်း",
            correctBucketEn: "Something Nay Chi Did While Planning",
            correctBucketMy: "နှင်းချည် စီစဉ်စဉ် လုပ်ဆောင်ခဲ့သည့်အရာ",
          ),
          SortingItem(
            id: "y6comp-w12-sort-3",
            labelEn: "Sketched which columns her spreadsheet would need",
            labelMy:
                "သူမ၏ ဇယားချက်ပြတွင် လိုအပ်မည့် ကော်လံများကို ကြိုတင်ရေးဆွဲခဲ့ခြင်း",
            correctBucketEn: "Something Nay Chi Did While Planning",
            correctBucketMy: "နှင်းချည် စီစဉ်စဉ် လုပ်ဆောင်ခဲ့သည့်အရာ",
          ),
          SortingItem(
            id: "y6comp-w12-sort-4",
            labelEn: "Typed her SUM formula into a cell",
            labelMy: "ဆဲလ်တစ်ခုထဲသို့ SUM ဖော်မြူလာကို ရိုက်ထည့်ခဲ့ခြင်း",
            correctBucketEn: "Something Nay Chi Did While Building",
            correctBucketMy: "နှင်းချည် တည်ဆောက်စဉ် လုပ်ဆောင်ခဲ့သည့်အရာ",
          ),
          SortingItem(
            id: "y6comp-w12-sort-5",
            labelEn: "Fixed a mistake in her formula's cell range",
            labelMy: "ဖော်မြူလာ၏ ဆဲလ်အပိုင်းအခြားရှိ အမှားကို ပြင်ဆင်ခဲ့ခြင်း",
            correctBucketEn: "Something Nay Chi Did While Building",
            correctBucketMy: "နှင်းချည် တည်ဆောက်စဉ် လုပ်ဆောင်ခဲ့သည့်အရာ",
          ),
          SortingItem(
            id: "y6comp-w12-sort-6",
            labelEn: "Made her header row bold",
            labelMy: "ခေါင်းစဉ်အတန်းကို စာလုံးထူ ပြုလုပ်ခဲ့ခြင်း",
            correctBucketEn: "Something Nay Chi Did While Building",
            correctBucketMy: "နှင်းချည် တည်ဆောက်စဉ် လုပ်ဆောင်ခဲ့သည့်အရာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w12-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Class Hobbies Survey",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ အတန်းဝါသနာစစ်တမ်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Class Hobbies Survey",
        titleMy: "နှင်းချည်၏ အတန်းဝါသနာစစ်တမ်း",
        passageEn:
            "Looking back at her Term 2 capstone, \"All About Me and My Hobbies,\" Nay Chi realised her web page only showed her own hobbies. She wondered: what hobby did the whole class love the most? For her Term 3 capstone, she decided to find out with a real survey. Remembering that planning always comes first, she wrote her exact survey question -- \"What is your favourite hobby?\" -- and sketched her spreadsheet columns before asking a single classmate: Hobby, Tally, and Total.\n\nOne by one, Nay Chi asked each classmate and made a tally mark next to their answer. Afterwards, she typed each hobby name and its tally total into her spreadsheet, then wrote =SUM(B2:B5) to check the total number of classmates she had surveyed. But the number that appeared did not match how many people she remembered asking -- it was one short. Just as she had once traced a forgotten colon and a missing quotation mark, Nay Chi read her formula range carefully and realised her data actually ran all the way down to row 6, not row 5 -- her last hobby, coding, had been left out of the range entirely.\n\nShe fixed her formula to =SUM(B2:B6), and this time the total matched perfectly. Nay Chi then built a pie chart titled \"Our Class's Favourite Hobbies,\" since it showed how the whole class's answers were shared between different hobbies, not separate daily amounts. The finished chart revealed that coding and drawing were joint favourites across the class. Presenting her results, Nay Chi smiled -- whether it was a forgotten colon, a missing quotation mark, or a missing row in a formula's range, getting every small detail exactly right was always what turned her plan into a real, working answer.",
        passageMy:
            "Term 2 capstone စီမံကိန်းဖြစ်သော \"ကျွန်မနှင့် ကျွန်မ၏ ဝါသနာများအကြောင်း\" ကို ပြန်ကြည့်ရာ သူမ၏ ဝက်ဘ်စာမျက်နှာသည် သူမကိုယ်တိုင်၏ ဝါသနာများကိုသာ ပြသနေခြင်းကို နှင်းချည် သဘောပေါက်ခဲ့သည်။ အတန်းတစ်ခုလုံးက ဘယ်ဝါသနာကို အနှစ်ဆုံးနှစ်သက်ကြသလဲဟု သူမ တွေးမိခဲ့သည်။ Term 3 capstone အတွက် သူမသည် တကယ့်စစ်တမ်းတစ်ခုဖြင့် ရှာဖွေဖော်ထုတ်ရန် ဆုံးဖြတ်ခဲ့သည်။ စီစဉ်ခြင်းသည် အမြဲအရင်ဆုံးလာသည်ကို သတိရနေကာ သူမသည် \"သင့်အနှစ်ဆုံးဝါသနာက ဘာလဲ\" ဟူသော စစ်တမ်းမေးခွန်းကို အတိအကျ ရေးမှတ်ပြီး၊ အတန်းဖော်တစ်ဦးကိုမျှ မမေးမီ Hobby, Tally, Total ဟူသော ဇယားချက်ပြကော်လံများကို ကြိုတင်ရေးဆွဲခဲ့သည်။\n\nတစ်ဦးချင်းစီ နှင်းချည်သည် အတန်းဖော်တိုင်းကို မေးမြန်းပြီး ၎င်းတို့၏အဖြေဘေးတွင် tally အမှတ်တစ်ခုစီ ခြစ်ခဲ့သည်။ ထို့နောက် ဝါသနာအမည်တစ်ခုစီနှင့် ၎င်း၏ tally စုစုပေါင်းကို ဇယားချက်ပြထဲသို့ ရိုက်ထည့်ပြီး သူမမေးမြန်းခဲ့သော အတန်းဖော်စုစုပေါင်းအရေအတွက်ကို စစ်ဆေးရန် =SUM(B2:B5) ဟု ရေးထည့်ခဲ့သည်။ သို့သော် ပေါ်လာသော ဂဏန်းသည် သူမမှတ်မိသလောက် မေးမြန်းခဲ့သည့် လူဦးရေနှင့် မကိုက်ညီခဲ့ပါ -- တစ်ယောက်ငယ်နေခဲ့သည်။ တစ်ခါက မေ့ကျန်ခဲ့သော colon နှင့် ပျောက်ဆုံးနေသော ပိတ်ကိုးမျိုးကို ရှာဖွေခဲ့ဘူးသည့်နည်းတူ နှင်းချည်သည် သူမ၏ ဖော်မြူလာအပိုင်းအခြားကို ဂရုတစိုက် ပြန်ဖတ်ကာ သူမ၏ဒေတာသည် တကယ်တမ်း အတန်း 5 မဟုတ်ဘဲ အတန်း 6 အထိ ဆက်နေသည်ကို တွေ့ခဲ့သည် -- သူမ၏ နောက်ဆုံးဝါသနာဖြစ်သော coding သည် အပိုင်းအခြားထဲမှ လုံးဝ ကျန်ခဲ့ခြင်းဖြစ်သည်။\n\nသူမသည် ဖော်မြူလာကို =SUM(B2:B6) ဟု ပြင်ဆင်ခဲ့ရာ ဤအကြိမ်တွင် စုစုပေါင်းသည် အပြည့်အဝ ကိုက်ညီသွားခဲ့သည်။ ထို့နောက် နှင်းချည်သည် \"Our Class's Favourite Hobbies\" ဟူသော ခေါင်းစဉ်ပါ ဝိုင်းပုံဂရပ်တစ်ခု တည်ဆောက်ခဲ့သည်၊ အကြောင်းမှာ ၎င်းသည် သီးခြားနေ့စဉ်ပမာဏများမဟုတ်ဘဲ အတန်းတစ်ခုလုံး၏ အဖြေများကို ဝါသနာအမျိုးမျိုးကြား မည်သို့ ဝေမျှထားသည်ကို ပြသနေသောကြောင့်ဖြစ်သည်။ ပြီးစီးသောဂရပ်က coding နှင့် ပန်းချီရေးဆွဲခြင်းတို့သည် အတန်းတစ်ခုလုံးတွင် အနှစ်ဆုံးဝါသနာများ တန်းတူ ဖြစ်နေကြောင်း ဖော်ပြခဲ့သည်။ ရလဒ်များကို တင်ပြရင်း နှင်းချည် ပြုံးခဲ့သည် -- မေ့ကျန်ခဲ့သော colon ဖြစ်စေ၊ ပျောက်ဆုံးနေသော ပိတ်ကိုးမျိုးဖြစ်စေ၊ ဖော်မြူလာအပိုင်းအခြားရှိ ပျောက်ဆုံးနေသော အတန်းတစ်တန်းဖြစ်စေ အသေးစိတ်အချက်တိုင်းကို အတိအကျလုပ်ခြင်းသည်သာ သူမ၏အစီအစဉ်ကို တကယ်အလုပ်လုပ်သော အဖြေတစ်ခုအဖြစ် အမြဲပြောင်းလဲပေးခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What earlier project made Nay Chi curious about the whole class's favourite hobbies?",
            questionMy:
                "ယခင်စီမံကိန်းမည်သည် အတန်းတစ်ခုလုံး၏ အနှစ်ဆုံးဝါသနာများကို နှင်းချည် စိတ်ဝင်စားစေခဲ့သနည်း။",
            optionsEn: [
              "Her Term 2 \"All About Me and My Hobbies\" web page",
              "Her Term 1 Birthday Countdown program",
              "A chart she saw in a magazine",
              "A database she had not yet studied",
            ],
            optionsMy: [
              "သူမ၏ Term 2 \"ကျွန်မနှင့် ကျွန်မ၏ ဝါသနာများအကြောင်း\" ဝက်ဘ်စာမျက်နှာ",
              "သူမ၏ Term 1 မွေးနေ့ရေတွက်ချိန် ပရိုဂရမ်",
              "မဂ္ဂဇင်းတွင် တွေ့ခဲ့သော ဂရပ်တစ်ခု",
              "မသင်ရသေးသော ဒေတာဘေ့စ်တစ်ခု",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What survey question did Nay Chi decide to ask?",
            questionMy:
                "နှင်းချည်သည် မည်သည့် စစ်တမ်းမေးခွန်းကို မေးရန် ဆုံးဖြတ်ခဲ့သနည်း။",
            optionsEn: [
              "\"What is your favourite hobby?\"",
              "\"What is your favourite colour?\"",
              "\"Where do you live?\"",
              "\"What is your favourite subject?\"",
            ],
            optionsMy: [
              "\"သင့်အနှစ်ဆုံးဝါသနာက ဘာလဲ။\"",
              "\"သင့်အနှစ်ဆုံးအရောင်က ဘာလဲ။\"",
              "\"သင် ဘယ်မှာနေသလဲ။\"",
              "\"သင့်အနှစ်ဆုံးဘာသာရပ်က ဘာလဲ။\"",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What was wrong with Nay Chi's first SUM formula?",
            questionMy:
                "နှင်းချည်၏ ပထမဆုံး SUM ဖော်မြူလာတွင် ဘာအမှား ရှိနေခဲ့သနည်း။",
            optionsEn: [
              "Its cell range missed the last row of data",
              "It used AVERAGE instead of SUM",
              "It had no equals sign at all",
              "It referenced the wrong worksheet entirely",
            ],
            optionsMy: [
              "၎င်း၏ ဆဲလ်အပိုင်းအခြားသည် ဒေတာ၏ နောက်ဆုံးအတန်းကို လွတ်ကျန်ခဲ့ခြင်း",
              "SUM အစား AVERAGE ကို သုံးမိခြင်း",
              "ညီမျှခြင်းသင်္ကေတ လုံးဝမပါခြင်း",
              "လုံးဝမှားယွင်းသော worksheet ကို ကိုးကားခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which chart type did Nay Chi use for her final results, and why?",
            questionMy:
                "နှင်းချည်သည် သူမ၏ နောက်ဆုံးရလဒ်များအတွက် မည်သည့်ဂရပ်အမျိုးအစားကို အသုံးပြုခဲ့ပြီး အဘယ့်ကြောင့်နည်း။",
            optionsEn: [
              "A pie chart, because the data showed how the whole class was shared between hobbies",
              "A bar chart, because the data showed daily spending",
              "No chart, because the survey failed",
              "A worksheet tab, because it stores the raw tallies",
            ],
            optionsMy: [
              "ဝိုင်းပုံဂရပ်၊ အကြောင်းမှာ ဒေတာသည် အတန်းတစ်ခုလုံးကို ဝါသနာများကြား မည်သို့ ဝေမျှထားသည်ကို ပြသနေသောကြောင့်ဖြစ်သည်",
              "ဘားဂရပ်၊ အကြောင်းမှာ ဒေတာသည် နေ့စဉ်ကုန်ကျစရိတ်ကို ပြသနေသောကြောင့်ဖြစ်သည်",
              "ဂရပ်လုံးဝမသုံးပါ၊ အကြောင်းမှာ စစ်တမ်းမအောင်မြင်ခဲ့သောကြောင့်ဖြစ်သည်",
              "Worksheet တဘ်၊ အကြောင်းမှာ ၎င်းက အရင်း tally များကို သိမ်းဆည်းသောကြောင့်ဖြစ်သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did the survey reveal about coding and drawing, and what overall lesson does the passage draw across Nay Chi's three terms?",
            questionMy:
                "စစ်တမ်းက coding နှင့် ပန်းချီရေးဆွဲခြင်းတို့နှင့်ပတ်သက်၍ ဘာကို ဖော်ပြခဲ့ပြီး နှင်းချည်၏ Term သုံးခုကို ဤစာပိုဒ်က မည်သည့် အလုံးစုံသင်ခန်းစာဖြင့် ဆက်စပ်ခဲ့သနည်း။",
            optionsEn: [
              "They were joint favourites, and getting every small detail exactly right always turns a plan into a working result",
              "Nobody chose either of them, and details never matter",
              "Only coding was chosen, and planning is unnecessary",
              "Only drawing was chosen, and formulas are never useful",
            ],
            optionsMy: [
              "၎င်းတို့သည် တန်းတူ အနှစ်ဆုံးဝါသနာများ ဖြစ်ခဲ့ပြီး အသေးစိတ်အချက်တိုင်းကို အတိအကျလုပ်ခြင်းသည် အစီအစဉ်တစ်ခုကို အမြဲ အလုပ်လုပ်သော ရလဒ်တစ်ခုအဖြစ် ပြောင်းလဲပေးကြောင်း",
              "မည်သူမျှ မရွေးချယ်ခဲ့ပြီး အသေးစိတ်အချက်များ လုံးဝအရေးမကြီးကြောင်း",
              "Coding တစ်ခုတည်းသာ ရွေးချယ်ခံရပြီး စီစဉ်ခြင်း မလိုအပ်ကြောင်း",
              "ပန်းချီရေးဆွဲခြင်းတစ်ခုတည်းသာ ရွေးချယ်ခံရပြီး ဖော်မြူလာများ လုံးဝအသုံးမဝင်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w12-d5",
      dayNumber: 5,
      titleEn: "Term 3 Round-Up: Spreadsheets and Data Handling",
      titleMy:
          "Term 3 အနှစ်ချုပ် - ဇယားချက်ပြများနှင့် အချက်အလက် စီမံခန့်ခွဲမှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a spreadsheet used for?",
          questionMy: "ဇယားချက်ပြကို ဘာအတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Organising, calculating and analysing data in rows and columns",
            "Writing hyperlinks between web pages",
            "Storing binary code only",
            "Drawing flowcharts",
          ],
          optionsMy: [
            "အတန်းနှင့်ကော်လံများဖြင့် ဒေတာများကို စီစဉ်၊ တွက်ချက်နှင့် ဆန်းစစ်ရန်",
            "ဝက်ဘ်စာမျက်နှာများကြား hyperlink များ ရေးရန်",
            "Binary ကုဒ်ကိုသာ သိမ်းရန်",
            "Flowchart များ ရေးဆွဲရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which symbol must every spreadsheet formula start with?",
          questionMy:
              "ဇယားချက်ပြ ဖော်မြူလာတိုင်း မည်သည့်သင်္ကေတဖြင့် အစပြုရမည်နည်း။",
          optionsEn: [
            "An equals sign (=)",
            "A hashtag (#)",
            "A colon (:)",
            "An at sign (@)",
          ],
          optionsMy: [
            "ညီမျှခြင်းသင်္ကေတ (=)",
            "ဟက်ရှ်တက် (#)",
            "ကော်လံ (:)",
            "အက်ပ်ကိုးကား (@)",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which function adds up a range of numbers?",
          questionMy:
              "ဂဏန်းအပိုင်းအခြားတစ်ခုကို ပေါင်းပေးသော function မှာ အဘယ်နည်း။",
          optionsEn: ["SUM", "MAX", "MIN", "AVERAGE"],
          optionsMy: ["SUM", "MAX", "MIN", "AVERAGE"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which chart type best shows how a whole is shared between categories, like hobby choices across a class?",
          questionMy:
              "အတန်းတစ်ခုလုံး၏ ဝါသနာရွေးချယ်မှုများကဲ့သို့ တစ်ခုလုံးကို အမျိုးအစားများကြား မည်သို့ ဝေမျှထားသည်ကို ပြသရန် မည်သည့်ဂရပ်အမျိုးအစားက အသင့်လျော်ဆုံးနည်း။",
          optionsEn: [
            "A pie chart",
            "A bar chart comparing months' rainfall",
            "A cell reference",
            "A worksheet tab",
          ],
          optionsMy: [
            "ဝိုင်းပုံဂရပ်",
            "လအလိုက်မိုးရေချိန်ကို နှိုင်းယှဉ်သော ဘားဂရပ်",
            "ဆဲလ်ကိုးကား",
            "Worksheet တဘ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In her capstone survey, what mistake did Nay Chi find and fix in her SUM formula?",
          questionMy:
              "သူမ၏ capstone စစ်တမ်းတွင် နှင်းချည်သည် သူမ၏ SUM ဖော်မြူလာတွင် မည်သည့်အမှားကို ရှာတွေ့ပြင်ဆင်ခဲ့သနည်း။",
          optionsEn: [
            "Her cell range was missing the last row of data",
            "She used AVERAGE instead of SUM",
            "She forgot to collect any tally marks",
            "She used the wrong chart legend colour",
          ],
          optionsMy: [
            "သူမ၏ ဆဲလ်အပိုင်းအခြားတွင် ဒေတာ၏ နောက်ဆုံးအတန်း ပျောက်ဆုံးနေခဲ့ခြင်း",
            "SUM အစား AVERAGE ကို သုံးမိခဲ့ခြင်း",
            "Tally အမှတ်များ စုဆောင်းရန် မေ့ကျန်ခဲ့ခြင်း",
            "မှားယွင်းသော ဂရပ်အညွှန်းအရောင်ကို သုံးမိခဲ့ခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _year6ComputingTerm3 = CourseTermDef(
  id: "course-year6-computing-t3",
  termNumber: 3,
  titleEn: "Spreadsheets and Data Handling",
  titleMy: "ဇယားချက်ပြများနှင့် အချက်အလက် စီမံခန့်ခွဲမှု",
  certificateTitleEn: "Spreadsheet Data Explorer",
  certificateTitleMy: "ဇယားချက်ပြ အချက်အလက် စူးစမ်းသူ",
  weeks: [
    _year6ComputingWeek9,
    _year6ComputingWeek10,
    _year6ComputingWeek11,
    _year6ComputingWeek12,
  ],
);
