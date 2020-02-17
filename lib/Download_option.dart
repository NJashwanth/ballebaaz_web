import 'dart:html' as html;

import 'package:flutter/material.dart';

class DownloadOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Flex(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              direction: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Getting Started with the mobile app!",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("App description will be appeared here")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () {},
                      child: Row(
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
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onClicked() {
    html.window.open(
        "https://play.google.com/store/apps/details?id=com.ballebaaz.ballebaaz&hl=en_IN",
        "launch");
  }
}
