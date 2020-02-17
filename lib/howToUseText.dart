import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "HOW TO USE :",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              "",
              style: TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
