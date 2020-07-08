import 'dart:core';


import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';
import 'package:flutter_calendar/modal/thap_nhi_kien_tru_model.dart';
import 'package:flutter_calendar/respons/respons.dart';
import 'package:flutter_calendar/utils/utils_calendar.dart';


class ThapNhiKienTru {

  static ThapNhiKienTru sharedInstance() {
    return new ThapNhiKienTru();
  }

  String getNameThapNhiKienTru(TYPE_TRUC type_truc) {
    switch (type_truc) {
      case TYPE_TRUC.TYPE_TRUC_KIEN:
        return "Trực Kiến";
      case TYPE_TRUC.TYPE_TRUC_TRU:
        return "Trực Trừ";
      case TYPE_TRUC.TYPE_TRUC_MAN:
        return "Trực Mãn";
      case TYPE_TRUC.TYPE_TRUC_BINH:
        return "Trực Bình";
      case TYPE_TRUC.TYPE_TRUC_DINH:
        return "Trực Định";
      case TYPE_TRUC.TYPE_TRUC_CHAP:
        return "Trực Chấp";
      case TYPE_TRUC.TYPE_TRUC_PHA:
        return "Trực Phá";
      case TYPE_TRUC.TYPE_TRUC_NGUY:
        return "Trực Nguy";
      case TYPE_TRUC.TYPE_TRUC_THANH:
        return "Trực Thành";
      case TYPE_TRUC.TYPE_TRUC_THU:
        return "Trực Thu";
      case TYPE_TRUC.TYPE_TRUC_BE:
        return "Trực Bế";
      case TYPE_TRUC.TYPE_TRUC_KHAI:
        return "Trực Khai";
      default:
        return " ";
    }
  }

  String getShortNameThapNhiKienTru(TYPE_TRUC type_truc) {
    switch (type_truc) {
      case TYPE_TRUC.TYPE_TRUC_KIEN:
        return "Kiến";
      case TYPE_TRUC.TYPE_TRUC_TRU:
        return "Trừ";
      case TYPE_TRUC.TYPE_TRUC_MAN:
        return "Mãn";
      case TYPE_TRUC.TYPE_TRUC_BINH:
        return "Bình";
      case TYPE_TRUC.TYPE_TRUC_DINH:
        return "Định";
      case TYPE_TRUC.TYPE_TRUC_CHAP:
        return "Chấp";
      case TYPE_TRUC.TYPE_TRUC_PHA:
        return "Phá";
      case TYPE_TRUC.TYPE_TRUC_NGUY:
        return "Nguy";
      case TYPE_TRUC.TYPE_TRUC_THANH:
        return "Thành";
      case TYPE_TRUC.TYPE_TRUC_THU:
        return "Thu";
      case TYPE_TRUC.TYPE_TRUC_BE:
        return "Bế";
      case TYPE_TRUC.TYPE_TRUC_KHAI:
        return "Khai";
      default:
        return " ";
    }
  }

  String getNameThapNhiKienTruUpcase(TYPE_TRUC type_truc) {
    switch (type_truc) {
      case TYPE_TRUC.TYPE_TRUC_KIEN:
        return "TRỰC KIẾN";
      case TYPE_TRUC.TYPE_TRUC_TRU:
        return "TRỰC TRỪ";
      case TYPE_TRUC.TYPE_TRUC_MAN:
        return "TRỰC MÃN";
      case TYPE_TRUC.TYPE_TRUC_BINH:
        return "TRỰC BÌNH";
      case TYPE_TRUC.TYPE_TRUC_DINH:
        return "TRỰC ĐỊNH";
      case TYPE_TRUC.TYPE_TRUC_CHAP:
        return "TRỰC CHẤP";
      case TYPE_TRUC.TYPE_TRUC_PHA:
        return "TRỰC PHÁ";
      case TYPE_TRUC.TYPE_TRUC_NGUY:
        return "TRỰC NGUY";
      case TYPE_TRUC.TYPE_TRUC_THANH:
        return "TRỰC THÀNH";
      case TYPE_TRUC.TYPE_TRUC_THU:
        return "TRỰC THU";
      case TYPE_TRUC.TYPE_TRUC_BE:
        return "TRỰC BẾ";
      case TYPE_TRUC.TYPE_TRUC_KHAI:
        return "TRỰC KHAI";
      default:
        return " ";
    }
  }

  ThapNhiKienTruModel trucKien() {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    thapNhiKienTruModel.tenTruc = "Trực kiến";
    thapNhiKienTruModel.typeTruc = TYPEGOODBAD_TRUC.TYPEGOODBAD_TRUC_NORMAL;
    thapNhiKienTruModel.nenLam = "Xuất hành đặng lợi, sanh con rất tốt";
    thapNhiKienTruModel.khongNenLam = "Động đất ban nền, đắp nền, lót giường, vẽ họa chụp ảnh, lên quan nhậm chức, nạp lễ cầu thân, vào làm hành chánh, dâng nạp đơn sớ, mở kho vựa, đóng thọ dưỡng sanh";
    return thapNhiKienTruModel;
  }

  ThapNhiKienTruModel tructru() {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    thapNhiKienTruModel.tenTruc = "Trực trừ";
    thapNhiKienTruModel.typeTruc = TYPEGOODBAD_TRUC.TYPEGOODBAD_TRUC_GOOD;
    thapNhiKienTruModel.nenLam = "Động đất, ban nền đắp nền, thờ cúng Táo Thần, cầu thầy chữa bệnh bằng cách mổ xẻ hay châm cứu, hốt thuốc, xả tang, khởi công làm lò nhuộm lò gốm, nữ nhân khởi đầu uống thuốc";
    thapNhiKienTruModel.khongNenLam = "Đẻ con nhằm Trực trừ khó nuôi, nên làm Âm đức cho nó, nam nhân kỵ khời đầu uống thuốc";
    return thapNhiKienTruModel;
  }

  ThapNhiKienTruModel trucman() {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    thapNhiKienTruModel.tenTruc = "Trực mãn";
    thapNhiKienTruModel.typeTruc = TYPEGOODBAD_TRUC.TYPEGOODBAD_TRUC_NORMAL;
    thapNhiKienTruModel.nenLam = "Xuất hành, đi thuyền, cho vay, thâu nợ, mua hàng, bán hàng, đem ngũ cốc vào kho, đặt táng kê gác, gác đòn đông, sửa chữa kho vựa, đặt yên chỗ máy dệt, nạp nô tỳ, vào học kỹ nghệ, làm chuồng gà ngỗng vịt";
    thapNhiKienTruModel.khongNenLam = "Lên quan lãnh chức, uống thuốc, vào làm hành chánh, dâng nạp đơn sớ";
    return thapNhiKienTruModel;
  }

  ThapNhiKienTruModel trucbinh() {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    thapNhiKienTruModel.tenTruc = "Trực bình";
    thapNhiKienTruModel.typeTruc = TYPEGOODBAD_TRUC.TYPEGOODBAD_TRUC_NORMAL;
    thapNhiKienTruModel.nenLam = "Đem ngũ cốc vào kho, đặt táng, gắn cửa, kê gác, gác đòn đông, đặt yên chỗ máy dệt, sửa hay làm thuyền chèo, đẩy thuyền mới xuống nước, các vụ bồi đắp thêm ( như bồi bùn, đắp đất, lót đá, xây bờ kè...)";
    thapNhiKienTruModel.khongNenLam = "Lót giường đóng giường, thừa kế tước phong hay thừa kế sự nghiệp, các vụ làm cho khuyết thủng (như đào mương, móc giếng, xả nước...)";
    return thapNhiKienTruModel;
  }

  ThapNhiKienTruModel trucdinh() {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    thapNhiKienTruModel.tenTruc = "Trực định";
    thapNhiKienTruModel.typeTruc = TYPEGOODBAD_TRUC.TYPEGOODBAD_TRUC_NORMAL;
    thapNhiKienTruModel.nenLam = "Động đất, ban nền đắp nền, làm hay sửa phòng Bếp, đặt yên chỗ máy dệt ( hay các loại máy ), nhập học, nạp lễ cầu thân, nạp đơn dâng sớ, sửa hay làm thuyền chèo, đẩy thuyền mới xuống nước, khởi công làm lò nhuộm lò gốm";
    thapNhiKienTruModel.khongNenLam = "Mua nuôi thêm súc vật";
    return thapNhiKienTruModel;
  }

  ThapNhiKienTruModel trucchap() {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    thapNhiKienTruModel.tenTruc = "Trực chấp";
    thapNhiKienTruModel.typeTruc = TYPEGOODBAD_TRUC.TYPEGOODBAD_TRUC_NORMAL;
    thapNhiKienTruModel.nenLam = "Lập khế ước, giao dịch, động đất ban nền, cầu thầy chữa bệnh, đi săn thú cá, tìm bắt trộm cướp";
    thapNhiKienTruModel.khongNenLam = "Xây đắp nền-tường";
    return thapNhiKienTruModel;
  }

  ThapNhiKienTruModel trucpha() {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    thapNhiKienTruModel.tenTruc = "Trực phá";
    thapNhiKienTruModel.typeTruc = TYPEGOODBAD_TRUC.TYPEGOODBAD_TRUC_BAD;
    thapNhiKienTruModel.nenLam = "Hốt thuốc, uống thuốc";
    thapNhiKienTruModel.khongNenLam = "Lót giường đóng giường, cho vay, động thổ, ban nền đắp nền, vẽ họa chụp ảnh, lên quan nhậm chức, thừ kế chức tước hay sự nghiệp, nhập học, học kỹ nghệ, nạp lễ cầu thân, vào làm hành chánh, nạp đơn dâng sớ, đóng thọ dưỡng sanh";
    return thapNhiKienTruModel;
  }

  ThapNhiKienTruModel trucnguy() {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    thapNhiKienTruModel.tenTruc = "Trực nguy";
    thapNhiKienTruModel.typeTruc = TYPEGOODBAD_TRUC.TYPEGOODBAD_TRUC_BAD;
    thapNhiKienTruModel.nenLam = "Lót giường đóng giường, đi săn thú cá, khởi công làm lò nhuộm lò gốm";
    thapNhiKienTruModel.khongNenLam = "Xuất hành đường thủy";
    return thapNhiKienTruModel;
  }

  ThapNhiKienTruModel tructhanh() {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    thapNhiKienTruModel.tenTruc = "Trực thành";
    thapNhiKienTruModel.typeTruc = TYPEGOODBAD_TRUC.TYPEGOODBAD_TRUC_GOOD;
    thapNhiKienTruModel.nenLam = "Lập khế ước, giao dịch, cho vay, thâu nợ, mua hàng, bán hàng, xuất hành, đi thuyền, đem ngũ cốc vào kho, khởi tạo, động Thổ, ban nền đắp nền, gắn cửa, đặt táng, kê gác, gác đòn đông, dựng xây kho vựa, làm hay sửa chữa phòng Bếp, thờ phụng Táo Thần, đặt yên chỗ máy dệt ( hay các loại máy ), gặt lúa, đào ao giếng, tháo nước, cầu thầy chữa bệnh, mua trâu ngựa, các việc trong vụ nuôi tằm, làm chuồng gà ngỗng vịt, nhập học, nạp lễ cầu thân, cưới gã, kết hôn, nạp nô tỳ, nạp đơn dâng sớ, học kỹ nghệ, khởi công làm lò nhuộm lò gốm, làm hoặc sửa thuyền chèo, đẩy thuyền mới xuống nước, vẽ tranh, bó cây để chiết nhánh";
    thapNhiKienTruModel.khongNenLam = "Kiện tụng, phân tranh";
    return thapNhiKienTruModel;
  }

  ThapNhiKienTruModel tructhu() {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    thapNhiKienTruModel.tenTruc = "Trực thu";
    thapNhiKienTruModel.typeTruc = TYPEGOODBAD_TRUC.TYPEGOODBAD_TRUC_GOOD;
    thapNhiKienTruModel.nenLam = "Đem ngũ cốc vào kho, cấy lúa gặt lúa, mua trâu, nuôi tằm, đi săn thú cá, bó cây để chiết nhánh";
    thapNhiKienTruModel.khongNenLam = "Lót giường đóng giường, động đất, ban nền đắp nền, nữ nhân khởi ngày uống thuốc, lên quan lãnh chức, thừa kế chức tước hay sự nghiệp, vào làm hành chánh, nạp đơn dâng sớ, mưu sự khuất lấp";
    return thapNhiKienTruModel;
  }

  ThapNhiKienTruModel truckhai() {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    thapNhiKienTruModel.tenTruc = "Trực khai";
    thapNhiKienTruModel.typeTruc = TYPEGOODBAD_TRUC.TYPEGOODBAD_TRUC_GOOD;
    thapNhiKienTruModel.nenLam = "Xuất hành, đi thuyền, khởi tạo, động thổ, ban nền đắp nền, dựng xây kho vựa, làm hay sửa phòng Bếp, thờ cúng Táo Thần, đóng giường lót giường, may áo, đặt yên chỗ máy dệt hay các loại máy, cấy lúa gặt lúa, đào ao giếng, tháo nước, các việc trong vụ nuôi tằm, mở thông hào rảnh, cấu thầy chữa bệnh, hốt thuốc, uống thuốc, mua trâu, làm rượu, nhập học, học kỹ nghệ, vẽ tranh, khởi công làm lò nhuộm lò gốm, làm chuồng gà ngỗng vịt, bó cây để chiết nhánh.";
    thapNhiKienTruModel.khongNenLam = "Chôn cất";
    return thapNhiKienTruModel;
  }

  ThapNhiKienTruModel trucbe() {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    thapNhiKienTruModel.tenTruc = "Trực bế";
    thapNhiKienTruModel.typeTruc = TYPEGOODBAD_TRUC.TYPEGOODBAD_TRUC_BAD;
    thapNhiKienTruModel.nenLam = "Xây đắp tường, đặt táng, gắn cửa, kê gác, gác đòn đông, làm cầu tiêu. khởi công lò nhuộm lò gốm, uống thuốc, trị bệnh (nhưng chớ trị bệnh mắt), bó cây để chiết nhánh";
    thapNhiKienTruModel.khongNenLam = "Lên quan lãnh chức, thừa kế chức tước hay sự nghiệp, nhập học, chữa bệnh mắt, các việc trong vụ nuôi tằm";
    return thapNhiKienTruModel;
  }

  ThapNhiKienTruModel getObjectThapNhiKienTru(TYPE_TRUC type_truc) {
    ThapNhiKienTruModel thapNhiKienTruModel = new ThapNhiKienTruModel();
    switch (type_truc) {
      case TYPE_TRUC.TYPE_TRUC_KIEN:
        return trucKien();
      case TYPE_TRUC.TYPE_TRUC_TRU:
        return tructru();
      case TYPE_TRUC.TYPE_TRUC_MAN:
        return trucman();
      case TYPE_TRUC.TYPE_TRUC_BINH:
        return trucbinh();
      case TYPE_TRUC.TYPE_TRUC_DINH:
        return trucdinh();
      case TYPE_TRUC.TYPE_TRUC_CHAP:
        return trucchap();
      case TYPE_TRUC.TYPE_TRUC_PHA:
        return trucpha();
      case TYPE_TRUC.TYPE_TRUC_NGUY:
        return trucnguy();
      case TYPE_TRUC.TYPE_TRUC_THANH:
        return tructhanh();
      case TYPE_TRUC.TYPE_TRUC_THU:
        return tructhu();
      case TYPE_TRUC.TYPE_TRUC_BE:
        return trucbe();
      case TYPE_TRUC.TYPE_TRUC_KHAI:
        return truckhai();
      default:
        return thapNhiKienTruModel;
    }
  }

  TYPE_TRUC getThapNhiKienTru(DateTime  iArr) {
  int indexKientrunhithapkhach =  getIndexKientrunhithapkhach(iArr).toInt() - 1;
  if (indexKientrunhithapkhach >= TYPE_TRUC.values.length || indexKientrunhithapkhach < 0) {
  return null;
  }
  return TYPE_TRUC.values[indexKientrunhithapkhach];
  }

  double getIndexKientrunhithapkhach(DateTime iArr) {

print('sssss ${getTrucTru(iArr)}');
//  LVNCore.setSolarDate(iArr[0], iArr[1], iArr[2], 0, 0, 0);
// return (double) LVNCore.getIndexKientrunhithapkhach();
  return 1;
  }


int  getTrucTru(DateTime dateTime) {
    // int index = listTietKhi[1].time.indexOf('/');
    List<int> list = [];
    for (int i = 0; i < listTrucTru.length; i++) {
      // get time in String
      // 0 day
      //1 month
      List<int> listDay = DataRespons.getDateFromString(listTrucTru[i].time);
      //if == tietkhi
      if (dateTime.day == listDay[0] && dateTime.month == listDay[1]) {
       // list.add(listTietKhi[i]);
        return listTrucTru[i].startTrucKien;
      }

      if (i == 0 || i == listTrucTru.length - 1) {
        //get index of char /
        //get day from string time
        // get month from string time
        List<int> listDaysss =
        DataRespons.getDateFromString(listTrucTru[listTrucTru.length - 1].time);
        if (dateTime.month == listDaysss[1] && dateTime.day > listDaysss[0] ||
            dateTime.month == listDay[1] && dateTime.day < listDay[0]) {

          return  listTrucTru[listTrucTru.length -1].startTrucKien;
        }
      } else {
        List<int> listDay1 = DataRespons.getDateFromString(listTrucTru[i - 1].time);
        // equal
        if (dateTime.month <= listDay[1] && dateTime.month >= listDay1[1]) {
          if (jdFromDate(listDay[0], listDay[1], dateTime.year) >
              jdFromDate(dateTime.day, dateTime.month, dateTime.year) &&
              jdFromDate(dateTime.day, dateTime.month, dateTime.year) >
                  jdFromDate(listDay1[0], listDay1[1], dateTime.year)) {

            return listTrucTru[i -1].startTrucKien;
          }
        }
      }
    }
    return null;
  }
}
