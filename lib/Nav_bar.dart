

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,boxConstraints){
        if(boxConstraints.maxWidth>1200)
          return DeskTopNavBar();
        else if(boxConstraints.maxWidth>800&&boxConstraints.maxWidth<1200)
          return DeskTopNavBar();
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
      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Ballebaaz",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30.0
            ),),
            Row(
              children: <Widget>[
                Text("ACHIEVED",style: TextStyle(
                    color: Colors.white,
                ),),
                SizedBox(
                  width: 30,
                ),
                Text("HOW TO USE",style: TextStyle(
                    color: Colors.white,
                ),),
                SizedBox(
                  width: 30,
                ),
                Text("FEATURES",style: TextStyle(
                    color: Colors.white,
                ),),
                SizedBox(
                  width: 30,
                ),
                Text("TESTIMONIAL",style: TextStyle(
                    color: Colors.white,
                ),),
                SizedBox(
                  width: 30,
                ),
                Text("CONTACT",style: TextStyle(
                    color: Colors.white,
                ),),
                SizedBox(
                  width: 30,
                ),
               MaterialButton(onPressed: (){},
                 child: Text("DOWNLOAD",style: TextStyle(color: Colors.white),),
                 color: Colors.pink,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(20.0))
                 ),
               )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("Ballebaaz",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30.0
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("ACHIEVED",style: TextStyle(
                color: Colors.white,
              ),),
              SizedBox(
                width: 30,
              ),
              Text("HOW TO USE",style: TextStyle(
                color: Colors.white,
              ),),
              SizedBox(
                width: 30,
              ),
              Text("FEATURES",style: TextStyle(
                color: Colors.white,
              ),),
              SizedBox(
                width: 30,
              ),
              Text("TESTIMONIAL",style: TextStyle(
                color: Colors.white,
              ),),
              SizedBox(
                width: 30,
              ),
              Text("CONTACT",style: TextStyle(
                color: Colors.white,
              ),),
              SizedBox(
                width: 30,
              ),

            ],
          ),

        ],
      ),
    );
  }
}


