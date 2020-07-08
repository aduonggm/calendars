import 'package:flutter/material.dart';
import 'package:flutter_calendar/modal/alert_event.dart';

class DialogAlert extends StatefulWidget {
  Function(List<String>) passData;

   DialogAlert({Key key, this.passData}) : super(key: key);
  @override
  _DialogAlertState createState() => _DialogAlertState();
}

class _DialogAlertState extends State<DialogAlert> {
  List<String> alert=[];
  List<AlertEvent> listAlertEvent = AlertEvent.getListAlert();
  List<Widget> createCheckbox(){
    List<Widget> widgets = [];
    for(int i =0; i<listAlertEvent.length;i++){
      widgets.add(CheckboxListTile(
          value: listAlertEvent[i].value,
          onChanged: (val){
            setState(() {
              listAlertEvent[i].value =val;
            });
          },
        title: Text("${ listAlertEvent[i].minute}"),));
    }
    return widgets;
  }

  passAlert(){
    List<String> _alert = [];
    listAlertEvent.forEach((element) {
      if(element.value==true){
        _alert.add(element.minute);
        print("${element.minute}");
      }
    });
    return _alert;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Nhắc nhở"),
      content: Column(
        children: createCheckbox(),
      ),
      actions: <Widget>[
        new FlatButton(
          child: new Text("Close"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        new FlatButton(
          child: new Text("Accept"),
          onPressed: () {
            alert = passAlert();
            print("${alert.length}");
            widget.passData(alert);
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
