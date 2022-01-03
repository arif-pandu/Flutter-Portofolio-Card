// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:potofolio_web/expanded_desktop/social_desktop.dart';
import 'package:potofolio_web/homepage.dart';
import 'package:potofolio_web/theme.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({Key? key}) : super(key: key);

  @override
  _HomePageDesktopState createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  double boxWidth = 1;
  int indexSelectedDesktop = 0;
  bool isTapped = false;

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List listExpandedDesktop = [
      Container(),
      SocialDesktop(height: height, width: width),
      Text('PROJECTS'),
      Text('GMAIL'),
      Text('WEB'),
    ];

    return Scaffold(
      backgroundColor: whiteColor,
      body: width <= 786
          ? Container(
              color: yellowColor,
              child: Center(
                child: SizedBox(
                  width: width * 2 / 3,
                  child: const Text(
                    'KEEP THE BROWSER ORIENTATION LANDSCAPE\nTO SEE FULL CONTENT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 4,
                      wordSpacing: 5,
                      leadingDistribution: TextLeadingDistribution.even,
                    ),
                  ),
                ),
              ),
            )
          : ListView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              controller: scrollController,
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: boxWidth,
                  height: height,
                  child: Center(
                    child: listExpandedDesktop[indexSelectedDesktop],
                  ),
                ),
                Container(
                  height: height,
                  width: width,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textTap(width, 'MAPEN', 1),
                        textTap(width, 'PROJECT', 2),
                        textTap(width, '@GMAIL', 3),
                        textTap(width, '.COM', 4),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  GestureDetector textTap(double width, String text, int index) {
    return GestureDetector(
      onTap: () {
        print('TAP');
        setState(() {
          boxWidth = width;
          indexSelectedDesktop = index;
          isTapped = true;
          scrollController.animateTo(
            0,
            duration: Duration(seconds: 1),
            curve: Curves.easeIn,
          );
        });
      },
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Helvetica',
          fontSize: (width - 250) / 22,
          color: blackColor,
          fontWeight: FontWeight.w700,
          letterSpacing: 22,
        ),
      ),
    );
  }
}
