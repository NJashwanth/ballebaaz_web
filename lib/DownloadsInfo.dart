import 'package:ballebaaz_web/utilities.dart';
import 'package:flutter/material.dart';

class DownloadInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
      child: Container(
        child: Row(
          children: <Widget>[
            getListTile("987", "ACTIVE USERS"),
            getSizedBox(),
            getListTile("9999+", "TOTAL DOWNLOADS"),
            getSizedBox(),
            getListTile("40+", "TEAMS EVERYDAY"),
            getSizedBox(),
            getListTile("987", "5 STAR RATING"),
          ],
        ),
      ),
    );
  }
}
