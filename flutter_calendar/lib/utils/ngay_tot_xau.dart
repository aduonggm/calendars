


import 'package:flutter_calendar/modal/ngay_tot_xau_model.dart';

class NgayTotXau {
  static NgayTotXau sharedInstance() {
    return new NgayTotXau();
  }

  ItemNgayTotXau ngayKimThanThatSat() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Kim thần thất sát";
    itemNgayTotXau.mota = "Trăm sự nên tránh";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_RATXAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayThapAcDaiBai() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Thập ác đại bại ";
    itemNgayTotXau.mota = "Trăm sự nên tránh";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_RATXAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayTuLy() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày tứ ly";
    itemNgayTotXau.mota = "Những ngày này khí vận suy kiệt, không nên dùng vào việc gì";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_RATXAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayTutuyet() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày tứ tuyệt";
    itemNgayTotXau.mota = "Dùng việc gì cũng không lợi";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_RATXAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayDuongcongkynhat() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Dương công kỵ nhật";
    itemNgayTotXau.mota = "Ngày xấu nhất trong năm";
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayThanhLongHoangDao() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hoàng Đạo (Thanh Long)";
    itemNgayTotXau.mota = "Tốt cho mọi việc";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_RATTOT;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayMinhDuongHoangDao() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hoàng Đạo (Minh Đường)";
    itemNgayTotXau.mota = "Có lợi cho việc gặp các vị đại nhân, cho việc thăng quan tiến chức";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_TOT;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayKimQuyHoangDao() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hoàng Đạo (Kim Quỹ)";
    itemNgayTotXau.mota = "Tốt cho việc cưới hỏi";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_TOT;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayThienDucHoangDao() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hoàng Đạo (Bảo Quang)";
    itemNgayTotXau.mota = "Hanh thông mọi việc";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_TOT;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayNgocDuongHoangDao() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hoàng Đạo (Ngọc Đường)";
    itemNgayTotXau.mota = "Tốt cho mọi việc, trừ những việc liên quan đến bùn đất, bếp núc. Rất tốt cho việc giấy tờ, công văn, học hành khai bút";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_TOT;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayTuMenhHoangDao() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hoàng Đạo (Tư Mệnh)";
    itemNgayTotXau.mota = "Mọi việc đều tốt";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_TOT;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayThienHinhHacDao() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hắc đạo (Thiên Hình)";
    itemNgayTotXau.mota = "Rất kỵ kiện tụng";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_XAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayBachHoHacDao() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hắc đạo (Bạch Hổ)";
    itemNgayTotXau.mota = "Kỵ mọi việc, trừ những việc săn bắn tế tự";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_XAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayChutuocHacDao() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hắc đạo (Chu Tước)";
    itemNgayTotXau.mota = "Kỵ các viện tranh cãi, kiện tụng";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_XAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayThienlaoHacDao() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hắc đạo (Thiên Lao)";
    itemNgayTotXau.mota = "Mọi việc bất lợi, trừ những việc trấn áp thần quỷ (trong tín ngưỡng, mê tín)";
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayHuyenVuHacDao() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hắc đạo (Huyền Vũ)";
    itemNgayTotXau.mota = "Kỵ kiện tụng, giao tiếp";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_XAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayCauTranHacDao() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hắc đạo (Câu Trận)";
    itemNgayTotXau.mota = "Rất kỵ trong việc dời nhà, làm nhà, tang lễ";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_XAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayNguyetky_thangam(int num) {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày nguyệt kỵ";
    if (num == 1 || num == 4 || num == 7 || num == 10) {
      itemNgayTotXau.mota = "Không nên khởi hành làm việc gì cả. Đại kỵ ngày mùng 5";
    } else if (num == 2 || num == 5 || num == 8 || num == 11) {
      itemNgayTotXau.mota = "Không nên khởi hành làm việc gì cả. Đại kỵ ngày mùng 14";
    } else {
      itemNgayTotXau.mota = "Không nên khởi hành làm việc gì cả. Đại kỵ ngày mùng 23";
    }
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_XAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayTamnuong() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày tam nương";
    itemNgayTotXau.mota = "Trăm sự đều kỵ, chánh kỵ xuất hành";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_XAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngaySatchu() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày sát chủ";
    itemNgayTotXau.mota = "Kỵ xây cất, cưới gả";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_RATXAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayThotu() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày thọ tử";
    itemNgayTotXau.mota = "Tránh làm những việc lớn";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_RATXAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayVangvong() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày vãng vong";
    itemNgayTotXau.mota = "Trăm sự đều kỵ, chánh kỵ xuất hành";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_XAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayNguLy() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày ngũ ly (đại hung)";
    itemNgayTotXau.mota = "Tránh làm những việc lớn";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_RATXAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayNiensat() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Niên sát (đại hung)";
    itemNgayTotXau.mota = "Tránh làm những việc lớn";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_RATXAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayChiKhacCan() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày chi khắc can - Phạt Nhật";
    itemNgayTotXau.mota = "Đại hung";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_RATXAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayCanKhacChi() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày can khắc chi - Chế Nhật";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_XAU;
    itemNgayTotXau.mota = "Tiểu hung";
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayCanSinhChi() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày can sinh chi - Bảo Nhật";
    itemNgayTotXau.mota = "Đại cát. Có vai trò rất quan trọng khi tiến hành đại sự";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_RATTOT;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayChiSinhCan() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày chi sinh can - Thoa Nhật";
    itemNgayTotXau.mota = "Tiểu cát";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_TOT;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayKhongPhong() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Không phòng";
    itemNgayTotXau.mota = "Kị cưới gả, làm nhà";
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayHoangVuTuQuy() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Hoang vu tứ quý";
    itemNgayTotXau.mota = "Kị cất nhà, hôn thú";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_XAU;
    return itemNgayTotXau;
  }

  ItemNgayTotXau ngayThientaiDiahoa() {
    ItemNgayTotXau itemNgayTotXau = new ItemNgayTotXau();
    itemNgayTotXau.tenNgay = "Ngày Thiên tai địa hoạ";
    itemNgayTotXau.mota = "Kỵ cưới gả, xây cất";
    itemNgayTotXau.type = LOAINGAY.LOAINGAY_XAU;
    return itemNgayTotXau;
  }

  bool isNgayTuLy(int num, int num2, int num3, int num4) {
    bool valueOf = false;
    if (num == 20 && num2 == 3) {
      valueOf =true;
    } else if (num == 20 && num2 == 6) {
      valueOf =true;
    } else if (num == 22 && num2 == 9) {
      valueOf =true;
    } else if (num == 21 && num2 == 12) {
      valueOf =true;
    }
    return valueOf;
  }

  bool isNgayTuTuyetVoiNgayDuong(int num, int num2) {
    if (num == 3 && num2 == 2) {
      return true;
    }
    if (num == 5 && num2 == 5) {
      return true;
    }
    if (num == 8 && num2 == 8) {
      return true;
    }
    if (num == 7 && num2 == 11) {
      return true;
    }
    return false;
  }

  List<int> danhsachngayTot(int num, int num2, int num3, int num4) {
    return [];
  }

  List<ItemNgayTotXau> danhsachNgayTotXau(int lunarDay, int lunarMonth, int SolarDay, int SolarMonth, int CanYear, int ChiYear, int CanDay, int ChiDay) {
    List<ItemNgayTotXau> list = [];
    if (isNgayThanhlong(lunarMonth, ChiDay)) {
      list.add(ngayThanhLongHoangDao());
    } else if (isNgayMinhduong(lunarMonth, ChiDay)) {
      list.add(ngayMinhDuongHoangDao());
    } else if (isNgayKimquy(lunarMonth, ChiDay)) {
      list.add(ngayKimQuyHoangDao());
    } else if (isNgayBaoquang(lunarMonth, ChiDay)) {
      list.add(ngayThienDucHoangDao());
    } else if (isNgayNgocduong(lunarMonth, ChiDay)) {
      list.add(ngayNgocDuongHoangDao());
    } else if (isNgayTumenh(lunarMonth, ChiDay)) {
      list.add(ngayTuMenhHoangDao());
    }
    if (isNgayBachHo(lunarMonth, ChiDay)) {
      list.add(ngayBachHoHacDao());
    } else if (isNgayChutuoc(lunarMonth, ChiDay)) {
      list.add(ngayChutuocHacDao());
    } else if (isNgayHuyenVu(lunarMonth, ChiDay)) {
      list.add(ngayChutuocHacDao());
    } else if (isNgayThienLao(lunarMonth, ChiDay)) {
      list.add(ngayThienlaoHacDao());
    } else if (isNgayCautran(lunarMonth, ChiDay)) {
      list.add(ngayCauTranHacDao());
    } else if (isNgayThienHinh(lunarMonth, ChiDay)) {
      list.add(ngayThienHinhHacDao());
    }
    if (isNgayTuLy(SolarDay, SolarMonth, 1930, -1)) {
      list.add(ngayTuLy());
    }
    if (isNgayTuTuyetVoiNgayDuong(SolarDay, SolarMonth)) {
      list.add(ngayTutuyet());
    }
    if (isNgayDuongCongkyNhat(lunarDay, lunarMonth)) {
      list.add(ngayDuongcongkynhat());
    }
    if (isNgayKimThanThatSat(CanYear, ChiDay)) {
      list.add(ngayKimThanThatSat());
    }
    if (isNgayThapAcDaiBai(CanYear, lunarMonth, CanDay, ChiDay)) {
      list.add(ngayThapAcDaiBai());
    }
    if (isNgayNguLy(CanDay, ChiDay)) {
      list.add(ngayNguLy());
    }
    if (isNgayNiensat(ChiYear, ChiDay)) {
      list.add(ngayNiensat());
    }
    if (isNgayNguyetky(lunarDay)) {
      list.add(ngayNguyetky_thangam(lunarMonth));
    }
    if (isNgayTamnuong(lunarDay)) {
      list.add(ngayTamnuong());
    }
    if (isNgaySatchu(lunarMonth, ChiDay)) {
      list.add(ngaySatchu());
    }
    if (isNgayThotu(lunarMonth, CanDay, ChiDay)) {
      list.add(ngayThotu());
    }
    if (isNgayVangvong(lunarMonth, ChiDay)) {
      list.add(ngayVangvong());
    }
    if (isNgayKhongPhong(lunarMonth, ChiDay)) {
      list.add(ngayKhongPhong());
    }
    if (isNgayHoangVuTuQuy(lunarMonth, ChiDay)) {
      list.add(ngayHoangVuTuQuy());
    }
    if (isNgayThienTaiDiaHoa(lunarMonth, ChiDay)) {
      list.add(ngayThientaiDiahoa());
    }
    if (isNgayCanSinhChi(CanDay, ChiDay)) {
      list.add(ngayCanSinhChi());
    }
    if (isNgayChiSinhCan(CanDay, ChiDay)) {
      list.add(ngayChiSinhCan());
    }
    if (isNgayChiKhacCan(CanDay, ChiDay)) {
      list.add(ngayChiKhacCan());
    }
    if (isNgayCanKhacChi(CanDay, ChiDay)) {
      list.add(ngayCanKhacChi());
    }
    return list;
  }

  bool isNgayTamnuong(int num) {
    return num == 3 || num == 7 || num == 13 || num == 18 || num == 22 || num == 27;
  }

  bool isNgayNguyetky(int num) {
    return num == 5 || num == 14 || num == 23;
  }

  bool isNgayDuongCongkyNhat(int num, int num2) {
    if (num == 13 && num2 == 1) {
      return true;
    }
    if (num == 11 && num2 == 2) {
      return true;
    }
    if (num == 9 && num2 == 3) {
      return true;
    }
    if (num == 7 && num2 == 4) {
      return true;
    }
    if (num == 5 && num2 == 5) {
      return true;
    }
    if (num == 3 && num2 == 6) {
      return true;
    }
    if (num == 8 && num2 == 7) {
      return true;
    }
    if (num == 29 && num2 == 7) {
      return true;
    }
    if (num == 27 && num2 == 8) {
      return true;
    }
    if (num == 25 && num2 == 9) {
      return true;
    }
    if (num == 23 && num2 == 10) {
      return true;
    }
    if (num == 21 && num2 == 11) {
      return true;
    }
    if (num == 19 && num2 == 12) {
      return true;
    }
    return false;
  }

  bool isNgaySatchu(int num, int num2) {
    if (num == 1 && (num2 == 0 || num2 == 5)) {
      return true;
    }
    if (num == 2 && (num2 == 0 || num2 == 1 || num2 == 3)) {
      return true;
    }
    if (num == 3 && (num2 == 7 || num2 == 1 || num2 == 6)) {
      return true;
    }
    if (num == 4 && (num2 == 3 || num2 == 10 || num2 == 9)) {
      return true;
    }
    if (num == 5 && (num2 == 8 || num2 == 4 || num2 == 0)) {
      return true;
    }
    if (num == 6 && (num2 == 10 || num2 == 4 || num2 == 9)) {
      return true;
    }
    if (num == 7 && (num2 == 1 || num2 == 6 || num2 == 11)) {
      return true;
    }
    if (num == 8 && (num2 == 3 || num2 == 1 || num2 == 4)) {
      return true;
    }
    if (num == 9 && (num2 == 6 || num2 == 0 || num2 == 1)) {
      return true;
    }
    if (num == 10 && (num2 == 9 || num2 == 3 || num2 == 4)) {
      return true;
    }
    if (num == 11 && (num2 == 2 || num2 == 6 || num2 == 7)) {
      return true;
    }
    if (num == 12 && (num2 == 4 || num2 == 9)) {
      return true;
    }
    return false;
  }

  bool isNgayThotu(int num, int num2, int num3) {
    if (num == 1 && num2 == 2 && num3 == 10) {
      return true;
    }
    if (num == 2 && num2 == 8 && num3 == 4) {
      return true;
    }
    if (num == 3 && num2 == 7 && num3 == 11) {
      return true;
    }
    if (num == 4 && num2 == 3 && num3 == 5) {
      return true;
    }
    if (num == 5 && num2 == 4 && num3 == 0) {
      return true;
    }
    if (num == 6 && num2 == 2 && num3 == 6) {
      return true;
    }
    if (num == 7 && num2 == 1 && num3 == 1) {
      return true;
    }
    if (num == 8 && num2 == 9 && num3 == 7) {
      return true;
    }
    if (num == 9 && num2 == 0 && num3 == 2) {
      return true;
    }
    if (num == 10 && num2 == 4 && num3 == 8) {
      return true;
    }
    if (num == 11 && num2 == 7 && num3 == 3) {
      return true;
    }
    if (num == 12 && num2 == 7 && num3 == 9) {
      return true;
    }
    return false;
  }

  bool isNgayVangvong(int num, int num2) {
    if (num == 1 && num2 == 2) {
      return true;
    }
    if (num == 2 && num2 == 5) {
      return true;
    }
    if (num == 3 && num2 == 8) {
      return true;
    }
    if (num == 4 && num2 == 11) {
      return true;
    }
    if (num == 5 && num2 == 3) {
      return true;
    }
    if (num == 6 && num2 == 6) {
      return true;
    }
    if (num == 7 && num2 == 9) {
      return true;
    }
    if (num == 8 && num2 == 0) {
      return true;
    }
    if (num == 9 && num2 == 4) {
      return true;
    }
    if (num == 10 && num2 == 7) {
      return true;
    }
    if (num == 11 && num2 == 10) {
      return true;
    }
    if (num == 12 && num2 == 1) {
      return true;
    }
    return false;
  }

  bool isNgayNguLy(int num, int num2) {
    if (num == 8 && num2 == 8) {
      return true;
    }
    if (num == 9 && num2 == 9) {
      return true;
    }
    if (num == 0 && num2 == 8) {
      return true;
    }
    if (num == 1 && num2 == 9) {
      return true;
    }
    if (num == 4 && num2 == 8) {
      return true;
    }
    if (num == 5 && num2 == 9) {
      return true;
    }
    return false;
  }

  bool isNgayThienTaiDiaHoa(int num, int num2) {
    if ((num == 1 || num == 5 || num == 7) && num2 == 0) {
      return true;
    }
    if ((num == 2 || num == 6 || num == 10) && num2 == 3) {
      return true;
    }
    if ((num == 3 || num == 7 || num == 11) && num2 == 6) {
      return true;
    }
    if ((num == 4 || num == 8 || num == 12) && num2 == 9) {
      return true;
    }
    return false;
  }

  bool isNgayKhongPhong(int num, int num2) {
    if (num == 1 || num == 2 || num == 3) {
      if (num2 == 4 || num2 == 5 || num2 == 0) {
        return true;
      }
    } else if (num == 4 || num == 5 || num == 6) {
      if (num2 == 10 || num2 == 11 || num2 == 7) {
        return true;
      }
    } else if (num == 7 || num == 8 || num == 8) {
      if (num2 == 3 || num2 == 2 || num2 == 6) {
        return true;
      }
    } else if (num2 == 8 || num2 == 9 || num2 == 1) {
      return true;
    }
    return false;
  }

  bool isNgayChiKhacCan(int num, int num2) {
    if (num == 6 && num2 == 6) {
      return true;
    }
    if (num == 2 && num2 == 0) {
      return true;
    }
    if (num == 4 && num2 == 2) {
      return true;
    }
    if (num == 7 && num2 == 5) {
      return true;
    }
    if (num == 9 && num2 == 7) {
      return true;
    }
    if (num == 0 && num2 == 8) {
      return true;
    }
    if (num == 1 && num2 == 9) {
      return true;
    }
    if (num == 9 && num2 == 1) {
      return true;
    }
    return num == 8 && num2 == 10;
  }

  bool isNgayCanKhacChi(int num, int num2) {
    if (num == 1 && num2 == 1) {
      return true;
    }
    if (num == 0 && num2 == 10) {
      return true;
    }
    if (num == 8 && num2 == 6) {
      return true;
    }
    if (num == 4 && num2 == 0) {
      return true;
    }
    if (num == 6 && num2 == 2) {
      return true;
    }
    if (num == 7 && num2 == 3) {
      return true;
    }
    if (num == 9 && num2 == 5) {
      return true;
    }
    if (num == 1 && num2 == 7) {
      return true;
    }
    if (num == 3 && num2 == 9) {
      return true;
    }
    if (num == 5 && num2 == 11) {
      return true;
    }
    return num == 0 && num2 == 4;
  }

  bool isNgayCanSinhChi(int num, int num2) {
    if (num == 3 && num2 == 1) {
      return true;
    }
    if (num == 2 && num2 == 10) {
      return true;
    }
    if (num == 1 && num2 == 5) {
      return true;
    }
    if (num == 3 && num2 == 7) {
      return true;
    }
    if (num == 0 && num2 == 6) {
      return true;
    }
    if (num == 4 && num2 == 8) {
      return true;
    }
    if (num == 6 && num2 == 0) {
      return true;
    }
    if (num == 8 && num2 == 2) {
      return true;
    }
    if (num == 5 && num2 == 9) {
      return true;
    }
    if (num == 7 && num2 == 11) {
      return true;
    }
    if (num == 9 && num2 == 3) {
      return true;
    }
    if (num == 2 && num2 == 4) {
      return true;
    }
    return false;
  }

  bool isNgayChiSinhCan(int num, int num2) {
    if (num == 0 && num2 == 0) {
      return true;
    }
    if (num == 2 && num2 == 2) {
      return true;
    }
    if (num == 3 && num2 == 3) {
      return true;
    }
    if (num == 7 && num2 == 7) {
      return true;
    }
    if (num == 8 && num2 == 8) {
      return true;
    }
    if (num == 9 && num2 == 9) {
      return true;
    }
    if (num == 6 && num2 == 4) {
      return true;
    }
    if (num == 7 && num2 == 1) {
      return true;
    }
    if (num == 6 && num2 == 10) {
      return true;
    }
    if (num == 7 && num2 == 11) {
      return true;
    }
    if (num == 8 && num2 == 0) {
      return true;
    }
    if (num == 4 && num2 == 6) {
      return true;
    }
    return false;
  }

  bool isDaiMinhNhat(int num, int num2) {
    if (num == 7 && num2 == 7) {
      return true;
    }
    if (num == 8 && num2 == 8) {
      return true;
    }
    if (num == 9 && num2 == 9) {
      return true;
    }
    if (num == 3 && num2 == 1) {
      return true;
    }
    if (num == 5 && num2 == 3) {
      return true;
    }
    if (num == 8 && num2 == 6) {
      return true;
    }
    if (num == 0 && num2 == 8) {
      return true;
    }
    if (num == 3 && num2 == 11) {
      return true;
    }
    if (num == 8 && num2 == 4) {
      return true;
    }
    if (num == 1 && num2 == 7) {
      return true;
    }
    if (num == 8 && num2 == 2) {
      return true;
    }
    if (num == 0 && num2 == 4) {
      return true;
    }
    if (num == 1 && num2 == 5) {
      return true;
    }
    if (num == 2 && num2 == 6) {
      return true;
    }
    if (num == 5 && num2 == 9) {
      return true;
    }
    if (num == 6 && num2 == 10) {
      return true;
    }
    if (num == 7 && num2 == 11) {
      return true;
    }
    if (num == 2 && num2 == 4) {
      return true;
    }
    if (num == 5 && num2 == 7) {
      return true;
    }
    if (num == 6 && num2 == 8) {
      return true;
    }
    if (num == 7 && num2 == 9) {
      return true;
    }
    return false;
  }

  bool isTotchongayxuathanh(int num, int num2) {
    if (num == 0 && num2 == 0) {
      return true;
    }
    if (num == 1 && num2 == 1) {
      return true;
    }
    if (num == 2 && num2 == 2) {
      return true;
    }
    if (num == 3 && num2 == 3) {
      return true;
    }
    if (num == 6 && num2 == 6) {
      return true;
    }
    if (num == 7 && num2 == 7) {
      return true;
    }
    if (num == 0 && num2 == 10) {
      return true;
    }
    if (num == 1 && num2 == 11) {
      return true;
    }
    if (num == 3 && num2 == 1) {
      return true;
    }
    if (num == 5 && num2 == 3) {
      return true;
    }
    if (num == 0 && num2 == 8) {
      return true;
    }
    if (num == 2 && num2 == 10) {
      return true;
    }
    if (num == 6 && num2 == 2) {
      return true;
    }
    if (num == 7 && num2 == 3) {
      return true;
    }
    if (num == 0 && num2 == 6) {
      return true;
    }
    if (num == 6 && num2 == 0) {
      return true;
    }
    if (num == 7 && num2 == 1) {
      return true;
    }
    if (num == 8 && num2 == 2) {
      return true;
    }
    if (num == 9 && num2 == 3) {
      return true;
    }
    if (num == 2 && num2 == 6) {
      return true;
    }
    if (num == 3 && num2 == 7) {
      return true;
    }
    if (num == 5 && num2 == 9) {
      return true;
    }
    if (num == 9 && num2 == 1) {
      return true;
    }
    if (num == 0 && num2 == 6) {
      return true;
    }
    if (num == 1 && num2 == 3) {
      return true;
    }
    if (num == 6 && num2 == 8) {
      return true;
    }
    return false;
  }

  bool isNgayHoangVuTuQuy(int num, int num2) {
    if ((num == 1 || num == 2 || num == 3) && num2 == 8) {
      return true;
    }
    if ((num == 4 || num == 5 || num == 6) && num2 == 2) {
      return true;
    }
    if ((num == 7 || num == 8 || num == 9) && num2 == 4) {
      return true;
    }
    if ((num == 10 || num == 11 || num == 12) && num2 == 0) {
      return true;
    }
    return false;
  }

  bool isNgayTamsat(int num, int num2) {
    if ((num == 0 || num == 4 || num == 8) && (num2 == 5 || num2 == 6 || num2 == 7)) {
      return true;
    }
    if ((num == 1 || num == 9 || num == 5) && (num2 == 2 || num2 == 3 || num2 == 4)) {
      return true;
    }
    if ((num == 2 || num == 6 || num == 10) && (num2 == 11 || num2 == 0 || num2 == 1)) {
      return true;
    }
    if ((num == 3 || num == 7 || num == 11) && (num2 == 8 || num2 == 9 || num2 == 10)) {
      return true;
    }
    return false;
  }

  bool isNgayNiensat(int num, int num2) {
    if ((num == 0 || num == 4 || num == 8) && (num2 == 5 || num2 == 6 || num2 == 7)) {
      return true;
    }
    if ((num == 1 || num == 9 || num == 5) && (num2 == 2 || num2 == 3 || num2 == 4)) {
      return true;
    }
    if ((num == 2 || num == 6 || num == 10) && (num2 == 11 || num2 == 0 || num2 == 1)) {
      return true;
    }
    if ((num == 3 || num == 7 || num == 11) && (num2 == 8 || num2 == 9 || num2 == 10)) {
      return true;
    }
    return false;
  }

  bool isNgayKimThanThatSat(int num, int num2) {
    if ((num == 5 || num == 0) && (num2 == 6 || num2 == 7)) {
      return true;
    }
    if ((num == 1 || num == 6) && (num2 == 4 || num2 == 5)) {
      return true;
    }
    if ((num == 2 || num == 7) && (num2 == 0 || num2 == 1 || num2 == 2 || num2 == 3)) {
      return true;
    }
    if ((num == 3 || num == 8) && (num2 == 10 || num2 == 11)) {
      return true;
    }
    if ((num == 4 || num == 9) && (num2 == 8 || num2 == 9)) {
      return true;
    }
    return false;
  }

  bool isNgayThapAcDaiBai(int num, int num2, int num3, int num4) {
    if (num == 5 || num == 0) {
      if (num2 == 3 && num3 == 4 && num4 == 10) {
        return true;
      }
      if (num2 == 7 && num3 == 9 && num4 == 11) {
        return true;
      }
      if (num2 == 10 && num3 == 2 && num4 == 8) {
        return true;
      }
      if (num2 == 11 && num3 == 3 && num4 == 11) {
        return true;
      }
    } else if (num == 1 || num == 6) {
      if (num2 == 4 && num3 == 8 && num4 == 8) {
        return true;
      }
      if (num2 == 9 && num3 == 1 && num4 == 5) {
        return true;
      }
    } else if (num == 2 || num == 7) {
      if (num2 == 3 && num3 == 7 && num4 == 5) {
        return true;
      }
      if (num2 == 9 && num3 == 6 && num4 == 4) {
        return true;
      }
      if (num2 == 10 && num3 == 0 && num4 == 4) {
        return true;
      }
    } else if ((num == 4 || num == 9) && num2 == 6 && num3 == 5 && num4 == 1) {
      return true;
    }
    return false;
  }

  bool isNgayBachHo(int num, int num2) {
    if ((num == 1 || num == 7) && num2 == 6) {
      return true;
    }
    if ((num == 2 || num == 8) && num2 == 8) {
      return true;
    }
    if ((num == 3 || num == 9) && num2 == 10) {
      return true;
    }
    if ((num == 4 || num == 10) && num2 == 0) {
      return true;
    }
    if ((num == 5 || num == 11) && num2 == 2) {
      return true;
    }
    if ((num == 6 || num == 12) && num2 == 4) {
      return true;
    }
    return false;
  }

  bool isNgayHuyenVu(int num, int num2) {
    if ((num == 1 || num == 7) && num2 == 9) {
      return true;
    }
    if ((num == 2 || num == 8) && num2 == 11) {
      return true;
    }
    if ((num == 3 || num == 9) && num2 == 1) {
      return true;
    }
    if ((num == 4 || num == 10) && num2 == 3) {
      return true;
    }
    if ((num == 5 || num == 11) && num2 == 5) {
      return true;
    }
    if ((num == 6 || num == 12) && num2 == 7) {
      return true;
    }
    return false;
  }

  bool isNgayChutuoc(int num, int num2) {
    if ((num == 1 || num == 7) && num2 == 3) {
      return true;
    }
    if ((num == 2 || num == 8) && num2 == 5) {
      return true;
    }
    if ((num == 3 || num == 9) && num2 == 7) {
      return true;
    }
    if ((num == 4 || num == 10) && num2 == 9) {
      return true;
    }
    if ((num == 5 || num == 11) && num2 == 11) {
      return true;
    }
    if ((num == 6 || num == 12) && num2 == 1) {
      return true;
    }
    return false;
  }

  bool isNgayCautran(int num, int num2) {
    if ((num == 1 || num == 7) && num2 == 11) {
      return true;
    }
    if ((num == 2 || num == 8) && num2 == 1) {
      return true;
    }
    if ((num == 3 || num == 9) && num2 == 3) {
      return true;
    }
    if ((num == 4 || num == 10) && num2 == 5) {
      return true;
    }
    if ((num == 5 || num == 11) && num2 == 7) {
      return true;
    }
    if ((num == 6 || num == 12) && num2 == 9) {
      return true;
    }
    return false;
  }

  bool isNgayThienLao(int num, int num2) {
    if ((num == 1 || num == 7) && num2 == 8) {
      return true;
    }
    if ((num == 2 || num == 8) && num2 == 10) {
      return true;
    }
    if ((num == 3 || num == 9) && num2 == 0) {
      return true;
    }
    if ((num == 4 || num == 10) && num2 == 2) {
      return true;
    }
    if ((num == 5 || num == 11) && num2 == 4) {
      return true;
    }
    if ((num == 6 || num == 12) && num2 == 6) {
      return true;
    }
    return false;
  }

  bool isNgayThienHinh(int num, int num2) {
    if ((num == 1 || num == 7) && num2 == 2) {
      return true;
    }
    if ((num == 2 || num == 8) && num2 == 4) {
      return true;
    }
    if ((num == 3 || num == 9) && num2 == 6) {
      return true;
    }
    if ((num == 4 || num == 10) && num2 == 8) {
      return true;
    }
    if ((num == 5 || num == 11) && num2 == 10) {
      return true;
    }
    if ((num == 6 || num == 12) && num2 == 0) {
      return true;
    }
    return false;
  }

  bool isNgayTumenh(int num, int num2) {
    if ((num == 1 || num == 7) && num2 == 10) {
      return true;
    }
    if ((num == 2 || num == 8) && num2 == 0) {
      return true;
    }
    if ((num == 3 || num == 9) && num2 == 2) {
      return true;
    }
    if ((num == 4 || num == 10) && num2 == 4) {
      return true;
    }
    if ((num == 5 || num == 11) && num2 == 6) {
      return true;
    }
    if ((num == 6 || num == 12) && num2 == 8) {
      return true;
    }
    return false;
  }

  bool isNgayThanhlong(int num, int num2) {
    if ((num == 1 || num == 7) && num2 == 0) {
      return true;
    }
    if ((num == 2 || num == 8) && num2 == 2) {
      return true;
    }
    if ((num == 3 || num == 9) && num2 == 4) {
      return true;
    }
    if ((num == 4 || num == 10) && num2 == 6) {
      return true;
    }
    if ((num == 5 || num == 11) && num2 == 8) {
      return true;
    }
    if ((num == 6 || num == 12) && num2 == 10) {
      return true;
    }
    return false;
  }

  bool isNgayMinhduong(int num, int num2) {
    if ((num == 1 || num == 7) && num2 == 1) {
      return true;
    }
    if ((num == 2 || num == 8) && num2 == 3) {
      return true;
    }
    if ((num == 3 || num == 9) && num2 == 5) {
      return true;
    }
    if ((num == 4 || num == 10) && num2 == 7) {
      return true;
    }
    if ((num == 5 || num == 11) && num2 == 9) {
      return true;
    }
    if ((num == 6 || num == 12) && num2 == 11) {
      return true;
    }
    return false;
  }

  bool isNgayKimquy(int num, int num2) {
    if ((num == 1 || num == 7) && num2 == 4) {
      return true;
    }
    if ((num == 2 || num == 8) && num2 == 6) {
      return true;
    }
    if ((num == 3 || num == 9) && num2 == 8) {
      return true;
    }
    if ((num == 4 || num == 10) && num2 == 10) {
      return true;
    }
    if ((num == 5 || num == 11) && num2 == 0) {
      return true;
    }
    if ((num == 6 || num == 12) && num2 == 2) {
      return true;
    }
    return false;
  }

  bool isNgayBaoquang(int num, int num2) {
    if ((num == 1 || num == 7) && num2 == 5) {
      return true;
    }
    if ((num == 2 || num == 8) && num2 == 7) {
      return true;
    }
    if ((num == 3 || num == 9) && num2 == 9) {
      return true;
    }
    if ((num == 4 || num == 10) && num2 == 11) {
      return true;
    }
    if ((num == 5 || num == 11) && num2 == 1) {
      return true;
    }
    if ((num == 6 || num == 12) && num2 == 3) {
      return true;
    }
    return false;
  }

  bool isNgayNgocduong(int num, int num2) {
    if ((num == 1 || num == 7) && num2 == 7) {
      return true;
    }
    if ((num == 2 || num == 8) && num2 == 9) {
      return true;
    }
    if ((num == 3 || num == 9) && num2 == 11) {
      return true;
    }
    if ((num == 4 || num == 10) && num2 == 1) {
      return true;
    }
    if ((num == 5 || num == 11) && num2 == 3) {
      return true;
    }
    if ((num == 6 || num == 12) && num2 == 5) {
      return true;
    }
    return false;
  }

  bool isTotchongaydongtho(int num, int num2) {
    if (num == 0 && num2 == 0) {
      return true;
    }
    if (num == 9 && num2 == 9) {
      return true;
    }
    if (num == 4 && num2 == 2) {
      return true;
    }
    if (num == 5 && num2 == 3) {
      return true;
    }
    if (num == 6 && num2 == 4) {
      return true;
    }
    if (num == 7 && num2 == 5) {
      return true;
    }
    if (num == 0 && num2 == 8) {
      return true;
    }
    if (num == 2 && num2 == 10) {
      return true;
    }
    if (num == 0 && num2 == 6) {
      return true;
    }
    if (num == 2 && num2 == 8) {
      return true;
    }
    if (num == 4 && num2 == 10) {
      return true;
    }
    if (num == 5 && num2 == 11) {
      return true;
    }
    if (num == 6 && num2 == 0) {
      return true;
    }
    if (num == 0 && num2 == 4) {
      return true;
    }
    if (num == 9 && num2 == 1) {
      return true;
    }
    return false;
  }

  bool isTotchongaykhoicong(int num, int num2) {
    if (num == 5 && num2 == 5) {
      return true;
    }
    if (num == 7 && num2 == 7) {
      return true;
    }
    if (num == 0 && num2 == 10) {
      return true;
    }
    if (num == 1 && num2 == 11) {
      return true;
    }
    if (num == 1 && num2 == 9) {
      return true;
    }
    if (num == 5 && num2 == 9) {
      return true;
    }
    if (num == 8 && num2 == 0) {
      return true;
    }
    if (num == 1 && num2 == 3) {
      return true;
    }
    if (num == 5 && num2 == 7) {
      return true;
    }
    if (num == 6 && num2 == 8) {
      return true;
    }
    return false;
  }

  bool isTotchongayDotran(int num, int num2) {
    if (num == 0 && num2 == 5) {
      return true;
    }
    if (num == 0 && num2 == 8) {
      return true;
    }
    if (num == 0 && num2 == 2) {
      return true;
    }
    if (num == 0 && num2 == 4) {
      return true;
    }
    if (num == 1 && num2 == 9) {
      return true;
    }
    if (num == 1 && num2 == 7) {
      return true;
    }
    if (num == 1 && num2 == 5) {
      return true;
    }
    if (num == 4 && num2 == 4) {
      return true;
    }
    if (num == 4 && num2 == 2) {
      return true;
    }
    if (num == 4 && num2 == 0) {
      return true;
    }
    if (num == 4 && num2 == 8) {
      return true;
    }
    if (num == 5 && num2 == 3) {
      return true;
    }
    if (num == 5 && num2 == 11) {
      return true;
    }
    if (num == 5 && num2 == 9) {
      return true;
    }
    if (num == 5 && num2 == 1) {
      return true;
    }
    if (num == 6 && num2 == 2) {
      return true;
    }
    if (num == 7 && num2 == 1) {
      return true;
    }
    if (num == 7 && num2 == 11) {
      return true;
    }
    if (num == 8 && num2 == 0) {
      return true;
    }
    if (num == 9 && num2 == 9) {
      return true;
    }
    if (num == 9 && num2 == 7) {
      return true;
    }
    if (num == 9 && num2 == 5) {
      return true;
    }
    if (num == 9 && num2 == 3) {
      return true;
    }
    return false;
  }

  bool isTotchongayNhapTrach(int num, int num2) {
    if (num == 0 && num2 == 5) {
      return true;
    }
    if (num == 0 && num2 == 4) {
      return true;
    }
    if (num == 1 && num2 == 9) {
      return true;
    }
    if (num == 1 && num2 == 7) {
      return true;
    }
    if (num == 1 && num2 == 1) {
      return true;
    }
    if (num == 2 && num2 == 2) {
      return true;
    }
    if (num == 2 && num2 == 6) {
      return true;
    }
    if (num == 2 && num2 == 4) {
      return true;
    }
    if (num == 3 && num2 == 1) {
      return true;
    }
    if (num == 4 && num2 == 4) {
      return true;
    }
    if (num == 4 && num2 == 2) {
      return true;
    }
    if (num == 6 && num2 == 2) {
      return true;
    }
    if (num == 6 && num2 == 6) {
      return true;
    }
    if (num == 7 && num2 == 11) {
      return true;
    }
    if (num == 8 && num2 == 4) {
      return true;
    }
    if (num == 8 && num2 == 2) {
      return true;
    }
    if (num == 8 && num2 == 10) {
      return true;
    }
    if (num == 9 && num2 == 5) {
      return true;
    }
    if (num == 9 && num2 == 3) {
      return true;
    }
    if (num == 9 && num2 == 1) {
      return true;
    }
    return false;
  }

  bool isTotchongayMuahangBanhang(int num, int num2) {
    return (num == 0 && num2 == 2) || (num == 2 && num2 == 10) || ((num == 3 && num2 == 7) || ((num == 5 && num2 == 3) || ((num == 5 && num2 == 9) || (num == 8 && num2 == 2))));
  }

  bool isTotchongaymaitangRatTot(int num, int num2) {
    if (num == 8 && num2 == 8) {
      return true;
    }
    if (num == 9 && num2 == 9) {
      return true;
    }
    if (num == 8 && num2 == 6) {
      return true;
    }
    if (num == 0 && num2 == 8) {
      return true;
    }
    if (num == 1 && num2 == 9) {
      return true;
    }
    if (num == 2 && num2 == 8) {
      return true;
    }
    if (num == 3 && num2 == 9) {
      return true;
    }
    if (num == 8 && num2 == 2) {
      return true;
    }
    if (num == 2 && num2 == 6) {
      return true;
    }
    if (num == 5 && num2 == 9) {
      return true;
    }
    if (num == 6 && num2 == 8) {
      return true;
    }
    if (num == 7 && num2 == 9) {
      return true;
    }
    return false;
  }

  bool isTotchongaymaitangDungduoc(int num, int num2) {
    return (num == 6 && num2 == 6) || (num == 0 && num2 == 4) || ((num == 8 && num2 == 4) || ((num == 5 && num2 == 5) || ((num == 0 && num2 == 2) || ((num == 2 && num2 == 4) || (num == 6 && num2 == 2)))));
  }

  bool isTotchongaykhaitruong(int num, int num2) {
    if (num == 0 && num2 == 0) {
      return true;
    }
    if (num == 1 && num2 == 1) {
      return true;
    }
    if (num == 2 && num2 == 2) {
      return true;
    }
    if (num == 5 && num2 == 5) {
      return true;
    }
    if (num == 6 && num2 == 6) {
      return true;
    }
    if (num == 7 && num2 == 7) {
      return true;
    }
    if (num == 0 && num2 == 10) {
      return true;
    }
    if (num == 1 && num2 == 11) {
      return true;
    }
    if (num == 2 && num2 == 0) {
      return true;
    }
    if (num == 1 && num2 == 3) {
      return true;
    }
    if (num == 8 && num2 == 6) {
      return true;
    }
    if (num == 9 && num2 == 7) {
      return true;
    }
    if (num == 0 && num2 == 8) {
      return true;
    }
    if (num == 6 && num2 == 2) {
      return true;
    }
    if (num == 7 && num2 == 3) {
      return true;
    }
    if (num == 1 && num2 == 7) {
      return true;
    }
    if (num == 5 && num2 == 11) {
      return true;
    }
    if (num == 6 && num2 == 0) {
      return true;
    }
    if (num == 9 && num2 == 3) {
      return true;
    }
    if (num == 2 && num2 == 6) {
      return true;
    }
    if (num == 8 && num2 == 0) {
      return true;
    }
    if (num == 0 && num2 == 2) {
      return true;
    }
    if (num == 1 && num2 == 3) {
      return true;
    }
    if (num == 5 && num2 == 7) {
      return true;
    }
    if (num == 6 && num2 == 8) {
      return true;
    }
    if (num == 7 && num2 == 9) {
      return true;
    }
    return false;
  }

  bool isTotchongayCuoiHoi(int num, int num2) {
    if (num == 1 && num2 == 5) {
      return true;
    }
    if (num == 2 && num2 == 2) {
      return true;
    }
    if (num == 2 && num2 == 0) {
      return true;
    }
    if (num == 3 && num2 == 3) {
      return true;
    }
    if (num == 4 && num2 == 2) {
      return true;
    }
    if (num == 4 && num2 == 0) {
      return true;
    }
    if (num == 5 && num2 == 3) {
      return true;
    }
    if (num == 6 && num2 == 2) {
      return true;
    }
    if (num == 8 && num2 == 2) {
      return true;
    }
    if (num == 9 && num2 == 3) {
      return true;
    }
    return false;
  }

  bool isNgayBatTuong(int num, int num2, int num3) {
    if (num == 1) {
      if (num2 == 2 && num3 == 2) {
        return true;
      }
      if (num2 == 3 && num3 == 3) {
        return true;
      }
      if (num2 == 2 && num3 == 0) {
        return true;
      }
      if (num2 == 5 && num3 == 3) {
        return true;
      }
      if (num2 == 4 && num3 == 0) {
        return true;
      }
      if (num2 == 6 && num3 == 2) {
        return true;
      }
      if (num2 == 7 && num3 == 3) {
        return true;
      }
    }
    if (num == 2) {
      if (num2 == 1 && num3 == 1) {
        return true;
      }
      if (num2 == 2 && num3 == 2) {
        return true;
      }
      if (num2 == 3 && num3 == 1) {
        return true;
      }
      if (num2 == 2 && num3 == 10) {
        return true;
      }
      if (num2 == 4 && num3 == 2) {
        return true;
      }
      if (num2 == 5 && num3 == 1) {
        return true;
      }
      if (num2 == 4 && num3 == 10) {
        return true;
      }
      if (num2 == 6 && num3 == 10) {
        return true;
      }
    } else if (num == 3) {
      if (num2 == 1 && num3 == 1) {
        return true;
      }
      if (num2 == 5 && num3 == 5) {
        return true;
      }
      if (num2 == 3 && num3 == 1) {
        return true;
      }
      if (num2 == 3 && num3 == 9) {
        return true;
      }
    } else if (num == 4) {
      if (num2 == 0 && num3 == 0) {
        return true;
      }
      if (num2 == 0 && num3 == 10) {
        return true;
      }
      if (num2 == 2 && num3 == 0) {
        return true;
      }
      if (num2 == 1 && num3 == 9) {
        return true;
      }
      if (num2 == 2 && num3 == 10) {
        return true;
      }
      if (num2 == 4 && num3 == 0) {
        return true;
      }
      if (num2 == 2 && num3 == 8) {
        return true;
      }
      if (num2 == 3 && num3 == 9) {
        return true;
      }
      if (num2 == 4 && num3 == 10) {
        return true;
      }
    } else if (num == 5) {
      if (num2 == 9 && num3 == 9) {
        return true;
      }
      if (num2 == 0 && num3 == 10) {
        return true;
      }
      if (num2 == 0 && num3 == 8) {
        return true;
      }
      if (num2 == 1 && num3 == 9) {
        return true;
      }
      if (num2 == 2 && num3 == 10) {
        return true;
      }
      if (num2 == 1 && num3 == 7) {
        return true;
      }
      if (num2 == 2 && num3 == 8) {
        return true;
      }
      if (num2 == 4 && num3 == 8) {
        return true;
      }
      if (num2 == 5 && num3 == 7) {
        return true;
      }
    } else if (num == 6) {
      if (num2 == 8 && num3 == 8) {
        return true;
      }
      if (num2 == 9 && num3 == 9) {
        return true;
      }
      if (num2 == 0 && num3 == 10) {
        return true;
      }
      if (num2 == 8 && num3 == 6) {
        return true;
      }
      if (num2 == 9 && num3 == 7) {
        return true;
      }
      if (num2 == 0 && num3 == 8) {
        return true;
      }
      if (num2 == 1 && num3 == 9) {
        return true;
      }
      if (num2 == 0 && num3 == 6) {
        return true;
      }
      if (num2 == 1 && num3 == 7) {
        return true;
      }
      if (num2 == 8 && num3 == 10) {
        return true;
      }
    } else if (num == 7) {
      if (num2 == 8 && num3 == 8) {
        return true;
      }
      if (num2 == 9 && num3 == 9) {
        return true;
      }
      if (num2 == 8 && num3 == 10) {
        return true;
      }
      if (num2 == 9 && num3 == 7) {
        return true;
      }
      if (num2 == 0 && num3 == 8) {
        return true;
      }
      if (num2 == 1 && num3 == 9) {
        return true;
      }
      if (num2 == 9 && num3 == 5) {
        return true;
      }
      if (num2 == 0 && num3 == 10) {
        return true;
      }
      if (num2 == 1 && num3 == 7) {
        return true;
      }
      if (num2 == 5 && num3 == 7) {
        return true;
      }
    } else if (num == 8) {
      if (num2 == 4 && num3 == 4) {
        return true;
      }
      if (num2 == 7 && num3 == 7) {
        return true;
      }
      if (num2 == 0 && num3 == 8) {
        return true;
      }
      if (num2 == 8 && num3 == 4) {
        return true;
      }
      if (num2 == 9 && num3 == 5) {
        return true;
      }
      if (num2 == 0 && num3 == 6) {
        return true;
      }
      if (num2 == 0 && num3 == 4) {
        return true;
      }
      if (num2 == 4 && num3 == 6) {
        return true;
      }
      if (num2 == 7 && num3 == 5) {
        return true;
      }
      if (num2 == 8 && num3 == 6) {
        return true;
      }
      if (num2 == 9 && num3 == 7) {
        return true;
      }
    } else if (num == 9) {
      if (num2 == 5 && num3 == 5) {
        return true;
      }
      if (num2 == 6 && num3 == 6) {
        return true;
      }
      if (num2 == 7 && num3 == 7) {
        return true;
      }
      if (num2 == 1 && num3 == 3) {
        return true;
      }
      if (num2 == 7 && num3 == 5) {
        return true;
      }
      if (num2 == 8 && num3 == 6) {
        return true;
      }
      if (num2 == 9 && num3 == 7) {
        return true;
      }
      if (num2 == 9 && num3 == 5) {
        return true;
      }
      if (num2 == 9 && num3 == 3) {
        return true;
      }
      if (num2 == 4 && num3 == 6) {
        return true;
      }
      if (num2 == 5 && num3 == 7) {
        return true;
      }
    } else if (num == 10) {
      if (num2 == 4 && num3 == 4) {
        return true;
      }
      if (num2 == 6 && num3 == 6) {
        return true;
      }
      if (num2 == 6 && num3 == 4) {
        return true;
      }
      if (num2 == 8 && num3 == 6) {
        return true;
      }
      if (num2 == 6 && num3 == 2) {
        return true;
      }
      if (num2 == 7 && num3 == 3) {
        return true;
      }
      if (num2 == 8 && num3 == 4) {
        return true;
      }
      if (num2 == 8 && num3 == 2) {
        return true;
      }
      if (num2 == 9 && num3 == 3) {
        return true;
      }
      if (num2 == 4 && num3 == 6) {
        return true;
      }
    } else if (num == 11) {
      if (num2 == 3 && num3 == 3) {
        return true;
      }
      if (num2 == 4 && num3 == 4) {
        return true;
      }
      if (num2 == 5 && num3 == 5) {
        return true;
      }
      if (num2 == 3 && num3 == 1) {
        return true;
      }
      if (num2 == 5 && num3 == 3) {
        return true;
      }
      if (num2 == 6 && num3 == 4) {
        return true;
      }
      if (num2 == 7 && num3 == 5) {
        return true;
      }
      if (num2 == 8 && num3 == 4) {
        return true;
      }
      if (num2 == 7 && num3 == 1) {
        return true;
      }
      if (num2 == 3 && num3 == 5) {
        return true;
      }
    } else if (num == 12) {
      if (num2 == 2 && num3 == 2) {
        return true;
      }
      if (num2 == 3 && num3 == 3) {
        return true;
      }
      if (num2 == 4 && num3 == 8) {
        return true;
      }
      if (num2 == 3 && num3 == 1) {
        return true;
      }
      if (num2 == 4 && num3 == 2) {
        return true;
      }
      if (num2 == 5 && num3 == 3) {
        return true;
      }
      if (num2 == 6 && num3 == 4) {
        return true;
      }
      if (num2 == 1 && num3 == 3) {
        return true;
      }
      if (num2 == 6 && num3 == 2) {
        return true;
      }
      if (num2 == 7 && num3 == 3) {
        return true;
      }
      if (num2 == 7 && num3 == 1) {
        return true;
      }
      if (num2 == 2 && num3 == 4) {
        return true;
      }
    }
    return false;
  }
}