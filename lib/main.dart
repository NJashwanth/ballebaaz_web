import 'package:ballebaaz_web/Nav_bar.dart';
import 'package:ballebaaz_web/bottompage.dart';
import 'package:ballebaaz_web/utilities.dart';
import 'package:flutter/material.dart';

import 'DownloadsInfo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
          /* decoration: BoxDecoration(
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
            children: <Widget>[
              NavBar(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LandingPage(),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DownloadInfo(),
              ),
            ],
          ),
          /*child: Column(
            children: <Widget>[
              NavBar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: LandingPage(),
              ),
              DownloadInfo(),
            ],
          ),*/
        ),
      ),
    );
  }
}
