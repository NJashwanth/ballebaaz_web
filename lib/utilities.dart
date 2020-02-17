import 'package:flutter/material.dart';

Widget getText(String text) {
  return Text(text);
}

Widget getSizedBox() {
  return SizedBox(
    width: 30,
  );
}

Widget getTextWithWhiteTextColorWithBold(String text) {
  return Text(
    text,
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  );
}

Widget getTextWithWhiteTextColor(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 10.0,
      color: Colors.white,
    ),
  );
}
