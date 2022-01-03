// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:potofolio_web/theme.dart';

class SocialDesktop extends StatefulWidget {
  const SocialDesktop({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  _SocialDesktopState createState() => _SocialDesktopState();
}

class _SocialDesktopState extends State<SocialDesktop> {
  //
  List<dynamic> listSocialButton = [
    {
      'icon': Icons.timelapse,
      'text': 'Flexible Work Time',
      'text2': '---------------------------',
      'text3': 'Up To 35 Hour per Week',
    },
    {
      'icon': Icons.app_registration_rounded,
      'text': 'Build Apps',
      'text2': '---------------------------',
      'text3': 'And Connect to REST API',
    },
    {
      'icon': Icons.gamepad_outlined,
      'text': 'Create Games',
      'text2': '---------------------------',
      'text3': '2D, Board, and Educational Games',
    },
    {
      'icon': Icons.web,
      'text': 'Make Website',
      'text2': '---------------------------',
      'text3': 'Written in Flutter, ready to deploy',
    }
  ];

  @override
  Widget build(BuildContext context) {
    //
    List<Widget> listBioPoints = List.generate(
      4,
      (index) => Expanded(
        flex: 1,
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          margin: EdgeInsets.symmetric(vertical: 8),
          width: widget.width * 0.4,
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
                width: widget.width * 0.25,
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
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        decoration: BoxDecoration(
          color: blueLightColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(2),
                      topRight: Radius.circular(2),
                    ),
                    // image: DecorationImage(
                    //   image: AssetImage('assets/image/profile.jpg'),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2),
                      bottomLeft: Radius.circular(2),
                      bottomRight: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ARIF PANDU',
                            style: TextStyle(
                              fontSize: 40,
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Flutter Developer',
                            style: TextStyle(
                              fontSize: 40,
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      ...listBioPoints,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
