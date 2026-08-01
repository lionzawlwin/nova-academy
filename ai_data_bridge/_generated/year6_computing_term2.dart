// File: ai_data_bridge/_generated/year6_computing_term2.dart
// Year 6 Computing -- Term 2: "Web Page Creation" (absolute Weeks 5-8).
// Staging artifact only -- not yet wired into course_pathway_bank.dart's
// Grade.year6 pathway. Follows on from Term 1 (text-based coding basics:
// sequence, simple functions, debugging) by moving pupils into a new
// domain -- building real web pages with HTML -- while spiralling back to
// last term's "every rule has to be followed exactly, or things break"
// lesson from a fresh angle (tags instead of colons and function calls).
// Protagonist Nay Chi, a Nova School student, recurs across quiz flavour
// text and every Day 4 reading passage this term.
//
// Week 5 (Building Your First Web Page): what HTML is, tags/elements,
// the <html>/<head>/<body> skeleton, and heading/paragraph tags -- opens
// with Nay Chi recalling her Term 1 "Birthday Countdown" capstone to
// connect syntax discipline to tag discipline. Week 6 (Images and Links):
// the <img> tag with src/alt attributes, the <a> tag with href, and why
// alt text matters for accessibility. Week 7 (Designing a Simple Page):
// ordered/unordered lists, planning a page with a wireframe before
// coding, and good vs. poor page-design habits. Week 8 (Capstone -- Nay
// Chi's Personal Web Page Project, boss week): planning, building,
// testing and debugging her own "All About Me & My Hobbies" page --
// catching a broken image caused by a missing quotation mark, echoing
// last term's forgotten-colon bug -- with the recap day reviewing the
// whole term.

const CourseWeekDef _year6ComputingWeek5 = CourseWeekDef(
  id: "course-year6-computing-w5",
  weekNumber: 5,
  titleEn: "Building Your First Web Page",
  titleMy: "သင့်ပထမဆုံး ဝက်ဘ်စာမျက်နှာ တည်ဆောက်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w5-d1",
      dayNumber: 1,
      titleEn: "What Makes a Web Page?",
      titleMy: "ဝက်ဘ်စာမျက်နှာကို အဘယ်အရာက ဖန်တီးသနည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does the abbreviation HTML stand for?",
          questionMy: "HTML ဟူသော အတိုကောက်စကား၏ အဓိပ္ပာယ်မှာ အဘယ်နည်း။",
          optionsEn: [
            "HyperText Markup Language",
            "Hyper Typed Machine Language",
            "High Text Making Language",
            "Home Tool Markup Language",
          ],
          optionsMy: [
            "HyperText Markup Language",
            "Hyper Typed Machine Language",
            "High Text Making Language",
            "Home Tool Markup Language",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the correct name for a keyword written inside angle brackets, such as <h1>, that tells a browser how to display content?",
          questionMy:
              "<h1> ကဲ့သို့ ထောင့်ကွင်းများအတွင်း ရေးထားပြီး ဘရောက်ဇာကို အကြောင်းအရာ မည်သို့ပြသရမည် ညွှန်ကြားပေးသည့် စကားလုံးကို အဘယ်နာမည်ဖြင့် ခေါ်သနည်း။",
          optionsEn: ["A tag", "A sequence", "A variable", "A sensor"],
          optionsMy: [
            "Tag (တဂ်)",
            "Sequence (အစီအစဉ်လိုက်)",
            "Variable (ကိန်းရွေ့)",
            "Sensor (အာရုံခံကိရိယာ)",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Almost every HTML tag that opens, such as <p>, needs a matching closing version. What is that closing version called?",
          questionMy:
              "<p> ကဲ့သို့ ဖွင့်လှစ်သော HTML tag အားလုံးနီးပါးသည် ၎င်းနှင့်ကိုက်ညီသော အဆုံးသတ် tag တစ်ခု လိုအပ်သည်။ ထိုအဆုံးသတ် tag ကို အဘယ်ဟု ခေါ်သနည်း။",
          optionsEn: ["A closing tag", "A colon", "A loop", "A sensor"],
          optionsMy: [
            "ပိတ်တဂ် (closing tag)",
            "ကော်လံ (colon)",
            "ပတ်ချာလှည့်ခြင်း (loop)",
            "အာရုံခံကိရိယာ (sensor)",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which part of the basic HTML skeleton -- <html>, <head>, or <body> -- holds the content visitors actually see displayed in the browser window?",
          questionMy:
              "အခြေခံ HTML ဖွဲ့စည်းပုံ <html>၊ <head>၊ <body> အနက် မည်သည့်အပိုင်းသည် ဝင်ရောက်ကြည့်ရှုသူများ ဘရောက်ဇာဝင်းဒိုးထဲတွင် တကယ်တွေ့မြင်ရသော အကြောင်းအရာကို သယ်ဆောင်ထားသနည်း။",
          optionsEn: ["<body>", "<head>", "<title>", "<html>"],
          optionsMy: ["<body>", "<head>", "<title>", "<html>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi types <h1>My Hobbies<h1> instead of <h1>My Hobbies</h1>. Using the vocabulary she learned in Term 1, what kind of mistake is this?",
          questionMy:
              "နှင်းချည်သည် <h1>My Hobbies</h1> ဟု ရေးရမည့်နေရာတွင် <h1>My Hobbies<h1> ဟု ရိုက်ထည့်မိသည်။ သူမ Term 1 က သင်ခဲ့သော ဝေါဟာရကို သုံး၍ ဆိုရလျှင် ဤသည်မှာ မည်သည့်အမှားအမျိုးအစားနည်း။",
          optionsEn: [
            "A syntax error, because the closing-tag rule was broken",
            "A logic error, because the heading text itself is wrong",
            "A hardware error, because the keyboard is broken",
            "A binary error, because a 0 was typed instead of a 1",
          ],
          optionsMy: [
            "Syntax error တစ်ခုဖြစ်သည်၊ အကြောင်းမှာ ပိတ်တဂ်စည်းမျဉ်းကို ချိုးဖောက်မိသောကြောင့်ဖြစ်သည်",
            "Logic error တစ်ခုဖြစ်သည်၊ အကြောင်းမှာ heading စာသားကိုယ်တိုင် မှားနေသောကြောင့်ဖြစ်သည်",
            "Hardware error တစ်ခုဖြစ်သည်၊ အကြောင်းမှာ ကီးဘုတ် ပျက်နေသောကြောင့်ဖြစ်သည်",
            "Binary error တစ်ခုဖြစ်သည်၊ အကြောင်းမှာ 1 အစား 0 ကို ရိုက်မိသောကြောင့်ဖြစ်သည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w5-d2",
      dayNumber: 2,
      titleEn: "Match the Web Page Vocabulary",
      titleMy: "ဝက်ဘ်စာမျက်နှာ ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w5-dm-1",
          termEn: "HTML",
          termMy: "HTML",
          matchEn:
              "The standard markup language used to structure content on a web page",
          matchMy:
              "ဝက်ဘ်စာမျက်နှာတစ်ခုပေါ်ရှိ အကြောင်းအရာကို ဖွဲ့စည်းရန် အသုံးပြုသည့် စံသတ်မှတ်ထားသော markup ဘာသာစကား",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w5-dm-2",
          termEn: "Tag",
          termMy: "Tag (တဂ်)",
          matchEn:
              "A keyword inside angle brackets, like <p>, that marks up part of a web page",
          matchMy:
              "<p> ကဲ့သို့ ထောင့်ကွင်းများအတွင်းရှိပြီး ဝက်ဘ်စာမျက်နှာ၏ တစ်စိတ်တစ်ပိုင်းကို အမှတ်အသားပြုပေးသော စကားလုံး",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w5-dm-3",
          termEn: "Element",
          termMy: "Element (အစိတ်အပိုင်း)",
          matchEn:
              "An HTML tag together with the content it wraps, from its opening tag to its closing tag",
          matchMy:
              "HTML tag တစ်ခုနှင့် ၎င်းထုပ်ထားသော အကြောင်းအရာအားလုံး ပေါင်းစပ်ထားသည့် ဖွင့်တဂ်မှ ပိတ်တဂ်အထိ တစ်ခုလုံး",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w5-dm-4",
          termEn: "Heading",
          termMy: "Heading (ခေါင်းစဉ်တဂ်)",
          matchEn:
              "A tag that shows a title or section title, ranked from <h1> the biggest down to <h6> the smallest",
          matchMy:
              "ခေါင်းစဉ် သို့မဟုတ် အပိုင်းခေါင်းစဉ်ကို ပြသသည့် tag၊ အကြီးဆုံး <h1> မှ အသေးဆုံး <h6> အထိ အဆင့်ခွဲထားသည်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w5-dm-5",
          termEn: "Paragraph",
          termMy: "Paragraph (စာပိုဒ်တဂ်)",
          matchEn:
              "A tag, written as <p>, that marks up a block of ordinary text",
          matchMy: "သာမန်စာသားအတုံးတစ်ခုကို အမှတ်အသားပြုသည့် <p> ဟုရေးသော tag",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w5-dm-6",
          termEn: "Browser",
          termMy: "Browser (ကြည့်ရှုကိရိယာ)",
          matchEn:
              "The program, such as Chrome or Firefox, that reads HTML and displays it as a web page",
          matchMy:
              "Chrome သို့မဟုတ် Firefox ကဲ့သို့ HTML ကို ဖတ်ပြီး ဝက်ဘ်စာမျက်နှာအဖြစ်ပြသပေးသော ပရိုဂရမ်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w5-d3",
      dayNumber: 3,
      titleEn: "Sort: Structure Tag or Heading Tag?",
      titleMy: "စီစစ်ကြမည် - ဖွဲ့စည်းပုံတဂ်လား၊ ခေါင်းစဉ်တဂ်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Page-Structure Tag", "Heading Tag"],
        bucketsMy: ["စာမျက်နှာဖွဲ့စည်းပုံတဂ်", "ခေါင်းစဉ်တဂ်"],
        items: [
          SortingItem(
            id: "y6comp-w5-sort-1",
            labelEn: "<html>",
            labelMy: "<html>",
            correctBucketEn: "Page-Structure Tag",
            correctBucketMy: "စာမျက်နှာဖွဲ့စည်းပုံတဂ်",
          ),
          SortingItem(
            id: "y6comp-w5-sort-2",
            labelEn: "<head>",
            labelMy: "<head>",
            correctBucketEn: "Page-Structure Tag",
            correctBucketMy: "စာမျက်နှာဖွဲ့စည်းပုံတဂ်",
          ),
          SortingItem(
            id: "y6comp-w5-sort-3",
            labelEn: "<body>",
            labelMy: "<body>",
            correctBucketEn: "Page-Structure Tag",
            correctBucketMy: "စာမျက်နှာဖွဲ့စည်းပုံတဂ်",
          ),
          SortingItem(
            id: "y6comp-w5-sort-4",
            labelEn: "<h1>",
            labelMy: "<h1>",
            correctBucketEn: "Heading Tag",
            correctBucketMy: "ခေါင်းစဉ်တဂ်",
          ),
          SortingItem(
            id: "y6comp-w5-sort-5",
            labelEn: "<h2>",
            labelMy: "<h2>",
            correctBucketEn: "Heading Tag",
            correctBucketMy: "ခေါင်းစဉ်တဂ်",
          ),
          SortingItem(
            id: "y6comp-w5-sort-6",
            labelEn: "<h3>",
            labelMy: "<h3>",
            correctBucketEn: "Heading Tag",
            correctBucketMy: "ခေါင်းစဉ်တဂ်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w5-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's First Web Page",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ ပထမဆုံး ဝက်ဘ်စာမျက်နှာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's First Web Page",
        titleMy: "နှင်းချည်၏ ပထမဆုံး ဝက်ဘ်စာမျက်နှာ",
        passageEn:
            "Nay Chi had just finished her Term 1 capstone -- a working \"Birthday Countdown\" program she had planned, coded, tested, and finally fixed after catching a forgotten colon and a mis-ordered function call. She felt proud that a working program came from being careful about every small detail. So when her computing teacher opened a new folder on the class app called \"Web Pages,\" Nay Chi leaned forward, curious to see what new kind of careful work was waiting for her.\n\n\"A web page uses HTML instead of function calls,\" her teacher explained, \"but the golden rule is the same one you already know -- every tag has to be written exactly right, and most opening tags need a matching closing tag, just like your code needed its colon in the right place.\" Nay Chi typed her first lines: <html>, then <head> with a <title> inside it, then <body>, and finally <h1>About Nay Chi</h1> followed by <p>I am a Year 6 student at Nova School who loves coding and drawing.</p>. She double-checked that every tag she opened had a matching closing tag, the same careful habit that had saved her Birthday Countdown program.\n\nWhen she previewed her page in the browser, her heading and paragraph appeared exactly as she had planned, cleanly arranged on the screen. Nay Chi smiled, realising that the discipline that had fixed her forgotten colon last term was the very same discipline that had just built her very first web page -- get the small details right, and the whole thing works.",
        passageMy:
            "နှင်းချည်သည် Term 1 capstone အလုပ်ဖြစ်သော \"မွေးနေ့ရေတွက်ချိန်\" ပရိုဂရမ်ကို စီစဉ်ရေးသား၊ စမ်းသပ်ပြီးနောက် မေ့ကျန်ခဲ့သော colon တစ်ခုနှင့် မှားယွင်းစွာ ခေါ်မိသော function ကို ရှာဖွေပြင်ဆင်ကာ အောင်မြင်စွာ အလုပ်လုပ်စေခဲ့သည်ကို ခုတင်ကုန်ဆုံးခဲ့ပြီးစီးစွာဖြင့်။ အသေးစိတ်အချက်တိုင်းကို ဂရုစိုက်ခြင်းကြောင့် အလုပ်လုပ်သောပရိုဂရမ်တစ်ခု ရရှိခဲ့သည်ဟု သူမ ဂုဏ်ယူခဲ့သည်။ ထို့ကြောင့် ကွန်ပျူတာဆရာမက အတန်းအက်ပ်ပေါ်တွင် \"Web Pages\" ဟူသော ဖိုင်တွဲသစ်တစ်ခုကို ဖွင့်လိုက်သောအခါ နှင်းချည်သည် ရှေ့သို့ ငုံ့လိုက်ပြီး မိမိကို ငံ့လင့်နေသော ဂရုစိုက်ရမည့်အလုပ်သစ်ကို စိတ်ဝင်တစားကြည့်ခဲ့သည်။\n\n\"ဝက်ဘ်စာမျက်နှာတစ်ခုသည် function ခေါ်ယူမှုအစား HTML ကို သုံးတယ်\" ဟု ဆရာမက ရှင်းပြခဲ့သည်၊ \"ဒါပေမယ့် ရွှေစည်းမျဉ်းက သင်သိပြီးသားနှင့် အတူတူပါပဲ -- tag တိုင်းကို အတိအကျ ရေးရမယ်၊ ဖွင့်တဂ်အများစုက ကိုက်ညီတဲ့ ပိတ်တဂ် တစ်ခု လိုအပ်တယ်၊ သင့်ကုဒ်မှာ colon ကို မှန်ကန်တဲ့နေရာမှာ လိုအပ်ခဲ့တာနဲ့ အတူတူပဲ\" ။ နှင်းချည်သည် သူမ၏ ပထမဆုံးလိုင်းများကို ရိုက်ထည့်ခဲ့သည် -- <html>, ထို့နောက် <title> ပါဝင်သော <head>, ထို့နောက် <body>, နောက်ဆုံးတွင် <h1>About Nay Chi</h1> ပြီးနောက် <p>I am a Year 6 student at Nova School who loves coding and drawing.</p> ။ သူမဖွင့်လှစ်ထားသော tag တိုင်းတွင် ကိုက်ညီသော ပိတ်တဂ်ရှိမရှိကို နှစ်ကြိမ်ပြန်စစ်ဆေးခဲ့သည်၊ ၎င်းသည် သူမ၏ မွေးနေ့ရေတွက်ချိန်ပရိုဂရမ်ကို ကယ်တင်ခဲ့သော ဂရုတစိုက်လေ့ကျင့်မှု အတိအတိပင်ဖြစ်သည်။\n\nဘရောက်ဇာတွင် သူမ၏စာမျက်နှာကို ကြိုတင်ကြည့်ရှုသောအခါ သူမစီစဉ်ထားခဲ့သည့်အတိုင်း ခေါင်းစဉ်နှင့် စာပိုဒ်တို့သည် စင်ကြယ်စွာ စခရင်ပေါ်တွင် ပေါ်လာခဲ့သည်။ နှင်းချည်သည် ပြုံးခဲ့သည်၊ ဂတ်တနေ့က သူမ၏ မေ့ကျန်ခဲ့သော colon ကို ပြင်ဆင်ပေးခဲ့သော စည်းကမ်းသည် ယခုပင် သူမ၏ ပထမဆုံးဝက်ဘ်စာမျက်နှာကို တည်ဆောက်ပေးခဲ့သော စည်းကမ်းအတိအတိပင်ဖြစ်ကြောင်း သဘောပေါက်ခဲ့သည် -- အသေးစိတ်အချက်များကို မှန်ကန်စွာလုပ်ပါက၊ တစ်ခုလုံး အလုပ်လုပ်လိမ့်မည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did Nay Chi's Term 1 capstone program help her fix?",
            questionMy:
                "နှင်းချည်၏ Term 1 capstone ပရိုဂရမ်က သူမ ဘာကို ရှာဖွေပြင်ဆင်ရန် ကူညီခဲ့သနည်း။",
            optionsEn: [
              "A forgotten colon and a mis-ordered function call",
              "A broken keyboard",
              "A missing image file",
              "A slow internet connection",
            ],
            optionsMy: [
              "မေ့ကျန်ခဲ့သော colon နှင့် မှားယွင်းစွာအစီအစဉ်ချထားသော function ခေါ်ယူမှု",
              "ပျက်နေသော ကီးဘုတ်",
              "ပျောက်ဆုံးနေသော ပုံဖိုင်",
              "နှေးကွေးနေသော အင်တာနက်ချိတ်ဆက်မှု",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to Nay Chi's teacher, what is the \"golden rule\" that HTML and her Term 1 code share?",
            questionMy:
                "နှင်းချည်၏ဆရာမ ပြောသည့်အတိုင်း HTML နှင့် သူမ၏ Term 1 ကုဒ်တို့ ဝေမျှသော \"ရွှေစည်းမျဉ်း\" ကား အဘယ်နည်း။",
            optionsEn: [
              "Every tag or piece of syntax must be written exactly right",
              "Colours must always match perfectly",
              "Every page must have exactly one image",
              "Code must always be written in Burmese",
            ],
            optionsMy: [
              "Tag တိုင်း သို့မဟုတ် syntax တိုင်းကို အတိအကျ ရေးရမည်",
              "အရောင်များသည် အမြဲတမ်း အပြည့်အဝကိုက်ညီရမည်",
              "စာမျက်နှာတိုင်းတွင် ပုံတစ်ပုံတိတိ ရှိရမည်",
              "ကုဒ်ကို မြန်မာဘာသာဖြင့်သာ ရေးရမည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which tags did Nay Chi type to build the visible content of her page?",
            questionMy:
                "နှင်းချည်သည် သူမ၏စာမျက်နှာ၏ မြင်ရသောအကြောင်းအရာများကို တည်ဆောက်ရန် မည်သည့် tag များကို ရိုက်ထည့်ခဲ့သနည်း။",
            optionsEn: [
              "<h1> and <p>",
              "<head> and <title> only",
              "A drag-and-drop block only",
              "A single function definition",
            ],
            optionsMy: [
              "<h1> နှင့် <p>",
              "<head> နှင့် <title> သာ",
              "ဆွဲယူတွယ်ကပ်ဘလောက် တစ်ခုတည်း",
              "function တစ်ခုတည်း၏ အနက်ဖွင့်ချက်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Nay Chi double-check before previewing her page, based on her Term 1 habits?",
            questionMy:
                "သူမ၏ Term 1 အကျင့်များအပေါ်အခြေခံပြီး နှင်းချည်သည် သူမ၏စာမျက်နှာကို ကြိုတင်မကြည့်မီ ဘာကို နှစ်ကြိမ်ပြန်စစ်ဆေးခဲ့သနည်း။",
            optionsEn: [
              "That every opening tag had a matching closing tag",
              "That her computer's battery was full",
              "That her file was saved with a picture name",
              "That the browser was set to a different language",
            ],
            optionsMy: [
              "ဖွင့်လှစ်ထားသော tag တိုင်းတွင် ကိုက်ညီသော ပိတ်တဂ်ရှိမရှိ",
              "ကွန်ပျူတာ၏ ဘက်ထရီအပြည့်ရှိမရှိ",
              "ဖိုင်ကို ပုံအမည်တစ်ခုဖြင့် သိမ်းဆည်းထားမရှိ",
              "ဘရောက်ဇာကို ဘာသာစကားတခြားသို့ ချိန်ညှိထားမရှိ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What lesson does the passage suggest Nay Chi carries from Term 1 into her web page work?",
            questionMy:
                "ဤစာပိုဒ်က နှင်းချည်သည် Term 1 မှ သူမ၏ ဝက်ဘ်စာမျက်နှာအလုပ်ထဲသို့ မည်သည့်သင်ခန်းစာကို ယူဆောင်လာသည်ဟု အကြံပြုသနည်း။",
            optionsEn: [
              "Getting the small details exactly right makes the whole project work",
              "Web pages never need to be checked before publishing",
              "Only functions matter, not tags",
              "Colons are only used in web pages, never in code",
            ],
            optionsMy: [
              "အသေးစိတ်အချက်များကို အတိအကျ လုပ်ခြင်းက စီမံကိန်းတစ်ခုလုံးအား အလုပ်လုပ်စေသည်",
              "ဝက်ဘ်စာမျက်နှာများကို ထုတ်ဝေမီ စစ်ဆေးရန် လုံးဝမလိုအပ်ပါ",
              "Function များသာ အရေးကြီးပြီး tag များ အရေးမကြီးပါ",
              "Colon များကို ဝက်ဘ်စာမျက်နှာများတွင်သာ သုံးပြီး ကုဒ်တွင် လုံးဝမသုံးပါ",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w5-d5",
      dayNumber: 5,
      titleEn: "First Web Page Round-Up",
      titleMy: "ပထမဆုံး ဝက်ဘ်စာမျက်နှာ အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is HTML used for?",
          questionMy: "HTML ကို မည်သည့်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Structuring content on a web page",
            "Playing music files",
            "Storing photos on a phone",
            "Charging a laptop battery",
          ],
          optionsMy: [
            "ဝက်ဘ်စာမျက်နှာပေါ်ရှိ အကြောင်းအရာများကို ဖွဲ့စည်းရန်",
            "ဂီတဖိုင်များ ဖွင့်ရန်",
            "ဖုန်းပေါ်တွင် ဓာတ်ပုံများ သိမ်းဆည်းရန်",
            "လက်ပ်တော့ ဘက်ထရီ အားသွင်းရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which tag holds the content that a visitor sees displayed in the browser?",
          questionMy:
              "ဝင်ရောက်ကြည့်ရှုသူ ဘရောက်ဇာတွင် တွေ့မြင်ရသော အကြောင်းအရာကို မည်သည့် tag က သယ်ဆောင်ထားသနည်း။",
          optionsEn: ["<body>", "<head>", "<title>", "<html>"],
          optionsMy: ["<body>", "<head>", "<title>", "<html>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is the biggest, top-level heading tag?",
          questionMy:
              "အောက်ပါတို့တွင် အကြီးဆုံး၊ အထက်ဆုံးအဆင့် ခေါင်းစဉ်တဂ်မှာ အဘယ်နည်း။",
          optionsEn: ["<h1>", "<h6>", "<p>", "<body>"],
          optionsMy: ["<h1>", "<h6>", "<p>", "<body>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What must most opening HTML tags have to be written correctly?",
          questionMy:
              "HTML ဖွင့်တဂ်အများစုသည် မှန်ကန်စွာရေးရန် မည်သည့်အရာ ရှိရမည်နည်း။",
          optionsEn: [
            "A matching closing tag",
            "A drag-and-drop block",
            "A binary number",
            "A sensor input",
          ],
          optionsMy: [
            "ကိုက်ညီသော ပိတ်တဂ်",
            "ဆွဲယူတွယ်ကပ်ဘလောက်",
            "ဒွိကိန်းဂဏန်း",
            "အာရုံခံကိရိယာ input",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "This week, Nay Chi connected her HTML tag discipline to which Term 1 idea?",
          questionMy:
              "ဤအပတ်တွင် နှင်းချည်သည် သူမ၏ HTML tag စည်းကမ်းကို Term 1 ၏ မည်သည့်အယူအဆနှင့် ဆက်စပ်ခဲ့သနည်း။",
          optionsEn: [
            "That every small syntax detail must be exactly right",
            "That functions can never be reused",
            "That loops always run forever",
            "That variables can only store numbers",
          ],
          optionsMy: [
            "Syntax အသေးစိတ်အချက်တိုင်းကို အတိအကျ ရေးရမည်ဟူသောအချက်",
            "Function များကို ထပ်မံအသုံးမပြုနိုင်ဟူသောအချက်",
            "Loop များသည် အမြဲထာဝရ ပတ်နေမည်ဟူသောအချက်",
            "Variable များသည် ဂဏန်းများကိုသာ သိမ်းဆည်းနိုင်သည်ဟူသောအချက်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek6 = CourseWeekDef(
  id: "course-year6-computing-w6",
  weekNumber: 6,
  titleEn: "Images and Links: Bringing Pages to Life",
  titleMy: "ပုံများနှင့် လင့်ခ်များ - စာမျက်နှာများကို အသက်သွင်းခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w6-d1",
      dayNumber: 1,
      titleEn: "Adding Images and Links",
      titleMy: "ပုံများနှင့် လင့်ခ်များ ထည့်သွင်းခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which HTML tag is used to display a picture on a web page?",
          questionMy:
              "ဝက်ဘ်စာမျက်နှာပေါ်တွင် ပုံတစ်ပုံ ပြသရန် မည်သည့် HTML tag ကို အသုံးပြုသနည်း။",
          optionsEn: ["<img>", "<p>", "<a>", "<h1>"],
          optionsMy: ["<img>", "<p>", "<a>", "<h1>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Inside an <img> tag, which attribute tells the browser exactly which picture file to load?",
          questionMy:
              "<img> tag အတွင်း မည်သည့် attribute က ဘရောက်ဇာအား မည်သည့်ပုံဖိုင်ကို တင်ရမည်ဟု အတိအကျ ညွှန်ပြသနည်း။",
          optionsEn: ["src", "alt", "href", "title"],
          optionsMy: ["src", "alt", "href", "title"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the main purpose of the alt attribute on an <img> tag?",
          questionMy:
              "<img> tag ပေါ်ရှိ alt attribute ၏ အဓိကရည်ရွယ်ချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "To describe the image in words, for screen readers and for when the image fails to load",
            "To make the image bigger",
            "To change the image's colour",
            "To play a sound when the page loads",
          ],
          optionsMy: [
            "Screen reader များအတွက်နှင့် ပုံမတင်နိုင်သောအခါ ပုံကို စာသားဖြင့် ဖော်ပြပေးရန်",
            "ပုံကို ပိုကြီးလာစေရန်",
            "ပုံ၏အရောင်ကို ပြောင်းလဲရန်",
            "စာမျက်နှာတင်သောအခါ အသံဖွင့်ပေးရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which HTML tag creates a clickable hyperlink to another page?",
          questionMy:
              "အခြားစာမျက်နှာတစ်ခုသို့ နှိပ်၍ရသော hyperlink တစ်ခု ဖန်တီးရန် မည်သည့် HTML tag ကို အသုံးပြုသနည်း။",
          optionsEn: ["<a>", "<img>", "<h1>", "<body>"],
          optionsMy: ["<a>", "<img>", "<h1>", "<body>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Inside an <a> tag, which attribute stores the web address the link should go to?",
          questionMy:
              "<a> tag အတွင်း မည်သည့် attribute က link ရောက်ရှိရမည့် ဝက်ဘ်လိပ်စာကို သိမ်းဆည်းထားသနည်း။",
          optionsEn: ["href", "src", "alt", "colon"],
          optionsMy: ["href", "src", "alt", "colon"],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w6-d2",
      dayNumber: 2,
      titleEn: "Match the Image and Link Vocabulary",
      titleMy: "ပုံနှင့် လင့်ခ် ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w6-dm-1",
          termEn: "<img> tag",
          termMy: "<img> tag",
          matchEn: "The tag that displays an image on a web page",
          matchMy: "ဝက်ဘ်စာမျက်နှာပေါ်တွင် ပုံတစ်ပုံပြသပေးသော tag",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w6-dm-2",
          termEn: "src attribute",
          termMy: "src attribute",
          matchEn:
              "The attribute that tells the browser exactly which image file to load",
          matchMy:
              "ဘရောက်ဇာအား မည်သည့်ပုံဖိုင်ကို တင်ရမည်ဟု အတိအကျညွှန်ပြသော attribute",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w6-dm-3",
          termEn: "alt text",
          termMy: "alt text",
          matchEn:
              "A written description of an image, used by screen readers and shown if the image fails to load",
          matchMy:
              "screen reader များက အသုံးပြုပြီး ပုံမတင်နိုင်သောအခါ ပြသသော ပုံ၏ စာဖြင့်ဖော်ပြချက်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w6-dm-4",
          termEn: "Anchor tag",
          termMy: "Anchor tag (<a>)",
          matchEn:
              "The tag, written as <a>, that creates a clickable hyperlink",
          matchMy:
              "နှိပ်၍ရသော hyperlink တစ်ခုကို ဖန်တီးပေးသည့် <a> ဟုရေးသော tag",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w6-dm-5",
          termEn: "href attribute",
          termMy: "href attribute",
          matchEn:
              "The attribute inside an anchor tag that stores the web address a link points to",
          matchMy:
              "Anchor tag အတွင်းရှိ link ညွှန်ပြသော ဝက်ဘ်လိပ်စာကို သိမ်းဆည်းထားသော attribute",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w6-dm-6",
          termEn: "Hyperlink",
          termMy: "Hyperlink (လင့်ခ်)",
          matchEn:
              "Clickable text or an image that takes a visitor to another web page",
          matchMy:
              "ဝင်ရောက်ကြည့်ရှုသူအား အခြားစာမျက်နှာတစ်ခုသို့ ပို့ဆောင်ပေးသော နှိပ်၍ရသော စာသား သို့မဟုတ် ပုံ",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w6-d3",
      dayNumber: 3,
      titleEn: "Sort: Image-Related or Link-Related?",
      titleMy: "စီစစ်ကြမည် - ပုံနှင့်ဆိုင်သလား၊ လင့်ခ်နှင့်ဆိုင်သလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Used to Show an Image", "Used to Create a Link"],
        bucketsMy: ["ပုံပြသရန် အသုံးပြုသည်", "လင့်ခ်ဖန်တီးရန် အသုံးပြုသည်"],
        items: [
          SortingItem(
            id: "y6comp-w6-sort-1",
            labelEn: "<img> tag",
            labelMy: "<img> tag",
            correctBucketEn: "Used to Show an Image",
            correctBucketMy: "ပုံပြသရန် အသုံးပြုသည်",
          ),
          SortingItem(
            id: "y6comp-w6-sort-2",
            labelEn: "src attribute",
            labelMy: "src attribute",
            correctBucketEn: "Used to Show an Image",
            correctBucketMy: "ပုံပြသရန် အသုံးပြုသည်",
          ),
          SortingItem(
            id: "y6comp-w6-sort-3",
            labelEn: "alt attribute",
            labelMy: "alt attribute",
            correctBucketEn: "Used to Show an Image",
            correctBucketMy: "ပုံပြသရန် အသုံးပြုသည်",
          ),
          SortingItem(
            id: "y6comp-w6-sort-4",
            labelEn: "<a> tag",
            labelMy: "<a> tag",
            correctBucketEn: "Used to Create a Link",
            correctBucketMy: "လင့်ခ်ဖန်တီးရန် အသုံးပြုသည်",
          ),
          SortingItem(
            id: "y6comp-w6-sort-5",
            labelEn: "href attribute",
            labelMy: "href attribute",
            correctBucketEn: "Used to Create a Link",
            correctBucketMy: "လင့်ခ်ဖန်တီးရန် အသုံးပြုသည်",
          ),
          SortingItem(
            id: "y6comp-w6-sort-6",
            labelEn: "Hyperlink text",
            labelMy: "Hyperlink စာသား",
            correctBucketEn: "Used to Create a Link",
            correctBucketMy: "လင့်ခ်ဖန်တီးရန် အသုံးပြုသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w6-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Plant Project Page",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ အပင်စိုက်ပျိုးမှု စီမံကိန်းစာမျက်နှာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Plant Project Page",
        titleMy: "နှင်းချည်၏ အပင်စိုက်ပျိုးမှု စီမံကိန်းစာမျက်နှာ",
        passageEn:
            "Nay Chi's class had been growing bean plants on the classroom windowsill for a science project, and now her computing teacher wanted the class to share their results on a web page. Nay Chi took a photograph of her bean plant's tallest leaf and dragged it into her project folder, ready to add it to her page with an <img> tag.\n\n\"Don't forget the alt attribute,\" her teacher reminded the class. \"One of our classmates uses a screen reader that reads web pages aloud, so if there's no alt text, he won't know what your picture shows at all.\" Nay Chi carefully typed <img src=\"bean-plant.jpg\" alt=\"A young bean plant with two green leaves growing in a small pot\">, making sure her words painted a clear picture for anyone who could not see the photo. She also added a link with <a href=\"https://novaschool-blog.example/plants\">Read our whole class's plant journal</a> so visitors could click through to the class blog for more updates.\n\nWhen Nay Chi previewed her page, the photo of her bean plant appeared neatly under her heading, and clicking the blue underlined link opened the class blog just as she had planned. She realised that a good web page was not just about pictures and links looking nice -- it was about making sure everyone, including classmates who used a screen reader, could actually understand what the page was showing.",
        passageMy:
            "နှင်းချည်၏ အတန်းသားများသည် သိပ္ပံစီမံကိန်းတစ်ခုအတွက် စာသင်ခန်းပြတင်းပေါက်တွင် ပဲပင်များ စိုက်ပျိုးနေခဲ့ကြသည်၊ ယခုအခါ ကွန်ပျူတာဆရာမက ရလဒ်များကို ဝက်ဘ်စာမျက်နှာတစ်ခုပေါ်တွင် မျှဝေစေလိုသည်။ နှင်းချည်သည် သူမ၏ ပဲပင်၏ အမြင့်ဆုံးအရွက်ကို ဓာတ်ပုံရိုက်ပြီး သူမ၏ project ဖိုင်တွဲထဲသို့ ဆွဲယူ ထည့်သွင်းကာ <img> tag ဖြင့် သူမ၏စာမျက်နှာတွင် ထည့်ရန် အသင့်ဖြစ်နေခဲ့သည်။\n\n\"alt attribute ကို မမေ့ပါနှင့်\" ဟု ဆရာမက အတန်းသားများအား သတိပေးခဲ့သည်။ \"ကျွန်မတို့ အတန်းဖော်တစ်ဦးသည် ဝက်ဘ်စာမျက်နှာများကို အသံထွက်ဖတ်ပေးသော screen reader တစ်ခုကို အသုံးပြုသည်၊ ထို့ကြောင့် alt text မရှိပါက သူသည် သင့်ပုံက ဘာကိုပြသနေသည်ကို လုံးဝ သိလိမ့်မည်မဟုတ်ပါ\" ။ နှင်းချည်သည် <img src=\"bean-plant.jpg\" alt=\"အိုးသေးလေးတစ်ခုထဲတွင် အရွက်စိမ်းနှစ်ချပ်နှင့် ကြီးထွားနေသော ပဲပင်ငယ်လေးတစ်ပင်\"> ဟု ဂရုတစိုက် ရိုက်ထည့်ခဲ့ပြီး ပုံကို မမြင်နိုင်သူများအတွက်ပါ ပုံရိပ်ကို ရှင်းလင်းစွာ ဖော်ပြနိုင်အောင် လုပ်ခဲ့သည်။ သူမသည် ဝင်ရောက်ကြည့်ရှုသူများ အတန်းဘလော့ဂ်၏ နောက်ဆုံးအချက်အလက်များကို နှိပ်ကြည့်နိုင်ရန် <a href=\"https://novaschool-blog.example/plants\">ကျွန်မတို့ အတန်းလုံး၏ အပင်မှတ်တမ်းကို ဖတ်ပါ</a> ဟူသော link ကိုလည်း ထည့်သွင်းခဲ့သည်။\n\nနှင်းချည်သည် သူမ၏စာမျက်နှာကို ကြိုတင်ကြည့်ရှုသောအခါ ပဲပင်၏ဓာတ်ပုံသည် သူမ၏ ခေါင်းစဉ်အောက်တွင် သပ်ရပ်စွာ ပေါ်လာခဲ့ပြီး၊ အပြာရောင် မျဉ်းသားထားသော link ကို နှိပ်လိုက်သောအခါ စီစဉ်ထားခဲ့သည့်အတိုင်း အတန်းဘလော့ဂ်ကို ဖွင့်ပေးခဲ့သည်။ ကောင်းမွန်သော ဝက်ဘ်စာမျက်နှာတစ်ခုသည် ပုံနှင့် link များ လှပစွာ ပေါ်နေခြင်းသာမက၊ screen reader အသုံးပြုသော အတန်းဖော်ကိုပါ ပါဝင်၍ လူတိုင်းက စာမျက်နှာက ဘာကိုပြသနေသည်ကို တကယ်နားလည်နိုင်ရန် ကူညီရမည်ဖြစ်ကြောင်း သူမ သဘောပေါက်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did Nay Chi photograph for her science project page?",
            questionMy:
                "နှင်းချည်သည် သူမ၏ သိပ္ပံစီမံကိန်းစာမျက်နှာအတွက် ဘာကို ဓာတ်ပုံရိုက်ခဲ့သနည်း။",
            optionsEn: [
              "Her bean plant's tallest leaf",
              "Her classroom window",
              "A picture of her teacher",
              "A picture of a book",
            ],
            optionsMy: [
              "သူမ၏ ပဲပင်အမြင့်ဆုံးအရွက်",
              "သူမ၏ စာသင်ခန်းပြတင်းပေါက်",
              "သူမ၏ ဆရာမပုံ",
              "စာအုပ်ပုံ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why did the teacher remind the class not to forget the alt attribute?",
            questionMy:
                "ဆရာမက အတန်းသားများအား alt attribute ကို မမေ့ရန် အဘယ့်ကြောင့် သတိပေးခဲ့သနည်း။",
            optionsEn: [
              "Because a classmate uses a screen reader that needs the alt text to describe the image",
              "Because alt text makes images load faster",
              "Because alt text changes an image's colour",
              "Because alt text is required to make a link clickable",
            ],
            optionsMy: [
              "ပုံကို ဖော်ပြပေးရန် alt text လိုအပ်သော screen reader ကို အတန်းဖော်တစ်ဦး အသုံးပြုသောကြောင့်",
              "Alt text က ပုံများကို ပိုမြန်စွာ တင်ပေးသောကြောင့်",
              "Alt text က ပုံ၏အရောင်ကို ပြောင်းလဲပေးသောကြောင့်",
              "Link တစ်ခု နှိပ်၍ရရန် alt text လိုအပ်သောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which attribute did Nay Chi use to point her <img> tag at the correct picture file?",
            questionMy:
                "နှင်းချည်သည် သူမ၏ <img> tag ကို မှန်ကန်သော ပုံဖိုင်ဆီသို့ ညွှန်ပြရန် မည်သည့် attribute ကို အသုံးပြုခဲ့သနည်း။",
            optionsEn: ["src", "alt", "href", "title"],
            optionsMy: ["src", "alt", "href", "title"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Nay Chi's <a href=\"...\"> link allow visitors to do?",
            questionMy:
                "နှင်းချည်၏ <a href=\"...\"> link က ဝင်ရောက်ကြည့်ရှုသူများအား မည်သည့်အရာလုပ်ဆောင်ခွင့်ပြုခဲ့သနည်း။",
            optionsEn: [
              "Click through to read the whole class's plant journal on the blog",
              "Download the bean plant photo automatically",
              "Change the alt text of the image",
              "Play a video of the plant growing",
            ],
            optionsMy: [
              "ဘလော့ဂ်ပေါ်ရှိ အတန်းလုံး၏ အပင်မှတ်တမ်းကို နှိပ်ဖတ်ရန်",
              "ပဲပင်ဓာတ်ပုံကို အလိုအလျောက် ဒေါင်းလုတ်ဆွဲရန်",
              "ပုံ၏ alt text ကို ပြောင်းလဲရန်",
              "အပင်ကြီးထွားနေသော ဗီဒီယိုတစ်ခု ဖွင့်ကြည့်ရန်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Nay Chi realise a good web page needs to consider, beyond just looking nice?",
            questionMy:
                "ကောင်းမွန်သော ဝက်ဘ်စာမျက်နှာတစ်ခုသည် လှပစွာ ပေါ်နေခြင်းအပြင် ဘာကိုပါ ထည့်သွင်းစဉ်းစားရမည်ဟု နှင်းချည် သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "Whether everyone, including screen-reader users, can understand what the page shows",
              "Whether the page has the maximum possible number of images",
              "Whether the page loads on only one type of computer",
              "Whether the page uses only ordered lists",
            ],
            optionsMy: [
              "Screen reader သုံးသူများအပါအဝင် လူတိုင်းက စာမျက်နှာပြသနေသည်ကို နားလည်နိုင်မနိုင်",
              "စာမျက်နှာတွင် ဖြစ်နိုင်သမျှအများဆုံး ပုံများ ပါဝင်မပါဝင်",
              "စာမျက်နှာသည် ကွန်ပျူတာအမျိုးအစား တစ်မျိုးတည်းတွင်သာ တက်နိုင်မနိုင်",
              "စာမျက်နှာသည် ordered list များကိုသာ အသုံးပြုမပြု",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w6-d5",
      dayNumber: 5,
      titleEn: "Images and Links Round-Up",
      titleMy: "ပုံများနှင့် လင့်ခ်များ အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which tag displays an image on a web page?",
          questionMy:
              "ဝက်ဘ်စာမျက်နှာပေါ်တွင် ပုံတစ်ပုံ ပြသရန် မည်သည့် tag က ဖြစ်သနည်း။",
          optionsEn: ["<img>", "<a>", "<p>", "<h1>"],
          optionsMy: ["<img>", "<a>", "<p>", "<h1>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which attribute of <img> describes the image in words for screen readers?",
          questionMy:
              "<img> ၏ မည်သည့် attribute က screen reader များအတွက် ပုံကို စာသားဖြင့် ဖော်ပြပေးသနည်း။",
          optionsEn: ["alt", "src", "href", "title"],
          optionsMy: ["alt", "src", "href", "title"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which tag creates a clickable hyperlink?",
          questionMy:
              "နှိပ်၍ရသော hyperlink တစ်ခုကို မည်သည့် tag က ဖန်တီးပေးသနည်း။",
          optionsEn: ["<a>", "<img>", "<body>", "<head>"],
          optionsMy: ["<a>", "<img>", "<body>", "<head>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which attribute stores the destination web address of a hyperlink?",
          questionMy:
              "Hyperlink တစ်ခု ရောက်ရှိရမည့် ဝက်ဘ်လိပ်စာကို မည်သည့် attribute က သိမ်းဆည်းထားသနည်း။",
          optionsEn: ["href", "src", "alt", "colon"],
          optionsMy: ["href", "src", "alt", "colon"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why did Nay Chi write careful alt text for her bean plant photo?",
          questionMy:
              "နှင်းချည်သည် သူမ၏ ပဲပင်ဓာတ်ပုံအတွက် ဂရုတစိုက် alt text ရေးခဲ့ရသည့် အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "So a classmate using a screen reader could understand what the picture showed",
            "So the picture would load in a brighter colour",
            "So the link would open faster",
            "So the heading would appear in bold",
          ],
          optionsMy: [
            "Screen reader သုံးသော အတန်းဖော်တစ်ဦးက ပုံပြသနေသည်ကို နားလည်နိုင်ရန်",
            "ပုံသည် ပိုတောက်ပသောအရောင်ဖြင့် တင်ပေးရန်",
            "Link ကို ပိုမြန်စွာ ဖွင့်ပေးရန်",
            "ခေါင်းစဉ် ဒဂတ်ချိန်ဖြင့် ပေါ်လာရန်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek7 = CourseWeekDef(
  id: "course-year6-computing-w7",
  weekNumber: 7,
  titleEn: "Designing a Simple Page",
  titleMy: "ရိုးရှင်းသော စာမျက်နှာတစ်ခု ဒီဇိုင်းရေးဆွဲခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w7-d1",
      dayNumber: 1,
      titleEn: "Lists and Planning a Page",
      titleMy: "List များနှင့် စာမျက်နှာစီစဉ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which tag creates a bulleted, unordered list on a web page?",
          questionMy:
              "ဝက်ဘ်စာမျက်နှာပေါ်တွင် အစဉ်လိုက်မဟုတ်သော အစက်ခြင်း list တစ်ခုကို မည်သည့် tag က ဖန်တီးပေးသနည်း။",
          optionsEn: ["<ul>", "<ol>", "<li>", "<a>"],
          optionsMy: ["<ul>", "<ol>", "<li>", "<a>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which tag creates a numbered, ordered list, useful for steps that must happen in a set order?",
          questionMy:
              "ပြုလုပ်ရမည့်အစီအစဉ်ရှိသော အဆင့်များအတွက် အသုံးဝင်သည့် နံပါတ်တပ် ordered list တစ်ခုကို မည်သည့် tag က ဖန်တီးပေးသနည်း။",
          optionsEn: ["<ol>", "<ul>", "<img>", "<p>"],
          optionsMy: ["<ol>", "<ul>", "<img>", "<p>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Inside both <ul> and <ol>, which tag wraps each individual item in the list?",
          questionMy:
              "<ul> နှင့် <ol> နှစ်ခုစလုံးအတွင်း list ထဲရှိ item တစ်ခုစီကို မည်သည့် tag က ထုပ်ပေးသနည်း။",
          optionsEn: ["<li>", "<a>", "<img>", "<head>"],
          optionsMy: ["<li>", "<a>", "<img>", "<head>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is a wireframe, in the context of planning a web page?",
          questionMy:
              "ဝက်ဘ်စာမျက်နှာတစ်ခု စီစဉ်ရာတွင် wireframe ဆိုသည်မှာ အဘယ်အရာနည်း။",
          optionsEn: [
            "A rough sketch showing where each heading, image, and paragraph will go before any coding starts",
            "A finished, fully coded web page",
            "A type of image file format",
            "A tool for testing internet speed",
          ],
          optionsMy: [
            "ကုဒ်ရေးမစတင်မီ ခေါင်းစဉ်၊ ပုံနှင့် စာပိုဒ်တစ်ခုစီ မည်သည့်နေရာတွင်ရှိမည်ကို ပြသည့် ရှုပ်တောက်ရေးဆွဲထားသော ပုံကြမ်း",
            "ကုဒ်ရေးသားပြီးစီးသော ဝက်ဘ်စာမျက်နှာ",
            "ပုံဖိုင်အမျိုးအစား တစ်ခု",
            "အင်တာနက်မြန်နှုန်း စမ်းသပ်ရန် ကိရိယာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is it good practice to plan a page's heading order and content before typing any HTML?",
          questionMy:
              "HTML မရိုက်ထည့်မီ စာမျက်နှာ၏ ခေါင်းစဉ်အစီအစဉ်နှင့် အကြောင်းအရာကို ကြိုတင်စီစဉ်ခြင်းသည် အဘယ့်ကြောင့် ကောင်းမွန်သော အလေ့အထ ဖြစ်သနည်း။",
          optionsEn: [
            "It helps the page read in a clear, logical order for visitors",
            "It makes the internet connection faster",
            "It automatically fixes syntax errors",
            "It changes the colour of the browser",
          ],
          optionsMy: [
            "ဝင်ရောက်ကြည့်ရှုသူများအတွက် စာမျက်နှာကို ရှင်းလင်းသော၊ ကျိုးကြောင်းညီညွတ်သော အစီအစဉ်ဖြင့် ဖတ်ရှုနိုင်စေရန် ကူညီပေးသည်",
            "အင်တာနက်ချိတ်ဆက်မှုကို ပိုမြန်စေသည်",
            "Syntax error များကို အလိုအလျောက် ပြင်ဆင်ပေးသည်",
            "ဘရောက်ဇာ၏အရောင်ကို ပြောင်းလဲပေးသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w7-d2",
      dayNumber: 2,
      titleEn: "Match the Page-Design Vocabulary",
      titleMy: "စာမျက်နှာဒီဇိုင်း ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w7-dm-1",
          termEn: "<ul>",
          termMy: "<ul>",
          matchEn: "The tag that creates an unordered, bulleted list",
          matchMy: "အစဉ်လိုက်မဟုတ်သော အစက်ခြင်း list တစ်ခုကို ဖန်တီးပေးသော tag",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w7-dm-2",
          termEn: "<ol>",
          termMy: "<ol>",
          matchEn: "The tag that creates an ordered, numbered list",
          matchMy: "အစဉ်လိုက် နံပါတ်တပ် list တစ်ခုကို ဖန်တီးပေးသော tag",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w7-dm-3",
          termEn: "<li>",
          termMy: "<li>",
          matchEn: "The tag that wraps a single item inside a list",
          matchMy: "List တစ်ခုအတွင်းရှိ item တစ်ခုတည်းကို ထုပ်ပေးသော tag",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w7-dm-4",
          termEn: "Wireframe",
          termMy: "Wireframe (ပုံကြမ်း)",
          matchEn:
              "A rough sketch planning where each heading, image, and paragraph will go before coding",
          matchMy:
              "ကုဒ်ရေးမစတင်မီ ခေါင်းစဉ်၊ ပုံနှင့် စာပိုဒ်တစ်ခုစီ မည်သည့်နေရာတွင်ရှိမည်ကို စီစဉ်ရေးဆွဲသော ပုံကြမ်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w7-dm-5",
          termEn: "Heading hierarchy",
          termMy: "Heading Hierarchy (ခေါင်းစဉ်အဆင့်ဆင့်)",
          matchEn:
              "Using <h1>, <h2>, <h3> and so on in order of importance to organise a page",
          matchMy:
              "စာမျက်နှာတစ်ခုကို စနစ်တကျ ဖွဲ့စည်းရန် <h1>၊ <h2>၊ <h3> စသည်တို့ကို အရေးပါမှုအလိုက် အစီအစဉ်ဖြင့် အသုံးပြုခြင်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w7-dm-6",
          termEn: "Page layout",
          termMy: "Page Layout (စာမျက်နှာအပြင်အဆင်)",
          matchEn:
              "The overall arrangement and order of headings, text, images, and links on a page",
          matchMy:
              "စာမျက်နှာတစ်ခုပေါ်ရှိ ခေါင်းစဉ်၊ စာသား၊ ပုံနှင့် link များ၏ အလုံးစုံ အစီအစဉ်နှင့် ပြင်ဆင်ထားမှု",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w7-d3",
      dayNumber: 3,
      titleEn: "Sort: Good Habit or Design Mistake?",
      titleMy: "စီစစ်ကြမည် - ကောင်းသောအကျင့်လား၊ ဒီဇိုင်းအမှားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Good Page-Design Habit", "Page-Design Mistake"],
        bucketsMy: ["ကောင်းမွန်သော ဒီဇိုင်းအလေ့အထ", "ဒီဇိုင်းအမှား"],
        items: [
          SortingItem(
            id: "y6comp-w7-sort-1",
            labelEn: "Sketch a wireframe before you start coding",
            labelMy: "ကုဒ်မရေးမီ wireframe တစ်ခု ရေးဆွဲထားခြင်း",
            correctBucketEn: "Good Page-Design Habit",
            correctBucketMy: "ကောင်းမွန်သော ဒီဇိုင်းအလေ့အထ",
          ),
          SortingItem(
            id: "y6comp-w7-sort-2",
            labelEn: "Put the most important heading first, using <h1>",
            labelMy:
                "အရေးအကြီးဆုံး ခေါင်းစဉ်ကို <h1> ဖြင့် ရှေ့ဆုံးတွင် ထားခြင်း",
            correctBucketEn: "Good Page-Design Habit",
            correctBucketMy: "ကောင်းမွန်သော ဒီဇိုင်းအလေ့အထ",
          ),
          SortingItem(
            id: "y6comp-w7-sort-3",
            labelEn: "Write a short, clear alt text for every image",
            labelMy:
                "ပုံတိုင်းအတွက် တိုတောင်း၊ ရှင်းလင်းသော alt text ရေးထားခြင်း",
            correctBucketEn: "Good Page-Design Habit",
            correctBucketMy: "ကောင်းမွန်သော ဒီဇိုင်းအလေ့အထ",
          ),
          SortingItem(
            id: "y6comp-w7-sort-4",
            labelEn: "Skip planning and start typing tags randomly",
            labelMy:
                "စီစဉ်ခြင်းကို ကျော်လွှားပြီး tag များကို ကျပန်း ရိုက်ထည့်ခြင်း",
            correctBucketEn: "Page-Design Mistake",
            correctBucketMy: "ဒီဇိုင်းအမှား",
          ),
          SortingItem(
            id: "y6comp-w7-sort-5",
            labelEn: "Leave the alt attribute blank on every image",
            labelMy: "ပုံတိုင်း၏ alt attribute ကို ဗလာချန်ထားခြင်း",
            correctBucketEn: "Page-Design Mistake",
            correctBucketMy: "ဒီဇိုင်းအမှား",
          ),
          SortingItem(
            id: "y6comp-w7-sort-6",
            labelEn:
                "Cram every heading level onto one line with no paragraphs",
            labelMy:
                "ခေါင်းစဉ်အဆင့်အားလုံးကို စာပိုဒ်မပါဘဲ တစ်ကြောင်းတည်းတွင် ကျပ်ကျပ်ထည့်ခြင်း",
            correctBucketEn: "Page-Design Mistake",
            correctBucketMy: "ဒီဇိုင်းအမှား",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w7-d4",
      dayNumber: 4,
      titleEn: "Reading: The Wildlife Club Web Page",
      titleMy: "စာဖတ်ခြင်း - သားရဲတိရစ္ဆာန် အသင်း၏ ဝက်ဘ်စာမျက်နှာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The Wildlife Club Web Page",
        titleMy: "သားရဲတိရစ္ဆာန် အသင်း၏ ဝက်ဘ်စာမျက်နှာ",
        passageEn:
            "Nay Chi and her friend Su Su ran the school's Wildlife Club, and this week they wanted to build a web page to invite more students to join. Before opening the coding app, Nay Chi grabbed a piece of paper and sketched a wireframe: a big heading at the top, a short paragraph explaining the club, a photo of last month's bird-watching trip, a list of upcoming activities, and finally a link to a sign-up form.\n\n\"If we just start typing without planning, we'll forget things or put them in a confusing order,\" Nay Chi told Su Su, remembering how carefully she had planned her Term 1 program before writing a single line of code. Following their wireframe, they built the page in order: <h1>Join the Wildlife Club!</h1>, a welcoming <p> paragraph, an <img> of the bird-watching trip with clear alt text, an <ul> list of activities like \"Pond dipping\" and \"Bird box building,\" and finally an <a href=\"...\">Sign up here</a> link.\n\nWhen they previewed the finished page, it read smoothly from top to bottom, exactly as their wireframe had promised, and three classmates signed up before the end of the day. Nay Chi smiled -- planning first, then building, had made both her code last term and her web page this term turn out exactly the way she had imagined.",
        passageMy:
            "နှင်းချည်နှင့် သူမ၏သူငယ်ချင်း စုစုတို့သည် ကျောင်း၏ သားရဲတိရစ္ဆာန်အသင်းကို ဦးဆောင်နေခဲ့ကြပြီး ဤအပတ်တွင် ကျောင်းသားများ ပိုမိုဝင်ရောက်လာစေရန် ဝက်ဘ်စာမျက်နှာတစ်ခု တည်ဆောက်လိုခဲ့ကြသည်။ ကုဒ်ရေးအက်ပ်ကို မဖွင့်မီ နှင်းချည်သည် စာရွက်တစ်ရွက်ကို ယူပြီး wireframe တစ်ခုကို ရေးဆွဲခဲ့သည် -- အပေါ်ဆုံးတွင် ခေါင်းစဉ်ကြီးတစ်ခု၊ အသင်းအကြောင်း ရှင်းပြသော စာပိုဒ်တိုတစ်ခု၊ ပြီးခဲ့သောလ ငှက်ကြည့်ခရီးစဉ်၏ ဓာတ်ပုံတစ်ပုံ၊ လာမည့်လုပ်ဆောင်ချက်များ list တစ်ခု၊ နောက်ဆုံးတွင် အသင်းဝင်ရန် ပုံစံ link တစ်ခု။\n\n\"ကျွန်မတို့ စီစဉ်ခြင်းမရှိဘဲ ရိုက်ထည့်ရင် တစ်ခုခုမေ့ကျန်ခဲ့မယ် သို့မဟုတ် အစီအစဉ်ရှုပ်ထွေးအောင် ထားမိလိမ့်မယ်\" ဟု နှင်းချည်က စုစုအား ပြောခဲ့သည်၊ Term 1 က သူမ၏ပရိုဂရမ်ကို ကုဒ်တစ်ကြောင်းမျှ မရေးမီ ဂရုတစိုက် စီစဉ်ခဲ့သည်ကို သတိရနေခဲ့သည်။ ၎င်းတို့၏ wireframe အတိုင်း လိုက်ပြီး စာမျက်နှာကို အစီအစဉ်တကျ တည်ဆောက်ခဲ့ကြသည် -- <h1>Join the Wildlife Club!</h1>, ကြိုဆိုသော <p> စာပိုဒ်၊ ငှက်ကြည့်ခရီးစဉ်၏ ရှင်းလင်းသော alt text ပါသည့် <img>၊ \"ရေကန်ငယ်ထဲ လက်နှစ်ချောခြင်း\" နှင့် \"ငှက်အိမ်လုပ်ခြင်း\" ကဲ့သို့ လုပ်ဆောင်ချက်များပါ <ul> list၊ နောက်ဆုံးတွင် <a href=\"...\">ဒီနေရာတွင် အသင်းဝင်ပါ</a> link။\n\n၎င်းတို့သည် ပြီးစီးသောစာမျက်နှာကို ကြိုတင်ကြည့်ရှုသောအခါ ၎င်းတို့၏ wireframe က ကတိပေးခဲ့သည့်အတိုင်း အပေါ်မှ အောက်သို့ ချောမွေ့စွာ ဖတ်ရှုနိုင်ခဲ့ပြီး၊ ထိုနေ့ ကုန်ဆုံးမီ အတန်းဖော်သုံးဦး အသင်းဝင်ခဲ့ကြသည်။ နှင်းချည် ပြုံးခဲ့သည် -- ဦးစွာ စီစဉ်ပြီးမှ တည်ဆောက်ခြင်းသည် Term 1 က သူမ၏ကုဒ်ကိုလည်းကောင်း၊ ယခုအပတ်၏ ဝက်ဘ်စာမျက်နှာကိုလည်းကောင်း သူမ စိတ်ကူးထားသည့်အတိုင်း အတိအကျ ဖြစ်ပေါ်လာစေခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did Nay Chi sketch on paper before opening the coding app?",
            questionMy:
                "နှင်းချည်သည် ကုဒ်ရေးအက်ပ်ကို မဖွင့်မီ စာရွက်ပေါ်တွင် ဘာကို ရေးဆွဲခဲ့သနည်း။",
            optionsEn: [
              "A wireframe showing where each part of the page would go",
              "A finished web page in full colour",
              "A picture of a bird",
              "A list of every student's name in the school",
            ],
            optionsMy: [
              "စာမျက်နှာ၏ အစိတ်အပိုင်းတစ်ခုစီ မည်သည့်နေရာတွင်ရှိမည်ကို ပြသော wireframe",
              "အရောင်အပြည့်နှင့် ပြီးစီးသော ဝက်ဘ်စာမျက်နှာ",
              "ငှက်ပုံတစ်ပုံ",
              "ကျောင်းရှိ ကျောင်းသားတိုင်း၏ အမည်စာရင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Nay Chi say might happen if they typed HTML without planning first?",
            questionMy:
                "ကြိုတင်စီစဉ်ခြင်းမရှိဘဲ HTML ရိုက်ထည့်ပါက ဘာဖြစ်နိုင်သည်ဟု နှင်းချည် ပြောခဲ့သနည်း။",
            optionsEn: [
              "They might forget things or put them in a confusing order",
              "The browser would refuse to open at all",
              "The page would automatically delete itself",
              "The internet connection would stop working",
            ],
            optionsMy: [
              "တစ်ခုခုမေ့ကျန်ခဲ့နိုင်ပြီး သို့မဟုတ် အစီအစဉ်ရှုပ်ထွေးအောင် ထားမိနိုင်သည်",
              "ဘရောက်ဇာသည် လုံးဝ ဖွင့်ရန်ငြင်းဆန်လိမ့်မည်",
              "စာမျက်နှာသည် အလိုအလျောက် ကိုယ်တိုင် ဖျက်သွားလိမ့်မည်",
              "အင်တာနက်ချိတ်ဆက်မှု ရပ်တန့်သွားလိမ့်မည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which tag did they use to list club activities like \"Pond dipping\" and \"Bird box building\"?",
            questionMy:
                "\"ရေကန်ငယ်ထဲ လက်နှစ်ချောခြင်း\" နှင့် \"ငှက်အိမ်လုပ်ခြင်း\" ကဲ့သို့ အသင်းလုပ်ဆောင်ချက်များ list ပြုလုပ်ရန် ၎င်းတို့ မည်သည့် tag ကို အသုံးပြုခဲ့သနည်း။",
            optionsEn: ["<ul>", "<ol>", "<a>", "<h1>"],
            optionsMy: ["<ul>", "<ol>", "<a>", "<h1>"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Nay Chi remember from Term 1 while building the Wildlife Club page?",
            questionMy:
                "သားရဲတိရစ္ဆာန်အသင်း စာမျက်နှာကို တည်ဆောက်နေစဉ် နှင်းချည်သည် Term 1 မှ ဘာကို သတိရခဲ့သနည်း။",
            optionsEn: [
              "How carefully she had planned her program before writing any code",
              "How to change the colour of a heading",
              "How to reset her computer",
              "How to draw a bird",
            ],
            optionsMy: [
              "ကုဒ်တစ်ကြောင်းမျှ မရေးမီ သူမ၏ ပရိုဂရမ်ကို ဂရုတစိုက် စီစဉ်ခဲ့ပုံ",
              "ခေါင်းစဉ်၏ အရောင် ပြောင်းလဲနည်း",
              "ကွန်ပျူတာကို ပြန်လည်သတ်မှတ်နည်း",
              "ငှက်ပုံဆွဲနည်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What happened by the end of the day after the Wildlife Club page was published?",
            questionMy:
                "သားရဲတိရစ္ဆာန်အသင်း စာမျက်နှာ ထုတ်ဝေပြီးနောက် ထိုနေ့ ကုန်ဆုံးမီ ဘာဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "Three classmates signed up for the club",
              "The wireframe was thrown away unused",
              "The page failed to load in the browser",
              "Su Su decided to leave the club",
            ],
            optionsMy: [
              "အတန်းဖော်သုံးဦး အသင်းဝင်ခဲ့ကြသည်",
              "Wireframe ကို မသုံးဘဲ ပစ်ပယ်ခဲ့သည်",
              "စာမျက်နှာသည် ဘရောက်ဇာတွင် တင်ရန် မအောင်မြင်ခဲ့ပါ",
              "စုစုသည် အသင်းမှ နုတ်ထွက်ရန် ဆုံးဖြတ်ခဲ့သည်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w7-d5",
      dayNumber: 5,
      titleEn: "Page Design Round-Up",
      titleMy: "စာမျက်နှာဒီဇိုင်း အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which tag creates an unordered, bulleted list?",
          questionMy:
              "အစဉ်လိုက်မဟုတ်သော အစက်ခြင်း list တစ်ခုကို မည်သည့် tag က ဖန်တီးပေးသနည်း။",
          optionsEn: ["<ul>", "<ol>", "<img>", "<a>"],
          optionsMy: ["<ul>", "<ol>", "<img>", "<a>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which tag wraps a single item inside any list?",
          questionMy:
              "List မည်သည့်အမျိုးအစားမဆို အတွင်းရှိ item တစ်ခုတည်းကို မည်သည့် tag က ထုပ်ပေးသနည်း။",
          optionsEn: ["<li>", "<a>", "<head>", "<p>"],
          optionsMy: ["<li>", "<a>", "<head>", "<p>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a wireframe used for?",
          questionMy: "Wireframe ကို ဘာအတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Planning where each part of a page will go before coding",
            "Playing a sound on the page",
            "Storing a web address",
            "Compressing an image file",
          ],
          optionsMy: [
            "ကုဒ်ရေးမီ စာမျက်နှာ၏ အစိတ်အပိုင်းတစ်ခုစီ နေရာစီစဉ်ရန်",
            "စာမျက်နှာပေါ်တွင် အသံဖွင့်ပေးရန်",
            "ဝက်ဘ်လိပ်စာတစ်ခု သိမ်းဆည်းရန်",
            "ပုံဖိုင်ကို ချုံ့ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which is a good page-design habit?",
          questionMy:
              "အောက်ပါတို့တွင် ကောင်းမွန်သော ဒီဇိုင်းအလေ့အထမှာ အဘယ်နည်း။",
          optionsEn: [
            "Writing clear alt text for every image",
            "Leaving alt text blank",
            "Skipping planning entirely",
            "Cramming every heading onto one line",
          ],
          optionsMy: [
            "ပုံတိုင်းအတွက် ရှင်းလင်းသော alt text ရေးထားခြင်း",
            "Alt text ကို ဗလာချန်ထားခြင်း",
            "စီစဉ်ခြင်းကို လုံးဝကျော်လွှားခြင်း",
            "ခေါင်းစဉ်တိုင်းကို တစ်ကြောင်းတည်းတွင် ကျပ်ကျပ်ထည့်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What did Nay Chi and Su Su do first, before writing any HTML for the Wildlife Club page?",
          questionMy:
              "နှင်းချည်နှင့် စုစုတို့သည် သားရဲတိရစ္ဆာန်အသင်း စာမျက်နှာအတွက် HTML မရေးမီ ဦးစွာ ဘာလုပ်ခဲ့ကြသနည်း။",
          optionsEn: [
            "Sketched a wireframe on paper",
            "Published the page immediately",
            "Deleted their old project",
            "Recorded a video",
          ],
          optionsMy: [
            "စာရွက်ပေါ်တွင် wireframe တစ်ခု ရေးဆွဲခဲ့ကြသည်",
            "စာမျက်နှာကို ချက်ချင်း ထုတ်ဝေခဲ့ကြသည်",
            "သူတို့၏ စီမံကိန်းဟောင်းကို ဖျက်ခဲ့ကြသည်",
            "ဗီဒီယိုတစ်ခု ရိုက်ကူးခဲ့ကြသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek8 = CourseWeekDef(
  id: "course-year6-computing-w8",
  weekNumber: 8,
  titleEn: "Capstone: Nay Chi's Personal Web Page",
  titleMy: "Capstone - နှင်းချည်၏ ကိုယ်ပိုင်ဝက်ဘ်စာမျက်နှာ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w8-d1",
      dayNumber: 1,
      titleEn: "Planning Your Own Web Page",
      titleMy: "ကိုယ်ပိုင်ဝက်ဘ်စာမျက်နှာ စီစဉ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Before Nay Chi starts coding her capstone web page, what should she sketch out first?",
          questionMy:
              "နှင်းချည်သည် သူမ၏ capstone ဝက်ဘ်စာမျက်နှာကို ကုဒ်ရေးမစတင်မီ ဦးစွာ ဘာကို ရေးဆွဲသင့်သနည်း။",
          optionsEn: [
            "A wireframe planning where each part of her page will go",
            "A brand-new HTML tag",
            "A different browser icon",
            "A binary number for her name",
          ],
          optionsMy: [
            "သူမ၏ စာမျက်နှာ၏ အစိတ်အပိုင်းတစ်ခုစီ မည်သည့်နေရာတွင်ရှိမည်ကို စီစဉ်ထားသော wireframe",
            "လုံးဝအသစ်သော HTML tag",
            "ကွဲပြားသော ဘရောက်ဇာ icon",
            "သူမ၏အမည်အတွက် ဒွိကိန်းဂဏန်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which HTML tags together let Nay Chi build a heading, a paragraph, an image, and a link on her page?",
          questionMy:
              "မည်သည့် HTML tag များ ပေါင်းစပ်ခြင်းက နှင်းချည်အား သူမ၏ စာမျက်နှာပေါ်တွင် ခေါင်းစဉ်၊ စာပိုဒ်၊ ပုံနှင့် link တစ်ခု တည်ဆောက်ခွင့် ပေးသနည်း။",
          optionsEn: [
            "<h1>, <p>, <img>, and <a>",
            "<ul>, <ol>, and <li> only",
            "<html> and <head> only",
            "<body> by itself, with nothing inside",
          ],
          optionsMy: [
            "<h1>, <p>, <img>, နှင့် <a>",
            "<ul>, <ol>, နှင့် <li> သာ",
            "<html> နှင့် <head> သာ",
            "အတွင်းမှာ ဘာမှမပါဘဲ <body> တစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "If Nay Chi wants to list her hobbies in a clear, numbered order, which tag should she use?",
          questionMy:
              "နှင်းချည်သည် သူမ၏ ဝါသနာများကို ရှင်းလင်းသော နံပါတ်တပ် အစီအစဉ်ဖြင့် list ပြုလုပ်လိုပါက မည်သည့် tag ကို သုံးသင့်သနည်း။",
          optionsEn: ["<ol>", "<ul>", "<img>", "<a>"],
          optionsMy: ["<ol>", "<ul>", "<img>", "<a>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Before Nay Chi publishes her web page, what should she do to make sure it works properly?",
          questionMy:
              "နှင်းချည်သည် သူမ၏ ဝက်ဘ်စာမျက်နှာကို ထုတ်ဝေမီ စနစ်တကျ အလုပ်လုပ်မလုပ် သေချာစေရန် ဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Test it in the browser and check that every tag, image, and link works",
            "Delete her wireframe immediately",
            "Skip checking her alt text",
            "Type all her tags in one very long line",
          ],
          optionsMy: [
            "Tag၊ ပုံနှင့် link တိုင်း အလုပ်လုပ်မလုပ် ဘရောက်ဇာတွင် စမ်းသပ်စစ်ဆေးခြင်း",
            "သူမ၏ wireframe ကို ချက်ချင်းဖျက်ခြင်း",
            "သူမ၏ alt text ကို စစ်ဆေးရန် ကျော်လွှားခြင်း",
            "Tag အားလုံးကို အလွန်ရှည်လျားသော လိုင်းတစ်ကြောင်းတည်း၌ ရိုက်ထည့်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What kind of project is Nay Chi building this week, combining everything she has learned this term?",
          questionMy:
              "ဤအပတ်တွင် နှင်းချည်သည် ဤ Term အတွင်း သင်ယူခဲ့သမျှအားလုံးကို ပေါင်းစပ်ကာ မည်သည့် စီမံကိန်းအမျိုးအစားကို တည်ဆောက်နေသနည်း။",
          optionsEn: [
            "Her own personal web page project",
            "A spreadsheet of her exam scores",
            "A brand-new coding language",
            "A paper poster with no computer involved",
          ],
          optionsMy: [
            "သူမ၏ ကိုယ်ပိုင်ဝက်ဘ်စာမျက်နှာ စီမံကိန်း",
            "သူမ၏ စာမေးပွဲရမှတ်များ spreadsheet",
            "လုံးဝအသစ်သော ကုဒ်ရေးဘာသာစကား",
            "ကွန်ပျူတာ လုံးဝမပါဝင်သော စာရွက် ပိုစတာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w8-d2",
      dayNumber: 2,
      titleEn: "Match the Web Project Vocabulary",
      titleMy: "ဝက်ဘ်စီမံကိန်း ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w8-dm-1",
          termEn: "Web page project",
          termMy: "Web Page Project (ဝက်ဘ်စာမျက်နှာစီမံကိန်း)",
          matchEn:
              "A finished piece of work built by planning, coding, testing, and fixing an HTML page",
          matchMy:
              "HTML စာမျက်နှာတစ်ခုကို စီစဉ်၊ ကုဒ်ရေး၊ စမ်းသပ်ပြီး ပြင်ဆင်ကာ တည်ဆောက်ထားသော ပြီးစီးသည့်လက်ရာ",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w8-dm-2",
          termEn: "Testing a web page",
          termMy: "Testing a Web Page (ဝက်ဘ်စာမျက်နှာ စမ်းသပ်ခြင်း)",
          matchEn:
              "Previewing a page in the browser to check every tag, image, and link works as planned",
          matchMy:
              "Tag၊ ပုံနှင့် link တိုင်း စီစဉ်ထားသည့်အတိုင်း အလုပ်လုပ်မလုပ် စစ်ဆေးရန် ဘရောက်ဇာတွင် ကြိုတင်ကြည့်ရှုခြင်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w8-dm-3",
          termEn: "Broken link or image",
          termMy: "Broken Link or Image (ပျက်စီးနေသော link သို့မဟုတ် ပုံ)",
          matchEn:
              "A link or image that fails to load, often caused by a small typing mistake in the code",
          matchMy:
              "ကုဒ်ထဲရှိ အသေးစားရိုက်ထည့်မှားချက်ကြောင့် တင်ရန်မအောင်မြင်သော link သို့မဟုတ် ပုံ",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w8-dm-4",
          termEn: "Alt text",
          termMy: "Alt Text (ပုံဖော်ပြချက်စာသား)",
          matchEn:
              "A written description that helps everyone, including screen-reader users, understand an image",
          matchMy:
              "Screen reader သုံးသူများအပါအဝင် လူတိုင်းက ပုံကို နားလည်နိုင်ရန် ကူညီပေးသော စာဖြင့်ဖော်ပြချက်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w8-dm-5",
          termEn: "Heading hierarchy",
          termMy: "Heading Hierarchy (ခေါင်းစဉ်အဆင့်ဆင့်)",
          matchEn:
              "Organising a page's titles from most important, <h1>, down to smaller sub-headings",
          matchMy:
              "စာမျက်နှာ၏ ခေါင်းစဉ်များကို အရေးအကြီးဆုံး <h1> မှ အသေးစား ခေါင်းစဉ်ငယ်များအထိ စီစဉ်ခြင်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w8-dm-6",
          termEn: "Publishing a web page",
          termMy: "Publishing a Web Page (ဝက်ဘ်စာမျက်နှာ ထုတ်ဝေခြင်း)",
          matchEn:
              "Sharing a finished, tested web page so visitors can view it",
          matchMy:
              "ပြီးစီးပြီး စမ်းသပ်ပြီးသား ဝက်ဘ်စာမျက်နှာကို ဝင်ရောက်ကြည့်ရှုသူများ ကြည့်ရှုနိုင်ရန် မျှဝေခြင်း",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w8-d3",
      dayNumber: 3,
      titleEn: "Sort: Belongs in <head> or <body>?",
      titleMy: "စီစစ်ကြမည် - <head> ထဲမှာလား၊ <body> ထဲမှာလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Belongs in the <head>", "Belongs in the <body>"],
        bucketsMy: ["<head> ထဲတွင် ရှိသည်", "<body> ထဲတွင် ရှိသည်"],
        items: [
          SortingItem(
            id: "y6comp-w8-sort-1",
            labelEn: "<title> tag",
            labelMy: "<title> tag",
            correctBucketEn: "Belongs in the <head>",
            correctBucketMy: "<head> ထဲတွင် ရှိသည်",
          ),
          SortingItem(
            id: "y6comp-w8-sort-2",
            labelEn: "The page's tab title text",
            labelMy: "စာမျက်နှာ tab ခေါင်းစဉ်စာသား",
            correctBucketEn: "Belongs in the <head>",
            correctBucketMy: "<head> ထဲတွင် ရှိသည်",
          ),
          SortingItem(
            id: "y6comp-w8-sort-3",
            labelEn: "A character-encoding meta tag",
            labelMy: "Character-encoding meta tag",
            correctBucketEn: "Belongs in the <head>",
            correctBucketMy: "<head> ထဲတွင် ရှိသည်",
          ),
          SortingItem(
            id: "y6comp-w8-sort-4",
            labelEn: "<h1> heading tag",
            labelMy: "<h1> heading tag",
            correctBucketEn: "Belongs in the <body>",
            correctBucketMy: "<body> ထဲတွင် ရှိသည်",
          ),
          SortingItem(
            id: "y6comp-w8-sort-5",
            labelEn: "<p> paragraph tag",
            labelMy: "<p> paragraph tag",
            correctBucketEn: "Belongs in the <body>",
            correctBucketMy: "<body> ထဲတွင် ရှိသည်",
          ),
          SortingItem(
            id: "y6comp-w8-sort-6",
            labelEn: "<img> image tag",
            labelMy: "<img> image tag",
            correctBucketEn: "Belongs in the <body>",
            correctBucketMy: "<body> ထဲတွင် ရှိသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w8-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's All About Me Page",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ ကျွန်မအကြောင်း စာမျက်နှာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's All About Me Page",
        titleMy: "နှင်းချည်၏ ကျွန်မအကြောင်း စာမျက်နှာ",
        passageEn:
            "For her Term 2 capstone, Nay Chi decided to build a personal web page called \"All About Me and My Hobbies.\" Remembering every lesson from the term, she began with a wireframe: a big <h1> heading with her name, a friendly <p> paragraph introducing herself, a photo of her latest drawing with careful alt text, a link to her class's Wildlife Club page, and an <ol> ordered list ranking her three favourite hobbies.\n\nShe typed the whole page carefully, tag by tag, remembering how closing tags always had to match their openings. But when she previewed her page in the browser, the photo of her drawing did not appear -- just a small broken-image icon sat where her picture should have been. Nay Chi did not panic. She read through her <img> tag line by line, just as she had once traced her Birthday Countdown code for a forgotten colon, and found it: she had left off the closing quotation mark after her image's file name in the src attribute. She added the missing quotation mark, saved her work, and refreshed the browser.\n\nThis time, her drawing appeared perfectly beneath her heading, followed by her paragraph, her hobbies list, and her Wildlife Club link, all in the order her wireframe had promised. Nay Chi felt the same proud feeling she had felt at the end of Term 1 -- planning carefully, coding step by step, and calmly hunting down a small mistake had once again turned an idea into a real, working project, this time a web page instead of a program.",
        passageMy:
            "Term 2 capstone အတွက် နှင်းချည်သည် \"ကျွန်မနှင့် ကျွန်မ၏ ဝါသနာများအကြောင်း\" ဟူသော ကိုယ်ပိုင်ဝက်ဘ်စာမျက်နှာတစ်ခု တည်ဆောက်ရန် ဆုံးဖြတ်ခဲ့သည်။ ဤ Term ၏ သင်ခန်းစာတိုင်းကို သတိရနေကာ သူမသည် wireframe တစ်ခုဖြင့် စတင်ခဲ့သည် -- သူမ၏အမည်ပါသော ခေါင်းစဉ်ကြီး <h1>၊ မိမိကိုယ်ကို မိတ်ဆက်သော ဖော်ရွေသည့် <p> စာပိုဒ်၊ ဂရုတစိုက် alt text ပါသော သူမ၏ နောက်ဆုံးပန်းချီပုံ၊ အတန်း၏ သားရဲတိရစ္ဆာန်အသင်းစာမျက်နှာသို့ link တစ်ခု၊ သူမအနှစ်ဆုံး ဝါသနာသုံးမျိုးကို အဆင့်သတ်မှတ်ပေးသော <ol> ordered list တစ်ခု။\n\nသူမသည် ပိတ်တဂ်တိုင်းက ဖွင့်တဂ်နှင့် အမြဲကိုက်ညီရမည်ကို သတိရနေကာ tag တစ်ခုချင်းစီ ဂရုတစိုက် ရိုက်ထည့်ခဲ့သည်။ သို့သော် ဘရောက်ဇာတွင် သူမ၏စာမျက်နှာကို ကြိုတင်ကြည့်ရှုသောအခါ သူမ၏ပန်းချီပုံ မပေါ်လာခဲ့ပါ -- ပုံရှိသင့်သည့်နေရာတွင် ပျက်စီးနေသော ပုံသေးလေးတစ်ခုသာ ရှိနေခဲ့သည်။ နှင်းချည်သည် စိတ်မပျက်ခဲ့ပါ။ တစ်ခါက သူမ၏ မွေးနေ့ရေတွက်ချိန် ကုဒ်ကို မေ့ကျန်ခဲ့သော colon ရှာဖွေခဲ့ဘူးသည့်နည်းတူ သူမ၏ <img> tag ကို လိုင်းချင်းအလိုက် ပြန်ဖတ်ကာ ရှာတွေ့ခဲ့သည် -- src attribute ရှိ ပုံဖိုင်အမည်၏ နောက်တွင် ပိတ်ကိုးမျိုးကို ချန်ခဲ့မိသည်ကို။ သူမသည် ပျောက်ဆုံးနေသော ပိတ်ကိုးမျိုးကို ထည့်သွင်းကာ သူမ၏အလုပ်ကို သိမ်းဆည်းပြီး ဘရောက်ဇာကို ပြန်လည်စတင်ခဲ့သည်။\n\nဤအကြိမ်တွင် သူမ၏ပန်းချီပုံသည် ခေါင်းစဉ်အောက်တွင် စုံလင်စွာ ပေါ်လာခဲ့ပြီး၊ ၎င်းနောက် စာပိုဒ်၊ ဝါသနာစာရင်းနှင့် သားရဲတိရစ္ဆာန်အသင်း link တို့သည် wireframe က ကတိပေးခဲ့သည့်အစီအစဉ်အတိုင်း အားလုံး ဖြစ်ပေါ်လာခဲ့သည်။ နှင်းချည်သည် Term 1 အဆုံးတွင် ခံစားခဲ့ရသည့် ဂုဏ်ယူမှုကို ထပ်မံခံစားခဲ့ရသည် -- ဂရုတစိုက်စီစဉ်ခြင်း၊ အဆင့်ဆင့် ကုဒ်ရေးခြင်းနှင့် တည်ငြိမ်စွာ အမှားသေးလေးများကို ရှာဖွေခြင်းတို့သည် အကြံအစည်တစ်ခုကို အလုပ်အမှန်လုပ်သော စီမံကိန်းအဖြစ်သို့ တစ်ဖန် ပြောင်းလဲပေးခဲ့သည်၊ ယခုတစ်ကြိမ်မှာမူ ပရိုဂရမ်အစား ဝက်ဘ်စာမျက်နှာတစ်ခု ဖြစ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did Nay Chi name her Term 2 capstone web page?",
            questionMy:
                "နှင်းချည်သည် Term 2 capstone ဝက်ဘ်စာမျက်နှာကို မည်သို့အမည်ပေးခဲ့သနည်း။",
            optionsEn: [
              "All About Me and My Hobbies",
              "Nay Chi's Birthday Countdown",
              "The Wildlife Club Journal",
              "My Year 6 Timetable",
            ],
            optionsMy: [
              "ကျွန်မနှင့် ကျွန်မ၏ ဝါသနာများအကြောင်း",
              "နှင်းချည်၏ မွေးနေ့ရေတွက်ချိန်",
              "သားရဲတိရစ္ဆာန်အသင်း မှတ်တမ်း",
              "ကျွန်မ၏ Year 6 အချိန်ဇယား",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What problem appeared when Nay Chi previewed her page in the browser?",
            questionMy:
                "နှင်းချည်သည် သူမ၏စာမျက်နှာကို ဘရောက်ဇာတွင် ကြိုတင်ကြည့်ရှုသောအခါ မည်သည့်ပြဿနာ ပေါ်လာခဲ့သနည်။",
            optionsEn: [
              "Her drawing's photo did not appear, showing a broken-image icon instead",
              "The whole page appeared in the wrong language",
              "Her heading disappeared completely",
              "The browser crashed and would not reopen",
            ],
            optionsMy: [
              "သူမ၏ပန်းချီပုံ ဓာတ်ပုံ မပေါ်လာဘဲ ပျက်စီးနေသော ပုံသေးလေးတစ်ခု ပေါ်နေခဲ့သည်",
              "စာမျက်နှာတစ်ခုလုံး မှားယွင်းသောဘာသာစကားဖြင့် ပေါ်လာခဲ့သည်",
              "သူမ၏ခေါင်းစဉ် လုံးဝပျောက်ကွယ်သွားခဲ့သည်",
              "ဘရောက်ဇာသည် ပျက်စီးသွားပြီး ပြန်ဖွင့်၍ မရတော့ပါ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What exact mistake had Nay Chi made in her <img> tag?",
            questionMy:
                "နှင်းချည်သည် သူမ၏ <img> tag တွင် အတိအကျ မည်သည့်အမှားကို ပြုလုပ်မိခဲ့သနည်း။",
            optionsEn: [
              "She left off the closing quotation mark after the file name in the src attribute",
              "She used the wrong colour for her heading",
              "She forgot to write a title for the page",
              "She deleted her whole wireframe by mistake",
            ],
            optionsMy: [
              "src attribute ရှိ ဖိုင်အမည်၏ နောက်တွင် ပိတ်ကိုးမျိုးကို ချန်ခဲ့မိသည်",
              "သူမ၏ ခေါင်းစဉ်အတွက် မှားယွင်းသော အရောင်ကို သုံးမိခဲ့သည်",
              "စာမျက်နှာအတွက် ခေါင်းစဉ် ရေးရန် မေ့ကျန်ခဲ့သည်",
              "သူမ၏ wireframe တစ်ခုလုံးကို မှားယွင်းစွာ ဖျက်မိခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "How does this mistake echo something from Nay Chi's Term 1 capstone?",
            questionMy:
                "ဤအမှားသည် နှင်းချည်၏ Term 1 capstone မှ အရာတစ်ခုကို မည်သို့ ထပ်ခါထပ်ခါ တွေ့ရသနည်း။",
            optionsEn: [
              "Both were small missing-character mistakes found by carefully tracing through the code line by line",
              "Both mistakes were caused by a broken keyboard",
              "Both mistakes happened because she skipped planning entirely",
              "Both mistakes were fixed by asking a classmate to redo the whole project",
            ],
            optionsMy: [
              "နှစ်ခုစလုံးသည် ကုဒ်ကို လိုင်းချင်းအလိုက် ဂရုတစိုက် ပြန်ဖတ်ကာ ရှာတွေ့သော အက္ခရာသေးလေးများ ချန်ကျန်ခဲ့သည့် အမှားများဖြစ်သည်",
              "နှစ်ခုစလုံးသည် ကီးဘုတ်ပျက်နေသောကြောင့် ဖြစ်ခဲ့သည်",
              "နှစ်ခုစလုံးသည် စီစဉ်ခြင်းကို လုံးဝကျော်လွှားခဲ့သောကြောင့် ဖြစ်ခဲ့သည်",
              "နှစ်ခုစလုံးကို အတန်းဖော်တစ်ဦးအား စီမံကိန်းတစ်ခုလုံး ပြန်လုပ်ခိုင်းခြင်းဖြင့် ပြင်ဆင်ခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "After fixing the mistake, what appeared correctly on Nay Chi's finished page?",
            questionMy:
                "အမှားကို ပြင်ဆင်ပြီးနောက် နှင်းချည်၏ ပြီးစီးသောစာမျက်နှာတွင် ဘာများ မှန်ကန်စွာ ပေါ်လာခဲ့သနည်း။",
            optionsEn: [
              "Her drawing, paragraph, hobbies list, and Wildlife Club link, all in her planned order",
              "Only her heading, with nothing else",
              "A completely different photo she had not chosen",
              "Her page in a language other than the one she typed",
            ],
            optionsMy: [
              "သူမ၏ပန်းချီပုံ၊ စာပိုဒ်၊ ဝါသနာစာရင်းနှင့် သားရဲတိရစ္ဆာန်အသင်း link, သူမစီစဉ်ထားသည့် အစီအစဉ်အတိုင်း အားလုံး",
              "သူမ၏ ခေါင်းစဉ်တစ်ခုတည်း၊ ဘာမှမပါ",
              "သူမမရွေးချယ်ခဲ့သော လုံးဝကွဲပြားသည့် ဓာတ်ပုံတစ်ပုံ",
              "သူမရိုက်ထည့်ခဲ့သည့်ဘာသာစကားမဟုတ်သော အခြားဘာသာစကားဖြင့် စာမျက်နှာ",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w8-d5",
      dayNumber: 5,
      titleEn: "Term 2 Round-Up: Web Page Creation",
      titleMy: "Term 2 အနှစ်ချုပ် - ဝက်ဘ်စာမျက်နှာ ဖန်တီးခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does HTML stand for, and what is it used for?",
          questionMy:
              "HTML ၏ အဓိပ္ပာယ်မှာ အဘယ်နည်း၊ ၎င်းကို ဘာအတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "HyperText Markup Language, used to structure content on a web page",
            "High Text Making Language, used to store photos",
            "Home Tool Markup Language, used to charge batteries",
            "Hyper Typed Machine Language, used to play music",
          ],
          optionsMy: [
            "HyperText Markup Language ဖြစ်ပြီး ဝက်ဘ်စာမျက်နှာပေါ်ရှိ အကြောင်းအရာများကို ဖွဲ့စည်းရန် အသုံးပြုသည်",
            "High Text Making Language ဖြစ်ပြီး ဓာတ်ပုံများသိမ်းဆည်းရန် အသုံးပြုသည်",
            "Home Tool Markup Language ဖြစ်ပြီး ဘက်ထရီအားသွင်းရန် အသုံးပြုသည်",
            "Hyper Typed Machine Language ဖြစ်ပြီး ဂီတဖွင့်ရန် အသုံးပြုသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which attribute of the <img> tag describes an image in words for accessibility?",
          questionMy:
              "<img> tag ၏ မည်သည့် attribute က အသုံးပြုနိုင်မှုအတွက် ပုံကို စာသားဖြင့် ဖော်ပြပေးသနည်း။",
          optionsEn: ["alt", "href", "src", "title"],
          optionsMy: ["alt", "href", "src", "title"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which tag creates a clickable hyperlink to another page?",
          questionMy:
              "အခြားစာမျက်နှာသို့ နှိပ်၍ရသော hyperlink တစ်ခုကို မည်သည့် tag က ဖန်တီးပေးသနည်း။",
          optionsEn: ["<a>", "<img>", "<h1>", "<ul>"],
          optionsMy: ["<a>", "<img>", "<h1>", "<ul>"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What should you always do before starting to type any HTML for a new page?",
          questionMy:
              "စာမျက်နှာအသစ်တစ်ခုအတွက် HTML စတင်မရိုက်ထည့်မီ အမြဲတမ်း ဘာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Plan the page with a wireframe",
            "Delete all previous projects",
            "Turn off the internet connection",
            "Change the computer's language settings",
          ],
          optionsMy: [
            "Wireframe ဖြင့် စာမျက်နှာကို စီစဉ်ခြင်း",
            "ယခင်စီမံကိန်းအားလုံးကို ဖျက်ခြင်း",
            "အင်တာနက်ချိတ်ဆက်မှုကို ပိတ်ခြင်း",
            "ကွန်ပျူတာ၏ ဘာသာစကားချိန်ညှိချက်ကို ပြောင်းလဲခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In her Term 2 capstone, what small mistake did Nay Chi find and fix in her <img> tag, echoing her Term 1 forgotten colon?",
          questionMy:
              "Term 2 capstone တွင် နှင်းချည်သည် Term 1 ၏ မေ့ကျန်ခဲ့သော colon ကို ထပ်ခါထပ်ခါ ပြန်တွေ့ရသည့်အနေဖြင့် သူမ၏ <img> tag တွင် မည်သည့် အမှားသေးလေးကို ရှာတွေ့ပြင်ဆင်ခဲ့သနည်း။",
          optionsEn: [
            "A missing closing quotation mark in the src attribute",
            "A missing closing bracket on the whole page",
            "A wrong colour chosen for her heading",
            "A misspelt class subject name",
          ],
          optionsMy: [
            "src attribute ရှိ ပျောက်ဆုံးနေသော ပိတ်ကိုးမျိုး",
            "စာမျက်နှာတစ်ခုလုံးရှိ ပျောက်ဆုံးနေသော ပိတ်ကွင်း",
            "ခေါင်းစဉ်အတွက် မှားယွင်းစွာရွေးချယ်ထားသော အရောင်",
            "အက္ခရာမှားစွာရေးထားသော ဘာသာရပ်အမည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _year6ComputingTerm2 = CourseTermDef(
  id: "course-year6-computing-t2",
  termNumber: 2,
  titleEn: "Web Page Creation",
  titleMy: "ဝက်ဘ်စာမျက်နှာ ဖန်တီးခြင်း",
  certificateTitleEn: "Web Page Creator",
  certificateTitleMy: "ဝက်ဘ်စာမျက်နှာ ဖန်တီးသူ",
  weeks: [
    _year6ComputingWeek5,
    _year6ComputingWeek6,
    _year6ComputingWeek7,
    _year6ComputingWeek8,
  ],
);
