import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/constants.dart';

headerAndSubheadingWidget(String heading, String subheading) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 70, 10, 50),
    child: Column(
      children: [
        _customHeadingText(heading, 70),
        SizedBox(height: 12),
        _customHeadingText(subheading, 20),
      ],
    ),
  );
}

customButton(Color color, String text, double horizontalPadding, Function onPressed) {
  return FlatButton(
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: horizontalPadding),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0)),
    onPressed: onPressed != null ? onPressed : (){},
    color: color,
    textColor: Colors.white,
    child: Text(text, style: TextStyle(fontSize: 14)),
  );
}

_customHeadingText(String text, double fontSize) {
  return Material(
    color: Colors.transparent,
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: kPlayFairDisplayFont,
          color: Colors.white,
        ),
      ),
    ),
  );
}

customDefaultText(String text){
  return Material(
    color: Colors.transparent,
    child: Text(
      text,
      style: TextStyle(fontSize: 15, color: Colors.grey),
    ),
  );
}