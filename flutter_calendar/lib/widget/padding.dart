import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pad extends StatelessWidget{
  final double height, top, bottom;


  const Pad({Key key, this.height, this.top, this.bottom}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Padding(padding: EdgeInsets.only(top: top??0 , bottom: bottom??0),
    child:  Container(width:  MediaQuery.of(context).size.width,
      color: Colors.grey.withOpacity(0.1),
      height: height,),);
  }

}