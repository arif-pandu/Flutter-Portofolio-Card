// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:potofolio_web/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Projets extends StatefulWidget {
  Projets({
    Key? key,
    required this.heightBox,
    required this.widthBox,
  }) : super(key: key);

  double heightBox;
  double widthBox;

  @override
  _ProjetsState createState() => _ProjetsState();
}

class _ProjetsState extends State<Projets> {
  Color detailColorbg = whiteColor;

  List listDetailItem = [
    blueColor.withOpacity(0.4),
    greenColor.withOpacity(0.5),
    yellowColor.withOpacity(0.8),
    blackColor.withOpacity(0.2),
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
            // DESCRIPTION AREA
            DragTarget<Color>(
              onWillAccept: (data) {
                return true;
              },
              onAccept: (data) {
                detailColorbg = data;
              },
              builder: (context, accepted, rejected) {
                return Container(
                  height: ((widget.heightBox - 45) * 3 / 4) - 50,
                  width: widget.widthBox - 20,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: detailColorbg,
                  ),
                );
              },
            ),

            // ICON SWAP AREA
            Container(
              height: (widget.heightBox - 45) * 1 / 4,
              width: widget.widthBox - 20,
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  aspectRatio: 1 / 1,
                  viewportFraction: 0.4,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 500),
                  pauseAutoPlayOnTouch: false,
                ),
                itemCount: 4,
                itemBuilder: (context, index, indexToo) {
                  return Draggable<Color>(
                    maxSimultaneousDrags: 1,
                    data: listDetailItem[index],
                    child: Container(
                      height: ((widget.heightBox - 45) * 1 / 4),
                      width: ((widget.heightBox - 45) * 1 / 4),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(index.toString()),
                      ),
                    ),
                    childWhenDragging: Container(
                      height: ((widget.heightBox - 45) * 1 / 4),
                      width: ((widget.heightBox - 45) * 1 / 4) * 4 / 5,
                      decoration: BoxDecoration(
                        color: whiteColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    feedback: Container(
                      height: ((widget.heightBox - 45) * 1 / 4),
                      width: ((widget.heightBox - 45) * 1 / 4),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: blackColor.withOpacity(0.2),
                            offset: Offset(3, 3),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
