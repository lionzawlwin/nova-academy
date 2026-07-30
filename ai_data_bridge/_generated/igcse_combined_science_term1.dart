// File: ai_data_bridge/_generated/igcse_combined_science_term1.dart
// IGCSE Combined Science -- Term 1: "Biology - Cell Biology & Organisation"
// (Weeks 1-4), authored from the corrected weekly topic map in
// ai_data_bridge/igcse_combined_science_all_terms.dart. Staging artifact
// only -- not yet wired into course_pathway_bank.dart's Grade.igcse
// pathway. Follows the exact DailyLessonDef/CourseWeekDef/CourseTermDef
// schema and id/xp conventions already established by
// _secondary3SciencePathway (Year 9 Science), including its rotating cast
// of named Myanmar-student protagonists (one per week's reading passage,
// not a single fixed character).
//
// Week 1 (Cell Structure and Organisation): plant vs. animal cell
// organelles and how specialised cells adapt for specific functions.
// Week 2 (Movement In and Out of Cells): diffusion, osmosis, and active
// transport across membranes. Week 3 (Biological Molecules and Enzymes):
// carbohydrates/fats/proteins and enzyme action, including the effect of
// temperature and pH. Week 4 (Capstone -- Cellular Biology Practical
// Lab): experimental-design skills (independent/dependent/control
// variables) applied back to the term's own osmosis and enzyme content.

import 'package:nova_academy/features/lessons/course_pathway_bank.dart';
import 'package:nova_academy/features/lessons/interactive_content_models.dart';
import 'package:nova_academy/features/lessons/mock_quiz_data.dart';

// =====================================================================
// Week 1: "Cell Structure and Organisation"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek1 = CourseWeekDef(
  id: "course-igcse-combsci-w1",
  weekNumber: 1,
  titleEn: "Cell Structure and Organisation",
  titleMy: "ဆဲလ် တည်ဆောက်ပုံနှင့် ဖွဲ့စည်းပုံ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w1-d1",
      dayNumber: 1,
      titleEn: "Plant and Animal Cells Quiz",
      titleMy: "အပင်နှင့် တိရစ္ဆာန်ဆဲလ်များ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which structure is found in a plant cell but NOT in an animal cell?",
          questionMy:
              "အောက်ပါဖွဲ့စည်းပုံများအနက် အပင်ဆဲလ်တွင်ရှိပြီး တိရစ္ဆာန်ဆဲလ်တွင် မရှိသည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: ["Cell wall", "Cell membrane", "Nucleus", "Mitochondria"],
          optionsMy: [
            "ဆဲလ်နံရံ (Cell wall)",
            "ဆဲလ်မြှေးပါး (Cell membrane)",
            "နျူကလိယပ်စ် (Nucleus)",
            "မိုက်တိုကွန်ဒရီးယား (Mitochondria)",
          ],
          correctIndex: 0,
          hintsEn: [
            "This structure is made of cellulose and gives the cell a fixed, rigid shape.",
            "Animal cells only have a flexible cell membrane -- they lack this rigid outer layer entirely.",
          ],
          hintsMy: [
            "ဤဖွဲ့စည်းပုံသည် ဆယ်လူလိုစ် (cellulose) ဖြင့်ပြုလုပ်ထားပြီး ဆဲလ်အား ခိုင်မာသော ပုံသဏ္ဍာန်ပေးသည်။",
            "တိရစ္ဆာန်ဆဲလ်များတွင် ပြောင်းလွယ်ပြင်လွယ်ရှိသော ဆဲလ်မြှေးပါးသာ ရှိပြီး ဤကျပ်တည်းသော အပြင်ထပ်လုံးဝ မရှိပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is the main function of chloroplasts?",
          questionMy: "ကလိုရိုဖလပ်စ် (Chloroplast) ၏ အဓိကတာဝန်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Absorbing light energy for photosynthesis",
            "Storing genetic information",
            "Producing energy through respiration",
            "Controlling movement of substances in and out",
          ],
          optionsMy: [
            "ဓာတ်စင့်ပြုပြင်ခြင်း (Photosynthesis) အတွက် အလင်းစွမ်းအင်ကို စုပ်ယူခြင်း",
            "မျိုးရိုးဗီဇအချက်အလက်များ သိမ်းဆည်းခြင်း",
            "အသက်ရှုခြင်း (Respiration) မှတစ်ဆင့် စွမ်းအင်ထုတ်လုပ်ခြင်း",
            "ပစ္စည်းများ ဝင်ထွက်မှုကို ထိန်းချုပ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Chloroplasts contain a green pigment called chlorophyll that traps light energy.",
            "This organelle is only found in plant cells, not animal cells, because only plants photosynthesise.",
          ],
          hintsMy: [
            "ကလိုရိုဖလပ်စ်တွင် အလင်းစွမ်းအင်ကို ထောင်ချောက်ဆင်ပေးသော ကလိုရိုဖီးလ် (chlorophyll) ဟုခေါ်သော အစိမ်းရောင်ဓာတ်ပါဝင်သည်။",
            "ဤအင်္ဂါသည် အပင်များသာ ဓာတ်စင့်ပြုပြင်ခြင်း ပြုလုပ်ကြသောကြောင့် အပင်ဆဲလ်များတွင်သာ ရှိပြီး တိရစ္ဆာန်ဆဲလ်များတွင် မရှိပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A root hair cell has a long, thin extension. How does this shape help it carry out its function?",
          questionMy:
              "အမြစ်ဆံဆဲလ် (Root hair cell) တွင် ရှည်လျားပါးလွှာသော တိုးထွက်အစိတ်အပိုင်းရှိသည်။ ဤပုံသဏ္ဍာန်သည် ၎င်း၏တာဝန်ကို မည်သို့ ကူညီပေးသနည်း။",
          optionsEn: [
            "It increases the surface area for absorbing water and minerals from the soil",
            "It allows the cell to photosynthesise more efficiently",
            "It lets the cell contract to help the plant move",
            "It protects the cell from being eaten by animals",
          ],
          optionsMy: [
            "မြေဆီလွှာမှ ရေနှင့်သတ္တုဓာတ်များ စုပ်ယူရန် မျက်နှာပြင်ဧရိယာကို တိုးမြှင့်ပေးသည်",
            "ဆဲလ်အား ဓာတ်စင့်ပြုပြင်ခြင်းကို ပိုမိုထိရောက်စွာ ပြုလုပ်စေသည်",
            "ဆဲလ်အား ကျုံ့ခြင်းဖြင့် အပင်ရွေ့လျားစေရန် ကူညီသည်",
            "ဆဲလ်အား တိရစ္ဆာန်များ စားမည့်အန္တရာယ်မှ ကာကွယ်ပေးသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is an example of how a specialised cell's shape is adapted to its specific function.",
            "A longer, thinner extension exposes more of the cell's outer membrane to the surrounding soil water.",
          ],
          hintsMy: [
            "ဤသည်မှာ သီးသန့်ဆဲလ်တစ်ခု၏ ပုံသဏ္ဍာန်သည် ၎င်း၏ တာဝန်နှင့် မည်သို့ လိုက်လျောညီထွေဖြစ်ကြောင်း ဥပမာတစ်ခုဖြစ်သည်။",
            "ရှည်လျားပါးလွှာသောအစိတ်အပိုင်းသည် ဆဲလ်၏ အပြင်မြှေးပါးကို ပတ်ဝန်းကျင်ရေနှင့် ပိုမိုထိတွေ့စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why do red blood cells have no nucleus, unlike most other animal cells?",
          questionMy:
              "အခြားတိရစ္ဆာန်ဆဲလ်အများစုနှင့်မတူဘဲ သွေးနီဥများတွင် နျူကလိယပ်စ် အဘယ်ကြောင့် မရှိသနည်း။",
          optionsEn: [
            "This leaves more space to carry oxygen efficiently",
            "It never had a nucleus at any stage of its life",
            "It uses the space for photosynthesis instead",
            "It does not need to be adapted for any specific function",
          ],
          optionsMy: [
            "ဤသည်က ဓာတ်အောက်ဆီဂျင်ကို ထိရောက်စွာသယ်ဆောင်ရန် နေရာပိုမိုရရှိစေသည်",
            "၎င်းသည် ဘဝကာလ မည်သည့်အဆင့်တွင်မျှ နျူကလိယပ်စ် လုံးဝမရှိခဲ့ပါ",
            "ထိုနေရာကို ဓာတ်စင့်ပြုပြင်ခြင်းအတွက် အသုံးပြုသည်",
            "၎င်းသည် မည်သည့်တာဝန်အတွက်မျှ လိုက်လျောညီထွေဖြစ်ရန် မလိုအပ်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Red blood cells are specialised to carry as much oxygen as possible around the body.",
            "Losing the nucleus frees up extra internal space to be filled with haemoglobin, the oxygen-carrying protein.",
          ],
          hintsMy: [
            "သွေးနီဥများသည် ခန္ဓာကိုယ်တစ်ခုလုံးသို့ ဓာတ်အောက်ဆီဂျင်ကို အများဆုံးသယ်ဆောင်ရန် သီးသန့်ဖြစ်ပေါ်လာသည်။",
            "နျူကလိယပ်စ် ဆုံးရှုံးခြင်းက ဓာတ်အောက်ဆီဂျင်သယ်ဆောင်သည့် ပရိုတင်းဖြစ်သော ဟီမိုဂလိုဘင် (haemoglobin) ဖြင့် ဖြည့်ရန် အတွင်းနေရာ ပိုမိုရရှိစေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w1-d2",
      dayNumber: 2,
      titleEn: "Match the Cell Organelle Vocabulary",
      titleMy: "ဆဲလ်အင်္ဂါများဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w1-dm-1",
          termEn: "Nucleus",
          termMy: "နျူကလိယပ်စ် (Nucleus)",
          matchEn: "Contains DNA and controls all of the cell's activities.",
          matchMy: "DNA ပါဝင်ပြီး ဆဲလ်၏ လုပ်ဆောင်ချက်အားလုံးကို ထိန်းချုပ်သည်။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w1-dm-2",
          termEn: "Mitochondria",
          termMy: "မိုက်တိုကွန်ဒရီးယား (Mitochondria)",
          matchEn: "The site of respiration, releasing energy for the cell.",
          matchMy:
              "ဆဲလ်အတွက် စွမ်းအင်ကို ထုတ်လွှတ်ပေးသော အသက်ရှုခြင်း ဖြစ်ပေါ်ရာနေရာ။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w1-dm-3",
          termEn: "Cell Membrane",
          termMy: "ဆဲလ်မြှေးပါး (Cell Membrane)",
          matchEn:
              "A partially permeable layer that controls what enters and leaves the cell.",
          matchMy:
              "ဆဲလ်ထဲသို့ဝင်ထွက်မှုကို ထိန်းချုပ်ပေးသော တစ်စိတ်တစ်ပိုင်း စိမ့်ဝင်နိုင်သည့် မြှေးပါး။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w1-dm-4",
          termEn: "Vacuole",
          termMy: "ဗက်ကျူးအိုးလ် (Vacuole)",
          matchEn:
              "A large, fluid-filled sac in plant cells that keeps the cell firm.",
          matchMy:
              "အပင်ဆဲလ်များတွင် ဆဲလ်ကို ခိုင်ခန့်စေသော အရည်ပြည့်နေသည့် ကြီးမားသောအိတ်။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w1-dm-5",
          termEn: "Cell Wall",
          termMy: "ဆဲလ်နံရံ (Cell Wall)",
          matchEn:
              "A rigid outer layer made of cellulose that supports and shapes a plant cell.",
          matchMy:
              "ဆယ်လူလိုစ်ဖြင့်ပြုလုပ်ထားသော ကျပ်တည်းသည့် အပြင်ထပ်ဖြစ်ပြီး အပင်ဆဲလ်ကို ထောက်ပံ့ပေးပြီး ပုံသဏ္ဍာန်ပေးသည်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w1-d3",
      dayNumber: 3,
      titleEn: "Sort: Plant or Animal Specialised Cell?",
      titleMy: "စီစစ်ကြမည် - အပင် (သို့) တိရစ္ဆာန် သီးသန့်ဆဲလ်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Plant Specialised Cell", "Animal Specialised Cell"],
        bucketsMy: ["အပင် သီးသန့်ဆဲလ်", "တိရစ္ဆာန် သီးသန့်ဆဲလ်"],
        items: [
          SortingItem(
            id: "igcsecs-w1-sort-1",
            labelEn: "Root hair cell",
            labelMy: "အမြစ်ဆံဆဲလ်",
            correctBucketEn: "Plant Specialised Cell",
            correctBucketMy: "အပင် သီးသန့်ဆဲလ်",
          ),
          SortingItem(
            id: "igcsecs-w1-sort-2",
            labelEn: "Palisade mesophyll cell",
            labelMy: "ပါလီဆိတ် အလယ်ခေါင်ဆဲလ် (Palisade mesophyll cell)",
            correctBucketEn: "Plant Specialised Cell",
            correctBucketMy: "အပင် သီးသန့်ဆဲလ်",
          ),
          SortingItem(
            id: "igcsecs-w1-sort-3",
            labelEn: "Xylem vessel cell",
            labelMy: "ဇိုင်လမ်ရေပြွန်ဆဲလ် (Xylem vessel cell)",
            correctBucketEn: "Plant Specialised Cell",
            correctBucketMy: "အပင် သီးသန့်ဆဲလ်",
          ),
          SortingItem(
            id: "igcsecs-w1-sort-4",
            labelEn: "Guard cell",
            labelMy: "အစောင့်ဆဲလ် (Guard cell)",
            correctBucketEn: "Plant Specialised Cell",
            correctBucketMy: "အပင် သီးသန့်ဆဲလ်",
          ),
          SortingItem(
            id: "igcsecs-w1-sort-5",
            labelEn: "Red blood cell",
            labelMy: "သွေးနီဥ",
            correctBucketEn: "Animal Specialised Cell",
            correctBucketMy: "တိရစ္ဆာန် သီးသန့်ဆဲလ်",
          ),
          SortingItem(
            id: "igcsecs-w1-sort-6",
            labelEn: "Nerve cell (neurone)",
            labelMy: "အာရုံကြောဆဲလ် (Neurone)",
            correctBucketEn: "Animal Specialised Cell",
            correctBucketMy: "တိရစ္ဆာန် သီးသန့်ဆဲလ်",
          ),
          SortingItem(
            id: "igcsecs-w1-sort-7",
            labelEn: "Sperm cell",
            labelMy: "သုက်ပိုးဆဲလ်",
            correctBucketEn: "Animal Specialised Cell",
            correctBucketMy: "တိရစ္ဆာန် သီးသန့်ဆဲလ်",
          ),
          SortingItem(
            id: "igcsecs-w1-sort-8",
            labelEn: "Ciliated epithelial cell",
            labelMy: "စူချေးမွှားပါ အန္တာဆဲလ် (Ciliated epithelial cell)",
            correctBucketEn: "Animal Specialised Cell",
            correctBucketMy: "တိရစ္ဆာန် သီးသန့်ဆဲလ်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w1-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiri Aung's Onion Cell Investigation",
      titleMy: "စာဖတ်ခြင်း - သီရိအောင်၏ ကြက်သွန်ဆဲလ် စမ်းသပ်လေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri Aung's Onion Cell Investigation",
        titleMy: "သီရိအောင်၏ ကြက်သွန်ဆဲလ် စမ်းသပ်လေ့လာမှု",
        passageEn:
            "For her IGCSE Combined Science practical, Thiri Aung peeled a thin, transparent layer from the inside of an onion, mounted it on a microscope slide with a drop of iodine solution, and covered it with a coverslip. Under the microscope, she could clearly see a grid-like pattern of brick-shaped cells, each with a thick outer boundary and a small, darkly stained circle near one side.\n\nThiri Aung labelled the thick outer boundary as the cell wall, noting that its rigid, rectangular shape was exactly why the onion cells looked so neatly boxed in compared to the rounder cells she remembered from a photo of animal cells. The small, darkly stained circle she identified as the nucleus, since iodine stains the nucleus a distinct dark colour, making it easy to locate under the microscope.\n\nHer teacher then asked her to prepare a second slide, this time scraping a few cells gently from the inside of her cheek and staining it with methylene blue. Comparing the two slides side by side, Thiri Aung noticed the cheek cells were irregular and rounded rather than boxy, and completely lacked the thick rigid boundary the onion cells had -- only a thin, flexible outer edge was visible. She concluded that this rigid cell wall, present in the onion (plant) cells but completely absent in her own cheek (animal) cells, was one of the clearest visible differences between the two cell types under a microscope.",
        passageMy:
            "သီရိအောင်၏ IGCSE ပေါင်းစပ်သိပ္ပံ လက်တွေ့ စမ်းသပ်မှုအတွက် သူသည် ကြက်သွန်၏ အတွင်းဘက်မှ ပါးလွှာပြီး ပွင့်လင်းသော အလွှာတစ်ခုကို ခွာယူပြီး၊ အိုင်အိုဒင်း (iodine) ဒြပ်ရည်တစ်စက်ဖြင့် အဏုကြည့်မှန်ပြားပေါ်တင်ကာ ဖုံးအုပ်မှန်ပြားနှင့် ဖုံးအုပ်ခဲ့သည်။ အဏုကြည့်မှန်ဘီလူးအောက်တွင် အုတ်ပုံသဏ္ဍာန်ဆဲလ်များ၏ ကွက်ကွက်ပုံစံကို ရှင်းရှင်းလင်းလင်း တွေ့မြင်ရပြီး၊ တစ်ခုစီတွင် ထူထဲသော အပြင်ဘက် နယ်နိမိတ်တစ်ခုနှင့် တစ်ဖက်နားတွင် အနက်ရောင်စွန်းနေသော စက်ဝိုင်းငယ်တစ်ခု ရှိသည်။\n\nသီရိအောင်သည် ထူထဲသော အပြင်ဘက်နယ်နိမိတ်ကို ဆဲလ်နံရံ (cell wall) ဟု အမှတ်ခြစ်ခဲ့ပြီး၊ ၎င်း၏ ခိုင်ခန့်သော လေးထောင့်ပုံသဏ္ဍာန်က ကြက်သွန်ဆဲလ်များ၏ ကွက်ကွက်ပုံစံကို ဖြစ်ပေါ်စေသည့်အကြောင်းရင်းဖြစ်ကြောင်း၊ သူမှတ်မိထားသော တိရစ္ဆာန်ဆဲလ် ဓာတ်ပုံများ၏ ဝိုင်းသောပုံသဏ္ဍာန်နှင့် နှိုင်းယှဉ်ကာ သတိပြုမိသည်။ အနက်ရောင်စွန်းနေသော စက်ဝိုင်းငယ်ကို နျူကလိယပ်စ် (nucleus) ဟု ဖော်ထုတ်ခဲ့ပြီး၊ အိုင်အိုဒင်းသည် နျူကလိယပ်စ်ကို ထူးခြားသောအနက်ရောင်ဖြင့် စွန်းစေသောကြောင့် အဏုကြည့်မှန်ဘီလူးအောက်တွင် ရှာဖွေရလွယ်ကူသည်။\n\nထို့နောက် ဆရာမက သူမ၏ ပါးတွင်းမှ ဆဲလ်အနည်းငယ်ကို ညင်သာစွာယူပြီး မီသိုင်းလင်းဘလူး (methylene blue) ဖြင့် စွန်းကာ ဒုတိယမှန်ပြားတစ်ခု ပြင်ဆင်ခိုင်းသည်။ မှန်ပြားနှစ်ခုကို တစ်ဘက်တည်းတွင် နှိုင်းယှဉ်ကြည့်ခြင်းဖြင့် သီရိအောင်သည် ပါးတွင်းဆဲလ်များသည် ကွက်ကွက်ပုံစံမဟုတ်ဘဲ ပုံမမှန် ဝိုင်းညက်နေကြောင်းနှင့် ကြက်သွန်ဆဲလ်များတွင်ရှိသော ထူထဲသည့်ခိုင်ခန့်သောနယ်နိမိတ် လုံးဝမရှိကြောင်း သတိပြုမိသည် -- ပါးလွှာပြီး ပြောင်းလွယ်ပြင်လွယ်ရှိသော အပြင်နားသည်သာ မြင်ရသည်။ ကြက်သွန် (အပင်) ဆဲလ်များတွင်ရှိပြီး သူမ၏ ပါးတွင်း (တိရစ္ဆာန်) ဆဲလ်များတွင် လုံးဝမရှိသော ဤခိုင်ခန့်သည့် ဆဲလ်နံရံသည် အဏုကြည့်မှန်ဘီလူးအောက်တွင် ဆဲလ်နှစ်မျိုးအကြား အထင်ရှားဆုံး မြင်ရသော ကွဲပြားချက်တစ်ခု ဖြစ်ကြောင်း သူ ကောက်ချက်ချခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Why did Thiri Aung use iodine solution when preparing the onion cell slide?",
            questionMy:
                "သီရိအောင်သည် ကြက်သွန်ဆဲလ်မှန်ပြားပြင်ဆင်ရာတွင် အိုင်အိုဒင်းဒြပ်ရည် အဘယ်ကြောင့် အသုံးပြုခဲ့သနည်း။",
            optionsEn: [
              "It stains the nucleus a distinct dark colour, making it easy to see under the microscope",
              "It dissolves the cell wall so the cell becomes visible",
              "It kills the cell so it stops moving",
              "It makes the cell membrane disappear completely",
            ],
            optionsMy: [
              "နျူကလိယပ်စ်ကို ထူးခြားသောအနက်ရောင်ဖြင့် စွန်းစေပြီး အဏုကြည့်မှန်ဘီလူးအောက်တွင် ရှုလွယ်စေသည်",
              "ဆဲလ်ကို မြင်ရစေရန် ဆဲလ်နံရံကို ပျော်ဝင်စေသည်",
              "ဆဲလ်ရွေ့လျားမှု ရပ်တန့်စေရန် သတ်ပစ်သည်",
              "ဆဲလ်မြှေးပါးကို လုံးဝပျောက်ကွယ်စေသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph, where Thiri Aung explains how she located the nucleus under the microscope.",
              "A stain's job is to make a structure more visible, not to remove or change it.",
            ],
            hintsMy: [
              "သီရိအောင်သည် အဏုကြည့်မှန်ဘီလူးအောက်တွင် နျူကလိယပ်စ်ကို မည်သို့တွေ့ရှိကြောင်း ရှင်းပြသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အစွန်းတစ်ခု၏တာဝန်မှာ ဖွဲ့စည်းပုံတစ်ခုကို ပိုမိုမြင်သာစေရန်ဖြစ်ပြီး ဖယ်ရှားခြင်း (သို့) ပြောင်းလဲခြင်းမဟုတ်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What shape were the onion cells under the microscope, and why?",
            questionMy:
                "အဏုကြည့်မှန်ဘီလူးအောက်တွင် ကြက်သွန်ဆဲလ်များသည် မည်သည့်ပုံသဏ္ဍာန်ရှိပြီး အဘယ်ကြောင့်ဖြစ်သနည်း။",
            optionsEn: [
              "Brick-shaped, because of the rigid cell wall",
              "Perfectly round, because of the vacuole",
              "Star-shaped, because of the nucleus",
              "Irregular, because they had no organelles at all",
            ],
            optionsMy: [
              "အုတ်ပုံသဏ္ဍာန်၊ ခိုင်ခန့်သော ဆဲလ်နံရံကြောင့်",
              "လုံးဝဝိုင်းသောပုံသဏ္ဍာန်၊ ဗက်ကျူးအိုးလ်ကြောင့်",
              "ကြယ်ပုံသဏ္ဍာန်၊ နျူကလိယပ်စ်ကြောင့်",
              "ပုံမမှန်၊ အင်္ဂါလုံးဝမရှိသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Look at the first paragraph's description of the grid-like pattern she saw.",
              "The passage's second paragraph directly links the boxy shape to a specific rigid structure.",
            ],
            hintsMy: [
              "သူတွေ့မြင်ခဲ့သော ကွက်ကွက်ပုံစံနှင့်ပတ်သက်သည့် ပထမစာပိုဒ်၏ ဖော်ပြချက်ကို ကြည့်ပါ။",
              "စာပိုဒ်၏ ဒုတိယပိုဒ်သည် ကွက်ကွက်ပုံသဏ္ဍာန်ကို ခိုင်ခန့်သော ဖွဲ့စည်းပုံတစ်ခုနှင့် တိုက်ရိုက်ချိတ်ဆက်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Thiri Aung notice was missing from her own cheek cells compared to the onion cells?",
            questionMy:
                "သီရိအောင်၏ ပါးတွင်းဆဲလ်များတွင် ကြက်သွန်ဆဲလ်များနှင့်နှိုင်းယှဉ်ပါက မည်သည့်အရာ မရှိကြောင်း သတိပြုမိသနည်း။",
            optionsEn: [
              "A thick, rigid cell wall",
              "A nucleus",
              "A cell membrane",
              "Any colour when stained",
            ],
            optionsMy: [
              "ထူထဲပြီး ခိုင်ခန့်သော ဆဲလ်နံရံ",
              "နျူကလိယပ်စ်",
              "ဆဲလ်မြှေးပါး",
              "စွန်းသောအခါ မည်သည့်အရောင်မျှ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final paragraph's comparison between the two slides.",
              "Both cell types have a nucleus and a membrane -- only one of the two has the rigid outer layer.",
            ],
            hintsMy: [
              "မှန်ပြားနှစ်ခု နှိုင်းယှဉ်ချက်နှင့်ပတ်သက်သည့် နောက်ဆုံးစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဆဲလ်နှစ်မျိုးစလုံးတွင် နျူကလိယပ်စ်နှင့် မြှေးပါးရှိသော်လည်း ခိုင်ခန့်သော အပြင်ထပ်ကိုမူ တစ်မျိုးတည်းတွင်သာ ရှိသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What conclusion did Thiri Aung draw from comparing the two slides?",
            questionMy:
                "မှန်ပြားနှစ်ခု နှိုင်းယှဉ်ခြင်းမှ သီရိအောင် မည်သည့်ကောက်ချက်ကို ချခဲ့သနည်း။",
            optionsEn: [
              "The rigid cell wall is one of the clearest visible differences between plant and animal cells",
              "Onion cells and cheek cells look exactly the same under a microscope",
              "Cheek cells have a cell wall too, just a thinner one",
              "Neither slide showed a nucleus clearly",
            ],
            optionsMy: [
              "ခိုင်ခန့်သော ဆဲလ်နံရံသည် အပင်နှင့် တိရစ္ဆာန်ဆဲလ်များအကြား အထင်ရှားဆုံးကွဲပြားချက်တစ်ခု ဖြစ်ကြောင်း",
              "ကြက်သွန်ဆဲလ်နှင့် ပါးတွင်းဆဲလ်များသည် အဏုကြည့်မှန်ဘီလူးအောက်တွင် အတိအကျ တူညီကြောင်း",
              "ပါးတွင်းဆဲလ်များတွင်လည်း ပါးလွှာသော ဆဲလ်နံရံရှိကြောင်း",
              "မှန်ပြားနှစ်ခုစလုံးတွင် နျူကလိယပ်စ် ရှင်းရှင်းလင်းလင်း မတွေ့ရကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "The whole investigation was designed to compare a plant cell type with an animal cell type.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "စမ်းသပ်လေ့လာမှုတစ်ခုလုံးသည် အပင်ဆဲလ်တစ်မျိုးနှင့် တိရစ္ဆာန်ဆဲလ်တစ်မျိုးကို နှိုင်းယှဉ်ရန် ဒီဇိုင်းဆွဲထားခြင်းဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w1-d5",
      dayNumber: 5,
      titleEn: "Week 1 Recap: Cell Structure",
      titleMy: "အပတ်စဉ် ၁ ပြန်လည်သုံးသပ်ခြင်း - ဆဲလ်ဖွဲ့စည်းပုံ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which organelle contains a plant cell's DNA?",
          questionMy: "အပင်ဆဲလ်၏ DNA ပါဝင်သော အင်္ဂါမှာ အဘယ်နည်း။",
          optionsEn: ["Nucleus", "Cell wall", "Chloroplast", "Vacuole"],
          optionsMy: [
            "နျူကလိယပ်စ်",
            "ဆဲလ်နံရံ",
            "ကလိုရိုဖလပ်စ်",
            "ဗက်ကျူးအိုးလ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which structure is unique to plant cells?",
          questionMy:
              "အပင်ဆဲလ်များတွင်သာ ထူးခြားစွာရှိသော ဖွဲ့စည်းပုံမှာ အဘယ်နည်း။",
          optionsEn: ["Cell wall", "Mitochondria", "Nucleus", "Cell membrane"],
          optionsMy: [
            "ဆဲလ်နံရံ",
            "မိုက်တိုကွန်ဒရီးယား",
            "နျူကလိယပ်စ်",
            "ဆဲလ်မြှေးပါး",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A root hair cell is specialised to...",
          questionMy: "အမြစ်ဆံဆဲလ်သည် မည်သည့်အတွက် သီးသန့်ဖြစ်ပေါ်လာသနည်း။",
          optionsEn: [
            "Absorb water and minerals with a large surface area",
            "Carry oxygen around the body",
            "Photosynthesise using chlorophyll",
            "Send electrical signals",
          ],
          optionsMy: [
            "ကြီးမားသော မျက်နှာပြင်ဧရိယာဖြင့် ရေနှင့်သတ္တုဓာတ်များ စုပ်ယူရန်",
            "ခန္ဓာကိုယ်တစ်ခုလုံးသို့ ဓာတ်အောက်ဆီဂျင် သယ်ဆောင်ရန်",
            "ကလိုရိုဖီးလ်ကို အသုံးပြု၍ ဓာတ်စင့်ပြုပြင်ရန်",
            "လျှပ်စစ်အချက်ပြမှုများ ပေးပို့ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why do red blood cells lack a nucleus, unlike most animal cells?",
          questionMy:
              "တိရစ္ဆာန်ဆဲလ်အများစုနှင့်မတူဘဲ သွေးနီဥများတွင် နျူကလိယပ်စ် အဘယ်ကြောင့် မရှိသနည်း။",
          optionsEn: [
            "To free up space to carry more oxygen",
            "Because they are actually plant cells",
            "Because they never divide",
            "Because they have a cell wall instead",
          ],
          optionsMy: [
            "ဓာတ်အောက်ဆီဂျင် ပိုမိုသယ်ဆောင်နိုင်ရန် နေရာလွတ်ရရှိစေရန်",
            "၎င်းတို့သည် အမှန်တကယ် အပင်ဆဲလ်များ ဖြစ်ကြောင်း",
            "၎င်းတို့ လုံးဝ ဆဲလ်ခွဲခြင်း မပြုကြောင်း",
            "၎င်းတို့တွင် ဆဲလ်နံရံ ရှိသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 2: "Movement In and Out of Cells"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek2 = CourseWeekDef(
  id: "course-igcse-combsci-w2",
  weekNumber: 2,
  titleEn: "Movement In and Out of Cells",
  titleMy: "ဆဲလ်အတွင်းနှင့် အပြင်သို့ ရွေ့လျားခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w2-d1",
      dayNumber: 1,
      titleEn: "Diffusion, Osmosis and Active Transport Quiz",
      titleMy:
          "ပျံ့နှံ့ခြင်း၊ ရေစိမ့်ဝင်ခြင်းနှင့် တက်ကြွစွာသယ်ယူခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Diffusion is the net movement of particles from...",
          questionMy:
              "ပျံ့နှံ့ခြင်း (Diffusion) ဆိုသည်မှာ အမှုန်များ၏ အသားတင်ရွေ့လျားမှုသည်...",
          optionsEn: [
            "A region of higher concentration to a region of lower concentration",
            "A region of lower concentration to a region of higher concentration",
            "Inside a cell to another part of the same cell only",
            "One organism directly into another organism",
          ],
          optionsMy: [
            "ပြင်းအား(concentration)မြင့်ရာမှ နိမ့်ရာဒေသသို့",
            "ပြင်းအားနိမ့်ရာမှ မြင့်ရာဒေသသို့",
            "ဆဲလ်တစ်ခုအတွင်းမှ တစ်ခုတည်းသောဆဲလ်၏ အခြားအစိတ်အပိုင်းသို့သာ",
            "သက်ရှိတစ်ခုမှ အခြားသက်ရှိတစ်ခုထဲသို့ တိုက်ရိုက်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of a drop of perfume spreading through a room -- it always spreads away from where it is strongest.",
            "Particles move down a concentration gradient, from high to low, without using any energy from the cell.",
          ],
          hintsMy: [
            "အခန်းတစ်ခုတွင် ရနံ့ရည်တစ်စက် ပျံ့နှံ့သွားပုံကို စဉ်းစားကြည့်ပါ -- ၎င်းသည် အစဉ်အမြဲ အပြင်းဆုံးနေရာမှ ဝေးရာသို့ ပျံ့နှံ့သွားသည်။",
            "အမှုန်များသည် ဆဲလ်မှ စွမ်းအင်အသုံးမပြုဘဲ ပြင်းအားမြင့်ရာမှ နိမ့်ရာသို့ ပြင်းအားစီးကြောင်း (concentration gradient) အတိုင်း ရွေ့လျားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Osmosis specifically describes the movement of...",
          questionMy:
              "ရေစိမ့်ဝင်ခြင်း (Osmosis) သည် မည်သည့်ရွေ့လျားမှုကို အထူးဖော်ပြသနည်း။",
          optionsEn: [
            "Water molecules across a partially permeable membrane",
            "Any solid particle across any membrane",
            "Oxygen molecules only",
            "Ions using energy from the cell",
          ],
          optionsMy: [
            "တစ်စိတ်တစ်ပိုင်း စိမ့်ဝင်နိုင်သည့် မြှေးပါးကိုဖြတ်၍ ရေမော်လီကျူး (water molecule) များ ရွေ့လျားမှု",
            "မည်သည့်မြှေးပါးကိုမဆို ဖြတ်၍ အစိုင်အခဲအမှုန်တစ်ခု ရွေ့လျားမှု",
            "ဓာတ်အောက်ဆီဂျင်မော်လီကျူး များသာ",
            "ဆဲလ်မှစွမ်းအင် အသုံးပြု၍ အိုင်းယွန်းများ ရွေ့လျားမှု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Osmosis is really just a special case of diffusion -- but only for water molecules.",
            "The membrane involved must be partially permeable, letting water through but not larger dissolved particles.",
          ],
          hintsMy: [
            "ရေစိမ့်ဝင်ခြင်းသည် ပျံ့နှံ့ခြင်း၏ အထူးကိစ္စတစ်ခုမျှသာဖြစ်သည် -- သို့သော် ရေမော်လီကျူး များအတွက်သာ။",
            "ပါဝင်သော မြှေးပါးသည် တစ်စိတ်တစ်ပိုင်း စိမ့်ဝင်နိုင်ရမည်ဖြစ်ပြီး ရေကို ဖြတ်သန်းစေသော်လည်း ပိုကြီးသော ပျော်ဝင်အမှုန်များကို ဖြတ်သန်းစေခြင်းမပြု။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "How is active transport DIFFERENT from diffusion and osmosis?",
          questionMy:
              "တက်ကြွစွာသယ်ယူခြင်း (Active transport) သည် ပျံ့နှံ့ခြင်းနှင့် ရေစိမ့်ဝင်ခြင်းတို့နှင့် မည်သို့ ကွာခြားသနည်း။",
          optionsEn: [
            "It moves substances against the concentration gradient, using energy",
            "It only happens in plant cells",
            "It never requires a cell membrane",
            "It moves substances down the concentration gradient only",
          ],
          optionsMy: [
            "ပြင်းအားစီးကြောင်းကို ဆန့်ကျင်၍ စွမ်းအင်သုံးကာ ပစ္စည်းများကို ရွှေ့ပေးသည်",
            "အပင်ဆဲလ်များတွင်သာ ဖြစ်ပေါ်သည်",
            "ဆဲလ်မြှေးပါး လုံးဝမလိုအပ်ပါ",
            "ပြင်းအားစီးကြောင်းအတိုင်းသာ ပစ္စည်းများကို ရွှေ့ပေးသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The word \"active\" is a clue -- this process actively uses cellular energy, unlike the other two.",
            "Root hair cells use active transport to absorb mineral ions even when there are already more ions inside the cell than in the soil.",
          ],
          hintsMy: [
            "\"Active\" ဆိုသောစကားလုံးသည် အထောက်အကူပြုသည် -- ဤဖြစ်စဉ်သည် အခြားနှစ်ခုနှင့်မတူဘဲ ဆဲလ်စွမ်းအင်ကို တက်ကြွစွာ အသုံးပြုသည်။",
            "အမြစ်ဆံဆဲလ်များသည် မြေဆီလွှာထက် ဆဲလ်အတွင်း သတ္တုဓာတ်အိုင်းယွန်းများ ပိုများနေသည့်တိုင် တက်ကြွစွာသယ်ယူခြင်းကို အသုံးပြု၍ ဆက်လက်စုပ်ယူသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A red blood cell placed in pure water will swell and may burst. Which process causes this?",
          questionMy:
              "သန့်ရေထဲသို့ ချထားသော သွေးနီဥသည် ဖောင်းကြွပြီး ပေါက်ကွဲနိုင်သည်။ ၎င်းကို မည်သည့်ဖြစ်စဉ်က ဖြစ်ပေါ်စေသနည်း။",
          optionsEn: [
            "Osmosis -- water moves into the cell where the concentration of water is lower",
            "Active transport -- ions are pumped into the cell",
            "Diffusion of oxygen into the cell",
            "The cell wall bursting under pressure",
          ],
          optionsMy: [
            "ရေစိမ့်ဝင်ခြင်း -- ရေပြင်းအားနိမ့်ရာဆဲလ်ထဲသို့ ရေဝင်ရောက်ခြင်း",
            "တက်ကြွစွာသယ်ယူခြင်း -- အိုင်းယွန်းများကို ဆဲလ်ထဲသို့ ပန့်ပို့ခြင်း",
            "ဓာတ်အောက်ဆီဂျင် ဆဲလ်ထဲသို့ ပျံ့နှံ့ဝင်ရောက်ခြင်း",
            "ဖိအားကြောင့် ဆဲလ်နံရံ ပေါက်ကွဲခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Pure water has a very high concentration of water molecules compared to the inside of the cell.",
            "Water moves by osmosis from where it is more concentrated (outside) to where it is less concentrated (inside the cell).",
          ],
          hintsMy: [
            "သန့်ရေတွင် ဆဲလ်၏အတွင်းပိုင်းနှင့်နှိုင်းယှဉ်ပါက ရေမော်လီကျူး ပြင်းအား အလွန်မြင့်သည်။",
            "ရေသည် ပြင်းအားပိုမြင့်ရာ (အပြင်ဘက်) မှ ပြင်းအားနိမ့်ရာ (ဆဲလ်အတွင်းပိုင်း) သို့ ရေစိမ့်ဝင်ခြင်းဖြင့် ရွေ့လျားသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w2-d2",
      dayNumber: 2,
      titleEn: "Match the Transport Vocabulary",
      titleMy: "ရွေ့လျားမှုဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w2-dm-1",
          termEn: "Diffusion",
          termMy: "ပျံ့နှံ့ခြင်း (Diffusion)",
          matchEn:
              "Net movement of particles from high to low concentration, needing no energy.",
          matchMy:
              "စွမ်းအင်မလိုဘဲ အမှုန်များ ပြင်းအားမြင့်ရာမှ နိမ့်ရာသို့ အသားတင်ရွေ့လျားမှု။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w2-dm-2",
          termEn: "Osmosis",
          termMy: "ရေစိမ့်ဝင်ခြင်း (Osmosis)",
          matchEn:
              "The diffusion of water molecules across a partially permeable membrane.",
          matchMy:
              "တစ်စိတ်တစ်ပိုင်းစိမ့်ဝင်နိုင်သည့် မြှေးပါးကိုဖြတ်၍ ရေမော်လီကျူး ပျံ့နှံ့ခြင်း။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w2-dm-3",
          termEn: "Active Transport",
          termMy: "တက်ကြွစွာသယ်ယူခြင်း (Active Transport)",
          matchEn:
              "Movement of particles against the concentration gradient, using energy.",
          matchMy:
              "စွမ်းအင်သုံးကာ ပြင်းအားစီးကြောင်းကို ဆန့်ကျင်၍ အမှုန်များ ရွေ့လျားမှု။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w2-dm-4",
          termEn: "Partially Permeable Membrane",
          termMy: "တစ်စိတ်တစ်ပိုင်း စိမ့်ဝင်နိုင်သည့် မြှေးပါး",
          matchEn:
              "A membrane that lets some particles (like water) through but not others.",
          matchMy:
              "အချို့အမှုန်များ (ရေကဲ့သို့) ကို ဖြတ်သန်းစေသော်လည်း အခြားအမှုန်များကို ဖြတ်သန်းစေခြင်းမပြုသော မြှေးပါး။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w2-dm-5",
          termEn: "Concentration Gradient",
          termMy: "ပြင်းအားစီးကြောင်း (Concentration Gradient)",
          matchEn:
              "The difference in concentration between two regions that drives diffusion.",
          matchMy:
              "ပျံ့နှံ့ခြင်းကို ဖြစ်ပေါ်စေသော ဒေသနှစ်ခုအကြား ပြင်းအားကွာခြားချက်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w2-d3",
      dayNumber: 3,
      titleEn: "Sort: Diffusion, Osmosis, or Active Transport?",
      titleMy:
          "စီစစ်ကြမည် - ပျံ့နှံ့ခြင်း၊ ရေစိမ့်ဝင်ခြင်း၊ (သို့) တက်ကြွစွာသယ်ယူခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Diffusion", "Osmosis", "Active Transport"],
        bucketsMy: ["ပျံ့နှံ့ခြင်း", "ရေစိမ့်ဝင်ခြင်း", "တက်ကြွစွာသယ်ယူခြင်း"],
        items: [
          SortingItem(
            id: "igcsecs-w2-sort-1",
            labelEn: "Perfume spreading through a still room",
            labelMy: "ငြိမ်နေသောအခန်းတစ်ခုတွင် ရနံ့ရည်ပျံ့နှံ့သွားခြင်း",
            correctBucketEn: "Diffusion",
            correctBucketMy: "ပျံ့နှံ့ခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w2-sort-2",
            labelEn: "Oxygen moving from alveoli into the blood",
            labelMy:
                "အဲလ်ဗီယိုလိုင်း (Alveoli) မှ သွေးထဲသို့ ဓာတ်အောက်ဆီဂျင် ရွေ့လျားခြင်း",
            correctBucketEn: "Diffusion",
            correctBucketMy: "ပျံ့နှံ့ခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w2-sort-3",
            labelEn: "Carbon dioxide diffusing out of a leaf during the day",
            labelMy:
                "နေ့အချိန်တွင် အရွက်မှ ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပျံ့နှံ့ထွက်ခြင်း",
            correctBucketEn: "Diffusion",
            correctBucketMy: "ပျံ့နှံ့ခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w2-sort-4",
            labelEn: "Water entering a red blood cell placed in pure water",
            labelMy: "သန့်ရေထဲသို့ ချထားသော သွေးနီဥအတွင်းသို့ ရေဝင်ရောက်ခြင်း",
            correctBucketEn: "Osmosis",
            correctBucketMy: "ရေစိမ့်ဝင်ခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w2-sort-5",
            labelEn: "A potato chip losing mass in concentrated salt solution",
            labelMy:
                "အာလူးအခြပ်တစ်ခုသည် ပြင်းအားမြင့်သော ဆားရည်တွင် အလေးချိန် ဆုံးရှုံးခြင်း",
            correctBucketEn: "Osmosis",
            correctBucketMy: "ရေစိမ့်ဝင်ခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w2-sort-6",
            labelEn: "Plant roots taking up water from the soil",
            labelMy: "အပင်အမြစ်များသည် မြေဆီလွှာမှ ရေကို စုပ်ယူခြင်း",
            correctBucketEn: "Osmosis",
            correctBucketMy: "ရေစိမ့်ဝင်ခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w2-sort-7",
            labelEn:
                "Root hair cells absorbing mineral ions against the concentration gradient",
            labelMy:
                "အမြစ်ဆံဆဲလ်များသည် ပြင်းအားစီးကြောင်းကို ဆန့်ကျင်၍ သတ္တုဓာတ်အိုင်းယွန်းများ စုပ်ယူခြင်း",
            correctBucketEn: "Active Transport",
            correctBucketMy: "တက်ကြွစွာသယ်ယူခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w2-sort-8",
            labelEn:
                "Glucose absorbed from the gut into the blood when gut glucose is already lower than blood glucose",
            labelMy:
                "အူတွင်းဂလူးကို့စ်သည် သွေးထက် ပြင်းအားနိမ့်နေချိန် သွေးထဲသို့ ဂလူးကို့စ် စုပ်ယူခြင်း",
            correctBucketEn: "Active Transport",
            correctBucketMy: "တက်ကြွစွာသယ်ယူခြင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w2-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Lin's Potato Chip Osmosis Experiment",
      titleMy: "စာဖတ်ခြင်း - နေလင်း၏ အာလူးအခြပ် ရေစိမ့်ဝင်ခြင်း စမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Lin's Potato Chip Osmosis Experiment",
        titleMy: "နေလင်း၏ အာလူးအခြပ် ရေစိမ့်ဝင်ခြင်း စမ်းသပ်မှု",
        passageEn:
            "Nay Lin cut five identical potato chips of exactly the same length and mass, then placed one chip into each of five test tubes containing sugar solutions of increasing concentration: 0%, 5%, 10%, 20%, and 40%. After leaving the chips submerged for thirty minutes, he removed each one, gently blotted off the surface liquid, and re-measured its mass on the same balance he had used at the start.\n\nThe chip in the 0% solution (pure water) had visibly increased in mass and felt firm to the touch, while the chip in the 40% solution had noticeably shrunk and felt soft and floppy. Nay Lin explained this using osmosis: in the weak 0% solution, the water concentration outside the potato cells was higher than inside them, so water moved into the cells by osmosis, making the chip gain mass and become firmer. In the strong 40% solution, the water concentration outside was lower than inside the cells, so water moved out of the cells by osmosis instead, causing the chip to lose mass and become soft.\n\nPlotting his results on a graph, Nay Lin noticed the chips' percentage change in mass decreased steadily as sugar concentration increased, crossing zero at roughly 15%. He explained to his teacher that this crossing point was where the sugar concentration inside the potato cells and the solution outside were approximately equal, so there was no overall net movement of water in either direction -- a genuinely useful result, since it let him estimate the potato's own internal solute concentration without ever testing the potato cells directly.",
        passageMy:
            "နေလင်းသည် အလျားနှင့်အလေးချိန် အတိအကျတူညီသော အာလူးအခြပ်ငါးချပ်ကို ဖြတ်ယူပြီး၊ ပြင်းအား တစ်ဆင့်ခြင်း တိုးလာသော သကြားရည် ၀%၊ ၅%၊ ၁၀%၊ ၂၀% နှင့် ၄၀% ပါဝင်သော စမ်းသပ်ပြွန်ငါးလုံးထဲသို့ တစ်ချပ်စီ ချထားခဲ့သည်။ မိနစ် ၃၀ ကြာအောင် နှစ်ထားပြီးနောက် သူသည် အခြပ်တစ်ခုစီကို ထုတ်ယူကာ မျက်နှာပြင်ရေကို ညင်သာစွာ သုတ်ယူပြီး၊ အစပိုင်းက အသုံးပြုခဲ့သော ချိန်ခွင်တည်းဖြင့် အလေးချိန်ကို ပြန်တိုင်းတာခဲ့သည်။\n\n၀% ဒြပ်ရည် (သန့်ရေ) ထဲရှိ အခြပ်သည် အလေးချိန် သိသိသာသာတိုးလာပြီး လက်ဖြင့်တို့ကြည့်ရာတွင် ခိုင်ခန့်နေသည်ကို တွေ့ရသည်၊ ၄၀% ဒြပ်ရည်ထဲရှိ အခြပ်ကမူ သိသိသာသာ ကျုံ့သွားပြီး ပျော့ပျောင်းနွှဲ့နွမ်းနေသည်။ နေလင်းသည် ဤအခြေအနေကို ရေစိမ့်ဝင်ခြင်းဖြင့် ရှင်းပြခဲ့သည် - အားနည်းသော ၀% ဒြပ်ရည်တွင် အာလူးဆဲလ်များ၏ အပြင်ဘက်ရှိ ရေပြင်းအားသည် အတွင်းပိုင်းထက် ပိုမြင့်နေသောကြောင့် ရေသည် ဆဲလ်များထဲသို့ ရေစိမ့်ဝင်ခြင်းအားဖြင့် ရွေ့လျားပြီး အခြပ်ကို အလေးချိန်တိုး၍ ပိုခိုင်ခန့်စေသည်။ ပြင်းအားမြင့်သော ၄၀% ဒြပ်ရည်တွင်မူ အပြင်ဘက်ရေပြင်းအားသည် ဆဲလ်များအတွင်းထက် နိမ့်နေသောကြောင့် ရေသည် ဆဲလ်များမှ ပြင်ပသို့ ရေစိမ့်ဝင်ခြင်းဖြင့် ထွက်သွားပြီး အခြပ်ကို အလေးချိန်လျော့၍ ပျော့ပျောင်းစေသည်။\n\nရလဒ်များကို ဂရပ်ပေါ်တွင် ရေးဆွဲကြည့်ရာ နေလင်းသည် သကြားပြင်းအား တိုးလာသည်နှင့်အမျှ အခြပ်များ၏ အလေးချိန်ရာခိုင်နှုန်း ပြောင်းလဲမှုသည် တစိုက်မတ်မတ် လျော့ကျလာကြောင်း၊ ခန့်မှန်းခြေ ၁၅% တွင် သုညကို ဖြတ်သွားကြောင်း သတိပြုမိသည်။ သူသည် ဆရာမအား ဤဖြတ်သန်းသည့်အမှတ်သည် အာလူးဆဲလ်များအတွင်းရှိ သကြားပြင်းအားနှင့် အပြင်ဘက်ဒြပ်ရည်ပြင်းအားတို့ ခန့်မှန်းချေတူညီသော အမှတ်ဖြစ်ကြောင်း၊ ထို့ကြောင့် ရေ၏ အသားတင်ရွေ့လျားမှု မည်သည့်ဘက်သို့မှ မရှိတော့ကြောင်း ရှင်းပြခဲ့သည် -- ဤသည်မှာ အလွန်အသုံးဝင်သောရလဒ်ဖြစ်ကြောင်း၊ အဘယ်ကြောင့်ဆိုသော် အာလူးဆဲလ်များကို တိုက်ရိုက်စမ်းသပ်ရန် မလိုအပ်ဘဲ အာလူး၏ အတွင်းပိုင်း ဒြပ်ရည်ပြင်းအားကို ခန့်မှန်းနိုင်စေသောကြောင့်ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Why did the potato chip in the 0% sugar solution gain mass?",
            questionMy:
                "၀% သကြားဒြပ်ရည်ထဲရှိ အာလူးအခြပ်သည် အဘယ်ကြောင့် အလေးချိန်တိုးလာသနည်း။",
            optionsEn: [
              "Water moved into the cells by osmosis because the water concentration outside was higher",
              "Sugar moved into the cells by active transport",
              "The chip absorbed air from the test tube",
              "The chip's cell walls dissolved completely",
            ],
            optionsMy: [
              "အပြင်ဘက်ရေပြင်းအား ပိုမြင့်နေသောကြောင့် ရေသည် ရေစိမ့်ဝင်ခြင်းဖြင့် ဆဲလ်များထဲသို့ ဝင်ရောက်ခြင်း",
              "သကြားသည် တက်ကြွစွာသယ်ယူခြင်းဖြင့် ဆဲလ်များထဲသို့ ဝင်ရောက်ခြင်း",
              "အခြပ်သည် စမ်းသပ်ပြွန်မှ လေကို စုပ်ယူခြင်း",
              "အခြပ်၏ ဆဲလ်နံရံများ လုံးဝပျော်ဝင်သွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation of what happened in the 0% solution.",
              "Water always moves by osmosis from where it is more concentrated to where it is less concentrated.",
            ],
            hintsMy: [
              "၀% ဒြပ်ရည်တွင် ဖြစ်ပျက်ခဲ့သည့်အရာနှင့်ပတ်သက်သော ဒုတိယစာပိုဒ်၏ ရှင်းပြချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ရေသည် အမြဲတမ်း ရေစိမ့်ဝင်ခြင်းဖြင့် ပြင်းအားပိုမြင့်ရာမှ နိမ့်ရာသို့ ရွေ့လျားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did the chip in the 40% solution become soft and floppy?",
            questionMy:
                "၄၀% ဒြပ်ရည်ထဲရှိ အခြပ်သည် အဘယ်ကြောင့် ပျော့ပျောင်းနွှဲ့နွမ်းသွားသနည်း။",
            optionsEn: [
              "Water moved out of the cells by osmosis because the water concentration outside was lower",
              "The sugar solution dissolved the potato completely",
              "The chip was left in the solution for too short a time",
              "Active transport pumped water out of the cells",
            ],
            optionsMy: [
              "အပြင်ဘက်ရေပြင်းအား နိမ့်နေသောကြောင့် ရေသည် ရေစိမ့်ဝင်ခြင်းဖြင့် ဆဲလ်များမှ ထွက်သွားခြင်း",
              "သကြားဒြပ်ရည်က အာလူးကို လုံးဝ ပျော်ဝင်သွားစေခြင်း",
              "အခြပ်ကို ဒြပ်ရည်ထဲတွင် အချိန် တိုတိုသာ ချထားသောကြောင့်",
              "တက်ကြွစွာသယ်ယူခြင်းက ဆဲလ်များမှ ရေကို ပန့်ထုတ်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "In a strong sugar solution, the water concentration outside the cells is lower than inside.",
              "Osmosis moves water toward the region of lower water concentration -- here, that's outside the cell.",
            ],
            hintsMy: [
              "သကြားပြင်းအားမြင့်သော ဒြပ်ရည်တွင် ဆဲလ်၏အပြင်ဘက် ရေပြင်းအားသည် အတွင်းပိုင်းထက် နိမ့်သည်။",
              "ရေစိမ့်ဝင်ခြင်းသည် ရေပြင်းအားနိမ့်ရာဘက်သို့ ရေကို ရွေ့လျားစေသည် -- ဤနေရာတွင် ၎င်းမှာ ဆဲလ်၏အပြင်ဘက်ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did the graph's crossing point at roughly 15% represent?",
            questionMy:
                "ဂရပ်၏ ခန့်မှန်းခြေ ၁၅% တွင် ဖြတ်သန်းသည့်အမှတ်သည် မည်သည့်အရာကို ကိုယ်စားပြုသနည်း။",
            optionsEn: [
              "The point where the sugar concentration inside the potato cells roughly equals the outside solution",
              "The point where all the water had left the potato cells",
              "A measurement error in the experiment",
              "The exact melting point of the potato",
            ],
            optionsMy: [
              "အာလူးဆဲလ်များအတွင်းရှိ သကြားပြင်းအားနှင့် အပြင်ဘက်ဒြပ်ရည်ပြင်းအား ခန့်မှန်းချေ တူညီသည့်အမှတ်",
              "အာလူးဆဲလ်များမှ ရေအားလုံး ထွက်ခွာသွားသည့်အမှတ်",
              "စမ်းသပ်မှု၏ တိုင်းတာမှု အမှားတစ်ခု",
              "အာလူး၏ အတိအကျ အရည်ပျော်မှတ်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the passage's final paragraph, where Nay Lin explains this exact result to his teacher.",
              "At this crossing point, there is no overall net movement of water in either direction.",
            ],
            hintsMy: [
              "နေလင်းသည် ဤရလဒ်ကို ဆရာမအား ရှင်းပြသည့် စာပိုဒ်၏ နောက်ဆုံးအပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤဖြတ်သန်းသည့်အမှတ်တွင် ရေ၏ အသားတင်ရွေ့လျားမှု မည်သည့်ဘက်သို့မှ မရှိပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why was Nay Lin's crossing-point result useful, according to the passage?",
            questionMy:
                "စာပိုဒ်အရ နေလင်း၏ ဖြတ်သန်းသည့်အမှတ် ရလဒ်သည် အဘယ်ကြောင့် အသုံးဝင်ခဲ့သနည်း။",
            optionsEn: [
              "It let him estimate the potato's internal solute concentration without testing the cells directly",
              "It proved potatoes never lose mass in any solution",
              "It showed that active transport was responsible for all the changes",
              "It meant the experiment had failed and needed repeating",
            ],
            optionsMy: [
              "အာလူးဆဲလ်များကို တိုက်ရိုက်စမ်းသပ်ရန် မလိုအပ်ဘဲ အတွင်းပိုင်း ဒြပ်ရည်ပြင်းအားကို ခန့်မှန်းနိုင်စေသောကြောင့်",
              "အာလူးများသည် မည်သည့်ဒြပ်ရည်တွင်မျှ အလေးချိန် ဆုံးရှုံးခြင်း လုံးဝမရှိကြောင်း သက်သေပြသောကြောင့်",
              "အပြောင်းအလဲအားလုံးသည် တက်ကြွစွာသယ်ယူခြင်းကြောင့်ဖြစ်ကြောင်း ပြသောကြောင့်",
              "စမ်းသပ်မှု မအောင်မြင်ဘဲ ပြန်လုပ်ရန် လိုအပ်ကြောင်း ဆိုလိုသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Nay Lin never tested the potato cells' own solute concentration directly -- he worked it out indirectly from the graph.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "နေလင်းသည် အာလူးဆဲလ်များ၏ ဒြပ်ရည်ပြင်းအားကို တိုက်ရိုက်စမ်းသပ်ခြင်း လုံးဝမပြုခဲ့ပါ -- ဂရပ်မှတစ်ဆင့် သွယ်ဝိုက်၍သာ တွက်ချက်ခဲ့သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w2-d5",
      dayNumber: 5,
      titleEn: "Week 2 Recap: Movement In and Out of Cells",
      titleMy:
          "အပတ်စဉ် ၂ ပြန်လည်သုံးသပ်ခြင်း - ဆဲလ်အတွင်းနှင့်အပြင် ရွေ့လျားခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Diffusion moves particles from...",
          questionMy: "ပျံ့နှံ့ခြင်းသည် အမှုန်များကို မည်သို့ ရွေ့လျားစေသနည်း။",
          optionsEn: [
            "High to low concentration",
            "Low to high concentration",
            "Only within one cell",
            "Only between two animals",
          ],
          optionsMy: [
            "ပြင်းအားမြင့်ရာမှ နိမ့်ရာသို့",
            "ပြင်းအားနိမ့်ရာမှ မြင့်ရာသို့",
            "ဆဲလ်တစ်ခုတည်းအတွင်း၌သာ",
            "တိရစ္ဆာန်နှစ်ကောင်ကြားတွင်သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Osmosis only describes the movement of...",
          questionMy: "ရေစိမ့်ဝင်ခြင်းသည် မည်သည့်ရွေ့လျားမှုကိုသာ ဖော်ပြသနည်း။",
          optionsEn: [
            "Water molecules",
            "Oxygen molecules",
            "Any dissolved sugar",
            "Mineral ions only",
          ],
          optionsMy: [
            "ရေမော်လီကျူး",
            "ဓာတ်အောက်ဆီဂျင်မော်လီကျူး",
            "ပျော်ဝင်သည့်သကြား",
            "သတ္တုဓာတ်အိုင်းယွန်းများသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Active transport requires energy because it moves particles...",
          questionMy:
              "တက်ကြွစွာသယ်ယူခြင်းသည် အမှုန်များကို မည်သို့ ရွေ့လျားစေသောကြောင့် စွမ်းအင်လိုအပ်သနည်း။",
          optionsEn: [
            "Against the concentration gradient",
            "Down the concentration gradient",
            "Only inside water",
            "Only across a cell wall",
          ],
          optionsMy: [
            "ပြင်းအားစီးကြောင်းကို ဆန့်ကျင်၍",
            "ပြင်းအားစီးကြောင်းအတိုင်း",
            "ရေထဲတွင်သာ",
            "ဆဲလ်နံရံကိုဖြတ်၍သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A potato chip in a strong sugar solution loses mass because...",
          questionMy:
              "ပြင်းအားမြင့်သော သကြားဒြပ်ရည်ထဲရှိ အာလူးအခြပ်သည် အဘယ်ကြောင့် အလေးချိန် ဆုံးရှုံးသနည်း။",
          optionsEn: [
            "Water moves out of the cells by osmosis",
            "Sugar moves into the cells by osmosis",
            "The cell wall dissolves completely",
            "Active transport removes all the water",
          ],
          optionsMy: [
            "ရေသည် ဆဲလ်များမှ ရေစိမ့်ဝင်ခြင်းဖြင့် ထွက်ခွာသည်",
            "သကြားသည် ဆဲလ်များထဲသို့ ရေစိမ့်ဝင်ခြင်းဖြင့် ဝင်ရောက်သည်",
            "ဆဲလ်နံရံ လုံးဝ ပျော်ဝင်သွားသည်",
            "တက်ကြွစွာသယ်ယူခြင်းက ရေအားလုံးကို ဖယ်ရှားသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 3: "Biological Molecules and Enzymes"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek3 = CourseWeekDef(
  id: "course-igcse-combsci-w3",
  weekNumber: 3,
  titleEn: "Biological Molecules and Enzymes",
  titleMy: "ဇီဝ မော်လီကျူးများနှင့် အင်ဇိုင်းများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w3-d1",
      dayNumber: 1,
      titleEn: "Biological Molecules and Enzyme Action Quiz",
      titleMy: "ဇီဝမော်လီကျူးများနှင့် အင်ဇိုင်းလုပ်ဆောင်ချက် ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Carbohydrates, fats, and proteins are all examples of...",
          questionMy:
              "ကာဗိုဟိုက်ဒရိတ်၊ အဆီနှင့် ပရိုတင်းတို့သည် မည်သည့်အရာ၏ ဥပမာများဖြစ်သနည်း။",
          optionsEn: [
            "Large biological molecules built from smaller building-block units",
            "Enzymes that speed up chemical reactions",
            "Single atoms with no smaller parts",
            "Waste products removed from the body",
          ],
          optionsMy: [
            "ငယ်ငယ်စိတ်တစ်ပိုင်းများမှ တည်ဆောက်ထားသော ဇီဝမော်လီကျူးကြီးများ",
            "ဓာတုတုံ့ပြန်မှုများကို အရှိန်မြှင့်ပေးသော အင်ဇိုင်းများ",
            "ငယ်ငယ်စိတ်တစ်ပိုင်း လုံးဝမရှိသော အက်တမ်တစ်လုံးတည်း",
            "ခန္ဓာကိုယ်မှ ဖယ်ရှားသည့် စွန့်ပစ်ပစ္စည်းများ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Carbohydrates are built from sugar units, proteins from amino acids, and fats from fatty acids and glycerol.",
            "All three are large molecules made by joining many smaller building-block molecules together.",
          ],
          hintsMy: [
            "ကာဗိုဟိုက်ဒရိတ်များကို သကြားယူနစ်များမှ၊ ပရိုတင်းများကို အမိုင်နိုအက်စစ်များမှ၊ အဆီများကို ဖက်တီးအက်စစ်နှင့် ဂလီစရောများမှ တည်ဆောက်သည်။",
            "သုံးမျိုးလုံးသည် ငယ်ငယ်တည်ဆောက်ဗလောက်မော်လီကျူးများ စုပေါင်းတွဲဆက်၍ ဖြစ်ပေါ်လာသော မော်လီကျူးကြီးများဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Enzymes are best described as...",
          questionMy:
              "အင်ဇိုင်းများကို အကောင်းဆုံးဖော်ပြရလျှင် မည်သို့ ဖော်ပြနိုင်သနည်း။",
          optionsEn: [
            "Biological catalysts that speed up chemical reactions without being used up",
            "A type of fat stored under the skin",
            "Waste products removed by the kidneys",
            "Simple sugars used for quick energy",
          ],
          optionsMy: [
            "အသုံးမကုန်ဘဲ ဓာတုတုံ့ပြန်မှုများကို အရှိန်မြှင့်ပေးသော ဇီဝဓာတ်ကူများ (biological catalysts)",
            "အရေပြားအောက်တွင် သိမ်းဆည်းထားသော အဆီအမျိုးအစားတစ်ခု",
            "ကျောက်ကပ်မှ ဖယ်ရှားသည့် စွန့်ပစ်ပစ္စည်းများ",
            "လျင်မြန်စွာ စွမ်းအင်ရရှိရန် အသုံးပြုသော ရိုးရှင်းသောသကြား",
          ],
          correctIndex: 0,
          hintsEn: [
            "A catalyst speeds up a reaction but is not itself changed or used up by the reaction.",
            "Enzymes are proteins produced by cells to control the rate of metabolic reactions.",
          ],
          hintsMy: [
            "ဓာတ်ကူတစ်ခုသည် တုံ့ပြန်မှုကို အရှိန်မြှင့်ပေးသော်လည်း ၎င်းကိုယ်တိုင် ပြောင်းလဲခြင်း (သို့) ကုန်ခြင်း မရှိပါ။",
            "အင်ဇိုင်းများသည် ဇီဝဖြစ်စဉ်တုံ့ပြန်မှုနှုန်းကို ထိန်းချုပ်ရန် ဆဲလ်များမှ ထုတ်လုပ်သော ပရိုတင်းများဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "The \"lock and key\" model explains enzyme action by describing how...",
          questionMy:
              "\"သော့ခလောက်နှင့် သော့\" (lock and key) မော်ဒယ်သည် အင်ဇိုင်းလုပ်ဆောင်ချက်ကို မည်သို့ ရှင်းပြသနည်း။",
          optionsEn: [
            "A substrate's shape fits precisely into an enzyme's active site",
            "Enzymes destroy substrates completely",
            "Any substrate can fit into any enzyme",
            "Enzymes are shaped like metal keys",
          ],
          optionsMy: [
            "ဆဗ်စတရိတ် (substrate) ၏ ပုံသဏ္ဍာန်သည် အင်ဇိုင်း၏ တက်ကြွနေရာ (active site) ထဲသို့ တိတိကျကျ ကိုက်ညီစွာ ဝင်သည်",
            "အင်ဇိုင်းများသည် ဆဗ်စတရိတ်များကို လုံးဝ ဖျက်ဆီးသည်",
            "မည်သည့်ဆဗ်စတရိတ်မဆို မည်သည့်အင်ဇိုင်းထဲသို့မဆို ကိုက်ညီနိုင်သည်",
            "အင်ဇိုင်းများသည် သတ္တုသော့ကဲ့သို့ ပုံသဏ္ဍာန်ရှိသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Just as a key must be the right shape for a specific lock, a substrate must be the right shape for a specific enzyme's active site.",
            "This is why each enzyme usually only works on one specific substrate, not many different ones.",
          ],
          hintsMy: [
            "သော့တစ်ချောင်းသည် သီးသန့်သော့ခလောက်နှင့် ကိုက်ညီရသကဲ့သို့ ဆဗ်စတရိတ်သည် သီးသန့်အင်ဇိုင်း၏ တက်ကြွနေရာနှင့် ကိုက်ညီရမည်။",
            "ဤအကြောင်းကြောင့် အင်ဇိုင်းတစ်ခုစီသည် များသောအားဖြင့် သီးခြားဆဗ်စတရိတ်တစ်ခုတည်းအတွက်သာ အလုပ်လုပ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What usually happens to an enzyme's activity as temperature rises well above its optimum?",
          questionMy:
              "အပူချိန်သည် အကောင်းဆုံးအပူချိန် (optimum) ထက် များစွာမြင့်တက်လာသောအခါ အင်ဇိုင်း၏ လုပ်ဆောင်နှုန်းသည် များသောအားဖြင့် မည်သို့ ဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "The enzyme denatures and its activity drops sharply",
            "The enzyme's activity keeps increasing forever",
            "Nothing changes at all",
            "The enzyme turns into a carbohydrate",
          ],
          optionsMy: [
            "အင်ဇိုင်း ပြင်ကွက်ပျက်စီး (denature) သွားပြီး လုပ်ဆောင်နှုန်း ချက်ချင်းကျဆင်းသည်",
            "အင်ဇိုင်း၏ လုပ်ဆောင်နှုန်းသည် အစဉ်မပြတ် ဆက်လက်တိုးလာနေသည်",
            "မည်သည့်အရာမျှ လုံးဝ ပြောင်းလဲမှု မရှိပါ",
            "အင်ဇိုင်းသည် ကာဗိုဟိုက်ဒရိတ်အဖြစ် ပြောင်းလဲသွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "High temperature breaks the bonds holding the enzyme's active site in its precise shape.",
            "Once denatured, the substrate no longer fits the active site, so the enzyme stops working -- this can't be reversed.",
          ],
          hintsMy: [
            "အပူချိန်မြင့်မားခြင်းသည် အင်ဇိုင်း၏ တက်ကြွနေရာကို တိကျသောပုံသဏ္ဍာန်တွင် ထိန်းထားသော ချိတ်ဆက်မှုများကို ဖြိုချသည်။",
            "ပြင်ကွက်ပျက်စီးပြီးနောက် ဆဗ်စတရိတ်သည် တက်ကြွနေရာနှင့် မကိုက်ညီတော့ဘဲ အင်ဇိုင်း အလုပ်ရပ်တန့်သွားသည် -- ဤအခြေအနေကို ပြန်လည် ပကတိအခြေအနေသို့ ပြန်ပြောင်း၍မရပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w3-d2",
      dayNumber: 2,
      titleEn: "Match the Molecule and Enzyme Vocabulary",
      titleMy:
          "မော်လီကျူးနှင့် အင်ဇိုင်းဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w3-dm-1",
          termEn: "Carbohydrate",
          termMy: "ကာဗိုဟိုက်ဒရိတ် (Carbohydrate)",
          matchEn:
              "A biological molecule built from sugar units, used mainly for energy.",
          matchMy:
              "အဓိကအားဖြင့် စွမ်းအင်အတွက် အသုံးပြုသော သကြားယူနစ်များမှ တည်ဆောက်ထားသည့် ဇီဝမော်လီကျူး။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w3-dm-2",
          termEn: "Protein",
          termMy: "ပရိုတင်း (Protein)",
          matchEn:
              "A biological molecule built from amino acids, used for growth and repair.",
          matchMy:
              "ကြီးထွားမှုနှင့် ပြုပြင်မှုအတွက် အသုံးပြုသော အမိုင်နိုအက်စစ်များမှ တည်ဆောက်ထားသည့် ဇီဝမော်လီကျူး။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w3-dm-3",
          termEn: "Lipid (Fat)",
          termMy: "လစ်ပစ် (Lipid) / အဆီ",
          matchEn:
              "A biological molecule built from fatty acids and glycerol, used for long-term energy storage.",
          matchMy:
              "ရေရှည်စွမ်းအင် သိုလှောင်ရန် အသုံးပြုသော ဖက်တီးအက်စစ်နှင့် ဂလီစရောများမှ တည်ဆောက်ထားသည့် ဇီဝမော်လီကျူး။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w3-dm-4",
          termEn: "Active Site",
          termMy: "တက်ကြွနေရာ (Active Site)",
          matchEn:
              "The precisely-shaped part of an enzyme where the substrate binds.",
          matchMy:
              "ဆဗ်စတရိတ် ချိတ်ဆက်ရာ အင်ဇိုင်း၏ တိကျသောပုံသဏ္ဍာန်ရှိသည့် အစိတ်အပိုင်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w3-dm-5",
          termEn: "Denature",
          termMy: "ပြင်ကွက်ပျက်စီးခြင်း (Denature)",
          matchEn:
              "A permanent change to an enzyme's shape caused by extreme heat or pH, stopping it from working.",
          matchMy:
              "အလွန်အမင်းအပူ (သို့) pH ကြောင့် အင်ဇိုင်း၏ပုံသဏ္ဍာန် အမြဲတမ်းပြောင်းလဲသွားပြီး အလုပ်မလုပ်တော့ခြင်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w3-d3",
      dayNumber: 3,
      titleEn: "Sort: Carbohydrate, Protein, or Lipid?",
      titleMy: "စီစစ်ကြမည် - ကာဗိုဟိုက်ဒရိတ်၊ ပရိုတင်း၊ (သို့) လစ်ပစ်",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Carbohydrate", "Protein", "Lipid"],
        bucketsMy: ["ကာဗိုဟိုက်ဒရိတ်", "ပရိုတင်း", "လစ်ပစ်"],
        items: [
          SortingItem(
            id: "igcsecs-w3-sort-1",
            labelEn: "Glucose",
            labelMy: "ဂလူးကို့စ် (Glucose)",
            correctBucketEn: "Carbohydrate",
            correctBucketMy: "ကာဗိုဟိုက်ဒရိတ်",
          ),
          SortingItem(
            id: "igcsecs-w3-sort-2",
            labelEn: "Starch",
            labelMy: "ကစီဓာတ် (Starch)",
            correctBucketEn: "Carbohydrate",
            correctBucketMy: "ကာဗိုဟိုက်ဒရိတ်",
          ),
          SortingItem(
            id: "igcsecs-w3-sort-3",
            labelEn: "Glycogen",
            labelMy: "ဂလိုင်ကိုဂျင် (Glycogen)",
            correctBucketEn: "Carbohydrate",
            correctBucketMy: "ကာဗိုဟိုက်ဒရိတ်",
          ),
          SortingItem(
            id: "igcsecs-w3-sort-4",
            labelEn: "Amylase (an enzyme)",
            labelMy: "အမိုင်လေ့စ် (Amylase) -- အင်ဇိုင်းတစ်မျိုး",
            correctBucketEn: "Protein",
            correctBucketMy: "ပရိုတင်း",
          ),
          SortingItem(
            id: "igcsecs-w3-sort-5",
            labelEn: "Keratin (in hair and nails)",
            labelMy: "ကယ်ရာတင် (Keratin) -- ဆံပင်နှင့်လက်သည်းတွင်ပါဝင်သည်",
            correctBucketEn: "Protein",
            correctBucketMy: "ပရိုတင်း",
          ),
          SortingItem(
            id: "igcsecs-w3-sort-6",
            labelEn: "Antibodies",
            labelMy: "ကာကွယ်ခံအားပစ္စည်း (Antibody)",
            correctBucketEn: "Protein",
            correctBucketMy: "ပရိုတင်း",
          ),
          SortingItem(
            id: "igcsecs-w3-sort-7",
            labelEn: "Cooking oil",
            labelMy: "ချက်ပြုတ်ဆီ",
            correctBucketEn: "Lipid",
            correctBucketMy: "လစ်ပစ်",
          ),
          SortingItem(
            id: "igcsecs-w3-sort-8",
            labelEn: "Body fat stored under the skin",
            labelMy: "အရေပြားအောက်တွင် သိမ်းဆည်းထားသော ခန္ဓာကိုယ်အဆီ",
            correctBucketEn: "Lipid",
            correctBucketMy: "လစ်ပစ်",
          ),
          SortingItem(
            id: "igcsecs-w3-sort-9",
            labelEn: "Cholesterol",
            labelMy: "ခိုလက်စထရော (Cholesterol)",
            correctBucketEn: "Lipid",
            correctBucketMy: "လစ်ပစ်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w3-d4",
      dayNumber: 4,
      titleEn: "Reading: Hnin Pwint's Amylase Investigation",
      titleMy: "စာဖတ်ခြင်း - နှင်းပွင့်၏ အမိုင်လေ့စ် စမ်းသပ်လေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Hnin Pwint's Amylase Investigation",
        titleMy: "နှင်းပွင့်၏ အမိုင်လေ့စ် စမ်းသပ်လေ့လာမှု",
        passageEn:
            "Hnin Pwint set up five test tubes, each containing the same volume of starch solution and the same concentration of amylase, an enzyme that breaks starch down into sugar. She placed the tubes in water baths held at five different temperatures: 10°C, 25°C, 37°C, 50°C, and 80°C. Every thirty seconds, she removed a drop from each tube and tested it with iodine solution, which turns blue-black in the presence of starch but stays browny-orange once the starch has been fully broken down.\n\nAt 10°C, the iodine stayed blue-black for a long time, showing the reaction was happening very slowly. At 37°C, the colour changed fastest of all, turning browny-orange within a couple of minutes -- Hnin Pwint recognised this as close to the enzyme's optimum temperature, where its molecules move fast enough to collide with starch molecules often, but its active site is still the correct shape. At 80°C, however, the iodine stayed blue-black no matter how long she waited, even though this was the highest temperature tested.\n\nHer teacher asked her to explain the 80°C result, since a hotter temperature might be expected to speed the reaction up even further. Hnin Pwint reasoned that the extreme heat must have denatured the amylase: the high temperature broke the bonds holding the enzyme's active site in its precise shape, so the starch molecules could no longer fit into it at all. Once denatured, she explained, an enzyme cannot return to its original shape even if the temperature is later lowered -- which is exactly why the 80°C tube showed no reaction at all, rather than just a slow one.",
        passageMy:
            "နှင်းပွင့်သည် ကစီဓာတ်ဒြပ်ရည် ပမာဏတူညီစွာနှင့် ကစီဓာတ်ကို သကြားအဖြစ် ဖြိုခွဲပေးသော အင်ဇိုင်းတစ်မျိုးဖြစ်သည့် အမိုင်လေ့စ် ပြင်းအားတူညီစွာ ပါဝင်သည့် စမ်းသပ်ပြွန်ငါးလုံးကို ပြင်ဆင်ခဲ့သည်။ သူသည် ပြွန်များကို ၁၀°C၊ ၂၅°C၊ ၃၇°C၊ ၅၀°C နှင့် ၈၀°C ဟူသော မတူညီသော အပူချိန်ငါးမျိုးရှိ ရေချိုးကန်များတွင် ချထားခဲ့သည်။ စက္ကန့် ၃၀ တစ်ကြိမ်တွင် ပြွန်တစ်ခုစီမှ ရေတစ်စက်ကို ထုတ်ယူပြီး၊ ကစီဓာတ်ရှိနေသေးလျှင် အပြာနက်ရောင်သို့ ပြောင်းလဲစေပြီး ကစီဓာတ် လုံးဝဖြိုခွဲပြီးသောအခါ အညိုရောင်/လိမ္မော်ရောင် အတိုင်း ဆက်လက်ရှိနေမည့် အိုင်အိုဒင်းဒြပ်ရည်ဖြင့် စစ်ဆေးခဲ့သည်။\n\n၁၀°C တွင် အိုင်အိုဒင်းသည် အပြာနက်ရောင် ကြာမြင့်စွာ ရှိနေခဲ့ပြီး တုံ့ပြန်မှု အလွန်နှေးကွေးစွာ ဖြစ်ပျက်နေကြောင်း ပြသခဲ့သည်။ ၃၇°C တွင် အရောင်ပြောင်းလဲမှု အမြန်ဆုံးဖြစ်ခဲ့ပြီး မိနစ်နှစ်မိနစ်အတွင်း အညိုရောင်/လိမ္မော်ရောင်သို့ ပြောင်းသွားခဲ့သည် -- နှင်းပွင့်သည် ဤအပူချိန်ကို အင်ဇိုင်း၏ အကောင်းဆုံးအပူချိန် (optimum temperature) နှင့် နီးစပ်ကြောင်း သိရှိခဲ့သည်၊ ထိုအပူချိန်တွင် ၎င်း၏ မော်လီကျူးများသည် ကစီဓာတ်မော်လီကျူးများနှင့် မကြာခဏ တိုက်မိနိုင်လောက်အောင် လျင်မြန်စွာ ရွေ့လျားသော်လည်း ၎င်း၏ တက်ကြွနေရာသည် မှန်ကန်သောပုံသဏ္ဍာန်ဖြင့် ဆက်လက်ရှိနေဆဲဖြစ်သည်။ သို့သော် ၈၀°C တွင် မည်မျှပင်ကြာမြင့်စွာ စောင့်ဆိုင်းသည်ဖြစ်စေ အိုင်အိုဒင်းသည် အပြာနက်ရောင် ဆက်လက်ရှိနေခဲ့ပြီး၊ ၎င်းသည် စမ်းသပ်ထားသော အပူချိန်များထဲတွင် အမြင့်ဆုံးဖြစ်သော်လည်း ဤသို့ဖြစ်ခဲ့သည်။\n\nအပူချိန်မြင့်လေလေ တုံ့ပြန်မှု ပိုမြန်လေဟု မျှော်လင့်ရမည့်ကြောင့် ဆရာမက ၈၀°C ရလဒ်ကို ရှင်းပြရန် နှင်းပွင့်ကို တောင်းဆိုခဲ့သည်။ နှင်းပွင့်သည် အလွန်အမင်း အပူချိန်ကြောင့် အမိုင်လေ့စ် ပြင်ကွက်ပျက်စီး (denature) သွားရမည်ဟု ဆင်ခြင်ခဲ့သည် - မြင့်မားသော အပူချိန်သည် အင်ဇိုင်း၏ တက်ကြွနေရာကို တိကျသောပုံသဏ္ဍာန်တွင် ထိန်းထားသော ချိတ်ဆက်မှုများကို ဖြိုချသောကြောင့် ကစီဓာတ်မော်လီကျူးများ လုံးဝ မကိုက်ညီနိုင်တော့ပါ။ ပြင်ကွက်ပျက်စီးပြီးနောက် အပူချိန်ကို နောက်ပိုင်းတွင် လျှော့ချသော်လည်း အင်ဇိုင်းသည် မူလပုံသဏ္ဍာန်သို့ ပြန်လည်ရောက်ရှိနိုင်တော့မည် မဟုတ်ကြောင်း သူ ရှင်းပြခဲ့သည် -- ဤအကြောင်းကြောင့်ပင် ၈၀°C ပြွန်တွင် နှေးကွေးသော တုံ့ပြန်မှုအစား တုံ့ပြန်မှု လုံးဝ မရှိတော့ခြင်းဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "Why did the iodine change colour fastest at 37°C?",
            questionMy:
                "၃၇°C တွင် အိုင်အိုဒင်း အဘယ်ကြောင့် အမြန်ဆုံး အရောင်ပြောင်းလဲခဲ့သနည်း။",
            optionsEn: [
              "This was close to the enzyme's optimum temperature",
              "The iodine itself boiled at this temperature",
              "No starch was present in this tube",
              "The enzyme had already denatured by this point",
            ],
            optionsMy: [
              "ဤအပူချိန်သည် အင်ဇိုင်း၏ အကောင်းဆုံးအပူချိန်နှင့် နီးစပ်နေသောကြောင့်",
              "အိုင်အိုဒင်းသည် ဤအပူချိန်တွင် ပွက်ဆူသွားသောကြောင့်",
              "ဤပြွန်တွင် ကစီဓာတ် လုံးဝမရှိသောကြောင့်",
              "ဤအချိန်တွင် အင်ဇိုင်း ပြင်ကွက်ပျက်စီးပြီးဖြစ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation of the 37°C result.",
              "At the optimum temperature, enzyme molecules move fast enough to collide often while keeping their correct active-site shape.",
            ],
            hintsMy: [
              "၃၇°C ရလဒ်နှင့်ပတ်သက်သော ဒုတိယစာပိုဒ်၏ ရှင်းပြချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အကောင်းဆုံးအပူချိန်တွင် အင်ဇိုင်းမော်လီကျူးများသည် မှန်ကန်သော တက်ကြွနေရာပုံသဏ္ဍာန်ကို ထိန်းထားရင်း မကြာခဏတိုက်မိနိုင်လောက်အောင် လျင်မြန်စွာ ရွေ့လျားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn: "Why did the iodine stay blue-black at 80°C?",
            questionMy:
                "၈၀°C တွင် အိုင်အိုဒင်း အဘယ်ကြောင့် အပြာနက်ရောင် ဆက်လက်ရှိနေခဲ့သနည်း။",
            optionsEn: [
              "The amylase had denatured and could no longer break down the starch",
              "The starch had already been fully broken down before the test began",
              "The water bath was not hot enough",
              "Iodine cannot detect starch above 50°C",
            ],
            optionsMy: [
              "အမိုင်လေ့စ် ပြင်ကွက်ပျက်စီးသွားပြီး ကစီဓာတ်ကို ဆက်လက် မဖြိုခွဲနိုင်တော့သောကြောင့်",
              "စစ်ဆေးမှု မစတင်မီ ကစီဓာတ် လုံးဝ ဖြိုခွဲပြီးသားဖြစ်နေသောကြောင့်",
              "ရေချိုးကန် အလုံအလောက် မပူသောကြောင့်",
              "အိုင်အိုဒင်းသည် ၅၀°C ထက်မြင့်ပါက ကစီဓာတ်ကို စစ်ဆေးမတွေ့နိုင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph, where Hnin Pwint reasons through this exact result.",
              "Once an enzyme's active site changes shape, its substrate can no longer bind to it.",
            ],
            hintsMy: [
              "နှင်းပွင့်သည် ဤရလဒ်ကို ဆင်ခြင်သည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အင်ဇိုင်း၏ တက်ကြွနေရာ ပုံသဏ္ဍာန်ပြောင်းလဲသွားပြီးနောက် ၎င်း၏ ဆဗ်စတရိတ်သည် ချိတ်ဆက်၍ မရနိုင်တော့ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to Hnin Pwint's reasoning, what happens if a denatured enzyme is cooled back down?",
            questionMy:
                "နှင်းပွင့်၏ ဆင်ခြင်ချက်အရ ပြင်ကွက်ပျက်စီးသွားသော အင်ဇိုင်းကို အပူချိန်ပြန်လျှော့ချပါက မည်သို့ဖြစ်သနည်း။",
            optionsEn: [
              "It cannot return to its original active-site shape",
              "It immediately returns to full working order",
              "It turns into a carbohydrate",
              "It becomes twice as fast as before",
            ],
            optionsMy: [
              "မူလ တက်ကြွနေရာပုံသဏ္ဍာန်သို့ ပြန်လည်ရောက်ရှိနိုင်တော့မည် မဟုတ်ပါ",
              "ချက်ချင်း အလုပ်အပြည့်အဝ ပြန်လုပ်နိုင်သည်",
              "ကာဗိုဟိုက်ဒရိတ်အဖြစ် ပြောင်းလဲသွားသည်",
              "ယခင်ထက် နှစ်ဆ ပိုမြန်လာသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Denaturing is a permanent change to an enzyme's shape, not a temporary one.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ပြင်ကွက်ပျက်စီးခြင်းသည် အင်ဇိုင်း၏ ပုံသဏ္ဍာန်ကို ယာယီမဟုတ်ဘဲ အမြဲတမ်း ပြောင်းလဲပစ်ခြင်းဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What was the independent variable in Hnin Pwint's investigation?",
            questionMy:
                "နှင်းပွင့်၏ စမ်းသပ်လေ့လာမှုတွင် လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်း (independent variable) မှာ အဘယ်နည်း။",
            optionsEn: [
              "Temperature",
              "The colour of iodine",
              "The volume of starch solution",
              "The type of test tube used",
            ],
            optionsMy: [
              "အပူချိန်",
              "အိုင်အိုဒင်း၏ အရောင်",
              "ကစီဓာတ်ဒြပ်ရည် ပမာဏ",
              "အသုံးပြုသော စမ်းသပ်ပြွန်အမျိုးအစား",
            ],
            correctIndex: 0,
            hintsEn: [
              "The independent variable is the one factor Hnin Pwint deliberately changed between the five tubes.",
              "Everything else -- starch volume, amylase concentration -- was kept the same across all five tubes.",
            ],
            hintsMy: [
              "လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်းသည် နှင်းပွင့် ရည်ရွယ်ချက်ရှိရှိ ပြွန်ငါးလုံးကြား ပြောင်းလဲခဲ့သော အချက်တစ်ခု ဖြစ်သည်။",
              "အခြားအချက်များ -- ကစီဓာတ်ပမာဏ၊ အမိုင်လေ့စ် ပြင်းအား -- သည် ပြွန်ငါးလုံးလုံးတွင် တူညီစွာ ထိန်းထားခဲ့သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w3-d5",
      dayNumber: 5,
      titleEn: "Week 3 Recap: Molecules and Enzymes",
      titleMy:
          "အပတ်စဉ် ၃ ပြန်လည်သုံးသပ်ခြင်း - မော်လီကျူးများနှင့် အင်ဇိုင်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Proteins are built from...",
          questionMy: "ပရိုတင်းများကို မည်သည့်အရာမှ တည်ဆောက်သနည်း။",
          optionsEn: [
            "Amino acids",
            "Sugar units",
            "Fatty acids and glycerol",
            "Enzymes",
          ],
          optionsMy: [
            "အမိုင်နိုအက်စစ်များ",
            "သကြားယူနစ်များ",
            "ဖက်တီးအက်စစ်နှင့်ဂလီစရော",
            "အင်ဇိုင်းများ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An enzyme's active site is where the...",
          questionMy: "အင်ဇိုင်း၏ တက်ကြွနေရာသည် မည်သည့်နေရာဖြစ်သနည်း။",
          optionsEn: [
            "Substrate binds",
            "Enzyme is stored",
            "Waste is removed",
            "Fat is broken down only",
          ],
          optionsMy: [
            "ဆဗ်စတရိတ် ချိတ်ဆက်ရာနေရာ",
            "အင်ဇိုင်း သိမ်းဆည်းရာနေရာ",
            "စွန့်ပစ်ပစ္စည်း ဖယ်ရှားရာနေရာ",
            "အဆီကိုသာ ဖြိုခွဲရာနေရာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "High temperature can cause an enzyme to...",
          questionMy:
              "အပူချိန်မြင့်မားခြင်းက အင်ဇိုင်းကို မည်သို့ဖြစ်စေနိုင်သနည်း။",
          optionsEn: [
            "Denature and stop working",
            "Work twice as fast forever",
            "Turn into a carbohydrate",
            "Become a different substrate",
          ],
          optionsMy: [
            "ပြင်ကွက်ပျက်စီးပြီး အလုပ်ရပ်တန့်စေသည်",
            "အမြဲတမ်း နှစ်ဆပိုမြန်စွာ အလုပ်လုပ်စေသည်",
            "ကာဗိုဟိုက်ဒရိတ်အဖြစ် ပြောင်းလဲစေသည်",
            "မတူညီသော ဆဗ်စတရိတ်အဖြစ် ပြောင်းလဲစေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is a lipid (fat)?",
          questionMy: "အောက်ပါတို့အနက် လစ်ပစ် (အဆီ) ဖြစ်သည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: ["Cooking oil", "Glucose", "Amylase", "Starch"],
          optionsMy: ["ချက်ပြုတ်ဆီ", "ဂလူးကို့စ်", "အမိုင်လေ့စ်", "ကစီဓာတ်"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 4 (Capstone): "Cellular Biology Practical Lab"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek4 = CourseWeekDef(
  id: "course-igcse-combsci-w4",
  weekNumber: 4,
  titleEn: "Cellular Biology Practical Lab",
  titleMy: "ဆဲလ်ဇီဝဗေဒ ဓာတ်ခွဲခန်း လက်တွေ့စမ်းသပ်မှု",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w4-d1",
      dayNumber: 1,
      titleEn: "Experimental Design Quiz",
      titleMy: "စမ်းသပ်မှု ဒီဇိုင်းဆွဲခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In an osmosis investigation using potato chips in different sugar concentrations, what is the independent variable?",
          questionMy:
              "မတူညီသော သကြားပြင်းအားများတွင် အာလူးအခြပ်များကို အသုံးပြု၍ ပြုလုပ်သော ရေစိမ့်ဝင်ခြင်း စမ်းသပ်မှုတွင် လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "The concentration of the sugar solution",
            "The change in mass of the potato chip",
            "The room temperature",
            "The colour of the potato",
          ],
          optionsMy: [
            "သကြားဒြပ်ရည်၏ ပြင်းအား",
            "အာလူးအခြပ်၏ အလေးချိန် ပြောင်းလဲမှု",
            "အခန်းအပူချိန်",
            "အာလူး၏ အရောင်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The independent variable is the one factor the experimenter deliberately changes on purpose.",
            "The change in mass is what is measured as a result -- that makes it the dependent variable, not the independent one.",
          ],
          hintsMy: [
            "လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်းသည် စမ်းသပ်သူက ရည်ရွယ်ချက်ရှိရှိ ပြောင်းလဲသော အချက်တစ်ခုဖြစ်သည်။",
            "အလေးချိန်ပြောင်းလဲမှုသည် ရလဒ်အနေဖြင့် တိုင်းတာသည့်အရာဖြစ်သည် -- ၎င်းက လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်းမဟုတ်ဘဲ မှီခိုပြောင်းလဲနိုင်ကိန်း (dependent variable) ဖြစ်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the same investigation, what is the dependent variable?",
          questionMy:
              "တူညီသော စမ်းသပ်မှုတွင် မှီခိုပြောင်းလဲနိုင်ကိန်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "The change in mass of the potato chip",
            "The concentration of the sugar solution",
            "The size of the test tube",
            "The time the chip is left in the solution",
          ],
          optionsMy: [
            "အာလူးအခြပ်၏ အလေးချိန် ပြောင်းလဲမှု",
            "သကြားဒြပ်ရည်၏ ပြင်းအား",
            "စမ်းသပ်ပြွန်၏ အရွယ်အစား",
            "ဒြပ်ရည်ထဲတွင် အခြပ်ချထားသည့် အချိန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The dependent variable is what you measure as your result -- it depends on the independent variable.",
            "Everything you keep the same on purpose (temperature, chip size, time) is a control variable, not the dependent one.",
          ],
          hintsMy: [
            "မှီခိုပြောင်းလဲနိုင်ကိန်းသည် ရလဒ်အဖြစ် တိုင်းတာသည့်အရာဖြစ်သည် -- ၎င်းသည် လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်းအပေါ် မှီခိုသည်။",
            "ရည်ရွယ်ချက်ရှိရှိ တူညီစွာထိန်းထားသော အရာများ (အပူချိန်၊ အခြပ်အရွယ်အစား၊ အချိန်) အားလုံးသည် ထိန်းချုပ်ပြောင်းလဲနိုင်ကိန်း (control variable) များဖြစ်ကြပြီး မှီခိုပြောင်းလဲနိုင်ကိန်း မဟုတ်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why must control variables (like chip size and time in solution) be kept the same across all test tubes?",
          questionMy:
              "ထိန်းချုပ်ပြောင်းလဲနိုင်ကိန်းများ (အခြပ်အရွယ်အစားနှင့် ဒြပ်ရည်ထဲထားသည့်အချိန်ကဲ့သို့) ကို စမ်းသပ်ပြွန်အားလုံးတွင် အဘယ်ကြောင့် တူညီစွာထိန်းရသနည်း။",
          optionsEn: [
            "So any difference in results can be confidently linked to the independent variable alone",
            "Because it makes the experiment look neater",
            "Because the equipment cannot be adjusted anyway",
            "It actually does not matter if they change",
          ],
          optionsMy: [
            "ရလဒ်များ၏ ကွဲပြားချက်ကို လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်းတစ်ခုတည်းနှင့်သာ ယုံကြည်စိတ်ချစွာ ချိတ်ဆက်နိုင်ရန်",
            "စမ်းသပ်မှုကို ပိုစနစ်တကျဖြစ်အောင်လုပ်ရန်",
            "ကိရိယာများကို မည်သို့မျှ ချိန်ညှိ၍မရသောကြောင့်",
            "၎င်းတို့ ပြောင်းလဲသည်ဖြစ်စေ အရေးမကြီးပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "If more than one variable changes at once, you cannot tell which one actually caused the result.",
            "Keeping everything else constant is what makes the comparison between test tubes a fair one.",
          ],
          hintsMy: [
            "တစ်ချိန်တည်းတွင် ပြောင်းလဲနိုင်ကိန်းတစ်ခုထက်ပို၍ ပြောင်းလဲပါက မည်သည့်အချက်က ရလဒ်ကို အမှန်တကယ် ဖြစ်ပေါ်စေကြောင်း မသိနိုင်ပါ။",
            "အခြားအရာအားလုံးကို ထိန်းထားခြင်းသည် စမ်းသပ်ပြွန်များကြား နှိုင်းယှဉ်မှုကို တရားမျှတသော (fair) နှိုင်းယှဉ်မှုဖြစ်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why do scientists repeat an experiment and take an average?",
          questionMy:
              "သိပ္ပံပညာရှင်များသည် အဘယ်ကြောင့် စမ်းသပ်မှုကို ထပ်ခါထပ်ခါလုပ်ပြီး ပျမ်းမျှတွက်ချက်ကြသနည်း။",
          optionsEn: [
            "To make the results more reliable by reducing the effect of anomalous results",
            "Because a single result is always completely accurate",
            "Because repeating wastes valuable time for no reason",
            "Because control variables need repeating, not results",
          ],
          optionsMy: [
            "ပုံမှန်မဟုတ်သောရလဒ်များ (anomalous results) ၏ သက်ရောက်မှုကို လျှော့ချ၍ ရလဒ်များကို ပိုမိုယုံကြည်စိတ်ချရစေရန်",
            "ရလဒ်တစ်ခုတည်းသည် အမြဲတမ်း လုံးဝတိကျသောကြောင့်",
            "ထပ်ခါထပ်ခါလုပ်ခြင်းသည် အကြောင်းမဲ့ အချိန်ကုန်စေသောကြောင့်",
            "ထိန်းချုပ်ပြောင်းလဲနိုင်ကိန်းများကို ထပ်ခါထပ်ခါလုပ်ရန် လိုအပ်ပြီး ရလဒ်များကို မလိုအပ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A single reading might be affected by a small error and not reflect the true result.",
            "Averaging several repeats reduces the effect of any one anomalous (unusually different) reading.",
          ],
          hintsMy: [
            "ဖတ်ချက်တစ်ခုတည်းသည် အမှားအနည်းငယ်ကြောင့် သက်ရောက်မှုရှိနိုင်ပြီး အမှန်တကယ်ရလဒ်ကို ထင်ဟပ်ချင်မှသာ ထင်ဟပ်နိုင်သည်။",
            "ထပ်ခါထပ်ခါဖတ်ချက်များ ပျမ်းမျှတွက်ချက်ခြင်းက ထူးထူးခြားခြား ကွဲပြားနေသောဖတ်ချက်တစ်ခု၏ သက်ရောက်မှုကို လျှော့ချပေးသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w4-d2",
      dayNumber: 2,
      titleEn: "Match the Practical Skills Vocabulary",
      titleMy:
          "လက်တွေ့စမ်းသပ်မှု ကျွမ်းကျင်မှုဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w4-dm-1",
          termEn: "Independent Variable",
          termMy: "လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်း (Independent Variable)",
          matchEn: "The one factor the experimenter deliberately changes.",
          matchMy: "စမ်းသပ်သူက ရည်ရွယ်ချက်ရှိရှိ ပြောင်းလဲသော အချက်တစ်ခု။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w4-dm-2",
          termEn: "Dependent Variable",
          termMy: "မှီခိုပြောင်းလဲနိုင်ကိန်း (Dependent Variable)",
          matchEn:
              "The factor that is measured as the result of the experiment.",
          matchMy: "စမ်းသပ်မှု၏ ရလဒ်အဖြစ် တိုင်းတာသော အချက်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w4-dm-3",
          termEn: "Control Variable",
          termMy: "ထိန်းချုပ်ပြောင်းလဲနိုင်ကိန်း (Control Variable)",
          matchEn: "A factor deliberately kept the same to make the test fair.",
          matchMy:
              "စစ်ဆေးမှုကို တရားမျှတစေရန် ရည်ရွယ်ချက်ရှိရှိ တူညီစွာထိန်းထားသော အချက်။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w4-dm-4",
          termEn: "Anomalous Result",
          termMy: "ပုံမှန်မဟုတ်သောရလဒ် (Anomalous Result)",
          matchEn:
              "A reading that does not fit the general pattern of the other results.",
          matchMy: "အခြားရလဒ်များ၏ ယေဘုယျပုံစံနှင့် မကိုက်ညီသော ဖတ်ချက်တစ်ခု။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w4-dm-5",
          termEn: "Repeat Readings",
          termMy: "ထပ်ခါထပ်ခါ ဖတ်ရှုခြင်း (Repeat Readings)",
          matchEn:
              "Taking a measurement more than once and averaging to improve reliability.",
          matchMy:
              "ယုံကြည်စိတ်ချရမှုကို တိုးမြှင့်ရန် တိုင်းတာမှုကို တစ်ကြိမ်ထက်ပို၍ ပြုလုပ်ပြီး ပျမ်းမျှတွက်ချက်ခြင်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w4-d3",
      dayNumber: 3,
      titleEn: "Sort: Independent, Dependent, or Control Variable?",
      titleMy:
          "စီစစ်ကြမည် - လွတ်လပ်သော၊ မှီခို၊ (သို့) ထိန်းချုပ် ပြောင်းလဲနိုင်ကိန်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Independent Variable",
          "Dependent Variable",
          "Control Variable",
        ],
        bucketsMy: [
          "လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်း",
          "မှီခိုပြောင်းလဲနိုင်ကိန်း",
          "ထိန်းချုပ်ပြောင်းလဲနိုင်ကိန်း",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w4-sort-1",
            labelEn: "Concentration of sugar solution (osmosis investigation)",
            labelMy: "သကြားဒြပ်ရည် ပြင်းအား (ရေစိမ့်ဝင်ခြင်း စမ်းသပ်မှု)",
            correctBucketEn: "Independent Variable",
            correctBucketMy: "လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်း",
          ),
          SortingItem(
            id: "igcsecs-w4-sort-2",
            labelEn: "Concentration of amylase (enzyme investigation)",
            labelMy: "အမိုင်လေ့စ် ပြင်းအား (အင်ဇိုင်း စမ်းသပ်မှု)",
            correctBucketEn: "Independent Variable",
            correctBucketMy: "လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်း",
          ),
          SortingItem(
            id: "igcsecs-w4-sort-3",
            labelEn: "Temperature (enzyme investigation)",
            labelMy: "အပူချိန် (အင်ဇိုင်း စမ်းသပ်မှု)",
            correctBucketEn: "Independent Variable",
            correctBucketMy: "လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်း",
          ),
          SortingItem(
            id: "igcsecs-w4-sort-4",
            labelEn: "Change in mass of the potato chip",
            labelMy: "အာလူးအခြပ်၏ အလေးချိန် ပြောင်းလဲမှု",
            correctBucketEn: "Dependent Variable",
            correctBucketMy: "မှီခိုပြောင်းလဲနိုင်ကိန်း",
          ),
          SortingItem(
            id: "igcsecs-w4-sort-5",
            labelEn: "Time taken for iodine to turn browny-orange",
            labelMy:
                "အိုင်အိုဒင်း အညိုရောင်/လိမ္မော်ရောင်သို့ ပြောင်းလဲရန် ကြာချိန်",
            correctBucketEn: "Dependent Variable",
            correctBucketMy: "မှီခိုပြောင်းလဲနိုင်ကိန်း",
          ),
          SortingItem(
            id: "igcsecs-w4-sort-6",
            labelEn: "Size of the potato chip",
            labelMy: "အာလူးအခြပ်၏ အရွယ်အစား",
            correctBucketEn: "Control Variable",
            correctBucketMy: "ထိန်းချုပ်ပြောင်းလဲနိုင်ကိန်း",
          ),
          SortingItem(
            id: "igcsecs-w4-sort-7",
            labelEn: "Volume of solution in each test tube",
            labelMy: "စမ်းသပ်ပြွန်တစ်ခုစီရှိ ဒြပ်ရည်ပမာဏ",
            correctBucketEn: "Control Variable",
            correctBucketMy: "ထိန်းချုပ်ပြောင်းလဲနိုင်ကိန်း",
          ),
          SortingItem(
            id: "igcsecs-w4-sort-8",
            labelEn: "Time the chip is left immersed in solution",
            labelMy: "အခြပ်ကို ဒြပ်ရည်ထဲတွင် နှစ်ထားသည့်အချိန်",
            correctBucketEn: "Control Variable",
            correctBucketMy: "ထိန်းချုပ်ပြောင်းလဲနိုင်ကိန်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w4-d4",
      dayNumber: 4,
      titleEn: "Reading: Aung Kyaw's Combined Investigation Write-Up",
      titleMy: "စာဖတ်ခြင်း - အောင်ကျော်၏ ပေါင်းစပ် စမ်းသပ်လေ့လာမှု အစီရင်ခံစာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Aung Kyaw's Combined Investigation Write-Up",
        titleMy: "အောင်ကျော်၏ ပေါင်းစပ် စမ်းသပ်လေ့လာမှု အစီရင်ခံစာ",
        passageEn:
            "For his term capstone project, Aung Kyaw combined the term's two practicals -- the potato chip osmosis investigation and the amylase enzyme investigation -- into a single write-up comparing how cell membranes and enzymes both depend on maintaining the right internal conditions. He began by identifying the independent, dependent, and control variables for each investigation separately, noting that sugar concentration was independent in the osmosis test while temperature was independent in the enzyme test, but in both cases the size of the sample and the volume of liquid used were carefully controlled.\n\nWhen a classmate's group reported a potato chip that gained an unusually large amount of mass compared to every other chip in their 10% sugar solution, Aung Kyaw suggested this was likely an anomalous result rather than a genuine pattern, since it did not fit the smooth trend the rest of their data showed. He recommended repeating that particular reading rather than simply deleting it, explaining that repeats and averages exist precisely to catch and reduce the effect of results like this one.\n\nIn his conclusion, Aung Kyaw drew a link between the two practicals that his teacher praised as genuinely insightful: both investigations, he wrote, showed a biological process working best within a narrow, specific range of conditions -- water concentration for osmosis to reach equilibrium, and temperature and pH for an enzyme's active site to keep its precise shape -- and both showed how disrupting that range, whether through extreme sugar concentration or extreme heat, changed the outcome in a predictable, explainable direction rather than randomly.",
        passageMy:
            "အောင်ကျော်သည် သူ၏ ပညာသင်နှစ်ဝက် နောက်ဆုံးစီမံကိန်းအတွက် ထိုနှစ်ဝက်၏ လက်တွေ့စမ်းသပ်မှုနှစ်ခု -- အာလူးအခြပ် ရေစိမ့်ဝင်ခြင်းစမ်းသပ်မှုနှင့် အမိုင်လေ့စ် အင်ဇိုင်းစမ်းသပ်မှု -- တို့ကို ဆဲလ်မြှေးပါးများနှင့် အင်ဇိုင်းများနှစ်ခုစလုံးသည် မှန်ကန်သော အတွင်းပိုင်းအခြေအနေများကို ထိန်းသိမ်းရန် မည်သို့မှီခိုနေကြောင်း နှိုင်းယှဉ်သော အစီရင်ခံစာတစ်စောင်တည်းအဖြစ် ပေါင်းစပ်ရေးသားခဲ့သည်။ သူသည် စမ်းသပ်မှုတစ်ခုစီအတွက် လွတ်လပ်သော၊ မှီခို၊ နှင့် ထိန်းချုပ်ပြောင်းလဲနိုင်ကိန်းများကို သီးခြားစီ ဖော်ထုတ်ခြင်းဖြင့် စတင်ခဲ့ပြီး၊ ရေစိမ့်ဝင်ခြင်းစစ်ဆေးမှုတွင် သကြားပြင်းအားသည် လွတ်လပ်သောကိန်းဖြစ်ပြီး အင်ဇိုင်းစစ်ဆေးမှုတွင် အပူချိန်သည် လွတ်လပ်သောကိန်းဖြစ်သော်လည်း၊ နှစ်ခုစလုံးတွင် နမူနာအရွယ်အစားနှင့် အသုံးပြုသော အရည်ပမာဏကို ဂရုတစိုက် ထိန်းချုပ်ထားခဲ့ကြောင်း သတိပြုမိသည်။\n\nအတန်းဖော်တစ်ဦး၏ အုပ်စုက ၁၀% သကြားဒြပ်ရည်တွင် အခြားအခြပ်အားလုံးထက် ထူးထူးခြားခြား အလေးချိန် များစွာတိုးလာသော အာလူးအခြပ်တစ်ချပ်ကို အစီရင်ခံသောအခါ၊ အောင်ကျော်က ၎င်းသည် ၎င်းတို့၏ အခြားအချက်အလက်များ ပြသနေသော ချောမွေ့သည့်လမ်းကြောင်းနှင့် မကိုက်ညီသောကြောင့် စစ်မှန်သော ပုံစံတစ်ခုထက် ပုံမှန်မဟုတ်သောရလဒ်ဖြစ်နိုင်ခြေ ပိုများကြောင်း အကြံပြုခဲ့သည်။ သူသည် ထိုဖတ်ချက်ကို ရိုးရှင်းစွာ ဖျက်ပစ်မည့်အစား ပြန်လည်ပြုလုပ်ရန် အကြံပြုခဲ့ပြီး၊ ထပ်ခါထပ်ခါလုပ်ခြင်းနှင့် ပျမ်းမျှတွက်ချက်ခြင်းများသည် ဤကဲ့သို့သောရလဒ်များ၏ သက်ရောက်မှုကို ဖမ်းယူ၍ လျှော့ချရန်အတွက် အတိအကျ ရှိနေခြင်းဖြစ်ကြောင်း ရှင်းပြခဲ့သည်။\n\nသူ၏ ကောက်ချက်တွင် အောင်ကျော်သည် ဆရာမက အမှန်တကယ် ထိုးထွင်းသိမြင်မှုရှိသည်ဟု ချီးကျူးခဲ့သော လက်တွေ့စမ်းသပ်မှုနှစ်ခုကြား ဆက်စပ်မှုတစ်ခုကို ဆွဲထုတ်ခဲ့သည် - စမ်းသပ်မှုနှစ်ခုစလုံးသည် ဇီဝဖြစ်စဉ်တစ်ခုသည် အခြေအနေအကျယ်အဝန်းကျဉ်းမြောင်းသော သီးခြားအတိုင်းအတာအတွင်းတွင်သာ အကောင်းဆုံးအလုပ်လုပ်ကြောင်းကို ပြသခဲ့သည် -- ရေစိမ့်ဝင်ခြင်း ဟန်ချက်ညီရန် ရေပြင်းအားနှင့် အင်ဇိုင်း၏ တက်ကြွနေရာ တိကျသောပုံသဏ္ဍာန် ထိန်းထားရန် အပူချိန်နှင့် pH -- ထို့အပြင် ထိုအတိုင်းအတာကို ဖျက်ဆီးလိုက်ခြင်းက (အလွန်အမင်း သကြားပြင်းအားဖြင့်ဖြစ်စေ၊ အလွန်အမင်းအပူဖြင့်ဖြစ်စေ) ရလဒ်ကို ကျပန်းမဟုတ်ဘဲ ခန့်မှန်းနိုင်ပြီး ရှင်းပြနိုင်သောလမ်းကြောင်းသို့ ပြောင်းလဲစေကြောင်း ပြသခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did Aung Kyaw identify as the independent variable in the enzyme investigation?",
            questionMy:
                "အင်ဇိုင်းစစ်ဆေးမှုတွင် အောင်ကျော်သည် မည်သည့်အချက်ကို လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်းအဖြစ် ဖော်ထုတ်ခဲ့သနည်း။",
            optionsEn: [
              "Temperature",
              "Sugar concentration",
              "The size of the test tube",
              "The colour of iodine",
            ],
            optionsMy: [
              "အပူချိန်",
              "သကြားပြင်းအား",
              "စမ်းသပ်ပြွန်၏ အရွယ်အစား",
              "အိုင်အိုဒင်း၏ အရောင်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first paragraph, where Aung Kyaw compares the independent variable of each investigation.",
              "Sugar concentration was independent in the osmosis test -- a different variable was independent in the enzyme test.",
            ],
            hintsMy: [
              "အောင်ကျော်သည် စစ်ဆေးမှုတစ်ခုစီ၏ လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်းကို နှိုင်းယှဉ်ထားသည့် ပထမစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "သကြားပြင်းအားသည် ရေစိမ့်ဝင်ခြင်းစစ်ဆေးမှုတွင် လွတ်လပ်သောကိန်းဖြစ်ခဲ့သည် -- အင်ဇိုင်းစစ်ဆေးမှုတွင် မတူညီသော ကိန်းရှင်တစ်ခု လွတ်လပ်သောကိန်းဖြစ်ခဲ့သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Aung Kyaw think the classmate's unusual potato chip result was anomalous?",
            questionMy:
                "အောင်ကျော်သည် အတန်းဖော်၏ ထူးထူးခြားခြား အာလူးအခြပ်ရလဒ်ကို ပုံမှန်မဟုတ်ဟု အဘယ်ကြောင့် ထင်ခဲ့သနည်း။",
            optionsEn: [
              "It did not fit the smooth trend shown by the rest of the data",
              "It was the only chip weighed at all",
              "It was measured using a different balance",
              "It came from a different sugar solution altogether",
            ],
            optionsMy: [
              "ကျန်အချက်အလက်များ ပြသနေသော ချောမွေ့သည့်လမ်းကြောင်းနှင့် မကိုက်ညီသောကြောင့်",
              "အလေးချိန်ချသော အခြပ်တစ်ခုတည်းသာ ဖြစ်ခဲ့သောကြောင့်",
              "မတူညီသော ချိန်ခွင်တစ်ခုဖြင့် တိုင်းတာခဲ့သောကြောင့်",
              "လုံးဝမတူညီသော သကြားဒြပ်ရည်မှ ရရှိခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation of Aung Kyaw's reasoning.",
              "An anomalous result is one that doesn't match the pattern the rest of the results show.",
            ],
            hintsMy: [
              "အောင်ကျော်၏ ဆင်ခြင်ချက်ကို ရှင်းပြသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ပုံမှန်မဟုတ်သောရလဒ်ဆိုသည်မှာ ကျန်ရလဒ်များ ပြသနေသော ပုံစံနှင့် မကိုက်ညီသောရလဒ်တစ်ခု ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Aung Kyaw recommend doing about the anomalous result, instead of deleting it?",
            questionMy:
                "ပုံမှန်မဟုတ်သောရလဒ်ကို ဖျက်ပစ်မည့်အစား အောင်ကျော်သည် မည်သို့ပြုလုပ်ရန် အကြံပြုခဲ့သနည်း။",
            optionsEn: [
              "Repeat that particular reading",
              "Ignore it completely without comment",
              "Report it as the true average",
              "Change the independent variable",
            ],
            optionsMy: [
              "ထိုဖတ်ချက်ကို ပြန်လည်ပြုလုပ်ရန်",
              "မှတ်ချက်တစ်ခုမျှမပေးဘဲ လုံးဝ လျစ်လျူရှုရန်",
              "၎င်းကို စစ်မှန်သောပျမ်းမျှတန်ဖိုးအဖြစ် အစီရင်ခံရန်",
              "လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်းကို ပြောင်းလဲရန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's final sentence about why repeats and averages exist.",
              "Repeating a suspicious reading lets you check whether it was a genuine measurement error.",
            ],
            hintsMy: [
              "ထပ်ခါထပ်ခါလုပ်ခြင်းနှင့် ပျမ်းမျှတွက်ချက်ခြင်းများ အဘယ်ကြောင့်ရှိနေသည်ဆိုသည်နှင့်ပတ်သက်သော ဒုတိယစာပိုဒ်၏ နောက်ဆုံးဝါကျကို ပြန်ဖတ်ကြည့်ပါ။",
              "သံသယဖြစ်ဖွယ်ဖတ်ချက်တစ်ခုကို ပြန်လည်ပြုလုပ်ခြင်းက ၎င်းသည် စစ်မှန်သောတိုင်းတာမှုအမှားဟုတ်၊ မဟုတ် စစ်ဆေးနိုင်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What common pattern did Aung Kyaw's conclusion link between the two investigations?",
            questionMy:
                "အောင်ကျော်၏ ကောက်ချက်သည် စစ်ဆေးမှုနှစ်ခုကြား မည်သည့် ဘုံပုံစံကို ဆက်စပ်ပေးခဲ့သနည်း။",
            optionsEn: [
              "Both processes work best only within a narrow, specific range of conditions",
              "Both processes are completely unaffected by temperature",
              "Both processes only happen in plant cells",
              "Both processes use exactly the same independent variable",
            ],
            optionsMy: [
              "ဖြစ်စဉ်နှစ်ခုစလုံးသည် ကျဉ်းမြောင်းသော သီးခြားအခြေအနေအတိုင်းအတာအတွင်းတွင်သာ အကောင်းဆုံးအလုပ်လုပ်သည်",
              "ဖြစ်စဉ်နှစ်ခုစလုံးသည် အပူချိန်၏ သက်ရောက်မှု လုံးဝမရှိပါ",
              "ဖြစ်စဉ်နှစ်ခုစလုံးသည် အပင်ဆဲလ်များတွင်သာ ဖြစ်ပျက်သည်",
              "ဖြစ်စဉ်နှစ်ခုစလုံးသည် လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်း အတိအကျတူညီစွာ အသုံးပြုသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final paragraph.",
              "Think about the optimum temperature/pH for enzymes and the equilibrium point for osmosis -- both are a narrow range, not an unlimited one.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးအပိုဒ်တွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အင်ဇိုင်းများအတွက် အကောင်းဆုံးအပူချိန်/pH နှင့် ရေစိမ့်ဝင်ခြင်းအတွက် ဟန်ချက်ညီမှတ်ကို စဉ်းစားကြည့်ပါ -- နှစ်ခုစလုံးသည် ကျဉ်းမြောင်းသောအတိုင်းအတာဖြစ်ပြီး အကန့်အသတ်မရှိသောအတိုင်းအတာ မဟုတ်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w4-d5",
      dayNumber: 5,
      titleEn: "Term 1 Recap: Cell Biology and Organisation",
      titleMy: "ပထမနှစ်ဝက် ပြန်လည်သုံးသပ်ခြင်း - ဆဲလ်ဇီဝဗေဒနှင့် ဖွဲ့စည်းပုံ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which structure is unique to plant cells?",
          questionMy:
              "အပင်ဆဲလ်များတွင်သာ ထူးခြားစွာရှိသော ဖွဲ့စည်းပုံမှာ အဘယ်နည်း။",
          optionsEn: ["Cell wall", "Nucleus", "Cell membrane", "Mitochondria"],
          optionsMy: [
            "ဆဲလ်နံရံ",
            "နျူကလိယပ်စ်",
            "ဆဲလ်မြှေးပါး",
            "မိုက်တိုကွန်ဒရီးယား",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Osmosis is the diffusion of...",
          questionMy: "ရေစိမ့်ဝင်ခြင်းသည် မည်သည့်ပျံ့နှံ့ခြင်းဖြစ်သနည်း။",
          optionsEn: [
            "Water molecules across a partially permeable membrane",
            "Oxygen molecules only",
            "Any dissolved substance",
            "Enzymes only",
          ],
          optionsMy: [
            "တစ်စိတ်တစ်ပိုင်းစိမ့်ဝင်နိုင်သည့်မြှေးပါးကိုဖြတ်၍ ရေမော်လီကျူးများ",
            "ဓာတ်အောက်ဆီဂျင်မော်လီကျူးများသာ",
            "ပျော်ဝင်သည့်ပစ္စည်းမည်သည့်အမျိုးအစားမဆို",
            "အင်ဇိုင်းများသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "An enzyme's active site is destroyed permanently when the enzyme...",
          questionMy:
              "အင်ဇိုင်း၏ တက်ကြွနေရာသည် မည်သည့်အချိန်တွင် အမြဲတမ်း ပျက်စီးသွားသနည်း။",
          optionsEn: [
            "Denatures",
            "Binds to its substrate normally",
            "Is stored at room temperature",
            "Speeds up a reaction",
          ],
          optionsMy: [
            "ပြင်ကွက်ပျက်စီးသောအခါ",
            "၎င်း၏ ဆဗ်စတရိတ်နှင့် ပုံမှန်ချိတ်ဆက်သောအခါ",
            "အခန်းအပူချိန်တွင် သိမ်းဆည်းထားသောအခါ",
            "တုံ့ပြန်မှုကို အရှိန်မြှင့်ပေးသောအခါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In an investigation, a control variable is...",
          questionMy:
              "စမ်းသပ်လေ့လာမှုတစ်ခုတွင် ထိန်းချုပ်ပြောင်းလဲနိုင်ကိန်းသည် မည်သို့သောအချက်ဖြစ်သနည်း။",
          optionsEn: [
            "Kept the same to make the test fair",
            "The factor deliberately changed",
            "The factor that is measured",
            "Always the temperature",
          ],
          optionsMy: [
            "စစ်ဆေးမှုကို တရားမျှတစေရန် တူညီစွာ ထိန်းထားသည့်အချက်",
            "ရည်ရွယ်ချက်ရှိရှိ ပြောင်းလဲထားသည့်အချက်",
            "တိုင်းတာသည့်အချက်",
            "အမြဲတမ်း အပူချိန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Why do scientists repeat readings and take an average?",
          questionMy:
              "သိပ္ပံပညာရှင်များသည် အဘယ်ကြောင့် ဖတ်ချက်များကို ထပ်ခါထပ်ခါလုပ်ပြီး ပျမ်းမျှတွက်ချက်ကြသနည်း။",
          optionsEn: [
            "To reduce the effect of anomalous results and improve reliability",
            "Because a single reading is always wrong",
            "Because it is required by law",
            "To make the independent variable change faster",
          ],
          optionsMy: [
            "ပုံမှန်မဟုတ်သောရလဒ်များ၏ သက်ရောက်မှုကို လျှော့ချပြီး ယုံကြည်စိတ်ချရမှုကို တိုးမြှင့်ရန်",
            "ဖတ်ချက်တစ်ခုတည်းသည် အမြဲတမ်း မှားနေသောကြောင့်",
            "ဥပဒေအရ လိုအပ်သောကြောင့်",
            "လွတ်လပ်သောပြောင်းလဲနိုင်ကိန်းကို ပိုမြန်စွာပြောင်းလဲစေရန်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 1: "Biology - Cell Biology & Organisation" (Weeks 1-4)
// =====================================================================

const CourseTermDef igcseCombinedScienceTerm1 = CourseTermDef(
  id: "course-igcse-combsci-t1",
  termNumber: 1,
  titleEn: "Cell Biology and Organisation",
  titleMy: "ဆဲလ်ဇီဝဗေဒနှင့် ဖွဲ့စည်းပုံ",
  certificateTitleEn: "Cell Biology and Organisation",
  certificateTitleMy: "ဆဲလ်ဇီဝဗေဒနှင့် ဖွဲ့စည်းပုံ",
  weeks: [
    _igcseCombSciWeek1,
    _igcseCombSciWeek2,
    _igcseCombSciWeek3,
    _igcseCombSciWeek4,
  ],
);
