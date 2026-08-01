// File: ai_data_bridge/_generated/year6_computing_term7.dart
// Year 6 Computing -- Term 7: "Networks and How the Internet Works" (Weeks
// 25-28). Staging artifact only -- not yet wired into
// course_pathway_bank.dart's Grade.year6 pathway. Follows Term 6's
// physical-computing capstone (Nay Chi's own sensor-plus-actuator project)
// by moving into a new domain -- networks and the internet -- while
// deliberately deepening, not repeating, Year 5's own Term 7 ("Networks
// and the Internet": basic LAN/WAN-style networking vocabulary, routers,
// servers, IP addresses, data packets, an introductory pass at search
// engines and keywords/Boolean operators, plus cloud computing). This
// term assumes that Year 5 groundwork and pushes into genuinely new
// territory: the client-server request/response cycle that actually
// happens behind visiting a website, the crawling/indexing/ranking
// pipeline that powers a real search engine (Year 5 only named Boolean
// operators and relevance, never how a search engine builds its results
// in the first place), and a dedicated pass at evaluating source
// reliability plus safe online communication that Year 5 only brushed
// past in a single comprehension question. Protagonist Nay Chi, a Nova
// School student, recurs across quiz flavour text and every Day 4 reading
// passage this term, opening with a direct callback to her Term 6
// physical computing capstone (a sensor "deciding" what to output) and a
// second callback to her Term 2 web page (now understood from the other
// side: what happens when someone else's browser requests the very page
// she built).
//
// Week 25 (The Client-Server Model): what actually happens when a
// browser requests a web page -- the browser (client) sends a request, a
// server locates/prepares the file and sends back a response -- explored
// through Nay Chi's own Term 2 "About Me" web page as the file being
// requested, and spiralling back to Term 6's sense-decide-act shape (the
// server "decides" what to send back, just as a sensor-driven condition
// once decided an actuator's output). Week 26 (How Search Engines Really
// Work): crawling, indexing and ranking -- the pipeline behind a search
// engine -- and why the very first result isn't always the best one for a
// given need. Week 27 (Is This Website Reliable?): evaluating a source's
// author, publication date and possible bias, cross-checking across
// multiple sources, and safe/effective online communication -- polite
// email habits and recognising the warning signs of a suspicious message.
// Week 28 (Capstone -- Nay Chi's Research Project, boss week): Nay Chi
// searches for a topic, evaluates her sources' reliability, and reflects
// on how her own Term 2 web page would look to a stranger who reached it
// through a search result, tying the client-server, search-engine and
// reliability threads together, with the recap day reviewing the whole
// term.

const CourseWeekDef _year6ComputingWeek25 = CourseWeekDef(
  id: "course-year6-computing-w25",
  weekNumber: 25,
  titleEn: "The Client-Server Model: Requesting a Web Page",
  titleMy: "Client-Server Model - Web Page တောင်းဆိုခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w25-d1",
      dayNumber: 1,
      titleEn: "What Happens When You Visit a Website?",
      titleMy: "Website တစ်ခုကို ဝင်ကြည့်သောအခါ အဘယ်အရာ ဖြစ်ပျက်သနည်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "In the client-server model, what is a \"client\"?",
          questionMy:
              "Client-Server Model တွင် \"Client\" ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A device or program, such as a web browser, that sends a request asking a server for something",
            "A powerful computer that stores webpages and answers requests",
            "A type of computer virus that damages websites",
            "A small chunk of data sent across a network",
          ],
          optionsMy: [
            "Server ထံသို့ တစ်ခုခုတောင်းဆိုသော Web Browser ကဲ့သို့ ကိရိယာ (သို့) Program",
            "Webpage များကို သိမ်းဆည်း၍ Request များကို ဖြေကြားပေးသော အားကောင်းသည့် ကွန်ပျူတာ",
            "Website များကို ပျက်စီးစေသော ကွန်ပျူတာဗိုင်းရပ်စ် အမျိုးအစား",
            "ကွန်ရက်တစ်လျှောက် ပေးပို့သော ဒေတာအပိုင်းအစငယ်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about which side of the conversation starts by asking for something -- your web browser, or the computer holding the webpage.",
            "Every time Nay Chi opens her browser and types a web address, her browser is acting as the client -- the one making the request.",
          ],
          hintsMy: [
            "စကားဝိုင်း၏ မည်သည့်ဘက်က တစ်ခုခု တောင်းဆိုခြင်းဖြင့် စတင်သနည်းကို စဉ်းစားကြည့်ပါ -- သင့် Web Browser လား၊ (သို့) Webpage ကို သိမ်းဆည်းထားသော ကွန်ပျူတာလား။",
            "နှင်းချည် သူမ၏ Browser ကို ဖွင့်ပြီး Web Address တစ်ခုကို ရိုက်ထည့်တိုင်း သူမ၏ Browser သည် Client အဖြစ် လုပ်ဆောင်နေခြင်းဖြစ်သည် -- Request တောင်းဆိုသူ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is a \"server\" in the client-server model?",
          questionMy:
              "Client-Server Model တွင် \"Server\" ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A powerful computer that stores webpages and sends them back when a client asks for them",
            "The exact words a person types into a search box",
            "A small screen used only for playing games",
            "A folder used to store a person's passwords",
          ],
          optionsMy: [
            "Client တစ်ခုက တောင်းဆိုသောအခါ Webpage များကို သိမ်းဆည်း၍ ပြန်ပို့ပေးသော အားကောင်းသည့် ကွန်ပျူတာ",
            "လူတစ်ဦးက Search Box ထဲသို့ ရိုက်ထည့်သော အတိအကျ စကားလုံးများ",
            "ဂိမ်းကစားရန်သာ အသုံးပြုသော မျက်နှာပြင်ငယ်တစ်ခု",
            "လူတစ်ဦး၏ စကားဝှက်များ သိမ်းဆည်းရန် ဖိုလ်ဒါတစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Nay Chi's Term 2 \"About Me\" web page has to live somewhere so that other people's browsers can reach it -- that somewhere is a server.",
            "A server's whole job is to wait for requests and answer them by sending back the file that was asked for.",
          ],
          hintsMy: [
            "နှင်းချည်၏ Term 2 \"About Me\" Web Page သည် အခြားလူများ၏ Browser များ ရောက်ရှိနိုင်ရန် တစ်နေရာနေရာတွင် နေထိုင်ရမည် -- ထိုနေရာသည် Server ဖြစ်သည်။",
            "Server ၏ အလုပ်တစ်ခုလုံးသည် Request များကို စောင့်ဆိုင်း၍ တောင်းဆိုခံရသော ဖိုင်ကို ပြန်ပို့ပေးခြင်းဖြင့် ဖြေကြားရန်သာ ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi types her website's web address into a browser and presses Enter. What happens first?",
          questionMy:
              "နှင်းချည်သည် သူမ၏ Website Address ကို Browser ထဲသို့ ရိုက်ထည့်၍ Enter နှိပ်သည်။ ပထမဆုံး အဘယ်အရာ ဖြစ်ပျက်သနည်း။",
          optionsEn: [
            "Her browser (the client) sends a request to the server asking for that page",
            "The server immediately deletes the page from itself",
            "Her browser skips straight to displaying a blank page forever",
            "Her computer disconnects from the internet completely",
          ],
          optionsMy: [
            "သူမ၏ Browser (Client) သည် ထိုစာမျက်နှာကို တောင်းဆို၍ Server သို့ Request ပေးပို့သည်",
            "Server သည် ချက်ချင်း ၎င်းကိုယ်တိုင်ထံမှ စာမျက်နှာကို ဖျက်ပစ်သည်",
            "သူမ၏ Browser သည် ဗလာစာမျက်နှာကို အမြဲပြသရန် တိုက်ရိုက်ရွှေ့ပြောင်းသည်",
            "သူမ၏ ကွန်ပျူတာသည် အင်တာနက်နှင့် လုံးဝ ချိတ်ဆက်မှုပြတ်တောက်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Remember the order of events in the client-server model: something always has to be requested before it can be sent back.",
            "Pressing Enter after a web address is exactly what triggers the browser to send its request out.",
          ],
          hintsMy: [
            "Client-Server Model ၏ ဖြစ်စဉ်အစီအစဉ်ကို သတိရပါ -- ပြန်မပို့ခင် တစ်ခုခုကို အမြဲတောင်းဆိုရမည်။",
            "Web Address ရိုက်ထည့်ပြီး Enter နှိပ်ခြင်းသည် Browser အား ၎င်း၏ Request ကို ပေးပို့ရန် လှုံ့ဆော်ပေးသော အချက်အတိအကျပင် ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "After the server receives Nay Chi's request for her \"About Me\" page (which does exist), what does it send back?",
          questionMy:
              "နှင်းချည်၏ \"About Me\" စာမျက်နှာအတွက် Request ကို Server ရရှိပြီးနောက် (ထိုစာမျက်နှာ ရှိနေသည်) Server က အဘယ်အရာ ပြန်ပို့ပေးသနည်း။",
          optionsEn: [
            "A response containing the requested web page's file, which the browser then displays",
            "Nothing at all, ever",
            "A brand-new webpage on a completely different topic",
            "A request of its own, asking the browser a question",
          ],
          optionsMy: [
            "တောင်းဆိုခံရသော Web Page ၏ ဖိုင်ပါဝင်သည့် Response တစ်ခု၊ ထို့နောက် Browser က ၎င်းကို ပြသသည်",
            "ဘာမျှ ဘယ်တော့မှ မပြန်ပေးပါ",
            "လုံးဝ မတူညီသော ခေါင်းစဉ်ပါ Webpage အသစ်တစ်ခု",
            "Browser ကို ပြန်၍ မေးခွန်းတစ်ခု မေးမြန်းသော Request ကိုယ်တိုင်",
          ],
          correctIndex: 0,
          hintsEn: [
            "The server's answer to a request is called a response -- it is the mirror image of the request that triggered it.",
            "Since the page exists, the response carries the actual file content back, which the browser then turns into the page Nay Chi sees.",
          ],
          hintsMy: [
            "Request တစ်ခု၏ ပြန်ကြားချက်ကို Response ဟုခေါ်သည် -- ၎င်းကို လှုံ့ဆော်ပေးခဲ့သော Request ၏ ကြေးမုံရိပ်ပင် ဖြစ်သည်။",
            "စာမျက်နှာ ရှိနေသောကြောင့် Response သည် ဖိုင်၏ အမှန်တကယ်အကြောင်းအရာကို ပြန်သယ်ဆောင်လာပြီး ထို့နောက် Browser က ၎င်းကို နှင်းချည်မြင်ရသော စာမျက်နှာအဖြစ် ပြောင်းလဲပေးသည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w25-d2",
      dayNumber: 2,
      titleEn: "Match the Client-Server Vocabulary",
      titleMy: "Client-Server ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w25-dm-1",
          termEn: "Client",
          termMy: "တောင်းဆိုသူစက် (Client)",
          matchEn:
              "A device or program, such as a web browser, that sends a request asking a server for something",
          matchMy:
              "Server ထံသို့ တစ်ခုခုတောင်းဆိုသော Web Browser ကဲ့သို့ ကိရိယာ (သို့) Program",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w25-dm-2",
          termEn: "Server",
          termMy: "ဝန်ဆောင်ပေးသူစက် (Server)",
          matchEn:
              "A powerful computer that receives a request and sends back a response with what was asked for",
          matchMy:
              "Request တစ်ခုကို လက်ခံရရှိပြီး တောင်းဆိုခံရသောအရာနှင့်အတူ Response တစ်ခု ပြန်ပို့ပေးသော အားကောင်းသည့် ကွန်ပျူတာ",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w25-dm-3",
          termEn: "Request",
          termMy: "တောင်းဆိုချက် (Request)",
          matchEn:
              "A message a client sends asking a server for something, such as a specific web page",
          matchMy:
              "သီးခြားသတ်မှတ်ထားသော Web Page တစ်ခုကဲ့သို့ တစ်ခုခုကို Server ထံ တောင်းဆိုသော Client ၏ Message",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w25-dm-4",
          termEn: "Response",
          termMy: "တုံ့ပြန်ချက် (Response)",
          matchEn:
              "The message a server sends back to a client, containing the requested data or an error",
          matchMy:
              "တောင်းဆိုခံရသော ဒေတာ (သို့) Error ပါဝင်သည့် Client ထံ Server ပြန်ပို့သော Message",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w25-dm-5",
          termEn: "URL",
          termMy: "ဝဘ်ဆိုက်လိပ်စာ (URL)",
          matchEn:
              "The web address typed into a browser that tells it exactly which server and which page to request",
          matchMy:
              "မည်သည့် Server နှင့် မည်သည့်စာမျက်နှာကို တောင်းဆိုရမည်ကို Browser အား အတိအကျ ပြောပြသော Web Address",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w25-dm-6",
          termEn: "Web browser",
          termMy: "အင်တာနက်ကြည့်ရှုစနစ် (Web Browser)",
          matchEn:
              "Client software that sends requests to servers and displays the response as a viewable page",
          matchMy:
              "Server များထံ Request များ ပေးပို့ပြီး Response ကို ကြည့်ရှုနိုင်သော စာမျက်နှာအဖြစ် ပြသပေးသော Client Software",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w25-d3",
      dayNumber: 3,
      titleEn: "Sort: Part of the Request or Part of the Response?",
      titleMy:
          "စီစစ်ကြမည် - Request ၏ အစိတ်အပိုင်းလား၊ Response ၏ အစိတ်အပိုင်းလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Part of the Request", "Part of the Response"],
        bucketsMy: ["Request ၏ အစိတ်အပိုင်း", "Response ၏ အစိတ်အပိုင်း"],
        items: [
          SortingItem(
            id: "y6comp-w25-sort-1",
            labelEn:
                "Nay Chi's browser sending a message asking for her \"About Me\" page",
            labelMy:
                "နှင်းချည်၏ \"About Me\" စာမျက်နှာကို တောင်းဆိုသော Message ကို ပေးပို့သော သူမ၏ Browser",
            correctBucketEn: "Part of the Request",
            correctBucketMy: "Request ၏ အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "y6comp-w25-sort-2",
            labelEn:
                "The server locating the requested HTML file on its own storage",
            labelMy:
                "တောင်းဆိုခံရသော HTML ဖိုင်ကို ၎င်းကိုယ်တိုင်၏ Storage ပေါ်တွင် ရှာဖွေတွေ့ရှိသော Server",
            correctBucketEn: "Part of the Response",
            correctBucketMy: "Response ၏ အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "y6comp-w25-sort-3",
            labelEn:
                "The browser typing the exact page it wants inside the web address",
            labelMy:
                "Web Address အတွင်း လိုချင်သောစာမျက်နှာကို အတိအကျ ရေးထည့်သော Browser",
            correctBucketEn: "Part of the Request",
            correctBucketMy: "Request ၏ အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "y6comp-w25-sort-4",
            labelEn:
                "The server sending the page's content back so the browser can display it",
            labelMy:
                "Browser က ပြသနိုင်ရန် စာမျက်နှာ၏ အကြောင်းအရာကို ပြန်ပို့ပေးသော Server",
            correctBucketEn: "Part of the Response",
            correctBucketMy: "Response ၏ အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "y6comp-w25-sort-5",
            labelEn:
                "A friend's browser asking a school server for Nay Chi's page",
            labelMy:
                "နှင်းချည်၏ စာမျက်နှာကို ကျောင်း Server ထံ တောင်းဆိုသော သူငယ်ချင်း၏ Browser",
            correctBucketEn: "Part of the Request",
            correctBucketMy: "Request ၏ အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "y6comp-w25-sort-6",
            labelEn:
                "The server sending back an error message because a page does not exist",
            labelMy:
                "စာမျက်နှာ မရှိသောကြောင့် Error Message တစ်ခု ပြန်ပို့သော Server",
            correctBucketEn: "Part of the Response",
            correctBucketMy: "Response ၏ အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "y6comp-w25-sort-7",
            labelEn:
                "The browser also asking for the page's images in a separate follow-up message",
            labelMy:
                "စာမျက်နှာ၏ ပုံများကို သီးခြား နောက်ဆက်တွဲ Message ဖြင့် ထပ်မံ တောင်းဆိုသော Browser",
            correctBucketEn: "Part of the Request",
            correctBucketMy: "Request ၏ အစိတ်အပိုင်း",
          ),
          SortingItem(
            id: "y6comp-w25-sort-8",
            labelEn:
                "The browser receiving the file and turning it into a page on screen",
            labelMy:
                "ဖိုင်ကို လက်ခံရရှိပြီး မျက်နှာပြင်ပေါ်ရှိ စာမျက်နှာအဖြစ် ပြောင်းလဲပေးသော Browser",
            correctBucketEn: "Part of the Response",
            correctBucketMy: "Response ၏ အစိတ်အပိုင်း",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w25-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi Watches Her Own Web Page Get Requested",
      titleMy:
          "စာဖတ်ခြင်း - နှင်းချည် သူမ၏ Web Page တောင်းဆိုခံရပုံကို ကြည့်ရှုခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi Watches Her Own Web Page Get Requested",
        titleMy: "နှင်းချည် သူမ၏ Web Page တောင်းဆိုခံရပုံကို ကြည့်ရှုခြင်း",
        passageEn:
            "\"Remember your Term 2 'About Me' web page?\" Ms. Thanda asks the class. \"Today we find out exactly what happens when someone else's browser goes to visit it.\" Nay Chi sits up -- she built that page herself, tags, headings, images and all, but she has never once thought about what happens on the other end when somebody actually opens it.\n\nMs. Thanda explains that Nay Chi's finished web page file lives on the school's server, waiting quietly. When her classmate Zin Ko types Nay Chi's web address into his own browser and presses Enter, his browser -- the client -- sends a request across the network, asking the server for exactly that page.\n\nThe server receives Zin Ko's request, finds Nay Chi's page among all its stored files, and sends back a response containing the page's content. Zin Ko's browser receives that response and displays it on his screen -- headings, images and all, exactly as Nay Chi built it, appearing on a completely different computer far away.\n\nNay Chi suddenly connects this to something she already understands. \"It's the same shape as my Term 6 nightlight project!\" she says. \"My sensor detected darkness, my condition decided what to do, and my actuator lit up. Here, the client's request is like the sensor detecting something, the server deciding what to send back is like my condition, and the response is like my actuator -- except instead of turning on a light, it turns my web page on for Zin Ko to see.\"",
        passageMy:
            "\"မင်းတို့ရဲ့ Term 2 'About Me' Web Page ကို မှတ်မိကြသေးလား\" ဟု ဒေါ်သန္တာ အတန်းကို မေးသည်။ \"ဒီနေ့တော့ တခြားလူတစ်ဦး၏ Browser က ထိုစာမျက်နှာကို ဝင်ကြည့်သောအခါ အဘယ်အရာ တိတိကျကျ ဖြစ်ပျက်သွားကြောင်း ရှာဖွေကြမယ်\" ဟု ဆိုသည်။ နှင်းချည် ထိုင်နားထောင်လိုက်သည် -- သူမကိုယ်တိုင် ထိုစာမျက်နှာကို Tag များ၊ ခေါင်းစီးများ၊ ပုံများနှင့်တကွ တည်ဆောက်ခဲ့သော်လည်း တစ်ဦးဦးက ထိုစာမျက်နှာကို အမှန်တကယ် ဖွင့်လိုက်သောအခါ တစ်ဖက်တွင် အဘယ်အရာ ဖြစ်ပျက်သွားမည်ကို တစ်ကြိမ်တစ်ခါမျှ မစဉ်းစားမိခဲ့ပါ။\n\nဒေါ်သန္တာက နှင်းချည်၏ ပြီးစီးထားသော Web Page ဖိုင်သည် ကျောင်း၏ Server ပေါ်တွင် တိတ်ဆိတ်စွာ စောင့်ဆိုင်း၍ နေထိုင်ကြောင်း ရှင်းပြသည်။ သူမ၏ အတန်းဖော် ဇင်ကိုက နှင်းချည်၏ Web Address ကို သူ့ Browser ထဲသို့ ရိုက်ထည့်ပြီး Enter နှိပ်လိုက်သောအခါ သူ၏ Browser -- Client -- သည် ထိုစာမျက်နှာကို အတိအကျ တောင်းဆို၍ ကွန်ရက်တစ်လျှောက် Request တစ်ခု ပေးပို့လိုက်သည်။\n\nServer သည် ဇင်ကို၏ Request ကို လက်ခံရရှိပြီး ၎င်း၏ သိမ်းဆည်းထားသောဖိုင်များအားလုံးထဲမှ နှင်းချည်၏ စာမျက်နှာကို ရှာဖွေတွေ့ရှိကာ စာမျက်နှာ၏ အကြောင်းအရာပါဝင်သည့် Response တစ်ခု ပြန်ပို့ပေးသည်။ ဇင်ကို၏ Browser သည် ထို Response ကို လက်ခံရရှိပြီး သူ့မျက်နှာပြင်ပေါ်တွင် ပြသသည် -- ခေါင်းစီးများ၊ ပုံများနှင့်တကွ နှင်းချည် တည်ဆောက်ခဲ့သည့်အတိုင်း အတိအကျ ဝေးလံသော လုံးဝမတူညီသည့် ကွန်ပျူတာတစ်ခုပေါ်တွင် ပေါ်လာသည်။\n\nနှင်းချည်သည် ဤအရာကို သူမ ရင်းနှီးနေပြီးသား တစ်ခုနှင့် ရုတ်တရက် ဆက်စပ်မိသည်။ \"ဒါက ငါ့ Term 6 Nightlight စီမံကိန်းနဲ့ ပုံစံအတူတူပါပဲ!\" ဟု သူမ ဆိုသည်။ \"ငါ့ Sensor က မှောင်နေခြင်းကို တွေ့ရှိတယ်၊ ငါ့ Condition က ဘာလုပ်ရမလဲ ဆုံးဖြတ်တယ်၊ ငါ့ Actuator က မီးပွင့်တယ်။ ဒီနေရာမှာတော့ Client ရဲ့ Request ဟာ Sensor တစ်ခုခုကို တွေ့ရှိတာလိုမျိုးပါပဲ၊ Server က ဘာပြန်ပို့မလဲ ဆုံးဖြတ်တာဟာ ငါ့ Condition လိုမျိုးပါပဲ၊ Response ကလည်း ငါ့ Actuator လိုမျိုးပါပဲ -- ဒါပေမဲ့ မီးပွင့်စေမယ့်အစား ဇင်ကို ကြည့်ရှုနိုင်ဖို့ ငါ့ Web Page ကို ပွင့်စေတာ ကွာသွားတယ်။\"",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 2, where does Nay Chi's finished web page file live?",
            questionMy:
                "စာပိုဒ် ၂ အရ နှင်းချည်၏ ပြီးစီးထားသော Web Page ဖိုင်သည် မည်သည့်နေရာတွင် နေထိုင်သနည်း။",
            optionsEn: [
              "On the school's server",
              "Only inside Zin Ko's browser",
              "Nowhere at all -- it has no location",
              "Printed on paper in the classroom",
            ],
            optionsMy: [
              "ကျောင်း၏ Server ပေါ်တွင်",
              "ဇင်ကို၏ Browser အတွင်းတွင်သာ",
              "မည်သည့်နေရာတွင်မျှ မဟုတ်ပါ -- နေရာမရှိပါ",
              "အတန်းအတွင်း စာရွက်ပေါ်တွင် ပုံနှိပ်ထားသည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what does Zin Ko's browser send when he types Nay Chi's web address?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဇင်ကိုက နှင်းချည်၏ Web Address ကို ရိုက်ထည့်သောအခါ သူ၏ Browser က အဘယ်ကို ပေးပို့သနည်း။",
            optionsEn: [
              "A request asking the server for that exact page",
              "A password to unlock the school server",
              "A completely new web page of his own",
              "Nothing -- the page simply appears on its own",
            ],
            optionsMy: [
              "ထိုစာမျက်နှာကို အတိအကျ တောင်းဆိုသော Request တစ်ခု",
              "ကျောင်း Server ကို ဖွင့်ရန် စကားဝှက်တစ်ခု",
              "သူ့ကိုယ်ပိုင် လုံးဝ Web Page အသစ်တစ်ခု",
              "ဘာမျှမပါ -- စာမျက်နှာသည် ၎င်းသာသာ ပေါ်လာသည်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, what does the server send back after finding Nay Chi's page?",
            questionMy:
                "စာပိုဒ် ၄ အရ နှင်းချည်၏ စာမျက်နှာကို ရှာဖွေတွေ့ရှိပြီးနောက် Server က အဘယ်ကို ပြန်ပို့ပေးသနည်း။",
            optionsEn: [
              "A response containing the page's content",
              "A new request of its own",
              "A brand-new page on a different topic entirely",
              "Nothing at all, ever",
            ],
            optionsMy: [
              "စာမျက်နှာ၏ အကြောင်းအရာပါဝင်သည့် Response တစ်ခု",
              "၎င်းကိုယ်တိုင်၏ Request အသစ်တစ်ခု",
              "လုံးဝ မတူညီသော ခေါင်းစဉ်ပါ စာမျက်နှာအသစ်တစ်ခု",
              "ဘာမျှ ဘယ်တော့မှ မပြန်ပေးပါ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 5, what comparison does Nay Chi make between this process and her Term 6 nightlight project?",
            questionMy:
                "စာပိုဒ် ၅ အရ ဤလုပ်ငန်းစဉ်နှင့် သူမ၏ Term 6 Nightlight စီမံကိန်း ကြားတွင် နှင်းချည် မည်သည့်နှိုင်းယှဉ်ချက်ကို ပြုလုပ်သနည်း။",
            optionsEn: [
              "The request is like a sensor, the server's decision is like her condition, and the response is like her actuator",
              "The two projects have nothing at all in common",
              "A web page can only ever exist inside a physical computing project",
              "Servers and sensors always mean exactly the same thing",
            ],
            optionsMy: [
              "Request သည် Sensor တစ်ခုနှင့်တူပြီး Server ၏ ဆုံးဖြတ်ချက်သည် သူမ၏ Condition နှင့်တူကာ Response သည် သူမ၏ Actuator နှင့် တူကြောင်း",
              "စီမံကိန်းနှစ်ခုသည် လုံးဝ ဆက်စပ်မှု မရှိကြောင်း",
              "Web Page တစ်ခုသည် Physical Computing စီမံကိန်းအတွင်းတွင်သာ ရှိနိုင်ကြောင်း",
              "Server နှင့် Sensor သည် အတိအကျ တူညီသောအရာတစ်ခုတည်းဖြစ်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w25-d5",
      dayNumber: 5,
      titleEn: "Client-Server Round-Up",
      titleMy: "Client-Server အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What is a client in the client-server model?",
          questionMy:
              "Client-Server Model တွင် Client ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A device or program that sends a request asking a server for something",
            "A powerful computer that stores webpages",
            "A computer virus",
            "A password manager",
          ],
          optionsMy: [
            "Server ထံသို့ တစ်ခုခုတောင်းဆိုသော ကိရိယာ (သို့) Program",
            "Webpage များကို သိမ်းဆည်းထားသော အားကောင်းသည့် ကွန်ပျူတာ",
            "ကွန်ပျူတာဗိုင်းရပ်စ်",
            "စကားဝှက် စီမံခန့်ခွဲသည့် ကိရိယာ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a server's main job?",
          questionMy: "Server ၏ အဓိကတာဝန်မှာ အဘယ်နည်း။",
          optionsEn: [
            "To receive requests and send back responses containing what was asked for",
            "To type webpages for humans",
            "To play video games only",
            "To delete files at random",
          ],
          optionsMy: [
            "Request များကို လက်ခံရရှိပြီး တောင်းဆိုခံရသောအရာပါဝင်သည့် Response များ ပြန်ပို့ပေးရန်",
            "လူသားများအတွက် Webpage များ ရိုက်ပေးရန်",
            "ဗီဒီယိုဂိမ်းများသာ ကစားပေးရန်",
            "ဖိုင်များကို ကျပန်း ဖျက်ပစ်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What happens first when a browser visits a website?",
          questionMy:
              "Browser တစ်ခုက Website တစ်ခုကို ဝင်ကြည့်သောအခါ ပထမဆုံး အဘယ်ဖြစ်ပျက်သနည်း။",
          optionsEn: [
            "The client sends a request to the server",
            "The server deletes itself immediately",
            "The internet disconnects on purpose",
            "The browser refuses to load anything",
          ],
          optionsMy: [
            "Client သည် Server ထံ Request ပေးပို့သည်",
            "Server သည် ၎င်းကိုယ်တိုင် ချက်ချင်း ဖျက်ပစ်သည်",
            "အင်တာနက် အလိုအလျောက် ချိတ်ဆက်မှုပြတ်တောက်သည်",
            "Browser သည် မည်သည့်အရာမျှ Load ရန် ငြင်းဆန်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What does a server send back if the requested page exists?",
          questionMy:
              "တောင်းဆိုခံရသောစာမျက်နှာ ရှိနေပါက Server က အဘယ်ကို ပြန်ပို့ပေးသနည်း။",
          optionsEn: [
            "A response containing the page's file",
            "Another request",
            "A completely blank error only",
            "Nothing, ever",
          ],
          optionsMy: [
            "စာမျက်နှာ၏ ဖိုင်ပါဝင်သည့် Response တစ်ခု",
            "နောက်ထပ် Request တစ်ခု",
            "လုံးဝ ဗလာ Error တစ်ခုသာ",
            "ဘာမျှ ဘယ်တော့မှ",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What comparison did Nay Chi make between the client-server model and her Term 6 nightlight project?",
          questionMy:
              "Client-Server Model နှင့် သူမ၏ Term 6 Nightlight စီမံကိန်းကြား နှင်းချည် မည်သည့်နှိုင်းယှဉ်ချက်ကို ပြုလုပ်ခဲ့သနည်း။",
          optionsEn: [
            "A request is like a sensor, and the server deciding what to send back is like her condition",
            "The two ideas have nothing in common at all",
            "Servers can only exist inside physical computing projects",
            "Requests and responses have no order at all",
          ],
          optionsMy: [
            "Request သည် Sensor တစ်ခုနှင့်တူပြီး Server က ဘာပြန်ပို့မလဲ ဆုံးဖြတ်ခြင်းသည် သူမ၏ Condition နှင့်တူကြောင်း",
            "အိုင်ဒီယာနှစ်ခုသည် လုံးဝ ဆက်စပ်မှု မရှိကြောင်း",
            "Server များသည် Physical Computing စီမံကိန်းအတွင်းတွင်သာ ရှိနိုင်ကြောင်း",
            "Request နှင့် Response တွင် အစီအစဉ် လုံးဝမရှိကြောင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek26 = CourseWeekDef(
  id: "course-year6-computing-w26",
  weekNumber: 26,
  titleEn: "How Search Engines Really Work",
  titleMy: "ရှာဖွေရေးအင်ဂျင်များ အမှန်တကယ် အလုပ်လုပ်ပုံ",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w26-d1",
      dayNumber: 1,
      titleEn: "Crawling, Indexing and Ranking",
      titleMy: "Crawling၊ Indexing နှင့် Ranking",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does a \"web crawler\" (also called a spider) do?",
          questionMy:
              "\"Web Crawler\" (Spider ဟုလည်း ခေါ်သည်) သည် အဘယ်လုပ်ဆောင်သနည်း။",
          optionsEn: [
            "It automatically travels across the web, following links from one page to the next",
            "It types search results by hand for every user",
            "It deletes webpages that are out of date",
            "It only works inside one single website forever",
          ],
          optionsMy: [
            "ကွန်ရက်တစ်လျှောက် စာမျက်နှာတစ်ခုမှ နောက်တစ်ခုသို့ Link များကို လိုက်ပါ၍ အလိုအလျောက် ခရီးသွားသည်",
            "အသုံးပြုသူတိုင်းအတွက် ရှာဖွေရလဒ်များကို လက်ဖြင့် ရိုက်ပေးသည်",
            "ရက်စွဲကုန်ဆုံးနေသော Webpage များကို ဖျက်ပစ်သည်",
            "Website တစ်ခုတည်းအတွင်းတွင်သာ အမြဲအလုပ်လုပ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Picture a tiny automatic explorer that never sleeps, jumping from link to link across billions of pages.",
            "Before a search engine can find anything for you, something has to have already visited and read those pages -- that something is the crawler.",
          ],
          hintsMy: [
            "ဘယ်တော့မှ မအိပ်ဘဲ ဘီလီယံနှင့်ချီသော စာမျက်နှာများကို Link တစ်ခုမှ တစ်ခုသို့ ခုန်ကူးနေသော အလိုအလျောက် စူးစမ်းရှာဖွေသူငယ်တစ်ဦးကို စိတ်ကူးကြည့်ပါ။",
            "Search Engine က သင့်အတွက် မည်သည့်အရာကိုမျှ မတွေ့ရှိမီ တစ်ခုခုက ထိုစာမျက်နှာများကို ဦးစွာ ဝင်ရောက်ဖတ်ရှုထားရမည် -- ထိုတစ်ခုခုသည် Crawler ဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is a search engine's \"index\"?",
          questionMy: "Search Engine ၏ \"Index\" ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A giant, organized store of every page a crawler has found, used to look up results quickly",
            "The single top result shown to every user, always",
            "A password that unlocks a search engine",
            "A type of computer virus",
          ],
          optionsMy: [
            "Crawler တွေ့ရှိထားသော စာမျက်နှာတိုင်းကို ရလဒ်များ လျင်မြန်စွာ ရှာဖွေရန် အသုံးပြုသည့် ကြီးမားစွာ စီစဉ်ထားသော သိုလှောင်ကျင်း",
            "အသုံးပြုသူတိုင်းအား အမြဲပြသသည့် ထိပ်ဆုံးရလဒ်တစ်ခုတည်း",
            "Search Engine ကို ဖွင့်ပေးသော စကားဝှက်",
            "ကွန်ပျူတာဗိုင်းရပ်စ် အမျိုးအစားတစ်ခု",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think of a library's card catalogue -- it does not hold the books themselves, but it lets you find them in seconds instead of searching every shelf.",
            "An index is built from everything the crawler found, so the search engine never has to search the whole internet again from scratch each time.",
          ],
          hintsMy: [
            "စာကြည့်တိုက်၏ Card Catalogue ကို စဉ်းစားကြည့်ပါ -- ၎င်းသည် စာအုပ်များကိုယ်တိုင် မထားရှိသော်လည်း စင်တိုင်း ရှာဖွေနေစရာမလိုဘဲ စက္ကန့်ပိုင်းအတွင်း တွေ့ရှိစေနိုင်သည်။",
            "Index ကို Crawler တွေ့ရှိသမျှမှ တည်ဆောက်ထားခြင်းဖြစ်ပြီး Search Engine သည် အကြိမ်တိုင်း အင်တာနက်တစ်ခုလုံးကို အစအဆုံး ပြန်လည် ရှာဖွေနေစရာ ဘယ်တော့မှ မလိုအပ်စေရ။",
          ],
        ),
        QuizQuestion(
          questionEn: "What does a search engine's \"ranking algorithm\" do?",
          questionMy:
              "Search Engine ၏ \"Ranking Algorithm\" သည် အဘယ်လုပ်ဆောင်ပေးသနည်း။",
          optionsEn: [
            "It decides the order in which matching pages are shown to a user",
            "It deletes pages permanently from the internet",
            "It writes brand-new webpages automatically",
            "It only works once a year",
          ],
          optionsMy: [
            "ကိုက်ညီသော စာမျက်နှာများကို အသုံးပြုသူအား ပြသရမည့် အစီအစဉ်ကို ဆုံးဖြတ်ပေးသည်",
            "စာမျက်နှာများကို အင်တာနက်မှ အမြဲတမ်း ဖျက်ပစ်သည်",
            "Webpage အသစ်များကို အလိုအလျောက် ရေးသားပေးသည်",
            "တစ်နှစ်လျှင် တစ်ကြိမ်သာ အလုပ်လုပ်သည်",
          ],
          correctIndex: 0,
          hintsEn: [
            "After the index has already found every page that could match your search, something still has to decide which one appears first.",
            "The ranking algorithm compares those matching pages using signals like relevance, and puts what it judges most useful nearer the top.",
          ],
          hintsMy: [
            "Index က သင့်ရှာဖွေမှုနှင့် ကိုက်ညီနိုင်သော စာမျက်နှာအားလုံးကို ရှာဖွေတွေ့ရှိပြီးသည့်နောက် မည်သည်ကို ဦးစွာဦးစွာ ပြသရမည်ကို ဆက်လက် ဆုံးဖြတ်ရဦးမည်။",
            "Ranking Algorithm သည် ထိုကိုက်ညီသော စာမျက်နှာများကို Relevance ကဲ့သို့ အချက်ပြမှုများနှင့် နှိုင်းယှဉ်ပြီး အသုံးဝင်ဆုံးဟု တွက်ချက်ရသောအရာကို ထိပ်ဆုံးအနီးသို့ တင်ပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why isn't the very first search result always the best one for what you actually need?",
          questionMy:
              "ရှာဖွေမှုတွင် ပထမဆုံးရလဒ်သည် သင်အမှန်တကယ် လိုအပ်သောအရာအတွက် အဘယ်ကြောင့် အမြဲအကောင်းဆုံး မဖြစ်ချေသနည်း။",
          optionsEn: [
            "Ranking is based on general relevance and other signals, and the very top spot can sometimes be a paid advert rather than the most useful page for you",
            "Search engines always show results in a completely random order",
            "Every single search result is always exactly equally useful",
            "The first result is chosen purely by a coin flip",
          ],
          optionsMy: [
            "Ranking သည် ယေဘုယျ Relevance နှင့် အခြားအချက်ပြမှုများအပေါ် အခြေခံပြီး ထိပ်ဆုံးနေရာသည် တစ်ခါတစ်ရံ သင့်အတွက် အသုံးဝင်ဆုံးစာမျက်နှာအစား ငွေပေးထားသော ကြော်ငြာဖြစ်နိုင်သောကြောင့်",
            "Search Engine များသည် ရလဒ်များကို လုံးဝ ကျပန်း အစီအစဉ်ဖြင့် အမြဲပြသကြောင့်",
            "ရှာဖွေရလဒ်တိုင်းသည် အမြဲအတိအကျ တူညီစွာ အသုံးဝင်ကြောင့်",
            "ပထမဆုံးရလဒ်ကို အကြေးဒင်တစ်ခု ပစ်ခြင်းဖြင့်သာ ရွေးချယ်ကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Ranking algorithms are very good, but they are still making a judgement based on general signals -- not reading your mind about your specific need.",
            "Also remember that a search results page can include sponsored (paid) results near the top, which are separate from the ranking algorithm's own ordering.",
          ],
          hintsMy: [
            "Ranking Algorithm များသည် အလွန်ကောင်းမွန်သော်လည်း ယေဘုယျ အချက်ပြမှုများအပေါ် အခြေခံ၍သာ ဆုံးဖြတ်ချက်ချသည် -- သင့်တိကျသော လိုအပ်ချက်ကို စိတ်ဖတ်၍ မဟုတ်ပါ။",
            "ရှာဖွေရလဒ်စာမျက်နှာတွင် Ranking Algorithm ကိုယ်တိုင်၏ အစီအစဉ်နှင့် သီးခြားဖြစ်သော ငွေပေးထားသည့် (Sponsored) ရလဒ်များ ထိပ်ဆုံးအနီးတွင် ပါဝင်နိုင်ကြောင်းကိုလည်း သတိရပါ။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w26-d2",
      dayNumber: 2,
      titleEn: "Match the Search Engine Vocabulary",
      titleMy: "Search Engine ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w26-dm-1",
          termEn: "Web crawler",
          termMy: "ဝဘ်စာမျက်နှာ စုဆောင်းသည့်စနစ် (Web Crawler)",
          matchEn:
              "An automated program that travels across the web reading and following links on pages",
          matchMy:
              "ကွန်ရက်တစ်လျှောက် ခရီးသွား၍ စာမျက်နှာများပေါ်ရှိ Link များကို ဖတ်ရှု လိုက်ပါသော အလိုအလျောက် Program",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w26-dm-2",
          termEn: "Index",
          termMy: "အညွှန်း (Index)",
          matchEn:
              "A giant, organized store of every page a crawler has found, used to look up results quickly",
          matchMy:
              "Crawler တွေ့ရှိထားသော စာမျက်နှာတိုင်းကို ရလဒ်များ လျင်မြန်စွာ ရှာဖွေရန် အသုံးပြုသည့် ကြီးမားစွာ စီစဉ်ထားသော သိုလှောင်ကျင်း",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w26-dm-3",
          termEn: "Ranking algorithm",
          termMy: "အဆင့်သတ်မှတ်သည့် အယ်လဂိုရစ်သမ် (Ranking Algorithm)",
          matchEn:
              "The set of rules a search engine uses to decide the order in which results are shown",
          matchMy:
              "ရလဒ်များ ပြသရမည့် အစီအစဉ်ကို ဆုံးဖြတ်ရန် Search Engine က အသုံးပြုသော စည်းမျဉ်းအစုအစည်း",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w26-dm-4",
          termEn: "Relevance",
          termMy: "သက်ဆိုင်မှု (Relevance)",
          matchEn:
              "How well a page's content actually matches what a search was looking for",
          matchMy:
              "စာမျက်နှာတစ်ခု၏ အကြောင်းအရာသည် ရှာဖွေနေသည့်အရာနှင့် မည်မျှ အမှန်တကယ် ကိုက်ညီကြောင်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w26-dm-5",
          termEn: "Search results page",
          termMy: "ရှာဖွေမှု ရလဒ်စာမျက်နှာ (Search Results Page)",
          matchEn:
              "The ranked list of links a search engine shows after crawling and ranking matching pages",
          matchMy:
              "ကိုက်ညီသော စာမျက်နှာများကို Crawl လုပ်ပြီး Ranking လုပ်ပြီးနောက် Search Engine ပြသသော အဆင့်သတ်မှတ်ထားသည့် Link စာရင်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w26-dm-6",
          termEn: "Sponsored result",
          termMy: "ငွေပေးထားသော ရလဒ် (Sponsored Result)",
          matchEn:
              "A paid result shown near the top of a search results page, separate from the ranking algorithm's own ordering",
          matchMy:
              "Ranking Algorithm ၏ ကိုယ်ပိုင်အစီအစဉ်နှင့် သီးခြားဖြစ်ပြီး Search Results Page ၏ ထိပ်ဆုံးအနီးတွင် ပြသသော ငွေပေးထားသည့် ရလဒ်",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w26-d3",
      dayNumber: 3,
      titleEn: "Sort: Happens Before You Search, or While You Search?",
      titleMy: "စီစစ်ကြမည် - မရှာမီ ဖြစ်ပျက်သလား၊ ရှာနေစဉ် ဖြစ်ပျက်သလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: [
          "Happens Before You Search (Crawling & Indexing)",
          "Happens While You Search (Ranking)",
        ],
        bucketsMy: [
          "မရှာမီ ဖြစ်ပျက်သည် (Crawling & Indexing)",
          "ရှာနေစဉ် ဖြစ်ပျက်သည် (Ranking)",
        ],
        items: [
          SortingItem(
            id: "y6comp-w26-sort-1",
            labelEn:
                "A web crawler follows links from one page to the next across the internet",
            labelMy:
                "Web Crawler သည် အင်တာနက်တစ်လျှောက် စာမျက်နှာတစ်ခုမှ နောက်တစ်ခုသို့ Link များကို လိုက်ပါသည်",
            correctBucketEn: "Happens Before You Search (Crawling & Indexing)",
            correctBucketMy: "မရှာမီ ဖြစ်ပျက်သည် (Crawling & Indexing)",
          ),
          SortingItem(
            id: "y6comp-w26-sort-2",
            labelEn:
                "The ranking algorithm compares your keywords to pages already stored in the index",
            labelMy:
                "Ranking Algorithm သည် သင့် Keyword များကို Index တွင် သိမ်းဆည်းထားပြီးသား စာမျက်နှာများနှင့် နှိုင်းယှဉ်သည်",
            correctBucketEn: "Happens While You Search (Ranking)",
            correctBucketMy: "ရှာနေစဉ် ဖြစ်ပျက်သည် (Ranking)",
          ),
          SortingItem(
            id: "y6comp-w26-sort-3",
            labelEn: "Pages the crawler finds are added to a giant index",
            labelMy:
                "Crawler တွေ့ရှိသော စာမျက်နှာများကို ကြီးမားသော Index ထဲသို့ ထည့်သွင်းသည်",
            correctBucketEn: "Happens Before You Search (Crawling & Indexing)",
            correctBucketMy: "မရှာမီ ဖြစ်ပျက်သည် (Crawling & Indexing)",
          ),
          SortingItem(
            id: "y6comp-w26-sort-4",
            labelEn:
                "The search engine decides which pages are most relevant to show first",
            labelMy:
                "Search Engine သည် မည်သည့်စာမျက်နှာများ အသုံးဝင်ဆုံးဖြစ်ပြီး ဦးစွာပြသရမည်ကို ဆုံးဖြတ်သည်",
            correctBucketEn: "Happens While You Search (Ranking)",
            correctBucketMy: "ရှာနေစဉ် ဖြစ်ပျက်သည် (Ranking)",
          ),
          SortingItem(
            id: "y6comp-w26-sort-5",
            labelEn:
                "The crawler reads the words and topics on each page it visits",
            labelMy:
                "Crawler သည် ၎င်းဝင်ရောက်သော စာမျက်နှာတိုင်း၏ စကားလုံးများနှင့် ခေါင်းစဉ်များကို ဖတ်ရှုသည်",
            correctBucketEn: "Happens Before You Search (Crawling & Indexing)",
            correctBucketMy: "မရှာမီ ဖြစ်ပျက်သည် (Crawling & Indexing)",
          ),
          SortingItem(
            id: "y6comp-w26-sort-6",
            labelEn:
                "The search engine displays a ranked results page in response to your keywords",
            labelMy:
                "Search Engine သည် သင့် Keyword များကို တုံ့ပြန်၍ အဆင့်သတ်မှတ်ထားသော ရလဒ်စာမျက်နှာကို ပြသသည်",
            correctBucketEn: "Happens While You Search (Ranking)",
            correctBucketMy: "ရှာနေစဉ် ဖြစ်ပျက်သည် (Ranking)",
          ),
          SortingItem(
            id: "y6comp-w26-sort-7",
            labelEn:
                "The index stores millions of pages so they can be found again quickly later",
            labelMy:
                "Index သည် နောက်ပိုင်း လျင်မြန်စွာ ပြန်လည်တွေ့ရှိနိုင်ရန် စာမျက်နှာသန်းချီကို သိုလှောင်ထားသည်",
            correctBucketEn: "Happens Before You Search (Crawling & Indexing)",
            correctBucketMy: "မရှာမီ ဖြစ်ပျက်သည် (Crawling & Indexing)",
          ),
          SortingItem(
            id: "y6comp-w26-sort-8",
            labelEn:
                "The ranking algorithm places the pages it judges most useful nearer the top of your results",
            labelMy:
                "Ranking Algorithm သည် ၎င်းအသုံးဝင်ဆုံးဟု တွက်ချက်ရသော စာမျက်နှာများကို သင့်ရလဒ်များ၏ ထိပ်ဆုံးအနီးတွင် ထားပေးသည်",
            correctBucketEn: "Happens While You Search (Ranking)",
            correctBucketMy: "ရှာနေစဉ် ဖြစ်ပျက်သည် (Ranking)",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w26-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi Wonders Why the Top Result Isn't Always Best",
      titleMy:
          "စာဖတ်ခြင်း - ထိပ်ဆုံးရလဒ်သည် အဘယ်ကြောင့် အမြဲအကောင်းဆုံး မဖြစ်ကြောင်း နှင်းချည် စဉ်းစားခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi Wonders Why the Top Result Isn't Always Best",
        titleMy:
            "ထိပ်ဆုံးရလဒ်သည် အဘယ်ကြောင့် အမြဲအကောင်းဆုံး မဖြစ်ကြောင်း နှင်းချည် စဉ်းစားခြင်း",
        passageEn:
            "For her Term 4 hobbies database, Nay Chi already knew how to search for exact matches inside a small table. But this week, she wants to research something bigger for a class project: how volcanoes actually erupt. She types \"how do volcanoes erupt\" into a search engine and clicks the very first result -- only to find a page selling volcano-shaped toys, with barely any real information at all.\n\nConfused, Nay Chi asks Ms. Thanda why the very top result wasn't the most useful one. Ms. Thanda explains that long before Nay Chi ever typed her search, a web crawler had already been travelling across the internet for months, following links from page to page and reading what each one contained. Every page the crawler found was added to an enormous index -- far too large for any person to search through by hand.\n\nWhen Nay Chi pressed search, the ranking algorithm compared her keywords against everything already stored in that index and decided which pages to show, and in what order. \"But that first result was a paid advert,\" Ms. Thanda explains, \"sitting near the top of the page separately from the ranking algorithm's own ordering -- not the page it judged most relevant to your actual question.\"\n\nNay Chi scrolls further down the results page and finds a clearly written science page about volcanoes a little lower down. \"So crawling finds the pages, indexing stores them, and ranking decides the order,\" she says, \"but I still have to look past the very first thing I see, and think for myself about which result actually answers my question.\"",
        passageMy:
            "Term 4 ၏ ဝါသနာဒေတာဘေ့စ်အတွက် Table ငယ်တစ်ခုအတွင်း အတိအကျ ကိုက်ညီမှုများကို ရှာဖွေနည်းကို နှင်းချည် သိရှိပြီးသားဖြစ်သည်။ သို့သော် ဒီအပတ်တွင် သူမသည် အတန်းစီမံကိန်းတစ်ခုအတွက် ပိုကြီးသောအရာတစ်ခုကို သုတေသနပြုလိုသည် -- မီးတောင်များ အမှန်တကယ် အဘယ်သို့ ပေါက်ကွဲသနည်း။ သူမသည် Search Engine ထဲသို့ \"how do volcanoes erupt\" ဟု ရိုက်ထည့်ပြီး ပထမဆုံးရလဒ်ကို နှိပ်လိုက်ရာ -- မီးတောင်ပုံစံ ကစားစရာများ ရောင်းချသော စာမျက်နှာတစ်ခုကိုသာ တွေ့ရှိပြီး အမှန်တကယ်အချက်အလက် လုံးလုံးနီးပါး မရှိချေ။\n\nနှင်းချည်သည် ရှုပ်ထွေးစွာဖြင့် ထိပ်ဆုံးရလဒ်သည် အဘယ်ကြောင့် အသုံးဝင်ဆုံးမဖြစ်ကြောင်း ဒေါ်သန္တာကို မေးလိုက်သည်။ ဒေါ်သန္တာက နှင်းချည် သူမ၏ ရှာဖွေမှုကို မရိုက်ထည့်မီ ကာလကြာရှည်စွာက Web Crawler တစ်ခုသည် အင်တာနက်တစ်လျှောက် လပေါင်းများစွာ ခရီးသွား၍ စာမျက်နှာတစ်ခုမှ နောက်တစ်ခုသို့ Link များ လိုက်ကာ တစ်ခုစီတွင် အဘယ်ပါဝင်ကြောင်း ဖတ်ရှုနေခဲ့ကြောင်း ရှင်းပြသည်။ Crawler တွေ့ရှိသမျှ စာမျက်နှာတိုင်းကို ကြီးမားလှစွာသော Index ထဲသို့ ထည့်သွင်းခဲ့သည် -- လူတစ်ဦးအနေဖြင့် လက်ဖြင့်ရှာဖွေရန် ကြီးလွန်းလှသည်။\n\nနှင်းချည် ရှာဖွေမှုကို နှိပ်လိုက်သောအခါ Ranking Algorithm သည် သူမ၏ Keyword များကို ထို Index ထဲတွင် သိမ်းဆည်းထားပြီးသားအရာအားလုံးနှင့် နှိုင်းယှဉ်ပြီး မည်သည့်စာမျက်နှာများကို မည်သည့်အစီအစဉ်ဖြင့် ပြသရမည်ကို ဆုံးဖြတ်ခဲ့သည်။ \"ဒါပေမဲ့ ထိုပထမဆုံးရလဒ်က ငွေပေးထားသော ကြော်ငြာတစ်ခုပါ\" ဟု ဒေါ်သန္တာ ရှင်းပြသည်၊ \"Ranking Algorithm ကိုယ်တိုင်၏ အစီအစဉ်နှင့် သီးခြားဖြစ်ကာ စာမျက်နှာ၏ ထိပ်ဆုံးအနီးတွင် ထားရှိထားတာ -- ၎င်းက မင်းရဲ့ အမှန်တကယ်မေးခွန်းနှင့် အသက်ဆိုင်ဆုံးဟု တွက်ချက်ထားသော စာမျက်နှာ မဟုတ်ပါဘူး\"။\n\nနှင်းချည်သည် ရလဒ်စာမျက်နှာကို ဆက်လက် Scroll လှိမ့်ကြည့်ရာ အနည်းငယ် အောက်ဘက်တွင် မီးတောင်များအကြောင်း ရှင်းလင်းစွာရေးထားသော သိပ္ပံစာမျက်နှာတစ်ခုကို တွေ့ရှိသည်။ \"ဒီတော့ Crawling က စာမျက်နှာတွေကို ရှာတွေ့တယ်၊ Indexing က ၎င်းတို့ကို သိမ်းထားတယ်၊ Ranking က အစီအစဉ်ကို ဆုံးဖြတ်ပေးတယ်\" ဟု သူမ ဆိုသည်၊ \"ဒါပေမဲ့ ငါမြင်တဲ့ ပထမဆုံးအရာကို ကျော်ပြီး ကြည့်ဖို့လိုတယ်၊ ငါ့မေးခွန်းကို ဘယ်ရလဒ်က တကယ်ဖြေပေးလဲ ကိုယ်တိုင်စဉ်းစားဖို့လည်း လိုတယ်\"။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what problem does Nay Chi find with the first search result she clicks?",
            questionMy:
                "စာပိုဒ် ၁ အရ နှင်းချည် နှိပ်လိုက်သော ပထမဆုံးရလဒ်တွင် အဘယ်ပြဿနာကို တွေ့ရှိသနည်း။",
            optionsEn: [
              "It sells volcano-shaped toys and has barely any real information",
              "It is written entirely in a foreign language",
              "It refuses to open at all",
              "It only contains a single blank image",
            ],
            optionsMy: [
              "မီးတောင်ပုံစံ ကစားစရာများ ရောင်းချပြီး အမှန်တကယ်အချက်အလက် လုံးလုံးနီးပါး မရှိကြောင်း",
              "လုံးဝ ဘာသာစကားခြားနားစွာ ရေးသားထားကြောင်း",
              "လုံးဝ မဖွင့်တော့ကြောင်း",
              "ဗလာပုံတစ်ပုံသာ ပါဝင်ကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, what has the web crawler already done long before Nay Chi typed her search?",
            questionMy:
                "စာပိုဒ် ၂ အရ နှင်းချည် သူမ၏ ရှာဖွေမှုကို မရိုက်ထည့်မီ Web Crawler သည် အဘယ်ကို ပြီးစီးအောင် လုပ်ဆောင်ခဲ့ပြီးနှင့်ကြောင်း။",
            optionsEn: [
              "Travelled across the internet, following links and reading pages, adding them to an index",
              "Deleted every page about volcanoes on purpose",
              "Written all of Nay Chi's homework for her",
              "Turned off the entire internet for one day",
            ],
            optionsMy: [
              "အင်တာနက်တစ်လျှောက် ခရီးသွား၍ Link များ လိုက်ကာ စာမျက်နှာများ ဖတ်ရှု Index ထဲသို့ ထည့်သွင်းခဲ့ကြောင်း",
              "မီးတောင်များအကြောင်း စာမျက်နှာအားလုံးကို တမင်တကာ ဖျက်ပစ်ခဲ့ကြောင်း",
              "နှင်းချည်၏ အိမ်စာအားလုံးကို သူမအတွက် ရေးပေးခဲ့ကြောင်း",
              "အင်တာနက်တစ်ခုလုံးကို တစ်ရက်စာ ပိတ်ပစ်ခဲ့ကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, why was the very first result actually near the top of the page?",
            questionMy:
                "စာပိုဒ် ၃ အရ ထိုပထမဆုံးရလဒ်သည် စာမျက်နှာ၏ ထိပ်ဆုံးအနီးတွင် အဘယ်ကြောင့် ရှိနေခဲ့သနည်း။",
            optionsEn: [
              "It was a paid advert, sitting separately from the ranking algorithm's own ordering",
              "It was chosen by the ranking algorithm as the single most relevant page",
              "It was the only page the crawler had ever found",
              "It was placed there by Nay Chi herself",
            ],
            optionsMy: [
              "Ranking Algorithm ကိုယ်တိုင်၏ အစီအစဉ်နှင့် သီးခြားဖြစ်သော ငွေပေးထားသည့် ကြော်ငြာတစ်ခုဖြစ်ကြောင်း",
              "Ranking Algorithm က အသက်ဆိုင်ဆုံးစာမျက်နှာတစ်ခုတည်းအဖြစ် ရွေးချယ်ထားခဲ့ကြောင်း",
              "Crawler ရှာတွေ့ခဲ့ဘူးသော တစ်ခုတည်းသောစာမျက်နှာဖြစ်ကြောင်း",
              "နှင်းချည်ကိုယ်တိုင် ထိုနေရာတွင် ထားခဲ့ကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, what does Nay Chi conclude about crawling, indexing and ranking?",
            questionMy:
                "စာပိုဒ် ၄ အရ Crawling၊ Indexing နှင့် Ranking နှင့် ပတ်သက်၍ နှင်းချည် မည်သို့ နိဂုံးချုပ်သနည်း။",
            optionsEn: [
              "She still needs to look past the first result and think about which one actually answers her question",
              "The very first result is always correct no matter what",
              "Search engines never need a ranking algorithm at all",
              "Crawling and indexing are exactly the same single step",
            ],
            optionsMy: [
              "ပထမဆုံးရလဒ်ကို ကျော်ပြီး ဘယ်ရလဒ်က သူမ၏ မေးခွန်းကို တကယ်ဖြေပေးလဲ ကိုယ်တိုင် စဉ်းစားရဦးမည်ဖြစ်ကြောင်း",
              "ပထမဆုံးရလဒ်သည် မည်သို့ပင်ဖြစ်စေ အမြဲမှန်ကန်ကြောင်း",
              "Search Engine များတွင် Ranking Algorithm မည်သည့်အခါမျှ မလိုအပ်ကြောင်း",
              "Crawling နှင့် Indexing သည် အတိအကျ တူညီသော အဆင့်တစ်ခုတည်း ဖြစ်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w26-d5",
      dayNumber: 5,
      titleEn: "Search Engines Round-Up",
      titleMy: "Search Engine အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "What does a web crawler do?",
          questionMy: "Web Crawler သည် အဘယ်လုပ်ဆောင်သနည်း။",
          optionsEn: [
            "Travels across the web, following links and reading pages",
            "Types search results by hand",
            "Deletes old webpages automatically",
            "Only searches inside one website",
          ],
          optionsMy: [
            "ကွန်ရက်တစ်လျှောက် Link များ လိုက်ကာ စာမျက်နှာများ ဖတ်ရှု ခရီးသွားသည်",
            "ရှာဖွေရလဒ်များကို လက်ဖြင့် ရိုက်ပေးသည်",
            "စာမျက်နှာဟောင်းများကို အလိုအလျောက် ဖျက်ပစ်သည်",
            "Website တစ်ခုတည်းအတွင်းသာ ရှာဖွေသည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is a search engine's index for?",
          questionMy: "Search Engine ၏ Index ကို အဘယ်အတွက် အသုံးပြုသနည်း။",
          optionsEn: [
            "To store found pages so results can be looked up quickly",
            "To delete pages permanently",
            "To play videos automatically",
            "To type new webpages",
          ],
          optionsMy: [
            "ရလဒ်များကို လျင်မြန်စွာ ရှာဖွေနိုင်ရန် တွေ့ရှိထားသော စာမျက်နှာများကို သိုလှောင်ရန်",
            "စာမျက်နှာများကို အမြဲတမ်း ဖျက်ပစ်ရန်",
            "ဗီဒီယိုများကို အလိုအလျောက် ဖွင့်ရန်",
            "Webpage အသစ်များ ရိုက်ရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What does a ranking algorithm decide?",
          questionMy: "Ranking Algorithm သည် အဘယ်ကို ဆုံးဖြတ်ပေးသနည်း။",
          optionsEn: [
            "The order in which matching results are shown",
            "Which webpage to delete next",
            "Which computer virus to remove",
            "Which font a webpage should use",
          ],
          optionsMy: [
            "ကိုက်ညီသော ရလဒ်များ ပြသရမည့် အစီအစဉ်",
            "နောက်တစ်ခု ဖျက်ပစ်ရမည့် Webpage",
            "ဖယ်ရှားရမည့် ကွန်ပျူတာဗိုင်းရပ်စ်",
            "Webpage အသုံးပြုသင့်သည့် ဖောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "Why isn't the top search result always the most useful one?",
          questionMy:
              "ရှာဖွေရလဒ်တွင် ထိပ်ဆုံးရလဒ်သည် အဘယ်ကြောင့် အမြဲအသုံးဝင်ဆုံး မဖြစ်ချေသနည်း။",
          optionsEn: [
            "It can sometimes be a paid advert rather than the most relevant page",
            "Every result is always equally useless",
            "Search engines never rank results at all",
            "The top spot is always chosen randomly",
          ],
          optionsMy: [
            "တစ်ခါတစ်ရံ ငွေပေးထားသော ကြော်ငြာဖြစ်နိုင်ပြီး အသက်ဆိုင်ဆုံးစာမျက်နှာ မဖြစ်နိုင်ကြောင်း",
            "ရလဒ်တိုင်းသည် အမြဲ အသုံးမဝင်ညီညီဖြစ်ကြောင်း",
            "Search Engine များသည် ရလဒ်များကို ဘယ်တော့မှ Rank မလုပ်ကြောင်း",
            "ထိပ်ဆုံးနေရာကို အမြဲ ကျပန်းရွေးချယ်ကြောင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What lesson did Nay Chi learn from her volcano research?",
          questionMy:
              "သူမ၏ မီးတောင်သုတေသနမှ နှင်းချည် မည်သည့်သင်ခန်းစာ ရရှိခဲ့သနည်း။",
          optionsEn: [
            "She must look past the first result and think about which one actually answers her question",
            "The first result is always the correct answer",
            "Search engines should never be used for research",
            "Crawling and ranking are exactly the same step",
          ],
          optionsMy: [
            "ပထမဆုံးရလဒ်ကို ကျော်ပြီး ဘယ်ရလဒ်က သူမ၏ မေးခွန်းကို တကယ်ဖြေပေးလဲ စဉ်းစားရမည်ကြောင်း",
            "ပထမဆုံးရလဒ်သည် အမြဲ မှန်ကန်သော အဖြေဖြစ်ကြောင်း",
            "Search Engine များကို သုတေသနအတွက် ဘယ်တော့မှ မသုံးသင့်ကြောင်း",
            "Crawling နှင့် Ranking သည် အတိအကျ တူညီသော အဆင့်ဖြစ်ကြောင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek27 = CourseWeekDef(
  id: "course-year6-computing-w27",
  weekNumber: 27,
  titleEn:
      "Is This Website Reliable? Evaluating Sources and Safe Communication",
  titleMy:
      "ဤဝဘ်ဆိုက် ယုံကြည်ရလား - Source အကဲဖြတ်ခြင်းနှင့် ဘေးကင်းသော ဆက်သွယ်ခြင်း",
  xpReward: 20,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w27-d1",
      dayNumber: 1,
      titleEn: "Checking Sources and Staying Safe Online",
      titleMy: "Source များ စစ်ဆေးခြင်းနှင့် အွန်လိုင်းတွင် ဘေးကင်းစွာနေခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Why is it important to check who the author of a webpage is before trusting it?",
          questionMy:
              "Webpage တစ်ခုကို မယုံကြည်မီ ၎င်း၏ Author ကို အဘယ်ကြောင့် စစ်ဆေးသင့်သနည်း။",
          optionsEn: [
            "To judge whether they are qualified and trustworthy on that topic",
            "Because every author's name is always fake",
            "Because webpages without an author are always the most accurate",
            "Because the author's name changes the webpage's colour scheme",
          ],
          optionsMy: [
            "ထိုခေါင်းစဉ်တွင် သူတို့ အရည်အချင်းပြည့်မှီ ယုံကြည်ရမှုရှိမရှိ ဆုံးဖြတ်ရန်",
            "Author အမည်တိုင်းသည် အမြဲအတု ဖြစ်နေသောကြောင့်",
            "Author မပါသော Webpage များသည် အမြဲအတိကျဆုံး ဖြစ်သောကြောင့်",
            "Author အမည်သည် Webpage ၏ အရောင်ဒီဇိုင်းကို ပြောင်းလဲစေသောကြောင့်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about the difference between a scientist writing about volcanoes and a random stranger with no expertise writing the same topic.",
            "Knowing who wrote something helps you judge whether they actually know what they are talking about.",
          ],
          hintsMy: [
            "မီးတောင်များအကြောင်း ရေးသားသော သိပ္ပံပညာရှင်တစ်ဦးနှင့် ကျွမ်းကျင်မှုမရှိသော ကျပန်းလူတစ်ဦးတို့ တူညီသောခေါင်းစဉ်ကို ရေးသားခြင်းကြား ခြားနားချက်ကို စဉ်းစားကြည့်ပါ။",
            "တစ်ခုခုကို မည်သူ ရေးသားခဲ့ကြောင်း သိရှိခြင်းသည် သူတို့ ပြောနေသောအရာကို အမှန်တကယ် သိရှိမသိရှိ ဆုံးဖြတ်ရန် ကူညီပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Why does a webpage's publication or update date matter when judging reliability?",
          questionMy:
              "ယုံကြည်ရမှုကို ဆုံးဖြတ်သည့်အခါ Webpage ၏ ရေးသား သို့မဟုတ် Update လုပ်ခဲ့သည့် ရက်စွဲသည် အဘယ်ကြောင့် အရေးကြီးသနည်း။",
          optionsEn: [
            "Old information can become outdated or no longer accurate",
            "Every date printed on a webpage is always false",
            "The date changes how many images a page has",
            "Only pages published today can ever be trusted",
          ],
          optionsMy: [
            "ရေးသားထားချိန် ကြာရှည်ခဲ့သော အချက်အလက်များသည် ခေတ်နောက်ကျ (သို့) မမှန်ကန်တော့သည့်အခါ ရှိတတ်ကြောင်း",
            "Webpage ပေါ်ရှိ ရက်စွဲတိုင်းသည် အမြဲမမှန်ကန်ကြောင်း",
            "ရက်စွဲသည် စာမျက်နှာတွင် ပုံအရေအတွက် မည်မျှရှိသည်ကို ပြောင်းလဲပေးကြောင်း",
            "ဒီနေ့ ထုတ်ဝေထားသော စာမျက်နှာများကိုသာ ယုံကြည်နိုင်ကြောင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about a webpage listing the world's tallest buildings written ten years ago -- would it still be accurate today?",
            "Facts, records and scientific understanding can all change over time, so checking a page's date helps you judge whether its information could be out of date.",
          ],
          hintsMy: [
            "ဆယ်နှစ်ကျော်က ရေးသားထားသော ကမ္ဘာ့အမြင့်ဆုံးအဆောက်အအုံများ စာရင်းပါ Webpage တစ်ခုကို စဉ်းစားကြည့်ပါ -- ၎င်းသည် ဒီနေ့တိုင် မှန်ကန်နေပါသလား။",
            "အချက်အလက်၊ မှတ်တမ်းနှင့် သိပ္ပံနားလည်မှုများသည် အချိန်နှင့်အမျှ ပြောင်းလဲနိုင်သောကြောင့် စာမျက်နှာ၏ ရက်စွဲကို စစ်ဆေးခြင်းက ၎င်း၏အချက်အလက် ခေတ်နောက်ကျနေနိုင်ခြင်းရှိမရှိ ဆုံးဖြတ်ရန် ကူညီပေးသည်။",
          ],
        ),
        QuizQuestion(
          questionEn: "What is \"bias\" in a source of information?",
          questionMy:
              "အချက်အလက်ရင်းမြစ်တစ်ခုတွင် \"Bias\" ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "Unfairly favouring one viewpoint over others, which can affect how trustworthy the information is",
            "A type of computer virus found on unsafe websites",
            "The exact date a webpage was published",
            "A password used to protect a webpage",
          ],
          optionsMy: [
            "အခြားအမြင်ကွက်များထက် အမြင်တစ်ခုကို မတရားစွာ လိုက်စားခြင်း၊ ၎င်းက အချက်အလက်၏ ယုံကြည်ရမှုကို ထိခိုက်စေနိုင်သည်",
            "ဘေးကင်းမှုမရှိသော Website များတွင် တွေ့ရသော ကွန်ပျူတာဗိုင်းရပ်စ် အမျိုးအစား",
            "Webpage ထုတ်ဝေခဲ့သည့် အတိအကျ ရက်စွဲ",
            "Webpage တစ်ခုကို ကာကွယ်ရန် သုံးသော စကားဝှက်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Imagine a review of a toy written only by the company that makes and sells that exact toy -- would it be completely fair?",
            "A biased source presents only one side of a story, which is why balanced information from multiple sources tends to be more trustworthy.",
          ],
          hintsMy: [
            "အရာဝတ္ထုကစားစရာတစ်ခုကို ထုတ်လုပ် ရောင်းချသည့် ကုမ္ပဏီကိုယ်တိုင်သာ ရေးသားထားသော Review တစ်ခုကို စိတ်ကူးကြည့်ပါ -- ၎င်းသည် လုံးဝ မျှတပါသလား။",
            "Bias ရှိသော Source တစ်ခုသည် အကြောင်းအရာ၏ တစ်ဖက်ကိုသာ ဖော်ပြသောကြောင့် Source များစွာမှ မျှတသော အချက်အလက်ကို ကြည့်ရှုခြင်းက ပိုမိုယုံကြည်ရသည့် အလားအလာ ရှိသည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What is the safest way to check whether information you found online is actually true?",
          questionMy:
              "အွန်လိုင်းတွင် တွေ့ရှိသောအချက်အလက်သည် အမှန်တကယ် မှန်ကန်မမှန်ကန်ကို စစ်ဆေးရန် အဘယ်နည်းလမ်းက ဘေးကင်းဆုံးဖြစ်သနည်း။",
          optionsEn: [
            "Cross-check it against several other independent, trustworthy sources",
            "Trust the very first webpage you see, always",
            "Only ever check one single source, no matter what",
            "Assume every webpage is automatically true",
          ],
          optionsMy: [
            "၎င်းကို အခြားလွတ်လပ်ပြီး ယုံကြည်ရသော Source များစွာနှင့် ကြိုးစား နှိုင်းယှဉ်စစ်ဆေးရန်",
            "မြင်ရသော ပထမဆုံး Webpage ကို အမြဲယုံကြည်ရန်",
            "မည်သို့ပင်ဖြစ်စေ Source တစ်ခုတည်းကိုသာ စစ်ဆေးရန်",
            "Webpage တိုင်းသည် အလိုအလျောက် မှန်ကန်သည်ဟု ယူဆရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "If Nay Chi found the same fact confirmed on several separate, trustworthy pages, would that make her more or less confident it is true?",
            "This checking habit is called cross-checking -- comparing information across multiple independent sources rather than trusting just one.",
          ],
          hintsMy: [
            "နှင်းချည်သည် တူညီသော အချက်အလက်ကို သီးခြားစီဖြစ်ပြီး ယုံကြည်ရသော စာမျက်နှာများစွာမှ အတည်ပြုတွေ့ရှိလျှင် ၎င်း၏ မှန်ကန်မှုအပေါ် ပိုယုံကြည်စိတ်ချမလား၊ ပိုမနည်းသွားမလား။",
            "ဤစစ်ဆေးသည့်အလေ့အထကို Cross-checking ဟု ခေါ်ဆိုသည် -- Source တစ်ခုတည်းကိုသာ ယုံကြည်မည့်အစား Source များစွာ ချင်း နှိုင်းယှဉ်ခြင်း ဖြစ်သည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w27-d2",
      dayNumber: 2,
      titleEn: "Match the Reliability and Safety Vocabulary",
      titleMy: "ယုံကြည်ရမှုနှင့် ဘေးကင်းရေး ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w27-dm-1",
          termEn: "Author",
          termMy: "စာရေးသူ (Author)",
          matchEn:
              "The person or organization who wrote a webpage's content -- checking who they are helps judge reliability",
          matchMy:
              "Webpage ၏ အကြောင်းအရာကို ရေးသားသူ (သို့) အဖွဲ့အစည်း -- ၎င်းတို့ မည်သူဖြစ်ကြောင်းကို စစ်ဆေးခြင်းက ယုံကြည်ရမှုကို ဆုံးဖြတ်ရန် ကူညီသည်",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w27-dm-2",
          termEn: "Publication date",
          termMy: "ထုတ်ဝေသည့်ရက်စွဲ (Publication Date)",
          matchEn:
              "When a page was written or last updated -- old information can become out of date",
          matchMy:
              "စာမျက်နှာကို ရေးသား (သို့) နောက်ဆုံး Update လုပ်ခဲ့သည့်အချိန် -- ခေတ်ဟောင်းအချက်အလက်များသည် ခေတ်နောက်ကျနိုင်သည်",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w27-dm-3",
          termEn: "Bias",
          termMy: "ရှုထောင့်ဘက်လိုက်မှု (Bias)",
          matchEn:
              "Unfairly favouring one viewpoint over others, which can affect how trustworthy a source is",
          matchMy:
              "အခြားအမြင်ကွက်များထက် အမြင်တစ်ခုကို မတရားစွာ လိုက်စားခြင်း၊ ၎င်းက Source တစ်ခု၏ ယုံကြည်ရမှုကို ထိခိုက်စေနိုင်သည်",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w27-dm-4",
          termEn: "Cross-checking",
          termMy: "ပြန်လည်စစ်ဆေးခြင်း (Cross-checking)",
          matchEn:
              "Comparing information across several independent sources before trusting it",
          matchMy:
              "အချက်အလက်ကို မယုံကြည်မီ လွတ်လပ်သော Source များစွာနှင့် နှိုင်းယှဉ်ခြင်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w27-dm-5",
          termEn: "Email etiquette",
          termMy: "အီးမေးလ် ကျင့်ဝတ် (Email Etiquette)",
          matchEn:
              "Polite habits for writing clear, respectful emails, such as a clear subject line and polite greeting",
          matchMy:
              "ရှင်းလင်းသော Subject Line နှင့် ယဉ်ကျေးသော နှုတ်ဆက်ချက်ကဲ့သို့ ရှင်းလင်း၍ ယဉ်ကျေးသော Email ရေးသားရန် ယဉ်ကျေးသော အလေ့အထများ",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w27-dm-6",
          termEn: "Suspicious message (phishing)",
          termMy: "သံသယဖြစ်ဖွယ် စာတိုပို့ချက် (Phishing)",
          matchEn:
              "A fake message trying to trick someone into giving away personal information or clicking a dangerous link",
          matchMy:
              "လူတစ်ဦးအား ကိုယ်ရေးအချက်အလက် ပေးအပ်စေရန် (သို့) အန္တရာယ်ရှိသော Link ကို နှိပ်စေရန် လှည့်စားရန် ကြိုးစားသော အတု Message",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w27-d3",
      dayNumber: 3,
      titleEn: "Sort: Good Sign or Warning Sign?",
      titleMy: "စီစစ်ကြမည် - ကောင်းမွန်သောလက္ခဏာလား၊ သတိပေးလက္ခဏာလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Good Sign", "Warning Sign"],
        bucketsMy: ["ကောင်းမွန်သောလက္ခဏာ", "သတိပေးလက္ခဏာ"],
        items: [
          SortingItem(
            id: "y6comp-w27-sort-1",
            labelEn:
                "The page clearly names its author and their qualifications",
            labelMy:
                "စာမျက်နှာသည် ၎င်း၏ Author နှင့် သူတို့၏ အရည်အချင်းများကို ရှင်းလင်းစွာ ဖော်ပြသည်",
            correctBucketEn: "Good Sign",
            correctBucketMy: "ကောင်းမွန်သောလက္ခဏာ",
          ),
          SortingItem(
            id: "y6comp-w27-sort-2",
            labelEn:
                "A message urgently demands your password or bank details right now",
            labelMy:
                "Message တစ်ခုသည် ယခုချက်ချင်း သင့်စကားဝှက် (သို့) ဘဏ်အချက်အလက်များကို အလျင်တဆော တောင်းဆိုသည်",
            correctBucketEn: "Warning Sign",
            correctBucketMy: "သတိပေးလက္ခဏာ",
          ),
          SortingItem(
            id: "y6comp-w27-sort-3",
            labelEn: "The page shows a recent, clearly stated update date",
            labelMy:
                "စာမျက်နှာသည် မကြာသေးမီက ရှင်းလင်းစွာ ဖော်ပြထားသော Update ရက်စွဲကို ပြသသည်",
            correctBucketEn: "Good Sign",
            correctBucketMy: "ကောင်းမွန်သောလက္ခဏာ",
          ),
          SortingItem(
            id: "y6comp-w27-sort-4",
            labelEn: "No author or date appears anywhere on the page",
            labelMy:
                "စာမျက်နှာတွင် Author (သို့) ရက်စွဲ မည်သည့်နေရာမှ မပါဝင်ပါ",
            correctBucketEn: "Warning Sign",
            correctBucketMy: "သတိပေးလက္ခဏာ",
          ),
          SortingItem(
            id: "y6comp-w27-sort-5",
            labelEn:
                "The same facts are confirmed by several independent trustworthy sources",
            labelMy:
                "တူညီသော အချက်အလက်များကို လွတ်လပ်ပြီး ယုံကြည်ရသော Source များစွာက အတည်ပြုထားသည်",
            correctBucketEn: "Good Sign",
            correctBucketMy: "ကောင်းမွန်သောလက္ခဏာ",
          ),
          SortingItem(
            id: "y6comp-w27-sort-6",
            labelEn:
                "A link's spelling looks slightly different from the real website's name",
            labelMy:
                "Link တစ်ခု၏ စာလုံးပေါင်းသည် အစစ်အမှန် Website အမည်ထက် အနည်းငယ် ကွဲပြားနေသည်",
            correctBucketEn: "Warning Sign",
            correctBucketMy: "သတိပေးလက္ခဏာ",
          ),
          SortingItem(
            id: "y6comp-w27-sort-7",
            labelEn:
                "An email greets you politely and clearly states its purpose in the subject line",
            labelMy:
                "Email တစ်စောင်သည် သင့်ကို ယဉ်ကျေးစွာ နှုတ်ဆက်ပြီး ၎င်း၏ ရည်ရွယ်ချက်ကို Subject Line တွင် ရှင်းလင်းစွာ ဖော်ပြသည်",
            correctBucketEn: "Good Sign",
            correctBucketMy: "ကောင်းမွန်သောလက္ခဏာ",
          ),
          SortingItem(
            id: "y6comp-w27-sort-8",
            labelEn:
                "The page presents only one extreme opinion and ignores all other evidence",
            labelMy:
                "စာမျက်နှာသည် အစွန်းရောက်အမြင်တစ်ခုကိုသာ တင်ပြပြီး အခြားသက်သေအထောက်အထားများကို လျစ်လျူရှုသည်",
            correctBucketEn: "Warning Sign",
            correctBucketMy: "သတိပေးလက္ခဏာ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w27-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi Checks Her Sources and a Strange Email",
      titleMy:
          "စာဖတ်ခြင်း - နှင်းချည် သူမ၏ Source များနှင့် ထူးဆန်းသော Email တစ်စောင်ကို စစ်ဆေးခြင်း",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi Checks Her Sources and a Strange Email",
        titleMy:
            "နှင်းချည် သူမ၏ Source များနှင့် ထူးဆန်းသော Email တစ်စောင်ကို စစ်ဆေးခြင်း",
        passageEn:
            "For her volcano project, Nay Chi finds two webpages that disagree with each other about how often a certain volcano erupts. The first page names a university geology professor as its author and shows it was updated just three months ago. The second page has no author listed at all, no date, and only argues that volcanoes are \"completely unpredictable and impossible to study\" -- ignoring the careful evidence scientists have gathered for decades.\n\nRemembering what Ms. Thanda taught, Nay Chi checks the professor's page against two other trustworthy science websites, and finds the same eruption pattern confirmed on all three. She decides the first page is reliable, and the second page -- with no author, no date, and a one-sided argument -- is not.\n\nThat same evening, Nay Chi opens her email to ask Ms. Thanda a question about her project. She writes a clear subject line, greets her teacher politely, and asks her question directly -- good email etiquette, just as she has been taught. But right before sending it, a new message arrives claiming to be from her school, urgently demanding she click a strange link and type in her password \"immediately or lose access forever.\"\n\nSomething feels wrong. The link's spelling looks slightly different from her real school website's address, and no real school message has ever demanded a password this way. Nay Chi does not click it. Instead, she shows the message to Ms. Thanda the next morning, who confirms it was exactly the kind of suspicious message -- a phishing attempt -- they had discussed in class.",
        passageMy:
            "သူမ၏ မီးတောင်စီမံကိန်းအတွက် နှင်းချည်သည် မီးတောင်တစ်လုံး မည်မျှမကြာခဏ ပေါက်ကွဲကြောင်း တစ်ခုနှင့်တစ်ခု သဘောကွဲလွဲနေသော Webpage နှစ်ခုကို တွေ့ရှိသည်။ ပထမစာမျက်နှာသည် ၎င်း၏ Author အဖြစ် တက္ကသိုလ် ဘူမိဗေဒ ပါမောက္ခတစ်ဦးကို ဖော်ပြထားပြီး လသုံးလကျော်ကလောက်ကသာ Update လုပ်ခဲ့ကြောင်း ပြသသည်။ ဒုတိယစာမျက်နှာတွင်မူ Author လုံးဝ စာရင်းမပါဝင်ဘဲ၊ ရက်စွဲမရှိဘဲ၊ မီးတောင်များသည် \"လုံးဝ ခန့်မှန်း၍မရနိုင်ဘဲ လေ့လာရန် မဖြစ်နိုင်ပါ\" ဟု တစ်ဖက်စွန်းသာ ငြင်းခုန်ထားသည် -- သိပ္ပံပညာရှင်များ ဆယ်စုနှစ်များအတွင်း ဂရုတစိုက် စုဆောင်းထားသော သက်သေအထောက်အထားများကို လျစ်လျူရှုထားသည်။\n\nဒေါ်သန္တာ သင်ပေးခဲ့သည့်အရာကို သတိရလျက် နှင်းချည်သည် ပါမောက္ခ၏ စာမျက်နှာကို ယုံကြည်ရသော အခြားသိပ္ပံ Website နှစ်ခုနှင့် နှိုင်းယှဉ်စစ်ဆေးကြည့်ရာ သုံးခုစလုံးတွင် တူညီသော မီးတောင်ပေါက်ကွဲမှု ပုံစံကို အတည်ပြုတွေ့ရှိသည်။ ပထမစာမျက်နှာကို ယုံကြည်ရသည်ဟု သူမ ဆုံးဖြတ်ပြီး ဒုတိယစာမျက်နှာ -- Author မရှိ၊ ရက်စွဲမရှိ၊ တစ်ဖက်စွန်းအငြင်းအခုံပါသည့်စာမျက်နှာ -- ကို မယုံကြည်ဟု ဆုံးဖြတ်လိုက်သည်။\n\nထိုညတွင်ပင် နှင်းချည်သည် သူမ၏ စီမံကိန်းအကြောင်း ဒေါ်သန္တာကို မေးရန် Email ကို ဖွင့်လိုက်သည်။ ရှင်းလင်းသော Subject Line ကို ရေးသားပြီး သူမ၏ ဆရာမကို ယဉ်ကျေးစွာ နှုတ်ဆက်ကာ သူမ၏ မေးခွန်းကို တိုက်ရိုက်မေးမြန်းသည် -- သင်ကြားခံခဲ့ရသည့်အတိုင်း ကောင်းမွန်သော Email Etiquette ဖြစ်သည်။ သို့သော် ပေးပို့မည့် ခဏတိုင်းပင် သူမ၏ ကျောင်းမှ ဖြစ်ကြောင်း ဆိုသော Message အသစ်တစ်ခု ရောက်ရှိလာပြီး ထူးဆန်းသော Link တစ်ခုကို နှိပ်ကာ \"ချက်ချင်း\" (သို့) \"ထာဝစဉ် Access ပျောက်ဆုံးမည်\" ဟု သူမ၏ စကားဝှက်ကို ရိုက်ထည့်ရန် အလျင်တဆော တောင်းဆိုနေသည်။\n\nတစ်ခုခု မှားနေသည်ဟု ခံစားရသည်။ Link ၏ စာလုံးပေါင်းသည် သူမ၏ အစစ်အမှန်ကျောင်း Website ၏ လိပ်စာထက် အနည်းငယ် ကွဲပြားနေပြီး အစစ်အမှန်ကျောင်း Message တစ်ခုမျှ ဤသို့ စကားဝှက်ကို ဘယ်တော့မှ တောင်းဆိုခဲ့ဖူးသည် မဟုတ်ပါ။ နှင်းချည်သည် ၎င်းကို မနှိပ်ပါ။ ယင်းအစား နောက်နေ့မနက်တွင် ဒေါ်သန္တာအား ထို Message ကို ပြပြီး ၎င်းက အတန်းတွင် ဆွေးနွေးခဲ့ကြသော Suspicious Message အမျိုးအစားပင် -- Phishing ကြိုးပမ်းမှု -- အတိအကျ ဖြစ်ကြောင်း အတည်ပြုပေးသည်။",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what is missing from the second webpage about volcanoes?",
            questionMy:
                "စာပိုဒ် ၁ အရ မီးတောင်များအကြောင်း ဒုတိယစာမျက်နှာတွင် အဘယ်ချို့ယွင်းနေသနည်း။",
            optionsEn: [
              "An author and a date, and it only presents a one-sided argument",
              "Every single word on the page",
              "Any pictures of volcanoes at all",
              "A working internet connection",
            ],
            optionsMy: [
              "Author နှင့် ရက်စွဲ၊ ၎င်းသည် တစ်ဖက်စွန်းအငြင်းအခုံသာ တင်ပြထားကြောင်း",
              "စာမျက်နှာပေါ်ရှိ စကားလုံးတိုင်း",
              "မီးတောင်ပုံများ တစ်ခုမျှ",
              "အလုပ်လုပ်နေသော အင်တာနက်ချိတ်ဆက်မှု",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, how did Nay Chi decide the professor's page was reliable?",
            questionMy:
                "စာပိုဒ် ၂ အရ ပါမောက္ခ၏ စာမျက်နှာသည် ယုံကြည်ရသည်ဟု နှင်းချည် မည်သို့ ဆုံးဖြတ်ခဲ့သနည်း။",
            optionsEn: [
              "She cross-checked it against two other trustworthy sources and found the same facts confirmed",
              "She guessed randomly without checking anything",
              "She only trusted it because it had a nice colour scheme",
              "She asked no one and checked nothing at all",
            ],
            optionsMy: [
              "၎င်းကို ယုံကြည်ရသော အခြားရင်းမြစ်နှစ်ခုနှင့် Cross-check လုပ်ပြီး တူညီသောအချက်အလက်များ အတည်ပြုတွေ့ရှိခဲ့ကြောင်း",
              "ဘာမျှ မစစ်ဆေးဘဲ ကျပန်း ခန့်မှန်းခဲ့ကြောင်း",
              "အရောင်ဒီဇိုင်း လှသောကြောင့်သာ ယုံကြည်ခဲ့ကြောင်း",
              "မည်သူ့ကိုမျှ မမေးဘဲ ဘာမျှ လုံးဝ မစစ်ဆေးခဲ့ကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what good email etiquette did Nay Chi practise when writing to Ms. Thanda?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဒေါ်သန္တာထံ ရေးသားစဉ် နှင်းချည် မည်သည့် ကောင်းမွန်သော Email Etiquette ကို ကျင့်သုံးခဲ့သနည်း။",
            optionsEn: [
              "A clear subject line and a polite greeting before asking her question directly",
              "Demanding a password from her teacher immediately",
              "Sending the email with no subject line and no greeting at all",
              "Clicking a suspicious link before writing anything",
            ],
            optionsMy: [
              "ရှင်းလင်းသော Subject Line နှင့် ယဉ်ကျေးသော နှုတ်ဆက်ချက်ဖြင့် သူမ၏ မေးခွန်းကို တိုက်ရိုက်မေးမြန်းခဲ့ကြောင်း",
              "သူမ၏ ဆရာမထံမှ စကားဝှက်ကို ချက်ချင်း တောင်းဆိုခဲ့ကြောင်း",
              "Subject Line နှင့် နှုတ်ဆက်ချက် လုံးဝမပါဘဲ Email ပို့ခဲ့ကြောင်း",
              "မည်သည့်အရာမျှ မရေးမီ Suspicious Link ကို နှိပ်ခဲ့ကြောင်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, why did Nay Chi refuse to click the strange link in the suspicious message?",
            questionMy:
                "စာပိုဒ် ၄ အရ Suspicious Message ရှိ ထူးဆန်းသော Link ကို နှင်းချည် အဘယ်ကြောင့် ငြင်းဆန်ခဲ့သနည်း။",
            optionsEn: [
              "The link's spelling looked slightly different from her real school's address, and it urgently demanded her password",
              "She was too busy with her volcano project to click anything",
              "The message was written in a language she could not read",
              "Her computer would not let her click any links at all",
            ],
            optionsMy: [
              "Link ၏ စာလုံးပေါင်းသည် သူမ၏ အစစ်အမှန်ကျောင်းလိပ်စာထက် အနည်းငယ် ကွဲပြားနေပြီး သူမ၏ စကားဝှက်ကို အလျင်တဆော တောင်းဆိုသောကြောင့်",
              "သူမ၏ မီးတောင်စီမံကိန်းနှင့် အလွန်များနေ၍ မည်သည့်အရာကိုမျှ နှိပ်ချိန်မရသောကြောင့်",
              "Message ကို သူမ ဖတ်၍မရသော ဘာသာစကားဖြင့် ရေးထားသောကြောင့်",
              "သူမ၏ ကွန်ပျူတာက Link မည်သည့်တစ်ခုကိုမျှ နှိပ်ခွင့်မပေးခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w27-d5",
      dayNumber: 5,
      titleEn: "Reliability and Safety Round-Up",
      titleMy: "ယုံကြည်ရမှုနှင့် ဘေးကင်းရေး အနှစ်ချုပ်",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn: "Why should you check who wrote a webpage?",
          questionMy:
              "Webpage တစ်ခုကို မည်သူရေးသားခဲ့ကြောင်း အဘယ်ကြောင့် စစ်ဆေးသင့်သနည်း။",
          optionsEn: [
            "To judge whether they are qualified and trustworthy",
            "Because every author is always lying",
            "Because the author changes the page's font",
            "Because unwritten pages are always correct",
          ],
          optionsMy: [
            "သူတို့ အရည်အချင်းပြည့်မှီ ယုံကြည်ရမှုရှိမရှိ ဆုံးဖြတ်ရန်",
            "Author တိုင်းသည် အမြဲ လိမ်ညာနေသောကြောင့်",
            "Author သည် စာမျက်နှာ၏ ဖောင့်ကို ပြောင်းလဲစေသောကြောင့်",
            "မရေးသားထားသော စာမျက်နှာများသည် အမြဲမှန်ကန်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "Why does a webpage's date matter?",
          questionMy: "Webpage တစ်ခု၏ ရက်စွဲသည် အဘယ်ကြောင့် အရေးကြီးသနည်း။",
          optionsEn: [
            "Old information can become outdated",
            "Dates always change a page's colours",
            "Only today's pages exist on the internet",
            "Dates have no meaning at all",
          ],
          optionsMy: [
            "ခေတ်ဟောင်းအချက်အလက်များသည် ခေတ်နောက်ကျနိုင်ကြောင်း",
            "ရက်စွဲသည် စာမျက်နှာ၏ အရောင်များကို အမြဲပြောင်းလဲစေကြောင်း",
            "ဒီနေ့စာမျက်နှာများသာ အင်တာနက်ပေါ်တွင် ရှိကြောင်း",
            "ရက်စွဲသည် မည်သည့်အဓိပ္ပာယ်မျှ မရှိကြောင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the best way to check whether information found online is true?",
          questionMy:
              "အွန်လိုင်းတွင် တွေ့ရှိသော အချက်အလက်သည် မှန်ကန်မမှန်ကန်ကို စစ်ဆေးရန် အကောင်းဆုံးနည်းလမ်းမှာ အဘယ်နည်း။",
          optionsEn: [
            "Cross-check it across several trustworthy sources",
            "Trust the very first page you see",
            "Never check anything at all",
            "Only check pages with no author listed",
          ],
          optionsMy: [
            "ယုံကြည်ရသော Source များစွာနှင့် Cross-check လုပ်ရန်",
            "မြင်ရသော ပထမဆုံးစာမျက်နှာကို ယုံကြည်ရန်",
            "ဘာမျှ လုံးဝ မစစ်ဆေးရန်",
            "Author စာရင်းမပါသော စာမျက်နှာများကိုသာ စစ်ဆေးရန်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn: "What is good email etiquette?",
          questionMy:
              "ကောင်းမွန်သော Email Etiquette ဆိုသည်မှာ အဘယ်အရာဖြစ်သနည်း။",
          optionsEn: [
            "A clear subject line and a polite greeting before stating your request",
            "Demanding a password from the reader immediately",
            "Sending an email with no subject line at all",
            "Writing in all capital letters to sound urgent",
          ],
          optionsMy: [
            "တောင်းဆိုချက်မဖော်ပြမီ ရှင်းလင်းသော Subject Line နှင့် ယဉ်ကျေးသော နှုတ်ဆက်ချက်",
            "ဖတ်ရှုသူထံမှ စကားဝှက်ကို ချက်ချင်း တောင်းဆိုခြင်း",
            "Subject Line လုံးဝမပါဘဲ Email ပို့ခြင်း",
            "အရေးပေါ်ဟန်ပေါ်စေရန် စာလုံးအကြီးများနှင့်သာ ရေးခြင်း",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What warning sign made Nay Chi suspicious of the strange message she received?",
          questionMy:
              "ရရှိခဲ့သော ထူးဆန်းသော Message ကို မယုံကြည်ရန် နှင်းချည်အား အဘယ်သတိပေးလက္ခဏာက ခံစားစေခဲ့သနည်း။",
          optionsEn: [
            "The link's spelling was slightly different from her real school's address, and it urgently demanded her password",
            "It arrived at exactly the same time as her professor's webpage",
            "It was written entirely in a foreign alphabet",
            "It contained no words at all, only a picture",
          ],
          optionsMy: [
            "Link ၏ စာလုံးပေါင်းသည် သူမ၏ အစစ်အမှန်ကျောင်းလိပ်စာထက် အနည်းငယ် ကွဲပြားပြီး သူမ၏ စကားဝှက်ကို အလျင်တဆော တောင်းဆိုသောကြောင့်",
            "ပါမောက္ခ၏ Webpage နှင့် အချိန်အတိအကျတူညီစွာ ရောက်ရှိလာသောကြောင့်",
            "လုံးဝ ဘာသာစကားခြားနားစွာ ရေးသားထားသောကြောင့်",
            "စကားလုံးလုံးဝမပါဘဲ ပုံတစ်ပုံသာ ပါဝင်သောကြောင့်",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseWeekDef _year6ComputingWeek28 = CourseWeekDef(
  id: "course-year6-computing-w28",
  weekNumber: 28,
  titleEn: "Capstone: Nay Chi's Research Project",
  titleMy: "Capstone - နှင်းချည်၏ သုတေသနစီမံကိန်း",
  xpReward: 25,
  isBossWeek: true,
  dailyLessons: [
    DailyLessonDef(
      id: "course-y6comp-w28-d1",
      dayNumber: 1,
      titleEn: "Planning a Research Project From Search to Source-Checking",
      titleMy: "ရှာဖွေခြင်းမှ Source စစ်ဆေးခြင်းအထိ သုတေသနစီမံကိန်း စီစဉ်ခြင်း",
      kind: LessonKind.quiz,
      xpReward: 10,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "Before starting her research project, what should Nay Chi review from Week 25?",
          questionMy:
              "သုတေသနစီမံကိန်း မစတင်မီ Week 25 မှ နှင်းချည် အဘယ်အရာကို ပြန်လည်သုံးသပ်သင့်သနည်း။",
          optionsEn: [
            "How a browser (client) requests a page and a server sends back a response",
            "How to write a spreadsheet formula",
            "How to combine sensors with AND and OR",
            "How to design a game's sprites",
          ],
          optionsMy: [
            "Browser (Client) က စာမျက်နှာတစ်ခုကို တောင်းဆို၍ Server က Response ပြန်ပို့ပုံ",
            "Spreadsheet ဖော်မြူလာ ရေးနည်း",
            "Sensor များကို AND နှင့် OR ဖြင့် ပေါင်းစပ်နည်း",
            "ဂိမ်း၏ Sprite များ ဒီဇိုင်းလုပ်နည်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Which lesson introduced the words \"client\", \"server\", \"request\" and \"response\" for the very first time this term?",
            "Review Week 25's cycle: a client sends a request, and a server decides what response to send back.",
          ],
          hintsMy: [
            "\"Client\"၊ \"Server\"၊ \"Request\" နှင့် \"Response\" ဟူသော စကားလုံးများကို ဤ Term တွင် မည်သည့်သင်ခန်းစာက ပထမဆုံးအကြိမ် မိတ်ဆက်ခဲ့သနည်း။",
            "Week 25 ၏ ဖြစ်စဉ်ကို ပြန်လည်သုံးသပ်ပါ - Client သည် Request ပေးပို့ပြီး Server သည် မည်သည့် Response ကို ပြန်ပို့မည်ကို ဆုံးဖြတ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "What three skills from Weeks 25-27 should Nay Chi combine in her own research project?",
          questionMy:
              "Week 25 မှ 27 အထိကို ဆက်စပ်၍ သူမ၏ ကိုယ်ပိုင် သုတေသနစီမံကိန်းတွင် ပေါင်းစပ်ရမည့် Skill သုံးခုမှာ အဘယ်နည်း။",
          optionsEn: [
            "Understanding client-server requests, searching well using crawling/indexing/ranking knowledge, and evaluating source reliability",
            "A design document, sprites and a backdrop",
            "A spreadsheet formula, a chart and a survey",
            "A sensor, an actuator and an IF condition only",
          ],
          optionsMy: [
            "Client-Server Request များ နားလည်ခြင်း၊ Crawling/Indexing/Ranking အသိပညာဖြင့် ကောင်းစွာ ရှာဖွေခြင်းနှင့် Source ယုံကြည်ရမှုကို အကဲဖြတ်ခြင်း",
            "Design Document၊ Sprite များနှင့် Backdrop",
            "Spreadsheet ဖော်မြူလာ၊ Chart နှင့် Survey",
            "Sensor၊ Actuator နှင့် IF Condition တစ်ခုတည်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think about what Weeks 25, 26 and 27 each added on top of each other -- client-server, then search engines, then reliability and safety.",
            "A complete research project needs to understand how a page is fetched, how to search effectively, and how to judge whether what you find is trustworthy.",
          ],
          hintsMy: [
            "Week 25၊ 26 နှင့် 27 တစ်ခုစီက အဘယ်အရာကို တစ်ခုပေါ် တစ်ခု ထပ်ဆင့်ထည့်သွင်းခဲ့သနည်းကို စဉ်းစားကြည့်ပါ -- Client-Server၊ ထို့နောက် Search Engine၊ ထို့နောက် ယုံကြည်ရမှုနှင့် ဘေးကင်းရေး။",
            "ပြီးပြည့်စုံသော သုတေသနစီမံကိန်းတစ်ခုသည် စာမျက်နှာတစ်ခု မည်သို့ ရယူသည်ကို နားလည်ရန်၊ ထိရောက်စွာ ရှာဖွေရန်နှင့် တွေ့ရှိသောအရာကို ယုံကြည်ရမှုရှိမရှိ ဆုံးဖြတ်ရန် လိုအပ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "While researching, Nay Chi finds a page with no author, no date and only one extreme opinion. What should she do?",
          questionMy:
              "သုတေသနပြုနေစဉ် Author မရှိ၊ ရက်စွဲမရှိ၊ အစွန်းရောက်အမြင်တစ်ခုတည်းသာ ပါဝင်သော စာမျက်နှာတစ်ခုကို နှင်းချည် တွေ့ရှိသည်။ သူမ အဘယ်လုပ်ဆောင်သင့်သနည်း။",
          optionsEn: [
            "Treat it as unreliable and cross-check the claim against other trustworthy sources instead",
            "Trust it completely just because it appeared first in her search",
            "Copy it directly into her project without checking anything else",
            "Delete every other source she has already found",
          ],
          optionsMy: [
            "ယင်းကို ယုံကြည်ရမှုမရှိသည်ဟု သတ်မှတ်ပြီး အဆိုပါအချက်ကို အခြားယုံကြည်ရသော Source များနှင့် Cross-check လုပ်ရန်",
            "သူမ၏ ရှာဖွေမှုတွင် ပထမဆုံးပေါ်လာသောကြောင့်သာ လုံးဝ ယုံကြည်ရန်",
            "အခြားအရာမည်သည့်တစ်ခုကိုမျှ မစစ်ဆေးဘဲ သူမ၏ စီမံကိန်းထဲသို့ တိုက်ရိုက်ကူးယူရန်",
            "သူမ တွေ့ရှိပြီးသား အခြား Source အားလုံးကို ဖျက်ပစ်ရန်",
          ],
          correctIndex: 0,
          hintsEn: [
            "Remember the warning signs from Week 27 -- missing author, missing date, and one-sided argument are all red flags.",
            "The right response to an unreliable-looking page is not to trust it blindly, but to cross-check its claim elsewhere.",
          ],
          hintsMy: [
            "Week 27 မှ သတိပေးလက္ခဏာများကို သတိရပါ -- Author မရှိခြင်း၊ ရက်စွဲမရှိခြင်းနှင့် တစ်ဖက်စွန်းအငြင်းအခုံသည် သတိပေးလက္ခဏာများ ဖြစ်ကြသည်။",
            "ယုံကြည်ရမှုမရှိပုံရသော စာမျက်နှာတစ်ခုအတွက် မှန်ကန်သော တုံ့ပြန်မှုသည် မျက်စိစုံ၍ ယုံကြည်ခြင်း မဟုတ်ဘဲ ၎င်း၏အဆိုကို တစ်နေရာရာတွင် Cross-check လုပ်ခြင်းဖြစ်သည်။",
          ],
        ),
        QuizQuestion(
          questionEn:
              "Nay Chi wants to reflect on her own Term 2 web page for her capstone. What new understanding from this term should she apply?",
          questionMy:
              "နှင်းချည်သည် သူမ၏ Capstone အတွက် သူမ၏ Term 2 Web Page ကို ပြန်လည်သုံးသပ်လိုသည်။ ဤ Term မှ မည်သည့် နားလည်မှုအသစ်ကို သူမ ကျင့်သုံးသင့်သနည်း။",
          optionsEn: [
            "That a stranger's browser could reach her page as a client requesting it from the server, possibly after finding it through a search engine's ranked results",
            "That her web page can never be visited by anyone else, ever",
            "That HTML tags no longer matter once a page is published",
            "That search engines always delete personal web pages automatically",
          ],
          optionsMy: [
            "တခြားလူတစ်ဦး၏ Browser သည် Client အဖြစ် Server ထံမှ တောင်းဆိုကာ သူမ၏ စာမျက်နှာသို့ ရောက်ရှိနိုင်ပြီး Search Engine ၏ အဆင့်သတ်မှတ်ထားသော ရလဒ်များမှတစ်ဆင့်လည်း တွေ့ရှိနိုင်ကြောင်း",
            "သူမ၏ Web Page ကို အခြားမည်သူမျှ ဘယ်တော့မှ ဝင်ကြည့်၍ မရနိုင်ကြောင်း",
            "စာမျက်နှာ ထုတ်ဝေပြီးသည်နှင့် HTML Tag များ အရေးမကြီးတော့ကြောင်း",
            "Search Engine များသည် ကိုယ်ရေးကိုယ်တာ Web Page များကို အမြဲအလိုအလျောက် ဖျက်ပစ်ကြောင်း",
          ],
          correctIndex: 0,
          hintsEn: [
            "Think back to Week 25's request/response cycle and Week 26's crawling/indexing/ranking pipeline -- both explain how a total stranger could end up on Nay Chi's page.",
            "A search engine's crawler could find her page, add it to its index, and rank it in someone's search results -- and that person's browser would then request it as a client, exactly like Zin Ko did.",
          ],
          hintsMy: [
            "Week 25 ၏ Request/Response ဖြစ်စဉ်နှင့် Week 26 ၏ Crawling/Indexing/Ranking Pipeline ကို ပြန်သတိရပါ -- နှစ်ခုစလုံးက လူစိမ်းတစ်ဦး နှင်းချည်၏ စာမျက်နှာသို့ မည်သို့ ရောက်ရှိနိုင်ကြောင်း ရှင်းပြသည်။",
            "Search Engine ၏ Crawler သည် သူမ၏ စာမျက်နှာကို ရှာဖွေတွေ့ရှိကာ ၎င်း၏ Index ထဲသို့ ထည့်သွင်း၍ တစ်စုံတစ်ဦး၏ ရှာဖွေရလဒ်များတွင် Rank လုပ်နိုင်သည် -- ထို့နောက် ထိုသူ၏ Browser သည် ဇင်ကို လုပ်ခဲ့သကဲ့သို့ Client အဖြစ် ၎င်းကို တောင်းဆိုမည်။",
          ],
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w28-d2",
      dayNumber: 2,
      titleEn: "Match the Term 7 Vocabulary",
      titleMy: "Term 7 ဝေါဟာရများ ကိုက်ညီအောင်ဆွဲယူပါ",
      kind: LessonKind.dragMatch,
      xpReward: 10,
      dragMatchPairs: [
        DragMatchPair(
          id: "y6comp-w28-dm-1",
          termEn: "Client",
          termMy: "တောင်းဆိုသူစက် (Client)",
          matchEn:
              "A device or program, such as a web browser, that sends a request asking a server for something",
          matchMy:
              "Server ထံသို့ တစ်ခုခုတောင်းဆိုသော Web Browser ကဲ့သို့ ကိရိယာ (သို့) Program",
          colorValue: 0xFF94BDFF,
        ),
        DragMatchPair(
          id: "y6comp-w28-dm-2",
          termEn: "Server",
          termMy: "ဝန်ဆောင်ပေးသူစက် (Server)",
          matchEn:
              "A powerful computer that receives a request and sends back a response with what was asked for",
          matchMy:
              "Request တစ်ခုကို လက်ခံရရှိပြီး တောင်းဆိုခံရသောအရာနှင့်အတူ Response တစ်ခု ပြန်ပို့ပေးသော အားကောင်းသည့် ကွန်ပျူတာ",
          colorValue: 0xFFB0F2C2,
        ),
        DragMatchPair(
          id: "y6comp-w28-dm-3",
          termEn: "Web crawler",
          termMy: "ဝဘ်စာမျက်နှာ စုဆောင်းသည့်စနစ် (Web Crawler)",
          matchEn:
              "An automated program that travels the web reading and following links to build a search index",
          matchMy:
              "Search Index တစ်ခု တည်ဆောက်ရန် ကွန်ရက်တစ်လျှောက် Link များ ဖတ်ရှု လိုက်ပါသော အလိုအလျောက် Program",
          colorValue: 0xFFFFD59E,
        ),
        DragMatchPair(
          id: "y6comp-w28-dm-4",
          termEn: "Ranking algorithm",
          termMy: "အဆင့်သတ်မှတ်သည့် အယ်လဂိုရစ်သမ် (Ranking Algorithm)",
          matchEn:
              "The set of rules a search engine uses to decide the order in which results are shown",
          matchMy:
              "ရလဒ်များ ပြသရမည့် အစီအစဉ်ကို ဆုံးဖြတ်ရန် Search Engine က အသုံးပြုသော စည်းမျဉ်းအစုအစည်း",
          colorValue: 0xFFFFB0C7,
        ),
        DragMatchPair(
          id: "y6comp-w28-dm-5",
          termEn: "Cross-checking",
          termMy: "ပြန်လည်စစ်ဆေးခြင်း (Cross-checking)",
          matchEn:
              "Comparing information across several independent sources before trusting it",
          matchMy:
              "အချက်အလက်ကို မယုံကြည်မီ လွတ်လပ်သော Source များစွာနှင့် နှိုင်းယှဉ်ခြင်း",
          colorValue: 0xFFD8C4FF,
        ),
        DragMatchPair(
          id: "y6comp-w28-dm-6",
          termEn: "Reliable source",
          termMy: "ယုံကြည်ရသော သတင်းအရင်းအမြစ် (Reliable Source)",
          matchEn:
              "A source with a named qualified author, a recent date, and information confirmed across other trustworthy places",
          matchMy:
              "အမည်ဖော်ပြထားသော အရည်အချင်းပြည့်မှီသည့် Author၊ မကြာသေးမီက ရက်စွဲနှင့် အခြားယုံကြည်ရသောနေရာများတွင် အတည်ပြုထားသော အချက်အလက် ပါဝင်သည့် Source",
          colorValue: 0xFFFFF0A6,
        ),
      ],
    ),
    DailyLessonDef(
      id: "course-y6comp-w28-d3",
      dayNumber: 3,
      titleEn: "Sort: Good Research Habit or Risky Research Habit?",
      titleMy:
          "စီစစ်ကြမည် - ကောင်းမွန်သော သုတေသနအလေ့အထလား၊ အန္တရာယ်ရှိသော အလေ့အထလား",
      kind: LessonKind.sorting,
      xpReward: 10,
      sortingActivity: SortingActivity(
        bucketsEn: ["Good Research Habit", "Risky Research Habit"],
        bucketsMy: ["ကောင်းမွန်သော သုတေသနအလေ့အထ", "အန္တရာယ်ရှိသော အလေ့အထ"],
        items: [
          SortingItem(
            id: "y6comp-w28-sort-1",
            labelEn: "Typing specific keywords instead of one vague word",
            labelMy:
                "ဝေဝါးသော စကားလုံးတစ်လုံးအစား တိကျသော Keyword များကို ရိုက်ထည့်ခြင်း",
            correctBucketEn: "Good Research Habit",
            correctBucketMy: "ကောင်းမွန်သော သုတေသနအလေ့အထ",
          ),
          SortingItem(
            id: "y6comp-w28-sort-2",
            labelEn:
                "Trusting the very first search result without checking who wrote it",
            labelMy:
                "မည်သူရေးသားခဲ့ကြောင်း မစစ်ဆေးဘဲ ပထမဆုံးရလဒ်ကို ယုံကြည်ခြင်း",
            correctBucketEn: "Risky Research Habit",
            correctBucketMy: "အန္တရာယ်ရှိသော အလေ့အထ",
          ),
          SortingItem(
            id: "y6comp-w28-sort-3",
            labelEn:
                "Cross-checking a fact across several independent trustworthy sources",
            labelMy:
                "အချက်အလက်တစ်ခုကို လွတ်လပ်ပြီး ယုံကြည်ရသော Source များစွာနှင့် Cross-check လုပ်ခြင်း",
            correctBucketEn: "Good Research Habit",
            correctBucketMy: "ကောင်းမွန်သော သုတေသနအလေ့အထ",
          ),
          SortingItem(
            id: "y6comp-w28-sort-4",
            labelEn:
                "Copying information from a page with no author and no date",
            labelMy:
                "Author နှင့် ရက်စွဲ လုံးဝမပါသော စာမျက်နှာမှ အချက်အလက်ကို ကူးယူခြင်း",
            correctBucketEn: "Risky Research Habit",
            correctBucketMy: "အန္တရာယ်ရှိသော အလေ့အထ",
          ),
          SortingItem(
            id: "y6comp-w28-sort-5",
            labelEn:
                "Checking a page's author and publication date before trusting it",
            labelMy:
                "စာမျက်နှာတစ်ခုကို မယုံကြည်မီ ၎င်း၏ Author နှင့် ထုတ်ဝေရက်စွဲကို စစ်ဆေးခြင်း",
            correctBucketEn: "Good Research Habit",
            correctBucketMy: "ကောင်းမွန်သော သုတေသနအလေ့အထ",
          ),
          SortingItem(
            id: "y6comp-w28-sort-6",
            labelEn:
                "Clicking a suspicious link that urgently demands a password",
            labelMy:
                "စကားဝှက်ကို အလျင်တဆော တောင်းဆိုသော Suspicious Link ကို နှိပ်ခြင်း",
            correctBucketEn: "Risky Research Habit",
            correctBucketMy: "အန္တရာယ်ရှိသော အလေ့အထ",
          ),
          SortingItem(
            id: "y6comp-w28-sort-7",
            labelEn:
                "Writing a polite, clear email with a proper subject line to ask for help",
            labelMy:
                "အကူအညီတောင်းဆိုရန် ယဉ်ကျေးရှင်းလင်းပြီး Subject Line မှန်ကန်စွာပါသော Email ရေးသားခြင်း",
            correctBucketEn: "Good Research Habit",
            correctBucketMy: "ကောင်းမွန်သော သုတေသနအလေ့အထ",
          ),
          SortingItem(
            id: "y6comp-w28-sort-8",
            labelEn:
                "Accepting a one-sided, biased opinion as the complete truth without question",
            labelMy:
                "တစ်ဖက်စွန်း Bias ရှိသော အမြင်တစ်ခုကို မေးခွန်းမထုတ်ဘဲ လုံးဝ အမှန်တရားအဖြစ် လက်ခံခြင်း",
            correctBucketEn: "Risky Research Habit",
            correctBucketMy: "အန္တရာယ်ရှိသော အလေ့အထ",
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w28-d4",
      dayNumber: 4,
      titleEn: "Reading: Nay Chi's Research Project and Her Own Web Page",
      titleMy:
          "စာဖတ်ခြင်း - နှင်းချည်၏ သုတေသနစီမံကိန်းနှင့် သူမကိုယ်ပိုင် Web Page",
      kind: LessonKind.reading,
      xpReward: 10,
      readingPassage: ReadingPassageModel(
        titleEn: "Nay Chi's Research Project and Her Own Web Page",
        titleMy: "နှင်းချည်၏ သုတေသနစီမံကိန်းနှင့် သူမကိုယ်ပိုင် Web Page",
        passageEn:
            "For her Term 7 capstone, Nay Chi chooses a topic close to her heart: the migration of Nova Lake's wild ducks, which she has watched every winter since she was small. She opens a search engine and types specific keywords instead of one vague word, remembering how a crawler and index already store millions of pages, and how a ranking algorithm decides which to show her first.\n\nShe finds several results, but does not trust the very first one blindly -- a travel blog with no listed author and no date, making bold claims with no evidence. Instead, she checks a page written by a named wildlife researcher, updated just months ago, and cross-checks its facts against a second trustworthy nature website. Both agree, so Nay Chi feels confident using them in her project.\n\nAs she writes up her findings, Ms. Thanda asks the class one final reflective question: \"Now that you understand the client-server model and how search engines work, look back at your own Term 2 web page. What would happen if a stranger searched for a topic your page covers?\"\n\nNay Chi thinks it through carefully. A crawler could visit her published \"About Me\" page, add it to a search engine's index, and rank it in someone's results. That stranger's browser -- a client, just like Zin Ko's back in Week 25 -- would then send a request to the school's server, which would respond by sending her page's content across the network, exactly the same cycle that delivered her duck migration research to her own screen. \"My page isn't just mine anymore once it's published,\" she realises. \"Anyone's browser could request it, the same way mine requested every source I just checked.\"",
        passageMy:
            "Term 7 Capstone အတွက် နှင်းချည်သည် သူမ၏နှလုံးသားအနီးရှိ ခေါင်းစဉ်တစ်ခုကို ရွေးချယ်လိုက်သည် -- ငယ်စဉ်ကတည်းက ဆောင်းတိုင်း သူမ ကြည့်ရှုလေ့ရှိသော Nova Lake ၏ ငှက်တောင်းများ ရွှေ့ပြောင်းသွားလာခြင်း။ Search Engine တစ်ခု ဖွင့်ပြီး ဝေဝါးသော စကားလုံးတစ်လုံးအစား တိကျသော Keyword များကို ရိုက်ထည့်ကာ Crawler နှင့် Index က စာမျက်နှာသန်းချီကို သိမ်းဆည်းထားပြီးသားဖြစ်ကြောင်းနှင့် Ranking Algorithm က မည်သည့်စာမျက်နှာများကို သူမအား ဦးစွာ ပြသရမည်ကို ဆုံးဖြတ်ကြောင်း သတိရသည်။\n\nသူမသည် ရလဒ်များစွာကို တွေ့ရှိသော်လည်း ပထမဆုံးရလဒ်ကို မျက်စိစုံ၍ မယုံပါ -- Author စာရင်းနှင့် ရက်စွဲ လုံးဝမပါသော ခရီးသွား Blog တစ်ခုသည် သက်သေအထောက်အထားလုံးဝမပါဘဲ ရဲရင့်စွာ အဆိုပြုထားသည်။ ယင်းအစား သူမသည် အမည်ဖော်ပြထားသော သားရိုင်းတိရစ္ဆာန်သုတေသနပညာရှင်တစ်ဦး ရေးသားပြီး လအနည်းငယ်အတွင်းက Update လုပ်ခဲ့သည့် စာမျက်နှာတစ်ခုကို စစ်ဆေးကာ ၎င်း၏ အချက်အလက်များကို ယုံကြည်ရသော သဘာဝ Website ဒုတိယတစ်ခုနှင့် Cross-check လုပ်သည်။ နှစ်ခုစလုံး သဘောတူညီကြသောကြောင့် နှင်းချည်သည် ၎င်းတို့ကို သူမ၏ စီမံကိန်းတွင် စိတ်ချစွာ အသုံးပြုနိုင်ခဲ့သည်။\n\nသူမ၏ တွေ့ရှိချက်များကို ရေးသားနေစဉ် ဒေါ်သန္တာက အတန်းကို နောက်ဆုံး ပြန်လည်သုံးသပ်ရမည့် မေးခွန်းတစ်ခု မေးလိုက်သည် -- \"အခု Client-Server Model နဲ့ Search Engine တွေ အလုပ်လုပ်ပုံကို နားလည်ပြီဆိုတော့ မင်းတို့ရဲ့ Term 2 Web Page ကို ပြန်ကြည့်ကြည့်ပါ။ လူစိမ်းတစ်ဦးက မင်းတို့စာမျက်နှာ ဖော်ပြထားတဲ့ ခေါင်းစဉ်တစ်ခုကို ရှာဖွေရင် အဘယ်ဖြစ်လာမလဲ။\"\n\nနှင်းချည်သည် ဂရုတစိုက် စဉ်းစားကြည့်သည်။ Crawler တစ်ခုသည် သူမ၏ ထုတ်ဝေထားပြီးသား \"About Me\" စာမျက်နှာကို ဝင်ရောက်၍ Search Engine ၏ Index ထဲသို့ ထည့်သွင်းကာ တစ်စုံတစ်ဦး၏ ရလဒ်များတွင် Rank လုပ်နိုင်သည်။ ထိုလူစိမ်း၏ Browser -- Week 25 က ဇင်ကို၏ Browser ကဲ့သို့ပင် Client တစ်ခု -- သည် ကျောင်း၏ Server ထံ Request တစ်ခု ပေးပို့မည်ဖြစ်ပြီး Server က ကွန်ရက်တစ်လျှောက် သူမ၏ စာမျက်နှာအကြောင်းအရာကို ပေးပို့ကာ ဖြေကြားမည်ဖြစ်သည် -- ၎င်းသည် ငှက်တောင်းရွှေ့ပြောင်းမှု သုတေသနကို သူမကိုယ်တိုင် မျက်နှာပြင်ထံ ပို့ဆောင်ခဲ့သော ဖြစ်စဉ်တူညီပင် ဖြစ်သည်။ \"ငါ့စာမျက်နှာက ထုတ်ဝေပြီးတဲ့နောက် ငါ့တစ်ယောက်တည်းရဲ့ ပိုင်ဆိုင်မှု မဟုတ်တော့ဘူး\" ဟု သူမ သဘောပေါက်လိုက်သည်။ \"ငါ ရှာစစ်ခဲ့တဲ့ Source တိုင်းကို ငါ့ Browser က တောင်းဆိုခဲ့သလိုပဲ မည်သူ့ Browser ကမဆို ၎င်းကို တောင်းဆိုနိုင်တယ်။\"",
        comprehensionQuestions: [
          QuizQuestion(
            questionEn:
                "According to paragraph 1, what topic did Nay Chi choose for her capstone?",
            questionMy:
                "စာပိုဒ် ၁ အရ Capstone အတွက် နှင်းချည် မည်သည့်ခေါင်းစဉ်ကို ရွေးချယ်ခဲ့သနည်း။",
            optionsEn: [
              "The migration of Nova Lake's wild ducks",
              "The history of search engines",
              "How to build a spreadsheet formula",
              "The rules of her Term 5 game",
            ],
            optionsMy: [
              "Nova Lake ၏ ငှက်တောင်းများ ရွှေ့ပြောင်းသွားလာခြင်း",
              "Search Engine များ၏ သမိုင်း",
              "Spreadsheet ဖော်မြူလာ တည်ဆောက်နည်း",
              "သူမ၏ Term 5 ဂိမ်း၏ စည်းမျဉ်းများ",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 2, why did Nay Chi not trust the very first search result?",
            questionMy:
                "စာပိုဒ် ၂ အရ ပထမဆုံးရှာဖွေရလဒ်ကို နှင်းချည် အဘယ်ကြောင့် မယုံကြည်ခဲ့သနည်း။",
            optionsEn: [
              "It had no listed author or date and made bold claims with no evidence",
              "It appeared in a language she could not read",
              "It refused to open on her computer",
              "It was written by the same wildlife researcher as the second source",
            ],
            optionsMy: [
              "Author (သို့) ရက်စွဲ လုံးဝ မပါဘဲ သက်သေအထောက်အထားမရှိဘဲ ရဲရင့်စွာ အဆိုပြုထားသောကြောင့်",
              "သူမ ဖတ်၍မရသော ဘာသာစကားဖြင့် ပေါ်လာသောကြောင့်",
              "သူမ၏ ကွန်ပျူတာပေါ်တွင် ဖွင့်ရန် ငြင်းဆန်ခဲ့သောကြောင့်",
              "ဒုတိယ Source ကဲ့သို့ တူညီသော သားရိုင်းတိရစ္ဆာန် သုတေသနပညာရှင်က ရေးသားခဲ့သောကြောင့်",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 3, what final reflective question does Ms. Thanda ask the class?",
            questionMy:
                "စာပိုဒ် ၃ အရ ဒေါ်သန္တာက အတန်းကို မည်သည့် နောက်ဆုံးပြန်လည်သုံးသပ်ရမည့်မေးခွန်း မေးလိုက်သနည်း။",
            optionsEn: [
              "What would happen if a stranger searched for a topic their Term 2 web page covers",
              "What is the capital city of Myanmar",
              "How many pages are in the whole internet exactly",
              "Which sport Nay Chi enjoys the most",
            ],
            optionsMy: [
              "လူစိမ်းတစ်ဦးက ၎င်းတို့ Term 2 Web Page ဖော်ပြထားသော ခေါင်းစဉ်ကို ရှာဖွေရင် အဘယ်ဖြစ်လာမည်နည်း",
              "မြန်မာနိုင်ငံ၏ မြို့တော်မှာ အဘယ်နည်း",
              "အင်တာနက်တစ်ခုလုံးတွင် စာမျက်နှာမည်မျှ အတိအကျ ရှိသနည်း",
              "နှင်းချည် ပျော်ရွှင်ဆုံးဘောလုံးအားကစားမှာ အဘယ်နည်း",
            ],
            correctIndex: 0,
          ),
          QuizQuestion(
            questionEn:
                "According to paragraph 4, what realisation does Nay Chi reach about her published web page?",
            questionMy:
                "စာပိုဒ် ၄ အရ သူမ ထုတ်ဝေထားသော Web Page နှင့်ပတ်သက်၍ နှင်းချည် မည်သို့ သဘောပေါက်ခဲ့သနည်း။",
            optionsEn: [
              "A stranger's browser could request it as a client the same way her own browser requested her research sources",
              "Her web page can never be found by any search engine, ever",
              "Only she herself is allowed to ever open her own web page",
              "Servers can never send a response to anyone she does not personally know",
            ],
            optionsMy: [
              "သူမ ရှာဖွေခဲ့သော Source များကို သူမ၏ Browser ကတောင်းဆိုသကဲ့သို့ လူစိမ်းတစ်ဦး၏ Browser ကလည်း Client အဖြစ် ၎င်းကို တောင်းဆိုနိုင်ကြောင်း",
              "သူမ၏ Web Page ကို Search Engine မည်သည့်တစ်ခုကမျှ ဘယ်တော့မှ ရှာမတွေ့နိုင်ကြောင်း",
              "သူမကိုယ်တိုင်သာ သူမ၏ Web Page ကို ဖွင့်ခွင့်ရှိကြောင်း",
              "Server များသည် သူမ ကိုယ်တိုင်မသိသူများထံ Response ဘယ်တော့မှ မပို့နိုင်ကြောင်း",
            ],
            correctIndex: 0,
          ),
        ],
      ),
    ),
    DailyLessonDef(
      id: "course-y6comp-w28-d5",
      dayNumber: 5,
      titleEn: "Term 7 Round-Up: Networks and the Internet",
      titleMy: "Term 7 အနှစ်ချုပ် - Networks and the Internet",
      kind: LessonKind.quiz,
      xpReward: 10,
      isRecapDay: true,
      quizQuestions: [
        QuizQuestion(
          questionEn:
              "According to Week 25, what does a browser (client) do when you visit a website?",
          questionMy:
              "Week 25 အရ Website တစ်ခုကို ဝင်ကြည့်သောအခါ Browser (Client) က အဘယ်ပြုလုပ်သနည်း။",
          optionsEn: [
            "It sends a request to a server, which sends back a response containing the page",
            "It deletes the website permanently",
            "It never communicates with any server at all",
            "It only works when the internet is disconnected",
          ],
          optionsMy: [
            "Server ထံ Request ပေးပို့ပြီး Server က စာမျက်နှာပါဝင်သည့် Response ပြန်ပို့သည်",
            "Website ကို အမြဲတမ်း ဖျက်ပစ်သည်",
            "Server မည်သည့်တစ်ခုနှင့်မျှ ဘယ်တော့မှ ဆက်သွယ်မှု မရှိပါ",
            "အင်တာနက် ချိတ်ဆက်မှုပြတ်တောက်နေမှသာ အလုပ်လုပ်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "According to Week 26, what does a web crawler do before you ever search for anything?",
          questionMy:
              "Week 26 အရ သင် မည်သည့်အရာမျှ မရှာဖွေမီ Web Crawler က အဘယ်ပြုလုပ်ထားသနည်း။",
          optionsEn: [
            "It travels the web, following links and adding pages to an index",
            "It deletes every webpage it visits",
            "It waits idly and does nothing at all",
            "It only works after you have already searched",
          ],
          optionsMy: [
            "ကွန်ရက်တစ်လျှောက် Link များ လိုက်ကာ Index ထဲသို့ စာမျက်နှာများ ထည့်သွင်းသည်",
            "၎င်း ဝင်ရောက်သမျှ Webpage တိုင်းကို ဖျက်ပစ်သည်",
            "အလုပ်မရှိဘဲ တိတ်ဆိတ်စွာ စောင့်နေသည်",
            "သင် ရှာဖွေပြီးမှသာ အလုပ်လုပ်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "According to Week 27, what should you check before trusting a webpage's information?",
          questionMy:
              "Week 27 အရ Webpage တစ်ခု၏ အချက်အလက်ကို မယုံကြည်မီ အဘယ်ကို စစ်ဆေးသင့်သနည်း။",
          optionsEn: [
            "Its author, its publication date, possible bias, and whether other sources confirm it",
            "Only the colour scheme of the page",
            "Only how many pictures the page contains",
            "Nothing at all -- every webpage is automatically true",
          ],
          optionsMy: [
            "၎င်း၏ Author၊ ထုတ်ဝေရက်စွဲ၊ ဖြစ်နိုင်ချေရှိသော Bias နှင့် အခြား Source များက အတည်ပြုမပြု",
            "စာမျက်နှာ၏ အရောင်ဒီဇိုင်းသာ",
            "စာမျက်နှာတွင် ပါဝင်သည့် ပုံအရေအတွက်သာ",
            "ဘာမျှ မစစ်ဆေးရန် -- Webpage တိုင်းသည် အလိုအလျောက် မှန်ကန်သည်",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "In her capstone, what warning sign helped Nay Chi identify the phishing-style suspicious message?",
          questionMy:
              "သူမ၏ Capstone တွင် Phishing ပုံစံ Suspicious Message ကို ဖော်ထုတ်ရန် မည်သည့်သတိပေးလက္ခဏာက နှင်းချည်ကို ကူညီခဲ့သနည်း။",
          optionsEn: [
            "A link with slightly different spelling from the real address, urgently demanding a password",
            "A message that arrived exactly on time every single day",
            "A message written in perfect, formal handwriting",
            "A message that contained absolutely no links at all",
          ],
          optionsMy: [
            "အစစ်အမှန်လိပ်စာထက် အနည်းငယ် ကွဲပြားသော စာလုံးပေါင်းပါသည့် Link တစ်ခု၊ စကားဝှက်ကို အလျင်တဆော တောင်းဆိုခြင်း",
            "နေ့တိုင်း အချိန်မှန်စွာ ရောက်ရှိလာသော Message တစ်ခု",
            "အလွန်ကောင်းမွန်စွာ စနစ်တကျ ရေးသားထားသော Message",
            "Link လုံးဝမပါသော Message တစ်ခု",
          ],
          correctIndex: 0,
        ),
        QuizQuestion(
          questionEn:
              "What is the overall lesson of this whole term's capstone?",
          questionMy:
              "ဤ Term တစ်ခုလုံး၏ Capstone မှ ရရှိသော အထွေထွေသင်ခန်းစာမှာ အဘယ်နည်း။",
          optionsEn: [
            "Understanding client-server requests, searching effectively, and evaluating sources together let Nay Chi both research safely and see her own published page from a stranger's point of view",
            "Web pages, once published, can never be reached by anyone else's browser",
            "Search engines always show the single most reliable page first, with no exceptions",
            "None of this term's ideas connect to her earlier Term 2 web page at all",
          ],
          optionsMy: [
            "Client-Server Request များ နားလည်ခြင်း၊ ထိရောက်စွာ ရှာဖွေခြင်းနှင့် Source များကို အကဲဖြတ်ခြင်းတို့ ပေါင်းစပ်ခြင်းက နှင်းချည်အား ဘေးကင်းစွာ သုတေသနပြုနိုင်ပြီး သူမကိုယ်တိုင် ထုတ်ဝေထားသော စာမျက်နှာကို လူစိမ်းတစ်ဦး၏ ရှုထောင့်မှ မြင်နိုင်စေခဲ့ကြောင်း",
            "ထုတ်ဝေပြီးသား Web Page များကို အခြားမည်သူ၏ Browser ကမျှ ဘယ်တော့မှ ရောက်ရှိနိုင်မည် မဟုတ်ကြောင်း",
            "Search Engine များသည် ချွင်းချက်မရှိဘဲ အယုံကြည်ရဆုံးစာမျက်နှာတစ်ခုတည်းကိုသာ အမြဲဦးစွာ ပြသကြောင်း",
            "ဤ Term ၏ အိုင်ဒီယာမည်သည့်တစ်ခုမျှ သူမ၏ ယခင် Term 2 Web Page နှင့် လုံးဝ ဆက်စပ်မှု မရှိကြောင်း",
          ],
          correctIndex: 0,
        ),
      ],
    ),
  ],
);

const CourseTermDef _year6ComputingTerm7 = CourseTermDef(
  id: "course-year6-computing-t7",
  termNumber: 7,
  titleEn: "Networks and How the Internet Works",
  titleMy: "ကွန်ရက်များနှင့် အင်တာနက် အလုပ်လုပ်ပုံ",
  certificateTitleEn: "Networks and the Internet Explorer",
  certificateTitleMy: "Networks and the Internet စူးစမ်းရှာဖွေသူ",
  weeks: [
    _year6ComputingWeek25,
    _year6ComputingWeek26,
    _year6ComputingWeek27,
    _year6ComputingWeek28,
  ],
);
