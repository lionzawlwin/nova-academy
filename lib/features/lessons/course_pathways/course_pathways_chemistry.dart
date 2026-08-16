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

// =====================================================================
// Week 9: "Electrolysis Principles"
// =====================================================================

const CourseWeekDef _igcseChemWeek9 = CourseWeekDef(
  id: "course-igcse-chem-w9",
  weekNumber: 9,
  titleEn: "Electrolysis Principles",
  titleMy: "လျှပ်စစ်ဖြင့် ဓာတ်ခွဲခြင်း အခြေခံများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w9-d1",
      dayNumber: 1,
      titleEn: "Principles of Electrolysis",
      titleMy: "Electrolysis အခြေခံ သဘောတရားများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is electrolysis?",
          questionMy: "Electrolysis ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The decomposition of an ionic compound using electricity, when molten or dissolved",
            "The process of dissolving any solid in water",
            "A method of heating substances without electricity",
            "The transfer of heat between two solids",
          ],
          optionsMy: [
            "အရည်ပျော် သို့မဟုတ် ပျော်ဝင်ထားစဉ် Ionic ဒြပ်ပေါင်းတစ်ခုကို လျှပ်စစ်အသုံးပြု၍ ခွဲထုတ်ခြင်း",
            "အစိုင်အခဲ မည်သည်ကိုမဆို ရေတွင် ပျော်ဝင်စေသော လုပ်ငန်းစဉ်",
            "လျှပ်စစ်မပါဘဲ ပစ္စည်းများကို အပူပေးသော နည်းလမ်း",
            "အစိုင်အခဲ နှစ်ခုကြား အပူ လွှဲပြောင်းခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Electrolysis requires free-moving ions -- so it only works on molten or dissolved ionic compounds, never solids.",
          ],
          hintsMy: [
            "Electrolysis တွင် လွတ်လပ်စွာ ရွေ့လျားနိုင်သော Ion များ လိုအပ်သည် -- ထို့ကြောင့် အရည်ပျော် သို့မဟုတ် ပျော်ဝင်ထားသော Ionic ဒြပ်ပေါင်းများတွင်သာ အလုပ်လုပ်ပြီး အစိုင်အခဲများတွင် ဘယ်တော့မှ အလုပ်မလုပ်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "During electrolysis, what happens at the cathode (negative electrode)?",
          questionMy:
              "Electrolysis အတွင်း Cathode (အနုတ်လျှပ်ကူးတိုင်) တွင် အဘယ်ကို ဖြစ်ပေါ်သနည်း။",
          optionsEn: [
            "Positive ions (cations) gain electrons and are reduced",
            "Negative ions (anions) gain electrons",
            "No reaction happens at the cathode at all",
            "Only oxygen gas is always produced",
          ],
          optionsMy: [
            "အပြုသဘော Ion များ (Cation) သည် Electron ရရှိကာ Reduce ဖြစ်သည်",
            "အနုတ်သဘော Ion များ (Anion) သည် Electron ရရှိသည်",
            "Cathode တွင် ဓာတ်ပြုမှု လုံးဝ မဖြစ်ပေါ်ပါ",
            "အောက်ဆီဂျင် ဓာတ်ငွေ့ကိုသာ အမြဲတမ်း ထုတ်ပေးသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The cathode is negatively charged, so it attracts positively charged cations, which then gain electrons.",
          ],
          hintsMy: [
            "Cathode သည် အနုတ်သဘော တာဝန်ခံအား ဆောင်သောကြောင့် အပြုသဘော Cation များကို ဆွဲငင်ကာ Electron ရရှိစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "When molten lead bromide (PbBr2) is electrolysed, what forms at the anode (positive electrode)?",
          questionMy:
              "အရည်ပျော် ပလန်ဘရိုမိုဒ် (PbBr2) ကို Electrolysis ပြုလုပ်သည့်အခါ Anode (အပြုသဘော လျှပ်ကူးတိုင်) တွင် အဘယ်ဖြစ်ပေါ်လာသနည်း။",
          optionsEn: [
            "Bromine gas (Br2)",
            "Lead metal (Pb)",
            "Hydrogen gas",
            "Oxygen gas",
          ],
          optionsMy: [
            "ဘရိုမင်း ဓာတ်ငွေ့ (Br2)",
            "ပလန် သတ္တု (Pb)",
            "ဟိုက်ဒရိုဂျင် ဓာတ်ငွေ့",
            "အောက်ဆီဂျင် ဓာတ်ငွေ့",
          ],
          correctIndex: 0,
          hintsEn: [
            "The anode attracts negative ions (anions) -- in molten PbBr2, the anions are Br- ions, which lose electrons to form Br2 gas.",
            "Meanwhile, the positive Pb2+ ions move to the cathode and gain electrons to form molten lead metal.",
          ],
          hintsMy: [
            "Anode သည် အနုတ်သဘော Ion များ (Anion) ကို ဆွဲငင်သည် -- အရည်ပျော် PbBr2 တွင် Anion များသည် Br- Ion များဖြစ်ပြီး Electron များ ဆုံးရှုံးကာ Br2 ဓာတ်ငွေ့ ဖြစ်လာသည်။",
            "ထို့ကြားတွင် အပြုသဘော Pb2+ Ion များသည် Cathode သို့ ရွေ့လျားကာ Electron ရရှိကာ အရည်ပျော် ပလန်သတ္တု ဖြစ်လာသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w9-d2",
      dayNumber: 2,
      titleEn: "Match: Electrolysis Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Electrolysis ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w9-dm-1",
          termEn: "Electrolyte",
          termMy: "Electrolyte",
          matchEn:
              "A molten or dissolved ionic compound that conducts electricity and is decomposed by it",
          matchMy:
              "လျှပ်စစ် ဖြတ်သန်းစေပြီး ၎င်းဖြင့် ခွဲထုတ်ခံရသော အရည်ပျော် သို့မဟုတ် ပျော်ဝင်ထားသော Ionic ဒြပ်ပေါင်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w9-dm-2",
          termEn: "Cathode",
          termMy: "Cathode",
          matchEn:
              "The negative electrode, where positive ions gain electrons (reduction)",
          matchMy:
              "အပြုသဘော Ion များ Electron ရရှိသော (Reduction) အနုတ်လျှပ်ကူးတိုင်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w9-dm-3",
          termEn: "Anode",
          termMy: "Anode",
          matchEn:
              "The positive electrode, where negative ions lose electrons (oxidation)",
          matchMy:
              "အနုတ်သဘော Ion များ Electron ဆုံးရှုံးသော (Oxidation) အပြုလျှပ်ကူးတိုင်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w9-dm-4",
          termEn: "Cation",
          termMy: "Cation",
          matchEn: "A positively charged ion, attracted to the cathode",
          matchMy: "Cathode ဘက်သို့ ဆွဲငင်ခံရသော အပြုသဘော တာဝန်ခံအားရှိသော Ion",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w9-dm-5",
          termEn: "Anion",
          termMy: "Anion",
          matchEn: "A negatively charged ion, attracted to the anode",
          matchMy: "Anode ဘက်သို့ ဆွဲငင်ခံရသော အနုတ်သဘော တာဝန်ခံအားရှိသော Ion",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w9-d3",
      dayNumber: 3,
      titleEn: "Sort: Cathode or Anode?",
      titleMy: "စီစစ်ကြမည် - Cathode လား၊ Anode လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Cathode (negative)", "Anode (positive)"],
        bucketsMy: ["Cathode (အနုတ်)", "Anode (အပြု)"],
        items: [
          SortingItem(
            id: "igcsechem-w9-sort-1",
            labelEn: "Attracts positive cations",
            labelMy: "အပြုသဘော Cation များကို ဆွဲငင်သည်",
            correctBucketEn: "Cathode (negative)",
            correctBucketMy: "Cathode (အနုတ်)",
          ),
          SortingItem(
            id: "igcsechem-w9-sort-2",
            labelEn: "Attracts negative anions",
            labelMy: "အနုတ်သဘော Anion များကို ဆွဲငင်သည်",
            correctBucketEn: "Anode (positive)",
            correctBucketMy: "Anode (အပြု)",
          ),
          SortingItem(
            id: "igcsechem-w9-sort-3",
            labelEn: "Where reduction (gain of electrons) happens",
            labelMy: "Reduction (Electron ရရှိခြင်း) ဖြစ်ပေါ်ရာနေရာ",
            correctBucketEn: "Cathode (negative)",
            correctBucketMy: "Cathode (အနုတ်)",
          ),
          SortingItem(
            id: "igcsechem-w9-sort-4",
            labelEn: "Where oxidation (loss of electrons) happens",
            labelMy: "Oxidation (Electron ဆုံးရှုံးခြင်း) ဖြစ်ပေါ်ရာနေရာ",
            correctBucketEn: "Anode (positive)",
            correctBucketMy: "Anode (အပြု)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w9-d4",
      dayNumber: 4,
      titleEn: "Reading: Ko Zaw Demonstrates Molten Lead Bromide Electrolysis",
      titleMy:
          "စာဖတ်ခြင်း - ကိုဇော်က အရည်ပျော် ပလန်ဘရိုမိုဒ် Electrolysis ကို သရုပ်ပြခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Ko Zaw Demonstrates Molten Lead Bromide Electrolysis",
        titleMy:
            "ကိုဇော်က အရည်ပျော် ပလန်ဘရိုမိုဒ် Electrolysis ကို သရုပ်ပြခြင်း",
        passageEn:
            "Ko Zaw set up a classic demonstration for his advanced students: melting solid lead bromide (PbBr2) until it became a liquid, then inserting two carbon electrodes connected to a power supply. He asked the class to predict what would happen once the current was switched on.\n\nA student named Zin Ko Ko recalled that solid ionic compounds cannot conduct electricity because their ions are locked in a fixed lattice, but once melted, the ions become free to move. He predicted that the Pb2+ cations would migrate toward the negative cathode, while the Br- anions would migrate toward the positive anode -- exactly the electrolysis principle from the textbook.\n\nWhen the current was switched on, the class observed two things happening simultaneously: a small pool of silvery molten lead metal began collecting at the cathode, and orange-brown bromine vapour began bubbling up at the anode. Ko Zaw explained the electrode reactions precisely: at the cathode, each Pb2+ ion gained two electrons to become neutral lead atoms (Pb2+ + 2e- -> Pb), a reduction reaction. At the anode, each pair of Br- ions lost one electron each to form a neutral bromine molecule (2Br- -> Br2 + 2e-), an oxidation reaction.\n\nKo Zaw then asked a final question: could this same experiment work with solid lead bromide, without melting it first? Zin Ko Ko answered confidently that it could not, since the ions in the solid lattice have no freedom to move to the electrodes at all -- melting (or dissolving) an ionic compound is not just a convenience, but an absolute requirement for electrolysis to occur, since only mobile ions can carry charge through the electrolyte and react at the electrodes.",
        passageMy:
            "ကိုဇော်သည် သူ၏ အဆင့်မြင့် ကျောင်းသားများအတွက် ရှေးရိုးရိုးင်း သရုပ်ပြမှုတစ်ခု ပြင်ဆင်ခဲ့သည်- အစိုင်အခဲ ပလန်ဘရိုမိုဒ် (PbBr2) ကို အရည်ဖြစ်သည်အထိ အပူပေးပြီးနောက် ဓာတ်အားပေး ကိရိယာနှင့် ဆက်သွယ်ထားသော ကာဗွန် လျှပ်ကူးတိုင် နှစ်ခုကို ထည့်သွင်းခဲ့သည်။ လျှပ်စီးကို ဖွင့်လိုက်သည့်အခါ အဘယ်ဖြစ်လာမည်ကို ခန့်မှန်းရန် အတန်းကို သူ တောင်းဆိုခဲ့သည်။\n\nဇင်ကိုကို ဟူသော ကျောင်းသားတစ်ဦးက အစိုင်အခဲ Ionic ဒြပ်ပေါင်းများသည် ၎င်းတို့၏ Ion များ Lattice ပုံသေတစ်ခုတွင် ပိတ်မိနေသောကြောင့် လျှပ်စစ် မဖြတ်သန်းစေနိုင်သော်လည်း အရည်ပျော်လိုက်သည်နှင့် Ion များသည် လွတ်လပ်စွာ ရွေ့လျားနိုင်လာကြောင်း သတိရမိခဲ့သည်။ Pb2+ Cation များသည် အနုတ် Cathode ဘက်သို့ ရွှေ့ပြောင်းမည်ဖြစ်ပြီး Br- Anion များကမူ အပြု Anode ဘက်သို့ ရွှေ့ပြောင်းမည်ဟု သူ ခန့်မှန်းခဲ့သည် -- စာအုပ်ထဲမှ Electrolysis သဘောတရားနှင့် အတိအကျ ကိုက်ညီသည်။\n\nလျှပ်စီးကို ဖွင့်လိုက်သည့်အခါ အတန်းသည် တစ်ချိန်တည်းတွင် အရာနှစ်ခု ဖြစ်ပေါ်လာသည်ကို တွေ့မြင်ခဲ့သည်- ငွေရောင် အရည်ပျော် ပလန်သတ္တု ရေကန်ငယ်တစ်ခု Cathode တွင် စုစည်းစတင်လာပြီး လိမ္မော်ရင့်ရောင် ဘရိုမင်း ငွေ့ ရေဖုတ်များ Anode တွင် စတင် ပွင့်ထွက်လာသည်ကို တွေ့ရသည်။ ကိုဇော်သည် လျှပ်ကူးတိုင် ဓာတ်ပြုမှုများကို အတိအကျ ရှင်းပြခဲ့သည်- Cathode တွင် Pb2+ Ion တစ်ခုစီသည် Electron နှစ်ခု ရရှိကာ Neutral ပလန် အက်တမ်များ ဖြစ်လာသည် (Pb2+ + 2e- -> Pb), Reduction ဓာတ်ပြုမှုတစ်ခု ဖြစ်သည်။ Anode တွင် Br- Ion တွဲတစ်ခုစီသည် Electron တစ်ခုစီ ဆုံးရှုံးကာ Neutral ဘရိုမင်း မော်လီကျူး ဖြစ်လာသည် (2Br- -> Br2 + 2e-), Oxidation ဓာတ်ပြုမှုတစ်ခု ဖြစ်သည်။\n\nကိုဇော်သည် နောက်ဆုံး မေးခွန်းတစ်ခု ဆက်လက် မေးမြန်းခဲ့သည်- ဤစမ်းသပ်ချက်တူတစ်ခုသည် အရည်မပျော်ရသေးသော အစိုင်အခဲ ပလန်ဘရိုမိုဒ်ဖြင့် အလုပ်လုပ်နိုင်ပါသလား။ ဇင်ကိုကိုက ယုံကြည်စွာ ဖြေဆိုခဲ့သည်- မလုပ်နိုင်ပါ၊ အကြောင်းမှာ အစိုင်အခဲ Lattice ရှိ Ion များတွင် လျှပ်ကူးတိုင်များဆီ ရွှေ့ပြောင်းရန် လွတ်လပ်မှု လုံးဝ မရှိသောကြောင့် ဖြစ်သည် -- Ionic ဒြပ်ပေါင်းတစ်ခုကို အရည်ပျော်ခြင်း (သို့မဟုတ် ပျော်ဝင်ခြင်း) သည် အဆင်ပြေမှုတစ်ခုသာ မဟုတ်ဘဲ Electrolysis ဖြစ်ပေါ်ရန် လုံးဝ လိုအပ်ချက် ဖြစ်သည်၊ အကြောင်းမှာ ရွေ့လျားနိုင်သော Ion များသာလျှင် Electrolyte တစ်လျှောက် တာဝန်ခံအား သယ်ဆောင်ပြီး လျှပ်ကူးတိုင်များတွင် ဓာတ်ပြုနိုင်သောကြောင့် ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, where do the Pb2+ cations migrate to during electrolysis?",
            questionMy:
                "Electrolysis အတွင်း Pb2+ Cation များ မည်သို့ ရွှေ့ပြောင်းကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Toward the negative cathode",
              "Toward the positive anode",
              "They do not move at all",
              "Out of the container entirely",
            ],
            optionsMy: [
              "အနုတ် Cathode ဘက်သို့",
              "အပြု Anode ဘက်သို့",
              "လုံးဝ ရွေ့လျားခြင်း မရှိပါ",
              "ခနနောက်ခန့်ထဲမှ လုံးဝ ထွက်သွားသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about cation migration in paragraph 2.",
            ],
            hintsMy: [
              "စာပိုဒ် ၂ ရှိ Cation ရွှေ့ပြောင်းမှုအကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what is observed forming at the cathode?",
            questionMy:
                "Cathode တွင် ဖွဲ့စည်းလာသည်ကို တွေ့ရသော အရာကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "A pool of silvery molten lead metal",
              "Orange-brown bromine vapour",
              "Bubbles of hydrogen gas",
              "A blue precipitate",
            ],
            optionsMy: [
              "ငွေရောင် အရည်ပျော် ပလန်သတ္တု ရေကန်ငယ်",
              "လိမ္မော်ရင့်ရောင် ဘရိုမင်း ငွေ့",
              "ဟိုက်ဒရိုဂျင် ဓာတ်ငွေ့ ပူဖောင်းများ",
              "ပြာရောင် Precipitate",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing what happens at the cathode in paragraph 3.",
            ],
            hintsMy: [
              "စာပိုဒ် ၃ ရှိ Cathode တွင် ဖြစ်ပျက်သည်ကို ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what type of reaction occurs at the anode, and why?",
            questionMy:
                "Anode တွင် ဖြစ်ပေါ်သော ဓာတ်ပြုမှု အမျိုးအစားနှင့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Oxidation, because Br- ions lose electrons to form Br2",
              "Reduction, because Br- ions gain electrons",
              "No reaction occurs at the anode",
              "Combustion, because bromine catches fire",
            ],
            optionsMy: [
              "Oxidation၊ Br- Ion များ Electron ဆုံးရှုံးကာ Br2 ဖြစ်လာသောကြောင့်",
              "Reduction၊ Br- Ion များ Electron ရရှိသောကြောင့်",
              "Anode တွင် ဓာတ်ပြုမှု လုံးဝ မဖြစ်ပေါ်ပါ",
              "Combustion၊ ဘရိုမင်း မီးလောင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing the anode's electrode reaction.",
            ],
            hintsMy: [
              "Anode ၏ လျှပ်ကူးတိုင် ဓာတ်ပြုမှုကို ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final paragraph, why can't solid lead bromide be electrolysed?",
            questionMy:
                "အစိုင်အခဲ ပလန်ဘရိုမိုဒ်ကို Electrolysis မပြုလုပ်နိုင်ခြင်း အကြောင်းရင်းကို နောက်ဆုံးစာပိုဒ်အရ ဖော်ပြပါ။",
            optionsEn: [
              "The ions in the solid lattice have no freedom to move to the electrodes",
              "Lead bromide is not an ionic compound",
              "Solid lead bromide is too expensive",
              "Carbon electrodes cannot touch solids",
            ],
            optionsMy: [
              "အစိုင်အခဲ Lattice ရှိ Ion များတွင် လျှပ်ကူးတိုင်များဆီ ရွှေ့ပြောင်းရန် လွတ်လပ်မှု မရှိသောကြောင့်",
              "ပလန်ဘရိုမိုဒ်သည် Ionic ဒြပ်ပေါင်း မဟုတ်သောကြောင့်",
              "အစိုင်အခဲ ပလန်ဘရိုမိုဒ်သည် အလွန် ဈေးကြီးသောကြောင့်",
              "ကာဗွန် လျှပ်ကူးတိုင်များသည် အစိုင်အခဲကို ထိတွေ့၍ မရသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread Zin Ko Ko's final answer."],
            hintsMy: ["ဇင်ကိုကို၏ နောက်ဆုံး အဖြေကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w9-d5",
      dayNumber: 5,
      titleEn: "Week 9 Recap: Electrolysis Principles",
      titleMy: "နဝမပတ် ပြန်လည်သုံးသပ်ခြင်း - Electrolysis အခြေခံများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Electrolysis only works on...",
          questionMy: "Electrolysis သည် ...တွင်သာ အလုပ်လုပ်သည်",
          optionsEn: [
            "Molten or dissolved ionic compounds",
            "Any solid substance",
            "Covalent gases only",
            "Pure metals only",
          ],
          optionsMy: [
            "အရည်ပျော် သို့မဟုတ် ပျော်ဝင်ထားသော Ionic ဒြပ်ပေါင်းများ",
            "အစိုင်အခဲ ပစ္စည်း မည်သည်ကိုမဆို",
            "Covalent ဓာတ်ငွေ့များသာ",
            "သန့်ရှင်းသော သတ္တုများသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "At the cathode, positive ions...",
          questionMy: "Cathode တွင် အပြုသဘော Ion များသည်...",
          optionsEn: [
            "Gain electrons (reduction)",
            "Lose electrons (oxidation)",
            "Disappear completely",
            "Turn into gas always",
          ],
          optionsMy: [
            "Electron ရရှိသည် (Reduction)",
            "Electron ဆုံးရှုံးသည် (Oxidation)",
            "လုံးဝ ပျောက်ကွယ်သွားသည်",
            "အမြဲတမ်း ဓာတ်ငွေ့ ဖြစ်သွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "At the anode, negative ions...",
          questionMy: "Anode တွင် အနုတ်သဘော Ion များသည်...",
          optionsEn: [
            "Lose electrons (oxidation)",
            "Gain electrons (reduction)",
            "Remain unchanged",
            "Become cathode ions",
          ],
          optionsMy: [
            "Electron ဆုံးရှုံးသည် (Oxidation)",
            "Electron ရရှိသည် (Reduction)",
            "မပြောင်းလဲဘဲ ကျန်ရှိနေသည်",
            "Cathode Ion များ ဖြစ်သွားသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 10: "Electrolysis of Aqueous Solutions"
// =====================================================================

const CourseWeekDef _igcseChemWeek10 = CourseWeekDef(
  id: "course-igcse-chem-w10",
  weekNumber: 10,
  titleEn: "Electrolysis of Aqueous Solutions",
  titleMy: "ရေပျော်ရည်များကို လျှပ်စစ်ဖြင့် ဓာတ်ခွဲခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w10-d1",
      dayNumber: 1,
      titleEn: "Preferential Discharge and Industrial Uses",
      titleMy: "Preferential Discharge နှင့် စက်မှု အသုံးချမှုများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In aqueous electrolysis, why might a gas form at an electrode instead of the expected metal or non-metal?",
          questionMy:
              "ရေပျော်ရည် Electrolysis တွင် မျှော်လင့်ထားသော သတ္တု သို့မဟုတ် သတ္တုမဟုတ်အစား လျှပ်ကူးတိုင်တစ်ခုတွင် ဓာတ်ငွေ့ ဖြစ်ပေါ်လာနိုင်ခြင်း အကြောင်းရင်းကို ဖော်ပြပါ။",
          optionsEn: [
            "Water itself provides H+ and OH- ions, which may be preferentially discharged over the dissolved compound's ions",
            "Water always evaporates instantly during electrolysis",
            "Gases are never produced in aqueous electrolysis",
            "The electrodes react with the glass container",
          ],
          optionsMy: [
            "ရေကိုယ်တိုင်က H+ နှင့် OH- Ion များ ပေးပြီး ပျော်ဝင်ထားသော ဒြပ်ပေါင်း၏ Ion များထက် ဦးစားပေး Discharge ဖြစ်နိုင်သောကြောင့်",
            "Electrolysis အတွင်း ရေသည် အမြဲတမ်း ချက်ချင်း အငွေ့ပျံသွားသောကြောင့်",
            "ရေပျော်ရည် Electrolysis တွင် ဓာတ်ငွေ့များ ဘယ်တော့မှ မထုတ်ပေးသောကြောင့်",
            "လျှပ်ကူးတိုင်များသည် ဖန်ခနနောက်ခန်နှင့် ဓာတ်ပြုသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Aqueous solutions always contain water's own H+ and OH- ions in addition to the dissolved compound's ions.",
            "The rule of thumb: at the cathode, less reactive ions (like H+) discharge preferentially over more reactive metal ions.",
          ],
          hintsMy: [
            "ရေပျော်ရည်များတွင် ပျော်ဝင်ထားသော ဒြပ်ပေါင်း၏ Ion များအပြင် ရေကိုယ်တိုင်၏ H+ နှင့် OH- Ion များပါ အမြဲ ပါဝင်သည်။",
            "အခြေခံစည်းမျဉ်း - Cathode တွင် လှုပ်ရှားမှု နည်းသော Ion များ (H+ ကဲ့သို့) သည် လှုပ်ရှားမှု ပိုများသော သတ္တု Ion များထက် ဦးစားပေး Discharge ဖြစ်တတ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "When dilute aqueous sodium chloride is electrolysed, what is typically produced at the cathode?",
          questionMy:
              "ရေရေးအား ဆိုဒီယမ်ကလိုရိုဒ် ပျော်ရည်ကို Electrolysis ပြုလုပ်သည့်အခါ Cathode တွင် ပုံမှန် အားဖြင့် အဘယ် ထုတ်ပေးလေ့ရှိသနည်း။",
          optionsEn: [
            "Hydrogen gas (H2), not sodium metal",
            "Sodium metal (Na)",
            "Chlorine gas (Cl2)",
            "Oxygen gas (O2)",
          ],
          optionsMy: [
            "ဟိုက်ဒရိုဂျင် ဓာတ်ငွေ့ (H2)၊ ဆိုဒီယမ် သတ္တု မဟုတ်",
            "ဆိုဒီယမ် သတ္တု (Na)",
            "ကလိုရင်း ဓာတ်ငွေ့ (Cl2)",
            "အောက်ဆီဂျင် ဓာတ်ငွေ့ (O2)",
          ],
          correctIndex: 0,
          hintsEn: [
            "Sodium is a very reactive metal, so H+ ions from water are discharged preferentially at the cathode instead.",
          ],
          hintsMy: [
            "ဆိုဒီယမ်သည် လှုပ်ရှားမှု များစွာရှိသော သတ္တုဖြစ်သောကြောင့် ရေမှ H+ Ion များသည် Cathode တွင် ၎င်းအစား ဦးစားပေး Discharge ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In copper refining by electrolysis, why is the anode made of impure copper and the cathode of pure copper?",
          questionMy:
              "Electrolysis ဖြင့် ကြေးဝါ သန့်စင်ခြင်းတွင် Anode ကို မသန့်စင်သော ကြေးဝါဖြင့်၊ Cathode ကို သန့်စင်သော ကြေးဝါဖြင့် ပြုလုပ်ထားရသည့် အကြောင်းရင်းကို ဖော်ပြပါ။",
          optionsEn: [
            "The impure anode dissolves into solution, and pure copper ions are deposited onto the cathode, purifying the metal",
            "It is simply a random design choice with no chemical reason",
            "Impure copper is cheaper to buy, that's the only reason",
            "Pure copper cannot conduct electricity at all",
          ],
          optionsMy: [
            "မသန့်စင်သော Anode သည် ပျော်ရည်ထဲသို့ ပျော်ဝင်သွားပြီး သန့်စင်သော ကြေးဝါ Ion များသည် Cathode ပေါ်တွင် စွန်းကျန်ကာ သတ္တုကို သန့်စင်စေသည်",
            "ဓာတုနည်းကျ အကြောင်းရင်း လုံးဝ မရှိဘဲ ကျပန်း ဒီဇိုင်း ရွေးချယ်မှုတစ်ခုသာ ဖြစ်သောကြောင့်",
            "မသန့်စင်သော ကြေးဝါသည် ဝယ်ယူရန် ပိုပေါသောကြောင့်သာ ဖြစ်သည်",
            "သန့်စင်သော ကြေးဝါသည် လျှပ်စစ်ကို လုံးဝ မဖြတ်သန်းစေနိုင်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is the industrial electrolytic refining process: the impure anode loses electrons and dissolves, while pure Cu2+ ions gain electrons and deposit on the cathode.",
          ],
          hintsMy: [
            "၎င်းသည် စက်မှု Electrolytic သန့်စင်ခြင်း လုပ်ငန်းစဉ် ဖြစ်သည် - မသန့်စင်သော Anode သည် Electron ဆုံးရှုံးကာ ပျော်ဝင်သွားပြီး သန့်စင်သော Cu2+ Ion များသည် Electron ရရှိကာ Cathode ပေါ်တွင် စွန်းကျန်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w10-d2",
      dayNumber: 2,
      titleEn: "Match: Aqueous Electrolysis Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ရေပျော်ရည် Electrolysis ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w10-dm-1",
          termEn: "Preferential discharge",
          termMy: "Preferential Discharge",
          matchEn:
              "When one type of ion is discharged at an electrode in preference to another",
          matchMy:
              "Ion အမျိုးအစားတစ်ခုကို အခြားတစ်ခုထက် ဦးစားပေး လျှပ်ကူးတိုင်တွင် Discharge ဖြစ်ခြင်း",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w10-dm-2",
          termEn: "Electroplating",
          termMy: "Electroplating",
          matchEn:
              "Using electrolysis to coat one metal with a thin layer of another metal",
          matchMy:
              "သတ္တုတစ်ခုကို အခြား သတ္တုတစ်ခု၏ လွှာပါးဖြင့် ကပ်ကပ်ရန် Electrolysis အသုံးပြုခြင်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w10-dm-3",
          termEn: "Electrolytic refining",
          termMy: "Electrolytic Refining",
          matchEn:
              "Using electrolysis to purify an impure metal, such as copper",
          matchMy:
              "ကြေးဝါကဲ့သို့ မသန့်စင်သော သတ္တုကို သန့်စင်စေရန် Electrolysis အသုံးပြုခြင်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w10-dm-4",
          termEn: "Inert electrode",
          termMy: "Inert Electrode",
          matchEn:
              "An electrode (like graphite or platinum) that does not react during electrolysis",
          matchMy:
              "Electrolysis အတွင်း ဓာတ်မပြုသော လျှပ်ကူးတိုင် (Graphite သို့မဟုတ် Platinum ကဲ့သို့)",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w10-dm-5",
          termEn: "Concentrated brine",
          termMy: "Concentrated Brine",
          matchEn:
              "A strong aqueous sodium chloride solution, used industrially to produce chlorine, hydrogen, and sodium hydroxide",
          matchMy:
              "ကလိုရင်း၊ ဟိုက်ဒရိုဂျင်နှင့် ဆိုဒီယမ် ဟိုက်ဒရောက်ဆိုဒ် ထုတ်လုပ်ရန် စက်မှုတွင် အသုံးပြုသော ခိုင်မာသော ဆိုဒီယမ်ကလိုရိုဒ် ရေပျော်ရည်",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w10-d3",
      dayNumber: 3,
      titleEn: "Sort: Electroplating, Refining, or Brine Electrolysis?",
      titleMy:
          "စီစစ်ကြမည် - Electroplating လား၊ Refining လား၊ Brine Electrolysis လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Electroplating", "Copper Refining", "Brine Electrolysis"],
        bucketsMy: ["Electroplating", "ကြေးဝါ Refining", "Brine Electrolysis"],
        items: [
          SortingItem(
            id: "igcsechem-w10-sort-1",
            labelEn: "Coating a spoon with a thin layer of silver",
            labelMy: "ဇွန်းတစ်ခုကို ငွေလွှာပါးဖြင့် ကပ်ကပ်ခြင်း",
            correctBucketEn: "Electroplating",
            correctBucketMy: "Electroplating",
          ),
          SortingItem(
            id: "igcsechem-w10-sort-2",
            labelEn:
                "Impure copper anode dissolving to deposit pure copper on the cathode",
            labelMy:
                "မသန့်စင်သော ကြေးဝါ Anode ပျော်ဝင်ကာ သန့်စင်သော ကြေးဝါကို Cathode ပေါ်တွင် စွန်းကျန်စေခြင်း",
            correctBucketEn: "Copper Refining",
            correctBucketMy: "ကြေးဝါ Refining",
          ),
          SortingItem(
            id: "igcsechem-w10-sort-3",
            labelEn:
                "Producing chlorine gas, hydrogen gas, and sodium hydroxide from concentrated salt solution",
            labelMy:
                "ခိုင်မာသော ဆားပျော်ရည်မှ ကလိုရင်း ဓာတ်ငွေ့၊ ဟိုက်ဒရိုဂျင် ဓာတ်ငွေ့နှင့် ဆိုဒီယမ် ဟိုက်ဒရောက်ဆိုဒ် ထုတ်လုပ်ခြင်း",
            correctBucketEn: "Brine Electrolysis",
            correctBucketMy: "Brine Electrolysis",
          ),
          SortingItem(
            id: "igcsechem-w10-sort-4",
            labelEn: "Coating a car bumper with a thin layer of chromium",
            labelMy: "ကားရှေ့ဘန်ပါကို ခရိုမီယမ် လွှာပါးဖြင့် ကပ်ကပ်ခြင်း",
            correctBucketEn: "Electroplating",
            correctBucketMy: "Electroplating",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w10-d4",
      dayNumber: 4,
      titleEn: "Reading: Jeweller Ma Ei Ei Electroplates a Silver Ring",
      titleMy:
          "စာဖတ်ခြင်း - ရွှေထည်ဆိုင်ရှင် မအေးအေးက ငွေလက်စွပ်ကို Electroplate ပြုလုပ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Jeweller Ma Ei Ei Electroplates a Silver Ring",
        titleMy:
            "ရွှေထည်ဆိုင်ရှင် မအေးအေးက ငွေလက်စွပ်ကို Electroplate ပြုလုပ်ခြင်း",
        passageEn:
            "Ma Ei Ei runs a small jewellery workshop in Yangon, where she often electroplates cheaper metal rings with a thin layer of pure silver to make them look and feel more valuable, at a fraction of the cost of solid silver. A visiting chemistry student, curious about her craft, asked her to explain the science behind it.\n\nMa Ei Ei set up the cell exactly as she did every day: the object to be plated -- a brass ring -- was connected as the cathode, while a bar of pure silver metal was connected as the anode. Both were dipped into a solution of silver nitrate, which provided free-moving Ag+ ions throughout the electrolyte.\n\nShe explained that when the current flowed, positive Ag+ ions in the solution migrated toward the negative cathode -- the brass ring -- where they gained electrons and were deposited as a thin, even layer of solid silver metal, gradually building up a shiny coating. Meanwhile, at the anode, the solid silver bar itself lost electrons and dissolved into the solution as new Ag+ ions, continuously replenishing the silver ions used up at the cathode.\n\nThe student asked why the anode had to be made of the same metal being plated (silver), rather than an inert material like graphite. Ma Ei Ei explained that if the anode were inert, the Ag+ concentration in the solution would steadily fall as ions were deposited on the ring, eventually running out; but because the silver anode continuously dissolves and replaces the Ag+ ions used up, the concentration of the electrolyte stays constant throughout the entire plating process, allowing a smooth, even coating to build up for as long as needed.",
        passageMy:
            "မအေးအေးသည် ရန်ကုန်တွင် ရွှေထည် အလုပ်ရုံငယ်တစ်ခု လည်ပတ်နေပြီး ဈေးပေါသော သတ္တု လက်စွပ်များကို သန့်စင်သော ငွေ လွှာပါးဖြင့် Electroplate ပြုလုပ်လေ့ရှိသည်၊ အခိုင်အမာ ငွေတန်ဖိုး၏ အနည်းငယ်ဖြင့် ပို၍ တန်ဖိုးရှိသော အသွင်အပြင်နှင့် ခံစားချက် ရရှိစေရန် ဖြစ်သည်။ သူမ၏ လက်မှုပညာကို စိတ်ဝင်စားသော ဓာတုဗေဒ ကျောင်းသားတစ်ဦးက ၎င်း၏ နောက်ကွယ်ရှိ သိပ္ပံပညာကို ရှင်းပြပေးရန် သူမအား တောင်းဆိုခဲ့သည်။\n\nမအေးအေးသည် ၎င်း နေ့စဉ် ပြုလုပ်နေသည့်အတိုင်း ဆဲလ်ကို ပြင်ဆင်ခဲ့သည်- ပလိတ်ခံရမည့် ပစ္စည်း -- ကြေးနီ လက်စွပ်တစ်ခု -- ကို Cathode အဖြစ် ချိတ်ဆက်ထားပြီး သန့်စင်သော ငွေသတ္တု ချောင်းတစ်ခုကို Anode အဖြစ် ချိတ်ဆက်ထားသည်။ နှစ်ခုစလုံးကို Electrolyte တစ်လျှောက် လွတ်လပ်စွာ ရွေ့လျားနိုင်သော Ag+ Ion များ ပေးသော ငွေနိုက်ထရိတ် ပျော်ရည်ထဲသို့ နှစ်ခဲ့သည်။\n\nလျှပ်စီး စီးဆင်းသည့်အခါ ပျော်ရည်ရှိ အပြုသဘော Ag+ Ion များသည် အနုတ် Cathode -- ကြေးနီ လက်စွပ် -- ဘက်သို့ ရွှေ့ပြောင်းကာ Electron ရရှိပြီး အစိုင်အခဲ ငွေသတ္တု၏ ပါးလွှာ၍ တစ်ညီတည်း လွှာတစ်ခုအဖြစ် စွန်းကျန်ကာ တဖြည်းဖြည်း တောက်ပသော အလွှာတစ်ခု တည်ဆောက်လာကြောင်း သူမ ရှင်းပြခဲ့သည်။ ထို့ကြားတွင် Anode ၌ အစိုင်အခဲ ငွေချောင်းကိုယ်တိုင်သည် Electron ဆုံးရှုံးကာ Ag+ Ion အသစ်များအဖြစ် ပျော်ရည်ထဲသို့ ပျော်ဝင်သွားကာ Cathode တွင် သုံးစွဲသွားသော ငွေ Ion များကို အဆက်မပြတ် ဖြည့်တင်းပေးသည်။\n\nကျောင်းသားသည် Anode ကို Graphite ကဲ့သို့ Inert ပစ္စည်းအစား ပလိတ်ခံနေသည့် သတ္တု (ငွေ) တူညီစွာ အဘယ်ကြောင့် ပြုလုပ်ထားရသည်ကို မေးမြန်းခဲ့သည်။ Anode သည် Inert ဖြစ်ခဲ့ပါက Ag+ Concentration သည် Ion များ လက်စွပ်ပေါ်တွင် စွန်းကျန်လာသည်နှင့်အမျှ တစ်တဖြည်းဖြည်း ကျဆင်းကာ နောက်ဆုံး ကုန်ဆုံးသွားလိမ့်မည်ဖြစ်ကြောင်း၊ သို့သော် ငွေ Anode သည် အဆက်မပြတ် ပျော်ဝင်ကာ သုံးစွဲသွားသော Ag+ Ion များကို အစားထိုးပေးနေသောကြောင့် Electrolyte ၏ Concentration သည် ပလိတ်ခြင်း လုပ်ငန်းစဉ်တစ်ခုလုံးတစ်လျှောက် ကိန်းသေ ဆက်လက် တည်ရှိကာ လိုအပ်သမျှ ကြာချိန်အထိ ချောမွေ့၍ တစ်ညီတည်းသော အလွှာတစ်ခု တည်ဆောက်နိုင်စေကြောင်း မအေးအေး ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, which electrode was the brass ring connected as?",
            questionMy:
                "ကြေးနီ လက်စွပ်ကို မည်သည့် လျှပ်ကူးတိုင်အဖြစ် ချိတ်ဆက်ထားကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The cathode",
              "The anode",
              "Neither electrode",
              "Both electrodes at once",
            ],
            optionsMy: [
              "Cathode",
              "Anode",
              "လျှပ်ကူးတိုင် နှစ်ခုစလုံး မဟုတ်ပါ",
              "လျှပ်ကူးတိုင် နှစ်ခုစလုံး တစ်ပြိုင်နက်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the sentence describing the cell setup."],
            hintsMy: [
              "ဆဲလ် ပြင်ဆင်မှုကို ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what happens to Ag+ ions at the cathode?",
            questionMy:
                "Cathode တွင် Ag+ Ion များ အဘယ်ဖြစ်ပျက်ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They gain electrons and deposit as solid silver metal",
              "They lose electrons and dissolve",
              "They turn into a gas and escape",
              "They remain dissolved forever",
            ],
            optionsMy: [
              "Electron ရရှိပြီး အစိုင်အခဲ ငွေသတ္တုအဖြစ် စွန်းကျန်သည်",
              "Electron ဆုံးရှုံးပြီး ပျော်ဝင်သွားသည်",
              "ဓာတ်ငွေ့ ဖြစ်ကာ ထွက်ပြေးသည်",
              "အမြဲတမ်း ပျော်ဝင်နေဆဲ ဖြစ်သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing what happens at the cathode.",
            ],
            hintsMy: [
              "Cathode တွင် ဖြစ်ပျက်သည်ကို ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what happens to the silver anode during plating?",
            questionMy:
                "ပလိတ်ခြင်း အတွင်း ငွေ Anode အဘယ်ဖြစ်ပျက်ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It loses electrons and dissolves into the solution as new Ag+ ions",
              "It gains electrons and grows larger",
              "It remains completely unchanged",
              "It turns into brass",
            ],
            optionsMy: [
              "Electron ဆုံးရှုံးကာ Ag+ Ion အသစ်များအဖြစ် ပျော်ရည်ထဲသို့ ပျော်ဝင်သွားသည်",
              "Electron ရရှိကာ ပို၍ ကြီးမားလာသည်",
              "လုံးဝ မပြောင်းလဲဘဲ ကျန်ရှိနေသည်",
              "ကြေးနီအဖြစ် ပြောင်းလဲသွားသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the second half of the sentence describing the anode's role.",
            ],
            hintsMy: [
              "Anode ၏ အခန်းကဏ္ဍကို ဖော်ပြထားသော စာကြောင်း၏ ဒုတိယ ပိုင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final paragraph, why must the anode be made of silver rather than an inert material?",
            questionMy:
                "Anode ကို Inert ပစ္စည်းအစား ငွေဖြင့် ပြုလုပ်ထားရသည့် အကြောင်းရင်းကို နောက်ဆုံးစာပိုဒ်အရ ဖော်ပြပါ။",
            optionsEn: [
              "It continuously replaces the Ag+ ions used up, keeping the electrolyte's concentration constant",
              "Inert materials are always more expensive than silver",
              "Inert anodes catch fire during electrolysis",
              "There is no real reason -- it is just tradition",
            ],
            optionsMy: [
              "သုံးစွဲသွားသော Ag+ Ion များကို အဆက်မပြတ် အစားထိုးပေးကာ Electrolyte ၏ Concentration ကို ကိန်းသေ ဆက်လက် တည်ရှိစေသောကြောင့်",
              "Inert ပစ္စည်းများသည် ငွေထက် အမြဲတမ်း ဈေးကြီးသောကြောင့်",
              "Inert Anode များသည် Electrolysis အတွင်း မီးလောင်တတ်သောကြောင့်",
              "အမှန်တကယ် အကြောင်းရင်း မရှိပါ -- ထုံးတမ်းတစ်ခုသာ ဖြစ်သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the final sentence explaining why a silver anode keeps the concentration constant.",
            ],
            hintsMy: [
              "ငွေ Anode က Concentration ကို ကိန်းသေ ထိန်းသိမ်းပေးသည့် အကြောင်းရင်းကို ရှင်းပြထားသော နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w10-d5",
      dayNumber: 5,
      titleEn: "Week 10 Recap: Aqueous Electrolysis",
      titleMy: "ဒဿမပတ် ပြန်လည်သုံးသပ်ခြင်း - ရေပျော်ရည် Electrolysis",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In aqueous electrolysis, hydrogen gas often forms at the cathode instead of a reactive metal because...",
          questionMy:
              "ရေပျော်ရည် Electrolysis တွင် လှုပ်ရှားမှုများသော သတ္တုအစား ဟိုက်ဒရိုဂျင် ဓာတ်ငွေ့ Cathode တွင် မကြာခဏ ဖြစ်ပေါ်ရသည့် အကြောင်းရင်းမှာ...",
          optionsEn: [
            "H+ ions from water are discharged preferentially",
            "Water always boils away first",
            "Metals cannot form at any cathode",
            "Hydrogen is added artificially",
          ],
          optionsMy: [
            "ရေမှ H+ Ion များသည် ဦးစားပေး Discharge ဖြစ်သောကြောင့်",
            "ရေသည် အမြဲတမ်း ဦးစွာ ဆူပွက်ပျံ့သွားသောကြောင့်",
            "သတ္တုများသည် Cathode မည်သည့်နေရာတွင်မျှ ဖြစ်ပေါ်၍ မရနိုင်သောကြောင့်",
            "ဟိုက်ဒရိုဂျင်ကို ကြားဝင် ထည့်သွင်းထားသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In electroplating, the object being plated is connected as the...",
          questionMy:
              "Electroplating တွင် ပလိတ်ခံနေသော ပစ္စည်းကို ...အဖြစ် ချိတ်ဆက်ထားသည်",
          optionsEn: [
            "Cathode",
            "Anode",
            "Neither electrode",
            "The power source itself",
          ],
          optionsMy: [
            "Cathode",
            "Anode",
            "လျှပ်ကူးတိုင် နှစ်ခုစလုံး မဟုတ်ပါ",
            "ဓာတ်အားပေး ကိရိယာကိုယ်တိုင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In copper refining, the impure copper is used as the...",
          questionMy:
              "ကြေးဝါ Refining တွင် မသန့်စင်သော ကြေးဝါကို ...အဖြစ် အသုံးပြုသည်",
          optionsEn: ["Anode", "Cathode", "Electrolyte only", "Neither"],
          optionsMy: [
            "Anode",
            "Cathode",
            "Electrolyte သာ",
            "နှစ်ခုစလုံး မဟုတ်ပါ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 11: "Exothermic and Endothermic Reactions"
// =====================================================================

const CourseWeekDef _igcseChemWeek11 = CourseWeekDef(
  id: "course-igcse-chem-w11",
  weekNumber: 11,
  titleEn: "Exothermic and Endothermic Reactions",
  titleMy: "အပူထုတ်လွှတ်သော နှင့် အပူစုပ်ယူသော ဓာတ်ပြုမှုများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w11-d1",
      dayNumber: 1,
      titleEn: "Enthalpy Change and Energy Profiles",
      titleMy: "Enthalpy ပြောင်းလဲမှုနှင့် စွမ်းအင် ပရိုဖိုင်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In an exothermic reaction, what happens to the surrounding temperature?",
          questionMy:
              "အပူထုတ်လွှတ်သော ဓာတ်ပြုမှုတစ်ခုတွင် ပတ်ဝန်းကျင် အပူချိန် အဘယ်ဖြစ်သွားသနည်း။",
          optionsEn: [
            "It increases, because heat energy is released to the surroundings",
            "It decreases, because heat is absorbed from the surroundings",
            "It stays exactly the same always",
            "It becomes impossible to measure",
          ],
          optionsMy: [
            "မြင့်တက်သွားသည်၊ အကြောင်းမှာ ပတ်ဝန်းကျင်သို့ အပူစွမ်းအင် လွှတ်ထုတ်သောကြောင့်",
            "ကျဆင်းသွားသည်၊ အကြောင်းမှာ ပတ်ဝန်းကျင်မှ အပူ စုပ်ယူသောကြောင့်",
            "အမြဲတမ်း အတိအကျ တူညီနေသည်",
            "တိုင်းတာ၍ မရနိုင်တော့ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "'Exo' means 'out' -- exothermic reactions release heat energy outward into the surroundings.",
          ],
          hintsMy: [
            "'Exo' ဆိုသည်မှာ 'အပြင်' ဟု အဓိပ္ပာယ်ရသည် -- Exothermic ဓာတ်ပြုမှုများသည် ပတ်ဝန်းကျင်ထဲသို့ အပူစွမ်းအင် လွှတ်ထုတ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "On an energy profile diagram, how does an endothermic reaction differ from an exothermic one?",
          questionMy:
              "စွမ်းအင် ပရိုဖိုင် ဂရပ်တစ်ခုတွင် Endothermic ဓာတ်ပြုမှုသည် Exothermic တစ်ခုနှင့် မည်သို့ ကွဲပြားသနည်း။",
          optionsEn: [
            "Products have higher energy than reactants (energy absorbed), the opposite of exothermic",
            "There is no difference between the two diagrams at all",
            "Endothermic reactions never have an energy profile diagram",
            "Products always have less energy in every reaction type",
          ],
          optionsMy: [
            "Product များသည် Reactant များထက် စွမ်းအင် ပိုမြင့်သည် (စွမ်းအင် စုပ်ယူထား)၊ Exothermic နှင့် ဆန့်ကျင်ဘက် ဖြစ်သည်",
            "ဂရပ် နှစ်ခုကြား ကွာခြားမှု လုံးဝ မရှိပါ",
            "Endothermic ဓာတ်ပြုမှုများတွင် စွမ်းအင် ပရိုဖိုင် ဂရပ် ဘယ်တော့မှ မရှိပါ",
            "ဓာတ်ပြုမှု အမျိုးအစားတိုင်းတွင် Product များသည် အမြဲတမ်း စွမ်းအင် ပိုနည်းသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "In exothermic reactions, products have LOWER energy than reactants; in endothermic, products have HIGHER energy.",
          ],
          hintsMy: [
            "Exothermic ဓာတ်ပြုမှုများတွင် Product များသည် Reactant များထက် စွမ်းအင် ပိုနိမ့်သည်; Endothermic တွင်မူ Product များသည် စွမ်းအင် ပိုမြင့်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Bond breaking requires energy (endothermic), and bond forming releases energy (exothermic). What determines whether an overall reaction is exothermic or endothermic?",
          questionMy:
              "Bond ချိုးဖျက်ခြင်းသည် စွမ်းအင် လိုအပ်ပြီး (Endothermic) Bond ဖွဲ့စည်းခြင်းသည် စွမ်းအင် လွှတ်ထုတ်သည် (Exothermic)။ ဓာတ်ပြုမှုတစ်ခုလုံး Exothermic ဖြစ်ရမည်လား Endothermic ဖြစ်ရမည်လား ဆိုသည်ကို အဘယ်က ဆုံးဖြတ်သနည်း။",
          optionsEn: [
            "Whether more energy is released forming new bonds than was used breaking old bonds, or vice versa",
            "The colour of the reactants only",
            "How many atoms are involved, regardless of energy",
            "The time of day the reaction occurs",
          ],
          optionsMy: [
            "Bond အသစ်များ ဖွဲ့စည်းရာတွင် လွှတ်ထုတ်သော စွမ်းအင်သည် Bond ဟောင်းများ ချိုးဖျက်ရာတွင် အသုံးပြုခဲ့သော စွမ်းအင်ထက် ပိုများမများ၊ သို့မဟုတ် ဆန့်ကျင်ဘက် ဖြစ်မဖြစ်",
            "Reactant များ၏ အရောင်သာ",
            "စွမ်းအင်နှင့် မသက်ဆိုင်ဘဲ အက်တမ် မည်မျှ ပါဝင်သနည်း",
            "ဓာတ်ပြုမှု ဖြစ်ပွားသည့် နေ့အချိန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "If energy released (bond forming) > energy absorbed (bond breaking), the reaction is overall exothermic, and vice versa.",
          ],
          hintsMy: [
            "လွှတ်ထုတ်သော စွမ်းအင် (Bond ဖွဲ့စည်းခြင်း) > စုပ်ယူသော စွမ်းအင် (Bond ချိုးဖျက်ခြင်း) ဖြစ်ပါက ဓာတ်ပြုမှု တစ်ခုလုံး Exothermic ဖြစ်ပြီး ဆန့်ကျင်ဘက်လည်း အတူတူ ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w11-d2",
      dayNumber: 2,
      titleEn: "Match: Energetics Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Energetics ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w11-dm-1",
          termEn: "Exothermic reaction",
          termMy: "Exothermic Reaction",
          matchEn:
              "A reaction that releases heat energy to the surroundings, raising the temperature",
          matchMy:
              "ပတ်ဝန်းကျင်သို့ အပူစွမ်းအင် လွှတ်ထုတ်ကာ အပူချိန် မြှင့်တင်ပေးသော ဓာတ်ပြုမှု",
          colorValue: 0xFFE91E63,
        ),
        DragMatchPair(
          id: "igcsechem-w11-dm-2",
          termEn: "Endothermic reaction",
          termMy: "Endothermic Reaction",
          matchEn:
              "A reaction that absorbs heat energy from the surroundings, lowering the temperature",
          matchMy:
              "ပတ်ဝန်းကျင်မှ အပူစွမ်းအင် စုပ်ယူကာ အပူချိန် လျော့ကျစေသော ဓာတ်ပြုမှု",
          colorValue: 0xFF2196F3,
        ),
        DragMatchPair(
          id: "igcsechem-w11-dm-3",
          termEn: "Bond breaking",
          termMy: "Bond Breaking",
          matchEn:
              "An endothermic process that always requires an input of energy",
          matchMy:
              "စွမ်းအင် ထည့်သွင်းမှု အမြဲတမ်း လိုအပ်သော Endothermic ဖြစ်စဉ်",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w11-dm-4",
          termEn: "Bond forming",
          termMy: "Bond Forming",
          matchEn: "An exothermic process that always releases energy",
          matchMy: "စွမ်းအင် အမြဲတမ်း လွှတ်ထုတ်သော Exothermic ဖြစ်စဉ်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w11-dm-5",
          termEn: "Activation energy",
          termMy: "Activation Energy",
          matchEn:
              "The minimum energy needed for reactant particles to react when they collide",
          matchMy:
              "Reactant အမှုန်များ ထိတွေ့ပြီး ဓာတ်ပြုနိုင်ရန် လိုအပ်သော အနည်းဆုံး စွမ်းအင်",
          colorValue: 0xFF9C27B0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w11-d3",
      dayNumber: 3,
      titleEn: "Sort: Exothermic or Endothermic?",
      titleMy: "စီစစ်ကြမည် - Exothermic လား၊ Endothermic လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Exothermic", "Endothermic"],
        bucketsMy: ["Exothermic", "Endothermic"],
        items: [
          SortingItem(
            id: "igcsechem-w11-sort-1",
            labelEn: "Burning natural gas in a stove (combustion)",
            labelMy: "မီးဖိုတွင် သဘာဝဓာတ်ငွေ့ လောင်ကျွမ်းခြင်း (Combustion)",
            correctBucketEn: "Exothermic",
            correctBucketMy: "Exothermic",
          ),
          SortingItem(
            id: "igcsechem-w11-sort-2",
            labelEn: "Photosynthesis, absorbing light energy to build glucose",
            labelMy:
                "အလင်းစွမ်းအင် စုပ်ယူကာ ဂလူးကို့စ် တည်ဆောက်သော Photosynthesis",
            correctBucketEn: "Endothermic",
            correctBucketMy: "Endothermic",
          ),
          SortingItem(
            id: "igcsechem-w11-sort-3",
            labelEn: "An instant hot pack used to warm cold hands",
            labelMy:
                "အေးစက်နေသော လက်များကို နွေးစေရန် အသုံးပြုသော ချက်ချင်း အပူပက်",
            correctBucketEn: "Exothermic",
            correctBucketMy: "Exothermic",
          ),
          SortingItem(
            id: "igcsechem-w11-sort-4",
            labelEn: "An instant cold pack used to treat a sports injury",
            labelMy: "အားကစား ဒဏ်ရာကို ကုသရန် အသုံးပြုသော ချက်ချင်း အအေးပက်",
            correctBucketEn: "Endothermic",
            correctBucketMy: "Endothermic",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w11-d4",
      dayNumber: 4,
      titleEn: "Reading: Chef U Soe Win's Ice Pack Experiment",
      titleMy: "စာဖတ်ခြင်း - ဟင်းချက်ဆရာ ဦးစိုးဝင်း၏ ရေခဲအိတ် စမ်းသပ်ချက်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Chef U Soe Win's Ice Pack Experiment",
        titleMy: "ဟင်းချက်ဆရာ ဦးစိုးဝင်း၏ ရေခဲအိတ် စမ်းသပ်ချက်",
        passageEn:
            "U Soe Win, a chef with a strong interest in the science behind his kitchen tools, was curious about a first-aid instant cold pack a friend had shown him: squeezing the pack broke an inner pouch, mixing ammonium nitrate crystals with water, and the whole pack turned noticeably cold within seconds. He asked a chemistry teacher friend, Ko Zaw, to explain why.\n\nKo Zaw explained that dissolving ammonium nitrate in water is an endothermic process: breaking apart the ionic lattice of the solid ammonium nitrate requires more energy than is released when the ions become surrounded by water molecules. Since the overall process absorbs more energy than it releases, that energy must come from somewhere -- and it comes from the surrounding water and the pack itself, which is why the pack feels cold to the touch.\n\nU Soe Win then asked about the opposite: why does an exothermic reaction, like burning charcoal in his outdoor grill, feel hot instead? Ko Zaw explained that combustion releases far more energy forming the strong new bonds in carbon dioxide and water than was needed to break the weaker bonds in the charcoal and oxygen molecules -- so the surplus energy is released outward as heat, warming the surroundings.\n\nFinally, U Soe Win asked how a chemist could predict, before mixing anything, whether a given reaction would end up hot or cold. Ko Zaw explained that on an energy profile diagram, if the products sit at a lower energy level than the reactants, the reaction is exothermic (like the charcoal fire) -- the 'lost' energy is released as heat. But if the products sit at a higher energy level than the reactants, as with dissolving ammonium nitrate, the reaction is endothermic, and that extra energy must be absorbed from the surroundings, explaining exactly why the cold pack in his hand had grown cold.",
        passageMy:
            "မိမိ၏ မီးဖိုချောင် ကိရိယာများ နောက်ကွယ်ရှိ သိပ္ပံပညာကို စိတ်ဝင်စားသော ဟင်းချက်ဆရာ ဦးစိုးဝင်းသည် သူငယ်ချင်းတစ်ဦး ပြသခဲ့သော ရှေးဦးသူနာပြု ချက်ချင်း အအေးပက်တစ်ခုကို စိတ်ဝင်စားခဲ့သည်- အိတ်ကို ညှစ်လိုက်သည်နှင့် အတွင်းရှိ အိတ်ငယ်တစ်ခု ကွဲသွားပြီး Ammonium Nitrate ဓာတ်သလင်းများကို ရေနှင့် ရောစပ်စေကာ စက္ကန့်အနည်းငယ်အတွင်း အိတ်တစ်ခုလုံး သိသိသာသာ အေးလာသည်။ သူသည် အကြောင်းရင်းကို ရှင်းပြပေးရန် ဓာတုဗေဒ ဆရာ သူငယ်ချင်း ကိုဇော်ကို မေးမြန်းခဲ့သည်။\n\nAmmonium Nitrate ကို ရေတွင် ပျော်ဝင်ခြင်းသည် Endothermic ဖြစ်စဉ်တစ်ခု ဖြစ်ကြောင်း ကိုဇော် ရှင်းပြခဲ့သည်- အစိုင်အခဲ Ammonium Nitrate ၏ Ionic Lattice ကို ချိုးဖျက်ခြင်းသည် Ion များ ရေမော်လီကျူးများ ဝန်းရံခံရသည့်အခါ လွှတ်ထုတ်သော စွမ်းအင်ထက် ပို၍ လိုအပ်သည်။ ဖြစ်စဉ် တစ်ခုလုံးသည် လွှတ်ထုတ်သည့်အရာထက် ပို၍ စွမ်းအင် စုပ်ယူသောကြောင့် ထို စွမ်းအင်သည် တစ်နေရာမှ လာရမည်ဖြစ်ကာ -- ပတ်ဝန်းကျင်ရေနှင့် အိတ်ကိုယ်တိုင်မှ လာခြင်း ဖြစ်သည်၊ ထို့ကြောင့် အိတ်သည် ထိတွေ့ရာတွင် အေးစက်နေခြင်း ဖြစ်သည်။\n\nဦးစိုးဝင်းသည် ဆန့်ကျင်ဘက်ကို ဆက်လက် မေးမြန်းခဲ့သည်- သူ၏ အပြင်ဘက် အသည်းငင်ပေါ်တွင် မီးသွေးလောင်ကျွမ်းခြင်း ကဲ့သို့ Exothermic ဓာတ်ပြုမှု တစ်ခုသည် အဘယ်ကြောင့် ပူသည့်အစား ပူနွေးကြောင်း ခံစားရသနည်း။ Combustion သည် ကာဗွန်ဒိုင်အောက်ဆိုဒ်နှင့် ရေရှိ ခိုင်မာသော Bond အသစ်များ ဖွဲ့စည်းရာတွင် မီးသွေးနှင့် အောက်ဆီဂျင် မော်လီကျူးများရှိ အားနည်းသော Bond များ ချိုးဖျက်ရန် လိုအပ်သည်ထက် ပို၍ များစွာသော စွမ်းအင် လွှတ်ထုတ်သောကြောင့် -- ပိုလျှံသော စွမ်းအင်ကို အပူအဖြစ် ပြင်ပသို့ လွှတ်ထုတ်ကာ ပတ်ဝန်းကျင်ကို နွေးစေသည်ဟု ကိုဇော် ရှင်းပြခဲ့သည်။\n\nနောက်ဆုံးတွင် ဦးစိုးဝင်းသည် ဓာတုဗေဒပညာရှင်တစ်ဦးသည် မည်သည့်အရာကိုမျှ မရောစပ်မီ ပေးထားသော ဓာတ်ပြုမှုတစ်ခု ပူသွားမည် သို့မဟုတ် အေးသွားမည်ကို မည်သို့ ကြိုတင် ခန့်မှန်းနိုင်ကြောင်း မေးမြန်းခဲ့သည်။ စွမ်းအင် ပရိုဖိုင် ဂရပ်တစ်ခုတွင် Product များသည် Reactant များထက် နိမ့်သော စွမ်းအင်အဆင့်တွင် ရှိပါက ဓာတ်ပြုမှုသည် (မီးသွေးမီးလောင်ခြင်းကဲ့သို့) Exothermic ဖြစ်ကြောင်း -- 'ဆုံးရှုံးသွားသော' စွမ်းအင်ကို အပူအဖြစ် လွှတ်ထုတ်ကြောင်း ကိုဇော် ရှင်းပြခဲ့သည်။ သို့သော် Product များသည် Reactant များထက် ပိုမြင့်သော စွမ်းအင်အဆင့်တွင် ရှိပါက Ammonium Nitrate ပျော်ဝင်ခြင်းကဲ့သို့ ဓာတ်ပြုမှုသည် Endothermic ဖြစ်ပြီး ထို ပိုလျှံသော စွမ်းအင်ကို ပတ်ဝန်းကျင်မှ စုပ်ယူရမည်ဖြစ်ကာ သူ၏ လက်ထဲရှိ အအေးပက် အဘယ်ကြောင့် အေးလာကြောင်း အတိအကျ ရှင်းပြပေးသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does dissolving ammonium nitrate make the pack feel cold?",
            questionMy:
                "Ammonium Nitrate ပျော်ဝင်ခြင်းက အိတ်ကို အေးလာစေသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The process absorbs more energy than it releases, taking that energy from the surrounding water and pack",
              "The pack contains a built-in refrigerator",
              "Ammonium nitrate is naturally cold to the touch",
              "The process releases energy, warming everything nearby",
            ],
            optionsMy: [
              "ဖြစ်စဉ်သည် လွှတ်ထုတ်သည့်အရာထက် ပို၍ စွမ်းအင် စုပ်ယူကာ ပတ်ဝန်းကျင်ရေနှင့် အိတ်မှ ထို စွမ်းအင်ကို ယူသောကြောင့်",
              "အိတ်တွင် ရေခဲသေတ္တာ တပ်ဆင်ထားသောကြောင့်",
              "Ammonium Nitrate သည် သဘာဝအားဖြင့် ထိတွေ့ရာတွင် အေးသောကြောင့်",
              "ဖြစ်စဉ်သည် စွမ်းအင် လွှတ်ထုတ်ကာ အနီးရှိ အရာအားလုံးကို နွေးစေသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining where the absorbed energy comes from.",
            ],
            hintsMy: [
              "စုပ်ယူထားသော စွမ်းအင် မှလာကြောင်းကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why does burning charcoal feel hot?",
            questionMy:
                "မီးသွေး လောင်ကျွမ်းခြင်းက ပူနွေးသောကြောင်း ခံစားရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Forming new bonds releases more energy than was needed to break old bonds",
              "Charcoal absorbs heat from the surrounding air",
              "It is an endothermic reaction",
              "Oxygen molecules are naturally hot",
            ],
            optionsMy: [
              "Bond အသစ်များ ဖွဲ့စည်းခြင်းက Bond ဟောင်းများ ချိုးဖျက်ရန် လိုအပ်ခဲ့သည်ထက် ပို၍ စွမ်းအင် လွှတ်ထုတ်သောကြောင့်",
              "မီးသွေးသည် ပတ်ဝန်းကျင် လေထုမှ အပူ စုပ်ယူသောကြောင့်",
              "Endothermic ဓာတ်ပြုမှု တစ်ခု ဖြစ်သောကြောင့်",
              "အောက်ဆီဂျင် မော်လီကျူးများသည် သဘာဝအားဖြင့် ပူသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence comparing bond-forming energy to bond-breaking energy for combustion.",
            ],
            hintsMy: [
              "Combustion အတွက် Bond ဖွဲ့စည်းခြင်း စွမ်းအင်ကို Bond ချိုးဖျက်ခြင်း စွမ်းအင်နှင့် နှိုင်းယှဉ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to the final paragraph, on an energy profile diagram, when is a reaction exothermic?",
            questionMy:
                "စွမ်းအင် ပရိုဖိုင် ဂရပ်တစ်ခုတွင် ဓာတ်ပြုမှု တစ်ခု Exothermic ဖြစ်သည့် အခြေအနေကို နောက်ဆုံးစာပိုဒ်အရ ဖော်ပြပါ။",
            optionsEn: [
              "When products sit at a lower energy level than reactants",
              "When products sit at a higher energy level than reactants",
              "When products and reactants have identical energy",
              "Energy profile diagrams cannot show this",
            ],
            optionsMy: [
              "Product များသည် Reactant များထက် နိမ့်သော စွမ်းအင်အဆင့်တွင် ရှိသည့်အခါ",
              "Product များသည် Reactant များထက် ပိုမြင့်သော စွမ်းအင်အဆင့်တွင် ရှိသည့်အခါ",
              "Product များနှင့် Reactant များ၏ စွမ်းအင် တူညီသည့်အခါ",
              "စွမ်းအင် ပရိုဖိုင် ဂရပ်များက ၎င်းကို ပြသ၍ မရနိုင်ပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the exothermic energy profile shape.",
            ],
            hintsMy: [
              "Exothermic စွမ်းအင် ပရိုဖိုင် ပုံသဏ္ဍာန်ကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the whole passage, what type of reaction is dissolving ammonium nitrate?",
            questionMy:
                "Ammonium Nitrate ပျော်ဝင်ခြင်းသည် မည်သည့် ဓာတ်ပြုမှု အမျိုးအစား ဖြစ်ကြောင်းကို စာပိုဒ်တစ်ခုလုံးအရ ဖော်ပြပါ။",
            optionsEn: [
              "Endothermic",
              "Exothermic",
              "Neither -- it is not a real reaction",
              "Both at the same time",
            ],
            optionsMy: [
              "Endothermic",
              "Exothermic",
              "နှစ်ခုစလုံး မဟုတ်ပါ -- ဓာတ်ပြုမှု အစစ် မဟုတ်ပါ",
              "နှစ်ခုလုံး တစ်ပြိုင်နက် ဖြစ်သည်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread paragraph 2's classification of the process."],
            hintsMy: ["ဖြစ်စဉ်ကို ခွဲခြားထားသော စာပိုဒ် ၂ ကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w11-d5",
      dayNumber: 5,
      titleEn: "Week 11 Recap: Chemical Energetics",
      titleMy: "ဧကာဒသမပတ် ပြန်လည်သုံးသပ်ခြင်း - ဓာတုဗေဒ Energetics",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Exothermic reactions...",
          questionMy: "Exothermic ဓာတ်ပြုမှုများသည်...",
          optionsEn: [
            "Release heat to the surroundings",
            "Absorb heat from the surroundings",
            "Never involve energy",
            "Only happen underwater",
          ],
          optionsMy: [
            "ပတ်ဝန်းကျင်သို့ အပူ လွှတ်ထုတ်သည်",
            "ပတ်ဝန်းကျင်မှ အပူ စုပ်ယူသည်",
            "စွမ်းအင်နှင့် ဘယ်တော့မှ မသက်ဆိုင်ပါ",
            "ရေအောက်တွင်သာ ဖြစ်ပွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Bond breaking is always...",
          questionMy: "Bond ချိုးဖျက်ခြင်းသည် အမြဲတမ်း...",
          optionsEn: [
            "Endothermic (requires energy)",
            "Exothermic (releases energy)",
            "Neutral, no energy involved",
            "Only happens in metals",
          ],
          optionsMy: [
            "Endothermic (စွမ်းအင် လိုအပ်သည်)",
            "Exothermic (စွမ်းအင် လွှတ်ထုတ်သည်)",
            "Neutral၊ စွမ်းအင် မပါဝင်ပါ",
            "သတ္တုများတွင်သာ ဖြစ်ပွားသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "On an energy profile diagram, an endothermic reaction shows...",
          questionMy:
              "စွမ်းအင် ပရိုဖိုင် ဂရပ်တစ်ခုတွင် Endothermic ဓာတ်ပြုမှုသည်...",
          optionsEn: [
            "Products at a higher energy level than reactants",
            "Products at a lower energy level than reactants",
            "No products at all",
            "A flat horizontal line only",
          ],
          optionsMy: [
            "Reactant များထက် ပိုမြင့်သော စွမ်းအင်အဆင့်တွင် ရှိသော Product များ",
            "Reactant များထက် နိမ့်သော စွမ်းအင်အဆင့်တွင် ရှိသော Product များ",
            "Product လုံးဝ မရှိပါ",
            "ပြားချပ်သော ရေပြင်ညီ မျဉ်းတစ်ခုသာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 12 (Capstone): "Energetics and Electrolysis Studio"
// =====================================================================

const CourseWeekDef _igcseChemWeek12 = CourseWeekDef(
  id: "course-igcse-chem-w12",
  weekNumber: 12,
  titleEn: "Energetics and Electrolysis Studio",
  titleMy: "စွမ်းအင်နှင့် လျှပ်စစ်ဓာတ်ခွဲခြင်း အလုပ်ရုံ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w12-d1",
      dayNumber: 1,
      titleEn: "Bond Energy Calculations",
      titleMy: "Bond Energy တွက်ချက်မှုများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "If breaking bonds in reactants requires 500 kJ and forming bonds in products releases 620 kJ, is the reaction exothermic or endothermic, and what is the overall energy change?",
          questionMy:
              "Reactant များရှိ Bond များ ချိုးဖျက်ရန် 500 kJ လိုအပ်ပြီး Product များရှိ Bond များ ဖွဲ့စည်းရန် 620 kJ လွှတ်ထုတ်ပါက ဓာတ်ပြုမှုသည် Exothermic လား Endothermic လား၊ စုစုပေါင်း စွမ်းအင် ပြောင်းလဲမှု မည်မျှနည်း။",
          optionsEn: [
            "Exothermic, releasing 120 kJ overall (620 - 500)",
            "Endothermic, absorbing 120 kJ overall",
            "Exothermic, releasing 1,120 kJ overall",
            "Neutral, with no energy change at all",
          ],
          optionsMy: [
            "Exothermic၊ စုစုပေါင်း 120 kJ လွှတ်ထုတ် (620 - 500)",
            "Endothermic၊ စုစုပေါင်း 120 kJ စုပ်ယူ",
            "Exothermic၊ စုစုပေါင်း 1,120 kJ လွှတ်ထုတ်",
            "Neutral၊ စွမ်းအင် ပြောင်းလဲမှု လုံးဝ မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Energy change = energy released forming bonds - energy absorbed breaking bonds.",
            "620 - 500 = 120 kJ released, so the reaction is exothermic overall.",
          ],
          hintsMy: [
            "စွမ်းအင် ပြောင်းလဲမှု = Bond ဖွဲ့စည်းရာတွင် လွှတ်ထုတ်သော စွမ်းအင် - Bond ချိုးဖျက်ရာတွင် စုပ်ယူသော စွမ်းအင်",
            "620 - 500 = 120 kJ လွှတ်ထုတ်သောကြောင့် ဓာတ်ပြုမှု တစ်ခုလုံးသည် Exothermic ဖြစ်သည်",
          ],
        ),
        QuizQuestion(
          questionEn:
              "During electrolysis of molten zinc chloride (ZnCl2), what forms at the cathode?",
          questionMy:
              "အရည်ပျော် ဇင့်ကလိုရိုဒ် (ZnCl2) ကို Electrolysis ပြုလုပ်စဉ် Cathode တွင် အဘယ် ဖြစ်ပေါ်လာသနည်း။",
          optionsEn: [
            "Zinc metal (Zn)",
            "Chlorine gas (Cl2)",
            "Hydrogen gas",
            "Zinc chloride crystals",
          ],
          optionsMy: [
            "ဇင့် သတ္တု (Zn)",
            "ကလိုရင်း ဓာတ်ငွေ့ (Cl2)",
            "ဟိုက်ဒရိုဂျင် ဓာတ်ငွေ့",
            "ဇင့်ကလိုရိုဒ် ဓာတ်သလင်းများ",
          ],
          correctIndex: 0,
          hintsEn: [
            "The Zn2+ cations migrate to the cathode and gain electrons to form neutral zinc metal.",
          ],
          hintsMy: [
            "Zn2+ Cation များသည် Cathode သို့ ရွှေ့ပြောင်းကာ Electron ရရှိပြီး Neutral ဇင့် သတ္တု ဖြစ်လာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why do exam questions ask you to draw a full energy profile diagram, rather than just stating whether a reaction is exo/endothermic?",
          questionMy:
              "စာမေးပွဲ မေးခွန်းများသည် ဓာတ်ပြုမှုတစ်ခု Exo/Endothermic ဖြစ်ကြောင်း ဖော်ပြရုံမက စွမ်းအင် ပရိုဖိုင် ဂရပ် အပြည့်အစုံ ဆွဲခိုင်းလေ့ရှိသည့် အကြောင်းရင်းကို ဖော်ပြပါ။",
          optionsEn: [
            "A full diagram shows activation energy, reactant/product energy levels, and overall energy change together",
            "It is purely decorative with no scientific purpose",
            "Diagrams are always easier to draw than to write about",
            "Energy profile diagrams are only used for endothermic reactions",
          ],
          optionsMy: [
            "ဂရပ် အပြည့်အစုံသည် Activation Energy၊ Reactant/Product စွမ်းအင်အဆင့်များနှင့် စုစုပေါင်း စွမ်းအင် ပြောင်းလဲမှုကို အတူတကွ ပြသသောကြောင့်",
            "သိပ္ပံနည်းကျ ရည်ရွယ်ချက် မရှိဘဲ တန်ဆာဆင်ရုံသာ ဖြစ်သောကြောင့်",
            "ဂရပ်များသည် စာရေးသားရုံထက် အမြဲတမ်း ဆွဲရန် ပို၍ လွယ်ကူသောကြောင့်",
            "စွမ်းအင် ပရိုဖိုင် ဂရပ်များကို Endothermic ဓာတ်ပြုမှုများအတွက်သာ အသုံးပြုသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A full diagram captures the complete energy story: activation energy needed, and the net change between reactants and products.",
          ],
          hintsMy: [
            "ဂရပ် အပြည့်အစုံသည် လိုအပ်သော Activation Energy နှင့် Reactant/Product များကြား Net Change တို့ ပါဝင်သော စွမ်းအင် ဇာတ်ကြောင်း အပြည့်အစုံကို ဖမ်းယူသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w12-d2",
      dayNumber: 2,
      titleEn: "Match: Term 3 Recap Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - တတိယတန်း ပြန်လည်သုံးသပ်ခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w12-dm-1",
          termEn: "Overall energy change",
          termMy: "Overall Energy Change",
          matchEn:
              "Energy released forming bonds minus energy absorbed breaking bonds",
          matchMy:
              "Bond ဖွဲ့စည်းရာတွင် လွှတ်ထုတ်သော စွမ်းအင် နုတ် Bond ချိုးဖျက်ရာတွင် စုပ်ယူသော စွမ်းအင်",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w12-dm-2",
          termEn: "Electrolytic cell",
          termMy: "Electrolytic Cell",
          matchEn:
              "A setup using external electricity to drive a non-spontaneous chemical reaction",
          matchMy:
              "အလိုအလျောက် မဖြစ်နိုင်သော ဓာတ်ပြုမှုတစ်ခုကို လှုံ့ဆော်ရန် ပြင်ပ လျှပ်စစ် အသုံးပြုသော ပြင်ဆင်မှု",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w12-dm-3",
          termEn: "Activation energy",
          termMy: "Activation Energy",
          matchEn:
              "The energy barrier that must be overcome for a reaction to start",
          matchMy: "ဓာတ်ပြုမှု စတင်ရန် ကျော်လွှားရမည့် စွမ်းအင် အတားအဆီး",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w12-dm-4",
          termEn: "Reduction",
          termMy: "Reduction",
          matchEn: "Gain of electrons, occurring at the cathode",
          matchMy: "Cathode တွင် ဖြစ်ပေါ်သော Electron ရရှိခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w12-dm-5",
          termEn: "Oxidation",
          termMy: "Oxidation",
          matchEn: "Loss of electrons, occurring at the anode",
          matchMy: "Anode တွင် ဖြစ်ပေါ်သော Electron ဆုံးရှုံးခြင်း",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w12-d3",
      dayNumber: 3,
      titleEn: "Sort: Energetics or Electrolysis Concept?",
      titleMy: "စီစစ်ကြမည် - Energetics သို့မဟုတ် Electrolysis သဘောတရား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Energetics", "Electrolysis"],
        bucketsMy: ["Energetics", "Electrolysis"],
        items: [
          SortingItem(
            id: "igcsechem-w12-sort-1",
            labelEn: "Bond breaking and bond forming energy calculations",
            labelMy:
                "Bond ချိုးဖျက်ခြင်းနှင့် ဖွဲ့စည်းခြင်း စွမ်းအင် တွက်ချက်မှုများ",
            correctBucketEn: "Energetics",
            correctBucketMy: "Energetics",
          ),
          SortingItem(
            id: "igcsechem-w12-sort-2",
            labelEn: "Cations moving to the cathode and gaining electrons",
            labelMy: "Cathode သို့ ရွှေ့ပြောင်းကာ Electron ရရှိသော Cation များ",
            correctBucketEn: "Electrolysis",
            correctBucketMy: "Electrolysis",
          ),
          SortingItem(
            id: "igcsechem-w12-sort-3",
            labelEn:
                "Comparing an exothermic and endothermic energy profile diagram",
            labelMy:
                "Exothermic နှင့် Endothermic စွမ်းအင် ပရိုဖိုင် ဂရပ်ကို နှိုင်းယှဉ်ခြင်း",
            correctBucketEn: "Energetics",
            correctBucketMy: "Energetics",
          ),
          SortingItem(
            id: "igcsechem-w12-sort-4",
            labelEn:
                "Electroplating a ring with silver using an anode and cathode",
            labelMy:
                "Anode နှင့် Cathode အသုံးပြု၍ လက်စွပ်ကို ငွေဖြင့် Electroplate ပြုလုပ်ခြင်း",
            correctBucketEn: "Electrolysis",
            correctBucketMy: "Electrolysis",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w12-d4",
      dayNumber: 4,
      titleEn: "Reading: Shin Thant's Science Fair Battery and Hot Pack",
      titleMy: "စာဖတ်ခြင်း - ရှင်သန့်၏ သိပ္ပံပြပွဲ ဘက်ထရီနှင့် အပူပက်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Shin Thant's Science Fair Battery and Hot Pack",
        titleMy: "ရှင်သန့်၏ သိပ္ပံပြပွဲ ဘက်ထရီနှင့် အပူပက်",
        passageEn:
            "For her school science fair, Shin Thant, now approaching the end of her third term, decided to combine both topics of the term into a single exhibit: a simple electrolytic cell paired with a demonstration of an exothermic reaction. Ko Zaw, now a familiar mentor throughout her chemistry journey, agreed to judge her project.\n\nHer first station used a beaker of copper sulfate solution with two carbon electrodes connected to a battery, electrolysing the solution. She explained to visitors that copper ions in the blue solution migrated to the cathode, where they gained electrons and were deposited as a visible layer of reddish-brown copper metal -- a live demonstration of reduction happening right in front of them.\n\nHer second station featured a simple exothermic reaction: mixing solid calcium oxide with water, which released so much heat that the mixture began visibly steaming within moments. She explained to visitors that this reaction released far more energy forming the new bonds in calcium hydroxide than was needed to break apart the starting materials -- exactly the bond energy logic from her term's energetics unit.\n\nWhen Ko Zaw asked her to connect the two demonstrations conceptually, Shin Thant answered thoughtfully: electrolysis was a case of using electrical energy to force a non-spontaneous reaction to happen, absorbing energy overall, while the calcium oxide reaction happened spontaneously and released energy on its own. Ko Zaw noted with pride that she had independently linked the electrode chemistry of Weeks 9-10 with the thermodynamic reasoning of Week 11 -- exactly the kind of cross-topic thinking the IGCSE Extended Paper rewards, and a fitting capstone to close out her second full term of chemistry.",
        passageMy:
            "ကျောင်း သိပ္ပံပြပွဲအတွက် တတိယတန်း အဆုံးသို့ ရောက်ရှိတော့မည့် ရှင်သန့်သည် ဤတန်း၏ ခေါင်းစဉ် နှစ်ခုစလုံးကို ပြခန်းတစ်ခုတည်းတွင် ပေါင်းစပ်ရန် ဆုံးဖြတ်ခဲ့သည်- ရိုးရှင်းသော Electrolytic Cell တစ်ခုကို Exothermic ဓာတ်ပြုမှု သရုပ်ပြခြင်းနှင့် တွဲဖက်ခြင်း ဖြစ်သည်။ သူမ၏ ဓာတုဗေဒ ခရီးစဉ်တစ်လျှောက် ရင်းနှီးသော လမ်းညွှန်ဆရာ ဖြစ်လာသော ကိုဇော်သည် သူမ၏ ပရောဂျက်ကို တရားသူကြီးအဖြစ် စစ်ဆေးရန် သဘောတူခဲ့သည်။\n\nသူမ၏ ပထမ စတေးရှင်သည် ကာဗွန် လျှပ်ကူးတိုင် နှစ်ခုနှင့် ဘက်ထရီ ချိတ်ဆက်ထားသော ကြေးဝါ ဆာလဖိတ် ပျော်ရည် ဗီကာတစ်ခု အသုံးပြုကာ ပျော်ရည်ကို Electrolysis ပြုလုပ်ခဲ့သည်။ အပြာရောင် ပျော်ရည်ရှိ ကြေးဝါ Ion များသည် Cathode ဘက်သို့ ရွှေ့ပြောင်းကာ Electron ရရှိပြီး မြင်နိုင်သော အနီရင့်ရောင် ကြေးဝါ သတ္တု အလွှာအဖြစ် စွန်းကျန်ကြောင်း -- Reduction ဖြစ်ပေါ်နေသည်ကို တိုက်ရိုက် သရုပ်ပြမှု ဖြစ်ကြောင်း -- ဧည့်သည်များအား သူမ ရှင်းပြခဲ့သည်။\n\nသူမ၏ ဒုတိယ စတေးရှင်သည် ရိုးရှင်းသော Exothermic ဓာတ်ပြုမှု တစ်ခု ပြသခဲ့သည်- အစိုင်အခဲ ကယ်လစီယမ်အောက်ဆိုဒ်ကို ရေနှင့် ရောစပ်ကာ ခဏအတွင်း အရောနှောသည် မြင်နိုင်စွာ ငွေ့တက်စေနိုင်လောက်အောင် အပူ များစွာ လွှတ်ထုတ်ခဲ့သည်။ ဤဓာတ်ပြုမှုသည် ကယ်လစီယမ် ဟိုက်ဒရောက်ဆိုဒ်ရှိ Bond အသစ်များ ဖွဲ့စည်းရာတွင် အစပစ္စည်းများ ချိုးဖျက်ရန် လိုအပ်ခဲ့သည်ထက် ပို၍ များစွာသော စွမ်းအင် လွှတ်ထုတ်ခဲ့ကြောင်း -- သူမ၏ တန်းရှိ Energetics ယူနစ်မှ Bond Energy ယုတ္တိဗေဒ အတိအကျ -- ဧည့်သည်များအား ရှင်းပြခဲ့သည်။\n\nကိုဇော်က သရုပ်ပြမှု နှစ်ခုကို သဘောတရားအရ ချိတ်ဆက်ရန် တောင်းဆိုသည့်အခါ ရှင်သန့်သည် စဉ်းစားတွေးတောစွာ ဖြေဆိုခဲ့သည်- Electrolysis သည် အလိုအလျောက် မဖြစ်နိုင်သော ဓာတ်ပြုမှုတစ်ခုကို ဖြစ်ပေါ်စေရန် လျှပ်စစ် စွမ်းအင် အသုံးပြုသော ဥပမာတစ်ခု ဖြစ်ကာ စုစုပေါင်း စွမ်းအင် စုပ်ယူသော်လည်း ကယ်လစီယမ်အောက်ဆိုဒ် ဓာတ်ပြုမှုမှာ အလိုအလျောက် ဖြစ်ပေါ်ကာ ၎င်းကိုယ်တိုင် စွမ်းအင် လွှတ်ထုတ်ခဲ့သည်။ Weeks 9-10 ၏ Electrode ဓာတုဗေဒနှင့် Week 11 ၏ Thermodynamic ယုတ္တိဗေဒကို သူမ ကိုယ်တိုင် ချိတ်ဆက်နိုင်ခဲ့ကြောင်း -- IGCSE Extended Paper က ဆုချီးမြှင့်ပေးသော ကွန်ရိုင်ခေါင်းစဉ် ဖြတ်ကျော် တွေးခေါ်မှု အမျိုးအစားနှင့် သူမ၏ ဓာတုဗေဒ တန်းနှစ်ခု အပြည့်အဝ အဆုံးသတ်ရန် သင့်တော်သော အထူးသင်ခန်းစာအဖြစ် -- ကိုဇော် ဂုဏ်ယူစွာ မှတ်ချက်ပြုခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what happens to copper ions at the cathode in the first station?",
            questionMy:
                "ပထမ စတေးရှင်ရှိ Cathode တွင် ကြေးဝါ Ion များ အဘယ်ဖြစ်ပျက်ကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They gain electrons and are deposited as copper metal",
              "They lose electrons and become a gas",
              "They remain dissolved permanently",
              "They turn into oxygen bubbles",
            ],
            optionsMy: [
              "Electron ရရှိပြီး ကြေးဝါ သတ္တုအဖြစ် စွန်းကျန်သည်",
              "Electron ဆုံးရှုံးကာ ဓာတ်ငွေ့ ဖြစ်သွားသည်",
              "အမြဲတမ်း ပျော်ဝင်နေဆဲ ဖြစ်သည်",
              "အောက်ဆီဂျင် ပူဖောင်းများအဖြစ် ပြောင်းလဲသွားသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing the cathode reaction at the first station.",
            ],
            hintsMy: [
              "ပထမ စတေးရှင်ရှိ Cathode ဓာတ်ပြုမှုကို ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did the calcium oxide and water reaction release so much heat?",
            questionMy:
                "ကယ်လစီယမ်အောက်ဆိုဒ်နှင့် ရေ ဓာတ်ပြုမှုက အပူ များစွာ လွှတ်ထုတ်ခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Forming new bonds released more energy than was needed to break old bonds",
              "The reaction was actually endothermic",
              "Calcium oxide is naturally hot before mixing",
              "Water always releases heat when touched",
            ],
            optionsMy: [
              "Bond အသစ်များ ဖွဲ့စည်းခြင်းက Bond ဟောင်းများ ချိုးဖျက်ရန် လိုအပ်ခဲ့သည်ထက် ပို၍ စွမ်းအင် လွှတ်ထုတ်ခဲ့သောကြောင့်",
              "ဓာတ်ပြုမှုသည် အမှန်တကယ် Endothermic ဖြစ်ခဲ့သောကြောင့်",
              "ကယ်လစီယမ်အောက်ဆိုဒ်သည် မရောစပ်မီ သဘာဝအားဖြင့် ပူနေသောကြောင့်",
              "ရေသည် ထိတွေ့လျှင် အမြဲတမ်း အပူ လွှတ်ထုတ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the bond energy comparison for this reaction.",
            ],
            hintsMy: [
              "ဤဓာတ်ပြုမှုအတွက် Bond Energy နှိုင်းယှဉ်မှုကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to the final paragraph, how did Shin Thant describe electrolysis compared to the calcium oxide reaction?",
            questionMy:
                "Electrolysis ကို ကယ်လစီယမ်အောက်ဆိုဒ် ဓာတ်ပြုမှုနှင့် နှိုင်းယှဉ်ကာ ရှင်သန့် မည်သို့ ဖော်ပြခဲ့ကြောင်းကို နောက်ဆုံးစာပိုဒ်အရ ဖော်ပြပါ။",
            optionsEn: [
              "Electrolysis uses electrical energy to force a non-spontaneous reaction and absorbs energy overall, while the calcium reaction happens spontaneously and releases energy",
              "Both reactions are identical in every way",
              "Electrolysis always releases more heat than any exothermic reaction",
              "Neither reaction involves energy at all",
            ],
            optionsMy: [
              "Electrolysis သည် အလိုအလျောက် မဖြစ်နိုင်သော ဓာတ်ပြုမှုကို ဖြစ်ပေါ်စေရန် လျှပ်စစ်စွမ်းအင် အသုံးပြုကာ စုစုပေါင်း စွမ်းအင် စုပ်ယူသော်လည်း ကယ်လစီယမ် ဓာတ်ပြုမှုမှာ အလိုအလျောက် ဖြစ်ပေါ်ကာ စွမ်းအင် လွှတ်ထုတ်သည်",
              "ဓာတ်ပြုမှု နှစ်ခုစလုံးသည် နည်းလမ်းတိုင်းတွင် တူညီသည်",
              "Electrolysis သည် Exothermic ဓာတ်ပြုမှု မည်သည့်ဖြစ်စေထက် အမြဲတမ်း အပူ ပို၍ လွှတ်ထုတ်သည်",
              "ဓာတ်ပြုမှု နှစ်ခုစလုံးသည် စွမ်းအင်နှင့် လုံးဝ မသက်ဆိုင်ပါ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread Shin Thant's thoughtful comparison in the final paragraph.",
            ],
            hintsMy: [
              "နောက်ဆုံးစာပိုဒ်ရှိ ရှင်သန့်၏ စဉ်းစားတွေးတော နှိုင်းယှဉ်ချက်ကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w12-d5",
      dayNumber: 5,
      titleEn: "Term 3 Recap: Electrolysis and Energetics",
      titleMy: "တတိယတန်း ပြန်လည်သုံးသပ်ခြင်း - Electrolysis နှင့် Energetics",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "At the cathode, reduction means...",
          questionMy: "Cathode တွင် Reduction ဆိုသည်မှာ...",
          optionsEn: [
            "Gain of electrons",
            "Loss of electrons",
            "Loss of protons",
            "No change at all",
          ],
          optionsMy: [
            "Electron ရရှိခြင်း",
            "Electron ဆုံးရှုံးခြင်း",
            "Proton ဆုံးရှုံးခြင်း",
            "မည်သည့် ပြောင်းလဲမှုမျှ မရှိပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An exothermic reaction releases heat because...",
          questionMy:
              "Exothermic ဓာတ်ပြုမှု တစ်ခုသည် ...ကြောင့် အပူ လွှတ်ထုတ်သည်",
          optionsEn: [
            "Bond forming releases more energy than bond breaking absorbed",
            "It always involves electrolysis",
            "Reactants are always gases",
            "Temperature never changes",
          ],
          optionsMy: [
            "Bond ဖွဲ့စည်းခြင်းက Bond ချိုးဖျက်ခြင်း စုပ်ယူသည့်အရာထက် ပို၍ စွမ်းအင် လွှတ်ထုတ်သောကြောင့်",
            "Electrolysis နှင့် အမြဲတမ်း သက်ဆိုင်သောကြောင့်",
            "Reactant များသည် အမြဲတမ်း ဓာတ်ငွေ့များ ဖြစ်သောကြောင့်",
            "အပူချိန် ဘယ်တော့မှ မပြောင်းလဲသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Electroplating uses the object to be plated as the...",
          questionMy:
              "Electroplating သည် ပလိတ်ခံရမည့် ပစ္စည်းကို ...အဖြစ် အသုံးပြုသည်",
          optionsEn: ["Cathode", "Anode", "Electrolyte", "Power source"],
          optionsMy: ["Cathode", "Anode", "Electrolyte", "ဓာတ်အားပေး ကိရိယာ"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 13: "Rates of Reaction"
// =====================================================================

const CourseWeekDef _igcseChemWeek13 = CourseWeekDef(
  id: "course-igcse-chem-w13",
  weekNumber: 13,
  titleEn: "Rates of Reaction",
  titleMy: "ဓာတ်ပြုနှုန်းများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w13-d1",
      dayNumber: 1,
      titleEn: "Collision Theory and Rate Factors",
      titleMy: "Collision Theory နှင့် နှုန်း အချက်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "According to collision theory, what two conditions must be met for a reaction to occur when particles collide?",
          questionMy:
              "Collision Theory အရ အမှုန်များ ထိတွေ့သည့်အခါ ဓာတ်ပြုမှု ဖြစ်ပေါ်ရန် ကိုက်ညီရမည့် အခြေအနေ နှစ်ခုမှာ အဘယ်နည်း။",
          optionsEn: [
            "Particles must collide with enough energy (activation energy) and in the correct orientation",
            "Particles must be the same colour and the same size",
            "Particles must be at room temperature only",
            "Particles must never touch each other",
          ],
          optionsMy: [
            "အမှုန်များသည် လုံလောက်သော စွမ်းအင် (Activation Energy) ဖြင့် မှန်ကန်သော ရပ်တည်ချက်တွင် ထိတွေ့ရမည်",
            "အမှုန်များသည် တူညီသော အရောင်နှင့် အရွယ်အစား ရှိရမည်",
            "အမှုန်များသည် အခန်းအပူချိန်တွင်သာ ရှိရမည်",
            "အမှုန်များသည် တစ်ခုနှင့်တစ်ခု ဘယ်တော့မှ ထိတွေ့ခြင်း မရှိစေရ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Not every collision leads to a reaction -- only 'successful' collisions with enough energy and the right geometry do.",
          ],
          hintsMy: [
            "ထိတွေ့မှု တိုင်းသည် ဓာတ်ပြုမှုကို မဖြစ်စေပါ -- လုံလောက်သော စွမ်းအင်နှင့် မှန်ကန်သော ဂျီဩမေတြီရှိသော 'အောင်မြင်သော' ထိတွေ့မှုများသာ ဖြစ်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why does increasing temperature increase the rate of a reaction?",
          questionMy:
              "အပူချိန် မြှင့်တင်ခြင်းက ဓာတ်ပြုနှုန်းကို မြှင့်တင်ပေးသည့် အကြောင်းရင်းကို ဖော်ပြပါ။",
          optionsEn: [
            "Particles move faster, colliding more frequently and with more energy, so more collisions exceed the activation energy",
            "Temperature has no effect on reaction rate at all",
            "Higher temperature always destroys the reactants entirely",
            "Particles slow down and collide less often",
          ],
          optionsMy: [
            "အမှုန်များသည် ပို၍ လျင်မြန်စွာ ရွေ့လျားကာ မကြာခဏ ထိတွေ့ပြီး စွမ်းအင် ပိုများသောကြောင့် Activation Energy ကျော်လွှားသော ထိတွေ့မှု ပိုများလာသည်",
            "အပူချိန်သည် ဓာတ်ပြုနှုန်းကို လုံးဝ သက်ရောက်မှု မရှိပါ",
            "အပူချိန် ပိုမြင့်ခြင်းက Reactant များကို အမြဲတမ်း လုံးဝ ဖျက်ဆီးသည်",
            "အမှုန်များသည် နှေးကွေးသွားပြီး ထိတွေ့မှု ပိုနည်းလာသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Higher temperature gives particles more kinetic energy, meaning both more frequent AND more energetic collisions.",
          ],
          hintsMy: [
            "အပူချိန် ပိုမြင့်ခြင်းက အမှုန်များကို Kinetic Energy ပို၍ ပေးသောကြောင့် ထိတွေ့မှု ပိုမကြာခဏနှင့် ပိုစွမ်းအင်ရှိလာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "How does increasing the surface area of a solid reactant (e.g., using powder instead of a lump) affect reaction rate?",
          questionMy:
              "အစိုင်အခဲ Reactant တစ်ခု၏ မျက်နှာပြင်ဧရိယာကို (ဥပမာ - တုံးလုံးများအစား မှုန့်ဖြင့်) မြှင့်တင်ခြင်းက ဓာတ်ပြုနှုန်းကို မည်သို့ သက်ရောက်စေသနည်း။",
          optionsEn: [
            "It increases the rate, since more particles are exposed and available to collide with the other reactant",
            "It has no effect on rate whatsoever",
            "It always decreases the rate significantly",
            "It only affects the colour of the reaction",
          ],
          optionsMy: [
            "ပို၍ များသော အမှုန်များ ဖော်ထုတ်ခံရကာ အခြား Reactant နှင့် ထိတွေ့ရန် ရရှိနိုင်သောကြောင့် နှုန်းကို မြှင့်တင်ပေးသည်",
            "နှုန်းအပေါ် မည်သည့် သက်ရောက်မှုမျှ မရှိပါ",
            "နှုန်းကို အမြဲတမ်း သိသိသာသာ လျော့ကျစေသည်",
            "ဓာတ်ပြုမှု၏ အရောင်ကိုသာ သက်ရောက်စေသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Smaller pieces have more total surface area exposed, giving more opportunities for successful collisions per second.",
          ],
          hintsMy: [
            "အပိုင်းငယ်များသည် ဖော်ထုတ်ခံရသော မျက်နှာပြင် ဧရိယာ စုစုပေါင်း ပို၍ များသောကြောင့် တစ်စက္ကန့်လျှင် အောင်မြင်သော ထိတွေ့မှု ရရှိနိုင်ခြေ ပို၍ များသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w13-d2",
      dayNumber: 2,
      titleEn: "Match: Rate of Reaction Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ဓာတ်ပြုနှုန်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w13-dm-1",
          termEn: "Collision theory",
          termMy: "Collision Theory",
          matchEn:
              "The idea that reactions occur when particles collide with enough energy and correct orientation",
          matchMy:
              "အမှုန်များသည် လုံလောက်သော စွမ်းအင်နှင့် မှန်ကန်သော ရပ်တည်ချက်ဖြင့် ထိတွေ့သည့်အခါ ဓာတ်ပြုမှု ဖြစ်ပေါ်သည်ဟူသော အယူအဆ",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w13-dm-2",
          termEn: "Catalyst",
          termMy: "Catalyst",
          matchEn:
              "A substance that speeds up a reaction without being used up itself",
          matchMy:
              "ကိုယ်တိုင် သုံးစွဲမခံရဘဲ ဓာတ်ပြုမှုကို အရှိန်မြှင့်ပေးသော ပစ္စည်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w13-dm-3",
          termEn: "Surface area",
          termMy: "Surface Area",
          matchEn:
              "The exposed area of a solid available for particles to collide with",
          matchMy:
              "အမှုန်များ ထိတွေ့ရန် ရရှိနိုင်သော အစိုင်အခဲ၏ ဖော်ထုတ်ခံရသော ဧရိယာ",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w13-dm-4",
          termEn: "Concentration",
          termMy: "Concentration",
          matchEn:
              "Higher concentration means more particles per unit volume, increasing collision frequency",
          matchMy:
              "Concentration ပိုမြင့်ခြင်းက ထုထည် ယူနစ်တစ်ခုလျှင် အမှုန် ပိုများပြီး ထိတွေ့မှု ကြိမ်နှုန်း မြှင့်တင်ပေးသည်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w13-dm-5",
          termEn: "Rate of reaction",
          termMy: "Rate of Reaction",
          matchEn:
              "How quickly reactants are used up or products are formed over time",
          matchMy:
              "အချိန်ကြာလာသည်နှင့်အမျှ Reactant များ သုံးစွဲခံရသည့် သို့မဟုတ် Product များ ဖြစ်ပေါ်လာသည့် အမြန်နှုန်း",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w13-d3",
      dayNumber: 3,
      titleEn: "Sort: Increases or Decreases Rate?",
      titleMy: "စီစစ်ကြမည် - နှုန်း မြှင့်တင်သလား၊ လျော့ချသလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Increases Rate", "Decreases Rate"],
        bucketsMy: ["နှုန်း မြှင့်တင်သည်", "နှုန်း လျော့ချသည်"],
        items: [
          SortingItem(
            id: "igcsechem-w13-sort-1",
            labelEn: "Raising the temperature of the reaction mixture",
            labelMy: "ဓာတ်ပြုမှု အရောအနှော၏ အပူချိန်ကို မြှင့်တင်ခြင်း",
            correctBucketEn: "Increases Rate",
            correctBucketMy: "နှုန်း မြှင့်တင်သည်",
          ),
          SortingItem(
            id: "igcsechem-w13-sort-2",
            labelEn: "Using large lumps of solid instead of powder",
            labelMy: "မှုန့်အစား အစိုင်အခဲ တုံးလုံးကြီးများ အသုံးပြုခြင်း",
            correctBucketEn: "Decreases Rate",
            correctBucketMy: "နှုန်း လျော့ချသည်",
          ),
          SortingItem(
            id: "igcsechem-w13-sort-3",
            labelEn: "Adding a suitable catalyst",
            labelMy: "သင့်တော်သော Catalyst ထည့်သွင်းခြင်း",
            correctBucketEn: "Increases Rate",
            correctBucketMy: "နှုန်း မြှင့်တင်သည်",
          ),
          SortingItem(
            id: "igcsechem-w13-sort-4",
            labelEn: "Diluting a solution to lower concentration",
            labelMy: "Concentration လျော့ကျစေရန် ပျော်ရည်ကို ရေရေးအားခြင်း",
            correctBucketEn: "Decreases Rate",
            correctBucketMy: "နှုန်း လျော့ချသည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w13-d4",
      dayNumber: 4,
      titleEn: "Reading: Ko Aung Measures Marble and Acid Reaction Rate",
      titleMy:
          "စာဖတ်ခြင်း - ကိုအောင်က ကျောက်စိမ်းနှင့် အက်ဆစ် ဓာတ်ပြုနှုန်း တိုင်းတာခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Ko Aung Measures Marble and Acid Reaction Rate",
        titleMy:
            "ကိုအောင်က ကျောက်စိမ်းနှင့် အက်ဆစ် ဓာတ်ပြုနှုန်း တိုင်းတာခြင်း",
        passageEn:
            "Lab technician Ko Aung set up a classic rate experiment for his students: marble chips (calcium carbonate) reacting with dilute hydrochloric acid, producing carbon dioxide gas, which was collected in a gas syringe and measured every 10 seconds. He ran the experiment four times, changing only one variable each time, to teach the students about fair testing.\n\nIn the first run, using large marble chips and dilute acid at room temperature, the gas syringe filled slowly, taking 3 minutes to reach 50 cm3. In the second run, Ko Aung crushed the marble chips into powder, keeping everything else identical -- the syringe filled to 50 cm3 in just 45 seconds, dramatically faster. He explained that the powder had a far greater surface area exposed to the acid, giving many more opportunities for successful collisions per second, even though the total mass of marble was the same.\n\nIn the third run, Ko Aung used the original large chips again but heated the acid to 40°C instead of room temperature. The reaction sped up noticeably, reaching 50 cm3 in about 90 seconds. He reminded students that heating gives particles more kinetic energy, so they collide both more frequently and with more energy exceeding the activation energy threshold.\n\nIn the final run, Ko Aung doubled the concentration of the hydrochloric acid while keeping the chips large and the temperature at room temperature. The reaction again sped up substantially, reaching 50 cm3 in about 100 seconds. He explained that with double the acid particles packed into the same volume, collisions between acid and marble particles became correspondingly more frequent. Ko Aung concluded the lesson by asking students to rank the four factors -- temperature, surface area, concentration, and (theoretically) a catalyst -- by how directly each one affects collision frequency versus collision energy, reinforcing that all four factors ultimately act through the same collision theory framework.",
        passageMy:
            "ဓာတ်ခွဲခန်း နည်းပညာရှင် ကိုအောင်သည် သူ၏ ကျောင်းသားများအတွက် ရှေးရိုးင်း နှုန်း စမ်းသပ်ချက်တစ်ခု ပြင်ဆင်ခဲ့သည်- ကျောက်စိမ်း အပိုင်းအစများ (ကယ်လစီယမ် ကာဗွန်နိတ်) ရေရေးအား ဟိုက်ဒရိုကလိုရစ် အက်ဆစ်နှင့် ဓာတ်ပြုကာ ကာဗွန်ဒိုင်အောက်ဆိုဒ် ဓာတ်ငွေ့ ထုတ်ပေးပြီး ၎င်းကို ဓာတ်ငွေ့ ဆီးရင့် (Gas Syringe) ဖြင့် စက္ကန့် ၁၀ တိုင်း တိုင်းတာခဲ့သည်။ ကျောင်းသားများအား တရားမျှတသော စမ်းသပ်ခြင်းကို သင်ကြားပေးရန် အကြိမ် ၄ ကြိမ် လုပ်ဆောင်ကာ တစ်ကြိမ်လျှင် Variable တစ်ခုတည်းကိုသာ ပြောင်းလဲခဲ့သည်။\n\nပထမအကြိမ်တွင် ကျောက်စိမ်း အပိုင်းအစ ကြီးများနှင့် ရေရေးအား အက်ဆစ်ကို အခန်းအပူချိန်တွင် အသုံးပြုကာ ဓာတ်ငွေ့ ဆီးရင့်သည် နှေးကွေးစွာ ဖြည့်ဝင်ကာ 50 cm3 ရောက်ရန် ၃ မိနစ် ကြာခဲ့သည်။ ဒုတိယအကြိမ်တွင် ကိုအောင်သည် ကျောက်စိမ် အပိုင်းအစများကို မှုန့်ခြေခဲ့ပြီး အခြားအရာအားလုံးကို တူညီစွာ ထိန်းထားခဲ့သည် -- ဆီးရင့်သည် 50 cm3 သို့ စက္ကန့် ၄၅ သာဖြင့် အလွန်မြန်စွာ ဖြည့်ဝင်ခဲ့သည်။ ကျောက်စိမ် စုစုပေါင်း Mass တူညီသော်လည်း မှုန့်သည် အက်ဆစ်နှင့် ထိတွေ့သော မျက်နှာပြင် ဧရိယာ ပိုကြီးမားသောကြောင့် တစ်စက္ကန့်လျှင် အောင်မြင်သော ထိတွေ့မှု ရရှိနိုင်ခြေ ပို၍ များကြောင်း သူ ရှင်းပြခဲ့သည်။\n\nတတိယအကြိမ်တွင် ကိုအောင်သည် အပိုင်းအစ ကြီးများကို ပြန်လည် အသုံးပြုသော်လည်း အက်ဆစ်ကို အခန်းအပူချိန်အစား 40°C အထိ အပူပေးခဲ့သည်။ ဓာတ်ပြုမှုသည် သိသိသာသာ ပိုမြန်လာကာ 50 cm3 ရောက်ရန် ခန့်မှန်းခြေ စက္ကန့် ၉၀ ကြာခဲ့သည်။ အပူပေးခြင်းက အမှုန်များကို Kinetic Energy ပို၍ ပေးသောကြောင့် ၎င်းတို့သည် ပို၍ မကြာခဏနှင့် Activation Energy Threshold ကို ကျော်လွှားသော စွမ်းအင်ဖြင့် ထိတွေ့ကြောင်း ကျောင်းသားများအား သူ သတိပေးခဲ့သည်။\n\nနောက်ဆုံး အကြိမ်တွင် ကိုအောင်သည် ဟိုက်ဒရိုကလိုရစ် အက်ဆစ်၏ Concentration ကို နှစ်ဆ တိုးမြှင့်ခဲ့ပြီး အပိုင်းအစများကို ကြီးမားစွာ ထားကာ အခန်းအပူချိန်တွင် ထားခဲ့သည်။ ဓာတ်ပြုမှုသည် ထပ်မံ သိသိသာသာ ပိုမြန်လာကာ 50 cm3 ရောက်ရန် ခန့်မှန်းခြေ စက္ကန့် ၁၀၀ ကြာခဲ့သည်။ ထုထည် တူညီသည့်အတွင်း အက်ဆစ် အမှုန် နှစ်ဆ ကျပ်ညပ်စွာ ပါဝင်လာသဖြင့် အက်ဆစ်နှင့် ကျောက်စိမ် အမှုန်များကြား ထိတွေ့မှုများ ယင်းအတိုင်း ပို၍ မကြာခဏ ဖြစ်လာကြောင်း သူ ရှင်းပြခဲ့သည်။ ကိုအောင်သည် ကျောင်းသားများအား အချက်လေးခု -- အပူချိန်၊ မျက်နှာပြင် ဧရိယာ၊ Concentration နှင့် (သီအိုရီအရ) Catalyst -- ကို ထိတွေ့မှု ကြိမ်နှုန်းနှင့် ထိတွေ့မှု စွမ်းအင်ကို မည်မျှ တိုက်ရိုက် သက်ရောက်ကြောင်း အလိုက် အဆင့်သတ်မှတ်ခိုင်းကာ သင်ခန်းစာကို အဆုံးသတ်ခဲ့ပြီး အချက်လေးခုစလုံးသည် Collision Theory Framework တစ်ခုတည်းမှတစ်ဆင့် နောက်ဆုံးတွင် လုပ်ဆောင်ကြောင်း ပြန်လည် အလေးထား ဖော်ပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did the powdered marble react faster than the large chips?",
            questionMy:
                "မှုန့်ခြေထားသော ကျောက်စိမ်သည် အပိုင်းအစ ကြီးများထက် ပိုမြန်စွာ ဓာတ်ပြုခဲ့ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The powder had a much greater surface area exposed to the acid",
              "The powder was a different chemical entirely",
              "The large chips were not real marble",
              "The powder was heated separately first",
            ],
            optionsMy: [
              "မှုန့်သည် အက်ဆစ်နှင့် ထိတွေ့သော မျက်နှာပြင် ဧရိယာ ပို၍ ကြီးမားသောကြောင့်",
              "မှုန့်သည် လုံးဝ ကွဲပြားသော ဓာတုပစ္စည်း ဖြစ်သောကြောင့်",
              "အပိုင်းအစ ကြီးများသည် ကျောက်စိမ် အစစ် မဟုတ်သောကြောင့်",
              "မှုန့်ကို ဦးစွာ သီးခြား အပူပေးထားသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the surface area reasoning.",
            ],
            hintsMy: [
              "မျက်နှာပြင် ဧရိယာ ယုတ္တိဗေဒကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did heating the acid speed up the reaction?",
            questionMy:
                "အက်ဆစ်ကို အပူပေးခြင်းက ဓာတ်ပြုမှုကို ပိုမြန်စေရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Particles gained more kinetic energy, colliding more frequently and with more energy",
              "Heat changed the acid into a different substance",
              "Heat had no real effect on the particles",
              "The marble chips dissolved completely from heat alone",
            ],
            optionsMy: [
              "အမှုန်များသည် Kinetic Energy ပို၍ ရရှိကာ ပို၍ မကြာခဏနှင့် ပိုစွမ်းအင်ရှိစွာ ထိတွေ့ခဲ့သောကြောင့်",
              "အပူသည် အက်ဆစ်ကို ကွဲပြားသော ပစ္စည်းအဖြစ် ပြောင်းလဲစေသောကြောင့်",
              "အပူသည် အမှုန်များအပေါ် အမှန်တကယ် သက်ရောက်မှု မရှိသောကြောင့်",
              "ကျောက်စိမ် အပိုင်းအစများသည် အပူတစ်ခုတည်းဖြင့် လုံးဝ ပျော်ဝင်သွားသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining temperature's effect on particle energy.",
            ],
            hintsMy: [
              "အပူချိန်၏ အမှုန် စွမ်းအင်အပေါ် သက်ရောက်မှုကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, why did doubling the acid concentration speed up the reaction?",
            questionMy:
                "အက်ဆစ် Concentration နှစ်ဆ တိုးမြှင့်ခြင်းက ဓာတ်ပြုမှုကို ပိုမြန်စေရသည့် အကြောင်းရင်းကို စာပိုဒ် ၄ အရ ဖော်ပြပါ။",
            optionsEn: [
              "More acid particles packed into the same volume made collisions more frequent",
              "Concentration has no effect on collision frequency",
              "The acid became a solid at higher concentration",
              "Doubling concentration always halves the reaction rate",
            ],
            optionsMy: [
              "ထုထည် တူညီသည့်အတွင်း အက်ဆစ် အမှုန် ပို၍ ကျပ်ညပ်စွာ ပါဝင်လာသဖြင့် ထိတွေ့မှုများ ပို၍ မကြာခဏ ဖြစ်လာသောကြောင့်",
              "Concentration သည် ထိတွေ့မှု ကြိမ်နှုန်းအပေါ် သက်ရောက်မှု မရှိသောကြောင့်",
              "Concentration ပိုမြင့်ချိန်တွင် အက်ဆစ်သည် အစိုင်အခဲ ဖြစ်သွားသောကြောင့်",
              "Concentration နှစ်ဆ တိုးမြှင့်ခြင်းက ဓာတ်ပြုနှုန်းကို အမြဲတမ်း တစ်ဝက် လျော့ချသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining concentration's effect on collision frequency.",
            ],
            hintsMy: [
              "Concentration ၏ ထိတွေ့မှု ကြိမ်နှုန်းအပေါ် သက်ရောက်မှုကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final paragraph, what framework connects all four rate factors?",
            questionMy:
                "နှုန်း အချက် လေးခုစလုံးကို ချိတ်ဆက်ပေးသော Framework ကို နောက်ဆုံးစာပိုဒ်အရ ဖော်ပြပါ။",
            optionsEn: [
              "Collision theory",
              "The mole concept",
              "Percentage yield",
              "Electrolysis",
            ],
            optionsMy: [
              "Collision Theory",
              "Mole သဘောတရား",
              "ရာခိုင်နှုန်း ရလဒ်",
              "Electrolysis",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the final sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w13-d5",
      dayNumber: 5,
      titleEn: "Week 13 Recap: Rates of Reaction",
      titleMy: "သုံးလုံးဆယ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - ဓာတ်ပြုနှုန်းများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Collision theory states that a reaction requires particles to collide with...",
          questionMy:
              "Collision Theory အရ ဓာတ်ပြုမှုတစ်ခုအတွက် အမှုန်များသည် ...ဖြင့် ထိတွေ့ရမည်",
          optionsEn: [
            "Enough energy and correct orientation",
            "The same colour only",
            "No energy at all",
            "Random speed only",
          ],
          optionsMy: [
            "လုံလောက်သော စွမ်းအင်နှင့် မှန်ကန်သော ရပ်တည်ချက်",
            "တူညီသော အရောင်သာ",
            "စွမ်းအင် လုံးဝ မလို",
            "ကျပန်း အလျင်သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A catalyst speeds up a reaction without...",
          questionMy:
              "Catalyst တစ်ခုသည် ...မရှိဘဲ ဓာတ်ပြုမှုကို အရှိန်မြှင့်ပေးသည်",
          optionsEn: [
            "Being used up itself",
            "Changing anything",
            "Adding energy",
            "Forming products",
          ],
          optionsMy: [
            "ကိုယ်တိုင် သုံးစွဲခံရခြင်း",
            "မည်သည့်အရာမျှ ပြောင်းလဲခြင်း",
            "စွမ်းအင် ထည့်သွင်းခြင်း",
            "Product များ ဖွဲ့စည်းခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Increasing surface area of a solid reactant increases rate because...",
          questionMy:
              "အစိုင်အခဲ Reactant ၏ မျက်နှာပြင် ဧရိယာ မြှင့်တင်ခြင်းက ...ကြောင့် နှုန်းကို မြှင့်တင်ပေးသည်",
          optionsEn: [
            "More particles are exposed for collisions",
            "It changes the reactant's colour",
            "It lowers the temperature",
            "It removes the catalyst",
          ],
          optionsMy: [
            "ထိတွေ့မှုအတွက် အမှုန် ပို၍ ဖော်ထုတ်ခံရသောကြောင့်",
            "Reactant ၏ အရောင် ပြောင်းလဲစေသောကြောင့်",
            "အပူချိန် လျော့ကျစေသောကြောင့်",
            "Catalyst ကို ဖယ်ရှားသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 14: "Reversible Reactions and Equilibrium"
// =====================================================================

const CourseWeekDef _igcseChemWeek14 = CourseWeekDef(
  id: "course-igcse-chem-w14",
  weekNumber: 14,
  titleEn: "Reversible Reactions and Equilibrium",
  titleMy: "ပြန်လှည့်နိုင်သော ဓာတ်ပြုမှုများနှင့် Equilibrium",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w14-d1",
      dayNumber: 1,
      titleEn: "Dynamic Equilibrium and Le Chatelier's Principle",
      titleMy: "Dynamic Equilibrium နှင့် Le Chatelier's Principle",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What does 'dynamic equilibrium' mean in a reversible reaction?",
          questionMy:
              "ပြန်လှည့်နိုင်သော ဓာတ်ပြုမှုတစ်ခုတွင် 'Dynamic Equilibrium' ဆိုသည်မှာ အဘယ်ကို ဆိုလိုသနည်း။",
          optionsEn: [
            "The forward and reverse reactions continue happening at equal rates, so concentrations stay constant",
            "All reactions completely stop occurring",
            "Only the forward reaction happens, forever",
            "The reaction only happens once and then ends",
          ],
          optionsMy: [
            "ရှေ့ဆက်နှင့် နောက်ပြန် ဓာတ်ပြုမှုများသည် ညီမျှသော နှုန်းဖြင့် ဆက်လက် ဖြစ်ပေါ်နေသဖြင့် Concentration များ ကိန်းသေ ဆက်လက် ရှိနေသည်",
            "ဓာတ်ပြုမှုများ အားလုံး လုံးဝ ရပ်တန့်သွားသည်",
            "ရှေ့ဆက် ဓာတ်ပြုမှုသာ ထာဝစဉ် ဖြစ်ပေါ်နေသည်",
            "ဓာတ်ပြုမှုသည် တစ်ကြိမ်တည်း ဖြစ်ပေါ်ပြီး အဆုံးသတ်သွားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "'Dynamic' means both reactions are still actively happening, but their effects on concentration cancel out.",
          ],
          hintsMy: [
            "'Dynamic' ဆိုသည်မှာ ဓာတ်ပြုမှု နှစ်ခုစလုံး တက်ကြွစွာ ဆက်လက် ဖြစ်ပေါ်နေသော်လည်း Concentration အပေါ် ၎င်းတို့၏ သက်ရောက်မှုများ အချင်းချင်း ဖျက်ပစ်နေကြောင်း ဆိုလိုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "According to Le Chatelier's principle, what happens to an equilibrium system if you increase pressure (for a reaction with fewer moles of gas on one side)?",
          questionMy:
              "Le Chatelier's Principle အရ ဖိအား တိုးမြှင့်ပါက Equilibrium စနစ်တစ်ခု အဘယ်ဖြစ်လာသနည်း (ဘက်တစ်ဘက်တွင် ဓာတ်ငွေ့ Mole ပိုနည်းသော ဓာတ်ပြုမှုအတွက်)။",
          optionsEn: [
            "The equilibrium shifts toward the side with fewer gas moles, to reduce the pressure increase",
            "Nothing happens at all, ever",
            "The reaction stops completely",
            "The equilibrium always shifts toward more gas moles",
          ],
          optionsMy: [
            "ဖိအား တိုးမြှင့်မှုကို လျှော့ချရန် Equilibrium သည် ဓာတ်ငွေ့ Mole ပိုနည်းသော ဘက်သို့ ရွှေ့ပြောင်းသည်",
            "မည်သည့်အခါမျှ မည်သည့်အရာမျှ မဖြစ်ပါ",
            "ဓာတ်ပြုမှု လုံးဝ ရပ်တန့်သွားသည်",
            "Equilibrium သည် ဓာတ်ငွေ့ Mole ပိုများသော ဘက်သို့ အမြဲတမ်း ရွှေ့ပြောင်းသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Le Chatelier's principle: if you disturb an equilibrium, it shifts to partially counteract (oppose) the change.",
            "Fewer gas moles = less pressure, so shifting that way reduces the imposed pressure increase.",
          ],
          hintsMy: [
            "Le Chatelier's Principle - Equilibrium ကို နှောင့်ယှက်ပါက ပြောင်းလဲမှုကို တစ်စိတ်တစ်ပိုင်း ဆန့်ကျင်ရန် ရွှေ့ပြောင်းသည်။",
            "ဓာတ်ငွေ့ Mole ပိုနည်းခြင်း = ဖိအား ပိုနည်းခြင်း ဖြစ်သောကြောင့် ထိုဘက်သို့ ရွှေ့ပြောင်းခြင်းက ချမှတ်ထားသော ဖိအား တိုးမြှင့်မှုကို လျှော့ချပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the Haber process (N2 + 3H2 <=> 2NH3, forward reaction exothermic), what does increasing temperature do to the equilibrium yield of ammonia?",
          questionMy:
              "Haber Process (N2 + 3H2 <=> 2NH3, ရှေ့ဆက် ဓာတ်ပြုမှု Exothermic) တွင် အပူချိန် တိုးမြှင့်ခြင်းက အမိုးနီးယား Equilibrium ရလဒ်ကို အဘယ်ဖြစ်စေသနည်း။",
          optionsEn: [
            "It decreases the ammonia yield, since the equilibrium shifts toward the endothermic (reverse) direction to absorb the extra heat",
            "It always increases the ammonia yield with no limit",
            "Temperature has no effect on this equilibrium at all",
            "It converts all the ammonia into nitrogen instantly",
          ],
          optionsMy: [
            "ပိုလျှံသော အပူကို စုပ်ယူရန် Equilibrium သည် Endothermic (နောက်ပြန်) ဦးတည်ချက်ဘက်သို့ ရွှေ့ပြောင်းသောကြောင့် အမိုးနီးယား ရလဒ်ကို လျော့ချသည်",
            "ကန့်သတ်ချက် မရှိဘဲ အမိုးနီးယား ရလဒ်ကို အမြဲတမ်း တိုးမြှင့်ပေးသည်",
            "ဤ Equilibrium အပေါ် အပူချိန်သည် မည်သည့် သက်ရောက်မှုမျှ မရှိပါ",
            "အမိုးနီးယား အားလုံးကို နိုက်ထရိုဂျင်အဖြစ် ချက်ချင်း ပြောင်းလဲစေသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Since the forward reaction is exothermic, the reverse reaction is endothermic; adding heat shifts equilibrium toward absorbing that heat.",
          ],
          hintsMy: [
            "ရှေ့ဆက် ဓာတ်ပြုမှုသည် Exothermic ဖြစ်သောကြောင့် နောက်ပြန် ဓာတ်ပြုမှုသည် Endothermic ဖြစ်သည်; အပူ ထည့်သွင်းခြင်းက Equilibrium ကို ထို အပူ စုပ်ယူရန်ဘက်သို့ ရွှေ့ပြောင်းစေသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w14-d2",
      dayNumber: 2,
      titleEn: "Match: Equilibrium Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Equilibrium ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w14-dm-1",
          termEn: "Reversible reaction",
          termMy: "Reversible Reaction",
          matchEn:
              "A reaction that can proceed in both the forward and reverse directions",
          matchMy:
              "ရှေ့ဆက်နှင့် နောက်ပြန် ဦးတည်ချက် နှစ်ခုစလုံးတွင် ဆက်လက် ဖြစ်ပေါ်နိုင်သော ဓာတ်ပြုမှု",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w14-dm-2",
          termEn: "Dynamic equilibrium",
          termMy: "Dynamic Equilibrium",
          matchEn:
              "A state where forward and reverse reaction rates are equal, keeping concentrations constant",
          matchMy:
              "ရှေ့ဆက်နှင့် နောက်ပြန် ဓာတ်ပြုနှုန်းများ ညီမျှကာ Concentration များ ကိန်းသေ ဆက်လက် ရှိနေသော အခြေအနေ",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w14-dm-3",
          termEn: "Le Chatelier's principle",
          termMy: "Le Chatelier's Principle",
          matchEn:
              "If an equilibrium is disturbed, it shifts to partially oppose the change",
          matchMy:
              "Equilibrium တစ်ခု နှောင့်ယှက်ခံရပါက ပြောင်းလဲမှုကို တစ်စိတ်တစ်ပိုင်း ဆန့်ကျင်ရန် ရွှေ့ပြောင်းသည်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w14-dm-4",
          termEn: "Haber process",
          termMy: "Haber Process",
          matchEn:
              "The industrial equilibrium process combining nitrogen and hydrogen to make ammonia",
          matchMy:
              "အမိုးနီးယား ရေတည်ရန် နိုက်ထရိုဂျင်နှင့် ဟိုက်ဒရိုဂျင် ပေါင်းစပ်သော စက်မှု Equilibrium လုပ်ငန်းစဉ်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w14-dm-5",
          termEn: "Equilibrium position",
          termMy: "Equilibrium Position",
          matchEn:
              "The relative amounts of reactants and products present at equilibrium",
          matchMy:
              "Equilibrium တွင် ရှိနေသော Reactant များနှင့် Product များ၏ နှိုင်းရ ပမာဏများ",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w14-d3",
      dayNumber: 3,
      titleEn: "Sort: Shifts Forward or Reverse?",
      titleMy: "စီစစ်ကြမည် - ရှေ့ဆက် ရွှေ့သလား၊ နောက်ပြန် ရွှေ့သလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Shifts Forward", "Shifts Reverse"],
        bucketsMy: ["ရှေ့ဆက် ရွှေ့သည်", "နောက်ပြန် ရွှေ့သည်"],
        items: [
          SortingItem(
            id: "igcsechem-w14-sort-1",
            labelEn:
                "For an exothermic forward reaction, decreasing the temperature",
            labelMy: "Exothermic ရှေ့ဆက် ဓာတ်ပြုမှုအတွက် အပူချိန် လျော့ချခြင်း",
            correctBucketEn: "Shifts Forward",
            correctBucketMy: "ရှေ့ဆက် ရွှေ့သည်",
          ),
          SortingItem(
            id: "igcsechem-w14-sort-2",
            labelEn:
                "For an exothermic forward reaction, increasing the temperature",
            labelMy:
                "Exothermic ရှေ့ဆက် ဓာတ်ပြုမှုအတွက် အပူချိန် တိုးမြှင့်ခြင်း",
            correctBucketEn: "Shifts Reverse",
            correctBucketMy: "နောက်ပြန် ရွှေ့သည်",
          ),
          SortingItem(
            id: "igcsechem-w14-sort-3",
            labelEn:
                "Increasing pressure, favouring the side with fewer gas moles (forward side has fewer)",
            labelMy:
                "ဓာတ်ငွေ့ Mole ပိုနည်းသော ဘက် (ရှေ့ဆက်ဘက်တွင် ပိုနည်း) ကို ဦးစားပေးသော ဖိအား တိုးမြှင့်ခြင်း",
            correctBucketEn: "Shifts Forward",
            correctBucketMy: "ရှေ့ဆက် ရွှေ့သည်",
          ),
          SortingItem(
            id: "igcsechem-w14-sort-4",
            labelEn:
                "Removing product continuously, encouraging more forward reaction",
            labelMy:
                "Product ကို ဆက်တိုက် ဖယ်ရှားခြင်း၊ ရှေ့ဆက် ဓာတ်ပြုမှု ပို၍ တိုးတက်စေခြင်း",
            correctBucketEn: "Shifts Forward",
            correctBucketMy: "ရှေ့ဆက် ရွှေ့သည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w14-d4",
      dayNumber: 4,
      titleEn: "Reading: Engineer Ko Htet Optimises the Haber Process",
      titleMy:
          "စာဖတ်ခြင်း - အင်ဂျင်နီယာ ကိုထက်က Haber Process ကို ပိုမိုကောင်းမွန်အောင် ပြုလုပ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Engineer Ko Htet Optimises the Haber Process",
        titleMy:
            "အင်ဂျင်နီယာ ကိုထက်က Haber Process ကို ပိုမိုကောင်းမွန်အောင် ပြုလုပ်ခြင်း",
        passageEn:
            "Ko Htet, now a senior process engineer at the fertiliser plant where he once taught a new graduate about balancing the ammonia equation, was training the same graduate a year later on the plant's operating conditions -- and why they were chosen despite seeming to conflict with each other.\n\nHe explained that the Haber process, N2 + 3H2 <=> 2NH3, is exothermic in the forward direction. According to Le Chatelier's principle, lower temperatures should favour a higher equilibrium yield of ammonia, since the system would shift forward to release more heat and partially counteract any decrease. Yet the plant deliberately ran the reactor at around 450°C -- a fairly high temperature that Le Chatelier's principle alone suggests should reduce yield.\n\nThe trainee, puzzled, asked why the plant would sacrifice equilibrium yield for higher temperature. Ko Htet explained that this was a deliberate compromise: at low temperatures, the reaction rate becomes far too slow for the process to be economically practical, even though the equilibrium yield would technically be higher. At around 450°C, the reaction proceeds fast enough to be commercially useful, even though the equilibrium yield at that temperature is lower than it could theoretically be at lower temperatures.\n\nHe then explained the second condition: the plant used a pressure of about 200 atmospheres, much higher than atmospheric pressure. Since the forward reaction converts 4 moles of gas (1 N2 + 3 H2) into 2 moles of gas (2 NH3), Le Chatelier's principle predicts that higher pressure shifts equilibrium toward the side with fewer gas moles -- the ammonia side -- increasing yield. High pressure also has the added benefit of increasing reaction rate by squeezing particles closer together, increasing collision frequency. Ko Htet summarised the whole system as a real-world balancing act: extremely low temperatures and extremely high pressures would maximise the theoretical equilibrium yield, but engineers must always balance equilibrium position against reaction rate and the cost of building equipment that withstands extreme pressure, which is exactly why 450°C and 200 atmospheres -- not the theoretical optimum -- were chosen as the plant's real operating conditions.",
        passageMy:
            "တစ်နှစ်ခန့်က ဘွဲ့ရသစ်တစ်ဦးအား အမိုးနီးယား ညီမျှခြင်း ချိန်ညှိခြင်းအကြောင်း သင်ကြားပေးခဲ့ဖူးသော မြေဩဇာစက်ရုံရှိ ကိုထက်သည် ယခု အကြီးတန်း လုပ်ငန်းစဉ် အင်ဂျင်နီယာတစ်ဦး ဖြစ်လာပြီး တစ်နှစ်ကြာ ထိုကျောင်းသားတစ်ဦးတည်းကိုပင် စက်ရုံ၏ လုပ်ဆောင်ချက် အခြေအနေများအကြောင်းနှင့် ၎င်းတို့ကို အချင်းချင်း ဆန့်ကျင်နေဟန်ရှိသော်လည်း ရွေးချယ်ခဲ့ရသည့် အကြောင်းရင်းအကြောင်း လေ့ကျင့်ပေးနေခဲ့သည်။\n\nHaber Process, N2 + 3H2 <=> 2NH3 သည် ရှေ့ဆက် ဦးတည်ချက်တွင် Exothermic ဖြစ်ကြောင်း သူ ရှင်းပြခဲ့သည်။ Le Chatelier's Principle အရ အပူချိန် ပိုနိမ့်ခြင်းက အမိုးနီးယား Equilibrium ရလဒ် ပို၍ မြင့်စေရမည်ဖြစ်သည်၊ အကြောင်းမှာ စနစ်သည် အပူ ပို၍ လွှတ်ထုတ်ရန် ရှေ့ဆက်ဘက်သို့ ရွှေ့ပြောင်းကာ လျော့ကျမှု မည်သည်ကိုမဆို တစ်စိတ်တစ်ပိုင်း ဆန့်ကျင်မည် ဖြစ်သည်။ သို့ရာတွင် စက်ရုံသည် Reactor ကို 450°C ခန့်တွင် တမင်တကာ လုပ်ဆောင်ခဲ့သည် -- Le Chatelier's Principle တစ်ခုတည်းအရ ရလဒ်ကို လျော့ချရမည့် အလွန် မြင့်မားသော အပူချိန် ဖြစ်သည်။\n\nရှုပ်ထွေးနေသော ကျောင်းသားသည် စက်ရုံသည် Equilibrium ရလဒ်ကို အပူချိန် ပိုမြင့်ခြင်းအတွက် အဘယ်ကြောင့် စွန့်လွှတ်ရသနည်းဟု မေးမြန်းခဲ့သည်။ ၎င်းသည် တမင်တကာ ညှိနှိုင်းမှုတစ်ခု ဖြစ်ကြောင်း ကိုထက် ရှင်းပြခဲ့သည်- အပူချိန် နိမ့်သည့်အခါ Equilibrium ရလဒ် နည်းပညာအရ ပိုမြင့်မည်ဖြစ်သော်လည်း ဓာတ်ပြုနှုန်းသည် စီးပွားရေးအရ လက်တွေ့ကျသည့် လုပ်ငန်းစဉ်အတွက် လွန်စွာ နှေးကွေးလွန်းသွားလိမ့်မည်။ 450°C ခန့်တွင် ဓာတ်ပြုမှုသည် ကုန်သွယ်ရေးအရ အသုံးဝင်လောက်အောင် လုံလောက်စွာ မြန်ဆန်စွာ ဆက်လက် ဖြစ်ပေါ်သည်၊ ထို အပူချိန်ရှိ Equilibrium ရလဒ်သည် အပူချိန် ပိုနိမ့်ချိန်တွင် သီအိုရီအရ ရနိုင်သည်ထက် နိမ့်နေသော်လည်း ဖြစ်သည်။\n\nထို့နောက် သူသည် ဒုတိယ အခြေအနေကို ရှင်းပြခဲ့သည်- စက်ရုံသည် အလေ့ဖိအားထက် များစွာ ပိုမြင့်သော ခန့်မှန်းခြေ Atmosphere ၂၀၀ ဖိအားကို အသုံးပြုခဲ့သည်။ ရှေ့ဆက် ဓာတ်ပြုမှုသည် ဓာတ်ငွေ့ Mole ၄ ခု (1 N2 + 3 H2) ကို ဓာတ်ငွေ့ Mole ၂ ခု (2 NH3) အဖြစ် ပြောင်းလဲစေသောကြောင့် ဖိအား ပိုမြင့်ခြင်းက Equilibrium ကို ဓာတ်ငွေ့ Mole ပိုနည်းသော ဘက် -- အမိုးနီးယားဘက် -- သို့ ရွှေ့ပြောင်းကာ ရလဒ်ကို တိုးမြှင့်ကြောင်း Le Chatelier's Principle က ခန့်မှန်းသည်။ ဖိအားမြင့်ခြင်းက အမှုန်များကို ပို၍ ကပ်ကပ်စေကာ ထိတွေ့မှု ကြိမ်နှုန်း တိုးမြှင့်ပေးသဖြင့် ဓာတ်ပြုနှုန်းကို တိုးမြှင့်ပေးသည့် အကျိုးကျေးဇူးလည်း ရှိသည်။ ကိုထက်သည် စနစ်တစ်ခုလုံးကို လက်တွေ့ ကမ္ဘာ ညှိနှိုင်းမှုတစ်ခုအဖြစ် အကျဉ်းချုပ် ဖော်ပြခဲ့သည်- အလွန် နိမ့်သော အပူချိန်နှင့် အလွန် မြင့်သော ဖိအားများသည် သီအိုရီအရ Equilibrium ရလဒ်ကို အများဆုံး ဖြစ်စေမည်ဖြစ်သော်လည်း အင်ဂျင်နီယာများသည် Equilibrium Position ကို ဓာတ်ပြုနှုန်းနှင့် အလွန်အကျွံ ဖိအားကို ခံနိုင်ရည်ရှိသော ကိရိယာ တည်ဆောက်စရိတ်နှင့် အမြဲတမ်း ချိန်ညှိရမည်ဖြစ်ကြောင်း ဖြစ်သည်၊ ဤသည်ပင် သီအိုရီအရ အကောင်းဆုံး အခြေအနေ မဟုတ်ဘဲ 450°C နှင့် Atmosphere ၂၀၀ ကို စက်ရုံ၏ အမှန်တကယ် လုပ်ဆောင်ချက် အခြေအနေများအဖြစ် ရွေးချယ်ခဲ့ရသည့် အကြောင်းရင်း အတိအကျ ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why does Le Chatelier's principle suggest lower temperature should favour higher ammonia yield?",
            questionMy:
                "အပူချိန် ပိုနိမ့်ခြင်းက အမိုးနီးယား ရလဒ် ပိုမြင့်ရန် ဦးစားပေးရမည်ဟု Le Chatelier's Principle အဘယ်ကြောင့် အကြံပြုကြောင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The forward reaction is exothermic, so lowering temperature shifts equilibrium forward",
              "Lower temperature always destroys the reactants",
              "Temperature has no relationship to this equilibrium",
              "Ammonia only forms at freezing temperatures",
            ],
            optionsMy: [
              "ရှေ့ဆက် ဓာတ်ပြုမှုသည် Exothermic ဖြစ်သောကြောင့် အပူချိန် လျော့ချခြင်းက Equilibrium ကို ရှေ့ဆက်ဘက်သို့ ရွှေ့ပြောင်းသည်",
              "အပူချိန် ပိုနိမ့်ခြင်းက Reactant များကို အမြဲတမ်း ဖျက်ဆီးသည်",
              "အပူချိန်သည် ဤ Equilibrium နှင့် မည်သည့် ဆက်စပ်မှုမျှ မရှိပါ",
              "အမိုးနီးယားသည် ခဲထားသော အပူချိန်များတွင်သာ ဖွဲ့စည်းသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the exothermic forward reaction and Le Chatelier's implication.",
            ],
            hintsMy: [
              "Exothermic ရှေ့ဆက် ဓာတ်ပြုမှုနှင့် Le Chatelier's Implication ကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why does the plant run at 450°C despite this reducing equilibrium yield?",
            questionMy:
                "Equilibrium ရလဒ်ကို လျော့ချသော်လည်း စက်ရုံသည် 450°C တွင် အဘယ်ကြောင့် လုပ်ဆောင်ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Low temperature makes the reaction rate too slow to be economically practical",
              "450°C is actually the coldest temperature the equipment allows",
              "Higher temperature always increases yield too, contradicting Le Chatelier's principle",
              "There is no real reason, it is simply tradition",
            ],
            optionsMy: [
              "အပူချိန် နိမ့်ခြင်းက ဓာတ်ပြုနှုန်းကို စီးပွားရေးအရ လက်တွေ့ကျစေရန် လွန်စွာ နှေးကွေးလွန်းစေသောကြောင့်",
              "450°C သည် ကိရိယာက ခွင့်ပြုသော အအေးဆုံး အပူချိန် အမှန်တကယ် ဖြစ်သောကြောင့်",
              "အပူချိန် ပိုမြင့်ခြင်းက Le Chatelier's Principle နှင့် ဆန့်ကျင်ကာ ရလဒ်ကိုပါ တိုးမြှင့်ပေးသောကြောင့်",
              "အမှန်တကယ် အကြောင်းရင်း မရှိပါ၊ ထုံးတမ်းတစ်ခုသာ ဖြစ်သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the trade-off between rate and yield.",
            ],
            hintsMy: [
              "နှုန်းနှင့် ရလဒ်ကြား ညှိနှိုင်းမှုကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, why does higher pressure favour ammonia formation?",
            questionMy:
                "ဖိအား ပိုမြင့်ခြင်းက အမိုးနီးယား ဖွဲ့စည်းမှုကို ဦးစားပေးသည့် အကြောင်းရင်းကို စာပိုဒ် ၄ အရ ဖော်ပြပါ။",
            optionsEn: [
              "The forward reaction reduces gas moles from 4 to 2, and higher pressure shifts equilibrium toward fewer gas moles",
              "Pressure has no effect on this reaction at all",
              "Ammonia is a solid, unaffected by pressure",
              "Higher pressure always favours the reactant side in every reaction",
            ],
            optionsMy: [
              "ရှေ့ဆက် ဓာတ်ပြုမှုက ဓာတ်ငွေ့ Mole ကို ၄ မှ ၂ သို့ လျော့ချပေးပြီး ဖိအား ပိုမြင့်ခြင်းက Equilibrium ကို ဓာတ်ငွေ့ Mole ပိုနည်းသော ဘက်သို့ ရွှေ့ပြောင်းသောကြောင့်",
              "ဤဓာတ်ပြုမှုအပေါ် ဖိအားသည် မည်သည့် သက်ရောက်မှုမျှ မရှိသောကြောင့်",
              "အမိုးနီးယားသည် အစိုင်အခဲဖြစ်ပြီး ဖိအားက သက်ရောက်မှု မရှိသောကြောင့်",
              "ဖိအား ပိုမြင့်ခြင်းက ဓာတ်ပြုမှု တိုင်းတွင် Reactant ဘက်ကို အမြဲတမ်း ဦးစားပေးသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence about the mole change from 4 to 2 and the pressure implication.",
            ],
            hintsMy: [
              "Mole ၄ မှ ၂ သို့ ပြောင်းလဲမှုနှင့် ဖိအား Implication အကြောင်း စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final paragraph, why aren't the theoretically optimal conditions (very low temperature, very high pressure) actually used?",
            questionMy:
                "သီအိုရီအရ အကောင်းဆုံး အခြေအနေများ (အလွန် နိမ့်သော အပူချိန်၊ အလွန် မြင့်သော ဖိအား) ကို အမှန်တကယ် အသုံးမပြုကြောင်း အကြောင်းရင်းကို နောက်ဆုံးစာပိုဒ်အရ ဖော်ပြပါ။",
            optionsEn: [
              "Engineers must balance equilibrium yield against reaction rate and equipment cost",
              "The theoretical conditions are actually illegal",
              "No such conditions exist in theory either",
              "Ammonia becomes toxic under those conditions",
            ],
            optionsMy: [
              "အင်ဂျင်နီယာများသည် Equilibrium ရလဒ်ကို ဓာတ်ပြုနှုန်းနှင့် ကိရိယာ ကုန်ကျစရိတ်ဖြင့် ချိန်ညှိရမည်ဖြစ်သောကြောင့်",
              "သီအိုရီအရ အခြေအနေများသည် အမှန်တကယ် တရားမဝင်သောကြောင့်",
              "သီအိုရီအရပင် ထိုကဲ့သို့ အခြေအနေများ မရှိသောကြောင့်",
              "အမိုးနီးယားသည် ထိုအခြေအနေများအောက်တွင် အဆိပ်ဖြစ်လာသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the last sentence summarising the real-world balancing act.",
            ],
            hintsMy: [
              "လက်တွေ့ ကမ္ဘာ ညှိနှိုင်းမှုကို အကျဉ်းချုပ် ဖော်ပြထားသော နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w14-d5",
      dayNumber: 5,
      titleEn: "Week 14 Recap: Reversible Reactions and Equilibrium",
      titleMy: "တစ်ဆယ့်လေးပတ် ပြန်လည်သုံးသပ်ခြင်း - Equilibrium",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Dynamic equilibrium means forward and reverse rates are...",
          questionMy:
              "Dynamic Equilibrium ဆိုသည်မှာ ရှေ့ဆက်နှင့် နောက်ပြန် နှုန်းများသည်...",
          optionsEn: [
            "Equal",
            "Both zero",
            "Always increasing",
            "Unrelated to each other",
          ],
          optionsMy: [
            "ညီမျှသည်",
            "နှစ်ခုလုံး သုည ဖြစ်သည်",
            "အမြဲတမ်း တိုးမြင့်နေသည်",
            "အချင်းချင်း မသက်ဆိုင်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Le Chatelier's principle predicts equilibrium will...",
          questionMy:
              "Le Chatelier's Principle က Equilibrium ...ကြောင်း ခန့်မှန်းသည်",
          optionsEn: [
            "Shift to partially oppose a disturbance",
            "Never change under any condition",
            "Always favour the reactants",
            "Stop the reaction completely",
          ],
          optionsMy: [
            "နှောင့်ယှက်မှုကို တစ်စိတ်တစ်ပိုင်း ဆန့်ကျင်ရန် ရွှေ့ပြောင်းမည်",
            "မည်သည့် အခြေအနေတွင်မျှ ဘယ်တော့မှ မပြောင်းလဲမည်",
            "Reactant များကို အမြဲတမ်း ဦးစားပေးမည်",
            "ဓာတ်ပြုမှုကို လုံးဝ ရပ်တန့်စေမည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the Haber process, the plant uses ~450°C and ~200 atm as a compromise between...",
          questionMy:
              "Haber Process တွင် စက်ရုံသည် ~450°C နှင့် ~200 atm ကို ...ကြား ညှိနှိုင်းမှုတစ်ခုအဖြစ် အသုံးပြုသည်",
          optionsEn: [
            "Equilibrium yield, reaction rate, and equipment cost",
            "Colour and smell only",
            "Price and weight only",
            "Day and night only",
          ],
          optionsMy: [
            "Equilibrium ရလဒ်၊ ဓာတ်ပြုနှုန်းနှင့် ကိရိယာ ကုန်ကျစရိတ်",
            "အရောင်နှင့် အနံ့သာ",
            "ဈေးနှုန်းနှင့် အလေးချိန်သာ",
            "နေ့နှင့် ညသာ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 15: "Redox Reactions"
// =====================================================================

const CourseWeekDef _igcseChemWeek15 = CourseWeekDef(
  id: "course-igcse-chem-w15",
  weekNumber: 15,
  titleEn: "Redox Reactions",
  titleMy: "Redox ဓာတ်ပြုမှုများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w15-d1",
      dayNumber: 1,
      titleEn: "Oxidation, Reduction, and Oxidation Numbers",
      titleMy: "Oxidation, Reduction နှင့် Oxidation Number များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In terms of electron transfer, what is oxidation?",
          questionMy:
              "Electron လွှဲပြောင်းမှု အလိုက် Oxidation ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Loss of electrons",
            "Gain of electrons",
            "Loss of protons",
            "Gain of neutrons",
          ],
          optionsMy: [
            "Electron ဆုံးရှုံးခြင်း",
            "Electron ရရှိခြင်း",
            "Proton ဆုံးရှုံးခြင်း",
            "Neutron ရရှိခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Remember the mnemonic OIL RIG: Oxidation Is Loss (of electrons), Reduction Is Gain (of electrons).",
          ],
          hintsMy: [
            "OIL RIG ဟူသော ဖော်မြူလာကို မှတ်ထားပါ - Oxidation Is Loss (Electron), Reduction Is Gain (Electron)။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the reaction Zn + CuSO4 -> ZnSO4 + Cu, which species is oxidised?",
          questionMy:
              "Zn + CuSO4 -> ZnSO4 + Cu ဓာတ်ပြုမှုတွင် မည်သည့် Species က Oxidise ဖြစ်သနည်း။",
          optionsEn: [
            "Zn (zinc metal, losing electrons to become Zn2+)",
            "Cu2+ (copper ions)",
            "SO4^2- (sulfate ions)",
            "Cu (copper metal)",
          ],
          optionsMy: [
            "Zn (ဇင့် သတ္တု၊ Electron ဆုံးရှုံးကာ Zn2+ ဖြစ်လာသည်)",
            "Cu2+ (ကြေးဝါ Ion များ)",
            "SO4^2- (ဆာလဖိတ် Ion များ)",
            "Cu (ကြေးဝါ သတ္တု)",
          ],
          correctIndex: 0,
          hintsEn: [
            "Zinc metal starts as Zn (0 charge) and ends as Zn2+ in solution, meaning it lost 2 electrons -- oxidation.",
            "Meanwhile Cu2+ gains electrons to become Cu metal -- reduction.",
          ],
          hintsMy: [
            "ဇင့် သတ္တုသည် Zn (Charge 0) အဖြစ် စတင်ပြီး ပျော်ရည်တွင် Zn2+ အဖြစ် အဆုံးသတ်သည်၊ Electron ၂ ခု ဆုံးရှုံးကြောင်း ဆိုလိုသည် -- Oxidation။",
            "ထိုအတွင်း Cu2+ သည် Electron ရရှိကာ ကြေးဝါ သတ္တု ဖြစ်လာသည် -- Reduction။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is a reducing agent?",
          questionMy: "Reducing Agent ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A substance that gives electrons to another substance, causing that substance to be reduced (and itself becoming oxidised)",
            "A substance that always turns into a gas",
            "A substance that gains electrons and stops other reactions",
            "A substance with no effect on any reaction",
          ],
          optionsMy: [
            "အခြားပစ္စည်းတစ်ခုကို Electron ပေးအပ်ကာ ထိုပစ္စည်းကို Reduce ဖြစ်စေသော (ကိုယ်တိုင် Oxidise ဖြစ်လာသော) ပစ္စည်း",
            "အမြဲတမ်း ဓာတ်ငွေ့ အဖြစ် ပြောင်းလဲသွားသော ပစ္စည်း",
            "Electron ရရှိကာ အခြားဓာတ်ပြုမှုများကို ရပ်တန့်စေသော ပစ္စည်း",
            "မည်သည့် ဓာတ်ပြုမှုအပေါ်မျှ သက်ရောက်မှု မရှိသော ပစ္စည်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "A reducing agent 'reduces' the other substance by donating electrons to it -- and in doing so, it itself gets oxidised.",
          ],
          hintsMy: [
            "Reducing Agent သည် Electron များ လှူဒါန်းခြင်းဖြင့် အခြားပစ္စည်းကို 'Reduce' ဖြစ်စေသည် -- ထိုသို့ လုပ်ဆောင်ရာတွင် ကိုယ်တိုင်ကလည်း Oxidise ဖြစ်လာသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w15-d2",
      dayNumber: 2,
      titleEn: "Match: Redox Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - Redox ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w15-dm-1",
          termEn: "Oxidation",
          termMy: "Oxidation",
          matchEn:
              "Loss of electrons (OIL) -- or gain of oxygen, or loss of hydrogen",
          matchMy:
              "Electron ဆုံးရှုံးခြင်း (OIL) -- သို့မဟုတ် အောက်ဆီဂျင် ရရှိခြင်း၊ သို့မဟုတ် ဟိုက်ဒရိုဂျင် ဆုံးရှုံးခြင်း",
          colorValue: 0xFFE91E63,
        ),
        DragMatchPair(
          id: "igcsechem-w15-dm-2",
          termEn: "Reduction",
          termMy: "Reduction",
          matchEn:
              "Gain of electrons (RIG) -- or loss of oxygen, or gain of hydrogen",
          matchMy:
              "Electron ရရှိခြင်း (RIG) -- သို့မဟုတ် အောက်ဆီဂျင် ဆုံးရှုံးခြင်း၊ သို့မဟုတ် ဟိုက်ဒရိုဂျင် ရရှိခြင်း",
          colorValue: 0xFF2196F3,
        ),
        DragMatchPair(
          id: "igcsechem-w15-dm-3",
          termEn: "Oxidising agent",
          termMy: "Oxidising Agent",
          matchEn:
              "A substance that takes electrons from another substance, getting itself reduced",
          matchMy:
              "အခြားပစ္စည်းတစ်ခုမှ Electron ယူကာ ကိုယ်တိုင် Reduce ဖြစ်သွားသော ပစ္စည်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w15-dm-4",
          termEn: "Reducing agent",
          termMy: "Reducing Agent",
          matchEn:
              "A substance that gives electrons to another substance, getting itself oxidised",
          matchMy:
              "အခြားပစ္စည်းတစ်ခုကို Electron ပေးအပ်ကာ ကိုယ်တိုင် Oxidise ဖြစ်သွားသော ပစ္စည်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w15-dm-5",
          termEn: "Oxidation number",
          termMy: "Oxidation Number",
          matchEn:
              "A value representing the apparent charge on an atom, tracking electron transfer in a reaction",
          matchMy:
              "ဓာတ်ပြုမှုတစ်ခုတွင် Electron လွှဲပြောင်းမှုကို ခြေရာခံသော အက်တမ်တစ်ခု၏ ထင်ရှားသော တာဝန်ခံအားကို ကိုယ်စားပြုသော တန်ဖိုး",
          colorValue: 0xFF9C27B0,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w15-d3",
      dayNumber: 3,
      titleEn: "Sort: Oxidised or Reduced?",
      titleMy: "စီစစ်ကြမည် - Oxidise ဖြစ်သလား၊ Reduce ဖြစ်သလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Oxidised", "Reduced"],
        bucketsMy: ["Oxidise ဖြစ်သည်", "Reduce ဖြစ်သည်"],
        items: [
          SortingItem(
            id: "igcsechem-w15-sort-1",
            labelEn: "Zn -> Zn2+ + 2e- (zinc metal losing electrons)",
            labelMy: "Zn -> Zn2+ + 2e- (Electron ဆုံးရှုံးသော ဇင့် သတ္တု)",
            correctBucketEn: "Oxidised",
            correctBucketMy: "Oxidise ဖြစ်သည်",
          ),
          SortingItem(
            id: "igcsechem-w15-sort-2",
            labelEn: "Cu2+ + 2e- -> Cu (copper ions gaining electrons)",
            labelMy: "Cu2+ + 2e- -> Cu (Electron ရရှိသော ကြေးဝါ Ion များ)",
            correctBucketEn: "Reduced",
            correctBucketMy: "Reduce ဖြစ်သည်",
          ),
          SortingItem(
            id: "igcsechem-w15-sort-3",
            labelEn: "Iron rusting, reacting with oxygen to form iron oxide",
            labelMy:
                "သံသည် အောက်ဆီဂျင်နှင့် ဓာတ်ပြုကာ သံအောက်ဆိုဒ် ဖွဲ့စည်းသော ချေးတက်ခြင်း",
            correctBucketEn: "Oxidised",
            correctBucketMy: "Oxidise ဖြစ်သည်",
          ),
          SortingItem(
            id: "igcsechem-w15-sort-4",
            labelEn:
                "Iron oxide losing oxygen when reacting with carbon in a blast furnace",
            labelMy:
                "Blast Furnace တွင် ကာဗွန်နှင့် ဓာတ်ပြုစဉ် အောက်ဆီဂျင် ဆုံးရှုံးသော သံအောက်ဆိုဒ်",
            correctBucketEn: "Reduced",
            correctBucketMy: "Reduce ဖြစ်သည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w15-d4",
      dayNumber: 4,
      titleEn: "Reading: Metallurgist Daw Khin Explains the Blast Furnace",
      titleMy:
          "စာဖတ်ခြင်း - သတ္တုဗေဒပညာရှင် ဒေါ်ခင်၏ Blast Furnace ရှင်းလင်းချက်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Metallurgist Daw Khin Explains the Blast Furnace",
        titleMy: "သတ္တုဗေဒပညာရှင် ဒေါ်ခင်၏ Blast Furnace ရှင်းလင်းချက်",
        passageEn:
            "Daw Khin, a metallurgical engineer, was leading a factory tour explaining how iron ore (mostly iron oxide, Fe2O3) is converted into usable iron metal inside a blast furnace. A visiting student asked her to identify exactly what redox reaction was taking place.\n\nDaw Khin explained that inside the furnace, carbon (from coke) burns in a limited supply of oxygen to form carbon monoxide (CO), which then reacts with the iron oxide: Fe2O3 + 3CO -> 2Fe + 3CO2. She asked the student to identify the oxidation states involved: in Fe2O3, iron has an oxidation state of +3; in the pure iron metal produced, iron has an oxidation state of 0. Since iron's oxidation state decreased from +3 to 0, iron was reduced -- it gained electrons, in effect, by losing its bonded oxygen.\n\nMeanwhile, she pointed to carbon: in carbon monoxide (CO), carbon has an oxidation state of +2; in carbon dioxide (CO2), carbon has an oxidation state of +4. Since carbon's oxidation state increased from +2 to +4, carbon was oxidised -- it lost electrons, in effect, by gaining more oxygen.\n\nThe student then asked which substance was the reducing agent. Daw Khin explained that carbon monoxide was the reducing agent, since it was the substance that caused the iron oxide to be reduced by donating (in effect) electrons to it, while carbon monoxide itself was oxidised to carbon dioxide in the process. She emphasised that in this reaction, exactly as in every redox reaction, oxidation and reduction always happen simultaneously and in matched amounts -- iron could not be reduced without carbon simultaneously being oxidised, since the electrons lost by carbon are precisely the electrons gained by iron.",
        passageMy:
            "သတ္တုဗေဒ အင်ဂျင်နီယာ ဒေါ်ခင်သည် သံသတ္တုကြမ်း (အများစုမှာ သံအောက်ဆိုဒ် Fe2O3) ကို Blast Furnace အတွင်း သုံးစွဲနိုင်သော သံသတ္တုအဖြစ် မည်သို့ ပြောင်းလဲကြောင်း ရှင်းပြသည့် စက်ရုံ ခရီးစဉ်တစ်ခုကို ဦးဆောင်နေခဲ့သည်။ လာရောက်လည်ပတ်သော ကျောင်းသားတစ်ဦးက မည်သည့် Redox ဓာတ်ပြုမှု ဖြစ်ပွားနေကြောင်း အတိအကျ ဖော်ထုတ်ပေးရန် သူမအား တောင်းဆိုခဲ့သည်။\n\nFurnace အတွင်း ကာဗွန် (Coke မှ) သည် ကန့်သတ်ထားသော အောက်ဆီဂျင် ပမာဏတွင် လောင်ကျွမ်းကာ ကာဗွန်မိုနောက်ဆိုဒ် (CO) ဖွဲ့စည်းပြီး ထို့နောက် သံအောက်ဆိုဒ်နှင့် ဓာတ်ပြုကြောင်း ဒေါ်ခင် ရှင်းပြခဲ့သည်- Fe2O3 + 3CO -> 2Fe + 3CO2။ ပါဝင်ပတ်သက်နေသော Oxidation State များကို ဖော်ထုတ်ရန် ကျောင်းသားအား သူမ တောင်းဆိုခဲ့သည်- Fe2O3 တွင် သံသည် Oxidation State +3 ရှိပြီး ထုတ်ပေးသော သန့်ရှင်းသော သံသတ္တုတွင် သံသည် Oxidation State 0 ရှိသည်။ သံ၏ Oxidation State သည် +3 မှ 0 သို့ ကျဆင်းသောကြောင့် သံသည် Reduce ဖြစ်ခဲ့သည် -- ၎င်း၏ ချည်နှောင်ထားသော အောက်ဆီဂျင်ကို ဆုံးရှုံးခြင်းဖြင့် Electron ရရှိသကဲ့သို့ ဖြစ်သည်။\n\nထိုအတွင်း သူမသည် ကာဗွန်ကို ညွှန်ပြခဲ့သည်- ကာဗွန်မိုနောက်ဆိုဒ် (CO) တွင် ကာဗွန်သည် Oxidation State +2 ရှိပြီး ကာဗွန်ဒိုင်အောက်ဆိုဒ် (CO2) တွင် ကာဗွန်သည် Oxidation State +4 ရှိသည်။ ကာဗွန်၏ Oxidation State သည် +2 မှ +4 သို့ တိုးလာသောကြောင့် ကာဗွန်သည် Oxidise ဖြစ်ခဲ့သည် -- အောက်ဆီဂျင် ပို၍ ရရှိခြင်းဖြင့် Electron ဆုံးရှုံးသကဲ့သို့ ဖြစ်သည်။\n\nထို့နောက် ကျောင်းသားသည် မည်သည့် ပစ္စည်းက Reducing Agent ဖြစ်ကြောင်း မေးမြန်းခဲ့သည်။ ကာဗွန်မိုနောက်ဆိုဒ်သည် သံအောက်ဆိုဒ်ကို Reduce ဖြစ်စေသော ပစ္စည်း ဖြစ်ခဲ့ကြောင်း -- ၎င်းကို Electron များ (တစ်နည်းအားဖြင့်) လှူဒါန်းကာ Reducing Agent ဖြစ်ခဲ့ပြီး ကာဗွန်မိုနောက်ဆိုဒ် ကိုယ်တိုင်ကလည်း ဤဖြစ်စဉ်တွင် ကာဗွန်ဒိုင်အောက်ဆိုဒ်အဖြစ် Oxidise ဖြစ်သွားခဲ့ကြောင်း ဒေါ်ခင် ရှင်းပြခဲ့သည်။ ဤဓာတ်ပြုမှုတွင် Redox ဓာတ်ပြုမှု တိုင်းကဲ့သို့ပင် Oxidation နှင့် Reduction သည် အမြဲတမ်း တစ်ချိန်တည်းနှင့် တူညီသော ပမာဏဖြင့် ဖြစ်ပေါ်ကြောင်း -- ကာဗွန် ဆုံးရှုံးသော Electron များသည် သံ ရရှိသော Electron များနှင့် အတိအကျ တူညီသောကြောင့် ကာဗွန်ကို တစ်ချိန်တည်း Oxidise မဖြစ်ဘဲ သံကို Reduce ၍ မရနိုင်ကြောင်း သူမ အလေးထား ဖော်ပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why was iron considered 'reduced' in this reaction?",
            questionMy:
                "ဤဓာတ်ပြုမှုတွင် သံကို 'Reduce ဖြစ်သည်' ဟု သတ်မှတ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Its oxidation state decreased from +3 to 0",
              "Its oxidation state increased from 0 to +3",
              "It turned into a gas",
              "It gained more oxygen atoms",
            ],
            optionsMy: [
              "၎င်း၏ Oxidation State သည် +3 မှ 0 သို့ ကျဆင်းခဲ့သောကြောင့်",
              "၎င်း၏ Oxidation State သည် 0 မှ +3 သို့ တိုးလာခဲ့သောကြောင့်",
              "ဓာတ်ငွေ့ ဖြစ်သွားခဲ့သောကြောင့်",
              "အောက်ဆီဂျင် အက်တမ် ပို၍ ရရှိခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining iron's oxidation state change.",
            ],
            hintsMy: [
              "သံ၏ Oxidation State ပြောင်းလဲမှုကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why was carbon considered 'oxidised' in this reaction?",
            questionMy:
                "ဤဓာတ်ပြုမှုတွင် ကာဗွန်ကို 'Oxidise ဖြစ်သည်' ဟု သတ်မှတ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Its oxidation state increased from +2 to +4",
              "Its oxidation state decreased from +4 to +2",
              "It disappeared completely",
              "It became a solid",
            ],
            optionsMy: [
              "၎င်း၏ Oxidation State သည် +2 မှ +4 သို့ တိုးလာခဲ့သောကြောင့်",
              "၎င်း၏ Oxidation State သည် +4 မှ +2 သို့ ကျဆင်းခဲ့သောကြောင့်",
              "လုံးဝ ပျောက်ကွယ်သွားခဲ့သောကြောင့်",
              "အစိုင်အခဲ ဖြစ်သွားခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining carbon's oxidation state change.",
            ],
            hintsMy: [
              "ကာဗွန်၏ Oxidation State ပြောင်းလဲမှုကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, why was carbon monoxide the reducing agent?",
            questionMy:
                "ကာဗွန်မိုနောက်ဆိုဒ်ကို Reducing Agent ဟု သတ်မှတ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၄ အရ ဖော်ပြပါ။",
            optionsEn: [
              "It caused the iron oxide to be reduced while itself being oxidised",
              "It caused the iron oxide to be oxidised",
              "It remained completely unchanged throughout",
              "It was the only gas present",
            ],
            optionsMy: [
              "ကိုယ်တိုင် Oxidise ဖြစ်နေစဉ် သံအောက်ဆိုဒ်ကို Reduce ဖြစ်စေခဲ့သောကြောင့်",
              "သံအောက်ဆိုဒ်ကို Oxidise ဖြစ်စေခဲ့သောကြောင့်",
              "တစ်လျှောက်လုံး လုံးဝ မပြောင်းလဲဘဲ ကျန်ရှိနေခဲ့သောကြောင့်",
              "ရှိနေသော ဓာတ်ငွေ့တစ်ခုတည်း ဖြစ်ခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence defining carbon monoxide's role as reducing agent.",
            ],
            hintsMy: [
              "Reducing Agent အဖြစ် ကာဗွန်မိုနောက်ဆိုဒ်၏ အခန်းကဏ္ဍကို အနက်ဖွင့်ဆိုထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final paragraph, can oxidation happen without a matched reduction occurring simultaneously?",
            questionMy:
                "Oxidation သည် တစ်ချိန်တည်း ဖြစ်ပေါ်သော Reduction တစ်ခု မရှိဘဲ ဖြစ်ပေါ်နိုင်ပါသလား၊ နောက်ဆုံးစာပိုဒ်အရ ဖော်ပြပါ။",
            optionsEn: [
              "No -- oxidation and reduction always happen simultaneously and in matched amounts",
              "Yes -- they are completely independent processes",
              "Yes -- oxidation can happen alone in any reaction",
              "The passage does not address this",
            ],
            optionsMy: [
              "မဖြစ်နိုင်ပါ -- Oxidation နှင့် Reduction သည် အမြဲတမ်း တစ်ချိန်တည်းနှင့် တူညီသော ပမာဏဖြင့် ဖြစ်ပေါ်သည်",
              "ဖြစ်နိုင်သည် -- ၎င်းတို့သည် လုံးဝ သီးခြား ဖြစ်စဉ်များ ဖြစ်ကြသည်",
              "ဖြစ်နိုင်သည် -- Oxidation သည် ဓာတ်ပြုမှု မည်သည့်ဖြစ်စေတွင် တစ်ခုတည်း ဖြစ်ပေါ်နိုင်သည်",
              "စာပိုဒ်က ၎င်းကို မဖော်ပြထားပါ",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the final sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w15-d5",
      dayNumber: 5,
      titleEn: "Week 15 Recap: Redox Reactions",
      titleMy: "တစ်ဆယ့်ငါးပတ် ပြန်လည်သုံးသပ်ခြင်း - Redox ဓာတ်ပြုမှုများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "OIL RIG stands for...",
          questionMy: "OIL RIG ဆိုသည်မှာ...",
          optionsEn: [
            "Oxidation Is Loss, Reduction Is Gain (of electrons)",
            "Oxygen Is Lost, Reduction Is Gas",
            "Only a random acronym with no meaning",
            "Oxidation Is Growth, Reduction Is Gain",
          ],
          optionsMy: [
            "Oxidation Is Loss, Reduction Is Gain (Electron)",
            "Oxygen Is Lost, Reduction Is Gas",
            "အဓိပ္ပာယ် မရှိသော ကျပန်း အက္ခရာစုပ်",
            "Oxidation Is Growth, Reduction Is Gain",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A reducing agent itself becomes...",
          questionMy: "Reducing Agent ကိုယ်တိုင်သည်...",
          optionsEn: ["Oxidised", "Reduced", "Unchanged", "A gas always"],
          optionsMy: [
            "Oxidise ဖြစ်သည်",
            "Reduce ဖြစ်သည်",
            "မပြောင်းလဲပါ",
            "အမြဲတမ်း ဓာတ်ငွေ့ ဖြစ်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "In a redox reaction, oxidation and reduction...",
          questionMy:
              "Redox ဓာတ်ပြုမှုတစ်ခုတွင် Oxidation နှင့် Reduction သည်...",
          optionsEn: [
            "Always happen simultaneously in matched amounts",
            "Never happen in the same reaction",
            "Only happen in electrolysis",
            "Are completely unrelated",
          ],
          optionsMy: [
            "အမြဲတမ်း တစ်ချိန်တည်း တူညီသော ပမာဏဖြင့် ဖြစ်ပေါ်သည်",
            "ဓာတ်ပြုမှု တစ်ခုတည်းတွင် ဘယ်တော့မှ မဖြစ်ပေါ်ပါ",
            "Electrolysis တွင်သာ ဖြစ်ပေါ်သည်",
            "လုံးဝ မသက်ဆိုင်ကြပါ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 16 (Capstone): "Reaction Kinetics Studio"
// =====================================================================

const CourseWeekDef _igcseChemWeek16 = CourseWeekDef(
  id: "course-igcse-chem-w16",
  weekNumber: 16,
  titleEn: "Reaction Kinetics Studio",
  titleMy: "ဓာတ်ပြုမှု ရွေ့လျားဗေဒ အလုပ်ရုံ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w16-d1",
      dayNumber: 1,
      titleEn: "Equilibrium Shifts and Redox Balancing",
      titleMy: "Equilibrium ရွှေ့ပြောင်းမှုများနှင့် Redox ချိန်ညှိခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In the equilibrium 2SO2 + O2 <=> 2SO3 (exothermic forward), if you remove SO3 as it forms, what happens to the equilibrium?",
          questionMy:
              "2SO2 + O2 <=> 2SO3 (ရှေ့ဆက် Exothermic) Equilibrium တွင် SO3 ကို ဖွဲ့စည်းသည့်အတိုင်း ဖယ်ရှားလိုက်ပါက Equilibrium အဘယ်ဖြစ်လာသနည်း။",
          optionsEn: [
            "It shifts forward to produce more SO3, replacing what was removed",
            "It shifts backward, producing more SO2",
            "It stops reacting completely",
            "Nothing changes at all",
          ],
          optionsMy: [
            "ဖယ်ရှားလိုက်သည့် SO3 ကို အစားထိုးရန် ရှေ့ဆက်ဘက်သို့ ရွှေ့ပြောင်းကာ SO3 ပို၍ ထုတ်ပေးသည်",
            "နောက်ပြန် ရွှေ့ပြောင်းကာ SO2 ပို၍ ထုတ်ပေးသည်",
            "ဓာတ်ပြုမှုကို လုံးဝ ရပ်တန့်စေသည်",
            "မည်သည့်အရာမျှ မပြောင်းလဲပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "By Le Chatelier's principle, removing a product encourages the system to make more of it, shifting the equilibrium forward.",
          ],
          hintsMy: [
            "Le Chatelier's Principle အရ Product တစ်ခု ဖယ်ရှားခြင်းက စနစ်ကို ၎င်းကို ပို၍ ထုတ်ပေးရန် အားပေးကာ Equilibrium ကို ရှေ့ဆက်ဘက်သို့ ရွှေ့ပြောင်းစေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In the redox reaction Mg + 2HCl -> MgCl2 + H2, which species is the oxidising agent?",
          questionMy:
              "Mg + 2HCl -> MgCl2 + H2 Redox ဓာတ်ပြုမှုတွင် မည်သည့် Species က Oxidising Agent ဖြစ်သနည်း။",
          optionsEn: [
            "H+ ions (from HCl), which gain electrons and are reduced to H2",
            "Mg metal, which is reduced",
            "Cl- ions, which are oxidised",
            "MgCl2, which is the reducing agent",
          ],
          optionsMy: [
            "H+ Ion များ (HCl မှ)၊ Electron ရရှိကာ H2 အဖြစ် Reduce ဖြစ်သည်",
            "ဇင့် သတ္တု၊ Reduce ဖြစ်သည်",
            "Cl- Ion များ၊ Oxidise ဖြစ်သည်",
            "MgCl2၊ Reducing Agent ဖြစ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Mg loses electrons (oxidised) becoming Mg2+; H+ ions gain those electrons (reduced) becoming H2 gas.",
            "The oxidising agent is the species that gets reduced -- here, that's H+.",
          ],
          hintsMy: [
            "Mg သည် Electron ဆုံးရှုံးကာ (Oxidise ဖြစ်) Mg2+ ဖြစ်လာသည်; H+ Ion များသည် ထို Electron များ ရရှိကာ (Reduce ဖြစ်) H2 ဓာတ်ငွေ့ ဖြစ်လာသည်။",
            "Oxidising Agent သည် Reduce ဖြစ်သွားသော Species ဖြစ်သည် -- ဤနေရာတွင် H+ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why must exam answers always specify BOTH the direction of an equilibrium shift AND the reasoning behind it?",
          questionMy:
              "စာမေးပွဲ အဖြေများသည် Equilibrium ရွှေ့ပြောင်းမှု၏ ဦးတည်ချက်နှင့် ၎င်းနောက်ကွယ်ရှိ ယုတ္တိဗေဒ နှစ်ခုစလုံးကို အမြဲတမ်း ဖော်ပြရန် လိုအပ်သည့် အကြောင်းရင်းကို ဖော်ပြပါ။",
          optionsEn: [
            "Because IGCSE mark schemes award marks separately for the correct direction and the correct Le Chatelier reasoning",
            "Because direction alone is always sufficient for full marks",
            "Because reasoning is never actually assessed",
            "Because equilibrium questions never appear on exams",
          ],
          optionsMy: [
            "IGCSE Mark Scheme များသည် မှန်ကန်သော ဦးတည်ချက်နှင့် မှန်ကန်သော Le Chatelier ယုတ္တိဗေဒအတွက် အမှတ်များကို သီးခြား ချီးမြှင့်သောကြောင့်",
            "ဦးတည်ချက်တစ်ခုတည်းသည် အမှတ်အပြည့်အတွက် အမြဲတမ်း လုံလောက်သောကြောင့်",
            "ယုတ္တိဗေဒကို ဘယ်တော့မှ အမှန်တကယ် အကဲဖြတ်ခြင်း မရှိသောကြောင့်",
            "Equilibrium မေးခွန်းများသည် စာမေးပွဲများတွင် ဘယ်တော့မှ မပေါ်ပါသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Full-mark answers show both what happens and why, following the complete Le Chatelier logic chain.",
          ],
          hintsMy: [
            "အမှတ်အပြည့် အဖြေများသည် Le Chatelier ယုတ္တိဗေဒ ကွင်းဆက် အပြည့်အစုံကို လိုက်နာကာ အဘယ်ဖြစ်ကြောင်းနှင့် အဘယ်ကြောင့်ဖြစ်ကြောင်း နှစ်ခုစလုံးကို ဖော်ပြသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w16-d2",
      dayNumber: 2,
      titleEn: "Match: Term 4 Recap Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - စတုတ္ထတန်း ပြန်လည်သုံးသပ်ခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w16-dm-1",
          termEn: "Rate-determining factors",
          termMy: "Rate-Determining Factors",
          matchEn:
              "Temperature, concentration, surface area, and catalysts -- the four factors affecting reaction rate",
          matchMy:
              "အပူချိန်၊ Concentration၊ မျက်နှာပြင် ဧရိယာနှင့် Catalyst -- ဓာတ်ပြုနှုန်းကို သက်ရောက်သော အချက် လေးခု",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w16-dm-2",
          termEn: "Equilibrium shift",
          termMy: "Equilibrium Shift",
          matchEn:
              "A change in the relative amounts of reactants and products in response to a disturbance",
          matchMy:
              "နှောင့်ယှက်မှုတစ်ခုကို တုံ့ပြန်ကာ Reactant များနှင့် Product များ၏ နှိုင်းရ ပမာဏများ ပြောင်းလဲမှု",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w16-dm-3",
          termEn: "Redox reaction",
          termMy: "Redox Reaction",
          matchEn: "A reaction involving simultaneous oxidation and reduction",
          matchMy: "Oxidation နှင့် Reduction တစ်ချိန်တည်း ပါဝင်သော ဓာတ်ပြုမှု",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w16-dm-4",
          termEn: "Oxidation number change",
          termMy: "Oxidation Number Change",
          matchEn:
              "The way chemists track which species were oxidised or reduced in a reaction",
          matchMy:
              "ဓာတ်ပြုမှုတစ်ခုတွင် Species မည်သည်တို့ Oxidise သို့မဟုတ် Reduce ဖြစ်ကြောင်း ဓာတုဗေဒပညာရှင်များ ခြေရာခံသော နည်းလမ်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w16-dm-5",
          termEn: "Compromise conditions",
          termMy: "Compromise Conditions",
          matchEn:
              "Industrial operating conditions balancing equilibrium yield against reaction rate and cost",
          matchMy:
              "Equilibrium ရလဒ်ကို ဓာတ်ပြုနှုန်းနှင့် ကုန်ကျစရိတ်ဖြင့် ချိန်ညှိသော စက်မှု လုပ်ဆောင်ချက် အခြေအနေများ",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w16-d3",
      dayNumber: 3,
      titleEn: "Sort: Rate, Equilibrium, or Redox Concept?",
      titleMy: "စီစစ်ကြမည် - Rate, Equilibrium သို့မဟုတ် Redox သဘောတရား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Rate", "Equilibrium", "Redox"],
        bucketsMy: ["Rate", "Equilibrium", "Redox"],
        items: [
          SortingItem(
            id: "igcsechem-w16-sort-1",
            labelEn: "Powdering a solid to increase collision frequency",
            labelMy:
                "ထိတွေ့မှု ကြိမ်နှုန်း မြှင့်တင်ရန် အစိုင်အခဲကို မှုန့်ခြေခြင်း",
            correctBucketEn: "Rate",
            correctBucketMy: "Rate",
          ),
          SortingItem(
            id: "igcsechem-w16-sort-2",
            labelEn: "Increasing pressure to shift toward fewer gas moles",
            labelMy:
                "ဓာတ်ငွေ့ Mole ပိုနည်းသော ဘက်သို့ ရွှေ့ပြောင်းရန် ဖိအား တိုးမြှင့်ခြင်း",
            correctBucketEn: "Equilibrium",
            correctBucketMy: "Equilibrium",
          ),
          SortingItem(
            id: "igcsechem-w16-sort-3",
            labelEn:
                "Tracking oxidation number changes to identify what was oxidised",
            labelMy:
                "Oxidise ဖြစ်ခဲ့သည်ကို ဖော်ထုတ်ရန် Oxidation Number ပြောင်းလဲမှုများ ခြေရာခံခြင်း",
            correctBucketEn: "Redox",
            correctBucketMy: "Redox",
          ),
          SortingItem(
            id: "igcsechem-w16-sort-4",
            labelEn: "Identifying the reducing agent in a chemical equation",
            labelMy: "ဓာတုညီမျှခြင်းတစ်ခုရှိ Reducing Agent ကို ဖော်ထုတ်ခြင်း",
            correctBucketEn: "Redox",
            correctBucketMy: "Redox",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w16-d4",
      dayNumber: 4,
      titleEn: "Reading: Shin Thant's Term 4 Exam Prep Marathon",
      titleMy: "စာဖတ်ခြင်း - ရှင်သန့်၏ စတုတ္ထတန်း စာမေးပွဲ ပြင်ဆင်မှု မာရသွန်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Shin Thant's Term 4 Exam Prep Marathon",
        titleMy: "ရှင်သန့်၏ စတုတ္ထတန်း စာမေးပွဲ ပြင်ဆင်မှု မာရသွန်",
        passageEn:
            "As her fourth term of IGCSE chemistry drew to a close, Shin Thant sat down with Ko Zaw for a final review session, determined to connect all three of the term's major topics -- rates of reaction, equilibrium, and redox -- into one coherent mental map before her end-of-term test.\n\nKo Zaw posed a single combined scenario: the industrial production of sulfuric acid via the Contact process, where sulfur dioxide reacts with oxygen to form sulfur trioxide, 2SO2 + O2 <=> 2SO3, an exothermic, reversible reaction that also happens to be a redox reaction. He asked Shin Thant to analyse it from all three angles.\n\nFrom the rates perspective, Shin Thant explained that the plant uses a vanadium(V) oxide catalyst to speed up the reaction without being consumed, allowing a commercially viable rate even at a moderate temperature. From the equilibrium perspective, she noted that since the forward reaction reduces gas moles from 3 to 2 and is exothermic, both increased pressure and decreased temperature would theoretically increase the equilibrium yield of SO3 -- but, just as in the Haber process, engineers compromise with a moderate temperature (around 450°C) to keep the rate practical, since a slow reaction at very low temperature would be commercially useless even with a high theoretical yield.\n\nFinally, from the redox perspective, Shin Thant worked out the oxidation number of sulfur in SO2 (+4) and in SO3 (+6), and concluded that sulfur was oxidised, since its oxidation number increased; oxygen's oxidation number, meanwhile, did not change in this particular way of analysing it, since elemental O2 (oxidation number 0) forms bonds within SO3 where its number becomes -2, meaning oxygen was reduced. Ko Zaw beamed with pride: over four terms, from her first diffusion experiment with a bottle of perfume to this single reaction analysed through rates, equilibrium, and redox all at once, Shin Thant had built exactly the kind of integrated chemical reasoning the IGCSE Extended Paper was designed to reward.",
        passageMy:
            "IGCSE ဓာတုဗေဒ စတုတ္ထတန်း အဆုံးသတ်ခါနီးတွင် ရှင်သန့်သည် ၎င်း၏ တန်းအဆုံး စာမေးပွဲမတိုင်မီ တန်း၏ အဓိက ခေါင်းစဉ် သုံးခု -- ဓာတ်ပြုနှုန်းများ၊ Equilibrium နှင့် Redox -- ကို စိတ္တံ ဖွဲ့စည်းပုံတစ်ခုတည်းအဖြစ် ချိတ်ဆက်ရန် သန္နိဋ္ဌာန်ချကာ ကိုဇော်နှင့် နောက်ဆုံး ပြန်လည်သုံးသပ်ခြင်း အစည်းအဝေးတွင် ထိုင်ခဲ့သည်။\n\nကိုဇော်သည် ပေါင်းစပ် ရာဇဝင်တစ်ခု တင်ပြခဲ့သည်- ဆာလဖာဒိုင်အောက်ဆိုဒ်သည် အောက်ဆီဂျင်နှင့် ဓာတ်ပြုကာ ဆာလဖာထရိုင်အောက်ဆိုဒ် ဖွဲ့စည်းသော Contact Process မှတစ်ဆင့် ဆာလဖျူးရစ် အက်ဆစ် စက်မှု ထုတ်လုပ်ခြင်း၊ 2SO2 + O2 <=> 2SO3၊ Exothermic ဖြစ်ပြီး ပြန်လှည့်နိုင်သော ဓာတ်ပြုမှုတစ်ခု ဖြစ်ကာ Redox ဓာတ်ပြုမှု တစ်ခုလည်း ဖြစ်သည်။ ဤသည်ကို ဒေါင်ဖက် သုံးဖက်လုံးမှ ခွဲခြမ်းစိတ်ဖြာရန် ရှင်သန့်ကို သူ တောင်းဆိုခဲ့သည်။\n\nNhuန်းရှုထောင့်မှ ကြည့်လျှင် စက်ရုံသည် Vanadium(V) Oxide Catalyst ကို သုံးစွဲမခံရဘဲ ဓာတ်ပြုမှုကို အရှိန်မြှင့်ရန် အသုံးပြုကာ အလယ်အလတ် အပူချိန်တွင်ပင် ကုန်သွယ်ရေးအရ အသုံးဝင်သော နှုန်းတစ်ခု ခွင့်ပြုကြောင်း ရှင်သန့် ရှင်းပြခဲ့သည်။ Equilibrium ရှုထောင့်မှ ကြည့်လျှင် ရှေ့ဆက် ဓာတ်ပြုမှုက ဓာတ်ငွေ့ Mole ကို ၃ မှ ၂ သို့ လျော့ချပြီး Exothermic ဖြစ်သောကြောင့် ဖိအား တိုးမြှင့်ခြင်းနှင့် အပူချိန် လျော့ချခြင်း နှစ်ခုစလုံးသည် သီအိုရီအရ SO3 ၏ Equilibrium ရလဒ်ကို တိုးမြှင့်ပေးမည်ဖြစ်ကြောင်း သူမ မှတ်ချက်ပြုခဲ့သည် -- သို့သော် Haber Process ကဲ့သို့ပင် အင်ဂျင်နီယာများသည် နှုန်းကို လက်တွေ့ကျစေရန် အလယ်အလတ် အပူချိန် (450°C ခန့်) ဖြင့် ညှိနှိုင်းကြသည်၊ အကြောင်းမှာ အလွန် နိမ့်သော အပူချိန်တွင် နှေးကွေးသော ဓာတ်ပြုမှုသည် သီအိုရီအရ ရလဒ် မြင့်သော်လည်း ကုန်သွယ်ရေးအရ အသုံးမဝင်လိမ့်မည်ဖြစ်ကြောင်း ဖြစ်သည်။\n\nနောက်ဆုံးတွင် Redox ရှုထောင့်မှ ရှင်သန့်သည် SO2 ရှိ ဆာလဖာ၏ Oxidation Number (+4) နှင့် SO3 ရှိ (+6) ကို တွက်ချက်ကာ ဆာလဖာသည် ၎င်း၏ Oxidation Number တိုးလာသောကြောင့် Oxidise ဖြစ်ခဲ့ကြောင်း သုံးသပ်ခဲ့သည်; ထိုအတွင်း အောက်ဆီဂျင်၏ Oxidation Number သည် ဤသို့ ခွဲခြမ်းစိတ်ဖြာသည့် အထူးနည်းလမ်းအရ မပြောင်းလဲခဲ့ပါ၊ အကြောင်းမှာ Elemental O2 (Oxidation Number 0) သည် SO3 အတွင်း Bond များ ဖွဲ့စည်းရာတွင် ၎င်း၏ Number သည် -2 ဖြစ်လာကာ အောက်ဆီဂျင်ကို Reduce ဖြစ်ကြောင်း ဆိုလိုသည်။ ကိုဇော် ဂုဏ်ယူစွာ ရွှင်ပြုံးခဲ့သည်- တန်းလေးခု ကျော်လွန်စဉ် ရေမွှေး ပုလင်းတစ်ပုလင်းဖြင့် ၎င်း၏ ပထမဆုံး Diffusion စမ်းသပ်ချက်မှ Rates, Equilibrium နှင့် Redox တစ်ပြိုင်နက် ခွဲခြမ်းစိတ်ဖြာသော ဓာတ်ပြုမှုတစ်ခုတည်းအထိ ရှင်သန့်သည် IGCSE Extended Paper က ဆုချီးမြှင့်ရန် ဒီဇိုင်းထုတ်ထားသော ပေါင်းစပ် ဓာတုဗေဒ ယုတ္တိဗေဒ အမျိုးအစား အတိအကျကို တည်ဆောက်ခဲ့ကြောင်း ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why does the plant use a vanadium(V) oxide catalyst?",
            questionMy:
                "စက်ရုံသည် Vanadium(V) Oxide Catalyst ကို အသုံးပြုသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "To speed up the reaction without being consumed, allowing a commercially viable rate",
              "To change the colour of sulfur trioxide",
              "To lower the equilibrium yield deliberately",
              "To make the reaction endothermic",
            ],
            optionsMy: [
              "သုံးစွဲမခံရဘဲ ဓာတ်ပြုမှုကို အရှိန်မြှင့်ကာ ကုန်သွယ်ရေးအရ အသုံးဝင်သော နှုန်းတစ်ခု ခွင့်ပြုရန်",
              "ဆာလဖာထရိုင်အောက်ဆိုဒ်၏ အရောင် ပြောင်းလဲရန်",
              "Equilibrium ရလဒ်ကို တမင်တကာ လျော့ချရန်",
              "ဓာတ်ပြုမှုကို Endothermic ဖြစ်စေရန်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the sentence explaining the catalyst's purpose."],
            hintsMy: [
              "Catalyst ၏ ရည်ရွယ်ချက်ကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why does the plant use a moderate temperature rather than a very low one?",
            questionMy:
                "စက်ရုံသည် အလွန် နိမ့်သော အပူချိန်အစား အလယ်အလတ် အပူချိန် အသုံးပြုသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "A very low temperature would give a slow, commercially useless rate despite a high theoretical yield",
              "Low temperature is always more expensive",
              "Low temperature destroys the catalyst instantly",
              "There is no real reason -- it is arbitrary",
            ],
            optionsMy: [
              "အလွန် နိမ့်သော အပူချိန်သည် သီအိုရီအရ ရလဒ် မြင့်သော်လည်း နှေးကွေး၍ ကုန်သွယ်ရေးအရ အသုံးမဝင်သော နှုန်းကို ပေးမည်ဖြစ်သောကြောင့်",
              "အပူချိန် နိမ့်ခြင်းသည် အမြဲတမ်း ပို၍ ဈေးကြီးသောကြောင့်",
              "အပူချိန် နိမ့်ခြင်းက Catalyst ကို ချက်ချင်း ဖျက်ဆီးသောကြောင့်",
              "အမှန်တကယ် အကြောင်းရင်း မရှိပါ -- ကျပန်းသာ ဖြစ်သည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining the compromise between rate and yield.",
            ],
            hintsMy: [
              "နှုန်းနှင့် ရလဒ်ကြား ညှိနှိုင်းမှုကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to the final paragraph, why was sulfur considered oxidised?",
            questionMy:
                "ဆာလဖာကို Oxidise ဖြစ်သည် ဟု သတ်မှတ်ရသည့် အကြောင်းရင်းကို နောက်ဆုံးစာပိုဒ်အရ ဖော်ပြပါ။",
            optionsEn: [
              "Its oxidation number increased from +4 to +6",
              "Its oxidation number decreased from +6 to +4",
              "It turned into a liquid",
              "It disappeared from the equation entirely",
            ],
            optionsMy: [
              "၎င်း၏ Oxidation Number သည် +4 မှ +6 သို့ တိုးလာခဲ့သောကြောင့်",
              "၎င်း၏ Oxidation Number သည် +6 မှ +4 သို့ ကျဆင်းခဲ့သောကြောင့်",
              "အရည် ဖြစ်သွားခဲ့သောကြောင့်",
              "ညီမျှခြင်းမှ လုံးဝ ပျောက်ကွယ်သွားခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence with sulfur's oxidation number calculation.",
            ],
            hintsMy: [
              "ဆာလဖာ၏ Oxidation Number တွက်ချက်မှု ပါဝင်သော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the whole passage, what three chemistry topics did Shin Thant connect in her analysis?",
            questionMy:
                "ရှင်သန့်သည် ၎င်း၏ ခွဲခြမ်းစိတ်ဖြာမှုတွင် ဓာတုဗေဒ ခေါင်းစဉ် သုံးခုကို ချိတ်ဆက်ခဲ့ကြောင်းကို စာပိုဒ်တစ်ခုလုံးအရ ဖော်ပြပါ။",
            optionsEn: [
              "Rates of reaction, equilibrium, and redox",
              "Only atomic structure and bonding",
              "Only stoichiometry and moles",
              "Only electrolysis and energetics",
            ],
            optionsMy: [
              "ဓာတ်ပြုနှုန်းများ၊ Equilibrium နှင့် Redox",
              "Atomic Structure နှင့် Bonding သာ",
              "Stoichiometry နှင့် Mole သာ",
              "Electrolysis နှင့် Energetics သာ",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the first paragraph naming the three major topics of the term.",
            ],
            hintsMy: [
              "ဤတန်း၏ အဓိက ခေါင်းစဉ် သုံးခုကို ဖော်ပြထားသော ပထမ စာပိုဒ်ကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w16-d5",
      dayNumber: 5,
      titleEn: "Term 4 Recap: Reaction Rates, Equilibrium, and Redox",
      titleMy:
          "စတုတ္ထတန်း ပြန်လည်သုံးသပ်ခြင်း - Rates, Equilibrium နှင့် Redox",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Catalysts increase reaction rate without...",
          questionMy:
              "Catalyst များသည် ...မရှိဘဲ ဓာတ်ပြုနှုန်းကို တိုးမြှင့်ပေးသည်",
          optionsEn: [
            "Being used up themselves",
            "Changing anything",
            "Adding activation energy",
            "Forming any product",
          ],
          optionsMy: [
            "ကိုယ်တိုင် သုံးစွဲခံရခြင်း",
            "မည်သည့်အရာမျှ ပြောင်းလဲခြင်း",
            "Activation Energy ထည့်သွင်းခြင်း",
            "Product မည်သည်ကိုမျှ ဖွဲ့စည်းခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Increasing pressure on an equilibrium shifts it toward the side with...",
          questionMy:
              "Equilibrium တစ်ခုတွင် ဖိအား တိုးမြှင့်ခြင်းက ...ဘက်သို့ ရွှေ့ပြောင်းစေသည်",
          optionsEn: [
            "Fewer gas moles",
            "More gas moles always",
            "No gas at all",
            "Higher temperature",
          ],
          optionsMy: [
            "ဓာတ်ငွေ့ Mole ပိုနည်းသော",
            "ဓာတ်ငွေ့ Mole ပိုများသော အမြဲတမ်း",
            "ဓာတ်ငွေ့ လုံးဝ မရှိသော",
            "အပူချိန် ပိုမြင့်သော",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In a redox reaction, the oxidising agent itself becomes...",
          questionMy:
              "Redox ဓာတ်ပြုမှုတစ်ခုတွင် Oxidising Agent ကိုယ်တိုင်သည်...",
          optionsEn: ["Reduced", "Oxidised", "Unchanged", "A gas always"],
          optionsMy: [
            "Reduce ဖြစ်သည်",
            "Oxidise ဖြစ်သည်",
            "မပြောင်းလဲပါ",
            "အမြဲတမ်း ဓာတ်ငွေ့ ဖြစ်သည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 17: "Properties of Acids, Bases, and Salts"
// =====================================================================

const CourseWeekDef _igcseChemWeek17 = CourseWeekDef(
  id: "course-igcse-chem-w17",
  weekNumber: 17,
  titleEn: "Properties of Acids, Bases, and Salts",
  titleMy: "အက်ဆစ်၊ ဘေ့စ်နှင့် ဆားများ၏ ဂုဏ်သတ္တိများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w17-d1",
      dayNumber: 1,
      titleEn: "Characteristic Reactions of Acids",
      titleMy: "အက်ဆစ်များ၏ ထူးခြားသော ဓာတ်ပြုမှုများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "In the reaction Mg + 2HCl -> MgCl2 + H2, which gas is produced and how would you test for it?",
          questionMy:
              "Mg + 2HCl -> MgCl2 + H2 ဓာတ်ပြုမှုတွင် မည်သည့်ဓာတ်ငွေ့ ထွက်ပေါ်ပြီး မည်သို့ စမ်းသပ်မည်နည်း။",
          optionsEn: [
            "Hydrogen -- a lit splint held at the mouth of the test tube gives a squeaky pop",
            "Oxygen -- a glowing splint relights",
            "Carbon dioxide -- limewater turns milky",
            "Chlorine -- damp litmus paper bleaches white",
          ],
          optionsMy: [
            "Hydrogen -- စမ်းသပ်ပြွန်ခေါင်းတွင် မီးထွန်းထားသော ကျစျေးတုတ်ကို ကပ်လိုက်ပါက 'ပေါ့' ဟူသော အသံထွက်သည်",
            "Oxygen -- တောက်နေသော ကျစျေးတုတ်ကို ပြန်လည် တောက်ညှိသည်",
            "Carbon dioxide -- ထုံးရည်ကို နို့ရောင် ပြောင်းစေသည်",
            "Chlorine -- စိုစွတ်သော လစ်တမတ်စ် စက္ကူကို အရောင်ဖျက်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A reactive metal reacting with a dilute acid always produces a salt and hydrogen gas.",
            "The 'squeaky pop' test with a lit splint is the standard IGCSE test for hydrogen.",
          ],
          hintsMy: [
            "ဓာတ်ပြုနိုင်စွမ်းရှိသော သတ္တုတစ်ခုသည် ရေဖျော်အက်ဆစ်တစ်ခုနှင့် ဓာတ်ပြုသည့်အခါ ဆားနှင့် Hydrogen ဓာတ်ငွေ့ကို အမြဲ ထုတ်ပေးသည်။",
            "မီးထွန်းထားသော ကျစျေးတုတ်ဖြင့် 'ပေါ့' အသံထွက်စမ်းသပ်ခြင်းသည် Hydrogen အတွက် စံ IGCSE စမ်းသပ်မှု ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "When a metal carbonate reacts with a dilute acid, which two products form in addition to a salt?",
          questionMy:
              "သတ္တု ကာဗွန်နိတ် တစ်ခုသည် ရေဖျော်အက်ဆစ်တစ်ခုနှင့် ဓာတ်ပြုသည့်အခါ ဆားအပြင် ထပ်မံ ထွက်ပေါ်လာသော ထွက်ကုန် နှစ်မျိုးကား အဘယ်နည်း။",
          optionsEn: [
            "Water and carbon dioxide gas",
            "Hydrogen and oxygen gas",
            "Only hydrogen gas",
            "Water only, with no gas",
          ],
          optionsMy: [
            "ရေနှင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ် ဓာတ်ငွေ့",
            "Hydrogen နှင့် Oxygen ဓာတ်ငွေ့",
            "Hydrogen ဓာတ်ငွေ့သာ",
            "ရေသာ၊ ဓာတ်ငွေ့ လုံးဝ မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "For example: CaCO3 + 2HCl -> CaCl2 + H2O + CO2.",
            "The CO2 produced is confirmed by bubbling it through limewater, which turns milky/cloudy.",
          ],
          hintsMy: [
            "ဥပမာ- CaCO3 + 2HCl -> CaCl2 + H2O + CO2 ။",
            "ထွက်ပေါ်လာသော CO2 ကို ထုံးရည်ထဲသို့ ပူဖောင်းထုတ်ကာ နို့ရောင်/မှုန်ဝါးလာခြင်းဖြင့် အတည်ပြုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "On the universal indicator colour scale, what colour and approximate pH range represents a strong alkali?",
          questionMy:
              "Universal Indicator အရောင် စကေးတွင် ခိုင်မာသော အယ်လကာလိုင်း (Strong Alkali) တစ်ခုအတွက် မည်သည့် အရောင်နှင့် ခန့်မှန်း pH အတိုင်းအတာက ကိုယ်စားပြုသနည်း။",
          optionsEn: [
            "Purple/violet, pH around 11-14",
            "Red, pH around 1-3",
            "Green, pH exactly 7",
            "Orange, pH around 4-6",
          ],
          optionsMy: [
            "မောင်းချယ်ရောင်/ခရမ်းရောင်၊ pH ၁၁-၁၄ ခန့်",
            "အနီရောင်၊ pH ၁-၃ ခန့်",
            "အစိမ်းရောင်၊ pH အတိအကျ ၇",
            "လိမ္မော်ရောင်၊ pH ၄-၆ ခန့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The pH scale runs from 0 (strongly acidic, red) through 7 (neutral, green) to 14 (strongly alkaline, purple).",
          ],
          hintsMy: [
            "pH စကေးသည် ၀ (ခိုင်မာသော အက်ဆစ်၊ အနီရောင်) မှ ၇ (ကြားနေ၊ အစိမ်းရောင်) ကို ဖြတ်၍ ၁၄ (ခိုင်မာသော အယ်လကာလိုင်း၊ မောင်းချယ်ရောင်) အထိ ပြေးသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w17-d2",
      dayNumber: 2,
      titleEn: "Match: Acids, Bases, and Oxides Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - အက်ဆစ်၊ ဘေ့စ်နှင့် အောက်ဆိုဒ် ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w17-dm-1",
          termEn: "Alkali",
          termMy: "Alkali",
          matchEn:
              "A base that is soluble in water, releasing hydroxide ions (OH-) into solution",
          matchMy:
              "ရေတွင် ပျော်ဝင်ပြီး ပျော်ရည်ထဲသို့ Hydroxide Ion (OH-) များ လွှတ်ပေးသော ဘေ့စ်တစ်မျိုး",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w17-dm-2",
          termEn: "Neutralisation",
          termMy: "Neutralisation",
          matchEn:
              "The reaction between an acid and a base to form a salt and water",
          matchMy: "အက်ဆစ်နှင့် ဘေ့စ်ကြား ဆားနှင့် ရေ ဖွဲ့စည်းစေသော ဓာတ်ပြုမှု",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w17-dm-3",
          termEn: "Amphoteric oxide",
          termMy: "Amphoteric Oxide",
          matchEn:
              "An oxide that reacts with both acids and bases, such as aluminium oxide or zinc oxide",
          matchMy:
              "Aluminium Oxide သို့မဟုတ် Zinc Oxide ကဲ့သို့ အက်ဆစ်နှင့် ဘေ့စ် နှစ်မျိုးစလုံးနှင့် ဓာတ်ပြုသော အောက်ဆိုဒ်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w17-dm-4",
          termEn: "Acidic oxide",
          termMy: "Acidic Oxide",
          matchEn:
              "A non-metal oxide, such as carbon dioxide or sulfur dioxide, that reacts with bases to form a salt",
          matchMy:
              "Carbon Dioxide သို့မဟုတ် Sulfur Dioxide ကဲ့သို့ ဘေ့စ်များနှင့် ဓာတ်ပြုကာ ဆား ဖွဲ့စည်းစေသော သတ္တုမဟုတ်သည့် အောက်ဆိုဒ်",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w17-dm-5",
          termEn: "Salt",
          termMy: "Salt",
          matchEn:
              "A compound formed when the hydrogen ion of an acid is replaced by a metal or ammonium ion",
          matchMy:
              "အက်ဆစ်၏ Hydrogen Ion ကို သတ္တု သို့မဟုတ် Ammonium Ion ဖြင့် အစားထိုးသည့်အခါ ဖွဲ့စည်းလာသော ဒြပ်ပေါင်း",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w17-d3",
      dayNumber: 3,
      titleEn: "Sort: Acidic, Basic, Amphoteric, or Neutral Oxide?",
      titleMy:
          "စီစစ်ကြမည် - အက်ဆစ်ဖြစ်သလား၊ ဘေ့စ်ဖြစ်သလား၊ Amphoteric ဖြစ်သလား၊ ကြားနေဖြစ်သလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Acidic Oxide",
          "Basic Oxide",
          "Amphoteric Oxide",
          "Neutral Oxide",
        ],
        bucketsMy: [
          "Acidic Oxide",
          "Basic Oxide",
          "Amphoteric Oxide",
          "Neutral Oxide",
        ],
        items: [
          SortingItem(
            id: "igcsechem-w17-sort-1",
            labelEn:
                "CO2 -- reacts with alkalis, dissolves to form an acidic solution",
            labelMy:
                "CO2 -- အယ်လကာလိုင်းများနှင့် ဓာတ်ပြုကာ အက်ဆစ် ပျော်ရည် ဖြစ်စေသည်",
            correctBucketEn: "Acidic Oxide",
            correctBucketMy: "Acidic Oxide",
          ),
          SortingItem(
            id: "igcsechem-w17-sort-2",
            labelEn:
                "MgO -- a metal oxide that reacts with dilute acids to form a salt and water",
            labelMy:
                "MgO -- ရေဖျော်အက်ဆစ်များနှင့် ဓာတ်ပြုကာ ဆားနှင့် ရေ ဖွဲ့စည်းစေသော သတ္တု အောက်ဆိုဒ်",
            correctBucketEn: "Basic Oxide",
            correctBucketMy: "Basic Oxide",
          ),
          SortingItem(
            id: "igcsechem-w17-sort-3",
            labelEn:
                "Al2O3 -- reacts with both hydrochloric acid and sodium hydroxide",
            labelMy:
                "Al2O3 -- Hydrochloric Acid နှင့် Sodium Hydroxide နှစ်ခုစလုံးနှင့် ဓာတ်ပြုသည်",
            correctBucketEn: "Amphoteric Oxide",
            correctBucketMy: "Amphoteric Oxide",
          ),
          SortingItem(
            id: "igcsechem-w17-sort-4",
            labelEn: "CO -- does not react with either acids or bases",
            labelMy: "CO -- အက်ဆစ် သို့မဟုတ် ဘေ့စ် မည်သည်နှင့်မျှ ဓာတ်မပြု",
            correctBucketEn: "Neutral Oxide",
            correctBucketMy: "Neutral Oxide",
          ),
          SortingItem(
            id: "igcsechem-w17-sort-5",
            labelEn:
                "ZnO -- dissolves in both hydrochloric acid and excess sodium hydroxide solution",
            labelMy:
                "ZnO -- Hydrochloric Acid နှင့် ပိုလျှံသော Sodium Hydroxide ပျော်ရည် နှစ်ခုစလုံးတွင် ပျော်ဝင်သည်",
            correctBucketEn: "Amphoteric Oxide",
            correctBucketMy: "Amphoteric Oxide",
          ),
          SortingItem(
            id: "igcsechem-w17-sort-6",
            labelEn:
                "SO2 -- a non-metal oxide that dissolves in water to form an acidic solution",
            labelMy:
                "SO2 -- ရေတွင် ပျော်ဝင်ကာ အက်ဆစ် ပျော်ရည် ဖြစ်စေသော သတ္တုမဟုတ်သည့် အောက်ဆိုဒ်",
            correctBucketEn: "Acidic Oxide",
            correctBucketMy: "Acidic Oxide",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w17-d4",
      dayNumber: 4,
      titleEn: "Reading: Shin Thant's Kitchen pH Survey",
      titleMy: "စာဖတ်ခြင်း - ရှင်သန့်၏ မီးဖိုချောင် pH စစ်တမ်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Shin Thant's Kitchen pH Survey",
        titleMy: "ရှင်သန့်၏ မီးဖိုချောင် pH စစ်တမ်း",
        passageEn:
            "Ko Zaw handed Shin Thant a small bottle of universal indicator solution and a printed pH colour chart, then challenged her to test five household liquids from her own kitchen: vinegar, lemon juice, tap water, a dissolved spoonful of baking soda, and a dissolved spoonful of washing soda used for laundry.\n\nVinegar and lemon juice both turned the indicator a similar orange-red, giving readings of pH 3 and pH 2 respectively -- both weak acids, Shin Thant noted, but lemon juice was clearly the stronger of the two since its colour sat closer to the red end of the scale. Tap water stayed a steady green, confirming its pH of 7, neither acidic nor alkaline. The baking soda solution turned pale blue, around pH 9, a mild alkali, while the washing soda solution turned a much deeper blue-purple, closer to pH 11, revealing it as a considerably stronger alkali than the baking soda despite looking like a similar white powder in the cupboard.\n\nKo Zaw then asked her to predict what would happen if she mixed equal amounts of the vinegar and the washing soda solution together. Shin Thant reasoned that since one was acidic and the other alkaline, they would neutralise each other, with the hydrogen ions from the acid and the hydroxide ions from the alkali combining to form water, while the sodium and acetate ions remained in solution as a dissolved salt. When she tested the mixture, the indicator turned a green shade very close to pH 7, confirming her prediction -- though she noted that getting the colour exactly to green would require adding precisely matched amounts, not just any random splash of each, since too much of either liquid would leave the mixture still acidic or still alkaline overall.",
        passageMy:
            "ကိုဇော်သည် ရှင်သန့်အား Universal Indicator ပျော်ရည် ပုလင်းငယ်တစ်ခုနှင့် ပုံနှိပ်ထားသော pH အရောင်ဇယားတစ်ခုကို ပေးအပ်ပြီး သူမကိုယ်တိုင် မီးဖိုချောင်ရှိ အိမ်သုံးအရည် ငါးမျိုးကို စမ်းသပ်ရန် စိန်ခေါ်ခဲ့သည် - ရှာလကာရည်၊ သံပုရာရည်၊ ရေပိုက်ရေ၊ Baking Soda ဇွန်းတစ်ဇွန်း ပျော်ဝင်ထားသော ပျော်ရည်နှင့် အဝတ်လျှော်ရန်သုံး Washing Soda ဇွန်းတစ်ဇွန်း ပျော်ဝင်ထားသော ပျော်ရည်။\n\nရှာလကာရည်နှင့် သံပုရာရည် နှစ်ခုစလုံးသည် Indicator ကို ဆင်တူသော လိမ္မော်-အနီရောင်သို့ ပြောင်းစေကာ pH ၃ နှင့် pH ၂ အသီးသီး ဖတ်ရသည် -- နှစ်ခုစလုံးသည် အားနည်းသော အက်ဆစ်များဖြစ်သော်လည်း သံပုရာရည်၏ အရောင်သည် စကေး၏ အနီရောင်ဘက်သို့ ပိုနီးသဖြင့် ၎င်းသည် နှစ်ခုအနက် ပို၍ ခိုင်မာသည်ဟု ရှင်သန့် မှတ်ချက်ပြုခဲ့သည်။ ရေပိုက်ရေမှာ pH ၇ ကို အတည်ပြုကာ အစိမ်းရောင် တည်ငြိမ်စွာ ရှိနေခဲ့ပြီး၊ အက်ဆစ် သို့မဟုတ် အယ်လကာလိုင်း မဟုတ်ပါ။ Baking Soda ပျော်ရည်သည် pH ၉ ခန့်ရှိသော ပန်းရောင်ဖျော့ အပြာရောင်သို့ ပြောင်းသွားကာ အနုအယ်လကာလိုင်း ဖြစ်ပြီး၊ Washing Soda ပျော်ရည်မှာမူ ဗီရိုစကာဗ်ထဲရှိ တူညီသော အဖြူရောင် မှုန့်ကဲ့သို့ ထင်ရသော်လည်း pH ၁၁ ခန့်နှင့် ပို၍နက်သော အပြာ-ခရမ်းရောင်သို့ ပြောင်းသွားကာ Baking Soda ထက် များစွာ ပို၍ ခိုင်မာသော အယ်လကာလိုင်း ဖြစ်ကြောင်း ဖော်ထုတ်ပေးခဲ့သည်။\n\nထို့နောက် ရှာလကာရည်နှင့် Washing Soda ပျော်ရည်ကို ညီမျှသော ပမာဏဖြင့် ရောစပ်ပါက အဘယ်ဖြစ်လာမည်ကို ခန့်မှန်းရန် ကိုဇော် သူမအား တောင်းဆိုခဲ့သည်။ တစ်ခုမှာ အက်ဆစ်ဖြစ်ပြီး အခြားတစ်ခုမှာ အယ်လကာလိုင်းဖြစ်သောကြောင့် တစ်ခုနှင့်တစ်ခု Neutralise ဖြစ်ကာ အက်ဆစ်မှ Hydrogen Ion များနှင့် အယ်လကာလိုင်းမှ Hydroxide Ion များ ပေါင်းစပ်ကာ ရေ ဖွဲ့စည်းလာပြီး Sodium နှင့် Acetate Ion များမှာ ပျော်ရည်ထဲတွင် ပျော်ဝင်သော ဆားတစ်မျိုးအဖြစ် ကျန်ရှိနေမည်ဟု ရှင်သန့် ကျိုးကြောင်းဆင်ခြင်ခဲ့သည်။ ရောစပ်ထားသော ပျော်ရည်ကို စမ်းသပ်ကြည့်သောအခါ Indicator သည် pH ၇ နှင့် အလွန်နီးစပ်သော အစိမ်းရောင်သို့ ပြောင်းသွားကာ သူမ၏ ခန့်မှန်းချက်ကို အတည်ပြုခဲ့သည် -- သို့သော် အရောင်ကို အစိမ်းရောင် အတိအကျ ရရှိစေရန် ကျပန်း ပက်ဖျန်းမှု မဟုတ်ဘဲ တိကျစွာ ကိုက်ညီသော ပမာဏများ ထည့်သွင်းရန် လိုအပ်ကြောင်း သူမ မှတ်ချက်ပြုခဲ့သည်၊ အကြောင်းမှာ တစ်ခုခုကို လိုအပ်သည်ထက် ပို၍ ထည့်ပါက ရောစပ်ထားသော ပျော်ရည်သည် စုစုပေါင်းအားဖြင့် အက်ဆစ် သို့မဟုတ် အယ်လကာလိုင်း ဆက်လက် ဖြစ်နေမည်ဖြစ်သောကြောင့်ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how did Shin Thant know lemon juice was a stronger acid than vinegar?",
            questionMy:
                "သံပုရာရည်သည် ရှာလကာရည်ထက် ပို၍ ခိုင်မာသော အက်ဆစ်ဖြစ်ကြောင်း ရှင်သန့် မည်သို့ သိခဲ့သနည်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Its colour sat closer to the red end of the pH scale (pH 2 vs pH 3)",
              "It smelled stronger",
              "It was a darker liquid before testing",
              "Ko Zaw simply told her the answer",
            ],
            optionsMy: [
              "၎င်း၏ အရောင်သည် pH စကေး၏ အနီရောင်ဘက်သို့ ပိုနီးသောကြောင့် (pH ၂ နှင့် pH ၃)",
              "ရနံ့ ပို၍ ပြင်းသောကြောင့်",
              "စမ်းသပ်ခြင်း မပြုမီ ပို၍ မှောင်သော အရည် ဖြစ်နေသောကြောင့်",
              "ကိုဇော်က အဖြေကို ရိုးရိုးရှင်းရှင်း ပြောပြသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence comparing the two colours on the pH scale.",
            ],
            hintsMy: [
              "pH စကေးပေါ်ရှိ အရောင် နှစ်ခုကို နှိုင်းယှဉ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why was washing soda judged a stronger alkali than baking soda?",
            questionMy:
                "Washing Soda ကို Baking Soda ထက် ပို၍ ခိုင်မာသော အယ်လကာလိုင်းဟု သတ်မှတ်ရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Its solution turned a much deeper blue-purple, closer to pH 11 rather than pH 9",
              "It looked like a different colour powder in the cupboard",
              "It dissolved faster in water",
              "It had a stronger smell than baking soda",
            ],
            optionsMy: [
              "၎င်း၏ ပျော်ရည်သည် pH ၉ မဟုတ်ဘဲ pH ၁၁ နှင့် နီးစပ်သော ပို၍ နက်သော အပြာ-ခရမ်းရောင်သို့ ပြောင်းသွားသောကြောင့်",
              "ဗီရိုစကာဗ်ထဲတွင် မတူညီသော အရောင် မှုန့်တစ်မျိုး ဖြစ်နေသောကြောင့်",
              "ရေတွင် ပို၍ မြန်စွာ ပျော်ဝင်သောကြောင့်",
              "Baking Soda ထက် ရနံ့ ပို၍ ပြင်းသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence comparing the two blue shades and approximate pH values.",
            ],
            hintsMy: [
              "အပြာရောင် အသွင် နှစ်မျိုးနှင့် ခန့်မှန်း pH တန်ဖိုးများကို နှိုင်းယှဉ်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what forms when the hydrogen ions from vinegar combine with the hydroxide ions from washing soda solution?",
            questionMy:
                "ရှာလကာရည်မှ Hydrogen Ion များနှင့် Washing Soda ပျော်ရည်မှ Hydroxide Ion များ ပေါင်းစပ်သည့်အခါ အဘယ်အရာ ဖွဲ့စည်းလာသနည်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Water, while the remaining ions stay dissolved as a salt",
              "A precipitate that sinks to the bottom",
              "A new gas that bubbles out",
              "Nothing at all -- the ions do not react",
            ],
            optionsMy: [
              "ရေ၊ ကျန်ရှိနေသော Ion များမှာ ဆားတစ်မျိုးအဖြစ် ပျော်ရည်ထဲတွင် ပျော်ဝင်နေသည်",
              "အောက်ခြေသို့ ကျသွားသော Precipitate",
              "ပူဖောင်းထွက်လာသော ဓာတ်ငွေ့သစ်တစ်မျိုး",
              "မည်သည့်အရာမျှ မဖြစ်ပေါ်ပါ -- Ion များ ဓာတ်မပြု",
            ],
            correctIndex: 0,
            hintsEn: [
              "This is the standard definition of neutralisation between an acid and an alkali.",
            ],
            hintsMy: [
              "ဤသည်မှာ အက်ဆစ်နှင့် အယ်လကာလိုင်းကြား Neutralisation ၏ စံ အဓိပ္ပာယ်ဖွင့်ဆိုချက် ဖြစ်သည်။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to the final sentence, why couldn't Shin Thant just add a random splash of each liquid to get exactly pH 7?",
            questionMy:
                "pH ၇ အတိအကျ ရရှိရန် အရည်တစ်ခုစီကို ကျပန်း ပက်ဖျန်း၍ မရသည့် အကြောင်းရင်းကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "Too much of either acid or alkali would leave the mixture still acidic or still alkaline overall",
              "Random amounts always produce exactly pH 7 regardless",
              "The indicator only works with precisely measured amounts",
              "Vinegar and washing soda cannot mix at all",
            ],
            optionsMy: [
              "အက်ဆစ် သို့မဟုတ် အယ်လကာလိုင်း တစ်ခုခုကို လိုအပ်သည်ထက်ပို၍ ထည့်ပါက ရောစပ်ထားသော ပျော်ရည်သည် စုစုပေါင်းအားဖြင့် အက်ဆစ် သို့မဟုတ် အယ်လကာလိုင်း ဆက်လက်ဖြစ်နေမည်ဖြစ်သောကြောင့်",
              "ကျပန်းပမာဏများသည် မည်သို့ပင်ဖြစ်စေ pH ၇ အတိအကျ အမြဲ ထုတ်ပေးသောကြောင့်",
              "Indicator သည် တိကျစွာ တိုင်းတာထားသော ပမာဏများနှင့်သာ အလုပ်လုပ်သောကြောင့်",
              "ရှာလကာရည်နှင့် Washing Soda သည် လုံးဝ ရောစပ်၍ မရသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the last clause of the passage explaining why precise amounts matter.",
            ],
            hintsMy: [
              "တိကျသော ပမာဏများ အရေးကြီးရသည့် အကြောင်းရင်းကို ရှင်းပြထားသော စာပိုဒ်၏ နောက်ဆုံး အပိုင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w17-d5",
      dayNumber: 5,
      titleEn: "Week 17 Recap: Acids, Bases, and Oxides",
      titleMy:
          "ဆယ့်ခုနစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - အက်ဆစ်၊ ဘေ့စ်နှင့် အောက်ဆိုဒ်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A metal carbonate reacting with a dilute acid always produces a salt, water, and...",
          questionMy:
              "သတ္တု ကာဗွန်နိတ်တစ်ခုသည် ရေဖျော်အက်ဆစ်တစ်ခုနှင့် ဓာတ်ပြုသည့်အခါ ဆားနှင့် ရေအပြင် ...ကိုပါ အမြဲ ထုတ်ပေးသည်",
          optionsEn: [
            "Carbon dioxide gas",
            "Hydrogen gas",
            "Oxygen gas",
            "Chlorine gas",
          ],
          optionsMy: [
            "Carbon dioxide ဓာတ်ငွေ့",
            "Hydrogen ဓာတ်ငွေ့",
            "Oxygen ဓာတ်ငွေ့",
            "Chlorine ဓာတ်ငွေ့",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "An amphoteric oxide reacts with...",
          questionMy: "Amphoteric Oxide တစ်ခုသည် ...နှင့် ဓာတ်ပြုသည်",
          optionsEn: [
            "Both acids and bases",
            "Only acids",
            "Only bases",
            "Neither acids nor bases",
          ],
          optionsMy: [
            "အက်ဆစ်နှင့် ဘေ့စ် နှစ်မျိုးစလုံး",
            "အက်ဆစ်သာ",
            "ဘေ့စ်သာ",
            "အက်ဆစ်သော်လည်းကောင်း၊ ဘေ့စ်သော်လည်းကောင်း မဟုတ်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "On the pH scale, a reading of exactly 7 represents...",
          questionMy: "pH စကေးတွင် ၇ အတိအကျ ဖတ်ရခြင်းက ...ကို ကိုယ်စားပြုသည်",
          optionsEn: [
            "A neutral substance",
            "A strong acid",
            "A strong alkali",
            "A weak alkali",
          ],
          optionsMy: [
            "ကြားနေ ပစ္စည်းတစ်ခု",
            "ခိုင်မာသော အက်ဆစ်တစ်ခု",
            "ခိုင်မာသော အယ်လကာလိုင်းတစ်ခု",
            "အားနည်းသော အယ်လကာလိုင်းတစ်ခု",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 18: "Preparation of Salts"
// =====================================================================

const CourseWeekDef _igcseChemWeek18 = CourseWeekDef(
  id: "course-igcse-chem-w18",
  weekNumber: 18,
  titleEn: "Preparation of Salts",
  titleMy: "ဆားများ ပြင်ဆင်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w18-d1",
      dayNumber: 1,
      titleEn: "Choosing a Salt Preparation Method",
      titleMy: "ဆား ပြင်ဆင်ရေး နည်းလမ်း ရွေးချယ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Which rule correctly describes the solubility of common salts?",
          questionMy:
              "အသုံးများသော ဆားများ၏ ပျော်ဝင်နိုင်စွမ်းကို မှန်ကန်စွာ ဖော်ပြသော စည်းမျဉ်းကား အဘယ်နည်း။",
          optionsEn: [
            "All nitrates are soluble; most sulfates are soluble except barium and lead sulfate; most carbonates are insoluble except sodium, potassium, and ammonium carbonate",
            "All carbonates are soluble in water without exception",
            "All sulfates are insoluble in water",
            "Nitrates are always insoluble",
          ],
          optionsMy: [
            "Nitrate အားလုံး ပျော်ဝင်သည်; Barium နှင့် Lead Sulfate မှလွဲ၍ Sulfate အများစု ပျော်ဝင်သည်; Sodium၊ Potassium နှင့် Ammonium Carbonate မှလွဲ၍ Carbonate အများစု မပျော်ဝင်",
            "Carbonate အားလုံး ရေတွင် ချွင်းချက်မရှိ ပျော်ဝင်သည်",
            "Sulfate အားလုံး ရေတွင် မပျော်ဝင်",
            "Nitrate များသည် အမြဲတမ်း မပျော်ဝင်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Solubility rules are a fixed set of facts to memorise for IGCSE Chemistry: all nitrates are soluble, and there are only a handful of exceptions among sulfates and carbonates.",
          ],
          hintsMy: [
            "ပျော်ဝင်နိုင်စွမ်း စည်းမျဉ်းများသည် IGCSE ဓာတုဗေဒအတွက် အလွတ်ကျက်ရမည့် သတ်မှတ်ချက်များ ဖြစ်သည်- Nitrate အားလုံး ပျော်ဝင်ပြီး Sulfate နှင့် Carbonate များတွင် ချွင်းချက်ကား အနည်းငယ်သာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "To prepare a soluble salt like copper sulfate from an insoluble base like copper oxide, why is excess (not exact) copper oxide added to the sulfuric acid?",
          questionMy:
              "Copper Oxide ကဲ့သို့ မပျော်ဝင်သော ဘေ့စ်တစ်ခုမှ Copper Sulfate ကဲ့သို့ ပျော်ဝင်နိုင်သော ဆားတစ်ခုကို ပြင်ဆင်ရန် Sulfuric Acid ထဲသို့ Copper Oxide ကို အတိအကျမဟုတ်ဘဲ ပိုလျှံအောင် အဘယ်ကြောင့် ထည့်ရသနည်း။",
          optionsEn: [
            "To ensure all the acid reacts completely, leaving only unreacted solid to be filtered off, with no leftover acid in the salt solution",
            "Because excess copper oxide reacts faster",
            "To make the solution a different colour",
            "Excess solid is always cheaper to buy",
          ],
          optionsMy: [
            "အက်ဆစ်အားလုံး လုံးဝ ဓာတ်ပြု ကုန်စေရန်၊ ဓာတ်ပြုမှု မလုပ်ရသေးသော အစိုင်အခဲသာ ကျန်ရစ်ကာ စစ်ထုတ်ရန်၊ ဆားပျော်ရည်ထဲတွင် အက်ဆစ် ကျန်ရစ်ခြင်း မရှိစေရန်",
            "ပိုလျှံသော Copper Oxide သည် ပို၍ မြန်စွာ ဓာတ်ပြုသောကြောင့်",
            "ပျော်ရည်ကို မတူညီသော အရောင် ဖြစ်စေရန်",
            "ပိုလျှံသော အစိုင်အခဲသည် ဝယ်ယူရန် အမြဲ ပို၍ ဈေးသက်သာသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "If the acid were left in excess instead, the final evaporated salt would still contain unreacted, corrosive acid.",
            "This 'excess solid' method works because unreacted solid copper oxide can simply be filtered out, but unreacted acid cannot.",
          ],
          hintsMy: [
            "အက်ဆစ်ကို ပိုလျှံအောင် ချန်ထားလိုက်ပါက နောက်ဆုံး ရေခိုက်ခန်းသွင်းထားသော ဆားထဲတွင် ဓာတ်ပြုမှု မလုပ်ရသေးသော ဒေါက်ဆိုင်သော အက်ဆစ် ဆက်ကျန်နေဦးမည်ဖြစ်သည်။",
            "ဓာတ်ပြုမှု မလုပ်ရသေးသော Copper Oxide အစိုင်အခဲကို စစ်ထုတ်ရုံဖြင့် ဖယ်ရှားနိုင်သော်လည်း ဓာတ်ပြုမှု မလုပ်ရသေးသော အက်ဆစ်ကို မဖယ်ရှားနိုင်သောကြောင့် ဤ 'ပိုလျှံအစိုင်အခဲ' နည်းလမ်းသည် အလုပ်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why must the titration method (not the excess solid method) be used to prepare a soluble salt from sodium hydroxide and hydrochloric acid?",
          questionMy:
              "Sodium Hydroxide နှင့် Hydrochloric Acid တို့မှ ပျော်ဝင်နိုင်သော ဆားတစ်ခုကို ပြင်ဆင်ရန် ပိုလျှံအစိုင်အခဲ နည်းလမ်းအစား Titration နည်းလမ်းကို အသုံးပြုရသည့် အကြောင်းရင်းကား အဘယ်နည်း။",
          optionsEn: [
            "Both sodium hydroxide and hydrochloric acid are soluble, so there is no undissolved excess solid to filter off and identify the endpoint",
            "Sodium hydroxide is a gas, not a solid or liquid",
            "Hydrochloric acid does not react with sodium hydroxide",
            "Titration is always required for every single salt preparation",
          ],
          optionsMy: [
            "Sodium Hydroxide နှင့် Hydrochloric Acid နှစ်ခုစလုံးသည် ပျော်ဝင်နိုင်သောကြောင့် စစ်ထုတ်ရန် သို့မဟုတ် အဆုံးမှတ်ကို ဖော်ထုတ်ရန် မပျော်ဝင်သော ပိုလျှံအစိုင်အခဲ မရှိပါ",
            "Sodium Hydroxide သည် ဓာတ်ငွေ့ဖြစ်ပြီး အစိုင်အခဲ သို့မဟုတ် အရည် မဟုတ်သောကြောင့်",
            "Hydrochloric Acid သည် Sodium Hydroxide နှင့် ဓာတ်မပြုသောကြောင့်",
            "Titration ကို ဆားပြင်ဆင်ရေး တိုင်းအတွက် အမြဲ လိုအပ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "An indicator and careful volume measurement are needed to find the exact point of neutralisation when both reactants are soluble solutions.",
          ],
          hintsMy: [
            "ဓာတ်ပြုပစ္စည်း နှစ်ခုစလုံး ပျော်ရည်များ ဖြစ်သည့်အခါ Neutralisation ၏ အတိအကျ အချက်ကို ရှာဖွေရန် Indicator နှင့် သေချာသော ပမာဏ တိုင်းတာမှု လိုအပ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w18-d2",
      dayNumber: 2,
      titleEn: "Match: Salt Preparation Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ဆားပြင်ဆင်ရေး ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w18-dm-1",
          termEn: "Water of crystallisation",
          termMy: "Water of Crystallisation",
          matchEn:
              "Water molecules chemically bound within the crystal structure of a hydrated salt",
          matchMy:
              "ရေဓာတ်ဖျော်ဆားတစ်ခု၏ ပုံဆောင်ခဲ ဖွဲ့စည်းပုံအတွင်း ဓာတုနည်းဖြင့် ချည်နှောင်ထားသော ရေမော်လီကျူးများ",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w18-dm-2",
          termEn: "Hydrated",
          termMy: "Hydrated",
          matchEn:
              "Containing water of crystallisation, such as blue hydrated copper sulfate (CuSO4.5H2O)",
          matchMy:
              "အပြာရောင် Hydrated Copper Sulfate (CuSO4.5H2O) ကဲ့သို့ Water of Crystallisation ပါဝင်ခြင်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w18-dm-3",
          termEn: "Precipitation",
          termMy: "Precipitation",
          matchEn:
              "Mixing two soluble salt solutions so their ions combine to form an insoluble solid",
          matchMy:
              "ပျော်ဝင်နိုင်သော ဆားပျော်ရည် နှစ်မျိုးကို ရောစပ်ကာ ၎င်းတို့၏ Ion များ ပေါင်းစပ်၍ မပျော်ဝင်သော အစိုင်အခဲ ဖွဲ့စည်းစေခြင်း",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w18-dm-4",
          termEn: "Filtration",
          termMy: "Filtration",
          matchEn:
              "Separating an insoluble solid from a liquid by passing the mixture through filter paper",
          matchMy:
              "အရောအနှောကို စစ်ကာမျက်နှာဖြင့် ဖြတ်ကာ မပျော်ဝင်သော အစိုင်အခဲကို အရည်မှ ခွဲထုတ်ခြင်း",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w18-dm-5",
          termEn: "Crystallisation",
          termMy: "Crystallisation",
          matchEn:
              "Slowly evaporating a saturated salt solution so that solid crystals form as it cools",
          matchMy:
              "ငြိမ်ဖြိုးသောဆားပျော်ရည်ကို ဖြည်းညင်းစွာ ငွေ့ပျံစေကာ အေးလာစဉ် ပုံဆောင်ခဲများ ဖွဲ့စည်းလာစေခြင်း",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w18-d3",
      dayNumber: 3,
      titleEn: "Sort: Which Salt Preparation Method?",
      titleMy: "စီစစ်ကြမည် - မည်သည့် ဆားပြင်ဆင်ရေး နည်းလမ်းနည်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Excess Solid Method",
          "Titration Method",
          "Precipitation Method",
        ],
        bucketsMy: [
          "Excess Solid Method",
          "Titration Method",
          "Precipitation Method",
        ],
        items: [
          SortingItem(
            id: "igcsechem-w18-sort-1",
            labelEn:
                "Preparing copper sulfate from insoluble copper oxide and dilute sulfuric acid",
            labelMy:
                "မပျော်ဝင်သော Copper Oxide နှင့် ရေဖျော် Sulfuric Acid မှ Copper Sulfate ပြင်ဆင်ခြင်း",
            correctBucketEn: "Excess Solid Method",
            correctBucketMy: "Excess Solid Method",
          ),
          SortingItem(
            id: "igcsechem-w18-sort-2",
            labelEn:
                "Preparing sodium chloride from soluble sodium hydroxide and soluble hydrochloric acid",
            labelMy:
                "ပျော်ဝင်သော Sodium Hydroxide နှင့် ပျော်ဝင်သော Hydrochloric Acid မှ Sodium Chloride ပြင်ဆင်ခြင်း",
            correctBucketEn: "Titration Method",
            correctBucketMy: "Titration Method",
          ),
          SortingItem(
            id: "igcsechem-w18-sort-3",
            labelEn:
                "Preparing insoluble lead iodide by mixing lead nitrate solution with potassium iodide solution",
            labelMy:
                "Lead Nitrate ပျော်ရည်ကို Potassium Iodide ပျော်ရည်နှင့် ရောစပ်ကာ မပျော်ဝင်သော Lead Iodide ပြင်ဆင်ခြင်း",
            correctBucketEn: "Precipitation Method",
            correctBucketMy: "Precipitation Method",
          ),
          SortingItem(
            id: "igcsechem-w18-sort-4",
            labelEn:
                "Preparing zinc sulfate from insoluble zinc carbonate and dilute sulfuric acid",
            labelMy:
                "မပျော်ဝင်သော Zinc Carbonate နှင့် ရေဖျော် Sulfuric Acid မှ Zinc Sulfate ပြင်ဆင်ခြင်း",
            correctBucketEn: "Excess Solid Method",
            correctBucketMy: "Excess Solid Method",
          ),
          SortingItem(
            id: "igcsechem-w18-sort-5",
            labelEn:
                "Preparing insoluble barium sulfate by mixing barium chloride solution with sodium sulfate solution",
            labelMy:
                "Barium Chloride ပျော်ရည်ကို Sodium Sulfate ပျော်ရည်နှင့် ရောစပ်ကာ မပျော်ဝင်သော Barium Sulfate ပြင်ဆင်ခြင်း",
            correctBucketEn: "Precipitation Method",
            correctBucketMy: "Precipitation Method",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w18-d4",
      dayNumber: 4,
      titleEn: "Reading: Growing Copper Sulfate Crystals",
      titleMy:
          "စာဖတ်ခြင်း - Copper Sulfate ပုံဆောင်ခဲများ ပြုစုပျိုးထောင်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Growing Copper Sulfate Crystals",
        titleMy: "Copper Sulfate ပုံဆောင်ခဲများ ပြုစုပျိုးထောင်ခြင်း",
        passageEn:
            "For her practical assessment, Shin Thant was set the classic IGCSE task of preparing pure, dry crystals of hydrated copper sulfate starting from black copper oxide powder and dilute sulfuric acid. Ko Zaw reminded her of the golden rule before she began: copper oxide is insoluble, so it must be added in excess to guarantee every last trace of the acid reacts.\n\nShe warmed a measured volume of dilute sulfuric acid gently in a beaker, then added copper oxide powder a spatula at a time, stirring after each addition. As the reaction proceeded, the mixture turned from colourless to a deepening blue, since copper sulfate solution is blue. She kept adding copper oxide until a layer of unreacted black powder remained visible and undissolved at the bottom even after stirring -- proof, Ko Zaw confirmed, that all the acid had been used up and no unreacted acid remained in solution.\n\nShin Thant then filtered the mixture through filter paper into a clean evaporating basin, leaving the excess black copper oxide behind on the paper and collecting only the clear blue filtrate. She gently heated the filtrate to evaporate off some of the water, testing readiness by dipping a glass rod into the solution and checking whether crystals formed on cooling at the rod's tip -- a saturated solution. Finally, she left the basin undisturbed for several days to cool and crystallise slowly, allowing large, well-formed blue crystals of hydrated copper sulfate to grow, rather than rushing the evaporation to dryness, which would have produced only a fine powder instead of proper crystals.",
        passageMy:
            "သူမ၏ လက်တွေ့ အကဲဖြတ်မှုအတွက် ရှင်သန့်သည် အနက်ရောင် Copper Oxide မှုန့်နှင့် ရေဖျော် Sulfuric Acid မှစတင်ကာ ရေဓာတ်ဖျော် Copper Sulfate ၏ စင်ကြယ်၍ ခြောက်သွေ့သော ပုံဆောင်ခဲများကို ပြင်ဆင်ရန် ဆန်းပြားသော IGCSE တာဝန်ကို ရရှိခဲ့သည်။ Copper Oxide သည် မပျော်ဝင်သောကြောင့် အက်ဆစ်၏ နောက်ဆုံးအထိ ဓာတ်ပြု ကုန်စေရန် ပိုလျှံအောင် ထည့်ရမည်ဆိုသော ရွှေစည်းမျဉ်းကို ကိုဇော်သည် သူမ မစတင်မီ သတိပေးခဲ့သည်။\n\nသူမသည် ရေဖျော် Sulfuric Acid တိုင်းတာထားသော ပမာဏတစ်ခုကို ဘီကာထဲတွင် ဖြည်းညင်းစွာ နွေးအောင်လုပ်ပြီး Copper Oxide မှုန့်ကို ဇွန်းငယ်တစ်ဇွန်းစီ ထည့်ကာ ထည့်တိုင်း လှုပ်ရှားခဲ့သည်။ ဓာတ်ပြုမှု ဆက်လက်ဖြစ်ပေါ်နေစဉ် Copper Sulfate ပျော်ရည်သည် အပြာရောင် ဖြစ်သောကြောင့် အရောအနှောသည် အရောင်မဲ့မှ တဖြည်းဖြည်း အပြာရောင် နက်သွားခဲ့သည်။ လှုပ်ရှားပြီးနောက်တွင်ပင် အောက်ခြေတွင် ဓာတ်ပြုမှု မလုပ်ရသေးသော အနက်ရောင် မှုန့်အလွှာ မပျော်ဝင်ဘဲ မြင်နေရအထိ Copper Oxide ကို ဆက်လက် ထည့်ခဲ့သည် -- ၎င်းသည် အက်ဆစ်အားလုံး သုံးစွဲပြီးဖြစ်ကာ ပျော်ရည်ထဲတွင် ဓာတ်ပြုမှု မလုပ်ရသေးသော အက်ဆစ် ကျန်ရစ်ခြင်း မရှိတော့ကြောင်း သက်သေအထောက်အထားဖြစ်သည်ဟု ကိုဇော် အတည်ပြုခဲ့သည်။\n\nထို့နောက် ရှင်သန့်သည် အရောအနှောကို စစ်ကာမျက်နှာဖြင့် သန့်ရှင်းသော ငွေ့ပျံစေသည့် ခွက်ထဲသို့ စစ်ထုတ်ကာ ပိုလျှံသော အနက်ရောင် Copper Oxide ကို စက္ကူပေါ်တွင် ကျန်ရစ်စေပြီး ပြင်းလင်းသော အပြာရောင် Filtrate ကိုသာ စုဆောင်းခဲ့သည်။ ရေအနည်းငယ်ကို ငွေ့ပျံစေရန် Filtrate ကို ဖြည်းညင်းစွာ အပူပေးကာ ဖန်ချောင်းတစ်ချောင်းကို ပျော်ရည်ထဲသို့ နှစ်ချကာ ချောင်း၏ အဖျားတွင် အေးသွားစဉ် ပုံဆောင်ခဲများ ဖွဲ့စည်းမည်လား စစ်ဆေးခြင်းဖြင့် အသင့်ဖြစ်မှုကို စစ်ဆေးခဲ့သည် -- ၎င်းသည် ငြိမ်ဖြိုးသော ပျော်ရည်တစ်ခု ဖြစ်သည်။ နောက်ဆုံးတွင် သူမသည် ခွက်ကို ရက်သတ္တပတ် အနည်းငယ်ကြာ မထိမထိန်း ချန်ထားကာ ဖြည်းညင်းစွာ အေးစေပြီး ပုံဆောင်ခဲပေါင်းစေခဲ့သည်၊ ခြောက်သွေ့သည်အထိ ငွေ့ပျံမှုကို အလျင်စလို လုပ်ခြင်းအစား ဤသို့ ပြုလုပ်ခြင်းက ရေဓာတ်ဖျော် Copper Sulfate ၏ ကြီးမားပြီး ကောင်းစွာ ပုံသဏ္ဌာန်ဖော်ထားသော အပြာရောင် ပုံဆောင်ခဲကြီးများ ကြီးထွားလာစေခဲ့သည်၊ အလျင်စလို ငွေ့ပျံစေခဲ့ပါက မှုန့်ညက်ငယ်ကိုသာ ရရှိမည်ဖြစ်ပြီး မှန်ကန်သော ပုံဆောင်ခဲများ ရလိမ့်မည် မဟုတ်ချေ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, why must copper oxide be added in excess?",
            questionMy:
                "Copper Oxide ကို ပိုလျှံအောင် ထည့်ရမည့် အကြောင်းရင်းကို စာပိုဒ် ၁ အရ ဖော်ပြပါ။",
            optionsEn: [
              "To guarantee every last trace of the acid reacts, since copper oxide is insoluble and easy to filter out",
              "Because copper oxide is very expensive",
              "To make the solution a darker colour",
              "Because sulfuric acid is insoluble in water",
            ],
            optionsMy: [
              "Copper Oxide သည် မပျော်ဝင်၍ စစ်ထုတ်ရန် လွယ်ကူသောကြောင့် အက်ဆစ်၏ နောက်ဆုံးအထိ ဓာတ်ပြု ကုန်ကြောင်း အာမခံရန်",
              "Copper Oxide သည် အလွန် ဈေးကြီးသောကြောင့်",
              "ပျော်ရည်ကို ပို၍ မှောင်သော အရောင် ဖြစ်စေရန်",
              "Sulfuric Acid သည် ရေတွင် မပျော်ဝင်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence with the 'golden rule' Ko Zaw stated.",
            ],
            hintsMy: [
              "ကိုဇော် ပြောကြားခဲ့သော 'ရွှေစည်းမျဉ်း' ပါဝင်သော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what confirmed that all the acid had reacted?",
            questionMy:
                "အက်ဆစ်အားလုံး ဓာတ်ပြုပြီးကြောင်း အဘယ်အရာက အတည်ပြုခဲ့သနည်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "A layer of unreacted black powder remained visible and undissolved at the bottom even after stirring",
              "The solution turned completely colourless",
              "The beaker cracked",
              "Bubbles stopped forming immediately",
            ],
            optionsMy: [
              "လှုပ်ရှားပြီးနောက်တွင်ပင် ဓာတ်ပြုမှု မလုပ်ရသေးသော အနက်ရောင် မှုန့်အလွှာ မပျော်ဝင်ဘဲ မြင်နေရသေးခြင်း",
              "ပျော်ရည်သည် လုံးဝ အရောင်မဲ့ ဖြစ်သွားခြင်း",
              "ဘီကာ ကွဲသွားခြင်း",
              "ပူဖောင်းများ ချက်ချင်း ဖြစ်ပေါ်ခြင်း ရပ်တန့်သွားခြင်း",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence describing what Ko Zaw confirmed as proof.",
            ],
            hintsMy: [
              "ကိုဇော် သက်သေအထောက်အထားအဖြစ် အတည်ပြုခဲ့သော အချက်ကို ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why did Shin Thant leave the basin undisturbed for several days instead of rapidly evaporating it to dryness?",
            questionMy:
                "ခွက်ကို ခြောက်သွေ့သည်အထိ အမြန် ငွေ့ပျံစေခြင်းအစား ရက်သတ္တပတ် အနည်းငယ် မထိမထိန်း ချန်ထားရသည့် အကြောင်းရင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Slow cooling allows large, well-formed crystals to grow, while rapid evaporation would only produce a fine powder",
              "It was simply more convenient for her schedule",
              "Rapid evaporation would have destroyed the copper sulfate entirely",
              "The filter paper needed extra time to dry separately",
            ],
            optionsMy: [
              "ဖြည်းညင်းစွာ အေးစေခြင်းက ကြီးမား၍ ကောင်းစွာ ပုံသဏ္ဌာန်ဖော်ထားသော ပုံဆောင်ခဲများ ကြီးထွားစေသော်လည်း အမြန် ငွေ့ပျံစေခြင်းက မှုန့်ညက်ငယ်ကိုသာ ထုတ်ပေးမည်ဖြစ်သောကြောင့်",
              "သူမ၏ အချိန်ဇယားအတွက် ပို၍ အဆင်ပြေသောကြောင့်",
              "အမြန် ငွေ့ပျံစေခြင်းက Copper Sulfate ကို လုံးဝ ဖျက်ဆီးမည်ဖြစ်သောကြောင့်",
              "စစ်ကာမျက်နှာ စက္ကူသည် သီးခြား ခြောက်သွေ့ရန် အချိန်ပို လိုအပ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the last sentence contrasting slow crystallisation with rapid evaporation to dryness.",
            ],
            hintsMy: [
              "ဖြည်းညင်းသော ပုံဆောင်ခဲပေါင်းခြင်းနှင့် ခြောက်သွေ့သည်အထိ အမြန် ငွေ့ပျံစေခြင်းကို နှိုင်းယှဉ်ထားသော နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w18-d5",
      dayNumber: 5,
      titleEn: "Week 18 Recap: Salt Preparation",
      titleMy: "ဆယ့်ရှစ်ပတ် ပြန်လည်သုံးသပ်ခြင်း - ဆားပြင်ဆင်ရေး",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The excess solid method is used when the base is...",
          questionMy:
              "ဘေ့စ်သည် ...ဖြစ်သည့်အခါ Excess Solid Method ကို အသုံးပြုသည်",
          optionsEn: ["Insoluble", "Soluble", "A gas", "A strong acid"],
          optionsMy: ["မပျော်ဝင်", "ပျော်ဝင်", "ဓာတ်ငွေ့", "ခိုင်မာသော အက်ဆစ်"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Precipitation is used to prepare a salt that is...",
          questionMy:
              "ဆားတစ်မျိုးသည် ...ဖြစ်ပါက ၎င်းကို ပြင်ဆင်ရန် Precipitation ကို အသုံးပြုသည်",
          optionsEn: [
            "Insoluble",
            "Soluble",
            "A gas at room temperature",
            "An alkali",
          ],
          optionsMy: [
            "မပျော်ဝင်",
            "ပျော်ဝင်",
            "အခန်းအပူချိန်တွင် ဓာတ်ငွေ့",
            "အယ်လကာလိုင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Water of crystallisation refers to water molecules that are...",
          questionMy:
              "Water of Crystallisation ဆိုသည်မှာ ...ရေမော်လီကျူးများကို ရည်ညွှန်းသည်",
          optionsEn: [
            "Chemically bound within a hydrated crystal's structure",
            "Simply mixed in as an impurity",
            "Never actually present in any salt",
            "Only found in gases",
          ],
          optionsMy: [
            "ရေဓာတ်ဖျော် ပုံဆောင်ခဲ၏ ဖွဲ့စည်းပုံအတွင်း ဓာတုနည်းဖြင့် ချည်နှောင်ထားခြင်း",
            "ညစ်ညမ်းစေသောပစ္စည်းအဖြစ် ရိုးရိုးရှင်းရှင်း ရောစပ်ထားခြင်း",
            "ဆားမည်သည်တွင်မျှ အမှန်တကယ် လုံးဝ မရှိခြင်း",
            "ဓာတ်ငွေ့များတွင်သာ တွေ့ရှိရခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 19: "The Periodic Table Trends"
// =====================================================================

const CourseWeekDef _igcseChemWeek19 = CourseWeekDef(
  id: "course-igcse-chem-w19",
  weekNumber: 19,
  titleEn: "The Periodic Table Trends",
  titleMy: "ဒြပ်စင်အလှည့်ကျဇယား လက္ခဏာများ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w19-d1",
      dayNumber: 1,
      titleEn: "Group I: The Alkali Metals",
      titleMy: "အုပ်စု ၁ - Alkali သတ္တုများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Why does reactivity increase going down Group I from lithium to potassium?",
          questionMy:
              "Lithium မှ Potassium သို့ Group I အောက်သို့ ဆင်းသွားစဉ် ဓာတ်ပြုနိုင်စွမ်း တိုးလာသည့် အကြောင်းရင်းကား အဘယ်နည်း။",
          optionsEn: [
            "The single outer-shell electron is further from the nucleus and more shielded, so it is lost more easily",
            "Lower atoms have more protons pulling electrons in tightly",
            "The atoms get physically smaller down the group",
            "Reactivity has nothing to do with electron arrangement",
          ],
          optionsMy: [
            "အပြင်ဆုံးအခွံရှိ Electron တစ်လုံးသည် နျူကလိယပ်နှင့် ပို၍ ဝေးကွာပြီး Shielding ပို၍ များသဖြင့် ပို၍ လွယ်ကူစွာ ဆုံးရှုံးသည်",
            "အောက်ဘက်ရှိ အက်တမ်များတွင် Electron များကို တင်းတင်းကျပ်ကျပ် ဆွဲငင်ပေးသော Proton ပို၍ များသည်",
            "အုပ်စု၏ အောက်ဘက်သို့ ဆင်းသွားစဉ် အက်တမ်များသည် ရုပ်ပိုင်းဆိုင်ရာ ပို၍ သေးငယ်လာသည်",
            "ဓာတ်ပြုနိုင်စွမ်းသည် Electron စီစဉ်ပုံနှင့် မည်သည့်ဆက်နွှယ်မှုမျှ မရှိပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Group I metals lose their single outer electron to form a +1 ion; the easier that electron is to lose, the more reactive the metal.",
            "Going down the group, atoms get larger, so the outer electron sits further away and is shielded by more inner shells.",
          ],
          hintsMy: [
            "Group I သတ္တုများသည် +1 Ion ဖွဲ့စည်းရန် အပြင်ဆုံးအခွံရှိ Electron တစ်လုံးကို ဆုံးရှုံးသည်; ထို Electron ကို ဆုံးရှုံးရန် ပို၍ လွယ်ကူလေ၊ သတ္တုသည် ပို၍ ဓာတ်ပြုနိုင်စွမ်း ရှိလေ ဖြစ်သည်။",
            "အုပ်စု၏ အောက်ဘက်သို့ ဆင်းသွားစဉ် အက်တမ်များသည် ပို၍ ကြီးလာပြီး အပြင်ဆုံး Electron သည် ပို၍ ဝေးကွာစွာ နေရာယူကာ အတွင်းပိုင်း အခွံများ ပို၍ များစွာ Shield လုပ်ခံရသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "When sodium reacts with water, which two products form?",
          questionMy:
              "Sodium သည် ရေနှင့် ဓာတ်ပြုသည့်အခါ ထွက်ကုန် နှစ်မျိုးကား အဘယ်နည်း။",
          optionsEn: [
            "Sodium hydroxide solution and hydrogen gas",
            "Sodium oxide and oxygen gas",
            "Sodium chloride and chlorine gas",
            "Sodium carbonate and carbon dioxide",
          ],
          optionsMy: [
            "Sodium Hydroxide ပျော်ရည်နှင့် Hydrogen ဓာတ်ငွေ့",
            "Sodium Oxide နှင့် Oxygen ဓာတ်ငွေ့",
            "Sodium Chloride နှင့် Chlorine ဓာတ်ငွေ့",
            "Sodium Carbonate နှင့် Carbon Dioxide",
          ],
          correctIndex: 0,
          hintsEn: [
            "2Na + 2H2O -> 2NaOH + H2. Sodium fizzes, may melt into a ball, and can ignite from the heat of reaction.",
          ],
          hintsMy: [
            "2Na + 2H2O -> 2NaOH + H2 ။ Sodium သည် ဖူးဖူးထစီးကာ လုံးပြင်အဖြစ် အရည်ပျော်တတ်ပြီး ဓာတ်ပြုမှုအပူကြောင့် မီးလည်း ရှို့ချနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these is a correctly stated physical property of the Group I alkali metals?",
          questionMy:
              "Group I Alkali သတ္တုများ၏ မှန်ကန်စွာ ဖော်ပြထားသော ရုပ်ပိုင်းဆိုင်ရာ ဂုဏ်သတ္တိကား အဘယ်နည်း။",
          optionsEn: [
            "They are soft enough to be cut with a knife and have low density -- lithium, sodium, and potassium all float on water",
            "They are extremely hard, dense metals like transition metals",
            "They have very high melting points, well above 1000C",
            "They are completely unreactive with water and air",
          ],
          optionsMy: [
            "ဓားဖြင့် ဖြတ်နိုင်လောက်အောင် နူးညံ့ပြီး သိပ်သည်းဆ နည်းသည် -- Lithium၊ Sodium နှင့် Potassium အားလုံးသည် ရေပေါ်တွင် မျောနေသည်",
            "Transition Metals များကဲ့သို့ ခက်ခဲ၍ သိပ်သည်းဆ များသည်",
            "1000C ထက် များစွာ မြင့်သော အရည်ပျော်ချိန် ရှိသည်",
            "ရေနှင့် လေနှင့် လုံးဝ ဓာတ်မပြု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Group I metals have a distinctively low melting point and density compared to typical metals, which decreases further down the group.",
          ],
          hintsMy: [
            "Group I သတ္တုများသည် ပုံမှန် သတ္တုများနှင့် နှိုင်းယှဉ်လျှင် ထင်ရှားစွာ နိမ့်သော အရည်ပျော်ချိန်နှင့် သိပ်သည်းဆ ရှိပြီး အုပ်စု၏ အောက်ဘက်သို့ ဆင်းသွားစဉ် ထပ်မံ လျော့ကျသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w19-d2",
      dayNumber: 2,
      titleEn: "Match: Periodic Table Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ဒြပ်စင်အလှည့်ကျဇယား ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w19-dm-1",
          termEn: "Halogen",
          termMy: "Halogen",
          matchEn:
              "A Group VII non-metal existing as diatomic molecules, such as chlorine (Cl2) or bromine (Br2)",
          matchMy:
              "Chlorine (Cl2) သို့မဟုတ် Bromine (Br2) ကဲ့သို့ Diatomic မော်လီကျူးများအဖြစ် ရှိနေသော Group VII သတ္တုမဟုတ်သည့် ဒြပ်စင်",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w19-dm-2",
          termEn: "Displacement reaction",
          termMy: "Displacement Reaction",
          matchEn:
              "A reaction in which a more reactive halogen displaces a less reactive one from a solution of its salt",
          matchMy:
              "ဓာတ်ပြုနိုင်စွမ်း ပို၍ ရှိသော Halogen တစ်ခုသည် ဓာတ်ပြုနိုင်စွမ်း နည်းသော Halogen တစ်ခုကို ၎င်း၏ ဆားပျော်ရည်မှ နေရာလွှဲပြောင်းစေသော ဓာတ်ပြုမှု",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w19-dm-3",
          termEn: "Noble gas",
          termMy: "Noble Gas",
          matchEn:
              "A Group VIII/0 element with a full outer electron shell, making it almost completely unreactive",
          matchMy:
              "အပြင်ဆုံးအခွံ Electron အပြည့် ရှိကာ ဓာတ်ပြုနိုင်စွမ်း လုံးဝနီးပါး မရှိစေသော Group VIII/0 ဒြပ်စင်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w19-dm-4",
          termEn: "Transition element",
          termMy: "Transition Element",
          matchEn:
              "A dense, high-melting-point metal that forms coloured compounds and often acts as a catalyst",
          matchMy:
              "သိပ်သည်းဆမြင့်၊ အရည်ပျော်ချိန်မြင့်ပြီး အရောင်ရှိသော ဒြပ်ပေါင်းများ ဖွဲ့စည်းကာ Catalyst အဖြစ် မကြာခဏ လုပ်ဆောင်သော သတ္တု",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w19-dm-5",
          termEn: "Periodicity",
          termMy: "Periodicity",
          matchEn:
              "The repeating pattern of physical and chemical properties across periods of the Periodic Table",
          matchMy:
              "ဒြပ်စင်အလှည့်ကျဇယား၏ အတန်းများတစ်လျှောက် ရုပ်ပိုင်းနှင့် ဓာတုဂုဏ်သတ္တိများ ထပ်ခါထပ်ခါ ပုံစံပေါ်ခြင်း",
          colorValue: 0xFF00BCD4,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w19-d3",
      dayNumber: 3,
      titleEn: "Sort: Group I, Group VII, Noble Gas, or Transition Metal?",
      titleMy:
          "စီစစ်ကြမည် - Group I လား၊ Group VII လား၊ Noble Gas လား၊ Transition Metal လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Group I", "Group VII", "Noble Gas", "Transition Metal"],
        bucketsMy: ["Group I", "Group VII", "Noble Gas", "Transition Metal"],
        items: [
          SortingItem(
            id: "igcsechem-w19-sort-1",
            labelEn:
                "Soft, low-density metal that reacts vigorously with water to release hydrogen",
            labelMy:
                "ရေနှင့် ပြင်းထန်စွာ ဓာတ်ပြုကာ Hydrogen လွှတ်ပေးသော နူးညံ့၍ သိပ်သည်းဆနည်းသော သတ္တု",
            correctBucketEn: "Group I",
            correctBucketMy: "Group I",
          ),
          SortingItem(
            id: "igcsechem-w19-sort-2",
            labelEn:
                "Reactivity decreases going down the group; chlorine is more reactive than iodine",
            labelMy:
                "Chlorine သည် Iodine ထက် ပို၍ ဓာတ်ပြုနိုင်စွမ်းရှိပြီး အုပ်စု၏ အောက်ဘက်သို့ ဆင်းသွားစဉ် ဓာတ်ပြုနိုင်စွမ်း လျော့ကျသည်",
            correctBucketEn: "Group VII",
            correctBucketMy: "Group VII",
          ),
          SortingItem(
            id: "igcsechem-w19-sort-3",
            labelEn:
                "Full outer electron shell; used to fill electric light bulbs due to its inertness",
            labelMy:
                "အပြင်ဆုံးအခွံ Electron အပြည့်ရှိပြီး ဓာတ်ပြုနိုင်စွမ်း မရှိသောကြောင့် လျှပ်စစ်မီးသီးထဲ ဖြည့်စွက်ရန် အသုံးပြု",
            correctBucketEn: "Noble Gas",
            correctBucketMy: "Noble Gas",
          ),
          SortingItem(
            id: "igcsechem-w19-sort-4",
            labelEn:
                "Forms coloured compounds and acts as a catalyst in the Haber process",
            labelMy:
                "အရောင်ရှိသော ဒြပ်ပေါင်းများ ဖွဲ့စည်းပြီး Haber Process တွင် Catalyst အဖြစ် လုပ်ဆောင်သည်",
            correctBucketEn: "Transition Metal",
            correctBucketMy: "Transition Metal",
          ),
          SortingItem(
            id: "igcsechem-w19-sort-5",
            labelEn:
                "Melting point decreases going down the group, from lithium to caesium",
            labelMy:
                "Lithium မှ Caesium သို့ အုပ်စု၏ အောက်ဘက်သို့ ဆင်းသွားစဉ် အရည်ပျော်ချိန် လျော့ကျသည်",
            correctBucketEn: "Group I",
            correctBucketMy: "Group I",
          ),
          SortingItem(
            id: "igcsechem-w19-sort-6",
            labelEn:
                "A more reactive member can displace a less reactive one from an aqueous salt solution",
            labelMy:
                "ဓာတ်ပြုနိုင်စွမ်း ပို၍ ရှိသော အဖွဲ့ဝင်တစ်ခုသည် ဓာတ်ပြုနိုင်စွမ်း နည်းသော အဖွဲ့ဝင်တစ်ခုကို ရေဓာတ်ဖျော် ဆားပျော်ရည်မှ နေရာလွှဲပြောင်းနိုင်သည်",
            correctBucketEn: "Group VII",
            correctBucketMy: "Group VII",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w19-d4",
      dayNumber: 4,
      titleEn: "Reading: The Halogen Displacement Demonstration",
      titleMy: "စာဖတ်ခြင်း - Halogen နေရာလွှဲပြောင်းမှု သရုပ်ပြခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The Halogen Displacement Demonstration",
        titleMy: "Halogen နေရာလွှဲပြောင်းမှု သရုပ်ပြခြင်း",
        passageEn:
            "Ko Zaw set up three test tubes for Shin Thant: one containing potassium chloride solution, one containing potassium bromide solution, and one containing potassium iodide solution. To each, he added a small amount of pale green chlorine water and asked her to record what she observed.\n\nThe potassium chloride tube showed no visible change at all, since chlorine cannot displace another chlorine already present. The potassium bromide tube turned a distinct orange colour, and the potassium iodide tube turned a deep brown, almost black. Shin Thant explained the pattern using reactivity: chlorine, sitting above bromine and iodine in Group VII, is more reactive because its outer shell is closer to the nucleus, making it easier to gain the extra electron needed to form a halide ion. Since chlorine is more reactive than both bromine and iodine, it successfully displaced bromide ions to form free bromine (the orange colour) and displaced iodide ions to form free iodine (the brown-black colour), while chloride ions -- already the least reactive halide present -- underwent no such displacement.\n\nKo Zaw then asked what would happen if she reversed the experiment, adding iodine water to a tube of potassium chloride solution instead. Shin Thant correctly predicted no reaction would occur, since iodine sits below chlorine in the group and is therefore less reactive -- a less reactive halogen can never displace a more reactive one from its salt solution. This asymmetry, she realised, was the exact mirror image of what she had learned about Group I the week before: while reactivity increases going down Group I, it decreases going down Group VII, a contrast worth remembering carefully for the exam.",
        passageMy:
            "ကိုဇော်သည် ရှင်သန့်အတွက် စမ်းသပ်ပြွန် သုံးလုံး စီစဉ်ပေးခဲ့သည် - Potassium Chloride ပျော်ရည် ပါဝင်သည့် တစ်လုံး၊ Potassium Bromide ပျော်ရည် ပါဝင်သည့် တစ်လုံးနှင့် Potassium Iodide ပျော်ရည် ပါဝင်သည့် တစ်လုံး။ တစ်ခုစီထဲသို့ ပန်းရောင်ဖျော့ အစိမ်းရောင် Chlorine ရေအနည်းငယ် ထည့်ပြီး သူမ မြင်တွေ့ရသည်ကို မှတ်တမ်းတင်ရန် တောင်းဆိုခဲ့သည်။\n\nPotassium Chloride ပြွန်တွင် မြင်နိုင်သော ပြောင်းလဲမှု လုံးဝ မရှိခဲ့ပါ၊ အကြောင်းမှာ Chlorine သည် ရှိပြီးသား Chlorine တစ်ခုကို နေရာလွှဲပြောင်း၍ မရသောကြောင့် ဖြစ်သည်။ Potassium Bromide ပြွန်သည် ထင်ရှားသော လိမ္မော်ရောင်သို့ ပြောင်းသွားပြီး Potassium Iodide ပြွန်သည် အနက်ရောင်နှင့် နီးစပ်သော အညိုရောင် နက်သို့ ပြောင်းသွားခဲ့သည်။ ရှင်သန့်သည် ဓာတ်ပြုနိုင်စွမ်းကို အသုံးပြု၍ ဤပုံစံကို ရှင်းပြခဲ့သည် - Group VII တွင် Bromine နှင့် Iodine အပေါ်တွင် ရှိနေသော Chlorine သည် ၎င်း၏ အပြင်ဆုံးအခွံသည် နျူကလိယပ်နှင့် ပို၍ နီးကပ်သောကြောင့် ပို၍ ဓာတ်ပြုနိုင်စွမ်း ရှိကာ Halide Ion ဖွဲ့စည်းရန် လိုအပ်သော ထပ်ဆောင်း Electron ကို ရယူရန် ပို၍ လွယ်ကူသည်။ Chlorine သည် Bromine နှင့် Iodine နှစ်ခုစလုံးထက် ပို၍ ဓာတ်ပြုနိုင်စွမ်း ရှိသောကြောင့် Bromide Ion များကို အောင်မြင်စွာ နေရာလွှဲပြောင်းကာ လွတ်လပ်သော Bromine (လိမ္မော်ရောင်) ဖွဲ့စည်းစေပြီး Iodide Ion များကို နေရာလွှဲပြောင်းကာ လွတ်လပ်သော Iodine (အညိုရောင် နက်) ဖွဲ့စည်းစေခဲ့သည်၊ ရှိနေပြီးသား Halide များအနက် ဓာတ်ပြုနိုင်စွမ်း အနည်းဆုံး ဖြစ်သော Chloride Ion များမှာမူ ထိုသို့ နေရာလွှဲပြောင်းမှု လုံးဝ မခံစားရပါ။\n\nထို့နောက် စမ်းသပ်မှုကို ပြောင်းပြန်လှန်ကာ Potassium Chloride ပျော်ရည် ပြွန်ထဲသို့ Iodine ရေ ထည့်ပါက အဘယ်ဖြစ်လာမည်ကို ကိုဇော် မေးမြန်းခဲ့သည်။ Iodine သည် အုပ်စုတွင် Chlorine အောက်တွင် ရှိနေပြီး ထို့ကြောင့် ဓာတ်ပြုနိုင်စွမ်း နည်းသောကြောင့် ဓာတ်ပြုမှု လုံးဝ မဖြစ်ပေါ်ကြောင်း ရှင်သန့် မှန်ကန်စွာ ခန့်မှန်းခဲ့သည် -- ဓာတ်ပြုနိုင်စွမ်း နည်းသော Halogen တစ်ခုသည် ဓာတ်ပြုနိုင်စွမ်း ပို၍ ရှိသော Halogen တစ်ခုကို ၎င်း၏ ဆားပျော်ရည်မှ ဘယ်တော့မှ နေရာလွှဲပြောင်း၍ မရပါ။ ဤ မညီမျှမှုသည် ပြီးခဲ့သော အပတ်က Group I အကြောင်း သင်ယူခဲ့ရသည်နှင့် အတိအကျ ရောင်ပြန်ဟပ်နေသည်ကို သူမ သဘောပေါက်ခဲ့သည် - Group I ၏ အောက်ဘက်သို့ ဆင်းသွားစဉ် ဓာတ်ပြုနိုင်စွမ်း တိုးလာသော်လည်း Group VII ၏ အောက်ဘက်သို့ ဆင်းသွားစဉ်မူ လျော့ကျသည်၊ ဤကွာခြားချက်ကို စာမေးပွဲအတွက် သေချာစွာ မှတ်ထားသင့်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did the potassium chloride tube show no visible change?",
            questionMy:
                "Potassium Chloride ပြွန်တွင် မြင်နိုင်သော ပြောင်းလဲမှု မရှိသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Chlorine cannot displace another chlorine already present",
              "Potassium chloride does not dissolve in water",
              "Chlorine water was not actually added to this tube",
              "The tube was defective",
            ],
            optionsMy: [
              "Chlorine သည် ရှိပြီးသား Chlorine တစ်ခုကို နေရာလွှဲပြောင်း၍ မရသောကြောင့်",
              "Potassium Chloride သည် ရေတွင် မပျော်ဝင်သောကြောင့်",
              "ဤပြွန်ထဲသို့ Chlorine ရေကို အမှန်တကယ် မထည့်ခဲ့သောကြောင့်",
              "ပြွန်သည် ချို့ယွင်းနေသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the first sentence of paragraph 2."],
            hintsMy: ["စာပိုဒ် ၂ ၏ ပထမစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why is chlorine more reactive than bromine and iodine?",
            questionMy:
                "Chlorine သည် Bromine နှင့် Iodine တို့ထက် ပို၍ ဓာတ်ပြုနိုင်စွမ်း ရှိသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Its outer shell is closer to the nucleus, making it easier to gain an extra electron",
              "It is a lighter-coloured gas",
              "It has more protons than bromine and iodine combined",
              "It is a solid rather than a gas",
            ],
            optionsMy: [
              "၎င်း၏ အပြင်ဆုံးအခွံသည် နျူကလိယပ်နှင့် ပို၍ နီးကပ်သဖြင့် ထပ်ဆောင်း Electron ရယူရန် ပို၍ လွယ်ကူသောကြောင့်",
              "ပို၍ ဖျော့သော အရောင် ရှိသော ဓာတ်ငွေ့ ဖြစ်သောကြောင့်",
              "Bromine နှင့် Iodine ပေါင်းထားသည်ထက် Proton ပို၍ များသောကြောင့်",
              "ဓာတ်ငွေ့မဟုတ်ဘဲ အစိုင်အခဲ ဖြစ်သောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining Shin Thant's explanation of the reactivity pattern.",
            ],
            hintsMy: [
              "ဓာတ်ပြုနိုင်စွမ်းပုံစံအကြောင်း ရှင်သန့်၏ ရှင်းပြချက်ကို ဖော်ပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Shin Thant predict would happen if iodine water were added to potassium chloride solution?",
            questionMy:
                "Iodine ရေကို Potassium Chloride ပျော်ရည်ထဲသို့ ထည့်ပါက အဘယ်ဖြစ်လာမည်ဟု ရှင်သန့် ခန့်မှန်းခဲ့သည်ကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "No reaction would occur, since iodine is less reactive than chlorine",
              "A vigorous reaction producing a new gas",
              "The solution would turn purple immediately",
              "The chlorine would be displaced by the iodine",
            ],
            optionsMy: [
              "Iodine သည် Chlorine ထက် ဓာတ်ပြုနိုင်စွမ်း နည်းသောကြောင့် ဓာတ်ပြုမှု လုံးဝ မဖြစ်ပေါ်ပါ",
              "ဓာတ်ငွေ့သစ်တစ်မျိုး ထုတ်ပေးသော ပြင်းထန်သော ဓာတ်ပြုမှု",
              "ပျော်ရည်သည် ချက်ချင်း ခရမ်းရောင် ဖြစ်သွားမည်",
              "Chlorine ကို Iodine က နေရာလွှဲပြောင်းလိမ့်မည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "A less reactive halogen can never displace a more reactive one from its salt solution.",
            ],
            hintsMy: [
              "ဓာတ်ပြုနိုင်စွမ်း နည်းသော Halogen တစ်ခုသည် ဓာတ်ပြုနိုင်စွမ်း ပို၍ ရှိသော Halogen တစ်ခုကို ၎င်း၏ ဆားပျော်ရည်မှ ဘယ်တော့မှ နေရာလွှဲပြောင်း၍ မရပါ။",
            ],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w19-d5",
      dayNumber: 5,
      titleEn: "Week 19 Recap: Periodic Table Trends",
      titleMy:
          "ဆယ့်ကိုးပတ် ပြန်လည်သုံးသပ်ခြင်း - ဒြပ်စင်အလှည့်ကျဇယား လက္ခဏာများ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Going down Group VII, reactivity...",
          questionMy:
              "Group VII ၏ အောက်ဘက်သို့ ဆင်းသွားစဉ် ဓာတ်ပြုနိုင်စွမ်းသည်...",
          optionsEn: [
            "Decreases",
            "Increases",
            "Stays exactly the same",
            "Becomes zero immediately",
          ],
          optionsMy: [
            "လျော့ကျသည်",
            "တိုးလာသည်",
            "အတိအကျ တူညီနေသည်",
            "ချက်ချင်း သုညသို့ ရောက်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Noble gases are almost completely unreactive because they have...",
          questionMy:
              "Noble Gas များသည် ...ရှိသောကြောင့် ဓာတ်ပြုနိုင်စွမ်း လုံးဝနီးပါး မရှိပါ",
          optionsEn: [
            "A full outer electron shell",
            "No electrons at all",
            "Only one outer electron",
            "Extremely high reactivity",
          ],
          optionsMy: [
            "အပြင်ဆုံးအခွံ Electron အပြည့်",
            "Electron လုံးဝ မရှိခြင်း",
            "အပြင်ဆုံးအခွံ Electron တစ်လုံးသာ",
            "ဓာတ်ပြုနိုင်စွမ်း အလွန်မြင့်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Transition metals are typically used industrially as...",
          questionMy:
              "Transition Metal များကို စက်မှုလုပ်ငန်းတွင် များသောအားဖြင့် ...အဖြစ် အသုံးပြုသည်",
          optionsEn: [
            "Catalysts",
            "Explosive fuels",
            "Cooling agents only",
            "Acids",
          ],
          optionsMy: [
            "Catalyst များ",
            "ပေါက်ကွဲစေနိုင်သော လောင်စာများ",
            "အအေးခံပစ္စည်း သက်သက်",
            "အက်ဆစ်များ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);
// =====================================================================
// Week 20: "Inorganic Chemistry Studio" (Term 5 Capstone)
// =====================================================================

const CourseWeekDef _igcseChemWeek20 = CourseWeekDef(
  id: "course-igcse-chem-w20",
  weekNumber: 20,
  titleEn: "Inorganic Chemistry Studio",
  titleMy: "အဂ္ဂနီဗေဒ ဓာတုဗေဒ အလုပ်ရုံ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-igcse-chem-w20-d1",
      dayNumber: 1,
      titleEn: "Combined Salt Prep and Periodic Trends",
      titleMy: "ဆားပြင်ဆင်ရေးနှင့် အလှည့်ကျဇယား လက္ခဏာများ ပေါင်းစပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "To prepare pure crystals of lead sulfate (insoluble), which two soluble solutions should be mixed?",
          questionMy:
              "စင်ကြယ်သော Lead Sulfate (မပျော်ဝင်) ပုံဆောင်ခဲများ ပြင်ဆင်ရန် ပျော်ဝင်နိုင်သော ပျော်ရည် နှစ်မျိုးကို မည်သို့ ရောစပ်ရမည်နည်း။",
          optionsEn: [
            "Lead nitrate solution and a soluble sulfate solution, such as sodium sulfate, then filter off the precipitate",
            "Lead metal and dilute sulfuric acid directly",
            "Lead oxide and water only",
            "Two samples of lead sulfate solution mixed together",
          ],
          optionsMy: [
            "Lead Nitrate ပျော်ရည်နှင့် Sodium Sulfate ကဲ့သို့ ပျော်ဝင်နိုင်သော Sulfate ပျော်ရည်ကို ရောစပ်ပြီး Precipitate ကို စစ်ထုတ်ခြင်း",
            "Lead သတ္တုနှင့် ရေဖျော် Sulfuric Acid ကို တိုက်ရိုက် ရောစပ်ခြင်း",
            "Lead Oxide နှင့် ရေသက်သက်",
            "Lead Sulfate ပျော်ရည် နမူနာ နှစ်ခုကို အတူ ရောစပ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Lead sulfate is insoluble, so the precipitation method is required: mix two soluble solutions whose ions combine to form the insoluble salt.",
          ],
          hintsMy: [
            "Lead Sulfate သည် မပျော်ဝင်သောကြောင့် Precipitation Method လိုအပ်သည်- ၎င်းတို့၏ Ion များ ပေါင်းစပ်ကာ မပျော်ဝင်သော ဆား ဖွဲ့စည်းစေမည့် ပျော်ဝင်နိုင်သော ပျော်ရည် နှစ်မျိုးကို ရောစပ်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "An unknown Group I metal reacts far more vigorously with water than sodium does. Where is it most likely positioned relative to sodium in the group?",
          questionMy:
              "အမည်မသိ Group I သတ္တုတစ်ခုသည် Sodium ထက် ရေနှင့် ပို၍ ပြင်းထန်စွာ ဓာတ်ပြုသည်။ ၎င်းသည် Sodium နှင့် နှိုင်းယှဉ်လျှင် အုပ်စုတွင် မည်သည့်နေရာတွင် ရှိနိုင်ဆုံးနည်း။",
          optionsEn: [
            "Below sodium (e.g. potassium or rubidium), since reactivity increases down Group I",
            "Above sodium (e.g. lithium), since reactivity increases up Group I",
            "It must not be a Group I metal at all",
            "Its position cannot be predicted from reactivity",
          ],
          optionsMy: [
            "Sodium အောက်တွင် (ဥပမာ- Potassium သို့မဟုတ် Rubidium)၊ Group I အောက်ဘက်သို့ ဆင်းသွားစဉ် ဓာတ်ပြုနိုင်စွမ်း တိုးလာသောကြောင့်",
            "Sodium အပေါ်တွင် (ဥပမာ- Lithium)၊ Group I အပေါ်ဘက်သို့ တက်သွားစဉ် ဓာတ်ပြုနိုင်စွမ်း တိုးလာသောကြောင့်",
            "Group I သတ္တု လုံးဝ မဖြစ်ရပါ",
            "ဓာတ်ပြုနိုင်စွမ်းမှ ၎င်း၏ နေရာကို ခန့်မှန်း၍ မရပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Recall the trend: reactivity increases down Group I, so a more vigorous reaction than sodium points to an element below it.",
          ],
          hintsMy: [
            "လမ်းကြောင်းကို သတိရပါ- Group I အောက်ဘက်သို့ ဆင်းသွားစဉ် ဓာတ်ပြုနိုင်စွမ်း တိုးလာသောကြောင့် Sodium ထက် ပို၍ ပြင်းထန်သော ဓာတ်ပြုမှုသည် ၎င်း၏ အောက်ရှိ ဒြပ်စင်တစ်ခုကို ညွှန်ပြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which combination correctly matches an oxide to its acid-base classification?",
          questionMy:
              "အောက်ဆိုဒ်တစ်ခုကို ၎င်း၏ အက်ဆစ်-ဘေ့စ် အမျိုးအစားနှင့် မှန်ကန်စွာ ကိုက်ညီသော ပေါင်းစပ်မှုကား အဘယ်နည်း။",
          optionsEn: [
            "SO2 is acidic; CaO is basic; Al2O3 is amphoteric",
            "SO2 is basic; CaO is acidic; Al2O3 is neutral",
            "SO2 is amphoteric; CaO is amphoteric; Al2O3 is acidic",
            "All three oxides are neutral",
          ],
          optionsMy: [
            "SO2 သည် Acidic; CaO သည် Basic; Al2O3 သည် Amphoteric",
            "SO2 သည် Basic; CaO သည် Acidic; Al2O3 သည် Neutral",
            "SO2 သည် Amphoteric; CaO သည် Amphoteric; Al2O3 သည် Acidic",
            "သုံးမျိုးလုံးသည် Neutral ဖြစ်ကြသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Non-metal oxides (like sulfur dioxide) tend to be acidic; most metal oxides (like calcium oxide) are basic; a few metal oxides like aluminium oxide are amphoteric.",
          ],
          hintsMy: [
            "သတ္တုမဟုတ်သော အောက်ဆိုဒ်များ (Sulfur Dioxide ကဲ့သို့) သည် Acidic ဖြစ်လေ့ရှိပြီး၊ သတ္တု အောက်ဆိုဒ်အများစု (Calcium Oxide ကဲ့သို့) သည် Basic ဖြစ်ကာ Aluminium Oxide ကဲ့သို့ သတ္တု အောက်ဆိုဒ် အနည်းငယ်သည် Amphoteric ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w20-d2",
      dayNumber: 2,
      titleEn: "Match: Term 5 Recap Vocabulary",
      titleMy: "တွဲစပ်ကြမည် - ပဉ္စမတန်း ပြန်လည်သုံးသပ်ခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "igcsechem-w20-dm-1",
          termEn: "pH scale",
          termMy: "pH Scale",
          matchEn:
              "A 0-14 scale measuring how acidic or alkaline a solution is",
          matchMy:
              "ပျော်ရည်တစ်ခု မည်မျှ အက်ဆစ် သို့မဟုတ် အယ်လကာလိုင်း ဖြစ်ကြောင်း တိုင်းတာသည့် ၀-၁၄ စကေး",
          colorValue: 0xFF3F51B5,
        ),
        DragMatchPair(
          id: "igcsechem-w20-dm-2",
          termEn: "Excess solid method",
          termMy: "Excess Solid Method",
          matchEn:
              "Preparing a soluble salt by adding excess insoluble base to an acid, then filtering",
          matchMy:
              "မပျော်ဝင်သော ဘေ့စ်ကို အက်ဆစ်ထဲသို့ ပိုလျှံအောင် ထည့်ပြီး စစ်ထုတ်ကာ ပျော်ဝင်နိုင်သော ဆား ပြင်ဆင်ခြင်း",
          colorValue: 0xFF4CAF50,
        ),
        DragMatchPair(
          id: "igcsechem-w20-dm-3",
          termEn: "Halogen reactivity",
          termMy: "Halogen Reactivity",
          matchEn:
              "Decreases going down Group VII, opposite to the trend in Group I",
          matchMy:
              "Group VII ၏ အောက်ဘက်သို့ ဆင်းသွားစဉ် လျော့ကျသည်၊ Group I ၏ လမ်းကြောင်းနှင့် ဆန့်ကျင်ဖက်",
          colorValue: 0xFFFF9800,
        ),
        DragMatchPair(
          id: "igcsechem-w20-dm-4",
          termEn: "Solubility rules",
          termMy: "Solubility Rules",
          matchEn:
              "The memorised set of facts about which salts dissolve and which do not",
          matchMy:
              "ဆားများ မည်သည်တို့ ပျော်ဝင်ပြီး မည်သည်တို့ မပျော်ဝင်ကြောင်း အလွတ်ကျက်ထားသော အချက်အလက်များ",
          colorValue: 0xFF9C27B0,
        ),
        DragMatchPair(
          id: "igcsechem-w20-dm-5",
          termEn: "Transition metal catalyst",
          termMy: "Transition Metal Catalyst",
          matchEn:
              "A transition metal or its compound used to speed up an industrial reaction",
          matchMy:
              "စက်မှုလုပ်ငန်း ဓာတ်ပြုမှုတစ်ခုကို အရှိန်မြှင့်ရန် အသုံးပြုသော Transition Metal သို့မဟုတ် ၎င်း၏ ဒြပ်ပေါင်း",
          colorValue: 0xFFE91E63,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w20-d3",
      dayNumber: 3,
      titleEn: "Sort: Acids/Salts Concept or Periodic Table Concept?",
      titleMy:
          "စီစစ်ကြမည် - Acids/Salts သဘောတရားလား၊ Periodic Table သဘောတရားလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Acids/Salts Concept", "Periodic Table Concept"],
        bucketsMy: ["Acids/Salts Concept", "Periodic Table Concept"],
        items: [
          SortingItem(
            id: "igcsechem-w20-sort-1",
            labelEn:
                "Choosing between excess solid, titration, or precipitation to prepare a given salt",
            labelMy:
                "ဆားတစ်ခု ပြင်ဆင်ရန် Excess Solid, Titration သို့မဟုတ် Precipitation ကို ရွေးချယ်ခြင်း",
            correctBucketEn: "Acids/Salts Concept",
            correctBucketMy: "Acids/Salts Concept",
          ),
          SortingItem(
            id: "igcsechem-w20-sort-2",
            labelEn:
                "Predicting that rubidium reacts more violently with water than potassium",
            labelMy:
                "Rubidium သည် Potassium ထက် ရေနှင့် ပို၍ ပြင်းထန်စွာ ဓာတ်ပြုမည်ဟု ခန့်မှန်းခြင်း",
            correctBucketEn: "Periodic Table Concept",
            correctBucketMy: "Periodic Table Concept",
          ),
          SortingItem(
            id: "igcsechem-w20-sort-3",
            labelEn:
                "Classifying an oxide as acidic, basic, amphoteric, or neutral",
            labelMy:
                "အောက်ဆိုဒ်တစ်ခုကို Acidic, Basic, Amphoteric သို့မဟုတ် Neutral ဟု အမျိုးအစားခွဲခြင်း",
            correctBucketEn: "Acids/Salts Concept",
            correctBucketMy: "Acids/Salts Concept",
          ),
          SortingItem(
            id: "igcsechem-w20-sort-4",
            labelEn: "Explaining why fluorine is more reactive than chlorine",
            labelMy:
                "Fluorine သည် Chlorine ထက် ပို၍ ဓာတ်ပြုနိုင်စွမ်း ရှိသည့် အကြောင်းရင်းကို ရှင်းပြခြင်း",
            correctBucketEn: "Periodic Table Concept",
            correctBucketMy: "Periodic Table Concept",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w20-d4",
      dayNumber: 4,
      titleEn: "Reading: Shin Thant's Term 5 Inorganic Chemistry Review",
      titleMy:
          "စာဖတ်ခြင်း - ရှင်သန့်၏ ပဉ္စမတန်း အဂ္ဂနီဗေဒ ဓာတုဗေဒ ပြန်လည်သုံးသပ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Shin Thant's Term 5 Inorganic Chemistry Review",
        titleMy: "ရှင်သန့်၏ ပဉ္စမတန်း အဂ္ဂနီဗေဒ ဓာတုဗေဒ ပြန်လည်သုံးသပ်ခြင်း",
        passageEn:
            "For her final Term 5 review with Ko Zaw, Shin Thant was given one integrating challenge: design a full laboratory scheme to prepare pure, dry crystals of barium sulfate, and explain why barium's position in the Periodic Table matters to the answer.\n\nShe began with the acids and salts side of the problem. Barium sulfate, she recalled from the solubility rules, is one of the rare exceptions among sulfates -- almost completely insoluble in water. That ruled out both the excess solid method and the titration method immediately, since both of those methods are for preparing soluble salts. The only correct choice was precipitation: mixing a soluble barium salt, such as barium chloride solution, with a soluble sulfate, such as sodium sulfate solution, so that barium ions and sulfate ions combine directly to form the insoluble solid, which she could then filter, wash with distilled water to remove soluble impurities, and dry.\n\nThen Ko Zaw pushed further: why barium specifically, rather than magnesium or calcium, both of which sit above it in Group II? Shin Thant connected this back to what she had learned about Group I and Group VII trends the weeks before -- although Group II was not itself formally covered this term, she reasoned by analogy that heavier Group II elements, like heavier Group I elements, tend to form less soluble sulfates as you descend the group, which is exactly why barium sulfate is famously insoluble while magnesium sulfate is freely soluble. Ko Zaw nodded approvingly: connecting a solubility fact to a periodic trend, even one not explicitly taught, was exactly the kind of independent chemical reasoning the IGCSE Extended Paper rewarded most highly.",
        passageMy:
            "ကိုဇော်နှင့် ပဉ္စမတန်း နောက်ဆုံး ပြန်လည်သုံးသပ်ခြင်းအတွက် ရှင်သန့်သည် ပေါင်းစပ် စိန်ခေါ်မှုတစ်ခုကို ရရှိခဲ့သည် - Barium Sulfate ၏ စင်ကြယ်၍ ခြောက်သွေ့သော ပုံဆောင်ခဲများ ပြင်ဆင်ရန် ဓာတ်ခွဲခန်း အစီအစဉ် အပြည့်အစုံကို ဒီဇိုင်းဆွဲပြီး Barium ၏ ဒြပ်စင်အလှည့်ကျဇယားရှိ နေရာသည် အဖြေနှင့် အဘယ်ကြောင့် သက်ဆိုင်သည်ကို ရှင်းပြရန် ဖြစ်သည်။\n\nသူမသည် ပြဿနာ၏ Acids and Salts ဘက်မှ စတင်ခဲ့သည်။ Barium Sulfate သည် ပျော်ဝင်နိုင်စွမ်း စည်းမျဉ်းများအရ Sulfate များအနက် ရှားပါးသော ချွင်းချက်တစ်ခု ဖြစ်ကြောင်း သူမ သတိရခဲ့သည် -- ရေတွင် လုံးဝနီးပါး မပျော်ဝင်ပါ။ ၎င်းသည် Excess Solid Method နှင့် Titration Method နှစ်ခုစလုံးကို ချက်ချင်း ဖယ်ရှားပစ်ခဲ့သည်၊ အကြောင်းမှာ ထိုနည်းလမ်း နှစ်ခုစလုံးသည် ပျော်ဝင်နိုင်သော ဆားများ ပြင်ဆင်ရန် ဖြစ်သောကြောင့် ဖြစ်သည်။ မှန်ကန်သော ရွေးချယ်မှုတစ်ခုတည်းမှာ Precipitation ဖြစ်ခဲ့သည် - Barium Chloride ပျော်ရည်ကဲ့သို့ ပျော်ဝင်နိုင်သော Barium ဆားတစ်မျိုးကို Sodium Sulfate ပျော်ရည်ကဲ့သို့ ပျော်ဝင်နိုင်သော Sulfate တစ်မျိုးနှင့် ရောစပ်ကာ Barium Ion များနှင့် Sulfate Ion များ တိုက်ရိုက် ပေါင်းစပ်၍ မပျော်ဝင်သော အစိုင်အခဲ ဖွဲ့စည်းစေခြင်း၊ ထို့နောက် စစ်ထုတ်ကာ ပျော်ဝင်နိုင်သော ညစ်ညမ်းစေသောပစ္စည်းများ ဖယ်ရှားရန် Distilled Water ဖြင့် ဆေးကြောပြီး ခြောက်သွေ့စေခြင်း ဖြစ်သည်။\n\nထို့နောက် ကိုဇော်သည် ပို၍ တွန်းအားပေးခဲ့သည် - Group II တွင် ၎င်း၏ အပေါ်တွင် ရှိနေသော Magnesium သို့မဟုတ် Calcium အစား Barium ကိုသာ အဘယ်ကြောင့် အထူးရွေးချယ်ရသနည်း။ ရှင်သန့်သည် ၎င်းကို ရက်သတ္တပတ်များအရင်က သင်ယူခဲ့ရသော Group I နှင့် Group VII လမ်းကြောင်းများနှင့် ပြန်လည် ချိတ်ဆက်ခဲ့သည် -- Group II ကို ဤတန်းတွင် တရားဝင် လေ့လာခြင်း မပြုခဲ့သော်လည်း Group I ၏ ပိုလေးသော ဒြပ်စင်များကဲ့သို့ Group II ၏ ပိုလေးသော ဒြပ်စင်များသည် အုပ်စု၏ အောက်ဘက်သို့ ဆင်းသွားစဉ် ပို၍ ပျော်ဝင်နိုင်စွမ်း နည်းသော Sulfate များ ဖွဲ့စည်းလေ့ရှိသည်ဟု ဆင်ခြင်တုံတရားဖြင့် ကျိုးကြောင်းဆက်စပ်ခဲ့သည်၊ ဤသည်ကား Barium Sulfate သည် နာမည်ကျော် မပျော်ဝင်သော်လည်း Magnesium Sulfate မှာမူ လွတ်လပ်စွာ ပျော်ဝင်ရသည့် အတိအကျ အကြောင်းရင်း ဖြစ်သည်။ ကိုဇော်သည် ကျေနပ်စွာ ခေါင်းညိတ်ပေးခဲ့သည် - ပျော်ဝင်နိုင်စွမ်း အချက်တစ်ခုကို တရားဝင် သင်ကြားခြင်း မပြုခဲ့သော် ပင်လျှင် ဒြပ်စင်အလှည့်ကျဇယား လမ်းကြောင်းတစ်ခုနှင့် ချိတ်ဆက်ခြင်းသည် IGCSE Extended Paper က အများဆုံး ဆုချီးမြှင့်သော လွတ်လပ်သော ဓာတုဗေဒ ယုတ္တိဗေဒ အမျိုးအစား အတိအကျ ဖြစ်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why were the excess solid and titration methods both ruled out for preparing barium sulfate?",
            questionMy:
                "Barium Sulfate ပြင်ဆင်ရန် Excess Solid နှင့် Titration နည်းလမ်း နှစ်ခုစလုံးကို ဖယ်ရှားရသည့် အကြောင်းရင်းကို စာပိုဒ် ၂ အရ ဖော်ပြပါ။",
            optionsEn: [
              "Both methods are for preparing soluble salts, but barium sulfate is insoluble",
              "Both methods require a gas to be produced",
              "Barium chloride does not exist",
              "Those methods are only used for organic compounds",
            ],
            optionsMy: [
              "နည်းလမ်း နှစ်ခုစလုံးသည် ပျော်ဝင်နိုင်သော ဆားများ ပြင်ဆင်ရန် ဖြစ်သော်လည်း Barium Sulfate မှာ မပျော်ဝင်သောကြောင့်",
              "နည်းလမ်း နှစ်ခုစလုံးသည် ဓာတ်ငွေ့တစ်မျိုး ထွက်ပေါ်ရန် လိုအပ်သောကြောင့်",
              "Barium Chloride ရှိနေခြင်း မရှိသောကြောင့်",
              "ထိုနည်းလမ်းများသည် အော်ဂဲနစ် ဒြပ်ပေါင်းများအတွက်သာ အသုံးပြုသောကြောင့်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence explaining why both methods were ruled out.",
            ],
            hintsMy: [
              "နည်းလမ်း နှစ်ခုစလုံးကို ဖယ်ရှားရသည့် အကြောင်းရင်းကို ရှင်းပြထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what pattern did Shin Thant reason applies to heavier Group II elements, by analogy with Group I?",
            questionMy:
                "Group I နှင့် နှိုင်းယှဉ်၍ Group II ၏ ပိုလေးသော ဒြပ်စင်များတွင် အဘယ်ပုံစံ သက်ရောက်သည်ဟု ရှင်သန့် ကျိုးကြောင်းဆက်စပ်ခဲ့ကြောင်းကို စာပိုဒ် ၃ အရ ဖော်ပြပါ။",
            optionsEn: [
              "They tend to form less soluble sulfates as you descend the group",
              "They become more soluble as you descend the group",
              "They stop reacting with water entirely",
              "They turn into noble gases",
            ],
            optionsMy: [
              "အုပ်စု၏ အောက်ဘက်သို့ ဆင်းသွားစဉ် ပို၍ ပျော်ဝင်နိုင်စွမ်း နည်းသော Sulfate များ ဖွဲ့စည်းလေ့ရှိသည်",
              "အုပ်စု၏ အောက်ဘက်သို့ ဆင်းသွားစဉ် ပို၍ ပျော်ဝင်နိုင်စွမ်း ရှိလာသည်",
              "ရေနှင့် ဓာတ်ပြုခြင်းကို လုံးဝ ရပ်တန့်သည်",
              "Noble Gas များအဖြစ် ပြောင်းလဲသွားသည်",
            ],
            correctIndex: 0,
            hintsEn: [
              "Reread the sentence connecting barium sulfate's insolubility to magnesium sulfate's high solubility.",
            ],
            hintsMy: [
              "Barium Sulfate ၏ မပျော်ဝင်မှုကို Magnesium Sulfate ၏ မြင့်မားသော ပျော်ဝင်နိုင်စွမ်းနှင့် ချိတ်ဆက်ထားသော စာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။",
            ],
          ),
          QuizQuestion(
            questionEn:
                "Based on the final sentence, what did Ko Zaw value most about Shin Thant's answer?",
            questionMy:
                "ရှင်သန့်၏ အဖြေတွင် ကိုဇော် အများဆုံး တန်ဖိုးထားသည့် အချက်ကို နောက်ဆုံးစာကြောင်းအရ ဖော်ပြပါ။",
            optionsEn: [
              "Connecting a solubility fact to a periodic trend not explicitly taught -- independent chemical reasoning",
              "Memorising the exact colour of barium sulfate crystals",
              "Finishing the task quickly without explanation",
              "Simply naming the correct method without justification",
            ],
            optionsMy: [
              "တရားဝင် သင်ကြားခြင်း မပြုခဲ့သော ဒြပ်စင်အလှည့်ကျဇယား လမ်းကြောင်းတစ်ခုနှင့် ပျော်ဝင်နိုင်စွမ်း အချက်တစ်ခုကို ချိတ်ဆက်ခြင်း -- လွတ်လပ်သော ဓာတုဗေဒ ယုတ္တိဗေဒ",
              "Barium Sulfate ပုံဆောင်ခဲများ၏ အတိအကျ အရောင်ကို အလွတ်ကျက်ခြင်း",
              "ရှင်းပြချက် မပါဘဲ တာဝန်ကို လျင်မြန်စွာ ပြီးမြောက်ခြင်း",
              "အကြောင်းပြချက် မပါဘဲ မှန်ကန်သော နည်းလမ်းကို ရိုးရိုးရှင်းရှင်း ဖော်ပြခြင်း",
            ],
            correctIndex: 0,
            hintsEn: ["Reread the final sentence of the passage."],
            hintsMy: ["စာပိုဒ်၏ နောက်ဆုံးစာကြောင်းကို ပြန်ဖတ်ကြည့်ပါ။"],
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-igcse-chem-w20-d5",
      dayNumber: 5,
      titleEn: "Term 5 Recap: Acids, Salts, and the Periodic Table",
      titleMy:
          "ပဉ္စမတန်း ပြန်လည်သုံးသပ်ခြင်း - Acids, Salts နှင့် Periodic Table",
      kind: LessonKind.quiz,
      xpReward: 15,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A metal oxide reacting with an acid to form a salt and water is classified as...",
          questionMy:
              "အက်ဆစ်တစ်ခုနှင့် ဓာတ်ပြုကာ ဆားနှင့် ရေ ဖွဲ့စည်းစေသော သတ္တု အောက်ဆိုဒ်ကို ...ဟု အမျိုးအစားခွဲသည်",
          optionsEn: [
            "A basic oxide",
            "An acidic oxide",
            "A neutral oxide",
            "An amphoteric oxide only",
          ],
          optionsMy: [
            "Basic Oxide",
            "Acidic Oxide",
            "Neutral Oxide",
            "Amphoteric Oxide သာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "The precipitation method is chosen when the target salt is...",
          questionMy:
              "ပစ်မှတ်ဆားသည် ...ဖြစ်ပါက Precipitation Method ကို ရွေးချယ်သည်",
          optionsEn: ["Insoluble", "Soluble", "A liquid", "A gas"],
          optionsMy: ["မပျော်ဝင်", "ပျော်ဝင်", "အရည်", "ဓာတ်ငွေ့"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Reactivity trends in Group I and Group VII go in...",
          questionMy:
              "Group I နှင့် Group VII တို့၏ ဓာတ်ပြုနိုင်စွမ်း လမ်းကြောင်းများသည် ...ဖြစ်သည်",
          optionsEn: [
            "Opposite directions -- Group I increases down, Group VII decreases down",
            "The exact same direction down both groups",
            "No predictable direction at all",
            "Both increase down the group",
          ],
          optionsMy: [
            "ဆန့်ကျင်ဖက် လမ်းကြောင်းများ -- Group I သည် အောက်ဘက်သို့ တိုးလာပြီး Group VII သည် အောက်ဘက်သို့ လျော့ကျသည်",
            "အုပ်စု နှစ်ခုစလုံး၏ အောက်ဘက်သို့ အတိအကျ တူညီသော လမ်းကြောင်း",
            "ခန့်မှန်းနိုင်သော လမ်းကြောင်း လုံးဝ မရှိပါ",
            "နှစ်ခုစလုံး အုပ်စု၏ အောက်ဘက်သို့ တိုးလာသည်",
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

const CourseTermDef igcseChemistryTerm3 = CourseTermDef(
  id: "course-igcse-chem-term3",
  termNumber: 3,
  titleEn: "Electricity and Chemistry & Energetics",
  titleMy: "လျှပ်စစ်ဓာတုဗေဒနှင့် Energetics",
  certificateTitleEn: "IGCSE Chemistry Term 3 Certificate",
  certificateTitleMy: "IGCSE ဓာတုဗေဒ တတိယတန်း အောင်လက်မှတ်",
  weeks: [
    _igcseChemWeek9,
    _igcseChemWeek10,
    _igcseChemWeek11,
    _igcseChemWeek12,
  ],
);

const CourseTermDef igcseChemistryTerm4 = CourseTermDef(
  id: "course-igcse-chem-term4",
  termNumber: 4,
  titleEn: "Chemical Reactions, Rates and Equilibrium",
  titleMy: "ဓာတုဗေဒ ဓာတ်ပြုမှုများ၊ Rates နှင့် Equilibrium",
  certificateTitleEn: "IGCSE Chemistry Term 4 Certificate",
  certificateTitleMy: "IGCSE ဓာတုဗေဒ စတုတ္ထတန်း အောင်လက်မှတ်",
  weeks: [
    _igcseChemWeek13,
    _igcseChemWeek14,
    _igcseChemWeek15,
    _igcseChemWeek16,
  ],
);

const CourseTermDef igcseChemistryTerm5 = CourseTermDef(
  id: "course-igcse-chem-term5",
  termNumber: 5,
  titleEn: "Acids, Bases, Salts and The Periodic Table",
  titleMy: "အက်ဆစ်၊ ဘေ့စ်၊ ဆားများနှင့် ဒြပ်စင်အလှည့်ကျဇယား",
  certificateTitleEn: "IGCSE Chemistry Term 5 Certificate",
  certificateTitleMy: "IGCSE ဓာတုဗေဒ ပဉ္စမတန်း အောင်လက်မှတ်",
  weeks: [
    _igcseChemWeek17,
    _igcseChemWeek18,
    _igcseChemWeek19,
    _igcseChemWeek20,
  ],
);

/// IGCSE Chemistry pathway -- Terms 1-5 of 9 authored so far (Terms 6-9 to
/// follow: Metals & Environment; Organic Chemistry; Experimental Skills;
/// Exam Prep & Graduation). `totalWeeks: 36` reflects the full 9-term
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
  terms: [
    igcseChemistryTerm1,
    igcseChemistryTerm2,
    igcseChemistryTerm3,
    igcseChemistryTerm4,
    igcseChemistryTerm5,
  ],
);
