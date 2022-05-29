// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/aboutus.png",
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
        Positioned(
          top: screensize.height * .9,
          left: screensize.width * .4,
          child: InkWell(
            onTap: () {
              final Uri emaillanunch = Uri(
                scheme: 'mailto',
                path: "jomlah321@gmail.com",
              );
              launchUrl(emaillanunch);
            },
            child: const Text(
              "jomlah321@gmail.com",
              style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
        )
      ]),
    );
  }
}
