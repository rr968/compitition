// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syntax_flutter_parser/introduction/options.dart';
import 'package:syntax_flutter_parser/plays/mainpage.dart';
import '../learn/learn.dart';
import '../plays/play1/play13.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  void initState() {
    getlevel();
    super.initState();
  }

  void getlevel() async {
    SharedPreferences level = await SharedPreferences.getInstance();
    var l = level.getInt("level");
    if (l == null) {
      currentLevel = 0;
    } else {
      setState(() {
        currentLevel = l;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(children: [
          Image.asset(
            "assets/desert.jpeg",
            height: screensize.height,
            width: screensize.width,
            fit: BoxFit.fill,
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Options()))),
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/settings.PNG"),
                            fit: BoxFit.contain),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  children: [
                    SizedBox(
                      height: screensize.height * .5,
                      width: screensize.width * .5,
                      child: Image.asset(
                        "assets/boy2.PNG",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const Learn()))),
                            child: Container(
                              height: screensize.height * .2,
                              width: screensize.width * .42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white.withOpacity(.7),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: screensize.height * .15,
                                    width: screensize.width * .22,
                                    child: Image.asset(
                                      "assets/books.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        FittedBox(
                                          child: Text(
                                            " تعلم كيف  ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                        FittedBox(
                                          child: Text(
                                            " تبني جملة  ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 33),
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const MainPage()))),
                            child: Container(
                              height: screensize.height * .2,
                              width: screensize.width * .42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white.withOpacity(.7),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: screensize.height * .15,
                                    width: screensize.width * .22,
                                    child: Image.asset(
                                      "assets/logo2.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        FittedBox(
                                          child: Text(
                                            "العب   ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                        FittedBox(
                                          child: Text(
                                            " مع جملة  ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                )
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}
