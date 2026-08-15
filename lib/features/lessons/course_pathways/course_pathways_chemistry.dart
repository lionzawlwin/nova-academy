import '../../../models/child_model.dart';
import '../interactive_content_models.dart';
import '../mock_quiz_data.dart';
import 'course_pathways_core.dart';
// =====================================================================
// Week 1: "The Particulate Nature of Matter"
// =====================================================================

const CourseWeekDef _igcseChemWeek1 = CourseWeekDef(
  id: "course-igcse-chem-w1",
  weekNumber: 1,
  titleEn: "The Particulate Nature of Matter",
  titleMy: "ဒြပ်ဝတ္ထု၏ အမှုန်သဘောသဘာဝ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w1-d1",
      dayNumber: 1,
      titleEn: "Solids, Liquids, and Gases",
      titleMy: "အစိုင်အခဲ၊ အရည်နှင့် ဓာတ်ငွေ့များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In a solid, why do particles vibrate but not move from place to place?",
          questionMy:
              "အစိုင်အခဲတစ်ခုတွင် အမှုန်များသည် တနေရာမှ တနေရာသို့ မရွေ့လျားဘဲ အဘယ်ကြောင့် တုန်ခါနေသနည်း။",
          optionsEn: [
            "Strong forces of attraction hold particles in fixed positions",
            "The particles have no energy at all",
            "The particles repel each other completely",
            "There are no forces between particles in a solid",
          ],
          optionsMy: [
            "ခိုင်မာသော ဆွဲငင်အားများက အမှုန်များကို တည်နေရာတွင် ခိုင်ခိုင်မြဲမြဲ ထိန်းထားခြင်း",
            "အမှုန်များတွင် စွမ်းအင် လုံးဝ မရှိခြင်း",
            "အမှုန်များ တစ်ခုနှင့်တစ်ခု လုံးလုံး တွန်းလှန်ခြင်း",
            "အစိုင်အခဲတစ်ခုတွင် အမှုန်များကြား အားများ လုံးဝ မရှိခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "In a solid, particles are packed closely together in a regular, fixed arrangement.",
            "Vibration is possible because particles still have some kinetic energy, but the strong forces prevent them from moving away from their position.",
          ],
          hintsMy: [
            "အစိုင်အခဲတစ်ခုတွင် အမှုန်များသည် ပုံမှန်၊ တည်ငြိမ်သော အစီအစဉ်ဖြင့် နီးကပ်စွာ ထုပ်ပိုးထားသည်။",
            "အမှုန်များတွင် Kinetic Energy အနည်းငယ် ရှိနေသေးသောကြောင့် တုန်ခါနေနိုင်သော်လည်း ခိုင်မာသောအားများက ၎င်းတို့၏ တည်နေရာမှ ရွေ့လျားခွင့် မပေးပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which state of matter has particles that are far apart and move randomly at high speed?",
          questionMy:
              "ဒြပ်ဝတ္ထု၏ မည်သည့်အခြေအနေတွင် အမှုန်များသည် ဝေးကွာစွာ ရှိပြီး မြန်နှုန်းမြင့်စွာ ကျပန်း ရွေ့လျားသနည်း။",
          optionsEn: ["Gas", "Solid", "Liquid", "None of these states"],
          optionsMy: [
            "ဓာတ်ငွေ့",
            "အစိုင်အခဲ",
            "အရည်",
            "ဤအခြေအနေများ မည်သည့်တစ်ခုမျှ မဟုတ်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "In this state, the forces between particles are so weak they are almost negligible.",
            "This is why gases have no fixed shape or volume, filling whatever container they are in.",
          ],
          hintsMy: [
            "ဤအခြေအနေတွင် အမှုန်များကြား အားများသည် လျစ်လျူရှုနိုင်လောက်အောင် အားနည်းသည်။",
            "ဤသည်မှာ ဓာတ်ငွေ့များ ပုံသေအရွယ်အစား သို့မဟုတ် ဝင်ရိုးဆမ်း မရှိဘဲ ၎င်းတို့ ရှိနေသော ခွက်တစ်ခုခုကို ဖြည့်စေခြင်း၏ အကြောင်းရင်းဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "During melting, the temperature of a substance stays constant even though heat is still being supplied. Why?",
          questionMy:
              "အရည်ပျော်ချိန် ပစ္စည်းတစ်ခု၏ အပူချိန်သည် အပူ ဆက်လက် ပေးနေသော်လည်း အဘယ်ကြောင့် တည်ငြိမ်နေသနည်း။",
          optionsEn: [
            "The energy is being used to break the forces holding particles in fixed positions, not to increase particle speed",
            "The substance has stopped absorbing any heat",
            "The particles have stopped moving completely",
            "Melting never actually requires any energy",
          ],
          optionsMy: [
            "စွမ်းအင်ကို အမှုန်များ လျင်မြန်နှုန်း တိုးမြှင့်ရန်မဟုတ်ဘဲ တည်နေရာတွင် ထိန်းထားသော အားများကို ချိုးဖျက်ရန် သုံးစွဲနေသောကြောင့်",
            "ပစ္စည်းသည် အပူ စုပ်ယူမှု လုံးဝ ရပ်တန့်သွားသောကြောင့်",
            "အမှုန်များ လုံးဝ ရွေ့လျားခြင်း ရပ်တန့်သွားသောကြောင့်",
            "အရည်ပျော်ခြင်းအတွက် စွမ်းအင် လုံးဝ မလိုအပ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is why a heating curve shows a flat, horizontal section during melting and boiling.",
            "Once all the forces are broken and the state change is complete, the temperature starts rising again.",
          ],
          hintsMy: [
            "ဤသည်မှာ Heating Curve တစ်ခုတွင် အရည်ပျော်ချိန်နှင့် ဆူပွက်ချိန်၌ ညီညာသော၊ အလျားလိုက် အပိုင်းကို ပြသရသည့် အကြောင်းရင်းဖြစ်သည်။",
            "အားများ အားလုံး ချိုးဖျက်ပြီး အခြေအနေပြောင်းလဲမှု ပြီးစီးသွားသောအခါ အပူချိန် ထပ်မံ မြင့်တက်လာသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w1-d2",
      dayNumber: 2,
      titleEn: "Match: States of Matter Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ဒြပ်ဝတ္ထု အခြေအနေများ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w1-dm-1",
          termEn: "Sublimation",
          termMy: "Sublimation",
          matchEn:
              "The direct change of state from solid to gas, without passing through the liquid state",
          matchMy:
              "အရည်အခြေအနေကို မဖြတ်ကျော်ဘဲ အစိုင်အခဲမှ ဓာတ်ငွေ့သို့ တိုက်ရိုက် အခြေအနေ ပြောင်းလဲခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w1-dm-2",
          termEn: "Diffusion",
          termMy: "Diffusion",
          matchEn:
              "The net movement of particles from a region of high concentration to low concentration, due to random motion",
          matchMy:
              "ကျပန်း ရွေ့လျားမှုကြောင့် အမှုန်များ သိပ်သည်းဆမြင့်ရာမှ နိမ့်ရာသို့ အသားတင် ရွေ့လျားခြင်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w1-dm-3",
          termEn: "Condensation",
          termMy: "Condensation",
          matchEn:
              "The change of state from gas to liquid, as particles lose energy and slow down",
          matchMy:
              "အမှုန်များ စွမ်းအင် ဆုံးရှုံးကာ နှေးကွေးလာသဖြင့် ဓာတ်ငွေ့မှ အရည်သို့ အခြေအနေ ပြောင်းလဲခြင်း",
          colorValue: 0xFF00BCD4,
        ),
        DragMatchPair(
          id: "igcsechem-w1-dm-4",
          termEn: "Heating curve",
          termMy: "Heating Curve",
          matchEn:
              "A graph showing how temperature changes over time as a substance is heated, with flat sections during state changes",
          matchMy:
              "ပစ္စည်းတစ်ခုကို အပူပေးစဉ် အချိန်နှင့်အမျှ အပူချိန် မည်သို့ ပြောင်းလဲကြောင်း ပြသသော ဂရပ်၊ အခြေအနေ ပြောင်းလဲစဉ် ညီညာသော အပိုင်းများပါဝင်သည်",
          colorValue: 0xFFFF9800,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w1-d3",
      dayNumber: 3,
      titleEn: "Sort: Solid, Liquid, or Gas?",
      titleMy: "စီစစ်ကြမည် - အစိုင်အခဲလား၊ အရည်လား၊ ဓာတ်ငွေ့လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Solid", "Liquid", "Gas"],
        bucketsMy: ["အစိုင်အခဲ", "အရည်", "ဓာတ်ငွေ့"],
        items: [
          SortingItem(
            id: "igcsechem-w1-sort-1",
            labelEn: "Has a fixed shape and a fixed volume",
            labelMy: "ပုံသေအရွယ်အစားနှင့် ပုံသေဝင်ရိုးဆမ်း ရှိခြင်း",
            correctBucketEn: "Solid",
            correctBucketMy: "အစိုင်အခဲ",
          ),
          SortingItem(
            id: "igcsechem-w1-sort-2",
            labelEn: "Has a fixed volume but takes the shape of its container",
            labelMy:
                "ပုံသေဝင်ရိုးဆမ်း ရှိသော်လည်း ၎င်း၏ ခွက်ပုံသဏ္ဌာန်ကို ယူသည်",
            correctBucketEn: "Liquid",
            correctBucketMy: "အရည်",
          ),
          SortingItem(
            id: "igcsechem-w1-sort-3",
            labelEn:
                "Has no fixed shape or volume, and fills its container completely",
            labelMy:
                "ပုံသေပုံသဏ္ဌာန် သို့မဟုတ် ဝင်ရိုးဆမ်း မရှိဘဲ ၎င်း၏ ခွက်ကို လုံးလုံး ဖြည့်သည်",
            correctBucketEn: "Gas",
            correctBucketMy: "ဓာတ်ငွေ့",
          ),
          SortingItem(
            id: "igcsechem-w1-sort-4",
            labelEn:
                "Particles are packed in a regular, fixed arrangement with strong forces of attraction",
            labelMy:
                "အမှုန်များသည် ခိုင်မာသော ဆွဲငင်အားများနှင့် ပုံမှန်၊ တည်ငြိမ်သော အစီအစဉ်ဖြင့် ထုပ်ပိုးထားသည်",
            correctBucketEn: "Solid",
            correctBucketMy: "အစိုင်အခဲ",
          ),
          SortingItem(
            id: "igcsechem-w1-sort-5",
            labelEn:
                "Particles are far apart with very weak forces of attraction between them",
            labelMy:
                "အမှုန်များ ဝေးကွာစွာ ရှိပြီး ၎င်းတို့ကြား ဆွဲငင်အားများ အလွန်အားနည်းသည်",
            correctBucketEn: "Gas",
            correctBucketMy: "ဓာတ်ငွေ့",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w1-d4",
      dayNumber: 4,
      titleEn: "Reading: Shin Thant's Perfume Experiment",
      titleMy: "စာဖတ်ခြင်း - ရှင်သန့်၏ ရေမွှေးစမ်းသပ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Shin Thant's Perfume Experiment",
        titleMy: "ရှင်သန့်၏ ရေမွှေးစမ်းသပ်မှု",
        passageEn:
            "For a simple demonstration in Chemistry class, Shin Thant's teacher opened a small bottle of perfume at the front of a still, quiet classroom, and asked every student to raise a hand the moment they could smell it. Within about thirty seconds, students in the front row raised their hands, and over the next two minutes, the wave of raised hands spread steadily backward until students at the very back of the room could smell it too, even though nobody had walked the perfume molecules to the back of the room themselves.\n\nHer teacher explained that this was diffusion in action: perfume molecules, being a gas at room temperature, spread out from a region of high concentration near the open bottle to regions of low concentration further away, driven purely by the random motion of the particles themselves. She asked the class to predict what would happen if the same experiment were repeated with the classroom windows open and a fan running -- most students correctly guessed that air currents would carry the scent around far faster than diffusion alone, since diffusion by random particle motion is a relatively slow process compared to bulk movement of air.\n\nShin Thant then asked why the smell had reached the back of the room in only a couple of minutes if gas particles move as fast as her teacher had claimed -- hundreds of metres per second. Her teacher explained that this seeming contradiction was due to the huge number of collisions gas particles undergo with air molecules already filling the room: each perfume molecule travelled in a fast but extremely short, zigzagging path, constantly bouncing off other molecules, so its overall net progress across the room was far slower than its instantaneous speed between collisions -- a distinction that explained why diffusion, while driven by fast particle motion, still visibly takes real time to spread across a room.",
        passageMy:
            "ဓာတုဗေဒအတန်းရှိ ရိုးရှင်းသော သရုပ်ပြမှုတစ်ခုအတွက် ရှင်သန့်၏ ဆရာမသည် တိတ်ဆိတ်၍ လေမလှုပ်သော စာသင်ခန်းရှေ့တွင် ရေမွှေးဘူးငယ်တစ်ခုကို ဖွင့်ခဲ့ပြီး ကျောင်းသားတိုင်းအား ရေမွှေးရနံ့ ရသည့်အခိုက် လက်ကို ချက်ချင်း ဖော်ရန် တောင်းဆိုခဲ့သည်။ စက္ကန့် ၃၀ ခန့်အတွင်း ရှေ့တန်းရှိ ကျောင်းသားများက လက်ကို ဖော်ခဲ့ပြီး၊ နောက်လာသော မိနစ်နှစ်မိနစ်အတွင်း ဖော်ထားသော လက်များ လှိုင်းသည် အခန်းအနောက်ဆုံးရှိ ကျောင်းသားများ ရနံ့ရသည်အထိ တဖြည်းဖြည်း ဆက်တိုက် ပျံ့နှံ့သွားခဲ့သည်၊ ရေမွှေးမော်လီကျူးများကို မည်သူမျှ ကိုယ်တိုင် အခန်းနောက်ဘက်သို့ လျှောက်ယူသွားခြင်း မဟုတ်ခဲ့ပါ။\n\nဤသည်မှာ လက်တွေ့ Diffusion ဖြစ်ကြောင်း သူမ၏ ဆရာမက ရှင်းပြခဲ့သည်- အခန်းအပူချိန်တွင် ဓာတ်ငွေ့ဖြစ်သော ရေမွှေးမော်လီကျူးများသည် အမှုန်များ၏ ကျပန်း ရွေ့လျားမှုတစ်ခုတည်းကသာ လှုံ့ဆော်ကာ ဘူးဖွင့်ထားသော နေရာအနီးမှ သိပ်သည်းဆမြင့်ရာမှ ဝေးကွာသောနေရာရှိ သိပ်သည်းဆနိမ့်ရာသို့ ပျံ့နှံ့သွားသည်။ စာသင်ခန်း ပြတင်းပေါက်များ ဖွင့်ထားပြီး ပန်ကာလည်နေချိန်တွင် တူညီသော စမ်းသပ်မှုကို ထပ်လုပ်ပါက အဘယ်ဖြစ်လာမည်ကို ခန့်မှန်းရန် သူမ အတန်းအား တောင်းဆိုခဲ့သည် -- ကျောင်းသားအများစုက လေစီးကြောင်းများသည် Diffusion တစ်ခုတည်းထက် ရနံ့ကို ပို၍ လျင်မြန်စွာ သယ်ဆောင်လိမ့်မည်ဟု မှန်ကန်စွာ ခန့်မှန်းခဲ့ကြသည်၊ အကြောင်းမှာ ကျပန်း အမှုန်ရွေ့လျားမှုဖြင့် Diffusion သည် လေ၏ အစုလိုက် ရွေ့လျားမှုနှင့်နှိုင်းယှဉ်လျှင် အတော်လေး နှေးကွေးသော ဖြစ်စဉ်တစ်ခုဖြစ်သောကြောင့်ဖြစ်သည်။\n\nဆရာမက ဆိုသကဲ့သို့ ဓာတ်ငွေ့အမှုန်များသည် စက္ကန့်လျှင် မီတာရာချီ လျင်မြန်စွာ ရွေ့လျားလျှင် ရနံ့သည် မိနစ်နှစ်မိနစ်အတွင်း အခန်းနောက်ဘက်သို့ အဘယ်ကြောင့် ရောက်ရှိခဲ့ရသနည်းဟု ရှင်သန့်က ဆက်လက် မေးမြန်းခဲ့သည်။ ဤထင်ရှားသော ဆန့်ကျင်မှုသည် အခန်းထဲ ပြည့်နှက်နေပြီးသား လေမော်လီကျူးများနှင့် ဓာတ်ငွေ့အမှုန်များ ထိတွေ့ခြင်း အလွန်များစွာကြောင့် ဖြစ်ကြောင်း သူမ၏ ဆရာမက ရှင်းပြခဲ့သည်- ရေမွှေးမော်လီကျူးတစ်ခုစီသည် အခြားမော်လီကျူးများနှင့် အမြဲထပ်ခါထပ်ခါ ထိတွေ့ကန်ကျခြင်းဖြင့် လျင်မြန်သော်လည်း အလွန်တိုတောင်း၍ ကွေ့ကောက်နေသော လမ်းကြောင်းတစ်ခုတစ်လျှောက် ခရီးသွားသောကြောင့်၊ အခန်းတစ်ခုလုံးကို ဖြတ်ကျော်ရန် ၎င်း၏ စုစုပေါင်း အသားတင် တိုးတက်မှုသည် ထိတွေ့မှုများကြားရှိ ချက်ချင်းအမြန်နှုန်းထက် များစွာ နှေးကွေးသည် -- ဤကွာခြားချက်သည် Diffusion သည် လျင်မြန်သော အမှုန်ရွေ့လျားမှုက လှုံ့ဆော်ပေးသော်လည်း အခန်းတစ်ခုလုံးကို ပျံ့နှံ့ရန် အမှန်တကယ် အချိန်ယူသည့် အကြောင်းရင်းကို ရှင်းပြသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what causes perfume molecules to spread from the bottle to the back of the room?",
            questionMy:
                "ရေမွှေးမော်လီကျူးများ ဘူးမှ အခန်းနောက်ဘက်သို့ ပျံ့နှံ့သွားစေသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The random motion of particles moving from high to low concentration",
              "A student physically carrying the perfume around",
              "The perfume bottle exploding",
              "Gravity pulling the molecules downward",
            ],
            optionsMy: [
              "သိပ်သည်းဆမြင့်ရာမှ နိမ့်ရာသို့ ရွေ့လျားသော အမှုန်များ၏ ကျပန်း ရွေ့လျားမှု",
              "ကျောင်းသားတစ်ဦးက ရေမွှေးကို ရုပ်ပိုင်းဆိုင်ရာ လက်ဆွဲသယ်ဆောင်ခြင်း",
              "ရေမွှေးဘူး ပေါက်ကွဲခြင်း",
              "ဆွဲငင်အားက မော်လီကျူးများကို အောက်သို့ ဆွဲငင်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining diffusion 'driven purely by the random motion of the particles'.",
              "This is the standard definition of diffusion.",
            ],
            hintsMy: [
              "'အမှုန်များ၏ ကျပန်း ရွေ့လျားမှုတစ်ခုတည်းကသာ လှုံ့ဆော်' ကြောင်း Diffusion ကို ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်မှာ Diffusion ၏ စံ အဓိပ္ပာယ်ဖွင့်ဆိုချက် ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why would opening windows and running a fan spread the scent faster than diffusion alone?",
            questionMy:
                "ပြတင်းပေါက်များ ဖွင့်ပြီး ပန်ကာလည်ခြင်းက Diffusion တစ်ခုတည်းထက် ရနံ့ကို ပို၍ လျင်မြန်စွာ ပျံ့နှံ့စေသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Bulk air movement carries the scent faster than random particle diffusion alone",
              "Fans destroy the perfume molecules",
              "Windows block diffusion completely",
              "It would actually make no difference at all",
            ],
            optionsMy: [
              "လေ၏ အစုလိုက် ရွေ့လျားမှုက ကျပန်း အမှုန် Diffusion တစ်ခုတည်းထက် ရနံ့ကို ပို၍ လျင်မြန်စွာ သယ်ဆောင်ခြင်း",
              "ပန်ကာများက ရေမွှေးမော်လီကျူးများကို ဖျက်ဆီးခြင်း",
              "ပြတင်းပေါက်များက Diffusion ကို လုံးဝ ပိတ်ဆို့ခြင်း",
              "အမှန်တကယ် မည်သည့် ကွာခြားချက်မျှ မရှိခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence comparing diffusion's speed to bulk air movement.",
              "Diffusion by random motion is described as 'relatively slow' compared to air currents.",
            ],
            hintsMy: [
              "Diffusion ၏ အမြန်နှုန်းကို လေ၏ အစုလိုက် ရွေ့လျားမှုနှင့် နှိုင်းယှဉ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "လေစီးကြောင်းများနှင့်နှိုင်းယှဉ်လျှင် ကျပန်း ရွေ့လျားမှုဖြင့် Diffusion ကို 'အတော်လေး နှေးကွေး' သည်ဟု ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why does diffusion appear slow even though gas particles move at hundreds of metres per second?",
            questionMy:
                "ဓာတ်ငွေ့အမှုန်များသည် စက္ကန့်လျှင် မီတာရာချီ လျင်မြန်စွာ ရွေ့လျားသော်လည်း Diffusion ကို နှေးကွေးဟန်ရှိရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Constant collisions with other molecules make each particle's overall path short and zigzagging",
              "Gas particles actually move very slowly, not quickly at all",
              "The perfume evaporates before it can move",
              "The classroom air has no other molecules in it",
            ],
            optionsMy: [
              "အခြားမော်လီကျူးများနှင့် အမြဲ ထိတွေ့ခြင်းက အမှုန်တစ်ခုစီ၏ စုစုပေါင်း လမ်းကြောင်းကို တိုတောင်း၍ ကွေ့ကောက်စေခြင်း",
              "ဓာတ်ငွေ့အမှုန်များသည် အမှန်တကယ် အလွန်နှေးကွေးစွာသာ ရွေ့လျားခြင်း၊ လျင်မြန်စွာ လုံးဝ မဟုတ်ခြင်း",
              "ရွေ့လျားရန် မတတ်နိုင်မီ ရေမွှေး ငွေ့ပျံသွားခြင်း",
              "စာသင်ခန်းလေတွင် အခြားမော်လီကျူးများ လုံးဝ မရှိခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about the 'huge number of collisions' with air molecules already in the room.",
              "Fast instantaneous speed between collisions is different from slow overall net progress.",
            ],
            hintsMy: [
              "အခန်းထဲ ပြည့်နှက်နေပြီးသား လေမော်လီကျူးများနှင့် 'ထိတွေ့ခြင်း အလွန်များစွာ' အကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ထိတွေ့မှုများကြား လျင်မြန်သော ချက်ချင်းအမြန်နှုန်းသည် နှေးကွေးသော စုစုပေါင်း အသားတင် တိုးတက်မှုနှင့် မတူပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "What is the best summary of the distinction the teacher explained in paragraph 3?",
            questionMy:
                "စာပိုဒ် ၃ တွင် ဆရာမ ရှင်းပြသော ကွာခြားချက်၏ အကောင်းဆုံး အနှစ်ချုပ်မှာ အဘယ်နည်း။",
            optionsEn: [
              "A particle's speed between collisions differs greatly from its overall net progress across a room",
              "Gas particles never actually collide with anything",
              "Diffusion only happens in liquids, never gases",
              "Perfume molecules are heavier than air molecules",
            ],
            optionsMy: [
              "ထိတွေ့မှုများကြား အမှုန်တစ်ခု၏ အမြန်နှုန်းသည် အခန်းတစ်ခုလုံးကို ဖြတ်ကျော်ရန် ၎င်း၏ စုစုပေါင်း အသားတင် တိုးတက်မှုနှင့် များစွာ ကွာခြားခြင်း",
              "ဓာတ်ငွေ့အမှုန်များသည် မည်သည့်အရာနှင့်မျှ လုံးဝ မထိတွေ့ခြင်း",
              "Diffusion သည် အရည်များတွင်သာ ဖြစ်ပွားပြီး ဓာတ်ငွေ့များတွင် လုံးဝ မဖြစ်ပွားခြင်း",
              "ရေမွှေးမော်လီကျူးများသည် လေမော်လီကျူးများထက် ပိုလေးခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of the passage summarising this distinction.",
              "This explains why diffusion is fast at the particle level but slow at the room level.",
            ],
            hintsMy: [
              "ဤကွာခြားချက်ကို အနှစ်ချုပ်ဖော်ပြသော စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤသည်က Diffusion သည် အမှုန်အဆင့်တွင် လျင်မြန်သော်လည်း အခန်းအဆင့်တွင် နှေးကွေးရသည့် အကြောင်းရင်းကို ရှင်းပြသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w1-d5",
      dayNumber: 5,
      titleEn: "Week 1 Recap: States of Matter",
      titleMy: "ပထမပတ် ပြန်လည်သုံးသပ်ခြင်း - ဒြပ်ဝတ္ထု အခြေအနေများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which state of matter has a fixed volume but no fixed shape?",
          questionMy:
              "ဒြပ်ဝတ္ထု၏ မည်သည့်အခြေအနေတွင် ပုံသေဝင်ရိုးဆမ်း ရှိသော်လည်း ပုံသေပုံသဏ္ဌာန် မရှိသနည်း",
          optionsEn: ["Liquid", "Solid", "Gas", "Plasma"],
          optionsMy: ["အရည်", "အစိုင်အခဲ", "ဓာတ်ငွေ့", "Plasma"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "During boiling, why does temperature stay constant despite continued heating?",
          questionMy:
              "ဆူပွက်ချိန် အပူ ဆက်လက်ပေးနေသော်လည်း အပူချိန် အဘယ်ကြောင့် တည်ငြိမ်နေသနည်း",
          optionsEn: [
            "Energy is breaking intermolecular forces, not raising particle speed",
            "The substance has stopped absorbing heat",
            "Boiling requires no energy",
            "The particles have frozen in place",
          ],
          optionsMy: [
            "စွမ်းအင်က မော်လီကျူးများကြား အားများကို ချိုးဖျက်နေပြီး အမှုန်လျင်မြန်နှုန်းကို မြှင့်တင်နေခြင်း မဟုတ်ပါ",
            "ပစ္စည်းသည် အပူစုပ်ယူမှု ရပ်တန့်သွားခြင်း",
            "ဆူပွက်ခြင်းအတွက် စွမ်းအင် မလိုအပ်ခြင်း",
            "အမှုန်များ တည်နေရာတွင် အေးခဲသွားခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Diffusion is the net movement of particles from...",
          questionMy:
              "Diffusion သည် ...မှ အမှုန်များ၏ အသားတင် ရွေ့လျားမှု ဖြစ်သည်",
          optionsEn: [
            "High concentration to low concentration",
            "Low concentration to high concentration",
            "Hot to cold only",
            "Solid to liquid only",
          ],
          optionsMy: [
            "သိပ်သည်းဆမြင့်ရာမှ နိမ့်ရာသို့",
            "သိပ်သည်းဆနိမ့်ရာမှ မြင့်ရာသို့",
            "ပူရာမှ အေးရာသို့သာ",
            "အစိုင်အခဲမှ အရည်သို့သာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 2: "Measurement and Experimental Techniques"
// =====================================================================

const CourseWeekDef _igcseChemWeek2 = CourseWeekDef(
  id: "course-igcse-chem-w2",
  weekNumber: 2,
  titleEn: "Measurement and Experimental Techniques",
  titleMy: "တိုင်းတာမှုနှင့် လက်တွေ့စမ်းသပ်မှု နည်းစနစ်များ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w2-d1",
      dayNumber: 1,
      titleEn: "Purity and Separation Techniques",
      titleMy: "သန့်စင်မှုနှင့် ခွဲထုတ်ခြင်း နည်းစနစ်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which of these is the best evidence that a substance is pure?",
          questionMy:
              "ပစ္စည်းတစ်ခု သန့်စင်ကြောင်း အကောင်းဆုံး သက်သေအထောက်အထားမှာ အောက်ပါတို့အနက် အဘယ်နည်း။",
          optionsEn: [
            "It melts or boils sharply at one exact, fixed temperature",
            "It has a strong smell",
            "It is a liquid at room temperature",
            "It dissolves in water",
          ],
          optionsMy: [
            "အတိအကျ၊ ပုံသေ အပူချိန်တစ်ခုတည်းတွင် ချက်ချင်း အရည်ပျော် သို့မဟုတ် ဆူပွက်ခြင်း",
            "အနံ့ပြင်းထန်ခြင်း",
            "အခန်းအပူချိန်တွင် အရည်ဖြစ်ခြင်း",
            "ရေတွင် ပျော်ဝင်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Impure substances melt over a range of temperatures rather than sharply at one point.",
            "Impurities also generally lower the melting point and raise the boiling point compared to the pure substance.",
          ],
          hintsMy: [
            "မသန့်စင်သော ပစ္စည်းများသည် အတိအကျ အချက်တစ်ခုတည်းတွင် ချက်ချင်းအစား အပူချိန် အတိုင်းအတာတစ်ခုအတွင်း ပျော်ခြင်း ဖြစ်တတ်သည်။",
            "မသန့်စင်မှုများသည် သန့်စင်သော ပစ္စည်းနှင့်နှိုင်းယှဉ်လျှင် အရည်ပျော်ချက် ယေဘုယျအားဖြင့် လျှော့ချစေပြီး ဆူပွက်ချက် မြှင့်တင်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which separation technique would you use to separate an insoluble solid from a liquid?",
          questionMy:
              "မပျော်ဝင်သော အစိုင်အခဲကို အရည်မှ ခွဲထုတ်ရန် မည်သည့် ခွဲထုတ်ခြင်း နည်းစနစ်ကို သုံးမည်နည်း။",
          optionsEn: [
            "Filtration",
            "Chromatography",
            "Simple distillation",
            "Fractional distillation",
          ],
          optionsMy: [
            "Filtration",
            "Chromatography",
            "Simple Distillation",
            "Fractional Distillation",
          ],
          correctIndex: 0,
          hintsEn: [
            "This method uses filter paper: the liquid (filtrate) passes through, while the solid (residue) is trapped.",
            "This is the same technique used to separate sand from water.",
          ],
          hintsMy: [
            "ဤနည်းစနစ်သည် Filter Paper ကို သုံးသည် - အရည် (Filtrate) သည် ဖြတ်သန်းသွားပြီး အစိုင်အခဲ (Residue) သည် ချုပ်ကျန်နေသည်။",
            "ဤသည်မှာ သဲကို ရေမှ ခွဲထုတ်ရန် သုံးသော နည်းစနစ်တစ်မျိုးတည်းပင် ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Fractional distillation is used to separate a mixture of liquids because it takes advantage of...",
          questionMy:
              "Fractional Distillation ကို အရည်ရောစပ်ပစ္စည်းတစ်ခု ခွဲထုတ်ရန် သုံးသည့်အကြောင်းရင်းမှာ ၎င်းက ...ကို အကျိုးရှိစွာ အသုံးချသောကြောင့်ဖြစ်သည်",
          optionsEn: [
            "Different boiling points of the liquids in the mixture",
            "Different colours of the liquids",
            "Different densities alone, with no heating needed",
            "The fact that liquids never mix",
          ],
          optionsMy: [
            "ရောစပ်ပစ္စည်းအတွင်း အရည်များ၏ ကွဲပြားသော ဆူပွက်ချက်များ",
            "အရည်များ၏ ကွဲပြားသော အရောင်များ",
            "အပူပေးရန် လုံးဝမလိုအပ်ဘဲ သိပ်သည်းဆ ကွဲပြားမှုတစ်ခုတည်း",
            "အရည်များသည် ဘယ်တော့မှ ရောစပ်၍ မရနိုင်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "As the mixture is heated, the liquid with the lowest boiling point evaporates first and is collected.",
            "This is exactly how crude oil is separated into fractions like petrol, kerosene, and diesel.",
          ],
          hintsMy: [
            "ရောစပ်ပစ္စည်းကို အပူပေးသောအခါ ဆူပွက်ချက်အနိမ့်ဆုံး အရည်သည် ဦးစွာ ငွေ့ပျံပြီး စုဆောင်းခံရသည်။",
            "ဤသည်မှာ ရေနံစိမ်းကို ဓာတ်ဆီ၊ ဆီဂျင်နှင့် ဒီဇယ်ကဲ့သို့ အပိုင်းများအဖြစ် ခွဲထုတ်သည့် အတိအကျ နည်းလမ်းပင် ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w2-d2",
      dayNumber: 2,
      titleEn: "Match: Separation Technique Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ခွဲထုတ်ခြင်း နည်းစနစ် ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w2-dm-1",
          termEn: "Filtration",
          termMy: "Filtration",
          matchEn:
              "Separates an insoluble solid from a liquid using filter paper",
          matchMy:
              "Filter Paper သုံး၍ မပျော်ဝင်သော အစိုင်အခဲကို အရည်မှ ခွဲထုတ်ခြင်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w2-dm-2",
          termEn: "Crystallisation",
          termMy: "Crystallisation",
          matchEn:
              "Separates a soluble solid from a solution by evaporating the solvent until crystals form",
          matchMy:
              "Crystal များ ဖြစ်ပေါ်သည်အထိ Solvent ကို ငွေ့ပျံစေခြင်းဖြင့် ပျော်ဝင်သော အစိုင်အခဲကို ပျော်ရည်မှ ခွဲထုတ်ခြင်း",
          colorValue: 0xFF2196F3,
        ),
        DragMatchPair(
          id: "igcsechem-w2-dm-3",
          termEn: "Chromatography",
          termMy: "Chromatography",
          matchEn:
              "Separates substances in a mixture based on how far they travel up a piece of paper",
          matchMy:
              "ရောစပ်ပစ္စည်းအတွင်း ပစ္စည်းများ စက္ကူပေါ်တွင် မည်မျှ အကွာအဝေး ခရီးသွားနိုင်ကြောင်းအပေါ် အခြေခံ၍ ခွဲထုတ်ခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w2-dm-4",
          termEn: "Simple distillation",
          termMy: "Simple Distillation",
          matchEn:
              "Separates a solvent from a solution by evaporating and then condensing it",
          matchMy:
              "Solvent ကို ငွေ့ပျံပြီးနောက် ရေငွေ့စိုစေခြင်းဖြင့် ပျော်ရည်မှ ခွဲထုတ်ခြင်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w2-dm-5",
          termEn: "Separating funnel",
          termMy: "Separating Funnel",
          matchEn:
              "Separates two immiscible liquids that do not mix, such as oil and water",
          matchMy:
              "ဆီနှင့်ရေကဲ့သို့ မရောနှောနိုင်သော အရည်နှစ်မျိုးကို ခွဲထုတ်ခြင်း",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w2-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Separation Method?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် ခွဲထုတ်ခြင်း နည်းစနစ်",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Filtration",
          "Crystallisation",
          "Chromatography",
          "Fractional Distillation",
        ],
        bucketsMy: [
          "Filtration",
          "Crystallisation",
          "Chromatography",
          "Fractional Distillation",
        ],
        items: [
          SortingItem(
            id: "igcsechem-w2-sort-1",
            labelEn: "Separating sand from a sand-water mixture",
            labelMy: "သဲ-ရေ ရောစပ်ပစ္စည်းမှ သဲကို ခွဲထုတ်ခြင်း",
            correctBucketEn: "Filtration",
            correctBucketMy: "Filtration",
          ),
          SortingItem(
            id: "igcsechem-w2-sort-2",
            labelEn: "Obtaining pure salt crystals from salt water",
            labelMy: "ဆားရေမှ သန့်စင်သော ဆား Crystal များ ရယူခြင်း",
            correctBucketEn: "Crystallisation",
            correctBucketMy: "Crystallisation",
          ),
          SortingItem(
            id: "igcsechem-w2-sort-3",
            labelEn:
                "Identifying the different dyes that make up a black ink sample",
            labelMy:
                "မင်နက်နမူနာတစ်ခုကို ဖွဲ့စည်းသည့် ကွဲပြားသော ဆိုးဆေးများ ဖော်ထုတ်ခြင်း",
            correctBucketEn: "Chromatography",
            correctBucketMy: "Chromatography",
          ),
          SortingItem(
            id: "igcsechem-w2-sort-4",
            labelEn:
                "Separating crude oil into petrol, kerosene, and diesel fractions",
            labelMy:
                "ရေနံစိမ်းကို ဓာတ်ဆီ၊ ဆီဂျင်နှင့် ဒီဇယ် အပိုင်းများအဖြစ် ခွဲထုတ်ခြင်း",
            correctBucketEn: "Fractional Distillation",
            correctBucketMy: "Fractional Distillation",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w2-d4",
      dayNumber: 4,
      titleEn: "Reading: Forensic Scientist Daw Aye's Ink Sample",
      titleMy: "စာဖတ်ခြင်း - ရာဇဝတ်ဆိုင်ရာ သိပ္ပံပညာရှင် ဒေါ်အေး၏ မင်နမူနာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Forensic Scientist Daw Aye's Ink Sample",
        titleMy: "ရာဇဝတ်ဆိုင်ရာ သိပ္ပံပညာရှင် ဒေါ်အေး၏ မင်နမူနာ",
        passageEn:
            "Daw Aye, a forensic scientist, visited a Chemistry class to explain how paper chromatography, a technique the students had just learned, was used in real criminal investigations to compare ink samples. She demonstrated by placing a small spot of black ink from a suspicious document near the bottom of a strip of chromatography paper, then dipping the bottom edge into a shallow tray of solvent, careful to keep the ink spot itself above the solvent's surface.\n\nAs the solvent soaked upward through the paper by capillary action, it carried the different dye components of the black ink with it, but not all at the same speed: dyes that were more soluble in the solvent and less strongly attracted to the paper travelled further and faster, while dyes that clung more strongly to the paper fibres lagged behind. Within twenty minutes, what had looked like a single black spot had separated into four distinct coloured bands -- a blue, a red, a yellow, and a faint green -- rising to different heights up the paper, since 'black' ink is very rarely made from a single true black dye.\n\nDaw Aye explained that comparing this pattern of separated bands, called a chromatogram, against ink from a known pen was a standard technique for questioning whether two documents were written with the same pen or type of ink: if the number, colour, and relative height of each band matched exactly between two samples, it was strong evidence the same ink was used, though not absolute proof on its own. She added that this same underlying principle -- separating a mixture based on how strongly its components interact with a stationary material versus a moving solvent -- extended far beyond simple ink analysis into far more sophisticated instruments used in professional forensic and pharmaceutical laboratories today.",
        passageMy:
            "ရာဇဝတ်ဆိုင်ရာ သိပ္ပံပညာရှင် ဒေါ်အေးသည် ဓာတုဗေဒအတန်းသို့ လာရောက်ကာ ကျောင်းသားများ ယခုပင် သင်ယူခဲ့ကြသော Paper Chromatography နည်းစနစ်ကို မင်နမူနာများ နှိုင်းယှဉ်ရန် တကယ့် ရာဇဝတ်စုံစမ်းစစ်ဆေးမှုများတွင် မည်သို့ အသုံးချကြောင်း ရှင်းပြခဲ့သည်။ သံသယဖြစ်ဖွယ် စာရွက်တစ်ခုမှ မင်နက်အစက်ငယ်တစ်ခုကို Chromatography စက္ကူချောင်း၏ အောက်ခြေအနီးတွင် ထားပြီး၊ အောက်ခြေအစွန်းကို Solvent ရှိသော ငွေခွက်ငယ်ထဲသို့ နှစ်ချခဲ့သည်၊ မင်နက်အစက်ကိုယ်တိုင်ကို Solvent ၏ မျက်နှာပြင်ထက် ဂရုတစိုက် ထားခဲ့သည်။\n\nSolvent သည် စက္ကူထဲသို့ Capillary Action ဖြင့် အထက်သို့ စိုသွားစဉ် မင်နက်၏ ကွဲပြားသော ဆိုးဆေးအစိတ်အပိုင်းများကို ၎င်းနှင့်အတူ သယ်ဆောင်သွားခဲ့သော်လည်း အားလုံး တူညီသော အမြန်နှုန်းဖြင့် မဟုတ်ပါ- Solvent တွင် ပို၍ ပျော်ဝင်ပြီး စက္ကူနှင့် ပို၍ အားနည်းစွာ ဆွဲငင်ခံရသော ဆိုးဆေးများသည် ပို၍ ဝေး၍ မြန်စွာ ခရီးသွားခဲ့ပြီး၊ စက္ကူ ဖိုင်ဘာများနှင့် ပို၍ ခိုင်ခိုင်မာမာ ကပ်ငြိနေသော ဆိုးဆေးများသည် နောက်ကျန်ရစ်ခဲ့သည်။ မိနစ် ၂၀ အတွင်း တစ်ခုတည်းသော မင်နက်အစက်ကဲ့သို့ ပေါ်ခဲ့သည်မှာ ကွဲပြားသော အရောင်ခါးဝိုင်း လေးခု -- အပြာ၊ အနီ၊ အဝါနှင့် မှုန်ဝါးသော အစိမ်းရောင် -- အဖြစ် ခွဲထွက်သွားပြီး စက္ကူပေါ်တွင် ကွဲပြားသော အမြင့်များအထိ တက်သွားခဲ့သည်၊ အကြောင်းမှာ 'အနက်ရောင်' မင်နက်ကို စစ်မှန်သော အနက်ရောင် ဆိုးဆေးတစ်မျိုးတည်းမှသာ အလွန်ရှားရှား ပြုလုပ်ထားလေ့ရှိသောကြောင့်ဖြစ်သည်။\n\nChromatogram ဟုခေါ်သော ဤ ခွဲထွက်ထားသော ခါးဝိုင်းများ၏ ပုံစံကို သိရှိပြီးသား ခဲတံတစ်ချောင်းမှ မင်နက်နှင့် နှိုင်းယှဉ်ခြင်းသည် စာရွက်နှစ်ခု တူညီသော ခဲတံ သို့မဟုတ် မင်နက်အမျိုးအစားဖြင့် ရေးသားထားကြောင်း စစ်ဆေးရန် စံ နည်းစနစ်တစ်ခု ဖြစ်ကြောင်း ဒေါ်အေး ရှင်းပြခဲ့သည်- နမူနာနှစ်ခုကြား ခါးဝိုင်းတစ်ခုစီ၏ အရေအတွက်၊ အရောင်နှင့် ဆွေမျိုးအမြင့်တို့သည် အတိအကျ ကိုက်ညီပါက တူညီသော မင်နက်ကို သုံးခဲ့ကြောင်း အားကောင်းသော သက်သေအထောက်အထားဖြစ်သော်လည်း၊ ၎င်းတစ်ခုတည်းအားဖြင့် လုံးလုံးလျားလျား သက်သေမပြနိုင်ကြောင်း ထပ်ဖြည့်ခဲ့သည်။ ဤအခြေခံမူ -- ရောစပ်ပစ္စည်းတစ်ခုကို ၎င်း၏ အစိတ်အပိုင်းများသည် Stationary ပစ္စည်းတစ်ခုနှင့် ရွေ့လျားနေသော Solvent တစ်ခုနှင့် မည်မျှခိုင်ခိုင်မာမာ ဆက်ဆံသည်ကို အခြေခံ၍ ခွဲထုတ်ခြင်း -- သည် ရိုးရှင်းသော မင်နက်ခွဲခြမ်းစိတ်ဖြာမှုထက် ကျော်လွန်၍ ယနေ့ ပရော်ဖက်ရှင်နယ် ရာဇဝတ်ဆိုင်ရာနှင့် ဆေးဝါးဓာတ်ခွဲခန်းများတွင် သုံးသော ပို၍ ခေတ်မီသော ကိရိယာများအထိ ကျယ်ပြန့်စွာ ဆက်စပ်နေကြောင်း သူမ ထပ်ဖြည့် ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did some dyes travel further up the paper than others?",
            questionMy:
                "ဆိုးဆေးအချို့သည် အခြားများထက် စက္ကူပေါ်တွင် ပို၍ ဝေး၍ ခရီးသွားခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They were more soluble in the solvent and less strongly attracted to the paper",
              "They were heavier than the other dyes",
              "They were added to the ink later",
              "The paper was cut at an angle",
            ],
            optionsMy: [
              "Solvent တွင် ပို၍ ပျော်ဝင်ပြီး စက္ကူနှင့် ပို၍ အားနည်းစွာ ဆွဲငင်ခံရသောကြောင့်",
              "အခြားဆိုးဆေးများထက် ပိုလေးသောကြောင့်",
              "မင်နက်ထဲသို့ နောက်ပိုင်းမှ ထည့်ခဲ့သောကြောင့်",
              "စက္ကူကို ထောင့်ချိုးဖြတ်ခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining why some dyes travelled 'further and faster'.",
              "Solubility in the solvent and attraction to the paper are the two key factors.",
            ],
            hintsMy: [
              "ဆိုးဆေးအချို့ 'ပို၍ ဝေး၍ မြန်စွာ' ခရီးသွားခဲ့ရသည့် အကြောင်းရင်းကို ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Solvent တွင် ပျော်ဝင်နိုင်စွမ်းနှင့် စက္ကူနှင့် ဆွဲငင်မှုသည် အဓိက အချက်နှစ်ခုဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did the single black spot separate into four coloured bands?",
            questionMy:
                "တစ်ခုတည်းသော မင်နက်အနက်အစက်သည် အရောင်ခါးဝိုင်း လေးခုအဖြစ် ခွဲထွက်သွားခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Black ink is very rarely made from a single true black dye",
              "The solvent changed the ink's chemical structure",
              "The paper added its own colour",
              "The pen was broken",
            ],
            optionsMy: [
              "'အနက်ရောင်' မင်နက်ကို စစ်မှန်သော အနက်ရောင် ဆိုးဆေးတစ်မျိုးတည်းမှသာ အလွန်ရှားရှား ပြုလုပ်ထားလေ့ရှိသောကြောင့်",
              "Solvent က မင်နက်၏ ဓာတုဖွဲ့စည်းပုံကို ပြောင်းလဲခဲ့သောကြောင့်",
              "စက္ကူက ၎င်း၏ ကိုယ်ပိုင်အရောင်ကို ထည့်ခဲ့သောကြောင့်",
              "ခဲတံ ကျိုးသွားခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of paragraph 2 explaining why black ink separated.",
              "Most 'black' inks are actually a blend of several coloured dyes.",
            ],
            hintsMy: [
              "အနက်ရောင်မင်နက် အဘယ်ကြောင့် ခွဲထွက်သွားခဲ့ကြောင်း ရှင်းပြသော စာပိုဒ် ၂ ၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "'အနက်ရောင်' မင်နက်အများစုသည် ဆိုးဆေးအရောင်များစွာ ရောစပ်ထားခြင်းသာ ဖြစ်တတ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what would matching chromatogram bands between two ink samples indicate?",
            questionMy:
                "မင်နမူနာနှစ်ခုကြား Chromatogram ခါးဝိုင်းများ ကိုက်ညီခြင်းက အဘယ်ကို ညွှန်ပြသည်ကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Strong evidence, though not absolute proof, that the same ink was used",
              "Absolute, unquestionable proof of identical ink",
              "Nothing at all -- chromatograms are unreliable",
              "That the two documents were written on the same day",
            ],
            optionsMy: [
              "တူညီသော မင်နက်ကို သုံးခဲ့ကြောင်း အားကောင်းသော်လည်း လုံးလုံးလျားလျား သက်သေအထောက်အထား မဟုတ်ခြင်း",
              "တူညီသော မင်နက်ဖြစ်ကြောင်း လုံးလုံးလျားလျား၊ မေးခွန်းထုတ်၍ မရနိုင်သော သက်သေအထောက်အထား",
              "မည်သည့်အရာမျှ လုံးဝ မရှိခြင်း -- Chromatogram များသည် ယုံကြည်စိတ်ချရမှု မရှိခြင်း",
              "စာရွက်နှစ်ခုစလုံးကို တစ်နေ့တည်းတွင် ရေးသားထားကြောင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining what a match indicates, and its limitation.",
              "The passage explicitly says it is not 'absolute proof on its own'.",
            ],
            hintsMy: [
              "ကိုက်ညီခြင်းက အဘယ်ကို ညွှန်ပြကြောင်းနှင့် ၎င်း၏ ကန့်သတ်ချက်ကို ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "စာပိုဒ်က 'ကိုယ်တိုင်တစ်ခုတည်းအားဖြင့် လုံးလုံးလျားလျား သက်သေမပြနိုင်' ကြောင်း တိတိကျကျ ဖော်ပြထားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what underlying principle does chromatography rely on?",
            questionMy:
                "Chromatography မှီခိုအားထားသော အခြေခံမူကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Separating a mixture based on how components interact with a stationary material versus a moving solvent",
              "Separating a mixture based on colour alone",
              "Separating a mixture using heat alone",
              "Separating a mixture using magnetism",
            ],
            optionsMy: [
              "ရောစပ်ပစ္စည်းတစ်ခုကို ၎င်း၏ အစိတ်အပိုင်းများသည် Stationary ပစ္စည်းတစ်ခုနှင့် ရွေ့လျားနေသော Solvent တစ်ခုနှင့် မည်သို့ ဆက်ဆံသည်ကို အခြေခံ၍ ခွဲထုတ်ခြင်း",
              "ရောစပ်ပစ္စည်းတစ်ခုကို အရောင်တစ်ခုတည်းအပေါ် အခြေခံ၍ ခွဲထုတ်ခြင်း",
              "ရောစပ်ပစ္စည်းတစ်ခုကို အပူတစ်ခုတည်းသုံး၍ ခွဲထုတ်ခြင်း",
              "ရောစပ်ပစ္စည်းတစ်ခုကို သံလိုက်စွမ်းအားသုံး၍ ခွဲထုတ်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence describing the underlying principle.",
              "This principle extends to more sophisticated laboratory instruments too.",
            ],
            hintsMy: [
              "အခြေခံမူကို ဖော်ပြသော နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဤအခြေခံမူသည် ပို၍ ခေတ်မီသော ဓာတ်ခွဲခန်းကိရိယာများသို့ပါ ချဲ့ထွင်ဆက်စပ်နေသည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w2-d5",
      dayNumber: 5,
      titleEn: "Week 2 Recap: Separation Techniques",
      titleMy: "ဒုတိယပတ် ပြန်လည်သုံးသပ်ခြင်း - ခွဲထုတ်ခြင်း နည်းစနစ်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A pure substance melts at...",
          questionMy: "သန့်စင်သော ပစ္စည်းတစ်ခုသည် ...တွင် အရည်ပျော်သည်",
          optionsEn: [
            "One exact, fixed temperature",
            "A wide range of temperatures",
            "Room temperature only",
            "It never melts",
          ],
          optionsMy: [
            "အတိအကျ၊ ပုံသေ အပူချိန်တစ်ခုတည်း",
            "ကျယ်ပြန့်သော အပူချိန် အတိုင်းအတာ",
            "အခန်းအပူချိန်တွင်သာ",
            "ဘယ်တော့မှ မပျော်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Which technique separates a soluble solid from solution using evaporation?",
          questionMy:
              "မည်သည့် နည်းစနစ်က ငွေ့ပျံခြင်းသုံး၍ ပျော်ဝင်သော အစိုင်အခဲကို ပျော်ရည်မှ ခွဲထုတ်သနည်း",
          optionsEn: [
            "Crystallisation",
            "Filtration only",
            "Chromatography",
            "Magnetism",
          ],
          optionsMy: [
            "Crystallisation",
            "Filtration သာ",
            "Chromatography",
            "Magnetism",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Fractional distillation separates liquids based on differences in...",
          questionMy:
              "Fractional Distillation က ...ကွာခြားမှုအပေါ် အခြေခံ၍ အရည်များကို ခွဲထုတ်သည်",
          optionsEn: ["Boiling point", "Colour", "Smell", "Magnetism"],
          optionsMy: ["ဆူပွက်ချက်", "အရောင်", "အနံ့", "Magnetism"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 3: "Atomic Structure and Isotopes"
// =====================================================================

const CourseWeekDef _igcseChemWeek3 = CourseWeekDef(
  id: "course-igcse-chem-w3",
  weekNumber: 3,
  titleEn: "Atomic Structure and Isotopes",
  titleMy: "အက်တမ် ဖွဲ့စည်းပုံနှင့် အိုင်ဆိုတုပ်များ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w3-d1",
      dayNumber: 1,
      titleEn: "Protons, Neutrons, and Electrons",
      titleMy: "Proton, Neutron နှင့် Electron များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Where are protons and neutrons found in an atom?",
          questionMy:
              "Proton နှင့် Neutron များကို အက်တမ်တစ်ခုတွင် မည်သည့်နေရာ၌ တွေ့ရှိသနည်း။",
          optionsEn: [
            "In the nucleus, at the centre of the atom",
            "Orbiting far outside the atom",
            "Only in gas atoms",
            "Nowhere -- atoms do not contain them",
          ],
          optionsMy: [
            "အက်တမ်၏ အလယ်ဗဟိုရှိ Nucleus တွင်",
            "အက်တမ်အပြင်ဘက် ဝေးကွာစွာ ပတ်လည်ကျင်လည်ခြင်း",
            "ဓာတ်ငွေ့အက်တမ်များတွင်သာ",
            "မည်သည့်နေရာမျှ မရှိပါ -- အက်တမ်များတွင် ၎င်းတို့ မပါဝင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "The nucleus is the tiny, dense centre of an atom, containing almost all of its mass.",
            "Electrons, by contrast, orbit the nucleus in shells.",
          ],
          hintsMy: [
            "Nucleus သည် အက်တမ်၏ ထုထည်နီးပါးအားလုံးကို ပါဝင်သော သေးငယ်၍ သိပ်သိပ်သည်းသည်း ရှိသော အလယ်ဗဟိုဖြစ်သည်။",
            "ဆန့်ကျင်ဘက်အားဖြင့် Electron များသည် Nucleus ကို Shell များဖြင့် ပတ်လည်ကျင်လည်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "An atom of sodium has 11 protons and 11 electrons. What does this tell you about its overall charge?",
          questionMy:
              "ဆိုဒီယမ် အက်တမ်တစ်ခုတွင် Proton ၁၁ ခုနှင့် Electron ၁၁ ခု ရှိသည်။ ၎င်း၏ စုစုပေါင်း တာဝန်ခံအား (Charge) အကြောင်း ၎င်းက အဘယ်ကို ဖော်ပြသနည်း။",
          optionsEn: [
            "The atom is neutral, since the positive and negative charges are equal",
            "The atom is positively charged overall",
            "The atom is negatively charged overall",
            "It is impossible to know without more information",
          ],
          optionsMy: [
            "အပြုသဘောနှင့် အနုတ်သဘော တာဝန်ခံအားများ ညီမျှသောကြောင့် အက်တမ်သည် Neutral ဖြစ်သည်",
            "အက်တမ်သည် စုစုပေါင်း အပြုသဘော တာဝန်ခံအား ဆောင်သည်",
            "အက်တမ်သည် စုစုပေါင်း အနုတ်သဘော တာဝန်ခံအား ဆောင်သည်",
            "အချက်အလက် ပို၍ မရှိပါက သိရှိရန် မဖြစ်နိုင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Protons are positively charged; electrons are negatively charged.",
            "An equal number of protons and electrons means the positive and negative charges cancel out exactly.",
          ],
          hintsMy: [
            "Proton များသည် အပြုသဘော တာဝန်ခံအား ဆောင်ပြီး Electron များသည် အနုတ်သဘော တာဝန်ခံအား ဆောင်သည်။",
            "Proton နှင့် Electron အရေအတွက် ညီမျှခြင်းက အပြုသဘောနှင့် အနုတ်သဘော တာဝန်ခံအားများ အတိအကျ ဖျက်ပစ်ခြင်းကို ဆိုလိုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the electronic configuration of sodium (atomic number 11)?",
          questionMy:
              "ဆိုဒီယမ် (Atomic Number ၁၁) ၏ Electronic Configuration မှာ အဘယ်နည်း။",
          optionsEn: ["2, 8, 1", "2, 8, 8", "1, 8, 2", "11, 0, 0"],
          optionsMy: ["2, 8, 1", "2, 8, 8", "1, 8, 2", "11, 0, 0"],
          correctIndex: 0,
          hintsEn: [
            "Electron shells fill in order: the first shell holds up to 2 electrons, the second up to 8.",
            "With 11 electrons total: 2 fill the first shell, 8 fill the second shell, leaving 1 in the third shell.",
          ],
          hintsMy: [
            "Electron Shell များသည် အစီအစဉ်လိုက် ဖြည့်ကြသည်- ပထမ Shell တွင် Electron ၂ ခုအထိ၊ ဒုတိယ Shell တွင် ၈ ခုအထိ ဆံ့နိုင်သည်။",
            "စုစုပေါင်း Electron ၁၁ ခုဖြင့် - ပထမ Shell တွင် ၂ ခု ဖြည့်ပြီး ဒုတိယ Shell တွင် ၈ ခု ဖြည့်ကာ တတိယ Shell တွင် ၁ ခု ကျန်ရစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w3-d2",
      dayNumber: 2,
      titleEn: "Match: Atomic Structure Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - အက်တမ် ဖွဲ့စည်းပုံ ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w3-dm-1",
          termEn: "Proton",
          termMy: "Proton",
          matchEn: "A positively charged particle found in the nucleus",
          matchMy:
              "Nucleus တွင် တွေ့ရှိရသော အပြုသဘော တာဝန်ခံအား ဆောင်သည့် အမှုန်",
          colorValue: 0xFFF44336,
        ),
        DragMatchPair(
          id: "igcsechem-w3-dm-2",
          termEn: "Neutron",
          termMy: "Neutron",
          matchEn: "A particle with no charge found in the nucleus",
          matchMy: "တာဝန်ခံအား မရှိဘဲ Nucleus တွင် တွေ့ရှိရသော အမှုန်",
          colorValue: 0xFF9E9E9E,
        ),
        DragMatchPair(
          id: "igcsechem-w3-dm-3",
          termEn: "Electron",
          termMy: "Electron",
          matchEn:
              "A negatively charged particle that orbits the nucleus in shells",
          matchMy:
              "Nucleus ကို Shell များဖြင့် ပတ်လည်ကျင်လည်သော အနုတ်သဘော တာဝန်ခံအား ဆောင်သည့် အမှုန်",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w3-dm-4",
          termEn: "Isotope",
          termMy: "Isotope",
          matchEn:
              "An atom of the same element with a different number of neutrons",
          matchMy: "Neutron အရေအတွက် ကွဲပြားသော တူညီသော ဒြပ်စင်၏ အက်တမ်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w3-dm-5",
          termEn: "Mass number",
          termMy: "Mass Number",
          matchEn:
              "The total number of protons and neutrons in an atom's nucleus",
          matchMy:
              "အက်တမ်၏ Nucleus ရှိ Proton နှင့် Neutron စုစုပေါင်း အရေအတွက်",
          colorValue: 0xFFFF9800,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w3-d3",
      dayNumber: 3,
      titleEn: "Sort: Proton, Neutron, or Electron?",
      titleMy: "စီစစ်ကြမည် - Proton လား၊ Neutron လား၊ Electron လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Proton", "Neutron", "Electron"],
        bucketsMy: ["Proton", "Neutron", "Electron"],
        items: [
          SortingItem(
            id: "igcsechem-w3-sort-1",
            labelEn: "Has a positive charge and is found in the nucleus",
            labelMy: "အပြုသဘော တာဝန်ခံအား ဆောင်ပြီး Nucleus တွင် တွေ့ရှိရသည်",
            correctBucketEn: "Proton",
            correctBucketMy: "Proton",
          ),
          SortingItem(
            id: "igcsechem-w3-sort-2",
            labelEn: "Has almost no mass and orbits the nucleus",
            labelMy: "ထုထည် လုံးဝနီးပါး မရှိဘဲ Nucleus ကို ပတ်လည်ကျင်လည်သည်",
            correctBucketEn: "Electron",
            correctBucketMy: "Electron",
          ),
          SortingItem(
            id: "igcsechem-w3-sort-3",
            labelEn: "Has no charge at all, but contributes to the mass number",
            labelMy:
                "တာဝန်ခံအား လုံးဝ မရှိသော်လည်း Mass Number အတွက် ပါဝင်စေသည်",
            correctBucketEn: "Neutron",
            correctBucketMy: "Neutron",
          ),
          SortingItem(
            id: "igcsechem-w3-sort-4",
            labelEn: "Its number determines an element's atomic number",
            labelMy:
                "၎င်း၏ အရေအတွက်က ဒြပ်စင်တစ်ခု၏ Atomic Number ကို ဆုံးဖြတ်ပေးသည်",
            correctBucketEn: "Proton",
            correctBucketMy: "Proton",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w3-d4",
      dayNumber: 4,
      titleEn: "Reading: Physicist Ko Zaw's Chlorine Puzzle",
      titleMy: "စာဖတ်ခြင်း - ရူပဗေဒပညာရှင် ကိုဇော်၏ ကလိုရင် ပဟေဋ္ဌိ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Physicist Ko Zaw's Chlorine Puzzle",
        titleMy: "ရူပဗေဒပညာရှင် ကိုဇော်၏ ကလိုရင် ပဟေဋ္ဌိ",
        passageEn:
            "Ko Zaw, a university chemistry demonstrator, visited a class to pose a puzzle: the periodic table lists chlorine's relative atomic mass as 35.5 -- but he asked the students how an atom, made of whole protons and whole neutrons, could possibly have a 'half' particle inside it. Several students guessed that chlorine atoms must somehow contain half a neutron, but Ko Zaw explained this was impossible, since subatomic particles cannot be split into fractions within an atom's nucleus.\n\nHe explained that the true answer lay in isotopes. Natural chlorine is actually a mixture of two isotopes: chlorine-35, which has 17 protons and 18 neutrons, and chlorine-37, which has the same 17 protons but 20 neutrons. Both isotopes are still chlorine, since the number of protons -- which defines what element an atom is -- is identical in both; only the neutron count, and therefore the mass number, differs between them.\n\nKo Zaw then explained that the periodic table's value of 35.5 was not the mass of any single chlorine atom at all, but a weighted average across the natural abundance of both isotopes: roughly 75% of chlorine atoms found in nature are chlorine-35, and roughly 25% are chlorine-37. Calculating (75% x 35) + (25% x 37) gives exactly 35.5, matching the periodic table value precisely. He emphasised that this calculation method -- weighting each isotope's mass number by how commonly it actually occurs -- was the standard way relative atomic mass was calculated for any element with naturally occurring isotopes, and that no single chlorine atom in existence actually has a mass number of exactly 35.5.",
        passageMy:
            "တက္ကသိုလ် ဓာတုဗေဒ သရုပ်ပြသူ ကိုဇော်သည် အတန်းတစ်ခုသို့ လာရောက်ကာ ပဟေဋ္ဌိတစ်ခု တင်ပြခဲ့သည်- Periodic Table တွင် ကလိုရင်၏ Relative Atomic Mass ကို ၃၅.၅ ဟု ဖော်ပြထားသည် -- သို့သော် Proton အပြည့်နှင့် Neutron အပြည့်ဖြင့် ဖွဲ့စည်းထားသော အက်တမ်တစ်ခုတွင် 'တစ်ဝက်' အမှုန် မည်သို့ ရှိနိုင်ကြောင်း ကျောင်းသားများအား သူ မေးမြန်းခဲ့သည်။ ကျောင်းသားအချို့က ကလိုရင် အက်တမ်များတွင် Neutron တစ်ဝက် တစ်နည်းနည်းဖြင့် ပါဝင်ရမည်ဟု ခန့်မှန်းခဲ့ကြသော်လည်း၊ Subatomic အမှုန်များသည် အက်တမ်၏ Nucleus အတွင်း အပိုင်းများအဖြစ် ခွဲ၍ မရနိုင်သောကြောင့် ဤသည် မဖြစ်နိုင်ကြောင်း ကိုဇော် ရှင်းပြခဲ့သည်။\n\nအမှန်တကယ် အဖြေသည် Isotope များထဲတွင် ရှိကြောင်း သူ ရှင်းပြခဲ့သည်။ သဘာဝ ကလိုရင်သည် Isotope နှစ်မျိုး ရောစပ်ထားခြင်းသာ ဖြစ်သည်- Chlorine-35 တွင် Proton ၁၇ ခုနှင့် Neutron ၁၈ ခု ရှိပြီး Chlorine-37 တွင် တူညီသော Proton ၁၇ ခု ရှိသော်လည်း Neutron ၂၀ ခု ရှိသည်။ Isotope နှစ်မျိုးလုံးသည် ကလိုရင်ပင် ဖြစ်ဆဲဖြစ်သည်၊ အကြောင်းမှာ အက်တမ်တစ်ခု ဒြပ်စင်မည်သို့ ဖြစ်ကြောင်း သတ်မှတ်ပေးသော Proton အရေအတွက်သည် နှစ်ခုစလုံးတွင် တူညီသောကြောင့်ဖြစ်ပြီး၊ Neutron အရေအတွက်နှင့် ထို့ကြောင့် Mass Number သာ ကွဲပြားသည်။\n\nPeriodic Table ၏ ၃၅.၅ တန်ဖိုးသည် ကလိုရင်အက်တမ် တစ်ခုတည်း၏ Mass လုံးဝ မဟုတ်ဘဲ Isotope နှစ်မျိုးလုံး၏ သဘာဝ ကြွယ်ဝမှုတစ်လျှောက် Weighted Average တစ်ခုသာ ဖြစ်ကြောင်း ကိုဇော် ဆက်လက် ရှင်းပြခဲ့သည်- သဘာဝတွင် တွေ့ရှိရသော ကလိုရင်အက်တမ်၏ အကြမ်းဖျင်း ၇၅% သည် Chlorine-35 ဖြစ်ပြီး အကြမ်းဖျင်း ၂၅% သည် Chlorine-37 ဖြစ်သည်။ (75% x 35) + (25% x 37) ကို တွက်ချက်ခြင်းက အတိအကျ ၃၅.၅ ကို ပေးပြီး Periodic Table တန်ဖိုးနှင့် အတိအကျ ကိုက်ညီသည်။ ဤတွက်ချက်နည်း -- Isotope တစ်ခုစီ၏ Mass Number ကို ၎င်း အမှန်တကယ် မည်မျှ ဖြစ်ပွားကြောင်းဖြင့် Weight လုပ်ခြင်း -- သည် သဘာဝ Isotope များ ဖြစ်ပေါ်သော ဒြပ်စင်တိုင်းအတွက် Relative Atomic Mass ကို တွက်ချက်ရန် စံနည်းလမ်းဖြစ်ကြောင်း၊ တည်ရှိနေသော ကလိုရင် အက်တမ်တစ်ခုတည်းမျှ Mass Number ၃၅.၅ အတိအကျ မရှိကြောင်း သူ အလေးထား ဖော်ပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what is the key difference between chlorine-35 and chlorine-37?",
            questionMy:
                "Chlorine-35 နှင့် Chlorine-37 ကြား အဓိက ကွာခြားချက်ကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They have different numbers of neutrons, but the same number of protons",
              "They have different numbers of protons",
              "One is not actually chlorine at all",
              "They have different electric charges",
            ],
            optionsMy: [
              "Neutron အရေအတွက် ကွဲပြားသော်လည်း Proton အရေအတွက် တူညီသည်",
              "Proton အရေအတွက် ကွဲပြားသည်",
              "တစ်ခုသည် ကလိုရင် လုံးဝ မဟုတ်ခြင်း",
              "လျှပ်စစ်တာဝန်ခံအား ကွဲပြားသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing the proton and neutron counts of both isotopes.",
              "Isotopes always share the same proton number but differ in neutron number.",
            ],
            hintsMy: [
              "Isotope နှစ်မျိုးလုံး၏ Proton နှင့် Neutron အရေအတွက်ကို ဖော်ပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Isotope များသည် Proton အရေအတွက် အမြဲ တူညီသော်လည်း Neutron အရေအတွက် ကွဲပြားသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why are both chlorine-35 and chlorine-37 still considered chlorine?",
            questionMy:
                "Chlorine-35 နှင့် Chlorine-37 နှစ်မျိုးလုံးကို ကလိုရင်ဟု ဆက်လက် သတ်မှတ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The number of protons, which defines the element, is identical in both",
              "They have the exact same mass number",
              "They were discovered on the same day",
              "They have the same number of neutrons",
            ],
            optionsMy: [
              "ဒြပ်စင်ကို သတ်မှတ်ပေးသော Proton အရေအတွက်သည် နှစ်ခုစလုံးတွင် တူညီသောကြောင့်",
              "နှစ်ခုစလုံးတွင် Mass Number အတိအကျ တူညီသောကြောင့်",
              "တစ်နေ့တည်းတွင် ရှာဖွေတွေ့ရှိခဲ့ကြောင့်",
              "Neutron အရေအတွက် တူညီသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining why proton number determines the element.",
              "Element identity depends on proton number, not neutron number.",
            ],
            hintsMy: [
              "Proton အရေအတွက်က ဒြပ်စင်ကို အဘယ်ကြောင့် သတ်မှတ်ပေးကြောင်း ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "ဒြပ်စင်အမှတ်သဏ္ဍာန်သည် Neutron အရေအတွက် မဟုတ်ဘဲ Proton အရေအတွက်ပေါ် မှီခိုသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what does the periodic table's value of 35.5 actually represent?",
            questionMy:
                "Periodic Table ၏ ၃၅.၅ တန်ဖိုးသည် အမှန်တကယ် အဘယ်ကို ကိုယ်စားပြုကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "A weighted average based on the natural abundance of chlorine-35 and chlorine-37",
              "The exact mass number of a single chlorine atom",
              "A random number with no scientific meaning",
              "The mass of chlorine-37 alone",
            ],
            optionsMy: [
              "Chlorine-35 နှင့် Chlorine-37 ၏ သဘာဝ ကြွယ်ဝမှုအပေါ် အခြေခံသော Weighted Average",
              "ကလိုရင် အက်တမ်တစ်ခုတည်း၏ Mass Number အတိအကျ",
              "သိပ္ပံနည်းကျ အဓိပ္ပာယ် မရှိသော ကျပန်း ကိန်းဂဏန်း",
              "Chlorine-37 တစ်ခုတည်း၏ Mass",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explicitly stating what 35.5 represents.",
              "The calculation (75% x 35) + (25% x 37) demonstrates this weighted average.",
            ],
            hintsMy: [
              "၃၅.၅ သည် အဘယ်ကို ကိုယ်စားပြုကြောင်း တိတိကျကျ ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "(75% x 35) + (25% x 37) တွက်ချက်မှုက ဤ Weighted Average ကို သရုပ်ပြသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the whole passage, does any single chlorine atom actually have a mass number of 35.5?",
            questionMy:
                "စာပိုဒ်တစ်ခုလုံးအရ ကလိုရင်အက်တမ် တစ်ခုတည်းမျှ Mass Number ၃၅.၅ အမှန်တကယ် ရှိပါသလား။",
            optionsEn: [
              "No -- every individual chlorine atom has a whole-number mass number, either 35 or 37",
              "Yes -- every chlorine atom has exactly this mass number",
              "Yes, but only on Tuesdays",
              "The passage does not address this at all",
            ],
            optionsMy: [
              "မရှိပါ -- ကလိုရင် အက်တမ်တစ်ခုစီသည် ကိန်းပြည့် Mass Number၊ ၃၅ သို့မဟုတ် ၃၇ ရှိသည်",
              "ရှိသည် -- ကလိုရင်အက်တမ်တိုင်းတွင် ဤ Mass Number အတိအကျ ရှိသည်",
              "ရှိသည်၊ သို့သော် အင်္ဂါနေ့တွင်သာ",
              "စာပိုဒ်က ၎င်းကို လုံးဝ မဖြေဆိုထားပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence of the passage.",
              "35.5 is an average across a population of atoms, not the mass of any one atom.",
            ],
            hintsMy: [
              "စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "၃၅.၅ သည် အက်တမ်များ၏ လူဦးရေတစ်လျှောက် Average တစ်ခုဖြစ်ပြီး မည်သည့် အက်တမ်တစ်ခုတည်း၏ Mass မဟုတ်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w3-d5",
      dayNumber: 5,
      titleEn: "Week 3 Recap: Atomic Structure",
      titleMy: "တတိယပတ် ပြန်လည်သုံးသပ်ခြင်း - အက်တမ် ဖွဲ့စည်းပုံ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The atomic number of an atom equals its number of...",
          questionMy:
              "အက်တမ်တစ်ခု၏ Atomic Number သည် ၎င်း၏ ...အရေအတွက်နှင့် ညီမျှသည်",
          optionsEn: ["Protons", "Neutrons only", "Total mass", "Shells only"],
          optionsMy: ["Proton", "Neutron သာ", "စုစုပေါင်း Mass", "Shell သာ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Isotopes of the same element have the same number of protons but different numbers of...",
          questionMy:
              "ဒြပ်စင်တစ်ခုတည်း၏ Isotope များတွင် Proton အရေအတွက် တူညီသော်လည်း ...အရေအတွက် ကွဲပြားသည်",
          optionsEn: ["Neutrons", "Protons", "Electric charges", "Elements"],
          optionsMy: ["Neutron", "Proton", "လျှပ်စစ်တာဝန်ခံအား", "ဒြပ်စင်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Relative atomic mass is calculated as a weighted average based on...",
          questionMy:
              "Relative Atomic Mass ကို ...အပေါ် အခြေခံသော Weighted Average အဖြစ် တွက်ချက်သည်",
          optionsEn: [
            "The natural abundance of each isotope",
            "The colour of the element",
            "The melting point alone",
            "Random guessing",
          ],
          optionsMy: [
            "Isotope တစ်ခုစီ၏ သဘာဝ ကြွယ်ဝမှု",
            "ဒြပ်စင်၏ အရောင်",
            "အရည်ပျော်ချက်တစ်ခုတည်း",
            "ကျပန်း ခန့်မှန်းချက်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 4 (Capstone): "Chemical Bonding: Ionic and Covalent"
// =====================================================================

const CourseWeekDef _igcseChemWeek4 = CourseWeekDef(
  id: "course-igcse-chem-w4",
  weekNumber: 4,
  titleEn: "Chemical Bonding: Ionic and Covalent",
  titleMy: "ဓာတုတွဲစပ်မှု - Ionic နှင့် Covalent",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w4-d1",
      dayNumber: 1,
      titleEn: "Ionic Bonding and Lattices",
      titleMy: "Ionic Bonding နှင့် Lattice များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "How does an ionic bond form between a metal atom and a non-metal atom?",
          questionMy:
              "သတ္တု အက်တမ်တစ်ခုနှင့် သတ္တုမဟုတ်သော အက်တမ်တစ်ခုကြား Ionic Bond မည်သို့ ဖွဲ့စည်းသနည်း။",
          optionsEn: [
            "The metal atom transfers electrons to the non-metal atom, forming oppositely charged ions that attract",
            "The two atoms share a pair of electrons equally",
            "The two atoms simply touch without any electron movement",
            "The non-metal atom transfers protons to the metal atom",
          ],
          optionsMy: [
            "သတ္တု အက်တမ်က Electron များကို သတ္တုမဟုတ်သော အက်တမ်ထံ လွှဲပြောင်းပေးကာ ဆန့်ကျင်ဘက် တာဝန်ခံအားများ ဆွဲငင်ကြသော Ion များ ဖြစ်လာသည်",
            "အက်တမ်နှစ်ခုက Electron တစ်စုံကို တူညီစွာ မျှဝေကြသည်",
            "အက်တမ်နှစ်ခုသည် Electron လှုပ်ရှားမှု မရှိဘဲ ထိတွေ့ကြသည်",
            "သတ္တုမဟုတ်သော အက်တမ်က Proton များကို သတ္တု အက်တမ်ထံ လွှဲပြောင်းပေးသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Metal atoms tend to lose electrons and become positive ions (cations).",
            "Non-metal atoms tend to gain those electrons and become negative ions (anions), which then attract.",
          ],
          hintsMy: [
            "သတ္တု အက်တမ်များသည် Electron များ ဆုံးရှုံးကာ အပြုသဘော Ion (Cation) ဖြစ်လာလေ့ရှိသည်။",
            "သတ္တုမဟုတ်သော အက်တမ်များသည် ထို Electron များကို ရရှိကာ အနုတ်သဘော Ion (Anion) ဖြစ်လာပြီး ထို့နောက် ဆွဲငင်ကြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In sodium chloride (NaCl), what happens to the electron in sodium's outer shell?",
          questionMy:
              "ဆိုဒီယမ်ကလိုရိုဒ် (NaCl) တွင် ဆိုဒီယမ်၏ အပြင်ဆုံး Shell ရှိ Electron ကို အဘယ်သို့ ဖြစ်သွားသနည်း။",
          optionsEn: [
            "It is transferred completely to the chlorine atom",
            "It stays with sodium permanently",
            "It disappears entirely",
            "It is shared equally between the two atoms",
          ],
          optionsMy: [
            "ကလိုရင် အက်တမ်ထံ အပြည့်အဝ လွှဲပြောင်းသွားသည်",
            "ဆိုဒီယမ်နှင့်အတူ အမြဲတမ်း ကျန်ရှိနေသည်",
            "လုံးဝ ပျောက်ကွယ်သွားသည်",
            "အက်တမ်နှစ်ခုကြား တူညီစွာ မျှဝေထားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Sodium has 1 electron in its outer shell; chlorine needs 1 more to complete its outer shell.",
            "This full transfer creates Na+ and Cl- ions.",
          ],
          hintsMy: [
            "ဆိုဒီယမ်တွင် အပြင်ဆုံး Shell ၌ Electron ၁ ခု ရှိပြီး ကလိုရင်က ၎င်း၏ အပြင်ဆုံး Shell ကို ပြည့်စေရန် နောက်ထပ် ၁ ခု လိုအပ်သည်။",
            "ဤအပြည့်အဝ လွှဲပြောင်းမှုက Na+ နှင့် Cl- Ion များကို ဖြစ်ပေါ်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why do ionic compounds like sodium chloride have high melting points?",
          questionMy:
              "ဆိုဒီယမ်ကလိုရိုဒ်ကဲ့သို့ ionic ဒြပ်ပေါင်းများသည် အဘယ်ကြောင့် အရည်ပျော်ချက် မြင့်ကြသနည်း။",
          optionsEn: [
            "The strong electrostatic attraction between oppositely charged ions throughout the giant lattice requires a lot of energy to overcome",
            "They contain no bonds at all",
            "They are always gases at room temperature",
            "Ionic bonds are the weakest type of bond",
          ],
          optionsMy: [
            "Lattice ကြီးတစ်ခုလျှောက် ဆန့်ကျင်ဘက် တာဝန်ခံအားများရှိ Ion များကြား ခိုင်မာသော လျှပ်စစ်ဆွဲငင်အား ကို ကျော်လွှားရန် စွမ်းအင် အများကြီး လိုအပ်သောကြောင့်",
            "Bond လုံးဝ မပါဝင်သောကြောင့်",
            "အခန်းအပူချိန်တွင် အမြဲတမ်း ဓာတ်ငွေ့ ဖြစ်နေသောကြောင့်",
            "Ionic Bond သည် Bond အမျိုးအစားများထဲတွင် အအားနည်းဆုံး ဖြစ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Ionic compounds form a giant regular lattice structure, not individual molecules.",
            "Overcoming the electrostatic forces across the entire lattice requires significant thermal energy.",
          ],
          hintsMy: [
            "Ionic ဒြပ်ပေါင်းများသည် တစ်ခုချင်း မော်လီကျူးများ မဟုတ်ဘဲ Lattice ဖွဲ့စည်းပုံကြီးတစ်ခု ဖွဲ့စည်းသည်။",
            "Lattice တစ်ခုလုံးရှိ လျှပ်စစ်အားများကို ကျော်လွှားရန် သိသိသာသာ အပူစွမ်းအင် လိုအပ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w4-d2",
      dayNumber: 2,
      titleEn: "Match: Bonding Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Bonding ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w4-dm-1",
          termEn: "Ionic bond",
          termMy: "Ionic Bond",
          matchEn:
              "A bond formed by the transfer of electrons and attraction between oppositely charged ions",
          matchMy:
              "Electron လွှဲပြောင်းမှုဖြင့် ဖွဲ့စည်းပြီး ဆန့်ကျင်ဘက် တာဝန်ခံအားများရှိ Ion များကြား ဆွဲငင်အားဖြင့် ဖြစ်ပေါ်သော Bond",
          colorValue: 0xFFE91E63,
        ),
        DragMatchPair(
          id: "igcsechem-w4-dm-2",
          termEn: "Covalent bond",
          termMy: "Covalent Bond",
          matchEn: "A bond formed by two atoms sharing a pair of electrons",
          matchMy:
              "အက်တမ်နှစ်ခုက Electron တစ်စုံ မျှဝေခြင်းဖြင့် ဖွဲ့စည်းသော Bond",
          colorValue: 0xFF2196F3,
        ),
        DragMatchPair(
          id: "igcsechem-w4-dm-3",
          termEn: "Giant ionic lattice",
          termMy: "Giant Ionic Lattice",
          matchEn:
              "A regular repeating 3D arrangement of oppositely charged ions",
          matchMy:
              "ဆန့်ကျင်ဘက် တာဝန်ခံအားများရှိ Ion များ၏ ပုံမှန် ထပ်ခါထပ်ခါ 3D စီစဉ်မှု",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w4-dm-4",
          termEn: "Simple molecule",
          termMy: "Simple Molecule",
          matchEn:
              "A small group of covalently bonded atoms with weak forces between separate molecules",
          matchMy:
              "သီးခြား မော်လီကျူးများကြား အားနည်းသော အားများ ရှိသော Covalent Bond ချည်နှောင်ထားသည့် အက်တမ် အုပ်စုငယ်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w4-dm-5",
          termEn: "Metallic bond",
          termMy: "Metallic Bond",
          matchEn:
              "The strong attraction between positive metal ions and a 'sea' of delocalised electrons",
          matchMy:
              "အပြုသဘော သတ္တု Ion များနှင့် Delocalised Electron 'ပင်လယ်' ကြား ခိုင်မာသော ဆွဲငင်အား",
          colorValue: 0xFFFF9800,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w4-d3",
      dayNumber: 3,
      titleEn: "Sort: Ionic, Covalent, or Metallic?",
      titleMy: "စီစစ်ကြမည် - Ionic လား၊ Covalent လား၊ Metallic လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Ionic", "Covalent", "Metallic"],
        bucketsMy: ["Ionic", "Covalent", "Metallic"],
        items: [
          SortingItem(
            id: "igcsechem-w4-sort-1",
            labelEn:
                "Sodium chloride (NaCl) -- formed from a metal and a non-metal",
            labelMy:
                "ဆိုဒီယမ်ကလိုရိုဒ် (NaCl) -- သတ္တုနှင့် သတ္တုမဟုတ်သော ဒြပ်စင်မှ ဖွဲ့စည်း",
            correctBucketEn: "Ionic",
            correctBucketMy: "Ionic",
          ),
          SortingItem(
            id: "igcsechem-w4-sort-2",
            labelEn:
                "Water (H2O) -- two non-metal atoms sharing electron pairs",
            labelMy:
                "ရေ (H2O) -- Electron တွဲများ မျှဝေသော သတ္တုမဟုတ်သည့် အက်တမ်နှစ်ခု",
            correctBucketEn: "Covalent",
            correctBucketMy: "Covalent",
          ),
          SortingItem(
            id: "igcsechem-w4-sort-3",
            labelEn:
                "Copper wire -- positive metal ions surrounded by delocalised electrons",
            labelMy:
                "ကြေးဝါကြိုး -- Delocalised Electron များ ဝန်းရံထားသော အပြုသဘော သတ္တု Ion များ",
            correctBucketEn: "Metallic",
            correctBucketMy: "Metallic",
          ),
          SortingItem(
            id: "igcsechem-w4-sort-4",
            labelEn:
                "Magnesium oxide (MgO) -- electron transfer between a metal and oxygen",
            labelMy:
                "မဂ္ဂနီဆီယမ်အောက်ဆိုဒ် (MgO) -- သတ္တုနှင့် အောက်ဆီဂျင်ကြား Electron လွှဲပြောင်းမှု",
            correctBucketEn: "Ionic",
            correctBucketMy: "Ionic",
          ),
          SortingItem(
            id: "igcsechem-w4-sort-5",
            labelEn:
                "Carbon dioxide (CO2) -- shared electron pairs between carbon and oxygen atoms",
            labelMy:
                "ကာဗွန်ဒိုင်အောက်ဆိုဒ် (CO2) -- ကာဗွန်နှင့် အောက်ဆီဂျင် အက်တမ်များကြား Electron တွဲများ မျှဝေ",
            correctBucketEn: "Covalent",
            correctBucketMy: "Covalent",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w4-d4",
      dayNumber: 4,
      titleEn: "Reading: Shin Thant Meets Chemistry Demonstrator Ko Zaw Again",
      titleMy:
          "စာဖတ်ခြင်း - ရှင်သန့်နှင့် ဓာတုဗေဒ သရုပ်ပြသူ ကိုဇော် ထပ်မံတွေ့ဆုံခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Shin Thant Meets Chemistry Demonstrator Ko Zaw Again",
        titleMy: "ရှင်သန့်နှင့် ဓာတုဗေဒ သရုပ်ပြသူ ကိုဇော် ထပ်မံတွေ့ဆုံခြင်း",
        passageEn:
            "Weeks after her perfume-diffusion experiment, Shin Thant returned to Ko Zaw's chemistry demonstration table with a new question: why did table salt (sodium chloride) dissolve so easily and conduct electricity when melted or dissolved, while sugar dissolved just as easily but never conducted electricity at all? Ko Zaw smiled -- this, he said, was the perfect doorway into chemical bonding.\n\nHe explained that sodium chloride is an ionic compound: each sodium atom transfers its single outer electron to a chlorine atom, creating a positively charged sodium ion (Na+) and a negatively charged chloride ion (Cl-). These oppositely charged ions then arrange themselves into a giant, repeating three-dimensional lattice, held together by strong electrostatic attraction throughout the entire structure -- not just between one pair of ions, but across billions of them. When solid, the ions are locked in fixed positions and cannot move freely, so solid salt does not conduct electricity. But once melted or dissolved in water, the ions become free to move, allowing them to carry electric charge -- which is exactly why molten or dissolved sodium chloride conducts electricity.\n\nSugar, by contrast, is a covalent compound: its atoms share pairs of electrons rather than transferring them outright, forming discrete, electrically neutral molecules. Since there are no charged ions free to move -- whether sugar is solid, melted, or dissolved -- it can never conduct electricity. Ko Zaw pointed out that this single property, electrical conductivity when molten or in solution, was one of the simplest and most reliable ways for a chemist to distinguish an ionic compound from a covalent one, without needing to know anything else about the substance in advance.\n\nHe finished with a final challenge: metals like the copper wire running to the classroom's lightbulb conduct electricity in their solid state too, unlike ionic compounds. Shin Thant thought for a moment, then answered that metallic bonding must involve electrons that are free to move even in the solid state -- delocalised electrons flowing through a lattice of positive metal ions. Ko Zaw nodded, delighted that she had connected the dots between the week's three bonding models entirely on her own.",
        passageMy:
            "ရှင်သန့်၏ ရေမွှေးဖြန့်ကျဲမှု စမ်းသပ်ချက်မှ ရက်သတ္တပတ်များအကြာတွင် သူမသည် ကိုဇော်၏ ဓာတုဗေဒ သရုပ်ပြစားပွဲသို့ မေးခွန်းအသစ်တစ်ခုနှင့် ပြန်လာခဲ့သည်- ဆားသည် အဘယ်ကြောင့် အလွယ်တကူ ပျော်ဝင်ပြီး အရည်ပျော်သည့်အခါ သို့မဟုတ် ပျော်ဝင်သည့်အခါ လျှပ်စစ် ဖြတ်သန်းစေနိုင်ကာ၊ သကြားမူကား အလွယ်တကူပင် ပျော်ဝင်သော်လည်း လျှပ်စစ် လုံးဝ မဖြတ်သန်းစေနိုင်ကြောင်း။ ကိုဇော် ပြုံးလိုက်ပြီး ၎င်းသည် ဓာတုတွဲစပ်မှုသို့ ဝင်ရောက်ရန် ပြီးပြည့်စုံသော တံခါးဝင်ကြောင်း ပြောခဲ့သည်။\n\nဆိုဒီယမ်ကလိုရိုဒ်သည် Ionic ဒြပ်ပေါင်းတစ်ခု ဖြစ်ကြောင်း သူ ရှင်းပြခဲ့သည်- ဆိုဒီယမ် အက်တမ်တစ်ခုစီသည် ၎င်း၏ တစ်ခုတည်းသော အပြင်ဆုံး Electron ကို ကလိုရင် အက်တမ်ထံ လွှဲပြောင်းပေးကာ အပြုသဘော ဆိုဒီယမ် Ion (Na+) နှင့် အနုတ်သဘော ကလိုရိုဒ် Ion (Cl-) ကို ဖန်တီးသည်။ ဆန့်ကျင်ဘက် တာဝန်ခံအားများရှိ ဤ Ion များသည် ဖွဲ့စည်းပုံတစ်ခုလုံးတစ်လျှောက် ခိုင်မာသော လျှပ်စစ်ဆွဲငင်အားဖြင့် ချည်နှောင်ထားသော Lattice ကြီး ထပ်ခါထပ်ခါ သုံးဖက်မြင် တစ်ခုအဖြစ် စီစဉ်ကြသည် -- Ion တစ်တွဲစီကြားသာမက ဘီလီယံနှင့်ချီသော Ion များတစ်လျှောက်တွင်ပါ ဖြစ်သည်။ အစိုင်အခဲအနေအထားတွင် Ion များသည် ပုံသေနေရာများ၌ ပိတ်မိနေကာ လွတ်လပ်စွာ မရွေ့လျားနိုင်သဖြင့် အစိုင်အခဲ ဆားသည် လျှပ်စစ် မဖြတ်သန်းစေနိုင်ပါ။ သို့သော် အရည်ပျော်လိုက်သည် သို့မဟုတ် ရေတွင် ပျော်ဝင်လိုက်သည်နှင့် Ion များသည် လွတ်လပ်စွာ ရွေ့လျားနိုင်လာကာ လျှပ်စစ်တာဝန်ခံအား သယ်ဆောင်စေနိုင်သည် -- ၎င်းသည်ပင် အရည်ပျော်ထားသော သို့မဟုတ် ပျော်ဝင်ထားသော ဆိုဒီယမ်ကလိုရိုဒ်သည် လျှပ်စစ် ဖြတ်သန်းစေနိုင်သည့် အတိအကျ အကြောင်းရင်း ဖြစ်သည်။\n\nသကြားမှာမူ ဆန့်ကျင်ဘက်အားဖြင့် Covalent ဒြပ်ပေါင်းတစ်ခု ဖြစ်သည်- ၎င်း၏ အက်တမ်များသည် Electron များကို အပြည့်အဝ လွှဲပြောင်းမည့်အစား Electron တွဲများ မျှဝေကာ သီးခြား၊ လျှပ်စစ်တာဝန်ခံအား Neutral ဖြစ်သော မော်လီကျူးများ ဖွဲ့စည်းသည်။ ရွေ့လျားနိုင်သော တာဝန်ခံအားရှိသော Ion များ မရှိသောကြောင့် -- သကြားသည် အစိုင်အခဲ၊ အရည်ပျော်ထား၊ သို့မဟုတ် ပျော်ဝင်ထားသည်ဖြစ်စေ -- လျှပ်စစ်ကို ဘယ်တော့မှ ဖြတ်သန်းစေနိုင်မည် မဟုတ်ပါ။ ဤဓာတ်ပစ္စည်းအကြောင်း အခြားမည်သည့်အရာကိုမျှ ကြိုတင်သိရန် မလိုဘဲ Ionic ဒြပ်ပေါင်းတစ်ခုနှင့် Covalent ဒြပ်ပေါင်းတစ်ခုကို ခွဲခြားရန် ရိုးရှင်း၍ အယုံကြည်ရဆုံး နည်းလမ်းများထဲမှ တစ်ခုမှာ အရည်ပျော်ထားစဉ် သို့မဟုတ် ဒြပ်ရည်တွင် ရှိစဉ် လျှပ်စစ် ဖြတ်သန်းနိုင်စွမ်း ဤဂုဏ်သတ္တိတစ်ခုတည်းသာ ဖြစ်ကြောင်း ကိုဇော် ထောက်ပြခဲ့သည်။\n\nသူသည် နောက်ဆုံး စိန်ခေါ်မှုတစ်ခုဖြင့် အဆုံးသတ်ခဲ့သည်- စာသင်ခန်း မီးလုံးထံ ဆက်သွယ်ထားသော ကြေးဝါကြိုးကဲ့သို့ သတ္တုများသည် Ionic ဒြပ်ပေါင်းများနှင့် မတူဘဲ ၎င်းတို့၏ အစိုင်အခဲ အနေအထားတွင်ပါ လျှပ်စစ် ဖြတ်သန်းစေနိုင်သည်။ ရှင်သန့်သည် တစ်ခဏ တွေးတောပြီးနောက် Metallic Bonding သည် အစိုင်အခဲ အနေအထားတွင်ပင် လွတ်လပ်စွာ ရွေ့လျားနိုင်သော Electron များ -- အပြုသဘော သတ္တု Ion များ၏ Lattice တစ်လျှောက် စီးဆင်းနေသော Delocalised Electron များ -- ပါဝင်ရမည်ဟု ဖြေဆိုခဲ့သည်။ သူမ ကိုယ်တိုင် ဤအပတ်၏ Bonding မော်ဒယ်သုံးမျိုးကို ချိတ်ဆက်နိုင်ခဲ့သည့်အတွက် ကိုဇော် ဝမ်းသာစွာ ခေါင်းညိတ်ပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does solid sodium chloride not conduct electricity, while molten sodium chloride does?",
            questionMy:
                "အစိုင်အခဲ ဆိုဒီယမ်ကလိုရိုဒ်သည် လျှပ်စစ် မဖြတ်သန်းစေနိုင်ဘဲ အရည်ပျော် ဆိုဒီယမ်ကလိုရိုဒ်ကမူ ဖြတ်သန်းစေနိုင်ခြင်း အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "In the solid, ions are locked in fixed positions; when molten, ions are free to move and carry charge",
              "Solid sodium chloride does not contain any ions at all",
              "Molten sodium chloride is actually a covalent compound",
              "Heat itself carries the electric charge",
            ],
            optionsMy: [
              "အစိုင်အခဲတွင် Ion များသည် ပုံသေနေရာများ၌ ပိတ်မိနေပြီး အရည်ပျော်သည့်အခါ Ion များသည် လွတ်လပ်စွာ ရွေ့လျားကာ တာဝန်ခံအား သယ်ဆောင်နိုင်သည်",
              "အစိုင်အခဲ ဆိုဒီယမ်ကလိုရိုဒ်တွင် Ion လုံးဝ မပါဝင်ပါ",
              "အရည်ပျော် ဆိုဒီယမ်ကလိုရိုဒ်သည် အမှန်တကယ် Covalent ဒြပ်ပေါင်းတစ်ခု ဖြစ်သည်",
              "အပူသည် လျှပ်စစ်တာဝန်ခံအားကို ကိုယ်တိုင် သယ်ဆောင်သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentences comparing solid and molten sodium chloride.",
              "Electrical conductivity requires charged particles that are free to move.",
            ],
            hintsMy: [
              "အစိုင်အခဲနှင့် အရည်ပျော် ဆိုဒီယမ်ကလိုရိုဒ်ကို နှိုင်းယှဉ်ထားသော စာကြောင်းများကို ပြန်ဖတ်ကြည့်ပါ။",
              "လျှပ်စစ် ဖြတ်သန်းနိုင်စွမ်းအတွက် လွတ်လပ်စွာ ရွေ့လျားနိုင်သော တာဝန်ခံအားရှိသော အမှုန်များ လိုအပ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why can sugar never conduct electricity, even when dissolved?",
            questionMy:
                "သကြားသည် ပျော်ဝင်ထားစဉ်တွင်ပင် လျှပ်စစ် ဘယ်တော့မှ မဖြတ်သန်းစေနိုင်ခြင်း အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It forms electrically neutral molecules with no free-moving charged ions",
              "It is actually an ionic compound in disguise",
              "It contains too much water",
              "It is always a solid and never dissolves",
            ],
            optionsMy: [
              "လွတ်လပ်စွာ မရွေ့လျားနိုင်သော တာဝန်ခံအားရှိသော Ion များ မရှိဘဲ လျှပ်စစ်တာဝန်ခံအား Neutral ဖြစ်သော မော်လီကျူးများ ဖွဲ့စည်းသောကြောင့်",
              "အမှန်တကယ် Ionic ဒြပ်ပေါင်းတစ်ခု ဖြစ်ကြောင်း ဖျောက်ထားခြင်း ဖြစ်သောကြောင့်",
              "ရေ အလွန်အကျွံ ပါဝင်နေသောကြောင့်",
              "အမြဲတမ်း အစိုင်အခဲဖြစ်ပြီး ဘယ်တော့မှ မပျော်ဝင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining sugar's covalent, molecular nature.",
              "Covalent compounds share electrons rather than forming free ions.",
            ],
            hintsMy: [
              "သကြား၏ Covalent မော်လီကျူး သဘောသဘာဝကို ရှင်းပြသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Covalent ဒြပ်ပေါင်းများသည် လွတ်လပ်သော Ion များ ဖွဲ့စည်းမည့်အစား Electron များ မျှဝေကြသည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to the passage, what single property does Ko Zaw say is one of the simplest ways to distinguish an ionic compound from a covalent one?",
            questionMy:
                "Ionic ဒြပ်ပေါင်းတစ်ခုကို Covalent ဒြပ်ပေါင်းတစ်ခုနှင့် ခွဲခြားရန် ရိုးရှင်းဆုံး နည်းလမ်းများထဲမှ တစ်ခုအဖြစ် ကိုဇော် ပြောကြားသော ဂုဏ်သတ္တိတစ်ခုတည်းကို စာပိုဒ်အရ ဖော်ပြပါ။",
            optionsEn: [
              "Whether it conducts electricity when molten or dissolved",
              "Whether it has a sweet taste",
              "Whether it is white in colour",
              "Whether it dissolves in water at all",
            ],
            optionsMy: [
              "အရည်ပျော်ထားစဉ် သို့မဟုတ် ပျော်ဝင်ထားစဉ် လျှပ်စစ် ဖြတ်သန်းစေနိုင်ခြင်း ရှိမရှိ",
              "အချိုရသာ ရှိမရှိ",
              "အဖြူရောင် ရှိမရှိ",
              "ရေတွင် လုံးဝ ပျော်ဝင်ခြင်း ရှိမရှိ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence at the end of paragraph 3 about the simplest distinguishing test.",
              "Ionic compounds conduct electricity when molten/dissolved; covalent ones never do.",
            ],
            hintsMy: [
              "စာပိုဒ် ၃ ၏ အဆုံးရှိ ရိုးရှင်းဆုံး ခွဲခြားနိုင်သည့် စမ်းသပ်မှုအကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
              "Ionic ဒြပ်ပေါင်းများသည် အရည်ပျော်ထားစဉ်/ပျော်ဝင်ထားစဉ် လျှပ်စစ် ဖြတ်သန်းစေပြီး Covalent ဒြပ်ပေါင်းများကမူ ဘယ်တော့မှ မဖြတ်သန်းစေပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final paragraph, how did Shin Thant explain why solid metals like copper conduct electricity?",
            questionMy:
                "ကြေးဝါကဲ့သို့ အစိုင်အခဲ သတ္တုများ လျှပ်စစ် ဖြတ်သန်းစေနိုင်ခြင်း အကြောင်းကို ရှင်သန့် မည်သို့ ရှင်းပြခဲ့ကြောင်း နောက်ဆုံးစာပိုဒ်အရ ဖော်ပြပါ။",
            optionsEn: [
              "Delocalised electrons remain free to move through the lattice of positive metal ions even in the solid state",
              "Metals are secretly a type of ionic compound",
              "Metals contain no electrons at all",
              "Copper wires are always heated before use",
            ],
            optionsMy: [
              "Delocalised Electron များသည် အစိုင်အခဲ အနေအထားတွင်ပင် အပြုသဘော သတ္တု Ion များ၏ Lattice တစ်လျှောက် လွတ်လပ်စွာ ရွေ့လျားနေဆဲ ဖြစ်သည်",
              "သတ္တုများသည် လျှို့ဝှက်စွာ Ionic ဒြပ်ပေါင်းအမျိုးအစား ဖြစ်သည်",
              "သတ္တုများတွင် Electron လုံးဝ မပါဝင်ပါ",
              "ကြေးဝါကြိုးများကို အသုံးမပြုမီ အမြဲတမ်း အပူပေးထားသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread Shin Thant's final answer about metallic bonding.",
              "Metallic bonds involve a 'sea' of delocalised electrons that move freely even when solid.",
            ],
            hintsMy: [
              "Metallic Bonding အကြောင်း ရှင်သန့်၏ နောက်ဆုံး အဖြေကို ပြန်ဖတ်ကြည့်ပါ။",
              "Metallic Bond များတွင် အစိုင်အခဲဖြစ်နေစဉ်ပင် လွတ်လပ်စွာ ရွေ့လျားနေသော Delocalised Electron 'ပင်လယ်' ပါဝင်သည်။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w4-d5",
      dayNumber: 5,
      titleEn: "Term 1 Recap: States of Matter and Atomic Structure",
      titleMy:
          "ပထမတန်း ပြန်လည်သုံးသပ်ခြင်း - ဒြပ်ဝတ္ထု အခြေအနေများနှင့် အက်တမ် ဖွဲ့စည်းပုံ",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In an ionic bond, electrons are...",
          questionMy: "Ionic Bond တစ်ခုတွင် Electron များသည်...",
          optionsEn: [
            "Transferred from one atom to another",
            "Shared equally between atoms",
            "Never involved",
            "Split into protons",
          ],
          optionsMy: [
            "အက်တမ်တစ်ခုမှ အခြားတစ်ခုသို့ လွှဲပြောင်း",
            "အက်တမ်များကြား တူညီစွာ မျှဝေ",
            "မည်သည့်အခါမျှ မပါဝင်",
            "Proton များအဖြစ် ခွဲခြမ်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In a covalent bond, electrons are...",
          questionMy: "Covalent Bond တစ်ခုတွင် Electron များသည်...",
          optionsEn: [
            "Shared between atoms",
            "Transferred completely",
            "Removed from both atoms",
            "Not involved at all",
          ],
          optionsMy: [
            "အက်တမ်များကြား မျှဝေ",
            "လုံးဝ လွှဲပြောင်း",
            "အက်တမ်နှစ်ခုစလုံးမှ ဖယ်ရှား",
            "လုံးဝ မပါဝင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Metallic bonding involves a 'sea' of...",
          questionMy: "Metallic Bonding တွင် ...'ပင်လယ်' တစ်ခု ပါဝင်သည်",
          optionsEn: [
            "Delocalised electrons",
            "Fixed protons",
            "Neutral atoms only",
            "Isotopes",
          ],
          optionsMy: [
            "Delocalised Electron",
            "ပုံသေ Proton",
            "Neutral အက်တမ် သာ",
            "Isotope",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "During a change of state (like melting), the temperature stays constant because energy is used to...",
          questionMy:
              "အခြေအနေ ပြောင်းလဲမှု (အရည်ပျော်ခြင်းကဲ့သို့) အတွင်း အပူချိန်သည် ...ရန် စွမ်းအင် အသုံးပြုနေသောကြောင့် ကိန်းသေ ဖြစ်နေသည်",
          optionsEn: [
            "Break intermolecular forces, not raise kinetic energy",
            "Destroy the atoms completely",
            "Create new elements",
            "Increase the number of protons",
          ],
          optionsMy: [
            "Kinetic Energy မြှင့်တင်မည့်အစား Intermolecular Force များ ချိုးဖျက်",
            "အက်တမ်များကို လုံးဝ ဖျက်ဆီး",
            "ဒြပ်စင်အသစ်များ ဖန်တီး",
            "Proton အရေအတွက် မြှင့်တင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Relative atomic mass is a weighted average based on...",
          questionMy:
              "Relative Atomic Mass သည် ...အပေါ် အခြေခံသော Weighted Average တစ်ခု ဖြစ်သည်",
          optionsEn: [
            "The natural abundance of an element's isotopes",
            "The colour of the substance",
            "The date it was discovered",
            "Random chance",
          ],
          optionsMy: [
            "ဒြပ်စင်တစ်ခု၏ Isotope များ၏ သဘာဝ ကြွယ်ဝမှု",
            "ပစ္စည်း၏ အရောင်",
            "ရှာဖွေတွေ့ရှိသည့် ရက်စွဲ",
            "ကျပန်း အခွင့်အလမ်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 5: "Formulae and Balanced Equations"
// =====================================================================

const CourseWeekDef _igcseChemWeek5 = CourseWeekDef(
  id: "course-igcse-chem-w5",
  weekNumber: 5,
  titleEn: "Formulae and Balanced Equations",
  titleMy: "ဖော်မြူလာများနှင့် ချိန်ညှိထားသော ဓာတုညီမျှခြင်းများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w5-d1",
      dayNumber: 1,
      titleEn: "Writing Chemical Formulae",
      titleMy: "ဓာတုဖော်မြူလာများ ရေးသားခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What is the correct formula for magnesium oxide, given Mg2+ and O2-?",
          questionMy:
              "Mg2+ နှင့် O2- ကို အခြေခံ၍ မဂ္ဂနီဆီယမ်အောက်ဆိုဒ်၏ မှန်ကန်သော ဖော်မြူလာမှာ အဘယ်နည်း။",
          optionsEn: ["MgO", "Mg2O", "MgO2", "Mg2O2"],
          optionsMy: ["MgO", "Mg2O", "MgO2", "Mg2O2"],
          correctIndex: 0,
          hintsEn: [
            "Ionic formulae balance so that the total positive charge equals the total negative charge.",
            "Mg2+ and O2- have equal but opposite charges, so a 1:1 ratio balances them exactly.",
          ],
          hintsMy: [
            "Ionic ဖော်မြူလာများသည် စုစုပေါင်း အပြုသဘော တာဝန်ခံအားက စုစုပေါင်း အနုတ်သဘော တာဝန်ခံအားနှင့် ညီမျှစေရန် ချိန်ညှိသည်။",
            "Mg2+ နှင့် O2- သည် ညီမျှသော်လည်း ဆန့်ကျင်ဘက် တာဝန်ခံအားရှိသောကြောင့် 1:1 အချိုးက အတိအကျ ချိန်ညှိပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the correct formula for calcium chloride, given Ca2+ and Cl-?",
          questionMy:
              "Ca2+ နှင့် Cl- ကို အခြေခံ၍ ကယ်လစီယမ်ကလိုရိုဒ်၏ မှန်ကန်သော ဖော်မြူလာမှာ အဘယ်နည်း။",
          optionsEn: ["CaCl2", "CaCl", "Ca2Cl", "Ca2Cl2"],
          optionsMy: ["CaCl2", "CaCl", "Ca2Cl", "Ca2Cl2"],
          correctIndex: 0,
          hintsEn: [
            "One Ca2+ ion needs two Cl- ions to balance its charge, since each chloride only carries a single negative charge.",
          ],
          hintsMy: [
            "Ca2+ Ion တစ်ခုသည် Cl- Ion နှစ်ခု လိုအပ်သည်၊ အကြောင်းမှာ ကလိုရိုဒ်တစ်ခုစီသည် အနုတ်သဘော တာဝန်ခံအား တစ်ခုသာ ဆောင်သောကြောင့် ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the balanced equation Mg + 2HCl -> MgCl2 + H2, what does the number '2' in front of HCl indicate?",
          questionMy:
              "ချိန်ညှိထားသော ညီမျှခြင်း Mg + 2HCl -> MgCl2 + H2 တွင် HCl ရှေ့ရှိ '2' ဂဏန်းက အဘယ်ကို ညွှန်ပြသနည်း။",
          optionsEn: [
            "2 moles (or particles) of HCl react for every 1 mole of Mg",
            "There are 2 chlorine atoms in a single HCl molecule",
            "The reaction produces 2 grams of product",
            "The reaction happens twice as fast as normal",
          ],
          optionsMy: [
            "Mg ၁ မိုးလ်နှင့် HCl ၂ မိုးလ် (သို့မဟုတ် အမှုန် ၂ ခု) ဓာတ်ပြုသည်",
            "HCl မော်လီကျူးတစ်ခုတွင် ကလိုရင် အက်တမ် ၂ ခု ရှိသည်",
            "ဓာတ်ပြုမှုက ရလဒ်ပစ္စည်း ဂရမ် ၂ ကို ထုတ်ပေးသည်",
            "ဓာတ်ပြုမှုသည် ပုံမှန်ထက် နှစ်ဆ မြန်ဆန်စွာ ဖြစ်ပွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Coefficients in a balanced equation represent mole ratios, not atom counts within a single molecule.",
          ],
          hintsMy: [
            "ချိန်ညှိထားသော ညီမျှခြင်းရှိ Coefficient များသည် မော်လီကျူးတစ်ခုအတွင်းရှိ အက်တမ်အရေအတွက် မဟုတ်ဘဲ Mole အချိုးများကို ကိုယ်စားပြုသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w5-d2",
      dayNumber: 2,
      titleEn: "Match: Formulae and Equations Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ဖော်မြူလာနှင့် ညီမျှခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w5-dm-1",
          termEn: "Chemical formula",
          termMy: "Chemical Formula",
          matchEn:
              "A notation showing the elements and ratio of atoms in a compound",
          matchMy:
              "ဒြပ်ပေါင်းတစ်ခုရှိ ဒြပ်စင်များနှင့် အက်တမ် အချိုးကို ပြသသော သင်္ကေတစနစ်",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w5-dm-2",
          termEn: "Balanced equation",
          termMy: "Balanced Equation",
          matchEn:
              "An equation where atom counts match on both sides, obeying conservation of mass",
          matchMy:
              "ဘေးနှစ်ဖက်စလုံးတွင် အက်တမ်အရေအတွက် ကိုက်ညီပြီး Mass ထိန်းသိမ်းမှု ဥပဒေအတိုင်း လိုက်နာသော ညီမျှခြင်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w5-dm-3",
          termEn: "Ionic equation",
          termMy: "Ionic Equation",
          matchEn:
              "An equation showing only the ions that actually take part in a reaction",
          matchMy:
              "ဓာတ်ပြုမှုတွင် အမှန်တကယ် ပါဝင်သော Ion များကိုသာ ပြသသော ညီမျှခြင်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w5-dm-4",
          termEn: "Spectator ion",
          termMy: "Spectator Ion",
          matchEn:
              "An ion present in the reaction mixture that does not change or take part",
          matchMy:
              "ဓာတ်ပြု အရောအနှောတွင် ရှိနေသော်လည်း မပြောင်းလဲဘဲ ပါဝင်ဆောင်ရွက်ခြင်း မရှိသော Ion",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w5-dm-5",
          termEn: "Coefficient",
          termMy: "Coefficient",
          matchEn:
              "The number placed in front of a formula in an equation to balance it",
          matchMy: "ညီမျှခြင်းကို ချိန်ညှိရန် ဖော်မြူလာရှေ့တွင် ထားသော ဂဏန်း",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w5-d3",
      dayNumber: 3,
      titleEn: "Sort: Balanced or Unbalanced?",
      titleMy: "စီစစ်ကြမည် - ချိန်ညှိပြီးလား၊ မချိန်ညှိရသေးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Balanced", "Unbalanced"],
        bucketsMy: ["ချိန်ညှိပြီး", "မချိန်ညှိရသေး"],
        items: [
          SortingItem(
            id: "igcsechem-w5-sort-1",
            labelEn: "2H2 + O2 -> 2H2O (4 H and 2 O atoms on each side)",
            labelMy:
                "2H2 + O2 -> 2H2O (ဘက်နှစ်ဖက်စလုံးတွင် H ၄ ခုနှင့် O ၂ ခု)",
            correctBucketEn: "Balanced",
            correctBucketMy: "ချိန်ညှိပြီး",
          ),
          SortingItem(
            id: "igcsechem-w5-sort-2",
            labelEn:
                "H2 + O2 -> H2O (2 H atoms but 2 O atoms on the left, only 1 O on the right)",
            labelMy:
                "H2 + O2 -> H2O (ဘယ်ဘက်တွင် H ၂ ခု၊ O ၂ ခု ရှိသော်လည်း ညာဘက်တွင် O ၁ ခုသာ ရှိသည်)",
            correctBucketEn: "Unbalanced",
            correctBucketMy: "မချိန်ညှိရသေး",
          ),
          SortingItem(
            id: "igcsechem-w5-sort-3",
            labelEn: "N2 + 3H2 -> 2NH3 (2 N and 6 H atoms on each side)",
            labelMy:
                "N2 + 3H2 -> 2NH3 (ဘက်နှစ်ဖက်စလုံးတွင် N ၂ ခုနှင့် H ၆ ခု)",
            correctBucketEn: "Balanced",
            correctBucketMy: "ချိန်ညှိပြီး",
          ),
          SortingItem(
            id: "igcsechem-w5-sort-4",
            labelEn:
                "Mg + HCl -> MgCl2 + H2 (1 Cl atom on the left but 2 Cl atoms on the right)",
            labelMy:
                "Mg + HCl -> MgCl2 + H2 (ဘယ်ဘက်တွင် Cl ၁ ခုသာ ရှိသော်လည်း ညာဘက်တွင် Cl ၂ ခု ရှိသည်)",
            correctBucketEn: "Unbalanced",
            correctBucketMy: "မချိန်ညှိရသေး",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w5-d4",
      dayNumber: 4,
      titleEn: "Reading: Engineer Ko Htet Balances the Ammonia Plant Equation",
      titleMy:
          "စာဖတ်ခြင်း - အင်ဂျင်နီယာ ကိုထက်၏ အမိုးနီးယား စက်ရုံ ညီမျှခြင်း ချိန်ညှိခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Engineer Ko Htet Balances the Ammonia Plant Equation",
        titleMy:
            "အင်ဂျင်နီယာ ကိုထက်၏ အမိုးနီးယား စက်ရုံ ညီမျှခြင်း ချိန်ညှိခြင်း",
        passageEn:
            "Ko Htet, a chemical process engineer at a fertiliser plant, was training a new graduate on the plant's core reaction: nitrogen gas combining with hydrogen gas to produce ammonia, used to make fertiliser. He wrote the unbalanced skeleton equation on the whiteboard: N2 + H2 -> NH3, and asked the trainee what was wrong with it.\n\nThe trainee counted atoms carefully: on the left side, there were 2 nitrogen atoms and 2 hydrogen atoms. On the right side, there was only 1 nitrogen atom and 3 hydrogen atoms. Since atoms cannot be created or destroyed in a chemical reaction -- the law of conservation of mass -- the equation as written was impossible; the same number of each type of atom must appear on both sides.\n\nKo Htet then explained the systematic process: since there were 2 nitrogen atoms on the left but only 1 on the right, he placed a coefficient of 2 in front of NH3, giving N2 + H2 -> 2NH3. This fixed nitrogen (2 on each side) but now created 6 hydrogen atoms on the right (2 x 3), while the left side still only had 2. To fix this, he placed a coefficient of 3 in front of H2 on the left, giving the fully balanced equation: N2 + 3H2 -> 2NH3. Now both sides had exactly 2 nitrogen atoms and 6 hydrogen atoms.\n\nKo Htet emphasised that this coefficient of 3 in front of H2 was not arbitrary -- it meant that for every 1 mole of nitrogen gas that reacted, exactly 3 moles of hydrogen gas were required, producing exactly 2 moles of ammonia. He told the trainee that this precise mole ratio, read directly from the balanced equation, was exactly what plant engineers used to calculate how much hydrogen gas to pump into the reactor for a given quantity of nitrogen -- getting the ratio wrong meant wasted raw material or a stalled reaction.",
        passageMy:
            "မြေဩဇာစက်ရုံရှိ ဓာတု လုပ်ငန်းစဉ် အင်ဂျင်နီယာ ကိုထက်သည် ဘွဲ့ရသစ်တစ်ဦးအား စက်ရုံ၏ အဓိက ဓာတ်ပြုမှုအကြောင်း လေ့ကျင့်ပေးနေခဲ့သည်- နိုက်ထရိုဂျင် ဓာတ်ငွေ့သည် ဟိုက်ဒရိုဂျင် ဓာတ်ငွေ့နှင့် ပေါင်းစပ်ကာ မြေဩဇာလုပ်ရန် အသုံးပြုသည့် အမိုးနီးယား ထုတ်ပေးသည်။ သူသည် ချိန်ညှိမထားသော ညီမျှခြင်း၏ အကြမ်းပုံစံကို Whiteboard ပေါ်တွင် ရေးခဲ့သည်- N2 + H2 -> NH3၊ ပြီးလျှင် ၎င်းတွင် မှားနေသည်ကို လေ့ကျင့်သူအား မေးမြန်းခဲ့သည်။\n\nလေ့ကျင့်သူသည် အက်တမ်များကို ဂရုတစိုက် ရေတွက်ခဲ့သည်- ဘယ်ဘက်တွင် နိုက်ထရိုဂျင် အက်တမ် ၂ ခုနှင့် ဟိုက်ဒရိုဂျင် အက်တမ် ၂ ခု ရှိသည်။ ညာဘက်တွင် နိုက်ထရိုဂျင် အက်တမ် ၁ ခုသာ ရှိပြီး ဟိုက်ဒရိုဂျင် အက်တမ် ၃ ခု ရှိသည်။ ဓာတုဓာတ်ပြုမှု တစ်ခုအတွင်း အက်တမ်များကို ဖန်တီး၍မရ ဖျက်ဆီး၍မရသောကြောင့် -- Mass ထိန်းသိမ်းမှု ဥပဒေ -- ရေးထားသည့်အတိုင်း ညီမျှခြင်းသည် မဖြစ်နိုင်ပါ၊ အက်တမ် အမျိုးအစားတစ်ခုစီ၏ အရေအတွက် တူညီစွာ ဘက်နှစ်ဖက်စလုံးတွင် ပေါ်နေရမည်။\n\nထို့နောက် ကိုထက်က စနစ်တကျ လုပ်ငန်းစဉ်ကို ရှင်းပြခဲ့သည်- ဘယ်ဘက်တွင် နိုက်ထရိုဂျင် ၂ ခု ရှိသော်လည်း ညာဘက်တွင် ၁ ခုသာ ရှိသောကြောင့် သူသည် NH3 ရှေ့တွင် Coefficient ၂ ကို ထားခဲ့သည်၊ N2 + H2 -> 2NH3 ကို ပေးခဲ့သည်။ ၎င်းက နိုက်ထရိုဂျင်ကို ပြင်ဆင်ပေးခဲ့သော်လည်း (ဘက်နှစ်ဖက်စလုံးတွင် ၂ စီ) ယခု ညာဘက်တွင် ဟိုက်ဒရိုဂျင် အက်တမ် ၆ ခု ဖြစ်လာခဲ့သည် (2 x 3)၊ ဘယ်ဘက်တွင်မူ ၂ ခုသာ ရှိနေဆဲ ဖြစ်သည်။ ၎င်းကို ပြင်ဆင်ရန် သူသည် ဘယ်ဘက်ရှိ H2 ရှေ့တွင် Coefficient ၃ ကို ထားခဲ့ကာ အပြည့်အဝ ချိန်ညှိထားသော ညီမျှခြင်းကို ရရှိခဲ့သည်- N2 + 3H2 -> 2NH3။ ယခု ဘက်နှစ်ဖက်စလုံးတွင် နိုက်ထရိုဂျင် အက်တမ် ၂ ခုနှင့် ဟိုက်ဒရိုဂျင် အက်တမ် ၆ ခု အတိအကျ ရှိလာခဲ့သည်။\n\nH2 ရှေ့ရှိ ဤ Coefficient ၃ သည် ကျပန်း မဟုတ်ကြောင်း ကိုထက် အလေးထား ဖော်ပြခဲ့သည် -- ၎င်းက ဓာတ်ပြုသော နိုက်ထရိုဂျင် ဓာတ်ငွေ့ ၁ မိုးလ်တိုင်းအတွက် ဟိုက်ဒရိုဂျင် ဓာတ်ငွေ့ ၃ မိုးလ် အတိအကျ လိုအပ်ကာ အမိုးနီးယား ၂ မိုးလ် အတိအကျ ထုတ်ပေးကြောင်း ဆိုလိုသည်။ ချိန်ညှိထားသော ညီမျှခြင်းမှ တိုက်ရိုက် ဖတ်ရှုရသော ဤ တိကျသော Mole အချိုးသည် ပေးထားသော နိုက်ထရိုဂျင် ပမာဏအတွက် ဟိုက်ဒရိုဂျင် ဓာတ်ငွေ့ မည်မျှ Reactor ထဲသို့ ထည့်ရမည်ကို တွက်ချက်ရန် စက်ရုံ အင်ဂျင်နီယာများ အသုံးပြုသည့်အရာပင် ဖြစ်ကြောင်း လေ့ကျင့်သူအား ပြောကြားခဲ့သည် -- အချိုးကို မှားယွင်းစွာ ချမှတ်ခြင်းသည် ကုန်ကြမ်း ဆုံးရှုံးခြင်း သို့မဟုတ် ဓာတ်ပြုမှု ရပ်တန့်ခြင်းကို ဆိုလိုသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why must a chemical equation have equal numbers of each atom on both sides?",
            questionMy:
                "ဓာတုညီမျှခြင်းတစ်ခုတွင် အက်တမ် အမျိုးအစားတစ်ခုစီ၏ အရေအတွက် ဘက်နှစ်ဖက်စလုံးတွင် ညီမျှရမည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Atoms cannot be created or destroyed in a chemical reaction (conservation of mass)",
              "It makes the equation look neater",
              "Nitrogen gas is dangerous otherwise",
              "It is only a suggestion, not a rule",
            ],
            optionsMy: [
              "ဓာတုဓာတ်ပြုမှုတစ်ခုအတွင်း အက်တမ်များကို ဖန်တီး၍မရ ဖျက်ဆီး၍မရသောကြောင့် (Mass ထိန်းသိမ်းမှု)",
              "ညီမျှခြင်းကို ပိုပြီး သပ်ရပ်အောင် လုပ်ပေးသောကြောင့်",
              "နိုက်ထရိုဂျင် ဓာတ်ငွေ့သည် အန္တရာယ်ရှိသောကြောင့်",
              "ဥပဒေ မဟုတ်ဘဲ အကြံပြုချက်တစ်ခုသာ ဖြစ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explicitly naming the law of conservation of mass.",
            ],
            hintsMy: [
              "Mass ထိန်းသိမ်းမှု ဥပဒေကို တိတိကျကျ ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what is the final, fully balanced form of the ammonia equation?",
            questionMy:
                "အမိုးနီးယား ညီမျှခြင်း၏ နောက်ဆုံး အပြည့်အဝ ချိန်ညှိထားသော ပုံစံကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "N2 + 3H2 -> 2NH3",
              "N2 + H2 -> NH3",
              "N2 + 2H2 -> 2NH3",
              "2N2 + 3H2 -> NH3",
            ],
            optionsMy: [
              "N2 + 3H2 -> 2NH3",
              "N2 + H2 -> NH3",
              "N2 + 2H2 -> 2NH3",
              "2N2 + 3H2 -> NH3",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence stating the fully balanced equation directly.",
            ],
            hintsMy: [
              "အပြည့်အဝ ချိန်ညှိထားသော ညီမျှခြင်းကို တိုက်ရိုက် ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the balanced equation, how many moles of hydrogen gas are needed for every 1 mole of nitrogen gas?",
            questionMy:
                "ချိန်ညှိထားသော ညီမျှခြင်းအရ နိုက်ထရိုဂျင် ဓာတ်ငွေ့ ၁ မိုးလ်တိုင်းအတွက် ဟိုက်ဒရိုဂျင် ဓာတ်ငွေ့ မိုးလ် မည်မျှ လိုအပ်သနည်း။",
            optionsEn: ["3 moles", "1 mole", "2 moles", "6 moles"],
            optionsMy: ["၃ မိုးလ်", "၁ မိုးလ်", "၂ မိုးလ်", "၆ မိုးလ်"],
            correctIndex: 0,
            hintsEn: [
              "Reread the final paragraph explaining the mole ratio read from the coefficients.",
            ],
            hintsMy: [
              "Coefficient များမှ ဖတ်ရှုရသော Mole အချိုးကို ရှင်းပြထားသော နောက်ဆုံးစာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to the final paragraph, what happens if plant engineers get the mole ratio wrong?",
            questionMy:
                "စက်ရုံ အင်ဂျင်နီယာများသည် Mole အချိုးကို မှားယွင်းစွာ ချမှတ်ပါက အဘယ်ကြောင့် ဖြစ်လာသနည်း။",
            optionsEn: [
              "Wasted raw material or a stalled reaction",
              "The plant becomes more efficient",
              "Nothing changes at all",
              "The ammonia becomes a different colour",
            ],
            optionsMy: [
              "ကုန်ကြမ်း ဆုံးရှုံးခြင်း သို့မဟုတ် ဓာတ်ပြုမှု ရပ်တန့်ခြင်း",
              "စက်ရုံသည် ပို၍ ထိရောက်လာသည်",
              "မည်သည့်အရာမျှ မပြောင်းလဲပါ",
              "အမိုးနီးယား၏ အရောင် ပြောင်းလဲသွားသည်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the very last sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w5-d5",
      dayNumber: 5,
      titleEn: "Week 5 Recap: Formulae and Equations",
      titleMy: "ပဉ္စမပတ် ပြန်လည်သုံးသပ်ခြင်း - ဖော်မြူလာနှင့် ညီမျှခြင်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Chemical equations must be balanced to obey which law?",
          questionMy:
              "ဓာတုညီမျှခြင်းများသည် မည်သည့် ဥပဒေကို လိုက်နာရန် ချိန်ညှိရသနည်း",
          optionsEn: [
            "Conservation of mass",
            "Conservation of energy only",
            "Gravity",
            "Newton's third law",
          ],
          optionsMy: [
            "Mass ထိန်းသိမ်းမှု ဥပဒေ",
            "စွမ်းအင် ထိန်းသိမ်းမှု ဥပဒေသာ",
            "ဆွဲငင်အား",
            "နယူတန်၏ တတိယ ဥပဒေ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A spectator ion in an ionic equation is one that...",
          questionMy: "Ionic Equation တစ်ခုတွင် Spectator Ion ဆိုသည်မှာ...",
          optionsEn: [
            "Does not take part in the reaction",
            "Reacts fastest",
            "Turns into a gas",
            "Changes colour",
          ],
          optionsMy: [
            "ဓာတ်ပြုမှုတွင် ပါဝင်ဆောင်ရွက်ခြင်း မရှိ",
            "အမြန်ဆုံး ဓာတ်ပြု",
            "ဓာတ်ငွေ့ ဖြစ်သွား",
            "အရောင် ပြောင်းလဲသွား",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In a balanced equation, the coefficients represent the...",
          questionMy:
              "ချိန်ညှိထားသော ညီမျှခြင်းတစ်ခုတွင် Coefficient များသည်...",
          optionsEn: [
            "Mole ratio between reactants and products",
            "Colour of each substance",
            "Temperature of the reaction",
            "Weight in kilograms",
          ],
          optionsMy: [
            "Reactant များနှင့် Product များကြား Mole အချိုး",
            "ပစ္စည်းတစ်ခုစီ၏ အရောင်",
            "ဓာတ်ပြုမှု၏ အပူချိန်",
            "ကီလိုဂရမ်ဖြင့် အလေးချိန်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 6: "The Mole Concept and Calculations"
// =====================================================================

const CourseWeekDef _igcseChemWeek6 = CourseWeekDef(
  id: "course-igcse-chem-w6",
  weekNumber: 6,
  titleEn: "The Mole Concept and Calculations",
  titleMy: "မိုးလ် (Mole) သဘောတရားနှင့် တွက်ချက်မှုများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w6-d1",
      dayNumber: 1,
      titleEn: "The Mole and Avogadro's Constant",
      titleMy: "မိုးလ်နှင့် Avogadro ကိန်းသေ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does one mole of any substance represent?",
          questionMy:
              "မည်သည့် ပစ္စည်း၏ မိုးလ် တစ်ခုသည် အဘယ်ကို ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "Avogadro's number (6.02 x 10^23) of particles of that substance",
            "Exactly 1 gram of the substance, always",
            "Exactly 1 litre of the substance, always",
            "A random small amount of the substance",
          ],
          optionsMy: [
            "ထို ပစ္စည်း၏ Avogadro ကိန်း (6.02 x 10^23) အမှုန်များ",
            "ထို ပစ္စည်း၏ ဂရမ် ၁ ခု အတိအကျ၊ အမြဲတမ်း",
            "ထို ပစ္စည်း၏ လီတာ ၁ ခု အတိအကျ၊ အမြဲတမ်း",
            "ထို ပစ္စည်း၏ ကျပန်း ပမာဏ အနည်းငယ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A mole is a counting unit, like a 'dozen', but for an enormous number of particles.",
            "Avogadro's constant is approximately 6.02 x 10^23 particles per mole.",
          ],
          hintsMy: [
            "Mole သည် 'ဒါဇင်' ကဲ့သို့ ရေတွက်ရေးယူနစ်တစ်ခုဖြစ်သော်လည်း အလွန်များပြားသော အမှုန်အရေအတွက်အတွက် ဖြစ်သည်။",
            "Avogadro ကိန်းသေသည် မိုးလ်တစ်ခုလျှင် အမှုန် 6.02 x 10^23 ခန့် ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "How many moles are there in 20 g of a substance with a relative formula mass (Mr) of 40?",
          questionMy:
              "Relative Formula Mass (Mr) 40 ရှိသော ပစ္စည်း ၂၀ ဂရမ်တွင် မိုးလ် မည်မျှ ရှိသနည်း။",
          optionsEn: ["0.5 mol", "2 mol", "20 mol", "40 mol"],
          optionsMy: ["0.5 mol", "2 mol", "20 mol", "40 mol"],
          correctIndex: 0,
          hintsEn: [
            "Moles = mass (g) ÷ relative formula mass (Mr).",
            "20 ÷ 40 = 0.5.",
          ],
          hintsMy: [
            "Mole = Mass (g) ÷ Relative Formula Mass (Mr)",
            "20 ÷ 40 = 0.5",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the relative formula mass (Mr) of water, H2O? (Ar: H = 1, O = 16)",
          questionMy:
              "ရေ H2O ၏ Relative Formula Mass (Mr) မှာ အဘယ်နည်း။ (Ar: H = 1, O = 16)",
          optionsEn: ["18", "17", "16", "2"],
          optionsMy: ["18", "17", "16", "2"],
          correctIndex: 0,
          hintsEn: [
            "Add up the relative atomic masses of every atom in the formula: 2 hydrogens plus 1 oxygen.",
            "(2 x 1) + 16 = 18.",
          ],
          hintsMy: [
            "ဖော်မြူလာရှိ အက်တမ်တိုင်း၏ Relative Atomic Mass ကို ပေါင်းလိုက်ပါ - ဟိုက်ဒရိုဂျင် ၂ ခုနှင့် အောက်ဆီဂျင် ၁ ခု",
            "(2 x 1) + 16 = 18",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w6-d2",
      dayNumber: 2,
      titleEn: "Match: Mole Concept Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Mole သဘောတရား ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w6-dm-1",
          termEn: "Mole",
          termMy: "Mole",
          matchEn:
              "The SI unit for the amount of a substance, containing Avogadro's number of particles",
          matchMy:
              "Avogadro ကိန်းအရေအတွက် အမှုန်များ ပါဝင်သော ပစ္စည်းပမာဏအတွက် SI ယူနစ်",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w6-dm-2",
          termEn: "Avogadro's constant",
          termMy: "Avogadro's Constant",
          matchEn: "6.02 x 10^23 particles per mole",
          matchMy: "မိုးလ်တစ်ခုလျှင် အမှုန် 6.02 x 10^23 ခု",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w6-dm-3",
          termEn: "Relative formula mass (Mr)",
          termMy: "Relative Formula Mass (Mr)",
          matchEn:
              "The sum of the relative atomic masses of all atoms in a formula",
          matchMy:
              "ဖော်မြူလာရှိ အက်တမ်အားလုံး၏ Relative Atomic Mass များ၏ ပေါင်းလဒ်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w6-dm-4",
          termEn: "Percentage yield",
          termMy: "Percentage Yield",
          matchEn:
              "The actual amount of product obtained divided by the theoretical maximum, as a percentage",
          matchMy:
              "ရရှိသော အမှန်တကယ် ရလဒ်ပစ္စည်း ပမာဏကို သီအိုရီအရ အများဆုံး ပမာဏဖြင့် စားပြီး ရာခိုင်နှုန်းအဖြစ် ပြသခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w6-dm-5",
          termEn: "Percentage purity",
          termMy: "Percentage Purity",
          matchEn:
              "The mass of a pure substance in a sample divided by the total sample mass, as a percentage",
          matchMy:
              "နမူနာတစ်ခုရှိ သန့်ရှင်းသော ပစ္စည်း၏ Mass ကို နမူနာစုစုပေါင်း Mass ဖြင့် စားပြီး ရာခိုင်နှုန်းအဖြစ် ပြသခြင်း",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w6-d3",
      dayNumber: 3,
      titleEn: "Sort: Mole, Mass, or Formula Term?",
      titleMy: "စီစစ်ကြမည် - Mole၊ Mass သို့မဟုတ် ဖော်မြူလာ ဝေါဟာရ",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Mole-related", "Mass/Formula-related"],
        bucketsMy: ["Mole ဆိုင်ရာ", "Mass/ဖော်မြူလာ ဆိုင်ရာ"],
        items: [
          SortingItem(
            id: "igcsechem-w6-sort-1",
            labelEn: "Avogadro's constant, 6.02 x 10^23",
            labelMy: "Avogadro ကိန်းသေ, 6.02 x 10^23",
            correctBucketEn: "Mole-related",
            correctBucketMy: "Mole ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsechem-w6-sort-2",
            labelEn: "Relative formula mass (Mr) of a compound",
            labelMy: "ဒြပ်ပေါင်းတစ်ခု၏ Relative Formula Mass (Mr)",
            correctBucketEn: "Mass/Formula-related",
            correctBucketMy: "Mass/ဖော်မြူလာ ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsechem-w6-sort-3",
            labelEn: "Moles = mass ÷ Mr",
            labelMy: "Mole = Mass ÷ Mr",
            correctBucketEn: "Mole-related",
            correctBucketMy: "Mole ဆိုင်ရာ",
          ),
          SortingItem(
            id: "igcsechem-w6-sort-4",
            labelEn: "Percentage purity of a sample",
            labelMy: "နမူနာတစ်ခု၏ ရာခိုင်နှုန်း သန့်ရှင်းမှု",
            correctBucketEn: "Mass/Formula-related",
            correctBucketMy: "Mass/ဖော်မြူလာ ဆိုင်ရာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w6-d4",
      dayNumber: 4,
      titleEn: "Reading: Pharmacist Daw Hnin's Aspirin Yield Problem",
      titleMy: "စာဖတ်ခြင်း - ဆေးဝါးပညာရှင် ဒေါ်နှင်း၏ Aspirin ရလဒ် ပြဿနာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Pharmacist Daw Hnin's Aspirin Yield Problem",
        titleMy: "ဆေးဝါးပညာရှင် ဒေါ်နှင်း၏ Aspirin ရလဒ် ပြဿနာ",
        passageEn:
            "Daw Hnin, a pharmaceutical chemist, was training a laboratory technician in a small drug-manufacturing facility. Their task was to synthesise a batch of aspirin and check the reaction's efficiency. According to the balanced equation and starting quantities, the theoretical maximum yield -- the greatest possible mass of aspirin obtainable if the reaction went perfectly with no losses -- was calculated to be 50 g.\n\nWhen the technician actually weighed the purified aspirin crystals collected at the end of the process, the mass was only 42 g. Daw Hnin explained that this shortfall was completely normal and expected in real laboratory conditions: some product is always lost during transfers between containers, some remains dissolved in the solution during filtration, and some side reactions inevitably produce different, unwanted products instead of pure aspirin.\n\nTo quantify exactly how efficient the reaction had been, Daw Hnin calculated the percentage yield: (actual yield ÷ theoretical yield) x 100%. Substituting the numbers gave (42 ÷ 50) x 100% = 84%. She explained that a percentage yield of 84% was actually quite good for a student-run synthesis -- industrial pharmaceutical processes aim even higher, but losses can never be reduced to exactly zero in practice.\n\nThe technician then asked a follow-up question: what if the starting aspirin sample itself was contaminated with unreacted starting material? Daw Hnin explained that this was a separate calculation entirely -- percentage purity -- which measured what fraction of a given sample was the pure substance itself, calculated as (mass of pure substance ÷ total mass of sample) x 100%. She noted that a batch could have a high percentage yield from the reaction, yet still have a low percentage purity if it were poorly purified afterward -- the two calculations, she stressed, answered genuinely different questions and were never interchangeable.",
        passageMy:
            "ဆေးဝါးပညာရှင် ဒေါ်နှင်းသည် ဆေးဝါး ထုတ်လုပ်ရေး လုပ်ငန်းငယ်တစ်ခုတွင် ဓာတ်ခွဲခန်း နည်းပညာရှင်တစ်ဦးအား လေ့ကျင့်ပေးနေခဲ့သည်။ သူတို့၏ အလုပ်မှာ Aspirin အသုတ်တစ်ခု ရေတည်ကာ ဓာတ်ပြုမှု၏ ထိရောက်မှုကို စစ်ဆေးရန် ဖြစ်သည်။ ချိန်ညှိထားသော ညီမျှခြင်းနှင့် အစပမာဏများအရ သီအိုရီအရ အများဆုံး ရလဒ် -- ဓာတ်ပြုမှုသည် ဆုံးရှုံးမှု လုံးဝမရှိဘဲ ပြီးပြည့်စုံစွာ ဖြစ်ပါက ရရှိနိုင်သော Aspirin Mass အများဆုံး -- ကို ၅၀ ဂရမ် ဖြစ်ကြောင်း တွက်ချက်ခဲ့သည်။\n\nနည်းပညာရှင်သည် လုပ်ငန်းစဉ် အဆုံးတွင် စုဆောင်းရရှိသော သန့်စင် Aspirin ဓာတ်သလင်းများကို အမှန်တကယ် ချိန်ကြည့်သည့်အခါ Mass မှာ ၄၂ ဂရမ်သာ ရှိခဲ့သည်။ ဤ ကျဆင်းမှုသည် အမှန်တကယ် ဓာတ်ခွဲခန်း အခြေအနေများတွင် လုံးဝ ပုံမှန်ဖြစ်ပြီး မျှော်လင့်ထားသည့်အတိုင်း ဖြစ်ကြောင်း ဒေါ်နှင်း ရှင်းပြခဲ့သည်- ရလဒ်ပစ္စည်း အချို့သည် ပုံးများကြား ရွှေ့ပြောင်းစဉ် အမြဲတမ်း ဆုံးရှုံးတတ်ပြီး၊ အချို့ကလည်း ပါးစပ်ခံစစ်ခြင်းစဉ် ပျော်ရည်ထဲတွင် ကျန်ရှိနေတတ်ကာ၊ အချို့ ဘေးဓာတ်ပြုမှုများက သန့်ရှင်းသော Aspirin အစား လိုချင်မဲ့ ကွဲပြားသော ရလဒ်ပစ္စည်းများကို မလွှဲမရှောင်သာ ထုတ်ပေးတတ်သည်။\n\nဓာတ်ပြုမှု မည်မျှ ထိရောက်ခဲ့ကြောင်း အတိအကျ ချိန်ညှိတွက်ချက်ရန် ဒေါ်နှင်းသည် ရာခိုင်နှုန်း ရလဒ်ကို တွက်ချက်ခဲ့သည်- (အမှန်တကယ် ရလဒ် ÷ သီအိုရီအရ ရလဒ်) x 100%။ ဂဏန်းများကို အစားထိုးလိုက်သည့်အခါ (42 ÷ 50) x 100% = 84% ကို ရရှိခဲ့သည်။ ကျောင်းသား လုပ်ဆောင်သော ရေတည်မှုတစ်ခုအတွက် ရာခိုင်နှုန်း ရလဒ် ၈၄% သည် အမှန်တကယ် ကောင်းမွန်ကြောင်း သူမ ရှင်းပြခဲ့သည် -- စက်မှု ဆေးဝါး လုပ်ငန်းစဉ်များသည် ပို၍မြင့်မားစွာ ရည်မှန်းကြသော်လည်း လက်တွေ့တွင် ဆုံးရှုံးမှုများကို သုညအထိ ဘယ်တော့မှ လျှော့ချ၍ မရနိုင်ပါ။\n\nနည်းပညာရှင်သည် ဆက်လက်၍ မေးခွန်းတစ်ခု မေးခဲ့သည်- Aspirin နမူနာ အစသည် ဓာတ်မပြုရသေးသော အစပစ္စည်းဖြင့် ညစ်ညမ်းနေခဲ့ပါက အဘယ်သို့ ဖြစ်မည်နည်း။ ၎င်းသည် လုံးဝ သီးခြား တွက်ချက်မှုတစ်ခု -- ရာခိုင်နှုန်း သန့်ရှင်းမှု -- ဖြစ်ကြောင်း ဒေါ်နှင်း ရှင်းပြခဲ့သည်၊ ၎င်းသည် ပေးထားသော နမူနာတစ်ခု၏ မည်မျှသော အပိုင်းသည် သန့်ရှင်းသော ပစ္စည်းကိုယ်တိုင် ဖြစ်ကြောင်း တိုင်းတာပေးသည်၊ (သန့်ရှင်းသော ပစ္စည်း Mass ÷ နမူနာ စုစုပေါင်း Mass) x 100% ဖြင့် တွက်ချက်သည်။ အသုတ်တစ်ခုသည် ဓာတ်ပြုမှုမှ ရာခိုင်နှုန်း ရလဒ် မြင့်မားစွာ ရရှိနိုင်သော်လည်း နောက်ပိုင်း သန့်စင်မှု ညံ့ဖျင်းပါက ရာခိုင်နှုန်း သန့်ရှင်းမှု နိမ့်ကျနေနိုင်ကြောင်း ဒေါ်နှင်း မှတ်ချက်ပြုခဲ့သည် -- တွက်ချက်မှု နှစ်ခုသည် လုံးဝ ကွဲပြားသော မေးခွန်းများကို ဖြေဆိုပေးပြီး ဘယ်တော့မှ အပြန်အလှန် အသုံးပြု၍ မရကြောင်း သူမ အလေးထားခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what is the theoretical yield?",
            questionMy:
                "သီအိုရီအရ ရလဒ် (Theoretical Yield) ဆိုသည်မှာ အဘယ်နည်းကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The greatest possible mass of product obtainable if the reaction went perfectly with no losses",
              "The mass of product actually collected in the lab",
              "The mass of the starting materials only",
              "A random guess with no calculation",
            ],
            optionsMy: [
              "ဓာတ်ပြုမှုသည် ဆုံးရှုံးမှု လုံးဝမရှိဘဲ ပြီးပြည့်စုံစွာ ဖြစ်ပါက ရရှိနိုင်သော ရလဒ်ပစ္စည်း Mass အများဆုံး",
              "ဓာတ်ခွဲခန်းတွင် အမှန်တကယ် စုဆောင်းရရှိသော ရလဒ်ပစ္စည်း Mass",
              "အစပစ္စည်းများ၏ Mass သာ",
              "တွက်ချက်မှု မပါသော ကျပန်း ခန့်မှန်းချက်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence defining 'theoretical maximum yield'.",
            ],
            hintsMy: [
              "'သီအိုရီအရ အများဆုံး ရလဒ်' ကို အနက်ဖွင့်ဆိုထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what is the calculated percentage yield of the aspirin batch?",
            questionMy:
                "Aspirin အသုတ်၏ တွက်ချက်ထားသော ရာခိုင်နှုန်း ရလဒ်ကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: ["84%", "50%", "42%", "100%"],
            optionsMy: ["84%", "50%", "42%", "100%"],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence performing the calculation (42 ÷ 50) x 100%.",
            ],
            hintsMy: [
              "(42 ÷ 50) x 100% တွက်ချက်မှု ပြုလုပ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why is 100% percentage yield essentially never achieved in real labs?",
            questionMy:
                "အမှန်တကယ် ဓာတ်ခွဲခန်းများတွင် ရာခိုင်နှုန်း ရလဒ် ၁၀၀% ကို အခြေခံအားဖြင့် ဘယ်တော့မှ မရနိုင်ခြင်း အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Product is lost during transfers, some remains dissolved during filtration, and side reactions occur",
              "The equation used was wrong from the start",
              "Aspirin cannot actually be made this way",
              "The scale was broken",
            ],
            optionsMy: [
              "ရွှေ့ပြောင်းစဉ် ရလဒ်ပစ္စည်း ဆုံးရှုံးခြင်း၊ ပါးစပ်ခံစစ်ခြင်းစဉ် ပျော်ရည်ထဲတွင် ကျန်ရှိခြင်းနှင့် ဘေးဓာတ်ပြုမှုများ ဖြစ်ပွားခြင်း",
              "အသုံးပြုထားသော ညီမျှခြင်းသည် အစကတည်းက မှားနေခြင်း",
              "Aspirin ကို ဤနည်းဖြင့် အမှန်တကယ် ပြုလုပ်၍ မရနိုင်ခြင်း",
              "အလေးချိန်ကိရိယာ ပျက်စီးနေခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence listing the three reasons for product loss.",
            ],
            hintsMy: [
              "ရလဒ်ပစ္စည်း ဆုံးရှုံးရသည့် အကြောင်းရင်း သုံးခုကို ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final paragraph, can a batch have a high percentage yield but a low percentage purity?",
            questionMy:
                "အသုတ်တစ်ခုသည် ရာခိုင်နှုန်း ရလဒ် မြင့်မားပြီး ရာခိုင်နှုန်း သန့်ရှင်းမှု နိမ့်ကျနိုင်ပါသလား၊ နောက်ဆုံးစာပိုဒ်အရ ဖော်ပြပါ။",
            optionsEn: [
              "Yes -- if the reaction went well but the product was poorly purified afterward",
              "No -- the two values are always identical",
              "No -- high yield always guarantees high purity",
              "The passage does not address this",
            ],
            optionsMy: [
              "ဖြစ်နိုင်သည် -- ဓာတ်ပြုမှု ကောင်းမွန်စွာ ဖြစ်ခဲ့သော်လည်း ရလဒ်ပစ္စည်းကို နောက်ပိုင်း ညံ့ဖျင်းစွာ သန့်စင်ခဲ့ပါက",
              "မဖြစ်နိုင်ပါ -- တန်ဖိုးနှစ်ခုသည် အမြဲတမ်း တူညီသည်",
              "မဖြစ်နိုင်ပါ -- ရလဒ်မြင့်မားခြင်းက သန့်ရှင်းမှု မြင့်မားခြင်းကို အမြဲ အာမခံသည်",
              "စာပိုဒ်က ၎င်းကို မဖော်ပြထားပါ",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the last two sentences of the passage."],
            hintsMy: [
              "စာပိုဒ်၏ နောက်ဆုံး စာကြောင်း နှစ်ကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w6-d5",
      dayNumber: 5,
      titleEn: "Week 6 Recap: The Mole Concept",
      titleMy: "ဆဌမပတ် ပြန်လည်သုံးသပ်ခြင်း - Mole သဘောတရား",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Moles = mass (g) ÷ ...",
          questionMy: "Mole = Mass (g) ÷ ...",
          optionsEn: [
            "Relative formula mass (Mr)",
            "Temperature",
            "Volume in litres",
            "Number of atoms",
          ],
          optionsMy: [
            "Relative Formula Mass (Mr)",
            "အပူချိန်",
            "လီတာဖြင့် ထုထည်",
            "အက်တမ် အရေအတွက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Percentage yield compares...",
          questionMy: "ရာခိုင်နှုန်း ရလဒ်သည် ...ကို နှိုင်းယှဉ်သည်",
          optionsEn: [
            "Actual yield to theoretical yield",
            "Purity to colour",
            "Mass to volume only",
            "Time to temperature",
          ],
          optionsMy: [
            "အမှန်တကယ် ရလဒ်ကို သီအိုရီအရ ရလဒ်နှင့်",
            "သန့်ရှင်းမှုကို အရောင်နှင့်",
            "Mass ကို ထုထည်နှင့်သာ",
            "အချိန်ကို အပူချိန်နှင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Avogadro's constant is approximately...",
          questionMy: "Avogadro ကိန်းသေသည် ခန့်မှန်းခြေ...",
          optionsEn: [
            "6.02 x 10^23 per mole",
            "1 x 10^3 per mole",
            "100 per mole",
            "3.14 per mole",
          ],
          optionsMy: [
            "Mole တစ်ခုလျှင် 6.02 x 10^23",
            "Mole တစ်ခုလျှင် 1 x 10^3",
            "Mole တစ်ခုလျှင် 100",
            "Mole တစ်ခုလျှင် 3.14",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 7: "Gas Volumes and Concentration Calculations"
// =====================================================================

const CourseWeekDef _igcseChemWeek7 = CourseWeekDef(
  id: "course-igcse-chem-w7",
  weekNumber: 7,
  titleEn: "Gas Volumes and Concentration Calculations",
  titleMy: "ဓာတ်ငွေ့ ထုထည်နှင့် ပျော်ရည် အာဟာရပါဝင်မှု တွက်ချက်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w7-d1",
      dayNumber: 1,
      titleEn: "Molar Gas Volume and Concentration",
      titleMy: "Molar Gas Volume နှင့် ပျော်ရည် အာဟာရပါဝင်မှု",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "At room temperature and pressure (r.t.p.), what volume does 1 mole of any gas occupy?",
          questionMy:
              "အခန်းအပူချိန်နှင့် ဖိအား (r.t.p.) တွင် မည်သည့် ဓာတ်ငွေ့မဆို ၁ မိုးလ်သည် ထုထည် မည်မျှ ယူသနည်း။",
          optionsEn: [
            "24 dm3 (24,000 cm3)",
            "1 dm3",
            "1 litre only for hydrogen",
            "It depends heavily on which gas it is",
          ],
          optionsMy: [
            "24 dm3 (24,000 cm3)",
            "1 dm3",
            "ဟိုက်ဒရိုဂျင်အတွက်သာ လီတာ ၁ လီတာ",
            "မည်သည့် ဓာတ်ငွေ့ ဖြစ်သည်ပေါ် များစွာ မူတည်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is a key IGCSE constant: the molar gas volume at r.t.p. is the same for any gas, regardless of identity.",
          ],
          hintsMy: [
            "၎င်းသည် IGCSE အဓိက ကိန်းသေတစ်ခုဖြစ်သည် - r.t.p. တွင် Molar Gas Volume သည် ဓာတ်ငွေ့ မည်သို့ပင် ဖြစ်စေ တူညီသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What volume would 0.5 moles of oxygen gas occupy at r.t.p.?",
          questionMy:
              "r.t.p. တွင် အောက်ဆီဂျင် ဓာတ်ငွေ့ ၀.၅ မိုးလ်သည် ထုထည် မည်မျှ ယူမည်နည်း။",
          optionsEn: ["12 dm3", "24 dm3", "48 dm3", "6 dm3"],
          optionsMy: ["12 dm3", "24 dm3", "48 dm3", "6 dm3"],
          correctIndex: 0,
          hintsEn: ["Volume = moles x 24 dm3.", "0.5 x 24 = 12."],
          hintsMy: ["Volume = Mole x 24 dm3", "0.5 x 24 = 12"],
        ),
        QuizQuestion(
          questionEn:
              "What is the concentration (in mol/dm3) of a solution containing 2 moles of solute dissolved in 4 dm3 of solution?",
          questionMy:
              "ပျော်ရည် 4 dm3 တွင် ပျော်ဝင်ထားသော Solute 2 mole ပါဝင်သည့် ပျော်ရည်၏ Concentration (mol/dm3 ဖြင့်) မှာ အဘယ်နည်း။",
          optionsEn: ["0.5 mol/dm3", "2 mol/dm3", "8 mol/dm3", "6 mol/dm3"],
          optionsMy: ["0.5 mol/dm3", "2 mol/dm3", "8 mol/dm3", "6 mol/dm3"],
          correctIndex: 0,
          hintsEn: [
            "Concentration = moles of solute ÷ volume of solution (in dm3).",
            "2 ÷ 4 = 0.5.",
          ],
          hintsMy: [
            "Concentration = Solute ၏ Mole ÷ ပျော်ရည် ထုထည် (dm3 ဖြင့်)",
            "2 ÷ 4 = 0.5",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w7-d2",
      dayNumber: 2,
      titleEn: "Match: Gas and Solution Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ဓာတ်ငွေ့နှင့် ပျော်ရည် ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w7-dm-1",
          termEn: "Molar gas volume",
          termMy: "Molar Gas Volume",
          matchEn:
              "The volume occupied by 1 mole of any gas at r.t.p., approximately 24 dm3",
          matchMy:
              "r.t.p. တွင် ဓာတ်ငွေ့ မည်သည့် ၁ မိုးလ်ဖြစ်စေ ယူသော ထုထည်, ခန့်မှန်းခြေ 24 dm3",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w7-dm-2",
          termEn: "Concentration",
          termMy: "Concentration",
          matchEn:
              "The amount of solute (in moles) dissolved per unit volume of solution",
          matchMy:
              "ပျော်ရည် ထုထည် ယူနစ်တစ်ခုလျှင် ပျော်ဝင်ထားသော Solute ပမာဏ (Mole ဖြင့်)",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w7-dm-3",
          termEn: "Titration",
          termMy: "Titration",
          matchEn:
              "A technique using a burette to find the exact volume needed to neutralise a solution",
          matchMy:
              "ပျော်ရည်တစ်ခုကို ကျေအေးစေရန် လိုအပ်သော ထုထည် အတိအကျကို ရှာဖွေရန် Burette အသုံးပြုသည့် နည်းပညာ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w7-dm-4",
          termEn: "Burette",
          termMy: "Burette",
          matchEn:
              "A graduated glass tube used to deliver precise, measured volumes of liquid",
          matchMy:
              "အရည်၏ တိကျ၍ တိုင်းတာထားသော ထုထည်များကို ပေးရန် အသုံးပြုသော အတိုင်းအတာအမှတ်ပါ ဖန်ပြွန်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w7-dm-5",
          termEn: "End point",
          termMy: "End Point",
          matchEn:
              "The moment in a titration when the indicator changes colour, signalling exact neutralisation",
          matchMy:
              "Titration တစ်ခုအတွင်း Indicator က အရောင် ပြောင်းလဲပြီး အတိအကျ ကျေအေးမှုကို အချက်ပြသည့် အခိုက်အတန့်",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w7-d3",
      dayNumber: 3,
      titleEn: "Sort: Gas Volume, Concentration, or Titration?",
      titleMy:
          "စီစစ်ကြမည် - ဓာတ်ငွေ့ ထုထည်လား၊ Concentration လား၊ Titration လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Gas Volume", "Concentration", "Titration"],
        bucketsMy: ["ဓာတ်ငွေ့ ထုထည်", "Concentration", "Titration"],
        items: [
          SortingItem(
            id: "igcsechem-w7-sort-1",
            labelEn: "1 mole of any gas occupies 24 dm3 at r.t.p.",
            labelMy: "ဓာတ်ငွေ့ ၁ မိုးလ်သည် r.t.p. တွင် 24 dm3 ယူသည်",
            correctBucketEn: "Gas Volume",
            correctBucketMy: "ဓာတ်ငွေ့ ထုထည်",
          ),
          SortingItem(
            id: "igcsechem-w7-sort-2",
            labelEn: "Moles of solute per dm3 of solution",
            labelMy: "ပျော်ရည် dm3 လျှင် Solute ၏ Mole",
            correctBucketEn: "Concentration",
            correctBucketMy: "Concentration",
          ),
          SortingItem(
            id: "igcsechem-w7-sort-3",
            labelEn:
                "Using a burette to find the volume needed to reach the end point",
            labelMy:
                "End Point သို့ ရောက်ရန် လိုအပ်သော ထုထည်ကို ရှာဖွေရန် Burette အသုံးပြုခြင်း",
            correctBucketEn: "Titration",
            correctBucketMy: "Titration",
          ),
          SortingItem(
            id: "igcsechem-w7-sort-4",
            labelEn:
                "Calculating the volume of CO2 gas produced in a reaction from its moles",
            labelMy:
                "ဓာတ်ပြုမှုတစ်ခုမှ ထုတ်ပေးသော CO2 ဓာတ်ငွေ့ ထုထည်ကို ၎င်း၏ Mole မှ တွက်ချက်ခြင်း",
            correctBucketEn: "Gas Volume",
            correctBucketMy: "ဓာတ်ငွေ့ ထုထည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w7-d4",
      dayNumber: 4,
      titleEn: "Reading: Lab Technician Ko Aung's Titration Challenge",
      titleMy:
          "စာဖတ်ခြင်း - ဓာတ်ခွဲခန်း နည်းပညာရှင် ကိုအောင်၏ Titration စိန်ခေါ်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Lab Technician Ko Aung's Titration Challenge",
        titleMy: "ဓာတ်ခွဲခန်း နည်းပညာရှင် ကိုအောင်၏ Titration စိန်ခေါ်မှု",
        passageEn:
            "Ko Aung, a school laboratory technician, was preparing a titration demonstration to find the unknown concentration of a hydrochloric acid solution. He explained the setup to his students: a burette filled with the hydrochloric acid was mounted above a flask containing a measured 25 cm3 volume of sodium hydroxide solution of known concentration, 0.1 mol/dm3, along with a few drops of phenolphthalein indicator, which turns from pink to colourless at the exact point of neutralisation.\n\nHe slowly added acid from the burette, swirling the flask constantly, watching closely as the pink colour faded. The moment the solution turned permanently colourless -- the end point -- he read the burette scale and recorded that exactly 20 cm3 of hydrochloric acid had been added to reach neutralisation.\n\nKo Aung then walked through the calculation with his students step by step. First, he calculated the moles of sodium hydroxide that had reacted: moles = concentration x volume (in dm3), so 0.1 mol/dm3 x 0.025 dm3 = 0.0025 mol of NaOH. Since the balanced equation for this reaction, NaOH + HCl -> NaCl + H2O, showed a 1:1 mole ratio between sodium hydroxide and hydrochloric acid, exactly 0.0025 mol of HCl must also have reacted.\n\nFinally, he calculated the unknown concentration of the hydrochloric acid: concentration = moles ÷ volume (in dm3). The volume of acid used was 20 cm3, which is 0.020 dm3, so concentration = 0.0025 ÷ 0.020 = 0.125 mol/dm3. Ko Aung emphasised that this exact process -- reacting a known concentration against an unknown one, using the mole ratio from the balanced equation as the bridge -- was the fundamental logic behind every titration calculation in the IGCSE syllabus, no matter which acid or base was involved.",
        passageMy:
            "ကျောင်း ဓာတ်ခွဲခန်း နည်းပညာရှင် ကိုအောင်သည် ဟိုက်ဒရိုကလိုရစ် အက်ဆစ် ပျော်ရည်၏ မသိရသေးသော Concentration ကို ရှာဖွေရန် Titration သရုပ်ပြမှုတစ်ခု ပြင်ဆင်နေခဲ့သည်။ သူသည် ကျောင်းသားများအား ပြင်ဆင်မှုကို ရှင်းပြခဲ့သည်- ဟိုက်ဒရိုကလိုရစ် အက်ဆစ်ဖြင့် ဖြည့်ထားသော Burette ကို သိရှိပြီးသား Concentration 0.1 mol/dm3 ဖြင့် ဆိုဒီယမ် ဟိုက်ဒရောက်ဆိုဒ် ပျော်ရည် 25 cm3 ပါဝင်သော ဖလပ်တစ်ခု အထက်တွင် တပ်ဆင်ထားပြီး Phenolphthalein Indicator စက်အနည်းငယ် ထည့်ထားသည်၊ ၎င်းသည် ကျေအေးမှု အတိအကျ အချက်တွင် ပန်းရောင်မှ အရောင်ကင်းမဲ့ ပြောင်းလဲသွားသည်။\n\nသူသည် Burette မှ အက်ဆစ်ကို ဖြည်းညှင်းစွာ ထည့်သွင်းကာ ဖလပ်ကို အမြဲတမ်း လှုပ်ရှားနေစေပြီး ပန်းရောင် ပျောက်ကွယ်သွားသည်ကို အနီးကပ် စောင့်ကြည့်ခဲ့သည်။ ပျော်ရည်သည် အမြဲတမ်း အရောင်ကင်းမဲ့ ပြောင်းသွားသော အခိုက်အတန့် -- End Point -- တွင် သူသည် Burette စကေးကို ဖတ်ရှုကာ ကျေအေးမှုသို့ ရောက်ရန် ဟိုက်ဒရိုကလိုရစ် အက်ဆစ် 20 cm3 အတိအကျ ထည့်သွင်းခဲ့ကြောင်း မှတ်တမ်းတင်ခဲ့သည်။\n\nထို့နောက် ကိုအောင်သည် တွက်ချက်မှုကို ကျောင်းသားများနှင့်အတူ အဆင့်ဆင့် လျှောက်လှမ်းခဲ့သည်။ ပထမဦးစွာ ဓာတ်ပြုသွားသော ဆိုဒီယမ် ဟိုက်ဒရောက်ဆိုဒ် ၏ Mole ကို တွက်ချက်ခဲ့သည်- Mole = Concentration x Volume (dm3 ဖြင့်), ထို့ကြောင့် 0.1 mol/dm3 x 0.025 dm3 = NaOH 0.0025 mol။ ဤဓာတ်ပြုမှုအတွက် ချိန်ညှိထားသော ညီမျှခြင်း NaOH + HCl -> NaCl + H2O သည် ဆိုဒီယမ် ဟိုက်ဒရောက်ဆိုဒ်နှင့် ဟိုက်ဒရိုကလိုရစ် အက်ဆစ်ကြား 1:1 Mole အချိုးကို ပြသသောကြောင့် HCl 0.0025 mol အတိအကျလည်း ဓာတ်ပြုခဲ့ရမည် ဖြစ်သည်။\n\nနောက်ဆုံးတွင် သူသည် ဟိုက်ဒရိုကလိုရစ် အက်ဆစ်၏ မသိရသေးသော Concentration ကို တွက်ချက်ခဲ့သည်- Concentration = Mole ÷ Volume (dm3 ဖြင့်)။ အသုံးပြုခဲ့သော အက်ဆစ်၏ ထုထည်မှာ 20 cm3 ဖြစ်ပြီး ၎င်းသည် 0.020 dm3 ဖြစ်သောကြောင့် Concentration = 0.0025 ÷ 0.020 = 0.125 mol/dm3 ဖြစ်သည်။ သိရှိပြီးသား Concentration တစ်ခုကို မသိရသေးသော တစ်ခုနှင့် ဓာတ်ပြုစေကာ ချိန်ညှိထားသော ညီမျှခြင်းမှ Mole အချိုးကို တံတားအဖြစ် အသုံးပြုသော ဤ အတိအကျ လုပ်ငန်းစဉ်သည် မည်သည့် အက်ဆစ် သို့မဟုတ် ဘေ့စ် ပါဝင်သည်ဖြစ်စေ IGCSE သင်ရိုးရှိ Titration တွက်ချက်မှု တိုင်း၏ အခြေခံ ယုတ္တိဗေဒ ဖြစ်ကြောင်း ကိုအောင် အလေးထား ဖော်ပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what signals the 'end point' of this titration?",
            questionMy:
                "ဤ Titration ၏ 'End Point' ကို အဘယ်အရာက အချက်ပြသနည်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The solution turning permanently colourless",
              "The burette running completely empty",
              "The flask becoming hot",
              "A loud sound from the flask",
            ],
            optionsMy: [
              "ပျော်ရည် အမြဲတမ်း အရောင်ကင်းမဲ့ ပြောင်းလဲသွားခြင်း",
              "Burette လုံးဝ အလွတ် ကျန်ရှိသွားခြင်း",
              "ဖလပ် ပူလာခြင်း",
              "ဖလပ်မှ အသံကျယ်ကျယ် ထွက်ခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence defining the end point in this experiment.",
            ],
            hintsMy: [
              "ဤ စမ်းသပ်ချက်တွင် End Point ကို အနက်ဖွင့်ဆိုထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, how many moles of NaOH had reacted?",
            questionMy:
                "ဓာတ်ပြုသွားသော NaOH ၏ Mole မည်မျှ ရှိသနည်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: ["0.0025 mol", "0.025 mol", "0.1 mol", "25 mol"],
            optionsMy: ["0.0025 mol", "0.025 mol", "0.1 mol", "25 mol"],
            correctIndex: 0,
            hintsEn: ["Reread the calculation 0.1 mol/dm3 x 0.025 dm3."],
            hintsMy: ["0.1 mol/dm3 x 0.025 dm3 တွက်ချက်မှုကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did exactly 0.0025 mol of HCl also react (the same as the moles of NaOH)?",
            questionMy:
                "HCl 0.0025 mol အတိအကျ (NaOH ၏ Mole အတူတူ) ဓာတ်ပြုခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The balanced equation shows a 1:1 mole ratio between NaOH and HCl",
              "Acids always react in exactly 2:1 ratios",
              "It was a random coincidence",
              "The indicator forced this ratio",
            ],
            optionsMy: [
              "ချိန်ညှိထားသော ညီမျှခြင်းက NaOH နှင့် HCl ကြား 1:1 Mole အချိုးကို ပြသသောကြောင့်",
              "အက်ဆစ်များသည် အမြဲတမ်း 2:1 အချိုးဖြင့် ဓာတ်ပြုသောကြောင့်",
              "ကျပန်း တိုက်ဆိုင်မှု ဖြစ်သောကြောင့်",
              "Indicator က ဤအချိုးကို အတင်းအကျပ် ဖြစ်စေသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence referencing the balanced equation's mole ratio.",
            ],
            hintsMy: [
              "ချိန်ညှိထားသော ညီမျှခြင်း၏ Mole အချိုးကို ရည်ညွှန်းထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final calculation, what is the concentration of the hydrochloric acid?",
            questionMy:
                "နောက်ဆုံး တွက်ချက်မှုအရ ဟိုက်ဒရိုကလိုရစ် အက်ဆစ်၏ Concentration မှာ အဘယ်နည်း။",
            optionsEn: [
              "0.125 mol/dm3",
              "0.1 mol/dm3",
              "0.025 mol/dm3",
              "1.25 mol/dm3",
            ],
            optionsMy: [
              "0.125 mol/dm3",
              "0.1 mol/dm3",
              "0.025 mol/dm3",
              "1.25 mol/dm3",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the final calculation: 0.0025 ÷ 0.020."],
            hintsMy: [
              "နောက်ဆုံး တွက်ချက်မှု 0.0025 ÷ 0.020 ကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w7-d5",
      dayNumber: 5,
      titleEn: "Week 7 Recap: Gas and Solution Calculations",
      titleMy:
          "သတ္တမပတ် ပြန်လည်သုံးသပ်ခြင်း - ဓာတ်ငွေ့နှင့် ပျော်ရည် တွက်ချက်မှုများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "1 mole of any gas at r.t.p. occupies approximately...",
          questionMy:
              "r.t.p. တွင် ဓာတ်ငွေ့ မည်သည့် ၁ မိုးလ်ဖြစ်စေ ခန့်မှန်းခြေ ...ယူသည်",
          optionsEn: ["24 dm3", "1 dm3", "100 dm3", "6 dm3"],
          optionsMy: ["24 dm3", "1 dm3", "100 dm3", "6 dm3"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Concentration (mol/dm3) = moles of solute ÷ ...",
          questionMy: "Concentration (mol/dm3) = Solute ၏ Mole ÷ ...",
          optionsEn: [
            "Volume of solution in dm3",
            "Mass of solvent",
            "Temperature",
            "Time taken",
          ],
          optionsMy: [
            "dm3 ဖြင့် ပျော်ရည် ထုထည်",
            "Solvent ၏ Mass",
            "အပူချိန်",
            "ကြာချိန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In a titration, the end point is reached when...",
          questionMy: "Titration တစ်ခုတွင် End Point ရောက်ရှိသည်မှာ...",
          optionsEn: [
            "The indicator changes colour, showing exact neutralisation",
            "The burette is completely full",
            "One hour has passed",
            "The flask breaks",
          ],
          optionsMy: [
            "Indicator က အရောင် ပြောင်းလဲကာ အတိအကျ ကျေအေးမှုကို ပြသသော အခါ",
            "Burette လုံးဝ ပြည့်နေသော အခါ",
            "တစ်နာရီ ကုန်လွန်သွားသော အခါ",
            "ဖလပ် ကွဲသွားသော အခါ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 8 (Capstone): "Stoichiometry Masterclass Studio"
// =====================================================================

const CourseWeekDef _igcseChemWeek8 = CourseWeekDef(
  id: "course-igcse-chem-w8",
  weekNumber: 8,
  titleEn: "Stoichiometry Masterclass Studio",
  titleMy: "စတိုင်ကျီအိုမေတြီ အထူးသင်ခန်းစာ အလုပ်ရုံ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w8-d1",
      dayNumber: 1,
      titleEn: "Complex Mole Problems and Limiting Reactants",
      titleMy: "ရှုပ်ထွေးသော Mole ပြဿနာများနှင့် Limiting Reactant များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a limiting reactant?",
          questionMy: "Limiting Reactant ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The reactant that runs out first, stopping the reaction and limiting the amount of product formed",
            "The reactant with the largest mass at the start",
            "The reactant that is always in excess",
            "A reactant that does not take part in the reaction at all",
          ],
          optionsMy: [
            "ဦးစွာ ကုန်ဆုံးသွားပြီး ဓာတ်ပြုမှုကို ရပ်တန့်စေကာ ရလဒ်ပစ္စည်း ပမာဏကို ကန့်သတ်ပေးသော Reactant",
            "အစတွင် Mass အများဆုံးရှိသော Reactant",
            "အမြဲတမ်း ပိုလျှံနေသော Reactant",
            "ဓာတ်ပြုမှုတွင် လုံးဝ ပါဝင်ဆောင်ရွက်ခြင်း မရှိသော Reactant",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of it like a recipe: if you run out of one ingredient, you cannot make more product even if other ingredients remain.",
          ],
          hintsMy: [
            "ချက်ပြုတ်နည်း တစ်ခုကဲ့သို့ စဉ်းစားကြည့်ပါ - ပါဝင်ပစ္စည်းတစ်ခု ကုန်သွားပါက အခြားပါဝင်ပစ္စည်းများ ကျန်ရှိနေသော်လည်း ရလဒ်ပစ္စည်း ပို၍ မလုပ်နိုင်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "If a reaction requires 2 moles of A for every 1 mole of B, and you have 3 moles of A and 2 moles of B, which reactant is limiting?",
          questionMy:
              "ဓာတ်ပြုမှုတစ်ခုသည် B ၁ မိုးလ်တိုင်းအတွက် A ၂ မိုးလ် လိုအပ်ပြီး သင့်တွင် A ၃ မိုးလ်နှင့် B ၂ မိုးလ် ရှိပါက မည်သည့် Reactant က Limiting ဖြစ်သနည်း။",
          optionsEn: [
            "A (only 3 moles available, but 4 moles would be needed to react with all of B)",
            "B",
            "Both react completely with none left over",
            "Neither -- there is no limiting reactant",
          ],
          optionsMy: [
            "A (၃ မိုးလ်သာ ရှိပြီး B အားလုံးနှင့် ဓာတ်ပြုရန် ၄ မိုးလ် လိုအပ်မည်)",
            "B",
            "နှစ်ခုလုံး လုံးဝ ဓာတ်ပြုပြီး ဘာမှ မကျန်ပါ",
            "မည်သည့် Reactant မျှ Limiting မဟုတ်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "2 moles of B would need 4 moles of A to fully react, but only 3 moles of A are available.",
            "Since A runs out first, A is the limiting reactant.",
          ],
          hintsMy: [
            "B ၂ မိုးလ် အပြည့်အဝ ဓာတ်ပြုရန် A ၄ မိုးလ် လိုအပ်မည်၊ သို့သော် A ၃ မိုးလ်သာ ရှိသည်။",
            "A က ဦးစွာ ကုန်ဆုံးသွားသောကြောင့် A သည် Limiting Reactant ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why do exam questions often ask you to identify the limiting reactant before calculating product mass?",
          questionMy:
              "စာမေးပွဲ မေးခွန်းများသည် ရလဒ်ပစ္စည်း Mass မတွက်ချက်မီ Limiting Reactant ကို ဖော်ထုတ်ခိုင်းလေ့ရှိသည် အကြောင်းရင်းကို ဖော်ပြပါ။",
          optionsEn: [
            "Because product mass must be calculated from the limiting reactant, not the reactant in excess",
            "Because the excess reactant is always toxic",
            "Because limiting reactants are always solids",
            "It is just an arbitrary exam tradition with no scientific reason",
          ],
          optionsMy: [
            "ရလဒ်ပစ္စည်း Mass ကို ပိုလျှံနေသော Reactant မှ မဟုတ်ဘဲ Limiting Reactant မှ တွက်ချက်ရသောကြောင့်",
            "ပိုလျှံနေသော Reactant သည် အမြဲတမ်း အဆိပ်သင့်သောကြောင့်",
            "Limiting Reactant များသည် အမြဲတမ်း အစိုင်အခဲများ ဖြစ်သောကြောင့်",
            "သိပ္ပံနည်းကျ အကြောင်းရင်း မရှိဘဲ ကျပန်း စာမေးပွဲ ထုံးတမ်း တစ်ခုသာ ဖြစ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The limiting reactant determines the maximum possible amount of product -- calculating from the excess reactant would give a wrong, inflated answer.",
          ],
          hintsMy: [
            "Limiting Reactant က ရလဒ်ပစ္စည်း အများဆုံး ဖြစ်နိုင်သော ပမာဏကို ဆုံးဖြတ်ပေးသည် -- ပိုလျှံနေသော Reactant မှ တွက်ချက်ပါက မှားယွင်း၍ ပို၍ ကြီးမားသော အဖြေကို ပေးလိမ့်မည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w8-d2",
      dayNumber: 2,
      titleEn: "Match: Term 1-2 Stoichiometry Recap",
      titleMy:
          "တွဲစပ်ကြမည် - ပထမတန်း-ဒုတိယတန်း Stoichiometry ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w8-dm-1",
          termEn: "Limiting reactant",
          termMy: "Limiting Reactant",
          matchEn:
              "The reactant that runs out first and determines the maximum product formed",
          matchMy:
              "ဦးစွာ ကုန်ဆုံးပြီး ရလဒ်ပစ္စည်း အများဆုံး ဖြစ်နိုင်သည်ကို ဆုံးဖြတ်ပေးသော Reactant",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w8-dm-2",
          termEn: "Excess reactant",
          termMy: "Excess Reactant",
          matchEn:
              "The reactant that remains partially unreacted once the limiting reactant runs out",
          matchMy:
              "Limiting Reactant ကုန်ဆုံးသွားသည့်အခါ တစ်စိတ်တစ်ပိုင်း ဓာတ်မပြုဘဲ ကျန်ရှိနေသော Reactant",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w8-dm-3",
          termEn: "Empirical formula",
          termMy: "Empirical Formula",
          matchEn:
              "The simplest whole-number ratio of atoms of each element in a compound",
          matchMy:
              "ဒြပ်ပေါင်းတစ်ခုရှိ ဒြပ်စင်တစ်ခုစီ၏ အက်တမ်များ၏ အရိုးရှင်းဆုံး ကိန်းပြည့် အချိုး",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w8-dm-4",
          termEn: "Molecular formula",
          termMy: "Molecular Formula",
          matchEn:
              "The actual whole number of atoms of each element in one molecule of a compound",
          matchMy:
              "ဒြပ်ပေါင်းတစ်ခု၏ မော်လီကျူးတစ်ခုအတွင်းရှိ ဒြပ်စင်တစ်ခုစီ၏ အက်တမ် အမှန်တကယ် ကိန်းပြည့်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w8-dm-5",
          termEn: "Stoichiometry",
          termMy: "Stoichiometry",
          matchEn:
              "The study of the quantitative relationships between reactants and products in a reaction",
          matchMy:
              "ဓာတ်ပြုမှုတစ်ခုရှိ Reactant များနှင့် Product များကြား ပမာဏဆိုင်ရာ ဆက်စပ်မှုများကို လေ့လာခြင်း",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w8-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Calculation Type?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် တွက်ချက်မှု အမျိုးအစား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Mole/Mass Calculation",
          "Gas Volume Calculation",
          "Concentration/Titration Calculation",
        ],
        bucketsMy: [
          "Mole/Mass တွက်ချက်မှု",
          "ဓာတ်ငွေ့ ထုထည် တွက်ချက်မှု",
          "Concentration/Titration တွက်ချက်မှု",
        ],
        items: [
          SortingItem(
            id: "igcsechem-w8-sort-1",
            labelEn: "Finding moles from mass and Mr",
            labelMy: "Mass နှင့် Mr မှ Mole ကို ရှာဖွေခြင်း",
            correctBucketEn: "Mole/Mass Calculation",
            correctBucketMy: "Mole/Mass တွက်ချက်မှု",
          ),
          SortingItem(
            id: "igcsechem-w8-sort-2",
            labelEn:
                "Finding the volume of gas produced from a known number of moles",
            labelMy:
                "သိရှိပြီးသား Mole အရေအတွက်မှ ထုတ်ပေးသော ဓာတ်ငွေ့ ထုထည်ကို ရှာဖွေခြင်း",
            correctBucketEn: "Gas Volume Calculation",
            correctBucketMy: "ဓာတ်ငွေ့ ထုထည် တွက်ချက်မှု",
          ),
          SortingItem(
            id: "igcsechem-w8-sort-3",
            labelEn:
                "Finding an unknown acid concentration from a titration's end point volume",
            labelMy:
                "Titration ၏ End Point ထုထည်မှ မသိရသေးသော အက်ဆစ် Concentration ကို ရှာဖွေခြင်း",
            correctBucketEn: "Concentration/Titration Calculation",
            correctBucketMy: "Concentration/Titration တွက်ချက်မှု",
          ),
          SortingItem(
            id: "igcsechem-w8-sort-4",
            labelEn:
                "Calculating percentage yield from actual and theoretical mass",
            labelMy:
                "အမှန်တကယ်နှင့် သီအိုရီအရ Mass မှ ရာခိုင်နှုန်း ရလဒ်ကို တွက်ချက်ခြင်း",
            correctBucketEn: "Mole/Mass Calculation",
            correctBucketMy: "Mole/Mass တွက်ချက်မှု",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w8-d4",
      dayNumber: 4,
      titleEn: "Reading: Shin Thant's Limiting Reactant Bake Sale",
      titleMy: "စာဖတ်ခြင်း - ရှင်သန့်၏ Limiting Reactant ကိတ်မုန့် အရောင်းပွဲ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Shin Thant's Limiting Reactant Bake Sale",
        titleMy: "ရှင်သန့်၏ Limiting Reactant ကိတ်မုန့် အရောင်းပွဲ",
        passageEn:
            "Shin Thant, now well into her second term of IGCSE chemistry, was helping organise her school's bake sale when Ko Zaw, passing by, noticed she had a large bag of flour but only two eggs left, while her recipe called for 2 cups of flour and 1 egg per cake. She had 6 cups of flour but only 2 eggs. Ko Zaw smiled and asked: how many cakes could she actually make, and which ingredient was 'limiting' her?\n\nShin Thant worked through it just like a stoichiometry problem. With 6 cups of flour, and 2 cups needed per cake, the flour alone could support 6 ÷ 2 = 3 cakes. But with only 2 eggs, and 1 egg needed per cake, the eggs could only support 2 ÷ 1 = 2 cakes. Since the eggs would run out first, limiting her to just 2 cakes even though there was enough flour for 3, the eggs were the limiting reactant -- and the flour, with 2 cups left over after 2 cakes, was in excess.\n\nKo Zaw pointed out that this was exactly the logic behind limiting reactant problems in real chemical reactions: you calculate how much product each reactant could theoretically support on its own, and whichever reactant supports the smallest amount of product is the one that actually limits the reaction. Any 'leftover' of the other reactant, just like Shin Thant's extra 2 cups of flour, is the excess reactant.\n\nHe then extended the challenge: if each cake used exactly 100 g of sugar as well, and Shin Thant had only 150 g of sugar, would sugar also need to be checked? She quickly calculated that 150 g of sugar would only support 150 ÷ 100 = 1.5 cakes -- meaning sugar, not eggs, was actually the true limiting ingredient, since 1.5 was smaller than both 2 and 3. Shin Thant realised she could only bake 1 whole cake (since you cannot bake half a cake using half the required eggs and flour), a small but exact illustration of why chemists must check every reactant before declaring a limiting one.",
        passageMy:
            "IGCSE ဓာတုဗေဒ ဒုတိယတန်း ကောင်းစွာ ရောက်ရှိနေပြီဖြစ်သော ရှင်သန့်သည် ကျောင်း ကိတ်မုန့် အရောင်းပွဲကို စီစဉ်ပေးနေစဉ် ကမ်းလှမ်းသွားသော ကိုဇော်က သူမတွင် မုန့်ညက် အိတ်ကြီးတစ်ခု ရှိသော်လည်း ကြက်ဥ ၂ လုံးသာ ကျန်ရှိနေကြောင်း သတိထားမိခဲ့သည်၊ သူမ၏ ချက်ပြုတ်နည်းက ကိတ်မုန့်တစ်ခုလျှင် မုန့်ညက် ခွက် ၂ ခွက်နှင့် ကြက်ဥ ၁ လုံး လိုအပ်သည်။ သူမတွင် မုန့်ညက် ၆ ခွက် ရှိသော်လည်း ကြက်ဥ ၂ လုံးသာ ရှိသည်။ ကိုဇော် ပြုံးလိုက်ပြီး သူမ ကိတ်မုန့် မည်မျှ အမှန်တကယ် ပြုလုပ်နိုင်ကြောင်းနှင့် မည်သည့် ပါဝင်ပစ္စည်းက သူမကို 'Limiting' ဖြစ်စေကြောင်း မေးခဲ့သည်။\n\nရှင်သန့်သည် Stoichiometry ပြဿနာတစ်ခုကဲ့သို့ပင် လုပ်ဆောင်ခဲ့သည်။ မုန့်ညက် ၆ ခွက်ဖြင့် ကိတ်မုန့်တစ်ခုလျှင် ခွက် ၂ ခွက် လိုအပ်သဖြင့် မုန့်ညက်တစ်ခုတည်းက ကိတ်မုန့် 6 ÷ 2 = 3 ခု ထောက်ပံ့နိုင်သည်။ သို့သော် ကြက်ဥ ၂ လုံးသာ ရှိပြီး ကိတ်မုန့်တစ်ခုလျှင် ကြက်ဥ ၁ လုံး လိုအပ်သဖြင့် ကြက်ဥက ကိတ်မုန့် 2 ÷ 1 = 2 ခုသာ ထောက်ပံ့နိုင်သည်။ ကြက်ဥက ဦးစွာ ကုန်ဆုံးသွားမည်ဖြစ်ကာ ကိတ်မုန့် ၃ ခုအတွက် မုန့်ညက် လုံလောက်နေသော်လည်း ကိတ်မုန့် ၂ ခုသို့သာ ကန့်သတ်ထားသောကြောင့် ကြက်ဥသည် Limiting Reactant ဖြစ်ခဲ့ပြီး ကိတ်မုန့် ၂ ခု ပြီးနောက် ကျန်ရှိနေသော မုန့်ညက် ၂ ခွက်သည် ပိုလျှံနေခြင်း ဖြစ်သည်။\n\nဤသည်ပင် အမှန်တကယ် ဓာတုဓာတ်ပြုမှုများတွင် Limiting Reactant ပြဿနာများ၏ ယုတ္တိဗေဒ အတိအကျ ဖြစ်ကြောင်း ကိုဇော် ထောက်ပြခဲ့သည်- Reactant တစ်ခုစီက သီအိုရီအရ ထောက်ပံ့နိုင်မည့် ရလဒ်ပစ္စည်း ပမာဏကို တွက်ချက်ကာ အနည်းဆုံး ရလဒ်ပစ္စည်းကို ထောက်ပံ့နိုင်သော Reactant သည် ဓာတ်ပြုမှုကို အမှန်တကယ် ကန့်သတ်ပေးသော Reactant ဖြစ်သည်။ ရှင်သန့်၏ မုန့်ညက် ခွက် ၂ ခွက် ပိုလျှံနေသကဲ့သို့ အခြား Reactant ၏ 'ကျန်ရှိနေသည့်' ပမာဏသည် ပိုလျှံနေသော Reactant ဖြစ်သည်။\n\nထို့နောက် သူသည် စိန်ခေါ်မှုကို ဆက်လက် ချဲ့ထွင်ခဲ့သည်- ကိတ်မုန့်တစ်ခုစီတွင် သကြား 100 g အတိအကျ အသုံးပြုပါက၊ ရှင်သန့်တွင် သကြား 150 g သာ ရှိပါက သကြားကိုလည်း စစ်ဆေးရန် လိုအပ်ပါသလား။ သူမသည် 150 g သကြားက ကိတ်မုန့် 150 ÷ 100 = 1.5 ခုသာ ထောက်ပံ့နိုင်ကြောင်း လျင်မြန်စွာ တွက်ချက်ခဲ့သည် -- ဆိုလိုသည်မှာ ကြက်ဥ မဟုတ်ဘဲ သကြားသည် ၁.၅ က ၂ နှင့် ၃ ထက် ငယ်သောကြောင့် အမှန်တကယ် Limiting ပါဝင်ပစ္စည်း ဖြစ်ခဲ့သည်။ ရှင်သန့်သည် ကိတ်မုန့် ၁ ခုလုံးသာ ပြုလုပ်နိုင်ကြောင်း (လိုအပ်သော ကြက်ဥနှင့် မုန့်ညက်၏ တစ်ဝက်ဖြင့် ကိတ်မုန့် တစ်ဝက်ကို ပြုလုပ်၍ မရနိုင်သောကြောင့်) သဘောပေါက်ခဲ့ပြီး ဓာတုပညာရှင်များသည် Limiting Reactant တစ်ခုကို ကြေညာမီ Reactant တိုင်းကို အဘယ်ကြောင့် စစ်ဆေးရမည် ဖြစ်ကြောင်း သေးငယ်သော်လည်း အတိအကျ ပုံဆောင်ချက်တစ်ခု ဖြစ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how many cakes could the flour alone support?",
            questionMy:
                "မုန့်ညက်တစ်ခုတည်းက ကိတ်မုန့် မည်မျှ ထောက်ပံ့နိုင်ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: ["3 cakes", "2 cakes", "6 cakes", "1 cake"],
            optionsMy: [
              "ကိတ်မုန့် ၃ ခု",
              "ကိတ်မုန့် ၂ ခု",
              "ကိတ်မုန့် ၆ ခု",
              "ကိတ်မုန့် ၁ ခု",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the sentence: 6 ÷ 2 = 3."],
            hintsMy: ["6 ÷ 2 = 3 ပါဝင်သော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why were the eggs the limiting reactant?",
            questionMy:
                "ကြက်ဥများသည် Limiting Reactant ဖြစ်ခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They could only support 2 cakes, fewer than the 3 cakes the flour could support",
              "They were more expensive than flour",
              "They spoiled faster than flour",
              "Shin Thant preferred using more eggs",
            ],
            optionsMy: [
              "မုန့်ညက်က ထောက်ပံ့နိုင်သော ကိတ်မုန့် ၃ ခုထက် နည်းသော ကိတ်မုန့် ၂ ခုသာ ထောက်ပံ့နိုင်သောကြောင့်",
              "မုန့်ညက်ထက် ဈေးကြီးသောကြောင့်",
              "မုန့်ညက်ထက် ပိုမြန်စွာ ပုပ်သိုးသောကြောင့်",
              "ရှင်သန့်က ကြက်ဥ ပိုသုံးလိုသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence comparing the 2 cakes vs. 3 cakes calculation.",
            ],
            hintsMy: [
              "ကိတ်မုန့် ၂ ခုနှင့် ၃ ခု တွက်ချက်မှုကို နှိုင်းယှဉ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on paragraph 3, what general rule did Ko Zaw describe for finding the limiting reactant?",
            questionMy:
                "Limiting Reactant ကို ရှာဖွေရန် ကိုဇော် ဖော်ပြခဲ့သော ယေဘုယျ စည်းမျဉ်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Whichever reactant supports the smallest amount of product is the limiting one",
              "The reactant with the largest total mass is always limiting",
              "The most expensive ingredient is always limiting",
              "The first ingredient added is always limiting",
            ],
            optionsMy: [
              "အနည်းဆုံး ရလဒ်ပစ္စည်းကို ထောက်ပံ့နိုင်သော Reactant သည် Limiting ဖြစ်သည်",
              "စုစုပေါင်း Mass အများဆုံးရှိသော Reactant သည် အမြဲတမ်း Limiting ဖြစ်သည်",
              "အဖိုးအခ အများဆုံး ပါဝင်ပစ္စည်းသည် အမြဲတမ်း Limiting ဖြစ်သည်",
              "ဦးစွာ ထည့်သွင်းသော ပါဝင်ပစ္စည်းသည် အမြဲတမ်း Limiting ဖြစ်သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence stating the general logic behind limiting reactant problems.",
            ],
            hintsMy: [
              "Limiting Reactant ပြဿနာများ၏ ယေဘုယျ ယုတ္တိဗေဒကို ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on paragraph 4, why was sugar actually the true limiting ingredient, not eggs?",
            questionMy:
                "ကြက်ဥ မဟုတ်ဘဲ သကြားသည် အမှန်တကယ် Limiting ပါဝင်ပစ္စည်း ဖြစ်ခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၄ အရ ဖော်ပြပါ။",
            optionsEn: [
              "150 g of sugar could only support 1.5 cakes, fewer than either flour (3) or eggs (2)",
              "Sugar is always the limiting ingredient in baking",
              "Sugar dissolved faster than flour",
              "Eggs were actually unlimited",
            ],
            optionsMy: [
              "သကြား 150 g သည် ကိတ်မုန့် ၁.၅ ခုသာ ထောက်ပံ့နိုင်ပြီး မုန့်ညက် (၃) သို့မဟုတ် ကြက်ဥ (၂) ထက် နည်းသောကြောင့်",
              "သကြားသည် ကိတ်မုန့်ဖုတ်ခြင်းတွင် အမြဲတမ်း Limiting ပါဝင်ပစ္စည်း ဖြစ်သောကြောင့်",
              "သကြားသည် မုန့်ညက်ထက် ပိုမြန်စွာ ပျော်ဝင်သောကြောင့်",
              "ကြက်ဥများသည် အမှန်တကယ် အကန့်အသတ် မရှိသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence with the calculation 150 ÷ 100 = 1.5.",
            ],
            hintsMy: [
              "150 ÷ 100 = 1.5 ပါဝင်သော တွက်ချက်မှု စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w8-d5",
      dayNumber: 5,
      titleEn: "Term 2 Recap: Stoichiometry",
      titleMy: "ဒုတိယတန်း ပြန်လည်သုံးသပ်ခြင်း - Stoichiometry",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The limiting reactant is the one that...",
          questionMy: "Limiting Reactant ဆိုသည်မှာ...",
          optionsEn: [
            "Runs out first and limits the product formed",
            "Has the largest mass",
            "Never reacts",
            "Is always a gas",
          ],
          optionsMy: [
            "ဦးစွာ ကုန်ဆုံးပြီး ရလဒ်ပစ္စည်းကို ကန့်သတ်ပေးသည်",
            "Mass အများဆုံး ရှိသည်",
            "ဘယ်တော့မှ ဓာတ်မပြု",
            "အမြဲတမ်း ဓာတ်ငွေ့ ဖြစ်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Product mass must always be calculated using the...",
          questionMy: "ရလဒ်ပစ္စည်း Mass ကို ...အသုံးပြု၍ အမြဲတမ်း တွက်ချက်ရမည်",
          optionsEn: [
            "Limiting reactant",
            "Excess reactant",
            "Average of both reactants",
            "Temperature of the reaction",
          ],
          optionsMy: [
            "Limiting Reactant",
            "Excess Reactant",
            "Reactant နှစ်ခု၏ ပျမ်းမျှ",
            "ဓာတ်ပြုမှု၏ အပူချိန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Stoichiometry studies the quantitative relationship between...",
          questionMy:
              "Stoichiometry သည် ...ကြား ပမာဏဆိုင်ရာ ဆက်စပ်မှုကို လေ့လာသည်",
          optionsEn: [
            "Reactants and products",
            "Colours and smells only",
            "Temperature and pressure only",
            "Time and location",
          ],
          optionsMy: [
            "Reactant များနှင့် Product များ",
            "အရောင်နှင့် အနံ့သာ",
            "အပူချိန်နှင့် ဖိအားသာ",
            "အချိန်နှင့် တည်နေရာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef igcseChemistryTerm1 = CourseTermDef(
  id: "course-igcse-chem-term1",
  termNumber: 1,
  titleEn: "States of Matter and Atomic Structure",
  titleMy: "ဒြပ်ဝတ္ထု အခြေအနေများနှင့် အက်တမ် ဖွဲ့စည်းပုံ",
  certificateTitleEn: "IGCSE Chemistry Term 1 Certificate",
  certificateTitleMy: "IGCSE ဓာတုဗေဒ ပထမတန်း အောင်လက်မှတ်",
  weeks: [_igcseChemWeek1, _igcseChemWeek2, _igcseChemWeek3, _igcseChemWeek4],
);

const CourseTermDef igcseChemistryTerm2 = CourseTermDef(
  id: "course-igcse-chem-term2",
  termNumber: 2,
  titleEn: "Stoichiometry and Chemical Calculations",
  titleMy: "Stoichiometry နှင့် ဓာတုဗေဒ တွက်ချက်မှုများ",
  certificateTitleEn: "IGCSE Chemistry Term 2 Certificate",
  certificateTitleMy: "IGCSE ဓာတုဗေဒ ဒုတိယတန်း အောင်လက်မှတ်",
  weeks: [_igcseChemWeek5, _igcseChemWeek6, _igcseChemWeek7, _igcseChemWeek8],
);

/// IGCSE Chemistry pathway -- Terms 1-2 of 9 authored so far (Terms 3-9 to
/// follow: Electricity/Energetics; Rates & Equilibrium; Acids/Bases/Periodic
/// Table; Metals & Environment; Organic Chemistry; Experimental Skills; Exam
/// Prep & Graduation). `totalWeeks: 36` reflects the full 9-term
/// aspirational course length.
const CoursePathwayDef igcseChemistryPathway = CoursePathwayDef(
  id: "course-igcse-chemistry",
  subject: "chemistry",
  grade: Grade.igcse,
  titleEn: "IGCSE Chemistry",
  titleMy: "IGCSE ဓာတုဗေဒ",
  descriptionEn:
      "A rigorous, exam-focused Cambridge IGCSE Chemistry pathway covering particulate matter, atomic structure, bonding, stoichiometry, energetics, rates of reaction, acids and bases, the periodic table, organic chemistry, and experimental technique.",
  descriptionMy:
      "အမှုန်ဒြပ်ဝတ္ထု၊ အက်တမ်ဖွဲ့စည်းပုံ၊ တွဲစပ်မှု၊ Stoichiometry၊ Energetics၊ ဓာတ်ပြုမြန်နှုန်း၊ အက်ဆစ်နှင့် ဘေ့စ်၊ Periodic Table၊ ဇီဝဓာတုဗေဒနှင့် လက်တွေ့စမ်းသပ်မှု နည်းစနစ်များကို လွှမ်းခြုံသော တင်းကျပ်ပြီး စာမေးပွဲဗဟိုပြု Cambridge IGCSE ဓာတုဗေဒ လမ်းကြောင်း။",
  totalWeeks: 36,
  terms: [igcseChemistryTerm1, igcseChemistryTerm2],
);
