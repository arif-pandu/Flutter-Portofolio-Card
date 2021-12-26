import 'package:flutter/material.dart';
import 'package:potofolio_web/theme.dart';

class Social extends StatefulWidget {
  Social({
    Key? key,
    required this.heightBox,
    required this.widthBox,
  }) : super(key: key);

  double heightBox;
  double widthBox;

  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.heightBox,
      width: widget.widthBox,
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: blueLightColor,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
