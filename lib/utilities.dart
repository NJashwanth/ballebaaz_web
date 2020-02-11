import 'package:flutter/material.dart';

Widget getListTile(String title,String subTitle){
  return ListTile(
    title: Text(title,style: TextStyle(color: Colors.white),),
    subtitle: Text(subTitle,style: TextStyle(color: Colors.white)),
  );
}

Widget getSizedBox(){
  return SizedBox(
    width: 30,
  );
}