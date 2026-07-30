// File: ai_data_bridge/_generated/igcse_combined_science_term4.dart
// IGCSE Combined Science -- Term 4: "Biology - Plant and Human Nutrition"
// (Weeks 13-16), authored from the corrected weekly topic map in
// ai_data_bridge/igcse_combined_science_all_terms.dart. Staging artifact
// only -- not yet wired into course_pathway_bank.dart's Grade.igcse
// pathway. Follows the exact DailyLessonDef/CourseWeekDef/CourseTermDef
// schema and id/xp conventions established by Terms 1-3
// (igcse_combined_science_term1.dart through
// igcse_combined_science_term3.dart) and _secondary3SciencePathway,
// including its rotating cast of named Myanmar-student protagonists
// (one per week's reading passage, not a single fixed character).
//
// Week 13 (Photosynthesis in Plants): leaf anatomy, testing leaves for
// starch, limiting factors of photosynthesis. Week 14 (Human Diet and
// Digestion): balanced diet, the alimentary canal, chemical digestion and
// absorption. Week 15 (Transport in Plants and Humans): xylem and
// phloem, transpiration, the human circulatory system. Week 16
// (Capstone -- Plant & Human Physiology Studio): transpiration-rate and
// heart-rate investigations synthesised into connected experimental
// data, mirroring IGCSE assessment standards.

import 'package:nova_academy/features/lessons/course_pathway_bank.dart';
import 'package:nova_academy/features/lessons/interactive_content_models.dart';
import 'package:nova_academy/features/lessons/mock_quiz_data.dart';

// =====================================================================
// Week 13: "Photosynthesis in Plants"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek13 = CourseWeekDef(
  id: "course-igcse-combsci-w13",
  weekNumber: 13,
  titleEn: "Photosynthesis in Plants",
  titleMy: "အပင်များ၏ အလင်းမှီစုဖွဲ့ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w13-d1",
      dayNumber: 1,
      titleEn: "Photosynthesis and Leaf Anatomy Quiz",
      titleMy: "အလင်းမှီစုဖွဲ့ခြင်းနှင့် အရွက်ဖွဲ့စည်းပုံ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The word equation for photosynthesis is...",
          questionMy:
              "အလင်းမှီစုဖွဲ့ခြင်း (Photosynthesis) ၏ စာလုံးညီမျှခြင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Carbon dioxide + water -> glucose + oxygen (using light energy)",
            "Glucose + oxygen -> carbon dioxide + water",
            "Water + oxygen -> carbon dioxide + glucose",
            "Glucose -> carbon dioxide + water (using light energy)",
          ],
          optionsMy: [
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ရေ -> ဂလူးကို့စ် + အောက်ဆီဂျင် (အလင်းစွမ်းအင်ကို အသုံးပြု၍)",
            "ဂလူးကို့စ် + အောက်ဆီဂျင် -> ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ရေ",
            "ရေ + အောက်ဆီဂျင် -> ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ဂလူးကို့စ်",
            "ဂလူးကို့စ် -> ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ရေ (အလင်းစွမ်းအင်ကို အသုံးပြု၍)",
          ],
          correctIndex: 0,
          hintsEn: [
            "Photosynthesis is the process plants use to make their own food, using light energy captured by chlorophyll.",
            "The reverse process (glucose + oxygen -> carbon dioxide + water) is respiration, not photosynthesis.",
          ],
          hintsMy: [
            "အလင်းမှီစုဖွဲ့ခြင်းသည် ကလိုရိုဖီးလ်က ဖမ်းယူထားသော အလင်းစွမ်းအင်ကို အသုံးပြု၍ အပင်များ ၎င်းတို့၏ အစားအစာကို ကိုယ်တိုင်ပြုလုပ်သော ဖြစ်စဉ်ဖြစ်သည်။",
            "ပြောင်းပြန်ဖြစ်စဉ် (ဂလူးကို့စ် + အောက်ဆီဂျင် -> ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ရေ) သည် အသက်ရှုခြင်း (Respiration) ဖြစ်ပြီး အလင်းမှီစုဖွဲ့ခြင်း မဟုတ်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which leaf cell layer contains the most chloroplasts, making it the main site of photosynthesis?",
          questionMy:
              "မည်သည့် အရွက်ဆဲလ်လွှာသည် ကလိုရိုဖလပ်စ် အများဆုံးပါဝင်ပြီး အလင်းမှီစုဖွဲ့ခြင်း၏ အဓိကနေရာ ဖြစ်သနည်း။",
          optionsEn: [
            "Palisade mesophyll layer",
            "Lower epidermis",
            "Root hair layer",
            "Xylem layer",
          ],
          optionsMy: [
            "ပါလီဆိတ်အလယ်ခေါင်လွှာ (Palisade mesophyll)",
            "အောက်ခြေအရေပြားလွှာ",
            "အမြစ်ဆံလွှာ",
            "ဇိုင်လမ်လွှာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "The palisade mesophyll layer sits near the top of the leaf, closest to the light source.",
            "Its cells are packed tightly with chloroplasts, giving it a densely green appearance under a microscope.",
          ],
          hintsMy: [
            "ပါလီဆိတ်အလယ်ခေါင်လွှာသည် အလင်းရင်းမြစ်နှင့် အနီးဆုံး အရွက်၏ ထိပ်ပိုင်းအနီးတွင် တည်ရှိသည်။",
            "၎င်း၏ ဆဲလ်များသည် ကလိုရိုဖလပ်စ်ဖြင့် ကပ်ကပ်ပြည့်နှက်နေပြီး အဏုကြည့်မှန်ဘီလူးအောက်တွင် စိမ်းစိမ်းညက်ညက် မြင်ကွင်းရသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these is NOT typically a limiting factor of photosynthesis?",
          questionMy:
              "အောက်ပါတို့အနက် အလင်းမှီစုဖွဲ့ခြင်း ကန့်သတ်အကြောင်းရင်း (Limiting factor) များသောအားဖြင့် မဟုတ်သောအရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Soil colour",
            "Light intensity",
            "Carbon dioxide concentration",
            "Temperature",
          ],
          optionsMy: [
            "မြေဆီလွှာ၏အရောင်",
            "အလင်းပြင်းအား",
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပြင်းအား",
            "အပူချိန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A limiting factor is something that, if in short supply, directly slows down the rate of photosynthesis.",
            "Light, carbon dioxide, and temperature are all inputs the reaction itself directly depends on.",
          ],
          hintsMy: [
            "ကန့်သတ်အကြောင်းရင်းတစ်ခုသည် ရှားပါးပါက အလင်းမှီစုဖွဲ့ခြင်းနှုန်းကို တိုက်ရိုက် နှေးကွေးစေသောအရာဖြစ်သည်။",
            "အလင်း၊ ကာဗွန်ဒိုင်အောက်ဆိုဒ်နှင့် အပူချိန်တို့သည် တုံ့ပြန်မှုကိုယ်တိုင် တိုက်ရိုက်မှီခိုနေသော အချက်များဖြစ်ကြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a starch test on a leaf, why must the leaf first be boiled in water, then in alcohol?",
          questionMy:
              "အရွက်တစ်ချပ်၏ ကစီဓာတ်စမ်းသပ်မှုတွင် အရွက်ကို ရေထဲ၌ ပထမဦးစွာ ပြုတ်ပြီးမှ အယ်လကိုဟော်ထဲ၌ အဘယ်ကြောင့် ဆက်လက်ပြုတ်ရသနည်း။",
          optionsEn: [
            "Boiling water softens the cell membranes, and hot alcohol removes the green chlorophyll so colour changes are visible",
            "This process adds starch to the leaf artificially",
            "This process removes all water from the leaf permanently",
            "Boiling makes the leaf grow larger",
          ],
          optionsMy: [
            "ရေပွက်ဆူခြင်းက ဆဲလ်မြှေးပါးများကို နူးညံ့စေပြီး၊ ပူသောအယ်လကိုဟော်က အရောင်ပြောင်းလဲမှုများ မြင်ရစေရန် စိမ်းသောကလိုရိုဖီးလ်ကို ဖယ်ရှားပေးသည်",
            "ဤလုပ်ငန်းစဉ်သည် အရွက်ထဲသို့ ကစီဓာတ်ကို လူတီထွင်ဆန်စွာ ထည့်ပေးသည်",
            "ဤလုပ်ငန်းစဉ်သည် အရွက်ထဲမှ ရေအားလုံးကို အမြဲတမ်း ဖယ်ရှားပေးသည်",
            "ပြုတ်ခြင်းက အရွက်ကို ပိုကြီးထွားစေသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Removing the green chlorophyll is essential, since it would otherwise mask the iodine's colour change.",
            "Without decolourising the leaf, the blue-black starch colour would be hard to see against the leaf's own green.",
          ],
          hintsMy: [
            "စိမ်းသောကလိုရိုဖီးလ်ကို ဖယ်ရှားခြင်းသည် မရှိမဖြစ်လိုအပ်သည်၊ မဖယ်ရှားပါက အိုင်အိုဒင်း၏ အရောင်ပြောင်းလဲမှုကို ဖုံးကွယ်ထားလိမ့်မည်။",
            "အရွက်၏ အရောင်ကို မဖယ်ရှားပါက အပြာနက်ရောင် ကစီဓာတ်အရောင်ကို အရွက်ကိုယ်တိုင်၏ စိမ်းရောင်နှင့် နှိုင်းယှဉ်ကာ တွေ့မြင်ရန် ခက်ခဲမည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w13-d2",
      dayNumber: 2,
      titleEn: "Match the Photosynthesis Vocabulary",
      titleMy: "အလင်းမှီစုဖွဲ့ခြင်းဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w13-dm-1",
          termEn: "Photosynthesis",
          termMy: "အလင်းမှီစုဖွဲ့ခြင်း (Photosynthesis)",
          matchEn:
              "The process by which plants make glucose from carbon dioxide and water, using light energy.",
          matchMy:
              "အလင်းစွမ်းအင်ကို အသုံးပြု၍ အပင်များ ကာဗွန်ဒိုင်အောက်ဆိုဒ်နှင့် ရေမှ ဂလူးကို့စ် ပြုလုပ်သည့် ဖြစ်စဉ်။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w13-dm-2",
          termEn: "Chlorophyll",
          termMy: "ကလိုရိုဖီးလ် (Chlorophyll)",
          matchEn:
              "The green pigment inside chloroplasts that absorbs light energy.",
          matchMy:
              "အလင်းစွမ်းအင်ကို စုပ်ယူသော ကလိုရိုဖလပ်စ်အတွင်းရှိ အစိမ်းရောင်ဓာတ်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w13-dm-3",
          termEn: "Stomata",
          termMy: "စတိုမာတာ (Stomata)",
          matchEn: "Tiny pores on a leaf's surface that let gases in and out.",
          matchMy:
              "ဓာတ်ငွေ့များ ဝင်ထွက်စေသော အရွက်မျက်နှာပြင်ရှိ အလွန်သေးငယ်သောအပေါက်များ။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w13-dm-4",
          termEn: "Limiting Factor",
          termMy: "ကန့်သတ်အကြောင်းရင်း (Limiting Factor)",
          matchEn:
              "A factor that, in short supply, directly slows the rate of a process like photosynthesis.",
          matchMy:
              "ရှားပါးပါက အလင်းမှီစုဖွဲ့ခြင်းကဲ့သို့သော ဖြစ်စဉ်တစ်ခု၏ နှုန်းကို တိုက်ရိုက် နှေးကွေးစေသော အကြောင်းရင်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w13-dm-5",
          termEn: "Palisade Mesophyll Cell",
          termMy: "ပါလီဆိတ် အလယ်ခေါင်ဆဲလ် (Palisade Mesophyll Cell)",
          matchEn:
              "A leaf cell packed with chloroplasts, the leaf's main site of photosynthesis.",
          matchMy:
              "ကလိုရိုဖလပ်စ်ဖြင့် ပြည့်နှက်နေသော အရွက်ဆဲလ်၊ အရွက်၏ အလင်းမှီစုဖွဲ့ခြင်း အဓိကနေရာ။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w13-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Limiting Factor?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် ကန့်သတ်အကြောင်းရင်းလဲ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Light Intensity",
          "Carbon Dioxide Concentration",
          "Temperature",
        ],
        bucketsMy: [
          "အလင်းပြင်းအား",
          "ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပြင်းအား",
          "အပူချိန်",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w13-sort-1",
            labelEn: "Photosynthesis rate slows sharply after sunset",
            labelMy:
                "နေဝင်ပြီးနောက် အလင်းမှီစုဖွဲ့ခြင်းနှုန်း ချက်ချင်းနှေးကွေးသွားသည်",
            correctBucketEn: "Light Intensity",
            correctBucketMy: "အလင်းပြင်းအား",
          ),
          SortingItem(
            id: "igcsecs-w13-sort-2",
            labelEn:
                "A plant grown under a dim lamp photosynthesises slower than one in bright sunlight",
            labelMy:
                "မှိန်သောမီးအောက်တွင် စိုက်ပျိုးထားသော အပင်တစ်ပင်သည် ထွန်းလင်းသောနေရောင်အောက်ရှိအပင်ထက် ပိုနှေးစွာ အလင်းမှီစုဖွဲ့သည်",
            correctBucketEn: "Light Intensity",
            correctBucketMy: "အလင်းပြင်းအား",
          ),
          SortingItem(
            id: "igcsecs-w13-sort-3",
            labelEn:
                "Increasing lamp brightness increases the rate of bubbling in a pondweed experiment",
            labelMy:
                "မီးအလင်းတောက်ပမှု တိုးမြှင့်ခြင်းသည် ရေမြေအပင် စမ်းသပ်မှုတွင် ပူဖောင်းထွက်နှုန်းကို တိုးစေသည်",
            correctBucketEn: "Light Intensity",
            correctBucketMy: "အလင်းပြင်းအား",
          ),
          SortingItem(
            id: "igcsecs-w13-sort-4",
            labelEn:
                "A greenhouse pumps extra gas into the air to boost crop growth",
            labelMy:
                "မြက်ခင်းအိမ်တစ်ခုသည် သီးနှံကြီးထွားမှုတိုးမြှင့်ရန် လေထုထဲသို့ ဓာတ်ငွေ့ထပ်တိုးထည့်ပေးသည်",
            correctBucketEn: "Carbon Dioxide Concentration",
            correctBucketMy: "ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပြင်းအား",
          ),
          SortingItem(
            id: "igcsecs-w13-sort-5",
            labelEn:
                "A sealed, airtight chamber with plants slowly runs low on this gas",
            labelMy:
                "ပိတ်ထားသော လေမဝင်နိုင်သည့် အခန်းငယ်တစ်ခုအတွင်းရှိ အပင်များသည် ဤဓာတ်ငွေ့ တဖြည်းဖြည်း ရှားပါးလာသည်",
            correctBucketEn: "Carbon Dioxide Concentration",
            correctBucketMy: "ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပြင်းအား",
          ),
          SortingItem(
            id: "igcsecs-w13-sort-6",
            labelEn:
                "Sodium bicarbonate is added to pondweed water to raise dissolved gas levels",
            labelMy:
                "ပျော်ဝင်ဓာတ်ငွေ့ ပမာဏတိုးမြှင့်ရန် ရေမြေအပင်ရေထဲသို့ ဆိုဒီယမ်ဘိုင်ကာဗိုနိတ် ထည့်ပေးသည်",
            correctBucketEn: "Carbon Dioxide Concentration",
            correctBucketMy: "ကာဗွန်ဒိုင်အောက်ဆိုဒ် ပြင်းအား",
          ),
          SortingItem(
            id: "igcsecs-w13-sort-7",
            labelEn:
                "Enzyme activity for photosynthesis stops beyond a certain heat level",
            labelMy:
                "အလင်းမှီစုဖွဲ့ခြင်းအတွက် အင်ဇိုင်းလုပ်ဆောင်ချက်သည် အပူအတိုင်းအတာတစ်ခုကျော်လွန်ပါက ရပ်တန့်သွားသည်",
            correctBucketEn: "Temperature",
            correctBucketMy: "အပူချိန်",
          ),
          SortingItem(
            id: "igcsecs-w13-sort-8",
            labelEn:
                "Photosynthesis rate is very slow in a cold greenhouse in winter",
            labelMy:
                "ဆောင်းရာသီတွင် အအေးဓာတ်ရှိသော မြက်ခင်းအိမ်၌ အလင်းမှီစုဖွဲ့ခြင်းနှုန်း အလွန်နှေးကွေးသည်",
            correctBucketEn: "Temperature",
            correctBucketMy: "အပူချိန်",
          ),
          SortingItem(
            id: "igcsecs-w13-sort-9",
            labelEn:
                "Warming a greenhouse moderately speeds up photosynthesis by increasing enzyme activity",
            labelMy:
                "မြက်ခင်းအိမ်တစ်ခုကို အသင့်အတင့် ပူနွေးအောင်လုပ်ခြင်းသည် အင်ဇိုင်းလုပ်ဆောင်ချက်တိုးမြှင့်ပေးခြင်းဖြင့် အလင်းမှီစုဖွဲ့ခြင်းနှုန်းကို မြန်ဆန်စေသည်",
            correctBucketEn: "Temperature",
            correctBucketMy: "အပူချိန်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w13-d4",
      dayNumber: 4,
      titleEn: "Reading: Nandar Hlaing's Variegated Leaf Starch Test",
      titleMy: "စာဖတ်ခြင်း - နန္ဒာလှိုင်၏ အရောင်စုံအရွက် ကစီဓာတ်စမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nandar Hlaing's Variegated Leaf Starch Test",
        titleMy: "နန္ဒာလှိုင်၏ အရောင်စုံအရွက် ကစီဓာတ်စမ်းသပ်မှု",
        passageEn:
            "For her photosynthesis practical, Nandar Hlaing chose a variegated leaf -- one with patches of green and patches of white, the white patches lacking chlorophyll entirely. Her hypothesis was that only the green patches, which contained chlorophyll, would be capable of photosynthesising and therefore producing starch, while the white patches would not.\n\nAfter leaving the plant in bright sunlight for several hours, Nandar Hlaing picked the leaf and carried out the standard starch test: boiling it in water to soften the cells, then boiling it in alcohol to remove the green colour, before finally testing it with iodine solution. When she added the iodine, the parts of the leaf that had originally been green turned a deep blue-black, while the parts that had originally been white patches stayed a browny-orange colour, showing no starch was present there.\n\nNandar Hlaing concluded this supported her hypothesis directly: since chlorophyll is essential for capturing light energy, the white patches (with no chlorophyll) could not photosynthesise, so they never produced glucose to store as starch. The green patches, containing chlorophyll, photosynthesised normally and produced starch. She noted this experiment was a particularly clean demonstration, since both the \"experimental\" and \"control\" conditions existed naturally within a single leaf, removing the need for two separate plants that might otherwise differ in other, uncontrolled ways.",
        passageMy:
            "နန္ဒာလှိုင်၏ အလင်းမှီစုဖွဲ့ခြင်း လက်တွေ့စမ်းသပ်မှုအတွက် သူမသည် အစိမ်းရောင်အစက်များနှင့် အဖြူရောင်အစက်များ ရှိသော အရောင်စုံအရွက်တစ်ချပ်ကို ရွေးချယ်ခဲ့ပြီး၊ အဖြူရောင်အစက်များတွင် ကလိုရိုဖီးလ် လုံးဝ မပါဝင်ပါ။ သူမ၏ ယူဆချက်မှာ ကလိုရိုဖီးလ်ပါဝင်သော အစိမ်းရောင်အစက်များသာ အလင်းမှီစုဖွဲ့ခြင်းပြုလုပ်နိုင်ပြီး ကစီဓာတ်ထုတ်လုပ်နိုင်မည်ဖြစ်ပြီး၊ အဖြူရောင်အစက်များကမူ ထုတ်လုပ်နိုင်မည်မဟုတ်ပါ။\n\nအပင်ကို ထွန်းလင်းသောနေရောင်ခြည်ထဲတွင် နာရီအနည်းငယ်ကြာ ချထားပြီးနောက် နန္ဒာလှိုင်သည် အရွက်ကို ဆွတ်ယူခဲ့ပြီး စံသတ်မှတ် ကစီဓာတ်စမ်းသပ်မှုကို ပြုလုပ်ခဲ့သည်: ဆဲလ်များကို နူးညံ့စေရန် ရေထဲ၌ ပြုတ်ပြီး၊ ထို့နောက် စိမ်းသောအရောင်ကို ဖယ်ရှားရန် အယ်လကိုဟော်ထဲ၌ ပြုတ်ကာ၊ နောက်ဆုံးတွင် အိုင်အိုဒင်းဒြပ်ရည်ဖြင့် စစ်ဆေးခဲ့သည်။ အိုင်အိုဒင်းထည့်လိုက်သောအခါ မူလ အစိမ်းရောင်ဖြစ်ခဲ့သော အရွက်အစိတ်အပိုင်းများသည် ပြင်းထန်သော အပြာနက်ရောင်သို့ ပြောင်းလဲသွားခဲ့ပြီး၊ မူလ အဖြူရောင်အစက်များဖြစ်ခဲ့သော အစိတ်အပိုင်းများကမူ အညိုရောင်/လိမ္မော်ရောင် ဆက်လက်ရှိနေခဲ့ပြီး ထိုနေရာတွင် ကစီဓာတ် လုံးဝမရှိကြောင်း ပြသခဲ့သည်။\n\nနန္ဒာလှိုင်သည် ဤအချက်သည် သူမ၏ ယူဆချက်ကို တိုက်ရိုက်ထောက်ခံသည်ဟု ကောက်ချက်ချခဲ့သည်: ကလိုရိုဖီးလ်သည် အလင်းစွမ်းအင်ဖမ်းယူရန် မရှိမဖြစ်လိုအပ်သောကြောင့် အဖြူရောင်အစက်များ (ကလိုရိုဖီးလ်မရှိသော) သည် အလင်းမှီစုဖွဲ့ခြင်း မပြုလုပ်နိုင်ဘဲ ဂလူးကို့စ်ကို ကစီဓာတ်အဖြစ် သိုလှောင်ရန် လုံးဝ မထုတ်လုပ်နိုင်ခဲ့ပါ။ ကလိုရိုဖီးလ်ပါဝင်သော အစိမ်းရောင်အစက်များကမူ ပုံမှန် အလင်းမှီစုဖွဲ့ခြင်းပြုလုပ်ပြီး ကစီဓာတ်ထုတ်လုပ်ခဲ့သည်။ သူမသည် ဤစမ်းသပ်မှုသည် အထူးရှင်းလင်းသော သရုပ်ပြမှုတစ်ခုဖြစ်ကြောင်း သတိပြုမိသည်၊ အဘယ်ကြောင့်ဆိုသော် \"စမ်းသပ်\" နှင့် \"ထိန်းချုပ်\" အခြေအနေနှစ်ခုစလုံးသည် အရွက်တစ်ချပ်တည်းအတွင်း သဘာဝအတိုင်း ရှိနေသောကြောင့်ဖြစ်ပြီး၊ အခြားထိန်းချုပ်မထားသော နည်းလမ်းများဖြင့် ကွဲပြားနိုင်သည့် အပင်နှစ်ပင် လိုအပ်ခြင်းကို ဖယ်ရှားပေးသောကြောင့်ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What was Nandar Hlaing's hypothesis before starting the test?",
            questionMy: "စမ်းသပ်မှု မစတင်မီ နန္ဒာလှိုင်၏ ယူဆချက်မှာ အဘယ်နည်း။",
            optionsEn: [
              "Only the green patches would photosynthesise and produce starch",
              "Only the white patches would photosynthesise",
              "Neither patch would produce any starch",
              "Both patches would produce identical amounts of starch",
            ],
            optionsMy: [
              "အစိမ်းရောင်အစက်များသာ အလင်းမှီစုဖွဲ့ကာ ကစီဓာတ် ထုတ်လုပ်မည်",
              "အဖြူရောင်အစက်များသာ အလင်းမှီစုဖွဲ့မည်",
              "အစက်နှစ်မျိုးလုံးသည် ကစီဓာတ် လုံးဝ မထုတ်လုပ်ကြောင်း",
              "အစက်နှစ်မျိုးလုံးသည် ကစီဓာတ် ပမာဏတူညီစွာ ထုတ်လုပ်ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first paragraph's statement of her hypothesis.",
              "The hypothesis was based on which patches contained chlorophyll.",
            ],
            hintsMy: [
              "သူမ၏ ယူဆချက်ကို ဖော်ပြထားသည့် ပထမစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ယူဆချက်သည် မည်သည့်အစက်များတွင် ကလိုရိုဖီးလ်ပါဝင်ကြောင်း အခြေခံသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why was the leaf boiled in alcohol during the starch test?",
            questionMy:
                "ကစီဓာတ်စမ်းသပ်မှုအတွင်း အရွက်ကို အဘယ်ကြောင့် အယ်လကိုဟော်ထဲ၌ ပြုတ်ခဲ့သနည်း။",
            optionsEn: [
              "To remove the green chlorophyll colour so colour changes would be visible",
              "To add extra starch to the leaf",
              "To kill any bacteria on the leaf",
              "To make the leaf grow faster",
            ],
            optionsMy: [
              "အရောင်ပြောင်းလဲမှုများ မြင်ရစေရန် စိမ်းသောကလိုရိုဖီးလ်အရောင်ကို ဖယ်ရှားရန်",
              "အရွက်ထဲသို့ ကစီဓာတ်အပို ထည့်ပေးရန်",
              "အရွက်ပေါ်ရှိ ဘက်တီးရီးယားများကို သတ်ပစ်ရန်",
              "အရွက်ကို ပိုမြန်စွာ ကြီးထွားစေရန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the standard starch test procedure.",
              "Without removing the green colour, the iodine's blue-black colour change would be hard to see.",
            ],
            hintsMy: [
              "စံသတ်မှတ် ကစီဓာတ်စမ်းသပ်မှုနည်းလမ်းကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "စိမ်းသောအရောင်ကို မဖယ်ရှားပါက အိုင်အိုဒင်း၏ အပြာနက်ရောင် ပြောင်းလဲမှုကို တွေ့မြင်ရန် ခက်ခဲမည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What colour did the originally-white patches turn with iodine, and what did this show?",
            questionMy:
                "မူလ အဖြူရောင်အစက်များသည် အိုင်အိုဒင်းနှင့် မည်သည့်အရောင်သို့ ပြောင်းလဲခဲ့ပြီး ၎င်းက မည်သည့်အရာကို ပြသခဲ့သနည်း။",
            optionsEn: [
              "Browny-orange, showing no starch was present",
              "Blue-black, showing starch was present",
              "Bright red, showing excess sugar",
              "Colourless, showing no reaction occurred",
            ],
            optionsMy: [
              "အညိုရောင်/လိမ္မော်ရောင်၊ ကစီဓာတ် မရှိကြောင်း ပြသသည်",
              "အပြာနက်ရောင်၊ ကစီဓာတ် ရှိကြောင်း ပြသသည်",
              "အနီရောင်တောက်၊ သကြားပိုကြောင်း ပြသသည်",
              "အရောင်ကင်း၊ တုံ့ပြန်မှု မဖြစ်ပေါ်ကြောင်း ပြသသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the iodine test result.",
              "Iodine only turns blue-black in the presence of starch -- otherwise it stays its own browny-orange colour.",
            ],
            hintsMy: [
              "အိုင်အိုဒင်းစစ်ဆေးမှုရလဒ်ကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အိုင်အိုဒင်းသည် ကစီဓာတ်ရှိမှသာ အပြာနက်ရောင်သို့ ပြောင်းလဲပြီး၊ မရှိလျှင် ၎င်း၏ မူလ အညိုရောင်/လိမ္မော်ရောင် ဆက်လက်ရှိနေမည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Nandar Hlaing consider a variegated leaf a particularly clean experiment?",
            questionMy:
                "အရောင်စုံအရွက်တစ်ချပ်ကို နန္ဒာလှိုင်သည် အထူးရှင်းလင်းသော စမ်းသပ်မှုဟု အဘယ်ကြောင့် သတ်မှတ်ခဲ့သနည်း။",
            optionsEn: [
              "Both the experimental and control conditions existed naturally within a single leaf",
              "It required no iodine solution at all",
              "It removed the need for boiling the leaf",
              "It could be repeated infinitely without any error",
            ],
            optionsMy: [
              "\"စမ်းသပ်\" နှင့် \"ထိန်းချုပ်\" အခြေအနေနှစ်ခုစလုံးသည် အရွက်တစ်ချပ်တည်းအတွင်း သဘာဝအတိုင်း ရှိနေသောကြောင့်",
              "အိုင်အိုဒင်းဒြပ်ရည် လုံးဝ မလိုအပ်သောကြောင့်",
              "အရွက်ကို ပြုတ်ရန် မလိုအပ်စေသောကြောင့်",
              "အမှားလုံးဝမရှိဘဲ အကန့်အသတ်မရှိ ထပ်ခါထပ်ခါ ပြုလုပ်နိုင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Using two separate plants risks other uncontrolled differences between them, unlike one leaf with both patches.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အပင်နှစ်ပင် သီးခြားအသုံးပြုခြင်းသည် ၎င်းတို့ကြား အခြားထိန်းချုပ်မထားသော ကွဲပြားချက်များ ဖြစ်ပေါ်နိုင်ချေရှိသည်၊ အစက်နှစ်မျိုးပါ အရွက်တစ်ချပ်တည်းနှင့်မတူဘဲ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w13-d5",
      dayNumber: 5,
      titleEn: "Week 13 Recap: Photosynthesis",
      titleMy: "အပတ်စဉ် ၁၃ ပြန်လည်သုံးသပ်ခြင်း - အလင်းမှီစုဖွဲ့ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Photosynthesis uses carbon dioxide, water, and light energy to produce...",
          questionMy:
              "အလင်းမှီစုဖွဲ့ခြင်းသည် ကာဗွန်ဒိုင်အောက်ဆိုဒ်၊ ရေနှင့် အလင်းစွမ်းအင်ကို အသုံးပြု၍ မည်သည့်အရာ ထုတ်လုပ်သနည်း။",
          optionsEn: [
            "Glucose and oxygen",
            "Carbon dioxide and water",
            "Only oxygen",
            "Only water",
          ],
          optionsMy: [
            "ဂလူးကို့စ်နှင့် အောက်ဆီဂျင်",
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်နှင့် ရေ",
            "အောက်ဆီဂျင်သာ",
            "ရေသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The palisade mesophyll layer is packed with...",
          questionMy:
              "ပါလီဆိတ်အလယ်ခေါင်လွှာသည် မည်သည့်အရာဖြင့် ပြည့်နှက်နေသနည်း။",
          optionsEn: [
            "Chloroplasts",
            "Xylem vessels",
            "Stomata only",
            "Root hairs",
          ],
          optionsMy: [
            "ကလိုရိုဖလပ်စ်များ",
            "ဇိုင်လမ်ပြွန်များ",
            "စတိုမာတာသာ",
            "အမြစ်ဆံများ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is a limiting factor of photosynthesis?",
          questionMy:
              "အောက်ပါတို့အနက် အလင်းမှီစုဖွဲ့ခြင်း ကန့်သတ်အကြောင်းရင်းဖြစ်သည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Light intensity",
            "Leaf colour name",
            "Plant pot size only",
            "Time of purchase",
          ],
          optionsMy: [
            "အလင်းပြင်းအား",
            "အရွက်၏ အရောင်အမည်",
            "အပင်အိုးအရွယ်အစားသာ",
            "ဝယ်ယူသည့်အချိန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In a starch test, iodine turns blue-black in the presence of...",
          questionMy:
              "ကစီဓာတ်စမ်းသပ်မှုတွင် အိုင်အိုဒင်းသည် မည်သည့်အရာရှိလျှင် အပြာနက်ရောင်သို့ ပြောင်းလဲသနည်း။",
          optionsEn: [
            "Starch",
            "Water only",
            "Oxygen only",
            "Chlorophyll only",
          ],
          optionsMy: ["ကစီဓာတ်", "ရေသာ", "အောက်ဆီဂျင်သာ", "ကလိုရိုဖီးလ်သာ"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 14: "Human Diet and Digestion"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek14 = CourseWeekDef(
  id: "course-igcse-combsci-w14",
  weekNumber: 14,
  titleEn: "Human Diet and Digestion",
  titleMy: "လူသားတို့၏ အာဟာရနှင့် အစာခြေစနစ်",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w14-d1",
      dayNumber: 1,
      titleEn: "Diet and Digestion Quiz",
      titleMy: "အာဟာရနှင့် အစာခြေဖျက်ခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A balanced diet must include carbohydrates, proteins, fats, and also...",
          questionMy:
              "မျှတသောအစားအစာတွင် ကာဗိုဟိုက်ဒရိတ်၊ ပရိုတင်းနှင့် အဆီအပြင် မည်သည့်အရာများပါ ပါဝင်ရမည်နည်း။",
          optionsEn: [
            "Vitamins, minerals, fibre, and water",
            "Only sugar",
            "Only meat",
            "Nothing else is needed",
          ],
          optionsMy: [
            "ဗီတာမင်များ၊ သတ္တုဓာတ်များ၊ ဖိုင်ဘာနှင့် ရေ",
            "သကြားသာ",
            "အသားသာ",
            "အခြားမည်သည့်အရာမျှ မလိုအပ်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "A truly balanced diet covers seven components in total: carbs, protein, fats, vitamins, minerals, fibre, and water.",
            "Vitamins and minerals are needed only in small amounts, but their absence still causes deficiency diseases.",
          ],
          hintsMy: [
            "အမှန်တကယ် မျှတသောအစားအစာတွင် စုစုပေါင်း အစိတ်အပိုင်းခုနစ်မျိုး ပါဝင်ရသည်: ကာဗိုဟိုက်ဒရိတ်၊ ပရိုတင်း၊ အဆီ၊ ဗီတာမင်၊ သတ္တုဓာတ်၊ ဖိုင်ဘာနှင့် ရေ။",
            "ဗီတာမင်များနှင့် သတ္တုဓာတ်များကို ပမာဏနည်းငယ်သာ လိုအပ်သော်လည်း ၎င်းတို့ ချို့တဲ့ပါက ချို့ယွင်းရောဂါများ ဖြစ်ပွားစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which order correctly describes the path food takes through the alimentary canal?",
          questionMy:
              "အစာခြေလမ်းကြောင်းတစ်လျှောက် အစားအစာသည် သွားရာလမ်းကြောင်းကို မှန်ကန်စွာ ဖော်ပြထားသည့်အစီအစဉ်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Mouth -> oesophagus -> stomach -> small intestine -> large intestine",
            "Mouth -> large intestine -> stomach -> small intestine",
            "Stomach -> mouth -> small intestine -> oesophagus",
            "Small intestine -> mouth -> stomach -> oesophagus",
          ],
          optionsMy: [
            "ခံတွင်း -> အစားအစာပြွန် -> အစာအိမ် -> အူသိမ် -> အူမ",
            "ခံတွင်း -> အူမ -> အစာအိမ် -> အူသိမ်",
            "အစာအိမ် -> ခံတွင်း -> အူသိမ် -> အစားအစာပြွန်",
            "အူသိမ် -> ခံတွင်း -> အစာအိမ် -> အစားအစာပြွန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Food travels in one continuous direction from where it enters to where waste eventually leaves.",
            "The oesophagus connects the mouth to the stomach; the small intestine comes after the stomach, before the large intestine.",
          ],
          hintsMy: [
            "အစားအစာသည် ဝင်ရောက်ရာနေရာမှ စွန့်ပစ်ပစ္စည်း နောက်ဆုံးထွက်ရာနေရာအထိ ဆက်တိုက်ဦးတည်ချက်တစ်ခုတည်းဖြင့် သွားသည်။",
            "အစားအစာပြွန်သည် ခံတွင်းနှင့် အစာအိမ်ကို ချိတ်ဆက်ပေးသည်; အူသိမ်သည် အစာအိမ်ပြီးနောက် အူမမတိုင်မီ လာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Amylase is an enzyme that chemically digests...",
          questionMy:
              "အမိုင်လေ့စ်သည် မည်သည့်အရာကို ဓာတုနည်းအရ အစာခြေဖျက်ပေးသော အင်ဇိုင်းဖြစ်သနည်း။",
          optionsEn: [
            "Starch (carbohydrates)",
            "Proteins only",
            "Fats only",
            "Vitamins only",
          ],
          optionsMy: [
            "ကစီဓာတ် (ကာဗိုဟိုက်ဒရိတ်)",
            "ပရိုတင်းသာ",
            "အဆီသာ",
            "ဗီတာမင်သာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Amylase, present in saliva and the small intestine, breaks down starch into simpler sugars.",
            "Different enzymes target different food groups -- protease targets protein, lipase targets fat.",
          ],
          hintsMy: [
            "တံတွေးနှင့် အူသိမ်တွင်ရှိသော အမိုင်လေ့စ်သည် ကစီဓာတ်ကို ရိုးရှင်းသောသကြားများအဖြစ် ဖြိုချပေးသည်။",
            "အင်ဇိုင်းအမျိုးမျိုးသည် အစားအစာအုပ်စု မတူညီစွာ ပစ်မှတ်ထားသည် -- ပရိုတီးဇ်သည် ပရိုတင်းကို၊ လိပ်ပေ့စ်သည် အဆီကို ပစ်မှတ်ထားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Digested food is mainly absorbed into the blood in the...",
          questionMy:
              "အစာခြေပြီးသော အစားအစာသည် အဓိကအားဖြင့် မည်သည့်နေရာတွင် သွေးထဲသို့ စုပ်ယူခံရသနည်း။",
          optionsEn: [
            "Small intestine",
            "Mouth",
            "Oesophagus",
            "Large intestine only",
          ],
          optionsMy: ["အူသိမ်", "ခံတွင်း", "အစားအစာပြွန်", "အူမသာ"],
          correctIndex: 0,
          hintsEn: [
            "The small intestine's inner wall is covered in tiny finger-like projections called villi, which greatly increase surface area for absorption.",
            "By the time food reaches the large intestine, most nutrients have already been absorbed -- mainly water remains to be absorbed there.",
          ],
          hintsMy: [
            "အူသိမ်၏ အတွင်းနံရံသည် လက်ချောင်းပုံသဏ္ဍာန် ဗီလိုင်း (villi) ဟုခေါ်သော အလွန်သေးငယ်သော တိုးထွက်များဖြင့် ဖုံးအုပ်ထားပြီး၊ ၎င်းက စုပ်ယူနိုင်ရန် မျက်နှာပြင်ဧရိယာကို အလွန်တိုးမြှင့်ပေးသည်။",
            "အစားအစာသည် အူမသို့ ရောက်ရှိချိန်တွင် အာဟာရအများစု စုပ်ယူပြီးဖြစ်သည် -- ထိုနေရာတွင် ရေကိုသာ အဓိက ဆက်လက် စုပ်ယူရသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w14-d2",
      dayNumber: 2,
      titleEn: "Match the Digestion Vocabulary",
      titleMy: "အစာခြေဖျက်ခြင်းဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w14-dm-1",
          termEn: "Balanced Diet",
          termMy: "မျှတသောအစားအစာ (Balanced Diet)",
          matchEn:
              "A diet containing the right proportions of all seven nutrient groups.",
          matchMy:
              "အာဟာရအုပ်စုခုနစ်မျိုးလုံးကို မှန်ကန်သောအချိုးအစားဖြင့် ပါဝင်သော အစားအစာ။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w14-dm-2",
          termEn: "Alimentary Canal",
          termMy: "အစာခြေလမ်းကြောင်း (Alimentary Canal)",
          matchEn:
              "The continuous tube food travels through, from mouth to anus.",
          matchMy: "ခံတွင်းမှ စွန့်ပစ်အပေါက်အထိ အစားအစာသွားရသော ဆက်တိုက်ပြွန်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w14-dm-3",
          termEn: "Amylase",
          termMy: "အမိုင်လေ့စ် (Amylase)",
          matchEn: "An enzyme that digests starch into simple sugars.",
          matchMy:
              "ကစီဓာတ်ကို ရိုးရှင်းသောသကြားများအဖြစ် အစာခြေဖျက်ပေးသော အင်ဇိုင်း။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w14-dm-4",
          termEn: "Protease",
          termMy: "ပရိုတီးဇ် (Protease)",
          matchEn: "An enzyme that digests proteins into amino acids.",
          matchMy:
              "ပရိုတင်းများကို အမိုင်နိုအက်စစ်များအဖြစ် အစာခြေဖျက်ပေးသော အင်ဇိုင်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w14-dm-5",
          termEn: "Lipase",
          termMy: "လိပ်ပေ့စ် (Lipase)",
          matchEn: "An enzyme that digests fats into fatty acids and glycerol.",
          matchMy:
              "အဆီများကို ဖက်တီးအက်စစ်နှင့် ဂလီစရောများအဖြစ် အစာခြေဖျက်ပေးသော အင်ဇိုင်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w14-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Digestive Enzyme?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် အစာခြေဖျက်အင်ဇိုင်းလဲ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Carbohydrate-Digesting Enzyme",
          "Protein-Digesting Enzyme",
          "Fat-Digesting Enzyme",
        ],
        bucketsMy: [
          "ကာဗိုဟိုက်ဒရိတ် အစာခြေဖျက်အင်ဇိုင်း",
          "ပရိုတင်း အစာခြေဖျက်အင်ဇိုင်း",
          "အဆီ အစာခြေဖျက်အင်ဇိုင်း",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w14-sort-1",
            labelEn: "Salivary amylase (breaks down starch in the mouth)",
            labelMy: "တံတွေးအမိုင်လေ့စ် (ခံတွင်းတွင် ကစီဓာတ်ကို ဖြိုချသည်)",
            correctBucketEn: "Carbohydrate-Digesting Enzyme",
            correctBucketMy: "ကာဗိုဟိုက်ဒရိတ် အစာခြေဖျက်အင်ဇိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w14-sort-2",
            labelEn:
                "Pancreatic amylase (breaks down starch in the small intestine)",
            labelMy: "ပန်ကရိယအမိုင်လေ့စ် (အူသိမ်တွင် ကစီဓာတ်ကို ဖြိုချသည်)",
            correctBucketEn: "Carbohydrate-Digesting Enzyme",
            correctBucketMy: "ကာဗိုဟိုက်ဒရိတ် အစာခြေဖျက်အင်ဇိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w14-sort-3",
            labelEn: "Maltase (breaks down maltose into glucose)",
            labelMy: "မောလ်တေ့စ် (မောလ်တိုစ်ကို ဂလူးကို့စ်အဖြစ် ဖြိုချသည်)",
            correctBucketEn: "Carbohydrate-Digesting Enzyme",
            correctBucketMy: "ကာဗိုဟိုက်ဒရိတ် အစာခြေဖျက်အင်ဇိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w14-sort-4",
            labelEn: "Pepsin (breaks down protein in the stomach)",
            labelMy: "ပက်ပ်စင် (အစာအိမ်တွင် ပရိုတင်းကို ဖြိုချသည်)",
            correctBucketEn: "Protein-Digesting Enzyme",
            correctBucketMy: "ပရိုတင်း အစာခြေဖျက်အင်ဇိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w14-sort-5",
            labelEn: "Trypsin (breaks down protein in the small intestine)",
            labelMy: "ထရစ်ပ်ဆင် (အူသိမ်တွင် ပရိုတင်းကို ဖြိုချသည်)",
            correctBucketEn: "Protein-Digesting Enzyme",
            correctBucketMy: "ပရိုတင်း အစာခြေဖျက်အင်ဇိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w14-sort-6",
            labelEn:
                "Pancreatic protease (breaks down protein further in the small intestine)",
            labelMy: "ပန်ကရိယပရိုတီးဇ် (အူသိမ်တွင် ပရိုတင်းကို ထပ်မံဖြိုချသည်)",
            correctBucketEn: "Protein-Digesting Enzyme",
            correctBucketMy: "ပရိုတင်း အစာခြေဖျက်အင်ဇိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w14-sort-7",
            labelEn:
                "Pancreatic lipase (breaks down fat in the small intestine)",
            labelMy: "ပန်ကရိယလိပ်ပေ့စ် (အူသိမ်တွင် အဆီကို ဖြိုချသည်)",
            correctBucketEn: "Fat-Digesting Enzyme",
            correctBucketMy: "အဆီ အစာခြေဖျက်အင်ဇိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w14-sort-8",
            labelEn:
                "Gastric lipase (breaks down small amounts of fat in the stomach)",
            labelMy: "အစာအိမ်လိပ်ပေ့စ် (အစာအိမ်တွင် အဆီအနည်းငယ်ကို ဖြိုချသည်)",
            correctBucketEn: "Fat-Digesting Enzyme",
            correctBucketMy: "အဆီ အစာခြေဖျက်အင်ဇိုင်း",
          ),
          SortingItem(
            id: "igcsecs-w14-sort-9",
            labelEn: "Lingual lipase (starts breaking down fat in the mouth)",
            labelMy: "လျှာလိပ်ပေ့စ် (ခံတွင်းတွင် အဆီကို ဖြိုချရန် စတင်သည်)",
            correctBucketEn: "Fat-Digesting Enzyme",
            correctBucketMy: "အဆီ အစာခြေဖျက်အင်ဇိုင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w14-d4",
      dayNumber: 4,
      titleEn: "Reading: Kaung Kaung's Food Nutrient Tests",
      titleMy: "စာဖတ်ခြင်း - ကောင်းကောင်း၏ အာဟာရဓာတ် စမ်းသပ်မှုများ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Kaung Kaung's Food Nutrient Tests",
        titleMy: "ကောင်းကောင်း၏ အာဟာရဓာတ် စမ်းသပ်မှုများ",
        passageEn:
            "For a nutrition practical, Kaung Kaung was given three unlabelled food samples and three standard chemical tests, and had to work out which nutrient each sample mainly contained. For the first test, he added iodine solution directly to a sample -- it turned blue-black immediately, telling him this sample contained starch.\n\nFor the second sample, Kaung Kaung heated it gently with Benedict's solution in a water bath. The mixture, originally blue, gradually turned through green, then yellow, and finally settled as a brick-red precipitate -- a positive result confirming the presence of a reducing sugar like glucose. He noted that if the solution had stayed blue, that would have meant no reducing sugar was present at all.\n\nFor the third sample, Kaung Kaung added Biuret solution. Rather than heating anything this time, he simply added the reagent and watched the colour shift from blue to a distinct purple -- the standard positive result for protein. Comparing his three results, Kaung Kaung reasoned that each test targeted a completely different nutrient using a completely different chemical reaction, which was exactly why nutrition scientists could not rely on a single universal test: starch, sugar, and protein each needed their own specific reagent and their own specific colour change to be reliably identified.",
        passageMy:
            "အာဟာရ လက်တွေ့စမ်းသပ်မှုအတွက် ကောင်းကောင်းအား အမည်မတပ်ထားသော အစားအစာနမူနာသုံးခုနှင့် စံသတ်မှတ် ဓာတုစမ်းသပ်မှုသုံးခုကို ပေးထားပြီး၊ နမူနာတစ်ခုစီတွင် မည်သည့်အာဟာရဓာတ် အဓိကပါဝင်ကြောင်း ရှာဖွေရန် တာဝန်ပေးထားသည်။ ပထမစမ်းသပ်မှုအတွက် သူသည် အိုင်အိုဒင်းဒြပ်ရည်ကို နမူနာတစ်ခုပေါ်သို့ တိုက်ရိုက်ထည့်လိုက်ရာ -- ချက်ချင်း အပြာနက်ရောင်သို့ ပြောင်းလဲသွားခဲ့ပြီး ဤနမူနာတွင် ကစီဓာတ်ပါဝင်ကြောင်း သူ့ကို ပြောပြသည်။\n\nဒုတိယနမူနာအတွက် ကောင်းကောင်းသည် ၎င်းကို ဘင်နဒစ်ဒြပ်ရည်နှင့် ရေချိုးကန်ထဲတွင် ညင်သာစွာ ပူပေးခဲ့သည်။ မူလအပြာရောင်ရှိသော ရောစပ်ဒြပ်ရည်သည် တဖြည်းဖြည်း အစိမ်းရောင်၊ ထို့နောက် အဝါရောင်သို့ ပြောင်းလဲကာ နောက်ဆုံးတွင် အုတ်နီရောင် ကျဆင်းအနည်ကျအနေဖြင့် ရပ်တည်ခဲ့သည် -- ၎င်းသည် ဂလူးကို့စ်ကဲ့သို့သော လျှော့ချသကြား (reducing sugar) ရှိကြောင်း အတည်ပြုသော အပြုသဘောရလဒ်ဖြစ်သည်။ ဒြပ်ရည်သည် အပြာရောင်ဆက်လက်ရှိနေခဲ့ပါက ၎င်းက လျှော့ချသကြား လုံးဝ မရှိကြောင်း ဆိုလိုမည်ဖြစ်ကြောင်း သူ သတိပြုမိသည်။\n\nတတိယနမူနာအတွက် ကောင်းကောင်းသည် ဘိုင်ယူရက်ဒြပ်ရည်ကို ထည့်ပေးခဲ့သည်။ ဤအကြိမ်တွင် မည်သည့်အရာကိုမျှ မပူပေးဘဲ ဒြပ်ကူပစ္စည်းကို ရိုးရိုးရှင်းရှင်း ထည့်ပြီး အရောင်သည် အပြာမှ ထင်ရှားသောခရမ်းရောင်သို့ ပြောင်းလဲသွားသည်ကို စောင့်ကြည့်ခဲ့သည် -- ၎င်းသည် ပရိုတင်းအတွက် စံသတ်မှတ် အပြုသဘောရလဒ်ဖြစ်သည်။ သူ၏ ရလဒ်သုံးခုကို နှိုင်းယှဉ်ကြည့်ရာ ကောင်းကောင်းသည် စစ်ဆေးမှုတစ်ခုစီသည် လုံးဝကွဲပြားသော ဓာတုတုံ့ပြန်မှုကို အသုံးပြု၍ လုံးဝကွဲပြားသော အာဟာရဓာတ်တစ်ခုစီကို ပစ်မှတ်ထားကြောင်း ဆင်ခြင်ခဲ့သည်၊ ၎င်းသည် အာဟာရသိပ္ပံပညာရှင်များ တစ်ကမ္ဘာလုံးသုံး စစ်ဆေးမှုတစ်ခုတည်းကို အားထားမနိုင်ခဲ့ရသည့် အကြောင်းရင်းအတိအကျပင် ဖြစ်သည်: ကစီဓာတ်၊ သကြားနှင့် ပရိုတင်းတစ်ခုစီသည် ယုံကြည်စိတ်ချစွာ ဖော်ထုတ်နိုင်ရန် ၎င်းတို့ကိုယ်ပိုင် သီးခြားဓာတ်ကူပစ္စည်းနှင့် သီးခြားအရောင်ပြောင်းလဲမှု လိုအပ်ခဲ့ကြသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did the first sample turning blue-black with iodine indicate?",
            questionMy:
                "ပထမနမူနာသည် အိုင်အိုဒင်းနှင့် အပြာနက်ရောင်သို့ ပြောင်းလဲခြင်းသည် မည်သည့်အရာကို ညွှန်ပြခဲ့သနည်း။",
            optionsEn: [
              "Starch was present",
              "Protein was present",
              "Fat was present",
              "No nutrient at all was present",
            ],
            optionsMy: [
              "ကစီဓာတ် ပါဝင်ကြောင်း",
              "ပရိုတင်း ပါဝင်ကြောင်း",
              "အဆီ ပါဝင်ကြောင်း",
              "အာဟာရဓာတ် လုံးဝ မပါဝင်ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first paragraph's description of the iodine test.",
              "Iodine's blue-black colour change is the standard positive test for starch.",
            ],
            hintsMy: [
              "အိုင်အိုဒင်းစမ်းသပ်မှုကို ဖော်ပြထားသည့် ပထမစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အိုင်အိုဒင်း၏ အပြာနက်ရောင် ပြောင်းလဲမှုသည် ကစီဓာတ်အတွက် စံသတ်မှတ် အပြုသဘောစမ်းသပ်မှုဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What colour sequence did the Benedict's test produce for the second sample?",
            questionMy:
                "ဒုတိယနမူနာအတွက် ဘင်နဒစ်စမ်းသပ်မှုသည် မည်သည့်အရောင်အစီအစဉ်ကို ဖြစ်ပေါ်စေခဲ့သနည်း။",
            optionsEn: [
              "Blue, then green, then yellow, then brick-red precipitate",
              "Blue straight to purple",
              "Colourless throughout",
              "Blue-black immediately",
            ],
            optionsMy: [
              "အပြာ၊ ထို့နောက် အစိမ်း၊ ထို့နောက် အဝါ၊ ထို့နောက် အုတ်နီရောင် ကျအနည်",
              "အပြာမှ ခရမ်းရောင်သို့ တိုက်ရိုက်",
              "တစ်လျှောက်လုံး အရောင်ကင်း",
              "ချက်ချင်း အပြာနက်ရောင်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's step-by-step description of the colour change.",
              "This gradual colour sequence is the standard positive Benedict's test result for a reducing sugar.",
            ],
            hintsMy: [
              "အရောင်ပြောင်းလဲမှုကို အဆင့်ဆင့် ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤတဖြည်းဖြည်းအရောင်ပြောင်းလဲမှုအစီအစဉ်သည် လျှော့ချသကြားအတွက် စံသတ်မှတ် အပြုသဘော ဘင်နဒစ်စမ်းသပ်မှုရလဒ်ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did the purple colour with Biuret solution confirm in the third sample?",
            questionMy:
                "တတိယနမူနာတွင် ဘိုင်ယူရက်ဒြပ်ရည်နှင့် ခရမ်းရောင်ပြောင်းလဲမှုသည် မည်သည့်အရာကို အတည်ပြုခဲ့သနည်း။",
            optionsEn: [
              "Protein was present",
              "Starch was present",
              "Fat was present",
              "Only water was present",
            ],
            optionsMy: [
              "ပရိုတင်း ပါဝင်ကြောင်း",
              "ကစီဓာတ် ပါဝင်ကြောင်း",
              "အဆီ ပါဝင်ကြောင်း",
              "ရေသာ ပါဝင်ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of the Biuret test.",
              "A colour change to purple with Biuret solution is the standard positive test for protein.",
            ],
            hintsMy: [
              "ဘိုင်ယူရက်စမ်းသပ်မှုကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဘိုင်ယူရက်ဒြပ်ရည်နှင့် ခရမ်းရောင်သို့ အရောင်ပြောင်းလဲခြင်းသည် ပရိုတင်းအတွက် စံသတ်မှတ် အပြုသဘောစမ်းသပ်မှုဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Kaung Kaung conclude that nutrition scientists cannot rely on one universal test?",
            questionMy:
                "အာဟာရသိပ္ပံပညာရှင်များသည် တစ်ကမ္ဘာလုံးသုံး စစ်ဆေးမှုတစ်ခုတည်းကို အားထားမနိုင်ခဲ့ကြောင်း ကောင်းကောင်း အဘယ်ကြောင့် ကောက်ချက်ချခဲ့သနည်း။",
            optionsEn: [
              "Each nutrient needed its own specific reagent and colour change to be reliably identified",
              "All three tests used exactly the same chemical",
              "None of the tests actually worked",
              "Only one nutrient exists in food",
            ],
            optionsMy: [
              "အာဟာရဓာတ်တစ်ခုစီသည် ယုံကြည်စိတ်ချစွာ ဖော်ထုတ်နိုင်ရန် ကိုယ်ပိုင် သီးခြားဓာတ်ကူပစ္စည်းနှင့် အရောင်ပြောင်းလဲမှု လိုအပ်ခဲ့သောကြောင့်",
              "စမ်းသပ်မှုသုံးခုစလုံးသည် ဓာတုပစ္စည်း အတိအကျတူညီစွာ အသုံးပြုခဲ့ခြင်း",
              "စမ်းသပ်မှုမည်သည်မှ အမှန်တကယ် အလုပ်မလုပ်ခဲ့ခြင်း",
              "အစားအစာတွင် အာဟာရဓာတ်တစ်မျိုးတည်းသာ ရှိခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Iodine, Benedict's, and Biuret solution each produce a different colour change for a different nutrient.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အိုင်အိုဒင်း၊ ဘင်နဒစ်နှင့် ဘိုင်ယူရက်ဒြပ်ရည်တစ်ခုစီသည် အာဟာရဓာတ်မတူညီစွာအတွက် အရောင်ပြောင်းလဲမှုမတူညီစွာ ဖြစ်ပေါ်စေသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w14-d5",
      dayNumber: 5,
      titleEn: "Week 14 Recap: Diet and Digestion",
      titleMy: "အပတ်စဉ် ၁၄ ပြန်လည်သုံးသပ်ခြင်း - အာဟာရနှင့် အစာခြေဖျက်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A balanced diet requires how many main nutrient groups?",
          questionMy: "မျှတသောအစားအစာတွင် အာဟာရအုပ်စု မည်မျှ လိုအပ်သနည်း။",
          optionsEn: ["Seven", "Two", "One", "Twenty"],
          optionsMy: ["ခုနစ်မျိုး", "နှစ်မျိုး", "တစ်မျိုး", "နှစ်ဆယ်မျိုး"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Amylase digests...",
          questionMy: "အမိုင်လေ့စ်သည် မည်သည့်အရာကို အစာခြေဖျက်သနည်း။",
          optionsEn: ["Starch", "Protein only", "Fat only", "Vitamins only"],
          optionsMy: ["ကစီဓာတ်", "ပရိုတင်းသာ", "အဆီသာ", "ဗီတာမင်သာ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Most nutrient absorption happens in the...",
          questionMy:
              "အာဟာရဓာတ်အများစု စုပ်ယူမှုသည် မည်သည့်နေရာတွင် ဖြစ်ပျက်သနည်း။",
          optionsEn: [
            "Small intestine",
            "Mouth",
            "Oesophagus",
            "Large intestine",
          ],
          optionsMy: ["အူသိမ်", "ခံတွင်း", "အစားအစာပြွန်", "အူမ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A blue-to-purple colour change with Biuret solution indicates...",
          questionMy:
              "ဘိုင်ယူရက်ဒြပ်ရည်ဖြင့် အပြာမှ ခရမ်းရောင်သို့ ပြောင်းလဲခြင်းသည် မည်သည့်အရာကို ညွှန်ပြသနည်း။",
          optionsEn: ["Protein", "Starch", "Fat", "Water only"],
          optionsMy: ["ပရိုတင်း", "ကစီဓာတ်", "အဆီ", "ရေသာ"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 15: "Transport in Plants and Humans"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek15 = CourseWeekDef(
  id: "course-igcse-combsci-w15",
  weekNumber: 15,
  titleEn: "Transport in Plants and Humans",
  titleMy: "အပင်နှင့် လူသားများရှိ သယ်ယူပို့ဆောင်ရေးစနစ်",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w15-d1",
      dayNumber: 1,
      titleEn: "Plant and Human Transport Quiz",
      titleMy: "အပင်နှင့် လူသား သယ်ယူပို့ဆောင်ရေး ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Xylem tissue transports...",
          questionMy:
              "ဇိုင်လမ်တစ်ရွေး (Xylem) သည် မည်သည့်အရာကို သယ်ယူပို့ဆောင်သနည်း။",
          optionsEn: [
            "Water and dissolved minerals, one direction, from roots to leaves",
            "Sugars, in both directions",
            "Oxygen only",
            "Blood cells",
          ],
          optionsMy: [
            "ရေနှင့် ပျော်ဝင်သတ္တုဓာတ်များ၊ အမြစ်မှ အရွက်သို့ ဦးတည်ချက်တစ်ခုတည်း",
            "သကြားများ၊ ဦးတည်ချက်နှစ်ခုစလုံး",
            "အောက်ဆီဂျင်သာ",
            "သွေးဆဲလ်များ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Xylem is made of dead, hollow cells that form a continuous tube for water movement.",
            "Water flows in xylem in just one direction: upward, from the roots toward the leaves.",
          ],
          hintsMy: [
            "ဇိုင်လမ်သည် ရေရွေ့လျားမှုအတွက် ဆက်တိုက်ပြွန်ဖြစ်ပေါ်စေသော သေဆဲလ်များ၊ တွင်းလွှတ်ဆဲလ်များဖြင့် ပြုလုပ်ထားသည်။",
            "ရေသည် ဇိုင်လမ်တွင် ဦးတည်ချက်တစ်ခုတည်းသာ စီးဆင်းသည်: အမြစ်များမှ အရွက်များဆီသို့ အထက်သို့။",
          ],
        ),
        QuizQuestion(
          questionEn: "Phloem tissue transports...",
          questionMy:
              "ဖလိုအမ်တစ်ရွေး (Phloem) သည် မည်သည့်အရာကို သယ်ယူပို့ဆောင်သနည်း။",
          optionsEn: [
            "Dissolved sugars, in both directions",
            "Water only, one direction",
            "Air",
            "Minerals only",
          ],
          optionsMy: [
            "ပျော်ဝင်သကြားများ၊ ဦးတည်ချက်နှစ်ခုစလုံး",
            "ရေသာ၊ ဦးတည်ချက်တစ်ခုတည်း",
            "လေ",
            "သတ္တုဓာတ်များသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Phloem is made of living cells and carries sugars produced by photosynthesis to wherever they are needed.",
            "Unlike xylem's one-way flow, phloem can move sugars both up and down the plant, depending on where they are made and used.",
          ],
          hintsMy: [
            "ဖလိုအမ်သည် အသက်ရှင်သောဆဲလ်များဖြင့် ပြုလုပ်ထားပြီး အလင်းမှီစုဖွဲ့ခြင်းမှ ထုတ်လုပ်ထားသော သကြားများကို လိုအပ်ရာနေရာသို့ သယ်ဆောင်သည်။",
            "ဇိုင်လမ်၏ တစ်ဖက်စီးမှုနှင့်မတူဘဲ ဖလိုအမ်သည် သကြားများကို အပင်ပေါ်နှင့်အောက်ကို ၎င်းတို့ ဖြစ်ပေါ်ရာနှင့် အသုံးပြုရာအပေါ် မူတည်၍ ရွှေ့နိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Transpiration is best described as...",
          questionMy:
              "ရေငွေ့ပျံခြင်း (Transpiration) ကို အကောင်းဆုံးဖော်ပြရလျှင် မည်သို့ ဖော်ပြနိုင်သနည်း။",
          optionsEn: [
            "The loss of water vapour from a plant's leaves through the stomata",
            "The absorption of oxygen through the roots",
            "The movement of sugars only",
            "The production of chlorophyll",
          ],
          optionsMy: [
            "စတိုမာတာမှတစ်ဆင့် အပင်၏အရွက်များမှ ရေငွေ့အား ဆုံးရှုံးခြင်း",
            "အမြစ်များမှတစ်ဆင့် အောက်ဆီဂျင် စုပ်ယူခြင်း",
            "သကြားများ၏ ရွေ့လျားမှုသာ",
            "ကလိုရိုဖီးလ် ထုတ်လုပ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Transpiration creates a continuous pulling force that draws more water up through the xylem from the roots.",
            "Water evaporates from the leaf's surface and escapes as vapour mainly through the open stomata.",
          ],
          hintsMy: [
            "ရေငွေ့ပျံခြင်းသည် အမြစ်များမှ ဇိုင်လမ်ကိုဖြတ်၍ ရေပိုမိုဆွဲတင်ပေးသော ဆက်တိုက်ဆွဲအားတစ်ခု ဖြစ်ပေါ်စေသည်။",
            "ရေသည် အရွက်၏မျက်နှာပြင်မှ အငွေ့ပျံပြီး အဓိကအားဖြင့် ဖွင့်ထားသော စတိုမာတာများမှတစ်ဆင့် ထွက်ပြေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "The human circulatory system is described as a \"double circulation\" because blood...",
          questionMy:
              "လူ့သွေးလည်ပတ်မှုစနစ်ကို \"ကိုးလ်ဝိုင်း နှစ်ဆင့်\" (Double circulation) ဟု ဖော်ပြရသည့်အကြောင်းရင်းမှာ သွေးသည် မည်သို့ဖြစ်သောကြောင့်ဖြစ်သနည်း။",
          optionsEn: [
            "Passes through the heart twice on each complete circuit -- once to the lungs, once to the body",
            "Never returns to the heart",
            "Only travels to the lungs",
            "Is pumped by two separate hearts",
          ],
          optionsMy: [
            "ပတ်စဉ်တစ်ခုလုံးလျှင် နှလုံးကို နှစ်ကြိမ်ဖြတ်သန်းသည် -- တစ်ကြိမ်ကို အဆုတ်သို့၊ တစ်ကြိမ်ကို ခန္ဓာကိုယ်သို့",
            "နှလုံးသို့ လုံးဝ ပြန်မလာပါ",
            "အဆုတ်သို့သာ ခရီးသွားသည်",
            "နှလုံးနှစ်လုံးခွဲခြားက ပန့်ထုတ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Blood first travels from the heart to the lungs and back (pulmonary circulation), then from the heart to the body and back (systemic circulation).",
            "This passes through the heart's chambers twice per full loop, which is exactly why it is called \"double.\"",
          ],
          hintsMy: [
            "သွေးသည် ဦးစွာ နှလုံးမှ အဆုတ်သို့ ခရီးသွားပြီး ပြန်လာသည် (pulmonary circulation)၊ ထို့နောက် နှလုံးမှ ခန္ဓာကိုယ်သို့ ခရီးသွားပြီး ပြန်လာသည် (systemic circulation)။",
            "ဤသည်မှာ ပတ်စဉ်တစ်ခုလုံးအတွက် နှလုံး၏အခန်းများကို နှစ်ကြိမ်ဖြတ်သန်းခြင်းဖြစ်ပြီး ၎င်းကြောင့်ပင် \"နှစ်ဆင့်\" ဟု ခေါ်ကြခြင်းဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w15-d2",
      dayNumber: 2,
      titleEn: "Match the Transport Vocabulary",
      titleMy: "သယ်ယူပို့ဆောင်ရေးဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w15-dm-1",
          termEn: "Xylem",
          termMy: "ဇိုင်လမ် (Xylem)",
          matchEn:
              "Dead tissue carrying water and minerals one-way, from roots to leaves.",
          matchMy:
              "အမြစ်မှ အရွက်သို့ ဦးတည်ချက်တစ်ခုတည်း ရေနှင့်သတ္တုဓာတ်များ သယ်ဆောင်သော သေတစ်ရွေး။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w15-dm-2",
          termEn: "Phloem",
          termMy: "ဖလိုအမ် (Phloem)",
          matchEn:
              "Living tissue carrying dissolved sugars in both directions.",
          matchMy:
              "ဦးတည်ချက်နှစ်ခုစလုံးတွင် ပျော်ဝင်သကြားများ သယ်ဆောင်သော အသက်ရှင်တစ်ရွေး။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w15-dm-3",
          termEn: "Transpiration",
          termMy: "ရေငွေ့ပျံခြင်း (Transpiration)",
          matchEn: "The loss of water vapour from leaves through the stomata.",
          matchMy: "စတိုမာတာမှတစ်ဆင့် အရွက်များမှ ရေငွေ့အား ဆုံးရှုံးခြင်း။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w15-dm-4",
          termEn: "Artery",
          termMy: "သွေးလှောင်ကြော (Artery)",
          matchEn:
              "A thick-walled vessel carrying blood away from the heart, usually oxygenated.",
          matchMy:
              "နှလုံးမှ သွေးကို ဆောင်ယူသွားသော ထူသည့်နံရံရှိသွေးကြော၊ များသောအားဖြင့် အောက်ဆီဂျင်ပါဝင်သည်။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w15-dm-5",
          termEn: "Vein",
          termMy: "သွေးနား (Vein)",
          matchEn:
              "A vessel carrying blood back toward the heart, usually deoxygenated.",
          matchMy:
              "သွေးကို နှလုံးဆီသို့ ပြန်ဆောင်ယူသောသွေးကြော၊ များသောအားဖြင့် အောက်ဆီဂျင် ကင်းစင်သည်။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w15-d3",
      dayNumber: 3,
      titleEn: "Sort: Xylem or Phloem?",
      titleMy: "စီစစ်ကြမည် - ဇိုင်လမ် (သို့) ဖလိုအမ်",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Xylem", "Phloem"],
        bucketsMy: ["ဇိုင်လမ်", "ဖလိုအမ်"],
        items: [
          SortingItem(
            id: "igcsecs-w15-sort-1",
            labelEn: "Made of dead, hollow cells",
            labelMy: "သေဆဲလ်၊ တွင်းလွှတ်ဆဲလ်များဖြင့် ပြုလုပ်ထားသည်",
            correctBucketEn: "Xylem",
            correctBucketMy: "ဇိုင်လမ်",
          ),
          SortingItem(
            id: "igcsecs-w15-sort-2",
            labelEn: "Carries water and dissolved minerals",
            labelMy: "ရေနှင့် ပျော်ဝင်သတ္တုဓာတ်များကို သယ်ဆောင်သည်",
            correctBucketEn: "Xylem",
            correctBucketMy: "ဇိုင်လမ်",
          ),
          SortingItem(
            id: "igcsecs-w15-sort-3",
            labelEn: "Transport is one-way, upward only",
            labelMy: "သယ်ယူပို့ဆောင်မှုသည် ဦးတည်ချက်တစ်ခုတည်း၊ အထက်သို့သာ",
            correctBucketEn: "Xylem",
            correctBucketMy: "ဇိုင်လမ်",
          ),
          SortingItem(
            id: "igcsecs-w15-sort-4",
            labelEn: "Driven by transpiration pull from the leaves",
            labelMy: "အရွက်များမှ ရေငွေ့ပျံဆွဲအားဖြင့် ဖြစ်ပေါ်သည်",
            correctBucketEn: "Xylem",
            correctBucketMy: "ဇိုင်လမ်",
          ),
          SortingItem(
            id: "igcsecs-w15-sort-5",
            labelEn: "Made of living cells",
            labelMy: "အသက်ရှင်သောဆဲလ်များဖြင့် ပြုလုပ်ထားသည်",
            correctBucketEn: "Phloem",
            correctBucketMy: "ဖလိုအမ်",
          ),
          SortingItem(
            id: "igcsecs-w15-sort-6",
            labelEn: "Carries dissolved sugars produced by photosynthesis",
            labelMy:
                "အလင်းမှီစုဖွဲ့ခြင်းမှ ထုတ်လုပ်ထားသော ပျော်ဝင်သကြားများကို သယ်ဆောင်သည်",
            correctBucketEn: "Phloem",
            correctBucketMy: "ဖလိုအမ်",
          ),
          SortingItem(
            id: "igcsecs-w15-sort-7",
            labelEn: "Transport can move in both directions",
            labelMy:
                "သယ်ယူပို့ဆောင်မှုသည် ဦးတည်ချက်နှစ်ခုစလုံးတွင် ရွှေ့လျားနိုင်သည်",
            correctBucketEn: "Phloem",
            correctBucketMy: "ဖလိုအမ်",
          ),
          SortingItem(
            id: "igcsecs-w15-sort-8",
            labelEn: "This process is called translocation",
            labelMy: "ဤဖြစ်စဉ်ကို translocation ဟု ခေါ်သည်",
            correctBucketEn: "Phloem",
            correctBucketMy: "ဖလိုအမ်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w15-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiha Zaw's Celery Dye Experiment",
      titleMy: "စာဖတ်ခြင်း - သီဟဇော်၏ ခင်းစည်းရွက် အရောင်ဓာတ်ရည် စမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiha Zaw's Celery Dye Experiment",
        titleMy: "သီဟဇော်၏ ခင်းစည်းရွက် အရောင်ဓာတ်ရည် စမ်းသပ်မှု",
        passageEn:
            "To make transport in plants visible, Thiha Zaw placed a fresh stick of celery into a beaker of water dyed bright blue, and left it overnight. The next morning, he sliced across the stalk at several points along its length and examined the cut ends under a hand lens.\n\nThiha Zaw noticed thin blue lines running through the stalk in a distinct ring pattern, closer to the outer edge of the stalk than the centre. He recognised these coloured lines as the celery's xylem vessels, which had drawn the blue dye upward from the beaker along with the water, exactly as they would normally draw water from soil in a growing plant. Slicing the stalk lengthwise instead, he could trace the blue colouration running continuously from the cut base almost all the way up to the leaves.\n\nHis teacher asked him to explain why the dye moved upward rather than staying at the bottom, or moving randomly in all directions. Thiha Zaw explained this was driven by transpiration: water constantly evaporating from the leaves through open stomata created a continuous pulling force that drew more water (carrying the dye with it) up through the xylem from below, in a one-way, continuous stream from roots to leaves. He noted that if the celery's leaves had been removed before the experiment, transpiration would have been minimal, and the dye likely would have risen far more slowly.",
        passageMy:
            "အပင်များတွင် သယ်ယူပို့ဆောင်မှုကို မျက်မြင်ပြသနိုင်စေရန် သီဟဇော်သည် လတ်ဆတ်သော ခင်းစည်းရွက်ချောင်းတစ်ချောင်းကို တောက်ပသောပြာရောင်ဆိုးထားသော ရေခွက်ထဲသို့ ချထားခဲ့ပြီး တစ်ညလုံး ချန်ထားခဲ့သည်။ နောက်တစ်နေ့မနက်တွင် သူသည် ချောင်း၏ ရှည်လျားမှုတစ်လျှောက် နေရာများစွာတွင် ဖြတ်ချကာ ဖြတ်ထားသော အစွန်းများကို လက်ကိုင်မှန်ဘီလူးဖြင့် စစ်ဆေးခဲ့သည်။\n\nသီဟဇော်သည် ချောင်း၏ အလယ်ဗဟိုထက် အပြင်နားနှင့် ပိုနီးကပ်သော ထင်ရှားသောအဝိုင်းပုံစံဖြင့် ချောင်းတစ်လျှောက် ရှည်လျားသောပြာရောင်မျဉ်းများ ရွန့်ထွက်နေသည်ကို သတိပြုမိသည်။ ဤအရောင်ရှိမျဉ်းများကို ခင်းစည်းရွက်၏ ဇိုင်လမ်ပြွန်များအဖြစ် သူ ဖော်ထုတ်ခဲ့ပြီး၊ ၎င်းတို့သည် ရေခွက်မှ ပြာရောင်ဓာတ်ရည်ကို ရေနှင့်အတူ အထက်သို့ ဆွဲတင်ခဲ့ကြောင်း၊ ကြီးထွားနေသော အပင်တစ်ခုတွင် မြေဆီလွှာမှ ရေကို ပုံမှန်ဆွဲတင်ကြသကဲ့သို့ ဖြစ်ကြောင်း သိရှိခဲ့သည်။ ချောင်းကို အလျားလိုက် ဖြတ်ကြည့်ရာတွင် ပြာရောင်ဆိုးမှုသည် ဖြတ်ထားသော အောက်ခြေမှ အရွက်များအထိ နီးပါးဆက်တိုက်ရွန့်ထွက်နေသည်ကို ခြေရာခံနိုင်ခဲ့သည်။\n\nသူ၏ ဆရာမက ဓာတ်ရည်သည် အောက်ခြေတွင် ဆက်လက်ရှိနေခြင်း (သို့) ဦးတည်ချက်အားလုံးသို့ ကျပန်းရွှေ့လျားခြင်းအစား အထက်သို့ ဘာကြောင့် ရွေ့လျားခဲ့သနည်းဟု ရှင်းပြခိုင်းခဲ့သည်။ သီဟဇော်သည် ဤသည်ကို ရေငွေ့ပျံခြင်းက ဖြစ်ပေါ်စေကြောင်း ရှင်းပြခဲ့သည်: ဖွင့်ထားသော စတိုမာတာများမှတစ်ဆင့် အရွက်များမှ အစဉ်မပြတ် ရေငွေ့ပျံနေခြင်းသည် ဆက်တိုက်ဆွဲအားတစ်ခု ဖြစ်ပေါ်စေပြီး၊ ၎င်းက အောက်မှ ဇိုင်လမ်ကိုဖြတ်၍ ရေ (ဓာတ်ရည်ပါအတူ) ပိုမိုဆွဲတင်ခဲ့ပြီး၊ အမြစ်များမှ အရွက်များဆီသို့ ဦးတည်ချက်တစ်ခုတည်း ဆက်တိုက်စီးဆင်းမှုအဖြစ် ဖြစ်ပေါ်စေခဲ့သည်။ ခင်းစည်းရွက်၏ အရွက်များကို စမ်းသပ်မှု မစတင်မီ ဖယ်ရှားထားပါက ရေငွေ့ပျံခြင်း အလွန်နည်းပါးမည်ဖြစ်ပြီး ဓာတ်ရည်သည် ပိုမိုနှေးကွေးစွာသာ တက်လာနိုင်မည်ဖြစ်ကြောင်း သူ သတိပြုမိသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What structures did the blue lines in the celery stalk represent?",
            questionMy:
                "ခင်းစည်းရွက်ချောင်းရှိ ပြာရောင်မျဉ်းများသည် မည်သည့်ဖွဲ့စည်းပုံကို ကိုယ်စားပြုသနည်း။",
            optionsEn: ["Xylem vessels", "Phloem vessels", "Roots", "Stomata"],
            optionsMy: [
              "ဇိုင်လမ်ပြွန်များ",
              "ဖလိုအမ်ပြွန်များ",
              "အမြစ်များ",
              "စတိုမာတာများ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph, where Thiha Zaw identifies the coloured lines.",
              "These are the vessels that carry water upward from the roots, so they carried the dye upward too.",
            ],
            hintsMy: [
              "သီဟဇော်သည် အရောင်ရှိမျဉ်းများကို ဖော်ထုတ်ထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်တို့မှာ အမြစ်များမှ ရေကို အထက်သို့ သယ်ဆောင်သည့်ပြွန်များဖြစ်ပြီး ၎င်းတို့က ဓာတ်ရည်ကိုလည်း အထက်သို့ သယ်ဆောင်ခဲ့သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Where were the coloured lines located within the stalk?",
            questionMy:
                "အရောင်ရှိမျဉ်းများသည် ချောင်းအတွင်း မည်သည့်နေရာတွင် တည်ရှိခဲ့သနည်း။",
            optionsEn: [
              "In a ring closer to the outer edge than the centre",
              "Exactly at the very centre only",
              "Only at the very outer surface",
              "Scattered completely randomly",
            ],
            optionsMy: [
              "အလယ်ဗဟိုထက် အပြင်နားနှင့် ပိုနီးကပ်သော အဝိုင်းပုံစံ",
              "အလယ်ဗဟို အတိအကျတွင်သာ",
              "အပြင်ဆုံးမျက်နှာပြင်တွင်သာ",
              "လုံးဝကျပန်းစွာ ပျံ့ကားနေခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the ring pattern.",
              "In many stems, vascular tissue is arranged in a ring pattern nearer the outer edge.",
            ],
            hintsMy: [
              "အဝိုင်းပုံစံကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ပင်စည်အများစုတွင် ဆီးကြောတစ်ရွေး (vascular tissue) သည် အပြင်နားနှင့် ပိုနီးကပ်သော အဝိုင်းပုံစံဖြင့် စီစဉ်ထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did the dye move upward through the xylem, rather than staying at the bottom?",
            questionMy:
                "ဓာတ်ရည်သည် အောက်ခြေတွင် ဆက်လက်မနေရစ်ဘဲ ဇိုင်လမ်ကိုဖြတ်၍ အထက်သို့ အဘယ်ကြောင့် ရွေ့လျားခဲ့သနည်း။",
            optionsEn: [
              "Transpiration from the leaves created a continuous pulling force",
              "The dye was heavier than water",
              "Gravity pulled it upward",
              "The stalk was upside down",
            ],
            optionsMy: [
              "အရွက်များမှ ရေငွေ့ပျံခြင်းသည် ဆက်တိုက်ဆွဲအားတစ်ခု ဖြစ်ပေါ်စေခဲ့သောကြောင့်",
              "ဓာတ်ရည်သည် ရေထက် ပိုလေးသောကြောင့်",
              "ဆွဲငင်အားက အထက်သို့ ဆွဲတင်ခဲ့သောကြောင့်",
              "ချောင်းသည် အောက်ခြေပြန်နေခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation of transpiration pull.",
              "Water evaporating from the leaves is what creates the pulling force drawing more water (and dye) upward.",
            ],
            hintsMy: [
              "ရေငွေ့ပျံဆွဲအားကို ရှင်းပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အရွက်များမှ ရေငွေ့ပျံခြင်းသည် ရေ (နှင့် ဓာတ်ရည်) ကို အထက်သို့ ဆွဲတင်သော ဆွဲအားကို ဖြစ်ပေါ်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Thiha Zaw predict would happen if the celery's leaves had been removed before the experiment?",
            questionMy:
                "ခင်းစည်းရွက်၏ အရွက်များကို စမ်းသပ်မှု မစတင်မီ ဖယ်ရှားထားပါက မည်သို့ဖြစ်လိမ့်မည်ဟု သီဟဇော် ခန့်မှန်းခဲ့သနည်း။",
            optionsEn: [
              "Transpiration would be minimal and the dye would rise more slowly",
              "The dye would rise much faster",
              "The stalk would immediately die",
              "Nothing would change at all",
            ],
            optionsMy: [
              "ရေငွေ့ပျံခြင်း အလွန်နည်းပါးမည်ဖြစ်ပြီး ဓာတ်ရည် ပိုမိုနှေးကွေးစွာသာ တက်လာမည်",
              "ဓာတ်ရည် အလွန်ပိုမြန်စွာ တက်လာမည်",
              "ချောင်းသည် ချက်ချင်း သေသွားမည်",
              "မည်သည့်အရာမျှ လုံးဝ မပြောင်းလဲပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Without leaves, there are no stomata left to transpire through, so the pulling force weakens greatly.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အရွက်များ မရှိတော့ပါက ရေငွေ့ပျံနိုင်သည့် စတိုမာတာများ မကျန်တော့ဘဲ ဆွဲအား အလွန်အားနည်းသွားသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w15-d5",
      dayNumber: 5,
      titleEn: "Week 15 Recap: Transport in Plants and Humans",
      titleMy:
          "အပတ်စဉ် ၁၅ ပြန်လည်သုံးသပ်ခြင်း - အပင်နှင့် လူသားများရှိ သယ်ယူပို့ဆောင်ရေးစနစ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Xylem transports water in which direction?",
          questionMy: "ဇိုင်လမ်သည် ရေကို မည်သည့်ဦးတည်ချက်ဖြင့် သယ်ဆောင်သနည်း။",
          optionsEn: [
            "One-way, upward from roots to leaves",
            "Both directions",
            "Downward only",
            "It does not transport water",
          ],
          optionsMy: [
            "ဦးတည်ချက်တစ်ခုတည်း၊ အမြစ်မှ အရွက်သို့ အထက်သို့",
            "ဦးတည်ချက်နှစ်ခုစလုံး",
            "အောက်သို့သာ",
            "ရေကို မသယ်ဆောင်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Phloem carries...",
          questionMy: "ဖလိုအမ်သည် မည်သည့်အရာကို သယ်ဆောင်သနည်း။",
          optionsEn: ["Dissolved sugars", "Water only", "Air only", "Blood"],
          optionsMy: ["ပျော်ဝင်သကြားများ", "ရေသာ", "လေသာ", "သွေး"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Transpiration is the loss of water vapour from leaves through the...",
          questionMy:
              "ရေငွေ့ပျံခြင်းသည် အရွက်များမှ ရေငွေ့ကို မည်သည့်နေရာမှတစ်ဆင့် ဆုံးရှုံးခြင်းဖြစ်သနည်း။",
          optionsEn: ["Stomata", "Xylem only", "Roots", "Petals"],
          optionsMy: ["စတိုမာတာ", "ဇိုင်လမ်သာ", "အမြစ်", "ပန်းရွက်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "The human circulatory system is called \"double circulation\" because blood passes through the heart...",
          questionMy:
              "လူ့သွေးလည်ပတ်မှုစနစ်ကို \"ကိုးလ်ဝိုင်း နှစ်ဆင့်\" ဟု ခေါ်ရသည့်အကြောင်းရင်းမှာ သွေးသည် နှလုံးကို မည်သို့ ဖြတ်သန်းသောကြောင့်ဖြစ်သနည်း။",
          optionsEn: [
            "Twice per full circuit",
            "Once per full circuit",
            "Never",
            "Four times per full circuit",
          ],
          optionsMy: [
            "ပတ်စဉ်တစ်ခုလျှင် နှစ်ကြိမ်",
            "ပတ်စဉ်တစ်ခုလျှင် တစ်ကြိမ်",
            "လုံးဝ မဖြတ်သန်းပါ",
            "ပတ်စဉ်တစ်ခုလျှင် လေးကြိမ်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 16 (Capstone): "Plant & Human Physiology Studio"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek16 = CourseWeekDef(
  id: "course-igcse-combsci-w16",
  weekNumber: 16,
  titleEn: "Plant & Human Physiology Studio",
  titleMy: "အပင်နှင့် လူ့ဇီဝကမ္မဗေဒ အလုပ်ရုံ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w16-d1",
      dayNumber: 1,
      titleEn: "Transpiration and Heart Rate Investigations Quiz",
      titleMy:
          "ရေငွေ့ပျံခြင်းနှင့် နှလုံးခုန်နှုန်း စမ်းသပ်လေ့လာမှုများ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A potometer is used to measure...",
          questionMy:
              "ပိုတိုမီတာ (Potometer) ကို မည်သည့်အရာကို တိုင်းတာရန် အသုံးပြုသနည်း။",
          optionsEn: [
            "The rate of water uptake by a cut shoot, as an estimate of transpiration rate",
            "Heart rate directly",
            "Photosynthesis rate only",
            "Air pressure only",
          ],
          optionsMy: [
            "ဖြတ်ထားသော အညွန့်တစ်ခု၏ ရေစုပ်ယူနှုန်း၊ ရေငွေ့ပျံနှုန်း ခန့်မှန်းချက်အနေဖြင့်",
            "နှလုံးခုန်နှုန်းကို တိုက်ရိုက်",
            "အလင်းမှီစုဖွဲ့ခြင်းနှုန်းသာ",
            "လေဖိအားသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Since most water taken up by a shoot is eventually lost through transpiration, water uptake rate closely estimates transpiration rate.",
            "A potometer contains a bubble that moves along a scaled tube as the shoot draws in water.",
          ],
          hintsMy: [
            "အညွန့်တစ်ခုက စုပ်ယူသောရေအများစုသည် နောက်ဆုံးတွင် ရေငွေ့ပျံခြင်းဖြင့် ဆုံးရှုံးသောကြောင့် ရေစုပ်ယူနှုန်းသည် ရေငွေ့ပျံနှုန်းကို နီးကပ်စွာ ခန့်မှန်းပေးသည်။",
            "ပိုတိုမီတာတွင် အညွန့်ရေစုပ်ယူသည့်အခါ စကေးတပ်ထားသော ပြွန်တစ်လျှောက် ရွေ့လျားသော ပူဖောင်းငယ်တစ်ခု ပါဝင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these environmental conditions would increase the rate of transpiration?",
          questionMy:
              "အောက်ပါ ပတ်ဝန်းကျင်အခြေအနေများအနက် ရေငွေ့ပျံနှုန်းကို တိုးမြှင့်ပေးမည့်အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "High temperature, low humidity, and windy conditions",
            "Low temperature, high humidity, and still air",
            "Complete darkness with no wind",
            "Freezing temperatures only",
          ],
          optionsMy: [
            "မြင့်မားသောအပူချိန်၊ နိမ့်သောစိုထိုင်းဆနှင့် လေတိုက်နေသောအခြေအနေ",
            "နိမ့်သောအပူချိန်၊ မြင့်သောစိုထိုင်းဆနှင့် ငြိမ်သက်သောလေ",
            "လေမတိုက်ဘဲ လုံးဝမှောင်နေခြင်း",
            "အေးခဲသောအပူချိန်သာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Heat, wind, and dry air all speed up evaporation of water from the leaf surface.",
            "Humid, still, cool conditions slow evaporation, since the surrounding air is already close to saturated with water vapour.",
          ],
          hintsMy: [
            "အပူ၊ လေနှင့် ခြောက်သွေ့သောလေထုသည် အရွက်မျက်နှာပြင်မှ ရေငွေ့ပျံမှုကို ပိုမြန်စေသည်။",
            "စိုစိုထိုင်းထိုင်း၊ ငြိမ်သက်ပြီး အေးမြသောအခြေအနေများသည် ငွေ့ပျံမှုကို နှေးကွေးစေသည်၊ အဘယ်ကြောင့်ဆိုသော် ပတ်ဝန်းကျင်လေထုသည် ရေငွေ့ဖြင့် ပြည့်ဝပြီးဖြစ်နေသောကြောင့်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "During exercise, why does heart rate typically increase?",
          questionMy:
              "ကိုယ်လက်လှုပ်ရှားမှုအတွင်း နှလုံးခုန်နှုန်းသည် များသောအားဖြင့် အဘယ်ကြောင့် တိုးလာသနည်း။",
          optionsEn: [
            "Muscles need more oxygen and glucose delivered faster, and more carbon dioxide removed faster",
            "The heart randomly speeds up for no reason",
            "Blood stops flowing during exercise",
            "Exercise decreases the body's need for oxygen",
          ],
          optionsMy: [
            "ကြွက်သားများသည် ဓာတ်အောက်ဆီဂျင်နှင့် ဂလူးကို့စ် ပိုမိုလျင်မြန်စွာ ရရှိရန်နှင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို ပိုမိုလျင်မြန်စွာ ဖယ်ရှားရန် လိုအပ်သောကြောင့်",
            "နှလုံးသည် အကြောင်းမဲ့ ကျပန်းမြန်လာခြင်းဖြစ်သောကြောင့်",
            "ကိုယ်လက်လှုပ်ရှားမှုအတွင်း သွေးစီးဆင်းမှု ရပ်တန့်သောကြောင့်",
            "ကိုယ်လက်လှုပ်ရှားမှုက ခန္ဓာကိုယ်၏ ဓာတ်အောက်ဆီဂျင်လိုအပ်ချက်ကို လျော့ချသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Exercising muscles respire faster, using up more oxygen and glucose and producing more carbon dioxide as waste.",
            "A faster heart rate pumps blood around the body more quickly, delivering and removing these substances faster.",
          ],
          hintsMy: [
            "ကိုယ်လက်လှုပ်ရှားနေသော ကြွက်သားများသည် ပိုမြန်စွာ အသက်ရှုပြီး ဓာတ်အောက်ဆီဂျင်နှင့် ဂလူးကို့စ် ပိုမိုအသုံးပြုကာ ကာဗွန်ဒိုင်အောက်ဆိုဒ် စွန့်ပစ်ပစ္စည်းအဖြစ် ပိုမိုထုတ်လုပ်သည်။",
            "ပိုမြန်သော နှလုံးခုန်နှုန်းသည် ခန္ဓာကိုယ်ပတ်လည်သို့ သွေးကို ပိုမိုလျင်မြန်စွာ ပန့်ပို့ပေးပြီး ဤပစ္စည်းများကို ပိုမိုလျင်မြန်စွာ ပို့ဆောင်/ဖယ်ရှားပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "When synthesising data from two separate investigations (transpiration and heart rate), why is it important to check for anomalous results in each?",
          questionMy:
              "သီးခြားစမ်းသပ်လေ့လာမှုနှစ်ခု (ရေငွေ့ပျံခြင်းနှင့် နှလုံးခုန်နှုန်း) မှ ဒေတာများကို ပေါင်းစပ်ခွဲခြမ်းစိတ်ဖြာသောအခါ တစ်ခုစီတွင် ပုံမှန်မဟုတ်သောရလဒ်များကို အဘယ်ကြောင့် စစ်ဆေးရန် အရေးကြီးသနည်း။",
          optionsEn: [
            "So the overall conclusion is not skewed by a single unreliable reading in either data set",
            "Because anomalous results should always be included without question",
            "Because it is not actually necessary to check either data set",
            "Because only the transpiration data needs checking",
          ],
          optionsMy: [
            "ဒေတာအစုံနှစ်ခုစလုံးမှ ယုံကြည်စိတ်မချရသော ဖတ်ချက်တစ်ခုတည်းက စုစုပေါင်းကောက်ချက်ကို မလွဲမှားစေရန်",
            "ပုံမှန်မဟုတ်သောရလဒ်များကို မေးခွန်းမထုတ်ဘဲ အမြဲတမ်း ထည့်သွင်းရမည်ဖြစ်သောကြောင့်",
            "ဒေတာအစုံနှစ်ခုလုံးကို စစ်ဆေးရန် အမှန်တကယ် မလိုအပ်သောကြောင့်",
            "ရေငွေ့ပျံခြင်းဒေတာကိုသာ စစ်ဆေးရန် လိုအပ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "When combining evidence from multiple sources, a single unreliable value in any source can distort the final conclusion.",
            "This is the same principle applied at a larger scale when synthesising data across a whole investigation.",
          ],
          hintsMy: [
            "အရင်းအမြစ်များစွာမှ သက်သေအထောက်အထားများကို ပေါင်းစပ်သောအခါ မည်သည့်အရင်းအမြစ်မှမဆို ယုံကြည်စိတ်မချရသော တန်ဖိုးတစ်ခုက နောက်ဆုံးကောက်ချက်ကို လွဲမှားစေနိုင်သည်။",
            "ဤသည်မှာ စမ်းသပ်လေ့လာမှုတစ်ခုလုံးကို ပေါင်းစပ်ခွဲခြမ်းစိတ်ဖြာသောအခါ ပိုကြီးသောအတိုင်းအတာဖြင့် အသုံးချထားသော မူတစ်ခုတည်းဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w16-d2",
      dayNumber: 2,
      titleEn: "Match the Physiology Investigation Vocabulary",
      titleMy:
          "ဇီဝကမ္မဗေဒစမ်းသပ်လေ့လာမှုဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w16-dm-1",
          termEn: "Potometer",
          termMy: "ပိုတိုမီတာ (Potometer)",
          matchEn:
              "A device that estimates transpiration rate by measuring water uptake.",
          matchMy:
              "ရေစုပ်ယူမှုကို တိုင်းတာခြင်းဖြင့် ရေငွေ့ပျံနှုန်းကို ခန့်မှန်းပေးသော ကိရိယာ။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w16-dm-2",
          termEn: "Transpiration Rate",
          termMy: "ရေငွေ့ပျံနှုန်း (Transpiration Rate)",
          matchEn: "How quickly a plant loses water vapour from its leaves.",
          matchMy:
              "အပင်တစ်ခုသည် ၎င်း၏အရွက်များမှ ရေငွေ့ကို မည်မျှလျင်မြန်စွာ ဆုံးရှုံးကြောင်း။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w16-dm-3",
          termEn: "Pulse Rate",
          termMy: "သွေးခုန်နှုန်း (Pulse Rate)",
          matchEn:
              "The number of times an artery pulses per minute, reflecting heart rate.",
          matchMy:
              "နှလုံးခုန်နှုန်းကို ထင်ဟပ်စေသော တစ်မိနစ်လျှင် သွေးလှောင်ကြောခုန်ခတ်သည့် အကြိမ်ရေ။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w16-dm-4",
          termEn: "Cardiac Output",
          termMy: "နှလုံးထွက်ရှိနှုန်း (Cardiac Output)",
          matchEn: "The volume of blood the heart pumps per minute.",
          matchMy: "နှလုံးက တစ်မိနစ်လျှင် ပန့်ထုတ်ပေးသော သွေးပမာဏ။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w16-dm-5",
          termEn: "Anomalous Result",
          termMy: "ပုံမှန်မဟုတ်သောရလဒ် (Anomalous Result)",
          matchEn:
              "A reading that does not fit the general pattern of the rest of the data.",
          matchMy: "ကျန်ဒေတာများ၏ ယေဘုယျပုံစံနှင့် မကိုက်ညီသော ဖတ်ချက်တစ်ခု။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w16-d3",
      dayNumber: 3,
      titleEn: "Sort: Increases or Decreases Transpiration Rate?",
      titleMy: "စီစစ်ကြမည် - ရေငွေ့ပျံနှုန်းကို တိုးစေလား၊ လျော့စေလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Increases Transpiration Rate",
          "Decreases Transpiration Rate",
        ],
        bucketsMy: [
          "ရေငွေ့ပျံနှုန်းကို တိုးစေသည်",
          "ရေငွေ့ပျံနှုန်းကို လျော့စေသည်",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w16-sort-1",
            labelEn: "High temperature",
            labelMy: "မြင့်မားသောအပူချိန်",
            correctBucketEn: "Increases Transpiration Rate",
            correctBucketMy: "ရေငွေ့ပျံနှုန်းကို တိုးစေသည်",
          ),
          SortingItem(
            id: "igcsecs-w16-sort-2",
            labelEn: "Strong wind",
            labelMy: "ပြင်းထန်သောလေ",
            correctBucketEn: "Increases Transpiration Rate",
            correctBucketMy: "ရေငွေ့ပျံနှုန်းကို တိုးစေသည်",
          ),
          SortingItem(
            id: "igcsecs-w16-sort-3",
            labelEn: "Low humidity (dry air)",
            labelMy: "နိမ့်သောစိုထိုင်းဆ (ခြောက်သွေ့သောလေထု)",
            correctBucketEn: "Increases Transpiration Rate",
            correctBucketMy: "ရေငွေ့ပျံနှုန်းကို တိုးစေသည်",
          ),
          SortingItem(
            id: "igcsecs-w16-sort-4",
            labelEn: "Bright light causing stomata to open wider",
            labelMy: "တောက်ပသောအလင်းက စတိုမာတာများကို ပိုမိုကျယ်ဖွင့်စေခြင်း",
            correctBucketEn: "Increases Transpiration Rate",
            correctBucketMy: "ရေငွေ့ပျံနှုန်းကို တိုးစေသည်",
          ),
          SortingItem(
            id: "igcsecs-w16-sort-5",
            labelEn: "High humidity",
            labelMy: "မြင့်သောစိုထိုင်းဆ",
            correctBucketEn: "Decreases Transpiration Rate",
            correctBucketMy: "ရေငွေ့ပျံနှုန်းကို လျော့စေသည်",
          ),
          SortingItem(
            id: "igcsecs-w16-sort-6",
            labelEn: "Still, calm air",
            labelMy: "ငြိမ်သက်သောလေ",
            correctBucketEn: "Decreases Transpiration Rate",
            correctBucketMy: "ရေငွေ့ပျံနှုန်းကို လျော့စေသည်",
          ),
          SortingItem(
            id: "igcsecs-w16-sort-7",
            labelEn: "Low temperature",
            labelMy: "နိမ့်သောအပူချိန်",
            correctBucketEn: "Decreases Transpiration Rate",
            correctBucketMy: "ရေငွေ့ပျံနှုန်းကို လျော့စေသည်",
          ),
          SortingItem(
            id: "igcsecs-w16-sort-8",
            labelEn: "Darkness causing stomata to close",
            labelMy: "မှောင်ခြင်းက စတိုမာတာများကို ပိတ်စေခြင်း",
            correctBucketEn: "Decreases Transpiration Rate",
            correctBucketMy: "ရေငွေ့ပျံနှုန်းကို လျော့စေသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w16-d4",
      dayNumber: 4,
      titleEn: "Reading: Yamin Thu's Combined Physiology Report",
      titleMy: "စာဖတ်ခြင်း - ရာမင်းသူ၏ ပေါင်းစပ် ဇီဝကမ္မဗေဒအစီရင်ခံစာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Yamin Thu's Combined Physiology Report",
        titleMy: "ရာမင်းသူ၏ ပေါင်းစပ် ဇီဝကမ္မဗေဒအစီရင်ခံစာ",
        passageEn:
            "For the term's final capstone, Yamin Thu combined two separate investigations -- a potometer transpiration study and a heart-rate exercise study -- into a single report comparing how both plants and humans respond to changing conditions in physiologically similar ways.\n\nFor the transpiration study, Yamin Thu recorded water uptake at five different wind speeds, finding the rate increased steadily as wind speed rose, consistent with wind removing water vapour from around the leaf faster and maintaining a steeper concentration gradient for evaporation. One reading at the second-highest wind speed stood out as unusually low compared to the clear increasing trend of the rest, and Yamin Thu flagged it as a likely anomalous result caused by an air bubble entering the potometer tube, excluding it from her final trend line.\n\nFor the heart-rate study, Yamin Thu measured a classmate's pulse at rest and then immediately after one minute of star jumps, repeating the measurement three times and averaging the results to improve reliability. She found pulse rate roughly doubled after exercise, explaining that exercising muscles needed oxygen and glucose delivered faster and carbon dioxide removed faster, so the heart pumped more quickly to meet this demand.\n\nComparing her two investigations in her final write-up, Yamin Thu drew a connection her teacher praised: both systems responded to increased demand by speeding up transport -- transpiration speeding up water movement through the xylem when evaporation demand rose, and heart rate speeding up blood movement through the circulatory system when the muscles' oxygen demand rose. She noted that in both investigations, checking for anomalous results and taking repeat readings had been essential to trusting the final trend, exactly the kind of practical rigor a real IGCSE data-response question would expect.",
        passageMy:
            "ထိုနှစ်ဝက်၏ နောက်ဆုံးစီမံကိန်းအတွက် ရာမင်းသူသည် သီးခြားစမ်းသပ်လေ့လာမှုနှစ်ခု -- ပိုတိုမီတာ ရေငွေ့ပျံလေ့လာမှုနှင့် နှလုံးခုန်နှုန်း ကိုယ်လက်လှုပ်ရှားမှုလေ့လာမှု -- တို့ကို အပင်များနှင့် လူသားများ ပတ်ဝန်းကျင်ပြောင်းလဲမှုအပေါ် ဇီဝကမ္မဗေဒနည်းတူညီစွာ မည်သို့တုံ့ပြန်ကြောင်း နှိုင်းယှဉ်သော အစီရင်ခံစာတစ်စောင်တည်းအဖြစ် ပေါင်းစပ်ခဲ့သည်။\n\nရေငွေ့ပျံလေ့လာမှုအတွက် ရာမင်းသူသည် မတူညီသော လေအမြန်နှုန်းငါးမျိုးရှိ ရေစုပ်ယူမှုကို မှတ်တမ်းတင်ခဲ့ပြီး၊ လေအမြန်နှုန်း တက်လာသည်နှင့်အမျှ နှုန်း တစိုက်မတ်မတ် တိုးလာသည်ကို တွေ့ရှိခဲ့သည်၊ ၎င်းသည် လေက အရွက်ပတ်လည်မှ ရေငွေ့ကို ပိုမိုလျင်မြန်စွာ ဖယ်ရှားပြီး ငွေ့ပျံမှုအတွက် ပိုစောင်းသော ပြင်းအားစီးကြောင်းကို ထိန်းသိမ်းပေးသောကြောင့် ကိုက်ညီသည်။ ဒုတိယအမြင့်ဆုံးလေအမြန်နှုန်းရှိ ဖတ်ချက်တစ်ခုသည် ကျန်ရလဒ်များ၏ ရှင်းလင်းသော တိုးလာသည့်လမ်းကြောင်းနှင့် နှိုင်းယှဉ်ပါက ထူးထူးခြားခြား နိမ့်နေသည်ကို တွေ့ရှိခဲ့ပြီး၊ ရာမင်းသူသည် ၎င်းကို ပိုတိုမီတာပြွန်ထဲသို့ လေပူဖောင်းတစ်ခု ဝင်ရောက်ခြင်းကြောင့် ဖြစ်နိုင်ချေရှိသော ပုံမှန်မဟုတ်သောရလဒ်အဖြစ် အမှတ်ခြစ်ကာ ၎င်း၏ နောက်ဆုံးလမ်းကြောင်းမှ ဖယ်ထုတ်ခဲ့သည်။\n\nနှလုံးခုန်နှုန်းလေ့လာမှုအတွက် ရာမင်းသူသည် အတန်းဖော်တစ်ဦး၏ သွေးခုန်နှုန်းကို နားနေချိန်နှင့် ကြယ်ခုန်လေ့ကျင့်ခန်း တစ်မိနစ်ပြီးချက်ချင်း တိုင်းတာခဲ့ပြီး၊ ယုံကြည်စိတ်ချရမှုတိုးမြှင့်ရန် တိုင်းတာမှုကို သုံးကြိမ်ထပ်ခါလုပ်ကာ ရလဒ်များကို ပျမ်းမျှတွက်ချက်ခဲ့သည်။ သွေးခုန်နှုန်းသည် ကိုယ်လက်လှုပ်ရှားပြီးနောက် ခန့်မှန်းချေ နှစ်ဆတိုးလာသည်ကို တွေ့ရှိခဲ့ပြီး၊ ကိုယ်လက်လှုပ်ရှားနေသော ကြွက်သားများသည် ဓာတ်အောက်ဆီဂျင်နှင့် ဂလူးကို့စ် ပိုမိုလျင်မြန်စွာ ရရှိရန်နှင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို ပိုမိုလျင်မြန်စွာ ဖယ်ရှားရန် လိုအပ်သောကြောင့် နှလုံးသည် ဤလိုအပ်ချက်ကို ဖြည့်ဆည်းရန် ပိုမြန်စွာ ပန့်ထုတ်ခဲ့ကြောင်း ရှင်းပြခဲ့သည်။\n\nသူမ၏ နောက်ဆုံးအစီရင်ခံစာတွင် စမ်းသပ်လေ့လာမှုနှစ်ခုကို နှိုင်းယှဉ်ကြည့်ရာ ရာမင်းသူသည် ဆရာမက ချီးကျူးခဲ့သော ဆက်စပ်မှုတစ်ခုကို ဆွဲထုတ်ခဲ့သည်: စနစ်နှစ်ခုစလုံးသည် သယ်ယူပို့ဆောင်မှုကို မြန်စေခြင်းဖြင့် တိုးလာသော လိုအပ်ချက်ကို တုံ့ပြန်ခဲ့သည် -- ငွေ့ပျံမှုလိုအပ်ချက် တိုးလာသောအခါ ရေငွေ့ပျံခြင်းက ဇိုင်လမ်ကိုဖြတ်သည့် ရေရွေ့လျားမှုကို မြန်စေပြီး၊ ကြွက်သားများ၏ ဓာတ်အောက်ဆီဂျင်လိုအပ်ချက် တိုးလာသောအခါ နှလုံးခုန်နှုန်းက သွေးလည်ပတ်မှုစနစ်ကိုဖြတ်သည့် သွေးရွေ့လျားမှုကို မြန်စေသည်။ စမ်းသပ်လေ့လာမှုနှစ်ခုစလုံးတွင် ပုံမှန်မဟုတ်သောရလဒ်များကို စစ်ဆေးခြင်းနှင့် ထပ်ခါထပ်ခါဖတ်ချက်များယူခြင်းသည် နောက်ဆုံးလမ်းကြောင်းကို ယုံကြည်ရန် မရှိမဖြစ်လိုအပ်ခဲ့ကြောင်း၊ ၎င်းသည် တကယ့် IGCSE ဒေတာတုံ့ပြန်မေးခွန်းတစ်ခုက မျှော်လင့်သည့် လက်တွေ့ကျသော တိကျမှုအမျိုးအစားအတိအကျဖြစ်ကြောင်း သူမ သတိပြုမိသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "How did Yamin Thu's transpiration data change as wind speed increased?",
            questionMy:
                "လေအမြန်နှုန်းတိုးလာသည်နှင့်အမျှ ရာမင်းသူ၏ ရေငွေ့ပျံဒေတာသည် မည်သို့ ပြောင်းလဲခဲ့သနည်း။",
            optionsEn: [
              "It increased steadily",
              "It decreased steadily",
              "It stayed exactly the same",
              "It became zero immediately",
            ],
            optionsMy: [
              "တစိုက်မတ်မတ် တိုးလာသည်",
              "တစိုက်မတ်မတ် လျော့ကျလာသည်",
              "အတိအကျ တူညီနေဆဲဖြစ်သည်",
              "ချက်ချင်း သုညဖြစ်သွားသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the transpiration results.",
              "Wind removes water vapour from around the leaf faster, so it speeds up transpiration.",
            ],
            hintsMy: [
              "ရေငွေ့ပျံရလဒ်များကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "လေသည် အရွက်ပတ်လည်မှ ရေငွေ့ကို ပိုမိုလျင်မြန်စွာ ဖယ်ရှားသောကြောင့် ရေငွေ့ပျံမှုကို မြန်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What did Yamin Thu think caused the unusually low reading at the second-highest wind speed?",
            questionMy:
                "ဒုတိယအမြင့်ဆုံးလေအမြန်နှုန်းရှိ ထူးထူးခြားခြားနိမ့်နေသောဖတ်ချက်ကို မည်သည့်အရာက ဖြစ်ပေါ်စေသည်ဟု ရာမင်းသူ ထင်ခဲ့သနည်း။",
            optionsEn: [
              "An air bubble entering the potometer tube",
              "The wind stopping completely",
              "A calculation error only",
              "The plant dying suddenly",
            ],
            optionsMy: [
              "ပိုတိုမီတာပြွန်ထဲသို့ လေပူဖောင်းတစ်ခု ဝင်ရောက်ခြင်း",
              "လေ လုံးဝ ရပ်တန့်ခြင်း",
              "တွက်ချက်မှုအမှားသာ",
              "အပင် ရုတ်တရက် သေဆုံးခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation of the anomalous reading.",
              "An air bubble in a potometer tube is a common, realistic cause of an unreliable reading.",
            ],
            hintsMy: [
              "ပုံမှန်မဟုတ်သောဖတ်ချက်ကို ရှင်းပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ပိုတိုမီတာပြွန်ထဲရှိ လေပူဖောင်းသည် ယုံကြည်စိတ်မချရသောဖတ်ချက်၏ ဖြစ်တတ်သော အကြောင်းရင်းတစ်ခု ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Yamin Thu repeat the pulse measurement three times and average the results?",
            questionMy:
                "ရာမင်းသူသည် သွေးခုန်နှုန်းတိုင်းတာမှုကို သုံးကြိမ်ထပ်ခါလုပ်ပြီး ရလဒ်များကို အဘယ်ကြောင့် ပျမ်းမျှတွက်ချက်ခဲ့သနည်း။",
            optionsEn: [
              "To improve reliability by reducing the effect of any one anomalous reading",
              "Because a single reading is always completely accurate",
              "Because repeating is required by law",
              "To make the classmate's heart rate increase further",
            ],
            optionsMy: [
              "ပုံမှန်မဟုတ်သောဖတ်ချက်တစ်ခု၏ သက်ရောက်မှုကို လျှော့ချ၍ ယုံကြည်စိတ်ချရမှုကို တိုးမြှင့်ရန်",
              "ဖတ်ချက်တစ်ခုတည်းသည် အမြဲတမ်း လုံးဝတိကျသောကြောင့်",
              "ထပ်ခါထပ်ခါလုပ်ခြင်းသည် ဥပဒေအရ လိုအပ်သောကြောင့်",
              "အတန်းဖော်၏ နှလုံးခုန်နှုန်းကို ထပ်မံတိုးလာစေရန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of her method.",
              "This is the same repeat-and-average principle used in every other practical investigation this term.",
            ],
            hintsMy: [
              "သူမ၏ နည်းလမ်းကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ ထိုနှစ်ဝက်အတွင်း အခြားလက်တွေ့စမ်းသပ်လေ့လာမှုတိုင်းတွင် အသုံးပြုခဲ့သော ထပ်ခါလုပ်ပြီး ပျမ်းမျှတွက်ချက်ခြင်းမူတစ်ခုတည်းဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What connection did Yamin Thu draw between the two investigations in her final write-up?",
            questionMy:
                "သူမ၏ နောက်ဆုံးအစီရင်ခံစာတွင် ရာမင်းသူသည် စမ်းသပ်လေ့လာမှုနှစ်ခုကြား မည်သည့်ဆက်စပ်မှုကို ဆွဲထုတ်ခဲ့သနည်း။",
            optionsEn: [
              "Both systems responded to increased demand by speeding up transport",
              "Neither system responds to changing conditions at all",
              "Only the plant's transport system changes with conditions",
              "Heart rate and transpiration rate are completely unrelated concepts with no similarity",
            ],
            optionsMy: [
              "စနစ်နှစ်ခုစလုံးသည် သယ်ယူပို့ဆောင်မှုကို မြန်စေခြင်းဖြင့် တိုးလာသောလိုအပ်ချက်ကို တုံ့ပြန်ခဲ့သည်",
              "စနစ်မည်သည်မှ ပြောင်းလဲနေသောအခြေအနေများကို လုံးဝ မတုံ့ပြန်ပါ",
              "အပင်၏ သယ်ယူပို့ဆောင်ရေးစနစ်သာ အခြေအနေများနှင့်အတူ ပြောင်းလဲသည်",
              "နှလုံးခုန်နှုန်းနှင့် ရေငွေ့ပျံနှုန်းသည် ဆင်တူမှု လုံးဝမရှိသော လုံးဝမသက်ဆိုင်သည့်အယူအဆများ ဖြစ်ကြသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final paragraph.",
              "Both transpiration and heart rate speed up their respective transport systems when demand for that transport increases.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးအပိုဒ်တွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ရေငွေ့ပျံခြင်းနှင့် နှလုံးခုန်နှုန်းနှစ်ခုစလုံးသည် ၎င်းတို့၏ သယ်ယူပို့ဆောင်ရေးလိုအပ်ချက် တိုးလာသောအခါ ၎င်းတို့ဆိုင်ရာ သယ်ယူပို့ဆောင်ရေးစနစ်များကို မြန်စေကြသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w16-d5",
      dayNumber: 5,
      titleEn: "Term 4 Recap: Plant and Human Nutrition",
      titleMy: "စတုတ္ထနှစ်ဝက် ပြန်လည်သုံးသပ်ခြင်း - အပင်နှင့် လူသားအာဟာရ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Photosynthesis produces glucose and...",
          questionMy:
              "အလင်းမှီစုဖွဲ့ခြင်းသည် ဂလူးကို့စ်နှင့် မည်သည့်အရာကို ထုတ်လုပ်သနည်း။",
          optionsEn: [
            "Oxygen",
            "Nitrogen",
            "Carbon dioxide only",
            "Sugar only, nothing else",
          ],
          optionsMy: [
            "အောက်ဆီဂျင်",
            "နိုက်ထရိုဂျင်",
            "ကာဗွန်ဒိုင်အောက်ဆိုဒ်သာ",
            "သကြားသာ၊ အခြားမည်သည့်အရာမျှ မရှိပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Amylase, protease, and lipase are all types of...",
          questionMy:
              "အမိုင်လေ့စ်၊ ပရိုတီးဇ်နှင့် လိပ်ပေ့စ်တို့သည် မည်သည့်အမျိုးအစားများဖြစ်သနည်း။",
          optionsEn: [
            "Digestive enzymes",
            "Types of xylem",
            "Blood cells",
            "Hormones only",
          ],
          optionsMy: [
            "အစာခြေဖျက်အင်ဇိုင်းများ",
            "ဇိုင်လမ်အမျိုးအစားများ",
            "သွေးဆဲလ်များ",
            "ဟော်မုန်းများသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Xylem transports water; phloem transports...",
          questionMy:
              "ဇိုင်လမ်သည် ရေကို သယ်ဆောင်သည်; ဖလိုအမ်သည် မည်သည့်အရာကို သယ်ဆောင်သနည်း။",
          optionsEn: ["Dissolved sugars", "Oxygen only", "Blood", "Nothing"],
          optionsMy: [
            "ပျော်ဝင်သကြားများ",
            "အောက်ဆီဂျင်သာ",
            "သွေး",
            "မည်သည့်အရာမျှ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A potometer estimates...",
          questionMy: "ပိုတိုမီတာသည် မည်သည့်အရာကို ခန့်မှန်းပေးသနည်း။",
          optionsEn: [
            "Transpiration rate",
            "Heart rate directly",
            "Photosynthesis rate",
            "Blood pressure",
          ],
          optionsMy: [
            "ရေငွေ့ပျံနှုန်း",
            "နှလုံးခုန်နှုန်းကို တိုက်ရိုက်",
            "အလင်းမှီစုဖွဲ့ခြင်းနှုန်း",
            "သွေးပေါင်ချိန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "During exercise, heart rate increases mainly to...",
          questionMy:
              "ကိုယ်လက်လှုပ်ရှားမှုအတွင်း နှလုံးခုန်နှုန်းသည် အဓိကအားဖြင့် မည်သည့်အတွက် တိုးလာသနည်း။",
          optionsEn: [
            "Deliver oxygen and glucose faster, and remove carbon dioxide faster",
            "Slow down blood flow",
            "Stop transpiration",
            "Reduce oxygen supply to muscles",
          ],
          optionsMy: [
            "ဓာတ်အောက်ဆီဂျင်နှင့် ဂလူးကို့စ် ပိုမိုလျင်မြန်စွာ ပို့ဆောင်ပြီး ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို ပိုမိုလျင်မြန်စွာ ဖယ်ရှားရန်",
            "သွေးစီးဆင်းမှုကို နှေးကွေးစေရန်",
            "ရေငွေ့ပျံခြင်းကို ရပ်တန့်စေရန်",
            "ကြွက်သားများသို့ ဓာတ်အောက်ဆီဂျင်ပေးပို့မှုကို လျော့ချရန်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 4: "Biology - Plant and Human Nutrition" (Weeks 13-16)
// =====================================================================

const CourseTermDef igcseCombinedScienceTerm4 = CourseTermDef(
  id: "course-igcse-combsci-t4",
  termNumber: 4,
  titleEn: "Plant and Human Nutrition",
  titleMy: "အပင်နှင့် လူသားအာဟာရ",
  certificateTitleEn: "Plant and Human Nutrition",
  certificateTitleMy: "အပင်နှင့် လူသားအာဟာရ",
  weeks: [
    _igcseCombSciWeek13,
    _igcseCombSciWeek14,
    _igcseCombSciWeek15,
    _igcseCombSciWeek16,
  ],
);
