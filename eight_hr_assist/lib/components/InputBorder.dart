import 'package:flutter/material.dart';

class InputBorderDecoration {
  InputBorderDecoration({this.hintText, this.colour});

  String hintText;
  Color colour;

  InputDecoration getInputBorder() {
    return InputDecoration(
      hintText: hintText,
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colour, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colour, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
    );
  }
}
