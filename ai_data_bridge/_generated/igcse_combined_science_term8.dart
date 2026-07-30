// File: ai_data_bridge/_generated/igcse_combined_science_term8.dart
// IGCSE Combined Science -- Term 8: "Chemistry - Air, Water and Organic
// Chemistry" (Weeks 29-32), authored from the corrected weekly topic
// map in ai_data_bridge/igcse_combined_science_all_terms.dart.
// Staging artifact only -- not yet wired into course_pathway_bank.dart's
// Grade.igcse pathway. Follows the exact DailyLessonDef/CourseWeekDef/
// CourseTermDef schema and id/xp conventions established by Terms 1-7
// (igcse_combined_science_term1.dart through
// igcse_combined_science_term7.dart) and _secondary3SciencePathway,
// including its rotating cast of named Myanmar-student protagonists
// (one per week's reading passage, not a single fixed character).
//
// Week 29 (Air and Water): composition of air, pollution and greenhouse
// gases, water treatment. Week 30 (Introduction to Organic Chemistry):
// alkanes and alkenes, fractional distillation of crude oil,
// polymerisation. Week 31 (Inheritance, Genes, and Evolution -- a
// Biology breadth strand deliberately breaking up the term's Chemistry
// arc, exactly as the corrected topic map specifies): DNA and
// chromosomes, monohybrid crosses, natural selection. Week 32 (Capstone
// -- Organic & Environmental Chemistry Studio): organic reactions,
// environmental impact analysis, and mixed exam-style problem solving
// across the whole term.

import 'package:nova_academy/features/lessons/course_pathway_bank.dart';
import 'package:nova_academy/features/lessons/interactive_content_models.dart';
import 'package:nova_academy/features/lessons/mock_quiz_data.dart';

// =====================================================================
// Week 29: "Air and Water"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek29 = CourseWeekDef(
  id: "course-igcse-combsci-w29",
  weekNumber: 29,
  titleEn: "Air and Water",
  titleMy: "လေထုနှင့် ရေထု",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w29-d1",
      dayNumber: 1,
      titleEn: "Air Composition and Water Treatment Quiz",
      titleMy: "လေထုဖွဲ့စည်းပုံနှင့် ရေသန့်စင်ခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Approximately what percentage of clean, dry air is nitrogen?",
          questionMy:
              "သန့်ရှင်း၍ ခြောက်သွေ့သော လေထု၏ ခန့်မှန်းအားဖြင့် အဆမည်မျှသည် နိုက်ထရိုဂျင်ဖြစ်သနည်း။",
          optionsEn: ["About 78%", "About 21%", "About 50%", "About 1%"],
          optionsMy: [
            "ခန့်မှန်းအားဖြင့် ၇၈%",
            "ခန့်မှန်းအားဖြင့် ၂၁%",
            "ခန့်မှန်းအားဖြင့် ၅၀%",
            "ခန့်မှန်းအားဖြင့် ၁%",
          ],
          correctIndex: 0,
          hintsEn: [
            "Air is roughly 78% nitrogen and about 21% oxygen, with the remaining 1% made up of gases like argon and carbon dioxide.",
            "Nitrogen is by far the most abundant gas in the atmosphere, even though oxygen is the one most living things need directly.",
          ],
          hintsMy: [
            "လေထုသည် ခန့်မှန်းအားဖြင့် နိုက်ထရိုဂျင် ၇၈% နှင့် အောက်ဆီဂျင် ၂၁% ခန့်ရှိပြီး၊ ကျန် ၁% သည် အာဂွန်နှင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကဲ့သို့သော ဓာတ်ငွေ့များ ဖြစ်သည်။",
            "နိုက်ထရိုဂျင်သည် လေထုအတွင်း အများဆုံးရှိသော ဓာတ်ငွေ့ဖြစ်ပြီး၊ အသက်ရှင်သတ္တဝါအများစု တိုက်ရိုက်လိုအပ်သည့်ဓာတ်ငွေ့မှာ အောက်ဆီဂျင်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which gas is the main contributor to the enhanced greenhouse effect from human activity?",
          questionMy:
              "လူသားလုပ်ဆောင်ချက်များကြောင့် ဖြစ်ပေါ်လာသော ဖန်လုံအိမ်အာနိသင် တိုးပွားမှုအတွက် အဓိကတာဝန်ရှိသော ဓာတ်ငွေ့မှာ အဘယ်နည်း။",
          optionsEn: ["Carbon dioxide", "Nitrogen", "Argon", "Helium"],
          optionsMy: [
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်",
            "နိုက်ထရိုဂျင်",
            "အာဂွန်",
            "ဟီလီယမ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Burning fossil fuels for energy releases large quantities of this gas into the atmosphere.",
            "This gas traps outgoing infrared radiation that would otherwise escape into space, warming the atmosphere -- the enhanced greenhouse effect.",
          ],
          hintsMy: [
            "စွမ်းအင်အတွက် ရုပ်ကြွင်းလောင်စာများကို လောင်ကျွမ်းစေခြင်းက ဤဓာတ်ငွေ့ကို လေထုထဲသို့ အလွန်များစွာ လွှတ်ထုတ်ပေးသည်။",
            "ဤဓာတ်ငွေ့သည် အာကာသထဲသို့ ထွက်ပြေးလိမ့်မည့် ထွက်ခွာနေသော အင်ဖရာရက်ရေဒီယေးရှင်းကို ချုပ်ကိုင်ထားသဖြင့် လေထုကို နွေးထွေးစေသည် -- ဖန်လုံအိမ်အာနိသင် တိုးပွားမှုဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which process is used at a water treatment works to kill harmful microorganisms in drinking water?",
          questionMy:
              "သောက်သုံးရေရှိ အန္တရာယ်ရှိသော အဏုဇီဝပိုးများကို သတ်ဖျက်ရန် ရေသန့်စင်စက်ရုံများတွင် မည်သည့်လုပ်ငန်းစဉ်ကို အသုံးပြုသနည်း။",
          optionsEn: [
            "Chlorination",
            "Photosynthesis",
            "Fermentation",
            "Combustion",
          ],
          optionsMy: [
            "ကလိုရင်းနေးရှင်း (Chlorination)",
            "အလင်းမှီစုဖွဲ့ခြင်း",
            "ခြောက်ဖောက်ခြင်း",
            "လောင်ကျွမ်းခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Chlorine is added to the water as a final disinfection step, after sedimentation and filtration have already removed most solid debris.",
            "Even clear, filtered water can still contain harmful microorganisms, so this chemical step is essential before the water is safe to drink.",
          ],
          hintsMy: [
            "ကြည်လင်ခြင်းနှင့် ရေစစ်ခြင်းက အစိုင်အခဲအမှိုက်များ အများစုကို ဖယ်ရှားပြီးနောက် နောက်ဆုံးပိုးသတ်ခြင်းအဆင့်အဖြစ် ကလိုရင်းကို ရေထဲသို့ ထည့်ပေးသည်။",
            "ကြည်လင်၍ စစ်ထုတ်ထားသော ရေတောင်မှ အန္တရာယ်ရှိသော အဏုဇီဝပိုးများ ကျန်ရှိနေနိုင်သောကြောင့် ရေသောက်သုံးရန် ဘေးကင်းစေမီ ဤဓာတုအဆင့် လိုအပ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Sedimentation and filtration at a water treatment works mainly remove...",
          questionMy:
              "ရေသန့်စင်စက်ရုံများရှိ ကြည်လင်ခြင်းနှင့် ရေစစ်ခြင်းတို့သည် အဓိကအားဖြင့် မည်သည့်အရာကို ဖယ်ရှားသနည်း။",
          optionsEn: [
            "Solid particles and suspended debris",
            "Dissolved salts, completely",
            "All microorganisms, completely",
            "Carbon dioxide gas",
          ],
          optionsMy: [
            "အစိုင်အခဲအမှုန်များနှင့် ပျော်ဝင်နေသော အမှိုက်များ",
            "ပျော်ဝင်နေသောဆားများ၊ လုံးဝ",
            "အဏုဇီဝပိုးများအားလုံး၊ လုံးဝ",
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်ဓာတ်ငွေ့",
          ],
          correctIndex: 0,
          hintsEn: [
            "Sedimentation allows heavier suspended solids to settle out under gravity, and filtration then removes the remaining fine solid particles.",
            "Neither step reliably kills microorganisms, which is exactly why chlorination is still needed as a separate step afterward.",
          ],
          hintsMy: [
            "ကြည်လင်ခြင်းက ပိုလေးသော ပျော်ဝင်နေသောအစိုင်အခဲများကို ဆွဲငင်အားဖြင့် နစ်စေပြီး၊ ရေစစ်ခြင်းက ကျန်ရှိသော အစိုင်အခဲအမှုန်ငယ်များကို ဖယ်ရှားပေးသည်။",
            "နှစ်ခုစလုံးက အဏုဇီဝပိုးများကို ယုံကြည်စိတ်ချစွာ မသတ်ဖျက်နိုင်ပါ -- ဤအကြောင်းကြောင့် ထို့နောက်တွင် ကလိုရင်းနေးရှင်းကို သီးခြားအဆင့်တစ်ခုအဖြစ် ဆက်လက်လိုအပ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w29-d2",
      dayNumber: 2,
      titleEn: "Match the Air and Water Vocabulary",
      titleMy: "လေထုနှင့် ရေထုဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w29-dm-1",
          termEn: "Greenhouse Effect",
          termMy: "ဖန်လုံအိမ်အာနိသင် (Greenhouse Effect)",
          matchEn:
              "The trapping of outgoing infrared radiation by gases such as carbon dioxide and methane, warming the Earth's atmosphere.",
          matchMy:
              "ကာဗွန်ဒိုင်အောက်ဆိုဒ်နှင့် မီသိန်းကဲ့သို့သော ဓာတ်ငွေ့များက ထွက်ခွာနေသော အင်ဖရာရက်ရေဒီယေးရှင်းကို ချုပ်ကိုင်ထားပြီး ကမ္ဘာ့လေထုကို နွေးထွေးစေခြင်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w29-dm-2",
          termEn: "Combustion",
          termMy: "လောင်ကျွမ်းခြင်း (Combustion)",
          matchEn:
              "The burning of a fuel in oxygen, releasing energy and, for fossil fuels, carbon dioxide.",
          matchMy:
              "စွမ်းအင်ကို လွှတ်ထုတ်ပေးပြီး ရုပ်ကြွင်းလောင်စာများအတွက် ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို ထွက်ပေါ်စေသော၊ အောက်ဆီဂျင်ထဲတွင် လောင်စာလောင်ကျွမ်းခြင်း။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w29-dm-3",
          termEn: "Sedimentation",
          termMy: "ကြည်လင်ခြင်း (Sedimentation)",
          matchEn:
              "Allowing suspended solid particles in water to settle out under gravity.",
          matchMy:
              "ရေထဲရှိ ပျော်ဝင်နေသော အစိုင်အခဲအမှုန်များကို ဆွဲငင်အားဖြင့် နစ်ဆင်းစေခြင်း။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w29-dm-4",
          termEn: "Filtration",
          termMy: "ရေစစ်ခြင်း (Filtration)",
          matchEn:
              "Passing water through a fine material to remove remaining insoluble solid particles.",
          matchMy:
              "ကျန်ရှိသော မပျော်ဝင်နိုင်သော အစိုင်အခဲအမှုန်များကို ဖယ်ရှားရန် ရေကို ပါးလွှာသောပစ္စည်းတစ်ခုကိုဖြတ်၍ စီးဆင်းစေခြင်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w29-dm-5",
          termEn: "Chlorination",
          termMy: "ကလိုရင်းနေးရှင်း (Chlorination)",
          matchEn:
              "Adding chlorine to water to kill harmful microorganisms before it is safe to drink.",
          matchMy:
              "သောက်သုံးရန် ဘေးကင်းစေမီ အန္တရာယ်ရှိသော အဏုဇီဝပိုးများကို သတ်ဖျက်ရန် ရေထဲသို့ ကလိုရင်း ထည့်ပေးခြင်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w29-d3",
      dayNumber: 3,
      titleEn: "Sort: Clean Air Component, Pollutant, or Water Treatment Step?",
      titleMy:
          "စီစစ်ကြမည် - သန့်ရှင်းလေထုအစိတ်အပိုင်း၊ ညစ်ညမ်းစေသောပစ္စည်း (သို့) ရေသန့်စင်ခြင်းအဆင့်",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Component of Clean Air",
          "Air Pollutant",
          "Water Treatment Step",
        ],
        bucketsMy: [
          "သန့်ရှင်းလေထု အစိတ်အပိုင်း",
          "လေထုညစ်ညမ်းစေသောပစ္စည်း",
          "ရေသန့်စင်ခြင်း အဆင့်",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w29-sort-1",
            labelEn: "Nitrogen",
            labelMy: "နိုက်ထရိုဂျင်",
            correctBucketEn: "Component of Clean Air",
            correctBucketMy: "သန့်ရှင်းလေထု အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w29-sort-2",
            labelEn: "Oxygen",
            labelMy: "အောက်ဆီဂျင်",
            correctBucketEn: "Component of Clean Air",
            correctBucketMy: "သန့်ရှင်းလေထု အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w29-sort-3",
            labelEn: "Argon",
            labelMy: "အာဂွန်",
            correctBucketEn: "Component of Clean Air",
            correctBucketMy: "သန့်ရှင်းလေထု အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w29-sort-4",
            labelEn: "Carbon monoxide from car exhausts",
            labelMy: "ကားထွက်လေမှ ကာဗွန်မိုနောက်ဆိုဒ်",
            correctBucketEn: "Air Pollutant",
            correctBucketMy: "လေထုညစ်ညမ်းစေသောပစ္စည်း",
          ),
          SortingItem(
            id: "igcsecs-w29-sort-5",
            labelEn: "Sulfur dioxide from burning coal",
            labelMy: "ကျောက်မီးသွေးလောင်ကျွမ်းမှုမှ ဆာလဖာဒိုင်အောက်ဆိုဒ်",
            correctBucketEn: "Air Pollutant",
            correctBucketMy: "လေထုညစ်ညမ်းစေသောပစ္စည်း",
          ),
          SortingItem(
            id: "igcsecs-w29-sort-6",
            labelEn: "Particulates (soot)",
            labelMy: "အမှုန်ကလေးများ (မီးခိုးမှုန့်)",
            correctBucketEn: "Air Pollutant",
            correctBucketMy: "လေထုညစ်ညမ်းစေသောပစ္စည်း",
          ),
          SortingItem(
            id: "igcsecs-w29-sort-7",
            labelEn: "Sedimentation",
            labelMy: "ကြည်လင်ခြင်း",
            correctBucketEn: "Water Treatment Step",
            correctBucketMy: "ရေသန့်စင်ခြင်း အဆင့်",
          ),
          SortingItem(
            id: "igcsecs-w29-sort-8",
            labelEn: "Filtration",
            labelMy: "ရေစစ်ခြင်း",
            correctBucketEn: "Water Treatment Step",
            correctBucketMy: "ရေသန့်စင်ခြင်း အဆင့်",
          ),
          SortingItem(
            id: "igcsecs-w29-sort-9",
            labelEn: "Chlorination",
            labelMy: "ကလိုရင်းနေးရှင်း",
            correctBucketEn: "Water Treatment Step",
            correctBucketMy: "ရေသန့်စင်ခြင်း အဆင့်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w29-d4",
      dayNumber: 4,
      titleEn: "Reading: Ye Yint's Water Treatment Model",
      titleMy: "စာဖတ်ခြင်း - ရဲရင့်၏ ရေသန့်စင်ခြင်း စံပြပုံစံ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Ye Yint's Water Treatment Model",
        titleMy: "ရဲရင့်၏ ရေသန့်စင်ခြင်း စံပြပုံစံ",
        passageEn:
            "For his water treatment practical, Ye Yint built a simplified model of a water treatment works using a sample of deliberately muddied water. First, he left the muddy water standing undisturbed in a beaker for twenty minutes, watching heavier suspended soil particles gradually settle to the bottom -- this was the sedimentation stage, and the water above the settled layer was noticeably clearer afterward, though still slightly cloudy.\n\nNext, Ye Yint poured this partly clarified water through a funnel lined with fine filter paper. The water that passed through came out visibly clear, with the filter paper itself now coated in the fine solid particles it had trapped -- confirming that filtration removes solid matter too small to settle out on its own during sedimentation.\n\nAt this point, Ye Yint's teacher asked the class a question that surprised several students: was this clear, filtered water now safe to drink? The answer was no. Neither sedimentation nor filtration reliably kills microorganisms such as bacteria, which are far too small to be trapped by filter paper and do not necessarily settle out with the soil particles. Ye Yint added a chlorine-releasing tablet to a sample of his filtered water to demonstrate the final, essential disinfection step used at real treatment works, and his teacher explained that this is exactly why water can look perfectly clear and still make someone seriously ill if the chlorination step is skipped.",
        passageMy:
            "သူ၏ ရေသန့်စင်ခြင်းလက်တွေ့စမ်းသပ်မှုအတွက် ရဲရင့်သည် ရည်ရွယ်ချက်ရှိရှိ ရွှံ့နွံစေထားသော ရေနမူနာတစ်ခုကို အသုံးပြု၍ ရေသန့်စင်စက်ရုံ၏ ရိုးရှင်းစွာ ပြင်ဆင်ထားသော စံပြပုံစံတစ်ခု တည်ဆောက်ခဲ့သည်။ ပထမဆုံးအနေဖြင့် သူသည် ရွှံ့နွံရေကို ဖန်ခွက်တစ်ခုထဲတွင် နှစ်ဆယ်မိနစ်ကြာ မထိတွေ့ဘဲထားခဲ့ရာ၊ ပိုလေးသော ပျော်ဝင်နေသောမြေဆီအမှုန်များ တဖြည်းဖြည်း အောက်ခြေသို့ နစ်ဆင်းသွားသည်ကို တွေ့ရှိခဲ့သည် -- ၎င်းသည် ကြည်လင်ခြင်းအဆင့်ဖြစ်ပြီး၊ နစ်ဆင်းအလွှာအထက်ရှိရေသည် ထို့နောက် ထင်ရှားစွာ ပို၍ကြည်လင်လာခဲ့သော်လည်း ပါးပါးလေးများ ချောင်လက်ဆဲရှိသည်။\n\nထို့နောက် ရဲရင့်သည် တစ်ဝက်ကြည်လင်နှင့်ပြီးသော ဤရေကို ပါးလွှာသော စစ်စကို ခင်းထားသော ချော်ခြင်းတစ်ခုကို ဖြတ်၍ လောင်းသွန်းခဲ့သည်။ ဖြတ်သန်းလာသောရေသည် ထင်ရှားစွာ ကြည်လင်လာခဲ့ပြီး၊ စစ်စကိုယ်တိုင်သည် ယခုအခါ ၎င်း၏ ချုပ်ကိုင်ထားသော သေးငယ်သော အစိုင်အခဲအမှုန်များဖြင့် ဖုံးအုပ်နေခဲ့သည် -- ကြည်လင်ခြင်းအတွင်း သီးခြားနစ်ဆင်း၍ မရလောက်အောင် သေးငယ်သော အစိုင်အခဲပစ္စည်းများကို ရေစစ်ခြင်းက ဖယ်ရှားပေးကြောင်း အတည်ပြုပေးခဲ့သည်။\n\nဤအချိန်တွင် ရဲရင့်၏ ဆရာက ကျောင်းသားများစွာကို အံ့သြစေသော မေးခွန်းတစ်ခု မေးခဲ့သည်: ဤကြည်လင်၍ စစ်ထုတ်ထားသောရေသည် ယခုအခါ သောက်သုံးရန် ဘေးကင်းသလား။ အဖြေမှာ မဟုတ်ပါ။ ကြည်လင်ခြင်း (သို့) ရေစစ်ခြင်း နှစ်ခုစလုံးသည် စစ်စဖြင့် ချုပ်ကိုင်ရန် သေးငယ်လွန်းပြီး မြေဆီအမှုန်များနှင့်အတူ အမြဲနစ်ဆင်းသည်မဟုတ်သော ဗက်တီးရီးယားကဲ့သို့သော အဏုဇီဝပိုးများကို ယုံကြည်စိတ်ချစွာ မသတ်ဖျက်နိုင်ပါ။ ရဲရင့်သည် တကယ့်သန့်စင်စက်ရုံများတွင် အသုံးပြုသော နောက်ဆုံးလိုအပ်ချက်ဖြစ်သည့် ပိုးသတ်ခြင်းအဆင့်ကို သရုပ်ပြရန် ၎င်း၏ စစ်ထုတ်ထားသောရေနမူနာတစ်ခုသို့ ကလိုရင်းလွှတ်ထုတ်သော ဆေးလုံးတစ်လုံးထည့်ခဲ့ပြီး၊ ကလိုရင်းနေးရှင်းအဆင့်ကို ကျော်သွားပါက ရေသည် လုံးဝကြည်လင်ဟန်ရှိနေသော်လည်း တစ်စုံတစ်ဦးအား လေးလေးနက်နက် နာမကျန်းဖြစ်စေနိုင်ကြောင်း ဤအကြောင်းကြောင့်သာ ဖြစ်ကြောင်း ဆရာက ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What happened during the sedimentation stage of Ye Yint's model?",
            questionMy:
                "ရဲရင့်၏ စံပြပုံစံ၏ ကြည်လင်ခြင်းအဆင့်တွင် အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "Heavier suspended soil particles gradually settled to the bottom of the beaker",
              "Chlorine was added to kill microorganisms",
              "The water was boiled to remove all bacteria",
              "The water was frozen solid",
            ],
            optionsMy: [
              "ပိုလေးသော ပျော်ဝင်နေသောမြေဆီအမှုန်များ ဖန်ခွက်၏ အောက်ခြေသို့ တဖြည်းဖြည်း နစ်ဆင်းသွားခြင်း",
              "အဏုဇီဝပိုးများကို သတ်ဖျက်ရန် ကလိုရင်း ထည့်ပေးခြင်း",
              "ဗက်တီးရီးယားအားလုံးကို ဖယ်ရှားရန် ရေကို ပြုတ်ခြင်း",
              "ရေကို အစိုင်အခဲအဖြစ် အေးခဲစေခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first paragraph's description of the sedimentation stage.",
              "Gravity pulls the heavier suspended particles down over time, leaving clearer water above.",
            ],
            hintsMy: [
              "ကြည်လင်ခြင်းအဆင့်ကို ဖော်ပြထားသည့် ပထမစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဆွဲငင်အားက အချိန်ကြာလာသည်နှင့်အမျှ ပိုလေးသောအမှုန်များကို အောက်သို့ ဆွဲငင်ပြီး အထက်တွင် ပို၍ကြည်လင်သောရေကို ချန်ထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did the filter paper's coating of trapped particles confirm about filtration?",
            questionMy:
                "စစ်စတွင် ချုပ်ကိုင်ခံရသောအမှုန်များ ဖုံးအုပ်နေခြင်းက ရေစစ်ခြင်းနှင့်ပတ်သက်၍ အဘယ်အရာကို အတည်ပြုပေးခဲ့သနည်း။",
            optionsEn: [
              "Filtration removes solid matter too small to settle out during sedimentation",
              "Filtration removes all bacteria completely",
              "Filtration adds nutrients to the water",
              "Filtration has no effect on water at all",
            ],
            optionsMy: [
              "ရေစစ်ခြင်းက ကြည်လင်ခြင်းအတွင်း သီးခြားနစ်ဆင်း၍မရလောက်အောင် သေးငယ်သော အစိုင်အခဲပစ္စည်းများကို ဖယ်ရှားပေးခြင်း",
              "ရေစစ်ခြင်းက ဗက်တီးရီးယားအားလုံးကို လုံးဝ ဖယ်ရှားပေးခြင်း",
              "ရေစစ်ခြင်းက ရေထဲသို့ အာဟာရများ ထည့်ပေးခြင်း",
              "ရေစစ်ခြင်းသည် ရေအပေါ် လုံးဝ သက်ရောက်မှုမရှိခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the filtration stage.",
              "The particles trapped on the filter paper were too fine to have settled out during sedimentation alone.",
            ],
            hintsMy: [
              "ရေစစ်ခြင်းအဆင့်ကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "စစ်စတွင် ချုပ်ကိုင်ခံရသောအမှုန်များသည် ကြည်လင်ခြင်းတစ်ခုတည်းအတွင်း နစ်ဆင်းရန်အတွက် ပါးလွန်းခဲ့သည်။",
            ],
          ),
          QuizQuestion(
            questionEn: "Why was the filtered water not yet safe to drink?",
            questionMy:
                "စစ်ထုတ်ထားသောရေသည် အဘယ်ကြောင့် သောက်သုံးရန် မဘေးကင်းသေးခဲ့သနည်း။",
            optionsEn: [
              "Neither sedimentation nor filtration reliably kills microorganisms such as bacteria",
              "The water was still visibly muddy",
              "The filter paper had dissolved into the water",
              "The water had turned a different colour",
            ],
            optionsMy: [
              "ကြည်လင်ခြင်း (သို့) ရေစစ်ခြင်း နှစ်ခုစလုံးသည် ဗက်တီးရီးယားကဲ့သို့သော အဏုဇီဝပိုးများကို ယုံကြည်စိတ်ချစွာ မသတ်ဖျက်နိုင်ခြင်း",
              "ရေသည် ရွှံ့နွံဟန်ရှိနေဆဲ ဖြစ်ခြင်း",
              "စစ်စသည် ရေထဲတွင် ပျော်ဝင်သွားခြင်း",
              "ရေ၏ အရောင် ကွဲပြားသွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation from Ye Yint's teacher.",
              "Bacteria are far too small to be trapped by filter paper and do not reliably settle out with soil particles.",
            ],
            hintsMy: [
              "ရဲရင့်၏ဆရာမှ ရှင်းပြချက်ကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဗက်တီးရီးယားများသည် စစ်စဖြင့် ချုပ်ကိုင်ရန် သေးငယ်လွန်းပြီး မြေဆီအမှုန်များနှင့်အတူ ယုံကြည်စိတ်ချစွာ နစ်ဆင်းသည်မဟုတ်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What final step did Ye Yint demonstrate to make the water safe to drink?",
            questionMy:
                "ရေကို သောက်သုံးရန် ဘေးကင်းစေရန် ရဲရင့် မည်သည့်နောက်ဆုံးအဆင့်ကို သရုပ်ပြခဲ့သနည်း။",
            optionsEn: [
              "Adding a chlorine-releasing tablet to kill remaining microorganisms",
              "Boiling the water for an hour",
              "Adding more mud to the water",
              "Freezing the water solid",
            ],
            optionsMy: [
              "ကျန်ရှိနေသော အဏုဇီဝပိုးများကို သတ်ဖျက်ရန် ကလိုရင်းလွှတ်ထုတ်သော ဆေးလုံးတစ်လုံးထည့်ခြင်း",
              "ရေကို တစ်နာရီကြာ ပြုတ်ခြင်း",
              "ရေထဲသို့ ရွှံ့နွံပို၍ ထည့်ခြင်း",
              "ရေကို အစိုင်အခဲအဖြစ် အေးခဲစေခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "This step is the same chlorination process used at real water treatment works.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ဤအဆင့်သည် တကယ့်ရေသန့်စင်စက်ရုံများတွင် အသုံးပြုသော ကလိုရင်းနေးရှင်းလုပ်ငန်းစဉ် အတိအကျပင်ဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w29-d5",
      dayNumber: 5,
      titleEn: "Week 29 Recap: Air and Water",
      titleMy: "အပတ်စဉ် ၂၉ ပြန်လည်သုံးသပ်ခြင်း - လေထုနှင့် ရေထု",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The most abundant gas in clean, dry air is...",
          questionMy:
              "သန့်ရှင်း၍ ခြောက်သွေ့သော လေထုအတွင်း အများဆုံးရှိသော ဓာတ်ငွေ့မှာ...",
          optionsEn: ["Nitrogen", "Oxygen", "Argon", "Carbon dioxide"],
          optionsMy: [
            "နိုက်ထရိုဂျင်",
            "အောက်ဆီဂျင်",
            "အာဂွန်",
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The main greenhouse gas from human activity is...",
          questionMy:
              "လူသားလုပ်ဆောင်ချက်ကြောင့် ဖြစ်ပေါ်လာသော အဓိကဖန်လုံအိမ်ဓာတ်ငွေ့မှာ...",
          optionsEn: ["Carbon dioxide", "Nitrogen", "Argon", "Helium"],
          optionsMy: [
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်",
            "နိုက်ထရိုဂျင်",
            "အာဂွန်",
            "ဟီလီယမ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Chlorination is used to...",
          questionMy: "ကလိုရင်းနေးရှင်းကို မည်သည့်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Kill harmful microorganisms",
            "Remove all dissolved salts",
            "Freeze water",
            "Add colour to water",
          ],
          optionsMy: [
            "အန္တရာယ်ရှိသော အဏုဇီဝပိုးများကို သတ်ဖျက်ရန်",
            "ပျော်ဝင်နေသောဆားအားလုံးကို ဖယ်ရှားရန်",
            "ရေကို အေးခဲစေရန်",
            "ရေထဲသို့ အရောင်ထည့်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Sedimentation and filtration alone do NOT reliably...",
          questionMy:
              "ကြည်လင်ခြင်းနှင့် ရေစစ်ခြင်းတို့သာသည် မည်သည့်အရာကို ယုံကြည်စိတ်ချစွာ မလုပ်ဆောင်နိုင်သနည်း။",
          optionsEn: [
            "Kill microorganisms",
            "Remove large solid particles",
            "Make water clearer",
            "Remove suspended soil",
          ],
          optionsMy: [
            "အဏုဇီဝပိုးများကို သတ်ဖျက်ခြင်း",
            "အစိုင်အခဲအမှုန်ကြီးများကို ဖယ်ရှားခြင်း",
            "ရေကို ပို၍ကြည်လင်စေခြင်း",
            "ပျော်ဝင်နေသောမြေဆီကို ဖယ်ရှားခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Burning fossil fuels releases which gas that contributes to the greenhouse effect?",
          questionMy:
              "ရုပ်ကြွင်းလောင်စာများ လောင်ကျွမ်းခြင်းက ဖန်လုံအိမ်အာနိသင်ကို ဖြစ်ပေါ်စေသော မည်သည့်ဓာတ်ငွေ့ကို ထွက်ပေါ်စေသနည်း။",
          optionsEn: [
            "Carbon dioxide",
            "Nitrogen only",
            "Argon only",
            "Pure oxygen",
          ],
          optionsMy: [
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်",
            "နိုက်ထရိုဂျင်သာ",
            "အာဂွန်သာ",
            "စင်ကြယ်သော အောက်ဆီဂျင်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 30: "Introduction to Organic Chemistry"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek30 = CourseWeekDef(
  id: "course-igcse-combsci-w30",
  weekNumber: 30,
  titleEn: "Introduction to Organic Chemistry",
  titleMy: "အော်ဂဲနစ် ဓာတုဗေဒ မိတ်ဆက်",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w30-d1",
      dayNumber: 1,
      titleEn: "Alkanes, Alkenes and Crude Oil Quiz",
      titleMy: "အယ်လ်ကိန်း၊ အယ်လ်ကင်းနှင့် ရေနံကြမ်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Alkanes are hydrocarbons that are...",
          questionMy:
              "အယ်လ်ကိန်းများသည် မည်သို့သော ဟိုက်ဒရိုကာဘွန်များဖြစ်သနည်း။",
          optionsEn: [
            "Saturated, containing only single carbon-carbon bonds",
            "Unsaturated, containing a carbon-carbon double bond",
            "Containing no carbon atoms at all",
            "Always gases at room temperature, regardless of chain length",
          ],
          optionsMy: [
            "ရော်စေးဒ်ရှိသော (Saturated)၊ ကာဗွန်-ကာဗွန် စင်္ကြားချိတ်ဆက်မှုသာ ပါဝင်ခြင်း",
            "မရော်စေးဒ်ဖြစ်သော (Unsaturated)၊ ကာဗွန်-ကာဗွန် နှစ်ထပ်ချိတ်ဆက်မှုပါဝင်ခြင်း",
            "ကာဗွန်အက်တမ် လုံးဝမပါဝင်ခြင်း",
            "ကွင်းရှည်ပမာဏမရွေး၊ အခန်းအပူချိန်တွင် အမြဲတမ်း ဓာတ်ငွေ့ဖြစ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Every carbon-carbon bond in an alkane is a single covalent bond -- there are no double or triple bonds.",
            "Methane, ethane, propane, and butane are all examples of alkanes.",
          ],
          hintsMy: [
            "အယ်လ်ကိန်းတစ်ခုရှိ ကာဗွန်-ကာဗွန် ချိတ်ဆက်မှုတိုင်းသည် စင်္ကြားချိတ်ဆက်မှု (single covalent bond) ဖြစ်သည် -- နှစ်ထပ် (သို့) သုံးထပ်ချိတ်ဆက်မှု မရှိပါ။",
            "မီသိန်း၊ အီသိန်း၊ ပရိုပိန်းနှင့် ဗျူတိန်းတို့သည် အယ်လ်ကိန်းများ၏ ဥပမာများဖြစ်ကြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Alkenes contain at least one...",
          questionMy: "အယ်လ်ကင်းများတွင် အနည်းဆုံး မည်သည့်အရာ ပါဝင်သနည်း။",
          optionsEn: [
            "Carbon-carbon double bond",
            "Carbon-carbon triple bond only, with no double bonds",
            "Nitrogen atom",
            "Oxygen atom",
          ],
          optionsMy: [
            "ကာဗွန်-ကာဗွန် နှစ်ထပ်ချိတ်ဆက်မှု",
            "ကာဗွန်-ကာဗွန် သုံးထပ်ချိတ်ဆက်မှုသာ၊ နှစ်ထပ်ချိတ်ဆက်မှု မပါဝင်ဘဲ",
            "နိုက်ထရိုဂျင်အက်တမ်",
            "အောက်ဆီဂျင်အက်တမ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This C=C double bond is what makes alkenes unsaturated, unlike the fully saturated alkanes.",
            "Bromine water is used as a test for this double bond: it turns from orange to colourless when shaken with an alkene, but stays orange with an alkane.",
          ],
          hintsMy: [
            "ဤ C=C နှစ်ထပ်ချိတ်ဆက်မှုသည် အယ်လ်ကင်းများကို လုံးလုံးရော်စေးဒ်ဖြစ်နေသော အယ်လ်ကိန်းများနှင့်မတူဘဲ မရော်စေးဒ်ဖြစ်စေသည်။",
            "ဗရိုမင်ရေကို ဤနှစ်ထပ်ချိတ်ဆက်မှုအတွက် စမ်းသပ်မှုအဖြစ် အသုံးပြုသည်: အယ်လ်ကင်းနှင့် လှုပ်ခါလိုက်သောအခါ လိမ္မော်ရောင်မှ အရောင်ကင်းသို့ ပြောင်းသွားသော်လည်း အယ်လ်ကိန်းနှင့်မူ လိမ္မော်ရောင်ပင် ဆက်ရှိနေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Fractional distillation separates crude oil into fractions based on differences in...",
          questionMy:
              "အမျိုးအစားခွဲ ငွေ့ပျံသတ္တုသန့်စင်ခြင်း (fractional distillation) သည် ရေနံကြမ်းကို မည်သည့်ကွာခြားချက်အပေါ် အခြေခံ၍ အမျိုးအစားခွဲသနည်း။",
          optionsEn: [
            "Boiling point",
            "Colour",
            "Density alone, unrelated to boiling point",
            "Smell",
          ],
          optionsMy: [
            "ဆူပွက်ကြိုးအပူချိန်",
            "အရောင်",
            "သိပ်သည်းဆတစ်ခုတည်း၊ ဆူပွက်ကြိုးအပူချိန်နှင့် မသက်ဆိုင်ဘဲ",
            "အနံ့",
          ],
          correctIndex: 0,
          hintsEn: [
            "Crude oil is a mixture of many different hydrocarbons, each with its own chain length and boiling point.",
            "Shorter-chain hydrocarbons have weaker intermolecular forces and boil at lower temperatures, rising higher up the distillation column before condensing.",
          ],
          hintsMy: [
            "ရေနံကြမ်းသည် ကွင်းရှည်နှင့် ဆူပွက်ကြိုးအပူချိန် မတူညီကြသော ဟိုက်ဒရိုကာဘွန်များစွာ ပါဝင်သော ရောစပ်ပစ္စည်းဖြစ်သည်။",
            "ကွင်းတိုသော ဟိုက်ဒရိုကာဘွန်များသည် အမှုန်ချင်းအင်အား နည်းပါးပြီး နိမ့်သောအပူချိန်တွင် ဆူပွက်တတ်ကာ ပျော့ငွေ့ဖြစ်မီ ငွေ့ပျံတိုင်ကို ပို၍မြင့်စွာ တက်သွားတတ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Polymerisation is the process by which...",
          questionMy: "Polymerisation သည် မည်သို့သော လုပ်ငန်းစဉ်ဖြစ်သနည်း။",
          optionsEn: [
            "Many small monomer molecules join together to form a large polymer chain",
            "A large polymer breaks down into small monomers",
            "Crude oil is separated by boiling point",
            "Metals are extracted from their ores",
          ],
          optionsMy: [
            "သေးငယ်သော မိုနိုမာမော်လီကျူးများစွာ ပေါင်းစည်း၍ ကြီးမားသော ပိုလီမာကွင်းတစ်ခု ဖွဲ့စည်းလာခြင်း",
            "ကြီးမားသော ပိုလီမာတစ်ခု သေးငယ်သော မိုနိုမာများအဖြစ် ပြိုကွဲသွားခြင်း",
            "ရေနံကြမ်းကို ဆူပွက်ကြိုးအပူချိန်ဖြင့် ခွဲခြားခြင်း",
            "သတ္တုများကို ၎င်းတို့၏ သတ္တုရိုင်းများမှ ထုတ်ယူခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Alkenes, with their reactive carbon-carbon double bond, are commonly used as the monomers in this process.",
            "For example, many ethene monomers join together through polymerisation to form the plastic poly(ethene).",
          ],
          hintsMy: [
            "တုံ့ပြန်တတ်သော ကာဗွန်-ကာဗွန် နှစ်ထပ်ချိတ်ဆက်မှုပါသော အယ်လ်ကင်းများကို ဤလုပ်ငန်းစဉ်တွင် မိုနိုမာများအဖြစ် အသုံးများသည်။",
            "ဥပမာအားဖြင့် အီသင်းမိုနိုမာများစွာသည် polymerisation ဖြင့် ပေါင်းစည်း၍ ပလတ်စတစ် ပိုလီ(အီသင်း) ကို ဖွဲ့စည်းသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w30-d2",
      dayNumber: 2,
      titleEn: "Match the Organic Chemistry Vocabulary",
      titleMy: "အော်ဂဲနစ် ဓာတုဗေဒဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w30-dm-1",
          termEn: "Hydrocarbon",
          termMy: "ဟိုက်ဒရိုကာဘွန် (Hydrocarbon)",
          matchEn: "A compound containing only hydrogen and carbon atoms.",
          matchMy: "ဟိုက်ဒရိုဂျင်နှင့် ကာဗွန်အက်တမ်များသာ ပါဝင်သော ဒြပ်ပေါင်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w30-dm-2",
          termEn: "Saturated",
          termMy: "ရော်စေးဒ် (Saturated)",
          matchEn:
              "Containing only single covalent bonds between carbon atoms, as in alkanes.",
          matchMy:
              "အယ်လ်ကိန်းများကဲ့သို့ ကာဗွန်အက်တမ်များကြား စင်္ကြားချိတ်ဆက်မှုများသာ ပါဝင်ခြင်း။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w30-dm-3",
          termEn: "Unsaturated",
          termMy: "မရော်စေးဒ် (Unsaturated)",
          matchEn:
              "Containing at least one carbon-carbon double bond, as in alkenes.",
          matchMy:
              "အယ်လ်ကင်းများကဲ့သို့ အနည်းဆုံး ကာဗွန်-ကာဗွန် နှစ်ထပ်ချိတ်ဆက်မှုတစ်ခု ပါဝင်ခြင်း။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w30-dm-4",
          termEn: "Fractional Distillation",
          termMy: "Fractional Distillation",
          matchEn:
              "Separating a mixture of liquids with different boiling points, such as crude oil, into fractions.",
          matchMy:
              "ရေနံကြမ်းကဲ့သို့ ဆူပွက်ကြိုးအပူချိန် မတူညီသော အရည်ရောစပ်ပစ္စည်းတစ်ခုကို အမျိုးအစားများအဖြစ် ခွဲခြားခြင်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w30-dm-5",
          termEn: "Polymer",
          termMy: "ပိုလီမာ (Polymer)",
          matchEn:
              "A large molecule made from many repeating smaller monomer units joined together.",
          matchMy:
              "ထပ်ခါထပ်ခါဖြစ်သော သေးငယ်သော မိုနိုမာယူနစ်များစွာ ပေါင်းစည်းထားသည့် ကြီးမားသော မော်လီကျူး။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w30-d3",
      dayNumber: 3,
      titleEn: "Sort: Alkane or Alkene?",
      titleMy: "စီစစ်ကြမည် - အယ်လ်ကိန်း (သို့) အယ်လ်ကင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Alkane (Saturated)", "Alkene (Unsaturated)"],
        bucketsMy: ["အယ်လ်ကိန်း (ရော်စေးဒ်)", "အယ်လ်ကင်း (မရော်စေးဒ်)"],
        items: [
          SortingItem(
            id: "igcsecs-w30-sort-1",
            labelEn: "Methane",
            labelMy: "မီသိန်း",
            correctBucketEn: "Alkane (Saturated)",
            correctBucketMy: "အယ်လ်ကိန်း (ရော်စေးဒ်)",
          ),
          SortingItem(
            id: "igcsecs-w30-sort-2",
            labelEn: "Ethene",
            labelMy: "အီသင်း",
            correctBucketEn: "Alkene (Unsaturated)",
            correctBucketMy: "အယ်လ်ကင်း (မရော်စေးဒ်)",
          ),
          SortingItem(
            id: "igcsecs-w30-sort-3",
            labelEn: "Propane",
            labelMy: "ပရိုပိန်း",
            correctBucketEn: "Alkane (Saturated)",
            correctBucketMy: "အယ်လ်ကိန်း (ရော်စေးဒ်)",
          ),
          SortingItem(
            id: "igcsecs-w30-sort-4",
            labelEn: "Decolourises orange bromine water",
            labelMy: "လိမ္မော်ရောင် ဗရိုမင်ရေကို အရောင်ပျောက်စေခြင်း",
            correctBucketEn: "Alkene (Unsaturated)",
            correctBucketMy: "အယ်လ်ကင်း (မရော်စေးဒ်)",
          ),
          SortingItem(
            id: "igcsecs-w30-sort-5",
            labelEn: "Contains only single carbon-carbon bonds",
            labelMy: "ကာဗွန်-ကာဗွန် စင်္ကြားချိတ်ဆက်မှုသာ ပါဝင်ခြင်း",
            correctBucketEn: "Alkane (Saturated)",
            correctBucketMy: "အယ်လ်ကိန်း (ရော်စေးဒ်)",
          ),
          SortingItem(
            id: "igcsecs-w30-sort-6",
            labelEn: "Contains a carbon-carbon double bond",
            labelMy: "ကာဗွန်-ကာဗွန် နှစ်ထပ်ချိတ်ဆက်မှုပါဝင်ခြင်း",
            correctBucketEn: "Alkene (Unsaturated)",
            correctBucketMy: "အယ်လ်ကင်း (မရော်စေးဒ်)",
          ),
          SortingItem(
            id: "igcsecs-w30-sort-7",
            labelEn: "Used as a monomer to make poly(ethene) plastic",
            labelMy:
                "ပိုလီ(အီသင်း) ပလတ်စတစ်ပြုလုပ်ရန် မိုနိုမာအဖြစ် အသုံးပြုခြင်း",
            correctBucketEn: "Alkene (Unsaturated)",
            correctBucketMy: "အယ်လ်ကင်း (မရော်စေးဒ်)",
          ),
          SortingItem(
            id: "igcsecs-w30-sort-8",
            labelEn: "Butane used in camping gas canisters",
            labelMy: "ခရီးသွားဓာတ်ငွေ့ဗူးများတွင် အသုံးပြုသော ဗျူတိန်း",
            correctBucketEn: "Alkane (Saturated)",
            correctBucketMy: "အယ်လ်ကိန်း (ရော်စေးဒ်)",
          ),
          SortingItem(
            id: "igcsecs-w30-sort-9",
            labelEn: "Stays orange when mixed with bromine water",
            labelMy: "ဗရိုမင်ရေနှင့်ရောစပ်သောအခါ လိမ္မော်ရောင်ဆက်ရှိနေခြင်း",
            correctBucketEn: "Alkane (Saturated)",
            correctBucketMy: "အယ်လ်ကိန်း (ရော်စေးဒ်)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w30-d4",
      dayNumber: 4,
      titleEn: "Reading: Hsu Mon's Bromine Water Test",
      titleMy: "စာဖတ်ခြင်း - ဆုမွန်၏ ဗရိုမင်ရေ စမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Hsu Mon's Bromine Water Test",
        titleMy: "ဆုမွန်၏ ဗရိုမင်ရေ စမ်းသပ်မှု",
        passageEn:
            "For her organic chemistry practical, Hsu Mon was given two unlabelled hydrocarbon samples, one an alkane and one an alkene, and had to identify which was which using only a bottle of orange bromine water.\n\nShe added a few drops of bromine water to a test tube containing the first sample and shook it gently. The orange colour faded rapidly to colourless. Hsu Mon reasoned that the carbon-carbon double bond in an alkene reacts readily with the bromine, using up the bromine molecules and removing the orange colour -- this told her the first sample was the alkene.\n\nFor the second sample, Hsu Mon repeated the exact same test: a few drops of bromine water, shaken gently. This time, the orange colour remained completely unchanged even after several minutes of shaking. She concluded that this sample contained no reactive double bond for the bromine to react with, meaning it was fully saturated -- the alkane. Her teacher connected this test back to the fractional distillation lesson: crude oil itself contains mostly alkanes, so alkenes used for polymerisation are not simply extracted directly from crude oil, but are instead produced afterward by cracking longer saturated alkane chains from the heavier fractions into shorter, more useful unsaturated molecules.",
        passageMy:
            "သူမ၏ အော်ဂဲနစ်ဓာတုဗေဒ လက်တွေ့စမ်းသပ်မှုအတွက် ဆုမွန်အား အမည်မတပ်ထားသော ဟိုက်ဒရိုကာဘွန်နမူနာနှစ်ခု -- တစ်ခုက အယ်လ်ကိန်းနှင့် တစ်ခုက အယ်လ်ကင်း -- ကို ပေးထားပြီး လိမ္မော်ရောင် ဗရိုမင်ရေပုလင်းတစ်ခုသာ အသုံးပြု၍ မည်သည့်နမူနာက မည်သည့်အမျိုးအစားဖြစ်ကြောင်း ဖော်ထုတ်ရမည်ဖြစ်သည်။\n\nသူမသည် ပထမနမူနာပါသည့် စမ်းသပ်ပြွန်ထဲသို့ ဗရိုမင်ရေအနည်းငယ် ထည့်ပြီး ညင်သာစွာ လှုပ်ခါလိုက်သည်။ လိမ္မော်ရောင်သည် လျင်မြန်စွာ ကင်းစင်သွားခဲ့သည်။ ဆုမွန်သည် အယ်လ်ကင်းရှိ ကာဗွန်-ကာဗွန် နှစ်ထပ်ချိတ်ဆက်မှုသည် ဗရိုမင်နှင့် အသင့်ဓာတ်ပြုပြီး ဗရိုမင်မော်လီကျူးများကို ကုန်ဆုံးစေကာ လိမ္မော်ရောင်ကို ဖယ်ရှားစေသည်ဟု ဆင်ခြင်ခဲ့သည် -- ၎င်းက ပထမနမူနာသည် အယ်လ်ကင်းဖြစ်ကြောင်း ပြောပြခဲ့သည်။\n\nဒုတိယနမူနာအတွက် ဆုမွန်သည် စမ်းသပ်မှုအတိအကျကို ထပ်ခါလုပ်ဆောင်ခဲ့သည်: ဗရိုမင်ရေအနည်းငယ်၊ ညင်သာစွာလှုပ်ခါခြင်း။ ဤအကြိမ်တွင် လိမ္မော်ရောင်သည် မိနစ်များစွာ လှုပ်ခါပြီးနောက်တောင် လုံးဝ မပြောင်းလဲဘဲ ဆက်ရှိနေခဲ့သည်။ သူမသည် ဤနမူနာတွင် ဗရိုမင်ဓာတ်ပြုနိုင်မည့် တုံ့ပြန်တတ်သော နှစ်ထပ်ချိတ်ဆက်မှု မရှိကြောင်း၊ ဆိုလိုသည်မှာ လုံးလုံးရော်စေးဒ်ဖြစ်ကြောင်း ကောက်ချက်ချခဲ့သည် -- အယ်လ်ကိန်းဖြစ်သည်။ သူမ၏ ဆရာက ဤစမ်းသပ်မှုကို fractional distillation သင်ခန်းစာနှင့် ချိတ်ဆက်ပြောပြခဲ့သည်: ရေနံကြမ်းကိုယ်တိုင်တွင် အများစုမှာ အယ်လ်ကိန်းများသာ ပါဝင်သောကြောင့် polymerisation အတွက် အသုံးပြုသော အယ်လ်ကင်းများကို ရေနံကြမ်းမှ တိုက်ရိုက်ထုတ်ယူခြင်း မဟုတ်ဘဲ၊ ပိုသောအလေးချိန်ရှိ အမျိုးအစားများမှ ရှည်လျားသော ရော်စေးဒ်အယ်လ်ကိန်းကွင်းများကို ကျဲစေခြင်း (cracking) ဖြင့် ပို၍တို၍ ပိုအသုံးဝင်သော မရော်စေးဒ်မော်လီကျူးများအဖြစ် ထို့နောက်တွင်သာ ထုတ်လုပ်ကြောင်း ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What happened when Hsu Mon added bromine water to the alkene sample?",
            questionMy:
                "ဆုမွန်သည် အယ်လ်ကင်းနမူနာသို့ ဗရိုမင်ရေထည့်လိုက်သောအခါ အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "The orange colour faded rapidly to colourless",
              "The mixture instantly froze",
              "The orange colour became darker",
              "Nothing happened at all",
            ],
            optionsMy: [
              "လိမ္မော်ရောင်သည် လျင်မြန်စွာ ကင်းစင်သွားခြင်း",
              "ရောစပ်ဒြပ်ရည် ချက်ချင်းလျှင် အေးခဲသွားခြင်း",
              "လိမ္မော်ရောင် ပို၍ရင့်လာခြင်း",
              "မည်သည့်အရာမျှ လုံးဝ မဖြစ်ပျက်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the first sample's result.",
              "The double bond in the alkene reacts with the bromine, using it up and removing the colour.",
            ],
            hintsMy: [
              "ပထမနမူနာ၏ ရလဒ်ကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အယ်လ်ကင်းရှိ နှစ်ထပ်ချိတ်ဆက်မှုသည် ဗရိုမင်နှင့် ဓာတ်ပြုပြီး ၎င်းကို ကုန်ဆုံးစေကာ အရောင်ကို ဖယ်ရှားစေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did the unchanged orange colour with the second sample indicate?",
            questionMy:
                "ဒုတိယနမူနာနှင့်အတူ မပြောင်းလဲဘဲကျန်ရှိနေသော လိမ္မော်ရောင်က အဘယ်အရာကို ညွှန်ပြခဲ့သနည်း။",
            optionsEn: [
              "The sample contained no reactive double bond and was fully saturated -- an alkane",
              "The sample was actually an alkene",
              "The bromine water had gone bad",
              "The test tube was contaminated",
            ],
            optionsMy: [
              "နမူနာတွင် တုံ့ပြန်တတ်သော နှစ်ထပ်ချိတ်ဆက်မှု မရှိဘဲ လုံးလုံးရော်စေးဒ်ဖြစ်ခြင်း -- အယ်လ်ကိန်း",
              "နမူနာသည် အယ်လ်ကင်း အမှန်တကယ်ဖြစ်ခြင်း",
              "ဗရိုမင်ရေ ပျက်စီးသွားခြင်း",
              "စမ်းသပ်ပြွန် ညစ်ညမ်းသွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of the second sample's result.",
              "No colour change means no double bond reacted -- the defining feature of an alkane.",
            ],
            hintsMy: [
              "ဒုတိယနမူနာ၏ ရလဒ်ကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အရောင်ပြောင်းလဲမှု မရှိခြင်းက နှစ်ထပ်ချိတ်ဆက်မှု ဓာတ်မပြုကြောင်း ဆိုလိုသည် -- အယ်လ်ကိန်း၏ သတ်မှတ်ဂုဏ်သတ္တိဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to Hsu Mon's teacher, does crude oil mainly contain alkanes or alkenes?",
            questionMy:
                "ဆုမွန်၏ဆရာအဆိုအရ ရေနံကြမ်းတွင် အဓိကအားဖြင့် အယ်လ်ကိန်း (သို့) အယ်လ်ကင်းများ ပါဝင်သနည်း။",
            optionsEn: [
              "Mostly alkanes",
              "Mostly alkenes",
              "Neither, only pure carbon",
              "Only nitrogen compounds",
            ],
            optionsMy: [
              "အများစု အယ်လ်ကိန်းများ",
              "အများစု အယ်လ်ကင်းများ",
              "နှစ်ခုစလုံးမဟုတ်ဘဲ စင်ကြယ်ကာဗွန်သာ",
              "နိုက်ထရိုဂျင်ဒြပ်ပေါင်းများသာ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the fourth paragraph's connection back to fractional distillation.",
              "This is exactly why alkenes for polymerisation must be produced by cracking, not extracted directly.",
            ],
            hintsMy: [
              "Fractional distillation နှင့် ပြန်လည်ဆက်စပ်ချက်ကို ဖော်ပြထားသည့် စတုတ္ထစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤအကြောင်းကြောင့်ပင် polymerisation အတွက် အယ်လ်ကင်းများကို တိုက်ရိုက်ထုတ်ယူခြင်းအစား cracking ဖြင့် ထုတ်လုပ်ရန် လိုအပ်ခြင်းဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What process turns longer saturated alkane chains into shorter, unsaturated alkenes?",
            questionMy:
                "ရှည်လျားသော ရော်စေးဒ်အယ်လ်ကိန်းကွင်းများကို ပို၍တိုသော မရော်စေးဒ်အယ်လ်ကင်းများအဖြစ် မည်သည့်လုပ်ငန်းစဉ်က ပြောင်းလဲပေးသနည်း။",
            optionsEn: [
              "Cracking",
              "Chlorination",
              "Fertilisation",
              "Sedimentation",
            ],
            optionsMy: [
              "ကျဲစေခြင်း (Cracking)",
              "ကလိုရင်းနေးရှင်း",
              "Fertilisation",
              "ကြည်လင်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Cracking breaks longer, heavier alkane molecules into shorter, more reactive and useful molecules, including alkenes.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "Cracking သည် ရှည်လျား၍ ပိုလေးသော အယ်လ်ကိန်းမော်လီကျူးများကို ပို၍တို၍ ပို၍တုံ့ပြန်တတ်ပြီး ပို၍အသုံးဝင်သော အယ်လ်ကင်းများအပါအဝင် မော်လီကျူးများအဖြစ် ချိုးဖျက်ပေးသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w30-d5",
      dayNumber: 5,
      titleEn: "Week 30 Recap: Introduction to Organic Chemistry",
      titleMy: "အပတ်စဉ် ၃၀ ပြန်လည်သုံးသပ်ခြင်း - အော်ဂဲနစ် ဓာတုဗေဒ မိတ်ဆက်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Alkanes contain only...",
          questionMy: "အယ်လ်ကိန်းများတွင် မည်သည့်အရာသာ ပါဝင်သနည်း။",
          optionsEn: [
            "Single carbon-carbon bonds",
            "Double carbon-carbon bonds",
            "Triple carbon-carbon bonds",
            "No carbon at all",
          ],
          optionsMy: [
            "ကာဗွန်-ကာဗွန် စင်္ကြားချိတ်ဆက်မှုများ",
            "ကာဗွန်-ကာဗွန် နှစ်ထပ်ချိတ်ဆက်မှုများ",
            "ကာဗွန်-ကာဗွန် သုံးထပ်ချိတ်ဆက်မှုများ",
            "ကာဗွန် လုံးဝမပါဝင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Bromine water turns from orange to colourless when mixed with...",
          questionMy:
              "ဗရိုမင်ရေသည် မည်သည့်အရာနှင့် ရောစပ်သောအခါ လိမ္မော်ရောင်မှ အရောင်ကင်းသို့ ပြောင်းလဲသနည်း။",
          optionsEn: ["An alkene", "An alkane", "Pure water", "Nitrogen gas"],
          optionsMy: [
            "အယ်လ်ကင်းတစ်ခု",
            "အယ်လ်ကိန်းတစ်ခု",
            "စင်ကြယ်ရေ",
            "နိုက်ထရိုဂျင်ဓာတ်ငွေ့",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Fractional distillation separates liquids based on differences in...",
          questionMy:
              "Fractional distillation သည် အရည်များကို မည်သည့်ကွာခြားချက်အပေါ် အခြေခံ၍ ခွဲခြားသနည်း။",
          optionsEn: ["Boiling point", "Colour", "Smell", "Taste"],
          optionsMy: ["ဆူပွက်ကြိုးအပူချိန်", "အရောင်", "အနံ့", "အရသာ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Polymerisation joins many small...",
          questionMy:
              "Polymerisation သည် သေးငယ်သော မည်သည့်အရာများစွာကို ပေါင်းစည်းသနည်း။",
          optionsEn: ["Monomers", "Polymers only", "Metals", "Salts"],
          optionsMy: ["မိုနိုမာများ", "ပိုလီမာများသာ", "သတ္တုများ", "ဆားများ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Crude oil mainly consists of...",
          questionMy:
              "ရေနံကြမ်းသည် အဓိကအားဖြင့် မည်သည့်အရာဖြင့် ဖွဲ့စည်းထားသနည်း။",
          optionsEn: [
            "A mixture of hydrocarbons",
            "Pure water",
            "Pure carbon dioxide",
            "Pure metal",
          ],
          optionsMy: [
            "ဟိုက်ဒရိုကာဘွန်ရောစပ်ပစ္စည်း",
            "စင်ကြယ်ရေ",
            "စင်ကြယ်ကာဗွန်ဒိုင်အောက်ဆိုဒ်",
            "စင်ကြယ်သတ္တု",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 31: "Inheritance, Genes, and Evolution"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek31 = CourseWeekDef(
  id: "course-igcse-combsci-w31",
  weekNumber: 31,
  titleEn: "Inheritance, Genes, and Evolution",
  titleMy: "မျိုးရိုးလိုက်ခြင်း၊ ဂျင်းမ်များနှင့် ဆင့်ကဲဖြစ်စဉ်",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w31-d1",
      dayNumber: 1,
      titleEn: "Genes, Monohybrid Crosses and Natural Selection Quiz",
      titleMy: "ဂျင်းမ်များ၊ Monohybrid Cross နှင့် သဘာဝရွေးချယ်မှု ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "DNA is found mainly in the...",
          questionMy: "DNA ကို အဓိကအားဖြင့် မည်သည့်နေရာတွင် တွေ့ရသနည်း။",
          optionsEn: [
            "Nucleus of a cell, organised into chromosomes",
            "Cytoplasm only, unorganised",
            "Cell wall only",
            "Mitochondria only",
          ],
          optionsMy: [
            "ဆဲလ်၏ nucleus၊ ခရိုမိုဆုန်းများအဖြစ် စုစည်းထားခြင်း",
            "Cytoplasm တွင်သာ၊ မစုစည်းထားဘဲ",
            "ဆဲလ်နံရံတွင်သာ",
            "Mitochondria တွင်သာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Each chromosome is a tightly coiled, long strand of DNA.",
            "Humans normally have 46 chromosomes, arranged in 23 pairs, inside the nucleus of most body cells.",
          ],
          hintsMy: [
            "ခရိုမိုဆုန်းတစ်ခုစီသည် တင်းကျပ်စွာ ကွေ့ညွှတ်ထားသော DNA ကြိုးရှည်တစ်ခုဖြစ်သည်။",
            "လူသားများသည် ပုံမှန်အားဖြင့် ခန္ဓာကိုယ်ဆဲလ်အများစု၏ nucleus အတွင်းတွင် ၄၆ ခု ခရိုမိုဆုန်းရှိပြီး ၂၃ စုံအဖြစ် စီစဉ်ထားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a monohybrid cross Aa x Aa, what fraction of offspring is expected to show the recessive phenotype?",
          questionMy:
              "Monohybrid cross Aa x Aa တွင် သားရင်ဇာတ်များ၏ မည်သည့်အပိုင်းအစသည် recessive phenotype ပြသမည်ဟု ခန့်မှန်းရသနည်း။",
          optionsEn: ["1/4", "1/2", "3/4", "0"],
          optionsMy: ["1/4", "1/2", "3/4", "0"],
          correctIndex: 0,
          hintsEn: [
            "Draw a Punnett square: the possible genotype combinations are AA, Aa, Aa, and aa.",
            "Only the aa combination shows the recessive phenotype -- that is 1 out of the 4 possible combinations.",
          ],
          hintsMy: [
            "Punnett square တစ်ခုကို ရေးဆွဲကြည့်ပါ: ဖြစ်နိုင်သော genotype ပေါင်းစပ်မှုများမှာ AA, Aa, Aa နှင့် aa ဖြစ်သည်။",
            "aa ပေါင်းစပ်မှုတစ်ခုတည်းသာ recessive phenotype ပြသသည် -- ၎င်းသည် ဖြစ်နိုင်သောပေါင်းစပ်မှု ၄ ခုအနက် ၁ ခုဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Natural selection acts on...",
          questionMy: "သဘာဝရွေးချယ်မှုသည် မည်သည့်အရာအပေါ် အလုပ်လုပ်သနည်း။",
          optionsEn: [
            "Existing variation within a population, favouring individuals better suited to survive and reproduce",
            "Identical individuals with no variation at all",
            "Only laboratory-bred organisms",
            "Only organisms that reproduce asexually",
          ],
          optionsMy: [
            "လူဦးရေတစ်စုအတွင်း ရှိပြီးသား ကွဲပြားမှု၊ ရှင်သန်ကာ မျိုးပွားရန် ပို၍သင့်လျော်သော လူတစ်ဦးချင်းစီကို ထောက်ခံခြင်း",
            "ကွဲပြားမှု လုံးဝမရှိသော တစ်ဦးချင်းများ",
            "ဓာတ်ခွဲခန်းတွင် မွေးမြူထားသော သက်ရှိများသာ",
            "လိင်မဲ့မျိုးပွားသော သက်ရှိများသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Variation must already exist within a population for natural selection to act on it -- it does not create new variation.",
            "Individuals with advantageous alleles are more likely to survive, reproduce, and pass those alleles on to the next generation.",
          ],
          hintsMy: [
            "သဘာဝရွေးချယ်မှုသည် ကွဲပြားမှုကို ဖန်တီးသည်မဟုတ်ဘဲ -- လူဦးရေတစ်စုအတွင်း ရှိပြီးသားကွဲပြားမှုအပေါ်တွင်သာ လုပ်ဆောင်ရန် လိုအပ်သည်။",
            "အားသာချက်ရှိသော allele များပါရှိသူများသည် ရှင်သန်ကာ မျိုးပွားပြီး ထို allele များကို မျိုးဆက်သစ်သို့ ပို့ပေးနိုင်ခြေ ပိုများသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "A dominant allele is one that...",
          questionMy: "Dominant allele တစ်ခုသည် မည်သို့သော allele ဖြစ်သနည်း။",
          optionsEn: [
            "Is expressed in the phenotype even when only one copy is present (heterozygous)",
            "Requires two copies to be expressed at all",
            "Is never passed to offspring",
            "Only appears in male organisms",
          ],
          optionsMy: [
            "ကူးစက်မှုတစ်ခုသာ ရှိနေသောအခါတောင် (heterozygous) phenotype တွင် ပေါ်လွင်ခြင်း",
            "ပေါ်လွင်ရန် ကူးစက်မှုနှစ်ခု လိုအပ်ခြင်း",
            "သားရင်ဇာတ်ထံသို့ ဘယ်တော့မှ မကူးစက်ခြင်း",
            "အထီးသက်ရှိများတွင်သာ ပေါ်လွင်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Compare this to a recessive allele, which is only expressed when both copies (homozygous) are the recessive version.",
            "In a heterozygous genotype like Aa, the dominant A allele determines the phenotype, masking the recessive a allele.",
          ],
          hintsMy: [
            "ကူးစက်မှုနှစ်ခုစလုံး (homozygous) recessive ဗားရှင်းဖြစ်မှသာ ပေါ်လွင်သော recessive allele နှင့် ဤအရာကို နှိုင်းယှဉ်ကြည့်ပါ။",
            "Aa ကဲ့သို့ heterozygous genotype တစ်ခုတွင် dominant A allele က phenotype ကို ဆုံးဖြတ်ပေးပြီး recessive a allele ကို ဖုံးအုပ်ထားသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w31-d2",
      dayNumber: 2,
      titleEn: "Match the Genetics Vocabulary",
      titleMy: "မျိုးရိုးဗီဇဗေဒဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w31-dm-1",
          termEn: "Gene",
          termMy: "ဂျင်းမ် (Gene)",
          matchEn:
              "A section of DNA that codes for a particular characteristic or protein.",
          matchMy:
              "အထူးလက္ခဏာတစ်ခု (သို့) ပရိုတင်းတစ်ခုကို encode လုပ်ပေးသော DNA၏ အပိုင်းအစတစ်ခု။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w31-dm-2",
          termEn: "Allele",
          termMy: "Allele",
          matchEn: "A different version of the same gene.",
          matchMy: "ဂျင်းမ်တစ်ခုတည်း၏ ကွဲပြားသောဗားရှင်း။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w31-dm-3",
          termEn: "Genotype",
          termMy: "Genotype",
          matchEn:
              "The genetic makeup of an organism for a particular characteristic, e.g. Aa.",
          matchMy:
              "အထူးလက္ခဏာတစ်ခုအတွက် သက်ရှိတစ်ခု၏ မျိုးရိုးဗီဇဖွဲ့စည်းပုံ၊ ဥပမာ- Aa။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w31-dm-4",
          termEn: "Phenotype",
          termMy: "Phenotype",
          matchEn:
              "The observable physical characteristic resulting from an organism's genotype.",
          matchMy:
              "သက်ရှိတစ်ခု၏ genotype မှ ဖြစ်ပေါ်လာသော မျက်စိဖြင့်တွေ့ရသော ရုပ်ပိုင်းဆိုင်ရာလက္ခဏာ။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w31-dm-5",
          termEn: "Natural Selection",
          termMy: "သဘာဝရွေးချယ်မှု (Natural Selection)",
          matchEn:
              "The process by which organisms best suited to their environment survive and reproduce, passing their advantageous alleles to the next generation.",
          matchMy:
              "၎င်းတို့၏ပတ်ဝန်းကျင်နှင့် အသင့်လျော်ဆုံးသော သက်ရှိများ ရှင်သန်ကာ မျိုးပွားပြီး ၎င်းတို့၏ အားသာချက်ရှိသော allele များကို မျိုးဆက်သစ်သို့ ပို့ပေးသည့် လုပ်ငန်းစဉ်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w31-d3",
      dayNumber: 3,
      titleEn: "Sort: Genotype or Phenotype?",
      titleMy: "စီစစ်ကြမည် - Genotype (သို့) Phenotype",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Genotype Example", "Phenotype Example"],
        bucketsMy: ["Genotype ဥပမာ", "Phenotype ဥပမာ"],
        items: [
          SortingItem(
            id: "igcsecs-w31-sort-1",
            labelEn: "Aa",
            labelMy: "Aa",
            correctBucketEn: "Genotype Example",
            correctBucketMy: "Genotype ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w31-sort-2",
            labelEn: "Brown eyes",
            labelMy: "မျက်လုံးအညိုရောင်",
            correctBucketEn: "Phenotype Example",
            correctBucketMy: "Phenotype ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w31-sort-3",
            labelEn: "BB",
            labelMy: "BB",
            correctBucketEn: "Genotype Example",
            correctBucketMy: "Genotype ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w31-sort-4",
            labelEn: "Tall plant height",
            labelMy: "အပင်ရှည်ရှည်ကြီးထွားမှု",
            correctBucketEn: "Phenotype Example",
            correctBucketMy: "Phenotype ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w31-sort-5",
            labelEn: "bb",
            labelMy: "bb",
            correctBucketEn: "Genotype Example",
            correctBucketMy: "Genotype ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w31-sort-6",
            labelEn: "Red flower colour",
            labelMy: "ပန်းအနီရောင်",
            correctBucketEn: "Phenotype Example",
            correctBucketMy: "Phenotype ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w31-sort-7",
            labelEn: "Tt",
            labelMy: "Tt",
            correctBucketEn: "Genotype Example",
            correctBucketMy: "Genotype ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w31-sort-8",
            labelEn: "Curly hair",
            labelMy: "ဆံပင်ကောက်",
            correctBucketEn: "Phenotype Example",
            correctBucketMy: "Phenotype ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w31-sort-9",
            labelEn: "AA",
            labelMy: "AA",
            correctBucketEn: "Genotype Example",
            correctBucketMy: "Genotype ဥပမာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w31-d4",
      dayNumber: 4,
      titleEn: "Reading: Min Thu's Peppered Moth Case Study",
      titleMy: "စာဖတ်ခြင်း - မင်းသူ၏ Peppered Moth စာတမ်းလေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Min Thu's Peppered Moth Case Study",
        titleMy: "မင်းသူ၏ Peppered Moth စာတမ်းလေ့လာမှု",
        passageEn:
            "For his genetics and evolution practical, Min Thu first solved a monohybrid cross problem: two pea plants, both heterozygous for flower colour (Pp, where P for purple is dominant over p for white), were crossed. Drawing a Punnett square, Min Thu found the expected genotype ratio was 1 PP : 2 Pp : 1 pp, giving an expected phenotype ratio of 3 purple-flowered plants to every 1 white-flowered plant.\n\nMin Thu then moved on to a classic case study of natural selection in action: the peppered moth, Biston betularia, in industrial England. Before the Industrial Revolution, most peppered moths had a pale, speckled colouring that camouflaged them well against pale tree bark and lichen, while a rare dark-coloured variant stood out and was easily spotted and eaten by birds. As factories spread and pollution blackened tree trunks with soot, the situation reversed: the pale moths now stood out sharply against the darkened bark, while the once-rare dark moths blended in and survived predation far more often.\n\nMin Thu explained the shift using natural selection: the dark allele had always existed in the population at low frequency, but pollution changed which phenotype was better camouflaged, so the environment now favoured moths carrying the dark allele. Because better-camouflaged moths survived longer and reproduced more, the dark allele became far more common in the population over just a few generations -- natural selection had not created the dark allele, but it had changed how common that pre-existing allele became once the environment shifted.",
        passageMy:
            "သူ၏ မျိုးရိုးဗီဇဗေဒနှင့် ဆင့်ကဲဖြစ်စဉ် လက်တွေ့စမ်းသပ်မှုအတွက် မင်းသူသည် ပထမဆုံး monohybrid cross ပြဿနာတစ်ခုကို ဖြေရှင်းခဲ့သည်: ပန်းအရောင်အတွက် heterozygous ဖြစ်သော ပဲပင်နှစ်ပင် (Pp၊ P သည် p ထက် dominant ဖြစ်သော ခရမ်းရောင်) ကို ဖြတ်ခေါင်းစပ်ခဲ့သည်။ Punnett square တစ်ခု ရေးဆွဲကြည့်ရာ မင်းသူသည် ခန့်မှန်း genotype အချိုးမှာ 1 PP : 2 Pp : 1 pp ဖြစ်ကြောင်း တွေ့ရှိခဲ့ပြီး၊ ခန့်မှန်း phenotype အချိုးမှာ ခရမ်းရောင်ပွင့်ရှိသောအပင် ၃ ပင်လျှင် အဖြူရောင်ပွင့်ရှိသောအပင် ၁ ပင်ဖြစ်သည်။\n\nထို့နောက် မင်းသူသည် သွင်ဗီဇသက်ရှင်ရေးမှု (industrial England) ၏ ဂန္တဝင် သဘာဝရွေးချယ်မှုစာတမ်းလေ့လာမှုသို့ ဆက်လက်ကျင့်သုံးခဲ့သည်: Peppered moth (Biston betularia)။ စက်မှုတော်လှန်ရေးမတိုင်မီ peppered moth အများစုသည် ငွေဝါရောင် သစ်ခေါက်နှင့် ငွက်ခြေအမွှေးများနှင့် ကောင်းစွာ ခြယ်ရောက်ဝှက်ကွယ်ပေးသော ငွေဝါဗွက်ဝက် အရောင်ရှိကြပြီး၊ ရှားပါးသော အမည်းရောင် ဗားရှင်းမူ ထင်ရှားနေကာ ငှက်များက လွယ်ကူစွာ တွေ့ရှိစားသုံးခဲ့သည်။ စက်ရုံများ ကျယ်ပြန့်လာပြီး ညစ်ညမ်းမှုက သစ်ပင်ပင်စည်များကို မီးခိုးမှုန့်ဖြင့် အမည်းရောင်ဖြစ်စေသောအခါ အခြေအနေသည် ပြောင်းပြန်ဖြစ်သွားခဲ့သည်: ငွေဝါရောင်ဗွက်ဝက်များသည် ယခုအခါ အမည်းရောင် သစ်ခေါက်နှင့် ထင်ရှားစွာ ဆန့်ကျင်နေခဲ့ပြီး၊ တစ်ချိန်က ရှားပါးခဲ့သော အမည်းရောင်ဗွက်ဝက်များမူ ထိုးထွင်းညီညွတ်ကာ တောင့်ခံစားသုံးခံရမှုကို ပို၍ပို၍ ကြာရှည်ရှင်သန်နိုင်ခဲ့သည်။\n\nမင်းသူသည် ဤပြောင်းလဲမှုကို သဘာဝရွေးချယ်မှုကို အသုံးပြု၍ ရှင်းပြခဲ့သည်: အမည်းရောင် allele သည် လူဦးရေအတွင်း ရေတိုးအညွှန်း နည်းပါးစွာ အမြဲရှိခဲ့သော်လည်း ညစ်ညမ်းမှုက မည်သည့် phenotype ပို၍ ခြယ်ရောက်ဝှက်ကွယ်နိုင်ကြောင်း ပြောင်းလဲစေခဲ့ပြီး ယခုအခါ ပတ်ဝန်းကျင်က အမည်းရောင် allele ပါရှိသော ဗွက်ဝက်များကို ထောက်ခံခဲ့သည်။ ပို၍ ကောင်းစွာ ခြယ်ရောက်ဝှက်ကွယ်နိုင်သော ဗွက်ဝက်များသည် ပို၍ကြာမြင့်စွာ ရှင်သန်ကာ ပို၍ မျိုးပွားနိုင်ခဲ့သောကြောင့် အမည်းရောင် allele သည် မျိုးဆက်အနည်းငယ်အတွင်း လူဦးရေထဲတွင် ပို၍များပြားလာခဲ့သည် -- သဘာဝရွေးချယ်မှုသည် အမည်းရောင် allele ကို ဖန်တီးခဲ့ခြင်း မဟုတ်ဘဲ၊ ပတ်ဝန်းကျင်ပြောင်းလဲသွားသောအခါ ရှိပြီးသား allele ၏ ရေတိုးအညွှန်း မည်မျှများပြားလာသည်ကို ပြောင်းလဲပေးခဲ့ခြင်းသာ ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What was the expected phenotype ratio for Min Thu's monohybrid cross?",
            questionMy:
                "မင်းသူ၏ monohybrid cross အတွက် ခန့်မှန်း phenotype အချိုးမှာ အဘယ်နည်း။",
            optionsEn: [
              "3 purple-flowered plants to every 1 white-flowered plant",
              "1 purple-flowered plant to every 3 white-flowered plants",
              "All plants purple-flowered, with no white",
              "All plants white-flowered, with no purple",
            ],
            optionsMy: [
              "ခရမ်းရောင်ပွင့်ရှိသောအပင် ၃ ပင်လျှင် အဖြူရောင်ပွင့်ရှိသောအပင် ၁ ပင်",
              "ခရမ်းရောင်ပွင့်ရှိသောအပင် ၁ ပင်လျှင် အဖြူရောင်ပွင့်ရှိသောအပင် ၃ ပင်",
              "အပင်အားလုံး ခရမ်းရောင်ပွင့်ရှိကာ အဖြူရောင် လုံးဝမရှိ",
              "အပင်အားလုံး အဖြူရောင်ပွင့်ရှိကာ ခရမ်းရောင် လုံးဝမရှိ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first paragraph's description of the Punnett square result.",
              "Both PP and Pp genotypes show the dominant purple phenotype, while only pp shows white.",
            ],
            hintsMy: [
              "Punnett square ရလဒ်ကို ဖော်ပြထားသည့် ပထမစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "PP နှင့် Pp genotype နှစ်ခုစလုံးသည် dominant ခရမ်းရောင် phenotype ကို ပြသပြီး pp တစ်ခုတည်းသာ အဖြူရောင်ကို ပြသသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Before the Industrial Revolution, why did pale moths survive better than dark moths?",
            questionMy:
                "စက်မှုတော်လှန်ရေးမတိုင်မီ ငွေဝါရောင်ဗွက်ဝက်များသည် အမည်းရောင်ဗွက်ဝက်များထက် အဘယ်ကြောင့် ပို၍ရှင်သန်ခဲ့သနည်း။",
            optionsEn: [
              "Pale colouring camouflaged them well against pale tree bark and lichen",
              "Pale moths could fly faster than dark moths",
              "Dark moths could not reproduce at all",
              "Birds preferred to eat pale moths",
            ],
            optionsMy: [
              "ငွေဝါရောင်သည် ငွေဝါရောင်သစ်ခေါက်နှင့် ငွက်ခြေအမွှေးများနှင့် ကောင်းစွာ ခြယ်ရောက်ဝှက်ကွယ်ပေးခဲ့ခြင်း",
              "ငွေဝါရောင်ဗွက်ဝက်များသည် အမည်းရောင်ဗွက်ဝက်များထက် ပို၍မြန်စွာ ပျံသန်းနိုင်ခဲ့ခြင်း",
              "အမည်းရောင်ဗွက်ဝက်များသည် လုံးဝ မျိုးပွား၍မရနိုင်ခြင်း",
              "ငှက်များသည် ငွေဝါရောင်ဗွက်ဝက်များကို စားရန် ပို၍နှစ်သက်ခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the situation before industrial pollution.",
              "Camouflage against predators is the key factor determining survival here.",
            ],
            hintsMy: [
              "စက်မှုညစ်ညမ်းမှုမတိုင်မီ အခြေအနေကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "သားရဲများအား ခြယ်ရောက်ဝှက်ကွယ်နိုင်မှုသည် ဤနေရာတွင် ရှင်သန်မှုကို ဆုံးဖြတ်ပေးသည့် အဓိကအချက်ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did dark moths survive better after pollution blackened the tree trunks?",
            questionMy:
                "ညစ်ညမ်းမှုက သစ်ပင်ပင်စည်များကို အမည်းရောင်ဖြစ်စေပြီးနောက် အမည်းရောင်ဗွက်ဝက်များ အဘယ်ကြောင့် ပို၍ရှင်သန်ခဲ့သနည်း။",
            optionsEn: [
              "They now blended in with the darkened bark, avoiding predation",
              "They became immune to all predators",
              "They stopped needing camouflage entirely",
              "The pollution killed all the birds",
            ],
            optionsMy: [
              "ယခုအခါ အမည်းရောင်သစ်ခေါက်နှင့် ထိုးထွင်းညီညွတ်လာကာ တောင့်ခံစားသုံးခံရမှုကို ရှောင်ရှားနိုင်ခဲ့ခြင်း",
              "သားရဲများအားလုံးအား ခုခံနိုင်စွမ်းရှိလာခဲ့ခြင်း",
              "ခြယ်ရောက်ဝှက်ကွယ်ရန် လုံးဝ မလိုအပ်တော့ခဲ့ခြင်း",
              "ညစ်ညမ်းမှုက ငှက်အားလုံးကို သေစေခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the reversal after pollution.",
              "The dark moths' colouring now matched the environment, making them harder for predators to spot.",
            ],
            hintsMy: [
              "ညစ်ညမ်းမှုပြီးနောက် ပြောင်းပြန်ဖြစ်သွားမှုကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အမည်းရောင်ဗွက်ဝက်များ၏ အရောင်သည် ယခုအခါ ပတ်ဝန်းကျင်နှင့် ကိုက်ညီလာကာ သားရဲများအတွက် ရှာဖွေတွေ့ရှိရန် ခက်ခဲစေခဲ့သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Min Thu conclude natural selection had actually done to the dark allele?",
            questionMy:
                "သဘာဝရွေးချယ်မှုသည် အမည်းရောင် allele အား အမှန်တကယ် မည်သို့ ပြုလုပ်ခဲ့ကြောင်း မင်းသူ ကောက်ချက်ချခဲ့သနည်း။",
            optionsEn: [
              "It had not created the allele, but changed how common it became once the environment shifted",
              "It had created the dark allele from nothing",
              "It had destroyed the dark allele completely",
              "It had no effect on the allele's frequency at all",
            ],
            optionsMy: [
              "Allele ကို ဖန်တီးခဲ့ခြင်း မဟုတ်ဘဲ ပတ်ဝန်းကျင်ပြောင်းလဲသွားသောအခါ ၎င်း၏ ရေတိုးအညွှန်း မည်မျှများပြားလာသည်ကို ပြောင်းလဲပေးခဲ့ခြင်း",
              "အမည်းရောင် allele ကို လုံးဝ အသစ်ဖန်တီးခဲ့ခြင်း",
              "အမည်းရောင် allele ကို လုံးဝ ဖျက်ဆီးခဲ့ခြင်း",
              "Allele ၏ ရေတိုးအညွှန်းအပေါ် မည်သို့မျှ သက်ရောက်မှုမရှိခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "The dark allele already existed at low frequency before pollution; natural selection changed its frequency, not its existence.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ညစ်ညမ်းမှုမတိုင်မီ အမည်းရောင် allele သည် နည်းပါးသောရေတိုးအညွှန်းဖြင့် အမြဲရှိခဲ့ပြီး၊ သဘာဝရွေးချယ်မှုက ၎င်း၏ ရေတိုးအညွှန်းကို ပြောင်းလဲပေးခဲ့သည်၊ ၎င်း၏ တည်ရှိမှုကို မဟုတ်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w31-d5",
      dayNumber: 5,
      titleEn: "Week 31 Recap: Inheritance, Genes, and Evolution",
      titleMy:
          "အပတ်စဉ် ၃၁ ပြန်လည်သုံးသပ်ခြင်း - မျိုးရိုးလိုက်ခြင်း၊ ဂျင်းမ်များနှင့် ဆင့်ကဲဖြစ်စဉ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "DNA is organised into...",
          questionMy: "DNA သည် မည်သည့်အရာအဖြစ် စုစည်းထားသနည်း။",
          optionsEn: [
            "Chromosomes",
            "Cell walls only",
            "Petals only",
            "Feathers only",
          ],
          optionsMy: [
            "ခရိုမိုဆုန်းများ",
            "ဆဲလ်နံရံများသာ",
            "ပွင့်ချပ်များသာ",
            "အမွှေးများသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A recessive phenotype only appears when the genotype is...",
          questionMy:
              "Recessive phenotype သည် genotype မည်သို့ဖြစ်မှသာ ပေါ်လွင်သနည်း။",
          optionsEn: [
            "Homozygous recessive (aa)",
            "Heterozygous (Aa)",
            "Homozygous dominant (AA)",
            "Never appears",
          ],
          optionsMy: [
            "Homozygous recessive (aa)",
            "Heterozygous (Aa)",
            "Homozygous dominant (AA)",
            "ဘယ်တော့မှ မပေါ်လွင်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Natural selection favours individuals that are...",
          questionMy:
              "သဘာဝရွေးချယ်မှုသည် မည်သို့သော လူတစ်ဦးချင်းစီကို ထောက်ခံသနည်း။",
          optionsEn: [
            "Better suited to survive and reproduce",
            "Identical to everyone else",
            "Unable to reproduce",
            "Always the largest",
          ],
          optionsMy: [
            "ရှင်သန်ကာ မျိုးပွားရန် ပို၍သင့်လျော်ခြင်း",
            "အခြားသူများနှင့် အတိအကျ တူညီခြင်း",
            "မျိုးပွား၍ မရနိုင်ခြင်း",
            "အမြဲတမ်း အကြီးဆုံး ဖြစ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the peppered moth example, pollution changed which colouring was...",
          questionMy:
              "Peppered moth ဥပမာတွင် ညစ်ညမ်းမှုက မည်သည့်အရောင်သည် မည်သို့ဖြစ်သည်ကို ပြောင်းလဲပေးခဲ့သနည်း။",
          optionsEn: [
            "Better camouflaged",
            "More colourful",
            "Louder",
            "Heavier",
          ],
          optionsMy: [
            "ပို၍ခြယ်ရောက်ဝှက်ကွယ်နိုင်ခြင်း",
            "ပို၍ အရောင်စုံလင်ခြင်း",
            "ပို၍ ကျယ်လောင်ခြင်း",
            "ပို၍ လေးလံခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An allele is best described as...",
          questionMy: "Allele တစ်ခုကို မည်သို့ အကောင်းဆုံးဖော်ပြသနည်း။",
          optionsEn: [
            "A different version of the same gene",
            "A whole chromosome",
            "An entire organism",
            "A type of cell",
          ],
          optionsMy: [
            "ဂျင်းမ်တစ်ခုတည်း၏ ကွဲပြားသောဗားရှင်း",
            "ခရိုမိုဆုန်းတစ်ခုလုံး",
            "သက်ရှိတစ်ခုလုံး",
            "ဆဲလ်တစ်မျိုး",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 32 (Capstone): "Organic & Environmental Chemistry Studio"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek32 = CourseWeekDef(
  id: "course-igcse-combsci-w32",
  weekNumber: 32,
  titleEn: "Organic & Environmental Chemistry Studio",
  titleMy: "အော်ဂဲနစ်နှင့် ပတ်ဝန်းကျင် ဓာတုဗေဒ အလုပ်ရုံ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w32-d1",
      dayNumber: 1,
      titleEn: "Chemistry and Genetics Exam Quiz",
      titleMy: "ဓာတုဗေဒနှင့် မျိုးရိုးဗီဇဗေဒ စာမေးပွဲပုံစံ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Which gas makes up roughly 78% of clean air?",
          questionMy:
              "မည်သည့်ဓာတ်ငွေ့သည် သန့်ရှင်းသောလေထု၏ ခန့်မှန်းအားဖြင့် ၇၈% ကို ဖွဲ့စည်းသနည်း။",
          optionsEn: ["Nitrogen", "Oxygen", "Carbon dioxide", "Argon"],
          optionsMy: [
            "နိုက်ထရိုဂျင်",
            "အောက်ဆီဂျင်",
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်",
            "အာဂွန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Ye Yint's Week 29 investigation into air composition.",
            "Oxygen makes up about 21%, leaving nitrogen as by far the largest share.",
          ],
          hintsMy: [
            "ရဲရင့်၏ အပတ်စဉ် ၂၉ လေထုဖွဲ့စည်းပုံ စူးစမ်းလေ့လာမှုကို သတိရပါ။",
            "အောက်ဆီဂျင်သည် ခန့်မှန်းအားဖြင့် ၂၁% ရှိသောကြောင့် နိုက်ထရိုဂျင်သည် အများဆုံးအစိတ်အပိုင်းဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Bromine water is used to distinguish an alkane from an alkene because...",
          questionMy:
              "ဗရိုမင်ရေကို အယ်လ်ကိန်းနှင့် အယ်လ်ကင်းကို ခွဲခြားရန် အသုံးပြုရသည့် အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Only the alkene's double bond reacts, decolourising the bromine water",
            "Both react identically with bromine water",
            "Alkanes always turn bromine water blue",
            "Bromine water has no effect on hydrocarbons",
          ],
          optionsMy: [
            "အယ်လ်ကင်း၏ နှစ်ထပ်ချိတ်ဆက်မှုသာ ဓာတ်ပြုပြီး ဗရိုမင်ရေကို အရောင်ပျောက်စေသောကြောင့်",
            "နှစ်ခုစလုံးသည် ဗရိုမင်ရေနှင့် တူညီစွာ ဓာတ်ပြုသောကြောင့်",
            "အယ်လ်ကိန်းများသည် ဗရိုမင်ရေကို အမြဲတမ်း အပြာရောင်ပြောင်းစေသောကြောင့်",
            "ဗရိုမင်ရေသည် ဟိုက်ဒရိုကာဘွန်များအပေါ် သက်ရောက်မှုမရှိသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Hsu Mon's Week 30 bromine water test.",
            "The saturated alkane has no reactive double bond, so the orange colour stays unchanged.",
          ],
          hintsMy: [
            "ဆုမွန်၏ အပတ်စဉ် ၃၀ ဗရိုမင်ရေစမ်းသပ်မှုကို သတိရပါ။",
            "ရော်စေးဒ်အယ်လ်ကိန်းတွင် တုံ့ပြန်တတ်သော နှစ်ထပ်ချိတ်ဆက်မှု မရှိသောကြောင့် လိမ္မော်ရောင် မပြောင်းလဲဘဲ ကျန်ရှိနေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a monohybrid cross Bb x Bb, what fraction of offspring is expected to be homozygous dominant (BB)?",
          questionMy:
              "Monohybrid cross Bb x Bb တွင် သားရင်ဇာတ်များ၏ မည်သည့်အပိုင်းအစသည် homozygous dominant (BB) ဖြစ်မည်ဟု ခန့်မှန်းရသနည်း။",
          optionsEn: ["1/4", "1/2", "3/4", "0"],
          optionsMy: ["1/4", "1/2", "3/4", "0"],
          correctIndex: 0,
          hintsEn: [
            "Draw a Punnett square: the four combinations are BB, Bb, Bb, and bb.",
            "Only one of the four boxes is BB.",
          ],
          hintsMy: [
            "Punnett square တစ်ခု ရေးဆွဲကြည့်ပါ: ပေါင်းစပ်မှုလေးခုမှာ BB, Bb, Bb နှင့် bb ဖြစ်သည်။",
            "လေးခုအနက် တစ်ခုတည်းသာ BB ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Burning fossil fuels connects to environmental impact mainly because it releases...",
          questionMy:
              "ရုပ်ကြွင်းလောင်စာများ လောင်ကျွမ်းခြင်းသည် ပတ်ဝန်းကျင်ဆိုင်ရာသက်ရောက်မှုနှင့် အဓိကအားဖြင့် မည်သို့ ဆက်စပ်သနည်း။",
          optionsEn: [
            "Carbon dioxide, contributing to the enhanced greenhouse effect",
            "Only pure oxygen, with no other gases",
            "Only water vapour, with no environmental effect",
            "Only nitrogen, with no environmental effect",
          ],
          optionsMy: [
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို ထုတ်လွှင့်ပြီး ဖန်လုံအိမ်အာနိသင် တိုးပွားမှုကို ဖြစ်ပေါ်စေသောကြောင့်",
            "စင်ကြယ်အောက်ဆီဂျင်သာ၊ အခြားဓာတ်ငွေ့မပါဘဲ",
            "ရေငွေ့သာ၊ ပတ်ဝန်းကျင်ဆိုင်ရာသက်ရောက်မှု မရှိဘဲ",
            "နိုက်ထရိုဂျင်သာ၊ ပတ်ဝန်းကျင်ဆိုင်ရာသက်ရောက်မှု မရှိဘဲ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Week 29's connection between combustion and the greenhouse effect.",
            "This is the same carbon dioxide that traps outgoing infrared radiation, warming the atmosphere.",
          ],
          hintsMy: [
            "လောင်ကျွမ်းခြင်းနှင့် ဖန်လုံအိမ်အာနိသင်ကြား ဆက်စပ်မှုကို ဖော်ပြထားသည့် အပတ်စဉ် ၂၉ ကို သတိရပါ။",
            "ဤသည်မှာ ထွက်ခွာနေသော အင်ဖရာရက်ရေဒီယေးရှင်းကို ချုပ်ကိုင်ထားပြီး လေထုကို နွေးထွေးစေသော ကာဗွန်ဒိုင်အောက်ဆိုဒ် အတိအကျပင်ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w32-d2",
      dayNumber: 2,
      titleEn: "Match the Term Vocabulary Review",
      titleMy: "နှစ်ဝက်ဝေါဟာရများ ပြန်လည်သုံးသပ်ခြင်း ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w32-dm-1",
          termEn: "Global Warming",
          termMy: "ကမ္ဘာကြီးပူနွေးလာခြင်း (Global Warming)",
          matchEn:
              "The long-term rise in Earth's average temperature, largely driven by the enhanced greenhouse effect.",
          matchMy:
              "ဖန်လုံအိမ်အာနိသင် တိုးပွားမှုက အဓိကတွန်းအားပေးသော၊ ကမ္ဘာ့ပျမ်းမျှအပူချိန် ရေရှည်တွင် မြင့်တက်လာခြင်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w32-dm-2",
          termEn: "Hydrocarbon",
          termMy: "ဟိုက်ဒရိုကာဘွန် (Hydrocarbon)",
          matchEn:
              "A compound containing only hydrogen and carbon atoms, such as an alkane or alkene.",
          matchMy:
              "အယ်လ်ကိန်း (သို့) အယ်လ်ကင်းကဲ့သို့ ဟိုက်ဒရိုဂျင်နှင့် ကာဗွန်အက်တမ်များသာ ပါဝင်သော ဒြပ်ပေါင်း။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w32-dm-3",
          termEn: "Water Treatment",
          termMy: "ရေသန့်စင်ခြင်း (Water Treatment)",
          matchEn:
              "The multi-step process of sedimentation, filtration, and chlorination used to make water safe to drink.",
          matchMy:
              "ရေကို သောက်သုံးရန် ဘေးကင်းစေသော ကြည်လင်ခြင်း၊ ရေစစ်ခြင်းနှင့် ကလိုရင်းနေးရှင်း အဆင့်များစွာပါသော လုပ်ငန်းစဉ်။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w32-dm-4",
          termEn: "Genotype",
          termMy: "Genotype",
          matchEn:
              "The genetic makeup of an organism for a particular characteristic, e.g. Bb.",
          matchMy:
              "အထူးလက္ခဏာတစ်ခုအတွက် သက်ရှိတစ်ခု၏ မျိုးရိုးဗီဇဖွဲ့စည်းပုံ၊ ဥပမာ- Bb။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w32-dm-5",
          termEn: "Evolution",
          termMy: "ဆင့်ကဲဖြစ်စဉ် (Evolution)",
          matchEn:
              "The gradual change in a population's characteristics over many generations, driven by natural selection.",
          matchMy:
              "သဘာဝရွေးချယ်မှုက တွန်းအားပေးသော၊ လူဦးရေတစ်စု၏ လက္ခဏာများ မျိုးဆက်များစွာအတွင်း တဖြည်းဖြည်း ပြောင်းလဲမှု။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w32-d3",
      dayNumber: 3,
      titleEn: "Sort: Environmental Chemistry, Organic Chemistry, or Genetics?",
      titleMy:
          "စီစစ်ကြမည် - ပတ်ဝန်းကျင်ဓာတုဗေဒ၊ အော်ဂဲနစ်ဓာတုဗေဒ (သို့) မျိုးရိုးဗီဇဗေဒ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Environmental Chemistry",
          "Organic Chemistry",
          "Genetics and Evolution",
        ],
        bucketsMy: [
          "ပတ်ဝန်းကျင်ဓာတုဗေဒ",
          "အော်ဂဲနစ်ဓာတုဗေဒ",
          "မျိုးရိုးဗီဇဗေဒနှင့် ဆင့်ကဲဖြစ်စဉ်",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w32-sort-1",
            labelEn: "The greenhouse effect",
            labelMy: "ဖန်လုံအိမ်အာနိသင်",
            correctBucketEn: "Environmental Chemistry",
            correctBucketMy: "ပတ်ဝန်းကျင်ဓာတုဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w32-sort-2",
            labelEn: "Chlorination of drinking water",
            labelMy: "သောက်သုံးရေ ကလိုရင်းနေးရှင်း",
            correctBucketEn: "Environmental Chemistry",
            correctBucketMy: "ပတ်ဝန်းကျင်ဓာတုဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w32-sort-3",
            labelEn: "Sulfur dioxide air pollution",
            labelMy: "ဆာလဖာဒိုင်အောက်ဆိုဒ် လေထုညစ်ညမ်းမှု",
            correctBucketEn: "Environmental Chemistry",
            correctBucketMy: "ပတ်ဝန်းကျင်ဓာတုဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w32-sort-4",
            labelEn: "Alkanes and alkenes",
            labelMy: "အယ်လ်ကိန်းများနှင့် အယ်လ်ကင်းများ",
            correctBucketEn: "Organic Chemistry",
            correctBucketMy: "အော်ဂဲနစ်ဓာတုဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w32-sort-5",
            labelEn: "Fractional distillation of crude oil",
            labelMy: "ရေနံကြမ်း fractional distillation",
            correctBucketEn: "Organic Chemistry",
            correctBucketMy: "အော်ဂဲနစ်ဓာတုဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w32-sort-6",
            labelEn: "Polymerisation of ethene into poly(ethene)",
            labelMy: "အီသင်းကို ပိုလီ(အီသင်း) အဖြစ် Polymerisation ဖြစ်ခြင်း",
            correctBucketEn: "Organic Chemistry",
            correctBucketMy: "အော်ဂဲနစ်ဓာတုဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w32-sort-7",
            labelEn: "A monohybrid cross Punnett square",
            labelMy: "Monohybrid cross Punnett square",
            correctBucketEn: "Genetics and Evolution",
            correctBucketMy: "မျိုးရိုးဗီဇဗေဒနှင့် ဆင့်ကဲဖြစ်စဉ်",
          ),
          SortingItem(
            id: "igcsecs-w32-sort-8",
            labelEn: "Natural selection changing allele frequency",
            labelMy:
                "Allele ၏ ရေတိုးအညွှန်းကို ပြောင်းလဲပေးသော သဘာဝရွေးချယ်မှု",
            correctBucketEn: "Genetics and Evolution",
            correctBucketMy: "မျိုးရိုးဗီဇဗေဒနှင့် ဆင့်ကဲဖြစ်စဉ်",
          ),
          SortingItem(
            id: "igcsecs-w32-sort-9",
            labelEn: "DNA organised into chromosomes",
            labelMy: "ခရိုမိုဆုန်းများအဖြစ် စုစည်းထားသော DNA",
            correctBucketEn: "Genetics and Evolution",
            correctBucketMy: "မျိုးရိုးဗီဇဗေဒနှင့် ဆင့်ကဲဖြစ်စဉ်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w32-d4",
      dayNumber: 4,
      titleEn: "Reading: Shwe Yamin's Combined Chemistry Exam Practice",
      titleMy: "စာဖတ်ခြင်း - ရွှေရာမင်း၏ ပေါင်းစပ်ဓာတုဗေဒ စာမေးပွဲလေ့ကျင့်ခန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Shwe Yamin's Combined Chemistry Exam Practice",
        titleMy: "ရွှေရာမင်း၏ ပေါင်းစပ်ဓာတုဗေဒ စာမေးပွဲလေ့ကျင့်ခန်း",
        passageEn:
            "For the term's capstone exam practice, Shwe Yamin worked through a question paper deliberately linking organic chemistry with environmental impact -- a combination the examiners favour because burning hydrocarbon fuels connects both topics directly.\n\nThe first part asked Shwe Yamin to write a balanced word equation for the complete combustion of a hydrocarbon fuel in plentiful oxygen. She wrote: hydrocarbon + oxygen -> carbon dioxide + water, correctly identifying that complete combustion, with enough oxygen present, produces only these two products rather than the carbon monoxide and soot particulates that incomplete combustion produces when oxygen is limited.\n\nThe second part then asked her to explain the environmental consequence of burning large quantities of this fuel worldwide. Shwe Yamin explained that the carbon dioxide released accumulates in the atmosphere and traps outgoing infrared radiation, contributing to the enhanced greenhouse effect and global warming -- directly connecting her organic chemistry equation to the environmental chemistry ideas from earlier in the term.\n\nThe final part asked her to suggest one way to reduce this environmental impact without stopping fuel use entirely. Shwe Yamin suggested switching some fuel use to hydrogen, whose combustion produces only water and no carbon dioxide at all. Her teacher praised the answer for correctly reasoning through the chemistry of an alternative, rather than simply stating 'use less fuel' without any chemical justification -- exactly the kind of reasoned, connected answer that scores full marks on a real exam paper.",
        passageMy:
            "ထိုနှစ်ဝက်၏ အနှစ်ချုပ်စာမေးပွဲ လေ့ကျင့်ခန်းအတွက် ရွှေရာမင်းသည် အော်ဂဲနစ်ဓာတုဗေဒကို ပတ်ဝန်းကျင်ဆိုင်ရာသက်ရောက်မှုနှင့် ရည်ရွယ်ချက်ရှိရှိ ချိတ်ဆက်ထားသော မေးခွန်းစာရွက်တစ်ခုကို ဖြေရှင်းခဲ့သည် -- ဟိုက်ဒရိုကာဘွန်လောင်စာများ လောင်ကျွမ်းခြင်းက ဘာသာရပ်နှစ်ခုကို တိုက်ရိုက်ဆက်စပ်ပေးသောကြောင့် စာစစ်ဆရာများ ကြိုက်နှစ်သက်သော ပေါင်းစပ်မှုဖြစ်သည်။\n\nပထမပိုင်းက ရွှေရာမင်းအား ရေနံစိမ်းလောင်စာတစ်ခု အောက်ဆီဂျင်ပေါများစွာအတွင်း အပြည့်အဝလောင်ကျွမ်းခြင်းအတွက် ချိန်ညှိထားသော စာလုံးညီမျှခြင်းတစ်ခု ရေးသားရန် တောင်းဆိုခဲ့သည်။ သူမက: ဟိုက်ဒရိုကာဘွန် + အောက်ဆီဂျင် -> ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ရေ ဟု ရေးသားခဲ့ပြီး၊ အောက်ဆီဂျင် လုံလောက်စွာရှိသည့်အခါ အပြည့်အဝလောင်ကျွမ်းခြင်းသည် အောက်ဆီဂျင်ကန့်သတ်ထားချိန်တွင် မပြည့်စုံသောလောင်ကျွမ်းခြင်းက ထုတ်လုပ်ပေးသော ကာဗွန်မိုနောက်ဆိုဒ်နှင့် မီးခိုးမှုန့်တို့အစား ဤထွက်ကုန်နှစ်ခုကိုသာ ထုတ်လုပ်ကြောင်း မှန်ကန်စွာ ဖော်ထုတ်ခဲ့သည်။\n\nဒုတိယပိုင်းက ကမ္ဘာတစ်ဝှမ်း ဤလောင်စာကို ပမာဏများစွာ လောင်ကျွမ်းစေခြင်း၏ ပတ်ဝန်းကျင်ဆိုင်ရာအကျိုးဆက်ကို ရှင်းပြရန် သူမကို တောင်းဆိုခဲ့သည်။ ရွှေရာမင်းသည် ထွက်လာသော ကာဗွန်ဒိုင်အောက်ဆိုဒ်သည် လေထုအတွင်း စုပုံလာပြီး ထွက်ခွာနေသော အင်ဖရာရက်ရေဒီယေးရှင်းကို ချုပ်ကိုင်ထားကာ ဖန်လုံအိမ်အာနိသင် တိုးပွားမှုနှင့် ကမ္ဘာကြီးပူနွေးလာခြင်းကို ဖြစ်ပေါ်စေကြောင်း ရှင်းပြခဲ့သည် -- သူမ၏ အော်ဂဲနစ်ဓာတုဗေဒညီမျှခြင်းကို ထိုနှစ်ဝက်၏ ပိုမိုစောစီးသော ပတ်ဝန်းကျင်ဓာတုဗေဒအယူအဆများနှင့် တိုက်ရိုက်ချိတ်ဆက်ခဲ့သည်။\n\nနောက်ဆုံးပိုင်းက လောင်စာအသုံးပြုမှုကို လုံးဝ ရပ်တန့်ခြင်းမပြုဘဲ ဤပတ်ဝန်းကျင်ဆိုင်ရာသက်ရောက်မှုကို လျှော့ချရန် နည်းလမ်းတစ်ခုကို အကြံပြုရန် သူမကို တောင်းဆိုခဲ့သည်။ ရွှေရာမင်းက လောင်စာအသုံးပြုမှုအချို့ကို ဟိုက်ဒရိုဂျင်ဘက်သို့ ပြောင်းရွှေ့ရန် အကြံပြုခဲ့ပြီး၊ ၎င်း၏ လောင်ကျွမ်းခြင်းသည် ရေကိုသာ ထုတ်ပေးပြီး ကာဗွန်ဒိုင်အောက်ဆိုဒ် လုံးဝ ထွက်ပေါ်မှုမရှိကြောင်း ဖော်ပြခဲ့သည်။ သူ၏ဆရာက ဓာတုပညာအရ အကြောင်းပြချက်မပါဘဲ 'လောင်စာနည်းနည်းသုံးပါ' ဟုသာ ဖော်ပြခြင်းအစား အခြားရွေးချယ်စရာ၏ ဓာတုဗေဒကို မှန်ကန်စွာ ဆင်ခြင်တွေးခေါ်ခဲ့ခြင်းအတွက် ဤအဖြေကို ချီးမွမ်းခဲ့သည် -- ၎င်းသည် တကယ့်စာမေးပွဲစာရွက်တွင် အမှတ်အပြည့်ရရှိစေသော ဆင်ခြင်တွေးခေါ်၍ ချိတ်ဆက်ထားသည့် အဖြေအမျိုးအစား အတိအကျပင်ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What are the two products of complete combustion of a hydrocarbon in plentiful oxygen?",
            questionMy:
                "ဟိုက်ဒရိုကာဘွန်တစ်ခုကို အောက်ဆီဂျင်ပေါများစွာအတွင်း အပြည့်အဝလောင်ကျွမ်းစေခြင်း၏ ထွက်ကုန်နှစ်ခုမှာ အဘယ်နည်း။",
            optionsEn: [
              "Carbon dioxide and water",
              "Carbon monoxide and soot only",
              "Only nitrogen gas",
              "Only pure carbon",
            ],
            optionsMy: [
              "ကာဗွန်ဒိုင်အောက်ဆိုဒ်နှင့် ရေ",
              "ကာဗွန်မိုနောက်ဆိုဒ်နှင့် မီးခိုးမှုန့်သာ",
              "နိုက်ထရိုဂျင်ဓာတ်ငွေ့သာ",
              "စင်ကြယ်ကာဗွန်သာ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's word equation.",
              "Complete combustion needs plentiful oxygen; carbon monoxide and soot only form during incomplete combustion.",
            ],
            hintsMy: [
              "စာလုံးညီမျှခြင်းကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အပြည့်အဝလောင်ကျွမ်းခြင်းအတွက် အောက်ဆီဂျင်ပေါများစွာလိုအပ်သည်၊ ကာဗွန်မိုနောက်ဆိုဒ်နှင့် မီးခိုးမှုန့်မှာ မပြည့်စုံသောလောင်ကျွမ်းခြင်းတွင်သာ ဖြစ်ပေါ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "How did Shwe Yamin connect combustion to the greenhouse effect?",
            questionMy:
                "ရွှေရာမင်းသည် လောင်ကျွမ်းခြင်းကို ဖန်လုံအိမ်အာနိသင်နှင့် မည်သို့ ချိတ်ဆက်ခဲ့သနည်း။",
            optionsEn: [
              "The carbon dioxide released traps outgoing infrared radiation, warming the atmosphere",
              "Combustion has no connection to the greenhouse effect at all",
              "Combustion only produces oxygen, cooling the atmosphere",
              "Combustion removes carbon dioxide from the atmosphere",
            ],
            optionsMy: [
              "ထွက်လာသော ကာဗွန်ဒိုင်အောက်ဆိုဒ်သည် ထွက်ခွာနေသော အင်ဖရာရက်ရေဒီယေးရှင်းကို ချုပ်ကိုင်ထားပြီး လေထုကို နွေးထွေးစေခြင်း",
              "လောင်ကျွမ်းခြင်းသည် ဖန်လုံအိမ်အာနိသင်နှင့် မည်သို့မျှ ဆက်စပ်မှုမရှိခြင်း",
              "လောင်ကျွမ်းခြင်းသည် အောက်ဆီဂျင်ကိုသာ ထုတ်ပေးပြီး လေထုကို အေးမြစေခြင်း",
              "လောင်ကျွမ်းခြင်းက လေထုမှ ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို ဖယ်ရှားပေးခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation of the environmental consequence.",
              "This links directly back to the greenhouse effect concept from Week 29.",
            ],
            hintsMy: [
              "ပတ်ဝန်းကျင်ဆိုင်ရာအကျိုးဆက်ကို ရှင်းပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ အပတ်စဉ် ၂၉ မှ ဖန်လုံအိမ်အာနိသင်အယူအဆနှင့် တိုက်ရိုက်ဆက်စပ်ထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What alternative fuel did Shwe Yamin suggest to reduce environmental impact?",
            questionMy:
                "ပတ်ဝန်းကျင်ဆိုင်ရာသက်ရောက်မှုကို လျှော့ချရန် ရွှေရာမင်း မည်သည့်အခြားလောင်စာကို အကြံပြုခဲ့သနည်း။",
            optionsEn: [
              "Hydrogen, whose combustion produces only water",
              "More hydrocarbon fuel with no changes",
              "Pure nitrogen",
              "Pure carbon dioxide",
            ],
            optionsMy: [
              "ဟိုက်ဒရိုဂျင်၊ ၎င်း၏လောင်ကျွမ်းခြင်းသည် ရေကိုသာ ထုတ်ပေးသည်",
              "မည်သည့်အပြောင်းအလဲမျှမပါဘဲ ဟိုက်ဒရိုကာဘွန်လောင်စာ ပို၍သုံးခြင်း",
              "စင်ကြယ်နိုက်ထရိုဂျင်",
              "စင်ကြယ်ကာဗွန်ဒိုင်အောက်ဆိုဒ်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the fourth paragraph's suggestion.",
              "Hydrogen combustion produces water only, with no carbon dioxide released at all.",
            ],
            hintsMy: [
              "အကြံပြုချက်ကို ဖော်ပြထားသည့် စတုတ္ထစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဟိုက်ဒရိုဂျင်လောင်ကျွမ်းခြင်းသည် ရေကိုသာ ထုတ်ပေးပြီး ကာဗွန်ဒိုင်အောက်ဆိုဒ် လုံးဝ မထွက်ပေါ်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn: "Why did Shwe Yamin's teacher praise her final answer?",
            questionMy:
                "ရွှေရာမင်း၏ဆရာသည် သူမ၏ နောက်ဆုံးအဖြေကို အဘယ်ကြောင့် ချီးမွမ်းခဲ့သနည်း။",
            optionsEn: [
              "It reasoned through the chemistry of an alternative, rather than a vague suggestion with no chemical justification",
              "It was the shortest answer possible",
              "It avoided answering the question entirely",
              "It repeated the first part's word equation",
            ],
            optionsMy: [
              "ဓာတုပညာအရ အကြောင်းပြချက်မပါသော ဝေဝါးသောအကြံပြုချက်အစား အခြားရွေးချယ်စရာ၏ ဓာတုဗေဒကို ဆင်ခြင်တွေးခေါ်ခဲ့ခြင်း",
              "ဖြစ်နိုင်သမျှ တိုတောင်းဆုံးအဖြေ ဖြစ်ခြင်း",
              "မေးခွန်းကို လုံးဝ ဖြေဆိုခြင်းမှ ရှောင်ရှားခဲ့ခြင်း",
              "ပထမပိုင်း၏ စာလုံးညီမျှခြင်းကို ထပ်ခါပြောခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Reasoned, chemically justified answers earn full marks, unlike vague statements with no explanation.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ဆင်ခြင်တွေးခေါ်၍ ဓာတုပညာအရ အကြောင်းပြချက်ရှိသောအဖြေများသည် ရှင်းလင်းချက်မပါသော ဝေဝါးသောဖော်ပြချက်များနှင့်မတူဘဲ အမှတ်အပြည့်ရရှိစေသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w32-d5",
      dayNumber: 5,
      titleEn: "Term 8 Recap: Air, Water and Organic Chemistry",
      titleMy:
          "အဌမနှစ်ဝက် ပြန်လည်သုံးသပ်ခြင်း - လေထု၊ ရေထုနှင့် အော်ဂဲနစ်ဓာတုဗေဒ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Nitrogen makes up roughly...",
          questionMy: "နိုက်ထရိုဂျင်သည် ခန့်မှန်းအားဖြင့် မည်မျှရှိသနည်း။",
          optionsEn: [
            "78% of clean air",
            "21% of clean air",
            "50% of clean air",
            "1% of clean air",
          ],
          optionsMy: [
            "သန့်ရှင်းလေထု၏ ၇၈%",
            "သန့်ရှင်းလေထု၏ ၂၁%",
            "သန့်ရှင်းလေထု၏ ၅၀%",
            "သန့်ရှင်းလေထု၏ ၁%",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Chlorination is the final step in water treatment used to...",
          questionMy:
              "ကလိုရင်းနေးရှင်းသည် ရေသန့်စင်ခြင်း၏ နောက်ဆုံးအဆင့်ဖြစ်ပြီး မည်သည့်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Kill harmful microorganisms",
            "Add colour",
            "Freeze the water",
            "Remove all salts",
          ],
          optionsMy: [
            "အန္တရာယ်ရှိသော အဏုဇီဝပိုးများကို သတ်ဖျက်ရန်",
            "အရောင်ထည့်ရန်",
            "ရေကို အေးခဲစေရန်",
            "ဆားအားလုံးကို ဖယ်ရှားရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Alkenes react with bromine water because they contain...",
          questionMy:
              "အယ်လ်ကင်းများသည် မည်သည့်အရာပါဝင်သောကြောင့် ဗရိုမင်ရေနှင့် ဓာတ်ပြုသနည်း။",
          optionsEn: [
            "A carbon-carbon double bond",
            "Only single bonds",
            "No carbon atoms",
            "Nitrogen atoms",
          ],
          optionsMy: [
            "ကာဗွန်-ကာဗွန် နှစ်ထပ်ချိတ်ဆက်မှု",
            "စင်္ကြားချိတ်ဆက်မှုသာ",
            "ကာဗွန်အက်တမ် မပါဝင်ခြင်း",
            "နိုက်ထရိုဂျင်အက်တမ်များ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A monohybrid cross Aa x Aa produces a phenotype ratio of...",
          questionMy:
              "Monohybrid cross Aa x Aa သည် မည်သည့် phenotype အချိုးကို ထုတ်ပေးသနည်း။",
          optionsEn: [
            "3 dominant to 1 recessive",
            "1 dominant to 3 recessive",
            "All dominant",
            "All recessive",
          ],
          optionsMy: [
            "Dominant ၃ ခုလျှင် recessive ၁ ခု",
            "Dominant ၁ ခုလျှင် recessive ၃ ခု",
            "Dominant အားလုံး",
            "Recessive အားလုံး",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Natural selection changes how common an allele is by favouring...",
          questionMy:
              "သဘာဝရွေးချယ်မှုသည် မည်သည့်အရာကို ထောက်ခံခြင်းဖြင့် allele ၏ ရေတိုးအညွှန်းကို ပြောင်းလဲပေးသနည်း။",
          optionsEn: [
            "Individuals better suited to survive and reproduce",
            "Only the largest individuals",
            "Only individuals bred in laboratories",
            "Random individuals with no pattern",
          ],
          optionsMy: [
            "ရှင်သန်ကာ မျိုးပွားရန် ပို၍သင့်လျော်သော လူတစ်ဦးချင်းစီ",
            "အကြီးဆုံးလူတစ်ဦးချင်းစီသာ",
            "ဓာတ်ခွဲခန်းတွင် မွေးမြူထားသော လူတစ်ဦးချင်းစီသာ",
            "ပုံစံမရှိသော ကျပန်းလူတစ်ဦးချင်းစီ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 8: "Air, Water and Organic Chemistry" (Weeks 29-32)
// =====================================================================

const CourseTermDef igcseCombinedScienceTerm8 = CourseTermDef(
  id: "course-igcse-combsci-t8",
  termNumber: 8,
  titleEn: "Air, Water and Organic Chemistry",
  titleMy: "လေထု၊ ရေထုနှင့် အော်ဂဲနစ်ဓာတုဗေဒ",
  certificateTitleEn: "Air, Water and Organic Chemistry",
  certificateTitleMy: "လေထု၊ ရေထုနှင့် အော်ဂဲနစ်ဓာတုဗေဒ",
  weeks: [
    _igcseCombSciWeek29,
    _igcseCombSciWeek30,
    _igcseCombSciWeek31,
    _igcseCombSciWeek32,
  ],
);
