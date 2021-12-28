// ignore_for_file: prefer_const_constructors

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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      child: Container(
        decoration: BoxDecoration(
          color: blueLightColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text('data'),
        ),
      ),
    );
  }
}
