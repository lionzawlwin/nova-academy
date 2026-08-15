// File: ai_data_bridge/_generated/igcse_biology_term1.dart
// IGCSE Biology -- Term 1: "Characteristics and Classification of Living
// Organisms" (Weeks 1-4). Staging artifact only -- not yet wired into
// course_pathway_bank.dart's Grade.igcse pathway. Follows the exact
// DailyLessonDef/CourseWeekDef/CourseTermDef schema and id/xp conventions
// already established elsewhere in ai_data_bridge/_generated (see
// igcse_combined_science_term1.dart), including a rotating cast of named
// Myanmar-student protagonists (one per week's reading passage).
//
// Week 1 (Characteristics of Living Organisms): the seven MRS GREN life
// processes, the concept of a species, and the binomial system of naming.
// Week 2 (Classification Systems): the five kingdoms, vertebrate vs.
// invertebrate groups, and dichotomous keys. Week 3 (Cell Structure and
// Organisation): plant/animal cell ultrastructure, specialised cells, and
// levels of organisation from cell to system. Week 4 (Capstone --
// Cellular Biology Practical Studio): microscope usage and magnification
// calculations, synthesising Weeks 1-3 in an exam-practical style.

// =====================================================================
// Week 1: "Characteristics of Living Organisms"
// =====================================================================

const CourseWeekDef _igcseBioWeek1 = CourseWeekDef(
  id: "course-igcse-bio-w1",
  weekNumber: 1,
  titleEn: "Characteristics of Living Organisms",
  titleMy: "သက်ရှိသတ္တဝါများ၏ လက္ခဏာများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w1-d1",
      dayNumber: 1,
      titleEn: "MRS GREN and Naming Species Quiz",
      titleMy: "MRS GREN နှင့် မျိုးစိတ်အမည်တပ်ခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which of the following is NOT one of the seven life processes represented by MRS GREN?",
          questionMy:
              "အောက်ပါတို့အနက် MRS GREN ကိုယ်စားပြုသော သက်ရှင်ဖြစ်စဉ်ခုနစ်ခုတွင် မပါဝင်သည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: ["Movement", "Excretion", "Digestion", "Growth"],
          optionsMy: [
            "လှုပ်ရှားမှု (Movement)",
            "စွန့်ထုတ်ခြင်း (Excretion)",
            "အစာချေဖျက်ခြင်း (Digestion)",
            "ကြီးထွားခြင်း (Growth)",
          ],
          correctIndex: 2,
          hintsEn: [
            "MRS GREN stands for Movement, Respiration, Sensitivity, Growth, Reproduction, Excretion, and Nutrition.",
            "Digestion is part of how an organism carries out nutrition, but it is not itself one of the seven named characteristics.",
          ],
          hintsMy: [
            "MRS GREN သည် လှုပ်ရှားမှု၊ အသက်ရှုခြင်း၊ လှုံ့ဆော်မှုတုံ့ပြန်နိုင်စွမ်း၊ ကြီးထွားခြင်း၊ မျိုးပွားခြင်း၊ စွန့်ထုတ်ခြင်းနှင့် အာဟာရယူခြင်းတို့ကို ကိုယ်စားပြုသည်။",
            "အစာချေဖျက်ခြင်းသည် အာဟာရယူခြင်းကို ဆောင်ရွက်ရာတွင် ပါဝင်သော်လည်း ၎င်းကိုယ်တိုင်မှာ အမည်ပေးထားသည့် ခုနစ်ချက်ထဲတွင် မပါဝင်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A sunflower turning to face the sun during the day is an example of which characteristic of living organisms?",
          questionMy:
              "နေဝန်းပန်းပင်တစ်ပင်သည် နေ့အတွင်း နေရောင်ကိုမျက်နှာမူရန် လှည့်ခြင်းသည် သက်ရှိသတ္တဝါ၏ မည်သည့်လက္ခဏာနှင့် ဆက်စပ်နေသနည်း။",
          optionsEn: ["Sensitivity", "Excretion", "Reproduction", "Nutrition"],
          optionsMy: [
            "လှုံ့ဆော်မှုတုံ့ပြန်နိုင်စွမ်း (Sensitivity)",
            "စွန့်ထုတ်ခြင်း (Excretion)",
            "မျိုးပွားခြင်း (Reproduction)",
            "အာဟာရယူခြင်း (Nutrition)",
          ],
          correctIndex: 0,
          hintsEn: [
            "This life process means being able to detect and respond to changes (stimuli) in the surroundings.",
            "Light is the stimulus here, and turning towards it is the organism's response.",
          ],
          hintsMy: [
            "ဤသက်ရှင်ဖြစ်စဉ်သည် ပတ်ဝန်းကျင်ပြောင်းလဲမှု (လှုံ့ဆော်မှု) ကို ခံစားသိရှိပြီး တုံ့ပြန်နိုင်ခြင်းကို ဆိုလိုသည်။",
            "ဤနေရာတွင် အလင်းသည် လှုံ့ဆော်မှုဖြစ်ပြီး ၎င်းဘက်သို့ လှည့်ခြင်းသည် သက်ရှိ၏ တုံ့ပြန်မှုဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which statement correctly describes the binomial system of naming species?",
          questionMy:
              "မျိုးစိတ်များကို အမည်တပ်ရာတွင် အသုံးပြုသော ဒွိနာမ်အမည်တပ်စနစ်ကို မှန်ကန်စွာ ဖော်ပြထားသည့် အချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Each species is given a two-part Latin name: the genus name followed by the species name",
            "Each species is given a single common name understood in every country",
            "Each species is named only after the scientist who discovered it",
            "Each species is given a name that changes depending on the country",
          ],
          optionsMy: [
            "မျိုးစိတ်တစ်မျိုးစီကို လက်တင်ဘာသာဖြင့် နှစ်ပိုင်းအမည် -- မျိုးရင်းအမည်ပြီးမှ မျိုးစိတ်အမည် -- ပေးသည်",
            "မျိုးစိတ်တစ်မျိုးစီကို နိုင်ငံတိုင်းနားလည်သည့် သာမန်အမည်တစ်ခုတည်း ပေးသည်",
            "မျိုးစိတ်တစ်မျိုးစီကို ရှာဖွေတွေ့ရှိသော သိပ္ပံပညာရှင်၏ အမည်ဖြင့်သာ အမည်ပေးသည်",
            "မျိုးစိတ်တစ်မျိုးစီကို နိုင်ငံအလိုက် ပြောင်းလဲသည့် အမည်တစ်ခု ပေးသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Binomial means 'two names' -- think about how Homo sapiens is written.",
            "The first part (Genus) always starts with a capital letter; the second part (species) is written in lower case.",
          ],
          hintsMy: [
            "ဒွိနာမ် (Binomial) ဆိုသည်မှာ 'အမည်နှစ်ခု' ဟု ဆိုလိုသည် -- Homo sapiens ကို မည်သို့ရေးသားသည်ကို စဉ်းစားကြည့်ပါ။",
            "ပထမအပိုင်း (မျိုးရင်း) သည် အမြဲတမ်း စာလုံးကြီးဖြင့် စတင်ပြီး၊ ဒုတိယအပိုင်း (မျိုးစိတ်) ကို စာလုံးသေးဖြင့် ရေးသားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Two organisms are classified as belonging to the same species if they...",
          questionMy:
              "သက်ရှိနှစ်ကောင်ကို မျိုးစိတ်တူတစ်ခုတည်းဟု သတ်မှတ်ရန် ၎င်းတို့သည် မည်သို့ဖြစ်ရမည်နည်း။",
          optionsEn: [
            "can interbreed to produce fertile offspring",
            "look identical in every way",
            "live in the same habitat",
            "eat the same type of food",
          ],
          optionsMy: [
            "အချင်းချင်း လိင်တွဲပေါင်းစပ်၍ မျိုးအောင်နိုင်သော သားစဉ်မြေးဆက်ကို ထုတ်ပေးနိုင်ရမည်",
            "အရာအားလုံးတွင် အသွင်အပြင် တူညီနေရမည်",
            "နေရင်း ဂေဟစနစ်တစ်ခုတည်းတွင် နေထိုင်ရမည်",
            "အစားအစာအမျိုးအစားတူတူ စားသုံးရမည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the key test biologists use to decide whether two organisms belong to the same species.",
            "Think about why a horse and a donkey, which can mate, are still classed as two different species -- their offspring (a mule) cannot reproduce.",
          ],
          hintsMy: [
            "ဤသည်မှာ သက်ရှိနှစ်ကောင် မျိုးစိတ်တူ၊ မတူ ဆုံးဖြတ်ရာတွင် ဇီဝဗေဒပညာရှင်များ အသုံးပြုသည့် အဓိကစစ်ဆေးမှုဖြစ်သည်။",
            "မြင်း၊ မြည်းတို့ လိင်တွဲနိုင်သော်လည်း သားစဉ်မြေးဆက် (မြင်းလား) မျိုးအောင်နိုင်သောကြောင့် မျိုးစိတ်နှစ်မျိုးအဖြစ် ခွဲခြားထားရသည့် အကြောင်းရင်းကို စဉ်းစားကြည့်ပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w1-d2",
      dayNumber: 2,
      titleEn: "Match the Life Process Vocabulary",
      titleMy: "သက်ရှင်ဖြစ်စဉ် ဝေါဟာရများကို တွဲစပ်ကြမည်",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w1-dm-1",
          termEn: "Movement",
          termMy: "လှုပ်ရှားမှု (Movement)",
          matchEn:
              "An action by an organism, or part of it, that changes its position",
          matchMy:
              "သက်ရှိတစ်ကောင် (သို့) ၎င်း၏ အစိတ်အပိုင်းတစ်ခု၏ တည်နေရာကို ပြောင်းလဲစေသည့် လုပ်ဆောင်ချက်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w1-dm-2",
          termEn: "Respiration",
          termMy: "အသက်ရှုခြင်း (Respiration)",
          matchEn:
              "Chemical reactions inside cells that break down nutrients to release energy",
          matchMy:
              "အာဟာရဓာတ်များကို ချေဖျက်၍ စွမ်းအင်ထုတ်လွှတ်ပေးသည့် ဆဲလ်အတွင်းဓာတုတုံ့ပြန်မှုများ",
          colorValue: 0xFF2196F3,
        ),
        DragMatchPair(
          id: "igcsebio-w1-dm-3",
          termEn: "Sensitivity",
          termMy: "လှုံ့ဆော်မှုတုံ့ပြန်နိုင်စွမ်း (Sensitivity)",
          matchEn:
              "The ability to detect and respond to changes in the surroundings",
          matchMy:
              "ပတ်ဝန်းကျင်ပြောင်းလဲမှုများကို ခံစားသိရှိပြီး တုံ့ပြန်နိုင်သည့် စွမ်းရည်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w1-dm-4",
          termEn: "Excretion",
          termMy: "စွန့်ထုတ်ခြင်း (Excretion)",
          matchEn:
              "The removal of waste products of metabolism from the body",
          matchMy: "ခန္ဓာကိုယ်အတွင်းမှ ဇီဝဖြစ်စဉ်စွန့်ပစ်ပစ္စည်းများကို ထုတ်ပယ်ခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w1-dm-5",
          termEn: "Species",
          termMy: "မျိုးစိတ် (Species)",
          matchEn:
              "A group of organisms that can interbreed to produce fertile offspring",
          matchMy:
              "အချင်းချင်း လိင်တွဲပေါင်းစပ်၍ မျိုးအောင်နိုင်သော သားစဉ်မြေးဆက်ကို ထုတ်ပေးနိုင်သည့် သက်ရှိအုပ်စု",
          colorValue: 0xFFE91E63,
        ),
        DragMatchPair(
          id: "igcsebio-w1-dm-6",
          termEn: "Binomial system",
          termMy: "ဒွိနာမ် အမည်တပ်စနစ် (Binomial System)",
          matchEn:
              "A naming system that gives every organism a two-part Latin name",
          matchMy:
              "သက်ရှိတိုင်းကို လက်တင်ဘာသာဖြင့် နှစ်ပိုင်းအမည်တစ်ခု ပေးအပ်သည့် အမည်တပ်စနစ်",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w1-d3",
      dayNumber: 3,
      titleEn: "Sort: Living or Not Living?",
      titleMy: "စီစစ်ကြမည် - သက်ရှိလား၊ မဟုတ်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Shows the Characteristics of a Living Organism",
          "Does NOT Show the Characteristics of a Living Organism",
        ],
        bucketsMy: [
          "သက်ရှိတစ်ခု၏ လက္ခဏာများကို ပြသသည်",
          "သက်ရှိတစ်ခု၏ လက္ခဏာများကို မပြသပါ",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w1-sort-1",
            labelEn: "A sunflower plant growing taller each week",
            labelMy: "နေဝန်းပန်းပင်တစ်ပင် အပတ်စဉ် ပိုမိုမြင့်တက်ကြီးထွားနေခြင်း",
            correctBucketEn: "Shows the Characteristics of a Living Organism",
            correctBucketMy: "သက်ရှိတစ်ခု၏ လက္ခဏာများကို ပြသသည်",
          ),
          SortingItem(
            id: "igcsebio-w1-sort-2",
            labelEn: "A dog panting to cool itself down",
            labelMy: "ခွေးတစ်ကောင် ကိုယ်ခန္ဓာအေးအောင် လျှာထုတ်ပြီး ရှူသွင်းနေခြင်း",
            correctBucketEn: "Shows the Characteristics of a Living Organism",
            correctBucketMy: "သက်ရှိတစ်ခု၏ လက္ခဏာများကို ပြသသည်",
          ),
          SortingItem(
            id: "igcsebio-w1-sort-3",
            labelEn: "A car engine burning petrol to move",
            labelMy: "ကားအင်ဂျင်တစ်လုံး ရွေ့လျားရန် ဓာတ်ဆီလောင်ကျွမ်းနေခြင်း",
            correctBucketEn:
                "Does NOT Show the Characteristics of a Living Organism",
            correctBucketMy: "သက်ရှိတစ်ခု၏ လက္ခဏာများကို မပြသပါ",
          ),
          SortingItem(
            id: "igcsebio-w1-sort-4",
            labelEn: "A bacterium splitting into two new cells",
            labelMy: "ဘက်တီးရီးယားတစ်ကောင် ဆဲလ်နှစ်ခုအဖြစ် ကွဲထွက်နေခြင်း",
            correctBucketEn: "Shows the Characteristics of a Living Organism",
            correctBucketMy: "သက်ရှိတစ်ခု၏ လက္ခဏာများကို ပြသသည်",
          ),
          SortingItem(
            id: "igcsebio-w1-sort-5",
            labelEn: "A candle flame flickering and burning down",
            labelMy: "ဖယောင်းတိုင်မီးလျှံ တောက်လောင်လျက် တဖျပ်ဖျပ်လှုပ်နေခြင်း",
            correctBucketEn:
                "Does NOT Show the Characteristics of a Living Organism",
            correctBucketMy: "သက်ရှိတစ်ခု၏ လက္ခဏာများကို မပြသပါ",
          ),
          SortingItem(
            id: "igcsebio-w1-sort-6",
            labelEn: "A fish releasing ammonia through its gills",
            labelMy: "ငါးတစ်ကောင် ယူးရားဓာတ်ငွေ့ကို ပင်လယ်ရှူအိတ်မှတစ်ဆင့် စွန့်ထုတ်နေခြင်း",
            correctBucketEn: "Shows the Characteristics of a Living Organism",
            correctBucketMy: "သက်ရှိတစ်ခု၏ လက္ခဏာများကို ပြသသည်",
          ),
          SortingItem(
            id: "igcsebio-w1-sort-7",
            labelEn: "A rock tumbling down a hillside",
            labelMy: "ကျောက်တုံးတစ်လုံး တောင်ကုန်းပေါ်မှ လိမ့်ကျနေခြင်း",
            correctBucketEn:
                "Does NOT Show the Characteristics of a Living Organism",
            correctBucketMy: "သက်ရှိတစ်ခု၏ လက္ခဏာများကို မပြသပါ",
          ),
          SortingItem(
            id: "igcsebio-w1-sort-8",
            labelEn: "A seed absorbing water and starting to sprout",
            labelMy: "မျိုးစေ့တစ်စေ့ ရေစုပ်ယူ၍ အညှောက်ထွက်စတင်နေခြင်း",
            correctBucketEn: "Shows the Characteristics of a Living Organism",
            correctBucketMy: "သက်ရှိတစ်ခု၏ လက္ခဏာများကို ပြသသည်",
          ),
          SortingItem(
            id: "igcsebio-w1-sort-9",
            labelEn: "A toy robot changing direction when it hits a wall",
            labelMy: "ကစားစရာစက်ရုပ်တစ်ခု နံရံနှင့်တိုက်မိသောအခါ လမ်းကြောင်းပြောင်းနေခြင်း",
            correctBucketEn:
                "Does NOT Show the Characteristics of a Living Organism",
            correctBucketMy: "သက်ရှိတစ်ခု၏ လက္ခဏာများကို မပြသပါ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w1-d4",
      dayNumber: 4,
      titleEn: "Reading: Nandar Win's Nature Walk",
      titleMy: "စာဖတ်ခြင်း - နန္ဒာဝင်း၏ သဘာဝလမ်းလျှောက်ခရီး",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nandar Win's Nature Walk",
        titleMy: "နန္ဒာဝင်း၏ သဘာဝလမ်းလျှောက်ခရီး",
        passageEn:
            "Nandar Win joined her school's Biology Club for a weekend nature walk along the Ayeyarwady riverbank, where her teacher asked every student to record at least five different living things they could find. She quickly filled her notebook with observations: a moving column of ants carrying leaf fragments, a banyan tree whose roots had grown thick and gnarled over decades, and a heron standing perfectly still before snapping its head down to catch a small fish.\n\nBack in the classroom, her teacher pointed out that although the heron and the fish looked nothing alike, both showed all seven characteristics of living organisms -- movement, respiration, sensitivity, growth, reproduction, excretion, and nutrition -- summarised by the mnemonic MRS GREN. Nandar Win realised that even the seemingly motionless banyan tree qualified as living: its roots slowly grew deeper into the soil, and its leaves quietly released oxygen and water vapour, showing growth and excretion even without visible movement.\n\nHer teacher then introduced the grey heron's scientific name, Ardea cinerea, explaining that the first word, Ardea, was its genus, and the second, cinerea, was its species -- together forming its unique binomial name recognised by scientists everywhere, regardless of what local name people used for the bird. Nandar Win understood then why this system mattered: two people from different countries, speaking different languages, could look at the same two-part Latin name and know with certainty they were both talking about the exact same species.",
        passageMy:
            "နန္ဒာဝင်းသည် သူမ၏ကျောင်း ဇီဝဗေဒအသင်း၏ စနေ၊တနင်္ဂနွေ သဘာဝလမ်းလျှောက်ခရီးစဉ်တွင် ဧရာဝတီမြစ်ကမ်းတစ်လျှောက် ပါဝင်ခဲ့ပြီး၊ ဆရာမက ကျောင်းသားတိုင်းအား အနည်းဆုံး သက်ရှိငါးမျိုးကို မှတ်တမ်းတင်ရန် တောင်းဆိုခဲ့သည်။ သူမ၏ မှတ်စုစာအုပ်ကို လျင်မြန်စွာ ဖြည့်စွက်ခဲ့ပြီး -- အရွက်စများကို သယ်ဆောင်နေသော ပရွက်ဆက်တန်း၊ နှစ်ပေါင်းများစွာကြာ ထူထဲကျစ်လျစ်လာသော အမြစ်များပါ ညောင်ပင်ကြီးတစ်ပင်၊ ငါးသေးလေးတစ်ကောင်ကို ဖမ်းမိသောအခါ ခေါင်းကို ချက်ချင်းငုံ့ချလိုက်သည့်အထိ ငြိမ်သက်စွာရပ်နေသော ဒီရင်းငှက်တို့ကို မှတ်တမ်းတင်ခဲ့သည်။\n\nစာသင်ခန်းသို့ ပြန်ရောက်သောအခါ ဆရာမက ဒီရင်းငှက်နှင့် ငါးသည် အသွင်အပြင် လုံးဝမတူသော်လည်း နှစ်ခုစလုံးက သက်ရှိသတ္တဝါ၏ လက္ခဏာခုနစ်ချက် -- လှုပ်ရှားမှု၊ အသက်ရှုခြင်း၊ လှုံ့ဆော်မှုတုံ့ပြန်နိုင်စွမ်း၊ ကြီးထွားခြင်း၊ မျိုးပွားခြင်း၊ စွန့်ထုတ်ခြင်းနှင့် အာဟာရယူခြင်း (MRS GREN ဟု အတိုကောက်ခေါ်သည်) -- အားလုံးကို ပြသနေကြောင်း ညွှန်ပြခဲ့သည်။ ရွေ့လျားမှုမရှိဟု ထင်ရသော ညောင်ပင်ကြီးပင်လျှင် သက်ရှိအဖြစ် အရည်အချင်းပြည့်မီကြောင်း နန္ဒာဝင်း သိရှိလာခဲ့သည် -- ၎င်း၏ အမြစ်များသည် မြေဆီလွှာအတွင်းသို့ တဖြည်းဖြည်း နက်ရှိုင်းစွာ ကြီးထွားနေပြီး၊ အရွက်များကလည်း အောက်ဆီဂျင်နှင့် ရေငွေ့ကို တိတ်တဆိတ် စွန့်ထုတ်နေသည်မှာ ရွေ့လျားမှု မမြင်ရသော်လည်း ကြီးထွားခြင်းနှင့် စွန့်ထုတ်ခြင်းကို ပြသနေခြင်းပင်ဖြစ်သည်။\n\nထို့နောက် ဆရာမက ပြာညိုရောင်ဒီရင်းငှက်၏ သိပ္ပံအမည် Ardea cinerea ကို မိတ်ဆက်ပေးခဲ့ပြီး၊ ပထမစကားလုံး Ardea သည် ၎င်း၏ မျိုးရင်း (Genus) ဖြစ်ပြီး၊ ဒုတိယစကားလုံး cinerea သည် မျိုးစိတ် (Species) ဖြစ်ကြောင်း ရှင်းပြခဲ့သည် -- ဒေသအမည်မည်သည့်ကို သုံးသည်ဖြစ်စေ၊ ကမ္ဘာတစ်ဝှမ်းရှိ သိပ္ပံပညာရှင်များ အသိအမှတ်ပြုသော ထူးခြားသည့် ဒွိနာမ်အမည်ကို ဖွဲ့စည်းပေးသည်။ မတူညီသောနိုင်ငံများမှ၊ မတူညီသောဘာသာစကားပြောသော လူနှစ်ဦးသည် တူညီသော နှစ်ပိုင်းလက်တင်အမည်ကို ကြည့်ရုံဖြင့် အတိအကျ ငှက်မျိုးစိတ်တစ်မျိုးတည်းအကြောင်း ပြောနေကြောင်း သေချာနားလည်နိုင်စေရန် ဤစနစ်က အဘယ်ကြောင့် အရေးကြီးကြောင်း နန္ဒာဝင်း နားလည်လာခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does the banyan tree count as a living organism even though it does not appear to move?",
            questionMy:
                "စာပိုဒ် ၂ အရ ညောင်ပင်ကြီးသည် ရွေ့လျားပုံ မပေါ်သော်လည်း သက်ရှိသတ္တဝါတစ်ခုအဖြစ် အဘယ်ကြောင့် ရေတွက်ရသနည်း။",
            optionsEn: [
              "Because it still shows growth and excretion, among other life processes",
              "Because it is very old",
              "Because it produces flowers",
              "Because trees are always classified as living regardless of MRS GREN",
            ],
            optionsMy: [
              "အခြားသက်ရှင်ဖြစ်စဉ်များအပြင် ကြီးထွားခြင်းနှင့် စွန့်ထုတ်ခြင်းကို ဆက်လက်ပြသနေသောကြောင့်",
              "အလွန်သက်တမ်းရင့်နေသောကြောင့်",
              "ပန်းများ ပွင့်ထုတ်နေသောကြောင့်",
              "သစ်ပင်များကို MRS GREN နှင့် မသက်ဆိုင်ဘဲ အမြဲသက်ရှိဟု သတ်မှတ်ထားသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread paragraph 2 -- the teacher gives two specific examples of what the tree is doing.",
              "Growth (roots growing deeper) and excretion (releasing oxygen and water vapour) do not require visible movement.",
            ],
            hintsMy: [
              "စာပိုဒ် ၂ ကို ပြန်ဖတ်ကြည့်ပါ -- ဆရာမက သစ်ပင်လုပ်ဆောင်နေသော ဥပမာနှစ်ခုကို တိတိကျကျ ပေးထားသည်။",
              "ကြီးထွားခြင်း (အမြစ်ပိုနက်စွာကြီးထွား) နှင့် စွန့်ထုတ်ခြင်း (အောက်ဆီဂျင်နှင့်ရေငွေ့စွန့်ထုတ်) တို့သည် မြင်ရသော ရွေ့လျားမှု မလိုအပ်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "In paragraph 3, what does the genus name 'Ardea' represent in the heron's scientific name Ardea cinerea?",
            questionMy:
                "စာပိုဒ် ၃ တွင် ဒီရင်းငှက်၏ သိပ္ပံအမည် Ardea cinerea ၌ 'Ardea' ဟူသော မျိုးရင်းအမည်သည် အဘယ်ကို ကိုယ်စားပြုသနည်း။",
            optionsEn: [
              "The first part of its binomial name",
              "The species name",
              "Its common English name",
              "The location where it was first found",
            ],
            optionsMy: [
              "၎င်း၏ ဒွိနာမ်အမည်၏ ပထမအပိုင်း",
              "မျိုးစိတ်အမည်",
              "၎င်း၏ အင်္ဂလိပ်သာမန်အမည်",
              "ပထမဆုံးတွေ့ရှိခဲ့သော နေရာ",
            ],
            correctIndex: 0,
            hintsEn: [
              "The binomial system always gives the genus name first, followed by the species name.",
              "Reread the sentence explaining what Ardea and cinerea each stand for.",
            ],
            hintsMy: [
              "ဒွိနာမ်စနစ်တွင် မျိုးရင်းအမည်ကို အမြဲပထမဦးဆုံး ပေးပြီး ၎င်းနောက်တွင် မျိုးစိတ်အမည် ဆက်လက်ပါဝင်သည်။",
              "Ardea နှင့် cinerea တစ်ခုစီက အဘယ်ကို ကိုယ်စားပြုကြောင်း ရှင်းပြထားသည့် စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on paragraph 3, why is a two-part Latin binomial name more useful internationally than a local common name?",
            questionMy:
                "စာပိုဒ် ၃ အရ လက်တင်ဒွိနာမ်အမည်သည် ဒေသဆိုင်ရာ သာမန်အမည်ထက် နိုင်ငံတကာအတွက် အဘယ်ကြောင့် ပိုမိုအသုံးဝင်သနည်း။",
            optionsEn: [
              "Because scientists anywhere can recognise it and know it refers to exactly the same species",
              "Because Latin is easier to pronounce than English",
              "Because local names are always wrong",
              "Because binomial names are shorter than common names",
            ],
            optionsMy: [
              "နေရာမည်သည့်နေရာမှ သိပ္ပံပညာရှင်ဖြစ်စေ မှတ်မိနိုင်ပြီး မျိုးစိတ်တစ်မျိုးတည်းကို တိတိကျကျ ရည်ညွှန်းကြောင်း သိနိုင်သောကြောင့်",
              "လက်တင်စကားလုံးများသည် အင်္ဂလိပ်ထက် အသံထွက်လွယ်သောကြောင့်",
              "ဒေသဆိုင်ရာအမည်များသည် အမြဲမှားယွင်းနေသောကြောင့်",
              "ဒွိနာမ်အမည်များသည် သာမန်အမည်များထက် ပိုတိုသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Think about the example given of two people from different countries.",
              "The key advantage is about certainty and universal recognition, not pronunciation or length.",
            ],
            hintsMy: [
              "မတူညီသောနိုင်ငံနှစ်ခုမှ လူနှစ်ဦးအကြောင်း ပေးထားသော ဥပမာကို စဉ်းစားကြည့်ပါ။",
              "အဓိကအကျိုးကျေးဇူးမှာ ယုံကြည်စိတ်ချမှုနှင့် ကမ္ဘာလုံးဆိုင်ရာ အသိအမှတ်ပြုမှုဖြစ်ပြီး အသံထွက် (သို့) အရှည်နှင့် မသက်ဆိုင်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Which characteristic of living organisms is illustrated in paragraph 1 by the ants carrying leaf fragments?",
            questionMy:
                "စာပိုဒ် ၁ တွင် အရွက်စများကို သယ်ဆောင်နေသော ပရွက်ဆက်များက သက်ရှိသတ္တဝါ၏ မည်သည့်လက္ခဏာကို ဖော်ပြနေသနည်း။",
            optionsEn: ["Movement", "Excretion", "Reproduction", "Sensitivity"],
            optionsMy: [
              "လှုပ်ရှားမှု (Movement)",
              "စွန့်ထုတ်ခြင်း (Excretion)",
              "မျိုးပွားခြင်း (Reproduction)",
              "လှုံ့ဆော်မှုတုံ့ပြန်နိုင်စွမ်း (Sensitivity)",
            ],
            correctIndex: 0,
            hintsEn: [
              "Think about which of the seven MRS GREN characteristics involves a change in position.",
              "Carrying something from one place to another is a clear example of this life process.",
            ],
            hintsMy: [
              "MRS GREN ၏ ခုနစ်ချက်ထဲမှ တည်နေရာပြောင်းလဲမှုနှင့် သက်ဆိုင်သော လက္ခဏာကို စဉ်းစားကြည့်ပါ။",
              "တစ်နေရာမှ တစ်နေရာသို့ တစ်စုံတစ်ခုကို သယ်ဆောင်ခြင်းသည် ဤသက်ရှင်ဖြစ်စဉ်၏ ရှင်းလင်းသော ဥပမာဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w1-d5",
      dayNumber: 5,
      titleEn: "Week 1 Recap: Life Processes and Naming",
      titleMy: "ပထမပတ် ပြန်လည်သုံးသပ်ခြင်း - သက်ရှင်ဖြစ်စဉ်များနှင့် အမည်တပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which life process is defined as 'the chemical reactions that break down nutrients to release energy'?",
          questionMy:
              "'အာဟာရဓာတ်များကို ချေဖျက်၍ စွမ်းအင်ထုတ်လွှတ်ပေးသည့် ဓာတုတုံ့ပြန်မှုများ' ဟု အဓိပ္ပာယ်ဖွင့်ဆိုထားသည့် သက်ရှင်ဖြစ်စဉ်မှာ အဘယ်နည်း။",
          optionsEn: ["Respiration", "Excretion", "Nutrition", "Movement"],
          optionsMy: [
            "အသက်ရှုခြင်း (Respiration)",
            "စွန့်ထုတ်ခြင်း (Excretion)",
            "အာဟာရယူခြင်း (Nutrition)",
            "လှုပ်ရှားမှု (Movement)",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is one of the seven MRS GREN processes, and it happens inside every living cell.",
            "It is not the same as breathing -- breathing is only how oxygen gets in and carbon dioxide gets out.",
          ],
          hintsMy: [
            "ဤသည်မှာ MRS GREN ခုနစ်ခုထဲမှ တစ်ခုဖြစ်ပြီး သက်ရှိဆဲလ်တိုင်း၏ အတွင်းတွင် ဖြစ်ပွားနေသည်။",
            "အသက်ရှူခြင်းနှင့် မတူပါ -- အသက်ရှူခြင်းသည် အောက်ဆီဂျင်ဝင်ရောက်ပြီး ကာဗွန်ဒိုင်အောက်ဆိုက်ထွက်ခွာသည့် နည်းလမ်းသာဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the correct way to write a binomial name in printed text?",
          questionMy:
              "စာနှိပ်စာသားတွင် ဒွိနာမ်အမည်ကို မှန်ကန်စွာ ရေးသားသည့်နည်းလမ်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Genus with a capital letter, species in lower case, both italicised",
            "Both words in capital letters",
            "Species first, genus second, both underlined",
            "Genus and species both in lower case, no italics",
          ],
          optionsMy: [
            "မျိုးရင်းအမည်ကို စာလုံးကြီးဖြင့်၊ မျိုးစိတ်အမည်ကို စာလုံးသေးဖြင့်၊ နှစ်ခုစလုံးကို စောင်းစာလုံးဖြင့် ရေးသည်",
            "စကားလုံးနှစ်ခုစလုံးကို စာလုံးကြီးဖြင့် ရေးသည်",
            "မျိုးစိတ်အမည်ကို ဦးစွာ၊ မျိုးရင်းအမည်ကို ဒုတိယ ရေးပြီး နှစ်ခုစလုံးကို မျဉ်းသားသည်",
            "မျိုးရင်းနှင့် မျိုးစိတ်အမည် နှစ်ခုစလုံးကို စာလုံးသေးဖြင့် ရေးပြီး စောင်းစာလုံးမသုံးပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall the format used for Ardea cinerea in the reading passage.",
            "Only the first letter of the first word (the genus) is capitalised.",
          ],
          hintsMy: [
            "စာဖတ်ခန်းရှိ Ardea cinerea တွင် အသုံးပြုထားသည့် ပုံစံကို သတိရကြည့်ပါ။",
            "ပထမစကားလုံး (မျိုးရင်း) ၏ ပထမစာလုံးကိုသာ စာလုံးကြီးဖြင့် ရေးသားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Two animals that can mate and produce offspring, but whose offspring cannot themselves reproduce, are considered to be...",
          questionMy:
              "သတ္တဝါနှစ်ကောင် လိင်တွဲ၍ သားစဉ်မြေးဆက်ထုတ်ပေးနိုင်သော်လည်း ထိုသားစဉ်မြေးဆက်က ကိုယ်တိုင် မျိုးမပွားနိုင်လျှင် ၎င်းတို့ကို မည်သို့ ယူဆရမည်နည်း။",
          optionsEn: [
            "Two different species",
            "The same species",
            "Members of the same genus but different kingdoms",
            "Not living organisms",
          ],
          optionsMy: [
            "မျိုးစိတ်နှစ်မျိုး",
            "မျိုးစိတ်တူတစ်ခုတည်း",
            "မျိုးရင်းတူသော်လည်း နိုင်ငံမတူ",
            "သက်ရှိမဟုတ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall the mule example -- the offspring of a horse and a donkey.",
            "The species test requires the offspring to be fertile, not just for mating to be possible.",
          ],
          hintsMy: [
            "မြင်းနှင့် မြည်း၏ သားစဉ်မြေးဆက် မြင်းလား ဥပမာကို သတိရကြည့်ပါ။",
            "မျိုးစိတ်စစ်ဆေးမှုသည် လိင်တွဲနိုင်ရုံမျှမက သားစဉ်မြေးဆက် မျိုးအောင်နိုင်ရန်လည်း လိုအပ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these is the best example of 'sensitivity' as a characteristic of living organisms?",
          questionMy:
              "အောက်ပါတို့အနက် သက်ရှိသတ္တဝါ၏ 'လှုံ့ဆော်မှုတုံ့ပြန်နိုင်စွမ်း' လက္ခဏာအတွက် အကောင်းဆုံးဥပမာမှာ အဘယ်နည်း။",
          optionsEn: [
            "A plant's roots growing towards a source of water",
            "A plant photosynthesising in sunlight",
            "A plant producing seeds",
            "A plant losing water vapour through its leaves",
          ],
          optionsMy: [
            "အပင်တစ်ပင်၏ အမြစ်များသည် ရေရင်းမြစ်ဘက်သို့ ကြီးထွားခြင်း",
            "အပင်တစ်ပင် နေရောင်ခြည်တွင် ဓာတ်စင့်ပြုပြင်ခြင်း",
            "အပင်တစ်ပင် မျိုးစေ့များ ထုတ်လုပ်ခြင်း",
            "အပင်တစ်ပင် အရွက်များမှတစ်ဆင့် ရေငွေ့ဆုံးရှုံးခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Sensitivity means detecting and responding to a change in the surroundings.",
            "Look for the option where the plant is reacting to something in its environment, rather than simply carrying out its own internal processes.",
          ],
          hintsMy: [
            "လှုံ့ဆော်မှုတုံ့ပြန်နိုင်စွမ်းဆိုသည်မှာ ပတ်ဝန်းကျင်ပြောင်းလဲမှုကို ခံစားသိရှိပြီး တုံ့ပြန်ခြင်းကို ဆိုလိုသည်။",
            "အပင်သည် ၎င်း၏ အတွင်းပိုင်းဖြစ်စဉ်ကို ရိုးရိုးလုပ်ဆောင်ခြင်းထက် ပတ်ဝန်းကျင်ရှိ တစ်စုံတစ်ခုကို တုံ့ပြန်နေသည့် ရွေးချယ်စရာကို ရှာကြည့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A single-celled organism dividing into two identical cells is an example of which life process?",
          questionMy:
              "တစ်ဆဲလ်တည်း သက်ရှိတစ်ကောင် အလားတူဆဲလ်နှစ်ခုအဖြစ် ကွဲထွက်ခြင်းသည် မည်သည့်သက်ရှင်ဖြစ်စဉ်၏ ဥပမာဖြစ်သနည်း။",
          optionsEn: ["Reproduction", "Excretion", "Nutrition", "Growth"],
          optionsMy: [
            "မျိုးပွားခြင်း (Reproduction)",
            "စွန့်ထုတ်ခြင်း (Excretion)",
            "အာဟာရယူခြင်း (Nutrition)",
            "ကြီးထွားခြင်း (Growth)",
          ],
          correctIndex: 0,
          hintsEn: [
            "This life process results in an increase in the number of individuals of a species.",
            "Think back to the bacterium example from the sorting activity.",
          ],
          hintsMy: [
            "ဤသက်ရှင်ဖြစ်စဉ်သည် မျိုးစိတ်တစ်မျိုး၏ အရေအတွက် တိုးပွားလာစေသည်။",
            "စီစစ်ခြင်းလှုပ်ရှားမှုမှ ဘက်တီးရီးယား ဥပမာကို သတိရကြည့်ပါ။",
          ],
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 2: "Classification Systems"
// =====================================================================

const CourseWeekDef _igcseBioWeek2 = CourseWeekDef(
  id: "course-igcse-bio-w2",
  weekNumber: 2,
  titleEn: "Classification Systems",
  titleMy: "အမျိုးအစားခွဲခြားသော စနစ်များ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w2-d1",
      dayNumber: 1,
      titleEn: "Kingdoms and Keys Quiz",
      titleMy: "နိုင်ငံအုပ်စုများနှင့် ခွဲခြားဇယားများ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which feature is shared by all members of the kingdom Fungi?",
          questionMy:
              "မှိုနိုင်ငံ (Fungi) ၏ အဖွဲ့ဝင်အားလုံးတွင် တွေ့ရှိရသော ဘုံလက္ခဏာမှာ အဘယ်နည်း။",
          optionsEn: [
            "A cell wall made of chitin",
            "The ability to photosynthesise",
            "A cell wall made of cellulose",
            "The complete absence of a cell wall",
          ],
          optionsMy: [
            "ကိုက်တင်ဓာတ်ဖြင့် ပြုလုပ်ထားသော ဆဲလ်နံရံ",
            "ဓာတ်စင့်ပြုပြင်ခြင်း ပြုလုပ်နိုင်စွမ်း",
            "ဆယ်လူလိုစ်ဖြင့် ပြုလုပ်ထားသော ဆဲလ်နံရံ",
            "ဆဲလ်နံရံ လုံးဝမရှိခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "This kingdom includes mushrooms, yeasts, and moulds.",
            "Their cell wall material is different from both plants (cellulose) and animals (no cell wall at all).",
          ],
          hintsMy: [
            "ဤနိုင်ငံအုပ်စုတွင် မှိုအိုးကွက်၊ ခေါက်ဆွဲတဆေးနှင့် မှိုမွှားများ ပါဝင်သည်။",
            "၎င်းတို့၏ ဆဲလ်နံရံပစ္စည်းသည် အပင် (ဆယ်လူလိုစ်) နှင့် တိရစ္ဆာန် (ဆဲလ်နံရံလုံးဝမရှိ) နှစ်မျိုးစလုံးနှင့် မတူပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these organisms belongs to the kingdom Prokaryotae?",
          questionMy: "အောက်ပါသက်ရှိများအနက် ပရိုကာရီယိုတ်နိုင်ငံ (Prokaryotae) ဝင်သည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: ["Bacteria", "Mushroom", "Amoeba", "Fern"],
          optionsMy: [
            "ဘက်တီးရီးယား",
            "မှိုအိုးကွက်",
            "အမိုင်ဘား (Amoeba)",
            "ဖန်ပင်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This kingdom is defined by the complete absence of a nucleus and other membrane-bound organelles.",
            "Its members are always single-celled and among the smallest living organisms.",
          ],
          hintsMy: [
            "ဤနိုင်ငံအုပ်စုကို နျူကလိယပ်စ်နှင့် အခြားမြှေးပါးအကာအရံပါသော အင်္ဂါများ လုံးဝမရှိခြင်းဖြင့် သတ်မှတ်သည်။",
            "၎င်း၏ အဖွဲ့ဝင်များသည် အမြဲတမ်း တစ်ဆဲလ်တည်းဖြစ်ပြီး အငယ်ဆုံးသက်ရှိများထဲတွင် ပါဝင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is the main purpose of a dichotomous key?",
          questionMy: "နှစ်ခြမ်းခွဲ ခွဲခြားဇယား (Dichotomous Key) ၏ အဓိကရည်ရွယ်ချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "To identify an unknown organism through a series of paired questions",
            "To measure the exact size of an organism",
            "To calculate the age of an organism",
            "To list every species that has ever existed",
          ],
          optionsMy: [
            "စုံတွဲမေးခွန်းများစီးရီးကို အသုံးပြု၍ အမည်မသိသက်ရှိတစ်ခုကို ဖော်ထုတ်ရန်",
            "သက်ရှိတစ်ခု၏ အတိအကျအရွယ်အစားကို တိုင်းတာရန်",
            "သက်ရှိတစ်ခု၏ အသက်ကို တွက်ချက်ရန်",
            "ရှိခဲ့ဖူးသော မျိုးစိတ်အားလုံးကို ဇယားချရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "'Dichotomous' means dividing into two -- think about how each step offers only two choices.",
            "At each step, choosing one of the two options leads either to another question or to the organism's identity.",
          ],
          hintsMy: [
            "'Dichotomous' ဆိုသည်မှာ နှစ်ပိုင်းခွဲခြင်းကို ဆိုလိုသည် -- အဆင့်တိုင်းတွင် ရွေးချယ်စရာနှစ်ခုသာ ပေးထားသည်ကို စဉ်းစားကြည့်ပါ။",
            "အဆင့်တိုင်းတွင် ရွေးချယ်စရာနှစ်ခုမှ တစ်ခုကို ရွေးချယ်ခြင်းက နောက်ထပ်မေးခွန်းသို့ (သို့) သက်ရှိ၏ အမည်ကို တိုက်ရိုက်ရောက်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of the following is a defining feature of vertebrates, distinguishing them from invertebrates?",
          questionMy:
              "ကျောရိုးရှိသတ္တဝါများကို ကျောရိုးမဲ့သတ္တဝါများနှင့် ခွဲခြားပေးသော အဓိကလက္ခဏာမှာ အဘယ်နည်း။",
          optionsEn: [
            "They have an internal backbone (vertebral column)",
            "They can all fly",
            "They all live in water",
            "They are all warm-blooded",
          ],
          optionsMy: [
            "၎င်းတို့တွင် ခန္ဓာကိုယ်အတွင်း ကျောရိုး (vertebral column) ရှိသည်",
            "၎င်းတို့အားလုံး ပျံသန်းနိုင်သည်",
            "၎င်းတို့အားလုံး ရေတွင်နေထိုင်သည်",
            "၎င်းတို့အားလုံး သွေးနွေးသတ္တဝါများဖြစ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The word 'vertebrate' comes from 'vertebrae', the small bones that make up the spine.",
            "Fish, amphibians, reptiles, birds, and mammals are all vertebrates, but they differ in blood temperature and habitat.",
          ],
          hintsMy: [
            "'Vertebrate' ဟူသောစကားလုံးသည် ကျောရိုးကို ဖွဲ့စည်းသော အရိုးငယ်များဖြစ်သည့် 'vertebrae' မှ ဆင်းသက်လာသည်။",
            "ငါး၊ ဖား၊ တွားသွားသတ္တဝါ၊ ငှက်နှင့် နို့တိုက်သတ္တဝါအားလုံးသည် ကျောရိုးရှိသတ္တဝါများဖြစ်သော်လည်း သွေးအပူချိန်နှင့် နေရင်းနေရာ ကွဲပြားသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w2-d2",
      dayNumber: 2,
      titleEn: "Match the Kingdom Vocabulary",
      titleMy: "နိုင်ငံအုပ်စု ဝေါဟာရများကို တွဲစပ်ကြမည်",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w2-dm-1",
          termEn: "Animalia",
          termMy: "တိရစ္ဆာန်နိုင်ငံ (Animalia)",
          matchEn:
              "Multicellular organisms with no cell wall that feed by ingesting other organisms",
          matchMy:
              "ဆဲလ်နံရံမရှိဘဲ အခြားသက်ရှိများကို စားသောက်ခြင်းဖြင့် အာဟာရယူသော များဆဲလ်ပါဝင်သည့် သက်ရှိများ",
          colorValue: 0xFF8BC34A,
        ),
        DragMatchPair(
          id: "igcsebio-w2-dm-2",
          termEn: "Plantae",
          termMy: "အပင်နိုင်ငံ (Plantae)",
          matchEn:
              "Multicellular organisms with cellulose cell walls that make their own food by photosynthesis",
          matchMy:
              "ဆယ်လူလိုစ်ဖြင့်ပြုလုပ်ထားသော ဆဲလ်နံရံရှိပြီး ဓာတ်စင့်ပြုပြင်ခြင်းဖြင့် မိမိအစာကို မိမိထုတ်လုပ်သော များဆဲလ်ပါဝင်သည့် သက်ရှိများ",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w2-dm-3",
          termEn: "Fungi",
          termMy: "မှိုနိုင်ငံ (Fungi)",
          matchEn:
              "Organisms with chitin cell walls that feed by absorbing nutrients from decaying matter",
          matchMy:
              "ကိုက်တင်ဓာတ်ပါသော ဆဲလ်နံရံရှိပြီး ပုပ်ကျစ်နေသောအရာများမှ အာဟာရများကို စုပ်ယူ၍ အာဟာရယူသော သက်ရှိများ",
          colorValue: 0xFFFFC107,
        ),
        DragMatchPair(
          id: "igcsebio-w2-dm-4",
          termEn: "Prokaryotae",
          termMy: "ပရိုကာရီယိုတ်နိုင်ငံ (Prokaryotae)",
          matchEn:
              "Single-celled organisms with no nucleus and no membrane-bound organelles",
          matchMy:
              "နျူကလိယပ်စ်နှင့် မြှေးပါးအကာအရံပါသော အင်္ဂါများ လုံးဝမရှိသော တစ်ဆဲလ်တည်းသက်ရှိများ",
          colorValue: 0xFF795548,
        ),
        DragMatchPair(
          id: "igcsebio-w2-dm-5",
          termEn: "Protoctista",
          termMy: "ပရိုတိုတစ်တာနိုင်ငံ (Protoctista)",
          matchEn:
              "Mostly single-celled organisms with a nucleus that do not fit into the other kingdoms",
          matchMy:
              "အခြားနိုင်ငံများနှင့် မကိုက်ညီသော နျူကလိယပ်စ်ရှိသည့် အများစုမှာ တစ်ဆဲလ်တည်းသက်ရှိများ",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w2-dm-6",
          termEn: "Dichotomous key",
          termMy: "နှစ်ခြမ်းခွဲ ခွဲခြားဇယား (Dichotomous Key)",
          matchEn:
              "A tool that uses a series of paired questions to identify an organism",
          matchMy:
              "စုံတွဲမေးခွန်းများစီးရီးကို အသုံးပြု၍ သက်ရှိတစ်ခုကို ဖော်ထုတ်ပေးသည့် ကိရိယာ",
          colorValue: 0xFF009688,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w2-d3",
      dayNumber: 3,
      titleEn: "Sort: Vertebrate or Invertebrate?",
      titleMy: "စီစစ်ကြမည် - ကျောရိုးရှိလား၊ ကျောရိုးမဲ့လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Vertebrate (Has a Backbone)",
          "Invertebrate (No Backbone)",
        ],
        bucketsMy: [
          "ကျောရိုးရှိသတ္တဝါ (Vertebrate)",
          "ကျောရိုးမဲ့သတ္တဝါ (Invertebrate)",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w2-sort-1",
            labelEn: "Fish (e.g. a rohu)",
            labelMy: "ငါး (ဥပမာ ငါးရှဉ့်)",
            correctBucketEn: "Vertebrate (Has a Backbone)",
            correctBucketMy: "ကျောရိုးရှိသတ္တဝါ (Vertebrate)",
          ),
          SortingItem(
            id: "igcsebio-w2-sort-2",
            labelEn: "Frog",
            labelMy: "ဖား",
            correctBucketEn: "Vertebrate (Has a Backbone)",
            correctBucketMy: "ကျောရိုးရှိသတ္တဝါ (Vertebrate)",
          ),
          SortingItem(
            id: "igcsebio-w2-sort-3",
            labelEn: "Snake",
            labelMy: "မြွေ",
            correctBucketEn: "Vertebrate (Has a Backbone)",
            correctBucketMy: "ကျောရိုးရှိသတ္တဝါ (Vertebrate)",
          ),
          SortingItem(
            id: "igcsebio-w2-sort-4",
            labelEn: "Eagle",
            labelMy: "လင်းယုန်ငှက်",
            correctBucketEn: "Vertebrate (Has a Backbone)",
            correctBucketMy: "ကျောရိုးရှိသတ္တဝါ (Vertebrate)",
          ),
          SortingItem(
            id: "igcsebio-w2-sort-5",
            labelEn: "Elephant",
            labelMy: "ဆင်",
            correctBucketEn: "Vertebrate (Has a Backbone)",
            correctBucketMy: "ကျောရိုးရှိသတ္တဝါ (Vertebrate)",
          ),
          SortingItem(
            id: "igcsebio-w2-sort-6",
            labelEn: "Butterfly",
            labelMy: "လိပ်ပြာ",
            correctBucketEn: "Invertebrate (No Backbone)",
            correctBucketMy: "ကျောရိုးမဲ့သတ္တဝါ (Invertebrate)",
          ),
          SortingItem(
            id: "igcsebio-w2-sort-7",
            labelEn: "Spider",
            labelMy: "ပင့်ကူ",
            correctBucketEn: "Invertebrate (No Backbone)",
            correctBucketMy: "ကျောရိုးမဲ့သတ္တဝါ (Invertebrate)",
          ),
          SortingItem(
            id: "igcsebio-w2-sort-8",
            labelEn: "Garden snail",
            labelMy: "ဥယျာဉ်ခရုသင်း",
            correctBucketEn: "Invertebrate (No Backbone)",
            correctBucketMy: "ကျောရိုးမဲ့သတ္တဝါ (Invertebrate)",
          ),
          SortingItem(
            id: "igcsebio-w2-sort-9",
            labelEn: "Earthworm",
            labelMy: "ကြွက်နီ (Earthworm)",
            correctBucketEn: "Invertebrate (No Backbone)",
            correctBucketMy: "ကျောရိုးမဲ့သတ္တဝါ (Invertebrate)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w2-d4",
      dayNumber: 4,
      titleEn: "Reading: Kyaw Zin Latt's Dichotomous Key",
      titleMy: "စာဖတ်ခြင်း - ကျော်ဇင်လတ်၏ နှစ်ခြမ်းခွဲ ခွဲခြားဇယား",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Kyaw Zin Latt's Dichotomous Key",
        titleMy: "ကျော်ဇင်လတ်၏ နှစ်ခြမ်းခွဲ ခွဲခြားဇယား",
        passageEn:
            "During a school field trip to a village pond near Bago, Kyaw Zin Latt and his classmates collected six small invertebrates in clear jars -- a dragonfly, a water beetle, a pond snail, a mosquito larva, a spider, and a millipede -- and brought them back to class for a classification activity. His teacher challenged the group to build a dichotomous key that anyone, even someone who had never seen these creatures before, could use to correctly identify each one.\n\nKyaw Zin Latt's group started with the broadest, most obvious difference they could find: does the animal have wings, or not? This single yes-or-no question immediately split their six invertebrates into two smaller groups. From there, they kept asking further paired questions about each remaining group -- for the group without wings, they asked \"does it have eight legs, or more than eight legs?\" -- narrowing the possibilities down step by step until only one organism matched each final answer.\n\nWhen another group tested Kyaw Zin Latt's key on a millipede he had deliberately hidden from them, they worked through his questions correctly and identified it in under a minute, without him saying a single word. He realised that a good dichotomous key does not rely on the person recognising the animal at all -- it only depends on the person being able to answer each paired question honestly and follow the branching path it produces.",
        passageMy:
            "ပဲခူးအနီးရှိ ကျေးရွာရေကန်တစ်ခုသို့ ကျောင်းသဘောတရားခရီးစဉ်အတွင်း ကျော်ဇင်လတ်နှင့် အတန်းသားများသည် ပုလင်းကြည့်များထဲသို့ ကျောရိုးမဲ့သတ္တဝါငယ်ခြောက်ကောင် -- ကျီးအွန်း၊ ရေဘူးခွံပိုးမွှား၊ ကန်ခရုသင်း၊ ခြင်လှက်ကောင်၊ ပင့်ကူနှင့် ကင်းမြီးကောက်တောင်ရှည် -- တို့ကို စုဆောင်းယူဆောင်ခဲ့ကြပြီး၊ ခွဲခြားသတ်မှတ်ခြင်း လုပ်ငန်းအတွက် စာသင်ခန်းသို့ ပြန်ယူလာခဲ့ကြသည်။ ၎င်းတို့၏ ဆရာမက ဤသတ္တဝါများကို တစ်ခါမျှမတွေ့ဖူးသူပင်လျှင် မှန်ကန်စွာ ဖော်ထုတ်နိုင်မည့် နှစ်ခြမ်းခွဲ ခွဲခြားဇယားတစ်ခုကို ဖန်တီးကြရန် အုပ်စုကို စိန်ခေါ်ခဲ့သည်။\n\nကျော်ဇင်လတ်၏ အုပ်စုသည် သူတို့တွေ့နိုင်သော အကျယ်ဆုံးနှင့် အထင်ရှားဆုံး ကွဲပြားမှုဖြင့် စတင်ခဲ့သည် -- ထိုသတ္တဝါတွင် အတောင်ရှိသလား၊ မရှိသလား။ ဤ ဟုတ်/မဟုတ် မေးခွန်းတစ်ခုတည်းသည် သူတို့၏ ကျောရိုးမဲ့သတ္တဝါခြောက်ကောင်ကို အုပ်စုငယ်နှစ်စု ချက်ချင်းခွဲခြားပေးခဲ့သည်။ ထို့နောက် ကျန်ရှိနေသော အုပ်စုတစ်ခုစီအတွက် နောက်ထပ်စုံတွဲမေးခွန်းများကို ဆက်လက်မေးမြန်းခဲ့ကြသည် -- အတောင်မရှိသော အုပ်စုအတွက် \"ခြေရှစ်ချောင်းရှိသလား၊ ရှစ်ချောင်းထက်ပိုသလား\" ဟု မေးခဲ့ကြပြီး -- နောက်ဆုံးအဖြေတစ်ခုစီတွင် သတ္တဝါတစ်ကောင်တည်းသာ ကိုက်ညီသည့်အထိ အဆင့်ဆင့် ဖြေလျှော့ခဲ့ကြသည်။\n\nအခြားအုပ်စုတစ်စုက ကျော်ဇင်လတ် တမင်ဖျောက်ထားခဲ့သော ကင်းမြီးကောက်တောင်ရှည်တစ်ကောင်ကို သူ၏ဇယားဖြင့် စမ်းသပ်ကြည့်ကြသောအခါ၊ သူတို့သည် သူ၏မေးခွန်းများကို မှန်ကန်စွာ အဆင့်ဆင့်ဖြေရှင်းကာ တစ်စကားမျှမပြောဘဲ တစ်မိနစ်အတွင်း မှန်ကန်စွာ ဖော်ထုတ်နိုင်ခဲ့ကြသည်။ ကောင်းမွန်သော နှစ်ခြမ်းခွဲ ခွဲခြားဇယားတစ်ခုသည် ထိုသတ္တဝါကို လူက အသိအမှတ်ပြုနိုင်ခြင်း အပေါ်တွင် လုံးဝမမှီခိုဘဲ -- စုံတွဲမေးခွန်းတစ်ခုစီကို ရိုးသားစွာဖြေဆိုနိုင်ပြီး ၎င်းမှဖြစ်ပေါ်လာသော ကွဲထွက်လမ်းကြောင်းကို လိုက်နာနိုင်ခြင်း အပေါ်တွင်သာ မှီခိုကြောင်း သူ နားလည်လာခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the very first question Kyaw Zin Latt's group used to split the six invertebrates into two groups?",
            questionMy:
                "စာပိုဒ် ၂ အရ ကျော်ဇင်လတ်၏ အုပ်စုသည် ကျောရိုးမဲ့သတ္တဝါခြောက်ကောင်ကို အုပ်စုနှစ်စု ခွဲရန် ပထမဆုံးအသုံးပြုခဲ့သော မေးခွန်းမှာ အဘယ်နည်း။",
            optionsEn: [
              "Does it have wings, or not?",
              "How many legs does it have?",
              "Where does it live?",
              "What colour is it?",
            ],
            optionsMy: [
              "အတောင်ရှိသလား၊ မရှိသလား",
              "ခြေဘယ်နှစ်ချောင်းရှိသလဲ",
              "မည်သည့်နေရာတွင် နေထိုင်သလဲ",
              "ဘာအရောင်ရှိသလဲ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the start of paragraph 2, where the group looks for the broadest, most obvious difference.",
              "This is a yes-or-no question about a visible body feature.",
            ],
            hintsMy: [
              "အုပ်စုသည် အကျယ်ဆုံးနှင့် အထင်ရှားဆုံးကွဲပြားမှုကို ရှာဖွေသည့် စာပိုဒ် ၂ ၏ အစကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ မြင်ရသော ကိုယ်ခန္ဓာလက္ခဏာတစ်ခုနှင့်ပတ်သက်သော ဟုတ်/မဟုတ် မေးခွန်းဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on paragraph 2, after splitting the animals by wings, what was the next paired question asked for the wingless group?",
            questionMy:
                "စာပိုဒ် ၂ အရ အတောင်ရှိ/မရှိဖြင့် ခွဲခြားပြီးနောက် အတောင်မရှိသော အုပ်စုအတွက် ဆက်လက်မေးခဲ့သော စုံတွဲမေးခွန်းမှာ အဘယ်နည်း။",
            optionsEn: [
              "Does it have eight legs, or more than eight legs?",
              "Is it dangerous or harmless?",
              "Does it live in water or on land?",
              "Is it big or small?",
            ],
            optionsMy: [
              "ခြေရှစ်ချောင်းရှိသလား၊ ရှစ်ချောင်းထက်ပိုသလား",
              "အန္တရာယ်ရှိသလား၊ မရှိသလား",
              "ရေတွင်နေသလား၊ ကုန်းပေါ်တွင်နေသလား",
              "ကြီးသလား၊ သေးသလား",
            ],
            correctIndex: 0,
            hintsEn: [
              "Look for the second question quoted directly in paragraph 2.",
              "It is about counting a specific number of legs.",
            ],
            hintsMy: [
              "စာပိုဒ် ၂ တွင် တိုက်ရိုက်ကိုးကားထားသော ဒုတိယမေးခွန်းကို ရှာကြည့်ပါ။",
              "၎င်းသည် ခြေအရေအတွက် သတ်မှတ်ရေတွက်ခြင်းနှင့် ပတ်သက်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What does paragraph 3 reveal about what makes Kyaw Zin Latt's dichotomous key successful?",
            questionMy:
                "စာပိုဒ် ၃ က ကျော်ဇင်လတ်၏ နှစ်ခြမ်းခွဲ ခွဲခြားဇယား အောင်မြင်ရသည့်အကြောင်းရင်းကို မည်သို့ ဖော်ပြထားသနည်း။",
            optionsEn: [
              "It worked even though he said nothing, because it only needs honest answers to each question",
              "It only worked because he explained each animal out loud",
              "It failed when tested on a hidden animal",
              "It only worked for animals the testers had already seen before",
            ],
            optionsMy: [
              "သူတစ်စကားမျှမပြောသော်လည်း အလုပ်ဖြစ်ခဲ့သည် -- အဘယ်ကြောင့်ဆိုသော် မေးခွန်းတစ်ခုစီကို ရိုးသားစွာ ဖြေဆိုရန်သာ လိုအပ်သောကြောင့်ဖြစ်သည်",
              "သူ တိရစ္ဆာန်တစ်ကောင်စီကို အသံထွက်ရှင်းပြသောကြောင့်သာ အလုပ်ဖြစ်ခဲ့သည်",
              "ဖျောက်ထားသော တိရစ္ဆာန်ဖြင့် စမ်းသပ်ခဲ့ရာ မအောင်မြင်ခဲ့ပါ",
              "စမ်းသပ်သူများ ယခင်ကတည်းက တွေ့ဖူးပြီးသား တိရစ္ဆာန်များအတွက်သာ အလုပ်ဖြစ်ခဲ့သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of paragraph 3 about what a good key depends on.",
              "Think about why the other group could succeed without any help from him.",
            ],
            hintsMy: [
              "ကောင်းမွန်သောခွဲခြားဇယားတစ်ခု မည်သည့်အရာအပေါ် မှီခိုသည်ကို ဖော်ပြထားသော စာပိုဒ် ၃ ၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "သူ၏ အကူအညီမပါဘဲ အခြားအုပ်စုက အောင်မြင်နိုင်ခဲ့သည့်အကြောင်းရင်းကို စဉ်းစားကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Kyaw Zin Latt's group choose to start their key with the most obvious difference (wings) rather than a smaller detail?",
            questionMy:
                "ကျော်ဇင်လတ်၏ အုပ်စုသည် သေးငယ်သော အသေးစိတ်အချက်ထက် အထင်ရှားဆုံးကွဲပြားမှု (အတောင်) ဖြင့် ဇယားကို အဘယ်ကြောင့် စတင်ရွေးချယ်ခဲ့သနည်း။",
            optionsEn: [
              "Because starting with an obvious feature quickly divides the group into fewer, more manageable options",
              "Because the smaller details were impossible to see",
              "Because their teacher told them the exact question to use",
              "Because wings are the only feature invertebrates can have",
            ],
            optionsMy: [
              "အထင်ရှားသောလက္ခဏာဖြင့် စတင်ခြင်းက အုပ်စုကို ကိုင်တွယ်ရလွယ်ကူသော ရွေးချယ်စရာအနည်းငယ်အဖြစ် လျင်မြန်စွာ ခွဲခြားပေးသောကြောင့်",
              "သေးငယ်သော အသေးစိတ်အချက်များကို လုံးဝမမြင်နိုင်သောကြောင့်",
              "ဆရာမက အသုံးပြုရမည့် မေးခွန်းအတိအကျကို ပြောပြထားသောကြောင့်",
              "အတောင်သည် ကျောရိုးမဲ့သတ္တဝါများတွင် ရှိနိုင်သော တစ်ခုတည်းသော လက္ခဏာဖြစ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Think about why splitting six organisms into two groups of three is more useful than trying to distinguish all six at once.",
              "This is a general principle of building any dichotomous key, not just about insects.",
            ],
            hintsMy: [
              "သတ္တဝါခြောက်ကောင်ကို တစ်ချိန်တည်းတွင် ခွဲခြားရန်ကြိုးစားခြင်းထက် အုပ်စုသုံးကောင်စီ နှစ်စုအဖြစ် ခွဲခြင်းက အဘယ်ကြောင့် ပိုအသုံးဝင်သည်ကို စဉ်းစားကြည့်ပါ။",
              "ဤသည်မှာ ပိုးမွှားများနှင့်သာ မဟုတ်ဘဲ မည်သည့် နှစ်ခြမ်းခွဲ ခွဲခြားဇယားကို တည်ဆောက်ရာတွင်မဆို သက်ဆိုင်သည့် ယေဘုယျမူဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w2-d5",
      dayNumber: 5,
      titleEn: "Week 2 Recap: Kingdoms and Keys",
      titleMy: "ဒုတိယပတ် ပြန်လည်သုံးသပ်ခြင်း - နိုင်ငံအုပ်စုများနှင့် ခွဲခြားဇယားများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "An organism is single-celled with no nucleus and no membrane-bound organelles. Which kingdom does it belong to?",
          questionMy:
              "သက်ရှိတစ်ခုသည် တစ်ဆဲလ်တည်းဖြစ်ပြီး နျူကလိယပ်စ်နှင့် မြှေးပါးအကာအရံပါသော အင်္ဂါများ လုံးဝမရှိပါ။ ၎င်းသည် မည်သည့်နိုင်ငံအုပ်စုတွင် ပါဝင်သနည်း။",
          optionsEn: ["Prokaryotae", "Fungi", "Plantae", "Protoctista"],
          optionsMy: [
            "ပရိုကာရီယိုတ်နိုင်ငံ (Prokaryotae)",
            "မှိုနိုင်ငံ (Fungi)",
            "အပင်နိုင်ငံ (Plantae)",
            "ပရိုတိုတစ်တာနိုင်ငံ (Protoctista)",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the defining feature separating this kingdom from every other kingdom, including Protoctista.",
            "Bacteria are the most familiar members of this kingdom.",
          ],
          hintsMy: [
            "ဤသည်မှာ ပရိုတိုတစ်တာနိုင်ငံအပါအဝင် အခြားနိုင်ငံအုပ်စုများနှင့် ဤနိုင်ငံအုပ်စုကို ခွဲခြားပေးသော အဓိကလက္ခဏာဖြစ်သည်။",
            "ဘက်တီးရီးယားများသည် ဤနိုင်ငံအုပ်စု၏ အသိအကျွမ်းဆုံးအဖွဲ့ဝင်များဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which feature is used to separate fungi from plants?",
          questionMy: "မှိုများကို အပင်များနှင့် ခွဲခြားရန် အသုံးပြုသော လက္ခဏာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Fungi have chitin cell walls and cannot photosynthesise, while plants have cellulose cell walls and can",
            "Fungi are always microscopic, while plants are always visible to the naked eye",
            "Fungi have no cell wall at all, while plants always do",
            "Fungi can move around, while plants can never move any part of themselves",
          ],
          optionsMy: [
            "မှိုများတွင် ကိုက်တင်ဆဲလ်နံရံရှိပြီး ဓာတ်စင့်ပြုပြင်ခြင်း မလုပ်နိုင်ဘဲ၊ အပင်များတွင် ဆယ်လူလိုစ်ဆဲလ်နံရံရှိပြီး လုပ်နိုင်သည်",
            "မှိုများသည် အမြဲအဏုငယ်ဖြစ်ပြီး အပင်များသည် အမြဲမျက်စိဖြင့် မြင်နိုင်သည်",
            "မှိုများတွင် ဆဲလ်နံရံ လုံးဝမရှိဘဲ အပင်များတွင် အမြဲရှိသည်",
            "မှိုများသည် ရွေ့လျားနိုင်ပြီး အပင်များသည် မည်သည့်အစိတ်အပိုင်းကိုမျှ ရွေ့လျားနိုင်စွမ်း လုံးဝမရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Compare the cell wall material and the method of getting food for each kingdom.",
            "Photosynthesis is the process that makes a plant's own food using sunlight.",
          ],
          hintsMy: [
            "နိုင်ငံအုပ်စုတစ်ခုစီ၏ ဆဲလ်နံရံပစ္စည်းနှင့် အစာယူသည့်နည်းလမ်းကို နှိုင်းယှဉ်ကြည့်ပါ။",
            "ဓာတ်စင့်ပြုပြင်ခြင်းသည် နေရောင်ခြည်ကို အသုံးပြု၍ အပင်၏ မိမိအစာကို မိမိထုတ်လုပ်သော ဖြစ်စဉ်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A snail has a soft body and no internal skeleton. It is best classified as...",
          questionMy: "ခရုသင်းတစ်ကောင်တွင် နူးညံ့သောခန္ဓာကိုယ်ရှိပြီး အတွင်းရိုးစုံ လုံးဝမရှိပါ။ ၎င်းကို မည်သို့ အကောင်းဆုံးသတ်မှတ်ရမည်နည်း။",
          optionsEn: [
            "An invertebrate",
            "A vertebrate",
            "A fungus",
            "A prokaryote",
          ],
          optionsMy: [
            "ကျောရိုးမဲ့သတ္တဝါ",
            "ကျောရိုးရှိသတ္တဝါ",
            "မှို",
            "ပရိုကာရီယုတ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about whether it has a backbone.",
            "Invertebrates make up the vast majority of animal species.",
          ],
          hintsMy: [
            "၎င်းတွင် ကျောရိုးရှိ၊ မရှိ စဉ်းစားကြည့်ပါ။",
            "ကျောရိုးမဲ့သတ္တဝါများသည် တိရစ္ဆာန်မျိုးစိတ်အားလုံး၏ အများစုကို ဖွဲ့စည်းထားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "In a dichotomous key, what happens at each step?",
          questionMy: "နှစ်ခြမ်းခွဲ ခွဲခြားဇယားတစ်ခုတွင် အဆင့်တိုင်း၌ အဘယ်အရာဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "The user answers a question with exactly two possible choices",
            "The user must already know the organism's name",
            "The user picks from a list of ten or more choices",
            "The user skips to the final answer immediately",
          ],
          optionsMy: [
            "အသုံးပြုသူသည် ရွေးချယ်စရာနှစ်ခုသာပါသော မေးခွန်းတစ်ခုကို ဖြေဆိုသည်",
            "အသုံးပြုသူသည် သက်ရှိ၏အမည်ကို ကြိုတင်သိထားရမည်",
            "အသုံးပြုသူသည် ရွေးချယ်စရာဆယ်ခုနှင့်အထက်မှ ရွေးချယ်ရသည်",
            "အသုံးပြုသူသည် နောက်ဆုံးအဖြေသို့ ချက်ချင်း ကျော်သွားရသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "'Dichotomous' means 'divided into two'.",
            "Each choice leads either to another paired question or to the final identification.",
          ],
          hintsMy: [
            "'Dichotomous' ဆိုသည်မှာ 'နှစ်ပိုင်းခွဲထားခြင်း' ဟု ဆိုလိုသည်။",
            "ရွေးချယ်မှုတစ်ခုစီသည် နောက်ထပ်စုံတွဲမေးခွန်းသို့ (သို့) နောက်ဆုံးဖော်ထုတ်မှုသို့ ဦးတည်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which pair of vertebrate groups both typically lay eggs with a protective shell, one leathery and one hard?",
          questionMy:
              "ကျောရိုးရှိသတ္တဝါ အုပ်စုနှစ်ခုအနက် တစ်ခုက သားရေကဲ့သို့ အခွံနှင့်၊ တစ်ခုက မာကြောသောအခွံနှင့် ဥများ ခန့်မှန်းအားဖြင့် ဥသည့် အုပ်စုနှစ်ခုမှာ အဘယ်နည်း။",
          optionsEn: [
            "Reptiles and birds",
            "Fish and amphibians",
            "Mammals and fish",
            "Amphibians and birds",
          ],
          optionsMy: [
            "တွားသွားသတ္တဝါနှင့် ငှက်",
            "ငါးနှင့် ဖား",
            "နို့တိုက်သတ္တဝါနှင့် ငါး",
            "ဖားနှင့် ငှက်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Amphibians typically lay soft eggs in water without a shell, and most mammals give birth to live young.",
            "Think of a lizard's leathery egg compared with a hen's hard-shelled egg.",
          ],
          hintsMy: [
            "ဖားများသည် ခန့်မှန်းအားဖြင့် ရေထဲတွင် အခွံမပါသော ဥနူးများဥပြီး၊ နို့တိုက်သတ္တဝါအများစုသည် အရှင်သားစဉ်မြေးဆက်ကို မွေးဖွားသည်။",
            "လိပ်ကောင်၏ သားရေကဲ့သို့ အခွံပါသောဥကို ကြက်၏ မာကြောသောအခွံပါဥနှင့် နှိုင်းယှဉ်ကြည့်ပါ။",
          ],
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 3: "Cell Structure and Organisation"
// =====================================================================

const CourseWeekDef _igcseBioWeek3 = CourseWeekDef(
  id: "course-igcse-bio-w3",
  weekNumber: 3,
  titleEn: "Cell Structure and Organisation",
  titleMy: "ဆဲလ် တည်ဆောက်ပုံနှင့် ဖွဲ့စည်းပုံ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w3-d1",
      dayNumber: 1,
      titleEn: "Cell Organelles Quiz",
      titleMy: "ဆဲလ်အင်္ဂါများ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which cell organelle contains the genetic material and controls the cell's activities?",
          questionMy:
              "မျိုးရိုးဗီဇပါဝင်သောပစ္စည်းကို ပါဝင်ပြီး ဆဲလ်၏ လုပ်ဆောင်ချက်များကို ထိန်းချုပ်သော ဆဲလ်အင်္ဂါမှာ အဘယ်နည်း။",
          optionsEn: ["Nucleus", "Mitochondrion", "Ribosome", "Vacuole"],
          optionsMy: [
            "နျူကလိယပ်စ် (Nucleus)",
            "မိုက်တိုကွန်ဒရီးယား (Mitochondrion)",
            "ရိုက်ဘိုဆုန်း (Ribosome)",
            "ဗက်ကျူးအိုးလ် (Vacuole)",
          ],
          correctIndex: 0,
          hintsEn: [
            "This organelle is usually the largest, most visible structure inside a cell under a light microscope.",
            "It contains DNA organised into chromosomes.",
          ],
          hintsMy: [
            "ဤအင်္ဂါသည် အလင်းအဏုကြည့်မှန်ဘီလူးအောက်တွင် ဆဲလ်အတွင်းရှိ အကြီးဆုံးနှင့် အထင်ရှားဆုံး ဖွဲ့စည်းပုံဖြစ်လေ့ရှိသည်။",
            "၎င်းတွင် ခရိုမိုဆုန်းများအဖြစ် စုစည်းထားသော DNA ပါဝင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which organelle is the site of aerobic respiration, releasing energy for the cell to use?",
          questionMy:
              "ဆဲလ်အသုံးပြုရန် စွမ်းအင်ထုတ်လွှတ်ပေးသော ဓာတ်အောက်ဆီဂျင်ပါ အသက်ရှုခြင်း ဖြစ်ပေါ်ရာနေရာမှာ အဘယ်ဆဲလ်အင်္ဂါဖြစ်သနည်း။",
          optionsEn: [
            "Mitochondrion",
            "Chloroplast",
            "Cell wall",
            "Nucleus",
          ],
          optionsMy: [
            "မိုက်တိုကွန်ဒရီးယား (Mitochondrion)",
            "ကလိုရိုဖလပ်စ် (Chloroplast)",
            "ဆဲလ်နံရံ (Cell wall)",
            "နျူကလိယပ်စ် (Nucleus)",
          ],
          correctIndex: 0,
          hintsEn: [
            "This organelle is often described as the 'powerhouse' of the cell.",
            "Muscle cells and sperm cells contain unusually large numbers of this organelle because they need a lot of energy.",
          ],
          hintsMy: [
            "ဤအင်္ဂါကို ဆဲလ်၏ 'စွမ်းအင်ထုတ်စက်ရုံ' ဟု မကြာခဏ ဖော်ပြလေ့ရှိသည်။",
            "ကြွက်သားဆဲလ်များနှင့် သုက်ပိုးဆဲလ်များတွင် စွမ်းအင်များစွာလိုအပ်သောကြောင့် ဤအင်္ဂါကို ထူးထူးခြားခြား များစွာပါဝင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which structure is found in plant cells but is completely absent from animal cells?",
          questionMy:
              "အောက်ပါဖွဲ့စည်းပုံများအနက် အပင်ဆဲလ်တွင်ရှိပြီး တိရစ္ဆာန်ဆဲလ်တွင် လုံးဝမရှိသည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "A cellulose cell wall",
            "A cell membrane",
            "Mitochondria",
            "Ribosomes",
          ],
          optionsMy: [
            "ဆယ်လူလိုစ် ဆဲလ်နံရံ",
            "ဆဲလ်မြှေးပါး",
            "မိုက်တိုကွန်ဒရီးယားများ",
            "ရိုက်ဘိုဆုန်းများ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This rigid structure gives plant cells their fixed, box-like shape.",
            "Animal cells only have the flexible cell membrane as their outer boundary.",
          ],
          hintsMy: [
            "ဤခိုင်ခန့်သောဖွဲ့စည်းပုံသည် အပင်ဆဲလ်များအား ခိုင်မာသော လေးထောင့်ပုံသဏ္ဍာန်ပေးသည်။",
            "တိရစ္ဆာန်ဆဲလ်များတွင် ပြောင်းလွယ်ပြင်လွယ်ရှိသော ဆဲလ်မြှေးပါးသာ အပြင်နယ်နိမိတ်အဖြစ် ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the correct order of increasing organisation, from smallest to largest?",
          questionMy:
              "အသေးဆုံးမှ အကြီးဆုံးသို့ ဖွဲ့စည်းပုံအဆင့်ဆင့် တိုးမြှင့်သွားသည့် မှန်ကန်သောအစီအစဉ်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Cell → tissue → organ → organ system",
            "Organ → tissue → cell → organ system",
            "Organ system → organ → tissue → cell",
            "Tissue → cell → organ system → organ",
          ],
          optionsMy: [
            "ဆဲလ် → တစ်ရှူး → အင်္ဂါ → အင်္ဂါစနစ်",
            "အင်္ဂါ → တစ်ရှူး → ဆဲလ် → အင်္ဂါစနစ်",
            "အင်္ဂါစနစ် → အင်္ဂါ → တစ်ရှူး → ဆဲလ်",
            "တစ်ရှူး → ဆဲလ် → အင်္ဂါစနစ် → အင်္ဂါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of the human digestive system: it is made of several organs, and each organ is made of different tissues.",
            "The smallest unit of life comes first in this sequence.",
          ],
          hintsMy: [
            "လူ့အစာချေဖျက်စနစ်ကို စဉ်းစားကြည့်ပါ -- ၎င်းသည် အင်္ဂါများစွာဖြင့် ဖွဲ့စည်းထားပြီး၊ အင်္ဂါတစ်ခုစီသည် တစ်ရှူးမတူညီများဖြင့် ဖွဲ့စည်းထားသည်။",
            "အသက်ရှင်ခြင်း၏ အသေးငယ်ဆုံးယူနစ်သည် ဤအစီအစဉ်တွင် ပထမဆုံးလာသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w3-d2",
      dayNumber: 2,
      titleEn: "Match the Organelle Vocabulary",
      titleMy: "ဆဲလ်အင်္ဂါ ဝေါဟာရများကို တွဲစပ်ကြမည်",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w3-dm-1",
          termEn: "Nucleus",
          termMy: "နျူကလိယပ်စ် (Nucleus)",
          matchEn:
              "Contains genetic material and controls the cell's activities",
          matchMy:
              "မျိုးရိုးဗီဇပါဝင်သောပစ္စည်းကို ပါဝင်ပြီး ဆဲလ်၏ လုပ်ဆောင်ချက်များကို ထိန်းချုပ်သည်",
          colorValue: 0xFF673AB7,
        ),
        DragMatchPair(
          id: "igcsebio-w3-dm-2",
          termEn: "Mitochondrion",
          termMy: "မိုက်တိုကွန်ဒရီးယား (Mitochondrion)",
          matchEn:
              "The site of aerobic respiration, releasing energy for the cell",
          matchMy:
              "ဆဲလ်အတွက် စွမ်းအင်ထုတ်လွှတ်ပေးသော ဓာတ်အောက်ဆီဂျင်ပါ အသက်ရှုခြင်း ဖြစ်ပေါ်ရာနေရာ",
          colorValue: 0xFF03A9F4,
        ),
        DragMatchPair(
          id: "igcsebio-w3-dm-3",
          termEn: "Ribosome",
          termMy: "ရိုက်ဘိုဆုန်း (Ribosome)",
          matchEn: "The site where proteins are made",
          matchMy: "ပရိုတင်းများ ထုတ်လုပ်ရာနေရာ",
          colorValue: 0xFFFF5722,
        ),
        DragMatchPair(
          id: "igcsebio-w3-dm-4",
          termEn: "Cell membrane",
          termMy: "ဆဲလ်မြှေးပါး (Cell Membrane)",
          matchEn:
              "A partially permeable layer that controls substances entering and leaving the cell",
          matchMy:
              "ဆဲလ်ထဲသို့ ဝင်ထွက်သော ပစ္စည်းများကို ထိန်းချုပ်ပေးသော တစ်ဝက်စိမ့်ဝင်နိုင်သည့် အလွှာ",
          colorValue: 0xFF607D8B,
        ),
        DragMatchPair(
          id: "igcsebio-w3-dm-5",
          termEn: "Chloroplast",
          termMy: "ကလိုရိုဖလပ်စ် (Chloroplast)",
          matchEn: "Contains chlorophyll and is the site of photosynthesis",
          matchMy: "ကလိုရိုဖီးလ်ပါဝင်ပြီး ဓာတ်စင့်ပြုပြင်ခြင်း ဖြစ်ပေါ်ရာနေရာ",
          colorValue: 0xFFCDDC39,
        ),
        DragMatchPair(
          id: "igcsebio-w3-dm-6",
          termEn: "Vacuole",
          termMy: "ဗက်ကျူးအိုးလ် (Vacuole)",
          matchEn:
              "A large, permanent, fluid-filled space that keeps a plant cell firm",
          matchMy:
              "အပင်ဆဲလ်ကို ခိုင်မာစေသော ကြီးမားသည့် အမြဲတည်ရှိသော အရည်ဖြည့် နေရာလွတ်",
          colorValue: 0xFFE040FB,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w3-d3",
      dayNumber: 3,
      titleEn: "Sort: Plant Cell Only or Both?",
      titleMy: "စီစစ်ကြမည် - အပင်ဆဲလ်တွင်သာလား၊ နှစ်မျိုးလုံးတွင်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Found Only in Plant Cells",
          "Found in Both Plant and Animal Cells",
        ],
        bucketsMy: [
          "အပင်ဆဲလ်တွင်သာ တွေ့ရသည်",
          "အပင်ဆဲလ်နှင့် တိရစ္ဆာန်ဆဲလ် နှစ်မျိုးလုံးတွင် တွေ့ရသည်",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w3-sort-1",
            labelEn: "Cellulose cell wall",
            labelMy: "ဆယ်လူလိုစ် ဆဲလ်နံရံ",
            correctBucketEn: "Found Only in Plant Cells",
            correctBucketMy: "အပင်ဆဲလ်တွင်သာ တွေ့ရသည်",
          ),
          SortingItem(
            id: "igcsebio-w3-sort-2",
            labelEn: "Chloroplast",
            labelMy: "ကလိုရိုဖလပ်စ်",
            correctBucketEn: "Found Only in Plant Cells",
            correctBucketMy: "အပင်ဆဲလ်တွင်သာ တွေ့ရသည်",
          ),
          SortingItem(
            id: "igcsebio-w3-sort-3",
            labelEn: "Large permanent vacuole",
            labelMy: "ကြီးမားသည့် အမြဲတည်ရှိသော ဗက်ကျူးအိုးလ်",
            correctBucketEn: "Found Only in Plant Cells",
            correctBucketMy: "အပင်ဆဲလ်တွင်သာ တွေ့ရသည်",
          ),
          SortingItem(
            id: "igcsebio-w3-sort-4",
            labelEn: "Chlorophyll pigment",
            labelMy: "ကလိုရိုဖီးလ် အရောင်ဓာတ်",
            correctBucketEn: "Found Only in Plant Cells",
            correctBucketMy: "အပင်ဆဲလ်တွင်သာ တွေ့ရသည်",
          ),
          SortingItem(
            id: "igcsebio-w3-sort-5",
            labelEn: "Nucleus",
            labelMy: "နျူကလိယပ်စ်",
            correctBucketEn: "Found in Both Plant and Animal Cells",
            correctBucketMy: "အပင်ဆဲလ်နှင့် တိရစ္ဆာန်ဆဲလ် နှစ်မျိုးလုံးတွင် တွေ့ရသည်",
          ),
          SortingItem(
            id: "igcsebio-w3-sort-6",
            labelEn: "Mitochondria",
            labelMy: "မိုက်တိုကွန်ဒရီးယားများ",
            correctBucketEn: "Found in Both Plant and Animal Cells",
            correctBucketMy: "အပင်ဆဲလ်နှင့် တိရစ္ဆာန်ဆဲလ် နှစ်မျိုးလုံးတွင် တွေ့ရသည်",
          ),
          SortingItem(
            id: "igcsebio-w3-sort-7",
            labelEn: "Cytoplasm",
            labelMy: "ဆဲလ်ရည် (Cytoplasm)",
            correctBucketEn: "Found in Both Plant and Animal Cells",
            correctBucketMy: "အပင်ဆဲလ်နှင့် တိရစ္ဆာန်ဆဲလ် နှစ်မျိုးလုံးတွင် တွေ့ရသည်",
          ),
          SortingItem(
            id: "igcsebio-w3-sort-8",
            labelEn: "Cell membrane",
            labelMy: "ဆဲလ်မြှေးပါး",
            correctBucketEn: "Found in Both Plant and Animal Cells",
            correctBucketMy: "အပင်ဆဲလ်နှင့် တိရစ္ဆာန်ဆဲလ် နှစ်မျိုးလုံးတွင် တွေ့ရသည်",
          ),
          SortingItem(
            id: "igcsebio-w3-sort-9",
            labelEn: "Ribosomes",
            labelMy: "ရိုက်ဘိုဆုန်းများ",
            correctBucketEn: "Found in Both Plant and Animal Cells",
            correctBucketMy: "အပင်ဆဲလ်နှင့် တိရစ္ဆာန်ဆဲလ် နှစ်မျိုးလုံးတွင် တွေ့ရသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w3-d4",
      dayNumber: 4,
      titleEn: "Reading: Ei Ei Phyo's Specialised Cells",
      titleMy: "စာဖတ်ခြင်း - အိအိဖြိုး၏ သီးသန့်ဆဲလ်များ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Ei Ei Phyo's Specialised Cells",
        titleMy: "အိအိဖြိုး၏ သီးသန့်ဆဲလ်များ",
        passageEn:
            "For her end-of-unit project, Ei Ei Phyo compared three prepared slides her teacher had lent her: a root hair cell from a bean seedling, a red blood cell from a blood smear, and a palisade mesophyll cell from a leaf cross-section. At first, she was surprised that three cells from the same broad category -- living cells -- could look so completely different from one another under the microscope.\n\nLooking more closely, she noticed the root hair cell had one long, thread-like extension reaching out from its main body, which she remembered gave it a huge surface area for absorbing water and dissolved minerals from the soil. The red blood cell, by contrast, was a small, flattened disc with no visible nucleus at all -- extra space, her notes reminded her, that was instead packed with haemoglobin to carry as much oxygen as possible. The palisade cell was tall and column-shaped, tightly packed near the top surface of the leaf, and crowded with small green chloroplasts to catch as much sunlight as possible.\n\nHer teacher then asked her to explain how these three very different specialised cells fit into the bigger picture of a whole organism. Ei Ei Phyo worked through it step by step: similar cells group together to form a tissue (like xylem tissue in a root, or blood as a tissue in a body), different tissues combine to form an organ (like a leaf or a heart), and organs work together as an organ system (like the circulatory system) to keep a whole living organism functioning. She realised that a single specialised cell's unusual shape only made sense once she considered the job it had to do within this larger chain of organisation.",
        passageMy:
            "အိအိဖြိုးသည် ယူနစ်အဆုံးသတ်စီမံကိန်းအတွက် ဆရာမ ငှားပေးထားသော ပြင်ဆင်ထားသည့် မှန်ပြားသုံးချပ် -- ပဲပင်ပျိုးပင်တစ်ပင်မှ အမြစ်ဆံဆဲလ်၊ သွေးလိမ်းစမှ သွေးနီဥ၊ နှင့် အရွက်ဖြတ်ပိုင်းမှ ပါလီဆိတ် အလယ်ခေါင်ဆဲလ် -- တို့ကို နှိုင်းယှဉ်လေ့လာခဲ့သည်။ အစပိုင်းတွင် တူညီသော ကျယ်ပြန့်သော အမျိုးအစား -- သက်ရှိဆဲလ်များ -- မှ ဆဲလ်သုံးခုသည် အဏုကြည့်မှန်ဘီလူးအောက်တွင် တစ်ခုနှင့်တစ်ခု အလွန်ကွဲပြားစွာ ပုံရိပ်ပေါ်နေခြင်းကို သူမ အံ့ဩခဲ့သည်။\n\nပိုမိုနီးကပ်စွာ လေ့လာကြည့်သောအခါ အမြစ်ဆံဆဲလ်တွင် ၎င်း၏ ခန္ဓာကိုယ်အဓိကမှ ရှည်လျားသည့် ကြိုးလုံးကဲ့သို့ တိုးထွက်အစိတ်အပိုင်းတစ်ခု ရှိနေသည်ကို သတိပြုမိပြီး၊ ဤသည်မှာ မြေဆီလွှာမှ ရေနှင့် ပျော်ဝင်နေသော သတ္တုဓာတ်များကို စုပ်ယူရန် မျက်နှာပြင်ဧရိယာ များစွာပေးထားခြင်းဖြစ်ကြောင်း သူမ သတိရမိသည်။ ယင်းနှင့်ဆန့်ကျင်ဘက်အနေဖြင့် သွေးနီဥသည် နျူကလိယပ်စ်လုံးဝ မမြင်ရသော ပြားညက်သည့် အသေးစားစက်ဝိုင်းတစ်ခုဖြစ်ပြီး -- ကျန်ရှိနေသောနေရာလွတ်ကို ဓာတ်အောက်ဆီဂျင်ကို အများဆုံးသယ်ဆောင်ရန် ဟီမိုဂလိုဘင်ဖြင့် ဖြည့်ထားကြောင်း သူမ၏ မှတ်စုများက သတိပေးခဲ့သည်။ ပါလီဆိတ်ဆဲလ်မှာ မြင့်မားပြီး တိုင်ပုံသဏ္ဍာန်ရှိကာ အရွက်၏ အထက်ယံမျက်နှာပြင်အနီးတွင် ကျပ်တည်းစွာ တစ်ခုပေါ်တစ်ခု စီစဉ်နေပြီး၊ နေရောင်ခြည်ကို အများဆုံးဖမ်းယူနိုင်ရန် ကလိုရိုဖလပ်စ် အစိမ်းရောင်ငယ်များနှင့် ပြည့်နှက်နေသည်။\n\nထို့နောက် ဆရာမက ဤအလွန်ကွဲပြားသော သီးသန့်ဆဲလ်သုံးခုသည် သက်ရှိတစ်ကောင်လုံး၏ ပုံပြင်ကြီးထဲသို့ မည်သို့ ဆက်စပ်နေကြောင်း ရှင်းပြခိုင်းခဲ့သည်။ အိအိဖြိုးသည် အဆင့်ဆင့် ဖြေရှင်းခဲ့သည် -- ဆင်တူဆဲလ်များ စုပေါင်း၍ တစ်ရှူး (tissue) တစ်ခု ဖွဲ့စည်းသည် (အမြစ်ရှိ ဇိုင်လမ်တစ်ရှူး သို့မဟုတ် ခန္ဓာကိုယ်ရှိ တစ်ရှူးတစ်ခုအနေနှင့် သွေးကဲ့သို့)၊ မတူညီသော တစ်ရှူးများ ပေါင်းစပ်၍ အင်္ဂါ (organ) တစ်ခု ဖွဲ့စည်းသည် (အရွက် သို့မဟုတ် နှလုံးကဲ့သို့)၊ ထို့နောက် အင်္ဂါများသည် အင်္ဂါစနစ် (organ system) တစ်ခု (သွေးလည်ပတ်မှုစနစ်ကဲ့သို့) အဖြစ် ပူးပေါင်း၍ သက်ရှိတစ်ကောင်လုံးကို လုပ်ဆောင်နေစေသည်။ သီးသန့်ဆဲလ်တစ်ခု၏ ထူးဆန်းသော ပုံသဏ္ဍာန်သည် ဤကြီးမားသော ဖွဲ့စည်းပုံကွင်းဆက်ထဲရှိ ၎င်းလုပ်ဆောင်ရမည့် တာဝန်ကို ထည့်သွင်းစဉ်းစားမှသာ အဓိပ္ပာယ်ရှိလာကြောင်း သူမ သဘောပေါက်လာခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does the root hair cell have a long, thread-like extension?",
            questionMy:
                "စာပိုဒ် ၂ အရ အမြစ်ဆံဆဲလ်တွင် ရှည်လျားသည့် ကြိုးလုံးကဲ့သို့ တိုးထွက်အစိတ်အပိုင်း အဘယ်ကြောင့် ရှိနေသနည်း။",
            optionsEn: [
              "To increase the surface area for absorbing water and minerals",
              "To help the cell photosynthesise",
              "To help the cell carry oxygen",
              "To protect the cell from predators",
            ],
            optionsMy: [
              "ရေနှင့် သတ္တုဓာတ်များ စုပ်ယူရန် မျက်နှာပြင်ဧရိယာကို တိုးမြှင့်ပေးရန်",
              "ဆဲလ်ကို ဓာတ်စင့်ပြုပြင်ခြင်း ကူညီရန်",
              "ဆဲလ်ကို အောက်ဆီဂျင်သယ်ဆောင်ရန် ကူညီရန်",
              "ဆဲလ်ကို သားကောင်ဖမ်းသတ္တဝါများမှ ကာကွယ်ရန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first sentence of paragraph 2 about the root hair cell.",
              "A larger surface area allows more absorption to happen at once.",
            ],
            hintsMy: [
              "အမြစ်ဆံဆဲလ်နှင့်ပတ်သက်သော စာပိုဒ် ၂ ၏ ပထမစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "မျက်နှာပြင်ဧရိယာ ပိုကြီးလေ၊ တစ်ချိန်တည်းတွင် စုပ်ယူနိုင်မှု ပိုများလေဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on paragraph 2, what fills the extra space inside a red blood cell left by the absence of a nucleus?",
            questionMy:
                "စာပိုဒ် ၂ အရ သွေးနီဥအတွင်း နျူကလိယပ်စ် မရှိသောကြောင့် ကျန်ရှိနေသော နေရာလွတ်ကို အဘယ်အရာဖြင့် ဖြည့်ထားသနည်း။",
            optionsEn: [
              "Haemoglobin, to carry more oxygen",
              "Chlorophyll, to absorb light",
              "Extra mitochondria only",
              "Cell sap",
            ],
            optionsMy: [
              "ဟီမိုဂလိုဘင် -- အောက်ဆီဂျင် ပိုမိုသယ်ဆောင်ရန်",
              "ကလိုရိုဖီးလ် -- အလင်းစုပ်ယူရန်",
              "မိုက်တိုကွန်ဒရီးယား အပိုများသာ",
              "ဆဲလ်ရည်ဒြပ်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about what the 'extra space' is used for.",
              "This substance is what gives blood its red colour and lets it transport a gas around the body.",
            ],
            hintsMy: [
              "'ကျန်ရှိနေသောနေရာလွတ်' ကို မည်သို့အသုံးပြုသည်ဆိုသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤဒြပ်ပစ္စည်းသည် သွေးကို အနီရောင်ပေးပြီး ခန္ဓာကိုယ်တစ်ဝှမ်း ဓာတ်ငွေ့တစ်မျိုးကို သယ်ဆောင်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what is the correct sequence describing how similar cells build up into a working organism?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဆင်တူဆဲလ်များသည် အလုပ်လုပ်နေသော သက်ရှိတစ်ကောင်အဖြစ် မည်သို့အဆင့်ဆင့် တည်ဆောက်လာသနည်း။",
            optionsEn: [
              "Cells form tissues, tissues form organs, organs form organ systems",
              "Organs form tissues, tissues form cells, cells form organ systems",
              "Organ systems form organs, organs form cells, cells form tissues",
              "Tissues form organ systems directly, without organs",
            ],
            optionsMy: [
              "ဆဲလ်များက တစ်ရှူးများ ဖွဲ့စည်းသည်၊ တစ်ရှူးများက အင်္ဂါများ ဖွဲ့စည်းသည်၊ အင်္ဂါများက အင်္ဂါစနစ်များ ဖွဲ့စည်းသည်",
              "အင်္ဂါများက တစ်ရှူးများ ဖွဲ့စည်းသည်၊ တစ်ရှူးများက ဆဲလ်များ ဖွဲ့စည်းသည်၊ ဆဲလ်များက အင်္ဂါစနစ်များ ဖွဲ့စည်းသည်",
              "အင်္ဂါစနစ်များက အင်္ဂါများ ဖွဲ့စည်းသည်၊ အင်္ဂါများက ဆဲလ်များ ဖွဲ့စည်းသည်၊ ဆဲလ်များက တစ်ရှူးများ ဖွဲ့စည်းသည်",
              "တစ်ရှူးများသည် အင်္ဂါများကို ကျော်၍ အင်္ဂါစနစ်များ တိုက်ရိုက်ဖွဲ့စည်းသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the step-by-step explanation Ei Ei Phyo works through in paragraph 3.",
              "Think of the smallest unit of life leading up to the whole organism.",
            ],
            hintsMy: [
              "စာပိုဒ် ၃ တွင် အိအိဖြိုး အဆင့်ဆင့် ဖြေရှင်းသည့် ရှင်းလင်းချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အသက်ရှင်ခြင်း၏ အသေးငယ်ဆုံးယူနစ်မှ သက်ရှိတစ်ကောင်လုံးအထိ ဦးတည်သွားပုံကို စဉ်းစားကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn: "What is the main idea of paragraph 3?",
            questionMy: "စာပိုဒ် ၃ ၏ အဓိကအကြောင်းအရာမှာ အဘယ်နည်း။",
            optionsEn: [
              "A specialised cell's shape only makes sense in relation to its job within the levels of organisation",
              "All specialised cells look identical under a microscope",
              "Tissues are less important than organs",
              "Red blood cells are found in every organ system",
            ],
            optionsMy: [
              "သီးသန့်ဆဲလ်တစ်ခု၏ ပုံသဏ္ဍာန်သည် ဖွဲ့စည်းပုံအဆင့်များအတွင်း ၎င်း၏ တာဝန်နှင့် ဆက်နွယ်မှသာ အဓိပ္ပာယ်ရှိသည်",
              "သီးသန့်ဆဲလ်အားလုံးသည် အဏုကြည့်မှန်ဘီလူးအောက်တွင် အသွင်တူညီသည်",
              "တစ်ရှူးများသည် အင်္ဂါများထက် အရေးမကြီးပါ",
              "သွေးနီဥများကို အင်္ဂါစနစ်တိုင်းတွင် တွေ့ရသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Look at the final sentence of paragraph 3, where Ei Ei Phyo reaches her overall conclusion.",
              "Think about why the passage connects individual cell shape back to the bigger structure of an organism.",
            ],
            hintsMy: [
              "အိအိဖြိုး၏ အလုံးစုံကောက်ချက်ကို ဖော်ပြထားသော စာပိုဒ် ၃ ၏ နောက်ဆုံးစာကြောင်းကို ကြည့်ပါ။",
              "ဆောင်းပါးက တစ်ဦးချင်းဆဲလ်ပုံသဏ္ဍာန်ကို သက်ရှိတစ်ကောင်လုံး၏ ကြီးမားသောဖွဲ့စည်းပုံနှင့် အဘယ်ကြောင့် ဆက်စပ်ပေးထားကြောင်း စဉ်းစားကြည့်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w3-d5",
      dayNumber: 5,
      titleEn: "Week 3 Recap: Cells and Organisation",
      titleMy: "တတိယပတ် ပြန်လည်သုံးသပ်ခြင်း - ဆဲလ်များနှင့် ဖွဲ့စည်းပုံ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which organelle is described as the 'powerhouse' of the cell because it releases energy through respiration?",
          questionMy:
              "အသက်ရှုခြင်းမှတစ်ဆင့် စွမ်းအင်ထုတ်လွှတ်ပေးသောကြောင့် ဆဲလ်၏ 'စွမ်းအင်ထုတ်စက်ရုံ' ဟု ဖော်ပြထားသော ဆဲလ်အင်္ဂါမှာ အဘယ်နည်း။",
          optionsEn: ["Mitochondrion", "Nucleus", "Ribosome", "Cell wall"],
          optionsMy: [
            "မိုက်တိုကွန်ဒရီးယား (Mitochondrion)",
            "နျူကလိယပ်စ် (Nucleus)",
            "ရိုက်ဘိုဆုန်း (Ribosome)",
            "ဆဲလ်နံရံ (Cell wall)",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think back to Day 2's drag-match activity about organelle functions.",
            "Cells that need a lot of energy, like muscle cells, contain many of these organelles.",
          ],
          hintsMy: [
            "ဆဲလ်အင်္ဂါများ၏ လုပ်ဆောင်ချက်နှင့်ပတ်သက်သော Day 2 ၏ တွဲစပ်ခြင်းလှုပ်ရှားမှုကို ပြန်သတိရကြည့်ပါ။",
            "ကြွက်သားဆဲလ်ကဲ့သို့ စွမ်းအင်များစွာလိုအပ်သော ဆဲလ်များတွင် ဤအင်္ဂါများများစွာ ပါဝင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these structures is present in both plant and animal cells?",
          questionMy:
              "အောက်ပါဖွဲ့စည်းပုံများအနက် အပင်ဆဲလ်နှင့် တိရစ္ဆာန်ဆဲလ် နှစ်မျိုးလုံးတွင် ရှိသည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Cell membrane",
            "Cell wall",
            "Chloroplast",
            "Large permanent vacuole",
          ],
          optionsMy: [
            "ဆဲလ်မြှေးပါး",
            "ဆဲလ်နံရံ",
            "ကလိုရိုဖလပ်စ်",
            "ကြီးမားသည့် အမြဲတည်ရှိသော ဗက်ကျူးအိုးလ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Day 3's sorting activity -- which items went into the 'Found in Both' bucket?",
            "This structure controls what substances enter and leave the cell in every living cell.",
          ],
          hintsMy: [
            "Day 3 ၏ စီစစ်ခြင်းလှုပ်ရှားမှုကို ပြန်သတိရကြည့်ပါ -- မည်သည့်အရာများသည် 'နှစ်မျိုးလုံးတွင် တွေ့ရသည်' ခြင်းထဲသို့ ရောက်ခဲ့သနည်း။",
            "ဤဖွဲ့စည်းပုံသည် သက်ရှိဆဲလ်တိုင်း၏ ဝင်ထွက်ပစ္စည်းများကို ထိန်းချုပ်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A palisade mesophyll cell is packed with chloroplasts near the top of a leaf. Which characteristic of a specialised cell does this best demonstrate?",
          questionMy:
              "ပါလီဆိတ် အလယ်ခေါင်ဆဲလ်တွင် အရွက်၏ အထက်ပိုင်းအနီးတွင် ကလိုရိုဖလပ်စ်များ ပြည့်နှက်နေသည်။ ဤသည်က သီးသန့်ဆဲလ်၏ မည်သည့်လက္ခဏာကို အကောင်းဆုံး ဖော်ပြသနည်း။",
          optionsEn: [
            "Its structure is adapted to carry out its specific function efficiently",
            "It has no particular adaptation at all",
            "It is identical to every other plant cell",
            "It cannot carry out photosynthesis",
          ],
          optionsMy: [
            "၎င်း၏ ဖွဲ့စည်းပုံသည် သီးခြားလုပ်ဆောင်ချက်ကို ထိရောက်စွာ လုပ်ဆောင်နိုင်ရန် လိုက်လျောညီထွေဖြစ်နေသည်",
            "မည်သည့်တိကျသော လိုက်လျောညီထွေမှုမျှ လုံးဝမရှိပါ",
            "အခြားအပင်ဆဲလ်တိုင်းနှင့် အတူတူပင်ဖြစ်သည်",
            "ဓာတ်စင့်ပြုပြင်ခြင်း မလုပ်နိုင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think back to the reading passage's conclusion about specialised cells.",
            "The position and organelle content of this cell both relate directly to catching sunlight.",
          ],
          hintsMy: [
            "သီးသန့်ဆဲလ်များနှင့်ပတ်သက်သော စာဖတ်ခန်း၏ ကောက်ချက်ကို ပြန်သတိရကြည့်ပါ။",
            "ဤဆဲလ်၏ တည်နေရာနှင့် အင်္ဂါပါဝင်မှုနှစ်ခုစလုံးသည် နေရောင်ခြည်ဖမ်းယူခြင်းနှင့် တိုက်ရိုက်ဆက်စပ်နေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Put these levels of organisation in the correct order, from smallest to largest: organ, tissue, cell, organ system.",
          questionMy:
              "အင်္ဂါ၊ တစ်ရှူး၊ ဆဲလ်၊ အင်္ဂါစနစ် -- ဤဖွဲ့စည်းပုံအဆင့်များကို အသေးဆုံးမှ အကြီးဆုံးသို့ မှန်ကန်သောအစီအစဉ်ဖြင့် စီပါ။",
          optionsEn: [
            "Cell, tissue, organ, organ system",
            "Tissue, cell, organ, organ system",
            "Organ, cell, tissue, organ system",
            "Organ system, organ, cell, tissue",
          ],
          optionsMy: [
            "ဆဲလ်၊ တစ်ရှူး၊ အင်္ဂါ၊ အင်္ဂါစနစ်",
            "တစ်ရှူး၊ ဆဲလ်၊ အင်္ဂါ၊ အင်္ဂါစနစ်",
            "အင်္ဂါ၊ ဆဲလ်၊ တစ်ရှူး၊ အင်္ဂါစနစ်",
            "အင်္ဂါစနစ်၊ အင်္ဂါ၊ ဆဲလ်၊ တစ်ရှူး",
          ],
          correctIndex: 0,
          hintsEn: [
            "The smallest living unit always comes first in this sequence.",
            "Similar cells group into a tissue before different tissues combine into an organ.",
          ],
          hintsMy: [
            "အသက်ရှင်ခြင်း၏ အသေးငယ်ဆုံးယူနစ်သည် ဤအစီအစဉ်တွင် အမြဲပထမဆုံးဖြစ်သည်။",
            "ဆင်တူဆဲလ်များသည် တစ်ရှူးတစ်ခုအဖြစ် စုစည်းပြီးမှ မတူညီသောတစ်ရှူးများ ပေါင်းစပ်၍ အင်္ဂါတစ်ခု ဖြစ်လာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which structure gives a plant cell its fixed, rigid, box-like shape?",
          questionMy: "အပင်ဆဲလ်တစ်ခုအား ခိုင်မာသော လေးထောင့်ပုံသဏ္ဍာန်ပေးသော ဖွဲ့စည်းပုံမှာ အဘယ်နည်း။",
          optionsEn: [
            "The cellulose cell wall",
            "The cell membrane",
            "The nucleus",
            "The mitochondria",
          ],
          optionsMy: [
            "ဆယ်လူလိုစ် ဆဲလ်နံရံ",
            "ဆဲလ်မြှေးပါး",
            "နျူကလိယပ်စ်",
            "မိုက်တိုကွန်ဒရီးယားများ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This structure is completely absent in animal cells.",
            "It is made of a tough carbohydrate material.",
          ],
          hintsMy: [
            "ဤဖွဲ့စည်းပုံသည် တိရစ္ဆာန်ဆဲလ်များတွင် လုံးဝမရှိပါ။",
            "၎င်းကို ခိုင်ခံ့သော ကာဗိုဟိုက်ဒရိတ်ဒြပ်ပစ္စည်းဖြင့် ပြုလုပ်ထားသည်။",
          ],
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 4 (Capstone): "Cellular Biology Practical Studio"
// =====================================================================

const CourseWeekDef _igcseBioWeek4 = CourseWeekDef(
  id: "course-igcse-bio-w4",
  weekNumber: 4,
  titleEn: "Cellular Biology Practical Studio",
  titleMy: "ဆဲလ်ဇီဝဗေဒ လက်တွေ့စမ်းသပ်မှု စတူဒီယို",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w4-d1",
      dayNumber: 1,
      titleEn: "Magnification Calculation Quiz",
      titleMy: "ချဲ့ထွင်နှုန်း တွက်ချက်ခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A specimen has an actual size of 0.02 mm. Its image under a microscope measures 10 mm. What is the magnification used?",
          questionMy:
              "နမူနာတစ်ခု၏ အမှန်တကယ်အရွယ်အစားသည် ၀.၀၂ မီလီမီတာဖြစ်သည်။ အဏုကြည့်မှန်ဘီလူးအောက်တွင် ၎င်း၏ ပုံရိပ်သည် ၁၀ မီလီမီတာ ရှိသည်။ အသုံးပြုထားသော ချဲ့ထွင်နှုန်းမှာ အဘယ်နည်း။",
          optionsEn: ["×500", "×200", "×50", "×5000"],
          optionsMy: ["×500", "×200", "×50", "×5000"],
          correctIndex: 0,
          hintsEn: [
            "Magnification = image size ÷ actual size.",
            "Make sure both measurements are in the same unit before dividing: 10 ÷ 0.02.",
          ],
          hintsMy: [
            "ချဲ့ထွင်နှုန်း = ပုံရိပ်အရွယ်အစား ÷ အမှန်တကယ်အရွယ်အစား",
            "စားခြင်းမလုပ်ခင် တိုင်းတာမှုနှစ်ခုစလုံးကို ယူနစ်တူညီအောင် ပြောင်းလဲပါ -- ၁၀ ÷ ၀.၀၂ ကို တွက်ချက်ကြည့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "An onion cell has an actual diameter of 40 μm. Using a magnification of ×400, what is the diameter of its image?",
          questionMy:
              "ကြက်သွန်ဆဲလ်တစ်ခု၏ အမှန်တကယ်အချင်းသည် ၄၀ မိုက်ခရိုမီတာဖြစ်သည်။ ×400 ချဲ့ထွင်နှုန်းကို အသုံးပြုပါက ၎င်း၏ ပုံရိပ်အချင်းမှာ အဘယ်မျှရှိမည်နည်း။",
          optionsEn: ["16 mm", "1.6 mm", "160 mm", "0.16 mm"],
          optionsMy: ["၁၆ မီလီမီတာ", "၁.၆ မီလီမီတာ", "၁၆၀ မီလီမီတာ", "၀.၁၆ မီလီမီတာ"],
          correctIndex: 0,
          hintsEn: [
            "Image size = actual size × magnification: 40 μm × 400 = 16,000 μm.",
            "Remember to convert your final answer from micrometres (μm) into millimetres (mm) -- 1000 μm = 1 mm.",
          ],
          hintsMy: [
            "ပုံရိပ်အရွယ်အစား = အမှန်တကယ်အရွယ်အစား × ချဲ့ထွင်နှုန်း -- ၄၀ μm × ၄၀၀ = ၁၆,၀၀၀ μm",
            "နောက်ဆုံးအဖြေကို မိုက်ခရိုမီတာ (μm) မှ မီလီမီတာ (mm) သို့ ပြောင်းလဲရန် မမေ့ပါနှင့် -- ၁၀၀၀ μm = ၁ mm",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which part of a light microscope is used to control the amount of light reaching the specimen?",
          questionMy:
              "နမူနာသို့ ရောက်ရှိသော အလင်းပမာဏကို ထိန်းချုပ်ရန် အသုံးပြုသော အလင်းအဏုကြည့်မှန်ဘီလူး၏ အစိတ်အပိုင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "The diaphragm",
            "The eyepiece lens",
            "The stage",
            "The objective lens",
          ],
          optionsMy: [
            "အလင်းထိန်းချုပ်ကိရိယာ (Diaphragm)",
            "မျက်စိဘက်မှန်ဘီလူး (Eyepiece Lens)",
            "စင်ပြင် (Stage)",
            "အာရုံခံမှန်ဘီလူး (Objective Lens)",
          ],
          correctIndex: 0,
          hintsEn: [
            "This part is usually located just below the stage.",
            "Too much light can wash out fine detail in a transparent specimen; too little makes it too dark to see.",
          ],
          hintsMy: [
            "ဤအစိတ်အပိုင်းသည် ပုံမှန်အားဖြင့် စင်ပြင်၏ အောက်ဘက်တွင် တည်ရှိသည်။",
            "အလင်းလွန်ကဲပါက ပွင့်လင်းသောနမူနာ၏ အသေးစိတ်အချက်များ ပျောက်ဆုံးနိုင်ပြီး၊ အလင်းနည်းလွန်းပါက မှောင်လွန်းသဖြင့် မမြင်ရနိုင်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A student uses a ×10 eyepiece lens together with a ×40 objective lens. What is the total magnification?",
          questionMy:
              "ကျောင်းသားတစ်ဦးသည် ×10 မျက်စိဘက်မှန်ဘီလူးနှင့် ×40 အာရုံခံမှန်ဘီလူးကို အတူတကွ အသုံးပြုသည်။ စုစုပေါင်း ချဲ့ထွင်နှုန်းမှာ အဘယ်နည်း။",
          optionsEn: ["×400", "×50", "×4", "×10"],
          optionsMy: ["×400", "×50", "×4", "×10"],
          correctIndex: 0,
          hintsEn: [
            "Total magnification = eyepiece magnification × objective magnification.",
            "Multiply the two numbers together: 10 × 40.",
          ],
          hintsMy: [
            "စုစုပေါင်းချဲ့ထွင်နှုန်း = မျက်စိဘက်ချဲ့ထွင်နှုန်း × အာရုံခံချဲ့ထွင်နှုန်း",
            "ကိန်းဂဏန်းနှစ်ခုကို မြှောက်ကြည့်ပါ -- ၁၀ × ၄၀",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w4-d2",
      dayNumber: 2,
      titleEn: "Match the Microscope Parts",
      titleMy: "အဏုကြည့်မှန်ဘီလူး အစိတ်အပိုင်းများကို တွဲစပ်ကြမည်",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w4-dm-1",
          termEn: "Eyepiece lens",
          termMy: "မျက်စိဘက် မှန်ဘီလူး (Eyepiece Lens)",
          matchEn:
              "The lens closest to the eye, usually magnifying the image ×10",
          matchMy:
              "မျက်လုံးနှင့် အနီးဆုံးရှိသော မှန်ဘီလူးဖြစ်ပြီး ပုံမှန်အားဖြင့် ×10 ချဲ့ထွင်ပေးသည်",
          colorValue: 0xFF00BFA5,
        ),
        DragMatchPair(
          id: "igcsebio-w4-dm-2",
          termEn: "Objective lens",
          termMy: "အာရုံခံ မှန်ဘီလူး (Objective Lens)",
          matchEn:
              "The lens closest to the specimen; several are mounted on a rotating nosepiece",
          matchMy:
              "နမူနာနှင့် အနီးဆုံးရှိသော မှန်ဘီလူးဖြစ်ပြီး၊ လှည့်နိုင်သော နှာခေါင်းစနစ်ပေါ်တွင် အများအပြားတပ်ဆင်ထားသည်",
          colorValue: 0xFF536DFE,
        ),
        DragMatchPair(
          id: "igcsebio-w4-dm-3",
          termEn: "Stage",
          termMy: "စင်ပြင် (Stage)",
          matchEn: "The flat platform that holds the microscope slide in place",
          matchMy: "မှန်ပြားကို ခိုင်မာစွာ တင်ထားပေးသော ပြားပြားစင်",
          colorValue: 0xFFFFAB40,
        ),
        DragMatchPair(
          id: "igcsebio-w4-dm-4",
          termEn: "Coarse focus knob",
          termMy: "ကြမ်းအာရုံချိန်ညှိအိမ် (Coarse Focus Knob)",
          matchEn:
              "Moves the stage up or down quickly for rough, initial focusing",
          matchMy:
              "အစပိုင်း၊ ရိုင်းရိုင်း အာရုံချိန်ညှိရန် စင်ပြင်ကို လျင်မြန်စွာ အထက်/အောက် ရွှေ့ပေးသည်",
          colorValue: 0xFFD500F9,
        ),
        DragMatchPair(
          id: "igcsebio-w4-dm-5",
          termEn: "Fine focus knob",
          termMy: "သေသေချာချာ အာရုံချိန်ညှိအိမ် (Fine Focus Knob)",
          matchEn: "Moves the stage very slightly for sharp, precise focusing",
          matchMy: "ပီပြင်ကျပ်တည်းသော အာရုံချိန်ညှိမှုအတွက် စင်ပြင်ကို အနည်းငယ်သာ ရွှေ့ပေးသည်",
          colorValue: 0xFFFF4081,
        ),
        DragMatchPair(
          id: "igcsebio-w4-dm-6",
          termEn: "Diaphragm",
          termMy: "အလင်းထိန်းချုပ်ကိရိယာ (Diaphragm)",
          matchEn: "Controls how much light passes up through the specimen",
          matchMy: "နမူနာသို့ ဖြတ်သန်းရောက်ရှိသော အလင်းပမာဏကို ထိန်းချုပ်ပေးသည်",
          colorValue: 0xFF64DD17,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w4-d3",
      dayNumber: 3,
      titleEn: "Sort: Term 1 Synthesis",
      titleMy: "စီစစ်ကြမည် - ပထမနှစ်ဝက် ပေါင်းစည်းသုံးသပ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Life Process (MRS GREN)",
          "Cell Structure",
          "Classification",
        ],
        bucketsMy: [
          "အသက်ရှင်ဖြစ်စဉ် (MRS GREN)",
          "ဆဲလ်ဖွဲ့စည်းပုံ",
          "အမျိုးအစားခွဲခြင်း",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w4-sort-1",
            labelEn: "Movement",
            labelMy: "လှုပ်ရှားမှု (Movement)",
            correctBucketEn: "Life Process (MRS GREN)",
            correctBucketMy: "အသက်ရှင်ဖြစ်စဉ် (MRS GREN)",
          ),
          SortingItem(
            id: "igcsebio-w4-sort-2",
            labelEn: "Nucleus",
            labelMy: "နျူကလိယပ်စ်",
            correctBucketEn: "Cell Structure",
            correctBucketMy: "ဆဲလ်ဖွဲ့စည်းပုံ",
          ),
          SortingItem(
            id: "igcsebio-w4-sort-3",
            labelEn: "Kingdom Fungi",
            labelMy: "မှိုနိုင်ငံ (Kingdom Fungi)",
            correctBucketEn: "Classification",
            correctBucketMy: "အမျိုးအစားခွဲခြင်း",
          ),
          SortingItem(
            id: "igcsebio-w4-sort-4",
            labelEn: "Binomial naming system",
            labelMy: "ဒွိနာမ် အမည်တပ်စနစ်",
            correctBucketEn: "Classification",
            correctBucketMy: "အမျိုးအစားခွဲခြင်း",
          ),
          SortingItem(
            id: "igcsebio-w4-sort-5",
            labelEn: "Chloroplast",
            labelMy: "ကလိုရိုဖလပ်စ်",
            correctBucketEn: "Cell Structure",
            correctBucketMy: "ဆဲလ်ဖွဲ့စည်းပုံ",
          ),
          SortingItem(
            id: "igcsebio-w4-sort-6",
            labelEn: "Excretion",
            labelMy: "စွန့်ထုတ်ခြင်း (Excretion)",
            correctBucketEn: "Life Process (MRS GREN)",
            correctBucketMy: "အသက်ရှင်ဖြစ်စဉ် (MRS GREN)",
          ),
          SortingItem(
            id: "igcsebio-w4-sort-7",
            labelEn: "Vertebrate",
            labelMy: "ကျောရိုးရှိသတ္တဝါ (Vertebrate)",
            correctBucketEn: "Classification",
            correctBucketMy: "အမျိုးအစားခွဲခြင်း",
          ),
          SortingItem(
            id: "igcsebio-w4-sort-8",
            labelEn: "Mitochondria",
            labelMy: "မိုက်တိုကွန်ဒရီးယားများ",
            correctBucketEn: "Cell Structure",
            correctBucketMy: "ဆဲလ်ဖွဲ့စည်းပုံ",
          ),
          SortingItem(
            id: "igcsebio-w4-sort-9",
            labelEn: "Reproduction",
            labelMy: "မျိုးပွားခြင်း (Reproduction)",
            correctBucketEn: "Life Process (MRS GREN)",
            correctBucketMy: "အသက်ရှင်ဖြစ်စဉ် (MRS GREN)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w4-d4",
      dayNumber: 4,
      titleEn: "Reading: Zayar Htet's Practical Exam",
      titleMy: "စာဖတ်ခြင်း - ဇေယျာထက်၏ လက်တွေ့စာမေးပွဲ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Zayar Htet's Practical Exam",
        titleMy: "ဇေယျာထက်၏ လက်တွေ့စာမေးပွဲ",
        passageEn:
            "On the morning of his IGCSE Biology practical exam, Zayar Htet was handed a prepared slide labelled only \"Specimen X\" and a light microscope, with instructions to identify what type of cell it showed and calculate its actual size from a measurement he would take himself. Using the ×10 eyepiece and the ×40 objective lens, he calculated his total magnification was ×400 before even looking through the eyepiece.\n\nFocusing carefully with the coarse knob first, then the fine focus knob, he found a single layer of neat, brick-shaped cells, each with a thick, rigid outer boundary and a large, clear, fluid-filled space taking up most of the cell's interior. He recognised the thick boundary as a cellulose cell wall and the large space as a permanent vacuole -- both structures he knew were found only in plant cells, never in animal cells -- so he confidently wrote \"plant cell\" in his answer booklet.\n\nFor the final question, Zayar Htet measured the image of one cell using the eyepiece graticule: it measured 20 mm across. Applying the magnification formula, actual size equals image size divided by magnification, he calculated 20 mm ÷ 400, which gave an actual cell size of 0.05 mm. Checking his working once more, he felt satisfied that combining his classification knowledge, his understanding of cell structure, and a careful magnification calculation had let him answer every part of the practical with confidence.",
        passageMy:
            "ဇေယျာထက်၏ IGCSE ဇီဝဗေဒ လက်တွေ့စာမေးပွဲနံနက်ခင်းတွင် \"Specimen X\" ဟုသာ အမှတ်အသားပြုထားသည့် ပြင်ဆင်ထားသော မှန်ပြားတစ်ချပ်နှင့် အလင်းအဏုကြည့်မှန်ဘီလူးတစ်လုံးကို လက်ခံရရှိခဲ့ပြီး၊ ၎င်းတွင်ပါဝင်သော ဆဲလ်အမျိုးအစားကို ဖော်ထုတ်ပြီး ကိုယ်တိုင်တိုင်းတာယူမည့် တိုင်းတာမှုတစ်ခုမှ ၎င်း၏ အမှန်တကယ် အရွယ်အစားကို တွက်ချက်ရန် ညွှန်ကြားချက်ကို ရရှိခဲ့သည်။ ×10 မျက်စိဘက်မှန်ဘီလူးနှင့် ×40 အာရုံခံမှန်ဘီလူးကို အသုံးပြု၍ မျက်စိဖြင့် အဏုကြည့်မမကြည့်ခင်ပင် စုစုပေါင်း ချဲ့ထွင်နှုန်း ×400 ဖြစ်ကြောင်း သူ တွက်ချက်ခဲ့သည်။\n\nကြမ်းအာရုံချိန်ညှိအိမ်ဖြင့် ဦးစွာအာရုံချိန်ညှိပြီး သေသေချာချာ အာရုံချိန်ညှိအိမ်ဖြင့် ဆက်လက်ချိန်ညှိကာ၊ ဆဲလ်တစ်ခုစီတွင် ထူထဲပြီး ခိုင်ခန့်သော အပြင်ဘက်နယ်နိမိတ်တစ်ခုနှင့် ဆဲလ်၏ အတွင်းပိုင်းအများစုကို ဖုံးလွှမ်းထားသော ကြည်လင်ပြီး အရည်ဖြင့်ဖြည့်ထားသော နေရာကြီးတစ်ခုပါရှိသော အုတ်ပုံသဏ္ဍာန် ဆဲလ်တန်းလိုက် အလွှာတစ်ခုကို တွေ့ရှိခဲ့သည်။ ထူထဲသောနယ်နိမိတ်ကို ဆယ်လူလိုစ် ဆဲလ်နံရံအဖြစ်လည်းကောင်း၊ နေရာကြီးကို အမြဲတည်ရှိသော ဗက်ကျူးအိုးလ်အဖြစ်လည်းကောင်း ဇေယျာထက် ဖော်ထုတ်မှတ်မိခဲ့သည် -- ဤဖွဲ့စည်းပုံနှစ်ခုစလုံးသည် အပင်ဆဲလ်များတွင်သာ တွေ့ရပြီး တိရစ္ဆာန်ဆဲလ်များတွင် လုံးဝမတွေ့ရကြောင်း သူ သိရှိထားသည် -- ထို့ကြောင့် သူ၏ အဖြေစာအုပ်တွင် \"အပင်ဆဲလ်\" ဟု ယုံကြည်စွာ ရေးသားခဲ့သည်။\n\nနောက်ဆုံးမေးခွန်းအတွက် ဇေယျာထက်သည် မျက်စိဘက်မှန်ဘီလူး ပြင်းအတိုင်းအတာ (eyepiece graticule) ကို အသုံးပြု၍ ဆဲလ်တစ်ခု၏ ပုံရိပ်ကို တိုင်းတာခဲ့ရာ ၂၀ မီလီမီတာ ရှိကြောင်း တွေ့ရှိခဲ့သည်။ ချဲ့ထွင်နှုန်းဆိုင်ရာ ညီမျှခြင်းကို အသုံးပြု၍ -- အမှန်တကယ်အရွယ်အစားသည် ပုံရိပ်အရွယ်အစားကို ချဲ့ထွင်နှုန်းဖြင့် စားခြင်းနှင့် ညီမျှသည် -- သူသည် ၂၀ မီလီမီတာကို ၄၀၀ ဖြင့်စား၍ တွက်ချက်ခဲ့ရာ ဆဲလ်၏ အမှန်တကယ်အရွယ်အစား ၀.၀၅ မီလီမီတာ ရရှိခဲ့သည်။ သူ၏ တွက်ချက်မှုကို နောက်တစ်ကြိမ် ပြန်စစ်ဆေးပြီးနောက်၊ အမျိုးအစားခွဲခြားခြင်း အသိပညာ၊ ဆဲလ်ဖွဲ့စည်းပုံ နားလည်မှု၊ နှင့် ဂရုတစိုက် ချဲ့ထွင်နှုန်း တွက်ချက်မှုတို့ကို ပေါင်းစပ်အသုံးပြုနိုင်ခဲ့ခြင်းက လက်တွေ့စာမေးပွဲ၏ အစိတ်အပိုင်းတိုင်းကို ယုံကြည်စွာ ဖြေဆိုနိုင်စေခဲ့ကြောင်း သူ ကျေနပ်အားရဖြစ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what was Zayar Htet's total magnification, and how did he calculate it?",
            questionMy:
                "စာပိုဒ် ၁ အရ ဇေယျာထက်၏ စုစုပေါင်းချဲ့ထွင်နှုန်းမှာ အဘယ်မျှရှိပြီး ၎င်းကို မည်သို့တွက်ချက်ခဲ့သနည်း။",
            optionsEn: [
              "×400, by multiplying the ×10 eyepiece by the ×40 objective lens",
              "×50, by adding the two lens values together",
              "×10, using only the eyepiece lens",
              "×40, using only the objective lens",
            ],
            optionsMy: [
              "×400 -- ×10 မျက်စိဘက်မှန်ဘီလူးကို ×40 အာရုံခံမှန်ဘီလူးနှင့် မြှောက်၍",
              "×50 -- မှန်ဘီလူးနှစ်ခု၏ တန်ဖိုးများကို ပေါင်း၍",
              "×10 -- မျက်စိဘက်မှန်ဘီလူးသာ အသုံးပြု၍",
              "×40 -- အာရုံခံမှန်ဘီလူးသာ အသုံးပြု၍",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of paragraph 1.",
              "Total magnification = eyepiece magnification × objective magnification.",
            ],
            hintsMy: [
              "စာပိုဒ် ၁ ၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "စုစုပေါင်းချဲ့ထွင်နှုန်း = မျက်စိဘက်ချဲ့ထွင်နှုန်း × အာရုံခံချဲ့ထွင်နှုန်း",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on paragraph 2, which two structures led Zayar Htet to conclude the specimen was a plant cell?",
            questionMy:
                "စာပိုဒ် ၂ အရ ဇေယျာထက်အား နမူနာသည် အပင်ဆဲလ်ဖြစ်ကြောင်း ကောက်ချက်ချစေသည့် ဖွဲ့စည်းပုံနှစ်ခုမှာ အဘယ်နည်း။",
            optionsEn: [
              "A cellulose cell wall and a permanent vacuole",
              "A nucleus and mitochondria",
              "A cell membrane and ribosomes",
              "Chloroplasts and a flagellum",
            ],
            optionsMy: [
              "ဆယ်လူလိုစ် ဆဲလ်နံရံနှင့် အမြဲတည်ရှိသော ဗက်ကျူးအိုးလ်",
              "နျူကလိယပ်စ်နှင့် မိုက်တိုကွန်ဒရီးယား",
              "ဆဲလ်မြှေးပါးနှင့် ရိုက်ဘိုဆုန်းများ",
              "ကလိုရိုဖလပ်စ်များနှင့် အမြီးမွှား",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence where Zayar Htet names the two structures he recognised.",
              "Both structures are ones the reading passage says are found only in plant cells, never in animal cells.",
            ],
            hintsMy: [
              "ဇေယျာထက် သတ်မှတ်မှတ်မိသော ဖွဲ့စည်းပုံနှစ်ခုကို အမည်ပေးထားသည့် စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဖွဲ့စည်းပုံနှစ်ခုစလုံးသည် အပင်ဆဲလ်များတွင်သာ တွေ့ရပြီး တိရစ္ဆာန်ဆဲလ်များတွင် လုံးဝမတွေ့ရဟု စာဖတ်ခန်းက ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "In paragraph 3, Zayar Htet measured an image of 20 mm at ×400 magnification. What formula did he use to find the actual size, and what was the answer?",
            questionMy:
                "စာပိုဒ် ၃ တွင် ဇေယျာထက်သည် ×400 ချဲ့ထွင်နှုန်းတွင် ၂၀ မီလီမီတာ ပုံရိပ်ကို တိုင်းတာခဲ့သည်။ အမှန်တကယ်အရွယ်အစားရှာရန် မည်သည့်ညီမျှခြင်းကို အသုံးပြုပြီး အဖြေမှာ အဘယ်နည်း။",
            optionsEn: [
              "Actual size = image size ÷ magnification, giving 0.05 mm",
              "Actual size = image size × magnification, giving 8000 mm",
              "Actual size = magnification ÷ image size, giving 20 mm",
              "Actual size = image size + magnification, giving 420 mm",
            ],
            optionsMy: [
              "အမှန်တကယ်အရွယ်အစား = ပုံရိပ်အရွယ်အစား ÷ ချဲ့ထွင်နှုန်း၊ အဖြေ ၀.၀၅ မီလီမီတာ",
              "အမှန်တကယ်အရွယ်အစား = ပုံရိပ်အရွယ်အစား × ချဲ့ထွင်နှုန်း၊ အဖြေ ၈၀၀၀ မီလီမီတာ",
              "အမှန်တကယ်အရွယ်အစား = ချဲ့ထွင်နှုန်း ÷ ပုံရိပ်အရွယ်အစား၊ အဖြေ ၂၀ မီလီမီတာ",
              "အမှန်တကယ်အရွယ်အစား = ပုံရိပ်အရွယ်အစား + ချဲ့ထွင်နှုန်း၊ အဖြေ ၄၂၀ မီလီမီတာ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the formula stated directly in paragraph 3.",
              "Divide 20 by 400 to check the working yourself.",
            ],
            hintsMy: [
              "စာပိုဒ် ၃ တွင် တိုက်ရိုက်ဖော်ပြထားသော ညီမျှခြင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ကိုယ်တိုင်စစ်ဆေးရန် ၂၀ ကို ၄၀၀ ဖြင့်စားကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What is the overall main idea of this passage, based on all three paragraphs?",
            questionMy:
                "စာပိုဒ်သုံးပိုဒ်လုံးအရ ဤစာဖတ်ခန်း၏ အလုံးစုံအဓိကအကြောင်းအရာမှာ အဘယ်နည်း။",
            optionsEn: [
              "Success in the practical exam required combining classification knowledge, cell structure knowledge, and accurate magnification calculation",
              "Magnification calculations are the only skill needed in a biology practical",
              "Zayar Htet failed to identify the specimen correctly",
              "The type of lens used does not affect the total magnification",
            ],
            optionsMy: [
              "လက်တွေ့စာမေးပွဲတွင် အောင်မြင်ရန် အမျိုးအစားခွဲခြားခြင်း အသိပညာ၊ ဆဲလ်ဖွဲ့စည်းပုံ အသိပညာနှင့် တိကျသော ချဲ့ထွင်နှုန်းတွက်ချက်မှုတို့ကို ပေါင်းစပ်အသုံးပြုရန် လိုအပ်သည်",
              "ဇီဝဗေဒ လက်တွေ့တွင် ချဲ့ထွင်နှုန်းတွက်ချက်ခြင်းသည် တစ်ခုတည်းသောလိုအပ်သည့် ကျွမ်းကျင်မှုဖြစ်သည်",
              "ဇေယျာထက်သည် နမူနာကို မှန်ကန်စွာ ဖော်ထုတ်ရန် မအောင်မြင်ခဲ့ပါ",
              "အသုံးပြုသော မှန်ဘီလူးအမျိုးအစားသည် စုစုပေါင်းချဲ့ထွင်နှုန်းကို မထိခိုက်ပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Think about what paragraph 3's final sentence says he combined to succeed.",
              "Consider how each paragraph covers a different skill from across the whole term.",
            ],
            hintsMy: [
              "အောင်မြင်ရန် သူပေါင်းစပ်အသုံးပြုခဲ့သည့်အရာများကို ဖော်ပြထားသော စာပိုဒ် ၃ ၏ နောက်ဆုံးစာကြောင်းကို စဉ်းစားကြည့်ပါ။",
              "စာပိုဒ်တစ်ခုစီသည် ပထမနှစ်ဝက်တစ်လျှောက်ရှိ ကျွမ်းကျင်မှုမတူညီများကို မည်သို့ ဖော်ပြထားသည်ကို ထည့်သွင်းစဉ်းစားပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w4-d5",
      dayNumber: 5,
      titleEn: "Term 1 Recap: Full Synthesis",
      titleMy: "ပထမနှစ်ဝက် ပြန်လည်သုံးသပ်ခြင်း - အပြည့်အစုံ ပေါင်းစည်းသုံးသပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which term describes a group of organisms that can interbreed to produce fertile offspring?",
          questionMy:
              "အချင်းချင်း လိင်တွဲပေါင်းစပ်၍ မျိုးအောင်နိုင်သော သားစဉ်မြေးဆက်ကို ထုတ်ပေးနိုင်သော သက်ရှိအုပ်စုကို ဖော်ပြသော ဝေါဟာရမှာ အဘယ်နည်း။",
          optionsEn: ["Species", "Kingdom", "Genus", "Organ system"],
          optionsMy: [
            "မျိုးစိတ် (Species)",
            "နိုင်ငံအုပ်စု (Kingdom)",
            "မျိုးရင်း (Genus)",
            "အင်္ဂါစနစ် (Organ system)",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the key definition from Week 1.",
            "Think back to the horse-and-donkey (mule) example.",
          ],
          hintsMy: [
            "ဤသည်မှာ ပထမပတ်မှ အဓိကအဓိပ္ပာယ်ဖွင့်ဆိုချက်ဖြစ်သည်။",
            "မြင်းနှင့် မြည်း (မြင်းလား) ဥပမာကို ပြန်သတိရကြည့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A cell contains a cellulose cell wall, a large permanent vacuole, and chloroplasts. Which kingdom does the organism most likely belong to, and what type of cell is it?",
          questionMy:
              "ဆဲလ်တစ်ခုတွင် ဆယ်လူလိုစ် ဆဲလ်နံရံ၊ ကြီးမားသည့် အမြဲတည်ရှိသော ဗက်ကျူးအိုးလ်နှင့် ကလိုရိုဖလပ်စ်များ ပါဝင်သည်။ ဤသက်ရှိသည် မည်သည့်နိုင်ငံအုပ်စုတွင် ဖြစ်နိုင်ဆုံးဖြစ်ပြီး ဆဲလ်အမျိုးအစားမှာ အဘယ်နည်း။",
          optionsEn: [
            "Plantae; a plant cell",
            "Fungi; a fungal cell",
            "Animalia; an animal cell",
            "Prokaryotae; a bacterial cell",
          ],
          optionsMy: [
            "အပင်နိုင်ငံ (Plantae); အပင်ဆဲလ်",
            "မှိုနိုင်ငံ (Fungi); မှိုဆဲလ်",
            "တိရစ္ဆာန်နိုင်ငံ (Animalia); တိရစ္ဆာန်ဆဲလ်",
            "ပရိုကာရီယိုတ်နိုင်ငံ (Prokaryotae); ဘက်တီးရီးယားဆဲလ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall which structures were listed in Week 3's sorting activity as 'Plant Only'.",
            "Only one kingdom's members photosynthesise using chloroplasts.",
          ],
          hintsMy: [
            "တတိယပတ်၏ စီစစ်ခြင်းလှုပ်ရှားမှုတွင် 'အပင်တွင်သာ' အဖြစ် စာရင်းပြုစုထားသော ဖွဲ့စည်းပုံများကို ပြန်သတိရကြည့်ပါ။",
            "ကလိုရိုဖလပ်စ်ကို အသုံးပြု၍ ဓာတ်စင့်ပြုပြင်ခြင်း ပြုလုပ်နိုင်သည့် နိုင်ငံအုပ်စုတစ်ခုတည်းသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A cell has an actual size of 0.01 mm and is magnified ×300. What is the size of its image?",
          questionMy:
              "ဆဲလ်တစ်ခု၏ အမှန်တကယ်အရွယ်အစားသည် ၀.၀၁ မီလီမီတာဖြစ်ပြီး ×300 ချဲ့ထွင်ထားသည်။ ၎င်း၏ ပုံရိပ်အရွယ်အစားမှာ အဘယ်မျှရှိမည်နည်း။",
          optionsEn: ["3 mm", "0.3 mm", "30 mm", "300 mm"],
          optionsMy: ["၃ မီလီမီတာ", "၀.၃ မီလီမီတာ", "၃၀ မီလီမီတာ", "၃၀၀ မီလီမီတာ"],
          correctIndex: 0,
          hintsEn: [
            "Image size = actual size × magnification.",
            "0.01 × 300 = 3.",
          ],
          hintsMy: [
            "ပုံရိပ်အရွယ်အစား = အမှန်တကယ်အရွယ်အစား × ချဲ့ထွင်နှုန်း",
            "၀.၀၁ × ၃၀၀ = ၃",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these correctly lists all seven MRS GREN life processes?",
          questionMy:
              "အောက်ပါတို့အနက် MRS GREN သက်ရှင်ဖြစ်စဉ် ခုနစ်ခုလုံးကို မှန်ကန်စွာ ဖော်ပြထားသည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Movement, Respiration, Sensitivity, Growth, Reproduction, Excretion, Nutrition",
            "Movement, Respiration, Species, Growth, Reproduction, Excretion, Nutrition",
            "Movement, Respiration, Sensitivity, Genus, Reproduction, Excretion, Nutrition",
            "Movement, Respiration, Sensitivity, Growth, Reproduction, Evolution, Nutrition",
          ],
          optionsMy: [
            "လှုပ်ရှားမှု၊ အသက်ရှုခြင်း၊ လှုံ့ဆော်မှုတုံ့ပြန်နိုင်စွမ်း၊ ကြီးထွားခြင်း၊ မျိုးပွားခြင်း၊ စွန့်ထုတ်ခြင်း၊ အာဟာရယူခြင်း",
            "လှုပ်ရှားမှု၊ အသက်ရှုခြင်း၊ မျိုးစိတ်၊ ကြီးထွားခြင်း၊ မျိုးပွားခြင်း၊ စွန့်ထုတ်ခြင်း၊ အာဟာရယူခြင်း",
            "လှုပ်ရှားမှု၊ အသက်ရှုခြင်း၊ လှုံ့ဆော်မှုတုံ့ပြန်နိုင်စွမ်း၊ မျိုးရင်း၊ မျိုးပွားခြင်း၊ စွန့်ထုတ်ခြင်း၊ အာဟာရယူခြင်း",
            "လှုပ်ရှားမှု၊ အသက်ရှုခြင်း၊ လှုံ့ဆော်မှုတုံ့ပြန်နိုင်စွမ်း၊ ကြီးထွားခြင်း၊ မျိုးပွားခြင်း၊ အနွယ်ဖွံ့ဖြိုးခြင်း၊ အာဟာရယူခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Each letter of MRS GREN stands for exactly one life process.",
            "Species, Genus, and Evolution are not among the seven MRS GREN terms.",
          ],
          hintsMy: [
            "MRS GREN ၏ စာလုံးတစ်လုံးစီသည် သက်ရှင်ဖြစ်စဉ်တစ်ခုစီကို တိတိကျကျ ကိုယ်စားပြုသည်။",
            "မျိုးစိတ်၊ မျိုးရင်းနှင့် အနွယ်ဖွံ့ဖြိုးခြင်းတို့သည် MRS GREN ခုနစ်ခုထဲတွင် မပါဝင်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A dog is classified as a vertebrate. Which structure is the reason for this classification?",
          questionMy:
              "ခွေးတစ်ကောင်ကို ကျောရိုးရှိသတ္တဝါအဖြစ် သတ်မှတ်ထားသည်။ ဤသတ်မှတ်ချက်၏ အကြောင်းရင်းဖြစ်သော ဖွဲ့စည်းပုံမှာ အဘယ်နည်း။",
          optionsEn: [
            "It has an internal backbone (vertebral column)",
            "It has a cell wall",
            "It has a large permanent vacuole",
            "It reproduces by binary fission",
          ],
          optionsMy: [
            "ခန္ဓာကိုယ်အတွင်း ကျောရိုး (vertebral column) ရှိသည်",
            "ဆဲလ်နံရံ ရှိသည်",
            "ကြီးမားသည့် အမြဲတည်ရှိသော ဗက်ကျူးအိုးလ် ရှိသည်",
            "အနှစ်နှစ်ခွဲခြင်းဖြင့် မျိုးပွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall the definition of 'vertebrate' from Week 2.",
            "This structure is a series of small bones running down the animal's back.",
          ],
          hintsMy: [
            "ဒုတိယပတ်မှ 'vertebrate' ၏ အဓိပ္ပာယ်ဖွင့်ဆိုချက်ကို ပြန်သတိရကြည့်ပါ။",
            "ဤဖွဲ့စည်းပုံသည် သတ္တဝါ၏ ကျောကုန်းတစ်လျှောက် ကျင်လည်နေသော အရိုးငယ်များစီးရီးဖြစ်သည်။",
          ],
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 1: "Characteristics and Classification of Living Organisms"
// (Weeks 1-4)
// =====================================================================

const CourseTermDef igcseBiologyTerm1 = CourseTermDef(
  id: "course-igcse-bio-t1",
  termNumber: 1,
  titleEn: "Characteristics and Classification of Living Organisms",
  titleMy: "သက်ရှိသတ္တဝါများ၏ လက္ခဏာများနှင့် အမျိုးအစားခွဲခြားခြင်း",
  certificateTitleEn: "Characteristics and Classification of Living Organisms",
  certificateTitleMy: "သက်ရှိသတ္တဝါများ၏ လက္ခဏာများနှင့် အမျိုးအစားခွဲခြားခြင်း",
  weeks: [
    _igcseBioWeek1,
    _igcseBioWeek2,
    _igcseBioWeek3,
    _igcseBioWeek4,
  ],
);
