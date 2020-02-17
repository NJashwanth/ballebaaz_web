import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppUIVisuals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        color: Colors.red,
        width: constraints.maxWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: getTitleWidget(),
            ),
            getSubTitleWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: getImageSlideWidget(),
            )
          ],
        ),
      );
    });
  }

  Widget getTitleWidget() {
    return Text(
      "Single & Beautiful User Interface",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
    );
  }

  Widget getSubTitleWidget() {
    return Text("");
  }

  Widget getImageSlideWidget() {
    return ImageSliderWithDottedIndicator();
  }
}

class ImageSliderWithDottedIndicator extends StatefulWidget {
  @override
  _ImageSliderWithDottedIndicatorState createState() =>
      _ImageSliderWithDottedIndicatorState();
}

class _ImageSliderWithDottedIndicatorState
    extends State<ImageSliderWithDottedIndicator> {
  int _current = 2;
  final imgList = new List(5);

  @override
  Widget build(BuildContext context) {
    imgList[0] = "assets/preferences.png";
    imgList[1] = "assets/quickScoring.png";
    imgList[2] = "assets/scoring.png";
    imgList[3] = "assets/startingPage.png";
    imgList[4] = "assets/teamPlayers.png";

    return Stack(children: [
      CarouselSlider(
        items: imgList
            .asMap()
            .map((i, value) {
              return MapEntry(i, Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Center(
                        child: Column(children: <Widget>[
                          Image.asset(
                            value,
                            width: 839,
                            height: 600,
                          ),
                        ]),
                      ));
                },
              ));
            })
            .values
            .toList(),
        autoPlay: false,
        initialPage: 2,
        aspectRatio: 2.0,
        onPageChanged: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
      Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList
                .asMap()
                .map((index, value) {
                  return MapEntry(
                      index,
                      Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Color.fromRGBO(0, 0, 0, 0.9)
                                : Color.fromRGBO(0, 0, 0, 0.4)),
                      ));
                })
                .values
                .toList(),
          ))
    ]);
  }
}
