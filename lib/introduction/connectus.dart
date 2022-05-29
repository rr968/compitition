// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectUs extends StatelessWidget {
  ConnectUs({Key? key}) : super(key: key);
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController content = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(children: [
          Image.asset(
            "assets/connect.png",
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
          Center(
            child: SizedBox(
              height: screensize.height * .6,
              width: screensize.width * .7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        "إسمك",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: screensize.height * .07,
                        width: screensize.width * .38,
                        child: TextField(
                          controller: name,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white.withOpacity(.7),
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
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      const Text(
                        "رسالتك",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: SizedBox(
                          height: screensize.height * .19,
                          width: screensize.width * .38,
                          child: TextField(
                            controller: content,
                            cursorColor: Colors.black,
                            minLines: 5,
                            maxLines: 6,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white.withOpacity(.7),
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
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      String encodeQuery(Map<String, String> par) {
                        return par.entries
                            .map((e) =>
                                "${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}")
                            .join('&');
                      }

                      final Uri emaillanunch = Uri(
                          scheme: 'mailto',
                          path: "jomlah321@gmail.com",
                          query: encodeQuery({
                            'subject': name.text,
                            'body': content.text,
                          }));
                      launchUrl(emaillanunch);
                    },
                    child: Container(
                      height: 40,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 231, 107, 5),
                      ),
                      child: const FittedBox(
                        child: Text(
                          "إرسال",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
