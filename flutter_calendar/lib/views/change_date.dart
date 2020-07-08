import 'package:flutter/material.dart';
class ChangeDate extends StatefulWidget {
  final DateTime dateTime;
  const ChangeDate({Key key, this.dateTime}) : super(key: key);
  @override
  _ChangeDateState createState() => _ChangeDateState();
}

class _ChangeDateState extends State<ChangeDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () => Navigator.pop(context)),
        title: Text("Change Date"),
      ),
      body: Container(
        child: Center(child: Text("${widget.dateTime.day}"),),
      ),
    );
  }
}
