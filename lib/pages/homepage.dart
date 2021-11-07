// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;

    TextStyle styleName = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w700,
      fontFamily: "Ocratext",
    );

    TextStyle styleMainContent = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    );

    return Scaffold(
      backgroundColor: Color(0xfffecd2f),
      body: Center(
        child: kIsWeb
            ? MainContentWidget(
                heightSize: heightSize,
                widthSize: widthSize,
                styleName: styleName,
                styleMainContent: styleMainContent,
                // urlLaunch: launchUrl
              )
            : RotatedBox(
                quarterTurns: 1,
                child: MainContentWidget(
                  heightSize: heightSize,
                  widthSize: widthSize,
                  styleName: styleName,
                  styleMainContent: styleMainContent,
                ),
              ),
      ),
    );
  }
}

class MainContentWidget extends StatelessWidget {
  const MainContentWidget({
    Key? key,
    required this.heightSize,
    required this.widthSize,
    required this.styleName,
    required this.styleMainContent,
    // required this.urlLaunch,
  }) : super(key: key);

  final double heightSize;
  final double widthSize;
  final TextStyle styleName;
  final TextStyle styleMainContent;
  // final VoidCallback urlLaunch;

  @override
  Widget build(BuildContext context) {
    String url = "http://www.github.com/arif-pandu";

    launchURL() async => await canLaunch(url)
        ? await launch(url)
        : throw 'Could not launch $url';

    return Container(
      height: heightSize * 0.8,
      width: widthSize * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage("assets/ktp-bg-landscape.png"),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(
        children: [
          // JUDUL
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "PORTOFOLIO CARD",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // MAIN CONTENT
          Row(
            children: [
              // BIODATA
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // NAME
                  Container(
                    width: widthSize * 0.6,
                    height: heightSize * 0.1,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            margin: EdgeInsets.only(left: widthSize * 0.03),
                            child: Text("Name", style: styleName),
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Text(
                            ":",
                            style: styleName,
                          ),
                        ),
                        Expanded(
                          flex: 16,
                          child: Text(
                            "MUHAMAD ARIF PANDU",
                            style: styleName,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // TITLE
                  Container(
                    width: widthSize * 0.6,
                    height: heightSize * 0.075,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            margin: EdgeInsets.only(left: widthSize * 0.05),
                            child: Text("Title", style: styleMainContent),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            ":",
                            style: styleMainContent,
                          ),
                        ),
                        Expanded(
                          flex: 16,
                          child: Text(
                            "Flutter Developer",
                            style: styleMainContent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Status
                  Container(
                    width: widthSize * 0.6,
                    height: heightSize * 0.075,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            margin: EdgeInsets.only(left: widthSize * 0.05),
                            child: Text("Status", style: styleMainContent),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            ":",
                            style: styleMainContent,
                          ),
                        ),
                        Expanded(
                          flex: 16,
                          child: Text(
                            "Freelancer",
                            style: styleMainContent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SPECIALITY
                  Container(
                    width: widthSize * 0.6,
                    height: heightSize * 0.075,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            margin: EdgeInsets.only(left: widthSize * 0.05),
                            child: Text("Speciality", style: styleMainContent),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            ":",
                            style: styleMainContent,
                          ),
                        ),
                        Expanded(
                          flex: 16,
                          child: Text(
                            "Flutter, Dart, HTML, CSS",
                            style: styleMainContent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // DOMICILE
                  Container(
                    width: widthSize * 0.6,
                    height: heightSize * 0.075,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            margin: EdgeInsets.only(left: widthSize * 0.05),
                            child: Text("Domicile", style: styleMainContent),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            ":",
                            style: styleMainContent,
                          ),
                        ),
                        Expanded(
                          flex: 16,
                          child: Text(
                            "Indonesia",
                            style: styleMainContent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // GITHUB
                  Container(
                    width: widthSize * 0.6,
                    height: heightSize * 0.075,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            margin: EdgeInsets.only(left: widthSize * 0.05),
                            child: Text("GitHub", style: styleMainContent),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            ":",
                            style: styleMainContent,
                          ),
                        ),
                        Expanded(
                          flex: 16,
                          child: GestureDetector(
                            onTap: () => launchURL(),
                            child: Text(
                              "arif-pandu",
                              style: styleMainContent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ABOUT ME
                  Container(
                    width: widthSize * 0.6,
                    height: heightSize * 0.125,
                    padding: EdgeInsets.only(top: 10),
                    color: Colors.transparent,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            margin: EdgeInsets.only(left: widthSize * 0.05),
                            child: Text("About Me", style: styleMainContent),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            ":",
                            style: styleMainContent,
                          ),
                        ),
                        Expanded(
                          flex: 16,
                          child: Text(
                            "Interested in programming since sixth grade in elementary school. Now making a lot of things with thousand lines of code. Check behind this card.",
                            style: styleMainContent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // PHOTO
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: heightSize * 0.1,
                  ),
                  Container(
                    width: widthSize * 0.2,
                    height: widthSize * 0.15,
                    color: Colors.transparent,
                    child: Center(
                      child: Container(
                        width: widthSize * 0.125,
                        height: widthSize * 0.125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("assets/profile.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Indonesia",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Helvetica",
                    ),
                  ),
                  Text(
                    "Nov 6 2021",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Helvetica",
                    ),
                  ),
                  Container(
                    width: widthSize * 0.2,
                    height: widthSize * 0.1,
                    color: Colors.transparent,
                    child: Center(
                      child: Container(
                        width: widthSize * 0.075,
                        height: widthSize * 0.075,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("assets/my-signature.png"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
