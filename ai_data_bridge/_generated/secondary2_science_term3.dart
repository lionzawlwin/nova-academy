const CourseWeekDef _secondary2ScienceWeek9 = CourseWeekDef(
  id: "course-secondary2-science-w9",
  weekNumber: 9,
  titleEn: "Density",
  titleMy: "သိပ်သည်းဆ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-science-w9-d1",
      dayNumber: 1,
      titleEn: "Mass, Volume, and Floating or Sinking",
      titleMy: "ဒြပ်ထု၊ ကျယ်ဝန်းနှင့် ပေါလွင်ခြင်း သို့မဟုတ် နစ်မြုပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "How is density calculated?",
          questionMy: "သိပ်သည်းဆကို မည်သို့ တွက်ချက်သနည်း။",
          optionsEn: [
            "Density = Mass ÷ Volume",
            "Density = Mass × Volume",
            "Density = Volume ÷ Mass",
            "Density = Mass + Volume",
          ],
          optionsMy: [
            "သိပ်သည်းဆ = ဒြပ်ထု ÷ ကျယ်ဝန်း",
            "သိပ်သည်းဆ = ဒြပ်ထု × ကျယ်ဝန်း",
            "သိပ်သည်းဆ = ကျယ်ဝန်း ÷ ဒြပ်ထု",
            "သိပ်သည်းဆ = ဒြပ်ထု + ကျယ်ဝန်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Density measures how much mass is packed into a given amount of space.",
            "Divide the mass of an object by the amount of space (volume) it takes up.",
          ],
          hintsMy: [
            "သိပ်သည်းဆသည် ပေးထားသော နေရာပမာဏထဲသို့ ဒြပ်ထု မည်မျှ ထုပ်ပိုးထားသည်ကို တိုင်းတာသည်။",
            "အရာဝတ္ထုတစ်ခု၏ ဒြပ်ထုကို ၎င်း ယူထားသော နေရာပမာဏ (ကျယ်ဝန်း) ဖြင့် စားပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A block has a mass of 200 g and a volume of 50 cm³. What is its density?",
          questionMy:
              "ဂနစ်တစ်ခုသည် ဒြပ်ထု 200 g နှင့် ကျယ်ဝန်း 50 cm³ ရှိပါသည်။ သိပ်သည်းဆမှာ အဘယ်နည်း။",
          optionsEn: ["4 g/cm³", "10,000 g/cm³", "0.25 g/cm³", "150 g/cm³"],
          optionsMy: ["4 g/cm³", "10,000 g/cm³", "0.25 g/cm³", "150 g/cm³"],
          correctIndex: 0,
          hintsEn: ["Density = Mass ÷ Volume.", "200 ÷ 50 = 4 g/cm³."],
          hintsMy: [
            "သိပ်သည်းဆ = ဒြပ်ထု ÷ ကျယ်ဝန်း။",
            "200 ÷ 50 = 4 g/cm³ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why does a wooden block float in water while a similarly sized iron block sinks?",
          questionMy:
              "သစ်သားတုံးတစ်ခုသည် ရေပေါ်တွင် ပေါလွင်နေသော်လည်း အရွယ်အစားတူ သံတုံးတစ်ခုမှာ အဘယ်ကြောင့် နစ်မြုပ်သွားသနည်း။",
          optionsEn: [
            "Wood has a lower density than water, while iron has a higher density than water",
            "Wood is always heavier than iron of the same size",
            "Iron is always lighter than water regardless of size",
            "Floating and sinking have nothing to do with density",
          ],
          optionsMy: [
            "သစ်သားသည် ရေထက် သိပ်သည်းဆနည်းပြီး သံသည် ရေထက် သိပ်သည်းဆများသောကြောင့်",
            "သစ်သားသည် အရွယ်အစားတူ သံထက် အမြဲတမ်း ပိုလေးလံသောကြောင့်",
            "သံသည် အရွယ်အစားကို မထောက်ဘဲ ရေထက် အမြဲတမ်း ပိုပေါ့သောကြောင့်",
            "ပေါလွင်ခြင်းနှင့် နစ်မြုပ်ခြင်းသည် သိပ်သည်းဆနှင့် လုံးဝ မသက်ဆိုင်ချေ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Compare each material's density to the density of water (about 1 g/cm³).",
            "Materials less dense than water float; materials denser than water sink.",
          ],
          hintsMy: [
            "ပစ္စည်းတစ်ခုစီ၏ သိပ်သည်းဆကို ရေ၏ သိပ်သည်းဆ (ခန့်မှန်း 1 g/cm³) နှင့် နှိုင်းယှဉ်ပါ။",
            "ရေထက် သိပ်သည်းဆနည်းသော ပစ္စည်းများသည် ပေါလွင်ပြီး ရေထက် သိပ်သည်းဆများသော ပစ္စည်းများသည် နစ်မြုပ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A steel ship floats on water even though steel is denser than water. How is this possible?",
          questionMy:
              "သံသည် ရေထက် သိပ်သည်းဆများသော်လည်း သံရေယာဉ်တစ်စီးသည် ရေပေါ်တွင် ပေါလွင်နိုင်သည်မှာ မည်သို့ ဖြစ်နိုင်သနည်း။",
          optionsEn: [
            "The ship's overall shape traps air, making its average (overall) density lower than water",
            "Steel becomes lighter when shaped into a ship",
            "Ships never actually float; they are supported by the seabed",
            "Water becomes less dense around large metal objects",
          ],
          optionsMy: [
            "ရေယာဉ်၏ ပုံသဏ္ဌာန်စုစုပေါင်းသည် လေကို ထောင်ချောက်ချထားသဖြင့် ပျမ်းမျှ (စုစုပေါင်း) သိပ်သည်းဆကို ရေထက် နည်းစေသောကြောင့်",
            "သံသည် ရေယာဉ်ပုံအဖြစ် ပုံဖော်လိုက်သောအခါ ပိုပေါ့သွားသောကြောင့်",
            "ရေယာဉ်များသည် အမှန်တကယ် ပေါလွင်ခြင်း မဟုတ်ဘဲ ပင်လယ်ကြမ်းပြင်က ထောက်ပံ့ပေးသောကြောင့်",
            "ကြီးမားသောသတ္တုအရာဝတ္ထုများပတ်ဝန်းကျင်တွင် ရေ၏ သိပ်သည်းဆ နည်းသွားသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A ship's hull is shaped hollow, holding a large volume of trapped air inside.",
            "Even though solid steel sinks, the ship's overall shape (steel + hollow air-filled space) has a lower average density than water.",
          ],
          hintsMy: [
            "ရေယာဉ်၏ကိုယ်ထည်ကို လေအများကြီး ထောင်ချောက်ချထားနိုင်သော ဟာကွက်ပုံစံဖြင့် ပုံဖော်ထားသည်။",
            "အစိုင်အခဲသံ နစ်မြုပ်သော်လည်း ရေယာဉ်၏ ပုံသဏ္ဌာန်စုစုပေါင်း (သံ + လေဖြင့်ပြည့်နေသောဟာကွက်) သည် ရေထက် ပျမ်းမျှသိပ်သည်းဆ နည်းသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w9-d2",
      dayNumber: 2,
      titleEn: "Density Vocabulary",
      titleMy: "သိပ်သည်းဆ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2s-w9-dm1",
          termEn: "Density",
          termMy: "သိပ်သည်းဆ (Density)",
          matchEn: "Mass per unit volume of a substance",
          matchMy: "ပစ္စည်းတစ်ခု၏ ကျယ်ဝန်းယူနစ်တစ်ခုစီ ရှိသော ဒြပ်ထု",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2s-w9-dm2",
          termEn: "Mass",
          termMy: "ဒြပ်ထု (Mass)",
          matchEn: "The amount of matter in an object",
          matchMy: "အရာဝတ္ထုတစ်ခုတွင် ရှိသော ဒြပ်ရှိပစ္စည်းပမာဏ",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2s-w9-dm3",
          termEn: "Volume",
          termMy: "ကျယ်ဝန်း (Volume)",
          matchEn: "The amount of space an object occupies",
          matchMy: "အရာဝတ္ထုတစ်ခု နေရာယူထားသော ပမာဏ",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2s-w9-dm4",
          termEn: "Buoyancy",
          termMy: "ပေါလွင်စွမ်း (Buoyancy)",
          matchEn: "The upward force a fluid exerts on an object placed in it",
          matchMy:
              "အရည်တစ်ခုသည် ၎င်းအထဲ ထည့်ထားသော အရာဝတ္ထုအပေါ် ဖြစ်ပေါ်စေသော အပေါ်သို့တွန်းအား",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2s-w9-dm5",
          termEn: "Average Density",
          termMy: "ပျမ်းမျှသိပ်သည်းဆ (Average Density)",
          matchEn:
              "The overall density of an object including any hollow, air-filled space",
          matchMy:
              "လေဖြင့်ပြည့်နေသော ဟာကွက်တစ်စုံတစ်ရာ အပါအဝင် အရာဝတ္ထုတစ်ခု၏ စုစုပေါင်းသိပ်သည်းဆ",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2s-w9-dm6",
          termEn: "Sink",
          termMy: "နစ်မြုပ်ခြင်း (Sink)",
          matchEn:
              "To fall through a fluid because it is denser than that fluid",
          matchMy:
              "အရည်တစ်ခုထက် သိပ်သည်းဆများသောကြောင့် ထိုအရည်ထဲသို့ ကျဆင်းသွားခြင်း",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w9-d3",
      dayNumber: 3,
      titleEn: "Sorting Floats or Sinks in Water",
      titleMy: "ရေပေါ်တွင် ပေါလွင်ခြင်း သို့မဟုတ် နစ်မြုပ်ခြင်းကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Floats (Less Dense Than Water)",
          "Sinks (Denser Than Water)",
        ],
        bucketsMy: [
          "ပေါလွင်သည် (ရေထက် သိပ်သည်းဆနည်း)",
          "နစ်မြုပ်သည် (ရေထက် သိပ်သည်းဆများ)",
        ],
        items: [
          SortingItem(
            id: "s2s-w9-sort1",
            labelEn: "A block of wood",
            labelMy: "သစ်သားတုံးတစ်ခု",
            correctBucketEn: "Floats (Less Dense Than Water)",
            correctBucketMy: "ပေါလွင်သည် (ရေထက် သိပ်သည်းဆနည်း)",
          ),
          SortingItem(
            id: "s2s-w9-sort2",
            labelEn: "A solid iron nail",
            labelMy: "အစိုင်အခဲ သံမှုန့်တစ်ခု",
            correctBucketEn: "Sinks (Denser Than Water)",
            correctBucketMy: "နစ်မြုပ်သည် (ရေထက် သိပ်သည်းဆများ)",
          ),
          SortingItem(
            id: "s2s-w9-sort3",
            labelEn: "A plastic bottle cap",
            labelMy: "ပလတ်စတစ်ပုလင်း အဖုံးတစ်ခု",
            correctBucketEn: "Floats (Less Dense Than Water)",
            correctBucketMy: "ပေါလွင်သည် (ရေထက် သိပ်သည်းဆနည်း)",
          ),
          SortingItem(
            id: "s2s-w9-sort4",
            labelEn: "A solid gold coin",
            labelMy: "အစိုင်အခဲ ရွှေဒင်္ဂါးတစ်ပြား",
            correctBucketEn: "Sinks (Denser Than Water)",
            correctBucketMy: "နစ်မြုပ်သည် (ရေထက် သိပ်သည်းဆများ)",
          ),
          SortingItem(
            id: "s2s-w9-sort5",
            labelEn: "An empty, sealed plastic bottle",
            labelMy: "လေအိတ်ပိတ်ထားသော ပလတ်စတစ်ပုလင်းအလွတ်",
            correctBucketEn: "Floats (Less Dense Than Water)",
            correctBucketMy: "ပေါလွင်သည် (ရေထက် သိပ်သည်းဆနည်း)",
          ),
          SortingItem(
            id: "s2s-w9-sort6",
            labelEn: "A solid rock",
            labelMy: "အစိုင်အခဲ ကျောက်တုံးတစ်တုံး",
            correctBucketEn: "Sinks (Denser Than Water)",
            correctBucketMy: "နစ်မြုပ်သည် (ရေထက် သိပ်သည်းဆများ)",
          ),
          SortingItem(
            id: "s2s-w9-sort7",
            labelEn: "A ship, due to its hollow air-filled hull",
            labelMy: "လေဖြင့်ပြည့်နေသော ဟာကွက်ကိုယ်ထည်ကြောင့် ရေယာဉ်တစ်စီး",
            correctBucketEn: "Floats (Less Dense Than Water)",
            correctBucketMy: "ပေါလွင်သည် (ရေထက် သိပ်သည်းဆနည်း)",
          ),
          SortingItem(
            id: "s2s-w9-sort8",
            labelEn: "A dense metal coin dropped into a glass of water",
            labelMy:
                "ရေဖန်ခွက်ထဲသို့ ချထားသော သိပ်သည်းဆများသည့် သတ္တုဒင်္ဂါးတစ်ပြား",
            correctBucketEn: "Sinks (Denser Than Water)",
            correctBucketMy: "နစ်မြုပ်သည် (ရေထက် သိပ်သည်းဆများ)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w9-d4",
      dayNumber: 4,
      titleEn: "Reading: Htet Aung's Sinking Orange",
      titleMy: "စာဖတ်ခြင်း — ထက်အောင်၏ နစ်မြုပ်သွားသော လိမ္မော်သီး",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Htet Aung's Sinking Orange",
        titleMy: "ထက်အောင်၏ နစ်မြုပ်သွားသော လိမ္မော်သီး",
        passageEn:
            "Htet Aung dropped a whole orange into a bucket of water and watched it float, bobbing gently at the surface. Curious, he peeled the orange and dropped the bare fruit back into the water — this time, it sank straight to the bottom. He was confused, since he hadn't changed the amount of fruit inside, only removed the peel. His older sister explained that an orange peel is full of tiny air pockets, which lower the fruit's overall average density below that of water, similar to how a ship's hollow hull keeps it afloat despite being made of dense steel. Without the peel, the denser orange flesh alone had an average density higher than water, so it sank. Htet Aung tested this again with a grapefruit and found the same result — peeled fruit sank, unpeeled fruit floated. He realised that density wasn't just about the material itself, but about the entire object's structure, including any air trapped inside it.",
        passageMy:
            "ထက်အောင်သည် လိမ္မော်သီးတစ်လုံးလုံးကို ရေပုံးထဲသို့ ချထားပြီး ၎င်း၏မျက်နှာပြင်တွင် ညင်သာစွာ လှုပ်ရှားနေသည်ကို ကြည့်ခဲ့သည်။ စိတ်ဝင်စားသောကြောင့် သူသည် လိမ္မော်သီးကို အခွံခွာပြီး ဖတ်စစ်ဖြစ်သော အသီးကို ရေထဲသို့ ပြန်ချခဲ့သည် — ဤအကြိမ်တွင် ၎င်းသည် အောက်ခြေသို့ တည့်တည့် နစ်မြုပ်သွားခဲ့သည်။ သူသည် အသီးအတွင်းရှိ ပမာဏကို မပြောင်းလဲခဲ့ဘဲ အခွံသာ ဖယ်ရှားခဲ့သောကြောင့် ရှုပ်ထွေးနေခဲ့သည်။ သူ၏ အစ်မကြီးက လိမ္မော်သီးအခွံသည် လေပူဒစ်ငယ်များ ပြည့်နေပြီး ၎င်းတို့သည် သိပ်သည်းဆများသောသံဖြင့်ပြုလုပ်ထားသော်လည်း ရေယာဉ်တစ်စီး၏ ဟာကွက်ကိုယ်ထည်က ၎င်းကို ပေါလွင်နေစေသကဲ့သို့ အသီး၏ ပျမ်းမျှသိပ်သည်းဆကို ရေ၏သိပ်သည်းဆထက် နည်းစေသည်ဟု ရှင်းပြခဲ့သည်။ အခွံမပါဘဲ သိပ်သည်းဆများသော လိမ္မော်သီးအသားသက်သက်သည် ရေထက် ပျမ်းမျှသိပ်သည်းဆများသောကြောင့် နစ်မြုပ်သွားခဲ့သည်။ ထက်အောင်သည် ဤအရာကို ကျမ်းသီးဖြင့် ထပ်မံစမ်းသပ်ခဲ့ပြီး ရလဒ်တူညီစွာ တွေ့ခဲ့သည် — အခွံခွာထားသော အသီးသည် နစ်မြုပ်ပြီး အခွံပါသော အသီးသည် ပေါလွင်ခဲ့သည်။ သိပ်သည်းဆသည် ပစ္စည်းကိုယ်တိုင်နှင့်သာ မဟုတ်ဘဲ ၎င်းအတွင်း ထောင်ချောက်ချထားသော လေအပါအဝင် အရာဝတ္ထုတစ်ခုလုံး၏ ဖွဲ့စည်းပုံနှင့် သက်ဆိုင်ကြောင်း ထက်အောင် သဘောပေါက်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What happened when Htet Aung dropped the whole orange into water?",
            questionMy:
                "ထက်အောင်သည် လိမ္မော်သီးတစ်လုံးလုံးကို ရေထဲသို့ ချထားသောအခါ အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "It floated at the surface",
              "It sank straight to the bottom",
              "It dissolved in the water",
              "It changed colour",
            ],
            optionsMy: [
              "မျက်နှာပြင်တွင် ပေါလွင်နေခဲ့သည်",
              "အောက်ခြေသို့ တည့်တည့် နစ်မြုပ်သွားခဲ့သည်",
              "ရေထဲတွင် ပျော်ဝင်သွားခဲ့သည်",
              "အရောင် ပြောင်းလဲသွားခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What happened after Htet Aung peeled the orange?",
            questionMy:
                "ထက်အောင်သည် လိမ္မော်သီးကို အခွံခွာပြီးနောက် အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "It sank straight to the bottom",
              "It floated even higher than before",
              "It stayed exactly the same",
              "It broke apart in the water",
            ],
            optionsMy: [
              "အောက်ခြေသို့ တည့်တည့် နစ်မြုပ်သွားခဲ့သည်",
              "ယခင်ထက်ပင် ပိုမြင့်စွာ ပေါလွင်နေခဲ့သည်",
              "အတိအကျ မပြောင်းလဲဘဲ ရှိနေခဲ့သည်",
              "ရေထဲတွင် ကွဲထွက်သွားခဲ့သည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Why does the orange peel help the fruit float?",
            questionMy:
                "လိမ္မော်သီးအခွံသည် အဘယ်ကြောင့် အသီးကို ပေါလွင်ရန် ကူညီသနည်း။",
            optionsEn: [
              "It contains tiny air pockets that lower the fruit's average density",
              "It is made of a lighter material than the fruit's flesh",
              "It repels water completely",
              "It has no effect on floating at all",
            ],
            optionsMy: [
              "အသီး၏ ပျမ်းမျှသိပ်သည်းဆကို နည်းစေသော လေပူဒစ်ငယ်များ ပါဝင်သောကြောင့်",
              "အသီးအသားထက် ပိုပေါ့သောပစ္စည်းဖြင့် ပြုလုပ်ထားသောကြောင့်",
              "ရေကို လုံးဝ ဖယ်ရှားပေးသောကြောင့်",
              "ပေါလွင်ခြင်းအပေါ် လုံးဝ သက်ရောက်မှု မရှိသောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Htet Aung conclude about density and floating?",
            questionMy:
                "သိပ်သည်းဆနှင့် ပေါလွင်ခြင်းအကြောင်း ထက်အောင် အဘယ်အရာကို ကောက်ချက်ချခဲ့သနည်း။",
            optionsEn: [
              "It depends on the whole object's structure, including trapped air",
              "It only depends on the material's colour",
              "Peeled and unpeeled fruit always behave the same way",
              "Density has nothing to do with floating",
            ],
            optionsMy: [
              "ထောင်ချောက်ချထားသော လေအပါအဝင် အရာဝတ္ထုတစ်ခုလုံး၏ ဖွဲ့စည်းပုံကို မူတည်ကြောင်း",
              "ပစ္စည်း၏ အရောင်ကိုသာ မူတည်ကြောင်း",
              "အခွံခွာထားသော နှင့် အခွံပါသော အသီးများသည် အမြဲတမ်း အတူတူ ပြုမူကြောင်း",
              "သိပ်သည်းဆသည် ပေါလွင်ခြင်းနှင့် လုံးဝ မသက်ဆိုင်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w9-d5",
      dayNumber: 5,
      titleEn: "Density Recap Quiz",
      titleMy: "သိပ်သည်းဆ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Density equals...",
          questionMy: "သိပ်သည်းဆသည်...",
          optionsEn: [
            "Mass ÷ Volume",
            "Mass × Volume",
            "Volume ÷ Mass",
            "Mass + Volume",
          ],
          optionsMy: [
            "ဒြပ်ထု ÷ ကျယ်ဝန်း",
            "ဒြပ်ထု × ကျယ်ဝန်း",
            "ကျယ်ဝန်း ÷ ဒြပ်ထု",
            "ဒြပ်ထု + ကျယ်ဝန်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A block has a mass of 300 g and a volume of 100 cm³. What is its density?",
          questionMy:
              "ဂနစ်တစ်ခုသည် ဒြပ်ထု 300 g နှင့် ကျယ်ဝန်း 100 cm³ ရှိပါသည်။ သိပ်သည်းဆမှာ အဘယ်နည်း။",
          optionsEn: ["3 g/cm³", "30,000 g/cm³", "0.33 g/cm³", "200 g/cm³"],
          optionsMy: ["3 g/cm³", "30,000 g/cm³", "0.33 g/cm³", "200 g/cm³"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An object less dense than water will...",
          questionMy: "ရေထက် သိပ်သည်းဆနည်းသော အရာဝတ္ထုတစ်ခုသည်...",
          optionsEn: ["Float", "Sink", "Dissolve", "Explode"],
          optionsMy: [
            "ပေါလွင်သည်",
            "နစ်မြုပ်သည်",
            "ပျော်ဝင်သည်",
            "ပေါက်ကွဲသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A steel ship can float because...",
          questionMy: "သံရေယာဉ်တစ်စီးသည် ပေါလွင်နိုင်သည်မှာ...",
          optionsEn: [
            "Its hollow hull gives it an average density lower than water",
            "Steel is naturally less dense than water",
            "Ships do not actually float",
            "Water becomes lighter near large objects",
          ],
          optionsMy: [
            "၎င်း၏ ဟာကွက်ကိုယ်ထည်သည် ရေထက် ပျမ်းမျှသိပ်သည်းဆကို နည်းစေသောကြောင့်",
            "သံသည် သဘာဝအားဖြင့် ရေထက် သိပ်သည်းဆနည်းသောကြောင့်",
            "ရေယာဉ်များသည် အမှန်တကယ် ပေါလွင်ခြင်း မဟုတ်ကြောင့်",
            "ကြီးမားသောအရာဝတ္ထုများအနီးတွင် ရေ ပိုပေါ့သွားသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Htet Aung's orange story, why did the peeled orange sink?",
          questionMy:
              "ထက်အောင်၏ လိမ္မော်သီးဇာတ်လမ်းတွင် အခွံခွာထားသော လိမ္မော်သီး အဘယ်ကြောင့် နစ်မြုပ်သွားခဲ့သနည်း။",
          optionsEn: [
            "Without the air-filled peel, its average density was higher than water",
            "It became heavier after peeling",
            "It absorbed too much water",
            "The peel made it float, so removing it had no effect",
          ],
          optionsMy: [
            "လေဖြင့်ပြည့်နေသော အခွံမပါတော့သောကြောင့် ပျမ်းမျှသိပ်သည်းဆ ရေထက် ပိုများခဲ့သောကြောင့်",
            "အခွံခွာပြီးနောက် ပိုလေးလံသွားသောကြောင့်",
            "ရေ လွန်ကဲစွာ စုပ်ယူခဲ့သောကြောင့်",
            "အခွံက ၎င်းကို ပေါလွင်စေသောကြောင့် ဖယ်ရှားခြင်းသည် သက်ရောက်မှု မရှိချေ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2ScienceWeek10 = CourseWeekDef(
  id: "course-secondary2-science-w10",
  weekNumber: 10,
  titleEn: "Pressure in Solids",
  titleMy: "အခဲများရှိ ဖိအား",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-science-w10-d1",
      dayNumber: 1,
      titleEn: "Force, Area and Pressure",
      titleMy: "အား၊ ဧရိယာနှင့် ဖိအား",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "How is pressure calculated?",
          questionMy: "ဖိအားကို မည်သို့ တွက်ချက်သနည်း။",
          optionsEn: [
            "Pressure = Force ÷ Area",
            "Pressure = Force × Area",
            "Pressure = Area ÷ Force",
            "Pressure = Force + Area",
          ],
          optionsMy: [
            "ဖိအား = အား ÷ ဧရိယာ",
            "ဖိအား = အား × ဧရိယာ",
            "ဖိအား = ဧရိယာ ÷ အား",
            "ဖိအား = အား + ဧရိယာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Pressure measures how concentrated a force is over a surface.",
            "Divide the force pushing on a surface by the area it is spread over.",
          ],
          hintsMy: [
            "ဖိအားသည် အားသည် မျက်နှာပြင်တစ်ခုပေါ်တွင် မည်မျှ စုစည်းနေသည်ကို တိုင်းတာသည်။",
            "မျက်နှာပြင်တစ်ခုကို တွန်းအားပေးနေသော အားကို ၎င်း ဖြန့်ကျက်နေသော ဧရိယာဖြင့် စားပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A force of 100 N is applied over an area of 5 m². What is the pressure?",
          questionMy:
              "အား 100 N ကို ဧရိယာ 5 m² အပေါ် အသုံးချထားပါသည်။ ဖိအားမှာ အဘယ်နည်း။",
          optionsEn: [
            "20 N/m² (Pa)",
            "500 N/m² (Pa)",
            "0.05 N/m² (Pa)",
            "105 N/m² (Pa)",
          ],
          optionsMy: [
            "20 N/m² (Pa)",
            "500 N/m² (Pa)",
            "0.05 N/m² (Pa)",
            "105 N/m² (Pa)",
          ],
          correctIndex: 0,
          hintsEn: [
            "Pressure = Force ÷ Area.",
            "100 ÷ 5 = 20 N/m², also written as 20 Pascals (Pa).",
          ],
          hintsMy: [
            "ဖိအား = အား ÷ ဧရိယာ။",
            "100 ÷ 5 = 20 N/m² ဖြစ်ပြီး Pascals (Pa) 20 ဟုလည်း ရေးနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why does a sharp knife cut through food more easily than a blunt knife, even with the same force applied?",
          questionMy:
              "အားတူညီစွာ အသုံးချသော်လည်း ချွန်ထက်သော ဓားတစ်လက်သည် ထောင့်ညီ ဓားတစ်လက်ထက် အစားအစာကို အဘယ်ကြောင့် ပိုလွယ်ကူစွာ ဖြတ်နိုင်သနည်း။",
          optionsEn: [
            "A sharp edge has a much smaller area, concentrating the same force into higher pressure",
            "A sharp knife applies more force than a blunt one automatically",
            "Sharpness has no relationship to pressure",
            "A blunt knife always has a smaller surface area than a sharp one",
          ],
          optionsMy: [
            "ချွန်ထက်သောအစွန်းသည် ဧရိယာ များစွာ သေးငယ်သဖြင့် အားတူညီစွာကို ဖိအားပိုများသို့ စုစည်းပေးသောကြောင့်",
            "ချွန်ထက်သောဓားသည် ထောင့်ညီဓားထက် အလိုအလျောက် အားများသုံးသောကြောင့်",
            "ချွန်ထက်မှုသည် ဖိအားနှင့် လုံးဝ ဆက်စပ်မှု မရှိချေ",
            "ထောင့်ညီဓားသည် ချွန်ထက်သောဓားထက် မျက်နှာပြင်ဧရိယာ အမြဲတမ်း သေးငယ်ကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Remember: Pressure = Force ÷ Area. If area shrinks while force stays the same, pressure increases dramatically.",
            "A sharp blade concentrates the same pushing force onto a tiny edge, creating very high pressure that cuts through material easily.",
          ],
          hintsMy: [
            "မှတ်ထားပါ — ဖိအား = အား ÷ ဧရိယာ။ အားတူညီစွာနေချိန် ဧရိယာ ကျဆင်းပါက ဖိအား သိသိသာသာ တိုးလာသည်။",
            "ချွန်ထက်သောဓားသွားသည် အားတူညီစွာကို အလွန်သေးငယ်သောအစွန်းအပေါ်သို့ စုစည်းပေးသဖြင့် ပစ္စည်းကို လွယ်ကူစွာ ဖြတ်ပေးနိုင်သော ဖိအားမြင့်မား ဖန်တီးပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why do snowshoes prevent a person from sinking into deep snow, even though the person's weight stays the same?",
          questionMy:
              "လူတစ်ဦး၏ အလေးချိန် မပြောင်းလဲသော်လည်း နှင်းဖိနပ်များသည် လူတစ်ဦးအား နက်ရှိုင်းသော နှင်းထဲသို့ နစ်မြုပ်မသွားစေရန် အဘယ်ကြောင့် ကာကွယ်ပေးနိုင်သနည်း။",
          optionsEn: [
            "They spread the same weight over a much larger area, reducing pressure on the snow",
            "They make the person weigh less overall",
            "They increase the force the person applies to the ground",
            "Snowshoes have no effect on pressure at all",
          ],
          optionsMy: [
            "အလေးချိန်တူညီစွာကို ဧရိယာ ပိုကြီးသောနေရာအပေါ် ဖြန့်ကျက်ပေးသဖြင့် နှင်းအပေါ် ဖိအားကို လျှော့ချပေးကြောင့်",
            "လူတစ်ဦးအား စုစုပေါင်း ပိုပေါ့စေကြောင့်",
            "လူတစ်ဦး မြေပြင်အပေါ် အသုံးချသော အားကို တိုးမြှင့်ပေးကြောင့်",
            "နှင်းဖိနပ်များသည် ဖိအားအပေါ် လုံးဝ သက်ရောက်မှု မရှိချေ",
          ],
          correctIndex: 0,
          hintsEn: [
            "The snowshoe's wide surface spreads the person's weight over a much bigger area than a normal boot would.",
            "Same force, bigger area, means lower pressure — that is why the person is less likely to sink.",
          ],
          hintsMy: [
            "နှင်းဖိနပ်၏ ကျယ်ပြန့်သောမျက်နှာပြင်သည် ပုံမှန်ဖိနပ်ထက် ပိုကြီးသောဧရိယာအပေါ် လူတစ်ဦး၏အလေးချိန်ကို ဖြန့်ကျက်ပေးသည်။",
            "အားတူညီ၊ ဧရိယာပိုကြီးလျှင် ဖိအားနည်းသည်ဟု ဆိုလိုသည် — ၎င်းကြောင့် လူသည် နစ်မြုပ်နိုင်ခြေ ပိုနည်းသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w10-d2",
      dayNumber: 2,
      titleEn: "Pressure in Solids Vocabulary",
      titleMy: "အခဲများရှိ ဖိအား ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2s-w10-dm1",
          termEn: "Pressure",
          termMy: "ဖိအား (Pressure)",
          matchEn: "Force applied per unit area",
          matchMy: "ဧရိယာယူနစ်တစ်ခုစီအပေါ် အသုံးချထားသော အား",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2s-w10-dm2",
          termEn: "Force",
          termMy: "အား (Force)",
          matchEn: "A push or pull acting on an object",
          matchMy:
              "အရာဝတ္ထုတစ်ခုအပေါ် လုပ်ဆောင်နေသော တွန်းအား သို့မဟုတ် ဆွဲအား",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2s-w10-dm3",
          termEn: "Pascal",
          termMy: "Pascal (ပက်စကယ်)",
          matchEn: "The unit of pressure, equal to one newton per square metre",
          matchMy:
              "နယူတန် တစ်ခုကို စတုရန်းမီတာတစ်ခုစီနှင့် ညီမျှသော ဖိအားယူနစ်",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2s-w10-dm4",
          termEn: "Surface Area",
          termMy: "မျက်နှာပြင်ဧရိယာ (Surface Area)",
          matchEn: "The size of the surface a force is spread over",
          matchMy: "အားတစ်ခု ဖြန့်ကျက်နေသော မျက်နှာပြင်၏ အရွယ်အစား",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2s-w10-dm5",
          termEn: "Concentrated Force",
          termMy: "စုစည်းထားသောအား (Concentrated Force)",
          matchEn:
              "Force applied over a very small area, producing high pressure",
          matchMy:
              "ဖိအားမြင့်မား ဖြစ်ပေါ်စေသော အလွန်သေးငယ်သောဧရိယာအပေါ် အသုံးချထားသောအား",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2s-w10-dm6",
          termEn: "Spread Weight",
          termMy: "ဖြန့်ကျက်ထားသောအလေးချိန် (Spread Weight)",
          matchEn:
              "Weight distributed over a larger area, producing lower pressure",
          matchMy:
              "ဖိအားနည်းစေသော ဧရိယာပိုကြီးသောနေရာအပေါ် ဖြန့်ကျက်ထားသောအလေးချိန်",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w10-d3",
      dayNumber: 3,
      titleEn: "Sorting High or Low Pressure Examples",
      titleMy: "ဖိအားမြင့်မား သို့မဟုတ် ဖိအားနည်း ဥပမာများကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["High Pressure (Small Area)", "Low Pressure (Large Area)"],
        bucketsMy: ["ဖိအားမြင့်မား (ဧရိယာသေးငယ်)", "ဖိအားနည်း (ဧရိယာကြီးမား)"],
        items: [
          SortingItem(
            id: "s2s-w10-sort1",
            labelEn: "A sharp needle piercing fabric",
            labelMy: "အထည်ကို ထိုးဖောက်နေသော ချွန်ထက်သောအပ်တစ်ချောင်း",
            correctBucketEn: "High Pressure (Small Area)",
            correctBucketMy: "ဖိအားမြင့်မား (ဧရိယာသေးငယ်)",
          ),
          SortingItem(
            id: "s2s-w10-sort2",
            labelEn: "Snowshoes spreading weight on snow",
            labelMy: "နှင်းအပေါ် အလေးချိန်ဖြန့်ကျက်ပေးသော နှင်းဖိနပ်များ",
            correctBucketEn: "Low Pressure (Large Area)",
            correctBucketMy: "ဖိအားနည်း (ဧရိယာကြီးမား)",
          ),
          SortingItem(
            id: "s2s-w10-sort3",
            labelEn: "A sharp knife blade cutting food",
            labelMy: "အစားအစာကို ဖြတ်နေသော ချွန်ထက်သော ဓားသွား",
            correctBucketEn: "High Pressure (Small Area)",
            correctBucketMy: "ဖိအားမြင့်မား (ဧရိယာသေးငယ်)",
          ),
          SortingItem(
            id: "s2s-w10-sort4",
            labelEn: "Wide tyres on a tractor spreading load",
            labelMy: "ဝန်ကို ဖြန့်ကျက်ပေးသော ထရက်တာ၏ ကျယ်ပြန့်သောဘီးများ",
            correctBucketEn: "Low Pressure (Large Area)",
            correctBucketMy: "ဖိအားနည်း (ဧရိယာကြီးမား)",
          ),
          SortingItem(
            id: "s2s-w10-sort5",
            labelEn: "High-heeled shoes on a soft floor",
            labelMy: "ပျော့ပျောင်းသောကြမ်းပြင်အပေါ် မြင့်သောဖိနပ်ဆိုင်း",
            correctBucketEn: "High Pressure (Small Area)",
            correctBucketMy: "ဖိအားမြင့်မား (ဧရိယာသေးငယ်)",
          ),
          SortingItem(
            id: "s2s-w10-sort6",
            labelEn: "A flat-bottomed boat spreading its weight on water",
            labelMy:
                "ရေပေါ်တွင် အလေးချိန်ဖြန့်ကျက်ပေးသော ကြမ်းပြားညီသော လှေတစ်စီး",
            correctBucketEn: "Low Pressure (Large Area)",
            correctBucketMy: "ဖိအားနည်း (ဧရိယာကြီးမား)",
          ),
          SortingItem(
            id: "s2s-w10-sort7",
            labelEn: "A drawing pin pressed into a board",
            labelMy: "ဘုတ်ပြားထဲသို့ ဖိထားသော ပုံဆွဲအပ်ချောင်း",
            correctBucketEn: "High Pressure (Small Area)",
            correctBucketMy: "ဖိအားမြင့်မား (ဧရိယာသေးငယ်)",
          ),
          SortingItem(
            id: "s2s-w10-sort8",
            labelEn: "A camel's wide feet on soft sand",
            labelMy:
                "ပျော့ပျောင်းသောသဲအပေါ် ကုလားအုတ်၏ ကျယ်ပြန့်သောခြေထောက်များ",
            correctBucketEn: "Low Pressure (Large Area)",
            correctBucketMy: "ဖိအားနည်း (ဧရိယာကြီးမား)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w10-d4",
      dayNumber: 4,
      titleEn: "Reading: Aye Chan's Backpack Straps",
      titleMy: "စာဖတ်ခြင်း — အေးချမ်း၏ ကျောပိုးအိတ်ကြိုးများ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Aye Chan's Backpack Straps",
        titleMy: "အေးချမ်း၏ ကျောပိုးအိတ်ကြိုးများ",
        passageEn:
            "Aye Chan noticed that her old backpack, which had thin, narrow straps, always dug painfully into her shoulders, even when it wasn't very heavy. Her new backpack had wide, padded straps and felt much more comfortable carrying the exact same weight of books. She asked her science teacher why, and learned that pressure equals force divided by area — the weight of the backpack was the force staying constant, but the strap width determined the area over which that force was spread. Thin straps concentrated the backpack's weight onto a tiny area of her shoulder, creating high pressure that caused pain. Wide, padded straps spread that same weight over a much larger area, dramatically reducing the pressure and making the load feel lighter, even though the actual weight hadn't changed at all. Aye Chan realised this was the same principle behind snowshoes preventing sinking and knives cutting easily — pressure, not just force, determined how something felt or behaved.",
        passageMy:
            "အေးချမ်းသည် သူမ၏ကျောပိုးအိတ်ဟောင်းသည် ပါးလွှာသော၊ ကျဉ်းမြောင်းသောကြိုးများရှိပြီး လေးလံသိပ်များစွာ မဟုတ်သော်လည်း သူမ၏ပခုံးများထဲသို့ နာကျင်စွာ စူးဝင်နေသည်ကို သတိပြုမိခဲ့သည်။ သူမ၏ ကျောပိုးအိတ်သစ်တွင် ကျယ်ပြန့်၊ ဂွမ်းထည့်ထားသောကြိုးများ ရှိပြီး တူညီသော စာအုပ်အလေးချိန်ကို သယ်ဆောင်ရာတွင် များစွာ ပိုသက်တောင့်သက်သာ ခံစားရသည်။ သူမသည် သူမ၏သိပ္ပံဆရာမကို အဘယ်ကြောင့်ဟု မေးခဲ့ပြီး ဖိအားသည် အားကို ဧရိယာဖြင့် စားသည်နှင့် ညီမျှကြောင်း သင်ယူခဲ့သည် — ကျောပိုးအိတ်၏ အလေးချိန်သည် အားအဖြစ် အတူတူ ရှိနေသော်လည်း ကြိုးအကျယ်သည် ထိုအား ဖြန့်ကျက်နေသော ဧရိယာကို ဆုံးဖြတ်သည်။ ပါးလွှာသောကြိုးများသည် ကျောပိုးအိတ်၏အလေးချိန်ကို သူမ၏ပခုံး၏ အလွန်သေးငယ်သောဧရိယာအပေါ် စုစည်းပေးသဖြင့် နာကျင်မှု ဖြစ်စေသော ဖိအားမြင့်မား ဖန်တီးပေးခဲ့သည်။ ကျယ်ပြန့်၊ ဂွမ်းထည့်ထားသောကြိုးများသည် တူညီသောအလေးချိန်ကို ဧရိယာပိုကြီးသောနေရာအပေါ် ဖြန့်ကျက်ပေးသဖြင့် ဖိအားကို သိသိသာသာ လျှော့ချပေးပြီး အလေးချိန် အမှန်တကယ် လုံးဝ မပြောင်းလဲသော်လည်း ဝန်ထုပ်ဝန်ပိုးကို ပိုပေါ့စွာ ခံစားစေခဲ့သည်။ အေးချမ်းသည် ၎င်းသည် နှင်းဖိနပ်များ နစ်မြုပ်ခြင်းကို ကာကွယ်ပေးခြင်းနှင့် ဓားများ လွယ်ကူစွာ ဖြတ်နိုင်ခြင်းနောက်ကွယ်ရှိ သဘောတရားတစ်ခုတည်းပင်ဖြစ်ကြောင်း သဘောပေါက်ခဲ့သည် — အားသက်သက်မဟုတ်ဘဲ ဖိအားသည် အရာဝတ္ထုတစ်ခု မည်သို့ ခံစားရသည် သို့မဟုတ် ပြုမူသည်ကို ဆုံးဖြတ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Why did Aye Chan's old backpack straps hurt her shoulders?",
            questionMy:
                "အေးချမ်း၏ ကျောပိုးအိတ်ဟောင်းကြိုးများသည် သူမ၏ပခုံးများကို အဘယ်ကြောင့် နာကျင်စေခဲ့သနည်း။",
            optionsEn: [
              "Thin straps concentrated the weight onto a small area, creating high pressure",
              "The backpack was much heavier than the new one",
              "The straps were made of a rough, scratchy material",
              "There was no reason, it was just a coincidence",
            ],
            optionsMy: [
              "ပါးလွှာသောကြိုးများသည် အလေးချိန်ကို ဧရိယာသေးငယ်သောနေရာအပေါ် စုစည်းပေးသဖြင့် ဖိအားမြင့်မား ဖြစ်ပေါ်စေခဲ့ကြောင့်",
              "ကျောပိုးအိတ်သည် အိတ်သစ်ထက် များစွာ ပိုလေးလံခဲ့ကြောင့်",
              "ကြိုးများသည် ကြမ်းတမ်း၊ ဆူးထောင်သောပစ္စည်းဖြင့် ပြုလုပ်ထားခဲ့ကြောင့်",
              "အကြောင်းရင်း မရှိချေ — ကြုံလို့သာဖြစ်ကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Why did the new backpack feel more comfortable?",
            questionMy:
                "ကျောပိုးအိတ်သစ်သည် အဘယ်ကြောင့် ပိုသက်တောင့်သက်သာ ခံစားရခဲ့သနည်း။",
            optionsEn: [
              "Wide, padded straps spread the same weight over a larger area, reducing pressure",
              "It carried much less weight than the old one",
              "It was made of a special magical material",
              "The weight of the books had decreased",
            ],
            optionsMy: [
              "ကျယ်ပြန့်၊ ဂွမ်းထည့်ထားသောကြိုးများသည် ဖိအားလျှော့ချပေးသည့် ဧရိယာပိုကြီးသောနေရာအပေါ် အလေးချိန်တူညီစွာကို ဖြန့်ကျက်ပေးသောကြောင့်",
              "ယခင်ထက် အလေးချိန် များစွာ နည်းစွာ သယ်ဆောင်ခဲ့သောကြောင့်",
              "အထူးမှော်ပစ္စည်းဖြင့် ပြုလုပ်ထားသောကြောင့်",
              "စာအုပ်များ၏ အလေးချိန် လျော့နည်းသွားခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to the passage, pressure is calculated as...",
            questionMy: "စာပိုဒ်အရ ဖိအားကို မည်သို့ တွက်ချက်သနည်း...",
            optionsEn: [
              "Force divided by area",
              "Force multiplied by area",
              "Area divided by force",
              "Force added to area",
            ],
            optionsMy: [
              "အားကို ဧရိယာဖြင့် စားသည်",
              "အားကို ဧရိယာဖြင့် မြှောက်သည်",
              "ဧရိယာကို အားဖြင့် စားသည်",
              "အားကို ဧရိယာနှင့် ပေါင်းသည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What general principle did Aye Chan realise connected backpack straps, snowshoes, and knives?",
            questionMy:
                "ကျောပိုးအိတ်ကြိုးများ၊ နှင်းဖိနပ်များနှင့် ဓားများကို ဆက်စပ်ပေးသော ယေဘုယျသဘောတရားကို အေးချမ်း မည်သို့ သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "Pressure, not just force, determines how something feels or behaves",
              "All three are made of the same material",
              "Force is irrelevant in all three cases",
              "Area never changes the outcome of any situation",
            ],
            optionsMy: [
              "အားသက်သက်မဟုတ်ဘဲ ဖိအားသည် အရာဝတ္ထုတစ်ခု မည်သို့ ခံစားရသည် သို့မဟုတ် ပြုမူသည်ကို ဆုံးဖြတ်ကြောင်း",
              "သုံးခုစလုံးသည် ပစ္စည်းတူညီဖြင့် ပြုလုပ်ထားကြောင်း",
              "အား သုံးခုစလုံးတွင် လုံးဝ အရေးမကြီးကြောင်း",
              "ဧရိယာသည် အခြေအနေမည်သည့်ရလဒ်ကိုမျှ ပြောင်းလဲမပေးကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w10-d5",
      dayNumber: 5,
      titleEn: "Pressure in Solids Recap Quiz",
      titleMy: "အခဲများရှိ ဖိအား ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Pressure equals...",
          questionMy: "ဖိအားသည်...",
          optionsEn: [
            "Force ÷ Area",
            "Force × Area",
            "Area ÷ Force",
            "Force + Area",
          ],
          optionsMy: [
            "အား ÷ ဧရိယာ",
            "အား × ဧရိယာ",
            "ဧရိယာ ÷ အား",
            "အား + ဧရိယာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A force of 60 N is applied over an area of 3 m². What is the pressure?",
          questionMy:
              "အား 60 N ကို ဧရိယာ 3 m² အပေါ် အသုံးချထားပါသည်။ ဖိအားမှာ အဘယ်နည်း။",
          optionsEn: ["20 Pa", "180 Pa", "63 Pa", "0.05 Pa"],
          optionsMy: ["20 Pa", "180 Pa", "63 Pa", "0.05 Pa"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A sharp knife cuts easily mainly because...",
          questionMy: "ချွန်ထက်သောဓားသည် လွယ်ကူစွာ ဖြတ်ရသည်မှာ အဓိကအားဖြင့်...",
          optionsEn: [
            "Its small edge area concentrates force into high pressure",
            "It applies more force than a blunt knife",
            "It has a larger surface area than a blunt knife",
            "Sharpness has no effect on pressure",
          ],
          optionsMy: [
            "ဧရိယာသေးငယ်သောအစွန်းက အားကို ဖိအားမြင့်မားသို့ စုစည်းပေးသောကြောင့်",
            "ထောင့်ညီဓားထက် ပိုအားများစွာ သုံးသောကြောင့်",
            "ထောင့်ညီဓားထက် မျက်နှာပြင်ဧရိယာ ပိုကြီးသောကြောင့်",
            "ချွန်ထက်မှုသည် ဖိအားအပေါ် သက်ရောက်မှု မရှိချေ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Snowshoes prevent sinking because...",
          questionMy:
              "နှင်းဖိနပ်များသည် နစ်မြုပ်ခြင်းကို ကာကွယ်ပေးနိုင်သည်မှာ...",
          optionsEn: [
            "They spread weight over a larger area, lowering pressure",
            "They reduce a person's weight",
            "They increase the force applied to the snow",
            "They have no scientific effect at all",
          ],
          optionsMy: [
            "ဖိအားလျော့ချစေသည့် ဧရိယာပိုကြီးသောနေရာအပေါ် အလေးချိန်ကို ဖြန့်ကျက်ပေးသောကြောင့်",
            "လူတစ်ဦး၏အလေးချိန်ကို လျှော့ချပေးသောကြောင့်",
            "နှင်းအပေါ် အသုံးချထားသောအားကို တိုးမြှင့်ပေးသောကြောင့်",
            "သိပ္ပံဆိုင်ရာ သက်ရောက်မှု လုံးဝ မရှိချေ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Aye Chan's backpack story, why did wide straps feel more comfortable?",
          questionMy:
              "အေးချမ်း၏ ကျောပိုးအိတ်ဇာတ်လမ်းတွင် ကျယ်ပြန့်သောကြိုးများသည် အဘယ်ကြောင့် ပိုသက်တောင့်သက်သာ ခံစားရခဲ့သနည်း။",
          optionsEn: [
            "They spread the same weight over a larger area, lowering pressure",
            "They made the backpack lighter overall",
            "They were made of a special magical fabric",
            "The books inside became lighter",
          ],
          optionsMy: [
            "ဖိအားလျော့ချစေသည့် ဧရိယာပိုကြီးသောနေရာအပေါ် အလေးချိန်တူညီစွာကို ဖြန့်ကျက်ပေးသောကြောင့်",
            "ကျောပိုးအိတ်ကို စုစုပေါင်း ပိုပေါ့စေခဲ့ကြောင့်",
            "အထူးမှော်ပစ္စည်းဖြင့် ပြုလုပ်ထားခဲ့ကြောင့်",
            "အထဲရှိစာအုပ်များ ပိုပေါ့သွားခဲ့ကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2ScienceWeek11 = CourseWeekDef(
  id: "course-secondary2-science-w11",
  weekNumber: 11,
  titleEn: "Pressure in Liquids and Gases",
  titleMy: "အရည်နှင့် ဓာတ်ငွေ့များရှိ ဖိအား",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-science-w11-d1",
      dayNumber: 1,
      titleEn: "Depth, Altitude and Atmospheric Pressure",
      titleMy: "အနက်၊ အမြင့်နှင့် လေထုဖိအား",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "How does water pressure change as you swim deeper below the surface?",
          questionMy:
              "မျက်နှာပြင်အောက်သို့ ပိုနက်စွာ ရေကူးသွားသည်နှင့်အမျှ ရေဖိအား မည်သို့ ပြောင်းလဲသနည်း။",
          optionsEn: [
            "It increases, as more water above pushes down with greater weight",
            "It decreases, because there is less water around you",
            "It stays exactly the same at every depth",
            "It becomes negative below a certain depth",
          ],
          optionsMy: [
            "အထက်ရှိ ရေ ပိုများခြင်းက ပိုလေးလံသော အလေးချိန်ဖြင့် တွန်းချသောကြောင့် တိုးလာသည်",
            "သင့်ပတ်ဝန်းကျင်တွင် ရေ ပိုနည်းသောကြောင့် ကျဆင်းသည်",
            "အနက်အသီးသီးတွင် အတိအကျ မပြောင်းလဲဘဲ ရှိနေသည်",
            "အနက်တစ်ခုအောက်တွင် အနှုတ်ဖြစ်သွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about the weight of all the water sitting above you at any given depth.",
            "The deeper you go, the more water is stacked above you, adding weight and increasing pressure.",
          ],
          hintsMy: [
            "အနက်တစ်ခုတွင် သင့်အပေါ်ရှိ ရေအားလုံး၏ အလေးချိန်ကို စဉ်းစားပါ။",
            "ပိုနက်လေ သင့်အပေါ်တွင် ရေ ပိုစုပုံလေဖြစ်သဖြင့် အလေးချိန်ထပ်ဆောင်း၍ ဖိအား တိုးလာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "How does atmospheric pressure change as altitude increases (going up a mountain)?",
          questionMy:
              "အမြင့် တက်လာသည်နှင့်အမျှ (တောင်ပေါ်တက်ခြင်း) လေထုဖိအား မည်သို့ ပြောင်းလဲသနည်း။",
          optionsEn: [
            "It decreases, since there is less air above pushing down",
            "It increases, since there is more air above pushing down",
            "It stays exactly the same at every altitude",
            "It has no relationship with altitude at all",
          ],
          optionsMy: [
            "အထက်တွင် တွန်းချနေသော လေ ပိုနည်းလာသောကြောင့် ကျဆင်းသည်",
            "အထက်တွင် တွန်းချနေသော လေ ပိုများလာသောကြောင့် တိုးလာသည်",
            "အမြင့်အသီးသီးတွင် အတိအကျ မပြောင်းလဲဘဲ ရှိနေသည်",
            "အမြင့်နှင့် ဆက်စပ်မှု လုံးဝ မရှိချေ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the opposite of water pressure and depth: as you go up, less atmosphere presses down on you.",
            "That is why mountaineers at very high altitudes often need supplemental oxygen — lower atmospheric pressure means less air is pushed into their lungs.",
          ],
          hintsMy: [
            "ဤသည်မှာ ရေဖိအားနှင့် အနက်နှင့် ဆန့်ကျင်ဖက်ဖြစ်သည် — အပေါ်သို့ တက်လေ လေထုက သင့်အပေါ် တွန်းချမှု ပိုနည်းလေဖြစ်သည်။",
            "ထို့ကြောင့် အလွန်မြင့်မားသော တောင်ကုန်းများတွင် တောင်တက်သမားများသည် အောက်ဆီဂျင်ထပ်ဆောင်း လိုအပ်လေ့ရှိသည် — လေထုဖိအားနည်းခြင်းက ၎င်းတို့၏အဆုတ်ထဲသို့ ဝင်ရောက်သော လေ ပိုနည်းစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "How does a hydraulic system use liquid pressure to multiply force?",
          questionMy:
              "ဟိုက်ဒရောလစ်စနစ်တစ်ခုသည် အားတိုးမြှင့်ရန် အရည်ဖိအားကို မည်သို့ အသုံးပြုသနည်း။",
          optionsEn: [
            "Pressure applied at a small piston is transmitted equally through the liquid to a larger piston, producing greater force",
            "Hydraulic systems only work with air, never with liquid",
            "A hydraulic system reduces force no matter how it is built",
            "Liquids cannot transmit pressure at all, unlike gases",
          ],
          optionsMy: [
            "ပစ္စတွန်ငယ်တစ်ခုတွင် အသုံးချထားသောဖိအားကို အရည်ကနေတဆင့် ပစ္စတွန်ကြီးတစ်ခုသို့ တူညီစွာ ပေးပို့ကာ ပိုကြီးသောအားကို ထုတ်လုပ်ပေးသည်",
            "ဟိုက်ဒရောလစ်စနစ်များသည် လေဖြင့်သာ အလုပ်လုပ်ပြီး အရည်ဖြင့် လုံးဝ မလုပ်ချေ",
            "ဟိုက်ဒရောလစ်စနစ်တစ်ခုသည် မည်သို့ တည်ဆောက်ထားသည်ကို မထောက်ဘဲ အားကို လျှော့ချပေးသည်",
            "အရည်များသည် ဓာတ်ငွေ့များနှင့် မတူဘဲ ဖိအားကို လုံးဝ မပေးပို့နိုင်ချေ",
          ],
          correctIndex: 0,
          hintsEn: [
            "In an enclosed liquid, pressure applied at one point spreads equally throughout the liquid (Pascal's Principle).",
            "A small force on a small piston creates the same pressure everywhere, but that pressure acting on a larger piston area produces a much larger force.",
          ],
          hintsMy: [
            "ပိတ်ထားသော အရည်တစ်ခုတွင် နေရာတစ်ခုတွင် အသုံးချထားသော ဖိအားသည် အရည်တစ်ခုလုံးအတွင်း တူညီစွာ ဖြန့်ကျက်သွားသည် (Pascal ၏ နိယာမ)။",
            "ပစ္စတွန်ငယ်တစ်ခုပေါ်ရှိ အားငယ်တစ်ခုသည် နေရာတိုင်းတွင် တူညီသောဖိအားကို ဖန်တီးသော်လည်း ထိုဖိအားသည် ပစ္စတွန်ကြီးဧရိယာအပေါ် သက်ရောက်သောအခါ ပိုကြီးသောအားကို ထုတ်လုပ်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A diver notices their ears hurt as they swim deeper. What is the best scientific explanation?",
          questionMy:
              "ရေငုပ်သမားတစ်ဦးသည် ပိုနက်စွာ ရေကူးသွားသောအခါ သူ၏နားများ နာကျင်လာသည်ကို သတိပြုမိသည်။ အကောင်းဆုံး သိပ္ပံရှင်းလင်းချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Increasing water pressure at greater depth pushes on the ears more strongly",
            "The water gets colder the deeper the diver goes",
            "Sound travels faster underwater and hurts the ears",
            "Ear pain underwater has no connection to pressure at all",
          ],
          optionsMy: [
            "အနက်ပိုသောနေရာတွင် တိုးလာသော ရေဖိအားသည် နားများအပေါ် ပိုပြင်းထန်စွာ ဖိအားပေးသောကြောင့်",
            "ရေငုပ်သမား ပိုနက်စွာ ရောက်လေ ရေ ပိုအေးလေဖြစ်ကြောင့်",
            "အသံသည် ရေအောက်တွင် ပိုမြန်စွာ ခရီးသွားပြီး နားများကို နာကျင်စေကြောင့်",
            "ရေအောက်ရှိနားနာကျင်မှုသည် ဖိအားနှင့် လုံးဝ ဆက်စပ်မှု မရှိချေ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This connects directly to the first question — pressure increases with depth.",
            "The eardrum, a sensitive flexible membrane, feels this increasing pressure directly, which is why divers must equalise pressure in their ears as they descend.",
          ],
          hintsMy: [
            "ဤသည်မှာ ပထမမေးခွန်းနှင့် တိုက်ရိုက်ဆက်စပ်နေသည် — ဖိအားသည် အနက်နှင့်အတူ တိုးလာသည်။",
            "အာရုံခံနိုင်စွမ်းရှိသော နူးညံ့သော အမြှေးပါးဖြစ်သော နားပန်းသည် ဤတိုးလာသောဖိအားကို တိုက်ရိုက်ခံစားရသဖြင့် ရေငုပ်သမားများသည် နက်စွာဆင်းသည်နှင့်အမျှ ၎င်းတို့၏နားများတွင် ဖိအားကို ညီမျှအောင်ပြုလုပ်ရမည်ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w11-d2",
      dayNumber: 2,
      titleEn: "Liquid and Gas Pressure Vocabulary",
      titleMy: "အရည်နှင့် ဓာတ်ငွေ့ ဖိအား ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2s-w11-dm1",
          termEn: "Atmospheric Pressure",
          termMy: "လေထုဖိအား (Atmospheric Pressure)",
          matchEn:
              "The pressure exerted by the weight of the air above a point",
          matchMy: "အမှတ်တစ်ခုအပေါ်ရှိ လေ၏ အလေးချိန်က ဖြစ်ပေါ်စေသော ဖိအား",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2s-w11-dm2",
          termEn: "Water Pressure",
          termMy: "ရေဖိအား (Water Pressure)",
          matchEn: "The pressure exerted by the weight of water above a point",
          matchMy: "အမှတ်တစ်ခုအပေါ်ရှိ ရေ၏ အလေးချိန်က ဖြစ်ပေါ်စေသော ဖိအား",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2s-w11-dm3",
          termEn: "Hydraulics",
          termMy: "ဟိုက်ဒရောလစ် (Hydraulics)",
          matchEn: "Using liquid pressure to transmit and multiply force",
          matchMy:
              "အားကို ပေးပို့ပြီး တိုးမြှင့်ရန် အရည်ဖိအားကို အသုံးပြုခြင်း",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2s-w11-dm4",
          termEn: "Piston",
          termMy: "ပစ္စတွန် (Piston)",
          matchEn: "A moving part in a hydraulic system that pushes on liquid",
          matchMy:
              "ဟိုက်ဒရောလစ်စနစ်တစ်ခုအတွင်း အရည်ကို တွန်းပေးသော ရွေ့လျားနေသောအစိတ်အပိုင်း",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2s-w11-dm5",
          termEn: "Depth",
          termMy: "အနက် (Depth)",
          matchEn: "The distance below a liquid's surface",
          matchMy: "အရည်တစ်ခု၏ မျက်နှာပြင်အောက် အကွာအဝေး",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2s-w11-dm6",
          termEn: "Altitude",
          termMy: "အမြင့် (Altitude)",
          matchEn: "Height above sea level",
          matchMy: "ပင်လယ်မျက်နှာပြင်အထက် အမြင့်",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w11-d3",
      dayNumber: 3,
      titleEn: "Sorting Pressure Increases or Decreases",
      titleMy: "ဖိအားတိုးလာခြင်း သို့မဟုတ် ကျဆင်းခြင်းကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Pressure Increases", "Pressure Decreases"],
        bucketsMy: ["ဖိအား တိုးလာသည်", "ဖိအား ကျဆင်းသည်"],
        items: [
          SortingItem(
            id: "s2s-w11-sort1",
            labelEn: "Swimming deeper below the surface",
            labelMy: "မျက်နှာပြင်အောက်သို့ ပိုနက်စွာ ရေကူးခြင်း",
            correctBucketEn: "Pressure Increases",
            correctBucketMy: "ဖိအား တိုးလာသည်",
          ),
          SortingItem(
            id: "s2s-w11-sort2",
            labelEn: "Climbing higher up a mountain",
            labelMy: "တောင်ပေါ် ပိုမြင့်စွာ တက်ခြင်း",
            correctBucketEn: "Pressure Decreases",
            correctBucketMy: "ဖိအား ကျဆင်းသည်",
          ),
          SortingItem(
            id: "s2s-w11-sort3",
            labelEn: "A diver descending to the ocean floor",
            labelMy: "ရေငုပ်သမားတစ်ဦး သမုဒ္ဒရာကြမ်းပြင်သို့ ဆင်းသက်ခြင်း",
            correctBucketEn: "Pressure Increases",
            correctBucketMy: "ဖိအား တိုးလာသည်",
          ),
          SortingItem(
            id: "s2s-w11-sort4",
            labelEn: "A hiker climbing to a mountain peak",
            labelMy: "ခရီးသွားတစ်ဦး တောင်ထိပ်သို့ တက်ခြင်း",
            correctBucketEn: "Pressure Decreases",
            correctBucketMy: "ဖိအား ကျဆင်းသည်",
          ),
          SortingItem(
            id: "s2s-w11-sort5",
            labelEn: "More water sitting above a given point",
            labelMy: "အမှတ်တစ်ခုအပေါ် ရေ ပိုများစွာ တည်ရှိခြင်း",
            correctBucketEn: "Pressure Increases",
            correctBucketMy: "ဖိအား တိုးလာသည်",
          ),
          SortingItem(
            id: "s2s-w11-sort6",
            labelEn: "Less air sitting above a given point",
            labelMy: "အမှတ်တစ်ခုအပေါ် လေ ပိုနည်းစွာ တည်ရှိခြင်း",
            correctBucketEn: "Pressure Decreases",
            correctBucketMy: "ဖိအား ကျဆင်းသည်",
          ),
          SortingItem(
            id: "s2s-w11-sort7",
            labelEn: "A submarine sinking to a deeper level",
            labelMy: "ရေငုပ်သင်္ဘောတစ်စီး ပိုနက်သောအဆင့်သို့ နစ်မြုပ်ခြင်း",
            correctBucketEn: "Pressure Increases",
            correctBucketMy: "ဖိအား တိုးလာသည်",
          ),
          SortingItem(
            id: "s2s-w11-sort8",
            labelEn: "An airplane climbing to a higher altitude",
            labelMy: "လေယာဉ်တစ်စီး ပိုမြင့်သောအမြင့်သို့ တက်ခြင်း",
            correctBucketEn: "Pressure Decreases",
            correctBucketMy: "ဖိအား ကျဆင်းသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w11-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Airplane Ears",
      titleMy: "စာဖတ်ခြင်း — နေချည်၏ လေယာဉ်ပေါ်ရှိ နားများ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Airplane Ears",
        titleMy: "နေချည်၏ လေယာဉ်ပေါ်ရှိ နားများ",
        passageEn:
            "During takeoff, Nay Chi felt her ears pop uncomfortably as the airplane climbed rapidly to cruising altitude. She remembered her science lesson on atmospheric pressure — as the plane climbed higher, the air pressure outside dropped because there was less atmosphere above pressing down. Inside her ears, however, the air pressure hadn't adjusted as quickly, creating an imbalance that pushed her eardrums outward, which felt uncomfortable. Her mother told her to swallow and yawn, which helped equalise the pressure between her middle ear and the cabin. Nay Chi thought about how this connected to her diving trip last summer, where the opposite problem occurred — swimming deeper increased water pressure on her ears from the outside, requiring her to hold her nose and blow gently to equalise pressure the other way. Both experiences, she realised, were really the same underlying physics: pressure changes with altitude and depth, and the body needs to adjust to keep up with those changes.",
        passageMy:
            "လေယာဉ်ပျံတက်စဉ် လေယာဉ်သည် ခရီးဆက်အမြင့်သို့ လျင်မြန်စွာ တက်လာသောအခါ နေချည်သည် သူမ၏နားများ မသက်သောင့်မသက်သာစွာ ပေါက်ကွဲသည်ကို ခံစားခဲ့ရသည်။ သူမသည် လေထုဖိအားအကြောင်း သူမ၏ သိပ္ပံသင်ခန်းစာကို သတိရခဲ့သည် — လေယာဉ် ပိုမြင့်စွာ တက်လေ အထက်တွင် တွန်းချနေသော လေထု ပိုနည်းလာသောကြောင့် အပြင်ဘက်ရှိ လေထုဖိအား ကျဆင်းလာသည်။ သို့သော် သူမ၏နားများအတွင်းရှိ လေထုဖိအားသည် ထိုသို့လျင်မြန်စွာ မချိန်ညှိနိုင်သေးသောကြောင့် သူမ၏နားပန်းများကို အပြင်ဘက်သို့ တွန်းလွှတ်သော မမျှတမှုတစ်ခု ဖြစ်ပေါ်စေခဲ့ပြီး မသက်သောင့်မသက်သာ ခံစားရခဲ့သည်။ သူမ၏မိခင်က ပါးစပ်ချွန်ခြင်းနှင့် မှိန်းခြင်းကို ပြောခဲ့ပြီး ၎င်းသည် သူမ၏အလယ်နားနှင့် လေယာဉ်ခန်းအတွင်းရှိ ဖိအားကို ညီမျှအောင် ကူညီပေးခဲ့သည်။ နေချည်သည် ၎င်းသည် ပြီးခဲ့သော နွေရာသီက သူမ၏ ရေငုပ်ခရီးနှင့် မည်သို့ ဆက်စပ်နေသည်ကို တွေးတောခဲ့သည် — ထိုနေရာတွင် ဆန့်ကျင်ဖက်ပြဿနာ ဖြစ်ပွားခဲ့သည် — ပိုနက်စွာ ရေကူးခြင်းသည် သူမ၏နားများအပေါ် အပြင်ဘက်မှ ရေဖိအားကို တိုးမြှင့်ခဲ့ပြီး ၎င်းသည် သူမအား နှာခေါင်းကို ဖိထားပြီး ညင်သာစွာ မှုတ်ကာ ဖိအားကို အခြားနည်းလမ်းတစ်ခုဖြင့် ညီမျှအောင် လိုအပ်ခဲ့သည်။ ဤအတွေ့အကြုံနှစ်ခုစလုံးသည် အမှန်တကယ် တူညီသောရူပဗေဒအခြေခံဖြစ်ကြောင်း သူမ သဘောပေါက်ခဲ့သည် — ဖိအားသည် အမြင့်နှင့် အနက်နှင့်အတူ ပြောင်းလဲပြီး ခန္ဓာကိုယ်သည် ထိုပြောင်းလဲမှုများနှင့် မကျန်ကျန်ရန် ချိန်ညှိရန် လိုအပ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Why did Nay Chi's ears pop during the airplane's climb?",
            questionMy:
                "လေယာဉ်တက်စဉ် နေချည်၏နားများ အဘယ်ကြောင့် ပေါက်ကွဲခဲ့သနည်း။",
            optionsEn: [
              "Outside air pressure dropped faster than the pressure inside her ears could adjust",
              "The airplane was flying too fast",
              "Her ears were infected",
              "There was no scientific reason at all",
            ],
            optionsMy: [
              "အပြင်ဘက်လေထုဖိအားသည် သူမ၏နားများအတွင်းရှိ ဖိအား ချိန်ညှိနိုင်သည်ထက် ပိုမြန်စွာ ကျဆင်းခဲ့ကြောင့်",
              "လေယာဉ်သည် လွန်စွာမြန်ဆန်စွာ ပျံသန်းနေခဲ့ကြောင့်",
              "သူမ၏နားများ ရောဂါကူးစက်ခံခဲ့ရကြောင့်",
              "သိပ္ပံဆိုင်ရာ အကြောင်းရင်း လုံးဝ မရှိချေ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Nay Chi's mother suggest to help equalise the pressure?",
            questionMy:
                "နေချည်၏မိခင်သည် ဖိအားညီမျှအောင် ကူညီရန် အဘယ်အရာ အကြံပြုခဲ့သနည်း။",
            optionsEn: [
              "Swallowing and yawning",
              "Covering her ears with her hands",
              "Breathing very fast",
              "Closing her eyes tightly",
            ],
            optionsMy: [
              "မျိုချခြင်းနှင့် မှိန်းခြင်း",
              "လက်များဖြင့် နားများကို ဖုံးအုပ်ခြင်း",
              "အလွန်မြန်ဆန်စွာ ထွက်သက်ဝင်သက်ရှုခြင်း",
              "မျက်လုံးများကို တင်းကျပ်စွာ မှိတ်ထားခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "During her diving trip, what caused the pressure problem in her ears?",
            questionMy:
                "သူမ၏ ရေငုပ်ခရီးစဉ်တွင် သူမ၏နားများရှိ ဖိအားပြဿနာကို အဘယ်အရာက ဖြစ်စေခဲ့သနည်း။",
            optionsEn: [
              "Increasing water pressure from swimming deeper",
              "Decreasing atmospheric pressure from climbing",
              "A completely unrelated illness",
              "Loud underwater noises",
            ],
            optionsMy: [
              "ပိုနက်စွာ ရေကူးခြင်းမှ တိုးလာသော ရေဖိအား",
              "တက်ခြင်းမှ ကျဆင်းလာသော လေထုဖိအား",
              "လုံးဝ မသက်ဆိုင်သော ရောဂါတစ်ခု",
              "ရေအောက်ရှိ ကျယ်လောင်သောအသံများ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What underlying connection did Nay Chi realise between the airplane and diving experiences?",
            questionMy:
                "လေယာဉ်နှင့် ရေငုပ်အတွေ့အကြုံများကြား ဆက်စပ်နေသော အခြေခံကို နေချည် မည်သို့ သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "Pressure changes with altitude and depth, requiring the body to adjust",
              "The two experiences had no connection at all",
              "Both involved the same amount of pressure change",
              "Only diving involves pressure, not flying",
            ],
            optionsMy: [
              "ဖိအားသည် အမြင့်နှင့် အနက်နှင့်အတူ ပြောင်းလဲပြီး ခန္ဓာကိုယ်ကို ချိန်ညှိရန် လိုအပ်ကြောင်း",
              "အတွေ့အကြုံနှစ်ခုသည် လုံးဝ ဆက်စပ်မှု မရှိကြောင်း",
              "နှစ်ခုစလုံး ဖိအားပြောင်းလဲမှုပမာဏ တူညီကြောင်း",
              "ရေငုပ်ခြင်းတွင်သာ ဖိအားပါဝင်ပြီး လေယာဉ်ပျံခြင်းတွင် မပါဝင်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w11-d5",
      dayNumber: 5,
      titleEn: "Pressure in Liquids and Gases Recap Quiz",
      titleMy: "အရည်နှင့် ဓာတ်ငွေ့များရှိ ဖိအား ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "As you swim deeper below the surface, water pressure...",
          questionMy:
              "မျက်နှာပြင်အောက်သို့ ပိုနက်စွာ ရေကူးသွားသည်နှင့်အမျှ ရေဖိအားသည်...",
          optionsEn: [
            "Increases",
            "Decreases",
            "Stays exactly the same",
            "Becomes negative",
          ],
          optionsMy: [
            "တိုးလာသည်",
            "ကျဆင်းသည်",
            "အတိအကျ မပြောင်းလဲဘဲ ရှိနေသည်",
            "အနှုတ်ဖြစ်သွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "As altitude increases (going up a mountain), atmospheric pressure...",
          questionMy:
              "အမြင့် တက်လာသည်နှင့်အမျှ (တောင်ပေါ်တက်ခြင်း) လေထုဖိအားသည်...",
          optionsEn: [
            "Decreases",
            "Increases",
            "Stays exactly the same",
            "Doubles every metre",
          ],
          optionsMy: [
            "ကျဆင်းသည်",
            "တိုးလာသည်",
            "အတိအကျ မပြောင်းလဲဘဲ ရှိနေသည်",
            "မီတာတိုင်း နှစ်ဆတိုးလာသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In a hydraulic system, pressure applied at a small piston is...",
          questionMy:
              "ဟိုက်ဒရောလစ်စနစ်တစ်ခုတွင် ပစ္စတွန်ငယ်တစ်ခုတွင် အသုံးချထားသော ဖိအားသည်...",
          optionsEn: [
            "Transmitted equally through the liquid to a larger piston",
            "Lost completely before reaching the other end",
            "Only useful for gases, not liquids",
            "Reduced to zero by the piston size",
          ],
          optionsMy: [
            "အရည်ကနေတဆင့် ပစ္စတွန်ကြီးတစ်ခုသို့ တူညီစွာ ပေးပို့ခြင်း ခံရသည်",
            "အခြားအဆုံးသို့ မရောက်မီ လုံးဝ ဆုံးရှုံးသွားသည်",
            "အရည်များအတွက် မဟုတ်ဘဲ ဓာတ်ငွေ့များအတွက်သာ အသုံးဝင်သည်",
            "ပစ္စတွန်အရွယ်အစားက သုညသို့ လျှော့ချသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A diver's ears hurt when swimming deeper because...",
          questionMy:
              "ရေငုပ်သမားတစ်ဦး ပိုနက်စွာ ရေကူးသွားသောအခါ နားများ နာကျင်ရသည်မှာ...",
          optionsEn: [
            "Increasing water pressure pushes on the eardrums",
            "Water gets colder with depth",
            "Sound waves become louder underwater",
            "There is no scientific reason at all",
          ],
          optionsMy: [
            "တိုးလာသော ရေဖိအားသည် နားပန်းများအပေါ် တွန်းအားပေးသောကြောင့်",
            "အနက်နှင့်အမျှ ရေ ပိုအေးလာသောကြောင့်",
            "ရေအောက်တွင် အသံလှိုင်းများ ပိုကျယ်လောင်လာသောကြောင့်",
            "သိပ္ပံဆိုင်ရာ အကြောင်းရင်း လုံးဝ မရှိချေ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's airplane story, why did her ears pop during the climb?",
          questionMy:
              "နေချည်၏ လေယာဉ်ဇာတ်လမ်းတွင် တက်စဉ် သူမ၏နားများ အဘယ်ကြောင့် ပေါက်ကွဲခဲ့သနည်း။",
          optionsEn: [
            "Outside pressure dropped faster than her ears could adjust",
            "The airplane cabin had no air at all",
            "Her ears were permanently damaged",
            "It happened for no reason connected to pressure",
          ],
          optionsMy: [
            "အပြင်ဘက်ဖိအားသည် သူမ၏နားများ ချိန်ညှိနိုင်သည်ထက် ပိုမြန်စွာ ကျဆင်းခဲ့ကြောင့်",
            "လေယာဉ်ခန်းအတွင်း လေ လုံးဝ မရှိခဲ့ကြောင့်",
            "သူမ၏နားများ အမြဲတမ်း ပျက်စီးသွားခဲ့ကြောင့်",
            "ဖိအားနှင့် မသက်ဆိုင်သော အကြောင်းရင်းအားဖြင့် ဖြစ်ပွားခဲ့ကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2ScienceWeek12 = CourseWeekDef(
  id: "course-secondary2-science-w12",
  weekNumber: 12,
  titleEn: "Building a Hydraulic Machine",
  titleMy: "ဟိုက်ဒရောလစ် စက် တည်ဆောက်ခြင်း",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-science-w12-d1",
      dayNumber: 1,
      titleEn: "Transmitting and Multiplying Force",
      titleMy: "အားပေးပို့ခြင်းနှင့် တိုးမြှင့်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In a hydraulic lift, a small piston with an area of 2 cm² has a force of 20 N applied to it. What pressure is created in the liquid?",
          questionMy:
              "ဟိုက်ဒရောလစ်ဓာတ်ကြေးတစ်ခုတွင် ဧရိယာ 2 cm² ရှိသော ပစ္စတွန်ငယ်တစ်ခုအပေါ် အား 20 N ကို အသုံးချထားပါသည်။ အရည်ထဲတွင် မည်သည့်ဖိအား ဖြစ်ပေါ်သနည်း။",
          optionsEn: ["10 N/cm²", "40 N/cm²", "22 N/cm²", "0.1 N/cm²"],
          optionsMy: ["10 N/cm²", "40 N/cm²", "22 N/cm²", "0.1 N/cm²"],
          correctIndex: 0,
          hintsEn: ["Pressure = Force ÷ Area.", "20 ÷ 2 = 10 N/cm²."],
          hintsMy: ["ဖိအား = အား ÷ ဧရိယာ။", "20 ÷ 2 = 10 N/cm² ဖြစ်သည်။"],
        ),
        QuizQuestion(
          questionEn:
              "Using the same 10 N/cm² pressure from the previous question, if the large piston has an area of 20 cm², what force does it produce?",
          questionMy:
              "ယခင်မေးခွန်းမှ ဖိအား 10 N/cm² တူညီစွာအသုံးပြု၍ ပစ္စတွန်ကြီးသည် ဧရိယာ 20 cm² ရှိပါက ၎င်းက မည်သည့်အား ထုတ်လုပ်ပေးမည်နည်း။",
          optionsEn: ["200 N", "20 N", "2 N", "10 N"],
          optionsMy: ["200 N", "20 N", "2 N", "10 N"],
          correctIndex: 0,
          hintsEn: [
            "Force = Pressure × Area, since the pressure is transmitted equally throughout the liquid.",
            "10 × 20 = 200 N — ten times the original 20 N force, because the piston area is ten times larger.",
          ],
          hintsMy: [
            "ဖိအားသည် အရည်တစ်ခုလုံးအတွင်း တူညီစွာ ပေးပို့ခံရသောကြောင့် အား = ဖိအား × ဧရိယာ။",
            "10 × 20 = 200 N ဖြစ်ပြီး — မူလ 20 N အားထက် ဆယ်ဆပိုကြီးသည်၊ အကြောင်းမှာ ပစ္စတွန်ဧရိယာ ဆယ်ဆပိုကြီးသောကြောင့်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why do car mechanics use a hydraulic jack instead of trying to lift a car with just their arms?",
          questionMy:
              "ကားပြင်ဆရာများသည် ကားကို လက်များဖြင့်သာ မော့ရန် ကြိုးစားမည့်အစား ဟိုက်ဒရောလစ်ဂျက်ကို အဘယ်ကြောင့် အသုံးပြုကြသနည်း။",
          optionsEn: [
            "A small piston force is multiplied into a much larger force at a larger piston, easily lifting heavy loads",
            "Hydraulic jacks make the car lighter before lifting it",
            "Hydraulic jacks work by removing gravity from the car",
            "Hydraulic jacks have no advantage over lifting by hand",
          ],
          optionsMy: [
            "ပစ္စတွန်ငယ်၏အားကို ပစ္စတွန်ကြီးတွင် များစွာပိုကြီးသောအားအဖြစ် တိုးမြှင့်ပေးသဖြင့် လေးလံသောဝန်ကို လွယ်ကူစွာ မော့နိုင်ကြောင့်",
            "ဟိုက်ဒရောလစ်ဂျက်များသည် ကားကို မော့မတိုင်မီ ပိုပေါ့စေကြောင့်",
            "ဟိုက်ဒရောလစ်ဂျက်များသည် ကားမှ ဆွဲငင်အားကို ဖယ်ရှားခြင်းဖြင့် အလုပ်လုပ်ကြောင့်",
            "ဟိုက်ဒရောလစ်ဂျက်များသည် လက်ဖြင့်မော့ခြင်းထက် မည်သည့်အားသာချက်မျှ မရှိကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Remember the force-multiplication principle from the piston calculations above.",
            "A mechanic can apply a small, manageable force to a small piston, and the hydraulic system transmits and multiplies it into enough force to lift an entire car.",
          ],
          hintsMy: [
            "အထက်ပစ္စတွန်တွက်ချက်မှုများမှ အားတိုးမြှင့်ခြင်း သဘောတရားကို သတိရပါ။",
            "ကားပြင်ဆရာတစ်ဦးသည် ကိုင်တွယ်နိုင်သောအားငယ်တစ်ခုကို ပစ္စတွန်ငယ်တစ်ခုအပေါ် အသုံးချနိုင်ပြီး ဟိုက်ဒရောလစ်စနစ်သည် ၎င်းကို ကားတစ်စီးလုံးမော့ရန် လုံလောက်သောအားအဖြစ် ပေးပို့ကာ တိုးမြှင့်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A student designs a hydraulic model where the small piston has an area of 1 cm² and the large piston has an area of 50 cm². If they apply 5 N to the small piston, what force is produced at the large piston?",
          questionMy:
              "ကျောင်းသားတစ်ဦးသည် ပစ္စတွန်ငယ်ဧရိယာ 1 cm² နှင့် ပစ္စတွန်ကြီးဧရိယာ 50 cm² ရှိသော ဟိုက်ဒရောလစ်မော်ဒယ်တစ်ခု ဒီဇိုင်းဆွဲသည်။ ပစ္စတွန်ငယ်အပေါ် 5 N အသုံးချပါက ပစ္စတွန်ကြီးတွင် မည်သည့်အား ထုတ်လုပ်ပေးမည်နည်း။",
          optionsEn: ["250 N", "50 N", "55 N", "5 N"],
          optionsMy: ["250 N", "50 N", "55 N", "5 N"],
          correctIndex: 0,
          hintsEn: [
            "First find the pressure: Pressure = Force ÷ Area = 5 ÷ 1 = 5 N/cm².",
            "Then find the force at the large piston: Force = Pressure × Area = 5 × 50 = 250 N.",
          ],
          hintsMy: [
            "ဦးစွာ ဖိအားကို ရှာပါ — ဖိအား = အား ÷ ဧရိယာ = 5 ÷ 1 = 5 N/cm²။",
            "ထို့နောက် ပစ္စတွန်ကြီးတွင် အားကို ရှာပါ — အား = ဖိအား × ဧရိယာ = 5 × 50 = 250 N ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w12-d2",
      dayNumber: 2,
      titleEn: "Hydraulic Machine Vocabulary",
      titleMy: "ဟိုက်ဒရောလစ်စက် ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2s-w12-dm1",
          termEn: "Force Multiplication",
          termMy: "အားတိုးမြှင့်ခြင်း (Force Multiplication)",
          matchEn:
              "Turning a small applied force into a much larger output force",
          matchMy:
              "အသုံးချထားသော အားငယ်တစ်ခုကို ပိုကြီးသော ထွက်လာအားအဖြစ် ပြောင်းလဲပေးခြင်း",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s2s-w12-dm2",
          termEn: "Small Piston",
          termMy: "ပစ္စတွန်ငယ် (Small Piston)",
          matchEn: "The piston where the initial, smaller force is applied",
          matchMy: "ကနဦးအားငယ်ကို အသုံးချသည့် ပစ္စတွန်",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s2s-w12-dm3",
          termEn: "Large Piston",
          termMy: "ပစ္စတွန်ကြီး (Large Piston)",
          matchEn:
              "The larger piston where the multiplied, greater force is produced",
          matchMy: "တိုးမြှင့်ထားသော အားပိုကြီးကို ထုတ်လုပ်ပေးသော ပစ္စတွန်ကြီး",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s2s-w12-dm4",
          termEn: "Hydraulic Jack",
          termMy: "ဟိုက်ဒရောလစ်ဂျက် (Hydraulic Jack)",
          matchEn: "A hydraulic device used to lift heavy loads like cars",
          matchMy:
              "ကားများကဲ့သို့ လေးလံသောဝန်များကို မော့ရန် အသုံးပြုသော ဟိုက်ဒရောလစ်ကိရိယာ",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s2s-w12-dm5",
          termEn: "Enclosed Liquid",
          termMy: "ပိတ်ထားသောအရည် (Enclosed Liquid)",
          matchEn:
              "Liquid sealed inside a system that transmits pressure equally",
          matchMy:
              "ဖိအားကို တူညီစွာ ပေးပို့ပေးသော စနစ်တစ်ခုအတွင်း ပိတ်ထားသောအရည်",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s2s-w12-dm6",
          termEn: "Engineering Design",
          termMy: "အင်ဂျင်နီယာဒီဇိုင်း (Engineering Design)",
          matchEn:
              "Planning and building a device to solve a practical problem",
          matchMy:
              "လက်တွေ့ပြဿနာတစ်ခုကို ဖြေရှင်းရန် ကိရိယာတစ်ခုကို စီစဉ်ပြီး တည်ဆောက်ခြင်း",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-science-w12-d3",
      dayNumber: 3,
      titleEn: "Sorting Small Piston or Large Piston Roles",
      titleMy:
          "ပစ္စတွန်ငယ် သို့မဟုတ် ပစ္စတွန်ကြီး၏ အခန်းကဏ္ဍများကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Small Piston Role", "Large Piston Role"],
        bucketsMy: ["ပစ္စတွန်ငယ်၏ အခန်းကဏ္ဍ", "ပစ္စတွန်ကြီး၏ အခန်းကဏ္ဍ"],
        items: [
          SortingItem(
            id: "s2s-w12-sort1",
            labelEn: "Receives the initial applied force",
            labelMy: "ကနဦး အသုံးချထားသောအားကို ရရှိသည်",
            correctBucketEn: "Small Piston Role",
            correctBucketMy: "ပစ္စတွန်ငယ်၏ အခန်းကဏ္ဍ",
          ),
          SortingItem(
            id: "s2s-w12-sort2",
            labelEn: "Produces the multiplied, larger force",
            labelMy: "တိုးမြှင့်ထားသော အားပိုကြီးကို ထုတ်လုပ်ပေးသည်",
            correctBucketEn: "Large Piston Role",
            correctBucketMy: "ပစ္စတွန်ကြီး၏ အခန်းကဏ္ဍ",
          ),
          SortingItem(
            id: "s2s-w12-sort3",
            labelEn: "Has a smaller surface area",
            labelMy: "မျက်နှာပြင်ဧရိယာ သေးငယ်သည်",
            correctBucketEn: "Small Piston Role",
            correctBucketMy: "ပစ္စတွန်ငယ်၏ အခန်းကဏ္ဍ",
          ),
          SortingItem(
            id: "s2s-w12-sort4",
            labelEn: "Has a larger surface area",
            labelMy: "မျက်နှာပြင်ဧရိယာ ကြီးမားသည်",
            correctBucketEn: "Large Piston Role",
            correctBucketMy: "ပစ္စတွန်ကြီး၏ အခန်းကဏ္ဍ",
          ),
          SortingItem(
            id: "s2s-w12-sort5",
            labelEn: "Where a mechanic pushes with their own hand or foot",
            labelMy:
                "ကားပြင်ဆရာတစ်ဦးသည် သူ၏လက် သို့မဟုတ် ခြေဖြင့် တွန်းသည့်နေရာ",
            correctBucketEn: "Small Piston Role",
            correctBucketMy: "ပစ္စတွန်ငယ်၏ အခန်းကဏ္ဍ",
          ),
          SortingItem(
            id: "s2s-w12-sort6",
            labelEn: "Where the car actually gets lifted",
            labelMy: "ကားသည် အမှန်တကယ် မော့တင်ခံရသည့်နေရာ",
            correctBucketEn: "Large Piston Role",
            correctBucketMy: "ပစ္စတွန်ကြီး၏ အခန်းကဏ္ဍ",
          ),
          SortingItem(
            id: "s2s-w12-sort7",
            labelEn:
                "Creates the pressure that is transmitted through the liquid",
            labelMy: "အရည်ကနေတဆင့် ပေးပို့ခံရသော ဖိအားကို ဖန်တီးသည်",
            correctBucketEn: "Small Piston Role",
            correctBucketMy: "ပစ္စတွန်ငယ်၏ အခန်းကဏ္ဍ",
          ),
          SortingItem(
            id: "s2s-w12-sort8",
            labelEn: "Converts the same pressure into a much bigger force",
            labelMy: "ဖိအားတူညီကို ပိုကြီးသောအားအဖြစ် ပြောင်းလဲပေးသည်",
            correctBucketEn: "Large Piston Role",
            correctBucketMy: "ပစ္စတွန်ကြီး၏ အခန်းကဏ္ဍ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w12-d4",
      dayNumber: 4,
      titleEn: "Reading: Htet Aung's Model Hydraulic Arm",
      titleMy: "စာဖတ်ခြင်း — ထက်အောင်၏ ဟိုက်ဒရောလစ်လက်မော်ဒယ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Htet Aung's Model Hydraulic Arm",
        titleMy: "ထက်အောင်၏ ဟိုက်ဒရောလစ်လက်မော်ဒယ်",
        passageEn:
            "For the term's capstone project, Htet Aung built a small model hydraulic arm using two syringes connected by a thin, water-filled tube. The first syringe had a narrow plunger with a small area, and the second had a much wider plunger with a larger area. When he pushed gently on the narrow syringe's plunger, the water pressure travelled through the tube and pushed the wide syringe's plunger outward with surprisingly more force, lifting a small toy block his finger alone could barely move. Htet Aung calculated that his narrow plunger had an area of 0.5 cm², and applying a force of 4 N created a pressure of 8 N/cm² in the water. His wide plunger had an area of 4 cm², so this same pressure produced a force of 8 × 4 = 32 N — eight times more force than he had originally applied. His teacher praised the design, explaining that this exact principle, scaled up with stronger materials, is what allows real hydraulic jacks to lift entire cars with just one person's effort.",
        passageMy:
            "ဤသင်ခန်းစာ၏ ထိပ်တန်းပရောဂျက်အတွက် ထက်အောင်သည် ရေဖြင့်ပြည့်နေသော ပါးလွှာသောပြွန်ဖြင့် ဆက်ထားသော ဆေးထိုးအိုးနှစ်ခုအသုံးပြု၍ ဟိုက်ဒရောလစ်လက်မော်ဒယ်ငယ်တစ်ခု တည်ဆောက်ခဲ့သည်။ ပထမဆေးထိုးအိုးတွင် ဧရိယာသေးငယ်သော ကျဉ်းသောလှိမ့်ချောင်း ရှိပြီး ဒုတိယတွင် ဧရိယာကြီးမားသော ပိုကျယ်သောလှိမ့်ချောင်း ရှိသည်။ သူသည် ကျဉ်းသောဆေးထိုးအိုး၏ လှိမ့်ချောင်းကို ညင်သာစွာ တွန်းလိုက်သောအခါ ရေဖိအားသည် ပြွန်ကနေတဆင့် ခရီးသွားပြီး ကျယ်သောဆေးထိုးအိုး၏ လှိမ့်ချောင်းကို အံ့သြဖွယ် အားပိုများစွာ အပြင်ဘက်သို့ တွန်းလွှတ်ခဲ့သည် — သူ၏လက်ချောင်းတစ်ချောင်းတည်းက မလှုပ်ရှားနိုင်လောက်သော ကစားစရာသုံးတုံးငယ်ကို မော့တင်ပေးခဲ့သည်။ ထက်အောင်သည် သူ၏ကျဉ်းသောလှိမ့်ချောင်းသည် ဧရိယာ 0.5 cm² ရှိပြီး အား 4 N ကို အသုံးချခြင်းက ရေထဲတွင် ဖိအား 8 N/cm² ဖန်တီးပေးကြောင်း တွက်ချက်ခဲ့သည်။ သူ၏ ကျယ်သောလှိမ့်ချောင်းသည် ဧရိယာ 4 cm² ရှိသောကြောင့် ဤဖိအားတူညီသည် အား 8 × 4 = 32 N ထုတ်လုပ်ပေးခဲ့သည် — သူ မူလအသုံးချခဲ့သောအားထက် ရှစ်ဆပိုများသည်။ သူ၏ဆရာက ဤဒီဇိုင်းကို ချီးမွမ်းခဲ့ပြီး ဤသဘောတရားတိကျစွာကို ပိုသန်မာသောပစ္စည်းများဖြင့် ချဲ့ထွင်ပါက လူတစ်ဦး၏ ကြိုးစားအားထုတ်မှုသာဖြင့် အမှန်တကယ် ဟိုက်ဒရောလစ်ဂျက်များသည် ကားတစ်စီးလုံးကို မော့နိုင်စေကြောင်း ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What was the pressure created in the narrow plunger?",
            questionMy:
                "ကျဉ်းသောလှိမ့်ချောင်းတွင် ဖန်တီးထားသော ဖိအားမှာ အဘယ်နည်း။",
            optionsEn: ["8 N/cm²", "4 N/cm²", "32 N/cm²", "0.5 N/cm²"],
            optionsMy: ["8 N/cm²", "4 N/cm²", "32 N/cm²", "0.5 N/cm²"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What force did the wide plunger produce?",
            questionMy:
                "ကျယ်သောလှိမ့်ချောင်းသည် မည်သည့်အား ထုတ်လုပ်ပေးခဲ့သနည်း။",
            optionsEn: ["32 N", "8 N", "4 N", "0.5 N"],
            optionsMy: ["32 N", "8 N", "4 N", "0.5 N"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "How many times more force did the wide plunger produce compared to the original applied force?",
            questionMy:
                "ကျယ်သောလှိမ့်ချောင်းသည် မူလအသုံးချထားသောအားထက် မည်မျှဆ ပိုများသောအားကို ထုတ်လုပ်ပေးခဲ့သနည်း။",
            optionsEn: [
              "Eight times more",
              "Two times more",
              "Equal, no multiplication",
              "Half as much",
            ],
            optionsMy: [
              "ရှစ်ဆ ပိုများသည်",
              "နှစ်ဆ ပိုများသည်",
              "တူညီသည် — တိုးမြှင့်မှု မရှိချေ",
              "ထက်ဝက်သာ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to the teacher, how does this small model relate to real hydraulic jacks?",
            questionMy:
                "ဆရာ၏အဆိုအရ ဤမော်ဒယ်ငယ်သည် အမှန်တကယ် ဟိုက်ဒရောလစ်ဂျက်များနှင့် မည်သို့ ဆက်စပ်နေသနည်း။",
            optionsEn: [
              "The same principle, scaled up with stronger materials, allows real jacks to lift cars",
              "There is no connection between the model and real jacks",
              "Real jacks use a completely different physics principle",
              "The model was purely decorative, with no scientific value",
            ],
            optionsMy: [
              "ပိုသန်မာသောပစ္စည်းများဖြင့် ချဲ့ထွင်ထားသော သဘောတရားတူညီသည် အမှန်တကယ်ဂျက်များကို ကားများ မော့နိုင်စေကြောင့်",
              "မော်ဒယ်နှင့် အမှန်တကယ်ဂျက်များကြား ဆက်စပ်မှု လုံးဝ မရှိကြောင့်",
              "အမှန်တကယ်ဂျက်များသည် လုံးဝ မတူညီသော ရူပဗေဒသဘောတရားကို အသုံးပြုကြောင့်",
              "မော်ဒယ်သည် အလှတန်ဆာအတွက်သာ ဖြစ်ပြီး သိပ္ပံဆိုင်ရာတန်ဖိုး လုံးဝ မရှိကြောင့်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-science-w12-d5",
      dayNumber: 5,
      titleEn: "Term 3 Final Recap Quiz",
      titleMy: "Term 3 နောက်ဆုံး ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Density is calculated as...",
          questionMy: "သိပ်သည်းဆကို မည်သို့ တွက်ချက်သနည်း...",
          optionsEn: [
            "Mass ÷ Volume",
            "Mass × Volume",
            "Volume ÷ Mass",
            "Mass + Volume",
          ],
          optionsMy: [
            "ဒြပ်ထု ÷ ကျယ်ဝန်း",
            "ဒြပ်ထု × ကျယ်ဝန်း",
            "ကျယ်ဝန်း ÷ ဒြပ်ထု",
            "ဒြပ်ထု + ကျယ်ဝန်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Pressure is calculated as...",
          questionMy: "ဖိအားကို မည်သို့ တွက်ချက်သနည်း...",
          optionsEn: [
            "Force ÷ Area",
            "Force × Area",
            "Area ÷ Force",
            "Force + Area",
          ],
          optionsMy: [
            "အား ÷ ဧရိယာ",
            "အား × ဧရိယာ",
            "ဧရိယာ ÷ အား",
            "အား + ဧရိယာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "As depth in water increases, water pressure...",
          questionMy: "ရေအနက် တိုးလာသည်နှင့်အမျှ ရေဖိအားသည်...",
          optionsEn: [
            "Increases",
            "Decreases",
            "Stays exactly the same",
            "Becomes zero",
          ],
          optionsMy: [
            "တိုးလာသည်",
            "ကျဆင်းသည်",
            "အတိအကျ မပြောင်းလဲဘဲ ရှိနေသည်",
            "သုညဖြစ်သွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In a hydraulic system, a small piston force is...",
          questionMy: "ဟိုက်ဒရောလစ်စနစ်တစ်ခုတွင် ပစ္စတွန်ငယ်၏အားသည်...",
          optionsEn: [
            "Transmitted and multiplied at a larger piston",
            "Reduced to zero before reaching the large piston",
            "Only usable with air, not liquid",
            "Unrelated to the large piston's force",
          ],
          optionsMy: [
            "ပစ္စတွန်ကြီးတွင် ပေးပို့ပြီး တိုးမြှင့်ခံရသည်",
            "ပစ္စတွန်ကြီးသို့ မရောက်မီ သုညသို့ လျှော့ချခံရသည်",
            "အရည်နှင့် မဟုတ်ဘဲ လေနှင့်သာ အသုံးပြု၍ရသည်",
            "ပစ္စတွန်ကြီး၏ အားနှင့် မသက်ဆိုင်ချေ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Htet Aung's hydraulic arm story, how many times more force did the wide plunger produce?",
          questionMy:
              "ထက်အောင်၏ ဟိုက်ဒရောလစ်လက်ဇာတ်လမ်းတွင် ကျယ်သောလှိမ့်ချောင်းသည် မည်မျှဆ ပိုများသောအားကို ထုတ်လုပ်ပေးခဲ့သနည်း။",
          optionsEn: [
            "Eight times more",
            "Two times more",
            "The same amount",
            "Half as much",
          ],
          optionsMy: [
            "ရှစ်ဆ ပိုများသည်",
            "နှစ်ဆ ပိုများသည်",
            "ပမာဏတူညီသည်",
            "ထက်ဝက်သာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary2ScienceTerm3 = CourseTermDef(
  id: "course-secondary2-science-term3",
  termNumber: 3,
  titleEn: "Physics - Fluids and Pressure",
  titleMy: "ရူပဗေဒ — အရည်နှင့် ဖိအား",
  certificateTitleEn: "Physics - Fluids and Pressure",
  certificateTitleMy: "ရူပဗေဒ — အရည်နှင့် ဖိအား",
  weeks: [
    _secondary2ScienceWeek9,
    _secondary2ScienceWeek10,
    _secondary2ScienceWeek11,
    _secondary2ScienceWeek12,
  ],
);
