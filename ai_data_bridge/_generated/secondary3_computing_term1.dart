const CourseWeekDef _secondary3ComputingWeek1 = CourseWeekDef(
  id: "course-secondary3-computing-w1",
  weekNumber: 1,
  titleEn: "Searching Algorithms",
  titleMy: "ရှာဖွေရေး အယ်လဂိုရီသမ်များ (Searching Algorithms)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s3-computing-w1-d1",
      dayNumber: 1,
      titleEn: "Linear Search and Binary Search",
      titleMy: "Linear Search နှင့် Binary Search",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "How does a Linear Search find a target value in a list?",
          questionMy:
              "Linear Search သည် စာရင်းတစ်ခုတွင် ပစ်မှတ်တန်ဖိုးကို မည်သို့ ရှာဖွေသနည်း။",
          optionsEn: [
            "It checks each item one by one, in order, until it finds the target or reaches the end",
            "It always jumps straight to the middle item first",
            "It only works if the list is already sorted",
            "It checks the last item first, then works backward",
          ],
          optionsMy: [
            "ပစ်မှတ်ကို ရှာတွေ့သည် သို့မဟုတ် အဆုံးသို့ရောက်သည်အထိ အစီအစဉ်အတိုင်း အရာတစ်ခုစီကို တစ်ခုချင်း စစ်ဆေးသည်",
            "အလယ်ရှိအရာသို့ အမြဲတမ်း ချက်ချင်း ခုန်သွားသည်",
            "စာရင်းသည် အစီအစဉ်ကျပြီးသားဖြစ်မှသာ အလုပ်လုပ်သည်",
            "နောက်ဆုံးအရာကို ဦးစွာစစ်ဆေးပြီး နောက်ပြန်လုပ်ဆောင်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about searching for a name in an unsorted list of names, one at a time from the start.",
            "This simple, step-by-step approach works on any list, sorted or not, but can be slow for large lists.",
          ],
          hintsMy: [
            "စီစဉ်မထားသော အမည်စာရင်းတစ်ခုတွင် အစမှတစ်ခုချင်း အမည်တစ်ခုကို ရှာဖွေခြင်းကို စဉ်းစားပါ။",
            "ဤရိုးရှင်း၊ အဆင့်ဆင့်နည်းလမ်းသည် စာရင်းမည်သည့်အမျိုးအစား (စီစဉ်ထား/မထား) တွင်မဆို အလုပ်လုပ်သော်လည်း စာရင်းကြီးများအတွက် နှေးကွေးနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What must be true about a list before you can use Binary Search on it?",
          questionMy:
              "Binary Search ကို အသုံးပြုနိုင်ရန် စာရင်းတစ်ခုအတွက် မည်သည့်အချက် မှန်ကန်ရမည်နည်း။",
          optionsEn: [
            "The list must already be sorted",
            "The list must contain only numbers, never text",
            "The list must have an odd number of items",
            "The list must be searched from the last item first",
          ],
          optionsMy: [
            "စာရင်းသည် အစီအစဉ်ကျပြီးသား ဖြစ်ရမည်",
            "စာရင်းတွင် ဂဏန်းများသာ ပါဝင်ရပြီး စာသား လုံးဝမပါရ",
            "စာရင်းတွင် မကိန်းအရေအတွက် အချက်များ ရှိရမည်",
            "စာရင်းကို နောက်ဆုံးအရာမှစ၍ ရှာဖွေရမည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Binary Search works by repeatedly checking the middle item and eliminating half the list each time.",
            "This 'eliminate half' trick only works correctly if the items are already in order, so the algorithm can decide which half to discard.",
          ],
          hintsMy: [
            "Binary Search သည် အလယ်ရှိအရာကို ထပ်ခါထပ်ခါ စစ်ဆေးကာ တစ်ကြိမ်လျှင် စာရင်း၏ တစ်ဝက်ကို ဖယ်ရှားခြင်းဖြင့် လုပ်ဆောင်သည်။",
            "ဤ'တစ်ဝက်ဖယ်ရှားခြင်း' လှည့်ကွက်သည် အရာများ အစီအစဉ်ကျပြီးသားဖြစ်မှသာ မှန်ကန်စွာ အလုပ်လုပ်ပြီး အယ်လဂိုရီသမ်အား မည်သည့်တစ်ဝက်ကို စွန့်ပယ်ရမည်ကို ဆုံးဖြတ်စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "In a sorted list of 1,000 items, why is Binary Search generally much faster than Linear Search?",
          questionMy:
              "စီစဉ်ထားသော အရာ 1,000 ပါသည့်စာရင်းတွင် Binary Search သည် Linear Search ထက် အဘယ်ကြောင့် ယေဘုယျအားဖြင့် များစွာ ပိုမြန်ဆန်သနည်း။",
          optionsEn: [
            "Binary Search eliminates half the remaining items with each check, needing far fewer comparisons",
            "Binary Search checks every single item, just in a different order",
            "Linear Search always finds the target on the first try",
            "Binary Search only works on lists smaller than 10 items",
          ],
          optionsMy: [
            "Binary Search သည် စစ်ဆေးမှုတစ်ကြိမ်စီတွင် ကျန်ရှိသောအရာများ၏ တစ်ဝက်ကို ဖယ်ရှားပေးသဖြင့် နှိုင်းယှဉ်မှု များစွာနည်းသောကြောင့်",
            "Binary Search သည် အစီအစဉ်ကွဲပြားစွာဖြင့် အရာတိုင်းကို စစ်ဆေးသောကြောင့်",
            "Linear Search သည် ပထမကြိမ်တွင်ပင် ပစ်မှတ်ကို အမြဲတမ်း ရှာတွေ့သောကြောင့်",
            "Binary Search သည် အရာ 10 ခုထက်နည်းသော စာရင်းများတွင်သာ အလုပ်လုပ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Linear Search might need to check all 1,000 items in the worst case; Binary Search needs at most about 10 checks (since 2^10 is about 1,000).",
            "Each Binary Search check roughly doubles the size of list it could handle, which is why it scales so well for huge datasets.",
          ],
          hintsMy: [
            "အဆိုးဆုံးအခြေအနေတွင် Linear Search သည် အရာ 1,000 လုံးကို စစ်ဆေးရနိုင်သည်၊ Binary Search သည် အများဆုံး ခန့်မှန်း 10 ကြိမ်ခန့်သာ လိုအပ်သည် (2^10 သည် ခန့်မှန်း 1,000 ဖြစ်သောကြောင့်)။",
            "Binary Search စစ်ဆေးမှုတစ်ကြိမ်စီသည် ကိုင်တွယ်နိုင်သော စာရင်းအရွယ်အစားကို ခန့်မှန်းနှစ်ဆ တိုးမြှင့်ပေးသောကြောင့် ကြီးမားသောအချက်အလက်များအတွက် ဤမျှ ကောင်းစွာ တိုးချဲ့နိုင်ခြင်းဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "You need to search for a single item in a small, unsorted list of 5 friends' names. Which search algorithm would you use, and why?",
          questionMy:
              "မိတ်ဆွေ 5 ဦး၏ အမည်ပါသော စီစဉ်မထားသည့် စာရင်းငယ်တစ်ခုတွင် အရာတစ်ခုတည်းကို ရှာဖွေရန် လိုအပ်ပါသည်။ မည်သည့်ရှာဖွေရေး အယ်လဂိုရီသမ်ကို အသုံးပြုမည်နည်း၊ အဘယ်ကြောင့်နည်း။",
          optionsEn: [
            "Linear Search, since the list is unsorted and Binary Search requires sorted data",
            "Binary Search, since it is always the fastest choice regardless of the list",
            "Neither algorithm would work on a list of names",
            "Bubble Sort, since sorting is required before any search",
          ],
          optionsMy: [
            "Linear Search — အကြောင်းမှာ စာရင်းသည် စီစဉ်မထားပြီး Binary Search သည် စီစဉ်ထားသောအချက်အလက် လိုအပ်သောကြောင့်",
            "Binary Search — အကြောင်းမှာ စာရင်းကို မထောက်ဘဲ အမြဲတမ်း အမြန်ဆုံးရွေးချယ်မှုဖြစ်သောကြောင့်",
            "အယ်လဂိုရီသမ် နှစ်ခုစလုံးသည် အမည်စာရင်းတွင် အလုပ်မလုပ်ကြောင့်",
            "Bubble Sort — အကြောင်းမှာ ရှာဖွေမှု မလုပ်မီ စီစဉ်ရန် လိုအပ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Remember the requirement for Binary Search from the second question — an unsorted list rules it out.",
            "For a very small, unsorted list, Linear Search is simple and fast enough; sorting first just to use Binary Search would be unnecessary extra work.",
          ],
          hintsMy: [
            "ဒုတိယမေးခွန်းမှ Binary Search ၏ လိုအပ်ချက်ကို သတိရပါ — စီစဉ်မထားသောစာရင်းသည် ၎င်းကို ဖယ်ရှားပစ်သည်။",
            "အလွန်ငယ်သော၊ စီစဉ်မထားသော စာရင်းတစ်ခုအတွက် Linear Search သည် ရိုးရှင်းပြီး လုံလောက်စွာ မြန်ဆန်သည် — Binary Search သုံးရန်အတွက် ဦးစွာစီစဉ်ခြင်းသည် မလိုအပ်သော ထပ်လုပ်ငန်းဖြစ်လိမ့်မည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s3-computing-w1-d2",
      dayNumber: 2,
      titleEn: "Searching Vocabulary",
      titleMy: "ရှာဖွေရေး ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s3c-w1-dm1",
          termEn: "Linear Search",
          termMy: "Linear Search (တစ်ခုချင်းရှာဖွေခြင်း)",
          matchEn: "Checking each item in order, one at a time, until found",
          matchMy:
              "ရှာတွေ့သည်အထိ အရာတစ်ခုစီကို အစီအစဉ်အတိုင်း တစ်ခုချင်းစစ်ဆေးခြင်း",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s3c-w1-dm2",
          termEn: "Binary Search",
          termMy: "Binary Search (တစ်ဝက်ဖြတ်ရှာဖွေခြင်း)",
          matchEn: "Repeatedly checking the middle item of a sorted list",
          matchMy: "စီစဉ်ထားသောစာရင်း၏ အလယ်ရှိအရာကို ထပ်ခါထပ်ခါ စစ်ဆေးခြင်း",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s3c-w1-dm3",
          termEn: "Efficiency",
          termMy: "ထိရောက်မှု (Efficiency)",
          matchEn: "How quickly an algorithm completes as data size grows",
          matchMy:
              "အချက်အလက်ပမာဏ ကြီးထွားလာသည်နှင့်အမျှ အယ်လဂိုရီသမ်တစ်ခု မည်မျှလျင်မြန်စွာ ပြီးစီးသနည်း",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s3c-w1-dm4",
          termEn: "Sorted List",
          termMy: "စီစဉ်ထားသောစာရင်း (Sorted List)",
          matchEn: "A list where items are arranged in a defined order",
          matchMy: "အရာများကို သတ်မှတ်ထားသောအစီအစဉ်ဖြင့် စီစဉ်ထားသောစာရင်း",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s3c-w1-dm5",
          termEn: "Target Value",
          termMy: "ပစ်မှတ်တန်ဖိုး (Target Value)",
          matchEn: "The specific item an algorithm is searching for",
          matchMy: "အယ်လဂိုရီသမ်တစ်ခု ရှာဖွေနေသော သီးခြားအရာ",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s3c-w1-dm6",
          termEn: "Algorithm",
          termMy: "အယ်လဂိုရီသမ် (Algorithm)",
          matchEn: "A step-by-step set of instructions to solve a problem",
          matchMy: "ပြဿနာတစ်ခုကို ဖြေရှင်းရန် အဆင့်ဆင့်ညွှန်ကြားချက်များ",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s3-computing-w1-d3",
      dayNumber: 3,
      titleEn: "Sorting Linear or Binary Search Facts",
      titleMy: "Linear သို့မဟုတ် Binary Search အချက်များကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Linear Search", "Binary Search"],
        bucketsMy: ["Linear Search", "Binary Search"],
        items: [
          SortingItem(
            id: "s3c-w1-sort1",
            labelEn: "Works on unsorted lists",
            labelMy: "စီစဉ်မထားသောစာရင်းများတွင် အလုပ်လုပ်သည်",
            correctBucketEn: "Linear Search",
            correctBucketMy: "Linear Search",
          ),
          SortingItem(
            id: "s3c-w1-sort2",
            labelEn: "Requires a sorted list",
            labelMy: "စီစဉ်ထားသောစာရင်း လိုအပ်သည်",
            correctBucketEn: "Binary Search",
            correctBucketMy: "Binary Search",
          ),
          SortingItem(
            id: "s3c-w1-sort3",
            labelEn: "Checks items one by one from the start",
            labelMy: "အစမှစ၍ အရာများကို တစ်ခုချင်းစစ်ဆေးသည်",
            correctBucketEn: "Linear Search",
            correctBucketMy: "Linear Search",
          ),
          SortingItem(
            id: "s3c-w1-sort4",
            labelEn: "Repeatedly checks the middle item",
            labelMy: "အလယ်ရှိအရာကို ထပ်ခါထပ်ခါ စစ်ဆေးသည်",
            correctBucketEn: "Binary Search",
            correctBucketMy: "Binary Search",
          ),
          SortingItem(
            id: "s3c-w1-sort5",
            labelEn: "Simple to code for small lists",
            labelMy: "စာရင်းငယ်များအတွက် ကုဒ်ရေးရန် ရိုးရှင်းသည်",
            correctBucketEn: "Linear Search",
            correctBucketMy: "Linear Search",
          ),
          SortingItem(
            id: "s3c-w1-sort6",
            labelEn: "Eliminates half the remaining data each check",
            labelMy:
                "စစ်ဆေးမှုတစ်ကြိမ်စီတွင် ကျန်ရှိသောအချက်အလက်၏ တစ်ဝက်ကို ဖယ်ရှားသည်",
            correctBucketEn: "Binary Search",
            correctBucketMy: "Binary Search",
          ),
          SortingItem(
            id: "s3c-w1-sort7",
            labelEn: "Can be slow for very large lists",
            labelMy: "အလွန်ကြီးမားသောစာရင်းများအတွက် နှေးကွေးနိုင်သည်",
            correctBucketEn: "Linear Search",
            correctBucketMy: "Linear Search",
          ),
          SortingItem(
            id: "s3c-w1-sort8",
            labelEn: "Much faster on large sorted datasets",
            labelMy:
                "ကြီးမားသော စီစဉ်ထားသောအချက်အလက်များတွင် များစွာ ပိုမြန်ဆန်သည်",
            correctBucketEn: "Binary Search",
            correctBucketMy: "Binary Search",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s3-computing-w1-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su's Phonebook Problem",
      titleMy: "စာဖတ်ခြင်း — စုစု၏ ဖုန်းစာအုပ် ပြဿနာ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su's Phonebook Problem",
        titleMy: "စုစု၏ ဖုန်းစာအုပ် ပြဿနာ",
        passageEn:
            "Su Su was writing a Python program to look up contacts in her school's directory, which stored 2,000 student names alphabetically. At first, she used a simple Linear Search, checking each name one by one from the start of the list. Her program worked, but when she tested how long it took to find a name near the end of the list, it noticeably lagged, sometimes checking nearly all 2,000 entries. Her computing teacher suggested switching to Binary Search, since the names were already sorted alphabetically. Su Su rewrote her program to repeatedly check the middle name, deciding whether the target name came alphabetically before or after it, and eliminating half the remaining names each time. She timed both versions: Linear Search took up to 2,000 comparisons in the worst case, while Binary Search never needed more than 11 comparisons, since 2 to the power of 11 is greater than 2,000. Su Su realised that the sorted structure of her data was not just a convenience — it was the key that unlocked a dramatically faster search algorithm.",
        passageMy:
            "စုစုသည် ကျောင်း၏ ဖုန်းလိပ်စာစာရင်းတွင် ကျောင်းသား 2,000 ၏ အမည်များကို အက္ခရာစဉ်အတိုင်း သိမ်းဆည်းထားသော ဆက်သွယ်ရန်လိပ်စာများကို ရှာဖွေရန် Python ပရိုဂရမ်တစ်ခု ရေးသားနေခဲ့သည်။ ပထမတွင် သူမသည် စာရင်း၏ အစမှ အမည်တစ်ခုစီကို တစ်ခုချင်းစစ်ဆေးသော ရိုးရှင်း Linear Search ကို အသုံးပြုခဲ့သည်။ သူမ၏ပရိုဂရမ်သည် အလုပ်လုပ်ခဲ့သော်လည်း စာရင်းအဆုံးနားရှိ အမည်တစ်ခုကို ရှာတွေ့ရန် ကြာချိန်ကို စမ်းသပ်သောအခါ သတိထားမိသောနှေးကွေးမှု ဖြစ်ပေါ်ခဲ့ပြီး တစ်ခါတစ်ရံ 2,000 လုံးနီးပါးကို စစ်ဆေးခဲ့ရသည်။ သူမ၏ ကွန်ပျူတာသိပ္ပံဆရာက အမည်များသည် အက္ခရာစဉ်အတိုင်း စီစဉ်ထားပြီးဖြစ်သောကြောင့် Binary Search သို့ ပြောင်းရန် အကြံပြုခဲ့သည်။ စုစုသည် သူမ၏ ပရိုဂရမ်ကို အလယ်ရှိအမည်ကို ထပ်ခါထပ်ခါ စစ်ဆေးကာ ပစ်မှတ်အမည်သည် အက္ခရာစဉ်အလိုက် ၎င်းရှေ့ သို့မဟုတ် နောက်တွင် ရှိမရှိ ဆုံးဖြတ်ပြီး ကျန်ရှိသောအမည်များ၏ တစ်ဝက်ကို တစ်ကြိမ်လျှင် ဖယ်ရှားသည့်ပုံစံအဖြစ် ပြန်လည်ရေးသားခဲ့သည်။ သူမသည် ဗားရှင်းနှစ်ခုစလုံးကို အချိန်တိုင်းခဲ့သည် — Linear Search သည် အဆိုးဆုံးအနေအထားတွင် နှိုင်းယှဉ်မှု 2,000 အထိ လိုအပ်ခဲ့ပြီး Binary Search သည် နှိုင်းယှဉ်မှု 11 ကြိမ်ထက် ဘယ်တော့မှ ပိုမလိုအပ်ခဲ့ချေ — အကြောင်းမှာ 2 ၏ 11 ထပ်ကိန်းသည် 2,000 ထက်ကြီးသောကြောင့်ဖြစ်သည်။ သူမ၏ အချက်အလက် စီစဉ်ထားသောဖွဲ့စည်းပုံသည် အဆင်ပြေမှုသက်သက်မဟုတ်ဘဲ — များစွာပိုမြန်ဆန်သော ရှာဖွေရေးအယ်လဂိုရီသမ်ကို ဖွင့်ပေးသော သော့ချက်ဖြစ်ကြောင်း စုစု သဘောပေါက်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What search method did Su Su use first?",
            questionMy:
                "စုစုသည် ပထမဦးဆုံး မည်သည့်ရှာဖွေရေးနည်းလမ်းကို အသုံးပြုခဲ့သနည်း။",
            optionsEn: [
              "Linear Search",
              "Binary Search",
              "Bubble Sort",
              "Merge Sort",
            ],
            optionsMy: [
              "Linear Search",
              "Binary Search",
              "Bubble Sort",
              "Merge Sort",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "Why did her teacher suggest Binary Search?",
            questionMy:
                "သူမ၏ဆရာက Binary Search ကို အဘယ်ကြောင့် အကြံပြုခဲ့သနည်း။",
            optionsEn: [
              "The names were already sorted alphabetically",
              "Binary Search works on any unsorted list",
              "It was the only algorithm she knew",
              "The school required it by policy",
            ],
            optionsMy: [
              "အမည်များသည် အက္ခရာစဉ်အတိုင်း စီစဉ်ထားပြီးဖြစ်ခဲ့ကြောင့်",
              "Binary Search သည် စီစဉ်မထားသောစာရင်းမည်သည့်တွင်မဆို အလုပ်လုပ်ကြောင့်",
              "သူမသိသော တစ်ခုတည်းသောအယ်လဂိုရီသမ်ဖြစ်ခဲ့ကြောင့်",
              "ကျောင်းက မူဝါဒအရ လိုအပ်ခဲ့ကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "At most, how many comparisons did Binary Search need for 2,000 names?",
            questionMy:
                "အများဆုံးအားဖြင့် Binary Search သည် အမည် 2,000 အတွက် နှိုင်းယှဉ်မှု မည်မျှလိုအပ်ခဲ့သနည်း။",
            optionsEn: ["11", "2,000", "1,000", "2"],
            optionsMy: ["11", "2,000", "1,000", "2"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Su Su realise about her data's sorted structure?",
            questionMy:
                "သူမ၏ အချက်အလက် စီစဉ်ထားသောဖွဲ့စည်းပုံအကြောင်း စုစု အဘယ်အရာ သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "It was the key that unlocked a dramatically faster search algorithm",
              "It made no difference to search speed",
              "It only mattered for very small lists",
              "It was purely for visual neatness",
            ],
            optionsMy: [
              "၎င်းသည် များစွာပိုမြန်ဆန်သော ရှာဖွေရေးအယ်လဂိုရီသမ်ကို ဖွင့်ပေးသော သော့ချက်ဖြစ်ကြောင်း",
              "ရှာဖွေမှုအမြန်နှုန်းအပေါ် ကွာခြားချက် မရှိကြောင်း",
              "စာရင်းငယ်များအတွက်သာ အရေးကြီးကြောင်း",
              "အမြင်အာရုံ သပ်ရပ်မှုအတွက်သာဖြစ်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s3-computing-w1-d5",
      dayNumber: 5,
      titleEn: "Searching Algorithms Recap Quiz",
      titleMy: "ရှာဖွေရေး အယ်လဂိုရီသမ်များ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Linear Search checks items...",
          questionMy: "Linear Search သည် အရာများကို မည်သို့ စစ်ဆေးသနည်း...",
          optionsEn: [
            "One by one, in order",
            "Only in the middle",
            "Only at random",
            "Only the last item",
          ],
          optionsMy: [
            "အစီအစဉ်အတိုင်း တစ်ခုချင်း",
            "အလယ်ရှိအရာကိုသာ",
            "ကျပန်းသာ",
            "နောက်ဆုံးအရာကိုသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Binary Search requires the list to be...",
          questionMy: "Binary Search အတွက် စာရင်းသည် မည်သို့ ဖြစ်ရမည်နည်း...",
          optionsEn: ["Sorted", "Unsorted", "Empty", "Numbers only"],
          optionsMy: ["စီစဉ်ထားပြီး", "စီစဉ်မထားဘဲ", "လွတ်နေ", "ဂဏန်းများသာ"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Binary Search is generally faster than Linear Search on large sorted lists because it...",
          questionMy:
              "Binary Search သည် ကြီးမားသော စီစဉ်ထားသောစာရင်းများတွင် Linear Search ထက် ယေဘုယျအားဖြင့် ပိုမြန်ဆန်သည်မှာ...",
          optionsEn: [
            "Eliminates half the remaining items each check",
            "Checks every item exactly once",
            "Never actually finds the target",
            "Only works on lists of 10 or fewer items",
          ],
          optionsMy: [
            "စစ်ဆေးမှုတစ်ကြိမ်စီတွင် ကျန်ရှိသောအရာများ၏ တစ်ဝက်ကို ဖယ်ရှားသောကြောင့်",
            "အရာတိုင်းကို အတိအကျ တစ်ကြိမ်စစ်ဆေးသောကြောင့်",
            "ပစ်မှတ်ကို အမှန်တကယ် ဘယ်တော့မှ ရှာမတွေ့သောကြောင့်",
            "အရာ 10 ခု (သို့) ထိုထက်နည်းသော စာရင်းများတွင်သာ အလုပ်လုပ်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "For a small, unsorted list, which search is usually the more practical choice?",
          questionMy:
              "စာရင်းငယ်၊ စီစဉ်မထားသည့်စာရင်းတစ်ခုအတွက် မည်သည့်ရှာဖွေရေးနည်းလမ်းသည် များသောအားဖြင့် ပိုလက်တွေ့ကျသော ရွေးချယ်မှုဖြစ်သနည်း။",
          optionsEn: [
            "Linear Search",
            "Binary Search",
            "Neither would work",
            "Both are equally impractical",
          ],
          optionsMy: [
            "Linear Search",
            "Binary Search",
            "မည်သည့်တစ်ခုမျှ အလုပ်မလုပ်ချေ",
            "နှစ်ခုစလုံး တူညီစွာ လက်တွေ့မကျချေ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Su Su's phonebook story, why did switching to Binary Search help so much?",
          questionMy:
              "စုစု၏ ဖုန်းစာအုပ်ဇာတ်လမ်းတွင် Binary Search သို့ ပြောင်းလဲခြင်းသည် အဘယ်ကြောင့် ဤမျှများစွာ ကူညီပေးခဲ့သနည်း။",
          optionsEn: [
            "The names were already sorted, so it could eliminate half each time",
            "Linear Search was actually broken",
            "Binary Search does not need to compare anything",
            "The phonebook had only 10 names",
          ],
          optionsMy: [
            "အမည်များသည် စီစဉ်ထားပြီးဖြစ်သောကြောင့် တစ်ကြိမ်လျှင် တစ်ဝက်ကို ဖယ်ရှားနိုင်ခဲ့ကြောင့်",
            "Linear Search သည် အမှန်တကယ် ပျက်စီးနေခဲ့ကြောင့်",
            "Binary Search သည် မည်သည့်အရာကိုမျှ နှိုင်းယှဉ်ရန် မလိုအပ်ကြောင့်",
            "ဖုန်းစာအုပ်တွင် အမည် 10 ခုသာ ရှိခဲ့ကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary3ComputingWeek2 = CourseWeekDef(
  id: "course-secondary3-computing-w2",
  weekNumber: 2,
  titleEn: "Sorting Algorithms",
  titleMy: "အစဉ်လိုက် စီစဉ်သည့် အယ်လဂိုရီသမ်များ (Sorting)",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s3-computing-w2-d1",
      dayNumber: 1,
      titleEn: "Bubble Sort and Merge Sort",
      titleMy: "Bubble Sort နှင့် Merge Sort",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "How does Bubble Sort arrange a list into order?",
          questionMy:
              "Bubble Sort သည် စာရင်းတစ်ခုကို အစီအစဉ်ကျအောင် မည်သို့ စီစဉ်သနည်း။",
          optionsEn: [
            "It repeatedly compares adjacent pairs and swaps them if they are in the wrong order",
            "It splits the list in half and sorts each half separately",
            "It picks a random item and places it at the front",
            "It only works on lists that are already sorted",
          ],
          optionsMy: [
            "အနီးဆုံးအတွဲများကို ထပ်ခါထပ်ခါ နှိုင်းယှဉ်ကာ အစီအစဉ်မမှန်ပါက အပြန်အလှန်ပြောင်းသည်",
            "စာရင်းကို တစ်ဝက်စီ ခွဲပြီး တစ်ဝက်စီကို သီးခြားစီ စီစဉ်သည်",
            "ကျပန်းအရာတစ်ခုကို ရွေးချယ်ကာ ရှေ့ဆုံးတွင် ထားသည်",
            "စီစဉ်ထားပြီးသားစာရင်းများတွင်သာ အလုပ်လုပ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about how larger values seem to 'bubble up' toward the end of the list with each pass.",
            "Bubble Sort makes multiple passes through the list, swapping neighbouring out-of-order pairs each time, until no swaps are needed.",
          ],
          hintsMy: [
            "တန်ဖိုးကြီးများသည် ဖြတ်သန်းမှုတစ်ကြိမ်စီတွင် စာရင်းအဆုံးဘက်သို့ 'ပူဖောင်းတက်' သကဲ့သို့ ဖြစ်ပုံကို စဉ်းစားပါ။",
            "Bubble Sort သည် လဲလှယ်ရန်မလိုအောင် စာရင်းကို ဖြတ်သန်းမှုများစွာလုပ်ကာ အနီးရှိအစီအစဉ်မမှန်သောအတွဲများကို တစ်ကြိမ်စီ လဲလှယ်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "How does Merge Sort approach sorting a list?",
          questionMy:
              "Merge Sort သည် စာရင်းတစ်ခုကို စီစဉ်ရန် မည်သို့ချဉ်းကပ်သနည်း။",
          optionsEn: [
            "It repeatedly splits the list into halves, sorts each half, then merges them back together in order",
            "It only swaps the first and last items",
            "It requires the list to already be sorted before it starts",
            "It randomly shuffles the list until it happens to be sorted",
          ],
          optionsMy: [
            "စာရင်းကို တစ်ဝက်စီ ထပ်ခါထပ်ခါ ခွဲထုတ်ကာ တစ်ဝက်စီကို စီစဉ်ပြီး အစီအစဉ်အတိုင်း ပြန်ပေါင်းစပ်သည်",
            "ပထမနှင့် နောက်ဆုံးအရာကိုသာ လဲလှယ်သည်",
            "စတင်မီ စာရင်းသည် စီစဉ်ထားပြီးသား ဖြစ်ရမည်",
            "စာရင်းသည် ကံကောင်းစွာ စီစဉ်ပြီးသားဖြစ်လာသည်အထိ ကျပန်း လှုပ်ရှားသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This is a 'divide and conquer' strategy — break a big problem into smaller, easier ones, solve those, then combine the results.",
            "Merge Sort splits the list down to single items (which are trivially 'sorted'), then merges pairs back together in the correct order, step by step.",
          ],
          hintsMy: [
            "ဤသည်မှာ 'ခွဲခြား၍ အနိုင်ယူ' နည်းဗျူဟာဖြစ်သည် — ပြဿနာကြီးတစ်ခုကို ပိုငယ်ပြီး ပိုလွယ်ကူသောအပိုင်းများအဖြစ် ခွဲခြားပြီး ၎င်းတို့ကို ဖြေရှင်းကာ ရလဒ်များကို ပေါင်းစပ်ခြင်းဖြစ်သည်။",
            "Merge Sort သည် စာရင်းကို အရာတစ်ခုချင်းအထိ ခွဲထုတ်ပြီး (ရိုးရှင်းစွာ 'စီစဉ်ထားသည်' ဟု ယူဆနိုင်သည်) ထို့နောက် အတွဲများကို မှန်ကန်သောအစီအစဉ်ဖြင့် အဆင့်ဆင့် ပြန်ပေါင်းစပ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why is Merge Sort generally more efficient than Bubble Sort for very large lists?",
          questionMy:
              "Merge Sort သည် အလွန်ကြီးမားသောစာရင်းများအတွက် Bubble Sort ထက် ယေဘုယျအားဖြင့် အဘယ်ကြောင့် ပိုထိရောက်သနည်း။",
          optionsEn: [
            "Merge Sort's divide-and-conquer approach avoids repeatedly comparing every pair, needing far fewer total operations",
            "Bubble Sort always produces an incorrectly sorted list",
            "Merge Sort does not need to compare any items at all",
            "Bubble Sort only works on lists of numbers, never text",
          ],
          optionsMy: [
            "Merge Sort ၏ ခွဲခြား၍ အနိုင်ယူသောချဉ်းကပ်နည်းသည် အတွဲတိုင်းကို ထပ်ခါထပ်ခါ နှိုင်းယှဉ်ခြင်းကို ရှောင်ရှားပေးသဖြင့် စုစုပေါင်း လုပ်ဆောင်ချက် များစွာနည်းလိုအပ်သောကြောင့်",
            "Bubble Sort သည် အမြဲတမ်း မှားယွင်းစွာ စီစဉ်ထားသောစာရင်း ထုတ်ပေးသောကြောင့်",
            "Merge Sort သည် မည်သည့်အရာကိုမျှ နှိုင်းယှဉ်ရန် လုံးဝမလိုအပ်သောကြောင့်",
            "Bubble Sort သည် ဂဏန်းများစာရင်းတွင်သာ အလုပ်လုပ်ပြီး စာသားတွင် ဘယ်တော့မှ မလုပ်ကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Bubble Sort's repeated full passes through the list get very slow as the list grows; Merge Sort's splitting strategy scales much better.",
            "This difference is described using algorithm complexity — Merge Sort's complexity grows much more slowly than Bubble Sort's as data size increases.",
          ],
          hintsMy: [
            "Bubble Sort ၏ စာရင်းကို ထပ်ခါထပ်ခါ အပြည့်ဖြတ်သန်းခြင်းသည် စာရင်းကြီးထွားလာသည်နှင့်အမျှ အလွန်နှေးကွေးလာသည် — Merge Sort ၏ ခွဲထုတ်နည်းဗျူဟာသည် များစွာပိုကောင်းစွာ တိုးချဲ့နိုင်သည်။",
            "ဤကွာခြားချက်ကို အယ်လဂိုရီသမ်ရှုပ်ထွေးမှု (Algorithm Complexity) ဖြင့် ဖော်ပြသည် — အချက်အလက်ပမာဏတိုးလာသည်နှင့်အမျှ Merge Sort ၏ ရှုပ်ထွေးမှုသည် Bubble Sort ထက် များစွာပိုနှေးစွာ တိုးလာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A student needs to sort a very small list of 4 numbers for a quick classroom demo. Why might Bubble Sort still be a reasonable choice here, despite being less efficient overall?",
          questionMy:
              "ကျောင်းသားတစ်ဦးသည် ကျောင်းခန်းတွင်း လျင်မြန်စွာ သရုပ်ပြရန်အတွက် ဂဏန်း 4 လုံးသာပါသော အလွန်စာရင်းငယ်ကို စီစဉ်ရန် လိုအပ်ပါသည်။ စုစုပေါင်းအားဖြင့် ထိရောက်မှုနည်းသော်လည်း Bubble Sort သည် ဤနေရာတွင် အဘယ်ကြောင့် ဆက်လက် သင့်လျော်သော ရွေးချယ်မှုဖြစ်နိုင်သနည်း။",
          optionsEn: [
            "For very small lists, the efficiency difference barely matters and Bubble Sort is simple to understand and code",
            "Bubble Sort is always faster than Merge Sort regardless of list size",
            "Merge Sort cannot be used on lists smaller than 100 items",
            "Bubble Sort is the only algorithm capable of sorting numbers",
          ],
          optionsMy: [
            "အလွန်စာရင်းငယ်များအတွက် ထိရောက်မှုကွာခြားချက်သည် အနည်းငယ်သာသက်ရောက်ပြီး Bubble Sort သည် နားလည်ရန်နှင့် ကုဒ်ရေးရန် ရိုးရှင်းသောကြောင့်",
            "Bubble Sort သည် စာရင်းအရွယ်အစားကို မထောက်ဘဲ Merge Sort ထက် အမြဲတမ်း ပိုမြန်ဆန်သောကြောင့်",
            "Merge Sort ကို အရာ 100 ခုထက်နည်းသော စာရင်းများတွင် အသုံးပြု၍မရသောကြောင့်",
            "Bubble Sort သည် ဂဏန်းများကို စီစဉ်နိုင်သော တစ်ခုတည်းသောအယ်လဂိုရီသမ်ဖြစ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Efficiency differences between algorithms only really matter at scale — with just 4 items, both algorithms finish almost instantly.",
            "Choosing the 'best' algorithm always depends on context: for tiny, one-off tasks, simplicity can outweigh raw efficiency.",
          ],
          hintsMy: [
            "အယ်လဂိုရီသမ်များကြား ထိရောက်မှုကွာခြားချက်များသည် အတိုင်းအတာကြီးမှသာ အမှန်တကယ် အရေးကြီးသည် — အရာ 4 ခုသာဖြင့် အယ်လဂိုရီသမ်နှစ်ခုစလုံး နီးပါးချက်ချင်း ပြီးစီးသည်။",
            "'အကောင်းဆုံး' အယ်လဂိုရီသမ်ကို ရွေးချယ်ခြင်းသည် အခြေအနေအပေါ် အမြဲမူတည်သည် — သေးငယ်၍ တစ်ကြိမ်တည်းလုပ်ငန်းများအတွက် ရိုးရှင်းမှုသည် စစ်မှန်သောထိရောက်မှုထက် ပိုအရေးကြီးနိုင်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s3-computing-w2-d2",
      dayNumber: 2,
      titleEn: "Sorting Vocabulary",
      titleMy: "အစီစဉ်ရေးဆွဲခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s3c-w2-dm1",
          termEn: "Bubble Sort",
          termMy: "Bubble Sort",
          matchEn: "Repeatedly swapping adjacent out-of-order pairs",
          matchMy: "အနီးရှိ အစီအစဉ်မမှန်သောအတွဲများကို ထပ်ခါထပ်ခါ လဲလှယ်ခြင်း",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s3c-w2-dm2",
          termEn: "Merge Sort",
          termMy: "Merge Sort",
          matchEn: "Splitting a list in half, sorting each half, then merging",
          matchMy:
              "စာရင်းကို တစ်ဝက်စီ ခွဲထုတ်ပြီး တစ်ဝက်စီစီစဉ်ကာ ပေါင်းစပ်ခြင်း",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s3c-w2-dm3",
          termEn: "Algorithm Complexity",
          termMy: "အယ်လဂိုရီသမ် ရှုပ်ထွေးမှု (Algorithm Complexity)",
          matchEn:
              "A measure of how an algorithm's speed changes as data size grows",
          matchMy:
              "အချက်အလက်ပမာဏ ကြီးထွားလာသည်နှင့်အမျှ အယ်လဂိုရီသမ်၏ အမြန်နှုန်း မည်သို့ပြောင်းလဲသည်ကို တိုင်းတာချက်",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s3c-w2-dm4",
          termEn: "Divide and Conquer",
          termMy: "ခွဲခြား၍ အနိုင်ယူခြင်း (Divide and Conquer)",
          matchEn:
              "Breaking a problem into smaller sub-problems to solve separately",
          matchMy:
              "ပြဿနာတစ်ခုကို သီးခြားဖြေရှင်းရန် ပိုငယ်သော ပြဿနာခွဲများအဖြစ် ကွဲထုတ်ခြင်း",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s3c-w2-dm5",
          termEn: "Swap",
          termMy: "လဲလှယ်ခြင်း (Swap)",
          matchEn: "Exchanging the positions of two items in a list",
          matchMy: "စာရင်းတစ်ခုအတွင်း အရာနှစ်ခု၏ နေရာများကို လဲလှယ်ခြင်း",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s3c-w2-dm6",
          termEn: "Pass",
          termMy: "ဖြတ်သန်းမှု (Pass)",
          matchEn:
              "One complete run through the list during a sorting algorithm",
          matchMy:
              "အစီစဉ်ရေးဆွဲသော အယ်လဂိုရီသမ်တစ်ခုအတွင်း စာရင်းကို တစ်ကြိမ်ပြည့်ဖြတ်သန်းခြင်း",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s3-computing-w2-d3",
      dayNumber: 3,
      titleEn: "Sorting Bubble Sort or Merge Sort Facts",
      titleMy: "Bubble Sort သို့မဟုတ် Merge Sort အချက်များကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Bubble Sort", "Merge Sort"],
        bucketsMy: ["Bubble Sort", "Merge Sort"],
        items: [
          SortingItem(
            id: "s3c-w2-sort1",
            labelEn: "Repeatedly swaps adjacent pairs",
            labelMy: "အနီးရှိအတွဲများကို ထပ်ခါထပ်ခါ လဲလှယ်သည်",
            correctBucketEn: "Bubble Sort",
            correctBucketMy: "Bubble Sort",
          ),
          SortingItem(
            id: "s3c-w2-sort2",
            labelEn: "Splits the list in half repeatedly",
            labelMy: "စာရင်းကို တစ်ဝက်စီ ထပ်ခါထပ်ခါ ခွဲထုတ်သည်",
            correctBucketEn: "Merge Sort",
            correctBucketMy: "Merge Sort",
          ),
          SortingItem(
            id: "s3c-w2-sort3",
            labelEn: "Simple but slow for large lists",
            labelMy: "ရိုးရှင်းသော်လည်း စာရင်းကြီးများအတွက် နှေးကွေးသည်",
            correctBucketEn: "Bubble Sort",
            correctBucketMy: "Bubble Sort",
          ),
          SortingItem(
            id: "s3c-w2-sort4",
            labelEn: "Uses a divide-and-conquer strategy",
            labelMy: "ခွဲခြား၍ အနိုင်ယူသော နည်းဗျူဟာကို သုံးသည်",
            correctBucketEn: "Merge Sort",
            correctBucketMy: "Merge Sort",
          ),
          SortingItem(
            id: "s3c-w2-sort5",
            labelEn: "Larger values seem to 'bubble' to the end",
            labelMy: "တန်ဖိုးကြီးများသည် အဆုံးသို့ 'ပူဖောင်းတက်' ဟန်ရှိသည်",
            correctBucketEn: "Bubble Sort",
            correctBucketMy: "Bubble Sort",
          ),
          SortingItem(
            id: "s3c-w2-sort6",
            labelEn: "Merges sorted halves back together",
            labelMy: "စီစဉ်ထားသော တစ်ဝက်များကို ပြန်ပေါင်းစပ်သည်",
            correctBucketEn: "Merge Sort",
            correctBucketMy: "Merge Sort",
          ),
          SortingItem(
            id: "s3c-w2-sort7",
            labelEn: "Good for teaching a simple demo",
            labelMy: "ရိုးရှင်းသော သရုပ်ပြမှုတစ်ခု သင်ကြားရန် ကောင်းသည်",
            correctBucketEn: "Bubble Sort",
            correctBucketMy: "Bubble Sort",
          ),
          SortingItem(
            id: "s3c-w2-sort8",
            labelEn: "Scales much better for huge datasets",
            labelMy:
                "အလွန်ကြီးမားသောအချက်အလက်များအတွက် များစွာပိုကောင်းစွာ တိုးချဲ့နိုင်သည်",
            correctBucketEn: "Merge Sort",
            correctBucketMy: "Merge Sort",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s3-computing-w2-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiri's Race Times",
      titleMy: "စာဖတ်ခြင်း — သီရိ၏ ပြေးအချိန်များ",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri's Race Times",
        titleMy: "သီရိ၏ ပြေးအချိန်များ",
        passageEn:
            "Thiri volunteered to write a small Python program for her school's sports day, sorting 8 runners' finishing times from fastest to slowest. Since the list was tiny, she chose to implement Bubble Sort, comparing each pair of adjacent times and swapping them if they were in the wrong order, repeating this pass through the list until no more swaps were needed. It worked perfectly and finished instantly. A few weeks later, her teacher asked her to sort an entire regional competition's results — over 5,000 runners across multiple schools. Thiri quickly realised Bubble Sort would be painfully slow at that scale, since it would need to make many passes through thousands of items, comparing pairs over and over. She switched to Merge Sort instead, splitting the massive list down into smaller and smaller pieces until each piece held a single time, then merging those pieces back together in the correct order. The regional results sorted in a fraction of a second. Thiri realised that choosing the right algorithm was not about picking a single 'best' one — it was about matching the algorithm to the size and shape of the actual problem.",
        passageMy:
            "သီရိသည် သူမ၏ကျောင်း အားကစားနေ့အတွက် ပြေးသမား 8 ဦး၏ ပြီးစီးချိန်များကို အမြန်ဆုံးမှ အနှေးဆုံးသို့ စီစဉ်ရန် Python ပရိုဂရမ်ငယ်တစ်ခု ရေးသားရန် စေတနာ့ဝန်ထမ်း ပါဝင်ခဲ့သည်။ စာရင်းသည် သေးငယ်သောကြောင့် သူမသည် Bubble Sort ကို အကောင်အထည်ဖော်ရန် ရွေးချယ်ခဲ့ပြီး အနီးရှိအချိန်အတွဲတစ်ခုစီကို နှိုင်းယှဉ်ကာ အစီအစဉ်မမှန်ပါက လဲလှယ်ခဲ့ကာ လဲလှယ်ရန်မလိုအောင် စာရင်းကို ထပ်ခါထပ်ခါ ဖြတ်သန်းခဲ့သည်။ ၎င်းသည် ကောင်းမွန်စွာ အလုပ်လုပ်ပြီး ချက်ချင်းပြီးစီးခဲ့သည်။ ရက်သတ္တပတ်အနည်းငယ်ကြာသောအခါ သူမ၏ဆရာက ကျောင်းများစွာမှ ပြေးသမား 5,000 ကျော်ပါသည့် ဒေသကြီးပြိုင်ပွဲရလဒ်တစ်ခုလုံးကို စီစဉ်ရန် တောင်းဆိုခဲ့သည်။ Bubble Sort သည် ထိုအတိုင်းအတာတွင် အလွန်နှေးကွေးမည်ဖြစ်ကြောင်း သီရိ လျင်မြန်စွာ သဘောပေါက်ခဲ့သည် — အကြောင်းမှာ အတွဲများကို ထပ်ခါထပ်ခါ နှိုင်းယှဉ်ကာ အရာထောင်ပေါင်းများစွာကို ဖြတ်သန်းမှုများစွာ လုပ်ရမည်ဖြစ်သောကြောင့်ဖြစ်သည်။ သူမသည် ယင်းအစား Merge Sort သို့ ပြောင်းလဲခဲ့ပြီး ကြီးမားသောစာရင်းကြီးကို အပိုင်းတစ်ခုစီတွင် အချိန်တစ်ခုတည်းရှိသည်အထိ ပိုငယ်ပြီး ပိုငယ်သောအပိုင်းများအဖြစ် ခွဲထုတ်ကာ ထိုအပိုင်းများကို မှန်ကန်သောအစီအစဉ်ဖြင့် ပြန်ပေါင်းစပ်ခဲ့သည်။ ဒေသရလဒ်များသည် စက္ကန့်ပိုင်းအတွင်း စီစဉ်ပြီးသွားခဲ့သည်။ မှန်ကန်သောအယ်လဂိုရီသမ်ကို ရွေးချယ်ခြင်းသည် 'အကောင်းဆုံး' တစ်ခုတည်းကို ရွေးချယ်ခြင်းမဟုတ်ဘဲ — အယ်လဂိုရီသမ်ကို ပြဿနာ၏ အမှန်တကယ်အရွယ်အစားနှင့် ပုံသဏ္ဌာန်နှင့် ကိုက်ညီအောင် ရွေးချယ်ခြင်းဖြစ်ကြောင်း သီရိ သဘောပေါက်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "Which algorithm did Thiri use for the small 8-runner list?",
            questionMy:
                "ပြေးသမား 8 ဦးပါသော စာရင်းငယ်အတွက် သီရိ မည်သည့်အယ်လဂိုရီသမ်ကို အသုံးပြုခဲ့သနည်း။",
            optionsEn: [
              "Bubble Sort",
              "Merge Sort",
              "Linear Search",
              "Binary Search",
            ],
            optionsMy: [
              "Bubble Sort",
              "Merge Sort",
              "Linear Search",
              "Binary Search",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "Why did Thiri switch algorithms for the regional competition?",
            questionMy:
                "ဒေသကြီးပြိုင်ပွဲအတွက် သီရိ အဘယ်ကြောင့် အယ်လဂိုရီသမ် ပြောင်းလဲခဲ့သနည်း။",
            optionsEn: [
              "Bubble Sort would be too slow for 5,000+ items",
              "Merge Sort cannot handle numbers",
              "Her teacher forbade using Bubble Sort",
              "The regional results were already sorted",
            ],
            optionsMy: [
              "Bubble Sort သည် အရာ 5,000 ကျော်အတွက် အလွန်နှေးကွေးမည်ဖြစ်ကြောင့်",
              "Merge Sort သည် ဂဏန်းများကို ကိုင်တွယ်၍မရကြောင့်",
              "သူမ၏ဆရာက Bubble Sort သုံးခွင့်မပြုခဲ့ကြောင့်",
              "ဒေသရလဒ်များသည် စီစဉ်ထားပြီးဖြစ်ခဲ့ကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How does Merge Sort break down a large list?",
            questionMy:
                "Merge Sort သည် စာရင်းကြီးတစ်ခုကို မည်သို့ ခွဲထုတ်သနည်း။",
            optionsEn: [
              "Into smaller and smaller pieces until each holds a single item",
              "Into exactly two equal permanent halves only",
              "It does not break the list down at all",
              "Into groups of exactly 100 items",
            ],
            optionsMy: [
              "အပိုင်းတစ်ခုစီတွင် အရာတစ်ခုတည်းရှိသည်အထိ ပိုငယ်ပြီး ပိုငယ်သောအပိုင်းများအဖြစ်",
              "အတိအကျ ထာဝရ တူညီသော တစ်ဝက်နှစ်ပိုင်းအဖြစ်သာ",
              "စာရင်းကို လုံးဝ မခွဲထုတ်ချေ",
              "အတိအကျ အရာ 100 ခုစီပါသော အုပ်စုများအဖြစ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What did Thiri conclude about choosing the right algorithm?",
            questionMy:
                "မှန်ကန်သောအယ်လဂိုရီသမ်ကို ရွေးချယ်ခြင်းအကြောင်း သီရိ အဘယ်အရာ ကောက်ချက်ချခဲ့သနည်း။",
            optionsEn: [
              "It's about matching the algorithm to the size and shape of the problem",
              "There is always exactly one best algorithm for everything",
              "Algorithm choice never actually matters",
              "Bubble Sort is always the wrong choice",
            ],
            optionsMy: [
              "ပြဿနာ၏ အရွယ်အစားနှင့် ပုံသဏ္ဌာန်နှင့် အယ်လဂိုရီသမ်ကို ကိုက်ညီအောင် ရွေးချယ်ခြင်းအကြောင်းဖြစ်ကြောင်း",
              "အရာအားလုံးအတွက် အကောင်းဆုံးအယ်လဂိုရီသမ် တစ်ခုတည်း အမြဲတမ်း ရှိကြောင်း",
              "အယ်လဂိုရီသမ်ရွေးချယ်ခြင်းသည် အမှန်တကယ် ဘယ်တော့မှ အရေးမကြီးကြောင်း",
              "Bubble Sort သည် အမြဲတမ်း မှားယွင်းသောရွေးချယ်မှုဖြစ်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s3-computing-w2-d5",
      dayNumber: 5,
      titleEn: "Sorting Algorithms Recap Quiz",
      titleMy: "အစီစဉ်ရေးဆွဲခြင်း အယ်လဂိုရီသမ်များ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Bubble Sort works by...",
          questionMy: "Bubble Sort သည် မည်သို့ အလုပ်လုပ်သနည်း...",
          optionsEn: [
            "Repeatedly swapping adjacent out-of-order pairs",
            "Splitting the list into halves",
            "Sorting only the first item",
            "Ignoring all comparisons",
          ],
          optionsMy: [
            "အနီးရှိအစီအစဉ်မမှန်သောအတွဲများကို ထပ်ခါထပ်ခါ လဲလှယ်ခြင်း",
            "စာရင်းကို တစ်ဝက်စီ ခွဲထုတ်ခြင်း",
            "ပထမအရာကိုသာ စီစဉ်ခြင်း",
            "နှိုင်းယှဉ်မှုအားလုံးကို လျစ်လျူရှုခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Merge Sort's strategy is best described as...",
          questionMy:
              "Merge Sort ၏ နည်းဗျူဟာကို မည်သို့ အကောင်းဆုံးဖော်ပြနိုင်သနည်း...",
          optionsEn: [
            "Divide and conquer",
            "Random shuffling",
            "Single-pass comparison only",
            "Ignoring the middle of the list",
          ],
          optionsMy: [
            "ခွဲခြား၍ အနိုင်ယူခြင်း",
            "ကျပန်း လှုပ်ရှားခြင်း",
            "တစ်ကြိမ်တည်းသာ နှိုင်းယှဉ်ခြင်း",
            "စာရင်း၏ အလယ်ကို လျစ်လျူရှုခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "For a very large dataset, which sort is generally more efficient?",
          questionMy:
              "အလွန်ကြီးမားသော အချက်အလက်စုတစ်ခုအတွက် မည်သည့်စီစဉ်ရေးနည်းက ယေဘုယျအားဖြင့် ပိုထိရောက်သနည်း။",
          optionsEn: [
            "Merge Sort",
            "Bubble Sort",
            "Neither works on large data",
            "They are always identical in speed",
          ],
          optionsMy: [
            "Merge Sort",
            "Bubble Sort",
            "ကြီးမားသောအချက်အလက်တွင် မည်သည့်တစ်ခုမျှ အလုပ်မလုပ်ချေ",
            "အမြန်နှုန်းတွင် အမြဲတမ်း အတူတူဖြစ်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Algorithm complexity measures...",
          questionMy:
              "အယ်လဂိုရီသမ် ရှုပ်ထွေးမှုသည် အဘယ်အရာကို တိုင်းတာသနည်း...",
          optionsEn: [
            "How an algorithm's speed changes as data size grows",
            "The colour of the output",
            "How many programmers wrote the code",
            "The exact date the algorithm was invented",
          ],
          optionsMy: [
            "အချက်အလက်ပမာဏ ကြီးထွားလာသည်နှင့်အမျှ အယ်လဂိုရီသမ်၏ အမြန်နှုန်း မည်သို့ပြောင်းလဲသည်",
            "ရလဒ်၏ အရောင်",
            "ပရိုဂရမ်မာ မည်မျှရေးသားခဲ့သနည်း",
            "အယ်လဂိုရီသမ် တီထွင်ခဲ့သည့် အတိအကျရက်စွဲ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Thiri's race times story, why did Merge Sort outperform Bubble Sort for the regional competition?",
          questionMy:
              "သီရိ၏ ပြေးအချိန်များဇာတ်လမ်းတွင် Merge Sort သည် ဒေသကြီးပြိုင်ပွဲအတွက် Bubble Sort ထက် အဘယ်ကြောင့် ပိုထူးချွန်ခဲ့သနည်း။",
          optionsEn: [
            "It scaled much better for the 5,000+ item dataset",
            "Bubble Sort refused to run on numbers",
            "Merge Sort required no comparisons at all",
            "The regional results had only 8 runners",
          ],
          optionsMy: [
            "အရာ 5,000 ကျော်ရှိသော အချက်အလက်အတွက် များစွာပိုကောင်းစွာ တိုးချဲ့နိုင်ခဲ့ကြောင့်",
            "Bubble Sort သည် ဂဏန်းများပေါ်တွင် ဆောင်ရွက်ရန် ငြင်းဆန်ခဲ့ကြောင့်",
            "Merge Sort သည် နှိုင်းယှဉ်မှု လုံးဝမလိုအပ်ခဲ့ကြောင့်",
            "ဒေသရလဒ်များတွင် ပြေးသမား 8 ဦးသာ ရှိခဲ့ကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary3ComputingWeek3 = CourseWeekDef(
  id: "course-secondary3-computing-w3",
  weekNumber: 3,
  titleEn: "Error Handling and Validation",
  titleMy: "အမှားများကို ထိန်းချုပ်ခြင်းနှင့် စစ်ဆေးခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s3-computing-w3-d1",
      dayNumber: 1,
      titleEn: "Try/Except and Input Validation",
      titleMy: "Try/Except နှင့် ထည့်သွင်းချက်စစ်ဆေးခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is the purpose of a try/except block in Python?",
          questionMy: "Python တွင် try/except ဘလောက်၏ ရည်ရွယ်ချက်မှာ အဘယ်နည်း။",
          optionsEn: [
            "To attempt risky code and gracefully handle any error it produces, instead of crashing",
            "To make code run twice as fast",
            "To automatically fix spelling mistakes in variable names",
            "To permanently delete code that produces errors",
          ],
          optionsMy: [
            "အန္တရာယ်ရှိနိုင်သောကုဒ်ကို စမ်းသပ်ကြိုးစားပြီး ၎င်းမှဖြစ်ပေါ်လာသော အမှားမည်သည်ကိုမဆို ရပ်တန့်သွားခြင်းအစား ချောမွေ့စွာ ထိန်းချုပ်ရန်",
            "ကုဒ်ကို နှစ်ဆမြန်ဆန်စွာ Run စေရန်",
            "ကိန်းရှင်အမည်များတွင် စာလုံးပေါင်းမှားမှုများကို အလိုအလျောက် ပြင်ဆင်ရန်",
            "အမှားထုတ်သောကုဒ်ကို ထာဝရ ဖျက်ပစ်ရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about dividing by zero or trying to convert text like 'abc' into a number — both would normally crash a program.",
            "Code inside 'try' runs normally; if an error occurs, control jumps to 'except', which runs recovery code instead of letting the whole program stop.",
          ],
          hintsMy: [
            "သုညဖြင့် စားခြင်း သို့မဟုတ် 'abc' ကဲ့သို့ စာသားကို ဂဏန်းအဖြစ် ပြောင်းလဲရန် ကြိုးစားခြင်းကို စဉ်းစားပါ — နှစ်ခုစလုံးသည် ပုံမှန်အားဖြင့် ပရိုဂရမ်ကို ရပ်တန့်စေမည်ဖြစ်သည်။",
            "'try' အတွင်းရှိကုဒ်သည် ပုံမှန်အတိုင်း Run သည်၊ အမှားတစ်ခုဖြစ်ပေါ်ပါက ထိန်းချုပ်မှုသည် 'except' သို့ ခုန်သွားပြီး ပရိုဂရမ်တစ်ခုလုံး ရပ်တန့်သွားရန် ခွင့်ပြုမည့်အစား ပြန်လည်ကောင်းမွန်ရေးကုဒ်ကို Run စေသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why should a program validate user input before using it in calculations?",
          questionMy:
              "ပရိုဂရမ်တစ်ခုသည် တွက်ချက်မှုများတွင် အသုံးပြုမီ အသုံးပြုသူ၏ ထည့်သွင်းချက်ကို အဘယ်ကြောင့် စစ်ဆေးသင့်သနည်း။",
          optionsEn: [
            "To catch unexpected or incorrect input before it causes errors or wrong results",
            "To make the program run using less memory",
            "Validation is never actually necessary for well-written code",
            "To automatically translate the input into another language",
          ],
          optionsMy: [
            "မမျှော်လင့်ထားသော သို့မဟုတ် မှားယွင်းသော ထည့်သွင်းချက်သည် အမှားများ သို့မဟုတ် မှားယွင်းသောရလဒ်များကို မဖြစ်စေမီ ဖမ်းယူရန်",
            "ပရိုဂရမ်ကို မမ်မိုရီနည်းနည်းဖြင့် Run စေရန်",
            "ကောင်းစွာရေးသားထားသောကုဒ်အတွက် စစ်ဆေးခြင်းသည် အမှန်တကယ် ဘယ်တော့မှ မလိုအပ်ချေ",
            "ထည့်သွင်းချက်ကို အခြားဘာသာစကားသို့ အလိုအလျောက် ဘာသာပြန်ရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about a program expecting a user's age as a number, but the user accidentally types their name instead.",
            "Validation checks input against expected rules (like 'must be a positive number') before the program trusts and uses that data.",
          ],
          hintsMy: [
            "အသုံးပြုသူ၏ အသက်ကို ဂဏန်းအဖြစ် မျှော်လင့်ထားသော ပရိုဂရမ်တစ်ခုကို စဉ်းစားပါ၊ သို့သော် အသုံးပြုသူသည် ၎င်းအစား သူ၏အမည်ကို မတော်တဆ ရိုက်ထည့်လိုက်သည်။",
            "စစ်ဆေးခြင်းသည် ပရိုဂရမ်က ထိုအချက်အလက်ကို ယုံကြည်၍ အသုံးမပြုမီ မျှော်လင့်ထားသောစည်းမျဉ်းများ (ဥပမာ 'အပေါင်းကိန်းဖြစ်ရမည်') နှင့် ထည့်သွင်းချက်ကို နှိုင်းယှဉ်စစ်ဆေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A program asks for a user's age and the user types 'twenty' instead of 20. Without error handling, what would likely happen?",
          questionMy:
              "ပရိုဂရမ်တစ်ခုသည် အသုံးပြုသူ၏ အသက်ကို မေးပြီး အသုံးပြုသူသည် 20 အစား 'twenty' ဟု ရိုက်ထည့်ပါသည်။ အမှားထိန်းချုပ်မှု မရှိပါက အဘယ်အရာ ဖြစ်ပျက်နိုင်သနည်း။",
          optionsEn: [
            "The program would likely crash trying to convert text into a number",
            "The program would automatically convert 'twenty' into 20",
            "Nothing would happen; all input is treated identically",
            "The program would ask the question again in a different language",
          ],
          optionsMy: [
            "ပရိုဂရမ်သည် စာသားကို ဂဏန်းအဖြစ် ပြောင်းလဲရန် ကြိုးစားရာမှ ရပ်တန့်သွားလိမ့်မည်",
            "ပရိုဂရမ်သည် 'twenty' ကို 20 အဖြစ် အလိုအလျောက် ပြောင်းလဲပေးလိမ့်မည်",
            "မည်သည့်အရာမျှ ဖြစ်ပျက်မည်မဟုတ်ချေ — ထည့်သွင်းချက်အားလုံးကို တူညီစွာ ကိုင်တွယ်သည်",
            "ပရိုဂရမ်သည် မေးခွန်းကို အခြားဘာသာစကားဖြင့် ထပ်မံမေးလိမ့်မည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Python cannot automatically understand that the word 'twenty' means the number 20 unless specifically programmed to do so.",
            "Trying to convert non-numeric text into a number type typically raises an error, which would crash the program unless caught by try/except.",
          ],
          hintsMy: [
            "Python သည် 'twenty' ဟူသောစကားလုံးသည် ဂဏန်း 20 ကို ဆိုလိုသည်ကို တိကျစွာ ပရိုဂရမ်ရေးထားမှသာ အလိုအလျောက် နားလည်နိုင်သည်။",
            "ဂဏန်းမဟုတ်သော စာသားကို ဂဏန်းအမျိုးအစားသို့ ပြောင်းလဲရန် ကြိုးစားခြင်းသည် များသောအားဖြင့် အမှားတစ်ခု ဖြစ်ပေါ်စေပြီး try/except က မဖမ်းမှသာ ပရိုဂရမ်ကို ရပ်တန့်စေလိမ့်မည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why is 'crashing gracefully' (with a helpful error message) better than a program simply stopping with a raw technical error?",
          questionMy:
              "ပရိုဂရမ်တစ်ခု အစိုင်အခဲ နည်းပညာဆိုင်ရာ အမှားတစ်ခုနှင့်အတူ ရိုးရိုးရပ်တန့်သွားခြင်းထက် (အသုံးဝင်သော အမှားစာသားဖြင့်) 'ချောမွေ့စွာ ရပ်တန့်ခြင်း' သည် အဘယ်ကြောင့် ပိုကောင်းသနည်း။",
          optionsEn: [
            "It gives the user clear information about what went wrong and how to fix it, improving their experience",
            "It makes the program run faster overall",
            "It prevents the program from ever needing to be updated again",
            "It has no real benefit compared to a raw crash",
          ],
          optionsMy: [
            "အသုံးပြုသူအား မှားယွင်းသည့်အချက်နှင့် ၎င်းကို မည်သို့ပြင်ဆင်ရမည်အကြောင်း ရှင်းလင်းသော အချက်အလက်ကို ပေးကာ ၎င်းတို့၏ အသုံးပြုမှုအတွေ့အကြုံကို တိုးတက်စေသောကြောင့်",
            "ပရိုဂရမ်ကို စုစုပေါင်းအားဖြင့် ပိုမြန်ဆန်စွာ Run စေသောကြောင့်",
            "ပရိုဂရမ်ကို နောက်ထပ် အပ်ဒိတ်လုပ်ရန် ဘယ်တော့မှ မလိုအပ်တော့စေသောကြောင့်",
            "အစိုင်အခဲရပ်တန့်ခြင်းနှင့် နှိုင်းယှဉ်ပါက အမှန်တကယ် အကျိုးကျေးဇူး မရှိသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about the difference between a program saying 'Please enter a valid age (a number)' versus a confusing technical crash message.",
            "A friendly error message helps non-technical users understand and correct their mistake, rather than being confused or frustrated by a crash.",
          ],
          hintsMy: [
            "ပရိုဂရမ်က 'ကျေးဇူးပြု၍ မှန်ကန်သောအသက် (ဂဏန်း) ကို ထည့်ပါ' ဟုပြောခြင်းနှင့် ရှုပ်ထွေးသော နည်းပညာဆိုင်ရာ ရပ်တန့်သွားခြင်းစာသားကြား ကွာခြားချက်ကို စဉ်းစားပါ။",
            "ရင်းနှီးသော အမှားစာသားသည် နည်းပညာမကျွမ်းကျင်သော အသုံးပြုသူများအား ၎င်းတို့၏ အမှားကို နားလည်ပြင်ဆင်ရန် ကူညီပေးပြီး ရပ်တန့်သွားခြင်းကြောင့် ရှုပ်ထွေးမှု သို့မဟုတ် စိတ်ပျက်မှု မဖြစ်စေချေ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s3-computing-w3-d2",
      dayNumber: 2,
      titleEn: "Error Handling Vocabulary",
      titleMy: "အမှားထိန်းချုပ်ခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s3c-w3-dm1",
          termEn: "Try Block",
          termMy: "Try Block",
          matchEn: "The section of code attempted, which may produce an error",
          matchMy: "အမှားတစ်ခုဖြစ်ပေါ်နိုင်သော ကြိုးစားထားသောကုဒ်၏ အပိုင်း",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s3c-w3-dm2",
          termEn: "Except Block",
          termMy: "Except Block",
          matchEn:
              "The section of code that runs if the try block produces an error",
          matchMy: "Try block တွင် အမှားဖြစ်ပေါ်ပါက Run သောကုဒ်၏ အပိုင်း",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s3c-w3-dm3",
          termEn: "Input Validation",
          termMy: "ထည့်သွင်းချက်စစ်ဆေးခြင်း (Input Validation)",
          matchEn: "Checking user input meets expected rules before using it",
          matchMy:
              "အသုံးပြုမီ အသုံးပြုသူ၏ ထည့်သွင်းချက်သည် မျှော်လင့်ထားသောစည်းမျဉ်းနှင့် ကိုက်ညီမှုရှိမရှိ စစ်ဆေးခြင်း",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s3c-w3-dm4",
          termEn: "Crash",
          termMy: "ရပ်တန့်သွားခြင်း (Crash)",
          matchEn: "A program stopping abruptly due to an unhandled error",
          matchMy:
              "မထိန်းချုပ်ထားသောအမှားကြောင့် ပရိုဂရမ်တစ်ခု ရုတ်တရက် ရပ်တန့်သွားခြင်း",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s3c-w3-dm5",
          termEn: "Debugging",
          termMy: "အမှားရှာဖွေခြင်း (Debugging)",
          matchEn: "The process of finding and fixing errors in code",
          matchMy: "ကုဒ်တွင် အမှားများကို ရှာဖွေပြင်ဆင်ခြင်းဖြစ်စဉ်",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s3c-w3-dm6",
          termEn: "Robust Code",
          termMy: "ခိုင်မာသောကုဒ် (Robust Code)",
          matchEn: "Code that handles unexpected situations without crashing",
          matchMy:
              "မမျှော်လင့်ထားသောအခြေအနေများကို ရပ်တန့်ခြင်းမရှိဘဲ ကိုင်တွယ်နိုင်သောကုဒ်",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s3-computing-w3-d3",
      dayNumber: 3,
      titleEn: "Sorting Good or Poor Error Handling",
      titleMy: "အမှားထိန်းချုပ်မှု ကောင်းသည် သို့မဟုတ် ညံ့သည်ကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Good Error Handling", "Poor Error Handling"],
        bucketsMy: [
          "ကောင်းမွန်သော အမှားထိန်းချုပ်မှု",
          "ညံ့ဖျင်းသော အမှားထိန်းချုပ်မှု",
        ],
        items: [
          SortingItem(
            id: "s3c-w3-sort1",
            labelEn: "Wrapping risky code in try/except",
            labelMy:
                "အန္တရာယ်ရှိနိုင်သောကုဒ်ကို try/except ဖြင့် ထုပ်ပိုးထားခြင်း",
            correctBucketEn: "Good Error Handling",
            correctBucketMy: "ကောင်းမွန်သော အမှားထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "s3c-w3-sort2",
            labelEn: "Assuming users always type valid input",
            labelMy:
                "အသုံးပြုသူများသည် မှန်ကန်သောထည့်သွင်းချက်ကို အမြဲရိုက်ထည့်သည်ဟု ယူဆထားခြင်း",
            correctBucketEn: "Poor Error Handling",
            correctBucketMy: "ညံ့ဖျင်းသော အမှားထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "s3c-w3-sort3",
            labelEn: "Showing a clear message like 'Please enter a number'",
            labelMy:
                "'ကျေးဇူးပြု၍ ဂဏန်းတစ်ခု ထည့်ပါ' ကဲ့သို့ ရှင်းလင်းသောစာသား ပြသခြင်း",
            correctBucketEn: "Good Error Handling",
            correctBucketMy: "ကောင်းမွန်သော အမှားထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "s3c-w3-sort4",
            labelEn: "Letting the whole program crash on bad input",
            labelMy:
                "ထည့်သွင်းချက်မှားပါက ပရိုဂရမ်တစ်ခုလုံး ရပ်တန့်ခွင့်ပြုခြင်း",
            correctBucketEn: "Poor Error Handling",
            correctBucketMy: "ညံ့ဖျင်းသော အမှားထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "s3c-w3-sort5",
            labelEn: "Checking a number is positive before using it",
            labelMy:
                "ဂဏန်းတစ်ခုကို အသုံးမပြုမီ အပေါင်းကိန်းဖြစ်မဖြစ် စစ်ဆေးခြင်း",
            correctBucketEn: "Good Error Handling",
            correctBucketMy: "ကောင်းမွန်သော အမှားထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "s3c-w3-sort6",
            labelEn: "Ignoring possible division by zero",
            labelMy: "သုညဖြင့်စားခြင်း ဖြစ်နိုင်ချေကို လျစ်လျူရှုခြင်း",
            correctBucketEn: "Poor Error Handling",
            correctBucketMy: "ညံ့ဖျင်းသော အမှားထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "s3c-w3-sort7",
            labelEn: "Testing code with unusual and edge-case inputs",
            labelMy:
                "ထူးဆန်းသောနှင့် အစွန်းအဖျားအခြေအနေ ထည့်သွင်းချက်များဖြင့် ကုဒ်ကို စမ်းသပ်ခြင်း",
            correctBucketEn: "Good Error Handling",
            correctBucketMy: "ကောင်းမွန်သော အမှားထိန်းချုပ်မှု",
          ),
          SortingItem(
            id: "s3c-w3-sort8",
            labelEn: "Only ever testing with perfect, expected input",
            labelMy:
                "ပြီးပြည့်စုံသော၊ မျှော်လင့်ထားသောထည့်သွင်းချက်ဖြင့်သာ ဘယ်တော့မှ စမ်းသပ်ခြင်း",
            correctBucketEn: "Poor Error Handling",
            correctBucketMy: "ညံ့ဖျင်းသော အမှားထိန်းချုပ်မှု",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s3-computing-w3-d4",
      dayNumber: 4,
      titleEn: "Reading: Mya's Calculator Crash",
      titleMy: "စာဖတ်ခြင်း — မြ၏ ကယ်လ်ကူလေတာ ရပ်တန့်မှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Mya's Calculator Crash",
        titleMy: "မြ၏ ကယ်လ်ကူလေတာ ရပ်တန့်မှု",
        passageEn:
            "Mya built a simple Python calculator program for her computing class, asking the user to type two numbers and an operation to perform. During her demonstration in front of the class, a classmate jokingly typed the letter 'x' instead of a number, and Mya's program immediately crashed with a confusing technical error message, embarrassing her in front of everyone. That evening, Mya rewrote her program using a try/except block around the part that converted user input into numbers. Now, if someone typed something that was not a valid number, the except block caught the error and displayed a friendly message: 'Please enter a valid number.' She also added input validation to check that the user did not try to divide by zero, since that would cause a different kind of crash. When she demonstrated the improved calculator again, her classmate tried the same trick, typing 'x' again, but this time the program calmly displayed the helpful error message and asked for the input again, without crashing at all. Mya realised that professional software always assumes users will make mistakes, and robust code should be prepared for that rather than falling apart at the first unexpected input.",
        passageMy:
            "မြသည် သူမ၏ ကွန်ပျူတာသိပ္ပံအတန်းအတွက် ရိုးရှင်းသော Python ကယ်လ်ကူလေတာ ပရိုဂရမ်တစ်ခု တည်ဆောက်ခဲ့ပြီး အသုံးပြုသူအား ဂဏန်းနှစ်လုံးနှင့် လုပ်ဆောင်ရမည့် တွက်ချက်မှုကို ရိုက်ထည့်ရန် တောင်းဆိုခဲ့သည်။ အတန်းရှေ့တွင် သူမ၏ သရုပ်ပြမှုအတွင်း အတန်းဖော်တစ်ဦးသည် ဟာသအနေဖြင့် ဂဏန်းအစား 'x' အက္ခရာကို ရိုက်ထည့်ခဲ့ပြီး မြ၏ ပရိုဂရမ်သည် ချက်ချင်း ရှုပ်ထွေးသော နည်းပညာဆိုင်ရာ အမှားစာသားနှင့်အတူ ရပ်တန့်သွားခဲ့ကာ လူတိုင်းရှေ့တွင် သူမကို ရှက်စေခဲ့သည်။ ထိုည သူမသည် အသုံးပြုသူ၏ ထည့်သွင်းချက်ကို ဂဏန်းများအဖြစ် ပြောင်းလဲသည့်အပိုင်းပတ်လည်တွင် try/except block ကို အသုံးပြု၍ သူမ၏ ပရိုဂရမ်ကို ပြန်လည်ရေးသားခဲ့သည်။ ယခုအခါ တစ်စုံတစ်ဦးသည် မှန်ကန်သောဂဏန်းမဟုတ်သောအရာကို ရိုက်ထည့်ပါက except block က အမှားကို ဖမ်းယူပြီး 'ကျေးဇူးပြု၍ မှန်ကန်သောဂဏန်းတစ်ခု ထည့်ပါ' ဟူသော ရင်းနှီးသောစာသားကို ပြသသည်။ သူမသည် အသုံးပြုသူက သုညဖြင့် မစားမိစေရန် ထည့်သွင်းချက်စစ်ဆေးခြင်းကိုလည်း ထည့်သွင်းခဲ့သည် — အကြောင်းမှာ ၎င်းသည် အခြားအမျိုးအစား ရပ်တန့်မှုတစ်ခုကို ဖြစ်စေနိုင်သောကြောင့်ဖြစ်သည်။ တိုးတက်ပြီးသော ကယ်လ်ကူလေတာကို သူမ ထပ်မံသရုပ်ပြသောအခါ သူမ၏ အတန်းဖော်သည် အလှည့်ကွက်တူကို ထပ်မံစမ်းသပ်ပြီး 'x' ကို ထပ်ရိုက်ထည့်ခဲ့သော်လည်း ဤအကြိမ်တွင် ပရိုဂရမ်သည် တည်ငြိမ်စွာ အသုံးဝင်သောအမှားစာသားကို ပြသကာ ထည့်သွင်းချက်ကို ထပ်မံမေးမြန်းခဲ့ပြီး လုံးဝ ရပ်တန့်ခြင်း မရှိခဲ့ချေ။ ပရော်ဖက်ရှင်နယ် ဆော့ဖ်ဝဲများသည် အသုံးပြုသူများ အမှားလုပ်မိမည်ဟု အမြဲယူဆထားပြီး ခိုင်မာသောကုဒ်သည် ပထမဆုံးမမျှော်လင့်ထားသော ထည့်သွင်းချက်တွင် ပြိုကွဲသွားမည့်အစား ၎င်းအတွက် ပြင်ဆင်ထားသင့်ကြောင်း မြ သဘောပေါက်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn: "What happened during Mya's first demonstration?",
            questionMy: "မြ၏ ပထမသရုပ်ပြမှုအတွင်း အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "Her program crashed with a confusing error message",
              "Her program worked perfectly for every input",
              "Her classmate fixed the bug for her",
              "The calculator refused to start at all",
            ],
            optionsMy: [
              "သူမ၏ ပရိုဂရမ်သည် ရှုပ်ထွေးသော အမှားစာသားနှင့်အတူ ရပ်တန့်သွားခဲ့ကြောင့်",
              "သူမ၏ ပရိုဂရမ်သည် ထည့်သွင်းချက်တိုင်းအတွက် ကောင်းမွန်စွာ အလုပ်လုပ်ခဲ့ကြောင့်",
              "သူမ၏ အတန်းဖော်က ချွတ်ယွင်းချက်ကို ပြင်ပေးခဲ့ကြောင့်",
              "ကယ်လ်ကူလေတာသည် လုံးဝ စတင်ရန် ငြင်းဆန်ခဲ့ကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Mya add to fix the problem?",
            questionMy: "ပြဿနာကို ဖြေရှင်းရန် မြ အဘယ်အရာ ထည့်သွင်းခဲ့သနည်း။",
            optionsEn: [
              "A try/except block around the number conversion",
              "A completely new calculator app",
              "A rule banning classmates from testing it",
              "Nothing, the crash was acceptable",
            ],
            optionsMy: [
              "ဂဏန်းပြောင်းလဲမှုပတ်လည်တွင် try/except block",
              "လုံးဝ ကယ်လ်ကူလေတာအက်ပ်သစ်",
              "အတန်းဖော်များ စမ်းသပ်ခြင်းကို တားမြစ်သောစည်းမျဉ်း",
              "မည်သည့်အရာမျှ — ရပ်တန့်မှုသည် လက်ခံနိုင်ခဲ့ကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What extra validation did Mya add besides checking for valid numbers?",
            questionMy:
                "မှန်ကန်သောဂဏန်းများ စစ်ဆေးခြင်းအပြင် မြ မည်သည့်ထပ်ဆောင်း စစ်ဆေးမှု ထည့်သွင်းခဲ့သနည်း။",
            optionsEn: [
              "Checking the user did not try to divide by zero",
              "Checking the user's favourite colour",
              "Checking the time of day",
              "Checking the user's exact name",
            ],
            optionsMy: [
              "အသုံးပြုသူသည် သုညဖြင့် မစားကြောင်း စစ်ဆေးခြင်း",
              "အသုံးပြုသူ၏ အကြိုက်ဆုံးအရောင်ကို စစ်ဆေးခြင်း",
              "နေ့အချိန်ကို စစ်ဆေးခြင်း",
              "အသုံးပြုသူ၏ အတိအကျအမည်ကို စစ်ဆေးခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "What did Mya conclude about professional software?",
            questionMy:
                "ပရော်ဖက်ရှင်နယ် ဆော့ဖ်ဝဲအကြောင်း မြ အဘယ်အရာ ကောက်ချက်ချခဲ့သနည်း။",
            optionsEn: [
              "It assumes users will make mistakes and prepares for it",
              "It never needs to handle any errors",
              "It should crash immediately on any unusual input",
              "It only needs to work for the programmer, not other users",
            ],
            optionsMy: [
              "အသုံးပြုသူများသည် အမှားလုပ်မိမည်ဟု ယူဆထားပြီး ၎င်းအတွက် ပြင်ဆင်ထားကြောင်း",
              "မည်သည့်အမှားကိုမျှ ဘယ်တော့မှ ထိန်းချုပ်ရန် မလိုအပ်ကြောင်း",
              "ထူးဆန်းသောထည့်သွင်းချက်မည်သည့်တွင်မဆို ချက်ချင်း ရပ်တန့်သင့်ကြောင်း",
              "ပရိုဂရမ်မာအတွက်သာ အလုပ်လုပ်ရန် လိုအပ်ပြီး အခြားအသုံးပြုသူများအတွက် မလိုအပ်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s3-computing-w3-d5",
      dayNumber: 5,
      titleEn: "Error Handling and Validation Recap Quiz",
      titleMy:
          "အမှားထိန်းချုပ်ခြင်းနှင့် စစ်ဆေးခြင်း ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "The purpose of try/except is to...",
          questionMy: "try/except ၏ ရည်ရွယ်ချက်မှာ...",
          optionsEn: [
            "Gracefully handle errors instead of crashing",
            "Make the program run twice as fast",
            "Automatically fix spelling errors",
            "Delete code that produces errors",
          ],
          optionsMy: [
            "ရပ်တန့်ခြင်းအစား အမှားများကို ချောမွေ့စွာ ထိန်းချုပ်ရန်",
            "ပရိုဂရမ်ကို နှစ်ဆမြန်ဆန်စွာ Run စေရန်",
            "စာလုံးပေါင်းအမှားများကို အလိုအလျောက် ပြင်ရန်",
            "အမှားထုတ်သောကုဒ်ကို ဖျက်ပစ်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Input validation checks that...",
          questionMy: "ထည့်သွင်းချက်စစ်ဆေးခြင်းသည် အဘယ်အရာကို စစ်ဆေးသနည်း...",
          optionsEn: [
            "User input meets expected rules before it is used",
            "The program's colour scheme is correct",
            "The user's internet connection is fast",
            "The code has no comments",
          ],
          optionsMy: [
            "အသုံးပြုသူ၏ ထည့်သွင်းချက်သည် အသုံးမပြုမီ မျှော်လင့်ထားသောစည်းမျဉ်းနှင့် ကိုက်ညီမှု ရှိမရှိ",
            "ပရိုဂရမ်၏ အရောင်စနစ် မှန်ကန်မှု ရှိမရှိ",
            "အသုံးပြုသူ၏ အင်တာနက်ချိတ်ဆက်မှု မြန်ဆန်မှု ရှိမရှိ",
            "ကုဒ်တွင် မှတ်ချက်များ ရှိမရှိ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Without error handling, converting text like 'twenty' into a number would likely...",
          questionMy:
              "အမှားထိန်းချုပ်မှု မရှိပါက 'twenty' ကဲ့သို့ စာသားကို ဂဏန်းအဖြစ် ပြောင်းလဲခြင်းသည် များသောအားဖြင့်...",
          optionsEn: [
            "Crash the program",
            "Automatically become the number 20",
            "Have no effect at all",
            "Make the program run faster",
          ],
          optionsMy: [
            "ပရိုဂရမ်ကို ရပ်တန့်စေမည်",
            "ဂဏန်း 20 အဖြစ် အလိုအလျောက် ဖြစ်လာမည်",
            "လုံးဝ သက်ရောက်မှု မရှိချေ",
            "ပရိုဂရမ်ကို ပိုမြန်ဆန်စေမည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A helpful error message is better than a raw technical crash because...",
          questionMy:
              "အသုံးဝင်သောအမှားစာသားသည် အစိုင်အခဲ နည်းပညာဆိုင်ရာ ရပ်တန့်ခြင်းထက် ပိုကောင်းသည်မှာ...",
          optionsEn: [
            "It helps the user understand and fix their mistake",
            "It makes the program run twice as fast",
            "It prevents the program from ever needing updates",
            "It has no real benefit",
          ],
          optionsMy: [
            "အသုံးပြုသူအား ၎င်းတို့၏အမှားကို နားလည်ပြင်ဆင်ရန် ကူညီသောကြောင့်",
            "ပရိုဂရမ်ကို နှစ်ဆမြန်ဆန်စွာ Run စေသောကြောင့်",
            "ပရိုဂရမ်ကို အပ်ဒိတ်လုပ်ရန် ဘယ်တော့မှ မလိုအပ်တော့စေသောကြောင့်",
            "အမှန်တကယ် အကျိုးကျေးဇူး မရှိသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Mya's calculator story, what fixed the crash when a classmate typed 'x' instead of a number?",
          questionMy:
              "မြ၏ ကယ်လ်ကူလေတာဇာတ်လမ်းတွင် အတန်းဖော်တစ်ဦးက ဂဏန်းအစား 'x' ကို ရိုက်ထည့်သောအခါ ရပ်တန့်မှုကို အဘယ်အရာက ပြင်ဆင်ပေးခဲ့သနည်း။",
          optionsEn: [
            "A try/except block that caught the error and showed a friendly message",
            "Banning classmates from testing the program",
            "Deleting the calculator entirely",
            "Nothing needed to be fixed",
          ],
          optionsMy: [
            "အမှားကို ဖမ်းယူပြီး ရင်းနှီးသောစာသားကို ပြသသော try/except block",
            "အတန်းဖော်များ ပရိုဂရမ်စမ်းသပ်ခြင်းကို တားမြစ်ခြင်း",
            "ကယ်လ်ကူလေတာကို လုံးဝ ဖျက်ပစ်ခြင်း",
            "မည်သည့်အရာမျှ ပြင်ဆင်ရန် မလိုအပ်ခဲ့ကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary3ComputingWeek4 = CourseWeekDef(
  id: "course-secondary3-computing-w4",
  weekNumber: 4,
  titleEn: "Capstone: Algorithm Performance Analyzer",
  titleMy: "အထွတ်အထိပ်စီမံကိန်း — အယ်လဂိုရီသမ် စွမ်းဆောင်ရည် ခွဲခြမ်းစိတ်ဖြာသူ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s3-computing-w4-d1",
      dayNumber: 1,
      titleEn: "Timing Code and Generating Datasets",
      titleMy: "ကုဒ်အချိန်တိုင်းတာခြင်းနှင့် အချက်အလက်အစုအား ဖန်တီးခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Why would a programmer use Python's 'time' module when comparing two algorithms?",
          questionMy:
              "အယ်လဂိုရီသမ်နှစ်ခုကို နှိုင်းယှဉ်သောအခါ ပရိုဂရမ်မာတစ်ဦးသည် Python ၏ 'time' module ကို အဘယ်ကြောင့် အသုံးပြုမည်နည်း။",
          optionsEn: [
            "To measure exactly how long each algorithm takes to run and compare their speed objectively",
            "To automatically fix bugs in the slower algorithm",
            "To translate the code into a different programming language",
            "To make the algorithm's output more colourful",
          ],
          optionsMy: [
            "အယ်လဂိုရီသမ်တစ်ခုစီ Run ရန် အတိအကျ မည်မျှကြာသည်ကို တိုင်းတာပြီး ၎င်းတို့၏အမြန်နှုန်းကို ဓမ္မဓိဋ္ဌာန်ကျစွာ နှိုင်းယှဉ်ရန်",
            "ပိုနှေးသောအယ်လဂိုရီသမ်ရှိ ချွတ်ယွင်းချက်များကို အလိုအလျောက် ပြင်ရန်",
            "ကုဒ်ကို အခြားပရိုဂရမ်ရေးသားမှုဘာသာစကားသို့ ဘာသာပြန်ရန်",
            "အယ်လဂိုရီသမ်၏ ထွက်ရှိမှုကို ပိုအရောင်ရှုံ့စေရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Just reading code doesn't tell you which is actually faster in practice — you need real measurements.",
            "By recording the time before and after running each algorithm, you can calculate exactly how many seconds (or milliseconds) each one took.",
          ],
          hintsMy: [
            "ကုဒ်ကို ဖတ်ရုံသက်သက်ဖြင့် လက်တွေ့တွင် မည်သည့်အယ်လဂိုရီသမ်က ပိုမြန်သည်ကို မပြောနိုင်ချေ — အမှန်တကယ် တိုင်းတာမှုများ လိုအပ်သည်။",
            "အယ်လဂိုရီသမ်တစ်ခုစီ Run ခြင်း မတိုင်မီနှင့် ပြီးနောက် အချိန်ကို မှတ်တမ်းတင်ခြင်းဖြင့် တစ်ခုစီကြာချိန် မိနစ်ပိုင်း (သို့မဟုတ် စက္ကန့်ပိုင်း) မည်မျှရှိသည်ကို တွက်ချက်နိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why generate a large random dataset (e.g. 10,000 numbers) instead of testing with only 5 numbers?",
          questionMy:
              "ဂဏန်း 5 လုံးနှင့်သာ စမ်းသပ်မည့်အစား ကြီးမားသော ကျပန်းအချက်အလက်အစု (ဥပမာ ဂဏန်း 10,000) ကို အဘယ်ကြောင့် ဖန်တီးရမည်နည်း။",
          optionsEn: [
            "Small datasets often run too fast to reveal any meaningful difference in efficiency",
            "Python cannot process fewer than 10,000 numbers",
            "Large datasets automatically make code error-free",
            "Random numbers are always faster to sort than ordered ones",
          ],
          optionsMy: [
            "အချက်အလက်အစုငယ်များသည် စွမ်းဆောင်ရည်တွင် အဓိပ္ပာယ်ရှိသောကွာခြားချက်ကို ပေါ်လွင်စေရန် မကြာခဏ လျင်မြန်လွန်းသောကြောင့်",
            "Python သည် ဂဏန်း 10,000 ထက်နည်းသည်ကို ဆောင်ရွက်၍ မရသောကြောင့်",
            "အချက်အလက်အစုကြီးများသည် ကုဒ်ကို အလိုအလျောက် အမှားကင်းစေသောကြောင့်",
            "ကျပန်းဂဏန်းများသည် အစီအစဉ်ကျသောဂဏန်းများထက် စီစဉ်ရန် အမြဲ ပိုမြန်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Sorting 5 numbers might take a fraction of a millisecond for both a slow and fast algorithm — the difference is invisible.",
            "Efficiency differences between algorithms become clear (and important) mainly as the amount of data grows very large.",
          ],
          hintsMy: [
            "ဂဏန်း 5 လုံးကို စီစဉ်ခြင်းသည် နှေးသောနှင့် မြန်သောအယ်လဂိုရီသမ်နှစ်ခုစလုံးအတွက် မိလီစက္ကန့်တစ်စိတ်တစ်ပိုင်းသာ ကြာနိုင်သည် — ကွာခြားချက်ကို မမြင်နိုင်ချေ။",
            "အယ်လဂိုရီသမ်များကြား စွမ်းဆောင်ရည်ကွာခြားချက်များသည် အချက်အလက်ပမာဏ များစွာကြီးထွားလာသောအခါမှသာ ရှင်းလင်း (နှင့် အရေးကြီး) လာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is a fair way to compare two sorting algorithms' speed?",
          questionMy:
              "ဆော့တင်ခ်ျအယ်လဂိုရီသမ်နှစ်ခု၏ အမြန်နှုန်းကို တရားမျှတစွာ နှိုင်းယှဉ်ရန် နည်းလမ်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Run both algorithms on the exact same dataset and compare their timed results",
            "Run each algorithm on a completely different dataset of a different size",
            "Only test the algorithm you already believe is faster",
            "Guess based on how long the code looks when written out",
          ],
          optionsMy: [
            "အယ်လဂိုရီသမ်နှစ်ခုစလုံးကို အတိအကျတူညီသော အချက်အလက်အစုတွင် Run ပြီး ၎င်းတို့၏ အချိန်တိုင်းရလဒ်များကို နှိုင်းယှဉ်ခြင်း",
            "အယ်လဂိုရီသမ်တစ်ခုစီကို လုံးဝမတူသောအရွယ်အစားရှိ မတူညီသောအချက်အလက်အစုတွင် Run ခြင်း",
            "ပိုမြန်သည်ဟု ရှေးရိုးစွဲ ယုံကြည်ထားသော အယ်လဂိုရီသမ်ကိုသာ စမ်းသပ်ခြင်း",
            "ကုဒ်ကို ရေးထားပုံ မည်မျှရှည်လျားသည်ဟု ခန့်မှန်းခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "If the datasets are different sizes or content, differences in timing might just reflect the different data, not the algorithm itself.",
            "A fair comparison controls every variable except the one you're testing — in this case, the algorithm.",
          ],
          hintsMy: [
            "အချက်အလက်အစုများသည် မတူညီသောအရွယ်အစား သို့မဟုတ် အကြောင်းအရာရှိပါက အချိန်ကွာခြားချက်များသည် အယ်လဂိုရီသမ်ကိုယ်တိုင်ထက် ကွဲပြားသောအချက်အလက်ကိုသာ ထင်ဟပ်နိုင်သည်။",
            "တရားမျှတသောနှိုင်းယှဉ်မှုတစ်ခုသည် သင်စမ်းသပ်နေသောအရာမှလွဲ၍ ကိန်းရှင်တိုင်းကို ထိန်းချုပ်ထားသည် — ဤကိစ္စတွင် အယ်လဂိုရီသမ်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What should a good performance report include after comparing algorithms?",
          questionMy:
              "အယ်လဂိုရီသမ်များကို နှိုင်းယှဉ်ပြီးနောက် ကောင်းမွန်သော စွမ်းဆောင်ရည်အစီရင်ခံစာတွင် အဘယ်အရာ ပါဝင်သင့်သနည်း။",
          optionsEn: [
            "The measured timing results, the dataset sizes used, and a clear conclusion about which algorithm performed better and why",
            "Only the programmer's personal opinion with no data",
            "A list of unrelated algorithms that were never tested",
            "The colour scheme used in the code editor",
          ],
          optionsMy: [
            "တိုင်းတာထားသော အချိန်ရလဒ်များ၊ အသုံးပြုခဲ့သော အချက်အလက်အစုအရွယ်အစားများနှင့် မည်သည့်အယ်လဂိုရီသမ်က ပိုကောင်းစွာ လုပ်ဆောင်ခဲ့ပြီး အဘယ်ကြောင့်ဆိုသည်ကို ရှင်းလင်းသောကောက်ချက်",
            "အချက်အလက် လုံးဝမပါဘဲ ပရိုဂရမ်မာ၏ ကိုယ်ပိုင်အမြင်သာ",
            "ဘယ်တော့မှ မစမ်းသပ်ခဲ့သော ဆက်စပ်မှုမရှိသည့် အယ်လဂိုရီသမ်များစာရင်း",
            "ကုဒ်တည်းဖြတ်စက်တွင် အသုံးပြုထားသော အရောင်စနစ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A performance report is a piece of evidence-based writing — it should let a reader verify the conclusion from the data given.",
            "Without the actual timing numbers and dataset sizes, a reader cannot judge whether the conclusion is trustworthy.",
          ],
          hintsMy: [
            "စွမ်းဆောင်ရည်အစီရင်ခံစာသည် အထောက်အထားအခြေခံစာရေးသားမှုတစ်ခုဖြစ်သည် — ၎င်းသည် ဖတ်ရှုသူအား ပေးထားသောအချက်အလက်မှ ကောက်ချက်ကို အတည်ပြုနိုင်စေသင့်သည်။",
            "အမှန်တကယ်အချိန်ဂဏန်းများနှင့် အချက်အလက်အစုအရွယ်အစားများ မပါဘဲ ဖတ်ရှုသူသည် ကောက်ချက်ကို ယုံကြည်ရမည်၊ မယုံကြည်ရမည်ကို ဆုံးဖြတ်၍ မရနိုင်ချေ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s3-computing-w4-d2",
      dayNumber: 2,
      titleEn: "Performance Analysis Vocabulary",
      titleMy: "စွမ်းဆောင်ရည် ခွဲခြမ်းစိတ်ဖြာခြင်း ဝေါဟာရများ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s3c-w4-dm1",
          termEn: "Timing Code",
          termMy: "ကုဒ်အချိန်တိုင်းတာခြင်း",
          matchEn: "Measuring how long a piece of code takes to run",
          matchMy: "ကုဒ်အပိုင်းတစ်ခု Run ရန် မည်မျှကြာသည်ကို တိုင်းတာခြင်း",
          colorValue: 0xFF4C9EEB,
        ),
        DragMatchPair(
          id: "s3c-w4-dm2",
          termEn: "Dataset Size",
          termMy: "အချက်အလက်အစု အရွယ်အစား",
          matchEn: "The number of items being processed by an algorithm",
          matchMy: "အယ်လဂိုရီသမ်တစ်ခုက ဆောင်ရွက်နေသော အရာဝတ္ထုအရေအတွက်",
          colorValue: 0xFFE67E22,
        ),
        DragMatchPair(
          id: "s3c-w4-dm3",
          termEn: "Performance Report",
          termMy: "စွမ်းဆောင်ရည် အစီရင်ခံစာ",
          matchEn: "A written summary of measured results and conclusions",
          matchMy:
              "တိုင်းတာထားသောရလဒ်များနှင့် ကောက်ချက်များ၏ ရေးသားထားသောအကျဉ်းချုပ်",
          colorValue: 0xFF27AE60,
        ),
        DragMatchPair(
          id: "s3c-w4-dm4",
          termEn: "Fair Comparison",
          termMy: "တရားမျှတသော နှိုင်းယှဉ်မှု",
          matchEn: "Testing algorithms under identical conditions",
          matchMy: "အခြေအနေတူညီမှုအောက်တွင် အယ်လဂိုရီသမ်များကို စမ်းသပ်ခြင်း",
          colorValue: 0xFF9B59B6,
        ),
        DragMatchPair(
          id: "s3c-w4-dm5",
          termEn: "Scalability",
          termMy: "တိုးချဲ့နိုင်စွမ်း (Scalability)",
          matchEn: "How well an algorithm's performance holds up as data grows",
          matchMy:
              "အချက်အလက် ကြီးထွားလာသည်နှင့်အမျှ အယ်လဂိုရီသမ်၏ စွမ်းဆောင်ရည် မည်မျှ ခိုင်မာသည်",
          colorValue: 0xFFE74C3C,
        ),
        DragMatchPair(
          id: "s3c-w4-dm6",
          termEn: "Conclusion",
          termMy: "ကောက်ချက်",
          matchEn: "The final judgement drawn from analysing the evidence",
          matchMy:
              "အထောက်အထားကို ခွဲခြမ်းစိတ်ဖြာခြင်းမှ ရရှိသော နောက်ဆုံးဆုံးဖြတ်ချက်",
          colorValue: 0xFF16A085,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s3-computing-w4-d3",
      dayNumber: 3,
      titleEn: "Sorting Good Report Practices",
      titleMy: "ကောင်းမွန်သော အစီရင်ခံစာ လေ့ကျင့်ခြင်းများကို စီစဉ်ခြင်း",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Good Practice", "Poor Practice"],
        bucketsMy: ["ကောင်းမွန်သောလေ့ကျင့်ခြင်း", "ညံ့ဖျင်းသောလေ့ကျင့်ခြင်း"],
        items: [
          SortingItem(
            id: "s3c-w4-sort1",
            labelEn: "Testing both algorithms on the same dataset",
            labelMy:
                "အယ်လဂိုရီသမ်နှစ်ခုစလုံးကို တူညီသောအချက်အလက်အစုတွင် စမ်းသပ်ခြင်း",
            correctBucketEn: "Good Practice",
            correctBucketMy: "ကောင်းမွန်သောလေ့ကျင့်ခြင်း",
          ),
          SortingItem(
            id: "s3c-w4-sort2",
            labelEn: "Testing each algorithm on a different-sized dataset",
            labelMy:
                "အယ်လဂိုရီသမ်တစ်ခုစီကို မတူညီသောအရွယ်အစားရှိအချက်အလက်အစုတွင် စမ်းသပ်ခြင်း",
            correctBucketEn: "Poor Practice",
            correctBucketMy: "ညံ့ဖျင်းသောလေ့ကျင့်ခြင်း",
          ),
          SortingItem(
            id: "s3c-w4-sort3",
            labelEn: "Recording exact timing results with units (seconds)",
            labelMy:
                "အတိုင်းအတာများ (စက္ကန့်) ဖြင့် အတိအကျအချိန်ရလဒ်များကို မှတ်တမ်းတင်ခြင်း",
            correctBucketEn: "Good Practice",
            correctBucketMy: "ကောင်းမွန်သောလေ့ကျင့်ခြင်း",
          ),
          SortingItem(
            id: "s3c-w4-sort4",
            labelEn: "Guessing which algorithm is faster without measuring",
            labelMy:
                "မတိုင်းတာဘဲ မည်သည့်အယ်လဂိုရီသမ်ကပိုမြန်သည်ကို ခန့်မှန်းခြင်း",
            correctBucketEn: "Poor Practice",
            correctBucketMy: "ညံ့ဖျင်းသောလေ့ကျင့်ခြင်း",
          ),
          SortingItem(
            id: "s3c-w4-sort5",
            labelEn: "Testing with multiple dataset sizes to see the trend",
            labelMy:
                "လမ်းကြောင်းကို ကြည့်ရှုရန် အချက်အလက်အစုအရွယ်အစားများစွာဖြင့် စမ်းသပ်ခြင်း",
            correctBucketEn: "Good Practice",
            correctBucketMy: "ကောင်းမွန်သောလေ့ကျင့်ခြင်း",
          ),
          SortingItem(
            id: "s3c-w4-sort6",
            labelEn:
                "Only running each algorithm once and assuming that result is reliable",
            labelMy:
                "အယ်လဂိုရီသမ်တစ်ခုစီကို တစ်ကြိမ်သာ Run ပြီး ထိုရလဒ်ကို ယုံကြည်ရသည်ဟု ယူဆခြင်း",
            correctBucketEn: "Poor Practice",
            correctBucketMy: "ညံ့ဖျင်းသောလေ့ကျင့်ခြင်း",
          ),
          SortingItem(
            id: "s3c-w4-sort7",
            labelEn: "Writing a clear conclusion supported by the timing data",
            labelMy:
                "အချိန်တိုင်းအချက်အလက်ဖြင့် ထောက်ခံထားသော ရှင်းလင်းသောကောက်ချက်ကို ရေးသားခြင်း",
            correctBucketEn: "Good Practice",
            correctBucketMy: "ကောင်းမွန်သောလေ့ကျင့်ခြင်း",
          ),
          SortingItem(
            id: "s3c-w4-sort8",
            labelEn: "Leaving out the dataset sizes used in the report",
            labelMy:
                "အစီရင်ခံစာတွင် အသုံးပြုခဲ့သော အချက်အလက်အစုအရွယ်အစားများကို ချန်လှပ်ခြင်း",
            correctBucketEn: "Poor Practice",
            correctBucketMy: "ညံ့ဖျင်းသောလေ့ကျင့်ခြင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s3-computing-w4-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Investigation",
      titleMy: "စာဖတ်ခြင်း — နေချစ်၏ စုံစမ်းစစ်ဆေးမှု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Investigation",
        titleMy: "နေချစ်၏ စုံစမ်းစစ်ဆေးမှု",
        passageEn:
            "For her final computing project, Nay Chi decided to settle an argument she had been having with Htet Aung about which sorting algorithm was truly better: Bubble Sort or Merge Sort. Rather than simply guessing, she designed a proper investigation. First, she wrote both algorithms carefully, making sure each one correctly sorted numbers. Then she used Python's time module to record the exact moment before and after each algorithm ran, calculating the difference to find how many seconds each one took. To make the comparison fair, she generated random datasets of increasing size — 100 numbers, 1,000 numbers, and 10,000 numbers — and ran both algorithms on the exact same dataset each time, rather than generating separate random numbers for each. Her results showed that for the small dataset of 100 numbers, both algorithms finished in a fraction of a second, with barely any noticeable difference. But at 10,000 numbers, Bubble Sort took several seconds while Merge Sort finished almost instantly. Nay Chi wrote a performance report presenting her timing table, explaining that Merge Sort's divide-and-conquer approach scaled far better as the dataset grew, while Bubble Sort's repeated full passes became increasingly costly. When she showed Htet Aung the report, complete with actual numbers instead of opinions, he admitted her evidence settled the argument completely.",
        passageMy:
            "သူမ၏ နောက်ဆုံးကွန်ပျူတာသိပ္ပံစီမံကိန်းအတွက် နေချစ်သည် ဆော့တင်ခ်ျအယ်လဂိုရီသမ် မည်သည်က အမှန်တကယ် ပိုကောင်းသည်ဟု ထက်အောင်နှင့် ငြင်းခုံနေခဲ့သည့် — Bubble Sort သို့မဟုတ် Merge Sort — ငြင်းခုံမှုကို ဖြေရှင်းရန် ဆုံးဖြတ်ခဲ့သည်။ ရိုးရိုးရှင်းရှင်း ခန့်မှန်းမည့်အစား သူမသည် သင့်တော်သော စုံစမ်းစစ်ဆေးမှုတစ်ခုကို ဒီဇိုင်းရေးဆွဲခဲ့သည်။ ပထမဆုံးအနေဖြင့် သူမသည် အယ်လဂိုရီသမ်နှစ်ခုလုံးကို သေချာစွာရေးသားခဲ့ပြီး တစ်ခုစီသည် ဂဏန်းများကို မှန်ကန်စွာ စီစဉ်ကြောင်း သေချာအောင်လုပ်ခဲ့သည်။ ထို့နောက် သူမသည် Python ၏ time module ကို အသုံးပြု၍ အယ်လဂိုရီသမ်တစ်ခုစီ Run ခြင်း မတိုင်မီနှင့် ပြီးနောက် အတိအကျအချိန်ကို မှတ်တမ်းတင်ကာ တစ်ခုစီ မည်မျှစက္ကန့်ကြာသည်ကို ရှာဖွေရန် ကွာခြားချက်ကို တွက်ချက်ခဲ့သည်။ နှိုင်းယှဉ်မှုကို တရားမျှတစေရန် သူမသည် တိုးလာသောအရွယ်အစားရှိ ကျပန်းအချက်အလက်အစုများ — ဂဏန်း 100၊ ဂဏန်း 1,000 နှင့် ဂဏန်း 10,000 — ကို ဖန်တီးခဲ့ပြီး အကြိမ်တိုင်းအတွက် သီးခြားကျပန်းဂဏန်းများ ဖန်တီးမည့်အစား အယ်လဂိုရီသမ်နှစ်ခုလုံးကို အတိအကျတူညီသောအချက်အလက်အစုတွင် Run ခဲ့သည်။ သူမ၏ရလဒ်များက ဂဏန်း 100 ရှိ အချက်အလက်အစုငယ်အတွက် အယ်လဂိုရီသမ်နှစ်ခုစလုံး စက္ကန့်တစ်စိတ်တစ်ပိုင်းအတွင်း ပြီးဆုံးခဲ့ပြီး သတိထားမိလောက်သော ကွာခြားချက် မရှိသလောက်ဖြစ်ကြောင်း ပြသခဲ့သည်။ သို့သော် ဂဏန်း 10,000 တွင် Bubble Sort သည် စက္ကန့်အနည်းငယ်ကြာခဲ့ပြီး Merge Sort မှာမူ ချက်ချင်းနီးပါး ပြီးဆုံးခဲ့သည်။ နေချစ်သည် သူမ၏ အချိန်တိုင်းဇယားကို ဖော်ပြသော စွမ်းဆောင်ရည်အစီရင်ခံစာကို ရေးသားခဲ့ပြီး Merge Sort ၏ ပိုင်းခြားအုပ်ချုပ်ခြင်းနည်းလမ်းသည် အချက်အလက်ကြီးထွားလာသည်နှင့်အမျှ ပိုမိုကောင်းစွာ တိုးချဲ့နိုင်ကြောင်း၊ Bubble Sort ၏ ထပ်ခါထပ်ခါ အပြည့်အဝဖြတ်သန်းမှုများမှာမူ ပိုမိုကုန်ကျစရိတ်များလာကြောင်း ရှင်းပြခဲ့သည်။ သူမက ထက်အောင်အား အမှန်တကယ်ဂဏန်းများပါသော အစီရင်ခံစာကို ပြသောအခါ သူသည် သူမ၏ အထောက်အထားက ငြင်းခုံမှုကို လုံးဝ ဖြေရှင်းပေးခဲ့ကြောင်း ဝန်ခံခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "What was Nay Chi trying to settle with her investigation?",
            questionMy:
                "နေချစ်သည် သူမ၏ စုံစမ်းစစ်ဆေးမှုဖြင့် အဘယ်အရာကို ဖြေရှင်းရန် ကြိုးစားခဲ့သနည်း။",
            optionsEn: [
              "An argument about which sorting algorithm was better",
              "A disagreement about which colour to use in the code",
              "A debate about which programming language is best",
              "A question about who could type the fastest",
            ],
            optionsMy: [
              "မည်သည့်ဆော့တင်ခ်ျအယ်လဂိုရီသမ်ကပိုကောင်းသည်ဆိုသော ငြင်းခုံမှု",
              "ကုဒ်တွင် မည်သည့်အရောင်ကို အသုံးပြုမည်ဆိုသော သဘောကွဲလွဲမှု",
              "မည်သည့်ပရိုဂရမ်ရေးသားမှုဘာသာစကားက အကောင်းဆုံးဆိုသော အငြင်းအခုံ",
              "မည်သူ အမြန်ဆုံးရိုက်နိုင်သည်ဆိုသော မေးခွန်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn: "How did Nay Chi make the comparison fair?",
            questionMy:
                "နေချစ်သည် နှိုင်းယှဉ်မှုကို မည်သို့ တရားမျှတအောင် ပြုလုပ်ခဲ့သနည်း။",
            optionsEn: [
              "She ran both algorithms on the exact same datasets",
              "She only tested Merge Sort",
              "She used different datasets for each algorithm",
              "She asked her classmates to guess the answer",
            ],
            optionsMy: [
              "သူမသည် အယ်လဂိုရီသမ်နှစ်ခုစလုံးကို အတိအကျတူညီသောအချက်အလက်အစုများတွင် Run ခဲ့ကြောင့်",
              "သူမသည် Merge Sort ကိုသာ စမ်းသပ်ခဲ့ကြောင့်",
              "သူမသည် အယ်လဂိုရီသမ်တစ်ခုစီအတွက် မတူညီသောအချက်အလက်အစုများကို အသုံးပြုခဲ့ကြောင့်",
              "သူမသည် အတန်းဖော်များအား အဖြေကို ခန့်မှန်းခိုင်းခဲ့ကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What happened at the largest dataset size (10,000 numbers)?",
            questionMy:
                "အကြီးဆုံးအချက်အလက်အစုအရွယ်အစား (ဂဏန်း 10,000) တွင် အဘယ်အရာ ဖြစ်ပျက်ခဲ့သနည်း။",
            optionsEn: [
              "Bubble Sort took several seconds while Merge Sort finished almost instantly",
              "Both algorithms finished at exactly the same time",
              "Merge Sort crashed and could not finish",
              "Neither algorithm could handle that many numbers",
            ],
            optionsMy: [
              "Bubble Sort သည် စက္ကန့်အနည်းငယ်ကြာခဲ့ပြီး Merge Sort မှာမူ ချက်ချင်းနီးပါး ပြီးဆုံးခဲ့ကြောင့်",
              "အယ်လဂိုရီသမ်နှစ်ခုစလုံး အတိအကျတူညီသောအချိန်တွင် ပြီးဆုံးခဲ့ကြောင့်",
              "Merge Sort သည် ရပ်တန့်သွားပြီး ပြီးဆုံးနိုင်ခဲ့ခြင်းမရှိကြောင့်",
              "အယ်လဂိုရီသမ် နှစ်ခုစလုံးက ထိုမျှများသောဂဏန်းများကို မကိုင်တွယ်နိုင်ခဲ့ကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "What convinced Htet Aung that the argument was settled?",
            questionMy:
                "ငြင်းခုံမှုကို ဖြေရှင်းပြီးပြီဟု ထက်အောင်အား အဘယ်အရာက ယုံကြည်စေခဲ့သနည်း။",
            optionsEn: [
              "The performance report with actual timing numbers instead of opinions",
              "A coin flip between the two of them",
              "A vote among their classmates",
              "Nay Chi simply telling him she was right",
            ],
            optionsMy: [
              "ထင်မြင်ချက်များအစား အမှန်တကယ်အချိန်ဂဏန်းများပါသော စွမ်းဆောင်ရည်အစီရင်ခံစာ",
              "သူတို့နှစ်ဦးကြား အန်စာတုံးလှန်ခြင်း",
              "အတန်းဖော်များကြား မဲခွဲဆုံးဖြတ်ခြင်း",
              "နေချစ်က သူမမှန်ကြောင်း သူ့ကို ရိုးရိုးပြောပြခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s3-computing-w4-d5",
      dayNumber: 5,
      titleEn: "Algorithm Performance Analyzer Recap Quiz",
      titleMy:
          "အယ်လဂိုရီသမ် စွမ်းဆောင်ရည် ခွဲခြမ်းစိတ်ဖြာသူ ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Python's time module is used to...",
          questionMy: "Python ၏ time module ကို အသုံးပြုသည်မှာ...",
          optionsEn: [
            "Measure how long code takes to run",
            "Automatically fix bugs",
            "Translate code into another language",
            "Change the code's colour scheme",
          ],
          optionsMy: [
            "ကုဒ် Run ရန် မည်မျှကြာသည်ကို တိုင်းတာရန်",
            "ချွတ်ယွင်းချက်များကို အလိုအလျောက် ပြင်ရန်",
            "ကုဒ်ကို အခြားဘာသာစကားသို့ ဘာသာပြန်ရန်",
            "ကုဒ်၏ အရောင်စနစ်ကို ပြောင်းလဲရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Large datasets are used to compare algorithms because...",
          questionMy:
              "အယ်လဂိုရီသမ်များကို နှိုင်းယှဉ်ရန် အချက်အလက်အစုကြီးများကို အသုံးပြုသည်မှာ...",
          optionsEn: [
            "Efficiency differences become clear as data grows",
            "Small datasets cannot be processed at all",
            "Large datasets are always sorted already",
            "Python requires at least 10,000 items",
          ],
          optionsMy: [
            "အချက်အလက်ကြီးထွားလာသည်နှင့်အမျှ စွမ်းဆောင်ရည်ကွာခြားချက်များ ရှင်းလင်းလာသောကြောင့်",
            "အချက်အလက်အစုငယ်များကို ဆောင်ရွက်၍ လုံးဝမရနိုင်သောကြောင့်",
            "အချက်အလက်အစုကြီးများသည် အမြဲ စီစဉ်ပြီးသားဖြစ်နေသောကြောင့်",
            "Python သည် အနည်းဆုံး 10,000 ကို လိုအပ်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A fair comparison between two algorithms requires...",
          questionMy:
              "အယ်လဂိုရီသမ်နှစ်ခုကြား တရားမျှတသော နှိုင်းယှဉ်မှုတစ်ခုအတွက် လိုအပ်သည်မှာ...",
          optionsEn: [
            "Testing both on the exact same dataset",
            "Testing each on a different dataset",
            "Only testing the one you prefer",
            "Guessing which is faster",
          ],
          optionsMy: [
            "နှစ်ခုစလုံးကို အတိအကျတူညီသောအချက်အလက်အစုတွင် စမ်းသပ်ခြင်း",
            "တစ်ခုစီကို မတူညီသောအချက်အလက်အစုတွင် စမ်းသပ်ခြင်း",
            "သင်ကြိုက်နှစ်သက်သည်ကိုသာ စမ်းသပ်ခြင်း",
            "မည်သည်ကပိုမြန်သည်ကို ခန့်မှန်းခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A good performance report should include...",
          questionMy:
              "ကောင်းမွန်သော စွမ်းဆောင်ရည်အစီရင်ခံစာတွင် ပါဝင်သင့်သည်မှာ...",
          optionsEn: [
            "Timing results, dataset sizes, and a clear conclusion",
            "Only personal opinions",
            "A list of untested algorithms",
            "The editor's colour theme",
          ],
          optionsMy: [
            "အချိန်ရလဒ်များ၊ အချက်အလက်အစုအရွယ်အစားများနှင့် ရှင်းလင်းသောကောက်ချက်",
            "ကိုယ်ပိုင်ထင်မြင်ချက်များသာ",
            "မစမ်းသပ်ရသေးသော အယ်လဂိုရီသမ်များစာရင်း",
            "တည်းဖြတ်စက်၏ အရောင်အသွင်အပြင်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's investigation, what settled her argument with Htet Aung?",
          questionMy:
              "နေချစ်၏ စုံစမ်းစစ်ဆေးမှုတွင် ထက်အောင်နှင့်ဖြစ်သော သူမ၏ ငြင်းခုံမှုကို အဘယ်အရာက ဖြေရှင်းပေးခဲ့သနည်း။",
          optionsEn: [
            "Her timed evidence comparing Bubble Sort and Merge Sort at scale",
            "A coin flip",
            "A classmate vote",
            "Simply asserting she was correct",
          ],
          optionsMy: [
            "အတိုင်းအတာကြီးမားစွာဖြင့် Bubble Sort နှင့် Merge Sort ကို နှိုင်းယှဉ်ထားသော သူမ၏ အချိန်တိုင်းအထောက်အထား",
            "အန်စာတုံးလှန်ခြင်း",
            "အတန်းဖော်များ၏ မဲခွဲဆုံးဖြတ်ခြင်း",
            "သူမမှန်ကြောင်း ရိုးရိုးဆိုခြင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary3ComputingTerm1 = CourseTermDef(
  id: "course-secondary3-computing-term1",
  termNumber: 1,
  titleEn: "Advanced Algorithms and Python",
  titleMy: "အဆင့်မြင့် အယ်လဂိုရီသမ်များနှင့် Python",
  certificateTitleEn: "Advanced Algorithms and Python",
  certificateTitleMy: "အဆင့်မြင့် အယ်လဂိုရီသမ်များနှင့် Python",
  weeks: [
    _secondary3ComputingWeek1,
    _secondary3ComputingWeek2,
    _secondary3ComputingWeek3,
    _secondary3ComputingWeek4,
  ],
);
