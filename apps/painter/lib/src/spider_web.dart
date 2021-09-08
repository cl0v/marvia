
//TODO: Corrigir erro de resize
import 'dart:math';

import 'package:flutter/material.dart';

class SpiderWeb extends CustomPainter {
  const SpiderWeb();

  final v = 4 * 2;

  final sw = 1.0;
  final radio = 6.0;

  double ss(double x) {
    return sqrt(pow(x, 2) + pow(x, 2));
  }

  void canvasDrawLineStartBottomToRight(Canvas c, Offset center, double y) {
    final d = ss(y);
    c.drawLine(center + Offset(0, y), center + Offset(d / 2, d / 2),
        Paint()..strokeWidth = 2);
  }

  void canvasDrawLineStartBottomToLeft(Canvas c, Offset center, double y) {
    final d = ss(y);

    c.drawLine(center + Offset(0, y), center + Offset(-d / 2, d / 2),
        Paint()..strokeWidth = 2);
  }

  void canvasDrawLineStartLeftToTop(Canvas c, Offset center, double y) {
    final d = ss(y);
    c.drawLine(center + Offset(-y, 0), center + Offset(-d / 2, -d / 2),
        Paint()..strokeWidth = 2);
  }

  void canvasDrawLineStartLeftToBottom(Canvas c, Offset center, double y) {
    final d = ss(y);
    c.drawLine(center + Offset(-y, 0), center + Offset(-d / 2, d / 2),
        Paint()..strokeWidth = 2);
  }

  //////
  ///

  void canvasDrawLineStartTopToRight(Canvas c, Offset center, double y) {
    final d = ss(y);
    c.drawLine(center + Offset(0, -y), center + Offset(d / 2, -d / 2),
        Paint()..strokeWidth = 2);
  }

  void canvasDrawLineStartTopToLeft(Canvas c, Offset center, double y) {
    final d = ss(y);
    c.drawLine(center + Offset(0, -y), center + Offset(-d / 2, -d / 2),
        Paint()..strokeWidth = 2);
  }

  void canvasDrawLineStartRightToTop(Canvas c, Offset center, double y) {
    final d = ss(y);
    c.drawLine(center + Offset(y, 0), center + Offset(d / 2, -d / 2),
        Paint()..strokeWidth = 2);
  }

  void canvasDrawLineStartRightToBottom(Canvas c, Offset center, double y) {
    final d = ss(y);
    c.drawLine(center + Offset(y, 0), center + Offset(d / 2, d / 2),
        Paint()..strokeWidth = 2);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final hx = size.width / 2;
    final hy = size.height / 2;
    final center = Offset(hx, hy);
    final topl = Offset.zero;
    final top = center + Offset(0, -hy);
    final topr = center + Offset(hx, -hy);
    final bot = Offset(center.dx, size.height);
    final botl = Offset(0, size.height);
    final botr = Offset(size.width, size.height);
    final r = Offset(size.width, center.dy);
    final l = Offset(-size.width, center.dy);

    canvas.drawCircle(center, radio, Paint());
    canvas.drawLine(center, topl, Paint()..strokeWidth = sw);
    canvas.drawLine(center, botr, Paint()..strokeWidth = sw);
    canvas.drawLine(center, bot, Paint()..strokeWidth = sw);
    canvas.drawLine(center, top, Paint()..strokeWidth = sw);
    canvas.drawLine(center, topr, Paint()..strokeWidth = sw);
    canvas.drawLine(center, botl, Paint()..strokeWidth = sw);
    canvas.drawLine(center, botl, Paint()..strokeWidth = sw);
    canvas.drawLine(center, r, Paint()..strokeWidth = sw);
    canvas.drawLine(center, l, Paint()..strokeWidth = sw);
    for (var i in List.generate(30, (index) => 20.0 * index)) {
      canvasDrawLineStartBottomToRight(canvas, center, i);
      canvasDrawLineStartBottomToLeft(canvas, center, i);
      canvasDrawLineStartLeftToTop(canvas, center, i);
      canvasDrawLineStartLeftToBottom(canvas, center, i);
      canvasDrawLineStartTopToLeft(canvas, center, i);
      canvasDrawLineStartTopToRight(canvas, center, i);
      canvasDrawLineStartRightToTop(canvas, center, i);
      canvasDrawLineStartRightToBottom(canvas, center, i);
    }

    // canvas.drawLine(p1, p2, Paint()..strokeWidth = 2);
    // canvas.drawLine(
    //     p1 + Offset(0, 60), p2 + Offset(40, 40), Paint()..strokeWidth = 2);
    // canvas.drawLine(
    //     p1 + Offset(0, 80), p2 + Offset(60, 60), Paint()..strokeWidth = 2);
    // for (var i = 0; i < v; i += 1) {
    // canvas.drawPath(
    //     Path()
    //       ..moveTo(center.dx, center.dy)
    //       ..lineTo(zero.dx, zero.dy),
    //     Paint()..strokeWidth = 3);
    // }
    // canvas.drawPath(
    // Path()
    //   ..moveTo(size.width / 2, size.height / 2)
    //   ..lineTo(Offset.zero.dx, Offset.zero.dy)
    //   ..lineTo(size.width, size.height)..lineTo(75,75).. lineTo(120, 135),
    // Paint()..style = PaintingStyle.fill..strokeWidth = 20);
    // canvas.drawCircle(Offset(-size.width, -size.height), 300,
    //     Paint()..style = PaintingStyle.fill);
    // canvas.drawLine(
    //     Offset.zero, Offset(20, 20), Paint()..style = PaintingStyle.fill);
    // canvas.drawRect(Rect.fromPoints(Offset.zero, Offset(50, 50)), Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
