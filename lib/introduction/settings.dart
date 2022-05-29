import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/spage.png",
          height: double.infinity,
          width: double.infinity,
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
      ]),
    );
  }
}
