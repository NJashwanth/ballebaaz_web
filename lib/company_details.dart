import 'package:ballebaaz_web/utilities.dart';
import 'package:flutter/material.dart';

class CompanyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        color: Colors.black,
        width: constraints.maxWidth,
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          direction: Axis.horizontal,
          children: <Widget>[
            getCompanyAddress(),
            getCommunicationColumn(),
            getFeaturesColumn(),
            getOtherDetails()
          ],
        ),
      );
    });
  }

  Widget getCompanyAddress() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Ballebaaz",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Sector 82A Noida\nUttar Pradesh 201309",
                style: TextStyle(fontSize: 12.0, color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlineButton(
              borderSide: BorderSide(color: Colors.white),
              onPressed: () {},
              child: Text(
                "DOWNLOAD NOW",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getCommunicationColumn() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getTextWithWhiteTextColorWithBold(
                "Subscribe newsletter to get Uploaded"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getTextWithWhiteTextColor("Email Address"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getTextWithWhiteTextColor("Icons"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getTextWithWhiteTextColor("Copyright Ballebaaz 2019"),
          )
        ],
      ),
    );
  }

  Widget getFeaturesColumn() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getTextWithWhiteTextColor("Features"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getTextWithWhiteTextColor("How it Works"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getTextWithWhiteTextColor("About"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getTextWithWhiteTextColor("Testimonials"),
          )
        ],
      ),
    );
  }

  Widget getOtherDetails() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getTextWithWhiteTextColor("Community"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getTextWithWhiteTextColor("Features"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getTextWithWhiteTextColor("Contact"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: getTextWithWhiteTextColor("Blog Updates"),
          )
        ],
      ),
    );
  }
}
