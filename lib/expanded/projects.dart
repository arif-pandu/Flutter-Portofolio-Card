// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:potofolio_web/theme.dart';

class Projects extends StatefulWidget {
  Projects({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  double height;
  double width;

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  //
  List<dynamic> listProjects = [
    {
      'name': 'DaVinci Cryptex',
      'icon': Icons.scatter_plot_outlined,
    },
    {
      'name': 'DaVinci Cryptex',
      'icon': Icons.scatter_plot_outlined,
    }
  ];

  //
  @override
  Widget build(BuildContext context) {
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
            // DRAG TARGET EXPLAINED DETAIL
            Expanded(
              flex: 10,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  // color: whiteColor,
                  color: blackColor,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      // color: whiteColor,
                      // borderRadius: BorderRadius.circular(15),
                      ),
                  child: SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: CarouselSlider.builder(
                      itemCount: listProjects.length,
                      options: CarouselOptions(
                        viewportFraction: 0.45,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 4),
                        autoPlayAnimationDuration: Duration(seconds: 3),
                      ),
                      itemBuilder: (context, index, indexToo) {
                        return Draggable(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: yellowColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                index.toString(),
                              ),
                            ),
                          ),
                          feedback: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: yellowColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          childWhenDragging: Container(
                            width: 75,
                            height: 100,
                            decoration: BoxDecoration(
                              color: whiteColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            // DRAGGABLE PROJECT THUMBNAIL
          ],
        ),
      ),
    );
  }
}
