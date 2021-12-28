// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:potofolio_web/expanded/gagal/projects-gagal.dart';
import 'package:potofolio_web/expanded/gagal/social-gagal.dart';
import 'package:potofolio_web/expanded/projects.dart';
import 'package:potofolio_web/expanded/social.dart';
import 'package:potofolio_web/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double boxHeight = 1;
  int indexSelected = 0;
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double heightMainContent = isTapped == false ? height - 1 : height / 3;

    List listExpandedWidget = [
      Container(),
      Social(height: height, width: width),
      Projects(height: height, width: width),
      Text('EMAIL'),
      Text('WEB'),
    ];

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          // Content Expanded
          AnimatedContainer(
            duration: Duration(seconds: 2),
            height: boxHeight,
            width: width,
            child: Center(
              child: listExpandedWidget[indexSelected],
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(
                width: isTapped == false ? 0 : 2,
                color: redColor,
              ),
            ),
          ),
          // Tappable Email Text (height: 1/3)
          Container(
            height: heightMainContent,
            width: width,
            // color: greenColor,
            child: Center(
              child: CustomPaint(
                painter: LinePainter(),
                child: Container(
                  height: height / 3,
                  width: width,
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          'MAPENPROJECT@GMAIL.COM',
                          style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 22,
                            color: blackColor,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      // EMAIL
                      tapButton(
                        width / 2 - 20,
                        height / 3 / 5 - 20,
                        width,
                        height,
                        3,
                      ),
                      // SOCIAL
                      tapButton(
                        // 10,
                        width / 10 -
                            15 +
                            (((width / 4 + 5) - (width / 10 - 15)) / 2) -
                            20,
                        // 10,
                        height / 3 * 2 / 3 + 20,
                        width,
                        height,
                        1,
                      ),
                      // PROJECT
                      tapButton(
                        (width / 4 + 10) +
                            (((width / 2 + 12) - (width / 4 + 10)) / 2) -
                            20,
                        (height / 3) - (height / 3 / 3) + 20,
                        width,
                        height,
                        2,
                      ),
                      // WEBSITE
                      tapButton(
                        (width * 0.9 - 30) +
                            (((width * 0.9 + 15) - (width * 0.9 - 30)) / 2) -
                            20,
                        (height / 3) - (height / 3 / 3) + 20,
                        width,
                        height,
                        4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Positioned tapButton(
    double left,
    double top,
    double width,
    double height,
    int index,
  ) {
    return Positioned(
      left: left,
      top: top,
      child: GestureDetector(
        onTap: () {
          print('TAP');
          setState(() {
            boxHeight = height;
            indexSelected = index;
            isTapped = true;
          });
        },
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(width: 1, color: blackColor),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // PAINT VAR
    var paint = Paint()
      ..color = blackColor
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;
    //Button EMAIL
    var path3 = Path()
      ..moveTo(size.width / 10 - 15, size.height / 3 + 15)
      ..lineTo(size.width / 10 - 15, size.height / 3)
      ..lineTo(size.width * 0.9 + 15, size.height / 3)
      ..lineTo(size.width * 0.9 + 15, size.height / 3 + 15);

    var path3Button = Path()
      ..moveTo(size.width / 2, size.height / 3)
      ..lineTo(size.width / 2, size.height / 5);

    canvas.drawPath(path3, paint);
    canvas.drawPath(path3Button, paint);
    // Button Social
    var path1 = Path()
      ..moveTo(size.width / 10 - 15, size.height - (size.height / 3 + 15))
      ..lineTo(size.width / 10 - 15, size.height - (size.height / 3))
      ..lineTo(size.width / 4 + 5, size.height - (size.height / 3))
      ..lineTo(size.width / 4 + 5, size.height - (size.height / 3 + 15));
    var path1Button = Path()
      ..moveTo(
          size.width / 10 -
              15 +
              (((size.width / 4 + 5) - (size.width / 10 - 15)) / 2),
          size.height - (size.height / 3))
      ..lineTo(
          size.width / 10 -
              15 +
              (((size.width / 4 + 5) - (size.width / 10 - 15)) / 2),
          size.height - (size.height / 3 - 30));

    canvas.drawPath(path1, paint);
    canvas.drawPath(path1Button, paint);
    // Button Project
    var path2 = Path()
      ..moveTo(size.width / 4 + 10, size.height - (size.height / 3 + 15))
      ..lineTo(size.width / 4 + 10, size.height - (size.height / 3))
      ..lineTo(size.width / 2 + 12, size.height - (size.height / 3))
      ..lineTo(size.width / 2 + 12, size.height - (size.height / 3 + 15));

    var path2Button = Path()
      ..moveTo(
          (size.width / 4 + 10) +
              (((size.width / 2 + 12) - (size.width / 4 + 10)) / 2),
          size.height - (size.height / 3))
      ..lineTo(
          (size.width / 4 + 10) +
              (((size.width / 2 + 12) - (size.width / 4 + 10)) / 2),
          size.height - (size.height / 3 - 30));

    canvas.drawPath(path2, paint);
    canvas.drawPath(path2Button, paint);

    // Button Website
    var path4 = Path()
      ..moveTo(size.width * 0.9 + 15, size.height - (size.height / 3 + 15))
      ..lineTo(size.width * 0.9 + 15, size.height - (size.height / 3))
      ..lineTo(size.width * 0.9 - 30, size.height - (size.height / 3))
      ..lineTo(size.width * 0.9 - 30, size.height - (size.height / 3 + 15));

    var path4Button = Path()
      ..moveTo(
          (size.width * 0.9 - 30) +
              (((size.width * 0.9 + 15) - (size.width * 0.9 - 30)) / 2),
          size.height - (size.height / 3))
      ..lineTo(
          (size.width * 0.9 - 30) +
              (((size.width * 0.9 + 15) - (size.width * 0.9 - 30)) / 2),
          size.height - (size.height / 3 - 30));

    canvas.drawPath(path4, paint);
    canvas.drawPath(path4Button, paint);
  }

  //
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
