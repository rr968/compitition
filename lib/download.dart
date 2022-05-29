import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:share_plus/share_plus.dart';

class Down extends StatefulWidget {
  const Down({Key? key}) : super(key: key);

  @override
  State<Down> createState() => _DownState();
}

class _DownState extends State<Down> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () async {
              GallerySaver.saveImage("https://i.ibb.co/KsQzy6y/image.jpg");
              Share.share("https://i.ibb.co/KsQzy6y/image.jpg");
            },
            child: const Center(child: Text("download"))),
      ),
    );
  }
}
