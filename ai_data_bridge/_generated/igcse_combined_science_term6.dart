// File: ai_data_bridge/_generated/igcse_combined_science_term6.dart
// IGCSE Combined Science -- Term 6: "Physics - Thermal Physics and Waves"
// (Weeks 21-24), authored from the corrected weekly topic map in
// ai_data_bridge/igcse_combined_science_all_terms.dart.
// Staging artifact only -- not yet wired into course_pathway_bank.dart's
// Grade.igcse pathway. Follows the exact DailyLessonDef/CourseWeekDef/
// CourseTermDef schema and id/xp conventions established by Terms 1-5
// (igcse_combined_science_term1.dart through
// igcse_combined_science_term5.dart) and _secondary3SciencePathway,
// including its rotating cast of named Myanmar-student protagonists
// (one per week's reading passage, not a single fixed character).
//
// Week 21 (Thermal Energy and Conduction): conduction, convection,
// radiation, thermal insulation, state changes and latent heat. Week 22
// (General Properties of Waves): transverse and longitudinal waves, the
// wave equation v = f(lambda), reflection and refraction. Week 23 (Light
// and Sound Waves): refraction of light, total internal reflection,
// sound waves and ultrasound. Week 24 (Capstone -- Optics and Waves
// Practical Lab): Snell's law style critical-angle experiments, ripple
// tank wave studies, and mixed exam practice across the whole term.

import 'package:nova_academy/features/lessons/course_pathway_bank.dart';
import 'package:nova_academy/features/lessons/interactive_content_models.dart';
import 'package:nova_academy/features/lessons/mock_quiz_data.dart';

// =====================================================================
// Week 21: "Thermal Energy and Conduction"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek21 = CourseWeekDef(
  id: "course-igcse-combsci-w21",
  weekNumber: 21,
  titleEn: "Thermal Energy and Conduction",
  titleMy: "အပူစွမ်းအင်နှင့် အပူကူးပြောင်းခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w21-d1",
      dayNumber: 1,
      titleEn: "Conduction, Convection and Radiation Quiz",
      titleMy: "အပူကူးပြောင်းမှုနည်းလမ်းသုံးမျိုး ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Heat transfer through a solid, such as a metal rod, happens mainly by...",
          questionMy:
              "သတ္တုတန်းကဲ့သို့ အစိုင်အခဲတစ်ခုတစ်ဆင့် အပူကူးပြောင်းခြင်းသည် အဓိကအားဖြင့် မည်သည့်နည်းဖြင့် ဖြစ်ပေါ်သနည်း။",
          optionsEn: ["Conduction", "Convection", "Radiation", "Evaporation"],
          optionsMy: [
            "ကွန်ဒတ်ရှင်း (Conduction)",
            "ကွန်ဗက်ရှင်း (Convection)",
            "ရေဒီယေးရှင်း (Radiation)",
            "အငွေ့ပျံခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Particles in a solid are fixed close together and vibrate more when heated, passing energy to neighbouring particles.",
            "Metals also have free electrons that carry thermal energy quickly through the material, which is why metals conduct heat especially well.",
          ],
          hintsMy: [
            "အစိုင်အခဲထဲရှိ အမှုန်များသည် တစ်ခုနှင့်တစ်ခု နီးနီးကပ်ကပ်တွယ်ကပ်နေပြီး ပူသောအခါ ပို၍တုန်ခါကာ အနီးအနားအမှုန်များသို့ စွမ်းအင်ကူးပေးသည်။",
            "သတ္တုများတွင် အပူစွမ်းအင်ကို လျင်မြန်စွာ သယ်ဆောင်ပေးသော လွတ်လပ်အီလက်ထရွန်များလည်း ရှိသောကြောင့် သတ္တုများသည် အပူကို အထူးကောင်းစွာ ကူးပြောင်းနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Convection currents form in a fluid because...",
          questionMy:
              "ရေစီးဓာတ် (fluid) တစ်ခုအတွင်း ကွန်ဗက်ရှင်းရေစီးကြောင်းများ ဖြစ်ပေါ်ရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Heated fluid expands, becomes less dense, and rises, while cooler denser fluid sinks",
            "Heated fluid always becomes denser and sinks",
            "Fluids cannot transfer thermal energy at all",
            "Convection only happens inside solids",
          ],
          optionsMy: [
            "ပူသောရေစီးဓာတ်သည် ကျယ်ပြန့်လာပြီး သိပ်သည်းဆလျော့ကာ တက်လာသောအခါ အေးသော သိပ်သည်းဆပိုများသည့်ရေစီးဓာတ်က နစ်ဆင်းလာသည်",
            "ပူသောရေစီးဓာတ်သည် အမြဲတမ်း သိပ်သည်းဆပိုများပြီး နစ်ဆင်းသည်",
            "ရေစီးဓာတ်များသည် အပူစွမ်းအင်ကို လုံးဝ မကူးပြောင်းနိုင်ပါ",
            "ကွန်ဗက်ရှင်းသည် အစိုင်အခဲများအတွင်းမှာသာ ဖြစ်ပေါ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "As a fluid is heated, its particles spread out and take up more space, so the same mass occupies more volume -- lower density.",
            "The less dense warm fluid is pushed upward by the surrounding cooler, denser fluid sinking beneath it, setting up a circulating current.",
          ],
          hintsMy: [
            "ရေစီးဓာတ်ကို ပူပေးသောအခါ ၎င်း၏ အမှုန်များသည် ကျယ်ပြန့်ကာ နေရာပိုယူသောကြောင့် ထုထည်တူညီသော်လည်း ပမာဏပို၍ ယူသည် -- သိပ်သည်းဆနည်းလာသည်။",
            "သိပ်သည်းဆနည်းသော ပူသောရေစီးဓာတ်ကို ၎င်း၏ အောက်ခြေတွင် နစ်ဆင်းလာသော အေးသောသိပ်သည်းဆပိုများသည့် ရေစီးဓာတ်က အထက်သို့ တွန်းတင်ပေးသဖြင့် လည်ပတ်သောရေစီးကြောင်းတစ်ခု ဖြစ်ပေါ်လာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which method of heat transfer can travel through a vacuum, with no medium at all?",
          questionMy:
              "မည်သည့်အပူကူးပြောင်းမှုနည်းလမ်းသည် အလွတ်ဟင်းလင်းအာကာသ (vacuum) တစ်ခုတွင် မည်သည့်အလယ်အလတ်ပစ္စည်းမျှမပါဘဲ ခရီးသွားနိုင်သနည်း။",
          optionsEn: ["Radiation", "Conduction", "Convection", "None of these"],
          optionsMy: [
            "ရေဒီယေးရှင်း (Radiation)",
            "ကွန်ဒတ်ရှင်း (Conduction)",
            "ကွန်ဗက်ရှင်း (Convection)",
            "အထက်ပါမည်သည့်နည်းမျှမဟုတ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Radiation transfers thermal energy as infrared electromagnetic waves, which do not need particles to travel.",
            "This is exactly how thermal energy from the Sun reaches Earth across empty space.",
          ],
          hintsMy: [
            "ရေဒီယေးရှင်းသည် အပူစွမ်းအင်ကို အင်ဖရာရက် လျှပ်စစ်သံလိုက်လှိုင်းများအဖြစ် ကူးပြောင်းပေးပြီး ခရီးသွားရန် အမှုန်များ မလိုအပ်ပါ။",
            "ဤသည်မှာ နေမှ အပူစွမ်းအင် ဟင်းလင်းအာကာသကိုဖြတ်၍ ကမ္ဘာသို့ ဆိုက်ရောက်ပုံ အတိအကျပင် ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A good thermal insulator, such as wool or foam, works mainly by...",
          questionMy:
              "သိုးမွှေးနွယ် (သို့) ဖေါင်းကဲ့သို့သော ကောင်းမွန်သော အပူလွှတ်ကာအဖြစ် အဓိကအားဖြင့် မည်သို့ လုပ်ဆောင်သနည်း။",
          optionsEn: [
            "Trapping pockets of still air, which conducts heat poorly and cannot circulate easily to convect",
            "Conducting heat rapidly through its solid particles",
            "Being made only from metal",
            "Having no particles at all",
          ],
          optionsMy: [
            "မလှုပ်ရှားသော လေအိတ်ငယ်များကို ချုပ်ကိုင်ထားခြင်းဖြင့် -- လေသည် အပူကို ညံ့ဖျင်းစွာသာ ကူးပြောင်းပြီး လွယ်ကူစွာလည်ပတ်နိုင်သည်မဟုတ်",
            "၎င်း၏ အစိုင်အခဲအမှုန်များကို ဖြတ်၍ အပူကို လျင်မြန်စွာ ကူးပြောင်းခြင်းဖြင့်",
            "သတ္တုဖြင့်သာ ပြုလုပ်ထားခြင်းဖြင့်",
            "မည်သည့်အမှုန်မျှ လုံးဝမရှိခြင်းဖြင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Air particles are far apart, so conduction through trapped air is very slow compared to through a solid.",
            "Because the air is trapped in small pockets, it also cannot circulate freely, which limits heat loss by convection too.",
          ],
          hintsMy: [
            "လေအမှုန်များသည် အလှမ်းကွာနေသောကြောင့် ချုပ်ကိုင်ထားသောလေထဲမှ ကွန်ဒတ်ရှင်းသည် အစိုင်အခဲတစ်ခုနှင့် နှိုင်းယှဉ်ပါက အလွန်နှေးသည်။",
            "လေကို လေအိတ်ငယ်များအတွင်း ချုပ်ကိုင်ထားသောကြောင့် လွတ်လပ်စွာလည်ပတ်၍ မရနိုင်သဖြင့် ကွန်ဗက်ရှင်းဖြင့် အပူဆုံးရှုံးမှုကိုလည်း ကန့်သတ်ပေးသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w21-d2",
      dayNumber: 2,
      titleEn: "Match the Thermal Physics Vocabulary",
      titleMy: "အပူရူပဗေဒ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w21-dm-1",
          termEn: "Conduction",
          termMy: "ကွန်ဒတ်ရှင်း (Conduction)",
          matchEn:
              "Transfer of thermal energy through a material as vibrating particles pass energy to their neighbours, without the particles themselves moving from place to place.",
          matchMy:
              "အမှုန်များကိုယ်တိုင် နေရာပြောင်းရွှေ့ခြင်းမရှိဘဲ တုန်ခါနေသော အမှုန်များက အနီးအနားသို့ စွမ်းအင်ကူးပေးခြင်းဖြင့် ပစ္စည်းတစ်ခုတစ်ဆင့် အပူစွမ်းအင် ကူးပြောင်းခြင်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w21-dm-2",
          termEn: "Convection",
          termMy: "ကွန်ဗက်ရှင်း (Convection)",
          matchEn:
              "Transfer of thermal energy through a fluid by the bulk movement of warmer, less dense fluid rising and cooler, denser fluid sinking.",
          matchMy:
              "ပူသော သိပ်သည်းဆနည်းသည့် ရေစီးဓာတ်တက်လာခြင်းနှင့် အေးသော သိပ်သည်းဆပိုများသည့်ရေစီးဓာတ်နစ်ဆင်းခြင်းတို့၏ အစုလိုက်ရွေ့လျားမှုဖြင့် ရေစီးဓာတ်တစ်ခုတစ်ဆင့် အပူစွမ်းအင် ကူးပြောင်းခြင်း။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w21-dm-3",
          termEn: "Radiation",
          termMy: "ရေဒီယေးရှင်း (Radiation)",
          matchEn:
              "Transfer of thermal energy by electromagnetic waves that can travel through a vacuum.",
          matchMy:
              "အလွတ်ဟင်းလင်းအာကာသကို ဖြတ်သန်းနိုင်သော လျှပ်စစ်သံလိုက်လှိုင်းများဖြင့် အပူစွမ်းအင် ကူးပြောင်းခြင်း။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w21-dm-4",
          termEn: "Thermal Insulator",
          termMy: "အပူလွှတ်ကာ (Thermal Insulator)",
          matchEn:
              "A material, often containing trapped pockets of air, that reduces the rate of heat transfer.",
          matchMy:
              "အများအားဖြင့် ချုပ်ကိုင်ထားသော လေအိတ်ငယ်များပါဝင်ပြီး အပူကူးပြောင်းနှုန်းကို လျှော့ချပေးသော ပစ္စည်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w21-dm-5",
          termEn: "Latent Heat",
          termMy: "ကွယ်ဝှက်အပူ (Latent Heat)",
          matchEn:
              "The energy absorbed or released when a substance changes state, without any change in temperature.",
          matchMy:
              "အပူချိန် မည်သို့မျှပြောင်းလဲခြင်းမရှိဘဲ ဒြပ်ဝတ္ထုတစ်ခု အခြေအနေပြောင်းလဲသောအခါ စုပ်ယူ (သို့) လွှတ်ထုတ်လိုက်သည့် စွမ်းအင်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w21-d3",
      dayNumber: 3,
      titleEn: "Sort: Conduction, Convection, or Radiation?",
      titleMy: "စီစစ်ကြမည် - ကွန်ဒတ်ရှင်း၊ ကွန်ဗက်ရှင်း၊ (သို့) ရေဒီယေးရှင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Conduction", "Convection", "Radiation"],
        bucketsMy: ["ကွန်ဒတ်ရှင်း", "ကွန်ဗက်ရှင်း", "ရေဒီယေးရှင်း"],
        items: [
          SortingItem(
            id: "igcsecs-w21-sort-1",
            labelEn: "Heat travelling along a metal spoon left in hot soup",
            labelMy:
                "ပူသောဟင်းချိုထဲ ထားထားသော သတ္တုဇွန်းတစ်လျှောက် အပူသွားခြင်း",
            correctBucketEn: "Conduction",
            correctBucketMy: "ကွန်ဒတ်ရှင်း",
          ),
          SortingItem(
            id: "igcsecs-w21-sort-2",
            labelEn:
                "Warm air rising above a radiator and circulating around a room",
            labelMy:
                "ပူသောလေသည် ရေဒီယေတာအထက်တွင်တက်ပြီး အခန်းတစ်ခုလုံးတွင် လည်ပတ်ခြင်း",
            correctBucketEn: "Convection",
            correctBucketMy: "ကွန်ဗက်ရှင်း",
          ),
          SortingItem(
            id: "igcsecs-w21-sort-3",
            labelEn: "Feeling the warmth of a bonfire without touching it",
            labelMy: "မထိတွေ့ဘဲ မီးအိုင်ကြီးတစ်ခု၏ ပူနွေးမှုကို ခံစားရခြင်း",
            correctBucketEn: "Radiation",
            correctBucketMy: "ရေဒီယေးရှင်း",
          ),
          SortingItem(
            id: "igcsecs-w21-sort-4",
            labelEn: "Heat spreading through an iron rod held in a flame",
            labelMy: "မီးလျှံထဲထားသော သံတန်းတစ်ခုတစ်ဆင့် အပူပျံ့နှံ့ခြင်း",
            correctBucketEn: "Conduction",
            correctBucketMy: "ကွန်ဒတ်ရှင်း",
          ),
          SortingItem(
            id: "igcsecs-w21-sort-5",
            labelEn:
                "Water in a kettle heating unevenly as hot water rises to the top",
            labelMy:
                "ပူသောရေသည် အပေါ်သို့တက်လာသည်နှင့်အတူ ကက်ဆယ်ထဲရေ တစ်သားတည်းမဟုတ်ဘဲ ပူလာခြင်း",
            correctBucketEn: "Convection",
            correctBucketMy: "ကွန်ဗက်ရှင်း",
          ),
          SortingItem(
            id: "igcsecs-w21-sort-6",
            labelEn: "Sunlight warming your skin on a sunny day",
            labelMy: "နေသာသောနေ့တွင် နေရောင်ခြည်က အသားအရေကို နွေးထွေးစေခြင်း",
            correctBucketEn: "Radiation",
            correctBucketMy: "ရေဒီယေးရှင်း",
          ),
          SortingItem(
            id: "igcsecs-w21-sort-7",
            labelEn:
                "A saucepan handle becoming hot even though it never touches the flame",
            labelMy:
                "မီးလျှံနှင့် တစ်ကြိမ်မျှ မထိသော်လည်း အိုးလက်ကိုင်ပူလာခြင်း",
            correctBucketEn: "Conduction",
            correctBucketMy: "ကွန်ဒတ်ရှင်း",
          ),
          SortingItem(
            id: "igcsecs-w21-sort-8",
            labelEn:
                "Sea breezes forming as warm air over land rises and cooler air moves in from the sea",
            labelMy:
                "ကုန်းပေါ်ရှိ ပူသောလေတက်ပြီး ပင်လယ်မှ အေးသောလေဝင်လာသောအခါ ပင်လယ်လေ ဖြစ်ပေါ်ခြင်း",
            correctBucketEn: "Convection",
            correctBucketMy: "ကွန်ဗက်ရှင်း",
          ),
          SortingItem(
            id: "igcsecs-w21-sort-9",
            labelEn:
                "Thermal energy reaching Earth from the Sun across empty space",
            labelMy:
                "နေမှ အပူစွမ်းအင် ဟင်းလင်းအာကာသကိုဖြတ်၍ ကမ္ဘာသို့ ဆိုက်ရောက်ခြင်း",
            correctBucketEn: "Radiation",
            correctBucketMy: "ရေဒီယေးရှင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w21-d4",
      dayNumber: 4,
      titleEn: "Reading: Pyae Sone's Insulation Cooling Investigation",
      titleMy: "စာဖတ်ခြင်း - ပြည့်စုံ၏ အပူလွှတ်ကာ အအေးခံခြင်း စူးစမ်းလေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Pyae Sone's Insulation Cooling Investigation",
        titleMy: "ပြည့်စုံ၏ အပူလွှတ်ကာ အအေးခံခြင်း စူးစမ်းလေ့လာမှု",
        passageEn:
            "For his thermal physics practical, Pyae Sone investigated how effective insulation slows down heat loss. He filled two identical beakers with the same volume of water at the same starting temperature: one beaker he left bare, and the other he wrapped snugly in a thick layer of cotton wool held in place with an elastic band, leaving only a small gap at the top for a thermometer.\n\nPyae Sone measured the temperature of both beakers every two minutes for twenty minutes, keeping both beakers on the same bench in the same room so that the surrounding air temperature was identical for each. When he plotted both sets of readings on the same graph, the bare beaker's cooling curve fell noticeably more steeply than the wrapped beaker's curve, which stayed warmer for much longer.\n\nPyae Sone explained the result using all three methods of heat transfer: the trapped air pockets within the cotton wool conducted heat very poorly, and because the air was held still within the fibres, it could not set up convection currents to carry heat away either. In a follow-up test, Pyae Sone also compared a beaker wrapped in shiny aluminium foil against one wrapped in dull black paper of the same thickness -- the dull black surface cooled faster, since dull, matte surfaces are better emitters of thermal radiation than shiny, reflective ones. His teacher noted that this is exactly why a real vacuum flask combines several of these ideas at once: a vacuum layer to block conduction and convection almost entirely, and a shiny inner surface to minimise radiation.",
        passageMy:
            "ပြည့်စုံ၏ အပူရူပဗေဒ လက်တွေ့စမ်းသပ်မှုအတွက် သူသည် ထိရောက်သော အပူလွှတ်ကာသည် အပူဆုံးရှုံးမှုကို မည်သို့နှေးကွေးစေကြောင်း စူးစမ်းလေ့လာခဲ့သည်။ သူသည် တူညီသောအပူချိန်ရှိ ရေပမာဏတူညီစွာကို ဖန်ခွက်တူနှစ်ခုထဲ ထည့်ခဲ့ပြီး -- တစ်ခုကို လွတ်လွတ်ထားခဲ့ကာ အခြားတစ်ခုကို ထူသော ဂွမ်းအလွှာတစ်ခုဖြင့် ဆက်ကပ်စွာ ပတ်ရစ်ကာ ရာဘာကြိုးဖြင့် တင်းကျပ်စွာ ပတ်ထားခဲ့ပြီး၊ အပေါ်ဆုံးတွင် အပူတိုင်းကရိယာအတွက် ကွက်လပ်ငယ်တစ်ခုသာ ချန်ထားခဲ့သည်။\n\nပြည့်စုံသည် ဖန်ခွက်နှစ်ခုစလုံး၏ အပူချိန်ကို နှစ်မိနစ်တစ်ကြိမ် နှစ်ဆယ်မိနစ်တိုင် တိုင်းတာခဲ့ပြီး၊ ဖန်ခွက်နှစ်ခုစလုံးကို အခန်းတစ်ခုတည်းရှိ စားပွဲတစ်ခုတည်းပေါ်တွင် ထားရှိကာ ပတ်ဝန်းကျင်လေထုအပူချိန်ကို တစ်ခုစီအတွက် တူညီအောင် ထိန်းချုပ်ခဲ့သည်။ ဒေတာအစုံနှစ်ခုစလုံးကို ဂရပ်တစ်ခုတည်းပေါ်တွင် ချထားလိုက်သောအခါ လွတ်လွတ်ဖန်ခွက်၏ အအေးခံခြင်းမျဉ်းသည် ဂွမ်းပတ်ထားသောဖန်ခွက်၏ မျဉ်းထက် ပိုမိုစူးစူးရဲရဲ ကျဆင်းခဲ့ပြီး၊ ဂွမ်းပတ်ထားသောဖန်ခွက်သည် ပို၍ပင် ကြာမြင့်စွာ ပူနွေးနေခဲ့သည်။\n\nပြည့်စုံသည် ရလဒ်ကို အပူကူးပြောင်းမှုနည်းလမ်းသုံးမျိုးလုံးဖြင့် ရှင်းပြခဲ့သည်: ဂွမ်းအတွင်းရှိ ချုပ်ကိုင်ထားသော လေအိတ်ငယ်များသည် အပူကို အလွန်ညံ့ဖျင်းစွာသာ ကူးပြောင်းပြီး၊ လေကို အမျှင်များအတွင်း မလှုပ်ရှားစေဘဲ ချုပ်ကိုင်ထားသောကြောင့် အပူကို သယ်ဆောင်ရန် ကွန်ဗက်ရှင်းရေစီးကြောင်းများ လည်း ဖြစ်ပေါ်စေနိုင်ခြင်းမရှိပါ။ နောက်ဆက်တွဲစမ်းသပ်မှုတစ်ခုတွင် ပြည့်စုံသည် တောက်ပသော အလူမီနီယမ်ပါးလွှာဖြင့် ပတ်ထားသောဖန်ခွက်နှင့် အထူတူညီသော မှိန်သော အနက်ရောင်စာရွက်ဖြင့် ပတ်ထားသောဖန်ခွက်ကို နှိုင်းယှဉ်ခဲ့ပြီး -- မှိန်သောအနက်ရောင် မျက်နှာပြင်သည် ပို၍မြန်စွာ အအေးခံသွားခဲ့သည်၊ အကြောင်းမှာ မှိန်ပြီး ပြောင်ပြောင်တင်းတင်းမရှိသော မျက်နှာပြင်များသည် တောက်ပ၍ ရောင်ပြန်ဟပ်တတ်သော မျက်နှာပြင်များထက် အပူရေဒီယေးရှင်းကို ပို၍ကောင်းစွာ လွှတ်ထုတ်နိုင်ကြောင်းဖြစ်သည်။ သူ၏ဆရာက ဤအချက်သည် ပကတိဗက်ကျူးမ်ဗူးတစ်လုံးသည် အယူအဆများစွာကို တစ်ပြိုင်နက် ပေါင်းစပ်ထားပုံနှင့် အတိအကျ ကိုက်ညီကြောင်း မှတ်ချက်ပေးခဲ့သည် -- ကွန်ဒတ်ရှင်းနှင့် ကွန်ဗက်ရှင်းကို နီးပါးလုံးဝ ပိတ်ဆို့ပေးသော ဗက်ကျူးမ်အလွှာနှင့် ရေဒီယေးရှင်းကို အနည်းဆုံးဖြစ်စေရန် အတွင်းပိုင်း တောက်ပမျက်နှာပြင်တို့ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Why did the wrapped beaker stay warmer for longer than the bare beaker?",
            questionMy:
                "ဂွမ်းပတ်ထားသောဖန်ခွက်သည် လွတ်လွတ်ဖန်ခွက်ထက် အဘယ်ကြောင့် ပို၍ကြာမြင့်စွာ ပူနွေးနေခဲ့သနည်း။",
            optionsEn: [
              "The trapped, still air in the cotton wool conducted heat poorly and could not set up convection currents",
              "The wrapped beaker contained more water",
              "The bare beaker was placed in a colder room",
              "Cotton wool actually generates its own heat",
            ],
            optionsMy: [
              "ဂွမ်းအတွင်းရှိ ချုပ်ကိုင်ထားသော မလှုပ်ရှားသောလေသည် အပူကို ညံ့ဖျင်းစွာသာ ကူးပြောင်းပြီး ကွန်ဗက်ရှင်းရေစီးကြောင်းများ ဖြစ်ပေါ်စေနိုင်ခြင်းမရှိခြင်း",
              "ဂွမ်းပတ်ထားသောဖန်ခွက်တွင် ရေပိုများသောကြောင့်",
              "လွတ်လွတ်ဖန်ခွက်ကို အအေးပိုသောအခန်းထဲတွင် ထားရှိခဲ့သောကြောင့်",
              "ဂွမ်းသည် ၎င်း၏ကိုယ်ပိုင်အပူကို အမှန်တကယ် ထုတ်လုပ်နိုင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation using conduction and convection.",
              "Trapping air stops it circulating (no convection) and air itself conducts heat very slowly.",
            ],
            hintsMy: [
              "ကွန်ဒတ်ရှင်းနှင့် ကွန်ဗက်ရှင်းကိုအသုံးပြု၍ ရှင်းပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "လေကို ချုပ်ကိုင်ထားခြင်းက လည်ပတ်ခြင်းကို တားဆီးသည် (ကွန်ဗက်ရှင်းမရှိ) ပြီး လေကိုယ်တိုင်လည်း အပူကို အလွန်နှေးကွေးစွာသာ ကူးပြောင်းသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did the shiny foil versus dull black paper comparison show?",
            questionMy:
                "တောက်ပသောပါးလွှာနှင့် မှိန်သောအနက်ရောင်စာရွက် နှိုင်းယှဉ်မှုက အဘယ်အရာကို ပြသခဲ့သနည်း။",
            optionsEn: [
              "Dull, matte black surfaces are better emitters of thermal radiation than shiny, reflective surfaces",
              "Shiny surfaces always heat up faster than dull surfaces",
              "Surface colour has no effect on radiation at all",
              "Foil is a better thermal insulator than cotton wool",
            ],
            optionsMy: [
              "မှိန်ပြီး ပြောင်ပြောင်တင်းတင်းမရှိသော အနက်ရောင်မျက်နှာပြင်များသည် တောက်ပ၍ ရောင်ပြန်ဟပ်တတ်သော မျက်နှာပြင်များထက် အပူရေဒီယေးရှင်းကို ပို၍ကောင်းစွာ လွှတ်ထုတ်နိုင်သည်",
              "တောက်ပသောမျက်နှာပြင်များသည် မှိန်သောမျက်နှာပြင်များထက် အမြဲတမ်း ပိုမြန်စွာ ပူလာသည်",
              "မျက်နှာပြင်၏အရောင်သည် ရေဒီယေးရှင်းအပေါ် လုံးဝ သက်ရောက်မှုမရှိပါ",
              "ပါးလွှာသည် ဂွမ်းထက် ပိုကောင်းသော အပူလွှတ်ကာဖြစ်သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's follow-up comparison between the foil and black paper.",
              "The dull black beaker cooled faster because it emitted radiation more efficiently.",
            ],
            hintsMy: [
              "ပါးလွှာနှင့် အနက်ရောင်စာရွက်ကြား နောက်ဆက်တွဲနှိုင်းယှဉ်မှုကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "မှိန်သောအနက်ရောင်ဖန်ခွက်သည် ရေဒီယေးရှင်းကို ပို၍ထိရောက်စွာ လွှတ်ထုတ်နိုင်သောကြောင့် ပို၍မြန်စွာ အအေးခံသွားခဲ့သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Which variables did Pyae Sone deliberately keep the same for both beakers?",
            questionMy:
                "ဖန်ခွက်နှစ်ခုစလုံးအတွက် ပြည့်စုံ ရည်ရွယ်ချက်ရှိရှိ မည်သည့်အချက်များကို တူညီအောင် ထိန်းထားခဲ့သနည်း။",
            optionsEn: [
              "The volume of water, the starting temperature, and the surrounding room temperature",
              "The colour of the beakers only",
              "The type of thermometer used only",
              "Nothing was kept the same",
            ],
            optionsMy: [
              "ရေပမာဏ၊ အစပိုင်း အပူချိန်နှင့် ပတ်ဝန်းကျင်အခန်းအပူချိန်",
              "ဖန်ခွက်များ၏ အရောင်သာ",
              "အသုံးပြုသော အပူတိုင်းကရိယာအမျိုးအစားသာ",
              "မည်သည့်အရာမျှ တူညီအောင် ထိန်းထားခြင်းမရှိပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the fair-test setup.",
              "Keeping these control variables constant means any difference in cooling can be attributed to the insulation alone.",
            ],
            hintsMy: [
              "မျှတသောစမ်းသပ်မှုစနစ်ကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤထိန်းချုပ်အချက်များကို အမြဲတူညီအောင်ထားခြင်းက အအေးခံမှုကွာခြားချက်ကို အပူလွှတ်ကာတစ်ခုတည်း၏ သက်ရောက်မှုအဖြစ် သတ်မှတ်နိုင်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to Pyae Sone's teacher, how does a real vacuum flask apply these ideas?",
            questionMy:
                "ပြည့်စုံ၏ဆရာအဆိုအရ ပကတိဗက်ကျူးမ်ဗူးသည် ဤအယူအဆများကို မည်သို့ အသုံးချထားသနည်း။",
            optionsEn: [
              "A vacuum layer blocks conduction and convection, while a shiny inner surface minimises radiation",
              "It uses only a thick layer of cotton wool",
              "It relies entirely on convection to keep drinks hot",
              "It has no connection to conduction, convection, or radiation",
            ],
            optionsMy: [
              "ဗက်ကျူးမ်အလွှာသည် ကွန်ဒတ်ရှင်းနှင့် ကွန်ဗက်ရှင်းကို ပိတ်ဆို့ပေးပြီး တောက်ပသော အတွင်းပိုင်းမျက်နှာပြင်သည် ရေဒီယေးရှင်းကို အနည်းဆုံးဖြစ်စေသည်",
              "ထူသောဂွမ်းအလွှာတစ်ခုကိုသာ အသုံးပြုသည်",
              "ဖျော်ရည်များကို ပူနွေးအောင်ထားရန် ကွန်ဗက်ရှင်းကိုသာ လုံးဝမှီခိုသည်",
              "ကွန်ဒတ်ရှင်း၊ ကွန်ဗက်ရှင်း (သို့) ရေဒီယေးရှင်းနှင့် မည်သည့်ဆက်စပ်မှုမျှမရှိပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "A vacuum flask combines all three ideas from the investigation at once, one solution per heat-transfer method.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ဗက်ကျူးမ်ဗူးသည် စူးစမ်းလေ့လာမှုမှ အယူအဆသုံးမျိုးလုံးကို တစ်ပြိုင်နက် ပေါင်းစပ်ထားပြီး အပူကူးပြောင်းမှုနည်းလမ်းတစ်ခုစီအတွက် ဖြေရှင်းချက်တစ်ခုစီပါဝင်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w21-d5",
      dayNumber: 5,
      titleEn: "Week 21 Recap: Thermal Energy and Conduction",
      titleMy:
          "အပတ်စဉ် ၂၁ ပြန်လည်သုံးသပ်ခြင်း - အပူစွမ်းအင်နှင့် အပူကူးပြောင်းခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Heat travels through solids mainly by...",
          questionMy:
              "အစိုင်အခဲများတစ်ဆင့် အပူသည် အဓိကအားဖြင့် မည်သို့ ခရီးသွားသနည်း။",
          optionsEn: [
            "Conduction",
            "Convection",
            "Radiation",
            "It cannot travel",
          ],
          optionsMy: [
            "ကွန်ဒတ်ရှင်း",
            "ကွန်ဗက်ရှင်း",
            "ရေဒီယေးရှင်း",
            "ခရီးမသွားနိုင်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Convection can only take place in...",
          questionMy: "ကွန်ဗက်ရှင်းသည် မည်သည့်နေရာတွင်သာ ဖြစ်ပေါ်နိုင်သနည်း။",
          optionsEn: [
            "Fluids (liquids and gases)",
            "Solids only",
            "A vacuum only",
            "Nowhere",
          ],
          optionsMy: [
            "ရေစီးဓာတ်များ (အရည်နှင့်ဓာတ်ငွေ့)",
            "အစိုင်အခဲများသာ",
            "ဗက်ကျူးမ်သာ",
            "မည်သည့်နေရာမျှမဟုတ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Radiation can travel through...",
          questionMy: "ရေဒီယေးရှင်းသည် မည်သည့်နေရာကို ဖြတ်သန်းနိုင်သနည်း။",
          optionsEn: [
            "A vacuum",
            "Only solids",
            "Only liquids",
            "Nothing at all",
          ],
          optionsMy: [
            "ဗက်ကျူးမ်",
            "အစိုင်အခဲများသာ",
            "အရည်များသာ",
            "မည်သည့်အရာမျှမဟုတ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A thermal insulator reduces heat loss mainly by...",
          questionMy:
              "အပူလွှတ်ကာသည် အပူဆုံးရှုံးမှုကို အဓိကအားဖြင့် မည်သို့ လျှော့ချပေးသနည်း။",
          optionsEn: [
            "Trapping still air, which conducts poorly and cannot convect",
            "Conducting heat rapidly",
            "Being made of metal",
            "Absorbing all radiation instantly",
          ],
          optionsMy: [
            "မလှုပ်ရှားသောလေကို ချုပ်ကိုင်ထားခြင်းဖြင့် -- ညံ့ဖျင်းစွာသာ ကူးပြောင်းပြီး ကွန်ဗက်ရှင်းလည်း မဖြစ်နိုင်",
            "အပူကို လျင်မြန်စွာ ကူးပြောင်းခြင်းဖြင့်",
            "သတ္တုဖြင့် ပြုလုပ်ထားခြင်းဖြင့်",
            "ရေဒီယေးရှင်းအားလုံးကို ချက်ချင်းစုပ်ယူခြင်းဖြင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Dull, matte black surfaces are generally...",
          questionMy:
              "မှိန်ပြီး ပြောင်ပြောင်တင်းတင်းမရှိသော အနက်ရောင်မျက်နှာပြင်များသည် ယေဘုယျအားဖြင့်...",
          optionsEn: [
            "Better emitters of thermal radiation than shiny surfaces",
            "Worse emitters of thermal radiation than shiny surfaces",
            "Unable to emit any radiation at all",
            "Identical to shiny surfaces in every way",
          ],
          optionsMy: [
            "တောက်ပသောမျက်နှာပြင်များထက် အပူရေဒီယေးရှင်းကို ပို၍ကောင်းစွာ လွှတ်ထုတ်နိုင်သည်",
            "တောက်ပသောမျက်နှာပြင်များထက် အပူရေဒီယေးရှင်းကို ညံ့ဖျင်းစွာသာ လွှတ်ထုတ်နိုင်သည်",
            "ရေဒီယေးရှင်း လုံးဝ မလွှတ်ထုတ်နိုင်ပါ",
            "အရာအားလုံးတွင် တောက်ပသောမျက်နှာပြင်များနှင့် တူညီသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 22: "General Properties of Waves"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek22 = CourseWeekDef(
  id: "course-igcse-combsci-w22",
  weekNumber: 22,
  titleEn: "General Properties of Waves",
  titleMy: "လှိုင်းများ၏ အထွေထွေ ဂုဏ်သတ္တိများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w22-d1",
      dayNumber: 1,
      titleEn: "Transverse, Longitudinal and the Wave Equation Quiz",
      titleMy:
          "ဒေါင်လိုက်နှင့် အလျားလိုက်လှိုင်းများ၊ လှိုင်းညီမျှခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In a transverse wave, the oscillations of the particles are...",
          questionMy:
              "ဒေါင်လိုက်လှိုင်း (transverse wave) တစ်ခုတွင် အမှုန်များ၏ တုန်ခါမှုများသည် မည်သို့ရှိသနည်း။",
          optionsEn: [
            "Perpendicular to the direction of energy transfer",
            "Parallel to the direction of energy transfer",
            "Completely random with no pattern",
            "Non-existent -- particles do not move at all",
          ],
          optionsMy: [
            "စွမ်းအင်ကူးပြောင်းရာ ဦးတည်ချက်နှင့် ထောင့်မှန်",
            "စွမ်းအင်ကူးပြောင်းရာ ဦးတည်ချက်နှင့် ပြိုင်တူ",
            "ပုံစံမရှိဘဲ လုံးဝ ကျပန်း",
            "လုံးဝမရှိပါ -- အမှုန်များ လုံးဝမရွေ့လျားပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of ripples on water or a rope shaken up and down -- the particles move up and down while the wave itself travels sideways.",
            "Light waves and water waves are both classic examples of transverse waves.",
          ],
          hintsMy: [
            "ရေပြင်ပေါ်ရှိ လှိုင်းငယ်များ (သို့) အထက်အောက် လှုပ်ရှားထားသော ကြိုးတစ်ချောင်းကို တွေးကြည့်ပါ -- အမှုန်များသည် အထက်အောက်ရွေ့လျားပြီး လှိုင်းကိုယ်တိုင်က ဘေးတိုက်သို့ ခရီးသွားသည်။",
            "အလင်းလှိုင်းများနှင့် ရေလှိုင်းများသည် ဒေါင်လိုက်လှိုင်းများ၏ ဂန္တဝင်ဥပမာများ ဖြစ်ကြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a longitudinal wave, such as sound, the oscillations are...",
          questionMy:
              "အသံကဲ့သို့သော အလျားလိုက်လှိုင်း (longitudinal wave) တစ်ခုတွင် တုန်ခါမှုများသည် မည်သို့ရှိသနည်း။",
          optionsEn: [
            "Parallel to the direction of energy transfer, forming compressions and rarefactions",
            "Perpendicular to the direction of energy transfer",
            "Always in a perfect circle",
            "Always exactly zero",
          ],
          optionsMy: [
            "စွမ်းအင်ကူးပြောင်းရာ ဦးတည်ချက်နှင့် ပြိုင်တူဖြစ်ပြီး ချုံ့ခြင်းနှင့် ပွင့်ခြင်းများကို ဖြစ်ပေါ်စေသည်",
            "စွမ်းအင်ကူးပြောင်းရာ ဦးတည်ချက်နှင့် ထောင့်မှန်",
            "အမြဲတမ်း စုံညီအဝိုင်းပုံစံ",
            "အမြဲတမ်း အတိအကျ သုည",
          ],
          correctIndex: 0,
          hintsEn: [
            "Picture a slinky spring pushed and pulled along its own length -- the coils bunch together (compression) and spread apart (rarefaction).",
            "Sound waves travel through air this way, as regions of compressed and stretched-out air particles.",
          ],
          hintsMy: [
            "ကွင်းများသည် စုစည်း (ချုံ့ခြင်း) ပြီး ကျဲသွား (ပွင့်ခြင်း) သော ၎င်း၏ကိုယ်ပိုင်အလျားတစ်လျှောက် တွန်း-ဆွဲထားသော စလင်ကီစပရင်းတစ်ခုကို ပုံဖော်ကြည့်ပါ။",
            "အသံလှိုင်းများသည် ဤနည်းအတိုင်း ချုံ့ထားသောနှင့် ဆန့်ထားသောလေအမှုန်များ ဒေသများအဖြစ် လေထုကိုဖြတ်၍ ခရီးသွားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "The wave equation v = f x (lambda) relates wave speed to which two quantities?",
          questionMy:
              "လှိုင်းညီမျှခြင်း v = f x (lambda) သည် လှိုင်းအမြန်နှုန်းကို မည်သည့်ပမာဏနှစ်ခုနှင့် ဆက်စပ်ပေးသနည်း။",
          optionsEn: [
            "Frequency and wavelength",
            "Amplitude and period only",
            "Energy and mass only",
            "Frequency alone, with nothing else",
          ],
          optionsMy: [
            "ကြိမ်နှုန်းနှင့် လှိုင်းအလျား",
            "အကျယ်နှင့် ကာလသာ",
            "စွမ်းအင်နှင့် ထုထည်သာ",
            "ကြိမ်နှုန်းတစ်ခုတည်း၊ အခြားမည်သည့်အရာမျှမပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Frequency (f) is how many complete waves pass a point each second, measured in hertz (Hz).",
            "Wavelength (lambda) is the distance between two corresponding points on the wave -- multiplying the two together gives the wave's speed.",
          ],
          hintsMy: [
            "ကြိမ်နှုန်း (f) သည် တစ်စက္ကန့်လျှင် နေရာတစ်ခုကို ဖြတ်သန်းသော လှိုင်းအပြည့်အစုံအရေအတွက်ဖြစ်ပြီး ဟတ်ဇ် (Hz) ဖြင့် တိုင်းတာသည်။",
            "လှိုင်းအလျား (lambda) သည် လှိုင်းပေါ်ရှိ ကိုက်ညီသောအမှတ်နှစ်ခုကြား အကွာအဝေးဖြစ်ပြီး -- နှစ်ခုကို မြှောက်ခြင်းက လှိုင်း၏အမြန်နှုန်းကို ရရှိစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "When a wave reflects off a flat surface, the angle of incidence...",
          questionMy:
              "လှိုင်းတစ်ခုသည် ပြားချပ်သောမျက်နှာပြင်တစ်ခုမှ ပြန်ဟပ်သောအခါ ကျရောက်ထောင့် (angle of incidence) သည် မည်သို့ရှိသနည်း။",
          optionsEn: [
            "Equals the angle of reflection, both measured from the normal",
            "Is always exactly 90 degrees",
            "Has no relationship to the angle of reflection",
            "Is always exactly zero degrees",
          ],
          optionsMy: [
            "ပြန်ဟပ်ထောင့်နှင့် ညီမျှသည်၊ နှစ်ခုစလုံးကို ပုံမှန်မျဉ်း (normal) မှ တိုင်းတာသည်",
            "အမြဲတမ်း ၉၀ ဒီဂရီ အတိအကျ",
            "ပြန်ဟပ်ထောင့်နှင့် မည်သို့မျှ ဆက်စပ်မှုမရှိပါ",
            "အမြဲတမ်း သုညဒီဂရီ အတိအကျ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the law of reflection, and both angles are always measured from an imaginary line called the normal.",
            "The normal is drawn perpendicular (at 90 degrees) to the reflecting surface at the point the wave strikes it.",
          ],
          hintsMy: [
            "ဤသည်မှာ ပြန်ဟပ်ခြင်းနိယာမ (law of reflection) ဖြစ်ပြီး ထောင့်နှစ်ခုစလုံးကို ပုံမှန်မျဉ်း (normal) ဟုခေါ်သော စိတ်ကူးမျဉ်းမှ အမြဲတိုင်းတာသည်။",
            "ပုံမှန်မျဉ်းကို လှိုင်းရိုက်ခတ်သည့်အမှတ်တွင် ပြန်ဟပ်သောမျက်နှာပြင်နှင့် ထောင့်မှန် (၉၀ ဒီဂရီ) ဖြစ်အောင် ဆွဲထားသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w22-d2",
      dayNumber: 2,
      titleEn: "Match the Wave Vocabulary",
      titleMy: "လှိုင်းဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w22-dm-1",
          termEn: "Amplitude",
          termMy: "အကျယ် (Amplitude)",
          matchEn:
              "The maximum displacement of a point on a wave from its undisturbed, rest position.",
          matchMy:
              "လှိုင်းပေါ်ရှိအမှတ်တစ်ခု၏ ၎င်း၏ မတုန်လှုပ်သေးသော အနားယူနေရာမှ အများဆုံးရွေ့လျားမှု။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w22-dm-2",
          termEn: "Wavelength",
          termMy: "လှိုင်းအလျား (Wavelength)",
          matchEn:
              "The distance from one point on a wave to the identical point on the next wave, e.g. crest to crest.",
          matchMy:
              "လှိုင်းပေါ်ရှိအမှတ်တစ်ခုမှ နောက်လှိုင်းပေါ်ရှိ တူညီသောအမှတ်အထိ အကွာအဝေး၊ ဥပမာ- ထိပ်မှ ထိပ်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w22-dm-3",
          termEn: "Frequency",
          termMy: "ကြိမ်နှုန်း (Frequency)",
          matchEn:
              "The number of complete waves passing a point per second, measured in hertz (Hz).",
          matchMy:
              "တစ်စက္ကန့်လျှင် နေရာတစ်ခုကို ဖြတ်သန်းသော လှိုင်းအပြည့်အစုံအရေအတွက်၊ ဟတ်ဇ် (Hz) ဖြင့် တိုင်းတာသည်။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w22-dm-4",
          termEn: "Transverse Wave",
          termMy: "ဒေါင်လိုက်လှိုင်း (Transverse Wave)",
          matchEn:
              "A wave in which the oscillations are perpendicular to the direction of energy transfer, e.g. light and water waves.",
          matchMy:
              "တုန်ခါမှုများသည် စွမ်းအင်ကူးပြောင်းရာဦးတည်ချက်နှင့် ထောင့်မှန်ဖြစ်သော လှိုင်း၊ ဥပမာ- အလင်းနှင့် ရေလှိုင်းများ။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w22-dm-5",
          termEn: "Longitudinal Wave",
          termMy: "အလျားလိုက်လှိုင်း (Longitudinal Wave)",
          matchEn:
              "A wave in which the oscillations are parallel to the direction of energy transfer, e.g. sound waves.",
          matchMy:
              "တုန်ခါမှုများသည် စွမ်းအင်ကူးပြောင်းရာဦးတည်ချက်နှင့် ပြိုင်တူဖြစ်သော လှိုင်း၊ ဥပမာ- အသံလှိုင်းများ။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w22-d3",
      dayNumber: 3,
      titleEn: "Sort: Transverse or Longitudinal Wave?",
      titleMy: "စီစစ်ကြမည် - ဒေါင်လိုက်လှိုင်း (သို့) အလျားလိုက်လှိုင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Transverse Wave", "Longitudinal Wave"],
        bucketsMy: ["ဒေါင်လိုက်လှိုင်း", "အလျားလိုက်လှိုင်း"],
        items: [
          SortingItem(
            id: "igcsecs-w22-sort-1",
            labelEn: "Light waves",
            labelMy: "အလင်းလှိုင်းများ",
            correctBucketEn: "Transverse Wave",
            correctBucketMy: "ဒေါင်လိုက်လှိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w22-sort-2",
            labelEn: "Sound waves",
            labelMy: "အသံလှိုင်းများ",
            correctBucketEn: "Longitudinal Wave",
            correctBucketMy: "အလျားလိုက်လှိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w22-sort-3",
            labelEn: "Water ripples on a pond",
            labelMy: "ရေကန်တစ်ခုပေါ်ရှိ ရေလှိုင်းငယ်များ",
            correctBucketEn: "Transverse Wave",
            correctBucketMy: "ဒေါင်လိုက်လှိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w22-sort-4",
            labelEn: "A push-pull wave sent along a stretched slinky spring",
            labelMy:
                "တင်းကျပ်စွာဆွဲထားသော စလင်ကီစပရင်းတစ်လျှောက် ပို့လိုက်သော တွန်း-ဆွဲလှိုင်း",
            correctBucketEn: "Longitudinal Wave",
            correctBucketMy: "အလျားလိုက်လှိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w22-sort-5",
            labelEn: "Radio waves",
            labelMy: "ရေဒီယိုလှိုင်းများ",
            correctBucketEn: "Transverse Wave",
            correctBucketMy: "ဒေါင်လိုက်လှိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w22-sort-6",
            labelEn: "Ultrasound waves used in medical scans",
            labelMy:
                "ဆေးဘက်ဆိုင်ရာစကင်များတွင် အသုံးပြုသော အာထရာဆောင်းလှိုင်းများ",
            correctBucketEn: "Longitudinal Wave",
            correctBucketMy: "အလျားလိုက်လှိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w22-sort-7",
            labelEn: "Seismic S-waves (secondary waves)",
            labelMy: "မြေငလျင် S-လှိုင်းများ (ဒုတိယလှိုင်း)",
            correctBucketEn: "Transverse Wave",
            correctBucketMy: "ဒေါင်လိုက်လှိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w22-sort-8",
            labelEn: "Seismic P-waves (primary waves)",
            labelMy: "မြေငလျင် P-လှိုင်းများ (ပထမလှိုင်း)",
            correctBucketEn: "Longitudinal Wave",
            correctBucketMy: "အလျားလိုက်လှိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w22-sort-9",
            labelEn: "X-rays",
            labelMy: "အိတ်ခ်စ်ရေးများ",
            correctBucketEn: "Transverse Wave",
            correctBucketMy: "ဒေါင်လိုက်လှိုင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w22-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Myat's Ripple Tank Wave Speed",
      titleMy: "စာဖတ်ခြင်း - စုမြတ်၏ ရစ်ပဲလ်ကန် လှိုင်းအမြန်နှုန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Myat's Ripple Tank Wave Speed",
        titleMy: "စုမြတ်၏ ရစ်ပဲလ်ကန် လှိုင်းအမြန်နှုန်း",
        passageEn:
            "For her wave properties practical, Su Myat used a ripple tank -- a shallow tray of water with a motorised bar that dips in and out to generate regular straight wavefronts -- to test whether the wave equation v = f x (lambda) actually matched a directly measured wave speed.\n\nFirst, Su Myat measured the frequency of the vibrating bar using a stopwatch, counting how many wavefronts passed a fixed point in ten seconds and dividing by ten to get waves per second. Next, she used a strobe light to freeze the ripple pattern and measured the wavelength with a ruler, taking the average distance across several wavelengths at once to reduce the effect of any small measurement error at a single crest.\n\nMultiplying her frequency and wavelength values together using v = f x (lambda), Su Myat calculated a predicted wave speed. She then measured the speed directly by timing how long a single wavefront took to travel a marked distance across the tank with a stopwatch, and dividing distance by time. The two values matched closely, confirming the wave equation held true for real water waves. Su Myat noted that her main source of error was reaction time when starting and stopping the stopwatch while counting wavefronts, and suggested that counting over a longer time interval, as she had done for frequency, would reduce this error's effect on the final result.",
        passageMy:
            "သူမ၏ လှိုင်းဂုဏ်သတ္တိ လက်တွေ့စမ်းသပ်မှုအတွက် စုမြတ်သည် ရစ်ပဲလ်ကန် -- ပုံမှန်ဖြောင့်တန်း လှိုင်းရှေ့ဘက်များ ဖြစ်ပေါ်စေရန် ရေထဲသို့ တစ်ကြိမ်ဝင်တစ်ကြိမ်ထွက် လုပ်ဆောင်သော မော်တာတန်းပါသည့် ရေအိုင်ချိုင့် -- ကို အသုံးပြု၍ လှိုင်းညီမျှခြင်း v = f x (lambda) သည် တိုက်ရိုက်တိုင်းတာသော လှိုင်းအမြန်နှုန်းနှင့် အမှန်တကယ်ကိုက်ညီမှု ရှိမရှိ စမ်းသပ်ခဲ့သည်။\n\nဦးစွာ စုမြတ်သည် တုန်ခါနေသောတန်း၏ ကြိမ်နှုန်းကို စတော့ဝပ်ချ်ကို အသုံးပြု၍ တိုင်းတာခဲ့ပြီး၊ ဆယ်စက္ကန့်အတွင်း လှိုင်းရှေ့ဘက်မည်မျှ သတ်မှတ်အမှတ်တစ်ခုကို ဖြတ်သွားကြောင်း ရေတွက်ကာ ဆယ်ဖြင့်စား၍ တစ်စက္ကန့်လျှင် လှိုင်းအရေအတွက် ရရှိခဲ့သည်။ ထို့နောက် သူမသည် ရစ်ပဲလ်ပုံစံကို ရပ်တန့်ပြပေးရန် စထရိုက်မီးအသုံးပြုခဲ့ပြီး လှိုင်းအလျားကို ဆန်တံဖြင့် တိုင်းတာခဲ့သည်၊ ထိပ်တစ်ခုတည်း၌ ဖြစ်နိုင်သော တိုင်းတာမှုအမှားငယ်၏ သက်ရောက်မှုကို လျှော့ချရန် လှိုင်းအလျားများစွာအတွက် ပျမ်းမျှအကွာအဝေးကို တစ်ပြိုင်နက် ယူခဲ့သည်။\n\n၎င်း၏ ကြိမ်နှုန်းနှင့် လှိုင်းအလျားတန်ဖိုးများကို v = f x (lambda) ကိုအသုံးပြု၍ မြှောက်ခြင်းဖြင့် စုမြတ်သည် ကြိုတင်ခန့်မှန်းလှိုင်းအမြန်နှုန်းကို တွက်ချက်ခဲ့သည်။ ထို့နောက် သူမသည် ကန်တစ်လျှောက် အမှတ်အသားပြုထားသော အကွာအဝေးတစ်ခုကို လှိုင်းရှေ့ဘက်တစ်ခုတည်းသွားရန် ကြာချိန်ကို စတော့ဝပ်ချ်ဖြင့် ချိန်ခြင်းဖြင့် လှိုင်းအမြန်နှုန်းကို တိုက်ရိုက်တိုင်းတာခဲ့ပြီး အကွာအဝေးကို အချိန်ဖြင့်စားခဲ့သည်။ တန်ဖိုးနှစ်ခုသည် အနီးကပ် ကိုက်ညီခဲ့ပြီး၊ လှိုင်းညီမျှခြင်းသည် တကယ့်ရေလှိုင်းများအတွက် မှန်ကန်ကြောင်း အတည်ပြုပေးခဲ့သည်။ စုမြတ်သည် ၎င်း၏ အဓိကအမှားရင်းမြစ်မှာ လှိုင်းရှေ့ဘက်များကို ရေတွက်နေစဉ် စတော့ဝပ်ချ်ကို စတင်ရပ်တန့်ခြင်း၏ တုံ့ပြန်ချိန် (reaction time) ဖြစ်ကြောင်း မှတ်ချက်ပြုခဲ့ပြီး၊ ကြိမ်နှုန်းအတွက် ပြုလုပ်ခဲ့သကဲ့သို့ ပို၍ကြာရှည်သောအချိန်ကာလတစ်လျှောက် ရေတွက်ခြင်းသည် ဤအမှား၏ နောက်ဆုံးရလဒ်အပေါ် သက်ရောက်မှုကို လျှော့ချပေးမည်ဖြစ်ကြောင်း အကြံပြုခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "How did Su Myat measure the wave's frequency?",
            questionMy:
                "စုမြတ်သည် လှိုင်း၏ ကြိမ်နှုန်းကို မည်သို့ တိုင်းတာခဲ့သနည်း။",
            optionsEn: [
              "By counting how many wavefronts passed a fixed point in ten seconds, then dividing by ten",
              "By measuring the wavelength alone",
              "By weighing the water in the tank",
              "By timing a single wavefront's full journey only",
            ],
            optionsMy: [
              "ဆယ်စက္ကန့်အတွင်း လှိုင်းရှေ့ဘက်မည်မျှ သတ်မှတ်အမှတ်တစ်ခုကို ဖြတ်သွားကြောင်း ရေတွက်ပြီး ဆယ်ဖြင့်စားခြင်းဖြင့်",
              "လှိုင်းအလျားတစ်ခုတည်းကို တိုင်းတာခြင်းဖြင့်",
              "ကန်ထဲရှိရေကို ချိန်ခြင်းဖြင့်",
              "လှိုင်းရှေ့ဘက်တစ်ခုတည်း၏ ခရီးတစ်ခုလုံးကို ချိန်ခြင်းဖြင့်သာ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the frequency measurement.",
              "Counting over ten seconds and dividing gives a more reliable average than counting for just one second.",
            ],
            hintsMy: [
              "ကြိမ်နှုန်းတိုင်းတာမှုကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဆယ်စက္ကန့်အတွင်း ရေတွက်ပြီး စားခြင်းက တစ်စက္ကန့်တည်း ရေတွက်ခြင်းထက် ပို၍ ယုံကြည်ရသော ပျမ်းမျှတန်ဖိုးကို ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn: "How did Su Myat calculate the predicted wave speed?",
            questionMy:
                "စုမြတ်သည် ကြိုတင်ခန့်မှန်းလှိုင်းအမြန်နှုန်းကို မည်သို့ တွက်ချက်ခဲ့သနည်း။",
            optionsEn: [
              "By multiplying frequency and wavelength together using v = f x (lambda)",
              "By dividing wavelength by amplitude",
              "By adding frequency and wavelength together",
              "By measuring the water's temperature",
            ],
            optionsMy: [
              "v = f x (lambda) ကိုအသုံးပြု၍ ကြိမ်နှုန်းနှင့် လှိုင်းအလျားကို မြှောက်ခြင်းဖြင့်",
              "လှိုင်းအလျားကို အကျယ်ဖြင့် စားခြင်းဖြင့်",
              "ကြိမ်နှုန်းနှင့် လှိုင်းအလျားကို ပေါင်းခြင်းဖြင့်",
              "ရေ၏ အပူချိန်ကို တိုင်းတာခြင်းဖြင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of the calculation.",
              "The wave equation multiplies frequency by wavelength to give speed.",
            ],
            hintsMy: [
              "တွက်ချက်မှုကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "လှိုင်းညီမျှခြင်းသည် အမြန်နှုန်းရရှိရန် ကြိမ်နှုန်းကို လှိုင်းအလျားနှင့် မြှောက်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did the close match between the predicted and directly measured speeds confirm?",
            questionMy:
                "ကြိုတင်ခန့်မှန်းနှင့် တိုက်ရိုက်တိုင်းတာမှု အမြန်နှုန်းများကြား အနီးကပ်ကိုက်ညီမှုက အဘယ်အရာကို အတည်ပြုပေးခဲ့သနည်း။",
            optionsEn: [
              "That the wave equation held true for real water waves in the ripple tank",
              "That the frequency measurement was completely wrong",
              "That water waves do not obey the wave equation",
              "That the wavelength could not be measured accurately",
            ],
            optionsMy: [
              "လှိုင်းညီမျှခြင်းသည် ရစ်ပဲလ်ကန်ထဲရှိ တကယ့်ရေလှိုင်းများအတွက် မှန်ကန်ကြောင်း",
              "ကြိမ်နှုန်းတိုင်းတာမှု လုံးဝ မှားယွင်းကြောင်း",
              "ရေလှိုင်းများသည် လှိုင်းညီမျှခြင်းကို မလိုက်နာကြောင်း",
              "လှိုင်းအလျားကို တိကျစွာ မတိုင်းတာနိုင်ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the fourth paragraph's conclusion about the two values matching.",
              "A close match between calculation and direct measurement is strong evidence the underlying formula is correct.",
            ],
            hintsMy: [
              "တန်ဖိုးနှစ်ခု ကိုက်ညီမှုနှင့်ပတ်သက်သော ကောက်ချက်ကို ဖော်ပြထားသည့် စတုတ္ထစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "တွက်ချက်မှုနှင့် တိုက်ရိုက်တိုင်းတာမှုကြား အနီးကပ်ကိုက်ညီမှုသည် အခြေခံဖော်မြူလာ မှန်ကန်ကြောင်း ခိုင်မာသောအထောက်အထားဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What error source did Su Myat identify, and how did she suggest reducing it?",
            questionMy:
                "စုမြတ်သည် မည်သည့်အမှားရင်းမြစ်ကို ဖော်ထုတ်ခဲ့ပြီး မည်သို့လျှော့ချရန် အကြံပြုခဲ့သနည်း။",
            optionsEn: [
              "Reaction time when using the stopwatch, reduced by counting over a longer time interval",
              "The water was the wrong colour, fixed by adding dye",
              "The ruler was too long, fixed by using a shorter one",
              "There was no error source at all",
            ],
            optionsMy: [
              "စတော့ဝပ်ချ်အသုံးပြုစဉ် တုံ့ပြန်ချိန်၊ ပို၍ကြာရှည်သောအချိန်ကာလတစ်လျှောက် ရေတွက်ခြင်းဖြင့် လျှော့ချ",
              "ရေ၏ အရောင်မှား၍ ဆေးရောင်ထည့်ခြင်းဖြင့် ပြင်ဆင်",
              "ဆန်တံ ရှည်လွန်း၍ တိုသောတစ်ခုအသုံးပြုခြင်းဖြင့် ပြင်ဆင်",
              "မည်သည့်အမှားရင်းမြစ်မျှ လုံးဝမရှိပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Just as with the frequency count, a longer counted time interval spreads the reaction-time error over more waves, reducing its overall effect.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ကြိမ်နှုန်းရေတွက်မှုကဲ့သို့ပင် ပို၍ကြာရှည်သော ရေတွက်သည့်အချိန်ကာလက တုံ့ပြန်ချိန်အမှားကို လှိုင်းများပိုများသောအပေါ် ပျံ့နှံ့စေကာ ၎င်း၏ အလုံးစုံသက်ရောက်မှုကို လျှော့ချပေးသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w22-d5",
      dayNumber: 5,
      titleEn: "Week 22 Recap: General Properties of Waves",
      titleMy:
          "အပတ်စဉ် ၂၂ ပြန်လည်သုံးသပ်ခြင်း - လှိုင်းများ၏ အထွေထွေ ဂုဏ်သတ္တိများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Light waves are an example of a...",
          questionMy:
              "အလင်းလှိုင်းများသည် မည်သည့်လှိုင်းအမျိုးအစား ဥပမာဖြစ်သနည်း။",
          optionsEn: [
            "Transverse wave",
            "Longitudinal wave",
            "Neither type",
            "A sound wave",
          ],
          optionsMy: [
            "ဒေါင်လိုက်လှိုင်း",
            "အလျားလိုက်လှိုင်း",
            "မည်သည့်အမျိုးအစားမျှမဟုတ်",
            "အသံလှိုင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Sound waves are an example of a...",
          questionMy:
              "အသံလှိုင်းများသည် မည်သည့်လှိုင်းအမျိုးအစား ဥပမာဖြစ်သနည်း။",
          optionsEn: [
            "Longitudinal wave",
            "Transverse wave",
            "Neither type",
            "A light wave",
          ],
          optionsMy: [
            "အလျားလိုက်လှိုင်း",
            "ဒေါင်လိုက်လှိုင်း",
            "မည်သည့်အမျိုးအစားမျှမဟုတ်",
            "အလင်းလှိုင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The wave equation is written as...",
          questionMy: "လှိုင်းညီမျှခြင်းကို မည်သို့ရေးသားသနည်း။",
          optionsEn: [
            "v = f x (lambda)",
            "v = f + (lambda)",
            "v = f - (lambda)",
            "v = f / (lambda) only",
          ],
          optionsMy: [
            "v = f x (lambda)",
            "v = f + (lambda)",
            "v = f - (lambda)",
            "v = f / (lambda) သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Wavelength is measured as the distance between...",
          questionMy:
              "လှိုင်းအလျားကို မည်သည့်နေရာနှစ်ခုကြား အကွာအဝေးအဖြစ် တိုင်းတာသနည်း။",
          optionsEn: [
            "Two identical points on consecutive waves, e.g. crest to crest",
            "The source and the observer only",
            "Two random unrelated points",
            "The amplitude and the frequency",
          ],
          optionsMy: [
            "အဆက်တိုက်လှိုင်းများပေါ်ရှိ တူညီသောအမှတ်နှစ်ခု၊ ဥပမာ- ထိပ်မှ ထိပ်",
            "အရင်းအမြစ်နှင့် တွေ့မြင်သူသာ",
            "ဆက်စပ်မှုမရှိသော ကျပန်းအမှတ်နှစ်ခု",
            "အကျယ်နှင့် ကြိမ်နှုန်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "The law of reflection states that the angle of incidence...",
          questionMy: "ပြန်ဟပ်ခြင်းနိယာမအရ ကျရောက်ထောင့်သည် မည်သို့ရှိသနည်း။",
          optionsEn: [
            "Equals the angle of reflection",
            "Is always double the angle of reflection",
            "Is unrelated to the angle of reflection",
            "Is always zero",
          ],
          optionsMy: [
            "ပြန်ဟပ်ထောင့်နှင့် ညီမျှသည်",
            "ပြန်ဟပ်ထောင့်၏ နှစ်ဆ အမြဲရှိသည်",
            "ပြန်ဟပ်ထောင့်နှင့် မဆက်စပ်ပါ",
            "အမြဲတမ်း သုည",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 23: "Light and Sound Waves"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek23 = CourseWeekDef(
  id: "course-igcse-combsci-w23",
  weekNumber: 23,
  titleEn: "Light and Sound Waves",
  titleMy: "အလင်းနှင့် အသံလှိုင်းများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w23-d1",
      dayNumber: 1,
      titleEn: "Refraction, Total Internal Reflection and Ultrasound Quiz",
      titleMy:
          "အလင်းယိုင်ခြင်း၊ စုစုပေါင်း အတွင်းဘက်ပြန်ဟပ်ခြင်းနှင့် အာထရာဆောင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "When light travels from air into glass, a denser medium, it...",
          questionMy:
              "အလင်းသည် လေမှ ပိုသိပ်သည်းသောဖန်ထဲသို့ ဝင်ရောက်သောအခါ မည်သို့ဖြစ်သွားသနည်း။",
          optionsEn: [
            "Slows down and bends towards the normal",
            "Speeds up and bends away from the normal",
            "Travels in a perfectly straight line, completely unaffected",
            "Stops travelling completely",
          ],
          optionsMy: [
            "အရှိန်လျော့ကာ ပုံမှန်မျဉ်းဘက်သို့ ကွေးသွားသည်",
            "အရှိန်တက်ကာ ပုံမှန်မျဉ်းမှ ဝေးသွားသည်",
            "လုံးဝ မထိခိုက်ဘဲ ဖြောင့်တန်းစွာ ခရီးသွားသည်",
            "လုံးဝ ခရီးမသွားတော့ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Light travels more slowly in a denser medium like glass than in a less dense medium like air.",
            "This change in speed at the boundary is what causes the ray to bend -- this bending is called refraction.",
          ],
          hintsMy: [
            "အလင်းသည် လေကဲ့သို့ သိပ်သည်းဆနည်းသော အလယ်အလတ်ပစ္စည်းတွင်ထက် ဖန်ကဲ့သို့ ပိုသိပ်သည်းသော အလယ်အလတ်ပစ္စည်းတွင် ပို၍ နှေးနှေးသွားသည်။",
            "နယ်နိမိတ်တွင် ဤအရှိန်ပြောင်းလဲမှုက အလင်းရောင်ကို ကွေးစေခြင်းဖြစ်သည် -- ဤကွေးမှုကို အလင်းယိုင်ခြင်း (refraction) ဟုခေါ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Total internal reflection occurs when light travelling from a denser to a less dense medium strikes the boundary at an angle...",
          questionMy:
              "ပိုသိပ်သည်းသော အလယ်အလတ်ပစ္စည်းမှ သိပ်သည်းဆနည်းသောအရာသို့ ခရီးသွားနေသော အလင်းသည် နယ်နိမိတ်ကို မည်သည့်ထောင့်ဖြင့် ထိရောက်သောအခါ စုစုပေါင်း အတွင်းဘက် ပြန်ဟပ်ခြင်း ဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "Greater than the critical angle",
            "Less than the critical angle",
            "Exactly zero degrees",
            "It never occurs regardless of angle",
          ],
          optionsMy: [
            "အထွေထွေထောင့်ထက် ပိုကြီးသော ထောင့်",
            "အထွေထွေထောင့်ထက် ပိုသေးသော ထောင့်",
            "အတိအကျ သုညဒီဂရီ",
            "ထောင့်မည်မျှပင်ရှိစေ ဘယ်တော့မှ ဖြစ်ပေါ်မည်မဟုတ်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Beyond the critical angle, no refracted ray can escape into the less dense medium -- all the light reflects back internally instead.",
            "This is exactly the principle that keeps light travelling along the length of an optical fibre.",
          ],
          hintsMy: [
            "အထွေထွေထောင့်ကို ကျော်လွန်ပါက သိပ်သည်းဆနည်းသောအလယ်အလတ်ပစ္စည်းထဲသို့ ရောက်နိုင်သော အလင်းယိုင်ရောင်ခြည် မရှိတော့ဘဲ -- အလင်းအားလုံး အတွင်းဘက်သို့ ပြန်ဟပ်သွားသည်။",
            "ဤသည်မှာ အလင်းကို optical fibre တစ်ခု၏ အလျားတစ်လျှောက် ခရီးဆက်စေသော နိယာမ အတိအကျပင်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Ultrasound consists of sound waves with frequencies...",
          questionMy:
              "အာထရာဆောင်း (Ultrasound) သည် မည်သည့်ကြိမ်နှုန်းရှိ အသံလှိုင်းများပါဝင်သနည်း။",
          optionsEn: [
            "Above the upper limit of human hearing, roughly above 20,000 Hz",
            "Below the lower limit of human hearing",
            "Exactly within the normal audible range",
            "Sound has no frequency at all",
          ],
          optionsMy: [
            "လူသား၏ ကြားနိုင်စွမ်း အထက်ကန့်သတ်ချက်ထက်ကျော်၊ ခန့်မှန်းအားဖြင့် ၂၀,၀၀၀ Hz ထက်ကျော်",
            "လူသား၏ ကြားနိုင်စွမ်း အောက်ကန့်သတ်ချက်အောက်",
            "ပုံမှန်ကြားနိုင်သည့် အတိုင်းအတာအတွင်း အတိအကျ",
            "အသံသည် ကြိမ်နှုန်း လုံးဝမရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Humans can typically hear frequencies roughly between 20 Hz and 20,000 Hz.",
            "Ultrasound frequencies are above this range and are used in medical scanning, sonar, and industrial flaw detection.",
          ],
          hintsMy: [
            "လူသားများသည် ယေဘုယျအားဖြင့် ၂၀ Hz နှင့် ၂၀,၀၀၀ Hz ကြားရှိ ကြိမ်နှုန်းများကို ကြားနိုင်သည်။",
            "အာထရာဆောင်းကြိမ်နှုန်းများသည် ဤအတိုင်းအတာထက် ကျော်လွန်ပြီး ဆေးဘက်ဆိုင်ရာစကင်၊ ဆိုနာနှင့် စက်မှုအမှားစိစစ်ခြင်းတို့တွင် အသုံးပြုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Optical fibres transmit light signals along their length mainly using...",
          questionMy:
              "Optical fibre များသည် ၎င်း၏အလျားတစ်လျှောက် အလင်းအချက်ပြမှုများကို အဓိကအားဖြင့် မည်သည့်နည်းအသုံးပြု၍ ပို့ဆောင်သနည်း။",
          optionsEn: [
            "Total internal reflection",
            "Refraction only, with no reflection",
            "Diffraction only",
            "Reflection off external mirrors placed outside the fibre",
          ],
          optionsMy: [
            "စုစုပေါင်း အတွင်းဘက်ပြန်ဟပ်ခြင်း",
            "ပြန်ဟပ်ခြင်းလုံးဝမပါဘဲ အလင်းယိုင်ခြင်းသာ",
            "ခွဲထုတ်ခြင်းသာ (diffraction)",
            "ကြိုးအပြင်ဘက်ထားရှိသော မှန်များမှ ပြန်ဟပ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Light repeatedly strikes the inner wall of the fibre at an angle beyond the critical angle.",
            "Because the angle always exceeds the critical angle, the light keeps reflecting internally along the fibre with very little energy lost.",
          ],
          hintsMy: [
            "အလင်းသည် ကြိုး၏ အတွင်းနံရံကို အထွေထွေထောင့်ထက် ကျော်လွန်သော ထောင့်ဖြင့် ထပ်ခါထပ်ခါ ထိရောက်သည်။",
            "ထောင့်သည် အထွေထွေထောင့်ထက် အမြဲ ကျော်လွန်နေသောကြောင့် အလင်းသည် စွမ်းအင်အနည်းငယ်သာဆုံးရှုံးဘဲ ကြိုးတစ်လျှောက် အတွင်းဘက်သို့ ဆက်တိုက်ပြန်ဟပ်နေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w23-d2",
      dayNumber: 2,
      titleEn: "Match the Light and Sound Vocabulary",
      titleMy: "အလင်းနှင့် အသံဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w23-dm-1",
          termEn: "Refraction",
          termMy: "အလင်းယိုင်ခြင်း (Refraction)",
          matchEn:
              "The bending of light as it passes from one medium into another of different density, caused by a change in speed.",
          matchMy:
              "အရှိန်ပြောင်းလဲခြင်းကြောင့် ဖြစ်ပေါ်သော၊ အလင်းသည် သိပ်သည်းဆကွဲပြားသော အလယ်အလတ်ပစ္စည်းတစ်ခုမှ အခြားတစ်ခုသို့ ဖြတ်သန်းသောအခါ ကွေးခြင်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w23-dm-2",
          termEn: "Critical Angle",
          termMy: "အထွေထွေထောင့် (Critical Angle)",
          matchEn:
              "The angle of incidence in the denser medium above which total internal reflection occurs instead of refraction.",
          matchMy:
              "ပိုသိပ်သည်းသော အလယ်အလတ်ပစ္စည်းရှိ ကျရောက်ထောင့်တစ်ခုဖြစ်ပြီး၊ ၎င်းထက်ကျော်လွန်ပါက အလင်းယိုင်ခြင်းအစား စုစုပေါင်းအတွင်းဘက်ပြန်ဟပ်ခြင်း ဖြစ်ပေါ်သည်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w23-dm-3",
          termEn: "Total Internal Reflection",
          termMy: "စုစုပေါင်း အတွင်းဘက်ပြန်ဟပ်ခြင်း (TIR)",
          matchEn:
              "The complete reflection of light inside a denser medium when it strikes a boundary at an angle greater than the critical angle.",
          matchMy:
              "အလင်းသည် အထွေထွေထောင့်ထက်ကျော်လွန်သော ထောင့်ဖြင့် နယ်နိမိတ်ကို ထိရောက်သောအခါ ပိုသိပ်သည်းသော အလယ်အလတ်ပစ္စည်း အတွင်းရှိ အလင်းလုံးဝပြန်ဟပ်ခြင်း။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w23-dm-4",
          termEn: "Optical Fibre",
          termMy: "အော်ပတ်တီကယ်ကြိုး (Optical Fibre)",
          matchEn:
              "A thin, flexible strand of glass or plastic that transmits light signals along its length using total internal reflection.",
          matchMy:
              "စုစုပေါင်း အတွင်းဘက်ပြန်ဟပ်ခြင်းကို အသုံးပြု၍ ၎င်း၏အလျားတစ်လျှောက် အလင်းအချက်ပြမှုများကို ပို့ဆောင်ပေးသော ပါးလွှာ၍ ဆွဲငင်နိုင်သော ဖန် (သို့) ပလတ်စတစ်ကြိုး။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w23-dm-5",
          termEn: "Ultrasound",
          termMy: "အာထရာဆောင်း (Ultrasound)",
          matchEn:
              "Sound waves with frequencies above the upper limit of human hearing, used in medical imaging and industrial testing.",
          matchMy:
              "လူသား၏ ကြားနိုင်စွမ်း အထက်ကန့်သတ်ချက်ထက် ကျော်လွန်သော ကြိမ်နှုန်းရှိ အသံလှိုင်းများ၊ ဆေးဘက်ဆိုင်ရာပုံရိပ်ရှာဖွေမှုနှင့် စက်မှုစစ်ဆေးမှုများတွင် အသုံးပြုသည်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w23-d3",
      dayNumber: 3,
      titleEn: "Sort: Refraction, TIR, or Ultrasound Use?",
      titleMy:
          "စီစစ်ကြမည် - အလင်းယိုင်ခြင်း၊ TIR (သို့) အာထရာဆောင်း အသုံးချမှု",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Refraction Example",
          "Total Internal Reflection Example",
          "Ultrasound Use",
        ],
        bucketsMy: [
          "အလင်းယိုင်ခြင်း ဥပမာ",
          "စုစုပေါင်းအတွင်းဘက်ပြန်ဟပ်ခြင်း ဥပမာ",
          "အာထရာဆောင်း အသုံးချမှု",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w23-sort-1",
            labelEn: "A straw appearing bent when placed in a glass of water",
            labelMy: "ရေခွက်ထဲထားလိုက်သော လှော့တစ်ချောင်း ကွေးနေဟန်ဖြစ်ခြင်း",
            correctBucketEn: "Refraction Example",
            correctBucketMy: "အလင်းယိုင်ခြင်း ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w23-sort-2",
            labelEn:
                "Light travelling along the inside of an optical fibre without escaping",
            labelMy:
                "အော်ပတ်တီကယ်ကြိုး၏ အတွင်းပိုင်းတစ်လျှောက် မထွက်ပြေးဘဲ အလင်းသွားနေခြင်း",
            correctBucketEn: "Total Internal Reflection Example",
            correctBucketMy: "စုစုပေါင်းအတွင်းဘက်ပြန်ဟပ်ခြင်း ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w23-sort-3",
            labelEn: "Prenatal scanning to view a developing foetus",
            labelMy:
                "ကြီးထွားနေသော သားအိမ်တွင်းကလေးကို ကြည့်ရှုရန် မွေးဖွားမီစကင်",
            correctBucketEn: "Ultrasound Use",
            correctBucketMy: "အာထရာဆောင်း အသုံးချမှု",
          ),
          SortingItem(
            id: "igcsecs-w23-sort-4",
            labelEn: "A swimming pool appearing shallower than it really is",
            labelMy: "ရေကူးကန်တစ်ခု အမှန်တကယ်ထက် ရေတိမ်ဟန်ဖြစ်နေခြင်း",
            correctBucketEn: "Refraction Example",
            correctBucketMy: "အလင်းယိုင်ခြင်း ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w23-sort-5",
            labelEn:
                "A diamond sparkling brightly because light bounces repeatedly inside it",
            labelMy:
                "အလင်းသည် ၎င်း၏အတွင်းတွင် ထပ်ခါထပ်ခါ ခုန်ပြန်သောကြောင့် စိန်တစ်လုံးတောက်ပစွာ တောက်ပနေခြင်း",
            correctBucketEn: "Total Internal Reflection Example",
            correctBucketMy: "စုစုပေါင်းအတွင်းဘက်ပြန်ဟပ်ခြင်း ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w23-sort-6",
            labelEn:
                "Detecting flaws inside metal machine parts without cutting them open",
            labelMy:
                "မဖြတ်တောက်ဘဲ သတ္တုစက်အစိတ်အပိုင်းများအတွင်းရှိ အပျက်အစီးများကို ရှာဖွေခြင်း",
            correctBucketEn: "Ultrasound Use",
            correctBucketMy: "အာထရာဆောင်း အသုံးချမှု",
          ),
          SortingItem(
            id: "igcsecs-w23-sort-7",
            labelEn: "Light bending as it enters a curved glass lens",
            labelMy:
                "ကွေးသော ဖန်မှန်ဘီလူးတစ်ခုထဲသို့ ဝင်ရောက်ချိန် အလင်းကွေးသွားခြင်း",
            correctBucketEn: "Refraction Example",
            correctBucketMy: "အလင်းယိုင်ခြင်း ဥပမာ",
          ),
          SortingItem(
            id: "igcsecs-w23-sort-8",
            labelEn:
                "Cleaning delicate jewellery using high-frequency sound waves in a liquid bath",
            labelMy:
                "အရည်ရေချိုးကန်တစ်ခုအတွင်း ကြိမ်နှုန်းမြင့် အသံလှိုင်းများအသုံးပြု၍ သိမ်မွေ့သောလက်ဝတ်ရတနာများ သန့်ရှင်းခြင်း",
            correctBucketEn: "Ultrasound Use",
            correctBucketMy: "အာထရာဆောင်း အသုံးချမှု",
          ),
          SortingItem(
            id: "igcsecs-w23-sort-9",
            labelEn:
                "A cat's-eye road reflector redirecting car headlights back to the driver",
            labelMy:
                "ကားမီးရောင်ခြည်ကို ယာဉ်မောင်းဆီ ပြန်ညွှန်းပေးသော လမ်းပေါ်ကြောင်ခေါင်းသင်္ကေတ",
            correctBucketEn: "Total Internal Reflection Example",
            correctBucketMy: "စုစုပေါင်းအတွင်းဘက်ပြန်ဟပ်ခြင်း ဥပမာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w23-d4",
      dayNumber: 4,
      titleEn: "Reading: Htet Aung's Critical Angle Investigation",
      titleMy: "စာဖတ်ခြင်း - ထက်အောင်၏ အထွေထွေထောင့် စူးစမ်းလေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Htet Aung's Critical Angle Investigation",
        titleMy: "ထက်အောင်၏ အထွေထွေထောင့် စူးစမ်းလေ့လာမှု",
        passageEn:
            "For his optics practical, Htet Aung used a semicircular glass block to measure the critical angle of glass. He deliberately chose a semicircular block rather than a rectangular one: by aiming the ray of light at the centre of the flat face and letting it enter through the curved surface, the ray always travels along a radius of the curve, striking the curved surface exactly along the normal so it enters without bending at all. This meant any refraction he observed would happen only at the flat face he was testing, not anywhere else in the block.\n\nHtet Aung shone a ray of light through the curved surface towards the centre of the flat face, then gradually increased the angle of incidence at that flat face, marking the position of both the faint reflected ray and the brighter refracted ray each time with a pencil. As the angle of incidence increased, the refracted ray bent further and further away from the normal, growing dimmer, while the reflected ray grew steadily brighter.\n\nAt one particular angle of incidence, the refracted ray disappeared entirely, running exactly along the flat face's own surface instead of emerging into the air above it -- Htet Aung recorded this as the critical angle. Beyond this angle, no refracted ray appeared at all, and only the reflected ray remained, now just as bright as the original incoming ray: total internal reflection. Htet Aung repeated the measurement three times and averaged his results, getting a critical angle close to the accepted value for glass, and noted that this exact behaviour is the principle used to keep light confined inside an optical fibre.",
        passageMy:
            "သူ၏ အော်ပတစ် လက်တွေ့စမ်းသပ်မှုအတွက် ထက်အောင်သည် ဖန်၏ အထွေထွေထောင့်ကို တိုင်းတာရန် ထက်ဝိုင်းပုံသဏ္ဌာန်ဖန်တုံးတစ်ခုကို အသုံးပြုခဲ့သည်။ သူသည် စတုဂံပုံသဏ္ဌာန်ဖန်တုံးအစား ထက်ဝိုင်းပုံသဏ္ဌာန်ကို ရည်ရွယ်ချက်ရှိရှိ ရွေးချယ်ခဲ့သည်: ပြားချပ်သောမျက်နှာပြင်၏ အလယ်ဗဟိုကို ရည်ညွှန်းလိုက်ပြီး ကွေးသောမျက်နှာပြင်ကို ဖြတ်၍ ဝင်ရောက်စေခြင်းဖြင့် အလင်းရောင်ခြည်သည် ကွေးသောမျက်နှာပြင်၏ အချင်းဝက်တစ်လျှောက် အမြဲသွားပြီး ကွေးသောမျက်နှာပြင်ကို ပုံမှန်မျဉ်းတစ်လျှောက် အတိအကျ ထိရောက်သဖြင့် လုံးဝမကွေးဘဲ ဝင်ရောက်သည်။ ၎င်းက သူတွေ့ရသော မည်သည့်အလင်းယိုင်ခြင်းမဆို သူစမ်းသပ်နေသော ပြားချပ်သောမျက်နှာပြင်တွင်သာ ဖြစ်ပေါ်ပြီး ဖန်တုံး၏ အခြားနေရာများတွင် မဖြစ်ကြောင်း အဓိပ္ပာယ်ရသည်။\n\nထက်အောင်သည် ကွေးသောမျက်နှာပြင်ကိုဖြတ်၍ ပြားချပ်သောမျက်နှာပြင်၏ အလယ်ဗဟိုသို့ အလင်းရောင်ခြည်တစ်ခု ထိုးလိုက်ပြီး ထို့နောက် ထိုပြားချပ်သောမျက်နှာပြင်ရှိ ကျရောက်ထောင့်ကို တဖြည်းဖြည်း တိုးမြှင့်ခဲ့ကာ တစ်ကြိမ်စီတိုင်း ဖျော့ဖျော့ပြန်ဟပ်ရောင်ခြည်နှင့် တောက်ပသော အလင်းယိုင်ရောင်ခြည် နှစ်ခုစလုံး၏ တည်နေရာကို ခဲတံဖြင့် အမှတ်အသားပြုခဲ့သည်။ ကျရောက်ထောင့် တိုးလာသည်နှင့်အမျှ အလင်းယိုင်ရောင်ခြည်သည် ပုံမှန်မျဉ်းမှ ဝေးဝေး၍ ဝေးလာကာ ပို၍မှိန်လာခဲ့ပြီး၊ ပြန်ဟပ်ရောင်ခြည်မှာမူ တဖြည်းဖြည်း တောက်ပလာခဲ့သည်။\n\nအထူးကျရောက်ထောင့်တစ်ခုတွင် အလင်းယိုင်ရောင်ခြည်သည် လုံးဝ ပျောက်ကွယ်သွားခဲ့ပြီး၊ အပေါ်ဘက်လေထုသို့ ထွက်မလာဘဲ ပြားချပ်သောမျက်နှာပြင်ကိုယ်တိုင်၏ မျက်နှာပြင်တစ်လျှောက် အတိအကျ သွားနေခဲ့သည် -- ထက်အောင်သည် ၎င်းကို အထွေထွေထောင့်အဖြစ် မှတ်တမ်းတင်ခဲ့သည်။ ဤထောင့်ထက်ကျော်လွန်ပါက အလင်းယိုင်ရောင်ခြည် လုံးဝ မပေါ်လာတော့ဘဲ ပြန်ဟပ်ရောင်ခြည်တစ်ခုသာ ကျန်ရှိပြီး ယခုအခါ မူလဝင်လာသောရောင်ခြည်နှင့် အတူတူပင် တောက်ပလာခဲ့သည်: စုစုပေါင်းအတွင်းဘက်ပြန်ဟပ်ခြင်း ဖြစ်သည်။ ထက်အောင်သည် တိုင်းတာမှုကို သုံးကြိမ်ထပ်ခါလုပ်ဆောင်ပြီး ရလဒ်များကို ပျမ်းမျှယူခဲ့ရာ ဖန်အတွက် လက်ခံထားသောတန်ဖိုးနှင့် နီးစပ်သော အထွေထွေထောင့်ကို ရရှိခဲ့ပြီး၊ ဤအမူအကျင့် အတိအကျသည် optical fibre တစ်ခုအတွင်း အလင်းကို ချုပ်ကိုင်ထားစေသော နိယာမ ဖြစ်ကြောင်း မှတ်ချက်ပြုခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Why did Htet Aung use a semicircular glass block rather than a rectangular one?",
            questionMy:
                "ထက်အောင်သည် စတုဂံပုံသဏ္ဌာန်ဖန်တုံးအစား ထက်ဝိုင်းပုံသဏ္ဌာန်ကို အဘယ်ကြောင့် အသုံးပြုခဲ့သနည်း။",
            optionsEn: [
              "Light entering through the curved surface travels along a radius, entering without bending, so refraction only happens at the flat face being tested",
              "Semicircular blocks are simply cheaper to buy",
              "Rectangular blocks cannot let any light through at all",
              "It made the block easier to carry",
            ],
            optionsMy: [
              "ကွေးသောမျက်နှာပြင်ကိုဖြတ်၍ ဝင်ရောက်သောအလင်းသည် အချင်းဝက်တစ်လျှောက်သွားပြီး မကွေးဘဲဝင်ရောက်သောကြောင့် စမ်းသပ်နေသော ပြားချပ်သောမျက်နှာပြင်တွင်သာ အလင်းယိုင်ခြင်း ဖြစ်ပေါ်သည်",
              "ထက်ဝိုင်းပုံသဏ္ဌာန်ဖန်တုံးများသည် ဝယ်ရန် ဈေးပိုသက်သာသောကြောင့်",
              "စတုဂံပုံသဏ္ဌာန်ဖန်တုံးများသည် အလင်းကို လုံးဝ မဖြတ်သန်းစေနိုင်သောကြောင့်",
              "ဖန်တုံးကို သယ်ဆောင်ရန် ပိုလွယ်ကူစေသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first paragraph's explanation of why the semicircular shape was chosen.",
              "Aiming through the centre along the curved surface means the ray always hits it along the normal.",
            ],
            hintsMy: [
              "ထက်ဝိုင်းပုံသဏ္ဌာန်ကို အဘယ်ကြောင့် ရွေးချယ်ခဲ့ကြောင်း ရှင်းပြထားသည့် ပထမစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ကွေးသောမျက်နှာပြင်ကို ဖြတ်၍ အလယ်ဗဟိုကို ရည်ညွှန်းခြင်းက ရောင်ခြည်သည် ပုံမှန်မျဉ်းတစ်လျှောက် အမြဲထိရောက်ကြောင်း ဆိုလိုသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What happened to the refracted ray as the angle of incidence increased?",
            questionMy:
                "ကျရောက်ထောင့် တိုးလာသည်နှင့်အမျှ အလင်းယိုင်ရောင်ခြည်တွင် အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "It bent further away from the normal and grew dimmer, until it disappeared entirely",
              "It stayed exactly the same the whole time",
              "It bent closer towards the normal",
              "It disappeared immediately at zero degrees",
            ],
            optionsMy: [
              "ပုံမှန်မျဉ်းမှ ဝေးဝေး၍ ဝေးကာ ပို၍မှိန်လာပြီး လုံးဝ ပျောက်ကွယ်သွားသည်အထိ",
              "အချိန်တစ်လျှောက်လုံး အတိအကျ တူညီနေသည်",
              "ပုံမှန်မျဉ်းဘက်သို့ ပို၍ကပ်လာသည်",
              "သုညဒီဂရီတွင် ချက်ချင်း ပျောက်ကွယ်သွားသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the refracted ray's behaviour.",
              "The refracted ray bends further from the normal and dims as the angle of incidence grows.",
            ],
            hintsMy: [
              "အလင်းယိုင်ရောင်ခြည်၏ အမူအကျင့်ကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ကျရောက်ထောင့် တိုးလာသည်နှင့်အမျှ အလင်းယိုင်ရောင်ခြည်သည် ပုံမှန်မျဉ်းမှ ပို၍ဝေးကာ မှိန်သွားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "How did Htet Aung recognise the critical angle during the experiment?",
            questionMy:
                "စမ်းသပ်မှုအတွင်း ထက်အောင်သည် အထွေထွေထောင့်ကို မည်သို့ သိရှိခဲ့သနည်း။",
            optionsEn: [
              "The refracted ray ran exactly along the flat face's surface instead of emerging into the air",
              "The reflected ray disappeared completely",
              "The light source suddenly turned off",
              "The glass block cracked",
            ],
            optionsMy: [
              "အလင်းယိုင်ရောင်ခြည်သည် လေထုထဲသို့ မထွက်ဘဲ ပြားချပ်သောမျက်နှာပြင်ကိုယ်တိုင်၏ မျက်နှာပြင်တစ်လျှောက် အတိအကျ သွားနေခြင်း",
              "ပြန်ဟပ်ရောင်ခြည် လုံးဝ ပျောက်ကွယ်သွားခြင်း",
              "အလင်းရင်းမြစ် ရုတ်တရက်ပိတ်သွားခြင်း",
              "ဖန်တုံး ကွဲသွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of the critical angle moment.",
              "At exactly the critical angle, the refracted ray grazes along the boundary rather than exiting at an angle.",
            ],
            hintsMy: [
              "အထွေထွေထောင့် အချိန်ကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အထွေထွေထောင့်တွင် အတိအကျ အလင်းယိုင်ရောင်ခြည်သည် ထောင့်တစ်ခုဖြင့် မထွက်တော့ဘဲ နယ်နိမိတ်တစ်လျှောက် ဖြတ်သန်းသွားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn: "What happened beyond the critical angle?",
            questionMy:
                "အထွေထွေထောင့်ထက်ကျော်လွန်ပါက အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "Only the reflected ray remained, as bright as the original incoming ray -- total internal reflection",
              "Both rays disappeared entirely",
              "The refracted ray became brighter than ever",
              "Nothing changed at all",
            ],
            optionsMy: [
              "ပြန်ဟပ်ရောင်ခြည်တစ်ခုသာ ကျန်ရှိပြီး မူလဝင်လာသောရောင်ခြည်နှင့် အတူတူပင် တောက်ပသည် -- စုစုပေါင်းအတွင်းဘက်ပြန်ဟပ်ခြင်း",
              "ရောင်ခြည်နှစ်ခုစလုံး လုံးဝ ပျောက်ကွယ်သွားသည်",
              "အလင်းယိုင်ရောင်ခြည် ယခင်ကထက် ပို၍တောက်ပလာသည်",
              "မည်သည့်အရာမျှ မပြောင်းလဲပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's third paragraph.",
              "Beyond the critical angle, all the light energy reflects internally instead of any escaping as a refracted ray.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ တတိယစာပိုဒ်တွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အထွေထွေထောင့်ထက်ကျော်လွန်ပါက အလင်းစွမ်းအင်အားလုံးသည် အလင်းယိုင်ရောင်ခြည်အဖြစ် မထွက်တော့ဘဲ အတွင်းဘက်သို့ ပြန်ဟပ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w23-d5",
      dayNumber: 5,
      titleEn: "Week 23 Recap: Light and Sound Waves",
      titleMy: "အပတ်စဉ် ၂၃ ပြန်လည်သုံးသပ်ခြင်း - အလင်းနှင့် အသံလှိုင်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Light bends towards the normal when it enters a...",
          questionMy:
              "အလင်းသည် မည်သို့သောနေရာသို့ ဝင်ရောက်သောအခါ ပုံမှန်မျဉ်းဘက်သို့ ကွေးသနည်း။",
          optionsEn: [
            "Denser medium",
            "Less dense medium",
            "Vacuum",
            "Nothing changes it",
          ],
          optionsMy: [
            "ပိုသိပ်သည်းသောအလယ်အလတ်ပစ္စည်း",
            "သိပ်သည်းဆနည်းသောအလယ်အလတ်ပစ္စည်း",
            "ဗက်ကျူးမ်",
            "မည်သည့်အရာမျှ မပြောင်းလဲပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Total internal reflection happens above the...",
          questionMy:
              "စုစုပေါင်းအတွင်းဘက်ပြန်ဟပ်ခြင်းသည် မည်သည့်အရာထက်ကျော်လွန်မှ ဖြစ်ပေါ်သနည်း။",
          optionsEn: ["Critical angle", "Amplitude", "Frequency", "Wavelength"],
          optionsMy: ["အထွေထွေထောင့်", "အကျယ်", "ကြိမ်နှုန်း", "လှိုင်းအလျား"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Ultrasound frequencies are...",
          questionMy: "အာထရာဆောင်း ကြိမ်နှုန်းများသည်...",
          optionsEn: [
            "Above human hearing range",
            "Below human hearing range",
            "Exactly at human hearing range",
            "Not real frequencies",
          ],
          optionsMy: [
            "လူသားကြားနိုင်စွမ်း အတိုင်းအတာထက် ကျော်လွန်သည်",
            "လူသားကြားနိုင်စွမ်း အတိုင်းအတာအောက်",
            "လူသားကြားနိုင်စွမ်း အတိုင်းအတာနှင့် အတိအကျ ညီသည်",
            "အစစ်အမှန်ကြိမ်နှုန်းများ မဟုတ်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Optical fibres transmit light using...",
          questionMy:
              "Optical fibre များသည် အလင်းကို မည်သည့်နည်းဖြင့် ပို့ဆောင်သနည်း။",
          optionsEn: [
            "Total internal reflection",
            "Refraction only",
            "Diffraction only",
            "External mirrors",
          ],
          optionsMy: [
            "စုစုပေါင်းအတွင်းဘက်ပြန်ဟပ်ခြင်း",
            "အလင်းယိုင်ခြင်းသာ",
            "ခွဲထုတ်ခြင်းသာ",
            "အပြင်ဘက်မှန်များ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Ultrasound is commonly used for...",
          questionMy: "အာထရာဆောင်းကို မည်သည့်အတွက် ဘုံသုံးလေ့ရှိသနည်း။",
          optionsEn: [
            "Medical scanning and detecting internal flaws",
            "Cooking food",
            "Generating electricity directly",
            "Measuring room temperature",
          ],
          optionsMy: [
            "ဆေးဘက်ဆိုင်ရာစကင်ပြုလုပ်ခြင်းနှင့် အတွင်းပိုင်းအပျက်အစီးများ ရှာဖွေခြင်း",
            "အစားအစာချက်ပြုတ်ခြင်း",
            "လျှပ်စစ်ဓာတ်အား တိုက်ရိုက်ထုတ်လုပ်ခြင်း",
            "အခန်းအပူချိန် တိုင်းတာခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 24 (Capstone): "Optics and Waves Practical Lab"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek24 = CourseWeekDef(
  id: "course-igcse-combsci-w24",
  weekNumber: 24,
  titleEn: "Optics and Waves Practical Lab",
  titleMy: "အလင်းနှင့် လှိုင်း ဓာတ်ခွဲခန်း လက်တွေ့စမ်းသပ်မှု",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w24-d1",
      dayNumber: 1,
      titleEn: "Thermal Physics and Waves Exam Quiz",
      titleMy: "အပူရူပဗေဒနှင့် လှိုင်းများ စာမေးပွဲပုံစံ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which heat transfer method involves electromagnetic waves and needs no medium?",
          questionMy:
              "မည်သည့်အပူကူးပြောင်းမှုနည်းလမ်းသည် လျှပ်စစ်သံလိုက်လှိုင်းများပါဝင်ပြီး အလယ်အလတ်ပစ္စည်း မလိုအပ်သနည်း။",
          optionsEn: [
            "Radiation",
            "Conduction",
            "Convection",
            "All three equally",
          ],
          optionsMy: [
            "ရေဒီယေးရှင်း",
            "ကွန်ဒတ်ရှင်း",
            "ကွန်ဗက်ရှင်း",
            "သုံးမျိုးလုံး တူညီစွာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "This method transfers energy as infrared electromagnetic waves.",
            "It is the only one of the three that can cross a vacuum, exactly as sunlight crosses empty space to reach Earth.",
          ],
          hintsMy: [
            "ဤနည်းလမ်းသည် စွမ်းအင်ကို အင်ဖရာရက် လျှပ်စစ်သံလိုက်လှိုင်းများအဖြစ် ကူးပြောင်းပေးသည်။",
            "၎င်းသည် သုံးမျိုးအနက် ဗက်ကျူးမ်ကို ဖြတ်ကျော်နိုင်သော တစ်ခုတည်းသောနည်းလမ်းဖြစ်ပြီး နေရောင်ခြည်သည် ဟင်းလင်းအာကာသကိုဖြတ်၍ ကမ္ဘာသို့ဆိုက်ရောက်ပုံနှင့် အတိအကျပင်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "The wave equation v = f x (lambda) can be used to calculate wave speed if you know...",
          questionMy:
              "v = f x (lambda) လှိုင်းညီမျှခြင်းကို လှိုင်းအမြန်နှုန်း တွက်ချက်ရန် မည်သည့်ပမာဏများ သိရှိမှ အသုံးပြုနိုင်သနည်း။",
          optionsEn: [
            "Frequency and wavelength",
            "Amplitude and period only",
            "Only the amplitude",
            "Only the colour of the wave",
          ],
          optionsMy: [
            "ကြိမ်နှုန်းနှင့် လှိုင်းအလျား",
            "အကျယ်နှင့် ကာလသာ",
            "အကျယ်သာ",
            "လှိုင်း၏ အရောင်သာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Frequency is measured in hertz (Hz) and wavelength in metres.",
            "Multiplying frequency by wavelength gives speed, in metres per second.",
          ],
          hintsMy: [
            "ကြိမ်နှုန်းကို ဟတ်ဇ် (Hz) ဖြင့်လည်းကောင်း လှိုင်းအလျားကို မီတာဖြင့်လည်းကောင်း တိုင်းတာသည်။",
            "ကြိမ်နှုန်းကို လှိုင်းအလျားနှင့် မြှောက်ခြင်းက အမြန်နှုန်းကို မီတာ/စက္ကန့်ဖြင့် ရရှိစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Total internal reflection requires the angle of incidence to be...",
          questionMy:
              "စုစုပေါင်းအတွင်းဘက်ပြန်ဟပ်ခြင်းအတွက် ကျရောက်ထောင့်သည် မည်သို့ရှိရန် လိုအပ်သနည်း။",
          optionsEn: [
            "Greater than the critical angle, in a denser medium",
            "Exactly equal to the critical angle only",
            "Less than the critical angle",
            "Zero degrees",
          ],
          optionsMy: [
            "ပိုသိပ်သည်းသော အလယ်အလတ်ပစ္စည်းတွင် အထွေထွေထောင့်ထက် ပိုကြီးရမည်",
            "အထွေထွေထောင့်နှင့် အတိအကျ ညီရမည်သာ",
            "အထွေထွေထောင့်ထက် ပိုသေးရမည်",
            "သုညဒီဂရီ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall the semicircular glass block experiment -- beyond the critical angle no refracted ray escapes at all.",
            "This principle is what allows optical fibres to carry light over long distances with minimal loss.",
          ],
          hintsMy: [
            "ထက်ဝိုင်းပုံသဏ္ဌာန်ဖန်တုံးစမ်းသပ်မှုကို သတိရပါ -- အထွေထွေထောင့်ထက်ကျော်လွန်ပါက အလင်းယိုင်ရောင်ခြည် လုံးဝ မထွက်နိုင်ပါ။",
            "ဤနိယာမသည် optical fibre များကို ဆုံးရှုံးမှုအနည်းငယ်ဖြင့် အလင်းကို ခရီးရှည်ပို့ဆောင်နိုင်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "A good thermal insulator reduces heat loss mainly by...",
          questionMy:
              "ကောင်းမွန်သော အပူလွှတ်ကာတစ်ခုသည် အပူဆုံးရှုံးမှုကို အဓိကအားဖြင့် မည်သို့ လျှော့ချပေးသနည်း။",
          optionsEn: [
            "Trapping still air, reducing both conduction and convection",
            "Conducting heat rapidly through metal",
            "Absorbing all radiation instantly",
            "Increasing convection currents",
          ],
          optionsMy: [
            "မလှုပ်ရှားသောလေကို ချုပ်ကိုင်ထားခြင်းဖြင့် ကွန်ဒတ်ရှင်းနှင့် ကွန်ဗက်ရှင်း နှစ်မျိုးစလုံးကို လျှော့ချသည်",
            "သတ္တုတစ်ဆင့် အပူကို လျင်မြန်စွာ ကူးပြောင်းခြင်းဖြင့်",
            "ရေဒီယေးရှင်းအားလုံးကို ချက်ချင်းစုပ်ယူခြင်းဖြင့်",
            "ကွန်ဗက်ရှင်းရေစီးကြောင်းများကို တိုးမြှင့်ခြင်းဖြင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall Pyae Sone's insulation investigation -- trapped air both conducts poorly and cannot circulate.",
            "This combination is why materials like wool and foam make effective insulators.",
          ],
          hintsMy: [
            "ပြည့်စုံ၏ အပူလွှတ်ကာစူးစမ်းလေ့လာမှုကို သတိရပါ -- ချုပ်ကိုင်ထားသောလေသည် ညံ့ဖျင်းစွာသာ ကူးပြောင်းပြီး လည်ပတ်၍လည်း မရနိုင်ပါ။",
            "ဤပေါင်းစပ်မှုကြောင့် သိုးမွှေးနွယ်နှင့် ဖေါင်းကဲ့သို့သော ပစ္စည်းများသည် ထိရောက်သော အပူလွှတ်ကာများ ဖြစ်ကြသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w24-d2",
      dayNumber: 2,
      titleEn: "Match the Practical Physics Vocabulary",
      titleMy: "လက်တွေ့ရူပဗေဒဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w24-dm-1",
          termEn: "Angle of Incidence",
          termMy: "ကျရောက်ထောင့် (Angle of Incidence)",
          matchEn:
              "The angle between an incoming ray and the normal, measured at the point it strikes a boundary.",
          matchMy:
              "ဝင်ရောက်လာသောရောင်ခြည်နှင့် ပုံမှန်မျဉ်းကြားရှိထောင့်ဖြစ်ပြီး၊ ၎င်းက နယ်နိမိတ်ကို ထိရောက်သည့်အမှတ်တွင် တိုင်းတာသည်။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w24-dm-2",
          termEn: "Angle of Refraction",
          termMy: "အလင်းယိုင်ထောင့် (Angle of Refraction)",
          matchEn:
              "The angle between a refracted ray and the normal, after the ray crosses into a new medium.",
          matchMy:
              "ရောင်ခြည်သည် အလယ်အလတ်ပစ္စည်းအသစ်တစ်ခုသို့ ဖြတ်ကူးပြီးနောက် အလင်းယိုင်ရောင်ခြည်နှင့် ပုံမှန်မျဉ်းကြားရှိထောင့်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w24-dm-3",
          termEn: "Ripple Tank",
          termMy: "ရစ်ပဲလ်ကန် (Ripple Tank)",
          matchEn:
              "A shallow tray of water used to study wave properties like reflection, refraction, and diffraction by observing wavefronts.",
          matchMy:
              "လှိုင်းရှေ့ဘက်များကို လေ့လာခြင်းဖြင့် ပြန်ဟပ်ခြင်း၊ အလင်းယိုင်ခြင်းနှင့် ခွဲထုတ်ခြင်းကဲ့သို့သော လှိုင်းဂုဏ်သတ္တိများကို လေ့လာရန်အသုံးပြုသည့် ရေအိုင်ချိုင့်ပြား။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w24-dm-4",
          termEn: "Specific Heat Capacity",
          termMy: "သီးသန့်အပူဆံ့နှုန်း (Specific Heat Capacity)",
          matchEn:
              "The energy needed to raise the temperature of 1 kg of a substance by 1 degree Celsius.",
          matchMy:
              "ဒြပ်ဝတ္ထု ၁ ကီလိုဂရမ်၏ အပူချိန်ကို ၁ ဒီဂရီစင်တီဂရိတ် မြှင့်တင်ရန် လိုအပ်သော စွမ်းအင်။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w24-dm-5",
          termEn: "Wavefront",
          termMy: "လှိုင်းရှေ့ဘက် (Wavefront)",
          matchEn:
              "A line joining all points on a wave that are at the same point in their cycle, e.g. all wave crests.",
          matchMy:
              "လှိုင်းစက်ဝန်းအတွင်း တစ်ချက်တည်းရှိနေသော လှိုင်းပေါ်ရှိအမှတ်များအားလုံးကို ဆက်စပ်ပေးသော မျဉ်း၊ ဥပမာ- လှိုင်းထိပ်များအားလုံး။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w24-d3",
      dayNumber: 3,
      titleEn: "Sort: Thermal Physics, Waves and Light, or Sound?",
      titleMy: "စီစစ်ကြမည် - အပူရူပဗေဒ၊ လှိုင်းနှင့်အလင်း (သို့) အသံ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Thermal Physics", "Waves and Light", "Sound"],
        bucketsMy: ["အပူရူပဗေဒ", "လှိုင်းနှင့်အလင်း", "အသံ"],
        items: [
          SortingItem(
            id: "igcsecs-w24-sort-1",
            labelEn: "Conduction through a metal rod",
            labelMy: "သတ္တုတန်းတစ်ခုတစ်ဆင့် ကွန်ဒတ်ရှင်း",
            correctBucketEn: "Thermal Physics",
            correctBucketMy: "အပူရူပဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w24-sort-2",
            labelEn: "Convection currents rising above a heater",
            labelMy: "ပူပေးစက်အထက်တွင် တက်လာသော ကွန်ဗက်ရှင်းရေစီးကြောင်းများ",
            correctBucketEn: "Thermal Physics",
            correctBucketMy: "အပူရူပဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w24-sort-3",
            labelEn: "Latent heat absorbed when ice melts into water",
            labelMy:
                "ရေခဲသည် ရေအဖြစ်အရည်ပျော်သောအခါ စုပ်ယူလိုက်သော ကွယ်ဝှက်အပူ",
            correctBucketEn: "Thermal Physics",
            correctBucketMy: "အပူရူပဗေဒ",
          ),
          SortingItem(
            id: "igcsecs-w24-sort-4",
            labelEn: "Wavelength measured between two wave crests",
            labelMy: "လှိုင်းထိပ်နှစ်ခုကြား တိုင်းတာသော လှိုင်းအလျား",
            correctBucketEn: "Waves and Light",
            correctBucketMy: "လှိုင်းနှင့်အလင်း",
          ),
          SortingItem(
            id: "igcsecs-w24-sort-5",
            labelEn: "Refraction of light entering water",
            labelMy: "ရေထဲသို့ဝင်ရောက်သော အလင်း၏ အလင်းယိုင်ခြင်း",
            correctBucketEn: "Waves and Light",
            correctBucketMy: "လှိုင်းနှင့်အလင်း",
          ),
          SortingItem(
            id: "igcsecs-w24-sort-6",
            labelEn: "Total internal reflection inside an optical fibre",
            labelMy: "အော်ပတ်တီကယ်ကြိုးအတွင်း စုစုပေါင်းအတွင်းဘက်ပြန်ဟပ်ခြင်း",
            correctBucketEn: "Waves and Light",
            correctBucketMy: "လှိုင်းနှင့်အလင်း",
          ),
          SortingItem(
            id: "igcsecs-w24-sort-7",
            labelEn: "Ultrasound used in medical scanning",
            labelMy: "ဆေးဘက်ဆိုင်ရာစကင်တွင် အသုံးပြုသော အာထရာဆောင်း",
            correctBucketEn: "Sound",
            correctBucketMy: "အသံ",
          ),
          SortingItem(
            id: "igcsecs-w24-sort-8",
            labelEn: "The pitch of a sound depending on its frequency",
            labelMy: "အသံ၏ အသံနေအသံထားသည် ၎င်း၏ ကြိမ်နှုန်းပေါ်တွင် မူတည်ခြင်း",
            correctBucketEn: "Sound",
            correctBucketMy: "အသံ",
          ),
          SortingItem(
            id: "igcsecs-w24-sort-9",
            labelEn: "An echo formed by sound reflecting off a wall",
            labelMy: "နံရံမှ ပြန်ဟပ်သော အသံဖြင့် ဖြစ်ပေါ်လာသော အသံလိုင်း",
            correctBucketEn: "Sound",
            correctBucketMy: "အသံ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w24-d4",
      dayNumber: 4,
      titleEn: "Reading: Chan Myae's Combined Physics Exam Practice",
      titleMy: "စာဖတ်ခြင်း - ချမ်းမြေ့၏ ပေါင်းစပ်ရူပဗေဒ စာမေးပွဲလေ့ကျင့်ခန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Chan Myae's Combined Physics Exam Practice",
        titleMy: "ချမ်းမြေ့၏ ပေါင်းစပ်ရူပဗေဒ စာမေးပွဲလေ့ကျင့်ခန်း",
        passageEn:
            "For the term's capstone exam practice, Chan Myae worked through a past-paper-style question that deliberately combined thermal physics with wave calculations in one connected scenario, exactly the way a real IGCSE paper often links two topics together.\n\nThe first part asked Chan Myae to calculate the energy needed to melt a sample of ice already at 0 degrees Celsius, using the specific latent heat of fusion of ice and the mass of the sample given in the question. Chan Myae carefully multiplied the mass by the specific latent heat value, remembering that no temperature change happens during melting -- all the energy goes into breaking the bonds holding the solid structure together, exactly the idea behind latent heat from Week 21.\n\nThe second part of the same question then switched entirely to waves: a ripple tank generator produced waves of a given frequency, and the question gave a measured wavelength from a photograph of the ripple pattern, asking for the wave speed. Chan Myae applied v = f x (lambda) directly, multiplying the given frequency and wavelength together.\n\nReviewing her worked answer afterward, Chan Myae realised her first attempt had mixed up which value was frequency and which was wavelength, giving an answer with the wrong units -- metres instead of metres per second. Checking that her final answer's units made sense for a speed calculation caught the mistake immediately, and she corrected it before moving on. Her teacher explained that combined-topic questions like this test whether a student truly understands each formula, not just whether they can recite it in isolation.",
        passageMy:
            "ထိုနှစ်ဝက်၏ အနှစ်ချုပ်စာမေးပွဲ လေ့ကျင့်ခန်းအတွက် ချမ်းမြေ့သည် အပူရူပဗေဒနှင့် လှိုင်းတွက်ချက်မှုများကို ဆက်စပ်ဖြစ်ရပ်တစ်ခုတည်းတွင် ရည်ရွယ်ချက်ရှိရှိ ပေါင်းစပ်ထားသော ယခင်စာမေးပွဲပုံစံ မေးခွန်းတစ်ခုကို ဖြေရှင်းခဲ့သည်၊ ၎င်းသည် တကယ့် IGCSE စာမေးပွဲစာရွက်တစ်ခုက ဘာသာရပ်နှစ်ခုကို ဆက်စပ်ပေးလေ့ရှိပုံ အတိအကျဖြစ်သည်။\n\nပထမပိုင်းတွင် ချမ်းမြေ့အား ၀ ဒီဂရီစင်တီဂရိတ်တွင်ရှိပြီးသား ရေခဲနမူနာတစ်ခုကို အရည်ပျော်ရန် လိုအပ်သော စွမ်းအင်ကို ရေခဲ၏ သီးသန့်ကွယ်ဝှက်အပူ (specific latent heat of fusion) နှင့် မေးခွန်းတွင်ပေးထားသော နမူနာ၏ အလေးချိန်ကို အသုံးပြု၍ တွက်ချက်ရန် တောင်းဆိုထားခဲ့သည်။ ချမ်းမြေ့သည် အလေးချိန်ကို သီးသန့်ကွယ်ဝှက်အပူတန်ဖိုးနှင့် ဂရုတစိုက် မြှောက်ခဲ့ပြီး၊ အရည်ပျော်နေစဉ် အပူချိန် မည်သို့မျှ ပြောင်းလဲခြင်းမရှိကြောင်း သတိရခဲ့သည် -- စွမ်းအင်အားလုံးသည် အစိုင်အခဲဖွဲ့စည်းပုံကို စွဲကိုင်ထားသော ဓာတ်ချည်နှောင်များ ချိုးဖျက်ရန်သွားသည်၊ ၎င်းသည် အပတ်စဉ် ၂၁ မှ ကွယ်ဝှက်အပူ၏ အယူအဆ အတိအကျပင်ဖြစ်သည်။\n\nတူညီသောမေးခွန်း၏ ဒုတိယပိုင်းသည် လှိုင်းများသို့ လုံးဝ ပြောင်းသွားခဲ့ပြီး: ရစ်ပဲလ်ကန်ထုတ်ကိရိယာသည် ပေးထားသောကြိမ်နှုန်းရှိ လှိုင်းများ ထုတ်လုပ်ပေးခဲ့ပြီး၊ မေးခွန်းသည် ရစ်ပဲလ်ပုံစံ၏ ဓာတ်ပုံမှ တိုင်းတာထားသော လှိုင်းအလျားကို ပေးကာ လှိုင်းအမြန်နှုန်းကို မေးမြန်းခဲ့သည်။ ချမ်းမြေ့သည် v = f x (lambda) ကို တိုက်ရိုက်အသုံးချကာ ပေးထားသောကြိမ်နှုန်းနှင့် လှိုင်းအလျားကို မြှောက်ခဲ့သည်။\n\nနောက်ပိုင်းတွင် သူမ၏ ဖြေထားသောအဖြေကို ပြန်လည်စစ်ဆေးကြည့်ရာ ချမ်းမြေ့သည် သူမ၏ ပထမကြိမ်ကြိုးစားမှုတွင် မည်သည့်တန်ဖိုးက ကြိမ်နှုန်းဖြစ်ပြီး မည်သည့်တန်ဖိုးက လှိုင်းအလျားဖြစ်ကြောင်း ရောထွေးထားကြောင်း သိရှိလာခဲ့ပြီး၊ ၎င်းက မှားယွင်းသော ယူနစ် -- မီတာ/စက္ကန့်အစား မီတာသာ -- ပါဝင်သော အဖြေတစ်ခု ရရှိစေခဲ့သည်။ သူမ၏ နောက်ဆုံးအဖြေ၏ ယူနစ်များသည် အမြန်နှုန်းတွက်ချက်မှုတစ်ခုအတွက် အဓိပ္ပာယ်ရှိမရှိ စစ်ဆေးခြင်းက အမှားကို ချက်ချင်းလျှင် ဖော်ထုတ်ပေးခဲ့ပြီး၊ သူမက ရှေ့ဆက်မတိုင်မီ ပြင်ဆင်ခဲ့သည်။ သူ၏ဆရာမက ဤကဲ့သို့ ဘာသာရပ်ပေါင်းစုံပါဝင်သော မေးခွန်းများသည် ကျောင်းသားတစ်ဦးသည် ဖော်မြူလာတစ်ခုစီကို ဘာသာရပ်တစ်ခုတည်းအနေနှင့် ရွတ်ဆိုနိုင်သည်ဟူသည်ထက် အမှန်တကယ် နားလည်သည်ဟူသည်ကို စစ်ဆေးခြင်းဖြစ်ကြောင်း ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What formula did Chan Myae use to calculate the energy needed to melt the ice?",
            questionMy:
                "ရေခဲကို အရည်ပျော်ရန် လိုအပ်သော စွမ်းအင်ကို တွက်ချက်ရန် ချမ်းမြေ့ မည်သည့်ဖော်မြူလာ အသုံးပြုခဲ့သနည်း။",
            optionsEn: [
              "Mass multiplied by the specific latent heat of fusion",
              "Frequency multiplied by wavelength",
              "Mass divided by temperature",
              "Amplitude multiplied by frequency",
            ],
            optionsMy: [
              "အလေးချိန်ကို သီးသန့်ကွယ်ဝှက်အပူဖြင့် မြှောက်ခြင်း",
              "ကြိမ်နှုန်းကို လှိုင်းအလျားနှင့် မြှောက်ခြင်း",
              "အလေးချိန်ကို အပူချိန်ဖြင့် စားခြင်း",
              "အကျယ်ကို ကြိမ်နှုန်းနှင့် မြှောက်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the first part of the question.",
              "Latent heat calculations always multiply mass by the specific latent heat value.",
            ],
            hintsMy: [
              "မေးခွန်း၏ ပထမပိုင်းကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ကွယ်ဝှက်အပူတွက်ချက်မှုများသည် အလေးချိန်ကို သီးသန့်ကွယ်ဝှက်အပူတန်ဖိုးနှင့် အမြဲ မြှောက်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did no temperature change happen while the ice was melting?",
            questionMy:
                "ရေခဲသည် အရည်ပျော်နေစဉ် အပူချိန် မည်သို့မျှ မပြောင်းလဲရသည့် အကြောင်းရင်းမှာ အဘယ်နည်း။",
            optionsEn: [
              "All the energy went into breaking the bonds holding the solid structure together",
              "The ice was not actually melting at all",
              "The energy was being converted into sound instead",
              "The thermometer was broken",
            ],
            optionsMy: [
              "စွမ်းအင်အားလုံးသည် အစိုင်အခဲဖွဲ့စည်းပုံကို စွဲကိုင်ထားသော ဓာတ်ချည်နှောင်များ ချိုးဖျက်ရန်သွားခဲ့ခြင်း",
              "ရေခဲသည် အမှန်တကယ် လုံးဝ အရည်မပျော်ခဲ့ခြင်း",
              "စွမ်းအင်သည် အသံအဖြစ် အစားထိုးကူးပြောင်းသွားခြင်း",
              "အပူတိုင်းကရိယာ ပျက်နေခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation linking back to Week 21's latent heat concept.",
              "This is the defining feature of latent heat -- energy changes state without changing temperature.",
            ],
            hintsMy: [
              "အပတ်စဉ် ၂၁ မှ ကွယ်ဝှက်အပူအယူအဆနှင့် ဆက်စပ်ရှင်းပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ ကွယ်ဝှက်အပူ၏ သတ်မှတ်ဂုဏ်သတ္တိဖြစ်သည် -- အပူချိန်မပြောင်းလဲဘဲ စွမ်းအင်က အခြေအနေပြောင်းလဲစေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What mistake did Chan Myae make in her first attempt at the wave-speed calculation?",
            questionMy:
                "လှိုင်းအမြန်နှုန်း တွက်ချက်မှု၏ ပထမကြိုးစားမှုတွင် ချမ်းမြေ့ မည်သည့်အမှား ပြုမိခဲ့သနည်း။",
            optionsEn: [
              "She mixed up which value was frequency and which was wavelength",
              "She used the wrong latent heat formula entirely",
              "She forgot to bring a calculator",
              "She used a wavelength measured in kilograms",
            ],
            optionsMy: [
              "မည်သည့်တန်ဖိုးက ကြိမ်နှုန်းဖြစ်ပြီး မည်သည့်တန်ဖိုးက လှိုင်းအလျားဖြစ်ကြောင်း ရောထွေးမိခြင်း",
              "ကွယ်ဝှက်အပူ ဖော်မြူလာလုံးဝ မှားယွင်းစွာ အသုံးပြုခဲ့ခြင်း",
              "ကာလကုလေတာ ယူဆောင်ရန်မေ့ခဲ့ခြင်း",
              "ကီလိုဂရမ်ဖြင့် တိုင်းတာထားသော လှိုင်းအလျားကို အသုံးပြုခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the fourth paragraph's description of the mistake.",
              "Swapping which value plays which role in a formula produces an answer with the wrong units.",
            ],
            hintsMy: [
              "အမှားကို ဖော်ပြထားသည့် စတုတ္ထစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဖော်မြူလာတစ်ခုတွင် မည်သည့်တန်ဖိုးက မည်သည့်အခန်းကဏ္ဍ ကစားသည်ကို ဖလှယ်ခြင်းက မှားယွင်းသောယူနစ်ပါဝင်သည့် အဖြေတစ်ခုကို ဖြစ်ပေါ်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn: "How did Chan Myae catch her own mistake?",
            questionMy:
                "ချမ်းမြေ့သည် ၎င်း၏ကိုယ်ပိုင်အမှားကို မည်သို့ ဖော်ထုတ်ခဲ့သနည်း။",
            optionsEn: [
              "By checking that her final answer's units made sense for a speed calculation",
              "By asking a classmate for the answer",
              "By guessing randomly until it felt right",
              "She never actually found the mistake",
            ],
            optionsMy: [
              "သူမ၏ နောက်ဆုံးအဖြေ၏ ယူနစ်များသည် အမြန်နှုန်းတွက်ချက်မှုတစ်ခုအတွက် အဓိပ္ပာယ်ရှိမရှိ စစ်ဆေးခြင်းဖြင့်",
              "အတန်းဖော်တစ်ဦးထံမှ အဖြေတောင်းခံခြင်းဖြင့်",
              "မှန်ကန်သည်ဟု ခံစားရသည်အထိ ကျပန်းခန့်မှန်းခြင်းဖြင့်",
              "သူမ အမှားကို လုံးဝ ရှာမတွေ့ခဲ့ပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final paragraph.",
              "Checking that units make physical sense is a powerful way to catch calculation mistakes.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးစာပိုဒ်တွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ယူနစ်များသည် ရူပဗေဒအရ အဓိပ္ပာယ်ရှိမရှိ စစ်ဆေးခြင်းသည် တွက်ချက်မှုအမှားများကို ဖော်ထုတ်ရန် အားကောင်းသောနည်းလမ်းတစ်ခုဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w24-d5",
      dayNumber: 5,
      titleEn: "Term 6 Recap: Thermal Physics and Waves",
      titleMy: "ဆဌမနှစ်ဝက် ပြန်လည်သုံးသပ်ခြင်း - အပူရူပဗေဒနှင့် လှိုင်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Conduction transfers heat mainly through...",
          questionMy:
              "ကွန်ဒတ်ရှင်းသည် အပူကို အဓိကအားဖြင့် မည်သည့်နေရာဖြင့် ကူးပြောင်းသနည်း။",
          optionsEn: [
            "Solids",
            "A vacuum only",
            "Only liquids",
            "Nothing at all",
          ],
          optionsMy: [
            "အစိုင်အခဲများ",
            "ဗက်ကျူးမ်သာ",
            "အရည်များသာ",
            "မည်သည့်အရာမျှမဟုတ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Radiation can travel through...",
          questionMy: "ရေဒီယေးရှင်းသည် မည်သည့်နေရာကို ဖြတ်သန်းနိုင်သနည်း။",
          optionsEn: [
            "A vacuum",
            "Only solids",
            "Only liquids",
            "Nothing at all",
          ],
          optionsMy: [
            "ဗက်ကျူးမ်",
            "အစိုင်အခဲများသာ",
            "အရည်များသာ",
            "မည်သည့်အရာမျှမဟုတ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The wave equation states that speed equals...",
          questionMy: "လှိုင်းညီမျှခြင်းအရ အမြန်နှုန်းသည် မည်သို့ ညီမျှသနည်း။",
          optionsEn: [
            "Frequency multiplied by wavelength",
            "Frequency divided by amplitude",
            "Amplitude multiplied by period",
            "Wavelength divided by amplitude",
          ],
          optionsMy: [
            "ကြိမ်နှုန်းကို လှိုင်းအလျားနှင့် မြှောက်ခြင်း",
            "ကြိမ်နှုန်းကို အကျယ်ဖြင့် စားခြင်း",
            "အကျယ်ကို ကာလနှင့် မြှောက်ခြင်း",
            "လှိုင်းအလျားကို အကျယ်ဖြင့် စားခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Total internal reflection is the basis for how...",
          questionMy:
              "စုစုပေါင်းအတွင်းဘက်ပြန်ဟပ်ခြင်းသည် မည်သည့်အရာ၏ အခြေခံနိယာမဖြစ်သနည်း။",
          optionsEn: [
            "Optical fibres work",
            "Convection currents form",
            "Ice melts",
            "Sound waves compress",
          ],
          optionsMy: [
            "Optical fibre များ အလုပ်လုပ်ပုံ",
            "ကွန်ဗက်ရှင်းရေစီးကြောင်းများ ဖြစ်ပေါ်ပုံ",
            "ရေခဲ အရည်ပျော်ပုံ",
            "အသံလှိုင်းများ ချုံ့ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Ultrasound frequencies are...",
          questionMy: "အာထရာဆောင်း ကြိမ်နှုန်းများသည်...",
          optionsEn: [
            "Above human hearing range",
            "Below human hearing range",
            "Exactly audible",
            "Not sound at all",
          ],
          optionsMy: [
            "လူသားကြားနိုင်စွမ်း အတိုင်းအတာထက် ကျော်လွန်သည်",
            "လူသားကြားနိုင်စွမ်း အတိုင်းအတာအောက်",
            "အတိအကျ ကြားနိုင်သည်",
            "အသံ လုံးဝမဟုတ်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Latent heat is the energy involved in a change of state where...",
          questionMy:
              "ကွယ်ဝှက်အပူသည် မည်သို့သော အခြေအနေပြောင်းလဲမှုတွင် ပါဝင်သော စွမ်းအင်ဖြစ်သနည်း။",
          optionsEn: [
            "Temperature stays constant",
            "Temperature always rises rapidly",
            "Mass is destroyed",
            "No energy is involved at all",
          ],
          optionsMy: [
            "အပူချိန် အမြဲ တည်ငြိမ်နေသည်",
            "အပူချိန် အမြဲ လျင်မြန်စွာ မြင့်တက်သည်",
            "ထုထည် ပျက်စီးသွားသည်",
            "စွမ်းအင် လုံးဝ မပါဝင်ပါ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 6: "Thermal Physics and Waves" (Weeks 21-24)
// =====================================================================

const CourseTermDef igcseCombinedScienceTerm6 = CourseTermDef(
  id: "course-igcse-combsci-t6",
  termNumber: 6,
  titleEn: "Thermal Physics and Waves",
  titleMy: "အပူရူပဗေဒနှင့် လှိုင်းများ",
  certificateTitleEn: "Thermal Physics and Waves",
  certificateTitleMy: "အပူရူပဗေဒနှင့် လှိုင်းများ",
  weeks: [
    _igcseCombSciWeek21,
    _igcseCombSciWeek22,
    _igcseCombSciWeek23,
    _igcseCombSciWeek24,
  ],
);
