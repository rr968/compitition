// ignore_for_file: must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboard.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController fieldName = TextEditingController();
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  void initState() {
    getaudio();
    super.initState();
  }

  late Uri url;
  getaudio() async {
    final player = AudioCache(prefix: 'assets/');
    url = await player.load('fp.mp3');
    audioPlayer.play(url.path, isLocal: true);
  }

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView(
          children: [
            Stack(children: [
              Image.asset(
                "assets/firstpage.png",
                height: screensize.height,
                width: screensize.width,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: screensize.height * .62,
                left: screensize.width * .35,
                child: Column(
                  children: [
                    SizedBox(
                      height: screensize.height * .08,
                      width: screensize.width * .3,
                      child: TextField(
                        controller: fieldName,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            hintText: 'اكتب اسمك',
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () async {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const dashboard()));
                        SharedPreferences name =
                            await SharedPreferences.getInstance();
                        name.setString("name", fieldName.text);
                      },
                      child: Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 231, 107, 5),
                        ),
                        child: const FittedBox(
                          child: Text(
                            "هيا بنا",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
