

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/bloc/lunar_day/blocs.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'items.dart';

class TietKhiWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return BlocBuilder<LunarDayBloc, LunarDayState>(builder: (context, state) {
      if (state is LunarDayUpdate) {
        if (state.listTietKhi.length == 2) {
          return LinearPercentIndicator(

            alignment: MainAxisAlignment.center,
            animation: true,
            lineHeight:2,
            animationDuration: 200,
            percent: state.percent,
            //center: Text((state.percent *100).toString() +'%'),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.greenAccent,
            leading:new Items().tietKhi( state.listTietKhi[0]),
            trailing: new Items().tietKhi(state.listTietKhi[1],),
          );
        } else
          return new Items().tietKhi( state.listTietKhi[0],);
      }
      return Container(
      );
    });
  }

}