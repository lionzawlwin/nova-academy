// File: ai_data_bridge/_generated/year6_computing_term1.dart
// Year 6 Computing -- Term 1: "Text-Based Coding Basics" (Weeks 1-4).
// Staging artifact only -- not yet wired into course_pathway_bank.dart's
// Grade.year6 pathway. Follows on from the already-shipped Year 5
// Computing pathway (online safety, algorithms/flowcharts, loops,
// conditions, variables, binary/pixels, internet/networks, hardware) by
// moving pupils from block/flowchart thinking into real typed code:
// sequence and syntax, simple functions, and debugging. Protagonist Nay
// Chi, a Nova School student, recurs across quiz flavour text and every
// Day 4 reading passage this term.
//
// Week 1 (From Blocks to Code: Sequence): the jump from drag-and-drop
// blocks to typed commands, syntax, and why instruction order matters.
// Week 2 (Building with Simple Functions): defining vs. calling a
// function, and why reusable code avoids repetition. Week 3 (Debugging:
// Hunting the Bugs): syntax errors vs. logic errors, reading error
// messages, and tracing code to find mistakes. Week 4 (Capstone -- Nay
// Chi's Mini Coding Challenge, boss week): planning, writing, testing and
// debugging a small original program that combines sequence, a function,
// and bug-fixing, with the recap day reviewing the whole term.

const CourseWeekDef _year6ComputingWeek1 = CourseWeekDef(
  id: "course-year6-computing-w1",
  weekNumber: 1,
  titleEn: "From Blocks to Code: Sequence",
  titleMy: "ဘလောက်များမှ ကုဒ်သို့: အစီအစဉ်လိုက်",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w1-d1",
      dayNumber: 1,
      titleEn: "Typing Real Code",
      titleMy: "အစစ်အမှန် ကုဒ်ရိုက်ထည့်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In a text-based programming language, in what order does the computer follow the instructions in your code?",
          questionMy:
              "စာသားအခြေပြု ပရိုဂရမ်းမင်းဘာသာစကားတွင် ကွန်ပျူတာသည် သင့်ကုဒ်ရှိ ညွှန်ကြားချက်များကို မည်သည့်အစီအစဉ်ဖြင့် လိုက်နာဆောင်ရွက်သနည်း။",
          optionsEn: [
            "From top to bottom, one line after another",
            "From bottom to top",
            "Whichever line is the shortest first",
            "In a different random order every time",
          ],
          optionsMy: [
            "အပေါ်ဆုံးလိုင်းမှ အောက်ဆုံးလိုင်းသို့ တစ်ကြောင်းပြီးတစ်ကြောင်း",
            "အောက်ဆုံးမှ အပေါ်ဆုံးသို့",
            "အတိုဆုံးလိုင်းကို အရင်ဆုံး",
            "အကြိမ်တိုင်း ကျပန်းအစီအစဉ်ဖြင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi is switching from Scratch's drag-and-drop blocks to a text-based coding app for the first time. What is the biggest difference she notices?",
          questionMy:
              "နှင်းချည်သည် Scratch ၏ ဆွဲယူတွယ်ကပ်ဘလောက်များမှ စာသားအခြေပြု ကုဒ်ရေးအက်ပ်သို့ ပထမဆုံးအကြိမ် ပြောင်းရွှေ့ သုံးစွဲနေသည်။ သူမတွေ့ရသော အကြီးမားဆုံးကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The blocks now snap together by themselves",
            "She now has to type every command exactly, with correct spelling and punctuation",
            "The computer stops following her instructions in order",
            "She can no longer write any numbers",
          ],
          optionsMy: [
            "ဘလောက်များ သူ့အလိုလို ကပ်ညှပ်သွားခြင်း",
            "ညွှန်ကြားချက်တိုင်းကို စာလုံးပေါင်းနှင့် ပုဒ်ဖြတ်ပုဒ်ရပ် မှန်ကန်စွာ တိတိကျကျ ရိုက်ထည့်ရခြင်း",
            "ကွန်ပျူတာသည် သူမ၏ညွှန်ကြားချက်များကို အစီအစဉ်အတိုင်း လိုက်နာတော့မည်မဟုတ်ခြင်း",
            "ဂဏန်းများကို လုံးဝ ရေးထည့်၍ရတော့မည်မဟုတ်ခြင်း",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "What is the word for the exact spelling, punctuation and grammar rules a text-based coding language expects you to follow?",
          questionMy:
              "စာသားအခြေပြု ကုဒ်ဘာသာစကားတစ်ခုက လိုက်နာစေလိုသော အတိအကျ စာလုံးပေါင်း၊ ပုဒ်ဖြတ်ပုဒ်ရပ်နှင့် သဒ္ဒါစည်းမျဉ်းများကို ခေါ်ဆိုသည့် စကားလုံးမှာ အဘယ်နည်း။",
          optionsEn: ["Sequence", "Sensor", "Syntax", "Signal"],
          optionsMy: [
            "အစီအစဉ်လိုက် (Sequence)",
            "အာရုံခံကိရိယာ (Sensor)",
            "ရေးထုံးစည်းမျဉ်း (Syntax)",
            "အချက်ပြမှု (Signal)",
          ],
          correctIndex: 2,
        ),
        QuizQuestion(
          questionEn:
              "Which line below is an example of a single coded instruction, called a statement or command?",
          questionMy:
              "အောက်ပါတို့တွင် command ဟုခေါ်သော တစ်ကြောင်းတည်းသော ကုဒ်ညွှန်ကြားချက်၏ ဥပမာမှာ အဘယ်နည်း။",
          optionsEn: [
            "A drawing of a smiling cat",
            "A folder named My Projects",
            "A blank sheet of paper",
            "print(\"Hello, Nova School!\")",
          ],
          optionsMy: [
            "ပြုံးနေသော ကြောင်ပုံတစ်ပုံ",
            "My Projects ဟု အမည်ပေးထားသော ဖိုင်တွဲ",
            "ဗလာစာရွက်တစ်ရွက်",
            "print(\"Hello, Nova School!\")",
          ],
          correctIndex: 3,
        ),
        QuizQuestion(
          questionEn:
              "Why does the order of steps -- the sequence -- matter so much when writing code?",
          questionMy:
              "ကုဒ်ရေးသားရာတွင် အဆင့်များ၏ အစီအစဉ် (sequence) သည် အဘယ့်ကြောင့် ဤမျှအရေးကြီးသနည်း။",
          optionsEn: [
            "Running the steps in the wrong order can make the program do the wrong thing or fail completely",
            "Sequence only matters for block-based coding, not text-based coding",
            "The order of steps changes the colour of the text",
            "Computers automatically fix any steps written in the wrong order",
          ],
          optionsMy: [
            "အဆင့်များကို မှားယွင်းသောအစီအစဉ်ဖြင့် ဆောင်ရွက်ပါက ပရိုဂရမ်သည် မှားယွင်းသောအလုပ်ကို လုပ်တတ်ပြီး လုံးဝ အလုပ်မလုပ်နိုင်တောင် ဖြစ်နိုင်သည်",
            "Sequence သည် ဘလောက်အခြေပြု ကုဒ်ရေးတွင်သာ အရေးကြီးပြီး စာသားအခြေပြု ကုဒ်ရေးတွင် အရေးမကြီးပါ",
            "အဆင့်များ၏အစီအစဉ်သည် စာသား၏အရောင်ကို ပြောင်းလဲပေးသည်",
            "မှားယွင်းသောအစီအစဉ်ဖြင့် ရေးထားသော အဆင့်များကို ကွန်ပျူတာက အလိုအလျောက်ပြင်ပေးသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w1-d2",
      dayNumber: 2,
      titleEn: "Match the Coding Vocabulary",
      titleMy: "ကုဒ်ရေးဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w1-dm-1",
          termEn: "Sequence",
          termMy: "အစီအစဉ်လိုက် (Sequence)",
          matchEn:
              "Carrying out program steps in the exact order they are written",
          matchMy:
              "ပရိုဂရမ်အဆင့်များကို ရေးထားသည့်အတိုင်း အတိအကျ အစီအစဉ်လိုက် ဆောင်ရွက်ခြင်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w1-dm-2",
          termEn: "Syntax",
          termMy: "ရေးထုံးစည်းမျဉ်း (Syntax)",
          matchEn:
              "The exact spelling and punctuation rules a coding language expects",
          matchMy:
              "ကုဒ်ဘာသာစကားတစ်ခုက လိုအပ်သော အတိအကျ စာလုံးပေါင်းနှင့် ပုဒ်ဖြတ်ပုဒ်ရပ် စည်းမျဉ်းများ",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w1-dm-3",
          termEn: "Command",
          termMy: "ညွှန်ကြားချက် (Command)",
          matchEn:
              "A single instruction that tells the computer to do one thing",
          matchMy:
              "ကွန်ပျူတာအား တစ်ခုတည်းသော အလုပ်ကို လုပ်ဆောင်ရန် ညွှန်ကြားပေးသည့် ညွှန်ကြားချက်တစ်ခု",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w1-dm-4",
          termEn: "Text-based programming language",
          termMy: "စာသားအခြေပြု ပရိုဂရမ်းမင်းဘာသာစကား",
          matchEn:
              "A coding language where you write commands using typed words and symbols",
          matchMy:
              "ရိုက်ထည့်ထားသော စာလုံးနှင့် သင်္ကေတများကို အသုံးပြု၍ ညွှန်ကြားချက်များ ရေးသားရသည့် ကုဒ်ဘာသာစကား",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w1-dm-5",
          termEn: "print()",
          termMy: "print() လုပ်ဆောင်ချက်",
          matchEn: "A command that displays text or numbers on the screen",
          matchMy:
              "စာသား သို့မဟုတ် ဂဏန်းများကို မျက်နှာပြင်ပေါ်တွင် ပြသပေးသည့် command",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w1-dm-6",
          termEn: "Comment",
          termMy: "မှတ်ချက် (Comment)",
          matchEn:
              "A note written inside code to explain it, ignored by the computer but helpful to other programmers",
          matchMy:
              "ကုဒ်ကို ရှင်းပြရန် ကုဒ်အတွင်းရေးထားသော မှတ်ချက်၊ ကွန်ပျူတာက လျစ်လျူရှုသော်လည်း အခြားပရိုဂရမ်မာများ နားလည်ရန် အထောက်အကူပြုသည်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w1-d3",
      dayNumber: 3,
      titleEn: "Sort: Block-Based or Text-Based?",
      titleMy: "စီစစ်ကြမည် - ဘလောက်အခြေပြုလား၊ စာသားအခြေပြုလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Block-Based Coding", "Text-Based Coding"],
        bucketsMy: ["ဘလောက်အခြေပြု ကုဒ်ရေးနည်း", "စာသားအခြေပြု ကုဒ်ရေးနည်း"],
        items: [
          SortingItem(
            id: "y6comp-w1-sort-1",
            labelEn:
                "Dragging and snapping colourful puzzle-shaped pieces together",
            labelMy:
                "ရောင်စုံ ပဟေဠိပုံသဏ္ဌာန် အပိုင်းများကို ဆွဲယူ ကပ်ညှပ်ခြင်း",
            correctBucketEn: "Block-Based Coding",
            correctBucketMy: "ဘလောက်အခြေပြု ကုဒ်ရေးနည်း",
          ),
          SortingItem(
            id: "y6comp-w1-sort-2",
            labelEn: "Typing an exact command such as print(\"Hi\")",
            labelMy:
                "print(\"Hi\") ကဲ့သို့သော command ကို အတိအကျ ရိုက်ထည့်ခြင်း",
            correctBucketEn: "Text-Based Coding",
            correctBucketMy: "စာသားအခြေပြု ကုဒ်ရေးနည်း",
          ),
          SortingItem(
            id: "y6comp-w1-sort-3",
            labelEn: "No typing needed at all -- great for absolute beginners",
            labelMy:
                "လုံးဝ ရိုက်ထည့်စရာမလိုပါ -- စလုပ်သူအသစ်များအတွက် အထူးသင့်တော်",
            correctBucketEn: "Block-Based Coding",
            correctBucketMy: "ဘလောက်အခြေပြု ကုဒ်ရေးနည်း",
          ),
          SortingItem(
            id: "y6comp-w1-sort-4",
            labelEn:
                "A single missing bracket or quotation mark can cause an error",
            labelMy:
                "ကွင်းသေး သို့မဟုတ် ကိုးကားပုဒ်တစ်ခု ပျောက်နေလျှင် အမှားဖြစ်စေနိုင်သည်",
            correctBucketEn: "Text-Based Coding",
            correctBucketMy: "စာသားအခြေပြု ကုဒ်ရေးနည်း",
          ),
          SortingItem(
            id: "y6comp-w1-sort-5",
            labelEn:
                "Colour-coded pieces that only fit together in ways that make sense",
            labelMy:
                "အဓိပ္ပာယ်ရှိသောနည်းလမ်းဖြင့်သာ ကိုက်ညီအောင် ချိတ်ဆက်နိုင်သော အရောင်ခွဲထားသည့် အပိုင်းများ",
            correctBucketEn: "Block-Based Coding",
            correctBucketMy: "ဘလောက်အခြေပြု ကုဒ်ရေးနည်း",
          ),
          SortingItem(
            id: "y6comp-w1-sort-6",
            labelEn:
                "Used by professional software developers to build real-world apps",
            labelMy:
                "လက်တွေ့ App များကို တည်ဆောက်ရန် ပရော်ဖက်ရှင်နယ် software developer များက အသုံးပြုသည်",
            correctBucketEn: "Text-Based Coding",
            correctBucketMy: "စာသားအခြေပြု ကုဒ်ရေးနည်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w1-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's First Line of Real Code",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ ပထမဆုံး အစစ်အမှန်ကုဒ်တစ်ကြောင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's First Line of Real Code",
        titleMy: "နှင်းချည်၏ ပထမဆုံး အစစ်အမှန်ကုဒ်တစ်ကြောင်း",
        passageEn:
            "Nay Chi has used Scratch's colourful blocks since Year 4, snapping them together like puzzle pieces. This week, her teacher Ms. Thanda opens a new text-based coding app and explains that Year 6 pupils will start typing real code -- the same kind used by app makers all over the world.\n\nAt first Nay Chi feels nervous. She types print(\"Hello, Nova School!\") but forgets the closing bracket, and the app shows a red error message. Ms. Thanda smiles and explains that every programmer sees error messages -- they are simply the computer's way of saying \"something in your syntax isn't quite right yet.\" Nay Chi fixes the missing bracket and presses Run. The words appear on the screen exactly as she typed them.\n\nNext, Nay Chi writes three commands in a row: one that prints her name, one that prints her class, and one that prints her favourite subject. She notices that the computer runs them in exact order, top to bottom -- and when she swaps two of the lines just to test it, the order of the words on the screen swaps too. \"So sequence really does matter,\" she says to herself, already planning her next lines of code.",
        passageMy:
            "နှင်းချည်သည် Year 4 မှစတင်၍ Scratch ၏ ရောင်စုံဘလောက်များကို ပဟေဠိအပိုင်းများကဲ့သို့ ကပ်ညှပ်၍ အသုံးပြုခဲ့သည်။ ဒီအပတ်တွင် သူမ၏ဆရာမ ဒေါ်သန္တာသည် စာသားအခြေပြု ကုဒ်ရေးအက်ပ်အသစ်တစ်ခုကို ဖွင့်ပြီး Year 6 ကျောင်းသားများသည် ကမ္ဘာတစ်ဝှမ်းရှိ App ဖန်တီးသူများ အသုံးပြုသည့် အစစ်အမှန်ကုဒ်ကို ရိုက်ထည့်တော့မည်ဖြစ်ကြောင်း ရှင်းပြသည်။\n\nစတင်ချိန်တွင် နှင်းချည် စိတ်လှုပ်ရှားနေသည်။ သူမသည် print(\"Hello, Nova School!\") ဟု ရိုက်ထည့်ရာတွင် အပိတ်ကွင်းသေးကို မေ့ကျန်ခဲ့သဖြင့် အက်ပ်တွင် အနီရောင်အမှားစာတန်း ပေါ်လာသည်။ ဒေါ်သန္တာက ပြုံးလျက် ပရိုဂရမ်မာတိုင်းသည် အမှားစာတန်းများကို မြင်ရသည်ဟူ၍၊ ၎င်းတို့သည် \"သင့်ရေးထုံးထဲတွင် တစ်ခုခု မမှန်သေးဘူး\" ဟု ကွန်ပျူတာက ပြောနေခြင်းသာဖြစ်ကြောင်း ရှင်းပြသည်။ နှင်းချည်သည် ပျောက်နေသော ကွင်းသေးကို ပြင်ပြီး Run ကို နှိပ်လိုက်ရာ သူမရိုက်ထည့်ခဲ့သည့်အတိုင်း စာသားများသည် မျက်နှာပြင်ပေါ်တွင် ပေါ်လာသည်။\n\nထို့နောက် နှင်းချည်သည် command သုံးကြောင်းကို အစီအစဉ်လိုက်ရေးသည် -- တစ်ကြောင်းက သူမ၏အမည်ကို ပုံနှိပ်ပြီး၊ တစ်ကြောင်းက သူမ၏အတန်းကို ပုံနှိပ်ကာ၊ နောက်တစ်ကြောင်းက သူမအကြိုက်ဆုံးဘာသာရပ်ကို ပုံနှိပ်ပေးသည်။ ကွန်ပျူတာသည် ၎င်းတို့ကို အပေါ်ဆုံးမှ အောက်ဆုံးသို့ အတိအကျအစီအစဉ်ဖြင့် လုပ်ဆောင်ကြောင်း သူမသတိပြုမိသည် -- စမ်းသပ်ရန်အလို့ငှာ လိုင်းနှစ်ကြောင်းကို ဖလှယ်လိုက်သောအခါ မျက်နှာပြင်ပေါ်ရှိ စာလုံးများ၏ အစီအစဉ်ပါ ဖလှယ်သွားသည်။ \"ဒါဆို sequence ဟာ တကယ်ပဲ အရေးကြီးတယ်\" ဟု သူမ ကိုယ့်ကိုယ်ကို ပြောဆိုမိသည်၊ နောက်ထပ်ကုဒ်လိုင်းများကို စီစဉ်နေပြီဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What app had Nay Chi used since Year 4, before switching to text-based coding?",
            questionMy:
                "စာသားအခြေပြု ကုဒ်ရေးသို့ မပြောင်းလဲမီ နှင်းချည် Year 4 မှစ၍ အသုံးပြုခဲ့သော အက်ပ်မှာ အဘယ်နည်း။",
            optionsEn: [
              "A spreadsheet program",
              "Scratch",
              "A web browser",
              "An email app",
            ],
            optionsMy: [
              "ဇယားရေးအက်ပ်",
              "Scratch",
              "ဝဘ်ဘရောက်ဇာ",
              "အီးမေးလ်အက်ပ်",
            ],
            correctIndex: 1,
          ),
          QuizQuestion(
            questionEn:
                "What mistake did Nay Chi make when she first typed her print command?",
            questionMy:
                "print command ကို ပထမဆုံးအကြိမ် ရိုက်ထည့်ချိန်တွင် နှင်းချည်ပြုလုပ်မိသော အမှားမှာ အဘယ်နည်း။",
            optionsEn: [
              "She used the wrong colour",
              "She forgot to open the app",
              "She forgot the closing bracket",
              "She typed the command in Burmese",
            ],
            optionsMy: [
              "အရောင်မှားရွေးမိသည်",
              "အက်ပ်ကို ဖွင့်ဖို့ မေ့ကျန်ခဲ့သည်",
              "အပိတ်ကွင်းသေးကို မေ့ကျန်ခဲ့သည်",
              "command ကို မြန်မာဘာသာဖြင့် ရိုက်ထည့်ခဲ့သည်",
            ],
            correctIndex: 2,
          ),
          QuizQuestion(
            questionEn:
                "According to Ms. Thanda, what does an error message actually mean?",
            questionMy:
                "ဒေါ်သန္တာ၏ ရှင်းပြချက်အရ အမှားစာတန်းတစ်ခု၏ အဓိပ္ပာယ်မှာ အဘယ်နည်း။",
            optionsEn: [
              "The computer is broken",
              "The programmer should give up",
              "Something in the syntax is not quite right yet",
              "The app has stopped working forever",
            ],
            optionsMy: [
              "ကွန်ပျူတာ ပျက်နေခြင်းဖြစ်သည်",
              "ပရိုဂရမ်မာ လက်လျှော့သင့်သည်",
              "ရေးထုံးထဲတွင် တစ်ခုခု မမှန်သေးခြင်းဖြစ်သည်",
              "အက်ပ်သည် အပြီးတိုင် ရပ်တန့်သွားပြီဖြစ်သည်",
            ],
            correctIndex: 2,
          ),
          QuizQuestion(
            questionEn:
                "What three things did Nay Chi print with her three commands?",
            questionMy:
                "command သုံးကြောင်းဖြင့် နှင်းချည် ပုံနှိပ်ခဲ့သော အရာသုံးခုမှာ အဘယ်နည်း။",
            optionsEn: [
              "Her age, her height, and her weight",
              "Her name, her class, and her favourite subject",
              "Her school's address and phone number",
              "A list of her friends' names",
            ],
            optionsMy: [
              "သူမ၏အသက်၊ အရပ်နှင့် အလေးချိန်",
              "သူမ၏အမည်၊ အတန်းနှင့် အကြိုက်ဆုံးဘာသာရပ်",
              "ကျောင်း၏လိပ်စာနှင့် ဖုန်းနံပါတ်",
              "သူငယ်ချင်းများ၏ အမည်စာရင်း",
            ],
            correctIndex: 1,
          ),
          QuizQuestion(
            questionEn:
                "What did Nay Chi realise when she swapped the order of her commands?",
            questionMy:
                "command များ၏ အစီအစဉ်ကို ဖလှယ်လိုက်သောအခါ နှင်းချည် အဘယ်အရာကို သဘောပေါက်သွားသနည်း။",
            optionsEn: [
              "Nothing changed at all",
              "The app crashed completely",
              "The text turned a different colour",
              "The order of the output changed too, proving sequence matters",
            ],
            optionsMy: [
              "ဘာမှ လုံးဝ မပြောင်းလဲပါ",
              "အက်ပ် လုံးဝ ပျက်သွားသည်",
              "စာသား၏အရောင် ကွဲပြားသွားသည်",
              "ရလဒ်၏အစီအစဉ်ပါ ပြောင်းသွားသဖြင့် sequence အရေးကြီးကြောင်း သက်သေပြသည်",
            ],
            correctIndex: 3,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w1-d5",
      dayNumber: 5,
      titleEn: "Sequence & Syntax Round-Up",
      titleMy: "Sequence နှင့် Syntax အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does \"syntax\" mean in coding?",
          questionMy:
              "ကုဒ်ရေးသားခြင်းတွင် \"syntax\" ဆိုသည်မှာ အဘယ်အဓိပ္ပာယ်ရှိသနည်း။",
          optionsEn: [
            "The colour scheme of an app",
            "The exact spelling and punctuation rules of a coding language",
            "The name of a computer brand",
            "A type of computer virus",
          ],
          optionsMy: [
            "အက်ပ်တစ်ခု၏ အရောင်အစီအစဉ်",
            "ကုဒ်ဘာသာစကားတစ်ခု၏ အတိအကျ စာလုံးပေါင်းနှင့် ပုဒ်ဖြတ်ပုဒ်ရပ် စည်းမျဉ်းများ",
            "ကွန်ပျူတာအမှတ်တံဆိပ်တစ်ခု၏ အမည်",
            "ကွန်ပျူတာဗိုင်းရပ်စ်တစ်မျိုး",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "Which type of coding uses draggable, snap-together blocks instead of typed commands?",
          questionMy:
              "ရိုက်ထည့်ရသော command များအစား ဆွဲယူတွယ်ကပ်နိုင်သော ဘလောက်များကို အသုံးပြုသော ကုဒ်ရေးနည်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Voice-based coding",
            "Text-based coding",
            "Block-based coding",
            "Touch-based coding",
          ],
          optionsMy: [
            "အသံအခြေပြု ကုဒ်ရေးနည်း",
            "စာသားအခြေပြု ကုဒ်ရေးနည်း",
            "ဘလောက်အခြေပြု ကုဒ်ရေးနည်း",
            "ထိတွေ့မှုအခြေပြု ကုဒ်ရေးနည်း",
          ],
          correctIndex: 2,
        ),
        QuizQuestion(
          questionEn:
              "In text-based coding, what can happen if you write your commands in the wrong sequence?",
          questionMy:
              "စာသားအခြေပြု ကုဒ်ရေးတွင် command များကို မှားယွင်းသောအစီအစဉ်ဖြင့် ရေးမိပါက အဘယ်အရာဖြစ်ပေါ်နိုင်သနည်း။",
          optionsEn: [
            "The colours change automatically",
            "The computer fixes it by itself",
            "The program may do the wrong thing or fail",
            "Nothing changes at all",
          ],
          optionsMy: [
            "အရောင်များ အလိုအလျောက် ပြောင်းသွားသည်",
            "ကွန်ပျူတာက သူ့အလိုလို ပြင်ပေးသည်",
            "ပရိုဂရမ်သည် မှားယွင်းသောအလုပ်ကို လုပ်တတ်သည် သို့မဟုတ် အလုပ်မလုပ်နိုင်တောင် ဖြစ်နိုင်သည်",
            "ဘာမှ လုံးဝ မပြောင်းလဲပါ",
          ],
          correctIndex: 2,
        ),
        QuizQuestion(
          questionEn: "What is the purpose of a comment written inside code?",
          questionMy:
              "ကုဒ်အတွင်း ရေးထားသော comment တစ်ခု၏ ရည်ရွယ်ချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "To make the program run faster",
            "To delete unwanted lines of code",
            "To change the code's colour",
            "To explain the code to humans; the computer ignores it",
          ],
          optionsMy: [
            "ပရိုဂရမ်ကို ပိုမြန်အောင် လုပ်ရန်",
            "မလိုအပ်သော ကုဒ်လိုင်းများကို ဖျက်ရန်",
            "ကုဒ်၏အရောင်ကို ပြောင်းရန်",
            "လူသားများ နားလည်စေရန် ရှင်းပြရန်၊ ကွန်ပျူတာက လျစ်လျူရှုသည်",
          ],
          correctIndex: 3,
        ),
        QuizQuestion(
          questionEn: "What does the print() command do?",
          questionMy: "print() command သည် အဘယ်အလုပ်ကို လုပ်ဆောင်သနည်း။",
          optionsEn: [
            "Deletes a file",
            "Connects to the internet",
            "Displays text or numbers on the screen",
            "Saves the program permanently",
          ],
          optionsMy: [
            "ဖိုင်တစ်ခုကို ဖျက်သည်",
            "အင်တာနက်နှင့် ချိတ်ဆက်သည်",
            "စာသား သို့မဟုတ် ဂဏန်းများကို မျက်နှာပြင်ပေါ်တွင် ပြသသည်",
            "ပရိုဂရမ်ကို အမြဲတမ်းသိမ်းဆည်းသည်",
          ],
          correctIndex: 2,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek2 = CourseWeekDef(
  id: "course-year6-computing-w2",
  weekNumber: 2,
  titleEn: "Building with Simple Functions",
  titleMy: "ရိုးရှင်းသော Function များဖြင့် တည်ဆောက်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w2-d1",
      dayNumber: 1,
      titleEn: "What Is a Function?",
      titleMy: "Function ဆိုတာ ဘာလဲ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a function in coding?",
          questionMy:
              "ကုဒ်ရေးသားခြင်းတွင် function ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A named block of code that can be reused whenever it is needed",
            "A picture that decorates the program",
            "A password that protects the code",
            "A type of computer error",
          ],
          optionsMy: [
            "လိုအပ်တိုင်း ပြန်လည်အသုံးပြုနိုင်သော အမည်ပေးထားသည့် ကုဒ်အပိုင်း",
            "ပရိုဂရမ်ကို အလှဆင်ပေးသော ပုံ",
            "ကုဒ်ကို ကာကွယ်ပေးသော စကားဝှက်",
            "ကွန်ပျူတာအမှားတစ်မျိုး",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi keeps typing the same three lines of code to print a star pattern, over and over. What could she write instead to avoid repeating herself?",
          questionMy:
              "နှင်းချည်သည် ကြယ်ပုံစံကို ပုံနှိပ်ရန် ကုဒ်တူသုံးကြောင်းကို ထပ်ခါတလဲလဲ ရိုက်ထည့်နေသည်။ ထပ်ခါတလဲလဲ ရေးနေမှုကို ရှောင်ရှားရန် သူမ အဘယ်အရာကို ရေးနိုင်သနည်း။",
          optionsEn: [
            "A function that she can call every time she needs the star pattern",
            "A comment explaining the stars",
            "A brand-new coding app",
            "A longer variable name",
          ],
          optionsMy: [
            "ကြယ်ပုံစံလိုအပ်တိုင်း ခေါ်သုံးနိုင်သော function တစ်ခု",
            "ကြယ်များအကြောင်း ရှင်းပြထားသော comment",
            "လုံးဝ ကုဒ်ရေးအက်ပ်အသစ်တစ်ခု",
            "ပိုရှည်သော variable အမည်တစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the difference between defining a function and calling a function?",
          questionMy:
              "function တစ်ခု define လုပ်ခြင်းနှင့် function တစ်ခု call လုပ်ခြင်း၏ ကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Defining writes the function's instructions once; calling runs those instructions whenever needed",
            "Defining and calling mean exactly the same thing",
            "Calling only happens inside block-based coding",
            "Defining deletes the function after use",
          ],
          optionsMy: [
            "Define လုပ်ခြင်းသည် function ၏ ညွှန်ကြားချက်များကို တစ်ကြိမ်တည်း ရေးသားခြင်းဖြစ်ပြီး၊ call လုပ်ခြင်းသည် လိုအပ်တိုင်း ထိုညွှန်ကြားချက်များကို ဆောင်ရွက်ခြင်းဖြစ်သည်",
            "Define လုပ်ခြင်းနှင့် call လုပ်ခြင်းသည် အတူတူပင်ဖြစ်သည်",
            "Call လုပ်ခြင်းသည် ဘလောက်အခြေပြု ကုဒ်ရေးတွင်သာ ဖြစ်ပေါ်သည်",
            "Define လုပ်ခြင်းသည် အသုံးပြုပြီးလျှင် function ကို ဖျက်ပစ်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is it good practice to give a function a clear, descriptive name such as printStarPattern?",
          questionMy:
              "function တစ်ခုကို printStarPattern ကဲ့သို့ ရှင်းလင်းသော အမည်ပေးခြင်းသည် အဘယ့်ကြောင့် ကောင်းသော အလေ့အကျင့်ဖြစ်သနည်း။",
          optionsEn: [
            "It makes the code run twice as fast",
            "It hides the function from other programmers",
            "It helps anyone reading the code understand what the function does",
            "It is required by every coding language, without exception",
          ],
          optionsMy: [
            "ကုဒ်ကို နှစ်ဆမြန်စွာ အလုပ်လုပ်စေသည်",
            "အခြားပရိုဂရမ်မာများထံမှ function ကို ဖျောက်ထားသည်",
            "ကုဒ်ကိုဖတ်သူ မည်သူမဆို function ၏ အလုပ်ကို နားလည်စေရန် ကူညီပေးသည်",
            "ကုဒ်ဘာသာစကားတိုင်းအတွက် ခြွင်းချက်မရှိ လိုအပ်ချက်တစ်ခုဖြစ်သည်",
          ],
          correctIndex: 2,
        ),
        QuizQuestion(
          questionEn:
              "What is one clear benefit of using functions instead of repeating the same lines of code many times?",
          questionMy:
              "တူညီသော ကုဒ်လိုင်းများကို အကြိမ်များစွာ ထပ်ခါတလဲလဲ ရေးမည့်အစား function များ အသုံးပြုခြင်း၏ ရှင်းလင်းသော အကျိုးကျေးဇူးတစ်ခုမှာ အဘယ်နည်း။",
          optionsEn: [
            "It makes the program's screen background darker",
            "If you need to fix or change that piece of code, you only need to update it in one place",
            "It automatically translates the code into another language",
            "It removes the need for a computer to run the program",
          ],
          optionsMy: [
            "ပရိုဂရမ်၏ မျက်နှာပြင်နောက်ခံအရောင် ပိုမှောင်သွားစေသည်",
            "ကုဒ်အပိုင်းကို ပြင်ဖို့ သို့မဟုတ် ပြောင်းလဲဖို့ လိုအပ်ပါက နေရာတစ်ခုတည်းတွင်သာ ပြင်ရုံလုံလောက်သည်",
            "ကုဒ်ကို အခြားဘာသာစကားသို့ အလိုအလျောက် ဘာသာပြန်ပေးသည်",
            "ပရိုဂရမ်ကို လုပ်ဆောင်ရန် ကွန်ပျူတာ မလိုအပ်တော့ချေ",
          ],
          correctIndex: 1,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w2-d2",
      dayNumber: 2,
      titleEn: "Match the Function Vocabulary",
      titleMy: "Function ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w2-dm-1",
          termEn: "Function",
          termMy: "လုပ်ဆောင်ချက် (Function)",
          matchEn:
              "A named block of reusable code that performs a specific task",
          matchMy:
              "သီးခြားလုပ်ငန်းတစ်ခုကို ဆောင်ရွက်ပေးသည့် ပြန်လည်အသုံးပြုနိုင်သော အမည်ရှိကုဒ်အပိုင်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w2-dm-2",
          termEn: "Define a function",
          termMy: "Function ကို သတ်မှတ်ရေးသားခြင်း",
          matchEn: "Writing the function's instructions once, giving it a name",
          matchMy:
              "Function ၏ ညွှန်ကြားချက်များကို အမည်ပေးလျက် တစ်ကြိမ်တည်း ရေးသားခြင်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w2-dm-3",
          termEn: "Call a function",
          termMy: "Function ကို ခေါ်သုံးခြင်း",
          matchEn:
              "Using the function's name in your code so its instructions run at that point",
          matchMy:
              "ထိုနေရာတွင် function ၏ ညွှန်ကြားချက်များ အလုပ်လုပ်စေရန် ကုဒ်ထဲတွင် function ၏အမည်ကို အသုံးပြုခြင်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w2-dm-4",
          termEn: "Parameter",
          termMy: "ကန့်သတ်တန်ဖိုး (Parameter)",
          matchEn:
              "Extra information you pass into a function so it can use it while it runs",
          matchMy:
              "Function တစ်ခု အလုပ်လုပ်စဉ် အသုံးပြုနိုင်ရန် ၎င်းသို့ ထည့်ပေးလိုက်သော အပိုအချက်အလက်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w2-dm-5",
          termEn: "Reusable code",
          termMy: "ပြန်လည်အသုံးပြုနိုင်သော ကုဒ်",
          matchEn:
              "Code written once that can be used again and again without retyping it",
          matchMy:
              "တစ်ကြိမ်တည်းသာ ရေးသားထားပြီး ပြန်၍ ရိုက်ထည့်စရာမလိုဘဲ ထပ်ကာထပ်ကာ အသုံးပြုနိုင်သော ကုဒ်",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w2-dm-6",
          termEn: "Function name",
          termMy: "Function အမည်",
          matchEn:
              "A clear, descriptive label that tells other programmers what the function does",
          matchMy:
              "Function က မည်သည့်အလုပ်ကို လုပ်ဆောင်သည်ကို အခြားပရိုဂရမ်မာများ သိစေရန် ရှင်းလင်းသော အမည်တစ်ခု",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w2-d3",
      dayNumber: 3,
      titleEn: "Sort: Defining or Calling?",
      titleMy: "စီစစ်ကြမည် - Define လုပ်ခြင်းလား၊ Call လုပ်ခြင်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Defining a Function", "Calling a Function"],
        bucketsMy: [
          "Function ကို Define လုပ်ခြင်း",
          "Function ကို Call လုပ်ခြင်း",
        ],
        items: [
          SortingItem(
            id: "y6comp-w2-sort-1",
            labelEn:
                "Writing def printStarPattern(): followed by its instructions",
            labelMy:
                "def printStarPattern(): ဟု ရေးပြီး နောက်တွင် ၎င်း၏ ညွှန်ကြားချက်များ ဆက်ရေးခြင်း",
            correctBucketEn: "Defining a Function",
            correctBucketMy: "Function ကို Define လုပ်ခြင်း",
          ),
          SortingItem(
            id: "y6comp-w2-sort-2",
            labelEn: "Typing printStarPattern() in your program to run it",
            labelMy:
                "ပရိုဂရမ်ကို လုပ်ဆောင်ရန် printStarPattern() ဟု ရိုက်ထည့်ခြင်း",
            correctBucketEn: "Calling a Function",
            correctBucketMy: "Function ကို Call လုပ်ခြင်း",
          ),
          SortingItem(
            id: "y6comp-w2-sort-3",
            labelEn:
                "Setting up the function's instructions before you can use them anywhere",
            labelMy:
                "အဘယ်နေရာတွင်မဆို အသုံးပြုနိုင်မီ function ၏ ညွှန်ကြားချက်များကို ကြိုတင်ပြင်ဆင်ထားခြင်း",
            correctBucketEn: "Defining a Function",
            correctBucketMy: "Function ကို Define လုပ်ခြင်း",
          ),
          SortingItem(
            id: "y6comp-w2-sort-4",
            labelEn:
                "Can be done many times throughout a program using the same function",
            labelMy:
                "တူညီသော function တစ်ခုတည်းကို ပရိုဂရမ်တစ်ခုလုံးတွင် အကြိမ်များစွာ လုပ်ဆောင်နိုင်ခြင်း",
            correctBucketEn: "Calling a Function",
            correctBucketMy: "Function ကို Call လုပ်ခြင်း",
          ),
          SortingItem(
            id: "y6comp-w2-sort-5",
            labelEn: "Usually happens once, near the top of your program",
            labelMy:
                "အများအားဖြင့် ပရိုဂရမ်၏ အပေါ်ပိုင်းအနီးတွင် တစ်ကြိမ်တည်း ဖြစ်ပေါ်ခြင်း",
            correctBucketEn: "Defining a Function",
            correctBucketMy: "Function ကို Define လုပ်ခြင်း",
          ),
          SortingItem(
            id: "y6comp-w2-sort-6",
            labelEn: "Is what actually makes the function's instructions run",
            labelMy:
                "Function ၏ ညွှန်ကြားချက်များကို အမှန်တကယ် အလုပ်လုပ်စေသည့် အရာဖြစ်ခြင်း",
            correctBucketEn: "Calling a Function",
            correctBucketMy: "Function ကို Call လုပ်ခြင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w2-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Repeating Stars",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ ထပ်ခါတလဲလဲ ကြယ်များ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Repeating Stars",
        titleMy: "နှင်းချည်၏ ထပ်ခါတလဲလဲ ကြယ်များ",
        passageEn:
            "Nay Chi is decorating her class project with rows of little printed stars. Every time she wants a new row, she copies the same three lines of code and pastes them again -- once, twice, then a third time. Her program is starting to look long and messy, and when she wants to change the star symbol, she has to remember to change it in three separate places.\n\nMs. Thanda notices Nay Chi scrolling up and down her screen, hunting for all three copies. \"What if you wrote those three lines only once,\" she asks, \"and gave them a name you could call whenever you needed them?\" Nay Chi tries it: she defines a function called printStars, placing her three lines of code inside it just one time. Now, whenever she wants a new row of stars, she simply writes printStars() -- one short line instead of three.\n\nNay Chi tests her new function three times in a row, and three neat rows of stars appear on the screen, exactly as before -- but her code is now much shorter and far easier to read. Best of all, when she decides to change the star symbol, she only has to edit it inside the function once, and every single row updates automatically. \"Functions really do save time,\" Nay Chi tells her table group, already planning where else she can use one.",
        passageMy:
            "နှင်းချည်သည် သူမ၏ အတန်းစီမံကိန်းကို ပုံနှိပ်ကြယ်ငယ်များ တန်းစီ၍ အလှဆင်နေသည်။ တန်းအသစ်တစ်ခု လိုချင်တိုင်း သူမသည် ကုဒ်တူသုံးကြောင်းကို ကူးယူ၍ ထပ်ကာထပ်ကာ ကူးထည့်နေသည် -- တစ်ကြိမ်၊ နှစ်ကြိမ်၊ ထို့နောက် တတိယအကြိမ်။ သူမ၏ ပရိုဂရမ်သည် ရှည်လျားရှုပ်ထွေးလာပြီး၊ ကြယ်သင်္ကေတကို ပြောင်းလိုသောအခါတွင် နေရာသုံးနေရာစီတွင် ပြောင်းရန် မှတ်ထားရသည်။\n\nဒေါ်သန္တာသည် နှင်းချည်၏ မျက်နှာပြင်ကို အောက်နှင့်အပေါ် လှိမ့်ကာ ကုဒ်သုံးစုကို ရှာဖွေနေသည်ကို သတိပြုမိသည်။ \"အဲဒီလိုင်းသုံးကြောင်းကို တစ်ကြိမ်တည်းသာ ရေးပြီး၊ လိုအပ်တိုင်း ခေါ်သုံးနိုင်တဲ့ အမည်တစ်ခု ပေးလိုက်ရင် ဘယ်လိုဖြစ်မလဲ\" ဟု သူမမေးသည်။ နှင်းချည် စမ်းသပ်ကြည့်သည် -- printStars ဟု အမည်ပေးထားသော function တစ်ခု define လုပ်ပြီး၊ ၎င်းအတွင်း ကုဒ်လိုင်းသုံးကြောင်းကို တစ်ကြိမ်တည်း ထည့်သွင်းလိုက်သည်။ ယခုအခါ ကြယ်တန်းအသစ်တစ်ခု လိုချင်တိုင်း printStars() ဟု တစ်ကြောင်းတည်း ရေးရုံသာလိုတော့သည်။\n\nနှင်းချည်သည် သူမ၏ function အသစ်ကို ဆက်တိုက်သုံးကြိမ် စမ်းသပ်ရာ ကြယ်တန်းသန့်ရှင်းလှပသော တန်းသုံးတန်းသည် ယခင်အတိုင်း မျက်နှာပြင်ပေါ်တွင် ပေါ်လာသည် -- သို့သော် သူမ၏ ကုဒ်သည် ယခုအခါ ပိုတိုတောင်းပြီး ဖတ်ရလွယ်ကူလာသည်။ အကောင်းဆုံးမှာ ကြယ်သင်္ကေတကို ပြောင်းလိုသောအခါ function အတွင်းတွင် တစ်ကြိမ်တည်း ပြင်ရုံဖြင့် တန်းတိုင်းသည် အလိုအလျောက် ပြောင်းလဲသွားခြင်းပင်ဖြစ်သည်။ \"Function တွေက အချိန်ကို တကယ်ပဲ ချွေတာပေးတယ်\" ဟု နှင်းချည် သူမ၏ စားပွဲအုပ်စုကို ပြောပြသည်၊ ဘယ်နေရာမှာ ထပ်သုံးနိုင်မလဲဆိုတာကို စဉ်းစားနေပြီဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What problem does Nay Chi have at the start of the passage?",
            questionMy:
                "စာပိုဒ်အစတွင် နှင်းချည် ကြုံတွေ့နေရသော ပြဿနာမှာ အဘယ်နည်း။",
            optionsEn: [
              "Her computer will not turn on",
              "She keeps copying and pasting the same three lines of code for each row of stars",
              "She cannot find the print() command",
              "Her teacher has taken away her project",
            ],
            optionsMy: [
              "သူမ၏ ကွန်ပျူတာ လုံးဝ မဖွင့်နိုင်ပါ",
              "ကြယ်တန်းတိုင်းအတွက် ကုဒ်လိုင်းသုံးကြောင်းတူကို ထပ်ခါတလဲလဲ ကူးယူထည့်နေရသည်",
              "print() command ကို ရှာမတွေ့ပါ",
              "သူမ၏ဆရာမက စီမံကိန်းကို သိမ်းယူသွားသည်",
            ],
            correctIndex: 1,
          ),
          QuizQuestion(
            questionEn: "What does Ms. Thanda suggest Nay Chi should do?",
            questionMy: "ဒေါ်သန္တာက နှင်းချည်ကို အဘယ်အရာလုပ်ရန် အကြံပြုသနည်း။",
            optionsEn: [
              "Delete the star pattern completely",
              "Switch back to block-based coding",
              "Write the three lines once inside a function she can call whenever needed",
              "Ask a friend to type the code for her",
            ],
            optionsMy: [
              "ကြယ်ပုံစံကို လုံးဝ ဖျက်ပစ်ရန်",
              "ဘလောက်အခြေပြု ကုဒ်ရေးသို့ ပြန်ပြောင်းရန်",
              "လိုအပ်တိုင်း ခေါ်သုံးနိုင်သော function တစ်ခုအတွင်း လိုင်းသုံးကြောင်းကို တစ်ကြိမ်တည်း ရေးရန်",
              "ကုဒ်ကို ရေးပေးရန် သူငယ်ချင်းတစ်ဦးအား တောင်းဆိုရန်",
            ],
            correctIndex: 2,
          ),
          QuizQuestion(
            questionEn: "What is the name Nay Chi gives to her new function?",
            questionMy:
                "နှင်းချည်၏ function အသစ်ကို အဘယ်နာမည်ဖြင့် ခေါ်ဆိုသနည်း။",
            optionsEn: ["starRow", "printStars", "myCode", "starDesign"],
            optionsMy: ["starRow", "printStars", "myCode", "starDesign"],
            correctIndex: 1,
          ),
          QuizQuestion(
            questionEn:
                "After defining the function, what does Nay Chi write each time she wants a new row of stars?",
            questionMy:
                "Function ကို define လုပ်ပြီးနောက် ကြယ်တန်းအသစ်တစ်ခု လိုချင်တိုင်း နှင်းချည် အဘယ်အရာ ရေးလိုက်သနည်း။",
            optionsEn: [
              "The same three lines of code again",
              "printStars()",
              "A brand-new function every time",
              "Nothing -- the stars appear automatically",
            ],
            optionsMy: [
              "တူညီသော ကုဒ်လိုင်းသုံးကြောင်းကို ထပ်ရေးသည်",
              "printStars()",
              "အကြိမ်တိုင်း function အသစ်တစ်ခု",
              "ဘာမှမရေးပါ -- ကြယ်များ အလိုအလျောက် ပေါ်လာသည်",
            ],
            correctIndex: 1,
          ),
          QuizQuestion(
            questionEn:
                "What is the biggest benefit Nay Chi discovers when she later wants to change the star symbol?",
            questionMy:
                "နောက်ပိုင်း ကြယ်သင်္ကေတကို ပြောင်းလိုသောအခါ နှင်းချည် တွေ့ရှိသော အကြီးမားဆုံးအကျိုးကျေးဇူးမှာ အဘယ်နည်း။",
            optionsEn: [
              "She has to edit it in three separate places as before",
              "The function is deleted automatically",
              "She only needs to edit it once inside the function, and every row updates",
              "The symbol cannot be changed once the function is defined",
            ],
            optionsMy: [
              "ယခင်အတိုင်း နေရာသုံးနေရာစီတွင် ပြင်ရသည်",
              "Function သည် အလိုအလျောက် ပျက်စီးသွားသည်",
              "Function အတွင်း တစ်ကြိမ်တည်း ပြင်ရုံဖြင့် တန်းတိုင်း အလိုအလျောက် ပြောင်းလဲသည်",
              "Function ကို define လုပ်ပြီးလျှင် သင်္ကေတကို လုံးဝ ပြောင်းလို့မရတော့ပါ",
            ],
            correctIndex: 2,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w2-d5",
      dayNumber: 5,
      titleEn: "Functions Round-Up",
      titleMy: "Function အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is the main purpose of writing a function?",
          questionMy:
              "Function တစ်ခု ရေးသားခြင်း၏ အဓိကရည်ရွယ်ချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "To make the screen a different colour",
            "To avoid repeating the same code again and again",
            "To slow the program down on purpose",
            "To hide mistakes from the teacher",
          ],
          optionsMy: [
            "မျက်နှာပြင်ကို အခြားအရောင်တစ်ခု ပြောင်းစေရန်",
            "တူညီသောကုဒ်ကို ထပ်ခါတလဲလဲ ရေးနေရမှုကို ရှောင်ရှားရန်",
            "ပရိုဂရမ်ကို တမင်နှေးကွေးစေရန်",
            "ဆရာထံမှ အမှားများကို ဖျောက်ထားရန်",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "Which of these correctly calls a function named printStars?",
          questionMy:
              "printStars ဟု အမည်ပေးထားသော function ကို မှန်ကန်စွာ call လုပ်ခြင်းမှာ အောက်ပါတို့တွင် အဘယ်နည်း။",
          optionsEn: [
            "printStars()",
            "def printStars",
            "star = printStars",
            "Comment: printStars",
          ],
          optionsMy: [
            "printStars()",
            "def printStars",
            "star = printStars",
            "Comment: printStars",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "How many times do you normally need to define a function before you can call it many times?",
          questionMy:
              "Function တစ်ခုကို အကြိမ်များစွာ call လုပ်နိုင်ရန် ပုံမှန်အားဖြင့် အကြိမ်ဘယ်နှစ်ကြိမ် define လုပ်ရသနည်း။",
          optionsEn: [
            "Once",
            "Every single time you call it",
            "Ten times",
            "It can never be defined more than once in a program",
          ],
          optionsMy: [
            "တစ်ကြိမ်တည်း",
            "call လုပ်တိုင်း",
            "ဆယ်ကြိမ်",
            "ပရိုဂရမ်တစ်ခုအတွင်း တစ်ကြိမ်ထက် define လုပ်၍ လုံးဝမရပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why did Nay Chi's code become shorter after she used a function?",
          questionMy:
              "Function တစ်ခု အသုံးပြုပြီးနောက် နှင်းချည်၏ ကုဒ်သည် အဘယ့်ကြောင့် ပိုတိုတောင်းသွားသနည်း။",
          optionsEn: [
            "The computer deleted half of her code by mistake",
            "She no longer needed to repeat the same three lines for every row",
            "She switched to block-based coding again",
            "She removed all of her comments",
          ],
          optionsMy: [
            "ကွန်ပျူတာက သူမ၏ ကုဒ်တစ်ဝက်ကို အမှားနှင့် ဖျက်ပစ်လိုက်သည်",
            "တန်းတိုင်းအတွက် ကုဒ်လိုင်းသုံးကြောင်းတူကို ထပ်ခါတလဲလဲ ရေးရန် မလိုအပ်တော့ပါ",
            "ဘလောက်အခြေပြု ကုဒ်ရေးသို့ ပြန်ပြောင်းသွားသည်",
            "comment များအားလုံးကို ဖယ်ရှားပစ်လိုက်သည်",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn: "What is a parameter in a function?",
          questionMy: "Function တစ်ခု၏ parameter ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "Extra information passed into a function so it can use it while running",
            "The colour of the function's name",
            "A type of error message",
            "The date a function was written",
          ],
          optionsMy: [
            "Function တစ်ခု အလုပ်လုပ်စဉ် အသုံးပြုနိုင်ရန် ၎င်းသို့ ထည့်ပေးလိုက်သော အပိုအချက်အလက်",
            "Function ၏ အမည်၏ အရောင်",
            "အမှားစာတန်းတစ်မျိုး",
            "Function ကို ရေးသားခဲ့သော ရက်စွဲ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek3 = CourseWeekDef(
  id: "course-year6-computing-w3",
  weekNumber: 3,
  titleEn: "Debugging: Hunting the Bugs",
  titleMy: "Debugging: အမှားများ ရှာဖွေခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w3-d1",
      dayNumber: 1,
      titleEn: "Bugs, Errors and Debugging",
      titleMy: "Bugs၊ Errors နှင့် Debugging",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In coding, what is a \"bug\"?",
          questionMy: "ကုဒ်ရေးသားခြင်းတွင် \"bug\" ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A mistake in the code that stops it working correctly",
            "A decoration added to make the program prettier",
            "A new coding language",
            "A type of computer keyboard",
          ],
          optionsMy: [
            "ကုဒ်ကို မှန်ကန်စွာ အလုပ်မလုပ်စေတော့သော အမှားတစ်ခု",
            "ပရိုဂရမ်ကို ပိုလှစေရန် ထည့်သွင်းထားသော အလှဆင်မှု",
            "ကုဒ်ဘာသာစကားအသစ်တစ်ခု",
            "ကွန်ပျူတာကီးဘုတ်တစ်မျိုး",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is \"debugging\"?",
          questionMy: "\"Debugging\" ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "Deleting a whole program and starting again from nothing",
            "The process of finding and fixing mistakes in code",
            "Changing the colour theme of an app",
            "Turning off a computer completely",
          ],
          optionsMy: [
            "ပရိုဂရမ်တစ်ခုလုံးကို ဖျက်ပြီး လုံးဝအသစ်ပြန်စခြင်း",
            "ကုဒ်ရှိ အမှားများကို ရှာဖွေပြီး ပြင်ဆင်ခြင်းလုပ်ငန်းစဉ်",
            "အက်ပ်၏ အရောင်ဇာတ်လမ်းအား ပြောင်းလဲခြင်း",
            "ကွန်ပျူတာကို လုံးဝပိတ်ခြင်း",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "What is the key difference between a syntax error and a logic error?",
          questionMy:
              "syntax error နှင့် logic error တို့၏ အဓိကကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A syntax error breaks the language's spelling and punctuation rules; a logic error runs fine but gives a wrong result",
            "They are two names for exactly the same problem",
            "A syntax error only happens in block-based coding",
            "A logic error always crashes the whole computer",
          ],
          optionsMy: [
            "Syntax error သည် ဘာသာစကား၏ စာလုံးပေါင်းနှင့် ပုဒ်ဖြတ်ပုဒ်ရပ် စည်းမျဉ်းကို ချိုးဖောက်ခြင်းဖြစ်ပြီး၊ logic error သည် ကုဒ်အလုပ်လုပ်သော်လည်း မှားယွင်းသောရလဒ်ရသည့် ပြဿနာဖြစ်သည်",
            "ဤနှစ်ခုသည် ပြဿနာတစ်ခုတည်းကို ခေါ်ဆိုသည့် အမည်နှစ်မျိုးသာဖြစ်သည်",
            "Syntax error သည် ဘလောက်အခြေပြု ကုဒ်ရေးတွင်သာ ဖြစ်ပေါ်သည်",
            "Logic error သည် ကွန်ပျူတာတစ်ခုလုံးကို အမြဲ ပျက်စေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi's program runs without any red error messages, but it prints the wrong total. What kind of error is this most likely to be?",
          questionMy:
              "နှင်းချည်၏ ပရိုဂရမ်တွင် အနီရောင်အမှားစာတန်း တစ်ခုမျှ မတွေ့ရသော်လည်း စုစုပေါင်းရလဒ် မှားယွင်းနေသည်။ ၎င်းသည် ဘယ်ကြောင့်ဖြစ်နိုင်သော error အမျိုးအစားဖြစ်နိုင်သနည်း။",
          optionsEn: [
            "A syntax error",
            "A logic error",
            "A hardware problem",
            "A network error",
          ],
          optionsMy: [
            "Syntax error",
            "Logic error",
            "Hardware ပြဿနာ",
            "Network error",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "What is one useful way to trace and understand what your code is really doing while it runs?",
          questionMy:
              "ကုဒ်တစ်ခု အလုပ်လုပ်နေချိန်တွင် ၎င်းက အမှန်တကယ် အဘယ်အလုပ်ကို လုပ်ဆောင်နေသည်ကို ခြေရာခံရန် အသုံးဝင်သော နည်းလမ်းတစ်ခုမှာ အဘယ်နည်း။",
          optionsEn: [
            "Guessing the answer without checking anything",
            "Adding temporary print() statements to show values at different points",
            "Deleting the whole program and starting over every time",
            "Ignoring the error message completely",
          ],
          optionsMy: [
            "ဘာမှစစ်ဆေးဘဲ အဖြေကို ခန့်မှန်းခြင်း",
            "မတူညီသော အဆင့်များတွင် တန်ဖိုးများကို ပြသရန် ယာယီ print() statement များ ထည့်သွင်းခြင်း",
            "ပရိုဂရမ်တစ်ခုလုံးကို ဖျက်ပြီး အကြိမ်တိုင်း အသစ်ပြန်စခြင်း",
            "အမှားစာတန်းကို လုံးဝ လျစ်လျူရှုခြင်း",
          ],
          correctIndex: 1,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w3-d2",
      dayNumber: 2,
      titleEn: "Match the Debugging Vocabulary",
      titleMy: "Debugging ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w3-dm-1",
          termEn: "Bug",
          termMy: "အမှား (Bug)",
          matchEn: "A mistake in code that makes it behave incorrectly",
          matchMy: "ကုဒ်ကို မှားယွင်းစွာ အလုပ်လုပ်စေသော အမှားတစ်ခု",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w3-dm-2",
          termEn: "Debugging",
          termMy: "အမှားရှာဖွေပြင်ဆင်ခြင်း (Debugging)",
          matchEn: "The process of finding and fixing bugs in a program",
          matchMy:
              "ပရိုဂရမ်တစ်ခုအတွင်း bug များကို ရှာဖွေပြီး ပြင်ဆင်ခြင်း လုပ်ငန်းစဉ်",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w3-dm-3",
          termEn: "Syntax error",
          termMy: "ရေးထုံးအမှား (Syntax Error)",
          matchEn:
              "A mistake that breaks the coding language's spelling or punctuation rules",
          matchMy:
              "ကုဒ်ဘာသာစကား၏ စာလုံးပေါင်း သို့မဟုတ် ပုဒ်ဖြတ်ပုဒ်ရပ် စည်းမျဉ်းကို ချိုးဖောက်သော အမှား",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w3-dm-4",
          termEn: "Logic error",
          termMy: "တွေးခေါ်မှုအမှား (Logic Error)",
          matchEn:
              "A mistake where the code runs but produces the wrong result",
          matchMy:
              "ကုဒ်သည် အလုပ်လုပ်သော်လည်း မှားယွင်းသော ရလဒ်ကို ထုတ်ပေးသည့် အမှား",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w3-dm-5",
          termEn: "Error message",
          termMy: "အမှားပြသ စာတန်း (Error Message)",
          matchEn:
              "A note the computer shows to explain what went wrong and roughly where",
          matchMy:
              "မည်သည့်နေရာတွင် မည်သို့ မှားယွင်းသည်ကို ရှင်းပြရန် ကွန်ပျူတာက ပြသသည့် မှတ်ချက်",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w3-dm-6",
          termEn: "Trace",
          termMy: "ကုဒ်ကို အဆင့်ဆင့် စစ်ဆေးခြင်း (Trace)",
          matchEn:
              "Following a program step by step to see what it actually does at each line",
          matchMy:
              "လိုင်းတိုင်းတွင် ပရိုဂရမ်သည် အမှန်တကယ် အဘယ်အလုပ်ကို လုပ်ဆောင်သည်ကို ကြည့်ရန် အဆင့်ဆင့် လိုက်နာခြင်း",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w3-d3",
      dayNumber: 3,
      titleEn: "Sort: Syntax Error or Logic Error?",
      titleMy: "စီစစ်ကြမည် - Syntax Error လား၊ Logic Error လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Syntax Error", "Logic Error"],
        bucketsMy: [
          "ရေးထုံးအမှား (Syntax Error)",
          "တွေးခေါ်မှုအမှား (Logic Error)",
        ],
        items: [
          SortingItem(
            id: "y6comp-w3-sort-1",
            labelEn:
                "Forgetting the colon at the end of a function definition line",
            labelMy:
                "function definition လိုင်းအဆုံးတွင် colon ကို မေ့ကျန်ခဲ့ခြင်း",
            correctBucketEn: "Syntax Error",
            correctBucketMy: "ရေးထုံးအမှား (Syntax Error)",
          ),
          SortingItem(
            id: "y6comp-w3-sort-2",
            labelEn:
                "The program runs but adds instead of subtracts, giving the wrong total",
            labelMy:
                "ပရိုဂရမ်သည် အလုပ်လုပ်သော်လည်း နှုတ်ရမည့်အစား ပေါင်းလိုက်သဖြင့် စုစုပေါင်းရလဒ် မှားယွင်းခြင်း",
            correctBucketEn: "Logic Error",
            correctBucketMy: "တွေးခေါ်မှုအမှား (Logic Error)",
          ),
          SortingItem(
            id: "y6comp-w3-sort-3",
            labelEn: "Leaving a quotation mark unclosed around some text",
            labelMy: "စာသားတစ်ခုပတ်လည် ကိုးကားပုဒ်ကို ပိတ်မထားခဲ့ခြင်း",
            correctBucketEn: "Syntax Error",
            correctBucketMy: "ရေးထုံးအမှား (Syntax Error)",
          ),
          SortingItem(
            id: "y6comp-w3-sort-4",
            labelEn:
                "A loop repeats the wrong number of times because of a wrong condition",
            labelMy:
                "condition မှားယွင်းသောကြောင့် loop သည် မှားယွင်းသောအကြိမ်ရေ ထပ်ခါတလဲလဲ လုပ်ဆောင်ခြင်း",
            correctBucketEn: "Logic Error",
            correctBucketMy: "တွေးခေါ်မှုအမှား (Logic Error)",
          ),
          SortingItem(
            id: "y6comp-w3-sort-5",
            labelEn:
                "Misspelling a command name, such as writing \"prnt\" instead of \"print\"",
            labelMy:
                "\"print\" ကို \"prnt\" ဟု မှားရေးသကဲ့သို့ command အမည်ကို စာလုံးပေါင်း မှားရေးခြင်း",
            correctBucketEn: "Syntax Error",
            correctBucketMy: "ရေးထုံးအမှား (Syntax Error)",
          ),
          SortingItem(
            id: "y6comp-w3-sort-6",
            labelEn:
                "Forgetting to update a variable inside a loop, so the count never changes",
            labelMy:
                "loop အတွင်းရှိ variable ကို update မလုပ်မိသဖြင့် အရေအတွက် လုံးဝ မပြောင်းလဲတော့ခြင်း",
            correctBucketEn: "Logic Error",
            correctBucketMy: "တွေးခေါ်မှုအမှား (Logic Error)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w3-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi Squashes a Bug",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည် အမှားတစ်ခုကို ဖြေရှင်းခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi Squashes a Bug",
        titleMy: "နှင်းချည် အမှားတစ်ခုကို ဖြေရှင်းခြင်း",
        passageEn:
            "Nay Chi is writing a small program that should add up the points she earns in three mini-games and print the total. She presses Run, and immediately a red error message appears, pointing at a line where she defined a function without a colon at the end. \"That's a syntax error,\" she says, remembering last week's lesson, and she quickly adds the missing colon.\n\nShe presses Run again. This time no error message appears -- but the total printed on the screen is clearly wrong. Ten plus twenty plus five should be thirty-five, yet the program says fifteen. \"No red message, but it's still broken,\" Nay Chi tells Ms. Thanda. \"That sounds like a logic error, not a syntax error,\" Ms. Thanda replies. \"The code runs, but something in your thinking needs fixing.\"\n\nNay Chi adds a temporary print() line after each step to trace what the program is actually doing, and she spots it at once: she had written a minus sign instead of a plus sign when adding her second score. She fixes the single symbol, removes her temporary print() line, and runs the program one final time. The screen shows thirty-five. \"Found it and fixed it,\" she grins, already looking forward to writing her next program.",
        passageMy:
            "နှင်းချည်သည် သူမ mini-game သုံးခုတွင် ရရှိသော point များကို ပေါင်းလဒ်ထုတ်ပြီး ပုံနှိပ်ပေးမည့် ပရိုဂရမ်ငယ်တစ်ခု ရေးနေသည်။ Run ကို နှိပ်လိုက်ရာ ချက်ချင်းပင် အနီရောင် အမှားစာတန်းတစ်ခု ပေါ်လာပြီး function တစ်ခုကို colon မထည့်ဘဲ define လုပ်ထားသည့် လိုင်းတစ်ခုကို ညွှန်ပြသည်။ \"ဒါ syntax error ပဲ\" ဟု ပြီးခဲ့သောအပတ်၏ သင်ခန်းစာကို မှတ်မိလျက် သူမ ပြောသည်၊ ပျောက်နေသော colon ကို လျင်မြန်စွာ ပြန်ထည့်လိုက်သည်။\n\nRun ကို ထပ်နှိပ်လိုက်သည်။ ယခုအကြိမ်တွင် အမှားစာတန်း မပေါ်တော့သော်လည်း မျက်နှာပြင်ပေါ်တွင် ပုံနှိပ်ထားသော ပေါင်းလဒ်သည် ထင်ရှားစွာ မှားယွင်းနေသည်။ ဆယ်ပေါင်းနှစ်ဆယ်ပေါင်းငါးသည် သုံးဆယ့်ငါး ဖြစ်သင့်သော်လည်း ပရိုဂရမ်က ဆယ့်ငါးဟု ပြသနေသည်။ \"အနီရောင် စာတန်း မပေါ်ပေမယ့် ဆက်ပြီးပျက်နေတုန်းပဲ\" ဟု နှင်းချည် ဒေါ်သန္တာကို ပြောသည်။ \"ဒါဆို syntax error မဟုတ်ဘဲ logic error နဲ့ ပိုနီးစပ်တယ်\" ဟု ဒေါ်သန္တာ ပြန်ဖြေသည်။ \"ကုဒ်က အလုပ်လုပ်နေတယ်၊ ဒါပေမဲ့ သင့်တွေးခေါ်မှုထဲက တစ်ခုခုကို ပြင်ဖို့ လိုနေတယ်။\"\n\nနှင်းချည်သည် ပရိုဂရမ်က အမှန်တကယ် အဘယ်အလုပ်ကို လုပ်ဆောင်နေသည်ကို ခြေရာခံရန် အဆင့်တိုင်းအပြီးတွင် ယာယီ print() လိုင်းများ ထည့်သွင်းလိုက်ရာ ချက်ချင်းပင် တွေ့ရှိလိုက်သည် -- သူမ ဒုတိယအမှတ်ကို ပေါင်းရာတွင် အပေါင်းသင်္ကေတအစား အနှုတ်သင်္ကေတကို ရေးမိခဲ့ခြင်းဖြစ်သည်။ သင်္ကေတတစ်ခုတည်းကို ပြင်ပြီးနောက် ယာယီ print() လိုင်းကို ဖယ်ရှားကာ ပရိုဂရမ်ကို နောက်ဆုံးအကြိမ် လုပ်ဆောင်လိုက်သည်။ မျက်နှာပြင်တွင် သုံးဆယ့်ငါး ပေါ်လာသည်။ \"ရှာတွေ့ပြီး ပြင်ပြီးပြီ\" ဟု သူမ ပြုံးလျက်၊ နောက်ထပ် ပရိုဂရမ်တစ်ခု ရေးရန် ဆက်လက်ဖော်ဝင်နေပြီဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What was Nay Chi's program supposed to do?",
            questionMy:
                "နှင်းချည်၏ ပရိုဂရမ်သည် အဘယ်အလုပ်ကို လုပ်ဆောင်ရန် ရည်ရွယ်ထားသနည်း။",
            optionsEn: [
              "Draw a picture of a star",
              "Add up her points from three mini-games and print the total",
              "Play music for her class",
              "Save her homework file",
            ],
            optionsMy: [
              "ကြယ်ပုံတစ်ပုံ ဆွဲရန်",
              "mini-game သုံးခုမှ point များကို ပေါင်းပြီး စုစုပေါင်းရလဒ်ကို ပုံနှိပ်ရန်",
              "အတန်းအတွက် တေးဂီတ ဖွင့်ရန်",
              "အိမ်စာဖိုင်ကို သိမ်းရန်",
            ],
            correctIndex: 1,
          ),
          QuizQuestion(
            questionEn:
                "What was the first error Nay Chi's program showed her?",
            questionMy:
                "နှင်းချည်၏ ပရိုဂရမ်က ပထမဆုံး ပြသသော error မှာ အဘယ်နည်း။",
            optionsEn: [
              "A missing colon at the end of a function definition",
              "A missing print() command",
              "The wrong file name",
              "A missing internet connection",
            ],
            optionsMy: [
              "Function definition အဆုံးတွင် ပျောက်နေသော colon",
              "ပျောက်နေသော print() command",
              "မှားယွင်းသော ဖိုင်အမည်",
              "ပျောက်နေသော အင်တာနက်ချိတ်ဆက်မှု",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "After Nay Chi fixed the syntax error, what was still wrong with her program?",
            questionMy:
                "Syntax error ကို ပြင်ပြီးနောက် သူမ၏ ပရိုဂရမ်တွင် အဘယ်အရာ ဆက်လက် မှားယွင်းနေသေးသနည်း။",
            optionsEn: [
              "It printed the wrong total even though no error message appeared",
              "It refused to run at all",
              "It deleted her file",
              "It changed the screen colour",
            ],
            optionsMy: [
              "အမှားစာတန်း မပေါ်သော်လည်း စုစုပေါင်းရလဒ် မှားယွင်းနေသည်",
              "လုံးဝ အလုပ်မလုပ်ခဲ့ပါ",
              "သူမ၏ ဖိုင်ကို ဖျက်ပစ်လိုက်သည်",
              "မျက်နှာပြင်၏ အရောင်ကို ပြောင်းလဲလိုက်သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What technique did Nay Chi use to find her logic error?",
            questionMy:
                "Logic error ကို ရှာဖွေရန် နှင်းချည် အဘယ်နည်းလမ်းကို အသုံးပြုခဲ့သနည်း။",
            optionsEn: [
              "Adding temporary print() lines after each step to trace what was happening",
              "Deleting the whole program and starting over",
              "Asking the computer to fix it automatically",
              "Ignoring the wrong total and submitting it anyway",
            ],
            optionsMy: [
              "အဆင့်တိုင်းအပြီးတွင် ခြေရာခံရန် ယာယီ print() လိုင်းများ ထည့်ခြင်း",
              "ပရိုဂရမ်တစ်ခုလုံးကို ဖျက်ပြီး အသစ်ပြန်စခြင်း",
              "ကွန်ပျူတာကို အလိုအလျောက် ပြင်ခိုင်းခြင်း",
              "မှားယွင်းသော ရလဒ်ကို လျစ်လျူရှုပြီး ပေးပို့လိုက်ခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What was the actual mistake Nay Chi found in her code?",
            questionMy:
                "နှင်းချည် သူမ၏ ကုဒ်တွင် တွေ့ရှိခဲ့သော အမှန်တကယ်အမှားမှာ အဘယ်နည်း။",
            optionsEn: [
              "She had written a minus sign instead of a plus sign",
              "She had forgotten to name her function",
              "She had used the wrong colour for the text",
              "She had printed her score twice",
            ],
            optionsMy: [
              "အပေါင်းသင်္ကေတအစား အနှုတ်သင်္ကေတကို ရေးမိခဲ့ခြင်း",
              "function ကို အမည်ပေးရန် မေ့ကျန်ခဲ့ခြင်း",
              "စာသားအတွက် အရောင်မှားရွေးခဲ့ခြင်း",
              "သူမ၏ score ကို နှစ်ကြိမ် ပုံနှိပ်မိခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w3-d5",
      dayNumber: 5,
      titleEn: "Debugging Round-Up",
      titleMy: "Debugging အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a bug in coding?",
          questionMy: "ကုဒ်ရေးသားခြင်းတွင် bug ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A decoration for the program",
            "A mistake that stops code from working correctly",
            "A new type of computer",
            "A shortcut key",
          ],
          optionsMy: [
            "ပရိုဂရမ်အတွက် အလှဆင်မှုတစ်ခု",
            "ကုဒ်ကို မှန်ကန်စွာ အလုပ်မလုပ်စေတော့သော အမှား",
            "ကွန်ပျူတာအမျိုးအစားအသစ်တစ်ခု",
            "shortcut key တစ်ခု",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "A forgotten closing quotation mark is an example of which kind of error?",
          questionMy:
              "မေ့ကျန်ခဲ့သော ကိုးကားပုဒ်ပိတ်သည် အောက်ပါ error အမျိုးအစား မှာ အဘယ်နည်း။",
          optionsEn: [
            "Logic error",
            "Syntax error",
            "Network error",
            "Hardware error",
          ],
          optionsMy: [
            "Logic error",
            "Syntax error",
            "Network error",
            "Hardware error",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "A program that runs without error messages but gives the wrong answer most likely has which kind of error?",
          questionMy:
              "အမှားစာတန်း မပေါ်ဘဲ အလုပ်လုပ်သော်လည်း အဖြေမှားနေသော ပရိုဂရမ်တစ်ခုသည် အောက်ပါ error အမျိုးအစားနှင့် အနီးစပ်ဆုံးဖြစ်နိုင်သနည်း။",
          optionsEn: [
            "Syntax error",
            "Logic error",
            "Colour error",
            "Password error",
          ],
          optionsMy: [
            "Syntax error",
            "Logic error",
            "အရောင်အမှား",
            "စကားဝှက်အမှား",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "Why is adding a temporary print() statement a useful debugging technique?",
          questionMy:
              "ယာယီ print() statement တစ်ခု ထည့်ခြင်းသည် အသုံးဝင်သော debugging နည်းလမ်းတစ်ခု ဖြစ်ရသည့် အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "It lets you see the value of something at a specific point while the program runs",
            "It permanently changes the program's colours",
            "It deletes the bug automatically",
            "It stops the program from ever running again",
          ],
          optionsMy: [
            "ပရိုဂရမ်အလုပ်လုပ်နေစဉ် သတ်မှတ်နေရာတစ်ခု၏ တန်ဖိုးကို ကြည့်ရှုနိုင်စေသည်",
            "ပရိုဂရမ်၏ အရောင်များကို အမြဲတမ်းပြောင်းလဲစေသည်",
            "Bug ကို အလိုအလျောက် ဖျက်ပစ်ပေးသည်",
            "ပရိုဂရမ်ကို နောက်ထပ် လုံးဝ အလုပ်မလုပ်နိုင်စေတော့ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What did Nay Chi's fixed logic error turn out to be?",
          questionMy:
              "နှင်းချည် ပြင်ဆင်ခဲ့ရသော logic error သည် နောက်ဆုံးတွင် အဘယ်အမှားဖြစ်ကြောင်း တွေ့ရှိခဲ့သနည်း။",
          optionsEn: [
            "A missing colon",
            "A minus sign used instead of a plus sign",
            "A misspelled command name",
            "An unclosed bracket",
          ],
          optionsMy: [
            "ပျောက်နေသော colon",
            "အပေါင်းသင်္ကေတအစား သုံးထားသော အနှုတ်သင်္ကေတ",
            "စာလုံးပေါင်း မှားနေသော command အမည်",
            "မပိတ်ရသေးသော ကွင်း",
          ],
          correctIndex: 1,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek4 = CourseWeekDef(
  id: "course-year6-computing-w4",
  weekNumber: 4,
  titleEn: "Capstone: Nay Chi's Mini Coding Challenge",
  titleMy: "အထွတ်အထိပ် - နှင်းချည်၏ ကုဒ်ရေးမိနီစိန်ခေါ်မှု",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w4-d1",
      dayNumber: 1,
      titleEn: "Planning a Mini Program",
      titleMy: "ပရိုဂရမ်ငယ်တစ်ခု စီစဉ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Before typing any code for a new mini program, what should Nay Chi do first?",
          questionMy:
              "ပရိုဂရမ်ငယ်တစ်ခုအတွက် ကုဒ်မရိုက်ထည့်မီ နှင်းချည် ဦးဆုံး အဘယ်အရာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Plan the steps her program needs, in order, before writing any code",
            "Delete any old programs she has written",
            "Turn off her computer",
            "Change the app's background colour",
          ],
          optionsMy: [
            "ကုဒ်မရေးမီ သူမ၏ ပရိုဂရမ်လိုအပ်သော အဆင့်များကို အစီအစဉ်လိုက် စီစဉ်ရန်",
            "သူမရေးထားသော ပရိုဂရမ်ဟောင်းများကို ဖျက်ပစ်ရန်",
            "သူမ၏ ကွန်ပျူတာကို ပိတ်ရန်",
            "အက်ပ်၏ နောက်ခံအရောင်ကို ပြောင်းရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi's mini program will need to greet the user, then run the same countdown message three times. Which coding idea should she use to avoid repeating that message code three separate times?",
          questionMy:
              "နှင်းချည်၏ ပရိုဂရမ်ငယ်သည် အသုံးပြုသူကို နှုတ်ဆက်ပြီး countdown message တူညီကို သုံးကြိမ် ထုတ်ပြရမည်။ ထို message ကုဒ်ကို နေရာသုံးနေရာတွင် ထပ်ခါတလဲလဲ မရေးရန် သူမ မည်သည့်အယူအဆကို သုံးသင့်သနည်း။",
          optionsEn: [
            "A comment",
            "A function she can call three times",
            "A brand-new app",
            "A syntax error",
          ],
          optionsMy: [
            "Comment တစ်ခု",
            "သုံးကြိမ် ခေါ်သုံးနိုင်သော function တစ်ခု",
            "အက်ပ်အသစ်တစ်ခု",
            "Syntax error တစ်ခု",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "Why should Nay Chi test her mini program after every small change, rather than writing the whole thing at once and testing at the end?",
          questionMy:
              "ပရိုဂရမ်တစ်ခုလုံးကို တစ်ကြိမ်တည်းရေးပြီး အဆုံးတွင်သာ စမ်းသပ်မည့်အစား ပြောင်းလဲမှုငယ်တိုင်းအပြီး ဘာကြောင့် စမ်းသပ်သင့်သနည်း။",
          optionsEn: [
            "It makes the app look prettier",
            "It is easier to find which small change caused a new bug",
            "It makes the program run faster automatically",
            "It is a rule that only applies to block-based coding",
          ],
          optionsMy: [
            "အက်ပ်ကို ပိုလှစေသောကြောင့်",
            "မည်သည့် ပြောင်းလဲမှုငယ်က bug အသစ်ဖြစ်စေသည်ကို ရှာဖွေရလွယ်ကူသောကြောင့်",
            "ပရိုဂရမ်ကို အလိုအလျောက် ပိုမြန်စေသောကြောင့်",
            "ဘလောက်အခြေပြု ကုဒ်ရေးတွင်သာ သက်ဆိုင်သော စည်းမျဉ်းဖြစ်သောကြောင့်",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi's program shows a red error message on the very first line she typed. What should she check first?",
          questionMy:
              "နှင်းချည် ရိုက်ထည့်ခဲ့သော ပထမဆုံးလိုင်းတွင် အနီရောင် အမှားစာတန်းတစ်ခု ပေါ်လာသည်။ သူမ ဦးဆုံး အဘယ်အရာကို စစ်ဆေးသင့်သနည်း။",
          optionsEn: [
            "Whether that line's spelling and punctuation follow the language's syntax rules",
            "Whether her internet connection is working",
            "Whether her computer's battery is full",
            "Whether her password is correct",
          ],
          optionsMy: [
            "ထိုလိုင်း၏ စာလုံးပေါင်းနှင့် ပုဒ်ဖြတ်ပုဒ်ရပ်တို့ ဘာသာစကား၏ syntax စည်းမျဉ်းနှင့် ကိုက်ညီမှုရှိမရှိ",
            "သူမ၏ အင်တာနက်ချိတ်ဆက်မှု အလုပ်လုပ်မလုပ်",
            "သူမ၏ ကွန်ပျူတာဘက်ထရီ အပြည့်ရှိမရှိ",
            "သူမ၏ စကားဝှက် မှန်မမှန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is one sign that a mini program is well planned and organised before coding starts?",
          questionMy:
              "ကုဒ်မစတင်မီ ပရိုဂရမ်ငယ်တစ်ခု ကောင်းစွာ စီစဉ်ထားပြီး စနစ်တကျဖြစ်ကြောင်း သက်သေပြသော လက္ခဏာတစ်ခုမှာ အဘယ်နည်း။",
          optionsEn: [
            "The steps needed are written out clearly in order before any code is typed",
            "The program has as many colours as possible",
            "The program is written without thinking about the order of steps",
            "The programmer avoids testing until the very last minute",
          ],
          optionsMy: [
            "ကုဒ်မရိုက်ထည့်မီ လိုအပ်သော အဆင့်များကို အစီအစဉ်လိုက် ရှင်းလင်းစွာ ရေးချထားခြင်း",
            "ပရိုဂရမ်တွင် ဖြစ်နိုင်သမျှ အရောင်များ ပါဝင်ခြင်း",
            "အဆင့်များ၏ အစီအစဉ်ကို မစဉ်းစားဘဲ ပရိုဂရမ်ကို ရေးသားခြင်း",
            "ပရိုဂရမ်မာသည် နောက်ဆုံးမိနစ်အထိ စမ်းသပ်ခြင်းကို ရှောင်ရှားခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w4-d2",
      dayNumber: 2,
      titleEn: "Match the Term's Big Ideas",
      titleMy: "ဤသင်တန်းအပတ်စုက ကြီးမားသောအယူအဆများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w4-dm-1",
          termEn: "Sequence",
          termMy: "အစီအစဉ်လိုက် (Sequence)",
          matchEn: "Running program steps in the exact order they are written",
          matchMy:
              "ပရိုဂရမ်အဆင့်များကို ရေးထားသည့်အတိုင်း အတိအကျ အစီအစဉ်လိုက် လုပ်ဆောင်ခြင်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w4-dm-2",
          termEn: "Function",
          termMy: "လုပ်ဆောင်ချက် (Function)",
          matchEn:
              "A named, reusable block of code you can call whenever you need it",
          matchMy:
              "လိုအပ်တိုင်း ခေါ်သုံးနိုင်သော အမည်ရှိပြီး ပြန်လည်အသုံးပြုနိုင်သော ကုဒ်အပိုင်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w4-dm-3",
          termEn: "Debugging",
          termMy: "အမှားရှာဖွေပြင်ဆင်ခြင်း (Debugging)",
          matchEn: "Finding and fixing mistakes so a program works correctly",
          matchMy:
              "ပရိုဂရမ်ကို မှန်ကန်စွာ အလုပ်လုပ်စေရန် အမှားများကို ရှာဖွေပြင်ဆင်ခြင်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w4-dm-4",
          termEn: "Syntax error",
          termMy: "ရေးထုံးအမှား (Syntax Error)",
          matchEn:
              "A mistake that breaks the coding language's spelling or punctuation rules",
          matchMy:
              "ကုဒ်ဘာသာစကား၏ စာလုံးပေါင်း သို့မဟုတ် ပုဒ်ဖြတ်ပုဒ်ရပ် စည်းမျဉ်းကို ချိုးဖောက်သော အမှား",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w4-dm-5",
          termEn: "Logic error",
          termMy: "တွေးခေါ်မှုအမှား (Logic Error)",
          matchEn:
              "A mistake where the code runs but produces the wrong result",
          matchMy:
              "ကုဒ်သည် အလုပ်လုပ်သော်လည်း မှားယွင်းသော ရလဒ်ကို ထုတ်ပေးသည့် အမှား",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w4-dm-6",
          termEn: "Comment",
          termMy: "မှတ်ချက် (Comment)",
          matchEn:
              "A note inside code that explains it to humans and is ignored by the computer",
          matchMy:
              "လူသားများ နားလည်စေရန် ကုဒ်အတွင်းရေးထားသော မှတ်ချက်၊ ကွန်ပျူတာက လျစ်လျူရှုသည်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w4-d3",
      dayNumber: 3,
      titleEn: "Sort: Good Habit or Mistake to Avoid?",
      titleMy: "စီစစ်ကြမည် - ကောင်းသောအလေ့အကျင့်လား၊ ရှောင်ရှားရမည့်အမှားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Good Coding Habit", "Coding Mistake to Avoid"],
        bucketsMy: [
          "ကောင်းသော ကုဒ်ရေးအလေ့အကျင့်",
          "ရှောင်ရှားရမည့် ကုဒ်ရေးအမှား",
        ],
        items: [
          SortingItem(
            id: "y6comp-w4-sort-1",
            labelEn: "Testing your program after every small change you make",
            labelMy: "ပြင်ဆင်မှုငယ်တိုင်းအပြီး ပရိုဂရမ်ကို စမ်းသပ်ခြင်း",
            correctBucketEn: "Good Coding Habit",
            correctBucketMy: "ကောင်းသော ကုဒ်ရေးအလေ့အကျင့်",
          ),
          SortingItem(
            id: "y6comp-w4-sort-2",
            labelEn:
                "Guessing what is wrong instead of reading the error message",
            labelMy:
                "အမှားစာတန်းကို မဖတ်ဘဲ အမှားမှာ အဘယ်အရာဖြစ်သည်ကို ခန့်မှန်းခြင်း",
            correctBucketEn: "Coding Mistake to Avoid",
            correctBucketMy: "ရှောင်ရှားရမည့် ကုဒ်ရေးအမှား",
          ),
          SortingItem(
            id: "y6comp-w4-sort-3",
            labelEn: "Giving functions clear, descriptive names",
            labelMy: "Function များကို ရှင်းလင်းသော အမည်များ ပေးခြင်း",
            correctBucketEn: "Good Coding Habit",
            correctBucketMy: "ကောင်းသော ကုဒ်ရေးအလေ့အကျင့်",
          ),
          SortingItem(
            id: "y6comp-w4-sort-4",
            labelEn:
                "Copying code from somewhere without understanding what it does",
            labelMy:
                "မည်သည့်အလုပ်ကို လုပ်ဆောင်သည်ကို နားမလည်ဘဲ တစ်နေရာမှ ကုဒ်ကို ကူးယူခြင်း",
            correctBucketEn: "Coding Mistake to Avoid",
            correctBucketMy: "ရှောင်ရှားရမည့် ကုဒ်ရေးအမှား",
          ),
          SortingItem(
            id: "y6comp-w4-sort-5",
            labelEn: "Adding comments to explain the tricky parts of your code",
            labelMy:
                "သင့်ကုဒ်၏ ခက်ခဲသောအပိုင်းများကို ရှင်းပြရန် comment များ ထည့်သွင်းခြင်း",
            correctBucketEn: "Good Coding Habit",
            correctBucketMy: "ကောင်းသော ကုဒ်ရေးအလေ့အကျင့်",
          ),
          SortingItem(
            id: "y6comp-w4-sort-6",
            labelEn:
                "Ignoring the exact punctuation and spelling a language needs",
            labelMy:
                "ဘာသာစကားတစ်ခု လိုအပ်သော အတိအကျ ပုဒ်ဖြတ်ပုဒ်ရပ်နှင့် စာလုံးပေါင်းကို လျစ်လျူရှုခြင်း",
            correctBucketEn: "Coding Mistake to Avoid",
            correctBucketMy: "ရှောင်ရှားရမည့် ကုဒ်ရေးအမှား",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w4-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Birthday Countdown Program",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ မွေးနေ့ရေတွက်ချက် ပရိုဂရမ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Birthday Countdown Program",
        titleMy: "နှင်းချည်၏ မွေးနေ့ရေတွက်ချက် ပရိုဂရမ်",
        passageEn:
            "For her Term 1 capstone project, Nay Chi decides to build a small program that greets a user and counts down to a birthday. Remembering Ms. Thanda's advice, she plans her steps on paper first: greet the user, print the countdown message three times, then print a final \"Happy Birthday!\" line. Only once her plan is clear does she open the coding app and start typing.\n\nSince the countdown message needs to appear three times, Nay Chi defines a function called printCountdown instead of typing the same line three times over -- a trick she learned in Week 2. She writes her three commands in careful sequence, top to bottom, just as she learned in Week 1: greeting first, countdown messages next, birthday line last. When she presses Run, a red error message appears -- she has forgotten a colon at the end of her function definition, a simple syntax error. She fixes it calmly, remembering that every programmer sees messages like this.\n\nHer program runs, but the countdown prints in the wrong order -- last instead of first. Using the tracing skills from Week 3, Nay Chi adds a temporary print() line and quickly spots her mistake: she had called printCountdown() after the birthday line instead of before it, a logic error in her sequence. She moves the line to the correct place, tests the program one more time, and watches the greeting, the countdown, and \"Happy Birthday!\" appear in exactly the right order. Nay Chi saves her finished program, ready to show Ms. Thanda and her classmates what a term of sequence, functions and debugging has helped her build.",
        passageMy:
            "Term 1 ၏ capstone project အတွက် နှင်းချည်သည် အသုံးပြုသူကို နှုတ်ဆက်ပြီး မွေးနေ့ကို ရေတွက်ပေးမည့် ပရိုဂရမ်ငယ်တစ်ခု တည်ဆောက်ရန် ဆုံးဖြတ်လိုက်သည်။ ဒေါ်သန္တာ၏ အကြံဉာဏ်ကို သတိရလျက် သူမသည် သူမ၏ အဆင့်များကို စက္ကူပေါ်တွင် ဦးစွာစီစဉ်လိုက်သည် -- အသုံးပြုသူကို နှုတ်ဆက်ရန်၊ ရေတွက်ချက် message ကို သုံးကြိမ် ပုံနှိပ်ရန်၊ ထို့နောက် \"Happy Birthday!\" ဟူသော နောက်ဆုံးလိုင်းကို ပုံနှိပ်ရန်။ သူမ၏ စီစဉ်ချက် ရှင်းလင်းသွားမှသာ ကုဒ်ရေးအက်ပ်ကို ဖွင့်ပြီး ရိုက်ထည့်စတင်သည်။\n\nရေတွက်ချက် message ကို သုံးကြိမ် ပေါ်ရန် လိုအပ်သောကြောင့် နှင်းချည်သည် တူညီသော လိုင်းကို သုံးကြိမ် ရိုက်ထည့်မည့်အစား Week 2 တွင် သင်ယူခဲ့သော နည်းလမ်းအတိုင်း printCountdown ဟု အမည်ပေးထားသော function တစ်ခု define လုပ်လိုက်သည်။ Week 1 တွင် သင်ယူခဲ့သည့်အတိုင်း command သုံးကြောင်းကို အပေါ်ဆုံးမှ အောက်ဆုံးသို့ ဂရုတစိုက် အစီအစဉ်လိုက် ရေးသည် -- နှုတ်ဆက်စကားကို ဦးဆုံး၊ ရေတွက်ချက် message များကို ဒုတိယ၊ မွေးနေ့လိုင်းကို နောက်ဆုံးတွင် ထားသည်။ Run ကို နှိပ်လိုက်သောအခါ အနီရောင် အမှားစာတန်းတစ်ခု ပေါ်လာသည် -- သူမသည် function definition အဆုံးတွင် colon ကို မေ့ကျန်ခဲ့ခြင်း၊ ရိုးရှင်းသော syntax error တစ်ခုသာ ဖြစ်သည်။ ပရိုဂရမ်မာတိုင်းသည် ဤကဲ့သို့ စာတန်းများကို မြင်ရသည်ကို သတိရလျက် တည်ငြိမ်စွာ ပြင်ဆင်လိုက်သည်။\n\nသူမ၏ ပရိုဂရမ် အလုပ်လုပ်လာသော်လည်း ရေတွက်ချက်သည် မှားယွင်းသောအစီအစဉ်ဖြင့် ပုံနှိပ်နေသည် -- ဦးစွာအစား နောက်ဆုံးတွင် ပေါ်နေသည်။ Week 3 မှ trace နည်းလမ်းကို အသုံးပြု၍ နှင်းချည်သည် ယာယီ print() လိုင်းတစ်ခု ထည့်သွင်းလိုက်ရာ သူမ၏အမှားကို လျင်မြန်စွာ တွေ့ရှိလိုက်သည် -- သူမသည် printCountdown() ကို မွေးနေ့လိုင်းရှေ့တွင် မဟုတ်ဘဲ နောက်တွင် ခေါ်မိခဲ့ခြင်း၊ သူမ၏ sequence ထဲရှိ logic error တစ်ခုဖြစ်သည်။ လိုင်းကို မှန်ကန်သောနေရာသို့ ရွှေ့ပြီး ပရိုဂရမ်ကို နောက်တစ်ကြိမ် စမ်းသပ်ရာ နှုတ်ဆက်စကား၊ ရေတွက်ချက်နှင့် \"Happy Birthday!\" တို့ မှန်ကန်သောအစီအစဉ်ဖြင့် အတိအကျ ပေါ်လာသည်ကို တွေ့ရသည်။ နှင်းချည်သည် ပြီးစီးသွားသော ပရိုဂရမ်ကို သိမ်းဆည်းလိုက်ပြီး ဒေါ်သန္တာနှင့် အတန်းဖော်များအား sequence၊ function နှင့် debugging သင်တန်းအပတ်စု တစ်ခုလုံးက သူမကို အဘယ်အရာ တည်ဆောက်ရန် ကူညီပေးခဲ့သည်ကို ပြသရန် အသင့်ဖြစ်နေပြီ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did Nay Chi do before opening the coding app to start her capstone project?",
            questionMy:
                "Capstone project ကို စတင်ရန် ကုဒ်ရေးအက်ပ်ကို မဖွင့်မီ နှင်းချည် အဘယ်အရာ လုပ်ခဲ့သနည်း။",
            optionsEn: [
              "She planned her steps on paper first",
              "She asked her friend to write it for her",
              "She deleted all her old programs",
              "She skipped straight to typing without a plan",
            ],
            optionsMy: [
              "သူမ၏ အဆင့်များကို စက္ကူပေါ်တွင် ဦးစွာစီစဉ်ခဲ့သည်",
              "ရေးပေးရန် သူငယ်ချင်းကို တောင်းဆိုခဲ့သည်",
              "သူမ၏ ပရိုဂရမ်ဟောင်းများအားလုံးကို ဖျက်ပစ်ခဲ့သည်",
              "စီစဉ်ချက်မရှိဘဲ ရိုက်ထည့်ခြင်းကို တိုက်ရိုက် ကျော်သွားခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why did Nay Chi define a function called printCountdown instead of typing the countdown message three separate times?",
            questionMy:
                "ရေတွက်ချက် message ကို နေရာသုံးနေရာစီ ရိုက်ထည့်မည့်အစား printCountdown ဟု အမည်ပေးထားသော function တစ်ခု ဘာကြောင့် define လုပ်ခဲ့သနည်း။",
            optionsEn: [
              "To reuse the same code without repeating it, as she learned in Week 2",
              "Because the app would not allow her to repeat any line",
              "Because functions run faster than any other code",
              "Because Ms. Thanda told her to delete the countdown feature",
            ],
            optionsMy: [
              "Week 2 တွင် သင်ယူခဲ့သည့်အတိုင်း ကုဒ်ကို ထပ်ခါတလဲလဲ မရေးဘဲ ပြန်လည်အသုံးပြုရန်",
              "အက်ပ်က လိုင်းတစ်ခုကို ထပ်ခွင့်မပြုသောကြောင့်",
              "Function များသည် အခြားကုဒ်ထက် ပိုမြန်စွာ အလုပ်လုပ်သောကြောင့်",
              "ဒေါ်သန္တာက countdown feature ကို ဖျက်ပစ်ရန် ပြောခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What was the first error Nay Chi's program showed, and what kind of error was it?",
            questionMy:
                "နှင်းချည်၏ ပရိုဂရမ်က ပထမဆုံးပြသသော error မှာ အဘယ်နည်း၊ ၎င်းသည် မည်သည့် error အမျိုးအစားဖြစ်သနည်း။",
            optionsEn: [
              "A missing colon at the end of a function definition -- a syntax error",
              "A wrong total from adding numbers -- a logic error",
              "A missing internet connection -- a network error",
              "A wrong password -- a login error",
            ],
            optionsMy: [
              "Function definition အဆုံးတွင် ပျောက်နေသော colon -- syntax error",
              "ဂဏန်းများကို ပေါင်းရာမှ ရလဒ်မှား -- logic error",
              "ပျောက်နေသော အင်တာနက်ချိတ်ဆက်မှု -- network error",
              "မှားယွင်းသော စကားဝှက် -- login error",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What was wrong with the program even after the first error was fixed?",
            questionMy:
                "ပထမဆုံးအမှားကို ပြင်ပြီးနောက်တောင် ပရိုဂရမ်တွင် အဘယ်အရာ ဆက်လက်မှားယွင်းနေသေးသနည်း။",
            optionsEn: [
              "The countdown printed in the wrong order because it was called after the birthday line",
              "The program refused to run at all",
              "The text was printed in the wrong colour",
              "The file would not save",
            ],
            optionsMy: [
              "Countdown ကို မွေးနေ့လိုင်း၏ နောက်တွင် ခေါ်ခဲ့သောကြောင့် မှားယွင်းသောအစီအစဉ်ဖြင့် ပုံနှိပ်ခဲ့ခြင်း",
              "ပရိုဂရမ် လုံးဝ အလုပ်မလုပ်ခဲ့ပါ",
              "စာသားကို မှားယွင်းသောအရောင်ဖြင့် ပုံနှိပ်ခဲ့ခြင်း",
              "ဖိုင် သိမ်းဆည်း၍ မရခဲ့ပါ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Nay Chi's finished program prove about her Term 1 learning?",
            questionMy:
                "နှင်းချည်၏ ပြီးစီးသွားသော ပရိုဂရမ်က သူမ၏ Term 1 သင်ယူမှုနှင့်ပတ်သက်၍ အဘယ်အရာကို သက်သေပြခဲ့သနည်း။",
            optionsEn: [
              "That she could combine sequence, functions and debugging to build a working program",
              "That functions are never useful in real programs",
              "That syntax errors cannot ever be fixed",
              "That planning a program is a waste of time",
            ],
            optionsMy: [
              "Sequence၊ function နှင့် debugging တို့ကို ပေါင်းစပ်ကာ အလုပ်လုပ်သော ပရိုဂရမ်တစ်ခု တည်ဆောက်နိုင်ကြောင်း",
              "Function များသည် အမှန်တကယ် ပရိုဂရမ်များတွင် အသုံးမဝင်ကြောင်း",
              "Syntax error များကို ဘယ်တော့မှ ပြင်၍မရနိုင်ကြောင်း",
              "ပရိုဂရမ်တစ်ခုကို စီစဉ်ခြင်းသည် အချိန်ဖြုန်းခြင်းသာဖြစ်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w4-d5",
      dayNumber: 5,
      titleEn: "Term 1 Round-Up: Sequence, Functions and Debugging",
      titleMy: "Term 1 အနှစ်ချုပ် - Sequence၊ Function နှင့် Debugging",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In text-based coding, what determines the order in which the computer follows your commands?",
          questionMy:
              "စာသားအခြေပြု ကုဒ်ရေးတွင် ကွန်ပျူတာက command များကို လိုက်နာသည့် အစီအစဉ်ကို အဘယ်အရာက ဆုံးဖြတ်သနည်း။",
          optionsEn: [
            "The colour of the text",
            "The sequence they are written in, top to bottom",
            "A random choice made by the computer",
            "The length of each line",
          ],
          optionsMy: [
            "စာသား၏ အရောင်",
            "အပေါ်ဆုံးမှ အောက်ဆုံးသို့ ရေးထားသော sequence",
            "ကွန်ပျူတာက ကျပန်းရွေးချယ်ခြင်း",
            "လိုင်းတစ်ခုစီ၏ အရှည်",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn: "What is the main reason programmers use functions?",
          questionMy:
              "ပရိုဂရမ်မာများ function များကို အသုံးပြုကြသည့် အဓိကအကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "To make text a different colour",
            "To reuse a block of code without retyping it every time",
            "To slow down the program on purpose",
            "To connect the program to the internet",
          ],
          optionsMy: [
            "စာသားကို အခြားအရောင်တစ်ခု ပြောင်းရန်",
            "ကုဒ်အပိုင်းတစ်ခုကို အကြိမ်တိုင်း ပြန်မရိုက်ဘဲ ပြန်လည်အသုံးပြုရန်",
            "ပရိုဂရမ်ကို တမင် နှေးကွေးစေရန်",
            "ပရိုဂရမ်ကို အင်တာနက်နှင့် ချိတ်ဆက်ရန်",
          ],
          correctIndex: 1,
        ),
        QuizQuestion(
          questionEn:
              "What is the key difference between a syntax error and a logic error?",
          questionMy:
              "Syntax error နှင့် logic error တို့၏ အဓိကကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A syntax error breaks the language's spelling or punctuation rules; a logic error runs fine but gives the wrong result",
            "They are exactly the same thing",
            "A syntax error only happens in reading passages",
            "A logic error always stops the computer from turning on",
          ],
          optionsMy: [
            "Syntax error သည် ဘာသာစကား၏ စာလုံးပေါင်း သို့မဟုတ် ပုဒ်ဖြတ်ပုဒ်ရပ် စည်းမျဉ်းကို ချိုးဖောက်ခြင်းဖြစ်ပြီး၊ logic error သည် ကုဒ်အလုပ်လုပ်သော်လည်း မှားယွင်းသောရလဒ်ရသည့်ပြဿနာဖြစ်သည်",
            "ဤနှစ်ခုသည် လုံးဝ တူညီသည်",
            "Syntax error သည် စာဖတ်ခန်းများတွင်သာ ဖြစ်ပေါ်သည်",
            "Logic error သည် ကွန်ပျူတာကို ဖွင့်၍ မရအောင် အမြဲတားဆီးသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's capstone program, what caused her logic error?",
          questionMy:
              "နှင်းချည်၏ capstone ပရိုဂရမ်တွင် logic error ဖြစ်စေသော အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "She called her countdown function in the wrong place in the sequence",
            "She forgot a colon at the end of her function",
            "She used the wrong coding app entirely",
            "She never tested her program at all",
          ],
          optionsMy: [
            "Sequence ထဲတွင် countdown function ကို မှားယွင်းသောနေရာ၌ ခေါ်မိခဲ့ခြင်း",
            "Function ၏အဆုံးတွင် colon ကို မေ့ကျန်ခဲ့ခြင်း",
            "လုံးဝ မှားယွင်းသော ကုဒ်ရေးအက်ပ်ကို သုံးခဲ့ခြင်း",
            "သူမ၏ ပရိုဂရမ်ကို လုံးဝ မစမ်းသပ်ခဲ့ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which of these best summarises what Term 1 taught Nay Chi about writing text-based code?",
          questionMy:
              "Term 1 က နှင်းချည်အား စာသားအခြေပြု ကုဒ်ရေးသားခြင်းနှင့်ပတ်သက်၍ သင်ပေးခဲ့သည့်အချက်ကို အောက်ပါတို့တွင် အဘယ်ကောင်းစွာ အနှစ်ချုပ်ဖော်ပြသနည်း။",
          optionsEn: [
            "Careful sequence, reusable functions and calm debugging together help build a working program",
            "Only block-based coding can be used to build real programs",
            "Testing a program is unnecessary once it is written",
            "Error messages should always be ignored",
          ],
          optionsMy: [
            "ဂရုတစိုက် sequence၊ ပြန်လည်အသုံးပြုနိုင်သော function များနှင့် တည်ငြိမ်သော debugging တို့ပေါင်းစပ်ခြင်းက အလုပ်လုပ်သော ပရိုဂရမ်တစ်ခု တည်ဆောက်ရာတွင် ကူညီပေးသည်",
            "ဘလောက်အခြေပြု ကုဒ်ရေးကိုသာ အသုံးပြု၍ ပရိုဂရမ်စစ်စစ်များ တည်ဆောက်နိုင်သည်",
            "ပရိုဂရမ်တစ်ခုကို ရေးပြီးလျှင် စမ်းသပ်ရန် မလိုအပ်တော့ပါ",
            "အမှားစာတန်းများကို အမြဲ လျစ်လျူရှုသင့်သည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _year6ComputingTerm1 = CourseTermDef(
  id: "course-year6-computing-t1",
  termNumber: 1,
  titleEn: "Text-Based Coding Basics",
  titleMy: "စာသားအခြေပြု ကုဒ်ရေးသားခြင်း အခြေခံများ",
  certificateTitleEn: "Text-Based Coding Explorer",
  certificateTitleMy: "စာသားအခြေပြု ကုဒ်ရေးသားခြင်း စူးစမ်းရှာဖွေသူ",
  weeks: [
    _year6ComputingWeek1,
    _year6ComputingWeek2,
    _year6ComputingWeek3,
    _year6ComputingWeek4,
  ],
);
