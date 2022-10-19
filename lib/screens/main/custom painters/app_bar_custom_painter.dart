import 'package:flutter/material.dart';

class AppBarCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 238, 106, 97)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1421429, size.height * 0.1250000);
    path0.cubicTo(
        size.width * 0.0014286,
        size.height * 0.1231250,
        size.width * 0.0014286,
        size.height * 0.8731250,
        size.width * 0.1421429,
        size.height * 0.8725000);
    path0.cubicTo(
        size.width * 0.2850000,
        size.height * 0.8725000,
        size.width * 0.7157143,
        size.height * 0.8725000,
        size.width * 0.8585714,
        size.height * 0.8750000);
    path0.cubicTo(
        size.width * 0.8923214,
        size.height * 0.8731250,
        size.width * 0.9412500,
        size.height * 0.8418750,
        size.width * 0.9421429,
        size.height * 0.7000000);
    path0.cubicTo(
        size.width * 0.9420357,
        size.height * 0.6395000,
        size.width * 0.8489357,
        size.height * 0.3919250,
        size.width * 0.8142000,
        size.height * 0.2959250);
    path0.cubicTo(
        size.width * 0.7901429,
        size.height * 0.2398250,
        size.width * 0.7467929,
        size.height * 0.1248250,
        size.width * 0.7049000,
        size.height * 0.1225750);
    path0.cubicTo(
        size.width * 0.6031143,
        size.height * 0.1225750,
        size.width * 0.4475000,
        size.height * 0.1250000,
        size.width * 0.1421429,
        size.height * 0.1250000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
