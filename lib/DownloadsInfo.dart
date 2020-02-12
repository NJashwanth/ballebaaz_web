import 'package:ballebaaz_web/utilities.dart';
import 'package:flutter/material.dart';

class DownloadInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        getColumn("987", "ACTIVE USERS"),
        getSizedBox(),
        getColumn("987", "ACTIVE USERS"),
        getSizedBox(),
        getColumn("987", "ACTIVE USERS"),
        getSizedBox(),
        getColumn("987", "ACTIVE USERS"),

      ],
    );
  }

  Widget getColumn(String title, String subtitle) {
    return Column(
      children: <Widget>[
        getText(title),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getText(subtitle),
        )
      ],
    );
  }
}
