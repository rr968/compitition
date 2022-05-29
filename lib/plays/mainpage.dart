import 'package:flutter/material.dart';
import 'package:syntax_flutter_parser/plays/play1/play13.dart';

import 'play1/play11.dart';
import 'play2/play21.dart';
import 'play3/play31.dart';
import 'play4/play41.dart';
import 'play5/play51.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/road.jpg",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: screen.height * .85,
          left: screen.width * .27,
          child: InkWell(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Play11())),
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: currentLevel > 0
                      ? const DecorationImage(
                          image: AssetImage("assets/star1.png"),
                          fit: BoxFit.fill)
                      : const DecorationImage(
                          image: AssetImage("assets/noStar1.png"),
                          fit: BoxFit.fill)),
            ),
          ),
        ),
        Positioned(
          top: screen.height * .62,
          left: screen.width * .6,
          child: InkWell(
            onTap: () {
              if (currentLevel >= 1) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Play21()));
              }
            },
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: currentLevel > 1
                      ? const DecorationImage(
                          image: AssetImage("assets/star2.png"),
                          fit: BoxFit.fill)
                      : currentLevel == 1
                          ? const DecorationImage(
                              image: AssetImage("assets/noStar2.png"),
                              fit: BoxFit.fill)
                          : const DecorationImage(
                              image: AssetImage("assets/lock2.png"),
                              fit: BoxFit.fill)),
            ),
          ),
        ),
        Positioned(
          top: screen.height * .42,
          left: screen.width * .48,
          child: InkWell(
            onTap: () {
              if (currentLevel >= 2) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Play31()));
              }
            },
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: currentLevel > 2
                      ? const DecorationImage(
                          image: AssetImage("assets/star3.png"),
                          fit: BoxFit.fill)
                      : currentLevel == 2
                          ? const DecorationImage(
                              image: AssetImage("assets/noStar3.png"),
                              fit: BoxFit.fill)
                          : const DecorationImage(
                              image: AssetImage("assets/lock3.png"),
                              fit: BoxFit.fill)),
            ),
          ),
        ),
        Positioned(
          top: screen.height * .42,
          left: screen.width * .15,
          child: InkWell(
            onTap: () {
              if (currentLevel >= 3) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Play41()));
              }
            },
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: currentLevel > 3
                      ? const DecorationImage(
                          image: AssetImage("assets/star4.png"),
                          fit: BoxFit.fill)
                      : currentLevel == 3
                          ? const DecorationImage(
                              image: AssetImage("assets/noStar4.png"),
                              fit: BoxFit.fill)
                          : const DecorationImage(
                              image: AssetImage("assets/lock4.png"),
                              fit: BoxFit.fill)),
            ),
          ),
        ),
        Positioned(
          top: screen.height * .3,
          left: screen.width * .4,
          child: InkWell(
            onTap: () {
              if (currentLevel >= 4) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Play51()));
              }
            },
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: currentLevel > 4
                      ? const DecorationImage(
                          image: AssetImage("assets/star5.png"),
                          fit: BoxFit.fill)
                      : currentLevel == 4
                          ? const DecorationImage(
                              image: AssetImage("assets/noStar5.png"),
                              fit: BoxFit.fill)
                          : const DecorationImage(
                              image: AssetImage("assets/lock5.png"),
                              fit: BoxFit.fill)),
            ),
          ),
        ),
      ]),
    );
  }
}
