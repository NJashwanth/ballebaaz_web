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
        "      Text messaging, or texting, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters,     \nbetween two or more users of mobile devices, desktops/laptops, or other type of compatible computer.  desktops/laptops, or other type of compatible computer.",
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
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        getImage(maxWidth, maxHeight),
        //getInstructionsColumn()
      ],
    );
  }

  Widget getImage(double maxWidth, double maxHeight) {
    return Stack(
      children: <Widget>[
        Image(
          image: AssetImage('assets/ptrn_c@2x.png'),
        ),
        Image(image: AssetImage('assets/service_mobiles@3x.png')),
      ],
    );
  }

  getInstructionsColumn() {}
}
