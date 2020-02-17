import 'package:ballebaaz_web/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "What Our Customers Are Saying",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          getFlex(),
        ],
      ),
    );
  }

  Widget getFlex() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.center,
        direction: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getLeftDirectionIconButton(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getMatterWidget(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getRightDirectionIconButton(),
          ),
        ],
      ),
    );
  }

  Widget getLeftDirectionIconButton() {
    return IconButton(icon: Icon(Icons.keyboard_arrow_left), onPressed: () {});
  }

  Widget getMatterWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getText("Review will be displayed here"),
          ),
          getText("Name of the User"),
          getText("Role of the User")
        ],
      ),
    );
  }

  getRightDirectionIconButton() {
    return IconButton(icon: Icon(Icons.keyboard_arrow_right), onPressed: () {});
  }
}
