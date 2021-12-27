// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:potofolio_web/theme.dart';

class SocialGagal extends StatefulWidget {
  SocialGagal({
    Key? key,
    required this.heightBox,
    required this.widthBox,
  }) : super(key: key);

  double heightBox;
  double widthBox;

  @override
  _SocialGagalState createState() => _SocialGagalState();
}

class _SocialGagalState extends State<SocialGagal> {
  //
  List<dynamic> listSocialGagalButton = [
    {
      'icon': Icons.timelapse,
      'text': 'Up To 35 Hour per Week',
    },
    {
      'icon': Icons.app_registration_rounded,
      'text': 'Build Apps',
    },
    {
      'icon': Icons.gamepad_outlined,
      'text': 'Create Games',
    },
    {
      'icon': Icons.web,
      'text': 'Make Website',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.heightBox - 10,
      width: widget.widthBox,
      // CARD BLUE
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 35, 20, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: blueLightColor.withOpacity(0.8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 90,
                    width: 90,
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arif Pandu',
                        style: TextStyle(
                            fontSize: 25,
                            color: blackColor,
                            fontWeight: FontWeight.w500),
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
                            color: blackColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AbsorbPointer(
              absorbing: true,
              child: Container(
                margin: EdgeInsets.only(bottom: 15),
                height: widget.widthBox - 20,
                width: widget.widthBox - 20,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: blackColor.withOpacity(0.4),
                            offset: Offset(3, 3),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            listSocialGagalButton[index]['icon'],
                            size: 40,
                          ),
                          SizedBox(height: 15),
                          SizedBox(
                            width: 100,
                            child: Text(
                              listSocialGagalButton[index]['text'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
