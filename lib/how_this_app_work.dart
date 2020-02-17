import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppWorking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            getTitle(),
            getSubTitle(),
            getImageWidget(constraints.maxWidth, constraints.maxHeight),
          ],
        ),
      );
    });
  }

  Widget getSubTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "",
        style: TextStyle(fontSize: 12.0),
      ),
    );
  }

  Widget getTitle() {
    return Text(
      "How This App Works?",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
    );
  }

  Widget getImageWidget(double maxWidth, double maxHeight) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: getImage(maxWidth, maxHeight),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: getInstructionsColumn(),
            )
          ],
        ),
      ),
    );
  }

  Widget getImage(double maxWidth, double maxHeight) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image(
          width: 643.3,
          height: 643.3,
          image: AssetImage(
            'assets/ptrn_c@2x.png',
          ),
        ),
        Image(
            width: 381,
            height: 700,
            image: AssetImage('assets/service_mobiles@3x.png')),
      ],
    );
  }

  Widget getInstructionsColumn() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getCard("1", "Make a Profile",
              "Here Comes the steps for profile creation"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getCard("2", "Download the App",
              "Here Comes the steps for profile creation"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getCard("3", "Install the App",
              "Here Comes the steps for profile creation"),
        ),
      ],
    );
  }

  Widget getCard(String stepNumber, String stepTitle, String stepDetails) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            FloatingActionButton(
              mini: true,
              backgroundColor: Colors.red,
              onPressed: null,
              child: Text(stepNumber),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    stepTitle,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
                  child: Text(stepDetails),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
