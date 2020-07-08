
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/bloc/lunar_day/blocs.dart';
import 'package:flutter_calendar/modal/event_in_year.dart';
import 'package:flutter_calendar/widget/padding.dart';
import 'package:flutter_calendar/widget/timer_wigget.dart';

import 'items.dart';


class TuoiXungWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LunarDayBloc, LunarDayState>(
      condition: (previous, current) => previous.props != current.props,
        builder: (context, state) {
      if (state is LunarDayUpdate) {

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Pad(
              height: 10,
              top: 10,
              bottom: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 338,
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xffF0F0F0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            height: 219,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  'Ngày ${state.lunarDay.day} Tháng ${state.lunarDay.month} (${state.isLeap}),\nNăm ${state.lunarDay.NameOfYear}',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                                state.lunarDay.ngayHoangDao !=0?
                                Text(
                                  state.lunarDay.ngayHoangDao == -1 ?'Ngày Hắc Đạo' : 'Ngày Hoàng Đạo',
                                  style: TextStyle(fontSize: 18),
                                ): SizedBox(),
                                Text(
                                  'Ngày: ${state.lunarDay.NameOfDay}',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Tháng: ${state.lunarDay.CanThang} ${state.lunarDay.ChiThang}',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xffF0F0F0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            height: 107,
                            child: Timers(dateTime: state.dateTime,listGoodHour:  state.lunarDay.gioHoangDao,)

//                            Column(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              children: <Widget>[
//                                Expanded(
//                                  child: Text('Giờ Hoàng Đạo',
//                                      style: TextStyle(fontSize: 16)),
//                                ),
//                                Text(
//                                  '${DateTime.now().hour}:${DateTime.now().minute}',
//                                  style: TextStyle(
//                                    fontSize: 36,
//                                  ),
//                                ),
//                                Text('Giờ ${getNameOfHour(state.dateTime)}',
//                                    style: TextStyle(fontSize: 16))
//                              ],
//                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                    flex: 220,
                  ),
                  Expanded(
                      flex: 125,
                      child: Container(
                        height: 338,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xffF0F0F0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Giờ Hoàng Đạo',
                              style: TextStyle(fontSize: 14),
                            ),
                            ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => new Items()
                                  .goodHour(
                                      state.lunarDay.gioHoangDao[index], true),
                              itemCount: state.lunarDay.gioHoangDao.length,
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 1,
              color: Color(0xffDDDDDD),
            ),
            state.lisEvent.length > 0
                ? Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'SỰ KIỆN',
                          style: TextStyle(fontSize: 16),
                        ),
                       Container(
                         margin: EdgeInsets.only(top: 15),
                         child:  ListView.builder(
                           itemCount: state.lisEvent.length,
                           shrinkWrap: true,
                           physics: NeverScrollableScrollPhysics(),
                           itemBuilder: (context, index) {
                             final EventsInDay ev = state.lisEvent[index];
                             return new Items().itemEventInDay(ev);
                           }),)
                      ],
                    ),
                  )
                : Container(),
           Container(
             height: 4,
             color: Color(0xffF0F0F0),
           ),
            Container(padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('TUỔI XUNG THEO NGÀY',style:  TextStyle(fontSize: 16),),
               Container(margin: EdgeInsets.only(top: 5),
               child:  GridView.builder(
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   childAspectRatio: MediaQuery.of(context).size.width / (100),
                 ),
                 itemBuilder: (_, index) => new Items()
                     .goodHour(state.listTuoiXungTheoNgay[index], false),
                 itemCount: state.listTuoiXungTheoNgay.length,
                 scrollDirection: Axis.vertical,
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
               ),)

              ],
            ),),
            Container(height: 4,
            color: Color(0xffF0F0F0),),
            Container(padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('TUỔI XUNG THEO THÁNG',style:  TextStyle(fontSize: 16),),
               Container(margin: EdgeInsets.only(top: 5),
               child:   GridView.builder(
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   childAspectRatio: MediaQuery.of(context).size.width / (100),
                 ),
                 itemBuilder: (_, index) => new Items()
                     .goodHour(state.listTuoiXungTheoThang[index], false),
                 itemCount: state.listTuoiXungTheoThang.length,
                 scrollDirection: Axis.vertical,
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
               ),)

              ],
            ),),
            Container(height: 4,
              color: Color(0xffF0F0F0),),
            Container(padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('XUẤT HÀNH',style:  TextStyle(fontSize: 16),),
                  Container(
                    alignment: Alignment.center,
                    height: 85,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 15),
                    child: ListView.builder(itemBuilder: (context,index)=>new Items().itemXuatHanh(state.listXuatHanh[index]),
                      itemCount: state.listXuatHanh.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                    ),)
                ],
              ),),
          ],
        );
      }
      return Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
