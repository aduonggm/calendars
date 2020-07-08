
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/bloc/lunar_day/blocs.dart';
import 'package:flutter_calendar/modal/thap_nhi_bat_tu_model.dart';
import 'package:flutter_calendar/utils/utils_calendar.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';


class NhiThapWidget extends StatelessWidget{
  final NhiThapBatTuModel nhiThapBatTuModel;

  const NhiThapWidget({Key key, this.nhiThapBatTuModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<LunarDayBloc,LunarDayState>(builder: (context,state){

      if(state is LunarDayUpdate){
        NhiThapBatTuModel nhiThapBatTuModel = state.nhiThapBatTuModel;
        int indexName = nhiThapBatTuModel.tenSao.indexOf(':');
        String str = nhiThapBatTuModel.tenSao.substring(indexName+1).trim() == "Xấu" ? "#ec260c" : "#1975d1";

       return Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
          HtmlWidget(' $openTag $str > ${nhiThapBatTuModel.tenSao.substring(0,indexName)} $closeTag <font color=#333333> ${nhiThapBatTuModel.tenSao.substring(indexName)}$closeTag'),
           Text(nhiThapBatTuModel.binhSao),
           HtmlWidget('$openTag #1975d1 >Nên Làm: $closeTag ${nhiThapBatTuModel.nenLam}'),
           HtmlWidget('$openTag #ec260c >Kiêng cữ: $closeTag${nhiThapBatTuModel.kiengcu}'),
           HtmlWidget('$openTag #1975d1 >Ngoại lệ: $closeTag${nhiThapBatTuModel.ngoaile}'),
           Text(nhiThapBatTuModel.thoVinh),
          Padding(padding: EdgeInsets.all(20),child: Text('Sao Tốt Xấu'),),


           
           ListView.builder(
               physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               itemCount: state.listSao.length,
               itemBuilder: (context , index){
             return Text(state.listSao[index].tenSao + '  ' + state.listSao[index].mota);
           }),
           Padding(padding: EdgeInsets.all(20),child: Text('Ngày Tốt Xấu'),),

           ListView.builder(
               physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               itemCount: state.listNgayTotXau.length,
               itemBuilder: (context , index){
             return Text(state.listNgayTotXau[index].tenNgay + '  ' + state.listNgayTotXau[index].mota);
           }),

           ListView.builder(
               physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               itemCount: state.lisEvent.length,
               itemBuilder: (context , index){
             return HtmlWidget(state.lisEvent[index].title + '  ' + state.lisEvent[index].content);
           }),




         ],
       );
      }

      return Center(child: CircularProgressIndicator(),);
    });
  }


}