import 'package:flutter/material.dart';
import 'package:flutter_calendar/modal/create_event_modal.dart';
import 'package:flutter_calendar/service/person_event_database.dart';
class MyEvent extends StatefulWidget {
  @override
  _MyEventState createState() => _MyEventState();
}

class _MyEventState extends State<MyEvent> {
  List<CreateEventModal> data;
  ScrollController controller;
 @override
  void initState() {
   controller = new ScrollController();
   getData();
    super.initState();
  }
  Future getData()async{
   List list = await DBPersonEventProvider.db.getAll();
   setState(() {
     data = list;
   });
   return data;
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: Container(
        child: data!=null? ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index){
              return GestureDetector(
                onLongPress: (){
                  Scaffold.of(context).showSnackBar(
                      SnackBar(
                          content: Container(
                      height: 50,
                      child: Text("data $index"),
                          ),
                      action: SnackBarAction(
                          label: 'Delete',
                          onPressed: () {
                            DBPersonEventProvider.db.deleteEvent(data[index].idPrv);
                            getData();
                          },)
                      )
                  );
                },
                child: SingleChildScrollView(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 50,
                    child: Row(
                      children: <Widget>[
                        Text("idPrv: "+data[index].idPrv.toString()+" | "),
                        Text("id: "+data[index].id.toString()+" | "),
                        Text("typeEvent: "+data[index].typeEvent+" | "),
                        Text("title: "+data[index].title+" | "),
                        Text("typeDate: "+data[index].typeDate.toString()+" | "),
                        Text("allDay: "+data[index].allDay.toString()+" | "),
                        Text("startDate: "+data[index].startDate+" | "),
                        Text("endDate: "+data[index].endDate+" | "),
                        Text("location: "+data[index].location+" | "),
                        Text("repeat: "+data[index].repeat.toString()+" | "),
                        Text("alerts: "+data[index].alerts+" | "),
                        Text("note: "+data[index].note+" | "),
                      ],
                    ),
                  ),
                ),
              );
            }):Text("Null"),
      ));
  }

}
