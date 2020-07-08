import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle textStyle(){
  return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500
      ,fontFamily: "Quicksand"
  );
}
TextStyle textStyleQuote(FontWeight fontWeight){
  return TextStyle(
      fontSize: 16,
      fontFamily: "Quicksand",
      fontWeight: fontWeight,
      color: Colors.orangeAccent);
}