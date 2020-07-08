import 'item_xuat_hanh.dart';

class HuongXuatHanh {
  String getNameHuongBac() {
    return "Bắc";
  }

  String getNameHuongDong() {
    return "Đông";
  }

  String getNameHuongNam() {
    return "Nam";
  }

  String getNameHuongTay() {
    return "Tây";
  }

  static HuongXuatHanh sharedInstance() {
    return new HuongXuatHanh();
  }

  List<XuatHanhModel> thongtinXuatHanhVoiThienCanNgay(int num, int num2) {
    List<XuatHanhModel> arrayList = [];
    XuatHanhModel itemXuatHanh = new XuatHanhModel();
    itemXuatHanh.typeHuong = TYPE_HUONGXUATHANH.HUONGXUATHANH_HYTHAN;
    if (num == 0 || num == 5) {
      String sb = '${getNameHuongDong()} ${getNameHuongBac()}';
      itemXuatHanh.tenHuong = sb;
    } else if (num == 1 || num == 6) {
      String sb2 = '${getNameHuongTay()} ${getNameHuongBac()}';
   
      itemXuatHanh.tenHuong = sb2;
    } else if (num == 2 || num == 7) {
      String sb3 = '${getNameHuongTay()} ${getNameHuongNam()}';

      itemXuatHanh.tenHuong = sb3;
    } else if (num == 3 || num == 8) {
      itemXuatHanh.tenHuong = getNameHuongNam();
    } else if (num == 4 || num == 9) {
      String sb4 = '${getNameHuongDong()} ${getNameHuongNam()}';

      itemXuatHanh.tenHuong = sb4;
    }
    arrayList.add(itemXuatHanh);
    XuatHanhModel itemXuatHanh2 = new XuatHanhModel();
    itemXuatHanh2.typeHuong = TYPE_HUONGXUATHANH.HUONGXUATHANH_TAITHAN;
    if (num == 0 || num == 1) {
      String sb5 = '${getNameHuongDong()} ${getNameHuongNam()}';

      itemXuatHanh2.tenHuong = sb5;
    } else if (num == 2 || num == 3) {
      itemXuatHanh2.tenHuong = getNameHuongDong();
    } else if (num == 4) {
      itemXuatHanh2.tenHuong = getNameHuongBac();
    } else if (num == 5) {
      itemXuatHanh2.tenHuong = getNameHuongNam();
    } else if (num == 6 || num == 7) {
      String sb6 = '${getNameHuongTay()} ${getNameHuongNam()}';

      itemXuatHanh2.tenHuong = sb6;
    } else if (num == 8) {
      itemXuatHanh2.tenHuong = getNameHuongTay();
    } else if (num == 9) {
      String sb7 = '${getNameHuongTay()} ${getNameHuongBac()}';

      itemXuatHanh2.tenHuong = sb7;
    }
    arrayList.add(itemXuatHanh2);
    XuatHanhModel itemXuatHanh3 = null;
    if ((num == 5 && num2 == 9) || ((num == 6 && num2 == 10) || ((num == 7 && num2 == 11) || ((num == 8 && num2 == 0) || ((num == 9 && num2 == 1) || (num == 0 && num2 == 2)))))) {
      itemXuatHanh3 = new XuatHanhModel();
      itemXuatHanh3.typeHuong = TYPE_HUONGXUATHANH.HUONGXUATHANH_HACTHAN;
      String sb8 = '${getNameHuongDong()} ${getNameHuongBac()}';

      itemXuatHanh3.tenHuong = sb8;
    } else if ((num == 1 && num2 == 3) || ((num == 2 && num2 == 4) || ((num == 3 && num2 == 5) || ((num == 4 && num2 == 6) || (num == 5 && num2 == 7))))) {
      itemXuatHanh3 = new XuatHanhModel();
      itemXuatHanh3.typeHuong = TYPE_HUONGXUATHANH.HUONGXUATHANH_HACTHAN;
      itemXuatHanh3.tenHuong = getNameHuongDong();
    } else if ((num == 6 && num2 == 8) || ((num == 7 && num2 == 9) || ((num == 8 && num2 == 10) || ((num == 9 && num2 == 11) || ((num == 0 && num2 == 0) || (num == 1 && num2 == 1)))))) {
      itemXuatHanh3 = new XuatHanhModel();
      itemXuatHanh3.typeHuong = TYPE_HUONGXUATHANH.HUONGXUATHANH_HACTHAN;
      String sb9 = '${getNameHuongDong()} ${getNameHuongNam()}';

      itemXuatHanh3.tenHuong = sb9;
    } else if ((num == 2 && num2 == 2) || ((num == 3 && num2 == 3) || ((num == 4 && num2 == 4) || ((num == 5 && num2 == 5) || ((num == 6 && num2 == 6) || (num == 1 && num2 == 1)))))) {
      itemXuatHanh3 = new XuatHanhModel();
      itemXuatHanh3.typeHuong = TYPE_HUONGXUATHANH.HUONGXUATHANH_HACTHAN;
      itemXuatHanh3.tenHuong = getNameHuongNam();
    } else if ((num == 7 && num2 == 7) || ((num == 8 && num2 == 8) || ((num == 9 && num2 == 9) || ((num == 0 && num2 == 10) || ((num == 2 && num2 == 0) || (num == 1 && num2 == 11)))))) {
      itemXuatHanh3 = new XuatHanhModel();
      itemXuatHanh3.typeHuong = TYPE_HUONGXUATHANH.HUONGXUATHANH_HACTHAN;
      String sb10 = '${getNameHuongDong()} ${getNameHuongNam()}';

      itemXuatHanh3.tenHuong = sb10;
    } else if ((num == 3 && num2 == 1) || ((num == 4 && num2 == 2) || ((num == 5 && num2 == 3) || ((num == 6 && num2 == 4) || (num == 7 && num2 == 5))))) {
      itemXuatHanh3 = new XuatHanhModel();
      itemXuatHanh3.typeHuong = TYPE_HUONGXUATHANH.HUONGXUATHANH_HACTHAN;
      itemXuatHanh3.tenHuong = getNameHuongTay();
    } else if ((num == 8 && num2 == 6) || ((num == 9 && num2 == 7) || ((num == 0 && num2 == 8) || ((num == 2 && num2 == 10) || ((num == 1 && num2 == 9) || (num == 3 && num2 == 11)))))) {
      itemXuatHanh3 = new XuatHanhModel();
      itemXuatHanh3.typeHuong = TYPE_HUONGXUATHANH.HUONGXUATHANH_HACTHAN;
      String sb11 = '${getNameHuongTay()} ${getNameHuongBac()}';
      itemXuatHanh3.tenHuong = sb11;
    } else if ((num == 4 && num2 == 0) || ((num == 5 && num2 == 1) || ((num == 6 && num2 == 2) || ((num == 7 && num2 == 3) || (num == 8 && num2 == 4))))) {
      itemXuatHanh3 = new XuatHanhModel();
      itemXuatHanh3.typeHuong = TYPE_HUONGXUATHANH.HUONGXUATHANH_HACTHAN;
      itemXuatHanh3.tenHuong = getNameHuongBac();
    }
    if (itemXuatHanh3 != null) {
      arrayList.add(itemXuatHanh3);
    }
    return arrayList;
  }
}
