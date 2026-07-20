import '../../models/child_model.dart';
import 'mock_quiz_data.dart';

/// One Secondary/IGCSE curriculum module: bilingual catalog metadata plus
/// its own fixed set of MCQ [QuizQuestion]s. Structurally identical to
/// [PrimaryActivityDef] in `primary_curriculum_bank.dart` -- content plays
/// back through the same shared [McqQuizScreen].
class SecondaryActivityDef {
  const SecondaryActivityDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.contentType,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.questions,
  });

  final String id;
  final String subject;
  final Grade grade;
  final String contentType;
  final String titleEn;
  final String titleMy;
  final String descriptionEn;
  final String descriptionMy;
  final int starsReward;
  final List<QuizQuestion> questions;
}

const List<SecondaryActivityDef> secondaryCurriculumBank = [
  // ============================== SECONDARY 1 ==============================
  SecondaryActivityDef(
    id: 'mock-secondary1-algebra-1',
    subject: 'algebra',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Linear Equations',
    titleMy: 'မျဉ်းညီညွှတ်ညီမျှခြင်းများ',
    descriptionEn: 'Solve simple linear equations with one unknown.',
    descriptionMy:
        'အမည်မသိတစ်ခုပါသော ရိုးရှင်းသော မျဉ်းညီညွှတ်ညီမျှခြင်းများကို ဖြေရှင်းပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'Solve for x: x + 7 = 15',
        questionMy: 'x ကိုဖြေရှင်းပါ- x + 7 = 15',
        optionsEn: ['8', '22', '7', '15'],
        optionsMy: ['8', '22', '7', '15'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve for x: 3x = 21',
        questionMy: 'x ကိုဖြေရှင်းပါ- 3x = 21',
        optionsEn: ['7', '18', '24', '3'],
        optionsMy: ['7', '18', '24', '3'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve for x: 2x - 4 = 10',
        questionMy: 'x ကိုဖြေရှင်းပါ- 2x - 4 = 10',
        optionsEn: ['7', '3', '6', '14'],
        optionsMy: ['7', '3', '6', '14'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve for x: x / 4 = 9',
        questionMy: 'x ကိုဖြေရှင်းပါ- x / 4 = 9',
        optionsEn: ['36', '13', '5', '2.25'],
        optionsMy: ['36', '13', '5', '2.25'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If a number plus 12 equals 30, what is the number?',
        questionMy:
            'ကိန်းတစ်ခုကို ၁၂ နှင့်ပေါင်းလျှင် ၃၀ ဖြစ်ပါက ထိုကိန်းမှာ အဘယ်နည်း။',
        optionsEn: ['18', '42', '12', '30'],
        optionsMy: ['18', '42', '12', '30'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-algebra-2',
    subject: 'algebra',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Expanding Brackets',
    titleMy: 'အနားသတ်ကွင်းများ ဖြန့်ချခြင်း',
    descriptionEn: 'Practice expanding simple bracketed algebraic expressions.',
    descriptionMy: 'ရိုးရှင်းသော ကွင်းစကားရပ်များကို ဖြန့်ချလေ့ကျင့်ပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'Expand: 3(x + 2)',
        questionMy: 'ဖြန့်ချပါ- 3(x + 2)',
        optionsEn: ['3x + 6', '3x + 2', 'x + 6', '3x + 5'],
        optionsMy: ['3x + 6', '3x + 2', 'x + 6', '3x + 5'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Expand: 4(y - 3)',
        questionMy: 'ဖြန့်ချပါ- 4(y - 3)',
        optionsEn: ['4y - 12', '4y - 3', 'y - 12', '4y + 12'],
        optionsMy: ['4y - 12', '4y - 3', 'y - 12', '4y + 12'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Expand: 2(a + b)',
        questionMy: 'ဖြန့်ချပါ- 2(a + b)',
        optionsEn: ['2a + 2b', 'a + b', '2a + b', 'a + 2b'],
        optionsMy: ['2a + 2b', 'a + b', '2a + b', 'a + 2b'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Expand: 5(2x - 1)',
        questionMy: 'ဖြန့်ချပါ- 5(2x - 1)',
        optionsEn: ['10x - 5', '10x - 1', '2x - 5', '7x - 5'],
        optionsMy: ['10x - 5', '10x - 1', '2x - 5', '7x - 5'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Expand: -2(x + 4)',
        questionMy: 'ဖြန့်ချပါ- -2(x + 4)',
        optionsEn: ['-2x - 8', '-2x + 8', '2x - 8', '-2x - 4'],
        optionsMy: ['-2x - 8', '-2x + 8', '2x - 8', '-2x - 4'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-algebra-3',
    subject: 'algebra',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Substitution',
    titleMy: 'အစားထိုးခြင်း',
    descriptionEn: 'Substitute given values into simple algebraic expressions.',
    descriptionMy:
        'ပေးထားသောတန်ဖိုးများကို ရိုးရှင်းသော အက္ခရာသင်္ချာဖော်ပြချက်များထဲသို့ အစားထိုးပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'If x = 3, what is 2x + 5?',
        questionMy: 'x = 3 ဖြစ်လျှင် 2x + 5 ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['11', '8', '10', '13'],
        optionsMy: ['11', '8', '10', '13'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If x = 4 and y = 2, what is x + 3y?',
        questionMy: 'x = 4 နှင့် y = 2 ဖြစ်လျှင် x + 3y ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['10', '9', '14', '6'],
        optionsMy: ['10', '9', '14', '6'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If a = 5, what is a squared (a²)?',
        questionMy: 'a = 5 ဖြစ်လျှင် a squared (a²) ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['25', '10', '15', '20'],
        optionsMy: ['25', '10', '15', '20'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If x = -2, what is x + 6?',
        questionMy: 'x = -2 ဖြစ်လျှင် x + 6 ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['4', '8', '-4', '-8'],
        optionsMy: ['4', '8', '-4', '-8'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If p = 6 and q = 3, what is p / q + 1?',
        questionMy:
            'p = 6 နှင့် q = 3 ဖြစ်လျှင် p / q + 1 ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['3', '2', '9', '1'],
        optionsMy: ['3', '2', '9', '1'],
        correctIndex: 0,
      ),
    ],
  ),

  // ---- physics ----
  SecondaryActivityDef(
    id: 'mock-secondary1-physics-1',
    subject: 'physics',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Forces and Motion',
    titleMy: 'အားများနှင့် ရွေ့လျားမှု',
    descriptionEn:
        'Understand how forces cause objects to speed up, slow down, or change direction.',
    descriptionMy:
        'အားများသည် အရာဝတ္ထုများကို မြန်စေခြင်း၊ နှေးစေခြင်း၊ သို့မဟုတ် ဦးတည်ရာပြောင်းလဲစေခြင်းကို နားလည်ပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'What is a force?',
        questionMy: 'အား ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A push or a pull on an object',
          'A type of energy source',
          'The speed of an object',
          'The weight of an object only',
        ],
        optionsMy: [
          'အရာဝတ္ထုတစ်ခုအား တွန်းခြင်း သို့မဟုတ် ဆွဲခြင်း',
          'စွမ်းအင်အမျိုးအစားတစ်ခု',
          'အရာဝတ္ထုတစ်ခု၏ အလျင်',
          'အလေးချိန်သာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the unit used to measure force?',
        questionMy: 'အားကို တိုင်းတာရန် အသုံးပြုသော ယူနစ်မှာ အဘယ်နည်း။',
        optionsEn: ['Newton (N)', 'Joule (J)', 'Watt (W)', 'Metre (m)'],
        optionsMy: ['နယူတန် (N)', 'ဂျူး (J)', 'ဝပ် (W)', 'မီတာ (m)'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which force pulls objects down toward the Earth?',
        questionMy: 'အရာဝတ္ထုများကို မြေကြီးဘက်သို့ ဆွဲချသော အားမှာ အဘယ်နည်း။',
        optionsEn: ['Gravity', 'Friction', 'Magnetism', 'Upthrust'],
        optionsMy: ['ဆွဲငင်အား', 'ပွတ်တိုက်အား', 'သံလိုက်အား', 'အထက်တွန်းအား'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What force acts against the motion of two surfaces sliding against each other?',
        questionMy:
            'မျက်နှာပြင်နှစ်ခု ပွတ်တိုက်ရွေ့လျားနေချိန် ဆန့်ကျင်လျက်ရှိသော အားမှာ အဘယ်နည်း။',
        optionsEn: ['Friction', 'Gravity', 'Tension', 'Thrust'],
        optionsMy: ['ပွတ်တိုက်အား', 'ဆွဲငင်အား', 'တင်းအား', 'တွန်းအား'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If a moving object has no unbalanced force acting on it, what happens to its motion?',
        questionMy:
            'ရွေ့လျားနေသော အရာဝတ္ထုတစ်ခုအပေါ် မမျှတသောအား မလွှမ်းမိုးပါက ၎င်း၏ ရွေ့လျားမှုသည် မည်သို့ဖြစ်မည်နည်း။',
        optionsEn: [
          'It keeps moving at the same speed and direction',
          'It stops immediately',
          'It speeds up automatically',
          'It changes direction randomly',
        ],
        optionsMy: [
          'တူညီသောအလျင်နှင့် ဦးတည်ရာဖြင့် ဆက်ရွေ့လျားနေမည်',
          'ချက်ချင်း ရပ်တန့်သွားမည်',
          'အလိုအလျောက် မြန်လာမည်',
          'ဦးတည်ရာ ကျပန်းပြောင်းသွားမည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-physics-2',
    subject: 'physics',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Forms of Energy',
    titleMy: 'စွမ်းအင်၏ ပုံစံများ',
    descriptionEn:
        'Identify different forms of energy and how they transform from one to another.',
    descriptionMy:
        'စွမ်းအင်၏ ပုံစံအမျိုးမျိုးနှင့် ၎င်းတို့ တစ်ပုံစံမှတစ်ပုံစံသို့ ပြောင်းလဲပုံကို ခွဲခြားသိမြင်ပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'What type of energy does a moving car have?',
        questionMy:
            'ရွေ့လျားနေသော ကားတစ်စီးတွင် မည်သည့်စွမ်းအင်အမျိုးအစား ရှိသနည်း။',
        optionsEn: [
          'Kinetic energy',
          'Potential energy',
          'Chemical energy',
          'Sound energy',
        ],
        optionsMy: [
          'ရွေ့လျားစွမ်းအင်',
          'အနေအထားစွမ်းအင်',
          'ဓာတုစွမ်းအင်',
          'အသံစွမ်းအင်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A ball held high above the ground has what type of energy?',
        questionMy:
            'မြေပြင်အထက် မြင့်စွာကိုင်ထားသော ဘောလုံးတွင် မည်သည့်စွမ်းအင် ရှိသနည်း။',
        optionsEn: [
          'Gravitational potential energy',
          'Kinetic energy',
          'Electrical energy',
          'Thermal energy',
        ],
        optionsMy: [
          'ဆွဲငင်အား အနေအထားစွမ်းအင်',
          'ရွေ့လျားစွမ်းအင်',
          'လျှပ်စစ်စွမ်းအင်',
          'အပူစွမ်းအင်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A light bulb converts electrical energy mainly into which two forms?',
        questionMy:
            'မီးလုံးတစ်လုံးသည် လျှပ်စစ်စွမ်းအင်ကို အဓိကအားဖြင့် မည်သည့်ပုံစံနှစ်ခုအဖြစ် ပြောင်းလဲပေးသနည်း။',
        optionsEn: [
          'Light and heat',
          'Sound and light',
          'Chemical and sound',
          'Kinetic and magnetic',
        ],
        optionsMy: [
          'အလင်းနှင့် အပူ',
          'အသံနှင့် အလင်း',
          'ဓာတုနှင့် အသံ',
          'ရွေ့လျားမှုနှင့် သံလိုက်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What law states that energy cannot be created or destroyed, only transformed?',
        questionMy:
            'စွမ်းအင်ကို ဖန်တီးခြင်း သို့မဟုတ် ဖျက်ဆီးခြင်း မပြုနိုင်ဘဲ ပြောင်းလဲနိုင်ရုံသာ ရှိသည်ဟု ဆိုသော ဥပဒေမှာ အဘယ်နည်း။',
        optionsEn: [
          'The law of conservation of energy',
          'The law of gravity',
          'Newton\'s first law',
          'The law of friction',
        ],
        optionsMy: [
          'စွမ်းအင်ထိန်းသိမ်းမှုဥပဒေ',
          'ဆွဲငင်အားဥပဒေ',
          'နယူတန်၏ ပထမဥပဒေ',
          'ပွတ်တိုက်အားဥပဒေ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Food gives our bodies energy in which form, before we use it to move?',
        questionMy:
            'အစားအစာသည် ကျွန်ုပ်တို့ခန္ဓာကိုယ်ကို ရွေ့လျားရန်မသုံးမီ မည်သည့်ပုံစံဖြင့် စွမ်းအင်ပေးသနည်း။',
        optionsEn: [
          'Chemical energy',
          'Nuclear energy',
          'Electrical energy',
          'Sound energy',
        ],
        optionsMy: [
          'ဓာတုစွမ်းအင်',
          'နျူကလီးယားစွမ်းအင်',
          'လျှပ်စစ်စွမ်းအင်',
          'အသံစွမ်းအင်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-physics-3',
    subject: 'physics',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Simple Circuits',
    titleMy: 'ရိုးရှင်းသော ဆားကစ်များ',
    descriptionEn:
        'Learn how electricity flows in a simple circuit with a battery, wires, and a bulb.',
    descriptionMy:
        'ဘက်ထရီ၊ ကြေးနန်းနှင့် မီးလုံးပါသော ရိုးရှင်းသောဆားကစ်တွင် လျှပ်စစ်စီးဆင်းပုံကို လေ့လာပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'What is needed for a simple electric circuit to work?',
        questionMy:
            'ရိုးရှင်းသော လျှပ်စစ်ဆားကစ်တစ်ခု အလုပ်လုပ်ရန် အဘယ်အရာလိုအပ်သနည်း။',
        optionsEn: [
          'A complete, closed loop of conducting material',
          'Only a battery',
          'Only a wire',
          'A broken wire',
        ],
        optionsMy: [
          'လျှပ်ကူးပစ္စည်းဖြင့် ပြီးစီးပိတ်နေသော ကွင်းစက်',
          'ဘက်ထရီတစ်ခုသာ',
          'ကြေးနန်းတစ်ခုသာ',
          'ပြတ်နေသောကြေးနန်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What happens to a bulb in a circuit if the wire is broken?',
        questionMy:
            'ကြေးနန်းပြတ်သွားပါက ဆားကစ်ထဲရှိ မီးလုံးမှာ မည်သို့ဖြစ်မည်နည်း။',
        optionsEn: [
          'It stops lighting up',
          'It gets brighter',
          'It stays the same',
          'It changes color',
        ],
        optionsMy: [
          'အလင်းရောင်ပေးတော့မည် မဟုတ်ပါ',
          'ပိုတောက်ပလာမည်',
          'ပြောင်းလဲမှု မရှိပါ',
          'အရောင်ပြောင်းလိမ့်မည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What device provides the electrical energy in a simple circuit?',
        questionMy:
            'ရိုးရှင်းသောဆားကစ်တွင် လျှပ်စစ်စွမ်းအင်ကို ပေးအပ်သော ကိရိယာမှာ အဘယ်နည်း။',
        optionsEn: ['Battery (cell)', 'Bulb', 'Switch', 'Resistor'],
        optionsMy: ['ဘက်ထရီ (ဆဲလ်)', 'မီးလုံး', 'ခလုတ်', 'ခုခံကိရိယာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the purpose of a switch in a circuit?',
        questionMy: 'ဆားကစ်ထဲရှိ ခလုတ်၏ ရည်ရွယ်ချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'To open or close the circuit',
          'To store electricity',
          'To increase voltage',
          'To produce light',
        ],
        optionsMy: [
          'ဆားကစ်ကို ဖွင့်ရန်သို့မဟုတ်ပိတ်ရန်',
          'လျှပ်စစ်ကို သိုလှောင်ရန်',
          'ဗို့အားကို တိုးမြှင့်ရန်',
          'အလင်းရောင် ထုတ်ရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What material is commonly used for wires because it conducts electricity well?',
        questionMy:
            'လျှပ်စစ်ကို ကောင်းစွာကူးစက်နိုင်သောကြောင့် ကြေးနန်းများတွင် များသောအားဖြင့် အသုံးပြုသော ပစ္စည်းမှာ အဘယ်နည်း။',
        optionsEn: ['Copper', 'Rubber', 'Wood', 'Plastic'],
        optionsMy: ['ကြေး', 'ရော်ဘာ', 'သစ်သား', 'ပလတ်စတစ်'],
        correctIndex: 0,
      ),
    ],
  ),

  // ---- chemistry ----
  SecondaryActivityDef(
    id: 'mock-secondary1-chemistry-1',
    subject: 'chemistry',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'States of Matter',
    titleMy: 'ရုပ်ဝတ္ထု၏ အခြေအနေများ',
    descriptionEn:
        'Explore solids, liquids, and gases and how particles behave in each state.',
    descriptionMy:
        'အခဲ၊ အရည်နှင့် ဓာတ်ငွေ့များနှင့် အခြေအနေတစ်ခုစီတွင် အနုမြူများ၏ အပြုအမူကို လေ့လာပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn:
            'In which state of matter are particles most tightly packed and fixed in place?',
        questionMy:
            'အနုမြူများသည် အနီးကပ်ဆုံးထိတွေ့ကာ တည်နေရာတွင် ပုံသေရှိနေသော ရုပ်ဝတ္ထုအခြေအနေမှာ အဘယ်နည်း။',
        optionsEn: ['Solid', 'Liquid', 'Gas', 'Plasma'],
        optionsMy: ['အခဲ', 'အရည်', 'ဓာတ်ငွေ့', 'ပလာစမာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What happens to particles when a liquid is heated and becomes a gas?',
        questionMy:
            'အရည်ကို ပူစေပြီး ဓာတ်ငွေ့ဖြစ်လာသောအခါ အနုမြူများ မည်သို့ဖြစ်သွားသနည်း။',
        optionsEn: [
          'They gain energy and move further apart',
          'They stop moving completely',
          'They become heavier',
          'They lose their mass',
        ],
        optionsMy: [
          'စွမ်းအင်ရရှိကာ ပိုကွာဝေးသွားသည်',
          'လုံးဝ ရွေ့လျားမှုရပ်သွားသည်',
          'ပိုလေးလာသည်',
          'အလေးချိန် ဆုံးရှုံးသွားသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which state of matter has no fixed shape and no fixed volume?',
        questionMy:
            'ပုံသေပုံစံနှင့် ပုံသေထုထည် မရှိသော ရုပ်ဝတ္ထုအခြေအနေမှာ အဘယ်နည်း။',
        optionsEn: ['Gas', 'Solid', 'Liquid', 'Crystal'],
        optionsMy: ['ဓာတ်ငွေ့', 'အခဲ', 'အရည်', 'ပုလဲကျောက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the process called when a solid changes directly into a gas without becoming liquid?',
        questionMy:
            'အခဲတစ်ခုသည် အရည်မဖြစ်ဘဲ ဓာတ်ငွေ့သို့ တိုက်ရိုက်ပြောင်းလဲခြင်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Sublimation', 'Condensation', 'Freezing', 'Melting'],
        optionsMy: [
          'ရုန်းငွေ့ခြင်း',
          'ရေငွေ့စွန်းခြင်း',
          'အေးခဲခြင်း',
          'အရည်ပျော်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What name is given to the temperature at which a liquid turns into a gas?',
        questionMy:
            'အရည်တစ်ခု ဓာတ်ငွေ့သို့ ပြောင်းလဲသည့် အပူချိန်ကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'Boiling point',
          'Freezing point',
          'Melting point',
          'Dew point',
        ],
        optionsMy: [
          'ဆူညံအပူချိန်',
          'အေးခဲအပူချိန်',
          'အရည်ပျော်အပူချိန်',
          'နှင်းရည်ခေါင်းအပူချိန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-chemistry-2',
    subject: 'chemistry',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Elements, Compounds and Mixtures',
    titleMy: 'ဒြပ်စင်များ၊ ဒြပ်ပေါင်းများနှင့် ရောနှောပစ္စည်းများ',
    descriptionEn:
        'Tell the difference between elements, compounds, and mixtures.',
    descriptionMy:
        'ဒြပ်စင်၊ ဒြပ်ပေါင်းနှင့် ရောနှောပစ္စည်းများ၏ ကွာခြားချက်ကို ခွဲခြားသိမြင်ပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'What is an element?',
        questionMy: 'ဒြပ်စင် ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A substance made of only one type of atom',
          'Two or more substances chemically joined',
          'Any mix of two liquids',
          'A substance that can be separated by filtering only',
        ],
        optionsMy: [
          'အနုမြူတစ်မျိုးတည်းဖြင့် ဖွဲ့စည်းထားသော ပစ္စည်း',
          'ဓာတုနည်းအားဖြင့် ပေါင်းစပ်ထားသော ပစ္စည်းနှစ်မျိုးသို့မဟုတ်ထို့ထက်ပို',
          'အရည်နှစ်မျိုးရောနှောမှု မည်သည့်ပုံစံမဆို',
          'စစ်ထုတ်ခြင်းဖြင့်သာ ပိုင်းခြားနိုင်သော ပစ္စည်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Water (H₂O) is an example of what?',
        questionMy: 'ရေ (H₂O) သည် မည်သည့်အရာ၏ ဥပမာဖြစ်သနည်း။',
        optionsEn: ['A compound', 'An element', 'A mixture only', 'A gas only'],
        optionsMy: ['ဒြပ်ပေါင်း', 'ဒြပ်စင်', 'ရောနှောပစ္စည်းသာ', 'ဓာတ်ငွေ့သာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a mixture, not chemically bonded?',
        questionMy:
            'ဓာတုနည်းဖြင့် မချိတ်ဆက်ထားဘဲ ရောနှောပစ္စည်းဖြစ်သည်မှာ အောက်ပါတို့တွင် အဘယ်နည်း။',
        optionsEn: ['Salt water', 'Carbon dioxide', 'Table salt', 'Water'],
        optionsMy: ['ဆားရေ', 'ကာဗွန်ဒိုင်အောက်ဆိုဒ်', 'စားသုံးဆား', 'ရေ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which method can separate the parts of a mixture but not a compound?',
        questionMy:
            'ဒြပ်ပေါင်းကို မခွဲခြားနိုင်သော်လည်း ရောနှောပစ္စည်းကို ခွဲခြားနိုင်သော နည်းလမ်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Physical separation methods, e.g. filtering',
          'Nuclear reaction',
          'Combustion only',
          'Electrolysis of the compound',
        ],
        optionsMy: [
          'ရုပ်ပိုင်းဆိုင်ရာခွဲခြားနည်းများ၊ ဥပမာ- စစ်ထုတ်ခြင်း',
          'နျူကလီးယားတုံ့ပြန်မှု',
          'မီးလောင်ခြင်းသာ',
          'ဒြပ်ပေါင်း၏ လျှပ်စစ်ဓာတ်ခွဲခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the smallest particle that still keeps the properties of an element?',
        questionMy:
            'ဒြပ်စင်တစ်ခု၏ ဂုဏ်သတ္တိကို ထိန်းသိမ်းထားနိုင်သေးသော အသေးငယ်ဆုံးအနုမြူမှာ အဘယ်နည်း။',
        optionsEn: ['Atom', 'Molecule', 'Cell', 'Mixture'],
        optionsMy: ['အက်တမ်', 'မော်လီကျူး', 'ဆဲလ်', 'ရောနှောပစ္စည်း'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-chemistry-3',
    subject: 'chemistry',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Separating Techniques',
    titleMy: 'ခွဲခြားနည်းများ',
    descriptionEn:
        'Learn methods used to separate mixtures such as filtration, evaporation, and distillation.',
    descriptionMy:
        'စစ်ထုတ်ခြင်း၊ ငွေ့ပျံခြင်းနှင့် ပြန်ခံနွှေးခြင်းကဲ့သို့ ရောနှောပစ္စည်းများကို ခွဲခြားရန် အသုံးပြုသောနည်းလမ်းများကို လေ့လာပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn:
            'Which method separates a solid from a liquid using a porous paper or mesh?',
        questionMy:
            'အပေါက်ပါစက္ကူ သို့မဟုတ် ကွန်ရက်ဖြင့် အခဲကို အရည်မှ ခွဲခြားသောနည်းမှာ အဘယ်နည်း။',
        optionsEn: ['Filtration', 'Evaporation', 'Distillation', 'Magnetism'],
        optionsMy: [
          'စစ်ထုတ်ခြင်း',
          'ငွေ့ပျံခြင်း',
          'ပြန်ခံနွှေးခြင်း',
          'သံလိုက်ဆွဲခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which method is best for separating salt from salt water by heating away the water?',
        questionMy:
            'ရေကို ငွေ့ပျံစေခြင်းဖြင့် ဆားရေမှ ဆားကို ခွဲခြားရန် အကောင်းဆုံးနည်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Evaporation',
          'Filtration',
          'Magnetic separation',
          'Sieving',
        ],
        optionsMy: [
          'ငွေ့ပျံခြင်း',
          'စစ်ထုတ်ခြင်း',
          'သံလိုက်ဖြင့်ခွဲခြားခြင်း',
          'ချောစစ်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What technique is used to separate two liquids with different boiling points?',
        questionMy:
            'ဆူညံအပူချိန်ကွာခြားသော အရည်နှစ်မျိုးကို ခွဲခြားရန် အသုံးပြုသောနည်းစနစ်မှာ အဘယ်နည်း။',
        optionsEn: ['Distillation', 'Filtration', 'Sieving', 'Sedimentation'],
        optionsMy: [
          'ပြန်ခံနွှေးခြင်း',
          'စစ်ထုတ်ခြင်း',
          'ချောစစ်ခြင်း',
          'အနည်ကျစေခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which technique uses a magnet to remove iron filings from a mixture of sand and iron?',
        questionMy:
            'သဲနှင့်သံဖုန်ရောနှောထားသော ပစ္စည်းမှ သံဖုန်ကို ဖယ်ရှားရန် သံလိုက်ကို အသုံးပြုသောနည်းစနစ်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Magnetic separation',
          'Distillation',
          'Evaporation',
          'Chromatography',
        ],
        optionsMy: [
          'သံလိုက်ဖြင့်ခွဲခြားခြင်း',
          'ပြန်ခံနွှေးခြင်း',
          'ငွေ့ပျံခြင်း',
          'ခရိုမက်တိုဂရပ်ဖီ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which technique separates different colored dyes in ink by how far they travel on paper?',
        questionMy:
            'မှင်ထဲက အရောင်အမျိုးမျိုးကို စက္ကူပေါ်တွင် သွားရောက်နိုင်သောအကွာအဝေးအလိုက် ခွဲခြားသောနည်းစနစ်မှာ အဘယ်နည်း။',
        optionsEn: ['Chromatography', 'Filtration', 'Evaporation', 'Sieving'],
        optionsMy: [
          'ခရိုမက်တိုဂရပ်ဖီ',
          'စစ်ထုတ်ခြင်း',
          'ငွေ့ပျံခြင်း',
          'ချောစစ်ခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ---- biology ----
  SecondaryActivityDef(
    id: 'mock-secondary1-biology-1',
    subject: 'biology',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Cells and Organization',
    titleMy: 'ဆဲလ်များနှင့် ဖွဲ့စည်းပုံ',
    descriptionEn:
        'Learn the basic structure of cells and how they organize into tissues and organs.',
    descriptionMy:
        'ဆဲလ်များ၏ အခြေခံဖွဲ့စည်းပုံနှင့် ၎င်းတို့ တစ်ရှူးများနှင့် အင်္ဂါများအဖြစ် ဖွဲ့စည်းပုံကို လေ့လာပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'What is the basic unit of life?',
        questionMy: 'အသက်ရှင်ခြင်း၏ အခြေခံယူနစ်မှာ အဘယ်နည်း။',
        optionsEn: ['The cell', 'The tissue', 'The organ', 'The atom'],
        optionsMy: ['ဆဲလ်', 'တစ်ရှူး', 'အင်္ဂါ', 'အက်တမ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which part of a cell controls its activities and contains genetic material?',
        questionMy:
            'ဆဲလ်၏ လုပ်ဆောင်ချက်များကို ထိန်းချုပ်ပြီး မျိုးရိုးဗီဇပါဝင်သော အစိတ်အပိုင်းမှာ အဘယ်နည်း။',
        optionsEn: ['Nucleus', 'Cell membrane', 'Cytoplasm', 'Cell wall'],
        optionsMy: ['နျူကလိယ', 'ဆဲလ်အခွံ', 'ဆဲလ်အတွင်းအရည်', 'ဆဲလ်နံရံ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What structure do plant cells have that animal cells do not?',
        questionMy:
            'တိရစ္ဆာန်ဆဲလ်များတွင် မရှိဘဲ အပင်ဆဲလ်များတွင် ရှိသော ဖွဲ့စည်းပုံမှာ အဘယ်နည်း။',
        optionsEn: [
          'Cell wall and chloroplasts',
          'Nucleus',
          'Cytoplasm',
          'Cell membrane',
        ],
        optionsMy: [
          'ဆဲလ်နံရံနှင့် ခလိုရိုပလပ်',
          'နျူကလိယ',
          'ဆဲလ်အတွင်းအရည်',
          'ဆဲလ်အခွံ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'A group of similar cells working together forms what?',
        questionMy:
            'တူညီသောဆဲလ်များ အုပ်စုတစ်ခုက အတူတကွ လုပ်ဆောင်ခြင်းသည် မည်သည့်အရာကို ဖွဲ့စည်းသနည်း။',
        optionsEn: ['A tissue', 'An organ', 'An organism', 'A nucleus'],
        optionsMy: ['တစ်ရှူး', 'အင်္ဂါ', 'သက်ရှိသတ္တဝါ', 'နျူကလိယ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the correct order of levels of organization from simplest to most complex?',
        questionMy:
            'အရိုးရှင်းဆုံးမှ အရှုပ်ထွေးဆုံးအထိ ဖွဲ့စည်းပုံအဆင့်များ၏ မှန်ကန်သောအစီအစဉ်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Cell, tissue, organ, organ system',
          'Organ, tissue, cell, organ system',
          'Organ system, organ, cell, tissue',
          'Tissue, organ system, cell, organ',
        ],
        optionsMy: [
          'ဆဲလ်၊ တစ်ရှူး၊ အင်္ဂါ၊ အင်္ဂါစနစ်',
          'အင်္ဂါ၊ တစ်ရှူး၊ ဆဲလ်၊ အင်္ဂါစနစ်',
          'အင်္ဂါစနစ်၊ အင်္ဂါ၊ ဆဲလ်၊ တစ်ရှူး',
          'တစ်ရှူး၊ အင်္ဂါစနစ်၊ ဆဲလ်၊ အင်္ဂါ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-biology-2',
    subject: 'biology',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Classification of Living Things',
    titleMy: 'သက်ရှိများ၏ အုပ်စုခွဲခြားခြင်း',
    descriptionEn:
        'Understand how scientists group living things by shared characteristics.',
    descriptionMy:
        'သိပ္ပံပညာရှင်များသည် သက်ရှိများကို ဆက်စပ်ဂုဏ်သတ္တိအလိုက် မည်သို့ စုစည်းခွဲခြားသည်ကို နားလည်ပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'Why do scientists classify living things into groups?',
        questionMy:
            'သိပ္ပံပညာရှင်များသည် သက်ရှိများကို အုပ်စုအလိုက် အဘယ်ကြောင့် ခွဲခြားကြသနည်း။',
        optionsEn: [
          'To organize and study them more easily based on shared features',
          'To make them look more colorful',
          'To reduce their population',
          'To give them the same name',
        ],
        optionsMy: [
          'ဆက်စပ်ဂုဏ်သတ္တိများအပေါ် အခြေခံ၍ ပိုမိုလွယ်ကူစွာ စီစဉ်လေ့လာရန်',
          'ပိုအရောင်စုံစေရန်',
          'ရေအစုအဝေးလျှော့ချရန်',
          'တူညီသောအမည် ပေးရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is a main group (kingdom) of living things?',
        questionMy:
            'အောက်ပါတို့တွင် သက်ရှိများ၏ အဓိကအုပ်စု (ဆွန်းနိုင်ငံ) တစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: ['Animals', 'Rocks', 'Water', 'Weather'],
        optionsMy: ['တိရစ္ဆာန်', 'ကျောက်', 'ရေ', 'ရာသီဥတု'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What key feature distinguishes vertebrates from invertebrates?',
        questionMy:
            'ကျောရိုးရှိသတ္တဝါများနှင့် ကျောရိုးမဲ့သတ္တဝါများကို ခွဲခြားပေးသော အဓိကလက္ခဏာမှာ အဘယ်နည်း။',
        optionsEn: [
          'Vertebrates have a backbone, invertebrates do not',
          'Vertebrates live in water only',
          'Invertebrates are always larger',
          'Vertebrates cannot move',
        ],
        optionsMy: [
          'ကျောရိုးရှိသတ္တဝါများတွင် ကျောရိုးရှိပြီး ကျောရိုးမဲ့သတ္တဝါများတွင် မရှိပါ',
          'ကျောရိုးရှိသတ္တဝါများသည် ရေတွင်သာ နေထိုင်သည်',
          'ကျောရိုးမဲ့သတ္တဝါများသည် အမြဲကြီးမားသည်',
          'ကျောရိုးရှိသတ္တဝါများသည် မရွေ့လျားနိုင်ပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these animals is classified as a reptile?',
        questionMy:
            'အောက်ပါတိရစ္ဆာန်များထဲမှ တွားသွားသတ္တဝါ (reptile) အဖြစ် ခွဲခြားထားသည်မှာ အဘယ်နည်း။',
        optionsEn: ['Snake', 'Dog', 'Eagle', 'Frog'],
        optionsMy: ['မြွေ', 'ခွေး', 'လင်းယုန်', 'ဖား'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Plants and animals are both classified as living things because they share which feature?',
        questionMy:
            'အပင်နှင့် တိရစ္ဆာန်နှစ်မျိုးလုံးကို သက်ရှိများအဖြစ် ခွဲခြားထားရသည်မှာ မည်သည့်ဂုဏ်သတ္တိကို ဆက်စပ်ထားသောကြောင့်နည်း။',
        optionsEn: [
          'They can grow, reproduce, and respond to their environment',
          'They both eat sunlight directly',
          'They both have backbones',
          'They both live only on land',
        ],
        optionsMy: [
          'ကြီးထွားနိုင်ခြင်း၊ မျိုးပွားနိုင်ခြင်းနှင့် ပတ်ဝန်းကျင်ကို တုံ့ပြန်နိုင်ခြင်း',
          'နှစ်ခုစလုံး နေရောင်ခြည်ကို တိုက်ရိုက်စားသောကြောင့်',
          'နှစ်ခုစလုံး ကျောရိုးရှိသောကြောင့်',
          'နှစ်ခုစလုံး ကုန်းပေါ်တွင်သာ နေထိုင်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-biology-3',
    subject: 'biology',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Introduction to Human Body Systems',
    titleMy: 'လူ့ခန္ဓာကိုယ်စနစ်များ နိဒါန်း',
    descriptionEn:
        'Learn the basic roles of the digestive, circulatory, and respiratory systems.',
    descriptionMy:
        'အစာချေဖျက်စနစ်၊ သွေးလှည့်ပတ်စနစ်နှင့် အသက်ရှူစနစ်တို့၏ အခြေခံလုပ်ငန်းဆောင်တာများကို လေ့လာပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn:
            'Which body system breaks down food so the body can use it?',
        questionMy:
            'ခန္ဓာကိုယ်က အသုံးပြုနိုင်ရန် အစားအစာကို ပြိုကွဲစေသော စနစ်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The digestive system',
          'The circulatory system',
          'The respiratory system',
          'The skeletal system',
        ],
        optionsMy: [
          'အစာချေဖျက်စနစ်',
          'သွေးလှည့်ပတ်စနစ်',
          'အသက်ရှူစနစ်',
          'အရိုးစနစ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which organ pumps blood around the body?',
        questionMy:
            'ခန္ဓာကိုယ်တစ်ဝှမ်း သွေးကို စုပ်တွန်းပေးသော အင်္ဂါမှာ အဘယ်နည်း။',
        optionsEn: ['The heart', 'The lungs', 'The stomach', 'The liver'],
        optionsMy: ['နှလုံး', 'အဆုတ်', 'အစာအိမ်', 'အသည်း'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which organs are mainly responsible for taking in oxygen and releasing carbon dioxide?',
        questionMy:
            'အောက်ဆီဂျင်ကို စုပ်ယူပြီး ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကို ထုတ်လွှတ်ရန် အဓိကတာဝန်ရှိသော အင်္ဂါများမှာ အဘယ်နည်း။',
        optionsEn: ['The lungs', 'The heart', 'The stomach', 'The kidneys'],
        optionsMy: ['အဆုတ်', 'နှလုံး', 'အစာအိမ်', 'ကျောက်ကပ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the main role of the circulatory system?',
        questionMy: 'သွေးလှည့်ပတ်စနစ်၏ အဓိကလုပ်ငန်းတာဝန်မှာ အဘယ်နည်း။',
        optionsEn: [
          'To transport blood, oxygen, and nutrients around the body',
          'To digest food',
          'To filter air only',
          'To control body movement',
        ],
        optionsMy: [
          'ခန္ဓာကိုယ်တစ်ဝှမ်း သွေး၊ အောက်ဆီဂျင်နှင့် အာဟာရများကို သယ်ဆောင်ပေးရန်',
          'အစားအစာကို ချေဖျက်ရန်',
          'လေကိုသာ စစ်ထုတ်ရန်',
          'ခန္ဓာကိုယ်ရွေ့လျားမှုကို ထိန်းချုပ်ရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these correctly describes the path air takes when breathing in?',
        questionMy:
            'အသက်ရှုသွင်းသည့်အခါ လေသွားလာသည့်လမ်းကြောင်းကို မှန်ကန်စွာဖော်ပြသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Nose, windpipe, lungs',
          'Lungs, windpipe, nose',
          'Nose, stomach, lungs',
          'Windpipe, heart, lungs',
        ],
        optionsMy: [
          'နှာခေါင်း၊ လေပြွန်၊ အဆုတ်',
          'အဆုတ်၊ လေပြွန်၊ နှာခေါင်း',
          'နှာခေါင်း၊ အစာအိမ်၊ အဆုတ်',
          'လေပြွန်၊ နှလုံး၊ အဆုတ်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ---- ict ----
  SecondaryActivityDef(
    id: 'mock-secondary1-ict-1',
    subject: 'ict',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Computer Systems and Hardware',
    titleMy: 'ကွန်ပျူတာစနစ်နှင့် ဟာ့ဒ်ဝဲ',
    descriptionEn:
        'Learn the main hardware parts of a computer and what each one does.',
    descriptionMy:
        'ကွန်ပျူတာ၏ အဓိကဟာ့ဒ်ဝဲအစိတ်အပိုင်းများနှင့် ၎င်းတို့၏ လုပ်ဆောင်ချက်များကို လေ့လာပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'What part of a computer is often called its "brain"?',
        questionMy:
            'ကွန်ပျူတာ၏ "ဦးနှောက်" ဟုခေါ်လေ့ရှိသော အစိတ်အပိုင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'CPU (Central Processing Unit)',
          'Monitor',
          'Keyboard',
          'Mouse',
        ],
        optionsMy: [
          'CPU (ဗဟိုစီမံဆောင်ရွက်ရေးယူနစ်)',
          'မော်နီတာ',
          'ကီးဘုတ်',
          'မောက်စ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which device is used to permanently store files even when the computer is off?',
        questionMy:
            'ကွန်ပျူတာပိတ်ထားချိန်တွင်ပင် ဖိုင်များကို အမြဲသိမ်းဆည်းထားရန် အသုံးပြုသော ကိရိယာမှာ အဘယ်နည်း။',
        optionsEn: ['Hard disk (storage drive)', 'RAM', 'Monitor', 'Speaker'],
        optionsMy: ['ဟတ်ဒစ် (သိုလှောင်ကွန်ရက်)', 'RAM', 'မော်နီတာ', 'စပီကာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is an example of an input device?',
        questionMy: 'အင်ပွတ်ကိရိယာ၏ ဥပမာတစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: ['Keyboard', 'Printer', 'Monitor', 'Speaker'],
        optionsMy: ['ကီးဘုတ်', 'ပရင်တာ', 'မော်နီတာ', 'စပီကာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is an example of an output device?',
        questionMy: 'အောက်ပွတ်ကိရိယာ၏ ဥပမာတစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: ['Printer', 'Keyboard', 'Mouse', 'Scanner'],
        optionsMy: ['ပရင်တာ', 'ကီးဘုတ်', 'မောက်စ်', 'စကင်နာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does RAM stand for and mainly do in a computer?',
        questionMy:
            'RAM ၏ အဓိပ္ပါယ်ဖော်ပြသည့်စကားလုံးများနှင့် ကွန်ပျူတာတွင် အဓိကလုပ်ဆောင်ချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Random Access Memory -- temporarily stores data being used',
          'Read Access Machine -- prints documents',
          'Rapid Application Module -- runs the internet',
          'Remote Audio Monitor -- plays sound',
        ],
        optionsMy: [
          'Random Access Memory -- အသုံးပြုနေသော ဒေတာကို ယာယီသိမ်းဆည်းသည်',
          'Read Access Machine -- စာရွက်စာတမ်း ပရင့်ထုတ်သည်',
          'Rapid Application Module -- အင်တာနက်ကို ဖွင့်ပေးသည်',
          'Remote Audio Monitor -- အသံဖွင့်ပေးသည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-ict-2',
    subject: 'ict',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Data Representation Basics',
    titleMy: 'ဒေတာဖော်ပြမှု အခြေခံများ',
    descriptionEn:
        'Understand how computers represent data using bits, bytes, and binary numbers.',
    descriptionMy:
        'ကွန်ပျူတာများသည် ဘစ်၊ ဘိုက်နှင့် ဘိုင်နရီကိန်းများကို အသုံးပြု၍ ဒေတာကို မည်သို့ ဖော်ပြသည်ကို နားလည်ပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'What is the smallest unit of data in a computer?',
        questionMy: 'ကွန်ပျူတာတွင် ဒေတာ၏ အသေးငယ်ဆုံးယူနစ်မှာ အဘယ်နည်း။',
        optionsEn: ['A bit', 'A byte', 'A file', 'A folder'],
        optionsMy: ['ဘစ်', 'ဘိုက်', 'ဖိုင်', 'ဖိုလ်ဒါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How many bits make up one byte?',
        questionMy: 'ဘိုက်တစ်ခုတွင် ဘစ်မည်မျှ ပါဝင်သနည်း။',
        optionsEn: ['8', '4', '16', '2'],
        optionsMy: ['8', '4', '16', '2'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Computers store and process all data using which number system?',
        questionMy:
            'ကွန်ပျူတာများသည် ဒေတာအားလုံးကို မည်သည့်ကိန်းစနစ်ဖြင့် သိမ်းဆည်းစီမံသနည်း။',
        optionsEn: [
          'Binary (base 2)',
          'Decimal (base 10)',
          'Roman numerals',
          'Hexagon system',
        ],
        optionsMy: [
          'ဘိုင်နရီ (base 2)',
          'ဒဿမ (base 10)',
          'ရိုမန်ကိန်းများ',
          'ဟက်ဇဂွန်စနစ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What two digits are used in binary code?',
        questionMy: 'ဘိုင်နရီကုဒ်တွင် အသုံးပြုသော ဂဏန်းနှစ်လုံးမှာ အဘယ်နည်း။',
        optionsEn: ['0 and 1', '1 and 2', '0 and 9', '1 and 10'],
        optionsMy: ['0 နှင့် 1', '1 နှင့် 2', '0 နှင့် 9', '1 နှင့် 10'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Roughly how many bytes are in one kilobyte (KB)?',
        questionMy: 'ကီလိုဘိုက် (KB) တစ်ခုတွင် ဘိုက် မည်မျှ ခန့်မှန်းရှိသနည်း။',
        optionsEn: ['1,024', '100', '10', '1,000,000'],
        optionsMy: ['1,024', '100', '10', '1,000,000'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-ict-3',
    subject: 'ict',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Internet Safety',
    titleMy: 'အင်တာနက် ဘေးကင်းလုံခြုံမှု',
    descriptionEn:
        'Learn how to stay safe online, protect personal information, and recognize risks.',
    descriptionMy:
        'အွန်လိုင်းတွင် ဘေးကင်းစွာနေထိုင်ရန်၊ ကိုယ်ရေးကိုယ်တာအချက်အလက်များကို ကာကွယ်ရန်နှင့် အန္တရာယ်များကို သိရှိနိုင်ရန် လေ့လာပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn:
            'What should you do if a stranger online asks for your home address?',
        questionMy:
            'အွန်လိုင်းရှိ လူစိမ်းတစ်ဦးက သင့်နေအိမ်လိပ်စာကို တောင်းလျှင် သင်မည်သို့ ပြုလုပ်သင့်သနည်း။',
        optionsEn: [
          'Refuse to share it and tell a trusted adult',
          'Give it to them right away',
          'Ask them for their address too',
          'Ignore the message but keep chatting',
        ],
        optionsMy: [
          'မပေးဘဲ ယုံကြည်ရသော အသက်ကြီးသူတစ်ဦးအား ပြောပြပါ',
          'ချက်ချင်း ပေးလိုက်ပါ',
          'သူတို့လိပ်စာကို ပြန်တောင်းပါ',
          'စာကို လျစ်လျူရှုပြီး ဆက်စကားပြောပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What makes a password strong and safe to use?',
        questionMy:
            'စကားဝှက်တစ်ခုကို ခိုင်မာပြီး လုံခြုံစွာ အသုံးပြုနိုင်စေသည့်အချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A mix of letters, numbers, and symbols that is hard to guess',
          'Your own name only',
          'The word "password"',
          'Your birth year only',
        ],
        optionsMy: [
          'ခန့်မှန်းရခက်သော စာလုံး၊ ဂဏန်းနှင့် သင်္ကေတများ ရောနှောထားခြင်း',
          'သင့်ကိုယ်ပိုင်အမည်သာ',
          '"password" ဟူသောစကားလုံး',
          'သင်၏မွေးနှစ်သာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is "cyberbullying"?',
        questionMy: '"cyberbullying" ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Using the internet or phones to repeatedly hurt or threaten someone',
          'Playing online games with friends',
          'Sending a birthday message to a classmate',
          'Learning a new skill online',
        ],
        optionsMy: [
          'အင်တာနက် သို့မဟုတ် ဖုန်းများကို အသုံးပြု၍ တစ်စုံတစ်ဦးအား ထပ်ခါထပ်ခါ နာကျင်စေခြင်း သို့မဟုတ် ခြိမ်းခြောက်ခြင်း',
          'သူငယ်ချင်းများနှင့် အွန်လိုင်းဂိမ်း ကစားခြင်း',
          'အတန်းဖော်တစ်ဦးထံ မွေးနေ့ဆုံသို့ ပို့ခြင်း',
          'အွန်လိုင်းတွင် အသစ်သောကျွမ်းကျင်မှု လေ့လာခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Before clicking a link from an unknown email, what should you do first?',
        questionMy:
            'မသိသောအီးမေးလ်မှ လင့်ခ်ကို မနှိပ်မီ သင်ဦးစွာ မည်သို့ ပြုလုပ်သင့်သနည်း။',
        optionsEn: [
          'Check if the sender and link look suspicious before clicking',
          'Click it immediately to see what it is',
          'Forward it to all your friends',
          'Reply with your password',
        ],
        optionsMy: [
          'မနှိပ်မီ ပေးပို့သူနှင့် လင့်ခ်ကို သံသယဖြစ်ဖွယ်ရှိမရှိ စစ်ဆေးပါ',
          'ချက်ချင်းနှိပ်ကြည့်ပါ',
          'သူငယ်ချင်းအားလုံးထံ ပို့ပေးပါ',
          'စကားဝှက်ဖြင့် ပြန်စာပေးပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of the following is personal information you should keep private online?',
        questionMy:
            'အောက်ပါအထဲမှ အွန်လိုင်းတွင် လျှို့ဝှက်ထားသင့်သော ကိုယ်ရေးကိုယ်တာအချက်အလက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Your full name, school, and phone number',
          'Your favorite color',
          'Your favorite movie',
          'The weather today',
        ],
        optionsMy: [
          'သင်၏ အမည်အပြည့်၊ ကျောင်းနှင့် ဖုန်းနံပါတ်',
          'သင်ကြိုက်သောအရောင်',
          'သင်ကြိုက်သောရုပ်ရှင်',
          'ယနေ့ ရာသီဥတု',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ---- socialstudies ----
  SecondaryActivityDef(
    id: 'mock-secondary1-socialstudies-1',
    subject: 'socialstudies',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Myanmar Geography',
    titleMy: 'မြန်မာနိုင်ငံ၏ ပထဝီဝင်',
    descriptionEn:
        'Learn about the regions, rivers, and neighboring countries of Myanmar.',
    descriptionMy:
        'မြန်မာနိုင်ငံ၏ ဒေသများ၊ မြစ်များနှင့် အိမ်နီးချင်းနိုင်ငံများအကြောင်း လေ့လာပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'What is the longest river in Myanmar?',
        questionMy: 'မြန်မာနိုင်ငံ၏ အရှည်ဆုံးမြစ်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The Ayeyarwady River',
          'The Sittaung River',
          'The Thanlwin River',
          'The Chindwin River',
        ],
        optionsMy: [
          'ဧရာဝတီမြစ်',
          'စစ်တောင်းမြစ်',
          'သံလွင်မြစ်',
          'ချင်းတွင်းမြစ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which country lies to the north of Myanmar?',
        questionMy:
            'မြန်မာနိုင်ငံ၏ မြောက်ဘက်တွင် တည်ရှိသော နိုင်ငံမှာ အဘယ်နည်း။',
        optionsEn: ['China', 'Thailand', 'Bangladesh', 'Laos'],
        optionsMy: ['တရုတ်', 'ထိုင်း', 'ဘင်္ဂလားဒေ့ရှ်', 'လာအို'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which sea/bay lies along Myanmar\'s southern and western coastline?',
        questionMy:
            'မြန်မာနိုင်ငံ၏ တောင်ဘက်နှင့် အနောက်ဘက်ကမ်းရိုးတန်းတလျှောက် တည်ရှိသော ပင်လယ်/ပင်လယ်အော်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The Andaman Sea and Bay of Bengal',
          'The South China Sea',
          'The Arabian Sea',
          'The Yellow Sea',
        ],
        optionsMy: [
          'အန္ဒမန်ပင်လယ်နှင့် ဘင်္ဂေါလ်ပင်လယ်အော်',
          'တောင်တရုတ်ပင်လယ်',
          'အာရေဗျပင်လယ်',
          'ဝါပင်လယ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these is one of Myanmar\'s major mountain ranges?',
        questionMy:
            'အောက်ပါတို့တွင် မြန်မာနိုင်ငံ၏ အဓိကတောင်တန်းတစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: ['The Shan Hills', 'The Andes', 'The Alps', 'The Rockies'],
        optionsMy: [
          'ရှမ်းကုန်းရိုးတန်း',
          'အင်ဒီးစ်တောင်တန်း',
          'အယ်လ်ပ်တောင်တန်း',
          'ရော့ကီတောင်တန်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Myanmar is located in which region of the world?',
        questionMy: 'မြန်မာနိုင်ငံသည် ကမ္ဘာ့မည်သည့်ဒေသတွင် တည်ရှိသနည်း။',
        optionsEn: [
          'Southeast Asia',
          'East Africa',
          'South America',
          'Western Europe',
        ],
        optionsMy: [
          'အရှေ့တောင်အာရှ',
          'အရှေ့အာဖရိက',
          'တောင်အမေရိက',
          'အနောက်ဥရောပ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-socialstudies-2',
    subject: 'socialstudies',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'World Geography',
    titleMy: 'ကမ္ဘာ့ပထဝီဝင်',
    descriptionEn:
        'Explore continents, oceans, and major geographic features around the world.',
    descriptionMy:
        'ကမ္ဘာတစ်ဝှမ်းရှိ တိုက်ကြီးများ၊ သမုဒ္ဒရာများနှင့် အဓိကပထဝီဝင်လက္ခဏာများကို လေ့လာပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'How many continents are there in the world?',
        questionMy: 'ကမ္ဘာပေါ်တွင် တိုက်ကြီးမည်မျှ ရှိသနည်း။',
        optionsEn: ['7', '5', '6', '9'],
        optionsMy: ['7', '5', '6', '9'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which is the largest continent by land area?',
        questionMy: 'မြေဧရိယာအလိုက် အကြီးဆုံးတိုက်မှာ အဘယ်နည်း။',
        optionsEn: ['Asia', 'Africa', 'Europe', 'Australia'],
        optionsMy: ['အာရှတိုက်', 'အာဖရိကတိုက်', 'ဥရောပတိုက်', 'သြစတြေးလျတိုက်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the longest river in the world?',
        questionMy: 'ကမ္ဘာပေါ်ရှိ အရှည်ဆုံးမြစ်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The Nile River',
          'The Amazon River',
          'The Yangtze River',
          'The Mississippi River',
        ],
        optionsMy: ['နိုင်းမြစ်', 'အမေဇုန်းမြစ်', 'ယန်စီမြစ်', 'မစ္စစ္စပီမြစ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which mountain is known as the tallest in the world?',
        questionMy:
            'ကမ္ဘာပေါ်တွင် အမြင့်ဆုံးအဖြစ် လူသိများသောတောင်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Mount Everest',
          'Mount Kilimanjaro',
          'Mount Fuji',
          'Mount Elbrus',
        ],
        optionsMy: [
          'ဧဝရက်တောင်',
          'ကီလီမန်ဂျာရိုတောင်',
          'ဖူဂျီတောင်',
          'အယ်ဘရပ်စ်တောင်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which ocean is the largest on Earth?',
        questionMy: 'ကမ္ဘာပေါ်ရှိ အကြီးဆုံးသမုဒ္ဒရာမှာ အဘယ်နည်း။',
        optionsEn: [
          'The Pacific Ocean',
          'The Atlantic Ocean',
          'The Indian Ocean',
          'The Arctic Ocean',
        ],
        optionsMy: [
          'ပစိဖိတ်သမုဒ္ဒရာ',
          'အတ္လန္တိတ်သမုဒ္ဒရာ',
          'အိန္ဒိယသမုဒ္ဒရာ',
          'အာတိတ်သမုဒ္ဒရာ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-socialstudies-3',
    subject: 'socialstudies',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Government and Citizenship',
    titleMy: 'အစိုးရနှင့် နိုင်ငံသားဖြစ်မှု',
    descriptionEn:
        'Learn what government does and what it means to be a responsible citizen.',
    descriptionMy:
        'အစိုးရ၏ လုပ်ငန်းတာဝန်များနှင့် တာဝန်သိသောနိုင်ငံသားတစ်ဦးဖြစ်ခြင်း၏ အဓိပ္ပာယ်ကို လေ့လာပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'What is one main role of a government?',
        questionMy: 'အစိုးရ၏ အဓိကလုပ်ငန်းတာဝန်တစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: [
          'To make and enforce laws for the country',
          'To sell food in markets',
          'To write novels',
          'To play sports professionally',
        ],
        optionsMy: [
          'နိုင်ငံအတွက် ဥပဒေများ ရေးဆွဲအကောင်အထည်ဖော်ရန်',
          'ဈေးများတွင် အစားအစာရောင်းရန်',
          'ဝတ္ထုများ ရေးသားရန်',
          'အားကစားကို ပရော်ဖက်ရှင်နယ်အနေဖြင့် ကစားရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is a "citizen"?',
        questionMy: '"နိုင်ငံသား" ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A legally recognized member of a country with rights and duties',
          'Anyone visiting a country for a holiday',
          'A person who owns a business',
          'A person who works for the government only',
        ],
        optionsMy: [
          'အခွင့်အရေးနှင့် တာဝန်ဝတ္တရားများပါရှိသော နိုင်ငံ၏ တရားဝင်အသိအမှတ်ပြုအဖွဲ့ဝင်',
          'ခရီးသွားရန် နိုင်ငံသို့ လာရောက်သူ မည်သူမဆို',
          'စီးပွားရေးလုပ်ငန်းပိုင်ဆိုင်သူ',
          'အစိုးရအတွက်သာ အလုပ်လုပ်သူ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is a responsibility of a good citizen?',
        questionMy:
            'ကောင်းမွန်သောနိုင်ငံသားတစ်ဦး၏ တာဝန်တစ်ခုမှာ အောက်ပါတို့တွင် အဘယ်နည်း။',
        optionsEn: [
          'Obeying the laws of the country',
          'Ignoring community rules',
          'Avoiding all public duties',
          'Refusing to help others',
        ],
        optionsMy: [
          'နိုင်ငံ၏ ဥပဒေများကို လိုက်နာခြင်း',
          'ရပ်ရွာစည်းကမ်းများကို လျစ်လျူရှုခြင်း',
          'အများပြည်သူဆိုင်ရာတာဝန်များကို ရှောင်ရှားခြင်း',
          'သူတစ်ပါးကို ကူညီရန် ငြင်းဆန်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What do we call the basic rules that a country is governed by?',
        questionMy:
            'နိုင်ငံတစ်ခု အုပ်ချုပ်ခံရသည့် အခြေခံစည်းမျဉ်းများကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'The constitution',
          'The dictionary',
          'The textbook',
          'The newspaper',
        ],
        optionsMy: [
          'ဖွဲ့စည်းပုံအခြေခံဥပဒေ',
          'အဘိဓာန်',
          'သင်ရိုးစာအုပ်',
          'သတင်းစာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why is voting in elections an important civic duty?',
        questionMy:
            'ရွေးကောက်ပွဲများတွင် မဲပေးခြင်းသည် အရေးကြီးသော နိုင်ငံသားတာဝန်တစ်ခု ဖြစ်ရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'It lets citizens choose leaders who represent their interests',
          'It is required to get a job',
          'It replaces paying taxes',
          'It only matters in large cities',
        ],
        optionsMy: [
          'နိုင်ငံသားများအား ၎င်းတို့အကျိုးစီးပွားကို ကိုယ်စားပြုမည့် ခေါင်းဆောင်များကို ရွေးချယ်ခွင့်ပေးသောကြောင့်',
          'အလုပ်ရရန်အတွက် လိုအပ်သောကြောင့်',
          'အခွန်ပေးဆောင်ခြင်းကို အစားထိုးသောကြောင့်',
          'မြို့ကြီးများတွင်သာ အရေးပါသောကြောင့်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ============================== SECONDARY 2 ==============================
  // ---- algebra ----
  SecondaryActivityDef(
    id: 'mock-secondary2-algebra-1',
    subject: 'algebra',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Simultaneous Equations',
    titleMy: 'တစ်ပြိုင်နက်ညီမျှခြင်းများ',
    descriptionEn: 'Solve pairs of linear equations with two unknowns.',
    descriptionMy:
        'အမည်မသိနှစ်ခုပါသော မျဉ်းညီညွှတ်ညီမျှခြင်းအတွဲများကို ဖြေရှင်းပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn:
            'Solve the simultaneous equations: x + y = 10 and x - y = 2. What is the value of x?',
        questionMy:
            'တစ်ပြိုင်နက်ညီမျှခြင်းများကို ဖြေရှင်းပါ- x + y = 10 နှင့် x - y = 2။ x ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['6', '4', '8', '2'],
        optionsMy: ['6', '4', '8', '2'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve: 2x + y = 11 and x - y = 1. What is the value of x?',
        questionMy:
            'ဖြေရှင်းပါ- 2x + y = 11 နှင့် x - y = 1။ x ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['4', '3', '5', '7'],
        optionsMy: ['4', '3', '5', '7'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve: x + 2y = 12 and x - y = 3. What is the value of y?',
        questionMy:
            'ဖြေရှင်းပါ- x + 2y = 12 နှင့် x - y = 3။ y ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['3', '6', '9', '12'],
        optionsMy: ['3', '6', '9', '12'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve: 3x - y = 5 and x + y = 7. What is the value of x?',
        questionMy:
            'ဖြေရှင်းပါ- 3x - y = 5 နှင့် x + y = 7။ x ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['3', '4', '2', '5'],
        optionsMy: ['3', '4', '2', '5'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A pair of numbers has a sum of 15 and a difference of 3. What is the larger number?',
        questionMy:
            'ကိန်းတစ်စုံ၏ ပေါင်းလဒ်သည် ၁၅ ဖြစ်ပြီး ကွာခြားချက်သည် ၃ ဖြစ်ပါက ပိုကြီးသောကိန်းမှာ အဘယ်နည်း။',
        optionsEn: ['9', '6', '12', '3'],
        optionsMy: ['9', '6', '12', '3'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary2-algebra-2',
    subject: 'algebra',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Quadratic Expressions',
    titleMy: 'စတုရန်းဖော်ပြချက်များ',
    descriptionEn: 'Expand and simplify simple quadratic expressions.',
    descriptionMy:
        'ရိုးရှင်းသော စတုရန်းဖော်ပြချက်များကို ဖြန့်ချပြီး ရိုးရှင်းအောင်ပြုလုပ်ပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'Expand: (x + 2)(x + 3)',
        questionMy: 'ဖြန့်ချပါ- (x + 2)(x + 3)',
        optionsEn: ['x² + 5x + 6', 'x² + 6x + 5', 'x² + 5x + 5', 'x² + 6'],
        optionsMy: ['x² + 5x + 6', 'x² + 6x + 5', 'x² + 5x + 5', 'x² + 6'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Expand: (x + 4)(x - 4)',
        questionMy: 'ဖြန့်ချပါ- (x + 4)(x - 4)',
        optionsEn: ['x² - 16', 'x² + 16', 'x² - 8', 'x² - 4'],
        optionsMy: ['x² - 16', 'x² + 16', 'x² - 8', 'x² - 4'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Expand: (x - 3)²',
        questionMy: 'ဖြန့်ချပါ- (x - 3)²',
        optionsEn: ['x² - 6x + 9', 'x² - 9', 'x² + 6x + 9', 'x² - 3x + 9'],
        optionsMy: ['x² - 6x + 9', 'x² - 9', 'x² + 6x + 9', 'x² - 3x + 9'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Simplify: x² + 3x + 2x² - x',
        questionMy: 'ရိုးရှင်းအောင်ပြုလုပ်ပါ- x² + 3x + 2x² - x',
        optionsEn: ['3x² + 2x', '3x² + 4x', 'x² + 2x', '3x² - 2x'],
        optionsMy: ['3x² + 2x', '3x² + 4x', 'x² + 2x', '3x² - 2x'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the coefficient of x² in the expression 5x² - 3x + 7?',
        questionMy:
            '5x² - 3x + 7 ဖော်ပြချက်တွင် x² ၏ ကိန်းသေကိန်းဂဏန်း (coefficient) မှာ အဘယ်နည်း။',
        optionsEn: ['5', '-3', '7', '3'],
        optionsMy: ['5', '-3', '7', '3'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary2-algebra-3',
    subject: 'algebra',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Inequalities',
    titleMy: 'မညီမျှခြင်းများ',
    descriptionEn: 'Solve and represent simple linear inequalities.',
    descriptionMy:
        'ရိုးရှင်းသော မျဉ်းညီညွှတ် မညီမျှခြင်းများကို ဖြေရှင်း၍ ဖော်ပြပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'Solve: x + 3 > 7',
        questionMy: 'ဖြေရှင်းပါ- x + 3 > 7',
        optionsEn: ['x > 4', 'x < 4', 'x > 10', 'x > 3'],
        optionsMy: ['x > 4', 'x < 4', 'x > 10', 'x > 3'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve: 2x ≤ 12',
        questionMy: 'ဖြေရှင်းပါ- 2x ≤ 12',
        optionsEn: ['x ≤ 6', 'x ≥ 6', 'x ≤ 24', 'x ≤ 14'],
        optionsMy: ['x ≤ 6', 'x ≥ 6', 'x ≤ 24', 'x ≤ 14'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve: x - 5 < 0',
        questionMy: 'ဖြေရှင်းပါ- x - 5 < 0',
        optionsEn: ['x < 5', 'x > 5', 'x < -5', 'x < 0'],
        optionsMy: ['x < 5', 'x > 5', 'x < -5', 'x < 0'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which value of x satisfies x > 2 and x < 6?',
        questionMy: 'x > 2 နှင့် x < 6 ကို ကိုက်ညီသော x တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['4', '1', '7', '2'],
        optionsMy: ['4', '1', '7', '2'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve: -2x > 8',
        questionMy: 'ဖြေရှင်းပါ- -2x > 8',
        optionsEn: ['x < -4', 'x > -4', 'x < 4', 'x > 4'],
        optionsMy: ['x < -4', 'x > -4', 'x < 4', 'x > 4'],
        correctIndex: 0,
      ),
    ],
  ),

  // ---- physics ----
  SecondaryActivityDef(
    id: 'mock-secondary2-physics-1',
    subject: 'physics',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Waves: Sound and Light',
    titleMy: 'လှိုင်းများ- အသံနှင့်အလင်း',
    descriptionEn:
        'Understand how sound and light travel as waves and their basic properties.',
    descriptionMy:
        'အသံနှင့်အလင်းသည် လှိုင်းများအဖြစ် မည်သို့ဖြန့်ကျက်သည်နှင့် ၎င်းတို့၏ အခြေခံဂုဏ်သတ္တိများကို နားလည်ပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'Which statement is true about sound waves?',
        questionMy:
            'အသံလှိုင်းများနှင့်ပတ်သက်၍ မှန်ကန်သောဖော်ပြချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'They need a medium (like air) to travel through',
          'They can travel through a vacuum',
          'They travel faster than light',
          'They are a type of electromagnetic wave',
        ],
        optionsMy: [
          'လေကဲ့သို့ အလယ်အလတ်ပစ္စည်း (medium) ကို ဖြတ်သန်း၍ ရွေ့လျားရန် လိုအပ်သည်',
          'သုညဟင်း (vacuum) ကို ဖြတ်သန်းနိုင်သည်',
          'အလင်းထက် ပိုမြန်စွာ ခရီးသွားသည်',
          'လျှပ်စစ်သံလိုက်လှိုင်း တစ်မျိုးဖြစ်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the speed of light in a vacuum approximately?',
        questionMy:
            'သုညဟင်း (vacuum) ထဲရှိ အလင်း၏ အလျင်မှာ ခန့်မှန်းအားဖြင့် မည်မျှနည်း။',
        optionsEn: ['300,000 km/s', '300 km/s', '3,000 km/s', '30,000 km/s'],
        optionsMy: [
          '300,000 ကီလိုမီတာ/စက္ကန့်',
          '300 ကီလိုမီတာ/စက္ကန့်',
          '3,000 ကီလိုမီတာ/စက္ကန့်',
          '30,000 ကီလိုမီတာ/စက္ကန့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What do we call the distance between two consecutive wave crests?',
        questionMy: 'လှိုင်းထိပ်ချွန်နှစ်ခုကြား အကွာအဝေးကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Wavelength', 'Frequency', 'Amplitude', 'Period'],
        optionsMy: [
          'လှိုင်းအလျား',
          'ကြိမ်နှုန်း',
          'လှိုင်းအမြင့်',
          'လှိုင်းကာလ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is frequency measured in?',
        questionMy: 'ကြိမ်နှုန်းကို မည်သည့်ယူနစ်ဖြင့် တိုင်းတာသနည်း။',
        optionsEn: ['Hertz (Hz)', 'Metres (m)', 'Seconds (s)', 'Newtons (N)'],
        optionsMy: ['ဟတ်ဇ် (Hz)', 'မီတာ (m)', 'စက္ကန့် (s)', 'နယူတန် (N)'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'When light passes from air into water and bends, what is this called?',
        questionMy:
            'အလင်းသည် လေထဲမှ ရေထဲသို့ ဝင်ရောက်ကာ ကွေးသွားသောအခါ ၎င်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['Refraction', 'Reflection', 'Diffraction', 'Absorption'],
        optionsMy: [
          'အလင်းကျိုးခြင်း',
          'အလင်းရောင်ပြန်ခြင်း',
          'အလင်းကွေးညွှတ်ဖြန့်ကျက်ခြင်း',
          'စုပ်ယူခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary2-physics-2',
    subject: 'physics',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Pressure',
    titleMy: 'ဖိအား',
    descriptionEn:
        'Understand pressure in solids and fluids and how it is calculated.',
    descriptionMy:
        'အခဲနှင့် အရည်/ဓာတ်ငွေ့များတွင် ဖိအားနှင့် ၎င်းကို မည်သို့တွက်ချက်သည်ကို နားလည်ပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'What is the formula for pressure?',
        questionMy: 'ဖိအား၏ ညီမျှခြင်းပုံသေနည်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Force ÷ Area',
          'Force × Area',
          'Mass ÷ Volume',
          'Force × Distance',
        ],
        optionsMy: [
          'အား ÷ ဧရိယာ',
          'အား × ဧရိယာ',
          'အလေးထု ÷ ထုထည်',
          'အား × အကွာအဝေး',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the unit of pressure?',
        questionMy: 'ဖိအား၏ ယူနစ်မှာ အဘယ်နည်း။',
        optionsEn: ['Pascal (Pa)', 'Newton (N)', 'Joule (J)', 'Watt (W)'],
        optionsMy: ['ပါစကယ် (Pa)', 'နယူတန် (N)', 'ဂျူး (J)', 'ဝပ် (W)'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do snowshoes help a person walk on snow without sinking?',
        questionMy:
            'နှင်းခြေနင်းများသည် လူတစ်ဦးကို နှင်းပေါ်တွင် မနစ်ဘဲ လမ်းလျှောက်နိုင်စေရန် အဘယ်ကြောင့်ကူညီသနည်း။',
        optionsEn: [
          'They increase the area, reducing pressure on the snow',
          'They reduce the person\'s weight',
          'They increase the force on the snow',
          'They make the person lighter',
        ],
        optionsMy: [
          'ဧရိယာကို တိုးစေပြီး နှင်းအပေါ်ဖိအားကို လျှော့ချပေးသောကြောင့်',
          'လူ၏အလေးချိန်ကို လျှော့ချပေးသောကြောင့်',
          'နှင်းအပေါ် အားကို တိုးမြှင့်ပေးသောကြောင့်',
          'လူကို ပေါ့ပါးအောင်ပြုလုပ်ပေးသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'As you go deeper underwater, what happens to water pressure?',
        questionMy:
            'ရေအောက် ပိုမိုနက်ရှိုင်းစွာ ဆင်းသွားလေလေ ရေဖိအားသည် မည်သို့ဖြစ်လေနည်း။',
        optionsEn: [
          'It increases',
          'It decreases',
          'It stays the same',
          'It disappears',
        ],
        optionsMy: [
          'တိုးလာသည်',
          'လျော့နည်းသွားသည်',
          'မပြောင်းလဲပါ',
          'ပျောက်ကွယ်သွားသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A force of 20 N acts on an area of 4 m². What is the pressure?',
        questionMy:
            'အား 20 N သည် ဧရိယာ 4 m² အပေါ်ကျရောက်သည်။ ဖိအားမှာ အဘယ်နည်း။',
        optionsEn: ['5 Pa', '80 Pa', '4 Pa', '24 Pa'],
        optionsMy: ['5 Pa', '80 Pa', '4 Pa', '24 Pa'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary2-physics-3',
    subject: 'physics',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Work and Power',
    titleMy: 'အလုပ်နှင့် စွမ်းအား',
    descriptionEn:
        'Learn how work and power are calculated and the units used to measure them.',
    descriptionMy:
        'အလုပ်နှင့်စွမ်းအားကို မည်သို့တွက်ချက်ပြီး တိုင်းတာသည့်ယူနစ်များကို လေ့လာပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'What is the formula for work done?',
        questionMy: 'လုပ်ဆောင်ချက် (work) ၏ ညီမျှခြင်းပုံသေနည်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Force × Distance',
          'Force ÷ Distance',
          'Mass × Velocity',
          'Force × Time',
        ],
        optionsMy: [
          'အား × အကွာအဝေး',
          'အား ÷ အကွာအဝေး',
          'အလေးထု × အလျင်',
          'အား × အချိန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the unit of work?',
        questionMy: 'လုပ်ဆောင်ချက် (work) ၏ ယူနစ်မှာ အဘယ်နည်း။',
        optionsEn: ['Joule (J)', 'Newton (N)', 'Watt (W)', 'Pascal (Pa)'],
        optionsMy: ['ဂျူး (J)', 'နယူတန် (N)', 'ဝပ် (W)', 'ပါစကယ် (Pa)'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is power?',
        questionMy: 'စွမ်းအား (power) ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The rate at which work is done',
          'The total force applied',
          'The distance traveled',
          'The mass of an object',
        ],
        optionsMy: [
          'အလုပ်လုပ်သည့်နှုန်း',
          'ကျရောက်သောစုစုပေါင်းအား',
          'ခရီးသွားခဲ့သောအကွာအဝေး',
          'အရာဝတ္ထု၏အလေးထု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the unit of power?',
        questionMy: 'စွမ်းအား (power) ၏ ယူနစ်မှာ အဘယ်နည်း။',
        optionsEn: ['Watt (W)', 'Joule (J)', 'Newton (N)', 'Metre (m)'],
        optionsMy: ['ဝပ် (W)', 'ဂျူး (J)', 'နယူတန် (N)', 'မီတာ (m)'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A force of 10 N moves an object 5 m. How much work is done?',
        questionMy:
            'အား 10 N သည် အရာဝတ္ထုတစ်ခုကို 5 m ရွှေ့ပေးသည်။ လုပ်ဆောင်ချက် မည်မျှရှိသနည်း။',
        optionsEn: ['50 J', '15 J', '2 J', '5 J'],
        optionsMy: ['50 J', '15 J', '2 J', '5 J'],
        correctIndex: 0,
      ),
    ],
  ),

  // ---- chemistry ----
  SecondaryActivityDef(
    id: 'mock-secondary2-chemistry-1',
    subject: 'chemistry',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Atomic Structure and the Periodic Table',
    titleMy: 'အက်တမ်ဖွဲ့စည်းပုံနှင့် ဒြပ်စင်ဇယား',
    descriptionEn:
        'Learn the structure of atoms and how the periodic table organizes elements.',
    descriptionMy:
        'အက်တမ်များ၏ ဖွဲ့စည်းပုံနှင့် ဒြပ်စင်ဇယားသည် ဒြပ်စင်များကို မည်သို့စီစဉ်ထားသည်ကို လေ့လာပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'What three particles make up an atom?',
        questionMy:
            'အက်တမ်တစ်ခုကို ဖွဲ့စည်းထားသော အနုမြူသုံးမျိုးမှာ အဘယ်နည်း။',
        optionsEn: [
          'Protons, neutrons, and electrons',
          'Protons, atoms, and molecules',
          'Neutrons, cells, and ions',
          'Electrons, compounds, and mixtures',
        ],
        optionsMy: [
          'ပရိုတွန်၊ နျူထရွန်နှင့် အီလက်ထရွန်',
          'ပရိုတွန်၊ အက်တမ်နှင့် မော်လီကျူး',
          'နျူထရွန်၊ ဆဲလ်နှင့် အိုင်းယွန်',
          'အီလက်ထရွန်၊ ဒြပ်ပေါင်းနှင့် ရောနှောပစ္စည်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which subatomic particle has a negative charge?',
        questionMy: 'အနုတ်လျှပ်စစ်အားဆောင်သော အနုမြူခွဲမှာ အဘယ်နည်း။',
        optionsEn: ['Electron', 'Proton', 'Neutron', 'Nucleus'],
        optionsMy: ['အီလက်ထရွန်', 'ပရိုတွန်', 'နျူထရွန်', 'နျူကလိယ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the atomic number of an element?',
        questionMy:
            'ဒြပ်စင်တစ်ခု၏ အက်တမ်နံပါတ် (atomic number) ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The number of protons in the nucleus',
          'The number of neutrons only',
          'The total mass of the atom',
          'The number of electron shells',
        ],
        optionsMy: [
          'နျူကလိယအတွင်းရှိ ပရိုတွန်အရေအတွက်',
          'နျူထရွန်အရေအတွက်သာ',
          'အက်တမ်၏ စုစုပေါင်းအလေးချိန်',
          'အီလက်ထရွန်လွှာအရေအတွက်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How are elements arranged in the modern periodic table?',
        questionMy:
            'ခေတ်သစ်ဒြပ်စင်ဇယားတွင် ဒြပ်စင်များကို မည်သို့စီစဉ်ထားသနည်း။',
        optionsEn: [
          'In order of increasing atomic number',
          'In alphabetical order',
          'In order of discovery',
          'By color',
        ],
        optionsMy: [
          'အက်တမ်နံပါတ် တိုးလာသည့်အစီအစဉ်ဖြင့်',
          'အက္ခရာစဉ်အလိုက်',
          'ရှာဖွေတွေ့ရှိသည့်အစီအစဉ်ဖြင့်',
          'အရောင်အလိုက်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What do elements in the same group (column) of the periodic table share?',
        questionMy:
            'ဒြပ်စင်ဇယား၏ ကော်လံတစ်ခုတည်းရှိ ဒြပ်စင်များသည် မည်သည့်အရာကို ဆက်စပ်ထားသနည်း။',
        optionsEn: [
          'Similar chemical properties',
          'The same atomic mass',
          'The same number of neutrons',
          'The same color',
        ],
        optionsMy: [
          'ဆင်တူသော ဓာတုဂုဏ်သတ္တိများ',
          'တူညီသော အက်တမ်အလေးချိန်',
          'တူညီသော နျူထရွန်အရေအတွက်',
          'တူညီသော အရောင်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary2-chemistry-2',
    subject: 'chemistry',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Chemical Reactions and Equations',
    titleMy: 'ဓာတုတုံ့ပြန်မှုများနှင့် ညီမျှခြင်းများ',
    descriptionEn:
        'Learn how to identify chemical reactions and balance simple chemical equations.',
    descriptionMy:
        'ဓာတုတုံ့ပြန်မှုများကို ခွဲခြားသိမြင်ပြီး ရိုးရှင်းသောဓာတုညီမျှခြင်းများကို ဟန်ချက်ညီအောင် ပြုလုပ်နည်းကို လေ့လာပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'What is a sign that a chemical reaction has taken place?',
        questionMy:
            'ဓာတုတုံ့ပြန်မှုတစ်ခု ဖြစ်ပွားခဲ့ကြောင်း ညွှန်ပြသောလက္ခဏာမှာ အဘယ်နည်း။',
        optionsEn: [
          'A color change, gas bubbles, or a temperature change',
          'The substance stays exactly the same',
          'The container gets lighter only',
          'Nothing observable happens',
        ],
        optionsMy: [
          'အရောင်ပြောင်းလဲခြင်း၊ ဓာတ်ငွေ့ပူဖောင်းများ သို့မဟုတ် အပူချိန်ပြောင်းလဲခြင်း',
          'ပစ္စည်းသည် အတိအကျ တူညီနေဆဲဖြစ်ခြင်း',
          'ဘူးသည် ပေါ့လျော့သွားခြင်းသာ',
          'သတိထားမိစရာ မည်သည့်အရာမျှ မဖြစ်ပေါ်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a chemical equation, what do the substances on the left side represent?',
        questionMy:
            'ဓာတုညီမျှခြင်းတစ်ခုတွင် ဘယ်ဘက်ရှိ ပစ္စည်းများသည် မည်သည့်အရာကို ကိုယ်စားပြုသနည်း။',
        optionsEn: [
          'The reactants',
          'The products',
          'The catalysts',
          'The solvents',
        ],
        optionsMy: [
          'တုံ့ပြန်ပစ္စည်းများ (reactants)',
          'ရလဒ်ပစ္စည်းများ (products)',
          'အရှိန်မြှင့်ပစ္စည်းများ (catalysts)',
          'ဖျက်စေးများ (solvents)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What must be equal on both sides of a balanced chemical equation?',
        questionMy:
            'ဟန်ချက်ညီသောဓာတုညီမျှခြင်းတွင် နှစ်ဘက်စလုံးတွင် တူညီရမည့်အရာမှာ အဘယ်နည်း။',
        optionsEn: [
          'The number of atoms of each element',
          'The color of the substances',
          'The temperature',
          'The state of matter',
        ],
        optionsMy: [
          'ဒြပ်စင်တစ်ခုစီ၏ အက်တမ်အရေအတွက်',
          'ပစ္စည်းများ၏ အရောင်',
          'အပူချိန်',
          'ရုပ်ဝတ္ထုအခြေအနေ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is produced when magnesium burns in oxygen?',
        questionMy:
            'မဂ္ဂနီစီယမ်ကို အောက်ဆီဂျင်ထဲတွင် လောင်ကျွမ်းစေသောအခါ မည်သည့်ပစ္စည်း ထွက်ပေါ်လာသနည်း။',
        optionsEn: [
          'Magnesium oxide',
          'Magnesium chloride',
          'Magnesium carbonate',
          'Magnesium sulphate',
        ],
        optionsMy: [
          'မဂ္ဂနီစီယမ်အောက်ဆိုဒ်',
          'မဂ္ဂနီစီယမ်ကလိုရိုဒ်',
          'မဂ္ဂနီစီယမ်ကာဗွန်နိတ်',
          'မဂ္ဂနီစီယမ်ဆာလဖိတ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What type of reaction releases heat to the surroundings?',
        questionMy:
            'ပတ်ဝန်းကျင်သို့ အပူထုတ်လွှတ်ပေးသော တုံ့ပြန်မှုအမျိုးအစားမှာ အဘယ်နည်း။',
        optionsEn: [
          'Exothermic reaction',
          'Endothermic reaction',
          'Neutral reaction',
          'Catalytic reaction',
        ],
        optionsMy: [
          'အပူထုတ်တုံ့ပြန်မှု (exothermic)',
          'အပူစုပ်တုံ့ပြန်မှု (endothermic)',
          'ကြားနေတုံ့ပြန်မှု',
          'အရှိန်မြှင့်တုံ့ပြန်မှု',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary2-chemistry-3',
    subject: 'chemistry',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Acids and Bases',
    titleMy: 'အက်ဆစ်များနှင့် ဘေ့စ်များ',
    descriptionEn:
        'Learn how to identify acids and bases and understand the pH scale.',
    descriptionMy:
        'အက်ဆစ်များနှင့် ဘေ့စ်များကို ခွဲခြားသိမြင်ပြီး pH စကေးကို နားလည်ပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'What does the pH scale measure?',
        questionMy: 'pH စကေးသည် မည်သည့်အရာကို တိုင်းတာသနည်း။',
        optionsEn: [
          'How acidic or alkaline (basic) a substance is',
          'The temperature of a substance',
          'The mass of a substance',
          'The color of a substance only',
        ],
        optionsMy: [
          'ပစ္စည်းတစ်ခု၏ အက်ဆစ်ဓာတ် သို့မဟုတ် အယ်လကာလိုင်း (ဘေ့စ်) ဓာတ်ပါဝင်မှုအတိုင်းအတာ',
          'ပစ္စည်းတစ်ခု၏ အပူချိန်',
          'ပစ္စည်းတစ်ခု၏ အလေးထု',
          'ပစ္စည်းတစ်ခု၏ အရောင်သာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What pH value is considered neutral?',
        questionMy: 'ကြားနေဟု သတ်မှတ်သော pH တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['7', '0', '14', '10'],
        optionsMy: ['7', '0', '14', '10'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What color does litmus paper turn in an acid?',
        questionMy:
            'လစ်မတ်စ်စက္ကူသည် အက်ဆစ်ထဲတွင် မည်သည့်အရောင်ပြောင်းသွားသနည်း။',
        optionsEn: ['Red', 'Blue', 'Green', 'Yellow'],
        optionsMy: ['အနီရောင်', 'အပြာရောင်', 'အစိမ်းရောင်', 'အဝါရောင်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is produced when an acid reacts with a base?',
        questionMy:
            'အက်ဆစ်တစ်ခုသည် ဘေ့စ်တစ်ခုနှင့် တုံ့ပြန်သောအခါ မည်သည့်ပစ္စည်း ထွက်ပေါ်လာသနည်း။',
        optionsEn: [
          'Salt and water',
          'Only water',
          'Only gas',
          'Only a solid precipitate',
        ],
        optionsMy: [
          'ဆားနှင့် ရေ',
          'ရေသာ',
          'ဓာတ်ငွေ့သာ',
          'အစိုင်အခဲအနည်ကျပစ္စည်းသာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is an example of a common acid?',
        questionMy: 'အောက်ပါတို့တွင် သာမန်အက်ဆစ်တစ်မျိုး၏ ဥပမာမှာ အဘယ်နည်း။',
        optionsEn: [
          'Lemon juice',
          'Soap',
          'Baking soda solution',
          'Toothpaste',
        ],
        optionsMy: ['ရှောက်သီးရည်', 'ဆပ်ပြာ', 'ဆိုဒါဖော့ဒရည်', 'သွားတိုက်ဆေး'],
        correctIndex: 0,
      ),
    ],
  ),

  // ---- biology ----
  SecondaryActivityDef(
    id: 'mock-secondary2-biology-1',
    subject: 'biology',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Nutrition and Digestion',
    titleMy: 'အာဟာရနှင့် အစာချေဖျက်ခြင်း',
    descriptionEn:
        'Learn about food groups and how the digestive system breaks down food.',
    descriptionMy:
        'အစားအစာအုပ်စုများနှင့် အစာချေဖျက်စနစ်သည် အစားအစာကို မည်သို့ပြိုကွဲစေသည်ကို လေ့လာပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'Which food group provides the body with the most energy?',
        questionMy:
            'ခန္ဓာကိုယ်ကို အများဆုံးစွမ်းအင်ပေးသော အစားအစာအုပ်စုမှာ အဘယ်နည်း။',
        optionsEn: ['Carbohydrates', 'Vitamins', 'Minerals', 'Water'],
        optionsMy: ['ကာဗိုဟိုက်ဒရိတ်', 'ဗီတာမင်', 'သတ္တုဓာတ်', 'ရေ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the main function of protein in the diet?',
        questionMy: 'အစားအစာတွင် ပရိုတိန်း၏ အဓိကလုပ်ငန်းတာဝန်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Growth and repair of body tissues',
          'Providing quick energy only',
          'Insulating the body',
          'Carrying oxygen in blood',
        ],
        optionsMy: [
          'ခန္ဓာကိုယ်တစ်ရှူးများ ကြီးထွားပြင်ဆင်ရန်',
          'အမြန်စွမ်းအင်ပေးရန်သာ',
          'ခန္ဓာကိုယ်ကို အပူလွှတ်ခံရန်',
          'သွေးထဲတွင် အောက်ဆီဂျင်သယ်ဆောင်ရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Where does digestion of food begin?',
        questionMy: 'အစာချေဖျက်ခြင်းသည် မည်သည့်နေရာတွင် စတင်သနည်း။',
        optionsEn: [
          'The mouth',
          'The stomach',
          'The small intestine',
          'The large intestine',
        ],
        optionsMy: ['ခံတွင်း', 'အစာအိမ်', 'အူသိမ်', 'အူမကြီး'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the role of enzymes in digestion?',
        questionMy:
            'အစာချေဖျက်ခြင်းတွင် အင်ဇိုင်း (enzyme) ၏ အခန်းကဏ္ဍမှာ အဘယ်နည်း။',
        optionsEn: [
          'To break down large food molecules into smaller ones',
          'To store food for later use',
          'To give food its taste',
          'To color the food',
        ],
        optionsMy: [
          'ကြီးမားသောအစားအစာမော်လီကျူးများကို ငယ်သောအပိုင်းများအဖြစ် ပြိုကွဲစေရန်',
          'နောင်တွင်သုံးရန် အစားအစာသိမ်းဆည်းရန်',
          'အစားအစာကို အရသာပေးရန်',
          'အစားအစာကို အရောင်တင်ရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which organ absorbs most of the digested nutrients into the blood?',
        questionMy:
            'ချေဖျက်ပြီးသောအာဟာရအများစုကို သွေးထဲသို့ စုပ်ယူပေးသော အင်္ဂါမှာ အဘယ်နည်း။',
        optionsEn: [
          'The small intestine',
          'The stomach',
          'The liver',
          'The oesophagus',
        ],
        optionsMy: ['အူသိမ်', 'အစာအိမ်', 'အသည်း', 'အစာလမ်း (oesophagus)'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary2-biology-2',
    subject: 'biology',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Respiration and Photosynthesis',
    titleMy: 'အသက်ရှူခြင်းနှင့် ဓာတ်ပေါင်းစပ်ခြင်း',
    descriptionEn:
        'Compare how respiration releases energy and photosynthesis captures it in plants.',
    descriptionMy:
        'အသက်ရှူခြင်းသည် စွမ်းအင်ကို မည်သို့ထုတ်လွှတ်ပြီး ဓာတ်ပေါင်းစပ်ခြင်းသည် အပင်များတွင် စွမ်းအင်ကို မည်သို့ဖမ်းယူသည်ကို နှိုင်းယှဉ်ပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'What gas do plants take in during photosynthesis?',
        questionMy:
            'ဓာတ်ပေါင်းစပ်ခြင်းအတွင်း အပင်များသည် မည်သည့်ဓာတ်ငွေ့ကို စုပ်ယူသနည်း။',
        optionsEn: ['Carbon dioxide', 'Oxygen', 'Nitrogen', 'Hydrogen'],
        optionsMy: [
          'ကာဗွန်ဒိုင်အောက်ဆိုဒ်',
          'အောက်ဆီဂျင်',
          'နိုက်ထရိုဂျင်',
          'ဟိုက်ဒရိုဂျင်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What gas do plants release during photosynthesis?',
        questionMy:
            'ဓာတ်ပေါင်းစပ်ခြင်းအတွင်း အပင်များသည် မည်သည့်ဓာတ်ငွေ့ကို ထုတ်လွှတ်သနည်း။',
        optionsEn: ['Oxygen', 'Carbon dioxide', 'Nitrogen', 'Methane'],
        optionsMy: [
          'အောက်ဆီဂျင်',
          'ကာဗွန်ဒိုင်အောက်ဆိုဒ်',
          'နိုက်ထရိုဂျင်',
          'မီသိန်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is needed for photosynthesis to take place?',
        questionMy: 'ဓာတ်ပေါင်းစပ်ခြင်း ဖြစ်ပေါ်ရန် မည်သည့်အရာလိုအပ်သနည်း။',
        optionsEn: [
          'Sunlight, water, and carbon dioxide',
          'Only soil',
          'Only darkness',
          'Only oxygen',
        ],
        optionsMy: [
          'နေရောင်ခြည်၊ ရေနှင့် ကာဗွန်ဒိုင်အောက်ဆိုဒ်',
          'မြေဆီလွှာသာ',
          'အမှောင်သာ',
          'အောက်ဆီဂျင်သာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the main purpose of respiration in living cells?',
        questionMy:
            'သက်ရှိဆဲလ်များတွင် အသက်ရှူခြင်း၏ အဓိကရည်ရွယ်ချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'To release energy from food',
          'To make food from sunlight',
          'To absorb water only',
          'To produce chlorophyll',
        ],
        optionsMy: [
          'အစားအစာမှ စွမ်းအင်ကို ထုတ်လွှတ်ရန်',
          'နေရောင်ခြည်မှ အစားအစာ ဖန်တီးရန်',
          'ရေကိုသာ စုပ်ယူရန်',
          'ကလိုရိုဖီးလ် ထုတ်လုပ်ရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which of these correctly describes the word equation for respiration?',
        questionMy:
            'အသက်ရှူခြင်း၏ စကားလုံးညီမျှခြင်းကို မှန်ကန်စွာဖော်ပြသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Glucose + oxygen → carbon dioxide + water + energy',
          'Carbon dioxide + water → glucose + oxygen',
          'Water + energy → glucose',
          'Oxygen → carbon dioxide only',
        ],
        optionsMy: [
          'ဂလူးကို့စ် + အောက်ဆီဂျင် → ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ရေ + စွမ်းအင်',
          'ကာဗွန်ဒိုင်အောက်ဆိုဒ် + ရေ → ဂလူးကို့စ် + အောက်ဆီဂျင်',
          'ရေ + စွမ်းအင် → ဂလူးကို့စ်',
          'အောက်ဆီဂျင် → ကာဗွန်ဒိုင်အောက်ဆိုဒ်သာ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary2-biology-3',
    subject: 'biology',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Introduction to Reproduction',
    titleMy: 'မျိုးပွားခြင်း နိဒါန်း',
    descriptionEn:
        'Learn the basic difference between sexual and asexual reproduction in living things.',
    descriptionMy:
        'သက်ရှိများတွင် လိင်ဆက်ဆံမျိုးပွားခြင်းနှင့် လိင်မဲ့မျိုးပွားခြင်း၏ အခြေခံကွာခြားချက်ကို လေ့လာပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'What is reproduction?',
        questionMy: 'မျိုးပွားခြင်း ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The process by which living things produce offspring',
          'The process of breathing',
          'The process of eating food',
          'The process of moving from place to place',
        ],
        optionsMy: [
          'သက်ရှိများ မျိုးဆက်သစ်ထုတ်လုပ်သည့် လုပ်ငန်းစဉ်',
          'အသက်ရှူသည့် လုပ်ငန်းစဉ်',
          'အစားအစာစားသည့် လုပ်ငန်းစဉ်',
          'နေရာမှနေရာသို့ ရွေ့လျားသည့် လုပ်ငန်းစဉ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is asexual reproduction?',
        questionMy:
            'လိင်မဲ့မျိုးပွားခြင်း (asexual reproduction) ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Reproduction involving only one parent',
          'Reproduction involving two parents',
          'Reproduction that only happens in animals',
          'Reproduction that requires seeds',
        ],
        optionsMy: [
          'မိဘတစ်ဦးတည်းသာ ပါဝင်သော မျိုးပွားခြင်း',
          'မိဘနှစ်ဦးပါဝင်သော မျိုးပွားခြင်း',
          'တိရစ္ဆာန်များတွင်သာ ဖြစ်ပွားသော မျိုးပွားခြင်း',
          'မျိုးစေ့လိုအပ်သော မျိုးပွားခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'In flowering plants, what part produces pollen?',
        questionMy:
            'ပန်းပွင့်အပင်များတွင် ပရဂကို ထုတ်လုပ်ပေးသောအစိတ်အပိုင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'The anther (part of the stamen)',
          'The root',
          'The leaf',
          'The stem',
        ],
        optionsMy: [
          'ဝတ်ဆံညှောင့် (အင်္ကျီပွင့်ဆိုင်ရာအစိတ်အပိုင်း)',
          'အမြစ်',
          'အရွက်',
          'ပင်စည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is fertilisation?',
        questionMy: 'သန္ဓေအောင်ခြင်း (fertilisation) ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The joining of a male sex cell and a female sex cell',
          'The growth of a seed into a plant',
          'The falling of leaves in autumn',
          'The absorption of water by roots',
        ],
        optionsMy: [
          'အထီးဆဲလ်နှင့် အမဆဲလ် ပေါင်းစည်းခြင်း',
          'မျိုးစေ့တစ်ခု အပင်အဖြစ် ကြီးထွားခြင်း',
          'ဆောင်းရာသီတွင် အရွက်ကြွေခြင်း',
          'အမြစ်များမှ ရေစုပ်ယူခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is an example of asexual reproduction?',
        questionMy: 'အောက်ပါတို့တွင် လိင်မဲ့မျိုးပွားခြင်း၏ ဥပမာမှာ အဘယ်နည်း။',
        optionsEn: [
          'A plant growing new shoots from its runners',
          'A human baby being born',
          'A flower being pollinated by a bee',
          'Two animals mating',
        ],
        optionsMy: [
          'အပင်တစ်ပင်သည် ၎င်း၏ပျံနှံစားများမှ အညှောက်အသစ်ထွက်ခြင်း',
          'လူသားကလေးတစ်ဦး မွေးဖွားခြင်း',
          'ပန်းတစ်ပွင့်ကို ပျားမြားမှ ပရဂညှက်ခြင်း',
          'တိရစ္ဆာန်နှစ်ကောင် အတူဆက်ဆံခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ---- ict ----
  SecondaryActivityDef(
    id: 'mock-secondary2-ict-1',
    subject: 'ict',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Networks Basics',
    titleMy: 'ကွန်ရက် အခြေခံများ',
    descriptionEn:
        'Learn what a computer network is and the common types of networks.',
    descriptionMy:
        'ကွန်ပျူတာကွန်ရက်ဆိုသည်မှာ အဘယ်နည်းနှင့် ကွန်ရက်ပုံမှန်အမျိုးအစားများကို လေ့လာပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'What is a computer network?',
        questionMy: 'ကွန်ပျူတာကွန်ရက် ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Two or more computers connected together to share data',
          'A single computer working alone',
          'A type of software only',
          'A printer connected to a wall',
        ],
        optionsMy: [
          'ဒေတာမျှဝေရန် ချိတ်ဆက်ထားသော ကွန်ပျူတာနှစ်လုံးသို့မဟုတ်ထို့ထက်ပို',
          'တစ်ဦးတည်းအလုပ်လုပ်နေသော ကွန်ပျူတာတစ်လုံး',
          'ဆော့ဖ်ဝဲအမျိုးအစားတစ်ခုသာ',
          'နံရံတွင် ချိတ်ဆက်ထားသော ပရင်တာတစ်လုံး',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does LAN stand for?',
        questionMy: 'LAN သည် မည်သည့်စကားလုံးများကို ကိုယ်စားပြုသနည်း။',
        optionsEn: [
          'Local Area Network',
          'Long Area Network',
          'Large Access Node',
          'Link Area Network',
        ],
        optionsMy: [
          'Local Area Network (ဒေသတွင်း ဧရိယာကွန်ရက်)',
          'Long Area Network',
          'Large Access Node',
          'Link Area Network',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What device connects multiple devices within the same network and directs data between them?',
        questionMy:
            'ကွန်ရက်တစ်ခုတည်းအတွင်းရှိ ကိရိယာများစွာကို ချိတ်ဆက်ပေးပြီး ၎င်းတို့ကြားဒေတာကို ညွှန်ကြားပေးသောကိရိယာမှာ အဘယ်နည်း။',
        optionsEn: ['A router', 'A monitor', 'A keyboard', 'A printer'],
        optionsMy: ['ရောင်တာ (router)', 'မော်နီတာ', 'ကီးဘုတ်', 'ပရင်တာ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the internet?',
        questionMy: 'အင်တာနက် ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A global network connecting millions of computer networks',
          'A single computer in one country',
          'A type of hardware only',
          'A word processing program',
        ],
        optionsMy: [
          'ကွန်ပျူတာကွန်ရက်သန်းပေါင်းများစွာကို ချိတ်ဆက်ထားသော ကမ္ဘာလုံးဆိုင်ရာကွန်ရက်',
          'တိုင်းပြည်တစ်ခုတွင် ရှိသော ကွန်ပျူတာတစ်လုံး',
          'ဟာ့ဒ်ဝဲအမျိုးအစားတစ်ခုသာ',
          'စာစီစာရိုက်ပရိုဂရမ်တစ်ခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is Wi-Fi mainly used for?',
        questionMy: 'Wi-Fi ကို အဓိကအားဖြင့် မည်သည့်အတွက် အသုံးပြုသနည်း။',
        optionsEn: [
          'Connecting devices to a network wirelessly',
          'Printing documents',
          'Storing files permanently',
          'Charging a laptop battery',
        ],
        optionsMy: [
          'ကိရိယာများကို ကြိုးမဲ့ကွန်ရက်နှင့် ချိတ်ဆက်ရန်',
          'စာရွက်စာတမ်း ပရင့်ထုတ်ရန်',
          'ဖိုင်များကို အမြဲသိမ်းဆည်းရန်',
          'လက်ပ်တော့ဘက်ထရီအားသွင်းရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary2-ict-2',
    subject: 'ict',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Introduction to Databases',
    titleMy: 'ဒေတာဘေ့စ် နိဒါန်း',
    descriptionEn:
        'Learn the basic ideas behind databases, tables, and records.',
    descriptionMy:
        'ဒေတာဘေ့စ်၊ ဇယားနှင့် မှတ်တမ်းများနောက်ကွယ်ရှိ အခြေခံအယူအဆများကို လေ့လာပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'What is a database?',
        questionMy: 'ဒေတာဘေ့စ် ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'An organized collection of related data',
          'A single photograph',
          'A type of printer',
          'A computer virus',
        ],
        optionsMy: [
          'ဆက်စပ်ဒေတာများကို စနစ်တကျစုစည်းထားသော အစုအဝေး',
          'ဓာတ်ပုံတစ်ပုံတည်း',
          'ပရင်တာအမျိုးအစားတစ်ခု',
          'ကွန်ပျူတာဗိုင်းရပ်စ်တစ်မျိုး',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is a table in a database made up of?',
        questionMy:
            'ဒေတာဘေ့စ်ရှိ ဇယားတစ်ခုသည် မည်သည့်အရာများဖြင့် ဖွဲ့စည်းထားသနည်း။',
        optionsEn: [
          'Rows and columns',
          'Only pictures',
          'Only numbers',
          'Only text without structure',
        ],
        optionsMy: [
          'အတန်းများနှင့် ကော်လံများ',
          'ပုံများသာ',
          'ဂဏန်းများသာ',
          'ဖွဲ့စည်းပုံမရှိသော စာသားသာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What do we call a single row of data in a database table?',
        questionMy: 'ဒေတာဘေ့စ်ဇယားရှိ ဒေတာတစ်တန်းကို မည်သို့ခေါ်သနည်း။',
        optionsEn: ['A record', 'A field', 'A file', 'A folder'],
        optionsMy: ['မှတ်တမ်း (record)', 'အကွက် (field)', 'ဖိုင်', 'ဖိုလ်ဒါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is a field in a database table?',
        questionMy: 'ဒေတာဘေ့စ်ဇယားရှိ အကွက် (field) ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A single category of information, like "name" or "age"',
          'The entire database',
          'A type of computer virus',
          'A printed report',
        ],
        optionsMy: [
          '"အမည်" သို့မဟုတ် "အသက်" ကဲ့သို့ အချက်အလက် အမျိုးအစားတစ်ခုတည်း',
          'ဒေတာဘေ့စ်တစ်ခုလုံး',
          'ကွန်ပျူတာဗိုင်းရပ်စ်တစ်မျိုး',
          'ပရင့်ထုတ်ထားသောအစီရင်ခံစာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do organizations use databases instead of paper records?',
        questionMy:
            'အဖွဲ့အစည်းများသည် စာရွက်မှတ်တမ်းအစား ဒေတာဘေ့စ်ကို အသုံးပြုကြသည်မှာ အဘယ်ကြောင့်နည်း။',
        optionsEn: [
          'To store, search, and update large amounts of data quickly and accurately',
          'To make records harder to find',
          'To use more paper',
          'To slow down data processing',
        ],
        optionsMy: [
          'ဒေတာအမြောက်အများကို လျင်မြန်တိကျစွာ သိမ်းဆည်း၊ ရှာဖွေနှင့်အသစ်ပြင်ဆင်ရန်',
          'မှတ်တမ်းများကို ရှာဖွေရခက်ခဲစေရန်',
          'စာရွက်ပိုမိုသုံးရန်',
          'ဒေတာစီမံခြင်းကို နှေးကွေးအောင်ပြုလုပ်ရန်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary2-ict-3',
    subject: 'ict',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Algorithms and Flowcharts',
    titleMy: 'အယ်လဂိုရီသမ်များနှင့် စီးဆင်းပုံများ',
    descriptionEn:
        'Learn how algorithms describe steps to solve a problem and how flowcharts represent them visually.',
    descriptionMy:
        'အယ်လဂိုရီသမ်များသည် ပြဿနာတစ်ခုကို ဖြေရှင်းရန် အဆင့်များကို မည်သို့ဖော်ပြသည်နှင့် စီးဆင်းပုံများက ၎င်းတို့ကို မြင်ကွင်းအားဖြင့် မည်သို့ဖော်ပြသည်ကို လေ့လာပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'What is an algorithm?',
        questionMy: 'အယ်လဂိုရီသမ် (algorithm) ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A step-by-step set of instructions to solve a problem',
          'A type of computer hardware',
          'A programming language',
          'A computer virus',
        ],
        optionsMy: [
          'ပြဿနာတစ်ခုကို ဖြေရှင်းရန် အဆင့်ဆင့်ညွှန်ကြားချက်များ',
          'ကွန်ပျူတာဟာ့ဒ်ဝဲအမျိုးအစားတစ်ခု',
          'ပရိုဂရမ်းမင်းဘာသာစကားတစ်ခု',
          'ကွန်ပျူတာဗိုင်းရပ်စ်တစ်မျိုး',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is a flowchart used for?',
        questionMy: 'စီးဆင်းပုံ (flowchart) ကို မည်သည့်အတွက် အသုံးပြုသနည်း။',
        optionsEn: [
          'To show the steps of a process visually using symbols',
          'To store data permanently',
          'To connect to the internet',
          'To print documents',
        ],
        optionsMy: [
          'သင်္ကေတများသုံး၍ လုပ်ငန်းစဉ်၏အဆင့်များကို မြင်ကွင်းအားဖြင့်ပြသရန်',
          'ဒေတာကို အမြဲသိမ်းဆည်းရန်',
          'အင်တာနက်နှင့် ချိတ်ဆက်ရန်',
          'စာရွက်စာတမ်း ပရင့်ထုတ်ရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a flowchart, what shape usually represents a decision (yes/no question)?',
        questionMy:
            'စီးဆင်းပုံတွင် ဆုံးဖြတ်ချက် (ဟုတ်/မဟုတ် မေးခွန်း) ကို ကိုယ်စားပြုလေ့ရှိသော ပုံသဏ္ဌာန်မှာ အဘယ်နည်း။',
        optionsEn: ['A diamond', 'A rectangle', 'An oval', 'A circle'],
        optionsMy: [
          'စိန်ပုံသဏ္ဌာန်',
          'စတုဂံပုံသဏ္ဌာန်',
          'ဘဲဥပုံသဏ္ဌာန်',
          'စက်ဝိုင်းပုံသဏ္ဌာန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a flowchart, what shape usually represents the start or end of a process?',
        questionMy:
            'စီးဆင်းပုံတွင် လုပ်ငန်းစဉ်တစ်ခု၏ အစ သို့မဟုတ် အဆုံးကို ကိုယ်စားပြုလေ့ရှိသော ပုံသဏ္ဌာန်မှာ အဘယ်နည်း။',
        optionsEn: ['An oval', 'A diamond', 'A rectangle', 'A triangle'],
        optionsMy: [
          'ဘဲဥပုံသဏ္ဌာန်',
          'စိန်ပုံသဏ္ဌာန်',
          'စတုဂံပုံသဏ္ဌာန်',
          'တြိဂံပုံသဏ္ဌာန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why is it useful to plan an algorithm before writing computer code?',
        questionMy:
            'ကွန်ပျူတာကုဒ်ရေးသားခြင်းမပြုမီ အယ်လဂိုရီသမ်ကို စီစဉ်ရခြင်းသည် အဘယ်ကြောင့် အသုံးဝင်သနည်း။',
        optionsEn: [
          'It helps break the problem into clear, logical steps first',
          'It makes the program run on any device without change',
          'It is required to turn on the computer',
          'It replaces the need for testing',
        ],
        optionsMy: [
          'ပြဿနာကို ရှင်းလင်းသည့် ယုတ္တိရှိသောအဆင့်များအဖြစ် ဦးစွာ ခွဲခြမ်းစိတ်ဖြာနိုင်စေသောကြောင့်',
          'ပရိုဂရမ်ကို ကိရိယာမည်သည့်ခုပေါ်မဆို ပြောင်းလဲစရာမလိုဘဲ အလုပ်လုပ်စေသောကြောင့်',
          'ကွန်ပျူတာဖွင့်ရန် လိုအပ်သောကြောင့်',
          'စမ်းသပ်ခြင်းလိုအပ်မှုကို အစားထိုးပေးသောကြောင့်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ---- socialstudies ----
  SecondaryActivityDef(
    id: 'mock-secondary2-socialstudies-1',
    subject: 'socialstudies',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'World History Overview',
    titleMy: 'ကမ္ဘာ့သမိုင်း ခြုံငုံသုံးသပ်ချက်',
    descriptionEn: 'Explore major periods and turning points in world history.',
    descriptionMy:
        'ကမ္ဘာ့သမိုင်းရှိ အဓိကခေတ်ကာလများနှင့် အရေးပါသောအလှည့်အပြောင်းများကို လေ့လာပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'Which ancient civilization built the pyramids of Giza?',
        questionMy:
            'ဂီဇာပိရမစ်များကို တည်ဆောက်ခဲ့သော ရှေးဟောင်းယဉ်ကျေးမှုမှာ အဘယ်နည်း။',
        optionsEn: [
          'Ancient Egypt',
          'Ancient Greece',
          'Ancient Rome',
          'Ancient China',
        ],
        optionsMy: [
          'ရှေးဟောင်းအီဂျစ်',
          'ရှေးဟောင်းဂရိတ်',
          'ရှေးဟောင်းရောမ',
          'ရှေးဟောင်းတရုတ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What was the Renaissance mainly known for?',
        questionMy:
            'Renaissance ခေတ်သည် အဓိကအားဖြင့် မည်သည့်အရာကြောင့် လူသိများသနည်း။',
        optionsEn: [
          'A revival of art, learning, and culture in Europe',
          'The invention of the internet',
          'The building of the first railways',
          'The start of World War I',
        ],
        optionsMy: [
          'ဥရောပတွင် အနုပညာ၊ ပညာရေးနှင့် ယဉ်ကျေးမှု ပြန်လည်ရှင်သန်လာမှု',
          'အင်တာနက် တီထွင်မှု',
          'ပထမဆုံးရထားလမ်း တည်ဆောက်မှု',
          'ပထမကမ္ဘာစစ် စတင်မှု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which event marked the beginning of World War I?',
        questionMy:
            'ပထမကမ္ဘာစစ် စတင်ဖြစ်ပွားရသည့်အကြောင်းရင်းဖြစ်သော အဖြစ်အပျက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The assassination of Archduke Franz Ferdinand',
          'The invention of the telephone',
          'The moon landing',
          'The fall of the Roman Empire',
        ],
        optionsMy: [
          'အာချီဒျုတ် ဖရန့်ဇ်ဖာဒီနန် လုပ်ကြံခံရမှု',
          'ဖုန်း တီထွင်မှု',
          'လနံသို့ ဆင်းသက်မှု',
          'ရောမအင်ပါယာ ပြိုကွဲမှု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What was the Industrial Revolution?',
        questionMy:
            'စက်မှုတော်လှန်ရေး (Industrial Revolution) ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A period of major change from hand production to machines and factories',
          'A war between two ancient empires',
          'The discovery of America',
          'A period of no technological change',
        ],
        optionsMy: [
          'လက်ဖြင့်ထုတ်လုပ်ခြင်းမှ စက်ယန္တရားနှင့် စက်ရုံများသို့ ပြောင်းလဲသွားသည့် အရေးကြီးသောကာလ',
          'ရှေးဟောင်းအင်ပါယာနှစ်ခုကြား စစ်ပွဲ',
          'အမေရိကတိုက် တွေ့ရှိမှု',
          'နည်းပညာမည်သည့်အပြောင်းအလဲမျှ မရှိသည့်ကာလ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which ancient civilization is known for developing democracy?',
        questionMy:
            'ဒီမိုကရေစီစနစ် တီထွင်ခဲ့သည်ဟု လူသိများသော ရှေးဟောင်းယဉ်ကျေးမှုမှာ အဘယ်နည်း။',
        optionsEn: [
          'Ancient Greece',
          'Ancient Egypt',
          'The Maya',
          'The Vikings',
        ],
        optionsMy: [
          'ရှေးဟောင်းဂရိတ်',
          'ရှေးဟောင်းအီဂျစ်',
          'မာယာယဉ်ကျေးမှု',
          'ဗိုက်ကင်းများ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary2-socialstudies-2',
    subject: 'socialstudies',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Economics Basics',
    titleMy: 'စီးပွားရေးဗဟုသုတ အခြေခံများ',
    descriptionEn:
        'Learn key economic ideas like supply, demand, and scarcity.',
    descriptionMy:
        'ထောက်ပံ့မှု၊ လိုအပ်ချက်နှင့် ရှားပါးမှုကဲ့သို့ အဓိကစီးပွားရေးအယူအဆများကို လေ့လာပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: "What does 'scarcity' mean in economics?",
        questionMy:
            "စီးပွားရေးတွင် 'ရှားပါးမှု (scarcity)' ဆိုသည်မှာ အဘယ်နည်း။",
        optionsEn: [
          'Limited resources but unlimited wants',
          'Unlimited resources for everyone',
          'A type of currency',
          'A government tax',
        ],
        optionsMy: [
          'အရင်းအမြစ်များ ကန့်သတ်ထားသော်လည်း လိုချင်မှုများသည် အကန့်အသတ်မရှိခြင်း',
          'လူတိုင်းအတွက် အကန့်အသတ်မရှိသော အရင်းအမြစ်များ',
          'ငွေကြေးအမျိုးအစားတစ်ခု',
          'အစိုးရအခွန်တစ်ခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the law of supply and demand?',
        questionMy:
            'ထောက်ပံ့မှုနှင့် လိုအပ်ချက်ဥပဒေ (law of supply and demand) ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Prices rise when demand is high and supply is low, and fall when the opposite happens',
          'Prices always stay the same',
          'Supply always equals demand exactly',
          'Demand has no effect on price',
        ],
        optionsMy: [
          'လိုအပ်ချက်များပြီး ထောက်ပံ့မှုနည်းသောအခါ စျေးနှုန်းများ မြင့်တက်ပြီး ဆန့်ကျင်ဘက်ဖြစ်သောအခါ ကျဆင်းခြင်း',
          'စျေးနှုန်းများသည် အမြဲတူညီနေခြင်း',
          'ထောက်ပံ့မှုသည် လိုအပ်ချက်နှင့် အမြဲတန်းတူညီနေခြင်း',
          'လိုအပ်ချက်သည် စျေးနှုန်းအပေါ် မည်သည့်သက်ရောက်မှုမျှ မရှိခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: "What is 'demand' in economics?",
        questionMy: "စီးပွားရေးတွင် 'လိုအပ်ချက် (demand)' ဆိုသည်မှာ အဘယ်နည်း။",
        optionsEn: [
          'The amount of a good or service consumers want to buy',
          'The amount of a good a factory can produce',
          'The tax on imported goods',
          'The interest rate set by a bank',
        ],
        optionsMy: [
          'စားသုံးသူများ ဝယ်လိုသော ကုန်ပစ္စည်း သို့မဟုတ် ဝန်ဆောင်မှုပမာဏ',
          'စက်ရုံတစ်ခုက ထုတ်လုပ်နိုင်သော ကုန်ပစ္စည်းပမာဏ',
          'တင်သွင်းကုန်ပေါ်ရှိ အခွန်',
          'ဘဏ်သတ်မှတ်ထားသော အတိုးနှုန်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: "What is a 'market' in economics?",
        questionMy: "စီးပွားရေးတွင် 'ဈေးကွက် (market)' ဆိုသည်မှာ အဘယ်နည်း။",
        optionsEn: [
          'A place or system where buyers and sellers exchange goods and services',
          'A government building only',
          'A type of school',
          'A form of currency',
        ],
        optionsMy: [
          'ဝယ်သူနှင့်ရောင်းသူများ ကုန်ပစ္စည်းနှင့်ဝန်ဆောင်မှုများကို လဲလှယ်ကြသည့် နေရာ သို့မဟုတ် စနစ်',
          'အစိုးရအဆောက်အအုံသာ',
          'ကျောင်းအမျိုးအစားတစ်ခု',
          'ငွေကြေးပုံစံတစ်ခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is inflation?',
        questionMy: 'ငွေကြေးဖောင်းပွမှု (inflation) ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A general rise in prices over time',
          'A general fall in prices over time',
          'A fixed price that never changes',
          'A type of tax on income only',
        ],
        optionsMy: [
          'အချိန်နှင့်အမျှ စျေးနှုန်းများ ယေဘုယျအားဖြင့် မြင့်တက်လာခြင်း',
          'အချိန်နှင့်အမျှ စျေးနှုန်းများ ယေဘုယျအားဖြင့် ကျဆင်းလာခြင်း',
          'ဘယ်တော့မှ မပြောင်းလဲသော ပုံသေစျေးနှုန်း',
          'ဝင်ငွေအပေါ်သာ ကောက်ခံသော အခွန်အမျိုးအစားတစ်ခု',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary2-socialstudies-3',
    subject: 'socialstudies',
    grade: Grade.secondary2,
    contentType: 'quiz',
    titleEn: 'Human Rights',
    titleMy: 'လူ့အခွင့်အရေးများ',
    descriptionEn:
        'Learn the basic idea of human rights and why they matter for everyone.',
    descriptionMy:
        'လူ့အခွင့်အရေး၏ အခြေခံအယူအဆနှင့် ၎င်းသည် လူတိုင်းအတွက် အဘယ်ကြောင့်အရေးကြီးသည်ကို လေ့လာပါ။',
    starsReward: 24,
    questions: [
      QuizQuestion(
        questionEn: 'What are human rights?',
        questionMy: 'လူ့အခွင့်အရေးများ ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Basic freedoms and protections that belong to every person',
          'Rights given only to government officials',
          'Rules that only apply in one country',
          'Privileges that must be earned through work',
        ],
        optionsMy: [
          'လူတိုင်းပိုင်ဆိုင်သော အခြေခံလွတ်လပ်ခွင့်များနှင့် အကာအကွယ်များ',
          'အစိုးရအရာရှိများကိုသာ ပေးအပ်ထားသောအခွင့်အရေးများ',
          'တိုင်းပြည်တစ်ခုတည်းတွင်သာ သက်ဆိုင်သောစည်းမျဉ်းများ',
          'အလုပ်ဖြင့် ရယူရသော အခွင့်အထူးများ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which document is widely recognized as a global statement of human rights?',
        questionMy:
            'ကမ္ဘာလုံးဆိုင်ရာ လူ့အခွင့်အရေးထုတ်ပြန်ချက်တစ်ခုအဖြစ် ကျယ်ကျယ်ပြန့်ပြန့် အသိအမှတ်ပြုခံရသော စာတမ်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'The Universal Declaration of Human Rights',
          'A national passport',
          'A school report card',
          'A company contract',
        ],
        optionsMy: [
          'ကမ္ဘာ့လူ့အခွင့်အရေး ကြေညာစာတမ်း (Universal Declaration of Human Rights)',
          'နိုင်ငံကူးလက်မှတ်',
          'ကျောင်းအစီရင်ခံစာ',
          'ကုမ္ပဏီစာချုပ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is an example of a basic human right?',
        questionMy:
            'အောက်ပါတို့တွင် အခြေခံလူ့အခွင့်အရေး၏ ဥပမာတစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: [
          'The right to education',
          'The right to own a car',
          'The right to a free vacation',
          'The right to unlimited wealth',
        ],
        optionsMy: [
          'ပညာရေးရရှိခွင့်',
          'ကားပိုင်ဆိုင်ခွင့်',
          'အခမဲ့အားလပ်ရက်ခရီးစဉ်ခံစားခွင့်',
          'အကန့်အသတ်မရှိသောချမ်းသာကြွယ်ဝမှုရခွင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why are human rights considered universal?',
        questionMy:
            'လူ့အခွင့်အရေးများကို ကမ္ဘာလုံးဆိုင်ရာဟု သတ်မှတ်ရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'They apply to every person regardless of nationality, race, or background',
          'They only apply to adults',
          'They only apply to citizens of wealthy countries',
          "They change depending on a person's job",
        ],
        optionsMy: [
          'နိုင်ငံသား၊ လူမျိုး သို့မဟုတ် နောက်ခံမည်သို့ပင်ရှိစေ လူတိုင်းအတွက် သက်ဆိုင်သောကြောင့်',
          'လူကြီးများအတွက်သာ သက်ဆိုင်သောကြောင့်',
          'ချမ်းသာသောနိုင်ငံများ၏ နိုင်ငံသားများအတွက်သာ သက်ဆိုင်သောကြောင့်',
          'လူတစ်ဦး၏အလုပ်ပေါ်မူတည်ပြီး ပြောင်းလဲသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What organization was founded partly to promote and protect human rights worldwide?',
        questionMy:
            'ကမ္ဘာတစ်ဝှမ်း လူ့အခွင့်အရေးများကို မြှင့်တင်ကာကွယ်ရန် တစ်စိတ်တစ်ပိုင်းအနေဖြင့် တည်ထောင်ခဲ့သော အဖွဲ့အစည်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'The United Nations',
          'A local sports club',
          'A private bank',
          'A national airline',
        ],
        optionsMy: [
          'ကုလသမဂ္ဂ',
          'ဒေသန္တရအားကစားကလပ်',
          'ပုဂ္ဂလိကဘဏ်',
          'နိုင်ငံပိုင်လေကြောင်းလိုင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ============================== SECONDARY 3 ==============================
  SecondaryActivityDef(
    id: 'mock-secondary3-algebra-1',
    subject: 'algebra',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Quadratic Equations',
    titleMy: 'စတုရန်းညီမျှခြင်းများ',
    descriptionEn:
        'Solve quadratic equations by factorisation and the quadratic formula.',
    descriptionMy:
        'စတုရန်းညီမျှခြင်းများကို အချက်ခွဲနည်းနှင့် စတုရန်းပုံသေနည်းသုံး၍ ဖြေရှင်းပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn: 'Solve: x² - 5x + 6 = 0. What are the values of x?',
        questionMy: 'ဖြေရှင်းပါ- x² - 5x + 6 = 0။ x ၏တန်ဖိုးများမှာ အဘယ်နည်း။',
        optionsEn: [
          'x = 2 or x = 3',
          'x = -2 or x = -3',
          'x = 1 or x = 6',
          'x = 2 or x = 4',
        ],
        optionsMy: [
          'x = ၂ သို့မဟုတ် x = ၃',
          'x = -၂ သို့မဟုတ် x = -၃',
          'x = ၁ သို့မဟုတ် x = ၆',
          'x = ၂ သို့မဟုတ် x = ၄',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve: x² - 9 = 0',
        questionMy: 'ဖြေရှင်းပါ- x² - 9 = 0',
        optionsEn: [
          'x = 3 or x = -3',
          'x = 9 or x = -9',
          'x = 3 only',
          'x = 6 or x = -6',
        ],
        optionsMy: [
          'x = ၃ သို့မဟုတ် x = -၃',
          'x = ၉ သို့မဟုတ် x = -၉',
          'x = ၃ သာ',
          'x = ၆ သို့မဟုတ် x = -၆',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Use the quadratic formula to solve: x² + 2x - 8 = 0',
        questionMy: 'စတုရန်းပုံသေနည်းသုံး၍ ဖြေရှင်းပါ- x² + 2x - 8 = 0',
        optionsEn: [
          'x = 2 or x = -4',
          'x = 4 or x = -2',
          'x = 2 or x = 4',
          'x = -2 or x = -4',
        ],
        optionsMy: [
          'x = ၂ သို့မဟုတ် x = -၄',
          'x = ၄ သို့မဟုတ် x = -၂',
          'x = ၂ သို့မဟုတ် x = ၄',
          'x = -၂ သို့မဟုတ် x = -၄',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the discriminant of 2x² - 4x + 1 = 0?',
        questionMy:
            '2x² - 4x + 1 = 0 ၏ ခွဲခြားကိန်း (discriminant) မှာ အဘယ်နည်း။',
        optionsEn: ['8', '-8', '16', '24'],
        optionsMy: ['၈', '-၈', '၁၆', '၂၄'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How many real roots does x² + 4x + 4 = 0 have?',
        questionMy:
            'x² + 4x + 4 = 0 တွင် အမှန်အမြစ် (real roots) မည်မျှရှိသနည်း။',
        optionsEn: [
          'One repeated real root',
          'Two distinct real roots',
          'No real roots',
          'Three real roots',
        ],
        optionsMy: [
          'ထပ်တလဲလဲ အမြစ်တစ်ခုတည်း',
          'ကွဲပြားသော အမြစ်နှစ်ခု',
          'အမှန်အမြစ် လုံးဝမရှိပါ',
          'အမြစ်သုံးခု',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-algebra-2',
    subject: 'algebra',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Indices and Surds',
    titleMy: 'ညွှန်ကိန်းများနှင့် အမြစ်ကိန်းများ',
    descriptionEn:
        'Apply the laws of indices and simplify expressions involving surds.',
    descriptionMy:
        'ညွှန်ကိန်းဥပဒေများကို အသုံးချ၍ အမြစ်ကိန်းများပါဝင်သော ဖော်ပြချက်များကို ရိုးရှင်းအောင်ပြုလုပ်ပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn: 'Simplify: x^5 × x^3',
        questionMy: 'ရိုးရှင်းအောင်ပြုလုပ်ပါ- x^5 × x^3',
        optionsEn: ['x^8', 'x^15', 'x^2', '2x^8'],
        optionsMy: ['x^၈', 'x^၁၅', 'x^၂', '၂x^၈'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Simplify: (x^4)^3',
        questionMy: 'ရိုးရှင်းအောင်ပြုလုပ်ပါ- (x^4)^3',
        optionsEn: ['x^12', 'x^7', 'x^64', '3x^4'],
        optionsMy: ['x^၁၂', 'x^၇', 'x^၆၄', '၃x^၄'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Simplify: x^0 (where x ≠ 0)',
        questionMy: 'ရိုးရှင်းအောင်ပြုလုပ်ပါ- x^0 (x ≠ 0 ဖြစ်သောအခါ)',
        optionsEn: ['1', '0', 'x^1', 'Undefined'],
        optionsMy: ['၁', '၀', 'x^၁', 'အဓိပ္ပာယ်မရှိပါ'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Simplify: √50',
        questionMy: 'ရိုးရှင်းအောင်ပြုလုပ်ပါ- √50',
        optionsEn: ['5√2', '2√5', '25√2', '10√2'],
        optionsMy: ['၅√၂', '၂√၅', '၂၅√၂', '၁၀√၂'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Simplify: 2√3 + 5√3',
        questionMy: 'ရိုးရှင်းအောင်ပြုလုပ်ပါ- 2√3 + 5√3',
        optionsEn: ['7√3', '7√6', '10√3', '7√9'],
        optionsMy: ['၇√၃', '၇√၆', '၁၀√၃', '၇√၉'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-algebra-3',
    subject: 'algebra',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Sequences',
    titleMy: 'ဂဏန်းအစဉ်များ',
    descriptionEn:
        'Find terms and rules for arithmetic and geometric sequences.',
    descriptionMy:
        'အဆင့်ညီအစဉ်နှင့် အချိုးညီအစဉ်များ၏ အသုံးအနှုန်းများနှင့် စည်းမျဉ်းများကို ရှာဖွေပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn: 'What is the next term in the sequence: 3, 7, 11, 15, ...?',
        questionMy:
            'ဂဏန်းအစဉ် 3, 7, 11, 15, ... ၏ နောက်ထပ်အသုံးအနှုန်းမှာ အဘယ်နည်း။',
        optionsEn: ['19', '18', '20', '17'],
        optionsMy: ['၁၉', '၁၈', '၂၀', '၁၇'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Find the 10th term of the arithmetic sequence with first term 5 and common difference 3.',
        questionMy:
            'ပထမအသုံးအနှုန်း 5 နှင့် အဆင့်ကွာခြားချက် 3 ရှိသော အဆင့်ညီအစဉ်၏ ၁၀ ခုမြောက်အသုံးအနှုန်းကို ရှာပါ။',
        optionsEn: ['32', '35', '27', '30'],
        optionsMy: ['၃၂', '၃၅', '၂၇', '၃၀'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the next term in the sequence: 2, 6, 18, 54, ...?',
        questionMy:
            'ဂဏန်းအစဉ် 2, 6, 18, 54, ... ၏ နောက်ထပ်အသုံးအနှုန်းမှာ အဘယ်နည်း။',
        optionsEn: ['162', '108', '216', '54'],
        optionsMy: ['၁၆၂', '၁၀၈', '၂၁၆', '၅၄'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'The nth term of a sequence is Tₙ = 4n - 1. What is the 6th term?',
        questionMy:
            'ဂဏန်းအစဉ်တစ်ခု၏ n ခုမြောက်အသုံးအနှုန်းသည် Tₙ = 4n - 1 ဖြစ်သည်။ ၆ ခုမြောက်အသုံးအနှုန်းမှာ အဘယ်နည်း။',
        optionsEn: ['23', '24', '19', '25'],
        optionsMy: ['၂၃', '၂၄', '၁၉', '၂၅'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Is the sequence 5, 10, 20, 40, ... arithmetic or geometric?',
        questionMy:
            'ဂဏန်းအစဉ် 5, 10, 20, 40, ... သည် အဆင့်ညီအစဉ် ဖြစ်သလား သို့မဟုတ် အချိုးညီအစဉ် ဖြစ်သလား။',
        optionsEn: [
          'Geometric (common ratio 2)',
          'Arithmetic (common difference 5)',
          'Arithmetic (common difference 10)',
          'Neither',
        ],
        optionsMy: [
          'အချိုးညီအစဉ် (အချိုးကွာခြားချက် ၂)',
          'အဆင့်ညီအစဉ် (အဆင့်ကွာခြားချက် ၅)',
          'အဆင့်ညီအစဉ် (အဆင့်ကွာခြားချက် ၁၀)',
          'မည်သည့်အမျိုးအစားမျှ မဟုတ်ပါ',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  SecondaryActivityDef(
    id: 'mock-secondary3-physics-1',
    subject: 'physics',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Electricity: Ohm\'s Law and Circuits',
    titleMy: 'လျှပ်စစ်- အုမ်၏ဥပဒေနှင့် ဆားကစ်များ',
    descriptionEn:
        'Apply Ohm\'s law to calculate current, voltage and resistance in series and parallel circuits.',
    descriptionMy:
        'ဆီးရီးနှင့် ပါရာလယ် ဆားကစ်များတွင် လျှပ်စီး၊ ဗို့အားနှင့် ခုခံအားကို တွက်ချက်ရန် အုမ်၏ဥပဒေကို အသုံးချပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn: 'According to Ohm\'s law, what is the formula for voltage?',
        questionMy: 'အုမ်၏ဥပဒေအရ ဗို့အား၏ ညီမျှခြင်းပုံသေနည်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Voltage = Current × Resistance',
          'Voltage = Current ÷ Resistance',
          'Voltage = Current × Time',
          'Voltage = Power × Resistance',
        ],
        optionsMy: [
          'ဗို့အား = လျှပ်စီး × ခုခံအား',
          'ဗို့အား = လျှပ်စီး ÷ ခုခံအား',
          'ဗို့အား = လျှပ်စီး × အချိန်',
          'ဗို့အား = ပါဝါ × ခုခံအား',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A circuit has a voltage of 12 V and resistance of 4 Ω. What is the current?',
        questionMy:
            'ဆားကစ်တစ်ခုတွင် ဗို့အား 12 V နှင့် ခုခံအား 4 Ω ရှိသည်။ လျှပ်စီးမှာ မည်မျှနည်း။',
        optionsEn: ['3 A', '8 A', '16 A', '48 A'],
        optionsMy: ['3 A', '8 A', '16 A', '48 A'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a series circuit, what happens to the current at every point?',
        questionMy:
            'ဆီးရီးဆားကစ်တစ်ခုတွင် နေရာတိုင်း၌ လျှပ်စီးသည် မည်သို့ဖြစ်သနည်း။',
        optionsEn: [
          'It stays the same throughout the circuit',
          'It increases after each resistor',
          'It decreases to zero at the end',
          'It splits equally between components',
        ],
        optionsMy: [
          'ဆားကစ်တစ်လျှောက်လုံး တူညီနေသည်',
          'ခုခံအားတစ်ခုစီပြီးနောက် တိုးလာသည်',
          'အဆုံးတွင် သုညအထိ လျော့ကျသည်',
          'အစိတ်အပိုင်းများကြား တညီတညာတည်း ခွဲသွားသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is a key difference between series and parallel circuits?',
        questionMy:
            'ဆီးရီးနှင့် ပါရာလယ်ဆားကစ်များ၏ အဓိကကွာခြားချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Parallel circuits provide separate paths for current, so if one branch breaks the others still work',
          'Series circuits provide separate paths for current, so if one branch breaks the others still work',
          'Parallel circuits always have higher total resistance than series circuits',
          'Series circuits always have lower voltage across the whole circuit',
        ],
        optionsMy: [
          'ပါရာလယ်ဆားကစ်များတွင် လျှပ်စီးအတွက် လမ်းကြောင်းသီးခြားစီရှိသဖြင့် တစ်ခုပြတ်သွားလျှင်ပင် ကျန်တစ်ဝက်များ ဆက်အလုပ်လုပ်နိုင်သည်',
          'ဆီးရီးဆားကစ်များတွင် လျှပ်စီးအတွက် လမ်းကြောင်းသီးခြားစီရှိသဖြင့် တစ်ခုပြတ်သွားလျှင်ပင် ကျန်တစ်ဝက်များ ဆက်အလုပ်လုပ်နိုင်သည်',
          'ပါရာလယ်ဆားကစ်များသည် ဆီးရီးဆားကစ်များထက် စုစုပေါင်းခုခံအား အမြဲပိုများသည်',
          'ဆီးရီးဆားကစ်များသည် ဆားကစ်တစ်ခုလုံးတွင် ဗို့အားအမြဲနည်းသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Two 3 Ω resistors are connected in series. What is the total resistance?',
        questionMy:
            '3 Ω ခုခံအားနှစ်ခုကို ဆီးရီးချိတ်ဆက်ထားသည်။ စုစုပေါင်းခုခံအားမှာ မည်မျှနည်း။',
        optionsEn: ['6 Ω', '1.5 Ω', '3 Ω', '9 Ω'],
        optionsMy: ['6 Ω', '1.5 Ω', '3 Ω', '9 Ω'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-physics-2',
    subject: 'physics',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Magnetism',
    titleMy: 'သံလိုက်ဓာတ်',
    descriptionEn:
        'Understand magnetic fields, electromagnets and how electric current creates magnetism.',
    descriptionMy:
        'သံလိုက်စက်ကွင်း၊ လျှပ်စစ်သံလိုက်များနှင့် လျှပ်စီးက သံလိုက်ဓာတ်ကို မည်သို့ဖန်တီးသည်ကို နားလည်ပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn:
            'Where are magnetic field lines closest together around a bar magnet?',
        questionMy:
            'တုတ်သံလိုက်တစ်ခု၏ ပတ်လည်တွင် သံလိုက်စက်ကွင်းလိုင်းများ အနီးဆုံးစုစည်းရာနေရာမှာ အဘယ်နေရာနည်း။',
        optionsEn: [
          'At the poles, where the field is strongest',
          'At the exact centre of the magnet',
          'Halfway between the poles',
          'Nowhere; the lines are always evenly spaced',
        ],
        optionsMy: [
          'သံလိုက်ဓာတ်အားအားအကြီးဆုံးဖြစ်သော ပိုလ်များတွင်',
          'သံလိုက်၏ အလယ်ဗဟိုတိုက်ရိုက်တွင်',
          'ပိုလ်များအကြား တစ်ဝက်နေရာတွင်',
          'မည်သည့်နေရာမျှမဟုတ်ပါ၊ လိုင်းများသည် အမြဲတန်းတူညီစွာ ကွာဝေးသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What happens when a current flows through a straight wire?',
        questionMy:
            'ဖြောင့်တန်းသော ကြေးနန်းတစ်ခုကို လျှပ်စီးစီးဆင်းသောအခါ မည်သို့ဖြစ်သနည်း။',
        optionsEn: [
          'A circular magnetic field forms around the wire',
          'The wire becomes permanently magnetized',
          'No magnetic effect is produced',
          'The wire loses its electrical resistance',
        ],
        optionsMy: [
          'ကြေးနန်းပတ်လည်တွင် စက်ဝိုင်းပုံသံလိုက်စက်ကွင်း ဖြစ်ပေါ်လာသည်',
          'ကြေးနန်းသည် အမြဲတမ်းသံလိုက်ဓာတ်ရှိလာသည်',
          'သံလိုက်ဓာတ်သက်ရောက်မှု လုံးဝမရှိပါ',
          'ကြေးနန်း၏ လျှပ်စစ်ခုခံအား ပျောက်ဆုံးသွားသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How can the strength of an electromagnet be increased?',
        questionMy: 'လျှပ်စစ်သံလိုက်တစ်ခု၏ အားကို မည်သို့တိုးမြှင့်နိုင်သနည်း။',
        optionsEn: [
          'By increasing the current or adding more coil turns around an iron core',
          'By decreasing the current flowing through the coil',
          'By removing the iron core from the coil',
          'By using a longer, thinner wire with fewer turns',
        ],
        optionsMy: [
          'လျှပ်စီးကိုတိုးခြင်း သို့မဟုတ် သံသတ္တုတွင် ကြေးနန်းအလှည့်ပိုများအောင် ပတ်ခြင်းဖြင့်',
          'ကွိုင်ထဲသို့စီးဆင်းသော လျှပ်စီးကို လျော့ချခြင်းဖြင့်',
          'ကွိုင်မှ သံသတ္တုအကြောင်းကို ဖယ်ရှားခြင်းဖြင့်',
          'အလှည့်နည်းသော ရှည်လျားပါးလွှာသည့် ကြေးနန်းကို သုံးခြင်းဖြင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the process of generating an electric current by moving a wire through a magnetic field called?',
        questionMy:
            'ကြေးနန်းကို သံလိုက်စက်ကွင်းအတွင်း ရွေ့လျားစေခြင်းဖြင့် လျှပ်စီးထုတ်လုပ်ခြင်းလုပ်ငန်းစဉ်ကို မည်သို့ခေါ်သနည်း။',
        optionsEn: [
          'Electromagnetic induction',
          'Magnetic saturation',
          'Electric conduction',
          'Static discharge',
        ],
        optionsMy: [
          'လျှပ်စစ်သံလိုက်ဒြပ်သွင်းမှု (electromagnetic induction)',
          'သံလိုက်ရောင့်ရဲမှု',
          'လျှပ်စစ်ဖြတ်သန်းမှု',
          'ငြိမ်ရေစီးဓာတ်လွှတ်ချခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A simple electric motor converts electrical energy into which form of energy?',
        questionMy:
            'ရိုးရှင်းသောလျှပ်စစ်မော်တာသည် လျှပ်စစ်စွမ်းအားကို မည်သည့်စွမ်းအားအဖြစ်သို့ ပြောင်းလဲပေးသနည်း။',
        optionsEn: [
          'Kinetic (movement) energy',
          'Chemical energy',
          'Light energy',
          'Nuclear energy',
        ],
        optionsMy: [
          'ရွေ့လျားမှုစွမ်းအား (kinetic energy)',
          'ဓာတုဗေဒစွမ်းအား',
          'အလင်းစွမ်းအား',
          'နျူကလီးယားစွမ်းအား',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-physics-3',
    subject: 'physics',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Energy Resources',
    titleMy: 'စွမ်းအားရင်းမြစ်များ',
    descriptionEn:
        'Compare renewable and non-renewable energy resources and their advantages and disadvantages.',
    descriptionMy:
        'ပြန်လည်ပြည့်ဖြိုးနိုင်သောနှင့် ပြန်လည်ပြည့်ဖြိုးမနိုင်သော စွမ်းအားရင်းမြစ်များနှင့် ၎င်းတို့၏ အားသာချက်၊ အားနည်းချက်များကို နှိုင်းယှဉ်ပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn: 'Which of these is a renewable energy resource?',
        questionMy:
            'အောက်ပါတို့တွင် ပြန်လည်ပြည့်ဖြိုးနိုင်သော စွမ်းအားရင်းမြစ်မှာ အဘယ်နည်း။',
        optionsEn: ['Solar energy', 'Coal', 'Natural gas', 'Crude oil'],
        optionsMy: [
          'နေရောင်ခြည်စွမ်းအား',
          'ကျောက်မီးသွေး',
          'သဘာဝဓာတ်ငွေ့',
          'ရေနံ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why are fossil fuels described as non-renewable?',
        questionMy:
            'ရုပ်ကြွင်းလောင်စာများကို ပြန်လည်ပြည့်ဖြိုးမနိုင်ဟု အဘယ်ကြောင့်ဖော်ပြသနည်း။',
        optionsEn: [
          'They take millions of years to form and are being used up faster than they form',
          'They produce no waste products when burned',
          'They can be manufactured instantly in a laboratory',
          'They are found in unlimited amounts everywhere on Earth',
        ],
        optionsMy: [
          'ဖြစ်ပေါ်ရန် နှစ်သန်းချီကြာမြင့်ပြီး ဖြစ်ပေါ်နှုန်းထက် သုံးစွဲနှုန်းက ပိုမြန်နေသောကြောင့်',
          'မီးရှို့သောအခါ စွန့်ပစ်ပစ္စည်းလုံးဝမထွက်သောကြောင့်',
          'ဓာတ်ခွဲခန်းတွင် ချက်ချင်းထုတ်လုပ်နိုင်သောကြောင့်',
          'ကမ္ဘာပေါ်တွင် နေရာတိုင်း အကန့်အသတ်မရှိတွေ့ရသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is a major advantage of wind power over fossil fuel power stations?',
        questionMy:
            'လေအားလျှပ်စစ်သည် ရုပ်ကြွင်းလောင်စာသုံး လျှပ်စစ်ဓာတ်အားပေးစက်ရုံများထက် ပိုသာသောအားသာချက်တစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: [
          'It produces no greenhouse gas emissions while generating electricity',
          'It generates a completely steady, uninterrupted supply at all times',
          'It requires no maintenance once built',
          'It works equally well regardless of wind speed',
        ],
        optionsMy: [
          'လျှပ်စစ်ထုတ်လုပ်နေစဉ် အပူချိန်ကျစိမ့်ဓာတ်ငွေ့ လုံးဝထုတ်လွှင့်မှုမရှိသောကြောင့်',
          'အချိန်တိုင်း အနှောင့်အယှက်လုံးဝမရှိဘဲ တည်ငြိမ်စွာထုတ်လုပ်ပေးသောကြောင့်',
          'ဆောက်လုပ်ပြီးနောက် ပြုပြင်ထိန်းသိမ်းစရာ လုံးဝမလိုအပ်တော့သောကြောင့်',
          'လေတိုက်နှုန်း မည်သို့ပင်ရှိစေ ညီမျှစွာ အလုပ်လုပ်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is a key disadvantage shared by solar and wind power?',
        questionMy:
            'နေရောင်ခြည်စွမ်းအားနှင့် လေအားစွမ်းအားနှစ်ခုစလုံးတွင် တွေ့ရသော အဓိကအားနည်းချက်တစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: [
          'Their output depends on weather conditions and is not always available',
          'They release large amounts of carbon dioxide during operation',
          'They cannot be used to generate electricity at all',
          'They require burning fuel continuously to work',
        ],
        optionsMy: [
          'ထုတ်လုပ်နိုင်မှုသည် ရာသီဥတုအခြေအနေပေါ် မူတည်ပြီး အမြဲမရရှိနိုင်သောကြောင့်',
          'လုပ်ငန်းလည်ပတ်နေစဉ် ကာဗွန်ဒိုင်ောက်ဆိုက် များစွာထုတ်လွှင့်သောကြောင့်',
          'လျှပ်စစ်ထုတ်လုပ်ရန် လုံးဝအသုံးမပြုနိုင်သောကြောင့်',
          'အလုပ်လုပ်ရန် လောင်စာကို အဆက်မပြတ် မီးရှို့ရသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a hydroelectric power station, what form of energy is directly converted into electrical energy?',
        questionMy:
            'ရေအားလျှပ်စစ်ဓာတ်အားပေးစက်ရုံတစ်ခုတွင် မည်သည့်စွမ်းအားကို လျှပ်စစ်စွမ်းအားအဖြစ် တိုက်ရိုက်ပြောင်းလဲပေးသနည်း။',
        optionsEn: [
          'The kinetic energy of falling or flowing water',
          'The chemical energy stored in water',
          'The nuclear energy released from water molecules',
          'The sound energy of flowing water',
        ],
        optionsMy: [
          'ကျဆင်းနေသော သို့မဟုတ် စီးဆင်းနေသောရေ၏ ရွေ့လျားမှုစွမ်းအား',
          'ရေထဲတွင် သိုလှောင်ထားသော ဓာတုဗေဒစွမ်းအား',
          'ရေဒြပ်ကျည်များမှ ထွက်ရှိသော နျူကလီးယားစွမ်းအား',
          'စီးဆင်းနေသောရေ၏ အသံစွမ်းအား',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-chemistry-1',
    subject: 'chemistry',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Bonding: Ionic, Covalent, and Metallic',
    titleMy: 'ချည်နှောင်မှု - အိုင်းယွန်းဆက်၊ ကိုဗာလင့်ဆက်နှင့် သတ္တုဆက်',
    descriptionEn:
        'Understand how ionic, covalent, and metallic bonds form and how they explain the properties of substances.',
    descriptionMy:
        'အိုင်းယွန်းဆက်၊ ကိုဗာလင့်ဆက်နှင့် သတ္တုဆက်များ မည်သို့ဖွဲ့စည်းသည်ကို နားလည်ပြီး ပစ္စည်းများ၏ဂုဏ်သတ္တိများကို ရှင်းပြနိုင်စေရန် လေ့လာပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn:
            'How does an ionic bond form between a metal and a non-metal?',
        questionMy:
            'သတ္တုနှင့် အသတ္တုတစ်ခုအကြား အိုင်းယွန်းဆက် မည်သို့ဖွဲ့စည်းသနည်း။',
        optionsEn: [
          'The metal atom transfers electrons to the non-metal atom, forming oppositely charged ions',
          'The two atoms share a pair of electrons equally',
          'The metal atom gains protons from the non-metal atom',
          'Both atoms lose electrons at the same time',
        ],
        optionsMy: [
          'သတ္တုအက်တမ်သည် အီလက်ထရွန်များကို အသတ္တုအက်တမ်သို့ လွှဲပြောင်းပေးပြီး ဆန့်ကျင်ဘက်အားသုံးသော အိုင်းယွန်းများ ဖြစ်ပေါ်လာသည်',
          'အက်တမ်နှစ်ခုသည် အီလက်ထရွန်တစ်စုံကို တန်းတူမျှမျှ ဝေမျှသုံးစွဲကြသည်',
          'သတ္တုအက်တမ်သည် အသတ္တုအက်တမ်ထံမှ ပရိုတွန်များ ရရှိသည်',
          'အက်တမ်နှစ်ခုစလုံး တစ်ချိန်တည်း အီလက်ထရွန်များ ဆုံးရှုံးကြသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What holds the atoms together in a covalent bond?',
        questionMy:
            'ကိုဗာလင့်ဆက်တစ်ခုတွင် အက်တမ်များကို ဆက်စပ်ထားစေသောအရာမှာ အဘယ်နည်း။',
        optionsEn: [
          'A shared pair of electrons between two non-metal atoms',
          'The complete transfer of electrons from one atom to another',
          'A strong attraction between a metal ion and free electrons',
          'The overlapping of atomic nuclei',
        ],
        optionsMy: [
          'အသတ္တုအက်တမ်နှစ်ခုကြား ဝေမျှသုံးစွဲသော အီလက်ထရွန်တစ်စုံ',
          'အက်တမ်တစ်ခုမှ နောက်တစ်ခုသို့ အီလက်ထရွန်များကို အပြည့်အဝ လွှဲပြောင်းခြင်း',
          'သတ္တုအိုင်းယွန်းနှင့် လွတ်လပ်အီလက်ထရွန်များကြား ပြင်းထန်သောဆွဲအား',
          'နျူကလိယများ တစ်ခုနှင့်တစ်ခု ထပ်နေခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why can metals conduct electricity in both solid and liquid states?',
        questionMy:
            'သတ္တုများသည် အစိုင်အခဲအခြေအနေနှင့် အရည်အခြေအနေနှစ်ခုစလုံးတွင် လျှပ်စစ်လျှပ်ကူးနိုင်ခြင်းမှာ အဘယ့်ကြောင့်နည်း။',
        optionsEn: [
          'They contain a sea of delocalized electrons that can move freely throughout the structure',
          'They contain ions that are fixed rigidly in place',
          'They share electrons equally between two atoms only',
          'They have no charged particles at all',
        ],
        optionsMy: [
          'ဖွဲ့စည်းပုံတစ်ခုလုံးတွင် လွတ်လပ်စွာ ရွေ့လျားနိုင်သော ဒီလိုကယ်လိုက်ဇ် အီလက်ထရွန်ပင်လယ် ပါဝင်သောကြောင့်',
          'ခိုင်မာစွာ တည်နေသော အိုင်းယွန်းများ ပါဝင်သောကြောင့်',
          'အက်တမ်နှစ်ခုကြားသာ အီလက်ထရွန်များ တန်းတူဝေမျှသုံးစွဲသောကြောင့်',
          'အားသုံးအနုမြူများ လုံးဝ မပါဝင်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why do ionic compounds have high melting points?',
        questionMy:
            'အိုင်းယွန်းဒြပ်ပေါင်းများသည် အရည်ပျော်မှတ် မြင့်မားခြင်းမှာ အဘယ့်ကြောင့်နည်း။',
        optionsEn: [
          'Strong electrostatic forces of attraction between oppositely charged ions require a lot of energy to break',
          'They contain only weak forces between molecules',
          'Their atoms are held together by shared electron pairs',
          'They have low density and light atoms',
        ],
        optionsMy: [
          'ဆန့်ကျင်ဘက်အားသုံးသော အိုင်းယွန်းများကြား ပြင်းထန်သော လျှပ်စစ်ဆွဲအားများကို ချိုးဖျက်ရန် စွမ်းအင်အများကြီးလိုအပ်သောကြောင့်',
          'မော်လီကျူးများကြား အားနည်းသောဆွဲအားများသာ ပါဝင်သောကြောင့်',
          'အက်တမ်များကို ဝေမျှသုံးစွဲသော အီလက်ထရွန်အစုံများဖြင့် ဆက်စပ်ထားသောကြောင့်',
          'သိပ်သည်းဆနည်းပြီး ပေါ့ပါးသော အက်တမ်များ ပါဝင်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which property is typical of simple covalent (molecular) substances?',
        questionMy:
            'ရိုးရှင်းသော ကိုဗာလင့် (မော်လီကျူး) ပစ္စည်းများ၏ ထူးခြားသောဂုဏ်သတ္တိမှာ အဘယ်နည်း။',
        optionsEn: [
          'Low melting and boiling points because only weak forces exist between molecules',
          'Very high melting points because ions are strongly attracted',
          'Excellent electrical conductivity in the solid state',
          'A giant lattice structure with millions of connected atoms',
        ],
        optionsMy: [
          'မော်လီကျူးများကြား အားနည်းသောဆွဲအားများသာ ရှိသောကြောင့် အရည်ပျော်မှတ်နှင့် ဆူပွက်မှတ် နိမ့်ခြင်း',
          'အိုင်းယွန်းများ ပြင်းထန်စွာ ဆွဲငင်ထားသောကြောင့် အရည်ပျော်မှတ် အလွန်မြင့်ခြင်း',
          'အစိုင်အခဲအခြေအနေတွင် လျှပ်စစ်လျှပ်ကူးမှု ထူးချွန်ခြင်း',
          'ဆက်စပ်နေသော အက်တမ်သန်းချီပါဝင်သည့် ကြီးမားသောလက်တစ်(ဓာတ်ဖွဲ့စည်းပုံ) ရှိခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-chemistry-2',
    subject: 'chemistry',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Rates of Reaction',
    titleMy: 'တုံ့ပြန်မှုနှုန်းများ',
    descriptionEn:
        'Explore the factors that affect how fast a chemical reaction happens and how collision theory explains them.',
    descriptionMy:
        'ဓာတုတုံ့ပြန်မှုတစ်ခု မည်မျှမြန်ဆန်စွာဖြစ်ပေါ်သည်ကို သက်ရောက်စေသော အချက်များနှင့် ပွတ်တိုက်မှုသီအိုရီက ၎င်းတို့ကို မည်သို့ရှင်းပြသည်ကို လေ့လာပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn:
            'According to collision theory, what must happen for a chemical reaction to occur?',
        questionMy:
            'ပွတ်တိုက်မှုသီအိုရီအရ ဓာတုတုံ့ပြန်မှုတစ်ခု ဖြစ်ပေါ်ရန်အတွက် မည်သည့်အရာဖြစ်ပေါ်ရမည်နည်း။',
        optionsEn: [
          'Particles must collide with enough energy and the correct orientation',
          'Particles must simply be present in the same container',
          'Particles must be cooled to a very low temperature',
          'Particles must lose all of their kinetic energy',
        ],
        optionsMy: [
          'အနုမြူများသည် လုံလောက်သောစွမ်းအင်နှင့် မှန်ကန်သောတည်နေရာဖြင့် ပွတ်တိုက်ကြရမည်',
          'အနုမြူများသည် ဘူးတစ်ခုတည်းအတွင်း ရှိနေရုံသာလိုအပ်သည်',
          'အနုမြူများကို အလွန်နိမ့်သောအပူချိန်သို့ အအေးခံရမည်',
          'အနုမြူများသည် ၎င်းတို့၏ ရွေ့လျားစွမ်းအင်အားလုံးကို ဆုံးရှုံးရမည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why does increasing the temperature speed up a reaction?',
        questionMy:
            'အပူချိန်တိုးလာခြင်းသည် တုံ့ပြန်မှုကို မြန်ဆန်စေခြင်းမှာ အဘယ့်ကြောင့်နည်း။',
        optionsEn: [
          'Particles move faster and collide more frequently with more energy',
          'Particles become larger and heavier',
          'Particles lose their electric charge',
          'Particles stop moving completely',
        ],
        optionsMy: [
          'အနုမြူများ ပိုမြန်စွာရွေ့လျားပြီး ပိုများသောစွမ်းအင်ဖြင့် ပိုမိုမကြာခဏ ပွတ်တိုက်ကြသောကြောင့်',
          'အနုမြူများ ပိုကြီးမားပြီး ပိုလေးလံလာသောကြောင့်',
          'အနုမြူများ ၎င်းတို့၏ လျှပ်စစ်အားကို ဆုံးရှုံးသောကြောင့်',
          'အနုမြူများ လုံးဝရွေ့လျားမှုရပ်တန့်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'How does increasing the surface area of a solid reactant affect reaction rate?',
        questionMy:
            'အစိုင်အခဲတုံ့ပြန်ပစ္စည်း၏ မျက်နှာပြင်ဧရိယာ တိုးလာခြင်းသည် တုံ့ပြန်မှုနှုန်းကို မည်သို့သက်ရောက်စေသနည်း။',
        optionsEn: [
          'It increases the rate because more particles are exposed for collisions',
          'It decreases the rate because fewer particles can react',
          'It has no effect on the rate at all',
          'It stops the reaction from happening',
        ],
        optionsMy: [
          'ပွတ်တိုက်မှုအတွက် အနုမြူများ ပိုမိုထင်ရှားလာသောကြောင့် နှုန်းကို တိုးစေသည်',
          'အနုမြူနည်းပါးသာ တုံ့ပြန်နိုင်သောကြောင့် နှုန်းကို လျော့စေသည်',
          'နှုန်းကို လုံးဝမသက်ရောက်စေချေ',
          'တုံ့ပြန်မှု လုံးဝမဖြစ်ပေါ်စေတော့ချေ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the role of a catalyst in a chemical reaction?',
        questionMy:
            'ဓာတုတုံ့ပြန်မှုတစ်ခုတွင် ကက်တလစ်(အရှိန်မြှင့်ပစ္စည်း)၏ အခန်းကဏ္ဍမှာ အဘယ်နည်း။',
        optionsEn: [
          'It speeds up the reaction by lowering the activation energy without being used up',
          'It is permanently consumed to form the products',
          'It slows down the reaction to make it safer',
          'It changes the identity of the products formed',
        ],
        optionsMy: [
          'ကုန်ကျစားသုံးမှုမရှိဘဲ အစပျိုးစွမ်းအင်ကို လျှော့ချပေးခြင်းဖြင့် တုံ့ပြန်မှုကို မြန်ဆန်စေသည်',
          'ရလဒ်ပစ္စည်းများ ဖြစ်ပေါ်စေရန် အပြီးအပိုင် စားသုံးခံရသည်',
          'ပိုမိုလုံခြုံစေရန် တုံ့ပြန်မှုကို နှေးကွေးစေသည်',
          'ဖြစ်ပေါ်လာသော ရလဒ်ပစ္စည်းများ၏ သဘောသဘာဝကို ပြောင်းလဲစေသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A gas is produced when a reaction takes place in a flask on a mass balance. Why does the reading on the balance decrease over time?',
        questionMy:
            'ဓာတ်ချိန်ခွင်ပေါ်ရှိ ပုလင်းတစ်ခုအတွင်း တုံ့ပြန်မှုဖြစ်ပေါ်စဉ် ဓာတ်ငွေ့ထွက်ပေါ်သည်။ ချိန်ခွင်ပေါ်ရှိ ကိန်းဂဏန်းသည် အချိန်ကြာလာသည်နှင့်အမျှ အဘယ့်ကြောင့် လျော့ကျသွားသနည်း။',
        optionsEn: [
          'The gas produced escapes into the air, reducing the total mass remaining in the flask',
          'The reactants become heavier as the reaction proceeds',
          'Water evaporates from the balance itself',
          'The flask loses electrons during the reaction',
        ],
        optionsMy: [
          'ထွက်ပေါ်လာသော ဓာတ်ငွေ့သည် လေထုထဲသို့ ထွက်ပြေးသွားပြီး ပုလင်းအတွင်းကျန်ရှိသည့် စုစုပေါင်းအလေးချိန် လျော့ကျစေသောကြောင့်',
          'တုံ့ပြန်မှု ဆက်လက်ဖြစ်ပေါ်နေစဉ် တုံ့ပြန်ပစ္စည်းများ ပိုလေးလံလာသောကြောင့်',
          'ချိန်ခွင်ကိုယ်တိုင်မှ ရေများ အငွေ့ပျံသွားသောကြောင့်',
          'တုံ့ပြန်မှုအတွင်း ပုလင်းသည် အီလက်ထရွန်များ ဆုံးရှုံးသွားသောကြောင့်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-chemistry-3',
    subject: 'chemistry',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Energetics: Exothermic and Endothermic Reactions',
    titleMy: 'စွမ်းအင်ဗေဒ - အပူထုတ်တုံ့ပြန်မှုနှင့် အပူစုတ်တုံ့ပြန်မှုများ',
    descriptionEn:
        'Understand how energy is transferred during chemical reactions and how to interpret reaction profile diagrams.',
    descriptionMy:
        'ဓာတုတုံ့ပြန်မှုများအတွင်း စွမ်းအင် မည်သို့လွှဲပြောင်းသည်ကိုနှင့် တုံ့ပြန်မှုပရိုဖိုင်းပုံများကို မည်သို့ဖွင့်ဆိုရမည်ကို နားလည်ပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn: 'What happens to energy in an exothermic reaction?',
        questionMy:
            'အပူထုတ်တုံ့ပြန်မှုတစ်ခုတွင် စွမ်းအင်ကို မည်သို့ဖြစ်ပျက်သနည်း။',
        optionsEn: [
          'Energy is transferred to the surroundings, so the temperature increases',
          'Energy is taken in from the surroundings, so the temperature decreases',
          'Energy remains completely unchanged throughout',
          'Energy is destroyed and disappears entirely',
        ],
        optionsMy: [
          'စွမ်းအင်ကို ပတ်ဝန်းကျင်သို့ လွှဲပြောင်းပေးသောကြောင့် အပူချိန် မြင့်တက်လာသည်',
          'ပတ်ဝန်းကျင်မှ စွမ်းအင်ကို စုပ်ယူသောကြောင့် အပူချိန် ကျဆင်းသွားသည်',
          'စွမ်းအင်သည် တစ်လျှောက်လုံး လုံးဝမပြောင်းလဲဘဲ ကျန်ရှိနေသည်',
          'စွမ်းအင်ကို လုံးဝဖျက်ဆီးပစ်လိုက်ပြီး ပျောက်ကွယ်သွားသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of these is an example of an endothermic process?',
        questionMy:
            'အောက်ပါတို့တွင် အပူစုတ်တုံ့ပြန်မှုလုပ်ငန်းစဉ်၏ ဥပမာမှာ အဘယ်နည်း။',
        optionsEn: [
          'Dissolving certain salts, such as ammonium nitrate, in water',
          'Burning natural gas in a stove',
          'A firework exploding',
          'Combustion of petrol in a car engine',
        ],
        optionsMy: [
          'အမိုနီယမ်နိုက်ထရိတ်ကဲ့သို့သော ဆားအချို့ကို ရေထဲတွင် ပျော်ဝင်စေခြင်း',
          'မီးဖိုတစ်ခုတွင် သဘာဝဓာတ်ငွေ့ မီးရှို့ခြင်း',
          'မီးရှူးမီးပန်း ပေါက်ကွဲခြင်း',
          'ကားအင်ဂျင်တစ်ခုအတွင်း ဓာတ်ဆီ လောင်ကျွမ်းခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a reaction profile diagram, what does activation energy represent?',
        questionMy:
            'တုံ့ပြန်မှုပရိုဖိုင်းပုံတစ်ခုတွင် အစပျိုးစွမ်းအင်သည် မည်သည့်အရာကို ကိုယ်စားပြုသနည်း။',
        optionsEn: [
          'The minimum energy needed for reactant particles to react successfully',
          'The total energy released to the surroundings',
          'The difference in mass between reactants and products',
          'The temperature at which the reaction stops',
        ],
        optionsMy: [
          'တုံ့ပြန်ပစ္စည်းအနုမြူများ အောင်မြင်စွာ တုံ့ပြန်ရန်အတွက် လိုအပ်သော အနည်းဆုံးစွမ်းအင်',
          'ပတ်ဝန်းကျင်သို့ လွှတ်ထုတ်လိုက်သော စုစုပေါင်းစွမ်းအင်',
          'တုံ့ပြန်ပစ္စည်းများနှင့် ရလဒ်ပစ္စည်းများကြား အလေးချိန်ကွာခြားချက်',
          'တုံ့ပြန်မှု ရပ်တန့်သွားသော အပူချိန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Bond breaking requires energy to be absorbed. What happens during bond formation?',
        questionMy:
            'ဓာတုချည်နှောင်မှုပြတ်ရန်အတွက် စွမ်းအင်စုပ်ယူရန် လိုအပ်သည်။ ချည်နှောင်မှုအသစ်ဖွဲ့စည်းစဉ် မည်သည့်အရာဖြစ်ပျက်သနည်း။',
        optionsEn: [
          'Energy is released as new bonds form between atoms',
          'Energy is absorbed as new bonds form between atoms',
          'No energy change occurs when bonds form',
          'Mass is destroyed when bonds form',
        ],
        optionsMy: [
          'အက်တမ်များကြား ချည်နှောင်မှုအသစ်များ ဖွဲ့စည်းစဉ် စွမ်းအင်ကို လွှတ်ထုတ်သည်',
          'အက်တမ်များကြား ချည်နှောင်မှုအသစ်များ ဖွဲ့စည်းစဉ် စွမ်းအင်ကို စုပ်ယူသည်',
          'ချည်နှောင်မှုများ ဖွဲ့စည်းသည့်အခါ စွမ်းအင်ပြောင်းလဲမှု လုံးဝမရှိချေ',
          'ချည်နှောင်မှုများ ဖွဲ့စည်းသည့်အခါ အလေးချိန် ပျက်စီးသွားသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If the energy released when new bonds form is greater than the energy absorbed to break old bonds, what type of reaction is this?',
        questionMy:
            'ချည်နှောင်မှုအသစ်များဖွဲ့စည်းစဉ် လွှတ်ထုတ်သောစွမ်းအင်သည် ချည်နှောင်မှုဟောင်းများပြတ်ရန် စုပ်ယူသောစွမ်းအင်ထက် ပိုများနေပါက ၎င်းသည် မည်သည့်တုံ့ပြန်မှုအမျိုးအစားနည်း။',
        optionsEn: [
          'An exothermic reaction',
          'An endothermic reaction',
          'A non-reaction with no energy change',
          'A nuclear reaction only',
        ],
        optionsMy: [
          'အပူထုတ်တုံ့ပြန်မှု',
          'အပူစုတ်တုံ့ပြန်မှု',
          'စွမ်းအင်ပြောင်းလဲမှုမရှိသော တုံ့ပြန်မှုမဟုတ်သောအရာ',
          'နျူကလီးယားတုံ့ပြန်မှုသာ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-biology-1',
    subject: 'biology',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Genetics and Inheritance',
    titleMy: 'မျိုးရိုးဗီဇနှင့် မျိုးရိုးလက္ခဏာ ကူးစက်ခြင်း',
    descriptionEn:
        'Explore how genes, alleles, and chromosomes control the inheritance of characteristics.',
    descriptionMy:
        'ဗီဇများ၊ အယ်လီးများနှင့် ခရိုမိုဆုမ်းများသည် လက္ခဏာများ မျိုးရိုးလိုက်ခြင်းကို မည်သို့ထိန်းချုပ်သည်ကို လေ့လာပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn: 'What is a gene?',
        questionMy: 'ဗီဇ (gene) ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A section of DNA that codes for a particular characteristic',
          'A type of cell found only in the liver',
          'The outer membrane of a chromosome',
          'A hormone that controls growth',
        ],
        optionsMy: [
          'တစ်ဦးချင်းလက္ခဏာအတွက် ကုဒ်ဖွဲ့ပေးသော DNA အပိုင်း',
          'အသည်းတွင်သာတွေ့ရသော ဆဲလ်အမျိုးအစား',
          'ခရိုမိုဆုမ်း၏ အပြင်အမြှေး',
          'ကြီးထွားမှုကို ထိန်းချုပ်သော ဟော်မုန်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is an allele?',
        questionMy: 'အယ်လီး (allele) ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A different version of the same gene',
          'A cell that has no nucleus',
          'The process of cell division',
          'A chromosome found only in males',
        ],
        optionsMy: [
          'တူညီသောဗီဇ၏ မတူညီသောပုံစံတစ်ခု',
          'နျူကလိယမ်မပါသောဆဲလ်',
          'ဆဲလ်ကွဲခြင်း လုပ်ငန်းစဉ်',
          'အမျိုးသားများတွင်သာတွေ့ရသော ခရိုမိုဆုမ်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a monohybrid cross between two heterozygous parents (Aa x Aa), what is the expected ratio of dominant to recessive phenotypes in the offspring?',
        questionMy:
            'ဟီတရိုဇိုင်းဂတ်မိဘနှစ်ဦး (Aa x Aa) ၏ မိုနိုဟိုက်ဘရစ်ကူးစက်မှုတွင် သားစဉ်မြေးဆက်များ၌ လက္ခဏာလွှမ်းမိုးမှုနှင့် ဝှက်လျှိုးလက္ခဏာ ဖြစ်ပေါ်နိုင်ခြေအချိုးမှာ အဘယ်နည်း။',
        optionsEn: ['3:1', '1:1', '1:2:1', '4:0'],
        optionsMy: ['၃:၁', '၁:၁', '၁:၂:၁', '၄:၀'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do variations occur among offspring of the same parents?',
        questionMy:
            'မိဘတူညီသော သားစဉ်မြေးဆက်များအကြား ကွဲပြားမှုများ ဖြစ်ပေါ်ရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Because of the random combination of alleles during meiosis and fertilisation',
          'Because every offspring receives identical chromosomes',
          'Because only the mother contributes genetic material',
          'Because mitosis always produces different cells',
        ],
        optionsMy: [
          'မိုင်ယိုစစ်နှင့် သန္ဓေအောင်ခြင်းစဉ် အယ်လီးများ ကျပန်းပေါင်းစပ်ခြင်းကြောင့်',
          'သားစဉ်မြေးဆက်တိုင်း တူညီသောခရိုမိုဆုမ်းများရရှိသောကြောင့်',
          'မိခင်တစ်ဦးတည်းကသာ မျိုးရိုးဗီဇပါဝင်ပစ္စည်း ပေးအပ်သောကြောင့်',
          'မိုင်တိုးဆစ်သည် အမြဲတမ်း မတူညီသောဆဲလ်များထုတ်လုပ်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'How is the sex of a human offspring determined?',
        questionMy: 'လူသားသားစဉ်မြေးဆက်၏ လိင်ကို မည်သို့သတ်မှတ်သနည်း။',
        optionsEn: [
          'By whether the sperm carries an X or a Y chromosome',
          "By the mother's blood type",
          'By the number of genes inherited',
          'By the age of the parents',
        ],
        optionsMy: [
          'သုက်ပိုးသည် X သို့မဟုတ် Y ခရိုမိုဆုမ်းကို သယ်ဆောင်ခြင်း ရှိ၊ မရှိအပေါ်မူတည်၍',
          'မိခင်၏သွေးအုပ်စုအပေါ်မူတည်၍',
          'မျိုးဆက်ခံရသောဗီဇအရေအတွက်အပေါ်မူတည်၍',
          'မိဘများ၏အသက်အရွယ်အပေါ်မူတည်၍',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-biology-2',
    subject: 'biology',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Ecosystems and Energy Flow',
    titleMy: 'ဂေဟစနစ်များနှင့် စွမ်းအင်စီးဆင်းမှု',
    descriptionEn:
        'Study how energy and nutrients flow through food chains, food webs, and ecosystems.',
    descriptionMy:
        'စွမ်းအင်နှင့် အာဟာရဓာတ်များသည် အစားအစာကွင်းဆက်၊ အစားအစာကွန်ရက်နှင့် ဂေဟစနစ်များအတွင်း မည်သို့စီးဆင်းသည်ကို လေ့လာပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn:
            'What is the ultimate source of energy for almost all ecosystems?',
        questionMy: 'ဂေဟစနစ်အများစု၏ အဓိကစွမ်းအင်အရင်းအမြစ်မှာ အဘယ်နည်း။',
        optionsEn: ['The Sun', 'The soil', 'Water', 'Carbon dioxide'],
        optionsMy: ['နေရောင်ခြည်', 'မြေဆီလွှာ', 'ရေ', 'ကာဗွန်ဒိုင်အောက်ဆိုဒ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why is only about 10% of energy transferred from one trophic level to the next?',
        questionMy:
            'တစ်ဆင့်ခြင်း အစားအစာအဆင့်တစ်ခုမှ နောက်တစ်ဆင့်သို့ စွမ်းအင်၏ ၁၀ ရာခိုင်နှုန်းခန့်သာ လွှဲပြောင်းရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Most energy is lost as heat through respiration and other life processes',
          'Animals refuse to eat all of their prey',
          'Energy is destroyed at each trophic level',
          'Plants store all their energy underground',
        ],
        optionsMy: [
          'အစာချေဖျက်ခြင်းနှင့် အခြားအသက်ရှင်ရေးလုပ်ငန်းစဉ်များမှတစ်ဆင့် စွမ်းအင်အများစု အပူအဖြစ်ဆုံးရှုံးသောကြောင့်',
          'တိရစ္ဆာန်များသည် ၎င်းတို့၏ ဖမ်းမိတိရစ္ဆာန်အားလုံးကို မစားလိုသောကြောင့်',
          'အစားအစာအဆင့်တိုင်းတွင် စွမ်းအင် ဖျက်ဆီးခံရသောကြောင့်',
          'အပင်များသည် ၎င်းတို့၏စွမ်းအင်အားလုံးကို မြေအောက်တွင်သိမ်းဆည်းထားသောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the role of decomposers in an ecosystem?',
        questionMy:
            'ဂေဟစနစ်တစ်ခုအတွင်း ပုပ်ပျက်ဓာတ်တိုးအားပေးသတ္တဝါများ (decomposers) ၏ အခန်းကဏ္ဍမှာ အဘယ်နည်း။',
        optionsEn: [
          'To break down dead organisms and recycle nutrients back into the ecosystem',
          'To produce oxygen for other organisms',
          'To hunt and eat living prey',
          'To convert sunlight directly into food',
        ],
        optionsMy: [
          'သေဆုံးသောသက်ရှိများကို ပြိုကွဲစေပြီး အာဟာရဓာတ်များကို ဂေဟစနစ်ထဲသို့ ပြန်လည်ပို့ဆောင်ရန်',
          'အခြားသက်ရှိများအတွက် အောက်ဆီဂျင် ထုတ်လုပ်ရန်',
          'အသက်ရှင်နေသောဖမ်းစားခံတိရစ္ဆာန်ကို ဖမ်းစားရန်',
          'နေရောင်ခြည်ကို အစားအစာအဖြစ် တိုက်ရိုက်ပြောင်းလဲရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a food chain, what is the correct term for an organism that makes its own food, such as a green plant?',
        questionMy:
            'အစားအစာကွင်းဆက်တစ်ခုတွင် အစိမ်းရောင်အပင်ကဲ့သို့ မိမိကိုယ်ပိုင်အစားအစာကို ဖန်တီးနိုင်သောသက်ရှိအတွက် မှန်ကန်သောအသုံးအနှုန်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Producer',
          'Primary consumer',
          'Secondary consumer',
          'Decomposer',
        ],
        optionsMy: [
          'ထုတ်လုပ်သူ (producer)',
          'ပထမအဆင့် စားသုံးသူ',
          'ဒုတိယအဆင့် စားသုံးသူ',
          'ပုပ်ပျက်ဓာတ်တိုးအားပေးသတ္တဝါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does a pyramid of biomass show?',
        questionMy: 'ဇီဝထုပိရမစ် (pyramid of biomass) သည် မည်သည်ကိုပြသသနည်း။',
        optionsEn: [
          'The total mass of living material at each trophic level in a food chain',
          'The number of species living in a habitat',
          'The temperature at each level of an ecosystem',
          'The amount of water available to each organism',
        ],
        optionsMy: [
          'အစားအစာကွင်းဆက်တစ်ခုရှိ အဆင့်တစ်ခုစီရှိ သက်ရှိပစ္စည်း၏ စုစုပေါင်းအလေးချိန်',
          'နေထိုင်ရာနေရာတစ်ခုတွင် နေထိုင်သောမျိုးစိတ်အရေအတွက်',
          'ဂေဟစနစ်တစ်ခု၏ အဆင့်တစ်ခုစီရှိ အပူချိန်',
          'သက်ရှိတစ်ခုစီအတွက် ရရှိနိုင်သောရေပမာဏ',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-biology-3',
    subject: 'biology',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Homeostasis and the Body',
    titleMy: 'ခန္ဓာကိုယ်ဟန်ချက်ညီမှု (homeostasis)',
    descriptionEn:
        'Understand how the body maintains a stable internal environment despite external changes.',
    descriptionMy:
        'ပြင်ပပြောင်းလဲမှုများရှိသော်လည်း ခန္ဓာကိုယ်သည် တည်ငြိမ်သောအတွင်းပိုင်းပတ်ဝန်းကျင်ကို မည်သို့ထိန်းသိမ်းသည်ကို နားလည်ပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn: 'What is homeostasis?',
        questionMy: 'ဟိုမီယိုစတေးစစ် (homeostasis) ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The maintenance of a constant internal environment despite external changes',
          'The process of digesting food in the stomach',
          'The growth of new cells during puberty',
          'The movement of blood through the heart',
        ],
        optionsMy: [
          'ပြင်ပပြောင်းလဲမှုများရှိသော်လည်း အတွင်းပိုင်းပတ်ဝန်းကျင်ကို ထာဝစဉ်ထိန်းသိမ်းထားခြင်း',
          'အစာအိမ်တွင်း အစားအစာချေဖျက်သည့်လုပ်ငန်းစဉ်',
          'ဆယ်ကျော်သက်အရွယ်တွင် ဆဲလ်အသစ်များကြီးထွားခြင်း',
          'နှလုံးမှတစ်ဆင့် သွေးစီးဆင်းခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which organ is mainly responsible for regulating blood glucose concentration?',
        questionMy:
            'သွေးထဲရှိဂလူးကို့စ်ပမာဏကို အဓိကထိန်းချုပ်ပေးသောအင်္ဂါမှာ အဘယ်နည်း။',
        optionsEn: ['The pancreas', 'The lungs', 'The kidneys', 'The stomach'],
        optionsMy: ['ပန်ကရိယ', 'အဆုတ်', 'ကျောက်ကပ်', 'အစာအိမ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the role of the hormone insulin?',
        questionMy: 'အင်ဆူလင် (insulin) ဟော်မုန်း၏ အခန်းကဏ္ဍမှာ အဘယ်နည်း။',
        optionsEn: [
          'To lower blood glucose concentration by causing cells to take up glucose',
          'To raise body temperature during exercise',
          'To speed up the heart rate',
          'To break down proteins in the stomach',
        ],
        optionsMy: [
          'ဆဲလ်များအား ဂလူးကို့စ် စုပ်ယူစေခြင်းဖြင့် သွေးထဲရှိဂလူးကို့စ်ပမာဏကို လျှော့ချရန်',
          'လေ့ကျင့်ခန်းလုပ်စဉ် ခန္ဓာကိုယ်အပူချိန်ကို မြှင့်တင်ရန်',
          'နှလုံးခုန်နှုန်းကို မြန်စေရန်',
          'အစာအိမ်တွင်း ပရိုတိန်းများကို ပြိုကွဲစေရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'How does the body respond when its core temperature rises too high?',
        questionMy:
            'ခန္ဓာကိုယ်၏ အဓိကအပူချိန် များစွာမြင့်တက်လာသောအခါ ခန္ဓာကိုယ်သည် မည်သို့တုံ့ပြန်သနည်း။',
        optionsEn: [
          'By sweating and dilating blood vessels near the skin to lose heat',
          'By shivering to generate more heat',
          'By constricting blood vessels near the skin',
          'By increasing insulin production',
        ],
        optionsMy: [
          'ချွေးထွက်စေခြင်းနှင့် အရေပြားအနီးရှိ သွေးကြောများကို ကျယ်ပြန့်စေခြင်းဖြင့် အပူဆုံးရှုံးစေရန်',
          'ရှင်းရှင်းတုန်ခါစေခြင်းဖြင့် အပူပိုမိုထုတ်လုပ်ရန်',
          'အရေပြားအနီးရှိ သွေးကြောများကို ကျဉ်းစေခြင်းဖြင့်',
          'အင်ဆူလင်ထုတ်လုပ်မှုကို တိုးမြှင့်ခြင်းဖြင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why do the kidneys play an important role in homeostasis?',
        questionMy:
            'ကျောက်ကပ်များသည် ဟိုမီယိုစတေးစစ်တွင် အရေးပါသောအခန်းကဏ္ဍ ပါဝင်ရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'They regulate water content and remove waste products from the blood',
          'They pump blood around the body',
          'They produce digestive enzymes',
          'They store excess glucose as fat',
        ],
        optionsMy: [
          'ရေဓာတ်ပမာဏကို ထိန်းညှိပြီး သွေးထဲမှစွန့်ပစ်ပစ္စည်းများကို ဖယ်ရှားပေးသောကြောင့်',
          'ခန္ဓာကိုယ်တစ်ခုလုံးသို့ သွေးလှည့်ပတ်ပေးသောကြောင့်',
          'အစာချေဖျက်ရေးအင်ဇိုင်းများ ထုတ်လုပ်ပေးသောကြောင့်',
          'ပိုလျှံသောဂလူးကို့စ်ကို အဆီအဖြစ် သိမ်းဆည်းပေးသောကြောင့်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  SecondaryActivityDef(
    id: 'mock-secondary3-ict-1',
    subject: 'ict',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Python Functions',
    titleMy: 'Python Function များ',
    descriptionEn:
        'Learn how to define, call, and use parameters in Python functions to write reusable code.',
    descriptionMy:
        'ပြန်လည်အသုံးပြုနိုင်သော ကုဒ်များရေးရန် Python function များကို သတ်မှတ်ခြင်း၊ ခေါ်ယူခြင်းနှင့် parameter အသုံးပြုပုံကို လေ့လာပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn: 'What is the purpose of a function in Python?',
        questionMy: 'Python တွင် function တစ်ခု၏ ရည်ရွယ်ချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'To group reusable code under one name that can be called multiple times',
          'To permanently delete data from the computer',
          'To connect the computer to the internet',
          'To change the color of the screen',
        ],
        optionsMy: [
          'အကြိမ်ကြိမ် ခေါ်ယူအသုံးပြုနိုင်သော ကုဒ်ကို အမည်တစ်ခုအောက်တွင် စုစည်းရန်',
          'ကွန်ပျူတာမှ ဒေတာများကို အပြီးတိုင် ဖျက်ရန်',
          'ကွန်ပျူတာကို အင်တာနက်နှင့် ချိတ်ဆက်ရန်',
          'ဖန်သားပြင်၏ အရောင်ကို ပြောင်းလဲရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which keyword starts a function definition in Python?',
        questionMy:
            'Python တွင် function တစ်ခုကို သတ်မှတ်ရန် မည်သည့် keyword ဖြင့် စတင်သနည်း။',
        optionsEn: ['def', 'class', 'import', 'print'],
        optionsMy: [
          'def ကီးဝေါဒ်',
          'class ကီးဝေါဒ်',
          'import ကီးဝေါဒ်',
          'print ကီးဝေါဒ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What must you do to run the code inside a function after defining it?',
        questionMy:
            'function တစ်ခုကို သတ်မှတ်ပြီးနောက် ၎င်းအတွင်းရှိကုဒ်ကို run လုပ်ရန် အဘယ်အရာလုပ်ရမည်နည်း။',
        optionsEn: [
          'Call the function by writing its name followed by parentheses',
          'Delete the function immediately',
          'Restart the computer',
          'Rename the function every time',
        ],
        optionsMy: [
          'function ၏အမည်နောက်တွင် ကွင်းများထည့်ပြီး ခေါ်ယူရန်',
          'function ကို ချက်ချင်းဖျက်ပစ်ရန်',
          'ကွန်ပျူတာကို ပြန်လည်စတင်ရန်',
          'function ကို အကြိမ်တိုင်း အမည်ပြောင်းရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In Python, what is a "parameter" in a function definition?',
        questionMy:
            'Python တွင် function တစ်ခု၏ "parameter" ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A named value that is passed into a function so it can use it',
          'The color of the code editor',
          'A type of computer virus',
          'The speed of the internet connection',
        ],
        optionsMy: [
          'function အတွင်းသို့ ပေးပို့အသုံးပြုနိုင်သော အမည်ရှိတန်ဖိုး',
          'ကုဒ်ရေးဆွဲသည့်အက်ဒီတာ၏ အရောင်',
          'ကွန်ပျူတာဗိုင်းရပ်စ်တစ်မျိုး',
          'အင်တာနက်ချိတ်ဆက်မှု၏ အမြန်နှုန်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does the "return" statement do in a Python function?',
        questionMy:
            'Python function တစ်ခုတွင် "return" statement က ဘာလုပ်သနည်း။',
        optionsEn: [
          'It sends a value back to the code that called the function',
          'It deletes the function permanently',
          'It prints the function name in red',
          'It disconnects the computer from Wi-Fi',
        ],
        optionsMy: [
          'function ကို ခေါ်ယူသော ကုဒ်ဆီသို့ တန်ဖိုးတစ်ခုကို ပြန်ပို့ပေးသည်',
          'function ကို အပြီးတိုင် ဖျက်ပစ်သည်',
          'function အမည်ကို အနီရောင်ဖြင့် ပြသသည်',
          'ကွန်ပျူတာကို Wi-Fi မှ ဖြတ်တောက်သည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-ict-2',
    subject: 'ict',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Python Loops and Conditionals',
    titleMy: 'Python Loop များနှင့် Conditional များ',
    descriptionEn:
        'Practice using for loops, while loops, and if/elif/else statements to control program flow in Python.',
    descriptionMy:
        'Python တွင် ပရိုဂရမ်၏ လုပ်ဆောင်မှုစီးဆင်းမှုကို ထိန်းချုပ်ရန် for loop၊ while loop နှင့် if/elif/else statement များကို အသုံးပြုလေ့ကျင့်ပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn:
            'What is the main difference between a "for" loop and a "while" loop in Python?',
        questionMy:
            'Python တွင် "for" loop နှင့် "while" loop ကြား အဓိကကွာခြားချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A for loop repeats a fixed number of times or over a sequence, while a while loop repeats as long as a condition is true',
          'A for loop only works with numbers, while a while loop only works with text',
          'A for loop cannot be stopped, while a while loop can',
          'There is no difference between them',
        ],
        optionsMy: [
          'for loop သည် သတ်မှတ်အကြိမ်ရေ သို့မဟုတ် sequence တစ်ခုအတွက် ထပ်ခါထပ်ခါလုပ်ဆောင်ပြီး while loop သည် condition မှန်နေသရွေ့ ထပ်ခါလုပ်ဆောင်သည်',
          'for loop သည် ဂဏန်းနှင့်သာ အလုပ်လုပ်ပြီး while loop သည် စာသားနှင့်သာ အလုပ်လုပ်သည်',
          'for loop ကို ရပ်တန့်၍မရဘဲ while loop ကို ရပ်တန့်နိုင်သည်',
          '၎င်းတို့ကြား ကွာခြားချက်မရှိပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What will this code print? for i in range(3): print(i)',
        questionMy: 'ဤကုဒ်သည် ဘာပြသမည်နည်း- for i in range(3): print(i)',
        optionsEn: [
          '0 1 2 (each on its own line)',
          '1 2 3 (each on its own line)',
          '3 (only once)',
          '0 1 2 3 (each on its own line)',
        ],
        optionsMy: [
          '0 1 2 (တစ်ကြောင်းစီ)',
          '1 2 3 (တစ်ကြောင်းစီ)',
          '3 (တစ်ကြိမ်သာ)',
          '0 1 2 3 (တစ်ကြောင်းစီ)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What does the condition in an "if" statement need to evaluate to for its block of code to run?',
        questionMy:
            '"if" statement ၏ condition သည် ၎င်း၏ကုဒ်ဘလော့ခ် run ဖြစ်ရန် မည်သို့ရလဒ်ဖြစ်ရမည်နည်း။',
        optionsEn: ['True', 'False', 'A text string', 'A function name'],
        optionsMy: [
          'True (မှန်ကန်ကြောင်းပြသည့်တန်ဖိုး)',
          'False (မှားယွင်းကြောင်းပြသည့်တန်ဖိုး)',
          'စာသား string တစ်ခု',
          'function အမည်တစ်ခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In Python, what keyword do you use to check an additional condition after an "if" fails, before the final "else"?',
        questionMy:
            'Python တွင် "if" မမှန်ပြီးနောက် "else" မတိုင်မီ ထပ်မံ condition စစ်ဆေးရန် မည်သည့် keyword ကိုသုံးသနည်း။',
        optionsEn: ['elif', 'elseif', 'then', 'or'],
        optionsMy: [
          'elif (Python ၏အထူး keyword)',
          'elseif (Python တွင်မရှိပါ)',
          'then',
          'or',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What happens if a "while" loop\'s condition never becomes false?',
        questionMy:
            '"while" loop ၏ condition သည် False မဖြစ်ခဲ့လျှင် အဘယ်အရာဖြစ်လာမည်နည်း။',
        optionsEn: [
          'The loop keeps running forever, creating an infinite loop',
          'The program automatically fixes the condition',
          'The loop runs exactly once and stops',
          'The computer deletes the loop',
        ],
        optionsMy: [
          'infinite loop ဖြစ်ကာ loop သည် အဆုံးမရှိ ဆက်လက်လည်ပတ်နေမည်',
          'ပရိုဂရမ်က condition ကို အလိုအလျောက် ပြင်ဆင်ပေးမည်',
          'loop သည် တစ်ကြိမ်သာ အတိအကျ run ဖြစ်ပြီး ရပ်တန့်မည်',
          'ကွန်ပျူတာက loop ကို ဖျက်ပစ်မည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-ict-3',
    subject: 'ict',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Cybersecurity Basics',
    titleMy: 'ဆိုက်ဘာလုံခြုံရေး အခြေခံများ',
    descriptionEn:
        'Learn key cybersecurity concepts including strong passwords, malware, phishing, and how to stay safe online.',
    descriptionMy:
        'ကြံ့ခိုင်သောစကားဝှက်များ၊ malware၊ phishing နှင့် အွန်လိုင်းတွင် ဘေးကင်းစွာနေထိုင်ပုံများအပါအဝင် အဓိကဆိုက်ဘာလုံခြုံရေးအယူအဆများကို လေ့လာပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn: 'What makes a password strong?',
        questionMy: 'စကားဝှက်တစ်ခုကို ကြံ့ခိုင်စေသည့်အချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A long mix of upper and lower case letters, numbers, and symbols that is hard to guess',
          'Using your name and birth date',
          'Using the same short word for every account',
          'Sharing it with all your friends',
        ],
        optionsMy: [
          'ခန့်မှန်းရခက်သော အက္ခရာအကြီးအသေး၊ ဂဏန်းနှင့် သင်္ကေတများ ရောနှောထားသည့် ရှည်လျားသောစကားဝှက်',
          'သင်၏အမည်နှင့် မွေးနေ့ကို အသုံးပြုခြင်း',
          'အကောင့်တိုင်းအတွက် တူညီသောစကားလုံးတိုတိုကို အသုံးပြုခြင်း',
          'သင်၏မိတ်ဆွေအားလုံးထံ ဝေမျှခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is "malware"?',
        questionMy: '"malware" ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Software designed to damage, disrupt, or gain unauthorized access to a computer system',
          'A type of computer hardware that speeds up the internet',
          'An official update released by a software company',
          'A tool used only to organize files neatly',
        ],
        optionsMy: [
          'ကွန်ပျူတာစနစ်ကို ထိခိုက်စေရန်၊ ဖျက်ဆီးရန် သို့မဟုတ် ခွင့်ပြုချက်မရှိဘဲ ဝင်ရောက်ရန် ရေးဆွဲထားသော ဆော့ဖ်ဝဲ',
          'အင်တာနက်ကို မြန်ဆန်စေသော ဟာ့ဒ်ဝဲအမျိုးအစား',
          'ဆော့ဖ်ဝဲကုမ္ပဏီတစ်ခုမှ ထုတ်ပြန်သော တရားဝင်အပ်ဒိတ်',
          'ဖိုင်များကို စနစ်တကျစီစဉ်ရန်သာ သုံးသောကိရိယာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is "phishing"?',
        questionMy: '"phishing" ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A trick where scammers pretend to be trustworthy to steal personal information',
          'A method of speeding up a slow computer',
          'A setting that blocks pop-up advertisements',
          'A way to back up files to an external drive',
        ],
        optionsMy: [
          'ကိုယ်ရေးအချက်အလက်များ ခိုးယူရန် ယုံကြည်ရသူဟန်ဆောင်ကာ လှည့်စားသည့်နည်း',
          'နှေးကွေးသောကွန်ပျူတာကို မြန်ဆန်စေသောနည်းလမ်း',
          'pop-up ကြော်ငြာများကို ပိတ်ဆို့ပေးသော ဆက်တင်တစ်ခု',
          'ဖိုင်များကို ပြင်ပ drive တွင် backup လုပ်သည့်နည်းလမ်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What is the purpose of a firewall in computer security?',
        questionMy:
            'ကွန်ပျူတာလုံခြုံရေးတွင် firewall တစ်ခု၏ ရည်ရွယ်ချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'To monitor and control incoming and outgoing network traffic to block unauthorized access',
          'To make the computer screen brighter',
          'To print documents faster',
          'To increase the storage space on a hard drive',
        ],
        optionsMy: [
          'ခွင့်ပြုချက်မရှိသော ဝင်ရောက်မှုများကို ပိတ်ဆို့ရန် ဝင်/ထွက် ကွန်ရက်လမ်းကြောင်းများကို စောင့်ကြည့်ထိန်းချုပ်ရန်',
          'ကွန်ပျူတာဖန်သားပြင်ကို ပိုမိုတောက်ပစေရန်',
          'စာရွက်စာတမ်းများကို ပိုမိုမြန်ဆန်စွာ ပရင့်ထုတ်ရန်',
          'ဟာ့ဒ်ဒစ်စ်ပေါ်ရှိ သိုလှောင်ခန်းနေရာကို တိုးမြှင့်ရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why should you avoid clicking links in unexpected emails from unknown senders?',
        questionMy:
            'မသိသောပေးပို့သူများထံမှ မမျှော်လင့်ထားသော အီးမေးလ်ရှိ လင့်ခ်များကို အဘယ်ကြောင့် ရှောင်ရှားသင့်သနည်း။',
        optionsEn: [
          'They may lead to fake websites or install malware designed to steal information',
          'They always make the internet connection faster',
          'They automatically improve your password strength',
          'They are required to update your operating system',
        ],
        optionsMy: [
          'အချက်အလက်ခိုးယူရန် ရေးဆွဲထားသော malware ထည့်သွင်းစေခြင်း သို့မဟုတ် အတုအပ website သို့ ပို့ဆောင်နိုင်သောကြောင့်',
          'အင်တာနက်ချိတ်ဆက်မှုကို အမြဲမြန်ဆန်စေသောကြောင့်',
          'စကားဝှက်ကြံ့ခိုင်မှုကို အလိုအလျောက် တိုးတက်စေသောကြောင့်',
          'operating system အသစ်ပြင်ဆင်ရန် လိုအပ်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  SecondaryActivityDef(
    id: 'mock-secondary3-socialstudies-1',
    subject: 'socialstudies',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Global Issues: Climate and Environment',
    titleMy:
        'ကမ္ဘာလုံးဆိုင်ရာ ပြဿနာများ- ရာသီဥတုပြောင်းလဲမှုနှင့် သဘာဝပတ်ဝန်းကျင်',
    descriptionEn:
        'Examine how climate change and environmental challenges affect the whole world.',
    descriptionMy:
        'ရာသီဥတုပြောင်းလဲမှုနှင့် သဘာဝပတ်ဝန်းကျင်စိန်ခေါ်မှုများသည် ကမ္ဘာတစ်ဝှမ်းကို မည်သို့သက်ရောက်သည်ကို လေ့လာပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn:
            'What mainly causes the greenhouse effect to intensify and raise global temperatures?',
        questionMy:
            'ဂရင်းဟောက်စ်ဓာတ်ငွေ့သက်ရောက်မှု ပိုမိုပြင်းထန်လာပြီး ကမ္ဘာ့အပူချိန်မြင့်တက်စေသည့် အဓိကအကြောင်းရင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Rising levels of greenhouse gases such as carbon dioxide trapping heat in the atmosphere',
          'The Earth moving closer to the Sun',
          'A decrease in the level of the oceans',
          'Extra sunlight occurring only in winter',
        ],
        optionsMy: [
          'လေထုထဲရှိ ကာဗွန်ဒိုင်အောက်ဆိုဒ်ကဲ့သို့ ဂရင်းဟောက်စ်ဓာတ်ငွေ့များ တိုးများလာပြီး အပူကို ထိန်းသိမ်းထားခြင်း',
          'ကမ္ဘာကြီးသည် နေနှင့် ပိုမိုနီးကပ်လာခြင်း',
          'သမုဒ္ဒရာရေအဆင့် ကျဆင်းသွားခြင်း',
          'ဆောင်းရာသီတွင်သာ နေရောင်ခြည် ပိုမိုရရှိခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which international agreement aims to keep the rise in global average temperature well below 2°C?',
        questionMy:
            'ကမ္ဘာ့ပျမ်းမျှအပူချိန် မြင့်တက်မှုကို ဒီဂရီစင်တီဂရိတ် ၂ အောက်တွင် ထိန်းထားရန် ရည်ရွယ်သော နိုင်ငံတကာသဘောတူညီချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The Paris Agreement',
          'The Treaty of Versailles',
          'The North Atlantic Treaty',
          'The Universal Postal Convention',
        ],
        optionsMy: [
          'ပါရီသဘောတူညီချက် (Paris Agreement)',
          'ဗားဆိုင်းစာချုပ် (Treaty of Versailles)',
          'မြောက်အတလန်တစ် စာချုပ် (North Atlantic Treaty)',
          'ကမ္ဘာ့စာပို့ ကွန်ဗင်းရှင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is deforestation and why does it worsen climate change?',
        questionMy:
            'သစ်တောပြုန်းတီးမှု (deforestation) ဆိုသည်မှာ အဘယ်နည်း၊ အဘယ့်ကြောင့် ရာသီဥတုပြောင်းလဲမှုကို ပိုမိုဆိုးရွားစေသနည်း။',
        optionsEn: [
          'The clearing of forests, which reduces the amount of carbon dioxide absorbed from the atmosphere',
          'The planting of new trees to increase oxygen levels',
          'A farming method that has no effect on the atmosphere',
          'A government program that protects forests from logging',
        ],
        optionsMy: [
          'သစ်တောများကို ခုတ်ထွင်ရှင်းလင်းခြင်းကြောင့် လေထုမှ စုပ်ယူနိုင်သော ကာဗွန်ဒိုင်အောက်ဆိုဒ်ပမာဏ လျော့နည်းသွားခြင်း',
          'အောက်စီဂျင်ပမာဏတိုးများစေရန် အပင်သစ်များ စိုက်ပျိုးခြင်း',
          'လေထုအပေါ် မည်သည့်သက်ရောက်မှုမျှ မရှိသော စိုက်ပျိုးရေးနည်းလမ်းတစ်ခု',
          'သစ်ထုတ်လုပ်မှုမှ သစ်တောများကို ကာကွယ်ပေးသည့် အစိုးရအစီအစဉ်တစ်ခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which of the following is a renewable source of energy?',
        questionMy:
            'အောက်ပါတို့တွင် ပြန်လည်ပြည့်ဖြိုးနိုင်သော စွမ်းအင်အရင်းအမြစ်မှာ အဘယ်နည်း။',
        optionsEn: ['Solar power', 'Coal', 'Natural gas', 'Petroleum'],
        optionsMy: [
          'နေရောင်ခြည်စွမ်းအင် (solar power)',
          'ကျောက်မီးသွေး',
          'သဘာဝဓာတ်ငွေ့',
          'ရေနံ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What term describes long-term shifts in temperatures and weather patterns, largely driven by human activity?',
        questionMy:
            'လူ့လုပ်ဆောင်ချက်များကြောင့် အဓိကဖြစ်ပေါ်လာသော အပူချိန်နှင့် ရာသီဥတုပုံစံများ၏ ရေရှည်ပြောင်းလဲမှုကို ရည်ညွှန်းသည့် အသုံးအနှုန်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Climate change',
          'Photosynthesis',
          'Urbanization',
          'Population census',
        ],
        optionsMy: [
          'ရာသီဥတုပြောင်းလဲမှု (climate change)',
          'အလင်းပေါင်းစပ်ဓာတ်ပြုမှု (photosynthesis)',
          'မြို့ပြဖြစ်ထွန်းမှု (urbanization)',
          'လူဦးရေသန်းခေါင်စာရင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-socialstudies-2',
    subject: 'socialstudies',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Poverty and Development',
    titleMy: 'ဆင်းရဲမွဲတေမှုနှင့် ဖွံ့ဖြိုးတိုးတက်ရေး',
    descriptionEn:
        'Understand the causes of poverty and how countries measure and pursue development.',
    descriptionMy:
        'ဆင်းရဲမွဲတေမှု၏ အကြောင်းရင်းများနှင့် နိုင်ငံများသည် ဖွံ့ဖြိုးတိုးတက်မှုကို မည်သို့တိုင်းတာ၍ ရှေ့ဆက်ကြသည်ကို နားလည်ပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn: "What is meant by 'absolute poverty'?",
        questionMy:
            "'အလျှင်းမဲ့ဆင်းရဲမွဲတေမှု (absolute poverty)' ဆိုသည်မှာ အဘယ်နည်း။",
        optionsEn: [
          'A condition where a person cannot afford basic necessities such as food, clean water, and shelter',
          "Having less money than one's neighbors",
          'A temporary lack of luxury goods',
          'A measure used only in wealthy countries',
        ],
        optionsMy: [
          'အစားအစာ၊ သန့်ရှင်းသောရေနှင့် နေရာထိုင်ခင်းကဲ့သို့ အသက်ရှင်ရန်လိုအပ်သော အခြေခံလိုအပ်ချက်များကို မတတ်နိုင်သောအခြေအနေ',
          'အိမ်နီးချင်းများထက် ငွေနည်းနည်းရှိခြင်း',
          'ဇိမ်ခံပစ္စည်းများကို ခေတ္တမရှိခြင်း',
          'ချမ်းသာသောနိုင်ငံများတွင်သာ အသုံးပြုသော တိုင်းတာနည်းတစ်ခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does GDP (Gross Domestic Product) measure?',
        questionMy:
            'GDP (ပြည်တွင်းအသားတင်ထုတ်လုပ်မှု) သည် အဘယ်အရာကို တိုင်းတာသနည်း။',
        optionsEn: [
          'The total value of all goods and services produced within a country in a given period',
          'The total population of a country',
          'The number of schools in a country',
          'The amount of rainfall a country receives each year',
        ],
        optionsMy: [
          'သတ်မှတ်ကာလတစ်ခုအတွင်း နိုင်ငံတစ်ခုတွင်း ထုတ်လုပ်သော ကုန်ပစ္စည်းနှင့် ဝန်ဆောင်မှုများ၏ စုစုပေါင်းတန်ဖိုး',
          'နိုင်ငံတစ်ခု၏ စုစုပေါင်း လူဦးရေ',
          'နိုင်ငံတစ်ခုရှိ ကျောင်းအရေအတွက်',
          'နိုင်ငံတစ်ခု တစ်နှစ်လျှင် ရရှိသော မိုးရေချိန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the Human Development Index (HDI) used to compare?',
        questionMy:
            'လူသားဖွံ့ဖြိုးတိုးတက်မှုညွှန်းကိန်း (HDI) ကို အဘယ်အချက်များ နှိုင်းယှဉ်ရန် အသုံးပြုသနည်း။',
        optionsEn: [
          "Countries' levels of health, education, and standard of living",
          "Countries' military strength only",
          "The size of countries' armies",
          'The number of tourists visiting a country',
        ],
        optionsMy: [
          'နိုင်ငံများ၏ ကျန်းမာရေး၊ ပညာရေးနှင့် ဘဝနေထိုင်မှုအဆင့်အတန်း',
          'နိုင်ငံများ၏ စစ်အင်အားသာ',
          'နိုင်ငံများ၏ တပ်ဖွဲ့ဝင်အရေအတွက်',
          'နိုင်ငံတစ်ခုသို့ လာရောက်လည်ပတ်သော ခရီးသွားအရေအတွက်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is a key goal of the United Nations Sustainable Development Goals (SDGs)?',
        questionMy:
            'ကုလသမဂ္ဂ၏ ရေရှည်တည်တံ့သော ဖွံ့ဖြိုးတိုးတက်ရေးပန်းတိုင်များ (SDGs) ၏ အဓိကရည်မှန်းချက်တစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: [
          'To end poverty and hunger while promoting sustainable growth for everyone by 2030',
          'To build more weapons for national defense',
          'To increase the price of basic goods worldwide',
          'To reduce the number of countries in the United Nations',
        ],
        optionsMy: [
          '၂၀၃၀ ခုနှစ်တွင် လူတိုင်းအတွက် ရေရှည်တည်တံ့သောဖွံ့ဖြိုးတိုးတက်မှုကို မြှင့်တင်ရင်း ဆင်းရဲမွဲတေမှုနှင့် ငတ်မွတ်ခေါင်းပါးမှုများကို အဆုံးသတ်ရန်',
          'နိုင်ငံ့ကာကွယ်ရေးအတွက် လက်နက်ပိုမိုတည်ဆောက်ရန်',
          'ကမ္ဘာတစ်ဝှမ်း အခြေခံကုန်ပစ္စည်းများ၏ စျေးနှုန်းကို မြှင့်တင်ရန်',
          'ကုလသမဂ္ဂအဖွဲ့ဝင်နိုင်ငံအရေအတွက်ကို လျှော့ချရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is one common strategy used to help reduce poverty in developing countries?',
        questionMy:
            'ဖွံ့ဖြိုးဆဲနိုင်ငံများတွင် ဆင်းရဲမွဲတေမှု လျှော့ချရန် အသုံးများသော နည်းဗျူဟာတစ်ခုမှာ အဘယ်နည်း။',
        optionsEn: [
          'Investing in education and healthcare so people can gain skills and stay healthy enough to work',
          'Preventing children from attending school',
          'Closing hospitals to save money',
          'Restricting access to clean water',
        ],
        optionsMy: [
          'လူများ ကျွမ်းကျင်မှုရရှိစေရန်နှင့် အလုပ်လုပ်နိုင်လောက်အောင် ကျန်းမာရေးကောင်းမွန်စေရန် ပညာရေးနှင့် ကျန်းမာရေးတွင် ရင်းနှီးမြှုပ်နှံခြင်း',
          'ကလေးများကို ကျောင်းတက်ခွင့် ပိတ်ပင်ခြင်း',
          'ကုန်ကျစရိတ်သက်သာစေရန် ဆေးရုံများကို ပိတ်ခြင်း',
          'သန့်ရှင်းသောရေ ရရှိမှုကို ကန့်သတ်ခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary3-socialstudies-3',
    subject: 'socialstudies',
    grade: Grade.secondary3,
    contentType: 'quiz',
    titleEn: 'Myanmar History and Culture',
    titleMy: 'မြန်မာ့သမိုင်းနှင့် ယဉ်ကျေးမှု',
    descriptionEn:
        "Deepen your knowledge of Myanmar's historical kingdoms, independence, and cultural traditions.",
    descriptionMy:
        'မြန်မာ့သမိုင်းဆိုင်ရာ ပြည်ထောင်စုများ၊ လွတ်လပ်ရေးနှင့် ယဉ်ကျေးမှုအစဉ်အလာများအကြောင်း ပိုမိုနက်နက်ရှိုင်းရှိုင်း လေ့လာပါ။',
    starsReward: 26,
    questions: [
      QuizQuestion(
        questionEn:
            'Which ancient city was the capital of the Pagan (Bagan) Kingdom, famous for its thousands of temples?',
        questionMy:
            'ပုဂံဘုရင့်နိုင်ငံတော်၏ မြို့တော်ဖြစ်ခဲ့ပြီး ဘုရားပုထိုးထောင်ချီရှိခြင်းဖြင့် ကျော်ကြားသော ရှေးဟောင်းမြို့မှာ အဘယ်နည်း။',
        optionsEn: ['Bagan', 'Yangon', 'Mandalay', 'Naypyidaw'],
        optionsMy: ['ပုဂံ', 'ရန်ကုန်', 'မန္တလေး', 'နေပြည်တော်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Who was the king credited with founding the Pagan Empire and unifying much of present-day Myanmar in the 11th century?',
        questionMy:
            '၁၁ ရာစုတွင် ပုဂံအင်ပါယာကို တည်ထောင်ခဲ့ပြီး ယနေ့မြန်မာနိုင်ငံ၏ များစွာသောနေရာများကို စည်းလုံးညီညွတ်စေခဲ့သော ဘုရင်မှာ အဘယ်သူနည်း။',
        optionsEn: [
          'King Anawrahta',
          'King Alaungpaya',
          'King Mindon',
          'King Thibaw',
        ],
        optionsMy: [
          'ဘုရင်အနော်ရထာ',
          'ဘုရင်အလောင်းဘုရား',
          'ဘုရင်မင်းတုန်းမင်း',
          'ဘုရင်သီပေါမင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'On what date did Myanmar (then Burma) gain independence from British colonial rule?',
        questionMy:
            'မြန်မာနိုင်ငံ (ယခင်ဗမာနိုင်ငံ) သည် ဗြိတိသျှကိုလိုနီအုပ်ချုပ်ရေးမှ မည်သည့်ရက်စွဲတွင် လွတ်လပ်ရေးရရှိခဲ့သနည်း။',
        optionsEn: [
          '4 January 1948',
          '8 August 1988',
          '27 March 1945',
          '1 October 1962',
        ],
        optionsMy: [
          '၁၉၄၈ ခုနှစ် ဇန်နဝါရီလ ၄ ရက်',
          '၁၉၈၈ ခုနှစ် သြဂုတ်လ ၈ ရက်',
          '၁၉၄၅ ခုနှစ် မတ်လ ၂၇ ရက်',
          '၁၉၆၂ ခုနှစ် အောက်တိုဘာလ ၁ ရက်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is Thingyan, celebrated widely across Myanmar each April?',
        questionMy:
            'နှစ်စဉ်ဧပြီလတွင် မြန်မာတစ်ဝှမ်းကျင်းပလေ့ရှိသော သင်္ကြန်ပွဲတော် ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The traditional Myanmar New Year water festival',
          'A harvest festival held only in Yangon',
          'A national election day',
          'A festival celebrating the founding of Mandalay',
        ],
        optionsMy: [
          'မြန်မာ့ရိုးရာနှစ်သစ်ကူးရေပွဲတော်',
          'ရန်ကုန်တွင်သာ ကျင်းပသော စပါးရိတ်သိမ်းပွဲတော်',
          'အမျိုးသားရွေးကောက်ပွဲကျင်းပသည့်ရက်',
          'မန္တလေးမြို့တည်ထောင်ခြင်းကို ဂုဏ်ပြုသည့်ပွဲတော်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the longyi, a key part of traditional Myanmar dress?',
        questionMy:
            'မြန်မာ့ရိုးရာဝတ်စုံ၏ အဓိကအစိတ်အပိုင်းတစ်ခုဖြစ်သော လုံချည်ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A long piece of cloth wrapped around the waist and worn as a skirt-like garment by both men and women',
          'A type of hat worn only by monks',
          'A traditional musical instrument',
          'A ceremonial sword used in royal courts',
        ],
        optionsMy: [
          'အမျိုးသားနှင့် အမျိုးသမီးနှစ်မျိုးလုံးက ခါးတွင်ပတ်ပြီး ဝတ်ဆင်သော အထည်ရှည်တစ်ခု',
          'ဘုန်းကြီးများသာ ဝတ်ဆင်သော ဦးထုပ်အမျိုးအစားတစ်ခု',
          'ရိုးရာဂီတတူရိယာတစ်ခု',
          'မင်းမှုထမ်းများ အသုံးပြုသော ထုံးတမ်းစဉ်လာဓားတစ်လက်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  // ============================== IGCSE ==============================
  SecondaryActivityDef(
    id: 'mock-igcse-algebra-1',
    subject: 'algebra',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Functions and Graphs',
    titleMy: 'ဖန်ရှင်များနှင့် ဂရပ်များ',
    descriptionEn:
        'Work with function notation, composite and inverse functions, and key features of quadratic graphs.',
    descriptionMy:
        'ဖန်ရှင်သင်္ကေတ၊ ပေါင်းစပ်ဖန်ရှင်နှင့် ပြောင်းပြန်ဖန်ရှင်များအပြင် စတုရန်းဂရပ်များ၏ အဓိကအချက်များကို လေ့ကျင့်ပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn: 'If f(x) = 3x - 2, find f(4).',
        questionMy: 'f(x) = 3x - 2 ဖြစ်လျှင် f(4) ၏ တန်ဖိုးကို ရှာပါ။',
        optionsEn: ['10', '14', '8', '12'],
        optionsMy: ['၁၀', '၁၄', '၈', '၁၂'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If f(x) = 2x + 1 and g(x) = x², find fg(3).',
        questionMy: 'f(x) = 2x + 1 နှင့် g(x) = x² ဖြစ်လျှင် fg(3) ကို ရှာပါ။',
        optionsEn: ['19', '49', '7', '21'],
        optionsMy: ['၁၉', '၄၉', '၇', '၂၁'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Find the inverse function of f(x) = (x - 5) / 2.',
        questionMy: 'f(x) = (x - 5) / 2 ၏ ပြောင်းပြန်ဖန်ရှင် f⁻¹(x) ကို ရှာပါ။',
        optionsEn: [
          'f⁻¹(x) = 2x + 5',
          'f⁻¹(x) = 2x - 5',
          'f⁻¹(x) = (x + 5) / 2',
          'f⁻¹(x) = 2x + 10',
        ],
        optionsMy: [
          'f⁻¹(x) = 2x + ၅',
          'f⁻¹(x) = 2x - ၅',
          'f⁻¹(x) = (x + ၅) / ၂',
          'f⁻¹(x) = 2x + ၁၀',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'The graph of y = x² - 4x + 1 has a minimum turning point at:',
        questionMy:
            'y = x² - 4x + 1 ၏ ဂရပ်တွင် အနိမ့်ဆုံးအချက် (minimum turning point) သည် မည်သည့်နေရာတွင်ရှိသနည်း။',
        optionsEn: ['(2, -3)', '(-2, -3)', '(2, 3)', '(4, 1)'],
        optionsMy: ['(၂, -၃)', '(-၂, -၃)', '(၂, ၃)', '(၄, ၁)'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Find the gradient of the line joining the points (1, 2) and (4, 11).',
        questionMy:
            'အမှတ် (1, 2) နှင့် (4, 11) တို့ကို ဆက်သွယ်သည့် မျဉ်း၏ စောင်းကိန်း (gradient) ကို ရှာပါ။',
        optionsEn: ['3', '9', '1/3', '-3'],
        optionsMy: ['၃', '၉', '၁/၃', '-၃'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-algebra-2',
    subject: 'algebra',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Algebraic Fractions',
    titleMy: 'အက္ခရာသင်္ချာ အပိုင်းကိန်းများ',
    descriptionEn:
        'Simplify, combine, and solve equations involving algebraic fractions.',
    descriptionMy:
        'အက္ခရာသင်္ချာ အပိုင်းကိန်းများပါဝင်သော ဖော်ပြချက်များကို ရိုးရှင်းအောင်ပြုလုပ်ခြင်း၊ ပေါင်းစည်းခြင်းနှင့် ညီမျှခြင်းများကို ဖြေရှင်းပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn: 'Simplify: (x² - 9) / (x + 3)',
        questionMy: 'ရိုးရှင်းအောင်ပြုလုပ်ပါ- (x² - 9) / (x + 3)',
        optionsEn: ['x - 3', 'x + 3', 'x² - 3', 'x - 9'],
        optionsMy: ['x - ၃', 'x + ၃', 'x² - ၃', 'x - ၉'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Write as a single fraction: 3/x + 2/(x + 1)',
        questionMy: 'တစ်ခုတည်းသော အပိုင်းကိန်းအဖြစ် ရေးပါ- 3/x + 2/(x + 1)',
        optionsEn: [
          '(5x + 3) / (x² + x)',
          '(5x + 3) / (2x + 1)',
          '5 / (2x + 1)',
          '(3x + 2) / (x² + x)',
        ],
        optionsMy: [
          '(5x + ၃) / (x² + x)',
          '(5x + ၃) / (2x + ၁)',
          '5 / (2x + ၁)',
          '(3x + ၂) / (x² + x)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Simplify: (x² + 5x + 6) / (x² - 4)',
        questionMy: 'ရိုးရှင်းအောင်ပြုလုပ်ပါ- (x² + 5x + 6) / (x² - 4)',
        optionsEn: [
          '(x + 3) / (x - 2)',
          '(x + 2) / (x - 2)',
          '(x + 3) / (x + 2)',
          '(x - 3) / (x - 2)',
        ],
        optionsMy: [
          '(x + ၃) / (x - ၂)',
          '(x + ၂) / (x - ၂)',
          '(x + ၃) / (x + ၂)',
          '(x - ၃) / (x - ၂)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve: 2/x = 3/(x + 1)',
        questionMy: 'ဖြေရှင်းပါ- 2/x = 3/(x + 1)',
        optionsEn: ['x = 2', 'x = -2', 'x = 1', 'x = 3'],
        optionsMy: ['x = ၂', 'x = -၂', 'x = ၁', 'x = ၃'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Simplify: 4x / (2x²)',
        questionMy: 'ရိုးရှင်းအောင်ပြုလုပ်ပါ- 4x / (2x²)',
        optionsEn: ['2 / x', '2x', '2 / x²', '4 / x'],
        optionsMy: ['၂ / x', '၂x', '၂ / x²', '၄ / x'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-algebra-3',
    subject: 'algebra',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Further Quadratics',
    titleMy: 'အဆင့်မြင့် စတုရန်းညီမျှခြင်းများ',
    descriptionEn:
        'Complete the square, apply the quadratic formula, and analyse roots and inequalities.',
    descriptionMy:
        'စတုရန်းကိန်းပြည့်ပုံစံသို့ ပြောင်းလဲခြင်း၊ စတုရန်းပုံသေနည်းကို အသုံးချခြင်းနှင့် အမြစ်များ၊ မညီမျှခြင်းများကို ဆန်းစစ်ပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn: 'Write x² + 6x + 2 in the form (x + a)² + b.',
        questionMy: 'x² + 6x + 2 ကို (x + a)² + b ပုံစံဖြင့် ရေးပါ။',
        optionsEn: [
          '(x + 3)² - 7',
          '(x + 3)² + 7',
          '(x + 6)² - 7',
          '(x + 3)² - 2',
        ],
        optionsMy: [
          '(x + ၃)² - ၇',
          '(x + ၃)² + ၇',
          '(x + ၆)² - ၇',
          '(x + ၃)² - ၂',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Use the quadratic formula to solve: 2x² - 3x - 5 = 0',
        questionMy: 'စတုရန်းပုံသေနည်းသုံး၍ ဖြေရှင်းပါ- 2x² - 3x - 5 = 0',
        optionsEn: [
          'x = 2.5 or x = -1',
          'x = -2.5 or x = 1',
          'x = 5 or x = -1',
          'x = 2.5 or x = 1',
        ],
        optionsMy: [
          'x = ၂.၅ သို့မဟုတ် x = -၁',
          'x = -၂.၅ သို့မဟုတ် x = ၁',
          'x = ၅ သို့မဟုတ် x = -၁',
          'x = ၂.၅ သို့မဟုတ် x = ၁',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What does the discriminant tell us about the roots of x² - 4x + 5 = 0?',
        questionMy:
            'x² - 4x + 5 = 0 ၏ ခွဲခြားကိန်း (discriminant) က အမြစ်များအကြောင်း မည်သို့ဖော်ပြသနည်း။',
        optionsEn: [
          'No real roots (discriminant is negative)',
          'Two equal real roots',
          'Two distinct real roots',
          'Three real roots',
        ],
        optionsMy: [
          'အမှန်အမြစ် လုံးဝမရှိပါ (ခွဲခြားကိန်း အနှုတ်ဖြစ်သည်)',
          'ညီမျှသော အမြစ်နှစ်ခု',
          'ကွဲပြားသော အမြစ်နှစ်ခု',
          'အမြစ်သုံးခု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'The quadratic equation x² - 7x + 12 = 0 has roots α and β. Find α + β and αβ.',
        questionMy:
            'စတုရန်းညီမျှခြင်း x² - 7x + 12 = 0 ၏ အမြစ်များမှာ α နှင့် β ဖြစ်သည်။ α + β နှင့် αβ ကို ရှာပါ။',
        optionsEn: [
          'α + β = 7, αβ = 12',
          'α + β = -7, αβ = 12',
          'α + β = 7, αβ = -12',
          'α + β = 12, αβ = 7',
        ],
        optionsMy: [
          'α + β = ၇, αβ = ၁၂',
          'α + β = -၇, αβ = ၁၂',
          'α + β = ၇, αβ = -၁၂',
          'α + β = ၁၂, αβ = ၇',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve the inequality: x² - 5x + 6 > 0',
        questionMy: 'မညီမျှခြင်းကို ဖြေရှင်းပါ- x² - 5x + 6 > 0',
        optionsEn: [
          'x < 2 or x > 3',
          '2 < x < 3',
          'x < 2 or x > 6',
          'x > 3 only',
        ],
        optionsMy: [
          'x < ၂ သို့မဟုတ် x > ၃',
          '၂ < x < ၃',
          'x < ၂ သို့မဟုတ် x > ၆',
          'x > ၃ သာ',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  SecondaryActivityDef(
    id: 'mock-igcse-physics-1',
    subject: 'physics',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Motion Graphs and Momentum',
    titleMy: 'ရွေ့လျားမှုဂရပ်များနှင့် ရွေ့လျားအား (momentum)',
    descriptionEn:
        'Interpret speed-time and distance-time graphs, and apply conservation of momentum and impulse to solve problems.',
    descriptionMy:
        'အလျင်-အချိန် ဂရပ်နှင့် အကွာအဝေး-အချိန် ဂရပ်များကို အဓိပ္ပာယ်ဖွင့်ဆိုပြီး ရွေ့လျားအား ထိန်းသိမ်းမှုဥပဒေနှင့် အားထိန်းချက် (impulse) ကို အသုံးပြု၍ ပြဿနာများကို ဖြေရှင်းပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'On a speed-time graph, what physical quantity does the gradient (slope) of the line represent?',
        questionMy:
            'အလျင်-အချိန်ဂရပ်တစ်ခုတွင် မျဉ်း၏ စောင်း (gradient) သည် မည်သည့်ရူပဗေဒဆိုင်ရာ ပမာဏကို ကိုယ်စားပြုသနည်း။',
        optionsEn: [
          'Acceleration',
          'Distance travelled',
          'Average speed',
          'Momentum',
        ],
        optionsMy: [
          'အရှိန်တိုးမှု (acceleration)',
          'ဖြတ်သန်းသွားသောအကွာအဝေး',
          'ပျမ်းမျှအလျင်',
          'ရွေ့လျားအား (momentum)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'On a speed-time graph, what does the area enclosed between the line and the time-axis represent?',
        questionMy:
            'အလျင်-အချိန်ဂရပ်တစ်ခုတွင် မျဉ်းနှင့် အချိန်ဝင်ရိုးကြားရှိ ဧရိယာသည် မည်သည့်အရာကို ကိုယ်စားပြုသနည်း။',
        optionsEn: [
          'Distance travelled',
          'Acceleration',
          'Average speed',
          'Change in momentum',
        ],
        optionsMy: [
          'ဖြတ်သန်းသွားသောအကွာအဝေး',
          'အရှိန်တိုးမှု',
          'ပျမ်းမျှအလျင်',
          'ရွေ့လျားအားပြောင်းလဲမှု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A distance-time graph for a moving object curves so that it becomes progressively steeper over time. What does this indicate about the object\'s motion?',
        questionMy:
            'ရွေ့လျားနေသောအရာဝတ္ထုတစ်ခု၏ အကွာအဝေး-အချိန်ဂရပ်သည် အချိန်ကြာလာသည်နှင့်အမျှ ပိုမိုစောင်းလာသည်။ ၎င်းသည် အရာဝတ္ထု၏ ရွေ့လျားမှုအကြောင်း မည်သို့ဖော်ပြသနည်း။',
        optionsEn: [
          'The object is accelerating (speeding up)',
          'The object is moving at constant speed',
          'The object is decelerating',
          'The object is stationary',
        ],
        optionsMy: [
          'အရာဝတ္ထုသည် အရှိန်တိုးနေသည် (မြန်နှုန်းတိုးနေသည်)',
          'အရာဝတ္ထုသည် အလျင်ညီညာစွာ ရွေ့လျားနေသည်',
          'အရာဝတ္ထုသည် အရှိန်လျော့နေသည်',
          'အရာဝတ္ထုသည် ငြိမ်နေသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A 2 kg trolley moving at 3 m/s collides with and sticks to a stationary 1 kg trolley. Assuming momentum is conserved, what is their common velocity immediately after the collision?',
        questionMy:
            '၂ kg အလေးချိန်ရှိသော လှည်းငယ်တစ်စီးသည် 3 m/s နှုန်းဖြင့် ရွေ့လျားရာမှ ငြိမ်နေသော ၁ kg လှည်းငယ်တစ်စီးနှင့် တိုက်ဆိုင်ပြီး ကပ်ငြိသွားသည်။ ရွေ့လျားအားထိန်းသိမ်းမှုဥပဒေအရ တိုက်ဆိုင်ပြီးချက်ချင်း ၎င်းတို့၏ ဘုံအလျင်မှာ မည်မျှနည်း။',
        optionsEn: ['2 m/s', '3 m/s', '1 m/s', '6 m/s'],
        optionsMy: ['၂ m/s', '၃ m/s', '၁ m/s', '၆ m/s'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A resultant force of 5 N acts on a 2 kg object, initially at rest, for 4 seconds. Using impulse = change in momentum, what is the object\'s momentum at the end of the 4 seconds?',
        questionMy:
            '2 kg အလေးချိန်ရှိသော အရာဝတ္ထုတစ်ခုသည် ရပ်တန့်နေရာမှ ရလဒ်အင်အား 5 N ကို 4 စက္ကန့်ကြာ ခံယူရသည်။ အားထိန်းချက် (impulse) သည် ရွေ့လျားအားပြောင်းလဲမှုနှင့်ညီသည်ဆိုသော် 4 စက္ကန့်အကုန်တွင် အရာဝတ္ထု၏ ရွေ့လျားအားမှာ မည်မျှနည်း။',
        optionsEn: ['20 kg·m/s', '10 kg·m/s', '2.5 kg·m/s', '40 kg·m/s'],
        optionsMy: ['၂၀ kg·m/s', '၁၀ kg·m/s', '၂.၅ kg·m/s', '၄၀ kg·m/s'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-physics-2',
    subject: 'physics',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Thermal Physics',
    titleMy: 'အပူရူပဗေဒ',
    descriptionEn:
        'Apply specific heat capacity, latent heat, kinetic theory and the gas laws to thermal physics problems.',
    descriptionMy:
        'အပူဆိုင်ရာ ပြဿနာများကို ဖြေရှင်းရန် သီးခြားအပူပမာဏ (specific heat capacity)၊ ဝှက်ကွယ်အပူ (latent heat)၊ ဂက်စ်အနုမြူသီအိုရီနှင့် ဓာတ်ငွေ့ဥပဒေများကို အသုံးချပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'How much thermal energy is required to raise the temperature of 2 kg of water by 10°C? (Specific heat capacity of water = 4200 J/kg°C)',
        questionMy:
            'ရေ 2 kg ၏ အပူချိန်ကို 10°C မြှင့်တင်ရန် လိုအပ်သော အပူစွမ်းအားမှာ မည်မျှနည်း။ (ရေ၏ သီးခြားအပူပမာဏ = 4200 J/kg°C)',
        optionsEn: ['84,000 J', '8,400 J', '42,000 J', '840,000 J'],
        optionsMy: ['၈၄,၀၀၀ J', '၈,၄၀၀ J', '၄၂,၀၀၀ J', '၈၄၀,၀၀၀ J'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is meant by the specific latent heat of fusion of a substance?',
        questionMy:
            'ဒြပ်ပစ္စည်းတစ်ခု၏ အရည်ပျော်ခြင်းဆိုင်ရာ သီးခြားဝှက်ကွယ်အပူ (specific latent heat of fusion) ဆိုသည်မှာ အဘယ်အနက်ရှိသနည်း။',
        optionsEn: [
          'The energy required to change 1 kg of a substance from solid to liquid without any change in temperature',
          'The energy required to raise the temperature of 1 kg of a substance by 1°C',
          'The energy released when 1 kg of a substance freezes and its temperature drops by 1°C',
          'The energy required to change 1 kg of a substance from liquid to gas at its boiling point',
        ],
        optionsMy: [
          'အပူချိန် မပြောင်းလဲဘဲ ဒြပ်ပစ္စည်း ၁ kg ကို အစိုင်အခဲအခြေအနေမှ အရည်အခြေအနေသို့ ပြောင်းလဲရန် လိုအပ်သော စွမ်းအား',
          'ဒြပ်ပစ္စည်း ၁ kg ၏ အပူချိန်ကို ၁°C မြှင့်တင်ရန် လိုအပ်သော စွမ်းအား',
          'ဒြပ်ပစ္စည်း ၁ kg အခဲဖြစ်လာပြီး အပူချိန် ၁°C ကျဆင်းသွားစဉ် ထွက်လာသော စွမ်းအား',
          'ဒြပ်ပစ္စည်း ၁ kg ကို အရည်ဆူနှုတ်ချိန်တွင် အရည်အခြေအနေမှ ဓာတ်ငွေ့အခြေအနေသို့ ပြောင်းလဲရန် လိုအပ်သော စွမ်းအား',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'According to the kinetic theory of matter, what happens to the average kinetic energy of gas particles as the absolute (kelvin) temperature increases?',
        questionMy:
            'ဒြပ်ပစ္စည်း၏ အနုမြူ ရွေ့လျားမှုသီအိုရီ (kinetic theory) အရ အကြွင်းမဲ့အပူချိန် (kelvin) မြင့်တက်လာသည်နှင့်အမျှ ဓာတ်ငွေ့အနုမြူများ၏ ပျမ်းမျှရွေ့လျားစွမ်းအား (kinetic energy) မှာ မည်သို့ဖြစ်လာသနည်း။',
        optionsEn: [
          'It increases proportionally with the absolute temperature',
          'It decreases as the temperature increases',
          'It stays exactly the same regardless of temperature',
          'It drops to zero at any temperature above 0°C',
        ],
        optionsMy: [
          'အကြွင်းမဲ့အပူချိန်နှင့် အချိုးကျ မြင့်တက်လာသည်',
          'အပူချိန်မြင့်တက်လာသည်နှင့်အမျှ လျော့ကျသွားသည်',
          'အပူချိန်မည်သို့ပင်ရှိစေ လုံးဝမပြောင်းလဲဘဲ ရှိနေသည်',
          'အပူချိန် 0°C အထက်တွင် မည်သည့်အချိန်မဆို သုညအထိ ကျဆင်းသွားသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A fixed mass of gas at constant volume has an initial pressure of 2 atm at 300 K. If the temperature is increased to 600 K, what is the new pressure?',
        questionMy:
            'ပမာဏတည်ငြိမ်သော ဓာတ်ငွေ့အလေးချိန်တစ်ခုသည် 300 K တွင် အစပြု ဖိအား 2 atm ရှိသည်။ အပူချိန်ကို 600 K အထိ မြှင့်တင်လိုက်ပါက ဖိအားအသစ်မှာ မည်မျှနည်း။',
        optionsEn: ['4 atm', '2 atm', '1 atm', '8 atm'],
        optionsMy: ['၄ atm', '၂ atm', '၁ atm', '၈ atm'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which method of thermal energy transfer can occur through a vacuum, without needing any particles of matter?',
        questionMy:
            'အရာဝတ္ထု၏ အနုမြူများ မလိုဘဲ ဗဟိုဟင်းလင်း (vacuum) ကနေတဆင့် ဖြစ်ပေါ်နိုင်သော အပူစွမ်းအားလွှဲပြောင်းမှုနည်းလမ်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'Radiation',
          'Conduction',
          'Convection',
          'Both conduction and convection',
        ],
        optionsMy: [
          'ဓာတ်ရောင်ခြည်ဖြင့်ပျံ့နှံ့မှု (radiation)',
          'အပူစီးဆင်းမှု (conduction)',
          'အပူလှိုင်းတက်မှု (convection)',
          'conduction နှင့် convection နှစ်ခုလုံး',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-physics-3',
    subject: 'physics',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Atomic Physics',
    titleMy: 'အက်တမ်ရူပဗေဒ',
    descriptionEn:
        'Explore atomic structure, isotopes, radioactive decay and half-life calculations at IGCSE depth.',
    descriptionMy:
        'အက်တမ်ဖွဲ့စည်းပုံ၊ အိုက်ဆိုတုပ်များ၊ ရေဒီယိုသတ္တိကြွဆုတ်ယုတ်မှုနှင့် တစ်ဝက်သက်တမ်း တွက်ချက်နည်းများကို IGCSE အဆင့်ဖြင့် လေ့လာပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn: 'What defines isotopes of the same element?',
        questionMy:
            'ဒြပ်စင်တစ်ခုတည်း၏ အိုက်ဆိုတုပ်များ (isotopes) ကို မည်သို့သတ်မှတ်သနည်း။',
        optionsEn: [
          'Atoms with the same number of protons but a different number of neutrons',
          'Atoms with the same number of neutrons but a different number of protons',
          'Atoms with the same number of protons and neutrons but different numbers of electrons',
          'Atoms of different elements that happen to share the same mass number',
        ],
        optionsMy: [
          'ပရိုတွန်အရေအတွက်တူညီသော်လည်း နျူထရွန်အရေအတွက် ကွာခြားသော အက်တမ်များ',
          'နျူထရွန်အရေအတွက်တူညီသော်လည်း ပရိုတွန်အရေအတွက် ကွာခြားသော အက်တမ်များ',
          'ပရိုတွန်နှင့် နျူထရွန်အရေအတွက် တူညီသော်လည်း အီလက်ထရွန်အရေအတွက် ကွာခြားသော အက်တမ်များ',
          'အလေးချိန်ဂဏန်း (mass number) တူညီနေသော ဒြပ်စင်မတူသည့် အက်တမ်များ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which type of radioactive decay involves the emission of a helium nucleus (2 protons and 2 neutrons)?',
        questionMy:
            'ဟီလီယမ်နျူကလိယပ် (ပရိုတွန် ၂ လုံးနှင့် နျူထရွန် ၂ လုံး) ကို ထုတ်လွှတ်သော ရေဒီယိုသတ္တိကြွ ဆုတ်ယုတ်မှုအမျိုးအစားမှာ အဘယ်နည်း။',
        optionsEn: [
          'Alpha decay',
          'Beta decay',
          'Gamma decay',
          'Neutron emission',
        ],
        optionsMy: [
          'အယ်လ်ဖာဆုတ်ယုတ်မှု (alpha decay)',
          'ဘီတာဆုတ်ယုတ်မှု (beta decay)',
          'ဂါမာဆုတ်ယုတ်မှု (gamma decay)',
          'နျူထရွန်ထုတ်လွှတ်မှု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A radioactive isotope has a half-life of 5 days. Starting with a sample of activity 80 Bq, what will the activity be after 15 days?',
        questionMy:
            'ရေဒီယိုသတ္တိကြွ အိုက်ဆိုတုပ်တစ်ခု၏ တစ်ဝက်သက်တမ်းမှာ ၅ ရက်ဖြစ်သည်။ စတင်လှုပ်ရှားမှု (activity) 80 Bq ရှိသော နမူနာတစ်ခုသည် ၁၅ ရက်ကြာပြီးနောက် လှုပ်ရှားမှုမှာ မည်မျှကျန်ရှိမည်နည်း။',
        optionsEn: ['10 Bq', '20 Bq', '40 Bq', '5 Bq'],
        optionsMy: ['၁၀ Bq', '၂၀ Bq', '၄၀ Bq', '၅ Bq'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In beta-minus (β⁻) decay, a neutron changes into a proton and an electron is emitted. What happens to the atomic (proton) number of the nucleus?',
        questionMy:
            'ဘီတာမိုင်းနတ် (β⁻) ဆုတ်ယုတ်မှုတွင် နျူထရွန်တစ်လုံးသည် ပရိုတွန်အဖြစ်သို့ ပြောင်းလဲပြီး အီလက်ထရွန်တစ်လုံး ထုတ်လွှတ်လိုက်သည်။ နျူကလိယပ်၏ အက်တမ်ဂဏန်း (ပရိုတွန်ဂဏန်း) မှာ မည်သို့ဖြစ်လာသနည်း။',
        optionsEn: [
          'It increases by 1',
          'It decreases by 1',
          'It stays the same',
          'It increases by 2',
        ],
        optionsMy: [
          '၁ တိုးလာသည်',
          '၁ လျော့နည်းသွားသည်',
          'မပြောင်းလဲဘဲ ရှိနေသည်',
          '၂ တိုးလာသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'When a nucleus undergoes alpha decay, how do its mass number and atomic number change?',
        questionMy:
            'နျူကလိယပ်တစ်ခုသည် အယ်လ်ဖာဆုတ်ယုတ်မှုကို ခံယူသောအခါ ၎င်း၏ အလေးချိန်ဂဏန်း (mass number) နှင့် အက်တမ်ဂဏန်း (atomic number) တို့ မည်သို့ပြောင်းလဲသွားသနည်း။',
        optionsEn: [
          'Mass number decreases by 4 and atomic number decreases by 2',
          'Mass number decreases by 2 and atomic number decreases by 4',
          'Mass number stays the same and atomic number decreases by 2',
          'Mass number decreases by 4 and atomic number increases by 2',
        ],
        optionsMy: [
          'အလေးချိန်ဂဏန်း ၄ လျော့ပြီး အက်တမ်ဂဏန်း ၂ လျော့သည်',
          'အလေးချိန်ဂဏန်း ၂ လျော့ပြီး အက်တမ်ဂဏန်း ၄ လျော့သည်',
          'အလေးချိန်ဂဏန်း မပြောင်းလဲဘဲ အက်တမ်ဂဏန်းသာ ၂ လျော့သည်',
          'အလေးချိန်ဂဏန်း ၄ လျော့ပြီး အက်တမ်ဂဏန်း ၂ တိုးသည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  SecondaryActivityDef(
    id: 'mock-igcse-chemistry-1',
    subject: 'chemistry',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Stoichiometry: Moles and Chemical Calculations',
    titleMy: 'စတွိကီယိုမက်ထရီ - မိုလ်နှင့် ဓာတုတွက်ချက်မှုများ',
    descriptionEn:
        'Master mole calculations, molar mass, empirical formulas, and using '
        'balanced equations to find reacting masses.',
    descriptionMy:
        'မိုလ်တွက်ချက်မှုများ၊ မိုလာမာစ်၊ အင်ပိုင်ရီကယ်ဖော်မြူလာနှင့် '
        'မျှတသောညီမျှခြင်းများကို အသုံးပြု၍ တုံ့ပြန်ပစ္စည်းအလေးချိန်များ '
        'ရှာဖွေတွက်ချက်နည်းများကို ကျွမ်းကျင်စွာ လေ့လာပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'What is the formula used to calculate the number of moles of a '
            'substance?',
        questionMy:
            'ပစ္စည်းတစ်ခု၏ မိုလ်အရေအတွက်ကို တွက်ချက်ရန် အသုံးပြုသော '
            'ညီမျှခြင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'moles = mass ÷ molar mass',
          'moles = mass × molar mass',
          'moles = molar mass ÷ mass',
          'moles = mass ÷ volume',
        ],
        optionsMy: [
          'မိုလ် = အလေးချိန် ÷ မိုလာမာစ်',
          'မိုလ် = အလေးချိန် × မိုလာမာစ်',
          'မိုလ် = မိုလာမာစ် ÷ အလေးချိန်',
          'မိုလ် = အလေးချိန် ÷ ပမာဏ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'How many moles of magnesium oxide (MgO, Mr = 40) are there in '
            '10 g of MgO?',
        questionMy:
            'မဂ္ဂနီစီယမ်အောက်ဆိုဒ် (MgO, Mr = 40) ၁၀ ဂရမ်တွင် မိုလ်မည်မျှ '
            'ပါဝင်သနည်း။',
        optionsEn: ['0.25 mol', '4 mol', '0.4 mol', '400 mol'],
        optionsMy: ['0.25 မိုလ်', '4 မိုလ်', '0.4 မိုလ်', '400 မိုလ်'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            "Avogadro's constant is used to convert between moles and "
            'number of particles. What is its approximate value?',
        questionMy:
            'အက်ဗိုဂက်ဒရိုကိန်းသေကို မိုလ်နှင့် အနုမြူအရေအတွက်အကြား '
            'ပြောင်းလဲရန် အသုံးပြုသည်။ ၎င်း၏ခန့်မှန်းတန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: [
          '6.02 × 10²³ per mole',
          '3.14 × 10²³ per mole',
          '1.00 × 10²³ per mole',
          '6.02 × 10⁻²³ per mole',
        ],
        optionsMy: [
          'တစ်မိုလ်လျှင် 6.02 × 10²³',
          'တစ်မိုလ်လျှင် 3.14 × 10²³',
          'တစ်မိုလ်လျှင် 1.00 × 10²³',
          'တစ်မိုလ်လျှင် 6.02 × 10⁻²³',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A compound contains 40% carbon, 6.7% hydrogen, and 53.3% '
            'oxygen by mass. What is its empirical formula? '
            '(Ar: C = 12, H = 1, O = 16)',
        questionMy:
            'ဒြပ်ပေါင်းတစ်ခုတွင် ကာဗွန် ၄၀%၊ ဟိုက်ဒရိုဂျင် ၆.၇%၊ အောက်ဆီဂျင် '
            '၅၃.၃% အလေးချိန်အလိုက် ပါဝင်သည်။ (Ar: C = 12, H = 1, O = 16) '
            '၎င်း၏ အင်ပိုင်ရီကယ်ဖော်မြူလာမှာ အဘယ်နည်း။',
        optionsEn: ['CH2O', 'C2H4O2', 'CH4O', 'C3H6O3'],
        optionsMy: [
          'CH2O ဖော်မြူလာ',
          'C2H4O2 ဖော်မြူလာ',
          'CH4O ဖော်မြူလာ',
          'C3H6O3 ဖော်မြူလာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In the reaction N2 + 3H2 → 2NH3, what mass of ammonia '
            '(Mr = 17) is produced from 6 g of hydrogen gas (Mr = 2), '
            'assuming complete reaction?',
        questionMy:
            'N2 + 3H2 → 2NH3 ဓာတုညီမျှခြင်းတွင် ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့ ၆ '
            'ဂရမ် (Mr = 2) အပြည့်အဝတုံ့ပြန်ပါက အမိုးနီးယား (Mr = 17) '
            'မည်မျှ ထုတ်လုပ်နိုင်သနည်း။',
        optionsEn: ['34 g', '17 g', '51 g', '6 g'],
        optionsMy: ['34 ဂရမ်', '17 ဂရမ်', '51 ဂရမ်', '6 ဂရမ်'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-chemistry-2',
    subject: 'chemistry',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Organic Chemistry Basics: Hydrocarbons and Functional Groups',
    titleMy:
        'အော်ဂဲနစ်ဓာတုဗေဒ အခြေခံ - ဟိုက်ဒရိုကာဗွန်များနှင့် '
        'လုပ်ဆောင်ချက်အုပ်စုများ',
    descriptionEn:
        'Learn about alkanes, alkenes, homologous series, and how '
        'functional groups determine chemical properties.',
    descriptionMy:
        'အယ်ကိန်းများ၊ အယ်ကင်းများ၊ တူညီအမျိုးအစားစီးရီးနှင့် '
        'လုပ်ဆောင်ချက်အုပ်စုများသည် ဓာတုဂုဏ်သတ္တိများကို မည်သို့ '
        'ဆုံးဖြတ်သည်ကို လေ့လာပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn: 'What is a homologous series?',
        questionMy:
            'တူညီအမျိုးအစားစီးရီး (Homologous series) ဆိုသည်မှာ '
            'အဘယ်နည်း။',
        optionsEn: [
          'A family of compounds with the same general formula and '
              'similar chemical properties, differing by CH2 between '
              'successive members',
          'A group of elements with the same number of protons',
          'A set of isotopes of the same element',
          'A collection of unrelated compounds with random formulas',
        ],
        optionsMy: [
          'ယေဘုယျ ညီမျှခြင်းတူညီပြီး ဆင်တူသောဓာတုဂုဏ်သတ္တိများရှိကာ '
              'အဆက်တစ်ခုနှင့်တစ်ခုအကြား CH2 ဖြင့် ကွာခြားသော '
              'ဒြပ်ပေါင်းမိသားစု',
          'ပရိုတွန်အရေအတွက်တူညီသော ဒြပ်စင်အုပ်စု',
          'ဒြပ်စင်တစ်ခုတည်း၏ အိုင်ဆိုတုပ်များစုစည်းမှု',
          'ကျပန်းညီမျှခြင်းရှိသော မသက်ဆိုင်သည့် ဒြပ်ပေါင်းများစုစည်းမှု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which functional group is present in all alkenes and makes '
            'them react by addition reactions?',
        questionMy:
            'အယ်ကင်းအားလုံးတွင် ပါဝင်ပြီး ပေါင်းစပ်တုံ့ပြန်မှု (addition '
            'reaction) ဖြင့် တုံ့ပြန်စေသော လုပ်ဆောင်ချက်အုပ်စုမှာ '
            'အဘယ်နည်း။',
        optionsEn: [
          'A carbon-carbon double bond (C=C)',
          'A single carbon-carbon bond (C-C)',
          'A hydroxyl group (-OH)',
          'A carboxylic acid group (-COOH)',
        ],
        optionsMy: [
          'ကာဗွန်-ကာဗွန် နှစ်ထပ်ချည်နှောင်မှု (C=C)',
          'ကာဗွန်-ကာဗွန် တစ်ထပ်ချည်နှောင်မှု (C-C)',
          'ဟိုက်ဒရောက်ဆီးအုပ်စု (-OH)',
          'ကာဗောက်ဆီလစ်အက်ဆစ်အုပ်စု (-COOH)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'How can you use bromine water to distinguish between an '
            'alkane and an alkene?',
        questionMy:
            'အယ်ကိန်းနှင့် အယ်ကင်းကို ဗရိုမင်းရေဖြင့် မည်သို့ '
            'ခွဲခြားနိုင်သနည်း။',
        optionsEn: [
          'Bromine water is decolorized rapidly by an alkene but stays '
              'orange with an alkane',
          'Bromine water turns blue with an alkane but stays orange with '
              'an alkene',
          'Bromine water has no reaction with either alkanes or alkenes',
          'Bromine water produces a white precipitate with both alkanes '
              'and alkenes',
        ],
        optionsMy: [
          'အယ်ကင်းသည် ဗရိုမင်းရေ၏ အရောင်ကို လျင်မြန်စွာ ပျောက်ကွယ်စေပြီး '
              'အယ်ကိန်းနှင့်မူ လိမ္မော်ရောင်အတိုင်း ရှိနေသည်',
          'အယ်ကိန်းသည် ဗရိုမင်းရေကို ပြာရောင်ပြောင်းစေပြီး အယ်ကင်းနှင့်မူ '
              'လိမ္မော်ရောင်အတိုင်း ရှိနေသည်',
          'ဗရိုမင်းရေသည် အယ်ကိန်းနှင့်အယ်ကင်း နှစ်မျိုးစလုံးနှင့် '
              'မည်သည့်တုံ့ပြန်မှုမျှ မရှိချေ',
          'ဗရိုမင်းရေသည် အယ်ကိန်းနှင့်အယ်ကင်း နှစ်မျိုးစလုံးနှင့် '
              'အဖြူရောင်အနည်ကျ ဖြစ်ပေါ်စေသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What type of reaction converts an alkene into an alcohol '
            'using steam and a catalyst?',
        questionMy:
            'အယ်ကင်းတစ်ခုကို ရေငွေ့နှင့် ကက်တလစ်သုံး၍ '
            'အယ်လ်ကိုဟောအဖြစ် ပြောင်းလဲစေသော တုံ့ပြန်မှုအမျိုးအစားမှာ '
            'အဘယ်နည်း။',
        optionsEn: [
          'Catalytic hydration, where steam adds across the double bond '
              'in the presence of a catalyst',
          'Combustion, where the alkene burns completely in oxygen',
          'Polymerization, where many alkene molecules join into a long '
              'chain',
          'Fermentation, where sugar is converted by yeast',
        ],
        optionsMy: [
          'ကက်တလစ်တစ်မျိုးရှေ့မှောက်တွင် ရေငွေ့သည် '
              'နှစ်ထပ်ချည်နှောင်မှုပေါ်တွင် ပေါင်းစပ်ဝင်ရောက်သော '
              'ကက်တလစ်ရေဓာတ်ပေါင်းမှု (catalytic hydration)',
          'အယ်ကင်းကို အောက်ဆီဂျင်ထဲတွင် အပြည့်အဝလောင်ကျွမ်းစေသော '
              'လောင်ကျွမ်းမှု',
          'အယ်ကင်းမော်လီကျူးများစွာ ရှည်လျားသောကွင်းဆက်ဖြစ်အောင် '
              'ပေါင်းစည်းသော ပေါလီမာဖြစ်မှု',
          'တည်ဆေးသုံး၍ သကြားကို ပြောင်းလဲစေသော ပေါင်ခေါက်ဖော်မှု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which statement correctly describes addition polymerization '
            'of ethene to form poly(ethene)?',
        questionMy:
            'အီသင်း (ethene) အနုမြူများပေါင်းစည်း၍ ပေါလီအီသင်း ဖြစ်စေသော '
            'ပေါင်းစပ်ပေါလီမာဖြစ်မှု (addition polymerization) ကို '
            'မှန်ကန်စွာ ဖော်ပြသည့် ဖော်ပြချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Many ethene monomers join together through their double '
              'bonds, with no other product formed',
          'Ethene molecules react with water to release oxygen gas',
          'Ethene monomers join together releasing a small molecule such '
              'as water at each link',
          'Ethene decomposes into carbon and hydrogen gas',
        ],
        optionsMy: [
          'အီသင်းမိုနိုမာများစွာသည် ၎င်းတို့၏ '
              'နှစ်ထပ်ချည်နှောင်မှုများမှတစ်ဆင့် ပေါင်းစည်းကြပြီး '
              'အခြားထုတ်ကုန် မည်သည့်ပစ္စည်းမျှ မဖြစ်ပေါ်ချေ',
          'အီသင်းမော်လီကျူးများသည် ရေနှင့်တုံ့ပြန်ကာ '
              'အောက်ဆီဂျင်ဓာတ်ငွေ့ ထွက်ရှိစေသည်',
          'အီသင်းမိုနိုမာများသည် ချိတ်ဆက်တိုင်း ရေကဲ့သို့သော '
              'အနုမြူငယ်တစ်ခုကို ထုတ်လွှတ်ပြီး ပေါင်းစည်းကြသည်',
          'အီသင်းသည် ကာဗွန်နှင့် ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့အဖြစ်သို့ '
              'ပြိုကွဲသွားသည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-chemistry-3',
    subject: 'chemistry',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Electrolysis: Principles and Applications',
    titleMy: 'လျှပ်စစ်ဓာတ်ခွဲမှု - မူများနှင့် အသုံးချမှုများ',
    descriptionEn:
        'Understand how electrolysis breaks down ionic compounds and '
        'predict the products formed at each electrode.',
    descriptionMy:
        'လျှပ်စစ်ဓာတ်ခွဲမှုသည် အိုင်းယွန်းဒြပ်ပေါင်းများကို မည်သို့ '
        'ခွဲထုတ်သည်ကို နားလည်ပြီး လျှပ်ကူးတိုင်တစ်ခုစီတွင် '
        'ဖြစ်ပေါ်လာမည့် ရလဒ်ပစ္စည်းများကို ခန့်မှန်းနိုင်စေရန် '
        'လေ့လာပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'What must be true of an ionic compound for it to undergo '
            'electrolysis?',
        questionMy:
            'အိုင်းယွန်းဒြပ်ပေါင်းတစ်ခု လျှပ်စစ်ဓာတ်ခွဲမှုခံယူနိုင်ရန် '
            'မည်သည့်အခြေအနေရှိရမည်နည်း။',
        optionsEn: [
          'It must be molten or dissolved in water so that its ions are '
              'free to move',
          'It must be a solid at room temperature',
          'It must contain only covalent bonds',
          'It must be insoluble in every solvent',
        ],
        optionsMy: [
          'အိုင်းယွန်းများ လွတ်လပ်စွာ ရွေ့လျားနိုင်ရန် အရည်ပျော်ထားသော '
              '(သို့) ရေတွင်ပျော်ဝင်ထားသော အခြေအနေရှိရမည်',
          'အခန်းအပူချိန်တွင် အစိုင်အခဲအခြေအနေ ရှိရမည်',
          'ကိုဗာလင့်ဆက်များသာ ပါဝင်ရမည်',
          'ဖျော်ရည်တိုင်းတွင် မပျော်ဝင်ရ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'During the electrolysis of molten lead(II) bromide, at which '
            'electrode is lead metal produced, and why?',
        questionMy:
            'အရည်ပျော် ခဲ(II)ဘရိုမိုက် (lead(II) bromide) ကို '
            'လျှပ်စစ်ဓာတ်ခွဲစဉ် ခဲသတ္တု မည်သည့်လျှပ်ကူးတိုင်တွင် '
            'ထွက်ရှိပြီး အဘယ့်ကြောင့်နည်း။',
        optionsEn: [
          'At the cathode (negative electrode), because positive lead '
              'ions gain electrons there',
          'At the anode (positive electrode), because positive lead ions '
              'lose electrons there',
          'At the cathode, because bromide ions lose electrons there',
          'At the anode, because bromide ions gain electrons there',
        ],
        optionsMy: [
          'ကက်သုတ် (အနှုတ်လျှပ်ကူးတိုင်) တွင် ထွက်ရှိသည်၊ '
              'အဘယ်ကြောင့်ဆိုသော် အားသုံးခဲအိုင်းယွန်းများသည် '
              'ထို့နေရာတွင် အီလက်ထရွန်များရရှိသောကြောင့်ဖြစ်သည်',
          'အနုဒ် (အပေါင်းလျှပ်ကူးတိုင်) တွင် ထွက်ရှိသည်၊ '
              'အဘယ်ကြောင့်ဆိုသော် အားသုံးခဲအိုင်းယွန်းများသည် '
              'ထို့နေရာတွင် အီလက်ထရွန်များ ဆုံးရှုံးသောကြောင့်ဖြစ်သည်',
          'ကက်သုတ်တွင် ထွက်ရှိသည်၊ အဘယ်ကြောင့်ဆိုသော် '
              'ဘရိုမိုက်အိုင်းယွန်းများသည် အီလက်ထရွန်များ '
              'ဆုံးရှုံးသောကြောင့်ဖြစ်သည်',
          'အနုဒ်တွင် ထွက်ရှိသည်၊ အဘယ်ကြောင့်ဆိုသော် '
              'ဘရိုမိုက်အိုင်းယွန်းများသည် အီလက်ထရွန်များ '
              'ရရှိသောကြောင့်ဖြစ်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In the electrolysis of aqueous copper(II) sulfate using '
            'inert (carbon) electrodes, what is produced at the anode?',
        questionMy:
            'ကိုပါ(II)ဆာလဖိတ် ရေဖျော်ရည်ကို မတုံ့ပြန်တတ်သော (inert) '
            'ကာဗွန်လျှပ်ကူးတိုင်များဖြင့် လျှပ်စစ်ဓာတ်ခွဲစဉ် '
            'အနုဒ်တွင် မည်သည့်ရလဒ်ပစ္စည်း ထွက်ရှိသနည်း။',
        optionsEn: [
          'Oxygen gas, because hydroxide ions are discharged in '
              'preference to sulfate ions',
          'Hydrogen gas, because hydrogen ions are discharged in '
              'preference to copper ions',
          'Copper metal, because copper ions are discharged in '
              'preference to hydrogen ions',
          'Sulfur dioxide gas, because sulfate ions decompose directly',
        ],
        optionsMy: [
          'အောက်ဆီဂျင်ဓာတ်ငွေ့ ထွက်ရှိသည်၊ အဘယ်ကြောင့်ဆိုသော် '
              'ဟိုက်ဒရောက်ဆိုက်အိုင်းယွန်းများသည် ဆာလဖိတ်အိုင်းယွန်းများထက် '
              'ဦးစားပေး လွှတ်ထုတ်ခံရသောကြောင့်ဖြစ်သည်',
          'ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့ ထွက်ရှိသည်၊ အဘယ်ကြောင့်ဆိုသော် '
              'ဟိုက်ဒရိုဂျင်အိုင်းယွန်းများသည် ကိုပါအိုင်းယွန်းများထက် '
              'ဦးစားပေး လွှတ်ထုတ်ခံရသောကြောင့်ဖြစ်သည်',
          'ကိုပါသတ္တု ထွက်ရှိသည်၊ အဘယ်ကြောင့်ဆိုသော် '
              'ကိုပါအိုင်းယွန်းများသည် ဟိုက်ဒရိုဂျင်အိုင်းယွန်းများထက် '
              'ဦးစားပေး လွှတ်ထုတ်ခံရသောကြောင့်ဖြစ်သည်',
          'ဆာလဖာဒိုင်အောက်ဆိုဒ်ဓာတ်ငွေ့ ထွက်ရှိသည်၊ '
              'အဘယ်ကြောင့်ဆိုသော် ဆာလဖိတ်အိုင်းယွန်းများ '
              'တိုက်ရိုက်ပြိုကွဲသောကြောင့်ဖြစ်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why is electrolysis used to extract reactive metals such as '
            'aluminium from their ores, rather than reduction with '
            'carbon?',
        questionMy:
            'အလူမီနီယမ်ကဲ့သို့ ပြင်းထန်စွာအားသုံးသော သတ္တုများကို '
            '၎င်းတို့၏ သတ္တုသတ္တိုက်များမှ ကာဗွန်ဖြင့် လျှော့ချမှု အစား '
            'လျှပ်စစ်ဓာတ်ခွဲမှုဖြင့် ထုတ်ယူရသည်မှာ အဘယ့်ကြောင့်နည်း။',
        optionsEn: [
          'Aluminium is too reactive to be displaced by carbon, so '
              'electrolysis is needed to separate it from its ore',
          'Aluminium ore does not contain any metal ions',
          'Carbon reduction always produces purer aluminium than '
              'electrolysis',
          'Electrolysis is used only because it is cheaper than any '
              'other method',
        ],
        optionsMy: [
          'အလူမီနီယမ်သည် ကာဗွန်ဖြင့် ဖယ်ရှားနိုင်ရန် အလွန်ပြင်းထန်စွာ '
              'အားသုံးသောကြောင့် လျှပ်စစ်ဓာတ်ခွဲမှုဖြင့်သာ '
              '၎င်း၏သတ္တိုက်မှ ခွဲထုတ်ရန် လိုအပ်သည်',
          'အလူမီနီယမ်သတ္တိုက်တွင် သတ္တုအိုင်းယွန်းများ '
              'လုံးဝမပါဝင်ချေ',
          'ကာဗွန်ဖြင့် လျှော့ချမှုသည် လျှပ်စစ်ဓာတ်ခွဲမှုထက် '
              'စင်ကြယ်သော အလူမီနီယမ်ကို အမြဲထုတ်ပေးသည်',
          'လျှပ်စစ်ဓာတ်ခွဲမှုကို အခြားနည်းလမ်းများထက် '
              'ဈေးသက်သာသောကြောင့်သာ အသုံးပြုခြင်းဖြစ်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What happens at the electrodes during the electrolysis of '
            'concentrated aqueous sodium chloride (brine), a process '
            'used industrially to manufacture chlorine, hydrogen, and '
            'sodium hydroxide?',
        questionMy:
            'ကလိုရင်း၊ ဟိုက်ဒရိုဂျင်နှင့် ဆိုဒီယမ်ဟိုက်ဒရောက်ဆိုဒ် '
            'စက်မှုထုတ်လုပ်ရာတွင် အသုံးပြုသော အနှောင်း(ဆားရေအနှောင်း) '
            'ဆိုဒီယမ်ကလိုရိုက် ဖျော်ရည်ကို လျှပ်စစ်ဓာတ်ခွဲစဉ် '
            'လျှပ်ကူးတိုင်များတွင် မည်သို့ဖြစ်ပျက်သနည်း။',
        optionsEn: [
          'Chlorine gas forms at the anode and hydrogen gas forms at the '
              'cathode, leaving sodium hydroxide solution behind',
          'Sodium metal forms at the cathode and oxygen gas forms at the '
              'anode',
          'Chlorine gas forms at the cathode and hydrogen gas forms at '
              'the anode',
          'Sodium chloride crystals reform at both electrodes',
        ],
        optionsMy: [
          'အနုဒ်တွင် ကလိုရင်းဓာတ်ငွေ့ ဖြစ်ပေါ်ပြီး ကက်သုတ်တွင် '
              'ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့ ဖြစ်ပေါ်ကာ ဆိုဒီယမ်ဟိုက်ဒရောက်ဆိုဒ် '
              'ဖျော်ရည် ကျန်ရှိသည်',
          'ကက်သုတ်တွင် ဆိုဒီယမ်သတ္တု ဖြစ်ပေါ်ပြီး အနုဒ်တွင် '
              'အောက်ဆီဂျင်ဓာတ်ငွေ့ ဖြစ်ပေါ်သည်',
          'ကက်သုတ်တွင် ကလိုရင်းဓာတ်ငွေ့ ဖြစ်ပေါ်ပြီး အနုဒ်တွင် '
              'ဟိုက်ဒရိုဂျင်ဓာတ်ငွေ့ ဖြစ်ပေါ်သည်',
          'ဆိုဒီယမ်ကလိုရိုက် ပုံဆောင်ခဲများ '
              'လျှပ်ကူးတိုင်နှစ်ခုစလုံးတွင် ပြန်လည်ဖြစ်ပေါ်လာသည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  SecondaryActivityDef(
    id: 'mock-igcse-biology-1',
    subject: 'biology',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Cell Biology and Membrane Transport',
    titleMy: 'ဆဲလ်ဇီဝဗေဒနှင့် အမြှေးပါး ပို့ဆောင်မှု',
    descriptionEn:
        'Examine cell ultrastructure and the mechanisms of diffusion, osmosis, and active transport across membranes.',
    descriptionMy:
        'ဆဲလ်၏ အသေးစိတ်ဖွဲ့စည်းပုံနှင့် အမြှေးပါးများကို ဖြတ်၍ ဒစ်ဖျူးရှင်း၊ ဩစမိုးစစ်နှင့် အက်တစ်ဗ် ပို့ဆောင်မှုတို့၏ လုပ်ဆောင်ပုံများကို လေ့လာပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'Which structure controls the movement of substances into and out of a cell?',
        questionMy:
            'ဆဲလ်တစ်ခုအတွင်းသို့ဝင်ရောက်ခြင်းနှင့် အထွက်ခြင်းကို ထိန်းချုပ်ပေးသော ဖွဲ့စည်းပုံမှာ အဘယ်နည်း။',
        optionsEn: [
          'The partially permeable cell surface membrane',
          'The cell wall',
          'The nucleolus',
          'The Golgi apparatus',
        ],
        optionsMy: [
          'တစ်ပိုင်းတစ်စ ထိုးဖောက်ဝင်ရောက်နိုင်သော ဆဲလ်မျက်နှာပြင်အမြှေးပါး',
          'ဆဲလ်နံရံ',
          'နျူကလီယိုလပ်စ်',
          'ဂေါ့ဂျီ ကိရိယာ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A cell placed in a hypertonic solution will lose water by osmosis. What is the best definition of osmosis?',
        questionMy:
            'ဟိုက်ပါတွန်းနစ် ဖျော်ရည်တွင်ထားရှိသော ဆဲလ်တစ်ခုသည် ဩစမိုးစစ်ဖြင့် ရေဆုံးရှုံးမည်ဖြစ်သည်။ ဩစမိုးစစ်၏ အနက်ဖွင့်ဆိုချက် အကောင်းဆုံးမှာ အဘယ်နည်း။',
        optionsEn: [
          'The net movement of water molecules from a region of higher water potential to a region of lower water potential through a partially permeable membrane',
          'The movement of solute particles from a high to a low concentration',
          'The movement of any particle against a concentration gradient using ATP',
          'The bulk movement of large molecules by vesicles',
        ],
        optionsMy: [
          'ရေခွက်အလားအလာ မြင့်သည့်ဒေသမှ နိမ့်သည့်ဒေသသို့ တစ်ပိုင်းတစ်စ ထိုးဖောက်ဝင်ရောက်နိုင်သော အမြှေးပါးကိုဖြတ်၍ ရေမော်လီကျူးများ၏ အသားတင်ရွေ့လျားမှု',
          'ဖျော်ရည်ပါဝင်ပစ္စည်းအမှုန်များ ပြင်းအားများသည့်နေရာမှ နည်းသည့်နေရာသို့ ရွေ့လျားမှု',
          'ATP အသုံးပြု၍ အမှုန်တစ်ခုခုကို ပြောင်းလဲမှုလမ်းကြောင်းနှင့် ဆန့်ကျင်၍ ရွေ့လျားမှု',
          'ဗက်စီကယ်များဖြင့် ကြီးမားသောမော်လီကျူးများ အစုလိုက်ရွေ့လျားမှု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Root hair cells absorb mineral ions from the soil even when the ion concentration in the soil is lower than inside the cell. Which process explains this?',
        questionMy:
            'အမြစ်မွှေးဆဲလ်များသည် မြေဆီလွှာအတွင်းရှိ သတ္တုဓာတ်အိုင်းယွန်းများ၏ ပြင်းအားသည် ဆဲလ်အတွင်းထက် နည်းနေသော်လည်း ၎င်းတို့ကို စုပ်ယူနိုင်သည်။ ဤအခြင်းအရာကို မည်သည့်လုပ်ငန်းစဉ်ဖြင့် ရှင်းပြနိုင်သနည်း။',
        optionsEn: [
          'Active transport, which uses ATP to move ions against their concentration gradient',
          'Diffusion, because ions always move down a concentration gradient',
          'Osmosis, because water carries the ions passively',
          'Filtration through the cell wall pores',
        ],
        optionsMy: [
          'အက်တစ်ဗ် ပို့ဆောင်မှု၊ ATP ကိုအသုံးပြု၍ အိုင်းယွန်းများကို ၎င်းတို့၏ ပြောင်းလဲမှုလမ်းကြောင်းနှင့် ဆန့်ကျင်ရွေ့လျားစေခြင်း',
          'ဒစ်ဖျူးရှင်း၊ အိုင်းယွန်းများသည် အမြဲတမ်း ပြင်းအားများရာမှ နည်းရာသို့ ရွေ့လျားသောကြောင့်',
          'ဩစမိုးစစ်၊ ရေက အိုင်းယွန်းများကို သက်ဝင်စွာသယ်ဆောင်ပေးသောကြောင့်',
          'ဆဲလ်နံရံအပေါက်ငယ်များမှတစ်ဆင့် စစ်ထုတ်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which pair correctly identifies a structure found in plant cells but not in animal cells, and its main function?',
        questionMy:
            'တိရစ္ဆာန်ဆဲလ်တွင်မတွေ့ရဘဲ အပင်ဆဲလ်တွင်သာတွေ့ရသော ဖွဲ့စည်းပုံနှင့် ၎င်း၏ အဓိကလုပ်ဆောင်ချက်ကို မှန်ကန်စွာဖော်ပြသည့် အတွဲမှာ အဘယ်နည်း။',
        optionsEn: [
          'Chloroplast — absorbs light energy for photosynthesis',
          'Mitochondrion — releases energy through aerobic respiration',
          'Ribosome — synthesises proteins',
          'Nucleus — controls the activities of the cell',
        ],
        optionsMy: [
          'ကလိုရိုပလပ်စ် — ဓာတ်တိုးဖြစ်စဉ်အတွက် အလင်းစွမ်းအင်ကို စုပ်ယူသည်',
          'မိုက်တိုကွန်ဒရီးယား — အောက်ဆီဂျင်ရှိသက်ရှူခြင်းမှ စွမ်းအင်ထုတ်ပေးသည်',
          'ရိုက်ဘိုဆုမ်း — ပရိုတိန်းများကို ပေါင်းစပ်ဖန်တီးသည်',
          'နျူကလိယပ်စ် — ဆဲလ်၏ လုပ်ငန်းဆောင်တာများကို ထိန်းချုပ်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A student increases the temperature of a diffusion experiment. Which explanation correctly accounts for the resulting increase in diffusion rate?',
        questionMy:
            'ကျောင်းသားတစ်ဦးသည် ဒစ်ဖျူးရှင်းစမ်းသပ်မှုတစ်ခု၏ အပူချိန်ကို မြှင့်တင်လိုက်သည်။ ဒစ်ဖျူးရှင်းနှုန်း တိုးလာခြင်း၏ အကြောင်းရင်းကို မှန်ကန်စွာရှင်းပြသည့်အချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Particles gain more kinetic energy and move faster, increasing collisions and net movement',
          'The concentration gradient becomes steeper automatically',
          'The membrane becomes more permeable regardless of particle size',
          'ATP production increases, powering the particles across the membrane',
        ],
        optionsMy: [
          'အမှုန်များသည် ကိုင်နက်တစ်စွမ်းအင်ပိုမိုရရှိပြီး ပိုမိုမြန်ဆန်စွာရွေ့လျားသဖြင့် တိုက်မိမှုနှင့် အသားတင်ရွေ့လျားမှု တိုးလာသည်',
          'ပြင်းအားပြောင်းလဲမှုလမ်းကြောင်းသည် အလိုအလျောက် ပိုမိုနက်ရှိုင်းလာသည်',
          'အမှုန်အရွယ်အစားနှင့်မသက်ဆိုင်ဘဲ အမြှေးပါးသည် ပိုမိုထိုးဖောက်ဝင်ရောက်နိုင်လာသည်',
          'ATP ထုတ်လုပ်မှု တိုးလာပြီး အမှုန်များကို အမြှေးပါးဖြတ်ကျော်စေရန် စွမ်းအင်ပေးသည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-biology-2',
    subject: 'biology',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Coordination and Response',
    titleMy: 'ညှိနှိုင်းမှုနှင့် တုံ့ပြန်မှု',
    descriptionEn:
        'Investigate how the nervous system and hormonal system coordinate rapid and long-term responses in the body.',
    descriptionMy:
        'အာရုံကြောစနစ်နှင့် ဟော်မုန်းစနစ်တို့သည် ခန္ဓာကိုယ်အတွင်း လျင်မြန်သောနှင့် ရေရှည်တုံ့ပြန်မှုများကို မည်သို့ညှိနှိုင်းသည်ကို လေ့လာပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'What is the correct sequence of a simple reflex arc, from stimulus to response?',
        questionMy:
            'ရိုးရှင်းသော ရီဖလက်ခ်ဆ် အာခ် (reflex arc) ၏ လှုံ့ဆော်မှုမှ တုံ့ပြန်မှုအထိ မှန်ကန်သောအစီအစဉ်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Receptor → sensory neurone → relay neurone → motor neurone → effector',
          'Effector → motor neurone → relay neurone → sensory neurone → receptor',
          'Receptor → motor neurone → sensory neurone → effector',
          'Sensory neurone → receptor → effector → motor neurone',
        ],
        optionsMy: [
          'အာရုံခံကိရိယာ → အာရုံပို့ ကြောဆဲလ် → ဆက်သွယ်ပေးကြောဆဲလ် → လှုပ်ရှားစေကြောဆဲလ် → တုံ့ပြန်အင်္ဂါ',
          'တုံ့ပြန်အင်္ဂါ → လှုပ်ရှားစေကြောဆဲလ် → ဆက်သွယ်ပေးကြောဆဲလ် → အာရုံပို့ကြောဆဲလ် → အာရုံခံကိရိယာ',
          'အာရုံခံကိရိယာ → လှုပ်ရှားစေကြောဆဲလ် → အာရုံပို့ကြောဆဲလ် → တုံ့ပြန်အင်္ဂါ',
          'အာရုံပို့ကြောဆဲလ် → အာရုံခံကိရိယာ → တုံ့ပြန်အင်္ဂါ → လှုပ်ရှားစေကြောဆဲလ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Why are reflex actions important for survival?',
        questionMy:
            'ရီဖလက်ခ်ဆ် လှုပ်ရှားမှုများသည် အသက်ရှင်ကျန်ရစ်ခြင်းအတွက် အရေးကြီးရသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'They are automatic and very fast, protecting the body from harm before conscious thought occurs',
          'They require conscious decision-making, allowing careful responses',
          'They only occur in plants, not animals',
          'They are controlled entirely by hormones rather than neurones',
        ],
        optionsMy: [
          '၎င်းတို့သည် အလိုအလျောက်ဖြစ်ပြီး အလွန်မြန်ဆန်သဖြင့် သတိထားဆင်ခြင်မှုမတိုင်မီ ခန္ဓာကိုယ်ကို အန္တရာယ်မှကာကွယ်ပေးသည်',
          '၎င်းတို့သည် သတိထားဆင်ခြင်ဆုံးဖြတ်မှုကို လိုအပ်ပြီး သေချာသောတုံ့ပြန်မှုများကို ခွင့်ပြုသည်',
          '၎င်းတို့သည် တိရစ္ဆာန်များတွင်မဟုတ်ဘဲ အပင်များတွင်သာ ဖြစ်ပေါ်သည်',
          '၎င်းတို့ကို ကြောဆဲလ်များမဟုတ်ဘဲ ဟော်မုန်းများကသာ လုံးဝထိန်းချုပ်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'How does the hormonal (endocrine) system typically differ from the nervous system in the way it coordinates responses?',
        questionMy:
            'ဟော်မုန်းစနစ် (အန်ဒိုကရင်း) သည် တုံ့ပြန်မှုများကို ညှိနှိုင်းသည့်နည်းလမ်းအရ အာရုံကြောစနစ်နှင့် မည်သို့ကွဲပြားသနည်း။',
        optionsEn: [
          'It sends chemical messages via the bloodstream, acting more slowly but for a longer duration',
          'It sends electrical impulses along neurones, acting more slowly but for a shorter duration',
          'It only affects a single, precisely targeted cell at a time',
          'It cannot coordinate any long-term changes in the body',
        ],
        optionsMy: [
          'သွေးလွှတ်ကြောများမှတစ်ဆင့် ဓာတုတုတ်ချက်များ ပေးပို့ပြီး ပိုမိုနှေးကွေး၍ ကာလပိုရှည်စွာ လုပ်ဆောင်သည်',
          'ကြောဆဲလ်များတစ်လျှောက် လျှပ်စစ်လှုံ့ဆော်မှုများ ပေးပို့ပြီး ပိုမိုနှေးကွေး၍ ကာလတိုတိုသာ လုပ်ဆောင်သည်',
          'တိကျစွာ ရည်ရွယ်ထားသော ဆဲလ်တစ်ခုတည်းကိုသာ တစ်ကြိမ်လျှင် သက်ရောက်စေသည်',
          'ခန္ဓာကိုယ်အတွင်း ရေရှည်ပြောင်းလဲမှုများကို လုံးဝညှိနှိုင်းနိုင်ခြင်းမရှိပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'The pupil of the eye becomes smaller in bright light. Which mechanism describes how this response is achieved?',
        questionMy:
            'မျက်လုံး၏ မျက်ကလေးသည် အလင်းတောက်ပသောအခါ ပိုသေးငယ်လာသည်။ ဤတုံ့ပြန်မှုကို မည်သည့်လုပ်ငန်းစဉ်ဖြင့် ရှင်းပြနိုင်သနည်း။',
        optionsEn: [
          'Circular muscles in the iris contract while radial muscles relax, narrowing the pupil',
          'The lens changes shape to block excess light from entering',
          'The retina physically shrinks to reduce the light-sensitive area',
          'The optic nerve stops transmitting signals temporarily',
        ],
        optionsMy: [
          'အိုင်းရစ်ရှိ စက်ဝိုင်းကြွက်သားများ တွန့်ကျုံပြီး ရေဒီယယ်ကြွက်သားများ ပြေလျော့သွားသဖြင့် မျက်ကလေးကျဉ်းသွားသည်',
          'လင်းစ်၏ပုံသဏ္ဍာန် ပြောင်းလဲသွားပြီး အလင်းအလွန်အကျွံဝင်ရောက်ခြင်းကို ပိတ်ဆို့သည်',
          'ရက်တီနာသည် ရုပ်ပိုင်းဆိုင်ရာ ကျုံ့သွားပြီး အလင်းခံနိုင်သောနေရာကို လျှော့ချသည်',
          'အော်ပတစ်ခ်ကြောသည် ခေတ္တစိတ်ရိုက်ချက် ပေးပို့မှုရပ်တန့်သွားသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Which statement correctly explains negative feedback in maintaining a stable internal environment?',
        questionMy:
            'တည်ငြိမ်သော အတွင်းပိုင်းပတ်ဝန်းကျင်ကို ထိန်းသိမ်းရာတွင် အနုတ်လက္ခဏာ တုံ့ပြန်မှု (negative feedback) ကို မှန်ကန်စွာရှင်းပြသည့် ဖော်ပြချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A change away from the normal level triggers a response that reverses the change back towards normal',
          'A change away from the normal level triggers a response that pushes the level even further away',
          'It only operates during exercise and not at rest',
          'It requires conscious control by the brain at all times',
        ],
        optionsMy: [
          'ပုံမှန်အဆင့်မှ ပြောင်းလဲမှုတစ်ခုသည် ထိုပြောင်းလဲမှုကို ပုံမှန်အဆင့်သို့ ပြန်ပြောင်းပေးသည့် တုံ့ပြန်မှုတစ်ခုကို လှုံ့ဆော်ပေးသည်',
          'ပုံမှန်အဆင့်မှ ပြောင်းလဲမှုတစ်ခုသည် ထိုအဆင့်ကို ပို၍ဝေးအောင် တွန်းပို့ပေးသည့် တုံ့ပြန်မှုကို လှုံ့ဆော်ပေးသည်',
          '၎င်းသည် လေ့ကျင့်ခန်းလုပ်နေစဉ်တွင်သာ လုပ်ဆောင်ပြီး နားနေချိန်တွင် မလုပ်ဆောင်ပါ',
          '၎င်းအတွက် ဦးနှောက်၏ သတိထားထိန်းချုပ်မှု အမြဲတမ်းလိုအပ်သည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-biology-3',
    subject: 'biology',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Human Reproduction and Genetics',
    titleMy: 'လူသား မျိုးပွားခြင်းနှင့် မျိုးရိုးဗီဇ',
    descriptionEn:
        'Study the human reproductive system, the menstrual cycle, and how genetic crosses predict inheritance patterns.',
    descriptionMy:
        'လူသား မျိုးပွားစနစ်၊ ရာသီစက်ဝန်းနှင့် မျိုးရိုးဗီဇ ကူးစက်မှုပုံစံများကို မျိုးရိုးဗီဇ ဖြတ်ခြင်းများဖြင့် မည်သို့ခန့်မှန်းသည်ကို လေ့လာပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'Where does fertilisation normally occur in the human female reproductive system?',
        questionMy:
            'လူသားမိန်းမ မျိုးပွားစနစ်တွင် သန္ဓေအောင်ခြင်းသည် ပုံမှန်အားဖြင့် မည်သည့်နေရာတွင် ဖြစ်ပျက်သနည်း။',
        optionsEn: [
          'In the oviduct (fallopian tube)',
          'In the uterus',
          'In the ovary',
          'In the vagina',
        ],
        optionsMy: [
          'သားနှင့်ဥအိမ်ချိတ်ကြော (fallopian tube)',
          'သားအိမ်',
          'ဥအိမ်',
          'အင်ဒေါ်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the main function of the placenta during pregnancy?',
        questionMy:
            'ကိုယ်ဝန်ဆောင်စဉ် အချင်းအရေး (placenta) ၏ အဓိကလုပ်ဆောင်ချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'It allows exchange of nutrients, oxygen, and waste between mother and foetus while keeping their blood separate',
          'It produces the eggs that will be fertilised',
          'It directly mixes the blood of mother and foetus for faster nutrient transfer',
          'It stores the foetus until birth without any exchange of substances',
        ],
        optionsMy: [
          'မိခင်နှင့် သန္ဓေသားတို့၏ သွေးများကို သီးခြားစီထားရှိစေရင်း အာဟာရ၊ အောက်ဆီဂျင်နှင့် စွန့်ပစ်ပစ္စည်းများ ဖလှယ်ပေးသည်',
          'သန္ဓေအောင်ခံရမည့် ဥများကို ထုတ်လုပ်ပေးသည်',
          'အာဟာရ ပိုမိုမြန်ဆန်စွာ ပို့ဆောင်နိုင်ရန် မိခင်နှင့်သန္ဓေသား၏ သွေးများကို တိုက်ရိုက်ရောစပ်ပေးသည်',
          'မည်သည့်ပစ္စည်းဖလှယ်မှုမျှမရှိဘဲ မွေးဖွားချိန်အထိ သန္ဓေသားကို သိမ်းဆည်းထားပေးသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In humans, cystic fibrosis is caused by a recessive allele (f). If both parents are heterozygous carriers (Ff x Ff), what is the probability that a child will have cystic fibrosis?',
        questionMy:
            'လူသားများတွင် ဆစ်စတစ်ဖိုက်ဘရိုးဆစ်ရောဂါသည် ဝှက်လျှိုးအယ်လီး (f) ကြောင့်ဖြစ်သည်။ မိဘနှစ်ဦးစလုံးသည် ဟီတရိုဇိုင်းဂတ် ဆောင်ရွက်သူများ (Ff x Ff) ဖြစ်ပါက သားသမီးတစ်ဦး ဆစ်စတစ်ဖိုက်ဘရိုးဆစ်ရောဂါ ခံစားရမည့် ဖြစ်နိုင်ခြေမှာ အဘယ်နည်း။',
        optionsEn: ['1 in 4', '1 in 2', '3 in 4', '1 in 1'],
        optionsMy: [
          '၄ ဦးတွင် ၁ ဦး',
          '၂ ဦးတွင် ၁ ဦး',
          '၄ ဦးတွင် ၃ ဦး',
          '၁ ဦးတွင် ၁ ဦး',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the key genetic difference between identical (monozygotic) twins and non-identical (dizygotic) twins?',
        questionMy:
            'အနှစ်တူအမြွှာ (monozygotic) နှင့် အနှစ်မတူအမြွှာ (dizygotic) တို့၏ အဓိက မျိုးရိုးဗီဇကွာခြားချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'Identical twins develop from one fertilised egg that splits and share identical genes, while non-identical twins develop from two separately fertilised eggs',
          'Identical twins always develop from two separate eggs, while non-identical twins develop from one egg',
          'Non-identical twins always share exactly the same genes, unlike identical twins',
          'There is no genetic difference between the two types of twins',
        ],
        optionsMy: [
          'အနှစ်တူအမြွှာများသည် သန္ဓေအောင်ပြီးသောဥတစ်လုံးကွဲထွက်ခြင်းမှ ဖွံ့ဖြိုးလာပြီး တူညီသောဗီဇများ ရရှိကြသည်၊ အနှစ်မတူအမြွှာများမူ သီးခြားသန္ဓေအောင်သောဥနှစ်လုံးမှ ဖွံ့ဖြိုးလာသည်',
          'အနှစ်တူအမြွှာများသည် သီးခြားဥနှစ်လုံးမှ အမြဲဖွံ့ဖြိုးလာပြီး အနှစ်မတူအမြွှာများမူ ဥတစ်လုံးမှ ဖွံ့ဖြိုးလာသည်',
          'အနှစ်မတူအမြွှာများသည် အနှစ်တူအမြွှာများနှင့်မတူဘဲ တူညီသောဗီဇများကို အမြဲရရှိကြသည်',
          'အမြွှာအမျိုးအစားနှစ်ခုကြား မျိုးရိုးဗီဇ ကွာခြားချက် လုံးဝမရှိပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A colour-blind man (XᵇY) has children with a woman who is homozygous normal (XᴮXᴮ). What proportion of their sons will be colour-blind?',
        questionMy:
            'အရောင်ကန်းသော အမျိုးသား (XᵇY) သည် ဟိုမိုဇိုင်းဂတ် ပုံမှန်အမျိုးသမီး (XᴮXᴮ) နှင့် သားသမီးများ ရှိသည်။ ၎င်းတို့၏သားများအနက် အရောင်ကန်းမည့်အချိုးမှာ အဘယ်နည်း။',
        optionsEn: [
          'None of the sons will be colour-blind',
          'All of the sons will be colour-blind',
          'Half of the sons will be colour-blind',
          'A quarter of the sons will be colour-blind',
        ],
        optionsMy: [
          'သားများထဲမှ မည်သူမျှ အရောင်ကန်းမည်မဟုတ်ပါ',
          'သားအားလုံး အရောင်ကန်းကြမည်ဖြစ်သည်',
          'သားများ၏ ထက်ဝက်သည် အရောင်ကန်းကြမည်ဖြစ်သည်',
          'သားများ၏ လေးပုံတစ်ပုံသည် အရောင်ကန်းကြမည်ဖြစ်သည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-ict-1',
    subject: 'ict',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Computer System Architecture',
    titleMy: 'ကွန်ပျူတာစနစ် ဗိသုကာပုံစံ',
    descriptionEn:
        'Explore CPU components, the fetch-execute cycle, cache memory, and how von Neumann architecture differs from embedded systems.',
    descriptionMy:
        'CPU အစိတ်အပိုင်းများ၊ fetch-execute cycle၊ cache memory နှင့် von Neumann ဗိသုကာပုံစံသည် embedded system များနှင့် မည်သို့ကွာခြားသည်ကို လေ့လာပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'What is the primary function of the Control Unit (CU) inside the CPU?',
        questionMy:
            'CPU အတွင်းရှိ Control Unit (CU) ၏ အဓိကလုပ်ဆောင်ချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'It directs and coordinates the fetching, decoding, and execution of instructions',
          'It performs all arithmetic and logical calculations on data',
          'It permanently stores the operating system files',
          'It converts alternating current into direct current for the CPU',
        ],
        optionsMy: [
          'ညွှန်ကြားချက်များကို fetch လုပ်ခြင်း၊ decode လုပ်ခြင်းနှင့် execute လုပ်ခြင်းတို့ကို ညွှန်ကြားညှိနှိုင်းပေးသည်',
          'ဒေတာများအပေါ် ဂဏန်းသင်္ချာနှင့် ယုတ္တိဗေဒ တွက်ချက်မှုအားလုံးကို ပြုလုပ်သည် (ALU ၏အလုပ်)',
          'operating system ဖိုင်များကို အမြဲတမ်း သိမ်းဆည်းပေးသည်',
          'CPU အတွက် AC လျှပ်စစ်ကို DC အဖြစ် ပြောင်းလဲပေးသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In the fetch-execute cycle, what is stored in the Program Counter (PC)?',
        questionMy:
            'fetch-execute cycle တွင် Program Counter (PC) က အဘယ်အရာကို သိမ်းဆည်းထားသနည်း။',
        optionsEn: [
          'The memory address of the next instruction to be fetched',
          'The actual instruction currently being decoded',
          'The final result of the last arithmetic calculation',
          'The name of the currently logged-in user',
        ],
        optionsMy: [
          'နောက်ထပ် fetch လုပ်ရမည့် ညွှန်ကြားချက်၏ memory address',
          'လက်ရှိ decode လုပ်နေသော ညွှန်ကြားချက်ကိုယ်တိုင်',
          'နောက်ဆုံးဂဏန်းတွက်ချက်မှု၏ ရလဒ်',
          'လက်ရှိအကောင့်ဝင်ထားသူ၏ အမည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do modern CPUs include a small amount of cache memory between the CPU and main memory (RAM)?',
        questionMy:
            'ခေတ်မီ CPU များတွင် CPU နှင့် main memory (RAM) စပ်ကြားတွင် cache memory အနည်းငယ်ထည့်သွင်းထားသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'To store frequently used instructions and data closer to the CPU so they can be accessed much faster than from RAM',
          'To permanently back up the entire hard drive',
          'To increase the CPU clock speed automatically',
          'To reduce the electricity consumed by the monitor',
        ],
        optionsMy: [
          'CPU နှင့်နီးကပ်စွာ မကြာခဏအသုံးပြုသော ညွှန်ကြားချက်များနှင့် ဒေတာများကို သိမ်းဆည်းထားခြင်းဖြင့် RAM ထက် များစွာပိုမိုမြန်ဆန်စွာ ရယူနိုင်စေရန်',
          'hard drive တစ်ခုလုံးကို အမြဲတမ်း backup လုပ်ရန်',
          'CPU clock speed ကို အလိုအလျောက် မြင့်တက်စေရန်',
          'မော်နီတာသုံးလျှပ်စစ်ကို လျှော့ချရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What key feature defines the classic von Neumann architecture used in most general-purpose computers?',
        questionMy:
            'ယေဘုယျအသုံးပြုကွန်ပျူတာအများစုတွင် သုံးသော classic von Neumann ဗိသုကာပုံစံ၏ အဓိကလက္ခဏာမှာ အဘယ်နည်း။',
        optionsEn: [
          'Instructions and data share the same memory and the same bus, so only one can be fetched at a time',
          'Instructions and data are stored in two completely separate memories with separate buses',
          'It has no central processing unit at all',
          'It can only be used inside embedded devices such as washing machines',
        ],
        optionsMy: [
          'ညွှန်ကြားချက်များနှင့် ဒေတာများသည် memory နှင့် bus တစ်ခုတည်းကို မျှဝေအသုံးပြုကြရသောကြောင့် တစ်ကြိမ်လျှင် တစ်ခုသာ fetch လုပ်နိုင်သည်',
          'ညွှန်ကြားချက်များနှင့် ဒေတာများကို memory နှင့် bus လုံးဝသီးခြားနှစ်ခုတွင် သိမ်းဆည်းထားသည် (Harvard ပုံစံ)',
          'ဗဟို processing unit လုံးဝမပါဝင်ပါ',
          'အဝတ်လျှော်စက်ကဲ့သို့သော embedded device များတွင်သာ အသုံးပြုနိုင်သည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Which statement best describes an embedded system?',
        questionMy:
            'embedded system တစ်ခုကို အကောင်းဆုံးဖော်ပြသော ဖော်ပြချက်မှာ မည်သည်နည်း။',
        optionsEn: [
          'A dedicated computer system built into a larger device to perform one or a few specific tasks, such as a washing machine controller',
          'A general-purpose desktop computer used for many different tasks by one person',
          'A cloud data centre shared by thousands of users at once',
          'A supercomputer used purely for scientific weather simulation',
        ],
        optionsMy: [
          'အဝတ်လျှော်စက်ထိန်းချုပ်ကိရိယာကဲ့သို့ အထူးလုပ်ငန်းတစ်ခု သို့မဟုတ် အနည်းငယ်သာ ဆောင်ရွက်ရန် ကိရိယာကြီးတစ်ခုအတွင်း တပ်ဆင်ထားသော အထူးကွန်ပျူတာစနစ်',
          'တစ်ဦးတည်းက အလုပ်များစွာအတွက် အသုံးပြုသော ယေဘုယျဒက်စ်တော့ကွန်ပျူတာ',
          'အသုံးပြုသူထောင်ပေါင်းများစွာ တစ်ပြိုင်နက် မျှဝေအသုံးပြုသော cloud data centre',
          'ရာသီဥတုသရုပ်ဖော်တွက်ချက်မှုအတွက်သာ အသုံးပြုသော supercomputer',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-ict-2',
    subject: 'ict',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Advanced Data Representation',
    titleMy: 'အဆင့်မြင့် ဒေတာဖော်ပြမှု',
    descriptionEn:
        'Study two\'s complement negative numbers, floating-point representation, hexadecimal shorthand, and binary overflow at IGCSE depth.',
    descriptionMy:
        'IGCSE အဆင့်တွင် two\'s complement အနုတ်ဂဏန်းများ၊ floating-point ဖော်ပြမှု၊ hexadecimal အတိုကောက်နှင့် binary overflow တို့ကို နက်နက်ရှိုင်းရှိုင်း လေ့လာပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'Why do modern computers use two\'s complement rather than sign-and-magnitude to represent negative integers?',
        questionMy:
            'ခေတ်မီကွန်ပျူတာများသည် အနုတ်ကိန်းပြည့်များကိုဖော်ပြရန် sign-and-magnitude အစား two\'s complement ကို အသုံးပြုသည့်အကြောင်းရင်းမှာ အဘယ်နည်း။',
        optionsEn: [
          'It allows the same addition circuitry to correctly add both positive and negative numbers without special-case subtraction logic',
          'It uses fewer bits than any other method to store a number',
          'It is the only method that can represent the number zero',
          'It allows numbers to be stored in decimal form directly',
        ],
        optionsMy: [
          'အနုတ်ကွက်ချက်အတွက် အထူးထူးလုပ်ဆောင်ချက်မလိုဘဲ ဂဏန်းအပေါင်း-အနုတ်နှစ်မျိုးလုံးကို ပေါင်းစက်ရိုင်းတစ်ခုတည်းဖြင့် မှန်ကန်စွာတွက်ချက်နိုင်စေသည်',
          'အခြားနည်းလမ်းများထက် ဂဏန်းသိမ်းရန် bit အနည်းဆုံးကိုသာ သုံးသည်',
          'သုညကိုဖော်ပြနိုင်သော တစ်ခုတည်းသောနည်းလမ်းဖြစ်သည်',
          'ဂဏန်းများကို ဒဿမပုံစံဖြင့် တိုက်ရိုက်သိမ်းဆည်းနိုင်စေသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Using 8-bit two\'s complement, what is -5 represented as?',
        questionMy:
            '8-bit two\'s complement စနစ်တွင် -5 ကို မည်သို့ဖော်ပြသနည်း။',
        optionsEn: ['11111011', '00000101', '11111010', '10000101'],
        optionsMy: [
          '11111011 (invert ပြီး 1 ပေါင်းထားသောပုံစံ)',
          '00000101 (+5 ၏ပုံစံအတိုင်း၊ invert မလုပ်ရသေး)',
          '11111010 (invert ပြီးသောပုံစံ၊ 1 မပေါင်းရသေး)',
          '10000101 (sign-and-magnitude ပုံစံ)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In floating-point representation, what roles do the mantissa and the exponent play?',
        questionMy:
            'floating-point ဖော်ပြမှုတွင် mantissa နှင့် exponent တို့၏ အခန်းကဏ္ဍမှာ အဘယ်နည်း။',
        optionsEn: [
          'The mantissa holds the significant digits of the number, while the exponent scales it by shifting the binary point, allowing very large or very small numbers to be stored',
          'The mantissa stores only the sign of the number, while the exponent stores an error-checking code',
          'The exponent stores the character encoding, while the mantissa stores the colour value',
          'Both the mantissa and exponent store identical copies of the same value for safety',
        ],
        optionsMy: [
          'mantissa သည် ဂဏန်း၏အရေးကြီးဂဏန်းအညွှန်းများကို သိမ်းထားပြီး exponent သည် binary point ကို ရွှေ့ခြင်းဖြင့် အတိုင်းအတာချိန်ညှိပေးသောကြောင့် အလွန်ကြီးမား သို့မဟုတ် အလွန်သေးငယ်သောဂဏန်းများကို သိမ်းဆည်းနိုင်စေသည်',
          'mantissa သည် ဂဏန်း၏ sign ကိုသာ သိမ်းထားပြီး exponent သည် error-checking code ကို သိမ်းထားသည်',
          'exponent သည် character encoding ကို သိမ်းထားပြီး mantissa သည် အရောင်တန်ဖိုးကို သိမ်းထားသည်',
          'mantissa နှင့် exponent နှစ်ခုစလုံးသည် ဘေးကင်းရေးအတွက် တန်ဖိုးတူညီသောကူးယူချက်များကို သိမ်းထားသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do programmers commonly use hexadecimal notation to represent binary values such as MAC addresses or colour codes?',
        questionMy:
            'ပရိုဂရမ်မာများသည် MAC address သို့မဟုတ် အရောင်ကုဒ်များကဲ့သို့သော binary တန်ဖိုးများကို ဖော်ပြရန် hexadecimal ကို အဘယ့်ကြောင့် ဘုံအသုံးများသနည်း။',
        optionsEn: [
          'Because each hexadecimal digit represents exactly 4 binary bits, giving a short, human-readable shorthand for long binary strings',
          'Because computers can only process hexadecimal numbers directly and cannot understand binary',
          'Because hexadecimal numbers take up less storage space in memory than binary numbers',
          'Because every keyboard is physically required to type only in hexadecimal',
        ],
        optionsMy: [
          'hexadecimal ဂဏန်းတစ်လုံးစီသည် binary bit ၄ ခုအတိအကျ ကိုယ်စားပြုသောကြောင့် ရှည်လျားသော binary string များအတွက် တိုတောင်း၍ လူဖတ်လွယ်သော အတိုကောက်ဖြစ်စေသည်',
          'ကွန်ပျူတာများသည် hexadecimal ဂဏန်းများကိုသာ တိုက်ရိုက်ကိုင်တွယ်နိုင်ပြီး binary ကို နားမလည်ကြောင်း',
          'hexadecimal ဂဏန်းများသည် binary ဂဏန်းများထက် memory တွင် နေရာနည်းနည်းသာ ယူသောကြောင့်',
          'ကီးဘုတ်တိုင်းသည် hexadecimal ဖြင့်သာ ရိုက်ရန် ရုပ်ပိုင်းဆိုင်ရာလိုအပ်သောကြောင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What happens when the result of an arithmetic operation is too large to fit into the fixed number of bits in a register?',
        questionMy:
            'ဂဏန်းသင်္ချာလုပ်ဆောင်ချက်တစ်ခု၏ရလဒ်သည် register ၏ သတ်မှတ် bit အရေအတွက်ထက် ကြီးမားနေလျှင် အဘယ်အရာဖြစ်ပေါ်လာမည်နည်း။',
        optionsEn: [
          'Overflow occurs, and the result is truncated or wrapped incorrectly unless the system detects and handles it',
          'The register automatically doubles in size to fit the new result',
          'The extra digits are silently saved to the hard drive without error',
          'The CPU clock speed automatically slows down to compensate',
        ],
        optionsMy: [
          'overflow ဖြစ်ပေါ်ကာ စနစ်က ရှာဖွေထောက်ပြပြီး ကိုင်တွယ်မှုမပြုလုပ်ပါက ရလဒ်ကို လွဲမှားစွာဖြတ်တောက် သို့မဟုတ် ပတ်လည်ရေးသားလိုက်မည်',
          'register သည် ရလဒ်အသစ်နှင့်ကိုက်ညီရန် အလိုအလျောက် အရွယ်နှစ်ဆတိုးလာသည်',
          'ပိုလျှံဂဏန်းများကို error မတက်ဘဲ hard drive ပေါ်သို့ တိတ်တဆိတ် သိမ်းဆည်းလိုက်သည်',
          'CPU clock speed သည် ချိန်ညှိရန် အလိုအလျောက် နှေးလာသည်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-ict-3',
    subject: 'ict',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Algorithm Design and Efficiency',
    titleMy: 'Algorithm ဒီဇိုင်းနှင့် ထိရောက်မှု',
    descriptionEn:
        'Design and compare algorithms using decomposition, pseudocode loops, binary search, and sorting, while reasoning about efficiency.',
    descriptionMy:
        'decomposition၊ pseudocode loop များ၊ binary search နှင့် sorting တို့ကို အသုံးပြု၍ algorithm များကို ဒီဇိုင်းရေးဆွဲကာ ထိရောက်မှုကို ဆင်ခြင်တွက်ချက်ပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'Why must a list of data be sorted before a binary search algorithm can be applied correctly?',
        questionMy:
            'binary search algorithm ကို မှန်ကန်စွာအသုံးပြုနိုင်ရန် ဒေတာစာရင်းတစ်ခုကို အဘယ့်ကြောင့် အရင်ဆုံးစီစဉ်ထားရမည်နည်း။',
        optionsEn: [
          'Binary search repeatedly checks the middle value and eliminates one half of the remaining list, which only gives a correct result if the data is already in order',
          'Unsorted data cannot legally be stored anywhere in computer memory',
          'Binary search can only operate on text data, never on numbers',
          'Sorting the list first increases the computer\'s processor clock speed',
        ],
        optionsMy: [
          'binary search သည် အလယ်ဗဟိုတန်ဖိုးကို ထပ်ခါထပ်ခါစစ်ဆေးကာ ကျန်စာရင်း၏ တစ်ဝက်ကို ဖယ်ရှားပစ်သောကြောင့် ဒေတာများသည် စီစဉ်ပြီးသားဖြစ်မှသာ မှန်ကန်သောရလဒ်ရရှိမည်',
          'စီစဉ်မထားသော ဒေတာများကို ကွန်ပျူတာ memory တွင် မည်သည့်နေရာမျှ တရားဝင်သိမ်းဆည်း၍မရပါ',
          'binary search သည် စာသားဒေတာနှင့်သာ အလုပ်လုပ်နိုင်ပြီး ဂဏန်းများနှင့် လုံးဝအလုပ်မလုပ်ပါ',
          'စာရင်းကို အရင်စီစဉ်ခြင်းက ကွန်ပျူတာ၏ processor clock speed ကို မြင့်တက်စေသည်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the main advantage of binary search over linear search when searching a large, sorted dataset?',
        questionMy:
            'ကြီးမားပြီး စီစဉ်ပြီးသား dataset တစ်ခုကို ရှာဖွေရာတွင် linear search ထက် binary search ၏ အဓိကအားသာချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'It finds the target value using far fewer comparisons because it discards half of the remaining data at every step',
          'It works correctly even when the dataset is completely unsorted',
          'It requires the computer to use noticeably less memory to store the list',
          'It can only be applied to lists of text, never to lists of numbers',
        ],
        optionsMy: [
          'ရှာဖွေမှုတိုင်းတွင် ကျန်ဒေတာ၏တစ်ဝက်ကို ပယ်ချသောကြောင့် နှိုင်းယှဉ်မှု အလွန်နည်းသောနည်းလမ်းဖြင့် ရှာဖွေလိုသောတန်ဖိုးကို ရှာတွေ့သည်',
          'dataset တစ်ခုလုံး လုံးဝမစီစဉ်ရသေးသော်လည်း မှန်ကန်စွာလုပ်ဆောင်နိုင်သည်',
          'စာရင်းသိမ်းဆည်းရန် ကွန်ပျူတာ memory ကို သိသိသာသာ ပိုနည်းစွာအသုံးပြုရသည်',
          'စာသားစာရင်းများတွင်သာ အသုံးပြုနိုင်ပြီး ဂဏန်းစာရင်းများတွင် လုံးဝသုံး၍မရပါ',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A bubble sort is run on the list [5, 2, 8, 1], comparing and swapping adjacent elements from left to right. What does the list look like after exactly one full pass?',
        questionMy:
            '[5, 2, 8, 1] စာရင်းအပေါ် bubble sort ကို ဘယ်မှညာသို့ အနီးဆုံးအစိတ်အပိုင်းများကို နှိုင်းယှဉ်ကာ swap လုပ်စေသည်။ ပထမပတ်လှည့်တစ်ခါ အပြည့်အဝပြီးဆုံးပြီးနောက် စာရင်းသည် မည်သို့ဖြစ်နေမည်နည်း။',
        optionsEn: [
          '[2, 5, 1, 8]',
          '[1, 2, 5, 8]',
          '[5, 2, 8, 1]',
          '[2, 8, 1, 5]',
        ],
        optionsMy: [
          '[2, 5, 1, 8] (ပထမပတ်လှည့်တစ်ခုတည်းပြီးနောက်ရလဒ်)',
          '[1, 2, 5, 8] (ပတ်လှည့်အားလုံးပြီးမှသာရနိုင်သော အပြီးသတ်ရလဒ်)',
          '[5, 2, 8, 1] (မူလစာရင်း၊ ပြောင်းလဲမှုမရှိသေး)',
          '[2, 8, 1, 5] (မှားယွင်းသော swap အစီအစဉ်ဖြင့်ရလာသောရလဒ်)',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'What does "decomposition" mean in computational thinking?',
        questionMy:
            'computational thinking တွင် "decomposition" ဆိုသည်မှာ အဘယ်ကို ဆိုလိုသနည်း။',
        optionsEn: [
          'Breaking a large, complex problem down into smaller, more manageable sub-problems that are easier to solve individually',
          'Combining many separate small programs into one single large program',
          'Deleting comments and unnecessary whitespace from finished source code',
          'Translating a finished algorithm directly into machine code',
        ],
        optionsMy: [
          'ကြီးမားနက်နဲသော ပြဿနာတစ်ခုကို သီးခြားစီဖြေရှင်းရန် ပိုမိုလွယ်ကူသော ပြဿနာသေးငယ်များအဖြစ် ခွဲထုတ်ခြင်း',
          'သီးခြားစီရေးထားသော ပရိုဂရမ်ငယ်များစွာကို ပရိုဂရမ်ကြီးတစ်ခုတည်းအဖြစ် ပေါင်းစပ်ခြင်း',
          'ပြီးစီးပြီးသော source code မှ comment နှင့် မလိုအပ်သော whitespace များကို ဖျက်ပစ်ခြင်း',
          'ပြီးစီးပြီးသော algorithm ကို machine code အဖြစ်သို့ တိုက်ရိုက်ပြောင်းလဲခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In pseudocode, what does a "WHILE" loop typically represent?',
        questionMy:
            'pseudocode တွင် "WHILE" loop သည် ယေဘုယျအားဖြင့် အဘယ်အရာကို ကိုယ်စားပြုသနည်း။',
        optionsEn: [
          'A block of instructions that repeats for as long as a specified condition remains true',
          'A single decision that is checked and executed only once',
          'A permanent, unconditional halt of the entire program',
          'A statement used only to declare a new variable\'s data type',
        ],
        optionsMy: [
          'သတ်မှတ်ထားသော condition မှန်နေသရွေ့ ထပ်ခါထပ်ခါလုပ်ဆောင်နေသော ညွှန်ကြားချက်အုပ်စု',
          'တစ်ကြိမ်သာ စစ်ဆေးပြီး လုပ်ဆောင်သော ဆုံးဖြတ်ချက်တစ်ခုတည်း',
          'ပရိုဂရမ်တစ်ခုလုံးကို အခြေအနေမရွေး အပြီးတိုင်ရပ်တန့်ခြင်း',
          'variable အသစ်တစ်ခု၏ data type ကို ကြေညာရန်သာ အသုံးပြုသော statement',
        ],
        correctIndex: 0,
      ),
    ],
  ),

  SecondaryActivityDef(
    id: 'mock-igcse-socialstudies-1',
    subject: 'socialstudies',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Comparative Government',
    titleMy: 'နိုင်ငံရေးအုပ်ချုပ်မှုစနစ်များ နှိုင်းယှဉ်လေ့လာခြင်း',
    descriptionEn:
        'Compare how presidential, parliamentary, and federal systems distribute and check political power.',
    descriptionMy:
        'သမ္မတစနစ်၊ ပါလီမန်စနစ်နှင့် ဖက်ဒရယ်စနစ်တို့သည် နိုင်ငံရေးအာဏာကို မည်သို့ခွဲဝေထိန်းညှိကြောင်း နှိုင်းယှဉ်လေ့လာပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'In a parliamentary system such as the United Kingdom, how does the head of government typically come to power?',
        questionMy:
            'ဗြိတိန်ကဲ့သို့သော ပါလီမန်စနစ်တွင် အစိုးရအကြီးအကဲသည် ပုံမှန်အားဖြင့် မည်သို့ အာဏာရရှိသနည်း။',
        optionsEn: [
          'By leading the party or coalition that holds a majority of seats in the legislature',
          'By winning a separate nationwide popular vote for the executive alone',
          'By being appointed for life by the head of state',
          'By being selected through a random lottery among sitting legislators',
        ],
        optionsMy: [
          'လွှတ်တော်တွင် နေရာအများစုရရှိသော ပါတီ သို့မဟုတ် ညွန့်ပေါင်းအစိုးရကို ဦးဆောင်ခြင်းဖြင့်',
          'အုပ်ချုပ်ရေးအာဏာအတွက်သာ သီးခြားနိုင်ငံတစ်ဝှမ်းမဲပေးမှုတွင် အနိုင်ရရှိခြင်းဖြင့်',
          'နိုင်ငံ့ဦးစီးမှ တစ်သက်တာအတွက် ခန့်အပ်ခြင်းခံရခြင်းဖြင့်',
          'လက်ရှိလွှတ်တော်အမတ်များအထဲမှ မဲစနစ်ဖြင့် ကျပန်းရွေးချယ်ခံရခြင်းဖြင့်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the defining feature of a presidential system, such as that of the United States, compared with a parliamentary system?',
        questionMy:
            'အမေရိကန်ကဲ့သို့သော သမ္မတစနစ်ကို ပါလီမန်စနစ်နှင့် နှိုင်းယှဉ်လျှင် အဓိကထူးခြားချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The executive and legislature are elected separately and each can survive without the other\'s continued confidence',
          'The head of state has no political power of any kind',
          'Judges are elected directly by the legislature every year',
          'The executive branch can dissolve itself and call new elections at will',
        ],
        optionsMy: [
          'အုပ်ချုပ်ရေးနှင့် ဥပဒေပြုရေးကို သီးခြားစီရွေးကောက်ပြီး တစ်ခုချင်းစီသည် အခြားတစ်ခု၏ ယုံကြည်မှုမရှိလည်း ရပ်တည်နိုင်ခြင်း',
          'နိုင်ငံ့ဦးစီးတွင် မည်သည့်နိုင်ငံရေးအာဏာမျှ လုံးဝမရှိခြင်း',
          'တရားသူကြီးများကို လွှတ်တော်က နှစ်စဉ်တိုက်ရိုက်ရွေးကောက်ခြင်း',
          'အုပ်ချုပ်ရေးအဖွဲ့ကိုယ်တိုင် မိမိဆန္ဒအလျောက် ဖျက်သိမ်းပြီး ရွေးကောက်ပွဲသစ်ခေါ်နိုင်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'In a federal system of government, what is the key relationship between national and regional levels of authority?',
        questionMy:
            'ဖက်ဒရယ်အစိုးရစနစ်တွင် အမျိုးသားအဆင့်နှင့် ဒေသန္တရအဆင့် အာဏာများကြား အဓိကဆက်နွယ်မှုမှာ အဘယ်နည်း။',
        optionsEn: [
          'Power is constitutionally divided between a central government and regional units, each with its own areas of authority',
          'All decision-making power rests solely with regional governments, with no central authority at all',
          'Regional governments exist only to carry out orders and have no legal powers of their own',
          'The central government can abolish regional governments at any time without any legal process',
        ],
        optionsMy: [
          'ဗဟိုအစိုးရနှင့် ဒေသန္တရယူနစ်များကြား ဖွဲ့စည်းပုံအခြေခံဥပဒေအရ အာဏာခွဲဝေထားပြီး တစ်ခုချင်းစီတွင် မိမိပိုင်နက်ရှိခြင်း',
          'ဆုံးဖြတ်ချက်ချအာဏာအားလုံးကို ဒေသန္တရအစိုးရများသာ ကိုင်ဆောင်ပြီး ဗဟိုအာဏာလုံးဝမရှိခြင်း',
          'ဒေသန္တရအစိုးရများသည် အမိန့်လိုက်နာရုံသာ ရှိပြီး မိမိပိုင်ဥပဒေအာဏာလုံးဝမရှိခြင်း',
          'ဗဟိုအစိုးရသည် ဥပဒေလုပ်ထုံးလုပ်နည်းမရှိဘဲ ဒေသန္တရအစိုးရများကို အချိန်မရွေး ဖျက်သိမ်းနိုင်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the primary purpose of a system of checks and balances, as found in the United States Constitution?',
        questionMy:
            'အမေရိကန်ဖွဲ့စည်းပုံအခြေခံဥပဒေတွင် တွေ့ရသော အချင်းချင်းထိန်းညှိမှုစနစ် (checks and balances) ၏ အဓိကရည်ရွယ်ချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'To prevent any single branch of government from accumulating excessive power by allowing each branch to limit the others',
          'To ensure that only one branch of government ever makes any decisions',
          'To guarantee that the judiciary always agrees with the executive',
          'To allow the legislature to appoint itself without any elections',
        ],
        optionsMy: [
          'တစ်ခုချင်းစီသည် အခြားအစိတ်အပိုင်းများကို ထိန်းညှိနိုင်စေခြင်းဖြင့် အစိုးရအစိတ်အပိုင်းတစ်ခုတည်းတွင် အာဏာအလွန်အကျွံ စုပုံမနေစေရန်',
          'အစိုးရ၏ အစိတ်အပိုင်းတစ်ခုတည်းကသာ ဆုံးဖြတ်ချက်များချမှတ်စေရန်',
          'တရားစီရင်ရေးအဖွဲ့သည် အုပ်ချုပ်ရေးနှင့် အမြဲသဘောတူစေရန်',
          'လွှတ်တော်ကို ရွေးကောက်ပွဲမရှိဘဲ မိမိကိုယ်ကို ခန့်အပ်ခွင့်ပြုရန်',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'How does a unitary system of government, such as that of France, differ fundamentally from a federal system?',
        questionMy:
            'ပြင်သစ်ကဲ့သို့သော ဒြပ်စည်းအစိုးရစနစ် (unitary system) သည် ဖက်ဒရယ်စနစ်နှင့် အခြေခံအားဖြင့် မည်သို့ကွာခြားသနည်း။',
        optionsEn: [
          'Supreme political authority is held by the central government, which can create, alter, or abolish local governments',
          'Local governments hold constitutionally guaranteed powers that the central government cannot remove',
          'There is no central government at all, only independent local authorities',
          'Regional governments and the central government are always led by different political parties',
        ],
        optionsMy: [
          'အထွတ်အထိပ်နိုင်ငံရေးအာဏာကို ဗဟိုအစိုးရကသာ ကိုင်ဆောင်ပြီး ဒေသန္တရအစိုးရများကို ဖန်တီး၊ ပြောင်းလဲ၊ ဖျက်သိမ်းနိုင်ခြင်း',
          'ဒေသန္တရအစိုးရများတွင် ဗဟိုအစိုးရမဖယ်ရှားနိုင်သော ဖွဲ့စည်းပုံအာမခံအာဏာများ ရှိနေခြင်း',
          'ဗဟိုအစိုးရဟူ၍ လုံးဝမရှိဘဲ လွတ်လပ်သော ဒေသန္တရအာဏာပိုင်များသာရှိခြင်း',
          'ဒေသန္တရအစိုးရနှင့် ဗဟိုအစိုးရကို အမြဲတမ်း မတူညီသောပါတီများက ဦးဆောင်ခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-socialstudies-2',
    subject: 'socialstudies',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Global Economics',
    titleMy: 'ကမ္ဘာလုံးဆိုင်ရာ စီးပွားရေးပညာ',
    descriptionEn:
        'Analyze trade, exchange rates, and the roles of major international economic institutions.',
    descriptionMy:
        'ကုန်သွယ်ရေး၊ ငွေလဲနှုန်းနှင့် အဓိကနိုင်ငံတကာစီးပွားရေးအဖွဲ့အစည်းများ၏ အခန်းကဏ္ဍများကို ခွဲခြမ်းစိတ်ဖြာလေ့လာပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'According to the theory of comparative advantage, why do countries benefit from specializing and trading with each other?',
        questionMy:
            'နှိုင်းယှဉ်အားသာချက် (comparative advantage) သီအိုရီအရ နိုင်ငံများသည် အထူးပြုကုန်ထုတ်လုပ်ပြီး အချင်းချင်းကုန်သွယ်ခြင်းဖြင့် အဘယ်ကြောင့် အကျိုးရရှိကြသနည်း။',
        optionsEn: [
          'Each country can produce goods it makes relatively more efficiently and trade for goods others produce more efficiently, raising total output for both',
          'Trading always guarantees that every country ends up with an identical income level',
          'Specialization eliminates the need for any country to import goods at all',
          'Comparative advantage requires that only wealthy countries participate in trade',
        ],
        optionsMy: [
          'နိုင်ငံတစ်ခုစီသည် မိမိအထိရောက်ဆုံးထုတ်လုပ်နိုင်သောကုန်ပစ္စည်းကို ထုတ်လုပ်ပြီး အခြားနိုင်ငံများ ပိုအထိရောက်စွာထုတ်လုပ်သောပစ္စည်းများနှင့် လဲလှယ်ခြင်းဖြင့် နှစ်ဖက်စလုံး၏ စုစုပေါင်းထုတ်လုပ်မှုတိုးလာခြင်း',
          'ကုန်သွယ်မှုသည် နိုင်ငံအားလုံး၏ ဝင်ငွေအဆင့် တူညီစေရန် အာမခံနိုင်ခြင်း',
          'အထူးပြုမှုသည် မည်သည့်နိုင်ငံမျှ ကုန်ပစ္စည်းတင်သွင်းရန် မလိုအပ်စေခြင်း',
          'နှိုင်းယှဉ်အားသာချက်သည် ချမ်းသာသောနိုင်ငံများသာ ကုန်သွယ်ရေးတွင် ပါဝင်ခွင့်ရှိစေခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'If a country\'s currency depreciates against other currencies, what is the most likely effect on its exports?',
        questionMy:
            'နိုင်ငံတစ်ခု၏ ငွေကြေးတန်ဖိုးသည် အခြားငွေကြေးများနှင့်နှိုင်းယှဉ်၍ ကျဆင်းသွားပါက ထိုနိုင်ငံ၏ ပို့ကုန်ပေါ်တွင် အဖြစ်များဆုံးသက်ရောက်မှုမှာ အဘယ်နည်း။',
        optionsEn: [
          'Exports generally become cheaper for foreign buyers, which tends to increase demand for them',
          'Exports automatically become more expensive for every foreign buyer',
          'The volume of exports is entirely unaffected by exchange rate changes',
          'Import prices fall while export prices remain completely fixed',
        ],
        optionsMy: [
          'ပို့ကုန်များသည် နိုင်ငံခြားဝယ်ယူသူများအတွက် ယေဘုယျအားဖြင့် ပိုစျေးသက်သာလာပြီး ဝယ်လိုအားမြင့်တက်တတ်ခြင်း',
          'ပို့ကုန်များသည် နိုင်ငံခြားဝယ်ယူသူတိုင်းအတွက် အလိုအလျောက် ပိုစျေးကြီးလာခြင်း',
          'ပို့ကုန်ပမာဏသည် ငွေလဲနှုန်းပြောင်းလဲမှုကြောင့် လုံးဝမထိခိုက်ခြင်း',
          'တင်သွင်းကုန်စျေးနှုန်း ကျဆင်းပြီး ပို့ကုန်စျေးနှုန်း လုံးဝပြောင်းလဲမနေခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the main role of the World Trade Organization (WTO) in the global economy?',
        questionMy:
            'ကမ္ဘာလုံးဆိုင်ရာစီးပွားရေးတွင် ကမ္ဘာ့ကုန်သွယ်ရေးအဖွဲ့ (WTO) ၏ အဓိကအခန်းကဏ္ဍမှာ အဘယ်နည်း။',
        optionsEn: [
          'To set rules for international trade and provide a forum for negotiating and resolving trade disputes between member countries',
          'To lend money directly to individual consumers for personal spending',
          'To set the interest rates used by every central bank in the world',
          'To print a single global currency for use by all member states',
        ],
        optionsMy: [
          'နိုင်ငံတကာကုန်သွယ်ရေးအတွက် စည်းမျဉ်းများသတ်မှတ်ပေးပြီး အဖွဲ့ဝင်နိုင်ငံများကြား ကုန်သွယ်ရေးအငြင်းပွားမှုများကို ညှိနှိုင်း၊ ဖြေရှင်းရန် စင်ပွဲတစ်ခု ဖြစ်စေခြင်း',
          'တစ်ဦးချင်းစားသုံးသူများထံသို့ ကိုယ်ရေးကိုယ်တာသုံးစွဲရန် တိုက်ရိုက်ချေးငွေထုတ်ပေးခြင်း',
          'ကမ္ဘာပေါ်ရှိ ဗဟိုဘဏ်တိုင်းအသုံးပြုမည့် အတိုးနှုန်းများကို သတ်မှတ်ပေးခြင်း',
          'အဖွဲ့ဝင်နိုင်ငံအားလုံးအသုံးပြုရန် ကမ္ဘာလုံးဆိုင်ရာငွေကြေးတစ်မျိုးတည်း ပုံနှိပ်ထုတ်ပေးခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'A country imposes a tariff on imported steel. What is the most likely direct effect on the domestic market?',
        questionMy:
            'နိုင်ငံတစ်ခုသည် တင်သွင်းသံမဏိပေါ်တွင် အကောက်ခွန်တစ်ရပ် ချမှတ်လိုက်သည်။ ပြည်တွင်းဈေးကွက်ပေါ် တိုက်ရိုက်သက်ရောက်မှု အဖြစ်များဆုံးမှာ အဘယ်နည်း။',
        optionsEn: [
          'The price of imported steel rises, which can protect domestic steel producers but raise costs for domestic buyers of steel',
          'The price of imported steel falls immediately for domestic consumers',
          'Domestic steel producers are forced to lower their own prices to zero',
          'Tariffs have no effect whatsoever on the price of any imported good',
        ],
        optionsMy: [
          'တင်သွင်းသံမဏိစျေးနှုန်း မြင့်တက်လာပြီး ပြည်တွင်းသံမဏိထုတ်လုပ်သူများကို ကာကွယ်ပေးနိုင်သော်လည်း ပြည်တွင်းဝယ်ယူသူများအတွက် ကုန်ကျစရိတ်မြင့်တက်စေခြင်း',
          'တင်သွင်းသံမဏိစျေးနှုန်း ပြည်တွင်းစားသုံးသူများအတွက် ချက်ချင်း ကျဆင်းသွားခြင်း',
          'ပြည်တွင်းသံမဏိထုတ်လုပ်သူများသည် မိမိတို့စျေးနှုန်းများကို သုညအထိ လျှော့ချရခြင်း',
          'အကောက်ခွန်သည် တင်သွင်းကုန်ပစ္စည်းမည်သည့်တစ်ခု၏ စျေးနှုန်းကိုမျှ လုံးဝမထိခိုက်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What distinguishes a developing economy from a developed economy in terms typically used by international bodies such as the World Bank?',
        questionMy:
            'ကမ္ဘာ့ဘဏ်ကဲ့သို့သော နိုင်ငံတကာအဖွဲ့အစည်းများ ပုံမှန်အသုံးပြုသည့်အနေအထားအရ ဖွံ့ဖြိုးဆဲနိုင်ငံနှင့် ဖွံ့ဖြိုးပြီးနိုင်ငံတို့ကို မည်သို့ခွဲခြားသနည်း။',
        optionsEn: [
          'Developed economies typically have higher income per person, more industrialized production, and stronger institutions than developing economies',
          'Developing economies always have a larger total population than developed economies',
          'Developed economies are defined solely by having a coastline',
          'The distinction is based only on which hemisphere a country is located in',
        ],
        optionsMy: [
          'ဖွံ့ဖြိုးပြီးနိုင်ငံများသည် ဖွံ့ဖြိုးဆဲနိုင်ငံများထက် တစ်ဦးချင်းဝင်ငွေပိုမိုမြင့်မား၊ စက်မှုထုတ်လုပ်မှုပိုမိုအားကောင်းပြီး အဖွဲ့အစည်းများ ပိုမိုအားကောင်းလေ့ရှိခြင်း',
          'ဖွံ့ဖြိုးဆဲနိုင်ငံများသည် ဖွံ့ဖြိုးပြီးနိုင်ငံများထက် လူဦးရေ စုစုပေါင်း အမြဲပိုများနေခြင်း',
          'ဖွံ့ဖြိုးပြီးနိုင်ငံများကို ပင်လယ်ကမ်းရိုးတန်းရှိခြင်းအားဖြင့်သာ သတ်မှတ်ခြင်း',
          'ခွဲခြားမှုသည် နိုင်ငံတည်ရှိရာ လက်ဝဲလက်ယာ ကမ္ဘာ့ဝက်ခြမ်းအပေါ်သာ မူတည်ခြင်း',
        ],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-igcse-socialstudies-3',
    subject: 'socialstudies',
    grade: Grade.igcse,
    contentType: 'quiz',
    titleEn: 'Contemporary Global Issues',
    titleMy: 'ခေတ်ပြိုင်ကမ္ဘာလုံးဆိုင်ရာပြဿနာများ',
    descriptionEn:
        'Critically examine migration, global health, and digital-age challenges facing the modern world.',
    descriptionMy:
        'ခေတ်သစ်ကမ္ဘာကြုံတွေ့နေရသော ရွှေ့ပြောင်းအခြေချမှု၊ ကမ္ဘာလုံးဆိုင်ရာကျန်းမာရေးနှင့် ဒစ်ဂျစ်တယ်ခေတ်စိန်ခေါ်မှုများကို ပြင်းပြင်းထန်ထန် လေ့လာဆန်းစစ်ပါ။',
    starsReward: 28,
    questions: [
      QuizQuestion(
        questionEn:
            'What is the key legal distinction between a "refugee" and an "economic migrant" under international law?',
        questionMy:
            'နိုင်ငံတကာဥပဒေအရ "ဒုက္ခသည်" နှင့် "စီးပွားရေးရွှေ့ပြောင်းနေထိုင်သူ" ကြား အဓိကဥပဒေရေးရာကွာခြားချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A refugee flees persecution, war, or a well-founded fear of harm, while an economic migrant moves primarily to seek better economic opportunity',
          'A refugee is any person who crosses a border for any reason whatsoever',
          'An economic migrant is legally guaranteed automatic citizenship in the destination country',
          'There is no legal distinction; the two terms are officially interchangeable',
        ],
        optionsMy: [
          'ဒုက္ခသည်ဆိုသည်မှာ ညှဉ်းပန်းနှိပ်စက်မှု၊ စစ်ပွဲ သို့မဟုတ် ခိုင်လုံသောအန္တရာယ်စိုးရိမ်မှုကြောင့် ထွက်ပြေးရသူဖြစ်ပြီး စီးပွားရေးရွှေ့ပြောင်းနေထိုင်သူမူ အဓိကအားဖြင့် ပိုကောင်းသောစီးပွားရေးအခွင့်အလမ်းရှာဖွေရန် ရွှေ့ပြောင်းသူဖြစ်ခြင်း',
          'ဒုက္ခသည်ဆိုသည်မှာ မည်သည့်အကြောင်းရင်းနှင့်မဆို နယ်စပ်ဖြတ်ကျော်သူတိုင်းကို ခေါ်ခြင်း',
          'စီးပွားရေးရွှေ့ပြောင်းနေထိုင်သူသည် ရောက်ရှိရာနိုင်ငံ၏ နိုင်ငံသားအဖြစ် အလိုအလျောက် အာမခံရရှိခြင်း',
          'ဥပဒေရေးရာ ကွာခြားချက်ဟူ၍ လုံးဝမရှိဘဲ ဝေါဟာရနှစ်ခုကို တရားဝင်အစားထိုးသုံးနိုင်ခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What did the World Health Organization\'s declaration of COVID-19 as a "pandemic" in 2020 signify?',
        questionMy:
            'ကမ္ဘာ့ကျန်းမာရေးအဖွဲ့ (WHO) က ၂၀၂၀ တွင် COVID-19 ကို "ကမ္ဘာလုံးဆိုင်ရာကူးစက်ရောဂါ (pandemic)" ဟု ကြေညာခြင်း၏ အဓိပ္ပာယ်မှာ အဘယ်နည်း။',
        optionsEn: [
          'That the disease was spreading across multiple continents and affecting a large number of people worldwide',
          'That the disease had been completely eradicated from every country',
          'That only one single country was affected by the outbreak',
          'That the disease could no longer be transmitted between humans',
        ],
        optionsMy: [
          'ထိုရောဂါသည် ကျွန်းတိုက်များစွာတစ်လျှောက် ကူးစက်ပျံ့နှံ့ပြီး ကမ္ဘာတစ်ဝှမ်းရှိလူအများအပြားကို ထိခိုက်စေနေကြောင်း',
          'ထိုရောဂါကို နိုင်ငံအားလုံးမှ လုံးဝပပျောက်အောင် ဖျက်သိမ်းပြီးဖြစ်ကြောင်း',
          'ထိုကူးစက်ရောဂါဖြစ်ပွားမှုသည် နိုင်ငံတစ်ခုတည်းတွင်သာ ရှိကြောင်း',
          'ထိုရောဂါသည် လူချင်းကူးစက်နိုင်တော့ခြင်း မရှိတော့ကြောင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What is the "digital divide" as a contemporary global issue?',
        questionMy:
            'ခေတ်ပြိုင်ကမ္ဘာလုံးဆိုင်ရာပြဿနာတစ်ခုအနေဖြင့် "ဒစ်ဂျစ်တယ်ကွာဟမှု (digital divide)" ဆိုသည်မှာ အဘယ်နည်း။',
        optionsEn: [
          'The gap between people or regions with reliable access to the internet and digital technology and those without it',
          'A law requiring every country to use the same mobile phone brand',
          'The physical distance between two internet data centers',
          'A measure of how fast a single website loads on one device',
        ],
        optionsMy: [
          'ယုံကြည်စိတ်ချရသော အင်တာနက်နှင့် ဒစ်ဂျစ်တယ်နည်းပညာ ရရှိသူများနှင့် မရရှိသူများကြား ကွာဟနေသောအခြေအနေ',
          'နိုင်ငံအားလုံးတစ်သားတည်း မိုဘိုင်းဖုန်းအမှတ်တံဆိပ်တစ်ခုတည်း သုံးရမည့်ဥပဒေတစ်ရပ်',
          'အင်တာနက်ဒေတာဗဟိုစခန်းနှစ်ခုကြား ရုပ်ပိုင်းဆိုင်ရာအကွာအဝေး',
          'ဝက်ဘ်ဆိုက်တစ်ခုတည်းကို စက်ကိရိယာတစ်ခုတည်းပေါ်တွင် တင်ချိန်တိုင်းတာမှု',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'Why do international bodies treat antimicrobial resistance (AMR) as a growing global health threat?',
        questionMy:
            'ပိုးမွှားနှိမ်နှင်းဆေးများအား ခုခံနိုင်စွမ်း (antimicrobial resistance, AMR) ကို နိုင်ငံတကာအဖွဲ့အစည်းများက ကမ္ဘာလုံးဆိုင်ရာ ကျန်းမာရေးခြိမ်းခြောက်မှုတစ်ရပ်အဖြစ် အဘယ့်ကြောင့် သတ်မှတ်ကြသနည်း။',
        optionsEn: [
          'Overuse and misuse of antibiotics is causing bacteria to evolve resistance, making once-treatable infections harder or impossible to cure',
          'It refers to computer viruses becoming resistant to antivirus software',
          'It describes plants becoming resistant to sunlight in tropical climates',
          'It means vaccines are becoming less effective against seasonal allergies',
        ],
        optionsMy: [
          'ပဋိဇီဝဆေးများကို လွန်ကဲစွာသုံးစွဲခြင်းနှင့် မှားယွင်းစွာသုံးစွဲခြင်းကြောင့် ဘက်တီးရီးယားများ ခုခံနိုင်စွမ်းဖြစ်ပေါ်လာပြီး ယခင်ကကုသနိုင်ခဲ့သည့် ကူးစက်ရောဂါများကို ကုသရခက်ခဲ သို့မဟုတ် မကုသနိုင်တော့ခြင်း',
          'ကွန်ပျူတာဗိုင်းရပ်စ်များ ဗိုင်းရပ်စ်ကာကွယ်ရေးဆော့ဖ်ဝဲကို ခုခံနိုင်စွမ်းဖြစ်လာခြင်းကို ရည်ညွှန်းခြင်း',
          'အပူပိုင်းရာသီဥတုရှိ အပင်များ နေရောင်ခြည်ကို ခုခံနိုင်စွမ်းဖြစ်လာခြင်းကို ဖော်ပြခြင်း',
          'ကာကွယ်ဆေးများသည် ရာသီအလိုက်ဓာတ်မတည့်မှုများကို ဒေါင်းလျော့ ထိရောက်မှုနည်းလာခြင်းကို ဆိုလိုခြင်း',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn:
            'What best defines "food security" as discussed by global development organizations?',
        questionMy:
            'ကမ္ဘာလုံးဆိုင်ရာဖွံ့ဖြိုးရေးအဖွဲ့အစည်းများ ဆွေးနွေးလေ့ရှိသော "အစားအစာဖူလုံမှု (food security)" ကို အကောင်းဆုံးဖော်ပြသော အနက်ဖွင့်ဆိုချက်မှာ အဘယ်နည်း။',
        optionsEn: [
          'A state in which all people, at all times, have physical and economic access to sufficient, safe, and nutritious food',
          'A country\'s ability to export more food than it imports every year',
          'A guarantee that food prices never change in any market',
          'A military policy for protecting farmland from foreign invasion',
        ],
        optionsMy: [
          'လူတိုင်းသည် အချိန်တိုင်းတွင် လုံလောက်၊ ဘေးကင်း၍ အာဟာရပြည့်ဝသော အစားအစာကို ရုပ်ပိုင်းဆိုင်ရာနှင့် စီးပွားရေးအရ ရယူနိုင်သောအခြေအနေ',
          'နိုင်ငံတစ်ခုသည် နှစ်စဉ် တင်သွင်းသည်ထက် အစားအစာပိုမိုတင်ပို့နိုင်သော စွမ်းရည်',
          'ဈေးကွက်မည်သည့်နေရာတွင်မဆို အစားအစာစျေးနှုန်း ဘယ်တော့မှ မပြောင်းလဲကြောင်း အာမခံချက်',
          'လယ်ယာမြေများကို နိုင်ငံခြားကျူးကျော်မှုမှ ကာကွယ်ရန် စစ်ရေးမူဝါဒတစ်ရပ်',
        ],
        correctIndex: 0,
      ),
    ],
  ),
];
