import 'package:ballebaaz_web/Url_launch_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;




class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "BECOME A WORLD-CLASS\nCRICKETER WITH BALLEBAAZ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Start Scoring your matches on Ballebaaz today",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.get_app),
                        onPressed: () => onClicked()),
                    Text(
                      "Download on the PlayStore",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      Image.asset(
        "assets/banner@2x.png",
        width: width,
        height: width,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }

  onClicked() {
    html.window.open("https://play.google.com/store/apps/details?id=com.ballebaaz.ballebaaz&hl=en_IN","launch");

  }
}
