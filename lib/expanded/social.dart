// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:potofolio_web/theme.dart';

class Social extends StatefulWidget {
  Social({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  double height;
  double width;

  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {
  //
  List<dynamic> listSocialButton = [
    {
      'icon': Icons.timelapse,
      'text':
          'Flexible Work Time\n---------------------------Up To 35 Hour per Week',
    },
    {
      'icon': Icons.app_registration_rounded,
      'text': 'Build Apps\n---------------------------And Connect to REST API',
    },
    {
      'icon': Icons.gamepad_outlined,
      'text':
          'Create Games\n---------------------------2D, Board, and Educational Games',
    },
    {
      'icon': Icons.web,
      'text':
          'Make Website\n----------------------------Written in Flutter, ready to deploy',
    }
  ];

  //
  @override
  Widget build(BuildContext context) {
    //
    List<Widget> listBioPoints = List.generate(
      4,
      (index) => Expanded(
        flex: 1,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          width: double.infinity,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.4),
                offset: Offset(3, 3),
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Icon(
                  listSocialButton[index]['icon'],
                  size: 45,
                  color: blackColor,
                ),
              ),
              Container(
                width: widget.width * 0.5,
                child: Text(
                  listSocialButton[index]['text'],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: blackColor.withOpacity(0.8),
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //
    return Container(
      height: widget.height,
      width: widget.width,
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: blueLightColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // PHOTO AND NAME
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: blackColor.withOpacity(0.4),
                            offset: Offset(3, 3),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Icon(Icons.person, size: 80),
                    ),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Arif Pandu',
                          style: TextStyle(
                            fontSize: 30,
                            color: whiteColor,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10, top: 5),
                          width: 120,
                          height: 2,
                          decoration: BoxDecoration(
                            color: whiteColor.withOpacity(0.9),
                            boxShadow: [
                              BoxShadow(
                                color: blackColor.withOpacity(0.4),
                                offset: Offset(3, 3),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                            fontSize: 18,
                            color: whiteColor,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            // BIODATA POINTS
            Expanded(
              flex: 10,
              child: Container(
                width: widget.width,
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: listBioPoints,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
