import 'package:flutter/cupertino.dart';

class DotGoodDay extends StatelessWidget{
  final Color color;
  const DotGoodDay({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      decoration:  BoxDecoration(
        color: this.color,
        shape: BoxShape.circle
      ),
    );
  }

}