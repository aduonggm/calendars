

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';
import 'package:flutter_calendar/modal/event_in_year.dart';
import 'package:flutter_calendar/modal/item_xuat_hanh.dart';
import 'package:flutter_calendar/modal/lunar_days.dart';
import 'package:flutter_calendar/modal/thap_nhi_bat_tu_model.dart';
import 'package:flutter_calendar/modal/tiet_khi.dart';
import 'package:flutter_calendar/modal/tuoi_xung_model.dart';
import 'package:flutter_calendar/respons/respons.dart';
import 'package:flutter_calendar/utils/doc.dart';
import 'package:flutter_calendar/utils/gio_ly_thuan_phong.dart';
import 'package:flutter_calendar/utils/ngay_tot_xau.dart';
import 'package:flutter_calendar/utils/nhi_thap_bat_tu.dart';
import 'package:flutter_calendar/utils/sao_hun_cat_tinh.dart';

import 'lunar_day_event.dart';
import 'lunar_day_state.dart';

class LunarDayBloc extends Bloc<LunarDayEvent, LunarDayState> {
  LunarDay lunarDay = new LunarDay();
  DateTime dateTime = DateTime.now();
  List<TuoiXungModel> listNgay = [];
  List<TuoiXungModel> listThang = [];
  List<XuatHanhModel> listXuatHanh =[];
  List<TietKhiObject> listTietKhi=[];
  List<GioLyThuanPhong> listGioLyThuanPhong=[];
  List<EventsInDay> listEv=[];
  List danhsachNgayTotXau=[];
  double percent = 0.0;
  NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
  List saoTotXau=[];

  @override
  Stream<LunarDayState> mapEventToState(LunarDayEvent event) async* {
    if (event is LunarDayChange) {



      dateTime = event.dateTime;
       lunarDay = DataRespons.getLunarDay(
        event.dateTime,
      );
      listNgay =
          DataRespons.getTuoiXung(lunarDay.CanNgay, lunarDay.ChiNgay);
       listThang =
          DataRespons.getTuoiXung(lunarDay.CanThang, lunarDay.ChiThang);
      listXuatHanh =
          DataRespons.setUpInfoXuatHanh(lunarDay.CanNgay, lunarDay.ChiNgay);

     listTietKhi = DataRespons.getTietKhi(event.dateTime);

      if (listTietKhi.length == 2) {
        final List<int> Date1 = DataRespons.getDateFromString(listTietKhi[0].time);
        final List<int> Date2 = DataRespons.getDateFromString(listTietKhi[1].time);
        // do giữa tiết Đông chí và tiểu hàn nằm ở 2 năm khác nhau nên cần phải xác định ngày được chọn ở năm nào
        if (Date1[1] == 12 && Date2[1] == 1) {
          if (event.dateTime.day > Date1[0]) {
            percent = DataRespons.getPercent(
                Date1[0],
                Date1[1],
                event.dateTime.year,
                Date2[0],
                Date2[1],
                event.dateTime.year + 1,
                event.dateTime);
          } else if (event.dateTime.day < Date2[0]) {
            percent = DataRespons.getPercent(
                Date1[0],
                Date1[1],
                event.dateTime.year - 1,
                Date2[0],
                Date2[1],
                event.dateTime.year,
                event.dateTime);
          }
        } else
          percent = DataRespons.getPercent(
              Date1[0],
              Date1[1],
              event.dateTime.year,
              Date2[0],
              Date2[1],
              event.dateTime.year,
              event.dateTime);
      }
      nhiThapBatTuModel = NhiThapBatTu.sharedInstance()
          .getObjectNhiThapBatTu(
              NhiThapBatTu.sharedInstance().getSaoNhiThapBatTu(event.dateTime));
       saoTotXau = SaoHungTinhCatTinh.sharedInstance().getSaoTotXau(
          lunarDay.month,
          CAN.indexOf(lunarDay.CanNgay),
          CHI.indexOf(lunarDay.ChiNgay));

      listGioLyThuanPhong =
          GioXHLyThuanPhong.sharedInstance()
              .getListGioLyThuanPhong(lunarDay.day, lunarDay.month);

       listEv = await DataRespons.getListEventOfDay(event.dateTime);

      danhsachNgayTotXau = NgayTotXau.sharedInstance().danhsachNgayTotXau(
          lunarDay.day,
          lunarDay.month,
          event.dateTime.day,
          event.dateTime.month,
          CAN.indexOf(getCanNam(lunarDay.year)),
          CHI.indexOf(getChiNam(lunarDay.year)),
          CAN.indexOf(lunarDay.CanNgay),
          CHI.indexOf(lunarDay.ChiNgay));
      yield LunarDayUpdate(
          listGioLyTuanPhong: listGioLyThuanPhong,
          lisEvent: listEv,
          listNgayTotXau: danhsachNgayTotXau,
          lunarDay: lunarDay,
          percent: percent,
          dateTime: event.dateTime,
          isLeap: !lunarDay.isLunarLeap ? 'Đ' : 'T',
          listTietKhi: listTietKhi,
          nhiThapBatTuModel: nhiThapBatTuModel,
          listTuoiXungTheoNgay: listNgay,
          listTuoiXungTheoThang: listThang,
          listXuatHanh: listXuatHanh,
          listSao: saoTotXau
        );

    }

  }

  @override
  LunarDayState get initialState =>  LunarDayInit();
}
