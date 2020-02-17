import 'package:ballebaaz_web/Download_option.dart';
import 'package:ballebaaz_web/Nav_bar.dart';
import 'package:ballebaaz_web/app_ui_visuals.dart';
import 'package:ballebaaz_web/bottompage.dart';
import 'package:ballebaaz_web/company_details.dart';
import 'package:ballebaaz_web/howToUseText.dart';
import 'package:ballebaaz_web/how_this_app_work.dart';
import 'package:ballebaaz_web/other_features.dart';
import 'package:ballebaaz_web/reviews.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DownloadsInfo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ballebaaz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          /*decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                Color.fromRGBO(195, 20, 50, 1.0),
                Color.fromRGBO(36, 11, 54, 1.0)
              ])),*/
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NavBar(),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: LandingPage(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: DownloadInfo(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 40.0),
                child: HowToUse(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 40.0),
                child: OtherFeatures(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 40.0),
                child: AppWorking(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 40.0),
                child: AppUIVisuals(),
              ),
              Stack(
                overflow: Overflow.clip,
                fit: StackFit.loose,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 40.0),
                        child: Reviews(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30.0, left: 40.0, right: 40.0),
                        child: CompanyDetails(),
                      ),
                    ],
                  ),
                  Positioned(
                    child: Padding(
                        padding: const EdgeInsets.only(
                            top: 210.0, left: 40.0, right: 40.0),
                        child: DownloadOption()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
