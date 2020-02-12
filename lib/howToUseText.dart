import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "HOW TO USE",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(
            "hey hello how do you do whats  up lets mqake this\nhey hello how do you do whats  up lets mqake this",
            style: TextStyle(fontSize: 15.0, color: Colors.grey),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              getLiveScoresWidget(),
              getTournamentsWidget(),
              getInsightsWidget()
            ],
          ),
        )
      ],
    );
  }

  Widget getLiveScoresWidget() {
    return Column(
      children: <Widget>[
        getTitle(Icons.youtube_searched_for, "Live Scores"),
        getMatter(
            "uyfgsdugsefuiogkashdusgdfkdhiuabgB\nIUFDUSEYGFVB EGEHFWEIFHIUJIEGEHFWEIFHIUJI")
      ],
    );
  }

  Widget getTournamentsWidget() {
    return Column(
      children: <Widget>[
        getTitle(Icons.youtube_searched_for, "Live Scores"),
        getMatter(
            "uyfgsdugsefuiogkashdusgdfkdhiuabgB\nIUFDUSEYGFVB EGEHFWEIFHIUJIEGEHFWEIFHIUJI")
      ],
    );
  }

  Widget getInsightsWidget() {
    return Column(
      children: <Widget>[
        getTitle(Icons.youtube_searched_for, "Live Scores"),
        getMatter(
            "uyfgsdugsefuiogkashdusgdfkdhiuabgB\nIUFDUSEYGFVB EGEHFWEIFHIUJIEGEHFWEIFHIUJI")
      ],
    );
  }

  Widget getTitle(IconData iconData, String s) {
    return Row(
      children: <Widget>[Icon(iconData), Text(s)],
    );
  }

  Widget getMatter(String s) {
    return Text(s);
  }
}
