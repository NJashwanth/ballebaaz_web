import 'package:flutter/material.dart';

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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(20.0))),
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.get_app),
                              onPressed: null),
                          Text(
                            "Download on the AppStore",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(20.0))),
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            IconButton(icon: Icon(Icons.get_app),
                                onPressed: null),
                            Text(
                              "Download on the PlayStore",
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
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
            children: pageChildren(constraints.biggest.width/2),
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
}