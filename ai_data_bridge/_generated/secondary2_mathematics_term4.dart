const CourseWeekDef _secondary2MathematicsWeek13 = CourseWeekDef(
  id: "course-secondary2-mathematics-w13",
  weekNumber: 13,
  titleEn: "Calculating with Fractions",
  titleMy: "အပိုင်းကိန်းများဖြင့် တွက်ချက်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w13-d1",
      dayNumber: 1,
      titleEn: "Mixed Numbers, Multiplying, and Dividing Fractions",
      titleMy: "ရောစပ်ကိန်းများ၊ အပိုင်းကိန်းများ မြှောက်ခြင်းနှင့် စားခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is 2 1/3 + 1 1/4? (Give as a mixed number)",
          questionMy:
              "2 1/3 + 1 1/4 သည် မည်မျှဖြစ်သနည်း။ (ရောစပ်ကိန်းအဖြစ် ပေးပါ)",
          optionsEn: ["3 7/12", "3 2/7", "3 1/2", "4 1/12"],
          optionsMy: ["3 7/12", "3 2/7", "3 1/2", "4 1/12"],
          correctIndex: 0,
          hintsEn: [
            "First find a common denominator for 1/3 and 1/4 -- the smallest one is 12.",
            "1/3 = 4/12 and 1/4 = 3/12, so 4/12 + 3/12 = 7/12. Add the whole numbers separately: 2 + 1 = 3.",
          ],
          hintsMy: [
            "1/3 နှင့် 1/4 အတွက် ဘုံခြေဆိုင်ရာကိန်းကို ပထမဆုံးရှာပါ — အသေးဆုံးမှာ 12 ဖြစ်သည်။",
            "1/3 = 4/12 နှင့် 1/4 = 3/12 ဖြစ်သောကြောင့် 4/12 + 3/12 = 7/12။ ကိန်းပြည့်များကို သီးခြားစီပေါင်းပါ — 2 + 1 = 3။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is 3/4 - 1/6?",
          questionMy: "3/4 - 1/6 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["7/12", "2/2", "1/3", "5/6"],
          optionsMy: ["7/12", "2/2", "1/3", "5/6"],
          correctIndex: 0,
          hintsEn: [
            "The lowest common denominator of 4 and 6 is 12.",
            "3/4 = 9/12 and 1/6 = 2/12, so 9/12 - 2/12 = 7/12.",
          ],
          hintsMy: [
            "4 နှင့် 6 ၏ အနည်းဆုံးဘုံခြေဆိုင်ရာကိန်းသည် 12 ဖြစ်သည်။",
            "3/4 = 9/12 နှင့် 1/6 = 2/12 ဖြစ်သောကြောင့် 9/12 - 2/12 = 7/12 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is 2/3 × 3/5?",
          questionMy: "2/3 × 3/5 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["6/15 (simplified to 2/5)", "5/8", "6/8", "9/10"],
          optionsMy: [
            "6/15 (2/5 အဖြစ် ရိုးရှင်းအောင်ပြု)",
            "5/8",
            "6/8",
            "9/10",
          ],
          correctIndex: 0,
          hintsEn: [
            "To multiply fractions, multiply the numerators together and the denominators together.",
            "2 × 3 = 6, and 3 × 5 = 15, giving 6/15, which simplifies to 2/5.",
          ],
          hintsMy: [
            "အပိုင်းကိန်းများကို မြှောက်ရန် Numerator များကို အတူတကွ၊ Denominator များကို အတူတကွ မြှောက်ပါ။",
            "2 × 3 = 6 ဖြစ်ပြီး 3 × 5 = 15 ဖြစ်သောကြောင့် 6/15 ရရှိပြီး 2/5 အဖြစ် ရိုးရှင်းသွားသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is 1/2 ÷ 1/4?",
          questionMy: "1/2 ÷ 1/4 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["2", "1/8", "1/2", "8"],
          optionsMy: ["2", "1/8", "1/2", "8"],
          correctIndex: 0,
          hintsEn: [
            "Dividing by a fraction is the same as multiplying by its reciprocal (flipped fraction).",
            "1/2 ÷ 1/4 = 1/2 × 4/1 = 4/2 = 2.",
          ],
          hintsMy: [
            "အပိုင်းကိန်းတစ်ခုဖြင့် စားခြင်းသည် ၎င်း၏ Reciprocal (ပြောင်းပြန်လှန်ထားသောအပိုင်းကိန်း) ဖြင့် မြှောက်ခြင်းနှင့် တူသည်။",
            "1/2 ÷ 1/4 = 1/2 × 4/1 = 4/2 = 2 ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w13-d2",
      dayNumber: 2,
      titleEn: "Match the Fractions Vocabulary",
      titleMy: "အပိုင်းကိန်း ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w13-dm-1",
          termEn: "Mixed Number",
          termMy: "ရောစပ်ကိန်း (Mixed Number)",
          matchEn: "A whole number combined with a fraction, e.g. 2 1/3",
          matchMy:
              "ကိန်းပြည့်တစ်ခုနှင့် အပိုင်းကိန်းတစ်ခု ပေါင်းစပ်ထားသည်၊ ဥပမာ 2 1/3",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w13-dm-2",
          termEn: "Common Denominator",
          termMy: "ဘုံခြေဆိုင်ရာကိန်း (Common Denominator)",
          matchEn:
              "A shared bottom number that lets fractions be added or subtracted",
          matchMy:
              "အပိုင်းကိန်းများကို ပေါင်းနုတ်နိုင်စေရန် ဝေမျှသောအောက်ခြေကိန်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w13-dm-3",
          termEn: "Reciprocal",
          termMy: "Reciprocal (ပြောင်းပြန်လှန်ကိန်း)",
          matchEn:
              "A fraction flipped upside down, e.g. the reciprocal of 1/4 is 4/1",
          matchMy:
              "အပေါ်အောက် ပြောင်းပြန်လှန်ထားသောအပိုင်းကိန်း၊ ဥပမာ 1/4 ၏ Reciprocal သည် 4/1 ဖြစ်သည်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w13-dm-4",
          termEn: "Numerator",
          termMy: "Numerator (အပေါ်ခြေကိန်း)",
          matchEn: "The top number of a fraction",
          matchMy: "အပိုင်းကိန်း၏ အပေါ်ဂဏန်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w13-dm-5",
          termEn: "Denominator",
          termMy: "Denominator (အောက်ခြေကိန်း)",
          matchEn: "The bottom number of a fraction",
          matchMy: "အပိုင်းကိန်း၏ အောက်ဂဏန်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w13-dm-6",
          termEn: "Simplify a Fraction",
          termMy: "အပိုင်းကိန်း ရိုးရှင်းအောင်ပြုလုပ်ခြင်း",
          matchEn:
              "Dividing both numerator and denominator by their highest common factor",
          matchMy:
              "Numerator နှင့် Denominator နှစ်ခုစလုံးကို ၎င်းတို့၏ Highest Common Factor ဖြင့် စားခြင်း",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w13-d3",
      dayNumber: 3,
      titleEn: "Sort: Correctly Calculated or Incorrectly Calculated?",
      titleMy: "စီစစ်ကြမည် - မှန်ကန်စွာ တွက်ချက်ထားလား၊ မှားယွင်းစွာလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Correctly Calculated", "Incorrectly Calculated"],
        bucketsMy: ["မှန်ကန်စွာ တွက်ချက်ထား", "မှားယွင်းစွာ တွက်ချက်ထား"],
        items: [
          SortingItem(
            id: "s2math-w13-sort-1",
            labelEn: "1/2 + 1/4 = 3/4",
            labelMy: "1/2 + 1/4 = 3/4",
            correctBucketEn: "Correctly Calculated",
            correctBucketMy: "မှန်ကန်စွာ တွက်ချက်ထား",
          ),
          SortingItem(
            id: "s2math-w13-sort-2",
            labelEn: "1/2 + 1/4 = 2/6",
            labelMy: "1/2 + 1/4 = 2/6",
            correctBucketEn: "Incorrectly Calculated",
            correctBucketMy: "မှားယွင်းစွာ တွက်ချက်ထား",
          ),
          SortingItem(
            id: "s2math-w13-sort-3",
            labelEn: "2/3 × 1/2 = 2/6 (simplified to 1/3)",
            labelMy: "2/3 × 1/2 = 2/6 (1/3 အဖြစ် ရိုးရှင်းအောင်ပြု)",
            correctBucketEn: "Correctly Calculated",
            correctBucketMy: "မှန်ကန်စွာ တွက်ချက်ထား",
          ),
          SortingItem(
            id: "s2math-w13-sort-4",
            labelEn: "2/3 × 1/2 = 3/5",
            labelMy: "2/3 × 1/2 = 3/5",
            correctBucketEn: "Incorrectly Calculated",
            correctBucketMy: "မှားယွင်းစွာ တွက်ချက်ထား",
          ),
          SortingItem(
            id: "s2math-w13-sort-5",
            labelEn: "3/4 ÷ 1/2 = 3/2 (or 1 1/2)",
            labelMy: "3/4 ÷ 1/2 = 3/2 (သို့မဟုတ် 1 1/2)",
            correctBucketEn: "Correctly Calculated",
            correctBucketMy: "မှန်ကန်စွာ တွက်ချက်ထား",
          ),
          SortingItem(
            id: "s2math-w13-sort-6",
            labelEn: "3/4 ÷ 1/2 = 3/8",
            labelMy: "3/4 ÷ 1/2 = 3/8",
            correctBucketEn: "Incorrectly Calculated",
            correctBucketMy: "မှားယွင်းစွာ တွက်ချက်ထား",
          ),
          SortingItem(
            id: "s2math-w13-sort-7",
            labelEn: "1 1/2 + 1/2 = 2",
            labelMy: "1 1/2 + 1/2 = 2",
            correctBucketEn: "Correctly Calculated",
            correctBucketMy: "မှန်ကန်စွာ တွက်ချက်ထား",
          ),
          SortingItem(
            id: "s2math-w13-sort-8",
            labelEn: "5/6 - 1/3 = 1/2",
            labelMy: "5/6 - 1/3 = 1/2",
            correctBucketEn: "Correctly Calculated",
            correctBucketMy: "မှန်ကန်စွာ တွက်ချက်ထား",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w13-d4",
      dayNumber: 4,
      titleEn: "Reading: Su Su's Recipe Scaling",
      titleMy: "စာဖတ်ခြင်း - စုစု၏ ဟင်းချက်နည်း အချိုးအဆချိန်ညှိခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Su Su's Recipe Scaling",
        titleMy: "စုစု၏ ဟင်းချက်နည်း အချိုးအဆချိန်ညှိခြင်း",
        passageEn:
            "Su Su's family recipe for mohinga called for 2 1/2 cups of rice noodles per batch, but for a class food festival, Su Su needed to make one and a half times the usual amount. \"One and a half times means multiplying by 3/2,\" her mother explained, showing her how to convert 1 1/2 into the improper fraction 3/2 first.\n\nSu Su calculated 2 1/2 × 3/2. Converting 2 1/2 to an improper fraction gave 5/2, so the calculation became 5/2 × 3/2 = 15/4, which converted back to a mixed number was 3 3/4 cups. \"So I need 3 3/4 cups of noodles instead of 2 1/2,\" Su Su confirmed.\n\nThe recipe also called for 3/4 cup of fish sauce, and her mother asked what happened if they only had 1/2 cup of fish sauce left -- what fraction of the full recipe could they actually make? Su Su set up the division: 1/2 ÷ 3/4 = 1/2 × 4/3 = 4/6, which simplified to 2/3. \"We can only make two-thirds of the full recipe with that much fish sauce,\" she said, \"which means I'd need to scale every other ingredient down by 2/3 too, to keep the proportions correct.\"",
        passageMy:
            "စုစု၏ မိသားစု မုန့်ဟင်းခါး ဟင်းချက်နည်းတွင် တစ်အသုတ်လျှင် ခေါက်ဆွဲ ၂ ၁/၂ ခွက်ခန့် လိုအပ်ခဲ့သော်လည်း အတန်းအစားအသောက်ပွဲအတွက် စုစုသည် ပုံမှန်ပမာဏ၏ တစ်ဆခွဲအလုံး ချက်ပြုတ်ရန် လိုအပ်ခဲ့သည်။ 'တစ်ဆခွဲ ဆိုသည်မှာ 3/2 ဖြင့် မြှောက်ခြင်းကို ဆိုလိုတယ်' ဟု သူမ၏ အမေက ရှင်းပြခဲ့ပြီး 1 1/2 ကို Improper Fraction 3/2 အဖြစ် ပထမဆုံး မည်သို့ ပြောင်းလဲရမည်ကို ပြသခဲ့သည်။\n\nစုစုသည် 2 1/2 × 3/2 ကို တွက်ချက်ခဲ့သည်။ 2 1/2 ကို Improper Fraction သို့ ပြောင်းလဲလိုက်ရာ 5/2 ရရှိသောကြောင့် တွက်ချက်မှုသည် 5/2 × 3/2 = 15/4 ဖြစ်လာခဲ့ပြီး ရောစပ်ကိန်းသို့ ပြန်ပြောင်းလိုက်ရာ 3 3/4 ခွက် ဖြစ်လာသည်။ 'ဒါဆို ငါ့ကို 2 1/2 ခွက်အစား ခေါက်ဆွဲ 3 3/4 ခွက် လိုတယ်' ဟု စုစု အတည်ပြုခဲ့သည်။\n\nဟင်းချက်နည်းတွင် ငါးငံပြာရည် 3/4 ခွက်လည်း လိုအပ်ခဲ့ပြီး ငါးငံပြာရည် 1/2 ခွက်သာ ကျန်ရှိလျှင် အဘယ်အရာဖြစ်လာမည်ကို သူမ၏ အမေက မေးခဲ့သည် — ဟင်းချက်နည်းအပြည့်အစုံ၏ မည်သည့်အပိုင်းအစကို အမှန်တကယ် ချက်ပြုတ်နိုင်မည်နည်း။ စုစုသည် Division ကို စီစဉ်ခဲ့သည် — 1/2 ÷ 3/4 = 1/2 × 4/3 = 4/6, ၎င်းသည် 2/3 အဖြစ် ရိုးရှင်းသွားသည်။ 'ငါးငံပြာရည် ဒီပမာဏနဲ့ ဟင်းချက်နည်းအပြည့်အစုံရဲ့ သုံးပုံနှစ်ပုံကိုသာ ချက်ပြုတ်နိုင်တယ်' ဟု သူမက ပြောခဲ့သည်၊ 'အချိုးအဆတွေ မှန်ကန်နေအောင် ဒါက အခြားပါဝင်ပစ္စည်းတိုင်းကိုလည်း 2/3 ဖြင့် လျှော့ချရမယ်လို့ ဆိုလိုတယ်' ။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how many cups of noodles did Su Su need for the scaled-up recipe?",
            questionMy:
                "စာပိုဒ် ၂ အရ ပမာဏတိုးချဲ့ထားသော ဟင်းချက်နည်းအတွက် ခေါက်ဆွဲ ဘယ်နှခွက် လိုအပ်ခဲ့သနည်း။",
            optionsEn: [
              "3 3/4 cups",
              "2 1/2 cups",
              "5/2 cups",
              "15/4 cups only, not mixed",
            ],
            optionsMy: [
              "3 3/4 ခွက်",
              "2 1/2 ခွက်",
              "5/2 ခွက်",
              "15/4 ခွက်သာ၊ ရောစပ်ကိန်းမဟုတ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what calculation did Su Su set up for the fish sauce problem?",
            questionMy:
                "စာပိုဒ် ၃ အရ ငါးငံပြာရည်ပြဿနာအတွက် စုစု မည်သို့ တွက်ချက်မှုကို စီစဉ်ခဲ့သနည်း။",
            optionsEn: ["1/2 ÷ 3/4", "3/4 ÷ 1/2", "1/2 × 3/4", "3/4 + 1/2"],
            optionsMy: ["1/2 ÷ 3/4", "3/4 ÷ 1/2", "1/2 × 3/4", "3/4 + 1/2"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what fraction of the full recipe could they make?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဟင်းချက်နည်းအပြည့်အစုံ၏ မည်သည့်အပိုင်းအစကို ချက်ပြုတ်နိုင်ခဲ့သနည်း။",
            optionsEn: [
              "2/3",
              "1/2",
              "3/4",
              "4/6, which could not be simplified",
            ],
            optionsMy: ["2/3", "1/2", "3/4", "4/6, ရိုးရှင်းအောင်မလုပ်နိုင်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Su Su realise she would need to do to the other ingredients?",
            questionMy:
                "စာပိုဒ် ၃ အရ အခြားပါဝင်ပစ္စည်းများကို မည်သို့ ပြုလုပ်ရမည်ကို စုစု သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "Scale them down by 2/3 too, to keep the proportions correct",
              "Double every other ingredient",
              "Remove every other ingredient completely",
              "Leave every other ingredient exactly the same",
            ],
            optionsMy: [
              "အချိုးအဆတွေ မှန်ကန်နေအောင် ၎င်းတို့ကိုလည်း 2/3 ဖြင့် လျှော့ချရန်",
              "အခြားပါဝင်ပစ္စည်းတိုင်းကို နှစ်ဆတိုးရန်",
              "အခြားပါဝင်ပစ္စည်းတိုင်းကို လုံးဝ ဖယ်ရှားရန်",
              "အခြားပါဝင်ပစ္စည်းတိုင်းကို အတိအကျ ချန်ထားရန်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w13-d5",
      dayNumber: 5,
      titleEn: "Fractions Recap Quiz",
      titleMy: "အပိုင်းကိန်း ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is 1 1/2 + 2 1/3?",
          questionMy: "1 1/2 + 2 1/3 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["3 5/6", "3 2/5", "4 1/6", "3 1/6"],
          optionsMy: ["3 5/6", "3 2/5", "4 1/6", "3 1/6"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is 3/5 × 2/3?",
          questionMy: "3/5 × 2/3 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["6/15 (simplified to 2/5)", "5/8", "6/8", "9/10"],
          optionsMy: [
            "6/15 (2/5 အဖြစ် ရိုးရှင်းအောင်ပြု)",
            "5/8",
            "6/8",
            "9/10",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is 2/3 ÷ 1/3?",
          questionMy: "2/3 ÷ 1/3 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["2", "1/2", "2/9", "9/2"],
          optionsMy: ["2", "1/2", "2/9", "9/2"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The reciprocal of 2/5 is...",
          questionMy: "2/5 ၏ Reciprocal မှာ ...",
          optionsEn: ["5/2", "2/5", "5/5", "10/2"],
          optionsMy: ["5/2", "2/5", "5/5", "10/2"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Su Su's story, how much noodles did she need for the scaled-up recipe?",
          questionMy:
              "စုစု၏ ဇာတ်လမ်းတွင် ပမာဏတိုးချဲ့ထားသော ဟင်းချက်နည်းအတွက် ခေါက်ဆွဲ မည်မျှ လိုအပ်ခဲ့သနည်း။",
          optionsEn: ["3 3/4 cups", "2 1/2 cups", "5/2 cups", "4 cups"],
          optionsMy: ["3 3/4 ခွက်", "2 1/2 ခွက်", "5/2 ခွက်", "4 ခွက်"],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek14 = CourseWeekDef(
  id: "course-secondary2-mathematics-w14",
  weekNumber: 14,
  titleEn: "Decimals and Rounding",
  titleMy: "ဒသမကိန်းများနှင့် ရောင်းဂဏန်းနီးစပ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w14-d1",
      dayNumber: 1,
      titleEn: "Decimal Places, Significant Figures, and Estimating",
      titleMy: "ဒသမနေရာများ၊ Significant Figures နှင့် ခန့်မှန်းခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Round 5.478 to 2 decimal places.",
          questionMy: "5.478 ကို ဒသမနေရာ 2 နေရာအထိ ရောင်းပါ။",
          optionsEn: ["5.48", "5.47", "5.5", "5.478"],
          optionsMy: ["5.48", "5.47", "5.5", "5.478"],
          correctIndex: 0,
          hintsEn: [
            "Look at the third decimal digit to decide whether to round up or down.",
            "The third digit is 8, which is 5 or more, so round the second digit up: 5.47 becomes 5.48.",
          ],
          hintsMy: [
            "အတက်ရောင်း၊ အကျရောင်း ဆုံးဖြတ်ရန် တတိယဒသမဂဏန်းကို ကြည့်ပါ။",
            "တတိယဂဏန်းသည် 8 ဖြစ်ပြီး 5 သို့မဟုတ် ထို့ထက်ကြီးသောကြောင့် ဒုတိယဂဏန်းကို အတက်ရောင်းပါ — 5.47 သည် 5.48 ဖြစ်လာသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "Round 0.03847 to 3 significant figures.",
          questionMy: "0.03847 ကို Significant Figures 3 ခုအထိ ရောင်းပါ။",
          optionsEn: ["0.0385", "0.038", "0.03847", "0.04"],
          optionsMy: ["0.0385", "0.038", "0.03847", "0.04"],
          correctIndex: 0,
          hintsEn: [
            "Significant figures start counting from the first non-zero digit, so the leading zeros don't count.",
            "The first 3 significant figures are 3, 8, 4. The next digit (7) rounds the 4 up to 5, giving 0.0385.",
          ],
          hintsMy: [
            "Significant Figures များသည် ပထမဆုံး သုညမဟုတ်သောဂဏန်းမှ ရေတွက်စတင်ပြီး ရှေ့ဆုံးသုညများကို မရေတွက်ပါ။",
            "ပထမ Significant Figures 3 ခုမှာ 3, 8, 4 ဖြစ်သည်။ နောက်ဂဏန်း (7) က 4 ကို 5 သို့ အတက်ရောင်းပေးသဖြင့် 0.0385 ရရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Estimate 19.8 × 5.1 by rounding each number to the nearest whole number first.",
          questionMy:
              "19.8 × 5.1 ကို ဂဏန်းတစ်ခုစီ အနီးစပ်ဆုံးကိန်းပြည့်သို့ ပထမဆုံးရောင်း၍ ခန့်မှန်းပါ။",
          optionsEn: ["100", "95", "80", "120"],
          optionsMy: ["100", "95", "80", "120"],
          correctIndex: 0,
          hintsEn: [
            "19.8 rounds to 20, and 5.1 rounds to 5.",
            "20 × 5 = 100, a quick and reasonable estimate.",
          ],
          hintsMy: [
            "19.8 သည် 20 သို့ ရောင်းသည်၊ 5.1 သည် 5 သို့ ရောင်းသည်။",
            "20 × 5 = 100 ဖြစ်ပြီး လျင်မြန်ပြီး ကျိုးကြောင်းဆီလျော်သော ခန့်မှန်းချက်တစ်ခု ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why is estimating useful before doing an exact calculation?",
          questionMy:
              "အတိအကျတွက်ချက်မှု မပြုလုပ်မီ ခန့်မှန်းခြင်းက အဘယ်ကြောင့် အသုံးဝင်သနည်း။",
          optionsEn: [
            "It helps you check whether your exact answer is reasonable",
            "It always gives the exact same answer as the real calculation",
            "It replaces the need for exact calculation entirely",
            "It is only useful for very small numbers",
          ],
          optionsMy: [
            "သင်၏ အတိအကျအဖြေ ကျိုးကြောင်းဆီလျော်ခြင်းရှိမရှိ စစ်ဆေးရန် ကူညီပေးသည်",
            "အမြဲ အတိအကျအတွက်ချက်မှုနှင့် အတိအကျ တူညီသောအဖြေကို ပေးသည်",
            "အတိအကျ တွက်ချက်မှု၏ လိုအပ်ချက်ကို လုံးဝ အစားထိုးသည်",
            "အလွန်သေးငယ်သောဂဏန်းများအတွက်သာ အသုံးဝင်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "If your exact calculation gives an answer wildly different from your estimate, you probably made an error.",
            "Estimating is a quick sanity check, not a replacement for precise work.",
          ],
          hintsMy: [
            "သင်၏ အတိအကျတွက်ချက်မှုက ခန့်မှန်းချက်နှင့် အလွန်ကွာဟသောအဖြေကို ပေးပါက သင် အမှားတစ်ခု ပြုလုပ်မိနိုင်သည်။",
            "ခန့်မှန်းခြင်းသည် တိကျသောအလုပ်အစား လျင်မြန်သော Sanity Check တစ်ခုသာ ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w14-d2",
      dayNumber: 2,
      titleEn: "Match the Decimals and Rounding Vocabulary",
      titleMy:
          "ဒသမကိန်းနှင့် ရောင်းဂဏန်းနီးစပ်ခြင်း ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w14-dm-1",
          termEn: "Decimal Place",
          termMy: "ဒသမနေရာ (Decimal Place)",
          matchEn: "A digit's position after the decimal point",
          matchMy: "ဒသမအမှတ်၏ နောက်ရှိ ဂဏန်းတစ်ခု၏ နေရာ",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w14-dm-2",
          termEn: "Significant Figure",
          termMy: "Significant Figure (အရေးပါသောဂဏန်း)",
          matchEn:
              "A digit that carries meaning, starting from the first non-zero digit",
          matchMy: "ပထမဆုံး သုညမဟုတ်သောဂဏန်းမှ စတင်၍ အဓိပ္ပာယ်ရှိသောဂဏန်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w14-dm-3",
          termEn: "Round Up",
          termMy: "အတက်ရောင်းခြင်း (Round Up)",
          matchEn: "Increasing a digit when the next digit is 5 or more",
          matchMy:
              "နောက်ဂဏန်းသည် 5 သို့မဟုတ် ထို့ထက်ကြီးသောအခါ ဂဏန်းတစ်ခုကို တိုးမြှင့်ခြင်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w14-dm-4",
          termEn: "Round Down",
          termMy: "အကျရောင်းခြင်း (Round Down)",
          matchEn:
              "Keeping a digit the same when the next digit is less than 5",
          matchMy:
              "နောက်ဂဏန်းသည် 5 ထက်နည်းသောအခါ ဂဏန်းတစ်ခုကို မပြောင်းလဲဘဲ ထားခြင်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w14-dm-5",
          termEn: "Estimate",
          termMy: "ခန့်မှန်းခြင်း (Estimate)",
          matchEn:
              "A quick, reasonable approximation found by rounding before calculating",
          matchMy:
              "တွက်ချက်မီ ရောင်းခြင်းဖြင့် ရရှိသော လျင်မြန်၊ ကျိုးကြောင်းဆီလျော်သော ခန့်မှန်းချက်",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w14-dm-6",
          termEn: "Sanity Check",
          termMy: "Sanity Check (ကျိုးကြောင်းဆီလျော်စစ်ဆေးမှု)",
          matchEn:
              "Using an estimate to confirm an exact answer looks reasonable",
          matchMy:
              "အတိအကျအဖြေ ကျိုးကြောင်းဆီလျော်ကြောင်း အတည်ပြုရန် ခန့်မှန်းချက်တစ်ခုကို အသုံးပြုခြင်း",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w14-d3",
      dayNumber: 3,
      titleEn: "Sort: Correctly Rounded or Incorrectly Rounded?",
      titleMy: "စီစစ်ကြမည် - မှန်ကန်စွာ ရောင်းထားလား၊ မှားယွင်းစွာလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Correctly Rounded", "Incorrectly Rounded"],
        bucketsMy: ["မှန်ကန်စွာ ရောင်းထား", "မှားယွင်းစွာ ရောင်းထား"],
        items: [
          SortingItem(
            id: "s2math-w14-sort-1",
            labelEn: "3.456 to 2 d.p. = 3.46",
            labelMy: "3.456 ကို 2 d.p. = 3.46",
            correctBucketEn: "Correctly Rounded",
            correctBucketMy: "မှန်ကန်စွာ ရောင်းထား",
          ),
          SortingItem(
            id: "s2math-w14-sort-2",
            labelEn: "3.456 to 2 d.p. = 3.45",
            labelMy: "3.456 ကို 2 d.p. = 3.45",
            correctBucketEn: "Incorrectly Rounded",
            correctBucketMy: "မှားယွင်းစွာ ရောင်းထား",
          ),
          SortingItem(
            id: "s2math-w14-sort-3",
            labelEn: "7.892 to 1 d.p. = 7.9",
            labelMy: "7.892 ကို 1 d.p. = 7.9",
            correctBucketEn: "Correctly Rounded",
            correctBucketMy: "မှန်ကန်စွာ ရောင်းထား",
          ),
          SortingItem(
            id: "s2math-w14-sort-4",
            labelEn: "7.892 to 1 d.p. = 7.8",
            labelMy: "7.892 ကို 1 d.p. = 7.8",
            correctBucketEn: "Incorrectly Rounded",
            correctBucketMy: "မှားယွင်းစွာ ရောင်းထား",
          ),
          SortingItem(
            id: "s2math-w14-sort-5",
            labelEn: "0.0567 to 2 s.f. = 0.057",
            labelMy: "0.0567 ကို 2 s.f. = 0.057",
            correctBucketEn: "Correctly Rounded",
            correctBucketMy: "မှန်ကန်စွာ ရောင်းထား",
          ),
          SortingItem(
            id: "s2math-w14-sort-6",
            labelEn: "0.0567 to 2 s.f. = 0.06",
            labelMy: "0.0567 ကို 2 s.f. = 0.06",
            correctBucketEn: "Incorrectly Rounded",
            correctBucketMy: "မှားယွင်းစွာ ရောင်းထား",
          ),
          SortingItem(
            id: "s2math-w14-sort-7",
            labelEn: "12.049 to 2 d.p. = 12.05",
            labelMy: "12.049 ကို 2 d.p. = 12.05",
            correctBucketEn: "Correctly Rounded",
            correctBucketMy: "မှန်ကန်စွာ ရောင်းထား",
          ),
          SortingItem(
            id: "s2math-w14-sort-8",
            labelEn: "99.96 to 1 d.p. = 100.0",
            labelMy: "99.96 ကို 1 d.p. = 100.0",
            correctBucketEn: "Correctly Rounded",
            correctBucketMy: "မှန်ကန်စွာ ရောင်းထား",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w14-d4",
      dayNumber: 4,
      titleEn: "Reading: Thiri's Shopping Estimate",
      titleMy: "စာဖတ်ခြင်း - သီရိ၏ ဈေးဝယ်ခန့်မှန်းချက်",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Thiri's Shopping Estimate",
        titleMy: "သီရိ၏ ဈေးဝယ်ခန့်မှန်းချက်",
        passageEn:
            "Thiri went shopping with exactly 20,000 kyats-equivalent units and wanted to check, without doing exact addition in her head, whether she could afford everything in her basket before reaching the checkout. Her items cost 4,850, 3,290, 6,150, and 2,780 units.\n\nInstead of adding the exact numbers, she rounded each to the nearest thousand: 5,000, 3,000, 6,000, and 3,000. Adding these estimates gave 5,000 + 3,000 + 6,000 + 3,000 = 17,000, comfortably under her 20,000 budget, so she felt confident continuing to the checkout.\n\nAt the till, the exact total came to 4,850 + 3,290 + 6,150 + 2,780 = 17,070 units. \"My estimate of 17,000 was extremely close to the exact 17,070,\" Thiri noted, \"close enough to trust it as a quick check, even though it wasn't perfectly accurate.\" Her mother explained that rounding to the nearest thousand before a big shop was exactly the kind of estimating that let you sanity-check a total quickly, catching an error -- like an extra zero typed at the till -- long before it became a real problem, without needing exact figures every single time.",
        passageMy:
            "သီရိသည် ကျပ်ယူနစ် ၂၀,၀၀၀ အတိအကျ ယူဆောင်ကာ ဈေးဝယ်ထွက်ခဲ့ပြီး ငွေရှင်းရာသို့ မရောက်မီ တိကျသော စိတ်ဖြင့် ပေါင်းစည်းခြင်း မပြုလုပ်ဘဲ ၎င်း၏ ခြင်းတောင်းထဲရှိ အားလုံးကို ဝယ်ယူနိုင်မလား စစ်ဆေးလိုခဲ့သည်။ သူမ၏ ပစ္စည်းများသည် 4,850, 3,290, 6,150 နှင့် 2,780 ယူနစ် ကုန်ကျခဲ့သည်။\n\nအတိအကျဂဏန်းများ ပေါင်းစည်းမည့်အစား ဂဏန်းတစ်ခုစီကို အနီးစပ်ဆုံးထောင်ပေါင်းသို့ ရောင်းခဲ့သည် — 5,000, 3,000, 6,000, 3,000။ ဤခန့်မှန်းချက်များကို ပေါင်းစည်းလိုက်ရာ 5,000 + 3,000 + 6,000 + 3,000 = 17,000 ရရှိပြီး သူမ၏ 20,000 ဘတ်ဂျက်ထက် နည်းသောကြောင့် ငွေရှင်းရာသို့ အားရနေဆဲ ဆက်သွားနိုင်ခဲ့သည်။\n\nငွေကောင်တာတွင် အတိအကျစုစုပေါင်းသည် 4,850 + 3,290 + 6,150 + 2,780 = 17,070 ယူနစ် ဖြစ်ခဲ့သည်။ 'ငါ့ 17,000 ခန့်မှန်းချက်က အတိအကျ 17,070 နဲ့ အလွန်နီးစပ်နေတယ်' ဟု သီရိ မှတ်ချက်ပြုခဲ့သည်၊ 'အတိအကျမှန်ကန်တာ မဟုတ်ပေမယ့် လျင်မြန်စစ်ဆေးမှုအဖြစ် ယုံကြည်ရလောက်အောင် နီးစပ်နေတယ်' ။ ကြီးမားသော ဈေးဝယ်မှုတစ်ခုမတိုင်မီ အနီးစပ်ဆုံးထောင်ပေါင်းသို့ ရောင်းခြင်းသည် — ငွေကောင်တာတွင် ရိုက်ထည့်ထားသော သုညအပို တစ်ခုကဲ့သို့သော အမှားတစ်ခုကို — ၎င်းစစ်ဆင်ရေးပြဿနာအမှန်တစ်ခု မဖြစ်လာမီ ဖမ်းစီးနိုင်ပြီး၊ အချိန်တိုင်း အတိအကျကိန်းဂဏန်းများ မလိုအပ်ဘဲ စုစုပေါင်းတစ်ခုကို လျင်မြန်စွာ Sanity-Check လုပ်နိုင်စေသော ခန့်မှန်းခြင်းအမျိုးအစားအတိအကျဖြစ်ကြောင်း သူမ၏ အမေက ရှင်းပြခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was Thiri's estimated total?",
            questionMy: "စာပိုဒ် ၂ အရ သီရိ၏ ခန့်မှန်းစုစုပေါင်းမှာ အဘယ်နည်း။",
            optionsEn: ["17,000", "17,070", "20,000", "16,000"],
            optionsMy: ["17,000", "17,070", "20,000", "16,000"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what was the exact total at the checkout?",
            questionMy:
                "စာပိုဒ် ၃ အရ ငွေရှင်းရာတွင် အတိအကျစုစုပေါင်းမှာ အဘယ်နည်း။",
            optionsEn: ["17,070", "17,000", "20,000", "18,000"],
            optionsMy: ["17,070", "17,000", "20,000", "18,000"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Thiri's mother say estimating could catch?",
            questionMy:
                "စာပိုဒ် ၃ အရ ခန့်မှန်းခြင်းက မည်သည့်အရာကို ဖမ်းစီးနိုင်သည်ဟု သီရိ၏ အမေက ပြောခဲ့သနည်း။",
            optionsEn: [
              "An error, like an extra zero typed at the till",
              "The exact price of every single item",
              "Nothing useful at all",
              "Only very large shopping trips",
            ],
            optionsMy: [
              "ငွေကောင်တာတွင် ရိုက်ထည့်ထားသော သုညအပိုကဲ့သို့သော အမှားတစ်ခု",
              "ပစ္စည်းတစ်ခုစီ၏ အတိအကျဈေးနှုန်း",
              "အသုံးဝင်သောအရာ မရှိကြောင်း",
              "အလွန်ကြီးမားသော ဈေးဝယ်ခရီးများသာ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 1, how much money did Thiri have to spend?",
            questionMy:
                "စာပိုဒ် ၁ အရ သီရိတွင် သုံးစွဲရန် ငွေမည်မျှ ရှိခဲ့သနည်း။",
            optionsEn: [
              "20,000 units",
              "17,070 units",
              "17,000 units",
              "15,000 units",
            ],
            optionsMy: [
              "20,000 ယူနစ်",
              "17,070 ယူနစ်",
              "17,000 ယူနစ်",
              "15,000 ယူနစ်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w14-d5",
      dayNumber: 5,
      titleEn: "Decimals and Rounding Recap Quiz",
      titleMy: "ဒသမကိန်းနှင့် ရောင်းဂဏန်းနီးစပ်ခြင်း ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Round 6.782 to 2 decimal places.",
          questionMy: "6.782 ကို ဒသမနေရာ 2 နေရာအထိ ရောင်းပါ။",
          optionsEn: ["6.78", "6.79", "6.8", "6.782"],
          optionsMy: ["6.78", "6.79", "6.8", "6.782"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Round 0.04213 to 2 significant figures.",
          questionMy: "0.04213 ကို Significant Figures 2 ခုအထိ ရောင်းပါ။",
          optionsEn: ["0.042", "0.043", "0.04", "0.0421"],
          optionsMy: ["0.042", "0.043", "0.04", "0.0421"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Estimate 29.7 × 4.2 by rounding first.",
          questionMy: "29.7 × 4.2 ကို ပထမဆုံး ရောင်း၍ ခန့်မှန်းပါ။",
          optionsEn: ["120", "100", "150", "80"],
          optionsMy: ["120", "100", "150", "80"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "A sanity check is useful because it...",
          questionMy: "Sanity Check တစ်ခုသည် ... ကြောင့် အသုံးဝင်သည်။",
          optionsEn: [
            "Helps confirm an exact answer looks reasonable",
            "Always replaces exact calculation",
            "Only works for whole numbers",
            "Has no real purpose",
          ],
          optionsMy: [
            "အတိအကျအဖြေ ကျိုးကြောင်းဆီလျော်ကြောင်း အတည်ပြုရန် ကူညီပေးသောကြောင့်",
            "အတိအကျ တွက်ချက်မှုကို အမြဲ အစားထိုးသောကြောင့်",
            "ကိန်းပြည့်များအတွက်သာ အလုပ်လုပ်သောကြောင့်",
            "စစ်မှန်သော ရည်ရွယ်ချက် မရှိသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Thiri's story, how close was her estimate to the exact total?",
          questionMy:
              "သီရိ၏ ဇာတ်လမ်းတွင် သူမ၏ ခန့်မှန်းချက်သည် အတိအကျစုစုပေါင်းနှင့် မည်မျှနီးစပ်ခဲ့သနည်း။",
          optionsEn: [
            "Very close (17,000 versus 17,070)",
            "Not close at all",
            "Exactly the same to the last unit",
            "Off by more than 5,000",
          ],
          optionsMy: [
            "အလွန်နီးစပ် (17,000 နှင့် 17,070)",
            "လုံးဝ မနီးစပ်",
            "နောက်ဆုံးယူနစ်အထိ အတိအကျတူညီ",
            "5,000 ထက်ပို၍ ကွာဟ",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek15 = CourseWeekDef(
  id: "course-secondary2-mathematics-w15",
  weekNumber: 15,
  titleEn: "Percentage Change",
  titleMy: "ရာခိုင်နှုန်း ပြောင်းလဲမှု",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w15-d1",
      dayNumber: 1,
      titleEn: "Percentage Increase, Decrease, and Multipliers",
      titleMy: "ရာခိုင်နှုန်း တိုးလာခြင်း၊ လျော့ကျခြင်းနှင့် Multiplier များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A shirt costs 8,000 units and its price increases by 25%. What is the new price?",
          questionMy:
              "ရှပ်အင်္ကျီတစ်ထည်သည် ယူနစ် 8,000 ကုန်ကျပြီး ၎င်း၏ဈေးနှုန်းသည် 25% တိုးလာသည်။ ဈေးနှုန်းအသစ်မှာ အဘယ်နည်း။",
          optionsEn: ["10,000", "8,250", "9,000", "10,250"],
          optionsMy: ["10,000", "8,250", "9,000", "10,250"],
          correctIndex: 0,
          hintsEn: [
            "25% of 8,000 is 8,000 × 0.25 = 2,000. Add this to the original price.",
            "8,000 + 2,000 = 10,000.",
          ],
          hintsMy: [
            "8,000 ၏ 25% သည် 8,000 × 0.25 = 2,000 ဖြစ်သည်။ ၎င်းကို မူလဈေးနှုန်းနှင့် ပေါင်းပါ။",
            "8,000 + 2,000 = 10,000 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Using the multiplier method, what single multiplier represents a 25% increase?",
          questionMy:
              "Multiplier နည်းလမ်းကိုသုံး၍ 25% တိုးလာခြင်းကို ကိုယ်စားပြုသော Multiplier တစ်ခုတည်းမှာ အဘယ်နည်း။",
          optionsEn: ["1.25", "0.25", "1.5", "0.75"],
          optionsMy: ["1.25", "0.25", "1.5", "0.75"],
          correctIndex: 0,
          hintsEn: [
            "The multiplier for an increase is always 1 + the percentage as a decimal.",
            "1 + 0.25 = 1.25, so multiplying directly by 1.25 gives the new value in one step.",
          ],
          hintsMy: [
            "တိုးလာခြင်းအတွက် Multiplier သည် အမြဲ 1 + ရာခိုင်နှုန်းဒသမကိန်းဖြစ်သည်။",
            "1 + 0.25 = 1.25 ဖြစ်သောကြောင့် 1.25 ဖြင့် တိုက်ရိုက်မြှောက်ခြင်းက တန်ဖိုးအသစ်ကို အဆင့်တစ်ခုတည်းဖြင့် ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A jacket costs 15,000 units and is on sale for 20% off. What is the sale price, using the multiplier method?",
          questionMy:
              "ဂျာကက်တစ်ထည်သည် ယူနစ် 15,000 ကုန်ကျပြီး 20% လျှော့ဈေးဖြင့် ရောင်းချသည်။ Multiplier နည်းလမ်းကိုသုံး၍ လျှော့ဈေးမှာ အဘယ်နည်း။",
          optionsEn: ["12,000", "13,000", "3,000", "18,000"],
          optionsMy: ["12,000", "13,000", "3,000", "18,000"],
          correctIndex: 0,
          hintsEn: [
            "The multiplier for a 20% decrease is 1 - 0.20 = 0.80.",
            "15,000 × 0.80 = 12,000.",
          ],
          hintsMy: [
            "20% လျော့ကျခြင်းအတွက် Multiplier သည် 1 - 0.20 = 0.80 ဖြစ်သည်။",
            "15,000 × 0.80 = 12,000 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A population of 4,000 decreases by 10%, then increases by 10% the following year. Is the final population back to 4,000?",
          questionMy:
              "လူဦးရေ 4,000 သည် 10% လျော့ကျပြီး နောက်တစ်နှစ် 10% ထပ်တိုးလာသည်။ နောက်ဆုံးလူဦးရေသည် 4,000 သို့ ပြန်ရောက်ပါသလား။",
          optionsEn: [
            "No, it ends up slightly less than 4,000 (3,960)",
            "Yes, it always returns to exactly 4,000",
            "No, it ends up much higher than 4,000",
            "There is not enough information to tell",
          ],
          optionsMy: [
            "မဟုတ်ပါ၊ 4,000 ထက် အနည်းငယ်နည်းသော 3,960 ဖြင့် အဆုံးသတ်သည်",
            "ဟုတ်ကဲ့၊ 4,000 အတိအကျသို့ အမြဲ ပြန်ရောက်သည်",
            "မဟုတ်ပါ၊ 4,000 ထက် များစွာ ပိုများသောနေရာတွင် အဆုံးသတ်သည်",
            "ပြောနိုင်လောက်အောင် အချက်အလက် မလုံလောက်ပါ",
          ],
          correctIndex: 0,
          hintsEn: [
            "A 10% decrease and a 10% increase are not opposites, because the second percentage is calculated from a smaller starting number.",
            "4,000 × 0.90 = 3,600, then 3,600 × 1.10 = 3,960, not 4,000.",
          ],
          hintsMy: [
            "10% လျော့ကျခြင်းနှင့် 10% တိုးလာခြင်းသည် ဆန့်ကျင်ဘက်များ မဟုတ်ပါ၊ ဒုတိယရာခိုင်နှုန်းကို ငယ်သော အစပြုကိန်းမှ တွက်ချက်ထားသောကြောင့်ဖြစ်သည်။",
            "4,000 × 0.90 = 3,600, ထို့နောက် 3,600 × 1.10 = 3,960, 4,000 မဟုတ်ပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w15-d2",
      dayNumber: 2,
      titleEn: "Match the Percentage Change Vocabulary",
      titleMy: "ရာခိုင်နှုန်းပြောင်းလဲမှု ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w15-dm-1",
          termEn: "Percentage Increase",
          termMy: "ရာခိုင်နှုန်း တိုးလာခြင်း",
          matchEn:
              "A rise in value expressed as a percentage of the original amount",
          matchMy:
              "မူလပမာဏ၏ ရာခိုင်နှုန်းဖြင့် ဖော်ပြထားသော တန်ဖိုးတိုးလာခြင်း",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w15-dm-2",
          termEn: "Percentage Decrease",
          termMy: "ရာခိုင်နှုန်း လျော့ကျခြင်း",
          matchEn:
              "A fall in value expressed as a percentage of the original amount",
          matchMy:
              "မူလပမာဏ၏ ရာခိုင်နှုန်းဖြင့် ဖော်ပြထားသော တန်ဖိုးလျော့ကျခြင်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w15-dm-3",
          termEn: "Multiplier",
          termMy: "Multiplier (မြှောက်ကိန်း)",
          matchEn:
              "A single decimal number that applies a percentage change in one step",
          matchMy:
              "ရာခိုင်နှုန်းပြောင်းလဲမှုကို အဆင့်တစ်ခုတည်းဖြင့် အသုံးချပေးသော ဒသမဂဏန်းတစ်ခုတည်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w15-dm-4",
          termEn: "Original Amount",
          termMy: "မူလပမာဏ (Original Amount)",
          matchEn: "The starting value before any percentage change is applied",
          matchMy: "ရာခိုင်နှုန်းပြောင်းလဲမှု မလုပ်ဆောင်မီ အစပြုတန်ဖိုး",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w15-dm-5",
          termEn: "Sale Price",
          termMy: "လျှော့ဈေး (Sale Price)",
          matchEn: "The reduced price after a percentage discount is applied",
          matchMy:
              "ရာခိုင်နှုန်းလျှော့စျေး လုပ်ဆောင်ပြီးနောက် ကျဆင်းသောဈေးနှုန်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w15-dm-6",
          termEn: "Successive Percentage Change",
          termMy: "ဆက်တိုက်ရာခိုင်နှုန်းပြောင်းလဲမှု",
          matchEn:
              "Two or more percentage changes applied one after another, not simply cancelling out",
          matchMy:
              "ရိုးရှင်းစွာ ပယ်ဖျက်ပေးခြင်းမဟုတ်ဘဲ တစ်ခုပြီးတစ်ခု အသုံးချထားသော ရာခိုင်နှုန်းပြောင်းလဲမှုနှစ်ခု သို့မဟုတ် ထို့ထက်ပို",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w15-d3",
      dayNumber: 3,
      titleEn: "Sort: Percentage Increase or Percentage Decrease?",
      titleMy: "စီစစ်ကြမည် - ရာခိုင်နှုန်း တိုးလာခြင်းလား၊ လျော့ကျခြင်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Percentage Increase", "Percentage Decrease"],
        bucketsMy: ["ရာခိုင်နှုန်း တိုးလာခြင်း", "ရာခိုင်နှုန်း လျော့ကျခြင်း"],
        items: [
          SortingItem(
            id: "s2math-w15-sort-1",
            labelEn:
                "A salary rising from 300,000 to 330,000 (multiplier 1.10)",
            labelMy:
                "လစာ 300,000 မှ 330,000 သို့ တိုးလာခြင်း (Multiplier 1.10)",
            correctBucketEn: "Percentage Increase",
            correctBucketMy: "ရာခိုင်နှုန်း တိုးလာခြင်း",
          ),
          SortingItem(
            id: "s2math-w15-sort-2",
            labelEn: "A jacket's price dropping with multiplier 0.80",
            labelMy: "Multiplier 0.80 ဖြင့် ဂျာကက်ဈေးနှုန်း ကျဆင်းခြင်း",
            correctBucketEn: "Percentage Decrease",
            correctBucketMy: "ရာခိုင်နှုန်း လျော့ကျခြင်း",
          ),
          SortingItem(
            id: "s2math-w15-sort-3",
            labelEn: "A population growing with multiplier 1.05",
            labelMy: "Multiplier 1.05 ဖြင့် လူဦးရေ ကြီးထွားခြင်း",
            correctBucketEn: "Percentage Increase",
            correctBucketMy: "ရာခိုင်နှုန်း တိုးလာခြင်း",
          ),
          SortingItem(
            id: "s2math-w15-sort-4",
            labelEn: "A car's value depreciating with multiplier 0.85",
            labelMy: "Multiplier 0.85 ဖြင့် ကား၏တန်ဖိုး လျော့ကျခြင်း",
            correctBucketEn: "Percentage Decrease",
            correctBucketMy: "ရာခိုင်နှုန်း လျော့ကျခြင်း",
          ),
          SortingItem(
            id: "s2math-w15-sort-5",
            labelEn: "A shop's sales rising with multiplier 1.15",
            labelMy: "Multiplier 1.15 ဖြင့် ဆိုင်၏ ရောင်းအား တိုးလာခြင်း",
            correctBucketEn: "Percentage Increase",
            correctBucketMy: "ရာခိုင်နှုန်း တိုးလာခြင်း",
          ),
          SortingItem(
            id: "s2math-w15-sort-6",
            labelEn: "A discount using multiplier 0.75",
            labelMy: "Multiplier 0.75 ကိုသုံးသော လျှော့စျေး",
            correctBucketEn: "Percentage Decrease",
            correctBucketMy: "ရာခိုင်နှုန်း လျော့ကျခြင်း",
          ),
          SortingItem(
            id: "s2math-w15-sort-7",
            labelEn: "A student's exam score improving with multiplier 1.20",
            labelMy:
                "Multiplier 1.20 ဖြင့် ကျောင်းသား၏ စာမေးပွဲအမှတ် တိုးတက်ခြင်း",
            correctBucketEn: "Percentage Increase",
            correctBucketMy: "ရာခိုင်နှုန်း တိုးလာခြင်း",
          ),
          SortingItem(
            id: "s2math-w15-sort-8",
            labelEn: "Rainfall decreasing with multiplier 0.90",
            labelMy: "Multiplier 0.90 ဖြင့် မိုးရေချိန် လျော့ကျခြင်း",
            correctBucketEn: "Percentage Decrease",
            correctBucketMy: "ရာခိုင်နှုန်း လျော့ကျခြင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w15-d4",
      dayNumber: 4,
      titleEn: "Reading: Mya's Two Sale Signs",
      titleMy: "စာဖတ်ခြင်း - မြ၏ လျှော့စျေးဆိုင်းဘုတ်နှစ်ခု",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Mya's Two Sale Signs",
        titleMy: "မြ၏ လျှော့စျေးဆိုင်းဘုတ်နှစ်ခု",
        passageEn:
            "Walking through the market, Mya spotted two different shops selling the exact same bag, originally priced at 20,000 units in both shops. The first shop advertised \"20% off, then an extra 10% off,\" while the second shop simply advertised \"30% off.\" Mya wondered whether these two deals were actually the same.\n\nFor the first shop, she applied the multipliers one after another: 20,000 × 0.80 (for the 20% off) = 16,000, then 16,000 × 0.90 (for the extra 10% off) = 14,400. For the second shop, she applied a single 30% discount: 20,000 × 0.70 = 14,000.\n\n\"They're not the same at all,\" Mya realised. \"The first shop's price is actually 14,400, which is 400 units more expensive than the second shop's straightforward 14,000.\" Her friend Thiri explained why: successive percentage changes don't simply add together. \"20% plus 10% looks like 30% at first glance,\" Thiri said, \"but the second 10% discount is calculated from the already-reduced price of 16,000, not the original 20,000, so it removes less money than a straight 10% of 20,000 would.\" Mya decided to buy from the second shop, having learned that comparing multipliers directly, rather than trusting percentage labels at face value, was the only reliable way to find the better deal.",
        passageMy:
            "ဈေးထဲ လမ်းလျှောက်ရင်း မြသည် ဆိုင်နှစ်ခုက အတူတူ ဟန်ဆောင်ကျပ်တောင်းတစ်လုံးကို ရောင်းချနေသည်ကို တွေ့ခဲ့သည်၊ ဆိုင်နှစ်ခုစလုံးတွင် မူလဈေးနှုန်းသည် ယူနစ် 20,000 ဖြစ်ခဲ့သည်။ ပထမဆိုင်က '20% လျှော့စျေး၊ ထို့နောက် ထပ်ဆောင်း 10% လျှော့စျေး' ဟု ကြော်ငြာခဲ့ပြီး ဒုတိယဆိုင်က ရိုးရှင်းစွာ '30% လျှော့စျေး' ဟု ကြော်ငြာခဲ့သည်။ ဤအရောင်းနှစ်ခုသည် အမှန်တကယ် တူညီမှုရှိမရှိ မြ တွေးမိသည်။\n\nပထမဆိုင်အတွက် Multiplier များကို တစ်ခုပြီးတစ်ခု အသုံးချခဲ့သည် — 20,000 × 0.80 (20% လျော့ဈေးအတွက်) = 16,000, ထို့နောက် 16,000 × 0.90 (ထပ်ဆောင်း 10% လျော့ဈေးအတွက်) = 14,400။ ဒုတိယဆိုင်အတွက် 30% လျှော့စျေးတစ်ခုတည်းကို အသုံးချခဲ့သည် — 20,000 × 0.70 = 14,000။\n\n'ဒါတွေက လုံးဝ တူညီတာ မဟုတ်ဘူး' ဟု မြ သဘောပေါက်လိုက်သည်။ 'ပထမဆိုင်ရဲ့ ဈေးနှုန်းက တကယ်တော့ 14,400 ဖြစ်ပြီး ဒုတိယဆိုင်ရဲ့ ရိုးရှင်းသော 14,000 ထက် ယူနစ် 400 ပိုကုန်ကျတယ်' ။ သူမ၏ သူငယ်ချင်း သီရိက အကြောင်းရင်းကို ရှင်းပြခဲ့သည် — ဆက်တိုက်ရာခိုင်နှုန်းပြောင်းလဲမှုများသည် ရိုးရှင်းစွာ အတူတကွ မပေါင်းစည်းပါ။ '20% ပေါင်း 10% က ရုတ်ရုတ်ကြည့်ရင် 30% လို့ ထင်ရတယ်' ဟု သီရိပြောခဲ့သည်၊ 'ဒါပေမယ့် ဒုတိယ 10% လျှော့စျေးက ကျဆင်းပြီးသား 16,000 ဈေးနှုန်းမှ တွက်ချက်ခြင်းဖြစ်ပြီး မူလ 20,000 မှ မဟုတ်ဘူး၊ ဒါကြောင့် 20,000 ရဲ့ 10% တိုက်ရိုက်ထက် ငွေနည်းနည်းလျော့သွားတာပါ' ။ Multiplier များကို တိုက်ရိုက်နှိုင်းယှဉ်ခြင်းသည် ရာခိုင်နှုန်း Label များကို မျက်နှာစာအတိုင်း ယုံကြည်ခြင်းထက် ပိုကောင်းသောနှုန်းကို ရှာဖွေရာတွင် တစ်ခုတည်းသော ယုံကြည်စိတ်ချရသော နည်းလမ်းဖြစ်ကြောင်း သင်ယူခဲ့ရသောကြောင့် မြသည် ဒုတိယဆိုင်မှ ဝယ်ယူရန် ဆုံးဖြတ်ခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the first shop's final price?",
            questionMy:
                "စာပိုဒ် ၂ အရ ပထမဆိုင်၏ နောက်ဆုံးဈေးနှုန်းမှာ အဘယ်နည်း။",
            optionsEn: ["14,400", "14,000", "16,000", "20,000"],
            optionsMy: ["14,400", "14,000", "16,000", "20,000"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the second shop's final price?",
            questionMy:
                "စာပိုဒ် ၂ အရ ဒုတိယဆိုင်၏ နောက်ဆုံးဈေးနှုန်းမှာ အဘယ်နည်း။",
            optionsEn: ["14,000", "14,400", "16,000", "20,000"],
            optionsMy: ["14,000", "14,400", "16,000", "20,000"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why was the first shop's deal actually worse?",
            questionMy:
                "စာပိုဒ် ၃ အရ ပထမဆိုင်၏ ကမ်းလှမ်းချက်သည် အမှန်တကယ် အဘယ်ကြောင့် ပိုဆိုးခဲ့သနည်း။",
            optionsEn: [
              "The second 10% discount was calculated from the already-reduced price, removing less money",
              "The first shop actually charged more than the original price",
              "The second shop's discount was fake",
              "Both shops actually charged exactly the same price",
            ],
            optionsMy: [
              "ဒုတိယ 10% လျော့စျေးသည် ကျဆင်းပြီးသားဈေးနှုန်းမှ တွက်ချက်ခြင်းဖြစ်၍ ငွေနည်းနည်းသာ ဖယ်ရှားပေးသောကြောင့်",
              "ပထမဆိုင်က မူလဈေးနှုန်းထက် အမှန်တကယ် ပိုတောင်းခံခဲ့သောကြောင့်",
              "ဒုတိယဆိုင်၏ လျှော့စျေးသည် အတုဖြစ်ခဲ့သောကြောင့်",
              "ဆိုင်နှစ်ခုစလုံး အမှန်တကယ် ဈေးနှုန်းအတိအကျတူညီစွာ တောင်းခံခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Mya learn about comparing deals?",
            questionMy:
                "စာပိုဒ် ၃ အရ ကမ်းလှမ်းချက်များနှိုင်းယှဉ်ခြင်းအကြောင်း မြ မည်သို့ သင်ယူခဲ့သနည်း။",
            optionsEn: [
              "Comparing multipliers directly is more reliable than trusting percentage labels alone",
              "Percentage labels are always completely accurate",
              "It's impossible to ever compare two different deals",
              "The shop with more percentage numbers is always cheaper",
            ],
            optionsMy: [
              "Multiplier များကို တိုက်ရိုက်နှိုင်းယှဉ်ခြင်းသည် ရာခိုင်နှုန်း Label များကိုသာ ယုံကြည်ခြင်းထက် ပိုယုံကြည်ရသောကြောင့်",
              "ရာခိုင်နှုန်း Label များသည် အမြဲ လုံးဝတိကျသောကြောင့်",
              "ကမ်းလှမ်းချက်နှစ်ခုကို ဘယ်တော့မှ နှိုင်းယှဉ်၍ မရနိုင်ကြောင့်",
              "ရာခိုင်နှုန်းဂဏန်း ပိုများသောဆိုင်သည် အမြဲ ပိုစျေးသက်သာကြောင့်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w15-d5",
      dayNumber: 5,
      titleEn: "Percentage Change Recap Quiz",
      titleMy: "ရာခိုင်နှုန်းပြောင်းလဲမှု ပြန်လည်သုံးသပ်ခြင်း ပဟေဠိ",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A price of 5,000 increases by 20%. What is the new price?",
          questionMy:
              "ဈေးနှုန်း 5,000 သည် 20% တိုးလာသည်။ ဈေးနှုန်းအသစ်မှာ အဘယ်နည်း။",
          optionsEn: ["6,000", "5,200", "5,500", "6,500"],
          optionsMy: ["6,000", "5,200", "5,500", "6,500"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "The multiplier for a 15% decrease is...",
          questionMy: "15% လျော့ကျခြင်းအတွက် Multiplier မှာ ...",
          optionsEn: ["0.85", "1.15", "0.15", "1.85"],
          optionsMy: ["0.85", "1.15", "0.15", "1.85"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A 10,000-unit item is discounted by 30% using the multiplier method. What is the sale price?",
          questionMy:
              "ယူနစ် 10,000 ပစ္စည်းတစ်ခုကို Multiplier နည်းလမ်းကိုသုံး၍ 30% လျှော့စျေးလုပ်သည်။ လျှော့ဈေးမှာ အဘယ်နည်း။",
          optionsEn: ["7,000", "3,000", "7,300", "6,700"],
          optionsMy: ["7,000", "3,000", "7,300", "6,700"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A 20% decrease followed by a 20% increase does NOT return to the original value because...",
          questionMy:
              "20% လျော့ကျပြီး 20% ထပ်တိုးလာခြင်းသည် မူလတန်ဖိုးသို့ မပြန်ရောက်သည်မှာ ...",
          optionsEn: [
            "The second percentage is calculated from a different (smaller) starting number",
            "Percentages never actually change any value",
            "20% increases are always bigger than 20% decreases",
            "The two changes always cancel out exactly",
          ],
          optionsMy: [
            "ဒုတိယရာခိုင်နှုန်းကို ကွဲပြား (ငယ်သော) အစပြုကိန်းမှ တွက်ချက်ထားသောကြောင့်",
            "ရာခိုင်နှုန်းများသည် တန်ဖိုးမည်သည်ကိုမျှ တကယ် မပြောင်းလဲစေသောကြောင့်",
            "20% တိုးလာခြင်းများသည် 20% လျော့ကျခြင်းများထက် အမြဲ ပိုကြီးသောကြောင့်",
            "ပြောင်းလဲမှုနှစ်ခုသည် အတိအကျ အမြဲ ပယ်ဖျက်ကြသောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In Mya's story, why was the second shop's deal actually better?",
          questionMy:
              "မြ၏ ဇာတ်လမ်းတွင် ဒုတိယဆိုင်၏ ကမ်းလှမ်းချက် အမှန်တကယ် အဘယ်ကြောင့် ပိုကောင်းခဲ့သနည်း။",
          optionsEn: [
            "A single 30% discount removed more money than 20% followed by 10%",
            "The second shop's bag was a different colour",
            "The first shop's bag was more expensive to begin with",
            "There was actually no real difference between the two",
          ],
          optionsMy: [
            "30% လျှော့စျေးတစ်ခုတည်းသည် 20% ပြီး 10% ထက် ငွေပိုများစွာ ဖယ်ရှားပေးသောကြောင့်",
            "ဒုတိယဆိုင်၏ ကတ်တောင်းသည် အရောင်ကွဲပြားသောကြောင့်",
            "ပထမဆိုင်၏ ကတ်တောင်းသည် အစအဦးမှ ပိုစျေးကြီးသောကြောင့်",
            "နှစ်ခုကြား စစ်မှန်သောကွာခြားချက် လုံးဝ မရှိသောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _secondary2MathematicsWeek16 = CourseWeekDef(
  id: "course-secondary2-mathematics-w16",
  weekNumber: 16,
  titleEn: "Capstone: Financial Maths",
  titleMy: "အထွတ်အထိပ် - ငွေကြေးဆိုင်ရာ သင်္ချာ",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-s2-mathematics-w16-d1",
      dayNumber: 1,
      titleEn: "Profit, Loss, Simple Interest, and Budgets",
      titleMy: "အမြတ်၊ အရှုံး၊ Simple Interest နှင့် ဘတ်ဂျက်များ",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "A stall buys bracelets for 500 units each and sells them for 800 units each. What is the profit per bracelet?",
          questionMy:
              "ဆိုင်ခန်းတစ်ခုသည် လက်ကောက်များကို ယူနစ် 500 စီ ဝယ်ယူပြီး ယူနစ် 800 စီ ရောင်းချသည်။ လက်ကောက်တစ်ခုလျှင် အမြတ်ငွေမှာ အဘယ်နည်း။",
          optionsEn: ["300 units", "800 units", "500 units", "1,300 units"],
          optionsMy: ["300 ယူနစ်", "800 ယူနစ်", "500 ယူနစ်", "1,300 ယူနစ်"],
          correctIndex: 0,
          hintsEn: ["Profit = selling price - cost price.", "800 - 500 = 300."],
          hintsMy: [
            "အမြတ် = ရောင်းစျေး - ဝယ်စျေး။",
            "800 - 500 = 300 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the simple interest earned on 10,000 units saved for 2 years at 5% per year?",
          questionMy:
              "တစ်နှစ်လျှင် 5% ဖြင့် ယူနစ် 10,000 ကို 2 နှစ်စုငွေထားလျှင် ရရှိမည့် Simple Interest မှာ အဘယ်နည်း။",
          optionsEn: [
            "1,000 units",
            "500 units",
            "10,500 units",
            "2,000 units",
          ],
          optionsMy: [
            "1,000 ယူနစ်",
            "500 ယူနစ်",
            "10,500 ယူနစ်",
            "2,000 ယူနစ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Simple interest = Principal × Rate × Time, where rate is written as a decimal.",
            "10,000 × 0.05 × 2 = 1,000.",
          ],
          hintsMy: [
            "Simple Interest = Principal × Rate × Time, Rate ကို ဒသမကိန်းအဖြစ် ရေးသားသည်။",
            "10,000 × 0.05 × 2 = 1,000 ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A stall spends 40,000 units making 100 bracelets and sells all of them for 300 units each. What is the total profit or loss?",
          questionMy:
              "ဆိုင်ခန်းတစ်ခုသည် လက်ကောက် 100 ခု ပြုလုပ်ရန် ယူနစ် 40,000 သုံးစွဲပြီး အားလုံးကို ယူနစ် 300 စီ ရောင်းချသည်။ စုစုပေါင်း အမြတ် သို့မဟုတ် အရှုံးမှာ အဘယ်နည်း။",
          optionsEn: [
            "A loss of 10,000 units",
            "A profit of 10,000 units",
            "A profit of 30,000 units",
            "Neither profit nor loss",
          ],
          optionsMy: [
            "ယူနစ် 10,000 အရှုံး",
            "ယူနစ် 10,000 အမြတ်",
            "ယူနစ် 30,000 အမြတ်",
            "အမြတ်၊ အရှုံး နှစ်ခုစလုံး မဟုတ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Total revenue = 100 × 300 = 30,000. Compare this to the total cost of 40,000.",
            "30,000 (revenue) - 40,000 (cost) = -10,000, meaning a loss.",
          ],
          hintsMy: [
            "စုစုပေါင်း ဝင်ငွေ = 100 × 300 = 30,000။ ၎င်းကို စုစုပေါင်း ကုန်ကျစရိတ် 40,000 နှင့် နှိုင်းယှဉ်ပါ။",
            "30,000 (ဝင်ငွေ) - 40,000 (ကုန်ကျစရိတ်) = -10,000, အရှုံးဟု ဆိုလိုသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "A student's monthly budget is 50,000 units, spending 3/10 on food, 1/5 on transport, and the rest on savings. What fraction is saved?",
          questionMy:
              "ကျောင်းသားတစ်ဦး၏ လစဉ်ဘတ်ဂျက် ယူနစ် 50,000 ဖြစ်ပြီး အစားအစာအတွက် 3/10, သွားလာရေးအတွက် 1/5 သုံးစွဲကာ ကျန်တာကို စုငွေထားသည်။ မည်သည့်အပိုင်းအစကို စုငွေထားသနည်း။",
          optionsEn: ["1/2", "1/5", "3/10", "7/10"],
          optionsMy: ["1/2", "1/5", "3/10", "7/10"],
          correctIndex: 0,
          hintsEn: [
            "Add the spent fractions first: 3/10 + 1/5 = 3/10 + 2/10 = 5/10.",
            "The saved fraction is the rest: 1 - 5/10 = 5/10, which simplifies to 1/2.",
          ],
          hintsMy: [
            "ပထမဆုံး သုံးစွဲထားသော အပိုင်းကိန်းများကို ပေါင်းပါ — 3/10 + 1/5 = 3/10 + 2/10 = 5/10။",
            "စုငွေထားသော အပိုင်းအစသည် ကျန်ရှိသည့်အရာဖြစ်သည် — 1 - 5/10 = 5/10, ၎င်းသည် 1/2 အဖြစ် ရိုးရှင်းသွားသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w16-d2",
      dayNumber: 2,
      titleEn: "Match the Whole-Term Vocabulary",
      titleMy: "တစ်သင်တန်းလုံး ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "s2math-w16-dm-1",
          termEn: "Profit",
          termMy: "အမြတ် (Profit)",
          matchEn:
              "The amount earned when selling price is higher than cost price",
          matchMy: "ရောင်းစျေးသည် ဝယ်စျေးထက် မြင့်သောအခါ ရရှိသောငွေပမာဏ",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "s2math-w16-dm-2",
          termEn: "Loss",
          termMy: "အရှုံး (Loss)",
          matchEn:
              "The amount lost when selling price is lower than cost price",
          matchMy: "ရောင်းစျေးသည် ဝယ်စျေးထက် နိမ့်သောအခါ ဆုံးရှုံးသောငွေပမာဏ",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "s2math-w16-dm-3",
          termEn: "Simple Interest",
          termMy: "Simple Interest (ရိုးရှင်းအတိုးငွေ)",
          matchEn: "Interest calculated as Principal × Rate × Time",
          matchMy: "Principal × Rate × Time အဖြစ် တွက်ချက်သော အတိုးငွေ",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "s2math-w16-dm-4",
          termEn: "Principal",
          termMy: "Principal (မူလငွေတိုင်း)",
          matchEn: "The original amount of money saved or borrowed",
          matchMy: "စုငွေထား သို့မဟုတ် ချေးငွေယူထားသော မူလငွေပမာဏ",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "s2math-w16-dm-5",
          termEn: "Interest Rate",
          termMy: "အတိုးနှုန်း (Interest Rate)",
          matchEn:
              "The percentage used to calculate interest, usually per year",
          matchMy:
              "အတိုးငွေတွက်ချက်ရန် အသုံးပြုသော ရာခိုင်နှုန်း၊ များသောအားဖြင့် တစ်နှစ်လျှင်",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "s2math-w16-dm-6",
          termEn: "Budget",
          termMy: "ဘတ်ဂျက် (Budget)",
          matchEn:
              "A plan for how money will be spent and saved over a period of time",
          matchMy:
              "အချိန်ကာလတစ်ခုအတွင်း ငွေကို မည်သို့ သုံးစွဲမည်၊ စုငွေမည်ဆိုသော အစီအစဉ်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w16-d3",
      dayNumber: 3,
      titleEn: "Sort: Profit or Loss?",
      titleMy: "စီစစ်ကြမည် - အမြတ်လား၊ အရှုံးလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Profit", "Loss"],
        bucketsMy: ["အမြတ်", "အရှုံး"],
        items: [
          SortingItem(
            id: "s2math-w16-sort-1",
            labelEn: "Bought for 500, sold for 800",
            labelMy: "500 ဖြင့် ဝယ်ပြီး 800 ဖြင့် ရောင်း",
            correctBucketEn: "Profit",
            correctBucketMy: "အမြတ်",
          ),
          SortingItem(
            id: "s2math-w16-sort-2",
            labelEn: "Bought for 1,000, sold for 700",
            labelMy: "1,000 ဖြင့် ဝယ်ပြီး 700 ဖြင့် ရောင်း",
            correctBucketEn: "Loss",
            correctBucketMy: "အရှုံး",
          ),
          SortingItem(
            id: "s2math-w16-sort-3",
            labelEn: "Cost price 40,000, revenue 30,000",
            labelMy: "ဝယ်စျေး 40,000, ဝင်ငွေ 30,000",
            correctBucketEn: "Loss",
            correctBucketMy: "အရှုံး",
          ),
          SortingItem(
            id: "s2math-w16-sort-4",
            labelEn: "Cost price 20,000, revenue 35,000",
            labelMy: "ဝယ်စျေး 20,000, ဝင်ငွေ 35,000",
            correctBucketEn: "Profit",
            correctBucketMy: "အမြတ်",
          ),
          SortingItem(
            id: "s2math-w16-sort-5",
            labelEn: "Selling price higher than cost price",
            labelMy: "ရောင်းစျေးသည် ဝယ်စျေးထက် မြင့်",
            correctBucketEn: "Profit",
            correctBucketMy: "အမြတ်",
          ),
          SortingItem(
            id: "s2math-w16-sort-6",
            labelEn: "Selling price lower than cost price",
            labelMy: "ရောင်းစျေးသည် ဝယ်စျေးထက် နိမ့်",
            correctBucketEn: "Loss",
            correctBucketMy: "အရှုံး",
          ),
          SortingItem(
            id: "s2math-w16-sort-7",
            labelEn: "A stall earns 15,000 more than it spent",
            labelMy: "ဆိုင်ခန်းတစ်ခုသည် သုံးစွဲထားသည်ထက် 15,000 ပိုရရှိ",
            correctBucketEn: "Profit",
            correctBucketMy: "အမြတ်",
          ),
          SortingItem(
            id: "s2math-w16-sort-8",
            labelEn: "A stall earns 5,000 less than it spent",
            labelMy: "ဆိုင်ခန်းတစ်ခုသည် သုံးစွဲထားသည်ထက် 5,000 နည်းနည်းသာ ရရှိ",
            correctBucketEn: "Loss",
            correctBucketMy: "အရှုံး",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w16-d4",
      dayNumber: 4,
      titleEn: "Reading: The Class Fundraiser Stall",
      titleMy: "စာဖတ်ခြင်း - အတန်း ရန်ပုံငွေရှာဖွေရေးဆိုင်ခန်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "The Class Fundraiser Stall",
        titleMy: "အတန်း ရန်ပုံငွေရှာဖွေရေးဆိုင်ခန်း",
        passageEn:
            "For the term's capstone project, Su Su, Thiri, and Mya ran a fundraiser stall selling handmade bracelets, and their teacher required them to track every calculation using this term's skills: fractions, decimals, percentages, profit and loss, and budgeting. They started with a budget of 30,000 units for materials, spending 3/5 of it on beads and the rest on string and clasps.\n\nEach bracelet cost 600 units in materials and sold for 1,000 units, giving a profit of 400 units per bracelet. After selling 50 bracelets, their total profit was 50 × 400 = 20,000 units. On the final day, they offered a limited-time discount: 15% off, calculated using the multiplier 0.85, bringing the price down to 1,000 × 0.85 = 850 units, still comfortably above their 600-unit cost per bracelet.\n\nTheir teacher then set them a final challenge: if they invested their 20,000 units of profit in a savings account offering 4% simple interest per year, how much interest would they earn after 3 years? Su Su calculated: 20,000 × 0.04 × 3 = 2,400 units. \"Every single calculation this term connects to money in the real world,\" Thiri said, reviewing their full report. \"Fractions for splitting a budget, decimals for rounding prices, percentages for discounts and interest, and profit and loss for knowing whether the whole stall was actually worth running.\" Their finished report showed a healthy profit, a smart reinvestment plan, and not a single calculation left unchecked.",
        passageMy:
            "သင်တန်း၏ အထွတ်အထိပ်စီမံကိန်းအတွက် စုစု၊ သီရိနှင့် မြတို့သည် လက်လုပ်လက်ကောက်များ ရောင်းချသော ရန်ပုံငွေရှာဖွေရေးဆိုင်ခန်းတစ်ခု လည်ပတ်ခဲ့ကြပြီး ၎င်းတို့၏ဆရာမက ဤသင်တန်း၏ ကျွမ်းကျင်မှုများကိုသုံး၍ တွက်ချက်မှုတိုင်းကို ခြေရာခံရန် တောင်းဆိုခဲ့သည် — အပိုင်းကိန်းများ၊ ဒသမကိန်းများ၊ ရာခိုင်နှုန်းများ၊ အမြတ်နှင့်အရှုံးနှင့် ဘတ်ဂျက်စီမံခန့်ခွဲမှု။ ၎င်းတို့သည် ပစ္စည်းများအတွက် ဘတ်ဂျက် ယူနစ် 30,000 ဖြင့် စတင်ခဲ့ပြီး ၎င်း၏ 3/5 ကို ပုတီးစေ့များအတွက် သုံးစွဲကာ ကျန်တာကို ကြိုးနှင့် ကလစ်များအတွက် သုံးစွဲခဲ့သည်။\n\nလက်ကောက်တစ်ခုစီသည် ပစ္စည်းအတွက် ယူနစ် 600 ကုန်ကျပြီး ယူနစ် 1,000 ဖြင့် ရောင်းချခဲ့ကာ လက်ကောက်တစ်ခုလျှင် ယူနစ် 400 အမြတ် ရရှိခဲ့သည်။ လက်ကောက် 50 ခု ရောင်းချပြီးနောက် စုစုပေါင်းအမြတ်သည် 50 × 400 = 20,000 ယူနစ် ဖြစ်ခဲ့သည်။ နောက်ဆုံးနေ့တွင် ကန့်သတ်ကာလ လျှော့စျေးတစ်ခု ကမ်းလှမ်းခဲ့သည် — Multiplier 0.85 ကိုသုံး၍ တွက်ချက်ထားသော 15% လျှော့စျေးက ဈေးနှုန်းကို 1,000 × 0.85 = 850 ယူနစ်သို့ ကျဆင်းစေခဲ့ပြီး လက်ကောက်တစ်ခုလျှင် ကုန်ကျစရိတ် ယူနစ် 600 ထက် ဆက်လက် သက်သာစွာ ပိုများနေဆဲဖြစ်သည်။\n\nသူတို့ဆရာမက နောက်ဆုံးစိန်ခေါ်မှုတစ်ခု ထပ်မံပေးခဲ့သည် — ၎င်းတို့သည် အမြတ်ငွေ ယူနစ် 20,000 ကို တစ်နှစ်လျှင် 4% Simple Interest ကမ်းလှမ်းသော စုငွေအကောင့်တစ်ခုတွင် ရင်းနှီးမြှုပ်နှံလျှင် 3 နှစ်ကြာအောင် အတိုးငွေ မည်မျှ ရရှိမည်နည်း။ စုစုသည် တွက်ချက်ခဲ့သည် — 20,000 × 0.04 × 3 = 2,400 ယူနစ်။ 'ဒီသင်တန်းက တွက်ချက်မှုတိုင်းက လက်တွေ့ဘဝ ငွေကြေးနဲ့ ဆက်စပ်နေတယ်' ဟု သီရိက ၎င်းတို့၏ အစီရင်ခံစာအပြည့်အစုံကို ပြန်လည်သုံးသပ်ရင်း ပြောခဲ့သည်။ 'ဘတ်ဂျက်ခွဲရန်အတွက် အပိုင်းကိန်းများ၊ ဈေးနှုန်းရောင်းရန်အတွက် ဒသမကိန်းများ၊ လျှော့စျေးနှင့် အတိုးအတွက် ရာခိုင်နှုန်းများ၊ ပြီးတော့ ဆိုင်ခန်းတစ်ခုလုံး လုပ်ဆောင်ထိုက်သလားဆိုတာ သိရန်အတွက် အမြတ်နှင့်အရှုံးပါပဲ' ။ ၎င်းတို့ ပြီးစီးသွားသော အစီရင်ခံစာသည် ကျန်းမာသော အမြတ်တစ်ခု၊ ပညာသားရှိသော ပြန်လည်ရင်းနှီးမြှုပ်နှံမှုအစီအစဉ်တစ်ခုနှင့် တွက်ချက်မှုတစ်ခုမှ်ပင် မစစ်ဆေးဘဲ မကျန်ရစ်ခဲ့ကြောင်း ပြသခဲ့သည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the profit per bracelet?",
            questionMy: "စာပိုဒ် ၂ အရ လက်ကောက်တစ်ခုလျှင် အမြတ်မှာ အဘယ်နည်း။",
            optionsEn: [
              "400 units",
              "600 units",
              "1,000 units",
              "20,000 units",
            ],
            optionsMy: [
              "400 ယူနစ်",
              "600 ယူနစ်",
              "1,000 ယူနစ်",
              "20,000 ယူနစ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what was the discounted price after the 15% off?",
            questionMy:
                "စာပိုဒ် ၂ အရ 15% လျှော့စျေးပြီးနောက် လျှော့ဈေးနှုန်းမှာ အဘယ်နည်း။",
            optionsEn: ["850 units", "1,000 units", "600 units", "150 units"],
            optionsMy: ["850 ယူနစ်", "1,000 ယူနစ်", "600 ယူနစ်", "150 ယူနစ်"],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, how much interest would they earn after 3 years?",
            questionMy:
                "စာပိုဒ် ၃ အရ 3 နှစ်ကြာအောင် အတိုးငွေ မည်မျှ ရရှိမည်နည်း။",
            optionsEn: [
              "2,400 units",
              "800 units",
              "20,000 units",
              "4,000 units",
            ],
            optionsMy: [
              "2,400 ယူနစ်",
              "800 ယူနစ်",
              "20,000 ယူနစ်",
              "4,000 ယူနစ်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what did Thiri say connected every calculation from the term?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဒီသင်တန်း၏ တွက်ချက်မှုတိုင်းကို မည်သည် ချိတ်ဆက်ပေးသည်ဟု သီရိ ပြောခဲ့သနည်း။",
            optionsEn: [
              "Money in the real world",
              "Nothing at all -- they were unrelated topics",
              "Only the colour of the bracelets",
              "The exact time of day the stall opened",
            ],
            optionsMy: [
              "လက်တွေ့ဘဝ ငွေကြေး",
              "မည်သည့်အရာမျှ မဟုတ်ကြောင်း — မသက်ဆိုင်သော အကြောင်းအရာများဖြစ်ကြောင်း",
              "လက်ကောက်များ၏ အရောင်ကိုသာ",
              "ဆိုင်ခန်းဖွင့်သော အချိန်အတိအကျ",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-s2-mathematics-w16-d5",
      dayNumber: 5,
      titleEn: "Fractions, Decimals, Percentages Term Round-Up",
      titleMy: "အပိုင်းကိန်း၊ ဒသမကိန်းနှင့် ရာခိုင်နှုန်း သင်တန်း အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is 1 1/4 + 2 1/2?",
          questionMy: "1 1/4 + 2 1/2 သည် မည်မျှဖြစ်သနည်း။",
          optionsEn: ["3 3/4", "3 1/4", "4 1/4", "3 1/2"],
          optionsMy: ["3 3/4", "3 1/4", "4 1/4", "3 1/2"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Round 8.567 to 2 decimal places.",
          questionMy: "8.567 ကို ဒသမနေရာ 2 နေရာအထိ ရောင်းပါ။",
          optionsEn: ["8.57", "8.56", "8.6", "8.567"],
          optionsMy: ["8.57", "8.56", "8.6", "8.567"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "A 12,000-unit item is discounted by 25%. What is the sale price?",
          questionMy:
              "ယူနစ် 12,000 ပစ္စည်းတစ်ခုကို 25% လျှော့စျေးလုပ်သည်။ လျှော့ဈေးမှာ အဘယ်နည်း။",
          optionsEn: ["9,000", "3,000", "9,500", "10,000"],
          optionsMy: ["9,000", "3,000", "9,500", "10,000"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Bought for 700, sold for 1,000. This is a...",
          questionMy: "700 ဖြင့် ဝယ်ပြီး 1,000 ဖြင့် ရောင်းသည်။ ၎င်းသည် ...",
          optionsEn: [
            "Profit of 300",
            "Loss of 300",
            "Profit of 700",
            "Loss of 700",
          ],
          optionsMy: ["300 အမြတ်", "300 အရှုံး", "700 အမြတ်", "700 အရှုံး"],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In the fundraiser story, how much simple interest did the class earn on 20,000 units at 4% for 3 years?",
          questionMy:
              "ရန်ပုံငွေရှာဖွေရေးဇာတ်လမ်းတွင် အတန်းသည် ယူနစ် 20,000 ကို 4% ဖြင့် 3 နှစ်စား Simple Interest မည်မျှ ရရှိခဲ့သနည်း။",
          optionsEn: [
            "2,400 units",
            "800 units",
            "20,000 units",
            "4,000 units",
          ],
          optionsMy: [
            "2,400 ယူနစ်",
            "800 ယူနစ်",
            "20,000 ယူနစ်",
            "4,000 ယူနစ်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _secondary2MathematicsTerm4 = CourseTermDef(
  id: "course-secondary2-mathematics-t4",
  termNumber: 4,
  titleEn: "Fractions, Decimals and Percentages (Advanced)",
  titleMy: "အပိုင်းကိန်း၊ ဒသမကိန်းနှင့် ရာခိုင်နှုန်း (အဆင့်မြင့်)",
  certificateTitleEn: "Fractions, Decimals and Percentages",
  certificateTitleMy: "အပိုင်းကိန်း၊ ဒသမကိန်းနှင့် ရာခိုင်နှုန်း",
  weeks: [
    _secondary2MathematicsWeek13,
    _secondary2MathematicsWeek14,
    _secondary2MathematicsWeek15,
    _secondary2MathematicsWeek16,
  ],
);
