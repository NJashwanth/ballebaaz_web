import 'package:flutter/material.dart';

class CompanyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        color: Colors.black,
        width: constraints.maxWidth,
      );
    });
  }
}
