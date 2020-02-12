import 'package:ballebaaz_web/utilities.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        if (boxConstraints.maxWidth > 1200)
          return DeskTopNavBar();
        else if (boxConstraints.maxWidth > 800 &&
            boxConstraints.maxWidth < 1200)
          return MobileNavBar();
        else
          return MobileNavBar();
      },
    );
  }
}

class DeskTopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Ballebaaz",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  getText("ACHIEVED"),
                  SizedBox(
                    width: 30,
                  ),
                  getText(
                    "HOW TO USE",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  getText(
                    "FEATURES",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  getText(
                    "TESTIMONIAL",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  getText(
                    "CONTACT",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  getButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getButton() {
    return MaterialButton(
      onPressed: () {},
      child: getText(
        "DOWNLOAD",
      ),
      color: Colors.pink,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Ballebaaz",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  getText("ACHIEVED"),
                  SizedBox(
                    width: 30,
                  ),
                  getText(
                    "HOW TO USE",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  getText(
                    "FEATURES",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  getText(
                    "TESTIMONIAL",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  getText(
                    "CONTACT",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: getText(
                      "DOWNLOAD",
                    ),
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
