const CourseWeekDef _year6HumanitiesWeek5 = CourseWeekDef(
  id: "course-year6-humanities-w5",
  weekNumber: 5,
  titleEn: "Reading Maps: Symbols, Keys and Compass Directions",
  titleMy: "မြေပုံဖတ်ခြင်း - သင်္ကေတများ၊ အညွှန်းနှင့် အရပ်မျက်နှာညွှန်ကိရိယာ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6hum-w5-d1",
      dayNumber: 1,
      titleEn: "Symbols, Keys and the Compass Rose",
      titleMy: "သင်္ကေတများ၊ အညွှန်းနှင့် အရပ်မျက်နှာညွှန်ပန်းချီ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is the purpose of a map's key (or legend)?",
          questionMy:
              "မြေပုံတစ်ခု၏ အညွှန်း (key/legend) ၏ ရည်ရွယ်ချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "It explains what each symbol on the map means",
            "It tells you the weather for the day",
            "It lists the names of every person who made the map",
            "It shows how old the map is",
          ],
          optionsMy: [
            "မြေပုံပေါ်ရှိ သင်္ကေတတစ်ခုစီ ဆိုလိုသည့်အဓိပ္ပာယ်ကို ရှင်းပြခြင်း",
            "ထိုနေ့၏ ရာသီဥတုကို ပြောပြခြင်း",
            "မြေပုံကို ရေးဆွဲသူတိုင်း၏ အမည်များကို ဖော်ပြခြင်း",
            "မြေပုံ မည်မျှ ဟောင်းနွမ်းပြီလဲ ပြသခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "On an eight-point compass rose, which direction is exactly opposite North?",
          questionMy:
              "အမှတ် ရှစ်ခုပါ အရပ်မျက်နှာညွှန်ပန်းချီတွင် မြောက်အရပ်၏ တည့်တည့်ဆန့်ကျင်ဘက်မှာ မည်သည့်အရပ်နည်း။",
          optionsEn: ["South", "East", "West", "Northeast"],
          optionsMy: [
            "တောင်အရပ်",
            "အရှေ့အရပ်",
            "အနောက်အရပ်",
            "အရှေ့မြောက်အရပ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which of these is an example of a physical feature usually shown on a map?",
          questionMy:
              "အောက်ပါတို့အနက် မြေပုံပေါ်တွင် ပြသလေ့ရှိသည့် သဘာဝပထဝီဆိုင်ရာအရာ (physical feature) ဥပမာတစ်ခုမှာ အဘယ်နည်း။",
          optionsEn: [
            "A woodland",
            "A supermarket",
            "A car park",
            "A football stadium",
          ],
          optionsMy: [
            "သစ်တောကျေးရွာ",
            "စူပါမားကက်",
            "ကားရပ်နားရာနေရာ",
            "ဘောလုံးကွင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "On a compass rose, which direction lies exactly between North and East?",
          questionMy:
              "အရပ်မျက်နှာညွှန်ပန်းချီတွင် မြောက်အရပ်နှင့် အရှေ့အရပ်၏ အလယ်တွင် တည်ရှိသည့်အရပ်မှာ အဘယ်နည်း။",
          optionsEn: ["Northeast", "Southwest", "South", "West"],
          optionsMy: [
            "အရှေ့မြောက်အရပ်",
            "အနောက်တောင်အရပ်",
            "တောင်အရပ်",
            "အနောက်အရပ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a map's scale used for?",
          questionMy:
              "မြေပုံတစ်ခု၏ အချိုးကိန်း (scale) ကို မည်သည့်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Working out real distances using the map",
            "Colouring in the mountains",
            "Naming the map's author",
            "Deciding which language to print the map in",
          ],
          optionsMy: [
            "မြေပုံကို အသုံးပြု၍ အမှန်တကယ် အကွာအဝေးကို တွက်ချက်ခြင်း",
            "တောင်များကို အရောင်ခြယ်ခြင်း",
            "မြေပုံရေးဆွဲသူ၏ အမည်ကို သတ်မှတ်ခြင်း",
            "မြေပုံကို မည်သည့်ဘာသာစကားဖြင့် ပုံနှိပ်မည်ကို ဆုံးဖြတ်ခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6hum-w5-d2",
      dayNumber: 2,
      titleEn: "Match the Map Vocabulary",
      titleMy: "မြေပုံ ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6hum-w5-dm-1",
          termEn: "Compass rose",
          termMy: "အရပ်မျက်နှာညွှန်ပန်းချီ (Compass rose)",
          matchEn:
              "A diagram showing the eight main directions, such as north, south, east and west",
          matchMy:
              "မြောက်၊ တောင်၊ အရှေ့၊ အနောက်ကဲ့သို့ အဓိကအရပ်မျက်နှာ ရှစ်ခုကို ပြသည့်ပုံ",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6hum-w5-dm-2",
          termEn: "Key (legend)",
          termMy: "အညွှန်း (Key / Legend)",
          matchEn: "A list that explains what each symbol on a map stands for",
          matchMy:
              "မြေပုံပေါ်ရှိ သင်္ကေတတစ်ခုစီ ကိုယ်စားပြုသည့်အရာကို ရှင်းပြသော စာရင်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6hum-w5-dm-3",
          termEn: "Symbol",
          termMy: "သင်္ကေတ (Symbol)",
          matchEn:
              "A small picture or shape that stands for a real feature on a map",
          matchMy:
              "မြေပုံပေါ်ရှိ အမှန်တကယ်ရှိသောအရာကို ကိုယ်စားပြုသည့် ပုံသေးလေးတစ်ခု (သို့) ပုံသဏ္ဍာန်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6hum-w5-dm-4",
          termEn: "Scale",
          termMy: "အချိုးကိန်း (Scale)",
          matchEn:
              "The ratio between a distance on a map and the real distance on the ground",
          matchMy:
              "မြေပုံပေါ်ရှိ အကွာအဝေးနှင့် မြေပြင်ပေါ်ရှိ အမှန်တကယ် အကွာအဝေးအကြား အချိုးကိန်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6hum-w5-dm-5",
          termEn: "Ordnance Survey (OS) map",
          termMy: "OS မြေပုံ (Ordnance Survey)",
          matchEn:
              "A detailed official map that uses a standard set of symbols to show an area",
          matchMy:
              "ဒေသတစ်ခုကို ပြသရန် စံသတ်မှတ်ထားသော သင်္ကေတများကို အသုံးပြုသည့် တိကျသေချာသော တရားဝင်မြေပုံ",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6hum-w5-dm-6",
          termEn: "Contour line",
          termMy: "အမြင့်တူမျဉ်း (Contour line)",
          matchEn:
              "A line joining points of equal height, used to show hills and slopes",
          matchMy:
              "တောင်နှင့် စောင်းလျားမှုများကို ပြသရန် အမြင့်တူသော နေရာများကို ဆက်စပ်ထားသည့်မျဉ်း",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6hum-w5-d3",
      dayNumber: 3,
      titleEn: "Sort: Physical or Human-Made Feature?",
      titleMy: "စီစစ်ကြမည် - သဘာဝပထဝီအရာလား၊ လူလုပ်အရာလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Physical Feature", "Human-Made Feature"],
        bucketsMy: ["သဘာဝပထဝီဆိုင်ရာအရာ", "လူလုပ်အရာ"],
        items: [
          SortingItem(
            id: "y6hum-w5-sort-1",
            labelEn: "Woodland",
            labelMy: "သစ်တောကျေးရွာ",
            correctBucketEn: "Physical Feature",
            correctBucketMy: "သဘာဝပထဝီဆိုင်ရာအရာ",
          ),
          SortingItem(
            id: "y6hum-w5-sort-2",
            labelEn: "River",
            labelMy: "မြစ်",
            correctBucketEn: "Physical Feature",
            correctBucketMy: "သဘာဝပထဝီဆိုင်ရာအရာ",
          ),
          SortingItem(
            id: "y6hum-w5-sort-3",
            labelEn: "Hill",
            labelMy: "တောင်ကုန်း",
            correctBucketEn: "Physical Feature",
            correctBucketMy: "သဘာဝပထဝီဆိုင်ရာအရာ",
          ),
          SortingItem(
            id: "y6hum-w5-sort-4",
            labelEn: "Church",
            labelMy: "ဘုရားကျောင်း",
            correctBucketEn: "Human-Made Feature",
            correctBucketMy: "လူလုပ်အရာ",
          ),
          SortingItem(
            id: "y6hum-w5-sort-5",
            labelEn: "Bridge",
            labelMy: "တံတား",
            correctBucketEn: "Human-Made Feature",
            correctBucketMy: "လူလုပ်အရာ",
          ),
          SortingItem(
            id: "y6hum-w5-sort-6",
            labelEn: "Railway line",
            labelMy: "မီးရထားလမ်းကြောင်း",
            correctBucketEn: "Human-Made Feature",
            correctBucketMy: "လူလုပ်အရာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6hum-w5-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su Finds the Maya World on a Map",
      titleMy:
          "စာဖတ်ခြင်း - စုစု မာယာလောကကို မြေပုံပေါ်တွင် ရှာဖွေတွေ့ရှိခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su Finds the Maya World on a Map",
        titleMy: "စုစု မာယာလောကကို မြေပုံပေါ်တွင် ရှာဖွေတွေ့ရှိခြင်း",
        passageEn:
            "\"Last term you were historians,\" said Su Su's teacher on the first day of the new term, unrolling a large world map across the whiteboard, \"and this term you are going to become geographers.\" Su Su sat up straight. She still remembered her final project from last term, the big question she had answered about whether the Maya civilisation had truly disappeared, and how she had discovered that the great southern cities changed while the Maya people themselves never vanished at all. \"Before we start,\" the teacher said, \"who can find Mesoamerica, where the Maya lived, on this map?\"\n\nSu Su studied the compass rose printed in the corner of the map, then traced her finger south and slightly west from the middle of North America until she landed on a stretch of land coloured green for rainforest in the map's key. \"There,\" she said proudly, tapping present-day Mexico and Central America. Her teacher smiled and explained that every map, whether it showed the whole world or just their own street, used the same basic tools to help people find their way: a key to explain its symbols, a compass rose to show direction, and a scale to measure real distances.\n\nAs Su Su looked more closely at the map's key, she noticed a tiny triangle symbol marking mountains near where Tikal had once stood, and a wavy blue line for a river not far from the old Maya cities. She realised that maps were not just for finding places, they were tools for understanding a whole story about the land itself. If she could read a map so well that she found the lost cities of the Maya, she thought, then surely she could learn to read a map of her own neighbourhood around Nova School too, and that was exactly the skill her teacher promised the class would build this term.",
        passageMy:
            "\"ပြီးခဲ့တဲ့ နှစ်လက်မှာ သင်တို့ဟာ သမိုင်းပညာရှင်တွေပါ\" ဟု စုစု၏ ဆရာမက နှစ်သစ်၏ ပထမနေ့တွင် ကမ္ဘာ့မြေပုံကြီးတစ်ခုကို ဘုတ်ပြားပေါ်တွင် ဖြန့်ချလိုက်ရင်း ပြောခဲ့သည်၊ \"ဒီနှစ်လက်မှာတော့ သင်တို့ ပထဝီပညာရှင်တွေ ဖြစ်လာကြတော့မယ်\" ဟု ဆက်ပြောသည်။ စုစု တည့်တည့်ထိုင်လိုက်သည်။ ပြီးခဲ့သော နှစ်လက်က သူမ၏ နောက်ဆုံးပရိုဂျက်ကို သူမ ယခုတိုင် မှတ်မိနေဆဲဖြစ်ပြီး၊ မာယာယဉ်ကျေးမှု အမှန်တကယ် ကွယ်ပျောက်သွားခဲ့သလားဆိုသည့် မေးခွန်းကြီးကို သူမ ဖြေရှင်းခဲ့ပုံနှင့် တောင်ပိုင်းရှိ မြို့တော်ကြီးများ ပြောင်းလဲသွားခဲ့သော်လည်း မာယာလူများ တစ်ခါမျှ လုံးဝ ကွယ်ပျောက်မသွားခဲ့ကြောင်း သိရှိခဲ့ပုံကို သူမ ပြန်လည်သတိရနေဆဲဖြစ်သည်။ \"စတင်ခင် ဒီမြေပုံပေါ်မှာ မာယာလူမျိုးများ နေထိုင်ခဲ့တဲ့ မက်ဆိုအမေရိကားကို ရှာတွေ့နိုင်တဲ့သူ ရှိလား\" ဟု ဆရာမက မေးခဲ့သည်။\n\nစုစုသည် မြေပုံ၏ ထောင့်တွင် ပုံနှိပ်ထားသော အရပ်မျက်နှာညွှန်ပန်းချီကို လေ့လာကာ၊ မြောက်အမေရိကား၏ အလယ်ခြေမှ တောင်ဘက်သို့ အနည်းငယ် အနောက်ဘက်သို့ လှမ်းညွှန်းကာ မြေပုံ၏ အညွှန်းတွင် မိုးသစ်တောအတွက် စိမ်းစိုအရောင်ဖြင့် ပြထားသည့် မြေအနက်တစ်ခုအပေါ် ရောက်ရှိသွားသည်။ \"ဒီမှာ\" ဟု သူမ ဂုဏ်ယူစွာ ယခုခေတ် မက်ဆီကိုနှင့် အလယ်ပိုင်းအမေရိကားကို ထောက်လိုက်သည်။ ဆရာမက ပြုံးရင်း၊ ကမ္ဘာတစ်ခုလုံးကိုပြသည့်မြေပုံဖြစ်စေ၊ မိမိတို့ကိုယ်ပိုင်လမ်းကိုသာ ပြသည့်မြေပုံဖြစ်စေ၊ မြေပုံတိုင်းသည် လူများ လမ်းရှာရန် ကူညီပေးသော အခြေခံကိရိယာအတူတူကို အသုံးပြုကြောင်း ရှင်းပြသည် - သင်္ကေတများကို ရှင်းပြသည့် အညွှန်း၊ အရပ်ကို ပြသည့် အရပ်မျက်နှာညွှန်ပန်းချီနှင့် အမှန်တကယ် အကွာအဝေးကို တိုင်းတာရန် အချိုးကိန်း။\n\nစုစုသည် မြေပုံ၏ အညွှန်းကို ပို၍ အနီးကပ် ကြည့်ရှုစဉ်၊ ယခင်က တီကယ် ရပ်တည်ခဲ့သည့်နေရာအနီးရှိ တောင်များကို ဖော်ပြသည့် သုံးထောင့်ပုံသင်္ကေတငယ်တစ်ခုနှင့် ရှေးဟောင်း မာယာမြို့တော်များနှင့် မလှမ်းမကမ်းရှိ မြစ်တစ်ခုကိုပြသည့် ရေလိုင်းကွေးအပြာရောင်တစ်ခုကို သတိထားမိသည်။ မြေပုံများသည် နေရာများကိုသာ ရှာဖွေရန်အတွက် မဟုတ်ဘဲ၊ မြေတစ်ခုလုံး၏ ဇာတ်လမ်းတစ်ခုလုံးကို နားလည်ရန်အတွက် ကိရိယာများလည်း ဖြစ်ကြောင်း သူမ သဘောပေါက်လာသည်။ မာယာလူမျိုးများ၏ ပျောက်ဆုံးနေသည့်မြို့တော်များကို ရှာတွေ့နိုင်လောက်အောင် မြေပုံကို ကောင်းမွန်စွာ ဖတ်တတ်ခဲ့လျှင်၊ Nova ကျောင်းပတ်ဝန်းကျင်ရှိ သူမ၏ ကိုယ်ပိုင်ရပ်ကွက်၏ မြေပုံကိုလည်း ဖတ်တတ်အောင် သင်ယူနိုင်မည်ဟု သူမ ယုံကြည်ခဲ့ပြီး၊ ထိုကျွမ်းကျင်မှုသည်ပင် ဤနှစ်လက်တစ်လျှောက် ဆရာမက အတန်းကို တည်ဆောက်ပေးမည်ဟု ကတိပြုထားသည့် ကျွမ်းကျင်မှုပင် ဖြစ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What subject does Su Su's teacher say the class is moving on to this term?",
            questionMy:
                "ဒီနှစ်လက်တွင် အတန်းသည် မည်သည့်ဘာသာရပ်သို့ ကူးပြောင်းကြောင်း ဆရာမက ပြောသနည်း။",
            optionsEn: ["Geography", "Mathematics", "Art", "Music"],
            optionsMy: ["ပထဝီဝင်ပညာ", "သင်္ချာ", "အနုပညာ", "ဂီတ"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What does Su Su remember about her final project from last term?",
            questionMy:
                "ပြီးခဲ့သောနှစ်လက်ရှိ သူမ၏ နောက်ဆုံးပရိုဂျက်နှင့်ပတ်သက်၍ စုစု မည်သို့မှတ်မိနေသနည်း။",
            optionsEn: [
              "She had answered whether the Maya civilisation truly disappeared",
              "She had built a model pyramid out of clay",
              "She had learned to play a Maya musical instrument",
              "She had visited Mexico in person",
            ],
            optionsMy: [
              "မာယာယဉ်ကျေးမှု အမှန်တကယ် ကွယ်ပျောက်သွားသလား ဆိုသည်ကို ဖြေရှင်းခဲ့ခြင်း",
              "မြေဆေးဖြင့် ပြေဟိရမ်စံပြတစ်ခု ပြုလုပ်ခဲ့ခြင်း",
              "မာယာဂီတတူရိယာတစ်ခု တီးခတ်တတ်အောင် သင်ယူခဲ့ခြင်း",
              "မက်ဆီကိုကို ကိုယ်တိုင် သွားရောက်ခဲ့ခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What three map tools does the teacher say every map uses?",
            questionMy:
                "မြေပုံတိုင်း အသုံးပြုသည့် ကိရိယာသုံးမျိုးအဖြစ် ဆရာမက အဘယ်အရာများကို ဖော်ပြသနည်း။",
            optionsEn: [
              "A key, a compass rose, and a scale",
              "A title, an author, and a page number",
              "A photograph, a caption, and a date",
              "A password, a lock, and a key card",
            ],
            optionsMy: [
              "အညွှန်း၊ အရပ်မျက်နှာညွှန်ပန်းချီနှင့် အချိုးကိန်း",
              "ခေါင်းစဉ်၊ စာရေးသူနှင့် စာမျက်နှာနံပါတ်",
              "ဓာတ်ပုံ၊ ရှင်းလင်းချက်နှင့် ရက်စွဲ",
              "စကားဝှက်၊ သော့နှင့် သော့ကတ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What symbol does Su Su notice on the map's key near where Tikal once stood?",
            questionMy:
                "တီကယ် ယခင်ရပ်တည်ခဲ့သည့်နေရာအနီးရှိ မြေပုံ၏ အညွှန်းတွင် စုစု မည်သည့်သင်္ကေတကို သတိထားမိသနည်း။",
            optionsEn: [
              "A small triangle symbol for mountains",
              "A star symbol for a capital city",
              "A cross symbol for a hospital",
              "A tent symbol for a campsite",
            ],
            optionsMy: [
              "တောင်များအတွက် သုံးထောင့်ပုံသင်္ကေတငယ်",
              "မြို့တော်အတွက် ကြယ်သင်္ကေတ",
              "ဆေးရုံအတွက် ကားချစ်သင်္ကေတ",
              "စခန်းချရာနေရာအတွက် တဲသင်္ကေတ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What does Su Su realise about maps by the end of the passage?",
            questionMy:
                "စာပိုဒ်၏ အဆုံးတွင် မြေပုံများနှင့်ပတ်သက်၍ စုစု အဘယ်အရာကို သဘောပေါက်လာသနည်း။",
            optionsEn: [
              "Maps are tools for understanding a whole story about the land, not just finding places",
              "Maps are only useful for finding treasure",
              "Maps never change over time",
              "Maps can only show one country at a time",
            ],
            optionsMy: [
              "မြေပုံများသည် နေရာများကို ရှာဖွေရန်အတွက်သာမက၊ မြေတစ်ခုလုံး၏ ဇာတ်လမ်းကို နားလည်ရန်အတွက်ပါ ကိရိယာများဖြစ်ကြောင်း",
              "မြေပုံများသည် ရွှေဘဏ္ဍာရှာဖွေရန်အတွက်သာ အသုံးဝင်ခြင်း",
              "မြေပုံများသည် အချိန်ကြာလာသော်လည်း တစ်ခါမျှ ပြောင်းလဲခြင်းမရှိခြင်း",
              "မြေပုံများသည် တစ်ကြိမ်လျှင် နိုင်ငံတစ်ခုသာ ပြသနိုင်ခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6hum-w5-d5",
      dayNumber: 5,
      titleEn: "Map Reading Round-Up",
      titleMy: "မြေပုံဖတ်ခြင်း အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does a map's key explain?",
          questionMy: "မြေပုံတစ်ခု၏ အညွှန်းက အဘယ်အရာကို ရှင်းပြသနည်း။",
          optionsEn: [
            "What each symbol on the map means",
            "The weather forecast",
            "The map-maker's birthday",
            "The price of the map",
          ],
          optionsMy: [
            "မြေပုံပေါ်ရှိ သင်္ကေတတစ်ခုစီ၏ အဓိပ္ပာယ်",
            "ရာသီဥတု ခန့်မှန်းချက်",
            "မြေပုံရေးဆွဲသူ၏ မွေးနေ့",
            "မြေပုံ၏ တန်ဖိုး",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which direction is directly opposite East on a compass rose?",
          questionMy:
              "အရပ်မျက်နှာညွှန်ပန်းချီတွင် အရှေ့အရပ်၏ တည့်တည့်ဆန့်ကျင်ဘက်မှာ မည်သည့်အရပ်နည်း။",
          optionsEn: ["West", "North", "South", "Southeast"],
          optionsMy: [
            "အနောက်အရပ်",
            "မြောက်အရပ်",
            "တောင်အရပ်",
            "အရှေ့တောင်အရပ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A woodland, a river and a hill are all examples of what type of feature?",
          questionMy:
              "သစ်တော၊ မြစ်နှင့် တောင်ကုန်းတို့သည် မည်သည့်အမျိုးအစား၏ ဥပမာများဖြစ်သနည်း။",
          optionsEn: [
            "Physical features",
            "Human-made features",
            "Weather symbols",
            "Compass points",
          ],
          optionsMy: [
            "သဘာဝပထဝီဆိုင်ရာအရာများ",
            "လူလုပ်အရာများ",
            "ရာသီဥတုသင်္ကေတများ",
            "အရပ်မျက်နှာအမှတ်များ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a map's scale used to help you do?",
          questionMy:
              "မြေပုံ၏ အချိုးကိန်းသည် သင့်အား မည်သည့်အရာကို လုပ်ဆောင်ရန် ကူညီပေးသနည်း။",
          optionsEn: [
            "Work out real distances on the ground",
            "Choose which colours to use",
            "Find the map's title",
            "Count the number of symbols",
          ],
          optionsMy: [
            "မြေပြင်ပေါ်ရှိ အမှန်တကယ် အကွာအဝေးများကို တွက်ချက်ခြင်း",
            "မည်သည့်အရောင်များ အသုံးပြုမည်ကို ရွေးချယ်ခြင်း",
            "မြေပုံ၏ ခေါင်းစဉ်ကို ရှာဖွေခြင်း",
            "သင်္ကေတအရေအတွက်ကို ရေတွက်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, what did Su Su use to find Mesoamerica on the world map?",
          questionMy:
              "စာဖတ်ခြင်း စာပိုဒ်တွင် ကမ္ဘာ့မြေပုံပေါ်မှ မက်ဆိုအမေရိကားကို ရှာဖွေရန် စုစု အဘယ်အရာကို အသုံးပြုခဲ့သနည်း။",
          optionsEn: [
            "The compass rose and the map's key",
            "A telescope",
            "A calculator",
            "A dictionary",
          ],
          optionsMy: [
            "အရပ်မျက်နှာညွှန်ပန်းချီနှင့် မြေပုံ၏ အညွှန်း",
            "အဝေးမြင်မှန်ပြောင်း",
            "ဂဏန်းတွက်စက်",
            "အဘိဓာန်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6HumanitiesWeek6 = CourseWeekDef(
  id: "course-year6-humanities-w6",
  weekNumber: 6,
  titleEn: "Grid References and Map Scale",
  titleMy: "ဇယားကွက် ကိုးကားချက်များနှင့် မြေပုံအချိုးကိန်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6hum-w6-d1",
      dayNumber: 1,
      titleEn: "Eastings, Northings and Grid References",
      titleMy: "Eastings၊ Northings နှင့် ဇယားကွက် ကိုးကားချက်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In a grid reference, which set of numbers do you always read first?",
          questionMy:
              "ဇယားကွက် ကိုးကားချက်တစ်ခုတွင် မည်သည့်ဂဏန်းအစုကို အမြဲဦးစွာ ဖတ်ရသနည်း။",
          optionsEn: [
            "The eastings (reading across the bottom)",
            "The northings (reading up the side)",
            "The scale number",
            "The compass letters",
          ],
          optionsMy: [
            "အောက်ခြေတစ်လျှောက် ဖတ်သော eastings",
            "ဘေးတစ်ဘက်တက်၍ ဖတ်သော northings",
            "အချိုးကိန်း ဂဏန်း",
            "အရပ်မျက်နှာ စာလုံးများ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What does a four-figure grid reference identify on a map?",
          questionMy:
              "လေးလုံးပါ ဇယားကွက် ကိုးကားချက်တစ်ခုသည် မြေပုံပေါ်တွင် အဘယ်အရာကို ဖော်ပြသနည်း။",
          optionsEn: [
            "A whole grid square",
            "One exact single point",
            "The name of a country",
            "The colour of the map",
          ],
          optionsMy: [
            "ဇယားကွက် တစ်ကွက်လုံး",
            "အတိအကျ တစ်ချက်တည်း",
            "နိုင်ငံတစ်ခု၏ အမည်",
            "မြေပုံ၏ အရောင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "How many digits does a six-figure grid reference have in total?",
          questionMy:
              "ခြောက်လုံးပါ ဇယားကွက် ကိုးကားချက်တစ်ခုတွင် စုစုပေါင်း ဂဏန်းမည်မျှ ပါဝင်သနည်း။",
          optionsEn: ["Six", "Four", "Eight", "Two"],
          optionsMy: ["ခြောက်လုံး", "လေးလုံး", "ရှစ်လုံး", "နှစ်လုံး"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A well-known memory phrase for reading grid references correctly is...?",
          questionMy:
              "ဇယားကွက် ကိုးကားချက်များကို မှန်ကန်စွာ ဖတ်ရန် ကျော်ကြားသော အမှတ်ရလွယ်စကားစုမှာ အဘယ်နည်း။",
          optionsEn: [
            "Along the corridor, up the stairs",
            "Left is right, right is left",
            "Up is down, down is up",
            "First the colour, then the shape",
          ],
          optionsMy: [
            "လမ်းကြောင်းတစ်လျှောက် ဦးစွာသွား၊ ထို့နောက်လှေကားပေါ်တက်",
            "ဘယ်ဘက်က ညာဘက်၊ ညာဘက်က ဘယ်ဘက်",
            "အပေါ်က အောက်၊ အောက်က အပေါ်",
            "ဦးစွာ အရောင်၊ ထို့နောက် ပုံသဏ္ဍာန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "On a map with a scale of 1:25,000, how many real centimetres does 1 cm on the map represent?",
          questionMy:
              "၁:၂၅,၀၀၀ အချိုးကိန်းရှိသော မြေပုံတွင် မြေပုံပေါ်ရှိ ၁ စင်တီမီတာသည် အမှန်တကယ် စင်တီမီတာ မည်မျှ ကိုယ်စားပြုသနည်း။",
          optionsEn: ["25,000 cm", "25 cm", "100 cm", "1,000,000 cm"],
          optionsMy: [
            "စင်တီမီတာ ၂၅,၀၀၀",
            "စင်တီမီတာ ၂၅",
            "စင်တီမီတာ ၁၀၀",
            "စင်တီမီတာ ၁,၀၀၀,၀၀၀",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6hum-w6-d2",
      dayNumber: 2,
      titleEn: "Match the Grid Reference Vocabulary",
      titleMy: "ဇယားကွက် ကိုးကားချက် ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6hum-w6-dm-1",
          termEn: "Easting",
          termMy: "Easting",
          matchEn:
              "The number read first, showing how far across a grid a point is",
          matchMy:
              "ဇယားကွက်တစ်ခု အလျားလိုက် မည်မျှဝေးကွာသည်ကို ပြသည့် ဦးစွာဖတ်ရသောဂဏန်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6hum-w6-dm-2",
          termEn: "Northing",
          termMy: "Northing",
          matchEn:
              "The number read second, showing how far up a grid a point is",
          matchMy:
              "ဇယားကွက်တစ်ခု အထက်သို့ မည်မျှတက်ရသည်ကို ပြသည့် နောက်ဖတ်ရသောဂဏန်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6hum-w6-dm-3",
          termEn: "Four-figure grid reference",
          termMy: "လေးလုံးပါ ဇယားကွက်ကိုးကားချက်",
          matchEn:
              "A reference using two easting digits and two northing digits to locate a whole square",
          matchMy:
              "ဇယားကွက်တစ်ကွက်လုံးကို ဖော်ပြရန် easting ဂဏန်းနှစ်လုံးနှင့် northing ဂဏန်းနှစ်လုံး အသုံးပြုသည့် ကိုးကားချက်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6hum-w6-dm-4",
          termEn: "Six-figure grid reference",
          termMy: "ခြောက်လုံးပါ ဇယားကွက်ကိုးကားချက်",
          matchEn:
              "A more precise reference using three easting digits and three northing digits",
          matchMy:
              "easting ဂဏန်းသုံးလုံးနှင့် northing ဂဏန်းသုံးလုံး အသုံးပြု၍ ပို၍တိကျသော ကိုးကားချက်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6hum-w6-dm-5",
          termEn: "Scale ratio",
          termMy: "အချိုးကိန်း (Scale ratio)",
          matchEn:
              "A ratio, such as 1:25,000, comparing map distance to real distance",
          matchMy:
              "မြေပုံအကွာအဝေးနှင့် အမှန်တကယ် အကွာအဝေးကို နှိုင်းယှဉ်သော ၁:၂၅,၀၀၀ ကဲ့သို့ အချိုးကိန်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6hum-w6-dm-6",
          termEn: "Grid square",
          termMy: "ဇယားကွက် (Grid square)",
          matchEn: "One box formed by the crossing grid lines printed on a map",
          matchMy:
              "မြေပုံပေါ်တွင် ဖြတ်သန်းနေသော ဇယားလိုင်းများက ဖွဲ့စည်းထားသော ကွက်တစ်ကွက်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6hum-w6-d3",
      dayNumber: 3,
      titleEn: "Sort: Four-Figure or Six-Figure?",
      titleMy: "စီစစ်ကြမည် - လေးလုံးလား၊ ခြောက်လုံးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "True of a Four-Figure Reference",
          "True of a Six-Figure Reference",
        ],
        bucketsMy: [
          "လေးလုံးပါ ကိုးကားချက်နှင့် သက်ဆိုင်သည်",
          "ခြောက်လုံးပါ ကိုးကားချက်နှင့် သက်ဆိုင်သည်",
        ],
        items: [
          SortingItem(
            id: "y6hum-w6-sort-1",
            labelEn: "Uses four digits in total",
            labelMy: "စုစုပေါင်း ဂဏန်းလေးလုံး အသုံးပြုသည်",
            correctBucketEn: "True of a Four-Figure Reference",
            correctBucketMy: "လေးလုံးပါ ကိုးကားချက်နှင့် သက်ဆိုင်သည်",
          ),
          SortingItem(
            id: "y6hum-w6-sort-2",
            labelEn: "Locates a whole grid square, not an exact spot",
            labelMy: "အတိအကျနေရာမဟုတ်ဘဲ ဇယားကွက်တစ်ကွက်လုံးကို ဖော်ပြသည်",
            correctBucketEn: "True of a Four-Figure Reference",
            correctBucketMy: "လေးလုံးပါ ကိုးကားချက်နှင့် သက်ဆိုင်သည်",
          ),
          SortingItem(
            id: "y6hum-w6-sort-3",
            labelEn: "Made of two easting digits and two northing digits",
            labelMy:
                "easting ဂဏန်းနှစ်လုံးနှင့် northing ဂဏန်းနှစ်လုံးဖြင့် ပြုလုပ်ထားသည်",
            correctBucketEn: "True of a Four-Figure Reference",
            correctBucketMy: "လေးလုံးပါ ကိုးကားချက်နှင့် သက်ဆိုင်သည်",
          ),
          SortingItem(
            id: "y6hum-w6-sort-4",
            labelEn: "Uses six digits in total",
            labelMy: "စုစုပေါင်း ဂဏန်းခြောက်လုံး အသုံးပြုသည်",
            correctBucketEn: "True of a Six-Figure Reference",
            correctBucketMy: "ခြောက်လုံးပါ ကိုးကားချက်နှင့် သက်ဆိုင်သည်",
          ),
          SortingItem(
            id: "y6hum-w6-sort-5",
            labelEn: "Pinpoints a more exact spot inside the square",
            labelMy: "ဇယားကွက်အတွင်း ပို၍တိကျသောနေရာကို ဖော်ပြသည်",
            correctBucketEn: "True of a Six-Figure Reference",
            correctBucketMy: "ခြောက်လုံးပါ ကိုးကားချက်နှင့် သက်ဆိုင်သည်",
          ),
          SortingItem(
            id: "y6hum-w6-sort-6",
            labelEn: "Made of three easting digits and three northing digits",
            labelMy:
                "easting ဂဏန်းသုံးလုံးနှင့် northing ဂဏန်းသုံးလုံးဖြင့် ပြုလုပ်ထားသည်",
            correctBucketEn: "True of a Six-Figure Reference",
            correctBucketMy: "ခြောက်လုံးပါ ကိုးကားချက်နှင့် သက်ဆိုင်သည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6hum-w6-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su Plans a Fieldwork Route",
      titleMy: "စာဖတ်ခြင်း - စုစု လယ်ကွင်းလေ့လာမှု ခရီးစဉ်ကို စီစဉ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su Plans a Fieldwork Route",
        titleMy: "စုစု လယ်ကွင်းလေ့လာမှု ခရီးစဉ်ကို စီစဉ်ခြင်း",
        passageEn:
            "Su Su's teacher spread a large printed map of the streets around Nova School across the table, its neat blue grid lines dividing the paper into dozens of small squares. \"Soon we will walk out of the school gate together to do real fieldwork,\" the teacher said, \"but first, geographers always plan their route on a map.\" Su Su remembered the compass rose and key she had learned to use the week before, but this map had something new printed along its edges: rows of small numbers marking eastings and northings.\n\n\"To find the school gate,\" the teacher explained, \"we read the eastings first, along the bottom, then the northings, up the side, just like reading along a corridor before climbing the stairs.\" Su Su found the square where Nova School sat and wrote down its four-figure grid reference, then practised finding the small park two streets away, giving it a six-figure grid reference that pinpointed the park gates far more precisely than four figures ever could. Next to the grid, a printed scale bar showed that every two centimetres on the paper stood for one hundred metres in real life.\n\nSu Su placed a strip of paper along the route from the school gate to the park and marked the distance against the scale bar, then did the sum in her head: the walk would be a little under four hundred metres, an easy ten-minute stroll. She smiled, thinking that grid references and scale were not just numbers on a page, they were the exact tools that would let her whole class find their way safely out into the neighbourhood for the real fieldwork still to come.",
        passageMy:
            "စုစု၏ ဆရာမသည် Nova ကျောင်းပတ်ဝန်းကျင်ရှိ လမ်းများကို ပြသည့် ပုံနှိပ်ထားသော မြေပုံကြီးတစ်ခုကို စားပွဲပေါ်တွင် ဖြန့်ချလိုက်သည်၊ ၎င်း၏ သပ်ရပ်သော အပြာရောင်ဇယားလိုင်းများသည် စာရွက်ကို ကွက်ငယ်များစွာအဖြစ် ခွဲခြားထားသည်။ \"မကြာမီ ကျွန်တော်တို့ ကျောင်းတံခါးထဲကနေ အတူတကွ ထွက်၍ တကယ့် လယ်ကွင်းလေ့လာမှု ပြုလုပ်ကြမယ်\" ဟု ဆရာမက ပြောသည်၊ \"ဒါပေမယ့် စတင်ခင် ပထဝီပညာရှင်တွေဟာ သူတို့ရဲ့ ခရီးစဉ်ကို မြေပုံပေါ်မှာ အမြဲစီစဉ်ကြပါတယ်\" ဟု ဆက်ပြောသည်။ တစ်ပတ်ခန့်က သင်ယူခဲ့ရသော အရပ်မျက်နှာညွှန်ပန်းချီနှင့် အညွှန်းကို စုစု မှတ်မိသော်လည်း၊ ဤမြေပုံတွင်မူ အနားသတ်များတစ်လျှောက် ပုံနှိပ်ထားသော eastings နှင့် northings ကို ဖော်ပြသည့် ဂဏန်းငယ်တန်းများစွာ ထပ်ပါလာသည်။\n\n\"ကျောင်းတံခါးကို ရှာဖွေရန်\" ဟု ဆရာမက ရှင်းပြသည်၊ \"အောက်ခြေတစ်လျှောက် eastings ကို ဦးစွာဖတ်၊ ထို့နောက် ဘေးတစ်ဘက်တက်၍ northings ကို ဖတ်ရမယ်၊ လှေကားတက်ခင် လမ်းကြောင်းတစ်လျှောက် ဦးစွာသွားသကဲ့သို့ပင်\" ဟု ဆက်ရှင်းပြသည်။ Nova ကျောင်း ရပ်တည်ရာကွက်ကို စုစု ရှာတွေ့ကာ ၎င်း၏ လေးလုံးပါ ဇယားကွက်ကိုးကားချက်ကို ရေးချလိုက်ပြီး၊ လမ်းနှစ်ခုအကွာရှိ ပန်းခြံငယ်တစ်ခုကို ရှာတွေ့ရန် လေ့ကျင့်ကာ၊ ပန်းခြံတံခါးများကို လေးလုံးထက် ပို၍တိကျစွာ ညွှန်ပြသည့် ခြောက်လုံးပါ ဇယားကွက်ကိုးကားချက်တစ်ခုကို ပေးထားသည်။ ဇယားကွက်အနီးတွင် ပုံနှိပ်ထားသော အချိုးကိန်းတန်းက စာရွက်ပေါ်ရှိ စင်တီမီတာနှစ်လုံးတိုင်းသည် အမှန်တကယ် မီတာတစ်ရာကို ကိုယ်စားပြုကြောင်း ပြသနေသည်။\n\nစုစုသည် ကျောင်းတံခါးမှ ပန်းခြံအထိ ခရီးစဉ်တစ်လျှောက် စက္ကူတစ်တန်းကို တင်ကာ အကွာအဝေးကို အချိုးကိန်းတန်းနှင့် နှိုင်းယှဉ် အမှတ်အသားပြုလိုက်သည်၊ ထို့နောက် စိတ်ထဲတွင် တွက်ချက်ကြည့်သည် - လမ်းလျှောက်ခြင်းသည် မီတာလေးရာအောက်လေးလေးနီးပါး ရှိမည်ဖြစ်ပြီး၊ မိနစ်ဆယ်ခန့်သာ လွယ်ကူစွာ လမ်းလျှောက်ရမည်ဖြစ်သည်။ ဇယားကွက်ကိုးကားချက်များနှင့် အချိုးကိန်းသည် စာမျက်နှာပေါ်ရှိ ဂဏန်းများသာ မဟုတ်ဘဲ၊ လာမည့် တကယ့်လယ်ကွင်းလေ့လာမှုအတွက် သူမ၏ အတန်းတစ်ခုလုံးကို ရပ်ကွက်ထဲသို့ ဘေးကင်းစွာ လမ်းပြပေးမည့် တိကျသော ကိရိယာများပင် ဖြစ်ကြောင်း သူမ ပြုံးမိလျက် စဉ်းစားမိသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did the teacher spread across the table for the class to study?",
            questionMy:
                "အတန်းက လေ့လာနိုင်ရန် ဆရာမက စားပွဲပေါ်တွင် အဘယ်အရာကို ဖြန့်ချသနည်း။",
            optionsEn: [
              "A printed map of the streets around Nova School",
              "A menu from the school canteen",
              "A photograph of Tikal",
              "A world atlas of every country",
            ],
            optionsMy: [
              "Nova ကျောင်းပတ်ဝန်းကျင်ရှိ လမ်းများကို ပြသည့် ပုံနှိပ်မြေပုံ",
              "ကျောင်းစားသောက်ဆိုင်၏ အစားအစာစာရင်း",
              "တီကယ်၏ ဓာတ်ပုံ",
              "နိုင်ငံတိုင်းပါဝင်သော ကမ္ဘာ့မြေပုံစာအုပ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to the teacher, which set of numbers should always be read first on the grid?",
            questionMy:
                "ဆရာမ၏ ရှင်းပြချက်အရ ဇယားကွက်ပေါ်တွင် မည်သည့်ဂဏန်းအစုကို အမြဲဦးစွာ ဖတ်ရသနည်း။",
            optionsEn: [
              "The eastings, along the bottom",
              "The northings, up the side",
              "The scale bar numbers",
              "The compass letters",
            ],
            optionsMy: [
              "အောက်ခြေတစ်လျှောက် eastings",
              "ဘေးတစ်ဘက်တက်၍ northings",
              "အချိုးကိန်းတန်း ဂဏန်းများ",
              "အရပ်မျက်နှာ စာလုံးများ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why did Su Su give the park a six-figure grid reference instead of a four-figure one?",
            questionMy:
                "ပန်းခြံအတွက် လေးလုံးထက် ခြောက်လုံးပါ ဇယားကွက်ကိုးကားချက် ပေးရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
            optionsEn: [
              "A six-figure reference pinpoints the location far more precisely",
              "Six-figure references are easier to say out loud",
              "The park does not have a four-figure reference at all",
              "Her teacher told her to guess a random number",
            ],
            optionsMy: [
              "ခြောက်လုံးပါ ကိုးကားချက်သည် တည်နေရာကို ပို၍တိကျစွာ ညွှန်ပြခြင်း",
              "ခြောက်လုံးပါ ကိုးကားချက်များသည် အသံထွက်ရလွယ်ကူခြင်း",
              "ပန်းခြံတွင် လေးလုံးပါ ကိုးကားချက် လုံးဝမရှိခြင်း",
              "ဂဏန်းတစ်ခုကို ကျပန်းခန့်မှန်းရန် ဆရာမက ပြောခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to the passage's scale bar, what does two centimetres on the map represent in real life?",
            questionMy:
                "စာပိုဒ်ရှိ အချိုးကိန်းတန်းအရ မြေပုံပေါ်ရှိ စင်တီမီတာနှစ်လုံးသည် အမှန်တကယ်ဘဝတွင် အဘယ်အရာကို ကိုယ်စားပြုသနည်း။",
            optionsEn: [
              "One hundred metres",
              "One metre",
              "Ten kilometres",
              "Fifty centimetres",
            ],
            optionsMy: [
              "မီတာတစ်ရာ",
              "မီတာတစ်လုံး",
              "ကီလိုမီတာတစ်ဆယ်",
              "စင်တီမီတာငါးဆယ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Roughly how far, and how long, does Su Su work out the walk to the park will be?",
            questionMy:
                "ပန်းခြံအထိ လမ်းလျှောက်ခြင်းသည် မည်မျှအကွာအဝေးနှင့် မည်မျှကြာမြင့်မည်ဟု စုစု တွက်ချက်ရရှိသနည်း။",
            optionsEn: [
              "A little under four hundred metres, about a ten-minute walk",
              "About fifty kilometres, a full day's journey",
              "Exactly one metre, a single step",
              "About two hundred kilometres by car",
            ],
            optionsMy: [
              "မီတာလေးရာအောက်လေးလေးနီးပါးနှင့် မိနစ်ဆယ်ခန့် လမ်းလျှောက်ရခြင်း",
              "ကီလိုမီတာငါးဆယ်ခန့်ဖြင့် တစ်နေ့လုံးခရီး",
              "အတိအကျ မီတာတစ်လုံးဖြင့် တစ်လှမ်းသာ",
              "ကားဖြင့် ကီလိုမီတာနှစ်ရာခန့်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6hum-w6-d5",
      dayNumber: 5,
      titleEn: "Grid References and Scale Round-Up",
      titleMy: "ဇယားကွက် ကိုးကားချက်များနှင့် အချိုးကိန်း အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In a grid reference, eastings are read...?",
          questionMy:
              "ဇယားကွက် ကိုးကားချက်တစ်ခုတွင် eastings ကို မည်သို့ ဖတ်ရသနည်း။",
          optionsEn: [
            "First, along the bottom",
            "Second, up the side",
            "Only on Sundays",
            "Backwards from right to left",
          ],
          optionsMy: [
            "ပထမဦးဆုံး၊ အောက်ခြေတစ်လျှောက်",
            "ဒုတိယ၊ ဘေးတစ်ဘက်တက်၍",
            "တနင်္ဂနွေနေ့တွင်သာ",
            "ညာမှဘယ်သို့ ပြောင်းပြန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A four-figure grid reference locates what?",
          questionMy:
              "လေးလုံးပါ ဇယားကွက် ကိုးကားချက်တစ်ခုသည် အဘယ်အရာကို ဖော်ပြသနည်း။",
          optionsEn: [
            "A whole grid square",
            "One exact point only",
            "A whole country",
            "A single colour",
          ],
          optionsMy: [
            "ဇယားကွက် တစ်ကွက်လုံး",
            "အတိအကျ တစ်ချက်တည်းသာ",
            "နိုင်ငံတစ်ခုလုံး",
            "အရောင်တစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A six-figure grid reference is more precise because it adds a third digit to which two numbers?",
          questionMy:
              "ခြောက်လုံးပါ ဇယားကွက် ကိုးကားချက်သည် မည်သည့် ဂဏန်းနှစ်ခုတွင် ဂဏန်းတတိယလုံး ထပ်ဖြည့်ခြင်းကြောင့် ပို၍တိကျသနည်း။",
          optionsEn: [
            "The easting and the northing",
            "The scale and the key",
            "The date and the time",
            "The title and the author",
          ],
          optionsMy: [
            "Easting နှင့် Northing",
            "အချိုးကိန်းနှင့် အညွှန်း",
            "ရက်စွဲနှင့် အချိန်",
            "ခေါင်းစဉ်နှင့် စာရေးသူ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does a map's scale bar help you calculate?",
          questionMy:
              "မြေပုံ၏ အချိုးကိန်းတန်းသည် သင့်အား အဘယ်အရာကို တွက်ချက်ရန် ကူညီပေးသနည်း။",
          optionsEn: [
            "Real-life distances between two places",
            "The time zone of the map",
            "The population of a city",
            "The colour of the sea",
          ],
          optionsMy: [
            "နေရာနှစ်ခုကြား အမှန်တကယ် အကွာအဝေး",
            "မြေပုံ၏ အချိန်ဇုန်",
            "မြို့တစ်မြို့၏ လူဦးရေ",
            "ပင်လယ်၏ အရောင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, Su Su used the scale bar to work out what?",
          questionMy:
              "စာဖတ်ခြင်းစာပိုဒ်တွင် စုစုသည် အချိုးကိန်းတန်းကို အသုံးပြု၍ အဘယ်အရာကို တွက်ချက်ခဲ့သနည်း။",
          optionsEn: [
            "The real walking distance from the school to the park",
            "The height of a Maya pyramid",
            "The number of students in her class",
            "The price of a bus ticket",
          ],
          optionsMy: [
            "ကျောင်းမှ ပန်းခြံအထိ အမှန်တကယ် လမ်းလျှောက်အကွာအဝေး",
            "မာယာပြေဟိရမ်၏ အမြင့်",
            "သူမ၏ အတန်းရှိ ကျောင်းသားအရေအတွက်",
            "ဘတ်စ်ကားလက်မှတ် တန်ဖိုး",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6HumanitiesWeek7 = CourseWeekDef(
  id: "course-year6-humanities-w7",
  weekNumber: 7,
  titleEn: "Fieldwork Skills and Data Collection",
  titleMy: "လယ်ကွင်းလေ့လာမှု အတတ်ပညာနှင့် အချက်အလက် စုဆောင်းခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6hum-w7-d1",
      dayNumber: 1,
      titleEn: "Collecting Fieldwork Data",
      titleMy: "လယ်ကွင်းလေ့လာမှု အချက်အလက်များ စုဆောင်းခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is \"primary data\" in geography fieldwork?",
          questionMy:
              "ပထဝီဝင် လယ်ကွင်းလေ့လာမှုတွင် \"primary data\" ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Data you collect yourself, firsthand, out in the field",
            "Data that someone else already collected",
            "Data found only in old library books",
            "Data that has already been printed in a newspaper",
          ],
          optionsMy: [
            "ကျင်းပ လယ်ကွင်းထဲမှာ ကိုယ်တိုင် ရင်းရင်းနှီးနှီး စုဆောင်းသော အချက်အလက်",
            "အခြားသူတစ်ဦးက ရှေးဦးစွာ စုဆောင်းပြီးသား အချက်အလက်",
            "စာကြည့်တိုက်ဟောင်းစာအုပ်များတွင်သာ တွေ့ရသော အချက်အလက်",
            "သတင်းစာတွင် ရှေးဦးစွာ ပုံနှိပ်ပြီးသား အချက်အလက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is \"secondary data\"?",
          questionMy: "\"secondary data\" ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Data that someone else already collected, such as from a website or book",
            "Data you always collect yourself outdoors",
            "Data that is never true",
            "Data only found by asking your own family",
          ],
          optionsMy: [
            "ဝက်ဘ်ဆိုက် (သို့) စာအုပ်ကဲ့သို့ အခြားသူတစ်ဦးက ရှေးဦးစွာ စုဆောင်းပြီးသား အချက်အလက်",
            "ပြင်ပတွင် ကိုယ်တိုင် အမြဲစုဆောင်းသော အချက်အလက်",
            "မှားနေသော အချက်အလက်",
            "မိသားစုကိုသာ မေးမြန်း၍ ရရှိသော အချက်အလက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A tally chart is mainly used for what in fieldwork?",
          questionMy:
              "လယ်ကွင်းလေ့လာမှုတွင် tally chart ကို အဓိက မည်သည့်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Counting how many times something happens, such as vehicles passing",
            "Drawing a picture of a building",
            "Measuring the temperature of the ground",
            "Writing a long story about the weather",
          ],
          optionsMy: [
            "ယာဉ်ဖြတ်သန်းမှုကဲ့သို့ တစ်ခုခု ဖြစ်ပေါ်ကြိမ်ကို ရေတွက်ခြင်း",
            "အဆောက်အအုံတစ်ခု၏ ပုံကို ရေးဆွဲခြင်း",
            "မြေပြင်၏ အပူချိန်ကို တိုင်းတာခြင်း",
            "ရာသီဥတုအကြောင်း ဇာတ်လမ်းရှည်ကြီး ရေးသားခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does a land-use survey mainly record?",
          questionMy:
              "မြေအသုံးချမှု စစ်တမ်းတစ်ခုက အဓိကမည်သည့်အရာကို မှတ်တမ်းတင်သနည်း။",
          optionsEn: [
            "How the land in an area is being used, such as shops, housing or parks",
            "The number of birds flying overhead",
            "The exact age of every building",
            "The names of everyone who lives nearby",
          ],
          optionsMy: [
            "ဆိုင်များ၊ အိမ်ရာများ (သို့) ပန်းခြံများကဲ့သို့ ဒေသတစ်ခုရှိ မြေကို မည်သို့အသုံးပြုနေကြောင်း",
            "အပေါ်တွင် ပျံသန်းနေသော ငှက်အရေအတွက်",
            "အဆောက်အအုံတိုင်း၏ အတိအကျအသက်",
            "အနီးအနားနေထိုင်သူတိုင်း၏ အမည်များ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why is planning for safety important before going out to do fieldwork?",
          questionMy:
              "လယ်ကွင်းလေ့လာမှု မထွက်ခွာမီ ဘေးအန္တရာယ်ကင်းရှင်းရေး စီစဉ်ရခြင်းသည် အဘယ်ကြောင့် အရေးကြီးသနည်း။",
          optionsEn: [
            "To avoid hazards like traffic and keep everyone safe outdoors",
            "Because fieldwork is not allowed at all",
            "So the class can finish school early",
            "Because it makes the survey results more colourful",
          ],
          optionsMy: [
            "ယာဉ်အန္တရာယ်ကဲ့သို့ ဘေးအန္တရာယ်များကို ရှောင်ရှားပြီး လူတိုင်းကို ပြင်ပတွင် ဘေးကင်းစွာ ထားရှိရန်",
            "လယ်ကွင်းလေ့လာမှုကို လုံးဝ ခွင့်မပြုသောကြောင့်",
            "အတန်းသားများ စာသင်ခန်းကို စောစီးစွာ ပြီးနိုင်ရန်",
            "စစ်တမ်းရလဒ်များကို ပို၍ တောက်ပလှပစေရန်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6hum-w7-d2",
      dayNumber: 2,
      titleEn: "Match the Fieldwork Vocabulary",
      titleMy: "လယ်ကွင်းလေ့လာမှု ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6hum-w7-dm-1",
          termEn: "Fieldwork",
          termMy: "လယ်ကွင်းလေ့လာမှု (Fieldwork)",
          matchEn:
              "Learning that takes place outdoors, collecting data about a real place",
          matchMy:
              "အမှန်တကယ်ရှိသောနေရာတစ်ခုအကြောင်း အချက်အလက်များကို ပြင်ပတွင် စုဆောင်းရင်း သင်ယူခြင်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6hum-w7-dm-2",
          termEn: "Primary data",
          termMy: "Primary data",
          matchEn:
              "Information a geographer collects firsthand, out in the field",
          matchMy:
              "ပထဝီပညာရှင်တစ်ဦးက လယ်ကွင်းထဲမှာ ရင်းရင်းနှီးနှီး စုဆောင်းသော အချက်အလက်",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6hum-w7-dm-3",
          termEn: "Secondary data",
          termMy: "Secondary data",
          matchEn:
              "Information someone else already collected, such as from a website",
          matchMy:
              "ဝက်ဘ်ဆိုက်ကဲ့သို့ အခြားသူတစ်ဦးက ရှေးဦးစွာ စုဆောင်းပြီးသား အချက်အလက်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6hum-w7-dm-4",
          termEn: "Tally chart",
          termMy: "Tally chart",
          matchEn:
              "A simple chart used to count how often something is spotted",
          matchMy:
              "တစ်ခုခုကို မကြာခဏ တွေ့ရသည်ကို ရေတွက်ရန် အသုံးပြုသည့် ရိုးရှင်းသော ဇယား",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6hum-w7-dm-5",
          termEn: "Land-use survey",
          termMy: "မြေအသုံးချမှု စစ်တမ်း (Land-use survey)",
          matchEn:
              "A survey recording how the buildings and land in an area are used",
          matchMy:
              "ဒေသတစ်ခုရှိ အဆောက်အအုံနှင့် မြေကို မည်သို့အသုံးချကြောင်း မှတ်တမ်းတင်သည့် စစ်တမ်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6hum-w7-dm-6",
          termEn: "Questionnaire",
          termMy: "မေးခွန်းလွှာ (Questionnaire)",
          matchEn:
              "A set of written questions used to ask local people for their opinions",
          matchMy:
              "ဒေသခံများ၏ ထင်မြင်ချက်များကို မေးမြန်းရန် အသုံးပြုသည့် ရေးသားထားသော မေးခွန်းစုစည်းချက်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6hum-w7-d3",
      dayNumber: 3,
      titleEn: "Sort: Primary or Secondary Data?",
      titleMy: "စီစစ်ကြမည် - Primary data လား၊ Secondary data လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Primary Data Collection", "Secondary Data Source"],
        bucketsMy: ["Primary Data စုဆောင်းခြင်း", "Secondary Data အရင်းအမြစ်"],
        items: [
          SortingItem(
            id: "y6hum-w7-sort-1",
            labelEn: "Counting traffic outside the school with a tally chart",
            labelMy:
                "ကျောင်းအပြင်ဘက်ရှိ ယာဉ်များကို tally chart ဖြင့် ရေတွက်ခြင်း",
            correctBucketEn: "Primary Data Collection",
            correctBucketMy: "Primary Data စုဆောင်းခြင်း",
          ),
          SortingItem(
            id: "y6hum-w7-sort-2",
            labelEn: "Walking around and observing a land-use survey yourself",
            labelMy:
                "ကိုယ်တိုင် ပတ်ဝန်းကျင်ကို လမ်းလျှောက်ကြည့်ရှု၍ မြေအသုံးချမှု စစ်တမ်း ကောက်ယူခြင်း",
            correctBucketEn: "Primary Data Collection",
            correctBucketMy: "Primary Data စုဆောင်းခြင်း",
          ),
          SortingItem(
            id: "y6hum-w7-sort-3",
            labelEn:
                "Asking local people questions with your own questionnaire",
            labelMy: "ကိုယ်ပိုင်မေးခွန်းလွှာဖြင့် ဒေသခံများကို မေးမြန်းခြင်း",
            correctBucketEn: "Primary Data Collection",
            correctBucketMy: "Primary Data စုဆောင်းခြင်း",
          ),
          SortingItem(
            id: "y6hum-w7-sort-4",
            labelEn: "Reading an already-published map of the area",
            labelMy: "ဒေသ၏ ရှေးဦးစွာ ပုံနှိပ်ပြီးသား မြေပုံကို ဖတ်ရှုခြင်း",
            correctBucketEn: "Secondary Data Source",
            correctBucketMy: "Secondary Data အရင်းအမြစ်",
          ),
          SortingItem(
            id: "y6hum-w7-sort-5",
            labelEn: "Looking up population figures on a government website",
            labelMy:
                "အစိုးရဝက်ဘ်ဆိုက်ပေါ်ရှိ လူဦးရေ ကိန်းဂဏန်းများကို ရှာဖွေကြည့်ရှုခြင်း",
            correctBucketEn: "Secondary Data Source",
            correctBucketMy: "Secondary Data အရင်းအမြစ်",
          ),
          SortingItem(
            id: "y6hum-w7-sort-6",
            labelEn: "Using an old newspaper article written about the town",
            labelMy:
                "မြို့အကြောင်း ရေးသားခဲ့သော သတင်းစာဟောင်းဆောင်းပါးတစ်ပုဒ်ကို အသုံးပြုခြင်း",
            correctBucketEn: "Secondary Data Source",
            correctBucketMy: "Secondary Data အရင်းအမြစ်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6hum-w7-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su's Practice Fieldwork Day",
      titleMy: "စာဖတ်ခြင်း - စုစု၏ လယ်ကွင်းလေ့လာမှု လေ့ကျင့်ရေးနေ့",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su's Practice Fieldwork Day",
        titleMy: "စုစု၏ လယ်ကွင်းလေ့လာမှု လေ့ကျင့်ရေးနေ့",
        passageEn:
            "Clipboard in hand, Su Su lined up with her classmates at the school gate, high-visibility vest fastened over her uniform. \"Today is only practice,\" the teacher reminded everyone, \"a small taste of the fieldwork enquiry you will run yourselves next week, so listen carefully to the safety rules first.\" Su Su nodded, remembering that fieldwork always began with a plan: today's small task was to record primary data about the street directly outside Nova School, data nobody had collected before, using their own eyes and ears.\n\nSu Su was given a tally chart divided into columns for cars, bicycles, buses and pedestrians, and for ten minutes she made a small mark every time one passed by, glancing up and down the road exactly as her teacher had shown her. Beside her, another pair of pupils carried out a simple land-use survey, walking a short stretch of pavement and noting down whether each building was a shop, a house, or something else entirely. \"This is primary data,\" the teacher explained afterwards, \"because you collected it yourselves, firsthand, right here.\" Su Su compared her tally chart to an old printed leaflet about the street that the teacher had also brought along, and realised that leaflet was secondary data instead, since someone else had gathered it long before today.\n\nBack in the classroom, Su Su added up her tally marks and was surprised that pedestrians had outnumbered cars nearly two to one. She thought about how ordinary the street had looked to her every single morning, and yet counting carefully had revealed something she had never actually noticed before. If one short practice survey could teach her that much, she wondered what a whole real fieldwork enquiry, mapped out properly with grid references and a scale, might reveal about the neighbourhood next week.",
        passageMy:
            "စုစုသည် လက်တွင် clipboard ကိုင်ကာ၊ တီရှပ်ပေါ်တွင် မြင်သာစေသောဗက်စကွက် ဆွဲတပ်ထားရင်း အတန်းဖော်များနှင့်အတူ ကျောင်းတံခါးဝတွင် တန်းစီနေခဲ့သည်။ \"ဒီနေ့ဟာ လေ့ကျင့်ရေးနေ့ပဲ ဖြစ်ပါတယ်\" ဟု ဆရာမက လူတိုင်းကို ပြန်သတိပေးသည်၊ \"နောက်အပတ်မှာ သင်တို့ကိုယ်တိုင် လုပ်ဆောင်ရမယ့် လယ်ကွင်းစုံစမ်းလေ့လာမှုရဲ့ အနည်းငယ်အရသာပါ၊ ဒါကြောင့် ဘေးအန္တရာယ်ကင်းရှင်းရေးစည်းမျဉ်းတွေကို ဦးစွာ သေချာနားထောင်ကြပါ\" ဟု ဆက်ပြောသည်။ လယ်ကွင်းလေ့လာမှုသည် စီစဉ်ချက်တစ်ခုနှင့် အမြဲစတင်ကြောင်း စုစု ခေါင်းညိတ်ရင်း သတိရနေသည် - ဒီနေ့၏ လုပ်ငန်းငယ်မှာ Nova ကျောင်း၏ တည့်တည့် အပြင်ဘက်ရှိ လမ်းအကြောင်း primary data ကို ကိုယ်တိုင် မျက်စိနှင့် နားကို အသုံးပြု၍ ယခင်က မည်သူမျှ မစုဆောင်းဖူးသေးသော အချက်အလက်ကို မှတ်တမ်းတင်ရန် ဖြစ်သည်။\n\nစုစုအား ကား၊ စက်ဘီး၊ ဘတ်စ်ကားနှင့် လမ်းသွားလမ်းလာတို့အတွက် ကော်လံများခွဲထားသော tally chart တစ်ခု ပေးအပ်ခဲ့ပြီး၊ မိနစ်ဆယ်ခန့်အတွင်း ဆရာမ ပြသခဲ့သည့်အတိုင်း လမ်းတစ်လျှောက် အထက်အောက်ကြည့်ရင်း ယာဉ်တစ်စီးဖြတ်သန်းတိုင်း အမှတ်အသားငယ်တစ်ခု ခတ်ခဲ့သည်။ သူမနံဘေးတွင် ကျောင်းသားအတွဲတစ်စုံက ရိုးရှင်းသော မြေအသုံးချမှု စစ်တမ်းတစ်ခုကို ပြုလုပ်ရင်း၊ ကျောက်ခင်းလမ်းအတိုင်းအတာငယ်တစ်ခုကို လမ်းလျှောက်ကာ အဆောက်အအုံတစ်ခုစီသည် ဆိုင်လား၊ အိမ်လား၊ (သို့) လုံးဝ အခြားအရာလား မှတ်သားနေခဲ့ကြသည်။ \"ဒါက primary data ပါ\" ဟု ဆရာမက နောက်ပိုင်း ရှင်းပြသည်၊ \"အဘယ်ကြောင့်ဆိုသော် သင်တို့ ကိုယ်တိုင် ဒီနေရာမှာ ရင်းရင်းနှီးနှီး စုဆောင်းခဲ့ကြလို့ပါ\" ဟု ဆက်ပြောသည်။ ဆရာမ ယူဆောင်လာသော လမ်းအကြောင်း ပုံနှိပ်ထားသည့် လက်ကမ်းစာစောင်ဟောင်းတစ်ခုနှင့် သူမ၏ tally chart ကို စုစု နှိုင်းယှဉ်ကြည့်ကာ၊ ထိုလက်ကမ်းစာစောင်မှာမူ secondary data ဖြစ်ကြောင်း သဘောပေါက်ခဲ့သည်၊ အဘယ်ကြောင့်ဆိုသော် အခြားသူတစ်ဦးက ဒီနေ့မတိုင်မီ ကြာမြင့်စွာက စုဆောင်းထားခဲ့ခြင်းဖြစ်သောကြောင့်ဖြစ်သည်။\n\nစာသင်ခန်းသို့ ပြန်ရောက်သောအခါ စုစုသည် သူမ၏ tally အမှတ်များကို ပေါင်းလိုက်ရာ၊ လမ်းသွားလမ်းလာများသည် ကားထက် နီးပါးနှစ်ဆ ပိုများနေကြောင်း တွေ့ရှိ၍ အံ့သြသွားခဲ့သည်။ နေ့စဉ်မနက်တိုင်း သူမမြင်တွေ့နေကျ ရိုးရိုးလမ်းတစ်ခုအဖြစ် ထင်ခဲ့သော်လည်း၊ ဂရုတစိုက် ရေတွက်ခြင်းက ယခင်က တစ်ခါမျှ သတိမပြုမိခဲ့သည့်အရာတစ်ခုကို ဖော်ထုတ်ပေးခဲ့ကြောင်း သူမ တွေးမိသည်။ လေ့ကျင့်ရေးစစ်တမ်းငယ်တစ်ခုကပင် ဤမျှများစွာ သင်ကြားပေးနိုင်လျှင်၊ နောက်အပတ်တွင် ဇယားကွက်ကိုးကားချက်များနှင့် အချိုးကိန်းဖြင့် မှန်ကန်စွာ မြေပုံဆွဲထားသော တကယ့်လယ်ကွင်းစုံစမ်းလေ့လာမှုတစ်ခုလုံးက ရပ်ကွက်အကြောင်း မည်မျှများစွာ ဖော်ထုတ်ပေးမည်ကို သူမ ရင်ခုန်စွာ တွေးမျှော်နေမိသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What does the teacher tell the class is the purpose of today's practice fieldwork?",
            questionMy:
                "ဒီနေ့ လေ့ကျင့်ရေး လယ်ကွင်းလေ့လာမှု၏ ရည်ရွယ်ချက်ကို ဆရာမက အတန်းအား မည်သို့ ပြောပြသနည်း။",
            optionsEn: [
              "A small taste of the real fieldwork enquiry planned for next week",
              "A test that decides who passes the term",
              "A day off from all schoolwork",
              "A visit to a shopping centre",
            ],
            optionsMy: [
              "နောက်အပတ်အတွက် စီစဉ်ထားသော တကယ့်လယ်ကွင်းစုံစမ်းလေ့လာမှု၏ အနည်းငယ်အရသာ",
              "နှစ်လက်ကို အောင်မြင်မလားဆုံးဖြတ်သော စာမေးပွဲ",
              "ကျောင်းလုပ်ငန်းအားလုံးကို နားရက်ယူသောနေ့",
              "စျေးဝယ်စင်တာသို့ လည်ပတ်ခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Su Su use her tally chart to count?",
            questionMy:
                "သူမ၏ tally chart ကို ရေတွက်ရန် စုစု အသုံးပြုသည်မှာ အဘယ်အရာနည်း။",
            optionsEn: [
              "Cars, bicycles, buses and pedestrians passing by",
              "Birds flying overhead",
              "Coins found on the pavement",
              "Trees planted along the street",
            ],
            optionsMy: [
              "ဖြတ်သန်းနေသော ကား၊ စက်ဘီး၊ ဘတ်စ်ကားနှင့် လမ်းသွားလမ်းလာများ",
              "အပေါ်တွင် ပျံသန်းနေသော ငှက်များ",
              "ကျောက်ခင်းလမ်းပေါ်တွင် တွေ့ရသော ဒင်္ဂါးများ",
              "လမ်းတစ်လျှောက် စိုက်ပျိုးထားသော သစ်ပင်များ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why did the teacher say Su Su's tally chart data counted as primary data?",
            questionMy:
                "စုစု၏ tally chart အချက်အလက်ကို primary data အဖြစ် သတ်မှတ်ရသည့်အကြောင်းရင်းကို ဆရာမက မည်သို့ ရှင်းပြသနည်း။",
            optionsEn: [
              "Because the pupils collected it themselves, firsthand, right there",
              "Because it was printed in a book years earlier",
              "Because a website had already published it",
              "Because it was copied from another class",
            ],
            optionsMy: [
              "ကျောင်းသားများ ကိုယ်တိုင် ဒီနေရာမှာ ရင်းရင်းနှီးနှီး စုဆောင်းခဲ့ကြသောကြောင့်",
              "နှစ်ပေါင်းများစွာက စာအုပ်တွင် ပုံနှိပ်ထားပြီးဖြစ်သောကြောင့်",
              "ဝက်ဘ်ဆိုက်တစ်ခုက ရှေးဦးစွာ ထုတ်ပြန်ထားပြီးဖြစ်သောကြောင့်",
              "အခြားအတန်းတစ်ခုမှ ကူးယူထားသောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What was the old printed leaflet about the street an example of?",
            questionMy:
                "လမ်းအကြောင်း ပုံနှိပ်ထားသည့် လက်ကမ်းစာစောင်ဟောင်းသည် အဘယ်အရာ၏ ဥပမာဖြစ်သနည်း။",
            optionsEn: [
              "Secondary data",
              "Primary data",
              "A weather report",
              "A grid reference",
            ],
            optionsMy: [
              "Secondary data",
              "Primary data",
              "ရာသီဥတု အစီရင်ခံစာ",
              "ဇယားကွက် ကိုးကားချက်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What surprised Su Su when she added up her tally marks?",
            questionMy:
                "သူမ၏ tally အမှတ်များ ပေါင်းလိုက်သောအခါ စုစုအား အဘယ်အချက်က အံ့သြစေသနည်း။",
            optionsEn: [
              "Pedestrians had outnumbered cars nearly two to one",
              "No vehicles passed by at all",
              "Every single vehicle was a bus",
              "The street was completely empty all morning",
            ],
            optionsMy: [
              "လမ်းသွားလမ်းလာများသည် ကားထက် နီးပါးနှစ်ဆ ပိုများနေခြင်း",
              "ယာဉ်တစ်စီးမျှ လုံးဝ မဖြတ်သန်းခြင်း",
              "ယာဉ်တိုင်းသည် ဘတ်စ်ကားများသာ ဖြစ်နေခြင်း",
              "မနက်တစ်ခုလုံး လမ်းသည် လုံးဝ လူသူကင်းမဲ့နေခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6hum-w7-d5",
      dayNumber: 5,
      titleEn: "Fieldwork Data Round-Up",
      titleMy: "လယ်ကွင်းလေ့လာမှု အချက်အလက် အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Primary data is information...?",
          questionMy: "Primary data ဆိုသည်မှာ မည်သို့ အချက်အလက်နည်း။",
          optionsEn: [
            "You collect yourself, firsthand",
            "Someone else always collected long ago",
            "That is never accurate",
            "Found only in dictionaries",
          ],
          optionsMy: [
            "ကိုယ်တိုင် ရင်းရင်းနှီးနှီး စုဆောင်းသော",
            "အခြားသူတစ်ဦးက ကြာမြင့်စွာက အမြဲ စုဆောင်းခဲ့သော",
            "တစ်ခါမျှ တိကျမှန်ကန်ခြင်းမရှိသော",
            "အဘိဓာန်များတွင်သာ တွေ့ရသော",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A tally chart is a tool for...?",
          questionMy: "Tally chart သည် အဘယ်အတွက် ကိရိယာတစ်ခုနည်း။",
          optionsEn: [
            "Counting how often something happens",
            "Painting a landscape",
            "Measuring rainfall over a year",
            "Writing a diary entry",
          ],
          optionsMy: [
            "တစ်ခုခု မကြာခဏ ဖြစ်ပေါ်ကြောင်း ရေတွက်ခြင်း",
            "ရှုခင်းတစ်ခုကို ဆေးရေးခြင်း",
            "တစ်နှစ်တာ မိုးရေချိန်ကို တိုင်းတာခြင်း",
            "မှတ်တမ်းစာအုပ် တစ်ခု ရေးသားခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A land-use survey records what?",
          questionMy: "မြေအသုံးချမှု စစ်တမ်းသည် အဘယ်အရာကို မှတ်တမ်းတင်သနည်း။",
          optionsEn: [
            "How the land and buildings in an area are used",
            "The number of clouds in the sky",
            "How many pupils are in each class",
            "The colours of every car parked nearby",
          ],
          optionsMy: [
            "ဒေသတစ်ခုရှိ မြေနှင့် အဆောက်အအုံများကို မည်သို့အသုံးချကြောင်း",
            "ကောင်းကင်ပေါ်ရှိ တိမ်အရေအတွက်",
            "အတန်းတစ်ခုစီရှိ ကျောင်းသားအရေအတွက်",
            "အနီးအနားတွင် ရပ်နားထားသော ကားတိုင်း၏ အရောင်များ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these counts as secondary data?",
          questionMy:
              "အောက်ပါတို့အနက် secondary data အဖြစ် သတ်မှတ်ရမည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Reading an already-published map of the area",
            "Counting traffic yourself with a tally chart",
            "Walking around observing a land-use survey firsthand",
            "Asking local people questions yourself with a questionnaire",
          ],
          optionsMy: [
            "ဒေသ၏ ရှေးဦးစွာ ပုံနှိပ်ပြီးသား မြေပုံကို ဖတ်ရှုခြင်း",
            "ကိုယ်တိုင် tally chart ဖြင့် ယာဉ်များကို ရေတွက်ခြင်း",
            "ကိုယ်တိုင် ပတ်ဝန်းကျင်ကို ကြည့်ရှု၍ မြေအသုံးချမှု စစ်တမ်း ကောက်ယူခြင်း",
            "ကိုယ်ပိုင်မေးခွန်းလွှာဖြင့် ဒေသခံများကို ကိုယ်တိုင် မေးမြန်းခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the reading passage, what did Su Su's practice fieldwork survey reveal about her school street?",
          questionMy:
              "စာဖတ်ခြင်းစာပိုဒ်တွင် စုစု၏ လေ့ကျင့်ရေး လယ်ကွင်းလေ့လာမှုစစ်တမ်းက သူမ၏ ကျောင်းလမ်းအကြောင်း အဘယ်အရာကို ဖော်ထုတ်ပေးသနည်း။",
          optionsEn: [
            "Pedestrians outnumbered cars, something she had never noticed before",
            "The street had no traffic at all, ever",
            "Every building on the street was a school",
            "The street was actually located in a different country",
          ],
          optionsMy: [
            "လမ်းသွားလမ်းလာများသည် ကားထက် ပိုများနေကြောင်း၊ ယခင်က တစ်ခါမျှ သတိမပြုမိခဲ့ဖူးသောအရာ",
            "လမ်းတွင် ယာဉ်ဖြတ်သန်းမှု လုံးဝ မရှိခဲ့ခြင်း",
            "လမ်းပေါ်ရှိ အဆောက်အအုံတိုင်းသည် ကျောင်းများသာ ဖြစ်နေခြင်း",
            "လမ်းသည် တကယ်တမ်း အခြားနိုင်ငံတစ်ခုတွင် တည်ရှိနေခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6HumanitiesWeek8 = CourseWeekDef(
  id: "course-year6-humanities-w8",
  weekNumber: 8,
  titleEn: "Fieldwork Enquiry: Mapping Nova School's Neighbourhood",
  titleMy:
      "လယ်ကွင်းစုံစမ်းလေ့လာမှု - Nova ကျောင်းပတ်ဝန်းကျင်ကို မြေပုံဆွဲခြင်း",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6hum-w8-d1",
      dayNumber: 1,
      titleEn: "The Stages of a Fieldwork Enquiry",
      titleMy: "လယ်ကွင်းစုံစမ်းလေ့လာမှု အဆင့်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What is usually the FIRST stage of a geographical fieldwork enquiry?",
          questionMy:
              "ပထဝီဝင် လယ်ကွင်းစုံစမ်းလေ့လာမှုတစ်ခု၏ ပထမဆုံးအဆင့်မှာ များသောအားဖြင့် အဘယ်နည်း။",
          optionsEn: [
            "Asking a clear enquiry question",
            "Presenting a finished poster",
            "Drawing a conclusion",
            "Going home for the day",
          ],
          optionsMy: [
            "ရှင်းလင်းသော စုံစမ်းလေ့လာမှု မေးခွန်းတစ်ခု မေးခြင်း",
            "ပြီးစီးသော ပိုစတာတစ်ခု ပြသခြင်း",
            "နိဂုံးချုပ် ဆွဲချုပ်ခြင်း",
            "ထိုနေ့အတွက် အိမ်ပြန်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which stage comes right after collecting data out in the field?",
          questionMy:
              "လယ်ကွင်းထဲတွင် အချက်အလက် စုဆောင်းပြီးနောက် ဆက်လာသော အဆင့်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Recording and presenting the data, such as on a map or chart",
            "Asking the very first enquiry question",
            "Forgetting all the results",
            "Choosing a completely different topic",
          ],
          optionsMy: [
            "မြေပုံ (သို့) ဇယားကဲ့သို့ အချက်အလက်ကို မှတ်တမ်းတင်ပြီး ဖော်ပြခြင်း",
            "ပထမဆုံး စုံစမ်းလေ့လာမှု မေးခွန်းကို မေးခြင်း",
            "ရလဒ်အားလုံးကို မေ့ပျောက်ခြင်း",
            "လုံးဝ ကွဲပြားသော ခေါင်းစဉ်တစ်ခု ရွေးချယ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Su Su's fieldwork enquiry this week asks: \"How is the land used...?\" Where?",
          questionMy:
              "ဒီအပတ် စုစု၏ လယ်ကွင်းစုံစမ်းလေ့လာမှုက \"မြေကို မည်သို့ အသုံးချသနည်း\" ဟု မေးထားသည်၊ မည်သည့်နေရာအကြောင်းနည်း။",
          optionsEn: [
            "In the streets around Nova School",
            "In the rainforests of Mesoamerica",
            "On the surface of the moon",
            "In a city in another country she has never visited",
          ],
          optionsMy: [
            "Nova ကျောင်းပတ်ဝန်းကျင်ရှိ လမ်းများ",
            "မက်ဆိုအမေရိကားရှိ မိုးသစ်တောများ",
            "လကမ္ဘာ၏ မျက်နှာပြင်",
            "သူမ တစ်ခါမျှ မသွားဖူးသေးသော အခြားနိုင်ငံရှိ မြို့တစ်မြို့",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which piece of fieldwork equipment helps you count passing vehicles or people?",
          questionMy:
              "ဖြတ်သန်းနေသော ယာဉ်များ (သို့) လူများကို ရေတွက်ရန် ကူညီပေးသော လယ်ကွင်းလေ့လာမှု ကိရိယာမှာ အဘယ်နည်း။",
          optionsEn: [
            "A tally chart",
            "A paintbrush",
            "A calculator with no numbers",
            "A pair of scissors",
          ],
          optionsMy: [
            "Tally chart",
            "ဆေးဆွဲဘရပ်ရှ်",
            "ဂဏန်းမပါသော ဂဏန်းတွက်စက်",
            "ကတ်ကြေးညှပ်တစ်ရံ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the final stage of a fieldwork enquiry, after presenting the results?",
          questionMy:
              "ရလဒ်များကို ဖော်ပြပြီးနောက် လယ်ကွင်းစုံစမ်းလေ့လာမှု၏ နောက်ဆုံးအဆင့်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Drawing a conclusion that answers the enquiry question",
            "Deleting all the collected data",
            "Starting a brand new, unrelated survey",
            "Ignoring what the data showed",
          ],
          optionsMy: [
            "စုံစမ်းလေ့လာမှု မေးခွန်းကို ဖြေဆိုသည့် နိဂုံးချုပ် ဆွဲချုပ်ခြင်း",
            "စုဆောင်းထားသော အချက်အလက်အားလုံးကို ဖျက်ပစ်ခြင်း",
            "လုံးဝ မသက်ဆိုင်သော စစ်တမ်းအသစ်တစ်ခု စတင်ခြင်း",
            "အချက်အလက်များက ဖော်ပြသည့်အရာကို လျစ်လျူရှုခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6hum-w8-d2",
      dayNumber: 2,
      titleEn: "Match the Fieldwork Enquiry Vocabulary",
      titleMy: "လယ်ကွင်းစုံစမ်းလေ့လာမှု ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6hum-w8-dm-1",
          termEn: "Enquiry question",
          termMy: "စုံစမ်းလေ့လာမှု မေးခွန်း",
          matchEn:
              "The clear question that a whole fieldwork investigation sets out to answer",
          matchMy:
              "လယ်ကွင်းစုံစမ်းလေ့လာမှု တစ်ခုလုံး ဖြေဆိုရန် ရည်ရွယ်ထားသော ရှင်းလင်းသောမေးခွန်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6hum-w8-dm-2",
          termEn: "Sketch map",
          termMy: "ရိုင်းဆွဲမြေပုံ (Sketch map)",
          matchEn:
              "A simple, hand-drawn map showing the main features of a small area",
          matchMy:
              "ဧရိယာငယ်တစ်ခု၏ အဓိကအင်္ဂါရပ်များကို ပြသည့် ရိုးရှင်းစွာ လက်ရေးဆွဲထားသော မြေပုံ",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6hum-w8-dm-3",
          termEn: "Fieldwork route",
          termMy: "လယ်ကွင်းလေ့လာမှု ခရီးစဉ်",
          matchEn: "The planned path a class walks to collect data safely",
          matchMy:
              "အချက်အလက်များကို ဘေးကင်းစွာ စုဆောင်းနိုင်ရန် အတန်းသားများ လမ်းလျှောက်ရန် စီစဉ်ထားသောလမ်းကြောင်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6hum-w8-dm-4",
          termEn: "Land-use survey",
          termMy: "မြေအသုံးချမှု စစ်တမ်း",
          matchEn:
              "Recording how each building or space in an area is being used",
          matchMy:
              "ဧရိယာတစ်ခုရှိ အဆောက်အအုံ (သို့) နေရာတစ်ခုစီကို မည်သို့အသုံးချကြောင်း မှတ်တမ်းတင်ခြင်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6hum-w8-dm-5",
          termEn: "Grid reference",
          termMy: "ဇယားကွက် ကိုးကားချက်",
          matchEn:
              "A set of numbers used to give an exact location on a gridded map",
          matchMy:
              "ဇယားကွက်ပါ မြေပုံတစ်ခုပေါ်ရှိ တိကျသောတည်နေရာကို ပေးအပ်ရန် အသုံးပြုသော ဂဏန်းအစု",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6hum-w8-dm-6",
          termEn: "Conclusion",
          termMy: "နိဂုံးချုပ် (Conclusion)",
          matchEn:
              "The final answer to an enquiry question, based on the evidence collected",
          matchMy:
              "စုဆောင်းထားသော သက်သေအထောက်အထားများအပေါ် အခြေခံ၍ စုံစမ်းလေ့လာမှု မေးခွန်း၏ နောက်ဆုံးအဖြေ",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6hum-w8-d3",
      dayNumber: 3,
      titleEn: "Sort: Belongs on a Sketch Map?",
      titleMy: "စီစစ်ကြမည် - ရိုင်းဆွဲမြေပုံပေါ်တွင် ပါဝင်ရမည်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Belongs on a Sketch Map", "Not Needed on a Sketch Map"],
        bucketsMy: [
          "ရိုင်းဆွဲမြေပုံပေါ်တွင် ပါဝင်သင့်သည်",
          "ရိုင်းဆွဲမြေပုံပေါ်တွင် မလိုအပ်ပါ",
        ],
        items: [
          SortingItem(
            id: "y6hum-w8-sort-1",
            labelEn: "A title explaining what the map shows",
            labelMy: "မြေပုံက အဘယ်အရာကို ပြသကြောင်း ရှင်းပြထားသော ခေါင်းစဉ်",
            correctBucketEn: "Belongs on a Sketch Map",
            correctBucketMy: "ရိုင်းဆွဲမြေပုံပေါ်တွင် ပါဝင်သင့်သည်",
          ),
          SortingItem(
            id: "y6hum-w8-sort-2",
            labelEn: "A key explaining what each symbol means",
            labelMy: "သင်္ကေတတစ်ခုစီ၏ အဓိပ္ပာယ်ကို ရှင်းပြထားသော အညွှန်း",
            correctBucketEn: "Belongs on a Sketch Map",
            correctBucketMy: "ရိုင်းဆွဲမြေပုံပေါ်တွင် ပါဝင်သင့်သည်",
          ),
          SortingItem(
            id: "y6hum-w8-sort-3",
            labelEn: "A compass rose showing direction",
            labelMy: "အရပ်ကို ပြသည့် အရပ်မျက်နှာညွှန်ပန်းချီ",
            correctBucketEn: "Belongs on a Sketch Map",
            correctBucketMy: "ရိုင်းဆွဲမြေပုံပေါ်တွင် ပါဝင်သင့်သည်",
          ),
          SortingItem(
            id: "y6hum-w8-sort-4",
            labelEn: "Tomorrow's weather forecast",
            labelMy: "မနက်ဖြန်၏ ရာသီဥတု ခန့်မှန်းချက်",
            correctBucketEn: "Not Needed on a Sketch Map",
            correctBucketMy: "ရိုင်းဆွဲမြေပုံပေါ်တွင် မလိုအပ်ပါ",
          ),
          SortingItem(
            id: "y6hum-w8-sort-5",
            labelEn: "A shopping list for the weekend",
            labelMy: "စနေ၊ တနင်္ဂနွေအတွက် စျေးဝယ်စာရင်း",
            correctBucketEn: "Not Needed on a Sketch Map",
            correctBucketMy: "ရိုင်းဆွဲမြေပုံပေါ်တွင် မလိုအပ်ပါ",
          ),
          SortingItem(
            id: "y6hum-w8-sort-6",
            labelEn: "A photograph of a football match on television",
            labelMy: "ရုပ်မြင်သံကြားရှိ ဘောလုံးပွဲတစ်ပွဲ၏ ဓာတ်ပုံ",
            correctBucketEn: "Not Needed on a Sketch Map",
            correctBucketMy: "ရိုင်းဆွဲမြေပုံပေါ်တွင် မလိုအပ်ပါ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6hum-w8-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su's Fieldwork Enquiry",
      titleMy: "စာဖတ်ခြင်း - စုစု၏ လယ်ကွင်းစုံစမ်းလေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su's Fieldwork Enquiry",
        titleMy: "စုစု၏ လယ်ကွင်းစုံစမ်းလေ့လာမှု",
        passageEn:
            "For her final Geography project of the term, Su Su had to run a full fieldwork enquiry, from a first question all the way to a final conclusion, exactly like a real geographer. She began, just as her teacher had taught, by writing a clear enquiry question at the top of her clipboard: \"How is the land used in the streets around Nova School?\" It felt strange to be asking a big question about somewhere so familiar, but she remembered how her practice survey the week before had revealed something about her own street she had never noticed, and she was determined to dig deeper this time.\n\nOut in the field, Su Su and her group used a tally chart to count traffic at two different corners and carried out a small land-use survey, walking street by street and noting whether each building was a shop, a house, a school, or open green space. Wearing her high-visibility vest and following the safety rules exactly, she also asked three shopkeepers a short questionnaire about how long they had worked on the street. Back in the classroom, she recorded everything on a sketch map of the neighbourhood, carefully adding a title, a key for her symbols, a compass rose, a scale bar, and the four-figure grid reference for the school gate itself.\n\nWhen Su Su finally stood up to present her findings to the class, she explained that most of the land near Nova School was used for housing, but that the number of small shops grew noticeably the closer you walked toward the main road. Her conclusion answered her enquiry question directly: the neighbourhood was mostly residential, with a small but growing shopping street at its edge. Looking at her finished sketch map, covered in careful symbols and grid references, Su Su realised that a good geographer, just like a good archaeologist digging for clues about the Maya, always let the evidence, not a guess, decide the final answer.",
        passageMy:
            "ဤနှစ်လက်၏ ပထဝီဝင် နောက်ဆုံးပရိုဂျက်အတွက် စုစုသည် ပထမဆုံးမေးခွန်းမှသည် နောက်ဆုံးနိဂုံးချုပ်အထိ တကယ့်ပထဝီပညာရှင်တစ်ဦးကဲ့သို့ လယ်ကွင်းစုံစမ်းလေ့လာမှု တစ်ခုလုံးကို လုပ်ဆောင်ရမည်ဖြစ်သည်။ ဆရာမသင်ကြားပေးထားသည့်အတိုင်း သူမ၏ clipboard အပေါ်ဆုံးတွင် ရှင်းလင်းသော စုံစမ်းလေ့လာမှု မေးခွန်းတစ်ခုကို ရေးချခြင်းဖြင့် စတင်ခဲ့သည် - \"Nova ကျောင်းပတ်ဝန်းကျင်ရှိ လမ်းများတွင် မြေကို မည်သို့ အသုံးချသနည်း\"။ ဤမျှ ရင်းနှီးသောနေရာတစ်ခုအကြောင်း မေးခွန်းကြီးတစ်ခု မေးရသည်မှာ ထူးဆန်းစွာ ခံစားရသော်လည်း၊ တစ်ပတ်က သူမ၏ လေ့ကျင့်ရေးစစ်တမ်းက သူမ၏ ကိုယ်ပိုင်လမ်းအကြောင်း ယခင်က တစ်ခါမျှ သတိမပြုမိခဲ့သည့်အရာကို ဖော်ထုတ်ပေးခဲ့ပုံကို သူမ သတိရနေပြီး၊ ဒီတစ်ကြိမ် ပို၍ တွင်းနက်စွာ လေ့လာရန် စိတ်ပိုင်းဖြတ်ထားသည်။\n\nလယ်ကွင်းထဲတွင် စုစုနှင့် သူမ၏ အုပ်စုသည် ထောင့်နှစ်ခုတွင် ယာဉ်များကို ရေတွက်ရန် tally chart ကို အသုံးပြုကာ၊ လမ်းတစ်ခုပြီးတစ်ခု လမ်းလျှောက်ရင်း အဆောက်အအုံတစ်ခုစီသည် ဆိုင်လား၊ အိမ်လား၊ ကျောင်းလား၊ (သို့) ဟင်းလင်းစိမ်းလန်းရာနေရာလား မှတ်သားရင်း မြေအသုံးချမှု စစ်တမ်းငယ်တစ်ခုကို ကောက်ယူခဲ့သည်။ မြင်သာစေသောဗက်စကွက်ဝတ်ဆင်ကာ ဘေးအန္တရာယ်ကင်းရှင်းရေးစည်းမျဉ်းများကို တိကျစွာ လိုက်နာရင်း၊ ဆိုင်ရှင်သုံးဦးအား သူတို့ လမ်းပေါ်တွင် မည်မျှကြာမြင့်စွာ အလုပ်လုပ်ခဲ့ကြောင်း အတိုချုပ် မေးခွန်းလွှာတစ်ခုကို မေးမြန်းခဲ့သည်။ စာသင်ခန်းသို့ ပြန်ရောက်သောအခါ ရပ်ကွက်၏ ရိုင်းဆွဲမြေပုံတစ်ခုပေါ်တွင် အရာအားလုံးကို မှတ်တမ်းတင်ခဲ့ပြီး၊ ခေါင်းစဉ်၊ သင်္ကေတများအတွက် အညွှန်း၊ အရပ်မျက်နှာညွှန်ပန်းချီ၊ အချိုးကိန်းတန်းနှင့် ကျောင်းတံခါးအတွက် လေးလုံးပါ ဇယားကွက်ကိုးကားချက်ကို ဂရုတစိုက် ထည့်သွင်းခဲ့သည်။\n\nနောက်ဆုံးတွင် စုစု ရလဒ်များကို အတန်းကို တင်ပြရန် ထလိုက်သောအခါ Nova ကျောင်းအနီးရှိ မြေအများစုသည် အိမ်ရာအတွက် အသုံးပြုနေသော်လည်း၊ မြို့ပြလမ်းမကြီးဆီသို့ လမ်းလျှောက်လာလေလေ ဆိုင်ငယ်အရေအတွက် သိသိသာသာ ပိုများလာလေဖြစ်ကြောင်း ရှင်းပြခဲ့သည်။ သူမ၏ နိဂုံးချုပ်သည် သူမ၏ စုံစမ်းလေ့လာမှု မေးခွန်းကို တိုက်ရိုက် ဖြေဆိုခဲ့သည် - ရပ်ကွက်သည် အများစု နေအိမ်ဒေသဖြစ်ပြီး ၎င်း၏ အနားစွန်းတွင် သေးငယ်သော်လည်း တိုးတက်လာနေသော ဈေးဆိုင်လမ်းတစ်ခု ရှိနေသည်။ ဂရုတစိုက် သင်္ကေတများနှင့် ဇယားကွက်ကိုးကားချက်များ ဖုံးလွှမ်းနေသော သူမ၏ ပြီးစီးသွားသော ရိုင်းဆွဲမြေပုံကို ကြည့်ရှုရင်း၊ ကောင်းမွန်သော ပထဝီပညာရှင်တစ်ဦးသည် မာယာနှင့်ပတ်သက်သော အချက်အလက်များကို ရှာဖွေနေသော ကောင်းမွန်သော ရှေးဟောင်းသုတေသီတစ်ဦးကဲ့သို့ပင်၊ ခန့်မှန်းချက်တစ်ခု မဟုတ်ဘဲ သက်သေအထောက်အထားက နောက်ဆုံးအဖြေကို အမြဲ ဆုံးဖြတ်စေရမည်ဖြစ်ကြောင်း စုစု သဘောပေါက်လာခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What enquiry question did Su Su write at the top of her clipboard?",
            questionMy:
                "သူမ၏ clipboard အပေါ်ဆုံးတွင် စုစု မည်သည့် စုံစမ်းလေ့လာမှု မေးခွန်းကို ရေးချခဲ့သနည်း။",
            optionsEn: [
              "How is the land used in the streets around Nova School?",
              "How tall is the tallest building in Mexico?",
              "What did the ancient Maya eat for breakfast?",
              "How many students attend Nova School?",
            ],
            optionsMy: [
              "Nova ကျောင်းပတ်ဝန်းကျင်ရှိ လမ်းများတွင် မြေကို မည်သို့ အသုံးချသနည်း",
              "မက်ဆီကိုရှိ အမြင့်ဆုံးအဆောက်အအုံသည် မည်မျှမြင့်သနည်း",
              "ရှေးဟောင်းမာယာလူမျိုးများ မနက်စာအတွက် အဘယ်အရာစားခဲ့ကြသနည်း",
              "Nova ကျောင်းတွင် ကျောင်းသား မည်မျှတက်ရောက်နေသနည်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Which THREE things did Su Su record on her final sketch map?",
            questionMy:
                "သူမ၏ နောက်ဆုံးရိုင်းဆွဲမြေပုံတွင် စုစု မှတ်တမ်းတင်ခဲ့သည့် အရာသုံးမျိုးမှာ အဘယ်နည်း။",
            optionsEn: [
              "A key, a compass rose, and a grid reference",
              "A weather forecast, a shopping list, and a photograph",
              "A password, a phone number, and a receipt",
              "A song, a poem, and a drawing of a dragon",
            ],
            optionsMy: [
              "အညွှန်း၊ အရပ်မျက်နှာညွှန်ပန်းချီနှင့် ဇယားကွက်ကိုးကားချက်",
              "ရာသီဥတု ခန့်မှန်းချက်၊ စျေးဝယ်စာရင်းနှင့် ဓာတ်ပုံတစ်ပုံ",
              "စကားဝှက်၊ ဖုန်းနံပါတ်နှင့် ငွေတောင်းခံလွှာ",
              "သီချင်းတစ်ပုဒ်၊ ကဗျာတစ်ပုဒ်နှင့် နဂါးပုံတစ်ပုံ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to Su Su's conclusion, how did the number of shops change closer to the main road?",
            questionMy:
                "စုစု၏ နိဂုံးချုပ်အရ မြို့ပြလမ်းမကြီးအနီးသို့ ကပ်လာလေ ဆိုင်အရေအတွက် မည်သို့ ပြောင်းလဲသနည်း။",
            optionsEn: [
              "It grew noticeably larger",
              "It shrank to zero",
              "It stayed exactly the same everywhere",
              "It became impossible to count",
            ],
            optionsMy: [
              "သိသိသာသာ ပိုများလာခြင်း",
              "သုညအထိ လျော့ကျသွားခြင်း",
              "နေရာတိုင်းတွင် အတိအကျ မပြောင်းလဲဘဲ ရှိနေခြင်း",
              "ရေတွက်၍ လုံးဝ မရနိုင်တော့ခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What was Su Su's final conclusion about the neighbourhood around Nova School?",
            questionMy:
                "Nova ကျောင်းပတ်ဝန်းကျင်ရှိ ရပ်ကွက်နှင့်ပတ်သက်၍ စုစု၏ နောက်ဆုံးနိဂုံးချုပ်မှာ အဘယ်နည်း။",
            optionsEn: [
              "Mostly residential, with a small but growing shopping street at its edge",
              "Entirely covered in rainforest",
              "Used only for farming maize",
              "A completely empty, uninhabited area",
            ],
            optionsMy: [
              "အများစု နေအိမ်ဒေသဖြစ်ပြီး အနားစွန်းတွင် သေးငယ်သော်လည်း တိုးတက်နေသော ဈေးဆိုင်လမ်းရှိခြင်း",
              "လုံးဝ မိုးသစ်တောဖုံးလွှမ်းနေခြင်း",
              "ပြောင်းစိုက်ပျိုးရန်အတွက်သာ အသုံးပြုနေခြင်း",
              "လူသူကင်းမဲ့သော လုံးဝဟင်းလင်းသောနေရာ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "By the end of the passage, what does Su Su realise a good geographer has in common with a good archaeologist?",
            questionMy:
                "စာပိုဒ်အဆုံးတွင် ကောင်းမွန်သော ပထဝီပညာရှင်တစ်ဦးနှင့် ကောင်းမွန်သော ရှေးဟောင်းသုတေသီတစ်ဦးတို့တွင် မည်သည့်အချက် ဆင်တူကြောင်း စုစု သဘောပေါက်လာသနည်း။",
            optionsEn: [
              "Both let the evidence, not a guess, decide the final answer",
              "Both never write anything down",
              "Both work alone without a team",
              "Both only study the ancient past",
            ],
            optionsMy: [
              "နှစ်ဦးစလုံးသည် ခန့်မှန်းချက်မဟုတ်ဘဲ သက်သေအထောက်အထားက နောက်ဆုံးအဖြေကို ဆုံးဖြတ်စေခြင်း",
              "နှစ်ဦးစလုံးသည် မည်သည့်အရာကိုမျှ မှတ်တမ်းမတင်ခြင်း",
              "နှစ်ဦးစလုံးသည် အဖွဲ့မပါဘဲ တစ်ဦးတည်း လုပ်ဆောင်ခြင်း",
              "နှစ်ဦးစလုံးသည် ရှေးခေတ်ဟောင်းကိုသာ လေ့လာခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6hum-w8-d5",
      dayNumber: 5,
      titleEn: "Term Round-Up: Map Skills and Fieldwork",
      titleMy: "နှစ်လက် အနှစ်ချုပ် - မြေပုံအတတ်ပညာနှင့် လယ်ကွင်းလေ့လာမှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does a map's key explain to the reader?",
          questionMy:
              "မြေပုံတစ်ခု၏ အညွှန်းက ဖတ်ရှုသူအား အဘယ်အရာကို ရှင်းပြသနည်း။",
          optionsEn: [
            "What each symbol on the map means",
            "The reader's own name",
            "How much the map cost",
            "The weather next month",
          ],
          optionsMy: [
            "မြေပုံပေါ်ရှိ သင်္ကေတတစ်ခုစီ၏ အဓိပ္ပာယ်",
            "ဖတ်ရှုသူ၏ ကိုယ်ပိုင်အမည်",
            "မြေပုံ၏ ဈေးနှုန်း",
            "နောက်လမည့်လ၏ ရာသီဥတု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In a grid reference, which numbers are always read first?",
          questionMy:
              "ဇယားကွက် ကိုးကားချက်တစ်ခုတွင် မည်သည့်ဂဏန်းများကို အမြဲ ဦးစွာ ဖတ်ရသနည်း။",
          optionsEn: [
            "The eastings",
            "The northings",
            "The scale numbers",
            "The temperature",
          ],
          optionsMy: [
            "Eastings",
            "Northings",
            "အချိုးကိန်းဂဏန်းများ",
            "အပူချိန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is primary data?",
          questionMy: "Primary data ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Information collected firsthand, by the geographer themselves",
            "Information nobody can ever check",
            "Information found only in old novels",
            "Information that is always about the weather",
          ],
          optionsMy: [
            "ပထဝီပညာရှင်ကိုယ်တိုင် ရင်းရင်းနှီးနှီး စုဆောင်းသော အချက်အလက်",
            "မည်သူမျှ တစ်ခါမျှ စစ်ဆေးမရနိုင်သော အချက်အလက်",
            "ဝတ္ထုဟောင်းများတွင်သာ တွေ့ရသော အချက်အလက်",
            "ရာသီဥတုအကြောင်းသာ အမြဲ ဖြစ်သော အချက်အလက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What was the enquiry question for Su Su's capstone fieldwork project?",
          questionMy:
              "စုစု၏ ကာလကြီးစီမံကိန်း လယ်ကွင်းစုံစမ်းလေ့လာမှုအတွက် စုံစမ်းလေ့လာမှု မေးခွန်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "How is the land used in the streets around Nova School?",
            "Did the Maya civilisation disappear?",
            "How tall is Mount Everest?",
            "What is the capital of France?",
          ],
          optionsMy: [
            "Nova ကျောင်းပတ်ဝန်းကျင်ရှိ လမ်းများတွင် မြေကို မည်သို့ အသုံးချသနည်း",
            "မာယာယဉ်ကျေးမှု ကွယ်ပျောက်သွားခဲ့ပါသလား",
            "အဲဗရက်တောင်ထိပ် မည်မျှမြင့်သနည်း",
            "ပြင်သစ်နိုင်ငံ၏ မြို့တော်မှာ အဘယ်နည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the last stage of a fieldwork enquiry, once results have been presented?",
          questionMy:
              "ရလဒ်များ တင်ပြပြီးနောက် လယ်ကွင်းစုံစမ်းလေ့လာမှု၏ နောက်ဆုံးအဆင့်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Drawing a conclusion that answers the enquiry question",
            "Erasing all the collected evidence",
            "Choosing an entirely new enquiry question",
            "Skipping straight back to the very first stage",
          ],
          optionsMy: [
            "စုံစမ်းလေ့လာမှု မေးခွန်းကို ဖြေဆိုသည့် နိဂုံးချုပ် ဆွဲချုပ်ခြင်း",
            "စုဆောင်းထားသော သက်သေအထောက်အထားများအားလုံးကို ဖျက်ပစ်ခြင်း",
            "လုံးဝ ကွဲပြားသော စုံစမ်းလေ့လာမှု မေးခွန်းအသစ်တစ်ခု ရွေးချယ်ခြင်း",
            "ပထမဆုံးအဆင့်သို့ တိုက်ရိုက် ပြန်ကျော်ခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _year6HumanitiesTerm2 = CourseTermDef(
  id: "course-year6-humanities-t2",
  termNumber: 2,
  titleEn: "Map Skills and Fieldwork",
  titleMy: "မြေပုံအတတ်ပညာနှင့် လယ်ကွင်းလေ့လာမှု",
  certificateTitleEn: "Map Skills & Fieldwork Explorer",
  certificateTitleMy: "မြေပုံအတတ်ပညာနှင့် လယ်ကွင်းလေ့လာမှု စူးစမ်းလေ့လာသူ",
  weeks: [
    _year6HumanitiesWeek5,
    _year6HumanitiesWeek6,
    _year6HumanitiesWeek7,
    _year6HumanitiesWeek8,
  ],
);
