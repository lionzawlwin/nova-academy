// File: ai_data_bridge/_generated/igcse_combined_science_term5.dart
// IGCSE Combined Science -- Term 5: "Chemistry - Acids, Bases and
// Periodic Table" (Weeks 17-20), authored from the corrected weekly
// topic map in ai_data_bridge/igcse_combined_science_all_terms.dart.
// Staging artifact only -- not yet wired into course_pathway_bank.dart's
// Grade.igcse pathway. Follows the exact DailyLessonDef/CourseWeekDef/
// CourseTermDef schema and id/xp conventions established by Terms 1-4
// (igcse_combined_science_term1.dart through
// igcse_combined_science_term4.dart) and _secondary3SciencePathway,
// including its rotating cast of named Myanmar-student protagonists
// (one per week's reading passage, not a single fixed character).
//
// Week 17 (Acids, Bases, and Salts): properties of acids and alkalis,
// neutralisation, preparation of salts. Week 18 (The Periodic Table):
// Group I alkali metals, Group VII halogens, noble gases. Week 19
// (Properties and Reactivity of Metals): the reactivity series,
// extraction of metals, alloys. Week 20 (Capstone -- Inorganic
// Chemistry Practical Lab): salt preparation, metal displacement tests,
// and identification of unknown ions, mirroring IGCSE assessment
// standards.

import 'package:nova_academy/features/lessons/course_pathway_bank.dart';
import 'package:nova_academy/features/lessons/interactive_content_models.dart';
import 'package:nova_academy/features/lessons/mock_quiz_data.dart';

// =====================================================================
// Week 17: "Acids, Bases, and Salts"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek17 = CourseWeekDef(
  id: "course-igcse-combsci-w17",
  weekNumber: 17,
  titleEn: "Acids, Bases, and Salts",
  titleMy: "အက်ဆစ်၊ ဘေ့စ်နှင့် ဆားများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w17-d1",
      dayNumber: 1,
      titleEn: "Acids, Bases and Neutralisation Quiz",
      titleMy: "အက်ဆစ်၊ ဘေ့စ်နှင့် အာနုမှုချေခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "An acid has a pH value that is...",
          questionMy: "အက်ဆစ်တစ်ခု၏ pH တန်ဖိုးသည် မည်သို့ရှိသနည်း။",
          optionsEn: [
            "Less than 7",
            "Greater than 7",
            "Exactly 7",
            "Always negative",
          ],
          optionsMy: ["7 ထက်နည်း", "7 ထက်များ", "7 အတိအကျ", "အမြဲတမ်း အနုတ်"],
          correctIndex: 0,
          hintsEn: [
            "The pH scale runs from 0 to 14, with 7 in the middle marking neutral.",
            "Lemon juice and vinegar, both acidic, have pH values well below 7.",
          ],
          hintsMy: [
            "pH စကေးသည် 0 မှ 14 အထိ ရှိပြီး 7 သည် အလယ်တွင် ကြားနေအဖြစ် အမှတ်အသားပြုသည်။",
            "ရှားလိမ္မော်ရည်နှင့် ရှာလကာရည် နှစ်ခုစလုံးသည် အက်ဆစ်ဓာတ်ရှိပြီး pH တန်ဖိုး 7 ထက် များစွာနိမ့်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "When an acid reacts with an alkali, the products are...",
          questionMy:
              "အက်ဆစ်တစ်ခုသည် အာလကာလိ (alkali) တစ်ခုနှင့် ဓာတ်ပြုသောအခါ ထွက်ကုန်များမှာ အဘယ်နည်း။",
          optionsEn: [
            "A salt and water",
            "Only carbon dioxide",
            "Only hydrogen gas",
            "A metal and oxygen",
          ],
          optionsMy: [
            "ဆားတစ်ခုနှင့် ရေ",
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်သာ",
            "ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့သာ",
            "သတ္တုတစ်ခုနှင့် အောက်ဆီဂျင်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This reaction is called neutralisation -- the acid and alkali cancel out each other's properties.",
            "Hydrochloric acid + sodium hydroxide -> sodium chloride (a salt) + water is the classic example.",
          ],
          hintsMy: [
            "ဤတုံ့ပြန်မှုကို အာနုမှုချေခြင်း (neutralisation) ဟုခေါ်သည် -- အက်ဆစ်နှင့် အာလကာလိသည် တစ်ခုနှင့်တစ်ခု၏ ဂုဏ်သတ္တိများကို ဖျက်သိမ်းပေးသည်။",
            "ဟိုက်ဒရိုကလိုရစ်အက်စစ် + ဆိုဒီယမ်ဟိုက်ဒရောက်ဆိုဒ် -> ဆိုဒီယမ်ကလိုရိုက် (ဆား) + ရေ သည် ဂန္တဝင်ဥပမာဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "When an acid reacts with a reactive metal, one product is always...",
          questionMy:
              "အက်ဆစ်တစ်ခုသည် ဓာတ်ပြုနိုင်စွမ်းရှိသော သတ္တုတစ်ခုနှင့် ဓာတ်ပြုသောအခါ ထွက်ကုန်တစ်ခုမှာ အမြဲတမ်း အဘယ်နည်း။",
          optionsEn: [
            "Hydrogen gas",
            "Oxygen gas",
            "Nitrogen gas",
            "Ammonia gas",
          ],
          optionsMy: [
            "ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့",
            "အောက်ဆီဂျင်ဓာတ်ငွေ့",
            "နိုက်ထရိုဂျင်ဓာတ်ငွေ့",
            "အမိုးနီးယားဓာတ်ငွေ့",
          ],
          correctIndex: 0,
          hintsEn: [
            "Acid + metal -> salt + hydrogen is the general word equation for this type of reaction.",
            "A lit splint gives a distinctive squeaky pop when placed near the test tube, confirming hydrogen gas.",
          ],
          hintsMy: [
            "အက်ဆစ် + သတ္တု -> ဆား + ဟိုက်ဒရိုဂျင် သည် ဤတုံ့ပြန်မှုအမျိုးအစားအတွက် ယေဘုယျ စာလုံးညီမျှခြင်းဖြစ်သည်။",
            "မီးလောင်နေသော ချစ်ချင်တစ်ချောင်းကို စမ်းသပ်ပြွန်အနီးတွင် ချထားလိုက်ပါက ထူးခြားသော \"ပိုက်\" အသံတစ်ခု ထွက်ပြီး ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့ ရှိကြောင်း အတည်ပြုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which method is typically used to prepare a soluble salt from an insoluble base (like copper oxide)?",
          questionMy:
              "မပျော်ဝင်နိုင်သော ဘေ့စ် (ကွန်ပါအောက်ဆိုဒ်ကဲ့သို့) မှ ပျော်ဝင်နိုင်သောဆားကို ပြင်ဆင်ရန် များသောအားဖြင့် မည်သည့်နည်းလမ်းကို အသုံးပြုသနည်း။",
          optionsEn: [
            "Add excess base to warm acid, filter off the unreacted excess, then evaporate and crystallise the solution",
            "Simply mix the two solids together with no heating",
            "Boil the acid alone with no base at all",
            "Freeze the acid until it turns solid",
          ],
          optionsMy: [
            "ပူနွေးသောအက်ဆစ်ထဲသို့ ဘေ့စ်ပိုလျှံအောင်ထည့်ပြီး၊ မတုံ့ပြန်ကျန်ရှိသော ပိုလျှံသောအရာကို ရေစစ်ကာ၊ ဒြပ်ရည်ကို အငွေ့ပျံစေပြီး ပုလင်းဖြစ်စေခြင်း",
            "အပူမပေးဘဲ အစိုင်အခဲနှစ်ခုကို ရိုးရိုးရှင်းရှင်း ရောစပ်ခြင်း",
            "ဘေ့စ်မထည့်ဘဲ အက်ဆစ်တစ်ခုတည်းကို ပြုတ်ခြင်း",
            "အက်ဆစ်ကို အစိုင်အခဲဖြစ်သည်အထိ အေးခဲစေခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Using excess base ensures all the acid is used up, so the leftover solid excess is simply filtered away.",
            "Evaporating and cooling the remaining salt solution allows salt crystals to form.",
          ],
          hintsMy: [
            "ဘေ့စ်ကို ပိုလျှံအောင်အသုံးပြုခြင်းက အက်ဆစ်အားလုံး ကုန်ဆုံးကြောင်း သေချာစေပြီး ကျန်ရှိသော အစိုင်အခဲပိုလျှံကို ရိုးရိုးရှင်းရှင်း ရေစစ်ဖယ်ရှားနိုင်သည်။",
            "ကျန်ရှိသော ဆားဒြပ်ရည်ကို အငွေ့ပျံပြီး အအေးခံခြင်းက ဆားပုလင်းများ ဖြစ်ပေါ်စေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w17-d2",
      dayNumber: 2,
      titleEn: "Match the Acids and Bases Vocabulary",
      titleMy: "အက်ဆစ်နှင့် ဘေ့စ်ဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w17-dm-1",
          termEn: "Acid",
          termMy: "အက်ဆစ် (Acid)",
          matchEn: "A substance with a pH below 7 that turns litmus red.",
          matchMy:
              "ဘလစ်မတ်စ် (litmus) ကို အနီရောင်ပြောင်းစေသော pH 7 အောက်ရှိ ပစ္စည်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w17-dm-2",
          termEn: "Alkali",
          termMy: "အာလကာလိ (Alkali)",
          matchEn: "A soluble base with a pH above 7 that turns litmus blue.",
          matchMy:
              "ဘလစ်မတ်စ်ကို အပြာရောင်ပြောင်းစေသော pH 7 အထက်ရှိ ပျော်ဝင်နိုင်သောဘေ့စ်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w17-dm-3",
          termEn: "Neutralisation",
          termMy: "အာနုမှုချေခြင်း (Neutralisation)",
          matchEn:
              "The reaction of an acid with a base, producing a salt and water.",
          matchMy: "ဆားနှင့် ရေထွက်ကုန်ရသည့် အက်ဆစ်နှင့် ဘေ့စ်၏ တုံ့ပြန်မှု။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w17-dm-4",
          termEn: "Salt",
          termMy: "ဆား (Salt)",
          matchEn:
              "A compound formed when an acid's hydrogen is replaced by a metal or ammonium ion.",
          matchMy:
              "အက်ဆစ်၏ ဟိုက်ဒရိုဂျင်ကို သတ္တု (သို့) အမိုးနီယမ်အိုင်းယွန်းဖြင့် အစားထိုးသောအခါ ဖြစ်ပေါ်လာသည့် ဒြပ်ပေါင်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w17-dm-5",
          termEn: "Indicator",
          termMy: "ညွှန်းပစ္စည်း (Indicator)",
          matchEn:
              "A substance that changes colour depending on whether a solution is acidic or alkaline.",
          matchMy:
              "ဒြပ်ရည်တစ်ခုသည် အက်ဆစ်ဖြစ်သည် (သို့) အာလကာလိဖြစ်သည်ဆိုသည်ပေါ် မူတည်၍ အရောင်ပြောင်းလဲသော ပစ္စည်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w17-d3",
      dayNumber: 3,
      titleEn: "Sort: Acid, Alkali, or Neutral?",
      titleMy: "စီစစ်ကြမည် - အက်ဆစ်၊ အာလကာလိ၊ (သို့) ကြားနေ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Acid", "Alkali", "Neutral"],
        bucketsMy: ["အက်ဆစ်", "အာလကာလိ", "ကြားနေ"],
        items: [
          SortingItem(
            id: "igcsecs-w17-sort-1",
            labelEn: "Lemon juice",
            labelMy: "ရှားလိမ္မော်ရည်",
            correctBucketEn: "Acid",
            correctBucketMy: "အက်ဆစ်",
          ),
          SortingItem(
            id: "igcsecs-w17-sort-2",
            labelEn: "Vinegar",
            labelMy: "ရှာလကာရည်",
            correctBucketEn: "Acid",
            correctBucketMy: "အက်ဆစ်",
          ),
          SortingItem(
            id: "igcsecs-w17-sort-3",
            labelEn: "Hydrochloric acid",
            labelMy: "ဟိုက်ဒရိုကလိုရစ်အက်စစ်",
            correctBucketEn: "Acid",
            correctBucketMy: "အက်ဆစ်",
          ),
          SortingItem(
            id: "igcsecs-w17-sort-4",
            labelEn: "Soap solution",
            labelMy: "ဆပ်ပြာရည်",
            correctBucketEn: "Alkali",
            correctBucketMy: "အာလကာလိ",
          ),
          SortingItem(
            id: "igcsecs-w17-sort-5",
            labelEn: "Sodium hydroxide solution",
            labelMy: "ဆိုဒီယမ်ဟိုက်ဒရောက်ဆိုဒ်ဒြပ်ရည်",
            correctBucketEn: "Alkali",
            correctBucketMy: "အာလကာလိ",
          ),
          SortingItem(
            id: "igcsecs-w17-sort-6",
            labelEn: "Ammonia solution",
            labelMy: "အမိုးနီးယားဒြပ်ရည်",
            correctBucketEn: "Alkali",
            correctBucketMy: "အာလကာလိ",
          ),
          SortingItem(
            id: "igcsecs-w17-sort-7",
            labelEn: "Pure water",
            labelMy: "သန့်ရေ",
            correctBucketEn: "Neutral",
            correctBucketMy: "ကြားနေ",
          ),
          SortingItem(
            id: "igcsecs-w17-sort-8",
            labelEn: "Sodium chloride solution (table salt in water)",
            labelMy: "ဆိုဒီယမ်ကလိုရိုက်ဒြပ်ရည် (ရေထဲတွင် ဆားအရသာ)",
            correctBucketEn: "Neutral",
            correctBucketMy: "ကြားနေ",
          ),
          SortingItem(
            id: "igcsecs-w17-sort-9",
            labelEn: "Sugar solution",
            labelMy: "သကြားဒြပ်ရည်",
            correctBucketEn: "Neutral",
            correctBucketMy: "ကြားနေ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w17-d4",
      dayNumber: 4,
      titleEn: "Reading: Wutt Hmone's Copper Sulfate Crystals",
      titleMy: "စာဖတ်ခြင်း - ဝတ်မွန်၏ ကွန်ပါဆာလဖိတ် ပုလင်းများ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Wutt Hmone's Copper Sulfate Crystals",
        titleMy: "ဝတ်မွန်၏ ကွန်ပါဆာလဖိတ် ပုလင်းများ",
        passageEn:
            "For her salt preparation practical, Wutt Hmone was tasked with preparing pure copper sulfate crystals from insoluble black copper oxide and dilute sulfuric acid. She began by warming a measured volume of sulfuric acid gently, then adding copper oxide powder a small spoonful at a time, stirring after each addition.\n\nAs the reaction proceeded, the black copper oxide powder gradually dissolved and the solution turned a distinctive blue colour, confirming copper sulfate was forming. Wutt Hmone kept adding copper oxide until a small amount of unreacted black powder remained undissolved at the bottom, even after further stirring -- this told her the acid had been fully used up, and any copper oxide added beyond this point would simply not react further.\n\nShe then filtered the mixture to remove the excess unreacted copper oxide, leaving behind a clear blue copper sulfate solution. Wutt Hmone gently heated this filtrate in an evaporating basin to reduce its volume, then left it to cool slowly and undisturbed overnight. By the next morning, distinct blue crystals of copper sulfate had formed at the bottom of the basin. Her teacher explained that using excess copper oxide (rather than excess acid) was the deliberate choice here, since it meant the final crystals would be free of any leftover acid -- filtering removes solid excess easily, but there is no simple way to filter out dissolved excess acid from the final salt solution.",
        passageMy:
            "ဝတ်မွန်၏ ဆားပြင်ဆင်ခြင်း လက်တွေ့စမ်းသပ်မှုအတွက် သူမအား မပျော်ဝင်နိုင်သော အနက်ရောင် ကွန်ပါအောက်ဆိုဒ်နှင့် ရေဖျန်းထားသော ဆာလဖျူးရစ်အက်စစ်မှ စင်ကြယ်သော ကွန်ပါဆာလဖိတ်ပုလင်းများ ပြင်ဆင်ရန် တာဝန်ပေးထားခဲ့သည်။ သူမသည် တိုင်းတာထားသော ဆာလဖျူးရစ်အက်စစ်ပမာဏကို ညင်သာစွာ ပူနွေးအောင်လုပ်ခြင်းဖြင့် စတင်ခဲ့ပြီး၊ ထို့နောက် ကွန်ပါအောက်ဆိုဒ်မှုန့်ကို ဇွန်းငယ်တစ်ဇွန်းစီ ခုတစ်ခုချင်းထည့်ကာ ထည့်ပြီးတိုင်း လှော်ပေးခဲ့သည်။\n\nတုံ့ပြန်မှု ဆက်လက်ဖြစ်ပေါ်နေစဉ် အနက်ရောင် ကွန်ပါအောက်ဆိုဒ်မှုန့်သည် တဖြည်းဖြည်း ပျော်ဝင်သွားပြီး ဒြပ်ရည်သည် ကွန်ပါဆာလဖိတ် ဖြစ်ပေါ်လာကြောင်း အတည်ပြုသော ထူးခြားသည့် အပြာရောင်သို့ ပြောင်းလဲသွားခဲ့သည်။ ထပ်ခါလှော်ပေးသည့်တိုင် အနက်ရောင်မှုန့် အနည်းငယ် မပျော်ဝင်ဘဲ အောက်ခြေတွင် ကျန်ရှိနေသည်အထိ ဝတ်မွန်သည် ကွန်ပါအောက်ဆိုဒ် ဆက်လက်ထည့်ခဲ့သည် -- ၎င်းက အက်စစ်ကုန်ဆုံးပြီးဖြစ်ကြောင်း သူမကို ပြောပြပြီး၊ ဤအမှတ်ထက် ထပ်ထည့်လိုက်သော ကွန်ပါအောက်ဆိုဒ်ကို ရိုးရိုးရှင်းရှင်း ထပ်မတုံ့ပြန်တော့ကြောင်း ဖြစ်သည်။\n\nထို့နောက် သူမသည် မတုံ့ပြန်သော ပိုလျှံကွန်ပါအောက်ဆိုဒ်ကို ဖယ်ရှားရန် ရောစပ်ဒြပ်ရည်ကို ရေစစ်ခဲ့ပြီး၊ ကျန်ရစ်သည်မှာ ကြည်လင်သော အပြာရောင် ကွန်ပါဆာလဖိတ်ဒြပ်ရည်ဖြစ်သည်။ ဝတ်မွန်သည် ဤစစ်ထုတ်ရည်ကို အငွေ့ပျံအိုးထဲတွင် ညင်သာစွာ ပူပေးကာ ပမာဏကို လျှော့ချခဲ့ပြီး၊ ထို့နောက် တစ်ညလုံး အနှောင့်အယှက်မရှိစွာ ဖြည်းညင်းစွာ အအေးခံစေခဲ့သည်။ နောက်နေ့မနက်တွင် ထင်ရှားသော အပြာရောင် ကွန်ပါဆာလဖိတ်ပုလင်းများ အိုး၏ အောက်ခြေတွင် ဖြစ်ပေါ်လာခဲ့သည်။ သူမ၏ ဆရာမက (ပိုလျှံအက်စစ်အစား) ပိုလျှံကွန်ပါအောက်ဆိုဒ် အသုံးပြုခြင်းသည် ဤနေရာတွင် ရည်ရွယ်ချက်ရှိရှိ ရွေးချယ်မှုဖြစ်ကြောင်း ရှင်းပြခဲ့သည်၊ အဘယ်ကြောင့်ဆိုသော် ၎င်းက နောက်ဆုံးပုလင်းများသည် ကျန်ရစ်အက်စစ် လုံးဝကင်းစင်ကြောင်း ဆိုလိုသောကြောင့်ဖြစ်သည် -- ရေစစ်ခြင်းက အစိုင်အခဲပိုလျှံကို လွယ်ကူစွာ ဖယ်ရှားနိုင်သော်လည်း၊ ပျော်ဝင်နေသော ပိုလျှံအက်စစ်ကို နောက်ဆုံးဆားဒြပ်ရည်မှ ရေစစ်ဖယ်ရှားရန် ရိုးရှင်းသောနည်းလမ်း မရှိပါ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "How did Wutt Hmone know the acid had been fully used up?",
            questionMy:
                "အက်စစ် ကုန်ဆုံးပြီးဖြစ်ကြောင်း ဝတ်မွန် မည်သို့ သိရှိခဲ့သနည်း။",
            optionsEn: [
              "Some black copper oxide powder remained undissolved even after stirring",
              "The solution turned completely colourless",
              "The mixture boiled over the top of the flask",
              "The solution suddenly turned red",
            ],
            optionsMy: [
              "လှော်ပေးသည့်တိုင် အနက်ရောင်ကွန်ပါအောက်ဆိုဒ်မှုန့် အနည်းငယ် မပျော်ဝင်ဘဲ ကျန်ရှိနေခြင်း",
              "ဒြပ်ရည် အရောင်လုံးဝကင်းသွားခြင်း",
              "ရောစပ်ဒြပ်ရည် ဖန်ခွက်ထိပ်မှ ဖျန်းထွက်ခြင်း",
              "ဒြပ်ရည် ရုတ်တရက် အနီရောင်ပြောင်းသွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of when Wutt Hmone stopped adding copper oxide.",
              "Once excess solid remains undissolved despite stirring, that's the sign the acid has all reacted.",
            ],
            hintsMy: [
              "ဝတ်မွန် ကွန်ပါအောက်ဆိုဒ် ထည့်ခြင်းကို မည်သည့်အချိန်တွင် ရပ်တန့်ခဲ့ကြောင်း ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "လှော်ပေးသည့်တိုင် ပိုလျှံအစိုင်အခဲ မပျော်ဝင်ဘဲကျန်ရှိပါက ၎င်းသည် အက်စစ် အားလုံးတုံ့ပြန်ပြီးဖြစ်ကြောင်း လက္ခဏာဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Wutt Hmone filter the mixture before evaporating it?",
            questionMy:
                "ဝတ်မွန်သည် ရောစပ်ဒြပ်ရည်ကို အငွေ့ပျံမပေးမီ အဘယ်ကြောင့် ရေစစ်ခဲ့သနည်း။",
            optionsEn: [
              "To remove the excess unreacted copper oxide",
              "To add extra colour to the solution",
              "To remove all the water immediately",
              "To make the solution more acidic",
            ],
            optionsMy: [
              "ပိုလျှံမတုံ့ပြန်သော ကွန်ပါအောက်ဆိုဒ်ကို ဖယ်ရှားရန်",
              "ဒြပ်ရည်ထဲသို့ အရောင်အပို ထည့်ရန်",
              "ရေအားလုံးကို ချက်ချင်းဖယ်ရှားရန်",
              "ဒြပ်ရည်ကို ပို၍ အက်ဆစ်ဓာတ်ရှိစေရန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of the filtering step.",
              "Filtering separates the leftover solid copper oxide from the dissolved copper sulfate solution.",
            ],
            hintsMy: [
              "ရေစစ်သည့်အဆင့်ကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ရေစစ်ခြင်းက ကျန်ရစ်အစိုင်အခဲ ကွန်ပါအောက်ဆိုဒ်ကို ပျော်ဝင်နေသော ကွန်ပါဆာလဖိတ်ဒြပ်ရည်မှ ခွဲထုတ်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why was excess copper oxide used, rather than excess acid?",
            questionMy:
                "ပိုလျှံအက်စစ်မဟုတ်ဘဲ ပိုလျှံကွန်ပါအောက်ဆိုဒ်ကို အဘယ်ကြောင့် အသုံးပြုခဲ့သနည်း။",
            optionsEn: [
              "So the final crystals would be free of leftover dissolved acid, unlike solid excess which filters away easily",
              "Because copper oxide is much cheaper than acid",
              "Because acid cannot ever react with copper oxide",
              "Because it made the crystals a different colour",
            ],
            optionsMy: [
              "အစိုင်အခဲပိုလျှံသည် လွယ်ကူစွာ ရေစစ်ထွက်နိုင်သော်လည်း၊ နောက်ဆုံးပုလင်းများသည် ကျန်ရစ်ပျော်ဝင်အက်စစ် ကင်းစင်စေရန်",
              "ကွန်ပါအောက်ဆိုဒ်သည် အက်စစ်ထက် များစွာ ဈေးသက်သာသောကြောင့်",
              "အက်စစ်သည် ကွန်ပါအောက်ဆိုဒ်နှင့် လုံးဝ ဓာတ်မပြုနိုင်သောကြောင့်",
              "ပုလင်းများကို မတူညီသောအရောင် ဖြစ်စေသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "There is no simple way to filter dissolved excess acid out of a solution, unlike solid excess.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အစိုင်အခဲပိုလျှံနှင့်မတူဘဲ ပျော်ဝင်နေသော ပိုလျှံအက်စစ်ကို ဒြပ်ရည်မှ ရေစစ်ဖယ်ရှားရန် ရိုးရှင်းသောနည်းလမ်း မရှိပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "How were the final copper sulfate crystals formed after filtering?",
            questionMy:
                "ရေစစ်ပြီးနောက် နောက်ဆုံးကွန်ပါဆာလဖိတ်ပုလင်းများကို မည်သို့ ဖြစ်ပေါ်စေခဲ့သနည်း။",
            optionsEn: [
              "By heating the filtrate to reduce volume, then cooling it slowly overnight",
              "By adding more copper oxide",
              "By freezing the solution instantly",
              "By adding more sulfuric acid",
            ],
            optionsMy: [
              "စစ်ထုတ်ရည်ကို ပူပေးပြီး ပမာဏလျှော့ချကာ ထို့နောက် တစ်ညလုံး ဖြည်းညင်းစွာ အအေးခံခြင်းဖြင့်",
              "ကွန်ပါအောက်ဆိုဒ် ထပ်ထည့်ခြင်းဖြင့်",
              "ဒြပ်ရည်ကို ချက်ချင်း အေးခဲစေခြင်းဖြင့်",
              "ဆာလဖျူးရစ်အက်စစ် ထပ်ထည့်ခြင်းဖြင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of the evaporation and cooling steps.",
              "Slow cooling gives crystals more time to form neatly, rather than forming quickly and messily.",
            ],
            hintsMy: [
              "အငွေ့ပျံခြင်းနှင့် အအေးခံခြင်းအဆင့်များကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဖြည်းညင်းစွာအအေးခံခြင်းက ပုလင်းများကို လျင်မြန်ပြီး ရှုပ်ထွေးစွာဖြစ်ခြင်းအစား သေချာစွာဖြစ်ပေါ်ရန် အချိန်ပိုပေးသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w17-d5",
      dayNumber: 5,
      titleEn: "Week 17 Recap: Acids, Bases, and Salts",
      titleMy: "အပတ်စဉ် ၁၇ ပြန်လည်သုံးသပ်ခြင်း - အက်ဆစ်၊ ဘေ့စ်နှင့် ဆားများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "An acid has a pH...",
          questionMy: "အက်ဆစ်တစ်ခု၏ pH မှာ မည်သို့ရှိသနည်း။",
          optionsEn: ["Below 7", "Above 7", "Exactly 7", "Undefined"],
          optionsMy: ["7 အောက်", "7 အထက်", "7 အတိအကျ", "သတ်မှတ်မထားပါ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Neutralisation produces a salt and...",
          questionMy: "အာနုမှုချေခြင်းက ဆားနှင့် မည်သည့်အရာကို ထုတ်လုပ်သနည်း။",
          optionsEn: ["Water", "Oxygen only", "Nitrogen only", "Nothing else"],
          optionsMy: [
            "ရေ",
            "အောက်ဆီဂျင်သာ",
            "နိုက်ထရိုဂျင်သာ",
            "အခြားမည်သည့်အရာမျှ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Acid reacting with a reactive metal produces salt and...",
          questionMy:
              "ဓာတ်ပြုနိုင်စွမ်းရှိသော သတ္တုနှင့် အက်ဆစ်တုံ့ပြန်မှုက ဆားနှင့် မည်သည့်အရာကို ထုတ်လုပ်သနည်း။",
          optionsEn: [
            "Hydrogen gas",
            "Oxygen gas",
            "Chlorine gas",
            "Nitrogen gas",
          ],
          optionsMy: [
            "ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့",
            "အောက်ဆီဂျင်ဓာတ်ငွေ့",
            "ကလိုရင်းဓာတ်ငွေ့",
            "နိုက်ထရိုဂျင်ဓာတ်ငွေ့",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Using excess insoluble base in salt preparation ensures the final crystals are free of...",
          questionMy:
              "ဆားပြင်ဆင်ခြင်းတွင် ပိုလျှံမပျော်ဝင်သောဘေ့စ် အသုံးပြုခြင်းက နောက်ဆုံးပုလင်းများ မည်သည့်အရာ ကင်းစင်စေကြောင်း သေချာစေသနည်း။",
          optionsEn: [
            "Leftover dissolved acid",
            "All water",
            "All colour",
            "All mass",
          ],
          optionsMy: [
            "ကျန်ရစ်ပျော်ဝင်အက်စစ်",
            "ရေအားလုံး",
            "အရောင်အားလုံး",
            "အလေးချိန်အားလုံး",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 18: "The Periodic Table"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek18 = CourseWeekDef(
  id: "course-igcse-combsci-w18",
  weekNumber: 18,
  titleEn: "The Periodic Table",
  titleMy: "ဒြပ်စင်အလှည့်ကျဇယား (Periodic Table)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w18-d1",
      dayNumber: 1,
      titleEn: "Groups and Trends Quiz",
      titleMy: "အုပ်စုများနှင့် ခြေရာများ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "As you go down Group I (the alkali metals), reactivity...",
          questionMy:
              "Group I (အာလကာလိသတ္တုများ) တွင် အောက်သို့သွားလေလေ ဓာတ်ပြုနိုင်စွမ်းသည် မည်သို့ ဖြစ်လာသနည်း။",
          optionsEn: [
            "Increases",
            "Decreases",
            "Stays exactly the same",
            "Becomes zero",
          ],
          optionsMy: [
            "တိုးလာသည်",
            "လျော့ကျလာသည်",
            "အတိအကျ တူညီနေသည်",
            "သုညဖြစ်သွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Potassium (further down the group) reacts more violently with water than lithium (near the top).",
            "Going down the group, the outer electron is further from the nucleus and more easily lost, making reactions faster.",
          ],
          hintsMy: [
            "ပိုတက်စီယမ် (အုပ်စု၏ အောက်ပိုင်း) သည် လီသီယမ် (ထိပ်ပိုင်းအနီး) ထက် ရေနှင့် ပိုပြင်းထန်စွာ ဓာတ်ပြုသည်။",
            "အုပ်စု၏ အောက်ပိုင်းသို့သွားလေလေ အပြင်ဆုံးအီလက်ထရွန်သည် နျူကလိယပ်စ်နှင့် ပိုဝေးလေ၍ ပိုလွယ်ကူစွာ ဆုံးရှုံးသဖြင့် တုံ့ပြန်မှု ပိုမြန်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "As you go down Group VII (the halogens), reactivity...",
          questionMy:
              "Group VII (ဟယ်လိုဂျင်များ) တွင် အောက်သို့သွားလေလေ ဓာတ်ပြုနိုင်စွမ်းသည် မည်သို့ ဖြစ်လာသနည်း။",
          optionsEn: [
            "Decreases",
            "Increases",
            "Stays exactly the same",
            "Becomes negative",
          ],
          optionsMy: [
            "လျော့ကျလာသည်",
            "တိုးလာသည်",
            "အတိအကျ တူညီနေသည်",
            "အနုတ်ဖြစ်သွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This trend is the opposite of Group I, since halogens gain an electron to react rather than lose one.",
            "Chlorine (higher up) is more reactive than iodine (further down), and can displace it from a solution.",
          ],
          hintsMy: [
            "ဟယ်လိုဂျင်များသည် ဓာတ်ပြုရန် အီလက်ထရွန်တစ်ခု ဆုံးရှုံးမည့်အစား ရရှိသောကြောင့် ဤခြေရာသည် Group I နှင့် ဆန့်ကျင်ဘက်ဖြစ်သည်။",
            "ကလိုရင်း (အထက်ပိုင်း) သည် အိုင်အိုဒင်း (အောက်ပိုင်း) ထက် ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းပြီး ဒြပ်ရည်တစ်ခုမှ ၎င်းကို အစားထိုးနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Noble gases (Group 0 / VIII) are extremely unreactive because their atoms have...",
          questionMy:
              "နိုဘယ်ဓာတ်ငွေ့များ (Group 0 / VIII) သည် ၎င်းတို့၏ အက်တမ်များ၌ မည်သည့်အချက်ရှိသောကြောင့် အလွန်ဓာတ်ပြုနိုင်စွမ်းနည်းသနည်း။",
          optionsEn: [
            "A full outer electron shell",
            "No electrons at all",
            "No protons at all",
            "Only one electron shell always empty",
          ],
          optionsMy: [
            "အပြည့်ရှိသော အပြင်ဆုံးအီလက်ထရွန်အခွံ",
            "အီလက်ထရွန် လုံးဝမရှိခြင်း",
            "ပရိုတွန် လုံးဝမရှိခြင်း",
            "အမြဲတမ်း အလွတ်ဖြစ်နေသော အီလက်ထရွန်အခွံတစ်ခုတည်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "A full outer shell means the atom has no tendency to gain or lose electrons, so it rarely reacts.",
            "This is why noble gases like helium and neon exist as single, unreactive atoms, not needing to bond with anything.",
          ],
          hintsMy: [
            "အပြည့်ရှိသော အပြင်ဆုံးအခွံသည် အက်တမ်တွင် အီလက်ထရွန်ရရှိရန် (သို့) ဆုံးရှုံးရန် ဆန္ဒမရှိကြောင်း ဆိုလိုပြီး ရှားရှားပါးပါးသာ ဓာတ်ပြုသည်။",
            "ဤအကြောင်းကြောင့်ပင် ဟီလီယမ်နှင့် နီယွန်ကဲ့သို့သော နိုဘယ်ဓာတ်ငွေ့များသည် မည်သည့်အရာနှင့်မျှ ချိတ်ဆက်ရန်မလိုဘဲ တစ်ခုတည်းသော ဓာတ်ပြုနိုင်စွမ်းမရှိသော အက်တမ်များအဖြစ် ရှိနေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the periodic table, elements in the same group have the same number of...",
          questionMy:
              "ဒြပ်စင်အလှည့်ကျဇယားတွင် အုပ်စုတူ ဒြပ်စင်များသည် မည်သည့်အရေအတွက် တူညီကြသနည်း။",
          optionsEn: [
            "Electrons in their outer shell",
            "Total protons",
            "Total neutrons",
            "Total mass exactly",
          ],
          optionsMy: [
            "အပြင်ဆုံးအခွံရှိ အီလက်ထရွန်",
            "ပရိုတွန်စုစုပေါင်း",
            "နျူထရွန်စုစုပေါင်း",
            "အလေးချိန် စုစုပေါင်း အတိအကျ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is exactly why elements in the same group share similar chemical properties -- their outer shell arrangement matches.",
            "Group I elements all have 1 outer electron; Group VII elements all have 7 outer electrons.",
          ],
          hintsMy: [
            "ဤအကြောင်းကြောင့်ပင် အုပ်စုတူ ဒြပ်စင်များသည် ဓာတုဂုဏ်သတ္တိဆင်တူကြသည် -- ၎င်းတို့၏ အပြင်ဆုံးအခွံစီစဉ်ပုံ ကိုက်ညီကြသည်။",
            "Group I ဒြပ်စင်များအားလုံးတွင် အပြင်ဆုံးအီလက်ထရွန် ၁ ခုရှိပြီး; Group VII ဒြပ်စင်များအားလုံးတွင် အပြင်ဆုံးအီလက်ထရွန် ၇ ခု ရှိသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w18-d2",
      dayNumber: 2,
      titleEn: "Match the Periodic Table Vocabulary",
      titleMy: "ဒြပ်စင်အလှည့်ကျဇယားဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w18-dm-1",
          termEn: "Alkali Metal",
          termMy: "အာလကာလိသတ္တု (Alkali Metal)",
          matchEn:
              "A Group I metal that becomes more reactive further down the group.",
          matchMy:
              "အုပ်စု၏ အောက်ပိုင်းသို့သွားလေလေ ဓာတ်ပြုနိုင်စွမ်း ပိုမြင့်လာသော Group I သတ္တု။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w18-dm-2",
          termEn: "Halogen",
          termMy: "ဟယ်လိုဂျင် (Halogen)",
          matchEn:
              "A Group VII non-metal that becomes less reactive further down the group.",
          matchMy:
              "အုပ်စု၏ အောက်ပိုင်းသို့သွားလေလေ ဓာတ်ပြုနိုင်စွမ်း ပိုနည်းလာသော Group VII အသတ္တု။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w18-dm-3",
          termEn: "Noble Gas",
          termMy: "နိုဘယ်ဓာတ်ငွေ့ (Noble Gas)",
          matchEn:
              "A Group 0 element with a full outer shell, so it is extremely unreactive.",
          matchMy:
              "အပြည့်ရှိသော အပြင်ဆုံးအခွံရှိသောကြောင့် အလွန်ဓာတ်ပြုနိုင်စွမ်းနည်းသော Group 0 ဒြပ်စင်။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w18-dm-4",
          termEn: "Group",
          termMy: "အုပ်စု (Group)",
          matchEn:
              "A vertical column of the periodic table; elements share the same number of outer electrons.",
          matchMy:
              "ဒြပ်စင်အလှည့်ကျဇယား၏ ဒေါင်လိုက်ကော်လံ; ဒြပ်စင်များသည် အပြင်ဆုံးအီလက်ထရွန်အရေအတွက် တူညီကြသည်။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w18-dm-5",
          termEn: "Period",
          termMy: "ကာလ (Period)",
          matchEn:
              "A horizontal row of the periodic table; elements share the same number of electron shells.",
          matchMy:
              "ဒြပ်စင်အလှည့်ကျဇယား၏ ရေပြင်ညီအတန်း; ဒြပ်စင်များသည် အီလက်ထရွန်အခွံအရေအတွက် တူညီကြသည်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w18-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Part of the Periodic Table?",
      titleMy: "စီစစ်ကြမည် - ဒြပ်စင်အလှည့်ကျဇယား၏ မည်သည့်အပိုင်းလဲ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Group I - Alkali Metal",
          "Group VII - Halogen",
          "Noble Gas",
        ],
        bucketsMy: [
          "Group I - အာလကာလိသတ္တု",
          "Group VII - ဟယ်လိုဂျင်",
          "နိုဘယ်ဓာတ်ငွေ့",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w18-sort-1",
            labelEn: "Lithium",
            labelMy: "လီသီယမ်",
            correctBucketEn: "Group I - Alkali Metal",
            correctBucketMy: "Group I - အာလကာလိသတ္တု",
          ),
          SortingItem(
            id: "igcsecs-w18-sort-2",
            labelEn: "Sodium",
            labelMy: "ဆိုဒီယမ်",
            correctBucketEn: "Group I - Alkali Metal",
            correctBucketMy: "Group I - အာလကာလိသတ္တု",
          ),
          SortingItem(
            id: "igcsecs-w18-sort-3",
            labelEn: "Potassium",
            labelMy: "ပိုတက်စီယမ်",
            correctBucketEn: "Group I - Alkali Metal",
            correctBucketMy: "Group I - အာလကာလိသတ္တု",
          ),
          SortingItem(
            id: "igcsecs-w18-sort-4",
            labelEn: "Fluorine",
            labelMy: "ဖလူးအိုရင်း",
            correctBucketEn: "Group VII - Halogen",
            correctBucketMy: "Group VII - ဟယ်လိုဂျင်",
          ),
          SortingItem(
            id: "igcsecs-w18-sort-5",
            labelEn: "Chlorine",
            labelMy: "ကလိုရင်း",
            correctBucketEn: "Group VII - Halogen",
            correctBucketMy: "Group VII - ဟယ်လိုဂျင်",
          ),
          SortingItem(
            id: "igcsecs-w18-sort-6",
            labelEn: "Bromine",
            labelMy: "ဘရိုမင်း",
            correctBucketEn: "Group VII - Halogen",
            correctBucketMy: "Group VII - ဟယ်လိုဂျင်",
          ),
          SortingItem(
            id: "igcsecs-w18-sort-7",
            labelEn: "Helium",
            labelMy: "ဟီလီယမ်",
            correctBucketEn: "Noble Gas",
            correctBucketMy: "နိုဘယ်ဓာတ်ငွေ့",
          ),
          SortingItem(
            id: "igcsecs-w18-sort-8",
            labelEn: "Neon",
            labelMy: "နီယွန်",
            correctBucketEn: "Noble Gas",
            correctBucketMy: "နိုဘယ်ဓာတ်ငွေ့",
          ),
          SortingItem(
            id: "igcsecs-w18-sort-9",
            labelEn: "Argon",
            labelMy: "အာဂွန်",
            correctBucketEn: "Noble Gas",
            correctBucketMy: "နိုဘယ်ဓာတ်ငွေ့",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w18-d4",
      dayNumber: 4,
      titleEn: "Reading: Zaw Lin Htet's Halogen Displacement Demonstration",
      titleMy:
          "စာဖတ်ခြင်း - ဇော်လင်းထက်၏ ဟယ်လိုဂျင် အစားထိုးတုံ့ပြန်မှု သရုပ်ပြခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Zaw Lin Htet's Halogen Displacement Demonstration",
        titleMy: "ဇော်လင်းထက်၏ ဟယ်လိုဂျင် အစားထိုးတုံ့ပြန်မှု သရုပ်ပြခြင်း",
        passageEn:
            "To investigate the reactivity trend of Group VII, Zaw Lin Htet's teacher set up three test tubes, each containing a colourless solution of a different halide salt: potassium chloride, potassium bromide, and potassium iodide. Zaw Lin Htet's task was to add chlorine water to each tube and record any colour change, which would reveal whether a displacement reaction had occurred.\n\nIn the potassium chloride tube, adding chlorine water produced no colour change at all -- Zaw Lin Htet reasoned this made sense, since chlorine cannot displace an element that is already chlorine. In the potassium bromide tube, the solution turned a distinct orange colour, showing that chlorine had displaced the less reactive bromine, forming potassium chloride and free bromine dissolved in solution. In the potassium iodide tube, the reaction was even more obvious: the solution turned a dark brown, almost black colour, showing chlorine had displaced iodine as well.\n\nZaw Lin Htet explained the pattern to his teacher: chlorine, positioned higher up Group VII, is more reactive than both bromine and iodine, positioned further down. A more reactive halogen can always displace a less reactive halogen from its salt solution, but never the reverse -- which was exactly why the potassium chloride tube showed no reaction, since chlorine displacing chlorine is not really a displacement at all. He concluded that the colour intensity of the two positive results (orange for bromine, dark brown for iodine) even gave a rough visual sense of how much more reactive chlorine was compared to each halogen -- the more dramatic colour change with iodide hinted at chlorine being considerably more reactive than iodine, more so than its comparison with bromine.",
        passageMy:
            "Group VII ၏ ဓာတ်ပြုနိုင်စွမ်း ခြေရာကို လေ့လာရန် ဇော်လင်းထက်၏ ဆရာမသည် စမ်းသပ်ပြွန်သုံးလုံးကို ပြင်ဆင်ပေးခဲ့ပြီး၊ တစ်ခုစီတွင် မတူညီသော ဟယ်လိုက်ဆားများ ပါဝင်သော အရောင်ကင်းဒြပ်ရည်များ ပါဝင်သည်: ပိုတက်စီယမ်ကလိုရိုက်၊ ပိုတက်စီယမ်ဘရိုမိုက်နှင့် ပိုတက်စီယမ်အိုင်အိုဒိုက်။ ဇော်လင်းထက်၏ တာဝန်မှာ ပြွန်တစ်ခုစီသို့ ကလိုရင်းရေကို ထည့်ပြီး အရောင်ပြောင်းလဲမှု တစ်စုံတစ်ရာကို မှတ်တမ်းတင်ရန်ဖြစ်ပြီး၊ ၎င်းက အစားထိုးတုံ့ပြန်မှု ဖြစ်ပေါ်ခဲ့ခြင်း ရှိမရှိ ဖော်ပြပေးမည်ဖြစ်သည်။\n\nပိုတက်စီယမ်ကလိုရိုက်ပြွန်တွင် ကလိုရင်းရေထည့်ခြင်းက အရောင်ပြောင်းလဲမှု လုံးဝ မဖြစ်ပေါ်ခဲ့ပါ -- ကလိုရင်းသည် ကလိုရင်းအဖြစ်ရှိနေပြီးသား ဒြပ်စင်တစ်ခုကို အစားထိုးမနိုင်သောကြောင့် ဤသည်ကို အကြောင်းရှိကြောင်း ဇော်လင်းထက် ဆင်ခြင်ခဲ့သည်။ ပိုတက်စီယမ်ဘရိုမိုက်ပြွန်တွင် ဒြပ်ရည်သည် ထင်ရှားသော လိမ္မော်ရောင်သို့ ပြောင်းလဲသွားခဲ့ပြီး၊ ကလိုရင်းသည် ဓာတ်ပြုနိုင်စွမ်း ပိုနည်းသော ဘရိုမင်းကို အစားထိုးကာ ပိုတက်စီယမ်ကလိုရိုက်နှင့် ဒြပ်ရည်ထဲတွင် ပျော်ဝင်နေသော ဘရိုမင်းလွတ်ကို ဖြစ်ပေါ်စေခဲ့ကြောင်း ပြသခဲ့သည်။ ပိုတက်စီယမ်အိုင်အိုဒိုက်ပြွန်တွင် တုံ့ပြန်မှုသည် ပို၍ပင် ထင်ရှားခဲ့သည်: ဒြပ်ရည်သည် အနက်ရောင်နီးပါး ထင်ရှားသော အညိုရောင်သို့ ပြောင်းလဲသွားခဲ့ပြီး၊ ကလိုရင်းသည် အိုင်အိုဒင်းကိုပါ အစားထိုးခဲ့ကြောင်း ပြသခဲ့သည်။\n\nဇော်လင်းထက်သည် ပုံစံကို ဆရာမအား ရှင်းပြခဲ့သည်: Group VII ၏ အထက်ပိုင်းတွင် တည်ရှိသော ကလိုရင်းသည် အောက်ပိုင်းတွင် တည်ရှိကြသော ဘရိုမင်းနှင့် အိုင်အိုဒင်း နှစ်ခုစလုံးထက် ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းသည်။ ဓာတ်ပြုနိုင်စွမ်း ပိုကောင်းသော ဟယ်လိုဂျင်တစ်ခုသည် ဓာတ်ပြုနိုင်စွမ်း ပိုနည်းသော ဟယ်လိုဂျင်တစ်ခုကို ၎င်း၏ ဆားဒြပ်ရည်မှ အမြဲတမ်း အစားထိုးနိုင်သော်လည်း ပြောင်းပြန်ကို လုံးဝ မဖြစ်နိုင်ပါ -- ၎င်းသည် ပိုတက်စီယမ်ကလိုရိုက်ပြွန်တွင် တုံ့ပြန်မှု မတွေ့ရသည့်အကြောင်းရင်းအတိအကျဖြစ်သည်၊ အဘယ်ကြောင့်ဆိုသော် ကလိုရင်းက ကလိုရင်းကိုယ်ကို အစားထိုးခြင်းသည် အစားထိုးမှုစစ်စစ် မဟုတ်သောကြောင့်ဖြစ်သည်။ အပြုသဘောရလဒ်နှစ်ခု (ဘရိုမင်းအတွက် လိမ္မော်ရောင်၊ အိုင်အိုဒင်းအတွက် အညိုရောင်နက်) ၏ အရောင်ပြင်းအားသည် ကလိုရင်းသည် ဟယ်လိုဂျင်တစ်ခုစီထက် မည်မျှ ပိုဓာတ်ပြုနိုင်စွမ်းကောင်းကြောင်း ရိုးရှင်းသော မျက်မြင်အကဲဖြတ်ချက်တစ်ခုပင် ပေးခဲ့ကြောင်း သူ ကောက်ချက်ချခဲ့သည် -- အိုင်အိုဒိုက်နှင့်ဖြစ်သော ပို၍ဆန်းကျယ်သော အရောင်ပြောင်းလဲမှုသည် ကလိုရင်းသည် ဘရိုမင်းနှင့်နှိုင်းယှဉ်ခြင်းထက် အိုင်အိုဒင်းထက် သိသိသာသာပို၍ ဓာတ်ပြုနိုင်စွမ်းကောင်းကြောင်း ညွှန်ပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Why did the potassium chloride tube show no colour change?",
            questionMy:
                "ပိုတက်စီယမ်ကလိုရိုက်ပြွန်သည် အဘယ်ကြောင့် အရောင်ပြောင်းလဲမှု မတွေ့ရသနည်း။",
            optionsEn: [
              "Chlorine cannot displace an element that is already chlorine",
              "Potassium chloride does not exist",
              "The tube was empty",
              "Chlorine water was never added",
            ],
            optionsMy: [
              "ကလိုရင်းသည် ကလိုရင်းအဖြစ်ရှိနေပြီးသား ဒြပ်စင်တစ်ခုကို အစားထိုးမနိုင်သောကြောင့်",
              "ပိုတက်စီယမ်ကလိုရိုက် လုံးဝ မရှိသောကြောင့်",
              "ပြွန်တွင် မည်သည့်အရာမျှ မပါဝင်ခဲ့သောကြောင့်",
              "ကလိုရင်းရေကို လုံးဝ မထည့်ခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation of this result.",
              "A displacement reaction needs two different halogens -- chlorine cannot displace itself.",
            ],
            hintsMy: [
              "ဤရလဒ်ကို ရှင်းပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အစားထိုးတုံ့ပြန်မှုတစ်ခုအတွက် မတူညီသော ဟယ်လိုဂျင်နှစ်ခု လိုအပ်သည် -- ကလိုရင်းသည် ကိုယ်ကိုကိုယ် အစားထိုးမနိုင်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What colour did the potassium bromide solution turn, and why?",
            questionMy:
                "ပိုတက်စီယမ်ဘရိုမိုက်ဒြပ်ရည်သည် မည်သည့်အရောင်သို့ ပြောင်းလဲသွားခဲ့ပြီး အဘယ်ကြောင့်ဖြစ်သနည်း။",
            optionsEn: [
              "Orange, because chlorine displaced the less reactive bromine",
              "Colourless, because nothing happened",
              "Green, because a new gas formed",
              "Black, because the solution boiled",
            ],
            optionsMy: [
              "လိမ္မော်ရောင်၊ ကလိုရင်းသည် ဓာတ်ပြုနိုင်စွမ်းနည်းသော ဘရိုမင်းကို အစားထိုးသောကြောင့်",
              "အရောင်ကင်း၊ မည်သည့်အရာမျှ မဖြစ်ပေါ်ခဲ့သောကြောင့်",
              "အစိမ်းရောင်၊ ဓာတ်ငွေ့အသစ် ဖြစ်ပေါ်လာသောကြောင့်",
              "အနက်ရောင်၊ ဒြပ်ရည် ပွက်ဆူသွားသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the potassium bromide result.",
              "Chlorine, being more reactive, displaces bromine, releasing free bromine dissolved in the solution.",
            ],
            hintsMy: [
              "ပိုတက်စီယမ်ဘရိုမိုက်ရလဒ်ကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းသော ကလိုရင်းသည် ဘရိုမင်းကို အစားထိုးပြီး ဒြပ်ရည်ထဲတွင် ပျော်ဝင်နေသော ဘရိုမင်းလွတ်ကို လွှတ်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What general rule did Zaw Lin Htet explain about halogen displacement?",
            questionMy:
                "ဟယ်လိုဂျင် အစားထိုးမှုနှင့်ပတ်သက်၍ ဇော်လင်းထက် မည်သည့် ယေဘုယျစည်းမျဉ်းကို ရှင်းပြခဲ့သနည်း။",
            optionsEn: [
              "A more reactive halogen can always displace a less reactive one, but never the reverse",
              "Any halogen can displace any other halogen equally",
              "Displacement never actually happens between halogens",
              "Less reactive halogens always displace more reactive ones",
            ],
            optionsMy: [
              "ဓာတ်ပြုနိုင်စွမ်း ပိုကောင်းသော ဟယ်လိုဂျင်သည် ဓာတ်ပြုနိုင်စွမ်း ပိုနည်းသည့်တစ်ခုကို အမြဲတမ်း အစားထိုးနိုင်သော်လည်း ပြောင်းပြန်ကို လုံးဝ မဖြစ်နိုင်ပါ",
              "ဟယ်လိုဂျင်တစ်ခုသည် အခြားဟယ်လိုဂျင်တစ်ခုကို ညီမျှစွာ အစားထိုးနိုင်သည်",
              "ဟယ်လိုဂျင်များအကြား အစားထိုးမှု အမှန်တကယ် လုံးဝ မဖြစ်ပေါ်ပါ",
              "ဓာတ်ပြုနိုင်စွမ်း ပိုနည်းသောဟယ်လိုဂျင်များသည် ဓာတ်ပြုနိုင်စွမ်း ပိုကောင်းသည့်တစ်ခုကို အမြဲတမ်း အစားထိုးသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation of this general pattern.",
              "This is the core reactivity trend rule for the whole halogen group.",
            ],
            hintsMy: [
              "ဤယေဘုယျပုံစံကို ရှင်းပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ ဟယ်လိုဂျင်အုပ်စုတစ်ခုလုံးအတွက် ဓာတ်ပြုနိုင်စွမ်း ခြေရာစည်းမျဉ်း အဓိကအချက်ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did the darker colour change with iodide (compared to bromide) suggest to Zaw Lin Htet?",
            questionMy:
                "ဘရိုမိုက်နှင့် နှိုင်းယှဉ်ပါက အိုင်အိုဒိုက်နှင့် ပို၍ ရင့်သောအရောင် ပြောင်းလဲမှုသည် ဇော်လင်းထက်ကို မည်သည့်အရာကို ညွှန်ပြခဲ့သနည်း။",
            optionsEn: [
              "Chlorine was considerably more reactive than iodine, more so than compared to bromine",
              "Iodine does not actually react with chlorine at all",
              "The experiment had failed for the iodide tube",
              "Bromine and iodine are exactly equally reactive",
            ],
            optionsMy: [
              "ကလိုရင်းသည် ဘရိုမင်းနှင့်နှိုင်းယှဉ်ခြင်းထက် အိုင်အိုဒင်းထက် သိသိသာသာပို၍ ဓာတ်ပြုနိုင်စွမ်းကောင်းကြောင်း",
              "အိုင်အိုဒင်းသည် ကလိုရင်းနှင့် အမှန်တကယ် လုံးဝ မတုံ့ပြန်ကြောင်း",
              "အိုင်အိုဒိုက်ပြွန်အတွက် စမ်းသပ်မှု မအောင်မြင်ခဲ့ကြောင်း",
              "ဘရိုမင်းနှင့် အိုင်အိုဒင်းသည် ဓာတ်ပြုနိုင်စွမ်း အတိအကျ ညီမျှကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "A more dramatic colour change is Zaw Lin Htet's rough visual clue for a bigger reactivity gap.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ပို၍ဆန်းကျယ်သော အရောင်ပြောင်းလဲမှုသည် ဓာတ်ပြုနိုင်စွမ်းကွာဟမှု ပိုကြီးကြောင်း ဇော်လင်းထက်၏ ရိုးရှင်းသော မျက်မြင်လက္ခဏာဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w18-d5",
      dayNumber: 5,
      titleEn: "Week 18 Recap: The Periodic Table",
      titleMy: "အပတ်စဉ် ၁၈ ပြန်လည်သုံးသပ်ခြင်း - ဒြပ်စင်အလှည့်ကျဇယား",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Group I reactivity trend down the group is...",
          questionMy:
              "Group I ၏ ဓာတ်ပြုနိုင်စွမ်း ခြေရာသည် အုပ်စု၏ အောက်ပိုင်းသို့သွားလေလေ မည်သို့ ဖြစ်လာသနည်း။",
          optionsEn: ["Increasing", "Decreasing", "Unchanged", "Zero always"],
          optionsMy: [
            "တိုးလာသည်",
            "လျော့ကျလာသည်",
            "မပြောင်းလဲပါ",
            "အမြဲတမ်း သုည",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Group VII reactivity trend down the group is...",
          questionMy:
              "Group VII ၏ ဓာတ်ပြုနိုင်စွမ်း ခြေရာသည် အုပ်စု၏ အောက်ပိုင်းသို့သွားလေလေ မည်သို့ ဖြစ်လာသနည်း။",
          optionsEn: ["Decreasing", "Increasing", "Unchanged", "Zero always"],
          optionsMy: [
            "လျော့ကျလာသည်",
            "တိုးလာသည်",
            "မပြောင်းလဲပါ",
            "အမြဲတမ်း သုည",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Noble gases are unreactive because they have...",
          questionMy:
              "နိုဘယ်ဓာတ်ငွေ့များသည် မည်သည့်အချက်ရှိသောကြောင့် ဓာတ်ပြုနိုင်စွမ်းနည်းသနည်း။",
          optionsEn: [
            "A full outer electron shell",
            "No electrons at all",
            "Extra protons",
            "No nucleus",
          ],
          optionsMy: [
            "အပြည့်ရှိသော အပြင်ဆုံးအီလက်ထရွန်အခွံ",
            "အီလက်ထရွန် လုံးဝမရှိခြင်း",
            "ပရိုတွန်အပို",
            "နျူကလိယပ်စ် မရှိခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A more reactive halogen can...",
          questionMy:
              "ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းသော ဟယ်လိုဂျင်တစ်ခုသည် မည်သည့်အရာ ပြုလုပ်နိုင်သနည်း။",
          optionsEn: [
            "Displace a less reactive halogen from its salt solution",
            "Never react with anything",
            "Only react with noble gases",
            "Turn into a metal",
          ],
          optionsMy: [
            "ဓာတ်ပြုနိုင်စွမ်း ပိုနည်းသော ဟယ်လိုဂျင်တစ်ခုကို ၎င်း၏ ဆားဒြပ်ရည်မှ အစားထိုးနိုင်သည်",
            "မည်သည့်အရာနှင့်မျှ လုံးဝ မတုံ့ပြန်ပါ",
            "နိုဘယ်ဓာတ်ငွေ့များနှင့်သာ တုံ့ပြန်သည်",
            "သတ္တုအဖြစ် ပြောင်းလဲသွားသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 19: "Properties and Reactivity of Metals"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek19 = CourseWeekDef(
  id: "course-igcse-combsci-w19",
  weekNumber: 19,
  titleEn: "Properties and Reactivity of Metals",
  titleMy: "သတ္တုများ၏ ဂုဏ်သတ္တိနှင့် ဓာတ်ပြုနိုင်စွမ်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w19-d1",
      dayNumber: 1,
      titleEn: "Metal Reactivity and Extraction Quiz",
      titleMy: "သတ္တု ဓာတ်ပြုနိုင်စွမ်းနှင့် ထုတ်ယူခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In the reactivity series, a more reactive metal can...",
          questionMy:
              "ဓာတ်ပြုနိုင်စွမ်းအစဉ် (Reactivity series) တွင် ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းသော သတ္တုတစ်ခုသည် မည်သည့်အရာ ပြုလုပ်နိုင်သနည်း။",
          optionsEn: [
            "Displace a less reactive metal from its compound",
            "Never react with anything at all",
            "Only react with noble gases",
            "Turn into a non-metal",
          ],
          optionsMy: [
            "ဓာတ်ပြုနိုင်စွမ်းပိုနည်းသော သတ္တုတစ်ခုကို ၎င်း၏ ဒြပ်ပေါင်းမှ အစားထိုးနိုင်သည်",
            "မည်သည့်အရာနှင့်မျှ လုံးဝ မတုံ့ပြန်ပါ",
            "နိုဘယ်ဓာတ်ငွေ့များနှင့်သာ တုံ့ပြန်သည်",
            "အသတ္တုအဖြစ် ပြောင်းလဲသွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is called a metal displacement reaction -- similar to the halogen displacement pattern seen in Week 18.",
            "An iron nail placed in copper sulfate solution becomes coated in copper, since iron is more reactive.",
          ],
          hintsMy: [
            "ဤသည်ကို သတ္တု အစားထိုးတုံ့ပြန်မှု ဟုခေါ်သည် -- Week 18 တွင် တွေ့ခဲ့သော ဟယ်လိုဂျင် အစားထိုးပုံစံနှင့် ဆင်တူသည်။",
            "ကွန်ပါဆာလဖိတ်ဒြပ်ရည်ထဲသို့ ချထားသော သံချေးမြေးသည် ကွန်ပါဖြင့် ဖုံးအုပ်လာသည်၊ အဘယ်ကြောင့်ဆိုသော် သံသည် ဓာတ်ပြုနိုင်စွမ်း ပိုကောင်းသောကြောင့်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Very reactive metals like potassium and sodium are usually extracted using...",
          questionMy:
              "ပိုတက်စီယမ်နှင့် ဆိုဒီယမ်ကဲ့သို့ ဓာတ်ပြုနိုင်စွမ်းအလွန်ကောင်းသော သတ္တုများကို များသောအားဖြင့် မည်သို့ ထုတ်ယူသနည်း။",
          optionsEn: [
            "Electrolysis",
            "Carbon reduction only",
            "Simple heating alone",
            "Filtration only",
          ],
          optionsMy: [
            "လျှပ်စစ်ခွဲစိတ်ခြင်း (Electrolysis)",
            "ကာဗွန်ကို့ချ်ခြင်းသာ",
            "ရိုးရိုးအပူပေးခြင်းသာ",
            "ရေစစ်ခြင်းသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Metals above carbon in the reactivity series bond too strongly to their oxide for carbon to remove.",
            "Electrolysis uses electricity to force these strongly-bonded compounds apart, extracting the pure metal.",
          ],
          hintsMy: [
            "ဓာတ်ပြုနိုင်စွမ်းအစဉ်တွင် ကာဗွန်ထက်အထက်ရှိ သတ္တုများသည် ၎င်းတို့၏ အောက်ဆိုဒ်နှင့် အလွန်ခိုင်မာစွာ ချိတ်ဆက်နေသောကြောင့် ကာဗွန်က ဖယ်ရှားနိုင်ခြင်းမရှိပါ။",
            "လျှပ်စစ်ခွဲစိတ်ခြင်းသည် ဤခိုင်မာစွာချိတ်ဆက်ထားသော ဒြပ်ပေါင်းများကို ခွဲခွာစေရန် လျှပ်စစ်ကို အသုံးပြုပြီး စင်ကြယ်သော သတ္တုကို ထုတ်ယူပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Less reactive metals like iron and zinc are usually extracted from their ores using...",
          questionMy:
              "သံနှင့် ဇင့်ကဲ့သို့ ဓာတ်ပြုနိုင်စွမ်းနည်းသော သတ္တုများကို ၎င်းတို့၏ သတ္တုရိုင်းများမှ များသောအားဖြင့် မည်သို့ ထုတ်ယူသနည်း။",
          optionsEn: [
            "Carbon reduction",
            "Electrolysis only",
            "Freezing only",
            "Filtration only",
          ],
          optionsMy: [
            "ကာဗွန်ကို့ချ်ခြင်း",
            "လျှပ်စစ်ခွဲစိတ်ခြင်းသာ",
            "အေးခဲစေခြင်းသာ",
            "ရေစစ်ခြင်းသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Carbon is more reactive than these metals, so it can displace them from their oxide compounds.",
            "This is cheaper than electrolysis, which is why it's used whenever a metal's reactivity allows it.",
          ],
          hintsMy: [
            "ကာဗွန်သည် ဤသတ္တုများထက် ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းသောကြောင့် ၎င်းတို့ကို ၎င်းတို့၏ အောက်ဆိုဒ်ဒြပ်ပေါင်းများမှ အစားထိုးနိုင်သည်။",
            "ဤနည်းသည် လျှပ်စစ်ခွဲစိတ်ခြင်းထက် ပိုစျေးသက်သာသောကြောင့် သတ္တု၏ ဓာတ်ပြုနိုင်စွမ်းက ခွင့်ပြုတိုင်း အသုံးပြုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "An alloy is best described as...",
          questionMy:
              "အယ်လွိုင် (Alloy) ကို အကောင်းဆုံးဖော်ပြရလျှင် မည်သို့ ဖော်ပြနိုင်သနည်း။",
          optionsEn: [
            "A mixture of a metal with one or more other elements, usually to improve its properties",
            "A pure single element with no other substances added",
            "A type of acid",
            "A gas produced during electrolysis",
          ],
          optionsMy: [
            "၎င်း၏ ဂုဏ်သတ္တိများ တိုးတက်စေရန် များသောအားဖြင့် သတ္တုတစ်ခုနှင့် အခြားဒြပ်စင်တစ်ခု (သို့) တစ်ခုထက်ပို ရောစပ်ထားသည့် ရောစပ်ပစ္စည်း",
            "အခြားပစ္စည်းများ ထည့်မထားသော စင်ကြယ်ဒြပ်စင်တစ်ခုတည်း",
            "အက်ဆစ် အမျိုးအစားတစ်ခု",
            "လျှပ်စစ်ခွဲစိတ်ခြင်းအတွင်း ထုတ်လုပ်သော ဓာတ်ငွေ့တစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Steel (iron mixed with carbon) is harder and stronger than pure iron alone.",
            "Brass (copper mixed with zinc) is an alloy chosen for its improved appearance and durability.",
          ],
          hintsMy: [
            "သံမဏိ (သံနှင့် ကာဗွန်ရောစပ်ထားခြင်း) သည် စင်ကြယ်သံထက် ပိုမာပြီး ပိုခိုင်ခံ့သည်။",
            "ကြေးဝါ (ကွန်ပါနှင့် ဇင့်ရောစပ်ထားခြင်း) သည် ၎င်း၏ တိုးတက်သောသဏ္ဍာန်နှင့် ခံနိုင်ရည်အတွက် ရွေးချယ်ထားသော အယ်လွိုင်တစ်ခုဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w19-d2",
      dayNumber: 2,
      titleEn: "Match the Metals Vocabulary",
      titleMy: "သတ္တုများဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w19-dm-1",
          termEn: "Reactivity Series",
          termMy: "ဓာတ်ပြုနိုင်စွမ်းအစဉ် (Reactivity Series)",
          matchEn: "A list of metals ordered from most to least reactive.",
          matchMy:
              "ဓာတ်ပြုနိုင်စွမ်းအများဆုံးမှ အနည်းဆုံးအထိ စီစဉ်ထားသော သတ္တုများစာရင်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w19-dm-2",
          termEn: "Electrolysis",
          termMy: "လျှပ်စစ်ခွဲစိတ်ခြင်း (Electrolysis)",
          matchEn:
              "Using electricity to extract very reactive metals from their compounds.",
          matchMy:
              "ဓာတ်ပြုနိုင်စွမ်းအလွန်ကောင်းသော သတ္တုများကို ၎င်းတို့၏ ဒြပ်ပေါင်းများမှ ထုတ်ယူရန် လျှပ်စစ်ကို အသုံးပြုခြင်း။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w19-dm-3",
          termEn: "Carbon Reduction",
          termMy: "ကာဗွန်ကို့ချ်ခြင်း (Carbon Reduction)",
          matchEn:
              "Using carbon to extract less reactive metals from their oxide ores.",
          matchMy:
              "ဓာတ်ပြုနိုင်စွမ်းနည်းသော သတ္တုများကို ၎င်းတို့၏ အောက်ဆိုဒ်သတ္တုရိုင်းများမှ ထုတ်ယူရန် ကာဗွန်ကို အသုံးပြုခြင်း။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w19-dm-4",
          termEn: "Alloy",
          termMy: "အယ်လွိုင် (Alloy)",
          matchEn:
              "A mixture of a metal with other elements, usually to improve its properties.",
          matchMy:
              "၎င်း၏ ဂုဏ်သတ္တိများတိုးတက်စေရန် များသောအားဖြင့် သတ္တုတစ်ခုနှင့် အခြားဒြပ်စင်များ ရောစပ်ထားသည့်ပစ္စည်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w19-dm-5",
          termEn: "Displacement Reaction",
          termMy: "အစားထိုးတုံ့ပြန်မှု (Displacement Reaction)",
          matchEn:
              "A more reactive metal takes the place of a less reactive one in a compound.",
          matchMy:
              "ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းသော သတ္တုတစ်ခုသည် ဒြပ်ပေါင်းတစ်ခုအတွင်း ဓာတ်ပြုနိုင်စွမ်းပိုနည်းသောတစ်ခု၏ နေရာကို ယူသည်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w19-d3",
      dayNumber: 3,
      titleEn: "Sort: Extracted by Electrolysis or Carbon Reduction?",
      titleMy:
          "စီစစ်ကြမည် - လျှပ်စစ်ခွဲစိတ်ခြင်း (သို့) ကာဗွန်ကို့ချ်ခြင်းဖြင့် ထုတ်ယူသလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Extracted by Electrolysis",
          "Extracted by Carbon Reduction",
        ],
        bucketsMy: [
          "လျှပ်စစ်ခွဲစိတ်ခြင်းဖြင့် ထုတ်ယူသည်",
          "ကာဗွန်ကို့ချ်ခြင်းဖြင့် ထုတ်ယူသည်",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w19-sort-1",
            labelEn: "Potassium",
            labelMy: "ပိုတက်စီယမ်",
            correctBucketEn: "Extracted by Electrolysis",
            correctBucketMy: "လျှပ်စစ်ခွဲစိတ်ခြင်းဖြင့် ထုတ်ယူသည်",
          ),
          SortingItem(
            id: "igcsecs-w19-sort-2",
            labelEn: "Sodium",
            labelMy: "ဆိုဒီယမ်",
            correctBucketEn: "Extracted by Electrolysis",
            correctBucketMy: "လျှပ်စစ်ခွဲစိတ်ခြင်းဖြင့် ထုတ်ယူသည်",
          ),
          SortingItem(
            id: "igcsecs-w19-sort-3",
            labelEn: "Calcium",
            labelMy: "ကယ်လစီယမ်",
            correctBucketEn: "Extracted by Electrolysis",
            correctBucketMy: "လျှပ်စစ်ခွဲစိတ်ခြင်းဖြင့် ထုတ်ယူသည်",
          ),
          SortingItem(
            id: "igcsecs-w19-sort-4",
            labelEn: "Aluminium",
            labelMy: "အလူမီနီယမ်",
            correctBucketEn: "Extracted by Electrolysis",
            correctBucketMy: "လျှပ်စစ်ခွဲစိတ်ခြင်းဖြင့် ထုတ်ယူသည်",
          ),
          SortingItem(
            id: "igcsecs-w19-sort-5",
            labelEn: "Zinc",
            labelMy: "ဇင့်",
            correctBucketEn: "Extracted by Carbon Reduction",
            correctBucketMy: "ကာဗွန်ကို့ချ်ခြင်းဖြင့် ထုတ်ယူသည်",
          ),
          SortingItem(
            id: "igcsecs-w19-sort-6",
            labelEn: "Iron",
            labelMy: "သံ",
            correctBucketEn: "Extracted by Carbon Reduction",
            correctBucketMy: "ကာဗွန်ကို့ချ်ခြင်းဖြင့် ထုတ်ယူသည်",
          ),
          SortingItem(
            id: "igcsecs-w19-sort-7",
            labelEn: "Tin",
            labelMy: "သွပ်",
            correctBucketEn: "Extracted by Carbon Reduction",
            correctBucketMy: "ကာဗွန်ကို့ချ်ခြင်းဖြင့် ထုတ်ယူသည်",
          ),
          SortingItem(
            id: "igcsecs-w19-sort-8",
            labelEn: "Copper",
            labelMy: "ကွန်ပါ",
            correctBucketEn: "Extracted by Carbon Reduction",
            correctBucketMy: "ကာဗွန်ကို့ချ်ခြင်းဖြင့် ထုတ်ယူသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w19-d4",
      dayNumber: 4,
      titleEn: "Reading: Ohn Mar's Metal Displacement Series",
      titleMy: "စာဖတ်ခြင်း - အုန်းမာ၏ သတ္တု အစားထိုးတုံ့ပြန်မှု အစီအစဉ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Ohn Mar's Metal Displacement Series",
        titleMy: "အုန်းမာ၏ သတ္တု အစားထိုးတုံ့ပြန်မှု အစီအစဉ်",
        passageEn:
            "To work out the reactivity order of four unlabelled metals -- magnesium, zinc, iron, and copper -- experimentally, Ohn Mar dropped a small piece of each metal into solutions of the other three metals' salts, watching for any visible reaction (a colour change or a coating forming on the metal surface).\n\nOhn Mar observed that magnesium reacted visibly with all three other metal salt solutions, becoming coated each time, while nothing ever reacted when dropped into a magnesium salt solution. She reasoned this made magnesium the most reactive of the four, since it could displace every other metal but nothing could displace it.\n\nCopper showed the opposite pattern: it never produced a visible reaction in any of the other metals' salt solutions, but all three other metals reacted visibly when dropped into copper sulfate solution, becoming coated in a pinkish-copper layer. This told Ohn Mar copper was the least reactive of the four. For zinc and iron, she noted that iron reacted when dropped into zinc sulfate solution (getting coated), but zinc did not react when dropped into an iron salt solution -- confirming zinc was more reactive than iron.\n\nCombining all her observations, Ohn Mar built the full reactivity order from most to least reactive: magnesium, zinc, iron, copper. She explained to her teacher that this matched exactly what she would have expected from the standard reactivity series taught in class, and that this kind of systematic testing -- trying every metal against every other metal's salt solution -- was exactly how the reactivity series was originally worked out experimentally, long before it became a fact students simply memorise from a textbook.",
        passageMy:
            "အမည်မတပ်ထားသော သတ္တုလေးမျိုး -- မဂ္ဂနီဆီယမ်၊ ဇင့်၊ သံနှင့် ကွန်ပါ -- ၏ ဓာတ်ပြုနိုင်စွမ်း အစီအစဉ်ကို စမ်းသပ်မှုအရ ရှာဖွေရန် အုန်းမာသည် သတ္တုတစ်ခုစီ၏ အပိုင်းငယ်တစ်ခုကို အခြားသတ္တုသုံးမျိုး၏ ဆားဒြပ်ရည်များထဲသို့ ချထားခဲ့ပြီး၊ မျက်မြင်တွေ့ရသော တုံ့ပြန်မှု (အရောင်ပြောင်းလဲမှု သို့ သတ္တုမျက်နှာပြင်ပေါ်တွင် အလွှာတစ်ခု ဖြစ်ပေါ်လာခြင်း) ကို စောင့်ကြည့်ခဲ့သည်။\n\nအုန်းမာသည် မဂ္ဂနီဆီယမ်သည် အခြားသတ္တုဆားဒြပ်ရည်သုံးမျိုးလုံးနှင့် မျက်မြင်တွေ့ရသော တုံ့ပြန်မှု ဖြစ်ပေါ်စေကြောင်း၊ တိုင်း အလွှာတစ်ခုနှင့် ဖုံးအုပ်လာသည်ကို တွေ့ရှိခဲ့ပြီး၊ မဂ္ဂနီဆီယမ်ဆားဒြပ်ရည်ထဲသို့ ချထားလိုက်ချိန်တွင်မူ မည်သည့်အရာမျှ ဘယ်တော့မှ မတုံ့ပြန်ခဲ့ပါ။ သူမသည် ၎င်းက မဂ္ဂနီဆီယမ်ကို သတ္တုလေးမျိုးထဲမှ ဓာတ်ပြုနိုင်စွမ်း အကောင်းဆုံးဖြစ်စေသည်ဟု ဆင်ခြင်ခဲ့သည်၊ အဘယ်ကြောင့်ဆိုသော် ၎င်းသည် အခြားသတ္တုတိုင်းကို အစားထိုးနိုင်သော်လည်း မည်သည့်အရာမှ ၎င်းကို အစားမထိုးနိုင်သောကြောင့်ဖြစ်သည်။\n\nကွန်ပါကမူ ဆန့်ကျင်ဘက်ပုံစံကို ပြသခဲ့သည်: ၎င်းသည် အခြားသတ္တုများ၏ ဆားဒြပ်ရည်များတွင် မည်သည့်အခါမျှ မျက်မြင်တွေ့ရသော တုံ့ပြန်မှု ဖြစ်ပေါ်မခဲ့ဘဲ၊ ကွန်ပါဆာလဖိတ်ဒြပ်ရည်ထဲသို့ ချထားလိုက်သောအခါ အခြားသတ္တုသုံးမျိုးလုံးသည် ပန်းရောင်-ကွန်ပါရောင် အလွှာတစ်ခုနှင့် ဖုံးအုပ်ကာ မျက်မြင်တွေ့ရသော တုံ့ပြန်မှု ဖြစ်ပေါ်ခဲ့ကြသည်။ ၎င်းက ကွန်ပါသည် သတ္တုလေးမျိုးထဲမှ ဓာတ်ပြုနိုင်စွမ်း အနည်းဆုံးဖြစ်ကြောင်း အုန်းမာကို ပြောပြသည်။ ဇင့်နှင့် သံအတွက် သံသည် ဇင့်ဆာလဖိတ်ဒြပ်ရည်ထဲသို့ ချထားလိုက်ချိန်တွင် တုံ့ပြန်ကြောင်း (ဖုံးအုပ်ခံရကြောင်း)၊ သို့သော် ဇင့်သည် သံဆားဒြပ်ရည်ထဲသို့ ချထားလိုက်ချိန်တွင် မတုံ့ပြန်ကြောင်း သတိပြုမိပြီး -- ဇင့်သည် သံထက် ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းကြောင်း အတည်ပြုခဲ့သည်။\n\nသူမ၏ လေ့လာတွေ့ရှိချက်အားလုံးကို ပေါင်းစပ်၍ အုန်းမာသည် ဓာတ်ပြုနိုင်စွမ်း အကောင်းဆုံးမှ အနည်းဆုံးအထိ အစီအစဉ်အပြည့်အစုံကို တည်ဆောက်ခဲ့သည်: မဂ္ဂနီဆီယမ်၊ ဇင့်၊ သံ၊ ကွန်ပါ။ သူမသည် ဆရာမအား ဤသည်သည် အတန်းတွင် သင်ကြားထားသော စံသတ်မှတ် ဓာတ်ပြုနိုင်စွမ်းအစဉ်နှင့် အတိအကျ ကိုက်ညီကြောင်းနှင့် ဤကဲ့သို့သော စနစ်တကျစစ်ဆေးမှု -- သတ္တုတစ်ခုစီကို အခြားသတ္တုတစ်ခုစီ၏ ဆားဒြပ်ရည်နှင့် စမ်းသပ်ခြင်း -- သည် ဓာတ်ပြုနိုင်စွမ်းအစဉ်ကို ကျောင်းသားများ ကျမ်းစာအုပ်တစ်အုပ်မှ ရိုးရှင်းစွာ အလွတ်ကျက်မှတ်ရသော အချက်အလက်တစ်ခု မဖြစ်လာမီက စမ်းသပ်မှုအရ မူလ ရှာဖွေရာနေရာ အတိအကျဖြစ်ကြောင်း ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Why did Ohn Mar conclude magnesium was the most reactive metal?",
            questionMy:
                "မဂ္ဂနီဆီယမ်သည် ဓာတ်ပြုနိုင်စွမ်းအကောင်းဆုံးသတ္တုဖြစ်ကြောင်း အုန်းမာ အဘယ်ကြောင့် ကောက်ချက်ချခဲ့သနည်း။",
            optionsEn: [
              "It displaced every other metal, but nothing displaced it",
              "It was the heaviest of the four metals",
              "It changed colour to bright red",
              "It dissolved completely in water",
            ],
            optionsMy: [
              "အခြားသတ္တုတိုင်းကို အစားထိုးနိုင်သော်လည်း မည်သည့်အရာမှ ၎င်းကို အစားမထိုးနိုင်ခဲ့သောကြောင့်",
              "သတ္တုလေးမျိုးထဲတွင် အလေးချိန်အလေးဆုံးဖြစ်ခဲ့သောကြောင့်",
              "တောက်ပသောအနီရောင်သို့ အရောင်ပြောင်းလဲခဲ့သောကြောင့်",
              "ရေထဲတွင် လုံးဝ ပျော်ဝင်သွားခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation of the magnesium results.",
              "The most reactive metal in the series displaces everything else but is never displaced itself.",
            ],
            hintsMy: [
              "မဂ္ဂနီဆီယမ်ရလဒ်များကို ရှင်းပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အစီအစဉ်ရှိ ဓာတ်ပြုနိုင်စွမ်းအကောင်းဆုံးသတ္တုသည် အခြားအရာအားလုံးကို အစားထိုးသော်လည်း ကိုယ်တိုင် အစားထိုးမခံရပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What told Ohn Mar that copper was the least reactive metal?",
            questionMy:
                "ကွန်ပါသည် ဓာတ်ပြုနိုင်စွမ်းအနည်းဆုံးသတ္တုဖြစ်ကြောင်း အုန်းမာကို မည်သည့်အချက်က ပြောပြခဲ့သနည်း။",
            optionsEn: [
              "It never displaced any other metal, but every other metal displaced it",
              "It was the lightest metal",
              "It reacted violently with water",
              "It turned into a gas immediately",
            ],
            optionsMy: [
              "အခြားသတ္တုမည်သည်ကိုမျှ အစားမထိုးနိုင်ခဲ့ဘဲ အခြားသတ္တုတိုင်းက ၎င်းကို အစားထိုးခဲ့ကြောင်း",
              "အပေါ့ဆုံးသတ္တု ဖြစ်ခဲ့ကြောင်း",
              "ရေနှင့် ပြင်းထန်စွာ ဓာတ်ပြုခဲ့ကြောင်း",
              "ချက်ချင်း ဓာတ်ငွေ့အဖြစ် ပြောင်းလဲသွားခဲ့ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation of the copper results.",
              "The least reactive metal is displaced by everything else but never displaces anything itself.",
            ],
            hintsMy: [
              "ကွန်ပါရလဒ်များကို ရှင်းပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဓာတ်ပြုနိုင်စွမ်းအနည်းဆုံးသတ္တုသည် အခြားအရာအားလုံးက အစားထိုးခံရသော်လည်း ကိုယ်တိုင် မည်သည့်အရာကိုမျှ မအစားထိုးပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "How did Ohn Mar determine that zinc was more reactive than iron?",
            questionMy:
                "ဇင့်သည် သံထက် ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းကြောင်း အုန်းမာ မည်သို့ ဆုံးဖြတ်ခဲ့သနည်း။",
            optionsEn: [
              "Iron reacted in zinc sulfate solution, but zinc did not react in iron salt solution",
              "Zinc turned bright green in every test",
              "Iron dissolved completely in all solutions",
              "She only guessed randomly",
            ],
            optionsMy: [
              "သံသည် ဇင့်ဆာလဖိတ်ဒြပ်ရည်တွင် တုံ့ပြန်ခဲ့သော်လည်း ဇင့်သည် သံဆားဒြပ်ရည်တွင် မတုံ့ပြန်ခဲ့ကြောင်း",
              "ဇင့်သည် စမ်းသပ်မှုတိုင်းတွင် တောက်ပသော အစိမ်းရောင်ပြောင်းသွားခဲ့ကြောင်း",
              "သံသည် ဒြပ်ရည်အားလုံးတွင် လုံးဝ ပျော်ဝင်သွားခဲ့ကြောင်း",
              "သူမ ကျပန်း ခန့်မှန်းခဲ့ခြင်းသာ ဖြစ်ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's comparison between zinc and iron.",
              "If iron can be displaced by zinc but not the reverse, zinc must be more reactive.",
            ],
            hintsMy: [
              "ဇင့်နှင့် သံကြား နှိုင်းယှဉ်ချက်ကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "သံသည် ဇင့်ဖြင့် အစားထိုးခံရနိုင်သော်လည်း ပြောင်းပြန်မဖြစ်ပါက ဇင့်သည် ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းရမည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Ohn Mar tell her teacher about this systematic testing method?",
            questionMy:
                "ဤစနစ်တကျစစ်ဆေးနည်းလမ်းနှင့်ပတ်သက်၍ အုန်းမာ ဆရာမအား မည်သည့်အချက်ကို ပြောပြခဲ့သနည်း။",
            optionsEn: [
              "It was exactly how the reactivity series was originally worked out experimentally",
              "It was completely useless and unnecessary",
              "It only worked for magnesium",
              "It had never been used by real scientists",
            ],
            optionsMy: [
              "၎င်းသည် ဓာတ်ပြုနိုင်စွမ်းအစဉ်ကို စမ်းသပ်မှုအရ မူလရှာဖွေရာနေရာအတိအကျဖြစ်ကြောင်း",
              "လုံးဝ အသုံးမဝင်ဘဲ မလိုအပ်ကြောင်း",
              "မဂ္ဂနီဆီယမ်တစ်ခုတည်းအတွက်သာ အလုပ်လုပ်ကြောင်း",
              "စစ်မှန်သော သိပ္ပံပညာရှင်များ ဘယ်တော့မှ အသုံးမပြုဖူးကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Trying every metal against every other salt is systematic, and mirrors how the real reactivity series was first discovered.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "သတ္တုတစ်ခုစီကို အခြားဆားတစ်ခုစီနှင့် စမ်းသပ်ခြင်းသည် စနစ်တကျဖြစ်ပြီး၊ စစ်မှန်သော ဓာတ်ပြုနိုင်စွမ်းအစဉ်ကို ဦးစွာရှာဖွေတွေ့ရှိပုံနှင့် ထပ်တူညီသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w19-d5",
      dayNumber: 5,
      titleEn: "Week 19 Recap: Reactivity of Metals",
      titleMy: "အပတ်စဉ် ၁၉ ပြန်လည်သုံးသပ်ခြင်း - သတ္တုများ၏ ဓာတ်ပြုနိုင်စွမ်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A more reactive metal can...",
          questionMy:
              "ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းသော သတ္တုတစ်ခုသည် မည်သည့်အရာ ပြုလုပ်နိုင်သနည်း။",
          optionsEn: [
            "Displace a less reactive metal from its compound",
            "Never react at all",
            "Only react with gases",
            "Turn into a noble gas",
          ],
          optionsMy: [
            "ဓာတ်ပြုနိုင်စွမ်းပိုနည်းသော သတ္တုတစ်ခုကို ၎င်း၏ ဒြပ်ပေါင်းမှ အစားထိုးနိုင်သည်",
            "လုံးဝ မတုံ့ပြန်ပါ",
            "ဓာတ်ငွေ့များနှင့်သာ တုံ့ပြန်သည်",
            "နိုဘယ်ဓာတ်ငွေ့အဖြစ် ပြောင်းလဲသွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Very reactive metals are usually extracted by...",
          questionMy:
              "ဓာတ်ပြုနိုင်စွမ်းအလွန်ကောင်းသော သတ္တုများကို များသောအားဖြင့် မည်သို့ ထုတ်ယူသနည်း။",
          optionsEn: [
            "Electrolysis",
            "Carbon reduction only",
            "Freezing",
            "Filtration",
          ],
          optionsMy: [
            "လျှပ်စစ်ခွဲစိတ်ခြင်း",
            "ကာဗွန်ကို့ချ်ခြင်းသာ",
            "အေးခဲစေခြင်း",
            "ရေစစ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Less reactive metals are usually extracted by...",
          questionMy:
              "ဓာတ်ပြုနိုင်စွမ်းနည်းသော သတ္တုများကို များသောအားဖြင့် မည်သို့ ထုတ်ယူသနည်း။",
          optionsEn: [
            "Carbon reduction",
            "Electrolysis only",
            "Boiling only",
            "Nothing works",
          ],
          optionsMy: [
            "ကာဗွန်ကို့ချ်ခြင်း",
            "လျှပ်စစ်ခွဲစိတ်ခြင်းသာ",
            "ပြုတ်ခြင်းသာ",
            "မည်သည့်နည်းမျှ အလုပ်မလုပ်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An alloy is a mixture of a metal with...",
          questionMy:
              "အယ်လွိုင်သည် သတ္တုတစ်ခုကို မည်သည့်အရာနှင့် ရောစပ်ထားခြင်းဖြစ်သနည်း။",
          optionsEn: [
            "One or more other elements",
            "Nothing else at all",
            "Only water",
            "Only air",
          ],
          optionsMy: [
            "အခြားဒြပ်စင်တစ်ခု (သို့) တစ်ခုထက်ပို",
            "အခြားမည်သည့်အရာမျှ မပါဝင်",
            "ရေသာ",
            "လေသာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 20 (Capstone): "Inorganic Chemistry Practical Lab"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek20 = CourseWeekDef(
  id: "course-igcse-combsci-w20",
  weekNumber: 20,
  titleEn: "Inorganic Chemistry Practical Lab",
  titleMy: "အဂ္ဂနီဗေဒ ဓာတ်ခွဲခန်း လက်တွေ့စမ်းသပ်မှု",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w20-d1",
      dayNumber: 1,
      titleEn: "Salt Preparation and Ion Tests Quiz",
      titleMy: "ဆားပြင်ဆင်ခြင်းနှင့် အိုင်းယွန်းစမ်းသပ်မှုများ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "An insoluble salt is typically prepared by...",
          questionMy:
              "မပျော်ဝင်နိုင်သော ဆားတစ်ခုကို များသောအားဖြင့် မည်သို့ ပြင်ဆင်သနည်း။",
          optionsEn: [
            "Mixing two soluble solutions to form a precipitate, then filtering, washing, and drying it",
            "Adding excess base to acid and evaporating",
            "Boiling the acid alone with no other reagent",
            "Freezing a soluble salt solution",
          ],
          optionsMy: [
            "ပျော်ဝင်သောဒြပ်ရည်နှစ်ခုကို ရောစပ်ပြီး ကျဆင်းအနည် (precipitate) ဖြစ်စေကာ ရေစစ်၊ ဆေးကြော၊ ခြောက်သွေ့စေခြင်း",
            "အက်ဆစ်ထဲသို့ ဘေ့စ်ပိုလျှံအောင်ထည့်ပြီး အငွေ့ပျံစေခြင်း",
            "အခြားဓာတ်ကူပစ္စည်း မထည့်ဘဲ အက်ဆစ်တစ်ခုတည်းကို ပြုတ်ခြင်း",
            "ပျော်ဝင်သောဆားဒြပ်ရည်ကို အေးခဲစေခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "This method is called precipitation -- it works because the insoluble salt forms as a solid immediately when the two solutions mix.",
            "Unlike a soluble salt, an insoluble salt cannot be crystallised from solution by evaporation.",
          ],
          hintsMy: [
            "ဤနည်းလမ်းကို ကျဆင်းအနည်ဖြစ်စေခြင်း (precipitation) ဟုခေါ်သည် -- ဒြပ်ရည်နှစ်ခု ရောစပ်လိုက်သည်နှင့် မပျော်ဝင်သောဆားသည် အစိုင်အခဲအဖြစ် ချက်ချင်းဖြစ်ပေါ်လာသောကြောင့်ဖြစ်သည်။",
            "ပျော်ဝင်သောဆားနှင့်မတူဘဲ မပျော်ဝင်သောဆားကို အငွေ့ပျံခြင်းဖြင့် ဒြပ်ရည်မှ ပုလင်းအဖြစ် ပြောင်းလဲ၍ မရပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "A flame test is used to identify which type of ion?",
          questionMy:
              "မီးလျှံစမ်းသပ်မှု (Flame Test) ကို မည်သည့်အိုင်းယွန်းအမျိုးအစားကို ဖော်ထုတ်ရန် အသုံးပြုသနည်း။",
          optionsEn: [
            "Certain metal ions, based on a characteristic flame colour",
            "Only negative ions",
            "Only gases",
            "Only water molecules",
          ],
          optionsMy: [
            "ထူးခြားသော မီးလျှံအရောင်ကို အခြေခံ၍ သတ္တုအိုင်းယွန်းအချို့",
            "အနုတ်အိုင်းယွန်းများသာ",
            "ဓာတ်ငွေ့များသာ",
            "ရေမော်လီကျူးများသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Different metal ions produce different distinctive colours when heated strongly in a flame.",
            "For example, sodium ions typically produce a bright orange-yellow flame colour.",
          ],
          hintsMy: [
            "မတူညီသော သတ္တုအိုင်းယွန်းများသည် မီးလျှံထဲတွင် ပြင်းထန်စွာ ပူပေးသောအခါ မတူညီသော ထူးခြားသောအရောင်များ ဖြစ်ပေါ်စေသည်။",
            "ဥပမာအားဖြင့် ဆိုဒီယမ်အိုင်းယွန်းများသည် များသောအားဖြင့် တောက်ပသော လိမ္မော်-အဝါရောင် မီးလျှံအရောင်ကို ဖြစ်ပေါ်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Adding a metal to a solution containing a more reactive metal's ions results in...",
          questionMy:
              "ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းသော သတ္တု၏ အိုင်းယွန်းများပါဝင်သည့် ဒြပ်ရည်ထဲသို့ သတ္တုတစ်ခုထည့်ပါက မည်သည့်အရာ ဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "No reaction at all",
            "A vigorous explosion always",
            "The solution instantly freezes",
            "The metal always dissolves completely",
          ],
          optionsMy: [
            "မည်သည့်တုံ့ပြန်မှုမျှ မရှိပါ",
            "အမြဲတမ်း ပြင်းထန်သောပေါက်ကွဲမှု",
            "ဒြပ်ရည် ချက်ချင်း အေးခဲသွားခြင်း",
            "သတ္တုသည် အမြဲတမ်း လုံးဝ ပျော်ဝင်သွားခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "A less reactive metal cannot displace a more reactive metal from its salt solution.",
            "This is the reverse of a successful displacement reaction, which only happens the other way around.",
          ],
          hintsMy: [
            "ဓာတ်ပြုနိုင်စွမ်းပိုနည်းသော သတ္တုတစ်ခုသည် ဓာတ်ပြုနိုင်စွမ်းပိုကောင်းသော သတ္တုတစ်ခုကို ၎င်း၏ ဆားဒြပ်ရည်မှ အစားမထိုးနိုင်ပါ။",
            "ဤသည်မှာ အောင်မြင်သော အစားထိုးတုံ့ပြန်မှု၏ ပြောင်းပြန်ဖြစ်ပြီး ဆန့်ကျင်ဘက်တွင်သာ ဖြစ်ပေါ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a titration used to prepare a soluble salt from a soluble base, the indicator is used to...",
          questionMy:
              "ပျော်ဝင်သောဘေ့စ်မှ ပျော်ဝင်သောဆားကို ပြင်ဆင်ရန် အသုံးပြုသည့် တိုက်တရေးရှင်း (Titration) တွင် ညွှန်းပစ္စည်းကို မည်သည့်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Show exactly when the acid and base have fully neutralised each other",
            "Add extra colour permanently to the final salt",
            "Speed up the reaction rate",
            "Remove all the water from the solution",
          ],
          optionsMy: [
            "အက်ဆစ်နှင့် ဘေ့စ် တစ်ခုနှင့်တစ်ခု အပြည့်အဝ အာနုမှုချေခဲ့သည့်အချိန်ကို အတိအကျ ပြသရန်",
            "နောက်ဆုံးဆားထဲသို့ အရောင်အပို အမြဲတမ်း ထည့်ပေးရန်",
            "တုံ့ပြန်မှုနှုန်းကို မြန်စေရန်",
            "ဒြပ်ရည်မှ ရေအားလုံးကို ဖယ်ရှားရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The indicator's colour changes at the exact point neutralisation is complete -- this is called the end point.",
            "Once the end point is found, the same volumes can be repeated without the indicator, for a pure salt free of extra colour.",
          ],
          hintsMy: [
            "ညွှန်းပစ္စည်း၏ အရောင်သည် အာနုမှုချေခြင်း ပြီးမြောက်သည့် အချိန်တိကျစွာတွင် ပြောင်းလဲသည် -- ၎င်းကို အဆုံးအမှတ် (end point) ဟုခေါ်သည်။",
            "အဆုံးအမှတ်ကို တွေ့ရှိပြီးနောက် ဒြပ်ရည်ပမာဏတူညီစွာကို ညွှန်းပစ္စည်းမပါဘဲ ထပ်ခါလုပ်နိုင်ပြီး၊ အရောင်အပိုကင်းစင်သော စင်ကြယ်ဆားကို ရရှိစေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w20-d2",
      dayNumber: 2,
      titleEn: "Match the Practical Chemistry Vocabulary",
      titleMy: "လက်တွေ့ဓာတုဗေဒဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w20-dm-1",
          termEn: "Flame Test",
          termMy: "မီးလျှံစမ်းသပ်မှု (Flame Test)",
          matchEn:
              "A test that identifies certain metal ions by the colour they produce in a flame.",
          matchMy:
              "သတ္တုအိုင်းယွန်းအချို့ကို မီးလျှံထဲတွင် ဖြစ်ပေါ်သောအရောင်ဖြင့် ဖော်ထုတ်ပေးသည့် စမ်းသပ်မှု။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w20-dm-2",
          termEn: "Precipitate",
          termMy: "ကျဆင်းအနည် (Precipitate)",
          matchEn: "An insoluble solid that forms when two solutions react.",
          matchMy:
              "ဒြပ်ရည်နှစ်ခု ဓာတ်ပြုသောအခါ ဖြစ်ပေါ်လာသော မပျော်ဝင်နိုင်သောအစိုင်အခဲ။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w20-dm-3",
          termEn: "Insoluble Salt",
          termMy: "မပျော်ဝင်နိုင်သောဆား (Insoluble Salt)",
          matchEn:
              "A salt prepared by precipitation, then filtering, washing, and drying.",
          matchMy:
              "ကျဆင်းအနည်ဖြစ်စေခြင်း၊ ရေစစ်ခြင်း၊ ဆေးကြောခြင်းနှင့် ခြောက်သွေ့စေခြင်းဖြင့် ပြင်ဆင်သော ဆား။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w20-dm-4",
          termEn: "Soluble Salt",
          termMy: "ပျော်ဝင်နိုင်သောဆား (Soluble Salt)",
          matchEn:
              "A salt prepared by evaporating and crystallising a filtered solution.",
          matchMy:
              "ရေစစ်ထားသောဒြပ်ရည်ကို အငွေ့ပျံပြီး ပုလင်းဖြစ်စေခြင်းဖြင့် ပြင်ဆင်သော ဆား။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w20-dm-5",
          termEn: "Titration",
          termMy: "တိုက်တရေးရှင်း (Titration)",
          matchEn:
              "A method using an indicator to find the exact volume needed for neutralisation.",
          matchMy:
              "အာနုမှုချေရန် လိုအပ်သော အတိအကျပမာဏကို ရှာဖွေရန် ညွှန်းပစ္စည်းကို အသုံးပြုသော နည်းလမ်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w20-d3",
      dayNumber: 3,
      titleEn: "Sort: Soluble or Insoluble Salt Preparation?",
      titleMy:
          "စီစစ်ကြမည် - ပျော်ဝင်နိုင်သော (သို့) မပျော်ဝင်နိုင်သောဆား ပြင်ဆင်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Soluble Salt Preparation Method",
          "Insoluble Salt Preparation Method",
        ],
        bucketsMy: [
          "ပျော်ဝင်နိုင်သောဆား ပြင်ဆင်ခြင်းနည်းလမ်း",
          "မပျော်ဝင်နိုင်သောဆား ပြင်ဆင်ခြင်းနည်းလမ်း",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w20-sort-1",
            labelEn: "Add excess insoluble base to warm acid",
            labelMy: "ပူနွေးသောအက်ဆစ်ထဲသို့ ပိုလျှံမပျော်ဝင်သောဘေ့စ် ထည့်ခြင်း",
            correctBucketEn: "Soluble Salt Preparation Method",
            correctBucketMy: "ပျော်ဝင်နိုင်သောဆား ပြင်ဆင်ခြင်းနည်းလမ်း",
          ),
          SortingItem(
            id: "igcsecs-w20-sort-2",
            labelEn: "Filter off unreacted excess solid",
            labelMy: "မတုံ့ပြန်ကျန်ရှိသော ပိုလျှံအစိုင်အခဲကို ရေစစ်ခြင်း",
            correctBucketEn: "Soluble Salt Preparation Method",
            correctBucketMy: "ပျော်ဝင်နိုင်သောဆား ပြင်ဆင်ခြင်းနည်းလမ်း",
          ),
          SortingItem(
            id: "igcsecs-w20-sort-3",
            labelEn: "Evaporate and slowly cool the filtered solution",
            labelMy:
                "ရေစစ်ထားသောဒြပ်ရည်ကို အငွေ့ပျံပြီး ဖြည်းညင်းစွာ အအေးခံခြင်း",
            correctBucketEn: "Soluble Salt Preparation Method",
            correctBucketMy: "ပျော်ဝင်နိုင်သောဆား ပြင်ဆင်ခြင်းနည်းလမ်း",
          ),
          SortingItem(
            id: "igcsecs-w20-sort-4",
            labelEn: "Collect crystals that form after cooling",
            labelMy:
                "အအေးခံပြီးနောက် ဖြစ်ပေါ်လာသော ပုလင်းများကို စုဆောင်းခြင်း",
            correctBucketEn: "Soluble Salt Preparation Method",
            correctBucketMy: "ပျော်ဝင်နိုင်သောဆား ပြင်ဆင်ခြင်းနည်းလမ်း",
          ),
          SortingItem(
            id: "igcsecs-w20-sort-5",
            labelEn: "Mix two soluble solutions together",
            labelMy: "ပျော်ဝင်သောဒြပ်ရည်နှစ်ခုကို အတူတကွ ရောစပ်ခြင်း",
            correctBucketEn: "Insoluble Salt Preparation Method",
            correctBucketMy: "မပျော်ဝင်နိုင်သောဆား ပြင်ဆင်ခြင်းနည်းလမ်း",
          ),
          SortingItem(
            id: "igcsecs-w20-sort-6",
            labelEn: "A precipitate forms immediately when the solutions mix",
            labelMy:
                "ဒြပ်ရည်များ ရောစပ်လိုက်သည်နှင့် ကျဆင်းအနည် ချက်ချင်းဖြစ်ပေါ်လာခြင်း",
            correctBucketEn: "Insoluble Salt Preparation Method",
            correctBucketMy: "မပျော်ဝင်နိုင်သောဆား ပြင်ဆင်ခြင်းနည်းလမ်း",
          ),
          SortingItem(
            id: "igcsecs-w20-sort-7",
            labelEn: "Filter, wash, and dry the solid product",
            labelMy:
                "အစိုင်အခဲထွက်ကုန်ကို ရေစစ်ခြင်း၊ ဆေးကြောခြင်းနှင့် ခြောက်သွေ့စေခြင်း",
            correctBucketEn: "Insoluble Salt Preparation Method",
            correctBucketMy: "မပျော်ဝင်နိုင်သောဆား ပြင်ဆင်ခြင်းနည်းလမ်း",
          ),
          SortingItem(
            id: "igcsecs-w20-sort-8",
            labelEn: "No evaporation step is needed at all",
            labelMy: "အငွေ့ပျံသည့်အဆင့် လုံးဝ မလိုအပ်ခြင်း",
            correctBucketEn: "Insoluble Salt Preparation Method",
            correctBucketMy: "မပျော်ဝင်နိုင်သောဆား ပြင်ဆင်ခြင်းနည်းလမ်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w20-d4",
      dayNumber: 4,
      titleEn: "Reading: Phyo Wai's Unknown Salt Identification",
      titleMy: "စာဖတ်ခြင်း - ဖြိုးဝေ၏ အမည်မသိဆား ဖော်ထုတ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Phyo Wai's Unknown Salt Identification",
        titleMy: "ဖြိုးဝေ၏ အမည်မသိဆား ဖော်ထုတ်ခြင်း",
        passageEn:
            "For the term's final capstone, Phyo Wai was given an unlabelled white salt and had to identify both its metal ion and its negative ion using a combination of chemical tests, exactly the kind of connected problem a real IGCSE exam question would present.\n\nFirst, Phyo Wai dissolved a small sample in water and performed a flame test using a clean wire loop, holding it in a blue Bunsen flame. The flame turned a distinctive lilac-purple colour, which Phyo Wai identified as the characteristic flame colour of potassium ions, immediately narrowing down the metal ion present.\n\nNext, to identify the negative ion, Phyo Wai added a few drops of dilute nitric acid followed by silver nitrate solution to a fresh sample of the dissolved salt. A white precipitate formed immediately, which Phyo Wai recognised as the standard positive test for a chloride ion -- silver chloride is insoluble and forms this white precipitate specifically, while other common negative ions produce differently coloured precipitates or none at all with this test.\n\nCombining both results, Phyo Wai concluded the unknown salt was potassium chloride. Reviewing the full process afterward, Phyo Wai realised the investigation had required exactly the connected reasoning the term had built toward: recognising a specific flame colour required knowing which metal ions produce which colours, and recognising the white precipitate required knowing which reagent test targets which negative ion. Neither test alone was enough -- only combining both correctly identified the complete salt.",
        passageMy:
            "ထိုနှစ်ဝက်၏ နောက်ဆုံးစီမံကိန်းအတွက် ဖြိုးဝေအား အမည်မတပ်ထားသော အဖြူရောင်ဆားတစ်ခုကို ပေးထားပြီး ဓာတုစမ်းသပ်မှု ပေါင်းစပ်မှုကို အသုံးပြု၍ ၎င်း၏ သတ္တုအိုင်းယွန်းနှင့် အနုတ်အိုင်းယွန်း နှစ်မျိုးလုံးကို ဖော်ထုတ်ရမည်ဖြစ်ပြီး၊ ၎င်းသည် တကယ့် IGCSE စာမေးပွဲမေးခွန်းတစ်ခုက တင်ပြမည့် ဆက်စပ်ပြဿနာအမျိုးအစား အတိအကျပင် ဖြစ်သည်။\n\nဦးစွာ ဖြိုးဝေသည် နမူနာအနည်းငယ်ကို ရေထဲတွင် ပျော်ဝင်စေပြီး သန့်ရှင်းသော ကြေးနီကွင်းတစ်ခုကို အသုံးပြု၍ အပြာရောင် ဘွန်ဆင်မီးလျှံထဲတွင် မီးလျှံစမ်းသပ်မှု ပြုလုပ်ခဲ့သည်။ မီးလျှံသည် ထူးခြားသော ခရမ်း-ကျောက်နီရောင် (lilac-purple) သို့ ပြောင်းလဲသွားခဲ့ပြီး၊ ဖြိုးဝေသည် ၎င်းကို ပိုတက်စီယမ်အိုင်းယွန်း၏ ထူးခြားသော မီးလျှံအရောင်အဖြစ် ဖော်ထုတ်ကာ ရှိနေသော သတ္တုအိုင်းယွန်းကို ချက်ချင်းလျှင် ကျဉ်းသွားစေခဲ့သည်။\n\nထို့နောက် အနုတ်အိုင်းယွန်းကို ဖော်ထုတ်ရန် ဖြိုးဝေသည် ပျော်ဝင်ထားသောဆား၏ နမူနာအသစ်တစ်ခုသို့ ရေဖျန်းထားသော နိုက်ထရစ်အက်စစ်စက်အနည်းငယ်ကို ဦးစွာထည့်ပြီး ထို့နောက် ငွေနိုက်ထရိတ်ဒြပ်ရည်ကို ထည့်ပေးခဲ့သည်။ ဖြူသောကျဆင်းအနည်တစ်ခု ချက်ချင်းဖြစ်ပေါ်လာခဲ့ပြီး၊ ဖြိုးဝေသည် ၎င်းကို ကလိုရိုက်အိုင်းယွန်းအတွက် စံသတ်မှတ် အပြုသဘောစမ်းသပ်မှုအဖြစ် ဖော်ထုတ်ခဲ့သည် -- ငွေကလိုရိုက်သည် မပျော်ဝင်နိုင်ပြီး ဤဖြူသောကျဆင်းအနည်ကို အထူးဖြစ်ပေါ်စေသော်လည်း၊ အခြားသာမန် အနုတ်အိုင်းယွန်းများသည် ဤစမ်းသပ်မှုနှင့် အရောင်ကွဲပြားစွာရှိသော ကျဆင်းအနည် (သို့) လုံးဝ ကျဆင်းအနည် ဖြစ်ပေါ်ခြင်းမရှိပါ။\n\nရလဒ်နှစ်ခုစလုံးကို ပေါင်းစပ်ကာ ဖြိုးဝေသည် အမည်မသိဆားသည် ပိုတက်စီယမ်ကလိုရိုက် ဖြစ်ကြောင်း ကောက်ချက်ချခဲ့သည်။ လုပ်ငန်းစဉ်အပြည့်အစုံကို နောက်ပိုင်းတွင် ပြန်လည်စစ်ဆေးကြည့်ရာ ဖြိုးဝေသည် ဤစမ်းသပ်လေ့လာမှုသည် ထိုနှစ်ဝက် တည်ဆောက်ခဲ့သည့် ဆက်စပ်ဆင်ခြင်တွေးခေါ်မှု အတိအကျ လိုအပ်ခဲ့ကြောင်း သဘောပေါက်လာသည်: ထူးခြားသော မီးလျှံအရောင်တစ်ခုကို ဖော်ထုတ်ရန် မည်သည့်သတ္တုအိုင်းယွန်းများက မည်သည့်အရောင်များ ဖြစ်ပေါ်ကြောင်း သိရှိရန် လိုအပ်ပြီး၊ ဖြူသောကျဆင်းအနည်ကို ဖော်ထုတ်ရန် မည်သည့်ဓာတ်ကူပစ္စည်းစမ်းသပ်မှုက မည်သည့်အနုတ်အိုင်းယွန်းကို ပစ်မှတ်ထားကြောင်း သိရှိရန် လိုအပ်ခဲ့သည်။ စမ်းသပ်မှုတစ်ခုတည်းက လုံလောက်ခြင်း မရှိခဲ့ပါ -- နှစ်ခုစလုံးကို မှန်ကန်စွာ ပေါင်းစပ်မှသာ ဆားအပြည့်အစုံကို ဖော်ထုတ်နိုင်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What flame colour did Phyo Wai observe, and what metal ion did it indicate?",
            questionMy:
                "ဖြိုးဝေသည် မည်သည့်မီးလျှံအရောင်ကို တွေ့ခဲ့ပြီး ၎င်းက မည်သည့်သတ္တုအိုင်းယွန်းကို ညွှန်ပြခဲ့သနည်း။",
            optionsEn: [
              "Lilac-purple, indicating potassium",
              "Bright orange, indicating sodium",
              "Brick-red, indicating calcium",
              "Green, indicating copper",
            ],
            optionsMy: [
              "ခရမ်း-ကျောက်နီရောင်၊ ပိုတက်စီယမ်ကို ညွှန်ပြသည်",
              "တောက်ပလိမ္မော်ရောင်၊ ဆိုဒီယမ်ကို ညွှန်ပြသည်",
              "အုတ်နီရောင်၊ ကယ်လစီယမ်ကို ညွှန်ပြသည်",
              "အစိမ်းရောင်၊ ကွန်ပါကို ညွှန်ပြသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the flame test result.",
              "A lilac-purple flame colour is the standard characteristic result for potassium ions.",
            ],
            hintsMy: [
              "မီးလျှံစမ်းသပ်မှုရလဒ်ကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ခရမ်း-ကျောက်နီရောင် မီးလျှံအရောင်သည် ပိုတက်စီယမ်အိုင်းယွန်းများအတွက် စံသတ်မှတ် ထူးခြားသောရလဒ်ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Which negative ion did the white precipitate with silver nitrate indicate?",
            questionMy:
                "ငွေနိုက်ထရိတ်နှင့် ဖြူသောကျဆင်းအနည်သည် မည်သည့်အနုတ်အိုင်းယွန်းကို ညွှန်ပြခဲ့သနည်း။",
            optionsEn: ["Chloride", "Sulfate", "Nitrate", "Carbonate"],
            optionsMy: ["ကလိုရိုက်", "ဆာလဖိတ်", "နိုက်ထရိတ်", "ကာဗွန်နိတ်"],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of the silver nitrate test.",
              "Silver chloride is the specific insoluble compound that forms this white precipitate.",
            ],
            hintsMy: [
              "ငွေနိုက်ထရိတ်စမ်းသပ်မှုကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ငွေကလိုရိုက်သည် ဤဖြူသောကျဆင်းအနည်ကို ဖြစ်ပေါ်စေသော သီးခြားမပျော်ဝင်နိုင်သောဒြပ်ပေါင်းဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn: "What was the full identity of the unknown salt?",
            questionMy: "အမည်မသိဆား၏ အပြည့်အစုံအမည်မှာ အဘယ်နည်း။",
            optionsEn: [
              "Potassium chloride",
              "Sodium sulfate",
              "Copper nitrate",
              "Calcium carbonate",
            ],
            optionsMy: [
              "ပိုတက်စီယမ်ကလိုရိုက်",
              "ဆိုဒီယမ်ဆာလဖိတ်",
              "ကွန်ပါနိုက်ထရိတ်",
              "ကယ်လစီယမ်ကာဗွန်နိတ်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the fourth paragraph's conclusion.",
              "Combine the metal ion from the flame test with the negative ion from the precipitate test.",
            ],
            hintsMy: [
              "စတုတ္ထစာပိုဒ်၏ ကောက်ချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "မီးလျှံစမ်းသပ်မှုမှ သတ္တုအိုင်းယွန်းကို ကျဆင်းအနည်စမ်းသပ်မှုမှ အနုတ်အိုင်းယွန်းနှင့် ပေါင်းစပ်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Phyo Wai conclude that neither test alone was enough?",
            questionMy:
                "စမ်းသပ်မှုတစ်ခုတည်း လုံလောက်ခြင်း မရှိကြောင်း ဖြိုးဝေ အဘယ်ကြောင့် ကောက်ချက်ချခဲ့သနည်း။",
            optionsEn: [
              "Only combining the metal ion and negative ion results correctly identified the complete salt",
              "Neither test actually worked at all",
              "The flame test alone was sufficient on its own",
              "The precipitate test contradicted the flame test",
            ],
            optionsMy: [
              "သတ္တုအိုင်းယွန်းနှင့် အနုတ်အိုင်းယွန်းရလဒ်များကို ပေါင်းစပ်မှသာ ဆားအပြည့်အစုံကို မှန်ကန်စွာ ဖော်ထုတ်နိုင်ခဲ့သောကြောင့်",
              "စမ်းသပ်မှုမည်သည်မှ အမှန်တကယ် လုံးဝ အလုပ်မလုပ်ခဲ့သောကြောင့်",
              "မီးလျှံစမ်းသပ်မှုတစ်ခုတည်းသာ လုံလောက်ခဲ့သောကြောင့်",
              "ကျဆင်းအနည်စမ်းသပ်မှုသည် မီးလျှံစမ်းသပ်မှုနှင့် ဆန့်ကျင်ခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "The flame test identified only the metal ion; the precipitate test identified only the negative ion.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "မီးလျှံစမ်းသပ်မှုသည် သတ္တုအိုင်းယွန်းကိုသာ ဖော်ထုတ်ပြီး ကျဆင်းအနည်စမ်းသပ်မှုသည် အနုတ်အိုင်းယွန်းကိုသာ ဖော်ထုတ်ခဲ့သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w20-d5",
      dayNumber: 5,
      titleEn: "Term 5 Recap: Acids, Bases and Periodic Table",
      titleMy:
          "ပဉ္စမနှစ်ဝက် ပြန်လည်သုံးသပ်ခြင်း - အက်ဆစ်၊ ဘေ့စ်နှင့် ဒြပ်စင်အလှည့်ကျဇယား",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Neutralisation produces salt and...",
          questionMy: "အာနုမှုချေခြင်းက ဆားနှင့် မည်သည့်အရာကို ထုတ်လုပ်သနည်း။",
          optionsEn: ["Water", "Oxygen only", "Nitrogen only", "Nothing else"],
          optionsMy: [
            "ရေ",
            "အောက်ဆီဂျင်သာ",
            "နိုက်ထရိုဂျင်သာ",
            "အခြားမည်သည့်အရာမျှ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Group VII reactivity decreases as you go...",
          questionMy:
              "Group VII ၏ ဓာတ်ပြုနိုင်စွမ်းသည် မည်သို့သွားလျှင် လျော့ကျသနည်း။",
          optionsEn: [
            "Down the group",
            "Up the group",
            "Sideways only",
            "It never decreases",
          ],
          optionsMy: [
            "အုပ်စု၏ အောက်ပိုင်းသို့",
            "အုပ်စု၏ အထက်ပိုင်းသို့",
            "ဘေးတိုက်သာ",
            "ဘယ်တော့မှ မလျော့ကျပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Very reactive metals are extracted using...",
          questionMy:
              "ဓာတ်ပြုနိုင်စွမ်းအလွန်ကောင်းသော သတ္တုများကို မည်သို့ ထုတ်ယူသနည်း။",
          optionsEn: [
            "Electrolysis",
            "Carbon reduction only",
            "Freezing",
            "Nothing works",
          ],
          optionsMy: [
            "လျှပ်စစ်ခွဲစိတ်ခြင်း",
            "ကာဗွန်ကို့ချ်ခြင်းသာ",
            "အေးခဲစေခြင်း",
            "မည်သည့်နည်းမျှ အလုပ်မလုပ်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A flame test identifies certain...",
          questionMy:
              "မီးလျှံစမ်းသပ်မှုသည် မည်သည့်အရာအချို့ကို ဖော်ထုတ်ပေးသနည်း။",
          optionsEn: [
            "Metal ions",
            "Negative ions only",
            "Gases only",
            "Water molecules only",
          ],
          optionsMy: [
            "သတ္တုအိုင်းယွန်းများ",
            "အနုတ်အိုင်းယွန်းများသာ",
            "ဓာတ်ငွေ့များသာ",
            "ရေမော်လီကျူးများသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A white precipitate with silver nitrate typically indicates the presence of...",
          questionMy:
              "ငွေနိုက်ထရိတ်နှင့် ဖြူသောကျဆင်းအနည်သည် များသောအားဖြင့် မည်သည့်အရာ ရှိကြောင်း ညွှန်ပြသနည်း။",
          optionsEn: [
            "Chloride ions",
            "Oxygen gas",
            "Alkali metals",
            "Noble gases",
          ],
          optionsMy: [
            "ကလိုရိုက်အိုင်းယွန်းများ",
            "အောက်ဆီဂျင်ဓာတ်ငွေ့",
            "အာလကာလိသတ္တုများ",
            "နိုဘယ်ဓာတ်ငွေ့များ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 5: "Chemistry - Acids, Bases and Periodic Table" (Weeks 17-20)
// =====================================================================

const CourseTermDef igcseCombinedScienceTerm5 = CourseTermDef(
  id: "course-igcse-combsci-t5",
  termNumber: 5,
  titleEn: "Acids, Bases and Periodic Table",
  titleMy: "အက်ဆစ်၊ ဘေ့စ်နှင့် ဒြပ်စင်အလှည့်ကျဇယား",
  certificateTitleEn: "Acids, Bases and Periodic Table",
  certificateTitleMy: "အက်ဆစ်၊ ဘေ့စ်နှင့် ဒြပ်စင်အလှည့်ကျဇယား",
  weeks: [
    _igcseCombSciWeek17,
    _igcseCombSciWeek18,
    _igcseCombSciWeek19,
    _igcseCombSciWeek20,
  ],
);
