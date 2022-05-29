import 'package:flutter/material.dart';

import 'aboutUs.dart';
import 'connectus.dart';
import 'settings.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/settingsP.png",
          height: screensize.height,
          width: screensize.width,
          fit: BoxFit.fill,
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
        Padding(
          padding: EdgeInsets.only(left: screensize.width * .2),
          child: Center(
            child: Container(
              height: screensize.height * .5,
              width: screensize.width * .55,
              decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 163, 163, 163).withOpacity(.7),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: 37,
                      width: 37,
                      child: Image.asset(
                        "assets/list.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: FittedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AboutUs())),
                          child: Container(
                            height: screensize.height * .09,
                            width: screensize.width * .3,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 250, 248, 248)
                                    .withOpacity(.7),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all()),
                            child: const Center(
                                child: Text(
                              "من نحن",
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Settings())),
                          child: Container(
                            height: screensize.height * .09,
                            width: screensize.width * .3,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 250, 248, 248)
                                    .withOpacity(.7),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all()),
                            child: const Center(
                                child: Text(
                              "إقترح جملة",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConnectUs())),
                          child: Container(
                            height: screensize.height * .09,
                            width: screensize.width * .3,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 250, 248, 248)
                                    .withOpacity(.7),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all()),
                            child: const Center(
                                child: Text(
                              "تواصل معنا",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),
        )
      ]),
    );
  }
}
