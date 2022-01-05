import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:potofolio_web/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController = ScrollController();

  TextStyle styleWhite = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: whiteColor,
  );
  TextStyle styleBlue = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: blueColor,
  );
  TextStyle stylePurple = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Colors.purple[200],
  );
  TextStyle styleAmber = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Colors.amber[600]?.withOpacity(0.8),
  );

  TextStyle styleButton = TextStyle(
    fontSize: 18,
    // color: text1,
    fontWeight: FontWeight.w500,
  );

  Color btn1 = whiteColor;
  Color btn2 = whiteColor;
  Color btn3 = whiteColor;

  Color text1 = blueLightColor;
  Color text2 = blueLightColor;
  Color text3 = blueLightColor;

  Border theBorder = Border.all(width: 3, color: blueLightColor);

  Border border1 = Border.all(width: 0, color: Colors.transparent);

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(seconds: 3),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        controller: scrollController,
        children: [
          // TOP SECTION
          Container(
            height: height,
            width: width,
            child: Stack(
              children: [
                SizedBox(
                  height: height,
                  width: width,
                  child: SvgPicture.asset(
                    'assets/image/bg-blue.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Text(
                    "HELLO, I'M PANDU",
                    style: TextStyle(
                      fontSize: 40,
                      color: whiteColor,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // BOTTOM SEVTION
          Container(
            height: height,
            width: width,
            color: whiteColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Button Navigation
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MouseRegion(
                        onExit: (event) {
                          setState(() {
                            btn1 = whiteColor;
                            text1 = blueLightColor;
                          });
                        },
                        onHover: (event) {
                          setState(() {
                            btn1 = blueLightColor;
                            text1 = whiteColor;
                          });
                        },
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              btn1 = whiteColor;
                              border1 = theBorder;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: btn1,
                              border: border1,
                            ),
                            child: Center(
                              child: Text('Biograph',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: text1,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: blueLightColor,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: blueLightColor,
                        ),
                      ),
                    ],
                  ),
                  // Detail Button Nav
                  width <= 801
                      // MOBILE
                      ? Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 30),
                              height: height * 0.4,
                              width: width * 0.8,
                              decoration: BoxDecoration(
                                color: Colors.indigo[900],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(5, 5),
                                    color: blackColor.withOpacity(0.3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  ButtonWindow(),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                                    child: Row(
                                      children: [
                                        Text('Flutter', style: styleWhite),
                                        Text('userName', style: styleBlue),
                                        Text('=', style: stylePurple),
                                        Text('Arif Pandu', style: styleAmber),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                                    child: Row(
                                      children: [
                                        Text('Flutter', style: styleWhite),
                                        Text('userName', style: styleBlue),
                                        Text('=', style: stylePurple),
                                        Text('Arif Pandu', style: styleAmber),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                                    child: Row(
                                      children: [
                                        Text('Flutter', style: styleWhite),
                                        Text('userName', style: styleBlue),
                                        Text('=', style: stylePurple),
                                        Text('Arif Pandu', style: styleAmber),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              height: height * 0.4,
                              width: width * 0.8,
                              //
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(5, 5),
                                    color: blackColor.withOpacity(0.3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              //
                            ),
                          ],
                        )
                      // DESKTOP
                      : Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              height: height * 0.7,
                              width: width * 0.6 - 60,
                              decoration: BoxDecoration(
                                color: Colors.indigo[900],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(5, 5),
                                    color: blackColor.withOpacity(0.3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  ButtonWindow(),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                                    child: Row(
                                      children: [
                                        Text('Flutter', style: styleWhite),
                                        Text('userName', style: styleBlue),
                                        Text('=', style: stylePurple),
                                        Text('Arif Pandu', style: styleAmber),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                                    child: Row(
                                      children: [
                                        Text('Flutter', style: styleWhite),
                                        Text('userName', style: styleBlue),
                                        Text('=', style: stylePurple),
                                        Text('Arif Pandu', style: styleAmber),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                                    child: Row(
                                      children: [
                                        Text('Flutter', style: styleWhite),
                                        Text('userName', style: styleBlue),
                                        Text('=', style: stylePurple),
                                        Text('Arif Pandu', style: styleAmber),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              height: height * 0.7,
                              width: width * 0.4 - 40,
                              //
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(5, 5),
                                    color: blackColor.withOpacity(0.3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              //
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonWindow extends StatelessWidget {
  const ButtonWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        top: 15,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.circle, color: greenColor),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.circle, color: orangeColor),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.circle, color: redColor),
          ),
        ],
      ),
    );
  }
}
