

import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';
import 'package:flutter_calendar/modal/thap_nhi_bat_tu_model.dart';

class NhiThapBatTu {
  static NhiThapBatTu sharedInstance() {
    return new NhiThapBatTu();
  }

  String getNameNhiThapBatTu(TYPE_SAONHITHAPBATTU type_saonhithapbattu) {
    switch (type_saonhithapbattu) {
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_GIAC:
        return "Sao Giác";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CANG:
        return "Sao Cang";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_DE:
        return "Sao Đê";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_PHONG:
        return "Sao Phòng";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TAM:
        return "Sao Tâm";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_VI:
        return "Sao Vĩ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CO:
        return "Sao Cơ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_DAU:
        return "Sao Đẩu";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_NGUU:
        return "Sao Ngưu";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_NU:
        return "Sao Nữ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_HU:
        return "Sao Hư";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_NGUY:
        return "Sao Nguy";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_THAT:
        return "Sao Thất";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_BICH:
        return "Sao Bích";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_KHUE:
        return "Sao Khuê";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_LAU:
        return "Sao Lâu";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_VIJ:
        return "Sao Vị";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_MAO:
        return "Sao Mão";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TAT:
        return "Sao Tất";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CHUY:
        return "Sao Chuỷ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_SAM:
        return "Sao Sâm";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TINHR:
        return "Sao Tỉnh";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_QUY:
        return "Sao Quỷ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_LIEU:
        return "Sao Liễu";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TINH:
        return "Sao Tinh";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TRUONG:
        return "Sao Trương";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_DUC:
        return "Sao Dực";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CHUAN:
        return "Sao Chuẩn";
      default:
        return " ";
    }
  }

  String getShortNameNhiThapBatTu(TYPE_SAONHITHAPBATTU type_saonhithapbattu) {
    switch (type_saonhithapbattu) {
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_GIAC:
        return "Giác";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CANG:
        return "Cang";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_DE:
        return "Đê";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_PHONG:
        return "Phòng";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TAM:
        return "Tâm";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_VI:
        return "Vĩ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CO:
        return "Cơ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_DAU:
        return "Đẩu";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_NGUU:
        return "Ngưu";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_NU:
        return "Nữ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_HU:
        return "Hư";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_NGUY:
        return "Nguy";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_THAT:
        return "Thất";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_BICH:
        return "Bích";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_KHUE:
        return "Khuê";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_LAU:
        return "Lâu";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_VIJ:
        return "Vị";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_MAO:
        return 'Mão';
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TAT:
        return "Tất";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CHUY:
        return "Chuỷ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_SAM:
        return "Sâm";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TINHR:
        return "Tỉnh";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_QUY:
        return "Quỷ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_LIEU:
        return "Liễu";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TINH:
        return "Tinh";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TRUONG:
        return "Trương";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_DUC:
        return "Dực";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CHUAN:
        return "Chuẩn";
      default:
        return " ";
    }
  }

  String getNameNhiThapBatTuUpcase(TYPE_SAONHITHAPBATTU type_saonhithapbattu) {
    switch (type_saonhithapbattu) {
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_GIAC:
        return "SAO GIÁC";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CANG:
        return "SAO CANG";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_DE:
        return "SAO ĐÊ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_PHONG:
        return "SAO PHÒNG";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TAM:
        return "SAO TÂM";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_VI:
        return "SAO VĨ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CO:
        return "SAO CƠ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_DAU:
        return "SAO ĐẨU";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_NGUU:
        return "SAO NGƯU";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_NU:
        return "SAO NỮ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_HU:
        return "SAO HƯ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_NGUY:
        return "SAO NGUY";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_THAT:
        return "SAO THÂT";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_BICH:
        return "SAO BÍCH";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_KHUE:
        return "SAO Khuê";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_LAU:
        return "SAO LÂU";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_VIJ:
        return "SAO VỊ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_MAO:
        return "SAO MÃO";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TAT:
        return "SAO TẤT";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CHUY:
        return "SAO CHUỶ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_SAM:
        return "SAO SÂM";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TINHR:
        return "SAO TỈNH";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_QUY:
        return "SAO QUỶ";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_LIEU:
        return "SAO LIỄU";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TINH:
        return "SAO TINH";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TRUONG:
        return "SAO TRƯƠNG";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_DUC:
        return "SAO DỰC";
      case TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CHUAN:
        return "SAO CHUẨN";
      default:
        return " ";
    }
  }

  NhiThapBatTuModel saoGiac() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Giác mộc Giao - Đặng Vũ: Tốt";
    nhiThapBatTuModel.binhSao = "(Bình Tú) Tướng tinh con Giao Long, chủ trị ngày thứ 5";
    nhiThapBatTuModel.nenLam = "Tạo tác mọi việc đều đặng vinh xương, tấn lợi. Hôn nhân cưới gả sinh con quý. Công danh khoa cử cao thăng, đỗ đạt.";
    nhiThapBatTuModel.kiengcu = "Chôn cất hoạn nạn 3 năm. Sửa chữa hay xây đắp mộ phần ắt có người chết. Sinh con nhằm ngày có Sao Giác khó nuôi, nên lấy tên Sao mà đặt tên cho nó mới an toàn. Dùng tên sao của năm hay của tháng cũng được.";
    nhiThapBatTuModel.ngoaile = "Sao Giác trúng ngày Dần là Đăng Viên được ngôi cao cả, mọi sự tốt đẹp.\n Sao Giác trúng ngày Ngọ là Phục Đoạn Sát: rất Kỵ chôn cất, xuất hành, thừa kế, chia lãnh gia tài, khởi công lò nhuộm lò gốm. Nhưng nên dứt vú trẻ em, xây tường, lấp hang lỗ, làm cầu tiêu, kết dứt điều hung hại.\nSao Giác trúng ngày Sóc là Diệt Một Nhật: Đại Kỵ đi thuyền, và cũng chẳng nên làm rượu, lập lò gốm lò nhuộm, vào làm hành chánh, thừa kế.";
    nhiThapBatTuModel.thoVinh = "Giác tinh tọa tác chủ vinh xương,\nNgoại tiến điền tài cập nữ lang,\nGiá thú hôn nhân sinh quý tử,\nVăn nhân cập đệ kiến Quân vương.\nDuy hữu táng mai bất khả dụng,\nTam niên chi hậu, chủ ôn đậu,\nKhởi công tu trúc phần mộ địa,\nĐường tiền lập kiến chủ nhân vong";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = 1;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 1;
    nhiThapBatTuModel.diemMuaOtoXemay = 1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoCang() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Cang kim Long - Ngô Hán: Xấu";
    nhiThapBatTuModel.binhSao = "(Hung Tú) Tướng tinh con Rồng, chủ trị ngày thứ 6";
    nhiThapBatTuModel.nenLam = "Cắt may áo màn (sẽ có lộc ăn).";
    nhiThapBatTuModel.kiengcu = "Chôn cất bị Trùng tang. Cưới gả e phòng không giá lạnh. Tranh đấu kiện tụng lâm bại. Khởi dựng nhà cửa chết con đầu. 10 hoặc 100 ngày sau thì gặp họa, rồi lần lần tiêu hết ruộng đất, nếu làm quan bị cách chức. Sao Cang thuộc Thất Sát Tinh, sinh con nhằm ngày này ắt khó nuôi, nên lấy tên của Sao mà đặt cho nó thì yên lành.";
    nhiThapBatTuModel.ngoaile = "Sao Cang ở nhằm ngày Rằm là Diệt Một Nhật: cữ làm rượu, lập lò gốm lò nhuộm, vào làm hành chánh, thừa kế sự nghiệp, thứ nhất đi thuyền chẳng khỏi nguy hại (vì Diệt Một có nghĩa là chìm mất).\nSao Cang tại Hợi, Mão, Mùi trăm việc đều tốt. Thứ nhất tại Mùi.";
    nhiThapBatTuModel.thoVinh = "Cang tinh tạo tác Trưởng phòng đường,\nThập nhật chi trung chủ hữu ương,\nĐiền địa tiêu ma, quan thất chức,\nĐầu quân định thị hổ lang thương.\nGiá thú, hôn nhân dụng thử nhật,\nNhi tôn, Tân phụ chủ không phòng,\nMai táng nhược hoàn phùng thử nhật,\nĐương thời tai họa, chủ trùng tang.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = -1;
    nhiThapBatTuModel.diemXuathanh = -1;
    nhiThapBatTuModel.diemNhapTrach = -1;
    nhiThapBatTuModel.diemMuaNha = -1;
    nhiThapBatTuModel.diemMuaOtoXemay = -1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoDe() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Đê thổ Lạc - Giả Phục: Xấu";
    nhiThapBatTuModel.binhSao = "(Hung Tú) Tướng tinh con Lạc Đà, chủ trị ngày thứ 7";
    nhiThapBatTuModel.nenLam = "Sao Đê Đại Hung, không có việc chi hợp với nó";
    nhiThapBatTuModel.kiengcu = "Khởi công xây dựng, chôn cất, cưới gả, xuất hành kỵ nhất là đường thủy, sinh con chẳng phải điềm lành nên làm Âm Đức cho nó. Đó chỉ là các việc Đại Kỵ, các việc khác vẫn kiêng cữ.";
    nhiThapBatTuModel.ngoaile = "Tại Thân, Tý, Thìn trăm việc đều tốt, nhưng Thìn là tốt hơn hết vì Sao Đê Đăng Viên tại Thìn";
    nhiThapBatTuModel.thoVinh = "Đê tinh tạo tác chủ tai hung,\nPhí tận điền viên, thương khố không,\nMai táng bất khả dụng thử nhật,\nHuyền thằng, điếu khả, họa trùng trùng,\nNhược thị hôn nhân ly biệt tán,\nDạ chiêu lãng tử nhập phòng trung.\nHành thuyền tắc định tạo hướng một,\nCánh sinh lung ách, tử tôn cùng";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = -1;
    nhiThapBatTuModel.diemXuathanh = -1;
    nhiThapBatTuModel.diemNhapTrach = -1;
    nhiThapBatTuModel.diemMuaNha = -1;
    nhiThapBatTuModel.diemMuaOtoXemay = -1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoPhong() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Phòng nhật Thố - Cảnh Yêm: Tốt";
    nhiThapBatTuModel.binhSao = "(Kiết Tú) Tướng tinh con Thỏ, chủ trị ngày Chủ nhật";
    nhiThapBatTuModel.nenLam = "Khởi công tạo tác mọi việc đều tốt, thứ nhất là xây dựng nhà, chôn cất, cưới gả, xuất hành, đi thuyền, mưu sự, chặt cỏ phá đất, cắt áo.";
    nhiThapBatTuModel.kiengcu = "Sao Phòng là Đại Kiết Tinh, không kỵ việc chi cả.";
    nhiThapBatTuModel.ngoaile = "Tại Đinh Sửu và Tân Sửu đều tốt, tại Dậu càng tốt hơn, vì Sao Phòng Đăng Viên tại Dậu. Trong 6 ngày Kỷ Tị, Đinh Tị, Kỷ Dậu, Quý Dậu, Đinh Sửu, Tân Sửu thì Sao Phòng vẫn tốt với các việc khác, ngoại trừ chôn cất là rất kỵ. Sao Phòng nhằm ngày Tị là Phục Đoạn Sát: chẳng nên chôn cất, xuất hành, các vụ thừa kế, chia lãnh gia tài, khởi công làm lò nhuộm lò gốm. Nhưng nên dứt vú trẻ em, xây tường, lấp hang lỗ, làm cầu tiêu, kết dứt điều hung hại.";
    nhiThapBatTuModel.thoVinh = "Phòng tinh tạo tác điền viên tiến,\nHuyết tài ngưu mã biến sơn cương,\nCánh chiêu ngoại xứ điền trang trạch,\nVinh hoa cao quý, phúc thọ khang.\nMai táng nhược nhiên phùng thử nhật,\nCao quan tiến chức bái Quân vương.\nGiá thú: Thường nga quy Nguyệt điện,\nTam niên bào tử chế triều đường.";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = 1;
    nhiThapBatTuModel.diemDoTran = 1;
    nhiThapBatTuModel.diemKhaiTruong = 1;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 1;
    nhiThapBatTuModel.diemMuaOtoXemay = 1;
    nhiThapBatTuModel.diemCuoiHoi = 1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoTam() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Tâm nguyệt Hồ - Khấu Tuân: Xấu";
    nhiThapBatTuModel.binhSao = "(Hung tú) Tướng tinh con chồn, chủ trị ngày thứ 2";
    nhiThapBatTuModel.nenLam = "Tạo tác việc chi cũng không hợp với Hung tú này";
    nhiThapBatTuModel.kiengcu = "Khởi công tạo tác việc chi cũng không khỏi hại, thứ nhất là xây cất, cưới gả, chôn cất, đóng giường, lót giường, tranh tụng.";
    nhiThapBatTuModel.ngoaile = "Ngày Dần Sao Tâm Đăng Viên, có thể dùng các việc nhỏ.";
    nhiThapBatTuModel.thoVinh = "Tâm tinh tạo tác đại vi hung,\nCánh tao hình tụng, ngục tù trung,\nNgỗ nghịch quan phi, điền trạch thoái,\nMai táng tốt bộc tử tương tòng.\nHôn nhân nhược thị phùng thử nhật,\nTử tử nhi vong tự mãn hung.\nTam niên chi nội liên tạo họa,\nSự sự giáo quân một thủy chung.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = -1;
    nhiThapBatTuModel.diemXuathanh = -1;
    nhiThapBatTuModel.diemNhapTrach = -1;
    nhiThapBatTuModel.diemMuaNha = -1;
    nhiThapBatTuModel.diemMuaOtoXemay = -1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoVix() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Vĩ hỏa Hổ - Sầm Bành: Tốt";
    nhiThapBatTuModel.binhSao = "(Kiết Tú) Tướng tinh con cọp, chủ trị ngày thứ 3";
    nhiThapBatTuModel.nenLam = "Mọi việc đều tốt, tốt nhất là các vụ khởi tạo, chôn cất, cưới gả, xây cất, trổ cửa, đào ao giếng, khai mương rạch, các vụ thủy lợi, khai trương, chặt cỏ phá đất.";
    nhiThapBatTuModel.kiengcu = "Đóng giường, lót giường, đi thuyền.";
    nhiThapBatTuModel.ngoaile = "Tại Hợi, Mão, Mùi Kỵ chôn cất. Tại Mùi là vị trí Hãm Địa của Sao Vỹ. Tại Kỷ Mão rất Hung, còn các ngày Mão khác có thể tạm dùng được.";
    nhiThapBatTuModel.thoVinh = "Vĩ tinh tạo tác đắc thiên ân,\nPhú quý, vinh hoa, phúc thọ ninh,\nChiêu tài tiến bảo, tiến điền địa,\nHòa hợp hôn nhân, quý tử tôn.\nMai táng nhược năng y thử nhật,\nNam thanh, nữ chính, tử tôn hưng.\nKhai môn, phóng thủy, chiêu điền địa,\nĐại đại công hầu, viễn bá danh.";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = 1;
    nhiThapBatTuModel.diemDoTran = 1;
    nhiThapBatTuModel.diemKhaiTruong = 1;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 1;
    nhiThapBatTuModel.diemMuaOtoXemay = 1;
    nhiThapBatTuModel.diemCuoiHoi = 1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoCo() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Cơ thủy Báo - Phùng Dị: Tốt";
    nhiThapBatTuModel.binhSao = "(Kiết Tú) Tướng tinh con Beo, chủ trị ngày thứ 4";
    nhiThapBatTuModel.nenLam = "Khởi tạo trăm việc đều tốt, tốt nhất là chôn cất, tu bổ mồ mả, trổ cửa, khai trương, xuất hành, các vụ thủy lợi (như tháo nước, đào kinh, khai thông mương rảnh...).";
    nhiThapBatTuModel.kiengcu = "Đóng giường, lót giường, đi thuyền.";
    nhiThapBatTuModel.ngoaile = "Tại Thân, Tý, Thìn trăm việc kỵ, duy tại Tý có thể tạm dùng. Ngày Thìn Sao Cơ Đăng Viên lẽ ra rất tốt nhưng lại phạm Phục Đoạn. Phạm Phục Đoạn thì kỵ chôn cất, xuất hành, các vụ thừa kế, chia lãnh gia tài, khởi công làm lò nhuộm lò gốm ; Nhưng nên dứt vú trẻ em, xây tường, lấp hang lỗ, làm cầu tiêu, kết dứt điều hung hại.";
    nhiThapBatTuModel.thoVinh = "Cơ tinh tạo tác chủ cao cường,\nTuế tuế niên niên đại cát xương,\nMai táng, tu phần đại cát lợi,\nĐiền tàm, ngưu mã biến sơn cương.\nKhai môn, phóng thủy chiêu tài cốc,\nKhiếp mãn kim ngân, cốc mãn thương.\nPhúc ấm cao quan gia lộc vị,\nLục thân phong lộc, phúc an khang.";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = 1;
    nhiThapBatTuModel.diemDoTran = 1;
    nhiThapBatTuModel.diemKhaiTruong = 1;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 1;
    nhiThapBatTuModel.diemMuaOtoXemay = 1;
    nhiThapBatTuModel.diemCuoiHoi = 1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoDau() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Đẩu mộc Giải - Tống Hữu: Tốt";
    nhiThapBatTuModel.binhSao = "(Kiết Tú) Tướng tinh con cua, chủ trị ngày thứ 5";
    nhiThapBatTuModel.nenLam = "Khởi tạo trăm việc đều tốt, tốt nhất là xây đắp hay sửa chữa phần mộ, trổ cửa, tháo nước, các vụ thủy lợi, chặt cỏ phá đất, may cắt áo mão, kinh doanh, giao dịch, mưu cầu công danh.";
    nhiThapBatTuModel.kiengcu = " Rất kỵ đi thuyền. Con mới sinh đặt tên nó là Đẩu, Giải, Trại hoặc lấy tên Sao của năm hay tháng hiện tại mà đặt tên cho nó dễ nuôi.";
    nhiThapBatTuModel.ngoaile = "Tại Tị mất sức. Tại Dậu tốt. Ngày Sửu Đăng Viên rất tốt nhưng lại phạm Phục Đoạn. Phạm Phục Đoạn thì kỵ chôn cất, xuất hành, thừa kế, chia lãnh gia tài, khởi công làm lò nhuộm lò gốm ; Nhưng nên dứt vú trẻ em, xây tường, lấp hang lỗ, làm cầu tiêu, kết dứt điều hung hại.";
    nhiThapBatTuModel.thoVinh = "Đẩu tinh tạo tác chủ chiêu tài,\nVăn vũ quan viên vị đỉnh thai,\nĐiền trạch tiền tài thiên vạn tiến,\nPhần doanh tu trúc, phú quý lai.\nKhai môn, phóng thủy, chiêu ngưu mã,\nVượng tài nam nữ chủ hòa hài,\nNgộ thử cát tinh lai chiến hộ,\nThời chi phúc khánh, vĩnh vô tai.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = 1;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 1;
    nhiThapBatTuModel.diemMuaOtoXemay = 1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoNguu() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Ngưu kim Ngưu - Sái Tuân: Xấu";
    nhiThapBatTuModel.binhSao = "(Hung Tú) Tướng tinh con trâu, chủ trị ngày thứ 6";
    nhiThapBatTuModel.nenLam = "Đi thuyền, cắt may áo mão.";
    nhiThapBatTuModel.kiengcu = "Khởi công tạo tác việc chi cũng hung hại. Nhất là xây cất nhà, dựng trại, cưới gả, trổ cửa, làm thủy lợi, nuôi tằm, gieo cấy, khai khẩn, khai trương, xuất hành đường bộ.";
    nhiThapBatTuModel.ngoaile = "Ngày Ngọ Đăng Viên rất tốt. Ngày Tuất yên lành. Ngày Dần là Tuyệt Nhật, chớ động tác việc chi, riêng ngày Nhâm Dần dùng được. Trúng ngày 14  m lịch là Diệt Một Sát, cữ: làm rượu, lập lò nhuộm lò gốm, vào làm hành chánh, thừa kế sự nghiệp, kỵ nhất là đi thuyền chẳng khỏi rủi ro.\nSao Ngưu là 1 trong Thất sát Tinh, sinh con khó nuôi, nên lấy tên Sao của năm, tháng hay ngày mà đặt tên cho trẻ và làm việc Âm Đức ngay trong tháng sinh nó mới mong nuôi khôn lớn được.";
    nhiThapBatTuModel.thoVinh = "Ngưu tinh tạo tác chủ tai nguy,\nCửu hoành tam tai bất khả thôi,\nGia trạch bất an, nhân khẩu thoái,\nĐiền tàm bất lợi, chủ nhân suy.\nGiá thú, hôn nhân giai tự tổn,\nKim ngân tài cốc tiệm vô chi.\nNhược thị khai môn, tính phóng thủy,\nNgưu trư dương mã diệc thương bi.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = -1;
    nhiThapBatTuModel.diemXuathanh = -1;
    nhiThapBatTuModel.diemNhapTrach = -1;
    nhiThapBatTuModel.diemMuaNha = -1;
    nhiThapBatTuModel.diemMuaOtoXemay = -1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoNu() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Nữ thổ Bức - Cảnh Đan: Xấu";
    nhiThapBatTuModel.binhSao = "(Hung Tú) Tướng tinh con dơi, chủ trị ngày thứ 7";
    nhiThapBatTuModel.nenLam = "Kết màn, may áo";
    nhiThapBatTuModel.kiengcu = "Khởi công tạo tác trăm việc đều có hại, hung hại nhất là trổ cửa, khơi đường tháo nước, chôn cất, đầu đơn kiện cáo.";
    nhiThapBatTuModel.ngoaile = "Tại Hợi Mão Mùi đều gọi là đường cùng. Ngày Quý Hợi cùng cực đúng mức vì là ngày chót của 60 Hoa giáp. Ngày Hợi tuy Sao Nữ Đăng Viên song cũng chẳng nên dùng. Ngày Mão là Phục Đoạn Sát, rất kỵ chôn cất, xuất hành, thừa kế sự nghiệp, chia lãnh gia tài, khởi công làm lò nhuộm lò gốm ; nhưng nên dứt vú trẻ em, xây tường, lấp hang lỗ, làm cầu tiêu, kết dứt điều hung hại.";
    nhiThapBatTuModel.thoVinh = "Nữ tinh tạo tác tổn bà nương,\nHuynh đệ tương hiềm tựa hổ lang,\nMai táng sinh tai phùng quỷ quái,\nĐiên tà tật bệnh cánh ôn hoàng.\nVi sự đáo quan, tài thất tán,\nTả lị lưu liên bất khả đương.\nKhai môn, phóng thủy phùng thử nhật,\nToàn gia tán bại, chủ ly hương.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = -1;
    nhiThapBatTuModel.diemXuathanh = -1;
    nhiThapBatTuModel.diemNhapTrach = -1;
    nhiThapBatTuModel.diemMuaNha = -1;
    nhiThapBatTuModel.diemMuaOtoXemay = -1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoHu() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Hư nhật Thử - Cái Duyên: Xấu";
    nhiThapBatTuModel.binhSao = "(Hung Tú) Tướng tinh con chuột, chủ trị ngày chủ nhật.";
    nhiThapBatTuModel.nenLam = "Hư có nghĩa là hư hoại, không có việc chi hợp với Sao Hư.";
    nhiThapBatTuModel.kiengcu = "Khởi công tạo tác trăm việc đều không may, thứ nhất là xây cất nhà cửa, cưới gả, khai trương, trổ cửa, tháo nước, đào kinh rạch.";
    nhiThapBatTuModel.ngoaile = "Gặp Thân, Tý, Thìn đều tốt, tại Thìn Đắc Địa tốt hơn hết. Hợp với 6 ngày Giáp Tý, Canh Tý, Mậu Thân, Canh Thân, Bính Thìn, Mậu Thìn có thể động sự. Trừ ngày Mậu Thìn ra, còn 5 ngày kia kỵ chôn cất.\nGặp ngày Tý thì Sao Hư Đăng Viên rất tốt, nhưng lại phạm Phục Đoạn Sát: Kỵ chôn cất, xuất hành, thừa kế, chia lãnh gia tài sự nghiệp, khởi công làm lò nhuộm lò gốm, nhưng nên dứt vú trẻ em, xây tường, lấp hang lỗ, làm cầu tiêu, kết dứt điều hung hại.\nGặp Huyền Nhật là những ngày 7, 8, 22, 23  m lịch thì Sao Hư phạm Diệt Một: Cữ làm rượu, lập lò gốm lò nhuộm, vào làm hành chánh, thừa kế, thứ nhất là đi thuyền ắt chẳng khỏi rủi ro.";
    nhiThapBatTuModel.thoVinh = "Hư tinh tạo tác chủ tai ương,\nNam nữ cô miên bất nhất song,\nNội loạn phong thanh vô lễ tiết,\nNhi tôn, tức phụ bạn nhân sàng,\nKhai môn, phóng thủy chiêu tai họa,\nHổ giảo, xà thương cập tốt vong.\nTam tam ngũ ngũ liên niên bệnh,\nGia phá, nhân vong, bất khả đương.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = -1;
    nhiThapBatTuModel.diemXuathanh = -1;
    nhiThapBatTuModel.diemNhapTrach = -1;
    nhiThapBatTuModel.diemMuaNha = -1;
    nhiThapBatTuModel.diemMuaOtoXemay = -1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoNguy() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Nguy nguyệt Yến - Kiên Đàm: Xấu";
    nhiThapBatTuModel.binhSao = "(Bình Tú) Tướng tinh con chim én, chủ trị ngày thứ 2";
    nhiThapBatTuModel.nenLam = "Chôn cất rất tốt, lót giường bình yên.";
    nhiThapBatTuModel.kiengcu = "Dựng nhà, trổ cửa, gác đòn đông, tháo nước, đào mương rạch, đi thuyền.";
    nhiThapBatTuModel.ngoaile = "Tại Tị, Dậu, Sửu trăm việc đều tốt, tại Dậu tốt nhất. Ngày Sửu Sao Nguy Đăng Viên: tạo tác sự việc được quý hiển.";
    nhiThapBatTuModel.thoVinh = "Nguy tinh bât khả tạo cao đường,\nTự điếu, tao hình kiến huyết quang\nTam tuế hài nhi tao thủy ách,\nHậu sinh xuất ngoại bất hoàn lương.\nMai táng nhược hoàn phùng thử nhật,\nChu niên bách nhật ngọa cao sàng,\nKhai môn, phóng thủy tạo hình trượng,\nTam niên ngũ tái diệc bi thương.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = 0;
    nhiThapBatTuModel.diemXuathanh = 0;
    nhiThapBatTuModel.diemNhapTrach = 0;
    nhiThapBatTuModel.diemMuaNha = 0;
    nhiThapBatTuModel.diemMuaOtoXemay = 0;
    nhiThapBatTuModel.diemCuoiHoi = 0;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoThat() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Thất hỏa Trư - Cảnh Thuần: Tốt";
    nhiThapBatTuModel.binhSao = "(Kiết Tú) Tướng tinh con heo, chủ trị ngày thứ 3.";
    nhiThapBatTuModel.nenLam = "Khởi công trăm việc đều tốt. Tốt nhất là xây cất nhà cửa, cưới gả, chôn cất, trổ cửa, tháo nước, các việc thủy lợi, đi thuyền, chặt cỏ phá đất.";
    nhiThapBatTuModel.kiengcu = "Sao thất Đại Kiết không có việc chi phải cữ.";
    nhiThapBatTuModel.ngoaile = "Tại Dần, Ngọ, Tuất nói chung đều tốt, ngày Ngọ Đăng viên rất hiển đạt.\nBa ngày Bính Dần, Nhâm Dần, Giáp Ngọ rất nên xây dựng và chôn cất, song những ngày Dần khác không tốt. Vì sao Thất gặp ngày Dần là phạm Phục Đoạn Sát (kiêng cữ như trên).";
    nhiThapBatTuModel.thoVinh = "Thất tinh tạo tác tiến điền ngưu,\nNhi tôn đại đại cận quân hầu,\nPhú quý vinh hoa thiên thượng chỉ,\nThọ như Bành tổ nhập thiên thu.\nKhai môn, phóng thủy chiêu tài bạch,\nHòa hợp hôn nhân sinh quý nhi.\nMai táng nhược năng y thử nhật,\nMôn đình hưng vượng, Phúc vô ưu!";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = 1;
    nhiThapBatTuModel.diemDoTran = 1;
    nhiThapBatTuModel.diemKhaiTruong = 1;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 1;
    nhiThapBatTuModel.diemMuaOtoXemay = 1;
    nhiThapBatTuModel.diemCuoiHoi = 1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoBich() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Bích thủy Du - Tang Cung: Tốt";
    nhiThapBatTuModel.binhSao = "(Kiết Tú) Tướng tinh con rái cá, chủ trị ngày thứ 4.";
    nhiThapBatTuModel.nenLam = "Khởi công tạo tác việc chi cũng tốt. Tốt nhất là xây cất nhà, cưới gả, chôn cất, trổ cửa, dựng cửa, tháo nước, các vụ thuỷ lợi, chặt cỏ phá đất, cắt áo thêu áo, khai trương, xuất hành, làm việc thiện ắt Thiện quả tới mau hơn.";
    nhiThapBatTuModel.kiengcu = "Sao Bích toàn kiết, không có việc chi phải kiêng cữ.";
    nhiThapBatTuModel.ngoaile = "Tại Hợi Mão Mùi trăm việc kỵ, thứ nhất trong Mùa Đông. Riêng ngày Hợi Sao Bích Đăng Viên nhưng phạm Phục Đọan Sát (Kiêng cữ như trên).";
    nhiThapBatTuModel.thoVinh = "Bích tinh tạo ác tiến trang điền\nTi tâm đại thục phúc thao thiên,\nNô tỳ tự lai, nhân khẩu tiến,\nKhai môn, phóng thủy xuất anh hiền,\nMai táng chiêu tài, quan phẩm tiến,\nGia trung chủ sự lạc thao nhiên\nHôn nhân cát lợi sinh quý tử,\nTảo bá thanh danh khán tổ tiên.";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = 1;
    nhiThapBatTuModel.diemDoTran = 1;
    nhiThapBatTuModel.diemKhaiTruong = 1;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 1;
    nhiThapBatTuModel.diemMuaOtoXemay = 1;
    nhiThapBatTuModel.diemCuoiHoi = 1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoKhue() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Khuê mộc Lang - Mã Vũ: Xấu";
    nhiThapBatTuModel.binhSao = "(Bình Tú) Tướng tinh con chó sói, chủ trị ngày thứ 5.";
    nhiThapBatTuModel.nenLam = "Tạo dựng nhà phòng, nhập học, ra đi cầu công danh, cắt áo.";
    nhiThapBatTuModel.kiengcu = "Chôn cất, khai trương, trổ cửa dựng cửa, khai thông đường nước, đào ao móc giếng, thưa kiện, đóng giường lót giường.";
    nhiThapBatTuModel.ngoaile = "Sao Khuê là 1 trong Thất Sát Tinh, nếu đẻ con nhằm ngày này thì nên lấy tên Sao Khuê hay lấy tên Sao của năm tháng mà đặt cho trẻ dễ nuôi. Sao Khuê Hãm Địa tại Thân: Văn Khoa thất bại. Tại Ngọ là chỗ Tuyệt gặp Sinh, mưu sự đắc lợi, thứ nhất gặp Canh Ngọ. Tại Thìn tốt vừa vừa. Ngày Thân Sao Khuê Đăng Viên: Tiến thân danh.";
    nhiThapBatTuModel.thoVinh = "Khuê tinh tạo tác đắc trinh tường,\nGia hạ vinh hòa đại cát xương,\nNhược thị táng mai âm tốt tử,\nĐương niên định chủ lưỡng tam tang.\nKhán khán vận kim, hình thương đáo,\nTrùng trùng quan sự, chủ ôn hoàng.\nKhai môn phóng thủy chiêu tai họa,\nTam niên lưỡng thứ tổn nhi lang.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = -1;
    nhiThapBatTuModel.diemXuathanh = 0;
    nhiThapBatTuModel.diemNhapTrach = 0;
    nhiThapBatTuModel.diemMuaNha = 0;
    nhiThapBatTuModel.diemMuaOtoXemay = 0;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoLau() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Lâu kim Cẩu - Lưu Long: Tốt";
    nhiThapBatTuModel.binhSao = "(Kiết Tú) Tướng tinh con chó, chủ trị ngày thứ 6.";
    nhiThapBatTuModel.nenLam = "Khởi công mọi việc đều tốt. Tốt nhất là dựng cột, cất lầu, làm dàn gác, cưới gả, trổ cửa dựng cửa, tháo nước hay các vụ thủy lợi, cắt áo.";
    nhiThapBatTuModel.kiengcu = "Đóng giường, lót giường, đi đường thủy.";
    nhiThapBatTuModel.ngoaile = "Tại Ngày Dậu Đăng Viên : Tạo tác đại lợi. Tại Tị gọi là Nhập Trù rất tốt. Tại Sửu tốt vừa vừa. Gặp ngày cuối tháng thì Sao Lâu phạm Diệt Một: rất kỵ đi thuyền, cữ làm rượu, lập lò gốm lò nhuộm, vào làm hành chánh, thừa kế sự nghiệp.";
    nhiThapBatTuModel.thoVinh = "Lâu tinh thụ trụ, khởi môn đình,\nTài vượng, gia hòa, sự sự hưng,\nNgoại cảnh, tiền tài bách nhật tiến,\nNhất gia huynh đệ bá thanh danh.\nHôn nhân tiến ích, sinh quý tử,\nNgọc bạch kim lang tương mãn doanh,\nPhóng thủy, khai môn giai cát lợi,\nNam vinh, nữ quý, thọ khang ninh.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = 1;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 1;
    nhiThapBatTuModel.diemMuaOtoXemay = 1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoVij() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Vị thổ Trĩ - Ô Thành: Tốt";
    nhiThapBatTuModel.binhSao = "(Kiết Tú) Tướng tinh con chim trĩ, chủ trị ngày thứ 7.";
    nhiThapBatTuModel.nenLam = "Khởi công tạo tác việc chi cũng lợi. Tốt nhất là xây cất, cưới gả, chôn cất, chặt cỏ phá đất, gieo trồng, lấy giống.";
    nhiThapBatTuModel.kiengcu = "Đi thuyền.";
    nhiThapBatTuModel.ngoaile = "Sao Vị mất chí khí tại Dần, thứ nhất tại Mậu Dần, rất là Hung, chẳng nên cưới gả, xây cất nhà cửa. Tại Tuất Sao Vị Đăng Viên nên mưu cầu công danh, nhưng cũng phạm Phục Đoạn (kiêng cữ như các mục trên).";
    nhiThapBatTuModel.thoVinh = "Vị tinh tạo tác sự như hà,\nPhú quý, vinh hoa, hỷ khí đa,\nMai táng tiến lâm quan lộc vị,\nTam tai, cửu họa bất phùng tha.\nHôn nhân ngộ thử gia phú quý,\nPhu phụ tề mi, vĩnh bảo hòa,\nTòng thử môn đình sinh cát khánh,\nNhi tôn đại đại bảo kim pha.";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = 1;
    nhiThapBatTuModel.diemDoTran = 1;
    nhiThapBatTuModel.diemKhaiTruong = 1;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 1;
    nhiThapBatTuModel.diemMuaOtoXemay = 1;
    nhiThapBatTuModel.diemCuoiHoi = 1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoMao() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Mão nhật Kê - Vương Lương: Xấu";
    nhiThapBatTuModel.binhSao = "(Hung Tú) Tướng tinh con gà, chủ trị ngày chủ nhật.";
    nhiThapBatTuModel.nenLam = "Xây dựng, tạo tác.";
    nhiThapBatTuModel.kiengcu = "Chôn Cất (ĐẠI KỴ), cưới gả, trổ cửa dựng cửa, khai ngòi phóng thủy, khai trương, xuất hành, đóng giường lót giường. Các việc khác cũng không hay.";
    nhiThapBatTuModel.ngoaile = "Tại Mùi mất chí khí. Tại Ất Mão và Đinh Mão tốt, Ngày Mão Đăng Viên cưới gả tốt, nhưng ngày Quý Mão tạo tác mất tiền của. Hợp với 8 ngày: Ất Mão, Đinh Mão, Tân Mão, Ất Mùi, Đinh Mùi, Tân Mùi, Ất Hợi, Tân Hợi.";
    nhiThapBatTuModel.thoVinh = "Mão tinh tạo tác tiến điền ngưu,\nMai táng quan tai bất đắc hưu,\nTrùng tang nhị nhật, tam nhân tử,\nMại tận điền viên, bất năng lưu.\nKhai môn, phóng thủy chiêu tai họa,\nTam tuế hài nhi bạch liễu đầu,\nHôn nhân bất khả phùng nhật thử,\nTử biệt sinh ly thật khả sầu.";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = -1;
    nhiThapBatTuModel.diemXuathanh = -1;
    nhiThapBatTuModel.diemNhapTrach = -1;
    nhiThapBatTuModel.diemMuaNha = -1;
    nhiThapBatTuModel.diemMuaOtoXemay = -1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoTat() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Tất nguyệt Ô - Trần Tuấn: Tốt";
    nhiThapBatTuModel.binhSao = "(Kiết Tú) Tướng tinh con quạ, chủ trị ngày thứ 2.";
    nhiThapBatTuModel.nenLam = "Khởi công tạo tác việc chi cũng tốt. Tốt nhất là chôn cất, cưới gả, trổ cửa dựng cửa, đào kênh, tháo nước, khai mương, móc giếng, chặt cỏ phá đất. Những việc khác cũng tốt như làm ruộng, nuôi tằm, khai trương, xuất hành, nhập học.";
    nhiThapBatTuModel.kiengcu = "Đi thuyền.";
    nhiThapBatTuModel.ngoaile = "Tại Thân, Tý, Thìn đều tốt. Tại Thân hiệu là Nguyệt Quải Khôn Sơn, trăng treo đầu núi Tây Nam, rất là tốt. Lại thêm Sao tất Đăng Viên ở ngày Thân, cưới gả và chôn cất là 2 điều ĐẠI KIẾT.";
    nhiThapBatTuModel.thoVinh = "Tất tinh tạo tác chủ quang tiền,\nMãi dắc điền viên hữu lật tiền\nMai táng thử nhật thiêm quan chức,\nĐiền tàm đại thực lai phong niên\nKhai môn phóng thủy đa cát lật,\nHợp gia nhân khẩu đắc an nhiên,\nHôn nhân nhược năng phùng thử nhật,\nSinh đắc hài nhi phúc thọ toàn.";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = 1;
    nhiThapBatTuModel.diemDoTran = 1;
    nhiThapBatTuModel.diemKhaiTruong = 1;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 1;
    nhiThapBatTuModel.diemMuaOtoXemay = 1;
    nhiThapBatTuModel.diemCuoiHoi = 1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoTruy() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Truỷ hỏa Hầu - Phó Tuấn: Xấu";
    nhiThapBatTuModel.binhSao = "(Hung Tú) Tướng tinh con khỉ, chủ trị ngày thứ 3.";
    nhiThapBatTuModel.nenLam = "Không có sự việc chi hợp với Sao Truỷ.";
    nhiThapBatTuModel.kiengcu = "Khởi công tạo tác việc chi cũng không tốt. KỴ NHẤT là chôn cất và các vụ thuộc về chết chôn như sửa đắp mồ mả, làm sinh phần (làm mồ mả để sẵn), đóng thọ đường (đóng hòm để sẵn).";
    nhiThapBatTuModel.ngoaile = "Tại tị bị đoạt khí, Hung càng thêm hung. Tại dậu rất tốt, vì Sao Truỷ Đăng Viên ở Dậu, khởi động thăng tiến. Nhưng cũng phạm Phục Đoạn Sát. Tại Sửu là Đắc Địa, ắt nên. Rất hợp với ngày Đinh sửu và Tân Sửu, tạo tác Đại Lợi, chôn cất Phú Quý song toàn.";
    nhiThapBatTuModel.thoVinh = "Truỷ tinh tạo tác hữu đồ hình,\nTam niên tất đinh chủ linh đinh,\nMai táng tốt tử đa do thử,\nThủ định Dần niên tiện sát nhân.\nTam tang bất chỉ giai do thử,\nNhất nhân dược độc nhị nhân thân.\nGia môn điền địa giai thoán bại,\nThương khố kim tiền hóa tác cần.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = -1;
    nhiThapBatTuModel.diemXuathanh = -1;
    nhiThapBatTuModel.diemNhapTrach = -1;
    nhiThapBatTuModel.diemMuaNha = -1;
    nhiThapBatTuModel.diemMuaOtoXemay = -1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoSam() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Sâm thủy Viên - Đỗ Mậu: Tốt";
    nhiThapBatTuModel.binhSao = "(Bình Tú) Tướng tinh con vượn, chủ trị ngày thứ 4.";
    nhiThapBatTuModel.nenLam = "Khởi công tạo tác nhiều việc tốt như : xây cất nhà, dựng cửa trổ cửa, nhập học, đi thuyền, làm thủy lợi, tháo nước đào mương.";
    nhiThapBatTuModel.kiengcu = "Cưới gả, chôn cất, đóng giường lót giường, kết bạn.";
    nhiThapBatTuModel.ngoaile = "Ngày Tuất Sao sâm Đăng Viên, nên phó nhậm, cầu công danh hiển hách.";
    nhiThapBatTuModel.thoVinh = "Sâm tinh tạo tác vượng nhân gia,\nVăn tinh triều diệu, đại quang hoa,\nChỉ nhân tạo tác điền tài vượng,\nMai táng chiêu tật, táng hoàng sa.\nKhai môn, phóng thủy gia quan chức,\nPhòng phòng tôn tử kiến điền gia,\nHôn nhân hứa định tao hình khắc,\nNam nữ chiêu khai mộ lạc hoa.";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = 1;
    nhiThapBatTuModel.diemDoTran = 1;
    nhiThapBatTuModel.diemKhaiTruong = 0;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 0;
    nhiThapBatTuModel.diemMuaNha = 0;
    nhiThapBatTuModel.diemMuaOtoXemay = 0;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoTinhR() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Tỉnh mộc Hãn - Diêu Kỳ: Tốt";
    nhiThapBatTuModel.binhSao = "(Bình Tú) Tướng tinh con dê trừu, chủ trị ngày thứ 5.";
    nhiThapBatTuModel.nenLam = "Tạo tác nhiều việc tốt như xây cất, trổ cửa dựng cửa, mở thông đường nước, đào mương móc giếng, nhậm chức, nhập học, đi thuyền.";
    nhiThapBatTuModel.kiengcu = "Chôn cất, tu bổ phần mộ, làm sinh phần, đóng thọ đường.";
    nhiThapBatTuModel.ngoaile = "Tại Hợi, Mão, Mùi trăm việc tốt. Tại Mùi là Nhập Miếu, khởi động vinh quang.";
    nhiThapBatTuModel.thoVinh = "Tỉnh tinh tạo tác vượng tàm điền,\nKim bảng đề danh đệ nhất tiên,\nMai táng, tu phòng kinh tốt tử,\nHốt phong tật nhập hoàng điên tuyền\nKhai môn, phóng thủy chiêu tài bạch,\nNgưu mã trư dương vượng mạc cát,\nQuả phụ điền đường lai nhập trạch,\nNhi tôn hưng vượng hữu dư tiền.";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = 1;
    nhiThapBatTuModel.diemDoTran = 1;
    nhiThapBatTuModel.diemKhaiTruong = 0;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 0;
    nhiThapBatTuModel.diemMuaNha = 0;
    nhiThapBatTuModel.diemMuaOtoXemay = 0;
    nhiThapBatTuModel.diemCuoiHoi = 0;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoQuy() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Quỷ kim Dương - Vương Phách: Xấu";
    nhiThapBatTuModel.binhSao = "(Hung Tú) Tướng tinh con dê, chủ trị ngày thứ 6.";
    nhiThapBatTuModel.nenLam = "Chôn cất, chặt cỏ phá đất, cắt áo.";
    nhiThapBatTuModel.kiengcu = "Khởi tạo việc chi cũng hại. Hại nhất là xây cất nhà, cưới gả, trổ cửa dựng cửa, tháo nước, đào ao giếng, động đất, xây tường, dựng cột.";
    nhiThapBatTuModel.ngoaile = "Ngày Tý Đăng Viên thừa kế tước phong tốt, phó nhiệm may mắn. Ngày Thân là Phục Đoạn Sát kỵ chôn cất, xuất hành, thừa kế, chia lãnh gia tài, khởi công lập lò gốm lò nhuộm; Nhưng nên dứt vú trẻ em, xây tường, lấp hang lỗ, làm cầu tiêu, kết dứt điều hung hại. Nhằm ngày 16 Âm lịch là ngày Diệt Một kỵ làm rượu, lập lò gốm lò nhuộm, vào làm hành chánh, kỵ nhất đi thuyền.";
    nhiThapBatTuModel.thoVinh = "Quỷ tinh khởi tạo tất nhân vong,\nĐường tiền bất kiến chủ nhân lang,\nMai táng thử nhật, quan lộc chí,\nNhi tôn đại đại cận quân vương.\nKhai môn phóng thủy tu thương tử,\nHôn nhân phu thê bất cửu trường.\nTu thổ trúc tường thương sản nữ,\nThủ phù song nữ lệ uông uông.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = -1;
    nhiThapBatTuModel.diemXuathanh = -1;
    nhiThapBatTuModel.diemNhapTrach = -1;
    nhiThapBatTuModel.diemMuaNha = -1;
    nhiThapBatTuModel.diemMuaOtoXemay = -1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoLieu() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Liễu thổ Chương - Nhậm Quang: Xấu";
    nhiThapBatTuModel.binhSao = "(Hung tú) Tướng tinh con gấu ngựa, chủ trị ngày thứ 7";
    nhiThapBatTuModel.nenLam = "Không có việc chi hợp với Sao Liễu.";
    nhiThapBatTuModel.kiengcu = "Khởi công tạo tác việc chi cũng hung hại. Hung hại nhất là chôn cất, xây đắp, trổ cửa dựng cửa, tháo nước, đào ao lũy, làm thủy lợi.";
    nhiThapBatTuModel.ngoaile = "Tại Ngọ trăm việc tốt. Tại Tị Đăng Viên: thừa kế và lên quan lãnh chức là 2 điều tốt nhất. Tại Dần, Tuất rất kỵ xây cất và chôn cất : Rất suy vi.";
    nhiThapBatTuModel.thoVinh = "Liễu tinh tạo tác chủ tao quan,\nTrú dạ thâu nhàn bất tạm an,\nMai táng ôn hoàng đa bệnh tử,\nĐiền viên thoái tận, thủ cô hàn,\nKhai môn phóng thủy chiêu lung hạt,\nYêu đà bối khúc tự cung loan\nCánh hữu bổng hình nghi cẩn thận,\nPhụ nhân tùy khách tẩu bất hoàn.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = -1;
    nhiThapBatTuModel.diemXuathanh = -1;
    nhiThapBatTuModel.diemNhapTrach = -1;
    nhiThapBatTuModel.diemMuaNha = -1;
    nhiThapBatTuModel.diemMuaOtoXemay = -1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoTinh() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Tinh nhật Mã - Lý Trung: Xấu";
    nhiThapBatTuModel.binhSao = "(Bình Tú) Tướng tinh con ngựa, chủ trị ngày chủ nhật.";
    nhiThapBatTuModel.nenLam = "Xây dựng phòng mới.";
    nhiThapBatTuModel.kiengcu = "Chôn cất, cưới gả, mở thông đường nước.";
    nhiThapBatTuModel.ngoaile = "Sao Tinh là 1 trong Thất Sát Tinh, nếu sinh con nhằm ngày này nên lấy tên Sao đặt tên cho trẻ để dễ nuôi, có thể lấy tên sao của năm, hay sao của tháng cũng được. Tại Dần Ngọ Tuất đều tốt, tại Ngọ là Nhập Miếu, tạo tác được tôn trọng. Tại Thân là Đăng Giá (lên xe): xây cất tốt mà chôn cất nguy. Hợp với 7 ngày: Giáp Dần, Nhâm Dần, Giáp Ngọ, Bính Ngọ, Mậu Ngọ, Bính Tuất, Canh Tuất.";
    nhiThapBatTuModel.thoVinh = "Tinh tú nhật hảo tạo tân phòng,\nTiến chức gia quan cận Đế vương,\nBất khả mai táng tính phóng thủy,\nHung tinh lâm vị nữ nhân vong.\nSinh ly, tử biệt vô tâm luyến,\nTự yếu quy hưu biệt giá lang.\nKhổng tử cửu khúc châu nan độ,\nPhóng thủy, khai câu, thiên mệnh thương.";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = 1;
    nhiThapBatTuModel.diemDoTran = 1;
    nhiThapBatTuModel.diemKhaiTruong = 0;
    nhiThapBatTuModel.diemXuathanh = 0;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 0;
    nhiThapBatTuModel.diemMuaOtoXemay = 0;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoTruong() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Trương nguyệt Lộc - Vạn Tu: Tốt";
    nhiThapBatTuModel.binhSao = "(Kiết Tú) Tướng tinh con nai, chủ trị ngày thứ 2.";
    nhiThapBatTuModel.nenLam = "Khởi công tạo tác trăm việc tốt, tốt nhất là xây cất nhà, che mái dựng hiên, trổ cửa dựng cửa, cưới gả, chôn cất, làm ruộng, nuôi tằm, đặt táng kê gác, chặt cỏ phá đất, cắt áo, làm thuỷ lợi.";
    nhiThapBatTuModel.kiengcu = "Sửa hoặc làm thuyền chèo, đẩy thuyền mới xuống nước.";
    nhiThapBatTuModel.ngoaile = "Tại Hợi, Mão, Mùi đều tốt. Tại Mùi Đăng viên rất tốt nhưng phạm Phục Đoạn.";
    nhiThapBatTuModel.thoVinh = "Trương tinh nhật hảo tạo long hiên,\nNiên niên tiện kiến tiến trang điền,\nMai táng bất cửu thăng quan chức,\nĐại đại vi quan cận Đế tiền,\nKhai môn phóng thủy chiêu tài bạch,\nHôn nhân hòa hợp, phúc miên miên.\nĐiền tàm đại lợi, thương khố mãn,\nBách ban lợi ý, tự an nhiên.";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = 1;
    nhiThapBatTuModel.diemDoTran = 1;
    nhiThapBatTuModel.diemKhaiTruong = 1;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 1;
    nhiThapBatTuModel.diemMuaOtoXemay = 1;
    nhiThapBatTuModel.diemCuoiHoi = 1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoDuc() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Dực hỏa Xà - Bi Đồng: Xấu";
    nhiThapBatTuModel.binhSao = "(Hung Tú) Tướng tinh con rắn, chủ trị ngày thứ 3.";
    nhiThapBatTuModel.nenLam = "Cắt áo sẽ đước tiền tài.";
    nhiThapBatTuModel.kiengcu = "Chôn cất, cưới gả, xây cất nhà, đặt táng kê gác, gác đòn dông, trổ cửa gắn cửa, các vụ thủy lợi.";
    nhiThapBatTuModel.ngoaile = "Tại Thân, Tý, Thìn mọi việc tốt. Tại Thìn Vượng Địa tốt hơn hết. Tại Tý Đăng Viên nên thừa kế sự nghiệp, lên quan lãnh chức.";
    nhiThapBatTuModel.thoVinh = "Dực tinh bất lợi giá cao đường,\nTam niên nhị tái kiến ôn hoàng,\nMai táng nhược hoàn phùng thử nhật,\nTử tôn bất định tẩu tha hương.\nHôn nhân thử nhật nghi bất lợi,\nQuy gia định thị bất tương đương.\nKhai môn phóng thủy gia tu phá,\nThiếu nữ tham hoa luyến ngoại lang.";
    nhiThapBatTuModel.diemKhoiCong = -1;
    nhiThapBatTuModel.diemDongTho = -1;
    nhiThapBatTuModel.diemDoTran = -1;
    nhiThapBatTuModel.diemKhaiTruong = -1;
    nhiThapBatTuModel.diemXuathanh = -1;
    nhiThapBatTuModel.diemNhapTrach = -1;
    nhiThapBatTuModel.diemMuaNha = -1;
    nhiThapBatTuModel.diemMuaOtoXemay = -1;
    nhiThapBatTuModel.diemCuoiHoi = -1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel saoChuan() {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    nhiThapBatTuModel.tenSao = "Chẩn thủy Dẫn - Lưu Trực: Tốt";
    nhiThapBatTuModel.binhSao = "(Kiết Tú) Tướng tinh con giun, chủ trị ngày thứ 4.";
    nhiThapBatTuModel.nenLam = "Khởi công tạo tác mọi việc tốt lành, tốt nhất là xây cất lầu gác, chôn cất, cưới gả. Các việc khác cũng tốt như dựng phòng, cất trại, xuất hành, chặt cỏ phá đất.";
    nhiThapBatTuModel.kiengcu = "Đi thuyền.";
    nhiThapBatTuModel.ngoaile = "Tại Tị Dậu Sửu đều tốt. Tại Sửu Vượng Địa, tạo tác thịnh vượng. Tại Tị Đăng Viên là ngôi tôn đại, mưu động ắt thành danh.";
    nhiThapBatTuModel.thoVinh = "Chẩn tinh lâm thủy tạo long cung,\nĐại đại vi quan thụ sắc phong,\nPhú quý vinh hoa tăng phúc thọ,\nKhố mãn thương doanh tự Xương long.\nMai táng văn tinh lai chiếu trợ,\nTrạch xá an ninh, bất kiến hung.\nCánh hữu vi quan, tiên đế sủng,\nHôn nhân long tử xuất long cung.";
    nhiThapBatTuModel.diemKhoiCong = 1;
    nhiThapBatTuModel.diemDongTho = 1;
    nhiThapBatTuModel.diemDoTran = 1;
    nhiThapBatTuModel.diemKhaiTruong = 1;
    nhiThapBatTuModel.diemXuathanh = 1;
    nhiThapBatTuModel.diemNhapTrach = 1;
    nhiThapBatTuModel.diemMuaNha = 1;
    nhiThapBatTuModel.diemMuaOtoXemay = 1;
    nhiThapBatTuModel.diemCuoiHoi = 1;
    return nhiThapBatTuModel;
  }

  NhiThapBatTuModel getObjectNhiThapBatTu(TYPE_SAONHITHAPBATTU type_saonhithapbattu) {
    NhiThapBatTuModel nhiThapBatTuModel = new NhiThapBatTuModel();
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_GIAC) {
      return saoGiac();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CANG) {
      return saoCang();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_DE) {
      return saoDe();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_PHONG) {
      return saoPhong();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TAM) {
      return saoTam();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_VI) {
      return saoVix();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CO) {
      return saoCo();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_DAU) {
      return saoDau();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_NGUU) {
      return saoNguu();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_NU) {
      return saoNu();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_HU) {
      return saoHu();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_NGUY) {
      return saoNguy();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_THAT) {
      return saoThat();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_BICH) {
      return saoBich();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_KHUE) {
      return saoKhue();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_LAU) {
      return saoLau();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_VIJ) {
      return saoVij();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_MAO) {
      return saoMao();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TAT) {
      return saoTat();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CHUY) {
      return saoTruy();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_SAM) {
      return saoSam();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TINHR) {
      return saoTinhR();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_QUY) {
      return saoQuy();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_LIEU) {
      return saoLieu();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TINH) {
      return saoTinh();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_TRUONG) {
      return saoTruong();
    }
    if (type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_DUC) {
      return saoDuc();
    }
    return type_saonhithapbattu == TYPE_SAONHITHAPBATTU.TYPE_SAONHITHAPBATTU_CHUAN ? saoChuan() : nhiThapBatTuModel;
  }

  TYPE_SAONHITHAPBATTU getSaoNhiThapBatTu(DateTime dateTime) {

  //  print('indexxxx ${getIndexSaoNhiThapBatTu(dateTime)}');

  return TYPE_SAONHITHAPBATTU.values[getIndexSaoNhiThapBatTu(dateTime) ];
  }

  int getIndexSaoNhiThapBatTu(DateTime dateTime) {
    int  day = jdFromDate(01, 01, 1995);
    int thisTime = jdFromDate(dateTime.day,dateTime.month, dateTime.year);
    int distance = thisTime - day;
    int x = distance%28.abs();
    if(day>thisTime) {
    //chưa test
      return 10 -x <0?27 + 10 -x :10 -x ;
    }else{
      // đã test
      print(10+x >27 ? -27 +10 +x -1 : 10+x);
      return 10+x >27 ? -27 +10 +x -1 : 10+x;
    }
  //LVNCore.setSolarDate(iArr[0], iArr[1], iArr[2], 0, 0, 0);

  }
}
