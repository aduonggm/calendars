import 'package:equatable/equatable.dart';

class TietKhiObject extends Equatable{
  final String description;
//  int imgResource;
  final String name;
  final String time;
  final String icon;
  final int startTrucKien;
  TietKhiObject({this.startTrucKien, this.description, this.name, this.time,this.icon});
  @override
  // TODO: implement props
  List<Object> get props => [this.startTrucKien,this.description, this.name, this.time];


}
