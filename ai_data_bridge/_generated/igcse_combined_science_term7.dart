// File: ai_data_bridge/_generated/igcse_combined_science_term7.dart
// IGCSE Combined Science -- Term 7: "Biology - Coordination, Response and
// Reproduction" (Weeks 25-28), authored from the corrected weekly topic
// map in ai_data_bridge/igcse_combined_science_all_terms.dart.
// Staging artifact only -- not yet wired into course_pathway_bank.dart's
// Grade.igcse pathway. Follows the exact DailyLessonDef/CourseWeekDef/
// CourseTermDef schema and id/xp conventions established by Terms 1-6
// (igcse_combined_science_term1.dart through
// igcse_combined_science_term6.dart) and _secondary3SciencePathway,
// including its rotating cast of named Myanmar-student protagonists
// (one per week's reading passage, not a single fixed character).
//
// Week 25 (Coordination and Response): the nervous system, reflex arcs,
// hormones and the endocrine system. Week 26 (Homeostasis and
// Excretion): control of blood glucose, body temperature regulation,
// excretory organs. Week 27 (Reproduction in Plants and Humans):
// asexual vs. sexual reproduction, pollination and fertilisation, the
// human reproductive system. Week 28 (Capstone -- Coordination &
// Reproduction Review): hormonal pathways, reproductive cycles, and
// mixed exam-style case studies across the whole term.

import 'package:nova_academy/features/lessons/course_pathway_bank.dart';
import 'package:nova_academy/features/lessons/interactive_content_models.dart';
import 'package:nova_academy/features/lessons/mock_quiz_data.dart';

// =====================================================================
// Week 25: "Coordination and Response"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek25 = CourseWeekDef(
  id: "course-igcse-combsci-w25",
  weekNumber: 25,
  titleEn: "Coordination and Response",
  titleMy: "ညှိနှိုင်းဆောင်ရွက်မှုနှင့် တုံ့ပြန်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w25-d1",
      dayNumber: 1,
      titleEn: "Nervous System and Hormones Quiz",
      titleMy: "အာရုံကြောစနစ်နှင့် ဟိုမုန်းများ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "The nervous system transmits messages around the body mainly as...",
          questionMy:
              "အာရုံကြောစနစ်သည် ခန္ဓာကိုယ်တစ်ခုလုံးသို့ သတင်းစကားများကို အဓိကအားဖြင့် မည်သို့ ပို့ဆောင်သနည်း။",
          optionsEn: [
            "Electrical impulses travelling rapidly along neurons",
            "Chemical signals carried slowly through the blood only",
            "Heat waves passing through the skin",
            "Sound waves travelling through muscles",
          ],
          optionsMy: [
            "အာရုံကြောများတစ်လျှောက် လျင်မြန်စွာ ခရီးသွားသော လျှပ်စစ်လှိုင်းများ",
            "သွေးထဲမှသာ နှေးကွေးစွာ သယ်ဆောင်သော ဓာတုအချက်ပြမှုများ",
            "အသားအရေကိုဖြတ်၍ ပြေးသော အပူလှိုင်းများ",
            "ကြွက်သားများကိုဖြတ်၍ ခရီးသွားသော အသံလှိုင်းများ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Neurons are specialised cells adapted specifically to carry electrical impulses very quickly.",
            "At the small gap between two neurons, called a synapse, a chemical neurotransmitter carries the signal across before it becomes electrical again.",
          ],
          hintsMy: [
            "အာရုံကြောများသည် လျှပ်စစ်လှိုင်းများကို အလွန်လျင်မြန်စွာ သယ်ဆောင်ရန် အထူးလိုက်လျောညီထွေဖြစ်အောင် ပြင်ဆင်ထားသော ဆဲလ်များဖြစ်သည်။",
            "အာရုံကြောနှစ်ခုကြားရှိ ကွက်လပ်ငယ်ကို ဆင်နက်ပ်စ် (synapse) ဟုခေါ်ပြီး ဓာတုအာရုံကြောစီးဆင်းစေတဲ့ပစ္စည်း (neurotransmitter) က ၎င်းကို ပြန်၍ လျှပ်စစ်ဖြစ်ခြင်းမတိုင်မီ ကွက်လပ်ကိုဖြတ်၍ ပို့ဆောင်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "A reflex arc is a nerve pathway characterised by...",
          questionMy:
              "reflex arc တစ်ခုသည် မည်သို့သော အာရုံကြောလမ်းကြောင်းဖြင့် ဖော်ပြသနည်း။",
          optionsEn: [
            "A rapid, automatic response that does not require conscious thought from the brain",
            "A slow, carefully considered decision made entirely by the brain",
            "Only occurring during sleep",
            "Requiring the cerebrum to process every single step",
          ],
          optionsMy: [
            "ဦးနှောက်၏ အသိစိတ်ဖြင့် တွေးခေါ်ခြင်း မလိုအပ်သော လျင်မြန်၊ အလိုအလျောက် တုံ့ပြန်မှု",
            "ဦးနှောက်က လုံးလုံးလျားလျား ဂရုတစိုက်ဆုံးဖြတ်သော နှေးကွေးသောဆုံးဖြတ်ချက်",
            "အိပ်ချိန်တွင်သာ ဖြစ်ပေါ်ခြင်း",
            "ဦးနှောက်ကြီးအစိတ်အပိုင်း (cerebrum) က အဆင့်တိုင်း လုပ်ဆောင်ရန် လိုအပ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of pulling your hand away from something hot -- this happens before you even consciously feel pain.",
            "The pathway runs receptor -> sensory neuron -> relay neuron in the spinal cord -> motor neuron -> effector, bypassing the brain's decision-making to protect the body faster.",
          ],
          hintsMy: [
            "ပူသောအရာမှ လက်ကို ရုတ်တရက်ဆွဲထုတ်လိုက်ခြင်းကို တွေးကြည့်ပါ -- ၎င်းသည် နာကျင်မှုကို အသိစိတ်ဖြင့် မခံစားမီပင် ဖြစ်ပေါ်သည်။",
            "လမ်းကြောင်းသည် ခန္ဓာကိုယ်ကို ပို၍ မြန်ဆန်စွာကာကွယ်ရန် ဦးနှောက်၏ ဆုံးဖြတ်ချက်ချမှုကို ကျော်ဖြတ်ကာ လက်ခံကိရိယာ -> ခံစားခြင်းအာရုံကြော -> ကျောရိုးထဲက ဆက်သွယ်ပေးအာရုံကြော -> လှုပ်ရှားစေအာရုံကြော -> တုံ့ပြန်ကိရိယာ အတိုင်း ပြေးလွှားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Hormones are transported around the body by...",
          questionMy:
              "ဟိုမုန်းများကို ခန္ဓာကိုယ်တစ်ခုလုံးသို့ မည်သို့ ပို့ဆောင်သနည်း။",
          optionsEn: [
            "The bloodstream",
            "Nerve cells only",
            "The digestive system only",
            "Muscles only",
          ],
          optionsMy: [
            "သွေးလည်ပတ်ခြင်းစနစ်",
            "အာရုံကြောဆဲလ်များသာ",
            "အစာခြေစနစ်သာ",
            "ကြွက်သားများသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Endocrine glands secrete hormones directly into the blood, which carries them to their target organs.",
            "This is why hormonal effects can reach organs far from the gland that released them, unlike a nerve signal which travels along a fixed pathway.",
          ],
          hintsMy: [
            "အင်ဒိုကရိန်းဂလင်းများသည် ဟိုမုန်းများကို သွေးထဲသို့ တိုက်ရိုက်လွှတ်ထုတ်ပေးပြီး သွေးက ၎င်းတို့ကို ပစ်မှတ်အင်္ဂါများသို့ ပို့ဆောင်ပေးသည်။",
            "ဤအကြောင်းကြောင့် ဟိုမုန်းသက်ရောက်မှုများသည် ၎င်းကို လွှတ်ထုတ်ခဲ့သောဂလင်းမှ ဝေးကွာသော အင်္ဂါများသို့ ပင် ရောက်ရှိနိုင်ပြီး၊ သတ်မှတ်လမ်းကြောင်းတစ်ခုတစ်လျှောက်သာ ခရီးသွားသော အာရုံကြောအချက်ပြမှုနှင့် မတူပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Compared to nervous responses, hormonal responses are generally...",
          questionMy:
              "အာရုံကြောတုံ့ပြန်မှုများနှင့် နှိုင်းယှဉ်ပါက ဟိုမုန်းတုံ့ပြန်မှုများသည် ယေဘုယျအားဖြင့် မည်သို့ရှိသနည်း။",
          optionsEn: [
            "Slower to start but longer-lasting",
            "Faster to start and shorter-lived",
            "Identical in both speed and duration",
            "Not measurable in any way",
          ],
          optionsMy: [
            "စတင်ရန် နှေးကွေးသော်လည်း ပို၍ကြာမြင့်စွာ တည်ရှိသည်",
            "စတင်ရန် ပိုမြန်ပြီး ပို၍တိုတောင်းစွာသာ တည်ရှိသည်",
            "အမြန်နှုန်းနှင့် ကြာချိန်နှစ်ခုလုံးတွင် တူညီသည်",
            "မည်သည့်နည်းဖြင့်မျှ တိုင်းတာ၍ မရနိုင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Nerve impulses are electrical and travel almost instantly, but their effect ends quickly once the signal stops.",
            "Hormones travel more slowly in the blood, but once they reach their target, their effect (such as growth or metabolic changes) can last much longer.",
          ],
          hintsMy: [
            "အာရုံကြောလှိုင်းများသည် လျှပ်စစ်ဖြစ်ပြီး နီးပါးချက်ချင်း ခရီးသွားသော်လည်း၊ အချက်ပြမှုရပ်တန့်သွားသည်နှင့် ၎င်း၏ သက်ရောက်မှု လျင်မြန်စွာ ကုန်ဆုံးသွားသည်။",
            "ဟိုမုန်းများသည် သွေးထဲတွင် ပို၍နှေးကွေးစွာ ခရီးသွားသော်လည်း ၎င်း၏ပစ်မှတ်သို့ ရောက်ရှိသောအခါ ၎င်း၏ သက်ရောက်မှု (ကြီးထွားခြင်း သို့မဟုတ် ဇီဝဖြစ်စဉ်ပြောင်းလဲမှု ကဲ့သို့) ပို၍ကြာမြင့်စွာ တည်ရှိနိုင်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w25-d2",
      dayNumber: 2,
      titleEn: "Match the Coordination Vocabulary",
      titleMy:
          "ညှိနှိုင်းဆောင်ရွက်မှုဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w25-dm-1",
          termEn: "Neuron",
          termMy: "အာရုံကြော (Neuron)",
          matchEn:
              "A specialised nerve cell adapted to carry electrical impulses rapidly around the body.",
          matchMy:
              "ခန္ဓာကိုယ်တစ်ခုလုံးသို့ လျှပ်စစ်လှိုင်းများကို လျင်မြန်စွာသယ်ဆောင်ရန် လိုက်လျောညီထွေဖြစ်အောင်ပြင်ဆင်ထားသော အထူးဆဲလ်။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w25-dm-2",
          termEn: "Synapse",
          termMy: "ဆင်နက်ပ်စ် (Synapse)",
          matchEn:
              "The small gap between two neurons where a chemical neurotransmitter carries the signal across.",
          matchMy:
              "ဓာတု neurotransmitter က အချက်ပြမှုကို ကွက်လပ်ကိုဖြတ်၍ သယ်ဆောင်ပေးသည့် အာရုံကြောနှစ်ခုကြားရှိ ကွက်လပ်ငယ်။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w25-dm-3",
          termEn: "Reflex Arc",
          termMy: "Reflex Arc",
          matchEn:
              "The rapid, automatic nerve pathway from receptor to effector that does not require conscious brain involvement.",
          matchMy:
              "ဦးနှောက်၏ အသိစိတ်ပါဝင်ခြင်းမလိုအပ်သော၊ လက်ခံကိရိယာမှ တုံ့ပြန်ကိရိယာအထိ လျင်မြန်၊ အလိုအလျောက် အာရုံကြောလမ်းကြောင်း။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w25-dm-4",
          termEn: "Hormone",
          termMy: "ဟိုမုန်း (Hormone)",
          matchEn:
              "A chemical messenger secreted directly into the blood by a gland, producing a slower but longer-lasting effect than a nerve impulse.",
          matchMy:
              "ဂလင်းတစ်ခုမှ သွေးထဲသို့ တိုက်ရိုက်လွှတ်ထုတ်ပေးသည့်၊ အာရုံကြောလှိုင်းထက် နှေးကွေးသော်လည်း ပို၍ကြာမြင့်စွာသက်ရောက်သော ဓာတုစေတမန်။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w25-dm-5",
          termEn: "Endocrine Gland",
          termMy: "အင်ဒိုကရိန်းဂလင်း (Endocrine Gland)",
          matchEn:
              "An organ that secretes hormones directly into the bloodstream, e.g. the pancreas or pituitary gland.",
          matchMy:
              "ဟိုမုန်းများကို သွေးလည်ပတ်ခြင်းစနစ်ထဲသို့ တိုက်ရိုက်လွှတ်ထုတ်ပေးသည့်အင်္ဂါ၊ ဥပမာ- ပန်ကရိယ (သို့) ပီတွစ်တာရီဂလင်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w25-d3",
      dayNumber: 3,
      titleEn: "Sort: Nervous or Hormonal System Feature?",
      titleMy: "စီစစ်ကြမည် - အာရုံကြောစနစ် (သို့) ဟိုမုန်းစနစ် ဂုဏ်သတ္တိ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Nervous System Feature", "Hormonal System Feature"],
        bucketsMy: ["အာရုံကြောစနစ် ဂုဏ်သတ္တိ", "ဟိုမုန်းစနစ် ဂုဏ်သတ္တိ"],
        items: [
          SortingItem(
            id: "igcsecs-w25-sort-1",
            labelEn: "Uses electrical impulses",
            labelMy: "လျှပ်စစ်လှိုင်းများ အသုံးပြုခြင်း",
            correctBucketEn: "Nervous System Feature",
            correctBucketMy: "အာရုံကြောစနစ် ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w25-sort-2",
            labelEn: "Uses chemical messengers carried in the blood",
            labelMy: "သွေးထဲတွင် သယ်ဆောင်သော ဓာတုစေတမန်များ အသုံးပြုခြင်း",
            correctBucketEn: "Hormonal System Feature",
            correctBucketMy: "ဟိုမုန်းစနစ် ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w25-sort-3",
            labelEn: "Produces a very fast response",
            labelMy: "အလွန်လျင်မြန်သော တုံ့ပြန်မှု ဖြစ်ပေါ်စေခြင်း",
            correctBucketEn: "Nervous System Feature",
            correctBucketMy: "အာရုံကြောစနစ် ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w25-sort-4",
            labelEn: "Produces a slower but longer-lasting response",
            labelMy:
                "နှေးကွေးသော်လည်း ပို၍ကြာမြင့်သောတုံ့ပြန်မှု ဖြစ်ပေါ်စေခြင်း",
            correctBucketEn: "Hormonal System Feature",
            correctBucketMy: "ဟိုမုန်းစနစ် ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w25-sort-5",
            labelEn: "Involves neurons and synapses",
            labelMy: "အာရုံကြောများနှင့် ဆင်နက်ပ်စ်များ ပါဝင်ခြင်း",
            correctBucketEn: "Nervous System Feature",
            correctBucketMy: "အာရုံကြောစနစ် ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w25-sort-6",
            labelEn: "Involves glands such as the pancreas",
            labelMy: "ပန်ကရိယကဲ့သို့သော ဂလင်းများ ပါဝင်ခြင်း",
            correctBucketEn: "Hormonal System Feature",
            correctBucketMy: "ဟိုမုန်းစနစ် ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w25-sort-7",
            labelEn: "Follows a reflex arc pathway",
            labelMy: "Reflex arc လမ်းကြောင်းအတိုင်း လိုက်နာခြင်း",
            correctBucketEn: "Nervous System Feature",
            correctBucketMy: "အာရုံကြောစနစ် ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w25-sort-8",
            labelEn: "Insulin controlling blood glucose levels",
            labelMy: "သွေးတွင်းသကြားဓာတ်ပမာဏကို ထိန်းချုပ်သော အင်ဆူလင်",
            correctBucketEn: "Hormonal System Feature",
            correctBucketMy: "ဟိုမုန်းစနစ် ဂုဏ်သတ္တိ",
          ),
          SortingItem(
            id: "igcsecs-w25-sort-9",
            labelEn: "Withdrawing your hand from a hot pan",
            labelMy: "ပူသောအိုးမှ လက်ကို ဆွဲထုတ်ခြင်း",
            correctBucketEn: "Nervous System Feature",
            correctBucketMy: "အာရုံကြောစနစ် ဂုဏ်သတ္တိ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w25-d4",
      dayNumber: 4,
      titleEn: "Reading: Nilar Win's Reaction Time Investigation",
      titleMy: "စာဖတ်ခြင်း - နီလာဝင်း၏ တုံ့ပြန်ချိန် စူးစမ်းလေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nilar Win's Reaction Time Investigation",
        titleMy: "နီလာဝင်း၏ တုံ့ပြန်ချိန် စူးစမ်းလေ့လာမှု",
        passageEn:
            "For her nervous system practical, Nilar Win used a simple ruler-drop test to measure her classmates' reaction times. A partner held a ruler vertically with the zero mark level between the test subject's open thumb and forefinger, then released it without warning; the subject had to catch it as quickly as possible, and the distance the ruler fell before being caught was converted into a reaction time using a standard reference table.\n\nNilar Win tested each classmate five times and calculated an average, since a single attempt could easily be affected by an unlucky guess about when the ruler would drop. She kept several variables constant for a fair test: the same ruler, the same starting height, and the same instruction given to each subject beforehand.\n\nHer teacher pointed out an important subtlety: catching a falling ruler is not actually a true reflex action, even though it feels automatic and fast. A true reflex, like pulling a hand away from a hot object, follows a reflex arc that bypasses the brain entirely, using only the spinal cord to relay the signal from receptor to effector. Catching the ruler, by contrast, requires the eye to detect the ruler falling, send that signal all the way up to the brain for processing, and then send a new signal back down to the hand muscles to close around it -- a longer pathway that explains why this voluntary reaction takes noticeably longer than a true reflex would.",
        passageMy:
            "သူမ၏ အာရုံကြောစနစ် လက်တွေ့စမ်းသပ်မှုအတွက် နီလာဝင်းသည် သူမ၏ အတန်းဖော်များ၏ တုံ့ပြန်ချိန်ကို တိုင်းတာရန် ရိုးရှင်းသော ဆန်တံချ ဓာတ်ခွဲစမ်းသပ်မှုကို အသုံးပြုခဲ့သည်။ အတွဲဖော်တစ်ဦးက ဆန်တံကို ဒေါင်လိုက်ကိုင်ထားပြီး သုညအမှတ်ကို စမ်းသပ်ခံသူ၏ အဝေးအနားနေသည့် လက်မနှင့် လက်ညှိုးကြားတွင် တစ်ညီတည်းရှိစေကာ သတိပေးမှုမပါဘဲ လက်လွှတ်ခဲ့ပြီး၊ စမ်းသပ်ခံသူက ၎င်းကို တတ်နိုင်သမျှ မြန်မြန် ဖမ်းရမည်ဖြစ်ကာ၊ ဖမ်းမိမီ ဆန်တံကျဆင်းသွားသည့် အကွာအဝေးကို စံနှုန်းကိုးကားဇယားကို အသုံးပြု၍ တုံ့ပြန်ချိန်အဖြစ် ပြောင်းလဲယူခဲ့သည်။\n\nနီလာဝင်းသည် အတန်းဖော်တစ်ဦးစီကို ငါးကြိမ်စီ စမ်းသပ်ပြီး ပျမ်းမျှတွက်ချက်ခဲ့သည်၊ အကြောင်းမှာ ကြိုးစားမှုတစ်ကြိမ်တည်းသည် ဆန်တံ မည်သည့်အချိန်တွင် ကျဆင်းမည်ကို ကံမကောင်းစွာ ခန့်မှန်းမိခြင်းက လွယ်ကူစွာ သက်ရောက်နိုင်သောကြောင့်ဖြစ်သည်။ သူမသည် မျှတသောစမ်းသပ်မှုအတွက် ကိန်းရှင်များစွာကို တူညီအောင် ထိန်းထားခဲ့သည်: ဆန်တံတူညီခြင်း၊ စတင်အမြင့်တူညီခြင်းနှင့် စမ်းသပ်ခံသူတစ်ဦးစီအား ကြိုတင်ပေးထားသော ညွှန်ကြားချက် တူညီခြင်း။\n\nသူမ၏ဆရာမက အရေးကြီးသော ခြားနားချက်တစ်ခုကို ညွှန်ပြခဲ့သည်: ဆန်တံတစ်ခု ကျဆင်းနေသည်ကို ဖမ်းယူခြင်းသည် အလိုအလျောက်၊ လျင်မြန်ဟန်ရှိသော်လည်း တကယ့် reflex လုပ်ဆောင်ချက် အမှန်တကယ် မဟုတ်ပါ။ ပူသောအရာမှ လက်ကို ဆွဲထုတ်ခြင်းကဲ့သို့ တကယ့် reflex တစ်ခုသည် ဦးနှောက်ကို လုံးဝကျော်ဖြတ်ကာ ကျောရိုးကိုသာ အသုံးပြု၍ လက်ခံကိရိယာမှ တုံ့ပြန်ကိရိယာသို့ အချက်ပြမှုကို ဆက်သွယ်ပေးသော reflex arc ကိုလိုက်နာသည်။ ဆန်တံကို ဖမ်းယူခြင်းမူ ဆန့်ကျင်ဘက်အနေနှင့် မျက်စိက ကျဆင်းနေသောဆန်တံကို တွေ့ရှိရန်၊ ထိုအချက်ပြမှုကို လုပ်ငန်းစဉ်လုပ်ဆောင်ရန် ဦးနှောက်ဆီသို့ တစ်လျှောက်လုံး ပို့ဆောင်ရန်၊ ထို့နောက် လက်ကြွက်သားများသို့ ၎င်းကိုဖွဲ့စည်းရန် အချက်ပြမှုအသစ်တစ်ခုကို ပြန်ပို့ရန် လိုအပ်ပြီး -- ဤကား ပို၍ရှည်လျားသော လမ်းကြောင်းဖြစ်ပြီး ဤသို့ဆန္ဒအလျောက်တုံ့ပြန်မှုသည် တကယ့် reflex တစ်ခုထက် ထင်ရှားစွာ ပို၍ကြာမြင့်ရသည့်အကြောင်းရင်းကို ရှင်းပြပေးသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What did Nilar Win measure using the ruler-drop test?",
            questionMy:
                "နီလာဝင်းသည် ဆန်တံချ ဓာတ်ခွဲစမ်းသပ်မှုကို အသုံးပြု၍ အဘယ်အရာကို တိုင်းတာခဲ့သနည်း။",
            optionsEn: [
              "Her classmates' reaction times",
              "Her classmates' body temperature",
              "Her classmates' blood glucose levels",
              "The strength of her classmates' muscles",
            ],
            optionsMy: [
              "သူမ၏ အတန်းဖော်များ၏ တုံ့ပြန်ချိန်",
              "သူမ၏ အတန်းဖော်များ၏ ခန္ဓာကိုယ်အပူချိန်",
              "သူမ၏ အတန်းဖော်များ၏ သွေးတွင်းသကြားဓာတ်ပမာဏ",
              "သူမ၏ အတန်းဖော်များ၏ ကြွက်သားအားအင်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first paragraph's description of the test's purpose.",
              "The distance the ruler fell was converted into a reaction time.",
            ],
            hintsMy: [
              "စမ်းသပ်မှု၏ ရည်ရွယ်ချက်ကို ဖော်ပြထားသည့် ပထမစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဆန်တံကျဆင်းသွားသည့် အကွာအဝေးကို တုံ့ပြန်ချိန်အဖြစ် ပြောင်းလဲယူခဲ့သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Nilar Win test each classmate five times rather than once?",
            questionMy:
                "နီလာဝင်းသည် အတန်းဖော်တစ်ဦးစီကို တစ်ကြိမ်တည်း အစား ငါးကြိမ်စီ အဘယ်ကြောင့် စမ်းသပ်ခဲ့သနည်း။",
            optionsEn: [
              "A single attempt could easily be affected by an unlucky guess about the drop timing",
              "Five attempts is a legal requirement",
              "Her ruler could only be used five times",
              "She wanted to tire out her classmates",
            ],
            optionsMy: [
              "ကြိုးစားမှုတစ်ကြိမ်တည်းသည် လက်လွှတ်ချိန်ကို ကံမကောင်းစွာ ခန့်မှန်းမိခြင်းက လွယ်ကူစွာ သက်ရောက်နိုင်သောကြောင့်",
              "ငါးကြိမ်ကြိုးစားမှုသည် ဥပဒေအရ လိုအပ်ချက်ဖြစ်သောကြောင့်",
              "သူမ၏ ဆန်တံကို ငါးကြိမ်သာ အသုံးပြုနိုင်သောကြောင့်",
              "သူမ၏ အတန်းဖော်များကို ပင်ပန်းစေလိုသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation of averaging results.",
              "Averaging multiple attempts reduces the effect of any single lucky or unlucky trial.",
            ],
            hintsMy: [
              "ရလဒ်ကို ပျမ်းမျှတွက်ချက်ခြင်းကို ရှင်းပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ကြိုးစားမှုများစွာကို ပျမ်းမျှတွက်ချက်ခြင်းက ကံကောင်း/ကံဆိုးသောကြိုးစားမှုတစ်ခု၏ သက်ရောက်မှုကို လျှော့ချပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why is catching a dropped ruler not actually a true reflex action?",
            questionMy:
                "ကျဆင်းနေသောဆန်တံကို ဖမ်းယူခြင်းသည် တကယ့် reflex လုပ်ဆောင်ချက် မဟုတ်ရသည့် အကြောင်းရင်းမှာ အဘယ်နည်း။",
            optionsEn: [
              "It requires the signal to travel all the way to the brain and back, unlike a true reflex arc",
              "It happens too slowly to be measured",
              "It only happens during sleep",
              "It uses hormones instead of nerves",
            ],
            optionsMy: [
              "တကယ့် reflex arc နှင့်မတူဘဲ အချက်ပြမှုသည် ဦးနှောက်ဆီသို့ တစ်လျှောက်လုံး ပို့ရပြီး ပြန်ပို့ရသောကြောင့်",
              "တိုင်းတာရန် နှေးကွေးလွန်းသောကြောင့်",
              "အိပ်ချိန်တွင်သာ ဖြစ်ပေါ်သောကြောင့်",
              "အာရုံကြောများအစား ဟိုမုန်းများကို အသုံးပြုသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation from Nilar Win's teacher.",
              "A true reflex arc bypasses the brain entirely, using only the spinal cord.",
            ],
            hintsMy: [
              "နီလာဝင်း၏ဆရာမမှ ရှင်းပြချက်ကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "တကယ့် reflex arc သည် ဦးနှောက်ကို လုံးဝကျော်ဖြတ်ကာ ကျောရိုးကိုသာ အသုံးပြုသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Which variables did Nilar Win keep constant for a fair test?",
            questionMy:
                "မျှတသောစမ်းသပ်မှုအတွက် နီလာဝင်း မည်သည့်ကိန်းရှင်များကို တူညီအောင် ထိန်းထားခဲ့သနည်း။",
            optionsEn: [
              "The same ruler, the same starting height, and the same instructions",
              "The classmates' ages only",
              "The colour of the ruler only",
              "Nothing was kept the same",
            ],
            optionsMy: [
              "ဆန်တံတူညီခြင်း၊ စတင်အမြင့်တူညီခြင်းနှင့် ညွှန်ကြားချက်တူညီခြင်း",
              "အတန်းဖော်များ၏ အသက်သာ",
              "ဆန်တံ၏ အရောင်သာ",
              "မည်သည့်အရာမျှ တူညီအောင်ထားခြင်းမရှိပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's second paragraph.",
              "Keeping these control variables the same means differences in results reflect genuine differences in reaction time.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ ဒုတိယစာပိုဒ်တွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ဤထိန်းချုပ်ကိန်းရှင်များကို တူညီအောင်ထားခြင်းက ရလဒ်ကွာခြားချက်များသည် တုံ့ပြန်ချိန်၏ စစ်မှန်သောကွာခြားချက်ကို ထင်ဟပ်စေသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w25-d5",
      dayNumber: 5,
      titleEn: "Week 25 Recap: Coordination and Response",
      titleMy:
          "အပတ်စဉ် ၂၅ ပြန်လည်သုံးသပ်ခြင်း - ညှိနှိုင်းဆောင်ရွက်မှုနှင့် တုံ့ပြန်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The nervous system uses...",
          questionMy: "အာရုံကြောစနစ်သည် မည်သည့်အရာကို အသုံးပြုသနည်း။",
          optionsEn: [
            "Electrical impulses",
            "Only hormones",
            "Only muscles",
            "Sound waves",
          ],
          optionsMy: [
            "လျှပ်စစ်လှိုင်းများ",
            "ဟိုမုန်းများသာ",
            "ကြွက်သားများသာ",
            "အသံလှိုင်းများ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A reflex arc bypasses the...",
          questionMy: "Reflex arc သည် မည်သည့်အရာကို ကျော်ဖြတ်သနည်း။",
          optionsEn: [
            "Brain's conscious decision-making",
            "Spinal cord entirely",
            "Receptor entirely",
            "Effector entirely",
          ],
          optionsMy: [
            "ဦးနှောက်၏ အသိစိတ်ဆုံးဖြတ်ချက်ချမှု",
            "ကျောရိုးလုံးဝ",
            "လက်ခံကိရိယာလုံးဝ",
            "တုံ့ပြန်ကိရိယာလုံးဝ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Hormones travel through the body via the...",
          questionMy: "ဟိုမုန်းများသည် ခန္ဓာကိုယ်ကို မည်သို့ ဖြတ်သန်းသနည်း။",
          optionsEn: [
            "Bloodstream",
            "Nerve cells",
            "Digestive tract only",
            "Skin only",
          ],
          optionsMy: [
            "သွေးလည်ပတ်ခြင်းစနစ်",
            "အာရုံကြောဆဲလ်များ",
            "အစာခြေလမ်းကြောင်းသာ",
            "အသားအရေသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Compared to nerve impulses, hormones are generally...",
          questionMy:
              "အာရုံကြောလှိုင်းများနှင့်နှိုင်းယှဉ်ပါက ဟိုမုန်းများသည် ယေဘုယျအားဖြင့်...",
          optionsEn: [
            "Slower but longer-lasting",
            "Faster and shorter-lived",
            "Exactly the same",
            "Not measurable",
          ],
          optionsMy: [
            "နှေးကွေးသော်လည်း ပို၍ကြာမြင့်သည်",
            "ပိုမြန်ပြီး ပို၍တိုတောင်းသည်",
            "အတိအကျ တူညီသည်",
            "တိုင်းတာ၍မရနိုင်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The pancreas is an example of a(n)...",
          questionMy: "ပန်ကရိယသည် မည်သည့်အရာ၏ ဥပမာဖြစ်သနည်း။",
          optionsEn: ["Endocrine gland", "Neuron", "Reflex arc", "Muscle"],
          optionsMy: [
            "အင်ဒိုကရိန်းဂလင်း",
            "အာရုံကြော",
            "Reflex arc",
            "ကြွက်သား",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 26: "Homeostasis and Excretion"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek26 = CourseWeekDef(
  id: "course-igcse-combsci-w26",
  weekNumber: 26,
  titleEn: "Homeostasis and Excretion",
  titleMy: "အတွင်းပိုင်း ဟန်ချက်ညီထိန်းသိမ်းမှုနှင့် စွန့်ပစ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w26-d1",
      dayNumber: 1,
      titleEn: "Blood Glucose, Temperature and Excretion Quiz",
      titleMy: "သွေးတွင်းသကြားဓာတ်၊ အပူချိန်နှင့် စွန့်ပစ်ခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Homeostasis refers to...",
          questionMy: "Homeostasis သည် အဘယ်အရာကို ရည်ညွှန်းသနည်း။",
          optionsEn: [
            "The maintenance of a constant internal environment despite external changes",
            "Random, uncontrolled fluctuation of body conditions",
            "The process of breathing only",
            "The process of digestion only",
          ],
          optionsMy: [
            "ပြင်ပပြောင်းလဲမှုများ ရှိနေသော်လည်း အတွင်းပိုင်းပတ်ဝန်းကျင်ကို ဆက်လက် ထိန်းသိမ်းခြင်း",
            "ခန္ဓာကိုယ်အခြေအနေများ၏ ထိန်းချုပ်မှုမရှိသော ကျပန်းပြောင်းလဲမှု",
            "အသက်ရှုသည့်လုပ်ငန်းစဉ်တစ်ခုတည်း",
            "အစာခြေသည့်လုပ်ငန်းစဉ်တစ်ခုတည်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "This includes controlling blood glucose, body temperature, and water content, among other things.",
            "It keeps the internal conditions inside cells stable enough for enzymes and other processes to work properly.",
          ],
          hintsMy: [
            "ဤသည် သွေးတွင်းသကြားဓာတ်၊ ခန္ဓာကိုယ်အပူချိန်နှင့် ရေဓာတ်ပမာဏ အစရှိသည်တို့ကို ထိန်းချုပ်ခြင်း ပါဝင်သည်။",
            "၎င်းသည် အင်ဇိုင်းများနှင့် အခြားလုပ်ငန်းစဉ်များ မှန်ကန်စွာ အလုပ်လုပ်နိုင်ရန်လောက် ဆဲလ်များအတွင်း အတွင်းပိုင်းအခြေအနေများကို တည်ငြိမ်စွာ ထိန်းထားပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "When blood glucose is too high, the hormone insulin causes...",
          questionMy:
              "သွေးတွင်းသကြားဓာတ် များလွန်းသောအခါ ဟိုမုန်း အင်ဆူလင်က မည်သို့ဖြစ်ပေါ်စေသနည်း။",
          optionsEn: [
            "Liver and muscle cells to take up glucose and store it as glycogen",
            "Blood glucose to rise even further",
            "The pancreas to stop working entirely",
            "Glucose to be excreted only, with no storage",
          ],
          optionsMy: [
            "အသည်းနှင့် ကြွက်သားဆဲလ်များက သကြားဓာတ်ကို စုပ်ယူပြီး ဂလိုင်ကိုဂျင် (glycogen) အဖြစ် သိုလှောင်ထားခြင်း",
            "သွေးတွင်းသကြားဓာတ် ပို၍တောင် မြင့်တက်ခြင်း",
            "ပန်ကရိယ လုံးဝအလုပ်ရပ်တန့်ခြင်း",
            "သိုလှောင်ခြင်းမရှိဘဲ သကြားဓာတ်ကို စွန့်ပစ်ခြင်းသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Insulin is released by the pancreas whenever blood glucose rises above normal, for example after a meal.",
            "Storing excess glucose as glycogen lowers blood glucose back towards its normal level -- an example of negative feedback.",
          ],
          hintsMy: [
            "အင်ဆူလင်ကို ဥပမာ- အစားစားပြီးနောက် သွေးတွင်းသကြားဓာတ် ပုံမှန်ထက်မြင့်တက်တိုင်း ပန်ကရိယက လွှတ်ထုတ်ပေးသည်။",
            "ပိုလျှံသကြားဓာတ်ကို ဂလိုင်ကိုဂျင်အဖြစ် သိုလှောင်ခြင်းက သွေးတွင်းသကြားဓာတ်ကို ပုံမှန်အဆင့်သို့ ပြန်လျှော့ချပေးသည် -- negative feedback ဥပမာတစ်ခုဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Sweating helps cool the body mainly by...",
          questionMy:
              "ချွေးထွက်ခြင်းသည် ခန္ဓာကိုယ်ကို အဓိကအားဖြင့် မည်သို့ အေးမြစေသနည်း။",
          optionsEn: [
            "The evaporation of sweat from the skin removing heat energy",
            "Raising blood glucose levels",
            "Producing more body hair",
            "Increasing heart rate only",
          ],
          optionsMy: [
            "အသားအရေမှ ချွေးငွေ့ပျံခြင်းက အပူစွမ်းအင်ကို ဖယ်ရှားပေးခြင်း",
            "သွေးတွင်းသကြားဓာတ်ပမာဏကို မြှင့်တင်ခြင်း",
            "ခန္ဓာကိုယ်အမွှေးအမှင်ပို၍ ထုတ်လုပ်ခြင်း",
            "နှလုံးခုန်နှုန်းကိုသာ တိုးမြှင့်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Evaporation is a change of state that requires energy, and that energy is taken from the skin's surface as heat.",
            "This is also why blood vessels near the skin widen (vasodilation) when the body is too hot, bringing more blood close to the surface to lose heat.",
          ],
          hintsMy: [
            "အငွေ့ပျံခြင်းသည် စွမ်းအင်လိုအပ်သော အခြေအနေပြောင်းလဲမှုတစ်ခုဖြစ်ပြီး ထိုစွမ်းအင်ကို အသားအရေမျက်နှာပြင်မှ အပူအဖြစ်ယူသည်။",
            "ခန္ဓာကိုယ်ပူလွန်းသောအခါ အသားအရေအနီးရှိသွေးကြောများ ကျယ်ပြန့်လာခြင်း (vasodilation) လည်း ဤအကြောင်းကြောင့်ဖြစ်ပြီး မျက်နှာပြင်အနီးသို့ သွေးပိုများများ ယူဆောင်လာကာ အပူဆုံးရှုံးစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "The kidneys' main excretory role is to...",
          questionMy:
              "ကျောက်ကပ်များ၏ အဓိက စွန့်ပစ်ခြင်းလုပ်ငန်းတာဝန်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Filter the blood and remove urea and excess substances as urine",
            "Produce hormones only",
            "Pump blood around the body",
            "Digest food",
          ],
          optionsMy: [
            "သွေးကို စစ်ထုတ်ပြီး ယူးရီးယားနှင့် ပိုလျှံပစ္စည်းများကို ဆီးအဖြစ် ဖယ်ရှားခြင်း",
            "ဟိုမုန်းများသာ ထုတ်လုပ်ခြင်း",
            "ခန္ဓာကိုယ်တစ်ခုလုံးသို့ သွေးကို တွန်းအားပေးခြင်း",
            "အစားအစာချေဖျက်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Urea forms from the breakdown of excess amino acids in the liver, and must be removed from the blood.",
            "The kidneys filter this and other waste out of the blood, forming urine that is stored in the bladder before leaving the body.",
          ],
          hintsMy: [
            "ယူးရီးယားသည် အသည်းရှိ ပိုလျှံအမိုင်နိုအက်ဆစ်များ ပြိုကွဲခြင်းမှ ဖြစ်ပေါ်လာပြီး သွေးမှ ဖယ်ရှားရမည်ဖြစ်သည်။",
            "ကျောက်ကပ်များသည် ဤအရာနှင့် အခြားစွန့်ပစ်ပစ္စည်းများကို သွေးမှ စစ်ထုတ်ပေးပြီး ခန္ဓာကိုယ်ထွက်ခွာမီ ဆီးအိမ်ထဲတွင် သိုလှောင်ထားသော ဆီးအဖြစ် ဖြစ်ပေါ်စေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w26-d2",
      dayNumber: 2,
      titleEn: "Match the Homeostasis Vocabulary",
      titleMy: "Homeostasis ဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w26-dm-1",
          termEn: "Homeostasis",
          termMy: "Homeostasis",
          matchEn:
              "The maintenance of a constant internal environment despite changes outside the body.",
          matchMy:
              "ခန္ဓာကိုယ်ပြင်ပရှိ ပြောင်းလဲမှုများ ရှိနေသော်လည်း အတွင်းပိုင်းပတ်ဝန်းကျင်ကို ဆက်လက် ထိန်းသိမ်းခြင်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w26-dm-2",
          termEn: "Insulin",
          termMy: "အင်ဆူလင် (Insulin)",
          matchEn:
              "A hormone released by the pancreas that lowers blood glucose by causing cells to take up and store glucose.",
          matchMy:
              "ဆဲလ်များက သကြားဓာတ်ကို စုပ်ယူပြီး သိုလှောင်စေခြင်းဖြင့် သွေးတွင်းသကြားဓာတ်ကို လျှော့ချပေးသော ပန်ကရိယမှ လွှတ်ထုတ်သောဟိုမုန်း။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w26-dm-3",
          termEn: "Glycogen",
          termMy: "ဂလိုင်ကိုဂျင် (Glycogen)",
          matchEn:
              "The storage form of glucose, held mainly in the liver and muscles.",
          matchMy:
              "အဓိကအားဖြင့် အသည်းနှင့် ကြွက်သားများတွင် သိုလှောင်ထားသော သကြားဓာတ်၏ သိုလှောင်ပုံစံ။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w26-dm-4",
          termEn: "Vasodilation",
          termMy: "Vasodilation",
          matchEn:
              "The widening of blood vessels near the skin's surface, increasing heat loss to cool the body.",
          matchMy:
              "ခန္ဓာကိုယ်အေးမြစေရန် အပူဆုံးရှုံးမှုကို တိုးမြှင့်ပေးသော၊ အသားအရေမျက်နှာပြင်အနီးရှိ သွေးကြောများ ကျယ်ပြန့်လာခြင်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w26-dm-5",
          termEn: "Urea",
          termMy: "ယူးရီးယား (Urea)",
          matchEn:
              "A waste substance produced from the breakdown of excess amino acids, removed from the blood by the kidneys.",
          matchMy:
              "ပိုလျှံအမိုင်နိုအက်ဆစ်များ ပြိုကွဲခြင်းမှ ထုတ်လုပ်သော၊ ကျောက်ကပ်များက သွေးမှ ဖယ်ရှားပေးသော စွန့်ပစ်ပစ္စည်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w26-d3",
      dayNumber: 3,
      titleEn: "Sort: Glucose Control, Temperature Control, or Excretion?",
      titleMy:
          "စီစစ်ကြမည် - သကြားဓာတ်ထိန်းချုပ်မှု၊ အပူချိန်ထိန်းချုပ်မှု (သို့) စွန့်ပစ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Blood Glucose Control",
          "Body Temperature Control",
          "Excretion",
        ],
        bucketsMy: [
          "သွေးတွင်းသကြားဓာတ် ထိန်းချုပ်မှု",
          "ခန္ဓာကိုယ်အပူချိန် ထိန်းချုပ်မှု",
          "စွန့်ပစ်ခြင်း",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w26-sort-1",
            labelEn: "Insulin released by the pancreas",
            labelMy: "ပန်ကရိယမှ လွှတ်ထုတ်သော အင်ဆူလင်",
            correctBucketEn: "Blood Glucose Control",
            correctBucketMy: "သွေးတွင်းသကြားဓာတ် ထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "igcsecs-w26-sort-2",
            labelEn: "Glucose stored as glycogen in the liver",
            labelMy: "အသည်းထဲတွင် ဂလိုင်ကိုဂျင်အဖြစ် သိုလှောင်ထားသော သကြားဓာတ်",
            correctBucketEn: "Blood Glucose Control",
            correctBucketMy: "သွေးတွင်းသကြားဓာတ် ထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "igcsecs-w26-sort-3",
            labelEn: "Glucagon released when blood glucose is too low",
            labelMy:
                "သွေးတွင်းသကြားဓာတ် နည်းလွန်းသောအခါ လွှတ်ထုတ်သော ဂလူကာဂွန်",
            correctBucketEn: "Blood Glucose Control",
            correctBucketMy: "သွေးတွင်းသကြားဓာတ် ထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "igcsecs-w26-sort-4",
            labelEn: "Sweating to cool the body down",
            labelMy: "ခန္ဓာကိုယ်ကို အေးမြစေရန် ချွေးထွက်ခြင်း",
            correctBucketEn: "Body Temperature Control",
            correctBucketMy: "ခန္ဓာကိုယ်အပူချိန် ထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "igcsecs-w26-sort-5",
            labelEn: "Blood vessels widening near the skin (vasodilation)",
            labelMy: "အသားအရေအနီး သွေးကြောများ ကျယ်ပြန့်လာခြင်း (vasodilation)",
            correctBucketEn: "Body Temperature Control",
            correctBucketMy: "ခန္ဓာကိုယ်အပူချိန် ထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "igcsecs-w26-sort-6",
            labelEn: "Shivering to generate extra heat",
            labelMy: "အပူထပ်ဖြစ်ပေါ်စေရန် တုန်ရင်ခြင်း",
            correctBucketEn: "Body Temperature Control",
            correctBucketMy: "ခန္ဓာကိုယ်အပူချိန် ထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "igcsecs-w26-sort-7",
            labelEn: "Kidneys filtering the blood",
            labelMy: "ကျောက်ကပ်များ သွေးကို စစ်ထုတ်ခြင်း",
            correctBucketEn: "Excretion",
            correctBucketMy: "စွန့်ပစ်ခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w26-sort-8",
            labelEn: "Urea removed in urine",
            labelMy: "ဆီးထဲတွင် ဖယ်ရှားလိုက်သော ယူးရီးယား",
            correctBucketEn: "Excretion",
            correctBucketMy: "စွန့်ပစ်ခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w26-sort-9",
            labelEn: "The bladder storing urine before it leaves the body",
            labelMy: "ခန္ဓာကိုယ်ထွက်ခွာမီ ဆီးကို သိုလှောင်ထားသော ဆီးအိမ်",
            correctBucketEn: "Excretion",
            correctBucketMy: "စွန့်ပစ်ခြင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w26-d4",
      dayNumber: 4,
      titleEn: "Reading: Theingi Zaw's Exercise Temperature Investigation",
      titleMy:
          "စာဖတ်ခြင်း - သိင်္ဂီဇော်၏ ကိုယ်လက်လှုပ်ရှားမှု အပူချိန် စူးစမ်းလေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Theingi Zaw's Exercise Temperature Investigation",
        titleMy: "သိင်္ဂီဇော်၏ ကိုယ်လက်လှုပ်ရှားမှု အပူချိန် စူးစမ်းလေ့လာမှု",
        passageEn:
            "For her homeostasis practical, Theingi Zaw investigated how the body responds to exercise-induced heat. She measured her own skin temperature and pulse rate at rest, then again immediately after five minutes of star jumps, and again at five-minute intervals afterwards while resting, until both measurements returned close to her resting values.\n\nImmediately after exercise, Theingi Zaw's skin felt noticeably warmer to the touch and had visibly flushed pink, and she was sweating heavily. She explained this using vasodilation: blood vessels near her skin's surface had widened, bringing more warm blood close to the surface where heat could radiate away and where sweat, once it evaporated, could remove additional heat energy directly from the skin.\n\nOver the following fifteen minutes, both her skin temperature and pulse rate gradually fell back towards their resting values, and her sweating slowed and then stopped. Theingi Zaw recognised this whole sequence as a negative feedback response: exercise raised her body temperature above its normal set point, the body detected this change and triggered corrective mechanisms (vasodilation and sweating) to lose heat, and once her temperature returned to normal, those corrective mechanisms switched off again -- the same general pattern used to control blood glucose, just applied to temperature instead.",
        passageMy:
            "သူမ၏ homeostasis လက်တွေ့စမ်းသပ်မှုအတွက် သိင်္ဂီဇော်သည် ကိုယ်လက်လှုပ်ရှားမှုကြောင့် ဖြစ်ပေါ်လာသော အပူကို ခန္ဓာကိုယ်က မည်သို့တုံ့ပြန်ကြောင်း စူးစမ်းလေ့လာခဲ့သည်။ သူမသည် အနားယူချိန်တွင် သူမ၏ကိုယ်ပိုင် အသားအရေအပူချိန်နှင့် နှလုံးခုန်နှုန်းကို တိုင်းတာခဲ့ပြီး၊ ကြယ်ခုန်ခြင်း (star jumps) ငါးမိနစ်ပြီးနောက် ချက်ချင်းလျှင် ထပ်တိုင်းတာခဲ့ကာ၊ ထို့နောက် နှစ်ခုစလုံး၏ တိုင်းတာချက်များသည် သူမ၏ အနားယူအပူချိန်နှင့် နီးစပ်စွာ ပြန်ရောက်သည်အထိ အနားယူနေစဉ် ငါးမိနစ်အကြားတိုင်း ထပ်တိုင်းတာခဲ့သည်။\n\nကိုယ်လက်လှုပ်ရှားမှုပြီးချက်ချင်းလျှင် သိင်္ဂီဇော်၏ အသားအရေသည် ထင်ရှားစွာ ပို၍ပူနွေးလာသည်ဟု ထိတွေ့ခံစားရပြီး ပန်းရောင်ထင်ရှားစွာလွင့်ပျံလာကာ သူမသည် ချွေးအလွန်ထွက်ခဲ့သည်။ သူမသည် ၎င်းကို vasodilation ဖြင့် ရှင်းပြခဲ့သည်: သူမ၏ အသားအရေမျက်နှာပြင်အနီးရှိ သွေးကြောများ ကျယ်ပြန့်လာပြီး ပူသောသွေးများကို မျက်နှာပြင်အနီးသို့ ယူဆောင်လာကာ အပူသည် ရေဒီယေးရှင်းဖြင့် လွှင့်ပျံသွားနိုင်ပြီး ချွေးသည် အငွေ့ပျံလိုက်သောအခါ အသားအရေမှ အပူစွမ်းအင်ထပ်ဆောင်းကို တိုက်ရိုက်ဖယ်ရှားနိုင်ခဲ့သည်။\n\nနောက်လာမည့် ဆယ့်ငါးမိနစ်အတွင်း သူမ၏ အသားအရေအပူချိန်နှင့် နှလုံးခုန်နှုန်း နှစ်ခုစလုံး တဖြည်းဖြည်း သူမ၏ အနားယူတန်ဖိုးများသို့ ပြန်ကျဆင်းလာခဲ့ပြီး ချွေးထွက်မှု နှေးကွေးလာကာ ရပ်တန့်သွားခဲ့သည်။ သိင်္ဂီဇော်သည် ဤလုပ်ငန်းစဉ်တစ်ခုလုံးကို negative feedback တုံ့ပြန်မှုအဖြစ် သိရှိခဲ့သည်: ကိုယ်လက်လှုပ်ရှားမှုက သူမ၏ ခန္ဓာကိုယ်အပူချိန်ကို ပုံမှန်သတ်မှတ်ချက်ထက် မြှင့်တင်ခဲ့ပြီး၊ ခန္ဓာကိုယ်က ဤပြောင်းလဲမှုကို တွေ့ရှိကာ ပြင်ဆင်ယန္တရားများ (vasodilation နှင့် ချွေးထွက်ခြင်း) ကို လှုံ့ဆော်ကာ အပူဆုံးရှုံးစေခဲ့ပြီး၊ သူမ၏ အပူချိန် ပုံမှန်ပြန်ရောက်သည်နှင့် ထိုပြင်ဆင်ယန္တရားများ ပြန်ပိတ်သွားခဲ့သည် -- ၎င်းသည် အပူချိန်တွင်သာ အသုံးချထားသော သွေးတွင်းသကြားဓာတ်ထိန်းချုပ်ရန် အသုံးပြုသည့် ယေဘုယျပုံစံ အတိအကျပင်ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What two measurements did Theingi Zaw take before and after exercise?",
            questionMy:
                "ကိုယ်လက်လှုပ်ရှားမှု မတိုင်မီနှင့် ပြီးနောက် သိင်္ဂီဇော် မည်သည့်တိုင်းတာချက်နှစ်ခု ယူခဲ့သနည်း။",
            optionsEn: [
              "Skin temperature and pulse rate",
              "Blood glucose and hormone levels",
              "Hearing range and eyesight",
              "Muscle strength and lung capacity",
            ],
            optionsMy: [
              "အသားအရေအပူချိန်နှင့် နှလုံးခုန်နှုန်း",
              "သွေးတွင်းသကြားဓာတ်နှင့် ဟိုမုန်းပမာဏ",
              "ကြားနိုင်စွမ်းနှင့် အမြင်စွမ်းအား",
              "ကြွက်သားအားအင်နှင့် အဆုတ်ဆံ့ခန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first paragraph's description of the measurements.",
              "She recorded these two measurements at rest, then again after five minutes of star jumps.",
            ],
            hintsMy: [
              "တိုင်းတာချက်များကို ဖော်ပြထားသည့် ပထမစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "သူမသည် ဤတိုင်းတာချက်နှစ်ခုကို အနားယူချိန်တွင် ယူပြီး ကြယ်ခုန်ခြင်း ငါးမိနစ်ပြီးနောက် ထပ်ယူခဲ့သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "How did vasodilation help Theingi Zaw's body lose heat?",
            questionMy:
                "Vasodilation က သိင်္ဂီဇော်၏ ခန္ဓာကိုယ်ကို အပူဆုံးရှုံးရန် မည်သို့ အထောက်အကူပြုခဲ့သနည်း။",
            optionsEn: [
              "It brought more warm blood close to the skin's surface, where heat could radiate away and sweat could evaporate",
              "It stopped her heart from beating",
              "It cooled her blood down before it reached her skin",
              "It had no effect on heat loss at all",
            ],
            optionsMy: [
              "ပူသောသွေးများကို မျက်နှာပြင်အနီးသို့ ယူဆောင်လာပြီး အပူ ရေဒီယေးရှင်းဖြင့် လွှင့်ပျံနိုင်ပြီး ချွေးအငွေ့ပျံနိုင်ခဲ့ခြင်း",
              "သူမ၏ နှလုံးခုန်ခြင်းကို ရပ်တန့်စေခြင်း",
              "အသားအရေသို့မရောက်မီ သူမ၏ သွေးကို အေးမြစေခြင်း",
              "အပူဆုံးရှုံးမှုအပေါ် လုံးဝ သက်ရောက်မှုမရှိခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's explanation of vasodilation.",
              "Widened blood vessels near the surface allow both radiation and sweat evaporation to remove heat more effectively.",
            ],
            hintsMy: [
              "Vasodilation ကို ရှင်းပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "မျက်နှာပြင်အနီးရှိ ကျယ်ပြန့်လာသော သွေးကြောများက ရေဒီယေးရှင်းနှင့် ချွေးအငွေ့ပျံခြင်းနှစ်ခုစလုံးကို ပို၍ ထိရောက်စွာ အပူဖယ်ရှားနိုင်စေသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What happened to Theingi Zaw's measurements over the fifteen minutes after exercise?",
            questionMy:
                "ကိုယ်လက်လှုပ်ရှားမှုပြီးနောက် ဆယ့်ငါးမိနစ်အတွင်း သိင်္ဂီဇော်၏ တိုင်းတာချက်များတွင် အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "Both skin temperature and pulse rate gradually fell back towards resting values",
              "Both measurements kept rising continuously",
              "Both measurements stayed exactly the same",
              "Her pulse rate rose while her temperature fell",
            ],
            optionsMy: [
              "အသားအရေအပူချိန်နှင့် နှလုံးခုန်နှုန်း နှစ်ခုစလုံး တဖြည်းဖြည်း အနားယူတန်ဖိုးများသို့ ပြန်ကျဆင်းလာခြင်း",
              "တိုင်းတာချက်နှစ်ခုစလုံး အဆက်မပြတ် ဆက်တက်နေခြင်း",
              "တိုင်းတာချက်နှစ်ခုစလုံး အတိအကျ တူညီနေခြင်း",
              "နှလုံးခုန်နှုန်းတက်ပြီး အပူချိန်ကျဆင်းခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's description of the recovery period.",
              "This gradual return towards resting values is the corrective part of the negative feedback response.",
            ],
            hintsMy: [
              "ပြန်လည်ကောင်းမွန်ချိန်ကို ဖော်ပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "အနားယူတန်ဖိုးများဆီသို့ ဤတဖြည်းဖြည်း ပြန်ရောက်ခြင်းသည် negative feedback တုံ့ပြန်မှု၏ ပြင်ဆင်သည့်အပိုင်းဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "How did Theingi Zaw describe the overall pattern of her result?",
            questionMy:
                "သိင်္ဂီဇော်သည် သူမ၏ ရလဒ်၏ ယေဘုယျပုံစံကို မည်သို့ ဖော်ပြခဲ့သနည်း။",
            optionsEn: [
              "A negative feedback response, the same general pattern used to control blood glucose",
              "A completely random, unpredictable pattern",
              "A pattern only seen in plants",
              "A pattern with no connection to blood glucose control",
            ],
            optionsMy: [
              "Negative feedback တုံ့ပြန်မှုတစ်ခု၊ သွေးတွင်းသကြားဓာတ်ထိန်းချုပ်ရန် အသုံးပြုသည့် ယေဘုယျပုံစံအတိအကျ",
              "လုံးဝ ကျပန်း၊ ခန့်မှန်း၍မရနိုင်သော ပုံစံ",
              "အပင်များတွင်သာ တွေ့ရသော ပုံစံ",
              "သွေးတွင်းသကြားဓာတ်ထိန်းချုပ်မှုနှင့် မည်သည့်ဆက်စပ်မှုမျှမရှိသော ပုံစံ",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Both temperature and blood glucose control follow the same negative feedback structure: detect a change, correct it, then switch off.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "အပူချိန်နှင့် သွေးတွင်းသကြားဓာတ်ထိန်းချုပ်မှု နှစ်ခုစလုံးသည် ပြောင်းလဲမှုကို တွေ့ရှိခြင်း၊ ပြင်ဆင်ခြင်း၊ ထို့နောက်ပိတ်ခြင်း တူညီသော negative feedback ဖွဲ့စည်းပုံကို လိုက်နာသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w26-d5",
      dayNumber: 5,
      titleEn: "Week 26 Recap: Homeostasis and Excretion",
      titleMy:
          "အပတ်စဉ် ၂၆ ပြန်လည်သုံးသပ်ခြင်း - Homeostasis နှင့် စွန့်ပစ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Homeostasis means maintaining a...",
          questionMy:
              "Homeostasis ဆိုသည်မှာ မည်သို့သောအရာကို ထိန်းသိမ်းခြင်းကို ဆိုလိုသနည်း။",
          optionsEn: [
            "Constant internal environment",
            "Random internal environment",
            "Only body shape",
            "Only eye colour",
          ],
          optionsMy: [
            "တည်ငြိမ်သော အတွင်းပိုင်းပတ်ဝန်းကျင်",
            "ကျပန်းအတွင်းပိုင်းပတ်ဝန်းကျင်",
            "ခန္ဓာကိုယ်ပုံသဏ္ဌာန်သာ",
            "မျက်လုံးအရောင်သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Insulin is released by the...",
          questionMy: "အင်ဆူလင်ကို မည်သည့်အင်္ဂါမှ လွှတ်ထုတ်သနည်း။",
          optionsEn: ["Pancreas", "Kidneys", "Skin", "Lungs"],
          optionsMy: ["ပန်ကရိယ", "ကျောက်ကပ်", "အသားအရေ", "အဆုတ်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Sweating cools the body through...",
          questionMy:
              "ချွေးထွက်ခြင်းသည် မည်သည့်လုပ်ငန်းစဉ်ဖြင့် ခန္ဓာကိုယ်ကို အေးမြစေသနည်း။",
          optionsEn: [
            "Evaporation removing heat energy",
            "Raising blood glucose",
            "Increasing muscle mass",
            "Producing more urea",
          ],
          optionsMy: [
            "အငွေ့ပျံခြင်းက အပူစွမ်းအင်ဖယ်ရှားခြင်း",
            "သွေးတွင်းသကြားဓာတ် မြှင့်တင်ခြင်း",
            "ကြွက်သားထုထည် တိုးမြှင့်ခြင်း",
            "ယူးရီးယား ပို၍ထုတ်လုပ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The kidneys remove urea from the...",
          questionMy:
              "ကျောက်ကပ်များသည် ယူးရီးယားကို မည်သည့်နေရာမှ ဖယ်ရှားသနည်း။",
          optionsEn: ["Blood", "Skin only", "Bones only", "Hair only"],
          optionsMy: ["သွေး", "အသားအရေသာ", "အရိုးများသာ", "ဆံပင်သာ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Negative feedback works by...",
          questionMy: "Negative feedback သည် မည်သို့ အလုပ်လုပ်သနည်း။",
          optionsEn: [
            "Detecting a change and triggering a response that corrects it back towards normal",
            "Amplifying a change further and further with no limit",
            "Ignoring all internal changes completely",
            "Only working in plants, never in humans",
          ],
          optionsMy: [
            "ပြောင်းလဲမှုတစ်ခုကို တွေ့ရှိပြီး ပုံမှန်အနေအထားသို့ ပြန်ပြင်ဆင်ပေးမည့် တုံ့ပြန်မှုကို လှုံ့ဆော်ခြင်း",
            "ကန့်သတ်ချက်မရှိဘဲ ပြောင်းလဲမှုကို ပို၍ပို၍ ချဲ့ထွင်ခြင်း",
            "အတွင်းပိုင်းပြောင်းလဲမှုအားလုံးကို လုံးဝ လျစ်လျူရှုခြင်း",
            "အပင်များတွင်သာ အလုပ်လုပ်ပြီး လူသားများတွင် ဘယ်တော့မှမလုပ်ခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 27: "Reproduction in Plants and Humans"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek27 = CourseWeekDef(
  id: "course-igcse-combsci-w27",
  weekNumber: 27,
  titleEn: "Reproduction in Plants and Humans",
  titleMy: "အပင်နှင့် လူသားများ၏ မျိုးပွားခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w27-d1",
      dayNumber: 1,
      titleEn: "Sexual and Asexual Reproduction Quiz",
      titleMy: "လိင်ပိုင်းဆိုင်ရာနှင့် လိင်မဲ့ မျိုးပွားခြင်း ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Sexual reproduction involves...",
          questionMy: "လိင်ပိုင်းဆိုင်ရာမျိုးပွားခြင်းတွင် အဘယ်အရာ ပါဝင်သနည်း။",
          optionsEn: [
            "The fusion of male and female gametes, producing genetically varied offspring",
            "Only one parent, producing identical offspring",
            "No gametes are involved at all",
            "It only occurs in animals, never in plants",
          ],
          optionsMy: [
            "အထီးနှင့်အမ ဂျဲမက်များ ပေါင်းစပ်ခြင်း၊ မျိုးရိုးဗီဇကွဲပြားသော သားရင်ဇာတ်များ ထုတ်လုပ်ခြင်း",
            "မိဘတစ်ဦးတည်း၊ တူညီသောသားရင်ဇာတ်များ ထုတ်လုပ်ခြင်း",
            "ဂျဲမက်များ လုံးဝ မပါဝင်ခြင်း",
            "တိရစ္ဆာန်များတွင်သာ ဖြစ်ပေါ်ပြီး အပင်များတွင် ဘယ်တော့မှ မဖြစ်ပေါ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Two gametes -- one from each parent -- fuse together at fertilisation.",
            "Because the offspring receives a mix of genetic material from two parents, it is genetically varied, not identical to either parent.",
          ],
          hintsMy: [
            "ဂျဲမက်နှစ်ခု -- မိဘတစ်ဦးစီမှ တစ်ခုစီ -- သည် သန္ဓေသားဖြစ်စဉ်တွင် ပေါင်းစပ်ကြသည်။",
            "သားရင်ဇာတ်သည် မိဘနှစ်ဦးမှ မျိုးရိုးဗီဇပစ္စည်း ရောစပ်ခြင်း ရရှိသောကြောင့် ၎င်းသည် မိဘတစ်ဦးဦးနှင့်မျှ မတူဘဲ မျိုးရိုးဗီဇကွဲပြားနေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Offspring produced by asexual reproduction are typically...",
          questionMy:
              "လိင်မဲ့မျိုးပွားခြင်းမှ ထုတ်လုပ်သော သားရင်ဇာတ်များသည် ယေဘုယျအားဖြင့် မည်သို့ရှိသနည်း။",
          optionsEn: [
            "Genetically identical to the parent (clones)",
            "Always genetically different from the parent",
            "Always sterile and unable to grow",
            "Always male",
          ],
          optionsMy: [
            "မိဘနှင့် မျိုးရိုးဗီဇအားဖြင့် တူညီသည် (clones)",
            "အမြဲတမ်း မိဘနှင့် မျိုးရိုးဗီဇကွဲပြားသည်",
            "အမြဲတမ်း သားစဉ်မြေးဆက်မရှိဘဲ ကြီးထွား၍မရနိုင်ပါ",
            "အမြဲတမ်း အထီးဖြစ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Only one parent is involved, so there is no mixing of genetic material from two different sources.",
            "This is why asexual offspring are sometimes called clones -- e.g. runner plants growing from a strawberry plant.",
          ],
          hintsMy: [
            "မိဘတစ်ဦးတည်းသာ ပါဝင်သောကြောင့် အရင်းအမြစ်နှစ်ခုမှ မျိုးရိုးဗီဇပစ္စည်း ရောစပ်ခြင်း မရှိပါ။",
            "ဤအကြောင်းကြောင့် လိင်မဲ့သားရင်ဇာတ်များကို တစ်ခါတစ်ရံ clones ဟုခေါ်သည် -- ဥပမာ- စတော်ဘယ်ရီအပင်မှ ကြီးထွားလာသော runner များ။",
          ],
        ),
        QuizQuestion(
          questionEn: "Pollination is defined as...",
          questionMy: "Pollination ကို မည်သို့ အဓိပ္ပာယ်ဖွင့်ဆိုသနည်း။",
          optionsEn: [
            "The transfer of pollen from the anther to the stigma",
            "The fusion of male and female gametes",
            "The growth of a pollen tube only",
            "The formation of a seed only",
          ],
          optionsMy: [
            "ပန်းဝတ်မှုန့်ကို anther မှ stigma သို့ ကူးပြောင်းပေးခြင်း",
            "အထီးနှင့်အမ ဂျဲမက်များ ပေါင်းစပ်ခြင်း",
            "ပန်းဝတ်မှုန့်ပြွန် ကြီးထွားခြင်းသာ",
            "မျိုးစေ့ ဖွဲ့စည်းခြင်းသာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Pollination is a physical transfer step -- it happens before fertilisation, not the same thing as fertilisation.",
            "Fertilisation only happens after pollination, once the pollen tube grows down to the ovule and the male gamete's nucleus fuses with the female gamete's nucleus.",
          ],
          hintsMy: [
            "Pollination သည် ရုပ်ပိုင်းဆိုင်ရာ ကူးပြောင်းခြင်းအဆင့်ဖြစ်သည် -- ၎င်းသည် fertilisation မတိုင်မီ ဖြစ်ပေါ်ပြီး fertilisation နှင့် တူညီသောအရာ မဟုတ်ပါ။",
            "Fertilisation သည် pollination ပြီးမှသာ ဖြစ်ပေါ်ပြီး၊ ပန်းဝတ်မှုန့်ပြွန်သည် ovule ဆီသို့ ကြီးထွားသွားကာ အထီးဂျဲမက်၏ nucleus သည် အမဂျဲမက်၏ nucleus နှင့် ပေါင်းစပ်ချိန်တွင်သာ ဖြစ်ပေါ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the human reproductive system, fertilisation normally occurs in the...",
          questionMy:
              "လူသားမျိုးပွားစနစ်တွင် fertilisation သည် ပုံမှန်အားဖြင့် မည်သည့်နေရာတွင် ဖြစ်ပေါ်သနည်း။",
          optionsEn: ["Oviduct (fallopian tube)", "Uterus", "Vagina", "Ovary"],
          optionsMy: [
            "Oviduct (fallopian tube)",
            "သားအိမ်",
            "ယောနိ",
            "ဥပွက်ကျည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The egg is released from the ovary and travels along the oviduct towards the uterus.",
            "Sperm swim up to meet the egg while it is still travelling along the oviduct, which is where fusion usually happens.",
          ],
          hintsMy: [
            "ဥသည် ဥပွက်ကျည်မှ လွတ်မြောက်ပြီး Oviduct တစ်လျှောက် သားအိမ်ဘက်သို့ ခရီးသွားသည်။",
            "ဥသည် Oviduct တစ်လျှောက် ခရီးသွားနေဆဲအချိန်တွင် သုတ်ပိုးများက ကူးပြောင်းရန် ရေကူးတက်လာပြီး ၎င်းသည် ပုံမှန်အားဖြင့် ပေါင်းစပ်မှု ဖြစ်ပေါ်သည့်နေရာဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w27-d2",
      dayNumber: 2,
      titleEn: "Match the Reproduction Vocabulary",
      titleMy: "မျိုးပွားခြင်းဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w27-dm-1",
          termEn: "Gamete",
          termMy: "ဂျဲမက် (Gamete)",
          matchEn:
              "A specialised sex cell, such as a sperm or egg (or pollen and ovule in plants), that fuses with another gamete during sexual reproduction.",
          matchMy:
              "လိင်ပိုင်းဆိုင်ရာမျိုးပွားခြင်းအတွင်း အခြားဂျဲမက်တစ်ခုနှင့် ပေါင်းစပ်သော၊ သုတ်ပိုး (သို့) ဥ ကဲ့သို့ (သို့) အပင်များတွင် ပန်းဝတ်မှုန့်နှင့် ovule ကဲ့သို့ အထူးလိင်ဆဲလ်။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w27-dm-2",
          termEn: "Pollination",
          termMy: "Pollination",
          matchEn:
              "The transfer of pollen grains from the anther of a flower to the stigma of the same or another flower.",
          matchMy:
              "ပန်းတစ်ပွင့်၏ anther မှ ပန်းဝတ်မှုန့်များကို ပန်းတစ်ပွင့်တည်း (သို့) အခြားပန်းတစ်ပွင့်၏ stigma သို့ ကူးပြောင်းခြင်း။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w27-dm-3",
          termEn: "Fertilisation",
          termMy: "Fertilisation",
          matchEn:
              "The fusion of a male gamete's nucleus with a female gamete's nucleus, forming a zygote.",
          matchMy:
              "အထီးဂျဲမက်၏ nucleus သည် အမဂျဲမက်၏ nucleus နှင့် ပေါင်းစပ်ကာ zygote တစ်ခု ဖွဲ့စည်းခြင်း။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w27-dm-4",
          termEn: "Zygote",
          termMy: "Zygote",
          matchEn:
              "The single cell formed immediately after fertilisation, which develops into a new individual.",
          matchMy:
              "Fertilisation ပြီးချက်ချင်းလျှင် ဖွဲ့စည်းသော၊ လူသစ်တစ်ဦးအဖြစ် ကြီးထွားသွားသော ဆဲလ်တစ်ခုတည်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w27-dm-5",
          termEn: "Placenta",
          termMy: "Placenta",
          matchEn:
              "The organ that exchanges nutrients, oxygen, and waste between a mother's blood and her developing foetus.",
          matchMy:
              "မိခင်၏သွေးနှင့် ကြီးထွားနေသော သန္ဓေသားကြားတွင် အာဟာရ၊ အောက်ဆီဂျင်နှင့် စွန့်ပစ်ပစ္စည်းများကို လဲလှယ်ပေးသည့် အင်္ဂါ။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w27-d3",
      dayNumber: 3,
      titleEn: "Sort: Asexual or Sexual Reproduction?",
      titleMy: "စီစစ်ကြမည် - လိင်မဲ့ (သို့) လိင်ပိုင်းဆိုင်ရာ မျိုးပွားခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Asexual Reproduction", "Sexual Reproduction"],
        bucketsMy: ["လိင်မဲ့မျိုးပွားခြင်း", "လိင်ပိုင်းဆိုင်ရာမျိုးပွားခြင်း"],
        items: [
          SortingItem(
            id: "igcsecs-w27-sort-1",
            labelEn: "Offspring genetically identical to the parent",
            labelMy: "မိဘနှင့် မျိုးရိုးဗီဇအားဖြင့်တူညီသော သားရင်ဇာတ်",
            correctBucketEn: "Asexual Reproduction",
            correctBucketMy: "လိင်မဲ့မျိုးပွားခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w27-sort-2",
            labelEn: "Involves the fusion of gametes",
            labelMy: "ဂျဲမက်များပေါင်းစပ်ခြင်း ပါဝင်ခြင်း",
            correctBucketEn: "Sexual Reproduction",
            correctBucketMy: "လိင်ပိုင်းဆိုင်ရာမျိုးပွားခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w27-sort-3",
            labelEn: "Only one parent is needed",
            labelMy: "မိဘတစ်ဦးတည်းသာ လိုအပ်ခြင်း",
            correctBucketEn: "Asexual Reproduction",
            correctBucketMy: "လိင်မဲ့မျိုးပွားခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w27-sort-4",
            labelEn: "Produces genetic variation among offspring",
            labelMy:
                "သားရင်ဇာတ်များကြား မျိုးရိုးဗီဇကွဲပြားမှု ဖြစ်ပေါ်စေခြင်း",
            correctBucketEn: "Sexual Reproduction",
            correctBucketMy: "လိင်ပိုင်းဆိုင်ရာမျိုးပွားခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w27-sort-5",
            labelEn: "Runner plants growing from a strawberry plant",
            labelMy: "စတော်ဘယ်ရီအပင်မှ ကြီးထွားလာသော runner များ",
            correctBucketEn: "Asexual Reproduction",
            correctBucketMy: "လိင်မဲ့မျိုးပွားခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w27-sort-6",
            labelEn:
                "Pollination followed by fertilisation in flowering plants",
            labelMy:
                "ပန်းပွင့်သောအပင်များတွင် pollination နောက် fertilisation ဖြစ်ပေါ်ခြင်း",
            correctBucketEn: "Sexual Reproduction",
            correctBucketMy: "လိင်ပိုင်းဆိုင်ရာမျိုးပွားခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w27-sort-7",
            labelEn: "Bacteria splitting into two identical cells",
            labelMy: "ဗက်တီးရီးယားများ တူညီသောဆဲလ်နှစ်ခုအဖြစ် ကွဲပြားသွားခြင်း",
            correctBucketEn: "Asexual Reproduction",
            correctBucketMy: "လိင်မဲ့မျိုးပွားခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w27-sort-8",
            labelEn: "A human egg fertilised by sperm",
            labelMy: "သုတ်ပိုးဖြင့် fertilise ဖြစ်သွားသော လူ့ဥ",
            correctBucketEn: "Sexual Reproduction",
            correctBucketMy: "လိင်ပိုင်းဆိုင်ရာမျိုးပွားခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w27-sort-9",
            labelEn: "Potato tubers growing into new potato plants",
            labelMy: "အာလူးဗူးများ အာလူးအပင်သစ်များအဖြစ် ကြီးထွားလာခြင်း",
            correctBucketEn: "Asexual Reproduction",
            correctBucketMy: "လိင်မဲ့မျိုးပွားခြင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w27-d4",
      dayNumber: 4,
      titleEn: "Reading: Kaung Htet's Flower Dissection",
      titleMy: "စာဖတ်ခြင်း - ကောင်းထက်၏ ပန်းဖျက်စိတ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Kaung Htet's Flower Dissection",
        titleMy: "ကောင်းထက်၏ ပန်းဖျက်စိတ်ခြင်း",
        passageEn:
            "For his reproduction practical, Kaung Htet dissected two different flowers -- a brightly coloured, scented hibiscus flower and a small, dull-coloured grass flower -- to compare how their structures were adapted for different pollination methods.\n\nThe hibiscus flower had large, brightly coloured petals, a strong scent, and sticky pollen grains sitting on top of a tall, prominent stigma. Kaung Htet identified this as an insect-pollinated flower: the colour and scent attract insects such as bees, and as an insect brushes against the anthers searching for nectar, sticky pollen grains attach to its body and are later transferred to another flower's stigma when it visits, an efficient method that does not waste much pollen.\n\nThe grass flower, by contrast, had no colourful petals or scent at all, small dangling anthers hanging loosely outside the flower, and a large, feathery stigma. Kaung Htet identified this as a wind-pollinated flower: since there is no insect to attract, the flower instead produces enormous quantities of small, light, smooth pollen grains that the wind can easily carry away from the exposed anthers, while the large feathery stigma maximises the surface area available to catch any pollen drifting past on the breeze. His teacher noted that comparing the two side by side made the connection between structure and pollination method far clearer than studying either flower alone.",
        passageMy:
            "သူ၏ မျိုးပွားခြင်းလက်တွေ့စမ်းသပ်မှုအတွက် ကောင်းထက်သည် ၎င်းတို့၏ ဖွဲ့စည်းပုံများသည် pollination နည်းလမ်းကွဲပြားမှုအတွက် မည်သို့ လိုက်လျောညီထွေဖြစ်ကြောင်း နှိုင်းယှဉ်ရန် ပန်းနှစ်မျိုးကွဲပြားသည် -- တောက်ပသောအရောင်၊ ရနံ့ရှိသော ဝါချယ်ရီပန်းနှင့် သေးငယ်၍ မှိန်သောအရောင်ရှိသော မြက်ပန်း -- ကို ဖျက်စိတ်ခဲ့သည်။\n\nဝါချယ်ရီပန်းသည် ကြီးမားပြီး တောက်ပသောအရောင်ရှိသော ပွင့်ချပ်များ၊ အားကောင်းသောရနံ့နှင့် မြင့်မားထင်ရှားသော stigma ထိပ်တွင် တွယ်ကပ်တတ်သော ပန်းဝတ်မှုန့်များ ရှိခဲ့သည်။ ကောင်းထက်သည် ၎င်းကို ပိုးမွှား-pollinated ပန်းအဖြစ် ဖော်ထုတ်ခဲ့သည်: အရောင်နှင့် ရနံ့က ပျားကဲ့သို့ ပိုးမွှားများကို ဆွဲဆောင်ပြီး၊ ပိုးမွှားတစ်ကောင်သည် ပျားရည်ရှာဖွေရင်း anther များကို ပွတ်တိုက်မိသောအခါ တွယ်ကပ်တတ်သော ပန်းဝတ်မှုန့်များသည် ၎င်း၏ ခန္ဓာကိုယ်ပေါ်တွယ်ကပ်ကာ နောက်ပိုင်း အခြားပန်းတစ်ပွင့်ကို ရောက်ရှိသောအခါ ၎င်း၏ stigma သို့ ကူးပြောင်းသွားသည်၊ ၎င်းသည် ပန်းဝတ်မှုန့် များစွာမဖြုန်းတီးသော ထိရောက်သောနည်းလမ်းတစ်ခုဖြစ်သည်။\n\nမြက်ပန်းမူ ဆန့်ကျင်ဘက်အနေနှင့် တောက်ပသောပွင့်ချပ်များ (သို့) ရနံ့ လုံးဝမရှိဘဲ၊ ပန်းအပြင်ဘက်တွင် ရွှဲ့ချ်ချ်ချိတ်ဆွဲထားသော သေးငယ်သော anther များနှင့် ကြီးမားသော ငှက်တောင်ပုံသဏ္ဌာန် stigma တစ်ခုရှိခဲ့သည်။ ကောင်းထက်သည် ၎င်းကို လေ-pollinated ပန်းအဖြစ် ဖော်ထုတ်ခဲ့သည်: ဆွဲဆောင်ရန် ပိုးမွှားမရှိသောကြောင့် ပန်းသည် ဖော်ထုတ်ထားသော anther များမှ လေက လွယ်ကူစွာ သယ်ဆောင်သွားနိုင်သော သေးငယ်၊ ပေါ့ပါး၊ ချောမွေ့သော ပန်းဝတ်မှုန့်များကို အလွန်များပြားစွာ ထုတ်လုပ်ပေးပြီး၊ ကြီးမားသော ငှက်တောင်ပုံသဏ္ဌာန် stigma က လေတိုက်၍ ဖြတ်သွားသော ပန်းဝတ်မှုန့်ကို ဖမ်းယူနိုင်ရန် နေရာအကျယ်အဝန်းကို အများဆုံး ဖြစ်စေခဲ့သည်။ သူ၏ဆရာက ပန်းနှစ်မျိုးကို ယှဉ်တွဲနှိုင်းယှဉ်ခြင်းက ပန်းတစ်မျိုးတည်းကို လေ့လာခြင်းထက် ဖွဲ့စည်းပုံနှင့် pollination နည်းလမ်းကြား ဆက်စပ်မှုကို ပို၍ ရှင်းလင်းစေကြောင်း မှတ်ချက်ပြုခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What features made the hibiscus flower suited to insect pollination?",
            questionMy:
                "ဝါချယ်ရီပန်းကို ပိုးမွှား-pollination နှင့် သင့်လျော်စေသော ဂုဏ်အင်္ဂါရပ်များမှာ အဘယ်နည်း။",
            optionsEn: [
              "Bright colour, strong scent, and sticky pollen",
              "No colour, no scent, and dry powdery pollen",
              "Very small dangling anthers",
              "A large feathery stigma only",
            ],
            optionsMy: [
              "တောက်ပသောအရောင်၊ အားကောင်းသောရနံ့နှင့် တွယ်ကပ်တတ်သောပန်းဝတ်မှုန့်",
              "အရောင်မရှိ၊ ရနံ့မရှိနှင့် ခြောက်သွေ့သောမှုန့်ပုံစံ ပန်းဝတ်မှုန့်",
              "ချိတ်ဆွဲထားသော အလွန်သေးငယ်သော anther များ",
              "ကြီးမားသော ငှက်တောင်ပုံသဏ္ဌာန် stigma သာ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of the hibiscus flower.",
              "These features work together to attract insects and stick pollen to their bodies.",
            ],
            hintsMy: [
              "ဝါချယ်ရီပန်းကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤအင်္ဂါရပ်များသည် ပိုးမွှားများကို ဆွဲဆောင်ပြီး ၎င်းတို့၏ ခန္ဓာကိုယ်ပေါ် ပန်းဝတ်မှုန့်တွယ်ကပ်စေရန် အတူတကွ အလုပ်လုပ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why does the grass flower produce enormous quantities of small, light pollen?",
            questionMy:
                "မြက်ပန်းသည် သေးငယ်၊ ပေါ့ပါးသော ပန်းဝတ်မှုန့်ကို အလွန်များပြားစွာ အဘယ်ကြောင့် ထုတ်လုပ်သနည်း။",
            optionsEn: [
              "So the wind can easily carry it away, since it has no insects to rely on",
              "To attract more bees to the flower",
              "Because it has a strong scent to release",
              "To make the flower more colourful",
            ],
            optionsMy: [
              "ပိုးမွှားများကို မမှီခိုနိုင်သောကြောင့် လေက လွယ်ကူစွာ သယ်ဆောင်သွားနိုင်ရန်",
              "ပန်းသို့ ပျားများ ပို၍ဆွဲဆောင်ရန်",
              "ထုတ်လွှင့်ရန် အားကောင်းသောရနံ့ရှိသောကြောင့်",
              "ပန်းကို ပို၍ အရောင်စုံလင်စေရန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation of wind pollination.",
              "Without insects to transfer pollen precisely, huge quantities improve the odds that some pollen reaches a stigma.",
            ],
            hintsMy: [
              "လေ pollination ကို ရှင်းပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ပန်းဝတ်မှုန့်ကို တိကျစွာ ကူးပြောင်းပေးမည့် ပိုးမွှားမရှိသောကြောင့် ပမာဏများများထုတ်လုပ်ခြင်းက ပန်းဝတ်မှုန့်အချို့ stigma သို့ ရောက်ရှိနိုင်ခြေကို မြှင့်တင်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why does the grass flower have a large, feathery stigma?",
            questionMy:
                "မြက်ပန်းတွင် ကြီးမားသော ငှက်တောင်ပုံသဏ္ဌာန် stigma ရှိရသည့် အကြောင်းရင်းမှာ အဘယ်နည်း။",
            optionsEn: [
              "To maximise the surface area available to catch pollen drifting past on the wind",
              "To attract insects with its colour",
              "To store nectar for pollinators",
              "To produce a stronger scent",
            ],
            optionsMy: [
              "လေတိုက်၍ ဖြတ်သွားသော ပန်းဝတ်မှုန့်ကို ဖမ်းယူနိုင်ရန် နေရာအကျယ်အဝန်းကို အများဆုံးဖြစ်စေရန်",
              "၎င်း၏ အရောင်ဖြင့် ပိုးမွှားများကို ဆွဲဆောင်ရန်",
              "pollinator များအတွက် ပျားရည်သိုလှောင်ရန်",
              "ပို၍ အားကောင်းသောရနံ့ ထုတ်လုပ်ရန်",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's third paragraph.",
              "A larger surface area increases the chance of catching wind-blown pollen grains.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ တတိယစာပိုဒ်တွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ပို၍ကြီးမားသော မျက်နှာပြင်ဧရိယာသည် လေတိုက်၍ ပါလာသော ပန်းဝတ်မှုန့်ကို ဖမ်းယူနိုင်ခြေကို တိုးမြှင့်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Why did Kaung Htet's teacher say comparing the two flowers side by side was valuable?",
            questionMy:
                "ကောင်းထက်၏ ဆရာသည် ပန်းနှစ်မျိုးကို ယှဉ်တွဲနှိုင်းယှဉ်ခြင်း အဘယ်ကြောင့် တန်ဖိုးရှိသည်ဟု ပြောခဲ့သနည်း။",
            optionsEn: [
              "It made the connection between structure and pollination method far clearer",
              "It was simply faster than studying one flower",
              "It let them skip dissecting the grass flower entirely",
              "It had no educational value at all",
            ],
            optionsMy: [
              "ဖွဲ့စည်းပုံနှင့် pollination နည်းလမ်းကြား ဆက်စပ်မှုကို ပို၍ ရှင်းလင်းစေခဲ့ခြင်း",
              "ပန်းတစ်မျိုးတည်းလေ့လာခြင်းထက် ရိုးရိုးရှင်းရှင်း ပိုမြန်ခဲ့ခြင်း",
              "မြက်ပန်းကို ဖျက်စိတ်ခြင်းကို လုံးဝ ကျော်သွားနိုင်စေခြင်း",
              "ပညာရေးအရ တန်ဖိုးလုံးဝမရှိခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Seeing two contrasting adaptations side by side highlights what each feature is actually for.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ဆန့်ကျင်ဘက်လိုက်လျောညီထွေဖြစ်မှုနှစ်ခုကို ယှဉ်တွဲကြည့်ခြင်းက အင်္ဂါရပ်တစ်ခုစီ အမှန်တကယ် မည်သည့်အတွက်ဖြစ်ကြောင်း ထင်ရှားစေသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w27-d5",
      dayNumber: 5,
      titleEn: "Week 27 Recap: Reproduction in Plants and Humans",
      titleMy:
          "အပတ်စဉ် ၂၇ ပြန်လည်သုံးသပ်ခြင်း - အပင်နှင့် လူသားများ၏ မျိုးပွားခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Sexual reproduction produces offspring that are...",
          questionMy:
              "လိင်ပိုင်းဆိုင်ရာမျိုးပွားခြင်းသည် မည်သို့သော သားရင်ဇာတ်များ ထုတ်လုပ်ပေးသနည်း။",
          optionsEn: [
            "Genetically varied",
            "Always identical clones",
            "Always sterile",
            "Always plants",
          ],
          optionsMy: [
            "မျိုးရိုးဗီဇကွဲပြားသည်",
            "အမြဲတမ်း တူညီသော clones",
            "အမြဲတမ်း သားစဉ်မြေးဆက်မရှိ",
            "အမြဲတမ်း အပင်များ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Pollination is the transfer of pollen from the...",
          questionMy:
              "Pollination သည် ပန်းဝတ်မှုန့်ကို မည်သည့်နေရာမှ ကူးပြောင်းခြင်းဖြစ်သနည်း။",
          optionsEn: [
            "Anther to the stigma",
            "Stigma to the anther",
            "Root to the leaf",
            "Leaf to the stem",
          ],
          optionsMy: [
            "Anther မှ stigma သို့",
            "Stigma မှ anther သို့",
            "အမြစ်မှ အရွက်သို့",
            "အရွက်မှ ပင်ရိုးသို့",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Fertilisation is the fusion of...",
          questionMy:
              "Fertilisation သည် မည်သည့်အရာနှစ်ခု ပေါင်းစပ်ခြင်းဖြစ်သနည်း။",
          optionsEn: [
            "Male and female gametes",
            "Two leaves",
            "Two roots",
            "Two stigmas",
          ],
          optionsMy: [
            "အထီးနှင့် အမ ဂျဲမက်များ",
            "အရွက်နှစ်ခု",
            "အမြစ်နှစ်ခု",
            "Stigma နှစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Asexual reproduction requires...",
          questionMy: "လိင်မဲ့မျိုးပွားခြင်းအတွက် မည်သည့်အရာ လိုအပ်သနည်း။",
          optionsEn: [
            "Only one parent",
            "Two parents always",
            "Gamete fusion always",
            "Pollination always",
          ],
          optionsMy: [
            "မိဘတစ်ဦးတည်းသာ",
            "မိဘနှစ်ဦးအမြဲ",
            "ဂျဲမက်ပေါင်းစပ်ခြင်း အမြဲ",
            "Pollination အမြဲ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In humans, the placenta exchanges nutrients and waste between the mother and the...",
          questionMy:
              "လူသားများတွင် placenta သည် မိခင်နှင့် မည်သည့်အရာကြား အာဟာရနှင့် စွန့်ပစ်ပစ္စည်းများကို လဲလှယ်ပေးသနည်း။",
          optionsEn: [
            "Developing foetus",
            "Ovary only",
            "Skin only",
            "Stigma only",
          ],
          optionsMy: [
            "ကြီးထွားနေသော သန္ဓေသား",
            "ဥပွက်ကျည်သာ",
            "အသားအရေသာ",
            "Stigma သာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Week 28 (Capstone): "Coordination & Reproduction Review"
// =====================================================================

const CourseWeekDef _igcseCombSciWeek28 = CourseWeekDef(
  id: "course-igcse-combsci-w28",
  weekNumber: 28,
  titleEn: "Coordination & Reproduction Review",
  titleMy: "ညှိနှိုင်းမှုနှင့် မျိုးပွားမှု ပြန်လည်သုံးသပ်ခြင်း",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-combsci-w28-d1",
      dayNumber: 1,
      titleEn: "Biology Coordination and Reproduction Exam Quiz",
      titleMy: "ဇီဝဗေဒ ညှိနှိုင်းမှုနှင့် မျိုးပွားမှု စာမေးပွဲပုံစံ ပဟေဋ္ဌိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which control system uses electrical impulses along neurons for very fast responses?",
          questionMy:
              "မည်သည့်ထိန်းချုပ်မှုစနစ်သည် အလွန်လျင်မြန်သောတုံ့ပြန်မှုများအတွက် အာရုံကြောများတစ်လျှောက် လျှပ်စစ်လှိုင်းများ အသုံးပြုသနည်း။",
          optionsEn: [
            "The nervous system",
            "The hormonal system only",
            "The digestive system",
            "The excretory system",
          ],
          optionsMy: [
            "အာရုံကြောစနစ်",
            "ဟိုမုန်းစနစ်သာ",
            "အစာခြေစနစ်",
            "စွန့်ပစ်ခြင်းစနစ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the system responsible for reflex arcs.",
            "It works through neurons and synapses, in contrast to the slower, blood-carried hormonal system.",
          ],
          hintsMy: [
            "ဤသည်မှာ reflex arc များအတွက် တာဝန်ရှိသော စနစ်ဖြစ်သည်။",
            "၎င်းသည် နှေးကွေး၍ သွေးဖြင့် သယ်ဆောင်သော ဟိုမုန်းစနစ်နှင့်မတူဘဲ အာရုံကြောများနှင့် ဆင်နက်ပ်စ်များကို အသုံးပြုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Which hormone lowers blood glucose after a meal?",
          questionMy:
              "အစားစားပြီးနောက် သွေးတွင်းသကြားဓာတ်ကို မည်သည့်ဟိုမုန်းက လျှော့ချပေးသနည်း။",
          optionsEn: ["Insulin", "Adrenaline", "Testosterone", "Oestrogen"],
          optionsMy: [
            "အင်ဆူလင်",
            "အက်ဒရီနလင်",
            "တက်စတိုစတီရုန်း",
            "အက်စထရိုဂျင်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This hormone is released by the pancreas whenever blood glucose rises too high.",
            "It causes liver and muscle cells to take up glucose and store it as glycogen.",
          ],
          hintsMy: [
            "ဤဟိုမုန်းကို သွေးတွင်းသကြားဓာတ် အလွန်မြင့်တက်တိုင်း ပန်ကရိယက လွှတ်ထုတ်သည်။",
            "၎င်းက အသည်းနှင့် ကြွက်သားဆဲလ်များကို သကြားဓာတ်စုပ်ယူပြီး ဂလိုင်ကိုဂျင်အဖြစ် သိုလှောင်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In sexual reproduction, genetic variation arises because...",
          questionMy:
              "လိင်ပိုင်းဆိုင်ရာမျိုးပွားခြင်းတွင် မျိုးရိုးဗီဇကွဲပြားမှု ဖြစ်ပေါ်ရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Genetic material from two different parents is combined",
            "Only one parent contributes genetic material",
            "No genetic material is involved at all",
            "The offspring is always an exact clone",
          ],
          optionsMy: [
            "မိဘနှစ်ဦးမှ မျိုးရိုးဗီဇပစ္စည်းများ ပေါင်းစပ်ခြင်းကြောင့်",
            "မိဘတစ်ဦးတည်းက မျိုးရိုးဗီဇပစ္စည်း ပံ့ပိုးပေးခြင်းကြောင့်",
            "မျိုးရိုးဗီဇပစ္စည်း လုံးဝ မပါဝင်ခြင်းကြောင့်",
            "သားရင်ဇာတ်သည် အမြဲတမ်း အတိအကျ clone ဖြစ်ခြင်းကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the key difference between sexual and asexual reproduction.",
            "Combining genetic material from two sources is why sexually produced offspring are not identical to either parent.",
          ],
          hintsMy: [
            "ဤသည်မှာ လိင်ပိုင်းဆိုင်ရာနှင့် လိင်မဲ့မျိုးပွားခြင်းကြား အဓိကကွာခြားချက်ဖြစ်သည်။",
            "အရင်းအမြစ်နှစ်ခုမှ မျိုးရိုးဗီဇပစ္စည်း ပေါင်းစပ်ခြင်းသည် လိင်ပိုင်းဆိုင်ရာသားရင်ဇာတ်များ မိဘတစ်ဦးဦးနှင့်မျှ မတူရသည့်အကြောင်းရင်းဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Negative feedback in the body works by...",
          questionMy:
              "ခန္ဓာကိုယ်ရှိ negative feedback သည် မည်သို့ အလုပ်လုပ်သနည်း။",
          optionsEn: [
            "Detecting a change from normal and triggering a response to correct it",
            "Amplifying a change further with no correction",
            "Ignoring changes in internal conditions entirely",
            "Only affecting the reproductive system",
          ],
          optionsMy: [
            "ပုံမှန်အနေအထားမှ ပြောင်းလဲမှုကို တွေ့ရှိပြီး ပြင်ဆင်ရန် တုံ့ပြန်မှုကို လှုံ့ဆော်ခြင်း",
            "ပြင်ဆင်ခြင်းမပါဘဲ ပြောင်းလဲမှုကို ပို၍ ချဲ့ထွင်ခြင်း",
            "အတွင်းပိုင်းအခြေအနေများ၏ ပြောင်းလဲမှုကို လုံးဝ လျစ်လျူရှုခြင်း",
            "မျိုးပွားစနစ်ကိုသာ သက်ရောက်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the same general pattern seen in both blood glucose control and body temperature control.",
            "Once the correction restores normal conditions, the response switches off again.",
          ],
          hintsMy: [
            "ဤသည်မှာ သွေးတွင်းသကြားဓာတ်ထိန်းချုပ်မှုနှင့် ခန္ဓာကိုယ်အပူချိန်ထိန်းချုပ်မှု နှစ်ခုစလုံးတွင် တွေ့ရသော ယေဘုယျပုံစံ တူညီသည်။",
            "ပြင်ဆင်မှုက ပုံမှန်အခြေအနေကို ပြန်ရရှိစေသောအခါ တုံ့ပြန်မှု ပြန်ပိတ်သွားသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w28-d2",
      dayNumber: 2,
      titleEn: "Match the Life Processes Vocabulary",
      titleMy: "အသက်ရှင်ဖြစ်စဉ်ဆိုင်ရာ ဝေါဟာရများ ကိုက်ညီစွာ တွဲချိတ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsecs-w28-dm-1",
          termEn: "Hormonal Pathway",
          termMy: "ဟိုမုန်းလမ်းကြောင်း (Hormonal Pathway)",
          matchEn:
              "The route a hormone travels: released by a gland into the blood, carried to a target organ, producing an effect there.",
          matchMy:
              "ဟိုမုန်းတစ်ခု ခရီးသွားသည့်လမ်းကြောင်း: ဂလင်းတစ်ခုမှ သွေးထဲသို့ လွှတ်ထုတ်ပြီး ပစ်မှတ်အင်္ဂါသို့ သယ်ဆောင်ကာ ထိုနေရာတွင် သက်ရောက်မှုဖြစ်စေခြင်း။",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "igcsecs-w28-dm-2",
          termEn: "Negative Feedback",
          termMy: "Negative Feedback",
          matchEn:
              "A control mechanism that detects a change from normal and triggers a response to correct it back towards normal.",
          matchMy:
              "ပုံမှန်အနေအထားမှ ပြောင်းလဲမှုကို တွေ့ရှိပြီး ပုံမှန်အနေအထားသို့ ပြန်ပြင်ဆင်ရန် တုံ့ပြန်မှုကို လှုံ့ဆော်ပေးသော ထိန်းချုပ်မှုယန္တရား။",
          colorValue: 0xFFFF7F91,
        ),
        DragMatchPair(
          id: "igcsecs-w28-dm-3",
          termEn: "Menstrual Cycle",
          termMy: "Menstrual Cycle",
          matchEn:
              "The roughly monthly hormonal cycle in the human female reproductive system that prepares the uterus lining for a possible pregnancy.",
          matchMy:
              "ဖြစ်နိုင်ချေရှိသော ကိုယ်ဝန်အတွက် သားအိမ်အတွင်းသားကို ပြင်ဆင်ပေးသော၊ လူ့အမလိင်မျိုးပွားစနစ်ရှိ ခန့်မှန်းအားဖြင့် တစ်လတစ်ကြိမ် ဟိုမုန်းစက်ဝန်း။",
          colorValue: 0xFFFFBF3C,
        ),
        DragMatchPair(
          id: "igcsecs-w28-dm-4",
          termEn: "Fertilisation",
          termMy: "Fertilisation",
          matchEn:
              "The fusion of a male gamete's nucleus with a female gamete's nucleus.",
          matchMy:
              "အထီးဂျဲမက်၏ nucleus သည် အမဂျဲမက်၏ nucleus နှင့် ပေါင်းစပ်ခြင်း။",
          colorValue: 0xFF7271F7,
        ),
        DragMatchPair(
          id: "igcsecs-w28-dm-5",
          termEn: "Homeostasis",
          termMy: "Homeostasis",
          matchEn:
              "The maintenance of a constant internal environment despite changes outside the body.",
          matchMy:
              "ခန္ဓာကိုယ်ပြင်ပရှိ ပြောင်းလဲမှုများ ရှိနေသော်လည်း အတွင်းပိုင်းပတ်ဝန်းကျင်ကို ဆက်လက်ထိန်းသိမ်းခြင်း။",
          colorValue: 0xFFB5B557,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w28-d3",
      dayNumber: 3,
      titleEn: "Sort: Coordination, Homeostasis, or Reproduction?",
      titleMy:
          "စီစစ်ကြမည် - ညှိနှိုင်းဆောင်ရွက်မှု၊ Homeostasis (သို့) မျိုးပွားခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Coordination (Nervous/Hormonal)",
          "Homeostasis",
          "Reproduction",
        ],
        bucketsMy: [
          "ညှိနှိုင်းဆောင်ရွက်မှု (အာရုံကြော/ဟိုမုန်း)",
          "Homeostasis",
          "မျိုးပွားခြင်း",
        ],
        items: [
          SortingItem(
            id: "igcsecs-w28-sort-1",
            labelEn: "A reflex arc responding to a hot object",
            labelMy: "ပူသောအရာဝတ္ထုတစ်ခုအား တုံ့ပြန်သော reflex arc",
            correctBucketEn: "Coordination (Nervous/Hormonal)",
            correctBucketMy: "ညှိနှိုင်းဆောင်ရွက်မှု (အာရုံကြော/ဟိုမုန်း)",
          ),
          SortingItem(
            id: "igcsecs-w28-sort-2",
            labelEn: "Insulin being released by the pancreas",
            labelMy: "ပန်ကရိယမှ လွှတ်ထုတ်နေသော အင်ဆူလင်",
            correctBucketEn: "Coordination (Nervous/Hormonal)",
            correctBucketMy: "ညှိနှိုင်းဆောင်ရွက်မှု (အာရုံကြော/ဟိုမုန်း)",
          ),
          SortingItem(
            id: "igcsecs-w28-sort-3",
            labelEn: "Vasodilation to cool the body down",
            labelMy: "ခန္ဓာကိုယ်ကို အေးမြစေရန် vasodilation",
            correctBucketEn: "Homeostasis",
            correctBucketMy: "Homeostasis",
          ),
          SortingItem(
            id: "igcsecs-w28-sort-4",
            labelEn: "The kidneys filtering urea out of the blood",
            labelMy: "သွေးမှ ယူးရီးယားကို စစ်ထုတ်ပေးနေသော ကျောက်ကပ်များ",
            correctBucketEn: "Homeostasis",
            correctBucketMy: "Homeostasis",
          ),
          SortingItem(
            id: "igcsecs-w28-sort-5",
            labelEn: "Blood glucose being maintained at a stable level",
            labelMy: "တည်ငြိမ်သောအဆင့်တွင် ထိန်းသိမ်းထားသော သွေးတွင်းသကြားဓာတ်",
            correctBucketEn: "Homeostasis",
            correctBucketMy: "Homeostasis",
          ),
          SortingItem(
            id: "igcsecs-w28-sort-6",
            labelEn: "Pollination transferring pollen between flowers",
            labelMy: "ပန်းများကြား ပန်းဝတ်မှုန့်ကူးပြောင်းသော pollination",
            correctBucketEn: "Reproduction",
            correctBucketMy: "မျိုးပွားခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w28-sort-7",
            labelEn: "A zygote forming after fertilisation",
            labelMy: "Fertilisation ပြီးနောက် ဖွဲ့စည်းလာသော zygote",
            correctBucketEn: "Reproduction",
            correctBucketMy: "မျိုးပွားခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w28-sort-8",
            labelEn: "The placenta exchanging nutrients with a foetus",
            labelMy: "သန္ဓေသားနှင့် အာဟာရလဲလှယ်နေသော placenta",
            correctBucketEn: "Reproduction",
            correctBucketMy: "မျိုးပွားခြင်း",
          ),
          SortingItem(
            id: "igcsecs-w28-sort-9",
            labelEn: "A neuron transmitting an electrical impulse",
            labelMy: "လျှပ်စစ်လှိုင်းတစ်ခု ပို့ဆောင်နေသော အာရုံကြော",
            correctBucketEn: "Coordination (Nervous/Hormonal)",
            correctBucketMy: "ညှိနှိုင်းဆောင်ရွက်မှု (အာရုံကြော/ဟိုမုန်း)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w28-d4",
      dayNumber: 4,
      titleEn: "Reading: Aye Chan's Menstrual Cycle Case Study",
      titleMy: "စာဖတ်ခြင်း - အေးချမ်း၏ Menstrual Cycle စာတမ်းလေ့လာမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Aye Chan's Menstrual Cycle Case Study",
        titleMy: "အေးချမ်း၏ Menstrual Cycle စာတမ်းလေ့လာမှု",
        passageEn:
            "For the term's capstone exam practice, Aye Chan worked through a case study combining hormonal coordination with human reproduction: a graph showing how four different hormone levels changed across a twenty-eight day menstrual cycle, and a set of questions asking her to interpret it.\n\nAye Chan noted that oestrogen levels rose steadily during the first half of the cycle, causing the uterus lining to thicken in preparation for a possible pregnancy. Around day fourteen, a sharp spike in another hormone triggered ovulation -- the release of an egg from the ovary. In the second half of the cycle, Aye Chan observed that progesterone levels rose, maintaining the thickened uterus lining in case a fertilised egg arrived.\n\nThe final part of the question asked what would happen to these hormone levels if the egg was not fertilised. Aye Chan reasoned through it using the negative feedback idea from Week 26: without a fertilised egg to maintain them, progesterone and oestrogen levels would fall sharply towards the end of the cycle, and this drop would cause the thickened uterus lining to break down and be shed -- menstruation -- after which the whole cycle would begin again from day one. Her teacher praised her for recognising that a graph of changing hormone levels tells the same kind of story as a reflex arc diagram or a negative feedback loop: cause, response, and consequence, just unfolding over days rather than milliseconds.",
        passageMy:
            "ထိုနှစ်ဝက်၏ အနှစ်ချုပ်စာမေးပွဲ လေ့ကျင့်ခန်းအတွက် အေးချမ်းသည် ဟိုမုန်းညှိနှိုင်းဆောင်ရွက်မှုနှင့် လူသားမျိုးပွားခြင်းကို ပေါင်းစပ်ထားသော စာတမ်းလေ့လာမှုတစ်ခုကို ဖြေရှင်းခဲ့သည်: နှစ်ဆယ့်ရှစ်ရက်ကြာ menstrual cycle တစ်လျှောက် ဟိုမုန်းအမျိုးအစားလေးမျိုး၏ ပမာဏ မည်သို့ပြောင်းလဲခဲ့ကြောင်း ပြသသော ဂရပ်တစ်ခုနှင့် ၎င်းကို အနက်ဖွင့်ဆိုရန် တောင်းဆိုသော မေးခွန်းအစုံတစ်ခု ပါဝင်သည်။\n\nအေးချမ်းသည် အက်စထရိုဂျင်ပမာဏသည် cycle ၏ ပထမတစ်ဝက်တွင် တဖြည်းဖြည်း တက်လာသည်ကို သတိပြုမိပြီး၊ ၎င်းက ဖြစ်နိုင်ချေရှိသော ကိုယ်ဝန်အတွက် ပြင်ဆင်ရန် သားအိမ်အတွင်းသားကို ထူလာစေသည်။ ၁၄ ရက်မြောက်နေ့ခန့်တွင် အခြားဟိုမုန်းတစ်ခု၏ ရုတ်တရက်မြင့်တက်မှုက ovulation -- ဥပွက်ကျည်မှ ဥလွတ်မြောက်ခြင်း -- ကို လှုံ့ဆော်ခဲ့သည်။ cycle ၏ ဒုတိယတစ်ဝက်တွင် progesterone ပမာဏတက်လာသည်ကို အေးချမ်း တွေ့ရှိခဲ့ပြီး၊ ၎င်းက fertilise ဖြစ်ထားသော ဥတစ်ခု ရောက်ရှိလာသည့်အခါအတွက် ထူသောသားအိမ်အတွင်းသားကို ဆက်လက်ထိန်းသိမ်းပေးသည်။\n\nမေးခွန်း၏ နောက်ဆုံးပိုင်းက ဥသည် fertilise မဖြစ်ခဲ့ပါက ဤဟိုမုန်းပမာဏများအား အဘယ်အရာ ဖြစ်ပျက်မည်ကို မေးမြန်းခဲ့သည်။ အေးချမ်းသည် အပတ်စဉ် ၂၆ မှ negative feedback အယူအဆကို အသုံးပြု၍ ဆင်ခြင်ခဲ့သည်: ၎င်းတို့ကို ထိန်းသိမ်းပေးမည့် fertilise ဖြစ်ထားသော ဥ မရှိသောကြောင့် progesterone နှင့် အက်စထရိုဂျင် ပမာဏများသည် cycle ၏ အဆုံးဘက်တွင် ချက်ချင်းလျှင် ကျဆင်းသွားမည်ဖြစ်ပြီး၊ ဤကျဆင်းမှုက ထူထားသော သားအိမ်အတွင်းသားကို ပြိုကွဲစေကာ လွတ်ကျသွားစေမည် -- menstruation -- ထို့နောက် cycle တစ်ခုလုံး ပထမနေ့မှ ပြန်စတင်မည်။ သူ၏ဆရာမက ဟိုမုန်းပမာဏပြောင်းလဲမှု ဂရပ်တစ်ခုသည် reflex arc ပုံနှင့် (သို့) negative feedback loop နှင့် ဇာတ်လမ်းတစ်မျိုးတည်း ပြောပြသည်ကို အေးချမ်း သိရှိခဲ့ခြင်းအတွက် ချီးမွမ်းခဲ့သည်: အကြောင်းရင်း၊ တုံ့ပြန်မှုနှင့် အကျိုးဆက်၊ စက္ကန့်ပိုင်းအစား ရက်ပေါင်းများစွာအတွင်း ဖြစ်ပွားသည့် ခြားနားချက်သာရှိသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What did rising oestrogen levels cause during the first half of the cycle?",
            questionMy:
                "Cycle ၏ ပထမတစ်ဝက်တွင် တက်လာသော အက်စထရိုဂျင်ပမာဏက အဘယ်အရာ ဖြစ်စေခဲ့သနည်း။",
            optionsEn: [
              "The uterus lining thickened in preparation for a possible pregnancy",
              "The egg was immediately fertilised",
              "The uterus lining broke down immediately",
              "Ovulation was permanently prevented",
            ],
            optionsMy: [
              "ဖြစ်နိုင်ချေရှိသော ကိုယ်ဝန်အတွက် ပြင်ဆင်ရန် သားအိမ်အတွင်းသားထူလာခြင်း",
              "ဥသည် ချက်ချင်းလျှင် fertilise ဖြစ်ခဲ့ခြင်း",
              "သားအိမ်အတွင်းသား ချက်ချင်းလျှင် ပြိုကွဲသွားခြင်း",
              "Ovulation ကို အမြဲတမ်း တားဆီးခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of oestrogen's effect.",
              "This thickened lining prepares the uterus in case a fertilised egg needs to implant.",
            ],
            hintsMy: [
              "အက်စထရိုဂျင်၏ သက်ရောက်မှုကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤထူသောအတွင်းသားက fertilise ဖြစ်ထားသော ဥ implant ဖြစ်ရန် လိုအပ်ပါက သားအိမ်ကို ပြင်ဆင်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn: "What happened around day fourteen of the cycle?",
            questionMy:
                "Cycle ၏ ၁၄ ရက်မြောက်နေ့ခန့်တွင် အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "A hormone spike triggered ovulation, releasing an egg from the ovary",
              "The uterus lining was completely shed",
              "Progesterone levels fell to zero",
              "The whole cycle restarted from the beginning",
            ],
            optionsMy: [
              "ဟိုမုန်းရုတ်တရက်မြင့်တက်မှုက ovulation ကို လှုံ့ဆော်ပြီး ဥပွက်ကျည်မှ ဥကို လွှတ်ခဲ့ခြင်း",
              "သားအိမ်အတွင်းသားကို လုံးဝ လွှတ်ချခဲ့ခြင်း",
              "Progesterone ပမာဏ သုညသို့ ကျဆင်းသွားခြင်း",
              "Cycle တစ်ခုလုံး အစမှ ပြန်စတင်ခဲ့ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second paragraph's description of day fourteen.",
              "Ovulation is the release of an egg, triggered by a sharp hormone spike.",
            ],
            hintsMy: [
              "၁၄ ရက်မြောက်နေ့ကို ဖော်ပြထားသည့် ဒုတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "Ovulation သည် ဟိုမုန်း ရုတ်တရက်မြင့်တက်မှုက လှုံ့ဆော်ပေးသော ဥလွတ်မြောက်ခြင်းဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What would happen to hormone levels if the egg was not fertilised?",
            questionMy:
                "ဥ fertilise မဖြစ်ခဲ့ပါက ဟိုမုန်းပမာဏများအား အဘယ်အရာ ဖြစ်ပျက်မည်နည်း။",
            optionsEn: [
              "Progesterone and oestrogen levels would fall sharply, causing the uterus lining to be shed",
              "Progesterone and oestrogen levels would rise forever",
              "Nothing would change at all",
              "Ovulation would happen again immediately",
            ],
            optionsMy: [
              "Progesterone နှင့် အက်စထရိုဂျင်ပမာဏများ ချက်ချင်းလျှင် ကျဆင်းသွားပြီး သားအိမ်အတွင်းသား လွတ်ကျသွားစေခြင်း",
              "Progesterone နှင့် အက်စထရိုဂျင်ပမာဏများ ထာဝစဉ် တက်လာမည်",
              "မည်သည့်အရာမျှ လုံးဝ မပြောင်းလဲပါ",
              "Ovulation ချက်ချင်းလျှင် ထပ်ဖြစ်ပေါ်လာမည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the third paragraph's explanation using negative feedback reasoning.",
              "Without a fertilised egg to maintain them, both hormones drop, triggering menstruation.",
            ],
            hintsMy: [
              "Negative feedback ဆင်ခြင်တွေးခေါ်မှုကို အသုံးပြု၍ ရှင်းပြထားသည့် တတိယစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
              "၎င်းတို့ကို ထိန်းသိမ်းပေးမည့် fertilise ဖြစ်ထားသောဥ မရှိသောကြောင့် ဟိုမုန်းနှစ်မျိုးစလုံး ကျဆင်းသွားပြီး menstruation ကို လှုံ့ဆော်ပေးသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What connection did Aye Chan's teacher praise her for recognising?",
            questionMy:
                "အေးချမ်း၏ဆရာမသည် သူမ မည်သည့်ဆက်စပ်မှုကို သိရှိခဲ့ကြောင်း ချီးမွမ်းခဲ့သနည်း။",
            optionsEn: [
              "That a hormone-level graph tells the same kind of cause-response-consequence story as a reflex arc or negative feedback loop",
              "That menstruation has no connection to hormones at all",
              "That reflex arcs and hormone cycles are completely unrelated",
              "That graphs cannot be used to explain biological processes",
            ],
            optionsMy: [
              "ဟိုမုန်းပမာဏဂရပ်တစ်ခုသည် reflex arc (သို့) negative feedback loop နှင့် အကြောင်းရင်း-တုံ့ပြန်မှု-အကျိုးဆက် ဇာတ်လမ်းတစ်မျိုးတည်း ပြောပြခြင်း",
              "Menstruation သည် ဟိုမုန်းများနှင့် မည်သည့်ဆက်စပ်မှုမျှမရှိကြောင်း",
              "Reflex arc များနှင့် ဟိုမုန်းစက်ဝန်းများသည် လုံးဝ မသက်ဆိုင်ကြောင်း",
              "ဇီဝဗေဒဖြစ်စဉ်များကို ရှင်းပြရန် ဂရပ်များကို အသုံးပြု၍ မရနိုင်ကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is stated directly in the passage's final sentence.",
              "Both patterns share the same underlying structure -- just on very different timescales.",
            ],
            hintsMy: [
              "ဤအချက်ကို စာပိုဒ်၏ နောက်ဆုံးဝါကျတွင် တိုက်ရိုက်ဖော်ပြထားသည်။",
              "ပုံစံနှစ်ခုစလုံးသည် တူညီသော အခြေခံဖွဲ့စည်းပုံကို ကိုင်စွဲထားသည် -- အလွန်ကွဲပြားသော အချိန်ကာလများပေါ်တွင်သာ ခြားနားသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-combsci-w28-d5",
      dayNumber: 5,
      titleEn: "Term 7 Recap: Coordination, Response and Reproduction",
      titleMy:
          "သတ္တမနှစ်ဝက် ပြန်လည်သုံးသပ်ခြင်း - ညှိနှိုင်းမှု၊ တုံ့ပြန်မှုနှင့် မျိုးပွားမှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Neurons transmit signals as...",
          questionMy:
              "အာရုံကြောများသည် အချက်ပြမှုများကို မည်သို့ ပို့ဆောင်သနည်း။",
          optionsEn: [
            "Electrical impulses",
            "Hormones only",
            "Sound waves",
            "Light waves",
          ],
          optionsMy: [
            "လျှပ်စစ်လှိုင်းများ",
            "ဟိုမုန်းများသာ",
            "အသံလှိုင်းများ",
            "အလင်းလှိုင်းများ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Insulin lowers blood glucose by causing cells to...",
          questionMy:
              "အင်ဆူလင်သည် ဆဲလ်များကို မည်သို့ဖြစ်စေခြင်းဖြင့် သွေးတွင်းသကြားဓာတ်ကို လျှော့ချသနည်း။",
          optionsEn: [
            "Take up and store glucose",
            "Release more glucose",
            "Stop working entirely",
            "Produce more urea",
          ],
          optionsMy: [
            "သကြားဓာတ် စုပ်ယူပြီး သိုလှောင်ခြင်း",
            "သကြားဓာတ် ပို၍ လွှတ်ထုတ်ခြင်း",
            "လုံးဝ အလုပ်ရပ်တန့်ခြင်း",
            "ယူးရီးယား ပို၍ ထုတ်လုပ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Sexual reproduction produces genetic variation because...",
          questionMy:
              "လိင်ပိုင်းဆိုင်ရာမျိုးပွားခြင်းသည် မည်သည့်အကြောင်းကြောင့် မျိုးရိုးဗီဇကွဲပြားမှု ဖြစ်ပေါ်စေသနည်း။",
          optionsEn: [
            "It combines genetic material from two parents",
            "It uses only one parent",
            "No fertilisation occurs",
            "Offspring are always identical clones",
          ],
          optionsMy: [
            "မိဘနှစ်ဦးမှ မျိုးရိုးဗီဇပစ္စည်းများ ပေါင်းစပ်ခြင်းကြောင့်",
            "မိဘတစ်ဦးတည်း အသုံးပြုသောကြောင့်",
            "Fertilisation လုံးဝ မဖြစ်ပေါ်သောကြောင့်",
            "သားရင်ဇာတ်များ အမြဲတမ်း တူညီသော clones ဖြစ်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Homeostasis maintains a constant...",
          questionMy:
              "Homeostasis သည် မည်သည့်အရာကို တည်ငြိမ်စွာ ထိန်းသိမ်းပေးသနည်း။",
          optionsEn: [
            "Internal environment",
            "External weather",
            "Muscle colour",
            "Eye shape",
          ],
          optionsMy: [
            "အတွင်းပိုင်းပတ်ဝန်းကျင်",
            "ပြင်ပရာသီဥတု",
            "ကြွက်သားအရောင်",
            "မျက်လုံးပုံသဏ္ဌာန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A reflex arc pathway does NOT require...",
          questionMy:
              "Reflex arc လမ်းကြောင်းသည် မည်သည့်အရာကို မလိုအပ်ဘဲ ဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "Conscious processing by the brain's cerebrum",
            "A receptor",
            "An effector",
            "A neuron",
          ],
          optionsMy: [
            "ဦးနှောက်၏ cerebrum ဖြင့် အသိစိတ်လုပ်ငန်းစဉ်လုပ်ဆောင်ခြင်း",
            "လက်ခံကိရိယာ",
            "တုံ့ပြန်ကိရိယာ",
            "အာရုံကြော",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

// =====================================================================
// Term 7: "Coordination, Response and Reproduction" (Weeks 25-28)
// =====================================================================

const CourseTermDef igcseCombinedScienceTerm7 = CourseTermDef(
  id: "course-igcse-combsci-t7",
  termNumber: 7,
  titleEn: "Coordination, Response and Reproduction",
  titleMy: "ညှိနှိုင်းမှု၊ တုံ့ပြန်မှုနှင့် မျိုးပွားမှု",
  certificateTitleEn: "Coordination, Response and Reproduction",
  certificateTitleMy: "ညှိနှိုင်းမှု၊ တုံ့ပြန်မှုနှင့် မျိုးပွားမှု",
  weeks: [
    _igcseCombSciWeek25,
    _igcseCombSciWeek26,
    _igcseCombSciWeek27,
    _igcseCombSciWeek28,
  ],
);
