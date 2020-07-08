import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/bloc/create_event_bloc/create_event_bloc.dart';
import 'package:flutter_calendar/bloc/create_event_bloc/create_event_event.dart';
import 'package:flutter_calendar/bloc/create_event_bloc/create_event_state.dart';
import 'package:flutter_calendar/modal/create_event_modal.dart';
import 'package:flutter_calendar/modal/repeat_event.dart';
class DialogRepeat extends StatefulWidget {
  BuildContext context;
  Function(String) passData;
   DialogRepeat({Key key, this.passData,this.context}) : super(key: key);

  @override
  _DialogRepeatState createState() => _DialogRepeatState();
}

class _DialogRepeatState extends State<DialogRepeat> {
  RepeatEvent selectedRepeat;
  CreateEventModal data;
  setSelectedRepeat(RepeatEvent repeatEvent){
    setState(() {
      selectedRepeat = repeatEvent;
    });
  }
  List<RepeatEvent> listRepeats = RepeatEvent.getListRepeat();
  List<Widget> createRadioListRepeat(){
    List<Widget> widgets = [];

    for (int i=0; i<listRepeats.length;i++){
      widgets.add(RadioListTile(
        value: listRepeats[i],
        groupValue: selectedRepeat,
        title: Text(listRepeats[i].type),
        onChanged: (currRepeat){
          print("${listRepeats[i].type}");
          setSelectedRepeat(currRepeat);
        },
        selected: selectedRepeat==listRepeats[i],
      ));
    }
    return widgets;
  }

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return  AlertDialog(
      title: Text("Lặp lại"),
      content:  Container(
        height: 300,
        child: Column(
            children:createRadioListRepeat()
        ),
      ),
      actions: <Widget>[
        new FlatButton(
          child: new Text("Close"),
          onPressed: () {
            Navigator.of(widget.context).pop();
          },
        ),
        new FlatButton(
          child: new Text("Accept"),
          onPressed: () {
            /* widget.passData(selectedRepeat.type);
            Navigator.of(context).pop();*/
           // BlocProvider.of<CreateEventBloc>(widget.context).add(AcceptDialog(type: 2,data: selectedRepeat.type));
          },
        ),
      ],
    );
      }

}
