import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';

class Timers extends StatefulWidget {
  final DateTime dateTime;
  final List<int> listGoodHour;
  Timers({Key key, this.dateTime, this.listGoodHour}) : super(key: key);
  @override
  TimersState createState() {
    return TimersState();
  }
}
class TimersState extends State<Timers> {
  Timer _timer;
  bool getIsGood() {
    int indexx = (DateTime.now().hour + 1) ~/ 2;
    if (indexx >= 12) {
      indexx = 0;
    }
    int s = 0;
    widget.listGoodHour.forEach((element) {

      if (element == indexx) {
        s = 1;
      }
    });
    return s == 1;
  }
  @override
  void initState() {
    super.initState();
    const oneSecond = const Duration(seconds: 1);
    _timer = new Timer.periodic(oneSecond, (Timer t) => setState(() {}));
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Text(getIsGood() ? 'Giờ Hoàng Đạo' : 'Giờ',
              style: TextStyle(fontSize: 16)),
        ),
        Text(
          '${DateTime.now().hour.toString().padLeft(2,'0')}:${DateTime.now().minute.toString().padLeft(2,'0')}',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
        ),
        Text('Giờ ${getNameOfHour(DateTime.now())}',
            style: TextStyle(fontSize: 16))
      ],
    );
  }
}
