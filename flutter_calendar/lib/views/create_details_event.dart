

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/bloc/create_event_bloc/create_event_bloc.dart';
import 'package:flutter_calendar/bloc/create_event_bloc/create_event_event.dart';
import 'package:flutter_calendar/bloc/create_event_bloc/create_event_state.dart';
import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';
import 'package:flutter_calendar/cupertino_date_picker/src/date_picker.dart';
import 'package:flutter_calendar/cupertino_date_picker/src/date_picker_theme.dart';
import 'package:flutter_calendar/cupertino_date_picker/src/i18n/date_picker_i18n.dart';
import 'package:flutter_calendar/modal/alert_event.dart';
import 'package:flutter_calendar/modal/create_event_modal.dart';
import 'package:flutter_calendar/modal/event_day.dart';
import 'package:flutter_calendar/modal/repeat_event.dart';
import 'package:flutter_calendar/widget/allEvent.dart';
import 'package:flutter_calendar/widget/dialog_arlert.dart';
import 'package:flutter_calendar/widget/dialog_repeat.dart';

class CreateDetailsEvent extends StatefulWidget {
  final String typeEvent;
  final int id;
  final String hintText;
  const CreateDetailsEvent({Key key, this.typeEvent, this.id, this.hintText}) : super(key: key);
  @override
  _CreateDetailsEventState createState() => _CreateDetailsEventState();
}

class _CreateDetailsEventState extends State<CreateDetailsEvent> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController textEditingControllerLocation =
      new TextEditingController();
  TextEditingController textEditingControllerNote =
  new TextEditingController();
  TextEditingController textEditingControllerTitle =
  new TextEditingController();
  int idRepeat = 0;
  String idAlert="";
  String _repeat = "Không lặp lại";
  String _location="Địa điểm";
  String _note = "Ghi chú";
  String alert = "Nhắc lúc xảy ra sự kiện";
  bool isLeap = false;
  bool isChange = false;

  String loop_info = "";


  EventDay _eventDay;
  ScrollController _scrollController;
  bool solarOrLunar = true;
  bool isSwitched = false;
  CreateEventBloc bloc ;

  DateTime dateTime = DateTime.now();
  DateTime startTime = DateTime.now();
  DateTime endTime = DateTime.now();
  DateTime startHour = DateTime.now();
  DateTime endHour = DateTime.now();
  String startDate= "";
  String endDate = "";
  Solar solarStart ;
  Solar solarEnd ;
  Lunar lunarStart;
  Lunar lunarEnd;

  RepeatEvent selectedRepeat;
  CreateEventModal data;
  setSelectedRepeat(RepeatEvent repeatEvent){
    setState(() {
      selectedRepeat = repeatEvent;
      _repeat = selectedRepeat.type;
      idRepeat = selectedRepeat.id;
      loop_info = selectedRepeat.loop_info;
      print("${selectedRepeat.type}");
    });
  }
  List<RepeatEvent> listRepeats = RepeatEvent.getListRepeat();
  List<AlertEvent> listAlertEvent = AlertEvent.getListAlert();
  List<Widget> createRadioListRepeat(){
    List<Widget> widgets = [];
    for (int i=0; i<listRepeats.length;i++){
      widgets.add(RadioListTile(
        value: listRepeats[i],
        groupValue: selectedRepeat,
        title: Text(listRepeats[i].type),
        onChanged: (currRepeat){
          setSelectedRepeat(currRepeat);
        },
        selected: selectedRepeat==listRepeats[i],
      ));
    }
    return widgets;
  }
  List<Widget> createCheckbox(){
    List<Widget> widgets = [];
    for(int i =0; i<listAlertEvent.length;i++){
      widgets.add(CheckboxListTile(
        value: listAlertEvent[i].value,
        onChanged: (val){
          setState(() {
            listAlertEvent[i].value =val;
            callAlert();
          });
        },
        title: Text("${ listAlertEvent[i].minute}"),));
    }
    return widgets;
  }
  @override
  void initState() {
    solarStart = Solar(solarDay: dateTime.day,solarMonth: dateTime.month,solarYear: dateTime.year);
    solarEnd = Solar(solarDay: dateTime.day,solarMonth: dateTime.month,solarYear: dateTime.year);
    lunarStart = LunarSolarConverter.solarToLunar(solarStart);
    lunarEnd = LunarSolarConverter.solarToLunar(solarEnd);
    startDate = "${startTime.day.toString().padLeft(2,'0')}/${startTime.month.toString().padLeft(2,'0')}/${startTime.year}";
    endDate = "${startTime.day.toString().padLeft(2,'0')}/${startTime.month.toString().padLeft(2,'0')}/${startTime.year}";
    bloc = CreateEventBloc();
    _scrollController = ScrollController();
    callAlert();
    super.initState();
  }

  callAlert(){
    List<String> alerts=[];
    List<String> idAlerts=[];
    listAlertEvent.forEach((element) {
      if(element.value){
        alerts.add(element.minute);
        idAlerts.add(element.id.toString());
      }
    });
    if(alerts.length>1){
      alert = alerts[0];
      idAlert = idAlerts[0];
      for(int i =1; i<alerts.length;i++){
        alert += "\n" + alerts[i];
        idAlert += ',' + idAlerts[i];
      }
    }else{
      alert = alerts[0];
    }
  }

setDateSolar(Solar solar, Lunar lunar){
 return "${solar.solarDay.toString().padLeft(2,'0')}/${solar.solarMonth.toString().padLeft(2,'0')}/${solar.solarYear}";
}

setDateLunar(Lunar lunar, Solar solar){
      return "${lunar.lunarDay.toString().padLeft(2,'0')}/${lunar.lunarMonth.toString().padLeft(2,'0')}/${lunar.lunarYear}";

}
  void showStartDatePicker(){
    DatePicker.showDatePicker(
      context,
      initialItem: 1,
      initialDateTime: startTime,
      dateFormat: "dd/MMMM/yyyy",
      locale: DateTimePickerLocale.vi,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
      ),
      pickerMode:solarOrLunar?DateTimePickerMode.only_solar:DateTimePickerMode.only_lunar , // show TimePicker
      onCancel: () {
        debugPrint('onCancel');
      },
      onChange: (_dateTime, List<int> index) {
        print(_dateTime);
        startTime = _dateTime;
      },
      onConfirm: (_dateTime, List<int> index) {
        setState(() {
          startTime = _dateTime;
          if(solarOrLunar){
            solarStart = Solar(solarYear: startTime.year,solarMonth: startTime.month,solarDay: startTime.day);
            lunarStart = LunarSolarConverter.solarToLunar(solarStart);
          }else{
            lunarStart = Lunar(lunarYear: startTime.year,lunarMonth: startTime.month,lunarDay: startTime.day, isLeap:  isLeap);
            solarStart = LunarSolarConverter.lunarToSolar(lunarStart);
          }
          print(startTime);
        });
      },
    );
  }
  void showEndDatePicker( ){
    DatePicker.showDatePicker(
      context,
      initialItem: 1,
      initialDateTime: endTime,
      dateFormat: "dd/MMMM/yyyy",
      locale: DateTimePickerLocale.vi,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
      ),
      pickerMode:solarOrLunar?DateTimePickerMode.only_solar:DateTimePickerMode.only_lunar , // show TimePicker
      onCancel: () {
        debugPrint('onCancel');
      },
      onChange: (_dateTime, List<int> index) {
        print(_dateTime);
        endTime = _dateTime;
      },
      onConfirm: (_dateTime, List<int> index) {
        setState(() {
          endTime = _dateTime;
          if(solarOrLunar){
            solarEnd = Solar(solarYear: endTime.year,solarMonth: endTime.month,solarDay: endTime.day);
            lunarEnd = LunarSolarConverter.solarToLunar(solarEnd);
          }else{
            lunarEnd = Lunar(lunarYear: endTime.year,lunarMonth: endTime.month,lunarDay: endTime.day, isLeap:  isLeap);
            solarEnd = LunarSolarConverter.lunarToSolar(lunarEnd);
          }
          print(endTime);
        });
      },
    );
  }
  void showStartHourPicker(){
    DatePicker.showDatePicker(
      context,
      initialItem: 1,
      initialDateTime: startHour,
      dateFormat: "HH/mm",
      locale: DateTimePickerLocale.vi,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
      ),
      pickerMode:DateTimePickerMode.time , // show TimePicker
      onCancel: () {
        debugPrint('onCancel');
      },
      onChange: (_dateTime, List<int> index) {
        startHour = _dateTime;
      },
      onConfirm: (_dateTime, List<int> index) {
        setState(() {
          startHour = _dateTime;
        });
      },
    );
  }
  void showEndHourPicker(){
    DatePicker.showDatePicker(
      context,
      initialItem: 1,
      initialDateTime: endHour,
      dateFormat: "HH/mm",
      locale: DateTimePickerLocale.vi,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
      ),
      pickerMode:DateTimePickerMode.time , // show TimePicker
      onCancel: () {
        debugPrint('onCancel');
      },
      onChange: (_dateTime, List<int> index) {
        endHour = _dateTime;
      },
      onConfirm: (_dateTime, List<int> index) {
        setState(() {
          endHour = _dateTime;
        });
      },
    );
  }
  dateToString(DateTime date, DateTime hour){
    String valDate = "${date.year}-${date.month.toString().padLeft(2,'0')}-${date.day.toString().padLeft(2,'0')}";
    String valHour ="";
    if(!isSwitched){
      valHour = "${hour.hour.toString().padLeft(2,'0')}:${hour.minute.toString().padLeft(2,'0')}:00";
    }else{
      valHour = "00:00:00";
    }
    return "$valDate $valHour";
  }

  @override
  Widget build(BuildContext context) {

    return BlocProvider<CreateEventBloc>(
      create: (context)=> CreateEventBloc(),
      child: Scaffold(
        body: BlocListener<CreateEventBloc,CreateEventState>(
          listener: (context, state){
            if(state is CreateEventFailed){
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('Failure'),
                ),
              );
            }
            if(state is CreateEventSuccess){
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('Success'),
                ),
              );
            }
          },
          child:  BlocBuilder<CreateEventBloc, CreateEventState>(
              bloc: bloc,
              // ignore: missing_return
              builder: (context, state) {
                if (state is CreateEventStateInitial) {
                  return   Scaffold(
                    body: Container(
                      child: CustomScrollView(
                        scrollDirection: Axis.vertical,
                        controller: _scrollController,
                        slivers: <Widget>[
                          new SliverAppBar(
                            backgroundColor: Colors.black,
                            expandedHeight: 200,
                            pinned: true,
                            actions: <Widget>[
                              IconButton(icon: Icon(Icons.check, color: Colors.white,), onPressed: (){

                                _eventDay = new EventDay(
                                  location: _location,
                                  allDay: isSwitched?1:0,
                                  title: textEditingControllerTitle.text,
                                  alert_info: idAlert,
                                  dateType:  solarOrLunar?0:1,
                                  start_date: dateToString(startTime, startHour),
                                  end_date:  dateToString(endTime, endHour),
                                  loop: idRepeat,
                                  typeId: widget.id,
                                  changeType: 1
                                );
                                if(_formKey.currentState.validate()){
                                  if(!isSwitched){
                                    DateTime dateStart = DateTime(startTime.year,startTime.month,startTime.day,startHour.hour,startHour.minute);
                                    DateTime dateEnd = DateTime(endTime.year,endTime.month,endTime.day,endTime.hour,endTime.minute);
                                    if(dateStart.isAfter(dateEnd)){
                                      Scaffold.of(context).showSnackBar(SnackBar(
                                        content: Text("Ngày kết thúc không thể nhỏ hơn ngày bắt đầu"),
                                      ));
                                    }else{
                                      BlocProvider.of<CreateEventBloc>(context).add(CreateNewEvent(_eventDay));
                                    }
                                  }else{
                                    DateTime dateStart = DateTime(startTime.year,startTime.month,startTime.day);
                                    DateTime dateEnd = DateTime(endTime.year,endTime.month,endTime.day);
                                    if(dateStart.isAfter(dateEnd)){
                                      Scaffold.of(context).showSnackBar(SnackBar(
                                        content: Text("Ngày kết thúc không thể nhỏ hơn ngày bắt đầu"),
                                      ));
                                    }else{
                                      BlocProvider.of<CreateEventBloc>(context).add(CreateNewEvent(_eventDay));
                                    }
                                  }

                                }

                              })
                            ],
                            flexibleSpace: new FlexibleSpaceBar(
                              background: Image.network("https://static.wixstatic.com/media/5b44bf_317f722d308c4426a6ba01e3c61bf072~mv2_d_4206_2366_s_2.jpg/v1/fill/w_1000,h_563,al_c,q_90,usm_0.66_1.00_0.01/5b44bf_317f722d308c4426a6ba01e3c61bf072~mv2_d_4206_2366_s_2.jpg"),
                            ),
                          ),
                          new SliverToBoxAdapter(
                            child: Container(
                              color: Colors.blueGrey[200],
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration( //                    <-- BoxDecoration
                                        border: Border(bottom: BorderSide(width: 0.5)),
                                        color: Colors.white
                                    ),
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(widget.typeEvent??""),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration( //                    <-- BoxDecoration
                                        border: Border(bottom: BorderSide(width: 0.5)),
                                        color: Colors.white
                                    ),
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    child: Form(
                                      key: _formKey,
                                      child: TextFormField(
                                        validator: (value){
                                          if(value ==null || value.isEmpty ){
                                            return "Không được để trống";
                                          }
                                          return null;
                                        },
                                        controller: textEditingControllerTitle,
                                        maxLines: 1,
                                        decoration: InputDecoration.collapsed(
                                            hintText: widget.hintText
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 80,
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                    decoration: BoxDecoration( //                    <-- BoxDecoration
                                        color: Colors.white
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              solarOrLunar = true;
                                              startTime = solarStart.dateTime;
                                              endTime = solarEnd.dateTime;
                                            });
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(horizontal: 20),
                                            height: 40,
                                            width: 170,
                                            decoration: BoxDecoration(
                                                color: solarOrLunar?Colors.blue:Colors.transparent,
                                                borderRadius: BorderRadius.circular(40),
                                                border: Border.all(color: Colors.black, width: 0.5)
                                            ),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(Icons.wb_sunny),
                                                SizedBox(width: 20,),
                                                Text("Lịch Dương")
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              solarOrLunar = false;
                                            });
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(horizontal: 20),
                                            height: 40,
                                            width: 170,
                                            decoration: BoxDecoration(
                                                color: !solarOrLunar?Colors.blue:Colors.transparent,
                                                borderRadius: BorderRadius.circular(40),
                                                border: Border.all(color: Colors.black, width: 0.5)
                                            ),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(Icons.brightness_2),
                                                SizedBox(width: 20,),
                                                Text("Lịch Âm")
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 20),
                                    height: 60,
                                    decoration: BoxDecoration( //                    <-- BoxDecoration
                                        border: Border(bottom: BorderSide(width: 0.5)),
                                        color: Colors.white
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Diễn ra cả ngày"),
                                        Switch(
                                          value: isSwitched,
                                          onChanged: (value) {
                                            setState(() {
                                              isSwitched = value;
                                              print(isSwitched);
                                            });
                                          },
                                          activeTrackColor: Colors.blue,
                                          activeColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration( //                    <-- BoxDecoration
                                        border: Border(bottom: BorderSide(width: 0.5)),
                                        color: Colors.white
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        InkWell(
                                          onTap: (){
                                            showStartDatePicker();
                                          },
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            height: 70,
                                            decoration: BoxDecoration(
                                                border: Border(right: BorderSide(width: 0.5))
                                            ) ,
                                            width: MediaQuery.of(context).size.width/2,
                                            child: Text(solarOrLunar?setDateSolar(solarStart,lunarStart):setDateLunar(lunarStart,solarStart)),
                                          ),
                                        ),
                                        InkWell(
                                          onTap:(){
                                            showEndDatePicker();
                                          } ,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            height: 70,
                                            width: MediaQuery.of(context).size.width/2,
                                            child: Text(solarOrLunar?setDateSolar(solarEnd,lunarEnd):setDateLunar(lunarEnd,solarEnd)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  !isSwitched? Container(
                                    height: 70,
                                    decoration: BoxDecoration( //                    <-- BoxDecoration
                                        border: Border(bottom: BorderSide(width: 0.5)),
                                        color: Colors.white
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        InkWell(
                                          onTap: (){
                                            showStartHourPicker();
                                          },
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            height: 70,
                                            decoration: BoxDecoration(
                                                border: Border(right: BorderSide(width: 0.5))
                                            ) ,
                                            width: MediaQuery.of(context).size.width/2,
                                            child: Text("${startHour.hour.toString().padLeft(2,'0')}h : ${startHour.minute.toString().padLeft(2,'0')}"),
                                          ),
                                        ),
                                        InkWell(
                                          onTap:(){
                                            showEndHourPicker();
                                          } ,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            height: 70,
                                            width: MediaQuery.of(context).size.width/2,
                                            child: Text("${(endHour.hour).toString().padLeft(2,'0')}h : ${endHour.minute.toString().padLeft(2,'0')}"),
                                          ),
                                        )
                                      ],
                                    ),
                                  ):Container(),
                                  Container(
                                    decoration: BoxDecoration( //                    <-- BoxDecoration
                                        border: Border(bottom: BorderSide(width: 0.5)),
                                        color: Colors.white
                                    ),
                                    child: ExpansionTile(
                                      title: Text(_location),
                                      backgroundColor: Colors.white,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 4,
                                                child: TextField(
                                                  controller: textEditingControllerLocation,
                                                  autofocus: true,
                                                  decoration: InputDecoration(labelText: "Địa điểm"),
                                                ),
                                              ),
                                              Expanded(
                                                  flex:1,
                                                  child: RaisedButton(onPressed: (){
                                                    setState(() {
                                                      _location=textEditingControllerLocation.text;
                                                    });
                                                  }))
                                            ],
                                          ),
                                        ),
                                      ],),
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    height: 60,
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration( //                    <-- BoxDecoration
                                        border: Border(bottom: BorderSide(width: 0.5)),
                                        color: Colors.white
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Mời bạn bè"),
                                        Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    decoration: BoxDecoration( //                    <-- BoxDecoration
                                        border: Border(bottom: BorderSide(width: 0.5)),
                                        color: Colors.white
                                    ),
                                    child: ExpansionTile(title: Text(_repeat),
                                      backgroundColor: Colors.white,
                                      children: createRadioListRepeat(),),
                                  ),
                                  Container(
                                    decoration: BoxDecoration( //                    <-- BoxDecoration
                                        border: Border(bottom: BorderSide(width: 0.5)),
                                        color: Colors.white
                                    ),
                                    child: ExpansionTile(title: Text(alert),
                                      children: createCheckbox(),),
                                  ),
                                  Container(
                                    decoration: BoxDecoration( //                    <-- BoxDecoration
                                        border: Border(bottom: BorderSide(width: 0.5)),
                                        color: Colors.white
                                    ),
                                    child: ExpansionTile(
                                      title: Text(_note),
                                      backgroundColor: Colors.white,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 4,
                                                child: TextField(
                                                  controller: textEditingControllerNote,
                                                  autofocus: true,
                                                  decoration: InputDecoration(labelText: "Ghi chú"),
                                                ),
                                              ),
                                              Expanded(
                                                  flex:1,
                                                  child: RaisedButton(onPressed: (){
                                                    setState(() {
                                                      _note=textEditingControllerNote.text;
                                                    });
                                                  }))
                                            ],
                                          ),
                                        ),
                                      ],),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
                if(state is CreateEventSuccess){
                  return Container();
                }
                if(state is CreateEventFailed){
                  return Container();
                }
              }),),
      )
    );

  }

}
