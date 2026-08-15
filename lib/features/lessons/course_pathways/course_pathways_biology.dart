import '../../../models/child_model.dart';
import '../interactive_content_models.dart';
import '../mock_quiz_data.dart';
import 'course_pathways_core.dart';

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
          matchEn: "The removal of waste products of metabolism from the body",
          matchMy:
              "ခန္ဓာကိုယ်အတွင်းမှ ဇီဝဖြစ်စဉ်စွန့်ပစ်ပစ္စည်းများကို ထုတ်ပယ်ခြင်း",
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
            labelMy:
                "နေဝန်းပန်းပင်တစ်ပင် အပတ်စဉ် ပိုမိုမြင့်တက်ကြီးထွားနေခြင်း",
            correctBucketEn: "Shows the Characteristics of a Living Organism",
            correctBucketMy: "သက်ရှိတစ်ခု၏ လက္ခဏာများကို ပြသသည်",
          ),
          SortingItem(
            id: "igcsebio-w1-sort-2",
            labelEn: "A dog panting to cool itself down",
            labelMy:
                "ခွေးတစ်ကောင် ကိုယ်ခန္ဓာအေးအောင် လျှာထုတ်ပြီး ရှူသွင်းနေခြင်း",
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
            labelMy:
                "ငါးတစ်ကောင် ယူးရားဓာတ်ငွေ့ကို ပင်လယ်ရှူအိတ်မှတစ်ဆင့် စွန့်ထုတ်နေခြင်း",
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
            labelMy:
                "ကစားစရာစက်ရုပ်တစ်ခု နံရံနှင့်တိုက်မိသောအခါ လမ်းကြောင်းပြောင်းနေခြင်း",
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
      titleMy:
          "ပထမပတ် ပြန်လည်သုံးသပ်ခြင်း - သက်ရှင်ဖြစ်စဉ်များနှင့် အမည်တပ်ခြင်း",
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
          questionMy:
              "အောက်ပါသက်ရှိများအနက် ပရိုကာရီယိုတ်နိုင်ငံ (Prokaryotae) ဝင်သည့်အရာမှာ အဘယ်နည်း။",
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
          questionMy:
              "နှစ်ခြမ်းခွဲ ခွဲခြားဇယား (Dichotomous Key) ၏ အဓိကရည်ရွယ်ချက်မှာ အဘယ်နည်း။",
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
      titleMy:
          "ဒုတိယပတ် ပြန်လည်သုံးသပ်ခြင်း - နိုင်ငံအုပ်စုများနှင့် ခွဲခြားဇယားများ",
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
          questionMy:
              "မှိုများကို အပင်များနှင့် ခွဲခြားရန် အသုံးပြုသော လက္ခဏာမှာ အဘယ်နည်း။",
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
          questionMy:
              "ခရုသင်းတစ်ကောင်တွင် နူးညံ့သောခန္ဓာကိုယ်ရှိပြီး အတွင်းရိုးစုံ လုံးဝမရှိပါ။ ၎င်းကို မည်သို့ အကောင်းဆုံးသတ်မှတ်ရမည်နည်း။",
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
          questionMy:
              "နှစ်ခြမ်းခွဲ ခွဲခြားဇယားတစ်ခုတွင် အဆင့်တိုင်း၌ အဘယ်အရာဖြစ်ပေါ်သနည်း။",
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
          optionsEn: ["Mitochondrion", "Chloroplast", "Cell wall", "Nucleus"],
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
            correctBucketMy:
                "အပင်ဆဲလ်နှင့် တိရစ္ဆာန်ဆဲလ် နှစ်မျိုးလုံးတွင် တွေ့ရသည်",
          ),
          SortingItem(
            id: "igcsebio-w3-sort-6",
            labelEn: "Mitochondria",
            labelMy: "မိုက်တိုကွန်ဒရီးယားများ",
            correctBucketEn: "Found in Both Plant and Animal Cells",
            correctBucketMy:
                "အပင်ဆဲလ်နှင့် တိရစ္ဆာန်ဆဲလ် နှစ်မျိုးလုံးတွင် တွေ့ရသည်",
          ),
          SortingItem(
            id: "igcsebio-w3-sort-7",
            labelEn: "Cytoplasm",
            labelMy: "ဆဲလ်ရည် (Cytoplasm)",
            correctBucketEn: "Found in Both Plant and Animal Cells",
            correctBucketMy:
                "အပင်ဆဲလ်နှင့် တိရစ္ဆာန်ဆဲလ် နှစ်မျိုးလုံးတွင် တွေ့ရသည်",
          ),
          SortingItem(
            id: "igcsebio-w3-sort-8",
            labelEn: "Cell membrane",
            labelMy: "ဆဲလ်မြှေးပါး",
            correctBucketEn: "Found in Both Plant and Animal Cells",
            correctBucketMy:
                "အပင်ဆဲလ်နှင့် တိရစ္ဆာန်ဆဲလ် နှစ်မျိုးလုံးတွင် တွေ့ရသည်",
          ),
          SortingItem(
            id: "igcsebio-w3-sort-9",
            labelEn: "Ribosomes",
            labelMy: "ရိုက်ဘိုဆုန်းများ",
            correctBucketEn: "Found in Both Plant and Animal Cells",
            correctBucketMy:
                "အပင်ဆဲလ်နှင့် တိရစ္ဆာန်ဆဲလ် နှစ်မျိုးလုံးတွင် တွေ့ရသည်",
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
          questionMy:
              "အပင်ဆဲလ်တစ်ခုအား ခိုင်မာသော လေးထောင့်ပုံသဏ္ဍာန်ပေးသော ဖွဲ့စည်းပုံမှာ အဘယ်နည်း။",
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
          optionsMy: [
            "၁၆ မီလီမီတာ",
            "၁.၆ မီလီမီတာ",
            "၁၆၀ မီလီမီတာ",
            "၀.၁၆ မီလီမီတာ",
          ],
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
          matchMy:
              "ပီပြင်ကျပ်တည်းသော အာရုံချိန်ညှိမှုအတွက် စင်ပြင်ကို အနည်းငယ်သာ ရွှေ့ပေးသည်",
          colorValue: 0xFFFF4081,
        ),
        DragMatchPair(
          id: "igcsebio-w4-dm-6",
          termEn: "Diaphragm",
          termMy: "အလင်းထိန်းချုပ်ကိရိယာ (Diaphragm)",
          matchEn: "Controls how much light passes up through the specimen",
          matchMy:
              "နမူနာသို့ ဖြတ်သန်းရောက်ရှိသော အလင်းပမာဏကို ထိန်းချုပ်ပေးသည်",
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
      titleMy:
          "ပထမနှစ်ဝက် ပြန်လည်သုံးသပ်ခြင်း - အပြည့်အစုံ ပေါင်းစည်းသုံးသပ်ခြင်း",
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
          optionsMy: [
            "၃ မီလီမီတာ",
            "၀.၃ မီလီမီတာ",
            "၃၀ မီလီမီတာ",
            "၃၀၀ မီလီမီတာ",
          ],
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
  certificateTitleMy:
      "သက်ရှိသတ္တဝါများ၏ လက္ခဏာများနှင့် အမျိုးအစားခွဲခြားခြင်း",
  weeks: [_igcseBioWeek1, _igcseBioWeek2, _igcseBioWeek3, _igcseBioWeek4],
);

// =====================================================================
// Week 5: "Diffusion and Osmosis"
// =====================================================================

const CourseWeekDef _igcseBioWeek5 = CourseWeekDef(
  id: "course-igcse-bio-w5",
  weekNumber: 5,
  titleEn: "Diffusion and Osmosis",
  titleMy: "ပျံ့နှံ့ခြင်း (Diffusion) နှင့် ရေစိမ့်ဝင်ခြင်း (Osmosis)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w5-d1",
      dayNumber: 1,
      titleEn: "What is Diffusion?",
      titleMy: "ပျံ့နှံ့ခြင်း (Diffusion) ဆိုသည်မှာ အဘယ်နည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which of the following is the best definition of diffusion?",
          questionMy:
              "အောက်ပါတို့အနက် ပျံ့နှံ့ခြင်း (Diffusion) ၏ အကောင်းဆုံး အဓိပ္ပာယ်ဖွင့်ဆိုချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The net movement of particles from a region of higher concentration to a region of lower concentration, down a concentration gradient, due to the random movement of particles",
            "The movement of water only, from a low concentration to a high concentration",
            "The movement of particles that always requires energy from respiration",
            "The movement of an entire organism from one place to another",
          ],
          optionsMy: [
            "အမှုန်များ၏ ကျပန်းလှုပ်ရှားမှုကြောင့် သိပ်သည်းဆမြင့်ရာမှ သိပ်သည်းဆနိမ့်ရာသို့ သိပ်သည်းဆကွာဟမှု အတိုင်း အမှုန်များ၏ အသားတင် ရွေ့လျားမှု",
            "ရေသာ သိပ်သည်းဆနိမ့်ရာမှ မြင့်ရာသို့ ရွေ့လျားခြင်း",
            "အသက်ရှုခြင်းမှ စွမ်းအင် အမြဲလိုအပ်သော အမှုန်များ ရွေ့လျားခြင်း",
            "သက်ရှိတစ်ကောင်လုံး တစ်နေရာမှ တစ်နေရာသို့ ရွေ့လျားခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Diffusion is a passive process -- it does not use energy from respiration.",
            "Particles move down their concentration gradient, from where there are more of them to where there are fewer.",
          ],
          hintsMy: [
            "Diffusion သည် Passive ဖြစ်စဉ်ဖြစ်သည် -- အသက်ရှုခြင်းမှ စွမ်းအင် မသုံးပါ။",
            "အမှုန်များသည် ၎င်းတို့၏ သိပ်သည်းဆကွာဟမှု အတိုင်း၊ များရာမှ နည်းရာသို့ ရွေ့လျားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these factors would INCREASE the rate of diffusion?",
          questionMy:
              "အောက်ပါ အကြောင်းရင်းများအနက် ပျံ့နှံ့နှုန်းကို မြှင့်တင်ပေးမည့်အချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Increasing the temperature",
            "Increasing the distance the particles must travel",
            "Decreasing the concentration gradient",
            "Decreasing the surface area available",
          ],
          optionsMy: [
            "အပူချိန်ကို မြှင့်တင်ခြင်း",
            "အမှုန်များ ခရီးသွားရမည့် အကွာအဝေးကို တိုးမြှင့်ခြင်း",
            "သိပ်သည်းဆကွာဟမှုကို လျှော့ချခြင်း",
            "ရရှိနိုင်သော မျက်နှာပြင်ဧရိယာကို လျှော့ချခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Higher temperature gives particles more kinetic energy, so they move around faster.",
            "The other three options would all slow diffusion down, not speed it up.",
          ],
          hintsMy: [
            "အပူချိန်မြင့်လျှင် အမှုန်များတွင် Kinetic Energy ပိုမိုရရှိပြီး ပိုမြန်စွာ လှုပ်ရှားကြသည်။",
            "ကျန်ရွေးချယ်စရာသုံးခုစလုံးသည် Diffusion ကို လျှော့ချစေမည့် အချက်များဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the lungs, oxygen diffuses from the air in the alveoli into the blood. What must be true for this diffusion to happen?",
          questionMy:
              "အဆုတ်တွင် အောက်ဆီဂျင်သည် Alveoli အတွင်းရှိ လေမှ သွေးထဲသို့ ပျံ့နှံ့ဝင်ရောက်သည်။ ဤ Diffusion ဖြစ်ပေါ်ရန် အဘယ်အချက် မှန်ကန်ရမည်နည်း။",
          optionsEn: [
            "The concentration of oxygen in the alveolar air must be higher than in the blood",
            "The concentration of oxygen in the blood must be higher than in the alveolar air",
            "Oxygen must be actively pumped by the alveoli using ATP",
            "The blood must be moving faster than the air",
          ],
          optionsMy: [
            "Alveoli အတွင်းလေရှိ အောက်ဆီဂျင် သိပ်သည်းဆသည် သွေးထက် မြင့်ရမည်",
            "သွေးထဲရှိ အောက်ဆီဂျင် သိပ်သည်းဆသည် Alveoli လေထက် မြင့်ရမည်",
            "အောက်ဆီဂျင်ကို Alveoli က ATP သုံး၍ တက်ကြွစွာ ပို့ရမည်",
            "သွေးသည် လေထက် ပိုမြန်စွာ စီးဆင်းနေရမည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Diffusion always moves particles from high concentration to low concentration.",
            "For oxygen to diffuse INTO the blood, the blood must start with less oxygen than the air.",
          ],
          hintsMy: [
            "Diffusion သည် အမှုန်များကို သိပ်သည်းဆမြင့်ရာမှ နိမ့်ရာသို့ အမြဲရွေ့လျားစေသည်။",
            "အောက်ဆီဂျင် သွေးထဲသို့ ဝင်ရန်အတွက် သွေးတွင် လေထက် အောက်ဆီဂျင် နည်းရမည်ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w5-d2",
      dayNumber: 2,
      titleEn: "Match: Diffusion and Osmosis Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Diffusion နှင့် Osmosis ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w5-dm-1",
          termEn: "Osmosis",
          termMy: "ရေစိမ့်ဝင်ခြင်း (Osmosis)",
          matchEn:
              "The diffusion of water molecules from a region of higher water potential to a region of lower water potential, through a partially permeable membrane",
          matchMy:
              "အစိတ်ပိုင်း စိမ့်ဝင်နိုင်သော အမြှေးပါးတစ်ခုမှတစ်ဆင့် ရေအလားအလာ မြင့်ရာမှ နိမ့်ရာသို့ ရေမော်လီကျူးများ ပျံ့နှံ့ခြင်း",
          colorValue: 0xFF03A9F4,
        ),
        DragMatchPair(
          id: "igcsebio-w5-dm-2",
          termEn: "Concentration gradient",
          termMy: "သိပ်သည်းဆ ကွာဟမှု (Concentration Gradient)",
          matchEn:
              "The difference in the concentration of particles between two regions",
          matchMy: "ဒေသနှစ်ခုကြား အမှုန်များ၏ သိပ်သည်းဆ ကွာခြားချက်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w5-dm-3",
          termEn: "Partially permeable membrane",
          termMy: "အစိတ်ပိုင်း စိမ့်ဝင်နိုင်သော အမြှေးပါး",
          matchEn:
              "A membrane that allows small molecules like water through, but not larger molecules",
          matchMy:
              "ရေကဲ့သို့ မော်လီကျူးသေးငယ်များကို ဖြတ်ခွင့်ပြုသော်လည်း ကြီးမားသော မော်လီကျူးများကို မဖြတ်ခွင့်ပြုသည့် အမြှေးပါး",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w5-dm-4",
          termEn: "Turgid",
          termMy: "ရေဖောင်းနေခြင်း (Turgid)",
          matchEn:
              "A plant cell that has absorbed water by osmosis and become firm and swollen",
          matchMy: "Osmosis ဖြင့် ရေစုပ်ယူပြီး မာကျောစွာ ဖောင်းလာသော အပင်ဆဲလ်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w5-dm-5",
          termEn: "Plasmolysis",
          termMy: "ဆဲလ်အတွင်း အရည်ခန်းကျုံ့ခြင်း (Plasmolysis)",
          matchEn:
              "The shrinking of a plant cell's cytoplasm away from its cell wall after losing water by osmosis",
          matchMy:
              "Osmosis ဖြင့် ရေဆုံးရှုံးပြီးနောက် အပင်ဆဲလ်၏ ဆဲလ်ရည် ဆဲလ်နံရံမှ ခွာ၍ ကျုံ့ဝင်သွားခြင်း",
          colorValue: 0xFFE91E63,
        ),
        DragMatchPair(
          id: "igcsebio-w5-dm-6",
          termEn: "Flaccid",
          termMy: "နုံ့နဲ့ခြင်း (Flaccid)",
          matchEn:
              "A plant cell that has lost water by osmosis and become soft, with the cytoplasm no longer pressing firmly on the cell wall",
          matchMy:
              "Osmosis ဖြင့် ရေဆုံးရှုံးပြီး ပျော့ပျောင်းလာကာ ဆဲလ်ရည်က ဆဲလ်နံရံကို မာကျောစွာ မဖိအားပေးတော့သည့် အပင်ဆဲလ်",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w5-d3",
      dayNumber: 3,
      titleEn: "Sort: Diffusion or Osmosis?",
      titleMy: "စီစစ်ကြမည် - Diffusion လား Osmosis လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["An Example of Diffusion", "An Example of Osmosis"],
        bucketsMy: ["Diffusion ၏ ဥပမာ", "Osmosis ၏ ဥပမာ"],
        items: [
          SortingItem(
            id: "igcsebio-w5-sort-1",
            labelEn: "A drop of ink spreading out through still water",
            labelMy: "မင်စက်တစ်စက် ငြိမ်နေသောရေထဲတွင် ပျံ့နှံ့သွားခြင်း",
            correctBucketEn: "An Example of Diffusion",
            correctBucketMy: "Diffusion ၏ ဥပမာ",
          ),
          SortingItem(
            id: "igcsebio-w5-sort-2",
            labelEn:
                "Digested glucose molecules moving from the small intestine into the blood",
            labelMy:
                "အစာချေဖျက်ပြီး ဂလူးကို့စ်များ သိမ်ငယ်အူမှ သွေးထဲသို့ ရွေ့လျားခြင်း",
            correctBucketEn: "An Example of Diffusion",
            correctBucketMy: "Diffusion ၏ ဥပမာ",
          ),
          SortingItem(
            id: "igcsebio-w5-sort-3",
            labelEn:
                "A red blood cell placed in distilled water swelling and bursting",
            labelMy:
                "ဆီးချေးရည်ရေထဲတွင် ထားလိုက်သော သွေးနီဥ တစ်လုံး ဖောင်းကားပေါက်ကွဲသွားခြင်း",
            correctBucketEn: "An Example of Osmosis",
            correctBucketMy: "Osmosis ၏ ဥပမာ",
          ),
          SortingItem(
            id: "igcsebio-w5-sort-4",
            labelEn: "Water moving from the soil into a plant's root hair cell",
            labelMy: "မြေဆီလွှာရှိရေ အပင်၏ အမြစ်ဆံပင်ဆဲလ်ထဲသို့ ဝင်ရောက်ခြင်း",
            correctBucketEn: "An Example of Osmosis",
            correctBucketMy: "Osmosis ၏ ဥပမာ",
          ),
          SortingItem(
            id: "igcsebio-w5-sort-5",
            labelEn: "Carbon dioxide diffusing out of a leaf cell into the air",
            labelMy: "ကာဗွန်ဒိုင်အောက်ဆိုဒ် အရွက်ဆဲလ်မှ လေထဲသို့ ထွက်ခြင်း",
            correctBucketEn: "An Example of Diffusion",
            correctBucketMy: "Diffusion ၏ ဥပမာ",
          ),
          SortingItem(
            id: "igcsebio-w5-sort-6",
            labelEn:
                "A plant cell placed in concentrated salt solution becoming plasmolysed",
            labelMy:
                "စိုက်ဆားရည် ပြင်းသောရည်ထဲတွင် ထားလိုက်သော အပင်ဆဲလ် Plasmolysed ဖြစ်ခြင်း",
            correctBucketEn: "An Example of Osmosis",
            correctBucketMy: "Osmosis ၏ ဥပမာ",
          ),
          SortingItem(
            id: "igcsebio-w5-sort-7",
            labelEn: "The smell of cooking spreading through a house",
            labelMy: "ဟင်းချက်ရနံ့ အိမ်တစ်လျှောက် ပျံ့နှံ့သွားခြင်း",
            correctBucketEn: "An Example of Diffusion",
            correctBucketMy: "Diffusion ၏ ဥပမာ",
          ),
          SortingItem(
            id: "igcsebio-w5-sort-8",
            labelEn:
                "A wilted plant becoming firm again after its roots absorb water",
            labelMy:
                "ညှိုးနွမ်းနေသော အပင်တစ်ပင် အမြစ်များ ရေစုပ်ယူပြီးနောက် ပြန်၍ မာကျောလာခြင်း",
            correctBucketEn: "An Example of Osmosis",
            correctBucketMy: "Osmosis ၏ ဥပမာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w5-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Myat Noe's Potato Experiment",
      titleMy: "စာဖတ်ခြင်း - စုမြတ်နိုး၏ အာလူးစမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Myat Noe's Potato Experiment",
        titleMy: "စုမြတ်နိုး၏ အာလူးစမ်းသပ်မှု",
        passageEn:
            "For her Biology practical assignment, Su Myat Noe cut five identical chips from the same potato, measured and weighed each one carefully, then placed one chip into each of five test tubes containing sugar solutions of different concentrations -- from pure distilled water up to a very concentrated sugar solution. After thirty minutes, she removed each chip, gently blotted it dry, and measured its length and mass again.\n\nThe chip left in distilled water had grown slightly longer and heavier, and felt firm and stiff when she pressed it -- her teacher explained this meant the cell had absorbed water by osmosis and become turgid, since the water potential inside the potato cells was lower than the water potential of the pure water outside. The chip left in the most concentrated sugar solution, however, had shrunk and felt soft and floppy: its cells had lost water to the surrounding solution, since the water potential outside was now lower than inside the cells, and had become plasmolysed.\n\nSu Myat Noe plotted her results on a graph with sugar concentration on one axis and percentage change in mass on the other, and found the line crossed zero at one particular concentration -- the point where the solution's water potential exactly matched the water potential inside the potato cells, so no net movement of water occurred in either direction. Her teacher praised her for realising that this single experiment demonstrated osmosis, water potential gradients, and the difference between turgid and plasmolysed cells all at once.",
        passageMy:
            "စုမြတ်နိုး၏ ဇီဝဗေဒ လက်တွေ့လုပ်ငန်းအတွက် သူမသည် တူညီသော အာလူးတစ်လုံးတည်းမှ အာလူးချောင်း ၅ ချောင်းကို ဖြတ်ယူပြီး၊ တစ်ချောင်းစီကို သေချာစွာ တိုင်းတာချိန်ချိန်ပြီးနောက် သကြားရည် သိပ်သည်းဆ မတူညီသော ရေချိုးအိုးငယ် ၅ လုံးအတွင်း -- ဆီးချေးရေစင်စစ်မှ အလွန်ပြင်းသော သကြားရည်အထိ -- တစ်ချောင်းစီ ထည့်လိုက်သည်။ မိနစ် ၃၀ ကြာပြီးနောက် အာလူးချောင်းတစ်ခုစီကို ထုတ်ယူပြီး ဖျော့ဖျော့ညက်ညက် သုတ်သုတ်ခြောက်စေကာ အလျားနှင့် အလေးချိန်ကို ထပ်မံတိုင်းတာလိုက်သည်။\n\nဆီးချေးရေထဲတွင် ထားခဲ့သော အာလူးချောင်းသည် အနည်းငယ် ပိုရှည်ပြီး ပိုလေးလာကာ ဖိကြည့်လျှင် မာကျောစွာ ခံစားရသည် -- ဆရာမက ဤအရာသည် ဆဲလ်က Osmosis ဖြင့် ရေစုပ်ယူပြီး Turgid ဖြစ်လာကြောင်း ဆိုလိုကြောင်း ရှင်းပြသည်၊ အကြောင်းမှာ အာလူးဆဲလ်များ၏ အတွင်းရေအလားအလာသည် အပြင်ဘက် ရေစင်စစ်ထက် နိမ့်နေသောကြောင့် ဖြစ်သည်။ သို့သော် အပြင်းဆုံး သကြားရည်ထဲတွင် ထားခဲ့သော အာလူးချောင်းမူကား ကျုံ့သေးသွားပြီး ပျော့ပျောင်းစွာ ခံစားရသည် -- ၎င်း၏ ဆဲလ်များသည် ပတ်ဝန်းကျင်ရည်သို့ ရေဆုံးရှုံးခဲ့ရသည်၊ အကြောင်းမှာ အပြင်ဘက်ရေအလားအလာသည် ယခုအခါ ဆဲလ်အတွင်းထက် နိမ့်နေသောကြောင့်ဖြစ်ပြီး Plasmolysed ဖြစ်သွားခဲ့သည်။\n\nစုမြတ်နိုးသည် သူမ၏ ရလဒ်များကို သကြားရည်သိပ်သည်းဆကို တစ်ဘက်ဝင်ရိုးတွင်နှင့် အလေးချိန် ရာခိုင်နှုန်း အပြောင်းအလဲကို တစ်ဘက်ဝင်ရိုးတွင် ဂရပ်ဆွဲခဲ့ရာ မျဉ်းသည် အထူးသိပ်သည်းဆတစ်ခုတွင် သုညကို ဖြတ်သန်းသွားသည်ကို တွေ့ရှိခဲ့သည် -- ၎င်းသည် ရည်၏ ရေအလားအလာသည် အာလူးဆဲလ်အတွင်းရှိ ရေအလားအလာနှင့် အတိအကျ ညီမျှသွားသောနေရာ ဖြစ်ပြီး၊ ဒီနေရာတွင် ရေ ဘယ်ဘက်ကိုမှ အသားတင် ရွေ့လျားမှု မရှိတော့ပေ။ ဆရာမက ဤစမ်းသပ်မှု တစ်ခုတည်းက Osmosis၊ ရေအလားအလာကွာဟမှုနှင့် Turgid/Plasmolysed ဆဲလ်များ၏ ကွာခြားချက်ကို တစ်ပြိုင်နက် ဖော်ပြနိုင်ကြောင်း သိရှိခဲ့ရသဖြင့် သူမကို ချီးမွမ်းခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did the chip in distilled water become turgid?",
            questionMy:
                "စာပိုဒ် ၂ အရ ဆီးချေးရေထဲမှ အာလူးချောင်းသည် အဘယ်ကြောင့် Turgid ဖြစ်လာသနည်း။",
            optionsEn: [
              "The water potential inside the cells was lower than outside, so water entered by osmosis",
              "The chip absorbed sugar from the water",
              "The chip lost water to the surrounding solution",
              "The water potential was equal inside and outside the cells",
            ],
            optionsMy: [
              "ဆဲလ်အတွင်း ရေအလားအလာသည် အပြင်ဘက်ထက် နိမ့်နေသဖြင့် Osmosis ဖြင့် ရေဝင်ရောက်လာခြင်း",
              "အာလူးချောင်းက ရေထဲမှ သကြားစုပ်ယူခြင်း",
              "အာလူးချောင်းက ပတ်ဝန်းကျင်ရည်ဆီသို့ ရေဆုံးရှုံးခြင်း",
              "ဆဲလ်အတွင်းနှင့်အပြင် ရေအလားအလာ ညီမျှနေခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Water always moves by osmosis from higher water potential to lower water potential.",
              "Pure distilled water has a very high water potential.",
            ],
            hintsMy: [
              "ရေသည် Osmosis ဖြင့် ရေအလားအလာမြင့်ရာမှ နိမ့်ရာသို့ အမြဲ ရွေ့လျားသည်။",
              "ဆီးချေးရေစင်စစ်တွင် ရေအလားအလာ အလွန်မြင့်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn: "What does 'plasmolysed' mean, based on paragraph 2?",
            questionMy:
                "စာပိုဒ် ၂ အရ 'Plasmolysed' ဆိုသည်မှာ အဘယ်ကို ဆိုလိုသနည်း။",
            optionsEn: [
              "The cell's cytoplasm has shrunk away from the cell wall after losing water",
              "The cell has absorbed too much water and become firm",
              "The cell has divided into two new cells",
              "The cell has produced more sugar than normal",
            ],
            optionsMy: [
              "ဆဲလ်ရည်သည် ရေဆုံးရှုံးပြီးနောက် ဆဲလ်နံရံမှ ခွာကျုံ့သွားခြင်း",
              "ဆဲလ်သည် ရေအလွန်အကျွံ စုပ်ယူပြီး မာကျောလာခြင်း",
              "ဆဲလ်သည် ဆဲလ်နှစ်ခုအဖြစ် ကွဲထွက်ခြင်း",
              "ဆဲလ်သည် ပုံမှန်ထက် သကြားပို၍ ထုတ်လုပ်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second half of paragraph 2, describing the chip in the most concentrated solution.",
              "This is the opposite of turgid.",
            ],
            hintsMy: [
              "စာပိုဒ် ၂ ၏ ဒုတိယတစ်ဝက်ကို ပြန်ဖတ်ကြည့်ပါ၊ အပြင်းဆုံးရည်ထဲမှ အာလူးချောင်းအကြောင်း ဖော်ပြထားသည်။",
              "ဤသည်မှာ Turgid ၏ ဆန့်ကျင်ဘက်ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did the point where the graph line crossed zero represent?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဂရပ်မျဉ်း သုညကို ဖြတ်သန်းသွားသည့်နေရာသည် အဘယ်ကို ကိုယ်စားပြုသနည်း။",
            optionsEn: [
              "The concentration where the solution's water potential matched the potato cells' water potential",
              "The concentration with the most sugar",
              "The point where the potato chip dissolved completely",
              "The starting concentration before the experiment began",
            ],
            optionsMy: [
              "ရည်၏ ရေအလားအလာသည် အာလူးဆဲလ်၏ ရေအလားအလာနှင့် ညီမျှသည့် သိပ်သည်းဆ",
              "သကြားအများဆုံးပါဝင်သော သိပ်သည်းဆ",
              "အာလူးချောင်း လုံးဝပျော်ဝင်သွားသည့်အချက်",
              "စမ်းသပ်မှု မစတင်မီ မူလသိပ်သည်းဆ",
            ],
            correctIndex: 0,
            hintsEn: [
              "At this point there was no net movement of water in or out of the cells.",
              "This happens when the water potential is equal on both sides of the membrane.",
            ],
            hintsMy: [
              "ဤအချက်တွင် ဆဲလ်ထဲသို့ ဝင်ခြင်း/ထွက်ခြင်း ရေ အသားတင် ရွေ့လျားမှု မရှိပါ။",
              "ဤသည်မှာ အမြှေးပါး နှစ်ဖက်လုံးတွင် ရေအလားအလာ ညီမျှသောအခါ ဖြစ်ပေါ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What was the purpose of measuring the mass and length of each chip both before and after the experiment?",
            questionMy:
                "စမ်းသပ်မှု မတိုင်မီနှင့် ပြီးနောက် အာလူးချောင်းတစ်ခုစီ၏ အလေးချိန်နှင့် အလျားကို တိုင်းတာခြင်း၏ ရည်ရွယ်ချက်မှာ အဘယ်နည်း။",
            optionsEn: [
              "To calculate the change caused by osmosis in each solution",
              "To check the chips were all the same colour",
              "To find out how much sugar was in the potato",
              "To time how fast each chip cooked",
            ],
            optionsMy: [
              "ရည်တစ်ခုစီတွင် Osmosis ကြောင့် ဖြစ်ပေါ်သော အပြောင်းအလဲကို တွက်ချက်ရန်",
              "အာလူးချောင်းများ အရောင်တူညီမှု ရှိမရှိ စစ်ဆေးရန်",
              "အာလူးထဲတွင် သကြားဘယ်လောက်ပါသည်ကို ရှာဖွေရန်",
              "အာလူးချောင်းတစ်ခုစီ ချက်ပြုတ်ချိန် တိုင်းတာရန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Comparing 'before' and 'after' measurements is how you calculate a change.",
              "A change in mass and length after osmosis shows whether water moved in or out.",
            ],
            hintsMy: [
              "'မတိုင်မီ' နှင့် 'ပြီးနောက်' တိုင်းတာချက်များကို နှိုင်းယှဉ်ခြင်းသည် အပြောင်းအလဲကို တွက်ချက်ရာနည်းလမ်းဖြစ်သည်။",
              "Osmosis ပြီးနောက် အလေးချိန်နှင့် အလျား အပြောင်းအလဲသည် ရေ ဝင်/ထွက် ရွေ့လျားမှုကို ပြသသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w5-d5",
      dayNumber: 5,
      titleEn: "Week 5 Recap: Diffusion and Osmosis",
      titleMy: "ပဉ္စမပတ် ပြန်လည်သုံးသပ်ခြင်း - Diffusion နှင့် Osmosis",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Osmosis is a special case of diffusion. What makes it 'special'?",
          questionMy:
              "Osmosis သည် Diffusion ၏ အထူးကိစ္စတစ်ခု ဖြစ်သည်။ ၎င်းကို 'အထူး' ဖြစ်စေသည့်အချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "It specifically describes water moving through a partially permeable membrane",
            "It only happens in animal cells, never plant cells",
            "It always requires energy from ATP",
            "It only happens to gases, never liquids",
          ],
          optionsMy: [
            "အစိတ်ပိုင်း စိမ့်ဝင်နိုင်သော အမြှေးပါးမှတစ်ဆင့် ရေ ရွေ့လျားခြင်းကို တိတိကျကျ ဖော်ပြသောကြောင့်",
            "တိရစ္ဆာန်ဆဲလ်တွင်သာ ဖြစ်ပွား၍ အပင်ဆဲလ်တွင် လုံးဝမဖြစ်ပွားသောကြောင့်",
            "ATP မှ စွမ်းအင် အမြဲလိုအပ်သောကြောင့်",
            "ဓာတ်ငွေ့တွင်သာ ဖြစ်ပွား၍ အရည်တွင် လုံးဝမဖြစ်ပွားသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A plant cell placed in pure water will become...",
          questionMy: "ရေစင်စစ်ထဲတွင် ထားလိုက်သော အပင်ဆဲလ်သည် ...",
          optionsEn: [
            "Turgid, because water enters the cell by osmosis",
            "Plasmolysed, because water leaves the cell",
            "Unchanged, because plant cells cannot absorb water",
            "Smaller, because the cell wall shrinks",
          ],
          optionsMy: [
            "Turgid ဖြစ်လိမ့်မည်၊ အကြောင်းမှာ ရေသည် Osmosis ဖြင့် ဆဲလ်ထဲသို့ ဝင်ရောက်သောကြောင့်",
            "Plasmolysed ဖြစ်လိမ့်မည်၊ အကြောင်းမှာ ရေသည် ဆဲလ်မှ ထွက်ခွာသောကြောင့်",
            "မပြောင်းလဲပါ၊ အကြောင်းမှာ အပင်ဆဲလ်များသည် ရေကို စုပ်ယူ၍မရသောကြောင့်",
            "ပိုသေးလာလိမ့်မည်၊ အကြောင်းမှာ ဆဲလ်နံရံ ကျုံ့သွားသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which pair correctly matches the factor with its effect on the rate of diffusion?",
          questionMy:
              "အောက်ပါတို့အနက် အကြောင်းရင်းနှင့် Diffusion နှုန်းအပေါ် သက်ရောက်မှုကို မှန်ကန်စွာ တွဲစပ်ထားသည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Larger surface area -> faster diffusion",
            "Larger surface area -> slower diffusion",
            "Shorter distance -> slower diffusion",
            "Steeper concentration gradient -> slower diffusion",
          ],
          optionsMy: [
            "မျက်နှာပြင်ဧရိယာ ပိုကြီး -> Diffusion ပိုမြန်",
            "မျက်နှာပြင်ဧရိယာ ပိုကြီး -> Diffusion ပိုနှေး",
            "အကွာအဝေး ပိုတို -> Diffusion ပိုနှေး",
            "သိပ်သည်းဆကွာဟမှု ပိုပြင်းထန် -> Diffusion ပိုနှေး",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Root hair cells absorbing water from moist soil is best described as...",
          questionMy:
              "အမြစ်ဆံပင်ဆဲလ်များသည် စိုစွတ်သော မြေဆီလွှာမှ ရေစုပ်ယူခြင်းကို အကောင်းဆုံး ဖော်ပြသည့်အရာမှာ...",
          optionsEn: [
            "Osmosis, since the soil water has a higher water potential than the cell",
            "Active transport, since it requires ATP",
            "Diffusion of mineral ions, not water",
            "A process that only happens in animal roots",
          ],
          optionsMy: [
            "Osmosis ဖြစ်သည်၊ အကြောင်းမှာ မြေဆီလွှာရေသည် ဆဲလ်ထက် ရေအလားအလာ ပိုမြင့်သောကြောင့်",
            "Active Transport ဖြစ်သည်၊ အကြောင်းမှာ ATP လိုအပ်သောကြောင့်",
            "သတ္တု အိုင်းယွန်းများ၏ Diffusion ဖြစ်ပြီး ရေ မဟုတ်ပါ",
            "တိရစ္ဆာန် အမြစ်များတွင်သာ ဖြစ်ပွားသော ဖြစ်စဉ်ဖြစ်သည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 6: "Active Transport"
// =====================================================================

const CourseWeekDef _igcseBioWeek6 = CourseWeekDef(
  id: "course-igcse-bio-w6",
  weekNumber: 6,
  titleEn: "Active Transport",
  titleMy: "တက်ကြွစွာ သယ်ယူခြင်း (Active Transport)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w6-d1",
      dayNumber: 1,
      titleEn: "What is Active Transport?",
      titleMy: "Active Transport ဆိုသည်မှာ အဘယ်နည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which of the following correctly describes active transport?",
          questionMy:
              "အောက်ပါတို့အနက် Active Transport ကို မှန်ကန်စွာ ဖော်ပြသည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "The movement of particles from a region of lower concentration to a region of higher concentration, using energy from respiration",
            "The movement of particles from a region of higher concentration to a region of lower concentration, using no energy",
            "The movement of water only, through a partially permeable membrane",
            "The movement of an organism away from a harmful stimulus",
          ],
          optionsMy: [
            "အသက်ရှုခြင်းမှ စွမ်းအင်ကို သုံး၍ အမှုန်များကို သိပ်သည်းဆနိမ့်ရာမှ မြင့်ရာသို့ ရွေ့လျားခြင်း",
            "စွမ်းအင် လုံးဝမသုံးဘဲ အမှုန်များကို သိပ်သည်းဆမြင့်ရာမှ နိမ့်ရာသို့ ရွေ့လျားခြင်း",
            "ရေသာ အစိတ်ပိုင်း စိမ့်ဝင်နိုင်သော အမြှေးပါးမှတစ်ဆင့် ရွေ့လျားခြင်း",
            "သက်ရှိတစ်ကောင် အန္တရာယ်ရှိသော လှုံ့ဆော်မှုမှ ရှောင်ထွက်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Active transport moves particles AGAINST their concentration gradient -- the opposite direction to diffusion.",
            "Because it works against the gradient, active transport needs energy; diffusion and osmosis do not.",
          ],
          hintsMy: [
            "Active Transport သည် အမှုန်များကို ၎င်းတို့၏ သိပ်သည်းဆကွာဟမှုကို ဆန့်ကျင်၍ ရွေ့လျားစေသည် -- Diffusion ၏ ဆန့်ကျင်ဘက်ဖြစ်သည်။",
            "ကွာဟမှုကို ဆန့်ကျင်ရသောကြောင့် Active Transport တွင် စွမ်းအင်လိုအပ်သည်၊ Diffusion နှင့် Osmosis တွင်မူ မလိုအပ်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "Where does the energy for active transport come from?",
          questionMy:
              "Active Transport အတွက် စွမ်းအင်ကို မည်သည့်နေရာမှ ရရှိသနည်း။",
          optionsEn: [
            "Respiration inside the cell, which produces ATP",
            "Sunlight absorbed directly by the cell membrane",
            "Heat energy from the surrounding environment",
            "The concentration gradient itself",
          ],
          optionsMy: [
            "ဆဲလ်အတွင်း အသက်ရှုခြင်းမှ ATP ထုတ်လုပ်ခြင်း",
            "ဆဲလ်အမြှေးပါးက တိုက်ရိုက်စုပ်ယူသော နေရောင်",
            "ပတ်ဝန်းကျင်မှ အပူစွမ်းအင်",
            "သိပ်သည်းဆကွာဟမှု ကိုယ်တိုင်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Cells that carry out a lot of active transport, like root hair cells, have many mitochondria.",
            "Mitochondria are the site of respiration, which releases energy as ATP.",
          ],
          hintsMy: [
            "အမြစ်ဆံပင်ဆဲလ်ကဲ့သို့ Active Transport များစွာ ပြုလုပ်သော ဆဲလ်များတွင် Mitochondria များစွာ ရှိသည်။",
            "Mitochondria သည် အသက်ရှုခြင်းဖြစ်ပေါ်ရာနေရာဖြစ်ပြီး ATP အဖြစ် စွမ်းအင်ထွက်ရှိစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Root hair cells often absorb nitrate ions from soil where the soil has a LOWER concentration of nitrate than the cell already does. How is this possible?",
          questionMy:
              "အမြစ်ဆံပင်ဆဲလ်များသည် ဆဲလ်ထက် နိုက်ထရိတ် သိပ်သည်းဆ နိမ့်သော မြေဆီလွှာမှ နိုက်ထရိတ်အိုင်းယွန်းများကို မကြာခဏ စုပ်ယူသည်။ ၎င်းသည် မည်သို့ ဖြစ်နိုင်သနည်း။",
          optionsEn: [
            "Protein carriers use energy to pump the ions in by active transport, against the concentration gradient",
            "The ions diffuse in naturally, since diffusion always happens regardless of concentration",
            "Osmosis carries the ions in along with water molecules",
            "The soil concentration is actually always higher, so this scenario is impossible",
          ],
          optionsMy: [
            "ပရိုတင်း Carrier များက သိပ်သည်းဆကွာဟမှုကို ဆန့်ကျင်ပြီး Active Transport ဖြင့် အိုင်းယွန်းများကို ပို့ရန် စွမ်းအင်သုံးသည်",
            "သိပ်သည်းဆနှင့် မသက်ဆိုင်ဘဲ Diffusion သည် အမြဲ ဖြစ်ပေါ်သောကြောင့် အိုင်းယွန်းများ သဘာဝအတိုင်း Diffuse ဝင်ခြင်း",
            "Osmosis က ရေမော်လီကျူးများနှင့်အတူ အိုင်းယွန်းများကိုပါ သယ်ဆောင်ခြင်း",
            "မြေဆီလွှာသိပ်သည်းဆသည် အမှန်တကယ် အမြဲပိုမြင့်နေသဖြင့် ဤအခြေအနေမှာ မဖြစ်နိုင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is moving AGAINST the concentration gradient (low to high), which diffusion cannot do.",
            "Only active transport, using protein carriers and ATP energy, can move particles against a gradient.",
          ],
          hintsMy: [
            "ဤသည်မှာ သိပ်သည်းဆကွာဟမှုကို ဆန့်ကျင်ခြင်း (နိမ့်မှမြင့်သို့) ဖြစ်ပြီး Diffusion က ဤသို့ မလုပ်နိုင်ပါ။",
            "ပရိုတင်း Carrier များနှင့် ATP စွမ်းအင်သုံးသည့် Active Transport တစ်ခုတည်းသာ ကွာဟမှုကို ဆန့်ကျင်၍ အမှုန်များကို ရွှေ့နိုင်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w6-d2",
      dayNumber: 2,
      titleEn: "Match: Active Transport Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Active Transport ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w6-dm-1",
          termEn: "ATP",
          termMy: "ATP",
          matchEn:
              "The molecule produced by respiration that stores and releases usable energy for cell processes",
          matchMy:
              "အသက်ရှုခြင်းမှ ထုတ်လုပ်ပြီး ဆဲလ်ဖြစ်စဉ်များအတွက် အသုံးဝင်သော စွမ်းအင်ကို သိုလှောင်ပြီး ထုတ်ပေးသော မော်လီကျူး",
          colorValue: 0xFFFF5722,
        ),
        DragMatchPair(
          id: "igcsebio-w6-dm-2",
          termEn: "Protein carrier",
          termMy: "ပရိုတင်း Carrier",
          matchEn:
              "A protein in the cell membrane that binds to a specific particle and pumps it across the membrane",
          matchMy:
              "ဆဲလ်အမြှေးပါးရှိ အထူးအမှုန်တစ်ခုနှင့် ဆက်သွယ်ပြီး အမြှေးပါးကို ဖြတ်၍ ပို့ဆောင်ပေးသော ပရိုတင်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w6-dm-3",
          termEn: "Root hair cell",
          termMy: "အမြစ်ဆံပင်ဆဲလ်",
          matchEn:
              "A specialised plant cell with a long, thin extension that increases surface area for absorbing water and mineral ions",
          matchMy:
              "ရေနှင့် သတ္တု အိုင်းယွန်းများ စုပ်ယူရန် မျက်နှာပြင်ဧရိယာ တိုးမြှင့်ပေးသည့် ရှည်လျားပါးလွှာသော အထူးပြု အပင်ဆဲလ်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w6-dm-4",
          termEn: "Mitochondrion",
          termMy: "Mitochondrion",
          matchEn:
              "The cell organelle where respiration takes place, releasing energy as ATP",
          matchMy:
              "အသက်ရှုခြင်း ဖြစ်ပေါ်ပြီး ATP အဖြစ် စွမ်းအင်ထုတ်ပေးသော ဆဲလ်ကလာပ်စည်း",
          colorValue: 0xFFFFC107,
        ),
        DragMatchPair(
          id: "igcsebio-w6-dm-5",
          termEn: "Against the concentration gradient",
          termMy: "သိပ်သည်းဆကွာဟမှုကို ဆန့်ကျင်",
          matchEn:
              "Movement from a region of low concentration to a region of high concentration",
          matchMy: "သိပ်သည်းဆနိမ့်ရာမှ မြင့်ရာသို့ ရွေ့လျားခြင်း",
          colorValue: 0xFF9C27B0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w6-d3",
      dayNumber: 3,
      titleEn: "Sort: Passive or Active?",
      titleMy: "စီစစ်ကြမည် - Passive လား Active လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Passive (No Energy Needed -- Diffusion/Osmosis)",
          "Active (Needs Energy -- Active Transport)",
        ],
        bucketsMy: [
          "Passive (စွမ်းအင် မလိုအပ် -- Diffusion/Osmosis)",
          "Active (စွမ်းအင် လိုအပ် -- Active Transport)",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w6-sort-1",
            labelEn:
                "Root hair cells absorbing nitrate ions from soil with a lower nitrate concentration than the cell",
            labelMy:
                "ဆဲလ်ထက် နိုက်ထရိတ် သိပ်သည်းဆ နိမ့်သော မြေဆီလွှာမှ အမြစ်ဆံပင်ဆဲလ်များ နိုက်ထရိတ် အိုင်းယွန်းများ စုပ်ယူခြင်း",
            correctBucketEn: "Active (Needs Energy -- Active Transport)",
            correctBucketMy: "Active (စွမ်းအင် လိုအပ် -- Active Transport)",
          ),
          SortingItem(
            id: "igcsebio-w6-sort-2",
            labelEn: "Oxygen diffusing from the alveoli into the blood",
            labelMy: "Alveoli မှ သွေးထဲသို့ အောက်ဆီဂျင် Diffuse ဝင်ခြင်း",
            correctBucketEn: "Passive (No Energy Needed -- Diffusion/Osmosis)",
            correctBucketMy: "Passive (စွမ်းအင် မလိုအပ် -- Diffusion/Osmosis)",
          ),
          SortingItem(
            id: "igcsebio-w6-sort-3",
            labelEn:
                "The kidney reabsorbing glucose from urine back into the blood against a concentration gradient",
            labelMy:
                "ကျောက်ကပ်က ဆီးထဲမှ ဂလူးကို့စ်ကို သိပ်သည်းဆကွာဟမှုကို ဆန့်ကျင်၍ သွေးထဲသို့ ပြန်စုပ်ယူခြင်း",
            correctBucketEn: "Active (Needs Energy -- Active Transport)",
            correctBucketMy: "Active (စွမ်းအင် လိုအပ် -- Active Transport)",
          ),
          SortingItem(
            id: "igcsebio-w6-sort-4",
            labelEn: "Water entering a root hair cell from moist soil",
            labelMy:
                "စိုစွတ်သော မြေဆီလွှာမှ အမြစ်ဆံပင်ဆဲလ်ထဲသို့ ရေဝင်ရောက်ခြင်း",
            correctBucketEn: "Passive (No Energy Needed -- Diffusion/Osmosis)",
            correctBucketMy: "Passive (စွမ်းအင် မလိုအပ် -- Diffusion/Osmosis)",
          ),
          SortingItem(
            id: "igcsebio-w6-sort-5",
            labelEn: "Carbon dioxide diffusing out of respiring cells",
            labelMy:
                "အသက်ရှုနေသော ဆဲလ်များမှ ကာဗွန်ဒိုင်အောက်ဆိုဒ် Diffuse ထွက်ခြင်း",
            correctBucketEn: "Passive (No Energy Needed -- Diffusion/Osmosis)",
            correctBucketMy: "Passive (စွမ်းအင် မလိုအပ် -- Diffusion/Osmosis)",
          ),
          SortingItem(
            id: "igcsebio-w6-sort-6",
            labelEn:
                "Nerve cells pumping sodium and potassium ions across the membrane using protein pumps",
            labelMy:
                "အာရုံကြောဆဲလ်များက ပရိုတင်း Pump များသုံး၍ ဆိုဒီယမ်နှင့် ပိုတက်စီယမ် အိုင်းယွန်းများကို အမြှေးပါးဖြတ်၍ ပို့ဆောင်ခြင်း",
            correctBucketEn: "Active (Needs Energy -- Active Transport)",
            correctBucketMy: "Active (စွမ်းအင် လိုအပ် -- Active Transport)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w6-d4",
      dayNumber: 4,
      titleEn: "Reading: Thura Aung's Rice Field Question",
      titleMy: "စာဖတ်ခြင်း - သူရအောင်၏ လယ်ကွက်ဆိုင်ရာ မေးခွန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thura Aung's Rice Field Question",
        titleMy: "သူရအောင်၏ လယ်ကွက်ဆိုင်ရာ မေးခွန်း",
        passageEn:
            "Thura Aung's grandfather had grown rice for forty years in the fields outside their village, and one evening Thura Aung asked him a question that had been bothering him since Biology class: 'Grandfather, our soil is often quite poor in nutrients, so the nitrate concentration in the mud is usually lower than the concentration inside the rice roots already. How do the roots manage to take in more nitrate from soil that has less of it than the plant already has?' His grandfather smiled and said he had wondered the same thing as a young farmer, before a visiting agricultural officer explained it to him.\n\nThura Aung's Biology teacher answered the question properly the next day. She explained that if the roots relied on diffusion alone, nitrate would only ever move from high concentration to low concentration -- meaning it would leak OUT of the roots into the poor soil, not in. Instead, the root hair cells use special protein carriers embedded in their cell membranes, which act like tiny pumps. These pumps use energy released by respiration, in the form of ATP, to force nitrate ions into the cell against the concentration gradient -- a process called active transport.\n\nShe added that this was exactly why root hair cells are packed with an unusually large number of mitochondria compared to other plant cells: since pumping ions against a gradient is energetically expensive, the cell needs a constant, reliable supply of ATP from respiration to keep the protein pumps working. Thura Aung finally understood why his grandfather always said healthy roots need to 'breathe well' -- without enough oxygen for respiration, the roots could not generate enough ATP, and active transport of nitrate would slow down, leaving the rice plants short of the nutrients they needed to grow.",
        passageMy:
            "သူရအောင်၏ အဖိုးသည် ရွာအပြင်ဘက်ရှိ လယ်ကွက်များတွင် နှစ်ပေါင်း ၄၀ ဆန်စပါး စိုက်ပျိုးခဲ့သည်၊ တစ်ညနေ သူရအောင်သည် ဇီဝဗေဒအတန်းမှ စတင်စိတ်ညစ်စေခဲ့သော မေးခွန်းတစ်ခုကို အဖိုးအား မေးမြန်းခဲ့သည်- 'အဖိုးရေ၊ ကျွန်တော်တို့ မြေဆီလွှာသည် အစာရေစာ ဆင်းရဲသော်လည်း ရွှံ့ထဲက နိုက်ထရိတ် သိပ်သည်းဆသည် ဆန်စပါးအမြစ်ထဲက သိပ်သည်းဆထက် များသောအခါများစွာ ပိုနိမ့်ပါသည်။ အမြစ်များက ၎င်းတို့ထက် နိုက်ထရိတ် နည်းသော မြေဆီလွှာမှ နိုက်ထရိတ်ကို ပို၍ မည်သို့ ရယူနိုင်ပါသနည်း။' အဖိုးက ပြုံးပြီး လူငယ်လယ်သမားဘဝတုန်းက စိုက်ပျိုးရေးအရာရှိတစ်ဦး လာရောက်ရှင်းပြခြင်းမခံရမီ ၎င်းလည်း တူညီသောအရာကို တွေးတောခဲ့ဖူးကြောင်း ပြောပြသည်။\n\nနောက်တစ်နေ့ သူရအောင်၏ ဇီဝဗေဒဆရာမက မေးခွန်းကို မှန်ကန်စွာ ဖြေကြားပေးခဲ့သည်။ အမြစ်များသည် Diffusion တစ်ခုတည်းကိုသာ မှီခိုအားထားပါက၊ နိုက်ထရိတ်သည် သိပ်သည်းဆမြင့်ရာမှ နိမ့်ရာသို့သာ အမြဲ ရွေ့လျားမည်ဖြစ်ပြီး -- ဆိုလိုသည်မှာ ဆင်းရဲသော မြေဆီလွှာသို့ အမြစ်ထဲမှ ထွက်ပေါက်ကာ ဝင်ရောက်လာမည် မဟုတ်ဟု ဆိုလိုသည်ဟု ရှင်းပြသည်။ ယင်းအစား အမြစ်ဆံပင်ဆဲလ်များသည် ၎င်းတို့၏ ဆဲလ်အမြှေးပါးများတွင် တွယ်ကပ်နေသော ပန့်ငယ်လေးများကဲ့သို့ လုပ်ဆောင်သည့် အထူးပရိုတင်း Carrier များကို အသုံးပြုသည်။ ဤ Pump များသည် ATP အဖြစ် အသက်ရှုခြင်းမှ ထွက်ရှိသော စွမ်းအင်ကို သုံး၍ သိပ်သည်းဆကွာဟမှုကို ဆန့်ကျင်ကာ နိုက်ထရိတ် အိုင်းယွန်းများကို ဆဲလ်ထဲသို့ တွန်းသွင်းပေးသည် -- ဤဖြစ်စဉ်ကို Active Transport ဟု ခေါ်သည်။\n\nအခြားအပင်ဆဲလ်များနှင့်နှိုင်းယှဉ်လျှင် အမြစ်ဆံပင်ဆဲလ်များတွင် Mitochondria များစွာ ထူထပ်နေခြင်း၏ အကြောင်းရင်းမှာ ဤအချက်ကြောင့်ပင် ဖြစ်ကြောင်း ဆက်ရှင်းပြသည်- ကွာဟမှုကို ဆန့်ကျင်၍ အိုင်းယွန်းများကို ပို့ဆောင်ရန် စွမ်းအင် အလွန်များစွာ ကုန်ကျသောကြောင့်၊ ပရိုတင်း Pump များ ဆက်လက် အလုပ်လုပ်နိုင်ရန် ဆဲလ်တွင် အသက်ရှုခြင်းမှ ATP စဉ်ဆက်မပြတ် ယုံကြည်စိတ်ချရအောင် ထောက်ပံ့ပေးရန် လိုအပ်သည်။ သူရအောင်သည် အဖိုးက 'ကျန်းမာသော အမြစ်များသည် ကောင်းစွာ 'အသက်ရှူ' ရန် လိုသည်' ဟု အမြဲပြောလေ့ရှိသည့် အကြောင်းရင်းကို နောက်ဆုံးတွင် နားလည်လာခဲ့သည် -- အသက်ရှုခြင်းအတွက် အောက်ဆီဂျင် လုံလောက်စွာ မရရှိပါက အမြစ်များသည် ATP လုံလောက်စွာ မထုတ်လုပ်နိုင်ဘဲ၊ နိုက်ထရိတ်၏ Active Transport နှေးလာကာ ဆန်စပါးပင်များ ကြီးထွားရန် လိုအပ်သော အာဟာရများ ချို့တဲ့သွားနိုင်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why can't diffusion alone explain how nitrate enters the roots?",
            questionMy:
                "စာပိုဒ် ၂ အရ Diffusion တစ်ခုတည်းက နိုက်ထရိတ် အမြစ်ထဲသို့ ဝင်ရောက်ပုံကို အဘယ်ကြောင့် ရှင်းပြ၍ မရနိုင်သနည်း။",
            optionsEn: [
              "Diffusion would move nitrate out of the roots, not in, since the roots already have a higher concentration",
              "Diffusion is too slow for plants to use",
              "Nitrate cannot diffuse through any membrane",
              "Diffusion only works for gases, not ions",
            ],
            optionsMy: [
              "အမြစ်များတွင် သိပ်သည်းဆ ပိုမြင့်နေပြီးဖြစ်သဖြင့် Diffusion သည် နိုက်ထရိတ်ကို အမြစ်ထဲမှ ထွက်စေလိမ့်မည်၊ ဝင်စေမည် မဟုတ်ပါ",
              "အပင်များအတွက် Diffusion သည် အလွန်နှေးသောကြောင့်",
              "နိုက်ထရိတ်သည် မည်သည့်အမြှေးပါးကိုမျှ Diffuse ဖြတ်၍မရနိုင်သောကြောင့်",
              "Diffusion သည် ဓာတ်ငွေ့များအတွက်သာ အလုပ်လုပ်၍ အိုင်းယွန်းများအတွက် မလုပ်နိုင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Remember: diffusion always moves particles from high concentration to low concentration.",
              "The roots already have MORE nitrate than the soil, so diffusion would work the wrong way.",
            ],
            hintsMy: [
              "မှတ်ထားပါ- Diffusion သည် အမှုန်များကို သိပ်သည်းဆမြင့်ရာမှ နိမ့်ရာသို့ အမြဲ ရွေ့လျားစေသည်။",
              "အမြစ်များတွင် မြေဆီလွှာထက် နိုက်ထရိတ် ပို၍ ရှိနှင့်ပြီးသားဖြစ်၍ Diffusion သည် ဆန့်ကျင်ဘက်သို့သာ အလုပ်လုပ်လိမ့်မည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "In paragraph 2, what role do the protein carriers play?",
            questionMy:
                "စာပိုဒ် ၂ တွင် ပရိုတင်း Carrier များ၏ အခန်းကဏ္ဍမှာ အဘယ်နည်း။",
            optionsEn: [
              "They act like pumps, using ATP energy to force nitrate ions into the cell against the gradient",
              "They store water for the plant during droughts",
              "They convert nitrate into oxygen for respiration",
              "They allow water to evaporate faster from the leaves",
            ],
            optionsMy: [
              "ATP စွမ်းအင်သုံး၍ ကွာဟမှုကို ဆန့်ကျင်ကာ နိုက်ထရိတ်အိုင်းယွန်းများကို ဆဲလ်ထဲသို့ တွန်းသွင်းပေးသည့် Pump များအလား လုပ်ဆောင်သည်",
              "မိုးခေါင်ချိန်တွင် အပင်အတွက် ရေကို သိမ်းဆည်းပေးသည်",
              "နိုက်ထရိတ်ကို အသက်ရှုခြင်းအတွက် အောက်ဆီဂျင်အဖြစ် ပြောင်းပေးသည်",
              "အရွက်များမှ ရေငွေ့ပျံမှုကို ပိုမြန်စေသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing what the carriers do with ATP energy.",
              "They are described as acting like 'tiny pumps'.",
            ],
            hintsMy: [
              "Carrier များက ATP စွမ်းအင်ဖြင့် မည်သို့လုပ်ဆောင်ကြောင်း ဖော်ပြသောစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "'ပန့်ငယ်လေးများ' အလား လုပ်ဆောင်သည်ဟု ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why do root hair cells contain an unusually large number of mitochondria?",
            questionMy:
                "စာပိုဒ် ၃ အရ အမြစ်ဆံပင်ဆဲလ်များတွင် Mitochondria များ အထူးအားဖြင့် ဘာကြောင့် များစွာ ပါဝင်သနည်း။",
            optionsEn: [
              "Active transport of ions requires a large, constant supply of ATP from respiration",
              "Mitochondria help the roots absorb sunlight",
              "Mitochondria store nitrate ions directly",
              "Root hair cells do not actually need more mitochondria than other cells",
            ],
            optionsMy: [
              "အိုင်းယွန်းများ၏ Active Transport သည် အသက်ရှုခြင်းမှ ATP အများကြီးနှင့် စဉ်ဆက်မပြတ် ထောက်ပံ့မှု လိုအပ်သောကြောင့်",
              "Mitochondria က အမြစ်များအား နေရောင်ကို စုပ်ယူရန် ကူညီသောကြောင့်",
              "Mitochondria က နိုက်ထရိတ် အိုင်းယွန်းများကို တိုက်ရိုက် သိမ်းဆည်းသောကြောင့်",
              "အမြစ်ဆံပင်ဆဲလ်များတွင် အခြားဆဲလ်များထက် Mitochondria ပိုမလိုအပ်ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Active transport is described as 'energetically expensive'.",
              "Mitochondria are where respiration happens, producing the ATP that active transport needs.",
            ],
            hintsMy: [
              "Active Transport ကို 'စွမ်းအင်သုံးစွဲမှု များစွာကုန်ကျ' ဟု ဖော်ပြထားသည်။",
              "Mitochondria သည် Active Transport အတွက်လိုအပ်သော ATP ကို ထုတ်ပေးသည့် အသက်ရှုခြင်း ဖြစ်ပေါ်ရာနေရာဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on paragraph 3, what would happen to active transport in the roots if the soil became waterlogged and short of oxygen?",
            questionMy:
                "စာပိုဒ် ၃ အရ မြေဆီလွှာသည် ရေလွှမ်းမိုးပြီး အောက်ဆီဂျင် ရှားပါးလာပါက အမြစ်များရှိ Active Transport တွင် အဘယ်အရာ ဖြစ်လာမည်နည်း။",
            optionsEn: [
              "It would slow down, since less oxygen means less respiration and less ATP",
              "It would speed up, since the plant would work harder to compensate",
              "It would be unaffected, since active transport does not need oxygen",
              "It would switch to using diffusion instead",
            ],
            optionsMy: [
              "အောက်ဆီဂျင်နည်းလျှင် အသက်ရှုခြင်း နည်းပြီး ATP နည်းသဖြင့် နှေးလာလိမ့်မည်",
              "အပင်က ပြန်လျော်ညီအောင် ပို၍ကြိုးစားသဖြင့် ပိုမြန်လာလိမ့်မည်",
              "Active Transport တွင် အောက်ဆီဂျင် မလိုအပ်သဖြင့် မည်သည့်အကျိုးသက်ရောက်မှုမျှ မရှိပါ",
              "Diffusion ကို အစားထိုး အသုံးပြုလိမ့်မည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Respiration needs oxygen, and active transport needs ATP from respiration.",
              "The passage explicitly says roots need to 'breathe well' for active transport to work.",
            ],
            hintsMy: [
              "အသက်ရှုခြင်းတွင် အောက်ဆီဂျင် လိုအပ်ပြီး Active Transport တွင် အသက်ရှုခြင်းမှ ATP လိုအပ်သည်။",
              "အမြစ်များ Active Transport အလုပ်လုပ်ရန် 'ကောင်းစွာ အသက်ရှူ' ရမည်ဖြစ်ကြောင်း ဖော်ပြထားသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w6-d5",
      dayNumber: 5,
      titleEn: "Week 6 Recap: Active Transport",
      titleMy: "ဆဌမပတ် ပြန်လည်သုံးသပ်ခြင်း - Active Transport",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What is the key difference between active transport and diffusion?",
          questionMy:
              "Active Transport နှင့် Diffusion ကြား အဓိက ကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Active transport moves particles against the concentration gradient and needs energy; diffusion does not",
            "Diffusion only happens in plants; active transport only happens in animals",
            "Active transport is always faster than diffusion",
            "There is no real difference between the two processes",
          ],
          optionsMy: [
            "Active Transport သည် သိပ်သည်းဆကွာဟမှုကို ဆန့်ကျင်၍ ရွေ့လျားပြီး စွမ်းအင်လိုအပ်သည်၊ Diffusion တွင်မူ မလိုအပ်ပါ",
            "Diffusion သည် အပင်များတွင်သာ ဖြစ်ပွား၍ Active Transport သည် တိရစ္ဆာန်များတွင်သာ ဖြစ်ပွားသည်",
            "Active Transport သည် Diffusion ထက် အမြဲပိုမြန်သည်",
            "ဤဖြစ်စဉ်နှစ်ခုကြား အမှန်တကယ် ကွာခြားချက် မရှိပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which cell structure is most closely linked to providing energy for active transport?",
          questionMy:
              "Active Transport အတွက် စွမ်းအင်ပေးရန် အနီးစပ်ဆုံး ဆက်စပ်နေသော ဆဲလ်ဖွဲ့စည်းပုံမှာ အဘယ်နည်း။",
          optionsEn: ["Mitochondrion", "Cell wall", "Vacuole", "Chloroplast"],
          optionsMy: ["Mitochondrion", "ဆဲလ်နံရံ", "Vacuole", "Chloroplast"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Protein carriers involved in active transport are best described as...",
          questionMy:
              "Active Transport တွင် ပါဝင်သော ပရိုတင်း Carrier များကို အကောင်းဆုံး ဖော်ပြသည့်အရာမှာ...",
          optionsEn: [
            "Pumps in the cell membrane that use ATP to move specific particles across",
            "Structures found only in the nucleus",
            "Sugars that provide energy directly",
            "Pores that let any molecule pass through freely",
          ],
          optionsMy: [
            "အထူးအမှုန်များကို ATP သုံး၍ ဖြတ်ပို့ပေးသော ဆဲလ်အမြှေးပါးရှိ Pump များ",
            "နျူကလိယပ်စ်တွင်သာ တွေ့ရသော ဖွဲ့စည်းပုံများ",
            "စွမ်းအင်ကို တိုက်ရိုက်ပေးသော သကြားများ",
            "မည်သည့် မော်လီကျူးမဆို လွတ်လပ်စွာ ဖြတ်သန်းခွင့်ပြုသော အပေါက်များ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 7: "Biological Molecules and Food Tests"
// =====================================================================

const CourseWeekDef _igcseBioWeek7 = CourseWeekDef(
  id: "course-igcse-bio-w7",
  weekNumber: 7,
  titleEn: "Biological Molecules and Food Tests",
  titleMy: "ဇီဝ မော်လီကျူးများနှင့် အစားအစာ စမ်းသပ်မှုများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w7-d1",
      dayNumber: 1,
      titleEn: "The Building Blocks of Life",
      titleMy: "အသက်ရှင်ခြင်း၏ ဓာတုအခြေခံ တည်ဆောက်ပုံများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Carbohydrates are built from repeating units of...",
          questionMy:
              "ကာဗိုဟိုက်ဒရိတ်များသည် ထပ်ခါထပ်ခါ ရှိနေသော ...မှ တည်ဆောက်ထားသည်",
          optionsEn: [
            "Simple sugars (such as glucose)",
            "Amino acids",
            "Fatty acids and glycerol",
            "Water molecules",
          ],
          optionsMy: [
            "ရိုးရှင်းသော သကြားများ (ဂလူးကို့စ်ကဲ့သို့)",
            "အမိုင်နိုအက်ဆစ်များ",
            "Fatty acids နှင့် Glycerol",
            "ရေမော်လီကျူးများ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Starch and glycogen are both large carbohydrates made of many smaller units joined together.",
            "That smaller repeating unit is a simple sugar, glucose.",
          ],
          hintsMy: [
            "Starch နှင့် Glycogen နှစ်ခုလုံးသည် အသေးငယ်တစ်ခုနှင့်တစ်ခု ဆက်စပ်ထားသော ကြီးမားသော ကာဗိုဟိုက်ဒရိတ်များဖြစ်သည်။",
            "ထိုအသေးငယ် ထပ်ခါထပ်ခါ ရှိနေသော ယူနစ်မှာ ရိုးရှင်းသောသကြား ဂလူးကို့စ် ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Proteins are made up of long chains of...",
          questionMy:
              "ပရိုတင်းများသည် ရှည်လျားသော ...ကွင်းဆက်များဖြင့် ဖွဲ့စည်းထားသည်",
          optionsEn: [
            "Amino acids",
            "Glucose molecules",
            "Fatty acids",
            "Nitrogen atoms only",
          ],
          optionsMy: [
            "အမိုင်နိုအက်ဆစ်များ",
            "ဂလူးကို့စ် မော်လီကျူးများ",
            "Fatty acids များ",
            "နိုက်ထရိုဂျင် အက်တမ်များသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "There are about twenty different types of this building block found in the human body.",
            "Long chains of these fold up to form a protein's final shape.",
          ],
          hintsMy: [
            "လူ့ခန္ဓာကိုယ်တွင် ဤတည်ဆောက်ပုံ အမျိုးအစား အလုံးဆယ်ခန့် ရှိသည်။",
            "ဤအရာများ၏ ရှည်လျားသောကွင်းဆက်များသည် ခေါက်ချိုးလိမ်၍ ပရိုတင်း၏ နောက်ဆုံးပုံသဏ္ဌာန်ကို ဖွဲ့စည်းသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of the following best explains why water is described as a good solvent for many biological reactions?",
          questionMy:
              "ဇီဝဓာတုတုံ့ပြန်မှုများစွာအတွက် ရေကို ကောင်းမွန်သော solvent တစ်ခုအဖြစ် ဖော်ပြရသည့် အကြောင်းရင်းကို အောက်ပါတို့အနက် အကောင်းဆုံး ရှင်းပြသည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Many important substances can dissolve in it, allowing them to be transported and to react together",
            "It never reacts with any other substance",
            "It is the only molecule found in living cells",
            "It always stays at the same temperature",
          ],
          optionsMy: [
            "အရေးကြီးသော ပစ္စည်းအမျိုးမျိုးကို ဖျော်ဝင်နိုင်စေပြီး ၎င်းတို့ကို သယ်ယူနိုင်ရုံသာမက အတူတကွ ဓာတ်ပြုနိုင်စေသောကြောင့်",
            "အခြားပစ္စည်းများနှင့် လုံးဝ ဓာတ်မပြုသောကြောင့်",
            "သက်ရှိဆဲလ်များတွင် တွေ့ရှိရသော တစ်ခုတည်းသော မော်လီကျူးဖြစ်သောကြောင့်",
            "အမြဲ အပူချိန်တူညီနေသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about how substances travel around the body, e.g. dissolved in blood plasma.",
            "A solvent is a substance that other things can dissolve in.",
          ],
          hintsMy: [
            "ပစ္စည်းများသည် ခန္ဓာကိုယ်တစ်ဝန်း မည်သို့ သယ်ယူဆောင်ရွက်ကြောင်း စဉ်းစားကြည့်ပါ၊ ဥပမာ သွေးရည်ကြည်တွင် ပျော်ဝင်ခြင်း။",
            "Solvent ဆိုသည်မှာ အခြားအရာများ ပျော်ဝင်နိုင်သော ပစ္စည်းတစ်ခု ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w7-d2",
      dayNumber: 2,
      titleEn: "Match: Biological Molecule Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ဇီဝ မော်လီကျူး ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w7-dm-1",
          termEn: "Glucose",
          termMy: "ဂလူးကို့စ် (Glucose)",
          matchEn:
              "A simple sugar that is the basic building block of starch and glycogen",
          matchMy:
              "Starch နှင့် Glycogen ၏ အခြေခံ တည်ဆောက်ပုံ ဖြစ်သော ရိုးရှင်းသောသကြား",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w7-dm-2",
          termEn: "Amino acid",
          termMy: "အမိုင်နိုအက်ဆစ် (Amino Acid)",
          matchEn:
              "The basic building block that joins together in long chains to form a protein",
          matchMy:
              "ပရိုတင်းတစ်ခု ဖွဲ့စည်းရန် ရှည်လျားသောကွင်းဆက်ဖြင့် ပေါင်းစည်းသော အခြေခံ တည်ဆောက်ပုံ",
          colorValue: 0xFF2196F3,
        ),
        DragMatchPair(
          id: "igcsebio-w7-dm-3",
          termEn: "Fatty acid and glycerol",
          termMy: "Fatty Acid နှင့် Glycerol",
          matchEn:
              "The two building blocks that join together to form a lipid (fat or oil)",
          matchMy:
              "Lipid (အဆီ သို့မဟုတ် ဆီ) တစ်ခု ဖွဲ့စည်းရန် ပေါင်းစည်းသော တည်ဆောက်ပုံနှစ်မျိုး",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w7-dm-4",
          termEn: "Solvent",
          termMy: "Solvent",
          matchEn:
              "A substance, such as water, in which other substances can dissolve",
          matchMy: "အခြားပစ္စည်းများ ပျော်ဝင်နိုင်သော ရေကဲ့သို့သော ပစ္စည်း",
          colorValue: 0xFF03A9F4,
        ),
        DragMatchPair(
          id: "igcsebio-w7-dm-5",
          termEn: "Starch",
          termMy: "Starch",
          matchEn:
              "A large carbohydrate made of many glucose molecules joined together, used by plants to store energy",
          matchMy:
              "အပင်များက စွမ်းအင်သိုလှောင်ရန် သုံးသော ဂလူးကို့စ် မော်လီကျူးများစွာ ပေါင်းစည်းထားသည့် ကြီးမားသော ကာဗိုဟိုက်ဒရိတ်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w7-dm-6",
          termEn: "Lipid",
          termMy: "Lipid",
          matchEn: "A fat or oil, used by organisms mainly as an energy store",
          matchMy:
              "သက်ရှိများက စွမ်းအင်သိုလှောင်ရန် အဓိကသုံးသော အဆီ သို့မဟုတ် ဆီ",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w7-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Nutrient Group?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် အာဟာရအုပ်စု",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Mainly Carbohydrate",
          "Mainly Protein",
          "Mainly Lipid (Fat)",
        ],
        bucketsMy: [
          "အဓိက ကာဗိုဟိုက်ဒရိတ်",
          "အဓိက ပရိုတင်း",
          "အဓိက Lipid (အဆီ)",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w7-sort-1",
            labelEn: "White rice",
            labelMy: "ဆန်ဖြူ",
            correctBucketEn: "Mainly Carbohydrate",
            correctBucketMy: "အဓိက ကာဗိုဟိုက်ဒရိတ်",
          ),
          SortingItem(
            id: "igcsebio-w7-sort-2",
            labelEn: "Grilled fish",
            labelMy: "ငါးကင်",
            correctBucketEn: "Mainly Protein",
            correctBucketMy: "အဓိက ပရိုတင်း",
          ),
          SortingItem(
            id: "igcsebio-w7-sort-3",
            labelEn: "Cooking oil",
            labelMy: "ချက်ပြုတ်ဆီ",
            correctBucketEn: "Mainly Lipid (Fat)",
            correctBucketMy: "အဓိက Lipid (အဆီ)",
          ),
          SortingItem(
            id: "igcsebio-w7-sort-4",
            labelEn: "Boiled eggs",
            labelMy: "ကြက်ဥပြုတ်",
            correctBucketEn: "Mainly Protein",
            correctBucketMy: "အဓိက ပရိုတင်း",
          ),
          SortingItem(
            id: "igcsebio-w7-sort-5",
            labelEn: "White bread",
            labelMy: "ပေါင်မုန့်ဖြူ",
            correctBucketEn: "Mainly Carbohydrate",
            correctBucketMy: "အဓိက ကာဗိုဟိုက်ဒရိတ်",
          ),
          SortingItem(
            id: "igcsebio-w7-sort-6",
            labelEn: "Butter",
            labelMy: "ထောပတ်",
            correctBucketEn: "Mainly Lipid (Fat)",
            correctBucketMy: "အဓိက Lipid (အဆီ)",
          ),
          SortingItem(
            id: "igcsebio-w7-sort-7",
            labelEn: "Boiled chickpeas",
            labelMy: "ကုလားပဲပြုတ်",
            correctBucketEn: "Mainly Protein",
            correctBucketMy: "အဓိက ပရိုတင်း",
          ),
          SortingItem(
            id: "igcsebio-w7-sort-8",
            labelEn: "Granulated sugar",
            labelMy: "သကြားသဲ",
            correctBucketEn: "Mainly Carbohydrate",
            correctBucketMy: "အဓိက ကာဗိုဟိုက်ဒရိတ်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w7-d4",
      dayNumber: 4,
      titleEn: "Reading: Hnin Ei Ei's Kitchen Science",
      titleMy: "စာဖတ်ခြင်း - နှင်းအိအိ၏ မီးဖိုချောင် သိပ္ပံ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Hnin Ei Ei's Kitchen Science",
        titleMy: "နှင်းအိအိ၏ မီးဖိုချောင် သိပ္ပံ",
        passageEn:
            "Hnin Ei Ei loved helping her mother cook on weekends, but after a week of Biology lessons on nutrients, she started noticing the kitchen differently. While washing rice, she thought about how each tiny white grain was mostly starch -- a large carbohydrate built from thousands of glucose molecules joined end to end, which the plant used to store energy in its seeds. She realised this was exactly why rice, bread, and potatoes were all described as 'carbohydrate-rich' foods: they were all storing the same basic building block, glucose, just packaged differently.\n\nWhen her mother handed her a bowl of soaked chickpeas to add to the curry, Hnin Ei Ei remembered that beans and pulses are known for being protein-rich. Her teacher had explained that proteins are built from long chains of amino acids, and unlike carbohydrates and fats, proteins always contain nitrogen as well as carbon, hydrogen, and oxygen -- which is why foods like beans, fish, and eggs are especially important for growth and repairing damaged tissue in the body.\n\nFinally, as the cooking oil sizzled in the wok, Hnin Ei Ei asked her mother why oil left such a different, greasy mark on paper compared to water. Her mother didn't know the biological answer, but Hnin Ei Ei remembered from class that lipids -- fats and oils -- are made from fatty acids joined to glycerol, and unlike carbohydrates and proteins, they don't dissolve in water at all. That single property, she realised, was exactly what the food tests they were about to learn in the next lesson would rely on to identify lipids in unknown food samples.",
        passageMy:
            "နှင်းအိအိသည် စနေ၊ တနင်္ဂနွေများတွင် အမေနှင့်အတူ ချက်ပြုတ်ရန် ကူညီရသည်ကို နှစ်သက်ခဲ့သော်လည်း၊ အာဟာရအကြောင်း ဇီဝဗေဒသင်ခန်းစာတစ်ပတ်လုံးနောက်ပိုင်း၊ သူမသည် မီးဖိုချောင်ကို မတူညီစွာ သတိထားမိလာခဲ့သည်။ ဆန်ဆေးနေစဉ် ဆန်စေ့သေးလေးတစ်ခုစီသည် အဓိကအားဖြင့် Starch ဖြစ်ကြောင်း -- အပင်က ၎င်း၏ မျိုးစေ့များတွင် စွမ်းအင်သိုလှောင်ရန် သုံးသော ဂလူးကို့စ်မော်လီကျူး ထောင်ချီ ပေါင်းစည်းထားသော ကြီးမားသော ကာဗိုဟိုက်ဒရိတ်တစ်ခုဖြစ်ကြောင်း သူမ တွေးမိခဲ့သည်။ ဆန်၊ ပေါင်မုန့်နှင့် အာလူးများကို 'ကာဗိုဟိုက်ဒရိတ်ကြွယ်ဝသော' အစားအစာများဟု ဖော်ပြရသည့် အကြောင်းရင်းကို သူမ သိရှိလာခဲ့သည် -- ၎င်းတို့ အားလုံးသည် အခြေခံ တည်ဆောက်ပုံ ဂလူးကို့စ် တစ်မျိုးတည်းကိုပင် ကွဲပြားစွာ ထုပ်ပိုးထားခြင်း ဖြစ်သည်။\n\nအမေက ကုလားပဲစိမ်ထားသော ခွက်တစ်ခွက်ကို ဟင်းထဲထည့်ရန် ပေးအပ်သောအခါ၊ နှင်းအိအိသည် ပဲနှင့် ကုလားပဲအမျိုးမျိုးသည် ပရိုတင်းကြွယ်ဝသည်ဟု လူသိများကြောင်း သတိရမိခဲ့သည်။ ပရိုတင်းများသည် ရှည်လျားသော အမိုင်နိုအက်ဆစ် ကွင်းဆက်များမှ တည်ဆောက်ထားပြီး၊ ကာဗိုဟိုက်ဒရိတ်နှင့် အဆီများနှင့် မတူဘဲ ပရိုတင်းများသည် ကာဗွန်၊ ဟိုက်ဒရိုဂျင်နှင့် အောက်ဆီဂျင်အပြင် နိုက်ထရိုဂျင်ကိုပါ အမြဲ ပါဝင်ကြောင်း ဆရာမ ရှင်းပြခဲ့သည် -- ဤအကြောင်းရင်းကြောင့် ပဲ၊ ငါးနှင့် ကြက်ဥကဲ့သို့သော အစားအစာများသည် ခန္ဓာကိုယ်ကြီးထွားမှုနှင့် ပျက်စီးသွားသော တစ်ရှူးများ ပြန်လည်ပြုပြင်ရန်အတွက် အထူးအရေးကြီးသည်။\n\nနောက်ဆုံးတွင် ချက်ပြုတ်ဆီ ကရမ်းထဲမှာ ချွတ်ချွတ်မြည်နေစဉ်၊ နှင်းအိအိက ဆီသည် ရေနှင့်နှိုင်းယှဉ်လျှင် စက္ကူပေါ်တွင် အဘယ်ကြောင့် ကွဲပြားသော ဆီပေဖျင်းသော အမှတ်အသားချန်ထားခဲ့ကြောင်း အမေကို မေးမြန်းခဲ့သည်။ အမေက ဇီဝဗေဒဆိုင်ရာ အဖြေကို မသိသော်လည်း၊ နှင်းအိအိက Lipids -- အဆီနှင့်ဆီများ -- ကို Fatty Acid များ Glycerol နှင့် ပေါင်းစည်းထား၍ ဖန်တီးထားသည်ကို အတန်းမှ သတိရမိခဲ့သည်၊ ကာဗိုဟိုက်ဒရိတ်နှင့် ပရိုတင်းများနှင့် မတူဘဲ ၎င်းတို့သည် ရေထဲတွင် လုံးဝ မပျော်ဝင်ပါ။ ထိုပစ္စည်းတစ်ခုတည်း၏ ဂုဏ်သတ္တိသည် နောက်သင်ခန်းစာတွင် သင်ကြားရမည့် အစားအစာစမ်းသပ်မှုများက အမည်မသိ အစားအစာနမူနာများထဲမှ Lipids ကို ဖော်ထုတ်ရန် အားထားရသော အချက်ပင်ဖြစ်ကြောင်း သူမ သဘောပေါက်လာခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, why are rice, bread, and potatoes all described as carbohydrate-rich?",
            questionMy:
                "စာပိုဒ် ၁ အရ ဆန်၊ ပေါင်မုန့်နှင့် အာလူးများကို ကာဗိုဟိုက်ဒရိတ်ကြွယ်ဝသည်ဟု အဘယ်ကြောင့် ဖော်ပြသနည်း။",
            optionsEn: [
              "They all store the same building block, glucose, in different forms",
              "They all contain the same amount of protein",
              "They are all grown in the same season",
              "They all taste sweet",
            ],
            optionsMy: [
              "အားလုံးသည် အခြေခံတည်ဆောက်ပုံ ဂလူးကို့စ်တစ်မျိုးတည်းကို ပုံစံမတူဘဲ သိုလှောင်ထားသောကြောင့်",
              "အားလုံးသည် ပရိုတင်း ပမာဏ တူညီစွာ ပါဝင်သောကြောင့်",
              "အားလုံးကို ရာသီတူတူ စိုက်ပျိုးသောကြောင့်",
              "အားလုံးသည် ချိုသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the end of paragraph 1 about starch being made of glucose.",
              "The passage says they are 'the same basic building block, glucose, just packaged differently'.",
            ],
            hintsMy: [
              "Starch သည် ဂလူးကို့စ်မှ ပြုလုပ်ထားခြင်းအကြောင်း စာပိုဒ် ၁ ၏ အဆုံးပိုင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "စာပိုဒ်က ၎င်းတို့သည် 'ပုံစံမတူဘဲ ထုပ်ပိုးထားသော အခြေခံတည်ဆောက်ပုံ ဂလူးကို့စ်တစ်မျိုးတည်း' ဖြစ်သည်ဟု ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what element do proteins contain that carbohydrates and fats do not?",
            questionMy:
                "စာပိုဒ် ၂ အရ ကာဗိုဟိုက်ဒရိတ်နှင့် အဆီများတွင် မပါဝင်သော်လည်း ပရိုတင်းများတွင် ပါဝင်သော ဓာတ်သတ္တိမှာ အဘယ်နည်း။",
            optionsEn: ["Nitrogen", "Carbon", "Hydrogen", "Oxygen"],
            optionsMy: [
              "နိုက်ထရိုဂျင်",
              "ကာဗွန်",
              "ဟိုက်ဒရိုဂျင်",
              "အောက်ဆီဂျင်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Carbon, hydrogen, and oxygen are shared by all three types of biological molecule.",
              "This element is specifically mentioned as unique to proteins in paragraph 2.",
            ],
            hintsMy: [
              "ကာဗွန်၊ ဟိုက်ဒရိုဂျင်နှင့် အောက်ဆီဂျင်တို့ကို ဇီဝမော်လီကျူး သုံးမျိုးစလုံးက အတူတကွ ပါဝင်သည်။",
              "ဤဓာတ်ကို စာပိုဒ် ၂ တွင် ပရိုတင်းအတွက်သာ ထူးခြားသည်ဟု တိတိကျကျ ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "In paragraph 3, why does the oil leave a greasy mark on paper that water does not?",
            questionMy:
                "စာပိုဒ် ၃ တွင် ရေမပြုနိုင်သော ဆီပေဖျင်းသော အမှတ်အသားကို ဆီက စက္ကူပေါ်တွင် အဘယ်ကြောင့် ချန်ထားခဲ့သနည်း။",
            optionsEn: [
              "Because lipids do not dissolve in water",
              "Because water always evaporates faster than oil",
              "Because oil is heavier than water",
              "Because oil contains amino acids",
            ],
            optionsMy: [
              "Lipids များသည် ရေထဲတွင် မပျော်ဝင်သောကြောင့်",
              "ရေသည် ဆီထက် ရေငွေ့ပျံမှု အမြဲပိုမြန်သောကြောင့်",
              "ဆီသည် ရေထက် ပိုလေးသောကြောင့်",
              "ဆီတွင် အမိုင်နိုအက်ဆစ်များ ပါဝင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This property of lipids is stated directly at the end of paragraph 3.",
              "Unlike carbohydrates and proteins, lipids are not soluble in water.",
            ],
            hintsMy: [
              "Lipids ၏ ဤဂုဏ်သတ္တိကို စာပိုဒ် ၃ ၏ အဆုံးတွင် တိုက်ရိုက် ဖော်ပြထားသည်။",
              "ကာဗိုဟိုက်ဒရိတ်နှင့် ပရိုတင်းများနှင့် မတူဘဲ Lipids များသည် ရေတွင် ပျော်ဝင်ခြင်း မရှိပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What does paragraph 3 suggest will be the focus of the next lesson?",
            questionMy:
                "နောက်သင်ခန်းစာ၏ အဓိကအကြောင်းအရာကို စာပိုဒ် ၃ က မည်သို့ အကြံပြုသနည်း။",
            optionsEn: [
              "Food tests that use lipids' properties to identify them in unknown samples",
              "How to cook different dishes",
              "The history of cooking oil",
              "How plants make their own food",
            ],
            optionsMy: [
              "Lipids ၏ ဂုဏ်သတ္တိကို သုံး၍ အမည်မသိနမူနာများထဲမှ ဖော်ထုတ်ရန် အစားအစာစမ်းသပ်မှုများ",
              "ဟင်းလျာအမျိုးမျိုး ချက်ပြုတ်နည်း",
              "ချက်ပြုတ်ဆီ၏ သမိုင်း",
              "အပင်များ မိမိတို့အစားအစာကို မည်သို့ ပြုလုပ်ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence about what the next lesson's food tests will rely on.",
              "The passage links lipids' insolubility in water directly to identifying them in food tests.",
            ],
            hintsMy: [
              "နောက်သင်ခန်းစာ၏ အစားအစာစမ်းသပ်မှုများ မည်သည့်အချက်ကို အားထားမည်ဆိုသည့် နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Lipids ၏ ရေတွင် မပျော်ဝင်သော ဂုဏ်သတ္တိကို အစားအစာစမ်းသပ်မှုများတွင် ဖော်ထုတ်ရန်နှင့် တိုက်ရိုက် ဆက်စပ်ထားသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w7-d5",
      dayNumber: 5,
      titleEn: "Week 7 Recap: Biological Molecules",
      titleMy: "သတ္တမပတ် ပြန်လည်သုံးသပ်ခြင်း - ဇီဝ မော်လီကျူးများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which building block makes up carbohydrates?",
          questionMy:
              "ကာဗိုဟိုက်ဒရိတ်များကို မည်သည့် တည်ဆောက်ပုံက ဖွဲ့စည်းသနည်း။",
          optionsEn: [
            "Simple sugars",
            "Amino acids",
            "Fatty acids",
            "Nitrogen bases",
          ],
          optionsMy: [
            "ရိုးရှင်းသောသကြားများ",
            "အမိုင်နိုအက်ဆစ်များ",
            "Fatty acids",
            "နိုက်ထရိုဂျင်ဘေ့စ်များ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which of these foods would you expect to be richest in protein?",
          questionMy:
              "ဤအစားအစာများအနက် ပရိုတင်း အကြွယ်ဝဆုံးဖြစ်လိမ့်မည်ဟု ခန့်မှန်းရမည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: ["Grilled chicken", "White rice", "Cooking oil", "Sugar"],
          optionsMy: ["ကြက်သားကင်", "ဆန်ဖြူ", "ချက်ပြုတ်ဆီ", "သကြား"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Lipids are built from fatty acids and...",
          questionMy:
              "Lipids များကို Fatty Acids နှင့် ...တို့မှ တည်ဆောက်ထားသည်",
          optionsEn: ["Glycerol", "Glucose", "Amino acids", "Water"],
          optionsMy: ["Glycerol", "ဂလူးကို့စ်", "အမိုင်နိုအက်ဆစ်များ", "ရေ"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 8 (Capstone): "Biological Molecules Practical Lab"
// =====================================================================

const CourseWeekDef _igcseBioWeek8 = CourseWeekDef(
  id: "course-igcse-bio-w8",
  weekNumber: 8,
  titleEn: "Biological Molecules Practical Lab",
  titleMy: "ဇီဝ မော်လီကျူးများ ဓာတ်ခွဲခန်း လက်တွေ့စမ်းသပ်မှု",
  xpReward: 20,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w8-d1",
      dayNumber: 1,
      titleEn: "The Four Food Tests",
      titleMy: "အစားအစာ စမ်းသပ်မှု လေးမျိုး",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A food sample is heated with Benedict's solution and turns brick-red. What does this indicate?",
          questionMy:
              "အစားအစာနမူနာတစ်ခုကို Benedict's Solution နှင့် အပူပေးရာ အုတ်ရောင်အဖြစ် ပြောင်းသွားသည်။ ၎င်းက အဘယ်ကို ညွှန်ပြသနည်း။",
          optionsEn: [
            "The presence of a reducing sugar",
            "The presence of starch",
            "The presence of protein",
            "The presence of a lipid",
          ],
          optionsMy: [
            "Reducing Sugar ပါဝင်ကြောင်း",
            "Starch ပါဝင်ကြောင်း",
            "ပရိုတင်း ပါဝင်ကြောင်း",
            "Lipid ပါဝင်ကြောင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Benedict's solution starts off blue and is used specifically to test for one type of biological molecule.",
            "A colour change through green, yellow, orange, to brick-red (with heating) is the positive result for reducing sugars.",
          ],
          hintsMy: [
            "Benedict's Solution သည် စတင်စဉ် အပြာရောင်ရှိပြီး ဇီဝမော်လီကျူး တစ်မျိုးတည်းအတွက် တိတိကျကျ သုံးသည်။",
            "အပူပေးစဉ် အစိမ်း၊ အဝါ၊ လိမ္မော်မှ အုတ်ရောင်သို့ အရောင်ပြောင်းလဲမှုသည် Reducing Sugar အတွက် Positive ရလဒ် ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which food test is used to detect the presence of starch, and what colour change indicates a positive result?",
          questionMy:
              "Starch ပါဝင်မှုကို ရှာဖွေရန် မည်သည့် စမ်းသပ်မှုကို သုံးပြီး Positive ရလဒ်သည် မည်သည့် အရောင်ပြောင်းလဲမှုကို ညွှန်ပြသနည်း။",
          optionsEn: [
            "The iodine test, which turns from orange-brown to blue-black",
            "The Biuret test, which turns from blue to purple",
            "Benedict's test, which turns from blue to brick-red",
            "The ethanol test, which produces a cloudy white emulsion",
          ],
          optionsMy: [
            "Iodine Test ဖြစ်ပြီး လိမ္မော်-အညိုမှ အပြာ-အနက်သို့ ပြောင်းလဲသည်",
            "Biuret Test ဖြစ်ပြီး အပြာမှ ခရမ်းသို့ ပြောင်းလဲသည်",
            "Benedict's Test ဖြစ်ပြီး အပြာမှ အုတ်ရောင်သို့ ပြောင်းလဲသည်",
            "Ethanol Test ဖြစ်ပြီး အဖြူရောင် ရေနှစ်ငင်ရည် (Emulsion) ဖြစ်ပေါ်စေသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Iodine solution's normal colour is orange-brown before it reacts with starch.",
            "Starch turns iodine solution a very dark, almost black-blue colour.",
          ],
          hintsMy: [
            "Iodine Solution ၏ ပုံမှန်အရောင်သည် Starch နှင့် မဓာတ်ပြုမီ လိမ္မော်-အညိုရောင် ဖြစ်သည်။",
            "Starch က Iodine Solution ကို အလွန်နက်သော၊ အနက်နီးပါး အပြာရောင်သို့ ပြောင်းလဲစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which food test would you use to check whether a food sample contains protein?",
          questionMy:
              "အစားအစာနမူနာတွင် ပရိုတင်း ပါဝင်မှုစစ်ဆေးရန် မည်သည့် စမ်းသပ်မှုကို သုံးမည်နည်း။",
          optionsEn: [
            "The Biuret test",
            "The iodine test",
            "Benedict's test",
            "The ethanol emulsion test",
          ],
          optionsMy: [
            "Biuret Test",
            "Iodine Test",
            "Benedict's Test",
            "Ethanol Emulsion Test",
          ],
          correctIndex: 0,
          hintsEn: [
            "This test uses a blue solution that turns purple (lilac) when protein is present.",
            "The name of the test is different from the name of the biological molecule it tests for.",
          ],
          hintsMy: [
            "ဤစမ်းသပ်မှုသည် ပရိုတင်း ရှိသောအခါ ခရမ်းရောင် (Lilac) သို့ ပြောင်းလဲသွားသော အပြာရောင် Solution ကို သုံးသည်။",
            "စမ်းသပ်မှု၏ အမည်သည် ၎င်းက စစ်ဆေးသော ဇီဝမော်လီကျူး၏ အမည်နှင့် မတူပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w8-d2",
      dayNumber: 2,
      titleEn: "Match: Test and Positive Result",
      titleMy: "တွဲစပ်ကြမည် - စမ်းသပ်မှုနှင့် Positive ရလဒ်",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w8-dm-1",
          termEn: "Benedict's test (for reducing sugars)",
          termMy: "Benedict's Test (Reducing Sugar အတွက်)",
          matchEn:
              "Blue solution turns green, yellow, orange, or brick-red when heated",
          matchMy:
              "အပြာရောင် Solution ကို အပူပေးသောအခါ အစိမ်း၊ အဝါ၊ လိမ္မော် သို့မဟုတ် အုတ်ရောင်သို့ ပြောင်းလဲသည်",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w8-dm-2",
          termEn: "Iodine test (for starch)",
          termMy: "Iodine Test (Starch အတွက်)",
          matchEn: "Orange-brown solution turns blue-black",
          matchMy: "လိမ္မော်-အညိုရောင် Solution ကို အပြာ-အနက်သို့ ပြောင်းလဲသည်",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w8-dm-3",
          termEn: "Biuret test (for protein)",
          termMy: "Biuret Test (ပရိုတင်းအတွက်)",
          matchEn: "Blue solution turns purple (lilac)",
          matchMy:
              "အပြာရောင် Solution ကို ခရမ်းရောင် (Lilac) သို့ ပြောင်းလဲသည်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w8-dm-4",
          termEn: "Ethanol emulsion test (for lipids)",
          termMy: "Ethanol Emulsion Test (Lipid အတွက်)",
          matchEn: "A cloudy white emulsion forms when mixed with water",
          matchMy:
              "ရေနှင့် ရောစပ်လိုက်သောအခါ ဖြူဖတ်လာသော ရေနှစ်ငင်ရည် (Emulsion) ဖြစ်ပေါ်လာသည်",
          colorValue: 0xFFFFC107,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w8-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Test Result?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် စမ်းသပ်ချက်ရလဒ်",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Indicates a Reducing Sugar",
          "Indicates Starch",
          "Indicates Protein",
          "Indicates a Lipid",
        ],
        bucketsMy: [
          "Reducing Sugar ကို ညွှန်ပြသည်",
          "Starch ကို ညွှန်ပြသည်",
          "ပရိုတင်း ကို ညွှန်ပြသည်",
          "Lipid ကို ညွှန်ပြသည်",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w8-sort-1",
            labelEn: "Iodine solution turns blue-black",
            labelMy: "Iodine Solution က အပြာ-အနက်သို့ ပြောင်းလဲခြင်း",
            correctBucketEn: "Indicates Starch",
            correctBucketMy: "Starch ကို ညွှန်ပြသည်",
          ),
          SortingItem(
            id: "igcsebio-w8-sort-2",
            labelEn: "Benedict's solution turns brick-red after heating",
            labelMy:
                "အပူပေးပြီးနောက် Benedict's Solution က အုတ်ရောင်သို့ ပြောင်းလဲခြင်း",
            correctBucketEn: "Indicates a Reducing Sugar",
            correctBucketMy: "Reducing Sugar ကို ညွှန်ပြသည်",
          ),
          SortingItem(
            id: "igcsebio-w8-sort-3",
            labelEn: "Biuret solution turns purple",
            labelMy: "Biuret Solution က ခရမ်းရောင်သို့ ပြောင်းလဲခြင်း",
            correctBucketEn: "Indicates Protein",
            correctBucketMy: "ပရိုတင်း ကို ညွှန်ပြသည်",
          ),
          SortingItem(
            id: "igcsebio-w8-sort-4",
            labelEn:
                "A cloudy white emulsion forms after shaking with ethanol and adding water",
            labelMy:
                "Ethanol နှင့် လှုပ်ရှားပြီး ရေထည့်ပြီးနောက် ဖြူဖတ်သော Emulsion ဖြစ်ပေါ်လာခြင်း",
            correctBucketEn: "Indicates a Lipid",
            correctBucketMy: "Lipid ကို ညွှန်ပြသည်",
          ),
          SortingItem(
            id: "igcsebio-w8-sort-5",
            labelEn:
                "Iodine solution stays orange-brown after being added to the sample",
            labelMy:
                "နမူနာထဲ ထည့်ပြီးနောက် Iodine Solution လိမ္မော်-အညိုရောင်အတိုင်း ဆက်ရှိနေခြင်း",
            correctBucketEn: "Indicates a Reducing Sugar",
            correctBucketMy: "Reducing Sugar ကို ညွှန်ပြသည်",
          ),
          SortingItem(
            id: "igcsebio-w8-sort-6",
            labelEn: "Benedict's solution stays blue after heating",
            labelMy:
                "အပူပေးပြီးနောက် Benedict's Solution အပြာရောင်အတိုင်း ဆက်ရှိနေခြင်း",
            correctBucketEn: "Indicates Starch",
            correctBucketMy: "Starch ကို ညွှန်ပြသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w8-d4",
      dayNumber: 4,
      titleEn: "Reading: Zin Ko Ko's Mystery Sample",
      titleMy: "စာဖတ်ခြင်း - ဇင်ကိုကို၏ လျှို့ဝှက်နမူနာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Zin Ko Ko's Mystery Sample",
        titleMy: "ဇင်ကိုကို၏ လျှို့ဝှက်နမူနာ",
        passageEn:
            "For the practical exam, Zin Ko Ko's teacher handed every student an unlabelled test tube containing a crushed, liquefied food sample and asked them to identify which biological molecules it contained using all four food tests. Zin Ko Ko decided to work through the tests one at a time, recording every colour change carefully in his practical notebook.\n\nFirst, he added a few drops of iodine solution to a small sample -- it stayed orange-brown, showing no starch was present. Next, he heated a fresh sample with Benedict's solution in a water bath: after a few minutes, the solution turned from blue through green and orange to a definite brick-red precipitate, confirming a reducing sugar was present in a fairly high concentration, since the strength of the colour change roughly indicated how much sugar was there. He then tested a third sample with Biuret solution at room temperature (no heating needed for this test) and watched it turn a clear lilac-purple, confirming protein. Finally, he shook a sample with ethanol, then poured the mixture into a test tube of water -- a cloudy white emulsion formed at the top, confirming a lipid was also present.\n\nPutting his four results together, Zin Ko Ko concluded that his unknown sample contained a reducing sugar, protein, and lipid, but no starch. When his teacher revealed the samples afterward, his group's sample turned out to be crushed peanuts blended with milk -- and Zin Ko Ko realised his four test results matched perfectly: milk sugar (lactose, a reducing sugar) and milk protein explained two results, while the fats naturally present in both peanuts and milk explained the positive lipid test, and the absence of starch made sense since neither peanuts nor milk are starchy foods.",
        passageMy:
            "လက်တွေ့စာမေးပွဲအတွက် ဇင်ကိုကို၏ ဆရာမက ကျောင်းသားတိုင်းအား စာအမည်မတပ်ထားသော ချေဖျက်၍ အရည်ပြောင်းထားသော အစားအစာနမူနာပါ စမ်းသပ်ပြွန်တစ်ခုစီ ပေးအပ်ပြီး၊ အစားအစာစမ်းသပ်မှု လေးမျိုးလုံးကို သုံးပြီး မည်သည့် ဇီဝမော်လီကျူးများ ပါဝင်ကြောင်း ခွဲခြားစေခဲ့သည်။ ဇင်ကိုကိုက စမ်းသပ်မှုများကို တစ်ခုပြီးတစ်ခု အဆင့်ဆင့် လုပ်ဆောင်ရန် ဆုံးဖြတ်ပြီး၊ အရောင်ပြောင်းလဲမှု တိုင်းကို သူ၏ လက်တွေ့မှတ်စုစာအုပ်တွင် သေချာစွာ မှတ်တမ်းတင်ခဲ့သည်။\n\nပထမဆုံး Iodine Solution အနည်းငယ်ကို နမူနာသေးလေးတစ်ခုပေါ်တွင် စမ်းသပ်ခဲ့ရာ -- လိမ္မော်-အညိုရောင်အတိုင်း ဆက်ရှိနေခဲ့ပြီး Starch မပါဝင်ကြောင်း ပြသခဲ့သည်။ ထို့နောက် သူသည် သစ်လွင်နမူနာတစ်ခုကို Benedict's Solution ဖြင့် ရေနွေးကန်တွင် အပူပေးခဲ့ရာ- မိနစ်အနည်းငယ်ကြာပြီးနောက် Solution သည် အပြာမှ အစိမ်းနှင့် လိမ္မော်ကို ဖြတ်ပြီး ရှင်းလင်းသော အုတ်ရောင် ဒြပ်ကျခက် (Precipitate) အဖြစ် ပြောင်းလဲခဲ့ကာ၊ အရောင်ပြောင်းလဲမှု အားကောင်းမှုက ထိုနေရာတွင် သကြားပမာဏ မည်မျှရှိကြောင်း အကြမ်းဖျင်း ညွှန်ပြသောကြောင့် Reducing Sugar အတန်အသင့်များများ ပါဝင်ကြောင်း အတည်ပြုခဲ့သည်။ ထို့နောက် သူသည် တတိယနမူနာကို Biuret Solution ဖြင့် အခန်းအပူချိန်တွင် (ဤစမ်းသပ်မှုအတွက် အပူပေးရန် မလိုအပ်ပါ) စမ်းသပ်ခဲ့ရာ ရှင်းလင်းသော Lilac-Purple ရောင်သို့ ပြောင်းလဲသွားသည်ကို တွေ့ရှိခဲ့ပြီး ပရိုတင်းကို အတည်ပြုခဲ့သည်။ နောက်ဆုံးတွင် သူသည် နမူနာတစ်ခုကို Ethanol နှင့် လှုပ်ရှားခဲ့ပြီး၊ ထို့နောက် ရေစမ်းသပ်ပြွန်ထဲသို့ ရောစပ်ချထည့်ခဲ့ရာ -- ဖျော့ဖျော့ဖြူသော ရေနှစ်ငင်ရည် (Emulsion) သည် အပေါ်ဘက်တွင် ဖြစ်ပေါ်လာပြီး Lipid ပါဝင်ကြောင်းလည်း အတည်ပြုခဲ့သည်။\n\nသူ၏ ရလဒ်လေးမျိုးကို ပေါင်းစပ်ကြည့်ခဲ့ရာ၊ ဇင်ကိုကိုက သူ၏ အမည်မသိနမူနာတွင် Reducing Sugar၊ ပရိုတင်းနှင့် Lipid ပါဝင်သော်လည်း Starch မပါဝင်ကြောင်း ကောက်ချက်ချခဲ့သည်။ နမူနာများကို ဆရာမက နောက်ပိုင်း ဖော်ပြသောအခါ၊ သူ၏ အုပ်စု၏ နမူနာသည် နွားနို့နှင့် ရောစပ်ထားသော ချေဖျက်ထားသည့် မြေပဲအဖြစ် သိရှိခဲ့ရသည် -- ဇင်ကိုကိုက သူ၏ ရလဒ်လေးမျိုးလုံး အတိအကျ ကိုက်ညီနေကြောင်း သဘောပေါက်လာခဲ့သည်- နွားနို့သကြား (Lactose၊ Reducing Sugar တစ်မျိုး) နှင့် နွားနို့ပရိုတင်းက ရလဒ်နှစ်ခုကို ရှင်းပြပေးပြီး၊ မြေပဲနှင့် နွားနို့နှစ်ခုစလုံးတွင် သဘာဝအလျောက် ပါဝင်သော အဆီများက Lipid Positive ရလဒ်ကို ရှင်းပြပေးကာ၊ မြေပဲနှင့် နွားနို့နှစ်ခုစလုံးသည် Starch များသော အစားအစာများ မဟုတ်သောကြောင့် Starch မတွေ့ရခြင်းသည်လည်း ကိုက်ညီနေခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what did the iodine test result tell Zin Ko Ko?",
            questionMy:
                "စာပိုဒ် ၂ အရ Iodine Test ရလဒ်က ဇင်ကိုကိုအား အဘယ်ကို ပြောပြသနည်း။",
            optionsEn: [
              "No starch was present in the sample",
              "A lot of starch was present",
              "The sample contained protein",
              "The sample was contaminated",
            ],
            optionsMy: [
              "နမူနာတွင် Starch မပါဝင်ကြောင်း",
              "Starch များစွာ ပါဝင်ကြောင်း",
              "နမူနာတွင် ပရိုတင်း ပါဝင်ကြောင်း",
              "နမူနာသည် ညစ်ညမ်းနေကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "The iodine solution stayed the same colour it started as.",
              "No colour change with iodine solution means a negative result -- no starch.",
            ],
            hintsMy: [
              "Iodine Solution သည် စတင်စဉ်ကအရောင်အတိုင်းပင် ဆက်ရှိနေခဲ့သည်။",
              "Iodine Solution တွင် အရောင်ပြောင်းလဲမှု မရှိခြင်းသည် Negative ရလဒ်ကို ဆိုလိုသည် -- Starch မရှိပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how could Zin Ko Ko tell that a fairly high concentration of reducing sugar was present?",
            questionMy:
                "စာပိုဒ် ၂ အရ Reducing Sugar အတန်အသင့်များများ ပါဝင်ကြောင်းကို ဇင်ကိုကို မည်သို့ သိရှိနိုင်ခဲ့သနည်း။",
            optionsEn: [
              "The Benedict's test produced a definite brick-red precipitate, a strong colour change",
              "The sample bubbled vigorously",
              "The sample turned a bright green immediately with no further change",
              "He measured the sample's mass before and after",
            ],
            optionsMy: [
              "Benedict's Test က ရှင်းလင်းသော အုတ်ရောင် ဒြပ်ကျခက်ကို ဖြစ်ပေါ်စေခဲ့ပြီး အားကောင်းသော အရောင်ပြောင်းလဲမှုဖြစ်သောကြောင့်",
              "နမူနာသည် ပွက်ပွက်ဆူနေခဲ့သောကြောင့်",
              "နမူနာသည် ချက်ချင်း စိမ်းလင်းစိမ်းစိုရောင်သို့ ပြောင်းပြီး နောက်ထပ် ပြောင်းလဲမှု မရှိခဲ့သောကြောင့်",
              "သူသည် နမူနာ၏ အလေးချိန်ကို မတိုင်းမီနှင့် ပြီးနောက် တိုင်းတာခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "The passage says the strength of the colour change roughly indicated how much sugar was present.",
              "Brick-red is the strongest positive colour on the Benedict's test scale.",
            ],
            hintsMy: [
              "အရောင်ပြောင်းလဲမှု၏ အားကောင်းမှုက သကြားပမာဏ မည်မျှရှိကြောင်း အကြမ်းဖျင်း ညွှန်ပြသည်ဟု စာပိုဒ်က ဖော်ပြထားသည်။",
              "Benedict's Test စကေးပေါ်တွင် အုတ်ရောင်သည် အားအကောင်းဆုံး Positive အရောင်ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what is different about the Biuret test compared to Benedict's test?",
            questionMy:
                "Benedict's Test နှင့် နှိုင်းယှဉ်လျှင် Biuret Test ၏ ကွာခြားချက်မှာ စာပိုဒ် ၂ အရ အဘယ်နည်း။",
            optionsEn: [
              "The Biuret test does not need heating",
              "The Biuret test needs much more heating",
              "The Biuret test uses iodine solution",
              "The Biuret test only works on liquids",
            ],
            optionsMy: [
              "Biuret Test တွင် အပူပေးရန် မလိုအပ်ပါ",
              "Biuret Test တွင် ပို၍ အပူများများ လိုအပ်သည်",
              "Biuret Test တွင် Iodine Solution သုံးသည်",
              "Biuret Test သည် အရည်များတွင်သာ အလုပ်လုပ်သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about the Biuret test being carried out at room temperature.",
              "The passage explicitly notes 'no heating needed for this test'.",
            ],
            hintsMy: [
              "Biuret Test ကို အခန်းအပူချိန်တွင် ပြုလုပ်ကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "စာပိုဒ်က 'ဤစမ်းသပ်မှုအတွက် အပူပေးရန် မလိုအပ်ပါ' ဟု တိတိကျကျ ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on paragraph 3, why did peanuts blended with milk produce a positive result for protein, reducing sugar, and lipid, but not starch?",
            questionMy:
                "စာပိုဒ် ၃ အရ နွားနို့နှင့်ရောစပ်ထားသော မြေပဲသည် ပရိုတင်း၊ Reducing Sugar နှင့် Lipid အတွက် Positive ရလဒ်ရသော်လည်း Starch အတွက် အဘယ်ကြောင့် မရသနည်း။",
            optionsEn: [
              "Milk and peanuts naturally contain sugar, protein, and fat, but neither is a starchy food",
              "The teacher made a mistake preparing the sample",
              "Peanuts contain starch but milk destroyed it",
              "The ethanol test always gives a false positive for lipids",
            ],
            optionsMy: [
              "နွားနို့နှင့် မြေပဲတို့သည် သဘာဝအလျောက် သကြား၊ ပရိုတင်းနှင့် အဆီ ပါဝင်သော်လည်း နှစ်ခုစလုံးသည် Starch များသော အစားအစာ မဟုတ်သောကြောင့်",
              "ဆရာမက နမူနာ ပြင်ဆင်ရာတွင် အမှားလုပ်မိသောကြောင့်",
              "မြေပဲတွင် Starch ပါဝင်သော်လည်း နွားနို့က ဖျက်ဆီးလိုက်သောကြောင့်",
              "Ethanol Test သည် Lipid အတွက် False Positive အမြဲပေးသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence explaining why each of the four results matched the actual sample.",
              "The passage explicitly says neither peanuts nor milk are starchy foods.",
            ],
            hintsMy: [
              "ရလဒ်လေးမျိုးလုံး အမှန်တကယ် နမူနာနှင့် အဘယ်ကြောင့် ကိုက်ညီနေကြောင်း ရှင်းပြသော နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "မြေပဲနှင့် နွားနို့နှစ်ခုစလုံးသည် Starch များသော အစားအစာ မဟုတ်ကြောင်း စာပိုဒ်က တိတိကျကျ ဖော်ပြထားသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w8-d5",
      dayNumber: 5,
      titleEn: "Term 2 Recap: Movement, Molecules and Food Tests",
      titleMy:
          "ဒုတိယအပိုင်း ပြန်လည်သုံးသပ်ခြင်း - ရွေ့လျားမှု၊ မော်လီကျူးများနှင့် အစားအစာစမ်းသပ်မှုများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which process requires energy: diffusion, osmosis, or active transport?",
          questionMy:
              "Diffusion, Osmosis, Active Transport တို့ထဲမှ မည်သည့်ဖြစ်စဉ်တွင် စွမ်းအင် လိုအပ်သနည်း",
          optionsEn: [
            "Active transport",
            "Diffusion",
            "Osmosis",
            "None of them",
          ],
          optionsMy: [
            "Active Transport",
            "Diffusion",
            "Osmosis",
            "မည်သည့်တစ်ခုမျှ မလိုအပ်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which test would you use to check if a food sample contains starch?",
          questionMy:
              "အစားအစာနမူနာတွင် Starch ပါဝင်မရှိ စစ်ဆေးရန် မည်သည့် Test ကို သုံးမည်နည်း",
          optionsEn: [
            "Iodine test",
            "Biuret test",
            "Benedict's test",
            "Ethanol test",
          ],
          optionsMy: [
            "Iodine Test",
            "Biuret Test",
            "Benedict's Test",
            "Ethanol Test",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A plant cell placed in a very concentrated salt solution is likely to become...",
          questionMy:
              "အလွန်ပြင်းသော ဆားရည်ထဲတွင် ထားလိုက်သော အပင်ဆဲလ်သည် ဖြစ်လာနိုင်ချေအမြင့်ဆုံးအရာမှာ...",
          optionsEn: ["Plasmolysed", "Turgid", "Larger", "Unaffected"],
          optionsMy: [
            "Plasmolysed",
            "Turgid",
            "ပိုကြီးလာခြင်း",
            "မည်သည့်အကျိုးသက်ရောက်မှုမျှ မရှိခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Proteins are unique among the three biological molecule groups because they always contain...",
          questionMy:
              "ဇီဝမော်လီကျူးအုပ်စု သုံးမျိုးအနက် ပရိုတင်းများ ထူးခြားသည့်အကြောင်းရင်းမှာ အမြဲပါဝင်သော...",
          optionsEn: ["Nitrogen", "Extra water", "No carbon", "Only sugar"],
          optionsMy: [
            "နိုက်ထရိုဂျင်",
            "ရေ ပိုပါဝင်ခြင်း",
            "ကာဗွန် လုံးဝမပါဝင်ခြင်း",
            "သကြားသာ ပါဝင်ခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 2: "Movement In and Out of Cells and Biological Molecules"
// (Weeks 5-8)
// =====================================================================

const CourseTermDef igcseBiologyTerm2 = CourseTermDef(
  id: "course-igcse-bio-t2",
  termNumber: 2,
  titleEn: "Movement In and Out of Cells and Biological Molecules",
  titleMy: "ဆဲလ်တွင်း/အပြင် ရွေ့လျားမှုနှင့် ဇီဝ မော်လီကျူးများ",
  certificateTitleEn: "Movement In and Out of Cells and Biological Molecules",
  certificateTitleMy: "ဆဲလ်တွင်း/အပြင် ရွေ့လျားမှုနှင့် ဇီဝ မော်လီကျူးများ",
  weeks: [_igcseBioWeek5, _igcseBioWeek6, _igcseBioWeek7, _igcseBioWeek8],
);

// =====================================================================
// Week 9: "Enzyme Action and Catalysis"
// =====================================================================

const CourseWeekDef _igcseBioWeek9 = CourseWeekDef(
  id: "course-igcse-bio-w9",
  weekNumber: 9,
  titleEn: "Enzyme Action and Catalysis",
  titleMy: "အင်ဇိုင်း လုပ်ဆောင်ချက်နှင့် ဓာတ်ကူမှု",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w9-d1",
      dayNumber: 1,
      titleEn: "Enzymes as Biological Catalysts",
      titleMy: "ဇီဝ ဓာတ်ကူများအဖြစ် အင်ဇိုင်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which of the following best describes an enzyme's role as a catalyst?",
          questionMy:
              "ဓာတ်ကူတစ်ခုအနေဖြင့် အင်ဇိုင်း၏ အခန်းကဏ္ဍကို အောက်ပါတို့အနက် အကောင်းဆုံး ဖော်ပြသည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "It speeds up a chemical reaction without being used up itself",
            "It is used up and destroyed after each reaction",
            "It slows down reactions to protect the cell",
            "It only works outside living cells",
          ],
          optionsMy: [
            "ကိုယ်တိုင် မကုန်ဆုံးဘဲ ဓာတုတုံ့ပြန်မှုတစ်ခုကို မြန်ဆန်စေသည်",
            "တုံ့ပြန်မှုတစ်ခုစီ ပြီးတိုင်း ကုန်ဆုံးပျက်စီးသွားသည်",
            "ဆဲလ်ကို ကာကွယ်ရန် တုံ့ပြန်မှုများကို နှေးကွေးစေသည်",
            "သက်ရှိဆဲလ်များ အပြင်ဘက်တွင်သာ အလုပ်လုပ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A catalyst by definition is not permanently changed by the reaction it speeds up.",
            "This means one enzyme molecule can be used again and again for many reactions.",
          ],
          hintsMy: [
            "ဓာတ်ကူတစ်ခု၏ အဓိပ္ပာယ်ဖွင့်ဆိုချက်အရ ၎င်းက မြန်ဆန်စေသော တုံ့ပြန်မှုကြောင့် အမြဲတမ်း ပြောင်းလဲမသွားပါ။",
            "ဆိုလိုသည်မှာ အင်ဇိုင်းမော်လီကျူးတစ်ခုကို တုံ့ပြန်မှုများစွာအတွက် ထပ်ခါထပ်ခါ အသုံးပြုနိုင်ခြင်း ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the 'lock and key' model of enzyme action, what does the 'key' represent?",
          questionMy:
              "အင်ဇိုင်းလုပ်ဆောင်ချက်၏ 'Lock and Key' Model တွင် 'Key' က အဘယ်ကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "The substrate, which fits into the enzyme's active site",
            "The enzyme itself",
            "The product formed after the reaction",
            "The temperature of the reaction",
          ],
          optionsMy: [
            "အင်ဇိုင်း၏ Active Site ထဲသို့ ကိုက်ညီစွာ ဝင်ရောက်သော Substrate",
            "အင်ဇိုင်း ကိုယ်တိုင်",
            "တုံ့ပြန်မှုပြီးနောက် ဖြစ်ပေါ်လာသော Product",
            "တုံ့ပြန်မှု၏ အပူချိန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "In this analogy, the enzyme is the 'lock' and its active site is shaped to fit one specific 'key'.",
            "The substrate is the molecule that the enzyme acts upon.",
          ],
          hintsMy: [
            "ဤဥပမာတွင် အင်ဇိုင်းသည် 'Lock' ဖြစ်ပြီး ၎င်း၏ Active Site သည် Key တစ်ခုတည်းနှင့်သာ ကိုက်ညီအောင် ပုံသဏ္ဌာန်ရှိသည်။",
            "Substrate ဆိုသည်မှာ အင်ဇိုင်းက လုပ်ဆောင်ပေးသော မော်လီကျူး ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why is an enzyme's active site described as being a specific shape?",
          questionMy:
              "အင်ဇိုင်း၏ Active Site ကို တိတိကျကျပုံသဏ္ဌာန်ရှိသည်ဟု ဖော်ပြရသည့် အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "So that only a substrate with a complementary shape can bind to it",
            "So that it can bind to any molecule regardless of shape",
            "So that it can change shape randomly every second",
            "So that it never reacts with anything",
          ],
          optionsMy: [
            "ဆန့်ကျင်ဘက် ကိုက်ညီသော ပုံသဏ္ဌာန်ရှိသည့် Substrate တစ်ခုတည်းသာ ချိတ်ဆက်နိုင်ရန်",
            "ပုံသဏ္ဌာန်မည်သို့ပင်ရှိစေ မော်လီကျူးမည်သည်နှင့်မဆို ချိတ်ဆက်နိုင်ရန်",
            "စက္ကန့်တိုင်း ကျပန်း ပုံသဏ္ဌာန်ပြောင်းနိုင်ရန်",
            "မည်သည့်အရာနှင့်မျှ ဓာတ်မပြုနိုင်ရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This specific-shape property is why each enzyme usually only works on one type of substrate.",
            "This is called enzyme specificity.",
          ],
          hintsMy: [
            "ဤ တိတိကျကျပုံသဏ္ဌာန် ဂုဏ်သတ္တိကြောင့် အင်ဇိုင်းတစ်ခုစီသည် များသောအားဖြင့် Substrate တစ်မျိုးတည်းနှင့်သာ အလုပ်လုပ်သည်။",
            "ဤအရာကို Enzyme Specificity ဟုခေါ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w9-d2",
      dayNumber: 2,
      titleEn: "Match: Enzyme Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - အင်ဇိုင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w9-dm-1",
          termEn: "Enzyme",
          termMy: "အင်ဇိုင်း (Enzyme)",
          matchEn:
              "A biological catalyst, made of protein, that speeds up a specific chemical reaction",
          matchMy:
              "ပရိုတင်းဖြင့် ဖွဲ့စည်းထားပြီး တိတိကျကျ ဓာတုတုံ့ပြန်မှုတစ်ခုကို မြန်ဆန်စေသော ဇီဝ ဓာတ်ကူ",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w9-dm-2",
          termEn: "Substrate",
          termMy: "Substrate",
          matchEn:
              "The molecule that an enzyme acts on and binds to at the active site",
          matchMy:
              "အင်ဇိုင်းက Active Site တွင် ချိတ်ဆက်ပြီး လုပ်ဆောင်ပေးသော မော်လီကျူး",
          colorValue: 0xFF2196F3,
        ),
        DragMatchPair(
          id: "igcsebio-w9-dm-3",
          termEn: "Active site",
          termMy: "Active Site",
          matchEn:
              "The specifically shaped region of an enzyme where the substrate binds",
          matchMy:
              "Substrate ချိတ်ဆက်ရာ အင်ဇိုင်း၏ တိတိကျကျပုံသဏ္ဌာန်ရှိသော နေရာ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w9-dm-4",
          termEn: "Catalyst",
          termMy: "ဓာတ်ကူ (Catalyst)",
          matchEn:
              "A substance that speeds up a reaction without being permanently changed",
          matchMy:
              "အမြဲတမ်း ပြောင်းလဲမသွားဘဲ တုံ့ပြန်မှုတစ်ခုကို မြန်ဆန်စေသော ပစ္စည်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w9-dm-5",
          termEn: "Product",
          termMy: "Product",
          matchEn:
              "The new substance formed after an enzyme has acted on its substrate",
          matchMy:
              "အင်ဇိုင်းက Substrate ကို လုပ်ဆောင်ပြီးနောက် ဖြစ်ပေါ်လာသော ပစ္စည်းသစ်",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w9-d3",
      dayNumber: 3,
      titleEn: "Sort: Enzyme or Not an Enzyme?",
      titleMy: "စီစစ်ကြမည် - အင်ဇိုင်းလား၊ မဟုတ်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Behaves Like an Enzyme", "Does NOT Behave Like an Enzyme"],
        bucketsMy: ["အင်ဇိုင်းကဲ့သို့ ပြုမူသည်", "အင်ဇိုင်းကဲ့သို့ မပြုမူပါ"],
        items: [
          SortingItem(
            id: "igcsebio-w9-sort-1",
            labelEn:
                "A protein that speeds up starch digestion and is reused afterward",
            labelMy:
                "Starch အစာချေဖျက်မှုကို မြန်ဆန်စေပြီး ပြီးနောက် ပြန်အသုံးပြုနိုင်သော ပရိုတင်း",
            correctBucketEn: "Behaves Like an Enzyme",
            correctBucketMy: "အင်ဇိုင်းကဲ့သို့ ပြုမူသည်",
          ),
          SortingItem(
            id: "igcsebio-w9-sort-2",
            labelEn:
                "A substance that is permanently used up and destroyed after one reaction",
            labelMy:
                "တုံ့ပြန်မှုတစ်ခုပြီးနောက် အမြဲတမ်း ကုန်ဆုံးပျက်စီးသွားသော ပစ္စည်း",
            correctBucketEn: "Does NOT Behave Like an Enzyme",
            correctBucketMy: "အင်ဇိုင်းကဲ့သို့ မပြုမူပါ",
          ),
          SortingItem(
            id: "igcsebio-w9-sort-3",
            labelEn:
                "A molecule with a specific shape that only binds one particular substrate",
            labelMy:
                "Substrate တစ်ခုတည်းနှင့်သာ ချိတ်ဆက်သော တိတိကျကျပုံသဏ္ဌာန်ရှိသည့် မော်လီကျူး",
            correctBucketEn: "Behaves Like an Enzyme",
            correctBucketMy: "အင်ဇိုင်းကဲ့သို့ ပြုမူသည်",
          ),
          SortingItem(
            id: "igcsebio-w9-sort-4",
            labelEn: "A substance that slows down every reaction it touches",
            labelMy: "ထိတွေ့သမျှ တုံ့ပြန်မှုတိုင်းကို နှေးကွေးစေသော ပစ္စည်း",
            correctBucketEn: "Does NOT Behave Like an Enzyme",
            correctBucketMy: "အင်ဇိုင်းကဲ့သို့ မပြုမူပါ",
          ),
          SortingItem(
            id: "igcsebio-w9-sort-5",
            labelEn:
                "Amylase, which speeds up the breakdown of starch into sugars",
            labelMy:
                "Starch ကို သကြားများအဖြစ် ချေဖျက်ရာတွင် မြန်ဆန်စေသော Amylase",
            correctBucketEn: "Behaves Like an Enzyme",
            correctBucketMy: "အင်ဇိုင်းကဲ့သို့ ပြုမူသည်",
          ),
          SortingItem(
            id: "igcsebio-w9-sort-6",
            labelEn: "A rock that never reacts with any biological molecule",
            labelMy:
                "ဇီဝမော်လီကျူး မည်သည်နှင့်မျှ လုံးဝ ဓာတ်မပြုသော ကျောက်တုံး",
            correctBucketEn: "Does NOT Behave Like an Enzyme",
            correctBucketMy: "အင်ဇိုင်းကဲ့သို့ မပြုမူပါ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w9-d4",
      dayNumber: 4,
      titleEn: "Reading: Aye Aye Mon's Fruit Juice Question",
      titleMy: "စာဖတ်ခြင်း - အေအေမွန်၏ သစ်သီးဖျော်ရည် မေးခွန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Aye Aye Mon's Fruit Juice Question",
        titleMy: "အေအေမွန်၏ သစ်သီးဖျော်ရည် မေးခွန်း",
        passageEn:
            "Aye Aye Mon's aunt ran a small fruit juice stall, and one afternoon Aye Aye Mon noticed a label on a bag of white powder that her aunt added to freshly pressed apple juice: 'pectinase enzyme -- clarifies juice.' Curious, she asked her aunt why the juice turned from cloudy to perfectly clear after the powder was stirred in and left for a while.\n\nHer aunt didn't know the biology, but Aye Aye Mon remembered her lesson on enzymes and worked it out herself. Cloudy apple juice contains pectin, a substance in plant cell walls that makes the juice thick and hazy. The pectinase enzyme's active site has a shape that specifically fits pectin molecules, like a key fitting a lock, allowing the enzyme to break the pectin down into smaller, soluble pieces. Once broken down, the pectin no longer scatters light the way it did before, so the juice becomes clear.\n\nWhat fascinated Aye Aye Mon most was that her aunt only ever needed a tiny pinch of the powder for a whole bucket of juice. She realised this made sense because of a key property of enzymes: since each enzyme molecule is not used up or destroyed by the reaction, a single pectinase molecule can break down one pectin molecule, be released unchanged, and then immediately bind to another pectin molecule to repeat the process -- over and over, thousands of times, which is exactly why only a small amount of enzyme is needed to process a large amount of substrate.",
        passageMy:
            "အေအေမွန်၏ အန်တီသည် သစ်သီးဖျော်ရည် ဆိုင်ငယ်တစ်ဆိုင် လုပ်ကိုင်ခဲ့ပြီး၊ တစ်နေ့လည်ခင်းတွင် အေအေမွန်သည် သူမ၏ အန်တီက စက်ဖျော်ထားသော ပန်းသီးဖျော်ရည်ထဲသို့ ထည့်လိုက်သော အဖြူရောင်မှုန့်အိတ်တွင် 'Pectinase Enzyme -- ဖျော်ရည်ကို ကြည်လင်စေသည်' ဟူသော အညွှန်းကို တွေ့ရှိခဲ့သည်။ စိတ်ဝင်စားစွာ မှုန့်ကို ရောစပ်ပြီး အနည်းငယ်ကြာမှသာ ဖျော်ရည်သည် ဝါဝါနောက်ဝါးမှ လုံးဝကြည်လင်သွားသည့် အကြောင်းရင်းကို သူမ အန်တီအား မေးမြန်းခဲ့သည်။\n\nအန်တီသည် ဇီဝဗေဒကို မသိသော်လည်း၊ အေအေမွန်က အင်ဇိုင်းများအကြောင်း သင်ခန်းစာကို သတိရမိပြီး ကိုယ်တိုင် ဖြေရှင်းကြည့်ခဲ့သည်။ ဝါနေသော ပန်းသီးဖျော်ရည်တွင် Pectin ပါဝင်ပြီး ၎င်းသည် အပင်ဆဲလ်နံရံရှိ ပစ္စည်းတစ်ခုဖြစ်ပြီး ဖျော်ရည်ကို ထူထပ်၍ ဝါစေသည်။ Pectinase Enzyme ၏ Active Site သည် Pectin မော်လီကျူးများနှင့် ကိုက်ညီသော ပုံသဏ္ဌာန်ရှိသည်၊ Key တစ်ခု Lock တစ်ခုနှင့် ကိုက်ညီသကဲ့သို့ပင်ဖြစ်ပြီး၊ အင်ဇိုင်းအား Pectin ကို ပိုသေးငယ်၍ ပျော်ဝင်နိုင်သော အစိတ်အပိုင်းများအဖြစ် ချေဖျက်နိုင်စေသည်။ ချေဖျက်ပြီးနောက် Pectin သည် အရင်ကအတိုင်း အလင်းကို မဖြန့်ကြဲတော့သဖြင့် ဖျော်ရည်သည် ကြည်လင်သွားသည်။\n\nအေအေမွန်ကို အထူးစိတ်ဝင်စားစေသည်မှာ ၎င်း၏ အန်တီသည် ဖျော်ရည်ပုံးတစ်ပုံးလုံးအတွက် မှုန့် အနည်းငယ်သာ လိုအပ်ခြင်းပင်ဖြစ်သည်။ ၎င်းသည် အင်ဇိုင်းများ၏ အဓိကဂုဏ်သတ္တိတစ်ခုကြောင့် ဖြစ်ကြောင်း သူမ သဘောပေါက်လာခဲ့သည်- အင်ဇိုင်းမော်လီကျူးတစ်ခုစီသည် တုံ့ပြန်မှုကြောင့် ကုန်ဆုံးပျက်စီးမသွားသောကြောင့်၊ Pectinase မော်လီကျူးတစ်ခုသည် Pectin မော်လီကျူးတစ်ခုကို ချေဖျက်ပြီးနောက် မပြောင်းလဲဘဲ ပြန်လွှတ်ပေးကာ ချက်ချင်းပင် နောက် Pectin မော်လီကျူးတစ်ခုနှင့် ချိတ်ဆက်ပြီး ဤဖြစ်စဉ်ကို ထပ်ခါထပ်ခါ ထောင်ချီအကြိမ် ပြန်လုပ်နိုင်သည် -- ၎င်းသည် Substrate ပမာဏများစွာကို ဆောင်ရွက်ရန် အင်ဇိုင်း အနည်းငယ်သာ လိုအပ်ရသည့် အတိအကျ အကြောင်းရင်းပင် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does the apple juice turn from cloudy to clear?",
            questionMy:
                "စာပိုဒ် ၂ အရ ပန်းသီးဖျော်ရည်သည် ဝါမှ ကြည်လင်စေသို့ အဘယ်ကြောင့် ပြောင်းလဲသနည်း။",
            optionsEn: [
              "Pectinase breaks down pectin into smaller pieces that no longer scatter light",
              "The juice is heated until it boils",
              "Pectin turns into sugar and dissolves completely",
              "The powder absorbs all the colour from the juice",
            ],
            optionsMy: [
              "Pectinase က Pectin ကို အလင်းမဖြန့်ကြဲတော့သော ပိုသေးငယ်သည့် အစိတ်အပိုင်းများအဖြစ် ချေဖျက်သောကြောင့်",
              "ဖျော်ရည်ကို ဆူအောင် အပူပေးသောကြောင့်",
              "Pectin သည် သကြားအဖြစ် ပြောင်းလဲပြီး လုံးဝ ပျော်ဝင်သွားသောကြောင့်",
              "မှုန့်က ဖျော်ရည်ထဲမှ အရောင်အားလုံးကို စုပ်ယူလိုက်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining what happens once the pectin is broken down.",
              "Cloudiness is caused by pectin scattering light -- once it's broken down, this stops.",
            ],
            hintsMy: [
              "Pectin ကို ချေဖျက်ပြီးနောက် အဘယ်အရာ ဖြစ်ပေါ်ကြောင်း ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဝါခြင်းသည် Pectin က အလင်းကို ဖြန့်ကြဲသောကြောင့် ဖြစ်ပြီး -- ချေဖျက်ပြီးလျှင် ရပ်တန့်သွားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "In paragraph 2, the 'key fitting a lock' comparison refers to which relationship?",
            questionMy:
                "စာပိုဒ် ၂ တွင် 'Key တစ်ခု Lock တစ်ခုနှင့် ကိုက်ညီခြင်း' နှိုင်းယှဉ်ချက်သည် မည်သည့်ဆက်နွယ်မှုကို ရည်ညွှန်းသနည်း။",
            optionsEn: [
              "The active site of pectinase and the shape of the pectin molecule",
              "The colour of the juice and the colour of the powder",
              "The size of the bucket and the amount of powder used",
              "The temperature of the juice and the speed of clarifying",
            ],
            optionsMy: [
              "Pectinase ၏ Active Site နှင့် Pectin မော်လီကျူး၏ ပုံသဏ္ဌာန်",
              "ဖျော်ရည်၏ အရောင်နှင့် မှုန့်၏ အရောင်",
              "ပုံး၏ အရွယ်အစားနှင့် သုံးစွဲသော မှုန့်ပမာဏ",
              "ဖျော်ရည်၏ အပူချိန်နှင့် ကြည်လင်စေသည့် အမြန်နှုန်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is the lock-and-key model of enzyme specificity applied to pectinase and pectin.",
              "The active site (lock) has a shape that specifically fits the substrate (key).",
            ],
            hintsMy: [
              "ဤသည်မှာ Pectinase နှင့် Pectin တွင် အသုံးချထားသော Enzyme Specificity ၏ Lock-and-Key Model ဖြစ်သည်။",
              "Active Site (Lock) သည် Substrate (Key) နှင့် တိတိကျကျ ကိုက်ညီသော ပုံသဏ္ဌာန်ရှိသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why does only a tiny amount of pectinase powder clarify a whole bucket of juice?",
            questionMy:
                "စာပိုဒ် ၃ အရ Pectinase မှုန့် အနည်းငယ်သာဖြင့် ဖျော်ရည်ပုံးတစ်ပုံးလုံးကို အဘယ်ကြောင့် ကြည်လင်စေနိုင်သနည်း။",
            optionsEn: [
              "Each enzyme molecule is not used up and can repeat the reaction on new substrate molecules over and over",
              "The powder dissolves and multiplies itself in the juice",
              "The pectin destroys itself without any enzyme needed",
              "The bucket is actually much smaller than it appears",
            ],
            optionsMy: [
              "အင်ဇိုင်းမော်လီကျူးတစ်ခုစီသည် မကုန်ဆုံးဘဲ Substrate မော်လီကျူးသစ်များပေါ်တွင် တုံ့ပြန်မှုကို ထပ်ခါထပ်ခါ ပြန်လုပ်နိုင်သောကြောင့်",
              "မှုန့်သည် ဖျော်ရည်ထဲတွင် ပျော်ဝင်ပြီး ကိုယ့်ကိုယ်ကို မွှားများသောကြောင့်",
              "Pectin သည် အင်ဇိုင်း မလိုအပ်ဘဲ ကိုယ်တိုင် ဖျက်ဆီးသွားသောကြောင့်",
              "ပုံးသည် အမြင်ထက် အမှန်တကယ် ပိုသေးငယ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This links back to the key property that catalysts are not permanently changed by the reaction.",
              "One molecule can react again and again, thousands of times.",
            ],
            hintsMy: [
              "ဓာတ်ကူများသည် တုံ့ပြန်မှုကြောင့် အမြဲတမ်း ပြောင်းလဲမသွားကြောင်း အဓိကဂုဏ်သတ္တိနှင့် ချိတ်ဆက်ထားသည်။",
              "မော်လီကျူးတစ်ခုသည် ထောင်ချီအကြိမ် ထပ်ခါထပ်ခါ ဓာတ်ပြုနိုင်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the whole passage, what type of substance is pectin?",
            questionMy:
                "စာပိုဒ်တစ်ခုလုံးအရ Pectin သည် မည်သည့်ပစ္စည်းအမျိုးအစား ဖြစ်သနည်း။",
            optionsEn: [
              "The substrate that the pectinase enzyme acts upon",
              "The enzyme that breaks down the juice",
              "A type of sugar added by the aunt",
              "A dye used to colour the juice",
            ],
            optionsMy: [
              "Pectinase Enzyme က လုပ်ဆောင်ပေးသော Substrate",
              "ဖျော်ရည်ကို ချေဖျက်ပေးသော Enzyme",
              "အန်တီက ထည့်ခဲ့သော သကြားအမျိုးအစား",
              "ဖျော်ရည်ကို အရောင်တင်ရန် သုံးသော အရောင်ပစ္စည်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Pectin is what the enzyme breaks down -- so it plays the 'key' role in the lock-and-key model.",
              "Pectinase is the enzyme; pectin is the substrate it acts on.",
            ],
            hintsMy: [
              "Pectin သည် Enzyme က ချေဖျက်ပေးသောအရာဖြစ်၍ -- Lock-and-Key Model တွင် 'Key' အခန်းကဏ္ဍဖြင့် ပါဝင်သည်။",
              "Pectinase သည် Enzyme ဖြစ်ပြီး Pectin သည် ၎င်းက လုပ်ဆောင်ပေးသော Substrate ဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w9-d5",
      dayNumber: 5,
      titleEn: "Week 9 Recap: Enzymes",
      titleMy: "နဝမပတ် ပြန်လည်သုံးသပ်ခြင်း - အင်ဇိုင်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Enzymes are made of which biological molecule?",
          questionMy:
              "အင်ဇိုင်းများကို မည်သည့် ဇီဝမော်လီကျူးဖြင့် ဖွဲ့စည်းထားသနည်း",
          optionsEn: ["Protein", "Carbohydrate", "Lipid", "Water"],
          optionsMy: ["ပရိုတင်း", "ကာဗိုဟိုက်ဒရိတ်", "Lipid", "ရေ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The molecule an enzyme acts upon is called the...",
          questionMy: "အင်ဇိုင်းက လုပ်ဆောင်ပေးသော မော်လီကျူးကို ဘာဟု ခေါ်သနည်း",
          optionsEn: ["Substrate", "Product", "Catalyst", "Solvent"],
          optionsMy: ["Substrate", "Product", "Catalyst", "Solvent"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why can a single enzyme molecule process many substrate molecules over time?",
          questionMy:
              "အင်ဇိုင်းမော်လီကျူးတစ်ခုတည်းက အချိန်ကြာလာသည်နှင့်အမျှ Substrate မော်လီကျူးများစွာကို အဘယ်ကြောင့် ဆောင်ရွက်နိုင်သနည်း",
          optionsEn: [
            "It is not used up or permanently changed by the reaction",
            "It multiplies itself after each reaction",
            "It absorbs energy from the substrate to grow bigger",
            "It only works once and then disappears",
          ],
          optionsMy: [
            "တုံ့ပြန်မှုကြောင့် မကုန်ဆုံးဘဲ အမြဲတမ်း ပြောင်းလဲမသွားခြင်း",
            "တုံ့ပြန်မှုတစ်ခုစီပြီးနောက် ကိုယ့်ကိုယ်ကို မွှားခြင်း",
            "ပိုကြီးလာရန် Substrate မှ စွမ်းအင်ကို စုပ်ယူခြင်း",
            "တစ်ကြိမ်သာ အလုပ်လုပ်ပြီး ပျောက်ကွယ်သွားခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 10: "Factors Affecting Enzyme Activity"
// =====================================================================

const CourseWeekDef _igcseBioWeek10 = CourseWeekDef(
  id: "course-igcse-bio-w10",
  weekNumber: 10,
  titleEn: "Factors Affecting Enzyme Activity",
  titleMy: "အင်ဇိုင်း လုပ်ဆောင်ချက်အပေါ် သက်ရောက်သော အကြောင်းရင်းများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w10-d1",
      dayNumber: 1,
      titleEn: "Temperature and Denaturation",
      titleMy: "အပူချိန်နှင့် Denaturation",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "As temperature rises towards an enzyme's optimum temperature, what usually happens to the rate of reaction?",
          questionMy:
              "အပူချိန်သည် အင်ဇိုင်း၏ Optimum Temperature ဆီသို့ မြင့်တက်လာသည်နှင့်အမျှ တုံ့ပြန်နှုန်းတွင် ပုံမှန်အားဖြင့် အဘယ်ဖြစ်ပေါ်လာသနည်း။",
          optionsEn: [
            "It increases, as particles move faster and collide more often",
            "It always stays exactly the same",
            "It decreases steadily from the very start",
            "It becomes completely random",
          ],
          optionsMy: [
            "အမှုန်များ ပိုမြန်စွာ လှုပ်ရှား၍ ပိုမြင့်တိုးထိတွေ့မှုများသောကြောင့် တိုးလာသည်",
            "အမြဲတမ်း အတိအကျ တူညီနေသည်",
            "အစကတည်းက တဖြည်းဖြည်း လျော့ကျလာသည်",
            "လုံးဝကျပန်း ဖြစ်လာသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Higher temperature gives both the enzyme and substrate molecules more kinetic energy.",
            "More kinetic energy means more frequent, successful collisions between enzyme and substrate.",
          ],
          hintsMy: [
            "အပူချိန်ပိုမြင့်လျှင် အင်ဇိုင်းနှင့် Substrate မော်လီကျူးများ နှစ်ခုစလုံးတွင် Kinetic Energy ပိုများလာသည်။",
            "Kinetic Energy ပိုများခြင်းက အင်ဇိုင်းနှင့် Substrate အကြား အောင်မြင်သော ထိတွေ့မှုများကို ပို၍ ဖြစ်ပေါ်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What happens to an enzyme when it becomes denatured?",
          questionMy:
              "အင်ဇိုင်းတစ်ခု Denatured ဖြစ်သွားသောအခါ အဘယ်ဖြစ်ပေါ်လာသနည်း။",
          optionsEn: [
            "Its active site changes shape permanently, so the substrate can no longer bind",
            "It temporarily stops working but returns to normal after cooling",
            "It becomes more effective at binding substrate",
            "It turns into a different type of molecule entirely",
          ],
          optionsMy: [
            "၎င်း၏ Active Site ပုံသဏ္ဌာန် အမြဲတမ်း ပြောင်းလဲသွားသဖြင့် Substrate နှင့် နောက်ထပ် မချိတ်ဆက်နိုင်တော့ပါ",
            "ယာယီ ရပ်တန့်သွားသော်လည်း အအေးခံပြီးနောက် ပုံမှန်အခြေအနေသို့ ပြန်ရောက်သည်",
            "Substrate နှင့် ချိတ်ဆက်ရန် ပိုထိရောက်လာသည်",
            "လုံးဝ မော်လီကျူးအမျိုးအစားတစ်မျိုးအဖြစ် ပြောင်းလဲသွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Denaturation is usually permanent and irreversible.",
            "Once the active site's shape is destroyed, the substrate no longer fits, like a broken lock.",
          ],
          hintsMy: [
            "Denaturation သည် များသောအားဖြင့် အမြဲတမ်း ဖြစ်ပြီး ပြန်လှည့်၍မရနိုင်တော့ပါ။",
            "Active Site ၏ ပုံသဏ္ဌာန် ပျက်စီးသွားပြီးလျှင် Substrate နှင့် ကိုက်ညီတော့မည် မဟုတ်ပါ၊ ပျက်နေသော Lock တစ်ခုကဲ့သို့ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A graph of enzyme activity against temperature typically rises to a peak and then falls sharply. What causes the sharp fall after the peak?",
          questionMy:
              "အပူချိန်ကို လိုက်၍ အင်ဇိုင်းလုပ်ဆောင်ချက် ဂရပ်သည် ပုံမှန်အားဖြင့် အထွတ်အထိပ်တစ်ခုသို့ တက်ပြီး ချက်ချင်း ကျဆင်းသွားသည်။ အထွတ်အထိပ်ပြီးနောက် ချက်ချင်းကျဆင်းရသည့် အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "The enzyme starts to denature at high temperatures",
            "The substrate runs out completely",
            "The enzyme starts working faster than the substrate can supply",
            "The reaction reaches equilibrium",
          ],
          optionsMy: [
            "အပူချိန်မြင့်လာသောအခါ အင်ဇိုင်း Denature စတင်ဖြစ်ပွားလာသည်",
            "Substrate လုံးဝ ကုန်ဆုံးသွားသည်",
            "Substrate ထောက်ပံ့နိုင်သည်ထက် အင်ဇိုင်းက ပို၍ မြန်စွာ အလုပ်လုပ်စတင်လာသည်",
            "တုံ့ပြန်မှုသည် Equilibrium သို့ ရောက်ရှိသွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The peak of the graph is the optimum temperature -- beyond that, heat starts to damage the enzyme.",
            "This damage is denaturation, which permanently stops the enzyme from working.",
          ],
          hintsMy: [
            "ဂရပ်၏ အထွတ်အထိပ်သည် Optimum Temperature ဖြစ်ပြီး -- ၎င်းထက်ကျော်လွန်လျှင် အပူချိန်က အင်ဇိုင်းကို ပျက်စီးစေသည်။",
            "ဤပျက်စီးမှုသည် Denaturation ဖြစ်ပြီး အင်ဇိုင်းကို အမြဲတမ်း အလုပ်မလုပ်နိုင်အောင် ရပ်တန့်စေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w10-d2",
      dayNumber: 2,
      titleEn: "Match: Enzyme Factors Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - အင်ဇိုင်း အကြောင်းရင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w10-dm-1",
          termEn: "Optimum temperature",
          termMy: "Optimum Temperature",
          matchEn: "The temperature at which an enzyme works fastest",
          matchMy: "အင်ဇိုင်းတစ်ခု အမြန်ဆုံး အလုပ်လုပ်နိုင်သည့် အပူချိန်",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w10-dm-2",
          termEn: "Denaturation",
          termMy: "Denaturation",
          matchEn:
              "A permanent change to an enzyme's active site shape, caused by high temperature or extreme pH, that stops it working",
          matchMy:
              "အပူချိန်မြင့်ခြင်း သို့မဟုတ် pH အလွန်အကျွံခြင်းကြောင့် အင်ဇိုင်း၏ Active Site ပုံသဏ္ဌာန် အမြဲတမ်း ပျက်စီးပြီး အလုပ်ရပ်သွားခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w10-dm-3",
          termEn: "Optimum pH",
          termMy: "Optimum pH",
          matchEn: "The pH at which an enzyme works fastest",
          matchMy: "အင်ဇိုင်းတစ်ခု အမြန်ဆုံး အလုပ်လုပ်နိုင်သည့် pH",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w10-dm-4",
          termEn: "Rate of reaction",
          termMy: "တုံ့ပြန်နှုန်း (Rate of Reaction)",
          matchEn:
              "How quickly a reaction produces its products, often measured in product formed per unit time",
          matchMy:
              "တုံ့ပြန်မှုတစ်ခု Product ကို မည်မျှမြန်ဆန်စွာ ထုတ်ပေးသနည်းဆိုသည့် အချက်၊ များသောအားဖြင့် တစ်ယူနစ်အချိန်ပါ Product ဖြင့် တိုင်းတာသည်",
          colorValue: 0xFF4CAF50,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w10-d3",
      dayNumber: 3,
      titleEn: "Sort: Enzyme Working or Denatured?",
      titleMy: "စီစစ်ကြမည် - အင်ဇိုင်းအလုပ်လုပ်နေသလား၊ Denatured ဖြစ်နေသလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Enzyme is Still Working Normally",
          "Enzyme is Likely Denatured",
        ],
        bucketsMy: [
          "အင်ဇိုင်း ပုံမှန်အလုပ်လုပ်နေဆဲ",
          "အင်ဇိုင်း Denatured ဖြစ်နိုင်ချေရှိသည်",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w10-sort-1",
            labelEn:
                "A human digestive enzyme at 37 degrees Celsius, its optimum temperature",
            labelMy:
                "လူ့ခန္ဓာကိုယ် Optimum Temperature ၃၇ ဒီဂရီဆဲလ်စီးယပ်တွင် ရှိသော အစာခြေအင်ဇိုင်း",
            correctBucketEn: "Enzyme is Still Working Normally",
            correctBucketMy: "အင်ဇိုင်း ပုံမှန်အလုပ်လုပ်နေဆဲ",
          ),
          SortingItem(
            id: "igcsebio-w10-sort-2",
            labelEn:
                "The same enzyme boiled at 100 degrees Celsius for several minutes",
            labelMy:
                "တူညီသော အင်ဇိုင်းကို ဒီဂရီ ၁၀၀ ဆဲလ်စီးယပ်တွင် မိနစ်များစွာ ပြုတ်ထားခြင်း",
            correctBucketEn: "Enzyme is Likely Denatured",
            correctBucketMy: "အင်ဇိုင်း Denatured ဖြစ်နိုင်ချေရှိသည်",
          ),
          SortingItem(
            id: "igcsebio-w10-sort-3",
            labelEn:
                "An enzyme placed in a strongly acidic solution far below its optimum pH",
            labelMy:
                "အင်ဇိုင်းတစ်ခုကို ၎င်း၏ Optimum pH ထက် များစွာ နိမ့်သော အက်ဆစ်ပြင်းသော ရည်ထဲတွင် ထားခြင်း",
            correctBucketEn: "Enzyme is Likely Denatured",
            correctBucketMy: "အင်ဇိုင်း Denatured ဖြစ်နိုင်ချေရှိသည်",
          ),
          SortingItem(
            id: "igcsebio-w10-sort-4",
            labelEn:
                "Pepsin working in the acidic environment of the stomach at its optimum pH",
            labelMy:
                "အစာအိမ်၏ Optimum pH ရှိသော အက်ဆစ်ပတ်ဝန်းကျင်တွင် Pepsin အလုပ်လုပ်ခြင်း",
            correctBucketEn: "Enzyme is Still Working Normally",
            correctBucketMy: "အင်ဇိုင်း ပုံမှန်အလုပ်လုပ်နေဆဲ",
          ),
          SortingItem(
            id: "igcsebio-w10-sort-5",
            labelEn:
                "An enzyme cooled to a low temperature, slowing but not damaging it",
            labelMy:
                "အင်ဇိုင်းတစ်ခုကို အပူချိန်နိမ့်စွာ အအေးခံထားခြင်း၊ နှေးသွားသော်လည်း ပျက်စီးမသွားခြင်း",
            correctBucketEn: "Enzyme is Still Working Normally",
            correctBucketMy: "အင်ဇိုင်း ပုံမှန်အလုပ်လုပ်နေဆဲ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w10-d4",
      dayNumber: 4,
      titleEn: "Reading: Zaw Min Htet's Boiled Egg Experiment",
      titleMy: "စာဖတ်ခြင်း - ဇော်မင်းထက်၏ ကြက်ဥပြုတ် စမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Zaw Min Htet's Boiled Egg Experiment",
        titleMy: "ဇော်မင်းထက်၏ ကြက်ဥပြုတ် စမ်းသပ်မှု",
        passageEn:
            "Zaw Min Htet's teacher set the class a challenge: design an experiment to investigate how temperature affects the rate of an enzyme-controlled reaction, using catalase, an enzyme found in liver, which breaks down hydrogen peroxide into water and oxygen gas. His group decided to measure the volume of oxygen gas produced in one minute at five different water bath temperatures: 10, 20, 37, 50, and 80 degrees Celsius.\n\nAt 10 degrees Celsius, bubbles of oxygen formed very slowly. At 20 degrees, they formed a little faster. At 37 degrees, bubbles formed rapidly and the group collected the most gas of any trial -- this, Zaw Min Htet realised, must be close to catalase's optimum temperature. But at 50 degrees, gas production had already dropped noticeably compared to 37 degrees, and at 80 degrees almost no bubbles formed at all, even though there was plenty of hydrogen peroxide substrate remaining untouched in the test tube.\n\nWriting up his conclusion, Zaw Min Htet explained that the rise in reaction rate from 10 to 37 degrees happened because the enzyme and substrate molecules had more kinetic energy at higher temperatures, causing more frequent, successful collisions between catalase's active site and hydrogen peroxide. But the collapse in rate above 37 degrees was not simply the reaction 'slowing down' -- it was evidence that the high heat had permanently changed the shape of catalase's active site, denaturing it so that hydrogen peroxide molecules could no longer bind, regardless of how much substrate remained available.",
        passageMy:
            "ဇော်မင်းထက်၏ ဆရာမက အတန်းကို စိန်ခေါ်မှုတစ်ခု ပေးအပ်ခဲ့သည်- ဟိုက်ဒရိုဂျင်ပါရောက်ဆိုဒ်ကို ရေနှင့် အောက်ဆီဂျင်ဓာတ်ငွေ့အဖြစ် ချေဖျက်ပေးသော အသည်းတွင် တွေ့ရှိရသော အင်ဇိုင်း Catalase ကို သုံး၍ အပူချိန်သည် အင်ဇိုင်းထိန်းချုပ်တုံ့ပြန်မှုနှုန်းကို မည်သို့ သက်ရောက်ကြောင်း စူးစမ်းရန် စမ်းသပ်မှုတစ်ခု ဒီဇိုင်းဆွဲရန် ဖြစ်သည်။ သူ၏ အုပ်စုက ရေအေးကန် အပူချိန် ၅ မျိုး -- ၁၀၊ ၂၀၊ ၃၇၊ ၅၀ နှင့် ၈၀ ဒီဂရီဆဲလ်စီးယပ် -- တွင် မိနစ်တစ်မိနစ်အတွင်း ထွက်ရှိသော အောက်ဆီဂျင်ဓာတ်ငွေ့ ပမာဏကို တိုင်းတာရန် ဆုံးဖြတ်ခဲ့သည်။\n\nဒီဂရီ ၁၀ တွင် အောက်ဆီဂျင် ပူဖောင်းများ အလွန်နှေးကွေးစွာ ဖြစ်ပေါ်ခဲ့သည်။ ဒီဂရီ ၂၀ တွင် အနည်းငယ် ပိုမြန်ခဲ့သည်။ ဒီဂရီ ၃၇ တွင် ပူဖောင်းများ လျင်မြန်စွာ ဖြစ်ပေါ်ခဲ့ပြီး အုပ်စုက စမ်းသပ်မှုအားလုံးထဲမှ အများဆုံး ဓာတ်ငွေ့ရရှိခဲ့သည် -- ၎င်းသည် Catalase ၏ Optimum Temperature နှင့် နီးစပ်ကြောင်း ဇော်မင်းထက် သဘောပေါက်ခဲ့သည်။ သို့သော် ဒီဂရီ ၅၀ တွင် ဒီဂရီ ၃၇ နှင့်နှိုင်းယှဉ်လျှင် ဓာတ်ငွေ့ထုတ်လုပ်မှု သိသိသာသာ ကျဆင်းခဲ့ပြီးဖြစ်ကာ၊ ဒီဂရီ ၈၀ တွင်မူ စမ်းသပ်ပြွန်ထဲတွင် ဟိုက်ဒရိုဂျင်ပါရောက်ဆိုဒ် Substrate များစွာ ရှင်သန်ကျန်ရှိနေသော်လည်း ပူဖောင်း အနည်းငယ်မျှသာ ဖြစ်ပေါ်ခဲ့သည်။\n\nသူ၏ ကောက်ချက်ကို ရေးသားရာတွင် ဇော်မင်းထက်က ဒီဂရီ ၁၀ မှ ၃၇ အထိ တုံ့ပြန်နှုန်း မြင့်တက်လာခြင်းသည် အင်ဇိုင်းနှင့် Substrate မော်လီကျူးများသည် အပူချိန်ပိုမြင့်လာသောအခါ Kinetic Energy ပိုများလာသောကြောင့် Catalase ၏ Active Site နှင့် ဟိုက်ဒရိုဂျင်ပါရောက်ဆိုဒ်ကြား ထိတွေ့မှု ပိုမြင့်တိုးလာသောကြောင့် ဖြစ်ကြောင်း ရှင်းပြခဲ့သည်။ သို့သော် ဒီဂရီ ၃၇ ကျော်လွန်ပြီးနောက် နှုန်းကျဆင်းမှုမှာ တုံ့ပြန်မှု 'နှေးလာခြင်း' တစ်ခုတည်း မဟုတ်ပါ -- ၎င်းသည် အပူချိန်ပြင်းထန်မှုက Catalase ၏ Active Site ပုံသဏ္ဌာန်ကို အမြဲတမ်း ပြောင်းလဲပစ်လိုက်ပြီး Denature ဖြစ်စေကာ၊ Substrate မည်မျှ ကျန်ရှိစေ ဟိုက်ဒရိုဂျင်ပါရောက်ဆိုဒ် မော်လီကျူးများ နောက်ထပ် မချိတ်ဆက်နိုင်တော့ကြောင်း သက်သေအထောက်အထားဖြစ်ကြောင်း ဇော်မင်းထက်က ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, at which temperature did the group collect the most gas?",
            questionMy:
                "စာပိုဒ် ၂ အရ မည်သည့်အပူချိန်တွင် အုပ်စုက ဓာတ်ငွေ့အများဆုံး ရရှိခဲ့သနည်း။",
            optionsEn: [
              "37 degrees Celsius",
              "10 degrees Celsius",
              "50 degrees Celsius",
              "80 degrees Celsius",
            ],
            optionsMy: [
              "ဒီဂရီ ၃၇ ဆဲလ်စီးယပ်",
              "ဒီဂရီ ၁၀ ဆဲလ်စီးယပ်",
              "ဒီဂရီ ၅၀ ဆဲလ်စီးယပ်",
              "ဒီဂရီ ၈၀ ဆဲလ်စီးယပ်",
            ],
            correctIndex: 0,
            hintsEn: [
              "The passage says bubbles formed rapidly and the most gas was collected at this temperature.",
              "This is described as close to catalase's optimum temperature.",
            ],
            hintsMy: [
              "စာပိုဒ်က ပူဖောင်းများ လျင်မြန်စွာ ဖြစ်ပေါ်ပြီး ဓာတ်ငွေ့အများဆုံးကို ဤအပူချိန်တွင် ရရှိခဲ့ကြောင်း ဖော်ပြထားသည်။",
              "ဤအပူချိန်ကို Catalase ၏ Optimum Temperature နှင့် နီးစပ်သည်ဟု ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did the reaction rate rise between 10 and 37 degrees?",
            questionMy:
                "ဒီဂရီ ၁၀ မှ ၃၇ ကြား တုံ့ပြန်နှုန်း အဘယ်ကြောင့် မြင့်တက်ခဲ့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Higher kinetic energy caused more frequent, successful collisions between enzyme and substrate",
              "The hydrogen peroxide became a different chemical",
              "The test tubes became larger at higher temperatures",
              "The catalase multiplied itself",
            ],
            optionsMy: [
              "Kinetic Energy ပိုများခြင်းက အင်ဇိုင်းနှင့် Substrate ကြား ပိုမြင့်တိုးအောင်မြင်သော ထိတွေ့မှုများကို ဖြစ်ပေါ်စေသောကြောင့်",
              "ဟိုက်ဒရိုဂျင်ပါရောက်ဆိုဒ်သည် ဓာတုပစ္စည်း တစ်မျိုးသို့ ပြောင်းလဲသွားသောကြောင့်",
              "အပူချိန်ပိုမြင့်လာသောအခါ စမ်းသပ်ပြွန်များ ပိုကြီးလာသောကြောင့်",
              "Catalase သည် ကိုယ့်ကိုယ်ကို မွှားများသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is the general rule for how temperature affects reaction rates below the optimum.",
              "More kinetic energy means particles move and collide more often.",
            ],
            hintsMy: [
              "ဤသည်မှာ Optimum အောက်တွင် အပူချိန်က တုံ့ပြန်နှုန်းကို မည်သို့ သက်ရောက်ကြောင်း ယေဘုယျ စည်းမျဉ်းဖြစ်သည်။",
              "Kinetic Energy ပိုများခြင်းသည် အမှုန်များ ပိုမြန်စွာ လှုပ်ရှား၍ ပိုမြင့်တိုးထိတွေ့စေသည်ဟု ဆိုလိုသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what does the collapse in rate above 37 degrees actually show, despite plenty of substrate remaining?",
            questionMy:
                "Substrate များစွာ ကျန်ရှိနေသော်လည်း ဒီဂရီ ၃၇ ကျော်လွန်ပြီးနောက် နှုန်းကျဆင်းမှုသည် အမှန်တကယ် အဘယ်ကို ပြသကြောင်း စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The enzyme's active site was permanently changed (denatured), so it could no longer bind substrate",
              "The substrate had turned into oxygen already",
              "The test was simply run for too short a time",
              "The temperature reading was inaccurate",
            ],
            optionsMy: [
              "အင်ဇိုင်း၏ Active Site သည် အမြဲတမ်း ပြောင်းလဲသွားပြီး (Denatured) Substrate နှင့် နောက်ထပ် မချိတ်ဆက်နိုင်တော့ခြင်း",
              "Substrate သည် အောက်ဆီဂျင်အဖြစ် ပြီးသားပြောင်းလဲသွားခြင်း",
              "စမ်းသပ်မှုကို အချိန် တိုတောင်းစွာသာ လုပ်ဆောင်ခဲ့ခြင်း",
              "အပူချိန် ဖတ်စာသည် တိကျမှု မရှိခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "The passage explicitly names this as evidence of denaturation, not simple slowing.",
              "'Regardless of how much substrate remained available' is the key phrase to reread.",
            ],
            hintsMy: [
              "စာပိုဒ်က ဤအရာကို ရိုးရှင်းသော နှေးကွေးမှုတစ်ခုတည်း မဟုတ်ဘဲ Denaturation ၏ သက်သေအထောက်အထားအဖြစ် တိတိကျကျ ဖော်ပြထားသည်။",
              "'Substrate မည်မျှ ကျန်ရှိစေ' ဆိုသော စကားစုသည် ပြန်ဖတ်ရမည့် အဓိကစကားစု ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What was the independent variable in Zaw Min Htet's group's experiment?",
            questionMy:
                "ဇော်မင်းထက်၏ အုပ်စု စမ်းသပ်မှုတွင် Independent Variable မှာ အဘယ်နည်း။",
            optionsEn: [
              "The water bath temperature",
              "The colour of the test tubes",
              "The time of day the experiment was run",
              "The name of the enzyme",
            ],
            optionsMy: [
              "ရေအေးကန် အပူချိန်",
              "စမ်းသပ်ပြွန်များ၏ အရောင်",
              "စမ်းသပ်မှု လုပ်ဆောင်သည့် နေ့အချိန်",
              "အင်ဇိုင်း၏ အမည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "The independent variable is the one thing the group deliberately changed between trials.",
              "They tested five different values of this one variable.",
            ],
            hintsMy: [
              "Independent Variable ဆိုသည်မှာ အုပ်စုက စမ်းသပ်မှုအကြားတွင် တမင်ရွေးချယ် ပြောင်းလဲသော အရာတစ်ခုတည်းဖြစ်သည်။",
              "ဤအပြောင်းအလဲတစ်ခုတည်း၏ တန်ဖိုးငါးမျိုးကို သူတို့ စမ်းသပ်ခဲ့ကြသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w10-d5",
      dayNumber: 5,
      titleEn: "Week 10 Recap: Factors Affecting Enzymes",
      titleMy:
          "ဒသမပတ် ပြန်လည်သုံးသပ်ခြင်း - အင်ဇိုင်းကို သက်ရောက်သော အကြောင်းရင်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What happens to an enzyme's rate of reaction well above its optimum temperature?",
          questionMy:
              "Optimum Temperature ထက် များစွာမြင့်သော အပူချိန်တွင် အင်ဇိုင်း၏ တုံ့ပြန်နှုန်းသည် အဘယ်ဖြစ်ပေါ်လာသနည်း",
          optionsEn: [
            "It drops sharply because the enzyme denatures",
            "It keeps increasing forever",
            "It stays exactly the same",
            "It becomes negative",
          ],
          optionsMy: [
            "အင်ဇိုင်း Denature ဖြစ်သောကြောင့် ချက်ချင်းကျဆင်းသည်",
            "အစဉ် တိုးလာနေဆဲဖြစ်သည်",
            "အတိအကျ တူညီနေဆဲ",
            "အနှုတ်လက္ခဏာ ဖြစ်လာသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these best defines denaturation?",
          questionMy:
              "အောက်ပါတို့အနက် Denaturation ကို အကောင်းဆုံး ဖွင့်ဆိုသည့်အရာမှာ အဘယ်နည်း",
          optionsEn: [
            "A permanent change to an enzyme's shape that stops it working",
            "A temporary pause in enzyme activity",
            "The normal way enzymes are made in cells",
            "The process of enzymes multiplying",
          ],
          optionsMy: [
            "အင်ဇိုင်း၏ ပုံသဏ္ဌာန်ကို အမြဲတမ်း ပြောင်းလဲစေပြီး အလုပ်ရပ်စေခြင်း",
            "အင်ဇိုင်း လုပ်ဆောင်ချက် ယာယီရပ်တန့်ခြင်း",
            "ဆဲလ်များတွင် အင်ဇိုင်းများ ပုံမှန်ထုတ်လုပ်ပုံ",
            "အင်ဇိုင်းများ မွှားများခြင်း ဖြစ်စဉ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Pepsin, a stomach enzyme, works best in strongly acidic conditions. This is an example of...",
          questionMy:
              "အစာအိမ် အင်ဇိုင်းဖြစ်သော Pepsin သည် အက်ဆစ်ပြင်းသော အခြေအနေတွင် အကောင်းဆုံး အလုပ်လုပ်သည်။ ၎င်းသည် ...၏ ဥပမာဖြစ်သည်",
          optionsEn: [
            "Enzymes having different optimum pH values depending on where they work",
            "All enzymes always needing an alkaline environment",
            "Denaturation happening at low temperatures",
            "Enzymes never being affected by pH",
          ],
          optionsMy: [
            "အင်ဇိုင်းများသည် ၎င်းတို့ အလုပ်လုပ်ရာနေရာပေါ် မူတည်၍ Optimum pH မတူညီခြင်း",
            "အင်ဇိုင်းအားလုံးသည် အယ်လကလိုင်း ပတ်ဝန်းကျင်ကိုသာ လိုအပ်ခြင်း",
            "Denaturation သည် အပူချိန်နိမ့်ရာတွင် ဖြစ်ပွားခြင်း",
            "အင်ဇိုင်းများသည် pH ၏ သက်ရောက်မှု လုံးဝ မရှိခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 11: "Photosynthesis and Leaf Structure"
// =====================================================================

const CourseWeekDef _igcseBioWeek11 = CourseWeekDef(
  id: "course-igcse-bio-w11",
  weekNumber: 11,
  titleEn: "Photosynthesis and Leaf Structure",
  titleMy: "အလင်းမှီစုဖွဲ့ခြင်း (Photosynthesis) နှင့် အရွက် ဖွဲ့စည်းပုံ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w11-d1",
      dayNumber: 1,
      titleEn: "The Word Equation for Photosynthesis",
      titleMy: "Photosynthesis ၏ Word Equation",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which word equation correctly represents photosynthesis?",
          questionMy:
              "Photosynthesis ကို မှန်ကန်စွာ ကိုယ်စားပြုသော Word Equation မှာ အဘယ်နည်း။",
          optionsEn: [
            "Carbon dioxide + water --(light energy)--> glucose + oxygen",
            "Glucose + oxygen --(light energy)--> carbon dioxide + water",
            "Oxygen + water --(light energy)--> carbon dioxide + glucose",
            "Carbon dioxide + glucose --(light energy)--> water + oxygen",
          ],
          optionsMy: [
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ရေ --(အလင်းစွမ်းအင်)--> ဂလူးကို့စ် + အောက်ဆီဂျင်",
            "ဂလူးကို့စ် + အောက်ဆီဂျင် --(အလင်းစွမ်းအင်)--> ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ရေ",
            "အောက်ဆီဂျင် + ရေ --(အလင်းစွမ်းအင်)--> ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ဂလူးကို့စ်",
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ဂလူးကို့စ် --(အလင်းစွမ်းအင်)--> ရေ + အောက်ဆီဂျင်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Plants take in two raw materials from their environment: a gas and a liquid.",
            "Photosynthesis produces a sugar (glucose) that the plant uses, and releases a gas as a by-product.",
          ],
          hintsMy: [
            "အပင်များသည် ပတ်ဝန်းကျင်မှ ကုန်ကြမ်းနှစ်မျိုးကို ရယူသည်- ဓာတ်ငွေ့တစ်မျိုးနှင့် အရည်တစ်မျိုး။",
            "Photosynthesis က အပင်သုံးသော သကြား (ဂလူးကို့စ်) ကို ထုတ်လုပ်ပေးပြီး ဓာတ်ငွေ့တစ်မျိုးကို ကုန်ထုတ်ပစ္စည်းအဖြစ် လွှတ်ထုတ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which pigment absorbs light energy for photosynthesis and is found inside chloroplasts?",
          questionMy:
              "Photosynthesis အတွက် အလင်းစွမ်းအင်ကို စုပ်ယူပြီး Chloroplast များအတွင်း တွေ့ရှိရသော အရောင်ဓာတ်မှာ အဘယ်နည်း။",
          optionsEn: ["Chlorophyll", "Haemoglobin", "Melanin", "Carotene only"],
          optionsMy: [
            "Chlorophyll",
            "Haemoglobin",
            "Melanin",
            "Carotene တစ်ခုတည်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "This pigment gives most leaves their green colour.",
            "It is contained within the chloroplasts of palisade and spongy mesophyll cells.",
          ],
          hintsMy: [
            "ဤအရောင်ဓာတ်က အရွက်အများစုကို အစိမ်းရောင် ဖြစ်စေသည်။",
            "၎င်းသည် Palisade နှင့် Spongy Mesophyll ဆဲလ်များ၏ Chloroplast အတွင်း ပါဝင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the balanced chemical equation for photosynthesis, 6CO2 + 6H2O -> C6H12O6 + 6O2, what does C6H12O6 represent?",
          questionMy:
              "Photosynthesis ၏ Balanced Chemical Equation ဖြစ်သော 6CO2 + 6H2O -> C6H12O6 + 6O2 တွင် C6H12O6 က အဘယ်ကို ကိုယ်စားပြုသနည်း။",
          optionsEn: ["Glucose", "Oxygen", "Water", "Carbon dioxide"],
          optionsMy: [
            "ဂလူးကို့စ်",
            "အောက်ဆီဂျင်",
            "ရေ",
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the sugar product of photosynthesis, made of carbon, hydrogen, and oxygen atoms.",
            "O2 (without other elements attached) represents oxygen gas instead.",
          ],
          hintsMy: [
            "ဤသည်မှာ ကာဗွန်၊ ဟိုက်ဒရိုဂျင်နှင့် အောက်ဆီဂျင် အက်တမ်များဖြင့် ဖွဲ့စည်းထားသော Photosynthesis ၏ သကြား Product ဖြစ်သည်။",
            "O2 (အခြားဒြပ်စင် မပါဘဲ) သည် အောက်ဆီဂျင်ဓာတ်ငွေ့ကို ကိုယ်စားပြုသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w11-d2",
      dayNumber: 2,
      titleEn: "Match: Leaf Structure Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - အရွက် ဖွဲ့စည်းပုံ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w11-dm-1",
          termEn: "Palisade mesophyll",
          termMy: "Palisade Mesophyll",
          matchEn:
              "The tightly packed upper layer of leaf cells, containing many chloroplasts, where most photosynthesis happens",
          matchMy:
              "Chloroplast များစွာ ပါဝင်ပြီး Photosynthesis အများစု ဖြစ်ပေါ်ရာ ကျစ်လျစ်စွာ အထပ်ထားသော အရွက်ဆဲလ် အပေါ်ဆုံးအလွှာ",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w11-dm-2",
          termEn: "Spongy mesophyll",
          termMy: "Spongy Mesophyll",
          matchEn:
              "The loosely packed lower layer of leaf cells with large air spaces, allowing gases to move easily",
          matchMy:
              "ဓာတ်ငွေ့များ လွယ်ကူစွာ ရွေ့လျားနိုင်ရန် လေအလွတ်နေရာကြီးများ ရှိသော ကျစ်ကျစ်မထားသော အရွက်ဆဲလ် အောက်ဆုံးအလွှာ",
          colorValue: 0xFF8BC34A,
        ),
        DragMatchPair(
          id: "igcsebio-w11-dm-3",
          termEn: "Stomata",
          termMy: "Stomata",
          matchEn:
              "Small pores, mostly on the lower epidermis, that allow gas exchange and control water loss",
          matchMy:
              "ဓာတ်ငွေ့ဖလှယ်မှု ခွင့်ပြုပြီး ရေဆုံးရှုံးမှုကို ထိန်းချုပ်ပေးသည့် အောက်ဘက် Epidermis တွင် အများဆုံးတွေ့ရသော အပေါက်ငယ်များ",
          colorValue: 0xFF00BCD4,
        ),
        DragMatchPair(
          id: "igcsebio-w11-dm-4",
          termEn: "Guard cells",
          termMy: "Guard Cells",
          matchEn:
              "The pair of cells surrounding each stoma that open and close it",
          matchMy: "Stoma တစ်ခုစီကို ဝန်းရံပြီး ဖွင့်/ပိတ်ပေးသော ဆဲလ်တွဲ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w11-dm-5",
          termEn: "Cuticle",
          termMy: "Cuticle",
          matchEn:
              "A waxy, waterproof layer on the upper surface of a leaf that reduces water loss",
          matchMy:
              "ရေဆုံးရှုံးမှုကို လျှော့ချပေးသော အရွက်၏ အပေါ်မျက်နှာပြင်ရှိ ဖယောင်းဖြင့်ရေခံအလွှာ",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w11-dm-6",
          termEn: "Vascular bundle (vein)",
          termMy: "Vascular Bundle (အကြောသေး)",
          matchEn:
              "The xylem and phloem tissue in a leaf that transports water and dissolved food",
          matchMy:
              "ရေနှင့် ပျော်ဝင်ထားသောအစာကို သယ်ဆောင်ပေးသော အရွက်ရှိ Xylem နှင့် Phloem ဆဲလ်ရွက်",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w11-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Leaf Layer?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် အရွက်အလွှာ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Upper Epidermis / Cuticle",
          "Palisade Mesophyll",
          "Spongy Mesophyll",
          "Lower Epidermis (with Stomata)",
        ],
        bucketsMy: [
          "အပေါ် Epidermis / Cuticle",
          "Palisade Mesophyll",
          "Spongy Mesophyll",
          "အောက် Epidermis (Stomata ပါသော)",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w11-sort-1",
            labelEn:
                "The waxy, transparent, waterproof outer layer at the top of the leaf",
            labelMy:
                "အရွက်ထိပ်ရှိ ဖယောင်းရေခံ၊ ပွင့်လင်းမြင်နိုင်သော အပြင်ဘက်အလွှာ",
            correctBucketEn: "Upper Epidermis / Cuticle",
            correctBucketMy: "အပေါ် Epidermis / Cuticle",
          ),
          SortingItem(
            id: "igcsebio-w11-sort-2",
            labelEn:
                "Tightly packed, column-shaped cells with the most chloroplasts",
            labelMy:
                "Chloroplast အများဆုံးရှိသော ကျစ်လျစ်စွာ တနေ့ တောင်းပုံစံ ဆဲလ်များ",
            correctBucketEn: "Palisade Mesophyll",
            correctBucketMy: "Palisade Mesophyll",
          ),
          SortingItem(
            id: "igcsebio-w11-sort-3",
            labelEn:
                "Irregularly shaped cells with large air spaces between them",
            labelMy:
                "ကြားရှိ လေအလွတ်နေရာကြီးများနှင့် မမှန်သော ပုံသဏ္ဌာန်ရှိသည့် ဆဲလ်များ",
            correctBucketEn: "Spongy Mesophyll",
            correctBucketMy: "Spongy Mesophyll",
          ),
          SortingItem(
            id: "igcsebio-w11-sort-4",
            labelEn:
                "The layer containing most of the leaf's stomata and guard cells",
            labelMy: "အရွက်၏ Stomata နှင့် Guard Cell အများစုပါဝင်သော အလွှာ",
            correctBucketEn: "Lower Epidermis (with Stomata)",
            correctBucketMy: "အောက် Epidermis (Stomata ပါသော)",
          ),
          SortingItem(
            id: "igcsebio-w11-sort-5",
            labelEn:
                "The main site of photosynthesis, positioned to receive the most light",
            labelMy:
                "အလင်းအများဆုံး ရရှိနိုင်ရန် နေရာချထားသော Photosynthesis အဓိက ဖြစ်ပေါ်ရာနေရာ",
            correctBucketEn: "Palisade Mesophyll",
            correctBucketMy: "Palisade Mesophyll",
          ),
          SortingItem(
            id: "igcsebio-w11-sort-6",
            labelEn:
                "The layer whose air spaces allow carbon dioxide to reach the mesophyll cells easily",
            labelMy:
                "ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို Mesophyll ဆဲလ်များထံ လွယ်ကူစွာ ရောက်ရှိနိုင်စေသော လေအလွတ်နေရာများပါဝင်သည့် အလွှာ",
            correctBucketEn: "Spongy Mesophyll",
            correctBucketMy: "Spongy Mesophyll",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w11-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiri Nandar's Leaf Cross-Section",
      titleMy: "စာဖတ်ခြင်း - သီရိနန္ဒာ၏ အရွက် ဖြတ်ပိုင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri Nandar's Leaf Cross-Section",
        titleMy: "သီရိနန္ဒာ၏ အရွက် ဖြတ်ပိုင်း",
        passageEn:
            "Thiri Nandar's Biology class spent an afternoon examining a prepared microscope slide showing a thin cross-section of a leaf, and her teacher asked each student to identify and sketch every visible layer, starting from the top and working down. At the very top, Thiri Nandar noticed a thin, glassy layer with no visible cells inside it -- her teacher explained this was the waxy cuticle, sitting on top of the upper epidermis, and that its job was purely to reduce water loss from the leaf's surface, not to photosynthesise.\n\nJust below the epidermis, Thiri Nandar saw neat columns of tall, rectangular cells packed tightly together, each one crowded with small green circles. These were palisade mesophyll cells, and the green circles were chloroplasts -- her teacher pointed out that this layer being positioned right at the top of the leaf, closest to the sun, made sense given that photosynthesis needs light, and that packing so many chloroplasts into these cells maximised the leaf's ability to absorb that light.\n\nBelow the palisade layer, the cells looked completely different: loosely arranged, irregularly shaped, with large gaps of empty space between them. This was the spongy mesophyll, and Thiri Nandar's teacher explained that those large air spaces were not empty by accident -- they created a network of internal air channels connected to the stomata on the leaf's lower surface, allowing carbon dioxide to diffuse in and oxygen to diffuse out with very little resistance, since gases diffuse far more easily through air than through solid tissue. Finally, at the very bottom, Thiri Nandar identified pairs of bean-shaped guard cells surrounding small pores -- the stomata -- through which this gas exchange actually took place.",
        passageMy:
            "သီရိနန္ဒာ၏ ဇီဝဗေဒအတန်းသည် အရွက်တစ်ချပ်၏ ပါးလွှာသော ဖြတ်ပိုင်းကို ပြသသော ပြင်ဆင်ထားသည့် အဏုကြည့်မှန်ပြားကို နေ့လည်တစ်ခုလုံး စစ်ဆေးကြည့်ရှုခဲ့ရာ၊ ဆရာမက ကျောင်းသားတိုင်းအား အပေါ်ဆုံးမှ အစပြု၍ မြင်ကွင်းရှိ အလွှာတိုင်းကို ဖော်ထုတ်ပြီး ပုံဆွဲစေခဲ့သည်။ အထက်ဆုံးတွင် သီရိနန္ဒာသည် ဆဲလ်များ မြင်ရသော ပါးလွှာသည့် ဖန်ပွင့်လင်းမြင်ရသောအလွှာကို တွေ့ရှိခဲ့သည် -- ဆရာမက ၎င်းသည် အပေါ် Epidermis ပေါ်တွင်ရှိသော ဖယောင်းရေခံ Cuticle ဖြစ်ပြီး ၎င်း၏ အလုပ်မှာ Photosynthesis လုပ်ရန် မဟုတ်ဘဲ အရွက်၏ မျက်နှာပြင်မှ ရေဆုံးရှုံးမှုကို လျှော့ချရန်သာ ဖြစ်ကြောင်း ရှင်းပြခဲ့သည်။\n\nEpidermis ၏ ကနေ့ ချက်ချင်းအောက်တွင် သီရိနန္ဒာသည် အစိမ်းရောင် စက်ဝိုင်းငယ်များနှင့် ထူထပ်နေသော၊ ကျစ်လျစ်စွာ ထပ်ထားသော မြင့်မားသော၊ လေးထောင့်ကွက် ဆဲလ်တန်းစဉ်များကို တွေ့ရှိခဲ့သည်။ ၎င်းတို့သည် Palisade Mesophyll ဆဲလ်များဖြစ်ပြီး အစိမ်းရောင် စက်ဝိုင်းများသည် Chloroplast များ ဖြစ်သည် -- ဆရာမက ဤအလွှာကို အရွက်၏ အထက်ဆုံးတွင် နေနှင့် အနီးစပ်ဆုံး နေရာချထားခြင်းသည် Photosynthesis တွင် အလင်း လိုအပ်ကြောင်းနှင့် ကိုက်ညီပြီး၊ ဤဆဲလ်များထဲသို့ Chloroplast များစွာ ထည့်သွင်းထားခြင်းသည် အလင်းစုပ်ယူနိုင်စွမ်းကို အများဆုံး ဖြစ်စေကြောင်း ညွှန်ပြခဲ့သည်။\n\nPalisade အလွှာအောက်တွင် ဆဲလ်များသည် လုံးဝ ကွဲပြားစွာ ပေါ်ခဲ့သည်- ကျစ်ကျစ်မထားဘဲ၊ မမှန်သော ပုံသဏ္ဌာန်ရှိပြီး ၎င်းတို့ကြား လွတ်နေသော နေရာကြီးများ ရှိသည်။ ၎င်းသည် Spongy Mesophyll ဖြစ်ပြီး သီရိနန္ဒာ၏ ဆရာမက ထိုလေအလွတ်နေရာကြီးများသည် ကျပန်းလွတ်နေခြင်း မဟုတ်ဘဲ -- ၎င်းတို့သည် အရွက်၏ အောက်ဘက် မျက်နှာပြင်ရှိ Stomata များနှင့် ချိတ်ဆက်ထားသော အတွင်းလေလမ်းကြောင်း ကွန်ရက်တစ်ခုကို ဖန်တီးထားပြီး၊ ဓာတ်ငွေ့များသည် အခိုင်အမာသော တစ်ရှူးများထက် လေထဲတွင် ပိုမိုလွယ်ကူစွာ Diffuse ဖြစ်နိုင်သောကြောင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ် ဝင်ရောက်ခြင်းနှင့် အောက်ဆီဂျင် ထွက်ခွာခြင်းကို ခုခံမှု အနည်းငယ်မျှသာဖြင့် ခွင့်ပြုပေးကြောင်း ရှင်းပြခဲ့သည်။ နောက်ဆုံးတွင် အောက်ဆုံးအလွှာတွင် သီရိနန္ဒာသည် ပဲပုံသဏ္ဌာန်ရှိသော Guard Cell တွဲများ အပေါက်ငယ်များကို ဝန်းရံထားသည်ကို ဖော်ထုတ်ခဲ့သည် -- ၎င်းတို့သည် Stomata ဖြစ်ပြီး ဤဓာတ်ငွေ့ဖလှယ်မှု အမှန်တကယ် ဖြစ်ပေါ်ရာနေရာဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what is the main function of the cuticle?",
            questionMy: "စာပိုဒ် ၁ အရ Cuticle ၏ အဓိကလုပ်ဆောင်ချက်မှာ အဘယ်နည်း။",
            optionsEn: [
              "To reduce water loss from the leaf's surface",
              "To carry out photosynthesis",
              "To absorb carbon dioxide",
              "To transport glucose around the plant",
            ],
            optionsMy: [
              "အရွက်မျက်နှာပြင်မှ ရေဆုံးရှုံးမှုကို လျှော့ချရန်",
              "Photosynthesis ပြုလုပ်ရန်",
              "ကာဗွန်ဒိုင်အောက်ဆိုဒ် စုပ်ယူရန်",
              "ဂလူးကို့စ်ကို အပင်တစ်ဝန်း သယ်ဆောင်ရန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "The passage explicitly states the cuticle's job is 'purely' this one thing.",
              "It does not photosynthesise.",
            ],
            hintsMy: [
              "Cuticle ၏ အလုပ်သည် ဤတစ်ခုတည်း 'သာ' ဖြစ်ကြောင်း စာပိုဒ်က တိတိကျကျ ဖော်ပြထားသည်။",
              "၎င်းသည် Photosynthesis မလုပ်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why does it make sense, according to paragraph 2, that palisade mesophyll is positioned near the top of the leaf?",
            questionMy:
                "စာပိုဒ် ၂ အရ Palisade Mesophyll ကို အရွက်၏ ထိပ်ပိုင်းအနီးတွင် နေရာချထားခြင်းသည် အဘယ်ကြောင့် ကိုက်ညီသနည်း။",
            optionsEn: [
              "Photosynthesis needs light, so being closest to the sun maximises light absorption",
              "It needs to be far from the roots",
              "It keeps the leaf cooler",
              "It is easier for insects to reach",
            ],
            optionsMy: [
              "Photosynthesis တွင် အလင်းလိုအပ်သောကြောင့် နေနှင့် အနီးဆုံးရှိခြင်းက အလင်းစုပ်ယူမှုကို အများဆုံးဖြစ်စေသောကြောင့်",
              "အမြစ်များနှင့် ဝေးဝေး ရှိရန် လိုအပ်သောကြောင့်",
              "အရွက်ကို ပိုအေးစေသောကြောင့်",
              "ပိုးမွှားများ ပို၍ ရောက်ရှိလွယ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence linking the layer's position to what photosynthesis needs.",
              "The most chloroplasts are packed here specifically to catch the most sunlight.",
            ],
            hintsMy: [
              "ဤအလွှာ၏ တည်နေရာကို Photosynthesis လိုအပ်ချက်နှင့် ဆက်စပ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Chloroplast အများဆုံးကို နေရောင်ကို အများဆုံးဖမ်းယူနိုင်ရန် ဤနေရာတွင် ထည့်သွင်းထားခြင်း ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why are the large air spaces in the spongy mesophyll useful?",
            questionMy:
                "Spongy Mesophyll ရှိ လေအလွတ်နေရာကြီးများ အဘယ်ကြောင့် အသုံးဝင်ကြောင်း စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They let gases diffuse easily to and from the stomata, since gases move faster through air than solid tissue",
              "They make the leaf lighter so it can float on water",
              "They store extra water for the plant",
              "They protect the leaf from insects",
            ],
            optionsMy: [
              "ဓာတ်ငွေ့များသည် အခိုင်အမာသော တစ်ရှူးများထက် လေထဲတွင် ပိုမြန်စွာ ရွေ့လျားသောကြောင့် Stomata သို့/မှ လွယ်ကူစွာ Diffuse ဖြစ်စေခြင်း",
              "အရွက်ကို ပေါ့ပါးစေပြီး ရေပေါ်တွင် ပေါလောပေါ်နိုင်ရန်",
              "အပင်အတွက် ရေအပို သိမ်းဆည်းရန်",
              "အရွက်ကို ပိုးမွှားများမှ ကာကွယ်ရန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the explanation about gases diffusing more easily through air than through solid tissue.",
              "These air spaces connect internally to the stomata.",
            ],
            hintsMy: [
              "ဓာတ်ငွေ့များသည် အခိုင်အမာသော တစ်ရှူးများထက် လေထဲတွင် ပိုမိုလွယ်ကူစွာ Diffuse ဖြစ်ကြောင်း ရှင်းချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤ လေအလွတ်နေရာများသည် Stomata များနှင့် အတွင်းပိုင်း ချိတ်ဆက်ထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What structure did Thiri Nandar identify at the very bottom of the leaf cross-section?",
            questionMy:
                "အရွက် ဖြတ်ပိုင်း၏ အောက်ဆုံးတွင် သီရိနန္ဒာ ဖော်ထုတ်ခဲ့သော ဖွဲ့စည်းပုံမှာ အဘယ်နည်း။",
            optionsEn: [
              "Guard cells surrounding the stomata",
              "The waxy cuticle",
              "Palisade mesophyll cells",
              "Vascular bundles only",
            ],
            optionsMy: [
              "Stomata ကို ဝန်းရံထားသော Guard Cells",
              "ဖယောင်းရေခံ Cuticle",
              "Palisade Mesophyll ဆဲလ်များ",
              "Vascular Bundle များသာ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of paragraph 3.",
              "These are bean-shaped cells surrounding small pores.",
            ],
            hintsMy: [
              "စာပိုဒ် ၃ ၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "၎င်းတို့သည် အပေါက်ငယ်များကို ဝန်းရံထားသော ပဲပုံသဏ္ဌာန်ရှိသော ဆဲလ်များ ဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w11-d5",
      dayNumber: 5,
      titleEn: "Week 11 Recap: Photosynthesis and Leaf Structure",
      titleMy:
          "ဧကရာဇ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - Photosynthesis နှင့် အရွက်ဖွဲ့စည်းပုံ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which gas is a raw material for photosynthesis?",
          questionMy:
              "Photosynthesis အတွက် ကုန်ကြမ်းဖြစ်သော ဓာတ်ငွေ့မှာ အဘယ်နည်း",
          optionsEn: ["Carbon dioxide", "Oxygen", "Nitrogen", "Hydrogen"],
          optionsMy: [
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်",
            "အောက်ဆီဂျင်",
            "နိုက်ထရိုဂျင်",
            "ဟိုက်ဒရိုဂျင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which leaf layer contains the most chloroplasts?",
          questionMy: "မည်သည့် အရွက်အလွှာတွင် Chloroplast အများဆုံး ပါဝင်သနည်း",
          optionsEn: [
            "Palisade mesophyll",
            "Spongy mesophyll",
            "Upper epidermis only",
            "Lower epidermis only",
          ],
          optionsMy: [
            "Palisade Mesophyll",
            "Spongy Mesophyll",
            "အပေါ် Epidermis သာ",
            "အောက် Epidermis သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Stomata are mainly controlled by which structure?",
          questionMy:
              "Stomata များကို မည်သည့်ဖွဲ့စည်းပုံက အဓိက ထိန်းချုပ်သနည်း",
          optionsEn: [
            "Guard cells",
            "Palisade cells",
            "Xylem vessels",
            "Root hair cells",
          ],
          optionsMy: [
            "Guard Cells",
            "Palisade Cells",
            "Xylem Vessels",
            "အမြစ်ဆံပင်ဆဲလ်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 12 (Capstone): "Plant Nutrition Practical Studio"
// =====================================================================

const CourseWeekDef _igcseBioWeek12 = CourseWeekDef(
  id: "course-igcse-bio-w12",
  weekNumber: 12,
  titleEn: "Plant Nutrition Practical Studio",
  titleMy: "အပင် အာဟာရ လက်တွေ့စမ်းသပ်မှု အလုပ်ရုံ",
  xpReward: 20,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w12-d1",
      dayNumber: 1,
      titleEn: "Testing a Leaf for Starch",
      titleMy: "အရွက်တစ်ချပ်ကို Starch အတွက် စမ်းသပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In the standard test for starch in a leaf, why is the leaf boiled in ethanol (in a water bath, not over a direct flame)?",
          questionMy:
              "အရွက်တွင် Starch အတွက် စံစမ်းသပ်မှုတွင် အရွက်ကို Ethanol ဖြင့် (ရေနွေးကန်တွင်၊ တိုက်ရိုက်မီးလျှံမပေါ်) ဘာကြောင့် ပြုတ်ရသနည်း။",
          optionsEn: [
            "To remove the green chlorophyll so the colour change with iodine is easier to see",
            "To kill any insects on the leaf",
            "To add more starch to the leaf",
            "To make the leaf grow faster",
          ],
          optionsMy: [
            "Iodine ဖြင့် အရောင်ပြောင်းလဲမှုကို ပို၍ မြင်လွယ်စေရန် အစိမ်းရောင် Chlorophyll ကို ဖယ်ရှားရန်",
            "အရွက်ပေါ်ရှိ ပိုးမွှားများကို သတ်ရန်",
            "အရွက်ထဲသို့ Starch ပို၍ ထည့်ရန်",
            "အရွက်ကို ပို၍ မြန်စွာ ကြီးထွားစေရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A leaf's natural green colour would make it hard to see the blue-black colour change caused by iodine and starch.",
            "Ethanol dissolves chlorophyll out of the leaf, leaving it pale/white.",
          ],
          hintsMy: [
            "အရွက်၏ သဘာဝ အစိမ်းရောင်ကြောင့် Iodine နှင့် Starch ဖြစ်ပေါ်စေသော အပြာ-အနက်ရောင် အပြောင်းအလဲကို မြင်ရန် ခက်ခဲစေမည်။",
            "Ethanol က Chlorophyll ကို အရွက်ထဲမှ ပျော်ဝင်ဖယ်ရှားစေပြီး ရွက်ကို ဖျော့လာစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why is a boiled, decolourised leaf dipped briefly in hot water before adding iodine solution?",
          questionMy:
              "Iodine Solution မထည့်မီ ပြုတ်ပြီး အရောင်ဖယ်ရှားထားသော အရွက်ကို ရေနွေးထဲတွင် တိုတိုတိုငင် ဘာကြောင့် နှစ်ရသနည်း။",
          optionsEn: [
            "To soften the leaf, which has become brittle from the ethanol",
            "To add back the chlorophyll that was removed",
            "To destroy any remaining starch",
            "To colour the leaf blue",
          ],
          optionsMy: [
            "Ethanol ကြောင့် ကြွပ်ဆတ်လာသော အရွက်ကို ပျော့ပြောင်းစေရန်",
            "ဖယ်ရှားထားသော Chlorophyll ကို ပြန်ထည့်ရန်",
            "ကျန်ရှိနေသေးသော Starch ကို ဖျက်ဆီးရန်",
            "အရွက်ကို အပြာရောင် သွင်းရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Ethanol makes the leaf hard and brittle, which could tear when handled.",
            "Hot water softens the leaf again so it can be spread out flat on a tile.",
          ],
          hintsMy: [
            "Ethanol က အရွက်ကို မာကျော ကြွပ်ဆတ်စေပြီး ကိုင်တွယ်ရာတွင် စုတ်ပြတ်နိုင်သည်။",
            "ရေနွေးက အရွက်ကို ပြန်ပျော့ပြောင်းစေသဖြင့် အင်ကြင်းပြားပေါ်တွင် ညီညီညာညာ ဖြန့်ချထားနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A leaf tested with iodine solution stays orange-brown instead of turning blue-black. What does this tell you?",
          questionMy:
              "Iodine Solution ဖြင့် စမ်းသပ်ထားသော အရွက်တစ်ချပ်သည် အပြာ-အနက်သို့ မပြောင်းဘဲ လိမ္မော်-အညိုရောင်အတိုင်း ဆက်ရှိနေသည်။ ၎င်းက အဘယ်ကို ပြောပြနေသနည်း။",
          optionsEn: [
            "The leaf did not contain any starch",
            "The leaf contained a very large amount of starch",
            "The leaf was still green",
            "The iodine solution was contaminated",
          ],
          optionsMy: [
            "အရွက်တွင် Starch လုံးဝ မပါဝင်ခြင်း",
            "အရွက်တွင် Starch အလွန်များစွာ ပါဝင်ခြင်း",
            "အရွက်သည် အစိမ်းရောင် ဆက်ရှိနေခြင်း",
            "Iodine Solution ညစ်ညမ်းနေခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "No colour change with iodine means a negative result.",
            "This is exactly the same logic used in the Term 2 food tests.",
          ],
          hintsMy: [
            "Iodine တွင် အရောင်ပြောင်းလဲမှု မရှိခြင်းသည် Negative ရလဒ်ကို ဆိုလိုသည်။",
            "ဤသည်မှာ ဒုတိယနှစ်ဝက် အစားအစာစမ်းသပ်မှုများတွင် သုံးခဲ့သည့် တွေးခေါ်ပုံနှင့် အတိအကျ တူညီသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w12-d2",
      dayNumber: 2,
      titleEn: "Match: Limiting Factors Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Limiting Factors ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w12-dm-1",
          termEn: "Limiting factor",
          termMy: "Limiting Factor",
          matchEn:
              "A factor that, when in short supply, restricts the rate of photosynthesis even if other factors are plentiful",
          matchMy:
              "ရှားပါးသောအခါ အခြားအချက်များ ပေါများသော်လည်း Photosynthesis နှုန်းကို ကန့်သတ်ပေးသော အချက်",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w12-dm-2",
          termEn: "Light intensity",
          termMy: "Light Intensity",
          matchEn:
              "One of the three main factors that can limit the rate of photosynthesis",
          matchMy:
              "Photosynthesis နှုန်းကို ကန့်သတ်နိုင်သော အဓိကအချက်သုံးမျိုးထဲမှ တစ်ခု",
          colorValue: 0xFFFFC107,
        ),
        DragMatchPair(
          id: "igcsebio-w12-dm-3",
          termEn: "Carbon dioxide concentration",
          termMy: "Carbon Dioxide Concentration",
          matchEn:
              "A raw material for photosynthesis that can also act as a limiting factor if too low",
          matchMy:
              "နည်းလွန်းလျှင် Limiting Factor တစ်ခုအဖြစ်လည်း လုပ်ဆောင်နိုင်သော Photosynthesis ကုန်ကြမ်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w12-dm-4",
          termEn: "Destarching",
          termMy: "Destarching",
          matchEn:
              "Leaving a plant in the dark for 24-48 hours before an experiment, so any existing starch is used up",
          matchMy:
              "စမ်းသပ်မှုမတိုင်မီ ရှိပြီးသား Starch ကုန်ဆုံးအောင် ၂၄-၄၈ နာရီ အမှောင်တွင် အပင်ကို ထားခြင်း",
          colorValue: 0xFF9C27B0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w12-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Limiting Factor?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် Limiting Factor",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Light Intensity",
          "Carbon Dioxide Concentration",
          "Temperature",
        ],
        bucketsMy: [
          "Light Intensity",
          "Carbon Dioxide Concentration",
          "Temperature",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w12-sort-1",
            labelEn:
                "A plant grown in a shaded corner of a room photosynthesises slowly, but speeds up when moved to a sunny windowsill",
            labelMy:
                "အခန်းအရိပ်ထဲတွင် စိုက်ထားသော အပင်တစ်ပင်သည် နှေးကွေးစွာ Photosynthesise ဖြစ်သော်လည်း နေရောင်ရသော ပြတင်းပေါက်သို့ ရွှေ့လိုက်လျှင် ပိုမြန်လာသည်",
            correctBucketEn: "Light Intensity",
            correctBucketMy: "Light Intensity",
          ),
          SortingItem(
            id: "igcsebio-w12-sort-2",
            labelEn:
                "A greenhouse crop grows faster after extra CO2 gas is pumped into the air inside",
            labelMy:
                "အခန်းတွင်းသို့ CO2 ဓာတ်ငွေ့ အပို ထည့်သွင်းပြီးနောက် မြက်ခင်းအိမ်ရှိ သီးနှံသည် ပို၍ မြန်စွာ ကြီးထွားလာသည်",
            correctBucketEn: "Carbon Dioxide Concentration",
            correctBucketMy: "Carbon Dioxide Concentration",
          ),
          SortingItem(
            id: "igcsebio-w12-sort-3",
            labelEn:
                "Photosynthesis rate drops sharply when the temperature falls close to freezing",
            labelMy:
                "အပူချိန်သည် အေးခဲအနီးသို့ ကျဆင်းလာသောအခါ Photosynthesis နှုန်း ချက်ချင်း ကျဆင်းသွားသည်",
            correctBucketEn: "Temperature",
            correctBucketMy: "Temperature",
          ),
          SortingItem(
            id: "igcsebio-w12-sort-4",
            labelEn:
                "On a cloudy day, the amount of sunlight reaching the plant's leaves decreases",
            labelMy:
                "တိမ်လွှမ်းသောနေ့တွင် အပင်၏ အရွက်များထံ ရောက်ရှိသော နေရောင်ပမာဏ လျော့ကျသွားသည်",
            correctBucketEn: "Light Intensity",
            correctBucketMy: "Light Intensity",
          ),
          SortingItem(
            id: "igcsebio-w12-sort-5",
            labelEn:
                "Photosynthesis rate increases when the enzymes involved work faster at a warmer temperature, up to their optimum",
            labelMy:
                "ပါဝင်သော အင်ဇိုင်းများသည် Optimum အထိ ပိုနွေးသော အပူချိန်တွင် ပိုမြန်စွာ အလုပ်လုပ်သောအခါ Photosynthesis နှုန်း တိုးလာသည်",
            correctBucketEn: "Temperature",
            correctBucketMy: "Temperature",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w12-d4",
      dayNumber: 4,
      titleEn: "Reading: Kaung Myat's Variegated Leaf",
      titleMy: "စာဖတ်ခြင်း - ကောင်းမြတ်၏ အစိမ်း-အဖြူ ရောယှက် အရွက်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Kaung Myat's Variegated Leaf",
        titleMy: "ကောင်းမြတ်၏ အစိမ်း-အဖြူ ရောယှက် အရွက်",
        passageEn:
            "Kaung Myat's teacher brought in a variegated plant for the class practical -- one whose leaves had patches of white alongside the normal green, since the white patches lacked chlorophyll entirely. Before the experiment, the plant had been left in a dark cupboard for two full days, a process his teacher called destarching, so that any starch already stored in the leaves from earlier photosynthesis would be used up and none would be left to confuse the results.\n\nAfter destarching, the plant was placed in bright sunlight for several hours to allow photosynthesis to occur, then Kaung Myat's group picked one leaf and carried out the standard starch test: boiling it first in water, then in ethanol to remove all the chlorophyll (which conveniently made the whole leaf pale, so the white and green patches could no longer be told apart by colour alone), softening it in hot water, and finally flooding it with iodine solution on a white tile.\n\nThe result mapped out exactly where the leaf's original green patches had been: those areas turned a deep blue-black, showing starch was present, while the areas that had originally been white patches stayed orange-brown, showing no starch had formed there at all. Kaung Myat's group concluded that this proved chlorophyll is essential for photosynthesis to occur -- since the only difference between the two types of patches was the presence or absence of chlorophyll, and only the chlorophyll-containing regions had photosynthesised and produced starch.",
        passageMy:
            "ကောင်းမြတ်၏ ဆရာမက အတန်း လက်တွေ့အတွက် အစိမ်း-အဖြူ ရောယှက် အပင်တစ်ပင်ကို ယူဆောင်လာခဲ့သည် -- ၎င်း၏ အရွက်များတွင် ပုံမှန်အစိမ်းရောင်နှင့် အတူ အဖြူရောင် နေရာများ ရှိပြီး၊ အဖြူရောင် နေရာများတွင် Chlorophyll လုံးဝ မပါဝင်ခဲ့ပါ။ စမ်းသပ်မှု မတိုင်မီ အပင်ကို ရက်ပြည့် နှစ်ရက် အမှောင်ဗီရိုတွင် ထားခဲ့ပြီး၊ ဤဖြစ်စဉ်ကို ဆရာမက Destarching ဟု ခေါ်ခဲ့သည်၊ ရှေးကမူလ Photosynthesis မှ အရွက်များတွင် ရှိပြီးသား Starch ကို ကုန်ဆုံးစေရန်နှင့် ရလဒ်များကို ရှုပ်ထွေးစေမည့် Starch မကျန်ရှိစေရန် ရည်ရွယ်ခြင်း ဖြစ်သည်။\n\nDestarching ပြီးနောက် အပင်ကို Photosynthesis ဖြစ်ပေါ်စေရန် နေရောင်ထွန်းလင်းသော နေရာတွင် နာရီများစွာ ထားခဲ့ပြီး၊ ကောင်းမြတ်၏ အုပ်စုက အရွက်တစ်ချပ်ကို ခူးယူကာ စံ Starch စစ်ဆေးမှုကို ပြုလုပ်ခဲ့သည်- ပထမဆုံး ရေထဲတွင် ပြုတ်ပြီး၊ ထို့နောက် Chlorophyll အားလုံးကို ဖယ်ရှားရန် Ethanol ထဲတွင် ပြုတ်ခဲ့သည် (၎င်းက အရွက်တစ်ချပ်လုံးကို ဖျော့လာစေသောကြောင့် အဖြူနှင့်အစိမ်းရောင် နေရာများကို အရောင်တစ်ခုတည်းဖြင့် နောက်ထပ် ခွဲခြား၍မရနိုင်တော့ပါ)၊ ရေနွေးထဲတွင် ပြန်ပျော့ပြောင်းစေပြီး နောက်ဆုံးတွင် အင်ကြင်းပြားပေါ်တွင် Iodine Solution ဖြင့် လွှမ်းမိုးခဲ့သည်။\n\nရလဒ်သည် အရွက်၏ မူလ အစိမ်းရောင် နေရာများ ရှိရာကို အတိအကျ ဖော်ပြခဲ့သည်- ထိုနေရာများသည် အပြာနက်ရောင်သို့ ပြောင်းလဲသွားပြီး Starch ရှိနေကြောင်း ပြသခဲ့ပြီး၊ မူလ အဖြူရောင် နေရာများမူ လိမ္မော်-အညိုရောင်အတိုင်း ဆက်ရှိနေကာ ထိုနေရာများတွင် Starch လုံးဝ မဖြစ်ပေါ်ခဲ့ကြောင်း ပြသခဲ့သည်။ ကောင်းမြတ်၏ အုပ်စုက ဤအရာသည် Chlorophyll သည် Photosynthesis ဖြစ်ပေါ်ရန် မရှိမဖြစ် လိုအပ်ကြောင်း သက်သေပြသည်ဟု ကောက်ချက်ချခဲ့သည် -- အကြောင်းမှာ နေရာအမျိုးအစားနှစ်ခုကြား တစ်ခုတည်းသော ကွာခြားချက်မှာ Chlorophyll ရှိ/မရှိသာ ဖြစ်ပြီး၊ Chlorophyll ပါဝင်သော ဒေသများသာလျှင် Photosynthesise ဖြစ်ကာ Starch ထုတ်လုပ်ခဲ့သောကြောင့်ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, why was the plant destarched before the experiment?",
            questionMy:
                "စမ်းသပ်မှုမတိုင်မီ အပင်ကို အဘယ်ကြောင့် Destarch လုပ်ခဲ့ကြောင်းကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "So no leftover starch from earlier photosynthesis would confuse the results",
              "To make the leaves grow faster",
              "To kill the plant's chlorophyll",
              "To make the leaves turn white permanently",
            ],
            optionsMy: [
              "ရှေးကမူလ Photosynthesis မှ ကျန်ရှိနေသေးသော Starch က ရလဒ်များကို ရှုပ်ထွေးစေမည် မဟုတ်စေရန်",
              "အရွက်များ ပို၍ မြန်စွာ ကြီးထွားလာစေရန်",
              "အပင်၏ Chlorophyll ကို သတ်ရန်",
              "အရွက်များကို အမြဲတမ်း အဖြူရောင် သွင်းရန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the reason given directly after 'destarching' is defined.",
              "Old starch left in the leaf could give a false positive result even without new photosynthesis.",
            ],
            hintsMy: [
              "'Destarching' ကို အဓိပ္ပာယ်ဖွင့်ဆိုပြီးနောက် တိုက်ရိုက်ပေးထားသော အကြောင်းရင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "အရွက်ထဲတွင် ကျန်ရှိနေသော Starch ဟောင်းသည် Photosynthesis အသစ် မရှိသော်လည်း False Positive ရလဒ် ပေးနိုင်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why was boiling the leaf in ethanol useful for reading the final result, in addition to removing chlorophyll?",
            questionMy:
                "Chlorophyll ဖယ်ရှားခြင်းအပြင် အရွက်ကို Ethanol ဖြင့် ပြုတ်ခြင်းသည် နောက်ဆုံးရလဒ် ဖတ်ရန် အဘယ်ကြောင့် အသုံးဝင်ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It made the whole leaf pale, so white and green patches could no longer be distinguished by colour before the iodine test",
              "It turned the leaf a permanent blue colour",
              "It added starch evenly across the whole leaf",
              "It made the leaf transparent so light could pass through",
            ],
            optionsMy: [
              "အရွက်တစ်ချပ်လုံးကို ဖျော့လာစေသဖြင့် Iodine Test မတိုင်မီ အဖြူနှင့်အစိမ်းရောင် နေရာများကို အရောင်ဖြင့် နောက်ထပ် ခွဲခြားမရနိုင်တော့ပါ",
              "အရွက်ကို အမြဲတမ်း အပြာရောင် သွင်းလိုက်သည်",
              "အရွက်တစ်ချပ်လုံးတွင် Starch တစ်တန်းတည်း ထည့်သွင်းလိုက်သည်",
              "အလင်းကို ထိုးဖောက်နိုင်ရန် အရွက်ကို ပွင့်လင်းမြင်နိုင်စေသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the parenthetical explanation in paragraph 2 about why removing chlorophyll was 'convenient'.",
              "Without removing the green colour, it would be hard to tell if a blue-black colour change had happened.",
            ],
            hintsMy: [
              "Chlorophyll ဖယ်ရှားခြင်း 'အဆင်ပြေ' ကြောင်း စာပိုဒ် ၂ ၏ ကွင်းစကွင်းပိတ်ရှင်းချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အစိမ်းရောင်ကို မဖယ်ရှားလျှင် အပြာနက်ရောင် အပြောင်းအလဲ ဖြစ်ပေါ်ခဲ့မခဲ့ကို ခွဲခြားရန် ခက်ခဲစေမည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did the originally white patches show when tested with iodine?",
            questionMy:
                "မူလ အဖြူရောင် နေရာများသည် Iodine ဖြင့် စမ်းသပ်ချိန်တွင် အဘယ်အရာကို ပြသခဲ့ကြောင်း စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They stayed orange-brown, showing no starch had formed there",
              "They turned blue-black, showing lots of starch",
              "They turned bright green again",
              "They dissolved completely",
            ],
            optionsMy: [
              "လိမ္မော်-အညိုရောင်အတိုင်း ဆက်ရှိနေခဲ့ပြီး Starch မဖြစ်ပေါ်ခဲ့ကြောင်း ပြသခဲ့သည်",
              "အပြာနက်ရောင်သို့ ပြောင်းလဲသွားခဲ့ပြီး Starch များစွာကို ပြသခဲ့သည်",
              "အစိမ်းလင်းရောင် ပြန်ဖြစ်လာခဲ့သည်",
              "လုံးဝ ပျော်ဝင်သွားခဲ့သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "The white patches lacked chlorophyll, so they could not photosynthesise.",
              "No photosynthesis means no starch was produced there.",
            ],
            hintsMy: [
              "အဖြူရောင် နေရာများသည် Chlorophyll မပါဝင်သောကြောင့် Photosynthesise မဖြစ်နိုင်ခဲ့ပါ။",
              "Photosynthesis မဖြစ်ခြင်းက ထိုနေရာတွင် Starch မထုတ်လုပ်ခဲ့ကြောင်း ဆိုလိုသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What conclusion did Kaung Myat's group reach from comparing the two types of patches?",
            questionMy:
                "နေရာအမျိုးအစားနှစ်ခုကို နှိုင်းယှဉ်ခြင်းမှ ကောင်းမြတ်၏ အုပ်စု မည်သည့်ကောက်ချက် ချခဲ့သနည်း။",
            optionsEn: [
              "Chlorophyll is essential for photosynthesis to occur",
              "Iodine solution destroys chlorophyll",
              "White patches always contain more starch than green patches",
              "Destarching is unnecessary for this experiment",
            ],
            optionsMy: [
              "Photosynthesis ဖြစ်ပေါ်ရန် Chlorophyll သည် မရှိမဖြစ် လိုအပ်ကြောင်း",
              "Iodine Solution က Chlorophyll ကို ဖျက်ဆီးကြောင်း",
              "အဖြူရောင်နေရာများတွင် အစိမ်းရောင်နေရာများထက် Starch ပို၍ အမြဲပါဝင်ကြောင်း",
              "ဤစမ်းသပ်မှုအတွက် Destarching မလိုအပ်ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence explaining the group's conclusion.",
              "The only difference between the patches was chlorophyll -- and only chlorophyll-containing areas photosynthesised.",
            ],
            hintsMy: [
              "အုပ်စု၏ ကောက်ချက်ကို ရှင်းပြသော နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "နေရာများကြား တစ်ခုတည်းသော ကွာခြားချက်မှာ Chlorophyll ဖြစ်ပြီး -- Chlorophyll ပါဝင်သောနေရာများသာ Photosynthesise ဖြစ်ခဲ့သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w12-d5",
      dayNumber: 5,
      titleEn: "Term 3 Recap: Enzymes and Plant Nutrition",
      titleMy:
          "တတိယအပိုင်း ပြန်လည်သုံးသပ်ခြင်း - အင်ဇိုင်းများနှင့် အပင် အာဟာရ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Enzymes speed up reactions without being...",
          questionMy:
              "အင်ဇိုင်းများသည် ...မဖြစ်ဘဲ တုံ့ပြန်မှုများကို မြန်ဆန်စေသည်",
          optionsEn: [
            "Used up or permanently changed",
            "Made of protein",
            "Specific to one substrate",
            "Affected by temperature",
          ],
          optionsMy: [
            "ကုန်ဆုံးခြင်း သို့မဟုတ် အမြဲတမ်းပြောင်းလဲခြင်း",
            "ပရိုတင်းဖြင့် ဖွဲ့စည်းခြင်း",
            "Substrate တစ်ခုတည်းအတွက် တိတိကျကျဖြစ်ခြင်း",
            "အပူချိန်ကြောင့် သက်ရောက်ခံရခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which colour change with iodine solution shows starch is present?",
          questionMy:
              "Starch ရှိကြောင်း ပြသသော Iodine Solution ၏ အရောင်ပြောင်းလဲမှုမှာ အဘယ်နည်း",
          optionsEn: [
            "Orange-brown to blue-black",
            "Blue to brick-red",
            "Blue to purple",
            "Colourless to pink",
          ],
          optionsMy: [
            "လိမ္မော်-အညို မှ အပြာ-အနက်",
            "အပြာ မှ အုတ်ရောင်",
            "အပြာ မှ ခရမ်း",
            "အရောင်မရှိ မှ ပန်းရောင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which of these is NOT one of the three main limiting factors of photosynthesis?",
          questionMy:
              "Photosynthesis ၏ အဓိက Limiting Factor သုံးမျိုးတွင် မပါဝင်သော အချက်မှာ အောက်ပါတို့အနက် အဘယ်နည်း",
          optionsEn: [
            "Soil colour",
            "Light intensity",
            "Carbon dioxide concentration",
            "Temperature",
          ],
          optionsMy: [
            "မြေဆီလွှာအရောင်",
            "Light Intensity",
            "Carbon Dioxide Concentration",
            "Temperature",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which leaf structure has the largest air spaces, aiding gas diffusion?",
          questionMy:
              "မည်သည့် အရွက်ဖွဲ့စည်းပုံတွင် လေအလွတ်နေရာအကြီးဆုံးရှိပြီး ဓာတ်ငွေ့ Diffusion ကို ကူညီသနည်း",
          optionsEn: [
            "Spongy mesophyll",
            "Palisade mesophyll",
            "Upper epidermis",
            "Cuticle",
          ],
          optionsMy: [
            "Spongy Mesophyll",
            "Palisade Mesophyll",
            "အပေါ် Epidermis",
            "Cuticle",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 3: "Enzymes and Plant Nutrition"
// (Weeks 9-12)
// =====================================================================

const CourseTermDef igcseBiologyTerm3 = CourseTermDef(
  id: "course-igcse-bio-t3",
  termNumber: 3,
  titleEn: "Enzymes and Plant Nutrition",
  titleMy: "အင်ဇိုင်းများနှင့် အပင် အာဟာရ",
  certificateTitleEn: "Enzymes and Plant Nutrition",
  certificateTitleMy: "အင်ဇိုင်းများနှင့် အပင် အာဟာရ",
  weeks: [_igcseBioWeek9, _igcseBioWeek10, _igcseBioWeek11, _igcseBioWeek12],
);

// =====================================================================
// Week 13: "Human Diet and Nutritional Requirements"
// =====================================================================

const CourseWeekDef _igcseBioWeek13 = CourseWeekDef(
  id: "course-igcse-bio-w13",
  weekNumber: 13,
  titleEn: "Human Diet and Nutritional Requirements",
  titleMy: "လူသားတို့၏ အာဟာရနှင့် အာဟာရ လိုအပ်ချက်များ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w13-d1",
      dayNumber: 1,
      titleEn: "What is a Balanced Diet?",
      titleMy: "Balanced Diet ဆိုသည်မှာ အဘယ်နည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A balanced diet contains carbohydrates, proteins, and lipids, plus which other essential components?",
          questionMy:
              "Balanced Diet တွင် ကာဗိုဟိုက်ဒရိတ်၊ ပရိုတင်းနှင့် Lipid အပြင် မရှိမဖြစ် လိုအပ်သည့် အခြားအစိတ်အပိုင်းများမှာ အဘယ်နည်း။",
          optionsEn: [
            "Vitamins, minerals, fibre, and water",
            "Only extra sugar",
            "Only extra salt",
            "Artificial colouring and preservatives",
          ],
          optionsMy: [
            "Vitamins, Minerals, Fibre နှင့် ရေ",
            "သကြားအပို",
            "ဆားအပို",
            "အရောင်တင်ပစ္စည်းနှင့် ထိန်းသိမ်းဆေးများ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Even in tiny amounts, these substances are essential for health.",
            "Fibre, though not digested, is important for helping food move through the gut.",
          ],
          hintsMy: [
            "ပမာဏအနည်းငယ်ဖြစ်စေ ဤပစ္စည်းများသည် ကျန်းမာရေးအတွက် မရှိမဖြစ် ဖြစ်သည်။",
            "Fibre ကို မချေဖျက်နိုင်သော်လည်း အစာအိမ်လမ်းကြောင်းအတွင်း အစာများ ရွေ့လျားရာတွင် အရေးကြီးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A diet lacking sufficient vitamin C can lead to which deficiency disease?",
          questionMy:
              "Vitamin C လုံလောက်စွာ မရရှိသော အစားအသောက်သည် မည်သည့် ချို့တဲ့မှု ရောဂါကို ဖြစ်စေနိုင်သနည်း။",
          optionsEn: ["Scurvy", "Rickets", "Anaemia", "Night blindness"],
          optionsMy: ["Scurvy", "Rickets", "Anaemia", "Night Blindness"],
          correctIndex: 0,
          hintsEn: [
            "This disease was historically common among sailors on long voyages without fresh fruit.",
            "Symptoms include bleeding gums and slow wound healing.",
          ],
          hintsMy: [
            "ဤရောဂါသည် သစ်သီးလတ်လတ်ဆတ်ဆတ် မရရှိသော ရေကြာင်းခရီးရှည် သွားသည့် သင်္ဘောသားများကြား သမိုင်းကြောင်းအရ ဖြစ်ပွားခဲ့သည်။",
            "လက္ခဏာများတွင် သွားဖုံးသွေးထွက်ခြင်းနှင့် ဒဏ်ရာနှေးကွေးစွာ ပျောက်ကင်းခြင်း ပါဝင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which mineral deficiency is most closely linked to anaemia?",
          questionMy:
              "Anaemia နှင့် အနီးစပ်ဆုံး ဆက်စပ်နေသော သတ္တု ချို့တဲ့မှုမှာ အဘယ်နည်း။",
          optionsEn: ["Iron", "Calcium", "Sodium", "Potassium"],
          optionsMy: ["သံဓာတ် (Iron)", "ကယ်လ်စီယမ်", "ဆိုဒီယမ်", "ပိုတက်စီယမ်"],
          correctIndex: 0,
          hintsEn: [
            "This mineral is a key part of haemoglobin, the molecule in red blood cells that carries oxygen.",
            "Without enough of it, the body cannot make enough functional haemoglobin.",
          ],
          hintsMy: [
            "ဤသတ္တုသည် အောက်ဆီဂျင် သယ်ဆောင်ပေးသော သွေးနီဥရှိ မော်လီကျူး Haemoglobin ၏ အဓိကအစိတ်အပိုင်းဖြစ်သည်။",
            "ဤသတ္တု မလုံလောက်ပါက ခန္ဓာကိုယ်သည် အသုံးဝင်သော Haemoglobin လုံလောက်စွာ မထုတ်လုပ်နိုင်ပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w13-d2",
      dayNumber: 2,
      titleEn: "Match: Nutrients and Their Functions",
      titleMy: "တွဲစပ်ကြမည် - အာဟာရများနှင့် ၎င်းတို့၏ လုပ်ဆောင်ချက်များ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w13-dm-1",
          termEn: "Vitamin D",
          termMy: "Vitamin D",
          matchEn:
              "Needed for calcium absorption; deficiency causes rickets (weak, soft bones)",
          matchMy:
              "ကယ်လ်စီယမ် စုပ်ယူရန် လိုအပ်သည်၊ ချို့တဲ့ပါက Rickets (အရိုးနုနယ်ခြင်း) ဖြစ်စေသည်",
          colorValue: 0xFFFFC107,
        ),
        DragMatchPair(
          id: "igcsebio-w13-dm-2",
          termEn: "Calcium",
          termMy: "ကယ်လ်စီယမ် (Calcium)",
          matchEn: "A mineral needed for strong bones and teeth",
          matchMy: "အရိုးနှင့် သွားများ ခိုင်ခံ့ရန် လိုအပ်သော သတ္တု",
          colorValue: 0xFF9E9E9E,
        ),
        DragMatchPair(
          id: "igcsebio-w13-dm-3",
          termEn: "Iron",
          termMy: "သံဓာတ် (Iron)",
          matchEn: "A mineral needed to make haemoglobin in red blood cells",
          matchMy: "သွေးနီဥများတွင် Haemoglobin ထုတ်လုပ်ရန် လိုအပ်သော သတ္တု",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w13-dm-4",
          termEn: "Fibre",
          termMy: "Fibre",
          matchEn:
              "An undigested plant material that helps food and waste move through the gut",
          matchMy:
              "အစာနှင့် စွန့်ပစ်ပစ္စည်းများ အစာအိမ်လမ်းကြောင်းအတွင်း ရွေ့လျားရန် ကူညီပေးသည့် မချေဖျက်နိုင်သော အပင်ပစ္စည်း",
          colorValue: 0xFF8BC34A,
        ),
        DragMatchPair(
          id: "igcsebio-w13-dm-5",
          termEn: "Vitamin C",
          termMy: "Vitamin C",
          matchEn:
              "Needed for healthy skin and wound healing; deficiency causes scurvy",
          matchMy:
              "ကျန်းမာသော အရေပြားနှင့် ဒဏ်ရာပျောက်ကင်းမှုအတွက် လိုအပ်သည်၊ ချို့တဲ့ပါက Scurvy ဖြစ်စေသည်",
          colorValue: 0xFFFF5722,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w13-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Deficiency?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် ချို့တဲ့မှု",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Vitamin C Deficiency",
          "Vitamin D Deficiency",
          "Iron Deficiency",
        ],
        bucketsMy: [
          "Vitamin C ချို့တဲ့ခြင်း",
          "Vitamin D ချို့တဲ့ခြင်း",
          "သံဓာတ် ချို့တဲ့ခြင်း",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w13-sort-1",
            labelEn: "A child develops soft, bowed leg bones",
            labelMy: "ကလေးတစ်ဦးတွင် ခြေထောက်အရိုးများ နုနယ်ကွေးလာခြင်း",
            correctBucketEn: "Vitamin D Deficiency",
            correctBucketMy: "Vitamin D ချို့တဲ့ခြင်း",
          ),
          SortingItem(
            id: "igcsebio-w13-sort-2",
            labelEn:
                "A person's gums begin to bleed easily and wounds heal very slowly",
            labelMy:
                "လူတစ်ဦး၏ သွားဖုံးများ လွယ်ကူစွာ သွေးထွက်ပြီး ဒဏ်ရာများ အလွန်နှေးကွေးစွာ ပျောက်ကင်းခြင်း",
            correctBucketEn: "Vitamin C Deficiency",
            correctBucketMy: "Vitamin C ချို့တဲ့ခြင်း",
          ),
          SortingItem(
            id: "igcsebio-w13-sort-3",
            labelEn:
                "A person feels constantly tired and pale, with low oxygen-carrying capacity in the blood",
            labelMy:
                "လူတစ်ဦးသည် သွေးတွင် အောက်ဆီဂျင်သယ်ဆောင်နိုင်စွမ်း နည်းသဖြင့် အမြဲပင်ပန်း၍ မျက်နှာဖြူဖျော့နေခြင်း",
            correctBucketEn: "Iron Deficiency",
            correctBucketMy: "သံဓာတ် ချို့တဲ့ခြင်း",
          ),
          SortingItem(
            id: "igcsebio-w13-sort-4",
            labelEn:
                "An elderly person's bones become weak and easily fractured due to poor calcium absorption",
            labelMy:
                "ကယ်လ်စီယမ် စုပ်ယူမှု ညံ့ဖျင်းသောကြောင့် သက်ကြီးရွယ်အိုတစ်ဦး၏ အရိုးများ ပျော့နွမ်း၍ လွယ်ကူစွာ ကျိုးပေါက်ခြင်း",
            correctBucketEn: "Vitamin D Deficiency",
            correctBucketMy: "Vitamin D ချို့တဲ့ခြင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w13-d4",
      dayNumber: 4,
      titleEn: "Reading: Moe Set Wai's Family Meal Plan",
      titleMy: "စာဖတ်ခြင်း - မိုးစက်ဝေ၏ မိသားစု အစားအစာအစီအစဉ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Moe Set Wai's Family Meal Plan",
        titleMy: "မိုးစက်ဝေ၏ မိသားစု အစားအစာအစီအစဉ်",
        passageEn:
            "For a Biology homework project, Moe Set Wai's teacher asked every student to analyse one week of their family's meals and identify whether the diet was balanced. Moe Set Wai's family mostly ate rice, fried vegetables, and small amounts of fish or eggs a few times a week, and she noticed her little brother often skipped vegetables entirely, complaining that he didn't like them.\n\nLooking at her notes, Moe Set Wai realised her family's diet supplied plenty of carbohydrates from the rice, but was relatively low in the fresh fruit and vegetables that provide vitamin C, and her brother's habit of avoiding vegetables made this worse for him specifically. She remembered that vitamin C deficiency can cause scurvy, with symptoms including bleeding gums and slow-healing wounds, and although her brother wasn't showing serious symptoms, she worried this pattern could become a problem over time.\n\nHer teacher had also emphasised that a balanced diet needs the right proportions of every nutrient group, not just enough calories overall -- someone could eat plenty of food and still be malnourished if that food lacked variety. Moe Set Wai suggested to her mother that adding more leafy vegetables and occasional fresh fruit like guava, which is naturally rich in vitamin C, could help balance the family's meals without needing to change the rice-based diet they were used to.",
        passageMy:
            "ဇီဝဗေဒ အိမ်စာစီမံကိန်းအတွက် မိုးစက်ဝေ၏ ဆရာမက ကျောင်းသားတိုင်းအား သူတို့၏ မိသားစု တစ်ပတ်လုံး စားသုံးသော အစားအစာများကို ခွဲခြမ်းစိတ်ဖြာပြီး Balanced Diet ဟုတ်မဟုတ် ဖော်ထုတ်ရန် တောင်းဆိုခဲ့သည်။ မိုးစက်ဝေ၏ မိသားစုသည် ဆန်၊ ဟင်းသီးဟင်းရွက်ကြော်နှင့် တစ်ပတ်လျှင် အကြိမ်အနည်းငယ်သာ ငါး သို့မဟုတ် ကြက်ဥ အနည်းငယ်ကို အဓိက စားသုံးသည်ကို တွေ့ရှိခဲ့ပြီး၊ သူမ၏ ညီလေးသည် ဟင်းသီးဟင်းရွက်ကို မကြိုက်ဟု ညည်းတွား၍ လုံးလုံးမစားခြင်းကို မကြာခဏ တွေ့ရသည်ကို သတိပြုမိခဲ့သည်။\n\nသူမ၏ မှတ်စုများကို ကြည့်ရှုကာ မိုးစက်ဝေက သူမ၏ မိသားစု အစားအစာသည် ဆန်မှ ကာဗိုဟိုက်ဒရိတ် အလုံအလောက် ရရှိသော်လည်း Vitamin C ပေးသော သစ်သီးလတ်နှင့် ဟင်းသီးဟင်းရွက်လတ် အနည်းငယ်သာ ရရှိကြောင်း၊ သူမ၏ ညီလေး ဟင်းသီးဟင်းရွက် ရှောင်ကြဉ်လေ့ရှိခြင်းက ၎င်းအတွက် ပို၍ ဆိုးရွားစေကြောင်း သဘောပေါက်လာခဲ့သည်။ Vitamin C ချို့တဲ့ခြင်းသည် သွားဖုံးသွေးထွက်ခြင်းနှင့် ဒဏ်ရာနှေးကွေးစွာ ပျောက်ကင်းခြင်း လက္ခဏာများပါဝင်သော Scurvy ကို ဖြစ်စေနိုင်ကြောင်း သတိရမိခဲ့ပြီး၊ သူမ၏ ညီလေးတွင် ပြင်းထန်သော လက္ခဏာများ မပေါ်သော်လည်း ဤပုံစံသည် အချိန်ကြာလာသည်နှင့်အမျှ ပြဿနာဖြစ်လာနိုင်ကြောင်း သူမ စိုးရိမ်ခဲ့သည်။\n\nသူမ၏ ဆရာမက Balanced Diet တစ်ခုသည် စုစုပေါင်းကယ်လိုရီ လုံလောက်ခြင်းတစ်ခုတည်း မဟုတ်ဘဲ အာဟာရအုပ်စုတိုင်း၏ မှန်ကန်သော အချိုးအစားကို လိုအပ်ကြောင်း လည်း အထူးဖော်ပြခဲ့သည် -- တစ်စုံတစ်ယောက်သည် အစားအစာများစွာ စားနိုင်သော်လည်း ထိုအစားအစာတွင် အမျိုးအစားစုံလင်မှု မရှိပါက အာဟာရချို့တဲ့နိုင်ဆဲ ဖြစ်သည်။ မိုးစက်ဝေက သူတို့ ရင်းနှီးနေကျ ဆန်အခြေခံအစားအစာကို ပြောင်းလဲရန် မလိုအပ်ဘဲ အရွက်ဟင်းသီးဟင်းရွက် ပို၍ ထည့်သွင်းခြင်းနှင့် Vitamin C ကြွယ်ဝသော မာလကာသီးကဲ့သို့ သစ်သီးလတ် တစ်ခါတစ်ရံ ထည့်သွင်းခြင်းတို့က မိသားစု၏ အစားအစာများကို ဟန်ချက်ညီစေရန် ကူညီနိုင်ကြောင်း သူမ အမေအား အကြံပြုခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what specific nutrient did Moe Set Wai's family's diet lack most?",
            questionMy:
                "မိုးစက်ဝေ၏ မိသားစု အစားအစာတွင် အဘယ် အာဟာရ အများဆုံး ချို့တဲ့ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: ["Vitamin C", "Carbohydrates", "Iron", "Fat"],
            optionsMy: ["Vitamin C", "ကာဗိုဟိုက်ဒရိတ်", "သံဓာတ်", "အဆီ"],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about fresh fruit and vegetables being relatively low.",
              "This nutrient is provided mainly by fresh fruit and vegetables.",
            ],
            hintsMy: [
              "သစ်သီးလတ်နှင့် ဟင်းသီးဟင်းရွက်လတ် အနည်းငယ်သာ ရရှိကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤအာဟာရကို အဓိကအားဖြင့် သစ်သီးလတ်နှင့် ဟင်းသီးဟင်းရွက်လတ်များမှ ရရှိသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What disease did Moe Set Wai worry her brother's habit might eventually cause?",
            questionMy:
                "မိုးစက်ဝေ၏ ညီလေး၏ အကျင့်က နောက်ဆုံးတွင် မည်သည့်ရောဂါကို ဖြစ်စေနိုင်ကြောင်း သူမ စိုးရိမ်ခဲ့သနည်း။",
            optionsEn: ["Scurvy", "Rickets", "Anaemia", "Diabetes"],
            optionsMy: ["Scurvy", "Rickets", "Anaemia", "ဆီးချိုရောဂါ"],
            correctIndex: 0,
            hintsEn: [
              "This links back to the vitamin most lacking in his diet.",
              "The passage names this disease directly in paragraph 2.",
            ],
            hintsMy: [
              "၎င်း၏ အစားအစာတွင် အများဆုံး ချို့တဲ့သော Vitamin နှင့် ဆက်စပ်ထားသည်။",
              "စာပိုဒ် ၂ တွင် ဤရောဂါ၏ အမည်ကို တိုက်ရိုက် ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did the teacher say someone could eat plenty of food and still be malnourished?",
            questionMy:
                "အစားအစာများစွာ စားနိုင်သော်လည်း အာဟာရချို့တဲ့နိုင်ဆဲဟု ဆရာမက အဘယ်ကြောင့် ပြောခဲ့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "If the food lacks variety across all nutrient groups, quantity alone is not enough",
              "Because eating too much food is always harmful",
              "Because calories do not matter at all",
              "Because only meat provides real nutrition",
            ],
            optionsMy: [
              "အစားအစာတွင် အာဟာရအုပ်စုအားလုံးအတွက် အမျိုးအစားစုံလင်မှု မရှိပါက ပမာဏတစ်ခုတည်း မလုံလောက်ပါ",
              "အစားအစာများများစားခြင်းသည် အမြဲအန္တရာယ်ရှိသောကြောင့်",
              "ကယ်လိုရီသည် လုံးဝ အရေးမကြီးသောကြောင့်",
              "အသားများသာ တကယ့်အာဟာရ ပေးသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about needing the right proportions of every nutrient group.",
              "Quantity of calories is different from variety of nutrients.",
            ],
            hintsMy: [
              "အာဟာရအုပ်စုတိုင်း၏ မှန်ကန်သော အချိုးအစား လိုအပ်ကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ကယ်လိုရီပမာဏသည် အာဟာရ အမျိုးအစားစုံလင်မှုနှင့် မတူပါ။",
            ],
          ),
          QuizQuestion(
            questionEn: "What solution did Moe Set Wai suggest to her mother?",
            questionMy:
                "မိုးစက်ဝေက သူမ၏ အမေအား မည်သည့် ဖြေရှင်းနည်းကို အကြံပြုခဲ့သနည်း။",
            optionsEn: [
              "Adding more leafy vegetables and fresh fruit like guava",
              "Stopping eating rice entirely",
              "Only eating fish from now on",
              "Adding more sugar to every meal",
            ],
            optionsMy: [
              "အရွက်ဟင်းသီးဟင်းရွက်ပို၍ ထည့်သွင်းခြင်းနှင့် မာလကာသီးကဲ့သို့ သစ်သီးလတ် ထည့်သွင်းခြင်း",
              "ဆန်ကို လုံးဝ ရပ်တန့်စားသုံးခြင်း",
              "ယခုမှစတင်၍ ငါးသာ စားသုံးခြင်း",
              "အစားအစာတိုင်းတွင် သကြားပို၍ ထည့်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of paragraph 3.",
              "She suggested a small addition, not a complete change to their usual diet.",
            ],
            hintsMy: [
              "စာပိုဒ် ၃ ၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "သူမက ပုံမှန် အစားအစာကို လုံးလုံးလျားလျား ပြောင်းလဲစေခြင်း မဟုတ်ဘဲ အနည်းငယ်သာ ထပ်ထည့်ရန် အကြံပြုခဲ့ခြင်း ဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w13-d5",
      dayNumber: 5,
      titleEn: "Week 13 Recap: Human Diet",
      titleMy: "တစ်ဆယ့်သုံးပတ် ပြန်လည်သုံးသပ်ခြင်း - လူသားတို့၏ အစားအစာ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Vitamin D deficiency in children is most closely linked to which disease?",
          questionMy:
              "ကလေးများတွင် Vitamin D ချို့တဲ့ခြင်းသည် မည်သည့်ရောဂါနှင့် အနီးစပ်ဆုံး ဆက်စပ်သနည်း",
          optionsEn: ["Rickets", "Scurvy", "Anaemia", "Diabetes"],
          optionsMy: ["Rickets", "Scurvy", "Anaemia", "ဆီးချိုရောဂါ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is NOT a component of a balanced diet?",
          questionMy:
              "အောက်ပါတို့အနက် Balanced Diet ၏ အစိတ်အပိုင်း မဟုတ်သည့်အရာမှာ အဘယ်နည်း",
          optionsEn: ["Artificial food colouring", "Protein", "Fibre", "Water"],
          optionsMy: ["အရောင်တင်ပစ္စည်း", "ပရိုတင်း", "Fibre", "ရေ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Iron is essential for making which molecule in red blood cells?",
          questionMy:
              "သွေးနီဥများတွင် မည်သည့်မော်လီကျူးထုတ်လုပ်ရန် သံဓာတ် မရှိမဖြစ် လိုအပ်သနည်း",
          optionsEn: ["Haemoglobin", "Chlorophyll", "Insulin", "Amylase"],
          optionsMy: ["Haemoglobin", "Chlorophyll", "Insulin", "Amylase"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 14: "The Human Alimentary Canal and Digestion"
// =====================================================================

const CourseWeekDef _igcseBioWeek14 = CourseWeekDef(
  id: "course-igcse-bio-w14",
  weekNumber: 14,
  titleEn: "The Human Alimentary Canal and Digestion",
  titleMy: "လူ့အစာခြေလမ်းကြောင်းနှင့် အစာခြေခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w14-d1",
      dayNumber: 1,
      titleEn: "Five Stages: Ingestion to Egestion",
      titleMy: "အဆင့်ငါးဆင့် - Ingestion မှ Egestion အထိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does 'ingestion' mean?",
          questionMy: "'Ingestion' ဆိုသည်မှာ အဘယ်ကို ဆိုလိုသနည်း။",
          optionsEn: [
            "Taking food into the body through the mouth",
            "Breaking food down into smaller molecules",
            "Absorbing digested food into the blood",
            "Removing undigested waste from the body",
          ],
          optionsMy: [
            "ခံတွင်းမှတစ်ဆင့် ခန္ဓာကိုယ်အတွင်းသို့ အစားအစာ ယူသွင်းခြင်း",
            "အစားအစာကို မော်လီကျူး ငယ်များအဖြစ် ချေဖျက်ခြင်း",
            "ချေဖျက်ပြီး အစားအစာကို သွေးထဲသို့ စုပ်ယူခြင်း",
            "ခန္ဓာကိုယ်မှ မချေဖျက်နိုင်သော စွန့်ပစ်ပစ္စည်းကို ထုတ်ပယ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the very first stage of the whole process, before any digestion happens.",
            "It simply means eating.",
          ],
          hintsMy: [
            "ဤသည်မှာ အစာချေဖျက်မှု မဖြစ်ပေါ်မီ ဖြစ်စဉ်တစ်ခုလုံး၏ ပထမဆုံးအဆင့် ဖြစ်သည်။",
            "ရိုးရှင်းစွာ စားခြင်းကို ဆိုလိုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "'Assimilation' refers to which stage of the digestive process?",
          questionMy:
              "'Assimilation' ဆိုသည်မှာ အစာချေဖျက်ခြင်း ဖြစ်စဉ်၏ မည်သည့်အဆင့်ကို ရည်ညွှန်းသနည်း။",
          optionsEn: [
            "The body using absorbed nutrients, e.g. for growth and repair",
            "Chewing food in the mouth",
            "Removing faeces from the body",
            "The stomach churning food",
          ],
          optionsMy: [
            "စုပ်ယူထားသော အာဟာရများကို ခန္ဓာကိုယ်က ကြီးထွားခြင်းနှင့် ပြုပြင်ခြင်းအတွက် အသုံးပြုခြင်း",
            "ခံတွင်းတွင် အစားအစာကို ဝါးမျိုခြင်း",
            "ခန္ဓာကိုယ်မှ ဝမ်းစွန့်ပစ်ပစ္စည်းကို ဖယ်ရှားခြင်း",
            "အစာအိမ်က အစားအစာကို လှုပ်ရှားရွှေ့နှမ်းခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the stage after absorption -- once nutrients are in the blood, what happens to them next?",
            "Assimilation means 'making part of the body'.",
          ],
          hintsMy: [
            "ဤသည်မှာ Absorption ပြီးနောက်အဆင့် ဖြစ်သည် -- အာဟာရများ သွေးထဲရောက်ပြီးနောက် ၎င်းတို့ကို မည်သို့ ဆက်လုပ်ဆောင်သနည်း။",
            "Assimilation ဆိုသည်မှာ 'ခန္ဓာကိုယ်၏ အစိတ်အပိုင်းအဖြစ် ပြုလုပ်ခြင်း' ကို ဆိုလိုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the key difference between mechanical and chemical digestion?",
          questionMy:
              "Mechanical Digestion နှင့် Chemical Digestion ကြား အဓိက ကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Mechanical digestion physically breaks food into smaller pieces; chemical digestion uses enzymes to break large molecules into smaller ones",
            "Mechanical digestion only happens in the stomach; chemical digestion only in the mouth",
            "Chemical digestion always happens before mechanical digestion",
            "There is no real difference between them",
          ],
          optionsMy: [
            "Mechanical Digestion သည် အစားအစာကို ရုပ်ပိုင်းဆိုင်ရာ အစိတ်အပိုင်းငယ်များအဖြစ် ချိုးဖျက်ပြီး Chemical Digestion သည် ကြီးမားသော မော်လီကျူးများကို ငယ်သော မော်လီကျူးများအဖြစ် Enzyme သုံး၍ ချေဖျက်ခြင်း",
            "Mechanical Digestion သည် အစာအိမ်တွင်သာ ဖြစ်ပွားပြီး Chemical Digestion သည် ခံတွင်းတွင်သာ ဖြစ်ပွားခြင်း",
            "Chemical Digestion သည် Mechanical Digestion ထက် အမြဲအရင် ဖြစ်ပွားခြင်း",
            "နှစ်ခုကြား အမှန်တကယ် ကွာခြားချက် မရှိခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Chewing and the stomach churning food are examples of mechanical digestion.",
            "Chemical digestion involves enzymes breaking chemical bonds in large molecules.",
          ],
          hintsMy: [
            "ဝါးမျိုခြင်းနှင့် အစာအိမ်က အစားအစာကို လှုပ်ရှားရွှေ့နှမ်းခြင်းတို့သည် Mechanical Digestion ၏ ဥပမာများဖြစ်သည်။",
            "Chemical Digestion တွင် Enzyme များက ကြီးမားသော မော်လီကျူးများရှိ ဓာတုအချိတ်အဆက်များကို ချိုးဖျက်ခြင်း ပါဝင်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w14-d2",
      dayNumber: 2,
      titleEn: "Match: The Digestive System",
      titleMy: "တွဲစပ်ကြမည် - အစာခြေစနစ်",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w14-dm-1",
          termEn: "Liver",
          termMy: "အသည်း (Liver)",
          matchEn: "The organ that produces bile",
          matchMy: "Bile ကို ထုတ်လုပ်ပေးသော အင်္ဂါ",
          colorValue: 0xFF795548,
        ),
        DragMatchPair(
          id: "igcsebio-w14-dm-2",
          termEn: "Gallbladder",
          termMy: "သည်းခြေအိတ် (Gallbladder)",
          matchEn:
              "The organ that stores bile before it is released into the small intestine",
          matchMy: "Bile ကို သိမ်ငယ်အူထဲသို့ မလွှတ်မီ သိုလှောင်ထားသော အင်္ဂါ",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w14-dm-3",
          termEn: "Pancreas",
          termMy: "Pancreas",
          matchEn:
              "The organ that produces pancreatic juice, containing amylase, protease, and lipase enzymes",
          matchMy:
              "Amylase, Protease နှင့် Lipase Enzyme များ ပါဝင်သော Pancreatic Juice ကို ထုတ်လုပ်ပေးသော အင်္ဂါ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w14-dm-4",
          termEn: "Bile",
          termMy: "Bile",
          matchEn:
              "A substance that emulsifies fats into smaller droplets, increasing surface area for lipase, but is not itself an enzyme",
          matchMy:
              "အဆီများကို ပိုသေးငယ်သော အစက်များအဖြစ် Emulsify လုပ်ပေးပြီး Lipase အတွက် မျက်နှာပြင်ဧရိယာ တိုးမြှင့်ပေးသော်လည်း ကိုယ်တိုင် Enzyme မဟုတ်သော ပစ္စည်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w14-dm-5",
          termEn: "Small intestine",
          termMy: "သိမ်ငယ်အူ",
          matchEn:
              "The main site of digestion and absorption of food, lined with villi",
          matchMy:
              "Villi များဖြင့် အလွှာခံထားပြီး အစာချေဖျက်ခြင်းနှင့် စုပ်ယူခြင်း အဓိကဖြစ်ပေါ်ရာနေရာ",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w14-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Stage of Digestion?",
      titleMy: "စီစစ်ကြမည် - အစာချေဖျက်ခြင်း၏ မည်သည့်အဆင့်",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Ingestion", "Digestion", "Absorption", "Egestion"],
        bucketsMy: ["Ingestion", "Digestion", "Absorption", "Egestion"],
        items: [
          SortingItem(
            id: "igcsebio-w14-sort-1",
            labelEn: "Putting a spoonful of rice into your mouth",
            labelMy: "ဆန်တစ်ဇွန်းကို ခံတွင်းထဲသို့ ထည့်ခြင်း",
            correctBucketEn: "Ingestion",
            correctBucketMy: "Ingestion",
          ),
          SortingItem(
            id: "igcsebio-w14-sort-2",
            labelEn:
                "Amylase breaking starch down into smaller sugar molecules",
            labelMy:
                "Amylase က Starch ကို ပိုသေးငယ်သော သကြားမော်လီကျူးများအဖြစ် ချေဖျက်ခြင်း",
            correctBucketEn: "Digestion",
            correctBucketMy: "Digestion",
          ),
          SortingItem(
            id: "igcsebio-w14-sort-3",
            labelEn:
                "Digested glucose molecules passing through the wall of the small intestine into the blood",
            labelMy:
                "ချေဖျက်ပြီး ဂလူးကို့စ်မော်လီကျူးများ သိမ်ငယ်အူနံရံကို ဖြတ်ကျော်၍ သွေးထဲသို့ ဝင်ရောက်ခြင်း",
            correctBucketEn: "Absorption",
            correctBucketMy: "Absorption",
          ),
          SortingItem(
            id: "igcsebio-w14-sort-4",
            labelEn: "Undigested fibre being removed from the body as faeces",
            labelMy:
                "မချေဖျက်နိုင်သော Fibre ကို ဝမ်းစွန့်ပစ္စည်းအဖြစ် ခန္ဓာကိုယ်မှ ဖယ်ရှားခြင်း",
            correctBucketEn: "Egestion",
            correctBucketMy: "Egestion",
          ),
          SortingItem(
            id: "igcsebio-w14-sort-5",
            labelEn: "Chewing a piece of meat with your teeth",
            labelMy: "သွားများဖြင့် အသားတစ်ချပ်ကို ဝါးမျိုခြင်း",
            correctBucketEn: "Ingestion",
            correctBucketMy: "Ingestion",
          ),
          SortingItem(
            id: "igcsebio-w14-sort-6",
            labelEn: "Protease breaking down proteins into amino acids",
            labelMy:
                "Protease က ပရိုတင်းများကို အမိုင်နိုအက်ဆစ်များအဖြစ် ချေဖျက်ခြင်း",
            correctBucketEn: "Digestion",
            correctBucketMy: "Digestion",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w14-d4",
      dayNumber: 4,
      titleEn: "Reading: Dr. Htet Htet's Clinic Visit",
      titleMy: "စာဖတ်ခြင်း - ဒေါက်တာထက်ထက်၏ ဆေးခန်း လာရောက်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Dr. Htet Htet's Clinic Visit",
        titleMy: "ဒေါက်တာထက်ထက်၏ ဆေးခန်း လာရောက်မှု",
        passageEn:
            "During a school career day, a local doctor named Dr. Htet Htet visited to talk about the digestive system, and she brought a diagram of the alimentary canal to explain a patient case she had seen the week before. A patient had come to her clinic complaining of pale, floating stools and difficulty digesting fatty meals after having their gallbladder removed due to gallstones.\n\nDr. Htet Htet explained to the students that even without a gallbladder, the liver still produces bile continuously -- but without the gallbladder to store and concentrate it, bile trickles into the small intestine in a weaker, less concentrated stream instead of being released in a strong burst exactly when a fatty meal arrives. Since bile's job is to emulsify fats, breaking large fat droplets into many smaller ones so that lipase enzymes from the pancreas have more surface area to work on, a weaker bile supply meant fats were emulsified less effectively and digested more slowly, explaining the patient's symptoms.\n\nOne curious student asked whether bile itself digests fat the way an enzyme would. Dr. Htet Htet corrected this misunderstanding directly: bile is not an enzyme and does not break any chemical bonds in fat molecules. Its role is purely physical, breaking large fat droplets into smaller ones through emulsification -- the actual chemical digestion of fat into fatty acids and glycerol is still carried out afterward by lipase, an enzyme produced by the pancreas.",
        passageMy:
            "ကျောင်း Career Day တစ်ခုတွင် ဒေါက်တာထက်ထက်ဟု အမည်ရှိ ဒေသခံဆရာဝန်တစ်ဦးက အစာချေဖျက်ခြင်းစနစ်အကြောင်း ပြောကြားရန် လာရောက်ခဲ့ပြီး၊ ရက်တစ်ပတ်ခန့်အလို ၎င်း တွေ့ကြုံခဲ့သော လူနာအကြောင်းကို ရှင်းပြရန် အစာခြေလမ်းကြောင်း ပုံကို ယူဆောင်လာခဲ့သည်။ လူနာတစ်ဦးသည် သည်းခြေအိတ်ကျောက်ကြောင့် သည်းခြေအိတ် ဖယ်ရှားခံရပြီးနောက် အဆီပါဝင်သော အစားအစာများ ချေဖျက်ရန် ခက်ခဲခြင်းနှင့် ဆီရောသော ဝါဝါသော ဝမ်းကို ညည်းတွားစွာ ဆေးခန်းသို့ ရောက်ရှိလာခဲ့သည်။\n\nသည်းခြေအိတ် မရှိသော်လည်း အသည်းက Bile ကို ဆက်လက် ထုတ်လုပ်ပေးနေဆဲဖြစ်ကြောင်း ဒေါက်တာထက်ထက်က ကျောင်းသားများအား ရှင်းပြခဲ့သည် -- သို့သော် ၎င်းကို သိမ်းဆည်း၍ စူးရှစေမည့် သည်းခြေအိတ် မရှိသောကြောင့် Bile သည် အဆီပါ အစားအစာ ရောက်ရှိလာသည့်အချိန်တွင် အားကောင်းစွာ လွှတ်ပေးမည့်အစား အားနည်းသော၊ စူးစူးရှရှ မဖြစ်သော စီးကြောင်းအဖြစ် သိမ်ငယ်အူထဲသို့ တရွှင့်ရွှင့်စီးဝင်လာသည်။ Bile ၏ တာဝန်မှာ အဆီများကို Emulsify လုပ်ရန် ဖြစ်ပြီး ကြီးမားသော အဆီအစက်များကို Pancreas မှ Lipase Enzyme များ လုပ်ဆောင်ရန် မျက်နှာပြင်ဧရိယာ ပို၍ ရရှိစေရန် အစက်ငယ်များစွာအဖြစ် ချိုးဖျက်ပေးသောကြောင့်၊ Bile ထောက်ပံ့မှု အားနည်းလျှင် အဆီများကို ထိရောက်စွာ Emulsify လုပ်၍ မရဘဲ ပို၍ နှေးကွေးစွာ ချေဖျက်ခဲ့ရသဖြင့် လူနာ၏ လက္ခဏာများကို ရှင်းပြနိုင်ခဲ့သည်။\n\nစိတ်ဝင်စားသော ကျောင်းသားတစ်ဦးက Bile ကိုယ်တိုင်သည် Enzyme တစ်ခုကဲ့သို့ အဆီကို ချေဖျက်ပါသလားဟု မေးမြန်းခဲ့သည်။ ဒေါက်တာထက်ထက်က ဤအထင်မှားမှုကို တိုက်ရိုက် ပြင်ဆင်ပေးခဲ့သည်- Bile သည် Enzyme မဟုတ်ဘဲ အဆီမော်လီကျူးများရှိ ဓာတုအချိတ်အဆက် မည်သည့်တစ်ခုကိုမျှ ချိုးဖျက်၍ မရနိုင်ပါ။ ၎င်း၏ အခန်းကဏ္ဍသည် ရုပ်ပိုင်းဆိုင်ရာ လုပ်ဆောင်ချက်တစ်ခုသာ ဖြစ်ပြီး ကြီးမားသော အဆီအစက်များကို Emulsification ဖြင့် ငယ်သောအစက်များအဖြစ် ချိုးဖျက်ခြင်းသာ ဖြစ်သည် -- အဆီကို Fatty Acid နှင့် Glycerol အဖြစ် အမှန်တကယ် Chemical Digestion ပြုလုပ်ခြင်းကို Pancreas မှ ထုတ်လုပ်သော Enzyme ဖြစ်သည့် Lipase က ထို့နောက် ဆက်လက် ဆောင်ရွက်ပေးသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the effect of removing the gallbladder on bile release?",
            questionMy:
                "သည်းခြေအိတ် ဖယ်ရှားခံရခြင်း၏ Bile လွှတ်ခြင်းအပေါ် သက်ရောက်မှုကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Bile trickled in weaker and less concentrated instead of a strong burst timed with fatty meals",
              "The liver stopped producing bile completely",
              "Bile production doubled to compensate",
              "Bile became an enzyme instead of a physical emulsifier",
            ],
            optionsMy: [
              "အဆီပါအစားအစာနှင့် အချိန်ကိုက်၍ အားကောင်းသော စီးဆင်းမှုအစား Bile သည် အားနည်း၍ စူးစူးရှရှ မဖြစ်ဘဲ တရွှင့်ရွှင့် စီးဝင်လာခြင်း",
              "အသည်းသည် Bile ထုတ်လုပ်ခြင်းကို လုံးဝ ရပ်တန့်သွားခြင်း",
              "Bile ထုတ်လုပ်မှု နှစ်ဆ တိုးလာခြင်း",
              "Bile သည် ရုပ်ပိုင်းဆိုင်ရာ Emulsifier အစား Enzyme တစ်ခု ဖြစ်လာခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Without the gallbladder, bile is no longer stored and concentrated before release.",
              "Reread the sentence describing bile 'trickling' in rather than being released in a burst.",
            ],
            hintsMy: [
              "သည်းခြေအိတ် မရှိတော့သောကြောင့် Bile ကို မလွှတ်မီ သိုလှောင်၍ စူးရှစေခြင်း ရပ်တန့်သွားသည်။",
              "'ဖြင့် စီးဝင်' ဆိုသော Bile ၏ ဖော်ပြချက်ကို ပြန်ဖတ်ကြည့်ပါ၊ အားကောင်းစွာ လွှတ်ခြင်းမဟုတ်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did a weaker bile supply lead to slower fat digestion?",
            questionMy:
                "Bile ထောက်ပံ့မှု အားနည်းခြင်းက အဆီချေဖျက်မှု ပို၍ နှေးကွေးစေသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Fats were emulsified less effectively, giving lipase less surface area to work on",
              "The patient stopped eating fat entirely",
              "The pancreas stopped producing lipase",
              "The stomach absorbed the fat directly",
            ],
            optionsMy: [
              "အဆီများကို ထိရောက်စွာ Emulsify မလုပ်နိုင်တော့သဖြင့် Lipase အလုပ်လုပ်ရန် မျက်နှာပြင်ဧရိယာ နည်းလာခြင်း",
              "လူနာသည် အဆီစားသုံးမှု လုံးဝ ရပ်တန့်သွားခြင်း",
              "Pancreas က Lipase ထုတ်လုပ်ခြင်း ရပ်တန့်သွားခြင်း",
              "အစာအိမ်က အဆီကို တိုက်ရိုက် စုပ်ယူသွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Smaller fat droplets give lipase more surface area to act on -- fewer, larger droplets give less.",
              "Reread the sentence explaining bile's job in relation to lipase's surface area.",
            ],
            hintsMy: [
              "အဆီအစက်ငယ်များ ပိုများလျှင် Lipase အတွက် မျက်နှာပြင်ဧရိယာ ပိုများသည် -- အစက်ကြီးများ၊ အနည်းငယ်သာ ရှိလျှင် နည်းသည်။",
              "Lipase ၏ မျက်နှာပြင်ဧရိယာနှင့် ဆက်စပ်သော Bile ၏ တာဝန်ကို ရှင်းပြထားသည့် စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn: "According to paragraph 3, is bile itself an enzyme?",
            questionMy:
                "Bile ကိုယ်တိုင်သည် Enzyme တစ်ခု ဟုတ်/မဟုတ်ကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "No -- it physically emulsifies fat but does not chemically break any bonds",
              "Yes -- it chemically breaks down fat molecules",
              "Yes -- it is identical to lipase",
              "It depends on the temperature of the small intestine",
            ],
            optionsMy: [
              "မဟုတ်ပါ -- ၎င်းက အဆီကို ရုပ်ပိုင်းဆိုင်ရာ Emulsify လုပ်ပေးသော်လည်း ဓာတုအချိတ်အဆက် မည်သည့်တစ်ခုမျှ မချိုးဖျက်နိုင်ပါ",
              "ဟုတ်သည် -- ၎င်းက အဆီမော်လီကျူးများကို ဓာတုနည်းအားဖြင့် ချေဖျက်သည်",
              "ဟုတ်သည် -- ၎င်းသည် Lipase နှင့် အတူတူပင်ဖြစ်သည်",
              "သိမ်ငယ်အူ၏ အပူချိန်ပေါ် မူတည်သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "The doctor 'directly corrected this misunderstanding' -- reread her exact explanation.",
              "Lipase, not bile, carries out the actual chemical digestion of fat.",
            ],
            hintsMy: [
              "ဆရာဝန်က 'ဤအထင်မှားမှုကို တိုက်ရိုက် ပြင်ဆင်ပေးခဲ့သည်' -- ၎င်း၏ အတိအကျ ရှင်းလင်းချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အဆီ၏ အမှန်တကယ် Chemical Digestion ကို Bile မဟုတ်ဘဲ Lipase က ဆောင်ရွက်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What was the original cause of the patient needing their gallbladder removed?",
            questionMy:
                "လူနာသည် သည်းခြေအိတ် ဖယ်ရှားရန် လိုအပ်ခဲ့ခြင်း၏ မူလ အကြောင်းရင်းမှာ အဘယ်နည်း။",
            optionsEn: [
              "Gallstones",
              "A vitamin C deficiency",
              "A broken liver",
              "Too much fibre in the diet",
            ],
            optionsMy: [
              "သည်းခြေအိတ်ကျောက်",
              "Vitamin C ချို့တဲ့ခြင်း",
              "အသည်းပျက်စီးခြင်း",
              "အစားအစာတွင် Fibre အလွန်အကျွံ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first sentence of paragraph 1.",
              "This condition is a common reason for gallbladder removal surgery.",
            ],
            hintsMy: [
              "စာပိုဒ် ၁ ၏ ပထမဆုံး စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤအခြေအနေသည် သည်းခြေအိတ်ဖယ်ရှားခွဲစိတ်ခံရခြင်း၏ အများသုံး အကြောင်းရင်းတစ်ခု ဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w14-d5",
      dayNumber: 5,
      titleEn: "Week 14 Recap: Digestion",
      titleMy: "တစ်ဆယ့်လေးပတ် ပြန်လည်သုံးသပ်ခြင်း - အစာချေဖျက်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which organ produces bile?",
          questionMy: "မည်သည့်အင်္ဂါက Bile ထုတ်လုပ်ပေးသနည်း",
          optionsEn: ["Liver", "Pancreas", "Gallbladder", "Stomach"],
          optionsMy: ["အသည်း", "Pancreas", "သည်းခြေအိတ်", "အစာအိမ်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which of these correctly orders the five stages of the digestive process?",
          questionMy:
              "အောက်ပါတို့အနက် အစာချေဖျက်ခြင်းဖြစ်စဉ်၏ အဆင့်ငါးဆင့်ကို မှန်ကန်စွာ အစီအစဉ်ချထားသည့်အရာမှာ အဘယ်နည်း",
          optionsEn: [
            "Ingestion, digestion, absorption, assimilation, egestion",
            "Egestion, digestion, ingestion, absorption, assimilation",
            "Assimilation, ingestion, digestion, egestion, absorption",
            "Digestion, ingestion, egestion, absorption, assimilation",
          ],
          optionsMy: [
            "Ingestion, Digestion, Absorption, Assimilation, Egestion",
            "Egestion, Digestion, Ingestion, Absorption, Assimilation",
            "Assimilation, Ingestion, Digestion, Egestion, Absorption",
            "Digestion, Ingestion, Egestion, Absorption, Assimilation",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Bile's role in digestion is best described as...",
          questionMy:
              "အစာချေဖျက်ခြင်းတွင် Bile ၏ အခန်းကဏ္ဍကို အကောင်းဆုံး ဖော်ပြသည့်အရာမှာ...",
          optionsEn: [
            "Physically emulsifying fat into smaller droplets, without being an enzyme itself",
            "Chemically breaking fat into fatty acids and glycerol",
            "Digesting protein into amino acids",
            "Absorbing glucose into the blood",
          ],
          optionsMy: [
            "ကိုယ်တိုင် Enzyme မဟုတ်ဘဲ အဆီကို ရုပ်ပိုင်းဆိုင်ရာ အစက်ငယ်များအဖြစ် Emulsify လုပ်ပေးခြင်း",
            "အဆီကို Fatty Acid နှင့် Glycerol အဖြစ် ဓာတုနည်းအားဖြင့် ချေဖျက်ခြင်း",
            "ပရိုတင်းကို အမိုင်နိုအက်ဆစ်များအဖြစ် ချေဖျက်ခြင်း",
            "ဂလူးကို့စ်ကို သွေးထဲသို့ စုပ်ယူခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 15: "Transport in Flowering Plants"
// =====================================================================

const CourseWeekDef _igcseBioWeek15 = CourseWeekDef(
  id: "course-igcse-bio-w15",
  weekNumber: 15,
  titleEn: "Transport in Flowering Plants",
  titleMy: "ပန်းပွင့်သော အပင်များရှိ သယ်ယူပို့ဆောင်ရေး",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w15-d1",
      dayNumber: 1,
      titleEn: "Xylem and Phloem",
      titleMy: "Xylem နှင့် Phloem",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What does xylem tissue transport, and in which direction?",
          questionMy:
              "Xylem တစ်ရှူးက အဘယ်ကို၊ မည်သည့်ဦးတည်ချက်သို့ သယ်ဆောင်သနည်း။",
          optionsEn: [
            "Water and mineral ions, upward from the roots to the leaves",
            "Dissolved sugars, in any direction depending on need",
            "Oxygen, from the leaves to the roots only",
            "Digested food, from the stomach to the leaves",
          ],
          optionsMy: [
            "ရေနှင့် သတ္တု အိုင်းယွန်းများကို အမြစ်မှ အရွက်ဆီသို့ အထက်သို့",
            "ပျော်ဝင်ထားသော သကြားများကို လိုအပ်ချက်အရ ဦးတည်ချက် မည်သည်သို့မဆို",
            "အောက်ဆီဂျင်ကို အရွက်မှ အမြစ်သို့သာ",
            "ချေဖျက်ပြီး အစားအစာကို အစာအိမ်မှ အရွက်သို့",
          ],
          correctIndex: 0,
          hintsEn: [
            "Xylem always moves substances in one direction only: upward, from roots to leaves.",
            "This is the same water absorbed by root hair cells via osmosis.",
          ],
          hintsMy: [
            "Xylem သည် ပစ္စည်းများကို ဦးတည်ချက်တစ်ခုတည်းသာ ရွှေ့လျားစေသည်- အမြစ်မှ အရွက်ဆီသို့ အထက်ဘက်သို့သာ။",
            "ဤသည်မှာ အမြစ်ဆံပင်ဆဲလ်များက Osmosis ဖြင့် စုပ်ယူထားသော ရေတစ်မျိုးတည်းပင် ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which type of tissue transports dissolved food such as sucrose around the plant?",
          questionMy:
              "အပင်တစ်ဝန်း Sucrose ကဲ့သို့ ပျော်ဝင်ထားသော အစားအစာကို မည်သည့် တစ်ရှူးအမျိုးအစားက သယ်ဆောင်သနည်း။",
          optionsEn: ["Phloem", "Xylem", "Epidermis", "Cuticle"],
          optionsMy: ["Phloem", "Xylem", "Epidermis", "Cuticle"],
          correctIndex: 0,
          hintsEn: [
            "This process of transporting dissolved food around a plant is called translocation.",
            "Unlike xylem, this tissue can transport substances both up and down the plant.",
          ],
          hintsMy: [
            "အပင်တစ်ဝန်း ပျော်ဝင်ထားသော အစားအစာကို သယ်ဆောင်ခြင်း ဖြစ်စဉ်ကို Translocation ဟု ခေါ်သည်။",
            "Xylem နှင့် မတူဘဲ ဤတစ်ရှူးသည် အပင်၏ အထက်နှင့် အောက်နှစ်ဘက်စလုံးသို့ ပစ္စည်းများကို သယ်ဆောင်နိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these correctly describes a key structural difference between xylem and phloem?",
          questionMy:
              "Xylem နှင့် Phloem ကြား အဓိက ဖွဲ့စည်းပုံ ကွာခြားချက်ကို မှန်ကန်စွာ ဖော်ပြသည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Xylem is made of dead cells; phloem is made of living cells",
            "Xylem is made of living cells; phloem is made of dead cells",
            "Both are made of exactly the same type of cell",
            "Neither xylem nor phloem contains any cells",
          ],
          optionsMy: [
            "Xylem ကို ဆဲလ်သေများဖြင့် ဖွဲ့စည်းထားပြီး Phloem ကို ဆဲလ်အသက်ရှင်များဖြင့် ဖွဲ့စည်းထားသည်",
            "Xylem ကို ဆဲလ်အသက်ရှင်များဖြင့် ဖွဲ့စည်းထားပြီး Phloem ကို ဆဲလ်သေများဖြင့် ဖွဲ့စည်းထားသည်",
            "နှစ်ခုစလုံးကို ဆဲလ်အမျိုးအစား အတိအကျ တူညီသည်ဖြင့် ဖွဲ့စည်းထားသည်",
            "Xylem နှင့် Phloem နှစ်ခုစလုံးတွင် ဆဲလ် လုံးဝ မပါဝင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Xylem vessel cells die and lose their contents, leaving hollow tubes strengthened by lignin.",
            "Phloem cells stay alive, since transporting food is an active process requiring living cells.",
          ],
          hintsMy: [
            "Xylem Vessel ဆဲလ်များသည် သေဆုံးပြီး ၎င်းတို့၏ အတွင်းပါဝင်ပစ္စည်းများ ဆုံးရှုံးကာ Lignin ဖြင့် ခိုင်ခံ့စေသော လွတ်ပြွန်များကို ကျန်ရစ်စေသည်။",
            "အစားအစာသယ်ဆောင်ခြင်းသည် ဆဲလ်အသက်ရှင်များ လိုအပ်သော Active ဖြစ်စဉ်ဖြစ်သောကြောင့် Phloem ဆဲလ်များ အသက်ရှင်ဆဲ ကျန်ရှိသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w15-d2",
      dayNumber: 2,
      titleEn: "Match: Plant Transport Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - အပင် သယ်ယူပို့ဆောင်ရေး ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w15-dm-1",
          termEn: "Transpiration",
          termMy: "ရေငွေ့ပျံခြင်း (Transpiration)",
          matchEn:
              "The loss of water vapour from a plant's leaves, mainly through the stomata",
          matchMy:
              "အပင်၏ အရွက်များမှ ရေငွေ့ ဆုံးရှုံးခြင်း၊ အများဆုံးမှာ Stomata မှတစ်ဆင့်",
          colorValue: 0xFF03A9F4,
        ),
        DragMatchPair(
          id: "igcsebio-w15-dm-2",
          termEn: "Transpiration pull",
          termMy: "Transpiration Pull",
          matchEn:
              "The upward pull on water in the xylem, caused by water evaporating from leaf cells",
          matchMy:
              "အရွက်ဆဲလ်များမှ ရေငွေ့ပျံခြင်းကြောင့် Xylem အတွင်းရေကို အထက်သို့ ဆွဲငင်ပေးသည့် အားစု",
          colorValue: 0xFF00BCD4,
        ),
        DragMatchPair(
          id: "igcsebio-w15-dm-3",
          termEn: "Translocation",
          termMy: "Translocation",
          matchEn:
              "The movement of dissolved food (such as sucrose and amino acids) through phloem",
          matchMy:
              "Phloem မှတစ်ဆင့် ပျော်ဝင်ထားသော အစားအစာ (Sucrose နှင့် အမိုင်နိုအက်ဆစ်များကဲ့သို့) ရွေ့လျားခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w15-dm-4",
          termEn: "Lignin",
          termMy: "Lignin",
          matchEn:
              "A tough substance that strengthens and waterproofs the walls of xylem vessels",
          matchMy:
              "Xylem Vessel များ၏ နံရံကို ခိုင်ခံ့စေပြီး ရေခံအဖြစ် ပြောင်းလဲစေသော ခိုင်မာသော ပစ္စည်း",
          colorValue: 0xFF795548,
        ),
        DragMatchPair(
          id: "igcsebio-w15-dm-5",
          termEn: "Root hair cell",
          termMy: "အမြစ်ဆံပင်ဆဲလ်",
          matchEn:
              "The specialised cell that absorbs water by osmosis and mineral ions by active transport",
          matchMy:
              "Osmosis ဖြင့် ရေနှင့် Active Transport ဖြင့် သတ္တု အိုင်းယွန်းများကို စုပ်ယူသော အထူးပြုဆဲလ်",
          colorValue: 0xFF4CAF50,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w15-d3",
      dayNumber: 3,
      titleEn: "Sort: Xylem or Phloem?",
      titleMy: "စီစစ်ကြမည် - Xylem လား Phloem လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Function of Xylem", "Function of Phloem"],
        bucketsMy: ["Xylem ၏ လုပ်ဆောင်ချက်", "Phloem ၏ လုပ်ဆောင်ချက်"],
        items: [
          SortingItem(
            id: "igcsebio-w15-sort-1",
            labelEn: "Carrying water absorbed by the roots up to the leaves",
            labelMy: "အမြစ်များက စုပ်ယူထားသော ရေကို အရွက်များအထိ သယ်ဆောင်ခြင်း",
            correctBucketEn: "Function of Xylem",
            correctBucketMy: "Xylem ၏ လုပ်ဆောင်ချက်",
          ),
          SortingItem(
            id: "igcsebio-w15-sort-2",
            labelEn:
                "Carrying glucose made in the leaves down to the roots for storage",
            labelMy:
                "အရွက်တွင် ထုတ်လုပ်ထားသော ဂလူးကို့စ်ကို သိုလှောင်ရန် အမြစ်ဆီသို့ အောက်သို့ သယ်ဆောင်ခြင်း",
            correctBucketEn: "Function of Phloem",
            correctBucketMy: "Phloem ၏ လုပ်ဆောင်ချက်",
          ),
          SortingItem(
            id: "igcsebio-w15-sort-3",
            labelEn:
                "Transporting mineral ions absorbed by root hair cells up the plant",
            labelMy:
                "အမြစ်ဆံပင်ဆဲလ်များက စုပ်ယူထားသော သတ္တု အိုင်းယွန်းများကို အပင်တစ်လျှောက် သယ်ဆောင်ခြင်း",
            correctBucketEn: "Function of Xylem",
            correctBucketMy: "Xylem ၏ လုပ်ဆောင်ချက်",
          ),
          SortingItem(
            id: "igcsebio-w15-sort-4",
            labelEn:
                "Providing structural support to the stem through lignified cell walls",
            labelMy:
                "Lignin ပါဝင်သော ဆဲလ်နံရံများမှတစ်ဆင့် ပင်စည်ကို တည်ဆောက်ပုံအားဖြင့် ထောက်ပံ့ပေးခြင်း",
            correctBucketEn: "Function of Xylem",
            correctBucketMy: "Xylem ၏ လုပ်ဆောင်ချက်",
          ),
          SortingItem(
            id: "igcsebio-w15-sort-5",
            labelEn:
                "Moving sucrose from a leaf (source) to a growing fruit (sink)",
            labelMy:
                "Sucrose ကို အရွက် (Source) မှ ကြီးထွားနေသော အသီး (Sink) ဆီသို့ ရွှေ့လျားခြင်း",
            correctBucketEn: "Function of Phloem",
            correctBucketMy: "Phloem ၏ လုပ်ဆောင်ချက်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w15-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Lin Htut's Wilting Question",
      titleMy: "စာဖတ်ခြင်း - နေလင်းထွဋ်၏ ညှိုးနွမ်းမှု မေးခွန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Lin Htut's Wilting Question",
        titleMy: "နေလင်းထွဋ်၏ ညှိုးနွမ်းမှု မေးခွန်း",
        passageEn:
            "Nay Lin Htut noticed that the tomato plants in his family's garden wilted badly by early afternoon on hot, dry, windy days, but recovered fully once the sun set and the air cooled. Curious about why this happened, he brought the question to his Biology class, and his teacher used it to introduce transpiration and the transpiration pull that drives water movement through xylem.\n\nHis teacher explained that water constantly evaporates from the surface of the spongy mesophyll cells inside a leaf and escapes as vapour through open stomata -- a process called transpiration. As each water molecule evaporates and leaves the leaf, it pulls the next water molecule in the xylem up behind it, since water molecules cling together tightly (a property called cohesion). This continuous chain of pulling, called the transpiration pull, is what draws water all the way up from the roots to the very top of the plant.\n\nOn hot, dry, windy afternoons, several factors combine to speed up transpiration dramatically: higher temperature gives water molecules more energy to evaporate, low humidity in dry air creates a steeper concentration gradient for water vapour to diffuse out of the stomata, and wind carries evaporated water vapour away from the leaf surface quickly, maintaining that steep gradient. When transpiration happens faster than the roots can absorb replacement water from the soil, the plant loses water faster than it gains it, and the cells lose turgor pressure, causing the leaves and stems to wilt -- exactly what Nay Lin Htut observed, and exactly why the tomato plants recovered once cooler, calmer, more humid evening conditions slowed transpiration back down to match the rate of water uptake.",
        passageMy:
            "နေလင်းထွဋ်သည် သူ၏ မိသားစု ဥယျာဉ်ရှိ ခရမ်းချဉ်သီးပင်များသည် နေပူပြင်း၍ ခြောက်သွေ့ လေတိုက်နေသော ရက်များတွင် နေ့လည်စောင်းအချိန်ကျရင် သိသိသာသာ ညှိုးနွမ်းသွားပြီး နေဝင်၍ လေအေးလာမှသာ လုံးလုံးပြန်ပြေးလန်းသွားကြောင်း သတိပြုမိခဲ့သည်။ ဤအဖြစ် ဖြစ်ရသည့် အကြောင်းရင်းကို စိတ်ဝင်စားသဖြင့် ၎င်းသည် ဇီဝဗေဒ အတန်းတွင် မေးခွန်းကို ယူဆောင်လာခဲ့ပြီး၊ သူ၏ ဆရာမက ဤမေးခွန်းကို Transpiration နှင့် Xylem မှတစ်ဆင့် ရေကို ရွှေ့လျားစေသော Transpiration Pull ကို မိတ်ဆက်ရန် အသုံးချခဲ့သည်။\n\nအရွက်အတွင်းရှိ Spongy Mesophyll ဆဲလ်များ၏ မျက်နှာပြင်မှ ရေသည် စဉ်ဆက်မပြတ် ရေငွေ့ပျံပြီး Stomata ဖွင့်ထားသောနေရာမှ ရေငွေ့အဖြစ် ထွက်ခွာသွားခြင်း -- ဤဖြစ်စဉ်ကို Transpiration ဟု ခေါ်သည်ဟု သူ၏ ဆရာမက ရှင်းပြခဲ့သည်။ ရေမော်လီကျူးတစ်ခုစီ ရေငွေ့ပျံပြီး အရွက်မှ ထွက်ခွာသွားသည်နှင့်အမျှ ၎င်းသည် Xylem အတွင်းရှိ နောက်ရေမော်လီကျူးကို နောက်မှလိုက်၍ အထက်သို့ ဆွဲငင်စေသည်၊ ရေမော်လီကျူးများသည် တစ်ခုနှင့်တစ်ခု ခိုင်ခိုင်မာမာ ကပ်ငြိနေခြင်း (Cohesion ဟု ခေါ်သော ဂုဏ်သတ္တိ) ကြောင့် ဖြစ်သည်။ Transpiration Pull ဟု ခေါ်သော ဤစဉ်ဆက်မပြတ် ဆွဲငင်မှု ကွင်းဆက်သည် အမြစ်များမှ အပင်၏ အထွတ်အထိပ်အထိ ရေကို ဆွဲယူပေးသည့် အရာဖြစ်သည်။\n\nနေပူပြင်း၍ ခြောက်သွေ့ လေတိုက်နေသော နေ့လည်စောင်းများတွင် အကြောင်းရင်းများစွာ ပေါင်းစပ်၍ Transpiration ကို သိသိသာသာ မြန်ဆန်စေသည်- အပူချိန်မြင့်ခြင်းက ရေမော်လီကျူးများကို ရေငွေ့ပျံရန် စွမ်းအင် ပိုများပေးသည်၊ ခြောက်သွေ့သော လေ၏ စိုထိုင်းဆနည်းခြင်းက ရေငွေ့ Stomata မှ Diffuse ထွက်ရန် ပိုကျစ်သော သိပ်သည်းဆကွာဟမှု ဖန်တီးပေးသည်၊ လေတိုက်ခြင်းက ရေငွေ့ကို အရွက်မျက်နှာပြင်မှ လျင်မြန်စွာ သယ်ဆောင်ဖယ်ရှားပေးပြီး ထိုကျစ်သော ကွာဟမှုကို ဆက်လက် ထိန်းသိမ်းပေးသည်။ Transpiration သည် အမြစ်များက မြေဆီလွှာမှ အစားထိုးရေကို စုပ်ယူနိုင်သည်ထက် ပိုမြန်ဖြစ်လာသောအခါ အပင်သည် ရေရရှိသည်ထက် ရေဆုံးရှုံးမှု ပိုများလာပြီး ဆဲလ်များ Turgor Pressure ဆုံးရှုံးကာ အရွက်များနှင့် ပင်စည်များ ညှိုးနွမ်းသွားစေသည် -- ၎င်းသည် နေလင်းထွဋ် တွေ့ရှိခဲ့ခြင်းနှင့် အတိအကျ ကိုက်ညီပြီး၊ ညနေချမ်း၍ လေလှိုင်းမရှိသော၊ စိုထိုင်းဆပိုများသော ညပိုင်းအခြေအနေများတွင် Transpiration ရေစုပ်ယူမှုနှုန်းနှင့် ကိုက်ညီအောင် ပြန်လည်နှေးကွေးလာသောကြောင့် ခရမ်းချဉ်သီးပင်များ ပြန်လန်းသွားခြင်းအတွက် အကြောင်းရင်း အတိအကျ ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what causes the transpiration pull that draws water up the xylem?",
            questionMy:
                "Xylem အတွင်း ရေကို အထက်သို့ ဆွဲယူပေးသော Transpiration Pull ၏ အကြောင်းရင်းမှာ အဘယ်နည်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "As water evaporates from the leaf, it pulls the next water molecule up behind it due to cohesion",
              "The roots push water upward using active transport",
              "Gravity pulls water molecules upward",
              "Sunlight directly pushes water through the xylem",
            ],
            optionsMy: [
              "အရွက်မှ ရေငွေ့ပျံသောအခါ ရေမော်လီကျူးများ တစ်ခုနှင့်တစ်ခု ကပ်ငြိနေခြင်း (Cohesion) ကြောင့် နောက်ရေမော်လီကျူးကို အထက်သို့ ဆွဲငင်ပေးခြင်း",
              "အမြစ်များက Active Transport သုံး၍ ရေကို အထက်သို့ တွန်းပေးခြင်း",
              "ဆွဲငင်အား (Gravity) က ရေမော်လီကျူးများကို အထက်သို့ ဆွဲငင်ခြင်း",
              "နေရောင်က Xylem ထဲမှ ရေကို တိုက်ရိုက် တွန်းပေးခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is described as a continuous chain of pulling, caused by cohesion between water molecules.",
              "Evaporation from the leaf is the starting point of this chain reaction.",
            ],
            hintsMy: [
              "ဤသည်ကို ရေမော်လီကျူးများကြား Cohesion ကြောင့် ဖြစ်ပေါ်သော စဉ်ဆက်မပြတ် ဆွဲငင်မှု ကွင်းဆက်ဟု ဖော်ပြထားသည်။",
              "အရွက်မှ ရေငွေ့ပျံခြင်းသည် ဤကွင်းဆက် ဓာတုတုံ့ပြန်မှု၏ အစဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, which three factors combine to speed up transpiration on hot, dry, windy days?",
            questionMy:
                "နေပူပြင်း၍ ခြောက်သွေ့ လေတိုက်နေသော ရက်များတွင် Transpiration ကို မြန်ဆန်စေသော အချက်သုံးမျိုးကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "High temperature, low humidity, and wind",
              "Low temperature, high humidity, and stillness",
              "Only wind speed matters",
              "Soil type, root depth, and leaf colour",
            ],
            optionsMy: [
              "အပူချိန်မြင့်ခြင်း၊ စိုထိုင်းဆနိမ့်ခြင်းနှင့် လေတိုက်ခြင်း",
              "အပူချိန်နိမ့်ခြင်း၊ စိုထိုင်းဆမြင့်ခြင်းနှင့် လေငြိမ်ခြင်း",
              "လေတိုက်နှုန်းတစ်ခုတည်းသာ အရေးကြီးခြင်း",
              "မြေဆီလွှာအမျိုးအစား၊ အမြစ်နက်နှုန်းနှင့် အရွက်အရောင်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the three factors listed at the start of paragraph 3.",
              "These are the same factors always tested in transpiration rate experiments.",
            ],
            hintsMy: [
              "စာပိုဒ် ၃ ၏ အစတွင် ဖော်ပြထားသော အကြောင်းရင်းသုံးမျိုးကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤအချက်များသည် Transpiration နှုန်းစမ်းသပ်မှုများတွင် အမြဲစစ်ဆေးလေ့ရှိသော အကြောင်းရင်းများပင် ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why do the tomato plants wilt in the afternoon?",
            questionMy:
                "ခရမ်းချဉ်သီးပင်များ နေ့လည်စောင်းတွင် ညှိုးနွမ်းသွားရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Transpiration outpaces water absorption by the roots, so cells lose turgor pressure",
              "The soil becomes too cold",
              "The plant stops photosynthesising entirely",
              "The roots absorb too much water too quickly",
            ],
            optionsMy: [
              "Transpiration သည် အမြစ်များ၏ ရေစုပ်ယူမှုထက် ပိုမြန်လာသဖြင့် ဆဲလ်များ Turgor Pressure ဆုံးရှုံးခြင်း",
              "မြေဆီလွှာ အလွန်အေးလာခြင်း",
              "အပင်သည် Photosynthesis လုံးဝ ရပ်တန့်သွားခြင်း",
              "အမြစ်များက ရေကို အလွန်များစွာ လျင်မြန်စွာ စုပ်ယူသွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Wilting happens when water loss exceeds water gain -- reread the final sentence about turgor pressure.",
              "This is the same turgor concept from the osmosis week -- cells need water pressure to stay firm.",
            ],
            hintsMy: [
              "ရေဆုံးရှုံးမှုသည် ရေရရှိမှုထက် ပိုများသောအခါ ညှိုးနွမ်းသွားသည် -- Turgor Pressure အကြောင်း နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ Osmosis ပတ်ကတည်းက Turgor သဘောတရားတစ်ခုတည်းပင်ဖြစ်သည် -- ဆဲလ်များ မာကျောနေရန် ရေဖိအား လိုအပ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did the plants recover once evening came, according to the passage?",
            questionMy:
                "ညနေကျသောအခါ အပင်များ အဘယ်ကြောင့် ပြန်လန်းသွားခဲ့သည်ကို စာပိုဒ်အရ ဖော်ပြပါ။",
            optionsEn: [
              "Cooler, calmer, more humid conditions slowed transpiration to match water uptake",
              "The plants stopped needing water",
              "The stomata closed permanently",
              "New roots grew overnight",
            ],
            optionsMy: [
              "ချမ်းအေး၍ လေလှိုင်းငြိမ်သက်ပြီး စိုထိုင်းဆပိုများသော အခြေအနေများက Transpiration ကို ရေစုပ်ယူမှုနှုန်းနှင့် ကိုက်ညီအောင် နှေးကွေးစေခြင်း",
              "အပင်များ ရေလိုအပ်ခြင်း ရပ်တန့်သွားခြင်း",
              "Stomata များ အမြဲတမ်း ပိတ်သွားခြင်း",
              "တစ်ညချင်းတွင် အမြစ်အသစ်များ ပေါက်လာခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final clause of the passage explaining the recovery.",
              "This is the reverse of the three factors that sped up transpiration.",
            ],
            hintsMy: [
              "ပြန်လန်းလာခြင်းကို ရှင်းပြသော စာပိုဒ်၏ နောက်ဆုံးအပိုင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ Transpiration ကို မြန်ဆန်စေခဲ့သော အကြောင်းရင်းသုံးမျိုး၏ ပြောင်းပြန် ဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w15-d5",
      dayNumber: 5,
      titleEn: "Week 15 Recap: Transport in Plants",
      titleMy:
          "တစ်ဆယ့်ငါးပတ် ပြန်လည်သုံးသပ်ခြင်း - အပင်များရှိ သယ်ယူပို့ဆောင်ရေး",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Xylem transports water and mineral ions in which direction?",
          questionMy:
              "Xylem က ရေနှင့် သတ္တု အိုင်းယွန်းများကို မည်သည့်ဦးတည်ချက်သို့ သယ်ဆောင်သနည်း",
          optionsEn: [
            "Upward only, from roots to leaves",
            "Downward only",
            "Both directions equally",
            "Sideways only",
          ],
          optionsMy: [
            "အထက်သို့သာ၊ အမြစ်မှ အရွက်ဆီသို့",
            "အောက်သို့သာ",
            "ဦးတည်ချက် နှစ်ခုစလုံး တူညီစွာ",
            "ဘေးတိုက်သို့သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which factor would you expect to INCREASE the rate of transpiration?",
          questionMy:
              "Transpiration နှုန်းကို တိုးမြှင့်ပေးမည်ဟု ခန့်မှန်းရမည့် အကြောင်းရင်းမှာ အဘယ်နည်း",
          optionsEn: [
            "Strong wind and high temperature",
            "High humidity and no wind",
            "Low temperature and closed stomata",
            "Cloudy, cool, still air",
          ],
          optionsMy: [
            "လေပြင်းနှင့် အပူချိန်မြင့်ခြင်း",
            "စိုထိုင်းဆမြင့်ပြီး လေမတိုက်ခြင်း",
            "အပူချိန်နိမ့်ပြီး Stomata ပိတ်ခြင်း",
            "တိမ်ထူ၍ အေးချမ်း လေငြိမ်သက်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The movement of sugars through phloem is called...",
          questionMy:
              "Phloem မှတစ်ဆင့် သကြားများ ရွေ့လျားခြင်းကို ဘာဟု ခေါ်သနည်း",
          optionsEn: [
            "Translocation",
            "Transpiration",
            "Digestion",
            "Diffusion only",
          ],
          optionsMy: [
            "Translocation",
            "Transpiration",
            "Digestion",
            "Diffusion တစ်ခုတည်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 16 (Capstone): "Physiology Practical Studio"
// =====================================================================

const CourseWeekDef _igcseBioWeek16 = CourseWeekDef(
  id: "course-igcse-bio-w16",
  weekNumber: 16,
  titleEn: "Physiology Practical Studio",
  titleMy: "ဇီဝကမ္မဗေဒ လက်တွေ့စမ်းသပ်မှု အလုပ်ရုံ",
  xpReward: 20,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w16-d1",
      dayNumber: 1,
      titleEn: "Measuring Transpiration with a Potometer",
      titleMy: "Potometer ဖြင့် Transpiration တိုင်းတာခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does a potometer actually measure directly?",
          questionMy:
              "Potometer တစ်လုံးက အမှန်တကယ် တိုက်ရိုက် အဘယ်ကို တိုင်းတာသနည်း။",
          optionsEn: [
            "The rate of water uptake by a cut shoot, used as an estimate of transpiration rate",
            "The exact number of stomata on a leaf",
            "The amount of chlorophyll in a leaf",
            "The exact volume of oxygen released by photosynthesis",
          ],
          optionsMy: [
            "ဖြတ်ယူထားသော ပင်စည်တစ်ခု၏ ရေစုပ်ယူနှုန်း၊ Transpiration နှုန်းကို ခန့်မှန်းရန် အသုံးပြုသည်",
            "အရွက်တစ်ချပ်ပေါ်ရှိ Stomata အရေအတွက် အတိအကျ",
            "အရွက်တစ်ချပ်တွင် ပါဝင်သော Chlorophyll ပမာဏ",
            "Photosynthesis မှ ထွက်ရှိသော အောက်ဆီဂျင် အတိအကျပမာဏ",
          ],
          correctIndex: 0,
          hintsEn: [
            "A potometer tracks the movement of an air bubble along a scale in a capillary tube.",
            "Water uptake is used as an estimate because most of the water taken up is lost through transpiration.",
          ],
          hintsMy: [
            "Potometer တစ်လုံးသည် Capillary Tube ရှိ စကေးတစ်လျှောက် လေပူဖောင်းတစ်ခု၏ ရွေ့လျားမှုကို ခြေရာခံသည်။",
            "စုပ်ယူထားသော ရေအများစုကို Transpiration ဖြင့် ဆုံးရှုံးသောကြောင့် ရေစုပ်ယူမှုကို ခန့်မှန်းချက်အဖြစ် အသုံးပြုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a potometer experiment, moving an air bubble faster along the scale over the same time period would suggest...",
          questionMy:
              "Potometer စမ်းသပ်မှုတွင် အချိန်တူတူ၌ လေပူဖောင်းသည် စကေးတစ်လျှောက် ပိုမြန်စွာ ရွေ့လျားခြင်းက အဘယ်ကို အကြံပြုသနည်း။",
          optionsEn: [
            "A higher rate of transpiration",
            "A lower rate of transpiration",
            "The plant has died",
            "No relationship to transpiration at all",
          ],
          optionsMy: [
            "Transpiration နှုန်း ပိုမြင့်ခြင်း",
            "Transpiration နှုန်း ပိုနိမ့်ခြင်း",
            "အပင် သေဆုံးသွားခြင်း",
            "Transpiration နှင့် လုံးဝ မသက်ဆိုင်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Faster water uptake by the shoot corresponds to faster water loss through the leaves.",
            "More transpiration means more water needs to be replaced, so more is drawn in.",
          ],
          hintsMy: [
            "ပင်စည်၏ ပိုမြန်သော ရေစုပ်ယူမှုသည် အရွက်များမှတစ်ဆင့် ပိုမြန်သော ရေဆုံးရှုံးမှုနှင့် ကိုက်ညီသည်။",
            "Transpiration ပိုများလျှင် အစားထိုးရန် ရေပို၍ လိုအပ်သဖြင့် ပို၍ စုပ်ယူသွင်းသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why would a researcher repeat a potometer experiment at three different wind speeds using a fan?",
          questionMy:
              "သုတေသီတစ်ဦးသည် ပန်ကာသုံး၍ လေတိုက်နှုန်း သုံးမျိုးဖြင့် Potometer စမ်းသပ်မှုကို အဘယ်ကြောင့် ထပ်ခါထပ်ခါ ပြုလုပ်သနည်း။",
          optionsEn: [
            "To investigate wind speed as an independent variable affecting transpiration rate",
            "Because the potometer only works with wind",
            "To cool the plant down before starting",
            "Wind has no effect on transpiration so this is unnecessary",
          ],
          optionsMy: [
            "Transpiration နှုန်းကို သက်ရောက်စေသော Independent Variable အဖြစ် လေတိုက်နှုန်းကို စူးစမ်းရန်",
            "Potometer သည် လေတိုက်မှသာ အလုပ်လုပ်သောကြောင့်",
            "မစတင်မီ အပင်ကို အေးအောင်လုပ်ရန်",
            "လေတိုက်ခြင်းသည် Transpiration အပေါ် သက်ရောက်မှု လုံးဝမရှိသဖြင့် မလိုအပ်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Wind is one of the environmental factors known to affect transpiration rate.",
            "Testing multiple values of one variable, keeping others constant, is standard experimental design.",
          ],
          hintsMy: [
            "လေတိုက်ခြင်းသည် Transpiration နှုန်းကို သက်ရောက်ကြောင်း သိရှိထားသော ပတ်ဝန်းကျင်ဆိုင်ရာ အကြောင်းရင်းတစ်ခု ဖြစ်သည်။",
            "အခြားအချက်များကို ခိုင်မာစွာ ထားရှိပြီး Variable တစ်ခု၏ တန်ဖိုးများစွာကို စမ်းသပ်ခြင်းသည် စံ စမ်းသပ်မှု ဒီဇိုင်း ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w16-d2",
      dayNumber: 2,
      titleEn: "Match: Practical Apparatus Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - လက်တွေ့ ကိရိယာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w16-dm-1",
          termEn: "Potometer",
          termMy: "Potometer",
          matchEn:
              "Apparatus that measures the rate of water uptake by a shoot as an estimate of transpiration rate",
          matchMy:
              "Transpiration နှုန်းကို ခန့်မှန်းရန် ပင်စည်တစ်ခု၏ ရေစုပ်ယူနှုန်းကို တိုင်းတာသော ကိရိယာ",
          colorValue: 0xFF03A9F4,
        ),
        DragMatchPair(
          id: "igcsebio-w16-dm-2",
          termEn: "Visking tubing",
          termMy: "Visking Tubing",
          matchEn:
              "A partially permeable artificial membrane used to model how the gut wall selectively absorbs small molecules",
          matchMy:
              "အူလမ်းကြောင်းနံရံက မော်လီကျူးငယ်များကို ရွေးချယ်စုပ်ယူပုံကို ပုံစံတူပြရန် သုံးသော အစိတ်ပိုင်းစိမ့်ဝင်နိုင်သည့် ဆင်းသေးသော အမြှေးပါး",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w16-dm-3",
          termEn: "Air bubble",
          termMy: "လေပူဖောင်း",
          matchEn:
              "The marker whose movement along a potometer's scale is timed to calculate the rate of water uptake",
          matchMy:
              "Potometer စကေးတစ်လျှောက် ၎င်း၏ ရွေ့လျားမှုကို ချိန်ယူပြီး ရေစုပ်ယူနှုန်း တွက်ချက်ရန် အမှတ်အသား",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w16-dm-4",
          termEn: "Independent variable",
          termMy: "Independent Variable",
          matchEn:
              "The one factor deliberately changed in an experiment, e.g. wind speed or light intensity",
          matchMy:
              "စမ်းသပ်မှုတစ်ခုတွင် တမင်တကာ ပြောင်းလဲသော အချက်တစ်ခု၊ ဥပမာ လေတိုက်နှုန်း သို့မဟုတ် Light Intensity",
          colorValue: 0xFFFF9800,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w16-d3",
      dayNumber: 3,
      titleEn: "Sort: Transpiration Experiment or Digestion Experiment?",
      titleMy:
          "စီစစ်ကြမည် - Transpiration စမ်းသပ်မှုလား Digestion စမ်းသပ်မှုလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Transpiration Experiment",
          "Digestion Simulation Experiment",
        ],
        bucketsMy: [
          "Transpiration စမ်းသပ်မှု",
          "Digestion Simulation စမ်းသပ်မှု",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w16-sort-1",
            labelEn:
                "Using a potometer to measure how fast a shoot takes up water in strong wind",
            labelMy:
                "လေပြင်းတွင် ပင်စည်တစ်ခု ရေစုပ်ယူနှုန်း မည်မျှမြန်ကြောင်း Potometer သုံး၍ တိုင်းတာခြင်း",
            correctBucketEn: "Transpiration Experiment",
            correctBucketMy: "Transpiration စမ်းသပ်မှု",
          ),
          SortingItem(
            id: "igcsebio-w16-sort-2",
            labelEn:
                "Placing starch and glucose solution inside visking tubing and testing the water outside for each substance",
            labelMy:
                "Starch နှင့် ဂလူးကို့စ်ရည်ကို Visking Tubing ထဲသို့ ထည့်ပြီး အပြင်ဘက်ရေကို ပစ္စည်းတစ်ခုစီအတွက် စမ်းသပ်ခြင်း",
            correctBucketEn: "Digestion Simulation Experiment",
            correctBucketMy: "Digestion Simulation စမ်းသပ်မှု",
          ),
          SortingItem(
            id: "igcsebio-w16-sort-3",
            labelEn:
                "Comparing water uptake rate in bright light versus darkness",
            labelMy:
                "အလင်းထွန်းလင်းရာနှင့် အမှောင်ထဲတွင် ရေစုပ်ယူနှုန်းကို နှိုင်းယှဉ်ခြင်း",
            correctBucketEn: "Transpiration Experiment",
            correctBucketMy: "Transpiration စမ်းသပ်မှု",
          ),
          SortingItem(
            id: "igcsebio-w16-sort-4",
            labelEn:
                "Testing whether glucose passes through an artificial membrane but starch does not",
            labelMy:
                "ဂလူးကို့စ်သည် ဆင်းသေး အမြှေးပါးတစ်ခုကို ဖြတ်နိုင်သော်လည်း Starch မဖြတ်နိုင်ကြောင်း စမ်းသပ်ခြင်း",
            correctBucketEn: "Digestion Simulation Experiment",
            correctBucketMy: "Digestion Simulation စမ်းသပ်မှု",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w16-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Latt's Visking Tubing Model",
      titleMy: "စာဖတ်ခြင်း - စုလတ်၏ Visking Tubing ပုံစံတူ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Latt's Visking Tubing Model",
        titleMy: "စုလတ်၏ Visking Tubing ပုံစံတူ",
        passageEn:
            "Su Latt's teacher explained that the wall of the small intestine, with its tiny finger-like villi, acts like a selective gatekeeper: small digested molecules such as glucose can pass through into the blood, but large, undigested molecules like starch cannot. To model this in the lab, her group filled a length of visking tubing -- a partially permeable artificial membrane -- with a mixture of starch solution and glucose solution, tied both ends, and rinsed the outside carefully before placing it in a beaker of plain water.\n\nAfter thirty minutes, Su Latt's group tested the water in the beaker with two separate samples: one tested with iodine solution, and one tested with Benedict's solution after heating. The iodine test stayed orange-brown, showing no starch had escaped into the surrounding water. The Benedict's test, however, turned brick-red after heating, showing that glucose had diffused out of the tubing into the water.\n\nSu Latt's group concluded that the visking tubing's pores were large enough to let small glucose molecules diffuse through by simple diffusion, down their concentration gradient, but too small to let the much larger starch molecules pass through at all. Her teacher confirmed this was an accurate model of digestion and absorption: just as the visking tubing let glucose through but blocked starch, the wall of the small intestine (and the villi lining it) only absorbs food that has already been chemically digested into small enough molecules -- which is exactly why the body needs enzymes to break large molecules like starch down into glucose before absorption can happen at all.",
        passageMy:
            "သိမ်ငယ်အူ၏ နံရံသည် ၎င်း၏ လက်ချောင်းလေးကဲ့သို့ Villi များနှင့်အတူ ရွေးချယ်ကာကွယ်သူတစ်ဦးကဲ့သို့ လုပ်ဆောင်ကြောင်း- ဂလူးကို့စ်ကဲ့သို့ ချေဖျက်ပြီး မော်လီကျူးငယ်များသည် သွေးထဲသို့ ဖြတ်သန်းနိုင်သော်လည်း Starch ကဲ့သို့ ကြီးမားပြီး မချေဖျက်ရသေးသော မော်လီကျူးများ မဖြတ်နိုင်ကြောင်း သူမ၏ ဆရာမက ရှင်းပြခဲ့သည်။ ဤအရာကို ဓာတ်ခွဲခန်းတွင် ပုံစံတူပြရန် သူမ၏ အုပ်စုက Visking Tubing -- အစိတ်ပိုင်းစိမ့်ဝင်နိုင်သည့် ဆင်းသေးသော အမြှေးပါး -- ကို Starch ရည်နှင့် ဂလူးကို့စ်ရည် ရောစပ်ထားသော ပစ္စည်းဖြင့် ဖြည့်ပြီး၊ အစွန်းနှစ်ဖက်လုံးကို ချည်နှောင်ကာ အပြင်ဘက်ကို ဂရုတစိုက် ဆေးကြောပြီးနောက် ရေရိုးရိုးထည့်ထားသော ဖန်ခွက်ထဲသို့ ချထားခဲ့သည်။\n\nမိနစ် ၃၀ ကြာပြီးနောက် စုလတ်၏ အုပ်စုက ဖန်ခွက်ထဲရှိ ရေကို နမူနာသီးခြားနှစ်ခုဖြင့် စမ်းသပ်ခဲ့သည်- တစ်ခုကို Iodine Solution ဖြင့် စမ်းသပ်ပြီး၊ နောက်တစ်ခုကို အပူပေးပြီးနောက် Benedict's Solution ဖြင့် စမ်းသပ်ခဲ့သည်။ Iodine Test သည် လိမ္မော်-အညိုရောင်အတိုင်း ဆက်ရှိနေခဲ့ပြီး Starch သည် ပတ်ဝန်းကျင်ရေထဲသို့ လွတ်ထွက်မသွားခဲ့ကြောင်း ပြသခဲ့သည်။ သို့သော် Benedict's Test မူ အပူပေးပြီးနောက် အုတ်ရောင်သို့ ပြောင်းလဲသွားကာ ဂလူးကို့စ်သည် Tubing ထဲမှ ရေထဲသို့ Diffuse ထွက်ခဲ့ကြောင်း ပြသခဲ့သည်။\n\nစုလတ်၏ အုပ်စုက Visking Tubing ၏ အပေါက်များသည် ဂလူးကို့စ် မော်လီကျူးငယ်များ ၎င်းတို့၏ သိပ်သည်းဆကွာဟမှု အတိုင်း Simple Diffusion ဖြင့် Diffuse ထွက်ရန် လုံလောက်စွာ ကြီးသော်လည်း Starch မော်လီကျူးများ ပို၍ ကြီးမားသဖြင့် လုံးဝ မဖြတ်နိုင်လောက်အောင် သေးငယ်ကြောင်း ကောက်ချက်ချခဲ့သည်။ သူမ၏ ဆရာမက ဤသည်ကို Digestion နှင့် Absorption ၏ တိကျသော ပုံစံတူတစ်ခုဟု အတည်ပြုပေးခဲ့သည်- Visking Tubing က ဂလူးကို့စ်ကို ဖြတ်ခွင့်ပြု၍ Starch ကို တားဆီးသကဲ့သို့ပင်၊ သိမ်ငယ်အူ၏ နံရံ (နှင့် ၎င်းကို အလွှာခံထားသော Villi) သည် ဓာတုနည်းအားဖြင့် ချေဖျက်ပြီးသား လုံလောက်အောင် သေးငယ်သော မော်လီကျူးများကိုသာ စုပ်ယူသည် -- ၎င်းသည် Starch ကဲ့သို့ ကြီးမားသော မော်လီကျူးများကို ဂလူးကို့စ်အဖြစ် ချေဖျက်ရန် ခန္ဓာကိုယ်တွင် Enzyme များ လိုအပ်ကြောင်း၊ သို့မှသာ Absorption လုံးဝ ဖြစ်ပေါ်နိုင်ကြောင်း အတိအကျ အကြောင်းရင်းပင် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what did the iodine test on the beaker water show?",
            questionMy:
                "ဖန်ခွက်ရေ၏ Iodine Test ရလဒ်က အဘယ်ကို ပြသခဲ့ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "No starch had escaped the tubing",
              "A large amount of starch had escaped",
              "Glucose had escaped",
              "The water was contaminated",
            ],
            optionsMy: [
              "Starch သည် Tubing မှ လွတ်ထွက်မသွားခဲ့ကြောင်း",
              "Starch များစွာ လွတ်ထွက်သွားခဲ့ကြောင်း",
              "ဂလူးကို့စ် လွတ်ထွက်သွားခဲ့ကြောင်း",
              "ရေသည် ညစ်ညမ်းနေခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "No colour change with iodine is a negative result -- no starch present.",
              "This is the same food-test logic used since Term 2.",
            ],
            hintsMy: [
              "Iodine တွင် အရောင်ပြောင်းလဲမှု မရှိခြင်းသည် Negative ရလဒ်ဖြစ်သည် -- Starch မရှိပါ။",
              "ဤသည်မှာ ဒုတိယနှစ်ဝက်ကတည်းက သုံးခဲ့သည့် အစားအစာစမ်းသပ်မှု ယုတ္တိတစ်ခုတည်းပင် ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why could glucose pass through the visking tubing but starch could not?",
            questionMy:
                "ဂလူးကို့စ်သည် Visking Tubing ကို ဖြတ်နိုင်သော်လည်း Starch ဖြတ်မရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Glucose molecules are small enough to fit through the pores, but starch molecules are too large",
              "Glucose is heavier than starch",
              "Starch dissolves faster than glucose",
              "The tubing was damaged on one side only",
            ],
            optionsMy: [
              "ဂလူးကို့စ် မော်လီကျူးများသည် အပေါက်များကို ဖြတ်နိုင်လောက်အောင် သေးငယ်သော်လည်း Starch မော်လီကျူးများ ကြီးလွန်းသောကြောင့်",
              "ဂလူးကို့စ်သည် Starch ထက် ပိုလေးသောကြောင့်",
              "Starch သည် ဂလူးကို့စ်ထက် ပိုမြန်စွာ ပျော်ဝင်သောကြောင့်",
              "Tubing တစ်ဖက်တွင်သာ ပျက်စီးနေသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the conclusion about pore size relative to molecule size.",
              "This is a difference in molecule size, not weight or dissolving speed.",
            ],
            hintsMy: [
              "အပေါက်အရွယ်အစားနှင့် မော်လီကျူးအရွယ်အစားဆိုင်ရာ ကောက်ချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ မော်လီကျူးအရွယ်အစား ကွာခြားမှုတစ်ခု ဖြစ်ပြီး အလေးချိန် သို့မဟုတ် ပျော်ဝင်နှုန်း မဟုတ်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what does the visking tubing model represent in the real digestive system?",
            questionMy:
                "Visking Tubing ပုံစံတူသည် အမှန်တကယ် အစာချေဖျက်ခြင်းစနစ်တွင် အဘယ်ကို ကိုယ်စားပြုကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The wall of the small intestine and its villi",
              "The stomach lining only",
              "The liver",
              "The mouth",
            ],
            optionsMy: [
              "သိမ်ငယ်အူ၏ နံရံနှင့် ၎င်း၏ Villi",
              "အစာအိမ် အလွှာသာ",
              "အသည်း",
              "ခံတွင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence directly comparing the tubing to a real body structure.",
              "This is the structure responsible for absorption in the real digestive system.",
            ],
            hintsMy: [
              "Tubing ကို ခန္ဓာကိုယ်ဆိုင်ရာ ဖွဲ့စည်းပုံအစစ်နှင့် တိုက်ရိုက် နှိုင်းယှဉ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤဖွဲ့စည်းပုံသည် အမှန်တကယ် အစာချေဖျက်ခြင်းစနစ်တွင် Absorption အတွက် တာဝန်ရှိသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why does the passage say the body needs enzymes before absorption can happen?",
            questionMy:
                "Absorption မဖြစ်ပေါ်မီ ခန္ဓာကိုယ်တွင် Enzyme များ လိုအပ်ကြောင်း စာပိုဒ်က အဘယ်ကြောင့် ဆိုသနည်း။",
            optionsEn: [
              "Large molecules like starch must be broken into small ones like glucose before they can pass through the gut wall",
              "Enzymes make food taste better",
              "Enzymes are needed to kill bacteria in food",
              "Enzymes are not actually needed for absorption",
            ],
            optionsMy: [
              "Starch ကဲ့သို့ ကြီးမားသော မော်လီကျူးများသည် အူလမ်းကြောင်း နံရံကို မဖြတ်နိုင်မီ ဂလူးကို့စ်ကဲ့သို့ ငယ်သောအရာများအဖြစ် ချေဖျက်ရမည်ဖြစ်သောကြောင့်",
              "Enzyme များက အစားအစာကို ပို၍ အရသာရှိစေသောကြောင့်",
              "အစားအစာထဲရှိ ဘက်တီးရီးယားများကို သတ်ရန် Enzyme များ လိုအပ်သောကြောင့်",
              "Absorption အတွက် Enzyme များ အမှန်တကယ် မလိုအပ်ကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This links back to the whole point of the visking tubing model: only small molecules pass through.",
              "Reread the final sentence of the passage.",
            ],
            hintsMy: [
              "ဤသည်မှာ Visking Tubing ပုံစံတူ၏ အဓိကအချက်နှင့် ချိတ်ဆက်ထားသည်- မော်လီကျူးငယ်များသာ ဖြတ်နိုင်သည်။",
              "စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w16-d5",
      dayNumber: 5,
      titleEn: "Term 4 Recap: Human Nutrition and Plant Transport",
      titleMy:
          "စတုတ္ထအပိုင်း ပြန်လည်သုံးသပ်ခြင်း - လူသားတို့၏ အာဟာရနှင့် အပင် သယ်ယူပို့ဆောင်ရေး",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A potometer estimates transpiration rate by measuring...",
          questionMy:
              "Potometer သည် ...ကို တိုင်းတာခြင်းဖြင့် Transpiration နှုန်းကို ခန့်မှန်းသည်",
          optionsEn: [
            "The rate of water uptake by a shoot",
            "The colour of the leaves",
            "The number of flowers",
            "The height of the plant",
          ],
          optionsMy: [
            "ပင်စည်တစ်ခု၏ ရေစုပ်ယူနှုန်း",
            "အရွက်များ၏ အရောင်",
            "ပန်းအရေအတွက်",
            "အပင်၏ အမြင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which organ produces enzymes that digest starch, protein, AND fat?",
          questionMy:
              "Starch, ပရိုတင်းနှင့် အဆီကို ချေဖျက်ပေးသော Enzyme များ ထုတ်လုပ်သည့် အင်္ဂါမှာ အဘယ်နည်း",
          optionsEn: [
            "Pancreas",
            "Gallbladder only",
            "Large intestine",
            "Oesophagus",
          ],
          optionsMy: [
            "Pancreas",
            "သည်းခြေအိတ်သာ",
            "ကြီးအူ",
            "အစာလမ်းကြောင်း (Oesophagus)",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Visking tubing in the digestion model experiment let glucose through but not starch because...",
          questionMy:
              "Digestion Model စမ်းသပ်မှုတွင် Visking Tubing က ဂလူးကို့စ်ကို ဖြတ်ခွင့်ပြု၍ Starch ကို မဖြတ်ခွင့်ပြုသည့် အကြောင်းရင်းမှာ...",
          optionsEn: [
            "Glucose molecules are small enough to fit through the pores; starch molecules are too large",
            "Glucose is a type of protein",
            "Starch dissolves in water more easily than glucose",
            "The tubing actively pumps glucose through",
          ],
          optionsMy: [
            "ဂလူးကို့စ် မော်လီကျူးများ အပေါက်များကို ဖြတ်နိုင်လောက်အောင် သေးငယ်ပြီး Starch မော်လီကျူးများ ကြီးလွန်းသောကြောင့်",
            "ဂလူးကို့စ်သည် ပရိုတင်းအမျိုးအစား တစ်ခု ဖြစ်သောကြောင့်",
            "Starch သည် ဂလူးကို့စ်ထက် ရေတွင် ပို၍ လွယ်ကူစွာ ပျော်ဝင်သောကြောင့်",
            "Tubing က ဂလူးကို့စ်ကို Active Transport ဖြင့် တွန်းပို့ပေးသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 4: "Human Nutrition and Transport in Plants"
// (Weeks 13-16)
// =====================================================================

const CourseTermDef igcseBiologyTerm4 = CourseTermDef(
  id: "course-igcse-bio-t4",
  termNumber: 4,
  titleEn: "Human Nutrition and Transport in Plants",
  titleMy: "လူသားတို့၏ အာဟာရနှင့် အပင်များရှိ သယ်ယူပို့ဆောင်ရေး",
  certificateTitleEn: "Human Nutrition and Transport in Plants",
  certificateTitleMy: "လူသားတို့၏ အာဟာရနှင့် အပင်များရှိ သယ်ယူပို့ဆောင်ရေး",
  weeks: [_igcseBioWeek13, _igcseBioWeek14, _igcseBioWeek15, _igcseBioWeek16],
);

// =====================================================================
// Week 17: "The Human Circulatory System"
// =====================================================================

const CourseWeekDef _igcseBioWeek17 = CourseWeekDef(
  id: "course-igcse-bio-w17",
  weekNumber: 17,
  titleEn: "The Human Circulatory System",
  titleMy: "လူ့သွေးလည်ပတ်မှု စနစ် (Circulatory System)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w17-d1",
      dayNumber: 1,
      titleEn: "The Structure of the Heart",
      titleMy: "နှလုံး၏ ဖွဲ့စည်းပုံ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "How many chambers does the human heart have?",
          questionMy: "လူ့နှလုံးတွင် အခန်းစုစုပေါင်း မည်မျှ ရှိသနည်း။",
          optionsEn: ["Four", "Two", "Three", "Six"],
          optionsMy: ["လေးခန်း", "နှစ်ခန်း", "သုံးခန်း", "ခြောက်ခန်း"],
          correctIndex: 0,
          hintsEn: [
            "There are two atria (upper chambers) and two ventricles (lower chambers).",
            "The heart is divided into a left side and a right side, each with two chambers.",
          ],
          hintsMy: [
            "အထက်ပိုင်းအခန်း (Atria) နှစ်ခန်းနှင့် အောက်ပိုင်းအခန်း (Ventricles) နှစ်ခန်း ရှိသည်။",
            "နှလုံးကို ဘယ်ဘက်နှင့် ညာဘက်ခွဲထားပြီး တစ်ဖက်စီတွင် အခန်းနှစ်ခန်းစီ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the main function of the valves inside the heart?",
          questionMy:
              "နှလုံးအတွင်းရှိ Valve များ၏ အဓိကလုပ်ဆောင်ချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "To prevent blood from flowing backward",
            "To pump blood around the body",
            "To produce red blood cells",
            "To filter waste from the blood",
          ],
          optionsMy: [
            "သွေးကို နောက်ပြန်စီးဆင်းမှုမှ ကာကွယ်ရန်",
            "ခန္ဓာကိုယ်တစ်ဝန်း သွေးကို ပန့်ပေးရန်",
            "သွေးနီဥများ ထုတ်လုပ်ရန်",
            "သွေးမှ စွန့်ပစ်ပစ္စည်းကို စစ်ထုတ်ရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Valves act like one-way doors between chambers and major vessels.",
            "Without valves, blood could flow the wrong way when the heart relaxes.",
          ],
          hintsMy: [
            "Valve များသည် အခန်းများနှင့် အဓိက သွေးကြောများကြား တစ်ဖက်သွားတံခါးများကဲ့သို့ လုပ်ဆောင်သည်။",
            "Valve များ မရှိပါက နှလုံး ပြေလျော့သောအခါ သွေးသည် လမ်းမှားစီးဆင်းနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which chamber of the heart pumps oxygenated blood out to the whole body?",
          questionMy:
              "နှလုံး၏ မည်သည့်အခန်းက အောက်ဆီဂျင်ပါသော သွေးကို ခန္ဓာကိုယ်တစ်ခုလုံးဆီသို့ ပန့်ပေးသနည်း။",
          optionsEn: [
            "The left ventricle",
            "The right ventricle",
            "The left atrium",
            "The right atrium",
          ],
          optionsMy: [
            "ဘယ်ဘက် Ventricle",
            "ညာဘက် Ventricle",
            "ဘယ်ဘက် Atrium",
            "ညာဘက် Atrium",
          ],
          correctIndex: 0,
          hintsEn: [
            "This chamber has the thickest, most muscular wall, since it must pump blood the farthest, around the whole body.",
            "The right ventricle only pumps blood the short distance to the lungs.",
          ],
          hintsMy: [
            "ဤအခန်းသည် ခန္ဓာကိုယ်တစ်ခုလုံးကို သွေးအဝေးဆုံးအထိ ပန့်ရမည်ဖြစ်သောကြောင့် အထူထပ်ဆုံး၊ ကြွက်သားအားအကောင်းဆုံး နံရံရှိသည်။",
            "ညာဘက် Ventricle က အဆုတ်ဆီသို့ အကွာအဝေးတိုတို ရှိသော သွေးကိုသာ ပန့်ပေးသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w17-d2",
      dayNumber: 2,
      titleEn: "Match: Blood Vessel Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - သွေးကြော ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w17-dm-1",
          termEn: "Artery",
          termMy: "Artery",
          matchEn:
              "A thick-walled vessel that carries blood away from the heart under high pressure",
          matchMy:
              "ဖိအားမြင့်စွာဖြင့် နှလုံးမှ သွေးကို သယ်ဆောင်ပေးသော နံရံထူသော သွေးကြော",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w17-dm-2",
          termEn: "Vein",
          termMy: "Vein",
          matchEn:
              "A thin-walled vessel, containing valves, that carries blood back to the heart under low pressure",
          matchMy:
              "ဖိအားနိမ့်စွာဖြင့် သွေးကို နှလုံးဆီသို့ ပြန်ပို့ပေးပြီး Valve များပါရှိသော နံရံပါးသော သွေးကြော",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w17-dm-3",
          termEn: "Capillary",
          termMy: "Capillary",
          matchEn:
              "A tiny vessel, one cell thick, where substances are exchanged between blood and tissues",
          matchMy:
              "ဆဲလ်တစ်ခုသာ ထူသော ငယ်စိတ်သွေးကြောငယ်၊ သွေးနှင့် တစ်ရှူးများကြား ပစ္စည်းများ ဖလှယ်ရာနေရာ",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w17-dm-4",
          termEn: "Double circulation",
          termMy: "Double Circulation",
          matchEn:
              "Blood passing through the heart twice on one full circuit of the body -- once for the lungs, once for the body",
          matchMy:
              "ခန္ဓာကိုယ်တစ်ဝန်း ပတ်ချာလှည့်ရာတွင် သွေးသည် နှလုံးကို နှစ်ကြိမ်ဖြတ်ကျော်ခြင်း -- အဆုတ်အတွက် တစ်ကြိမ်၊ ခန္ဓာကိုယ်အတွက် တစ်ကြိမ်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w17-dm-5",
          termEn: "Septum",
          termMy: "Septum",
          matchEn:
              "The muscular wall that separates the left and right sides of the heart",
          matchMy: "နှလုံး၏ ဘယ်ဘက်နှင့် ညာဘက်ကို ခွဲခြားပေးသော ကြွက်သားနံရံ",
          colorValue: 0xFFFF9800,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w17-d3",
      dayNumber: 3,
      titleEn: "Sort: Artery, Vein, or Capillary?",
      titleMy: "စီစစ်ကြမည် - Artery, Vein, သို့မဟုတ် Capillary",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Artery", "Vein", "Capillary"],
        bucketsMy: ["Artery", "Vein", "Capillary"],
        items: [
          SortingItem(
            id: "igcsebio-w17-sort-1",
            labelEn:
                "Has thick, muscular, elastic walls to withstand high pressure",
            labelMy:
                "ဖိအားမြင့်ကို ခံနိုင်ရန် ထူထပ်၊ ကြွက်သားများနှင့် ပျော့ပျောင်းသော နံရံရှိသည်",
            correctBucketEn: "Artery",
            correctBucketMy: "Artery",
          ),
          SortingItem(
            id: "igcsebio-w17-sort-2",
            labelEn: "Contains valves to stop blood flowing backward",
            labelMy: "သွေးနောက်ပြန်စီးဆင်းမှုကို တားဆီးရန် Valve များ ပါဝင်သည်",
            correctBucketEn: "Vein",
            correctBucketMy: "Vein",
          ),
          SortingItem(
            id: "igcsebio-w17-sort-3",
            labelEn:
                "Walls are only one cell thick, allowing easy diffusion of oxygen and nutrients",
            labelMy:
                "နံရံသည် ဆဲလ်တစ်ခုသာ ထူပြီး အောက်ဆီဂျင်နှင့် အာဟာရများ Diffusion အလွယ်တကူ ဖြစ်စေသည်",
            correctBucketEn: "Capillary",
            correctBucketMy: "Capillary",
          ),
          SortingItem(
            id: "igcsebio-w17-sort-4",
            labelEn: "Carries blood away from the heart under high pressure",
            labelMy:
                "ဖိအားမြင့်စွာဖြင့် နှလုံးမှ သွေးကို ဝေးရာသို့ သယ်ဆောင်သည်",
            correctBucketEn: "Artery",
            correctBucketMy: "Artery",
          ),
          SortingItem(
            id: "igcsebio-w17-sort-5",
            labelEn: "Has a wide lumen and lower blood pressure than an artery",
            labelMy: "ကျယ်ဝန်းသော Lumen ရှိပြီး Artery ထက် သွေးဖိအား နိမ့်သည်",
            correctBucketEn: "Vein",
            correctBucketMy: "Vein",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w17-d4",
      dayNumber: 4,
      titleEn: "Reading: Nan Ei Ei's Heart Diagram",
      titleMy: "စာဖတ်ခြင်း - နန်းအိအိ၏ နှလုံးပုံ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nan Ei Ei's Heart Diagram",
        titleMy: "နန်းအိအိ၏ နှလုံးပုံ",
        passageEn:
            "For her exam revision, Nan Ei Ei drew a large diagram of the heart and traced the path of a single drop of blood all the way around the body, labelling every structure it passed through. She started in the right atrium, where deoxygenated blood arrives back from the body through two large veins, the vena cavae. From there, the blood passed through a valve into the right ventricle, which pumped it out to the lungs through the pulmonary artery -- one of the few arteries in the body that actually carries deoxygenated blood.\n\nAt the lungs, the blood picked up oxygen and released carbon dioxide, then returned to the heart through the pulmonary vein -- again unusual, since this is one of the few veins that carries oxygenated blood -- entering the left atrium. From there it passed through another valve into the left ventricle, the chamber with the thickest, most muscular wall in the entire heart, because it needed to generate enough pressure to pump blood all the way around the whole body, not just the short distance to the nearby lungs.\n\nNan Ei Ei's teacher pointed out that this whole journey -- heart to lungs to heart to body to heart again -- is exactly why the human circulatory system is called a double circulation: blood passes through the heart twice for every complete circuit of the body, once to be pumped to the lungs (the pulmonary circuit) and once to be pumped to the rest of the body (the systemic circuit). Her teacher explained that this double-pump system keeps oxygenated and deoxygenated blood almost completely separate, and allows the blood returning from the lungs to be given a fresh, powerful push by the left ventricle before setting out on its much longer journey around the body.",
        passageMy:
            "စာမေးပွဲ ပြန်လည်ကျက်မှတ်ရန်အတွက် နန်းအိအိသည် နှလုံး၏ ကြီးမားသော ပုံကြီးတစ်ပုံကို ဆွဲခဲ့ပြီး၊ သွေးစက်တစ်စက်၏ ခန္ဓာကိုယ်တစ်ဝန်း ခရီးလမ်းကို ဖြတ်သန်းရာ ဖွဲ့စည်းပုံတိုင်း အမည်တပ်ကာ ခြေရာခံခဲ့သည်။ သူမသည် ညာဘက် Atrium မှ စတင်ခဲ့ပြီး၊ ၎င်းသည် Oxygen မပါသော သွေးသည် ကြီးမားသော Vein နှစ်ခု (Vena Cavae) မှတစ်ဆင့် ခန္ဓာကိုယ်မှ ပြန်ရောက်ရှိရာ နေရာဖြစ်သည်။ ထိုနေရာမှ သွေးသည် Valve တစ်ခုကို ဖြတ်ကျော်ကာ ညာဘက် Ventricle ထဲသို့ ဝင်ခဲ့ပြီး၊ ညာဘက် Ventricle က ၎င်းကို Pulmonary Artery မှတစ်ဆင့် အဆုတ်ဆီသို့ ပန့်ပေးခဲ့သည် -- ၎င်းသည် Oxygen မပါသော သွေးကို အမှန်တကယ် သယ်ဆောင်သည့် ခန္ဓာကိုယ်ရှိ Artery အနည်းငယ်ထဲမှ တစ်ခု ဖြစ်သည်။\n\nအဆုတ်တွင် သွေးသည် Oxygen ကို ရယူပြီး ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို လွှတ်ထုတ်ကာ Pulmonary Vein မှတစ်ဆင့် နှလုံးဆီသို့ ပြန်လာခဲ့သည် -- ၎င်းသည်လည်း Oxygen ပါသော သွေးကို သယ်ဆောင်သည့် Vein အနည်းငယ်ထဲမှ တစ်ခုဖြစ်၍ ထူးခြားသည် -- ဘယ်ဘက် Atrium ထဲသို့ ဝင်ရောက်ခဲ့သည်။ ထိုနေရာမှ ၎င်းသည် နောက်ထပ် Valve တစ်ခုကို ဖြတ်ကျော်ကာ ဘယ်ဘက် Ventricle ထဲသို့ ဝင်ရောက်ခဲ့သည်၊ ၎င်းသည် နှလုံးတစ်ခုလုံးတွင် အထူထပ်ဆုံး၊ ကြွက်သားအားအကောင်းဆုံး နံရံရှိသော အခန်းဖြစ်သည်၊ အကြောင်းမှာ အနီးအနားရှိ အဆုတ်ဆီသို့ အကွာအဝေးတိုတိုသာ မဟုတ်ဘဲ ခန္ဓာကိုယ်တစ်ခုလုံးကို ပတ်ရန် လုံလောက်သော ဖိအား ဖန်တီးရန် လိုအပ်သောကြောင့် ဖြစ်သည်။\n\nဤခရီးလမ်းတစ်ခုလုံး -- နှလုံးမှ အဆုတ်၊ အဆုတ်မှ နှလုံး၊ နှလုံးမှ ခန္ဓာကိုယ်၊ ခန္ဓာကိုယ်မှ နှလုံးသို့ ပြန်လည် -- သည် လူ့သွေးလည်ပတ်မှုစနစ်ကို Double Circulation ဟု ခေါ်ရသည့် အတိအကျ အကြောင်းရင်းဖြစ်ကြောင်း နန်းအိအိ၏ ဆရာမက ညွှန်ပြခဲ့သည်- ခန္ဓာကိုယ်တစ်ဝန်း ပြည့်စုံသော ပတ်ချာလှည့်တစ်ကြိမ်တိုင်းအတွက် သွေးသည် နှလုံးကို နှစ်ကြိမ် ဖြတ်ကျော်သည်၊ တစ်ကြိမ်မှာ အဆုတ်ဆီသို့ ပန့်ခံရန် (Pulmonary Circuit) နှင့် တစ်ကြိမ်မှာ ခန္ဓာကိုယ်ကျန်အစိတ်အပိုင်းဆီသို့ ပန့်ခံရန် (Systemic Circuit) ဖြစ်သည်။ ဤ Double-Pump စနစ်သည် Oxygen ပါသော နှင့် မပါသော သွေးများကို လုံးဝနီးပါး သီးခြားစွာ ထားရှိပေးပြီး၊ အဆုတ်မှ ပြန်ရောက်လာသော သွေးအား ခန္ဓာကိုယ်တစ်ဝန်း ပို၍ ရှည်လျားသော ခရီးစတင်မီ ဘယ်ဘက် Ventricle က လတ်ဆတ်ပြီး အားကောင်းသော တွန်းအားတစ်ခု ထပ်မံပေးနိုင်ကြောင်း သူမ၏ ဆရာမက ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, why is the pulmonary artery unusual compared to most other arteries?",
            questionMy:
                "Pulmonary Artery သည် အခြား Artery အများစုနှင့် နှိုင်းယှဉ်လျှင် အဘယ်ကြောင့် ထူးခြားကြောင်းကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It carries deoxygenated blood, while most arteries carry oxygenated blood",
              "It is the only vessel with valves",
              "It only carries blood at night",
              "It is thinner than any vein",
            ],
            optionsMy: [
              "အများစု Artery များက Oxygen ပါသောသွေးကို သယ်ဆောင်ပြီး ၎င်းက Oxygen မပါသော သွေးကို သယ်ဆောင်သောကြောင့်",
              "Valve ရှိသော သွေးကြောတစ်ခုတည်း ဖြစ်သောကြောင့်",
              "ညအချိန်တွင်သာ သွေးကို သယ်ဆောင်သောကြောင့်",
              "Vein မည်သည့်တစ်ခုထက်မဆို ပါးလွှာသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "The passage explicitly calls this one of the few exceptions among arteries.",
              "Most arteries carry oxygenated blood; this one carries deoxygenated blood to the lungs.",
            ],
            hintsMy: [
              "စာပိုဒ်က ၎င်းကို Artery များအနက် ခြွင်းချက်အနည်းငယ်ထဲမှ တစ်ခုဟု တိတိကျကျ ခေါ်ထားသည်။",
              "Artery အများစုက Oxygen ပါသောသွေးကို သယ်ဆောင်ပြီး ၎င်းကမူ Oxygen မပါသောသွေးကို အဆုတ်သို့ သယ်ဆောင်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does the left ventricle have the thickest, most muscular wall in the heart?",
            questionMy:
                "ဘယ်ဘက် Ventricle သည် နှလုံးတွင် အထူထပ်ဆုံး၊ ကြွက်သားအားအကောင်းဆုံး နံရံရှိသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It must generate enough pressure to pump blood all the way around the whole body",
              "It only pumps blood to the nearby lungs",
              "It is the smallest chamber in the heart",
              "It does not need to pump blood at all",
            ],
            optionsMy: [
              "ခန္ဓာကိုယ်တစ်ခုလုံးကို ပတ်ရန် လုံလောက်သော ဖိအား ဖန်တီးရမည်ဖြစ်သောကြောင့်",
              "အနီးအနားရှိ အဆုတ်ဆီသို့သာ သွေးကို ပန့်ပေးသောကြောင့်",
              "နှလုံးတွင် အသေးငယ်ဆုံးအခန်း ဖြစ်သောကြောင့်",
              "သွေးကို လုံးဝ ပန့်ပေးရန် မလိုအပ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Compare the distance to the lungs (short) versus the distance around the whole body (much longer).",
              "More distance and more resistance require more pumping force.",
            ],
            hintsMy: [
              "အဆုတ်ဆီသို့ အကွာအဝေး (တိုတို) နှင့် ခန္ဓာကိုယ်တစ်ခုလုံးကို ပတ်ရန် အကွာအဝေး (ပို၍ ရှည်) ကို နှိုင်းယှဉ်ကြည့်ပါ။",
              "အကွာအဝေးနှင့် ခုခံအား ပိုများလျှင် ပန့်ပေးသည့် အားလည်း ပိုများ လိုအပ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what does 'double circulation' mean?",
            questionMy:
                "'Double Circulation' ဆိုသည်မှာ အဘယ်ကို ဆိုလိုကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Blood passes through the heart twice for every complete circuit of the body",
              "The heart has two separate hearts inside it",
              "Blood only travels through the lungs twice a day",
              "There are two hearts in the human body",
            ],
            optionsMy: [
              "ခန္ဓာကိုယ်တစ်ဝန်း ပြည့်စုံသော ပတ်ချာလှည့်တစ်ကြိမ်တိုင်းအတွက် သွေးသည် နှလုံးကို နှစ်ကြိမ် ဖြတ်ကျော်ခြင်း",
              "နှလုံးအတွင်း သီးခြားနှလုံးနှစ်လုံး ရှိခြင်း",
              "သွေးသည် တစ်နေ့လျှင် အဆုတ်ကို နှစ်ကြိမ်သာ ဖြတ်သန်းခြင်း",
              "လူ့ခန္ဓာကိုယ်တွင် နှလုံးနှစ်လုံး ရှိခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence defining double circulation directly.",
              "Once for the pulmonary circuit, once for the systemic circuit.",
            ],
            hintsMy: [
              "Double Circulation ကို တိုက်ရိုက် အဓိပ္ပာယ်ဖွင့်ဆိုသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Pulmonary Circuit အတွက် တစ်ကြိမ်၊ Systemic Circuit အတွက် တစ်ကြိမ်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what advantage does the double-pump system give the blood returning from the lungs?",
            questionMy:
                "Double-Pump စနစ်က အဆုတ်မှ ပြန်ရောက်လာသော သွေးအား မည်သည့် အားသာချက် ပေးကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The left ventricle gives it a fresh, powerful push before its longer journey around the body",
              "It skips the heart entirely and goes straight to the body",
              "It loses all its oxygen before continuing",
              "It has to wait 24 hours before continuing",
            ],
            optionsMy: [
              "ခန္ဓာကိုယ်ပတ်ရန် ရှည်လျားသော ခရီးမတိုင်မီ ဘယ်ဘက် Ventricle က လတ်ဆတ်ပြီး အားကောင်းသော တွန်းအား ထပ်ပေးခြင်း",
              "နှလုံးကို လုံးဝ ကျော်ဖြတ်ပြီး ခန္ဓာကိုယ်ဆီသို့ တိုက်ရိုက်သွားခြင်း",
              "ဆက်လက်မသွားမီ Oxygen အားလုံး ဆုံးရှုံးသွားခြင်း",
              "ဆက်လက်မသွားမီ ၂၄ နာရီ စောင့်ရခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of the passage.",
              "This is why the blood goes back through the heart before continuing around the body.",
            ],
            hintsMy: [
              "စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ ခန္ဓာကိုယ်ပတ်ရန် ဆက်မသွားမီ သွေးသည် နှလုံးကို ပြန်ဖြတ်သန်းရသည့် အကြောင်းရင်းဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w17-d5",
      dayNumber: 5,
      titleEn: "Week 17 Recap: The Circulatory System",
      titleMy: "တစ်ဆယ့်ခုနစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - သွေးလည်ပတ်မှုစနစ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which blood vessel type has walls only one cell thick?",
          questionMy:
              "မည်သည့် သွေးကြောအမျိုးအစားတွင် ဆဲလ်တစ်ခုသာ ထူသော နံရံ ရှိသနည်း",
          optionsEn: ["Capillary", "Artery", "Vein", "Aorta"],
          optionsMy: ["Capillary", "Artery", "Vein", "Aorta"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The left ventricle pumps blood to...",
          questionMy: "ဘယ်ဘက် Ventricle က သွေးကို ...ဆီသို့ ပန့်ပေးသည်",
          optionsEn: [
            "The whole body",
            "Only the lungs",
            "Only the right atrium",
            "Nowhere -- it does not pump",
          ],
          optionsMy: [
            "ခန္ဓာကိုယ်တစ်ခုလုံး",
            "အဆုတ်သာ",
            "ညာဘက် Atrium သာ",
            "မည်သည့်နေရာမျှ -- ၎င်းက မပန့်ပေးပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In double circulation, how many times does blood pass through the heart per full body circuit?",
          questionMy:
              "Double Circulation တွင် ခန္ဓာကိုယ် ပတ်ချာလှည့်တစ်ကြိမ်လျှင် သွေးသည် နှလုံးကို မည်မျှကြိမ် ဖြတ်ကျော်သနည်း",
          optionsEn: ["Twice", "Once", "Three times", "Never"],
          optionsMy: [
            "နှစ်ကြိမ်",
            "တစ်ကြိမ်",
            "သုံးကြိမ်",
            "လုံးဝမဖြတ်ကျော်ပါ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 18: "Blood and Immunity"
// =====================================================================

const CourseWeekDef _igcseBioWeek18 = CourseWeekDef(
  id: "course-igcse-bio-w18",
  weekNumber: 18,
  titleEn: "Blood and Immunity",
  titleMy: "သွေးနှင့် ကိုယ်ခံအားစနစ် (Immunity)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w18-d1",
      dayNumber: 1,
      titleEn: "What is in Blood?",
      titleMy: "သွေးထဲတွင် အဘယ်အရာ ပါဝင်သနည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which blood component carries oxygen around the body?",
          questionMy:
              "မည်သည့် သွေးအစိတ်အပိုင်းက ခန္ဓာကိုယ်တစ်ဝန်း အောက်ဆီဂျင်ကို သယ်ဆောင်သနည်း။",
          optionsEn: [
            "Red blood cells",
            "White blood cells",
            "Platelets",
            "Plasma alone",
          ],
          optionsMy: ["သွေးနီဥ", "သွေးဖြူဥ", "Platelets", "Plasma တစ်ခုတည်း"],
          correctIndex: 0,
          hintsEn: [
            "These cells contain haemoglobin, a red pigment that binds to oxygen.",
            "Their biconcave, disc-like shape and lack of a nucleus maximise the surface area for carrying oxygen.",
          ],
          hintsMy: [
            "ဤဆဲလ်များတွင် အောက်ဆီဂျင်နှင့် ချိတ်ဆက်သော အနီရောင် အရောင်ဓာတ် Haemoglobin ပါဝင်သည်။",
            "၎င်းတို့၏ Biconcave ဒစ်ကလေးပုံသဏ္ဌာန်နှင့် Nucleus မပါခြင်းသည် အောက်ဆီဂျင်သယ်ဆောင်ရန် မျက်နှာပြင်ဧရိယာကို အများဆုံး ဖြစ်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is the main role of platelets in the blood?",
          questionMy: "သွေးထဲရှိ Platelets ၏ အဓိကလုပ်ဆောင်ချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Helping blood to clot at a wound",
            "Carrying oxygen",
            "Fighting pathogens directly",
            "Transporting digested food",
          ],
          optionsMy: [
            "ဒဏ်ရာတွင် သွေးခဲစေရန် ကူညီခြင်း",
            "အောက်ဆီဂျင် သယ်ဆောင်ခြင်း",
            "ရောဂါပိုးများကို တိုက်ရိုက် တိုက်ထုတ်ခြင်း",
            "ချေဖျက်ပြီး အစားအစာကို သယ်ဆောင်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "When you cut yourself, these cell fragments help form a clot to seal the wound and stop bleeding.",
            "They are not full cells, but small fragments involved in the clotting process.",
          ],
          hintsMy: [
            "ဒဏ်ရာရသောအခါ ဤဆဲလ်အပိုင်းအစများသည် ဒဏ်ရာကို ပိတ်ဆို့ပြီး သွေးရပ်ရန် သွေးခဲအောင် ကူညီပေးသည်။",
            "၎င်းတို့သည် ဆဲလ်ပြည့်စုံများ မဟုတ်ဘဲ သွေးခဲခြင်းဖြစ်စဉ်တွင် ပါဝင်သော အပိုင်းအစငယ်များ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Plasma is best described as...",
          questionMy: "Plasma ကို အကောင်းဆုံးဖော်ပြသည့်အရာမှာ...",
          optionsEn: [
            "The pale yellow liquid part of blood that transports dissolved substances",
            "A type of white blood cell",
            "A solid clot-forming fragment",
            "The pigment that gives blood its red colour",
          ],
          optionsMy: [
            "ပျော်ဝင်ထားသော ပစ္စည်းများကို သယ်ဆောင်ပေးသော သွေး၏ အဝါဖျော့ရောင် အရည်ပိုင်း",
            "သွေးဖြူဥ အမျိုးအစားတစ်ခု",
            "သွေးခဲစေသော အစိုင်အခဲအပိုင်းအစ",
            "သွေးကို အနီရောင် ဖြစ်စေသော အရောင်ဓာတ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Plasma carries dissolved glucose, amino acids, hormones, carbon dioxide, and other substances.",
            "It is the liquid that the blood cells and platelets float within.",
          ],
          hintsMy: [
            "Plasma သည် ပျော်ဝင်ထားသော ဂလူးကို့စ်၊ အမိုင်နိုအက်ဆစ်၊ ဟိုမုန်း၊ ကာဗွန်ဒိုင်အောက်ဆိုဒ်နှင့် အခြားပစ္စည်းများကို သယ်ဆောင်ပေးသည်။",
            "၎င်းသည် သွေးဆဲလ်များနှင့် Platelets များ မျောနေသော အရည်ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w18-d2",
      dayNumber: 2,
      titleEn: "Match: Immunity Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Immunity ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w18-dm-1",
          termEn: "Phagocytosis",
          termMy: "Phagocytosis",
          matchEn:
              "The process by which a white blood cell engulfs and digests a pathogen",
          matchMy:
              "သွေးဖြူဥတစ်ခုက ရောဂါပိုးတစ်ခုကို ဝိုင်းအုပ်ပြီး ချေဖျက်ခြင်း ဖြစ်စဉ်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w18-dm-2",
          termEn: "Antibody",
          termMy: "Antibody",
          matchEn:
              "A protein produced by lymphocytes that specifically targets a particular antigen on a pathogen",
          matchMy:
              "ရောဂါပိုးတစ်ခုပေါ်ရှိ တိတိကျကျ Antigen တစ်ခုကို ရည်ရွယ်၍ Lymphocyte များက ထုတ်လုပ်သော ပရိုတင်း",
          colorValue: 0xFF2196F3,
        ),
        DragMatchPair(
          id: "igcsebio-w18-dm-3",
          termEn: "Active immunity",
          termMy: "Active Immunity",
          matchEn:
              "Immunity gained when the body produces its own antibodies, through infection or vaccination",
          matchMy:
              "ရောဂါကူးစက်ခံရခြင်း သို့မဟုတ် ကာကွယ်ဆေးထိုးခြင်းမှတစ်ဆင့် ခန္ဓာကိုယ်ကိုယ်တိုင် Antibody ထုတ်လုပ်ရာမှ ရရှိသော ကိုယ်ခံအား",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w18-dm-4",
          termEn: "Passive immunity",
          termMy: "Passive Immunity",
          matchEn:
              "Immunity gained when antibodies are given from an outside source, such as from a mother to a baby, without the body making its own",
          matchMy:
              "ခန္ဓာကိုယ်ကိုယ်တိုင် Antibody မထုတ်လုပ်ဘဲ အမေမှ ကလေးဆီသို့ကဲ့သို့ အပြင်ဘက်အရင်းအမြစ်မှ Antibody များ ပေးအပ်ရာမှ ရရှိသော ကိုယ်ခံအား",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w18-dm-5",
          termEn: "Antigen",
          termMy: "Antigen",
          matchEn:
              "A marker on the surface of a pathogen that the immune system recognises as foreign",
          matchMy:
              "ကိုယ်ခံအားစနစ်က ပြင်ပပစ္စည်းအဖြစ် မှတ်သားသော ရောဂါပိုးမျက်နှာပြင်ရှိ အမှတ်အသား",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w18-d3",
      dayNumber: 3,
      titleEn: "Sort: Active or Passive Immunity?",
      titleMy: "စီစစ်ကြမည် - Active လား Passive Immunity လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Active Immunity", "Passive Immunity"],
        bucketsMy: ["Active Immunity", "Passive Immunity"],
        items: [
          SortingItem(
            id: "igcsebio-w18-sort-1",
            labelEn:
                "A child receives a vaccination and their body produces its own antibodies",
            labelMy:
                "ကလေးတစ်ဦးသည် ကာကွယ်ဆေး ထိုးခံရပြီး ၎င်း၏ ခန္ဓာကိုယ်ကိုယ်တိုင် Antibody ထုတ်လုပ်ခြင်း",
            correctBucketEn: "Active Immunity",
            correctBucketMy: "Active Immunity",
          ),
          SortingItem(
            id: "igcsebio-w18-sort-2",
            labelEn:
                "A newborn baby receives antibodies from its mother through breast milk",
            labelMy:
                "မွေးကင်းစကလေးသည် နို့ရည်မှတစ်ဆင့် အမေထံမှ Antibody များ ရရှိခြင်း",
            correctBucketEn: "Passive Immunity",
            correctBucketMy: "Passive Immunity",
          ),
          SortingItem(
            id: "igcsebio-w18-sort-3",
            labelEn:
                "A person recovers from chickenpox and now has long-lasting immunity to it",
            labelMy:
                "လူတစ်ဦးသည် ကျားကွက်ရောဂါမှ ပြန်လည်ကောင်းမွန်ပြီး ၎င်းအပေါ် ကြာရှည်ခံ ကိုယ်ခံအား ရရှိခြင်း",
            correctBucketEn: "Active Immunity",
            correctBucketMy: "Active Immunity",
          ),
          SortingItem(
            id: "igcsebio-w18-sort-4",
            labelEn:
                "A patient is given an injection of ready-made antibodies for immediate, short-term protection",
            labelMy:
                "လူနာတစ်ဦးသည် ချက်ချင်း၊ ကာလတိုကာလ ကာကွယ်မှုအတွက် အသင့်ပြင်ဆင်ထားသော Antibody ဆေးထိုးခံရခြင်း",
            correctBucketEn: "Passive Immunity",
            correctBucketMy: "Passive Immunity",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w18-d4",
      dayNumber: 4,
      titleEn: "Reading: Khin Sanda's Newborn Question",
      titleMy: "စာဖတ်ခြင်း - ခင်စန္ဒာ၏ မွေးကင်းစကလေး မေးခွန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Khin Sanda's Newborn Question",
        titleMy: "ခင်စန္ဒာ၏ မွေးကင်းစကလေး မေးခွန်း",
        passageEn:
            "Khin Sanda's aunt had just given birth, and during a visit, Khin Sanda noticed her aunt breastfeeding and remembered that her Biology teacher had mentioned breast milk contains antibodies. She asked her aunt's midwife why a newborn baby, whose own immune system is still immature, would need antibodies from somewhere else at all.\n\nThe midwife, who had studied basic biology herself, explained that a newborn's own lymphocytes have not yet encountered most pathogens, so the baby cannot yet produce many antibodies of its own -- this is why babies are especially vulnerable to infection in their first months. To bridge this gap, the mother's antibodies, built up over her own lifetime of infections and vaccinations, pass to the baby both before birth (across the placenta) and after birth (through breast milk), giving the baby immediate protection against diseases the mother has already encountered.\n\nKhin Sanda's teacher later explained the trade-off in class: because the baby did not make these antibodies itself, no memory cells are created, so this protection -- passive immunity -- fades within weeks to months, rather than lasting a lifetime. In contrast, once the baby is later exposed to a real infection or given a vaccination and produces antibodies through its own immune response, that active immunity, complete with memory cells, lasts far longer -- sometimes for life. Khin Sanda realised passive immunity from her aunt's breast milk was not meant to replace the baby's own immune system permanently, but rather to protect the baby just long enough for that system to mature and start working on its own.",
        passageMy:
            "ခင်စန္ဒာ၏ အန်တီသည် ကလေးမွေးဖွားခါစ ဖြစ်ခဲ့ပြီး၊ လာရောက်လည်ပတ်ချိန်တွင် ခင်စန္ဒာသည် အန်တီ နို့တိုက်နေသည်ကို သတိပြုမိကာ သူမ၏ ဇီဝဗေဒဆရာမက နို့ရည်တွင် Antibody များ ပါဝင်ကြောင်း ဖော်ပြခဲ့ဖူးသည်ကို သတိရမိခဲ့သည်။ ကိုယ်ခံအားစနစ် မရင့်ကျက်သေးသော မွေးကင်းစကလေးတစ်ဦးသည် အခြားတစ်နေရာမှ Antibody များ အဘယ်ကြောင့် လိုအပ်နေကြောင်းကို သူမ၏ အန်တီ၏ ဝန်ထမ်းဆရာမကြီးအား မေးမြန်းခဲ့သည်။\n\nဇီဝဗေဒ အခြေခံကို ကိုယ်တိုင် လေ့လာဖူးသော ဝန်ထမ်းဆရာမကြီးက မွေးကင်းစကလေးတစ်ဦး၏ Lymphocyte များသည် ရောဂါပိုးအများစုနှင့် မကြုံတွေ့ဖူးသေးသောကြောင့် ကလေးသည် Antibody များစွာ ကိုယ်တိုင် မထုတ်လုပ်နိုင်သေးကြောင်း -- ၎င်းသည် ကလေးငယ်များ ပထမလများတွင် ရောဂါကူးစက်မှုကို အထူးထိခိုက်လွယ်ရသည့် အကြောင်းရင်းဖြစ်ကြောင်း ရှင်းပြခဲ့သည်။ ဤကွာဟမှုကို ချိတ်ဆက်ပေးရန် အမေ၏ ကိုယ်တိုင် ရောဂါကူးစက်ခံခဲ့ရခြင်းနှင့် ကာကွယ်ဆေးများ တစ်သက်တာတွင် တည်ဆောက်ထားသော Antibody များသည် မွေးဖွားမီ (Placenta ကိုဖြတ်၍) နှင့် မွေးဖွားပြီးနောက် (နို့ရည်မှတစ်ဆင့်) နှစ်မျိုးစလုံး ကလေးထံသို့ ရောက်ရှိပြီး၊ အမေ ရင်ဆိုင်ခဲ့ဖူးသော ရောဂါများအပေါ် ကလေးအား ချက်ချင်း ကာကွယ်မှုပေးသည်။\n\nနောက်ပိုင်း ခင်စန္ဒာ၏ ဆရာမက ဤအားလျော့ချက်ကို အတန်းတွင် ရှင်းပြခဲ့သည်- ကလေးက ဤ Antibody များကို ကိုယ်တိုင် ထုတ်လုပ်ခြင်း မဟုတ်သောကြောင့် Memory Cell များ ဖန်တီးမပေးနိုင်၍၊ ဤကာကွယ်မှု -- Passive Immunity -- သည် တစ်သက်တာမကြာဘဲ ရက်သတ္တပတ်များမှ လများအတွင်း ကျဆင်းသွားသည်။ ဆန့်ကျင်ဘက်အားဖြင့် ကလေးသည် နောက်ပိုင်းတွင် တကယ့်ရောဂါကူးစက်မှု ခံရခြင်း သို့မဟုတ် ကာကွယ်ဆေး ထိုးခံရပြီး ၎င်းကိုယ်တိုင်၏ ကိုယ်ခံအားတုံ့ပြန်မှုမှတစ်ဆင့် Antibody ထုတ်လုပ်လိုက်သောအခါ Memory Cell များနှင့်အတူ ထိုအားတက်ကြွသော ကိုယ်ခံအား (Active Immunity) သည် ပို၍ ကြာရှည်ခံသည် -- တစ်ခါတစ်ရံ တစ်သက်တာအထိ ကြာရှည်ခံနိုင်သည်။ ခင်စန္ဒာသည် သူမ၏ အန်တီ၏ နို့ရည်မှ Passive Immunity သည် ကလေး၏ ကိုယ်ပိုင် ကိုယ်ခံအားစနစ်ကို အမြဲတမ်း အစားထိုးရန် ရည်ရွယ်ချက် မဟုတ်ဘဲ၊ ထိုစနစ် ရင့်ကျက်ပြီး ကိုယ်တိုင် အလုပ်စတင်လုပ်ဆောင်နိုင်သည်အထိ ကလေးကို လုံလောက်စွာသာ ကာကွယ်ပေးရန် ရည်ရွယ်ကြောင်း သဘောပေါက်လာခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why can't a newborn baby produce many antibodies of its own yet?",
            questionMy:
                "မွေးကင်းစကလေးတစ်ဦး Antibody များစွာ ကိုယ်တိုင် အဘယ်ကြောင့် မထုတ်လုပ်နိုင်သေးကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Its lymphocytes have not yet encountered most pathogens",
              "It has no blood yet",
              "Its heart is not fully formed",
              "It has too many white blood cells already",
            ],
            optionsMy: [
              "ကလေး၏ Lymphocyte များသည် ရောဂါပိုးအများစုနှင့် မကြုံတွေ့ဖူးသေးသောကြောင့်",
              "ကလေးတွင် သွေး မရှိသေးသောကြောင့်",
              "ကလေး၏ နှလုံး လုံးဝ မဖွဲ့စည်းရသေးသောကြောင့်",
              "ကလေးတွင် သွေးဖြူဥ လွန်ကဲစွာ ရှိပြီးဖြစ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the reason the midwife gives directly after explaining babies are vulnerable.",
              "Making antibodies requires having encountered the specific pathogen first.",
            ],
            hintsMy: [
              "ကလေးများသည် ထိခိုက်လွယ်ကြောင်း ရှင်းပြပြီးနောက် ဝန်ထမ်းဆရာမကြီးပေးသော အကြောင်းရင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Antibody ထုတ်လုပ်ရန်အတွက် သီးခြား ရောဂါပိုးနှင့် အရင်ဆုံး ကြုံတွေ့ရန် လိုအပ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, through which two routes do a mother's antibodies reach her baby?",
            questionMy:
                "အမေ၏ Antibody များသည် ကလေးဆီသို့ မည်သည့် လမ်းကြောင်းနှစ်ခုမှ ရောက်ရှိကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Across the placenta before birth, and through breast milk after birth",
              "Only through injections",
              "Only through the umbilical cord after birth",
              "Only through the air",
            ],
            optionsMy: [
              "မွေးဖွားမီ Placenta ကိုဖြတ်၍ နှင့် မွေးဖွားပြီးနောက် နို့ရည်မှတစ်ဆင့်",
              "ဆေးထိုးခြင်းမှတစ်ဆင့်သာ",
              "မွေးဖွားပြီးနောက် သားချက်ကြိုးမှတစ်ဆင့်သာ",
              "လေထုမှတစ်ဆင့်သာ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing the two routes 'both before birth ... and after birth'.",
              "These are the two routes mentioned in paragraph 2.",
            ],
            hintsMy: [
              "'မွေးဖွားမီ ... နှင့် မွေးဖွားပြီးနောက်' ဟူသော လမ်းကြောင်းနှစ်ခုကို ဖော်ပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ စာပိုဒ် ၂ တွင် ဖော်ပြထားသော လမ်းကြောင်းနှစ်ခုပင် ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why does passive immunity fade after weeks or months, unlike active immunity?",
            questionMy:
                "Active Immunity နှင့် မတူဘဲ Passive Immunity သည် ရက်သတ္တပတ် သို့မဟုတ် လများအတွင်း အဘယ်ကြောင့် ကျဆင်းသွားကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The baby did not make the antibodies itself, so no memory cells are created",
              "The mother's antibodies are weaker than normal",
              "Breast milk destroys antibodies over time",
              "The baby's blood type changes",
            ],
            optionsMy: [
              "ကလေးက ဤ Antibody များကို ကိုယ်တိုင် မထုတ်လုပ်ခဲ့သောကြောင့် Memory Cell များ မဖန်တီးနိုင်ခြင်း",
              "အမေ၏ Antibody များသည် ပုံမှန်ထက် အားနည်းသောကြောင့်",
              "နို့ရည်က Antibody များကို အချိန်ကြာလာသည်နှင့်အမျှ ဖျက်ဆီးသောကြောင့်",
              "ကလေး၏ သွေးအုပ်စု ပြောင်းလဲသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the explanation directly linking 'no memory cells' to the antibodies fading quickly.",
              "Memory cells are what makes active immunity long-lasting.",
            ],
            hintsMy: [
              "'Memory Cell မဖန်တီးနိုင်ခြင်း' ကို Antibody များ လျင်မြန်စွာ ကျဆင်းသွားခြင်းနှင့် တိုက်ရိုက် ဆက်စပ်ထားသော ရှင်းလင်းချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "Memory Cell များသည် Active Immunity ကို ကြာရှည်ခံစေသော အချက်ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Khin Sanda conclude about the purpose of passive immunity from breast milk?",
            questionMy:
                "နို့ရည်မှ Passive Immunity ၏ ရည်ရွယ်ချက်အကြောင်း ခင်စန္ဒာ မည်သို့ ကောက်ချက်ချခဲ့သနည်း။",
            optionsEn: [
              "To protect the baby just long enough for its own immune system to mature",
              "To permanently replace the baby's immune system",
              "To make the baby immune to every disease forever",
              "It serves no real purpose",
            ],
            optionsMy: [
              "ကလေး၏ ကိုယ်ပိုင်ကိုယ်ခံအားစနစ် ရင့်ကျက်သည်အထိ လုံလောက်စွာသာ ကာကွယ်ရန်",
              "ကလေး၏ ကိုယ်ခံအားစနစ်ကို အမြဲတမ်း အစားထိုးရန်",
              "ကလေးအား ရောဂါတိုင်းအတွက် အမြဲတမ်း ကိုယ်ခံအားရှိစေရန်",
              "အမှန်တကယ် ရည်ရွယ်ချက် မရှိပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of the passage.",
              "This is a temporary bridge, not a permanent replacement.",
            ],
            hintsMy: [
              "စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ အမြဲတမ်း အစားထိုးမှု မဟုတ်ဘဲ ယာယီ ချိတ်ဆက်ပေးမှု တစ်ခု ဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w18-d5",
      dayNumber: 5,
      titleEn: "Week 18 Recap: Blood and Immunity",
      titleMy: "တစ်ဆယ့်ရှစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - သွေးနှင့် ကိုယ်ခံအားစနစ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which blood cells engulf and digest pathogens?",
          questionMy:
              "မည်သည့်သွေးဆဲလ်များက ရောဂါပိုးများကို ဝိုင်းအုပ်ပြီး ချေဖျက်သနည်း",
          optionsEn: [
            "White blood cells (phagocytes)",
            "Red blood cells",
            "Platelets",
            "Plasma cells only",
          ],
          optionsMy: [
            "သွေးဖြူဥ (Phagocytes)",
            "သွေးနီဥ",
            "Platelets",
            "Plasma Cells သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Vaccination provides which type of immunity?",
          questionMy:
              "ကာကွယ်ဆေးထိုးခြင်းက မည်သည့်အမျိုးအစား ကိုယ်ခံအားကို ပေးအပ်သနည်း",
          optionsEn: [
            "Active immunity",
            "Passive immunity",
            "No immunity at all",
            "Temporary immunity only, lasting a few hours",
          ],
          optionsMy: [
            "Active Immunity",
            "Passive Immunity",
            "ကိုယ်ခံအား လုံးဝ မရှိပါ",
            "နာရီအနည်းငယ်သာ ကြာသော ယာယီကိုယ်ခံအား",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which blood component would be reduced in a person who bruises and bleeds unusually easily?",
          questionMy:
              "ပုံမှန်မဟုတ်ဘဲ လွယ်ကူစွာ ညိုတက်ပြီး သွေးထွက်သောသူတစ်ဦးတွင် မည်သည့် သွေးအစိတ်အပိုင်း လျော့နည်းနေဖွယ်ရှိသနည်း",
          optionsEn: [
            "Platelets",
            "Red blood cells",
            "Plasma",
            "White blood cells",
          ],
          optionsMy: ["Platelets", "သွေးနီဥ", "Plasma", "သွေးဖြူဥ"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 19: "Diseases and Pathogens"
// =====================================================================

const CourseWeekDef _igcseBioWeek19 = CourseWeekDef(
  id: "course-igcse-bio-w19",
  weekNumber: 19,
  titleEn: "Diseases and Pathogens",
  titleMy: "ရောဂါများနှင့် ရောဂါပိုးများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w19-d1",
      dayNumber: 1,
      titleEn: "What is a Pathogen?",
      titleMy: "Pathogen ဆိုသည်မှာ အဘယ်နည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a pathogen?",
          questionMy: "Pathogen ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A microorganism that causes disease",
            "Any type of white blood cell",
            "A type of antibody",
            "A vitamin found in food",
          ],
          optionsMy: [
            "ရောဂါဖြစ်စေသော အဏုဇီဝပိုးမွှား",
            "သွေးဖြူဥ အမျိုးအစားတစ်ခု",
            "Antibody အမျိုးအစားတစ်ခု",
            "အစားအစာတွင် တွေ့ရသော Vitamin တစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Bacteria, viruses, fungi, and some protoctista can all be pathogens.",
            "This is the general term for any disease-causing organism.",
          ],
          hintsMy: [
            "ဘက်တီးရီးယား၊ ဗိုင်းရပ်စ်၊ မှို-များနှင့် Protoctista အချို့သည် Pathogen ဖြစ်နိုင်ကြသည်။",
            "ဤသည်မှာ ရောဂါဖြစ်စေသော သက်ရှိတိုင်းအတွက် ယေဘုယျအမည် ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these is an example of direct contact disease transmission?",
          questionMy:
              "အောက်ပါတို့အနက် တိုက်ရိုက် ထိတွေ့မှု ရောဂါကူးစက်ခြင်း၏ ဥပမာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Touching an infected person's skin",
            "Drinking contaminated water",
            "Being bitten by a mosquito",
            "Breathing in droplets from a cough across a room",
          ],
          optionsMy: [
            "ရောဂါကူးစက်ခံရသူ၏ အရေပြားကို ထိတွေ့ခြင်း",
            "ညစ်ညမ်းသော ရေကို သောက်ခြင်း",
            "ခြင်ကိုက်ခံရခြင်း",
            "အခန်းတစ်ဝှမ်းမှ ချောင်းဆိုးမှု ရေစက်များကို ရှူသွင်းခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Direct contact means physical touch between an infected person and another person.",
            "The other three options all involve an indirect route (water, a vector, or airborne droplets).",
          ],
          hintsMy: [
            "တိုက်ရိုက် ထိတွေ့မှုဆိုသည်မှာ ကူးစက်ခံရသူနှင့် အခြားလူတစ်ဦးကြား ရုပ်ပိုင်းဆိုင်ရာ ထိတွေ့မှုကို ဆိုလိုသည်။",
            "ကျန်ရွေးချယ်စရာသုံးခုစလုံးသည် သွယ်ဝိုက်လမ်းကြောင်း (ရေ၊ Vector, သို့မဟုတ် လေထုမှ ရေစက်များ) ပါဝင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Malaria is transmitted to humans through which vector?",
          questionMy:
              "Malaria ရောဂါသည် မည်သည့် Vector မှတစ်ဆင့် လူသားများသို့ ကူးစက်သနည်း။",
          optionsEn: ["Mosquitoes", "Houseflies only", "Rats", "Birds"],
          optionsMy: ["ခြင်များ", "ယင်များသာ", "ကြွက်များ", "ငှက်များ"],
          correctIndex: 0,
          hintsEn: [
            "A vector is an organism that carries a pathogen from one host to another without becoming ill itself.",
            "The female Anopheles mosquito is the specific vector for the malaria parasite.",
          ],
          hintsMy: [
            "Vector ဆိုသည်မှာ ကိုယ်တိုင် ဖျားနာမသွားဘဲ Pathogen ကို Host တစ်ခုမှ တစ်ခုသို့ သယ်ဆောင်ပေးသော သက်ရှိတစ်ခု ဖြစ်သည်။",
            "Malaria ပါရာဆိုက်အတွက် တိတိကျကျ Vector မှာ မိန်းမ Anopheles ခြင် ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w19-d2",
      dayNumber: 2,
      titleEn: "Match: Disease Transmission Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ရောဂါကူးစက်မှု ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w19-dm-1",
          termEn: "Pathogen",
          termMy: "Pathogen",
          matchEn:
              "A microorganism (bacterium, virus, fungus, or protoctist) that causes disease",
          matchMy:
              "ရောဂါဖြစ်စေသော အဏုဇီဝပိုးမွှား (ဘက်တီးရီးယား၊ ဗိုင်းရပ်စ်၊ မှို သို့မဟုတ် Protoctist)",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w19-dm-2",
          termEn: "Vector",
          termMy: "Vector",
          matchEn:
              "An organism that carries a pathogen from one host to another without itself becoming ill",
          matchMy:
              "ကိုယ်တိုင် ဖျားနာမသွားဘဲ Pathogen ကို Host တစ်ခုမှ တစ်ခုသို့ သယ်ဆောင်ပေးသော သက်ရှိ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w19-dm-3",
          termEn: "Droplet infection",
          termMy: "Droplet Infection",
          matchEn:
              "The spread of disease through tiny droplets released by coughing or sneezing",
          matchMy:
              "ချောင်းဆိုးခြင်း သို့မဟုတ် နှာချေခြင်းမှတစ်ဆင့် ထွက်လာသော ရေစက်ငယ်များမှတစ်ဆင့် ရောဂါ ပျံ့နှံ့ခြင်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w19-dm-4",
          termEn: "Sanitation",
          termMy: "Sanitation",
          matchEn:
              "Systems for safely managing clean water and sewage to prevent disease spread",
          matchMy:
              "ရောဂါပျံ့နှံ့မှု ကာကွယ်ရန် သန့်ရှင်းသောရေနှင့် ရေဆိုးကို လုံခြုံစွာ စီမံခန့်ခွဲသော စနစ်များ",
          colorValue: 0xFF00BCD4,
        ),
        DragMatchPair(
          id: "igcsebio-w19-dm-5",
          termEn: "Isolation",
          termMy: "Isolation",
          matchEn:
              "Keeping an infected person away from others to prevent a disease from spreading further",
          matchMy:
              "ရောဂါ ပို၍ ပျံ့နှံ့မှု မဖြစ်စေရန် ကူးစက်ခံရသူကို အခြားသူများနှင့် ခွဲထားခြင်း",
          colorValue: 0xFF4CAF50,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w19-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Transmission Route?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် ကူးစက်မှု လမ်းကြောင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Direct Contact",
          "Droplet Infection",
          "Contaminated Water or Food",
          "Vector-Borne",
        ],
        bucketsMy: [
          "တိုက်ရိုက် ထိတွေ့မှု",
          "Droplet Infection",
          "ညစ်ညမ်းသော ရေ သို့မဟုတ် အစားအစာ",
          "Vector မှတစ်ဆင့်",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w19-sort-1",
            labelEn: "Shaking hands with someone who has a skin infection",
            labelMy: "အရေပြားကူးစက်မှု ရှိသူတစ်ဦးနှင့် လက်ဆွဲနှုတ်ဆက်ခြင်း",
            correctBucketEn: "Direct Contact",
            correctBucketMy: "တိုက်ရိုက် ထိတွေ့မှု",
          ),
          SortingItem(
            id: "igcsebio-w19-sort-2",
            labelEn:
                "Breathing in droplets released when a sick person sneezes nearby",
            labelMy:
                "အနီးအနားတွင် ဖျားနာနေသူတစ်ဦး နှာချေသောအခါ ထွက်လာသော ရေစက်များကို ရှူသွင်းခြင်း",
            correctBucketEn: "Droplet Infection",
            correctBucketMy: "Droplet Infection",
          ),
          SortingItem(
            id: "igcsebio-w19-sort-3",
            labelEn: "Drinking water from a well contaminated with sewage",
            labelMy: "ရေဆိုးဖြင့် ညစ်ညမ်းနေသော ရေတွင်းမှ ရေသောက်ခြင်း",
            correctBucketEn: "Contaminated Water or Food",
            correctBucketMy: "ညစ်ညမ်းသော ရေ သို့မဟုတ် အစားအစာ",
          ),
          SortingItem(
            id: "igcsebio-w19-sort-4",
            labelEn: "Being bitten by a mosquito carrying the malaria parasite",
            labelMy: "Malaria ပါရာဆိုက် သယ်ဆောင်နေသော ခြင်ကိုက်ခံရခြင်း",
            correctBucketEn: "Vector-Borne",
            correctBucketMy: "Vector မှတစ်ဆင့်",
          ),
          SortingItem(
            id: "igcsebio-w19-sort-5",
            labelEn:
                "Eating undercooked food contaminated with harmful bacteria",
            labelMy:
                "အန္တရာယ်ရှိသော ဘက်တီးရီးယားပါဝင်သော ကျက်မမှည့်သေးသည့် အစားအစာစားခြင်း",
            correctBucketEn: "Contaminated Water or Food",
            correctBucketMy: "ညစ်ညမ်းသော ရေ သို့မဟုတ် အစားအစာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w19-d4",
      dayNumber: 4,
      titleEn: "Reading: Health Worker Ma Ma Lay's Village Visit",
      titleMy: "စာဖတ်ခြင်း - ကျန်းမာရေးဝန်ထမ်း မမလေး၏ ရွာလာရောက်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Health Worker Ma Ma Lay's Village Visit",
        titleMy: "ကျန်းမာရေးဝန်ထမ်း မမလေး၏ ရွာလာရောက်မှု",
        passageEn:
            "A community health worker named Ma Ma Lay visited a rural school to talk about why the village had experienced a wave of diarrhoeal illness the previous month. She explained to the students that the outbreak had started after a well used for drinking water became contaminated with sewage during heavy rains, allowing bacteria from human waste to spread through the water supply and infect anyone who drank from it without boiling it first.\n\nMa Ma Lay explained that this route of transmission -- pathogens spreading through contaminated water -- is very different from how a disease like the common cold spreads, which travels mainly through droplet infection when an infected person coughs or sneezes nearby. Both routes are considered indirect, since the pathogen does not need direct skin-to-skin contact to spread, but the prevention methods are completely different: boiling or treating drinking water and improving sewage sanitation prevents waterborne diseases, while covering your mouth when coughing and regular handwashing helps prevent droplet-spread diseases.\n\nBy the end of her talk, Ma Ma Lay had outlined three practical changes for the village: building a proper latrine system away from the well to prevent sewage contamination, boiling all drinking water until a safer well could be dug, and teaching regular handwashing with soap, since hands that touch contaminated water or surfaces can then spread pathogens to food or directly into the mouth. She emphasised that understanding exactly how a disease spreads is essential before designing any prevention plan, since a strategy that works for one transmission route -- like handwashing for direct contact diseases -- might do little to stop a disease spreading mainly through contaminated water.",
        passageMy:
            "ကျန်းမာရေးဝန်ထမ်း မမလေးဟု အမည်ရှိသူသည် ကျေးလက် ကျောင်းတစ်ကျောင်းကို လာရောက်ကာ ယခင်လက ရွာတွင် ဝမ်းလျှောရောဂါ လှိုင်းလုံးကြီးတစ်ခု ဖြစ်ခဲ့ရသည့် အကြောင်းရင်းအကြောင်း ပြောကြားခဲ့သည်။ မိုးသည်းထန်စွာ ရွာနေချိန်တွင် သောက်ရေအတွက် သုံးနေသော ရေတွင်းတစ်ခု ရေဆိုးဖြင့် ညစ်ညမ်းသွားပြီးနောက် ဖြစ်ပွားခဲ့ခြင်းဖြစ်ကြောင်း၊ လူ့စွန့်ပစ်ပစ္စည်းမှ ဘက်တီးရီးယားများသည် ရေထောက်ပံ့မှုစနစ်တစ်လျှောက် ပျံ့နှံ့ကာ ရေကို မပြုတ်ဘဲ သောက်သုံးသူတိုင်းကို ကူးစက်ခဲ့ကြောင်း ကျောင်းသားများအား ရှင်းပြခဲ့သည်။\n\nဤကူးစက်လမ်းကြောင်း -- ညစ်ညမ်းသောရေမှတစ်ဆင့် ရောဂါပိုးများ ပျံ့နှံ့ခြင်း -- သည် အေးမြရောဂါကဲ့သို့သော ရောဂါ ပျံ့နှံ့ပုံနှင့် လုံးဝ ကွဲပြားကြောင်း၊ ၎င်းသည် အဓိကအားဖြင့် ကူးစက်ခံရသူ အနီးအနားတွင် ချောင်းဆိုးခြင်း သို့မဟုတ် နှာချေခြင်းမှတစ်ဆင့် Droplet Infection ဖြင့် ပျံ့နှံ့ကြောင်း မမလေးက ရှင်းပြခဲ့သည်။ Pathogen သည် ပျံ့နှံ့ရန် အရေပြား-မှ-အရေပြား တိုက်ရိုက်ထိတွေ့မှု မလိုအပ်သောကြောင့် လမ်းကြောင်းနှစ်ခုစလုံးကို Indirect ဟု သတ်မှတ်ရသော်လည်း၊ ကာကွယ်နည်းများမှာ လုံးဝ ကွဲပြားသည်- သောက်ရေကို ပြုတ်ခြင်း သို့မဟုတ် ကုသခြင်းနှင့် ရေဆိုးစနစ် တိုးတက်စေခြင်းသည် ရေမှတစ်ဆင့် ကူးစက်သော ရောဂါများကို ကာကွယ်ပေးပြီး၊ ချောင်းဆိုးသောအခါ ခံတွင်းကို ဖုံးအုပ်ခြင်းနှင့် ပုံမှန် လက်ဆေးခြင်းသည် Droplet-Spread ရောဂါများကို ကာကွယ်ရန် ကူညီသည်။\n\n၎င်း၏ ဟောပြောချက် အဆုံးတွင် မမလေးသည် ရွာအတွက် လက်တွေ့ ပြောင်းလဲမှုသုံးခုကို ဖော်ထုတ်ခဲ့သည်- ရေဆိုးညစ်ညမ်းမှုကို ကာကွယ်ရန် ရေတွင်းနှင့် ဝေးသော နေရာတွင် သင့်တော်သော အိမ်သာစနစ် တည်ဆောက်ခြင်း၊ ပို၍ ဘေးကင်းသော ရေတွင်းအသစ် တူးဖော်နိုင်သည်အထိ သောက်ရေအားလုံးကို ပြုတ်ခြင်းနှင့်၊ ညစ်ညမ်းသောရေ သို့မဟုတ် မျက်နှာပြင်များကို ထိတွေ့သော လက်များသည် အစားအစာ သို့မဟုတ် ခံတွင်းထဲသို့ တိုက်ရိုက် Pathogen များကို ပျံ့နှံ့စေနိုင်သောကြောင့် ဆပ်ပြာဖြင့် ပုံမှန် လက်ဆေးခြင်းကို သင်ကြားပေးခြင်း တို့ဖြစ်သည်။ ရောဂါတစ်ခု ပျံ့နှံ့ပုံကို အတိအကျ နားလည်ခြင်းသည် ကာကွယ်ရေးအစီအစဉ် တစ်ခုခုကို ဒီဇိုင်းဆွဲမီ မရှိမဖြစ် လိုအပ်ကြောင်း သူမက အလေးထား ဖော်ပြခဲ့သည်၊ အကြောင်းမှာ ကူးစက်လမ်းကြောင်းတစ်ခုအတွက် အလုပ်ဖြစ်သော နည်းဗျူဟာ -- တိုက်ရိုက်ထိတွေ့မှု ရောဂါများအတွက် လက်ဆေးခြင်းကဲ့သို့ -- သည် အဓိကအားဖြင့် ညစ်ညမ်းသောရေမှ ပျံ့နှံ့သော ရောဂါတစ်ခုကို ရပ်တန့်ရန် အနည်းငယ်သာ ထိရောက်နိုင်သောကြောင့် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, how did the well become a source of infection?",
            questionMy:
                "ရေတွင်းသည် ကူးစက်မှု၏ အရင်းအမြစ်တစ်ခု အဘယ်သို့ ဖြစ်လာကြောင်းကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It became contaminated with sewage during heavy rains",
              "It ran completely dry",
              "It was filled with too much salt",
              "Someone poisoned it deliberately",
            ],
            optionsMy: [
              "မိုးသည်းထန်စွာ ရွာနေချိန်တွင် ရေဆိုးဖြင့် ညစ်ညမ်းသွားခြင်း",
              "လုံးဝ ခန်းခြောက်သွားခြင်း",
              "ဆားလွန်ကဲစွာ ပါဝင်သွားခြင်း",
              "တစ်စုံတစ်ဦးက တမင်တကာ အဆိပ်ခတ်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first sentence of paragraph 1 describing the outbreak's origin.",
              "This is a case of waterborne disease transmission.",
            ],
            hintsMy: [
              "ကူးစက်ပွားလှိုင်းကြီး၏ အစကို ဖော်ပြသော စာပိုဒ် ၁ ၏ ပထမစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ ရေမှတစ်ဆင့် ကူးစက်သော ရောဂါ၏ ဥပမာတစ်ခု ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why are both waterborne and droplet-spread diseases considered 'indirect' transmission?",
            questionMy:
                "ရေမှတစ်ဆင့်နှင့် Droplet မှတစ်ဆင့် ပျံ့နှံ့သော ရောဂါနှစ်မျိုးလုံးကို 'Indirect' ကူးစက်မှုဟု သတ်မှတ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Neither requires direct skin-to-skin contact to spread",
              "Both only happen at night",
              "Both are caused by the same exact pathogen",
              "Neither can be prevented",
            ],
            optionsMy: [
              "နှစ်ခုစလုံး ပျံ့နှံ့ရန် အရေပြား-မှ-အရေပြား တိုက်ရိုက် ထိတွေ့မှု မလိုအပ်ခြင်း",
              "နှစ်ခုစလုံး ညအချိန်တွင်သာ ဖြစ်ပွားခြင်း",
              "နှစ်ခုစလုံးကို Pathogen တစ်မျိုးတည်းက ဖြစ်စေခြင်း",
              "နှစ်ခုစလုံးကို ကာကွယ်၍ မရနိုင်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining why both routes are indirect.",
              "Direct contact would require touching, which neither route requires.",
            ],
            hintsMy: [
              "လမ်းကြောင်းနှစ်ခုစလုံး Indirect ဖြစ်သည့် အကြောင်းရင်းကို ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Direct Contact အတွက် ထိတွေ့မှု လိုအပ်မည်ဖြစ်ပြီး လမ်းကြောင်းနှစ်ခုစလုံးတွင် မလိုအပ်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, which prevention method is specific to droplet-spread diseases, not waterborne ones?",
            questionMy:
                "ရေမှတစ်ဆင့် ပျံ့နှံ့သော ရောဂါများ မဟုတ်ဘဲ Droplet-Spread ရောဂါများအတွက် တိတိကျကျ ကာကွယ်နည်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Covering your mouth when coughing",
              "Boiling drinking water",
              "Improving sewage sanitation",
              "Digging a new well",
            ],
            optionsMy: [
              "ချောင်းဆိုးသောအခါ ခံတွင်းကို ဖုံးအုပ်ခြင်း",
              "သောက်ရေကို ပြုတ်ခြင်း",
              "ရေဆိုးစနစ် တိုးတက်စေခြင်း",
              "ရေတွင်းအသစ် တူးဖော်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "The other three options all address waterborne disease prevention.",
              "This action directly targets stopping droplets from spreading through the air.",
            ],
            hintsMy: [
              "ကျန်ရွေးချယ်စရာသုံးခုစလုံးသည် ရေမှတစ်ဆင့် ကူးစက်သော ရောဂါ ကာကွယ်ရေးကို ဖြေရှင်းသည်။",
              "ဤလုပ်ဆောင်ချက်သည် လေထုမှတစ်ဆင့် ရေစက်များ ပျံ့နှံ့မှု ရပ်တန့်ရန် တိုက်ရိုက် ရည်ရွယ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What key lesson did Ma Ma Lay emphasise at the end of her talk?",
            questionMy:
                "မမလေး၏ ဟောပြောချက် အဆုံးတွင် အဓိက သင်ခန်းစာ မည်သည်ကို အလေးထား ဖော်ပြခဲ့သနည်း။",
            optionsEn: [
              "Understanding a disease's transmission route is essential before designing a prevention plan",
              "All diseases spread in exactly the same way",
              "Handwashing alone prevents every disease",
              "Prevention plans do not need to consider how a disease spreads",
            ],
            optionsMy: [
              "ကာကွယ်ရေးအစီအစဉ် ဒီဇိုင်းဆွဲမီ ရောဂါတစ်ခု၏ ကူးစက်လမ်းကြောင်းကို နားလည်ခြင်း မရှိမဖြစ် လိုအပ်ခြင်း",
              "ရောဂါအားလုံးသည် အတိအကျ တူညီသော နည်းလမ်းဖြင့် ပျံ့နှံ့ခြင်း",
              "လက်ဆေးခြင်းတစ်ခုတည်းက ရောဂါတိုင်းကို ကာကွယ်ပေးနိုင်ခြင်း",
              "ကာကွယ်ရေးအစီအစဉ်များသည် ရောဂါ ပျံ့နှံ့ပုံကို ထည့်သွင်းစဉ်းစားရန် မလိုအပ်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of paragraph 3.",
              "A strategy for one transmission route might not work for another.",
            ],
            hintsMy: [
              "စာပိုဒ် ၃ ၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ကူးစက်လမ်းကြောင်းတစ်ခုအတွက် နည်းဗျူဟာသည် အခြားတစ်ခုအတွက် အလုပ်မဖြစ်ချေ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w19-d5",
      dayNumber: 5,
      titleEn: "Week 19 Recap: Diseases and Pathogens",
      titleMy:
          "တစ်ဆယ့်ကိုးပတ် ပြန်လည်သုံးသပ်ခြင်း - ရောဂါများနှင့် ရောဂါပိုးများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A pathogen is best defined as...",
          questionMy: "Pathogen ကို အကောင်းဆုံး အဓိပ္ပာယ်ဖွင့်ဆိုသည့်အရာမှာ...",
          optionsEn: [
            "A disease-causing microorganism",
            "A type of antibody",
            "A blood cell",
            "A vitamin",
          ],
          optionsMy: [
            "ရောဂါဖြစ်စေသော အဏုဇီဝပိုးမွှား",
            "Antibody အမျိုးအစားတစ်ခု",
            "သွေးဆဲလ်တစ်ခု",
            "Vitamin တစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which is the most effective prevention for a disease spread through contaminated water?",
          questionMy:
              "ညစ်ညမ်းသော ရေမှတစ်ဆင့် ပျံ့နှံ့သော ရောဂါအတွက် အထိရောက်ဆုံး ကာကွယ်နည်းမှာ အဘယ်နည်း",
          optionsEn: [
            "Boiling or treating drinking water",
            "Wearing gloves only",
            "Avoiding sunlight",
            "Eating more sugar",
          ],
          optionsMy: [
            "သောက်ရေကို ပြုတ်ခြင်း သို့မဟုတ် ကုသခြင်း",
            "လက်အိတ်တပ်ခြင်းသာ",
            "နေရောင်ကို ရှောင်ခြင်း",
            "သကြားပိုစားခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A mosquito that transmits malaria without becoming ill itself is called a...",
          questionMy:
              "Malaria ကို ကိုယ်တိုင် မဖျားနာဘဲ ကူးစက်စေသော ခြင်ကို ဘာဟု ခေါ်သနည်း",
          optionsEn: ["Vector", "Antigen", "Antibody", "Pathogen only"],
          optionsMy: ["Vector", "Antigen", "Antibody", "Pathogen သာ"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 20 (Capstone): "Circulation and Disease Studio"
// =====================================================================

const CourseWeekDef _igcseBioWeek20 = CourseWeekDef(
  id: "course-igcse-bio-w20",
  weekNumber: 20,
  titleEn: "Circulation and Disease Studio",
  titleMy: "သွေးလည်ပတ်မှုနှင့် ရောဂါဗေဒ အလုပ်ရုံ",
  xpReward: 20,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w20-d1",
      dayNumber: 1,
      titleEn: "Investigating Heart Rate",
      titleMy: "နှလုံးခုန်နှုန်း စူးစမ်းလေ့လာခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Why does heart rate increase during exercise?",
          questionMy:
              "ကိုယ်လက်လှုပ်ရှားမှု ပြုလုပ်စဉ် နှလုံးခုန်နှုန်း အဘယ်ကြောင့် တိုးလာသနည်း။",
          optionsEn: [
            "Muscles need more oxygen and glucose delivered faster, and more carbon dioxide removed",
            "The heart randomly speeds up for no biological reason",
            "Exercise stops the heart from pumping blood",
            "Heart rate always stays exactly the same regardless of activity",
          ],
          optionsMy: [
            "ကြွက်သားများသည် အောက်ဆီဂျင်နှင့် ဂလူးကို့စ်ကို ပို၍ မြန်ဆန်စွာ ရရှိရန်နှင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို ပို၍ ဖယ်ရှားရန် လိုအပ်သောကြောင့်",
            "နှလုံးသည် ဇီဝဗေဒဆိုင်ရာ အကြောင်းရင်းမရှိဘဲ ကျပန်း ပိုမြန်လာခြင်း",
            "ကိုယ်လက်လှုပ်ရှားမှုက နှလုံးကို သွေးပန့်ခြင်းမှ ရပ်တန့်စေခြင်း",
            "လှုပ်ရှားမှု မည်သို့ပင်ရှိစေ နှလုံးခုန်နှုန်းသည် အတိအကျ တူညီနေဆဲဖြစ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Exercising muscles respire faster, using more oxygen and glucose and producing more carbon dioxide.",
            "A faster heart rate delivers blood (and its dissolved substances) around the body more quickly.",
          ],
          hintsMy: [
            "ကိုယ်လက်လှုပ်ရှားနေသော ကြွက်သားများသည် ပို၍ မြန်ဆန်စွာ အသက်ရှူပြီး အောက်ဆီဂျင်နှင့် ဂလူးကို့စ် ပို၍ သုံးကာ ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပို၍ ထုတ်လုပ်သည်။",
            "ပိုမြန်သော နှလုံးခုန်နှုန်းသည် သွေး (နှင့် ၎င်းတွင်ပျော်ဝင်ထားသော ပစ္စည်းများ) ကို ခန္ဓာကိုယ်တစ်ဝန်း ပို၍ မြန်ဆန်စွာ ပို့ဆောင်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a heart rate investigation, why should a student rest for the same number of minutes between each exercise trial?",
          questionMy:
              "နှလုံးခုန်နှုန်း စူးစမ်းလေ့လာမှုတွင် ကျောင်းသားတစ်ဦးသည် စမ်းသပ်မှုတစ်ခုစီကြား အဘယ်ကြောင့် မိနစ်အရေအတွက် တူညီစွာ နားရမည်နည်း။",
          optionsEn: [
            "To let heart rate return to a comparable resting level before the next trial, keeping the test fair",
            "Because resting has no effect on heart rate",
            "To make the experiment take longer for no reason",
            "Because heart rate cannot be measured while resting",
          ],
          optionsMy: [
            "နောက်စမ်းသပ်မှုမတိုင်မီ နှလုံးခုန်နှုန်းကို နှိုင်းယှဉ်နိုင်သော နားနေချိန် အဆင့်သို့ ပြန်ရောက်စေရန်၊ စမ်းသပ်မှုကို တရားမျှတစေရန်",
            "အနားယူခြင်းက နှလုံးခုန်နှုန်းအပေါ် သက်ရောက်မှု မရှိသောကြောင့်",
            "အကြောင်းမဲ့ စမ်းသပ်မှုကို ပို၍ ကြာမြင့်စေရန်",
            "အနားယူနေစဉ် နှလုံးခုန်နှုန်းကို တိုင်းတာ၍မရသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is an example of controlling variables to make a fair comparison between trials.",
            "If rest time varied, later trials might start from a higher baseline, skewing the results.",
          ],
          hintsMy: [
            "ဤသည်မှာ စမ်းသပ်မှုများကြား တရားမျှတသော နှိုင်းယှဉ်မှု ဖြစ်စေရန် Variable များ ထိန်းချုပ်ခြင်း၏ ဥပမာ ဖြစ်သည်။",
            "အနားယူချိန် မတူညီပါက နောက်ပိုင်း စမ်းသပ်မှုများသည် ပိုမြင့်သော အခြေခံအဆင့်မှ စတင်နိုင်ပြီး ရလဒ်များကို ကွာဟစေနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A trained athlete typically has a lower resting heart rate than an untrained person. What is the most likely biological explanation?",
          questionMy:
              "လေ့ကျင့်ထားသော အားကစားသမားတစ်ဦးတွင် လေ့ကျင့်မှု မရှိသူထက် နားနေချိန် နှလုံးခုန်နှုန်း ပိုနိမ့်လေ့ရှိသည်။ အဖြစ်နိုင်ဆုံး ဇီဝဗေဒဆိုင်ရာ ရှင်းပြချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Their heart has become stronger and pumps more blood per beat, so it needs to beat less often",
            "Their heart is smaller and weaker",
            "They have fewer red blood cells",
            "Athletes never need oxygen",
          ],
          optionsMy: [
            "၎င်းတို့၏ နှလုံးသည် ပို၍ အားကောင်းလာပြီး တစ်ချက်ချင်းလျှင် သွေးပို၍ ပန့်နိုင်သောကြောင့် ခုန်ရသည့်ကြိမ်နှုန်း လျော့နည်းသွားခြင်း",
            "၎င်းတို့၏ နှလုံးသည် ပိုသေးငယ်ပြီး အားနည်းသောကြောင့်",
            "၎င်းတို့တွင် သွေးနီဥ ပိုနည်းသောကြောင့်",
            "အားကစားသမားများသည် အောက်ဆီဂျင် လုံးဝ မလိုအပ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Regular training strengthens the heart muscle, similar to how any muscle strengthens with exercise.",
            "A stronger heart pumps a larger volume of blood with each beat (a larger stroke volume).",
          ],
          hintsMy: [
            "ပုံမှန် လေ့ကျင့်မှုသည် ကြွက်သားတစ်ခုခု ကိုယ်လက်လှုပ်ရှားမှုဖြင့် ခိုင်ခံ့လာသကဲ့သို့ နှလုံးကြွက်သားကို ခိုင်ခံ့စေသည်။",
            "ပို၍ အားကောင်းသော နှလုံးသည် ခုန်တစ်ချက်လျှင် သွေး ပမာဏပို၍ ပန့်နိုင်သည် (Stroke Volume ပိုကြီးခြင်း)။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w20-d2",
      dayNumber: 2,
      titleEn: "Match: Term 5 Key Terms",
      titleMy: "တွဲစပ်ကြမည် - ပဉ္စမနှစ်ဝက် သော့ချက်စကားလုံးများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w20-dm-1",
          termEn: "Pulse",
          termMy: "Pulse",
          matchEn:
              "The rhythmic expansion of an artery wall, felt at points like the wrist, caused by each heartbeat",
          matchMy:
              "နှလုံးခုန်တစ်ချက်စီကြောင့် ဖြစ်ပေါ်ပြီး လက်ကောက်ဝတ်ကဲ့သို့သော နေရာများတွင် ခံစားနိုင်သော Artery နံရံ၏ စည်းချက်ညီညီ ချဲ့ထွင်မှု",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w20-dm-2",
          termEn: "Resting heart rate",
          termMy: "Resting Heart Rate",
          matchEn:
              "The number of times the heart beats per minute while a person is at rest",
          matchMy:
              "လူတစ်ဦး အနားယူနေချိန် တစ်မိနစ်လျှင် နှလုံးခုန်သည့် အကြိမ်ရေ",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w20-dm-3",
          termEn: "Epidemic",
          termMy: "Epidemic",
          matchEn:
              "A sudden increase in cases of a disease spreading rapidly through a population",
          matchMy:
              "လူဦးရေတစ်ရပ်တွင် လျင်မြန်စွာ ပျံ့နှံ့နေသော ရောဂါဖြစ်ပွားမှု ရုတ်တရက် တိုးလာခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w20-dm-4",
          termEn: "Immune response",
          termMy: "Immune Response",
          matchEn:
              "The body's reaction to a pathogen, including phagocytosis and antibody production",
          matchMy:
              "Phagocytosis နှင့် Antibody ထုတ်လုပ်ခြင်းအပါအဝင် Pathogen တစ်ခုအပေါ် ခန္ဓာကိုယ်၏ တုံ့ပြန်မှု",
          colorValue: 0xFF4CAF50,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w20-d3",
      dayNumber: 3,
      titleEn: "Sort: Circulation or Disease Topic?",
      titleMy: "စီစစ်ကြမည် - Circulation ဆိုင်ရာလား Disease ဆိုင်ရာလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Circulation Topic", "Disease and Immunity Topic"],
        bucketsMy: ["Circulation ဆိုင်ရာ", "Disease နှင့် Immunity ဆိုင်ရာ"],
        items: [
          SortingItem(
            id: "igcsebio-w20-sort-1",
            labelEn: "Measuring how heart rate changes after climbing stairs",
            labelMy:
                "လှေကားတက်ပြီးနောက် နှလုံးခုန်နှုန်း မည်သို့ ပြောင်းလဲကြောင်း တိုင်းတာခြင်း",
            correctBucketEn: "Circulation Topic",
            correctBucketMy: "Circulation ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsebio-w20-sort-2",
            labelEn:
                "Explaining why a vaccinated population has fewer disease outbreaks",
            labelMy:
                "ကာကွယ်ဆေးထိုးထားသော လူဦးရေတွင် ရောဂါဖြစ်ပွားမှု အနည်းငယ်သာ ရှိသည့် အကြောင်းရင်းကို ရှင်းပြခြင်း",
            correctBucketEn: "Disease and Immunity Topic",
            correctBucketMy: "Disease နှင့် Immunity ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsebio-w20-sort-3",
            labelEn: "Comparing artery and vein wall thickness",
            labelMy: "Artery နှင့် Vein နံရံ ထူမှုကို နှိုင်းယှဉ်ခြင်း",
            correctBucketEn: "Circulation Topic",
            correctBucketMy: "Circulation ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsebio-w20-sort-4",
            labelEn:
                "Tracking how a waterborne disease spread through a village",
            labelMy:
                "ရေမှတစ်ဆင့် ကူးစက်သော ရောဂါတစ်ခု ရွာတစ်ရွာတွင် မည်သို့ ပျံ့နှံ့ကြောင်း ခြေရာခံခြင်း",
            correctBucketEn: "Disease and Immunity Topic",
            correctBucketMy: "Disease နှင့် Immunity ဆိုင်ရာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w20-d4",
      dayNumber: 4,
      titleEn: "Reading: Coach Zaw Lin's Training Log",
      titleMy: "စာဖတ်ခြင်း - နည်းပြ ဇော်လင်း၏ လေ့ကျင့်မှု မှတ်တမ်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Coach Zaw Lin's Training Log",
        titleMy: "နည်းပြ ဇော်လင်း၏ လေ့ကျင့်မှု မှတ်တမ်း",
        passageEn:
            "Coach Zaw Lin trained a school running team, and each term he asked his students to record their resting heart rate and their heart rate immediately after a fixed two-minute run, then again after two minutes of rest. He explained that comparing these numbers over a full training season would reveal something important about each runner's fitness progress.\n\nAt the start of the season, most students' resting heart rates were between 75 and 85 beats per minute, and their heart rate after the run spiked sharply before slowly returning toward resting levels during the two-minute recovery period. By the end of the season, after months of regular training, Coach Zaw Lin noted that most students' resting heart rates had dropped to between 60 and 70 beats per minute, and their hearts also recovered back to near-resting levels noticeably faster after the same two-minute run.\n\nHe explained to the team that both changes reflected the same underlying cause: their heart muscles had grown stronger through repeated exercise, in the same way any muscle strengthens with regular use, allowing each heartbeat to pump a larger volume of blood. Because a stronger heart could deliver the same total amount of oxygenated blood to the muscles using fewer beats per minute, resting heart rate dropped, and because it could also more efficiently clear the oxygen debt built up during exercise, recovery time shortened too. Coach Zaw Lin used this data every term as concrete, measurable evidence of fitness improvement, rather than just relying on how fast students felt they were running.",
        passageMy:
            "နည်းပြ ဇော်လင်းသည် ကျောင်း အပြေးအလွှားအသင်းကို လေ့ကျင့်ပေးခဲ့ပြီး၊ အခန်းစဉ်တိုင်းတွင် ကျောင်းသားများအား ၎င်းတို့၏ နားနေချိန် နှလုံးခုန်နှုန်းနှင့် သတ်မှတ်ထားသော မိနစ်နှစ်မိနစ် ပြေးလွှားပြီးချက်ချင်း နှလုံးခုန်နှုန်း၊ ထို့နောက် မိနစ်နှစ်မိနစ် အနားယူပြီးနောက် ထပ်မံမှတ်တမ်းတင်ရန် တောင်းဆိုခဲ့သည်။ ဤကိန်းဂဏန်းများကို လေ့ကျင့်ကာလတစ်ခုလုံးတစ်လျှောက် နှိုင်းယှဉ်ခြင်းက ပြေးသားတစ်ဦးစီ၏ ကျန်းမာရေး တိုးတက်မှုအကြောင်း အရေးကြီးသောအရာတစ်ခုကို ဖော်ထုတ်ပေးလိမ့်မည်ဟု သူ ရှင်းပြခဲ့သည်။\n\nလေ့ကျင့်ကာလ အစတွင် ကျောင်းသားအများစု၏ နားနေချိန် နှလုံးခုန်နှုန်းသည် တစ်မိနစ်လျှင် ၇၅ မှ ၈၅ ကြိမ်ကြား ရှိပြီး၊ ပြေးလွှားပြီးနောက် နှလုံးခုန်နှုန်း ချက်ချင်းမြင့်တက်သွားကာ မိနစ်နှစ်မိနစ် နားနေချိန်အတွင်း နားနေအဆင့်ဆီသို့ တဖြည်းဖြည်း ပြန်လျော့သွားသည်။ လေ့ကျင့်ကာလ အဆုံးတွင် လများစွာ ပုံမှန်လေ့ကျင့်ပြီးနောက် ကျောင်းသားအများစု၏ နားနေချိန် နှလုံးခုန်နှုန်းသည် တစ်မိနစ်လျှင် ၆၀ မှ ၇၀ ကြိမ်ကြားသို့ ကျဆင်းသွားကြောင်းနှင့် တူညီသော မိနစ်နှစ်မိနစ် ပြေးလွှားပြီးနောက် ၎င်းတို့၏ နှလုံးများသည် နားနေအဆင့်နီးပါးသို့ သိသိသာသာ ပို၍ မြန်ဆန်စွာ ပြန်လည်ရောက်ရှိသွားကြောင်း နည်းပြ ဇော်လင်းက မှတ်ချက်ပြုခဲ့သည်။\n\nအပြောင်းအလဲနှစ်ခုစလုံးသည် အခြေခံ အကြောင်းရင်းတစ်ခုတည်းကို ထင်ဟပ်နေကြောင်း သူသည် အသင်းအား ရှင်းပြခဲ့သည်- ၎င်းတို့၏ နှလုံးကြွက်သားများသည် အခြားကြွက်သားတစ်ခုခု ပုံမှန်သုံးစွဲမှုဖြင့် ခိုင်ခံ့လာသကဲ့သို့ ထပ်ခါထပ်ခါ ကိုယ်လက်လှုပ်ရှားမှုမှတစ်ဆင့် ပို၍ အားကောင်းလာကာ နှလုံးခုန်တစ်ချက်စီက သွေးပမာဏ ပို၍ ပန့်နိုင်လာသည်။ ပို၍ အားကောင်းသော နှလုံးသည် တစ်မိနစ်လျှင် ခုန်ချက် နည်းသော်လည်း Oxygen ပါသော သွေး ပမာဏ တူညီစွာ ကြွက်သားများသို့ ပို့ဆောင်နိုင်သောကြောင့် နားနေချိန် နှလုံးခုန်နှုန်း ကျဆင်းသွားပြီး၊ ကိုယ်လက်လှုပ်ရှားမှုအတွင်း တည်ဆောက်ထားသော Oxygen Debt ကို ပို၍ ထိရောက်စွာ ရှင်းလင်းနိုင်သောကြောင့် ပြန်လည်ကောင်းမွန်ချိန်လည်း တိုတောင်းသွားသည်။ နည်းပြ ဇော်လင်းသည် ကျောင်းသားများ မည်မျှမြန်ဆန်စွာ ခံစားရသည်ဟု အားထားရုံသာမက အခန်းစဉ်တိုင်း ဤဒေတာကို ကျန်းမာရေးတိုးတက်မှု၏ တိကျသော၊ တိုင်းတာနိုင်သော အထောက်အထားအဖြစ် အသုံးပြုခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what happened to resting heart rate by the end of the season?",
            questionMy:
                "လေ့ကျင့်ကာလ အဆုံးတွင် နားနေချိန် နှလုံးခုန်နှုန်း အဘယ်ဖြစ်ခဲ့ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It dropped, from 75-85 to 60-70 beats per minute for most students",
              "It increased dramatically",
              "It stayed exactly the same",
              "It became impossible to measure",
            ],
            optionsMy: [
              "ကျောင်းသားအများစုတွင် တစ်မိနစ်လျှင် ၇၅-၈၅ ကြိမ်မှ ၆၀-၇၀ ကြိမ်သို့ ကျဆင်းသွားခြင်း",
              "သိသိသာသာ မြင့်တက်သွားခြင်း",
              "အတိအကျ တူညီနေဆဲ ဖြစ်ခြင်း",
              "တိုင်းတာ၍ မရနိုင်တော့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the specific numbers given at the start and end of the season.",
              "This is described as a drop, consistent with improved fitness.",
            ],
            hintsMy: [
              "လေ့ကျင့်ကာလ အစနှင့် အဆုံးတွင် ပေးထားသော တိကျသော ကိန်းဂဏန်းများကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်ကို ကျဆင်းသွားခြင်းဟု ဖော်ပြထားပြီး ကျန်းမာရေး တိုးတက်မှုနှင့် ကိုက်ညီသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did resting heart rate drop as fitness improved?",
            questionMy:
                "ကျန်းမာရေး တိုးတက်လာသည်နှင့်အမျှ နားနေချိန် နှလုံးခုန်နှုန်း အဘယ်ကြောင့် ကျဆင်းသွားခဲ့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "A stronger heart pumps more blood per beat, so fewer beats are needed to deliver the same oxygen",
              "The heart became smaller and weaker",
              "The students stopped needing oxygen",
              "The students ran less often",
            ],
            optionsMy: [
              "ပို၍ အားကောင်းသော နှလုံးသည် ခုန်တစ်ချက်လျှင် သွေးပို၍ ပန့်နိုင်သောကြောင့် Oxygen ပမာဏတူတူ ပို့ဆောင်ရန် ခုန်ချက် နည်းနည်းသာ လိုအပ်ခြင်း",
              "နှလုံးသည် ပိုသေးငယ်၍ အားနည်းလာခြင်း",
              "ကျောင်းသားများ Oxygen လိုအပ်ခြင်း ရပ်တန့်သွားခြင်း",
              "ကျောင်းသားများ ပြေးလွှားမှု နည်းသွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the explanation about the heart pumping 'a larger volume of blood' per beat.",
              "Fewer, more powerful beats can deliver the same total blood flow.",
            ],
            hintsMy: [
              "နှလုံးက ခုန်တစ်ချက်လျှင် 'သွေးပမာဏပို၍' ပန့်ကြောင်း ရှင်းချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ခုန်ချက် နည်းသော်လည်း ပို၍ အားကောင်းသော ခုန်ချက်များသည် စုစုပေါင်း သွေးစီးဆင်းမှု တူညီစွာ ပို့ဆောင်နိုင်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what happened to recovery time after exercise as fitness improved?",
            questionMy:
                "ကျန်းမာရေး တိုးတက်လာသည်နှင့်အမျှ ကိုယ်လက်လှုပ်ရှားမှုပြီးနောက် ပြန်လည်ကောင်းမွန်ချိန် အဘယ်ဖြစ်ခဲ့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It shortened, since the heart could clear the oxygen debt more efficiently",
              "It lengthened significantly",
              "It became impossible to measure",
              "It had no relationship to fitness at all",
            ],
            optionsMy: [
              "တိုတောင်းသွားခြင်း၊ အကြောင်းမှာ နှလုံးက Oxygen Debt ကို ပို၍ ထိရောက်စွာ ရှင်းလင်းနိုင်သောကြောင့်",
              "သိသိသာသာ ပို၍ ရှည်လျားသွားခြင်း",
              "တိုင်းတာ၍ မရနိုင်တော့ခြင်း",
              "ကျန်းမာရေးနှင့် လုံးဝ မသက်ဆိုင်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about recovery time shortening.",
              "This is directly linked to the heart's improved efficiency at clearing oxygen debt.",
            ],
            hintsMy: [
              "ပြန်လည်ကောင်းမွန်ချိန် တိုတောင်းသွားကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ Oxygen Debt ရှင်းလင်းရာတွင် နှလုံး၏ တိုးတက်သော ထိရောက်မှုနှင့် တိုက်ရိုက် ဆက်စပ်နေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Coach Zaw Lin value this heart rate data over students' own perception of their fitness?",
            questionMy:
                "နည်းပြ ဇော်လင်းသည် ကျောင်းသားများ၏ ကိုယ်ပိုင်ခံစားချက်ထက် ဤနှလုံးခုန်နှုန်း ဒေတာကို အဘယ်ကြောင့် တန်ဖိုးထားခဲ့သနည်း။",
            optionsEn: [
              "It gave concrete, measurable evidence of fitness improvement",
              "Students always lied about their fitness",
              "Heart rate is easier to fake than running speed",
              "He did not actually value the data",
            ],
            optionsMy: [
              "ကျန်းမာရေး တိုးတက်မှု၏ တိကျသော၊ တိုင်းတာနိုင်သော အထောက်အထားကို ပေးသောကြောင့်",
              "ကျောင်းသားများသည် ၎င်းတို့၏ ကျန်းမာရေးအကြောင်း အမြဲ လိမ်ညာသောကြောင့်",
              "နှလုံးခုန်နှုန်းသည် ပြေးလွှားနှုန်းထက် လိမ်ညာရန် ပို၍ လွယ်ကူသောကြောင့်",
              "သူသည် ဒေတာကို အမှန်တကယ် တန်ဖိုးမထားခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of the passage.",
              "Numbers provide objective evidence, unlike subjective feelings.",
            ],
            hintsMy: [
              "စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ကိန်းဂဏန်းများသည် ကိုယ်ပိုင်ခံစားချက်နှင့် မတူဘဲ ဓမ္မဓိဋ္ဌာန်ကျသော အထောက်အထားကို ပေးသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w20-d5",
      dayNumber: 5,
      titleEn: "Term 5 Recap: Transport in Animals and Disease",
      titleMy:
          "ပဉ္စမအပိုင်း ပြန်လည်သုံးသပ်ခြင်း - တိရစ္ဆာန်များရှိ သယ်ယူပို့ဆောင်ရေးနှင့် ရောဂါဗေဒ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which chamber of the heart has the thickest wall?",
          questionMy: "နှလုံး၏ မည်သည့်အခန်းတွင် နံရံအထူဆုံး ရှိသနည်း",
          optionsEn: [
            "Left ventricle",
            "Right atrium",
            "Left atrium",
            "Right ventricle",
          ],
          optionsMy: [
            "ဘယ်ဘက် Ventricle",
            "ညာဘက် Atrium",
            "ဘယ်ဘက် Atrium",
            "ညာဘက် Ventricle",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "White blood cells that engulf pathogens are carrying out...",
          questionMy:
              "ရောဂါပိုးများကို ဝိုင်းအုပ်နေသော သွေးဖြူဥများသည် ...ကို ပြုလုပ်နေသည်",
          optionsEn: [
            "Phagocytosis",
            "Photosynthesis",
            "Transpiration",
            "Translocation",
          ],
          optionsMy: [
            "Phagocytosis",
            "Photosynthesis",
            "Transpiration",
            "Translocation",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which of these is an example of an indirect disease transmission route?",
          questionMy:
              "အောက်ပါတို့အနက် သွယ်ဝိုက် ရောဂါကူးစက်မှု လမ်းကြောင်း၏ ဥပမာမှာ အဘယ်နည်း",
          optionsEn: [
            "Drinking contaminated water",
            "Shaking hands with an infected person",
            "Direct skin contact",
            "Kissing",
          ],
          optionsMy: [
            "ညစ်ညမ်းသောရေ သောက်ခြင်း",
            "ကူးစက်ခံရသူနှင့် လက်ဆွဲနှုတ်ဆက်ခြင်း",
            "အရေပြား တိုက်ရိုက်ထိတွေ့မှု",
            "နမ်းခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Passive immunity differs from active immunity because...",
          questionMy:
              "Passive Immunity သည် Active Immunity နှင့် ကွဲပြားသည့်အကြောင်းရင်းမှာ...",
          optionsEn: [
            "It does not create memory cells, so protection fades faster",
            "It always lasts a lifetime",
            "It is stronger than active immunity",
            "It requires no antibodies at all",
          ],
          optionsMy: [
            "Memory Cell များ မဖန်တီးနိုင်သောကြောင့် ကာကွယ်မှု ပို၍ မြန်ဆန်စွာ ကျဆင်းခြင်း",
            "အမြဲတမ်း တစ်သက်တာ ကြာရှည်ခံခြင်း",
            "Active Immunity ထက် ပို၍ အားကောင်းခြင်း",
            "Antibody လုံးဝ မလိုအပ်ခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 5: "Transport in Animals and Disease"
// (Weeks 17-20)
// =====================================================================

const CourseTermDef igcseBiologyTerm5 = CourseTermDef(
  id: "course-igcse-bio-t5",
  termNumber: 5,
  titleEn: "Transport in Animals and Disease",
  titleMy: "တိရစ္ဆာန်များရှိ သယ်ယူပို့ဆောင်ရေးနှင့် ရောဂါဗေဒ",
  certificateTitleEn: "Transport in Animals and Disease",
  certificateTitleMy: "တိရစ္ဆာန်များရှိ သယ်ယူပို့ဆောင်ရေးနှင့် ရောဂါဗေဒ",
  weeks: [_igcseBioWeek17, _igcseBioWeek18, _igcseBioWeek19, _igcseBioWeek20],
);

// =====================================================================
// Week 21: "Gas Exchange in Humans"
// =====================================================================

const CourseWeekDef _igcseBioWeek21 = CourseWeekDef(
  id: "course-igcse-bio-w21",
  weekNumber: 21,
  titleEn: "Gas Exchange in Humans",
  titleMy: "လူသားတို့၏ ဓာတ်ငွေ့လဲလှယ်မှု (Gas Exchange)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w21-d1",
      dayNumber: 1,
      titleEn: "Alveoli: Built for Gas Exchange",
      titleMy: "Alveoli - ဓာတ်ငွေ့ဖလှယ်မှုအတွက် ဒီဇိုင်းထုတ်ထားသော",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which of these is NOT an adaptation of the alveoli for efficient gas exchange?",
          questionMy:
              "ထိရောက်သော ဓာတ်ငွေ့ဖလှယ်မှုအတွက် Alveoli ၏ လိုက်လျောညီထွေမှု မဟုတ်သည့်အရာမှာ အောက်ပါတို့အနက် အဘယ်နည်း။",
          optionsEn: [
            "Thick, tough walls to resist damage",
            "Walls only one cell thick, for a short diffusion path",
            "A large total surface area from millions of alveoli",
            "A moist lining and a good blood supply from surrounding capillaries",
          ],
          optionsMy: [
            "ပျက်စီးမှုကို ခံနိုင်ရန် ထူထပ်၍ ခိုင်မာသော နံရံ",
            "ဓာတ်ငွေ့ Diffuse ဖြတ်သန်းရသည့်အကွာအဝေး တိုတောင်းစေရန် ဆဲလ်တစ်ခုသာ ထူသော နံရံ",
            "Alveoli သန်းချီရှိခြင်းမှ ရလာသော စုစုပေါင်း မျက်နှာပြင်ဧရိယာ ကြီးမားခြင်း",
            "စိုစွတ်သော အလွှာနှင့် ဝန်းရံနေသော Capillary များမှ ကောင်းမွန်သော သွေးထောက်ပံ့မှု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Thick walls would make diffusion slower, not faster -- the opposite of an adaptation for gas exchange.",
            "Alveoli walls are specifically thin, not thick, to speed up diffusion.",
          ],
          hintsMy: [
            "နံရံထူလျှင် Diffusion ပို၍ ပိုမြန်မည့်အစား ပိုနှေးစေမည် -- ဓာတ်ငွေ့ဖလှယ်မှုအတွက် လိုက်လျောညီထွေမှု၏ ဆန့်ကျင်ဘက်ဖြစ်သည်။",
            "Alveoli နံရံများသည် Diffusion မြန်ဆန်စေရန် ထူသည့်အစား ပါးလွှာသော နံရံ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "During inhalation, what happens to the volume of the thorax (chest cavity)?",
          questionMy:
              "Inhalation (ရှူသွင်းခြင်း) စဉ် ရင်ဘတ်ခေါင်း (Thorax) ၏ ဝင်ရိုးဆမ်း အဘယ်ဖြစ်လာသနည်း။",
          optionsEn: [
            "It increases, causing pressure inside to decrease",
            "It decreases",
            "It stays exactly the same",
            "It disappears completely",
          ],
          optionsMy: [
            "ကြီးလာပြီး အတွင်းဖိအား လျော့ကျစေသည်",
            "လျော့ကျသွားသည်",
            "အတိအကျ တူညီနေသည်",
            "လုံးဝ ပျောက်ကွယ်သွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The intercostal muscles contract, moving the ribcage up and out, while the diaphragm contracts and flattens.",
            "A larger volume in the same enclosed space means lower pressure, drawing air in from outside.",
          ],
          hintsMy: [
            "Intercostal ကြွက်သားများ တွန့်ကျုံ့ကာ ရင်ခြေထင်းကို အထက်နှင့် အပြင်ဘက်သို့ ရွှေ့ပြီး Diaphragm ကလည်း တွန့်ကျုံ့ကာ ညီညာသွားသည်။",
            "တူညီသော ပိတ်ထားသောနေရာတွင် ဝင်ရိုးဆမ်းကြီးလာလျှင် ဖိအားနိမ့်လာပြီး အပြင်ဘက်မှ လေကို ဆွဲသွင်းသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which muscle moves downward and flattens during inhalation, then relaxes back into a dome shape during exhalation?",
          questionMy:
              "Inhalation စဉ် အောက်သို့ ရွေ့ပြီး ညီညာသွားကာ Exhalation စဉ် ပြန်ပြေလျော့ကာ ဒုံးပုံသဏ္ဌာန်သို့ ပြန်သွားသော ကြွက်သားမှာ အဘယ်နည်း။",
          optionsEn: [
            "The diaphragm",
            "The intercostal muscles only",
            "The heart",
            "The trachea",
          ],
          optionsMy: [
            "Diaphragm",
            "Intercostal ကြွက်သားများသာ",
            "နှလုံး",
            "လေပြွန် (Trachea)",
          ],
          correctIndex: 0,
          hintsEn: [
            "This sheet of muscle sits below the lungs, separating the thorax from the abdomen.",
            "When it contracts, it flattens; when it relaxes, it domes upward again.",
          ],
          hintsMy: [
            "ဤကြွက်သားလွှာသည် အဆုတ်များ၏ အောက်တွင် ရှိပြီး ရင်ဘတ်ခေါင်းနှင့် ဝမ်းဗိုက်ကို ခွဲခြားပေးသည်။",
            "တွန့်ကျုံ့သောအခါ ညီညာသွားပြီး ပြေလျော့သောအခါ ဒုံးပုံသို့ ပြန်ဖောင်းလာသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w21-d2",
      dayNumber: 2,
      titleEn: "Match: Respiratory System Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - အသက်ရှူလမ်းကြောင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w21-dm-1",
          termEn: "Alveoli",
          termMy: "Alveoli",
          matchEn: "Tiny air sacs in the lungs where gas exchange takes place",
          matchMy: "ဓာတ်ငွေ့ဖလှယ်မှု ဖြစ်ပေါ်ရာ အဆုတ်ရှိ လေအိတ်ငယ်လေးများ",
          colorValue: 0xFF03A9F4,
        ),
        DragMatchPair(
          id: "igcsebio-w21-dm-2",
          termEn: "Trachea",
          termMy: "Trachea",
          matchEn:
              "The windpipe, a tube supported by rings of cartilage that carries air to the bronchi",
          matchMy:
              "Cartilage အဝိုင်းများဖြင့် ထောက်ပံ့ထားပြီး Bronchi ဆီသို့ လေကို ပို့ဆောင်ပေးသော လေပြွန်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w21-dm-3",
          termEn: "Diaphragm",
          termMy: "Diaphragm",
          matchEn:
              "The sheet of muscle below the lungs that contracts and flattens during inhalation",
          matchMy:
              "Inhalation စဉ် တွန့်ကျုံ့ကာ ညီညာသွားသော အဆုတ်များ၏ အောက်ရှိ ကြွက်သားလွှာ",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w21-dm-4",
          termEn: "Intercostal muscles",
          termMy: "Intercostal ကြွက်သားများ",
          matchEn:
              "Muscles between the ribs that contract to move the ribcage up and out during inhalation",
          matchMy:
              "Inhalation စဉ် ရင်ခြေထင်းကို အထက်နှင့် အပြင်ဘက်သို့ ရွှေ့ရန် တွန့်ကျုံ့သော နံရိုးများကြား ကြွက်သားများ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w21-dm-5",
          termEn: "Bronchi / bronchioles",
          termMy: "Bronchi / Bronchioles",
          matchEn:
              "The branching tubes that carry air from the trachea to the alveoli",
          matchMy:
              "Trachea မှ Alveoli ဆီသို့ လေကို ပို့ဆောင်ပေးသော ကွက်ကွက်ခွဲထားသော ပြွန်များ",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w21-d3",
      dayNumber: 3,
      titleEn: "Sort: Inhalation or Exhalation?",
      titleMy: "စီစစ်ကြမည် - Inhalation လား Exhalation လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Happens During Inhalation", "Happens During Exhalation"],
        bucketsMy: ["Inhalation စဉ် ဖြစ်ပေါ်သည်", "Exhalation စဉ် ဖြစ်ပေါ်သည်"],
        items: [
          SortingItem(
            id: "igcsebio-w21-sort-1",
            labelEn: "The diaphragm contracts and flattens",
            labelMy: "Diaphragm တွန့်ကျုံ့ကာ ညီညာသွားခြင်း",
            correctBucketEn: "Happens During Inhalation",
            correctBucketMy: "Inhalation စဉ် ဖြစ်ပေါ်သည်",
          ),
          SortingItem(
            id: "igcsebio-w21-sort-2",
            labelEn:
                "The intercostal muscles relax, and the ribcage moves down and in",
            labelMy:
                "Intercostal ကြွက်သားများ ပြေလျော့ကာ ရင်ခြေထင်း အောက်နှင့် အတွင်းသို့ ရွေ့လျားခြင်း",
            correctBucketEn: "Happens During Exhalation",
            correctBucketMy: "Exhalation စဉ် ဖြစ်ပေါ်သည်",
          ),
          SortingItem(
            id: "igcsebio-w21-sort-3",
            labelEn:
                "Thorax volume increases and pressure decreases, drawing air in",
            labelMy:
                "Thorax ဝင်ရိုးဆမ်း ကြီးလာပြီး ဖိအား လျော့ကျကာ လေကို ဆွဲသွင်းခြင်း",
            correctBucketEn: "Happens During Inhalation",
            correctBucketMy: "Inhalation စဉ် ဖြစ်ပေါ်သည်",
          ),
          SortingItem(
            id: "igcsebio-w21-sort-4",
            labelEn:
                "Thorax volume decreases and pressure increases, pushing air out",
            labelMy:
                "Thorax ဝင်ရိုးဆမ်း လျော့ကျပြီး ဖိအား တိုးလာကာ လေကို တွန်းထုတ်ခြင်း",
            correctBucketEn: "Happens During Exhalation",
            correctBucketMy: "Exhalation စဉ် ဖြစ်ပေါ်သည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w21-d4",
      dayNumber: 4,
      titleEn: "Reading: Coach Zaw Lin Explains Breathing",
      titleMy: "စာဖတ်ခြင်း - နည်းပြ ဇော်လင်း၏ အသက်ရှူခြင်း ရှင်းလင်းချက်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Coach Zaw Lin Explains Breathing",
        titleMy: "နည်းပြ ဇော်လင်း၏ အသက်ရှူခြင်း ရှင်းလင်းချက်",
        passageEn:
            "After a hard training session, one of Coach Zaw Lin's runners asked why she felt herself breathing so much deeper and faster than usual, and the coach used the moment as an impromptu Biology lesson, since he had studied the respiratory system himself years earlier. He explained that every breath in, or inhalation, begins with two sets of muscles working together: the intercostal muscles between the ribs contract, pulling the ribcage up and outward, while the diaphragm below the lungs contracts and flattens from its usual dome shape.\n\nTogether, he explained, these two movements increase the volume of the thorax, the sealed cavity containing the lungs. Following basic physics, increasing the volume of a sealed space decreases the pressure inside it, so with the pressure inside the thorax now lower than the air pressure outside the body, air rushes in through the nose and mouth, down the trachea, and into the lungs to equalise the pressure. Exhalation simply reverses this: the intercostal muscles and diaphragm relax, the thorax volume decreases, the internal pressure rises above atmospheric pressure, and air is pushed back out.\n\nThe runner then asked why she needed to breathe faster and more deeply after hard exercise specifically. Coach Zaw Lin explained that her muscles were respiring faster to release the extra energy needed for running, using up oxygen and producing carbon dioxide more quickly than at rest. Faster, deeper breathing increases the volume of air moving in and out of the alveoli per minute, which speeds up the rate of gas exchange -- bringing in oxygen and removing carbon dioxide fast enough to keep up with her muscles' increased demand.",
        passageMy:
            "လေ့ကျင့်မှုပြင်းထန်ခဲ့ပြီးနောက် နည်းပြ ဇော်လင်း၏ ပြေးသားတစ်ဦးက ပုံမှန်ထက် ပို၍ နက်ရှိုင်း၍ မြန်ဆန်စွာ အသက်ရှူနေသည်ကို ခံစားရသည့် အကြောင်းရင်းကို မေးခဲ့ပြီး၊ နည်းပြက နှစ်ပေါင်းများစွာအလို ကိုယ်တိုင် အသက်ရှူလမ်းကြောင်းစနစ်ကို လေ့လာဖူးသောကြောင့် ဤအခိုက်အတန့်ကို ရုတ်တရက် ဇီဝဗေဒသင်ခန်းစာအဖြစ် အသုံးချခဲ့သည်။ Inhalation (ရှူသွင်းခြင်း) တစ်ခုစီသည် ကြွက်သားနှစ်စု အတူတကွ အလုပ်လုပ်ခြင်းဖြင့် စတင်ကြောင်း သူ ရှင်းပြခဲ့သည်- နံရိုးများကြား Intercostal ကြွက်သားများ တွန့်ကျုံ့ကာ ရင်ခြေထင်းကို အထက်နှင့် အပြင်ဘက်သို့ ဆွဲတင်ပြီး၊ အဆုတ်များ အောက်ရှိ Diaphragm ကလည်း တွန့်ကျုံ့၍ ၎င်း၏ ပုံမှန် ဒုံးပုံသဏ္ဌာန်မှ ညီညာသွားသည်။\n\nဤလှုပ်ရှားမှုနှစ်ခု အတူတကွ Thorax ၏ ဝင်ရိုးဆမ်း၊ အဆုတ်များ ပါဝင်သော ပိတ်ထားသော ခေါင်းအိတ်ကို တိုးမြှင့်ပေးကြောင်း သူ ရှင်းပြခဲ့သည်။ အခြေခံ ရူပဗေဒနိယာမအရ ပိတ်ထားသောနေရာ၏ ဝင်ရိုးဆမ်းကို တိုးမြှင့်လိုက်ခြင်းက အတွင်းဖိအားကို လျော့ကျစေသောကြောင့်၊ Thorax အတွင်း ဖိအားသည် ခန္ဓာကိုယ်ပြင်ပ လေဖိအားထက် ယခုအခါ ပိုနိမ့်နေသဖြင့် လေသည် ခံတွင်းနှင့် နှာခေါင်းမှတစ်ဆင့် Trachea ကို ဆင်း၍ ဖိအားညီမျှစေရန် အဆုတ်ထဲသို့ ဆက်တိုက် ဝင်ရောက်လာသည်။ Exhalation (ရှူထုတ်ခြင်း) က ဤအရာကို ရိုးရှင်းစွာ ပြောင်းပြန်လုပ်ဆောင်သည်- Intercostal ကြွက်သားများနှင့် Diaphragm ပြေလျော့ကာ Thorax ဝင်ရိုးဆမ်း လျော့ကျပြီး အတွင်းဖိအား လေထုဖိအားထက် တက်လာကာ လေကို ပြန်တွန်းထုတ်လိုက်သည်။\n\nပြေးသားသည် ကိုယ်လက်လှုပ်ရှားမှု ပြင်းထန်ပြီးနောက် အထူးသဖြင့် အဘယ်ကြောင့် ပို၍ မြန်ဆန်၍ နက်ရှိုင်းစွာ အသက်ရှူရသနည်းဟု ဆက်လက် မေးမြန်းခဲ့သည်။ သူမ၏ ကြွက်သားများသည် ပြေးလွှားရန် လိုအပ်သော အပိုစွမ်းအင် ထုတ်လွှတ်ရန် ပို၍ မြန်ဆန်စွာ အသက်ရှူ (Respire) နေကြောင်း၊ နားနေချိန်ထက် အောက်ဆီဂျင် ပို၍ မြန်ဆန်စွာ သုံးစွဲကာ ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပို၍ ထုတ်လုပ်နေကြောင်း နည်းပြ ဇော်လင်းက ရှင်းပြခဲ့သည်။ ပို၍ မြန်ဆန်၍ နက်ရှိုင်းသော အသက်ရှူခြင်းသည် တစ်မိနစ်လျှင် Alveoli ထဲသို့ ဝင်/ထွက်သော လေ ဝင်ရိုးဆမ်းကို တိုးမြှင့်ပေးပြီး ဓာတ်ငွေ့ဖလှယ်မှု နှုန်းကို မြန်ဆန်စေသည် -- ကြွက်သားများ၏ တိုးလာသော လိုအပ်ချက်ကို လိုက်မီအောင် အောက်ဆီဂျင်ကို လုံလောက်စွာ ယူဆောင်ပြီး ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို ဖယ်ရှားပေးသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, which two sets of muscles work together during inhalation?",
            questionMy:
                "Inhalation စဉ် အတူတကွ အလုပ်လုပ်သော ကြွက်သားနှစ်စုကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The intercostal muscles and the diaphragm",
              "The heart and the lungs",
              "The trachea and the alveoli",
              "The arms and the legs",
            ],
            optionsMy: [
              "Intercostal ကြွက်သားများနှင့် Diaphragm",
              "နှလုံးနှင့် အဆုတ်",
              "Trachea နှင့် Alveoli",
              "လက်နှင့် ခြေထောက်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first sentence of paragraph 1 describing what begins inhalation.",
              "One set is between the ribs; the other sits below the lungs.",
            ],
            hintsMy: [
              "Inhalation စတင်ကြောင်း ဖော်ပြသော စာပိုဒ် ၁ ၏ ပထမစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "တစ်စုသည် နံရိုးများကြားတွင် ရှိပြီး နောက်တစ်စုသည် အဆုတ်များအောက်တွင် ရှိသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does air rush into the lungs during inhalation?",
            questionMy:
                "Inhalation စဉ် လေသည် အဆုတ်ထဲသို့ အဘယ်ကြောင့် ဆက်တိုက် ဝင်ရောက်ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The pressure inside the thorax becomes lower than the pressure outside the body",
              "The lungs actively suck air in using muscles inside them",
              "The trachea expands to twice its size",
              "Air is always moving into the lungs regardless of pressure",
            ],
            optionsMy: [
              "Thorax အတွင်း ဖိအားသည် ခန္ဓာကိုယ်ပြင်ပ ဖိအားထက် နိမ့်လာသောကြောင့်",
              "အဆုတ်များ ကိုယ်တိုင် ၎င်းတို့အတွင်းရှိ ကြွက်သားများသုံး၍ လေကို စုပ်ယူသောကြောင့်",
              "Trachea သည် ၎င်း၏ အရွယ်အစား နှစ်ဆ ကျယ်လာသောကြောင့်",
              "ဖိအားနှင့် မသက်ဆိုင်ဘဲ လေသည် အဆုတ်ထဲသို့ အမြဲ ဝင်ရောက်နေသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the explanation involving basic physics about volume and pressure.",
              "Gases move from higher pressure to lower pressure, just like the pressure difference described here.",
            ],
            hintsMy: [
              "ဝင်ရိုးဆမ်းနှင့် ဖိအားနှင့်ပတ်သက်သော အခြေခံ ရူပဗေဒနိယာမ ရှင်းချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဓာတ်ငွေ့များသည် ဖိအားမြင့်ရာမှ နိမ့်ရာသို့ ရွေ့လျားသည်၊ ဤနေရာတွင် ဖော်ပြထားသော ဖိအားကွာခြားမှုကဲ့သို့ပင်ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did the runner's muscles need faster gas exchange after hard exercise?",
            questionMy:
                "ကိုယ်လက်လှုပ်ရှားမှု ပြင်းထန်ပြီးနောက် ပြေးသား၏ ကြွက်သားများ ပို၍ မြန်ဆန်သော ဓာတ်ငွေ့ဖလှယ်မှု အဘယ်ကြောင့် လိုအပ်ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Muscles were respiring faster, using more oxygen and producing more carbon dioxide",
              "Her muscles stopped needing oxygen entirely",
              "The alveoli had shrunk in size",
              "Her heart stopped beating temporarily",
            ],
            optionsMy: [
              "ကြွက်သားများ ပို၍ မြန်ဆန်စွာ Respire နေပြီး အောက်ဆီဂျင် ပို၍ သုံးကာ ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပို၍ ထုတ်လုပ်နေသောကြောင့်",
              "သူမ၏ ကြွက်သားများ အောက်ဆီဂျင် လုံးဝ မလိုအပ်တော့သောကြောင့်",
              "Alveoli များ အရွယ်အစား ကျုံ့သွားသောကြောင့်",
              "သူမ၏ နှလုံး ယာယီ ရပ်တန့်သွားသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the coach's explanation about muscles respiring faster during exercise.",
              "More respiration means more oxygen used and more carbon dioxide produced, both needing removal/delivery.",
            ],
            hintsMy: [
              "ကိုယ်လက်လှုပ်ရှားမှုစဉ် ကြွက်သားများ ပို၍ မြန်ဆန်စွာ Respire ကြောင်း နည်းပြ၏ ရှင်းချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "Respiration ပို၍များလျှင် အောက်ဆီဂျင် ပို၍သုံးပြီး ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပို၍ ထုတ်လုပ်သဖြင့် နှစ်ခုစလုံး ဖယ်ရှား/ထောက်ပံ့ရန် လိုအပ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What effect does faster, deeper breathing have on gas exchange, according to paragraph 3?",
            questionMy:
                "ပို၍ မြန်ဆန်၍ နက်ရှိုင်းသော အသက်ရှူခြင်းသည် ဓာတ်ငွေ့ဖလှယ်မှုအပေါ် မည်သည့်အကျိုးသက်ရောက်မှု ရှိကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It increases the volume of air moving through the alveoli per minute, speeding up gas exchange",
              "It has no effect on gas exchange at all",
              "It slows down gas exchange",
              "It stops the alveoli from working",
            ],
            optionsMy: [
              "တစ်မိနစ်လျှင် Alveoli ထဲသို့ ဝင်/ထွက်သော လေ ဝင်ရိုးဆမ်းကို တိုးမြှင့်ပေးပြီး ဓာတ်ငွေ့ဖလှယ်မှုကို မြန်ဆန်စေခြင်း",
              "ဓာတ်ငွေ့ဖလှယ်မှုအပေါ် လုံးဝ အကျိုးသက်ရောက်မှု မရှိခြင်း",
              "ဓာတ်ငွေ့ဖလှယ်မှုကို နှေးကွေးစေခြင်း",
              "Alveoli များ အလုပ်လုပ်ခြင်းကို ရပ်တန့်စေခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of the passage.",
              "More air movement per minute means more oxygen delivered and more carbon dioxide removed.",
            ],
            hintsMy: [
              "စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "တစ်မိနစ်လျှင် လေရွေ့လျားမှု ပိုများလျှင် အောက်ဆီဂျင် ပိုရရှိပြီး ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပိုဖယ်ရှားနိုင်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w21-d5",
      dayNumber: 5,
      titleEn: "Week 21 Recap: Gas Exchange",
      titleMy: "နှစ်ဆယ့်တစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - ဓာတ်ငွေ့လဲလှယ်မှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Gas exchange in the lungs takes place at the...",
          questionMy: "အဆုတ်တွင် ဓာတ်ငွေ့ဖလှယ်မှု ဖြစ်ပေါ်ရာနေရာမှာ...",
          optionsEn: ["Alveoli", "Trachea", "Diaphragm", "Larynx"],
          optionsMy: ["Alveoli", "Trachea", "Diaphragm", "Larynx"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "During exhalation, the diaphragm...",
          questionMy: "Exhalation စဉ် Diaphragm သည်...",
          optionsEn: [
            "Relaxes and domes upward",
            "Contracts and flattens",
            "Disappears",
            "Turns into cartilage",
          ],
          optionsMy: [
            "ပြေလျော့ကာ ဒုံးပုံသို့ ဖောင်းလာသည်",
            "တွန့်ကျုံ့ကာ ညီညာသွားသည်",
            "ပျောက်ကွယ်သွားသည်",
            "Cartilage အဖြစ် ပြောင်းလဲသွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Why are alveoli walls only one cell thick?",
          questionMy: "Alveoli နံရံများသည် ဆဲလ်တစ်ခုသာ ဘာကြောင့် ထူသနည်း",
          optionsEn: [
            "To keep the diffusion path for gases as short as possible",
            "To make them stronger",
            "To store more blood",
            "To produce mucus",
          ],
          optionsMy: [
            "ဓာတ်ငွေ့များ Diffuse ဖြတ်ရသည့်အကွာအဝေးကို တတ်နိုင်သမျှ တိုတောင်းစေရန်",
            "ပို၍ ခိုင်ခံ့စေရန်",
            "သွေး ပို၍ သိုလှောင်ရန်",
            "Mucus ထုတ်လုပ်ရန်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 22: "Tobacco Smoke and Respiratory Health"
// =====================================================================

const CourseWeekDef _igcseBioWeek22 = CourseWeekDef(
  id: "course-igcse-bio-w22",
  weekNumber: 22,
  titleEn: "Tobacco Smoke and Respiratory Health",
  titleMy: "ဆေးလိပ်ခိုးငွေ့နှင့် အဆုတ်ကျန်းမာရေး",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w22-d1",
      dayNumber: 1,
      titleEn: "Harmful Substances in Tobacco Smoke",
      titleMy: "ဆေးလိပ်ခိုးငွေ့ရှိ အန္တရာယ်ရှိသော ပစ္စည်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which substance in tobacco smoke is addictive and raises heart rate and blood pressure?",
          questionMy:
              "ဆေးလိပ်ခိုးငွေ့ရှိ မည်သည့်ပစ္စည်းသည် စွဲလန်းစေပြီး နှလုံးခုန်နှုန်းနှင့် သွေးဖိအားကို မြင့်တက်စေသနည်း။",
          optionsEn: ["Nicotine", "Tar", "Carbon monoxide", "Oxygen"],
          optionsMy: ["Nicotine", "Tar", "ကာဗွန်မိုနောက်ဆိုဒ်", "အောက်ဆီဂျင်"],
          correctIndex: 0,
          hintsEn: [
            "This is the substance that makes smoking so difficult to quit.",
            "It stimulates the nervous system, increasing heart rate and blood pressure.",
          ],
          hintsMy: [
            "ဤပစ္စည်းသည် ဆေးလိပ်ကို ရပ်ရန် ခက်ခဲစေသော ပစ္စည်း ဖြစ်သည်။",
            "၎င်းသည် အာရုံကြောစနစ်ကို လှုံ့ဆော်ပေးပြီး နှလုံးခုန်နှုန်းနှင့် သွေးဖိအားကို မြင့်တက်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "How does carbon monoxide in tobacco smoke reduce the blood's ability to carry oxygen?",
          questionMy:
              "ဆေးလိပ်ခိုးငွေ့ရှိ ကာဗွန်မိုနောက်ဆိုဒ်သည် သွေး၏ အောက်ဆီဂျင်သယ်ဆောင်နိုင်စွမ်းကို မည်သို့ လျော့ကျစေသနည်း။",
          optionsEn: [
            "It binds to haemoglobin more strongly than oxygen does, blocking oxygen from binding",
            "It destroys red blood cells completely",
            "It cools the blood down",
            "It has no effect on the blood at all",
          ],
          optionsMy: [
            "အောက်ဆီဂျင်ထက် Haemoglobin နှင့် ပိုခိုင်မာစွာ ချိတ်ဆက်ကာ အောက်ဆီဂျင် ချိတ်ဆက်ခြင်းကို တားဆီးသည်",
            "သွေးနီဥများကို လုံးဝ ဖျက်ဆီးလိုက်သည်",
            "သွေးကို အေးစေသည်",
            "သွေးအပေါ် မည်သည့်အကျိုးသက်ရောက်မှုမျှ မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Carbon monoxide competes with oxygen for the same binding site on haemoglobin, and usually wins.",
            "Haemoglobin bound to carbon monoxide cannot also carry oxygen.",
          ],
          hintsMy: [
            "ကာဗွန်မိုနောက်ဆိုဒ်သည် Haemoglobin ပေါ်ရှိ ချိတ်ဆက်နေရာတစ်ခုတည်းအတွက် အောက်ဆီဂျင်နှင့် ယှဉ်ပြိုင်ပြီး ပုံမှန်အားဖြင့် အနိုင်ရသည်။",
            "ကာဗွန်မိုနောက်ဆိုဒ်နှင့် ချိတ်ဆက်ထားသော Haemoglobin သည် အောက်ဆီဂျင်ကို ထပ်၍ ချိတ်ဆက်၍ မရနိုင်တော့ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Tar in tobacco smoke is most closely linked to which health effect?",
          questionMy:
              "ဆေးလိပ်ခိုးငွေ့ရှိ Tar သည် မည်သည့်ကျန်းမာရေးဆိုးကျိုးနှင့် အနီးစပ်ဆုံး ဆက်စပ်သနည်း။",
          optionsEn: [
            "Lung cancer, since it contains carcinogens",
            "Improved lung capacity",
            "Faster wound healing",
            "Stronger bones",
          ],
          optionsMy: [
            "ကင်ဆာဖြစ်စေသော ပစ္စည်းများ ပါဝင်သောကြောင့် အဆုတ်ကင်ဆာ",
            "အဆုတ်စွမ်းရည် တိုးတက်မှု",
            "ဒဏ်ရာ ပို၍ မြန်ဆန်စွာ ပျောက်ကင်းမှု",
            "အရိုးများ ပို၍ ခိုင်ခံ့မှု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Tar is a sticky substance that coats the alveoli and airways.",
            "It contains chemicals known to cause cancer, called carcinogens.",
          ],
          hintsMy: [
            "Tar သည် Alveoli နှင့် လေလမ်းကြောင်းများကို ဖုံးအုပ်သော စေးကပ်သောပစ္စည်း ဖြစ်သည်။",
            "၎င်းတွင် ကင်ဆာဖြစ်စေတတ်ကြောင်း သိရှိထားသော ဓာတုပစ္စည်းများ (Carcinogens) ပါဝင်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w22-d2",
      dayNumber: 2,
      titleEn: "Match: Smoking-Related Disease Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ဆေးလိပ်ဆိုင်ရာ ရောဂါ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w22-dm-1",
          termEn: "Emphysema",
          termMy: "Emphysema",
          matchEn:
              "A disease in which alveoli walls break down, reducing the surface area for gas exchange",
          matchMy:
              "Alveoli နံရံများ ပျက်စီးကာ ဓာတ်ငွေ့ဖလှယ်မှုအတွက် မျက်နှာပြင်ဧရိယာကို လျော့ကျစေသော ရောဂါ",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w22-dm-2",
          termEn: "Bronchitis",
          termMy: "Bronchitis",
          matchEn:
              "Inflammation of the bronchi, causing excess mucus production and a persistent cough",
          matchMy:
              "Mucus အလွန်အကျွံ ထုတ်လုပ်မှုနှင့် ရေရှည် ချောင်းဆိုးခြင်းကို ဖြစ်စေသော Bronchi ရောင်ရမ်းမှု",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w22-dm-3",
          termEn: "Carcinogen",
          termMy: "Carcinogen",
          matchEn: "A substance known to cause cancer by damaging cell DNA",
          matchMy:
              "ဆဲလ် DNA ကို ပျက်စီးစေကာ ကင်ဆာဖြစ်စေတတ်ကြောင်း သိရှိထားသော ပစ္စည်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w22-dm-4",
          termEn: "Nicotine",
          termMy: "Nicotine",
          matchEn:
              "The addictive chemical in tobacco that raises heart rate and blood pressure",
          matchMy:
              "စွဲလန်းစေပြီး နှလုံးခုန်နှုန်းနှင့် သွေးဖိအားကို မြင့်တက်စေသော ဆေးရွက်ကြီးရှိ ဓာတုပစ္စည်း",
          colorValue: 0xFF3F51B5,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w22-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Harmful Substance?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် အန္တရာယ်ရှိသော ပစ္စည်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Nicotine", "Tar", "Carbon Monoxide"],
        bucketsMy: ["Nicotine", "Tar", "ကာဗွန်မိုနောက်ဆိုဒ်"],
        items: [
          SortingItem(
            id: "igcsebio-w22-sort-1",
            labelEn:
                "Binds to haemoglobin, reducing the blood's oxygen-carrying capacity",
            labelMy:
                "Haemoglobin နှင့် ချိတ်ဆက်ကာ သွေး၏ အောက်ဆီဂျင်သယ်ဆောင်နိုင်စွမ်းကို လျော့ကျစေခြင်း",
            correctBucketEn: "Carbon Monoxide",
            correctBucketMy: "ကာဗွန်မိုနောက်ဆိုဒ်",
          ),
          SortingItem(
            id: "igcsebio-w22-sort-2",
            labelEn: "Makes it hard for a smoker to quit due to addiction",
            labelMy:
                "စွဲလန်းမှုကြောင့် ဆေးလိပ်သောက်သူတစ်ဦးအတွက် ရပ်ရန် ခက်ခဲစေခြင်း",
            correctBucketEn: "Nicotine",
            correctBucketMy: "Nicotine",
          ),
          SortingItem(
            id: "igcsebio-w22-sort-3",
            labelEn:
                "A sticky substance containing carcinogens that coats the lungs",
            labelMy:
                "အဆုတ်များကို ဖုံးအုပ်သော ကင်ဆာဖြစ်စေတတ်သည့် ပစ္စည်းပါဝင်သော စေးကပ်သောပစ္စည်း",
            correctBucketEn: "Tar",
            correctBucketMy: "Tar",
          ),
          SortingItem(
            id: "igcsebio-w22-sort-4",
            labelEn:
                "Increases heart rate and blood pressure by stimulating the nervous system",
            labelMy:
                "အာရုံကြောစနစ်ကို လှုံ့ဆော်ကာ နှလုံးခုန်နှုန်းနှင့် သွေးဖိအားကို မြင့်တက်စေခြင်း",
            correctBucketEn: "Nicotine",
            correctBucketMy: "Nicotine",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w22-d4",
      dayNumber: 4,
      titleEn: "Reading: Dr. Htet Htet's Lung X-Ray",
      titleMy: "စာဖတ်ခြင်း - ဒေါက်တာထက်ထက်၏ အဆုတ် X-Ray",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Dr. Htet Htet's Lung X-Ray",
        titleMy: "ဒေါက်တာထက်ထက်၏ အဆုတ် X-Ray",
        passageEn:
            "Dr. Htet Htet returned to Khin Sanda's school for another career-day talk, this time bringing two lung X-rays: one from a healthy non-smoker, and one from a patient who had smoked heavily for over twenty years. The healthy lung X-ray showed clear, evenly spread lung tissue, while the smoker's lung showed noticeably darker, patchy areas where the doctor explained the alveoli walls had broken down over years of exposure to tobacco smoke -- a condition called emphysema.\n\nShe explained that emphysema develops gradually: repeated exposure to the chemicals in tobacco smoke damages and eventually destroys the thin walls between neighbouring alveoli, causing many small air sacs to merge into fewer, larger ones. Since gas exchange depends on having a large total surface area of alveoli walls in contact with capillaries, this merging permanently reduces that surface area, meaning the patient's lungs could absorb far less oxygen with each breath than a healthy person's lungs, even though the total lung volume looked similar on the X-ray.\n\nA student asked whether the patient could recover if she quit smoking immediately. Dr. Htet Htet explained an important distinction: unlike bronchitis, where inflammation and excess mucus production can improve once smoking stops, the alveoli damage in emphysema is permanent, since destroyed alveoli walls do not regenerate. Quitting smoking would stop the damage from getting worse and reduce the risk of further complications like lung cancer, but it could not restore the surface area that had already been lost -- which is exactly why doctors emphasise prevention and early quitting over waiting to see visible symptoms before taking tobacco's health risks seriously.",
        passageMy:
            "ဒေါက်တာထက်ထက်သည် နောက်ထပ် Career Day ဟောပြောပွဲအတွက် ခင်စန္ဒာ၏ ကျောင်းသို့ ပြန်လည်ရောက်ရှိလာခဲ့ပြီး၊ ဤအကြိမ်တွင် အဆုတ် X-Ray ပုံနှစ်ပုံကို ယူဆောင်လာခဲ့သည်- တစ်ပုံမှာ ကျန်းမာသော ဆေးလိပ်မသောက်သူထံမှ၊ နောက်တစ်ပုံမှာ နှစ်ပေါင်း ၂၀ ကျော် ဆေးလိပ်ပြင်းထန်စွာ သောက်ခဲ့ဖူးသည့် လူနာထံမှ ဖြစ်သည်။ ကျန်းမာသော အဆုတ် X-Ray ပုံသည် ရှင်းလင်း၍ တစ်ညီတစ်ညာ ပျံ့နှံ့နေသော အဆုတ်တစ်ရှူးကို ပြသခဲ့ပြီး၊ ဆေးလိပ်သောက်သူ၏ အဆုတ်မူ သိသိသာသာ ပို၍ နက်၍ အနှက်ကွက်ကွက် နေရာများ ပြသသည်ကို ဆရာဝန်က ဆေးလိပ်ခိုးငွေ့ကို နှစ်ပေါင်းများစွာ ထိတွေ့ခံခဲ့ရသဖြင့် Alveoli နံရံများ ပျက်စီးသွားခြင်း ဖြစ်ကြောင်း -- Emphysema ဟု ခေါ်သော အခြေအနေတစ်ခု ဖြစ်ကြောင်း ရှင်းပြခဲ့သည်။\n\nEmphysema သည် တဖြည်းဖြည်း တိုးတက်ဖြစ်ပွားလာကြောင်း သူ ရှင်းပြခဲ့သည်- ဆေးလိပ်ခိုးငွေ့ရှိ ဓာတုပစ္စည်းများကို ထပ်ခါထပ်ခါ ထိတွေ့ခံရခြင်းက အနီးအနားရှိ Alveoli များကြား ပါးလွှာသော နံရံများကို ပျက်စီးစေပြီး နောက်ဆုံးတွင် ဖျက်ဆီးလိုက်သဖြင့် လေအိတ်ငယ်များစွာ ပေါင်းစည်း၍ လေအိတ်ကြီးအနည်းငယ်သာ ကျန်ရစ်စေသည်။ ဓာတ်ငွေ့ဖလှယ်မှုသည် Capillary များနှင့် ထိတွေ့နေသော Alveoli နံရံများ၏ စုစုပေါင်း မျက်နှာပြင်ဧရိယာကြီးမားမှုပေါ် မှီခိုနေသောကြောင့်၊ ဤပေါင်းစည်းမှုသည် ထိုမျက်နှာပြင်ဧရိယာကို အမြဲတမ်း လျော့ကျစေပြီး၊ X-Ray ပေါ်တွင် စုစုပေါင်း အဆုတ်ဝင်ရိုးဆမ်း ဆင်တူပုံပေါ်နေသော်လည်း လူနာ၏ အဆုတ်သည် ကျန်းမာသောလူတစ်ဦး၏ အဆုတ်ထက် အသက်ရှူတစ်ချက်လျှင် အောက်ဆီဂျင် ပို၍ နည်းစွာသာ စုပ်ယူနိုင်ကြောင်း ဆိုလိုသည်။\n\nကျောင်းသားတစ်ဦးက လူနာသည် ဆေးလိပ်ကို ချက်ချင်း ဖြတ်လိုက်ပါက ပြန်ကောင်းမလားဟု မေးမြန်းခဲ့သည်။ ဒေါက်တာထက်ထက်က အရေးကြီးသော ကွာခြားချက်တစ်ခုကို ရှင်းပြခဲ့သည်- ဆေးလိပ်ရပ်ပြီးနောက် ရောင်ရမ်းမှုနှင့် Mucus အလွန်အကျွံ ထုတ်လုပ်မှု ပြန်ကောင်းလာနိုင်သော Bronchitis နှင့် မတူဘဲ၊ ပျက်စီးသွားသော Alveoli နံရံများသည် ပြန်လည် မဖြစ်ပေါ်နိုင်တော့သောကြောင့် Emphysema ၏ Alveoli ပျက်စီးမှုသည် အမြဲတမ်း ဖြစ်သည်။ ဆေးလိပ်ဖြတ်ခြင်းသည် ပျက်စီးမှု ပို၍ ဆိုးရွားလာခြင်းကို ရပ်တန့်စေပြီး အဆုတ်ကင်ဆာကဲ့သို့ ပို၍ ရှုပ်ထွေးသော ရောဂါဆက်တွဲဖြစ်ခြင်းအန္တရာယ်ကို လျော့ချပေးနိုင်သော်လည်း၊ ရှေးက ဆုံးရှုံးသွားခဲ့ပြီးသား မျက်နှာပြင်ဧရိယာကို ပြန်လည် ထူထောင်ပေးနိုင်မည် မဟုတ်ပါ -- ၎င်းသည် ဆရာဝန်များက မြင်ရသော လက္ခဏာများကို စောင့်ကြည့်ခြင်းထက် ဆေးလိပ်၏ ကျန်းမာရေးအန္တရာယ်များကို လေးလေးနက်နက် ဆောင်ရွက်ရန်နှင့် စောလျင်စွာ ရပ်တန့်ခြင်းကို ဦးစားပေးအလေးထားရသည့် အတိအကျ အကြောင်းရင်းပင် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what physically happens to alveoli in emphysema?",
            questionMy:
                "Emphysema တွင် Alveoli များအတွင်း ရုပ်ပိုင်းဆိုင်ရာ အဘယ်ဖြစ်ပေါ်ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Thin walls between neighbouring alveoli break down, merging many small sacs into fewer, larger ones",
              "Alveoli multiply rapidly, increasing surface area",
              "Alveoli turn into cartilage",
              "Alveoli become thicker and stronger",
            ],
            optionsMy: [
              "အနီးအနားရှိ Alveoli များကြား ပါးလွှာသော နံရံများ ပျက်စီးကာ လေအိတ်ငယ်များစွာ ပေါင်းစည်း၍ လေအိတ်ကြီးအနည်းငယ်သာ ကျန်ရစ်ခြင်း",
              "Alveoli များ လျင်မြန်စွာ မွှားများပြီး မျက်နှာပြင်ဧရိယာကို တိုးမြှင့်ခြင်း",
              "Alveoli များ Cartilage အဖြစ် ပြောင်းလဲသွားခြင်း",
              "Alveoli များ ပို၍ ထူ၍ ပို၍ ခိုင်ခံ့လာခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing the walls breaking down and merging into larger sacs.",
              "This is the opposite of what a healthy adaptation for gas exchange would look like.",
            ],
            hintsMy: [
              "နံရံများ ပျက်စီးကာ လေအိတ်ကြီးများသို့ ပေါင်းစည်းသွားကြောင်း ဖော်ပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ ဓာတ်ငွေ့ဖလှယ်မှုအတွက် ကျန်းမာသော လိုက်လျောညီထွေမှု၏ ဆန့်ကျင်ဘက်ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does emphysema reduce the amount of oxygen a patient's lungs can absorb?",
            questionMy:
                "Emphysema သည် လူနာ၏ အဆုတ်များ စုပ်ယူနိုင်သော အောက်ဆီဂျင် ပမာဏကို အဘယ်ကြောင့် လျော့ကျစေကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The total surface area of alveoli walls in contact with capillaries is permanently reduced",
              "The lungs become completely blocked",
              "The heart stops pumping blood to the lungs",
              "The trachea collapses",
            ],
            optionsMy: [
              "Capillary များနှင့် ထိတွေ့နေသော Alveoli နံရံများ၏ စုစုပေါင်း မျက်နှာပြင်ဧရိယာ အမြဲတမ်း လျော့ကျခြင်း",
              "အဆုတ်များ လုံးဝ ပိတ်ဆို့သွားခြင်း",
              "နှလုံးသည် အဆုတ်ဆီသို့ သွေးပန့်ခြင်း ရပ်တန့်သွားခြင်း",
              "Trachea ပြိုကျသွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining what gas exchange depends on.",
              "Less surface area means less room for oxygen to diffuse into the blood.",
            ],
            hintsMy: [
              "ဓာတ်ငွေ့ဖလှယ်မှု မည်သည့်အချက်ပေါ် မှီခိုနေကြောင်း ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "မျက်နှာပြင်ဧရိယာ နည်းလျှင် အောက်ဆီဂျင် သွေးထဲသို့ Diffuse ဝင်ရန် နေရာ နည်းသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, how does emphysema differ from bronchitis in terms of recovery?",
            questionMy:
                "ပြန်လည်ကောင်းမွန်မှု ကိစ္စတွင် Emphysema သည် Bronchitis နှင့် မည်သို့ ကွဲပြားကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Bronchitis symptoms can improve after quitting; emphysema's alveoli damage is permanent",
              "Both conditions are always permanent",
              "Both conditions always fully reverse after quitting",
              "Emphysema improves faster than bronchitis",
            ],
            optionsMy: [
              "Bronchitis လက္ခဏာများ ဆေးလိပ်ရပ်ပြီးနောက် ကောင်းမွန်လာနိုင်သော်လည်း Emphysema ၏ Alveoli ပျက်စီးမှုမှာ အမြဲတမ်း ဖြစ်ခြင်း",
              "အခြေအနေနှစ်ခုစလုံး အမြဲတမ်း ဖြစ်ခြင်း",
              "အခြေအနေနှစ်ခုစလုံး ဆေးလိပ်ရပ်ပြီးနောက် အပြည့်အဝ ပြန်ကောင်းလာခြင်း",
              "Emphysema သည် Bronchitis ထက် ပို၍ မြန်ဆန်စွာ ကောင်းမွန်လာခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence directly contrasting bronchitis and emphysema.",
              "Destroyed alveoli walls do not regenerate, unlike inflamed bronchi tissue.",
            ],
            hintsMy: [
              "Bronchitis နှင့် Emphysema ကို တိုက်ရိုက် နှိုင်းယှဉ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ရောင်ရမ်းနေသော Bronchi တစ်ရှူးနှင့် မတူဘဲ ပျက်စီးသွားသော Alveoli နံရံများသည် ပြန်လည် မဖြစ်ပေါ်နိုင်တော့ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Dr. Htet Htet say quitting smoking WOULD still achieve, even though the damage was permanent?",
            questionMy:
                "ပျက်စီးမှုသည် အမြဲတမ်းဖြစ်နေသော်လည်း ဆေးလိပ်ဖြတ်ခြင်းက မည်သည်ကို ရရှိစေနိုင်ကြောင်း ဒေါက်တာထက်ထက် ပြောခဲ့သနည်း။",
            optionsEn: [
              "It would stop the damage from getting worse and reduce the risk of further complications",
              "It would completely restore lost surface area",
              "It would have no benefit at all",
              "It would make emphysema worse",
            ],
            optionsMy: [
              "ပျက်စီးမှု ပို၍ ဆိုးရွားလာခြင်းကို ရပ်တန့်စေပြီး ရောဂါဆက်တွဲဖြစ်ခြင်း အန္တရာယ်ကို လျော့ချပေးမည်",
              "ဆုံးရှုံးသွားခဲ့ပြီးသား မျက်နှာပြင်ဧရိယာကို အပြည့်အဝ ပြန်လည် ထူထောင်ပေးမည်",
              "မည်သည့်အကျိုးကျေးဇူးမျှ လုံးဝ မရှိပါ",
              "Emphysema ကို ပို၍ ဆိုးရွားစေမည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence explaining the benefit of quitting despite permanent damage.",
              "Stopping further damage is still valuable, even if past damage cannot be undone.",
            ],
            hintsMy: [
              "ပျက်စီးမှု အမြဲတမ်းဖြစ်နေသော်လည်း ဆေးလိပ်ဖြတ်ခြင်း၏ အကျိုးကျေးဇူးကို ရှင်းပြသော နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ယခင်ပျက်စီးမှုကို ပြန်ပြင်၍ မရနိုင်သော်လည်း နောက်ထပ်ပျက်စီးမှုကို ရပ်တန့်ခြင်းသည် အထောက်အကူ ဖြစ်နေဆဲ ဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w22-d5",
      dayNumber: 5,
      titleEn: "Week 22 Recap: Tobacco Smoke",
      titleMy: "နှစ်ဆယ့်နှစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - ဆေးလိပ်ခိုးငွေ့",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which tobacco smoke chemical reduces the blood's oxygen-carrying capacity?",
          questionMy:
              "ဆေးလိပ်ခိုးငွေ့ရှိ မည်သည့်ဓာတုပစ္စည်းက သွေး၏ အောက်ဆီဂျင်သယ်ဆောင်နိုင်စွမ်းကို လျော့ကျစေသနည်း",
          optionsEn: ["Carbon monoxide", "Nicotine", "Water vapour", "Oxygen"],
          optionsMy: [
            "ကာဗွန်မိုနောက်ဆိုဒ်",
            "Nicotine",
            "ရေငွေ့",
            "အောက်ဆီဂျင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Emphysema damage to alveoli is best described as...",
          questionMy:
              "Alveoli များအပေါ် Emphysema ၏ ပျက်စီးမှုကို အကောင်းဆုံးဖော်ပြသည့်အရာမှာ...",
          optionsEn: [
            "Permanent -- destroyed walls do not regenerate",
            "Fully reversible within days",
            "Not serious at all",
            "Beneficial to lung function",
          ],
          optionsMy: [
            "အမြဲတမ်း -- ပျက်စီးသွားသော နံရံများ ပြန်မဖြစ်ပေါ်ပါ",
            "ရက်အနည်းငယ်အတွင်း အပြည့်အဝ ပြန်ကောင်းနိုင်ခြင်း",
            "လုံးဝ ပြင်းထန်မှု မရှိခြင်း",
            "အဆုတ်လုပ်ငန်းဆောင်တာအတွက် အကျိုးရှိခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Tar in tobacco smoke contains chemicals known as...",
          questionMy:
              "ဆေးလိပ်ခိုးငွေ့ရှိ Tar တွင် ...ဟု လူသိများသော ဓာတုပစ္စည်းများ ပါဝင်သည်",
          optionsEn: [
            "Carcinogens (cancer-causing substances)",
            "Vitamins",
            "Antibodies",
            "Enzymes",
          ],
          optionsMy: [
            "Carcinogens (ကင်ဆာဖြစ်စေသော ပစ္စည်းများ)",
            "Vitamins",
            "Antibodies",
            "Enzymes",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 23: "Respiration and Energy Release"
// =====================================================================

const CourseWeekDef _igcseBioWeek23 = CourseWeekDef(
  id: "course-igcse-bio-w23",
  weekNumber: 23,
  titleEn: "Respiration and Energy Release",
  titleMy: "အသက်ရှူခြင်း (Respiration) နှင့် စွမ်းအင် ထုတ်လွှတ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w23-d1",
      dayNumber: 1,
      titleEn: "Aerobic Respiration",
      titleMy: "Aerobic Respiration",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which word equation correctly represents aerobic respiration?",
          questionMy:
              "Aerobic Respiration ကို မှန်ကန်စွာ ကိုယ်စားပြုသော Word Equation မှာ အဘယ်နည်း။",
          optionsEn: [
            "Glucose + oxygen -> carbon dioxide + water (+ energy)",
            "Carbon dioxide + water -> glucose + oxygen (+ energy)",
            "Glucose -> ethanol + carbon dioxide (+ energy)",
            "Glucose -> lactic acid (+ energy)",
          ],
          optionsMy: [
            "ဂလူးကို့စ် + အောက်ဆီဂျင် -> ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ရေ (+ စွမ်းအင်)",
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ရေ -> ဂလူးကို့စ် + အောက်ဆီဂျင် (+ စွမ်းအင်)",
            "ဂလူးကို့စ် -> Ethanol + ကာဗွန်ဒိုင်အောက်ဆိုဒ် (+ စွမ်းအင်)",
            "ဂလူးကို့စ် -> Lactic Acid (+ စွမ်းအင်)",
          ],
          correctIndex: 0,
          hintsEn: [
            "Aerobic means 'with oxygen' -- oxygen is a raw material, not a product.",
            "Notice this equation is exactly the reverse of photosynthesis's word equation.",
          ],
          hintsMy: [
            "Aerobic ဆိုသည်မှာ 'အောက်ဆီဂျင်ပါ၍' ဆိုလိုသည် -- အောက်ဆီဂျင်သည် Product မဟုတ်ဘဲ ကုန်ကြမ်းတစ်ခု ဖြစ်သည်။",
            "ဤ Equation သည် Photosynthesis ၏ Word Equation ၏ အတိအကျ ပြောင်းပြန် ဖြစ်ကြောင်း သတိပြုပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Aerobic respiration takes place mainly in which cell structure?",
          questionMy:
              "Aerobic Respiration သည် မည်သည့် ဆဲလ်ဖွဲ့စည်းပုံတွင် အဓိက ဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "Mitochondria",
            "Chloroplasts",
            "The nucleus",
            "The cell wall",
          ],
          optionsMy: ["Mitochondria", "Chloroplasts", "Nucleus", "ဆဲလ်နံရံ"],
          correctIndex: 0,
          hintsEn: [
            "This is the same organelle mentioned in the Term 2 lesson on active transport's energy source.",
            "This organelle is often called the 'powerhouse' of the cell.",
          ],
          hintsMy: [
            "ဤသည်မှာ Active Transport ၏ စွမ်းအင်အရင်းအမြစ်အကြောင်း ဒုတိယနှစ်ဝက် သင်ခန်းစာတွင် ဖော်ပြခဲ့သော ဆဲလ်ကလာပ်စည်းတစ်ခုတည်းပင် ဖြစ်သည်။",
            "ဤဆဲလ်ကလာပ်စည်းကို ဆဲလ်၏ 'စွမ်းအင်စက်ရုံ' ဟု မကြာခဏ ခေါ်ကြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Compared to anaerobic respiration, aerobic respiration releases...",
          questionMy:
              "Anaerobic Respiration နှင့်နှိုင်းယှဉ်လျှင် Aerobic Respiration က ထုတ်လွှတ်သည်မှာ...",
          optionsEn: [
            "Much more energy from the same amount of glucose",
            "Exactly the same amount of energy",
            "Much less energy",
            "No energy at all",
          ],
          optionsMy: [
            "ဂလူးကို့စ် ပမာဏတူတူမှ ပို၍ များစွာသော စွမ်းအင်",
            "အတိအကျ တူညီသော စွမ်းအင်ပမာဏ",
            "စွမ်းအင် ပို၍ နည်း",
            "စွမ်းအင် လုံးဝ မထုတ်လွှတ်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Aerobic respiration fully breaks down glucose using oxygen, releasing far more energy per glucose molecule.",
            "Anaerobic respiration only partially breaks down glucose, releasing much less energy.",
          ],
          hintsMy: [
            "Aerobic Respiration သည် အောက်ဆီဂျင်ကို သုံး၍ ဂလူးကို့စ်ကို အပြည့်အစုံ ချေဖျက်ပြီး ဂလူးကို့စ်မော်လီကျူးတစ်ခုစီမှ ပို၍ များစွာသော စွမ်းအင်ကို ထုတ်လွှတ်ပေးသည်။",
            "Anaerobic Respiration သည် ဂလူးကို့စ်ကို တစ်စိတ်တစ်ပိုင်းသာ ချေဖျက်ပြီး စွမ်းအင် ပို၍ နည်းစွာသာ ထုတ်လွှတ်ပေးသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w23-d2",
      dayNumber: 2,
      titleEn: "Match: Respiration Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Respiration ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w23-dm-1",
          termEn: "Anaerobic respiration",
          termMy: "Anaerobic Respiration",
          matchEn:
              "Respiration that happens without oxygen, releasing much less energy than aerobic respiration",
          matchMy:
              "အောက်ဆီဂျင်မပါဘဲ ဖြစ်ပေါ်ပြီး Aerobic Respiration ထက် စွမ်းအင် ပို၍ နည်းစွာသာ ထုတ်လွှတ်သော Respiration",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w23-dm-2",
          termEn: "Lactic acid",
          termMy: "Lactic Acid",
          matchEn: "The product of anaerobic respiration in human muscle cells",
          matchMy: "လူ့ကြွက်သားဆဲလ်များတွင် Anaerobic Respiration ၏ Product",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w23-dm-3",
          termEn: "Fermentation",
          termMy: "Fermentation",
          matchEn:
              "Anaerobic respiration in yeast, producing ethanol and carbon dioxide",
          matchMy:
              "Ethanol နှင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ် ထုတ်လုပ်သော တဆေးမှ Anaerobic Respiration",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w23-dm-4",
          termEn: "Oxygen debt",
          termMy: "Oxygen Debt",
          matchEn:
              "The extra oxygen needed after exercise to break down lactic acid built up during anaerobic respiration",
          matchMy:
              "Anaerobic Respiration စဉ် စုပုံနေသော Lactic Acid ကို ချေဖျက်ရန် ကိုယ်လက်လှုပ်ရှားမှုပြီးနောက် လိုအပ်သော အောက်ဆီဂျင်အပို",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w23-dm-5",
          termEn: "Mitochondrion",
          termMy: "Mitochondrion",
          matchEn: "The organelle where most aerobic respiration takes place",
          matchMy: "Aerobic Respiration အများစု ဖြစ်ပေါ်ရာ ဆဲလ်ကလာပ်စည်း",
          colorValue: 0xFF4CAF50,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w23-d3",
      dayNumber: 3,
      titleEn: "Sort: Aerobic or Anaerobic?",
      titleMy: "စီစစ်ကြမည် - Aerobic လား Anaerobic လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Aerobic Respiration", "Anaerobic Respiration"],
        bucketsMy: ["Aerobic Respiration", "Anaerobic Respiration"],
        items: [
          SortingItem(
            id: "igcsebio-w23-sort-1",
            labelEn:
                "A jogger breathing steadily during a light, comfortable run",
            labelMy:
                "အလွယ်တကူ၊ ချောမွေ့စွာ ပြေးလွှားနေစဉ် တည်ငြိမ်စွာ အသက်ရှူနေသော ပြေးသမား",
            correctBucketEn: "Aerobic Respiration",
            correctBucketMy: "Aerobic Respiration",
          ),
          SortingItem(
            id: "igcsebio-w23-sort-2",
            labelEn:
                "A sprinter's leg muscles during an intense 100-metre dash, producing lactic acid",
            labelMy:
                "ပြင်းထန်သော ၁၀၀ မီတာ ပြေးအားထုတ်ရင်း Lactic Acid ထုတ်လုပ်နေသော ပြေးလျားသမား၏ ခြေထောက်ကြွက်သားများ",
            correctBucketEn: "Anaerobic Respiration",
            correctBucketMy: "Anaerobic Respiration",
          ),
          SortingItem(
            id: "igcsebio-w23-sort-3",
            labelEn:
                "Yeast fermenting sugar into ethanol and carbon dioxide while brewing",
            labelMy:
                "အရက်ချက်ရာတွင် တဆေးက သကြားကို Ethanol နှင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ်အဖြစ် ခြေဖျက်နေခြင်း",
            correctBucketEn: "Anaerobic Respiration",
            correctBucketMy: "Anaerobic Respiration",
          ),
          SortingItem(
            id: "igcsebio-w23-sort-4",
            labelEn:
                "A person's cells respiring at rest, fully breaking down glucose using plenty of oxygen",
            labelMy:
                "နားနေချိန် လူတစ်ဦး၏ ဆဲလ်များက အောက်ဆီဂျင် လုံလောက်စွာ သုံး၍ ဂလူးကို့စ်ကို အပြည့်အစုံ ချေဖျက်နေခြင်း",
            correctBucketEn: "Aerobic Respiration",
            correctBucketMy: "Aerobic Respiration",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w23-d4",
      dayNumber: 4,
      titleEn: "Reading: Baker U Tin Maung's Bread Dough",
      titleMy: "စာဖတ်ခြင်း - မုန့်ဖုတ်သမား ဦးတင်မောင်၏ မုန့်ညက်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Baker U Tin Maung's Bread Dough",
        titleMy: "မုန့်ဖုတ်သမား ဦးတင်မောင်၏ မုန့်ညက်",
        passageEn:
            "U Tin Maung had run a small bakery for over thirty years, and when his granddaughter's Biology class visited to see how bread was made, he showed them how he mixed flour, water, sugar, and a small packet of dried yeast into a soft dough, then set it aside in a warm corner of the kitchen to rise. Within an hour, the dough had noticeably doubled in size, filled with small air pockets.\n\nHis granddaughter's teacher explained to the class that the rising dough was direct evidence of yeast respiring anaerobically, since the dough was mixed thickly enough that little oxygen could reach the yeast cells trapped inside. Without oxygen, the yeast fermented the sugar, breaking it down into ethanol and carbon dioxide gas -- and it was this carbon dioxide, trapped as tiny bubbles throughout the sticky dough, that caused the dough to expand and become light and airy rather than dense.\n\nU Tin Maung added a practical detail from decades of experience: dough left to rise too long, or in a kitchen that was too warm, would sometimes develop a slightly sour, alcoholic smell -- his teacher explained this was the ethanol produced by fermentation becoming more noticeable as more sugar was converted. Most of that ethanol, along with excess carbon dioxide, would evaporate away during baking as the oven's heat killed the yeast and set the bread's final structure, which is exactly why the finished loaf never tasted alcoholic even though the rising process that gave it its light texture depended entirely on an anaerobic reaction that produced alcohol as a by-product.",
        passageMy:
            "ဦးတင်မောင်သည် နှစ်ပေါင်း ၃၀ ကျော် မုန့်ဆိုင်ငယ်တစ်ဆိုင်ကို လုပ်ကိုင်ခဲ့ပြီး၊ ၎င်း၏ မြေး၏ ဇီဝဗေဒအတန်းက ပေါင်မုန့် မည်သို့ ပြုလုပ်ကြောင်း ကြည့်ရှုရန် လာရောက်ခဲ့သောအခါ၊ မုန့်ညက်၊ ရေ၊ သကြားနှင့် တဆေးအေး ထုပ်ငယ်တစ်ခုကို ရောစပ်၍ ပျော့ပျောင်းသော မုန့်ညက်ရရှိအောင် ပြုလုပ်ပုံနှင့် ၎င်းကို မီးဖိုချောင်၏ နွေးထွေးသော ထောင့်တစ်ခုတွင် ဖောင်းလာစေရန် ထားလေ့ရှိပုံကို ပြသခဲ့သည်။ တစ်နာရီအတွင်း မုန့်ညက်သည် သိသိသာသာ နှစ်ဆ ကြီးလာခဲ့ပြီး လေအိတ်ငယ်များနှင့် ပြည့်နှက်နေခဲ့သည်။\n\nမုန့်ညက်ဖောင်းလာခြင်းသည် တဆေးက Anaerobically Respire ဖြစ်နေကြောင်း တိုက်ရိုက် သက်သေအထောက်အထားဖြစ်ကြောင်း ၎င်း၏ မြေး၏ ဆရာမက အတန်းကို ရှင်းပြခဲ့သည်၊ အကြောင်းမှာ မုန့်ညက်ကို ထူထပ်စွာ ရောစပ်ထားသဖြင့် အတွင်းရှိ ချုပ်နေသော တဆေးဆဲလ်များထံ အောက်ဆီဂျင် အနည်းငယ်သာ ရောက်ရှိနိုင်သောကြောင့် ဖြစ်သည်။ အောက်ဆီဂျင် မရှိသောကြောင့် တဆေးသည် သကြားကို Ferment ပြုလုပ်ကာ Ethanol နှင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ်ဓာတ်ငွေ့အဖြစ် ချေဖျက်ခဲ့သည် -- စေးကပ်သော မုန့်ညက်တစ်ခုလုံးတွင် ပူဖောင်းငယ်လေးများအဖြစ် ချုပ်နေသော ဤကာဗွန်ဒိုင်အောက်ဆိုဒ်ပင် မုန့်ညက်ကို ကျစ်လျစ်စွာအစား ချဲ့ထွင်ပြီး ပေါ့ပါး၊ လေဝင်နေသကဲ့သို့ ဖြစ်စေခဲ့သည်။\n\nဆယ်စုနှစ်များစွာ ကြုံတွေ့ခဲ့ဖူးသော အတွေ့အကြုံအရ ဦးတင်မောင်က လက်တွေ့အသေးစိတ်တစ်ခု ထပ်ဖြည့်ခဲ့သည်- ကြာကြာလွန်း ဖောင်းစေထားသော သို့မဟုတ် နွေးလွန်းသော မီးဖိုချောင်တွင် ထားသော မုန့်ညက်သည် တစ်ခါတစ်ရံ အနည်းငယ် ချဉ်သော၊ အရက်ရနံ့ရှိသော အနံ့ ဖွံ့ဖြိုးလာနိုင်သည် -- သကြား ပို၍ ပြောင်းလဲသွားသည်နှင့်အမျှ Fermentation မှ ထုတ်လုပ်သော Ethanol ပို၍ ထင်ရှားလာခြင်းဖြစ်ကြောင်း ဆရာမက ရှင်းပြခဲ့သည်။ ထို Ethanol အများစုသည် အပိုကာဗွန်ဒိုင်အောက်ဆိုဒ်နှင့်အတူ မုန့်ဖုတ်ခြင်းအတွင်း အပူချိန်က တဆေးကို သတ်ပြီး ပေါင်မုန့်၏ နောက်ဆုံး ဖွဲ့စည်းပုံကို သတ်မှတ်လိုက်သည်နှင့်အမျှ ငွေ့ပျံထွက်ကုန်သည် -- ၎င်းသည် ပေါ့ပါးသော ဖွဲ့စည်းပုံကို ပေးခဲ့သော ဖောင်းလာခြင်းဖြစ်စဉ်သည် အရက်ဓာတ်ကို Co-product အဖြစ် ထုတ်လုပ်သော Anaerobic တုံ့ပြန်မှုတစ်ခုအပေါ် လုံးဝ မှီခိုနေသော်လည်း ပြီးစီးသော မုန့်တစ်လုံးသည် အရက်ဓာတ် လုံးဝ မရသည့် အတိအကျ အကြောင်းရင်းပင် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does yeast respire anaerobically inside the dough?",
            questionMy:
                "မုန့်ညက်အတွင်း တဆေးသည် Anaerobically Respire ဖြစ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The dough is too thick for much oxygen to reach the yeast cells trapped inside",
              "Yeast never respires with oxygen under any conditions",
              "The oven is too hot for aerobic respiration",
              "Flour blocks all oxygen from entering the kitchen",
            ],
            optionsMy: [
              "မုန့်ညက်သည် ထူလွန်းသဖြင့် အတွင်းရှိ ချုပ်နေသော တဆေးဆဲလ်များထံ အောက်ဆီဂျင် အနည်းငယ်သာ ရောက်ရှိနိုင်သောကြောင့်",
              "မည်သည့်အခြေအနေတွင်မဆို တဆေးသည် အောက်ဆီဂျင်ဖြင့် လုံးဝ Respire မဖြစ်သောကြောင့်",
              "Aerobic Respiration အတွက် မီးဖို အလွန်ပူသောကြောင့်",
              "မုန့်ညက်က မီးဖိုချောင်ထဲသို့ အောက်ဆီဂျင် ဝင်ခြင်း လုံးဝ ပိတ်ဆို့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the reason given for why oxygen can't reach the trapped yeast cells.",
              "Thick dough limits diffusion of oxygen to the cells inside it.",
            ],
            hintsMy: [
              "ချုပ်နေသော တဆေးဆဲလ်များထံ အောက်ဆီဂျင် အဘယ်ကြောင့် မရောက်ရှိနိုင်ကြောင်း ပေးထားသော အကြောင်းရင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ထူသော မုန့်ညက်သည် ၎င်း၏ အတွင်းရှိ ဆဲလ်များထံ အောက်ဆီဂျင် Diffusion ကို ကန့်သတ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what causes the dough to expand and become light and airy?",
            questionMy:
                "မုန့်ညက်ချဲ့ထွင်ပြီး ပေါ့ပါး၊ လေဝင်နေသကဲ့သို့ ဖြစ်စေသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Carbon dioxide gas trapped as bubbles throughout the dough",
              "Extra flour added by the baker",
              "The dough absorbing water",
              "Oxygen bubbles from aerobic respiration",
            ],
            optionsMy: [
              "မုန့်ညက်တစ်ခုလုံးတွင် ပူဖောင်းများအဖြစ် ချုပ်နေသော ကာဗွန်ဒိုင်အောက်ဆိုဒ်ဓာတ်ငွေ့",
              "မုန့်ဖုတ်သမားက ထည့်လိုက်သော မုန့်ညက်အပို",
              "မုန့်ညက်က ရေကို စုပ်ယူခြင်း",
              "Aerobic Respiration မှ အောက်ဆီဂျင် ပူဖောင်းများ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence naming the specific gas that expands the dough.",
              "This gas is a product of yeast's fermentation of sugar.",
            ],
            hintsMy: [
              "မုန့်ညက်ကို ချဲ့ထွင်ပေးသော တိတိကျကျ ဓာတ်ငွေ့ကို အမည်တပ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤဓာတ်ငွေ့သည် တဆေး၏ သကြား Fermentation ၏ Product ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what causes the sour, alcoholic smell in dough left to rise too long?",
            questionMy:
                "ကြာကြာလွန်းဖောင်းစေထားသော မုန့်ညက်တွင် ချဉ်သော၊ အရက်ရနံ့ရှိသော အနံ့ ဖြစ်ပေါ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Ethanol produced by fermentation becomes more noticeable as more sugar is converted",
              "The flour has gone bad",
              "Too much water was added",
              "The oven was too cold",
            ],
            optionsMy: [
              "သကြား ပို၍ ပြောင်းလဲသွားသည်နှင့်အမျှ Fermentation မှ ထုတ်လုပ်သော Ethanol ပို၍ ထင်ရှားလာခြင်း",
              "မုန့်ညက် ပုပ်သွားခြင်း",
              "ရေ လွန်ကဲစွာ ထည့်ခဲ့ခြင်း",
              "မီးဖို အလွန်အေးခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the teacher's explanation of the sour smell.",
              "More time fermenting means more ethanol accumulates.",
            ],
            hintsMy: [
              "ချဉ်သောအနံ့အကြောင်း ဆရာမ၏ ရှင်းချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "Fermentation ကြာချိန် ပို၍များလျှင် Ethanol ပို၍ စုပုံလာသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why does the finished baked bread not taste alcoholic, according to paragraph 3?",
            questionMy:
                "ပြီးစီးသော ပေါင်မုန့်တွင် အရက်ဓာတ် အဘယ်ကြောင့် မရှိတော့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Most of the ethanol evaporates away during baking as the oven's heat kills the yeast",
              "Yeast never actually produces ethanol",
              "The flour absorbs all the ethanol permanently",
              "Ethanol turns into sugar during baking",
            ],
            optionsMy: [
              "မီးဖို၏ အပူချိန်က တဆေးကို သတ်ပြီး မုန့်ဖုတ်ခြင်းအတွင်း Ethanol အများစု ငွေ့ပျံထွက်ကုန်ခြင်း",
              "တဆေးသည် Ethanol ကို အမှန်တကယ် လုံးဝ မထုတ်လုပ်ခြင်း",
              "မုန့်ညက်က Ethanol အားလုံးကို အမြဲတမ်း စုပ်ယူထားခြင်း",
              "မုန့်ဖုတ်ခြင်းအတွင်း Ethanol သည် သကြားအဖြစ် ပြောင်းလဲသွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence explaining what happens to the ethanol during baking.",
              "Heat causes evaporation, and the oven's heat also stops the yeast's activity.",
            ],
            hintsMy: [
              "မုန့်ဖုတ်ခြင်းအတွင်း Ethanol မည်သို့ ဖြစ်သွားကြောင်း ရှင်းပြသော နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "အပူချိန်က ငွေ့ပျံမှုကို ဖြစ်စေပြီး မီးဖို၏ အပူချိန်က တဆေး၏ လှုပ်ရှားမှုကိုလည်း ရပ်တန့်စေသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w23-d5",
      dayNumber: 5,
      titleEn: "Week 23 Recap: Respiration",
      titleMy: "နှစ်ဆယ့်သုံးပတ် ပြန်လည်သုံးသပ်ခြင်း - Respiration",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Anaerobic respiration in yeast produces which two products?",
          questionMy:
              "တဆေးတွင် Anaerobic Respiration က Product နှစ်မျိုးကို ထုတ်လုပ်ပေးသည်၊ ၎င်းတို့မှာ အဘယ်နည်း",
          optionsEn: [
            "Ethanol and carbon dioxide",
            "Lactic acid and oxygen",
            "Glucose and water",
            "Oxygen and nitrogen",
          ],
          optionsMy: [
            "Ethanol နှင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ်",
            "Lactic Acid နှင့် အောက်ဆီဂျင်",
            "ဂလူးကို့စ်နှင့် ရေ",
            "အောက်ဆီဂျင်နှင့် နိုက်ထရိုဂျင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Anaerobic respiration in human muscle cells produces...",
          questionMy:
              "လူ့ကြွက်သားဆဲလ်များတွင် Anaerobic Respiration က ထုတ်လုပ်ပေးသည်မှာ...",
          optionsEn: ["Lactic acid", "Ethanol", "Oxygen", "Starch"],
          optionsMy: ["Lactic Acid", "Ethanol", "အောက်ဆီဂျင်", "Starch"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Aerobic respiration releases far more energy than anaerobic respiration because...",
          questionMy:
              "Aerobic Respiration သည် Anaerobic Respiration ထက် စွမ်းအင် ပို၍ များစွာ ထုတ်လွှတ်သည့်အကြောင်းရင်းမှာ...",
          optionsEn: [
            "It fully breaks down glucose using oxygen",
            "It uses no glucose at all",
            "It happens faster than anaerobic respiration",
            "It only happens in plants",
          ],
          optionsMy: [
            "အောက်ဆီဂျင်ကို သုံး၍ ဂလူးကို့စ်ကို အပြည့်အစုံ ချေဖျက်သောကြောင့်",
            "ဂလူးကို့စ် လုံးဝ မသုံးသောကြောင့်",
            "Anaerobic Respiration ထက် ပို၍ မြန်ဆန်စွာ ဖြစ်ပေါ်သောကြောင့်",
            "အပင်များတွင်သာ ဖြစ်ပွားသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 24 (Capstone): "Respiration Practical Lab"
// =====================================================================

const CourseWeekDef _igcseBioWeek24 = CourseWeekDef(
  id: "course-igcse-bio-w24",
  weekNumber: 24,
  titleEn: "Respiration Practical Lab",
  titleMy: "အသက်ရှူခြင်း ဓာတ်ခွဲခန်း လက်တွေ့စမ်းသပ်မှု",
  xpReward: 20,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w24-d1",
      dayNumber: 1,
      titleEn: "Measuring Respiration Rate",
      titleMy: "Respiration နှုန်း တိုင်းတာခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A respirometer measures the rate of respiration by tracking...",
          questionMy:
              "Respirometer တစ်လုံးသည် ...ကို ခြေရာခံခြင်းဖြင့် Respiration နှုန်းကို တိုင်းတာသည်",
          optionsEn: [
            "The volume of oxygen consumed by an organism over time",
            "The colour of the organism's skin",
            "The number of cells in the organism",
            "The organism's exact body temperature",
          ],
          optionsMy: [
            "အချိန်အတိုင်းအတာတစ်ခုအတွင်း သက်ရှိတစ်ခု သုံးစွဲသော အောက်ဆီဂျင်ပမာဏ",
            "သက်ရှိ၏ အရေပြားအရောင်",
            "သက်ရှိတွင် ပါဝင်သော ဆဲလ်အရေအတွက်",
            "သက်ရှိ၏ အတိအကျ ခန္ဓာကိုယ်အပူချိန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A common design uses soda lime to absorb carbon dioxide produced, so only oxygen consumption causes a volume change.",
            "As oxygen is used up, the resulting pressure/volume change moves a coloured liquid marker along a scale.",
          ],
          hintsMy: [
            "ထုတ်လုပ်သော ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို Soda Lime က စုပ်ယူသဖြင့် အောက်ဆီဂျင်သုံးစွဲမှုက ဝင်ရိုးဆမ်း အပြောင်းအလဲကို ဖြစ်စေသည့် ဒီဇိုင်းတစ်မျိုး အသုံးများသည်။",
            "အောက်ဆီဂျင် သုံးစွဲသွားသည်နှင့်အမျှ ရလာသော ဖိအား/ဝင်ရိုးဆမ်း အပြောင်းအလဲသည် စကေးတစ်လျှောက် အရောင်ပါသော အရည်အမှတ်အသားကို ရွှေ့လျားစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why is soda lime often included in a respirometer setup?",
          questionMy:
              "Respirometer တပ်ဆင်ပုံတွင် Soda Lime ကို ဘာကြောင့် မကြာခဏ ထည့်သွင်းသနည်း။",
          optionsEn: [
            "It absorbs carbon dioxide, so only oxygen consumption causes the measurable change",
            "It produces extra oxygen for the organism",
            "It kills the organism being tested",
            "It colours the liquid marker",
          ],
          optionsMy: [
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို စုပ်ယူသဖြင့် အောက်ဆီဂျင်သုံးစွဲမှုတစ်ခုတည်းသာ တိုင်းတာနိုင်သော အပြောင်းအလဲကို ဖြစ်စေခြင်း",
            "စမ်းသပ်ခံနေသော သက်ရှိအတွက် အောက်ဆီဂျင်အပို ထုတ်လုပ်ပေးခြင်း",
            "စမ်းသပ်ခံနေသော သက်ရှိကို သတ်ပစ်ခြင်း",
            "အရည်အမှတ်အသားကို အရောင်တင်ပေးခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Without removing CO2, oxygen used and CO2 produced could roughly cancel each other's volume change out.",
            "Soda lime chemically absorbs CO2 gas, isolating oxygen consumption as the only variable affecting volume.",
          ],
          hintsMy: [
            "CO2 ကို ဖယ်ရှားခြင်းမရှိပါက အောက်ဆီဂျင်သုံးစွဲမှုနှင့် CO2 ထုတ်လုပ်မှုတို့သည် ဝင်ရိုးဆမ်း အပြောင်းအလဲကို အကြမ်းဖျင်း ဖျက်ပစ်နိုင်သည်။",
            "Soda Lime သည် CO2 ဓာတ်ငွေ့ကို ဓာတုနည်းအားဖြင့် စုပ်ယူပြီး ဝင်ရိုးဆမ်းကို သက်ရောက်သော Variable တစ်ခုတည်းအဖြစ် အောက်ဆီဂျင်သုံးစွဲမှုကို သီးခြားစီ ခွဲထုတ်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a yeast respiration experiment, why might researchers count carbon dioxide bubbles produced per minute at different temperatures?",
          questionMy:
              "တဆေး Respiration စမ်းသပ်မှုတွင် သုတေသီများသည် အပူချိန် မတူညီမှုများတွင် တစ်မိနစ်လျှင် ထုတ်လုပ်သော ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပူဖောင်းအရေအတွက်ကို ဘာကြောင့် ရေတွက်နိုင်သနည်း။",
          optionsEn: [
            "To investigate how temperature affects the rate of anaerobic respiration in yeast",
            "Bubbles have no connection to respiration rate at all",
            "To measure the exact mass of the yeast",
            "To determine the colour of the yeast",
          ],
          optionsMy: [
            "အပူချိန်သည် တဆေး၏ Anaerobic Respiration နှုန်းကို မည်သို့ သက်ရောက်ကြောင်း စူးစမ်းရန်",
            "ပူဖောင်းများသည် Respiration နှုန်းနှင့် လုံးဝ ဆက်စပ်မှု မရှိပါ",
            "တဆေး၏ အတိအကျ အလေးချိန်ကို တိုင်းတာရန်",
            "တဆေး၏ အရောင်ကို ဆုံးဖြတ်ရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Faster carbon dioxide production indicates a faster rate of anaerobic respiration/fermentation.",
            "This is another example of using temperature as an independent variable in an experiment.",
          ],
          hintsMy: [
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပို၍ မြန်ဆန်စွာ ထုတ်လုပ်ခြင်းသည် Anaerobic Respiration/Fermentation နှုန်း ပို၍ မြန်ကြောင်း ညွှန်ပြသည်။",
            "ဤသည်မှာ စမ်းသပ်မှုတစ်ခုတွင် အပူချိန်ကို Independent Variable အဖြစ် သုံးသော နောက်ထပ် ဥပမာတစ်ခု ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w24-d2",
      dayNumber: 2,
      titleEn: "Match: Term 6 Key Terms",
      titleMy: "တွဲစပ်ကြမည် - ဆဌမနှစ်ဝက် သော့ချက်စကားလုံးများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w24-dm-1",
          termEn: "Respirometer",
          termMy: "Respirometer",
          matchEn:
              "Apparatus that measures the rate of respiration, usually via oxygen consumption",
          matchMy:
              "များသောအားဖြင့် အောက်ဆီဂျင်သုံးစွဲမှုမှတစ်ဆင့် Respiration နှုန်းကို တိုင်းတာသော ကိရိယာ",
          colorValue: 0xFF03A9F4,
        ),
        DragMatchPair(
          id: "igcsebio-w24-dm-2",
          termEn: "Soda lime",
          termMy: "Soda Lime",
          matchEn:
              "A chemical that absorbs carbon dioxide gas, used to isolate oxygen consumption in respirometer experiments",
          matchMy:
              "ကာဗွန်ဒိုင်အောက်ဆိုဒ်ဓာတ်ငွေ့ကို စုပ်ယူသော ဓာတုပစ္စည်းတစ်ခု၊ Respirometer စမ်းသပ်မှုများတွင် အောက်ဆီဂျင်သုံးစွဲမှုကို သီးခြားစီ ခွဲထုတ်ရန် သုံးသည်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w24-dm-3",
          termEn: "Fermentation",
          termMy: "Fermentation",
          matchEn:
              "Anaerobic respiration in yeast, tracked in experiments by counting bubbles of carbon dioxide",
          matchMy:
              "ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပူဖောင်းများကို ရေတွက်ခြင်းဖြင့် စမ်းသပ်မှုများတွင် ခြေရာခံသော တဆေး၏ Anaerobic Respiration",
          colorValue: 0xFFFF9800,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w24-d3",
      dayNumber: 3,
      titleEn: "Sort: Gas Exchange, Smoking, or Respiration Topic?",
      titleMy:
          "စီစစ်ကြမည် - Gas Exchange, ဆေးလိပ်, သို့မဟုတ် Respiration ဆိုင်ရာ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Gas Exchange Topic",
          "Smoking Health Topic",
          "Respiration Topic",
        ],
        bucketsMy: [
          "Gas Exchange ဆိုင်ရာ",
          "ဆေးလိပ်ကျန်းမာရေး ဆိုင်ရာ",
          "Respiration ဆိုင်ရာ",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w24-sort-1",
            labelEn:
                "Explaining how the diaphragm and intercostal muscles change thorax volume",
            labelMy:
                "Diaphragm နှင့် Intercostal ကြွက်သားများက Thorax ဝင်ရိုးဆမ်းကို မည်သို့ ပြောင်းလဲကြောင်း ရှင်းပြခြင်း",
            correctBucketEn: "Gas Exchange Topic",
            correctBucketMy: "Gas Exchange ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsebio-w24-sort-2",
            labelEn:
                "Explaining why emphysema permanently reduces alveoli surface area",
            labelMy:
                "Emphysema က Alveoli မျက်နှာပြင်ဧရိယာကို အမြဲတမ်း အဘယ်ကြောင့် လျော့ကျစေကြောင်း ရှင်းပြခြင်း",
            correctBucketEn: "Smoking Health Topic",
            correctBucketMy: "ဆေးလိပ်ကျန်းမာရေး ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsebio-w24-sort-3",
            labelEn:
                "Comparing the energy released by aerobic versus anaerobic respiration",
            labelMy:
                "Aerobic နှင့် Anaerobic Respiration က ထုတ်လွှတ်သော စွမ်းအင်ကို နှိုင်းယှဉ်ခြင်း",
            correctBucketEn: "Respiration Topic",
            correctBucketMy: "Respiration ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsebio-w24-sort-4",
            labelEn: "Explaining how carbon monoxide binds to haemoglobin",
            labelMy:
                "ကာဗွန်မိုနောက်ဆိုဒ်က Haemoglobin နှင့် မည်သို့ ချိတ်ဆက်ကြောင်း ရှင်းပြခြင်း",
            correctBucketEn: "Smoking Health Topic",
            correctBucketMy: "ဆေးလိပ်ကျန်းမာရေး ဆိုင်ရာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w24-d4",
      dayNumber: 4,
      titleEn: "Reading: Aung Myat's Germinating Seeds Experiment",
      titleMy: "စာဖတ်ခြင်း - အောင်မြတ်၏ အညှောက်ထွက်မျိုးစေ့ စမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Aung Myat's Germinating Seeds Experiment",
        titleMy: "အောင်မြတ်၏ အညှောက်ထွက်မျိုးစေ့ စမ်းသပ်မှု",
        passageEn:
            "For his final practical assessment, Aung Myat set up a simple respirometer using two boiling tubes connected to a U-shaped glass tube containing a drop of coloured liquid. In the first boiling tube, he placed germinating pea seeds, actively respiring, packed in cotton wool with a layer of soda lime beneath them to absorb carbon dioxide. In the second, identical tube, he placed the same volume of glass beads instead of seeds, with soda lime as well, to act as a control that accounted for any temperature or pressure changes unrelated to respiration.\n\nAs the germinating seeds respired aerobically, they consumed oxygen from the sealed air inside their tube, and since the soda lime absorbed the carbon dioxide they produced, the overall gas volume inside that tube decreased. This drop in volume created a slightly lower pressure inside the seed tube compared to the control tube, causing the coloured liquid marker in the connecting U-tube to move steadily toward the seed side. Aung Myat timed how far the marker moved over five minutes, then repeated the whole experiment at three different temperatures to see how temperature affected the seeds' respiration rate.\n\nHis results showed the marker moving fastest at the intermediate, warmer temperature and more slowly at both the cold and very hot extremes -- a pattern that reminded him immediately of the enzyme activity graphs from Term 3, since respiration itself depends on enzyme-controlled reactions inside the seeds' cells. Aung Myat concluded in his write-up that the glass bead control tube was essential to his experiment's validity: without it, he could not have been certain that the marker's movement was caused specifically by the seeds' oxygen consumption, rather than by unrelated changes in room temperature or atmospheric pressure during the five-minute trial.",
        passageMy:
            "နောက်ဆုံး လက်တွေ့ အကဲဖြတ်မှုအတွက် အောင်မြတ်သည် အရောင်ပါသော အရည်တစ်စက် ပါဝင်သော U ပုံသဏ္ဌာန်ဖန်ပြွန်နှင့် ချိတ်ဆက်ထားသော စမ်းသပ်ပြွန်နှစ်ခုကို သုံး၍ ရိုးရှင်းသော Respirometer တစ်လုံးကို တပ်ဆင်ခဲ့သည်။ ပထမစမ်းသပ်ပြွန်တွင် အညှောက်ထွက်၍ တက်ကြွစွာ Respire ဖြစ်နေသော ပဲမျိုးစေ့များကို ချည်သားမှုန့်ဖြင့် ထုပ်ပြီး၊ ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို စုပ်ယူရန် Soda Lime အလွှာကို ၎င်းတို့အောက်တွင် ထားခဲ့သည်။ ဒုတိယ၊ တူညီသော ပြွန်တွင်မူ မျိုးစေ့များအစား ဖန်စေ့ တူညီသော ပမာဏကို Soda Lime အတူတကွ ထားခဲ့ပြီး၊ Respiration နှင့် မသက်ဆိုင်သော အပူချိန် သို့မဟုတ် ဖိအား အပြောင်းအလဲများကို ထည့်သွင်းစဉ်းစားပေးသော Control တစ်ခုအဖြစ် သုံးခဲ့သည်။\n\nအညှောက်ထွက်မျိုးစေ့များ Aerobically Respire ဖြစ်ရင်း ၎င်းတို့၏ ပြွန်အတွင်းရှိ ပိတ်ထားသော လေမှ အောက်ဆီဂျင်ကို သုံးစွဲခဲ့ပြီး၊ Soda Lime က ၎င်းတို့ ထုတ်လုပ်သော ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို စုပ်ယူသဖြင့် ထိုပြွန်အတွင်း စုစုပေါင်း ဓာတ်ငွေ့ ဝင်ရိုးဆမ်း လျော့ကျသွားခဲ့သည်။ ဝင်ရိုးဆမ်း ဤသို့ ကျဆင်းမှုက Control ပြွန်နှင့် နှိုင်းယှဉ်လျှင် မျိုးစေ့ပြွန်အတွင်း ဖိအားအနည်းငယ် နိမ့်စေခဲ့ပြီး၊ ချိတ်ဆက်ထားသော U ပြွန်ရှိ အရောင်ပါသော အရည်အမှတ်အသားကို မျိုးစေ့ဘက်သို့ တည်ငြိမ်စွာ ရွေ့လျားစေခဲ့သည်။ အောင်မြတ်သည် အရေးအသားကို မိနစ် ၅ မိနစ်အတွင်း မည်မျှ ရွေ့လျားကြောင်း အချိန်ယူပြီး၊ အပူချိန် သုံးမျိုးဖြင့် စမ်းသပ်မှုတစ်ခုလုံးကို ထပ်ခါထပ်ခါ ပြုလုပ်ကာ အပူချိန်သည် မျိုးစေ့များ၏ Respiration နှုန်းကို မည်သို့ သက်ရောက်ကြောင်း ကြည့်ခဲ့သည်။\n\nသူ၏ ရလဒ်များက အရင့်အလယ်၊ ပို၍ နွေးသော အပူချိန်တွင် အရေးအသား အမြန်ဆုံး ရွေ့လျားပြီး အေးသောနှင့် အပူပြင်းသော အစွန်းနှစ်ဖက်စလုံးတွင် ပို၍ နှေးကွေးစွာ ရွေ့လျားကြောင်း ပြသခဲ့သည် -- ဤပုံစံသည် Respiration ကိုယ်တိုင်သည် မျိုးစေ့ဆဲလ်များအတွင်း Enzyme-ထိန်းချုပ်သော တုံ့ပြန်မှုများပေါ် မှီခိုနေသောကြောင့် တတိယနှစ်ဝက်မှ Enzyme Activity ဂရပ်များကို ချက်ချင်း သတိရစေခဲ့သည်။ အောင်မြတ်သည် ၎င်း၏ အရေးအသားတွင် ဖန်စေ့ Control ပြွန်သည် စမ်းသပ်မှု၏ ခိုင်လုံမှုအတွက် မရှိမဖြစ် ဖြစ်ကြောင်း ကောက်ချက်ချခဲ့သည်- ၎င်း မရှိပါက အရေးအသား၏ ရွေ့လျားမှုသည် မိနစ် ၅ မိနစ် စမ်းသပ်မှုအတွင်း အခန်းအပူချိန် သို့မဟုတ် လေထုဖိအား၏ မသက်ဆိုင်သော အပြောင်းအလဲများကြောင့် မဟုတ်ဘဲ မျိုးစေ့များ၏ အောက်ဆီဂျင်သုံးစွဲမှုကြောင့် တိတိကျကျ ဖြစ်ကြောင်း သူ သေချာနိုင်မည် မဟုတ်ပါ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what was the purpose of the glass beads tube?",
            questionMy: "ဖန်စေ့ပြွန်၏ ရည်ရွယ်ချက်ကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "To act as a control accounting for changes unrelated to respiration",
              "To provide extra oxygen to the seeds",
              "To speed up the seeds' germination",
              "To colour the liquid marker",
            ],
            optionsMy: [
              "Respiration နှင့် မသက်ဆိုင်သော အပြောင်းအလဲများကို ထည့်သွင်းစဉ်းစားပေးသော Control အဖြစ် လုပ်ဆောင်ရန်",
              "မျိုးစေ့များအတွက် အောက်ဆီဂျင်အပို ထောက်ပံ့ရန်",
              "မျိုးစေ့များ အညှောက်ထွက်မှုကို မြန်ဆန်စေရန်",
              "အရည်အမှတ်အသားကို အရောင်တင်ရန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining what the glass bead tube was 'a control that accounted for'.",
              "This lets the researcher isolate seed respiration as the specific cause of the marker's movement.",
            ],
            hintsMy: [
              "ဖန်စေ့ပြွန်သည် 'ဘာအတွက် Control' ဖြစ်ကြောင်း ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်က သုတေသီအား အရေးအသား ရွေ့လျားမှု၏ တိတိကျကျ အကြောင်းရင်းအဖြစ် မျိုးစေ့ Respiration ကို သီးခြားစီ ခွဲထုတ်နိုင်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did the coloured liquid marker move toward the seed side?",
            questionMy:
                "အရောင်ပါသော အရည်အမှတ်အသား မျိုးစေ့ဘက်သို့ ရွေ့လျားရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Oxygen consumption plus carbon dioxide absorption by soda lime lowered the pressure in the seed tube",
              "The seeds pushed the liquid directly",
              "The control tube produced extra gas",
              "The temperature dropped suddenly",
            ],
            optionsMy: [
              "အောက်ဆီဂျင်သုံးစွဲမှုနှင့် Soda Lime ၏ ကာဗွန်ဒိုင်အောက်ဆိုဒ် စုပ်ယူမှုက မျိုးစေ့ပြွန်ရှိ ဖိအားကို လျော့ကျစေခြင်း",
              "မျိုးစေ့များက အရည်ကို တိုက်ရိုက် တွန်းခြင်း",
              "Control ပြွန်က ဓာတ်ငွေ့အပို ထုတ်လုပ်ခြင်း",
              "အပူချိန် ရုတ်တရက် ကျဆင်းခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence connecting the volume drop to the pressure difference between the two tubes.",
              "Gas moves toward lower pressure, pulling the liquid marker with it.",
            ],
            hintsMy: [
              "ဝင်ရိုးဆမ်း ကျဆင်းမှုကို ပြွန်နှစ်ခုကြား ဖိအားကွာခြားချက်နှင့် ဆက်စပ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဓာတ်ငွေ့သည် ဖိအားနိမ့်ရာသို့ ရွေ့လျားပြီး အရည်အမှတ်အသားကို ၎င်းနှင့်အတူ ဆွဲသွားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what pattern did Aung Myat notice across the three temperatures?",
            questionMy:
                "အပူချိန်သုံးမျိုးတစ်လျှောက် အောင်မြတ် သတိပြုမိသော ပုံစံကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Fastest movement at an intermediate warm temperature, slower at both cold and very hot extremes",
              "The marker moved at exactly the same speed at every temperature",
              "The marker moved fastest at the coldest temperature",
              "The marker never moved at any temperature",
            ],
            optionsMy: [
              "အလယ်အလတ် နွေးသော အပူချိန်တွင် အမြန်ဆုံးရွေ့လျားပြီး အေးသောနှင့် အပူပြင်းသော အစွန်းများတွင် ပို၍ နှေးကွေး",
              "အရေးအသားသည် အပူချိန်တိုင်းတွင် အတိအကျ တူညီသော အမြန်နှုန်းဖြင့် ရွေ့လျားခြင်း",
              "အရေးအသားသည် အအေးဆုံးအပူချိန်တွင် အမြန်ဆုံး ရွေ့လျားခြင်း",
              "အရေးအသားသည် မည်သည့်အပူချိန်တွင်မျှ လုံးဝ မရွေ့လျားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing the marker's speed at the three temperatures tested.",
              "This pattern matches the enzyme activity vs. temperature graph shape from Term 3.",
            ],
            hintsMy: [
              "စမ်းသပ်ခဲ့သော အပူချိန်သုံးမျိုးတွင် အရေးအသား၏ အမြန်နှုန်းကို ဖော်ပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤပုံစံသည် တတိယနှစ်ဝက်မှ Enzyme Activity vs Temperature ဂရပ်ပုံသဏ္ဌာန်နှင့် ကိုက်ညီသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Aung Myat conclude the control tube was essential, according to paragraph 3?",
            questionMy:
                "Control ပြွန် မရှိမဖြစ် ဖြစ်ကြောင်း အောင်မြတ် အဘယ်ကြောင့် ကောက်ချက်ချခဲ့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Without it, he could not be certain the marker's movement was caused specifically by seed respiration",
              "It made the experiment take less time",
              "It was required by law",
              "It made the seeds germinate faster",
            ],
            optionsMy: [
              "၎င်း မရှိပါက အရေးအသား၏ ရွေ့လျားမှုသည် မျိုးစေ့ Respiration ကြောင့် တိတိကျကျ ဖြစ်ကြောင်း သေချာနိုင်မည် မဟုတ်ပါ",
              "စမ်းသပ်မှုကို အချိန် ပို၍ တိုတောင်းစေသောကြောင့်",
              "ဥပဒေအရ လိုအပ်သောကြောင့်",
              "မျိုးစေ့များ ပို၍ မြန်ဆန်စွာ အညှောက်ထွက်စေသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of the passage.",
              "Without a control, other factors like room temperature changes could explain the result instead.",
            ],
            hintsMy: [
              "စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Control မရှိပါက အခန်းအပူချိန် ပြောင်းလဲမှုကဲ့သို့သော အခြားအချက်များက ရလဒ်ကို ရှင်းပြနိုင်သည့်အစား ဖြစ်နိုင်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w24-d5",
      dayNumber: 5,
      titleEn: "Term 6 Recap: Gas Exchange and Respiration",
      titleMy:
          "ဆဌမအပိုင်း ပြန်လည်သုံးသပ်ခြင်း - ဓာတ်ငွေ့လဲလှယ်မှုနှင့် Respiration",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Where does gas exchange happen in the human lungs?",
          questionMy:
              "လူ့အဆုတ်တွင် ဓာတ်ငွေ့ဖလှယ်မှု မည်သည့်နေရာ၌ ဖြစ်ပေါ်သနည်း",
          optionsEn: ["Alveoli", "Trachea", "Diaphragm", "Larynx"],
          optionsMy: ["Alveoli", "Trachea", "Diaphragm", "Larynx"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Carbon monoxide is dangerous because it...",
          questionMy: "ကာဗွန်မိုနောက်ဆိုဒ် အန္တရာယ်ရှိသည့် အကြောင်းရင်းမှာ...",
          optionsEn: [
            "Binds haemoglobin more strongly than oxygen",
            "Is a type of vitamin",
            "Helps blood clot",
            "Is produced by photosynthesis",
          ],
          optionsMy: [
            "Haemoglobin နှင့် အောက်ဆီဂျင်ထက် ပိုခိုင်မာစွာ ချိတ်ဆက်ခြင်း",
            "Vitamin အမျိုးအစားတစ်ခု ဖြစ်ခြင်း",
            "သွေးခဲအောင် ကူညီပေးခြင်း",
            "Photosynthesis မှ ထုတ်လုပ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "The waste product of anaerobic respiration in human muscles is...",
          questionMy:
              "လူ့ကြွက်သားများတွင် Anaerobic Respiration ၏ စွန့်ပစ်ပစ္စည်းမှာ...",
          optionsEn: ["Lactic acid", "Ethanol", "Carbon monoxide", "Nicotine"],
          optionsMy: [
            "Lactic Acid",
            "Ethanol",
            "ကာဗွန်မိုနောက်ဆိုဒ်",
            "Nicotine",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A respirometer with soda lime measures respiration rate by tracking...",
          questionMy:
              "Soda Lime ပါသော Respirometer တစ်လုံးသည် ...ကို ခြေရာခံခြင်းဖြင့် Respiration နှုန်းကို တိုင်းတာသည်",
          optionsEn: [
            "Oxygen consumption",
            "Carbon dioxide production only",
            "Body temperature",
            "Heart rate",
          ],
          optionsMy: [
            "အောက်ဆီဂျင်သုံးစွဲမှု",
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်ထုတ်လုပ်မှုသာ",
            "ခန္ဓာကိုယ်အပူချိန်",
            "နှလုံးခုန်နှုန်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 6: "Gas Exchange and Respiration"
// (Weeks 21-24)
// =====================================================================

const CourseTermDef igcseBiologyTerm6 = CourseTermDef(
  id: "course-igcse-bio-t6",
  termNumber: 6,
  titleEn: "Gas Exchange and Respiration",
  titleMy: "ဓာတ်ငွေ့လဲလှယ်မှုနှင့် Respiration",
  certificateTitleEn: "Gas Exchange and Respiration",
  certificateTitleMy: "ဓာတ်ငွေ့လဲလှယ်မှုနှင့် Respiration",
  weeks: [_igcseBioWeek21, _igcseBioWeek22, _igcseBioWeek23, _igcseBioWeek24],
);

// =====================================================================
// Week 25: "Nervous Control in Humans"
// =====================================================================

const CourseWeekDef _igcseBioWeek25 = CourseWeekDef(
  id: "course-igcse-bio-w25",
  weekNumber: 25,
  titleEn: "Nervous Control in Humans",
  titleMy: "လူသားတို့၏ အာရုံကြော ထိန်းချုပ်မှု စနစ်",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w25-d1",
      dayNumber: 1,
      titleEn: "The Nervous System and Reflex Arcs",
      titleMy: "အာရုံကြောစနစ်နှင့် Reflex Arc",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "The central nervous system (CNS) is made up of which two structures?",
          questionMy:
              "Central Nervous System (CNS) ကို ဖွဲ့စည်းပုံနှစ်ခုမှ ဖွဲ့စည်းထားသည်၊ ၎င်းတို့မှာ အဘယ်နည်း။",
          optionsEn: [
            "The brain and spinal cord",
            "The heart and lungs",
            "The skin and muscles",
            "The eyes and ears only",
          ],
          optionsMy: [
            "ဦးနှောက်နှင့် ကျောရိုးအရိုးတွင်း",
            "နှလုံးနှင့် အဆုတ်",
            "အရေပြားနှင့် ကြွက်သား",
            "မျက်စိနှင့် နားသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "The CNS is the control centre; everything else is the peripheral nervous system.",
            "Nerves running throughout the body connect to this central pair of structures.",
          ],
          hintsMy: [
            "CNS သည် ထိန်းချုပ်ရေးဌာနချုပ် ဖြစ်ပြီး ကျန်သမျှသည် Peripheral Nervous System ဖြစ်သည်။",
            "ခန္ဓာကိုယ်တစ်ဝန်း ကျင်လည်နေသော အာရုံကြောများသည် ဤဗဟိုဖွဲ့စည်းပုံနှစ်ခုသို့ ချိတ်ဆက်ထားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a reflex arc, in which order does the nerve impulse usually travel?",
          questionMy:
              "Reflex Arc တစ်ခုတွင် အာရုံကြော လှုပ်ရှားမှုအချက်ပြသည် ပုံမှန်အားဖြင့် မည်သည့်အစီအစဉ်ဖြင့် ခရီးသွားသနည်း။",
          optionsEn: [
            "Receptor -> sensory neurone -> relay neurone -> motor neurone -> effector",
            "Effector -> motor neurone -> receptor",
            "Relay neurone -> receptor -> effector",
            "Motor neurone -> sensory neurone -> relay neurone",
          ],
          optionsMy: [
            "Receptor -> Sensory Neurone -> Relay Neurone -> Motor Neurone -> Effector",
            "Effector -> Motor Neurone -> Receptor",
            "Relay Neurone -> Receptor -> Effector",
            "Motor Neurone -> Sensory Neurone -> Relay Neurone",
          ],
          correctIndex: 0,
          hintsEn: [
            "A stimulus is detected first, then the signal travels toward the CNS, gets processed, then travels back out.",
            "The receptor detects the stimulus; the effector (a muscle or gland) carries out the response.",
          ],
          hintsMy: [
            "Stimulus ကို ဦးစွာ ရှာဖွေတွေ့ရှိပြီး Signal သည် CNS ဆီသို့ ခရီးသွားကာ လုပ်ငန်းစဉ်ဆောင်ရွက်ပြီးနောက် ပြန်ထွက်သွားသည်။",
            "Receptor က Stimulus ကို ရှာဖွေတွေ့ရှိပြီး Effector (ကြွက်သား သို့မဟုတ် Gland) က တုံ့ပြန်မှုကို လုပ်ဆောင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why are reflex actions, such as pulling your hand away from something hot, so fast?",
          questionMy:
              "ပူသောအရာမှ လက်ကို ပြန်ရုတ်သိမ်းသကဲ့သို့သော Reflex Action များသည် အဘယ်ကြောင့် ဤမျှ လျင်မြန်သနည်း။",
          optionsEn: [
            "They are automatic and mostly bypass conscious decision-making in the brain, often processed at the spinal cord",
            "They always require the brain to carefully think it through first",
            "They only happen when you are asleep",
            "They are controlled entirely by hormones, which act instantly",
          ],
          optionsMy: [
            "Automatic ဖြစ်ပြီး ဦးနှောက်၏ ရွေးချယ်ဆုံးဖြတ်ချက်ကို အများစု ရှောင်ကျဉ်၍ ကျောရိုးအရိုးတွင်း၌ မကြာခဏ လုပ်ငန်းစဉ်ဆောင်ရွက်သောကြောင့်",
            "ဦးနှောက်က အရင်ဆုံး ဂရုတစိုက် တွေးတောရန် အမြဲလိုအပ်သောကြောင့်",
            "အိပ်ပျော်နေချိန်တွင်သာ ဖြစ်ပွားသောကြောင့်",
            "ချက်ချင်း လုပ်ဆောင်ပေးသော ဟိုမုန်းများက လုံးဝ ထိန်းချုပ်ထားသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Reflex arcs often route through the spinal cord alone, skipping the slower process of conscious thought.",
            "This automatic, protective speed is exactly why reflexes exist -- to react before harm occurs.",
          ],
          hintsMy: [
            "Reflex Arc များသည် ဦးနှောက်၏ တွေးခေါ်မှု နှေးကွေးသော ဖြစ်စဉ်ကို ကျော်ဖြတ်ကာ ကျောရိုးအရိုးတွင်းတစ်ခုတည်းမှသာ မကြာခဏ ဖြတ်သန်းသည်။",
            "ဤ Automatic ဖြစ်ပြီး ကာကွယ်ပေးနိုင်သော လျင်မြန်မှုသည် Reflex ရှိရသည့် အတိအကျ အကြောင်းရင်းပင်ဖြစ်သည် -- ထိခိုက်မှု မဖြစ်မီ တုံ့ပြန်နိုင်ရန်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w25-d2",
      dayNumber: 2,
      titleEn: "Match: Nervous System Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - အာရုံကြောစနစ် ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w25-dm-1",
          termEn: "Sensory neurone",
          termMy: "Sensory Neurone",
          matchEn:
              "A neurone that carries impulses from a receptor to the central nervous system",
          matchMy:
              "Receptor မှ Central Nervous System ဆီသို့ Impulse များ သယ်ဆောင်ပေးသော Neurone",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w25-dm-2",
          termEn: "Motor neurone",
          termMy: "Motor Neurone",
          matchEn:
              "A neurone that carries impulses from the central nervous system to an effector",
          matchMy:
              "Central Nervous System မှ Effector ဆီသို့ Impulse များ သယ်ဆောင်ပေးသော Neurone",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w25-dm-3",
          termEn: "Relay neurone",
          termMy: "Relay Neurone",
          matchEn:
              "A neurone within the central nervous system that connects sensory and motor neurones",
          matchMy:
              "Sensory နှင့် Motor Neurone များကို ချိတ်ဆက်ပေးသော Central Nervous System အတွင်းရှိ Neurone",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w25-dm-4",
          termEn: "Effector",
          termMy: "Effector",
          matchEn:
              "A muscle or gland that carries out the response to a stimulus",
          matchMy:
              "Stimulus တစ်ခုအပေါ် တုံ့ပြန်မှုကို လုပ်ဆောင်သော ကြွက်သား သို့မဟုတ် Gland",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w25-dm-5",
          termEn: "Synapse",
          termMy: "Synapse",
          matchEn:
              "The small gap between two neurones, crossed by chemical neurotransmitters",
          matchMy:
              "Neurone နှစ်ခုကြားရှိ ဓာတု Neurotransmitter များဖြင့် ဖြတ်ကျော်သော ကြားနေရာငယ်",
          colorValue: 0xFF9C27B0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w25-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Neurone?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် Neurone",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Sensory Neurone", "Relay Neurone", "Motor Neurone"],
        bucketsMy: ["Sensory Neurone", "Relay Neurone", "Motor Neurone"],
        items: [
          SortingItem(
            id: "igcsebio-w25-sort-1",
            labelEn:
                "Carries the impulse from a heat receptor in the skin toward the spinal cord",
            labelMy:
                "အရေပြားရှိ အပူ Receptor မှ ကျောရိုးအရိုးတွင်းဆီသို့ Impulse ကို သယ်ဆောင်ခြင်း",
            correctBucketEn: "Sensory Neurone",
            correctBucketMy: "Sensory Neurone",
          ),
          SortingItem(
            id: "igcsebio-w25-sort-2",
            labelEn:
                "Connects the sensory and motor neurones inside the spinal cord",
            labelMy:
                "ကျောရိုးအရိုးတွင်း Sensory နှင့် Motor Neurone များကို ချိတ်ဆက်ခြင်း",
            correctBucketEn: "Relay Neurone",
            correctBucketMy: "Relay Neurone",
          ),
          SortingItem(
            id: "igcsebio-w25-sort-3",
            labelEn:
                "Carries the impulse from the spinal cord to the arm muscle, causing it to contract",
            labelMy:
                "ကျောရိုးအရိုးတွင်းမှ လက်မောင်းကြွက်သားဆီသို့ Impulse ကို သယ်ဆောင်ကာ တွန့်ကျုံ့စေခြင်း",
            correctBucketEn: "Motor Neurone",
            correctBucketMy: "Motor Neurone",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w25-d4",
      dayNumber: 4,
      titleEn: "Reading: Thet Paing's Hot Pan Reflex",
      titleMy: "စာဖတ်ခြင်း - သက်ပိုင်၏ ပန်းကန်ပူ Reflex",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thet Paing's Hot Pan Reflex",
        titleMy: "သက်ပိုင်၏ ပန်းကန်ပူ Reflex",
        passageEn:
            "While helping his mother cook, Thet Paing accidentally touched the edge of a hot frying pan and yanked his hand away before he had even consciously registered the pain -- a split second later, his brain caught up and he felt the burning sensation and cried out. Curious about how his hand seemed to move faster than his own thoughts, he asked his Biology teacher to explain what had happened.\n\nHis teacher explained that this was a classic example of a reflex arc. Heat receptors in the skin of his fingers detected the dangerous temperature and generated an electrical impulse, which travelled along a sensory neurone toward his spinal cord. Inside the spinal cord, this impulse crossed a synapse to a relay neurone, which immediately passed it on, across another synapse, to a motor neurone. That motor neurone carried the impulse straight to the muscles in his arm, the effector, causing them to contract and pull his hand away -- all without the impulse ever needing to travel up to the brain first.\n\nHis teacher explained that this route through the spinal cord alone, rather than the brain, is exactly why the whole reflex happened so quickly: the pathway was short, and it bypassed the slower process of conscious decision-making entirely. Only afterward did a separate nerve pathway carry the pain signal up to the brain, which is why Thet Paing felt the burning sensation and cried out a fraction of a second after his hand had already moved -- his body had protected itself automatically, before his conscious mind even knew there was danger.",
        passageMy:
            "အမေနှင့်အတူ ချက်ပြုတ်ရာတွင် ကူညီနေစဉ် သက်ပိုင်သည် ချက်ပြုတ်ကရမ်းပူ၏ အစွန်းကို မတော်တဆ ထိမိသွားခဲ့ပြီး ဒဏ်ရာကို သတိမမူမီ လက်ကို ပြန်ရုတ်သိမ်းလိုက်ခဲ့သည် -- စက္ကန့်အနည်းငယ်ကြာမှသာ သူ၏ ဦးနှောက်က ချက်ချင်းလိုက်ဖြေရှင်းကာ လောင်ကျွမ်းသော ခံစားမှုကို ခံစားရပြီး အော်ဟစ်ခဲ့သည်။ သူ၏ လက်သည် သူ၏ ကိုယ်ပိုင် တွေးခေါ်မှုထက် ပို၍ မြန်ဆန်စွာ ရွေ့လျားပုံရသည့် အကြောင်းရင်းကို စိတ်ဝင်စားသဖြင့် ၎င်း၏ ဇီဝဗေဒဆရာမကို အဘယ်အရာ ဖြစ်ခဲ့ကြောင်း ရှင်းပြပေးရန် တောင်းဆိုခဲ့သည်။\n\nဤသည်မှာ Reflex Arc ၏ ဥပမာအစစ်တစ်ခုပင်ဖြစ်ကြောင်း သူ၏ ဆရာမက ရှင်းပြခဲ့သည်။ ၎င်း၏ လက်ချောင်းများ၏ အရေပြားရှိ အပူ Receptor များက အန္တရာယ်ရှိသော အပူချိန်ကို ရှာဖွေတွေ့ရှိပြီး လျှပ်စစ် Impulse တစ်ခု ထုတ်လုပ်ကာ ၎င်း၏ ကျောရိုးအရိုးတွင်းဆီသို့ Sensory Neurone တစ်လျှောက် ခရီးသွားခဲ့သည်။ ကျောရိုးအရိုးတွင်းတွင် ဤ Impulse သည် Synapse တစ်ခုကို ဖြတ်ကျော်ကာ Relay Neurone သို့ ရောက်ရှိခဲ့ပြီး ၎င်းက ချက်ချင်းပင် နောက်ထပ် Synapse တစ်ခုကို ဖြတ်ကျော်ကာ Motor Neurone သို့ ဆက်လက် ပို့ဆောင်ခဲ့သည်။ ထို Motor Neurone သည် Impulse ကို ၎င်း၏ လက်မောင်းရှိ ကြွက်သားများ (Effector) ဆီသို့ တိုက်ရိုက် သယ်ဆောင်ကာ ၎င်းတို့ကို တွန့်ကျုံ့စေပြီး လက်ကို ပြန်ဆွဲသိမ်းစေခဲ့သည် -- ဤအားလုံးသည် Impulse ဦးနှောက်ဆီသို့ ဦးစွာ ခရီးသွားရန် လုံးဝ မလိုအပ်ဘဲ ဖြစ်ခဲ့သည်။\n\nဦးနှောက်မဟုတ်ဘဲ ကျောရိုးအရိုးတွင်းတစ်ခုတည်းမှသာ ဤလမ်းကြောင်းက Reflex တစ်ခုလုံး ဤမျှ လျင်မြန်စွာ ဖြစ်ပေါ်ရသည့် အတိအကျ အကြောင်းရင်းပင် ဖြစ်ကြောင်း သူ၏ ဆရာမက ရှင်းပြခဲ့သည်- ခရီးလမ်းကြောင်း တိုတောင်းပြီး ရွေးချယ်ဆုံးဖြတ်ခြင်း ဖြစ်စဉ် နှေးကွေးမှုကို လုံးဝ ကျော်ဖြတ်သွားသည်။ ထို့နောက်မှသာ သီးခြားအာရုံကြောလမ်းကြောင်းတစ်ခုက နာကျင်မှု Signal ကို ဦးနှောက်ဆီသို့ သယ်ဆောင်ခဲ့သည်၊ ၎င်းသည် သက်ပိုင်၏ လက် ရွေ့လျားပြီးနောက် စက္ကန့်အစိတ်အပိုင်းငယ်တစ်ခုကြာမှသာ လောင်ကျွမ်းသော ခံစားမှုကို ခံစားရပြီး အော်ဟစ်ခဲ့ရသည့် အကြောင်းရင်းပင် ဖြစ်သည် -- သူ၏ ကိုယ်ပိုင် စိတ်က အန္တရာယ်ရှိကြောင်း သတိမမူမီ ၎င်း၏ ခန္ဓာကိုယ်ကိုယ်တိုင် Automatic ဖြင့် ကာကွယ်ပေးခဲ့ခြင်း ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what happens first when the heat receptors detect danger?",
            questionMy:
                "အပူ Receptor များက အန္တရာယ်ကို ရှာဖွေတွေ့ရှိသောအခါ ပထမဆုံး အဘယ်ဖြစ်ပေါ်ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "An electrical impulse travels along a sensory neurone toward the spinal cord",
              "The brain immediately makes a conscious decision",
              "The muscle contracts before any impulse is generated",
              "The hand becomes permanently numb",
            ],
            optionsMy: [
              "လျှပ်စစ် Impulse တစ်ခု Sensory Neurone တစ်လျှောက် ကျောရိုးအရိုးတွင်းဆီသို့ ခရီးသွားခြင်း",
              "ဦးနှောက်က ချက်ချင်း ရွေးချယ်ဆုံးဖြတ်ချက် ချမှတ်ခြင်း",
              "Impulse မထုတ်လုပ်မီ ကြွက်သား တွန့်ကျုံ့ခြင်း",
              "လက် အမြဲတမ်း သွေးခေါင်းသွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first sentence of paragraph 2.",
              "This is the very first step of the reflex arc, right after detection.",
            ],
            hintsMy: [
              "စာပိုဒ် ၂ ၏ ပထမစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ တွေ့ရှိပြီးနောက် Reflex Arc ၏ ပထမဆုံးအဆင့်ပင် ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, in what order does the impulse pass through the neurones?",
            questionMy:
                "Impulse သည် Neurone များကို မည်သည့်အစီအစဉ်ဖြင့် ဖြတ်သန်းကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Sensory neurone, then relay neurone, then motor neurone",
              "Motor neurone, then sensory neurone, then relay neurone",
              "Relay neurone, then motor neurone, then sensory neurone",
              "All three neurones fire at exactly the same instant with no order",
            ],
            optionsMy: [
              "Sensory Neurone၊ ထို့နောက် Relay Neurone၊ ထို့နောက် Motor Neurone",
              "Motor Neurone၊ ထို့နောက် Sensory Neurone၊ ထို့နောက် Relay Neurone",
              "Relay Neurone၊ ထို့နောက် Motor Neurone၊ ထို့နောက် Sensory Neurone",
              "အစီအစဉ် လုံးဝမရှိဘဲ Neurone သုံးခုစလုံး တစ်ချိန်တည်း လှုပ်ရှားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread paragraph 2 tracing the impulse's full path.",
              "This matches the standard reflex arc order taught earlier in the week.",
            ],
            hintsMy: [
              "Impulse ၏ ခရီးလမ်းတစ်ခုလုံးကို ခြေရာခံသော စာပိုဒ် ၂ ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ ဤပတ်အစောပိုင်းတွင် သင်ကြားခဲ့သော စံ Reflex Arc အစီအစဉ်နှင့် ကိုက်ညီသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did the reflex happen so quickly, without needing the brain?",
            questionMy:
                "ဦးနှောက် မလိုအပ်ဘဲ Reflex ဤမျှ လျင်မြန်စွာ ဖြစ်ပေါ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The pathway through the spinal cord alone was short and bypassed slower conscious decision-making",
              "The brain was asleep at the time",
              "The muscles moved before receiving any signal at all",
              "Reflexes always involve the brain first, then the spinal cord",
            ],
            optionsMy: [
              "ကျောရိုးအရိုးတွင်းတစ်ခုတည်းမှသာ ခရီးလမ်းကြောင်း တိုတောင်းပြီး ပို၍ နှေးကွေးသော ရွေးချယ်ဆုံးဖြတ်ခြင်းကို ကျော်ဖြတ်ခြင်း",
              "ထိုအချိန်တွင် ဦးနှောက် အိပ်ပျော်နေခြင်း",
              "Signal မည်သည့်တစ်ခုမျှ မရရှိမီ ကြွက်သားများ ရွေ့လျားခြင်း",
              "Reflex များသည် ဦးနှောက်ကို အရင်ဆုံးပါဝင်စေပြီး ထို့နောက် ကျောရိုးအရိုးတွင်းကို အမြဲပါဝင်စေခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the short pathway and bypassing conscious decision-making.",
              "A shorter route with fewer processing steps takes less time.",
            ],
            hintsMy: [
              "လမ်းကြောင်းတိုတောင်းမှုနှင့် ရွေးချယ်ဆုံးဖြတ်ခြင်း ကျော်ဖြတ်မှုကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "လုပ်ငန်းစဉ် အဆင့်နည်းသော တိုတောင်းသည့်လမ်းကြောင်းသည် အချိန် ပို၍ နည်းစွာ ကုန်ဆုံးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did Thet Paing feel pain and cry out only after his hand had already moved?",
            questionMy:
                "သက်ပိုင်၏ လက် ရွေ့လျားပြီးနောက်မှသာ နာကျင်မှု ခံစားရပြီး အော်ဟစ်ခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "A separate pathway carried the pain signal to the brain afterward, taking a fraction of a second longer",
              "He was not actually injured at all",
              "The reflex had not actually happened yet",
              "His brain processed the signal before his hand moved",
            ],
            optionsMy: [
              "သီးခြားလမ်းကြောင်းတစ်ခုက နာကျင်မှု Signal ကို ဦးနှောက်ဆီသို့ နောက်ပိုင်းတွင် သယ်ဆောင်ခဲ့ပြီး စက္ကန့်အစိတ်အပိုင်းငယ်တစ်ခုပို၍ ကြာမြင့်ခြင်း",
              "၎င်းသည် အမှန်တကယ် ဒဏ်ရာ လုံးဝ မရရှိခဲ့ခြင်း",
              "Reflex အမှန်တကယ် မဖြစ်ပေါ်ခဲ့သေးခြင်း",
              "လက် မရွေ့လျားမီ ဦးနှောက်က Signal ကို လုပ်ငန်းစဉ်ဆောင်ရွက်ခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of the passage.",
              "The reflex arc's own pathway is separate and faster than the pathway carrying conscious pain sensation.",
            ],
            hintsMy: [
              "စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Reflex Arc ၏ ကိုယ်ပိုင်လမ်းကြောင်းသည် သတိရှိသော နာကျင်မှုခံစားချက်ကို သယ်ဆောင်သော လမ်းကြောင်းထက် သီးခြားနှင့် ပို၍ မြန်ဆန်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w25-d5",
      dayNumber: 5,
      titleEn: "Week 25 Recap: Nervous Control",
      titleMy: "နှစ်ဆယ့်ငါးပတ် ပြန်လည်သုံးသပ်ခြင်း - အာရုံကြော ထိန်းချုပ်မှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The CNS is made up of the brain and...",
          questionMy: "CNS ကို ဦးနှောက်နှင့် ...တို့မှ ဖွဲ့စည်းထားသည်",
          optionsEn: ["Spinal cord", "Heart", "Skin", "Liver"],
          optionsMy: ["ကျောရိုးအရိုးတွင်း", "နှလုံး", "အရေပြား", "အသည်း"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which neurone carries impulses toward the CNS from a receptor?",
          questionMy:
              "မည်သည့် Neurone က Receptor မှ CNS ဆီသို့ Impulse များ သယ်ဆောင်သနည်း",
          optionsEn: [
            "Sensory neurone",
            "Motor neurone",
            "Relay neurone only",
            "None of them",
          ],
          optionsMy: [
            "Sensory Neurone",
            "Motor Neurone",
            "Relay Neurone သာ",
            "မည်သည့်တစ်ခုမျှ မဟုတ်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Reflex actions are fast mainly because...",
          questionMy:
              "Reflex Action များသည် အဓိကအားဖြင့် မြန်ဆန်ရသည့်အကြောင်းရင်းမှာ...",
          optionsEn: [
            "They are automatic and mostly bypass slower conscious brain processing",
            "They always require the brain's full attention first",
            "They only happen once a year",
            "They involve no neurones at all",
          ],
          optionsMy: [
            "Automatic ဖြစ်ပြီး ဦးနှောက်၏ နှေးကွေးသော လုပ်ငန်းစဉ်ကို အများစု ကျော်ဖြတ်ခြင်း",
            "ဦးနှောက်၏ အာရုံစိုက်မှု အပြည့်အဝကို အမြဲဦးစွာ လိုအပ်ခြင်း",
            "တစ်နှစ်တစ်ကြိမ်သာ ဖြစ်ပွားခြင်း",
            "Neurone လုံးဝ မပါဝင်ခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 26: "The Human Eye and Hormones"
// =====================================================================

const CourseWeekDef _igcseBioWeek26 = CourseWeekDef(
  id: "course-igcse-bio-w26",
  weekNumber: 26,
  titleEn: "The Human Eye and Hormones",
  titleMy: "လူ့မျက်စိနှင့် ဟိုမုန်းစနစ်",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w26-d1",
      dayNumber: 1,
      titleEn: "The Eye and the Pupil Reflex",
      titleMy: "မျက်စိနှင့် Pupil Reflex",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which part of the eye contains the light-sensitive receptor cells?",
          questionMy:
              "မျက်စိ၏ မည်သည့်အစိတ်အပိုင်းတွင် အလင်းလှုံ့ဆော်မှုသိသော Receptor ဆဲလ်များ ပါဝင်သနည်း။",
          optionsEn: ["The retina", "The cornea", "The iris", "The pupil"],
          optionsMy: ["Retina", "Cornea", "Iris", "Pupil"],
          correctIndex: 0,
          hintsEn: [
            "This layer lines the back of the eye and contains rod and cone cells.",
            "Rods detect dim light; cones detect colour.",
          ],
          hintsMy: [
            "ဤအလွှာသည် မျက်စိ၏ နောက်ဘက်ကို အလွှာခံထားပြီး Rod နှင့် Cone ဆဲလ်များ ပါဝင်သည်။",
            "Rod များက အလင်းအားနည်းသော အလင်းကို ရှာဖွေတွေ့ရှိပြီး Cone များက အရောင်ကို ရှာဖွေတွေ့ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "In bright light, what happens to the pupil, and why?",
          questionMy:
              "အလင်းပြင်းသောနေရာတွင် Pupil အဘယ်ဖြစ်ပေါ်လာပြီး၊ ဘာကြောင့်ဖြစ်သနည်း။",
          optionsEn: [
            "It constricts (gets smaller), to protect the retina from too much light",
            "It dilates (gets larger), to let more light in",
            "It changes colour",
            "It closes completely and permanently",
          ],
          optionsMy: [
            "ကျုံ့ (ပိုသေးငယ်) သွားပြီး Retina ကို အလင်းပြင်းလွန်းမှုမှ ကာကွယ်ပေးသည်",
            "ဖောင်း (ပိုကြီးလာ) သွားပြီး အလင်း ပို၍ ဝင်စေသည်",
            "အရောင် ပြောင်းလဲသွားသည်",
            "အမြဲတမ်း လုံးလုံးလျားလျား ပိတ်သွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is an involuntary reflex, controlled by circular and radial muscles in the iris.",
            "Too much light could damage the sensitive retina, so the pupil shrinks to limit it.",
          ],
          hintsMy: [
            "ဤသည်မှာ Iris ရှိ Circular နှင့် Radial ကြွက်သားများက ထိန်းချုပ်သော သဘောလိုက်စွာ ဖြစ်ပေါ်သော Reflex တစ်ခု ဖြစ်သည်။",
            "အလင်း လွန်ကဲပါက Sensitive ဖြစ်သော Retina ကို ပျက်စီးစေနိုင်သောကြောင့် Pupil က ၎င်းကို ကန့်သတ်ရန် ကျုံ့သွားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which structure controls the size of the pupil?",
          questionMy:
              "မည်သည့်ဖွဲ့စည်းပုံက Pupil ၏ အရွယ်အစားကို ထိန်းချုပ်သနည်း။",
          optionsEn: ["The iris", "The lens", "The cornea", "The optic nerve"],
          optionsMy: ["Iris", "Lens", "Cornea", "Optic Nerve"],
          correctIndex: 0,
          hintsEn: [
            "This is the coloured part of the eye, containing muscles that expand or shrink the central opening.",
            "It contains both circular muscles (constrict the pupil) and radial muscles (dilate the pupil).",
          ],
          hintsMy: [
            "ဤသည်မှာ မျက်စိ၏ အလယ်ပိုင်းအပေါက်ကို ချဲ့ခြင်း/ကျုံ့ခြင်း ပြုလုပ်သော ကြွက်သားများ ပါဝင်သည့် အရောင်ရှိသော မျက်စိအစိတ်အပိုင်းဖြစ်သည်။",
            "၎င်းတွင် Circular ကြွက်သားများ (Pupil ကို ကျုံ့စေသည်) နှင့် Radial ကြွက်သားများ (Pupil ကို ဖောင်းစေသည်) နှစ်မျိုးလုံး ပါဝင်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w26-d2",
      dayNumber: 2,
      titleEn: "Match: Hormones vs Nerves",
      titleMy: "တွဲစပ်ကြမည် - Hormones vs Nerves",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w26-dm-1",
          termEn: "Hormone",
          termMy: "Hormone",
          matchEn:
              "A chemical messenger, produced by a gland, that travels in the blood and has a slower, longer-lasting effect",
          matchMy:
              "Gland တစ်ခုမှ ထုတ်လုပ်ပြီး သွေးထဲတွင် ခရီးသွားကာ ပို၍ နှေးကွေးသော၊ ကြာရှည်ခံသော အကျိုးသက်ရောက်မှုရှိသည့် ဓာတု သတင်းပို့ပစ္စည်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w26-dm-2",
          termEn: "Nerve impulse",
          termMy: "Nerve Impulse",
          matchEn:
              "An electrical signal that travels along a neurone, acting fast but only briefly",
          matchMy:
              "Neurone တစ်လျှောက် ခရီးသွားပြီး လျင်မြန်စွာသာ ဆောင်ရွက်ပေးသော လျှပ်စစ်အချက်ပြသည်",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w26-dm-3",
          termEn: "Cornea",
          termMy: "Cornea",
          matchEn:
              "The transparent front layer of the eye that refracts (bends) light entering it",
          matchMy:
              "ဝင်ရောက်လာသော အလင်းကို ချိုးဖျက် (ကွေးညွှတ်) ပေးသော မျက်စိ၏ ပွင့်လင်းမြင်နိုင်သော ရှေ့အလွှာ",
          colorValue: 0xFF00BCD4,
        ),
        DragMatchPair(
          id: "igcsebio-w26-dm-4",
          termEn: "Retina",
          termMy: "Retina",
          matchEn:
              "The light-sensitive layer at the back of the eye, containing rods and cones",
          matchMy:
              "Rod နှင့် Cone များ ပါဝင်သော မျက်စိ၏ နောက်ဘက် အလင်းလှုံ့ဆော်မှုသိသော အလွှာ",
          colorValue: 0xFF4CAF50,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w26-d3",
      dayNumber: 3,
      titleEn: "Sort: Hormonal or Nervous Control?",
      titleMy:
          "စီစစ်ကြမည် - Hormonal ထိန်းချုပ်မှုလား Nervous ထိန်းချုပ်မှုလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Hormonal Control", "Nervous Control"],
        bucketsMy: ["Hormonal ထိန်းချုပ်မှု", "Nervous ထိန်းချုပ်မှု"],
        items: [
          SortingItem(
            id: "igcsebio-w26-sort-1",
            labelEn:
                "Pulling your hand away from a hot surface within a split second",
            labelMy:
                "ပူသောမျက်နှာပြင်မှ စက္ကန့်အစိတ်အပိုင်းငယ်အတွင်း လက်ကို ပြန်ရုတ်သိမ်းခြင်း",
            correctBucketEn: "Nervous Control",
            correctBucketMy: "Nervous ထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "igcsebio-w26-sort-2",
            labelEn:
                "Insulin released into the blood gradually lowering blood glucose over minutes",
            labelMy:
                "သွေးထဲသို့ လွှတ်လိုက်သော Insulin က မိနစ်များအတွင်း သွေးဂလူးကို့စ်ကို တဖြည်းဖြည်း လျော့ချခြင်း",
            correctBucketEn: "Hormonal Control",
            correctBucketMy: "Hormonal ထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "igcsebio-w26-sort-3",
            labelEn: "The pupil constricting almost instantly in bright light",
            labelMy: "အလင်းပြင်းသောအခါ Pupil ချက်ချင်းနီးပါး ကျုံ့ခြင်း",
            correctBucketEn: "Nervous Control",
            correctBucketMy: "Nervous ထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "igcsebio-w26-sort-4",
            labelEn:
                "Growth hormone gradually causing bones to lengthen over months and years",
            labelMy:
                "Growth Hormone က လများ၊ နှစ်များအတွင်း အရိုးများကို တဖြည်းဖြည်း ရှည်လာစေခြင်း",
            correctBucketEn: "Hormonal Control",
            correctBucketMy: "Hormonal ထိန်းချုပ်မှု",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w26-d4",
      dayNumber: 4,
      titleEn: "Reading: Optician Daw Nilar's Eye Chart",
      titleMy: "စာဖတ်ခြင်း - မျက်မှန်ဆိုင်ရှင် ဒေါ်နီလာ၏ မျက်စိစမ်းဇယား",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Optician Daw Nilar's Eye Chart",
        titleMy: "မျက်မှန်ဆိုင်ရှင် ဒေါ်နီလာ၏ မျက်စိစမ်းဇယား",
        passageEn:
            "Daw Nilar ran a small optician's shop, and when a group of students visited for a career-day tour, she used a torch and a mirror to demonstrate the pupil reflex live. She dimmed the shop lights until a volunteer's pupils had visibly dilated wide, then suddenly shone a torch into one eye and asked the group to watch closely -- within a fraction of a second, both pupils, not just the illuminated one, constricted sharply.\n\nShe explained that this rapid, involuntary response was controlled entirely by the nervous system rather than hormones, since light receptors in the retina detected the sudden brightness and sent impulses along a short reflex pathway that caused the circular muscles in the iris to contract, shrinking the pupil almost instantly. She contrasted this with a hormonal response, like the way insulin gradually lowers blood glucose over many minutes after a meal: nervous responses like the pupil reflex are built for split-second protection, while hormonal responses are built for slower, longer-lasting regulation.\n\nA student asked why both eyes reacted even though the torch shone into only one. Daw Nilar explained this was called the consensual light reflex: the nerve pathway connecting the retina to the pupil-controlling muscles crosses over inside the brain, so a signal detected by one eye triggers a protective response in both eyes simultaneously. She noted that opticians use exactly this reflex during eye examinations, since a pupil that fails to constrict properly, or reacts unevenly between the two eyes, can be an early warning sign of a problem in the nervous pathway connecting the eye to the brain, not just a problem with the eye itself.",
        passageMy:
            "ဒေါ်နီလာသည် မျက်မှန်ဆိုင်ငယ်တစ်ဆိုင် လုပ်ကိုင်ခဲ့ပြီး၊ ကျောင်းသားအုပ်စုတစ်စု Career Day ခရီးစဉ်တွင် လာရောက်ခဲ့သောအခါ၊ Pupil Reflex ကို တိုက်ရိုက် သရုပ်ပြရန် Torch နှင့် မှန်တစ်ချပ်ကို သုံးခဲ့သည်။ သူမသည် စေတနာ့ဝန်ထမ်း တစ်ဦး၏ Pupil များ ဖောင်းလာသည်ကို မြင်ရသည်အထိ ဆိုင်ရှိ မီးများကို လျှော့ချခဲ့ပြီး၊ ရုတ်တရက် Torch ကို မျက်လုံးတစ်လုံးထဲသို့ ထိုးလိုက်ကာ အုပ်စုအား သေချာစွာ ကြည့်ရှုစေခဲ့သည် -- စက္ကန့်အစိတ်အပိုင်းငယ်အတွင်း မျက်လုံးတစ်လုံးတည်း မဟုတ်ဘဲ Pupil နှစ်လုံးစလုံး ချက်ချင်း ကျုံ့သွားခဲ့သည်။\n\nဤလျင်မြန်၍ သဘောလိုက်စွာ ဖြစ်ပေါ်သော တုံ့ပြန်မှုသည် Hormones မဟုတ်ဘဲ အာရုံကြောစနစ်က လုံးဝ ထိန်းချုပ်ခြင်းဖြစ်ကြောင်း သူမ ရှင်းပြခဲ့သည်၊ အကြောင်းမှာ Retina ရှိ အလင်း Receptor များက ရုတ်တရက် အလင်းတောက်ပလာမှုကို ရှာဖွေတွေ့ရှိပြီး ခရီးလမ်းကြောင်း တိုတောင်းသော Reflex တစ်ခုတစ်လျှောက် Impulse များ ပို့လိုက်ကာ Iris ရှိ Circular ကြွက်သားများကို တွန့်ကျုံ့စေကာ Pupil ကို ချက်ချင်းနီးပါး ကျုံ့စေခဲ့ခြင်း ဖြစ်သည်။ Meal တစ်ခုစားပြီးနောက် Insulin က သွေးဂလူးကို့စ်ကို မိနစ်များစွာ ကြာအောင် တဖြည်းဖြည်း လျော့ချသကဲ့သို့သော Hormonal တုံ့ပြန်မှုနှင့် ဤအရာကို သူမ နှိုင်းယှဉ်ပြခဲ့သည်- Pupil Reflex ကဲ့သို့သော Nervous တုံ့ပြန်မှုများကို စက္ကန့်အစိတ်အပိုင်းငယ် ကာကွယ်မှုအတွက် ဒီဇိုင်းထုတ်ထားပြီး၊ Hormonal တုံ့ပြန်မှုများကို ပို၍ နှေးကွေးပြီး ကြာရှည်ခံသော ထိန်းညှိမှုအတွက် ဒီဇိုင်းထုတ်ထားသည်။\n\nကျောင်းသားတစ်ဦးက Torch ကို မျက်လုံးတစ်လုံးထဲသို့သာ ထိုးထည့်ခဲ့သော်လည်း မျက်လုံးနှစ်လုံးစလုံး အဘယ်ကြောင့် တုံ့ပြန်ခဲ့ကြောင်း မေးမြန်းခဲ့သည်။ ဒေါ်နီလာက ဤအရာကို Consensual Light Reflex ဟု ခေါ်ကြောင်း ရှင်းပြခဲ့သည်- Retina မှ Pupil ထိန်းချုပ်ကြွက်သားများသို့ ချိတ်ဆက်ထားသော အာရုံကြောလမ်းကြောင်းသည် ဦးနှောက်အတွင်း ဖြတ်ကျော်ကွင်းဆက်နေသဖြင့် မျက်လုံးတစ်လုံးက ရှာဖွေတွေ့ရှိသော Signal တစ်ခုသည် မျက်လုံးနှစ်လုံးလုံးတွင် ကာကွယ်ပေးသော တုံ့ပြန်မှုကို တစ်ပြိုင်နက် လှုံ့ဆော်ပေးသည်။ မျက်စိစစ်ဆေးမှုများအတွင်း မျက်မှန်ဆိုင်ရှင်များက ဤ Reflex ကို အတိအကျ အသုံးပြုကြောင်း သူမ မှတ်ချက်ပြုခဲ့သည်၊ အကြောင်းမှာ ကောင်းမွန်စွာ မကျုံ့နိုင်သော သို့မဟုတ် မျက်လုံးနှစ်လုံးကြား မညီမညာ တုံ့ပြန်သော Pupil တစ်ခုသည် မျက်စိကိုယ်တိုင်၏ ပြဿနာသာမက မျက်စိမှ ဦးနှောက်ဆီသို့ ချိတ်ဆက်ထားသော အာရုံကြောလမ်းကြောင်းရှိ ပြဿနာ၏ အစောပိုင်းသတိပေးလက္ခဏာ ဖြစ်နိုင်သောကြောင့် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what type of control is the pupil reflex?",
            questionMy:
                "Pupil Reflex သည် မည်သည့်အမျိုးအစား ထိန်းချုပ်မှု ဖြစ်ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Nervous control, not hormonal",
              "Hormonal control, not nervous",
              "Neither nervous nor hormonal",
              "Both equally, with no difference in speed",
            ],
            optionsMy: [
              "Nervous ထိန်းချုပ်မှု၊ Hormonal မဟုတ်ပါ",
              "Hormonal ထိန်းချုပ်မှု၊ Nervous မဟုတ်ပါ",
              "Nervous မှလည်းကောင်း၊ Hormonal မှလည်းကောင်း မဟုတ်ပါ",
              "နှစ်ခုစလုံး အညီအမျှ၊ အမြန်နှုန်း ကွာခြားချက် မရှိပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first sentence of paragraph 2.",
              "The response was described as rapid and involuntary.",
            ],
            hintsMy: [
              "စာပိုဒ် ၂ ၏ ပထမစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "တုံ့ပြန်မှုကို လျင်မြန်၍ သဘောလိုက်စွာ ဖြစ်ကြောင်း ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how does the speed of nervous responses compare to hormonal ones?",
            questionMy:
                "Nervous တုံ့ပြန်မှုများ၏ အမြန်နှုန်းသည် Hormonal တုံ့ပြန်မှုများနှင့် မည်သို့ နှိုင်းယှဉ်ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Nervous responses are built for split-second protection; hormonal responses are slower and longer-lasting",
              "They are always exactly the same speed",
              "Hormonal responses are always faster",
              "Nervous responses always take several minutes",
            ],
            optionsMy: [
              "Nervous တုံ့ပြန်မှုများကို စက္ကန့်အစိတ်အပိုင်းငယ် ကာကွယ်မှုအတွက် ဒီဇိုင်းထုတ်ထားပြီး Hormonal တုံ့ပြန်မှုများ ပို၍ နှေးကွေးပြီး ကြာရှည်ခံသည်",
              "အမြဲတမ်း အတိအကျ တူညီသော အမြန်နှုန်း ဖြစ်ခြင်း",
              "Hormonal တုံ့ပြန်မှုများ အမြဲပို၍ မြန်ဆန်ခြင်း",
              "Nervous တုံ့ပြန်မှုများသည် အမြဲ မိနစ်များစွာ ကြာမြင့်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the contrast drawn between the pupil reflex and insulin's effect.",
              "This directly compares the two systems' speed and duration.",
            ],
            hintsMy: [
              "Pupil Reflex နှင့် Insulin ၏ အကျိုးသက်ရောက်မှုကို နှိုင်းယှဉ်ထားသော အပိုင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်က စနစ်နှစ်ခု၏ အမြန်နှုန်းနှင့် ကြာချိန်ကို တိုက်ရိုက် နှိုင်းယှဉ်ထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did both pupils react even though the torch shone into only one eye?",
            questionMy:
                "Torch ကို မျက်လုံးတစ်လုံးထဲသို့သာ ထိုးထည့်ခဲ့သော်လည်း Pupil နှစ်လုံးစလုံး တုံ့ပြန်ခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The nerve pathway crosses over inside the brain, triggering both eyes simultaneously",
              "The torch light physically reached both eyes at once",
              "One eye's reaction had nothing to do with the other",
              "It was a coincidence unrelated to the nervous system",
            ],
            optionsMy: [
              "အာရုံကြောလမ်းကြောင်းသည် ဦးနှောက်အတွင်း ဖြတ်ကျော်ကွင်းဆက်နေသဖြင့် မျက်လုံးနှစ်လုံးလုံးကို တစ်ပြိုင်နက် လှုံ့ဆော်ခြင်း",
              "Torch အလင်းသည် မျက်လုံးနှစ်လုံးလုံးကို တစ်ပြိုင်နက် ရုပ်ပိုင်းဆိုင်ရာ ရောက်ရှိသောကြောင့်",
              "မျက်လုံးတစ်လုံး၏ တုံ့ပြန်မှုသည် အခြားတစ်လုံးနှင့် လုံးဝ မသက်ဆိုင်ခြင်း",
              "အာရုံကြောစနစ်နှင့် မသက်ဆိုင်သော ကြုံခဲ့ရုံသာ ဖြစ်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread Daw Nilar's explanation of the 'consensual light reflex'.",
              "The pathway crossing inside the brain is the key mechanism explained here.",
            ],
            hintsMy: [
              "'Consensual Light Reflex' အကြောင်း ဒေါ်နီလာ၏ ရှင်းချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဦးနှောက်အတွင်း ဖြတ်ကျော်ကွင်းဆက်နေသော လမ်းကြောင်းသည် ဤနေရာတွင် ရှင်းပြထားသော အဓိက ယန္တရားဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why do opticians test the pupil reflex during eye examinations?",
            questionMy:
                "မျက်စိစစ်ဆေးမှုများအတွင်း မျက်မှန်ဆိုင်ရှင်များက Pupil Reflex ကို အဘယ်ကြောင့် စစ်ဆေးကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "An abnormal reflex can be an early warning sign of a problem in the eye-to-brain nerve pathway",
              "It has no medical use at all",
              "It only checks eye colour",
              "It measures how well a patient can read small text",
            ],
            optionsMy: [
              "ပုံမှန်မဟုတ်သော Reflex သည် မျက်စိမှ ဦးနှောက်ဆီသို့ အာရုံကြောလမ်းကြောင်းရှိ ပြဿနာ၏ အစောပိုင်းသတိပေးလက္ခဏာ ဖြစ်နိုင်သောကြောင့်",
              "ဆေးဘက်ဆိုင်ရာ အသုံးဝင်မှု လုံးဝ မရှိသောကြောင့်",
              "မျက်စိအရောင်ကိုသာ စစ်ဆေးသောကြောင့်",
              "လူနာတစ်ဦး စာလုံးသေးလေးများကို မည်မျှ ကောင်းစွာ ဖတ်နိုင်ကြောင်း တိုင်းတာသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of the passage.",
              "An uneven or missing reflex points to a nerve pathway problem, not just an eye problem.",
            ],
            hintsMy: [
              "စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "မညီမညာ သို့မဟုတ် ပျောက်ဆုံးနေသော Reflex သည် မျက်စိပြဿနာသာမက အာရုံကြောလမ်းကြောင်း ပြဿနာကို ညွှန်ပြသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w26-d5",
      dayNumber: 5,
      titleEn: "Week 26 Recap: The Eye and Hormones",
      titleMy: "နှစ်ဆယ့်ခြောက်ပတ် ပြန်လည်သုံးသပ်ခြင်း - မျက်စိနှင့် Hormones",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Light-sensitive cells in the eye are found in the...",
          questionMy:
              "မျက်စိရှိ အလင်းလှုံ့ဆော်မှုသိသော ဆဲလ်များကို ...တွင် တွေ့ရသည်",
          optionsEn: ["Retina", "Cornea", "Eyelid", "Eyebrow"],
          optionsMy: ["Retina", "Cornea", "မျက်ခမ်း", "မျက်ခုံးမွှေး"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Compared to nerve impulses, hormones typically act...",
          questionMy:
              "အာရုံကြော Impulse များနှင့် နှိုင်းယှဉ်လျှင် Hormones များ ပုံမှန်အားဖြင့် လုပ်ဆောင်သည်မှာ...",
          optionsEn: [
            "More slowly, but with longer-lasting effects",
            "Instantly, with effects lasting a fraction of a second",
            "Exactly the same way",
            "Only during sleep",
          ],
          optionsMy: [
            "ပို၍ နှေးကွေးသော်လည်း ပို၍ ကြာရှည်ခံသော အကျိုးသက်ရောက်မှုဖြင့်",
            "ချက်ချင်း၊ စက္ကန့်အစိတ်အပိုင်းငယ်သာ ကြာသော အကျိုးသက်ရောက်မှုဖြင့်",
            "အတိအကျ တူညီသောနည်းလမ်းဖြင့်",
            "အိပ်ပျော်ချိန်တွင်သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "The pupil constricting in bright light is controlled by the...",
          questionMy: "အလင်းပြင်းသောအခါ Pupil ကျုံ့ခြင်းကို ...က ထိန်းချုပ်သည်",
          optionsEn: [
            "Circular muscles in the iris",
            "Retina alone",
            "Optic nerve alone",
            "Eyelashes",
          ],
          optionsMy: [
            "Iris ရှိ Circular ကြွက်သားများ",
            "Retina တစ်ခုတည်း",
            "Optic Nerve တစ်ခုတည်း",
            "မျက်တောင်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 27: "Homeostasis and Excretion"
// =====================================================================

const CourseWeekDef _igcseBioWeek27 = CourseWeekDef(
  id: "course-igcse-bio-w27",
  weekNumber: 27,
  titleEn: "Homeostasis and Excretion",
  titleMy:
      "အတွင်းပိုင်း ဟန်ချက်ညီထိန်းသိမ်းမှု (Homeostasis) နှင့် စွန့်ပစ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w27-d1",
      dayNumber: 1,
      titleEn: "Blood Glucose Control",
      titleMy: "သွေးဂလူးကို့စ် ထိန်းချုပ်မှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is homeostasis?",
          questionMy: "Homeostasis ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The maintenance of a constant internal environment despite external changes",
            "The process of digesting food",
            "The production of new blood cells",
            "The movement of an organism from place to place",
          ],
          optionsMy: [
            "အပြင်ဘက် ပြောင်းလဲမှုများ ရှိနေသော်လည်း အတွင်းပိုင်း ပတ်ဝန်းကျင်ကို တည်ငြိမ်စွာ ထိန်းသိမ်းခြင်း",
            "အစားအစာ ချေဖျက်ခြင်း ဖြစ်စဉ်",
            "သွေးဆဲလ်အသစ်များ ထုတ်လုပ်ခြင်း",
            "သက်ရှိတစ်ခု နေရာမှ နေရာသို့ ရွေ့လျားခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "This includes controlling blood glucose, body temperature, and water balance, among other things.",
            "The goal is keeping the body's internal conditions steady even when the outside world changes.",
          ],
          hintsMy: [
            "ဤသည်တွင် သွေးဂလူးကို့စ်၊ ခန္ဓာကိုယ်အပူချိန်နှင့် ရေဟန်ချက်ညီမှု အခြားအရာများနှင့်အတူ ထိန်းချုပ်ခြင်း ပါဝင်သည်။",
            "ရည်ရွယ်ချက်မှာ အပြင်ဘက် ကမ္ဘာ ပြောင်းလဲသည့်တိုင် ခန္ဓာကိုယ်၏ အတွင်းအခြေအနေများကို တည်ငြိမ်စွာ ထိန်းသိမ်းရန် ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "After a meal, blood glucose concentration rises. Which hormone lowers it back toward normal?",
          questionMy:
              "အစားအစာ စားပြီးနောက် သွေးဂလူးကို့စ် သိပ်သည်းဆ မြင့်တက်လာသည်။ မည်သည့် Hormone က ၎င်းကို ပုံမှန်အဆင့်သို့ ပြန်လျှော့ချသနည်း။",
          optionsEn: ["Insulin", "Glucagon", "Adrenaline", "Nicotine"],
          optionsMy: ["Insulin", "Glucagon", "Adrenaline", "Nicotine"],
          correctIndex: 0,
          hintsEn: [
            "This hormone, produced by the pancreas, causes cells to take up glucose and the liver to store it as glycogen.",
            "People whose pancreas cannot produce enough of this hormone develop diabetes.",
          ],
          hintsMy: [
            "Pancreas မှ ထုတ်လုပ်သော ဤ Hormone က ဆဲလ်များအား ဂလူးကို့စ် စုပ်ယူစေပြီး အသည်းကို Glycogen အဖြစ် သိမ်းဆည်းစေသည်။",
            "Pancreas က ဤ Hormone ကို လုံလောက်စွာ မထုတ်လုပ်နိုင်သူများတွင် ဆီးချိုရောဂါ ဖြစ်ပွားလာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Between meals, blood glucose concentration falls. Which hormone raises it back up?",
          questionMy:
              "အစားအစာ စားချိန်ကြားတွင် သွေးဂလူးကို့စ် သိပ်သည်းဆ ကျဆင်းသွားသည်။ မည်သည့် Hormone က ၎င်းကို ပြန်တက်စေသနည်း။",
          optionsEn: ["Glucagon", "Insulin", "Bile", "Amylase"],
          optionsMy: ["Glucagon", "Insulin", "Bile", "Amylase"],
          correctIndex: 0,
          hintsEn: [
            "This hormone causes the liver to break down stored glycogen back into glucose, releasing it into the blood.",
            "It has the opposite effect to insulin, together forming a negative feedback system.",
          ],
          hintsMy: [
            "ဤ Hormone က အသည်းအား သိမ်းဆည်းထားသော Glycogen ကို ဂလူးကို့စ်အဖြစ် ပြန်ချေဖျက်ကာ သွေးထဲသို့ လွှတ်ပေးစေသည်။",
            "၎င်းသည် Insulin ၏ ဆန့်ကျင်ဘက် အကျိုးသက်ရောက်မှုရှိပြီး အတူတကွ Negative Feedback စနစ်ကို ဖွဲ့စည်းသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w27-d2",
      dayNumber: 2,
      titleEn: "Match: Homeostasis Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Homeostasis ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w27-dm-1",
          termEn: "Negative feedback",
          termMy: "Negative Feedback",
          matchEn:
              "A control system that detects a change and triggers a response that reverses it, bringing conditions back to normal",
          matchMy:
              "ပြောင်းလဲမှုကို ရှာဖွေတွေ့ရှိပြီး ၎င်းကို ပြောင်းပြန်လှန်ကာ အခြေအနေများကို ပုံမှန်သို့ ပြန်ခေါ်ဆောင်ပေးသော တုံ့ပြန်မှုကို လှုံ့ဆော်ပေးသော ထိန်းချုပ်မှုစနစ်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w27-dm-2",
          termEn: "Glycogen",
          termMy: "Glycogen",
          matchEn: "The storage form of glucose, kept mainly in the liver",
          matchMy:
              "အဓိကအားဖြင့် အသည်းတွင် သိမ်းဆည်းထားသော ဂလူးကို့စ်၏ သိုလှောင်ပုံစံ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w27-dm-3",
          termEn: "Thermoregulation",
          termMy: "Thermoregulation",
          matchEn: "The control of body temperature to keep it constant",
          matchMy:
              "ခန္ဓာကိုယ်အပူချိန်ကို တည်ငြိမ်စွာ ထိန်းသိမ်းရန် ထိန်းချုပ်ခြင်း",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w27-dm-4",
          termEn: "Vasodilation",
          termMy: "Vasodilation",
          matchEn:
              "The widening of blood vessels near the skin surface, increasing heat loss when the body is too hot",
          matchMy:
              "ခန္ဓာကိုယ် ပူလွန်းသောအခါ အပူဆုံးရှုံးမှု တိုးမြှင့်ပေးရန် အရေပြားမျက်နှာပြင်အနီးရှိ သွေးကြောများ ကျယ်ဝန်းလာခြင်း",
          colorValue: 0xFF03A9F4,
        ),
        DragMatchPair(
          id: "igcsebio-w27-dm-5",
          termEn: "Vasoconstriction",
          termMy: "Vasoconstriction",
          matchEn:
              "The narrowing of blood vessels near the skin surface, reducing heat loss when the body is too cold",
          matchMy:
              "ခန္ဓာကိုယ် အေးလွန်းသောအခါ အပူဆုံးရှုံးမှု လျော့ချပေးရန် အရေပြားမျက်နှာပြင်အနီးရှိ သွေးကြောများ ကျဉ်းလာခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w27-dm-6",
          termEn: "Sweat gland",
          termMy: "Sweat Gland",
          matchEn:
              "A structure in the skin that produces sweat, which cools the body as it evaporates",
          matchMy:
              "ရေငွေ့ပျံသောအခါ ခန္ဓာကိုယ်ကို အေးစေသော Sweat ကို ထုတ်လုပ်ပေးသော အရေပြားရှိ ဖွဲ့စည်းပုံ",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w27-d3",
      dayNumber: 3,
      titleEn: "Sort: Cooling Down or Warming Up?",
      titleMy: "စီစစ်ကြမည် - အေးစေခြင်းလား နွေးစေခြင်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Helps Cool the Body Down", "Helps Warm the Body Up"],
        bucketsMy: [
          "ခန္ဓာကိုယ်ကို အေးစေရန် ကူညီသည်",
          "ခန္ဓာကိုယ်ကို နွေးစေရန် ကူညီသည်",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w27-sort-1",
            labelEn:
                "Sweat glands producing more sweat that evaporates from the skin",
            labelMy:
                "အရေပြားမှ ရေငွေ့ပျံသော Sweat ပို၍ ထုတ်လုပ်ပေးသော Sweat Gland များ",
            correctBucketEn: "Helps Cool the Body Down",
            correctBucketMy: "ခန္ဓာကိုယ်ကို အေးစေရန် ကူညီသည်",
          ),
          SortingItem(
            id: "igcsebio-w27-sort-2",
            labelEn:
                "Blood vessels near the skin surface narrowing (vasoconstriction)",
            labelMy:
                "အရေပြားမျက်နှာပြင်အနီးရှိ သွေးကြောများ ကျဉ်းလာခြင်း (Vasoconstriction)",
            correctBucketEn: "Helps Warm the Body Up",
            correctBucketMy: "ခန္ဓာကိုယ်ကို နွေးစေရန် ကူညီသည်",
          ),
          SortingItem(
            id: "igcsebio-w27-sort-3",
            labelEn:
                "Blood vessels near the skin surface widening (vasodilation)",
            labelMy:
                "အရေပြားမျက်နှာပြင်အနီးရှိ သွေးကြောများ ကျယ်ဝန်းလာခြင်း (Vasodilation)",
            correctBucketEn: "Helps Cool the Body Down",
            correctBucketMy: "ခန္ဓာကိုယ်ကို အေးစေရန် ကူညီသည်",
          ),
          SortingItem(
            id: "igcsebio-w27-sort-4",
            labelEn:
                "Hair erector muscles raising body hairs to trap an insulating layer of air",
            labelMy:
                "ခန္ဓာကိုယ်အမွှေးများကို မတ်တတ်ရပ်စေကာ ရေခံအလွှာကို ချုပ်ထားနိုင်စေသော Hair Erector ကြွက်သားများ",
            correctBucketEn: "Helps Warm the Body Up",
            correctBucketMy: "ခန္ဓာကိုယ်ကို နွေးစေရန် ကူညီသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w27-d4",
      dayNumber: 4,
      titleEn: "Reading: Nurse Daw Khin's Fever Lesson",
      titleMy: "စာဖတ်ခြင်း - သူနာပြု ဒေါ်ခင်၏ ဖျားနာအကြောင်း သင်ခန်းစာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nurse Daw Khin's Fever Lesson",
        titleMy: "သူနာပြု ဒေါ်ခင်၏ ဖျားနာအကြောင်း သင်ခန်းစာ",
        passageEn:
            "A school nurse named Daw Khin visited a Biology class to explain what actually happens inside the body during a fever, since several students had been confused about whether sweating during an illness helped or hurt recovery. She began by reminding the class that the body normally keeps its internal temperature within a very narrow, constant range through homeostasis, using structures in the skin such as sweat glands and blood vessels that widen or narrow to lose or retain heat.\n\nShe explained that when the body's temperature rises too high, sweat glands produce more sweat, which cools the skin as it evaporates, while blood vessels near the skin surface widen through vasodilation, bringing warm blood closer to the surface to lose heat to the surrounding air faster. Conversely, when the body is too cold, sweat production drops, blood vessels near the skin narrow through vasoconstriction to keep warm blood deeper inside the body, and hair erector muscles raise body hairs slightly to trap a thin insulating layer of air -- although this last mechanism is far less effective in humans than in more furry mammals.\n\nA student asked why a feverish person often feels cold and shivers even though their actual body temperature is above normal. Daw Khin explained that during the early stage of a fever, the body's internal 'thermostat', a temperature-control centre, is temporarily reset to a higher target temperature by chemicals released during an infection -- so even though the body is already warmer than the normal 37 degrees, it is still below this new, higher target, and the homeostatic mechanisms for warming up (vasoconstriction and shivering) activate exactly as they would on a genuinely cold day, until the body's actual temperature catches up with the new target.",
        passageMy:
            "ဒေါ်ခင်ဟု အမည်ရှိ ကျောင်း သူနာပြုတစ်ဦးသည် ဇီဝဗေဒအတန်းသို့ လာရောက်ကာ ဖျားနာစဉ် ခန္ဓာကိုယ်အတွင်း အမှန်တကယ် အဘယ်ဖြစ်ပေါ်ကြောင်း ရှင်းပြခဲ့သည်၊ အကြောင်းမှာ ရောဂါစဉ် ချွေးထွက်ခြင်းသည် ပြန်လည်ကောင်းမွန်မှုကို ကူညီပေးသလား၊ ဆိုးကျိုးဖြစ်စေသလားဆိုသည်ကို ကျောင်းသားများစွာ ရှုပ်ထွေးနေခဲ့ကြသည်။ ခန္ဓာကိုယ်သည် ပုံမှန်အားဖြင့် Sweat Gland များနှင့် ကျယ်/ကျဉ်း သွားနိုင်သော သွေးကြောများကို သုံး၍ Homeostasis မှတစ်ဆင့် ၎င်း၏ အတွင်းပိုင်းအပူချိန်ကို အလွန်ကျဉ်းသော၊ တည်ငြိမ်သော အတိုင်းအတာအတွင်း ထိန်းသိမ်းထားကြောင်း အတန်းကို ပြန်သတိပေးခြင်းဖြင့် သူမ စတင်ခဲ့သည်။\n\nခန္ဓာကိုယ်၏ အပူချိန် အလွန်မြင့်တက်လာသောအခါ Sweat Gland များက Sweat ပို၍ ထုတ်လုပ်ပေးပြီး ၎င်းက ရေငွေ့ပျံသောအခါ အရေပြားကို အေးစေကာ၊ အရေပြားမျက်နှာပြင်အနီးရှိ သွေးကြောများသည် Vasodilation မှတစ်ဆင့် ကျယ်ဝန်းလာကာ နွေးထွေးသော သွေးကို မျက်နှာပြင်အနီးသို့ ပို၍ ဆွဲယူကာ ပတ်ဝန်းကျင်လေထုသို့ အပူ ပို၍ မြန်ဆန်စွာ ဆုံးရှုံးစေသည်ဟု သူမ ရှင်းပြခဲ့သည်။ ဆန့်ကျင်ဘက်အားဖြင့် ခန္ဓာကိုယ် အလွန်အေးသောအခါ Sweat ထုတ်လုပ်မှု လျော့ကျသွားပြီး အရေပြားအနီးရှိ သွေးကြောများသည် Vasoconstriction မှတစ်ဆင့် ကျဉ်းလာကာ နွေးထွေးသော သွေးကို ခန္ဓာကိုယ် အတွင်းပိုင်းနက်နက်တွင် ထိန်းထားကာ၊ Hair Erector ကြွက်သားများက ခန္ဓာကိုယ်အမွှေးများကို အနည်းငယ် မတ်တတ်ရပ်စေကာ ရေခံအလွှာ ပါးလွှာတစ်ခုကို ချုပ်ထားနိုင်စေသည် -- သို့သော် ဤနောက်ဆုံးယန္တရားသည် အမွှေးအထူထပ် ပိုများသော ဇီဝမြွှေးမြူးသတ္တဝါများထက် လူသားများတွင် ထိရောက်မှု အလွန်နည်းသည်။\n\nကျောင်းသားတစ်ဦးက ဖျားနာနေသူတစ်ဦး၏ တကယ့်ခန္ဓာကိုယ်အပူချိန် ပုံမှန်ထက် မြင့်နေသော်လည်း အဘယ်ကြောင့် အေးစိမ့်သကဲ့သို့ ခံစားရပြီး တုန်ရသနည်းဟု မေးမြန်းခဲ့သည်။ ဖျားနာမှု၏ အစောပိုင်းအဆင့်တွင် ခန္ဓာကိုယ်၏ အတွင်းပိုင်း 'အပူထိန်းစက်' ဖြစ်သော အပူချိန်-ထိန်းချုပ်ရေးဌာနချုပ်သည် ကူးစက်မှုစဉ်အတွင်း လွှတ်ထုတ်သော ဓာတုပစ္စည်းများကြောင့် ပို၍ မြင့်သော ပစ်မှတ်အပူချိန်တစ်ခုသို့ ယာယီ ပြန်လည်သတ်မှတ်ခံရသည်ဟု ဒေါ်ခင်က ရှင်းပြခဲ့သည် -- ထို့ကြောင့် ခန္ဓာကိုယ်သည် ပုံမှန် ၃၇ ဒီဂရီထက် ပို၍ ပူလျက်ရှိသော်လည်း ဤအသစ် ပို၍ မြင့်သော ပစ်မှတ်ထက် ဆက်၍ နိမ့်နေဆဲဖြစ်သဖြင့် Homeostatic ယန္တရားများ (Vasoconstriction နှင့် တုန်ခြင်း) သည် တကယ့်အေးသောနေ့တစ်နေ့ကဲ့သို့ပင် အတိအကျ လှုံ့ဆော်ကာ ခန္ဓာကိုယ်၏ တကယ့်အပူချိန်သည် ဤအသစ်ပစ်မှတ်ကို မမှီအောင် ဖြစ်နေသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what happens to blood vessels near the skin when the body is too hot?",
            questionMy:
                "ခန္ဓာကိုယ် ပူလွန်းသောအခါ အရေပြားအနီးရှိ သွေးကြောများ အဘယ်ဖြစ်ပေါ်ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They widen (vasodilation), bringing warm blood closer to the surface",
              "They narrow (vasoconstriction), keeping blood deeper inside",
              "They disappear completely",
              "They turn into sweat glands",
            ],
            optionsMy: [
              "ကျယ်ဝန်းလာသည် (Vasodilation)၊ နွေးထွေးသော သွေးကို မျက်နှာပြင်အနီးသို့ ဆွဲယူသည်",
              "ကျဉ်းလာသည် (Vasoconstriction)၊ သွေးကို အတွင်းပိုင်းနက်နက်တွင် ထိန်းထားသည်",
              "လုံးဝ ပျောက်ကွယ်သွားသည်",
              "Sweat Gland များအဖြစ် ပြောင်းလဲသွားသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about vasodilation happening when the body is too hot.",
              "Widening blood vessels near the surface helps lose heat faster.",
            ],
            hintsMy: [
              "ခန္ဓာကိုယ်ပူလွန်းသောအခါ Vasodilation ဖြစ်ပေါ်ကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "မျက်နှာပြင်အနီးရှိ သွေးကြောများ ကျယ်ဝန်းလာခြင်းသည် အပူ ပို၍ မြန်ဆန်စွာ ဆုံးရှုံးစေရန် ကူညီသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why is the hair erector muscle mechanism less effective in humans than in furrier mammals?",
            questionMy:
                "Hair Erector ကြွက်သား ယန္တရားသည် အမွှေးအထူထပ် ပိုများသော ဇီဝမြွှေးမြူးသတ္တဝါများထက် လူသားများတွင် ထိရောက်မှု အဘယ်ကြောင့် နည်းကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The passage implies it because humans have much less body hair to trap an insulating layer",
              "Humans do not have hair erector muscles at all",
              "It is equally effective in both",
              "Humans have more body hair than other mammals",
            ],
            optionsMy: [
              "လူသားများတွင် ရေခံအလွှာကို ချုပ်ထားနိုင်စေမည့် ခန္ဓာကိုယ်အမွှေး များစွာ ပို၍နည်းသောကြောင့် စာပိုဒ်က ညွှန်ပြသည်",
              "လူသားများတွင် Hair Erector ကြွက်သားများ လုံးဝ မရှိပါ",
              "နှစ်မျိုးစလုံးတွင် ညီညာစွာ ထိရောက်ပါသည်",
              "လူသားများတွင် အခြားဇီဝမြွှေးမြူးသတ္တဝါများထက် ခန္ဓာကိုယ်အမွှေး ပို၍များသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final clause of paragraph 2 comparing humans to furrier mammals.",
              "Less body hair means less air can be trapped for insulation.",
            ],
            hintsMy: [
              "လူသားများနှင့် အမွှေးအထူထပ်ပိုများသော ဇီဝမြွှေးမြူးသတ္တဝါများကို နှိုင်းယှဉ်ထားသော စာပိုဒ် ၂ ၏ နောက်ဆုံးအပိုင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ခန္ဓာကိုယ်အမွှေး ပို၍ နည်းလျှင် ရေခံအတွက် လေချုပ်ထားနိုင်မှု ပို၍ နည်းသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why does the body's 'thermostat' get reset during a fever?",
            questionMy:
                "ဖျားနာမှုစဉ် ခန္ဓာကိုယ်၏ 'အပူထိန်းစက်' ပြန်လည် သတ်မှတ်ခံရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Chemicals released during an infection temporarily raise the target temperature",
              "The body decides to permanently stop regulating temperature",
              "The weather outside becomes colder",
              "The skin stops producing sweat forever",
            ],
            optionsMy: [
              "ကူးစက်မှုစဉ်အတွင်း လွှတ်ထုတ်သော ဓာတုပစ္စည်းများက ပစ်မှတ်အပူချိန်ကို ယာယီ မြှင့်တင်ပေးသောကြောင့်",
              "ခန္ဓာကိုယ်က အပူချိန် ထိန်းချုပ်ခြင်းကို အမြဲတမ်း ရပ်တန့်ရန် ဆုံးဖြတ်သောကြောင့်",
              "အပြင်ဘက် ရာသီဥတု ပို၍ အေးလာသောကြောင့်",
              "အရေပြားက Sweat ထုတ်လုပ်ခြင်းကို အမြဲတမ်း ရပ်တန့်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence naming the specific cause of the thermostat reset.",
              "This is caused by chemicals released as part of the body's immune response to infection.",
            ],
            hintsMy: [
              "အပူထိန်းစက် ပြန်လည်သတ်မှတ်ခံရသည့် တိတိကျကျ အကြောင်းရင်းကို အမည်တပ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ ကူးစက်မှုအပေါ် ခန္ဓာကိုယ်၏ ကိုယ်ခံအားတုံ့ပြန်မှု တစ်စိတ်တစ်ပိုင်းအဖြစ် လွှတ်ထုတ်သော ဓာတုပစ္စည်းများကြောင့် ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why does a feverish person shiver even though they are already warmer than 37 degrees?",
            questionMy:
                "ဖျားနာနေသူတစ်ဦးသည် ၃၇ ဒီဂရီထက် ပို၍ ပူနေပြီးသားဖြစ်သော်လည်း တုန်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Their body is still below the new, higher target temperature set by the reset thermostat",
              "Shivering has nothing to do with temperature at all",
              "Their body temperature has actually dropped below 37 degrees",
              "The homeostatic system has permanently stopped working",
            ],
            optionsMy: [
              "ပြန်လည်သတ်မှတ်ခံရသော အပူထိန်းစက်၏ အသစ်၊ ပို၍ မြင့်သော ပစ်မှတ်အပူချိန်ထက် ခန္ဓာကိုယ် ဆက်၍ နိမ့်နေဆဲ ဖြစ်သောကြောင့်",
              "တုန်ခြင်းသည် အပူချိန်နှင့် လုံးဝ မသက်ဆိုင်ခြင်း",
              "ခန္ဓာကိုယ်အပူချိန် ၃၇ ဒီဂရီအောက်သို့ တကယ် ကျဆင်းသွားသောကြောင့်",
              "Homeostatic စနစ်သည် အမြဲတမ်း အလုပ်မလုပ်တော့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of the passage explaining this apparent contradiction.",
              "The body is 'warmer than normal' but still 'below the new, higher target'.",
            ],
            hintsMy: [
              "ဤထင်ရှားသော ဆန့်ကျင်မှုကို ရှင်းပြသော စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ခန္ဓာကိုယ်သည် 'ပုံမှန်ထက်ပူ' သော်လည်း 'အသစ်၊ ပို၍ မြင့်သော ပစ်မှတ်ထက်' ဆက်၍ နိမ့်နေဆဲ ဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w27-d5",
      dayNumber: 5,
      titleEn: "Week 27 Recap: Homeostasis",
      titleMy: "နှစ်ဆယ့်ခုနစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - Homeostasis",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which hormone lowers blood glucose after a meal?",
          questionMy:
              "အစားအစာစားပြီးနောက် သွေးဂလူးကို့စ်ကို မည်သည့် Hormone က လျှော့ချသနည်း",
          optionsEn: ["Insulin", "Glucagon", "Adrenaline", "Bile"],
          optionsMy: ["Insulin", "Glucagon", "Adrenaline", "Bile"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Vasodilation near the skin surface helps the body...",
          questionMy:
              "အရေပြားမျက်နှာပြင်အနီးရှိ Vasodilation က ခန္ဓာကိုယ်ကို ...ရန် ကူညီသည်",
          optionsEn: [
            "Lose heat and cool down",
            "Gain heat and warm up",
            "Digest food faster",
            "Produce more insulin",
          ],
          optionsMy: [
            "အပူဆုံးရှုံးပြီး အေးလာစေ",
            "အပူရရှိပြီး နွေးလာစေ",
            "အစားအစာ ပို၍ မြန်ဆန်စွာ ချေဖျက်စေ",
            "Insulin ပို၍ ထုတ်လုပ်စေ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Homeostasis relies mainly on which type of control system?",
          questionMy:
              "Homeostasis သည် မည်သည့်အမျိုးအစား ထိန်းချုပ်မှုစနစ်ပေါ် အဓိက မှီခိုသနည်း",
          optionsEn: [
            "Negative feedback",
            "Random chance",
            "Positive feedback only",
            "No control system at all",
          ],
          optionsMy: [
            "Negative Feedback",
            "ကျပန်း",
            "Positive Feedback သာ",
            "ထိန်းချုပ်မှုစနစ် လုံးဝမရှိခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 28 (Capstone): "Coordination and Homeostasis Studio"
// =====================================================================

const CourseWeekDef _igcseBioWeek28 = CourseWeekDef(
  id: "course-igcse-bio-w28",
  weekNumber: 28,
  titleEn: "Coordination and Homeostasis Studio",
  titleMy: "ညှိနှိုင်းမှုနှင့် ဟန်ချက်ထိန်းသိမ်းမှု အလုပ်ရုံ",
  xpReward: 20,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w28-d1",
      dayNumber: 1,
      titleEn: "Understanding Diabetes Mellitus",
      titleMy: "ဆီးချိုရောဂါ (Diabetes Mellitus) ကို နားလည်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What causes Type 1 diabetes?",
          questionMy: "Type 1 ဆီးချိုရောဂါ၏ အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "The pancreas fails to produce enough insulin",
            "The body produces too much insulin",
            "The liver stops producing bile",
            "The kidneys stop filtering blood",
          ],
          optionsMy: [
            "Pancreas က Insulin လုံလောက်စွာ မထုတ်လုပ်နိုင်ခြင်း",
            "ခန္ဓာကိုယ်က Insulin အလွန်အကျွံ ထုတ်လုပ်ခြင်း",
            "အသည်းက Bile ထုတ်လုပ်ခြင်း ရပ်တန့်ခြင်း",
            "ကျောက်ကပ်များက သွေးစစ်ထုတ်ခြင်း ရပ်တန့်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Type 1 diabetes usually develops early in life and requires regular insulin injections.",
            "Without enough insulin, cells cannot take up glucose properly, and blood glucose stays too high.",
          ],
          hintsMy: [
            "Type 1 ဆီးချိုရောဂါသည် ပုံမှန်အားဖြင့် အသက်ငယ်စဉ်က စတင်ဖြစ်ပွားပြီး ပုံမှန် Insulin ဆေးထိုးရန် လိုအပ်သည်။",
            "Insulin လုံလောက်စွာ မရှိပါက ဆဲလ်များသည် ဂလူးကို့စ်ကို ကောင်းစွာ စုပ်ယူ၍ မရနိုင်ဘဲ သွေးဂလူးကို့စ် အလွန်မြင့်နေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Type 2 diabetes is most closely associated with which of the following?",
          questionMy:
              "Type 2 ဆီးချိုရောဂါသည် အောက်ပါတို့အနက် မည်သည့်အချက်နှင့် အနီးစပ်ဆုံး ဆက်စပ်သနည်း။",
          optionsEn: [
            "Body cells becoming resistant to insulin, often linked to lifestyle factors",
            "A complete absence of the pancreas from birth",
            "An allergy to sunlight",
            "Excess vitamin C in the diet",
          ],
          optionsMy: [
            "ဆဲလ်များ Insulin ကို ခံနိုင်ရည်ရှိလာခြင်း၊ Lifestyle အချက်များနှင့် မကြာခဏ ဆက်စပ်ခြင်း",
            "မွေးရာပါ Pancreas လုံးဝ မရှိခြင်း",
            "နေရောင်ဓာတ်မတည့်ခြင်း",
            "အစားအစာတွင် Vitamin C အလွန်အကျွံ ပါဝင်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Type 2 diabetes usually develops later in life and is often managed through diet and exercise.",
            "In Type 2 diabetes, insulin may still be produced, but cells respond to it less effectively.",
          ],
          hintsMy: [
            "Type 2 ဆီးချိုရောဂါသည် ပုံမှန်အားဖြင့် အသက်ကြီးမှ စတင်ဖြစ်ပွားပြီး အစားအစာနှင့် ကိုယ်လက်လှုပ်ရှားမှုဖြင့် မကြာခဏ ထိန်းချုပ်သည်။",
            "Type 2 ဆီးချိုရောဂါတွင် Insulin ကို ဆက်လက် ထုတ်လုပ်ကောင်း ထုတ်လုပ်နေသေးသော်လည်း ဆဲလ်များ ၎င်းကို ထိရောက်စွာ တုံ့ပြန်နိုင်မှု နည်းသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A person with untreated diabetes often has glucose in their urine. Why?",
          questionMy:
              "ကုသမှု မခံယူရသေးသော ဆီးချိုရောဂါရှိသူတစ်ဦးတွင် ၎င်း၏ ဆီးထဲတွင် ဂလူးကို့စ် ပါဝင်လေ့ရှိသည်။ ဘာကြောင့်ပါနည်း။",
          optionsEn: [
            "Blood glucose levels are so high that the kidneys cannot reabsorb all of it, so some passes into the urine",
            "The pancreas directly releases glucose into the bladder",
            "The person has eaten too much protein",
            "Glucose in urine has no connection to diabetes",
          ],
          optionsMy: [
            "သွေးဂလူးကို့စ်အဆင့် အလွန်မြင့်သဖြင့် ကျောက်ကပ်များက အားလုံးကို ပြန်စုပ်ယူ၍ မရနိုင်ဘဲ အချို့ ဆီးထဲသို့ ဖြတ်သွားခြင်း",
            "Pancreas က ဆီးအိမ်ထဲသို့ ဂလူးကို့စ်ကို တိုက်ရိုက် လွှတ်ပေးခြင်း",
            "ထိုသူသည် ပရိုတင်း အလွန်အကျွံ စားခဲ့ခြင်း",
            "ဆီးထဲရှိ ဂလူးကို့စ်သည် ဆီးချိုရောဂါနှင့် လုံးဝ မဆက်စပ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Normally, the kidneys reabsorb all filtered glucose back into the blood.",
            "When blood glucose is too high, this reabsorption system becomes overwhelmed.",
          ],
          hintsMy: [
            "ပုံမှန်အားဖြင့် ကျောက်ကပ်များက စစ်ထုတ်ထားသော ဂလူးကို့စ် အားလုံးကို သွေးထဲသို့ ပြန်စုပ်ယူသည်။",
            "သွေးဂလူးကို့စ် အလွန်မြင့်သောအခါ ဤပြန်စုပ်ယူမှုစနစ် လျော့ကျသွားသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w28-d2",
      dayNumber: 2,
      titleEn: "Match: Term 7 Key Terms",
      titleMy: "တွဲစပ်ကြမည် - သတ္တမနှစ်ဝက် သော့ချက်စကားလုံးများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w28-dm-1",
          termEn: "Type 1 diabetes",
          termMy: "Type 1 ဆီးချိုရောဂါ",
          matchEn:
              "A form of diabetes where the pancreas fails to produce enough insulin, usually treated with insulin injections",
          matchMy:
              "Pancreas က Insulin လုံလောက်စွာ မထုတ်လုပ်နိုင်ဘဲ ပုံမှန်အားဖြင့် Insulin ဆေးထိုးခြင်းဖြင့် ကုသသော ဆီးချိုရောဂါပုံစံ",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w28-dm-2",
          termEn: "Type 2 diabetes",
          termMy: "Type 2 ဆီးချိုရောဂါ",
          matchEn:
              "A form of diabetes where body cells become resistant to insulin, often managed with diet and exercise",
          matchMy:
              "ဆဲလ်များ Insulin ကို ခံနိုင်ရည်ရှိလာပြီး အစားအစာနှင့် ကိုယ်လက်လှုပ်ရှားမှုဖြင့် မကြာခဏ ထိန်းချုပ်သော ဆီးချိုရောဂါပုံစံ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w28-dm-3",
          termEn: "Hyperglycaemia",
          termMy: "Hyperglycaemia",
          matchEn:
              "The medical term for abnormally high blood glucose concentration",
          matchMy:
              "ပုံမှန်မဟုတ်သော သွေးဂလူးကို့စ် သိပ်သည်းဆမြင့်ခြင်းအတွက် ဆေးဘက်ဆိုင်ရာ အသုံးအနှုန်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w28-dm-4",
          termEn: "Feedback loop",
          termMy: "Feedback Loop",
          matchEn:
              "A cycle where a system's output influences its own future behaviour, as in insulin/glucagon control",
          matchMy:
              "Insulin/Glucagon ထိန်းချုပ်မှုကဲ့သို့ စနစ်တစ်ခု၏ ရလဒ်က ၎င်း၏ ကိုယ်ပိုင် အနာဂတ်လုပ်ဆောင်ချက်ကို သက်ရောက်စေသော ကွင်းဆက်",
          colorValue: 0xFF4CAF50,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w28-d3",
      dayNumber: 3,
      titleEn: "Sort: Nervous, Hormonal, or Homeostasis Topic?",
      titleMy: "စီစစ်ကြမည် - Nervous, Hormonal, သို့မဟုတ် Homeostasis ဆိုင်ရာ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Nervous System Topic",
          "Hormonal System Topic",
          "Homeostasis Topic",
        ],
        bucketsMy: [
          "Nervous System ဆိုင်ရာ",
          "Hormonal System ဆိုင်ရာ",
          "Homeostasis ဆိုင်ရာ",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w28-sort-1",
            labelEn:
                "Explaining how a reflex arc routes an impulse through the spinal cord",
            labelMy:
                "Reflex Arc တစ်ခုက Impulse ကို ကျောရိုးအရိုးတွင်းမှတစ်ဆင့် မည်သို့ ပို့ဆောင်ကြောင်း ရှင်းပြခြင်း",
            correctBucketEn: "Nervous System Topic",
            correctBucketMy: "Nervous System ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsebio-w28-sort-2",
            labelEn: "Explaining how insulin lowers blood glucose after a meal",
            labelMy:
                "အစားအစာစားပြီးနောက် Insulin က သွေးဂလူးကို့စ်ကို မည်သို့ လျှော့ချကြောင်း ရှင်းပြခြင်း",
            correctBucketEn: "Hormonal System Topic",
            correctBucketMy: "Hormonal System ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsebio-w28-sort-3",
            labelEn: "Explaining how vasodilation helps the body cool down",
            labelMy:
                "Vasodilation က ခန္ဓာကိုယ်ကို အေးစေရန် မည်သို့ ကူညီကြောင်း ရှင်းပြခြင်း",
            correctBucketEn: "Homeostasis Topic",
            correctBucketMy: "Homeostasis ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsebio-w28-sort-4",
            labelEn:
                "Explaining how the pupil reflex protects the retina in bright light",
            labelMy:
                "Pupil Reflex က အလင်းပြင်းသောအခါ Retina ကို မည်သို့ ကာကွယ်ကြောင်း ရှင်းပြခြင်း",
            correctBucketEn: "Nervous System Topic",
            correctBucketMy: "Nervous System ဆိုင်ရာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w28-d4",
      dayNumber: 4,
      titleEn: "Reading: Dr. Htet Htet's Two Patients",
      titleMy: "စာဖတ်ခြင်း - ဒေါက်တာထက်ထက်၏ လူနာနှစ်ဦး",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Dr. Htet Htet's Two Patients",
        titleMy: "ဒေါက်တာထက်ထက်၏ လူနာနှစ်ဦး",
        passageEn:
            "Dr. Htet Htet returned to school one final time to compare two of her patients as a case study for the Biology class's final coordination unit. Her first patient, a twelve-year-old boy, had been diagnosed with Type 1 diabetes two years earlier after suddenly losing weight and feeling constantly thirsty and tired; blood tests had shown his pancreas produced almost no insulin at all, and he now injected insulin several times daily to keep his blood glucose within a safe range.\n\nHer second patient, a sixty-year-old woman, had been diagnosed with Type 2 diabetes more recently. Unlike the boy, blood tests showed her pancreas still produced insulin, sometimes even more than a healthy person's -- but her body's cells had become increasingly resistant to that insulin's effects over years of excess weight and low physical activity, so glucose still struggled to enter her cells efficiently and blood glucose remained too high. Her treatment began with changes to diet and exercise, though medication or insulin might eventually become necessary if those changes were not enough.\n\nDr. Htet Htet used the comparison to make an important point: both patients showed the same underlying symptom, chronically high blood glucose, but for fundamentally different reasons -- one from too little insulin production, the other from reduced cell sensitivity to insulin that was still present -- which is exactly why their treatments differed so much. She reminded the class that in a healthy person, negative feedback keeps blood glucose within a narrow range: insulin lowers it after a meal, glucagon raises it between meals, and this loop normally runs automatically without conscious thought, in the same effortless way a reflex arc protects the body from a hot surface, or the pupil reflex protects the retina from bright light -- all examples of the body's coordination systems maintaining a stable internal environment.",
        passageMy:
            "ဇီဝဗေဒအတန်း၏ နောက်ဆုံး ညှိနှိုင်းမှု အခန်းအတွက် Case Study တစ်ခုအဖြစ် သူမ၏ လူနာနှစ်ဦးကို နှိုင်းယှဉ်ရန် ဒေါက်တာထက်ထက်သည် ကျောင်းသို့ နောက်ဆုံးအကြိမ် ပြန်လည်ရောက်ရှိလာခဲ့သည်။ သူမ၏ ပထမလူနာ၊ အသက် ၁၂ နှစ်အရွယ် ယောကျ်ားလေးတစ်ဦးသည် ရုတ်တရက် ကိုယ်အလေးချိန် ကျဆင်းကာ အမြဲပင် ရေငတ်၍ ပင်ပန်းစွာ ခံစားရခဲ့ပြီးနောက် နှစ်နှစ်အလို Type 1 ဆီးချိုရောဂါ ရှိကြောင်း အတည်ပြုခံခဲ့ရသည်၊ သွေးစစ်ချက်များက ၎င်း၏ Pancreas သည် Insulin လုံးဝနီးပါး မထုတ်လုပ်နိုင်ကြောင်း ပြသခဲ့ပြီး ယခုအခါ ၎င်းသည် သွေးဂလူးကို့စ်ကို ဘေးကင်းသော အတိုင်းအတာအတွင်း ထိန်းထားရန် တစ်နေ့လျှင် ကြိမ်ဖန်များစွာ Insulin ဆေးထိုးနေရသည်။\n\nသူမ၏ ဒုတိယလူနာ၊ အသက် ၆၀ အရွယ် အမျိုးသမီးတစ်ဦးသည် ပို၍ မကြာသေးမီက Type 2 ဆီးချိုရောဂါ ရှိကြောင်း အတည်ပြုခံခဲ့ရသည်။ ယောကျ်ားလေးနှင့် မတူဘဲ သွေးစစ်ချက်များက ၎င်း၏ Pancreas သည် Insulin ကို ဆက်လက် ထုတ်လုပ်နေဆဲဖြစ်ကြောင်း၊ တစ်ခါတစ်ရံ ကျန်းမာသူတစ်ဦးထက်ပင် ပို၍ ထုတ်လုပ်နေကြောင်း ပြသခဲ့သည် -- သို့သော် ၎င်း၏ ခန္ဓာကိုယ်ဆဲလ်များသည် နှစ်များစွာ ကိုယ်အလေးချိန်အလွန်အကျွံနှင့် ကိုယ်လက်လှုပ်ရှားမှု နည်းပါးခြင်းကြောင့် ထို Insulin ၏ အကျိုးသက်ရောက်မှုကို ခုခံမှု တဖြည်းဖြည်း တိုးလာခဲ့သဖြင့် ဂလူးကို့စ်သည် ၎င်း၏ ဆဲလ်များအတွင်းသို့ ထိရောက်စွာ ဝင်ရောက်ရန် ဆက်လက် ရုန်းကန်နေရကာ သွေးဂလူးကို့စ် အမြင့်နေဆဲ ဖြစ်နေသည်။ ၎င်း၏ ကုသမှုသည် အစားအစာနှင့် ကိုယ်လက်လှုပ်ရှားမှု ပြောင်းလဲခြင်းဖြင့် စတင်ခဲ့ပြီး၊ ထိုပြောင်းလဲမှုများ မလုံလောက်ပါက ဆေးဝါး သို့မဟုတ် Insulin ဆက်လက် လိုအပ်လာနိုင်သည်။\n\nဒေါက်တာထက်ထက်သည် ဤနှိုင်းယှဉ်ချက်ကို အသုံးပြု၍ အရေးကြီးသော အချက်တစ်ခုကို ဖော်ထုတ်ခဲ့သည်- လူနာနှစ်ဦးစလုံးသည် တူညီသော အခြေခံ လက္ခဏာ၊ ရေရှည်မြင့်မားနေသော သွေးဂလူးကို့စ်ကို ပြသခဲ့သော်လည်း လုံးဝ ကွဲပြားသော အကြောင်းရင်းများကြောင့် ဖြစ်ခဲ့ခြင်း -- တစ်ဦးက Insulin ထုတ်လုပ်မှု အလွန်နည်းခြင်း၊ နောက်တစ်ဦးက ဆက်လက်ရှိနေသေးသော Insulin အပေါ် ဆဲလ်များ၏ ခံစားနိုင်စွမ်း လျော့ကျခြင်း -- ၎င်းသည် ၎င်းတို့၏ ကုသမှုများ ဤမျှ ကွဲပြားရသည့် အတိအကျ အကြောင်းရင်းပင် ဖြစ်သည်။ ကျန်းမာသောသူတစ်ဦးတွင် Negative Feedback က သွေးဂလူးကို့စ်ကို ကျဉ်းမြောင်းသော အတိုင်းအတာအတွင်း ထိန်းထားကြောင်း သူမ အတန်းကို ပြန်သတိပေးခဲ့သည်- Insulin က အစားအစာစားပြီးနောက် လျှော့ချပြီး Glucagon က အစားအစာစားချိန်ကြားတွင် မြှင့်တင်ကာ ဤကွင်းဆက်သည် ပုံမှန်အားဖြင့် သတိရှိစွာ တွေးခေါ်ခြင်း လုံးဝမလိုအပ်ဘဲ အလိုအလျောက် လည်ပတ်နေသည် -- Reflex Arc တစ်ခုက ခန္ဓာကိုယ်ကို ပူသောမျက်နှာပြင်မှ ကာကွယ်ပေးသကဲ့သို့ သို့မဟုတ် Pupil Reflex က Retina ကို အလင်းပြင်းသောအခါ ကာကွယ်ပေးသကဲ့သို့ပင် လွယ်ကူစွာ ဖြစ်သည် -- အားလုံးသည် ခန္ဓာကိုယ်၏ ညှိနှိုင်းမှုစနစ်များ တည်ငြိမ်သော အတွင်းပတ်ဝန်းကျင်ကို ထိန်းသိမ်းသည့် ဥပမာများပင် ဖြစ်ကြသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what did blood tests reveal about the boy's pancreas?",
            questionMy:
                "ယောကျ်ားလေး၏ Pancreas အကြောင်း သွေးစစ်ချက်များက အဘယ်ကို ဖော်ထုတ်ခဲ့ကြောင်းကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It produced almost no insulin at all",
              "It produced too much insulin",
              "It had stopped functioning completely months earlier",
              "It was producing normal amounts of insulin",
            ],
            optionsMy: [
              "Insulin လုံးဝနီးပါး မထုတ်လုပ်နိုင်ခြင်း",
              "Insulin အလွန်အကျွံ ထုတ်လုပ်ခြင်း",
              "လများအလို လုံးဝ အလုပ်မလုပ်တော့ခြင်း",
              "ပုံမှန် Insulin ပမာဏ ထုတ်လုပ်နေခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing his blood test results.",
              "This matches the Type 1 diabetes definition from earlier in the week.",
            ],
            hintsMy: [
              "၎င်း၏ သွေးစစ်ချက် ရလဒ်များကို ဖော်ပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ ဤပတ်အစောပိုင်းမှ Type 1 ဆီးချိုရောဂါ အဓိပ္ပာယ်ဖွင့်ဆိုချက်နှင့် ကိုက်ညီသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was surprising about the woman's insulin production compared to the boy's?",
            questionMy:
                "ယောကျ်ားလေးနှင့် နှိုင်းယှဉ်လျှင် အမျိုးသမီး၏ Insulin ထုတ်လုပ်မှုအကြောင်း အံ့ဩဖွယ် အချက်ကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Her pancreas still produced insulin, sometimes even more than a healthy person's",
              "Her pancreas produced no insulin at all, just like the boy's",
              "She had no pancreas",
              "Her insulin was chemically different from normal insulin",
            ],
            optionsMy: [
              "၎င်း၏ Pancreas သည် Insulin ကို ဆက်လက် ထုတ်လုပ်နေဆဲဖြစ်ပြီး တစ်ခါတစ်ရံ ကျန်းမာသူတစ်ဦးထက်ပင် ပို၍ ထုတ်လုပ်နေခြင်း",
              "ယောကျ်ားလေးနှင့် အတူတူပင် ၎င်း၏ Pancreas က Insulin လုံးဝ မထုတ်လုပ်ခြင်း",
              "၎င်းတွင် Pancreas လုံးဝ မရှိခြင်း",
              "၎င်း၏ Insulin သည် ပုံမှန် Insulin နှင့် ဓာတုနည်းအားဖြင့် ကွဲပြားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence contrasting her insulin production with the boy's.",
              "This is the key difference between Type 1 and Type 2 diabetes.",
            ],
            hintsMy: [
              "၎င်း၏ Insulin ထုတ်လုပ်မှုကို ယောကျ်ားလေးနှင့် နှိုင်းယှဉ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ Type 1 နှင့် Type 2 ဆီးချိုရောဂါကြား အဓိက ကွာခြားချက် ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did Dr. Htet Htet say the two patients' treatments differed so much?",
            questionMy:
                "လူနာနှစ်ဦး၏ ကုသမှုများ ဤမျှ ကွဲပြားရသည့် အကြောင်းရင်းကို ဒေါက်တာထက်ထက် အဘယ်သို့ ပြောခဲ့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The same symptom (high blood glucose) had fundamentally different underlying causes in each patient",
              "One patient was much younger than the other",
              "Only one patient actually had diabetes",
              "Their treatments were actually identical",
            ],
            optionsMy: [
              "တူညီသော လက္ခဏာ (သွေးဂလူးကို့စ်မြင့်ခြင်း) သည် လူနာတစ်ဦးစီတွင် လုံးဝကွဲပြားသော အခြေခံအကြောင်းရင်းများ ရှိသောကြောင့်",
              "လူနာတစ်ဦးသည် အခြားတစ်ဦးထက် များစွာ ငယ်ရွယ်သောကြောင့်",
              "လူနာတစ်ဦးတည်းသာ အမှန်တကယ် ဆီးချိုရောဂါ ရှိသောကြောင့်",
              "၎င်းတို့၏ ကုသမှုများသည် အမှန်တကယ် အတူတူပင် ဖြစ်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining 'the same underlying symptom... for fundamentally different reasons'.",
              "Different causes require different treatments, even with the same visible symptom.",
            ],
            hintsMy: [
              "'တူညီသော အခြေခံလက္ခဏာ... လုံးဝကွဲပြားသော အကြောင်းရင်းများကြောင့်' ဟူသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "လက္ခဏာ တူညီသော်လည်း အကြောင်းရင်း ကွဲပြားလျှင် ကုသမှုလည်း ကွဲပြားရန် လိုအပ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What point did Dr. Htet Htet make in paragraph 3 about negative feedback in a healthy person?",
            questionMy:
                "ကျန်းမာသောသူတစ်ဦးရှိ Negative Feedback အကြောင်း ဒေါက်တာထက်ထက် မည်သည့် အချက်ကို ဖော်ပြခဲ့သနည်း။",
            optionsEn: [
              "It keeps blood glucose within a narrow range automatically, without conscious thought",
              "It only works while a person is asleep",
              "It requires constant conscious effort to function",
              "It has nothing to do with insulin or glucagon",
            ],
            optionsMy: [
              "သတိရှိစွာ တွေးခေါ်ခြင်း လုံးဝမလိုအပ်ဘဲ သွေးဂလူးကို့စ်ကို ကျဉ်းမြောင်းသော အတိုင်းအတာအတွင်း အလိုအလျောက် ထိန်းထားခြင်း",
              "လူတစ်ဦး အိပ်ပျော်နေချိန်တွင်သာ အလုပ်လုပ်ခြင်း",
              "အလုပ်လုပ်ရန် သတိရှိစွာ ကြိုးပမ်းမှု အမြဲလိုအပ်ခြင်း",
              "Insulin သို့မဟုတ် Glucagon နှင့် လုံးဝ မသက်ဆိုင်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about the loop running 'automatically without conscious thought'.",
              "This is compared to the effortless way a reflex arc or pupil reflex works.",
            ],
            hintsMy: [
              "ကွင်းဆက်သည် 'သတိရှိစွာ တွေးခေါ်ခြင်း လုံးဝမလိုအပ်ဘဲ အလိုအလျောက်' လည်ပတ်ကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်ကို Reflex Arc သို့မဟုတ် Pupil Reflex ၏ လွယ်ကူသော လုပ်ဆောင်ပုံနှင့် နှိုင်းယှဉ်ထားသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w28-d5",
      dayNumber: 5,
      titleEn: "Term 7 Recap: Coordination and Homeostasis",
      titleMy:
          "သတ္တမအပိုင်း ပြန်လည်သုံးသပ်ခြင်း - ညှိနှိုင်းမှုနှင့် ဟန်ချက်ထိန်းသိမ်းမှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A reflex arc typically involves a receptor, sensory neurone, relay neurone, motor neurone, and...",
          questionMy:
              "Reflex Arc တစ်ခုတွင် ပုံမှန်အားဖြင့် Receptor, Sensory Neurone, Relay Neurone, Motor Neurone နှင့် ...ပါဝင်သည်",
          optionsEn: ["Effector", "Hormone gland", "Retina", "Pancreas"],
          optionsMy: ["Effector", "Hormone Gland", "Retina", "Pancreas"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In Type 1 diabetes, the underlying problem is...",
          questionMy: "Type 1 ဆီးချိုရောဂါတွင် အခြေခံ ပြဿနာမှာ...",
          optionsEn: [
            "Insufficient insulin production by the pancreas",
            "Cells becoming resistant to insulin only",
            "Too much insulin production",
            "A problem with the retina",
          ],
          optionsMy: [
            "Pancreas ၏ Insulin ထုတ်လုပ်မှု မလုံလောက်ခြင်း",
            "ဆဲလ်များ Insulin ကို ခံနိုင်ရည်ရှိလာခြင်းသာ",
            "Insulin အလွန်အကျွံ ထုတ်လုပ်ခြင်း",
            "Retina ဆိုင်ရာ ပြဿနာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Negative feedback in blood glucose control involves which two hormones?",
          questionMy:
              "သွေးဂလူးကို့စ် ထိန်းချုပ်မှုတွင် Negative Feedback သည် Hormone နှစ်မျိုးနှင့် ပါဝင်သည်၊ ၎င်းတို့မှာ အဘယ်နည်း",
          optionsEn: [
            "Insulin and glucagon",
            "Nicotine and adrenaline",
            "Bile and amylase",
            "Chlorophyll and haemoglobin",
          ],
          optionsMy: [
            "Insulin နှင့် Glucagon",
            "Nicotine နှင့် Adrenaline",
            "Bile နှင့် Amylase",
            "Chlorophyll နှင့် Haemoglobin",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 7: "Coordination, Response and Homeostasis"
// (Weeks 25-28)
// =====================================================================

const CourseTermDef igcseBiologyTerm7 = CourseTermDef(
  id: "course-igcse-bio-t7",
  termNumber: 7,
  titleEn: "Coordination, Response and Homeostasis",
  titleMy: "ညှိနှိုင်းမှု၊ တုံ့ပြန်မှုနှင့် ဟန်ချက်ထိန်းသိမ်းမှု",
  certificateTitleEn: "Coordination, Response and Homeostasis",
  certificateTitleMy: "ညှိနှိုင်းမှု၊ တုံ့ပြန်မှုနှင့် ဟန်ချက်ထိန်းသိမ်းမှု",
  weeks: [_igcseBioWeek25, _igcseBioWeek26, _igcseBioWeek27, _igcseBioWeek28],
);

// =====================================================================
// Week 29: "Reproduction in Plants and Humans"
// =====================================================================

const CourseWeekDef _igcseBioWeek29 = CourseWeekDef(
  id: "course-igcse-bio-w29",
  weekNumber: 29,
  titleEn: "Reproduction in Plants and Humans",
  titleMy: "အပင်နှင့် လူသားများ၏ မျိုးပွားခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w29-d1",
      dayNumber: 1,
      titleEn: "Asexual vs Sexual Reproduction",
      titleMy: "Asexual vs Sexual Reproduction",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which of the following best describes asexual reproduction?",
          questionMy:
              "Asexual Reproduction ကို အောက်ပါတို့အနက် အကောင်းဆုံး ဖော်ပြသည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Reproduction involving only one parent, producing offspring genetically identical to that parent",
            "Reproduction involving two parents and the fusion of gametes",
            "A process that only happens in animals",
            "A process that always produces genetically varied offspring",
          ],
          optionsMy: [
            "မိဘတစ်ဦးသာ ပါဝင်ပြီး ထိုမိဘနှင့် မျိုးရိုးဗီဇ တူညီသော မျိုးဆက်ကို ထုတ်လုပ်သော မျိုးပွားခြင်း",
            "မိဘနှစ်ဦးနှင့် Gamete များ ပေါင်းစည်းခြင်း ပါဝင်သော မျိုးပွားခြင်း",
            "တိရစ္ဆာန်များတွင်သာ ဖြစ်ပွားသော ဖြစ်စဉ်",
            "မျိုးရိုးဗီဇ ကွဲပြားသော မျိုးဆက်ကို အမြဲ ထုတ်လုပ်ပေးသော ဖြစ်စဉ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Asexual means 'without sex' -- no gametes fuse together.",
            "Since there's no mixing of genetic material from two parents, offspring are clones of the single parent.",
          ],
          hintsMy: [
            "Asexual ဆိုသည်မှာ 'လိင်ဆက်ဆံမှု မပါဘဲ' ဆိုလိုသည် -- Gamete များ ပေါင်းစည်းခြင်း မရှိပါ။",
            "မိဘနှစ်ဦးမှ မျိုးရိုးဗီဇ ပစ္စည်းများ ရောနှောခြင်း မရှိသောကြောင့် မျိုးဆက်များသည် မိဘတစ်ဦးတည်း၏ Clone များ ဖြစ်ကြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the key difference between pollination and fertilisation in flowering plants?",
          questionMy:
              "ပန်းပွင့်သော အပင်များတွင် Pollination နှင့် Fertilisation ကြား အဓိက ကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Pollination is the transfer of pollen to the stigma; fertilisation is the fusion of male and female gametes",
            "They are exactly the same process",
            "Pollination only happens in animals",
            "Fertilisation always happens before pollination",
          ],
          optionsMy: [
            "Pollination သည် Pollen ကို Stigma ဆီသို့ လွှဲပြောင်းခြင်းဖြစ်ပြီး Fertilisation သည် အထီး/အမ Gamete များ ပေါင်းစည်းခြင်းဖြစ်သည်",
            "နှစ်ခုစလုံး အတိအကျ တူညီသော ဖြစ်စဉ်ဖြစ်သည်",
            "Pollination သည် တိရစ္ဆာန်များတွင်သာ ဖြစ်ပွားသည်",
            "Fertilisation သည် Pollination မတိုင်မီ အမြဲ ဖြစ်ပွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Pollination happens first, moving pollen physically from anther to stigma.",
            "Fertilisation happens after, when a pollen tube delivers the male gamete to the ovule.",
          ],
          hintsMy: [
            "Pollination သည် ဦးစွာ ဖြစ်ပွားပြီး Pollen ကို Anther မှ Stigma ဆီသို့ ရုပ်ပိုင်းဆိုင်ရာ ရွှေ့လျားစေသည်။",
            "Fertilisation သည် ထို့နောက် ဖြစ်ပွားပြီး Pollen Tube က အထီး Gamete ကို Ovule ဆီသို့ ပို့ဆောင်ပေးသောအခါ ဖြစ်ပေါ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "During the human menstrual cycle, ovulation refers to...",
          questionMy: "လူ့ ရာသီစက်ဝန်းအတွင်း Ovulation က ဆိုလိုသည်မှာ...",
          optionsEn: [
            "The release of an egg from an ovary",
            "The shedding of the uterus lining",
            "The fertilisation of an egg by sperm",
            "The implantation of an embryo",
          ],
          optionsMy: [
            "Ovary မှ Egg တစ်ခု ထွက်ခြင်း",
            "သားအိမ် အလွှာ ကျွတ်ထွက်ခြင်း",
            "Sperm ဖြင့် Egg ကို Fertilise ပြုလုပ်ခြင်း",
            "သန္ဓေသားကို သားအိမ်တွင် စိုက်ထူခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "This typically happens around the middle of a roughly 28-day cycle.",
            "The egg then travels down the oviduct, where it may be fertilised.",
          ],
          hintsMy: [
            "ဤသည် ပုံမှန်အားဖြင့် ၂၈ ရက်ခန့် ကြာသော စက်ဝန်း၏ အလယ်ပိုင်းတွင် ဖြစ်ပွားလေ့ရှိသည်။",
            "ထို့နောက် Egg သည် Oviduct အတွင်း ဆင်းသက်ပြီး ထိုနေရာတွင် Fertilise ဖြစ်နိုင်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w29-d2",
      dayNumber: 2,
      titleEn: "Match: Reproduction Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - မျိုးပွားခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w29-dm-1",
          termEn: "Pollination",
          termMy: "Pollination",
          matchEn: "The transfer of pollen from the anther to the stigma",
          matchMy: "Pollen ကို Anther မှ Stigma ဆီသို့ လွှဲပြောင်းခြင်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w29-dm-2",
          termEn: "Fertilisation",
          termMy: "Fertilisation",
          matchEn:
              "The fusion of a male gamete and a female gamete to form a zygote",
          matchMy:
              "Zygote တစ်ခု ဖွဲ့စည်းရန် အထီးနှင့် အမ Gamete ပေါင်းစည်းခြင်း",
          colorValue: 0xFFE91E63,
        ),
        DragMatchPair(
          id: "igcsebio-w29-dm-3",
          termEn: "Ovary (human)",
          termMy: "Ovary (လူသား)",
          matchEn:
              "The organ that produces eggs in the female reproductive system",
          matchMy:
              "အမျိုးသမီး မျိုးပွားစနစ်တွင် Egg များ ထုတ်လုပ်ပေးသော အင်္ဂါ",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w29-dm-4",
          termEn: "Testes",
          termMy: "Testes",
          matchEn:
              "The organs that produce sperm in the male reproductive system",
          matchMy:
              "အမျိုးသား မျိုးပွားစနစ်တွင် Sperm များ ထုတ်လုပ်ပေးသော အင်္ဂါများ",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w29-dm-5",
          termEn: "Uterus",
          termMy: "သားအိမ် (Uterus)",
          matchEn:
              "The organ where a fertilised egg implants and a fetus develops during pregnancy",
          matchMy:
              "Fertilise ဖြစ်ပြီး Egg စိုက်ထူပြီး ကိုယ်ဝန်ဆောင်ချိန် သန္ဓေသား ကြီးထွားရာ အင်္ဂါ",
          colorValue: 0xFF4CAF50,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w29-d3",
      dayNumber: 3,
      titleEn: "Sort: Asexual or Sexual Reproduction?",
      titleMy: "စီစစ်ကြမည် - Asexual လား Sexual Reproduction လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Asexual Reproduction", "Sexual Reproduction"],
        bucketsMy: ["Asexual Reproduction", "Sexual Reproduction"],
        items: [
          SortingItem(
            id: "igcsebio-w29-sort-1",
            labelEn:
                "A strawberry plant growing a new identical plant from a runner",
            labelMy:
                "စတော်ဘယ်ရီအပင်တစ်ပင် Runner မှတစ်ဆင့် တူညီသော အပင်သစ် ကြီးထွားလာခြင်း",
            correctBucketEn: "Asexual Reproduction",
            correctBucketMy: "Asexual Reproduction",
          ),
          SortingItem(
            id: "igcsebio-w29-sort-2",
            labelEn: "A sperm cell fusing with an egg cell to form a zygote",
            labelMy:
                "Zygote တစ်ခု ဖွဲ့စည်းရန် Sperm ဆဲလ်တစ်ခု Egg ဆဲလ်တစ်ခုနှင့် ပေါင်းစည်းခြင်း",
            correctBucketEn: "Sexual Reproduction",
            correctBucketMy: "Sexual Reproduction",
          ),
          SortingItem(
            id: "igcsebio-w29-sort-3",
            labelEn:
                "Yeast budding to produce a genetically identical new cell",
            labelMy:
                "မျိုးရိုးဗီဇ တူညီသော ဆဲလ်အသစ်တစ်ခု ထုတ်လုပ်ရန် တဆေး Budding ပြုလုပ်ခြင်း",
            correctBucketEn: "Asexual Reproduction",
            correctBucketMy: "Asexual Reproduction",
          ),
          SortingItem(
            id: "igcsebio-w29-sort-4",
            labelEn:
                "Pollen from one flower fertilising the ovule of a different flower",
            labelMy:
                "ပန်းတစ်ပွင့်မှ Pollen က အခြားပန်းတစ်ပွင့်၏ Ovule ကို Fertilise ပြုလုပ်ခြင်း",
            correctBucketEn: "Sexual Reproduction",
            correctBucketMy: "Sexual Reproduction",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w29-d4",
      dayNumber: 4,
      titleEn: "Reading: Farmer U Kyaw's Mango Orchard",
      titleMy: "စာဖတ်ခြင်း - လယ်သမား ဦးကျော်၏ သရက်ဥယျာဉ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Farmer U Kyaw's Mango Orchard",
        titleMy: "လယ်သမား ဦးကျော်၏ သရက်ဥယျာဉ်",
        passageEn:
            "U Kyaw grew mangoes on a small orchard, and when his daughter's Biology class visited for a field trip, he explained that he actually used two completely different methods to produce new mango trees, depending on his goal. For most of his orchard, he grafted small branches, called cuttings, from his best-tasting tree directly onto young rootstock -- a form of asexual reproduction that guaranteed every new tree was a genetic clone of the parent, producing fruit with exactly the same sweetness and texture every single time.\n\nHowever, U Kyaw also let a few trees grow naturally from seeds, produced through ordinary sexual reproduction after bees carried pollen from the flowers of one tree to the flowers of another. He explained that seed-grown trees were far less predictable: since each seed resulted from the fusion of genetic material from two different parent trees, every seedling was genetically unique, sometimes producing fruit that tasted noticeably different from either parent -- occasionally worse, but every so often surprisingly better.\n\nA curious student asked why he didn't just grow his entire orchard from grafted cuttings, since they guaranteed consistent, high-quality fruit. U Kyaw explained that this was exactly the trade-off between the two reproductive strategies: asexual reproduction gave him reliable uniformity, but every grafted tree carried an identical genetic weakness to any pest or disease that might one day threaten his best-tasting variety, since none of them had any genetic variation to potentially resist it. His handful of seed-grown trees, despite their unpredictable fruit, served as a genetic backup -- and occasionally, one of those unpredictable seedlings turned out to have such excellent fruit that he propagated cuttings from it too, starting the whole cycle over again.",
        passageMy:
            "ဦးကျော်သည် ဥယျာဉ်ငယ်တစ်ခုတွင် သရက်သီးများ စိုက်ပျိုးခဲ့ပြီး၊ သူ၏ သမီး၏ ဇီဝဗေဒအတန်း လယ်ကွင်းလေ့လာမှု ခရီးစဉ်တွင် လာရောက်ခဲ့သောအခါ၊ သူသည် ၎င်း၏ ရည်ရွယ်ချက်ပေါ်မူတည်၍ သရက်ပင်အသစ်များ ထုတ်လုပ်ရန် လုံးဝ ကွဲပြားသော နည်းလမ်းနှစ်ခုကို အမှန်တကယ် အသုံးပြုခဲ့ကြောင်း ရှင်းပြခဲ့သည်။ သူ၏ ဥယျာဉ်အများစုအတွက် အရသာအကောင်းဆုံး အပင်မှ Cutting ဟုခေါ်သော အကိုင်းသေးလေးများကို ငယ်ရွယ်သော Rootstock ပေါ် တိုက်ရိုက် Graft လုပ်ခဲ့သည် -- Asexual Reproduction ပုံစံတစ်ခုဖြစ်ပြီး အသစ်တိုင်းသည် မိဘအပင်၏ Genetic Clone ဖြစ်ကြောင်း အာမခံနိုင်ကာ၊ အမြဲတမ်း အတူတူပင် ချိုမြိန်မှုနှင့် ဖွဲ့ဆက်မှု ရှိသော အသီးကို ထုတ်လုပ်ပေးသည်။\n\nသို့သော် ဦးကျော်သည် ပျားများက အပင်တစ်ပင်၏ ပန်းများမှ ပန်းမှုန့်ကို အခြားအပင်တစ်ပင်၏ ပန်းများဆီသို့ ဆောင်ယူပေးပြီးနောက် ရိုးရိုး Sexual Reproduction မှတစ်ဆင့် ထုတ်လုပ်ထားသော မျိုးစေ့များမှ အပင်အနည်းငယ်ကိုလည်း သဘာဝအတိုင်း ကြီးထွားခွင့်ပြုခဲ့သည်။ မျိုးစေ့မှ ကြီးထွားသော အပင်များသည် ပို၍ ခန့်မှန်း၍ ရခက်ကြောင်း သူ ရှင်းပြခဲ့သည်- မျိုးစေ့တစ်ခုစီသည် မိဘအပင်နှစ်ပင်မှ Genetic ပစ္စည်းများ ပေါင်းစည်းမှုမှ ရလာသောကြောင့် အပင်ပေါက်တစ်ခုစီသည် Genetically ထူးခြားပြီး၊ တစ်ခါတစ်ရံ မိဘနှစ်ပင်စလုံးနှင့် သိသိသာသာ ကွဲပြားသော အရသာရှိသော အသီးကို ထုတ်လုပ်ပေးတတ်သည် -- တစ်ခါတစ်ရံ ပို၍ ညံ့ဖျင်းသော်လည်း တစ်ခါတစ်ရံ အံ့ဩဖွယ် ပို၍ ကောင်းမွန်တတ်သည်။\n\nGraft လုပ်ထားသော Cutting များက တညီတညာ၊ အရည်အသွေးမြင့်သော အသီးကို အာမခံနိုင်သောကြောင့် စိတ်ဝင်စားသော ကျောင်းသားတစ်ဦးက ဥယျာဉ်တစ်ခုလုံးကို ၎င်းတို့ဖြင့်သာ ဘာကြောင့် မစိုက်ပျိုးခဲ့ကြောင်း မေးမြန်းခဲ့သည်။ ဦးကျော်က ဤသည်မှာ မျိုးပွားနည်းဗျူဟာနှစ်ခုကြား ဖလှယ်မှု အတိအကျ ဖြစ်ကြောင်း ရှင်းပြခဲ့သည်- Asexual Reproduction က ယုံကြည်စိတ်ချရသော တစ်ညီတစ်ညာဖြစ်မှုကို ပေးအပ်သော်လည်း Graft လုပ်ထားသော အပင်တိုင်းသည် တစ်နေ့နေ့ ၎င်း၏ အရသာအကောင်းဆုံး မျိုးစိတ်ကို ခြိမ်းခြောက်နိုင်သော ပိုးမွှား သို့မဟုတ် ရောဂါတစ်ခုအပေါ် Genetic အားနည်းချက် တူညီစွာ ပါဝင်သည်၊ အကြောင်းမှာ ၎င်းတို့ထဲမှ မည်သည့်အပင်မျှ ၎င်းကို ခုခံနိုင်ရန် Genetic Variation လုံးဝ မရှိသောကြောင့်ဖြစ်သည်။ သူ၏ မျိုးစေ့မှ ကြီးထွားသော အပင်အနည်းငယ်သည် ခန့်မှန်း၍ မရသော အသီးများ ရှိသော်လည်း Genetic Backup တစ်ခုအဖြစ် လုပ်ဆောင်ပေးခဲ့သည် -- တစ်ခါတစ်ရံ ထိုခန့်မှန်း၍ မရသော အပင်ပေါက်များထဲမှ တစ်ခုသည် အလွန်ကောင်းမွန်သော အသီးရှိသည်ကို တွေ့ရှိခဲ့ပြီး ၎င်းမှလည်း Cutting များ ပြန်လည် ပွားများခဲ့ကာ စက်ဝန်းတစ်ခုလုံးကို ထပ်မံစတင်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, why did grafted trees all produce fruit with the same taste?",
            questionMy:
                "Graft လုပ်ထားသော အပင်အားလုံးသည် တူညီသော အရသာရှိသော အသီးများ ထုတ်လုပ်ခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They were genetic clones of the parent tree, produced by asexual reproduction",
              "They were grown from carefully selected seeds",
              "Bees pollinated them all identically",
              "U Kyaw added artificial flavouring",
            ],
            optionsMy: [
              "Asexual Reproduction ဖြင့် ထုတ်လုပ်ထားသော မိဘအပင်၏ Genetic Clone များ ဖြစ်သောကြောင့်",
              "ဂရုတစိုက် ရွေးချယ်ထားသော မျိုးစေ့များမှ ကြီးထွားခဲ့သောကြောင့်",
              "ပျားများက အားလုံးကို တစ်ညီတစ်ညာ Pollinate ပြုလုပ်ခဲ့သောကြောင့်",
              "ဦးကျော်က အတု အရသာများ ထည့်ခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining what grafting guaranteed.",
              "Asexual reproduction produces genetically identical offspring.",
            ],
            hintsMy: [
              "Graft လုပ်ခြင်းက အဘယ်ကို အာမခံကြောင်း ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Asexual Reproduction က Genetically တူညီသော မျိုးဆက်ကို ထုတ်လုပ်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why were seed-grown trees less predictable?",
            questionMy:
                "မျိုးစေ့မှ ကြီးထွားသော အပင်များ ပို၍ ခန့်မှန်း၍ ရခက်သည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Each seed resulted from the fusion of genetic material from two different parent trees",
              "Seeds never grow into full trees",
              "Bees never visited the seed-grown trees",
              "U Kyaw planted the seeds upside down",
            ],
            optionsMy: [
              "မျိုးစေ့တစ်ခုစီသည် မိဘအပင်နှစ်ပင်မှ Genetic ပစ္စည်းများ ပေါင်းစည်းမှုမှ ရလာသောကြောင့်",
              "မျိုးစေ့များသည် အပင်အပြည့်အဝအဖြစ် ဘယ်တော့မှ ကြီးထွား၍ မရသောကြောင့်",
              "ပျားများသည် မျိုးစေ့မှ ကြီးထွားသော အပင်များထံ ဘယ်တော့မှ မလာရောက်ခဲ့သောကြောင့်",
              "ဦးကျော်က မျိုးစေ့များကို ခေါင်းလှန်၍ စိုက်ခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is the standard reason sexual reproduction produces varied offspring.",
              "Two different parents means mixed genetic material in every seed.",
            ],
            hintsMy: [
              "ဤသည်မှာ Sexual Reproduction က ကွဲပြားသော မျိုးဆက်ကို ထုတ်လုပ်ပေးသည့် စံ အကြောင်းရင်းဖြစ်သည်။",
              "မိဘနှစ်ပင် ကွဲပြားခြင်းက မျိုးစေ့တိုင်းတွင် ရောနှောထားသော Genetic ပစ္စည်း ဆိုလိုသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what genetic risk did the all-grafted orchard face?",
            questionMy:
                "Graft လုပ်ထားသော ဥယျာဉ်တစ်ခုလုံးသည် မည်သည့် Genetic အန္တရာယ်ကို ရင်ဆိုင်ရသည်ကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Every tree shared the same genetic weakness to any pest or disease, with no variation to resist it",
              "The trees would never produce fruit at all",
              "The trees would grow too tall to harvest",
              "There was no risk at all",
            ],
            optionsMy: [
              "အပင်တိုင်းသည် ပိုးမွှား သို့မဟုတ် ရောဂါတစ်ခုအပေါ် Genetic အားနည်းချက် တူညီစွာ ပါဝင်ပြီး ခုခံနိုင်ရန် Variation မရှိခြင်း",
              "အပင်များ အသီး လုံးဝ မသီးနိုင်တော့ခြင်း",
              "အပင်များ ရိတ်သိမ်း၍ မရလောက်အောင် အလွန်ကြီးထွားလာခြင်း",
              "အန္တရာယ် လုံးဝ မရှိခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the trade-off of relying only on asexual reproduction.",
              "No genetic variation means no natural resistance if a new threat appears.",
            ],
            hintsMy: [
              "Asexual Reproduction တစ်ခုတည်းကိုသာ မှီခိုအားထားခြင်း၏ ဖလှယ်မှုကို ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Genetic Variation မရှိခြင်းက အန္တရာယ်သစ် ပေါ်ပေါက်လာလျှင် သဘာဝ ခုခံနိုင်စွမ်း မရှိခြင်းကို ဆိုလိုသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did U Kyaw still keep a few seed-grown trees?",
            questionMy:
                "ဦးကျော်သည် မျိုးစေ့မှ ကြီးထွားသော အပင်အနည်းငယ်ကို အဘယ်ကြောင့် ဆက်လက် ထားရှိခဲ့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They served as a genetic backup and occasionally produced an even better new variety",
              "He forgot to remove them",
              "They required no water or care",
              "Seed-grown trees were required by law",
            ],
            optionsMy: [
              "Genetic Backup တစ်ခုအဖြစ် လုပ်ဆောင်ပေးပြီး တစ်ခါတစ်ရံ ပို၍ ကောင်းမွန်သော မျိုးစိတ်အသစ်ကို ထုတ်လုပ်ပေးတတ်သောကြောင့်",
              "ဖယ်ရှားရန် မေ့ကျန်ခဲ့သောကြောင့်",
              "ရေနှင့် ဂရုစိုက်မှု လုံးဝ မလိုအပ်သောကြောင့်",
              "မျိုးစေ့မှ ကြီးထွားသော အပင်များကို ဥပဒေက တောင်းဆိုသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of the passage.",
              "This is exactly the trade-off benefit of maintaining genetic variation.",
            ],
            hintsMy: [
              "စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ Genetic Variation ကို ထိန်းသိမ်းထားခြင်း၏ ဖလှယ်မှု အကျိုးကျေးဇူး အတိအကျပင် ဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w29-d5",
      dayNumber: 5,
      titleEn: "Week 29 Recap: Reproduction",
      titleMy: "နှစ်ဆယ့်ကိုးပတ် ပြန်လည်သုံးသပ်ခြင်း - မျိုးပွားခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Offspring produced by asexual reproduction are usually...",
          questionMy:
              "Asexual Reproduction ဖြင့် ထုတ်လုပ်ထားသော မျိုးဆက်များသည် ပုံမှန်အားဖြင့်...",
          optionsEn: [
            "Genetically identical to the parent",
            "Always genetically varied",
            "Never able to grow",
            "Produced by two parents",
          ],
          optionsMy: [
            "မိဘနှင့် Genetically တူညီခြင်း",
            "အမြဲ Genetically ကွဲပြားခြင်း",
            "ဘယ်တော့မှ ကြီးထွား၍ မရခြင်း",
            "မိဘနှစ်ဦးက ထုတ်လုပ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In flowering plants, pollination is followed by...",
          questionMy:
              "ပန်းပွင့်သော အပင်များတွင် Pollination ပြီးနောက် ...ဖြစ်ပေါ်သည်",
          optionsEn: [
            "Fertilisation",
            "Germination immediately",
            "Photosynthesis only",
            "Transpiration only",
          ],
          optionsMy: [
            "Fertilisation",
            "ချက်ချင်း အညှောက်ထွက်ခြင်း",
            "Photosynthesis သာ",
            "Transpiration သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Ovulation refers to the release of an egg from the...",
          questionMy: "Ovulation က ...မှ Egg ထွက်ခြင်းကို ရည်ညွှန်းသည်",
          optionsEn: ["Ovary", "Uterus", "Testes", "Vagina"],
          optionsMy: ["Ovary", "သားအိမ်", "Testes", "Vagina"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 30: "Inheritance and DNA"
// =====================================================================

const CourseWeekDef _igcseBioWeek30 = CourseWeekDef(
  id: "course-igcse-bio-w30",
  weekNumber: 30,
  titleEn: "Inheritance and DNA",
  titleMy: "မျိုးရိုးလိုက်ခြင်းနှင့် DNA",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w30-d1",
      dayNumber: 1,
      titleEn: "DNA, Genes, and Chromosomes",
      titleMy: "DNA, Gene များနှင့် Chromosome များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a gene?",
          questionMy: "Gene ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A section of DNA that codes for a particular characteristic",
            "A whole chromosome",
            "A type of cell",
            "A hormone produced by the pancreas",
          ],
          optionsMy: [
            "အထူးလက္ခဏာတစ်ခုကို Code ပြုလုပ်ပေးသော DNA ၏ အပိုင်းတစ်ခု",
            "Chromosome တစ်ခုလုံး",
            "ဆဲလ်အမျိုးအစားတစ်ခု",
            "Pancreas မှ ထုတ်လုပ်သော Hormone တစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "A chromosome contains many of these along its length.",
            "Different versions of the same gene are called alleles.",
          ],
          hintsMy: [
            "Chromosome တစ်ခုတွင် ၎င်း၏ အလျားတစ်လျှောက် ဤအရာများစွာ ပါဝင်သည်။",
            "တူညီသော Gene ၏ မတူညီသော ပုံစံများကို Allele ဟု ခေါ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "How many chromosomes does a normal human body cell contain?",
          questionMy:
              "ပုံမှန် လူ့ခန္ဓာကိုယ်ဆဲလ်တစ်ခုတွင် Chromosome မည်မျှ ပါဝင်သနည်း။",
          optionsEn: ["46 (23 pairs)", "23", "92", "4"],
          optionsMy: ["၄၆ (အတွဲ ၂၃ တွဲ)", "၂၃", "၉၂", "၄"],
          correctIndex: 0,
          hintsEn: [
            "Human body cells are diploid, meaning they have two sets of chromosomes.",
            "Gametes (sperm and egg cells) have half this number.",
          ],
          hintsMy: [
            "လူ့ခန္ဓာကိုယ်ဆဲလ်များသည် Diploid ဖြစ်ပြီး Chromosome အစုံနှစ်စုံ ရှိသည်ဟု ဆိုလိုသည်။",
            "Gamete များ (Sperm နှင့် Egg ဆဲလ်များ) တွင် ဤအရေအတွက်၏ တစ်ဝက်သာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which type of cell division produces gametes with half the normal chromosome number?",
          questionMy:
              "မည်သည့် ဆဲလ်ကွဲအမျိုးအစားက ပုံမှန် Chromosome အရေအတွက်၏ တစ်ဝက်ပါသော Gamete များကို ထုတ်လုပ်ပေးသနည်း။",
          optionsEn: ["Meiosis", "Mitosis", "Digestion", "Diffusion"],
          optionsMy: ["Meiosis", "Mitosis", "Digestion", "Diffusion"],
          correctIndex: 0,
          hintsEn: [
            "This division produces four genetically different, haploid cells.",
            "Mitosis, by contrast, produces two genetically identical, diploid cells, used for growth and repair.",
          ],
          hintsMy: [
            "ဤကွဲခြင်းက Genetically ကွဲပြားပြီး Haploid ဖြစ်သော ဆဲလ်လေးခု ထုတ်လုပ်ပေးသည်။",
            "ဆန့်ကျင်ဘက်အားဖြင့် Mitosis က ကြီးထွားခြင်းနှင့် ပြုပြင်ခြင်းအတွက် သုံးသော Genetically တူညီသော Diploid ဆဲလ်နှစ်ခု ထုတ်လုပ်ပေးသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w30-d2",
      dayNumber: 2,
      titleEn: "Match: Genetics Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Genetics ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w30-dm-1",
          termEn: "Allele",
          termMy: "Allele",
          matchEn:
              "A different version of the same gene, e.g. the allele for tall or the allele for short",
          matchMy:
              "Gene တစ်ခုတည်း၏ မတူညီသော ပုံစံ၊ ဥပမာ အရပ်ရှည်ခြင်း Allele သို့မဟုတ် အရပ်တိုခြင်း Allele",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w30-dm-2",
          termEn: "Dominant allele",
          termMy: "Dominant Allele",
          matchEn:
              "An allele whose characteristic appears even if only one copy is present",
          matchMy:
              "မိတ္တူတစ်ခုတည်း ရှိလျှင်ပင် ၎င်း၏ လက္ခဏာ ပေါ်ထွက်လာသော Allele",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w30-dm-3",
          termEn: "Recessive allele",
          termMy: "Recessive Allele",
          matchEn:
              "An allele whose characteristic only appears if two copies are present",
          matchMy: "မိတ္တူနှစ်ခု ရှိမှသာ ၎င်း၏ လက္ခဏာ ပေါ်ထွက်လာသော Allele",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w30-dm-4",
          termEn: "Mitosis",
          termMy: "Mitosis",
          matchEn:
              "Cell division producing two genetically identical diploid cells, used for growth and repair",
          matchMy:
              "ကြီးထွားခြင်းနှင့် ပြုပြင်ခြင်းအတွက် သုံးသော Genetically တူညီသော Diploid ဆဲလ်နှစ်ခုကို ထုတ်လုပ်ပေးသော ဆဲလ်ကွဲခြင်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w30-dm-5",
          termEn: "Punnett square",
          termMy: "Punnett Square",
          matchEn:
              "A diagram used to predict the possible genotypes and ratios of offspring from a genetic cross",
          matchMy:
              "မျိုးရိုးဗီဇ ဖြတ်သန်းမှုတစ်ခုမှ မျိုးဆက်များ၏ ဖြစ်နိုင်ချေရှိသော Genotype နှင့် အချိုးများကို ခန့်မှန်းရန် သုံးသော ပုံကြမ်း",
          colorValue: 0xFF9C27B0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w30-d3",
      dayNumber: 3,
      titleEn: "Sort: Mitosis or Meiosis?",
      titleMy: "စီစစ်ကြမည် - Mitosis လား Meiosis လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Mitosis", "Meiosis"],
        bucketsMy: ["Mitosis", "Meiosis"],
        items: [
          SortingItem(
            id: "igcsebio-w30-sort-1",
            labelEn: "Skin cells dividing to repair a cut",
            labelMy: "ဒဏ်ရာတစ်ခု ပြုပြင်ရန် အရေပြားဆဲလ်များ ကွဲခြင်း",
            correctBucketEn: "Mitosis",
            correctBucketMy: "Mitosis",
          ),
          SortingItem(
            id: "igcsebio-w30-sort-2",
            labelEn: "Producing four genetically different sperm cells",
            labelMy: "Genetically ကွဲပြားသော Sperm ဆဲလ်လေးခု ထုတ်လုပ်ခြင်း",
            correctBucketEn: "Meiosis",
            correctBucketMy: "Meiosis",
          ),
          SortingItem(
            id: "igcsebio-w30-sort-3",
            labelEn: "A plant growing taller by producing more identical cells",
            labelMy:
                "အပင်တစ်ပင် တူညီသော ဆဲလ်များ ပို၍ ထုတ်လုပ်ခြင်းဖြင့် ပို၍ ရှည်လာခြင်း",
            correctBucketEn: "Mitosis",
            correctBucketMy: "Mitosis",
          ),
          SortingItem(
            id: "igcsebio-w30-sort-4",
            labelEn:
                "Producing egg cells with half the normal chromosome number",
            labelMy:
                "ပုံမှန် Chromosome အရေအတွက်၏ တစ်ဝက်ပါသော Egg ဆဲလ်များ ထုတ်လုပ်ခြင်း",
            correctBucketEn: "Meiosis",
            correctBucketMy: "Meiosis",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w30-d4",
      dayNumber: 4,
      titleEn: "Reading: Ei Shwe Zin's Pea Plant Cross",
      titleMy: "စာဖတ်ခြင်း - ဧီးရွှေဇင်၏ ပဲပင် ဖြတ်သန်းမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Ei Shwe Zin's Pea Plant Cross",
        titleMy: "ဧီးရွှေဇင်၏ ပဲပင် ဖြတ်သန်းမှု",
        passageEn:
            "For her genetics homework, Ei Shwe Zin practised a monohybrid cross using pea plant height, following the same classic example her teacher had used in class: the allele for tall stems, T, is dominant, and the allele for short stems, t, is recessive. She was asked to predict the offspring of a cross between two parent plants that were both heterozygous, meaning each parent had one T allele and one t allele (genotype Tt), and both were tall, since T is dominant over t.\n\nEi Shwe Zin drew a Punnett square, listing one parent's alleles, T and t, along the top and the other parent's alleles, T and t, down the side, then filled in each of the four boxes with the combination of alleles an offspring could inherit: TT, Tt, Tt, and tt. She noticed that three of the four boxes contained at least one dominant T allele -- TT, Tt, and Tt -- meaning those offspring would be tall, while only the fourth box, tt, contained no dominant allele at all, meaning that offspring would be short.\n\nHer teacher asked her to express this as a ratio, and Ei Shwe Zin correctly identified the classic 3:1 ratio -- three tall offspring predicted for every one short offspring, purely due to chance combinations of the parents' alleles. She then extended her thinking to genotype ratios rather than just the visible phenotype: out of the four predicted offspring, one was TT (homozygous dominant), two were Tt (heterozygous, looking identical to the TT plant despite carrying a hidden t allele), and one was tt (homozygous recessive) -- a 1:2:1 genotype ratio hiding underneath the simpler 3:1 phenotype ratio she had first noticed.",
        passageMy:
            "ဧီးရွှေဇင်၏ Genetics အိမ်စာအတွက် သူမသည် ၎င်း၏ ဆရာမက အတန်းတွင် သုံးခဲ့သည့် Classic ဥပမာတစ်ခုတည်းအတိုင်း ပဲပင် အရပ်ကို သုံး၍ Monohybrid Cross တစ်ခုကို လေ့ကျင့်ခဲ့သည်- အရပ်ရှည်ပင်စည် Allele T သည် Dominant ဖြစ်ပြီး အရပ်တိုပင်စည် Allele t သည် Recessive ဖြစ်သည်။ Heterozygous ဖြစ်သော မိဘအပင်နှစ်ပင်၊ ဆိုလိုသည်မှာ မိဘတစ်ဦးစီတွင် T Allele တစ်ခုနှင့် t Allele တစ်ခု (Genotype Tt) ပါဝင်ပြီး နှစ်ခုစလုံး T သည် t ထက် Dominant ဖြစ်ကြောင်းကြောင့် အရပ်ရှည်ကြသော မိဘအပင်နှစ်ပင်ကြား Cross တစ်ခု၏ မျိုးဆက်များကို ခန့်မှန်းရန် သူမ တောင်းဆိုခံခဲ့ရသည်။\n\nဧီးရွှေဇင်သည် Punnett Square တစ်ခု ဆွဲခဲ့ပြီး၊ မိဘတစ်ဦး၏ Allele များ T နှင့် t ကို အပေါ်ဘက်တွင်၊ အခြားမိဘတစ်ဦး၏ Allele များ T နှင့် t ကို ဘေးဘက်တွင် စာရင်းပြုစုကာ ဘောက်စ်လေးခုစီကို မျိုးဆက်တစ်ခုက ရရှိနိုင်သော Allele ပေါင်းစပ်မှုများဖြင့် ဖြည့်ခဲ့သည်- TT, Tt, Tt နှင့် tt။ ဘောက်စ်လေးခုအနက် သုံးခုတွင် Dominant T Allele အနည်းဆုံးတစ်ခု ပါဝင်ကြောင်း -- TT, Tt နှင့် Tt -- သတိပြုမိခဲ့ပြီး ထိုမျိုးဆက်များသည် အရပ်ရှည်ကြမည်ဖြစ်ကြောင်း၊ စတုတ္ထဘောက်စ် tt တွင်သာ Dominant Allele လုံးဝ မပါဝင်ကြောင်း၊ ထိုမျိုးဆက်သည် အရပ်တိုမည်ဖြစ်ကြောင်း သိရှိခဲ့သည်။\n\nသူမ၏ ဆရာမက ၎င်းကို အချိုးတစ်ခုအဖြစ် ဖော်ပြရန် တောင်းဆိုခဲ့ပြီး ဧီးရွှေဇင်က Classic 3:1 အချိုးကို မှန်ကန်စွာ ဖော်ထုတ်ခဲ့သည် -- အရပ်တို မျိုးဆက်တစ်ခုစီအတွက် အရပ်ရှည် မျိုးဆက်သုံးခု ကြိုတင်ခန့်မှန်းထားပြီး မိဘများ၏ Allele ပေါင်းစပ်မှု ကျပန်းကြောင့်သာ ဖြစ်သည်။ ထို့နောက် သူမသည် မြင်ရသော Phenotype တစ်ခုတည်းအစား Genotype အချိုးများသို့ သူမ၏ တွေးခေါ်မှုကို ဆက်လက် ချဲ့ထွင်ခဲ့သည်- ကြိုတင်ခန့်မှန်းထားသော မျိုးဆက်လေးခုထဲမှ တစ်ခုသည် TT (Homozygous Dominant)၊ နှစ်ခုသည် Tt (Heterozygous၊ ဝှက်ထားသော t Allele တစ်ခု သယ်ဆောင်နေသော်လည်း TT အပင်နှင့် အသွင်တူ) နှင့် တစ်ခုသည် tt (Homozygous Recessive) ဖြစ်ခဲ့သည် -- သူမ ဦးစွာ သတိပြုမိသော ရိုးရှင်းသော 3:1 Phenotype အချိုးအောက်တွင် ဝှက်ထားသော 1:2:1 Genotype အချိုးတစ်ခု ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, why were both parent plants tall despite being heterozygous (Tt)?",
            questionMy:
                "မိဘအပင်နှစ်ပင်စလုံး Heterozygous (Tt) ဖြစ်သော်လည်း အရပ်ရှည်ခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The T allele for tall stems is dominant over the recessive t allele",
              "Heterozygous plants are always short",
              "Both parents were actually homozygous",
              "Height has nothing to do with alleles",
            ],
            optionsMy: [
              "အရပ်ရှည်ပင်စည် T Allele သည် Recessive t Allele ထက် Dominant ဖြစ်သောကြောင့်",
              "Heterozygous အပင်များသည် အမြဲ အရပ်တိုသောကြောင့်",
              "မိဘနှစ်ပင်စလုံးသည် အမှန်တကယ် Homozygous ဖြစ်ခဲ့သောကြောင့်",
              "အရပ်သည် Allele များနှင့် လုံးဝ မသက်ဆိုင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the definition of dominant given at the start of paragraph 1.",
              "Only one T allele is needed for the tall characteristic to appear.",
            ],
            hintsMy: [
              "စာပိုဒ် ၁ ၏ အစတွင် ပေးထားသော Dominant ၏ အဓိပ္ပာယ်ဖွင့်ဆိုချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အရပ်ရှည်ခြင်း လက္ခဏာ ပေါ်ထွက်ရန် T Allele တစ်ခုသာ လိုအပ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how many of the four Punnett square boxes resulted in a tall plant?",
            questionMy:
                "Punnett Square ဘောက်စ်လေးခုအနက် မည်မျှသည် အရပ်ရှည်အပင် ဖြစ်ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: ["Three", "One", "Two", "Four"],
            optionsMy: ["သုံးခု", "တစ်ခု", "နှစ်ခု", "လေးခု"],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence identifying which boxes contained at least one dominant allele.",
              "TT, Tt, and Tt all contain a T, so all three produce tall plants.",
            ],
            hintsMy: [
              "မည်သည့် ဘောက်စ်များတွင် Dominant Allele အနည်းဆုံးတစ်ခု ပါဝင်ကြောင်း ဖော်ထုတ်သော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "TT, Tt, Tt တို့တွင် T ပါဝင်သောကြောင့် သုံးခုစလုံးက အရပ်ရှည်အပင်များ ထုတ်လုပ်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what is the predicted phenotype ratio of tall to short offspring?",
            questionMy:
                "အရပ်ရှည်နှင့် အရပ်တို မျိုးဆက်များ၏ ကြိုတင်ခန့်မှန်း Phenotype အချိုးကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: ["3:1", "1:1", "1:3", "4:0"],
            optionsMy: ["3:1", "1:1", "1:3", "4:0"],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence naming the 'classic' ratio Ei Shwe Zin identified.",
              "Three tall for every one short.",
            ],
            hintsMy: [
              "ဧီးရွှေဇင် ဖော်ထုတ်ခဲ့သော 'Classic' အချိုးကို အမည်တပ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "အရပ်တို တစ်ခုစီအတွက် အရပ်ရှည် သုံးခု။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what genotype ratio underlies the simpler 3:1 phenotype ratio?",
            questionMy:
                "ရိုးရှင်းသော 3:1 Phenotype အချိုးအောက်တွင် မည်သည့် Genotype အချိုး ရှိကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "1:2:1 (TT:Tt:tt)",
              "3:1 exactly the same as phenotype",
              "1:1:1:1",
              "4:0:0",
            ],
            optionsMy: [
              "1:2:1 (TT:Tt:tt)",
              "Phenotype နှင့် အတိအကျ တူညီသော 3:1",
              "1:1:1:1",
              "4:0:0",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence identifying the genotype breakdown.",
              "One TT, two Tt, and one tt out of the four predicted offspring.",
            ],
            hintsMy: [
              "Genotype အသေးစိတ်ခွဲခြမ်းမှုကို ဖော်ထုတ်သော နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ကြိုတင်ခန့်မှန်းထားသော မျိုးဆက်လေးခုထဲမှ TT တစ်ခု၊ Tt နှစ်ခုနှင့် tt တစ်ခု။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w30-d5",
      dayNumber: 5,
      titleEn: "Week 30 Recap: DNA and Inheritance",
      titleMy: "သုံးဆယ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - DNA နှင့် မျိုးရိုးလိုက်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A gene is best described as...",
          questionMy: "Gene ကို အကောင်းဆုံးဖော်ပြသည့်အရာမှာ...",
          optionsEn: [
            "A section of DNA coding for a characteristic",
            "A whole cell",
            "A type of hormone",
            "A blood vessel",
          ],
          optionsMy: [
            "လက္ခဏာတစ်ခုကို Code ပြုလုပ်ပေးသော DNA ၏ အပိုင်း",
            "ဆဲလ်တစ်ခုလုံး",
            "Hormone အမျိုးအစားတစ်ခု",
            "သွေးကြောတစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Meiosis produces cells with...",
          questionMy: "Meiosis က ...ရှိသော ဆဲလ်များ ထုတ်လုပ်ပေးသည်",
          optionsEn: [
            "Half the normal chromosome number",
            "Double the normal chromosome number",
            "No chromosomes at all",
            "The exact same chromosome number as mitosis",
          ],
          optionsMy: [
            "ပုံမှန် Chromosome အရေအတွက်၏ တစ်ဝက်",
            "ပုံမှန် Chromosome အရေအတွက်၏ နှစ်ဆ",
            "Chromosome လုံးဝ မရှိခြင်း",
            "Mitosis နှင့် အတိအကျ တူညီသော Chromosome အရေအတွက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In a cross between two heterozygous (Tt x Tt) pea plants, what is the expected phenotype ratio?",
          questionMy:
              "Heterozygous (Tt x Tt) ပဲပင်နှစ်ပင်ကြား Cross တစ်ခုတွင် မျှော်လင့်ထားသော Phenotype အချိုးမှာ အဘယ်နည်း",
          optionsEn: [
            "3 tall : 1 short",
            "1 tall : 1 short",
            "1 tall : 3 short",
            "All tall",
          ],
          optionsMy: [
            "အရပ်ရှည် 3 : အရပ်တို 1",
            "အရပ်ရှည် 1 : အရပ်တို 1",
            "အရပ်ရှည် 1 : အရပ်တို 3",
            "အားလုံး အရပ်ရှည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 31: "Variation and Selection"
// =====================================================================

const CourseWeekDef _igcseBioWeek31 = CourseWeekDef(
  id: "course-igcse-bio-w31",
  weekNumber: 31,
  titleEn: "Variation and Selection",
  titleMy: "ကွဲပြားခြားနားမှု (Variation) နှင့် ရွေးချယ်မှု (Selection)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w31-d1",
      dayNumber: 1,
      titleEn: "Continuous and Discontinuous Variation",
      titleMy: "Continuous နှင့် Discontinuous Variation",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Human height is an example of which type of variation?",
          questionMy:
              "လူ့ခန္ဓာကိုယ် အမြင့်သည် မည်သည့်အမျိုးအစား Variation ၏ ဥပမာ ဖြစ်သနည်း။",
          optionsEn: [
            "Continuous variation",
            "Discontinuous variation",
            "No variation at all",
            "Asexual variation",
          ],
          optionsMy: [
            "Continuous Variation",
            "Discontinuous Variation",
            "Variation လုံးဝ မရှိခြင်း",
            "Asexual Variation",
          ],
          correctIndex: 0,
          hintsEn: [
            "Height can take almost any value across a wide range, with no distinct categories.",
            "Continuous variation is often influenced by both genes and environmental factors like diet.",
          ],
          hintsMy: [
            "အမြင့်သည် ကျယ်ပြန့်သော အတိုင်းအတာတစ်ခုတွင် တိကျသော အုပ်စုများ မရှိဘဲ မည်သည့်တန်ဖိုးမဆို ရနိုင်သည်။",
            "Continuous Variation သည် Gene များနှင့် အစားအစာကဲ့သို့သော ပတ်ဝန်းကျင်ဆိုင်ရာ အချက်များနှစ်ခုစလုံးက မကြာခဏ သက်ရောက်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Human ABO blood group is an example of which type of variation?",
          questionMy:
              "လူ့ ABO သွေးအုပ်စုသည် မည်သည့်အမျိုးအစား Variation ၏ ဥပမာ ဖြစ်သနည်း။",
          optionsEn: [
            "Discontinuous variation",
            "Continuous variation",
            "Random variation with no categories",
            "Environmental variation only",
          ],
          optionsMy: [
            "Discontinuous Variation",
            "Continuous Variation",
            "အုပ်စုများ လုံးဝမရှိသော ကျပန်း Variation",
            "ပတ်ဝန်းကျင်ဆိုင်ရာ Variation သာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Blood group falls into distinct categories (A, B, AB, or O) with no in-between values.",
            "Discontinuous variation is usually controlled by genes alone, without environmental influence.",
          ],
          hintsMy: [
            "သွေးအုပ်စုသည် အလယ်အလတ်တန်ဖိုးများ မရှိဘဲ တိကျသော အုပ်စုများ (A, B, AB, သို့မဟုတ် O) ထဲသို့ ကျရောက်သည်။",
            "Discontinuous Variation သည် ပုံမှန်အားဖြင့် ပတ်ဝန်းကျင်ဆိုင်ရာ သက်ရောက်မှု မပါဘဲ Gene များတစ်ခုတည်းကသာ ထိန်းချုပ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these factors can influence continuous variation, but NOT discontinuous variation?",
          questionMy:
              "Discontinuous Variation ကို မသက်ရောက်ဘဲ Continuous Variation ကိုသာ သက်ရောက်စေနိုင်သော အောက်ပါ အချက်များအနက် အဘယ်နည်း။",
          optionsEn: [
            "Diet and environment",
            "Genes alone",
            "Chromosomes alone",
            "DNA alone",
          ],
          optionsMy: [
            "အစားအစာနှင့် ပတ်ဝန်းကျင်",
            "Gene များတစ်ခုတည်း",
            "Chromosome များတစ်ခုတည်း",
            "DNA တစ်ခုတည်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Height can be affected by both genetics and nutrition during childhood.",
            "Blood group, by contrast, is fixed entirely by genetics regardless of diet.",
          ],
          hintsMy: [
            "အမြင့်သည် ကလေးဘဝတွင် Genetics နှင့် အာဟာရ နှစ်ခုစလုံးက သက်ရောက်နိုင်သည်။",
            "ဆန့်ကျင်ဘက်အားဖြင့် သွေးအုပ်စုသည် အစားအစာမည်သို့ပင်ရှိစေ Genetics တစ်ခုတည်းကသာ လုံးဝ သတ်မှတ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w31-d2",
      dayNumber: 2,
      titleEn: "Match: Selection and Evolution Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Selection နှင့် Evolution ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w31-dm-1",
          termEn: "Natural selection",
          termMy: "Natural Selection",
          matchEn:
              "The process by which organisms with advantageous variations survive and reproduce more successfully, passing those variations on",
          matchMy:
              "အားသာချက်ရှိသော Variation ပါရှိသော သက်ရှိများ ပို၍ အောင်မြင်စွာ ရှင်သန်ကာ မျိုးပွားပြီး ထို Variation များကို ဆက်ခံစေသော ဖြစ်စဉ်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w31-dm-2",
          termEn: "Evolution",
          termMy: "Evolution",
          matchEn:
              "The gradual change in a species' characteristics over many generations, driven mainly by natural selection",
          matchMy:
              "အဓိကအားဖြင့် Natural Selection က ဦးဆောင်ပြီး မျိုးဆက်များစွာအတွင်း မျိုးစိတ်တစ်ခု၏ လက္ခဏာများ တဖြည်းဖြည်း ပြောင်းလဲခြင်း",
          colorValue: 0xFF2196F3,
        ),
        DragMatchPair(
          id: "igcsebio-w31-dm-3",
          termEn: "Selective breeding",
          termMy: "Selective Breeding",
          matchEn:
              "Humans deliberately choosing organisms with desired characteristics to breed together",
          matchMy:
              "အတူတကွ မွေးမြူရန် ရည်ရွယ်သော လက္ခဏာများပါသော သက်ရှိများကို လူသားများ တမင်တကာ ရွေးချယ်ခြင်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w31-dm-4",
          termEn: "Adaptation",
          termMy: "Adaptation",
          matchEn:
              "A characteristic that helps an organism survive and reproduce better in its environment",
          matchMy:
              "သက်ရှိတစ်ခု၏ ပတ်ဝန်းကျင်တွင် ပို၍ ကောင်းစွာ ရှင်သန်ကာ မျိုးပွားနိုင်ရန် ကူညီပေးသော လက္ခဏာ",
          colorValue: 0xFF9C27B0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w31-d3",
      dayNumber: 3,
      titleEn: "Sort: Natural or Selective?",
      titleMy: "စီစစ်ကြမည် - Natural လား Selective လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Natural Selection", "Selective Breeding"],
        bucketsMy: ["Natural Selection", "Selective Breeding"],
        items: [
          SortingItem(
            id: "igcsebio-w31-sort-1",
            labelEn:
                "Darker moths surviving better than lighter moths in a polluted, soot-covered forest",
            labelMy:
                "ညစ်ညမ်း၍ မီးခိုးမှုန့်ဖုံးသော တောထဲတွင် အနက်ရောင်ခြင်္သေ့များ အဖြူရောင်ခြင်္သေ့များထက် ပို၍ ရှင်သန်ကျန်ရစ်ခြင်း",
            correctBucketEn: "Natural Selection",
            correctBucketMy: "Natural Selection",
          ),
          SortingItem(
            id: "igcsebio-w31-sort-2",
            labelEn:
                "A farmer choosing only the highest-yielding wheat plants to breed each season",
            labelMy:
                "လယ်သမားတစ်ဦးက ရာသီတိုင်း အထွက်နှုန်းအမြင့်ဆုံး ဂျုံပင်များကိုသာ မွေးမြူရန် ရွေးချယ်ခြင်း",
            correctBucketEn: "Selective Breeding",
            correctBucketMy: "Selective Breeding",
          ),
          SortingItem(
            id: "igcsebio-w31-sort-3",
            labelEn:
                "A dog breeder mating only dogs with a specific coat colour over many generations",
            labelMy:
                "ခွေးမွေးမြူသူတစ်ဦးက မျိုးဆက်များစွာအတွင်း အထူးရှားကျယ် အင်္ကျီအရောင်ရှိသော ခွေးများကိုသာ တွဲချိတ်ပေးခြင်း",
            correctBucketEn: "Selective Breeding",
            correctBucketMy: "Selective Breeding",
          ),
          SortingItem(
            id: "igcsebio-w31-sort-4",
            labelEn:
                "Bacteria resistant to an antibiotic surviving and reproducing while non-resistant bacteria die",
            labelMy:
                "Antibiotic ကို ခံနိုင်ရည်ရှိသော ဘက်တီးရီးယားများ ရှင်သန်မျိုးပွားနေစဉ် ခံနိုင်ရည် မရှိသော ဘက်တီးရီးယားများ သေဆုံးခြင်း",
            correctBucketEn: "Natural Selection",
            correctBucketMy: "Natural Selection",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w31-d4",
      dayNumber: 4,
      titleEn: "Reading: Naturalist Ko Aung's Moth Collection",
      titleMy: "စာဖတ်ခြင်း - သဘာဝပညာရှင် ကိုအောင်၏ ခြင်္သေ့ စုစည်းမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Naturalist Ko Aung's Moth Collection",
        titleMy: "သဘာဝပညာရှင် ကိုအောင်၏ ခြင်္သေ့ စုစည်းမှု",
        passageEn:
            "Ko Aung, a local naturalist, showed a visiting Biology class his collection of preserved peppered moths, a species famous in the history of evolutionary biology, and used it to explain natural selection using real historical data rather than an abstract example. Before the 1800s, he explained, the vast majority of peppered moths in England had light-coloured, speckled wings, since this colouring camouflaged them well against the pale lichen covering tree bark, making it hard for birds to spot and eat them. A much rarer dark-coloured variety existed too, caused by a naturally occurring allele, but dark moths were easily spotted and eaten against the light bark, so they remained uncommon.\n\nDuring the Industrial Revolution, heavy air pollution from factories killed the pale lichen on tree bark across many industrial areas and coated the bark itself in dark soot. Ko Aung explained that this environmental change flipped the survival advantage completely: light-coloured moths, once well camouflaged, now stood out sharply against the blackened bark and were caught by birds far more often, while dark-coloured moths, once conspicuous, now blended in and survived to reproduce at a much higher rate. Within just a few decades, the dark allele had become common in polluted industrial areas, while the light allele remained dominant in unpolluted rural areas where the pale lichen still survived.\n\nA student asked whether the moths had somehow 'decided' to change colour to survive. Ko Aung corrected this common misunderstanding directly: no individual moth changed colour during its own lifetime, and moths did not choose their colouring. Instead, natural selection acted on variation that already existed in the population -- the dark allele had always been present at low frequency, and pollution simply changed which existing variant had a survival advantage, allowing moths that already carried it to survive and reproduce more successfully than those that didn't, gradually shifting the population's overall colouring across generations.",
        passageMy:
            "ဒေသခံ သဘာဝပညာရှင် ကိုအောင်သည် ဇီဝဗေဒအတန်းလာရောက်သူများအား ၎င်း၏ ထိန်းသိမ်းထားသော ခြင်္သေ့စုစည်းမှုကို ပြသခဲ့ပြီး၊ Evolutionary Biology သမိုင်းတွင် ထင်ရှားသော မျိုးစိတ်တစ်ခုအား Natural Selection ကို စိတ်ကူးယဉ်ဥပမာအစား တကယ့် သမိုင်းဆိုင်ရာ ဒေတာဖြင့် ရှင်းပြရန် အသုံးချခဲ့သည်။ ၁၈၀၀ ခုနှစ်များ မတိုင်မီက အင်္ဂလန်ရှိ ခြင်္သေ့အများစုသည် အဖြူရောင်၊ အစက်ကွက်ကွက် အတောင်ပံများ ရှိကြောင်း၊ ၎င်းသည် သစ်ခေါက်ပေါ်ရှိ ဖျော့ဖျော့ Lichen ကို ကာမူထားနိုင်၍ ငှက်များ ရှာဖွေတွေ့ရှိစားသောက်ရန် ခက်ခဲစေကြောင်း သူ ရှင်းပြခဲ့သည်။ သဘာဝအလျောက် ဖြစ်ပေါ်သော Allele တစ်ခုကြောင့် အလွန်ရှားပါးသော အနက်ရောင် မျိုးကွဲလည်း ရှိခဲ့သော်လည်း အနက်ရောင်ခြင်္သေ့များသည် ဖျော့သော သစ်ခေါက်ပေါ်တွင် လွယ်ကူစွာ တွေ့ရှိစားသောက်ခံရသဖြင့် ရှားပါးဆဲ ဖြစ်ခဲ့သည်။\n\nစက်မှုတော်လှန်ရေးကာလအတွင်း စက်ရုံများမှ လေထုညစ်ညမ်းမှုပြင်းထန်စွာက စက်မှုနယ်မြေများစွာတစ်လျှောက် သစ်ခေါက်ပေါ်ရှိ ဖျော့သော Lichen ကို သတ်ဖြတ်ခဲ့ပြီး သစ်ခေါက်ကိုယ်တိုင်ကိုလည်း အနက်ရောင် မီးခိုးမှုန့်ဖုံးစေခဲ့သည်။ ဤပတ်ဝန်းကျင် ပြောင်းလဲမှုက ရှင်သန်နိုင်စွမ်း အားသာချက်ကို လုံးဝ ပြောင်းပြန်လှန်ပစ်ခဲ့ကြောင်း ကိုအောင် ရှင်းပြခဲ့သည်- တစ်ချိန်ကတည်းက ကောင်းစွာ ကာမူထားနိုင်ခဲ့သော အဖြူရောင်ခြင်္သေ့များသည် ယခုအခါ မည်းနက်နေသော သစ်ခေါက်နှင့် ထိပ်တိုက်ရင်ဆိုင်နေရပြီး ငှက်များအား ပို၍များစွာ ဖမ်းစားခံရသော်လည်း၊ တစ်ချိန်ကတည်းက အထင်ကြားခဲ့သော အနက်ရောင်ခြင်္သေ့များသည် ယခုအခါ ရောနှောနေကာ ပို၍ မြင့်မားသော နှုန်းဖြင့် ရှင်သန်မျိုးပွားနိုင်ခဲ့သည်။ ဆယ်စုနှစ်အနည်းငယ်အတွင်း အနက်ရောင် Allele သည် ညစ်ညမ်းသော စက်မှုနယ်မြေများတွင် ပုံမှန်ဖြစ်လာခဲ့ပြီး၊ ဖျော့သော Lichen ဆက်လက်ရှင်သန်ဆဲရှိသော ညစ်ညမ်းမှု မရှိသော ကျေးလက်နယ်မြေများတွင်မူ အဖြူရောင် Allele Dominant ဆက်လက် ဖြစ်နေသည်။\n\nခြင်္သေ့များသည် ရှင်သန်ရန် အရောင်ပြောင်းရန် တစ်နည်းနည်းဖြင့် 'ဆုံးဖြတ်' ခဲ့ကြသလားဟု ကျောင်းသားတစ်ဦးက မေးမြန်းခဲ့သည်။ ကိုအောင်က ဤအများသုံး အထင်မှားမှုကို တိုက်ရိုက် ပြင်ဆင်ပေးခဲ့သည်- ခြင်္သေ့တစ်ကောင်ချင်းစီသည် ၎င်း၏ ကိုယ်ပိုင် သက်တမ်းအတွင်း အရောင် လုံးဝ မပြောင်းလဲခဲ့ဘဲ၊ ခြင်္သေ့များက ၎င်းတို့၏ အရောင်ကို လုံးဝ ရွေးချယ်ခဲ့ခြင်း မဟုတ်ပါ။ ယင်းအစား Natural Selection သည် လူဦးရေထဲတွင် ရှင်နေပြီးသား Variation ပေါ်တွင် လုပ်ဆောင်ခဲ့ခြင်း ဖြစ်သည် -- အနက်ရောင် Allele သည် အမြဲပင် သိပ်သည်းဆနိမ့်စွာ ရှိနေခဲ့ပြီး လေထုညစ်ညမ်းမှုသည် ရှိနေပြီးသား မျိုးကွဲအမျိုးမျိုးတွင် မည်သည့်တစ်ခု ရှင်သန်နိုင်စွမ်း အားသာချက် ရှိကြောင်းကိုသာ ပြောင်းလဲပေးခဲ့ပြီး၊ ထို Allele ကို ရှိနှင့်ပြီးသား ခြင်္သေ့များကို ၎င်း မပါဝင်သော ခြင်္သေ့များထက် ပို၍ အောင်မြင်စွာ ရှင်သန်ကာ မျိုးပွားစေကာ မျိုးဆက်များတစ်လျှောက် လူဦးရေ၏ စုစုပေါင်း အရောင်ကို တဖြည်းဖြည်း ပြောင်းလဲပေးခဲ့ခြင်း ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, why were light-coloured moths well camouflaged before the 1800s?",
            questionMy:
                "၁၈၀၀ ခုနှစ်များ မတိုင်မီက အဖြူရောင်ခြင်္သေ့များ ကောင်းစွာ ကာမူထားနိုင်ခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Their colour matched the pale lichen covering tree bark",
              "They were faster fliers than dark moths",
              "Birds could not see any colour at all",
              "They lived only at night",
            ],
            optionsMy: [
              "၎င်းတို့၏ အရောင်သည် သစ်ခေါက်ပေါ်ရှိ ဖျော့သော Lichen နှင့် ကိုက်ညီသောကြောင့်",
              "အနက်ရောင်ခြင်္သေ့များထက် ပို၍ မြန်ဆန်စွာ ပျံသန်းနိုင်သောကြောင့်",
              "ငှက်များသည် အရောင် မည်သို့မျှ လုံးဝ မမြင်နိုင်သောကြောင့်",
              "ညအချိန်တွင်သာ နေထိုင်ကြသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the camouflage advantage before industrialisation.",
              "Matching colouring against the background makes it harder for predators to spot prey.",
            ],
            hintsMy: [
              "စက်မှုတော်လှန်ရေးမတိုင်မီ ကာမူမှုအားသာချက်ကို ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "နောက်ခံနှင့် တူညီသော အရောင်သည် ခြင်္သေ့ကို အမဲစားတိရစ္ဆာန်များ ရှာဖွေတွေ့ရှိရန် ခက်ခဲစေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what happened to the survival advantage after industrial pollution darkened the tree bark?",
            questionMy:
                "စက်မှုညစ်ညမ်းမှုက သစ်ခေါက်ကို မည်းနက်စေပြီးနောက် ရှင်သန်နိုင်စွမ်းအားသာချက် အဘယ်ဖြစ်ခဲ့ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It flipped completely -- dark moths now had the advantage, and light moths were more easily caught",
              "Nothing changed at all",
              "Both light and dark moths were caught equally",
              "All moths became the same colour immediately",
            ],
            optionsMy: [
              "လုံးဝ ပြောင်းပြန်လှန်ခဲ့သည် -- အနက်ရောင်ခြင်္သေ့များ အားသာချက်ရရှိပြီး အဖြူရောင်များ ပို၍ လွယ်ကူစွာ ဖမ်းစားခံရ",
              "မည်သည့်အရာမျှ လုံးဝ မပြောင်းလဲခြင်း",
              "အဖြူရောင်နှင့် အနက်ရောင် ခြင်္သေ့များ အညီအမျှ ဖမ်းစားခံရခြင်း",
              "ခြင်္သေ့အားလုံး ချက်ချင်း အရောင်တူညီသွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing how the environmental change 'flipped the survival advantage completely'.",
              "Dark moths now blended in; light moths now stood out.",
            ],
            hintsMy: [
              "ပတ်ဝန်းကျင် ပြောင်းလဲမှုက ရှင်သန်နိုင်စွမ်းအားသာချက်ကို 'လုံးဝ ပြောင်းပြန်လှန်' ခဲ့ကြောင်း ဖော်ပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "အနက်ရောင်ခြင်္သေ့များ ယခုအခါ ရောနှောနေပြီး အဖြူရောင်များ ယခုအခါ ထင်ရှားနေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, did individual moths change colour during their own lifetime?",
            questionMy:
                "ခြင်္သေ့တစ်ကောင်ချင်းစီသည် ၎င်း၏ ကိုယ်ပိုင်သက်တမ်းအတွင်း အရောင် ပြောင်းလဲခဲ့သလား ကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "No -- natural selection acted on variation that already existed in the population",
              "Yes -- every moth actively changed its own colour",
              "Yes, but only moths born on a Tuesday",
              "The passage does not address this question",
            ],
            optionsMy: [
              "မပြောင်းလဲခဲ့ပါ -- Natural Selection သည် လူဦးရေထဲတွင် ရှိနေပြီးသား Variation ပေါ်တွင် လုပ်ဆောင်ခဲ့ခြင်း ဖြစ်သည်",
              "ပြောင်းလဲခဲ့သည် -- ခြင်္သေ့တိုင်းသည် ၎င်း၏ ကိုယ်ပိုင်အရောင်ကို တက်ကြွစွာ ပြောင်းလဲခဲ့သည်",
              "ပြောင်းလဲခဲ့သော်လည်း အင်္ဂါနေ့တွင် မွေးဖွားသော ခြင်္သေ့များသာ",
              "စာပိုဒ်က ဤမေးခွန်းကို လုံးဝ မဖြေဆိုထားပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread Ko Aung's direct correction of the student's misunderstanding.",
              "No individual moth changed colour -- the population's overall colouring shifted across generations.",
            ],
            hintsMy: [
              "ကျောင်းသား၏ အထင်မှားမှုကို ကိုအောင် တိုက်ရိုက် ပြင်ဆင်ပေးသော အပိုင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ခြင်္သေ့တစ်ကောင်ချင်းစီ အရောင် မပြောင်းလဲခဲ့ပါ -- လူဦးရေ၏ စုစုပေါင်းအရောင်သာ မျိုးဆက်များတစ်လျှောက် ပြောင်းလဲခဲ့ခြင်း ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, where did the dark allele come from in the first place?",
            questionMy:
                "အနက်ရောင် Allele သည် မူလ မည်သည့်နေရာမှ ဖြစ်ပေါ်လာကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It had always been present at low frequency in the population, even before pollution",
              "Pollution created the allele instantly from nothing",
              "It was introduced by a different moth species",
              "Birds created the allele by eating moths",
            ],
            optionsMy: [
              "လေထုညစ်ညမ်းမှု မတိုင်မီကတည်းက လူဦးရေထဲတွင် သိပ်သည်းဆနိမ့်စွာ အမြဲရှိနေခဲ့ခြင်း",
              "ညစ်ညမ်းမှုက Allele ကို ဘာမှမရှိရာမှ ချက်ချင်း ဖန်တီးခဲ့ခြင်း",
              "မတူညီသော ခြင်္သေ့မျိုးစိတ်တစ်ခုက ယူဆောင်လာခဲ့ခြင်း",
              "ငှက်များက ခြင်္သေ့များကို စားသောက်ခြင်းဖြင့် Allele ကို ဖန်တီးခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about the dark allele's frequency before pollution changed anything.",
              "Pollution changed which existing variant had an advantage -- it did not create new variation.",
            ],
            hintsMy: [
              "ညစ်ညမ်းမှုက မည်သည်ကိုမျှ မပြောင်းလဲမီ အနက်ရောင် Allele ၏ သိပ်သည်းဆအကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ညစ်ညမ်းမှုက ရှိနေပြီးသား မျိုးကွဲများအနက် မည်သည့်တစ်ခု အားသာချက်ရှိကြောင်းသာ ပြောင်းလဲပေးခဲ့ပြီး Variation အသစ် ဖန်တီးခြင်း မဟုတ်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w31-d5",
      dayNumber: 5,
      titleEn: "Week 31 Recap: Variation and Selection",
      titleMy: "သုံးဆယ့်တစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - Variation နှင့် Selection",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which type of variation is usually controlled by genes alone, with distinct categories?",
          questionMy:
              "မည်သည့်အမျိုးအစား Variation ကို ပုံမှန်အားဖြင့် Gene များတစ်ခုတည်းက ထိန်းချုပ်ပြီး တိကျသော အုပ်စုများ ရှိသနည်း",
          optionsEn: [
            "Discontinuous variation",
            "Continuous variation",
            "Environmental variation only",
            "No variation at all",
          ],
          optionsMy: [
            "Discontinuous Variation",
            "Continuous Variation",
            "ပတ်ဝန်းကျင်ဆိုင်ရာ Variation သာ",
            "Variation လုံးဝ မရှိခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In natural selection, organisms with advantageous variations tend to...",
          questionMy:
              "Natural Selection တွင် အားသာချက်ရှိသော Variation ပါရှိသော သက်ရှိများသည်...",
          optionsEn: [
            "Survive and reproduce more successfully",
            "Always die out quickly",
            "Never pass on their genes",
            "Change colour instantly by choice",
          ],
          optionsMy: [
            "ပို၍ အောင်မြင်စွာ ရှင်သန်ကာ မျိုးပွားလေ့ရှိသည်",
            "အမြဲ လျင်မြန်စွာ သုဉ်းသွားလေ့ရှိသည်",
            "၎င်းတို့၏ Gene များကို ဘယ်တော့မှ မဆက်ခံစေပါ",
            "ရွေးချယ်မှုဖြင့် အရောင် ချက်ချင်း ပြောင်းလဲသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Selective breeding differs from natural selection because...",
          questionMy:
              "Selective Breeding သည် Natural Selection နှင့် ကွဲပြားသည့်အကြောင်းရင်းမှာ...",
          optionsEn: [
            "Humans deliberately choose which organisms breed, rather than the environment doing so naturally",
            "It never actually changes any characteristics",
            "It only happens to bacteria",
            "It happens instantly within one generation",
          ],
          optionsMy: [
            "ပတ်ဝန်းကျင်က သဘာဝအတိုင်း လုပ်ဆောင်မည့်အစား လူသားများက မည်သည့်သက်ရှိများ မွေးမြူရမည်ကို တမင်တကာ ရွေးချယ်ခြင်း",
            "မည်သည့်လက္ခဏာကိုမျှ အမှန်တကယ် ဘယ်တော့မှ မပြောင်းလဲစေခြင်း",
            "ဘက်တီးရီးယားများတွင်သာ ဖြစ်ပွားခြင်း",
            "မျိုးဆက်တစ်ခုတည်းအတွင်း ချက်ချင်း ဖြစ်ပေါ်ခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 32 (Capstone): "Genetics Problem-Solving Studio"
// =====================================================================

const CourseWeekDef _igcseBioWeek32 = CourseWeekDef(
  id: "course-igcse-bio-w32",
  weekNumber: 32,
  titleEn: "Genetics Problem-Solving Studio",
  titleMy: "မျိုးရိုးဗီဇ ပြဿနာဖြေရှင်းခြင်း အလုပ်ရုံ",
  xpReward: 20,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w32-d1",
      dayNumber: 1,
      titleEn: "Test Crosses and Pedigree Charts",
      titleMy: "Test Cross များနှင့် Pedigree Chart များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A tall pea plant of unknown genotype could be TT or Tt. What cross would reveal which it is?",
          questionMy:
              "Genotype မသိသေးသော အရပ်ရှည်ပဲပင်တစ်ပင်သည် TT သို့မဟုတ် Tt ဖြစ်နိုင်သည်။ မည်သည့် Cross က ၎င်းသည် အဘယ်နည်းဖြစ်ကြောင်း ဖော်ထုတ်ပေးမည်နည်း။",
          optionsEn: [
            "A test cross with a homozygous recessive (tt) plant",
            "A cross with another unknown tall plant",
            "Simply looking at the plant's leaves",
            "There is no way to find out",
          ],
          optionsMy: [
            "Homozygous Recessive (tt) ပင်တစ်ပင်နှင့် Test Cross ပြုလုပ်ခြင်း",
            "မသိသေးသော အခြားအရပ်ရှည်ပင်တစ်ပင်နှင့် Cross ပြုလုပ်ခြင်း",
            "အပင်၏ အရွက်များကိုသာ ကြည့်ခြင်း",
            "ဖော်ထုတ်ရန် နည်းလမ်း မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "If the unknown plant is TT, all offspring will be tall. If it is Tt, about half the offspring will be short.",
            "Crossing with tt reveals any hidden recessive allele, since tt can only contribute a t.",
          ],
          hintsMy: [
            "မသိသေးသော အပင်သည် TT ဖြစ်ပါက မျိုးဆက်အားလုံး အရပ်ရှည်ကြမည်ဖြစ်ပြီး Tt ဖြစ်ပါက မျိုးဆက်ထက်ဝက်ခန့် အရပ်တိုကြမည်ဖြစ်သည်။",
            "tt နှင့် Cross ပြုလုပ်ခြင်းက ဝှက်ထားသော Recessive Allele ကို ဖော်ထုတ်ပေးသည်၊ အကြောင်းမှာ tt သည် t ကိုသာ ပံ့ပိုးနိုင်သောကြောင့်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a pedigree chart, what does a filled (shaded) symbol usually represent?",
          questionMy:
              "Pedigree Chart တစ်ခုတွင် အရောင်ဖြည့်ထားသော (မှောင်ထားသော) သင်္ကေတသည် ပုံမှန်အားဖြင့် အဘယ်ကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "An individual who shows the characteristic or condition being studied",
            "An individual who is definitely male",
            "An individual who has passed away",
            "An individual with no genetic information at all",
          ],
          optionsMy: [
            "လေ့လာနေသော လက္ခဏာ သို့မဟုတ် အခြေအနေကို ပြသနေသော လူတစ်ဦး",
            "အမျိုးသား ဖြစ်ကြောင်း သေချာသော လူတစ်ဦး",
            "ကွယ်လွန်သွားသော လူတစ်ဦး",
            "Genetic အချက်အလက် လုံးဝ မရှိသော လူတစ်ဦး",
          ],
          correctIndex: 0,
          hintsEn: [
            "Squares usually represent males and circles represent females; shading indicates the trait being tracked.",
            "By tracing which family members are shaded across generations, you can work out how a trait is inherited.",
          ],
          hintsMy: [
            "လေးထောင့်ကွက်များက ပုံမှန်အားဖြင့် အမျိုးသားများကို၊ စက်ဝိုင်းများက အမျိုးသမီးများကို ကိုယ်စားပြုပြီး မှောင်ထားခြင်းက ခြေရာခံနေသော လက္ခဏာကို ညွှန်ပြသည်။",
            "မျိုးဆက်များတစ်လျှောက် မိသားစုဝင် မည်သူများ မှောင်ထားကြောင်း ခြေရာခံခြင်းဖြင့် လက္ခဏာတစ်ခု မည်သို့ မျိုးရိုးလိုက်ကြောင်း ရှာဖွေတွက်ချက်နိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a pedigree chart, if two unaffected parents have a child who shows a recessive condition, what does this tell you about the parents?",
          questionMy:
              "Pedigree Chart တစ်ခုတွင် မထိခိုက်သော မိဘနှစ်ဦးတွင် Recessive အခြေအနေရှိသော ကလေးတစ်ဦး ရှိပါက ၎င်းက မိဘများအကြောင်း အဘယ်ကို ဖော်ပြသနည်း။",
          optionsEn: [
            "Both parents must be carriers (heterozygous) of the recessive allele",
            "Neither parent carries the recessive allele at all",
            "One parent must be affected too",
            "This situation is genetically impossible",
          ],
          optionsMy: [
            "မိဘနှစ်ဦးစလုံးသည် Recessive Allele ၏ Carrier (Heterozygous) ဖြစ်ရမည်",
            "မိဘတစ်ဦးမျှ Recessive Allele ကို လုံးဝ မသယ်ဆောင်ပါ",
            "မိဘတစ်ဦးလည်း ထိခိုက်ရမည်",
            "ဤအခြေအနေသည် Genetically မဖြစ်နိုင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "For a recessive condition to appear, the child must inherit two recessive alleles, one from each parent.",
            "Since neither parent shows the condition, each must be a carrier with one dominant and one recessive allele.",
          ],
          hintsMy: [
            "Recessive အခြေအနေတစ်ခု ပေါ်ထွက်ရန် ကလေးသည် မိဘတစ်ဦးစီမှ Recessive Allele တစ်ခုစီ ဆက်ခံရရှိရမည်။",
            "မိဘနှစ်ဦးစလုံး ထိုအခြေအနေကို မပြသောကြောင့် တစ်ဦးစီသည် Dominant တစ်ခုနှင့် Recessive တစ်ခု ပါဝင်သော Carrier ဖြစ်ရမည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w32-d2",
      dayNumber: 2,
      titleEn: "Match: Term 8 Key Terms",
      titleMy: "တွဲစပ်ကြမည် - အဌမနှစ်ဝက် သော့ချက်စကားလုံးများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w32-dm-1",
          termEn: "Test cross",
          termMy: "Test Cross",
          matchEn:
              "Crossing an organism of unknown genotype with a homozygous recessive individual to reveal hidden alleles",
          matchMy:
              "ဝှက်ထားသော Allele များ ဖော်ထုတ်ရန် Genotype မသိသေးသော သက်ရှိတစ်ခုကို Homozygous Recessive တစ်ဦးနှင့် Cross ပြုလုပ်ခြင်း",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w32-dm-2",
          termEn: "Pedigree chart",
          termMy: "Pedigree Chart",
          matchEn:
              "A diagram tracing how a characteristic is inherited through a family across generations",
          matchMy:
              "မိသားစုတစ်ခုအတွင်း မျိုးဆက်များတစ်လျှောက် လက္ခဏာတစ်ခု မည်သို့ မျိုးရိုးလိုက်ကြောင်း ခြေရာခံသော ပုံကြမ်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w32-dm-3",
          termEn: "Carrier",
          termMy: "Carrier",
          matchEn:
              "An individual who is heterozygous for a recessive allele, not showing the condition but able to pass it on",
          matchMy:
              "ထိုအခြေအနေကို မပြသော်လည်း ၎င်းကို ဆက်ခံနိုင်သော Recessive Allele အတွက် Heterozygous ဖြစ်သူ",
          colorValue: 0xFF9C27B0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w32-d3",
      dayNumber: 3,
      titleEn: "Sort: Reproduction, Genetics, or Selection Topic?",
      titleMy:
          "စီစစ်ကြမည် - Reproduction, Genetics, သို့မဟုတ် Selection ဆိုင်ရာ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Reproduction Topic", "Genetics Topic", "Selection Topic"],
        bucketsMy: [
          "Reproduction ဆိုင်ရာ",
          "Genetics ဆိုင်ရာ",
          "Selection ဆိုင်ရာ",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w32-sort-1",
            labelEn: "Explaining how pollen reaches the stigma of a flower",
            labelMy:
                "Pollen သည် ပန်းတစ်ပွင့်၏ Stigma ဆီသို့ မည်သို့ ရောက်ရှိကြောင်း ရှင်းပြခြင်း",
            correctBucketEn: "Reproduction Topic",
            correctBucketMy: "Reproduction ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsebio-w32-sort-2",
            labelEn: "Using a Punnett square to predict offspring ratios",
            labelMy:
                "မျိုးဆက် အချိုးများ ခန့်မှန်းရန် Punnett Square သုံးခြင်း",
            correctBucketEn: "Genetics Topic",
            correctBucketMy: "Genetics ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsebio-w32-sort-3",
            labelEn:
                "Explaining why dark moths became more common in polluted areas",
            labelMy:
                "ညစ်ညမ်းသော နယ်မြေများတွင် အနက်ရောင်ခြင်္သေ့များ အဘယ်ကြောင့် ပို၍ ပုံမှန်ဖြစ်လာကြောင်း ရှင်းပြခြင်း",
            correctBucketEn: "Selection Topic",
            correctBucketMy: "Selection ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsebio-w32-sort-4",
            labelEn: "Comparing mitosis and meiosis",
            labelMy: "Mitosis နှင့် Meiosis ကို နှိုင်းယှဉ်ခြင်း",
            correctBucketEn: "Genetics Topic",
            correctBucketMy: "Genetics ဆိုင်ရာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w32-d4",
      dayNumber: 4,
      titleEn: "Reading: Counselor Daw Yamin's Family Tree",
      titleMy:
          "စာဖတ်ခြင်း - တိုင်ပင်ဆွေးနွေးရေးမှူး ဒေါ်ရာမင်း၏ မိသားစုအတွင်းသား",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Counselor Daw Yamin's Family Tree",
        titleMy: "တိုင်ပင်ဆွေးနွေးရေးမှူး ဒေါ်ရာမင်း၏ မိသားစုအတွင်းသား",
        passageEn:
            "Daw Yamin, a genetic counselor, visited a Biology class to demonstrate how a real pedigree chart could reveal patterns of inheritance, using an anonymised case study about a rare recessive condition. She drew squares for the males and circles for the females across three generations of one family, shading in every individual known to have the condition and leaving unaffected individuals unshaded, then asked the class to work out how the condition was likely being inherited.\n\nIn the first generation, neither grandparent showed the condition. In the second generation, one of their four children was affected, while the other three were not. In the third generation, that affected individual's own children were unaffected, but two unaffected individuals from elsewhere in the family had a child together who was affected. Daw Yamin asked the class what this pattern suggested about the parents in each affected case.\n\nA student worked through the logic correctly: since two unaffected grandparents produced an affected child, both grandparents had to be carriers -- each heterozygous for the recessive allele without showing the condition themselves. Similarly, in the third generation, two unaffected parents producing an affected child meant both of them had to be carriers too. Daw Yamin confirmed this reasoning and explained that this pattern -- the condition skipping generations and appearing unpredictably when two unaffected carriers happen to have children together -- is the classic signature of a recessive condition, distinctly different from a dominant condition, which would typically appear in every generation since only one copy of a dominant allele is needed for it to show.",
        passageMy:
            "မျိုးရိုးဗီဇ တိုင်ပင်ဆွေးနွေးရေးမှူး ဒေါ်ရာမင်းသည် တကယ့် Pedigree Chart တစ်ခုက မျိုးရိုးလိုက်ခြင်း ပုံစံများကို မည်သို့ ဖော်ထုတ်ပေးနိုင်ကြောင်း သရုပ်ပြရန် ဇီဝဗေဒအတန်းသို့ လာရောက်ခဲ့ပြီး၊ ရှားပါးသော Recessive အခြေအနေတစ်ခုအကြောင်း အမည်မဖော်ထားသော Case Study တစ်ခုကို အသုံးပြုခဲ့သည်။ သူမသည် မိသားစုတစ်ခု၏ မျိုးဆက်သုံးဆက်တစ်လျှောက် အမျိုးသားများအတွက် လေးထောင့်ကွက်များနှင့် အမျိုးသမီးများအတွက် စက်ဝိုင်းများကို ဆွဲခဲ့ပြီး၊ ထိုအခြေအနေရှိကြောင်း သိရှိထားသော လူတစ်ဦးချင်းစီကို မှောင်ကျက်ကာ မထိခိုက်သောသူများကို အရောင်မဖြည့်ဘဲ ထားခဲ့သည်၊ ထို့နောက် ထိုအခြေအနေသည် အဘယ်သို့ မျိုးရိုးလိုက်နေနိုင်ကြောင်း တွက်ချက်ရန် အတန်းကို တောင်းဆိုခဲ့သည်။\n\nပထမမျိုးဆက်တွင် အဘွား/အဘိုး နှစ်ဦးစလုံး ထိုအခြေအနေကို မပြသခဲ့ပါ။ ဒုတိယမျိုးဆက်တွင် ၎င်းတို့၏ သားသမီးလေးဦးအနက် တစ်ဦးသည် ထိခိုက်ခဲ့ပြီး ကျန်သုံးဦးမူ မထိခိုက်ခဲ့ပါ။ တတိယမျိုးဆက်တွင် ထိုထိခိုက်ခဲ့သူ၏ ကိုယ်ပိုင် သားသမီးများ မထိခိုက်ခဲ့သော်လည်း၊ မိသားစု၏ အခြားတစ်နေရာမှ မထိခိုက်သော လူနှစ်ဦးတွင် အတူတကွ ထိခိုက်သော ကလေးတစ်ဦး ရရှိခဲ့သည်။ ဤပုံစံသည် ထိခိုက်သော ကိစ္စတစ်ခုစီရှိ မိဘများအကြောင်း အဘယ်ကို အကြံပြုကြောင်းကို ဒေါ်ရာမင်းက အတန်းအား မေးမြန်းခဲ့သည်။\n\nကျောင်းသားတစ်ဦးက ယုတ္တိကို မှန်ကန်စွာ တွက်ချက်ခဲ့သည်- မထိခိုက်သော အဘွား/အဘိုးနှစ်ဦးက ထိခိုက်သော ကလေးတစ်ဦးကို ထုတ်လုပ်ခဲ့သောကြောင့် အဘွား/အဘိုးနှစ်ဦးစလုံးသည် Carrier ဖြစ်ရမည် -- တစ်ဦးစီသည် ၎င်းတို့ကိုယ်တိုင် ထိုအခြေအနေကို မပြသဘဲ Recessive Allele အတွက် Heterozygous ဖြစ်ရမည်။ အလားတူပင် တတိယမျိုးဆက်တွင် မထိခိုက်သော မိဘနှစ်ဦးက ထိခိုက်သော ကလေးတစ်ဦး ထုတ်လုပ်ခဲ့ခြင်းက ၎င်းတို့နှစ်ဦးစလုံးသည်လည်း Carrier ဖြစ်ရမည်ဟု ဆိုလိုသည်။ ဒေါ်ရာမင်းက ဤယုတ္တိကို အတည်ပြုပေးခဲ့ပြီး ဤပုံစံ -- မျိုးဆက်များ ကျော်၍ ဖြစ်ပေါ်ကာ မထိခိုက်သော Carrier နှစ်ဦး အတူတကွ ကလေးရှိသောအခါ ခန့်မှန်း၍ မရဘဲ ပေါ်ထွက်လာခြင်း -- သည် Dominant Allele တစ်ခုတည်း ရှိလျှင်ပင် ပေါ်ထွက်ရန် လိုအပ်သောကြောင့် ပုံမှန်အားဖြင့် မျိုးဆက်တိုင်းတွင် ပေါ်ထွက်တတ်သော Dominant အခြေအနေတစ်ခုနှင့် ကွဲပြားစွာ Recessive အခြေအနေတစ်ခု၏ Classic လက္ခဏာဖြစ်ကြောင်း ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did both grandparents have to be carriers?",
            questionMy:
                "အဘွား/အဘိုးနှစ်ဦးစလုံး Carrier ဖြစ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Two unaffected individuals produced an affected child, so both must carry the recessive allele",
              "One grandparent was actually affected",
              "The condition is not genetic at all",
              "Carriers always show the condition themselves",
            ],
            optionsMy: [
              "မထိခိုက်သော လူနှစ်ဦးက ထိခိုက်သော ကလေးတစ်ဦး ထုတ်လုပ်ခဲ့သောကြောင့် နှစ်ဦးစလုံးသည် Recessive Allele ကို သယ်ဆောင်ရမည်",
              "အဘွား/အဘိုး တစ်ဦးသည် အမှန်တကယ် ထိခိုက်ခဲ့ခြင်း",
              "ထိုအခြေအနေသည် Genetic လုံးဝ မဟုတ်ခြင်း",
              "Carrier များသည် ၎င်းတို့ကိုယ်တိုင် ထိုအခြေအနေကို အမြဲ ပြသခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the student's logic explaining why two unaffected parents can have an affected child.",
              "A recessive condition requires two copies of the recessive allele -- one from each parent.",
            ],
            hintsMy: [
              "မထိခိုက်သော မိဘနှစ်ဦးတွင် ထိခိုက်သော ကလေးတစ်ဦး ဘယ်လိုရနိုင်ကြောင်း ရှင်းပြသော ကျောင်းသား၏ ယုတ္တိကို ပြန်ဖတ်ကြည့်ပါ။",
              "Recessive အခြေအနေတစ်ခုသည် Recessive Allele မိတ္တူနှစ်ခု -- မိဘတစ်ဦးစီမှ တစ်ခုစီ လိုအပ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what pattern is described as the 'classic signature' of a recessive condition?",
            questionMy:
                "Recessive အခြေအနေတစ်ခု၏ 'Classic လက္ခဏာ' အဖြစ် ဖော်ပြထားသော ပုံစံကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The condition skipping generations and appearing unpredictably when two carriers have children",
              "The condition appearing in every single generation without fail",
              "The condition only affecting males",
              "The condition disappearing completely after one generation",
            ],
            optionsMy: [
              "Carrier နှစ်ဦး ကလေးရှိသောအခါ မျိုးဆက်များ ကျော်၍ ခန့်မှန်း၍ မရဘဲ ဖြစ်ပေါ်ခြင်း",
              "မျိုးဆက်တိုင်းတွင် မလွဲမသွေ ပေါ်ထွက်ခြင်း",
              "အမျိုးသားများကိုသာ ထိခိုက်ခြင်း",
              "မျိုးဆက်တစ်ခုပြီးနောက် လုံးဝ ပျောက်ကွယ်သွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence explaining the classic recessive pattern.",
              "This is contrasted directly with how a dominant condition would typically behave.",
            ],
            hintsMy: [
              "Classic Recessive ပုံစံကို ရှင်းပြသော နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်ကို Dominant အခြေအနေတစ်ခု ပုံမှန်အားဖြင့် မည်သို့ ပြုမူကြောင်းနှင့် တိုက်ရိုက် နှိုင်းယှဉ်ထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why would a dominant condition typically appear in every generation?",
            questionMy:
                "Dominant အခြေအနေတစ်ခု ပုံမှန်အားဖြင့် မျိုးဆက်တိုင်းတွင် ပေါ်ထွက်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Only one copy of a dominant allele is needed for it to show",
              "Dominant alleles are always more common in the population",
              "Dominant conditions are not genetic",
              "Two copies are always needed, just like recessive conditions",
            ],
            optionsMy: [
              "ပေါ်ထွက်ရန် Dominant Allele မိတ္တူတစ်ခုသာ လိုအပ်ခြင်း",
              "Dominant Allele များသည် လူဦးရေထဲတွင် အမြဲ ပို၍ ပုံမှန်ဖြစ်ခြင်း",
              "Dominant အခြေအနေများသည် Genetic မဟုတ်ခြင်း",
              "Recessive အခြေအနေများကဲ့သို့ မိတ္တူနှစ်ခု အမြဲ လိုအပ်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final clause of the passage explaining dominant inheritance.",
              "This is the key structural difference between dominant and recessive inheritance patterns.",
            ],
            hintsMy: [
              "Dominant မျိုးရိုးလိုက်ခြင်းကို ရှင်းပြသော စာပိုဒ်၏ နောက်ဆုံးအပိုင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ Dominant နှင့် Recessive မျိုးရိုးလိုက်ခြင်း ပုံစံများကြား အဓိက ဖွဲ့စည်းပုံဆိုင်ရာ ကွာခြားချက် ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What was the purpose of Daw Yamin shading affected individuals on the pedigree chart?",
            questionMy:
                "Pedigree Chart ပေါ်တွင် ထိခိုက်သော လူများကို ဒေါ်ရာမင်း မှောင်ကျက်ခဲ့သည့် ရည်ရွယ်ချက်မှာ အဘယ်နည်း။",
            optionsEn: [
              "To visually trace how the condition passed through the family across generations",
              "To hide information from the class",
              "To make the chart look more colourful",
              "It had no real purpose",
            ],
            optionsMy: [
              "မျိုးဆက်များတစ်လျှောက် ထိုအခြေအနေ မိသားစုတစ်လျှောက် မည်သို့ ဆက်ခံခဲ့ကြောင်း ရုပ်ပိုင်းဆိုင်ရာ ခြေရာခံရန်",
              "အတန်းမှ အချက်အလက်များ ဖုံးကွယ်ရန်",
              "Chart ကို ပို၍ အရောင်စုံလင်စေရန်",
              "အမှန်တကယ် ရည်ရွယ်ချက် မရှိခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Shading is the standard pedigree chart convention for marking who shows the studied trait.",
              "This visual system lets you trace inheritance patterns across generations at a glance.",
            ],
            hintsMy: [
              "မှောင်ကျက်ခြင်းသည် လေ့လာနေသော လက္ခဏာကို ပြသသူများ အမှတ်အသားပြုရန် စံ Pedigree Chart သဘောတရားဖြစ်သည်။",
              "ဤ ရုပ်ပိုင်းဆိုင်ရာစနစ်က မျိုးဆက်များတစ်လျှောက် မျိုးရိုးလိုက်ပုံစံများကို တစ်ကြည့်တည်းဖြင့် ခြေရာခံနိုင်စေသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w32-d5",
      dayNumber: 5,
      titleEn: "Term 8 Recap: Reproduction and Genetics",
      titleMy:
          "အဌမအပိုင်း ပြန်လည်သုံးသပ်ခြင်း - မျိုးပွားခြင်းနှင့် မျိုးရိုးဗီဇ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A test cross uses which genotype to reveal hidden alleles?",
          questionMy:
              "Test Cross တစ်ခုသည် ဝှက်ထားသော Allele များ ဖော်ထုတ်ရန် မည်သည့် Genotype ကို သုံးသနည်း",
          optionsEn: [
            "Homozygous recessive (e.g. tt)",
            "Homozygous dominant (e.g. TT)",
            "Any random genotype",
            "No genotype is needed",
          ],
          optionsMy: [
            "Homozygous Recessive (ဥပမာ tt)",
            "Homozygous Dominant (ဥပမာ TT)",
            "ကျပန်း Genotype မည်သည်မဆို",
            "Genotype လုံးဝ မလိုအပ်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A condition that skips generations, appearing when two unaffected carriers have a child, is typically...",
          questionMy:
              "မထိခိုက်သော Carrier နှစ်ဦးတွင် ကလေးရှိသောအခါ ပေါ်ထွက်ကာ မျိုးဆက်များကို ကျော်သွားသော အခြေအနေတစ်ခုသည် ပုံမှန်အားဖြင့်...",
          optionsEn: [
            "Recessive",
            "Dominant",
            "Not genetic at all",
            "Caused only by diet",
          ],
          optionsMy: [
            "Recessive",
            "Dominant",
            "Genetic လုံးဝ မဟုတ်ခြင်း",
            "အစားအစာကြောင့်သာ ဖြစ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In a pedigree chart, squares and circles typically represent...",
          questionMy:
              "Pedigree Chart တစ်ခုတွင် လေးထောင့်ကွက်များနှင့် စက်ဝိုင်းများသည် ပုံမှန်အားဖြင့် ...ကို ကိုယ်စားပြုသည်",
          optionsEn: [
            "Males and females",
            "Dominant and recessive alleles",
            "Tall and short plants",
            "Living and extinct species",
          ],
          optionsMy: [
            "အမျိုးသားနှင့် အမျိုးသမီးများ",
            "Dominant နှင့် Recessive Allele များ",
            "အရပ်ရှည်နှင့် အရပ်တို အပင်များ",
            "ရှင်သန်နေသောနှင့် သုဉ်းသွားပြီးသော မျိုးစိတ်များ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 8: "Reproduction and Genetics"
// (Weeks 29-32)
// =====================================================================

const CourseTermDef igcseBiologyTerm8 = CourseTermDef(
  id: "course-igcse-bio-t8",
  termNumber: 8,
  titleEn: "Reproduction and Genetics",
  titleMy: "မျိုးပွားခြင်းနှင့် မျိုးရိုးဗီဇ",
  certificateTitleEn: "Reproduction and Genetics",
  certificateTitleMy: "မျိုးပွားခြင်းနှင့် မျိုးရိုးဗီဇ",
  weeks: [_igcseBioWeek29, _igcseBioWeek30, _igcseBioWeek31, _igcseBioWeek32],
);

// =====================================================================
// Week 33: "Biotechnology and Genetic Modification"
// =====================================================================

const CourseWeekDef _igcseBioWeek33 = CourseWeekDef(
  id: "course-igcse-bio-w33",
  weekNumber: 33,
  titleEn: "Biotechnology and Genetic Modification",
  titleMy: "ဇီဝနည်းပညာနှင့် မျိုးဗီဇ ပြုပြင်ခြင်း (Genetic Modification)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w33-d1",
      dayNumber: 1,
      titleEn: "Yeast, Penicillin, and Genetic Engineering",
      titleMy: "တဆေး၊ Penicillin နှင့် Genetic Engineering",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Penicillin, an important antibiotic, is naturally produced by which type of organism?",
          questionMy:
              "အရေးကြီးသော Antibiotic တစ်ခုဖြစ်သော Penicillin ကို မည်သည့်သက်ရှိအမျိုးအစားက သဘာဝအလျောက် ထုတ်လုပ်သနည်း။",
          optionsEn: [
            "A mould (a type of fungus)",
            "A virus",
            "A green plant",
            "A bacterium",
          ],
          optionsMy: [
            "မှို (Fungus အမျိုးအစားတစ်ခု)",
            "ဗိုင်းရပ်စ်",
            "အပင်စိမ်း",
            "ဘက်တီးရီးယား",
          ],
          correctIndex: 0,
          hintsEn: [
            "This mould is grown industrially in large fermenters to mass-produce the antibiotic.",
            "Penicillium is the genus name of this mould.",
          ],
          hintsMy: [
            "ဤမှိုကို Antibiotic ကို အစုလိုက်ထုတ်လုပ်ရန် ကြီးမားသော Fermenter များတွင် စက်မှုနည်းအလျောက် စိုက်ပျိုးသည်။",
            "Penicillium သည် ဤမှို၏ မျိုးရင်းအမည် ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In genetic engineering, what is a plasmid commonly used for?",
          questionMy:
              "Genetic Engineering တွင် Plasmid ကို မည်သည့်အတွက် အများအားဖြင့် သုံးသနည်း။",
          optionsEn: [
            "As a vector to carry a useful gene into a bacterium",
            "As a source of energy for the bacterium",
            "As a type of antibiotic",
            "As a waste product to be removed",
          ],
          optionsMy: [
            "အသုံးဝင်သော Gene ကို ဘက်တီးရီးယားထဲသို့ သယ်ဆောင်ပေးသော Vector အဖြစ်",
            "ဘက်တီးရီးယားအတွက် စွမ်းအင်အရင်းအမြစ်အဖြစ်",
            "Antibiotic အမျိုးအစားတစ်ခုအဖြစ်",
            "ဖယ်ရှားရမည့် စွန့်ပစ်ပစ္စည်းအဖြစ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A plasmid is a small, circular piece of DNA found in bacteria, separate from the main chromosome.",
            "Scientists cut a useful gene (such as the human insulin gene) and insert it into a plasmid using enzymes.",
          ],
          hintsMy: [
            "Plasmid သည် ဘက်တီးရီးယားတွင် တွေ့ရှိရသော အဓိက Chromosome နှင့် သီးခြားဖြစ်သော သေးငယ်ပြီး စက်ဝိုင်းပုံသဏ္ဌာန်ရှိသော DNA အပိုင်း ဖြစ်သည်။",
            "သိပ္ပံပညာရှင်များသည် အသုံးဝင်သော Gene (လူ့ Insulin Gene ကဲ့သို့) ကို ဖြတ်၍ Enzyme များသုံး၍ Plasmid ထဲသို့ ထည့်သွင်းကြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why is genetically engineered human insulin, produced by bacteria, preferred over insulin extracted from animal pancreases?",
          questionMy:
              "ဘက်တီးရီးယားက ထုတ်လုပ်သော Genetically Engineered လူ့ Insulin ကို တိရစ္ဆာန် Pancreas မှ ထုတ်ယူသော Insulin ထက် ဘာကြောင့် ပို၍ ရွေးချယ်ကြသနည်း။",
          optionsEn: [
            "It is identical to natural human insulin, cheaper to produce at scale, and less likely to trigger an immune reaction",
            "It is more expensive but tastes better",
            "Animal insulin does not exist",
            "Bacteria cannot actually produce insulin",
          ],
          optionsMy: [
            "သဘာဝ လူ့ Insulin နှင့် အတိအကျ တူညီပြီး အစုလိုက် ထုတ်လုပ်ရန် ပို၍ ဈေးသက်သာကာ ကိုယ်ခံအားစနစ် တုံ့ပြန်မှု ဖြစ်နိုင်ချေ ပို၍ နည်းသည်",
            "ပို၍ ဈေးကြီးသော်လည်း အရသာ ပို၍ ကောင်းသည်",
            "တိရစ္ဆာန် Insulin လုံးဝ မရှိပါ",
            "ဘက်တီးရီးယားများသည် Insulin ကို အမှန်တကယ် ထုတ်လုပ်၍ မရနိုင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Since the human insulin gene itself was inserted, the protein produced is chemically identical to what a human pancreas makes.",
            "Animal-derived insulin differs slightly and can occasionally trigger immune reactions in some patients.",
          ],
          hintsMy: [
            "လူ့ Insulin Gene ကိုယ်တိုင် ထည့်သွင်းခြင်းဖြစ်သောကြောင့် ထုတ်လုပ်ထားသော ပရိုတင်းသည် လူ့ Pancreas ထုတ်လုပ်သည်နှင့် ဓာတုနည်းအားဖြင့် အတိအကျ တူညီသည်။",
            "တိရစ္ဆာန်မှ ရရှိသော Insulin သည် အနည်းငယ် ကွဲပြားပြီး လူနာအချို့တွင် တစ်ခါတစ်ရံ ကိုယ်ခံအားစနစ် တုံ့ပြန်မှု ဖြစ်စေနိုင်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w33-d2",
      dayNumber: 2,
      titleEn: "Match: Biotechnology Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ဇီဝနည်းပညာ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w33-dm-1",
          termEn: "Plasmid",
          termMy: "Plasmid",
          matchEn:
              "A small, circular piece of bacterial DNA used as a vector in genetic engineering",
          matchMy:
              "Genetic Engineering တွင် Vector အဖြစ် သုံးသော ဘက်တီးရီးယား DNA ၏ သေးငယ်ပြီး စက်ဝိုင်းပုံသဏ္ဌာန်ရှိသော အပိုင်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w33-dm-2",
          termEn: "Genetic engineering",
          termMy: "Genetic Engineering",
          matchEn:
              "The process of transferring a gene from one organism into another to give it a new characteristic",
          matchMy:
              "သက်ရှိတစ်ခုအား လက္ခဏာသစ်တစ်ခု ပေးအပ်ရန် Gene တစ်ခုကို သက်ရှိတစ်ခုမှ အခြားတစ်ခုသို့ လွှဲပြောင်းသော ဖြစ်စဉ်",
          colorValue: 0xFF2196F3,
        ),
        DragMatchPair(
          id: "igcsebio-w33-dm-3",
          termEn: "Fermenter",
          termMy: "Fermenter",
          matchEn:
              "A large industrial vessel used to grow microorganisms on a large scale under controlled conditions",
          matchMy:
              "ထိန်းချုပ်ထားသော အခြေအနေများအောက်တွင် အဏုဇီဝပိုးမွှားများကို အစုလိုက် ကြီးထွားစေရန် သုံးသော စက်မှု ခွက်ကြီး",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w33-dm-4",
          termEn: "Penicillium",
          termMy: "Penicillium",
          matchEn:
              "The mould genus that naturally produces the antibiotic penicillin",
          matchMy:
              "Antibiotic Penicillin ကို သဘာဝအလျောက် ထုတ်လုပ်ပေးသော မှို မျိုးရင်း",
          colorValue: 0xFF9C27B0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w33-d3",
      dayNumber: 3,
      titleEn: "Sort: Traditional or Modern Biotechnology?",
      titleMy: "စီစစ်ကြမည် - ရိုးရာလား ခေတ်မီဇီဝနည်းပညာလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Traditional Biotechnology (Fermentation)",
          "Modern Biotechnology (Genetic Engineering)",
        ],
        bucketsMy: [
          "ရိုးရာ ဇီဝနည်းပညာ (Fermentation)",
          "ခေတ်မီ ဇီဝနည်းပညာ (Genetic Engineering)",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w33-sort-1",
            labelEn: "Yeast fermenting sugar to make bread rise",
            labelMy:
                "ပေါင်မုန့်ဖောင်းစေရန် တဆေးက သကြားကို Ferment ပြုလုပ်ခြင်း",
            correctBucketEn: "Traditional Biotechnology (Fermentation)",
            correctBucketMy: "ရိုးရာ ဇီဝနည်းပညာ (Fermentation)",
          ),
          SortingItem(
            id: "igcsebio-w33-sort-2",
            labelEn:
                "Inserting the human insulin gene into a bacterial plasmid",
            labelMy:
                "လူ့ Insulin Gene ကို ဘက်တီးရီးယား Plasmid ထဲသို့ ထည့်သွင်းခြင်း",
            correctBucketEn: "Modern Biotechnology (Genetic Engineering)",
            correctBucketMy: "ခေတ်မီ ဇီဝနည်းပညာ (Genetic Engineering)",
          ),
          SortingItem(
            id: "igcsebio-w33-sort-3",
            labelEn: "Growing Penicillium mould to harvest penicillin",
            labelMy: "Penicillin ရိတ်သိမ်းရန် Penicillium မှို စိုက်ပျိုးခြင်း",
            correctBucketEn: "Traditional Biotechnology (Fermentation)",
            correctBucketMy: "ရိုးရာ ဇီဝနည်းပညာ (Fermentation)",
          ),
          SortingItem(
            id: "igcsebio-w33-sort-4",
            labelEn:
                "Modifying a bacterium's DNA so it produces a human protein",
            labelMy:
                "ဘက်တီးရီးယားတစ်ကောင်၏ DNA ကို လူ့ပရိုတင်း ထုတ်လုပ်စေရန် ပြုပြင်ခြင်း",
            correctBucketEn: "Modern Biotechnology (Genetic Engineering)",
            correctBucketMy: "ခေတ်မီ ဇီဝနည်းပညာ (Genetic Engineering)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w33-d4",
      dayNumber: 4,
      titleEn: "Reading: Researcher Dr. Zin's Insulin Factory",
      titleMy: "စာဖတ်ခြင်း - သုတေသီ ဒေါက်တာဇင်၏ Insulin စက်ရုံ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Researcher Dr. Zin's Insulin Factory",
        titleMy: "သုတေသီ ဒေါက်တာဇင်၏ Insulin စက်ရုံ",
        passageEn:
            "Dr. Zin, a biotechnology researcher, gave an online talk to a Biology class explaining how the insulin used by diabetic patients today, including the boy Dr. Htet Htet had described in an earlier lesson, is actually produced. Before genetic engineering became widespread, she explained, insulin was extracted directly from the pancreases of pigs and cows, a process that was expensive, required enormous numbers of animals, and occasionally caused allergic reactions since animal insulin differs slightly from human insulin.\n\nShe then described the modern process step by step. Scientists first identify and cut out the human gene responsible for producing insulin, using specific enzymes that act like molecular scissors. This gene is then inserted into a bacterial plasmid, a small circular loop of DNA, which acts as a vector to carry the gene into a bacterium such as E. coli. Once inside, the bacterium's own cellular machinery reads the inserted human gene as if it were its own, and begins producing human insulin protein -- genetically and chemically identical to the insulin a human pancreas would make.\n\nDr. Zin explained that because bacteria reproduce extremely quickly, doubling in number every twenty minutes or so under good conditions, a single successfully engineered bacterium can be grown in a large industrial fermenter into billions of insulin-producing bacteria within days, all descended from that one genetically modified cell. This approach solved multiple problems at once: it eliminated the need for animal pancreases entirely, produced insulin chemically identical to the human hormone (eliminating most allergic reactions), and could be scaled up almost indefinitely to meet growing global demand -- which is exactly why nearly all insulin used in modern medicine today is produced this way rather than extracted from animals.",
        passageMy:
            "ဇီဝနည်းပညာ သုတေသီ ဒေါက်တာဇင်သည် ယနေ့ ဆီးချိုလူနာများ (ယခင်သင်ခန်းစာတစ်ခုတွင် ဒေါက်တာထက်ထက် ဖော်ပြခဲ့သော ယောကျ်ားလေးလည်း ပါဝင်) အသုံးပြုနေသော Insulin ကို မည်သို့ အမှန်တကယ် ထုတ်လုပ်ကြောင်း ရှင်းပြသည့် Online ဟောပြောချက်တစ်ခုကို ဇီဝဗေဒအတန်းသို့ ပေးခဲ့သည်။ Genetic Engineering ကျယ်ပြန့်စွာ အသုံးမပြုမီ Insulin ကို ဝက်နှင့် နွားများ၏ Pancreas မှ တိုက်ရိုက် ထုတ်ယူခဲ့ကြောင်း၊ ဤဖြစ်စဉ်သည် ဈေးကြီးပြီး တိရစ္ဆာန်များစွာ လိုအပ်ကာ တိရစ္ဆာန် Insulin သည် လူ့ Insulin နှင့် အနည်းငယ် ကွဲပြားသောကြောင့် တစ်ခါတစ်ရံ Allergic Reaction ဖြစ်စေခဲ့ကြောင်း သူမ ရှင်းပြခဲ့သည်။\n\nထို့နောက် သူမသည် ခေတ်မီဖြစ်စဉ်ကို အဆင့်ဆင့် ဖော်ပြခဲ့သည်။ သိပ္ပံပညာရှင်များသည် Insulin ထုတ်လုပ်ရန် တာဝန်ရှိသော လူ့ Gene ကို ဦးစွာ ဖော်ထုတ်ပြီး Molecular Scissor များကဲ့သို့ လုပ်ဆောင်သော အထူး Enzyme များသုံး၍ ဖြတ်ယူသည်။ ဤ Gene ကို ထို့နောက် ဘက်တီးရီးယား Plasmid၊ DNA ၏ သေးငယ်ပြီး စက်ဝိုင်းပုံသဏ္ဌာန်ရှိသော ကွင်းတစ်ခုထဲသို့ ထည့်သွင်းပြီး ၎င်းသည် E. coli ကဲ့သို့သော ဘက်တီးရီးယားထဲသို့ Gene ကို သယ်ဆောင်ပေးသော Vector အဖြစ် လုပ်ဆောင်သည်။ အတွင်းသို့ ရောက်ရှိပြီးနောက် ဘက်တီးရီးယား၏ ကိုယ်ပိုင် ဆဲလ်ယန္တရားသည် ထည့်သွင်းထားသော လူ့ Gene ကို ၎င်း၏ ကိုယ်ပိုင်ဟု ယူဆကာ လူ့ Insulin ပရိုတင်းကို ထုတ်လုပ်စတင်သည် -- လူ့ Pancreas ထုတ်လုပ်မည့် Insulin နှင့် Genetically နှင့် ဓာတုနည်းအားဖြင့် အတိအကျ တူညီသည်။\n\nဘက်တီးရီးယားများသည် အလွန်လျင်မြန်စွာ မျိုးပွားသဖြင့်၊ အခြေအနေကောင်းများအောက်တွင် မိနစ် ၂၀ ခန့်တိုင်း အရေအတွက် နှစ်ဆတိုးလာသဖြင့် အောင်မြင်စွာ Engineer လုပ်ထားသော ဘက်တီးရီးယားတစ်ကောင်တည်းကို ကြီးမားသော စက်မှု Fermenter တစ်ခုတွင် စိုက်ပျိုးလိုက်ရုံဖြင့် ရက်အနည်းငယ်အတွင်း ထိုတစ်ကောင်တည်း Genetically Modified ဆဲလ်မှ ဆင်းသက်လာသော Insulin ထုတ်လုပ်နေသော ဘက်တီးရီးယား ဘီလီယံချီ ရရှိနိုင်ကြောင်း ဒေါက်တာဇင် ရှင်းပြခဲ့သည်။ ဤနည်းလမ်းသည် ပြဿနာများစွာကို တစ်ပြိုင်နက် ဖြေရှင်းပေးခဲ့သည်- တိရစ္ဆာန် Pancreas လိုအပ်ခြင်းကို လုံးဝ ဖယ်ရှားပေးပြီး၊ လူ့ Hormone နှင့် ဓာတုနည်းအားဖြင့် တူညီသော Insulin ထုတ်လုပ်ပေးကာ (Allergic Reaction အများစုကို ဖယ်ရှားပေး) ကမ္ဘာလုံးဆိုင်ရာ လိုအပ်ချက် တိုးလာမှုကို ဖြည့်ဆည်းရန် လုံးဝနီးပါး အကန့်အသတ်မရှိ အတိုင်းအတာ တိုးချဲ့နိုင်သည် -- ၎င်းသည် ယနေ့ ခေတ်မီဆေးပညာတွင် သုံးနေသော Insulin လုံးလုံးနီးပါးကို တိရစ္ဆာန်များမှ ထုတ်ယူသည့်အစား ဤနည်းလမ်းဖြင့် ထုတ်လုပ်နေရသည့် အတိအကျ အကြောင်းရင်းပင် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what problems did animal-extracted insulin have?",
            questionMy:
                "တိရစ္ဆာန်မှ ထုတ်ယူသော Insulin တွင် မည်သည့်ပြဿနာများ ရှိခဲ့ကြောင်းကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It was expensive, required many animals, and could cause allergic reactions",
              "It was completely free to produce",
              "It worked perfectly with no downsides",
              "It could only be used once per patient",
            ],
            optionsMy: [
              "ဈေးကြီးပြီး တိရစ္ဆာန်များစွာ လိုအပ်ကာ Allergic Reaction ဖြစ်စေနိုင်ခြင်း",
              "ထုတ်လုပ်ရန် လုံးဝ အခမဲ့ ဖြစ်ခြင်း",
              "ချို့ယွင်းချက် လုံးဝမရှိဘဲ ပြီးပြည့်စုံစွာ အလုပ်လုပ်ခြင်း",
              "လူနာတစ်ဦးလျှင် တစ်ကြိမ်သာ အသုံးပြု၍ ရခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence listing the drawbacks of animal-extracted insulin.",
              "Cost, animal numbers, and allergic reactions are all mentioned.",
            ],
            hintsMy: [
              "တိရစ္ဆာန်မှ ထုတ်ယူသော Insulin ၏ ချို့ယွင်းချက်များကို စာရင်းပြုစုထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဈေးနှုန်း၊ တိရစ္ဆာန်အရေအတွက်နှင့် Allergic Reaction တို့ကို ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what role does the plasmid play in the process?",
            questionMy:
                "ဖြစ်စဉ်တွင် Plasmid ၏ အခန်းကဏ္ဍကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It acts as a vector, carrying the human insulin gene into the bacterium",
              "It directly produces insulin itself without any bacterium",
              "It destroys the bacterium's own DNA",
              "It has no real role in the process",
            ],
            optionsMy: [
              "Vector အဖြစ် လုပ်ဆောင်ကာ လူ့ Insulin Gene ကို ဘက်တီးရီးယားထဲသို့ သယ်ဆောင်ပေးခြင်း",
              "ဘက်တီးရီးယား မပါဘဲ Insulin ကို ကိုယ်တိုင် တိုက်ရိုက် ထုတ်လုပ်ခြင်း",
              "ဘက်တီးရီးယား၏ ကိုယ်ပိုင် DNA ကို ဖျက်ဆီးခြင်း",
              "ဖြစ်စဉ်တွင် အမှန်တကယ် အခန်းကဏ္ဍ မရှိခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explicitly describing the plasmid's job.",
              "Vectors carry genetic material from one place to another.",
            ],
            hintsMy: [
              "Plasmid ၏ တာဝန်ကို တိတိကျကျ ဖော်ပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Vector များသည် Genetic ပစ္စည်းများကို နေရာတစ်ခုမှ တစ်ခုသို့ သယ်ဆောင်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why can a single engineered bacterium produce billions of copies within days?",
            questionMy:
                "Engineer လုပ်ထားသော ဘက်တီးရီးယားတစ်ကောင်တည်းသည် ရက်အနည်းငယ်အတွင်း ဘီလီယံချီ မိတ္တူများ ထုတ်လုပ်နိုင်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Bacteria reproduce extremely quickly, doubling roughly every twenty minutes",
              "Bacteria never reproduce at all",
              "The plasmid multiplies itself without the bacterium",
              "Scientists manually copy each bacterium by hand",
            ],
            optionsMy: [
              "ဘက်တီးရီးယားများသည် အလွန်လျင်မြန်စွာ မျိုးပွားပြီး မိနစ် ၂၀ ခန့်တိုင်း အရေအတွက် နှစ်ဆ တိုးလာသောကြောင့်",
              "ဘက်တီးရီးယားများသည် လုံးဝ မျိုးမပွားခြင်း",
              "Plasmid သည် ဘက်တီးရီးယား မပါဘဲ ၎င်းကိုယ်တိုင် မွှားများခြင်း",
              "သိပ္ပံပညာရှင်များက ဘက်တီးရီးယားတစ်ကောင်ချင်းစီကို လက်ဖြင့် ကူးယူပေးခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about bacteria's reproduction rate under good conditions.",
              "Rapid doubling means exponential growth in a short time.",
            ],
            hintsMy: [
              "အခြေအနေကောင်းများအောက်တွင် ဘက်တီးရီးယား၏ မျိုးပွားနှုန်းအကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "လျင်မြန်စွာ နှစ်ဆတိုးခြင်းက အချိန်တိုအတွင်း Exponential ကြီးထွားမှုကို ဆိုလိုသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what three problems did this approach solve at once?",
            questionMy:
                "ဤနည်းလမ်းက တစ်ပြိုင်နက် ဖြေရှင်းပေးခဲ့သော ပြဿနာသုံးမျိုးကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Eliminated animal pancreases, matched human insulin exactly, and could scale up to meet demand",
              "Made insulin taste better, cheaper packaging, and faster delivery",
              "It solved no problems at all",
              "It only worked for one patient at a time",
            ],
            optionsMy: [
              "တိရစ္ဆာန် Pancreas လိုအပ်ခြင်းကို ဖယ်ရှားပေးပြီး လူ့ Insulin နှင့် အတိအကျ ကိုက်ညီကာ လိုအပ်ချက်ကို ဖြည့်ဆည်းရန် တိုးချဲ့နိုင်ခြင်း",
              "Insulin အရသာ ပို၍ ကောင်းစေပြီး ထုပ်ပိုးမှု ဈေးသက်သာကာ ပို့ဆောင်မှု ပို၍ မြန်ဆန်ခြင်း",
              "မည်သည့်ပြဿနာကိုမျှ လုံးဝ မဖြေရှင်းခဲ့ခြင်း",
              "တစ်ကြိမ်လျှင် လူနာတစ်ဦးအတွက်သာ အလုပ်လုပ်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence listing what this approach eliminated and enabled.",
              "This is why almost all modern insulin is produced this way.",
            ],
            hintsMy: [
              "ဤနည်းလမ်းက ဖယ်ရှားပေးခဲ့သည့်နှင့် ဖြစ်စေနိုင်သည့်အရာများကို စာရင်းပြုစုထားသော နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ ခေတ်မီ Insulin လုံးလုံးနီးပါးကို ဤနည်းဖြင့် ထုတ်လုပ်နေရသည့် အကြောင်းရင်းဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w33-d5",
      dayNumber: 5,
      titleEn: "Week 33 Recap: Biotechnology",
      titleMy: "သုံးဆယ့်သုံးပတ် ပြန်လည်သုံးသပ်ခြင်း - ဇီဝနည်းပညာ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Penicillin is naturally produced by...",
          questionMy: "Penicillin ကို သဘာဝအလျောက် ...က ထုတ်လုပ်သည်",
          optionsEn: [
            "A mould (Penicillium)",
            "A virus",
            "A green plant",
            "A human cell",
          ],
          optionsMy: [
            "မှို (Penicillium)",
            "ဗိုင်းရပ်စ်",
            "အပင်စိမ်း",
            "လူ့ဆဲလ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A plasmid used in genetic engineering acts as a...",
          questionMy:
              "Genetic Engineering တွင် သုံးသော Plasmid သည် ...အဖြစ် လုပ်ဆောင်သည်",
          optionsEn: [
            "Vector carrying a gene into a bacterium",
            "Type of antibiotic",
            "Source of glucose",
            "Waste product",
          ],
          optionsMy: [
            "Gene ကို ဘက်တီးရီးယားထဲသို့ သယ်ဆောင်ပေးသော Vector",
            "Antibiotic အမျိုးအစား",
            "ဂလူးကို့စ် အရင်းအမြစ်",
            "စွန့်ပစ်ပစ္စည်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Genetically engineered human insulin is preferred because it is...",
          questionMy:
              "Genetically Engineered လူ့ Insulin ကို ရွေးချယ်ကြသည့်အကြောင်းရင်းမှာ ၎င်းသည်...",
          optionsEn: [
            "Chemically identical to natural human insulin",
            "Always more expensive than animal insulin",
            "Made entirely of sugar",
            "Never used in modern medicine",
          ],
          optionsMy: [
            "သဘာဝ လူ့ Insulin နှင့် ဓာတုနည်းအားဖြင့် အတိအကျ တူညီခြင်း",
            "တိရစ္ဆာန် Insulin ထက် အမြဲ ပို၍ ဈေးကြီးခြင်း",
            "သကြားဖြင့် လုံးလုံး ပြုလုပ်ထားခြင်း",
            "ခေတ်မီဆေးပညာတွင် ဘယ်တော့မှ မသုံးခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 34: "Ecosystems and Biodiversity"
// =====================================================================

const CourseWeekDef _igcseBioWeek34 = CourseWeekDef(
  id: "course-igcse-bio-w34",
  weekNumber: 34,
  titleEn: "Ecosystems and Biodiversity",
  titleMy: "ဂေဟစနစ်များနှင့် ဇီဝမျိုးစုံမျိုးကွဲများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w34-d1",
      dayNumber: 1,
      titleEn: "Food Chains and Energy Flow",
      titleMy: "အစားအစာ ကွင်းဆက်များနှင့် စွမ်းအင် စီးဆင်းမှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In a food chain, an arrow between two organisms shows...",
          questionMy:
              "အစားအစာ ကွင်းဆက်တစ်ခုတွင် သက်ရှိနှစ်ခုကြား မြှားတစ်ခုက ဖော်ပြသည်မှာ...",
          optionsEn: [
            "The direction of energy flow, from what is eaten to what eats it",
            "Which organism is bigger",
            "Which organism lives longer",
            "The direction of water flow only",
          ],
          optionsMy: [
            "စွမ်းအင် စီးဆင်းမှု ဦးတည်ချက်၊ စားခံရသောအရာမှ စားသောအရာဆီသို့",
            "မည်သည့်သက်ရှိ ပို၍ ကြီးမားကြောင်း",
            "မည်သည့်သက်ရှိ ပို၍ သက်တမ်းရှည်ကြောင်း",
            "ရေစီးဆင်းမှု ဦးတည်ချက်သာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "A food chain always starts with a producer, such as a green plant.",
            "The arrow points from the organism being eaten to the organism eating it.",
          ],
          hintsMy: [
            "အစားအစာ ကွင်းဆက်တစ်ခုသည် အပင်စိမ်းကဲ့သို့သော Producer တစ်ခုနှင့် အမြဲ စတင်သည်။",
            "မြှားသည် စားခံရသော သက်ရှိမှ စားသော သက်ရှိဆီသို့ ညွှန်ပြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Approximately what percentage of energy is typically transferred from one trophic level to the next?",
          questionMy:
              "Trophic Level တစ်ခုမှ နောက်တစ်ခုသို့ ပုံမှန်အားဖြင့် စွမ်းအင် ရာခိုင်နှုန်း မည်မျှခန့် လွှဲပြောင်းလေ့ရှိသနည်း။",
          optionsEn: ["About 10%", "About 90%", "Exactly 100%", "0%"],
          optionsMy: ["၁၀% ခန့်", "၉၀% ခန့်", "၁၀၀% အတိအကျ", "၀%"],
          correctIndex: 0,
          hintsEn: [
            "Most energy is lost as heat through respiration, or lost in movement and undigested material.",
            "This is why food chains rarely have more than four or five levels -- there isn't enough energy left to support more.",
          ],
          hintsMy: [
            "စွမ်းအင်အများစုသည် Respiration မှတစ်ဆင့် အပူအဖြစ် ဆုံးရှုံးသွားခြင်း၊ သို့မဟုတ် လှုပ်ရှားမှုနှင့် မချေဖျက်နိုင်သော ပစ္စည်းအဖြစ် ဆုံးရှုံးသွားသည်။",
            "ဤသည်မှာ အစားအစာ ကွင်းဆက်များ လေးခု သို့မဟုတ် ငါးခုထက် ပို၍ ရှားရှားပါးပါးသာ ရှိသည့် အကြောင်းရင်းဖြစ်သည် -- ပို၍ ထောက်ပံ့ရန် စွမ်းအင် မလုံလောက်တော့ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is a trophic level?",
          questionMy: "Trophic Level ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A feeding position in a food chain, such as producer or primary consumer",
            "A type of soil",
            "A measure of temperature",
            "A type of rock",
          ],
          optionsMy: [
            "Producer သို့မဟုတ် Primary Consumer ကဲ့သို့သော အစားအစာကွင်းဆက်ရှိ ကျွေးမွေးမှု နေရာ",
            "မြေဆီလွှာအမျိုးအစားတစ်ခု",
            "အပူချိန် တိုင်းတာမှု",
            "ကျောက်အမျိုးအစားတစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Producers are the first trophic level, primary consumers the second, and so on.",
            "Each step along a food chain represents one trophic level.",
          ],
          hintsMy: [
            "Producer များသည် ပထမ Trophic Level ဖြစ်ပြီး Primary Consumer များသည် ဒုတိယ Trophic Level ဖြစ်သည်။",
            "အစားအစာ ကွင်းဆက်တစ်လျှောက် အဆင့်တစ်ခုစီသည် Trophic Level တစ်ခုကို ကိုယ်စားပြုသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w34-d2",
      dayNumber: 2,
      titleEn: "Match: Ecosystem Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ဂေဟစနစ် ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w34-dm-1",
          termEn: "Producer",
          termMy: "Producer",
          matchEn:
              "An organism, usually a green plant, that makes its own food through photosynthesis",
          matchMy:
              "Photosynthesis မှတစ်ဆင့် ၎င်း၏ ကိုယ်ပိုင် အစားအစာကို ပြုလုပ်ပေးသော သက်ရှိ၊ ပုံမှန်အားဖြင့် အပင်စိမ်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w34-dm-2",
          termEn: "Primary consumer",
          termMy: "Primary Consumer",
          matchEn: "An animal that eats producers directly (a herbivore)",
          matchMy: "Producer များကို တိုက်ရိုက် စားသော တိရစ္ဆာန် (Herbivore)",
          colorValue: 0xFF8BC34A,
        ),
        DragMatchPair(
          id: "igcsebio-w34-dm-3",
          termEn: "Food web",
          termMy: "Food Web",
          matchEn:
              "A network of interconnected food chains within an ecosystem",
          matchMy:
              "ဂေဟစနစ်တစ်ခုအတွင်း ချိတ်ဆက်နေသော အစားအစာကွင်းဆက်များ ကွန်ရက်",
          colorValue: 0xFF00BCD4,
        ),
        DragMatchPair(
          id: "igcsebio-w34-dm-4",
          termEn: "Decomposer",
          termMy: "Decomposer",
          matchEn:
              "An organism that breaks down dead material, releasing nutrients back into the ecosystem",
          matchMy:
              "သေဆုံးသော ပစ္စည်းများကို ချေဖျက်ကာ အာဟာရများကို ဂေဟစနစ်ထဲသို့ ပြန်လွှတ်ပေးသော သက်ရှိ",
          colorValue: 0xFF795548,
        ),
        DragMatchPair(
          id: "igcsebio-w34-dm-5",
          termEn: "Nitrogen fixation",
          termMy: "Nitrogen Fixation",
          matchEn:
              "The conversion of nitrogen gas into a usable form, such as nitrates, by certain bacteria",
          matchMy:
              "ဘက်တီးရီးယားအချို့မှ နိုက်ထရိုဂျင်ဓာတ်ငွေ့ကို Nitrate ကဲ့သို့ အသုံးဝင်သော ပုံစံသို့ ပြောင်းလဲပေးခြင်း",
          colorValue: 0xFF9C27B0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w34-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Trophic Level?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် Trophic Level",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Producer", "Primary Consumer", "Secondary Consumer"],
        bucketsMy: ["Producer", "Primary Consumer", "Secondary Consumer"],
        items: [
          SortingItem(
            id: "igcsebio-w34-sort-1",
            labelEn: "Grass in a field, making its own food by photosynthesis",
            labelMy:
                "လယ်ကွင်းရှိ မြက်ခင်း၊ Photosynthesis ဖြင့် ၎င်း၏ကိုယ်ပိုင် အစားအစာ ပြုလုပ်ခြင်း",
            correctBucketEn: "Producer",
            correctBucketMy: "Producer",
          ),
          SortingItem(
            id: "igcsebio-w34-sort-2",
            labelEn: "A rabbit eating grass",
            labelMy: "မြက်ခင်း စားနေသော ယုန်တစ်ကောင်",
            correctBucketEn: "Primary Consumer",
            correctBucketMy: "Primary Consumer",
          ),
          SortingItem(
            id: "igcsebio-w34-sort-3",
            labelEn: "A fox eating a rabbit",
            labelMy: "ယုန်ကို စားနေသော ခွေးအမှိုက်စား",
            correctBucketEn: "Secondary Consumer",
            correctBucketMy: "Secondary Consumer",
          ),
          SortingItem(
            id: "igcsebio-w34-sort-4",
            labelEn: "Phytoplankton in the ocean, photosynthesising",
            labelMy:
                "ပင်လယ်ရေထဲရှိ Phytoplankton, Photosynthesis ပြုလုပ်နေခြင်း",
            correctBucketEn: "Producer",
            correctBucketMy: "Producer",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w34-d4",
      dayNumber: 4,
      titleEn: "Reading: Ranger Ma Hla's Forest Survey",
      titleMy: "စာဖတ်ခြင်း - တောစောင့် မလှ၏ တောလေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Ranger Ma Hla's Forest Survey",
        titleMy: "တောစောင့် မလှ၏ တောလေ့လာမှု",
        passageEn:
            "Ma Hla, a forest ranger, led a Biology class through a nature reserve to map out a local food web, and she began by asking the students to record every feeding relationship they could observe. They noted grass and other plants being eaten by grasshoppers and deer, grasshoppers being eaten by small birds, deer and small birds both being preyed on by a resident wildcat, and dead leaves and animal droppings everywhere being broken down by fungi and bacteria in the soil.\n\nBack at the ranger station, Ma Hla explained that this collection of feeding relationships formed a food web rather than a single food chain, since most animals in the reserve ate more than one type of food and were eaten by more than one type of predator -- the wildcat, for instance, ate both deer and small birds, making it part of two different chains within the same web. She then asked the class to estimate how much of the energy captured by the grass through photosynthesis would eventually reach the wildcat, several trophic levels away.\n\nUsing the rule that roughly only 10% of energy transfers successfully from one trophic level to the next, a student calculated that grass capturing 10,000 units of energy would pass only about 1,000 units to the grasshoppers and deer that ate it, then only about 100 units to the birds and the wildcat's other prey, and finally only around 10 units of the original 10,000 would actually reach the wildcat itself. Ma Hla confirmed this was roughly accurate and explained why: most energy at each level is lost as heat through respiration, used for movement, or locked up in materials like bone and fur that the next consumer cannot digest -- which is exactly why food chains rarely extend beyond four or five trophic levels, and why top predators like the wildcat are naturally much rarer than the grass supporting the entire food web beneath them.",
        passageMy:
            "တောစောင့် မလှသည် ဒေသန္တရ အစားအစာကွန်ရက်တစ်ခုကို ရေးဆွဲရန် ဇီဝဗေဒအတန်းကို သဘာဝထိန်းသိမ်းမှုနယ်မြေတစ်ခုတစ်လျှောက် ဦးဆောင်ခဲ့ပြီး၊ ကျောင်းသားများအား တွေ့မြင်နိုင်သမျှ ကျွေးမွေးမှု ဆက်နွှယ်မှုတိုင်းကို မှတ်တမ်းတင်ရန် တောင်းဆိုခြင်းဖြင့် စတင်ခဲ့သည်။ ကျိုင်းကောင်များနှင့် ဒရယ်များက မြက်နှင့် အခြားအပင်များကို စားနေခြင်း၊ ငှက်ငယ်များက ကျိုင်းကောင်များကို စားနေခြင်း၊ ဒရယ်နှင့် ငှက်ငယ်နှစ်ခုစလုံးကို ဒေသခံ ကြောင်တောတစ်ကောင်က ဖမ်းစားနေခြင်း၊ နှင့် အရွက်သေများနှင့် တိရစ္ဆာန်ချေးများကို မြေဆီလွှာရှိ မှိုနှင့် ဘက်တီးရီးယားများက ရှိသမျှနေရာတိုင်းတွင် ချေဖျက်နေခြင်းကို သူတို့ မှတ်တမ်းတင်ခဲ့ကြသည်။\n\nတောစောင့်စခန်းသို့ ပြန်ရောက်သောအခါ ကျွေးမွေးမှု ဆက်နွှယ်မှု စုစည်းမှုသည် အစားအစာကွင်းဆက်တစ်ခုတည်းအစား အစားအစာကွန်ရက်တစ်ခု ဖွဲ့စည်းထားကြောင်း မလှက ရှင်းပြခဲ့သည်၊ အကြောင်းမှာ ထိန်းသိမ်းမှုနယ်မြေရှိ တိရစ္ဆာန်အများစုသည် အစားအစာအမျိုးအစား တစ်မျိုးထက်ပို၍ စားပြီး အမဲစားတိရစ္ဆာန် တစ်မျိုးထက်ပို၍ ဖမ်းစားခံခဲ့ရသောကြောင့် ဖြစ်သည် -- ဥပမာ ကြောင်တောသည် ဒရယ်နှင့် ငှက်ငယ်နှစ်မျိုးလုံးကို စားသဖြင့် တူညီသော ကွန်ရက်အတွင်း ကွင်းဆက်နှစ်ခု၏ အစိတ်အပိုင်းဖြစ်လာသည်။ ထို့နောက် Photosynthesis မှတစ်ဆင့် မြက်ရရှိသော စွမ်းအင် မည်မျှသည် Trophic Level များစွာ ကွာဝေးနေသော ကြောင်တောဆီသို့ နောက်ဆုံးတွင် ရောက်ရှိနိုင်ကြောင်း ခန့်မှန်းရန် အတန်းကို တောင်းဆိုခဲ့သည်။\n\nTrophic Level တစ်ခုမှ နောက်တစ်ခုသို့ စွမ်းအင်၏ ၁၀% ခန့်သာ အောင်မြင်စွာ လွှဲပြောင်းသည့် စည်းမျဉ်းကို သုံး၍ ကျောင်းသားတစ်ဦးက မြက်သည် စွမ်းအင် ယူနစ် ၁၀,၀၀၀ ရရှိပါက ၎င်းကို စားသော ကျိုင်းကောင်များနှင့် ဒရယ်များထံသို့ ယူနစ် ၁,၀၀၀ ခန့်သာ လွှဲပြောင်းပေးမည်၊ ထို့နောက် ငှက်များနှင့် ကြောင်တော၏ အခြားအမဲကောင်များထံသို့ ယူနစ် ၁၀၀ ခန့်သာ၊ နောက်ဆုံးတွင် မူလ ၁၀,၀၀၀ ၏ ယူနစ် ၁၀ ခန့်သာ ကြောင်တောထံသို့ အမှန်တကယ် ရောက်ရှိမည်ဟု တွက်ချက်ခဲ့သည်။ မလှက ဤသည် အကြမ်းဖျင်း မှန်ကန်ကြောင်း အတည်ပြုပြီး အကြောင်းရင်းကို ရှင်းပြခဲ့သည်- အဆင့်တစ်ခုစီရှိ စွမ်းအင်အများစုသည် Respiration မှတစ်ဆင့် အပူအဖြစ် ဆုံးရှုံးသွားသည်၊ လှုပ်ရှားမှုအတွက် သုံးစွဲသည်၊ သို့မဟုတ် နောက်ထပ် Consumer က မချေဖျက်နိုင်သော အရိုးနှင့် အမွှေးကဲ့သို့သော ပစ္စည်းများထဲတွင် ချုပ်ထားရသည် -- ဤသည်မှာ အစားအစာကွင်းဆက်များ လေးခု သို့မဟုတ် ငါးခု Trophic Level ကို ရှားရှားပါးပါးသာ ကျော်လွန်သည့် အကြောင်းရင်းနှင့် ကြောင်တောကဲ့သို့ ထိပ်ဆုံးအမဲစားတိရစ္ဆာန်များသည် အောက်ဆုံးရှိ အစားအစာကွန်ရက်တစ်ခုလုံးကို ထောက်ပံ့နေသော မြက်ထက် သဘာဝအလျောက် ပို၍ ရှားပါးသည့် အကြောင်းရင်းပင် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did the wildcat's feeding relationships form a web rather than a single chain?",
            questionMy:
                "ကြောင်တော၏ ကျွေးမွေးမှု ဆက်နွှယ်မှုများသည် ကွင်းဆက်တစ်ခုတည်းအစား ကွန်ရက်တစ်ခု ဖွဲ့စည်းရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The wildcat ate more than one type of prey, connecting multiple chains",
              "The wildcat only ate one type of food",
              "There were no other animals in the reserve",
              "Food webs and food chains are exactly the same thing",
            ],
            optionsMy: [
              "ကြောင်တောသည် အမဲကောင် တစ်မျိုးထက်ပို၍ စားသဖြင့် ကွင်းဆက်များစွာကို ချိတ်ဆက်ပေးခဲ့ခြင်း",
              "ကြောင်တောသည် အစားအစာတစ်မျိုးတည်းသာ စားခြင်း",
              "ထိန်းသိမ်းမှုနယ်မြေတွင် အခြားတိရစ္ဆာန် လုံးဝ မရှိခြင်း",
              "Food Web နှင့် Food Chain သည် အတိအကျ တူညီသော အရာတစ်ခုတည်း ဖြစ်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the wildcat's role as an example.",
              "Eating both deer and small birds connects it to two different chains.",
            ],
            hintsMy: [
              "ကြောင်တော၏ အခန်းကဏ္ဍကို ဥပမာအဖြစ် ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဒရယ်နှင့် ငှက်ငယ် နှစ်မျိုးလုံးကို စားခြင်းက ၎င်းကို ကွင်းဆက်နှစ်ခုနှင့် ချိတ်ဆက်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, how many energy units out of the original 10,000 reached the wildcat?",
            questionMy:
                "မူလ ၁၀,၀၀၀ ထဲမှ စွမ်းအင် ယူနစ် မည်မျှ ကြောင်တောထံသို့ ရောက်ရှိခဲ့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "About 10 units",
              "All 10,000 units",
              "About 5,000 units",
              "0 units",
            ],
            optionsMy: [
              "ယူနစ် ၁၀ ခန့်",
              "ယူနစ် ၁၀,၀၀၀ လုံး",
              "ယူနစ် ၅,၀၀၀ ခန့်",
              "ယူနစ် ၀",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the calculation tracing energy through each trophic level.",
              "Roughly 10% is lost at each of the three transfers.",
            ],
            hintsMy: [
              "Trophic Level တစ်ခုစီ တစ်လျှောက် စွမ်းအင်ကို ခြေရာခံသော တွက်ချက်မှုကို ပြန်ဖတ်ကြည့်ပါ။",
              "အလွှဲပြောင်းသုံးကြိမ်လျှင် အကြမ်းဖျင်း ၁၀% စီ ဆုံးရှုံးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, where does most of the 'lost' energy actually go at each trophic level?",
            questionMy:
                "Trophic Level တစ်ခုစီတွင် 'ဆုံးရှုံးသော' စွမ်းအင်အများစု အမှန်တကယ် မည်သို့ သွားရောက်ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Lost as heat through respiration, used for movement, or locked in indigestible material",
              "It simply vanishes without a trace",
              "It is stored permanently in the soil",
              "It transfers completely to the next level with no loss",
            ],
            optionsMy: [
              "Respiration မှတစ်ဆင့် အပူအဖြစ် ဆုံးရှုံးခြင်း၊ လှုပ်ရှားမှုအတွက် သုံးစွဲခြင်း၊ သို့မဟုတ် မချေဖျက်နိုင်သော ပစ္စည်းထဲတွင် ချုပ်ထားခြင်း",
              "ရိုးရိုးရှင်းရှင်း ခြေရာမခံဘဲ ပျောက်ကွယ်သွားခြင်း",
              "မြေဆီလွှာထဲတွင် အမြဲတမ်း သိမ်းဆည်းထားခြင်း",
              "ဆုံးရှုံးမှု လုံးဝမရှိဘဲ နောက်တစ်ဆင့်သို့ လုံးလုံး လွှဲပြောင်းခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread Ma Hla's explanation of where the energy goes.",
              "Respiration, movement, and indigestible material like bone and fur are all mentioned.",
            ],
            hintsMy: [
              "စွမ်းအင် မည်သို့ သွားရောက်ကြောင်း ရှင်းပြသော မလှ၏ ရှင်းချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "Respiration, လှုပ်ရှားမှုနှင့် အရိုး/အမွှေးကဲ့သို့ မချေဖျက်နိုင်သော ပစ္စည်းများကို ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why are top predators like the wildcat naturally rarer than grass?",
            questionMy:
                "ကြောင်တောကဲ့သို့ ထိပ်ဆုံးအမဲစားတိရစ္ဆာန်များသည် မြက်ထက် သဘာဝအလျောက် ပို၍ ရှားပါးရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Only a small fraction of the original energy survives the multiple transfers to reach them",
              "Wildcats reproduce much slower than grass grows",
              "Grass is protected by law",
              "Wildcats do not need any energy at all",
            ],
            optionsMy: [
              "မူလစွမ်းအင်၏ အစိတ်အပိုင်းငယ်တစ်ခုသာ လွှဲပြောင်းမှုများစွာကို ကျော်ကာ ၎င်းတို့ထံသို့ ရောက်ရှိသောကြောင့်",
              "ကြောင်တောများသည် မြက်ကြီးထွားနှုန်းထက် များစွာ နှေးကွေးစွာ မျိုးပွားသောကြောင့်",
              "မြက်ကို ဥပဒေက ကာကွယ်ထားသောကြောင့်",
              "ကြောင်တောများသည် စွမ်းအင် လုံးဝ မလိုအပ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This directly follows from the 10% energy transfer rule explained earlier in the paragraph.",
              "Less available energy at higher trophic levels can only support fewer individuals.",
            ],
            hintsMy: [
              "ဤသည်မှာ စာပိုဒ်အစောပိုင်းက ရှင်းပြထားသော ၁၀% စွမ်းအင်လွှဲပြောင်းမှု စည်းမျဉ်းမှ တိုက်ရိုက် ဆင်းသက်လာသည်။",
              "Trophic Level မြင့်လေ ရရှိနိုင်သော စွမ်းအင် နည်းလေဖြစ်ပြီး ပုဂ္ဂိုလ်ရေးအရေအတွက် နည်းသာ ထောက်ပံ့နိုင်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w34-d5",
      dayNumber: 5,
      titleEn: "Week 34 Recap: Ecosystems",
      titleMy: "သုံးဆယ့်လေးပတ် ပြန်လည်သုံးသပ်ခြင်း - ဂေဟစနစ်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Producers make their own food through...",
          questionMy:
              "Producer များသည် ...မှတစ်ဆင့် ၎င်းတို့၏ ကိုယ်ပိုင် အစားအစာ ပြုလုပ်ကြသည်",
          optionsEn: [
            "Photosynthesis",
            "Respiration",
            "Digestion",
            "Excretion",
          ],
          optionsMy: [
            "Photosynthesis",
            "Respiration",
            "Digestion",
            "Excretion",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Roughly how much energy transfers between trophic levels?",
          questionMy:
              "Trophic Level များကြား စွမ်းအင် မည်မျှခန့် လွှဲပြောင်းလေ့ရှိသနည်း",
          optionsEn: ["About 10%", "About 100%", "About 50%", "About 1%"],
          optionsMy: ["၁၀% ခန့်", "၁၀၀% ခန့်", "၅၀% ခန့်", "၁% ခန့်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Decomposers help ecosystems by...",
          questionMy: "Decomposer များသည် ...ဖြင့် ဂေဟစနစ်များကို ကူညီပေးသည်",
          optionsEn: [
            "Breaking down dead material and releasing nutrients back into the ecosystem",
            "Producing their own food through photosynthesis",
            "Hunting large prey animals",
            "Preventing all decay from happening",
          ],
          optionsMy: [
            "သေဆုံးသော ပစ္စည်းများကို ချေဖျက်ကာ အာဟာရများကို ဂေဟစနစ်ထဲသို့ ပြန်လွှတ်ပေးခြင်း",
            "Photosynthesis မှတစ်ဆင့် ၎င်းတို့၏ ကိုယ်ပိုင် အစားအစာ ပြုလုပ်ခြင်း",
            "အမဲကောင်ကြီးများကို လိုက်လံဖမ်းဆီးခြင်း",
            "ပုပ်ပျက်မှု အားလုံး ဖြစ်ပေါ်ခြင်းကို ကာကွယ်တားဆီးခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 35: "Full Past Paper Mock Examinations"
// =====================================================================

const CourseWeekDef _igcseBioWeek35 = CourseWeekDef(
  id: "course-igcse-bio-w35",
  weekNumber: 35,
  titleEn: "Full Past Paper Mock Examinations",
  titleMy: "မေးခွန်းဟောင်း ပုံစံတူ စာမေးပွဲ အစုံအလင် ဖြေဆိုခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w35-d1",
      dayNumber: 1,
      titleEn: "Mock Paper 1: Cells, Nutrition and Transport",
      titleMy: "Mock Paper 1: ဆဲလ်များ၊ အာဟာရနှင့် သယ်ယူပို့ဆောင်ရေး",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A plant cell placed in a concentrated sugar solution becomes plasmolysed. Which process caused this?",
          questionMy:
              "ပြင်းသော သကြားရည်ထဲတွင် ထားလိုက်သော အပင်ဆဲလ်တစ်ခု Plasmolysed ဖြစ်သွားသည်။ မည်သည့်ဖြစ်စဉ်က ဤသို့ ဖြစ်စေသနည်း။",
          optionsEn: [
            "Osmosis",
            "Active transport",
            "Diffusion of sugar into the cell",
            "Respiration",
          ],
          optionsMy: [
            "Osmosis",
            "Active Transport",
            "ဆဲလ်ထဲသို့ သကြား Diffuse ဝင်ခြင်း",
            "Respiration",
          ],
          correctIndex: 0,
          hintsEn: [
            "Water left the cell because the surrounding solution had a lower water potential.",
            "This is the process from Term 2's diffusion and osmosis lessons.",
          ],
          hintsMy: [
            "ပတ်ဝန်းကျင်ရည်တွင် ရေအလားအလာ နိမ့်နေသောကြောင့် ရေသည် ဆဲလ်မှ ထွက်ခွာသွားခဲ့သည်။",
            "ဤသည်မှာ ဒုတိယနှစ်ဝက် Diffusion နှင့် Osmosis သင်ခန်းစာများမှ ဖြစ်စဉ်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which food test would confirm the presence of protein in a sample?",
          questionMy:
              "နမူနာတစ်ခုတွင် ပရိုတင်း ပါဝင်ကြောင်း မည်သည့် အစားအစာစမ်းသပ်မှုက အတည်ပြုမည်နည်း။",
          optionsEn: [
            "Biuret test",
            "Iodine test",
            "Benedict's test",
            "Ethanol emulsion test",
          ],
          optionsMy: [
            "Biuret Test",
            "Iodine Test",
            "Benedict's Test",
            "Ethanol Emulsion Test",
          ],
          correctIndex: 0,
          hintsEn: [
            "This test turns from blue to purple (lilac) when protein is present.",
            "This was covered in Term 2's food tests lesson.",
          ],
          hintsMy: [
            "ဤ Test သည် ပရိုတင်းရှိသောအခါ အပြာမှ ခရမ်းရောင် (Lilac) သို့ ပြောင်းလဲသည်။",
            "ဤအရာကို ဒုတိယနှစ်ဝက် အစားအစာစမ်းသပ်မှု သင်ခန်းစာတွင် ဖုံးအုပ်ခဲ့သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Xylem tissue is adapted for its function by being made of dead cells. Why is this an advantage?",
          questionMy:
              "Xylem တစ်ရှူးသည် ဆဲလ်သေများဖြင့် ဖွဲ့စည်းထားခြင်းဖြင့် ၎င်း၏ လုပ်ဆောင်ချက်အတွက် လိုက်လျောညီထွေမှု ရှိသည်။ ဤသည် အားသာချက် ဖြစ်ရသည့် အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Dead cells with no cell contents form hollow, unobstructed tubes for water to flow through easily",
            "Dead cells are heavier and sink better",
            "Dead cells can still carry out photosynthesis",
            "Dead cells produce more oxygen",
          ],
          optionsMy: [
            "ဆဲလ်တွင်းပါဝင်ပစ္စည်း မရှိသော ဆဲလ်သေများသည် ရေ လွယ်ကူစွာ စီးဆင်းနိုင်ရန် လွတ်ပြီး အတားအဆီးမရှိသော ပြွန်များ ဖွဲ့စည်းပေးခြင်း",
            "ဆဲလ်သေများသည် ပို၍ လေးလံပြီး ပို၍ ကောင်းစွာ နစ်ခြင်း",
            "ဆဲလ်သေများသည် Photosynthesis ကို ဆက်လက် ပြုလုပ်နိုင်ခြင်း",
            "ဆဲလ်သေများသည် အောက်ဆီဂျင် ပို၍ ထုတ်လုပ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the same reasoning covered in Term 4's transport in plants lesson.",
            "Empty tubes offer less resistance to water flow than tubes full of living cell contents.",
          ],
          hintsMy: [
            "ဤသည်မှာ စတုတ္ထနှစ်ဝက် Transport in Plants သင်ခန်းစာတွင် ဖုံးအုပ်ခဲ့သော ယုတ္တိတစ်ခုတည်းပင် ဖြစ်သည်။",
            "လွတ်နေသော ပြွန်များသည် အသက်ရှင်ဆဲလ်ပါဝင်ပစ္စည်းများ ပြည့်နေသော ပြွန်များထက် ရေစီးဆင်းမှုကို ခုခံမှု နည်းသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w35-d2",
      dayNumber: 2,
      titleEn: "Match: Mixed Vocabulary Review",
      titleMy: "တွဲစပ်ကြမည် - ရောစပ် ဝေါဟာရ ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w35-dm-1",
          termEn: "Denaturation",
          termMy: "Denaturation",
          matchEn:
              "A permanent change to an enzyme's active site shape caused by heat or extreme pH",
          matchMy:
              "အပူချိန် သို့မဟုတ် pH အလွန်အကျွံကြောင့် အင်ဇိုင်း၏ Active Site ပုံသဏ္ဌာန် အမြဲတမ်း ပြောင်းလဲခြင်း",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsebio-w35-dm-2",
          termEn: "Double circulation",
          termMy: "Double Circulation",
          matchEn:
              "Blood passing through the heart twice on one full circuit of the body",
          matchMy:
              "ခန္ဓာကိုယ်တစ်ဝန်း ပတ်ချာလှည့်တစ်ကြိမ်တွင် သွေးသည် နှလုံးကို နှစ်ကြိမ် ဖြတ်ကျော်ခြင်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsebio-w35-dm-3",
          termEn: "Negative feedback",
          termMy: "Negative Feedback",
          matchEn:
              "A control system that reverses a change to bring conditions back to normal",
          matchMy:
              "အခြေအနေများကို ပုံမှန်သို့ ပြန်ခေါ်ဆောင်ရန် ပြောင်းလဲမှုကို ပြောင်းပြန်လှန်ပေးသော ထိန်းချုပ်မှုစနစ်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w35-dm-4",
          termEn: "Genotype",
          termMy: "Genotype",
          matchEn:
              "The genetic makeup of an organism, expressed as its alleles (e.g. Tt)",
          matchMy:
              "Allele များ (ဥပမာ Tt) အဖြစ် ဖော်ပြသော သက်ရှိတစ်ခု၏ Genetic ဖွဲ့စည်းပုံ",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w35-dm-5",
          termEn: "Trophic level",
          termMy: "Trophic Level",
          matchEn:
              "A feeding position within a food chain, such as producer or primary consumer",
          matchMy:
              "Producer သို့မဟုတ် Primary Consumer ကဲ့သို့သော အစားအစာကွင်းဆက်ရှိ ကျွေးမွေးမှုနေရာ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsebio-w35-dm-6",
          termEn: "Vector (genetic engineering)",
          termMy: "Vector (Genetic Engineering)",
          matchEn:
              "A plasmid or other carrier used to transfer a gene into an organism",
          matchMy:
              "Gene တစ်ခုကို သက်ရှိတစ်ခုထဲသို့ လွှဲပြောင်းရန် သုံးသော Plasmid သို့မဟုတ် အခြား သယ်ဆောင်ပေးသူ",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w35-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Unit Does This Belong To?",
      titleMy: "စီစစ်ကြမည် - ဤအရာသည် မည်သည့်ယူနစ်တွင် ပါဝင်သနည်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Cells, Molecules and Enzymes (Terms 1-3)",
          "Nutrition and Transport (Terms 4-5)",
          "Gas Exchange, Coordination and Genetics (Terms 6-8)",
        ],
        bucketsMy: [
          "ဆဲလ်များ၊ မော်လီကျူးများနှင့် အင်ဇိုင်းများ (တစ်ဆယ့်တစ်-သုံး)",
          "အာဟာရနှင့် သယ်ယူပို့ဆောင်ရေး (လေး-ငါး)",
          "ဓာတ်ငွေ့ဖလှယ်မှု၊ ညှိနှိုင်းမှုနှင့် မျိုးရိုးဗီဇ (ခြောက်-အဌမ)",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w35-sort-1",
            labelEn: "The lock-and-key model of enzyme action",
            labelMy: "အင်ဇိုင်း လုပ်ဆောင်ချက်၏ Lock-and-Key Model",
            correctBucketEn: "Cells, Molecules and Enzymes (Terms 1-3)",
            correctBucketMy:
                "ဆဲလ်များ၊ မော်လီကျူးများနှင့် အင်ဇိုင်းများ (တစ်ဆယ့်တစ်-သုံး)",
          ),
          SortingItem(
            id: "igcsebio-w35-sort-2",
            labelEn: "Bile emulsifying fats in the small intestine",
            labelMy: "သိမ်ငယ်အူတွင် Bile က အဆီများကို Emulsify ပြုလုပ်ခြင်း",
            correctBucketEn: "Nutrition and Transport (Terms 4-5)",
            correctBucketMy: "အာဟာရနှင့် သယ်ယူပို့ဆောင်ရေး (လေး-ငါး)",
          ),
          SortingItem(
            id: "igcsebio-w35-sort-3",
            labelEn: "A reflex arc protecting the hand from a hot surface",
            labelMy: "Reflex Arc တစ်ခုက လက်ကို ပူသောမျက်နှာပြင်မှ ကာကွယ်ခြင်း",
            correctBucketEn:
                "Gas Exchange, Coordination and Genetics (Terms 6-8)",
            correctBucketMy:
                "ဓာတ်ငွေ့ဖလှယ်မှု၊ ညှိနှိုင်းမှုနှင့် မျိုးရိုးဗီဇ (ခြောက်-အဌမ)",
          ),
          SortingItem(
            id: "igcsebio-w35-sort-4",
            labelEn: "The binomial system of naming species",
            labelMy: "မျိုးစိတ်များ အမည်တပ်ရန် ဒွိနာမ် စနစ်",
            correctBucketEn: "Cells, Molecules and Enzymes (Terms 1-3)",
            correctBucketMy:
                "ဆဲလ်များ၊ မော်လီကျူးများနှင့် အင်ဇိုင်းများ (တစ်ဆယ့်တစ်-သုံး)",
          ),
          SortingItem(
            id: "igcsebio-w35-sort-5",
            labelEn: "Punnett squares predicting offspring ratios",
            labelMy: "မျိုးဆက် အချိုးများ ခန့်မှန်းသော Punnett Square များ",
            correctBucketEn:
                "Gas Exchange, Coordination and Genetics (Terms 6-8)",
            correctBucketMy:
                "ဓာတ်ငွေ့ဖလှယ်မှု၊ ညှိနှိုင်းမှုနှင့် မျိုးရိုးဗီဇ (ခြောက်-အဌမ)",
          ),
          SortingItem(
            id: "igcsebio-w35-sort-6",
            labelEn: "The heart's double circulation",
            labelMy: "နှလုံး၏ Double Circulation",
            correctBucketEn: "Nutrition and Transport (Terms 4-5)",
            correctBucketMy: "အာဟာရနှင့် သယ်ယူပို့ဆောင်ရေး (လေး-ငါး)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w35-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiri Nandar's Exam Strategy",
      titleMy: "စာဖတ်ခြင်း - သီရိနန္ဒာ၏ စာမေးပွဲ နည်းဗျူဟာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri Nandar's Exam Strategy",
        titleMy: "သီရိနန္ဒာ၏ စာမေးပွဲ နည်းဗျူဟာ",
        passageEn:
            "With her real IGCSE Biology exam only weeks away, Thiri Nandar, who had first appeared back in Term 3 examining a leaf cross-section under a microscope, sat down with her teacher to build a revision strategy for tackling past papers under timed conditions. Her teacher's first piece of advice was to read every question twice before answering: many marks were lost not from a lack of knowledge, but from misreading a command word like 'describe' as 'explain', or missing a crucial detail such as a question asking specifically about a plant cell rather than an animal cell.\n\nHer teacher then explained command words in detail. 'Describe' meant stating what happens, in order, without necessarily saying why; 'explain' meant giving reasons, often using words like 'because' or 'so that'; and 'compare' meant identifying both similarities and differences between two things, not just listing facts about each one separately. Thiri Nandar realised she had lost marks on a practice paper the previous week by writing a pure description of osmosis when the question had actually asked her to explain why a potato chip in salt water had lost mass -- she had described the process without connecting it to the specific example.\n\nFinally, her teacher recommended a simple time-management technique: divide the total marks available by the total time allowed to calculate roughly how many minutes each mark was worth, then use that figure to avoid spending fifteen minutes on a three-mark question while leaving no time for a six-mark question later in the paper. Thiri Nandar practised this on a full mock paper, checking her watch after each section, and found that pacing herself this way let her attempt every question with time to spare for checking her answers -- a stark contrast to a previous mock paper where she had run out of time and left the final two questions completely blank.",
        passageMy:
            "သူမ၏ တကယ့် IGCSE ဇီဝဗေဒ စာမေးပွဲ ရက်သတ္တပတ်အနည်းငယ်သာ ကျန်တော့သည့်အချိန်တွင်၊ တတိယနှစ်ဝက်က အရွက်ဖြတ်ပိုင်းကို အဏုကြည့်မှန်ပြောင်းအောက်တွင် ပထမဆုံး စစ်ဆေးကြည့်ရှုခဲ့သော သီရိနန္ဒာသည် အချိန်ကန့်သတ်ချက်များအောက်တွင် စာမေးပွဲဟောင်းများကို ရင်ဆိုင်ဖြေရှင်းရန် ပြန်လည်ကျက်မှတ်ရေး နည်းဗျူဟာတစ်ခု တည်ဆောက်ရန် သူမ၏ ဆရာမနှင့်အတူ ထိုင်ခဲ့သည်။ သူမ၏ ဆရာမ၏ ပထမဆုံး အကြံဉာဏ်မှာ ဖြေဆိုမီ မေးခွန်းတိုင်းကို နှစ်ကြိမ် ဖတ်ရှုရန် ဖြစ်သည်- Command Word တစ်ခု 'Describe' ကို 'Explain' ဟု မှားဖတ်မိခြင်း သို့မဟုတ် အပင်ဆဲလ်နှင့် ပတ်သက်၍ တိတိကျကျ မေးထားသော မေးခွန်းတစ်ခုကို တိရစ္ဆာန်ဆဲလ်နှင့် ရောထွေးမိခြင်းကဲ့သို့သော အရေးကြီးသော အသေးစိတ်ကို လွတ်ကျွင်းခဲ့ခြင်းစသည်တို့ကြောင့် Marks များစွာ ဆုံးရှုံးရသည်ကို အသိပညာ အားနည်းခြင်းကြောင့် မဟုတ်ဘဲ ဖြစ်တတ်ကြောင်း ဖော်ပြခဲ့သည်။\n\nသူမ၏ ဆရာမက Command Word များကို အသေးစိတ် ရှင်းပြခဲ့သည်။ 'Describe' က အဘယ်ကြောင့်ဟု အကြောင်းရင်း မဖော်ပြဘဲ အစီအစဉ်အလိုက် အဘယ်ဖြစ်ပေါ်ကြောင်းကို ဆိုလိုပြီး 'Explain' က 'because' သို့မဟုတ် 'so that' ကဲ့သို့သော စကားလုံးများ မကြာခဏ သုံး၍ အကြောင်းရင်းများ ပေးအပ်ရန် ဆိုလိုသည်၊ 'Compare' က နှစ်ခုတစ်ခုစီအကြောင်း အချက်များကို သီးခြားစီ စာရင်းပြုစုရုံသာ မဟုတ်ဘဲ နှစ်ခုကြား တူညီချက်နှင့် ကွာခြားချက် နှစ်ခုစလုံးကို ဖော်ထုတ်ရန် ဆိုလိုသည်။ ယခင်တစ်ပတ်က လက်တွေ့စမ်းသပ်မှုစာရွက်တွင် Osmosis ၏ ရိုးရှင်းသော Description ကို ရေးသားခဲ့ရာ Marks ဆုံးရှုံးခဲ့ကြောင်း သီရိနန္ဒာ သဘောပေါက်လာခဲ့သည်၊ မေးခွန်းက အာလူးချောင်းတစ်ခု ဆားရည်ထဲတွင် အလေးချိန် အဘယ်ကြောင့် ဆုံးရှုံးခဲ့ကြောင်း Explain ပြုလုပ်ရန် တောင်းဆိုထားခဲ့ခြင်း ဖြစ်သည် -- သူမသည် ဖြစ်စဉ်ကို တိတိကျကျ ဥပမာနှင့် မချိတ်ဆက်ဘဲ Describe ရေးသားခဲ့ခြင်း ဖြစ်သည်။\n\nနောက်ဆုံးတွင် သူမ၏ ဆရာမက ရိုးရှင်းသော အချိန်စီမံခန့်ခွဲမှု နည်းစနစ်တစ်ခုကို အကြံပြုခဲ့သည်- ရရှိနိုင်သော Marks စုစုပေါင်းကို ခွင့်ပြုထားသော အချိန်စုစုပေါင်းနှင့် စား၍ Marks တစ်ခုစီ မိနစ် မည်မျှတန်ကြောင်း အကြမ်းဖျင်း တွက်ချက်ပြီး၊ Marks သုံးမှတ်ရှိသော မေးခွန်းတစ်ခုတွင် မိနစ် ၁၅ မိနစ် အသုံးမပြုမိစေရန် ထို Figure ကို အသုံးပြုကာ စာရွက်နောက်ပိုင်းရှိ Marks ခြောက်မှတ်ရှိသော မေးခွန်းတစ်ခုအတွက် အချိန် လုံးဝ မကျန်စေရန် ရှောင်ရှားရန် အကြံပြုခဲ့သည်။ သီရိနန္ဒာသည် ဤအကြောင်းကို Mock Paper အပြည့်အစုံတစ်ခုတွင် လေ့ကျင့်ခဲ့ပြီး၊ အပိုင်းတစ်ခုစီပြီးနောက် သူမ၏ နာရီကို စစ်ဆေးကာ၊ ဤသို့ ခြေလှမ်းချိန်ညှိခြင်းက သူမအား ဖြေဆိုချက်များ ပြန်စစ်ဆေးရန် အချိန်ကျန်စွာဖြင့် မေးခွန်းတိုင်းကို ကြိုးစားဖြေဆိုနိုင်စေကြောင်း တွေ့ရှိခဲ့သည် -- အချိန်ကုန်သွားပြီး နောက်ဆုံးမေးခွန်းနှစ်ခုကို လုံးလုံး အလွတ်ချန်ခဲ့ရသော ယခင် Mock Paper တစ်ခုနှင့် ပြောင်းပြန် ကွဲပြားစွာ ဖြစ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, why did the teacher say marks were often lost?",
            questionMy:
                "Marks များစွာ မကြာခဏ ဆုံးရှုံးရသည့် အကြောင်းရင်းကို ဆရာမက အဘယ်သို့ ပြောခဲ့ကြောင်းကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Misreading command words or missing crucial question details, not from lack of knowledge",
              "Students never studied at all",
              "The exams were always too easy",
              "Students wrote too much detail every time",
            ],
            optionsMy: [
              "Command Word များ မှားဖတ်ခြင်း သို့မဟုတ် အရေးကြီးသော မေးခွန်းအသေးစိတ်များ လွတ်ကျွင်းခြင်းကြောင့်၊ အသိပညာ အားနည်းခြင်းကြောင့် မဟုတ်ခြင်း",
              "ကျောင်းသားများ လုံးဝ လေ့လာမှု မပြုလုပ်ခဲ့ခြင်း",
              "စာမေးပွဲများ အမြဲ လွယ်ကူလွန်းခြင်း",
              "ကျောင်းသားများ အချိန်တိုင်း အသေးစိတ် လွန်ကဲစွာ ရေးသားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining why marks were lost.",
              "Misreading 'describe' as 'explain' is given as a specific example.",
            ],
            hintsMy: [
              "Marks ဆုံးရှုံးရသည့် အကြောင်းရင်းကို ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "'Describe' ကို 'Explain' ဟု မှားဖတ်ခြင်းကို တိတိကျကျ ဥပမာအဖြစ် ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what does the command word 'compare' require?",
            questionMy:
                "Command Word 'Compare' က အဘယ်ကို တောင်းဆိုကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Identifying both similarities and differences between two things",
              "Listing facts about only one thing",
              "Drawing a diagram only",
              "Giving no reasons at all",
            ],
            optionsMy: [
              "နှစ်ခုကြား တူညီချက်နှင့် ကွာခြားချက် နှစ်ခုစလုံးကို ဖော်ထုတ်ခြင်း",
              "တစ်ခုတည်းအကြောင်း အချက်များကိုသာ စာရင်းပြုစုခြင်း",
              "ပုံကြမ်းကိုသာ ဆွဲခြင်း",
              "အကြောင်းရင်း လုံးဝ မပေးအပ်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the definition of 'compare' given by the teacher.",
              "This is different from simply describing each thing separately.",
            ],
            hintsMy: [
              "ဆရာမ ပေးထားသော 'Compare' ၏ အဓိပ္ပာယ်ဖွင့်ဆိုချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ တစ်ခုစီကို သီးခြားစီ ရိုးရှင်းစွာ Describe ပြုလုပ်ခြင်းနှင့် ကွဲပြားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what mistake did Thiri Nandar make on her previous practice paper?",
            questionMy:
                "ယခင် လက်တွေ့စမ်းသပ်မှုစာရွက်တွင် သီရိနန္ဒာ မည်သည့် အမှား ပြုလုပ်ခဲ့ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "She wrote a pure description of osmosis when the question asked her to explain a specific example",
              "She left the entire paper blank",
              "She used the wrong colour pen",
              "She answered every question perfectly",
            ],
            optionsMy: [
              "မေးခွန်းက တိတိကျကျ ဥပမာတစ်ခုကို Explain ပြုလုပ်ရန် တောင်းဆိုနေစဉ် Osmosis ၏ ရိုးရှင်းသော Description ကို ရေးသားခဲ့ခြင်း",
              "စာရွက်တစ်ခုလုံးကို အလွတ်ချန်ခဲ့ခြင်း",
              "မှားယွင်းသော ခဲတံအရောင် သုံးခဲ့ခြင်း",
              "မေးခွန်းတိုင်းကို ပြီးပြည့်စုံစွာ ဖြေဆိုခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing her specific mistake with the potato chip question.",
              "She described the process without connecting it to the specific example asked about.",
            ],
            hintsMy: [
              "အာလူးချောင်းမေးခွန်းနှင့်ပတ်သက်သော သူမ၏ တိတိကျကျ အမှားကို ဖော်ပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "သူမသည် မေးထားသော တိတိကျကျ ဥပမာနှင့် မချိတ်ဆက်ဘဲ ဖြစ်စဉ်ကို Describe ပြုလုပ်ခဲ့ခြင်း ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what was the benefit of Thiri Nandar's time-management technique?",
            questionMy:
                "သီရိနန္ဒာ၏ အချိန်စီမံခန့်ခွဲမှု နည်းစနစ်၏ အကျိုးကျေးဇူးကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It let her attempt every question with time left over to check her answers",
              "It made the exam twice as long",
              "It caused her to skip half the paper",
              "It had no effect on her performance",
            ],
            optionsMy: [
              "ဖြေဆိုချက်များ ပြန်စစ်ဆေးရန် အချိန်ကျန်စွာဖြင့် မေးခွန်းတိုင်းကို ကြိုးစားဖြေဆိုနိုင်စေခြင်း",
              "စာမေးပွဲကို နှစ်ဆ ရှည်စေခြင်း",
              "စာရွက်ထက်ဝက်ကို ကျော်သွားစေခြင်း",
              "သူမ၏ စွမ်းဆောင်ရည်အပေါ် မည်သည့် သက်ရောက်မှုမျှ မရှိခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence contrasting this mock paper with a previous one.",
              "This is contrasted with a previous mock paper where she ran out of time.",
            ],
            hintsMy: [
              "ဤ Mock Paper ကို ယခင်တစ်ခုနှင့် နှိုင်းယှဉ်ထားသော နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်ကို အချိန်ကုန်သွားခဲ့သော ယခင် Mock Paper တစ်ခုနှင့် နှိုင်းယှဉ်ထားသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w35-d5",
      dayNumber: 5,
      titleEn: "Week 35 Recap: Exam Technique",
      titleMy: "သုံးဆယ့်ငါးပတ် ပြန်လည်သုံးသပ်ခြင်း - စာမေးပွဲ နည်းပညာ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The command word 'explain' requires you to...",
          questionMy: "Command Word 'Explain' က သင့်အား ...ရန် တောင်းဆိုသည်",
          optionsEn: [
            "Give reasons for something",
            "Only draw a diagram",
            "List facts with no reasons",
            "Ignore the question",
          ],
          optionsMy: [
            "တစ်စုံတစ်ခုအတွက် အကြောင်းရင်းများ ပေးအပ်ရန်",
            "ပုံကြမ်းကိုသာ ဆွဲရန်",
            "အကြောင်းရင်း မပါဘဲ အချက်များ စာရင်းပြုစုရန်",
            "မေးခွန်းကို လျစ်လျူရှုရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A good time-management strategy in an exam is to...",
          questionMy:
              "စာမေးပွဲတစ်ခုတွင် ကောင်းမွန်သော အချိန်စီမံခန့်ခွဲမှု နည်းဗျူဟာမှာ...",
          optionsEn: [
            "Allocate time roughly based on the marks available for each question",
            "Spend all your time on the first question",
            "Never check your watch",
            "Leave the last few questions blank on purpose",
          ],
          optionsMy: [
            "မေးခွန်းတစ်ခုစီအတွက် ရရှိနိုင်သော Marks အပေါ်မူတည်၍ အချိန်ကို အကြမ်းဖျင်း ခွဲဝေခြင်း",
            "အချိန်အားလုံးကို ပထမမေးခွန်းအတွက် သုံးစွဲခြင်း",
            "နာရီကို ဘယ်တော့မှ မစစ်ဆေးခြင်း",
            "နောက်ဆုံး မေးခွန်းအနည်းငယ်ကို တမင်တကာ အလွတ်ချန်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In a food chain, energy transfer efficiency between trophic levels is roughly...",
          questionMy:
              "အစားအစာကွင်းဆက်တစ်ခုတွင် Trophic Level များကြား စွမ်းအင် လွှဲပြောင်းမှု ထိရောက်မှုမှာ အကြမ်းဖျင်း...",
          optionsEn: ["10%", "90%", "50%", "100%"],
          optionsMy: ["၁၀%", "၉၀%", "၅၀%", "၁၀၀%"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 36 (Capstone): "IGCSE Biology Graduation"
// =====================================================================

const CourseWeekDef _igcseBioWeek36 = CourseWeekDef(
  id: "course-igcse-bio-w36",
  weekNumber: 36,
  titleEn: "IGCSE Biology Graduation",
  titleMy: "IGCSE ဇီဝဗေဒ ဘွဲ့နှင်းသဘင် အထိမ်းအမှတ်",
  xpReward: 20,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-bio-w36-d1",
      dayNumber: 1,
      titleEn: "Whole-Course Review: Terms 1-5",
      titleMy: "သင်တန်းတစ်ခုလုံး ပြန်လည်သုံးသပ်ခြင်း - ပထမ-ပဉ္စမနှစ်ဝက်",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "MRS GREN is a mnemonic for the seven characteristics of...",
          questionMy: "MRS GREN သည် ...၏ လက္ခဏာခုနစ်ခုအတွက် မှတ်ဉာဏ်ကူ ဖြစ်သည်",
          optionsEn: [
            "Living organisms",
            "Rocks",
            "Chemical elements",
            "Weather patterns",
          ],
          optionsMy: [
            "သက်ရှိသတ္တဝါများ",
            "ကျောက်များ",
            "ဓာတုဒြပ်စင်များ",
            "ရာသီဥတု ပုံစံများ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these correctly describes an enzyme?",
          questionMy:
              "အင်ဇိုင်းတစ်ခုကို မှန်ကန်စွာ ဖော်ပြသည့်အရာမှာ အောက်ပါတို့အနက် အဘယ်နည်း",
          optionsEn: [
            "A protein that speeds up a specific reaction without being used up",
            "A type of sugar",
            "A hormone produced only by the pancreas",
            "A structure found only in animal cells",
          ],
          optionsMy: [
            "ကိုယ်တိုင် မကုန်ဆုံးဘဲ တိတိကျကျ တုံ့ပြန်မှုတစ်ခုကို မြန်ဆန်စေသော ပရိုတင်း",
            "သကြားအမျိုးအစားတစ်ခု",
            "Pancreas တစ်ခုတည်းမှ ထုတ်လုပ်သော Hormone",
            "တိရစ္ဆာန်ဆဲလ်များတွင်သာ တွေ့ရသော ဖွဲ့စည်းပုံ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "The human alimentary canal's five stages, in order, are ingestion, digestion, absorption, assimilation, and...",
          questionMy:
              "လူ့အစာချေလမ်းကြောင်း၏ အဆင့်ငါးဆင့်၊ အစီအစဉ်အလိုက် Ingestion, Digestion, Absorption, Assimilation နှင့်...",
          optionsEn: [
            "Egestion",
            "Fertilisation",
            "Ovulation",
            "Photosynthesis",
          ],
          optionsMy: [
            "Egestion",
            "Fertilisation",
            "Ovulation",
            "Photosynthesis",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "The heart's left ventricle has the thickest wall because it must...",
          questionMy:
              "နှလုံး၏ ဘယ်ဘက် Ventricle သည် နံရံအထူဆုံးရှိသည့် အကြောင်းရင်းမှာ ၎င်းသည် ...ရမည်ဖြစ်သောကြောင့်",
          optionsEn: [
            "Pump blood all the way around the whole body",
            "Only pump blood to the nearby lungs",
            "Store extra blood",
            "Produce hormones",
          ],
          optionsMy: [
            "ခန္ဓာကိုယ်တစ်ခုလုံးကို သွေးပန့်",
            "အနီးရှိ အဆုတ်ဆီသို့သာ သွေးပန့်",
            "သွေးအပို သိမ်းဆည်း",
            "Hormone များ ထုတ်လုပ်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w36-d2",
      dayNumber: 2,
      titleEn: "Match: A-Level Biology Preview",
      titleMy: "တွဲစပ်ကြမည် - A-Level ဇီဝဗေဒ အကြိုကြည့်ရှုခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsebio-w36-dm-1",
          termEn: "Cell membranes and transport (A-Level)",
          termMy: "Cell Membranes and Transport (A-Level)",
          matchEn:
              "A-Level topic exploring membrane structure and transport in far greater molecular detail than IGCSE",
          matchMy:
              "IGCSE ထက် မော်လီကျူးအသေးစိတ် ပို၍ ကျယ်ပြန့်စွာ Membrane ဖွဲ့စည်းပုံနှင့် Transport ကို စူးစမ်းသော A-Level ဘာသာရပ်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsebio-w36-dm-2",
          termEn: "Nucleic acids and protein synthesis (A-Level)",
          termMy: "Nucleic Acids and Protein Synthesis (A-Level)",
          matchEn:
              "A-Level topic covering how DNA's code is read and translated to build proteins",
          matchMy:
              "DNA ၏ Code ကို မည်သို့ ဖတ်ရှု၍ ပရိုတင်းများ တည်ဆောက်ရန် ဘာသာပြန်ကြောင်း ဖုံးအုပ်သော A-Level ဘာသာရပ်",
          colorValue: 0xFF2196F3,
        ),
        DragMatchPair(
          id: "igcsebio-w36-dm-3",
          termEn: "The mitotic cell cycle (A-Level)",
          termMy: "The Mitotic Cell Cycle (A-Level)",
          matchEn:
              "A-Level topic examining the detailed stages a cell passes through during mitosis",
          matchMy:
              "Mitosis စဉ်အတွင်း ဆဲလ်တစ်ခု ဖြတ်သန်းသွားသော အသေးစိတ် အဆင့်များကို စစ်ဆေးသော A-Level ဘာသာရပ်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsebio-w36-dm-4",
          termEn: "Genetic technology (A-Level)",
          termMy: "Genetic Technology (A-Level)",
          matchEn:
              "A-Level topic extending IGCSE's genetic engineering into gene sequencing and gene therapy",
          matchMy:
              "IGCSE ၏ Genetic Engineering ကို Gene Sequencing နှင့် Gene Therapy သို့ တိုးချဲ့သော A-Level ဘာသာရပ်",
          colorValue: 0xFFFF9800,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w36-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Term Covered This?",
      titleMy: "စီစစ်ကြမည် - ဤအရာကို မည်သည့်နှစ်ဝက်က ဖုံးအုပ်ခဲ့သနည်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Term 1-3 (Cells, Molecules, Enzymes, Plants)",
          "Term 4-6 (Nutrition, Transport, Disease, Respiration)",
          "Term 7-8 (Coordination, Homeostasis, Genetics)",
        ],
        bucketsMy: [
          "တစ်ဆယ့်တစ်-သုံး (ဆဲလ်များ၊ မော်လီကျူးများ၊ အင်ဇိုင်းများ၊ အပင်များ)",
          "လေး-ခြောက် (အာဟာရ၊ သယ်ယူပို့ဆောင်ရေး၊ ရောဂါ၊ Respiration)",
          "ခုနစ်-အဌမ (ညှိနှိုင်းမှု၊ Homeostasis၊ မျိုးရိုးဗီဇ)",
        ],
        items: [
          SortingItem(
            id: "igcsebio-w36-sort-1",
            labelEn: "The five-kingdom classification system",
            labelMy: "ဘုရင်ငါးမျိုး ခွဲခြားမှုစနစ်",
            correctBucketEn: "Term 1-3 (Cells, Molecules, Enzymes, Plants)",
            correctBucketMy:
                "တစ်ဆယ့်တစ်-သုံး (ဆဲလ်များ၊ မော်လီကျူးများ၊ အင်ဇိုင်းများ၊ အပင်များ)",
          ),
          SortingItem(
            id: "igcsebio-w36-sort-2",
            labelEn: "Diseases and their transmission routes",
            labelMy: "ရောဂါများနှင့် ၎င်းတို့၏ ကူးစက်မှု လမ်းကြောင်းများ",
            correctBucketEn:
                "Term 4-6 (Nutrition, Transport, Disease, Respiration)",
            correctBucketMy:
                "လေး-ခြောက် (အာဟာရ၊ သယ်ယူပို့ဆောင်ရေး၊ ရောဂါ၊ Respiration)",
          ),
          SortingItem(
            id: "igcsebio-w36-sort-3",
            labelEn: "Pedigree charts and inheritance patterns",
            labelMy: "Pedigree Chart များနှင့် မျိုးရိုးလိုက်ခြင်း ပုံစံများ",
            correctBucketEn: "Term 7-8 (Coordination, Homeostasis, Genetics)",
            correctBucketMy:
                "ခုနစ်-အဌမ (ညှိနှိုင်းမှု၊ Homeostasis၊ မျိုးရိုးဗီဇ)",
          ),
          SortingItem(
            id: "igcsebio-w36-sort-4",
            labelEn: "Aerobic and anaerobic respiration",
            labelMy: "Aerobic နှင့် Anaerobic Respiration",
            correctBucketEn:
                "Term 4-6 (Nutrition, Transport, Disease, Respiration)",
            correctBucketMy:
                "လေး-ခြောက် (အာဟာရ၊ သယ်ယူပို့ဆောင်ရေး၊ ရောဂါ၊ Respiration)",
          ),
          SortingItem(
            id: "igcsebio-w36-sort-5",
            labelEn: "The pupil reflex and hormones versus nerves",
            labelMy: "Pupil Reflex နှင့် Hormones vs Nerves",
            correctBucketEn: "Term 7-8 (Coordination, Homeostasis, Genetics)",
            correctBucketMy:
                "ခုနစ်-အဌမ (ညှိနှိုင်းမှု၊ Homeostasis၊ မျိုးရိုးဗီဇ)",
          ),
          SortingItem(
            id: "igcsebio-w36-sort-6",
            labelEn: "Testing a leaf for starch",
            labelMy: "အရွက်တစ်ချပ်ကို Starch အတွက် စမ်းသပ်ခြင်း",
            correctBucketEn: "Term 1-3 (Cells, Molecules, Enzymes, Plants)",
            correctBucketMy:
                "တစ်ဆယ့်တစ်-သုံး (ဆဲလ်များ၊ မော်လီကျူးများ၊ အင်ဇိုင်းများ၊ အပင်များ)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w36-d4",
      dayNumber: 4,
      titleEn: "Reading: Nandar Win's Full Circle",
      titleMy: "စာဖတ်ခြင်း - နန္ဒာဝင်း၏ ပြည့်စုံသော စက်ဝန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nandar Win's Full Circle",
        titleMy: "နန္ဒာဝင်း၏ ပြည့်စုံသော စက်ဝန်း",
        passageEn:
            "On the last day of the course, Nandar Win found her very first notebook entry from Term 1, Week 1: a short paragraph about her Biology Club nature walk along the Ayeyarwady riverbank, where she had first learned the mnemonic MRS GREN and marvelled at the idea that a motionless banyan tree and a hunting heron were both, in the same scientific sense, alive. Reading it again now, thirty-six weeks later, she was struck by how much had built on that single foundation.\n\nShe traced the thread forward in her mind: the seven life processes she had learned in Week 1 led directly into the cell structures responsible for carrying them out, which led into the enzymes controlling the chemical reactions inside those cells, which led into the digestive and circulatory systems distributing the products of those reactions around a whole body, which led into the nervous and hormonal systems coordinating how that whole body responded to its environment, and finally into the genetic instructions, passed from parents to offspring, that built a new organism capable of doing all of this from scratch. What had once felt like nine separate, disconnected terms now read to her as a single continuous argument, each part resting on the part before it.\n\nHer teacher, closing the final lesson, reminded the class that IGCSE Biology was not an ending but a foundation -- the same way Term 1's MRS GREN had turned out to underpin everything that followed, concepts like cell membranes, DNA, and enzymes would resurface in A-Level Biology in far greater depth, for any student who chose to continue. Nandar Win closed her notebook, thought once more about the grey heron on the riverbank, Ardea cinerea, and realised that learning its binomial name all those months ago had been her very first step into a way of thinking about the living world that she now, unmistakably, had made her own.",
        passageMy:
            "သင်တန်း၏ နောက်ဆုံးနေ့တွင် နန္ဒာဝင်းသည် သူမ၏ ပထမဆုံး မှတ်စုစာအုပ် ရေးသွင်းချက်ကို ရှာတွေ့ခဲ့သည် - ပထမနှစ်ဝက်၊ ပထမပတ်မှ ဧရာဝတီမြစ်ကမ်းတစ်လျှောက် သူမ၏ ဇီဝဗေဒအသင်း သဘာဝလမ်းလျှောက်ခရီးအကြောင်း စာပိုဒ်တိုတစ်ခု၊ ထိုနေရာတွင် သူမသည် MRS GREN မှတ်ဉာဏ်ကူကို ပထမဆုံး သင်ယူခဲ့ပြီး ငြိမ်သက်နေသော ညောင်ပင်ကြီးတစ်ပင်နှင့် အမဲလိုက်နေသော ဒီရင်းငှက်တစ်ကောင်တို့သည် သိပ္ပံနည်းတူ တူညီသော အနက်အားဖြင့် သက်ရှိနှစ်ကောင်စလုံး ဖြစ်ကြောင်း အယူအဆကို အံ့ဩခဲ့ခဲ့သည်။ ယခု ၃၆ ပတ်ကြာပြီးနောက် ၎င်းကို ပြန်ဖတ်ကြည့်ရာ ထိုအခြေခံတစ်ခုတည်းပေါ်တွင် မည်မျှများစွာ တည်ဆောက်ထားခဲ့ကြောင်းကို သူမ ထိတ်လန့်တွေ့ရှိခဲ့သည်။\n\nသူမသည် ချည်ကြိုးကို စိတ်ထဲမှ ရှေ့သို့ ခြေရာခံခဲ့သည်- ပထမပတ်တွင် သင်ယူခဲ့သော သက်ရှင်ဖြစ်စဉ်ခုနစ်ခုသည် ၎င်းတို့ကို ဆောင်ရွက်ရန် တာဝန်ရှိသော ဆဲလ်ဖွဲ့စည်းပုံများဆီသို့ တိုက်ရိုက် ဦးတည်ခဲ့ပြီး၊ ထိုဆဲလ်များအတွင်း ဓာတုတုံ့ပြန်မှုများကို ထိန်းချုပ်သော အင်ဇိုင်းများဆီသို့ ဦးတည်ခဲ့ကာ၊ ထိုတုံ့ပြန်မှုများ၏ ရလဒ်များကို ခန္ဓာကိုယ်တစ်ခုလုံးတစ်ဝန်း ဖြန့်ဝေပေးသော အစာချေစနစ်နှင့် သွေးလည်ပတ်မှုစနစ်ဆီသို့ ဦးတည်ခဲ့ပြီး၊ ထိုခန္ဓာကိုယ်တစ်ခုလုံးက ၎င်း၏ ပတ်ဝန်းကျင်အား မည်သို့ တုံ့ပြန်ကြောင်း ညှိနှိုင်းပေးသော အာရုံကြောနှင့် ဟိုမုန်းစနစ်များဆီသို့ ဦးတည်ခဲ့ကာ၊ နောက်ဆုံးတွင် ဤအရာအားလုံးကို အစအဆုံးလုပ်ဆောင်နိုင်စွမ်းရှိသော သက်ရှိသစ်တစ်ခုကို တည်ဆောက်ပေးသော မိဘများမှ မျိုးဆက်ဆီသို့ ဆက်ခံခဲ့သော မျိုးရိုးဗီဇညွှန်ကြားချက်များဆီသို့ ဦးတည်ခဲ့သည်။ တစ်ချိန်က သီးခြား၊ ချိတ်ဆက်မှုမရှိသော နှစ်ဝက်ကိုးခုကဲ့သို့ ခံစားခဲ့ရသော အရာသည် ယခု သူမအတွက် တစ်ခုနှင့်တစ်ခု အခြေခံပေးနေသော ဆက်တိုက် ငြင်းချက်တစ်ခုတည်းအဖြစ် ဖတ်ရှုနိုင်လာခဲ့သည်။\n\nနောက်ဆုံးသင်ခန်းစာကို ပိတ်လိုက်စဉ် သူမ၏ ဆရာမက IGCSE ဇီဝဗေဒသည် အဆုံးသတ်တစ်ခု မဟုတ်ဘဲ အခြေခံအုတ်မြစ်တစ်ခု ဖြစ်ကြောင်း အတန်းအား ပြန်သတိပေးခဲ့သည် -- ပထမနှစ်ဝက် MRS GREN သည် နောက်ဆက်တွဲအားလုံးကို ထောက်ပံ့ပေးသကဲ့သို့ပင်၊ ဆက်လက်လေ့လာရန် ရွေးချယ်သော ကျောင်းသားတိုင်းအတွက် Cell Membrane, DNA နှင့် Enzyme ကဲ့သို့သော သဘောတရားများသည် A-Level ဇီဝဗေဒတွင် ပို၍ ကျယ်ပြန့်သော အနက်ရှိုင်းအတွင်း ပြန်လည် ပေါ်ထွက်လာလိမ့်မည်။ နန္ဒာဝင်းသည် သူမ၏ မှတ်စုစာအုပ်ကို ပိတ်လိုက်ပြီး၊ မြစ်ကမ်းစပ်ရှိ ပြာညိုရောင်ဒီရင်းငှက် Ardea cinerea အကြောင်း တစ်ကြိမ်ထပ်မံ တွေးတောကာ၊ လများစွာအလို ၎င်း၏ ဒွိနာမ်အမည်ကို သင်ယူခဲ့ခြင်းသည် ယခု ကျယ်ကျယ်ပြန့်ပြန့် သူမကိုယ်ပိုင် ဖြစ်လာခဲ့ပြီးဖြစ်သော သက်ရှိလောကအကြောင်း တွေးခေါ်ပုံ တစ်မျိုးဆီသို့ သူမ၏ ပထမဆုံး ခြေလှမ်းပင်ဖြစ်ခဲ့ကြောင်း သဘောပေါက်လာခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what did Nandar Win find on the last day of the course?",
            questionMy:
                "သင်တန်း၏ နောက်ဆုံးနေ့တွင် နန္ဒာဝင်း အဘယ်ကို ရှာတွေ့ခဲ့ကြောင်းကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Her very first notebook entry from Term 1, Week 1",
              "A brand new textbook",
              "A letter from her teacher",
              "A map of the school",
            ],
            optionsMy: [
              "ပထမနှစ်ဝက်၊ ပထမပတ်မှ သူမ၏ ပထမဆုံး မှတ်စုစာအုပ် ရေးသွင်းချက်",
              "စာအုပ်အသစ်တစ်အုပ်",
              "သူမ၏ ဆရာမထံမှ စာတစ်စောင်",
              "ကျောင်း၏ မြေပုံတစ်ခု",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first sentence of paragraph 1.",
              "This connects back to the very first reading passage of the whole course.",
            ],
            hintsMy: [
              "စာပိုဒ် ၁ ၏ ပထမစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ သင်တန်းတစ်ခုလုံး၏ ပထမဆုံး စာဖတ်ခြင်း အပိုင်းနှင့် ပြန်ချိတ်ဆက်ထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how did Nandar Win now see the nine terms of the course?",
            questionMy:
                "သင်တန်း၏ နှစ်ဝက်ကိုးခုကို နန္ဒာဝင်း ယခုအခါ မည်သို့ မြင်လာခဲ့ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "As a single continuous argument, each part resting on the part before it",
              "As nine completely unrelated subjects",
              "As a waste of time",
              "As something she wanted to forget immediately",
            ],
            optionsMy: [
              "တစ်ခုနှင့်တစ်ခု အခြေခံပေးနေသော ဆက်တိုက် ငြင်းချက်တစ်ခုတည်းအဖြစ်",
              "လုံးဝ မသက်ဆိုင်သော ဘာသာရပ် ကိုးခုအဖြစ်",
              "အချိန်ဖြုန်းမှုတစ်ခုအဖြစ်",
              "ချက်ချင်း မေ့ချင်သော အရာတစ်ခုအဖြစ်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of paragraph 2.",
              "This reflects how each term's content built on the previous one's foundation.",
            ],
            hintsMy: [
              "စာပိုဒ် ၂ ၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်ကို နှစ်ဝက်တစ်ခုစီ၏ အကြောင်းအရာသည် ယခင်တစ်ခု၏ အခြေခံအုတ်မြစ်ပေါ်တွင် မည်သို့ တည်ဆောက်ခဲ့ကြောင်း ထင်ဟပ်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did the teacher say about IGCSE Biology's relationship to A-Level Biology?",
            questionMy:
                "IGCSE ဇီဝဗေဒနှင့် A-Level ဇီဝဗေဒ၏ ဆက်နွှယ်မှုအကြောင်း ဆရာမ မည်သို့ ပြောခဲ့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "IGCSE was a foundation, and its concepts would resurface in A-Level in greater depth",
              "A-Level Biology has nothing to do with IGCSE Biology",
              "Students should forget everything they learned in IGCSE",
              "IGCSE Biology is more advanced than A-Level Biology",
            ],
            optionsMy: [
              "IGCSE သည် အခြေခံအုတ်မြစ်တစ်ခုဖြစ်ပြီး ၎င်း၏ သဘောတရားများသည် A-Level တွင် ပို၍ ကျယ်ပြန့်သော အနက်ရှိုင်းအတွင်း ပြန်လည် ပေါ်ထွက်လာမည်",
              "A-Level ဇီဝဗေဒသည် IGCSE ဇီဝဗေဒနှင့် လုံးဝ မသက်ဆိုင်ပါ",
              "ကျောင်းသားများသည် IGCSE တွင် သင်ယူခဲ့သမျှကို မေ့ရမည်",
              "IGCSE ဇီဝဗေဒသည် A-Level ဇီဝဗေဒထက် ပို၍ အဆင့်မြင့်သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining IGCSE Biology as a foundation, not an ending.",
              "Cell membranes, DNA, and enzymes are given as specific examples that will resurface.",
            ],
            hintsMy: [
              "IGCSE ဇီဝဗေဒကို အဆုံးသတ်တစ်ခု မဟုတ်ဘဲ အခြေခံအုတ်မြစ်တစ်ခုအဖြစ် ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Cell Membrane, DNA နှင့် Enzyme တို့ကို ပြန်လည် ပေါ်ထွက်လာမည့် တိတိကျကျ ဥပမာများအဖြစ် ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What realisation did Nandar Win reach about the heron's binomial name, Ardea cinerea, at the end of the passage?",
            questionMy:
                "စာပိုဒ်၏ အဆုံးတွင် ဒီရင်းငှက်၏ ဒွိနာမ်အမည် Ardea cinerea အကြောင်း နန္ဒာဝင်း မည်သည့် သဘောပေါက်မှုသို့ ရောက်ရှိခဲ့သနည်း။",
            optionsEn: [
              "Learning it had been her very first step into a way of thinking about the living world that was now her own",
              "She had completely forgotten the name",
              "The name was actually incorrect",
              "It had no connection to her learning journey at all",
            ],
            optionsMy: [
              "၎င်းကို သင်ယူခဲ့ခြင်းသည် ယခု ကျယ်ကျယ်ပြန့်ပြန့် သူမကိုယ်ပိုင် ဖြစ်လာခဲ့ပြီးဖြစ်သော သက်ရှိလောကအကြောင်း တွေးခေါ်ပုံ တစ်မျိုးဆီသို့ သူမ၏ ပထမဆုံး ခြေလှမ်းပင် ဖြစ်ခဲ့ခြင်း",
              "သူမသည် အမည်ကို လုံးဝ မေ့ပျောက်သွားခဲ့ခြင်း",
              "အမည်သည် အမှန်တကယ် မှားယွင်းနေခြင်း",
              "သူမ၏ သင်ယူမှု ခရီးစဉ်နှင့် လုံးဝ ဆက်စပ်မှု မရှိခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of the passage.",
              "This connects the very first lesson of the course to its final reflection.",
            ],
            hintsMy: [
              "စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်ကို သင်တန်း၏ ပထမဆုံးသင်ခန်းစာကို ၎င်း၏ နောက်ဆုံး ပြန်လည်သုံးသပ်ချက်နှင့် ချိတ်ဆက်ထားသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-bio-w36-d5",
      dayNumber: 5,
      titleEn: "IGCSE Biology Final Capstone",
      titleMy: "IGCSE ဇီဝဗေဒ နောက်ဆုံး အထွတ်အထိပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Osmosis is the diffusion of water through a partially permeable membrane, from...",
          questionMy:
              "Osmosis သည် အစိတ်ပိုင်း စိမ့်ဝင်နိုင်သော အမြှေးပါးတစ်ခုကို ဖြတ်၍ ...မှ ရေ Diffuse ဖြစ်ခြင်း ဖြစ်သည်",
          optionsEn: [
            "Higher water potential to lower water potential",
            "Lower water potential to higher water potential",
            "Hot to cold only",
            "Light to dark only",
          ],
          optionsMy: [
            "ရေအလားအလာ မြင့်ရာမှ နိမ့်ရာသို့",
            "ရေအလားအလာ နိမ့်ရာမှ မြင့်ရာသို့",
            "ပူရာမှ အေးရာသို့သာ",
            "အလင်းမှ အမှောင်သို့သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which pair correctly matches a hormone with its effect on blood glucose?",
          questionMy:
              "Hormone တစ်ခုနှင့် သွေးဂလူးကို့စ်အပေါ် ၎င်း၏ သက်ရောက်မှုကို မှန်ကန်စွာ တွဲစပ်ထားသည့်အရာမှာ အဘယ်နည်း",
          optionsEn: [
            "Insulin lowers blood glucose; glucagon raises it",
            "Insulin raises blood glucose; glucagon lowers it",
            "Both insulin and glucagon raise blood glucose",
            "Neither hormone affects blood glucose",
          ],
          optionsMy: [
            "Insulin က သွေးဂလူးကို့စ်ကို လျှော့ချသည်၊ Glucagon က မြှင့်တင်သည်",
            "Insulin က သွေးဂလူးကို့စ်ကို မြှင့်တင်သည်၊ Glucagon က လျှော့ချသည်",
            "Insulin နှင့် Glucagon နှစ်ခုစလုံး သွေးဂလူးကို့စ်ကို မြှင့်တင်သည်",
            "Hormone နှစ်မျိုးလုံး သွေးဂလူးကို့စ်အပေါ် သက်ရောက်မှု မရှိပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A recessive condition appearing in a child of two unaffected parents shows that...",
          questionMy:
              "မထိခိုက်သော မိဘနှစ်ဦး၏ ကလေးတွင် Recessive အခြေအနေတစ်ခု ပေါ်ထွက်ခြင်းက ပြသသည်မှာ...",
          optionsEn: [
            "Both parents must be carriers of the recessive allele",
            "One parent must be affected too",
            "This is genetically impossible",
            "Neither parent carries the allele",
          ],
          optionsMy: [
            "မိဘနှစ်ဦးစလုံးသည် Recessive Allele ၏ Carrier ဖြစ်ရမည်",
            "မိဘတစ်ဦးလည်း ထိခိုက်ရမည်",
            "ဤသည် Genetically မဖြစ်နိုင်ပါ",
            "မိဘတစ်ဦးမျှ Allele ကို မသယ်ဆောင်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In natural selection, an advantageous variation tends to become more common in a population because...",
          questionMy:
              "Natural Selection တွင် အားသာချက်ရှိသော Variation တစ်ခုသည် လူဦးရေထဲတွင် ပို၍ ပုံမှန်ဖြစ်လာလေ့ရှိသည့် အကြောင်းရင်းမှာ...",
          optionsEn: [
            "Organisms carrying it survive and reproduce more successfully",
            "Organisms carrying it always die immediately",
            "The environment never changes",
            "It has no effect on survival at all",
          ],
          optionsMy: [
            "၎င်းကို သယ်ဆောင်သော သက်ရှိများ ပို၍ အောင်မြင်စွာ ရှင်သန်ကာ မျိုးပွားလေ့ရှိသောကြောင့်",
            "၎င်းကို သယ်ဆောင်သော သက်ရှိများ အမြဲ ချက်ချင်း သေဆုံးလေ့ရှိသောကြောင့်",
            "ပတ်ဝန်းကျင်သည် ဘယ်တော့မှ မပြောင်းလဲသောကြောင့်",
            "ရှင်သန်နိုင်စွမ်းအပေါ် မည်သည့်အကျိုးသက်ရောက်မှုမျှ မရှိသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Congratulations on completing IGCSE Biology Term 1 through Term 9! Which best describes the overall structure of the course you just finished?",
          questionMy:
              "IGCSE ဇီဝဗေဒ ပထမနှစ်ဝက်မှ နဝမနှစ်ဝက်အထိ ပြီးမြောက်အောင် မကြာခဏ ချီးမြှင့်ပါသည်! ယခုပြီးစီးခဲ့သော သင်တန်း၏ အလုံးစုံဖွဲ့စည်းပုံကို အကောင်းဆုံးဖော်ပြသည့်အရာမှာ အဘယ်နည်း",
          optionsEn: [
            "Cell biology and molecules built toward whole-organism systems, which built toward genetics and ecology",
            "Nine completely random, unrelated topics",
            "A course covering only plants, with no mention of animals or genetics",
            "A course with no practical or exam-focused content at all",
          ],
          optionsMy: [
            "ဆဲလ်ဇီဝဗေဒနှင့် မော်လီကျူးများသည် သတ္တဝါတစ်ကောင်လုံး၏ စနစ်များဆီသို့ တည်ဆောက်ပြီး ၎င်းက မျိုးရိုးဗီဇနှင့် ဂေဟဗေဒဆီသို့ တည်ဆောက်ခဲ့ခြင်း",
            "လုံးဝ ကျပန်း၊ မသက်ဆိုင်သော ဘာသာရပ် ကိုးခု",
            "အပင်များကိုသာ ဖုံးအုပ်ပြီး တိရစ္ဆာန် သို့မဟုတ် မျိုးရိုးဗီဇအကြောင်း လုံးဝ ဖော်ပြခြင်းမရှိသော သင်တန်း",
            "လက်တွေ့ သို့မဟုတ် စာမေးပွဲအာရုံစိုက်သော အကြောင်းအရာ လုံးဝ မပါဝင်သော သင်တန်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 9: "Biotechnology, Ecosystems and Final Exam Prep"
// (Weeks 33-36)
// =====================================================================

const CourseTermDef igcseBiologyTerm9 = CourseTermDef(
  id: "course-igcse-bio-t9",
  termNumber: 9,
  titleEn: "Biotechnology, Ecosystems and Final Exam Prep",
  titleMy: "ဇီဝနည်းပညာ၊ ဂေဟစနစ်များနှင့် နောက်ဆုံး စာမေးပွဲပြင်ဆင်မှု",
  certificateTitleEn: "Biotechnology, Ecosystems and Final Exam Prep",
  certificateTitleMy:
      "ဇီဝနည်းပညာ၊ ဂေဟစနစ်များနှင့် နောက်ဆုံး စာမေးပွဲပြင်ဆင်မှု",
  weeks: [_igcseBioWeek33, _igcseBioWeek34, _igcseBioWeek35, _igcseBioWeek36],
);

// =====================================================================
// IGCSE Biology -- Full 36-Week Pathway (Grade.igcse)
// =====================================================================

/// The IGCSE Biology course's full-year pathway. All 9 terms (Weeks
/// 1-36) are now authored: Term 1 (Characteristics and Classification
/// of Living Organisms), Term 2 (Movement In and Out of Cells and
/// Biological Molecules), Term 3 (Enzymes and Plant Nutrition), Term 4
/// (Human Nutrition and Transport in Plants), Term 5 (Transport in
/// Animals and Disease), Term 6 (Gas Exchange and Respiration), Term 7
/// (Coordination, Response and Homeostasis), Term 8 (Reproduction and
/// Genetics), and Term 9 (Biotechnology, Ecosystems and Final Exam
/// Prep, closing with a Week 36 IGCSE Biology Graduation capstone),
/// following the blueprint at
/// `ai_data_bridge/igcse_biology_all_terms.dart`.
const CoursePathwayDef igcseBiologyPathway = CoursePathwayDef(
  id: "course-igcse-biology",
  subject: "biology",
  grade: Grade.igcse,
  titleEn: "IGCSE Biology",
  titleMy: "IGCSE ဇီဝဗေဒ",
  descriptionEn:
      "The full IGCSE Biology course: daily bite-sized lessons across nine thematic terms preparing students for the real IGCSE Biology examination, built from the ai_data_bridge/igcse_biology_all_terms.dart blueprint. Term 1, Characteristics and Classification of Living Organisms, covers the seven MRS GREN life processes and the binomial naming system, the five-kingdom classification system with vertebrate/invertebrate groups and dichotomous keys, and plant/animal cell ultrastructure with specialised cells and levels of organisation, closing with a Cellular Biology Practical Studio capstone on microscope usage and magnification calculations. Term 2, Movement In and Out of Cells and Biological Molecules, covers diffusion and osmosis (including water potential, turgid and plasmolysed cells), active transport against a concentration gradient using ATP, and the building blocks of carbohydrates/proteins/lipids, closing with a Biological Molecules Practical Lab capstone on the four food tests (Benedict's, iodine, Biuret, and the ethanol emulsion test). Term 3, Enzymes and Plant Nutrition, covers enzyme action and the lock-and-key model, factors affecting enzyme activity (temperature/denaturation and pH), and photosynthesis with leaf structure adaptations for gas exchange, closing with a Plant Nutrition Practical Studio capstone on testing leaves for starch and limiting-factor experiments. Term 4, Human Nutrition and Transport in Plants, covers balanced diet components and deficiency diseases, the human alimentary canal and the five stages of digestion (ingestion/digestion/absorption/assimilation/egestion) including bile and pancreatic juice, and xylem/phloem transport with transpiration pull, closing with a Physiology Practical Studio capstone on potometer experiments and a visking-tubing digestion simulation. Term 5, Transport in Animals and Disease, covers the structure of the heart and double circulation, blood components and immunity (phagocytosis, antibodies, active/passive immunity), and disease transmission routes and prevention, closing with a Circulation and Disease Studio capstone on heart rate investigations. Term 6, Gas Exchange and Respiration, covers alveoli adaptations and the mechanics of breathing, the harmful effects of tobacco smoke (nicotine, tar, carbon monoxide) and smoking-related diseases, and aerobic/anaerobic respiration with oxygen debt, closing with a Respiration Practical Lab capstone on respirometer and yeast fermentation experiments. Term 7, Coordination, Response and Homeostasis, covers the nervous system and reflex arcs, the eye's pupil reflex and hormones versus nerves, and blood glucose control (insulin/glucagon) and thermoregulation, closing with a Coordination and Homeostasis Studio capstone on diabetes mellitus case studies. Term 8, Reproduction and Genetics, covers asexual/sexual reproduction with pollination and the human reproductive system, DNA/genes/chromosomes with mitosis versus meiosis and monohybrid Punnett-square crosses, and continuous/discontinuous variation with natural selection and selective breeding, closing with a Genetics Problem-Solving Studio capstone on test crosses and pedigree chart analysis. Term 9, Biotechnology, Ecosystems and Final Exam Prep, covers biotechnology and genetic engineering (plasmids, fermenters, and genetically engineered insulin), food chains/webs and the roughly 10% energy transfer between trophic levels, and a Week 35 full past-paper mock exam week revising every prior term, closing with a Week 36 IGCSE Biology Graduation capstone reflecting on the whole course and previewing A-Level Biology.",
  descriptionMy:
      "IGCSE ဇီဝဗေဒ သင်တန်းအပြည့်အစုံ -- တကယ့် IGCSE ဇီဝဗေဒ စာမေးပွဲအတွက် ကျောင်းသားများကို အသင့်ပြင်ပေးရန် ai_data_bridge/igcse_biology_all_terms.dart blueprint မှ တည်ဆောက်ထားသော အပိုင်းကိုးပိုင်း နေ့စဉ်အတိုချုပ်သင်ခန်းစာများ။ ပထမနှစ်ဝက်၊ သက်ရှိသတ္တဝါများ၏ လက္ခဏာများနှင့် အမျိုးအစားခွဲခြားခြင်းသည် MRS GREN သက်ရှင်ဖြစ်စဉ်ခုနစ်ခုနှင့် Binomial အမည်တပ်စနစ်၊ ဘုရင်ငါးမျိုး ခွဲခြားမှုစနစ်နှင့် ကျောရိုးရှိ/ကျောရိုးမဲ့ အုပ်စုများ၊ Dichotomous Keys၊ အပင်/တိရစ္ဆာန်ဆဲလ်ဖွဲ့စည်းပုံ အသေးစိတ်နှင့် အထူးပြုဆဲလ်များ၊ အဆင့်ဆင့်စုစည်းပုံတို့ကို ဖုံးအုပ်ပြီး Microscope သုံးနည်းနှင့် Magnification တွက်ချက်မှုအကြောင်း ဆဲလ်ဇီဝဗေဒ လက်တွေ့စာသင်ခန်း အထွတ်အထိပ်ဖြင့် ပြီးဆုံးသည်။ ဒုတိယနှစ်ဝက်၊ ဆဲလ်တွင်း/အပြင် ရွေ့လျားမှုနှင့် ဇီဝ မော်လီကျူးများသည် Diffusion နှင့် Osmosis (ရေအလားအလာ၊ Turgid နှင့် Plasmolysed ဆဲလ်များအပါအဝင်)၊ ATP သုံး၍ သိပ်သည်းဆကွာဟမှုကို ဆန့်ကျင်သော Active Transport၊ ကာဗိုဟိုက်ဒရိတ်/ပရိုတင်း/Lipid တို့၏ အခြေခံတည်ဆောက်ပုံများကို ဖုံးအုပ်ပြီး အစားအစာစမ်းသပ်မှု လေးမျိုး (Benedict's, Iodine, Biuret နှင့် Ethanol Emulsion Test) အကြောင်း ဇီဝ မော်လီကျူးများ ဓာတ်ခွဲခန်း လက်တွေ့စမ်းသပ်မှု အထွတ်အထိပ်ဖြင့် ပြီးဆုံးသည်။ တတိယနှစ်ဝက်၊ အင်ဇိုင်းများနှင့် အပင် အာဟာရသည် အင်ဇိုင်းလုပ်ဆောင်ချက်နှင့် Lock-and-Key Model၊ အင်ဇိုင်း လုပ်ဆောင်ချက်ကို သက်ရောက်သော အကြောင်းရင်းများ (အပူချိန်/Denaturation နှင့် pH)၊ ဓာတ်ငွေ့ဖလှယ်မှုအတွက် အရွက်ဖွဲ့စည်းပုံ လိုက်လျောညီထွေမှုပါဝင်သော Photosynthesis ကို ဖုံးအုပ်ပြီး အရွက်များတွင် Starch စမ်းသပ်ခြင်းနှင့် Limiting Factor စမ်းသပ်မှုများအကြောင်း အပင် အာဟာရ လက်တွေ့စမ်းသပ်မှု အလုပ်ရုံ အထွတ်အထိပ်ဖြင့် ပြီးဆုံးသည်။ စတုတ္ထနှစ်ဝက်၊ လူသားတို့၏ အာဟာရနှင့် အပင်များရှိ သယ်ယူပို့ဆောင်ရေးသည် Balanced Diet အစိတ်အပိုင်းများနှင့် ချို့တဲ့မှုရောဂါများ၊ လူ့အစာခြေလမ်းကြောင်းနှင့် အစာချေဖျက်ခြင်း အဆင့်ငါးဆင့် (Ingestion/Digestion/Absorption/Assimilation/Egestion) အပါအဝင် Bile နှင့် Pancreatic Juice၊ Transpiration Pull ပါဝင်သော Xylem/Phloem သယ်ယူပို့ဆောင်ရေးကို ဖုံးအုပ်ပြီး Potometer စမ်းသပ်မှုများနှင့် Visking Tubing Digestion Simulation အကြောင်း ဇီဝကမ္မဗေဒ လက်တွေ့စမ်းသပ်မှု အလုပ်ရုံ အထွတ်အထိပ်ဖြင့် ပြီးဆုံးသည်။ ပဉ္စမနှစ်ဝက်၊ တိရစ္ဆာန်များရှိ သယ်ယူပို့ဆောင်ရေးနှင့် ရောဂါဗေဒသည် နှလုံး၏ ဖွဲ့စည်းပုံနှင့် Double Circulation၊ သွေးအစိတ်အပိုင်းများနှင့် ကိုယ်ခံအားစနစ် (Phagocytosis, Antibody, Active/Passive Immunity)၊ ရောဂါကူးစက်မှု လမ်းကြောင်းများနှင့် ကာကွယ်ရေးကို ဖုံးအုပ်ပြီး နှလုံးခုန်နှုန်း စူးစမ်းလေ့လာမှုများအကြောင်း သွေးလည်ပတ်မှုနှင့် ရောဂါဗေဒ အလုပ်ရုံ အထွတ်အထိပ်ဖြင့် ပြီးဆုံးသည်။ ဆဌမနှစ်ဝက်၊ ဓာတ်ငွေ့လဲလှယ်မှုနှင့် Respiration သည် Alveoli လိုက်လျောညီထွေမှုများနှင့် အသက်ရှူခြင်း ယန္တရားများ၊ ဆေးလိပ်ခိုးငွေ့၏ အန္တရာယ်ရှိသော သက်ရောက်မှုများ (Nicotine, Tar, ကာဗွန်မိုနောက်ဆိုဒ်) နှင့် ဆေးလိပ်ဆိုင်ရာ ရောဂါများ၊ Oxygen Debt ပါဝင်သော Aerobic/Anaerobic Respiration ကို ဖုံးအုပ်ပြီး Respirometer နှင့် တဆေး Fermentation စမ်းသပ်မှုများအကြောင်း Respiration ဓာတ်ခွဲခန်း လက်တွေ့စမ်းသပ်မှု အထွတ်အထိပ်ဖြင့် ပြီးဆုံးသည်။ သတ္တမနှစ်ဝက်၊ ညှိနှိုင်းမှု၊ တုံ့ပြန်မှုနှင့် ဟန်ချက်ထိန်းသိမ်းမှုသည် အာရုံကြောစနစ်နှင့် Reflex Arc, မျက်စိ၏ Pupil Reflex နှင့် Hormones vs Nerves, သွေးဂလူးကို့စ်ထိန်းချုပ်မှု (Insulin/Glucagon) နှင့် Thermoregulation ကို ဖုံးအုပ်ပြီး ဆီးချိုရောဂါ Case Study များအကြောင်း ညှိနှိုင်းမှုနှင့် ဟန်ချက်ထိန်းသိမ်းမှု အလုပ်ရုံ အထွတ်အထိပ်ဖြင့် ပြီးဆုံးသည်။ အဌမနှစ်ဝက်၊ မျိုးပွားခြင်းနှင့် မျိုးရိုးဗီဇသည် Pollination နှင့် လူ့မျိုးပွားစနစ် ပါဝင်သော Asexual/Sexual Reproduction၊ Mitosis vs Meiosis နှင့် Monohybrid Punnett-Square Cross ပါဝင်သော DNA/Gene/Chromosome၊ Natural Selection နှင့် Selective Breeding ပါဝင်သော Continuous/Discontinuous Variation ကို ဖုံးအုပ်ပြီး Test Cross များနှင့် Pedigree Chart ခွဲခြမ်းစိတ်ဖြာခြင်းအကြောင်း မျိုးရိုးဗီဇ ပြဿနာဖြေရှင်းခြင်း အလုပ်ရုံ အထွတ်အထိပ်ဖြင့် ပြီးဆုံးသည်။ နဝမနှစ်ဝက်၊ ဇီဝနည်းပညာ၊ ဂေဟစနစ်များနှင့် နောက်ဆုံး စာမေးပွဲပြင်ဆင်မှုသည် ဇီဝနည်းပညာနှင့် Genetic Engineering (Plasmid, Fermenter နှင့် Genetically Engineered Insulin)၊ အစားအစာကွင်းဆက်/ကွန်ရက်များနှင့် Trophic Level များကြား ၁၀% ခန့် စွမ်းအင်လွှဲပြောင်းမှု၊ ယခင်နှစ်ဝက်တိုင်းကို ပြန်လည်ကျက်မှတ်သော Week 35 မေးခွန်းဟောင်းပုံစံတူ စာမေးပွဲအပတ်တစ်ခုလုံးကို ဖုံးအုပ်ပြီး၊ သင်တန်းတစ်ခုလုံးကို ပြန်လည်သုံးသပ်ကာ A-Level ဇီဝဗေဒကို အကြိုကြည့်ရှုသော Week 36 IGCSE ဇီဝဗေဒ ဘွဲ့နှင်းသဘင် အထွတ်အထိပ်ဖြင့် ပြီးဆုံးသည်။",
  totalWeeks: 36,
  terms: [
    igcseBiologyTerm1,
    igcseBiologyTerm2,
    igcseBiologyTerm3,
    igcseBiologyTerm4,
    igcseBiologyTerm5,
    igcseBiologyTerm6,
    igcseBiologyTerm7,
    igcseBiologyTerm8,
    igcseBiologyTerm9,
  ],
);
