import 'package:ballebaaz_web/utilities.dart';
import 'package:flutter/material.dart';

class OtherFeatures extends StatelessWidget {
  List<Widget> rowChildren() {
    return <Widget>[
      getLiveScoresWidget(),
      getSizedBox(),
      getTournamentsWidget(),
      getSizedBox(),
      getInsightsWidget()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: rowChildren(),
          );
        } else {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: rowChildren(),
            ),
          );
        }
      },
    );
  }

  Padding getRowWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          getLiveScoresWidget(),
          getTournamentsWidget(),
          getInsightsWidget()
        ],
      ),
    );
  }

  Widget getLiveScoresWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getTitle(Icons.youtube_searched_for, "Live Scores"),
        ),
        getMatter("Lives Scores will be appeared Here")
      ],
    );
  }

  Widget getTournamentsWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getTitle(Icons.add_comment, "Tournaments"),
        ),
        getMatter("You can Check out Tournament Details Here")
      ],
    );
  }

  Widget getInsightsWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getTitle(Icons.attach_file, "Insights"),
        ),
        getMatter("Check Insights Here")
      ],
    );
  }

  Widget getTitle(IconData iconData, String s) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          iconData,
          color: Colors.red,
        ),
        Text(s)
      ],
    );
  }

  Widget getMatter(String s) {
    return Text(
      s,
      style: TextStyle(fontSize: 12.0),
    );
  }
}
