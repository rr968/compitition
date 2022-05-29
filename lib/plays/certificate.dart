import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:share_plus/share_plus.dart';
import 'package:syntax_flutter_parser/plays/play1/play11.dart';

class Certificate extends StatefulWidget {
  const Certificate({Key? key}) : super(key: key);

  @override
  State<Certificate> createState() => _CertificateState();
}

class _CertificateState extends State<Certificate> {
  @override
  void initState() {
    adfinal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          height: screen.height,
          width: screen.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/end.jpeg"),
            fit: BoxFit.fill,
          )),
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
          right: screen.width * .25,
          top: screen.height * .5,
          child: InkWell(
            onTap: () => Share.share("https://i.ibb.co/KsQzy6y/image.jpg"),
            child: const Icon(
              Icons.share,
            ),
          ),
        ),
        Positioned(
          right: screen.width * .13,
          top: screen.height * .5,
          child: InkWell(
            onTap: () async {
              GallerySaver.saveImage("https://i.ibb.co/KsQzy6y/image.jpg")
                  .then((value) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const SizedBox(
                        height: 50,
                        width: 200,
                        child: AlertDialog(
                            title: Center(
                                child: Text(
                          "تم الحفظ بنجاح",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ))),
                      );
                    });
              });
            },
            child: const Icon(
              Icons.download,
            ),
          ),
        ),
      ]),
    );
  }
}
