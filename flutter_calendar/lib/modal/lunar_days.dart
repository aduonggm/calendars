import 'package:equatable/equatable.dart';

class LunarDay extends Equatable{

  final List<int> gioHoangDao ;
  final int ngayHoangDao;
  final int day,month, year;
  final String NameOfDay, NameOfMonth, NameOfYear,thu , CanNgay , ChiNgay, CanThang, ChiThang;
  final bool isLunarLeap;

  LunarDay({this.CanNgay, this.ChiNgay, this.CanThang, this.ChiThang, this.isLunarLeap, this.NameOfDay, this.NameOfMonth, this.NameOfYear, this.gioHoangDao, this.ngayHoangDao, this.day, this.month, this.year, this.thu});


  @override
  // TODO: implement props
  List<Object> get props =>[this.CanNgay, this.ChiNgay, this.CanThang, this.ChiThang, this.isLunarLeap, this.NameOfDay, this.NameOfMonth, this.NameOfYear, this.gioHoangDao, this.ngayHoangDao, this.day, this.month, this.year, this.thu];

}



