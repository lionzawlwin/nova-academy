// File: ai_data_bridge/_generated/igcse_combined_science_term2.dart
// IGCSE Combined Science -- Term 2: "Chemistry - Particulate Nature &
// Stoichiometry" (Weeks 5-8), authored from the corrected weekly topic
// map in ai_data_bridge/igcse_combined_science_all_terms.dart. Staging
// artifact only -- not yet wired into course_pathway_bank.dart's
// Grade.igcse pathway. Follows the exact DailyLessonDef/CourseWeekDef/
// CourseTermDef schema and id/xp conventions established by Term 1
// (igcse_combined_science_term1.dart) and _secondary3SciencePathway,
// including its rotating cast of named Myanmar-student protagonists
// (one per week's reading passage, not a single fixed character).
//
// Week 5 (The Particulate Nature of Matter): particle arrangement in
// solids/liquids/gases, diffusion of gases, and changes of state. Week 6
// (Atoms, Elements, and Compounds): atomic structure, isotopes, and
// ionic/covalent bonding. Week 7 (Chemical Equations and Calculations):
// balancing equations, relative atomic mass, and the mole concept.
// Week 8 (Capstone -- Stoichiometry Exam Studio): rigorous quantitative
// mole problems and bonding-classification review mirroring IGCSE
// assessment standards.

import 'package:nova_academy/features/lessons/course_pathway_bank.dart';
import 'package:nova_academy/features/lessons/interactive_content_models.dart';
import 'package:nova_academy/features/lessons/mock_quiz_data.dart';

// =====================================================================
// Week 5: "The Particulate Nature of Matter"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek5 = CourseWeekDef(
  id: "course-igcse-combsci-w5",
  weekNumber: 5,
  titleEn: "The Particulate Nature of Matter",
  titleMy: "ဒြပ်ဝတ္ထု၏ အမှုန်သဘောသဘာဝ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w5-d1",
      dayNumber: 1,
      titleEn: "States of Matter and Particle Theory Quiz",
      titleMy: "ဒြပ်ဝတ္ထုအခြေအနေများနှင့် အမှုန်သီအိုရီ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In a solid, the particles are arranged...",
          questionMy:
              "အစိုင်အခဲ (Solid) တစ်ခုတွင် အမှုန်များကို မည်သို့ စီစဉ်ထားသနည်း။",
          optionsEn: [
            "Closely packed in a fixed, regular pattern, only vibrating in place",
            "Far apart, moving randomly at high speed",
            "Close together but free to slide past each other",
            "Not present at all",
          ],
          optionsMy: [
            "ပုံသေ စည်းစနစ်ကျသောပုံစံဖြင့် ကပ်ကပ်စီစဉ်ထားပြီး မိမိနေရာတွင်သာ တုန်ခါနေသည်",
            "ဝေးကွာစွာနေပြီး ကျပန်းလျင်မြန်စွာ ရွေ့လျားနေသည်",
            "ကပ်ကပ်နေသော်လည်း တစ်ခုနှင့်တစ်ခု လွတ်လွတ်လပ်လပ် ချောလျှောနေနိုင်သည်",
            "လုံးဝ မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "A solid keeps a fixed shape and volume because its particles cannot move from their positions.",
            "The strong forces between particles in a solid only allow vibration, not free movement.",
          ],
          hintsMy: [
            "အစိုင်အခဲသည် ၎င်း၏ အမှုန်များ မိမိတည်နေရာမှ မရွှေ့နိုင်သောကြောင့် ပုံသေပုံသဏ္ဍာန်နှင့် ပမာဏကို ထိန်းထားသည်။",
            "အစိုင်အခဲရှိ အမှုန်များအကြား ခိုင်မာသော အားများက တုန်ခါမှုကိုသာ ခွင့်ပြုပြီး လွတ်လပ်စွာ ရွေ့လျားခြင်းကို ခွင့်မပြုပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "The diffusion of gases (like the smell of cooking spreading through a house) is best explained by...",
          questionMy:
              "ဓာတ်ငွေ့များ ပျံ့နှံ့ခြင်း (အိမ်တစ်ခုလုံးသို့ ချက်ပြုတ်ခြင်းအနံ့ ပျံ့နှံ့သွားခြင်းကဲ့သို့) ကို အကောင်းဆုံးရှင်းပြရလျှင် မည်သို့ ရှင်းပြနိုင်သနည်း။",
          optionsEn: [
            "Gas particles move randomly and quickly in all directions, spreading out from where they are concentrated",
            "Gas particles are fixed in place and cannot move",
            "Gas has no particles at all",
            "Only liquids can diffuse, never gases",
          ],
          optionsMy: [
            "ဓာတ်ငွေ့အမှုန်များသည် ကျပန်းနှင့် လျင်မြန်စွာ ဦးတည်ချက်အားလုံးသို့ ရွေ့လျားပြီး ၎င်းတို့စုစည်းရာမှ ပျံ့နှံ့သွားသည်",
            "ဓာတ်ငွေ့အမှုန်များသည် နေရာတကျ ရပ်တည်နေပြီး မရွေ့လျားနိုင်ပါ",
            "ဓာတ်ငွေ့တွင် အမှုန် လုံးဝမရှိပါ",
            "အရည်သာ ပျံ့နှံ့နိုင်ပြီး ဓာတ်ငွေ့ လုံးဝမပျံ့နှံ့နိုင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Gas particles have the most energy and the weakest forces between them of all three states.",
            "This constant, random, fast movement is exactly what carries gas particles away from a concentrated source.",
          ],
          hintsMy: [
            "ဓာတ်ငွေ့အမှုန်များသည် ဒြပ်ဝတ္ထုအခြေအနေသုံးမျိုးထဲတွင် အစွမ်းအင်အများဆုံးရှိပြီး အမှုန်များအကြား အားအနည်းဆုံးဖြစ်သည်။",
            "ဤစဉ်ဆက်မပြတ် ကျပန်းလျင်မြန်သော ရွေ့လျားမှုသည် ဓာတ်ငွေ့အမှုန်များကို စုစည်းရာမှ သယ်ဆောင်သွားသည့်အရာအတိအကျ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "When ice melts into water, what happens to the arrangement of its particles?",
          questionMy:
              "ရေခဲသည် ရေအဖြစ်သို့ အရည်ပျော်သောအခါ ၎င်း၏ အမှုန်စီစဉ်ပုံသည် မည်သို့ ပြောင်းလဲသနည်း။",
          optionsEn: [
            "Particles gain enough energy to break free of fixed positions and slide past each other",
            "Particles disappear completely",
            "Particles become fixed in an even more rigid pattern",
            "New particles are created from nothing",
          ],
          optionsMy: [
            "အမှုန်များသည် ပုံသေတည်နေရာမှ လွတ်မြောက်ရန်နှင့် တစ်ခုနှင့်တစ်ခု ချောလျှောနိုင်ရန် လုံလောက်သော အစွမ်းအင်ရရှိလာသည်",
            "အမှုန်များ လုံးဝ ပျောက်ကွယ်သွားသည်",
            "အမှုန်များသည် ပို၍ပင် ခိုင်မာသောပုံစံဖြင့် ပုံသေဖြစ်သွားသည်",
            "မည်သည့်အရာမှမှ အမှုန်အသစ်များ ဖြစ်ပေါ်လာသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Melting is a change of state from solid to liquid, caused by particles gaining energy from heat.",
            "The particles themselves don't disappear or change identity -- only their energy and arrangement change.",
          ],
          hintsMy: [
            "အရည်ပျော်ခြင်းသည် အပူကြောင့် အမှုန်များ အစွမ်းအင်ရရှိလာသဖြင့် အစိုင်အခဲမှ အရည်သို့ အခြေအနေပြောင်းလဲခြင်းဖြစ်သည်။",
            "အမှုန်များကိုယ်တိုင် ပျောက်ကွယ်ခြင်း (သို့) မူလအမည်ပြောင်းလဲခြင်း မရှိပါ -- ၎င်းတို့၏ အစွမ်းအင်နှင့် စီစဉ်ပုံသာ ပြောင်းလဲသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these correctly matches the state change with its name?",
          questionMy:
              "အောက်ပါတို့အနက် အခြေအနေပြောင်းလဲမှုကို ၎င်း၏အမည်နှင့် မှန်ကန်စွာ တွဲထားသည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Gas directly to solid = deposition",
            "Solid to liquid = condensation",
            "Liquid to gas = freezing",
            "Gas to liquid = sublimation",
          ],
          optionsMy: [
            "ဓာတ်ငွေ့မှ အစိုင်အခဲသို့ တိုက်ရိုက် = ဒီပိုစီရှင် (Deposition)",
            "အစိုင်အခဲမှ အရည်သို့ = ကွန်ဒင်ဆေးရှင်း (Condensation)",
            "အရည်မှ ဓာတ်ငွေ့သို့ = အေးခဲခြင်း (Freezing)",
            "ဓာတ်ငွေ့မှ အရည်သို့ = ဆပ်ဘလိုင်မေးရှင်း (Sublimation)",
          ],
          correctIndex: 0,
          hintsEn: [
            "Deposition is the direct change from a gas straight into a solid, skipping the liquid state entirely.",
            "Melting is solid to liquid; condensation is gas to liquid; freezing is liquid to solid; sublimation is solid directly to gas.",
          ],
          hintsMy: [
            "ဒီပိုစီရှင်ဆိုသည်မှာ ဓာတ်ငွေ့မှ အရည်အခြေအနေကို လုံးဝ ကျော်လွှားပြီး အစိုင်အခဲသို့ တိုက်ရိုက်ပြောင်းလဲခြင်းဖြစ်သည်။",
            "အရည်ပျော်ခြင်းသည် အစိုင်အခဲမှအရည်သို့၊ ကွန်ဒင်ဆေးရှင်းသည် ဓာတ်ငွေ့မှအရည်သို့၊ အေးခဲခြင်းသည် အရည်မှအစိုင်အခဲသို့၊ ဆပ်ဘလိုင်မေးရှင်းသည် အစိုင်အခဲမှ ဓာတ်ငွေ့သို့ တိုက်ရိုက်ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w5-d2",
      dayNumber: 2,
      titleEn: "Match the States of Matter Vocabulary",
      titleMy:
          "ဒြပ်ဝတ္ထုအခြေအနေများဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w5-dm-1",
          termEn: "Solid",
          termMy: "အစိုင်အခဲ (Solid)",
          matchEn:
              "Fixed shape and volume; particles vibrate in fixed positions.",
          matchMy:
              "ပုံသေပုံသဏ္ဍာန်နှင့် ပမာဏ; အမှုန်များသည် ပုံသေတည်နေရာတွင် တုန်ခါနေသည်။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w5-dm-2",
          termEn: "Liquid",
          termMy: "အရည် (Liquid)",
          matchEn:
              "Fixed volume but takes the shape of its container; particles slide past each other.",
          matchMy:
              "ပမာဏပုံသေသော်လည်း ၎င်းထည့်ထားသောအိုးအရေအတွက် ပုံသဏ္ဍာန်ရသည်; အမှုန်များ ချောလျှောနေသည်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w5-dm-3",
          termEn: "Gas",
          termMy: "ဓာတ်ငွေ့ (Gas)",
          matchEn:
              "No fixed shape or volume; particles move randomly at high speed, far apart.",
          matchMy:
              "ပုံသေပုံသဏ္ဍာန်နှင့် ပမာဏ မရှိပါ; အမှုန်များ ဝေးကွာစွာနေပြီး ကျပန်းလျင်မြန်စွာ ရွေ့လျားသည်။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w5-dm-4",
          termEn: "Diffusion",
          termMy: "ပျံ့နှံ့ခြင်း (Diffusion)",
          matchEn:
              "The net movement of particles from a concentrated region, spreading them out.",
          matchMy:
              "အမှုန်များ စုစည်းရာဒေသမှ အသားတင် ရွေ့လျားပျံ့နှံ့သွားခြင်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w5-dm-5",
          termEn: "Sublimation",
          termMy: "ဆပ်ဘလိုင်မေးရှင်း (Sublimation)",
          matchEn:
              "A change of state directly from solid to gas, skipping the liquid state.",
          matchMy:
              "အရည်အခြေအနေကို ကျော်လွှားပြီး အစိုင်အခဲမှ ဓာတ်ငွေ့သို့ တိုက်ရိုက် အခြေအနေပြောင်းလဲခြင်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w5-d3",
      dayNumber: 3,
      titleEn: "Sort: Solid, Liquid, or Gas?",
      titleMy: "စီစစ်ကြမည် - အစိုင်အခဲ၊ အရည်၊ (သို့) ဓာတ်ငွေ့",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Solid", "Liquid", "Gas"],
        bucketsMy: ["အစိုင်အခဲ", "အရည်", "ဓာတ်ငွေ့"],
        items: [
          SortingItem(
            id: "igcsecs-w5-sort-1",
            labelEn: "Particles vibrate in fixed positions only",
            labelMy: "အမှုန်များသည် ပုံသေတည်နေရာတွင်သာ တုန်ခါနေသည်",
            correctBucketEn: "Solid",
            correctBucketMy: "အစိုင်အခဲ",
          ),
          SortingItem(
            id: "igcsecs-w5-sort-2",
            labelEn: "Has a fixed shape and a fixed volume",
            labelMy: "ပုံသေပုံသဏ္ဍာန်နှင့် ပုံသေပမာဏ ရှိသည်",
            correctBucketEn: "Solid",
            correctBucketMy: "အစိုင်အခဲ",
          ),
          SortingItem(
            id: "igcsecs-w5-sort-3",
            labelEn: "Strongest forces between particles of the three states",
            labelMy:
                "ဒြပ်ဝတ္ထုအခြေအနေသုံးမျိုးထဲတွင် အမှုန်များအကြား အားအခိုင်မာဆုံး",
            correctBucketEn: "Solid",
            correctBucketMy: "အစိုင်အခဲ",
          ),
          SortingItem(
            id: "igcsecs-w5-sort-4",
            labelEn:
                "Takes the shape of its container but keeps a fixed volume",
            labelMy:
                "ထည့်ထားသောအိုးအရေအတွက် ပုံသဏ္ဍာန်ရသော်လည်း ပုံသေပမာဏ ထိန်းထားသည်",
            correctBucketEn: "Liquid",
            correctBucketMy: "အရည်",
          ),
          SortingItem(
            id: "igcsecs-w5-sort-5",
            labelEn:
                "Particles are close together but can slide past each other",
            labelMy:
                "အမှုန်များသည် ကပ်ကပ်နေသော်လည်း တစ်ခုနှင့်တစ်ခု ချောလျှောနိုင်သည်",
            correctBucketEn: "Liquid",
            correctBucketMy: "အရည်",
          ),
          SortingItem(
            id: "igcsecs-w5-sort-6",
            labelEn: "Medium-strength forces between particles",
            labelMy: "အမှုန်များအကြား အလယ်အလတ်အား ရှိသည်",
            correctBucketEn: "Liquid",
            correctBucketMy: "အရည်",
          ),
          SortingItem(
            id: "igcsecs-w5-sort-7",
            labelEn:
                "Fills any container completely, with no fixed shape or volume",
            labelMy:
                "ပုံသေပုံသဏ္ဍာန် (သို့) ပမာဏ မရှိဘဲ မည်သည့်ခွက်ကိုမဆို အပြည့်ဖြည့်သည်",
            correctBucketEn: "Gas",
            correctBucketMy: "ဓာတ်ငွေ့",
          ),
          SortingItem(
            id: "igcsecs-w5-sort-8",
            labelEn: "Particles move randomly at high speed, far apart",
            labelMy:
                "အမှုန်များသည် ဝေးကွာစွာနေပြီး ကျပန်းလျင်မြန်စွာ ရွေ့လျားသည်",
            correctBucketEn: "Gas",
            correctBucketMy: "ဓာတ်ငွေ့",
          ),
          SortingItem(
            id: "igcsecs-w5-sort-9",
            labelEn: "Weakest forces between particles of the three states",
            labelMy:
                "ဒြပ်ဝတ္ထုအခြေအနေသုံးမျိုးထဲတွင် အမှုန်များအကြား အားအနည်းဆုံး",
            correctBucketEn: "Gas",
            correctBucketMy: "ဓာတ်ငွေ့",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w5-d4",
      dayNumber: 4,
      titleEn: "Reading: Zaw Min's Ammonia Diffusion Tube",
      titleMy: "စာဖတ်ခြင်း - ဇော်မင်း၏ အမိုးနီးယား ပျံ့နှံ့ခြင်း ပြွန်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Zaw Min's Ammonia Diffusion Tube",
        titleMy: "ဇော်မင်း၏ အမိုးနီးယား ပျံ့နှံ့ခြင်း ပြွန်",
        passageEn:
            "For his particle-theory practical, Zaw Min set up a long, dry glass tube. At one end, his teacher placed a piece of cotton wool soaked in concentrated ammonia solution; at the other end, a piece of cotton wool soaked in concentrated hydrochloric acid. Both ends were sealed at the same moment, and the whole class watched the empty middle of the tube, waiting for something to happen.\n\nAfter a few minutes, a white ring of solid ammonium chloride began forming inside the tube -- but not in the middle, as several students had guessed. It formed noticeably closer to the hydrochloric acid end. Zaw Min's teacher explained that both ammonia gas and hydrogen chloride gas were diffusing through the air inside the tube, moving from their concentrated ends toward the middle, and reacting to form the visible white solid wherever the two gases met.\n\nZaw Min reasoned through why the ring formed off-centre rather than exactly in the middle: ammonia gas particles are lighter (lower relative molecular mass) than hydrogen chloride gas particles, so at the same temperature the ammonia particles diffuse faster and travel further in the same amount of time. This meant the two gases met closer to the hydrochloric acid end, since the heavier, slower hydrogen chloride particles had covered less distance. He realised this simple experiment gave real, visible evidence not just that gas particles diffuse, but that lighter particles diffuse faster than heavier ones -- a detail no textbook diagram alone could have shown him as clearly.",
        passageMy:
            "ဇော်မင်း၏ အမှုန်သီအိုရီ လက်တွေ့စမ်းသပ်မှုအတွက် သူသည် ရှည်လျားပြီး ခြောက်သွေ့သော မှန်ပြွန်ရှည်တစ်ခုကို ပြင်ဆင်ခဲ့သည်။ တစ်ဖက်ဆုံးတွင် ဆရာမက ပြင်းအားမြင့် အမိုးနီးယားဒြပ်ရည်စိမ်ထားသော ဂွမ်းတစ်တုံးကို ချထားပြီး၊ အခြားတစ်ဖက်ဆုံးတွင် ပြင်းအားမြင့် ဟိုက်ဒရိုကလိုရစ် (Hydrochloric acid) အက်စစ် စိမ်ထားသော ဂွမ်းတစ်တုံးကို ချထားခဲ့သည်။ ဖက်နှစ်ဖက်စလုံးကို တစ်ချိန်တည်းတွင် ပိတ်ခဲ့ပြီး၊ အတန်းတစ်ခုလုံးက ပြွန်၏ ကြားလွတ်နေရာကို စောင့်ကြည့်ခဲ့ကြသည်။\n\nမိနစ်အနည်းငယ်အကြာတွင် အစိုင်အခဲ အမိုးနီယမ်ကလိုရိုက် (Ammonium chloride) ၏ ဖြူဖြူဝိုင်းသော အသိုင်းအဝိုင်းတစ်ခု ပြွန်အတွင်း စတင်ဖြစ်ပေါ်လာခဲ့သည် -- သို့သော် ကျောင်းသားများစွာ ခန့်မှန်းခဲ့သကဲ့သို့ ကြားရှိမဟုတ်ဘဲ ဟိုက်ဒရိုကလိုရစ်အက်စစ်ဖက်နှင့် သိသိသာသာ ပိုနီးကပ်စွာ ဖြစ်ပေါ်ခဲ့သည်။ ဇော်မင်း၏ ဆရာမက အမိုးနီးယားဓာတ်ငွေ့နှင့် ဟိုက်ဒရိုဂျင်ကလိုရိုက်ဓာတ်ငွေ့ နှစ်မျိုးလုံးသည် ပြွန်အတွင်းလေထုကို ဖြတ်ပြီး ပျံ့နှံ့နေကြောင်း၊ ၎င်းတို့စုစည်းရာဖက်များမှ ကြားသို့ ရွေ့လျားပြီး ဓာတ်ငွေ့နှစ်မျိုး ဆုံတွေ့ရာနေရာတိုင်း၌ မြင်ရသော ဖြူသည့်အစိုင်အခဲ ဖြစ်ပေါ်စေရန် တုံ့ပြန်ကြောင်း ရှင်းပြခဲ့သည်။\n\nဇော်မင်းသည် အသိုင်းအဝိုင်းသည် ကြားတည့်တည့်တွင် မဟုတ်ဘဲ ဗဟိုမှ ရွေ့လွှဲကာ အဘယ်ကြောင့်ဖြစ်ပေါ်ခဲ့ကြောင်း ဆင်ခြင်ခဲ့သည် - အမိုးနီးယားဓာတ်ငွေ့အမှုန်များသည် ဟိုက်ဒရိုဂျင်ကလိုရိုက်ဓာတ်ငွေ့အမှုန်များထက် ပေါ့ပါးသည် (ဆွေမျိုးမော်လီကျူးအလေးချိန် နိမ့်သည်)၊ ထို့ကြောင့် အပူချိန်တူညီပါက အမိုးနီးယားအမှုန်များသည် ပိုမိုမြန်ဆန်စွာ ပျံ့နှံ့ပြီး တူညီသောအချိန်အတွင်း ပိုဝေးသည့်အကွာအဝေးကို ခရီးသွားနိုင်သည်။ ဤသည်ကြောင့် ဓာတ်ငွေ့နှစ်မျိုးသည် ဟိုက်ဒရိုကလိုရစ်အက်စစ်ဖက်နှင့် ပိုနီးကပ်စွာ ဆုံတွေ့ခဲ့ခြင်းဖြစ်ပြီး၊ ပိုလေးပြီး ပိုနှေးကွေးသော ဟိုက်ဒရိုဂျင်ကလိုရိုက်အမှုန်များသည် အကွာအဝေး ပိုနည်းသာ ခရီးသွားနိုင်ခဲ့သည်။ ဤရိုးရှင်းသော စမ်းသပ်မှုသည် ဓာတ်ငွေ့အမှုန်များ ပျံ့နှံ့ကြောင်းသက်သက်သာမက ပေါ့ပါးသောအမှုန်များသည် လေးသောအမှုန်များထက် ပိုမြန်စွာ ပျံ့နှံ့ကြောင်းကိုပါ စစ်မှန်ပြီး မျက်မြင် သက်သေအထောက်အထားပေးကြောင်း သူ သဘောပေါက်လာသည် -- ဤသည်မှာ ပညာသင်ခန်းစာစာအုပ်ပုံရိပ်တစ်ခုတည်းက ဤမျှရှင်းလင်းစွာ ပြသနိုင်မည် မဟုတ်သော အသေးစိတ်အချက်ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Why did the white ring form closer to the hydrochloric acid end of the tube, not exactly in the middle?",
            questionMy:
                "ဖြူသောအသိုင်းအဝိုင်းသည် ပြွန်၏ ကြားတည့်တည့်တွင် မဟုတ်ဘဲ ဟိုက်ဒရိုကလိုရစ်အက်စစ်ဖက်နှင့် ပိုနီးကပ်စွာ အဘယ်ကြောင့် ဖြစ်ပေါ်ခဲ့သနည်း။",
            optionsEn: [
              "Ammonia particles are lighter and diffuse faster, travelling further in the same time",
              "The hydrochloric acid end was sealed later than the ammonia end",
              "Ammonia gas does not actually diffuse at all",
              "The tube was tilted toward the ammonia end",
            ],
            optionsMy: [
              "အမိုးနီးယားအမှုန်များ ပေါ့ပါးပြီး ပိုမြန်စွာ ပျံ့နှံ့သဖြင့် တူညီသောအချိန်အတွင်း ပိုဝေးစွာ ခရီးသွားနိုင်သောကြောင့်",
              "ဟိုက်ဒရိုကလိုရစ်အက်စစ်ဖက်ကို အမိုးနီးယားဖက်ထက် နောက်ကျမှ ပိတ်ခဲ့သောကြောင့်",
              "အမိုးနီးယားဓာတ်ငွေ့သည် အမှန်တကယ် လုံးဝ မပျံ့နှံ့ခဲ့သောကြောင့်",
              "ပြွန်ကို အမိုးနီးယားဖက်သို့ စောင်းချထားခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph, where Zaw Min reasons through the relative molecular mass of each gas.",
              "The lighter gas particle always diffuses faster and travels further in a given time.",
            ],
            hintsMy: [
              "ဇော်မင်းသည် ဓာတ်ငွေ့တစ်မျိုးစီ၏ ဆွေမျိုးမော်လီကျူးအလေးချိန်ကို ဆင်ခြင်ထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ပေါ့ပါးသောဓာတ်ငွေ့အမှုန်သည် အမြဲတမ်း ပိုမြန်စွာ ပျံ့နှံ့ပြီး ပေးထားသောအချိန်အတွင်း ပိုဝေးစွာ ခရီးသွားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn: "What formed the visible white ring inside the tube?",
            questionMy:
                "ပြွန်အတွင်းရှိ မြင်ရသော ဖြူသောအသိုင်းအဝိုင်းကို မည်သည့်အရာက ဖြစ်ပေါ်စေသနည်း။",
            optionsEn: [
              "Ammonia gas and hydrogen chloride gas reacting where they met",
              "The cotton wool itself changing colour",
              "The glass tube reacting with air",
              "A temperature change inside the tube",
            ],
            optionsMy: [
              "အမိုးနီးယားဓာတ်ငွေ့နှင့် ဟိုက်ဒရိုဂျင်ကလိုရိုက်ဓာတ်ငွေ့ ဆုံတွေ့ရာတွင် တုံ့ပြန်ခြင်း",
              "ဂွမ်းကိုယ်တိုင် အရောင်ပြောင်းလဲခြင်း",
              "မှန်ပြွန်သည် လေထုနှင့် တုံ့ပြန်ခြင်း",
              "ပြွန်အတွင်း အပူချိန် ပြောင်းလဲခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation of what the teacher told the class.",
              "The white solid is ammonium chloride, formed only where the two diffusing gases actually meet.",
            ],
            hintsMy: [
              "ဆရာမက အတန်းသားများအား ရှင်းပြခဲ့သည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဖြူသောအစိုင်အခဲသည် အမိုးနီယမ်ကလိုရိုက်ဖြစ်ပြီး ပျံ့နှံ့နေသော ဓာတ်ငွေ့နှစ်မျိုး အမှန်တကယ် ဆုံတွေ့ရာနေရာတွင်သာ ဖြစ်ပေါ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did this experiment provide real, visible evidence for, according to Zaw Min?",
            questionMy:
                "ဇော်မင်းအရ ဤစမ်းသပ်မှုသည် မည်သည့်အရာအတွက် စစ်မှန်ပြီး မျက်မြင်သက်သေအထောက်အထား ဖြစ်ခဲ့သနည်း။",
            optionsEn: [
              "That lighter gas particles diffuse faster than heavier ones",
              "That gases never diffuse at all",
              "That all gases diffuse at exactly the same speed",
              "That ammonia does not react with hydrochloric acid",
            ],
            optionsMy: [
              "ပေါ့ပါးသောဓာတ်ငွေ့အမှုန်များသည် လေးသောအမှုန်များထက် ပိုမြန်စွာ ပျံ့နှံ့ကြောင်း",
              "ဓာတ်ငွေ့များသည် လုံးဝ ပျံ့နှံ့ခြင်း မရှိကြောင်း",
              "ဓာတ်ငွေ့အားလုံးသည် အတိအကျ အမြန်နှုန်းတူညီစွာ ပျံ့နှံ့ကြောင်း",
              "အမိုးနီးယားသည် ဟိုက်ဒရိုကလိုရစ်အက်စစ်နှင့် မတုံ့ပြန်ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "The off-centre position of the ring is the visible evidence for a difference in diffusion speed.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အသိုင်းအဝိုင်း၏ ဗဟိုမှရွေ့လွှဲနေသော တည်နေရာသည် ပျံ့နှံ့မှုမြန်နှုန်း ကွဲပြားချက်အတွက် မျက်မြင်သက်သေအထောက်အထားဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did several students incorrectly guess the ring would form exactly in the middle of the tube?",
            questionMy:
                "ကျောင်းသားများစွာသည် အသိုင်းအဝိုင်းသည် ပြွန်၏ ကြားတည့်တည့်တွင် ဖြစ်ပေါ်မည်ဟု အဘယ်ကြောင့် မှားယွင်းစွာ ခန့်မှန်းခဲ့ကြသနည်း။",
            optionsEn: [
              "They likely assumed both gases diffuse at the same speed, without accounting for their different masses",
              "They had never seen a diffusion tube before",
              "They thought only one gas was present in the tube",
              "They believed the tube was sealed unevenly on purpose",
            ],
            optionsMy: [
              "ဓာတ်ငွေ့နှစ်မျိုးလုံးသည် ၎င်းတို့၏ မတူညီသောအလေးချိန်ကို မထည့်သွင်းစဉ်းစားဘဲ အမြန်နှုန်းတူညီစွာ ပျံ့နှံ့မည်ဟု ယူဆခဲ့ကြသောကြောင့်",
              "ပျံ့နှံ့ခြင်းပြွန်တစ်ခုကိုမျှ ယခင်က မမြင်ဖူးခဲ့ကြသောကြောင့်",
              "ပြွန်တွင် ဓာတ်ငွေ့တစ်မျိုးတည်းသာ ရှိသည်ဟု ထင်ခဲ့ကြသောကြောင့်",
              "ပြွန်ကို ရည်ရွယ်ချက်ရှိရှိ မညီမညာ ပိတ်ထားသည်ဟု ယုံကြည်ခဲ့ကြသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "A simple (but incorrect) assumption is that both gases move at the same speed, meeting exactly halfway.",
              "The passage's own explanation later shows this assumption is wrong, since molecular mass affects diffusion speed.",
            ],
            hintsMy: [
              "ရိုးရှင်းသော (သို့သော် မှားယွင်းသော) ယူဆချက်မှာ ဓာတ်ငွေ့နှစ်မျိုးလုံး အမြန်နှုန်းတူညီစွာ ရွေ့လျားပြီး လမ်းတစ်ဝက်တွင် ဆုံတွေ့မည်ဟူသောအချက်ဖြစ်သည်။",
              "စာပိုဒ်၏ ရှင်းပြချက်ကိုယ်တိုင်က နောက်ပိုင်းတွင် ဤယူဆချက် မှားယွင်းကြောင်း ပြသသည်၊ အဘယ်ကြောင့်ဆိုသော် မော်လီကျူးအလေးချိန်သည် ပျံ့နှံ့ခြင်းအမြန်နှုန်းကို သက်ရောက်စေသောကြောင့်ဖြစ်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w5-d5",
      dayNumber: 5,
      titleEn: "Week 5 Recap: Particulate Nature of Matter",
      titleMy: "အပတ်စဉ် ၅ ပြန်လည်သုံးသပ်ခြင်း - ဒြပ်ဝတ္ထု၏ အမှုန်သဘောသဘာဝ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which state of matter has particles that vibrate in fixed positions?",
          questionMy:
              "မည်သည့် ဒြပ်ဝတ္ထုအခြေအနေတွင် အမှုန်များသည် ပုံသေတည်နေရာတွင် တုန်ခါနေသနည်း။",
          optionsEn: ["Solid", "Liquid", "Gas", "Plasma"],
          optionsMy: ["အစိုင်အခဲ", "အရည်", "ဓာတ်ငွေ့", "ပလာစမာ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Diffusion of gases happens because particles...",
          questionMy:
              "ဓာတ်ငွေ့များ ပျံ့နှံ့ခြင်းသည် အဘယ်ကြောင့် ဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "Move randomly and spread out from concentrated regions",
            "Are fixed in place",
            "Never move at all",
            "Only exist in solids",
          ],
          optionsMy: [
            "ကျပန်းရွေ့လျားပြီး စုစည်းရာဒေသများမှ ပျံ့နှံ့ထွက်သောကြောင့်",
            "နေရာတကျ ရပ်တည်နေသောကြောင့်",
            "လုံးဝ မရွေ့လျားသောကြောင့်",
            "အစိုင်အခဲများတွင်သာ ရှိသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Melting is a change of state from...",
          questionMy:
              "အရည်ပျော်ခြင်းသည် မည်သည့်အခြေအနေမှ မည်သည့်အခြေအနေသို့ ပြောင်းလဲခြင်းဖြစ်သနည်း။",
          optionsEn: [
            "Solid to liquid",
            "Liquid to gas",
            "Gas to solid",
            "Liquid to solid",
          ],
          optionsMy: [
            "အစိုင်အခဲမှ အရည်သို့",
            "အရည်မှ ဓာတ်ငွေ့သို့",
            "ဓာတ်ငွေ့မှ အစိုင်အခဲသို့",
            "အရည်မှ အစိုင်အခဲသို့",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Zaw Min's ammonia/hydrochloric acid tube, the white ring formed closer to the acid end because...",
          questionMy:
              "ဇော်မင်း၏ အမိုးနီးယား/ဟိုက်ဒရိုကလိုရစ်အက်စစ် ပြွန်တွင် ဖြူသောအသိုင်းအဝိုင်းသည် အက်စစ်ဖက်နှင့် ပိုနီးကပ်စွာ ဖြစ်ပေါ်ရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Ammonia particles are lighter and diffuse faster",
            "The acid end was opened first",
            "Ammonia does not diffuse",
            "The tube was heated at the acid end",
          ],
          optionsMy: [
            "အမိုးနီးယားအမှုန်များ ပေါ့ပါးပြီး ပိုမြန်စွာ ပျံ့နှံ့သောကြောင့်",
            "အက်စစ်ဖက်ကို ဦးစွာ ဖွင့်ထားခဲ့သောကြောင့်",
            "အမိုးနီးယားသည် မပျံ့နှံ့သောကြောင့်",
            "ပြွန်ကို အက်စစ်ဖက်တွင် အပူပေးထားသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 6: "Atoms, Elements, and Compounds"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek6 = CourseWeekDef(
  id: "course-igcse-combsci-w6",
  weekNumber: 6,
  titleEn: "Atoms, Elements, and Compounds",
  titleMy: "အက်တမ်၊ ဒြပ်စင်နှင့် ဒြပ်ပေါင်းများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w6-d1",
      dayNumber: 1,
      titleEn: "Atomic Structure and Bonding Quiz",
      titleMy: "အက်တမ် တည်ဆောက်ပုံနှင့် ချိတ်ဆက်မှု ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which subatomic particle has a positive charge and is found in the nucleus?",
          questionMy:
              "မည်သည့် အက်တမ်ခွဲအမှုန်သည် အပေါင်းလျှပ်စစ်အား ရှိပြီး နျူကလိယပ်စ်အတွင်း တည်ရှိသနည်း။",
          optionsEn: ["Proton", "Electron", "Neutron", "Photon"],
          optionsMy: [
            "ပရိုတွန် (Proton)",
            "အီလက်ထရွန် (Electron)",
            "နျူထရွန် (Neutron)",
            "ဖိုတွန် (Photon)",
          ],
          correctIndex: 0,
          hintsEn: [
            "The nucleus at the centre of an atom contains two types of particle: one with a positive charge, one with no charge.",
            "Electrons, which have a negative charge, orbit around the nucleus rather than sitting inside it.",
          ],
          hintsMy: [
            "အက်တမ်၏ဗဟိုတွင်ရှိသော နျူကလိယပ်စ်တွင် အမှုန်နှစ်မျိုးပါဝင်သည် - တစ်မျိုးမှာ အပေါင်းလျှပ်စစ်အားရှိပြီး တစ်မျိုးမှာ လျှပ်စစ်အားမရှိပါ။",
            "အနုတ်လျှပ်စစ်အားရှိသော အီလက်ထရွန်များသည် နျူကလိယပ်စ်အတွင်းတွင် မရှိဘဲ ၎င်း၏ပတ်လည်တွင် လှည့်ပတ်နေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Isotopes of the same element have...",
          questionMy:
              "ဒြပ်စင်တစ်ခုတည်း၏ အိုင်ဆိုတုပ်များ (Isotopes) သည် မည်သို့ ရှိကြသနည်း။",
          optionsEn: [
            "The same number of protons but a different number of neutrons",
            "The same number of protons and the same number of neutrons",
            "A different number of protons but the same number of neutrons",
            "No protons at all",
          ],
          optionsMy: [
            "ပရိုတွန်အရေအတွက် တူညီပြီး နျူထရွန်အရေအတွက် ကွဲပြားခြင်း",
            "ပရိုတွန်အရေအတွက်နှင့် နျူထရွန်အရေအတွက် တူညီခြင်း",
            "ပရိုတွန်အရေအတွက် ကွဲပြားပြီး နျူထရွန်အရေအတွက် တူညီခြင်း",
            "ပရိုတွန် လုံးဝ မရှိခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "The number of protons defines which element an atom is -- isotopes are still the same element.",
            "Only the number of neutrons differs between isotopes, which changes the atom's mass but not its identity.",
          ],
          hintsMy: [
            "ပရိုတွန်အရေအတွက်သည် အက်တမ်တစ်ခု မည်သည့်ဒြပ်စင်ဖြစ်ကြောင်း သတ်မှတ်သည် -- အိုင်ဆိုတုပ်များသည် ဒြပ်စင်တစ်ခုတည်းသာ ဖြစ်နေဆဲဖြစ်သည်။",
            "နျူထရွန်အရေအတွက်သာ အိုင်ဆိုတုပ်များအကြား ကွဲပြားပြီး၊ ၎င်းက အက်တမ်၏ အလေးချိန်ကို ပြောင်းလဲစေသော်လည်း ၎င်း၏ မူလအမည်ကို မပြောင်းလဲစေပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "Ionic bonding typically occurs between...",
          questionMy:
              "အိုင်အွန်နစ်ချိတ်ဆက်မှု (Ionic bonding) သည် များသောအားဖြင့် မည်သည့်အရာများအကြား ဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "A metal and a non-metal, by transferring electrons",
            "Two non-metals, by sharing electrons",
            "Two metals, by transferring protons",
            "Two identical atoms, by sharing neutrons",
          ],
          optionsMy: [
            "သတ္တုနှင့် အသတ္တု အက်တမ် - အီလက်ထရွန်များ လွှဲပြောင်းခြင်းဖြင့်",
            "အသတ္တုနှစ်ခု - အီလက်ထရွန်များ မျှဝေခြင်းဖြင့်",
            "သတ္တုနှစ်ခု - ပရိုတွန်များ လွှဲပြောင်းခြင်းဖြင့်",
            "တူညီသောအက်တမ်နှစ်ခု - နျူထရွန်များ မျှဝေခြင်းဖြင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "In ionic bonding, one atom loses electrons to become a positive ion, and the other gains them to become a negative ion.",
            "Sodium chloride (table salt) is a classic example: sodium (a metal) transfers an electron to chlorine (a non-metal).",
          ],
          hintsMy: [
            "အိုင်အွန်နစ်ချိတ်ဆက်မှုတွင် အက်တမ်တစ်ခုသည် အီလက်ထရွန်များ ဆုံးရှုံးပြီး အပေါင်းအိုင်းယွန်း (positive ion) ဖြစ်လာသည်၊ အခြားတစ်ခုသည် အီလက်ထရွန်များ ရရှိပြီး အနုတ်အိုင်းယွန်း (negative ion) ဖြစ်လာသည်။",
            "ဆိုဒီယမ်ကလိုရိုက် (ဆားအရသာ) သည် ဥပမာကောင်းတစ်ခုဖြစ်သည်: ဆိုဒီယမ် (သတ္တု) သည် အီလက်ထရွန်တစ်ခုကို ကလိုရင်း (အသတ္တု) သို့ လွှဲပြောင်းပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Covalent bonding involves atoms...",
          questionMy:
              "ကိုဗေလင့်ချိတ်ဆက်မှု (Covalent bonding) သည် အက်တမ်များ မည်သို့ ပြုလုပ်ခြင်းနှင့် သက်ဆိုင်သနည်း။",
          optionsEn: [
            "Sharing pairs of electrons",
            "Transferring electrons completely from one to the other",
            "Sharing protons in the nucleus",
            "Losing all their neutrons",
          ],
          optionsMy: [
            "အီလက်ထရွန်အတွဲများ မျှဝေခြင်း",
            "အီလက်ထရွန်များကို တစ်ခုမှတစ်ခုသို့ လုံးဝ လွှဲပြောင်းခြင်း",
            "နျူကလိယပ်စ်ရှိ ပရိုတွန်များ မျှဝေခြင်း",
            "နျူထရွန်များအားလုံး ဆုံးရှုံးခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Unlike ionic bonding, covalent bonding happens between two non-metals, neither of which fully gives away its electrons.",
            "Water (H2O) is a classic covalent example: each hydrogen atom shares a pair of electrons with the oxygen atom.",
          ],
          hintsMy: [
            "အိုင်အွန်နစ်ချိတ်ဆက်မှုနှင့်မတူဘဲ ကိုဗေလင့်ချိတ်ဆက်မှုသည် အသတ္တုနှစ်ခုအကြား ဖြစ်ပေါ်ပြီး၊ မည်သည့်ဘက်ကမျှ ၎င်း၏အီလက်ထရွန်များကို လုံးဝ မပေးအပ်ပါ။",
            "ရေ (H2O) သည် ကိုဗေလင့်ဥပမာကောင်းတစ်ခုဖြစ်သည်: ဟိုက်ဒရိုဂျင်အက်တမ်တစ်ခုစီသည် အောက်ဆီဂျင်အက်တမ်နှင့် အီလက်ထရွန်တစ်တွဲကို မျှဝေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w6-d2",
      dayNumber: 2,
      titleEn: "Match the Atomic Structure Vocabulary",
      titleMy: "အက်တမ် တည်ဆောက်ပုံဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w6-dm-1",
          termEn: "Proton",
          termMy: "ပရိုတွန် (Proton)",
          matchEn: "A positively-charged particle found in the nucleus.",
          matchMy:
              "နျူကလိယပ်စ်အတွင်း တည်ရှိသော အပေါင်းလျှပ်စစ်အားရှိသည့် အမှုန်။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w6-dm-2",
          termEn: "Neutron",
          termMy: "နျူထရွန် (Neutron)",
          matchEn:
              "A particle with no charge, found in the nucleus alongside protons.",
          matchMy:
              "လျှပ်စစ်အားမရှိသော အမှုန်၊ နျူကလိယပ်စ်အတွင်း ပရိုတွန်များနှင့်အတူ တည်ရှိသည်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w6-dm-3",
          termEn: "Electron",
          termMy: "အီလက်ထရွန် (Electron)",
          matchEn: "A negatively-charged particle that orbits the nucleus.",
          matchMy:
              "နျူကလိယပ်စ်ပတ်လည်ကို လှည့်ပတ်နေသော အနုတ်လျှပ်စစ်အားရှိသည့် အမှုန်။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w6-dm-4",
          termEn: "Isotope",
          termMy: "အိုင်ဆိုတုပ် (Isotope)",
          matchEn:
              "An atom of the same element with the same protons but a different number of neutrons.",
          matchMy:
              "ပရိုတွန်အရေအတွက် တူညီသော်လည်း နျူထရွန်အရေအတွက် ကွဲပြားသည့် ဒြပ်စင်တစ်ခုတည်း၏ အက်တမ်။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w6-dm-5",
          termEn: "Ion",
          termMy: "အိုင်းယွန်း (Ion)",
          matchEn:
              "A charged particle formed when an atom gains or loses electrons.",
          matchMy:
              "အက်တမ်တစ်ခုသည် အီလက်ထရွန်များ ရရှိ (သို့) ဆုံးရှုံးသောအခါ ဖြစ်ပေါ်လာသည့် အားရှိအမှုန်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w6-d3",
      dayNumber: 3,
      titleEn: "Sort: Ionic or Covalent Bonding?",
      titleMy: "စီစစ်ကြမည် - အိုင်အွန်နစ် (သို့) ကိုဗေလင့် ချိတ်ဆက်မှု",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Ionic Bonding", "Covalent Bonding"],
        bucketsMy: ["အိုင်အွန်နစ်ချိတ်ဆက်မှု", "ကိုဗေလင့်ချိတ်ဆက်မှု"],
        items: [
          SortingItem(
            id: "igcsecs-w6-sort-1",
            labelEn: "Sodium chloride, NaCl (table salt)",
            labelMy: "ဆိုဒီယမ်ကလိုရိုက်၊ NaCl (ဆားအရသာ)",
            correctBucketEn: "Ionic Bonding",
            correctBucketMy: "အိုင်အွန်နစ်ချိတ်ဆက်မှု",
          ),
          SortingItem(
            id: "igcsecs-w6-sort-2",
            labelEn: "Magnesium oxide, MgO",
            labelMy: "မဂ္ဂနီဆီယမ်အောက်ဆိုဒ်၊ MgO",
            correctBucketEn: "Ionic Bonding",
            correctBucketMy: "အိုင်အွန်နစ်ချိတ်ဆက်မှု",
          ),
          SortingItem(
            id: "igcsecs-w6-sort-3",
            labelEn: "Calcium chloride, CaCl2",
            labelMy: "ကယ်လစီယမ်ကလိုရိုက်၊ CaCl2",
            correctBucketEn: "Ionic Bonding",
            correctBucketMy: "အိုင်အွန်နစ်ချိတ်ဆက်မှု",
          ),
          SortingItem(
            id: "igcsecs-w6-sort-4",
            labelEn: "Potassium bromide, KBr",
            labelMy: "ပိုတက်စီယမ်ဘရိုမိုက်၊ KBr",
            correctBucketEn: "Ionic Bonding",
            correctBucketMy: "အိုင်အွန်နစ်ချိတ်ဆက်မှု",
          ),
          SortingItem(
            id: "igcsecs-w6-sort-5",
            labelEn: "Water, H2O",
            labelMy: "ရေ၊ H2O",
            correctBucketEn: "Covalent Bonding",
            correctBucketMy: "ကိုဗေလင့်ချိတ်ဆက်မှု",
          ),
          SortingItem(
            id: "igcsecs-w6-sort-6",
            labelEn: "Carbon dioxide, CO2",
            labelMy: "ကာဗွန်ဒိုင်အောက်ဆိုဒ်၊ CO2",
            correctBucketEn: "Covalent Bonding",
            correctBucketMy: "ကိုဗေလင့်ချိတ်ဆက်မှု",
          ),
          SortingItem(
            id: "igcsecs-w6-sort-7",
            labelEn: "Methane, CH4",
            labelMy: "မီသိန်း၊ CH4",
            correctBucketEn: "Covalent Bonding",
            correctBucketMy: "ကိုဗေလင့်ချိတ်ဆက်မှု",
          ),
          SortingItem(
            id: "igcsecs-w6-sort-8",
            labelEn: "Oxygen gas, O2",
            labelMy: "အောက်ဆီဂျင်ဓာတ်ငွေ့၊ O2",
            correctBucketEn: "Covalent Bonding",
            correctBucketMy: "ကိုဗေလင့်ချိတ်ဆက်မှု",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w6-d4",
      dayNumber: 4,
      titleEn: "Reading: Ei Thet's Carbon Isotope Model",
      titleMy: "စာဖတ်ခြင်း - အိန်သက်၏ ကာဗွန်အိုင်ဆိုတုပ် မော်ဒယ်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Ei Thet's Carbon Isotope Model",
        titleMy: "အိန်သက်၏ ကာဗွန်အိုင်ဆိုတုပ် မော်ဒယ်",
        passageEn:
            "For a class project on atomic structure, Ei Thet was asked to build physical models of two different isotopes of carbon: carbon-12 and carbon-14. She started by looking up carbon's atomic number, 6, which told her every carbon atom -- of any isotope -- must contain exactly 6 protons, since the atomic number always equals the number of protons.\n\nFor carbon-12, Ei Thet used the mass number, 12, to work out the number of neutrons: mass number minus atomic number, so 12 minus 6 gives 6 neutrons. For carbon-14, she repeated the same calculation with the different mass number: 14 minus 6 gives 8 neutrons. She built both models with exactly 6 protons and 6 electrons, but gave the carbon-14 model two extra neutrons in its nucleus compared to carbon-12.\n\nWhen her teacher asked why both models still counted as \"carbon\" despite having a different number of neutrons, Ei Thet explained that an element's identity is defined only by its number of protons, never by its number of neutrons. Since both isotopes had exactly 6 protons, both were carbon -- just different isotopes of it, with slightly different masses because of their different neutron counts. She noted that this was exactly why carbon-14, despite being heavier, still reacts chemically almost identically to carbon-12: chemical reactions are driven by electrons, and both isotopes have the same number of those.",
        passageMy:
            "အက်တမ် တည်ဆောက်ပုံအကြောင်း အတန်းစီမံကိန်းတစ်ခုအတွက် အိန်သက်ကို ကာဗွန်၏ မတူညီသော အိုင်ဆိုတုပ်နှစ်မျိုး ဖြစ်သော ကာဗွန်-၁၂ နှင့် ကာဗွန်-၁၄ တို့၏ ရုပ်ပိုင်းဆိုင်ရာမော်ဒယ်များကို တည်ဆောက်ရန် တောင်းဆိုခံခဲ့ရသည်။ သူသည် ကာဗွန်၏ အက်တမ်နံပါတ် ၆ ကို ရှာဖွေခြင်းဖြင့် စတင်ခဲ့ပြီး၊ ၎င်းက ကာဗွန်အက်တမ်တိုင်း -- မည်သည့်အိုင်ဆိုတုပ်ဖြစ်စေ -- ပရိုတွန် ၆ ခု အတိအကျ ပါဝင်ရမည်ဖြစ်ကြောင်း ပြောပြသည်၊ အဘယ်ကြောင့်ဆိုသော် အက်တမ်နံပါတ်သည် ပရိုတွန်အရေအတွက်နှင့် အမြဲတမ်း တူညီသောကြောင့်ဖြစ်သည်။\n\nကာဗွန်-၁၂ အတွက် အိန်သက်သည် အလေးချိန်နံပါတ် ၁၂ ကို အသုံးပြု၍ နျူထရွန်အရေအတွက်ကို တွက်ချက်ခဲ့သည် - အလေးချိန်နံပါတ် နုတ် အက်တမ်နံပါတ်၊ ထို့ကြောင့် ၁၂ နုတ် ၆ က နျူထရွန် ၆ ခု ရရှိသည်။ ကာဗွန်-၁၄ အတွက် သူသည် ကွဲပြားသော အလေးချိန်နံပါတ်ဖြင့် တွက်ချက်မှုတူညီစွာ ထပ်လုပ်ခဲ့သည် - ၁၄ နုတ် ၆ က နျူထရွန် ၈ ခု ရရှိသည်။ သူသည် မော်ဒယ်နှစ်ခုစလုံးကို ပရိုတွန် ၆ ခုနှင့် အီလက်ထရွန် ၆ ခု အတိအကျဖြင့် တည်ဆောက်ခဲ့သော်လည်း ကာဗွန်-၁၄ မော်ဒယ်ကို ကာဗွန်-၁၂ ထက် ၎င်း၏နျူကလိယပ်စ်တွင် နျူထရွန် နှစ်ခု ပိုပေးခဲ့သည်။\n\nနျူထရွန်အရေအတွက် ကွဲပြားနေသော်လည်း မော်ဒယ်နှစ်ခုစလုံးသည် အဘယ်ကြောင့် \"ကာဗွန်\" ဟု ဆက်လက်ရေတွက်ရကြောင်း ဆရာမက မေးမြန်းသောအခါ၊ အိန်သက်သည် ဒြပ်စင်တစ်ခု၏ မူလအမည်ကို ၎င်း၏ပရိုတွန်အရေအတွက်ဖြင့်သာ သတ်မှတ်ပြီး နျူထရွန်အရေအတွက်ဖြင့် လုံးဝ သတ်မှတ်ခြင်းမပြုကြောင်း ရှင်းပြခဲ့သည်။ အိုင်ဆိုတုပ်နှစ်မျိုးလုံးတွင် ပရိုတွန် ၆ ခု အတိအကျ ရှိသောကြောင့် နှစ်မျိုးလုံးသည် ကာဗွန်ဖြစ်ကြသည် -- ၎င်း၏ မတူညီသော အိုင်ဆိုတုပ်များသာ ဖြစ်ပြီး၊ မတူညီသော နျူထရွန်အရေအတွက်ကြောင့် အနည်းငယ် ကွဲပြားသော အလေးချိန်ရှိကြသည်။ ဤသည်ကြောင့်ပင် ကာဗွန်-၁၄ သည် ပိုလေးသော်လည်း ကာဗွန်-၁၂ နှင့် ဓာတုအရ ဆက်လက် နီးပါးတူညီစွာ တုံ့ပြန်ကြောင်း သူ သတိပြုမိသည် - ဓာတုတုံ့ပြန်မှုများသည် အီလက်ထရွန်များက ဖြစ်ပေါ်စေပြီး အိုင်ဆိုတုပ်နှစ်မျိုးလုံးတွင် ၎င်းအရေအတွက် တူညီသောကြောင့်ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Why did Ei Thet know both carbon isotopes must have exactly 6 protons?",
            questionMy:
                "ကာဗွန်အိုင်ဆိုတုပ်နှစ်မျိုးလုံးတွင် ပရိုတွန် ၆ ခု အတိအကျရှိရမည်ဖြစ်ကြောင်း အိန်သက် မည်သို့ သိရှိခဲ့သနည်း။",
            optionsEn: [
              "Carbon's atomic number, which always equals the number of protons, is 6",
              "She counted the protons directly under a microscope",
              "The mass number of both isotopes was the same",
              "Carbon always has exactly 6 neutrons",
            ],
            optionsMy: [
              "ပရိုတွန်အရေအတွက်နှင့် အမြဲတမ်းတူညီသော ကာဗွန်၏ အက်တမ်နံပါတ်သည် ၆ ဖြစ်သောကြောင့်",
              "အဏုကြည့်မှန်ဘီလူးအောက်တွင် ပရိုတွန်များကို တိုက်ရိုက်ရေတွက်ခဲ့သောကြောင့်",
              "အိုင်ဆိုတုပ်နှစ်မျိုးလုံး၏ အလေးချိန်နံပါတ် တူညီသောကြောင့်",
              "ကာဗွန်တွင် နျူထရွန် ၆ ခု အမြဲတမ်း ရှိသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first paragraph's explanation of the atomic number.",
              "The atomic number is a fixed property of an element -- it never changes between isotopes.",
            ],
            hintsMy: [
              "အက်တမ်နံပါတ်နှင့်ပတ်သက်သော ပထမစာပိုဒ်၏ ရှင်းပြချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အက်တမ်နံပါတ်သည် ဒြပ်စင်တစ်ခု၏ ပုံသေဂုဏ်သတ္တိတစ်ခုဖြစ်သည် -- ၎င်းသည် အိုင်ဆိုတုပ်များအကြား လုံးဝ မပြောင်းလဲပါ။",
            ],
          ),
          QuizQuestion(
            questionEn: "How many neutrons does carbon-14 have?",
            questionMy: "ကာဗွန်-၁၄ တွင် နျူထရွန် မည်မျှ ရှိသနည်း။",
            optionsEn: ["8", "6", "12", "14"],
            optionsMy: ["၈", "၆", "၁၂", "၁၄"],
            correctIndex: 0,
            hintsEn: [
              "Neutrons = mass number minus atomic number.",
              "For carbon-14: 14 minus 6 (the atomic number) equals the neutron count.",
            ],
            hintsMy: [
              "နျူထရွန် = အလေးချိန်နံပါတ် နုတ် အက်တမ်နံပါတ်။",
              "ကာဗွန်-၁၄ အတွက်: ၁၄ နုတ် ၆ (အက်တမ်နံပါတ်) သည် နျူထရွန်အရေအတွက် ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to Ei Thet, what actually defines which element an atom belongs to?",
            questionMy:
                "အိန်သက်အရ အက်တမ်တစ်ခုသည် မည်သည့်ဒြပ်စင်ဖြစ်ကြောင်း အမှန်တကယ် သတ်မှတ်သည့်အချက်မှာ အဘယ်နည်း။",
            optionsEn: [
              "The number of protons",
              "The number of neutrons",
              "The total mass of the atom",
              "The number of electron shells",
            ],
            optionsMy: [
              "ပရိုတွန်အရေအတွက်",
              "နျူထရွန်အရေအတွက်",
              "အက်တမ်၏ စုစုပေါင်းအလေးချိန်",
              "အီလက်ထရွန် အခွံအရေအတွက်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's third paragraph.",
              "Isotopes prove that neutron number can vary while the element's identity stays the same.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ တတိယစာပိုဒ်တွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အိုင်ဆိုတုပ်များက နျူထရွန်အရေအတွက် ကွဲပြားနိုင်သော်လည်း ဒြပ်စင်၏ မူလအမည် တူညီနေဆဲဖြစ်ကြောင်း သက်သေပြသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why does carbon-14 react chemically almost identically to carbon-12, according to the passage?",
            questionMy:
                "စာပိုဒ်အရ ကာဗွန်-၁၄ သည် ကာဗွန်-၁၂ နှင့် ဓာတုအရ နီးပါးတူညီစွာ အဘယ်ကြောင့် တုံ့ပြန်သနည်း။",
            optionsEn: [
              "Both isotopes have the same number of electrons, which drives chemical reactions",
              "Both isotopes have the same mass",
              "Neutrons control all chemical reactions",
              "Carbon-14 is not actually a real isotope",
            ],
            optionsMy: [
              "အိုင်ဆိုတုပ်နှစ်မျိုးလုံးတွင် ဓာတုတုံ့ပြန်မှုများကို ဖြစ်ပေါ်စေသော အီလက်ထရွန်အရေအတွက် တူညီသောကြောင့်",
              "အိုင်ဆိုတုပ်နှစ်မျိုးလုံး အလေးချိန် တူညီသောကြောင့်",
              "နျူထရွန်များသည် ဓာတုတုံ့ပြန်မှုအားလုံးကို ထိန်းချုပ်သောကြောင့်",
              "ကာဗွန်-၁၄ သည် စစ်မှန်သော အိုင်ဆိုတုပ် အမှန်တကယ် မဟုတ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Electrons, not neutrons, are responsible for how an atom bonds and reacts.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အက်တမ်တစ်ခု မည်သို့ချိတ်ဆက်ပြီး တုံ့ပြန်ကြောင်းအတွက် နျူထရွန်များ မဟုတ်ဘဲ အီလက်ထရွန်များကသာ တာဝန်ရှိသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w6-d5",
      dayNumber: 5,
      titleEn: "Week 6 Recap: Atoms, Elements, and Compounds",
      titleMy:
          "အပတ်စဉ် ၆ ပြန်လည်သုံးသပ်ခြင်း - အက်တမ်၊ ဒြပ်စင်နှင့် ဒြပ်ပေါင်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Protons are found...",
          questionMy: "ပရိုတွန်များကို မည်သည့်နေရာတွင် တွေ့ရှိရသနည်း။",
          optionsEn: [
            "In the nucleus, with a positive charge",
            "Orbiting the nucleus, with a negative charge",
            "Nowhere in an atom",
            "Only in isotopes",
          ],
          optionsMy: [
            "နျူကလိယပ်စ်အတွင်း၊ အပေါင်းလျှပ်စစ်အားဖြင့်",
            "နျူကလိယပ်စ်ပတ်လည် လှည့်ပတ်နေခြင်း၊ အနုတ်လျှပ်စစ်အားဖြင့်",
            "အက်တမ်တွင် မည်သည့်နေရာတွင်မျှ မရှိပါ",
            "အိုင်ဆိုတုပ်များတွင်သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Isotopes of the same element differ in their number of...",
          questionMy:
              "ဒြပ်စင်တစ်ခုတည်း၏ အိုင်ဆိုတုပ်များသည် မည်သည့်အရေအတွက်တွင် ကွဲပြားကြသနည်း။",
          optionsEn: ["Neutrons", "Protons", "Electrons only", "Nothing"],
          optionsMy: ["နျူထရွန်", "ပရိုတွန်", "အီလက်ထရွန်သာ", "မည်သည့်အရာမျှ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Ionic bonding involves...",
          questionMy: "အိုင်အွန်နစ်ချိတ်ဆက်မှုသည် မည်သို့ဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "Transfer of electrons between a metal and non-metal",
            "Sharing of electrons between two non-metals",
            "Transfer of protons",
            "Sharing of neutrons",
          ],
          optionsMy: [
            "သတ္တုနှင့် အသတ္တုအကြား အီလက်ထရွန် လွှဲပြောင်းခြင်း",
            "အသတ္တုနှစ်ခုအကြား အီလက်ထရွန် မျှဝေခြင်း",
            "ပရိုတွန် လွှဲပြောင်းခြင်း",
            "နျူထရွန် မျှဝေခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is an example of covalent bonding?",
          questionMy:
              "အောက်ပါတို့အနက် ကိုဗေလင့်ချိတ်ဆက်မှု ဥပမာဖြစ်သည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Water, H2O",
            "Sodium chloride, NaCl",
            "Magnesium oxide, MgO",
            "Potassium bromide, KBr",
          ],
          optionsMy: [
            "ရေ၊ H2O",
            "ဆိုဒီယမ်ကလိုရိုက်၊ NaCl",
            "မဂ္ဂနီဆီယမ်အောက်ဆိုဒ်၊ MgO",
            "ပိုတက်စီယမ်ဘရိုမိုက်၊ KBr",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 7: "Chemical Equations and Calculations"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek7 = CourseWeekDef(
  id: "course-igcse-combsci-w7",
  weekNumber: 7,
  titleEn: "Chemical Equations and Calculations",
  titleMy: "ဓာတုညီမျှခြင်းများနှင့် တွက်ချက်မှုများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w7-d1",
      dayNumber: 1,
      titleEn: "Balancing Equations and the Mole Quiz",
      titleMy: "ညီမျှခြင်းချိန်ညှိခြင်းနှင့် မိုးလ် ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Why must a chemical equation be balanced, with equal numbers of each atom on both sides?",
          questionMy:
              "ဓာတုညီမျှခြင်းတစ်ခုသည် ဘက်နှစ်ဘက်တွင် အက်တမ်အမျိုးအစားတစ်ခုစီ အရေအတွက်တူညီစွာ အဘယ်ကြောင့် ချိန်ညှိထားရသနည်း။",
          optionsEn: [
            "To obey the law of conservation of mass -- atoms cannot be created or destroyed in a reaction",
            "Because balanced equations look neater",
            "Because unbalanced equations are illegal to write",
            "Because only balanced equations involve gases",
          ],
          optionsMy: [
            "ထုထည်ထိန်းသိမ်းမှုဥပဒေ (Law of conservation of mass) ကို လိုက်နာရန် -- တုံ့ပြန်မှုတစ်ခုတွင် အက်တမ်များကို ဖန်တီးခြင်း (သို့) ဖျက်ဆီးခြင်း မပြုနိုင်ပါ",
            "ချိန်ညှိထားသော ညီမျှခြင်းများ ပိုစနစ်တကျ ဖြစ်အောင်လုပ်ရန်",
            "မချိန်ညှိထားသော ညီမျှခြင်းများသည် ရေးသားခွင့်မရှိသောကြောင့်",
            "ချိန်ညှိထားသော ညီမျှခြင်းများသာ ဓာတ်ငွေ့ပါဝင်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Atoms are never created or destroyed in a chemical reaction -- they are only rearranged into new substances.",
            "If the numbers of each atom don't match on both sides, the equation would imply atoms appearing or disappearing.",
          ],
          hintsMy: [
            "ဓာတုတုံ့ပြန်မှုတစ်ခုတွင် အက်တမ်များကို ဖန်တီးခြင်း (သို့) ဖျက်ဆီးခြင်း လုံးဝမပြုပါ -- ၎င်းတို့ကို ပစ္စည်းအသစ်များအဖြစ် ပြန်လည်စီစဉ်ခြင်းသာ ပြုသည်။",
            "အက်တမ်အမျိုးအစားတစ်ခုစီ အရေအတွက်သည် ဘက်နှစ်ဘက်တွင် မကိုက်ညီပါက ညီမျှခြင်းက အက်တမ်များ ပေါ်လာခြင်း (သို့) ပျောက်ကွယ်ခြင်းကို ဆိုလိုနေပါလိမ့်မည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "The relative atomic mass of an element is best described as...",
          questionMy:
              "ဒြပ်စင်တစ်ခု၏ ဆွေမျိုးအက်တမ်အလေးချိန် (Relative atomic mass) ကို အကောင်းဆုံးဖော်ပြရလျှင် မည်သို့ ဖော်ပြနိုင်သနည်း။",
          optionsEn: [
            "The average mass of an atom of that element compared to 1/12 of a carbon-12 atom",
            "The exact mass of a single atom in kilograms",
            "The number of protons in the nucleus",
            "The number of electrons in the outer shell",
          ],
          optionsMy: [
            "ကာဗွန်-၁၂ အက်တမ်၏ ၁/၁၂ နှင့်နှိုင်းယှဉ်ထားသော ဒြပ်စင်တစ်ခု၏ အက်တမ် ပျမ်းမျှအလေးချိန်",
            "ကီလိုဂရမ်ဖြင့် အက်တမ်တစ်ခု၏ အတိအကျအလေးချိန်",
            "နျူကလိယပ်စ်ရှိ ပရိုတွန်အရေအတွက်",
            "အပြင်ဆုံးအခွံရှိ အီလက်ထရွန်အရေအတွက်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Relative atomic mass has no units -- it's a ratio comparing an atom's mass to a standard reference.",
            "Carbon-12 is used as the international reference point, defined as having a relative atomic mass of exactly 12.",
          ],
          hintsMy: [
            "ဆွေမျိုးအက်တမ်အလေးချိန်သည် ယူနစ် မရှိပါ -- ၎င်းသည် အက်တမ်တစ်ခု၏အလေးချိန်ကို စံပြသတ်မှတ်ချက်တစ်ခုနှင့် နှိုင်းယှဉ်ထားခြင်းဖြစ်သည်။",
            "ကာဗွန်-၁၂ ကို နိုင်ငံတကာ ကိုးကားအမှတ်အဖြစ် အသုံးပြုသည်၊ ဆွေမျိုးအက်တမ်အလေးချိန် ၁၂ အတိအကျ ရှိသည်ဟု သတ်မှတ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "One mole of any substance contains...",
          questionMy:
              "မည်သည့်ပစ္စည်း၏ မိုးလ် (Mole) တစ်ခုတည်းသည် မည်သည့်အရာကို ပါဝင်သနည်း။",
          optionsEn: [
            "The same fixed number of particles (Avogadro's constant)",
            "Exactly one gram of the substance",
            "Exactly one atom of the substance",
            "A different number of particles depending on the substance",
          ],
          optionsMy: [
            "ပုံသေတန်ဖိုးတူညီသော အမှုန်အရေအတွက် (အာဗိုဂက်ဒရိုသေတ္တာ / Avogadro's constant)",
            "ပစ္စည်း၏ တစ်ဂရမ် အတိအကျ",
            "ပစ္စည်း၏ အက်တမ်တစ်ခု အတိအကျ",
            "ပစ္စည်းပေါ်မူတည်၍ ကွဲပြားသောအမှုန်အရေအတွက်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A mole is a counting unit, just like a \"dozen\" always means 12, no matter what is being counted.",
            "Avogadro's constant (about 6.02 x 10^23) is the same fixed number of particles in one mole of anything.",
          ],
          hintsMy: [
            "မိုးလ်သည် ရေတွက်ခြင်းယူနစ်တစ်ခုဖြစ်သည်၊ \"ဒါဇင်\" ဆိုသည်မှာ မည်သည့်အရာကိုရေတွက်နေသည်ဖြစ်စေ အမြဲတမ်း ၁၂ ကို ဆိုလိုသကဲ့သို့ဖြစ်သည်။",
            "အာဗိုဂက်ဒရိုသေတ္တာ (ခန့်မှန်းခြေ ၆.၀၂ x ၁၀^၂၃) သည် မည်သည့်ပစ္စည်း၏မဆို မိုးလ်တစ်ခုတွင် ပုံသေတန်ဖိုးတူညီသော အမှုန်အရေအတွက် ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the balanced equation 2Mg + O2 -> 2MgO, how many magnesium atoms react with one molecule of oxygen?",
          questionMy:
              "ချိန်ညှိထားသော ညီမျှခြင်း 2Mg + O2 -> 2MgO တွင် အောက်ဆီဂျင် မော်လီကျူးတစ်ခုနှင့် မဂ္ဂနီဆီယမ်အက်တမ် မည်မျှ တုံ့ပြန်သနည်း။",
          optionsEn: ["2", "1", "3", "4"],
          optionsMy: ["၂", "၁", "၃", "၄"],
          correctIndex: 0,
          hintsEn: [
            "The number in front of a chemical formula in a balanced equation shows how many of that unit are involved.",
            "The \"2\" in front of Mg on the left-hand side is the answer.",
          ],
          hintsMy: [
            "ချိန်ညှိထားသော ညီမျှခြင်းတစ်ခုတွင် ဓာတုဖော်မြူလာရှေ့ရှိ ဂဏန်းသည် ထိုယူနစ် မည်မျှပါဝင်ကြောင်း ပြသသည်။",
            "ဘယ်ဘက်ရှိ Mg ရှေ့ရှိ \"2\" သည် အဖြေဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w7-d2",
      dayNumber: 2,
      titleEn: "Match the Stoichiometry Vocabulary",
      titleMy: "စတိုင်ကျီအိုမေတြီဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w7-dm-1",
          termEn: "Balanced Equation",
          termMy: "ချိန်ညှိထားသော ညီမျှခြင်း (Balanced Equation)",
          matchEn:
              "An equation with equal numbers of each atom on both sides, obeying conservation of mass.",
          matchMy:
              "ထုထည်ထိန်းသိမ်းမှုကို လိုက်နာသည့် ဘက်နှစ်ဘက်တွင် အက်တမ်တစ်ခုစီအရေအတွက်တူညီသော ညီမျှခြင်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w7-dm-2",
          termEn: "Relative Atomic Mass",
          termMy: "ဆွေမျိုးအက်တမ်အလေးချိန် (Relative Atomic Mass)",
          matchEn:
              "An atom's average mass compared to 1/12 of a carbon-12 atom.",
          matchMy:
              "ကာဗွန်-၁၂ အက်တမ်၏ ၁/၁၂ နှင့် နှိုင်းယှဉ်ထားသော အက်တမ်တစ်ခု၏ ပျမ်းမျှအလေးချိန်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w7-dm-3",
          termEn: "Mole",
          termMy: "မိုးလ် (Mole)",
          matchEn: "A counting unit equal to Avogadro's constant of particles.",
          matchMy:
              "အာဗိုဂက်ဒရိုသေတ္တာနှင့်ညီမျှသော အမှုန်များ၏ ရေတွက်ခြင်းယူနစ်။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w7-dm-4",
          termEn: "Avogadro's Constant",
          termMy: "အာဗိုဂက်ဒရိုသေတ္တာ (Avogadro's Constant)",
          matchEn:
              "The fixed number of particles (about 6.02 x 10^23) in one mole of any substance.",
          matchMy:
              "ပစ္စည်းမည်သည့်အမျိုးအစား၏မဆို မိုးလ်တစ်ခုတွင် ပါဝင်သော ပုံသေအမှုန်အရေအတွက် (ခန့်မှန်းခြေ ၆.၀၂ x ၁၀^၂၃)။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w7-dm-5",
          termEn: "Relative Formula Mass",
          termMy: "ဆွေမျိုးဖော်မြူလာအလေးချိန် (Relative Formula Mass)",
          matchEn:
              "The sum of the relative atomic masses of every atom in a compound's formula.",
          matchMy:
              "ဒြပ်ပေါင်း၏ ဖော်မြူလာအတွင်းရှိ အက်တမ်တိုင်း၏ ဆွေမျိုးအက်တမ်အလေးချိန်များ ပေါင်းလဒ်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w7-d3",
      dayNumber: 3,
      titleEn: "Sort: Balanced or Unbalanced Equation?",
      titleMy: "စီစစ်ကြမည် - ညီမျှခြင်း ချိန်ညှိပြီးလား၊ မချိန်ညှိသေးဘူးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Balanced Equation", "Unbalanced Equation"],
        bucketsMy: ["ချိန်ညှိထားသော ညီမျှခြင်း", "မချိန်ညှိထားသော ညီမျှခြင်း"],
        items: [
          SortingItem(
            id: "igcsecs-w7-sort-1",
            labelEn: "2H2 + O2 -> 2H2O",
            labelMy: "2H2 + O2 -> 2H2O",
            correctBucketEn: "Balanced Equation",
            correctBucketMy: "ချိန်ညှိထားသော ညီမျှခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w7-sort-2",
            labelEn: "2Mg + O2 -> 2MgO",
            labelMy: "2Mg + O2 -> 2MgO",
            correctBucketEn: "Balanced Equation",
            correctBucketMy: "ချိန်ညှိထားသော ညီမျှခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w7-sort-3",
            labelEn: "N2 + 3H2 -> 2NH3",
            labelMy: "N2 + 3H2 -> 2NH3",
            correctBucketEn: "Balanced Equation",
            correctBucketMy: "ချိန်ညှိထားသော ညီမျှခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w7-sort-4",
            labelEn: "CH4 + 2O2 -> CO2 + 2H2O",
            labelMy: "CH4 + 2O2 -> CO2 + 2H2O",
            correctBucketEn: "Balanced Equation",
            correctBucketMy: "ချိန်ညှိထားသော ညီမျှခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w7-sort-5",
            labelEn: "H2 + O2 -> H2O (unequal oxygen atoms)",
            labelMy: "H2 + O2 -> H2O (အောက်ဆီဂျင်အက်တမ် မညီမျှ)",
            correctBucketEn: "Unbalanced Equation",
            correctBucketMy: "မချိန်ညှိထားသော ညီမျှခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w7-sort-6",
            labelEn: "Mg + O2 -> MgO (unequal oxygen atoms)",
            labelMy: "Mg + O2 -> MgO (အောက်ဆီဂျင်အက်တမ် မညီမျှ)",
            correctBucketEn: "Unbalanced Equation",
            correctBucketMy: "မချိန်ညှိထားသော ညီမျှခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w7-sort-7",
            labelEn: "N2 + H2 -> NH3 (unequal hydrogen and nitrogen atoms)",
            labelMy:
                "N2 + H2 -> NH3 (ဟိုက်ဒရိုဂျင်နှင့် နိုက်ထရိုဂျင်အက်တမ် မညီမျှ)",
            correctBucketEn: "Unbalanced Equation",
            correctBucketMy: "မချိန်ညှိထားသော ညီမျှခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w7-sort-8",
            labelEn:
                "CH4 + O2 -> CO2 + H2O (unequal oxygen and hydrogen atoms)",
            labelMy:
                "CH4 + O2 -> CO2 + H2O (အောက်ဆီဂျင်နှင့် ဟိုက်ဒရိုဂျင်အက်တမ် မညီမျှ)",
            correctBucketEn: "Unbalanced Equation",
            correctBucketMy: "မချိန်ညှိထားသော ညီမျှခြင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w7-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Hlaing's Magnesium and Acid Investigation",
      titleMy: "စာဖတ်ခြင်း - စုလှိုင်၏ မဂ္ဂနီဆီယမ်နှင့် အက်စစ် စမ်းသပ်လေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Hlaing's Magnesium and Acid Investigation",
        titleMy: "စုလှိုင်၏ မဂ္ဂနီဆီယမ်နှင့် အက်စစ် စမ်းသပ်လေ့လာမှု",
        passageEn:
            "For a mole-calculation practical, Su Hlaing reacted a known mass of magnesium ribbon, 0.24 g, with excess dilute hydrochloric acid, collecting the hydrogen gas produced in an upturned measuring cylinder. Before starting, she wrote out the balanced equation: Mg + 2HCl -> MgCl2 + H2, confirming one mole of magnesium produces exactly one mole of hydrogen gas.\n\nUsing magnesium's relative atomic mass of 24, Su Hlaing calculated the number of moles of magnesium she had used: moles equals mass divided by relative atomic mass, so 0.24 divided by 24 gives exactly 0.01 moles of magnesium. Since the balanced equation showed a 1:1 ratio between magnesium and hydrogen gas, she predicted she should collect exactly 0.01 moles of hydrogen gas too.\n\nWhen she measured the actual volume of gas collected and converted it to moles using the gas volume at room temperature, her result came out very close to her 0.01 mole prediction, with only a tiny difference she attributed to some gas escaping before the cylinder was properly sealed. Her teacher pointed out that this was exactly the kind of prediction stoichiometry makes possible: by combining a balanced equation with a known mass and relative atomic mass, Su Hlaing had calculated an expected result before even running the experiment, then used the real experiment to check how closely reality matched the calculation.",
        passageMy:
            "မိုးလ်တွက်ချက်မှု လက်တွေ့စမ်းသပ်မှုအတွက် စုလှိုင်သည် ၀.၂၄ ဂရမ် အလေးချိန်သိသော မဂ္ဂနီဆီယမ်ကြိုးကို ပိုလျှံသော အားနည်းသည့် ဟိုက်ဒရိုကလိုရစ်အက်စစ်နှင့် တုံ့ပြန်စေခဲ့ပြီး ထွက်လာသော ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့ကို လှန်ထားသော ချိန်တွယ်ပြွန်တစ်ခုတွင် စုဆောင်းခဲ့သည်။ မစတင်မီ သူသည် ချိန်ညှိထားသော ညီမျှခြင်းကို ရေးချခဲ့သည်: Mg + 2HCl -> MgCl2 + H2, ဤသည်က မဂ္ဂနီဆီယမ် မိုးလ်တစ်ခုသည် ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့ မိုးလ်တစ်ခု အတိအကျ ထုတ်ပေးကြောင်း အတည်ပြုသည်။\n\nမဂ္ဂနီဆီယမ်၏ ဆွေမျိုးအက်တမ်အလေးချိန် ၂၄ ကို အသုံးပြု၍ စုလှိုင်သည် အသုံးပြုခဲ့သော မဂ္ဂနီဆီယမ် မိုးလ်အရေအတွက်ကို တွက်ချက်ခဲ့သည်: မိုးလ် = အလေးချိန် ÷ ဆွေမျိုးအက်တမ်အလေးချိန်၊ ထို့ကြောင့် ၀.၂၄ ÷ ၂၄ က မဂ္ဂနီဆီယမ် ၀.၀၁ မိုးလ် အတိအကျ ရရှိသည်။ ချိန်ညှိထားသော ညီမျှခြင်းက မဂ္ဂနီဆီယမ်နှင့် ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့ကြား ၁:၁ အချိုးကို ပြသနေသောကြောင့် သူသည် ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့ ၀.၀၁ မိုးလ် အတိအကျ စုဆောင်းရမည်ဟု ခန့်မှန်းခဲ့သည်။\n\nစုဆောင်းရရှိသော ဓာတ်ငွေ့၏ အမှန်တကယ်ပမာဏကို တိုင်းတာပြီး အခန်းအပူချိန်ရှိ ဓာတ်ငွေ့ပမာဏကို အသုံးပြု၍ မိုးလ်အဖြစ် ပြောင်းလဲသောအခါ ရလဒ်သည် သူ၏ ၀.၀၁ မိုးလ် ခန့်မှန်းချက်နှင့် အလွန်နီးစပ်စွာ ထွက်ပေါ်လာခဲ့ပြီး၊ ချိန်တွယ်ပြွန်ကို မှန်ကန်စွာ မပိတ်မီ ဓာတ်ငွေ့အနည်းငယ် ထွက်သွားခဲ့ကြောင်း သူ ယူဆသော ကွာခြားချက် အနည်းငယ်သာ ရှိခဲ့သည်။ သူ၏ ဆရာမက ဤသည်မှာ စတိုင်ကျီအိုမေတြီ ဖြစ်နိုင်စေသည့် ခန့်မှန်းချက်အမျိုးအစား အတိအကျ ဖြစ်ကြောင်း ထောက်ပြခဲ့သည်: ချိန်ညှိထားသော ညီမျှခြင်းတစ်ခုကို သိသောအလေးချိန်နှင့် ဆွေမျိုးအက်တမ်အလေးချိန်တို့ဖြင့် ပေါင်းစပ်ခြင်းဖြင့် စုလှိုင်သည် စမ်းသပ်မှု မစမလုပ်မီကတည်းက မျှော်လင့်ထားသောရလဒ်ကို တွက်ချက်နိုင်ခဲ့ပြီး၊ ထို့နောက်မှသာ စစ်မှန်သောစမ်းသပ်မှုကို အသုံးပြု၍ အမှန်တကယ်အခြေအနေသည် တွက်ချက်မှုနှင့် မည်မျှနီးစပ်ကြောင်း စစ်ဆေးခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "How many moles of magnesium did Su Hlaing use?",
            questionMy:
                "စုလှိုင်သည် မဂ္ဂနီဆီယမ် မည်မျှမိုးလ် အသုံးပြုခဲ့သနည်း။",
            optionsEn: ["0.01 moles", "0.24 moles", "24 moles", "1 mole"],
            optionsMy: ["၀.၀၁ မိုးလ်", "၀.၂၄ မိုးလ်", "၂၄ မိုးလ်", "၁ မိုးလ်"],
            correctIndex: 0,
            hintsEn: [
              "Moles equals mass divided by relative atomic mass.",
              "0.24 grams divided by a relative atomic mass of 24 gives the answer.",
            ],
            hintsMy: [
              "မိုးလ် = အလေးချိန် ÷ ဆွေမျိုးအက်တမ်အလေးချိန်။",
              "၀.၂၄ ဂရမ်ကို ဆွေမျိုးအက်တမ်အလေးချိန် ၂၄ ဖြင့် စားခြင်းက အဖြေကို ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Su Hlaing predict she would collect 0.01 moles of hydrogen gas?",
            questionMy:
                "စုလှိုင်သည် ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့ ၀.၀၁ မိုးလ် စုဆောင်းရမည်ဟု အဘယ်ကြောင့် ခန့်မှန်းခဲ့သနည်း။",
            optionsEn: [
              "The balanced equation showed a 1:1 ratio between magnesium and hydrogen gas",
              "She guessed randomly",
              "All chemical reactions always produce exactly 0.01 moles of gas",
              "Hydrochloric acid always produces exactly this much gas",
            ],
            optionsMy: [
              "ချိန်ညှိထားသော ညီမျှခြင်းက မဂ္ဂနီဆီယမ်နှင့် ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့ကြား ၁:၁ အချိုးကို ပြသသောကြောင့်",
              "သူ ကျပန်း ခန့်မှန်းခဲ့ခြင်းဖြစ်သောကြောင့်",
              "ဓာတုတုံ့ပြန်မှုအားလုံးသည် အမြဲတမ်း ဓာတ်ငွေ့ ၀.၀၁ မိုးလ် အတိအကျ ထုတ်ပေးသောကြောင့်",
              "ဟိုက်ဒရိုကလိုရစ်အက်စစ်သည် အမြဲတမ်း ဤပမာဏအတိအကျ ဓာတ်ငွေ့ ထုတ်ပေးသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first and second paragraphs, where Su Hlaing writes out and uses the balanced equation.",
              "The balanced equation Mg + 2HCl -> MgCl2 + H2 has one Mg producing one H2.",
            ],
            hintsMy: [
              "စုလှိုင်သည် ချိန်ညှိထားသော ညီမျှခြင်းကို ရေးချပြီး အသုံးပြုသည့် ပထမနှင့်ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ချိန်ညှိထားသော ညီမျှခြင်း Mg + 2HCl -> MgCl2 + H2 တွင် Mg တစ်ခုသည် H2 တစ်ခု ထုတ်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Su Hlaing think caused the small difference between her prediction and her actual result?",
            questionMy:
                "စုလှိုင်၏ ခန့်မှန်းချက်နှင့် အမှန်တကယ်ရလဒ်ကြား အနည်းငယ်ကွာခြားချက်ကို မည်သည့်အရာက ဖြစ်ပေါ်စေသည်ဟု သူ ထင်ခဲ့သနည်း။",
            optionsEn: [
              "Some gas escaping before the cylinder was properly sealed",
              "Her calculation was completely wrong",
              "The balanced equation was incorrect",
              "Magnesium does not actually react with acid",
            ],
            optionsMy: [
              "ချိန်တွယ်ပြွန်ကို မှန်ကန်စွာ မပိတ်မီ ဓာတ်ငွေ့အနည်းငယ် ထွက်သွားခြင်း",
              "သူ၏ တွက်ချက်မှု လုံးဝ မှားယွင်းခဲ့သောကြောင့်",
              "ချိန်ညှိထားသော ညီမျှခြင်း မှားယွင်းခဲ့သောကြောင့်",
              "မဂ္ဂနီဆီယမ်သည် အက်စစ်နှင့် အမှန်တကယ် မတုံ့ပြန်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation of the small gap between prediction and measurement.",
              "A small amount of gas leaking before a proper seal is a common, realistic source of experimental error.",
            ],
            hintsMy: [
              "ခန့်မှန်းချက်နှင့် တိုင်းတာမှုကြား အနည်းငယ်ကွာဟမှုကို ရှင်းပြသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "မှန်ကန်စွာ မပိတ်မီ ဓာတ်ငွေ့အနည်းငယ် စိမ့်ထွက်ခြင်းသည် စမ်းသပ်မှုအမှား၏ ဖြစ်တတ်သော အကြောင်းရင်းတစ်ခု ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to Su Hlaing's teacher, what does stoichiometry make possible?",
            questionMy:
                "စုလှိုင်၏ ဆရာမအရ စတိုင်ကျီအိုမေတြီက မည်သည့်အရာကို ဖြစ်နိုင်စေသနည်း။",
            optionsEn: [
              "Calculating an expected result before running the experiment",
              "Making experiments completely unnecessary",
              "Guaranteeing there will never be any measurement error",
              "Avoiding the need for a balanced equation",
            ],
            optionsMy: [
              "စမ်းသပ်မှု မစမလုပ်မီ မျှော်လင့်ထားသောရလဒ်ကို တွက်ချက်ခြင်း",
              "စမ်းသပ်မှုများကို လုံးဝ မလိုအပ်စေခြင်း",
              "တိုင်းတာမှုအမှား လုံးဝ ရှိမည်မဟုတ်ကြောင်း အာမခံခြင်း",
              "ချိန်ညှိထားသော ညီမျှခြင်း လိုအပ်ချက်ကို ရှောင်ရှားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Su Hlaing calculated her 0.01 mole prediction before collecting any gas at all.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "စုလှိုင်သည် ဓာတ်ငွေ့ မစုဆောင်းမီကတည်းက ၎င်း၏ ၀.၀၁ မိုးလ် ခန့်မှန်းချက်ကို တွက်ချက်ခဲ့သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w7-d5",
      dayNumber: 5,
      titleEn: "Week 7 Recap: Equations and Calculations",
      titleMy:
          "အပတ်စဉ် ၇ ပြန်လည်သုံးသပ်ခြင်း - ညီမျှခြင်းများနှင့် တွက်ချက်မှုများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A chemical equation must be balanced to obey...",
          questionMy:
              "ဓာတုညီမျှခြင်းတစ်ခုသည် မည်သည့်အချက်ကို လိုက်နာရန် ချိန်ညှိရသနည်း။",
          optionsEn: [
            "The law of conservation of mass",
            "The law of gravity",
            "The rule of averages",
            "No particular rule",
          ],
          optionsMy: [
            "ထုထည်ထိန်းသိမ်းမှုဥပဒေ",
            "ဆွဲငင်အားဥပဒေ",
            "ပျမ်းမျှစည်းမျဉ်း",
            "မည်သည့်စည်းမျဉ်းမျှ မရှိပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "One mole of any substance contains the same number of...",
          questionMy:
              "ပစ္စည်း မည်သည့်အမျိုးအစား၏မဆို မိုးလ်တစ်ခုတွင် တူညီသောအရေအတွက်ရှိသည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: ["Particles", "Grams", "Atoms of carbon only", "Litres"],
          optionsMy: [
            "အမှုန်များ",
            "ဂရမ်များ",
            "ကာဗွန်အက်တမ်များသာ",
            "လီတာများ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Relative atomic mass compares an atom's mass to...",
          questionMy:
              "ဆွေမျိုးအက်တမ်အလေးချိန်သည် အက်တမ်တစ်ခု၏ အလေးချိန်ကို မည်သည့်အရာနှင့် နှိုင်းယှဉ်သနည်း။",
          optionsEn: [
            "1/12 of a carbon-12 atom",
            "A hydrogen atom exactly",
            "One kilogram exactly",
            "Nothing -- it has no comparison",
          ],
          optionsMy: [
            "ကာဗွန်-၁၂ အက်တမ်၏ ၁/၁၂",
            "ဟိုက်ဒရိုဂျင်အက်တမ် အတိအကျ",
            "ကီလိုဂရမ်တစ်ခု အတိအကျ",
            "မည်သည့်အရာမျှ -- နှိုင်းယှဉ်ချက် မရှိပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Mg + 2HCl -> MgCl2 + H2, how many moles of hydrogen gas form from one mole of magnesium?",
          questionMy:
              "Mg + 2HCl -> MgCl2 + H2 တွင် မဂ္ဂနီဆီယမ် တစ်မိုးလ်မှ ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့ မည်မျှမိုးလ် ဖြစ်ပေါ်သနည်း။",
          optionsEn: ["1", "2", "0.5", "0"],
          optionsMy: ["၁", "၂", "၀.၅", "၀"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 8 (Capstone): "Stoichiometry Exam Studio"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek8 = CourseWeekDef(
  id: "course-igcse-combsci-w8",
  weekNumber: 8,
  titleEn: "Stoichiometry Exam Studio",
  titleMy: "စတိုင်ကျီအိုမေတြီ စာမေးပွဲ အလုပ်ရုံ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w8-d1",
      dayNumber: 1,
      titleEn: "Moles Problem Solving Quiz",
      titleMy: "မိုးလ် ပြဿနာဖြေရှင်းခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A student has 4.8 g of magnesium (relative atomic mass 24). How many moles is this?",
          questionMy:
              "ကျောင်းသားတစ်ဦးတွင် မဂ္ဂနီဆီယမ် ၄.၈ ဂရမ် (ဆွေမျိုးအက်တမ်အလေးချိန် ၂၄) ရှိသည်။ ၎င်းသည် မည်မျှမိုးလ် ဖြစ်သနည်း။",
          optionsEn: ["0.2 moles", "2 moles", "4.8 moles", "24 moles"],
          optionsMy: ["၀.၂ မိုးလ်", "၂ မိုးလ်", "၄.၈ မိုးလ်", "၂၄ မိုးလ်"],
          correctIndex: 0,
          hintsEn: [
            "Moles equals mass divided by relative atomic mass.",
            "4.8 divided by 24 gives the answer.",
          ],
          hintsMy: [
            "မိုးလ် = အလေးချိန် ÷ ဆွေမျိုးအက်တမ်အလေးချိန်။",
            "၄.၈ ကို ၂၄ ဖြင့် စားခြင်းက အဖြေကို ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the equation N2 + 3H2 -> 2NH3, how many moles of hydrogen are needed to react completely with 2 moles of nitrogen?",
          questionMy:
              "N2 + 3H2 -> 2NH3 ညီမျှခြင်းတွင် နိုက်ထရိုဂျင် ၂ မိုးလ်နှင့် အပြည့်အဝ တုံ့ပြန်ရန် ဟိုက်ဒရိုဂျင် မည်မျှမိုးလ် လိုအပ်သနည်း။",
          optionsEn: ["6 moles", "3 moles", "2 moles", "1 mole"],
          optionsMy: ["၆ မိုးလ်", "၃ မိုးလ်", "၂ မိုးလ်", "၁ မိုးလ်"],
          correctIndex: 0,
          hintsEn: [
            "The equation shows a 1:3 ratio between nitrogen and hydrogen.",
            "If 1 mole of nitrogen needs 3 moles of hydrogen, scale both up by the same factor for 2 moles of nitrogen.",
          ],
          hintsMy: [
            "ညီမျှခြင်းက နိုက်ထရိုဂျင်နှင့် ဟိုက်ဒရိုဂျင်ကြား ၁:၃ အချိုးကို ပြသသည်။",
            "နိုက်ထရိုဂျင် ၁ မိုးလ်အတွက် ဟိုက်ဒရိုဂျင် ၃ မိုးလ် လိုအပ်ပါက၊ နိုက်ထရိုဂျင် ၂ မိုးလ်အတွက် နှစ်ခုစလုံးကို အချိုးတူ တိုးမြှင့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "Sodium hydroxide, NaOH, is an example of...",
          questionMy:
              "ဆိုဒီယမ်ဟိုက်ဒရောက်ဆိုဒ်၊ NaOH သည် မည်သည့်အရာ၏ ဥပမာဖြစ်သနည်း။",
          optionsEn: [
            "Ionic bonding, since it is a metal compound with a metal ion and hydroxide ion",
            "Covalent bonding only",
            "No bonding at all",
            "Metallic bonding only",
          ],
          optionsMy: [
            "အိုင်အွန်နစ်ချိတ်ဆက်မှု၊ သတ္တုအိုင်းယွန်းနှင့် ဟိုက်ဒရောက်ဆိုဒ်အိုင်းယွန်းပါဝင်သော သတ္တုဒြပ်ပေါင်းဖြစ်သောကြောင့်",
            "ကိုဗေလင့်ချိတ်ဆက်မှုသာ",
            "ချိတ်ဆက်မှု လုံးဝမရှိပါ",
            "သတ္တုချိတ်ဆက်မှုသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "NaOH contains a sodium metal ion (Na+) and a hydroxide ion (OH-), held together by ionic bonding.",
            "Compounds made of a metal combined with a non-metal group are typically ionic.",
          ],
          hintsMy: [
            "NaOH တွင် ဆိုဒီယမ်သတ္တုအိုင်းယွန်း (Na+) နှင့် ဟိုက်ဒရောက်ဆိုဒ်အိုင်းယွန်း (OH-) ပါဝင်ပြီး အိုင်အွန်နစ်ချိတ်ဆက်မှုဖြင့် ပေါင်းစည်းထားသည်။",
            "အသတ္တုအုပ်စုတစ်ခုနှင့် ပေါင်းစပ်ထားသော သတ္တုဖြင့်ပြုလုပ်သော ဒြပ်ပေါင်းများသည် များသောအားဖြင့် အိုင်အွန်နစ်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A student calculates a theoretical yield of 10 g but only obtains 8 g in the real experiment. What is a likely reason for this?",
          questionMy:
              "ကျောင်းသားတစ်ဦးသည် သီအိုရီအရ ရလဒ် ၁၀ ဂရမ်ကို တွက်ချက်ခဲ့သော်လည်း စစ်မှန်သော စမ်းသပ်မှုတွင် ၈ ဂရမ်သာ ရရှိသည်။ ဤသို့ဖြစ်ရသည့် ဖြစ်နိုင်ချေရှိသောအကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Some product was lost during the practical process, such as during filtering or transferring",
            "The balanced equation must be wrong",
            "Theoretical yield calculations are always inaccurate",
            "The student used the wrong colour indicator",
          ],
          optionsMy: [
            "ဓာတ်ခွဲခန်းလုပ်ငန်းစဉ်အတွင်း ရေစစ်ခြင်း (သို့) ရွှေ့ပြောင်းခြင်းကဲ့သို့သောအချိန်တွင် ထွက်ကုန်အချို့ ဆုံးရှုံးခဲ့ခြင်း",
            "ချိန်ညှိထားသော ညီမျှခြင်း မှားယွင်းနေရမည်",
            "သီအိုရီရလဒ်တွက်ချက်မှုများသည် အမြဲတမ်း မတိကျပါ",
            "ကျောင်းသားက အရောင်ညွှန်ပြပစ္စည်း မှားယွင်းစွာ အသုံးပြုခဲ့ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "The percentage yield (actual divided by theoretical) is almost always less than 100% for real, practical reasons.",
            "Product can be lost at several practical steps -- filtering, transferring between containers, or incomplete reactions.",
          ],
          hintsMy: [
            "ရာခိုင်နှုန်းရလဒ် (အမှန်တကယ် ÷ သီအိုရီ) သည် စစ်မှန်သော လက်တွေ့အကြောင်းရင်းများကြောင့် ၁၀၀% အောက် အမြဲနီးပါး ရှိတတ်သည်။",
            "ထွက်ကုန်ကို လက်တွေ့အဆင့်များစွာတွင် ဆုံးရှုံးနိုင်သည် -- ရေစစ်ခြင်း၊ ခွက်များကြား ရွှေ့ပြောင်းခြင်း (သို့) မပြည့်စုံသော တုံ့ပြန်မှု။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w8-d2",
      dayNumber: 2,
      titleEn: "Match the Exam-Level Stoichiometry Vocabulary",
      titleMy:
          "စာမေးပွဲအဆင့် စတိုင်ကျီအိုမေတြီ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w8-dm-1",
          termEn: "Limiting Reactant",
          termMy: "ကန့်သတ်တုံ့ပြန်ပစ္စည်း (Limiting Reactant)",
          matchEn:
              "The reactant used up first, stopping the reaction and limiting how much product forms.",
          matchMy:
              "ဦးစွာကုန်ဆုံးသွားသော တုံ့ပြန်ပစ္စည်းဖြစ်ပြီး၊ တုံ့ပြန်မှုကို ရပ်တန့်စေကာ ထွက်ကုန်ဖြစ်ပေါ်မှုကို ကန့်သတ်ပေးသည်။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w8-dm-2",
          termEn: "Percentage Yield",
          termMy: "ရာခိုင်နှုန်းရလဒ် (Percentage Yield)",
          matchEn:
              "The actual amount of product obtained, divided by the theoretical amount, as a percentage.",
          matchMy:
              "ရရှိသောထွက်ကုန်အမှန်တကယ်ပမာဏကို သီအိုရီပမာဏဖြင့် စားပြီး ရာခိုင်နှုန်းအဖြစ်ဖော်ပြထားခြင်း။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w8-dm-3",
          termEn: "Empirical Formula",
          termMy: "အင်ပီရီကယ်ဖော်မြူလာ (Empirical Formula)",
          matchEn:
              "The simplest whole-number ratio of atoms of each element in a compound.",
          matchMy:
              "ဒြပ်ပေါင်းတစ်ခုတွင်ရှိသော ဒြပ်စင်တစ်ခုစီ၏ အက်တမ်များ၏ အရိုးရှင်းဆုံးလုံးကိန်းအချိုး။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w8-dm-4",
          termEn: "Molar Mass",
          termMy: "မိုးလားအလေးချိန် (Molar Mass)",
          matchEn: "The mass of one mole of a substance, in grams per mole.",
          matchMy:
              "ပစ္စည်းတစ်ခု၏ မိုးလ်တစ်ခု၏ အလေးချိန်၊ တစ်မိုးလ်ချင်း ဂရမ်ဖြင့်။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w8-dm-5",
          termEn: "Excess Reactant",
          termMy: "ပိုလျှံတုံ့ပြန်ပစ္စည်း (Excess Reactant)",
          matchEn:
              "The reactant that is not fully used up, with some remaining after the reaction stops.",
          matchMy:
              "အပြည့်အဝ မကုန်ဆုံးသေးဘဲ တုံ့ပြန်မှုရပ်တန့်ပြီးနောက် အနည်းငယ် ကျန်ရှိနေသော တုံ့ပြန်ပစ္စည်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w8-d3",
      dayNumber: 3,
      titleEn: "Sort: Ionic or Covalent? (Exam Review)",
      titleMy:
          "စီစစ်ကြမည် - အိုင်အွန်နစ် (သို့) ကိုဗေလင့် (စာမေးပွဲပြန်လည်သုံးသပ်ခြင်း)",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Ionic Compound", "Covalent Compound"],
        bucketsMy: ["အိုင်အွန်နစ်ဒြပ်ပေါင်း", "ကိုဗေလင့်ဒြပ်ပေါင်း"],
        items: [
          SortingItem(
            id: "igcsecs-w8-sort-1",
            labelEn: "Sodium hydroxide, NaOH",
            labelMy: "ဆိုဒီယမ်ဟိုက်ဒရောက်ဆိုဒ်၊ NaOH",
            correctBucketEn: "Ionic Compound",
            correctBucketMy: "အိုင်အွန်နစ်ဒြပ်ပေါင်း",
          ),
          SortingItem(
            id: "igcsecs-w8-sort-2",
            labelEn: "Calcium carbonate, CaCO3",
            labelMy: "ကယ်လစီယမ်ကာဗွန်နိတ်၊ CaCO3",
            correctBucketEn: "Ionic Compound",
            correctBucketMy: "အိုင်အွန်နစ်ဒြပ်ပေါင်း",
          ),
          SortingItem(
            id: "igcsecs-w8-sort-3",
            labelEn: "Copper sulfate, CuSO4",
            labelMy: "ကွန်ပါဆာလဖိတ်၊ CuSO4",
            correctBucketEn: "Ionic Compound",
            correctBucketMy: "အိုင်အွန်နစ်ဒြပ်ပေါင်း",
          ),
          SortingItem(
            id: "igcsecs-w8-sort-4",
            labelEn: "Potassium hydroxide, KOH",
            labelMy: "ပိုတက်စီယမ်ဟိုက်ဒရောက်ဆိုဒ်၊ KOH",
            correctBucketEn: "Ionic Compound",
            correctBucketMy: "အိုင်အွန်နစ်ဒြပ်ပေါင်း",
          ),
          SortingItem(
            id: "igcsecs-w8-sort-5",
            labelEn: "Ammonia, NH3",
            labelMy: "အမိုးနီးယား၊ NH3",
            correctBucketEn: "Covalent Compound",
            correctBucketMy: "ကိုဗေလင့်ဒြပ်ပေါင်း",
          ),
          SortingItem(
            id: "igcsecs-w8-sort-6",
            labelEn: "Ethane, C2H6",
            labelMy: "အီသိန်း၊ C2H6",
            correctBucketEn: "Covalent Compound",
            correctBucketMy: "ကိုဗေလင့်ဒြပ်ပေါင်း",
          ),
          SortingItem(
            id: "igcsecs-w8-sort-7",
            labelEn: "Hydrogen chloride, HCl (as a gas molecule)",
            labelMy: "ဟိုက်ဒရိုဂျင်ကလိုရိုက်၊ HCl (ဓာတ်ငွေ့မော်လီကျူးအနေဖြင့်)",
            correctBucketEn: "Covalent Compound",
            correctBucketMy: "ကိုဗေလင့်ဒြပ်ပေါင်း",
          ),
          SortingItem(
            id: "igcsecs-w8-sort-8",
            labelEn: "Carbon dioxide, CO2",
            labelMy: "ကာဗွန်ဒိုင်အောက်ဆိုဒ်၊ CO2",
            correctBucketEn: "Covalent Compound",
            correctBucketMy: "ကိုဗေလင့်ဒြပ်ပေါင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w8-d4",
      dayNumber: 4,
      titleEn: "Reading: Kyaw Thu's Past Paper Marathon",
      titleMy: "စာဖတ်ခြင်း - ကျော်သူ၏ ယခင်စာမေးပွဲစာရွက် လေ့ကျင့်ခန်းရှည်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Kyaw Thu's Past Paper Marathon",
        titleMy: "ကျော်သူ၏ ယခင်စာမေးပွဲစာရွက် လေ့ကျင့်ခန်းရှည်",
        passageEn:
            "With the term's final assessment approaching, Kyaw Thu sat down with a past IGCSE-style paper question that combined everything he had learned that term into a single problem: calculate the mass of magnesium oxide produced when 6 g of magnesium burns completely in oxygen, given the balanced equation 2Mg + O2 -> 2MgO, and state what type of bonding holds the product together.\n\nKyaw Thu worked through it step by step. First, he calculated the moles of magnesium: 6 g divided by magnesium's relative atomic mass of 24 gave 0.25 moles. Next, he used the balanced equation's 1:1 ratio between magnesium and magnesium oxide to conclude that 0.25 moles of magnesium would produce 0.25 moles of magnesium oxide. Finally, he calculated the relative formula mass of MgO (24 + 16 = 40) and multiplied it by his 0.25 moles, giving a predicted mass of 10 g of magnesium oxide.\n\nFor the bonding part of the question, Kyaw Thu identified magnesium oxide as ionic, since it forms between a metal (magnesium) and a non-metal (oxygen), with magnesium transferring two electrons to oxygen to form Mg2+ and O2- ions. Reviewing his full answer afterward, he realised the question hadn't tested one isolated skill -- it had chained together relative atomic mass, mole calculations, a balanced equation's ratio, relative formula mass, and bonding classification into a single connected problem, exactly the way a real IGCSE exam question would.",
        passageMy:
            "ထိုနှစ်ဝက်၏ နောက်ဆုံးအကဲဖြတ်စာမေးပွဲ နီးကပ်လာသောအခါ ကျော်သူသည် ထိုနှစ်ဝက်တစ်လျှောက် သင်ယူခဲ့သမျှကို ပြဿနာတစ်ခုတည်းအဖြစ် ပေါင်းစပ်ထားသော ယခင် IGCSE စာမေးပွဲပုံစံ မေးခွန်းတစ်ခုနှင့် ထိုင်၍ ဖြေရှင်းခဲ့သည်: မဂ္ဂနီဆီယမ် ၆ ဂရမ်သည် အောက်ဆီဂျင်ထဲတွင် အပြည့်အဝ လောင်ကျွမ်းသောအခါ ဖြစ်ပေါ်လာသော မဂ္ဂနီဆီယမ်အောက်ဆိုဒ်၏ အလေးချိန်ကို ချိန်ညှိထားသော ညီမျှခြင်း 2Mg + O2 -> 2MgO ကို အသုံးပြု၍ တွက်ချက်ကာ၊ ထွက်ကုန်ကို ဆက်စပ်ထားသည့် ချိတ်ဆက်မှုအမျိုးအစားကို ဖော်ပြရမည်။\n\nကျော်သူသည် အဆင့်ဆင့် ဖြေရှင်းခဲ့သည်။ ပထမဦးစွာ သူသည် မဂ္ဂနီဆီယမ် မိုးလ်အရေအတွက်ကို တွက်ချက်ခဲ့သည်: ၆ ဂရမ်ကို မဂ္ဂနီဆီယမ်၏ ဆွေမျိုးအက်တမ်အလေးချိန် ၂၄ ဖြင့် စားခြင်းက ၀.၂၅ မိုးလ် ရရှိသည်။ ထို့နောက် သူသည် ချိန်ညှိထားသော ညီမျှခြင်း၏ မဂ္ဂနီဆီယမ်နှင့် မဂ္ဂနီဆီယမ်အောက်ဆိုဒ်ကြား ၁:၁ အချိုးကို အသုံးပြု၍ မဂ္ဂနီဆီယမ် ၀.၂၅ မိုးလ်သည် မဂ္ဂနီဆီယမ်အောက်ဆိုဒ် ၀.၂၅ မိုးလ် ထုတ်ပေးမည်ဟု ကောက်ချက်ချခဲ့သည်။ နောက်ဆုံးတွင် သူသည် MgO ၏ ဆွေမျိုးဖော်မြူလာအလေးချိန် (၂၄ + ၁၆ = ၄၀) ကို တွက်ချက်ပြီး ၎င်း၏ ၀.၂၅ မိုးလ်နှင့် မြှောက်ခဲ့သည်၊ ၎င်းက မဂ္ဂနီဆီယမ်အောက်ဆိုဒ် ၁၀ ဂရမ် ခန့်မှန်းရလဒ်ကို ပေးခဲ့သည်။\n\nမေးခွန်း၏ ချိတ်ဆက်မှုအပိုင်းအတွက် ကျော်သူသည် မဂ္ဂနီဆီယမ်အောက်ဆိုဒ်ကို အိုင်အွန်နစ်ဟု ဖော်ထုတ်ခဲ့သည်၊ အဘယ်ကြောင့်ဆိုသော် ၎င်းသည် သတ္တု (မဂ္ဂနီဆီယမ်) နှင့် အသတ္တု (အောက်ဆီဂျင်) အကြား ဖြစ်ပေါ်ပြီး၊ မဂ္ဂနီဆီယမ်သည် အီလက်ထရွန်နှစ်ခုကို အောက်ဆီဂျင်သို့ လွှဲပြောင်းပေးကာ Mg2+ နှင့် O2- အိုင်းယွန်းများ ဖြစ်ပေါ်စေသောကြောင့်ဖြစ်သည်။ သူ၏ အဖြေအပြည့်အစုံကို နောက်ပိုင်းတွင် ပြန်လည်စစ်ဆေးကြည့်ရာ မေးခွန်းသည် ကျွမ်းကျင်မှုတစ်ခုတည်းကို သက်သက် စစ်ဆေးခြင်းမဟုတ်ဘဲ -- ဆွေမျိုးအက်တမ်အလေးချိန်၊ မိုးလ်တွက်ချက်မှုများ၊ ချိန်ညှိထားသော ညီမျှခြင်း၏ အချိုး၊ ဆွေမျိုးဖော်မြူလာအလေးချိန်နှင့် ချိတ်ဆက်မှုခွဲခြားမှုတို့ကို တစ်ခုတည်းသော ဆက်စပ်ပြဿနာအဖြစ် ချိတ်ဆက်ထားကြောင်း သူ သဘောပေါက်လာသည် -- ၎င်းသည် တကယ့် IGCSE စာမေးပွဲမေးခွန်း၏ ပုံစံအတိအကျ ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "How many moles of magnesium did Kyaw Thu calculate from 6 g?",
            questionMy:
                "ကျော်သူသည် ၆ ဂရမ်မှ မဂ္ဂနီဆီယမ် မည်မျှမိုးလ် တွက်ချက်ခဲ့သနည်း။",
            optionsEn: ["0.25 moles", "6 moles", "24 moles", "0.5 moles"],
            optionsMy: ["၀.၂၅ မိုးလ်", "၆ မိုးလ်", "၂၄ မိုးလ်", "၀.၅ မိုးလ်"],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's first calculation.",
              "6 divided by 24 (the relative atomic mass) gives the answer.",
            ],
            hintsMy: [
              "ဒုတိယစာပိုဒ်၏ ပထမတွက်ချက်မှုကို ပြန်ဖတ်ကြည့်ပါ။",
              "၆ ကို ၂၄ (ဆွေမျိုးအက်တမ်အလေးချိန်) ဖြင့် စားခြင်းက အဖြေကို ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What predicted mass of magnesium oxide did Kyaw Thu calculate?",
            questionMy:
                "ကျော်သူသည် မဂ္ဂနီဆီယမ်အောက်ဆိုဒ်၏ ခန့်မှန်းအလေးချိန် မည်မျှ တွက်ချက်ခဲ့သနည်း။",
            optionsEn: ["10 g", "6 g", "24 g", "40 g"],
            optionsMy: ["၁၀ ဂရမ်", "၆ ဂရမ်", "၂၄ ဂရမ်", "၄၀ ဂရမ်"],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's final calculation.",
              "0.25 moles multiplied by MgO's relative formula mass of 40 gives the answer.",
            ],
            hintsMy: [
              "ဒုတိယစာပိုဒ်၏ နောက်ဆုံးတွက်ချက်မှုကို ပြန်ဖတ်ကြည့်ပါ။",
              "၀.၂၅ မိုးလ်ကို MgO ၏ ဆွေမျိုးဖော်မြူလာအလေးချိန် ၄၀ ဖြင့် မြှောက်ခြင်းက အဖြေကို ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn: "Why did Kyaw Thu identify magnesium oxide as ionic?",
            questionMy:
                "ကျော်သူသည် မဂ္ဂနီဆီယမ်အောက်ဆိုဒ်ကို အိုင်အွန်နစ်ဟု အဘယ်ကြောင့် ဖော်ထုတ်ခဲ့သနည်း။",
            optionsEn: [
              "It forms between a metal and a non-metal, with electrons transferred",
              "It forms between two non-metals, with electrons shared",
              "It contains no charged particles at all",
              "It was heated to a very high temperature",
            ],
            optionsMy: [
              "သတ္တုနှင့်အသတ္တုအကြား ဖြစ်ပေါ်ပြီး အီလက်ထရွန်များ လွှဲပြောင်းသောကြောင့်",
              "အသတ္တုနှစ်ခုအကြား ဖြစ်ပေါ်ပြီး အီလက်ထရွန်များ မျှဝေသောကြောင့်",
              "အားရှိအမှုန် လုံးဝ မပါဝင်သောကြောင့်",
              "အပူချိန်အလွန်မြင့်စွာ ပေးထားသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation of the bonding classification.",
              "Magnesium (a metal) transfers electrons to oxygen (a non-metal), forming Mg2+ and O2- ions.",
            ],
            hintsMy: [
              "ချိတ်ဆက်မှုခွဲခြားမှုကို ရှင်းပြထားသော တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "မဂ္ဂနီဆီယမ် (သတ္တု) သည် အီလက်ထရွန်များကို အောက်ဆီဂျင် (အသတ္တု) သို့ လွှဲပြောင်းပေးကာ Mg2+ နှင့် O2- အိုင်းယွန်းများ ဖြစ်ပေါ်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Kyaw Thu realise about the structure of the exam question, upon reviewing his answer?",
            questionMy:
                "ကျော်သူသည် သူ၏ အဖြေကို ပြန်လည်စစ်ဆေးရာတွင် စာမေးပွဲမေးခွန်း၏ ဖွဲ့စည်းပုံနှင့်ပတ်သက်၍ မည်သည့်အရာကို သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "It chained several skills together into one connected problem, like a real IGCSE question",
              "It only tested one isolated skill",
              "It had nothing to do with bonding",
              "It was simpler than any past paper question",
            ],
            optionsMy: [
              "စစ်မှန်သော IGCSE မေးခွန်းကဲ့သို့ ကျွမ်းကျင်မှုများစွာကို တစ်ခုတည်းသော ဆက်စပ်ပြဿနာအဖြစ် ချိတ်ဆက်ထားသည်",
              "ကျွမ်းကျင်မှုတစ်ခုတည်းကိုသာ သက်သက် စစ်ဆေးသည်",
              "ချိတ်ဆက်မှုနှင့် လုံးဝ မသက်ဆိုင်ပါ",
              "ယခင်စာမေးပွဲစာရွက် မေးခွန်းများထက် ပိုမိုလွယ်ကူသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "The question combined relative atomic mass, moles, equation ratios, formula mass, and bonding all in one.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "မေးခွန်းသည် ဆွေမျိုးအက်တမ်အလေးချိန်၊ မိုးလ်၊ ညီမျှခြင်းအချိုးများ၊ ဖော်မြူလာအလေးချိန်နှင့် ချိတ်ဆက်မှုတို့ကို တစ်ခုတည်းတွင် ပေါင်းစပ်ထားသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w8-d5",
      dayNumber: 5,
      titleEn: "Term 2 Recap: Chemistry - Particulate Nature and Stoichiometry",
      titleMy:
          "ဒုတိယနှစ်ဝက် ပြန်လည်သုံးသပ်ခြင်း - ဓာတုဗေဒ - အမှုန်သဘောသဘာဝနှင့် စတိုင်ကျီအိုမေတြီ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Gas particles diffuse because they...",
          questionMy:
              "ဓာတ်ငွေ့အမှုန်များ ပျံ့နှံ့ရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Move randomly at high speed in all directions",
            "Are fixed in place",
            "Never have any energy",
            "Only exist in solids",
          ],
          optionsMy: [
            "ဦးတည်ချက်အားလုံးသို့ ကျပန်းလျင်မြန်စွာ ရွေ့လျားသောကြောင့်",
            "နေရာတကျ ရပ်တည်နေသောကြောင့်",
            "အစွမ်းအင် လုံးဝ မရှိသောကြောင့်",
            "အစိုင်အခဲများတွင်သာ ရှိသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Isotopes of the same element have the same number of...",
          questionMy:
              "ဒြပ်စင်တစ်ခုတည်း၏ အိုင်ဆိုတုပ်များတွင် မည်သည့်အရေအတွက် တူညီကြသနည်း။",
          optionsEn: ["Protons", "Neutrons", "Mass number", "Nothing"],
          optionsMy: [
            "ပရိုတွန်",
            "နျူထရွန်",
            "အလေးချိန်နံပါတ်",
            "မည်သည့်အရာမျှ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Ionic bonding involves the transfer of...",
          questionMy:
              "အိုင်အွန်နစ်ချိတ်ဆက်မှုသည် မည်သည့်အရာ၏ လွှဲပြောင်းမှုနှင့် သက်ဆိုင်သနည်း။",
          optionsEn: ["Electrons", "Protons", "Neutrons", "The whole nucleus"],
          optionsMy: [
            "အီလက်ထရွန်",
            "ပရိုတွန်",
            "နျူထရွန်",
            "နျူကလိယပ်စ်တစ်ခုလုံး",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A balanced equation must obey the law of...",
          questionMy:
              "ချိန်ညှိထားသော ညီမျှခြင်းတစ်ခုသည် မည်သည့်ဥပဒေကို လိုက်နာရသနည်း။",
          optionsEn: [
            "Conservation of mass",
            "Gravity",
            "Reflection",
            "Motion only",
          ],
          optionsMy: [
            "ထုထည်ထိန်းသိမ်းမှု",
            "ဆွဲငင်အား",
            "ရောင်ပြန်ဟပ်မှု",
            "ရွေ့လျားမှုသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Moles equals mass divided by...",
          questionMy:
              "မိုးလ်သည် အလေးချိန်ကို မည်သည့်အရာဖြင့် စားခြင်းနှင့် ညီမျှသနည်း။",
          optionsEn: [
            "Relative atomic (or formula) mass",
            "Avogadro's constant only",
            "Temperature",
            "Volume only",
          ],
          optionsMy: [
            "ဆွေမျိုးအက်တမ် (သို့) ဖော်မြူလာအလေးချိန်",
            "အာဗိုဂက်ဒရိုသေတ္တာသာ",
            "အပူချိန်",
            "ပမာဏသာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 2: "Chemistry - Particulate Nature & Stoichiometry" (Weeks 5-8)
// =====================================================================

const CourseTermDef igcseCombinedScienceTerm2 = CourseTermDef(
  id: "course-igcse-combsci-t2",
  termNumber: 2,
  titleEn: "Chemistry - Particulate Nature and Stoichiometry",
  titleMy: "ဓာတုဗေဒ - အမှုန်သဘောသဘာဝနှင့် စတိုင်ကျီအိုမေတြီ",
  certificateTitleEn: "Chemistry - Particulate Nature and Stoichiometry",
  certificateTitleMy: "ဓာတုဗေဒ - အမှုန်သဘောသဘာဝနှင့် စတိုင်ကျီအိုမေတြီ",
  weeks: [
    _igcseCombSciWeek5,
    _igcseCombSciWeek6,
    _igcseCombSciWeek7,
    _igcseCombSciWeek8,
  ],
);
