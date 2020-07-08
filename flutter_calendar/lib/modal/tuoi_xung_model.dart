import 'package:equatable/equatable.dart';
class TuoiXungModel extends Equatable{
  String aNameCanChi;
 String aNameNguHanh;
   int iDiachi;
   int iThienCan;

  TuoiXungModel({this.aNameCanChi, this.aNameNguHanh, this.iDiachi, this.iThienCan});

  @override
  // TODO: implement props
  List<Object> get props => [this.aNameCanChi, this.aNameNguHanh, this.iDiachi, this.iThienCan];

  @override
  String toString() {


    return "$aNameCanChi   $aNameNguHanh  $iDiachi   $iThienCan";
  }
}