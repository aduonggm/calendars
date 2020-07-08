

import 'package:flutter_calendar/modal/sao_model.dart';

class SaoHungTinhCatTinh {
  static SaoHungTinhCatTinh sharedInstance() {
    return new SaoHungTinhCatTinh();
  }

  List<SaoObject> getSaoTotXau(int i, int i2, int i3) {
    List<SaoObject> arrayList = [];
    if (i == 1) {
      return getSaoTotThang1AmLichWithThienCan(i2, i3);
    }
    if (i == 2) {
      return getSaoTotThang2AmLichWithThienCan(i2, i3);
    }
    if (i == 3) {
      return getSaoTotThang3AmLichWithThienCan(i2, i3);
    }
    if (i == 4) {
      return getSaoTotThang4AmLichWithThienCan(i2, i3);
    }
    if (i == 5) {
      return getSaoTotThang5AmLichWithThienCan(i2, i3);
    }
    if (i == 6) {
      return getSaoTotThang6AmLichWithThienCan(i2, i3);
    }
    if (i == 7) {
      return getSaoTotThang7AmLichWithThienCan(i2, i3);
    }
    if (i == 8) {
      return getSaoTotThang8AmLichWithThienCan(i2, i3);
    }
    if (i == 9) {
      return getSaoTotThang9AmLichWithThienCan(i2, i3);
    }
    if (i == 10) {
      return getSaoTotThang10AmLichWithThienCan(i2, i3);
    }
    if (i == 11) {
      return getSaoTotThang11AmLichWithThienCan(i2, i3);
    }
    return i == 12 ? getSaoTotThang12AmLichWithThienCan(i2, i3) : arrayList;
  }

  SaoObject getNameSaoThienDuc() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên đức";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoNguyetDuc() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nguyệt đức";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoThienDucHop() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên đức hợp";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoNguyetDucHop() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nguyệt đức hợp";
    saoObject.mota = "Trăm sự cát lợi, kỵ kiện tụng";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoThienHy() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên hỷ";
    saoObject.mota = "Nên kết hôn, cầu tự, trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoThienPhu() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên phú";
    saoObject.mota = "Nên mai táng, làm nhà kho, trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoThienQuy() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên quý";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoThienXa() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên xá";
    saoObject.mota = "Nên rửa oan, cúng thần cầu khấn, trăm sự cát lợi. Kỵ động thổ. Gặp ngày Thiên xá, ngày Giáp Ngọ tháng 5, ngày Giáp Tý tháng 11 không được đặc xá";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoThienPhuc() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên phúc";
    saoObject.mota = "Nên thăng quan, vào nhà mới, tặng quà, trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoThienThanh() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên thành";
    saoObject.mota = "Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoThienQuan() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên quan";
    saoObject.mota = "Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoThienY() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên y";
    saoObject.mota = "Là Bế nhật, Phù hợp với việc tìm bác sỹ, tìm thuốc trị bệnh";
    saoObject.typeSao = LOAISAO.CATTINH;
    return saoObject;
  }

  SaoObject getNameSaoThienMa() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên mã";
    saoObject.mota = "Tốt cho việc xuất hành, giao dịch, cầu tài lộc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoThientai() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên tài";
    saoObject.mota = "Tốt cho việc cầu tài lộc, khai trương";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoDiaTai() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Địa tài";
    saoObject.mota = "Nên tuyển dụng, tích trữ tài sản";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoNguyetTai() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nguyệt tài";
    saoObject.mota = "Mở cửa hàng, sửa kho, xây bếp, xuất hành, di chuyển";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoNguyetAn() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nguyệt Ân";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoNguyetKhong() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nguyệt không";
    saoObject.mota = "Tốt cho việc làm nhà hoặc sửa nhà, làm gường";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoMauThuong() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Mẫu thương";
    saoObject.mota = "Tốt về cầu tài lộc, khai trương";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoMinhtinh() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Minh tinh";
    saoObject.mota = "Nên thăng quan, kiện tụng, mai táng, trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoThanhTam() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thánh tâm";
    saoObject.mota = "Tốt mọi việc, nhất là cầu phúc, tế tự";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoNguphu() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Ngũ phú";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoLockho() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Lộc khố";
    saoObject.mota = "Thích hợp tích hợp của cải";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoPhucsinh() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Phúc sinh";
    saoObject.mota = "Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoCatkhanh() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Cát khánh";
    saoObject.mota = "Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoPhuchau() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Phúc hậu";
    saoObject.mota = "Tốt về cầu tài lộc, khai trương";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoCatloi() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Cát lợi";
    saoObject.mota = "";
    saoObject.typeSao = LOAISAO.CATTINH;
    return saoObject;
  }

  SaoObject getNameSaoAmDuc() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Âm đức";
    saoObject.mota = "Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoHoatDieu() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Hoạt điệu";
    saoObject.mota = "Tốt, nhưng gặp thụ tử thì xấu";
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    saoObject.typeSao = LOAISAO.CATTINH;
    return saoObject;
  }

  SaoObject getNameSaoGiaithan() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Giải thần";
    saoObject.mota = "Nên tố tụng, giải oan";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoSinhkhi() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Sinh khí";
    saoObject.mota = "Nên cải tạo, động thổ, trồng trọt, trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoPhoho() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Phổ hộ";
    saoObject.mota = "Nên cầu phúc, kết hôn, xuất hành, trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoIchhau() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Ích hậu";
    saoObject.mota = "Nên kết hôn, lập tự, nạp nô tỳ, trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoTucthe() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Tục thế";
    saoObject.mota = "Nên kết hôn, lập tự, nạp nô tỳ, trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoCauAn() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Cầu an";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    return saoObject;
  }

  SaoObject getNameSaoDichMa() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Dịch mã";
    saoObject.mota = "Trăm sự cát lợi, nhất là xuất hành";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoQuanNhat() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Quan nhật";
    saoObject.mota = "Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoDanNhat() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Dân nhật, thời đức";
    saoObject.mota = "Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoThuNhat() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thủ nhật";
    saoObject.mota = "";
    saoObject.typeSao = LOAISAO.CATTINH;
    return saoObject;
  }

  SaoObject getNameSaoVuongNhat() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Vượng nhật";
    saoObject.mota = "";
    saoObject.typeSao = LOAISAO.CATTINH;
    return saoObject;
  }

  SaoObject getNameSaoTuongNhat() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Tướng nhật";
    saoObject.mota = "";
    saoObject.typeSao = LOAISAO.CATTINH;
    return saoObject;
  }

  SaoObject getNameSaoTamHop() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Tam hợp";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    saoObject.typeSao = LOAISAO.CATTINH;
    return saoObject;
  }

  SaoObject getNameSaoLucHop() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Lục hợp";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoDaiHongSa() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Đại hồng sa";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoThienAn() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên ân";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    return saoObject;
  }

  SaoObject getNameSaoThienThuy() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên thuỵ";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    return saoObject;
  }

  SaoObject getNameSaoTueDuc() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Tuế đức";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    return saoObject;
  }

  SaoObject getNameSaoTueHop() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Tuế hợp";
    saoObject.mota = "Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoNguyetgiai() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nguyệt giải";
    saoObject.mota = "Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoThanhtam() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thánh tâm";
    saoObject.mota = "Tốt mọi việc, nhất là cầu phúc, tế tự";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoUvitinh() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "U Vi tinh";
    saoObject.mota = "Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoManDucTinh() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Mãn đức tinh";
    saoObject.mota = "Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoYeuYen() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Yếu yên";
    saoObject.mota = "Tốt mọi việc, nhất là giá thú";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoKinhtam() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Kính tâm";
    saoObject.mota = "Tốt đối với tang lễ";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoHoangAn() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Hoàng ân";
    saoObject.mota = "Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoNguHop() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Ngũ hợp";
    saoObject.mota = "Trăm sự cát lợi";
    saoObject.typeSao = LOAISAO.CATTINH;
    return saoObject;
  }

  SaoObject getNameSaoThanhLong() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thanh long";
    saoObject.mota = "Hoàng Đạo - Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoMinhduong() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Minh đường";
    saoObject.mota = "Hoàng Đạo - Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoKimduong() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Kim đường";
    saoObject.mota = "Hoàng Đạo - Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoNgocduong() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Ngọc đường";
    saoObject.mota = "Hoàng Đạo - Tốt mọi việc";
    saoObject.typeSao = LOAISAO.CATTINH;
    saoObject.diemKhoiCong = 1;
    saoObject.diemDongTho = 1;
    saoObject.diemDoTran = 1;
    saoObject.diemKhaiTruong = 1;
    saoObject.diemXuathanh = 1;
    saoObject.diemNhapTrach = 1;
    saoObject.diemMuaNha = 1;
    saoObject.diemMuaOtoXemay = 1;
    saoObject.diemCuoiHoi = 1;
    return saoObject;
  }

  SaoObject getNameSaoThienCuong() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên cương (hay Diệt môn)";
    saoObject.mota = "Xấu mọi việc";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoThienLai() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên lại";
    saoObject.mota = "Xấu mọi việc";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoThienNguc() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên ngục";
    saoObject.mota = "Xấu mọi việc";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoThienHoa() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên hoả";
    saoObject.mota = "Xấu về lợp nhà";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoTieuHongSa() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Tiểu hồng sa";
    saoObject.mota = "Xấu mọi việc";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoDaiHao() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Đại hao (Tử khí, quan phú)";
    saoObject.mota = "Xấu mọi việc";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoTieuHao() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Tiểu hao";
    saoObject.mota = "Xấu về kinh doanh, cầu tài";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoNguyetPha() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nguyệt phá";
    saoObject.mota = "Xấu về xây dựng nhà cửa";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoKiepSat() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Kiếp sát";
    saoObject.mota = "Kỵ xuất hành, giá thú, an táng, xây dựng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoDiaPha() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Địa phá";
    saoObject.mota = "Kỵ xây dựng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoThoPhu() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thổ phủ";
    saoObject.mota = "Kỵ xây dựng,động thổ";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoThoOn() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thổ ôn (thiên cẩu)";
    saoObject.mota = "Kỵ xây dựng, đào ao, đào giếng, xấu về tế tự";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoThienOn() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên ôn";
    saoObject.mota = "Kỵ xây dựng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoThuTu() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thụ tử";
    saoObject.mota = "Xấu mọi việc (trừ săn bắn tốt)";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoHoangVu() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Hoang vu";
    saoObject.mota = "Xấu mọi việc";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoThientac() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên tặc";
    saoObject.mota = "Xấu đối với khởi tạo, động thổ, nhập trạch, khai trương";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoDiatac() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Địa tặc";
    saoObject.mota = "Xấu đối với khởi tạo, an táng, động thổ, xuất hành";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoHoatai() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Hỏa Tai";
    saoObject.mota = "Xấu đối với làm nhà, lợp nhà";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoNguyethoa() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nguyệt hoả, Độc hoả";
    saoObject.mota = "Xấu đối với lợp nhà, làm bếp";
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoNguyetYem() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nguyệt yếm đại hoạ";
    saoObject.mota = "Xấu đối với xuất hành, giá thú";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoNguyethu() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nguyệt hư (Nguyệt sát)";
    saoObject.mota = "Xấu đối với việc giá thú, mở cửa, mở hàng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoHoangSa() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Hoàng sa";
    saoObject.mota = "Xấu đối với xuất hành";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoLucbatthanh() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Lục bất thành";
    saoObject.mota = "Xấu đối với xây dựng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoNhancach() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nhân cách";
    saoObject.mota = "Xấu đối với giá thú, khởi tạo";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoThancach() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Kỵ tế tự";
    saoObject.mota = "Xấu đối với giá thú, khởi tạo";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    return saoObject;
  }

  SaoObject getNameSaoPhimasat() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Phi ma sát (Tai sát)";
    saoObject.mota = "Kỵ giá thú nhập trạch";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoNguquy() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Ngũ quỹ";
    saoObject.mota = "Kỵ xuất hành";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoBangtieu() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Băng tiêu ngoạ hãm";
    saoObject.mota = "Xấu mọi việc";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoHakhoi() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Hà khôi, Cẩu giảo";
    saoObject.mota = "Kỵ khởi công xây nhà cửa, xấu mọi việc";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    return saoObject;
  }

  SaoObject getNameSaoVangVong() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Vãng vong (Thổ kỵ)";
    saoObject.mota = "Kỵ xuất hành, giá thú, cầu tài lộc, động thổ";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoCuukhong() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Cửu không";
    saoObject.mota = "Kỵ xuất hành, cầu tài, khai trương";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoTrungtang() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Trùng tang";
    saoObject.mota = "Kỵ giá thú, an táng, khởi công xây nhà";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoTrungphuc() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Trùng phục";
    saoObject.mota = "Kỵ giá thú, an táng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoChutuoc() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Chu tước hắc đạo";
    saoObject.mota = "Kỵ nhập trạch, khai trương";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoBachho() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Bạch hổ (trùng ngày với Thiên giải -> sao tốt)";
    saoObject.mota = "Kỵ mai táng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoHuyenvu() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Huyền vũ";
    saoObject.mota = "Kỵ mai táng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoCautran() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Câu trận";
    saoObject.mota = "Kỵ mai táng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoLoicong() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Lôi công";
    saoObject.mota = "Xấu với xây dựng nhà cửa";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoCothan() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Cô thần";
    saoObject.mota = "Xấu với giá thú";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoQuatu() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Quả tú";
    saoObject.mota = "Xấu với giá thú";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoSatchu() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Sát chủ";
    saoObject.mota = "Xấu mọi việc";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoNguyethinh() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nguyệt hình";
    saoObject.mota = "Xấu mọi việc";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoToichi() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Tội chỉ";
    saoObject.mota = "Xấu với tế tự, kiện cáo";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    return saoObject;
  }

  SaoObject getNameSaoNguyetkien() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Nguyệt kiến chuyển sát";
    saoObject.mota = "Kỵ động thổ";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoThiendia() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên địa chính chuyển";
    saoObject.mota = "Kỵ động thổ";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoThiendiachuyensat() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thiên địa chuyển sát";
    saoObject.mota = "Kỵ động thổ";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoLobansat() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Lỗ ban sát";
    saoObject.mota = "Kỵ khởi tạo";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoPhudaudat() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Phủ đầu dát";
    saoObject.mota = "Kỵ khởi tạo";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoTamtang() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Tam tang";
    saoObject.mota = "Kỵ khởi tạo, giá thú, an táng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoNguhu() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Ngũ hư";
    saoObject.mota = "Kỵ khởi tạo, giá thú, an táng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoTuthoidaimo() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Tứ thời đại mộ";
    saoObject.mota = "Kỵ an táng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    return saoObject;
  }

  SaoObject getNameSaoThocam() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Thổ cẩm";
    saoObject.mota = "Kỵ xây dựng, an táng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoLysang() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Ly sàng";
    saoObject.mota = "Kỵ giá thú";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoTuthoicoqua() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Tứ thời cô quả";
    saoObject.mota = "Kỵ giá thú";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoKhongphong() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Không phòng";
    saoObject.mota = "Kỵ giá thú";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = 0;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoAmthac() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Âm thác";
    saoObject.mota = "Kỵ xuất hành, giá thú, an táng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = 0;
    saoObject.diemNhapTrach = -1;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  SaoObject getNameSaoDuongthac() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Dương thác";
    saoObject.mota = "Kỵ xuất hành, giá thú, an táng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = 0;
    saoObject.diemDoTran = 0;
    saoObject.diemKhaiTruong = 0;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = 0;
    saoObject.diemMuaOtoXemay = 0;
    saoObject.diemCuoiHoi = 0;
    return saoObject;
  }

  SaoObject getNameSaoQuykhoc() {
    SaoObject saoObject = new SaoObject();
    saoObject.tenSao = "Quỷ khốc";
    saoObject.mota = "Xấu với tế tự, mai táng";
    saoObject.typeSao = LOAISAO.HUNGTINH;
    saoObject.diemKhoiCong = -1;
    saoObject.diemDongTho = -1;
    saoObject.diemDoTran = -1;
    saoObject.diemKhaiTruong = -1;
    saoObject.diemXuathanh = -1;
    saoObject.diemNhapTrach = 0;
    saoObject.diemMuaNha = -1;
    saoObject.diemMuaOtoXemay = -1;
    saoObject.diemCuoiHoi = -1;
    return saoObject;
  }

  List<SaoObject> getSaoTotThang1AmLichWithThienCan(int i, int i2) {
    List<SaoObject> arrayList = [];
    if (i == 0) {
      arrayList.add(getNameSaoThienQuy());
      arrayList.add(getNameSaoTrungtang());
      if (i2 == 2) {
        arrayList.add(getNameSaoDuongthac());
      }
    } else if (i == 1) {
      arrayList.add(getNameSaoThienQuy());
      if (i2 == 3) {
        arrayList.add(getNameSaoThiendiachuyensat());
      }
      if (i2 == 7) {
        arrayList.add(getNameSaoTuthoidaimo());
      }
    } else if (i == 2) {
      arrayList.add(getNameSaoNguyetDuc());
    } else if (i == 3) {
      arrayList.add(getNameSaoThienDuc());
    } else if (i == 4) {
      if (i2 == 2) {
        arrayList.add(getNameSaoThienXa());
      }
    } else if (i == 5) {
      arrayList.add(getNameSaoThienPhuc());
    } else if (i == 6) {
      arrayList.add(getNameSaoTrungphuc());
      if (i2 == 10) {
        arrayList.add(getNameSaoAmthac());
      }
    } else if (i == 7) {
      arrayList.add(getNameSaoNguyetDucHop());
    } else if (i == 8) {
      arrayList.add(getNameSaoNguyetKhong());
      arrayList.add(getNameSaoThienDucHop());
    } else if (i == 9 && i2 == 3) {
      arrayList.add(getNameSaoThiendia());
    }
    if (i2 == 0) {
      arrayList.add(getNameSaoSinhkhi());
      arrayList.add(getNameSaoIchhau());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoThanhLong());
      arrayList.add(getNameSaoThienNguc());
      arrayList.add(getNameSaoThienHoa());
      arrayList.add(getNameSaoPhimasat());
      arrayList.add(getNameSaoLobansat());
    } else if (i2 == 1) {
      arrayList.add(getNameSaoTueHop());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoMinhduong());
      arrayList.add(getNameSaoTucthe());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoDiatac());
      arrayList.add(getNameSaoHoatai());
      arrayList.add(getNameSaoNguyethu());
      arrayList.add(getNameSaoTuthoicoqua());
    } else if (i2 == 2) {
      arrayList.add(getNameSaoManDucTinh());
      arrayList.add(getNameSaoYeuYen());
      arrayList.add(getNameSaoPhuchau());
      arrayList.add(getNameSaoThoPhu());
      arrayList.add(getNameSaoLucbatthanh());
      arrayList.add(getNameSaoVangVong());
      arrayList.add(getNameSaoLoicong());
    } else if (i2 == 3) {
      arrayList.add(getNameSaoChutuoc());
      arrayList.add(getNameSaoNguyetkien());
    } else if (i2 == 4) {
      arrayList.add(getNameSaoThienPhu());
      arrayList.add(getNameSaoThientai());
      arrayList.add(getNameSaoLockho());
      arrayList.add(getNameSaoThoOn());
      arrayList.add(getNameSaoThientac());
      arrayList.add(getNameSaoCuukhong());
      arrayList.add(getNameSaoQuatu());
      arrayList.add(getNameSaoPhudaudat());
      arrayList.add(getNameSaoTamtang());
      arrayList.add(getNameSaoKhongphong());
    } else if (i2 == 5) {
      arrayList.add(getNameSaoDiaTai());
      arrayList.add(getNameSaoHoatDieu());
      arrayList.add(getNameSaoKimduong());
      arrayList.add(getNameSaoThienCuong());
      arrayList.add(getNameSaoTieuHongSa());
      arrayList.add(getNameSaoTieuHao());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoNguyethoa());
      arrayList.add(getNameSaoThancach());
      arrayList.add(getNameSaoBangtieu());
      arrayList.add(getNameSaoSatchu());
      arrayList.add(getNameSaoNguyethinh());
      arrayList.add(getNameSaoNguhu());
    } else if (i2 == 6) {
      arrayList.add(getNameSaoThienMa());
      arrayList.add(getNameSaoNguyetTai());
      arrayList.add(getNameSaoDanNhat());
      arrayList.add(getNameSaoDaiHao());
      arrayList.add(getNameSaoHoangSa());
      arrayList.add(getNameSaoNguquy());
      arrayList.add(getNameSaoBachho());
      arrayList.add(getNameSaoToichi());
    } else if (i2 == 7) {
      arrayList.add(getNameSaoThienThanh());
      arrayList.add(getNameSaoNgocduong());
      arrayList.add(getNameSaoThienOn());
    } else if (i2 == 8) {
      arrayList.add(getNameSaoMinhtinh());
      arrayList.add(getNameSaoNguyetgiai());
      arrayList.add(getNameSaoGiaithan());
      arrayList.add(getNameSaoPhoho());
      arrayList.add(getNameSaoDichMa());
      arrayList.add(getNameSaoNguyetPha());
    } else if (i2 == 9) {
      arrayList.add(getNameSaoPhucsinh());
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoAmDuc());
      arrayList.add(getNameSaoThienLai());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoNhancach());
      arrayList.add(getNameSaoHuyenvu());
      arrayList.add(getNameSaoLysang());
    } else if (i2 == 10) {
      arrayList.add(getNameSaoThienQuan());
      arrayList.add(getNameSaoHoangAn());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoThuTu());
      arrayList.add(getNameSaoNguyetYem());
      arrayList.add(getNameSaoCothan());
      arrayList.add(getNameSaoQuykhoc());
    } else if (i2 == 11) {
      arrayList.add(getNameSaoThanhtam());
      arrayList.add(getNameSaoNguphu());
      arrayList.add(getNameSaoUvitinh());
      arrayList.add(getNameSaoLucHop());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoKiepSat());
      arrayList.add(getNameSaoDiaPha());
      arrayList.add(getNameSaoHakhoi());
      arrayList.add(getNameSaoCautran());
      arrayList.add(getNameSaoThocam());
    }
    return arrayList;
  }

  List<SaoObject> getSaoTotThang2AmLichWithThienCan(int i, int i2) {
    List<SaoObject> arrayList = [];
    if (i == 0) {
      arrayList.add(getNameSaoThienQuy());
      arrayList.add(getNameSaoNguyetDuc());
    } else if (i == 1) {
      arrayList.add(getNameSaoThienQuy());
      arrayList.add(getNameSaoTrungtang());
      if (i2 == 3) {
        arrayList.add(getNameSaoThiendiachuyensat());
        arrayList.add(getNameSaoDuongthac());
      }
      if (i2 == 7) {
        arrayList.add(getNameSaoTuthoidaimo());
      }
    } else if (i != 2) {
      if (i == 3) {
        arrayList.add(getNameSaoNguyetAn());
      } else if (i == 4) {
        arrayList.add(getNameSaoThienPhuc());
        if (i2 == 2) {
          arrayList.add(getNameSaoThienXa());
        }
      } else if (i == 5) {
        arrayList.add(getNameSaoNguyetDucHop());
      } else if (i == 6) {
        arrayList.add(getNameSaoNguyetKhong());
      } else if (i == 7) {
        arrayList.add(getNameSaoTrungphuc());
        if (i2 == 9) {
          arrayList.add(getNameSaoAmthac());
        }
      } else if (i == 9 && i2 == 3) {
        arrayList.add(getNameSaoThiendia());
      }
    }
    if (i2 == 0) {
      arrayList.add(getNameSaoThienDucHop());
      arrayList.add(getNameSaoThienQuan());
      arrayList.add(getNameSaoTueHop());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoThienCuong());
      arrayList.add(getNameSaoDiaPha());
      arrayList.add(getNameSaoDiatac());
      arrayList.add(getNameSaoBangtieu());
      arrayList.add(getNameSaoSatchu());
      arrayList.add(getNameSaoNguyethinh());
      arrayList.add(getNameSaoToichi());
      arrayList.add(getNameSaoLobansat());
    } else if (i2 == 1) {
      arrayList.add(getNameSaoSinhkhi());
      arrayList.add(getNameSaoKinhtam());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoHoangAn());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoCuukhong());
      arrayList.add(getNameSaoCautran());
      arrayList.add(getNameSaoTuthoicoqua());
    } else if (i2 == 2) {
      arrayList.add(getNameSaoNguphu());
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoPhoho());
      arrayList.add(getNameSaoPhuchau());
      arrayList.add(getNameSaoThanhLong());
      arrayList.add(getNameSaoHoangSa());
      arrayList.add(getNameSaoNguquy());
    } else if (i2 == 3) {
      arrayList.add(getNameSaoPhucsinh());
      arrayList.add(getNameSaoQuanNhat());
      arrayList.add(getNameSaoMinhduong());
      arrayList.add(getNameSaoThienNguc());
      arrayList.add(getNameSaoThienHoa());
      arrayList.add(getNameSaoThoPhu());
      arrayList.add(getNameSaoThancach());
      arrayList.add(getNameSaoNguyetkien());
    } else if (i2 == 4) {
      arrayList.add(getNameSaoUvitinh());
      arrayList.add(getNameSaoThuTu());
      arrayList.add(getNameSaoNguyethoa());
      arrayList.add(getNameSaoPhudaudat());
      arrayList.add(getNameSaoTamtang());
    } else if (i2 == 5) {
      arrayList.add(getNameSaoThienPhu());
      arrayList.add(getNameSaoNguyetTai());
      arrayList.add(getNameSaoThanhTam());
      arrayList.add(getNameSaoLockho());
      arrayList.add(getNameSaoDichMa());
      arrayList.add(getNameSaoThoOn());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoVangVong());
      arrayList.add(getNameSaoChutuoc());
      arrayList.add(getNameSaoQuatu());
      arrayList.add(getNameSaoKhongphong());
    } else if (i2 == 6) {
      arrayList.add(getNameSaoThientai());
      arrayList.add(getNameSaoIchhau());
      arrayList.add(getNameSaoDanNhat());
      arrayList.add(getNameSaoThienLai());
      arrayList.add(getNameSaoTieuHao());
      arrayList.add(getNameSaoLucbatthanh());
      arrayList.add(getNameSaoHakhoi());
    } else if (i2 == 7) {
      arrayList.add(getNameSaoDiaTai());
      arrayList.add(getNameSaoManDucTinh());
      arrayList.add(getNameSaoAmDuc());
      arrayList.add(getNameSaoTucthe());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoKimduong());
      arrayList.add(getNameSaoDaiHao());
      arrayList.add(getNameSaoHoatai());
      arrayList.add(getNameSaoNhancach());
    } else if (i2 == 8) {
      arrayList.add(getNameSaoThienDuc());
      arrayList.add(getNameSaoThienMa());
      arrayList.add(getNameSaoNguyetgiai());
      arrayList.add(getNameSaoGiaithan());
      arrayList.add(getNameSaoYeuYen());
      arrayList.add(getNameSaoKiepSat());
      arrayList.add(getNameSaoBachho());
    } else if (i2 == 9) {
      arrayList.add(getNameSaoThienThanh());
      arrayList.add(getNameSaoNgocduong());
      arrayList.add(getNameSaoTieuHongSa());
      arrayList.add(getNameSaoNguyetPha());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoThientac());
      arrayList.add(getNameSaoNguyetYem());
      arrayList.add(getNameSaoPhimasat());
      arrayList.add(getNameSaoNguhu());
      arrayList.add(getNameSaoLysang());
    } else if (i2 == 10) {
      arrayList.add(getNameSaoMinhtinh());
      arrayList.add(getNameSaoHoatDieu());
      arrayList.add(getNameSaoLucHop());
      arrayList.add(getNameSaoThienOn());
      arrayList.add(getNameSaoNguyethu());
      arrayList.add(getNameSaoQuykhoc());
    } else if (i2 == 11) {
      arrayList.add(getNameSaoThienHy());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoHuyenvu());
      arrayList.add(getNameSaoLoicong());
      arrayList.add(getNameSaoCothan());
      arrayList.add(getNameSaoThocam());
    }
    return arrayList;
  }

  List<SaoObject> getSaoTotThang3AmLichWithThienCan(int i, int i2) {
    List<SaoObject> arrayList = [];
    if (i == 0) {
      arrayList.add(getNameSaoThienQuy());
      if (i2 == 4) {
        arrayList.add(getNameSaoDuongthac());
      }
    } else if (i == 1) {
      arrayList.add(getNameSaoThienQuy());
      if (i2 == 3) {
        arrayList.add(getNameSaoThiendiachuyensat());
      }
      if (i2 == 7) {
        arrayList.add(getNameSaoTuthoidaimo());
      }
    } else if (i == 2) {
      arrayList.add(getNameSaoNguyetKhong());
    } else if (i == 3) {
      arrayList.add(getNameSaoThienDucHop());
      arrayList.add(getNameSaoNguyetDucHop());
    } else if (i == 4) {
      if (i2 == 2) {
        arrayList.add(getNameSaoThienXa());
      }
    } else if (i == 5) {
      arrayList.add(getNameSaoTrungtang());
      arrayList.add(getNameSaoTrungphuc());
    } else if (i == 6) {
      arrayList.add(getNameSaoNguyetAn());
      if (i2 == 8) {
        arrayList.add(getNameSaoAmthac());
      }
    } else if (i == 8) {
      arrayList.add(getNameSaoNguyetDuc());
    } else if (i == 9 && i2 == 3) {
      arrayList.add(getNameSaoThiendia());
    }
    if (i2 == 0) {
      arrayList.add(getNameSaoMinhtinh());
      arrayList.add(getNameSaoThanhTam());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoHoangSa());
      arrayList.add(getNameSaoCothan());
      arrayList.add(getNameSaoLobansat());
      arrayList.add(getNameSaoKhongphong());
    } else if (i2 == 1) {
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoIchhau());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoTieuHongSa());
      arrayList.add(getNameSaoDiaPha());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoThancach());
      arrayList.add(getNameSaoBangtieu());
      arrayList.add(getNameSaoHakhoi());
      arrayList.add(getNameSaoHuyenvu());
      arrayList.add(getNameSaoNguhu());
      arrayList.add(getNameSaoTuthoicoqua());
    } else if (i2 == 2) {
      arrayList.add(getNameSaoSinhkhi());
      arrayList.add(getNameSaoThienQuan());
      arrayList.add(getNameSaoTucthe());
      arrayList.add(getNameSaoDichMa());
      arrayList.add(getNameSaoPhuchau());
      arrayList.add(getNameSaoHoangAn());
      arrayList.add(getNameSaoThientac());
      arrayList.add(getNameSaoHoatai());
    } else if (i2 == 3) {
      arrayList.add(getNameSaoYeuYen());
      arrayList.add(getNameSaoThienLai());
      arrayList.add(getNameSaoNguyethoa());
      arrayList.add(getNameSaoCautran());
      arrayList.add(getNameSaoNguyetkien());
    } else if (i2 == 4) {
      arrayList.add(getNameSaoManDucTinh());
      arrayList.add(getNameSaoThanhLong());
      arrayList.add(getNameSaoThoPhu());
      arrayList.add(getNameSaoThienOn());
      arrayList.add(getNameSaoNguquy());
      arrayList.add(getNameSaoNguyethinh());
      arrayList.add(getNameSaoPhudaudat());
      arrayList.add(getNameSaoTamtang());
    } else if (i2 == 5) {
      arrayList.add(getNameSaoNguyetTai());
      arrayList.add(getNameSaoNguphu());
      arrayList.add(getNameSaoAmDuc());
      arrayList.add(getNameSaoMinhduong());
      arrayList.add(getNameSaoKiepSat());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoNhancach());
      arrayList.add(getNameSaoLoicong());
    } else if (i2 == 6) {
      arrayList.add(getNameSaoThienPhu());
      arrayList.add(getNameSaoLockho());
      arrayList.add(getNameSaoDanNhat());
      arrayList.add(getNameSaoThienNguc());
      arrayList.add(getNameSaoThienHoa());
      arrayList.add(getNameSaoThoOn());
      arrayList.add(getNameSaoPhimasat());
      arrayList.add(getNameSaoQuatu());
    } else if (i2 == 7) {
      arrayList.add(getNameSaoHoatDieu());
      arrayList.add(getNameSaoThienCuong());
      arrayList.add(getNameSaoTieuHao());
      arrayList.add(getNameSaoNguyethu());
      arrayList.add(getNameSaoChutuoc());
      arrayList.add(getNameSaoSatchu());
      arrayList.add(getNameSaoToichi());
    } else if (i2 == 8) {
      arrayList.add(getNameSaoThientai());
      arrayList.add(getNameSaoKinhtam());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoDaiHao());
      arrayList.add(getNameSaoNguyetYem());
      arrayList.add(getNameSaoVangVong());
    } else if (i2 == 9) {
      arrayList.add(getNameSaoDiaTai());
      arrayList.add(getNameSaoNguyetgiai());
      arrayList.add(getNameSaoPhoho());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoKimduong());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoLysang());
    } else if (i2 == 10) {
      arrayList.add(getNameSaoThienMa());
      arrayList.add(getNameSaoPhucsinh());
      arrayList.add(getNameSaoGiaithan());
      arrayList.add(getNameSaoNguyetPha());
      arrayList.add(getNameSaoLucbatthanh());
      arrayList.add(getNameSaoCuukhong());
      arrayList.add(getNameSaoBachho());
      arrayList.add(getNameSaoQuykhoc());
    } else if (i2 == 11) {
      arrayList.add(getNameSaoThienThanh());
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoTueHop());
      arrayList.add(getNameSaoNgocduong());
      arrayList.add(getNameSaoThuTu());
      arrayList.add(getNameSaoDiatac());
      arrayList.add(getNameSaoThocam());
    }
    return arrayList;
  }

  List<SaoObject> getSaoTotThang4AmLichWithThienCan(int i, int i2) {
    List<SaoObject> arrayList = [];
    if (i == 0) {
      if (i2 == 6) {
        arrayList.add(getNameSaoThienXa());
      }
      arrayList.add(getNameSaoNguyetKhong());
      arrayList.add(getNameSaoThanhTam());
    } else if (i == 1) {
      arrayList.add(getNameSaoNguyetDucHop());
    } else if (i == 2) {
      arrayList.add(getNameSaoThienDucHop());
      arrayList.add(getNameSaoThienQuy());
      arrayList.add(getNameSaoTrungtang());
      if (i2 == 6) {
        arrayList.add(getNameSaoThiendia());
        arrayList.add(getNameSaoThiendiachuyensat());
      }
      if (i2 == 10) {
        arrayList.add(getNameSaoTuthoidaimo());
      }
    } else if (i == 3) {
      arrayList.add(getNameSaoThienQuy());
      if (i2 == 7) {
        arrayList.add(getNameSaoAmthac());
      }
      if (i2 == 5) {
        arrayList.add(getNameSaoDuongthac());
      }
    } else if (i == 5) {
      arrayList.add(getNameSaoNguyetAn());
    } else if (i == 6) {
      arrayList.add(getNameSaoNguyetDuc());
    } else if (i == 7) {
      arrayList.add(getNameSaoThienPhuc());
    } else if (i == 8) {
      arrayList.add(getNameSaoTrungphuc());
    } else if (i == 9) {
      arrayList.add(getNameSaoThienPhuc());
    }
    if (i2 == 0) {
      arrayList.add(getNameSaoThienMa());
      arrayList.add(getNameSaoHoatDieu());
      arrayList.add(getNameSaoThienLai());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoBachho());
    } else if (i2 == 1) {
      arrayList.add(getNameSaoThienHy());
      arrayList.add(getNameSaoThienThanh());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoNgocduong());
      arrayList.add(getNameSaoCothan());
      arrayList.add(getNameSaoToichi());
    } else if (i2 == 2) {
      arrayList.add(getNameSaoMinhtinh());
      arrayList.add(getNameSaoKinhtam());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoThienCuong());
      arrayList.add(getNameSaoKiepSat());
      arrayList.add(getNameSaoDiaPha());
      arrayList.add(getNameSaoThienOn());
      arrayList.add(getNameSaoNguyethoa());
      arrayList.add(getNameSaoBangtieu());
      arrayList.add(getNameSaoThocam());
      arrayList.add(getNameSaoLysang());
    } else if (i2 == 3) {
      arrayList.add(getNameSaoSinhkhi());
      arrayList.add(getNameSaoAmDuc());
      arrayList.add(getNameSaoPhoho());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoNhancach());
      arrayList.add(getNameSaoPhimasat());
      arrayList.add(getNameSaoHuyenvu());
      arrayList.add(getNameSaoSatchu());
      arrayList.add(getNameSaoLobansat());
    } else if (i2 == 4) {
      arrayList.add(getNameSaoThienQuan());
      arrayList.add(getNameSaoPhucsinh());
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoNguyethu());
      arrayList.add(getNameSaoTuthoicoqua());
    } else if (i2 == 5) {
      arrayList.add(getNameSaoPhuchau());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoHoangAn());
      arrayList.add(getNameSaoTieuHongSa());
      arrayList.add(getNameSaoCautran());
      arrayList.add(getNameSaoThoPhu());
      arrayList.add(getNameSaoThuTu());
      arrayList.add(getNameSaoLucbatthanh());
    } else if (i2 == 6) {
      arrayList.add(getNameSaoUvitinh());
      arrayList.add(getNameSaoThanhLong());
      arrayList.add(getNameSaoHoangSa());
      arrayList.add(getNameSaoNguyetkien());
      arrayList.add(getNameSaoLysang());
    } else if (i2 == 7) {
      arrayList.add(getNameSaoThienPhu());
      arrayList.add(getNameSaoNguyetTai());
      arrayList.add(getNameSaoLockho());
      arrayList.add(getNameSaoIchhau());
      arrayList.add(getNameSaoMinhduong());
      arrayList.add(getNameSaoThoOn());
      arrayList.add(getNameSaoThientac());
      arrayList.add(getNameSaoNguyetYem());
      arrayList.add(getNameSaoCuukhong());
      arrayList.add(getNameSaoQuatu());
      arrayList.add(getNameSaoPhudaudat());
      arrayList.add(getNameSaoTamtang());
    } else if (i2 == 8) {
      arrayList.add(getNameSaoNguphu());
      arrayList.add(getNameSaoTucthe());
      arrayList.add(getNameSaoLucHop());
      arrayList.add(getNameSaoTieuHao());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoHoatai());
      arrayList.add(getNameSaoHakhoi());
      arrayList.add(getNameSaoLoicong());
      arrayList.add(getNameSaoNguyethinh());
      arrayList.add(getNameSaoNguhu());
    } else if (i2 == 9) {
      arrayList.add(getNameSaoManDucTinh());
      arrayList.add(getNameSaoNguyetgiai());
      arrayList.add(getNameSaoYeuYen());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoDanNhat());
      arrayList.add(getNameSaoThienNguc());
      arrayList.add(getNameSaoThienHoa());
      arrayList.add(getNameSaoDaiHao());
      arrayList.add(getNameSaoNguquy());
      arrayList.add(getNameSaoChutuoc());
    } else if (i2 == 10) {
      arrayList.add(getNameSaoThientai());
      arrayList.add(getNameSaoTueHop());
      arrayList.add(getNameSaoGiaithan());
      arrayList.add(getNameSaoDiatac());
      arrayList.add(getNameSaoKhongphong());
      arrayList.add(getNameSaoQuykhoc());
    } else if (i2 == 11) {
      arrayList.add(getNameSaoDiaTai());
      arrayList.add(getNameSaoDichMa());
      arrayList.add(getNameSaoKimduong());
      arrayList.add(getNameSaoNguyetPha());
      arrayList.add(getNameSaoThancach());
      arrayList.add(getNameSaoVangVong());
    }
    return arrayList;
  }

  List<SaoObject> getSaoTotThang5AmLichWithThienCan(int i, int i2) {
    List<SaoObject> arrayList = [];
    if (!(i == 0 || i == 1)) {
      if (i == 2) {
        arrayList.add(getNameSaoNguyetDuc());
        arrayList.add(getNameSaoThienQuy());
        if (i2 == 6) {
          arrayList.add(getNameSaoThiendia());
          arrayList.add(getNameSaoThiendiachuyensat());
          arrayList.add(getNameSaoAmthac());
          arrayList.add(getNameSaoDuongthac());
        }
        if (i2 == 10) {
          arrayList.add(getNameSaoTuthoidaimo());
        }
      } else if (i == 3) {
        arrayList.add(getNameSaoThienQuy());
        arrayList.add(getNameSaoTrungtang());
      } else if (i == 4) {
        arrayList.add(getNameSaoNguyetAn());
      } else if (!(i == 5 || i == 6)) {
        if (i == 7) {
          arrayList.add(getNameSaoNguyetDucHop());
          arrayList.add(getNameSaoThienPhuc());
        } else if (i == 8) {
          arrayList.add(getNameSaoThienPhuc());
          arrayList.add(getNameSaoNguyetKhong());
        } else if (i == 9) {
          arrayList.add(getNameSaoTrungphuc());
        }
      }
    }
    if (i2 == 0) {
      arrayList.add(getNameSaoThientai());
      arrayList.add(getNameSaoGiaithan());
      arrayList.add(getNameSaoThienNguc());
      arrayList.add(getNameSaoThienHoa());
      arrayList.add(getNameSaoNguyetPha());
      arrayList.add(getNameSaoThuTu());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoThientac());
      arrayList.add(getNameSaoPhimasat());
      arrayList.add(getNameSaoNguhu());
    } else if (i2 == 1) {
      arrayList.add(getNameSaoDiaTai());
      arrayList.add(getNameSaoThanhTam());
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoAmDuc());
      arrayList.add(getNameSaoKimduong());
      arrayList.add(getNameSaoNguyethoa());
      arrayList.add(getNameSaoNguyethu());
      arrayList.add(getNameSaoNhancach());
    } else if (i2 == 2) {
      arrayList.add(getNameSaoThienDucHop());
      arrayList.add(getNameSaoThienHy());
      arrayList.add(getNameSaoThienMa());
      arrayList.add(getNameSaoIchhau());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoHoangSa());
      arrayList.add(getNameSaoBachho());
      arrayList.add(getNameSaoLoicong());
      arrayList.add(getNameSaoCothan());
      arrayList.add(getNameSaoThocam());
      arrayList.add(getNameSaoLysang());
    } else if (i2 == 3) {
      arrayList.add(getNameSaoThienThanh());
      arrayList.add(getNameSaoUvitinh());
      arrayList.add(getNameSaoTucthe());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoNgocduong());
      arrayList.add(getNameSaoDiaPha());
      arrayList.add(getNameSaoHoatai());
      arrayList.add(getNameSaoNguquy());
      arrayList.add(getNameSaoBangtieu());
      arrayList.add(getNameSaoHakhoi());
      arrayList.add(getNameSaoVangVong());
      arrayList.add(getNameSaoCuukhong());
      arrayList.add(getNameSaoLobansat());
    } else if (i2 == 4) {
      arrayList.add(getNameSaoSinhkhi());
      arrayList.add(getNameSaoMinhtinh());
      arrayList.add(getNameSaoYeuYen());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoTuthoicoqua());
    } else if (i2 == 5) {
      arrayList.add(getNameSaoPhuchau());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoHuyenvu());
    } else if (i2 == 6) {
      arrayList.add(getNameSaoThienQuan());
      arrayList.add(getNameSaoManDucTinh());
      arrayList.add(getNameSaoQuanNhat());
      arrayList.add(getNameSaoThoPhu());
      arrayList.add(getNameSaoThienOn());
      arrayList.add(getNameSaoNguyetYem());
      arrayList.add(getNameSaoNguyethinh());
      arrayList.add(getNameSaoNguyetkien());
      arrayList.add(getNameSaoLysang());
    } else if (i2 == 7) {
      arrayList.add(getNameSaoLucHop());
      arrayList.add(getNameSaoCautran());
      arrayList.add(getNameSaoPhudaudat());
      arrayList.add(getNameSaoTamtang());
    } else if (i2 == 8) {
      arrayList.add(getNameSaoThienPhu());
      arrayList.add(getNameSaoLockho());
      arrayList.add(getNameSaoDichMa());
      arrayList.add(getNameSaoThanhLong());
      arrayList.add(getNameSaoThoOn());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoQuatu());
      arrayList.add(getNameSaoSatchu());
      arrayList.add(getNameSaoToichi());
    } else if (i2 == 9) {
      arrayList.add(getNameSaoNguyetTai());
      arrayList.add(getNameSaoKinhtam());
      arrayList.add(getNameSaoTueHop());
      arrayList.add(getNameSaoHoatDieu());
      arrayList.add(getNameSaoDanNhat());
      arrayList.add(getNameSaoHoangAn());
      arrayList.add(getNameSaoMinhduong());
      arrayList.add(getNameSaoThienCuong());
      arrayList.add(getNameSaoThienLai());
      arrayList.add(getNameSaoTieuHongSa());
      arrayList.add(getNameSaoTieuHao());
      arrayList.add(getNameSaoDiatac());
      arrayList.add(getNameSaoLucbatthanh());
      arrayList.add(getNameSaoThancach());
    } else if (i2 == 10) {
      arrayList.add(getNameSaoNguyetgiai());
      arrayList.add(getNameSaoPhoho());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoDaiHao());
      arrayList.add(getNameSaoQuykhoc());
    } else if (i2 == 11) {
      arrayList.add(getNameSaoThienQuy());
      arrayList.add(getNameSaoNguphu());
      arrayList.add(getNameSaoPhucsinh());
      arrayList.add(getNameSaoKiepSat());
      arrayList.add(getNameSaoChutuoc());
      arrayList.add(getNameSaoKhongphong());
    }
    return arrayList;
  }

  List<SaoObject> getSaoTotThang6AmLichWithThienCan(int i, int i2) {
    List<SaoObject> arrayList = [];
    if (i == 0) {
      arrayList.add(getNameSaoThienQuy());
      arrayList.add(getNameSaoNguyetDuc());
      if (i2 == 6) {
        arrayList.add(getNameSaoThienXa());
      }
    } else if (i != 1) {
      if (i == 2) {
        arrayList.add(getNameSaoThienQuy());
        if (i2 == 6) {
          arrayList.add(getNameSaoThiendia());
          arrayList.add(getNameSaoThiendiachuyensat());
        }
        if (i2 == 10) {
          arrayList.add(getNameSaoTuthoidaimo());
        }
      } else if (i == 3) {
        arrayList.add(getNameSaoThienQuy());
        if (i2 == 5) {
          arrayList.add(getNameSaoAmthac());
        }
        if (i2 == 7) {
          arrayList.add(getNameSaoDuongthac());
        }
      } else if (i == 4) {
        arrayList.add(getNameSaoTrungphuc());
      } else if (i == 5) {
        arrayList.add(getNameSaoThienDucHop());
        arrayList.add(getNameSaoNguyetDucHop());
        arrayList.add(getNameSaoTrungtang());
      } else if (i == 6) {
        arrayList.add(getNameSaoNguyetKhong());
      } else if (i == 7) {
        arrayList.add(getNameSaoNguyetAn());
      }
    }
    if (i2 == 0) {
      arrayList.add(getNameSaoGiaithan());
      arrayList.add(getNameSaoThienOn());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoNguyethoa());
      arrayList.add(getNameSaoHoangSa());
      arrayList.add(getNameSaoCuukhong());
    } else if (i2 == 1) {
      arrayList.add(getNameSaoTieuHongSa());
      arrayList.add(getNameSaoNguyetPha());
      arrayList.add(getNameSaoLucbatthanh());
      arrayList.add(getNameSaoChutuoc());
      arrayList.add(getNameSaoNguyethinh());
    } else if (i2 == 2) {
      arrayList.add(getNameSaoThientai());
      arrayList.add(getNameSaoNguphu());
      arrayList.add(getNameSaoHoatDieu());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoToichi());
      arrayList.add(getNameSaoThocam());
      arrayList.add(getNameSaoLysang());
    } else if (i2 == 3) {
      arrayList.add(getNameSaoThienHy());
      arrayList.add(getNameSaoDiaTai());
      arrayList.add(getNameSaoKinhtam());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoHoangAn());
      arrayList.add(getNameSaoKimduong());
      arrayList.add(getNameSaoThienNguc());
      arrayList.add(getNameSaoThienHoa());
      arrayList.add(getNameSaoCothan());
      arrayList.add(getNameSaoLobansat());
    } else if (i2 == 4) {
      arrayList.add(getNameSaoThienMa());
      arrayList.add(getNameSaoPhoho());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoThienCuong());
      arrayList.add(getNameSaoDiaPha());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoBachho());
      arrayList.add(getNameSaoNguhu());
      arrayList.add(getNameSaoTuthoicoqua());
    } else if (i2 == 5) {
      arrayList.add(getNameSaoSinhkhi());
      arrayList.add(getNameSaoThienThanh());
      arrayList.add(getNameSaoPhucsinh());
      arrayList.add(getNameSaoDichMa());
      arrayList.add(getNameSaoPhuchau());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoNgocduong());
      arrayList.add(getNameSaoThientac());
      arrayList.add(getNameSaoNguyetYem());
    } else if (i2 == 6) {
      arrayList.add(getNameSaoMinhtinh());
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoLucHop());
      arrayList.add(getNameSaoThienLai());
      arrayList.add(getNameSaoThuTu());
      arrayList.add(getNameSaoVangVong());
      arrayList.add(getNameSaoNguyetkien());
      arrayList.add(getNameSaoLysang());
    } else if (i2 == 7) {
      arrayList.add(getNameSaoThanhTam());
      arrayList.add(getNameSaoThoPhu());
      arrayList.add(getNameSaoThancach());
      arrayList.add(getNameSaoHuyenvu());
      arrayList.add(getNameSaoPhudaudat());
      arrayList.add(getNameSaoTamtang());
      arrayList.add(getNameSaoKhongphong());
    } else if (i2 == 8) {
      arrayList.add(getNameSaoThienQuan());
      arrayList.add(getNameSaoUvitinh());
      arrayList.add(getNameSaoTueHop());
      arrayList.add(getNameSaoIchhau());
      arrayList.add(getNameSaoKiepSat());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoDiatac());
      arrayList.add(getNameSaoNguquy());
    } else if (i2 == 9) {
      arrayList.add(getNameSaoThienPhu());
      arrayList.add(getNameSaoLockho());
      arrayList.add(getNameSaoTucthe());
      arrayList.add(getNameSaoDanNhat());
      arrayList.add(getNameSaoThoOn());
      arrayList.add(getNameSaoHoatai());
      arrayList.add(getNameSaoPhimasat());
      arrayList.add(getNameSaoCautran());
      arrayList.add(getNameSaoQuatu());
    } else if (i2 == 10) {
      arrayList.add(getNameSaoNguyetgiai());
      arrayList.add(getNameSaoYeuYen());
      arrayList.add(getNameSaoThanhLong());
      arrayList.add(getNameSaoTieuHao());
      arrayList.add(getNameSaoNguyethu());
      arrayList.add(getNameSaoBangtieu());
      arrayList.add(getNameSaoHakhoi());
      arrayList.add(getNameSaoSatchu());
      arrayList.add(getNameSaoQuykhoc());
    } else if (i2 == 11) {
      arrayList.add(getNameSaoNguyetTai());
      arrayList.add(getNameSaoAmDuc());
      arrayList.add(getNameSaoManDucTinh());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoMinhduong());
      arrayList.add(getNameSaoThienCuong());
      arrayList.add(getNameSaoDaiHao());
      arrayList.add(getNameSaoNhancach());
      arrayList.add(getNameSaoLoicong());
    }
    return arrayList;
  }

  List<SaoObject> getSaoTotThang7AmLichWithThienCan(int i, int i2) {
    List<SaoObject> arrayList = [];
    if (i == 0) {
      arrayList.add(getNameSaoTrungphuc());
      if (i2 == 4) {
        arrayList.add(getNameSaoAmthac());
      }
    } else if (i == 1) {
      arrayList.add(getNameSaoThienPhuc());
    } else if (i == 2) {
      arrayList.add(getNameSaoNguyetKhong());
    } else if (i == 3) {
      arrayList.add(getNameSaoNguyetDucHop());
      if (i2 == 9) {
        arrayList.add(getNameSaoThiendia());
      }
    } else if (i == 4) {
      arrayList.add(getNameSaoThienDucHop());
      if (i2 == 8) {
        arrayList.add(getNameSaoThienXa());
      }
    } else if (i != 5) {
      if (i == 6) {
        arrayList.add(getNameSaoThienQuy());
        arrayList.add(getNameSaoTrungtang());
        if (i2 == 8) {
          arrayList.add(getNameSaoDuongthac());
        }
      } else if (i == 7) {
        arrayList.add(getNameSaoThienQuy());
        if (i2 == 9) {
          arrayList.add(getNameSaoThiendiachuyensat());
        }
        if (i2 == 1) {
          arrayList.add(getNameSaoTuthoidaimo());
        }
      } else if (i == 8) {
        arrayList.add(getNameSaoNguyetDuc());
        arrayList.add(getNameSaoNguyetAn());
      }
    }
    if (i2 == 0) {
      arrayList.add(getNameSaoPhucsinh());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoDanNhat());
      arrayList.add(getNameSaoHoangAn());
      arrayList.add(getNameSaoThanhLong());
      arrayList.add(getNameSaoDaiHao());
    } else if (i2 == 1) {
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoMinhduong());
      arrayList.add(getNameSaoThuTu());
      arrayList.add(getNameSaoNguquy());
      arrayList.add(getNameSaoSatchu());
    } else if (i2 == 2) {
      arrayList.add(getNameSaoThienQuy());
      arrayList.add(getNameSaoThanhTam());
      arrayList.add(getNameSaoGiaithan());
      arrayList.add(getNameSaoDichMa());
      arrayList.add(getNameSaoNguyetPha());
      arrayList.add(getNameSaoNguyethinh());
      arrayList.add(getNameSaoKhongphong());
    } else if (i2 == 3) {
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoIchhau());
      arrayList.add(getNameSaoThienLai());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoChutuoc());
    } else if (i2 == 4) {
      arrayList.add(getNameSaoThienHy());
      arrayList.add(getNameSaoThientai());
      arrayList.add(getNameSaoTucthe());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoNguyetYem());
      arrayList.add(getNameSaoCothan());
    } else if (i2 == 5) {
      arrayList.add(getNameSaoDiaTai());
      arrayList.add(getNameSaoNguphu());
      arrayList.add(getNameSaoUvitinh());
      arrayList.add(getNameSaoYeuYen());
      arrayList.add(getNameSaoLucHop());
      arrayList.add(getNameSaoKimduong());
      arrayList.add(getNameSaoTieuHongSa());
      arrayList.add(getNameSaoKiepSat());
      arrayList.add(getNameSaoDiaPha());
      arrayList.add(getNameSaoThancach());
      arrayList.add(getNameSaoHakhoi());
      arrayList.add(getNameSaoLoicong());
      arrayList.add(getNameSaoThocam());
    } else if (i2 == 6) {
      arrayList.add(getNameSaoSinhkhi());
      arrayList.add(getNameSaoThienMa());
      arrayList.add(getNameSaoNguyetTai());
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoThienCuong());
      arrayList.add(getNameSaoThienNguc());
      arrayList.add(getNameSaoThienHoa());
      arrayList.add(getNameSaoHoangSa());
      arrayList.add(getNameSaoPhimasat());
      arrayList.add(getNameSaoBachho());
      arrayList.add(getNameSaoLobansat());
    } else if (i2 == 7) {
      arrayList.add(getNameSaoThienThanh());
      arrayList.add(getNameSaoTueHop());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoNgocduong());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoDiatac());
      arrayList.add(getNameSaoNguyethu());
      arrayList.add(getNameSaoTuthoicoqua());
    } else if (i2 == 8) {
      arrayList.add(getNameSaoMinhtinh());
      arrayList.add(getNameSaoManDucTinh());
      arrayList.add(getNameSaoPhuchau());
      arrayList.add(getNameSaoThoPhu());
      arrayList.add(getNameSaoLucbatthanh());
    } else if (i2 == 9) {
      arrayList.add(getNameSaoAmDuc());
      arrayList.add(getNameSaoThienOn());
      arrayList.add(getNameSaoNhancach());
      arrayList.add(getNameSaoVangVong());
      arrayList.add(getNameSaoCuukhong());
      arrayList.add(getNameSaoHuyenvu());
      arrayList.add(getNameSaoToichi());
      arrayList.add(getNameSaoNguyetkien());
      arrayList.add(getNameSaoPhudaudat());
    } else if (i2 == 10) {
      arrayList.add(getNameSaoThienPhu());
      arrayList.add(getNameSaoThienQuan());
      arrayList.add(getNameSaoLockho());
      arrayList.add(getNameSaoKinhtam());
      arrayList.add(getNameSaoThoOn());
      arrayList.add(getNameSaoThientac());
      arrayList.add(getNameSaoHoatai());
      arrayList.add(getNameSaoQuatu());
      arrayList.add(getNameSaoTamtang());
      arrayList.add(getNameSaoLysang());
      arrayList.add(getNameSaoQuykhoc());
    } else if (i2 == 11) {
      arrayList.add(getNameSaoNguyetgiai());
      arrayList.add(getNameSaoHoatDieu());
      arrayList.add(getNameSaoPhoho());
      arrayList.add(getNameSaoTieuHao());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoNguyethoa());
      arrayList.add(getNameSaoBangtieu());
      arrayList.add(getNameSaoCautran());
      arrayList.add(getNameSaoNguhu());
    }
    return arrayList;
  }

  List<SaoObject> getSaoTotThang8AmLichWithThienCan(int i, int i2) {
    List<SaoObject> arrayList = [];
    if (i == 0) {
      arrayList.add(getNameSaoThienPhuc());
      arrayList.add(getNameSaoNguyetKhong());
    } else if (i == 1) {
      arrayList.add(getNameSaoNguyetDucHop());
      arrayList.add(getNameSaoTrungphuc());
      if (i2 == 3) {
        arrayList.add(getNameSaoAmthac());
      }
    } else if (i == 2) {
      arrayList.add(getNameSaoThienQuy());
    } else if (i == 3) {
      if (i2 == 9) {
        arrayList.add(getNameSaoThiendia());
      }
    } else if (i == 4) {
      if (i2 == 8) {
        arrayList.add(getNameSaoThienXa());
      }
    } else if (i != 5) {
      if (i == 6) {
        arrayList.add(getNameSaoNguyetDuc());
        arrayList.add(getNameSaoThienQuy());
      } else if (i == 7) {
        arrayList.add(getNameSaoThienQuy());
        arrayList.add(getNameSaoTrungtang());
        if (i2 == 9) {
          arrayList.add(getNameSaoThiendiachuyensat());
          arrayList.add(getNameSaoDuongthac());
        }
        if (i2 == 1) {
          arrayList.add(getNameSaoTuthoidaimo());
        }
      } else if (i != 8 && i == 9) {
        arrayList.add(getNameSaoNguyetAn());
      }
    }
    if (i2 == 0) {
      arrayList.add(getNameSaoThienQuan());
      arrayList.add(getNameSaoDanNhat());
      arrayList.add(getNameSaoThienLai());
      arrayList.add(getNameSaoTieuHao());
      arrayList.add(getNameSaoLucbatthanh());
      arrayList.add(getNameSaoHakhoi());
      arrayList.add(getNameSaoVangVong());
    } else if (i2 == 1) {
      arrayList.add(getNameSaoManDucTinh());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoCautran());
      arrayList.add(getNameSaoThienCuong());
      arrayList.add(getNameSaoDaiHao());
    } else if (i2 == 2) {
      arrayList.add(getNameSaoGiaithan());
      arrayList.add(getNameSaoThanhLong());
      arrayList.add(getNameSaoKiepSat());
      arrayList.add(getNameSaoHoangSa());
    } else if (i2 == 3) {
      arrayList.add(getNameSaoMinhduong());
      arrayList.add(getNameSaoNguyetPha());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoThientac());
      arrayList.add(getNameSaoNguyetYem());
      arrayList.add(getNameSaoThancach());
      arrayList.add(getNameSaoPhimasat());
      arrayList.add(getNameSaoToichi());
      arrayList.add(getNameSaoNguhu());
      arrayList.add(getNameSaoKhongphong());
    } else if (i2 == 4) {
      arrayList.add(getNameSaoKinhtam());
      arrayList.add(getNameSaoHoatDieu());
      arrayList.add(getNameSaoLucHop());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoHoatai());
      arrayList.add(getNameSaoNguyethu());
    } else if (i2 == 5) {
      arrayList.add(getNameSaoThienHy());
      arrayList.add(getNameSaoNguyetTai());
      arrayList.add(getNameSaoPhoho());
      arrayList.add(getNameSaoNguquy());
      arrayList.add(getNameSaoChutuoc());
      arrayList.add(getNameSaoCothan());
      arrayList.add(getNameSaoThocam());
    } else if (i2 == 6) {
      arrayList.add(getNameSaoThientai());
      arrayList.add(getNameSaoPhucsinh());
      arrayList.add(getNameSaoTueHop());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoHoangAn());
      arrayList.add(getNameSaoDiaPha());
      arrayList.add(getNameSaoDiatac());
      arrayList.add(getNameSaoBangtieu());
      arrayList.add(getNameSaoCuukhong());
      arrayList.add(getNameSaoLobansat());
    } else if (i2 == 7) {
      arrayList.add(getNameSaoSinhkhi());
      arrayList.add(getNameSaoDiaTai());
      arrayList.add(getNameSaoAmDuc());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoKimduong());
      arrayList.add(getNameSaoThuTu());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoNhancach());
      arrayList.add(getNameSaoTuthoicoqua());
    } else if (i2 == 8) {
      arrayList.add(getNameSaoThienMa());
      arrayList.add(getNameSaoThanhTam());
      arrayList.add(getNameSaoNguphu());
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoPhuchau());
      arrayList.add(getNameSaoThienOn());
      arrayList.add(getNameSaoBachho());
      arrayList.add(getNameSaoLoicong());
    } else if (i2 == 9) {
      arrayList.add(getNameSaoThienThanh());
      arrayList.add(getNameSaoQuanNhat());
      arrayList.add(getNameSaoIchhau());
      arrayList.add(getNameSaoNgocduong());
      arrayList.add(getNameSaoThienNguc());
      arrayList.add(getNameSaoThienHoa());
      arrayList.add(getNameSaoTieuHongSa());
      arrayList.add(getNameSaoThoPhu());
      arrayList.add(getNameSaoNguyethinh());
      arrayList.add(getNameSaoNguyetkien());
      arrayList.add(getNameSaoPhudaudat());
    } else if (i2 == 10) {
      arrayList.add(getNameSaoMinhtinh());
      arrayList.add(getNameSaoUvitinh());
      arrayList.add(getNameSaoTucthe());
      arrayList.add(getNameSaoNguyethoa());
      arrayList.add(getNameSaoTamtang());
      arrayList.add(getNameSaoLysang());
      arrayList.add(getNameSaoQuykhoc());
    } else if (i2 == 11) {
      arrayList.add(getNameSaoThienDucHop());
      arrayList.add(getNameSaoThienPhu());
      arrayList.add(getNameSaoLockho());
      arrayList.add(getNameSaoNguyetgiai());
      arrayList.add(getNameSaoYeuYen());
      arrayList.add(getNameSaoDichMa());
      arrayList.add(getNameSaoThoOn());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoHuyenvu());
      arrayList.add(getNameSaoQuatu());
      arrayList.add(getNameSaoSatchu());
    }
    return arrayList;
  }

  List<SaoObject> getSaoTotThang9AmLichWithThienCan(int i, int i2) {
    List<SaoObject> arrayList = [];
    if (i == 0) {
      if (i2 == 2) {
        arrayList.add(getNameSaoAmthac());
      }
    } else if (i != 1) {
      if (i == 2) {
        arrayList.add(getNameSaoThienQuy());
        arrayList.add(getNameSaoNguyetDuc());
      } else if (i == 3) {
        if (i2 == 9) {
          arrayList.add(getNameSaoThiendia());
        }
      } else if (i == 4) {
        if (i2 == 8) {
          arrayList.add(getNameSaoThienXa());
        }
      } else if (i == 5) {
        arrayList.add(getNameSaoTrungtang());
        arrayList.add(getNameSaoTrungphuc());
      } else if (i == 6) {
        arrayList.add(getNameSaoThienQuy());
        arrayList.add(getNameSaoNguyetAn());
        if (i2 == 10) {
          arrayList.add(getNameSaoDuongthac());
        }
      } else if (i == 7) {
        arrayList.add(getNameSaoThienDucHop());
        arrayList.add(getNameSaoNguyetDucHop());
        arrayList.add(getNameSaoThienQuy());
        if (i2 == 9) {
          arrayList.add(getNameSaoThiendiachuyensat());
        }
        if (i2 == 1) {
          arrayList.add(getNameSaoTuthoidaimo());
        }
      } else if (i == 8) {
        arrayList.add(getNameSaoNguyetKhong());
      }
    }
    if (i2 == 0) {
      arrayList.add(getNameSaoThienPhu());
      arrayList.add(getNameSaoMinhtinh());
      arrayList.add(getNameSaoLockho());
      arrayList.add(getNameSaoPhoho());
      arrayList.add(getNameSaoDanNhat());
      arrayList.add(getNameSaoThienNguc());
      arrayList.add(getNameSaoThienHoa());
      arrayList.add(getNameSaoThoOn());
      arrayList.add(getNameSaoHoangSa());
      arrayList.add(getNameSaoPhimasat());
      arrayList.add(getNameSaoNguquy());
      arrayList.add(getNameSaoQuatu());
    } else if (i2 == 1) {
      arrayList.add(getNameSaoPhucsinh());
      arrayList.add(getNameSaoHoatDieu());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoTieuHongSa());
      arrayList.add(getNameSaoTieuHao());
      arrayList.add(getNameSaoNguyethu());
      arrayList.add(getNameSaoHuyenvu());
      arrayList.add(getNameSaoThancach());
    } else if (i2 == 2) {
      arrayList.add(getNameSaoThienQuan());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoDaiHao());
      arrayList.add(getNameSaoThuTu());
      arrayList.add(getNameSaoNguyetYem());
      arrayList.add(getNameSaoCuukhong());
      arrayList.add(getNameSaoLoicong());
    } else if (i2 == 3) {
      arrayList.add(getNameSaoThanhTam());
      arrayList.add(getNameSaoLucHop());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoCautran());
    } else if (i2 == 4) {
      arrayList.add(getNameSaoGiaithan());
      arrayList.add(getNameSaoIchhau());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoThanhLong());
      arrayList.add(getNameSaoLucbatthanh());
      arrayList.add(getNameSaoVangVong());
    } else if (i2 == 5) {
      arrayList.add(getNameSaoNguyetTai());
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoAmDuc());
      arrayList.add(getNameSaoTueHop());
      arrayList.add(getNameSaoTucthe());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoMinhduong());
      arrayList.add(getNameSaoThienOn());
      arrayList.add(getNameSaoDiatac());
      arrayList.add(getNameSaoHoatai());
      arrayList.add(getNameSaoNhancach());
      arrayList.add(getNameSaoThocam());
    } else if (i2 == 6) {
      arrayList.add(getNameSaoThienHy());
      arrayList.add(getNameSaoNguyetgiai());
      arrayList.add(getNameSaoYeuYen());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoCothan());
      arrayList.add(getNameSaoSatchu());
      arrayList.add(getNameSaoLobansat());
      arrayList.add(getNameSaoKhongphong());
    } else if (i2 == 7) {
      arrayList.add(getNameSaoUvitinh());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoDiaPha());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoBangtieu());
      arrayList.add(getNameSaoHakhoi());
      arrayList.add(getNameSaoChutuoc());
      arrayList.add(getNameSaoNguyethinh());
      arrayList.add(getNameSaoNguhu());
      arrayList.add(getNameSaoTuthoicoqua());
    } else if (i2 == 8) {
      arrayList.add(getNameSaoSinhkhi());
      arrayList.add(getNameSaoThientai());
      arrayList.add(getNameSaoDichMa());
      arrayList.add(getNameSaoPhuchau());
      arrayList.add(getNameSaoThienCuong());
      arrayList.add(getNameSaoNguyetPha());
      arrayList.add(getNameSaoThientac());
    } else if (i2 == 9) {
      arrayList.add(getNameSaoDiaTai());
      arrayList.add(getNameSaoKimduong());
      arrayList.add(getNameSaoThienLai());
      arrayList.add(getNameSaoNguyethoa());
      arrayList.add(getNameSaoNguyetkien());
      arrayList.add(getNameSaoPhudaudat());
    } else if (i2 == 10) {
      arrayList.add(getNameSaoThienMa());
      arrayList.add(getNameSaoManDucTinh());
      arrayList.add(getNameSaoThoPhu());
      arrayList.add(getNameSaoBachho());
      arrayList.add(getNameSaoToichi());
      arrayList.add(getNameSaoTamtang());
      arrayList.add(getNameSaoLysang());
      arrayList.add(getNameSaoQuykhoc());
    } else if (i2 == 11) {
      arrayList.add(getNameSaoThienThanh());
      arrayList.add(getNameSaoNguphu());
      arrayList.add(getNameSaoKinhtam());
      arrayList.add(getNameSaoHoangAn());
      arrayList.add(getNameSaoNgocduong());
      arrayList.add(getNameSaoKiepSat());
      arrayList.add(getNameSaoHoangVu());
    }
    return arrayList;
  }

  List<SaoObject> getSaoTotThang10AmLichWithThienCan(int i, int i2) {
    List<SaoObject> arrayList = [];
    if (i == 0) {
      arrayList.add(getNameSaoNguyetDuc());
      if (i2 == 0) {
        arrayList.add(getNameSaoThienXa());
      }
    } else if (i == 1) {
      arrayList.add(getNameSaoThienQuy());
      arrayList.add(getNameSaoNguyetAn());
    } else if (i != 2) {
      if (i == 3) {
        arrayList.add(getNameSaoThienPhuc());
      } else if (i != 4) {
        if (i == 5) {
          arrayList.add(getNameSaoNguyetDucHop());
        } else if (i == 6) {
          arrayList.add(getNameSaoThienDucHop());
          arrayList.add(getNameSaoNguyetKhong());
          if (i2 == 0) {
            arrayList.add(getNameSaoThiendia());
          }
        } else if (i != 7) {
          if (i == 8) {
            arrayList.add(getNameSaoNguyetDuc());
            arrayList.add(getNameSaoThienQuy());
            arrayList.add(getNameSaoTrungtang());
            arrayList.add(getNameSaoTrungphuc());
            if (i2 == 0) {
              arrayList.add(getNameSaoThiendiachuyensat());
            }
            if (i2 == 4) {
              arrayList.add(getNameSaoTuthoidaimo());
            }
          } else if (i == 9) {
            arrayList.add(getNameSaoThienQuy());
            if (i2 == 1) {
              arrayList.add(getNameSaoAmthac());
            }
            if (i2 == 11) {
              arrayList.add(getNameSaoDuongthac());
            }
          }
        }
      }
    }
    if (i2 == 0) {
      arrayList.add(getNameSaoThienMa());
      arrayList.add(getNameSaoUvitinh());
      arrayList.add(getNameSaoYeuYen());
      arrayList.add(getNameSaoBachho());
      arrayList.add(getNameSaoNguyetkien());
      arrayList.add(getNameSaoPhudaudat());
    } else if (i2 == 1) {
      arrayList.add(getNameSaoThienPhu());
      arrayList.add(getNameSaoThienThanh());
      arrayList.add(getNameSaoLockho());
      arrayList.add(getNameSaoNgocduong());
      arrayList.add(getNameSaoThoOn());
      arrayList.add(getNameSaoThientac());
      arrayList.add(getNameSaoNguyetYem());
      arrayList.add(getNameSaoQuatu());
      arrayList.add(getNameSaoTamtang());
    } else if (i2 == 2) {
      arrayList.add(getNameSaoMinhtinh());
      arrayList.add(getNameSaoNguphu());
      arrayList.add(getNameSaoLucHop());
      arrayList.add(getNameSaoTieuHao());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoHakhoi());
      arrayList.add(getNameSaoNguhu());
    } else if (i2 == 3) {
      arrayList.add(getNameSaoAmDuc());
      arrayList.add(getNameSaoManDucTinh());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoDanNhat());
      arrayList.add(getNameSaoThienNguc());
      arrayList.add(getNameSaoThienHoa());
      arrayList.add(getNameSaoDaiHao());
      arrayList.add(getNameSaoNhancach());
      arrayList.add(getNameSaoHuyenvu());
    } else if (i2 == 4) {
      arrayList.add(getNameSaoThienQuan());
      arrayList.add(getNameSaoTueHop());
      arrayList.add(getNameSaoGiaithan());
      arrayList.add(getNameSaoHoangAn());
      arrayList.add(getNameSaoDiatac());
      arrayList.add(getNameSaoToichi());
    } else if (i2 == 5) {
      arrayList.add(getNameSaoKinhtam());
      arrayList.add(getNameSaoDichMa());
      arrayList.add(getNameSaoTieuHongSa());
      arrayList.add(getNameSaoCautran());
      arrayList.add(getNameSaoNguyetPha());
      arrayList.add(getNameSaoLysang());
    } else if (i2 == 6) {
      arrayList.add(getNameSaoNguyetgiai());
      arrayList.add(getNameSaoHoatDieu());
      arrayList.add(getNameSaoPhoho());
      arrayList.add(getNameSaoThanhLong());
      arrayList.add(getNameSaoThienLai());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoHoangSa());
    } else if (i2 == 7) {
      arrayList.add(getNameSaoThienHy());
      arrayList.add(getNameSaoNguyetTai());
      arrayList.add(getNameSaoPhucsinh());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoMinhduong());
      arrayList.add(getNameSaoVangVong());
      arrayList.add(getNameSaoCothan());
    } else if (i2 == 8) {
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoKiepSat());
      arrayList.add(getNameSaoDiaPha());
      arrayList.add(getNameSaoThuTu());
      arrayList.add(getNameSaoNguyethoa());
      arrayList.add(getNameSaoBangtieu());
      arrayList.add(getNameSaoThocam());
      arrayList.add(getNameSaoKhongphong());
    } else if (i2 == 9) {
      arrayList.add(getNameSaoSinhkhi());
      arrayList.add(getNameSaoThanhTam());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoPhimasat());
      arrayList.add(getNameSaoChutuoc());
      arrayList.add(getNameSaoSatchu());
      arrayList.add(getNameSaoLobansat());
    } else if (i2 == 10) {
      arrayList.add(getNameSaoThientai());
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoIchhau());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoNguyethu());
      arrayList.add(getNameSaoTuthoicoqua());
      arrayList.add(getNameSaoQuykhoc());
    } else if (i2 == 11) {
      arrayList.add(getNameSaoDiaTai());
      arrayList.add(getNameSaoTucthe());
      arrayList.add(getNameSaoPhuchau());
      arrayList.add(getNameSaoKimduong());
      arrayList.add(getNameSaoThoPhu());
      arrayList.add(getNameSaoThienOn());
      arrayList.add(getNameSaoHoatai());
      arrayList.add(getNameSaoLucbatthanh());
      arrayList.add(getNameSaoThancach());
      arrayList.add(getNameSaoNguquy());
      arrayList.add(getNameSaoCuukhong());
      arrayList.add(getNameSaoLoicong());
      arrayList.add(getNameSaoNguyethinh());
    }
    return arrayList;
  }

  List<SaoObject> getSaoTotThang11AmLichWithThienCan(int i, int i2) {
    List<SaoObject> arrayList = [];
    if (i == 0) {
      arrayList.add(getNameSaoNguyetAn());
    } else if (i != 1) {
      if (i == 2) {
        arrayList.add(getNameSaoThienPhuc());
        arrayList.add(getNameSaoNguyetKhong());
      } else if (i == 3) {
        arrayList.add(getNameSaoNguyetDucHop());
      } else if (!(i == 4 || i == 5)) {
        if (i == 6) {
          if (i2 == 0) {
            arrayList.add(getNameSaoThiendia());
          }
        } else if (i != 7) {
          if (i == 8) {
            arrayList.add(getNameSaoNguyetDuc());
            arrayList.add(getNameSaoThienQuy());
            if (i2 == 0) {
              arrayList.add(getNameSaoThiendiachuyensat());
              arrayList.add(getNameSaoAmthac());
              arrayList.add(getNameSaoDuongthac());
            }
            if (i2 == 4) {
              arrayList.add(getNameSaoTuthoidaimo());
            }
          } else if (i == 9) {
            arrayList.add(getNameSaoThienQuy());
            arrayList.add(getNameSaoTrungtang());
            arrayList.add(getNameSaoTrungphuc());
          }
        }
      }
    }
    if (i2 == 0) {
      arrayList.add(getNameSaoThientai());
      arrayList.add(getNameSaoManDucTinh());
      arrayList.add(getNameSaoKinhtam());
      arrayList.add(getNameSaoQuanNhat());
      arrayList.add(getNameSaoThoPhu());
      arrayList.add(getNameSaoThienOn());
      arrayList.add(getNameSaoNguyetYem());
      arrayList.add(getNameSaoNguyetkien());
      arrayList.add(getNameSaoPhudaudat());
    } else if (i2 == 1) {
      arrayList.add(getNameSaoDiaTai());
      arrayList.add(getNameSaoAmDuc());
      arrayList.add(getNameSaoPhoho());
      arrayList.add(getNameSaoLucHop());
      arrayList.add(getNameSaoKimduong());
      arrayList.add(getNameSaoNhancach());
      arrayList.add(getNameSaoTamtang());
    } else if (i2 == 2) {
      arrayList.add(getNameSaoThienPhu());
      arrayList.add(getNameSaoThienMa());
      arrayList.add(getNameSaoLockho());
      arrayList.add(getNameSaoPhucsinh());
      arrayList.add(getNameSaoDichMa());
      arrayList.add(getNameSaoThoOn());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoHoangSa());
      arrayList.add(getNameSaoBachho());
      arrayList.add(getNameSaoSatchu());
    } else if (i2 == 3) {
      arrayList.add(getNameSaoThienThanh());
      arrayList.add(getNameSaoTueHop());
      arrayList.add(getNameSaoHoatDieu());
      arrayList.add(getNameSaoDanNhat());
      arrayList.add(getNameSaoNgocduong());
      arrayList.add(getNameSaoThienCuong());
      arrayList.add(getNameSaoThienLai());
      arrayList.add(getNameSaoTieuHao());
      arrayList.add(getNameSaoThuTu());
      arrayList.add(getNameSaoDiatac());
      arrayList.add(getNameSaoLucbatthanh());
      arrayList.add(getNameSaoQuatu());
      arrayList.add(getNameSaoNguyethinh());
    } else if (i2 == 4) {
      arrayList.add(getNameSaoMinhtinh());
      arrayList.add(getNameSaoThanhTam());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoDaiHao());
    } else if (i2 == 5) {
      arrayList.add(getNameSaoThienQuy());
      arrayList.add(getNameSaoNguphu());
      arrayList.add(getNameSaoIchhau());
      arrayList.add(getNameSaoKiepSat());
      arrayList.add(getNameSaoLoicong());
      arrayList.add(getNameSaoHuyenvu());
      arrayList.add(getNameSaoLysang());
    } else if (i2 == 6) {
      arrayList.add(getNameSaoThienQuan());
      arrayList.add(getNameSaoGiaithan());
      arrayList.add(getNameSaoTucthe());
      arrayList.add(getNameSaoThienNguc());
      arrayList.add(getNameSaoThienHoa());
      arrayList.add(getNameSaoNguyetPha());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoThientac());
      arrayList.add(getNameSaoHoatai());
      arrayList.add(getNameSaoPhimasat());
      arrayList.add(getNameSaoNguhu());
    } else if (i2 == 7) {
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoNguyetgiai());
      arrayList.add(getNameSaoYeuYen());
      arrayList.add(getNameSaoNguyethoa());
      arrayList.add(getNameSaoNguyethu());
      arrayList.add(getNameSaoNguquy());
      arrayList.add(getNameSaoCautran());
    } else if (i2 == 8) {
      arrayList.add(getNameSaoThienDucHop());
      arrayList.add(getNameSaoThienHy());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoHoangAn());
      arrayList.add(getNameSaoThanhLong());
      arrayList.add(getNameSaoCuukhong());
      arrayList.add(getNameSaoCothan());
      arrayList.add(getNameSaoThocam());
    } else if (i2 == 9) {
      arrayList.add(getNameSaoNguyetTai());
      arrayList.add(getNameSaoUvitinh());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoMinhduong());
      arrayList.add(getNameSaoTieuHongSa());
      arrayList.add(getNameSaoDiaPha());
      arrayList.add(getNameSaoThancach());
      arrayList.add(getNameSaoBangtieu());
      arrayList.add(getNameSaoHakhoi());
      arrayList.add(getNameSaoLobansat());
      arrayList.add(getNameSaoKhongphong());
    } else if (i2 == 10) {
      arrayList.add(getNameSaoSinhkhi());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoVangVong());
      arrayList.add(getNameSaoTuthoicoqua());
      arrayList.add(getNameSaoQuykhoc());
    } else if (i2 == 11) {
      arrayList.add(getNameSaoPhuchau());
      arrayList.add(getNameSaoChutuoc());
      arrayList.add(getNameSaoToichi());
    }
    return arrayList;
  }

  List<SaoObject> getSaoTotThang12AmLichWithThienCan(int i, int i2) {
    List<SaoObject> arrayList = [];
    if (i == 0) {
      if (i2 == 0) {
        arrayList.add(getNameSaoThienXa());
      }
      arrayList.add(getNameSaoNguyetKhong());
    } else if (i == 1) {
      arrayList.add(getNameSaoThienDucHop());
      arrayList.add(getNameSaoNguyetDucHop());
    } else if (i == 5) {
      arrayList.add(getNameSaoTrungtang());
      arrayList.add(getNameSaoTrungphuc());
    } else if (i == 6) {
      arrayList.add(getNameSaoThienQuy());
      arrayList.add(getNameSaoNguyetDuc());
      if (i2 == 0) {
        arrayList.add(getNameSaoThiendia());
      }
    } else if (i == 7) {
      arrayList.add(getNameSaoNguyetAn());
    } else if (i == 8) {
      if (i2 == 0) {
        arrayList.add(getNameSaoThiendiachuyensat());
      }
      if (i2 == 4) {
        arrayList.add(getNameSaoTuthoidaimo());
      }
    } else if (i == 9) {
      if (i2 == 11) {
        arrayList.add(getNameSaoAmthac());
      }
      if (i2 == 1) {
        arrayList.add(getNameSaoDuongthac());
      }
    }
    if (i2 == 0) {
      arrayList.add(getNameSaoCatkhanh());
      arrayList.add(getNameSaoTucthe());
      arrayList.add(getNameSaoLucHop());
      arrayList.add(getNameSaoThienLai());
      arrayList.add(getNameSaoHoatai());
      arrayList.add(getNameSaoHoangSa());
      arrayList.add(getNameSaoNguyetkien());
      arrayList.add(getNameSaoPhudaudat());
    } else if (i2 == 1) {
      arrayList.add(getNameSaoYeuYen());
      arrayList.add(getNameSaoTieuHongSa());
      arrayList.add(getNameSaoThoPhu());
      arrayList.add(getNameSaoVangVong());
      arrayList.add(getNameSaoChutuoc());
      arrayList.add(getNameSaoTamtang());
      arrayList.add(getNameSaoKhongphong());
    } else if (i2 == 2) {
      arrayList.add(getNameSaoThientai());
      arrayList.add(getNameSaoUvitinh());
      arrayList.add(getNameSaoTueHop());
      arrayList.add(getNameSaoKiepSat());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoDiatac());
    } else if (i2 == 3) {
      arrayList.add(getNameSaoThienPhu());
      arrayList.add(getNameSaoDiaTai());
      arrayList.add(getNameSaoLockho());
      arrayList.add(getNameSaoDanNhat());
      arrayList.add(getNameSaoKimduong());
      arrayList.add(getNameSaoThoOn());
      arrayList.add(getNameSaoThienOn());
      arrayList.add(getNameSaoPhimasat());
    } else if (i2 == 4) {
      arrayList.add(getNameSaoThienMa());
      arrayList.add(getNameSaoTieuHao());
      arrayList.add(getNameSaoNguyethu());
      arrayList.add(getNameSaoBangtieu());
      arrayList.add(getNameSaoHakhoi());
      arrayList.add(getNameSaoBachho());
      arrayList.add(getNameSaoSatchu());
    } else if (i2 == 5) {
      arrayList.add(getNameSaoThienThanh());
      arrayList.add(getNameSaoManDucTinh());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoNgocduong());
      arrayList.add(getNameSaoDaiHao());
      arrayList.add(getNameSaoCuukhong());
      arrayList.add(getNameSaoToichi());
      arrayList.add(getNameSaoLysang());
    } else if (i2 == 6) {
      arrayList.add(getNameSaoMinhtinh());
      arrayList.add(getNameSaoKinhtam());
      arrayList.add(getNameSaoGiaithan());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoNguyethoa());
    } else if (i2 == 7) {
      arrayList.add(getNameSaoNguyetgiai());
      arrayList.add(getNameSaoPhoho());
      arrayList.add(getNameSaoHoangAn());
      arrayList.add(getNameSaoNguyetPha());
      arrayList.add(getNameSaoLucbatthanh());
      arrayList.add(getNameSaoThancach());
      arrayList.add(getNameSaoHuyenvu());
      arrayList.add(getNameSaoQuatu());
    } else if (i2 == 8) {
      arrayList.add(getNameSaoThienQuan());
      arrayList.add(getNameSaoNguphu());
      arrayList.add(getNameSaoPhucsinh());
      arrayList.add(getNameSaoHoatDieu());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoLoicong());
      arrayList.add(getNameSaoThocam());
    } else if (i2 == 9) {
      arrayList.add(getNameSaoThienHy());
      arrayList.add(getNameSaoTamHop());
      arrayList.add(getNameSaoMauThuong());
      arrayList.add(getNameSaoThienNguc());
      arrayList.add(getNameSaoThienHoa());
      arrayList.add(getNameSaoThuTu());
      arrayList.add(getNameSaoCautran());
      arrayList.add(getNameSaoCothan());
      arrayList.add(getNameSaoLobansat());
    } else if (i2 == 10) {
      arrayList.add(getNameSaoThanhTam());
      arrayList.add(getNameSaoDaiHongSa());
      arrayList.add(getNameSaoThanhLong());
      arrayList.add(getNameSaoThienCuong());
      arrayList.add(getNameSaoDiaPha());
      arrayList.add(getNameSaoHoangVu());
      arrayList.add(getNameSaoNguquy());
      arrayList.add(getNameSaoNguyethinh());
      arrayList.add(getNameSaoNguhu());
      arrayList.add(getNameSaoTuthoicoqua());
      arrayList.add(getNameSaoQuykhoc());
    } else if (i2 == 11) {
      arrayList.add(getNameSaoSinhkhi());
      arrayList.add(getNameSaoNguyetTai());
      arrayList.add(getNameSaoAmDuc());
      arrayList.add(getNameSaoIchhau());
      arrayList.add(getNameSaoDichMa());
      arrayList.add(getNameSaoPhuchau());
      arrayList.add(getNameSaoMinhduong());
      arrayList.add(getNameSaoThientac());
      arrayList.add(getNameSaoNguyetYem());
      arrayList.add(getNameSaoNhancach());
    }
    return arrayList;
  }
}
