import 'dart:core';

class GioLyThuanPhong {
  final String descriptionTime;
  final List<String> listAboutTime;
  final String titleTime;
   int typeGio;

  GioLyThuanPhong(this.descriptionTime, this.listAboutTime, this.titleTime, {this.typeGio});
}

class GioXHLyThuanPhong {
  static GioXHLyThuanPhong sharedInstance() {
    return new GioXHLyThuanPhong();
  }

  List<GioLyThuanPhong> getListGioLyThuanPhong(int num, int num2) {
    List<GioLyThuanPhong> arrayList = [];
    List<String> strArr = ["11h-13h (Ngọ)", "23h-01h (Tý)"];
    int valueOf = ((((num + num2) + 1) - 2) % 6);
    GioLyThuanPhong gioLyThuanPhong = new GioLyThuanPhong(
        getTitleGioLyThuanPhong(valueOf),
        strArr,
        getDescriptionGioLyThuanPhong(valueOf),
        );
    if (valueOf == 1 || valueOf == 2 || valueOf == 5) {
      gioLyThuanPhong.typeGio = 1;
    } else {
      gioLyThuanPhong.typeGio = -1;
    }
    arrayList.add(gioLyThuanPhong);
    List<String> strArr2 = ["13h-15h (Mùi)", "01h-03h (Sửu)"];
    int valueOf2 = (((num + num2) + 2) - 2) % 6;
    GioLyThuanPhong gioLyThuanPhong2 = new GioLyThuanPhong(
        getTitleGioLyThuanPhong(valueOf2),
        strArr2,
        getDescriptionGioLyThuanPhong(valueOf2),
        );
    if (valueOf2 == 1 || valueOf2 == 2 || valueOf2 == 5) {
      gioLyThuanPhong2.typeGio = 1;
    } else {
      gioLyThuanPhong2.typeGio = -1;
    }
    arrayList.add(gioLyThuanPhong2);
    List<String> strArr3 = ["15h-17h (Thân)", "03h-05h (Dần)"];
    int valueOf3 = (((num + num2) + 3) - 2) % 6;
    GioLyThuanPhong gioLyThuanPhong3 = new GioLyThuanPhong(
        getTitleGioLyThuanPhong(valueOf3),
        strArr3,
        getDescriptionGioLyThuanPhong(valueOf3),
       );
    if (valueOf3 == 1 || valueOf3 == 2 || valueOf3 == 5) {
      gioLyThuanPhong3.typeGio = 1;
    } else {
      gioLyThuanPhong3.typeGio = -1;
    }
    arrayList.add(gioLyThuanPhong3);
    List<String> strArr4 = ["17h-19h (Dậu)", "05h-07h (Mão)"];
    int valueOf4 = (((num + num2) + 4) - 2) % 6;
    GioLyThuanPhong gioLyThuanPhong4 = new GioLyThuanPhong(
        getTitleGioLyThuanPhong(valueOf4),
    strArr4,
        getDescriptionGioLyThuanPhong(valueOf4),
        );
    if (valueOf4 == 1 || valueOf4 == 2 || valueOf4 == 5) {
      gioLyThuanPhong4.typeGio = 1;
    } else {
      gioLyThuanPhong4.typeGio = -1;
    }
    arrayList.add(gioLyThuanPhong4);
    List<String> strArr5 = ["19h-21h (Tuất)", "07h-09h (Thìn)"];
    int valueOf5 = (((num + num2) + 5) - 2) % 6;
    GioLyThuanPhong gioLyThuanPhong5 = new GioLyThuanPhong(
        getTitleGioLyThuanPhong(valueOf5),
    strArr5,
        getDescriptionGioLyThuanPhong(valueOf5),
        );
    if (valueOf5 == 1 || valueOf5 == 2 || valueOf5 == 5) {
      gioLyThuanPhong5.typeGio = 1;
    } else {
      gioLyThuanPhong5.typeGio = -1;
    }
    arrayList.add(gioLyThuanPhong5);
    List<String> strArr6 = ["21h-23h (Hợi)", "09h-11h (Tỵ)"];
    int valueOf6 = (((num + num2) + 6) - 2) % 6;
    GioLyThuanPhong gioLyThuanPhong6 = new GioLyThuanPhong(
        getTitleGioLyThuanPhong(valueOf6),
    strArr6,
        getDescriptionGioLyThuanPhong(valueOf6),
        );
    if (valueOf6 == 1 || valueOf6 == 2 || valueOf6 == 5) {
      gioLyThuanPhong6.typeGio = 1;
    } else {
      gioLyThuanPhong6.typeGio = -1;
    }
    arrayList.add(gioLyThuanPhong6);
    return arrayList;
  }

  String getDescriptionGioLyThuanPhong(int num) {
    switch (num) {
      case 1:
        return "Mọi việc đều tốt, cầu tài đi hướng Tây, Nam. Nhà cửa yên lành, người xuất hành đều bình yên.";
      case 2:
        return "Vui sắp tới. Cầu tài đi hướng Nam, đi việc quan nhiều may mắn. Người xuất hành đều bình yên. Chăn nuôi đều thuận lợi, người đi có tin vui về.";
      case 3:
        return "Nghiệp khó thành, cầu tài mờ mịt, kiện cáo nên hoãn lại. Người đi chưa có tin về. Đi hướng Nam tìm nhanh mới thấy, nên phòng ngừa cãi cọ, miệng tiếng rất tầm thường. Việc làm chậm, lâu la nhưng việc gì cũng chắc chắn.";
      case 4:
        return "Hay cãi cọ, gây chuyện đói kém, phải nên đề phòng, người đi nên hoãn lại, phòng người nguyền rủa, tránh lây bệnh.";
      case 5:
        return "Rất tốt lành, đi thường gặp may mắn. Buôn bán có lời, phụ nữ báo tin vui mừng, người đi sắp về nhà, mọi việc đều hòa hợp, có bệnh cầu tài sẽ khỏi, người nhà đều mạnh khỏe.";
      default:
        return "Cầu tài không có lợi hay bị trái ý, ra đi gặp hạn, việc quan phải đòn, gặp ma quỷ cũng lễ mới an.";
    }
  }

  String getTitleGioLyThuanPhong(int num) {
    switch (num) {
      case 1:
        return "Đại an";
      case 2:
        return "Tốc hỷ";
      case 3:
        return "Lưu miền";
      case 4:
        return "Xích khẩu";
      case 5:
        return "Tiểu các";
      default:
        return "Tuyệt hỷ";
    }
  }
}
