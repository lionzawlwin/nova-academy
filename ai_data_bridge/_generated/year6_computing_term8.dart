const CourseWeekDef _year6ComputingWeek29 = CourseWeekDef(
  id: "course-year6-computing-w29",
  weekNumber: 29,
  titleEn: "Binary: The Language Computers Understand",
  titleMy: "Binary - ကွန်ပျူတာများ နားလည်သော ဘာသာစကား",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w29-d1",
      dayNumber: 1,
      titleEn: "What Is a Bit?",
      titleMy: "Bit ဆိုသည်မှာ အဘယ်နည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a 'bit'?",
          questionMy: "'Bit' ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The smallest piece of information a computer stores, either a 0 or a 1",
            "A type of computer virus",
            "A unit of computer speed measured in seconds",
            "The name of a keyboard key",
          ],
          optionsMy: [
            "ကွန်ပျူတာ သိမ်းဆည်းသော အသေးငယ်ဆုံးအချက်အလက်၊ 0 သို့မဟုတ် 1",
            "ကွန်ပျူတာ ဗိုင်းရပ်စ်အမျိုးအစားတစ်ခု",
            "စက္ကန့်ဖြင့် တိုင်းတာသော ကွန်ပျူတာအမြန်နှုန်းယူနစ်",
            "ကီးဘုတ်ခလုတ်တစ်ခု၏ အမည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of a light switch that is only ever fully off or fully on -- a bit works the same way, with no state in between.",
            "'Bit' is short for 'binary digit' -- and binary only ever has two possible digits.",
          ],
          hintsMy: [
            "အမြဲတမ်း လုံးဝပိတ်ထားသည် သို့မဟုတ် လုံးဝဖွင့်ထားသည့် မီးခလုတ်တစ်ခုကို တွေးကြည့်ပါ — bit သည် ထိုနည်းတူ အလယ်အလတ်အခြေအနေမရှိပါ။",
            "'Bit' သည် 'binary digit' ၏ အတိုကောက်ဖြစ်ပြီး binary တွင် ဖြစ်နိုင်သောကိန်းဂဏန်း နှစ်လုံးသာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why do computers store information using only 0s and 1s?",
          questionMy:
              "ကွန်ပျူတာများသည် အချက်အလက်များကို 0 နှင့် 1 ဖြင့်သာ အဘယ်ကြောင့် သိမ်းဆည်းသနည်း။",
          optionsEn: [
            "Because computer circuits are built from tiny switches that are only ever 'off' or 'on', nothing in between",
            "Because 0 and 1 are the only numbers computers are allowed to display on a screen",
            "Because typing 0 and 1 is faster than typing letters",
            "Because binary was the first counting system humans ever invented",
          ],
          optionsMy: [
            "ကွန်ပျူတာ ဆားကစ်များသည် 'ပိတ်' သို့မဟုတ် 'ဖွင့်' နှစ်မျိုးသာရှိသော အလွန်သေးငယ်သည့် switch များဖြင့် တည်ဆောက်ထားသောကြောင့်",
            "0 နှင့် 1 သည် ကွန်ပျူတာများ မျက်နှာပြင်ပေါ်တွင် ပြသခွင့်ရှိသော ကိန်းဂဏန်းများသာဖြစ်သောကြောင့်",
            "0 နှင့် 1 ရိုက်ခြင်းသည် စာလုံးများ ရိုက်ခြင်းထက် ပိုမြန်သောကြောင့်",
            "Binary သည် လူသားများ တီထွင်ခဲ့သော ပထမဆုံး ရေတွက်စနစ်ဖြစ်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "It's not a choice about speed or screens -- it comes from the physical hardware itself.",
            "A switch can only be off or on; there's no natural way for a simple electronic switch to represent ten different digits.",
          ],
          hintsMy: [
            "၎င်းသည် အမြန်နှုန်း သို့မဟုတ် မျက်နှာပြင်နှင့် ပတ်သက်သော ရွေးချယ်မှုတစ်ခု မဟုတ်ပါ — ၎င်းသည် Hardware ကိုယ်တိုင်ထံမှ ဆင်းသက်လာခြင်းဖြစ်သည်။",
            "Switch တစ်ခုသည် ပိတ် သို့မဟုတ် ဖွင့်သာ ဖြစ်နိုင်ပြီး၊ ရိုးရှင်းသော electronic switch တစ်ခုအတွက် ကွဲပြားသောကိန်းဂဏန်း ဆယ်လုံးကို ကိုယ်စားပြုရန် သဘာဝနည်းလမ်း မရှိပါ။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is a 'byte'?",
          questionMy: "'Byte' ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "A group of 8 bits, enough to store one basic piece of information such as a letter",
            "A synonym for the word 'binary'",
            "A unit that measures internet speed only",
            "A type of computer virus",
          ],
          optionsMy: [
            "Bit ၈ လုံး အုပ်စု၊ စာလုံးတစ်လုံးကဲ့သို့ အခြေခံအချက်အလက်တစ်ခု သိမ်းဆည်းရန် လုံလောက်သည်",
            "'Binary' ၏ အဓိပ္ပာယ်တူစကားလုံး",
            "အင်တာနက်အမြန်နှုန်းကိုသာ တိုင်းတာသော ယူနစ်",
            "ကွန်ပျူတာဗိုင်းရပ်စ်အမျိုးအစားတစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Bits are grouped together to become useful -- a single bit alone can't store much.",
            "Eight bits, bundled together, is the classic building block computers use to store one character.",
          ],
          hintsMy: [
            "Bit များကို အသုံးဝင်စေရန် အုပ်စုဖွဲ့ထားသည် — bit တစ်ခုတည်းက များစွာ မသိမ်းဆည်းနိုင်ပါ။",
            "Bit ရှစ်လုံးကို စုစည်းလိုက်ခြင်းသည် ကွန်ပျူတာများ စာလုံးတစ်လုံး သိမ်းဆည်းရန် အသုံးပြုသော ဂန္တဝင် အစိတ်အပိုင်းဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is meant by saying 'everything on a computer is really just numbers'?",
          questionMy:
              "'ကွန်ပျူတာပေါ်ရှိ အရာအားလုံးသည် ကိန်းဂဏန်းများသာ' ဟု ဆိုရာတွင် အဘယ်ကို ဆိုလိုသနည်း။",
          optionsEn: [
            "Text, images, and sound are all ultimately stored and processed as binary numbers inside a computer",
            "Only calculator apps on a computer use numbers",
            "Computers convert every file into decimal numbers before saving it, then back into letters",
            "Numbers are the only files a computer is able to open",
          ],
          optionsMy: [
            "Text, image နှင့် sound အားလုံးသည် ကွန်ပျူတာအတွင်း Binary ကိန်းဂဏန်းများအဖြစ် နောက်ဆုံးတွင် သိမ်းဆည်းပြီး လုပ်ဆောင်ခံရသည်",
            "ကွန်ပျူတာပေါ်ရှိ Calculator App များကသာ ကိန်းဂဏန်းအသုံးပြုသည်",
            "ကွန်ပျူတာသည် File တိုင်းကို Save မလုပ်မီ Decimal ကိန်းဂဏန်းအဖြစ် ပြောင်းပြီး စာလုံးများအဖြစ် ပြန်ပြောင်းသည်",
            "ကိန်းဂဏန်းများသည် ကွန်ပျူတာဖွင့်နိုင်သော File တစ်ခုတည်းသောအမျိုးအစား ဖြစ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "This week you'll see the same idea apply to pictures and sound, not just text -- keep that in mind as a preview.",
            "Underneath a photo, a song, and a document, a computer only ever really stores patterns of 0s and 1s.",
          ],
          hintsMy: [
            "ဒီအပတ်တွင် တူညီသောအယူအဆကို စာသားတစ်ခုတည်းမက ပုံနှင့် အသံအတွက်ပါ တွေ့ရမည်ဖြစ်၍ ၎င်းကို preview တစ်ခုအဖြစ် မှတ်ထားပါ။",
            "ဓာတ်ပုံ၊ သီချင်းနှင့် စာတမ်း၏ အောက်ခံတွင် ကွန်ပျူတာသည် 0 နှင့် 1 ပုံစံများကိုသာ အမှန်တကယ် သိမ်းဆည်းထားခြင်းဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w29-d2",
      dayNumber: 2,
      titleEn: "Match the Binary Vocabulary",
      titleMy: "Binary ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w29-dm-1",
          termEn: "Bit",
          termMy: "Bit (ဒေတာအသေးငယ်ဆုံးယူနစ်)",
          matchEn:
              "The smallest piece of information a computer stores, either 0 or 1",
          matchMy: "ကွန်ပျူတာ သိမ်းဆည်းသော အသေးငယ်ဆုံးအချက်အလက်၊ 0 သို့မဟုတ် 1",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w29-dm-2",
          termEn: "Byte",
          termMy: "Byte (Bit ရှစ်လုံးအုပ်စု)",
          matchEn:
              "A group of 8 bits, enough to store one basic piece of information",
          matchMy:
              "Bit ၈ လုံးအုပ်စု၊ အခြေခံအချက်အလက်တစ်ခု သိမ်းဆည်းရန် လုံလောက်သည်",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w29-dm-3",
          termEn: "Binary",
          termMy: "Binary (ဂဏန်းနှစ်လုံးတွဲစနစ်)",
          matchEn: "A number system using only two digits, 0 and 1",
          matchMy: "ကိန်းဂဏန်း 0 နှင့် 1 နှစ်လုံးသာ အသုံးပြုသော ဂဏန်းစနစ်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w29-dm-4",
          termEn: "Switch (on/off)",
          termMy: "Switch (ဖွင့်/ပိတ်)",
          matchEn:
              "The tiny electronic component inside a computer that is only ever fully off or fully on",
          matchMy:
              "ကွန်ပျူတာအတွင်းရှိ လုံးဝပိတ် သို့မဟုတ် လုံးဝဖွင့်သာ ဖြစ်တတ်သော အလွန်သေးငယ်သည့် electronic အစိတ်အပိုင်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w29-dm-5",
          termEn: "Denary",
          termMy: "Denary (ဆယ်လုံးတွဲဂဏန်းစနစ်)",
          matchEn:
              "The everyday counting system most people use, with ten digits from 0 to 9",
          matchMy:
              "လူအများစု အသုံးပြုသော နေ့စဉ်ရေတွက်စနစ်၊ 0 မှ 9 အထိ ကိန်းဂဏန်း ဆယ်လုံးဖြင့်",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w29-dm-6",
          termEn: "Digital",
          termMy: "Digital (ဂဏန်းအသွင်)",
          matchEn:
              "Stored or processed as numbers, rather than as a continuous physical signal",
          matchMy:
              "အဆက်မပြတ် ရုပ်ပိုင်းဆိုင်ရာ Signal အဖြစ်မဟုတ်ဘဲ ကိန်းဂဏန်းများအဖြစ် သိမ်းဆည်း သို့မဟုတ် လုပ်ဆောင်ခံရသော",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w29-d3",
      dayNumber: 3,
      titleEn: "Sort: True or Not True About Binary?",
      titleMy: "စီစစ်ကြမည် - Binary အကြောင်း မှန်သလား၊ မမှန်ဘူးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["True About Binary", "Not True About Binary"],
        bucketsMy: ["Binary အကြောင်း မှန်ကန်သည်", "Binary အကြောင်း မမှန်ကန်ပါ"],
        items: [
          SortingItem(
            id: "y6comp-w29-sort-1",
            labelEn: "Binary only ever uses the digits 0 and 1.",
            labelMy: "Binary သည် ကိန်းဂဏန်း 0 နှင့် 1 ကိုသာ အမြဲအသုံးပြုသည်။",
            correctBucketEn: "True About Binary",
            correctBucketMy: "Binary အကြောင်း မှန်ကန်သည်",
          ),
          SortingItem(
            id: "y6comp-w29-sort-2",
            labelEn:
                "A computer's tiny switches are only ever fully off or fully on.",
            labelMy:
                "ကွန်ပျူတာ၏ အလွန်သေးငယ်သော switch များသည် လုံးဝပိတ် သို့မဟုတ် လုံးဝဖွင့်သာ ဖြစ်တတ်သည်။",
            correctBucketEn: "True About Binary",
            correctBucketMy: "Binary အကြောင်း မှန်ကန်သည်",
          ),
          SortingItem(
            id: "y6comp-w29-sort-3",
            labelEn: "A byte is a group of 8 bits.",
            labelMy: "Byte တစ်ခုသည် Bit ၈ လုံးအုပ်စုတစ်ခုဖြစ်သည်။",
            correctBucketEn: "True About Binary",
            correctBucketMy: "Binary အကြောင်း မှန်ကန်သည်",
          ),
          SortingItem(
            id: "y6comp-w29-sort-4",
            labelEn:
                "Binary is the everyday counting system most people learned first.",
            labelMy:
                "Binary သည် လူအများစု ပထမဆုံးသင်ယူခဲ့ကြသော နေ့စဉ်ရေတွက်စနစ် ဖြစ်သည်။",
            correctBucketEn: "Not True About Binary",
            correctBucketMy: "Binary အကြောင်း မမှန်ကန်ပါ",
          ),
          SortingItem(
            id: "y6comp-w29-sort-5",
            labelEn:
                "Text, images, and sound can all be stored as binary numbers.",
            labelMy:
                "Text၊ image နှင့် sound အားလုံးကို Binary ကိန်းဂဏန်းများအဖြစ် သိမ်းဆည်းနိုင်သည်။",
            correctBucketEn: "True About Binary",
            correctBucketMy: "Binary အကြောင်း မှန်ကန်သည်",
          ),
          SortingItem(
            id: "y6comp-w29-sort-6",
            labelEn:
                "Binary numbers can only represent whole numbers, never pictures or sound.",
            labelMy:
                "Binary ကိန်းဂဏန်းများသည် ကိန်းပြည့်များကိုသာ ကိုယ်စားပြုနိုင်ပြီး ပုံ သို့မဟုတ် အသံကို ဘယ်တော့မှ ကိုယ်စားမပြုနိုင်ပါ။",
            correctBucketEn: "Not True About Binary",
            correctBucketMy: "Binary အကြောင်း မမှန်ကန်ပါ",
          ),
          SortingItem(
            id: "y6comp-w29-sort-7",
            labelEn: "A byte is smaller than a single bit.",
            labelMy: "Byte တစ်ခုသည် Bit တစ်ခုတည်းထက် သေးငယ်သည်။",
            correctBucketEn: "Not True About Binary",
            correctBucketMy: "Binary အကြောင်း မမှန်ကန်ပါ",
          ),
          SortingItem(
            id: "y6comp-w29-sort-8",
            labelEn: "A bit can be any digit from 0 to 9.",
            labelMy:
                "Bit တစ်ခုသည် 0 မှ 9 အထိ ကိန်းဂဏန်း မည်သည့်လုံးမဆို ဖြစ်နိုင်သည်။",
            correctBucketEn: "Not True About Binary",
            correctBucketMy: "Binary အကြောင်း မမှန်ကန်ပါ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w29-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi Gets a Sneak Peek of Binary",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည် Binary ကို အစပျိုးကြည့်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi Gets a Sneak Peek of Binary",
        titleMy: "နှင်းချည် Binary ကို အစပျိုးကြည့်ခြင်း",
        passageEn:
            "Ms. Thanda began Term 8 by holding up a strip of four small light bulbs wired to a battery pack. 'Before we talk about pictures or sound,' she said, 'we need to meet the one and only language every computer actually speaks underneath everything else: binary.' She flicked a switch, and exactly one bulb lit up. 'A computer chip is built from millions of tiny switches like this one,' she explained. 'Each switch is either off or on -- nothing in between. We call each switch's state a bit, short for 'binary digit'. Group eight of them together, and you get a byte.'\n\nNay Chi raised her hand. 'So how do a few off-and-on switches turn into something we'd actually recognise, like a letter or a photo?' Ms. Thanda smiled and flicked the switches into a new pattern -- three bulbs lit, one dark. 'That's exactly the sneak peek for today,' she said. 'Different patterns of off and on can stand for different things, the same way different combinations of red, green, and blue paint make different colours. You won't need to master converting between denary and binary until next year at Secondary school -- for now, just notice that a pattern of switches is really a kind of code.'\n\nZin Ko asked whether that meant literally everything on a computer -- games, songs, even Nay Chi's duck migration research from last term -- was secretly just patterns of 0s and 1s. 'Exactly that,' said Ms. Thanda. 'This term, you'll see how a photograph becomes a grid of numbers, and how a recorded sound becomes a stream of numbers too. Binary is the language everything else gets translated into.' Nay Chi looked at the four bulbs again, one lit, three dark, and found herself wondering what her own class photo might look like if she could somehow see its numbers instead of its picture.",
        passageMy:
            "ဆရာမသန္တာသည် Term 8 ကို Battery Pack တစ်ခုနှင့် ချိတ်ဆက်ထားသော မီးလုံးအသေးလေးလေးကို ကိုင်ဆောင်ကာ စတင်ခဲ့သည်။ 'ပုံ သို့မဟုတ် အသံအကြောင်း မပြောခင်' ဟု သူမက ပြောခဲ့သည်၊ 'ကွန်ပျူတာတိုင်း၏ အခြားအရာအားလုံးအောက်ရှိ တကယ်ပြောနေသော တစ်ခုတည်းသော ဘာသာစကားဖြစ်သည့် binary ကို ဦးစွာ တွေ့ဆုံရန် လိုအပ်ပါတယ်' ။ Switch တစ်ခုကို ဖွင့်လိုက်ပြီး မီးလုံးတစ်လုံးတည်း တောက်ပလာခဲ့သည်။ 'ကွန်ပျူတာ Chip တစ်ခုသည် ဤကဲ့သို့ အလွန်သေးငယ်သော Switch သန်းချီ၍ တည်ဆောက်ထားခြင်းဖြစ်သည်' ဟု သူမက ရှင်းပြခဲ့သည်။ 'Switch တစ်ခုစီသည် ပိတ် သို့မဟုတ် ဖွင့် နှစ်မျိုးအနက် တစ်မျိုးသာ ဖြစ်ပြီး — အလယ်အလတ် မရှိပါ။ Switch တစ်ခု၏ အခြေအနေကို bit ဟု ခေါ်ပြီး 'binary digit' ၏ အတိုကောက် ဖြစ်သည်။ ၎င်းတို့ ရှစ်လုံးကို အုပ်စုဖွဲ့လိုက်ပါက byte တစ်ခု ရရှိသည်' ။\n\nနှင်းချည်သည် လက်မြှောက်ခဲ့သည်။ 'ဒါဆို ဖွင့်/ပိတ် switch အနည်းငယ်ဟာ ကျွန်မတို့ တကယ်မှတ်မိနိုင်တဲ့ စာလုံးတစ်လုံး သို့မဟုတ် ဓာတ်ပုံတစ်ပုံလို အရာအဖြစ် ဘယ်လိုပြောင်းလဲသွားနိုင်တာလဲ' ။ ဆရာမသန္တာ ပြုံးလိုက်ပြီး switch များကို ပုံစံအသစ်တစ်ခုအဖြစ် ပြန်ဖွင့်လိုက်သည် — မီးလုံးသုံးလုံး တောက်ပပြီး တစ်လုံးမှောင်နေသည်။ 'ဒါက ဒီနေ့အတွက် အစပျိုးမှုအတိအကျပါပဲ' ဟု သူမက ပြောခဲ့သည်။ 'ပိတ်/ဖွင့် ပုံစံမတူညီသည်များသည် အနီ၊ အစိမ်းနှင့် အပြာ ဆေးရောင် ပေါင်းစပ်မှုများ မတူညီသောအရောင်များ ဖန်တီးသည့်ပုံစံအတိုင်းပင် မတူညီသောအရာများကို ကိုယ်စားပြုနိုင်ပါတယ်။ Denary နှင့် Binary အကြား ပြောင်းလဲနည်းကို နောက်နှစ် Secondary ကျောင်းအထိ ကျွမ်းကျင်ဖို့ မလိုအပ်သေးပါဘူး — ယခုအတွက်တော့ Switch ပုံစံတစ်ခုသည် Code အမျိုးအစားတစ်ခုအမှန် ဖြစ်နေသည်ကိုသာ သတိပြုလိုက်ပါ' ။\n\nဇင်ကိုက ဂိမ်း၊ သီချင်း၊ ပြီးတော့ နှင်းချည်၏ ယခင်သင်တန်းက ငှက်တောင်းရွှေ့ပြောင်းမှု သုတေသနပင် ကွန်ပျူတာပေါ်ရှိ အရာအားလုံးသည် ဝှက်ထားသော 0 နှင့် 1 ပုံစံများ တကယ့်ကိုဖြစ်နေသလားဟု မေးခဲ့သည်။ 'အတိအကျပါပဲ' ဟု ဆရာမသန္တာက ပြောခဲ့သည်။ 'ဒီသင်တန်းမှာ ဓာတ်ပုံတစ်ပုံသည် ကိန်းဂဏန်းများ ဇယားတစ်ခုအဖြစ် ဘယ်လိုဖြစ်လာသလဲ၊ အသံသွင်းထားသော အသံတစ်ခုသည် ကိန်းဂဏန်းများ စီးဆင်းမှုတစ်ခုအဖြစ် ဘယ်လိုဖြစ်လာသလဲဆိုတာကို တွေ့ရမှာပါ။ Binary သည် အခြားအရာအားလုံး ပြန်ဘာသာပြန်ခံရသည့် ဘာသာစကားဖြစ်ပါတယ်' ။ နှင်းချည်သည် မီးလုံးလေးလုံးကို တစ်လုံးတောက်၊ သုံးလုံးမှောင်နေသည်ကို ထပ်ကြည့်ကာ သူမ၏ အတန်းဓာတ်ပုံသည် ၎င်း၏ ပုံအစား ကိန်းဂဏန်းများကို တစ်နည်းနည်းဖြင့် မြင်နိုင်ပါက မည်သို့ရှိမည်နည်းဟု တွေးမိနေခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what does Ms. Thanda call each switch's off-or-on state?",
            questionMy:
                "စာပိုဒ် ၁ အရ Switch တစ်ခု၏ ပိတ်/ဖွင့်အခြေအနေကို ဆရာမသန္တာက မည်သို့ခေါ်ခဲ့သနည်း။",
            optionsEn: ["A bit", "A byte", "A pixel", "A sample"],
            optionsMy: [
              "Bit တစ်ခု (A Bit)",
              "Byte တစ်ခု (A Byte)",
              "Pixel တစ်ခု (A Pixel)",
              "Sample တစ်ခု (A Sample)",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what does Ms. Thanda say students will NOT need to master yet?",
            questionMy:
                "စာပိုဒ် ၂ အရ ကျောင်းသားများ မကျွမ်းကျင်သေးရသေးသည့်အရာကို ဆရာမသန္တာက မည်သို့ ဖော်ပြခဲ့သနည်း။",
            optionsEn: [
              "Converting between denary and binary, which comes next year at Secondary school",
              "Turning on a light switch",
              "Naming the colours red, green, and blue",
              "Recognising a photograph",
            ],
            optionsMy: [
              "Denary နှင့် Binary အကြား ပြောင်းလဲနည်း၊ နောက်နှစ် Secondary ကျောင်းတွင် လာမည်ဖြစ်ကြောင်း",
              "မီးခလုတ်တစ်ခု ဖွင့်ခြင်း",
              "အနီ၊ အစိမ်းနှင့် အပြာအရောင်များ အမည်တပ်ခြင်း",
              "ဓာတ်ပုံတစ်ပုံကို မှတ်မိခြင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Zin Ko ask Ms. Thanda?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဇင်ကိုက ဆရာမသန္တာအား မည်သည့်အရာကို မေးခဲ့သနည်း။",
            optionsEn: [
              "Whether games, songs, and Nay Chi's own research were secretly just patterns of 0s and 1s",
              "Whether the class could skip Term 8 entirely",
              "Whether binary was invented in Myanmar",
              "Whether light bulbs are dangerous to touch",
            ],
            optionsMy: [
              "ဂိမ်း၊ သီချင်းနှင့် နှင်းချည်၏ ကိုယ်ပိုင်သုတေသနတို့သည် ဝှက်ထားသော 0 နှင့် 1 ပုံစံများ တကယ့်ကို ဖြစ်နေသလားဟု",
              "အတန်းက Term 8 ကို လုံးဝကျော်နိုင်မလားဟု",
              "Binary ကို မြန်မာနိုင်ငံတွင် တီထွင်ခဲ့သလားဟု",
              "မီးလုံးများကို ကိုင်တွယ်ရန် အန္တရာယ်ရှိသလားဟု",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what will the class see this term, according to Ms. Thanda?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဆရာမသန္တာ၏အဆိုအရ ဒီသင်တန်းတွင် အတန်းသားများ မည်သည့်အရာကို တွေ့ရမည်နည်း။",
            optionsEn: [
              "How a photograph becomes a grid of numbers, and how a recorded sound becomes a stream of numbers",
              "How to build a real computer chip from scratch",
              "How to convert denary to binary by hand",
              "How to record a duck's migration route on a map",
            ],
            optionsMy: [
              "ဓာတ်ပုံတစ်ပုံသည် ကိန်းဂဏန်းများဇယားတစ်ခုအဖြစ်၊ အသံသွင်းထားသောအသံတစ်ခုသည် ကိန်းဂဏန်းများ စီးဆင်းမှုတစ်ခုအဖြစ် ဘယ်လိုဖြစ်လာသလဲဆိုတာ",
              "အစအဆုံး ကွန်ပျူတာ Chip အစစ်တစ်ခု ဘယ်လိုတည်ဆောက်ရမလဲဆိုတာ",
              "Denary ကို Binary သို့ လက်ဖြင့် ဘယ်လိုပြောင်းရမလဲဆိုတာ",
              "ငှက်တောင်း ရွှေ့ပြောင်းလမ်းကြောင်းကို မြေပုံပေါ်တွင် ဘယ်လိုမှတ်တမ်းတင်ရမလဲဆိုတာ",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w29-d5",
      dayNumber: 5,
      titleEn: "Binary Basics Round-Up",
      titleMy: "Binary အခြေခံ အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A bit is...",
          questionMy: "Bit တစ်ခုသည် ...",
          optionsEn: [
            "The smallest piece of information a computer stores, either 0 or 1",
            "A group of eight bytes",
            "A unit of internet speed only",
            "A type of computer virus",
          ],
          optionsMy: [
            "ကွန်ပျူတာ သိမ်းဆည်းသော အသေးငယ်ဆုံးအချက်အလက်၊ 0 သို့မဟုတ် 1",
            "Byte ရှစ်လုံးအုပ်စု",
            "အင်တာနက်အမြန်နှုန်းကိုသာ တိုင်းတာသော ယူနစ်",
            "ကွန်ပျူတာဗိုင်းရပ်စ်အမျိုးအစားတစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A byte is made up of...",
          questionMy: "Byte တစ်ခုသည် ... ဖြင့် ဖွဲ့စည်းထားသည်။",
          optionsEn: ["8 bits", "2 bits", "100 bits", "1 pixel"],
          optionsMy: ["Bit ၈ လုံး", "Bit ၂ လုံး", "Bit ၁၀၀ လုံး", "Pixel ၁ ခု"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Computers use binary mainly because...",
          questionMy:
              "ကွန်ပျူတာများသည် Binary ကို အဓိကအားဖြင့် ... ကြောင့် အသုံးပြုသည်။",
          optionsEn: [
            "Their circuits are built from tiny switches that are only ever off or on",
            "Binary is easier for humans to read than letters",
            "It was required by an international law",
            "It uses fewer keyboard keys",
          ],
          optionsMy: [
            "၎င်းတို့၏ ဆားကစ်များသည် ပိတ် သို့မဟုတ် ဖွင့်သာ ဖြစ်တတ်သော အလွန်သေးငယ်သည့် Switch များဖြင့် တည်ဆောက်ထားသောကြောင့်",
            "Binary သည် လူသားများအတွက် စာလုံးများထက် ဖတ်ရလွယ်ကူသောကြောင့်",
            "အပြည်ပြည်ဆိုင်ရာဥပဒေတစ်ရပ်က တောင်းဆိုထားသောကြောင့်",
            "ကီးဘုတ်ခလုတ် ပိုနည်းစွာ အသုံးပြုရသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "According to Ms. Thanda, students will fully master converting denary to binary...",
          questionMy:
              "ဆရာမသန္တာ၏အဆိုအရ ကျောင်းသားများသည် Denary ကို Binary သို့ ပြောင်းနည်းကို အပြည့်အဝ ကျွမ်းကျင်မှုရမည်မှာ ...",
          optionsEn: [
            "Next year at Secondary school, not yet this term",
            "Tomorrow, before the end of this week",
            "Never -- it is not taught at Nova School at all",
            "Only if they buy a special calculator",
          ],
          optionsMy: [
            "နောက်နှစ် Secondary ကျောင်းတွင်၊ ဒီသင်တန်းတွင် မဟုတ်သေးပါ",
            "မနက်ဖြန်၊ ဒီအပတ်မကုန်မီ",
            "ဘယ်တော့မှမဟုတ် — Nova ကျောင်းတွင် လုံးဝ မသင်ကြားပါ",
            "အထူးတွက်ချက်စက် ဝယ်ယူမှသာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "This term, the class will learn that text, images, and sound are all...",
          questionMy:
              "ဒီသင်တန်းတွင် Text, image နှင့် sound အားလုံးသည် ... ဟု အတန်းက သင်ယူရမည်ဖြစ်သည်။",
          optionsEn: [
            "Ultimately stored inside a computer as patterns of binary numbers",
            "Impossible for a computer to store at the same time",
            "Only usable one at a time, never together",
            "Stored using entirely different, unrelated computer languages",
          ],
          optionsMy: [
            "ကွန်ပျူတာအတွင်း Binary ကိန်းဂဏန်းပုံစံများအဖြစ် နောက်ဆုံးတွင် သိမ်းဆည်းထားသည်",
            "ကွန်ပျူတာအတွက် တစ်ပြိုင်နက်တည်း သိမ်းဆည်းရန် မဖြစ်နိုင်ပါ",
            "တစ်ကြိမ်လျှင် တစ်ခုတည်းသာ အသုံးပြုနိုင်ပြီး တစ်ပြိုင်နက် မရနိုင်ပါ",
            "လုံးဝကွဲပြားသော၊ မသက်ဆိုင်သော ကွန်ပျူတာဘာသာစကားများဖြင့် သိမ်းဆည်းထားသည်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek30 = CourseWeekDef(
  id: "course-year6-computing-w30",
  weekNumber: 30,
  titleEn: "How Computers Store Pictures: Pixels and Colour",
  titleMy: "ကွန်ပျူတာများ ပုံများကို သိမ်းဆည်းပုံ - Pixel များနှင့် အရောင်",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w30-d1",
      dayNumber: 1,
      titleEn: "What Is a Pixel?",
      titleMy: "Pixel ဆိုသည်မှာ အဘယ်နည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a 'pixel'?",
          questionMy: "'Pixel' ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "One tiny coloured square, thousands of which combine to form a digital image",
            "A unit that measures how loud a sound is",
            "A type of computer keyboard key",
            "A brand of camera",
          ],
          optionsMy: [
            "အရောင်ပါသော အလွန်သေးငယ်သည့် စတုရန်းတစ်ခု၊ ၎င်းအထောင်ပေါင်းများစွာ ပေါင်းစပ်၍ digital image တစ်ပုံ ဖြစ်လာသည်",
            "အသံ မည်မျှကျယ်သည်ကို တိုင်းတာသော ယူနစ်",
            "ကွန်ပျူတာ ကီးဘုတ်ခလုတ် အမျိုးအစားတစ်ခု",
            "ကင်မရာအမှတ်တံဆိပ်တစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Zoom very far into any digital photo and you'll eventually see a grid of tiny coloured squares -- those are pixels.",
            "'Pixel' comes from 'picture element' -- the smallest single piece a digital picture is built from.",
          ],
          hintsMy: [
            "Digital ဓာတ်ပုံတစ်ပုံကို အလွန်ကျယ်ကျယ် zoom in ပြုလုပ်ကြည့်ပါက အရောင်ပါသော စတုရန်းအသေးလေးများ ဇယားတစ်ခုကို နောက်ဆုံးတွင် တွေ့ရလိမ့်မည် — ၎င်းများသည် pixel များဖြစ်သည်။",
            "'Pixel' သည် 'picture element' မှ လာခြင်းဖြစ်ပြီး digital ပုံတစ်ပုံ တည်ဆောက်ရာတွင် အသုံးပြုသော အသေးငယ်ဆုံးအစိတ်အပိုင်း ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is 'resolution'?",
          questionMy: "'Resolution' ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The number of pixels that make up an image, usually described as width x height",
            "How bright a computer screen's backlight is",
            "The file format an image is saved in, such as JPG",
            "How much an image weighs in kilograms",
          ],
          optionsMy: [
            "ပုံတစ်ပုံကို ဖွဲ့စည်းထားသော pixel အရေအတွက်၊ များသောအားဖြင့် အကျယ် x အမြင့် ဖြင့် ဖော်ပြသည်",
            "ကွန်ပျူတာမျက်နှာပြင်၏ Backlight မည်မျှတောက်ပသည်",
            "ပုံကို Save လုပ်ထားသော File Format၊ ဥပမာ JPG ကဲ့သို့",
            "ပုံ၏ ကီလိုဂရမ်အလေးချိန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "More pixels packed into the same space usually means a sharper, more detailed image.",
            "You've probably seen resolution written like '1920 x 1080' -- that's the width and height in pixels.",
          ],
          hintsMy: [
            "နေရာတူတူထဲတွင် Pixel ပိုများများ ထည့်သွင်းလိုက်ခြင်းသည် များသောအားဖြင့် ပိုမိုချောမွေ့ပြီး အသေးစိတ်ပိုကျသော ပုံကို ဆိုလိုသည်။",
            "'1920 x 1080' ကဲ့သို့ Resolution ကို ရေးသားထားသည်ကို သင်တွေ့ဖူးမည် — ၎င်းသည် Pixel ဖြင့် အကျယ်နှင့် အမြင့်ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is 'colour depth'?",
          questionMy: "'Colour Depth' ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The number of bits used to store the colour of a single pixel, which controls how many different colours are possible",
            "How deep a colour looks compared to a shallow colour",
            "The distance between a screen and the person looking at it",
            "The number of pixels along the bottom edge of an image only",
          ],
          optionsMy: [
            "Pixel တစ်ခု၏ အရောင်ကို သိမ်းဆည်းရန် အသုံးပြုသော Bit အရေအတွက်၊ ၎င်းက ဖြစ်နိုင်သော အရောင်အရေအတွက်ကို ထိန်းချုပ်သည်",
            "အရောင်ပေါ့သည်နှင့် နှိုင်းယှဉ်ပါက အရောင် မည်မျှနက်သည်",
            "မျက်နှာပြင်နှင့် ကြည့်နေသူအကြား အကွာအဝေး",
            "ပုံ၏ အောက်ခြေအနားတစ်လျှောက်ရှိ Pixel အရေအတွက်သာ",
          ],
          correctIndex: 0,
          hintsEn: [
            "More bits per pixel means more possible on/off combinations, and therefore more possible colours.",
            "A very low colour depth might only allow black and white; a high colour depth allows millions of shades.",
          ],
          hintsMy: [
            "Pixel တစ်ခုလျှင် Bit ပိုများများသည် ဖွင့်/ပိတ် ပေါင်းစပ်မှု ပိုများနိုင်ကြောင်း ဆိုလိုပြီး ထို့ကြောင့် ဖြစ်နိုင်သောအရောင် ပိုများသည်။",
            "အလွန်နိမ့်သော Colour Depth သည် အနက်ရောင်နှင့် အဖြူရောင်ကိုသာ ခွင့်ပြုနိုင်ပြီး၊ မြင့်သော Colour Depth သည် အရောင်သန်းချီကို ခွင့်ပြုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What does 'RGB' stand for, and what is it used for?",
          questionMy:
              "'RGB' သည် မည်သည့်စကားလုံးများကို ကိုယ်စားပြုပြီး မည်သည့်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "Red, Green, Blue -- three colours of light that are mixed in different amounts to create almost any colour on a screen",
            "Really Good Binary -- a nickname for very efficient computer code",
            "Random Generated Bits -- a way computers create passwords",
            "Rate, Gigabyte, Byte -- three units used to measure a file's size",
          ],
          optionsMy: [
            "Red, Green, Blue -- မျက်နှာပြင်ပေါ်ရှိ မည်သည့်အရောင်ကိုမဆို ဖန်တီးရန် ပမာဏမတူညီစွာ ရောနှော အသုံးပြုသော အလင်းရောင် သုံးမျိုး",
            "Really Good Binary -- အလွန်ထိရောက်သော ကွန်ပျူတာ Code အတွက် အမည်ခံ",
            "Random Generated Bits -- ကွန်ပျူတာများ Password ဖန်တီးသည့်နည်းလမ်း",
            "Rate, Gigabyte, Byte -- File တစ်ခု၏အရွယ်အစား တိုင်းတာရန် အသုံးပြုသော ယူနစ်သုံးမျိုး",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of stage lights at a school performance -- red, green, and blue spotlights mixed together can make almost any other colour.",
            "Each pixel on a screen is really three tiny lights of these three colours, glowing at different brightnesses.",
          ],
          hintsMy: [
            "ကျောင်းဖျော်ဖြေပွဲတစ်ခုရှိ စင်မီးများကို တွေးကြည့်ပါ — အနီ၊ အစိမ်းနှင့် အပြာ Spotlight များ ရောနှောလိုက်ပါက အခြားအရောင် မည်သည့်အရောင်ကိုမဆို နီးပါးဖန်တီးနိုင်သည်။",
            "မျက်နှာပြင်ပေါ်ရှိ Pixel တစ်ခုစီသည် ဤအရောင်သုံးမျိုး၏ အလွန်သေးငယ်သော မီးသုံးလုံးဖြစ်ပြီး ကွဲပြားသော တောက်ပမှုအဆင့်များဖြင့် တောက်ပနေခြင်းဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w30-d2",
      dayNumber: 2,
      titleEn: "Match the Image Vocabulary",
      titleMy: "Image ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w30-dm-1",
          termEn: "Pixel",
          termMy: "Pixel (ပုံစိတ်အသေးငယ်)",
          matchEn:
              "One tiny coloured square that combines with others to form a digital image",
          matchMy:
              "အခြားစတုရန်းများနှင့် ပေါင်းစပ်၍ digital image တစ်ပုံ ဖြစ်လာသော အရောင်ပါသော အလွန်သေးငယ်သည့် စတုရန်းတစ်ခု",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w30-dm-2",
          termEn: "Resolution",
          termMy: "Resolution (ပုံရှင်းလင်းမှုအဆင့်)",
          matchEn:
              "The number of pixels that make up an image, usually width x height",
          matchMy:
              "ပုံတစ်ပုံကို ဖွဲ့စည်းထားသော pixel အရေအတွက်၊ များသောအားဖြင့် အကျယ် x အမြင့်",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w30-dm-3",
          termEn: "Colour depth",
          termMy: "Colour Depth (အရောင်အတိကျအဆင့်)",
          matchEn:
              "The number of bits used to store one pixel's colour, controlling how many colours are possible",
          matchMy:
              "Pixel တစ်ခု၏ အရောင်ကို သိမ်းဆည်းရန် အသုံးပြုသော Bit အရေအတွက်၊ ဖြစ်နိုင်သော အရောင်အရေအတွက်ကို ထိန်းချုပ်သည်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w30-dm-4",
          termEn: "RGB",
          termMy: "RGB",
          matchEn:
              "Red, Green, Blue -- three colours of light mixed to create almost any colour on a screen",
          matchMy:
              "Red, Green, Blue -- မျက်နှာပြင်ပေါ်ရှိ မည်သည့်အရောင်ကိုမဆို ဖန်တီးရန် ရောနှောအသုံးပြုသော အလင်းရောင် သုံးမျိုး",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w30-dm-5",
          termEn: "Bitmap image",
          termMy: "Bitmap Image (Pixel ဇယားပုံ)",
          matchEn:
              "A digital image stored as a grid of pixels, each with its own colour value",
          matchMy:
              "Pixel တစ်ခုစီတွင် ၎င်း၏ကိုယ်ပိုင်အရောင်တန်ဖိုးရှိသော ဇယားတစ်ခုအဖြစ် သိမ်းဆည်းထားသော digital image",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w30-dm-6",
          termEn: "Megapixel",
          termMy: "Megapixel (ပုံစိတ်သန်းချီ)",
          matchEn:
              "One million pixels, a unit often used to describe a camera's resolution",
          matchMy:
              "Pixel တစ်သန်း၊ ကင်မရာတစ်ခု၏ resolution ကို ဖော်ပြရန် မကြာခဏ အသုံးပြုသော ယူနစ်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w30-d3",
      dayNumber: 3,
      titleEn: "Sort: About Pixels/Resolution or About Colour?",
      titleMy: "စီစစ်ကြမည် - Pixel/Resolution အကြောင်းလား၊ အရောင်အကြောင်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["About Pixels/Resolution", "About Colour"],
        bucketsMy: ["Pixel/Resolution အကြောင်း", "အရောင်အကြောင်း"],
        items: [
          SortingItem(
            id: "y6comp-w30-sort-1",
            labelEn:
                "A higher resolution image has more pixels packed into the same space.",
            labelMy:
                "Resolution ပိုမြင့်သော ပုံတစ်ပုံသည် နေရာတူတူထဲတွင် Pixel ပိုများများ ပါဝင်သည်။",
            correctBucketEn: "About Pixels/Resolution",
            correctBucketMy: "Pixel/Resolution အကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w30-sort-2",
            labelEn:
                "RGB mixes red, green, and blue light to create other colours.",
            labelMy:
                "RGB သည် အခြားအရောင်များ ဖန်တီးရန် အနီ၊ အစိမ်းနှင့် အပြာအလင်းရောင်ကို ရောနှောသည်။",
            correctBucketEn: "About Colour",
            correctBucketMy: "အရောင်အကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w30-sort-3",
            labelEn:
                "A higher colour depth allows more possible shades for each pixel.",
            labelMy:
                "Colour Depth ပိုမြင့်ခြင်းသည် Pixel တစ်ခုစီအတွက် ဖြစ်နိုင်သော အရောင်ကွဲများ ပိုများစေသည်။",
            correctBucketEn: "About Colour",
            correctBucketMy: "အရောင်အကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w30-sort-4",
            labelEn:
                "'1920 x 1080' describes an image's width and height in pixels.",
            labelMy:
                "'1920 x 1080' သည် ပုံတစ်ပုံ၏ အကျယ်နှင့် အမြင့်ကို Pixel ဖြင့် ဖော်ပြသည်။",
            correctBucketEn: "About Pixels/Resolution",
            correctBucketMy: "Pixel/Resolution အကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w30-sort-5",
            labelEn:
                "A camera advertised as '12 megapixels' can capture about 12 million pixels per photo.",
            labelMy:
                "'12 megapixels' ဟု ကြော်ငြာထားသော ကင်မရာတစ်ခုသည် ဓာတ်ပုံတစ်ပုံလျှင် Pixel ၁၂ သန်းခန့် ရိုက်ကူးနိုင်သည်။",
            correctBucketEn: "About Pixels/Resolution",
            correctBucketMy: "Pixel/Resolution အကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w30-sort-6",
            labelEn:
                "A very low colour depth image might only be able to show black and white.",
            labelMy:
                "Colour Depth အလွန်နိမ့်သော ပုံတစ်ပုံသည် အနက်ရောင်နှင့် အဖြူရောင်ကိုသာ ပြသနိုင်လိမ့်မည်။",
            correctBucketEn: "About Colour",
            correctBucketMy: "အရောင်အကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w30-sort-7",
            labelEn:
                "Zooming far into a low-resolution photo shows large, blocky squares.",
            labelMy:
                "Resolution နိမ့်သော ဓာတ်ပုံတစ်ပုံကို အလွန်ကျယ်ကျယ် zoom in ပြုလုပ်ပါက စတုရန်းကြီးများ ကွက်ကွက်တွေ့ရသည်။",
            correctBucketEn: "About Pixels/Resolution",
            correctBucketMy: "Pixel/Resolution အကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w30-sort-8",
            labelEn:
                "Each pixel on a screen is really three tiny red, green, and blue lights.",
            labelMy:
                "မျက်နှာပြင်ပေါ်ရှိ Pixel တစ်ခုစီသည် အနီ၊ အစိမ်းနှင့် အပြာမီးအသေးလေးသုံးလုံး အမှန်ဖြစ်သည်။",
            correctBucketEn: "About Colour",
            correctBucketMy: "အရောင်အကြောင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w30-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi Zooms Into Her Class Photo",
      titleMy:
          "စာဖတ်ခြင်း - နှင်းချည် သူမ၏ အတန်းဓာတ်ပုံကို Zoom In ပြုလုပ်ခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi Zooms Into Her Class Photo",
        titleMy: "နှင်းချည် သူမ၏ အတန်းဓာတ်ပုံကို Zoom In ပြုလုပ်ခြင်း",
        passageEn:
            "Nay Chi opened last term's class photo on the computer lab's screen and, remembering Ms. Thanda's challenge, kept zooming in past her own smiling face, past a friend's uniform collar, until the smooth photo suddenly dissolved into a grid of small coloured squares. 'There they are,' she whispered -- pixels, exactly as Ms. Thanda had described them, thousands of tiny squares sitting side by side to build one picture.\n\nMs. Thanda projected the same zoomed-in view for the whole class. 'Every one of those squares stores a colour, and every colour is really just a mix of red, green, and blue light -- RGB -- at different brightnesses,' she explained. 'The number of bits used to store each pixel's colour is called colour depth. More bits means more possible brightness combinations, which means more possible colours -- sometimes millions of them.' She pointed to a single zoomed-in square that looked almost purple. 'That square isn't really painted purple. It's a lot of blue light, a little red light, and hardly any green, all glowing together.'\n\nNay Chi thought about her own phone, which bragged about its '48-megapixel' camera. 'So a higher megapixel number just means...' she started. 'More pixels packed into each photo,' Ms. Thanda finished, 'which usually means a sharper, more detailed image -- as long as the colour depth is high enough too. Resolution and colour depth work together: one is about how many tiny squares you have, the other is about how many colours each square can be.' Nay Chi looked back at her own photo, no longer just a picture of her classmates, but a carefully arranged grid of numbers she was only now starting to actually read.",
        passageMy:
            "နှင်းချည်သည် ကွန်ပျူတာဓာတ်ခွဲခန်း မျက်နှာပြင်ပေါ်တွင် ယခင်သင်တန်းက အတန်းဓာတ်ပုံကို ဖွင့်ကာ ဆရာမသန္တာ၏စိန်ခေါ်မှုကို သတိရရင်း သူမ၏ ပြုံးနေသောမျက်နှာကို ဖြတ်၍၊ သူငယ်ချင်းတစ်ဦး၏ ယူနီဖောင်းလည်စွပ်ကို ဖြတ်၍ ချောမွေ့သော ဓာတ်ပုံသည် ရုတ်တရက် အရောင်ပါသော စတုရန်းအသေးများ ဇယားတစ်ခုအဖြစ် ပျောက်ကွယ်သွားသည်အထိ Zoom In ဆက်လုပ်နေခဲ့သည်။ 'ဒီမှာ ရှိနေပါပြီ' ဟု သူမ တီးတိုးပြောလိုက်သည် — pixel များ၊ ဆရာမသန္တာ ဖော်ပြခဲ့သည့်အတိုင်းပင်၊ ပုံတစ်ပုံ တည်ဆောက်ရန် ဘေးချင်းယှဉ်ထိုင်နေသော စတုရန်းသေးငယ်ထောင်ချီ။\n\nဆရာမသန္တာသည် တူညီသော zoom in ပြုလုပ်ထားသည့် ရှုထောင့်ကို အတန်းတစ်ခုလုံးအတွက် ပြသခဲ့သည်။ 'ထိုစတုရန်းတစ်ခုစီသည် အရောင်တစ်ခုကို သိမ်းဆည်းပြီး အရောင်တိုင်းသည် ကွဲပြားသော တောက်ပမှုအဆင့်များတွင် အနီ၊ အစိမ်းနှင့် အပြာအလင်းရောင် -- RGB -- ရောနှောမှု အမှန်ဖြစ်သည်' ဟု သူမက ရှင်းပြခဲ့သည်။ 'Pixel တစ်ခုစီ၏ အရောင်ကို သိမ်းဆည်းရန် အသုံးပြုသော Bit အရေအတွက်ကို colour depth ဟု ခေါ်သည်။ Bit ပိုများခြင်းသည် ဖြစ်နိုင်သော တောက်ပမှု ပေါင်းစပ်မှု ပိုများခြင်းကို ဆိုလိုပြီး ၎င်းက ဖြစ်နိုင်သောအရောင် ပိုများခြင်းကို ဆိုလိုသည် — တစ်ခါတစ်ရံ သန်းချီ၍' ။ သူမသည် ခရမ်းရောင်နီးပါးမြင်ရသော zoom in ပြုလုပ်ထားသည့် စတုရန်းတစ်ခုကို လက်ညှိုးထိုးပြခဲ့သည်။ 'ထိုစတုရန်းသည် ခရမ်းရောင်ဆေးသုတ်ထားခြင်း အမှန်မဟုတ်ပါ။ ၎င်းသည် အပြာအလင်းရောင်များများ၊ အနီအလင်းရောင်နည်းနည်းနှင့် အစိမ်းလုံးဝနီးပါးမပါဘဲ အားလုံး အတူတကွ တောက်ပနေခြင်းသာ ဖြစ်သည်' ။\n\nနှင်းချည်သည် သူမ၏ ဖုန်း၊ '48-megapixel' ကင်မရာအကြောင်း ဂုဏ်ယူပြောနေသည့်အကြောင်း တွေးမိသည်။ 'ဒါဆို megapixel ဂဏန်းပိုများခြင်းက ဆိုလိုတာက...' ဟု သူမ စတင်ခဲ့သည်။ 'ဓာတ်ပုံတစ်ပုံစီအတွက် Pixel ပိုများများ ထည့်သွင်းထားခြင်း' ဟု ဆရာမသန္တာက ပြီးအောင်ပြောခဲ့သည်၊ '၎င်းသည် Colour Depth လည်း လုံလောက်စွာမြင့်နေမှသာ ပိုမိုချောမွေ့ပြီး အသေးစိတ်ပိုကျသော ပုံကို ဆိုလိုသည်။ Resolution နှင့် Colour Depth သည် အတူတကွ လုပ်ဆောင်ကြသည် — တစ်ခုသည် သင့်တွင် ရှိသော စတုရန်းအသေးလေး အရေအတွက်အကြောင်းဖြစ်ပြီး၊ အခြားတစ်ခုသည် စတုရန်းတစ်ခုစီ ဖြစ်နိုင်သော အရောင်အရေအတွက်အကြောင်းဖြစ်သည်' ။ နှင်းချည်သည် သူမ၏ ဓာတ်ပုံကို ပြန်ကြည့်လိုက်ရာ ယခုအခါ သူမ၏ အတန်းသားချင်းများ၏ပုံတစ်ပုံသာ မဟုတ်တော့ဘဲ ယခုမှစ၍ သူမ တကယ်ဖတ်တတ်လာသည့် ကိန်းဂဏန်းများ ဂရုတစိုက်စီစဉ်ထားသော ဇယားတစ်ခု ဖြစ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what did Nay Chi see when she zoomed far into the class photo?",
            questionMy:
                "စာပိုဒ် ၁ အရ နှင်းချည်သည် အတန်းဓာတ်ပုံကို အလွန်ကျယ်ကျယ် zoom in ပြုလုပ်သောအခါ မည်သည့်အရာကို မြင်တွေ့ခဲ့သနည်း။",
            optionsEn: [
              "The photo dissolved into a grid of small coloured squares -- pixels",
              "The photo became completely blank",
              "The photo turned into a video",
              "The photo's file size shrank to zero",
            ],
            optionsMy: [
              "ဓာတ်ပုံသည် အရောင်ပါသော စတုရန်းအသေးများ ဇယားတစ်ခုအဖြစ် ပျောက်ကွယ်သွားခဲ့ကြောင်း -- pixel များ",
              "ဓာတ်ပုံသည် လုံးဝ အလွတ်ဖြစ်သွားခဲ့ကြောင်း",
              "ဓာတ်ပုံသည် ဗီဒီယိုတစ်ခုအဖြစ် ပြောင်းလဲသွားခဲ့ကြောင်း",
              "ဓာတ်ပုံ၏ File အရွယ်အစားသည် သုညအထိ ကျုံ့သွားခဲ့ကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what does Ms. Thanda call the number of bits used to store each pixel's colour?",
            questionMy:
                "စာပိုဒ် ၂ အရ Pixel တစ်ခုစီ၏ အရောင်ကို သိမ်းဆည်းရန် အသုံးပြုသော Bit အရေအတွက်ကို ဆရာမသန္တာက မည်သို့ခေါ်ခဲ့သနည်း။",
            optionsEn: [
              "Colour depth",
              "Resolution",
              "Megapixel count",
              "Sample rate",
            ],
            optionsMy: [
              "Colour Depth (အရောင်အတိကျအဆင့်)",
              "Resolution (ပုံရှင်းလင်းမှုအဆင့်)",
              "Megapixel Count (ပုံစိတ်သန်းချီ အရေအတွက်)",
              "Sample Rate (နမူနာယူနှုန်း)",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what is a nearly-purple pixel actually made of?",
            questionMy:
                "စာပိုဒ် ၂ အရ ခရမ်းရောင်နီးပါး Pixel တစ်ခုသည် အမှန်တကယ် မည်သည့်အရာဖြင့် ဖွဲ့စည်းထားသနည်း။",
            optionsEn: [
              "A lot of blue light, a little red light, and hardly any green light, glowing together",
              "Purple paint mixed directly into the screen",
              "A single colour that cannot be broken down further",
              "Black and white light mixed in equal amounts",
            ],
            optionsMy: [
              "အပြာအလင်းရောင်များများ၊ အနီအလင်းရောင်နည်းနည်းနှင့် အစိမ်းလုံးဝနီးပါးမပါဘဲ အတူတကွ တောက်ပနေခြင်း",
              "မျက်နှာပြင်ထဲသို့ တိုက်ရိုက်ရောနှောထားသော ခရမ်းရောင်ဆေး",
              "ထပ်မံ ခွဲခြမ်း၍မရသော အရောင်တစ်ခုတည်း",
              "ညီမျှသောပမာဏဖြင့် ရောနှောထားသော အနက်ရောင်နှင့် အဖြူရောင်အလင်းရောင်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what does Ms. Thanda say resolution and colour depth do together?",
            questionMy:
                "စာပိုဒ် ၃ အရ Resolution နှင့် Colour Depth အတူတကွ မည်သို့လုပ်ဆောင်ကြောင်း ဆရာမသန္တာက ပြောခဲ့သနည်း။",
            optionsEn: [
              "Resolution controls how many pixels there are, while colour depth controls how many colours each pixel can be",
              "They are two names for exactly the same thing",
              "Resolution controls sound quality, while colour depth controls image size",
              "Only one of them actually affects how an image looks",
            ],
            optionsMy: [
              "Resolution က Pixel မည်မျှရှိသည်ကို ထိန်းချုပ်ပြီး Colour Depth က Pixel တစ်ခုစီ ဖြစ်နိုင်သော အရောင်အရေအတွက်ကို ထိန်းချုပ်သည်",
              "၎င်းတို့သည် အတူတူသောအရာအတွက် အမည်နှစ်ခုသာ ဖြစ်သည်",
              "Resolution က အသံအရည်အသွေးကို ထိန်းချုပ်ပြီး Colour Depth က ပုံအရွယ်အစားကို ထိန်းချုပ်သည်",
              "၎င်းတို့အနက် တစ်ခုတည်းသာ ပုံပုံပေါ်ပုံကို အမှန်တကယ် သက်ရောက်မှုရှိသည်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w30-d5",
      dayNumber: 5,
      titleEn: "Pixels and Colour Round-Up",
      titleMy: "Pixel နှင့် အရောင် အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A pixel is...",
          questionMy: "Pixel တစ်ခုသည် ...",
          optionsEn: [
            "One tiny coloured square that combines with others to form a digital image",
            "A unit of sound volume",
            "A type of file format",
            "A brand of monitor",
          ],
          optionsMy: [
            "အခြားစတုရန်းများနှင့် ပေါင်းစပ်၍ digital image တစ်ပုံ ဖြစ်လာသော အရောင်ပါသော အလွန်သေးငယ်သည့် စတုရန်းတစ်ခု",
            "အသံအတိုးအကျယ် ယူနစ်တစ်ခု",
            "File Format အမျိုးအစားတစ်ခု",
            "မော်နီတာအမှတ်တံဆိပ်တစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Resolution describes...",
          questionMy: "Resolution သည် ... ကို ဖော်ပြသည်။",
          optionsEn: [
            "The number of pixels that make up an image",
            "How loud a computer's speakers can go",
            "The brand of a camera",
            "The price of a photo",
          ],
          optionsMy: [
            "ပုံတစ်ပုံကို ဖွဲ့စည်းထားသော Pixel အရေအတွက်",
            "ကွန်ပျူတာစပီကာများ မည်မျှကျယ်နိုင်သည်",
            "ကင်မရာတစ်ခု၏ အမှတ်တံဆိပ်",
            "ဓာတ်ပုံတစ်ပုံ၏ ဈေးနှုန်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "RGB stands for...",
          questionMy: "RGB သည် ... ကို ကိုယ်စားပြုသည်။",
          optionsEn: [
            "Red, Green, Blue",
            "Really Good Binary",
            "Random Generated Bits",
            "Rate, Gigabyte, Byte",
          ],
          optionsMy: [
            "Red, Green, Blue (အနီ၊ အစိမ်း၊ အပြာ)",
            "Really Good Binary (ကောင်းမွန်သော Binary ဟူသော အဓိပ္ပာယ်မဟုတ်ပါ)",
            "Random Generated Bits (ကျပန်းထုတ်လုပ်သော Bit များ ဟူသော အဓိပ္ပာယ်မဟုတ်ပါ)",
            "Rate, Gigabyte, Byte (နှုန်း၊ Gigabyte၊ Byte ဟူသော အဓိပ္ပာယ်မဟုတ်ပါ)",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A higher colour depth means...",
          questionMy: "Colour Depth ပိုမြင့်ခြင်းက ဆိုလိုသည်မှာ ...",
          optionsEn: [
            "More bits per pixel, so more possible colours",
            "Fewer pixels in the whole image",
            "A louder sound when the image opens",
            "A smaller file size, always",
          ],
          optionsMy: [
            "Pixel တစ်ခုလျှင် Bit ပိုများပြီး ဖြစ်နိုင်သောအရောင် ပိုများခြင်း",
            "ပုံတစ်ပုံလုံးတွင် Pixel ပိုနည်းခြင်း",
            "ပုံဖွင့်သောအခါ ပိုကျယ်သောအသံ",
            "အမြဲတမ်း File အရွယ်အစား ပိုသေးငယ်ခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's story, what did she realise her class photo really was?",
          questionMy:
              "နှင်းချည်၏ ဇာတ်လမ်းတွင် သူမ၏ အတန်းဓာတ်ပုံသည် အမှန်တကယ် မည်သည့်အရာဖြစ်ကြောင်း သူမ သဘောပေါက်ခဲ့သနည်း။",
          optionsEn: [
            "A carefully arranged grid of numbers, not just a picture",
            "A file that could never be zoomed into",
            "A video recording, not a photo at all",
            "An image with no pixels at all",
          ],
          optionsMy: [
            "ပုံတစ်ပုံသာမက ကိန်းဂဏန်းများ ဂရုတစိုက်စီစဉ်ထားသော ဇယားတစ်ခု",
            "Zoom in ဘယ်တော့မှ မလုပ်နိုင်သော File တစ်ခု",
            "ဓာတ်ပုံလုံးဝ မဟုတ်ဘဲ ဗီဒီယိုမှတ်တမ်းတစ်ခု",
            "Pixel လုံးဝမပါသော ပုံတစ်ပုံ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek31 = CourseWeekDef(
  id: "course-year6-computing-w31",
  weekNumber: 31,
  titleEn: "How Computers Store Sound: Digital Sampling",
  titleMy: "ကွန်ပျူတာများ အသံကို သိမ်းဆည်းပုံ - Digital Sampling",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w31-d1",
      dayNumber: 1,
      titleEn: "What Is Sampling?",
      titleMy: "Sampling ဆိုသည်မှာ အဘယ်နည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is 'sampling' when recording digital sound?",
          questionMy: "Digital အသံသွင်းသောအခါ 'Sampling' ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "Measuring the height of a sound wave thousands of times per second and storing each measurement as a number",
            "Choosing a short free preview of a song to listen to before buying it",
            "Tasting a small amount of food, unrelated to computing",
            "Deleting parts of a recording to make it shorter",
          ],
          optionsMy: [
            "အသံလှိုင်းတစ်ခု၏အမြင့်ကို တစ်စက္ကန့်လျှင် ထောင်ချီ၍ တိုင်းတာကာ တိုင်းတာချက်တစ်ခုစီကို ကိန်းဂဏန်းအဖြစ် သိမ်းဆည်းခြင်း",
            "ဝယ်ယူမီ နားထောင်ရန် သီချင်း၏ အခမဲ့ ကြိုတင်နမူနာတိုကို ရွေးချယ်ခြင်း",
            "ကွန်ပျူတာနှင့် မသက်ဆိုင်သော အစားအစာ အနည်းငယ် မြည်းစမ်းခြင်း",
            "အသံသွင်းချက်တစ်ခုကို ပိုတိုစေရန် အစိတ်အပိုင်းများ ဖျက်ခြင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of taking a photograph of a moving wave, over and over again, extremely quickly.",
            "Each 'sample' is just one number describing the wave's height at one exact instant.",
          ],
          hintsMy: [
            "ရွေ့လျားနေသော လှိုင်းတစ်ခု၏ ဓာတ်ပုံကို အလွန်မြန်စွာ ထပ်ခါတလဲလဲ ရိုက်ကူးနေသည်ကို တွေးကြည့်ပါ။",
            "'Sample' တစ်ခုစီသည် အချိန်တိကျချက်တစ်ခုတွင် လှိုင်း၏ အမြင့်ကို ဖော်ပြသော ကိန်းဂဏန်း တစ်လုံးသာ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is 'sample rate'?",
          questionMy: "'Sample Rate' ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "How many times per second a sound wave's height is measured and recorded",
            "The speed at which a song plays back, in words per minute",
            "The number of musicians playing in a recording",
            "The maximum volume a speaker can produce",
          ],
          optionsMy: [
            "တစ်စက္ကန့်လျှင် အသံလှိုင်း၏အမြင့်ကို မည်မျှကြိမ် တိုင်းတာ၍ မှတ်တမ်းတင်သည်",
            "သီချင်းတစ်ပုဒ် ပြန်ဖွင့်သည့်နှုန်း၊ တစ်မိနစ်လျှင် စကားလုံးအရေအတွက်ဖြင့်",
            "အသံသွင်းချက်တစ်ခုတွင် တီးမှုတ်နေသော ဂီတသမား အရေအတွက်",
            "စပီကာတစ်ခု ထုတ်လုပ်နိုင်သော အများဆုံးအသံကျယ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "A higher sample rate means more snapshots of the wave are taken every second.",
            "CD-quality audio famously samples the wave 44,100 times every single second.",
          ],
          hintsMy: [
            "Sample Rate ပိုမြင့်ခြင်းက စက္ကန့်တိုင်း လှိုင်း၏ ဓာတ်ပုံ ပိုများများ ရိုက်ကူးသည်ကို ဆိုလိုသည်။",
            "CD အရည်အသွေး အသံသည် တစ်စက္ကန့်တိုင်းလျှင် လှိုင်းကို အကြိမ် ၄၄,၁၀၀ Sample ယူသည်ဟု ကျော်ကြားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is 'bit depth' when talking about digital sound?",
          questionMy:
              "Digital အသံအကြောင်း ပြောသောအခါ 'Bit Depth' ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The number of bits used to store each individual sample's measurement, affecting sound quality",
            "How deep underwater a microphone can safely record",
            "The number of songs that fit on a music player",
            "The thickness of a set of headphones",
          ],
          optionsMy: [
            "Sample တစ်ခုစီ၏ တိုင်းတာချက်ကို သိမ်းဆည်းရန် အသုံးပြုသော Bit အရေအတွက်၊ အသံအရည်အသွေးကို သက်ရောက်စေသည်",
            "Microphone တစ်ခု ဘေးကင်းစွာ အသံသွင်းနိုင်သော ရေအောက် အနက်ရှိုင်း",
            "ဂီတဖွင့်စက်တစ်ခုပေါ်တွင် ဝင်ဆံ့နိုင်သော သီချင်းအရေအတွက်",
            "နားကြပ်တစ်စုံ၏ ထူထဲမှု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Just like colour depth for pixels, bit depth for sound controls how precisely each measurement can be described.",
            "A low bit depth might make quiet, subtle sounds sound rough or crackly; a high bit depth captures them smoothly.",
          ],
          hintsMy: [
            "Pixel များအတွက် Colour Depth ကဲ့သို့ပင်၊ အသံအတွက် Bit Depth သည် တိုင်းတာချက်တစ်ခုစီကို မည်မျှတိကျစွာ ဖော်ပြနိုင်သည်ကို ထိန်းချုပ်သည်။",
            "Bit Depth နိမ့်ပါက ငြိမ်သက်သော၊ သိမ်မွေ့သောအသံများကို ကြမ်းတမ်းသော သို့မဟုတ် ကွဲအက်နေသောအသံဖြစ်စေနိုင်ပြီး Bit Depth မြင့်ပါက ၎င်းတို့ကို ချောမွေ့စွာ ဖမ်းယူနိုင်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why is a recorded sound file really just numbers, in the same way a digital image is?",
          questionMy:
              "Digital ပုံတစ်ပုံကဲ့သို့ပင် အသံသွင်းထားသော File တစ်ခုသည် အမှန်တကယ် ကိန်းဂဏန်းများသာဖြစ်ရသည်မှာ အဘယ်ကြောင့်နည်း။",
          optionsEn: [
            "Because sampling turns a continuous sound wave into a long list of numbers describing the wave's height at each instant",
            "Because sound files are secretly a type of photograph",
            "Because musicians count out loud while recording",
            "Because sound cannot actually be stored on a computer at all",
          ],
          optionsMy: [
            "Sampling သည် အဆက်မပြတ် အသံလှိုင်းကို အခိုက်အတန့်တစ်ခုစီတွင် လှိုင်း၏အမြင့်ကို ဖော်ပြသော ကိန်းဂဏန်းစာရင်းရှည်တစ်ခုအဖြစ် ပြောင်းလဲပေးသောကြောင့်",
            "အသံ File များသည် ဓာတ်ပုံအမျိုးအစားတစ်ခု အမှန်ဖြစ်နေသောကြောင့်",
            "ဂီတသမားများသည် အသံသွင်းစဉ် အသံကျယ်ကျယ် ရေတွက်နေကြသောကြောင့်",
            "အသံကို ကွန်ပျူတာပေါ်တွင် လုံးဝ သိမ်းဆည်း၍ မရနိုင်သောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think back to Week 29's binary preview: text, images, and sound are all translated into patterns of numbers.",
            "A continuous, smooth wave has to be chopped into many tiny measurements before a computer, which only understands numbers, can store it.",
          ],
          hintsMy: [
            "Week 29 ၏ Binary Preview ကို ပြန်တွေးကြည့်ပါ — Text, image နှင့် sound အားလုံးကို ကိန်းဂဏန်းပုံစံများအဖြစ် ဘာသာပြန်ထားခြင်းဖြစ်သည်။",
            "အဆက်မပြတ်၊ ချောမွေ့သော လှိုင်းတစ်ခုကို ကိန်းဂဏန်းကိုသာ နားလည်သော ကွန်ပျူတာက သိမ်းဆည်းနိုင်ရန် တိုင်းတာချက်အသေးလေးများစွာအဖြစ် အရင်ဖြတ်ရမည်ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w31-d2",
      dayNumber: 2,
      titleEn: "Match the Sound Vocabulary",
      titleMy: "အသံဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w31-dm-1",
          termEn: "Sampling",
          termMy: "Sampling (နမူနာယူခြင်း)",
          matchEn:
              "Measuring a sound wave's height thousands of times per second and storing each as a number",
          matchMy:
              "အသံလှိုင်းတစ်ခု၏အမြင့်ကို တစ်စက္ကန့်လျှင် ထောင်ချီ၍ တိုင်းတာကာ ကိန်းဂဏန်းတစ်လုံးစီအဖြစ် သိမ်းဆည်းခြင်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w31-dm-2",
          termEn: "Sample rate",
          termMy: "Sample Rate (နမူနာယူနှုန်း)",
          matchEn:
              "How many times per second a sound wave is measured and recorded",
          matchMy:
              "တစ်စက္ကန့်လျှင် အသံလှိုင်းကို မည်မျှကြိမ် တိုင်းတာ၍ မှတ်တမ်းတင်သည်",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w31-dm-3",
          termEn: "Bit depth (sound)",
          termMy: "Bit Depth (အသံ)",
          matchEn:
              "The number of bits used to store each sample's measurement, affecting sound quality",
          matchMy:
              "Sample တစ်ခုစီ၏ တိုင်းတာချက်ကို သိမ်းဆည်းရန် အသုံးပြုသော Bit အရေအတွက်၊ အသံအရည်အသွေးကို သက်ရောက်စေသည်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w31-dm-4",
          termEn: "Analogue sound",
          termMy: "Analogue Sound (အဆက်မပြတ်သဘာဝအသံ)",
          matchEn:
              "A continuous, smooth sound wave, before it is measured into digital numbers",
          matchMy:
              "Digital ကိန်းဂဏန်းများအဖြစ် မတိုင်းတာမီ အဆက်မပြတ်၊ ချောမွေ့သော အသံလှိုင်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w31-dm-5",
          termEn: "Digital audio",
          termMy: "Digital Audio (ဂဏန်းသွင်းအသံ)",
          matchEn:
              "Sound stored as a long list of sampled numbers, rather than a continuous wave",
          matchMy:
              "အဆက်မပြတ်လှိုင်းအစား Sample ရယူထားသော ကိန်းဂဏန်းစာရင်းရှည်တစ်ခုအဖြစ် သိမ်းဆည်းထားသော အသံ",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w31-dm-6",
          termEn: "Waveform",
          termMy: "Waveform (လှိုင်းပုံစံ)",
          matchEn: "A visual picture of how a sound's height changes over time",
          matchMy:
              "အသံ၏အမြင့်သည် အချိန်နှင့်အမျှ မည်သို့ပြောင်းလဲသည်ကို ပြသော ရုပ်ပိုင်းဆိုင်ရာပုံ",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w31-d3",
      dayNumber: 3,
      titleEn: "Sort: About Recording/Sampling or About Sound Quality?",
      titleMy:
          "စီစစ်ကြမည် - အသံသွင်း/Sampling အကြောင်းလား၊ အသံအရည်အသွေးအကြောင်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["About Recording/Sampling", "About Sound Quality"],
        bucketsMy: ["အသံသွင်း/Sampling အကြောင်း", "အသံအရည်အသွေးအကြောင်း"],
        items: [
          SortingItem(
            id: "y6comp-w31-sort-1",
            labelEn:
                "Sampling measures a sound wave's height thousands of times per second.",
            labelMy:
                "Sampling သည် အသံလှိုင်းတစ်ခု၏အမြင့်ကို တစ်စက္ကန့်လျှင် ထောင်ချီ၍ တိုင်းတာသည်။",
            correctBucketEn: "About Recording/Sampling",
            correctBucketMy: "အသံသွင်း/Sampling အကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w31-sort-2",
            labelEn:
                "A higher bit depth captures quiet, subtle sounds more smoothly.",
            labelMy:
                "Bit Depth ပိုမြင့်ခြင်းက ငြိမ်သက်သော၊ သိမ်မွေ့သောအသံများကို ပိုချောမွေ့စွာ ဖမ်းယူသည်။",
            correctBucketEn: "About Sound Quality",
            correctBucketMy: "အသံအရည်အသွေးအကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w31-sort-3",
            labelEn:
                "CD-quality audio samples a wave 44,100 times every second.",
            labelMy:
                "CD အရည်အသွေးအသံသည် လှိုင်းကို တစ်စက္ကန့်တိုင်းလျှင် အကြိမ် ၄၄,၁၀၀ Sample ယူသည်။",
            correctBucketEn: "About Recording/Sampling",
            correctBucketMy: "အသံသွင်း/Sampling အကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w31-sort-4",
            labelEn:
                "A low bit depth can make a recording sound rough or crackly.",
            labelMy:
                "Bit Depth နိမ့်ခြင်းက အသံသွင်းချက်ကို ကြမ်းတမ်း သို့မဟုတ် ကွဲအက်နေသောအသံ ဖြစ်စေနိုင်သည်။",
            correctBucketEn: "About Sound Quality",
            correctBucketMy: "အသံအရည်အသွေးအကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w31-sort-5",
            labelEn:
                "Each sample stores one number describing the wave's height at one exact instant.",
            labelMy:
                "Sample တစ်ခုစီသည် အချိန်တိကျချက်တစ်ခုတွင် လှိုင်း၏အမြင့်ကို ဖော်ပြသော ကိန်းဂဏန်းတစ်လုံးကို သိမ်းဆည်းသည်။",
            correctBucketEn: "About Recording/Sampling",
            correctBucketMy: "အသံသွင်း/Sampling အကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w31-sort-6",
            labelEn:
                "A low sample rate can make a recording sound choppy or unnatural.",
            labelMy:
                "Sample Rate နိမ့်ခြင်းက အသံသွင်းချက်ကို အပိုင်းပိုင်းကျ သို့မဟုတ် သဘာဝမကျသော အသံဖြစ်စေနိုင်သည်။",
            correctBucketEn: "About Sound Quality",
            correctBucketMy: "အသံအရည်အသွေးအကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w31-sort-7",
            labelEn:
                "Bit depth for sound works similarly to colour depth for images.",
            labelMy:
                "အသံအတွက် Bit Depth သည် ပုံများအတွက် Colour Depth ကဲ့သို့ တူညီစွာ အလုပ်လုပ်သည်။",
            correctBucketEn: "About Sound Quality",
            correctBucketMy: "အသံအရည်အသွေးအကြောင်း",
          ),
          SortingItem(
            id: "y6comp-w31-sort-8",
            labelEn:
                "A continuous analogue wave must be chopped into many tiny measurements to become digital.",
            labelMy:
                "အဆက်မပြတ် Analogue လှိုင်းတစ်ခုကို Digital ဖြစ်လာရန် တိုင်းတာချက်အသေးလေးများစွာအဖြစ် အရင်ဖြတ်ရမည်။",
            correctBucketEn: "About Recording/Sampling",
            correctBucketMy: "အသံသွင်း/Sampling အကြောင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w31-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi Records the Ducks of Nova Lake",
      titleMy:
          "စာဖတ်ခြင်း - နှင်းချည် Nova Lake ငှက်တောင်းများကို အသံသွင်းခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi Records the Ducks of Nova Lake",
        titleMy: "နှင်းချည် Nova Lake ငှက်တောင်းများကို အသံသွင်းခြင်း",
        passageEn:
            "Ms. Thanda handed out school tablets for a field trip to Nova Lake, the very place Nay Chi had researched for her Term 7 capstone project. 'Today you're not just watching the ducks,' she said. 'You're recording them -- and finding out exactly how a microphone turns their calls into numbers.' Nay Chi pointed her tablet at a group of ducks calling across the water and pressed record, watching a wavy green line ripple across the screen as their calls rose and fell.\n\n'That wavy line is called a waveform,' Ms. Thanda explained once the class gathered back under a tree. 'It shows how the sound's height changes over time. But a microphone can't store a smooth, continuous wave directly -- a computer only understands numbers. So thousands of times every single second, it measures the exact height of that wave and writes down a number. That's called sampling, and how many times per second it happens is the sample rate.' Nay Chi thought of Week 29's four light bulbs -- the same idea, just applied to sound instead of switches.\n\nBack in the computer lab, Nay Chi played her duck recording at a very low sample rate as a demonstration, and the calls came out crackly and strange, missing the fine detail of the real sound. At the proper sample rate, the calls sounded clear and natural again. 'The bit depth matters too,' Ms. Thanda reminded them, 'the same way colour depth mattered for your class photo last week. More bits per sample means the wave's height can be measured more precisely, capturing quieter, more delicate sounds accurately instead of roughly.' Nay Chi looked at her recording's file, no picture at all, just a long list of numbers -- and somewhere inside those numbers, she realised, was the exact sound of Nova Lake's ducks calling to each other across the water.",
        passageMy:
            "ဆရာမသန္တာသည် Nay Chi ၏ Term 7 capstone စီမံကိန်းအတွက် သုတေသနပြုခဲ့သည့် Nova Lake သို့ ကွင်းဆင်းခရီးအတွက် ကျောင်း tablet များ ဝေပေးခဲ့သည်။ 'ဒီနေ့ သင်တို့ ငှက်တောင်းများကို ကြည့်ရှုနေရုံသာ မဟုတ်ပါ' ဟု သူမက ပြောခဲ့သည်။ 'သင်တို့ ၎င်းတို့ကို အသံသွင်းနေကြပြီး Microphone တစ်ခုသည် ၎င်းတို့၏ အသံများကို ကိန်းဂဏန်းများအဖြစ် တိတိကျကျ ဘယ်လိုပြောင်းလဲသည်ကို ရှာဖွေတွေ့ရှိနေကြပါတယ်' ။ နှင်းချည်သည် ရေပေါ်တွင် အသံဟစ်ခေါ်နေသော ငှက်တောင်းအုပ်တစ်ခုကို သူမ၏ tablet ဖြင့် ညွှန်ကာ Record ကို နှိပ်လိုက်ရာ ၎င်းတို့၏အသံ မြင့်တက်ကျဆင်းနေစဉ် လှိုင်းအစိမ်းရောင်တစ်ခု မျက်နှာပြင်ပေါ်တွင် လှိုင်းထလာသည်ကို ကြည့်ရှုနေခဲ့သည်။\n\n'ဒီလှိုင်းစကို waveform လို့ခေါ်ပါတယ်' ဟု အတန်းက သစ်ပင်တစ်ပင်အောက်တွင် ပြန်စုစည်းလိုက်သောအခါ ဆရာမသန္တာက ရှင်းပြခဲ့သည်။ '၎င်းက အသံ၏အမြင့်သည် အချိန်နှင့်အမျှ မည်သို့ပြောင်းလဲသည်ကို ပြသည်။ ဒါပေမယ့် Microphone တစ်ခုသည် ချောမွေ့ပြီး အဆက်မပြတ်သော လှိုင်းကို တိုက်ရိုက် သိမ်းဆည်းမရနိုင်ပါ — ကွန်ပျူတာသည် ကိန်းဂဏန်းကိုသာ နားလည်သည်။ ထို့ကြောင့် တစ်စက္ကန့်တိုင်းလျှင် အကြိမ်ထောင်ချီ၍ ထိုလှိုင်း၏ အတိအကျအမြင့်ကို တိုင်းတာကာ ကိန်းဂဏန်းတစ်လုံးကို ချရေးသည်။ ၎င်းကို sampling ဟု ခေါ်ပြီး တစ်စက္ကန့်လျှင် မည်မျှကြိမ်ဖြစ်ပျက်သည်ကို sample rate ဟု ခေါ်သည်' ။ နှင်းချည်သည် Week 29 ၏ မီးလုံးလေးလုံးကို တွေးမိသည် — တူညီသောအယူအဆ၊ switch များအစား အသံအပေါ် အသုံးချထားခြင်းသာ ကွာခြားသည်။\n\nကွန်ပျူတာဓာတ်ခွဲခန်းသို့ ပြန်ရောက်သောအခါ နှင်းချည်သည် သူမ၏ ငှက်တောင်း အသံသွင်းချက်ကို sample rate အလွန်နိမ့်စွာဖြင့် သရုပ်ပြအဖြစ် ဖွင့်ကြည့်ရာ အသံများသည် ကွဲအက်ပြီး ထူးဆန်းစွာ ထွက်လာကာ တကယ့်အသံ၏ အသေးစိတ်ချောမွေ့မှုများ ပျောက်ဆုံးသွားခဲ့သည်။ မှန်ကန်သော sample rate တွင် အသံများသည် သဘာဝကျပြီး ရှင်းလင်းသော အသံပြန်ထွက်လာခဲ့သည်။ 'Bit Depth လည်း အရေးကြီးပါတယ်' ဟု ဆရာမသန္တာက သတိပေးခဲ့သည်၊ 'ပြီးခဲ့တဲ့ အပတ်က သင်တို့ အတန်းဓာတ်ပုံအတွက် Colour Depth အရေးကြီးသလိုပါပဲ။ Sample တစ်ခုလျှင် Bit ပိုများခြင်းက လှိုင်း၏အမြင့်ကို ပိုတိကျစွာ တိုင်းတာနိုင်ကြောင်း ဆိုလိုပြီး ငြိမ်သက်သော၊ ပိုသိမ်မွေ့သောအသံများကို ရိုင်းစိုင်းစွာမဟုတ်ဘဲ တိကျစွာ ဖမ်းယူနိုင်စေသည်' ။ နှင်းချည်သည် သူမ၏ အသံသွင်းချက် File ကို ကြည့်လိုက်ရာ ပုံလုံးဝမပါဘဲ ကိန်းဂဏန်းများ စာရင်းရှည်တစ်ခုသာ ဖြစ်ခဲ့သည် — ထိုကိန်းဂဏန်းများအတွင်း တစ်နေရာရာတွင် Nova Lake ၏ ငှက်တောင်းများ ရေပေါ်တွင် အချင်းချင်း ဟစ်ခေါ်နေသော အသံအတိအကျ ရှိနေကြောင်း သူမ သဘောပေါက်လိုက်သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, where was the class field trip held?",
            questionMy:
                "စာပိုဒ် ၁ အရ အတန်း ကွင်းဆင်းခရီးကို မည်သည့်နေရာတွင် ကျင်းပခဲ့သနည်း။",
            optionsEn: [
              "Nova Lake, the same place Nay Chi researched for her Term 7 capstone",
              "A city library",
              "A computer factory",
              "Nay Chi's own home",
            ],
            optionsMy: [
              "Nay Chi ၏ Term 7 capstone အတွက် သုတေသနပြုခဲ့သည့် နေရာတည်းဖြစ်သော Nova Lake",
              "မြို့ပြစာကြည့်တိုက်",
              "ကွန်ပျူတာစက်ရုံ",
              "Nay Chi ၏ ကိုယ်ပိုင်အိမ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why can't a microphone store a smooth wave directly?",
            questionMy:
                "စာပိုဒ် ၂ အရ Microphone တစ်ခုသည် ချောမွေ့သော လှိုင်းကို တိုက်ရိုက် အဘယ်ကြောင့် သိမ်းဆည်း၍ မရနိုင်သနည်း။",
            optionsEn: [
              "Because a computer only understands numbers, so the wave must be measured into samples first",
              "Because microphones are not allowed to store any data",
              "Because waves are too quiet for a microphone to detect",
              "Because ducks call too quickly for any device to keep up",
            ],
            optionsMy: [
              "ကွန်ပျူတာသည် ကိန်းဂဏန်းကိုသာ နားလည်သောကြောင့်၊ လှိုင်းကို sample များအဖြစ် အရင်တိုင်းတာရမည်",
              "Microphone များသည် Data မည်သည့်အရာမျှ သိမ်းဆည်းခွင့်မရှိသောကြောင့်",
              "လှိုင်းများသည် Microphone တွေ့ရှိရန် အလွန်ငြိမ်သက်လွန်းသောကြောင့်",
              "ငှက်တောင်းများသည် စက်ကိရိယာတစ်ခုမျှ မမီနိုင်လောက်အောင် လျင်မြန်စွာ ဟစ်ခေါ်သောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what happened when Nay Chi played her recording at a very low sample rate?",
            questionMy:
                "စာပိုဒ် ၃ အရ Nay Chi သည် သူမ၏ အသံသွင်းချက်ကို sample rate အလွန်နိမ့်စွာဖြင့် ဖွင့်ကြည့်သောအခါ မည်သည့်အရာဖြစ်ခဲ့သနည်း။",
            optionsEn: [
              "The calls came out crackly and strange, missing the fine detail of the real sound",
              "The recording became completely silent",
              "The recording turned into a photograph instead",
              "Nothing changed at all",
            ],
            optionsMy: [
              "အသံများသည် ကွဲအက်ပြီး ထူးဆန်းစွာ ထွက်လာကာ တကယ့်အသံ၏ အသေးစိတ်ချောမွေ့မှုများ ပျောက်ဆုံးသွားခဲ့ကြောင်း",
              "အသံသွင်းချက်သည် လုံးဝ ငြိမ်သက်သွားခဲ့ကြောင်း",
              "အသံသွင်းချက်သည် ဓာတ်ပုံတစ်ပုံအဖြစ် ပြောင်းလဲသွားခဲ့ကြောင်း",
              "မည်သည့်အရာမျှ လုံးဝ မပြောင်းလဲခဲ့ကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Ms. Thanda say a higher bit depth allows?",
            questionMy:
                "စာပိုဒ် ၃ အရ Bit Depth ပိုမြင့်ခြင်းက မည်သည့်အရာကို ခွင့်ပြုကြောင်း ဆရာမသန္တာက ပြောခဲ့သနည်း။",
            optionsEn: [
              "Measuring the wave's height more precisely, capturing quieter sounds accurately",
              "Recording for a longer time only",
              "Making the ducks call louder",
              "Reducing the file size to zero",
            ],
            optionsMy: [
              "လှိုင်း၏အမြင့်ကို ပိုတိကျစွာ တိုင်းတာနိုင်ပြီး ငြိမ်သက်သောအသံများကို တိကျစွာ ဖမ်းယူနိုင်ကြောင်း",
              "ကြာမြင့်စွာ အသံသွင်းရုံသာ",
              "ငှက်တောင်းများကို ပိုကျယ်စွာ ဟစ်ခေါ်စေခြင်း",
              "File အရွယ်အစားကို သုညအထိ လျှော့ချခြင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w31-d5",
      dayNumber: 5,
      titleEn: "Digital Sound Round-Up",
      titleMy: "Digital အသံ အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Sampling means...",
          questionMy: "Sampling ဆိုသည်မှာ ...",
          optionsEn: [
            "Measuring a sound wave's height thousands of times per second and storing each as a number",
            "Choosing a free preview of a song",
            "Deleting parts of a recording",
            "Turning a recording into a photograph",
          ],
          optionsMy: [
            "အသံလှိုင်းတစ်ခု၏အမြင့်ကို တစ်စက္ကန့်လျှင် ထောင်ချီ၍ တိုင်းတာကာ ကိန်းဂဏန်းတစ်လုံးစီအဖြစ် သိမ်းဆည်းခြင်း",
            "သီချင်းတစ်ပုဒ်၏ အခမဲ့ ကြိုတင်နမူနာကို ရွေးချယ်ခြင်း",
            "အသံသွင်းချက်တစ်ခု၏ အစိတ်အပိုင်းများ ဖျက်ခြင်း",
            "အသံသွင်းချက်ကို ဓာတ်ပုံတစ်ပုံအဖြစ် ပြောင်းလဲခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Sample rate describes...",
          questionMy: "Sample Rate သည် ... ကို ဖော်ပြသည်။",
          optionsEn: [
            "How many times per second a sound wave is measured",
            "How many musicians are playing",
            "The colour of a waveform on screen",
            "The price of a recording",
          ],
          optionsMy: [
            "တစ်စက္ကန့်လျှင် အသံလှိုင်းကို မည်မျှကြိမ် တိုင်းတာသည်",
            "ဂီတသမား မည်မျှ တီးမှုတ်နေသည်",
            "မျက်နှာပြင်ပေါ်ရှိ Waveform ၏ အရောင်",
            "အသံသွင်းချက်တစ်ခု၏ ဈေးနှုန်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Bit depth for sound works similarly to...",
          questionMy: "အသံအတွက် Bit Depth သည် ... နှင့် တူညီစွာ အလုပ်လုပ်သည်။",
          optionsEn: [
            "Colour depth for images",
            "Resolution for a keyboard",
            "The speed of the internet",
            "The size of a computer screen",
          ],
          optionsMy: [
            "ပုံများအတွက် Colour Depth",
            "ကီးဘုတ်အတွက် Resolution",
            "အင်တာနက်၏ အမြန်နှုန်း",
            "ကွန်ပျူတာမျက်နှာပြင်၏ အရွယ်အစား",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Nay Chi's story, what did a very low sample rate do to her duck recording?",
          questionMy:
              "Nay Chi ၏ ဇာတ်လမ်းတွင် Sample Rate အလွန်နိမ့်ခြင်းက သူမ၏ ငှက်တောင်းအသံသွင်းချက်ကို မည်သို့ဖြစ်စေခဲ့သနည်း။",
          optionsEn: [
            "Made it sound crackly and strange, missing fine detail",
            "Made it sound perfectly clear",
            "Turned it into a silent video",
            "Deleted it completely",
          ],
          optionsMy: [
            "ကွဲအက်ပြီး ထူးဆန်းစွာ ထွက်လာစေပြီး အသေးစိတ်ချောမွေ့မှုများ ပျောက်ဆုံးစေခဲ့ကြောင်း",
            "အလွန်ရှင်းလင်းသော အသံ ထွက်လာစေခဲ့ကြောင်း",
            "အသံမဲ့ဗီဒီယိုတစ်ခုအဖြစ် ပြောင်းလဲသွားစေခဲ့ကြောင်း",
            "လုံးဝ ဖျက်ပစ်လိုက်ခဲ့ကြောင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A digital sound recording is, underneath everything, really just...",
          questionMy:
              "Digital အသံသွင်းချက်တစ်ခုသည် အခြေခံတွင် အမှန်တကယ် ... သာဖြစ်သည်။",
          optionsEn: [
            "A long list of sampled numbers",
            "A single unchanging photograph",
            "A page of typed text",
            "A file that contains no data at all",
          ],
          optionsMy: [
            "Sample ရယူထားသော ကိန်းဂဏန်းစာရင်းရှည်တစ်ခု",
            "အပြောင်းအလဲမရှိသော ဓာတ်ပုံတစ်ပုံတည်း",
            "ရိုက်ထားသော စာသားစာမျက်နှာတစ်ခု",
            "Data လုံးဝမပါသော File တစ်ခု",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek32 = CourseWeekDef(
  id: "course-year6-computing-w32",
  weekNumber: 32,
  titleEn: "Capstone: Nay Chi's 'It's All Just Numbers' Presentation",
  titleMy: "Capstone - နှင်းချည်၏ 'အားလုံးက ကိန်းဂဏန်းများပဲ' တင်ပြချက်",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w32-d1",
      dayNumber: 1,
      titleEn: "Bringing It All Together: What Is Data Representation?",
      titleMy:
          "အားလုံးကို ပေါင်းစည်းခြင်း - Data Representation ဆိုသည်မှာ အဘယ်နည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "What do text, images, and sound all have in common once they are stored on a computer?",
          questionMy:
              "Text, image နှင့် sound အားလုံးကို ကွန်ပျူတာပေါ်တွင် သိမ်းဆည်းပြီးသည်နှင့် ၎င်းတို့တွင် မည်သည့်အချက် တူညီသနည်း။",
          optionsEn: [
            "They are all ultimately represented as patterns of binary numbers",
            "They all must be exactly the same file size",
            "They can never be opened on the same device",
            "They are all measured only in megapixels",
          ],
          optionsMy: [
            "အားလုံးကို Binary ကိန်းဂဏန်းပုံစံများအဖြစ် နောက်ဆုံးတွင် ကိုယ်စားပြု ထားသည်",
            "အားလုံးသည် File အရွယ်အစား အတိအကျ တူညီရမည်",
            "ကိရိယာတစ်ခုတည်းပေါ်တွင် တစ်ပြိုင်နက် ဖွင့်၍မရနိုင်ပါ",
            "အားလုံးကို Megapixel ဖြင့်သာ တိုင်းတာသည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think back across the whole term: bits and bytes in Week 29, pixel colours in Week 30, sound samples in Week 31.",
            "'Data representation' is the umbrella idea that connects all three weeks together.",
          ],
          hintsMy: [
            "ဒီသင်တန်းတစ်ခုလုံးကို ပြန်တွေးကြည့်ပါ — Week 29 ၏ bit/byte များ၊ Week 30 ၏ pixel အရောင်များ၊ Week 31 ၏ sound sample များ။",
            "'Data representation' သည် ဒီသင်တန်းသုံးပတ်လုံးကို ချိတ်ဆက်ပေးသော ကြီးမားသောအယူအဆဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is 'data representation'?",
          questionMy: "'Data Representation' ဆိုသည်မှာ အဘယ်နည်း။",
          optionsEn: [
            "The way different kinds of information -- text, images, sound -- are turned into and stored as numbers a computer can process",
            "A slideshow presentation about a maths topic only",
            "The physical shape of a computer's case",
            "A method for printing documents faster",
          ],
          optionsMy: [
            "Text, image, sound ကဲ့သို့ ကွဲပြားသော အချက်အလက်အမျိုးအစားများကို ကွန်ပျူတာ လုပ်ဆောင်နိုင်သော ကိန်းဂဏန်းများအဖြစ် ပြောင်းလဲသိမ်းဆည်းသည့် နည်းလမ်း",
            "သင်္ချာခေါင်းစဉ်တစ်ခုအတွက်သာ Slideshow တင်ပြမှု",
            "ကွန်ပျူတာ ဗန်း၏ ရုပ်ပိုင်းဆိုင်ရာ ပုံသဏ္ဌာန်",
            "စာတမ်းများကို ပိုမြန်စွာ Print ထုတ်ရန် နည်းလမ်းတစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "It's the name for the whole topic you've been studying this term, not just one narrow part of it.",
            "Think of it as the bridge between 'things humans understand' and 'things a computer can actually store'.",
          ],
          hintsMy: [
            "၎င်းသည် ဒီသင်တန်းတစ်လျှောက် သင်ယူနေခဲ့သော ခေါင်းစဉ်တစ်ခုလုံး၏ အမည်ဖြစ်ပြီး ၎င်း၏ ကျဉ်းမြောင်းသော အစိတ်အပိုင်းတစ်ခုတည်း မဟုတ်ပါ။",
            "'လူသားများ နားလည်သောအရာများ' နှင့် 'ကွန်ပျူတာ အမှန်တကယ် သိမ်းဆည်းနိုင်သောအရာများ' အကြား တံတားတစ်ခုအဖြစ် တွေးကြည့်ပါ။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Which pair correctly matches an image concept with the sound concept that plays a similar role?",
          questionMy:
              "Image concept တစ်ခုနှင့် တူညီသောအခန်းကဏ္ဍဆောင်ရွက်သည့် sound concept ကို မှန်ကန်စွာ ကိုက်ညီစွာဖော်ပြသည့်အတွဲမှာ အဘယ်နည်း။",
          optionsEn: [
            "Colour depth (image) and bit depth (sound) -- both control how precisely each unit is measured",
            "Resolution (image) and file name (sound) -- both are just labels",
            "RGB (image) and volume button (sound) -- both are physical hardware",
            "Pixel (image) and song title (sound) -- both are examples of colour depth",
          ],
          optionsMy: [
            "Colour Depth (image) နှင့် Bit Depth (sound) -- နှစ်ခုစလုံးက ယူနစ်တစ်ခုစီကို မည်မျှတိကျစွာ တိုင်းတာသည်ကို ထိန်းချုပ်သည်",
            "Resolution (image) နှင့် File Name (sound) -- နှစ်ခုစလုံးက Label များသာ ဖြစ်သည်",
            "RGB (image) နှင့် Volume Button (sound) -- နှစ်ခုစလုံးက Hardware ရုပ်ပိုင်းဆိုင်ရာများ ဖြစ်သည်",
            "Pixel (image) နှင့် Song Title (sound) -- နှစ်ခုစလုံးက Colour Depth ၏ ဥပမာများ ဖြစ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Both of these concepts are about how many bits are spent describing one single unit of measurement.",
            "In Week 30 more bits meant more possible colours; in Week 31, more bits meant more precise sound measurements -- same underlying idea.",
          ],
          hintsMy: [
            "ဤအယူအဆနှစ်ခုစလုံးသည် တိုင်းတာမှုယူနစ်တစ်ခုတည်းကို ဖော်ပြရန် Bit မည်မျှ အသုံးပြုသည်နှင့် ပတ်သက်သည်။",
            "Week 30 တွင် Bit ပိုများခြင်းက ဖြစ်နိုင်သောအရောင် ပိုများခြင်းကို ဆိုလိုပြီး Week 31 တွင် Bit ပိုများခြင်းက ပိုတိကျသော အသံတိုင်းတာချက်ကို ဆိုလိုသည် — အခြေခံအယူအဆ တူညီသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why is it useful to understand that everything on a computer is 'just numbers' underneath?",
          questionMy:
              "ကွန်ပျူတာပေါ်ရှိ အရာအားလုံးသည် 'ကိန်းဂဏန်းများသာ' ဖြစ်ကြောင်း နားလည်ခြင်းသည် အဘယ်ကြောင့် အသုံးဝင်သနည်း။",
          optionsEn: [
            "It helps explain why photos, songs, and documents can all be copied, sent, and stored the same basic way",
            "It means computers can no longer make mistakes",
            "It proves that computers can think and feel like humans",
            "It is only useful for professional programmers, never for anyone else",
          ],
          optionsMy: [
            "ဓာတ်ပုံ၊ သီချင်းနှင့် စာတမ်းများကို အခြေခံအားဖြင့် တူညီသောနည်းလမ်းဖြင့် ကူးယူ၊ ပေးပို့၊ သိမ်းဆည်းနိုင်ကြောင်း ရှင်းပြရာတွင် ကူညီသည်",
            "ကွန်ပျူတာများ နောက်ထပ် အမှားလုပ်တော့မည် မဟုတ်ကြောင်း ဆိုလိုသည်",
            "ကွန်ပျူတာများသည် လူသားများကဲ့သို့ တွေးခေါ်၊ ခံစားနိုင်ကြောင်း သက်သေပြသည်",
            "ပရော်ဖက်ရှင်နယ် Programmer များအတွက်သာ အသုံးဝင်ပြီး အခြားမည်သူအတွက်မျှ မဟုတ်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "If everything reduces to the same basic ingredient (numbers), the same tools can move and store very different kinds of files.",
            "This idea explains why one memory card can hold photos, songs, and documents all together, side by side.",
          ],
          hintsMy: [
            "အရာအားလုံးသည် တူညီသောအခြေခံပါဝင်ပစ္စည်း (ကိန်းဂဏန်းများ) သို့ လျော့ကျသွားပါက တူညီသောကိရိယာများသည် လုံးဝကွဲပြားသော File အမျိုးအစားများကို ရွှေ့ယူ၊ သိမ်းဆည်းနိုင်သည်။",
            "ဤအယူအဆက Memory Card တစ်ခုတည်းသည် ဓာတ်ပုံ၊ သီချင်းနှင့် စာတမ်းများကို အတူတကွ ဘေးချင်းယှဉ် သိမ်းဆည်းနိုင်ကြောင်း ရှင်းပြပေးသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w32-d2",
      dayNumber: 2,
      titleEn: "Match the Whole-Term Vocabulary",
      titleMy: "သင်တန်းတစ်ခုလုံး၏ ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w32-dm-1",
          termEn: "Data representation",
          termMy: "Data Representation (အချက်အလက် ကိုယ်စားပြုမှု)",
          matchEn:
              "The way information such as text, images, and sound is turned into numbers a computer can store",
          matchMy:
              "Text, image, sound ကဲ့သို့ အချက်အလက်များကို ကွန်ပျူတာ သိမ်းဆည်းနိုင်သော ကိန်းဂဏန်းများအဖြစ် ပြောင်းလဲသည့်နည်းလမ်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w32-dm-2",
          termEn: "Bit",
          termMy: "Bit (ဒေတာအသေးငယ်ဆုံးယူနစ်)",
          matchEn:
              "The smallest piece of information a computer stores, either 0 or 1",
          matchMy: "ကွန်ပျူတာ သိမ်းဆည်းသော အသေးငယ်ဆုံးအချက်အလက်၊ 0 သို့မဟုတ် 1",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w32-dm-3",
          termEn: "Pixel",
          termMy: "Pixel (ပုံစိတ်အသေးငယ်)",
          matchEn:
              "One tiny coloured square that combines with others to form a digital image",
          matchMy:
              "အခြားစတုရန်းများနှင့် ပေါင်းစပ်၍ digital image တစ်ပုံ ဖြစ်လာသော အရောင်ပါသော အလွန်သေးငယ်သည့် စတုရန်းတစ်ခု",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w32-dm-4",
          termEn: "Sample rate",
          termMy: "Sample Rate (နမူနာယူနှုန်း)",
          matchEn:
              "How many times per second a sound wave is measured and recorded",
          matchMy:
              "တစ်စက္ကန့်လျှင် အသံလှိုင်းကို မည်မျှကြိမ် တိုင်းတာ၍ မှတ်တမ်းတင်သည်",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w32-dm-5",
          termEn: "Colour depth",
          termMy: "Colour Depth (အရောင်အတိကျအဆင့်)",
          matchEn:
              "The number of bits used to store one pixel's colour, controlling how many colours are possible",
          matchMy:
              "Pixel တစ်ခု၏ အရောင်ကို သိမ်းဆည်းရန် အသုံးပြုသော Bit အရေအတွက်၊ ဖြစ်နိုင်သော အရောင်အရေအတွက်ကို ထိန်းချုပ်သည်",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w32-dm-6",
          termEn: "Byte",
          termMy: "Byte (Bit ရှစ်လုံးအုပ်စု)",
          matchEn:
              "A group of 8 bits, enough to store one basic piece of information",
          matchMy:
              "Bit ၈ လုံးအုပ်စု၊ အခြေခံအချက်အလက်တစ်ခု သိမ်းဆည်းရန် လုံလောက်သည်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w32-d3",
      dayNumber: 3,
      titleEn: "Sort: Image-Related or Sound-Related?",
      titleMy: "စီစစ်ကြမည် - Image နှင့်သက်ဆိုင်လား၊ Sound နှင့်သက်ဆိုင်လား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Image-Related", "Sound-Related"],
        bucketsMy: ["Image နှင့်သက်ဆိုင်သည်", "Sound နှင့်သက်ဆိုင်သည်"],
        items: [
          SortingItem(
            id: "y6comp-w32-sort-1",
            labelEn: "Pixel",
            labelMy: "Pixel (ပုံစိတ်အသေးငယ်)",
            correctBucketEn: "Image-Related",
            correctBucketMy: "Image နှင့်သက်ဆိုင်သည်",
          ),
          SortingItem(
            id: "y6comp-w32-sort-2",
            labelEn: "Sample rate",
            labelMy: "Sample Rate (နမူနာယူနှုန်း)",
            correctBucketEn: "Sound-Related",
            correctBucketMy: "Sound နှင့်သက်ဆိုင်သည်",
          ),
          SortingItem(
            id: "y6comp-w32-sort-3",
            labelEn: "Resolution",
            labelMy: "Resolution (ပုံရှင်းလင်းမှုအဆင့်)",
            correctBucketEn: "Image-Related",
            correctBucketMy: "Image နှင့်သက်ဆိုင်သည်",
          ),
          SortingItem(
            id: "y6comp-w32-sort-4",
            labelEn: "Waveform",
            labelMy: "Waveform (လှိုင်းပုံစံ)",
            correctBucketEn: "Sound-Related",
            correctBucketMy: "Sound နှင့်သက်ဆိုင်သည်",
          ),
          SortingItem(
            id: "y6comp-w32-sort-5",
            labelEn: "RGB",
            labelMy: "RGB (အနီ၊ အစိမ်း၊ အပြာ)",
            correctBucketEn: "Image-Related",
            correctBucketMy: "Image နှင့်သက်ဆိုင်သည်",
          ),
          SortingItem(
            id: "y6comp-w32-sort-6",
            labelEn: "Sampling",
            labelMy: "Sampling (နမူနာယူခြင်း)",
            correctBucketEn: "Sound-Related",
            correctBucketMy: "Sound နှင့်သက်ဆိုင်သည်",
          ),
          SortingItem(
            id: "y6comp-w32-sort-7",
            labelEn: "Megapixel",
            labelMy: "Megapixel (ပုံစိတ်သန်းချီ)",
            correctBucketEn: "Image-Related",
            correctBucketMy: "Image နှင့်သက်ဆိုင်သည်",
          ),
          SortingItem(
            id: "y6comp-w32-sort-8",
            labelEn: "Bit depth (sound)",
            labelMy: "Bit Depth - Sound (အသံ Bit အနက်ရှိုင်းမှု)",
            correctBucketEn: "Sound-Related",
            correctBucketMy: "Sound နှင့်သက်ဆိုင်သည်",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w32-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's 'It's All Just Numbers' Presentation",
      titleMy: "စာဖတ်ခြင်း - နှင်းချည်၏ 'အားလုံးက ကိန်းဂဏန်းများပဲ' တင်ပြချက်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's 'It's All Just Numbers' Presentation",
        titleMy: "နှင်းချည်၏ 'အားလုံးက ကိန်းဂဏန်းများပဲ' တင်ပြချက်",
        passageEn:
            "For her Term 8 capstone, Nay Chi chose to present something bigger than any single topic: how everything the class had studied this term actually fit together. She started with the four light bulbs from Week 29, flicking them into a simple pattern. 'This is a bit, and this is a byte,' she told the class. 'Every switch in a computer chip is only ever off or on -- and from just that simple idea, everything else this term grows.'\n\nNext, she projected her zoomed-in class photo from Week 30, the smooth picture dissolving into a grid of coloured squares. 'Each of these pixels stores a colour as numbers, using red, green, and blue light,' she explained, 'and colour depth decides how many shades are possible.' Then she played a short clip of her Nova Lake duck recording from Week 31, pointing at its rippling waveform. 'Sound works the same underlying way. Thousands of times a second, a microphone measures the wave's height and writes down a number -- that's sampling. Bit depth decides how precisely each measurement can be captured, exactly like colour depth did for pixels.'\n\nZin Ko asked the question Nay Chi had been hoping someone would ask: 'So a photo, a song, and a page of text are all just... numbers, really?' 'Exactly,' Nay Chi said. 'Different kinds of numbers, organised in different patterns, but numbers underneath all of it. That's why the same memory card can hold my duck photos, my duck recordings, and my written research notes all together, side by side.' Ms. Thanda smiled from the back of the room. 'Next year at Secondary school,' she added, 'you'll learn exactly how to convert between denary and binary by hand -- the maths behind everything Nay Chi just showed you. Today was your sneak peek of why that maths will actually matter.' Nay Chi looked at her four light bulbs one last time, one lit, three dark, and felt, for the first time, that she understood exactly what they had been quietly telling her all term.",
        passageMy:
            "Term 8 Capstone အတွက် Nay Chi သည် ခေါင်းစဉ်တစ်ခုတည်းထက် ပိုကြီးမားသော အရာတစ်ခုကို တင်ပြရန် ရွေးချယ်ခဲ့သည် — ဒီသင်တန်းတစ်လျှောက် အတန်းက လေ့လာခဲ့သမျှ အားလုံး အမှန်တကယ် မည်သို့ ပေါင်းစည်းနေသည်ကို ဖြစ်သည်။ သူမသည် Week 29 ၏ မီးလုံးလေးလုံးဖြင့် စတင်ကာ ၎င်းတို့ကို ရိုးရှင်းသောပုံစံတစ်ခုအဖြစ် ဖွင့်ပြသည်။ 'ဒါက bit တစ်ခုပါ၊ ဒါက byte တစ်ခုပါ' ဟု သူမက အတန်းအား ပြောခဲ့သည်။ 'ကွန်ပျူတာ Chip ရှိ Switch တိုင်းသည် ပိတ် သို့မဟုတ် ဖွင့် နှစ်မျိုးအနက် တစ်မျိုးသာ ဖြစ်ပြီး — ထိုရိုးရှင်းသောအယူအဆတစ်ခုတည်းမှသာ ဒီသင်တန်း၏ အခြားအရာအားလုံး ကြီးထွားလာခြင်းဖြစ်သည်' ။\n\nထို့နောက် သူမသည် Week 30 က သူမ၏ zoom in ပြုလုပ်ထားသော အတန်းဓာတ်ပုံကို ပြသခဲ့ပြီး ချောမွေ့သောပုံသည် အရောင်ပါသော စတုရန်းများ ဇယားတစ်ခုအဖြစ် ပျောက်ကွယ်သွားသည်။ 'ဤ Pixel တစ်ခုစီသည် အနီ၊ အစိမ်းနှင့် အပြာအလင်းရောင်ကို အသုံးပြု၍ အရောင်ကို ကိန်းဂဏန်းများအဖြစ် သိမ်းဆည်းထားပြီး' ဟု သူမက ရှင်းပြခဲ့သည်၊ 'colour depth က ဖြစ်နိုင်သော အရောင်ကွဲအရေအတွက်ကို ဆုံးဖြတ်သည်' ။ ထို့နောက် သူမသည် Week 31 ၏ Nova Lake ငှက်တောင်း အသံသွင်းချက် တိုတိုလေးကို ဖွင့်ပြီး ၎င်း၏ လှိုင်းပုံစံ waveform ကို လက်ညှိုးထိုးပြသည်။ 'Sound သည် တူညီသောအခြေခံနည်းလမ်းဖြင့် အလုပ်လုပ်သည်။ တစ်စက္ကန့်လျှင် အကြိမ်ထောင်ချီ၍ Microphone တစ်ခုသည် လှိုင်း၏အမြင့်ကို တိုင်းတာကာ ကိန်းဂဏန်းတစ်လုံးကို ချရေးသည် — ၎င်းကို sampling ဟု ခေါ်သည်။ Bit depth က တိုင်းတာချက်တစ်ခုစီကို မည်မျှတိကျစွာ ဖမ်းယူနိုင်သည်ကို ဆုံးဖြတ်သည်၊ Pixel များအတွက် colour depth ကဲ့သို့ပင်' ။\n\nဇင်ကိုက Nay Chi မျှော်လင့်နေသော မေးခွန်းကို မေးခဲ့သည်။ 'ဒါဆို ဓာတ်ပုံတစ်ပုံ၊ သီချင်းတစ်ပုဒ်နှင့် စာစာမျက်နှာတစ်ခုသည် အားလုံး... ကိန်းဂဏန်းများသာ တကယ်ဖြစ်နေတာလား' ။ 'အတိအကျပါပဲ' ဟု Nay Chi က ပြောခဲ့သည်။ 'ကွဲပြားသော ကိန်းဂဏန်းအမျိုးအစားများ၊ ကွဲပြားသောပုံစံများဖြင့် စီစဉ်ထားသော်လည်း ၎င်းတို့ အားလုံးအောက်တွင် ကိန်းဂဏန်းများသာ ရှိကြသည်။ ဒါကြောင့် Memory Card တစ်ခုတည်းသည် ငါ့ငှက်တောင်းဓာတ်ပုံများ၊ ငါ့ငှက်တောင်းအသံသွင်းချက်များနှင့် ငါ့ရေးသားထားသော သုတေသနမှတ်စုများကို ဘေးချင်းယှဉ် အတူတကွ သိမ်းဆည်းထားနိုင်တာပါ' ။ ဆရာမသန္တာသည် အခန်းနောက်ဘက်မှ ပြုံးလိုက်သည်။ 'နောက်နှစ် Secondary ကျောင်းတွင်' ဟု သူမက ဖြည့်စွက်ပြောခဲ့သည်၊ 'Denary နှင့် Binary အကြား လက်ဖြင့် တိတိကျကျ ပြောင်းလဲနည်းကို သင်ယူရမည် — Nay Chi ယခုတင်ပြသမျှ၏ နောက်ကွယ်ရှိ သင်္ချာဖြစ်သည်။ ဒီနေ့သည် ထိုသင်္ချာ တကယ်အရေးကြီးမည့်အကြောင်းရင်း၏ Sneak Peek ဖြစ်ခဲ့သည်' ။ Nay Chi သည် သူမ၏ မီးလုံးလေးလုံးကို နောက်ဆုံးတစ်ကြိမ် ကြည့်လိုက်ပြီး တစ်လုံးတောက်၊ သုံးလုံးမှောင်နေသည်ကို မြင်တွေ့ကာ ၎င်းတို့ သင်တန်းတစ်လျှောက်လုံး သူမအား တိတ်တဆိတ် ပြောပြနေခဲ့သည့်အရာကို ပထမဆုံးအကြိမ်အဖြစ် အတိအကျ နားလည်သွားသည်ဟု ခံစားလိုက်ရသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what did Nay Chi use the four light bulbs from Week 29 to explain?",
            questionMy:
                "စာပိုဒ် ၁ အရ Week 29 ၏ မီးလုံးလေးလုံးကို Nay Chi က မည်သည့်အရာကို ရှင်းပြရန် အသုံးပြုခဲ့သနည်း။",
            optionsEn: [
              "What a bit and a byte are",
              "How to draw a waveform",
              "How to take a photograph",
              "How to record a duck call",
            ],
            optionsMy: [
              "Bit တစ်ခုနှင့် Byte တစ်ခုသည် အဘယ်နည်းဆိုသည်ကို",
              "Waveform တစ်ခုကို ဘယ်လိုဆွဲရမလဲဆိုသည်ကို",
              "ဓာတ်ပုံတစ်ပုံ ဘယ်လိုရိုက်ရမလဲဆိုသည်ကို",
              "ငှက်တောင်းအသံကို ဘယ်လိုသွင်းရမလဲဆိုသည်ကို",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what did Nay Chi say bit depth for sound is 'exactly like'?",
            questionMy:
                "စာပိုဒ် ၂ အရ Sound အတွက် Bit Depth သည် 'မည်သည့်အရာနှင့် အတိအကျတူညီ' ကြောင်း Nay Chi က ပြောခဲ့သနည်း။",
            optionsEn: [
              "Colour depth for pixels",
              "Resolution for a keyboard",
              "The price of a camera",
              "The length of a song",
            ],
            optionsMy: [
              "Pixel များအတွက် Colour Depth",
              "ကီးဘုတ်အတွက် Resolution",
              "ကင်မရာတစ်ခု၏ ဈေးနှုန်း",
              "သီချင်းတစ်ပုဒ်၏ ကြာချိန်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Nay Chi say made it possible for one memory card to hold photos, recordings, and notes together?",
            questionMy:
                "စာပိုဒ် ၃ အရ Memory Card တစ်ခုတည်းသည် ဓာတ်ပုံ၊ အသံသွင်းချက်နှင့် မှတ်စုများကို အတူတကွ သိမ်းဆည်းနိုင်ရန် မည်သည့်အချက်က ဖြစ်နိုင်စေကြောင်း Nay Chi က ပြောခဲ့သနည်း။",
            optionsEn: [
              "That every file type is really just numbers underneath, organised in different patterns",
              "That the memory card was specially made only for Nay Chi",
              "That photos and sound cannot actually be stored together, only text can",
              "That the school bought an unusually large memory card",
            ],
            optionsMy: [
              "File အမျိုးအစားတိုင်းသည် ကွဲပြားသောပုံစံများဖြင့် စီစဉ်ထားသော်လည်း အောက်ခြေတွင် ကိန်းဂဏန်းများသာ တကယ်ဖြစ်နေကြောင်း",
              "Memory Card ကို Nay Chi အတွက်သာ အထူးလုပ်ထားကြောင်း",
              "ဓာတ်ပုံနှင့် အသံကို အတူတကွ သိမ်းဆည်း၍ အမှန်တကယ် မရနိုင်ဘဲ Text ကိုသာ သိမ်းဆည်းနိုင်ကြောင်း",
              "ကျောင်းက ထူးထူးဆန်းဆန်း ကြီးမားသော Memory Card ဝယ်ယူထားကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what will students learn next year at Secondary school, according to Ms. Thanda?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဆရာမသန္တာ၏အဆိုအရ ကျောင်းသားများသည် နောက်နှစ် Secondary ကျောင်းတွင် မည်သည့်အရာကို သင်ယူရမည်နည်း။",
            optionsEn: [
              "Exactly how to convert between denary and binary by hand",
              "How to build a physical computer chip",
              "How to migrate like Nova Lake's ducks",
              "How to play a musical instrument",
            ],
            optionsMy: [
              "Denary နှင့် Binary အကြား လက်ဖြင့် တိတိကျကျ ပြောင်းလဲနည်း",
              "ကွန်ပျူတာ Chip အစစ်တစ်ခု ဘယ်လိုတည်ဆောက်ရမလဲဆိုသည်",
              "Nova Lake ငှက်တောင်းများကဲ့သို့ ရွှေ့ပြောင်းနည်း",
              "တူရိယာတစ်ခု ဘယ်လိုတီးမှုတ်ရမလဲဆိုသည်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w32-d5",
      dayNumber: 5,
      titleEn: "Data Representation Term Round-Up",
      titleMy: "Data Representation သင်တန်း အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "A bit is...",
          questionMy: "Bit တစ်ခုသည် ...",
          optionsEn: [
            "The smallest piece of information a computer stores, either 0 or 1",
            "A group of 8 pixels",
            "A unit of sound volume only",
            "A camera brand",
          ],
          optionsMy: [
            "ကွန်ပျူတာ သိမ်းဆည်းသော အသေးငယ်ဆုံးအချက်အလက်၊ 0 သို့မဟုတ် 1",
            "Pixel ၈ ခုအုပ်စု",
            "အသံအတိုးအကျယ်ယူနစ်သာ",
            "ကင်မရာအမှတ်တံဆိပ်တစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A pixel stores its colour using...",
          questionMy:
              "Pixel တစ်ခုသည် ၎င်း၏အရောင်ကို ... အသုံးပြု၍ သိမ်းဆည်းသည်။",
          optionsEn: [
            "Numbers describing red, green, and blue light",
            "A tiny paintbrush inside the screen",
            "A single word written by the user",
            "The temperature of the room",
          ],
          optionsMy: [
            "အနီ၊ အစိမ်းနှင့် အပြာအလင်းရောင်ကို ဖော်ပြသော ကိန်းဂဏန်းများ",
            "မျက်နှာပြင်အတွင်းရှိ အလွန်သေးငယ်သော ဆေးတံတစ်ချောင်း",
            "အသုံးပြုသူ ရေးသားလိုက်သော စကားလုံးတစ်လုံးတည်း",
            "အခန်း၏ အပူချိန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Sampling turns a sound wave into...",
          questionMy: "Sampling သည် အသံလှိုင်းကို ... အဖြစ် ပြောင်းလဲပေးသည်။",
          optionsEn: [
            "A long list of numbers measured thousands of times per second",
            "A single unchanging photograph",
            "A completely silent file",
            "A drawing of a duck",
          ],
          optionsMy: [
            "တစ်စက္ကန့်လျှင် အကြိမ်ထောင်ချီ၍ တိုင်းတာထားသော ကိန်းဂဏန်း စာရင်းရှည်တစ်ခု",
            "အပြောင်းအလဲမရှိသော ဓာတ်ပုံတစ်ပုံတည်း",
            "လုံးဝ ငြိမ်သက်နေသော File တစ်ခု",
            "ငှက်တောင်းတစ်ကောင် ပုံဆွဲချက်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Colour depth and bit depth (sound) play a similar role because...",
          questionMy:
              "Colour Depth နှင့် Bit Depth (Sound) တို့သည် ဆင်တူသော အခန်းကဏ္ဍကို ဆောင်ရွက်ရသည်မှာ ...",
          optionsEn: [
            "Both control how many bits are used to describe one measurement precisely",
            "Both control how loud a computer's speakers are",
            "Both are only used for printing documents",
            "Both are unrelated ideas that just happen to sound similar",
          ],
          optionsMy: [
            "နှစ်ခုစလုံးသည် တိုင်းတာချက်တစ်ခုကို တိကျစွာဖော်ပြရန် Bit မည်မျှအသုံးပြုသည်ကို ထိန်းချုပ်ကြသောကြောင့်",
            "နှစ်ခုစလုံးသည် ကွန်ပျူတာစပီကာများ မည်မျှကျယ်သည်ကို ထိန်းချုပ်ကြသောကြောင့်",
            "နှစ်ခုစလုံးကို စာတမ်း Print ထုတ်ရန်သာ အသုံးပြုသောကြောင့်",
            "နှစ်ခုစလုံးသည် အသံတူနေရုံဖြင့် မသက်ဆိုင်သော အယူအဆများ ဖြစ်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "According to Nay Chi's capstone, what is the deepest idea connecting binary, images, and sound?",
          questionMy:
              "Nay Chi ၏ Capstone အရ Binary, Image နှင့် Sound တို့ကို ချိတ်ဆက်ပေးသည့် အနက်ရှိုင်းဆုံးအယူအဆမှာ အဘယ်နည်း။",
          optionsEn: [
            "Everything a computer stores is, underneath, really just numbers",
            "Only images can be stored on a computer",
            "Sound and images use completely unrelated storage methods",
            "Binary is only used for calculators, not for photos or sound",
          ],
          optionsMy: [
            "ကွန်ပျူတာသိမ်းဆည်းသော အရာအားလုံးသည် အောက်ခြေတွင် ကိန်းဂဏန်းများသာ အမှန်တကယ်ဖြစ်ကြောင်း",
            "Image များကိုသာ ကွန်ပျူတာပေါ်တွင် သိမ်းဆည်းနိုင်ကြောင်း",
            "Sound နှင့် Image သည် လုံးဝမသက်ဆိုင်သော သိမ်းဆည်းနည်းများ အသုံးပြုကြောင်း",
            "Binary ကို Calculator များအတွက်သာ အသုံးပြုပြီး ဓာတ်ပုံ သို့မဟုတ် အသံအတွက် မဟုတ်ကြောင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _year6ComputingTerm8 = CourseTermDef(
  id: "course-year6-computing-t8",
  termNumber: 8,
  titleEn: "Data Representation: Images, Sound and Binary",
  titleMy: "Data Representation - Image, Sound နှင့် Binary",
  certificateTitleEn: "Data Representation Explorer",
  certificateTitleMy: "Data Representation စူးစမ်းရှာဖွေသူ",
  weeks: [
    _year6ComputingWeek29,
    _year6ComputingWeek30,
    _year6ComputingWeek31,
    _year6ComputingWeek32,
  ],
);
