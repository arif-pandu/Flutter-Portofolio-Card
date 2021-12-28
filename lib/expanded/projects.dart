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
  Widget theChild = Container();
  //
  List<dynamic> listProjects = [
    {
      'name': 'DaVinci Cryptex',
      'icon': Icons.scatter_plot_outlined,
      'image': 'assets/image/davinci-cryptex.png',
      'descrption':
          'this is a simple game built with Flutter. The player must math all of the letter based on the question',
    },
    {
      'name': 'IQ Games',
      'icon': Icons.code,
      'image': 'assets/image/iq-games.jpg',
      'descrption':
          'this is a simple game built with Flutter. The player must math all of the letter based on the question',
    },
    {
      'name': 'Scan To Attend',
      'icon': Icons.code,
      'image': 'assets/image/scan-to-attend.jpg',
      'descrption':
          'this is a simple game built with Flutter. The player must math all of the letter based on the question',
    },
    {
      'name': 'Travel App',
      'icon': Icons.code,
      'image': 'assets/image/travel-app.png',
      'descrption':
          'this is a simple game built with Flutter. The player must math all of the letter based on the question',
    },
    {
      'name': 'Spotify Clone',
      'icon': Icons.code,
      'image': 'assets/image/spotify-clone.png',
      'descrption':
          'this is a simple game built with Flutter. The player must math all of the letter based on the question',
    },
  ];

  //
  @override
  Widget build(BuildContext context) {
    List listWidgetExpand = List.generate(
      listProjects.length,
      (index) => Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(10, 20, 10, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: blackColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  listProjects[index]['name'],
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Center(
                  child: Container(
                    height: widget.width * 0.6,
                    width: widget.width * 0.6,
                    child: Center(
                      child: Text(
                        listProjects[index]['descrption'],
                        style: TextStyle(
                          fontSize: 18,
                          color: blackColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  children: List.generate(
                    // listProjects[index]['image'].length,
                    1,
                    (index) => Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: blueColor,
                        image: DecorationImage(
                          image: AssetImage(
                            listProjects[index]['image'],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // child: Container(
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: blueColor,
              //     image: DecorationImage(
              //       image: AssetImage(
              //         listProjects[index]['image'],
              //       ),
              //     ),
              //   ),
              // ),
            ),
          ],
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
            // DRAG TARGET EXPLAINED DETAIL
            Expanded(
              flex: 10,
              child: DragTarget<Widget>(
                onWillAccept: (data) => true,
                onAccept: (data) {
                  theChild = data;
                },
                builder: (context, accepted, rejected) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: theChild,
                  );
                },
              ),
            ),
            // DAGGABLE THUMBNAIL
            Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(),
                  child: SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: CarouselSlider.builder(
                      itemCount: listProjects.length,
                      options: CarouselOptions(
                        viewportFraction: 0.45,
                        // autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(seconds: 1),
                      ),
                      itemBuilder: (context, index, indexToo) {
                        return Draggable(
                          data: listWidgetExpand[index],
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: yellowColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(listProjects[index]['icon']),
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
          ],
        ),
      ),
    );
  }
}
