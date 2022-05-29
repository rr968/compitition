import 'dart:math';

import 'package:flutter/material.dart';

Widget containerTarget(String word) {
  return Container(
    height: 80,
    width: 80,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(20)),
    child: FittedBox(
      child: Center(
          child: Text(
        word,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
      )),
    ),
  );
}

Widget drag(String word, {int si = 1}) {
  return Draggable(data: word, feedback: con(word, si), child: con(word, si));
}

Widget drag1(String word, r, Size screensize, {int si = 1}) {
  return Draggable(
      data: word, feedback: con(word, si), child: con1(word, r, si));
}

Widget con1(String word, r, si) {
  return Container(
    height: si == 1 ? 35 : 40,
    width: si == 1 ? 70 : 80,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: const Color.fromARGB(255, 209, 208, 208), width: 1.5),
        borderRadius: r),
    child: FittedBox(
      child: Center(
          child: Text(
        word,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            decoration: TextDecoration.none,
            color: Colors.black),
      )),
    ),
  );
}

Widget con(String word, si) {
  return Container(
    height: si == 1 ? 35 : 40,
    width: si == 1 ? 70 : 80,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
          color: const Color.fromARGB(255, 209, 208, 208), width: 1.5),
    ),
    child: FittedBox(
      child: Center(
          child: Text(
        word,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            decoration: TextDecoration.none,
            color: Colors.black),
      )),
    ),
  );
}

Widget dragt(String word, Size screensize, {int si = 1}) {
  return Draggable(
      data: word,
      feedback: cont(word, si, screensize),
      child: cont(word, si, screensize));
}

Widget drag1t(String word, r, Size screensize, {int si = 1}) {
  return Draggable(
      data: word,
      feedback: cont(word, si, screensize),
      child: con1t(word, r, si, screensize));
}

Widget con1t(String word, r, si, Size screensize) {
  return Container(
    height: si == 1 ? screensize.height * .06 : screensize.height * .07,
    width: si == 1 ? screensize.width * .07 : screensize.width * .09,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: const Color.fromARGB(255, 209, 208, 208), width: 1.5),
        borderRadius: r),
    child: FittedBox(
      child: Center(
          child: Text(
        word,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            decoration: TextDecoration.none,
            color: Colors.black),
      )),
    ),
  );
}

Widget cont(String word, si, Size screensize) {
  return Container(
    height: si == 1 ? screensize.height * .06 : screensize.height * .07,
    width: si == 1 ? screensize.width * .07 : screensize.width * .09,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
          color: const Color.fromARGB(255, 209, 208, 208), width: 1.5),
    ),
    child: FittedBox(
      child: Center(
          child: Text(
        word,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            decoration: TextDecoration.none,
            color: Colors.black),
      )),
    ),
  );
}

/// A custom Path to paint stars.
Path drawStar(Size size) {
  // Method to convert degree to radians
  double degToRad(double deg) => deg * (pi / 180.0);

  const numberOfPoints = 5;
  final halfWidth = size.width / 2;
  final externalRadius = halfWidth;
  final internalRadius = halfWidth / 2.5;
  final degreesPerStep = degToRad(360 / numberOfPoints);
  final halfDegreesPerStep = degreesPerStep / 2;
  final path = Path();
  final fullAngle = degToRad(360);
  path.moveTo(size.width, halfWidth);

  for (double step = 0; step < fullAngle; step += degreesPerStep) {
    path.lineTo(halfWidth + externalRadius * cos(step),
        halfWidth + externalRadius * sin(step));
    path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
        halfWidth + internalRadius * sin(step + halfDegreesPerStep));
  }
  path.close();
  return path;
}
