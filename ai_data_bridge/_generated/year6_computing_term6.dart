// File: ai_data_bridge/_generated/year6_computing_term6.dart
// Year 6 Computing -- Term 6: "Physical Computing and Sensors" (Weeks 21-24).
// Staging artifact only -- not yet wired into course_pathway_bank.dart's
// Grade.year6 pathway. Follows Term 5's game-creation capstone by opening
// up a genuinely new domain: physical/embedded computing, where a
// program's decisions steer real (or realistically simulated) hardware
// instead of on-screen sprites. Protagonist Nay Chi, a Nova School
// student, recurs across quiz flavour text and every Day 4 reading
// passage this term, opening with a direct callback to her Term 5 Game
// Jam project: the same input -> decision -> output shape that powered
// her game's collision/score/lives logic now gets applied to real
// sensors and real actuators.
//
// Week 21 (What Is Physical Computing?): inputs vs. outputs, sensors vs.
// actuators, and everyday real-world examples -- automatic doors,
// streetlights, thermostats -- introduced as the same "sense something,
// decide, then act" shape Nay Chi already used inside her Term 5 game.
// Week 22 (Digital and Analogue Input: Making a Decision): the
// difference between a two-state digital input and a ranged analogue
// reading, reading an actual sensor value, and writing the IF-selection
// that decides an output from that value -- a direct callback to Term 5's
// if-conditions, now driven by a sensor reading instead of a collision
// event. Week 23 (Combining Conditions: AND and OR for a Smart System):
// joining two or more conditions with AND/OR to control multiple outputs
// at once, using a simulated smart-garden/smart-home scenario -- also
// spiraling back to the AND/OR database queries Nay Chi wrote in Term 4.
// Week 24 (Capstone -- Nay Chi's Physical Computing Project, boss week):
// planning, building and testing an original small physical-computing
// project idea that combines a sensor, a condition (possibly a compound
// AND/OR condition) and an actuator, with the recap day reviewing the
// whole term.

const CourseWeekDef _year6ComputingWeek21 = CourseWeekDef(
  id: "course-year6-computing-w21",
  weekNumber: 21,
  titleEn: "What Is Physical Computing?",
  titleMy: "Physical Computing ဆိုသည်မှာ အဘယ်နည်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w21-d1",
      dayNumber: 1,
      titleEn: "Inputs, Outputs, Sensors and Actuators",
      titleMy: "Input၊ Output၊ Sensor နှင့် Actuator များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does \"physical computing\" mean?",
          questionMy: "\"Physical Computing\" ဆိုသည်မှာ အဘယ်အဓိပ္ပာယ်ရှိသနည်း။",
          optionsEn: [
            "A program that senses the real world and controls real physical devices, not just things on a screen",
            "A game that only uses on-screen sprites and backdrops",
            "A spreadsheet that stores a class's exam scores",
            "A website written only using HTML tags",
          ],
          optionsMy: [
            "မျက်နှာပြင်ပေါ်ရှိအရာများသာမက အစစ်အမှန် ရုပ်ပိုင်းကိရိယာများကိုပါ ထိန်းချုပ်ရန် လက်တွေ့ကမ္ဘာကို အာရုံခံသော Program တစ်ခု",
            "Sprite နှင့် Backdrop များကိုသာ အသုံးပြုသော ဂိမ်းတစ်ခု",
            "အတန်း စာမေးပွဲရမှတ်များ သိမ်းဆည်းထားသော Spreadsheet တစ်ခု",
            "HTML tag များကိုသာ အသုံးပြု၍ ရေးထားသော Website တစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about a streetlight that switches itself on when it gets dark outside -- that light is not just a picture on a screen.",
            "Physical computing connects a program's decisions to something you can actually see or feel working in the real world, like a light or a motor.",
          ],
          hintsMy: [
            "အပြင်ဘက် မှောင်လာသောအခါ သူ့ဟာသူ ပွင့်လာတတ်သော လမ်းမီးတစ်ခုကို စဉ်းစားကြည့်ပါ -- ထိုမီးသည် မျက်နှာပြင်ပေါ်ရှိ ပုံတစ်ပုံမျှသာ မဟုတ်ပါ။",
            "Physical Computing သည် Program တစ်ခု၏ ဆုံးဖြတ်ချက်များကို မီးလုံး သို့မဟုတ် Motor ကဲ့သို့ လက်တွေ့ကမ္ဘာတွင် အလုပ်လုပ်နေသည်ကို တွေ့မြင်ခံစားနိုင်သော အရာတစ်ခုနှင့် ချိတ်ဆက်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these is an example of an \"input\" in physical computing?",
          questionMy:
              "Physical Computing တွင် \"Input\" ၏ ဥပမာမှာ အောက်ပါတို့အနက် အဘယ်နည်း။",
          optionsEn: [
            "A light sensor detecting how bright a room is",
            "An LED lighting up a room",
            "A buzzer sounding an alarm",
            "A motor opening a door",
          ],
          optionsMy: [
            "အခန်းတစ်ခန်း မည်မျှတောက်ပသည်ကို တွေ့ရှိသော Light Sensor",
            "အခန်းကို လင်းစေသော LED",
            "Alarm မြည်စေသော Buzzer",
            "တံခါးကို ဖွင့်ပေးသော Motor",
          ],
          correctIndex: 0,
          hintsEn: [
            "An input is information flowing INTO a program from the real world.",
            "A sensor collects data about the world -- that data is the input, before any decision has been made.",
          ],
          hintsMy: [
            "Input ဆိုသည်မှာ လက်တွေ့ကမ္ဘာမှ Program ထဲသို့ ဝင်ရောက်လာသော အချက်အလက်ဖြစ်သည်။",
            "Sensor တစ်ခုသည် ကမ္ဘာအကြောင်း ဒေတာကို စုဆောင်းပေးသည် -- ဆုံးဖြတ်ချက် မချမီ ထိုဒေတာသည် Input ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which of these is an example of an \"output\" in physical computing?",
          questionMy:
              "Physical Computing တွင် \"Output\" ၏ ဥပမာမှာ အောက်ပါတို့အနက် အဘယ်နည်း။",
          optionsEn: [
            "A buzzer sounding to warn of danger",
            "A button being pressed by a visitor",
            "A temperature sensor reading a room's heat",
            "A light sensor detecting darkness",
          ],
          optionsMy: [
            "အန္တရာယ်သတိပေးရန် အသံပြုသော Buzzer",
            "ဧည့်သည်တစ်ဦးက နှိပ်လိုက်သော Button",
            "အခန်း၏ အပူချိန်ကို ဖတ်နေသော Temperature Sensor",
            "မှောင်နေခြင်းကို တွေ့ရှိသော Light Sensor",
          ],
          correctIndex: 0,
          hintsEn: [
            "An output is the effect a program produces back out in the real world, after it has made a decision.",
            "A buzzer, LED or motor all act on the world -- they do not collect information, they respond to it.",
          ],
          hintsMy: [
            "Output ဆိုသည်မှာ Program တစ်ခု ဆုံးဖြတ်ချက်ချပြီးနောက် လက်တွေ့ကမ္ဘာသို့ ပြန်လည်ဖြစ်ပေါ်စေသော အကျိုးသက်ရောက်မှုဖြစ်သည်။",
            "Buzzer၊ LED (သို့) Motor တို့သည် ကမ္ဘာအပေါ် အကျိုးသက်ရောက်မှုပြုကြသည် -- သူတို့သည် အချက်အလက် မစုဆောင်းဘဲ ၎င်းအပေါ် တုံ့ပြန်ကြသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "An automatic streetlight uses a light sensor and an LED. What does the light sensor do?",
          questionMy:
              "အလိုအလျောက် လမ်းမီးတစ်ခုတွင် Light Sensor နှင့် LED ကို အသုံးပြုသည်။ Light Sensor သည် အဘယ်အရာလုပ်ဆောင်သနည်း။",
          optionsEn: [
            "It acts as the input, detecting when it becomes dark outside",
            "It acts as the output, lighting up the street",
            "It acts as both the sensor and the actuator at the same time",
            "It has no role in the streetlight at all",
          ],
          optionsMy: [
            "အပြင်ဘက် မှောင်လာချိန်ကို တွေ့ရှိသော Input အဖြစ် လုပ်ဆောင်သည်",
            "လမ်းကို လင်းစေသော Output အဖြစ် လုပ်ဆောင်သည်",
            "Sensor နှင့် Actuator နှစ်မျိုးလုံး တစ်ပြိုင်နက် လုပ်ဆောင်သည်",
            "လမ်းမီးတွင် မည်သည့်အခန်းကဏ္ဍမျှ မပါဝင်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "Ask yourself: is the light sensor collecting information, or producing an effect?",
            "The sensor senses darkness first (input); the LED then produces light afterwards (output) as a result.",
          ],
          hintsMy: [
            "ကိုယ့်ကိုယ်ကို မေးကြည့်ပါ - Light Sensor သည် အချက်အလက် စုဆောင်းနေသလား၊ (သို့) အကျိုးသက်ရောက်မှု ဖြစ်ပေါ်စေနေသလား။",
            "Sensor က မှောင်နေခြင်းကို ဦးစွာ အာရုံခံသည် (Input) -- ထို့နောက် LED က ရလဒ်အနေဖြင့် အလင်းကို ထုတ်ပေးသည် (Output)။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w21-d2",
      dayNumber: 2,
      titleEn: "Match the Physical Computing Vocabulary",
      titleMy: "Physical Computing ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w21-dm-1",
          termEn: "Physical computing",
          termMy: "Physical Computing",
          matchEn:
              "A field where a program senses the real world and controls real devices, not just things on a screen",
          matchMy:
              "မျက်နှာပြင်ပေါ်ရှိအရာများသာမက လက်တွေ့ကမ္ဘာကို အာရုံခံပြီး အစစ်အမှန်ကိရိယာများကို ထိန်းချုပ်ပေးသော နယ်ပယ်တစ်ခု",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w21-dm-2",
          termEn: "Input",
          termMy: "Input",
          matchEn:
              "Data flowing into a program from the real world, such as a sensor reading or a button press",
          matchMy:
              "Sensor ဖတ်ရလဒ် သို့မဟုတ် Button နှိပ်ခြင်းကဲ့သို့ လက်တွေ့ကမ္ဘာမှ Program ထဲသို့ ဝင်ရောက်လာသော ဒေတာ",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w21-dm-3",
          termEn: "Output",
          termMy: "Output",
          matchEn:
              "The effect a program produces in the real world, such as light, sound or movement",
          matchMy:
              "အလင်း၊ အသံ (သို့) လှုပ်ရှားမှုကဲ့သို့ Program တစ်ခုက လက်တွေ့ကမ္ဘာတွင် ဖြစ်ပေါ်စေသော အကျိုးသက်ရောက်မှု",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w21-dm-4",
          termEn: "Sensor",
          termMy: "Sensor",
          matchEn:
              "A device that detects something in the real world, such as light, temperature or movement, and turns it into data",
          matchMy:
              "အလင်း၊ အပူချိန် (သို့) လှုပ်ရှားမှုကဲ့သို့ လက်တွေ့ကမ္ဘာရှိ အရာတစ်ခုခုကို တွေ့ရှိပြီး ဒေတာအဖြစ် ပြောင်းလဲပေးသော ကိရိယာ",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w21-dm-5",
          termEn: "Actuator",
          termMy: "Actuator",
          matchEn:
              "A device that acts on the real world using electrical signals, such as an LED, buzzer or motor",
          matchMy:
              "LED၊ Buzzer (သို့) Motor ကဲ့သို့ လျှပ်စစ်အချက်ပြမှုများကို အသုံးပြု၍ လက်တွေ့ကမ္ဘာအပေါ် အကျိုးသက်ရောက်စေသော ကိရိယာ",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w21-dm-6",
          termEn: "Automatic door",
          termMy: "အလိုအလျောက် တံခါး (Automatic Door)",
          matchEn:
              "A real-world example where a motion sensor input triggers a motor output to open the door",
          matchMy:
              "လှုပ်ရှားမှု Sensor Input က Motor Output ကို လှုံ့ဆော်ပေးပြီး တံခါးကို ဖွင့်ပေးသော လက်တွေ့ ဥပမာတစ်ခု",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w21-d3",
      dayNumber: 3,
      titleEn: "Sort: Input (Sensor) or Output (Actuator)?",
      titleMy: "စီစစ်ကြမည် - Input (Sensor) လား၊ Output (Actuator) လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Input (Sensor)", "Output (Actuator)"],
        bucketsMy: ["Input (Sensor)", "Output (Actuator)"],
        items: [
          SortingItem(
            id: "y6comp-w21-sort-1",
            labelEn: "A light sensor detecting how dark a room has become",
            labelMy:
                "အခန်းတစ်ခန်း မည်မျှမှောင်လာသည်ကို တွေ့ရှိသော Light Sensor",
            correctBucketEn: "Input (Sensor)",
            correctBucketMy: "Input (Sensor)",
          ),
          SortingItem(
            id: "y6comp-w21-sort-2",
            labelEn: "An LED switching on to light up a street",
            labelMy: "လမ်းကို လင်းစေရန် ပွင့်လာသော LED",
            correctBucketEn: "Output (Actuator)",
            correctBucketMy: "Output (Actuator)",
          ),
          SortingItem(
            id: "y6comp-w21-sort-3",
            labelEn: "A push button being pressed by a visitor",
            labelMy: "ဧည့်သည်တစ်ဦးက နှိပ်လိုက်သော Push Button",
            correctBucketEn: "Input (Sensor)",
            correctBucketMy: "Input (Sensor)",
          ),
          SortingItem(
            id: "y6comp-w21-sort-4",
            labelEn: "A buzzer sounding to warn of danger",
            labelMy: "အန္တရာယ်သတိပေးရန် အသံပြုသော Buzzer",
            correctBucketEn: "Output (Actuator)",
            correctBucketMy: "Output (Actuator)",
          ),
          SortingItem(
            id: "y6comp-w21-sort-5",
            labelEn: "A temperature sensor reading how hot a greenhouse is",
            labelMy:
                "မြက်ခင်းအိမ်တစ်ခု မည်မျှပူနွေးသည်ကို ဖတ်ရှုသော Temperature Sensor",
            correctBucketEn: "Input (Sensor)",
            correctBucketMy: "Input (Sensor)",
          ),
          SortingItem(
            id: "y6comp-w21-sort-6",
            labelEn: "A motor opening an automatic door",
            labelMy: "အလိုအလျောက်တံခါးကို ဖွင့်ပေးသော Motor",
            correctBucketEn: "Output (Actuator)",
            correctBucketMy: "Output (Actuator)",
          ),
          SortingItem(
            id: "y6comp-w21-sort-7",
            labelEn: "A motion sensor detecting a person walking past",
            labelMy:
                "လူတစ်ဦး လမ်းလျှောက်ဖြတ်သွားသည်ကို တွေ့ရှိသော Motion Sensor",
            correctBucketEn: "Input (Sensor)",
            correctBucketMy: "Input (Sensor)",
          ),
          SortingItem(
            id: "y6comp-w21-sort-8",
            labelEn: "A small fan switching on to cool a room",
            labelMy: "အခန်းအေးအောင် ပွင့်လာသော ပန်ကာလေး",
            correctBucketEn: "Output (Actuator)",
            correctBucketMy: "Output (Actuator)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w21-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi Discovers Physical Computing",
      titleMy:
          "စာဖတ်ခြင်း - နှင်းချည် Physical Computing ကို ရှာဖွေတွေ့ရှိခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi Discovers Physical Computing",
        titleMy: "နှင်းချည် Physical Computing ကို ရှာဖွေတွေ့ရှိခြင်း",
        passageEn:
            "Just days after Nay Chi's Game Jam triumph, Ms. Thanda announces Term 6's brand-new topic: physical computing. \"Your game's collision logic isn't only useful for sprites,\" she tells the class. \"The very same idea -- sense something, decide, then act -- can control real devices too.\" Nay Chi sits up, curious about how a program could ever reach outside a screen.\n\nMs. Thanda shows three everyday examples around the school. The automatic gate at the front entrance uses a motion sensor to detect an approaching visitor, then powers a motor to slide the gate open. The streetlight outside the library uses a light sensor to detect when evening falls, then switches on an LED. The staffroom's air conditioner uses a temperature sensor to check the room's heat, then turns on a cooling motor whenever it gets too warm.\n\nNay Chi suddenly recognises the pattern. \"It's just like my game!\" she says. \"My 'touching star' event was an input, my if-condition was the decision, and changing the score was the output. Now the input is a sensor, and the output is a real motor or light instead of a number on a screen.\" Ms. Thanda nods, pleased that Nay Chi has spotted the exact same shape hiding inside a completely new topic.\n\nThat evening, Nay Chi opens her notebook and begins planning her own physical computing idea: a nightlight for her little brother's room that switches on by itself whenever it gets dark. She writes down her sensor (a light sensor), her actuator (an LED), and a question she still needs to answer -- exactly how dark is \"dark enough\" for the light to turn on?",
        passageMy:
            "နှင်းချည် Game Jam အောင်မြင်ပြီးနောက် ရက်အနည်းငယ်အကြာတွင် ဒေါ်သန္တာသည် Term 6 ၏ အသစ်ဆုံးခေါင်းစဉ်ကို ကြေညာသည် -- Physical Computing။ \"မင်းတို့ဂိမ်း၏ Collision Logic သည် Sprite အတွက်သာ အသုံးဝင်တာ မဟုတ်ဘူး\" ဟု သူမ အတန်းကို ပြောပြသည်။ \"အရာတစ်ခုခုကို အာရုံခံခြင်း၊ ဆုံးဖြတ်ခြင်း၊ ပြီးမှ လုပ်ဆောင်ခြင်း ဆိုတဲ့ ထိုအိုင်ဒီယာအတိုင်းပဲ အစစ်အမှန်ကိရိယာများကိုလည်း ထိန်းချုပ်နိုင်တယ်\" ဟု ဆိုသည်။ နှင်းချည်သည် Program တစ်ခုသည် မျက်နှာပြင် အပြင်ဘက်သို့ မည်ကဲ့သို့ ရောက်ရှိနိုင်မည်ကို စိတ်ဝင်စားစွာ ထိုင်နားထောင်လိုက်သည်။\n\nဒေါ်သန္တာသည် ကျောင်းဝန်းအတွင်းရှိ နေ့စဉ်ဥပမာသုံးခုကို ပြသည်။ ရှေ့တံခါးဝတွင်ရှိသော အလိုအလျောက် ဂိတ်တံခါးသည် ချဉ်းကပ်လာသော ဧည့်သည်ကို တွေ့ရှိရန် Motion Sensor ကို အသုံးပြုပြီး Motor ကို လှုပ်ရှားစေကာ ဂိတ်ကို ဆွဲဖွင့်ပေးသည်။ စာကြည့်တိုက်ရှေ့ရှိ လမ်းမီးသည် ညနေချိန် ရောက်ရှိသည်ကို Light Sensor ဖြင့် တွေ့ရှိပြီး LED ကို ပွင့်စေသည်။ ဆရာများခန်းရှိ လေအေးပေးစက်သည် အခန်း၏ အပူချိန်ကို Temperature Sensor ဖြင့် စစ်ဆေးပြီး ပူနွေးလွန်းသည့်အခါတိုင်း အအေးပေးစက်ကို ပွင့်စေသည်။\n\nနှင်းချည်သည် ရုတ်တရက် ပုံစံတူညီမှုကို သတိပြုမိသည်။ \"ငါ့ဂိမ်းနဲ့ အတိအကျ တူတယ်!\" ဟု သူမ ဆိုသည်။ \"ငါ့ 'ကြယ်ထိတွေ့ခြင်း' event ဟာ Input ပါပဲ၊ ငါ့ if-condition ဟာ ဆုံးဖြတ်ချက်ပါပဲ၊ Score ပြောင်းလဲခြင်းက Output ပါပဲ။ အခုတော့ Input ဟာ Sensor ဖြစ်ပြီး Output ဟာ မျက်နှာပြင်ပေါ်ရှိ ဂဏန်းအစား အစစ်အမှန် Motor (သို့) မီးဖြစ်သွားတယ်\" ဟု ဆိုသည်။ ဒေါ်သန္တာသည် နှင်းချည်က လုံးဝ ခေါင်းစဉ်အသစ်တစ်ခုအတွင်းက ပုံစံတူညီမှုကို တွေ့ရှိသွားသည့်အတွက် ကျေနပ်စွာ ခေါင်းညိတ်လိုက်သည်။\n\nထိုည နှင်းချည်သည် သူမ၏ notebook ကို ဖွင့်ပြီး ကိုယ်ပိုင် Physical Computing အိုင်ဒီယာကို စီစဉ်စတင်သည် -- သူမ၏ ညီလေးအခန်းအတွက် မှောင်လာတိုင်း သူ့ဟာသူ ပွင့်လာမည့် Nightlight တစ်ခု။ သူမ၏ Sensor (Light Sensor) နှင့် Actuator (LED) ကို ရေးမှတ်ပြီး ဖြေဆိုရန် ကျန်နေသေးသော မေးခွန်းတစ်ခုကို ရေးထားသည် -- မီးပွင့်ရန် \"လုံလောက်အောင် မှောင်\" ဆိုသည်မှာ အတိအကျ မည်မျှလဲ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what new topic does Ms. Thanda announce for Term 6?",
            questionMy:
                "စာပိုဒ် ၁ အရ Term 6 အတွက် ဒေါ်သန္တာ မည်သည့်ခေါင်းစဉ်အသစ်ကို ကြေညာသနည်း။",
            optionsEn: [
              "Physical computing",
              "Database searching",
              "Spreadsheet formulas",
              "HTML web page design",
            ],
            optionsMy: [
              "Physical Computing",
              "Database ရှာဖွေခြင်း",
              "Spreadsheet ဖော်မြူလာများ",
              "HTML Web Page ဒီဇိုင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, which three examples does Ms. Thanda show the class?",
            questionMy:
                "စာပိုဒ် ၂ အရ ဒေါ်သန္တာသည် အတန်းသို့ ဥပမာသုံးခု မည်သည်တို့ကို ပြသသနည်း။",
            optionsEn: [
              "The automatic gate, the streetlight and the air conditioner",
              "A spreadsheet, a database and a website",
              "A maze-chase game, a racing game and a quiz game",
              "A search engine, a browser and an app store",
            ],
            optionsMy: [
              "အလိုအလျောက်ဂိတ်၊ လမ်းမီးနှင့် လေအေးပေးစက်",
              "Spreadsheet၊ Database နှင့် Website",
              "Maze-chase ဂိမ်း၊ Racing ဂိမ်းနှင့် Quiz ဂိမ်း",
              "Search Engine၊ Browser နှင့် App Store",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what does Nay Chi realise about her game's collision logic?",
            questionMy:
                "စာပိုဒ် ၃ အရ သူမ၏ ဂိမ်း Collision Logic နှင့် ပတ်သက်၍ နှင်းချည် အဘယ်အရာကို သဘောပေါက်သနည်း။",
            optionsEn: [
              "It follows the exact same input, decision and output shape as physical computing",
              "It has nothing at all to do with physical computing",
              "It only works for the maze-chase genre",
              "It replaces the need for sensors entirely",
            ],
            optionsMy: [
              "Physical Computing ၏ Input၊ ဆုံးဖြတ်ချက်နှင့် Output ပုံစံအတိအကျ လိုက်နာနေကြောင်း",
              "Physical Computing နှင့် လုံးဝ မသက်ဆိုင်ကြောင်း",
              "Maze-chase Genre အတွက်သာ အလုပ်လုပ်ကြောင်း",
              "Sensor လိုအပ်ချက်ကို လုံးဝ ဖယ်ရှားပေးကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, what idea does Nay Chi begin planning that evening?",
            questionMy:
                "စာပိုဒ် ၄ အရ ထိုညတွင် နှင်းချည် မည်သည့်အိုင်ဒီယာကို စီစဉ်စတင်သနည်း။",
            optionsEn: [
              "A nightlight that switches on by itself when it gets dark",
              "A new maze-chase game genre",
              "A spreadsheet of her classmates' hobbies",
              "A search query for her old database",
            ],
            optionsMy: [
              "မှောင်လာသောအခါ သူ့ဟာသူ ပွင့်လာမည့် Nightlight",
              "Maze-chase Genre အသစ်တစ်ခု",
              "သူမ၏ အတန်းဖော်များ ဝါသနာ Spreadsheet",
              "သူမ၏ ဒေတာဘေ့စ်ဟောင်းအတွက် Search Query",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w21-d5",
      dayNumber: 5,
      titleEn: "Physical Computing Round-Up",
      titleMy: "Physical Computing အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is physical computing?",
          questionMy: "Physical Computing ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A program that senses the real world and controls real devices",
            "A game that only uses sprites on a screen",
            "A spreadsheet that stores numbers",
            "A search engine for finding websites",
          ],
          optionsMy: [
            "လက်တွေ့ကမ္ဘာကို အာရုံခံပြီး အစစ်အမှန်ကိရိယာများကို ထိန်းချုပ်ပေးသော Program တစ်ခု",
            "မျက်နှာပြင်ပေါ်ရှိ Sprite များကိုသာ အသုံးပြုသော ဂိမ်းတစ်ခု",
            "ဂဏန်းများ သိမ်းဆည်းထားသော Spreadsheet တစ်ခု",
            "Website များရှာဖွေရန် Search Engine တစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is an example of an input?",
          questionMy: "အောက်ပါတို့အနက် Input ၏ ဥပမာမှာ အဘယ်နည်း။",
          optionsEn: [
            "A light sensor detecting darkness",
            "An LED lighting up",
            "A buzzer sounding",
            "A motor opening a door",
          ],
          optionsMy: [
            "မှောင်နေခြင်းကို တွေ့ရှိသော Light Sensor",
            "ပွင့်လာသော LED",
            "မြည်သံပြုသော Buzzer",
            "တံခါးကို ဖွင့်ပေးသော Motor",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Which of these is an example of an output?",
          questionMy: "အောက်ပါတို့အနက် Output ၏ ဥပမာမှာ အဘယ်နည်း။",
          optionsEn: [
            "An LED lighting up a room",
            "A light sensor reading brightness",
            "A button being pressed",
            "A temperature sensor reading heat",
          ],
          optionsMy: [
            "အခန်းကို လင်းစေသော LED",
            "အလင်းအား ဖတ်ရှုသော Light Sensor",
            "နှိပ်လိုက်သော Button",
            "အပူချိန် ဖတ်ရှုသော Temperature Sensor",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the automatic streetlight example, what triggers the LED to turn on?",
          questionMy:
              "အလိုအလျောက် လမ်းမီးဥပမာတွင် LED ကို ပွင့်စေသည့် အရာမှာ အဘယ်နည်း။",
          optionsEn: [
            "The light sensor detecting that it has become dark",
            "A button being pressed by a driver",
            "A buzzer sounding first",
            "A motor opening a gate",
          ],
          optionsMy: [
            "မှောင်လာသည်ကို တွေ့ရှိသော Light Sensor",
            "ယာဉ်မောင်းတစ်ဦးက နှိပ်လိုက်သော Button",
            "ဦးစွာမြည်သံပြုသော Buzzer",
            "ဂိတ်ကိုဖွင့်ပေးသော Motor",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What did Nay Chi realise her game's collision logic resembled?",
          questionMy:
              "သူမ၏ ဂိမ်း Collision Logic သည် အဘယ်အရာနှင့် ဆင်တူကြောင်း နှင်းချည် သဘောပေါက်သနည်း။",
          optionsEn: [
            "The same input, decision and output shape used in physical computing",
            "A completely unrelated spreadsheet formula",
            "A search query with no logic at all",
            "A backdrop colour scheme",
          ],
          optionsMy: [
            "Physical Computing တွင် အသုံးပြုသော Input၊ ဆုံးဖြတ်ချက်နှင့် Output ပုံစံအတူတူဖြစ်ကြောင်း",
            "လုံးဝမသက်ဆိုင်သော Spreadsheet ဖော်မြူလာတစ်ခု",
            "Logic လုံးဝမပါသော Search Query တစ်ခု",
            "Backdrop အရောင်အစီအစဉ်တစ်ခု",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek22 = CourseWeekDef(
  id: "course-year6-computing-w22",
  weekNumber: 22,
  titleEn: "Digital and Analogue Input: Making a Decision",
  titleMy: "Digital နှင့် Analogue Input - ဆုံးဖြတ်ချက်ချခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w22-d1",
      dayNumber: 1,
      titleEn: "Digital vs Analogue Input",
      titleMy: "Digital Input နှင့် Analogue Input",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a \"digital\" input?",
          questionMy: "\"Digital\" Input ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "An input that only has two possible states, such as on/off or pressed/not pressed",
            "An input that can take a whole range of values, such as 0 to 100",
            "An output that lights up a room",
            "A type of backdrop used in games",
          ],
          optionsMy: [
            "On/Off သို့မဟုတ် နှိပ်ထား/မနှိပ်ထားကဲ့သို့ ဖြစ်နိုင်ခြေနှစ်ခုသာ ရှိသော Input",
            "0 မှ 100 ကဲ့သို့ တန်ဖိုးအကွာအဝေးတစ်ခုလုံးကို ရနိုင်သော Input",
            "အခန်းကို လင်းစေသော Output",
            "ဂိမ်းတွင် အသုံးပြုသော Backdrop အမျိုးအစားတစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of a light switch -- it's either fully on, or fully off, with nothing in between.",
            "Digital comes from the idea of counting in distinct steps -- here, there are only two possible states to count.",
          ],
          hintsMy: [
            "မီးခလုတ်တစ်ခုကို စဉ်းစားကြည့်ပါ -- ၎င်းသည် အပြည့်အဝ ပွင့်နေသည် (သို့) အပြည့်အဝ ပိတ်နေသည်၊ ကြားအလယ် မရှိပါ။",
            "Digital ဆိုသည်မှာ ခွဲထွက်ထားသော အဆင့်များဖြင့် ရေတွက်ခြင်းမှ လာသည် -- ဤနေရာတွင် ရေတွက်စရာ ဖြစ်နိုင်ခြေနှစ်ခုသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is an \"analogue\" input?",
          questionMy: "\"Analogue\" Input ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "An input that can take a whole range of values, such as a light level from 0 to 100",
            "An input that only has two possible states, on or off",
            "An actuator that switches on a motor",
            "A backdrop showing a forest maze",
          ],
          optionsMy: [
            "0 မှ 100 အထိ Light Level ကဲ့သို့ တန်ဖိုးအကွာအဝေးတစ်ခုလုံးကို ရနိုင်သော Input",
            "On သို့မဟုတ် Off ဟူသော ဖြစ်နိုင်ခြေနှစ်ခုသာ ရှိသော Input",
            "Motor ကို ပွင့်စေသော Actuator",
            "တောရွှံ့ကွေ့လမ်း ပြသော Backdrop",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of a dimmer switch, or the volume dial on a radio -- it can be set anywhere along a smooth range, not just two positions.",
            "A sensor reading a range of numbers, rather than a simple yes/no, is giving an analogue reading.",
          ],
          hintsMy: [
            "Dimmer switch သို့မဟုတ် ရေဒီယို၏ အသံခလုတ်ကို စဉ်းစားကြည့်ပါ -- ၎င်းကို နေရာနှစ်ခုတည်းသာမက ချောမွေ့သော အကွာအဝေးတစ်လျှောက် မည်သည့်နေရာတွင်မဆို သတ်မှတ်နိုင်သည်။",
            "ရိုးရှင်းသော Yes/No အစား ဂဏန်းအကွာအဝေးတစ်ခုကို ဖတ်ရှုသော Sensor သည် Analogue ဖတ်ရလဒ်ကို ပေးနေခြင်းဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A push button that is either pressed or not pressed is an example of what kind of input?",
          questionMy:
              "နှိပ်ထား (သို့) မနှိပ်ထား ဟူ၍သာ ရှိသော Push Button သည် မည်သည့်အမျိုးအစား Input ၏ ဥပမာဖြစ်သနည်း။",
          optionsEn: [
            "Digital input",
            "Analogue input",
            "An actuator",
            "An output",
          ],
          optionsMy: [
            "Digital Input",
            "Analogue Input",
            "Actuator တစ်ခု",
            "Output တစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "How many possible states does a push button have -- just two, or a whole range?",
            "Only two states (pressed / not pressed) means this is the two-state kind of input.",
          ],
          hintsMy: [
            "Push Button တွင် ဖြစ်နိုင်ခြေ မည်မျှရှိသနည်း -- နှစ်ခုတည်းလား၊ (သို့) အကွာအဝေးတစ်ခုလုံးလား။",
            "ဖြစ်နိုင်ခြေနှစ်ခုသာ (နှိပ်ထား / မနှိပ်ထား) ရှိခြင်းသည် ၎င်းသည် ဖြစ်နိုင်ခြေနှစ်ခုအမျိုးအစား Input ဖြစ်ကြောင်း ဆိုလိုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A light sensor reports a reading of 42 out of 100. What kind of input is this, and what would a program need to decide what to do with it?",
          questionMy:
              "Light Sensor တစ်ခုသည် 100 တွင် 42 ဟူသော ဖတ်ရလဒ်ကို ပြသည်။ ၎င်းသည် မည်သည့်အမျိုးအစား Input ဖြစ်ပြီး Program သည် ၎င်းကို မည်သို့လုပ်ဆောင်ရမည်ကို ဆုံးဖြတ်ရန် အဘယ်အရာလိုအပ်သနည်း။",
          optionsEn: [
            "An analogue input, read using a selection (IF) that compares the reading to a threshold",
            "A digital input that is always either 0 or 100",
            "An actuator that always turns on regardless of the reading",
            "A backdrop that changes colour automatically",
          ],
          optionsMy: [
            "Analogue Input တစ်ခုဖြစ်ပြီး ဖတ်ရလဒ်ကို Threshold တစ်ခုနှင့် နှိုင်းယှဉ်သော Selection (IF) ဖြင့် ဖတ်ရှုရသည်",
            "အမြဲတမ်း 0 (သို့) 100 သာဖြစ်သော Digital Input",
            "ဖတ်ရလဒ်မည်သို့ပင်ဖြစ်စေ အမြဲပွင့်နေသော Actuator",
            "အလိုအလျောက် အရောင်ပြောင်းလဲသော Backdrop",
          ],
          correctIndex: 0,
          hintsEn: [
            "A reading of 42 out of 100 is one value inside a whole range -- not just one of two states.",
            "To decide what to do, the program compares that reading to a chosen number (a threshold) inside an IF condition, such as \"if reading < 50\".",
          ],
          hintsMy: [
            "100 တွင် 42 ဟူသော ဖတ်ရလဒ်သည် အကွာအဝေးတစ်ခုလုံးအတွင်းရှိ တန်ဖိုးတစ်ခုဖြစ်သည် -- ဖြစ်နိုင်ခြေနှစ်ခုထဲမှ တစ်ခုမဟုတ်ပါ။",
            "မည်သို့လုပ်ဆောင်ရမည်ကို ဆုံးဖြတ်ရန် Program သည် ထိုဖတ်ရလဒ်ကို \"if reading < 50\" ကဲ့သို့ IF Condition အတွင်းရှိ ရွေးချယ်ထားသော ဂဏန်း (Threshold) နှင့် နှိုင်းယှဉ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w22-d2",
      dayNumber: 2,
      titleEn: "Match the Digital, Analogue and Selection Vocabulary",
      titleMy:
          "Digital၊ Analogue နှင့် Selection ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w22-dm-1",
          termEn: "Digital input",
          termMy: "Digital Input",
          matchEn: "An input with only two possible states, such as on or off",
          matchMy: "On (သို့) Off ကဲ့သို့ ဖြစ်နိုင်ခြေနှစ်ခုသာ ရှိသော Input",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w22-dm-2",
          termEn: "Analogue input",
          termMy: "Analogue Input",
          matchEn:
              "An input that can take a whole range of values, such as a light level from 0 to 100",
          matchMy:
              "0 မှ 100 အထိ Light Level ကဲ့သို့ တန်ဖိုးအကွာအဝေးတစ်ခုလုံးကို ရနိုင်သော Input",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w22-dm-3",
          termEn: "Sensor reading",
          termMy: "Sensor Reading",
          matchEn:
              "The actual number or state a sensor reports at a given moment",
          matchMy:
              "Sensor တစ်ခုက အချိန်တစ်ခုတွင် တင်ပြသော အမှန်တကယ် ဂဏန်း သို့မဟုတ် State",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w22-dm-4",
          termEn: "Threshold",
          termMy: "Threshold",
          matchEn:
              "The value used inside an IF condition to decide when an action should happen, such as 30",
          matchMy:
              "လုပ်ဆောင်ချက်တစ်ခု ဖြစ်ပေါ်ရန် ဆုံးဖြတ်ပေးရန် IF Condition အတွင်း အသုံးပြုသော တန်ဖိုး၊ ဥပမာ 30",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w22-dm-5",
          termEn: "Selection (IF)",
          termMy: "Selection (IF)",
          matchEn:
              "A structure that checks a condition and decides what a program does next",
          matchMy:
              "Condition တစ်ခုကို စစ်ဆေးပြီး Program နောက်တစ်ဆင့် မည်သို့လုပ်ဆောင်ရမည်ကို ဆုံးဖြတ်ပေးသော Structure",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w22-dm-6",
          termEn: "Condition",
          termMy: "Condition",
          matchEn:
              "The true/false test inside an IF statement, such as \"light level is less than 30\"",
          matchMy:
              "\"Light Level သည် 30 ထက်နည်းသည်\" ကဲ့သို့ IF Statement အတွင်းရှိ True/False စမ်းသပ်ချက်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w22-d3",
      dayNumber: 3,
      titleEn: "Sort: Digital Input or Analogue Input?",
      titleMy: "စီစစ်ကြမည် - Digital Input လား၊ Analogue Input လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Digital Input", "Analogue Input"],
        bucketsMy: ["Digital Input", "Analogue Input"],
        items: [
          SortingItem(
            id: "y6comp-w22-sort-1",
            labelEn: "A push button being pressed or released",
            labelMy: "နှိပ်ထား (သို့) လွှတ်ထားသော Push Button",
            correctBucketEn: "Digital Input",
            correctBucketMy: "Digital Input",
          ),
          SortingItem(
            id: "y6comp-w22-sort-2",
            labelEn: "A light sensor reading a level between 0 and 100",
            labelMy: "0 နှင့် 100 ကြား အဆင့်တစ်ခု ဖတ်ရှုသော Light Sensor",
            correctBucketEn: "Analogue Input",
            correctBucketMy: "Analogue Input",
          ),
          SortingItem(
            id: "y6comp-w22-sort-3",
            labelEn: "A switch being flipped on or off",
            labelMy: "On (သို့) Off သို့ လှန်လိုက်သော Switch",
            correctBucketEn: "Digital Input",
            correctBucketMy: "Digital Input",
          ),
          SortingItem(
            id: "y6comp-w22-sort-4",
            labelEn: "A temperature sensor reading 24.5 degrees",
            labelMy: "24.5 ဒီဂရီ ဖတ်ရှုသော Temperature Sensor",
            correctBucketEn: "Analogue Input",
            correctBucketMy: "Analogue Input",
          ),
          SortingItem(
            id: "y6comp-w22-sort-5",
            labelEn:
                "A motion sensor reporting whether movement was detected: yes or no",
            labelMy:
                "လှုပ်ရှားမှု တွေ့ရှိမရှိကို Yes သို့မဟုတ် No ဖြင့် တင်ပြသော Motion Sensor",
            correctBucketEn: "Digital Input",
            correctBucketMy: "Digital Input",
          ),
          SortingItem(
            id: "y6comp-w22-sort-6",
            labelEn:
                "A sound sensor reading how loud a room is on a 0-100 scale",
            labelMy:
                "အခန်းတစ်ခန်း မည်မျှကျယ်လောင်သည်ကို 0-100 စကေးဖြင့် ဖတ်ရှုသော Sound Sensor",
            correctBucketEn: "Analogue Input",
            correctBucketMy: "Analogue Input",
          ),
          SortingItem(
            id: "y6comp-w22-sort-7",
            labelEn: "A door sensor reporting open or closed",
            labelMy: "ဖွင့်ထား (သို့) ပိတ်ထား ဖြစ်ကြောင်း တင်ပြသော Door Sensor",
            correctBucketEn: "Digital Input",
            correctBucketMy: "Digital Input",
          ),
          SortingItem(
            id: "y6comp-w22-sort-8",
            labelEn:
                "A soil moisture sensor reading a wetness level from 0 to 100",
            labelMy:
                "0 မှ 100 အထိ စိုထိုင်းမှုအဆင့် ဖတ်ရှုသော Soil Moisture Sensor",
            correctBucketEn: "Analogue Input",
            correctBucketMy: "Analogue Input",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w22-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Nightlight Decision",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ Nightlight ဆုံးဖြတ်ချက်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Nightlight Decision",
        titleMy: "နှင်းချည်၏ Nightlight ဆုံးဖြတ်ချက်",
        passageEn:
            "Nay Chi's light sensor is finally connected, and it reports a number between 0 (pitch black) and 100 (very bright) every second. Sitting at her desk in daylight, she watches the reading settle around 85 -- clearly a value from a whole range, not just one of two fixed states. \"This is an analogue reading,\" she reminds herself, \"unlike my push button back in Week 21, which was only ever pressed or not pressed.\"\n\nA reading alone does not turn her nightlight's LED on, though. Nay Chi needs to write a selection -- an IF statement -- that turns her sensor's number into a real decision. She writes: \"if light level is less than 30, then turn the LED on; otherwise, turn the LED off.\" The number 30 becomes her threshold, exactly the line her sensor's reading must cross before anything changes.\n\nTo test it, Nay Chi covers the sensor with her hand. The reading drops -- 60, then 40, then 22 -- and the moment it slips below 30, her LED clicks on. She lifts her hand away, the reading climbs back past 30, and the LED switches off again, just as she planned. \"Just like my Term 5 win-condition had to be exactly right,\" she says, \"this threshold has to be exactly right too, or my nightlight will switch on and off at the wrong moments.\"\n\nSatisfied, Nay Chi tests her threshold one more time at bedtime, in her actual dark bedroom, and watches proudly as the LED clicks on all by itself the moment the room grows dark enough.",
        passageMy:
            "နှင်းချည်၏ Light Sensor ကို နောက်ဆုံးတွင် ချိတ်ဆက်ပြီးဖြစ်ပြီး၊ ၎င်းသည် စက္ကန့်တိုင်း 0 (လုံးဝမှောင်) နှင့် 100 (အလွန်တောက်ပ) ကြားရှိ ဂဏန်းတစ်ခုကို ပြန်ပေးသည်။ နေ့ခင်းဘက် သူမ စားပွဲတွင် ထိုင်နေစဉ် ဖတ်ရလဒ်သည် 85 ဝန်းကျင်တွင် တည်ငြိမ်နေသည်ကို တွေ့ရသည် -- ၎င်းသည် ရွေးချယ်ခွင့်နှစ်ခုတည်းထဲမှ တစ်ခုမဟုတ်ဘဲ ကျယ်ပြန့်သော အတိုင်းအတာတစ်ခုမှ တန်ဖိုးတစ်ခုသာ ဖြစ်ကြောင်း ထင်ရှားသည်။ \"ဒါက Analogue ဖတ်ရလဒ်ပဲ\" ဟု သူမ ကိုယ့်ကိုယ်ကို သတိပေးသည်၊ \"Week 21 က ငါ့ Push Button လိုမဟုတ်ဘူး၊ ဟိုဟာက နှိပ်ထားသလား၊ မနှိပ်ဘူးလားဆိုတာသာ ဖြစ်တယ်။\"\n\nဖတ်ရလဒ်တစ်ခုတည်းကတော့ သူမ၏ Nightlight ၏ LED ကို ချက်ချင်းမပွင့်စေနိုင်ပါ။ နှင်းချည်သည် Sensor ၏ ဂဏန်းကို အမှန်တကယ် ဆုံးဖြတ်ချက်တစ်ခု ဖြစ်လာစေရန် Selection -- IF Statement တစ်ခု ရေးရန် လိုအပ်သည်။ သူမ ရေးလိုက်သည် -- \"Light Level သည် 30 ထက်နည်းလျှင် LED ကို ပွင့်ရန်၊ မဟုတ်ပါက LED ကို ပိတ်ရန်။\" ဂဏန်း 30 သည် သူမ၏ Threshold ဖြစ်လာသည်၊ တစ်ခုခု မပြောင်းလဲမီ Sensor ၏ ဖတ်ရလဒ် ဖြတ်ကျော်ရမည့် မျဉ်းအတိအကျ ဖြစ်သည်။\n\nစမ်းသပ်ရန် နှင်းချည်သည် Sensor ကို သူမ၏ လက်ဖြင့် ဖုံးအုပ်လိုက်သည်။ ဖတ်ရလဒ်သည် ကျဆင်းသွားသည် -- 60၊ ထို့နောက် 40၊ ထို့နောက် 22 -- ၎င်းသည် 30 အောက်သို့ ဆင်းသွားသည့်အခိုက် သူမ၏ LED ချက်ချင်း ပွင့်လာသည်။ လက်ကို ရုပ်လိုက်သောအခါ ဖတ်ရလဒ်သည် 30 ကျော်၍ ပြန်တက်လာပြီး LED သည် စီစဉ်ထားသည့်အတိုင်း ပြန်ပိတ်သွားသည်။ \"ငါ့ Term 5 အနိုင်ရ Condition တိကျရမယ်ဆိုသလိုပဲ\" ဟု သူမ ဆိုသည်၊ \"ဒီ Threshold လည်း အတိအကျ ရှိရမယ် -- မဟုတ်ရင် ငါ့ Nightlight က မှားယွင်းချိန်တွေမှာ ပွင့်ပိတ်နေလိမ့်မယ်။\"\n\nကျေနပ်သွားသော နှင်းချည်သည် အိပ်ရာဝင်ချိန်တွင် သူမ၏ အမှန်တကယ် မှောင်နေသော အိပ်ခန်းထဲ၌ Threshold ကို ထပ်မံစမ်းသပ်ကြည့်ပြီး၊ အခန်းသည် လုံလောက်အောင် မှောင်လာသည့်အခိုက် LED က သူ့ဟာသူ ပွင့်လာသည်ကို ဂုဏ်ယူစွာ ကြည့်နေမိသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what kind of reading does Nay Chi's light sensor give, and why?",
            questionMy:
                "စာပိုဒ် ၁ အရ နှင်းချည်၏ Light Sensor က မည်သည့်ဖတ်ရလဒ်အမျိုးအစားကို ပေးပြီး အဘယ်ကြောင့် ဖြစ်သနည်း။",
            optionsEn: [
              "An analogue reading, because it can be any value in a range like 0 to 100",
              "A digital reading, because it is always either 0 or 100",
              "An actuator reading, because it controls the LED directly",
              "A genre reading, because it decides the game type",
            ],
            optionsMy: [
              "Analogue ဖတ်ရလဒ်ဖြစ်သည်၊ အကြောင်းမှာ 0 မှ 100 ကဲ့သို့ အကွာအဝေးအတွင်း မည်သည့်တန်ဖိုးမဆို ဖြစ်နိုင်သောကြောင့်",
              "Digital ဖတ်ရလဒ်ဖြစ်သည်၊ အကြောင်းမှာ အမြဲတမ်း 0 (သို့) 100 သာ ဖြစ်သောကြောင့်",
              "Actuator ဖတ်ရလဒ်ဖြစ်သည်၊ အကြောင်းမှာ LED ကို တိုက်ရိုက်ထိန်းချုပ်သောကြောင့်",
              "Genre ဖတ်ရလဒ်ဖြစ်သည်၊ အကြောင်းမှာ ဂိမ်းအမျိုးအစားကို ဆုံးဖြတ်သောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what IF statement does Nay Chi write for her nightlight?",
            questionMy:
                "စာပိုဒ် ၂ အရ သူမ၏ Nightlight အတွက် နှင်းချည် မည်သည့် IF Statement ကို ရေးသနည်း။",
            optionsEn: [
              "If light level is less than 30, turn the LED on; otherwise, turn it off",
              "If light level equals exactly 100, turn the LED off forever",
              "If the button is pressed, change the backdrop",
              "If lives equals zero, show Game Over",
            ],
            optionsMy: [
              "Light Level သည် 30 ထက်နည်းလျှင် LED ကို ပွင့်ရန်၊ မဟုတ်ပါက ပိတ်ရန်",
              "Light Level သည် 100 နှင့်အတိအကျညီလျှင် LED ကို အမြဲပိတ်ထားရန်",
              "Button ကို နှိပ်လျှင် Backdrop ကို ပြောင်းရန်",
              "Lives သည် သုညနှင့်ညီလျှင် Game Over ပြရန်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what happens to the sensor reading when Nay Chi covers it with her hand?",
            questionMy:
                "စာပိုဒ် ၃ အရ Sensor ကို သူမ၏ လက်ဖြင့် ဖုံးအုပ်လိုက်သောအခါ ဖတ်ရလဒ်တွင် အဘယ်အရာ ဖြစ်ပေါ်သနည်း။",
            optionsEn: [
              "It drops below 30, and the LED clicks on",
              "It rises above 100, and the LED breaks",
              "It stays exactly the same, and nothing happens",
              "It becomes a digital reading instead",
            ],
            optionsMy: [
              "30 အောက်သို့ ကျဆင်းပြီး LED ပွင့်လာသည်",
              "100 ကျော်တက်ပြီး LED ပျက်စီးသွားသည်",
              "အတိအကျ တူညီနေပြီး ဘာမှ မဖြစ်ပေါ်ပါ",
              "Digital ဖတ်ရလဒ်အဖြစ် ပြောင်းလဲသွားသည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, where does Nay Chi test her threshold one final time?",
            questionMy:
                "စာပိုဒ် ၄ အရ Threshold ကို နှင်းချည် နောက်ဆုံးအကြိမ် မည်သည့်နေရာတွင် စမ်းသပ်သနည်း။",
            optionsEn: [
              "In her actual dark bedroom at bedtime",
              "In the school computer lab",
              "Inside her old class hobbies database",
              "On the school's automatic gate",
            ],
            optionsMy: [
              "အိပ်ရာဝင်ချိန် သူမ၏ အမှန်တကယ်မှောင်နေသော အိပ်ခန်းတွင်",
              "ကျောင်း ကွန်ပျူတာဓာတ်ခွဲခန်းတွင်",
              "သူမ၏ အတန်းဝါသနာ ဒေတာဘေ့စ်ဟောင်းတွင်",
              "ကျောင်း၏ အလိုအလျောက် ဂိတ်တွင်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w22-d5",
      dayNumber: 5,
      titleEn: "Digital and Analogue Round-Up",
      titleMy: "Digital နှင့် Analogue အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a digital input?",
          questionMy: "Digital Input ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "An input with only two possible states, such as on or off",
            "An input that can take any value in a range",
            "An actuator that turns on a motor",
            "A type of game backdrop",
          ],
          optionsMy: [
            "On (သို့) Off ကဲ့သို့ ဖြစ်နိုင်ခြေနှစ်ခုသာ ရှိသော Input",
            "အကွာအဝေးတစ်ခုအတွင်း မည်သည့်တန်ဖိုးမဆို ရနိုင်သော Input",
            "Motor ကိုပွင့်စေသော Actuator",
            "ဂိမ်း Backdrop အမျိုးအစားတစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is an analogue input?",
          questionMy: "Analogue Input ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "An input that can take a whole range of values",
            "An input with only two fixed states",
            "A device that only produces sound",
            "A backdrop that never changes",
          ],
          optionsMy: [
            "တန်ဖိုးအကွာအဝေးတစ်ခုလုံးကို ရနိုင်သော Input",
            "ဖြစ်နိုင်ခြေနှစ်ခုသာ ရှိသော Input",
            "အသံကိုသာ ထုတ်ပေးသော ကိရိယာ",
            "ဘယ်တော့မှ မပြောင်းလဲသော Backdrop",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a threshold used for?",
          questionMy: "Threshold ကို အဘယ်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Deciding, inside an IF condition, the value a sensor reading must cross before an action happens",
            "Storing a game's genre and rules",
            "Renaming a variable automatically",
            "Changing a backdrop's colour",
          ],
          optionsMy: [
            "လုပ်ဆောင်ချက်တစ်ခု မဖြစ်ပေါ်မီ Sensor ဖတ်ရလဒ် ဖြတ်ကျော်ရမည့်တန်ဖိုးကို IF Condition အတွင်း ဆုံးဖြတ်ရန်",
            "ဂိမ်း၏ Genre နှင့် Rules ကို သိမ်းဆည်းရန်",
            "Variable ကို အလိုအလျောက် အမည်ပြောင်းရန်",
            "Backdrop ၏ အရောင်ကို ပြောင်းလဲရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's nightlight, what does her IF condition compare the light level to?",
          questionMy:
              "နှင်းချည်၏ Nightlight တွင် သူမ၏ IF Condition သည် Light Level ကို အဘယ်အရာနှင့် နှိုင်းယှဉ်သနည်း။",
          optionsEn: [
            "A threshold of 30",
            "A threshold of 100",
            "The number of lives remaining",
            "The colour of the backdrop",
          ],
          optionsMy: [
            "Threshold 30",
            "Threshold 100",
            "ကျန်ရှိသော Lives အရေအတွက်",
            "Backdrop ၏ အရောင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why does Nay Chi say her threshold must be exactly right, just like her Term 5 win-condition?",
          questionMy:
              "သူမ၏ Term 5 အနိုင်ရ Condition ကဲ့သို့ Threshold သည် အတိအကျ ရှိရမည်ဟု နှင်းချည် ပြောသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "A wrong threshold would make the nightlight switch on and off at the wrong moments",
            "Thresholds have no effect on how a program behaves",
            "Only win-conditions ever need to be correct, not thresholds",
            "A threshold changes a program's genre automatically",
          ],
          optionsMy: [
            "မှားယွင်းသော Threshold သည် Nightlight ကို မှားယွင်းချိန်များတွင် ပွင့်ပိတ်စေနိုင်သောကြောင့်",
            "Threshold များသည် Program တစ်ခု၏ လုပ်ဆောင်ပုံကို လုံးဝ သက်ရောက်မှုမရှိသောကြောင့်",
            "အနိုင်ရ Condition များသာ မှန်ကန်ရန် လိုအပ်ပြီး Threshold များ မလိုအပ်သောကြောင့်",
            "Threshold တစ်ခုသည် Program ၏ Genre ကို အလိုအလျောက် ပြောင်းလဲပေးသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek23 = CourseWeekDef(
  id: "course-year6-computing-w23",
  weekNumber: 23,
  titleEn: "Combining Conditions: AND and OR for a Smart System",
  titleMy: "Condition ပေါင်းစပ်ခြင်း - Smart System တစ်ခုအတွက် AND နှင့် OR",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w23-d1",
      dayNumber: 1,
      titleEn: "AND and OR: Combining Sensors",
      titleMy: "AND နှင့် OR - Sensor များ ပေါင်းစပ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does an AND condition require to be true?",
          questionMy: "AND Condition တစ်ခု မှန်ကန်ရန် အဘယ်အရာလိုအပ်သနည်း။",
          optionsEn: [
            "Both parts of the condition must be true at the same time",
            "Only one part needs to be true",
            "Neither part needs to be true",
            "The condition is always true no matter what",
          ],
          optionsMy: [
            "Condition ၏ အစိတ်အပိုင်းနှစ်ခုစလုံး တစ်ပြိုင်နက် မှန်ကန်ရမည်",
            "အစိတ်အပိုင်းတစ်ခုသာ မှန်ကန်ရန် လိုအပ်သည်",
            "အစိတ်အပိုင်း မည်သည့်တစ်ခုမျှ မှန်ကန်ရန် မလိုအပ်ပါ",
            "မည်သို့ပင်ဖြစ်စေ Condition သည် အမြဲမှန်ကန်နေသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of the word \"and\" in English -- it joins two things that both need to happen.",
            "If either part of an AND condition is false, the whole condition becomes false.",
          ],
          hintsMy: [
            "အင်္ဂလိပ်စကားလုံး \"and\" ကို စဉ်းစားကြည့်ပါ -- ၎င်းသည် နှစ်ခုစလုံး ဖြစ်ပေါ်ရန် လိုအပ်သော အရာနှစ်ခုကို ဆက်စပ်ပေးသည်။",
            "AND Condition ၏ အစိတ်အပိုင်းတစ်ခုခု False ဖြစ်ပါက Condition တစ်ခုလုံးသည် False ဖြစ်သွားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What does an OR condition require to be true?",
          questionMy: "OR Condition တစ်ခု မှန်ကန်ရန် အဘယ်အရာလိုအပ်သနည်း။",
          optionsEn: [
            "At least one of the two parts must be true",
            "Both parts must always be true together",
            "Neither part is ever allowed to be true",
            "It requires exactly three conditions",
          ],
          optionsMy: [
            "အစိတ်အပိုင်းနှစ်ခုအနက် အနည်းဆုံးတစ်ခု မှန်ကန်ရမည်",
            "အစိတ်အပိုင်းနှစ်ခုစလုံး အမြဲအတူတကွ မှန်ကန်ရမည်",
            "အစိတ်အပိုင်း မည်သည့်တစ်ခုမျှ မှန်ကန်ခွင့်မရှိပါ",
            "Condition အတိအကျ သုံးခု လိုအပ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of the word \"or\" in English -- it offers a choice between two things.",
            "An OR condition only fails when both parts are false at once.",
          ],
          hintsMy: [
            "အင်္ဂလိပ်စကားလုံး \"or\" ကို စဉ်းစားကြည့်ပါ -- ၎င်းသည် အရာနှစ်ခုကြား ရွေးချယ်ခွင့် ပေးသည်။",
            "OR Condition သည် အစိတ်အပိုင်းနှစ်ခုစလုံး တစ်ပြိုင်နက် False ဖြစ်မှသာ မမှန်ကန်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "\"Water the plants only if the soil is dry AND it is daytime.\" Why is AND used here rather than OR?",
          questionMy:
              "\"မြေဆီလွှာ ခြောက်နေ AND နေ့အချိန်ဖြစ်နေမှသာ အပင်များကို ရေလောင်းရန်။\" ဤနေရာတွင် OR အစား AND ကို အသုံးပြုသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Because both the dry soil and the daytime condition must be true together before watering happens",
            "Because only one of the two conditions needs to be checked",
            "Because AND always means the opposite of what it says",
            "Because watering should happen constantly regardless of conditions",
          ],
          optionsMy: [
            "ရေမလောင်းမီ မြေဆီလွှာခြောက်ခြင်းနှင့် နေ့အချိန်ဖြစ်ခြင်း နှစ်ခုစလုံး တစ်ပြိုင်နက် မှန်ကန်ရမည်ဖြစ်သောကြောင့်",
            "Condition နှစ်ခုအနက် တစ်ခုကိုသာ စစ်ဆေးရန် လိုအပ်သောကြောင့်",
            "AND သည် ၎င်းပြောသည့်အရာ၏ ဆန့်ကျင်ဘက်ကို အမြဲဆိုလိုသောကြောင့်",
            "Condition မည်သို့ပင်ဖြစ်စေ ရေလောင်းခြင်းသည် အမြဲဖြစ်ပေါ်သင့်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Would you want the plants watered at night, even if the soil is dry?",
            "AND makes sure watering only happens when both conditions line up together, avoiding unwanted watering at night.",
          ],
          hintsMy: [
            "မြေဆီလွှာ ခြောက်နေသော်လည်း ညအချိန်တွင် အပင်များကို ရေလောင်းစေချင်ပါသလား။",
            "AND သည် Condition နှစ်ခုစလုံး အတူတကွ ကိုက်ညီမှသာ ရေလောင်းခြင်း ဖြစ်ပေါ်စေပြီး ညအချိန် အလိုမလိုရေလောင်းခြင်းကို ရှောင်ရှားပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "\"Sound the alarm if the door sensor OR the window sensor is triggered.\" Why is OR used here rather than AND?",
          questionMy:
              "\"တံခါး Sensor OR ပြတင်းပေါက် Sensor တစ်ခုခု လှုံ့ဆော်ခံရလျှင် Alarm ကို မြည်ရန်။\" ဤနေရာတွင် AND အစား OR ကို အသုံးပြုသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Because either sensor alone should be enough to trigger the alarm",
            "Because both sensors must be triggered together before anything happens",
            "Because sensors cannot be combined with any logic at all",
            "Because OR means the alarm never sounds",
          ],
          optionsMy: [
            "Sensor တစ်ခုတည်း လှုံ့ဆော်ခံရသည့်တိုင် Alarm မြည်ရန် လုံလောက်သင့်သောကြောင့်",
            "ဘာမှမဖြစ်ပေါ်မီ Sensor နှစ်ခုစလုံး အတူတကွ လှုံ့ဆော်ခံရမည်ဖြစ်သောကြောင့်",
            "Sensor များကို Logic မည်သည့်အမျိုးအစားနှင့်မျှ ပေါင်းစပ်၍ မရနိုင်သောကြောင့်",
            "OR ဆိုသည်မှာ Alarm ဘယ်တော့မှ မမြည်ဟု ဆိုလိုသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Should the alarm wait for someone to break in through both the door and the window at once?",
            "For safety, either sensor alone should be able to trigger the alarm -- that is exactly what OR allows.",
          ],
          hintsMy: [
            "တံခါးနှင့် ပြတင်းပေါက် နှစ်ခုစလုံးမှတစ်ဆင့် တစ်ပြိုင်နက် ဝင်ရောက်ချိုးဖောက်သူကို Alarm က စောင့်ဆိုင်းသင့်ပါသလား။",
            "လုံခြုံရေးအတွက် Sensor တစ်ခုတည်းကပင် Alarm ကို လှုံ့ဆော်နိုင်သင့်သည် -- ၎င်းသည် OR က ခွင့်ပြုပေးသော အရာအတိအကျ ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w23-d2",
      dayNumber: 2,
      titleEn: "Match the AND/OR and Smart System Vocabulary",
      titleMy: "AND/OR နှင့် Smart System ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w23-dm-1",
          termEn: "AND",
          termMy: "AND",
          matchEn:
              "A condition that is only true when both of its parts are true",
          matchMy: "အစိတ်အပိုင်းနှစ်ခုစလုံး မှန်ကန်မှသာ မှန်ကန်သော Condition",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w23-dm-2",
          termEn: "OR",
          termMy: "OR",
          matchEn:
              "A condition that is true when at least one of its parts is true",
          matchMy:
              "အစိတ်အပိုင်း အနည်းဆုံးတစ်ခု မှန်ကန်လျှင် မှန်ကန်သော Condition",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w23-dm-3",
          termEn: "Smart home",
          termMy: "Smart Home",
          matchEn:
              "A system that uses sensors and conditions to automatically control real devices in a house",
          matchMy:
              "အိမ်တွင်းရှိ အစစ်အမှန်ကိရိယာများကို အလိုအလျောက် ထိန်းချုပ်ရန် Sensor နှင့် Condition များကို အသုံးပြုသော System",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w23-dm-4",
          termEn: "Smart garden",
          termMy: "Smart Garden",
          matchEn:
              "A system that uses sensors such as soil moisture and light to automatically water or light plants",
          matchMy:
              "အပင်များကို အလိုအလျောက် ရေလောင်း သို့မဟုတ် မီးထိုးရန် Soil Moisture နှင့် Light ကဲ့သို့ Sensor များကို အသုံးပြုသော System",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w23-dm-5",
          termEn: "Compound condition",
          termMy: "ပေါင်းစပ် Condition (Compound Condition)",
          matchEn:
              "A condition built by joining two or more simple conditions together with AND/OR",
          matchMy:
              "ရိုးရှင်း Condition နှစ်ခု (သို့) ထို့ထက်ပိုကို AND/OR ဖြင့် ဆက်စပ်တည်ဆောက်ထားသော Condition",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w23-dm-6",
          termEn: "Multiple outputs",
          termMy: "Multiple Outputs",
          matchEn:
              "A program that controls more than one actuator based on its decisions, such as a light and a pump",
          matchMy:
              "မီးနှင့် ရေစုပ်စက်ကဲ့သို့ ၎င်း၏ ဆုံးဖြတ်ချက်များအပေါ်မူတည်၍ Actuator တစ်ခုထက်ပို ထိန်းချုပ်ပေးသော Program",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w23-d3",
      dayNumber: 3,
      titleEn: "Sort: AND Logic or OR Logic?",
      titleMy: "စီစစ်ကြမည် - AND Logic လား၊ OR Logic လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["AND Logic", "OR Logic"],
        bucketsMy: ["AND Logic", "OR Logic"],
        items: [
          SortingItem(
            id: "y6comp-w23-sort-1",
            labelEn:
                "Water the plants only if the soil is dry AND it is daytime",
            labelMy:
                "မြေဆီလွှာခြောက် AND နေ့အချိန်ဖြစ်မှသာ အပင်များကို ရေလောင်းရန်",
            correctBucketEn: "AND Logic",
            correctBucketMy: "AND Logic",
          ),
          SortingItem(
            id: "y6comp-w23-sort-2",
            labelEn:
                "Sound the alarm if the door sensor OR the window sensor is triggered",
            labelMy:
                "တံခါး Sensor OR ပြတင်းပေါက် Sensor တစ်ခုခု လှုံ့ဆော်ခံရလျှင် Alarm ကို မြည်ရန်",
            correctBucketEn: "OR Logic",
            correctBucketMy: "OR Logic",
          ),
          SortingItem(
            id: "y6comp-w23-sort-3",
            labelEn:
                "Turn on the garden light only if it is dark AND motion is detected",
            labelMy:
                "မှောင်နေ AND လှုပ်ရှားမှု တွေ့ရှိမှသာ ဥယျာဉ်မီးကို ပွင့်ရန်",
            correctBucketEn: "AND Logic",
            correctBucketMy: "AND Logic",
          ),
          SortingItem(
            id: "y6comp-w23-sort-4",
            labelEn:
                "Open the greenhouse vent if the temperature is too hot OR the humidity is too high",
            labelMy:
                "အပူချိန်လွန်ကဲ OR စိုထိုင်းမှုလွန်ကဲလျှင် မြက်ခင်းအိမ် လေဝင်ပေါက်ကို ဖွင့်ရန်",
            correctBucketEn: "OR Logic",
            correctBucketMy: "OR Logic",
          ),
          SortingItem(
            id: "y6comp-w23-sort-5",
            labelEn:
                "Switch on the heater only if the room is cold AND someone is present",
            labelMy: "အခန်းအေး AND လူတစ်ဦးရှိနေမှသာ အပူပေးစက်ကို ပွင့်ရန်",
            correctBucketEn: "AND Logic",
            correctBucketMy: "AND Logic",
          ),
          SortingItem(
            id: "y6comp-w23-sort-6",
            labelEn:
                "Send a warning if the smoke sensor OR the gas sensor detects danger",
            labelMy:
                "မီးခိုး Sensor OR ဓာတ်ငွေ့ Sensor တစ်ခုခုက အန္တရာယ် တွေ့ရှိလျှင် သတိပေးချက် ပို့ရန်",
            correctBucketEn: "OR Logic",
            correctBucketMy: "OR Logic",
          ),
          SortingItem(
            id: "y6comp-w23-sort-7",
            labelEn:
                "Water the plants only if the soil is dry AND the water tank still has water",
            labelMy:
                "မြေဆီလွှာခြောက် AND ရေတိုင်ကီတွင် ရေရှိသေးမှသာ အပင်များကို ရေလောင်းရန်",
            correctBucketEn: "AND Logic",
            correctBucketMy: "AND Logic",
          ),
          SortingItem(
            id: "y6comp-w23-sort-8",
            labelEn:
                "Flash the porch light if the doorbell is pressed OR the motion sensor is triggered",
            labelMy:
                "ခေါင်းလောင်း နှိပ်လျှင် OR Motion Sensor လှုံ့ဆော်ခံရလျှင် အိမ်ဝင်ပေါက်မီးကို တောက်ပစေရန်",
            correctBucketEn: "OR Logic",
            correctBucketMy: "OR Logic",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w23-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Smart Garden Simulation",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ Smart Garden Simulation",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Smart Garden Simulation",
        titleMy: "နှင်းချည်၏ Smart Garden Simulation",
        passageEn:
            "For her smart-system project, Nay Chi decides to simulate a smart garden with two sensors: a soil moisture sensor and a light sensor. Her first idea is simple -- water the plants whenever the soil is dry -- but Ms. Thanda reminds her that watering plants at night can encourage mould. Nay Chi rewrites her condition using AND: \"if soil moisture is low AND it is daytime, then turn on the water pump.\" Now both parts must be true together before a single drop is used.\n\nNext, Nay Chi adds a safety feature: a warning light that should turn on if anything goes wrong. She wants it to trigger if the soil sensor breaks OR if the water tank runs empty -- either fault alone is serious enough on its own. This time she uses OR: \"if the soil sensor fails OR the tank is empty, then turn on the warning light.\" She remembers writing a very similar AND/OR search query back in her Term 4 database, filtering pupils by two conditions at once.\n\nTesting her simulation, Nay Chi dries out the soil sensor's reading and sets the clock to midday: the pump switches on exactly as planned. She sets the clock to midnight instead, keeping the soil dry -- and, correctly, the pump stays off. Finally, she empties the simulated tank, and the warning light flashes on immediately, exactly as her OR condition demanded.\n\n\"A smart system isn't just one sensor and one output,\" Nay Chi tells her table group. \"It's several conditions, combined carefully with AND and OR, so the right thing happens at the right time -- and nothing happens at the wrong time.\"",
        passageMy:
            "သူမ၏ Smart System စီမံကိန်းအတွက် နှင်းချည်သည် Sensor နှစ်ခုပါဝင်သော Smart Garden တစ်ခုကို Simulate လုပ်ရန် ဆုံးဖြတ်သည် -- Soil Moisture Sensor နှင့် Light Sensor။ သူမ၏ ပထမအိုင်ဒီယာမှာ ရိုးရှင်းသည် -- မြေဆီလွှာ ခြောက်တိုင်း အပင်များကို ရေလောင်းခြင်း -- သို့သော် ညအချိန်တွင် အပင်ရေလောင်းလျှင် မှိုတက်နိုင်ကြောင်း ဒေါ်သန္တာက သတိပေးသည်။ နှင်းချည်သည် AND ကို အသုံးပြု၍ Condition ကို ပြန်ရေးသည် -- \"Soil Moisture နည်းနေ AND နေ့အချိန်ဖြစ်နေလျှင် ရေစုပ်စက်ကို ပွင့်ရန်။\" ယခုတွင် ရေတစ်စက်မျှ အသုံးမပြုမီ ဤအစိတ်အပိုင်းနှစ်ခုစလုံး မှန်ကန်ရမည်ဖြစ်သည်။\n\nထို့နောက် နှင်းချည်သည် လုံခြုံရေးအင်္ဂါရပ်တစ်ခုကို ထပ်ထည့်သည် -- တစ်ခုခု မှားယွင်းလျှင် ပွင့်ရမည့် သတိပေးမီး။ Soil Sensor ပျက်စီးလျှင် OR ရေတိုင်ကီ ရေကုန်လျှင် ဖြစ်စေချင်သည် -- ဤချို့ယွင်းချက် တစ်ခုတည်းမျှ ကိုယ်တိုင်ပင် အလေးအနက်ထားထိုက်သည်။ ဤတစ်ကြိမ်တွင် OR ကို အသုံးပြုသည် -- \"Soil Sensor ချို့ယွင်းလျှင် OR ရေတိုင်ကီ ကုန်နေလျှင် သတိပေးမီးကို ပွင့်ရန်။\" သူမသည် Term 4 ၏ Database တွင် Condition နှစ်ခုကို တစ်ပြိုင်နက်ဖြင့် ကျောင်းသားများကို စစ်ထုတ်ရာ၌ ဆင်တူသော AND/OR Search Query ရေးခဲ့ဖူးသည်ကို သတိရသည်။\n\nသူမ၏ Simulation ကို စမ်းသပ်ရာတွင် နှင်းချည်သည် Soil Sensor ၏ ဖတ်ရလဒ်ကို ခြောက်သွေ့အောင်ပြုလုပ်ပြီး နာရီကို မွန်းတည့်ချိန်သို့ ချိန်ညှိသည် -- ရေစုပ်စက်သည် စီစဉ်ထားသည့်အတိုင်း အတိအကျ ပွင့်လာသည်။ ထို့နောက် သူမ နာရီကို သန်းခေါင်ချိန်သို့ ပြောင်းလိုက်ပြီး မြေဆီလွှာကို ခြောက်နေအောင် ထားသည် -- ရေစုပ်စက်သည် မှန်ကန်စွာပင် ပိတ်နေသေးသည်။ နောက်ဆုံးတွင် သူမ Simulate လုပ်ထားသော ရေတိုင်ကီကို ဗလာဖြစ်အောင်ပြုလုပ်လိုက်ရာ သတိပေးမီးသည် OR Condition တောင်းဆိုသည့်အတိုင်း ချက်ချင်း တောက်ပလင်းလက်လာသည်။\n\n\"Smart System တစ်ခုဆိုတာ Sensor တစ်ခုတည်း၊ Output တစ်ခုတည်းမျှ မဟုတ်ဘူး\" ဟု နှင်းချည်က သူမ၏ စားပွဲအုပ်စုသို့ ပြောပြသည်။ \"မှန်ကန်သောအရာသည် မှန်ကန်သောအချိန်တွင် ဖြစ်ပေါ်ပြီး မှားယွင်းသောအချိန်တွင် ဘာမှ မဖြစ်ပေါ်စေရန် AND နှင့် OR ဖြင့် ဂရုတစိုက် ပေါင်းစပ်ထားသော Condition များစွာ ဖြစ်တယ်။\"",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what condition does Nay Chi write to control her water pump, and why does she use AND?",
            questionMy:
                "စာပိုဒ် ၁ အရ သူမ၏ ရေစုပ်စက်ကို ထိန်းချုပ်ရန် နှင်းချည် မည်သည့် Condition ကို ရေးပြီး AND ကို အဘယ်ကြောင့် အသုံးပြုသနည်း။",
            optionsEn: [
              "Soil moisture is low AND it is daytime, so the plants are not watered at night",
              "Soil moisture is low OR it is daytime, so the pump runs constantly",
              "The tank is empty AND the sensor fails, controlling the warning light",
              "The pump only runs when nobody is watching",
            ],
            optionsMy: [
              "Soil Moisture နည်းနေ AND နေ့အချိန်ဖြစ်နေခြင်း၊ ညအချိန် အပင်ရေမလောင်းစေရန်",
              "Soil Moisture နည်းနေ OR နေ့အချိန်ဖြစ်နေခြင်း၊ ရေစုပ်စက်ကို အမြဲမပြတ်လုပ်ဆောင်စေရန်",
              "ရေတိုင်ကီ ဗလာဖြစ်နေ AND Sensor ချို့ယွင်းနေခြင်း၊ သတိပေးမီးကို ထိန်းချုပ်ရန်",
              "မည်သူမျှ မကြည့်နေချိန်တွင်သာ ရေစုပ်စက် လုပ်ဆောင်ခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what OR condition does Nay Chi write for her warning light, and what earlier term does she connect it to?",
            questionMy:
                "စာပိုဒ် ၂ အရ သူမ၏ သတိပေးမီးအတွက် နှင်းချည် မည်သည့် OR Condition ကို ရေးပြီး မည်သည့် Term အစောပိုင်းနှင့် ဆက်စပ်သနည်း။",
            optionsEn: [
              "The soil sensor fails OR the tank is empty, connecting back to her Term 4 database queries",
              "The soil is wet OR it is nighttime, connecting back to her Term 1 debugging",
              "The pump breaks OR the light works, connecting back to her Term 2 web pages",
              "Nothing fails OR the tank is full, connecting back to her Term 3 spreadsheets",
            ],
            optionsMy: [
              "Soil Sensor ချို့ယွင်း OR ရေတိုင်ကီ ဗလာဖြစ်ခြင်း၊ Term 4 ၏ Database Query များနှင့် ဆက်စပ်",
              "မြေဆီလွှာ စိုနေ OR ညအချိန်ဖြစ်ခြင်း၊ Term 1 ၏ Debugging နှင့် ဆက်စပ်",
              "ရေစုပ်စက် ပျက်စီး OR မီးအလုပ်လုပ်ခြင်း၊ Term 2 ၏ Web Page များနှင့် ဆက်စပ်",
              "ဘာမှ ချို့ယွင်းမှုမရှိ OR ရေတိုင်ကီ ပြည့်နေခြင်း၊ Term 3 ၏ Spreadsheet များနှင့် ဆက်စပ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what happens when Nay Chi sets the clock to midnight while the soil stays dry?",
            questionMy:
                "စာပိုဒ် ၃ အရ မြေဆီလွှာ ခြောက်နေဆဲတွင် နာရီကို သန်းခေါင်ချိန်သို့ ချိန်ညှိလိုက်သောအခါ အဘယ်အရာ ဖြစ်ပေါ်သနည်း။",
            optionsEn: [
              "The pump correctly stays off, since it is not daytime",
              "The pump switches on immediately",
              "The warning light switches on instead",
              "The soil sensor breaks completely",
            ],
            optionsMy: [
              "နေ့အချိန်မဟုတ်သောကြောင့် ရေစုပ်စက် မှန်ကန်စွာပင် ပိတ်နေသည်",
              "ရေစုပ်စက် ချက်ချင်း ပွင့်လာသည်",
              "အစား သတိပေးမီး ပွင့်လာသည်",
              "Soil Sensor လုံးဝ ပျက်စီးသွားသည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, what lesson does Nay Chi share with her table group at the end of the passage?",
            questionMy:
                "စာပိုဒ် ၄ အရ စာပိုဒ်အဆုံးတွင် သူမ၏ စားပွဲအုပ်စုအား နှင်းချည် မည်သည့်သင်ခန်းစာကို မျှဝေသနည်း။",
            optionsEn: [
              "A smart system combines several conditions with AND and OR so the right thing happens at the right time",
              "A smart system only ever needs one sensor and one output",
              "AND and OR make no difference to how a system behaves",
              "Smart gardens never need any testing at all",
            ],
            optionsMy: [
              "မှန်ကန်သောအရာ မှန်ကန်သောအချိန်တွင် ဖြစ်ပေါ်ရန် Smart System သည် Condition များစွာကို AND နှင့် OR ဖြင့် ပေါင်းစပ်ထားကြောင်း",
              "Smart System သည် Sensor တစ်ခုတည်းနှင့် Output တစ်ခုတည်းသာ လိုအပ်ကြောင်း",
              "AND နှင့် OR သည် System တစ်ခု၏ လုပ်ဆောင်ပုံကို လုံးဝ ကွာခြားမှုမရှိစေကြောင်း",
              "Smart Garden များသည် Testing လုံးဝ မလိုအပ်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w23-d5",
      dayNumber: 5,
      titleEn: "AND/OR and Smart Systems Round-Up",
      titleMy: "AND/OR နှင့် Smart System အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does an AND condition need to be true?",
          questionMy: "AND Condition တစ်ခု မှန်ကန်ရန် အဘယ်အရာလိုအပ်သနည်း။",
          optionsEn: [
            "Both parts must be true at the same time",
            "Only one part needs to be true",
            "Neither part matters at all",
            "It is always false",
          ],
          optionsMy: [
            "အစိတ်အပိုင်းနှစ်ခုစလုံး တစ်ပြိုင်နက် မှန်ကန်ရမည်",
            "အစိတ်အပိုင်းတစ်ခုသာ မှန်ကန်ရန် လိုအပ်သည်",
            "အစိတ်အပိုင်း မည်သည့်တစ်ခုမျှ အရေးမကြီးပါ",
            "အမြဲတမ်း False ဖြစ်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does an OR condition need to be true?",
          questionMy: "OR Condition တစ်ခု မှန်ကန်ရန် အဘယ်အရာလိုအပ်သနည်း။",
          optionsEn: [
            "At least one part must be true",
            "Both parts must be true together",
            "No part is ever allowed to be true",
            "It requires a sensor and an actuator only",
          ],
          optionsMy: [
            "အနည်းဆုံး အစိတ်အပိုင်းတစ်ခု မှန်ကန်ရမည်",
            "အစိတ်အပိုင်းနှစ်ခုစလုံး အတူတကွ မှန်ကန်ရမည်",
            "အစိတ်အပိုင်း မည်သည့်တစ်ခုမျှ မှန်ကန်ခွင့်မရှိပါ",
            "Sensor နှင့် Actuator တစ်ခုစီသာ လိုအပ်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's smart garden, what condition controls the water pump?",
          questionMy:
              "နှင်းချည်၏ Smart Garden တွင် ရေစုပ်စက်ကို မည်သည့် Condition က ထိန်းချုပ်သနည်း။",
          optionsEn: [
            "Soil moisture is low AND it is daytime",
            "Soil moisture is low OR it is nighttime",
            "The tank is empty AND the sensor fails",
            "Nothing at all controls the pump",
          ],
          optionsMy: [
            "Soil Moisture နည်းနေ AND နေ့အချိန်ဖြစ်နေခြင်း",
            "Soil Moisture နည်းနေ OR ညအချိန်ဖြစ်နေခြင်း",
            "ရေတိုင်ကီ ဗလာဖြစ်နေ AND Sensor ချို့ယွင်းနေခြင်း",
            "ရေစုပ်စက်ကို ဘာမှ မထိန်းချုပ်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What condition controls Nay Chi's warning light?",
          questionMy:
              "နှင်းချည်၏ သတိပေးမီးကို မည်သည့် Condition က ထိန်းချုပ်သနည်း။",
          optionsEn: [
            "The soil sensor fails OR the tank is empty",
            "The soil is wet AND it is daytime",
            "Nothing controls it at all",
            "It is always switched on",
          ],
          optionsMy: [
            "Soil Sensor ချို့ယွင်း OR ရေတိုင်ကီ ဗလာဖြစ်ခြင်း",
            "မြေဆီလွှာ စိုနေ AND နေ့အချိန်ဖြစ်ခြင်း",
            "ဘာမှ မထိန်းချုပ်ပါ",
            "အမြဲပွင့်နေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the overall lesson Nay Chi shares about smart systems?",
          questionMy:
              "Smart System များနှင့်ပတ်သက်၍ နှင်းချည် မျှဝေသော အထွေထွေသင်ခန်းစာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Several conditions combined carefully with AND and OR make the right thing happen at the right time",
            "A smart system never needs more than one sensor",
            "AND and OR always produce the exact same result",
            "Smart systems do not need any testing",
          ],
          optionsMy: [
            "AND နှင့် OR ဖြင့် ဂရုတစိုက် ပေါင်းစပ်ထားသော Condition များစွာသည် မှန်ကန်သောအရာကို မှန်ကန်သောအချိန်တွင် ဖြစ်ပေါ်စေကြောင်း",
            "Smart System တစ်ခုသည် Sensor တစ်ခုထက်ပို ဘယ်တော့မှ မလိုအပ်ကြောင်း",
            "AND နှင့် OR သည် ရလဒ်တူညီအမြဲ ဖြစ်ပေါ်စေကြောင်း",
            "Smart System များသည် Testing လုံးဝ မလိုအပ်ကြောင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek24 = CourseWeekDef(
  id: "course-year6-computing-w24",
  weekNumber: 24,
  titleEn: "Capstone: Nay Chi's Physical Computing Project",
  titleMy: "Capstone - နှင်းချည်၏ Physical Computing စီမံကိန်း",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w24-d1",
      dayNumber: 1,
      titleEn: "Planning and Building the Whole Project",
      titleMy: "စီမံကိန်းတစ်ခုလုံးကို စီစဉ်တည်ဆောက်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Before starting her own physical computing project, what should Nay Chi review from Week 21?",
          questionMy:
              "ကိုယ်ပိုင် Physical Computing စီမံကိန်း မစတင်မီ Week 21 မှ နှင်းချည် အဘယ်အရာကို ပြန်လည်သုံးသပ်သင့်သနည်း။",
          optionsEn: [
            "The difference between an input/sensor and an output/actuator",
            "How to write a spreadsheet formula",
            "How to search a database using AND",
            "How to design a game's backdrop",
          ],
          optionsMy: [
            "Input/Sensor နှင့် Output/Actuator ကြား ကွာခြားချက်",
            "Spreadsheet ဖော်မြူလာ ရေးနည်း",
            "AND ကို အသုံးပြု၍ Database ရှာဖွေနည်း",
            "ဂိမ်း၏ Backdrop ဒီဇိုင်းလုပ်နည်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Which lesson introduced the words \"input\", \"output\", \"sensor\" and \"actuator\" for the very first time?",
            "Review Week 21's distinction: a sensor detects and reports (input), while an actuator changes something in the real world (output).",
          ],
          hintsMy: [
            "\"Input\"၊ \"Output\"၊ \"Sensor\" နှင့် \"Actuator\" ဟူသော စကားလုံးများကို မည်သည့်သင်ခန်းစာက ပထမဆုံးအကြိမ် မိတ်ဆက်ခဲ့သနည်း။",
            "Week 21 ၏ ခွဲခြားချက်ကို ပြန်လည်သုံးသပ်ပါ - Sensor သည် တွေ့ရှိတင်ပြသည် (Input)၊ Actuator သည် လက်တွေ့ကမ္ဘာရှိ တစ်ခုခုကို ပြောင်းလဲပေးသည် (Output)။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What three ingredients from Weeks 21-23 should Nay Chi combine in her own physical computing project?",
          questionMy:
              "Week 21 မှ 23 အထိကို ဆက်စပ်၍ သူမ၏ ကိုယ်ပိုင် Physical Computing စီမံကိန်းတွင် ပေါင်းစပ်ရမည့် အရာသုံးခုမှာ အဘယ်နည်း။",
          optionsEn: [
            "A sensor input, a selection condition (possibly combined with AND/OR), and an actuator output",
            "A design document, sprites and a backdrop",
            "A search query, a sort order and a filter",
            "A function, a loop and a variable only",
          ],
          optionsMy: [
            "Sensor Input တစ်ခု၊ Selection Condition တစ်ခု (AND/OR နှင့် ပေါင်းစပ်နိုင်သည်) နှင့် Actuator Output တစ်ခု",
            "Design Document၊ Sprite များနှင့် Backdrop",
            "Search Query၊ Sort Order နှင့် Filter",
            "Function၊ Loop နှင့် Variable တစ်ခုတည်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about what Weeks 21, 22 and 23 each added on top of each other -- sensors/actuators, then selection, then AND/OR.",
            "A complete physical computing project needs something to sense (input), something to decide (a condition), and something to respond (output).",
          ],
          hintsMy: [
            "Week 21၊ 22 နှင့် 23 တစ်ခုစီက အဘယ်အရာကို တစ်ခုပေါ် တစ်ခု ထပ်ဆင့်ထည့်သွင်းခဲ့သနည်းကို စဉ်းစားကြည့်ပါ -- Sensor/Actuator၊ ထို့နောက် Selection၊ ထို့နောက် AND/OR။",
            "ပြီးပြည့်စုံသော Physical Computing စီမံကိန်းတစ်ခုသည် အာရုံခံစရာ (Input)၊ ဆုံးဖြတ်စရာ (Condition) နှင့် တုံ့ပြန်စရာ (Output) တစ်ခုစီ လိုအပ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What does \"testing\" a physical computing project mean?",
          questionMy:
              "Physical Computing စီမံကိန်းတစ်ခုကို \"Testing\" လုပ်ခြင်း ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "Trying the sensor in different real conditions to check the actuator responds correctly",
            "Deleting the sensor once the project is finished",
            "Never checking whether the actuator works at all",
            "Only testing the project once, without changing any conditions",
          ],
          optionsMy: [
            "Actuator မှန်ကန်စွာ တုံ့ပြန်မတုံ့ပြန်ကို စစ်ဆေးရန် Sensor ကို လက်တွေ့အခြေအနေမတူသော နေရာများတွင် စမ်းသပ်ခြင်း",
            "စီမံကိန်း ပြီးဆုံးသောအခါ Sensor ကို ဖျက်ပစ်ခြင်း",
            "Actuator အလုပ်လုပ်မလုပ်ကို လုံးဝ မစစ်ဆေးဘဲထားခြင်း",
            "Condition မည်သည့်တစ်ခုမျှ မပြောင်းလဲဘဲ တစ်ကြိမ်တည်း စမ်းသပ်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Testing isn't just running the code once and hoping -- it means deliberately checking different real situations.",
            "For a light sensor project, that could mean testing in a bright room and in a dark room to see if the actuator reacts correctly each time.",
          ],
          hintsMy: [
            "Testing ဆိုသည်မှာ ကုဒ်ကို တစ်ကြိမ်တည်း Run လုပ်ပြီး မျှော်လင့်နေခြင်းမျှ မဟုတ်ပါ -- လက်တွေ့ အခြေအနေမတူသည်များကို တမင်တကာ စစ်ဆေးခြင်း ဖြစ်သည်။",
            "Light Sensor စီမံကိန်းတစ်ခုအတွက်ဆိုလျှင် Actuator သည် အကြိမ်တိုင်း မှန်ကန်စွာ တုံ့ပြန်မတုံ့ပြန်ကို ကြည့်ရန် အလင်းရှိသောအခန်းနှင့် မှောင်နေသောအခန်းနှစ်ခုစလုံးတွင် စမ်းသပ်ရန် ဆိုလိုနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "While testing, Nay Chi notices her LED never turns on even in a very dark room. What should she do?",
          questionMy:
              "Testing လုပ်နေစဉ် အလွန်မှောင်နေသော အခန်းတွင်ပင် LED လုံးဝ မပွင့်လာသည်ကို နှင်းချည် သတိပြုမိသည်။ သူမ အဘယ်အရာလုပ်သင့်သနည်း။",
          optionsEn: [
            "Debug her code by checking whether her IF condition's threshold value is correct",
            "Give up and remove the LED completely",
            "Ignore the problem since it is not important",
            "Change her whole project's genre instead",
          ],
          optionsMy: [
            "IF Condition ၏ Threshold တန်ဖိုး မှန်ကန်မမှန်ကန်ကို စစ်ဆေး၍ ကုဒ်ကို Debug လုပ်ရန်",
            "လက်လျှော့ပြီး LED ကို လုံးဝ ဖယ်ရှားပစ်ရန်",
            "ပြဿနာကို အရေးမကြီးသောကြောင့် လျစ်လျူရှုရန်",
            "ယင်းအစား သူမ၏ စီမံကိန်းတစ်ခုလုံး၏ Genre ကို ပြောင်းလဲရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "If the actuator never responds, the problem is usually somewhere in the condition that is supposed to trigger it.",
            "Check the exact number used as the threshold -- a small typo in that number can make a condition almost impossible to satisfy.",
          ],
          hintsMy: [
            "Actuator ဘယ်တော့မှ မတုံ့ပြန်ပါက ပြဿနာသည် များသောအားဖြင့် ၎င်းကို လှုံ့ဆော်ပေးရမည့် Condition တစ်နေရာနေရာတွင် ရှိတတ်သည်။",
            "Threshold အဖြစ် အသုံးပြုထားသော ဂဏန်းအတိအကျကို စစ်ဆေးပါ -- ထိုဂဏန်းတွင် စာလုံးအမှားလေးတစ်ခုသည် Condition ကို ဖြစ်ပေါ်ရန် နီးပါးမဖြစ်နိုင်လောက်အောင် ပြုလုပ်တတ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w24-d2",
      dayNumber: 2,
      titleEn: "Match the Term 6 Vocabulary",
      titleMy: "Term 6 ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w24-dm-1",
          termEn: "Sensor",
          termMy: "Sensor",
          matchEn:
              "A device that detects something in the real world and turns it into data, such as light or temperature",
          matchMy:
              "အလင်း (သို့) အပူချိန်ကဲ့သို့ လက်တွေ့ကမ္ဘာရှိ အရာတစ်ခုခုကို တွေ့ရှိပြီး ဒေတာအဖြစ် ပြောင်းလဲပေးသော ကိရိယာ",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w24-dm-2",
          termEn: "Actuator",
          termMy: "Actuator",
          matchEn:
              "A device that acts on the real world using electrical signals, such as an LED, buzzer or motor",
          matchMy:
              "LED၊ Buzzer (သို့) Motor ကဲ့သို့ လျှပ်စစ်အချက်ပြမှုများကို အသုံးပြု၍ လက်တွေ့ကမ္ဘာအပေါ် အကျိုးသက်ရောက်စေသော ကိရိယာ",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w24-dm-3",
          termEn: "Digital input",
          termMy: "Digital Input",
          matchEn: "An input with only two possible states, such as on or off",
          matchMy: "On (သို့) Off ကဲ့သို့ ဖြစ်နိုင်ခြေနှစ်ခုသာ ရှိသော Input",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w24-dm-4",
          termEn: "Analogue input",
          termMy: "Analogue Input",
          matchEn:
              "An input that can take a whole range of values, such as a light level from 0 to 100",
          matchMy:
              "0 မှ 100 အထိ Light Level ကဲ့သို့ တန်ဖိုးအကွာအဝေးတစ်ခုလုံးကို ရနိုင်သော Input",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w24-dm-5",
          termEn: "Selection (IF)",
          termMy: "Selection (IF)",
          matchEn:
              "A structure that checks a condition and decides what a program does next",
          matchMy:
              "Condition တစ်ခုကို စစ်ဆေးပြီး Program နောက်တစ်ဆင့် မည်သို့လုပ်ဆောင်ရမည်ကို ဆုံးဖြတ်ပေးသော Structure",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w24-dm-6",
          termEn: "Compound condition (AND/OR)",
          termMy: "ပေါင်းစပ် Condition (AND/OR)",
          matchEn:
              "A condition built by joining two or more simple conditions together",
          matchMy:
              "ရိုးရှင်း Condition နှစ်ခု (သို့) ထို့ထက်ပိုကို ဆက်စပ်တည်ဆောက်ထားသော Condition",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w24-d3",
      dayNumber: 3,
      titleEn: "Sort: Planning Skill or Building Skill?",
      titleMy: "စီစစ်ကြမည် - Planning Skill လား၊ Building Skill လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Planning Skill", "Building Skill"],
        bucketsMy: ["Planning Skill", "Building Skill"],
        items: [
          SortingItem(
            id: "y6comp-w24-sort-1",
            labelEn:
                "Deciding her project idea needs a light sensor and an LED",
            labelMy:
                "သူမ၏ စီမံကိန်းအိုင်ဒီယာတွင် Light Sensor နှင့် LED လိုအပ်ကြောင်း ဆုံးဖြတ်ခြင်း",
            correctBucketEn: "Planning Skill",
            correctBucketMy: "Planning Skill",
          ),
          SortingItem(
            id: "y6comp-w24-sort-2",
            labelEn:
                "Writing the IF condition that checks whether the light level is below 30",
            labelMy:
                "Light Level 30 အောက်ရောက်မရောက်ကို စစ်ဆေးသော IF Condition ရေးသားခြင်း",
            correctBucketEn: "Building Skill",
            correctBucketMy: "Building Skill",
          ),
          SortingItem(
            id: "y6comp-w24-sort-3",
            labelEn:
                "Sketching which sensor and actuator her project will use before coding anything",
            labelMy:
                "ကုဒ်တစ်ခုမျှ မရေးမီ သူမ၏ စီမံကိန်းတွင် မည်သည့် Sensor နှင့် Actuator အသုံးပြုမည်ကို ရေးဆွဲခြင်း",
            correctBucketEn: "Planning Skill",
            correctBucketMy: "Planning Skill",
          ),
          SortingItem(
            id: "y6comp-w24-sort-4",
            labelEn:
                "Combining two conditions with AND to control a water pump",
            labelMy:
                "ရေစုပ်စက်ကို ထိန်းချုပ်ရန် Condition နှစ်ခုကို AND ဖြင့် ပေါင်းစပ်ခြင်း",
            correctBucketEn: "Building Skill",
            correctBucketMy: "Building Skill",
          ),
          SortingItem(
            id: "y6comp-w24-sort-5",
            labelEn:
                "Deciding her project will help water her home's plants automatically",
            labelMy:
                "သူမ၏ စီမံကိန်းသည် အိမ်ရှိ အပင်များကို အလိုအလျောက် ရေလောင်းပေးရန် ကူညီမည်ဟု ဆုံးဖြတ်ခြင်း",
            correctBucketEn: "Planning Skill",
            correctBucketMy: "Planning Skill",
          ),
          SortingItem(
            id: "y6comp-w24-sort-6",
            labelEn:
                "Debugging why her LED will not turn on even in a dark room",
            labelMy:
                "မှောင်နေသော အခန်းတွင်ပင် LED အဘယ့်ကြောင့် မပွင့်ကြောင်း Debug လုပ်ခြင်း",
            correctBucketEn: "Building Skill",
            correctBucketMy: "Building Skill",
          ),
          SortingItem(
            id: "y6comp-w24-sort-7",
            labelEn:
                "Choosing which real-world problem her physical computing project will solve",
            labelMy:
                "သူမ၏ Physical Computing စီမံကိန်းက မည်သည့် လက်တွေ့ပြဿနာကို ဖြေရှင်းမည်ကို ရွေးချယ်ခြင်း",
            correctBucketEn: "Planning Skill",
            correctBucketMy: "Planning Skill",
          ),
          SortingItem(
            id: "y6comp-w24-sort-8",
            labelEn:
                "Testing her finished program in both bright and dark rooms",
            labelMy:
                "အလင်းရှိသောအခန်းနှင့် မှောင်နေသောအခန်း နှစ်ခုစလုံးတွင် သူမ၏ ပြီးစီးထားသော Program ကို Testing လုပ်ခြင်း",
            correctBucketEn: "Building Skill",
            correctBucketMy: "Building Skill",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w24-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Physical Computing Showcase",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ Physical Computing Showcase",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Physical Computing Showcase",
        titleMy: "နှင်းချည်၏ Physical Computing Showcase",
        passageEn:
            "Showcase day has arrived, and every Year 6 pupil must present a small original physical computing idea. Nay Chi lays out her plan: a nightlight for her little brother's room, using a light sensor as her input and an LED as her actuator, with an IF condition deciding when the light should switch on.\n\nBefore the showcase, Nay Chi runs one final test in the darkened corner of the classroom Ms. Thanda has set up. To her surprise, the LED refuses to turn on at all, even in near-total darkness. Calmly, the same way she once traced a scoring bug back in her Term 5 Game Jam, Nay Chi checks her code line by line -- and finds it: her threshold had accidentally been typed as \"light level is less than 3\" instead of \"less than 30\". A single missing zero had made the condition almost impossible to trigger.\n\nNay Chi fixes the typo, saves her code, and tests again: as the corner grows dark, her LED clicks on exactly as planned. She adds one more touch, combining her light sensor with a simulated clock using AND -- \"if light level is low AND it is after 7pm, turn on the LED\" -- so the light will not accidentally switch on during a dark, cloudy afternoon.\n\nWhen it is her turn to present, Nay Chi explains her whole project to the class: her sensor, her actuator, her threshold, her AND condition, and the tiny typo that nearly broke everything. \"Physical computing is just my old game logic wearing a new costume,\" she tells them, smiling, \"input, decision, output -- except now it lights up a real room instead of a screen.\"",
        passageMy:
            "Showcase နေ့ ရောက်ရှိလာပြီဖြစ်ပြီး Year 6 ကျောင်းသားတိုင်းသည် မူရင်း Physical Computing အိုင်ဒီယာငယ်တစ်ခုကို တင်ပြရမည်ဖြစ်သည်။ နှင်းချည်သည် သူမ၏ အစီအစဉ်ကို ချထားသည် -- သူမ၏ ညီလေးအခန်းအတွက် Nightlight တစ်ခု၊ Input အဖြစ် Light Sensor ကို၊ Actuator အဖြစ် LED ကို အသုံးပြုကာ မီးပွင့်ရမည့်အချိန်ကို ဆုံးဖြတ်ပေးမည့် IF Condition တစ်ခုနှင့်တကွ။\n\nShowcase မတိုင်မီ ဒေါ်သန္တာ စီစဉ်ပေးထားသော အတန်း၏ မှောင်နေသောထောင့်တွင် နှင်းချည် နောက်ဆုံးအကြိမ် စမ်းသပ်ကြည့်သည်။ အံ့ဩစွာပင် LED သည် နီးပါးလုံးဝ မှောင်နေသည့်တိုင် လုံးဝမပွင့်ပါ။ တည်ငြိမ်စွာဖြင့် Term 5 Game Jam တွင် Score Bug ကို တစ်ကြိမ်က ခြေရာခံခဲ့ပုံအတိုင်း နှင်းချည်သည် သူမ၏ ကုဒ်ကို တစ်ကြောင်းချင်း စစ်ဆေးကြည့်ရာ -- တွေ့ရှိသည် -- သူမ၏ Threshold ကို \"light level is less than 3\" ဟု အမှတ်တမဲ့ ရိုက်ထည့်မိထားပြီး \"less than 30\" ဖြစ်ရမည့်အစား ဖြစ်နေသည်။ သုည (0) တစ်လုံး ပျောက်နေခြင်းသည် Condition ကို ဖြစ်ပေါ်ရန် နီးပါးမဖြစ်နိုင်လောက်အောင် ပြုလုပ်ခဲ့သည်။\n\nနှင်းချည်သည် စာလုံးအမှားကို ပြင်ဆင်ပြီး ကုဒ်ကို သိမ်းဆည်းကာ ထပ်မံစမ်းသပ်သည် -- ထောင့်သည် မှောင်လာသည်နှင့်အမျှ သူမ၏ LED သည် စီစဉ်ထားသည့်အတိုင်း အတိအကျ ပွင့်လာသည်။ သူမသည် Light Sensor ကို Simulate လုပ်ထားသော နာရီနှင့် AND ဖြင့် ပေါင်းစပ်ကာ နောက်ထပ် တစ်ဆင့် ထပ်ထည့်သည် -- \"Light Level နည်းနေ AND ည ၇ နာရီထက်နောက်ကျနေလျှင် LED ကို ပွင့်ရန်\" -- ၎င်းသည် မှောင်နေသော တိမ်ထူသည့်နေ့လယ်ခင်းတစ်ခုတွင် မီးအမှတ်တမဲ့ ပွင့်မသွားစေရန်ဖြစ်သည်။\n\nသူမ၏ တင်ပြရသည့်အလှည့်ရောက်သောအခါ နှင်းချည်သည် သူမ၏ စီမံကိန်းတစ်ခုလုံးကို အတန်းသို့ ရှင်းပြသည် -- သူမ၏ Sensor၊ Actuator၊ Threshold၊ AND Condition၊ ပြီးတော့ အားလုံးကို ပျက်စီးစေရာနီးပါးဖြစ်ခဲ့သော စာလုံးအမှားလေးတစ်ခု။ \"Physical Computing ဆိုတာ ငါ့ ဂိမ်း Logic ဟောင်းက Costume အသစ်ဝတ်ထားတာပဲ\" ဟု သူမ ပြုံးရွှင်စွာ ပြောပြသည်၊ \"Input၊ ဆုံးဖြတ်ချက်၊ Output -- ဒါပေမဲ့ အခုတော့ မျက်နှာပြင်အစား အခန်းအစစ်တစ်ခုကို လင်းစေတာပဲ ကွာသွားတယ်။\"",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what is Nay Chi's physical computing project idea?",
            questionMy:
                "စာပိုဒ် ၁ အရ နှင်းချည်၏ Physical Computing စီမံကိန်း အိုင်ဒီယာမှာ အဘယ်နည်း။",
            optionsEn: [
              "A nightlight using a light sensor as input and an LED as actuator",
              "A maze-chase game using sprites",
              "A spreadsheet tracking hobbies",
              "A database of her classmates' favourite subjects",
            ],
            optionsMy: [
              "Input အဖြစ် Light Sensor၊ Actuator အဖြစ် LED အသုံးပြုသော Nightlight",
              "Sprite များ အသုံးပြုသော Maze-chase ဂိမ်း",
              "ဝါသနာများ မှတ်တမ်းတင်သော Spreadsheet",
              "သူမ၏ အတန်းဖော်များ အကြိုက်ဆုံးဘာသာရပ် Database",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what bug does Nay Chi find while testing in the dark corner?",
            questionMy:
                "စာပိုဒ် ၂ အရ မှောင်နေသောထောင့်တွင် Testing လုပ်နေစဉ် နှင်းချည် မည်သည့် Bug ကို တွေ့ရှိသနည်း။",
            optionsEn: [
              "Her threshold was typed as \"less than 3\" instead of \"less than 30\"",
              "Her LED had no power source at all",
              "Her light sensor was placed upside down",
              "Her whole code file had been deleted",
            ],
            optionsMy: [
              "\"less than 30\" ဖြစ်ရမည့်အစား သူမ၏ Threshold ကို \"less than 3\" ဟု ရိုက်ထည့်မိခြင်း",
              "သူမ၏ LED တွင် လျှပ်စစ်ဓာတ်အား လုံးဝ မရှိခြင်း",
              "သူမ၏ Light Sensor ကို ပြောင်းပြန်တပ်ဆင်ထားခြင်း",
              "သူမ၏ ကုဒ်ဖိုင်တစ်ခုလုံး ဖျက်ပစ်ခံရခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what extra condition does Nay Chi add using AND?",
            questionMy:
                "စာပိုဒ် ၃ အရ AND ကို အသုံးပြု၍ နှင်းချည် မည်သည့် Condition ထပ်ထည့်သနည်း။",
            optionsEn: [
              "Light level is low AND it is after 7pm",
              "Light level is high AND it is before 7am",
              "The tank is empty AND the sensor fails",
              "The soil is dry AND it is daytime",
            ],
            optionsMy: [
              "Light Level နည်းနေ AND ည ၇ နာရီထက် နောက်ကျနေခြင်း",
              "Light Level များနေ AND မနက် ၇ နာရီမတိုင်မီ ဖြစ်ခြင်း",
              "ရေတိုင်ကီ ဗလာဖြစ်နေ AND Sensor ချို့ယွင်းနေခြင်း",
              "မြေဆီလွှာ ခြောက်နေ AND နေ့အချိန်ဖြစ်နေခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, what comparison does Nay Chi make to describe physical computing at the end of the passage?",
            questionMy:
                "စာပိုဒ် ၄ အရ စာပိုဒ်အဆုံးတွင် Physical Computing ကို ရှင်းပြရန် နှင်းချည် မည်သည့်နှိုင်းယှဉ်ချက်ကို ပြုလုပ်သနည်း။",
            optionsEn: [
              "It is her old game logic wearing a new costume -- input, decision, output, now lighting a real room",
              "It has nothing at all in common with her earlier coding work",
              "It replaces the need for any conditions completely",
              "It only works for game projects, not real devices",
            ],
            optionsMy: [
              "ငါ့ ဂိမ်း Logic ဟောင်းက Costume အသစ်ဝတ်ထားတာပဲ -- Input၊ ဆုံးဖြတ်ချက်၊ Output -- အခုတော့ အခန်းအစစ်ကို လင်းစေခြင်း",
              "သူမ၏ ယခင်ကုဒ်ရေးလုပ်ငန်းနှင့် လုံးဝ ဆက်စပ်မှုမရှိကြောင်း",
              "Condition မည်သည့်တစ်ခုမျှ လိုအပ်ချက်ကို လုံးဝ ဖယ်ရှားပေးကြောင်း",
              "ဂိမ်းစီမံကိန်းများအတွက်သာ အလုပ်လုပ်ပြီး အစစ်အမှန်ကိရိယာများအတွက် မဟုတ်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w24-d5",
      dayNumber: 5,
      titleEn: "Term 6 Round-Up: Physical Computing",
      titleMy: "Term 6 အနှစ်ချုပ် - Physical Computing",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is physical computing, according to Week 21?",
          questionMy:
              "Week 21 အရ Physical Computing ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A program that senses the real world and controls real devices, using sensors and actuators",
            "A game that only ever uses on-screen sprites",
            "A spreadsheet formula for adding numbers",
            "A search query written for a database",
          ],
          optionsMy: [
            "Sensor နှင့် Actuator များကို အသုံးပြု၍ လက်တွေ့ကမ္ဘာကို အာရုံခံပြီး အစစ်အမှန်ကိရိယာများကို ထိန်းချုပ်ပေးသော Program",
            "မျက်နှာပြင်ပေါ်ရှိ Sprite များကိုသာ အသုံးပြုသော ဂိမ်းတစ်ခု",
            "ဂဏန်းများ ပေါင်းရန် Spreadsheet ဖော်မြူလာ",
            "Database အတွက် ရေးထားသော Search Query",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "According to Week 22, what is the difference between digital and analogue input?",
          questionMy:
              "Week 22 အရ Digital Input နှင့် Analogue Input ကြား ကွာခြားချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Digital has only two states; analogue can be any value in a range",
            "Digital and analogue are exactly the same thing",
            "Digital only exists in games; analogue only exists in real life",
            "Analogue always means an LED, and digital always means a buzzer",
          ],
          optionsMy: [
            "Digital သည် ဖြစ်နိုင်ခြေနှစ်ခုသာ ရှိပြီး Analogue သည် အကွာအဝေးတစ်ခုအတွင်း မည်သည့်တန်ဖိုးမဆို ဖြစ်နိုင်သည်",
            "Digital နှင့် Analogue သည် အတိအကျ တူညီသော အရာဖြစ်ကြောင်း",
            "Digital သည် ဂိမ်းများတွင်သာ ရှိပြီး Analogue သည် လက်တွေ့ဘဝတွင်သာ ရှိကြောင်း",
            "Analogue သည် အမြဲ LED ကို ဆိုလိုပြီး Digital သည် အမြဲ Buzzer ကို ဆိုလိုကြောင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "According to Week 23, what does an AND condition require?",
          questionMy:
              "Week 23 အရ AND Condition တစ်ခုသည် အဘယ်အရာကို လိုအပ်သနည်း။",
          optionsEn: [
            "Both parts of the condition must be true together",
            "Only one part needs to be true",
            "AND always makes a condition false",
            "AND cannot be combined with sensors",
          ],
          optionsMy: [
            "Condition ၏ အစိတ်အပိုင်းနှစ်ခုစလုံး အတူတကွ မှန်ကန်ရမည်",
            "အစိတ်အပိုင်းတစ်ခုသာ မှန်ကန်ရန် လိုအပ်သည်",
            "AND သည် Condition ကို အမြဲ False ဖြစ်စေသည်",
            "AND ကို Sensor များနှင့် ပေါင်းစပ်၍ မရနိုင်ပါ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In her Week 24 capstone, what bug did Nay Chi find and fix in her own project?",
          questionMy:
              "Week 24 Capstone တွင် သူမ၏ ကိုယ်ပိုင်စီမံကိန်းရှိ မည်သည့် Bug ကို နှင်းချည် တွေ့ရှိပြင်ဆင်ခဲ့သနည်း။",
          optionsEn: [
            "Her threshold was typed as \"less than 3\" instead of \"less than 30\"",
            "Her light sensor had no wires connected at all",
            "Her whole design document was blank",
            "Her LED was the wrong colour",
          ],
          optionsMy: [
            "\"less than 30\" ဖြစ်ရမည့်အစား သူမ၏ Threshold ကို \"less than 3\" ဟု ရိုက်ထည့်မိခြင်း",
            "သူမ၏ Light Sensor တွင် ကြိုးများ လုံးဝ မချိတ်ဆက်ရသေးခြင်း",
            "သူမ၏ Design Document တစ်ခုလုံး ဗလာဖြစ်နေခြင်း",
            "သူမ၏ LED အရောင် မှားယွင်းနေခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the overall lesson of this whole term's physical computing capstone?",
          questionMy:
              "ဤ Term တစ်ခုလုံး၏ Physical Computing Capstone မှ ရရှိသော အထွေထွေသင်ခန်းစာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Combining a sensor input, a well-tested condition and an actuator output brings a real physical computing idea to life",
            "Physical computing never needs any conditions at all",
            "Only games ever need testing, not real devices",
            "Sensors and actuators can never be combined with AND or OR",
          ],
          optionsMy: [
            "Sensor Input တစ်ခု၊ ကောင်းစွာစစ်ဆေးထားသော Condition တစ်ခုနှင့် Actuator Output တစ်ခုကို ပေါင်းစပ်ခြင်းသည် အစစ်အမှန် Physical Computing အိုင်ဒီယာကို အသက်သွင်းပေးကြောင်း",
            "Physical Computing တွင် Condition မည်သည့်တစ်ခုမျှ ဘယ်တော့မှ မလိုအပ်ကြောင်း",
            "ဂိမ်းများသာ Testing လိုအပ်ပြီး အစစ်အမှန်ကိရိယာများ မလိုအပ်ကြောင်း",
            "Sensor နှင့် Actuator များကို AND (သို့) OR ဖြင့် ဘယ်တော့မှ ပေါင်းစပ်၍မရနိုင်ကြောင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _year6ComputingTerm6 = CourseTermDef(
  id: "course-year6-computing-t6",
  termNumber: 6,
  titleEn: "Physical Computing and Sensors",
  titleMy: "ရုပ်ပိုင်းဆိုင်ရာ ကွန်ပျူတာအသုံးချမှုနှင့် အာရုံခံကိရိယာများ",
  certificateTitleEn: "Physical Computing Explorer",
  certificateTitleMy: "ရုပ်ပိုင်းဆိုင်ရာ ကွန်ပျူတာ စူးစမ်းရှာဖွေသူ",
  weeks: [
    _year6ComputingWeek21,
    _year6ComputingWeek22,
    _year6ComputingWeek23,
    _year6ComputingWeek24,
  ],
);
