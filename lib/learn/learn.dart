import 'package:flutter/material.dart';

import 'learn1.dart';
import 'learn2.dart';
import 'learn3.dart';
import 'learn4.dart';
import 'learn5.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screensize.height,
            width: screensize.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/desert.jpeg"), fit: BoxFit.fill)),
          ),
          Positioned(
            top: screensize.height * .28,
            left: screensize.width * .47,
            child: Container(
              height: screensize.height * .6,
              width: screensize.width * .1,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/col.PNG"), fit: BoxFit.fill)),
            ),
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
                                image: AssetImage("assets/arrow.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ))),
          Positioned(
            top: screensize.height * .24,
            left: screensize.width * .52,
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Learn1())),
              child: Container(
                height: screensize.height * .22,
                width: screensize.width * .2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage("assets/l1.PNG"), fit: BoxFit.fill)),
              ),
            ),
          ),
          Positioned(
            top: screensize.height * .45,
            left: screensize.width * .52,
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Learn3())),
              child: Container(
                height: screensize.height * .22,
                width: screensize.width * .2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage("assets/l3.PNG"), fit: BoxFit.fill)),
              ),
            ),
          ),
          Positioned(
            top: screensize.height * .66,
            left: screensize.width * .52,
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Learn5())),
              child: Container(
                height: screensize.height * .22,
                width: screensize.width * .2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage("assets/l5.PNG"), fit: BoxFit.fill)),
              ),
            ),
          ),
          Positioned(
            top: screensize.height * .35,
            left: screensize.width * .328,
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Learn2())),
              child: Container(
                height: screensize.height * .22,
                width: screensize.width * .2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage("assets/l2.PNG"), fit: BoxFit.fill)),
              ),
            ),
          ),
          Positioned(
            top: screensize.height * .568,
            left: screensize.width * .328,
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Learn4())),
              child: Container(
                height: screensize.height * .22,
                width: screensize.width * .2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage("assets/l4.PNG"), fit: BoxFit.fill)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
