import 'package:animate_do/animate_do.dart';
import '../fuctions.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Learn5 extends StatefulWidget {
  const Learn5({Key? key}) : super(key: key);

  @override
  State<Learn5> createState() => _Learn5State();
}

class _Learn5State extends State<Learn5> {
  final asset = [
    "assets/v2.mp4",
    "assets/v2.mp4",
    "assets/v2.mp4",
    "assets/v2.mp4",
    "assets/v2.mp4",
  ];
  late VideoPlayerController videoPlayerController;
  int pagenum = 2;
  int currentpage = 0;
  @override
  void initState() {
    videoPlayerController = VideoPlayerController.asset(asset[currentpage])
      ..addListener(() => setState(() {}))
      ..setLooping(false)
      ..initialize().then((value) {});

    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: Stack(alignment: Alignment.center, children: [
        Container(
          height: screensize.height,
          width: screensize.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/desert.jpeg"), fit: BoxFit.fill)),
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
        Positioned(
          left: screensize.width * .63,
          top: screensize.height * .14,
          child: FadeInRight(
            duration: const Duration(seconds: 1),
            child: Container(
              height: screensize.height * .47,
              width: screensize.width * .4,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/boy3.PNG"), fit: BoxFit.fill)),
            ),
          ),
        ),
        FadeInDown(
          duration: const Duration(seconds: 1),
          delay: const Duration(seconds: 1),
          child: Padding(
            padding: EdgeInsets.only(
                top: screensize.height * .2, left: screensize.width * .05),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: screensize.width * .63,
                height: screensize.height * .4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: FittedBox(
                        child: Text(
                          learn5[currentpage],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 50),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: InkWell(
                        onTap: () {
                          videoPlayerController
                              .seekTo(const Duration(milliseconds: 0));
                        },
                        child: const Icon(
                          Icons.restart_alt,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: SizedBox(
                      width: screensize.width * .2,
                      height: screensize.width * .17,
                      child: videoPlayerController.value.isInitialized
                          ? VideoPlayer(videoPlayerController)
                          : const Center(
                              child: CircularProgressIndicator(),
                            )),
                ),
                const SizedBox(
                  width: 150,
                ),
                currentpage != 2
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            currentpage++;
                            videoPlayerController.pause();
                            videoPlayerController
                                .seekTo(const Duration(microseconds: 0));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 70,
                        ),
                      )
                    : const SizedBox(
                        width: 60,
                        height: 60,
                      ),
                SizedBox(
                  width: screensize.width * .3,
                ),
                currentpage != 0
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            currentpage--;
                            videoPlayerController.pause();
                            videoPlayerController
                                .seekTo(const Duration(microseconds: 0));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 70,
                        ),
                      )
                    : const SizedBox(
                        width: 60,
                        height: 60,
                      ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        )
      ])),
    );
  }
}
