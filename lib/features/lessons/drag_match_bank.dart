import '../../models/child_model.dart';
import 'interactive_content_models.dart';

/// One "drag to match" curriculum module: bilingual catalog metadata plus
/// its own fixed set of [DragMatchPair]s. Structurally mirrors
/// [PrimaryActivityDef]/[SecondaryActivityDef] (`primary_curriculum_bank.dart`
/// / `secondary_curriculum_bank.dart`), but carries [DragMatchPair]s instead
/// of MCQ [QuizQuestion]s since this content plays back through
/// [DragMatchScreen] (`drag_match_screen.dart`). A single Def class covers
/// both Primary and Secondary/IGCSE grades (unlike the quiz banks' two
/// separate classes) since the fields are identical.
class DragMatchModuleDef {
  const DragMatchModuleDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.contentType,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.pairs,
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
  final List<DragMatchPair> pairs;
}

/// Looks up the drag-match pair bank for a specific module by [moduleId]
/// (e.g. `mock-year4-coding-dragmatch-1`). Falls back to the subject-only
/// [dragMatchPairsForSubject] lookup when [moduleId] is null or not found in
/// [primaryDragMatchBank] or [secondaryDragMatchBank] -- mirrors
/// [quizQuestionsForModule]'s exact pattern (`mock_quiz_data.dart` /
/// `primary_curriculum_bank.dart`).
List<DragMatchPair> dragMatchPairsForModule(String? moduleId, String subject) {
  if (moduleId != null) {
    for (final activity in primaryDragMatchBank) {
      if (activity.id == moduleId) return activity.pairs;
    }
    for (final activity in secondaryDragMatchBank) {
      if (activity.id == moduleId) return activity.pairs;
    }
  }
  return dragMatchPairsForSubject(subject);
}

/// Looks up the drag-match pair bank for [subject] (case-insensitive) by
/// scanning both banks for the first module with a matching subject key.
/// Falls back to a small generic bank for any subject key that isn't
/// covered yet, so the screen never has nothing to show -- mirrors
/// [quizQuestionsForSubject]'s exact pattern (`mock_quiz_data.dart`).
List<DragMatchPair> dragMatchPairsForSubject(String subject) {
  final key = subject.toLowerCase();
  for (final activity in primaryDragMatchBank) {
    if (activity.subject == key) return activity.pairs;
  }
  for (final activity in secondaryDragMatchBank) {
    if (activity.subject == key) return activity.pairs;
  }
  return _genericDragMatchPairs;
}

/// A generic, mixed-subject bank used whenever [dragMatchPairsForSubject]
/// doesn't recognize the requested subject key.
const List<DragMatchPair> _genericDragMatchPairs = [
  DragMatchPair(
    id: 'generic-teamwork',
    termEn: 'Teamwork',
    termMy: 'အဖွဲ့လိုက်ပူးပေါင်းဆောင်ရွက်မှု',
    matchEn: 'Working together to reach a goal',
    matchMy: 'ရည်မှန်းချက်ရောက်ရန် အတူတကွ လုပ်ဆောင်ခြင်း',
    colorValue: 0xFFE64545,
  ),
  DragMatchPair(
    id: 'generic-practice',
    termEn: 'Practice',
    termMy: 'လေ့ကျင့်ခြင်း',
    matchEn: 'Doing something again and again to improve',
    matchMy: 'တိုးတက်လာစေရန် တစ်ခုခုကို ထပ်ခါထပ်ခါ လုပ်ဆောင်ခြင်း',
    colorValue: 0xFFFFC93C,
  ),
  DragMatchPair(
    id: 'generic-curiosity',
    termEn: 'Curiosity',
    termMy: 'စူးစမ်းလိုစိတ်',
    matchEn: 'A strong desire to learn or know more',
    matchMy: 'ပိုမိုသိရှိလိုသော ပြင်းပြသောဆန္ဒ',
    colorValue: 0xFF9C6ADE,
  ),
  DragMatchPair(
    id: 'generic-patience',
    termEn: 'Patience',
    termMy: 'သည်းခံမှု',
    matchEn: 'Staying calm while waiting or facing difficulty',
    matchMy: 'စောင့်ဆိုင်းစဉ် သို့မဟုတ် အခက်အခဲကြုံရစဉ် တည်ငြိမ်စွာနေခြင်း',
    colorValue: 0xFFFF8A3D,
  ),
  DragMatchPair(
    id: 'generic-kindness',
    termEn: 'Kindness',
    termMy: 'ကြင်နာမှု',
    matchEn: 'Being friendly and caring toward others',
    matchMy: 'အခြားသူများအပေါ် ချစ်ခင်ကြင်နာစွာ ဆက်ဆံခြင်း',
    colorValue: 0xFF4CB963,
  ),
];

/// One drag-to-match module per Primary grade (Year 1-6), each covering a
/// different subject (math/english/science/coding/engineering/stem) so this
/// content isn't repetitive across grades.
const List<DragMatchModuleDef> primaryDragMatchBank = [
  // ============================== YEAR 1 ==============================
  DragMatchModuleDef(
    id: 'mock-year1-math-dragmatch-1',
    subject: 'math',
    grade: Grade.year1,
    contentType: 'dragMatch',
    titleEn: 'Shape Match',
    titleMy: 'ပုံသဏ္ဌာန် တွဲစပ်ခြင်း',
    descriptionEn: 'Drag each shape name to its matching definition.',
    descriptionMy:
        'ပုံသဏ္ဌာန်အမည်တစ်ခုစီကို ၎င်း၏အဓိပ္ပာယ်နှင့် ဆွဲယူတွဲစပ်ပါ။',
    starsReward: 10,
    pairs: [
      DragMatchPair(
        id: 'y1-math-circle',
        termEn: 'Circle',
        termMy: 'စက်ဝိုင်း',
        matchEn: 'A round shape with no corners',
        matchMy: 'ထောင့်မရှိသော စက်ဝိုင်းပုံသဏ္ဌာန်',
        colorValue: 0xFFE64545,
      ),
      DragMatchPair(
        id: 'y1-math-square',
        termEn: 'Square',
        termMy: 'စတုရန်း',
        matchEn: 'A shape with four equal sides',
        matchMy: 'ညီမျှသော ဘေးလေးဘက်ရှိသော ပုံသဏ္ဌာန်',
        colorValue: 0xFFFFC93C,
      ),
      DragMatchPair(
        id: 'y1-math-triangle',
        termEn: 'Triangle',
        termMy: 'တြိဂံ',
        matchEn: 'A shape with three sides',
        matchMy: 'ဘေးသုံးဘက်ရှိသော ပုံသဏ္ဌာန်',
        colorValue: 0xFF9C6ADE,
      ),
      DragMatchPair(
        id: 'y1-math-rectangle',
        termEn: 'Rectangle',
        termMy: 'ထောင့်မှန်စတုဂံ',
        matchEn: 'A shape with four sides and four right angles',
        matchMy: 'ဘေးလေးဘက်နှင့် ထောင့်မှန်လေးခုရှိသော ပုံသဏ္ဌာန်',
        colorValue: 0xFFFF8A3D,
      ),
      DragMatchPair(
        id: 'y1-math-star',
        termEn: 'Star',
        termMy: 'ကြယ်ပုံ',
        matchEn: 'A shape with five or more points',
        matchMy: 'အစွန်းငါးခု သို့မဟုတ် ထို့ထက်ပိုသော ပုံသဏ္ဌာန်',
        colorValue: 0xFF4CB963,
      ),
    ],
  ),
  // ============================== YEAR 2 ==============================
  DragMatchModuleDef(
    id: 'mock-year2-english-dragmatch-1',
    subject: 'english',
    grade: Grade.year2,
    contentType: 'dragMatch',
    titleEn: 'Word Meanings',
    titleMy: 'စကားလုံး အဓိပ္ပာယ်များ',
    descriptionEn: 'Drag each word to its matching meaning.',
    descriptionMy: 'စကားလုံးတစ်ခုစီကို ၎င်း၏အဓိပ္ပာယ်နှင့် ဆွဲယူတွဲစပ်ပါ။',
    starsReward: 12,
    pairs: [
      DragMatchPair(
        id: 'y2-eng-happy',
        termEn: 'Happy',
        termMy: 'ပျော်ရွှင်သော',
        matchEn: 'Feeling joy or pleasure',
        matchMy: 'ဝမ်းသာစရာ သို့မဟုတ် ပျော်ရွှင်မှု ခံစားရခြင်း',
        colorValue: 0xFFFF7F91,
      ),
      DragMatchPair(
        id: 'y2-eng-brave',
        termEn: 'Brave',
        termMy: 'သတ္တိရှိသော',
        matchEn: 'Not afraid to do difficult things',
        matchMy: 'ခက်ခဲသောအရာများကို ရွံ့တွန့်စရာမလိုခြင်း',
        colorValue: 0xFF7271F7,
      ),
      DragMatchPair(
        id: 'y2-eng-enormous',
        termEn: 'Enormous',
        termMy: 'ကြီးမားလွန်းသော',
        matchEn: 'Extremely large in size',
        matchMy: 'အရွယ်အစား အလွန်ကြီးမားခြင်း',
        colorValue: 0xFFFFBF3C,
      ),
      DragMatchPair(
        id: 'y2-eng-gentle',
        termEn: 'Gentle',
        termMy: 'နူးညံ့သော',
        matchEn: 'Kind and soft, not rough',
        matchMy: 'ကြမ်းတမ်းမှုမရှိဘဲ ကြင်နာနူးညံ့ခြင်း',
        colorValue: 0xFFB5B557,
      ),
      DragMatchPair(
        id: 'y2-eng-curious',
        termEn: 'Curious',
        termMy: 'စူးစမ်းလိုစိတ်ရှိသော',
        matchEn: 'Eager to learn or know something',
        matchMy: 'တစ်စုံတစ်ခုကို လေ့လာသိရှိလိုစိတ် ပြင်းပြခြင်း',
        colorValue: 0xFF94BDFF,
      ),
    ],
  ),
  // ============================== YEAR 3 ==============================
  DragMatchModuleDef(
    id: 'mock-year3-science-dragmatch-1',
    subject: 'science',
    grade: Grade.year3,
    contentType: 'dragMatch',
    titleEn: 'Nature Words',
    titleMy: 'သဘာဝ စကားလုံးများ',
    descriptionEn: 'Drag each nature term to its matching definition.',
    descriptionMy:
        'သဘာဝဆိုင်ရာ စကားလုံးတစ်ခုစီကို ၎င်း၏အဓိပ္ပာယ်နှင့် ဆွဲယူတွဲစပ်ပါ။',
    starsReward: 14,
    pairs: [
      DragMatchPair(
        id: 'y3-sci-habitat',
        termEn: 'Habitat',
        termMy: 'နေထိုင်ရာနေရာ',
        matchEn: 'The natural home of an animal',
        matchMy: 'တိရစ္ဆာန်တစ်ကောင်၏ သဘာဝနေအိမ်',
        colorValue: 0xFFFF6A65,
      ),
      DragMatchPair(
        id: 'y3-sci-predator',
        termEn: 'Predator',
        termMy: 'သားရဲတိရစ္ဆာန်',
        matchEn: 'An animal that hunts other animals for food',
        matchMy: 'အခြားတိရစ္ဆာန်များကို အစာအဖြစ် ဖမ်းဆီးစားသောက်သော တိရစ္ဆာန်',
        colorValue: 0xFFFF7F91,
      ),
      DragMatchPair(
        id: 'y3-sci-herbivore',
        termEn: 'Herbivore',
        termMy: 'အပင်စားတိရစ္ဆာန်',
        matchEn: 'An animal that only eats plants',
        matchMy: 'အပင်များကိုသာ စားသော တိရစ္ဆာန်',
        colorValue: 0xFF7271F7,
      ),
      DragMatchPair(
        id: 'y3-sci-evaporation',
        termEn: 'Evaporation',
        termMy: 'အငွေ့ပျံခြင်း',
        matchEn: 'When water turns into vapor',
        matchMy: 'ရေသည် အငွေ့အဖြစ် ပြောင်းလဲသော အခြင်းအရာ',
        colorValue: 0xFFFFBF3C,
      ),
      DragMatchPair(
        id: 'y3-sci-skeleton',
        termEn: 'Skeleton',
        termMy: 'အရိုးဆစ်',
        matchEn: 'The frame of bones inside a body',
        matchMy: 'ခန္ဓာကိုယ်အတွင်းရှိ အရိုးများ၏ဘောင်',
        colorValue: 0xFFB5B557,
      ),
    ],
  ),
  // ============================== YEAR 4 ==============================
  DragMatchModuleDef(
    id: 'mock-year4-coding-dragmatch-1',
    subject: 'coding',
    grade: Grade.year4,
    contentType: 'dragMatch',
    titleEn: 'Coding Words',
    titleMy: 'ကုဒ်ရေးသားခြင်း စကားလုံးများ',
    descriptionEn: 'Drag each coding term to its matching definition.',
    descriptionMy:
        'ကုဒ်ရေးသားခြင်းဆိုင်ရာ စကားလုံးတစ်ခုစီကို ၎င်း၏အဓိပ္ပာယ်နှင့် ဆွဲယူတွဲစပ်ပါ။',
    starsReward: 16,
    pairs: [
      DragMatchPair(
        id: 'y4-code-loop',
        termEn: 'Loop',
        termMy: 'ကွင်းဆက်',
        matchEn: 'Repeats a set of instructions',
        matchMy: 'ညွှန်ကြားချက်များကို ထပ်ခါထပ်ခါ လုပ်ဆောင်ခြင်း',
        colorValue: 0xFF94BDFF,
      ),
      DragMatchPair(
        id: 'y4-code-command',
        termEn: 'Command',
        termMy: 'အမိန့်ပေးချက်',
        matchEn: 'An instruction telling the computer what to do',
        matchMy: 'ကွန်ပျူတာအား ဘာလုပ်ရမည်ကို ပြောပြသော ညွှန်ကြားချက်',
        colorValue: 0xFFFF6A65,
      ),
      DragMatchPair(
        id: 'y4-code-sprite',
        termEn: 'Sprite',
        termMy: 'ရုပ်ပုံအထောက်အကူ',
        matchEn: 'A character or object you can code to move',
        matchMy: 'ရွှေ့လျားစေရန် ကုဒ်ရေးနိုင်သော ဇာတ်ကောင် သို့မဟုတ် အရာဝတ္ထု',
        colorValue: 0xFFFF7F91,
      ),
      DragMatchPair(
        id: 'y4-code-bug',
        termEn: 'Bug',
        termMy: 'အမှားအယွင်း',
        matchEn: 'A mistake in a program',
        matchMy: 'ပရိုဂရမ်တစ်ခုအတွင်းရှိ အမှား',
        colorValue: 0xFF7271F7,
      ),
      DragMatchPair(
        id: 'y4-code-algorithm',
        termEn: 'Algorithm',
        termMy: 'အယ်လဂိုရီသမ်',
        matchEn: 'A step-by-step plan to solve a problem',
        matchMy: 'ပြဿနာတစ်ခုကို ဖြေရှင်းရန် အဆင့်ဆင့် အစီအစဉ်',
        colorValue: 0xFFFFBF3C,
      ),
    ],
  ),
  // ============================== YEAR 5 ==============================
  DragMatchModuleDef(
    id: 'mock-year5-engineering-dragmatch-1',
    subject: 'engineering',
    grade: Grade.year5,
    contentType: 'dragMatch',
    titleEn: 'Engineering Words',
    titleMy: 'အင်ဂျင်နီယာ စကားလုံးများ',
    descriptionEn: 'Drag each engineering term to its matching definition.',
    descriptionMy:
        'အင်ဂျင်နီယာဆိုင်ရာ စကားလုံးတစ်ခုစီကို ၎င်း၏အဓိပ္ပာယ်နှင့် ဆွဲယူတွဲစပ်ပါ။',
    starsReward: 18,
    pairs: [
      DragMatchPair(
        id: 'y5-eng-structure',
        termEn: 'Structure',
        termMy: 'အဆောက်အအုံ',
        matchEn: 'Something built to stand and hold weight',
        matchMy: 'ရပ်တည်ပြီး ဝန်အားခံနိုင်ရန် တည်ဆောက်ထားသော အရာ',
        colorValue: 0xFFB5B557,
      ),
      DragMatchPair(
        id: 'y5-eng-blueprint',
        termEn: 'Blueprint',
        termMy: 'ဒီဇိုင်းစီမံကြံ့ဆွဲကြမ်း',
        matchEn: 'A detailed plan or drawing of a design',
        matchMy: 'ဒီဇိုင်းတစ်ခု၏ အသေးစိတ် အစီအစဉ် သို့မဟုတ် ပုံစံဆွဲကြမ်း',
        colorValue: 0xFF94BDFF,
      ),
      DragMatchPair(
        id: 'y5-eng-lever',
        termEn: 'Lever',
        termMy: 'ချိန်လျှော',
        matchEn: 'A simple machine that helps lift heavy things',
        matchMy: 'လေးလံသောအရာများကို ချီမြှင့်ရန် ကူညီသော ရိုးရှင်းသောစက်',
        colorValue: 0xFFFF6A65,
      ),
      DragMatchPair(
        id: 'y5-eng-circuit',
        termEn: 'Circuit',
        termMy: 'ဆားကစ်',
        matchEn: 'A path that electricity flows through',
        matchMy: 'လျှပ်စစ်စီးဆင်းရာ လမ်းကြောင်း',
        colorValue: 0xFFFF7F91,
      ),
      DragMatchPair(
        id: 'y5-eng-prototype',
        termEn: 'Prototype',
        termMy: 'အစမ်းနမူနာပုံစံ',
        matchEn: 'A first working model of a design',
        matchMy: 'ဒီဇိုင်းတစ်ခု၏ ပထမဆုံး အလုပ်လုပ်နိုင်သော ပုံစံ',
        colorValue: 0xFF7271F7,
      ),
    ],
  ),
  // ============================== YEAR 6 ==============================
  DragMatchModuleDef(
    id: 'mock-year6-stem-dragmatch-1',
    subject: 'stem',
    grade: Grade.year6,
    contentType: 'dragMatch',
    titleEn: 'STEM Vocabulary',
    titleMy: 'STEM ဝေါဟာရများ',
    descriptionEn: 'Drag each STEM term to its matching definition.',
    descriptionMy:
        'STEM ဆိုင်ရာ စကားလုံးတစ်ခုစီကို ၎င်း၏အဓိပ္ပာယ်နှင့် ဆွဲယူတွဲစပ်ပါ။',
    starsReward: 20,
    pairs: [
      DragMatchPair(
        id: 'y6-stem-hypothesis',
        termEn: 'Hypothesis',
        termMy: 'ယူဆချက်',
        matchEn: 'An idea to be tested by an experiment',
        matchMy: 'စမ်းသပ်မှုဖြင့် သက်သေပြရမည့် အယူအဆ',
        colorValue: 0xFFFFBF3C,
      ),
      DragMatchPair(
        id: 'y6-stem-variable',
        termEn: 'Variable',
        termMy: 'ပြောင်းလဲနိုင်သောအရာ',
        matchEn: 'Something that can change in an experiment',
        matchMy: 'စမ်းသပ်မှုတစ်ခုတွင် ပြောင်းလဲနိုင်သော အရာ',
        colorValue: 0xFFB5B557,
      ),
      DragMatchPair(
        id: 'y6-stem-data',
        termEn: 'Data',
        termMy: 'ဒေတာ',
        matchEn: 'Facts and numbers collected from observation',
        matchMy: 'လေ့လာမှတ်သားမှုမှ ရရှိသော အချက်အလက်နှင့် ကိန်းဂဏန်းများ',
        colorValue: 0xFF94BDFF,
      ),
      DragMatchPair(
        id: 'y6-stem-conclusion',
        termEn: 'Conclusion',
        termMy: 'နိဂုံးချက်',
        matchEn: 'A decision made after looking at the results',
        matchMy: 'ရလဒ်များကို လေ့လာပြီးနောက် ချမှတ်သော ဆုံးဖြတ်ချက်',
        colorValue: 0xFFFF6A65,
      ),
      DragMatchPair(
        id: 'y6-stem-innovation',
        termEn: 'Innovation',
        termMy: 'တီထွင်ဆန်းသစ်မှု',
        matchEn: 'A new idea, method, or invention',
        matchMy: 'အယူအဆအသစ်၊ နည်းလမ်းအသစ် သို့မဟုတ် တီထွင်မှု',
        colorValue: 0xFFFF7F91,
      ),
    ],
  ),
];

/// One drag-to-match module per Secondary/IGCSE grade, each covering a
/// different subject (algebra/chemistry/physics/biology) so this content
/// isn't repetitive across grades.
const List<DragMatchModuleDef> secondaryDragMatchBank = [
  // ============================== SECONDARY 1 ==============================
  DragMatchModuleDef(
    id: 'mock-secondary1-algebra-dragmatch-1',
    subject: 'algebra',
    grade: Grade.secondary1,
    contentType: 'dragMatch',
    titleEn: 'Algebra Terms',
    titleMy: 'အက္ခရာသင်္ချာ စကားလုံးများ',
    descriptionEn: 'Drag each algebra term to its matching definition.',
    descriptionMy:
        'အက္ခရာသင်္ချာဆိုင်ရာ စကားလုံးတစ်ခုစီကို ၎င်း၏အဓိပ္ပာယ်နှင့် ဆွဲယူတွဲစပ်ပါ။',
    starsReward: 22,
    pairs: [
      DragMatchPair(
        id: 's1-alg-variable',
        termEn: 'Variable',
        termMy: 'ကိန်းရွေ့',
        matchEn: 'A letter that represents an unknown number',
        matchMy: 'အမည်မသိကိန်းတစ်ခုကို ကိုယ်စားပြုသော အက္ခရာ',
        colorValue: 0xFF9C6ADE,
      ),
      DragMatchPair(
        id: 's1-alg-coefficient',
        termEn: 'Coefficient',
        termMy: 'ကိန်းသေမြှောက်',
        matchEn: 'A number multiplied by a variable',
        matchMy: 'ကိန်းရွေ့တစ်ခုနှင့် မြှောက်ထားသော ကိန်းဂဏန်း',
        colorValue: 0xFFFF8A3D,
      ),
      DragMatchPair(
        id: 's1-alg-equation',
        termEn: 'Equation',
        termMy: 'ညီမျှခြင်း',
        matchEn: 'A statement that two expressions are equal',
        matchMy: 'ဖော်ပြချက်နှစ်ခု ညီမျှကြောင်း ဖော်ပြချက်',
        colorValue: 0xFF4CB963,
      ),
      DragMatchPair(
        id: 's1-alg-expression',
        termEn: 'Expression',
        termMy: 'ဖော်ပြချက်',
        matchEn: 'A combination of numbers, variables, and operations',
        matchMy: 'ကိန်းဂဏန်း၊ ကိန်းရွေ့နှင့် တွက်ချက်မှုများ ပေါင်းစပ်ထားခြင်း',
        colorValue: 0xFFE64545,
      ),
      DragMatchPair(
        id: 's1-alg-constant',
        termEn: 'Constant',
        termMy: 'ကိန်းသေ',
        matchEn: 'A value that does not change',
        matchMy: 'မပြောင်းလဲနိုင်သော တန်ဖိုး',
        colorValue: 0xFFFFC93C,
      ),
    ],
  ),
  // ============================== SECONDARY 2 ==============================
  DragMatchModuleDef(
    id: 'mock-secondary2-chemistry-dragmatch-1',
    subject: 'chemistry',
    grade: Grade.secondary2,
    contentType: 'dragMatch',
    titleEn: 'Chemistry Terms',
    titleMy: 'ဓာတုဗေဒ စကားလုံးများ',
    descriptionEn: 'Drag each chemistry term to its matching definition.',
    descriptionMy:
        'ဓာတုဗေဒဆိုင်ရာ စကားလုံးတစ်ခုစီကို ၎င်း၏အဓိပ္ပာယ်နှင့် ဆွဲယူတွဲစပ်ပါ။',
    starsReward: 24,
    pairs: [
      DragMatchPair(
        id: 's2-chem-element',
        termEn: 'Element',
        termMy: 'ဒြပ်စင်',
        matchEn: 'A substance made of only one type of atom',
        matchMy: 'အက်တမ်တစ်မျိုးတည်းဖြင့် ဖွဲ့စည်းထားသော ဒြပ်ပစ္စည်း',
        colorValue: 0xFFFF7F91,
      ),
      DragMatchPair(
        id: 's2-chem-molecule',
        termEn: 'Molecule',
        termMy: 'မော်လီကျူး',
        matchEn: 'Two or more atoms bonded together',
        matchMy: 'အက်တမ်နှစ်ခု သို့မဟုတ် ထို့ထက်ပို၍ ချိတ်ဆက်ထားခြင်း',
        colorValue: 0xFF7271F7,
      ),
      DragMatchPair(
        id: 's2-chem-catalyst',
        termEn: 'Catalyst',
        termMy: 'ဓာတ်တိုးအရှိန်မြှင့်ပစ္စည်း',
        matchEn: 'A substance that speeds up a reaction without being used up',
        matchMy:
            'မိမိကိုယ်တိုင် မကုန်ဘဲ တုံ့ပြန်မှုအား အရှိန်မြှင့်ပေးသော ပစ္စည်း',
        colorValue: 0xFFFFBF3C,
      ),
      DragMatchPair(
        id: 's2-chem-solution',
        termEn: 'Solution',
        termMy: 'ဒြပ်ရည်',
        matchEn: 'A mixture where one substance dissolves in another',
        matchMy:
            'ဒြပ်ပစ္စည်းတစ်ခုသည် အခြားတစ်ခုတွင် ပျော်ဝင်နေသော ရောစပ်ပစ္စည်း',
        colorValue: 0xFFB5B557,
      ),
      DragMatchPair(
        id: 's2-chem-acid',
        termEn: 'Acid',
        termMy: 'အက်ဆစ်',
        matchEn: 'A substance with a pH lower than 7',
        matchMy: 'pH တန်ဖိုး ၇ ထက်နည်းသော ပစ္စည်း',
        colorValue: 0xFF94BDFF,
      ),
    ],
  ),
  // ============================== SECONDARY 3 ==============================
  DragMatchModuleDef(
    id: 'mock-secondary3-physics-dragmatch-1',
    subject: 'physics',
    grade: Grade.secondary3,
    contentType: 'dragMatch',
    titleEn: 'Physics Terms',
    titleMy: 'ရူပဗေဒ စကားလုံးများ',
    descriptionEn: 'Drag each physics term to its matching definition.',
    descriptionMy:
        'ရူပဗေဒဆိုင်ရာ စကားလုံးတစ်ခုစီကို ၎င်း၏အဓိပ္ပာယ်နှင့် ဆွဲယူတွဲစပ်ပါ။',
    starsReward: 26,
    pairs: [
      DragMatchPair(
        id: 's3-phys-velocity',
        termEn: 'Velocity',
        termMy: 'အလျင်ဦးတည်ချက်ပါ',
        matchEn: 'Speed in a given direction',
        matchMy: 'ဦးတည်ရာတစ်ခုပါသော အလျင်',
        colorValue: 0xFFFF6A65,
      ),
      DragMatchPair(
        id: 's3-phys-momentum',
        termEn: 'Momentum',
        termMy: 'ရွေ့လျားအား',
        matchEn: 'Mass multiplied by velocity',
        matchMy: 'ဒြပ်ထုနှင့် အလျင်ကို မြှောက်ထားခြင်း',
        colorValue: 0xFFFF7F91,
      ),
      DragMatchPair(
        id: 's3-phys-friction',
        termEn: 'Friction',
        termMy: 'ပွတ်တိုက်အား',
        matchEn: 'A force that resists motion between surfaces',
        matchMy: 'မျက်နှာပြင်များအကြား ရွေ့လျားမှုကို ဆန့်ကျင်သော အား',
        colorValue: 0xFF7271F7,
      ),
      DragMatchPair(
        id: 's3-phys-wavelength',
        termEn: 'Wavelength',
        termMy: 'လှိုင်းအလျား',
        matchEn: 'The distance between two wave peaks',
        matchMy: 'လှိုင်းထိပ်နှစ်ခုကြား အကွာအဝေး',
        colorValue: 0xFFFFBF3C,
      ),
      DragMatchPair(
        id: 's3-phys-circuit',
        termEn: 'Circuit',
        termMy: 'ဆားကစ်',
        matchEn: 'A closed path electric current flows through',
        matchMy: 'လျှပ်စစ်လျှပ်စီးကြောင်း စီးဆင်းရာ ပိတ်နေသောလမ်းကြောင်း',
        colorValue: 0xFFB5B557,
      ),
    ],
  ),
  // ============================== IGCSE ==============================
  DragMatchModuleDef(
    id: 'mock-igcse-biology-dragmatch-1',
    subject: 'biology',
    grade: Grade.igcse,
    contentType: 'dragMatch',
    titleEn: 'Biology Terms',
    titleMy: 'ဇီဝဗေဒ စကားလုံးများ',
    descriptionEn: 'Drag each biology term to its matching definition.',
    descriptionMy:
        'ဇီဝဗေဒဆိုင်ရာ စကားလုံးတစ်ခုစီကို ၎င်း၏အဓိပ္ပာယ်နှင့် ဆွဲယူတွဲစပ်ပါ။',
    starsReward: 28,
    pairs: [
      DragMatchPair(
        id: 'igcse-bio-enzyme',
        termEn: 'Enzyme',
        termMy: 'အင်ဇိုင်း',
        matchEn: 'A protein that speeds up chemical reactions',
        matchMy: 'ဓာတုတုံ့ပြန်မှုများကို အရှိန်မြှင့်ပေးသော ပရိုတိန်း',
        colorValue: 0xFF94BDFF,
      ),
      DragMatchPair(
        id: 'igcse-bio-chromosome',
        termEn: 'Chromosome',
        termMy: 'ခရိုမိုဆုန်း',
        matchEn: 'A thread-like structure carrying genetic information',
        matchMy: 'မျိုးရိုးဗီဇအချက်အလက် သယ်ဆောင်သော ချည်ကဲ့သို့ ဖွဲ့စည်းပုံ',
        colorValue: 0xFFFF6A65,
      ),
      DragMatchPair(
        id: 'igcse-bio-homeostasis',
        termEn: 'Homeostasis',
        termMy: 'ခန္ဓာတွင်းညီမျှမှု',
        matchEn: "The regulation of an organism's internal environment",
        matchMy: 'သက်ရှိတစ်ခု၏ အတွင်းပတ်ဝန်းကျင်ကို ထိန်းညှိခြင်း',
        colorValue: 0xFFFF7F91,
      ),
      DragMatchPair(
        id: 'igcse-bio-osmosis',
        termEn: 'Osmosis',
        termMy: 'အော်စမိုးစစ်',
        matchEn: 'The movement of water through a membrane',
        matchMy: 'အမြှေးပါးမှတဆင့် ရေ၏ ရွေ့လျားမှု',
        colorValue: 0xFF7271F7,
      ),
      DragMatchPair(
        id: 'igcse-bio-mitosis',
        termEn: 'Mitosis',
        termMy: 'မိုက်တိုးစစ်',
        matchEn: 'Cell division that produces two identical cells',
        matchMy: 'ဆဲလ်တူနှစ်ခု ထုတ်ပေးသော ဆဲလ်ခွဲခြင်း',
        colorValue: 0xFFFFBF3C,
      ),
    ],
  ),
];
