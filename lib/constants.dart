// Constant files - It contains all the constant variables for the app.


import 'package:flutter/material.dart';

BoxDecoration kContainerBoxDecoration = BoxDecoration(
  color: Color(0xFFededed),
  borderRadius: BorderRadius.circular(20),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 2,
      blurRadius: 2,
      offset: Offset(1, 2), // changes position of shadow
    ),
  ],
);

TextStyle kCardContentTextStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
);

TextStyle kCardHeadingStyle = TextStyle(
  color: Colors.grey,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

TextStyle kBmiBtnStyle = TextStyle(
  color: Color(0xFFededed),
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

TextStyle kBmiCategoryTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
);
