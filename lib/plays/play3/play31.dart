import 'package:animate_do/animate_do.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syntax_flutter_parser/plays/play3/play32.dart';

import '../../fuctions.dart';
import '../../widget.dart';
import '../play1/play11.dart';
import '../play1/play13.dart';

class Play31 extends StatefulWidget {
  const Play31({Key? key}) : super(key: key);

  @override
  State<Play31> createState() => _Play31State();
}

class _Play31State extends State<Play31> {
  int errorBoxNumber = -1;
  bool _isLoading = false;
  static const platform = MethodChannel('samples.flutter.dev/parse');
  int validIndex = 0;
  late ConfettiController _controllerCenter;
  String box1 = "";
  String box2 = "";
  String box3 = "";
  String box4 = "";
  String box5 = "";
  String box6 = "";
  late List wordList1;
  late List wordList2;
  @override
  void initState() {
    getWordsLists();
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
    super.initState();
  }

  getWordsLists() {
    wordList1 = getRandomListRequiredWords([
      "تشاهد",
      "العائلة",
      "التلفاز",
      "غرفة",
      "المعيشة",
    ]);
    wordList2 = pronouns..shuffle();
  }

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xfffaf7e6),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: screensize.height,
              width: screensize.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/desert.jpeg"),
                      fit: BoxFit.fill)),
            ),
            Container(
              height: screensize.height,
              width: screensize.width,
              color: Colors.white.withOpacity(.7),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xfff3675f),
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: AssetImage("assets/arrow.png"))),
                    ),
                  ),
                ),
              ),
            ),
            key(currentLevel),
            Positioned(
              top: screensize.height * .79,
              left: screensize.width * .1,
              child: InkWell(
                onTap: () {
                  setState(() {
                    box1 = "";
                    box2 = "";
                    box3 = "";
                    box4 = "";
                    box5 = "";
                    box6 = "";
                  });
                },
                child: const Icon(
                  Icons.restart_alt,
                  size: 50,
                ),
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/child.png"))),
                  child: const Center(
                      child: Text(
                    "العائلة",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(
                height: screensize.height * .5,
                width: screensize.width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 27),
                        child: SizedBox(
                          width: screensize.width * .25,
                          height: screensize.height * .5,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  drag1t(
                                      wordList1[0],
                                      const BorderRadius.only(
                                          topRight: Radius.circular(15)),
                                      screensize,
                                      si: 2),
                                  dragt(wordList1[1], screensize, si: 2),
                                  dragt(wordList1[2], screensize, si: 2),
                                  dragt(wordList1[3], screensize, si: 2),
                                  dragt(wordList1[4], screensize, si: 2),
                                  dragt(wordList1[5], screensize, si: 2),
                                  drag1t(
                                      wordList1[6],
                                      const BorderRadius.only(
                                          bottomRight: Radius.circular(15)),
                                      screensize,
                                      si: 2),
                                ],
                              ),
                              Column(
                                children: [
                                  drag1t(
                                      wordList1[7],
                                      const BorderRadius.only(
                                          topLeft: Radius.circular(15)),
                                      screensize,
                                      si: 2),
                                  dragt(wordList1[8], screensize, si: 2),
                                  dragt(wordList1[9], screensize, si: 2),
                                  dragt(wordList1[10], screensize, si: 2),
                                  dragt(wordList1[11], screensize, si: 2),
                                  dragt(wordList1[12], screensize, si: 2),
                                  drag1t(
                                      wordList1[13],
                                      const BorderRadius.only(
                                          bottomLeft: Radius.circular(15)),
                                      screensize,
                                      si: 2),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: screensize.height * .1,
                                width: screensize.width * .1,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/Play33.png"),
                                        fit: BoxFit.fill)),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        child: Image.asset(
                                            "assets/silverstar.png"))),
                              ),
                              SizedBox(
                                width: screensize.width * .01,
                              ),
                              Container(
                                height: screensize.height * .1,
                                width: screensize.width * .1,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/Play32.png"),
                                        fit: BoxFit.fill)),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                            "assets/silverstar.png"))),
                              ),
                              SizedBox(
                                width: screensize.width * .01,
                              ),
                              Container(
                                height: screensize.height * .1,
                                width: screensize.width * .1,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/Play31.png"),
                                        fit: BoxFit.fill)),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                            "assets/silverstar.png"))),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInDown(
                            duration: const Duration(milliseconds: 2500),
                            child: Container(
                              height: screensize.height * .36,
                              width: screensize.width * .4,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/Play31.png"),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screensize.width * .25,
                        height: screensize.height * .5,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                drag1t(
                                    wordList2[0],
                                    const BorderRadius.only(
                                        topRight: Radius.circular(15)),
                                    screensize),
                                dragt(wordList2[1], screensize),
                                dragt(wordList2[2], screensize),
                                dragt(wordList2[3], screensize),
                                dragt(wordList2[4], screensize),
                                dragt(wordList2[5], screensize),
                                drag1t(
                                    wordList2[6],
                                    const BorderRadius.only(
                                        bottomRight: Radius.circular(15)),
                                    screensize),
                              ],
                            ),
                            Column(
                              children: [
                                drag1t(
                                    wordList2[7],
                                    const BorderRadius.only(
                                        topLeft: Radius.circular(15)),
                                    screensize),
                                dragt(wordList2[8], screensize),
                                dragt(wordList2[9], screensize),
                                dragt(wordList2[10], screensize),
                                dragt(wordList2[11], screensize),
                                dragt(wordList2[12], screensize),
                                drag1t(
                                    wordList2[13],
                                    const BorderRadius.only(
                                        bottomLeft: Radius.circular(15)),
                                    screensize),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
              const Center(
                child: Text(
                  "جملتي",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: screensize.height * .1,
                width: screensize.width * .5,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2,
                      color: const Color.fromARGB(255, 180, 178, 178)),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xfff7f2ee),
                ),
                child: FittedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: DragTarget(onWillAccept: (data) {
                          return true;
                        }, onAccept: (String data) {
                          setState(() {
                            box1 = data;
                            if (validIndex == 0) validIndex = 1;
                          });
                        }, builder: (context, List cd, rd) {
                          return Center(
                              child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: errorBoxNumber == 0
                                        ? Colors.red
                                        : Colors.grey,
                                    width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: FittedBox(
                              child: Center(
                                  child: Text(
                                box1,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 50),
                              )),
                            ),
                          ));
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: DragTarget(onWillAccept: (data) {
                          return validIndex >= 1;
                        }, onAccept: (String data) {
                          setState(() {
                            if (validIndex == 1) validIndex = 2;
                            box2 = data;
                          });
                        }, builder: (context, List cd, rd) {
                          return Center(
                              child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: errorBoxNumber == 1
                                        ? Colors.red
                                        : Colors.grey,
                                    width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: FittedBox(
                              child: Center(
                                  child: Text(
                                box2,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 50),
                              )),
                            ),
                          ));
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: DragTarget(onWillAccept: (data) {
                          return validIndex >= 2;
                        }, onAccept: (String data) {
                          setState(() {
                            if (validIndex == 2) validIndex = 3;
                            box3 = data;
                          });
                        }, builder: (context, List cd, rd) {
                          return Center(
                              child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: errorBoxNumber == 2
                                        ? Colors.red
                                        : Colors.grey,
                                    width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: FittedBox(
                              child: Center(
                                  child: Text(
                                box3,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 50),
                              )),
                            ),
                          ));
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: DragTarget(onWillAccept: (data) {
                          return validIndex >= 3;
                        }, onAccept: (String data) {
                          setState(() {
                            if (validIndex == 3) validIndex = 4;
                            box4 = data;
                          });
                        }, builder: (context, List cd, rd) {
                          return Center(
                              child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: errorBoxNumber == 3
                                        ? Colors.red
                                        : Colors.grey,
                                    width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: FittedBox(
                              child: Center(
                                  child: Text(
                                box4,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 50),
                              )),
                            ),
                          ));
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: DragTarget(onWillAccept: (data) {
                          return validIndex >= 4;
                        }, onAccept: (String data) {
                          setState(() {
                            if (validIndex == 4) validIndex = 5;
                            box5 = data;
                          });
                        }, builder: (context, List cd, rd) {
                          return Center(
                              child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: errorBoxNumber == 4
                                        ? Colors.red
                                        : Colors.grey,
                                    width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: FittedBox(
                              child: Center(
                                  child: Text(
                                box5,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 50),
                              )),
                            ),
                          ));
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        child: DragTarget(onWillAccept: (data) {
                          return validIndex >= 5;
                        }, onAccept: (String data) {
                          setState(() {
                            if (validIndex == 5) validIndex = 6;
                            box6 = data;
                          });
                        }, builder: (context, List cd, rd) {
                          return Center(
                              child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: errorBoxNumber == 5
                                        ? Colors.red
                                        : Colors.grey,
                                    width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: FittedBox(
                              child: Center(
                                  child: Text(
                                box6,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 50),
                              )),
                            ),
                          ));
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (box1.isEmpty || box2.isEmpty) {
                    tryagain();
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Center(
                                child: Text(
                              "يرجى تكوين جملة كاملة",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          );
                        });
                  } else {
                    setState(() {
                      _isLoading = true;
                    });
                    String p = getParseString(getSentence(), 3, 1);
                    getParse(p).then((value) {
                      setState(() {
                        _isLoading = false;
                      });
                      if (value == 100) {
                        tryagain();
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const AlertDialog(
                                title: Center(
                                    child: Text(
                                  "خطأ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                              );
                            });
                      } else if (value == -1) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Play32()));
                        showDialog(
                            context: context,
                            builder: (context) {
                              _controllerCenter.play();
                              ad();
                              return Stack(
                                children: [
                                  Center(
                                    child: FittedBox(
                                      child: AlertDialog(
                                          title: Column(
                                        children: [
                                          Image.asset("assets/boy1.PNG"),
                                          const Text(
                                            "أحسنت",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 50),
                                          ),
                                          const Text(
                                            "لقد أنهيت المرحلة بنجاح",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          InkWell(
                                            onTap: () => Navigator.pop(context),
                                            child: Container(
                                                height: 70,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xfffaf7e6),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(width: 2),
                                                ),
                                                child: const FittedBox(
                                                  child: Center(
                                                    child: Text(
                                                      "التالي",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 50),
                                                    ),
                                                  ),
                                                )),
                                          )
                                        ],
                                      )),
                                    ),
                                  ),
                                  //excellent
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: ConfettiWidget(
                                      confettiController: _controllerCenter,
                                      blastDirectionality: BlastDirectionality
                                          .explosive, // don't specify a direction, blast randomly
                                      shouldLoop:
                                          true, // start again as soon as the animation is finished
                                      colors: const [
                                        Colors.green,
                                        Colors.blue,
                                        Colors.pink,
                                        Colors.orange,
                                        Colors.purple
                                      ], // manually specify the colors to be used
                                      createParticlePath:
                                          drawStar, // define a custom shape/path.
                                    ),
                                  ),
                                ],
                              );
                            });
                      } else {
                        setState(() {
                          errorBoxNumber = value;
                        });
                      }
                    });
                  }
                },
                child: _isLoading
                    ? const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Colors.green,
                          ),
                        ),
                      )
                    : const Icon(
                        Icons.check_circle_rounded,
                        color: Colors.green,
                        size: 62,
                      ),
              )
            ]),
          ],
        ),
      ),
    );
  }

  List getSentence() {
    if (box1.isEmpty) return [];
    if (box2.isEmpty) return [box1];
    if (box3.isEmpty) return [box1, box2];
    if (box4.isEmpty) return [box1, box2, box3];
    if (box5.isEmpty) return [box1, box2, box3, box4];
    if (box6.isEmpty) {
      return [box1, box2, box3, box4, box5];
    } else {
      return [box1, box2, box3, box4, box5, box6];
    }
  }

  Future<int> getParse(String parse) async {
    try {
      int resultValue =
          await platform.invokeMethod('parseMyText', {'text': parse});
      return resultValue;
    } on PlatformException {
      // resultValue = "Failed to get parsing result: '${e.message}'.";
      return 100;
    }
  }
}
