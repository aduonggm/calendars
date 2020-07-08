import 'dart:core';


class DictionaryDataXongDat {
   String details12ConGiap;
   String detailsMenh;
   String detailsNameTuvi;
   int detailsPoint;
   String detailsTuoiXongNha;
   int namSinh;
   static final List<String> MENH_NGUHANH = ["Hỏa" , "Thổ" , "Kim" , "Thủy" ,"Mộc"];


   int getMenhNguHanhWithThienCan(int i, int i2) {
     int i3;
     int i4 = ((i / 2) + 1).toInt();
     int i5 = ((i2 / 2) + 1).toInt();
     if (i5 <= 3) {
       i3 = (i4 + i5) % 5;
     } else {
       i3 = ((i4 + i5) - 3) % 5;
     }
     return i3;


     // return new MENH_NGUHANH[]{MENH_NGUHANH.MENH_NGUHANH_THO, MENH_NGUHANH.MENH_NGUHANH_MOC, MENH_NGUHANH.MENH_NGUHANH_KIM, MENH_NGUHANH.MENH_NGUHANH_THUY, MENH_NGUHANH.MENH_NGUHANH_HOA}[i3];
   }
   static String getNameMenh(int i) {

   return MENH_NGUHANH[i];
   }


static DictionaryDataXongDat sharedInstance() {
return new DictionaryDataXongDat();
}


//
//
//static String getMenhTVWithYear(int i) {
//if (i == 1941 || i == 2001 || i == 2061) {
//return "Bạch Lạp Kim (chân đèn bằng vàng)";
//}
//if (i == 1940 || i == 2000 || i == 2060) {
//return "Bạch Lạp Kim (chân đèn bằng vàng)";
//}
//if (i == 1939 || i == 1999) {
//return "Thành Ðầu Thổ (đất trên thành)";
//}
//if (i == 1938 || i == 1998) {
//return "Thành Ðầu Thổ (đất trên thành)";
//}
//if (i == 1937 || i == 1997) {
//return "Giáng Hạ Thuỷ (nước mù sương)";
//}
//if (i == 1936 || i == 1996 || i == 2056) {
//return "Giáng Hạ Thuỷ (nước mù sương)";
//}
//if (i == 1935 || i == 1995) {
//return "Sơn Ðầu Hoả (lửa trên núi)";
//}
//if (i == 1934 || i == 1994) {
//return "Sơn Ðầu Hoả (lửa trên núi)";
//}
//if (i == 1933 || i == 1993) {
//return "Kiếm Phong Kim (kiếm bằng vàng)";
//}
//if (i == 1932 || i == 1992) {
//return "Kiếm Phong Kim (kiếm bằng vàng)";
//}
//if (i == 1931 || i == 1991) {
//return "Lộ Bàng Thổ (đất đường đi)";
//}
//if (i == 1930 || i == 1990) {
//return "Lộ Bàng Thổ (đất đường đi)";
//}
//if (i == 1929 || i == 1989) {
//return "Ðại Lâm Mộc (cây lớn trong rừng)";
//}
//if (i == 1928 || i == 1988) {
//return "Ðại Lâm Mộc (cây lớn trong rừng)";
//}
//if (i == 1927 || i == 1987) {
//return "Lư Trung Hoả (lửa trong lư)";
//}
//if (i == 1926 || i == 1986) {
//return "Lư Trung Hoả (lửa trong lư)";
//}
//if (i == 1925 || i == 1985) {
//return "Hải Trung Kim (vàng dưới biển)";
//}
//if (i == 1924 || i == 1984) {
//return "Hải Trung Kim (vàng dưới biển)";
//}
//if (i == 1923 || i == 1983) {
//return "Ðại Hải Thuỷ (nước biển lớn)";
//}
//if (i == 1922 || i == 1982) {
//return "Ðại Hải Thuỷ (nước biển lớn)";
//}
//if (i == 1921 || i == 1981) {
//return "Thạch Lựu Mộc (cây lựu đá)";
//}
//if (i == 1920 || i == 1980) {
//return "Thạch Lựu Mộc (cây lựu đá)";
//}
//if (i == 1919 || i == 1979) {
//return "Thiên Thượng Hoả (lửa trên trời)";
//}
//if (i == 1918 || i == 1978) {
//return "Thiên Thượng Hoả (lửa trên trời)";
//}
//if (i == 1917 || i == 1977) {
//return "Sa Trung Thổ (đất trong cát)";
//}
//if (i == 1916 || i == 1976) {
//return "Sa Trung Thổ (đất trong cát)";
//}
//if (i == 1915 || i == 1975) {
//return "Ðại Khê Thuỷ (nước khe lớn)";
//}
//if (i == 1914 || i == 1974) {
//return "Ðại Khê Thuỷ (nước khe lớn)";
//}
//if (i == 1913 || i == 1973) {
//return "Tang Ðố Mộc (cây dâu)";
//}
//if (i == 1912 || i == 1972) {
//return "Tang Ðố Mộc (cây dâu)";
//}
//if (i == 1911 || i == 1971) {
//return "Xoa Kim Xuyến (xuyến bằng vàng)";
//}
//if (i == 1910 || i == 1970) {
//return "Xoa Kim Xuyến (xuyến bằng vàng)";
//}
//if (i == 1909 || i == 1969) {
//return "Ðại Trạch Thổ (đất nền nhà)";
//}
//if (i == 1908 || i == 1968) {
//return "Ðại Trạch Thổ (đất nền nhà)";
//}
//if (i == 1907 || i == 1967) {
//return "Thiên Hà Thuỷ (nước sông Thiên Hà)";
//}
//if (i == 1906 || i == 1966) {
//return "Thiên Hà Thuỷ (nước sông Thiên Hà)";
//}
//if (i == 1905 || i == 1965) {
//return "Phúc Ðăng Hoả (lửa đèn nhỏ)";
//}
//if (i == 1904 || i == 1964) {
//return "Phúc Ðăng Hoả (lửa đèn nhỏ)";
//}
//if (i == 1903 || i == 1963) {
//return "Kim Bạch Kim (vàng trắng)";
//}
//if (i == 1902 || i == 1962) {
//return "Kim Bạch Kim (vàng trắng)";
//}
//if (i == 1901 || i == 1961) {
//return "Bích Thượng Thổ (đất trên vách)";
//}
//if (i == 1900 || i == 1960) {
//return "Bích Thượng Thổ (đất trên vách)";
//}
//if (i == 1959 || i == 1899 || i == 2019) {
//return "Bình Ðịa Mộc (cây trên đất bằng)";
//}
//if (i == 1958 || i == 2018) {
//return "Bình Ðịa Mộc (cây trên đất bằng)";
//}
//if (i == 1957 || i == 2017) {
//return "Sơn Hạ Hoả (lửa dưới núi)";
//}
//if (i == 1956 || i == 2016) {
//return "Sơn Hạ Hoả (lửa dưới núi)";
//}
//if (i == 1955 || i == 2015) {
//return "Sa Trung Kim (vàng trong cát)";
//}
//if (i == 1954 || i == 2014) {
//return "Sa Trung Kim (vàng trong cát)";
//}
//if (i == 1953 || i == 2013) {
//return "Trường Lưu Thuỷ (nước chảy dài)";
//}
//if (i == 1952 || i == 2012) {
//return "Trường Lưu Thuỷ (nước chảy dài)";
//}
//if (i == 1951 || i == 2011) {
//return "Tòng Bá mộc (cây Tòng và cây Bá)";
//}
//if (i == 1950 || i == 2010) {
//return "Tòng Bá mộc (cây Tòng và cây Bá)";
//}
//if (i == 1949 || i == 2009) {
//return "Thích Lịch Hoả (lửa sấm sét)";
//}
//if (i == 1948 || i == 2008) {
//return "Thích Lịch Hoả (lửa sấm sét)";
//}
//if (i == 1947 || i == 2007) {
//return "Ốc Thượng Thổ (đất ổ vò vỏ)";
//}
//if (i == 1946 || i == 2006) {
//return "Ốc Thượng Thổ (đất ổ vò vỏ)";
//}
//if (i == 1945 || i == 2005) {
//return "Tuyền Trung Thuỷ (nước trong giếng)";
//}
//if (i == 1944 || i == 2004) {
//return "Tuyền Trung Thuỷ (nước trong giếng)";
//}
//if (i == 1943 || i == 2003) {
//return "Dương Liễu mộc (cây dương liễu)";
//}
//if (i == 1942 || i == 2002) {
//return "Dương Liễu mộc (cây dương liễu)";
//}
//return null;
//}
//
//
//static int getPointThienCanMain(int r10, int r11) {
//
//
//throw new Exception("Method not decompiled: com.ppclink.lichviet.khamphaold.model.DictionaryDataXongDat.getPointThienCanMain(int, int):int");
//}
//
//
//static int getPointWithDiaChiMain(int r12, int r13) {
//
//throw new Exception("Method not decompiled: com.ppclink.lichviet.khamphaold.model.DictionaryDataXongDat.getPointWithDiaChiMain(int, int):int");
//}
//
////String getNameDiachi(int i) {
////  return i == 0 ? "Tý" : i == 1 ? Constant.CHI_SUU_NAME : i == 2 ? Constant.CHI_DAN_NAME : i == 3 ? Constant.CHI_MAO_NAME : i == 4 ? Constant.CHI_THIN_NAME : i == 5 ? Constant.CHI_TY_NAME : i == 6 ? Constant.CHI_NGO_NAME : i == 7 ? Constant.CHI_MUI_NAME : i == 8 ? Constant.CHI_THAN_NAME : i == 9 ? Constant.CHI_DAU_NAME : i == 10 ? Constant.CHI_TUAT_NAME : i == 11 ? Constant.CHI_HOI_NAME : " ";
////}
////
////String getNameThienCan(int i) {
////  return i == 6 ? Constant.CAN_CANH_NAME : i == 7 ? Constant.CAN_TAN_NAME : i == 8 ? Constant.CAN_NHAM_NAME : i == 9 ? Constant.CAN_QUY_NAME : i == 0 ? Constant.CAN_GIAP_NAME : i == 1 ? Constant.CAN_AT_NAME : i == 2 ? Constant.CAN_BINH_NAME : i == 3 ? Constant.CAN_DINH_NAME : i == 4 ? Constant.CAN_MAU_NAME : i == 5 ? Constant.CAN_KY_NAME : " ";
////}
//
//static DictionaryDataXongDat sharedInstance() {
//return new DictionaryDataXongDat();
//}
//
//
//MENH_NGUHANH getMenhNguHanhGiaChuWithThienCan(int i, int i2) {
//  MENH_NGUHANH menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//  if (i == 0) {
//    if (i2 == 0) {
//      return MENH_NGUHANH.MENH_NGUHANH_KIM;
//    }
//    if (i2 == 2) {
//      return MENH_NGUHANH.MENH_NGUHANH_THUY;
//    }
//    if (i2 == 4) {
//      return MENH_NGUHANH.MENH_NGUHANH_HOA;
//    }
//    if (i2 == 6) {
//      return MENH_NGUHANH.MENH_NGUHANH_KIM;
//    }
//    if (i2 == 8) {
//      return MENH_NGUHANH.MENH_NGUHANH_THUY;
//    }
//    if (i2 == 10) {
//      return MENH_NGUHANH.MENH_NGUHANH_HOA;
//    }
//    return menh_nguhanh;
//  } else if (i == 1) {
//    if (i2 == 1) {
//      return MENH_NGUHANH.MENH_NGUHANH_KIM;
//    }
//    if (i2 == 3) {
//      return MENH_NGUHANH.MENH_NGUHANH_THUY;
//    }
//    if (i2 == 5) {
//      return MENH_NGUHANH.MENH_NGUHANH_HOA;
//    }
//    if (i2 == 7) {
//      return MENH_NGUHANH.MENH_NGUHANH_KIM;
//    }
//    if (i2 == 9) {
//      return MENH_NGUHANH.MENH_NGUHANH_THUY;
//    }
//    if (i2 == 11) {
//      return MENH_NGUHANH.MENH_NGUHANH_HOA;
//    }
//    return menh_nguhanh;
//  } else if (i == 2) {
//    if (i2 == 0) {
//      return MENH_NGUHANH.MENH_NGUHANH_THUY;
//    }
//    if (i2 == 2) {
//      return MENH_NGUHANH.MENH_NGUHANH_HOA;
//    }
//    if (i2 == 4) {
//      return MENH_NGUHANH.MENH_NGUHANH_THO;
//    }
//    if (i2 == 6) {
//      return MENH_NGUHANH.MENH_NGUHANH_THUY;
//    }
//    if (i2 == 8) {
//      return MENH_NGUHANH.MENH_NGUHANH_HOA;
//    }
//    if (i2 == 10) {
//      return MENH_NGUHANH.MENH_NGUHANH_THO;
//    }
//    return menh_nguhanh;
//  } else if (i == 3) {
//    if (i2 == 1) {
//      return MENH_NGUHANH.MENH_NGUHANH_THUY;
//    }
//    if (i2 == 3) {
//      return MENH_NGUHANH.MENH_NGUHANH_HOA;
//    }
//    if (i2 == 5) {
//      return MENH_NGUHANH.MENH_NGUHANH_THO;
//    }
//    if (i2 == 7) {
//      return MENH_NGUHANH.MENH_NGUHANH_THUY;
//    }
//    if (i2 == 9) {
//      return MENH_NGUHANH.MENH_NGUHANH_HOA;
//    }
//    if (i2 == 11) {
//      return MENH_NGUHANH.MENH_NGUHANH_THO;
//    }
//    return menh_nguhanh;
//  } else if (i == 4) {
//    if (i2 == 0) {
//      return MENH_NGUHANH.MENH_NGUHANH_HOA;
//    }
//    if (i2 == 2) {
//      return MENH_NGUHANH.MENH_NGUHANH_THO;
//    }
//    if (i2 == 4) {
//      return MENH_NGUHANH.MENH_NGUHANH_MOC;
//    }
//    if (i2 == 6) {
//      return MENH_NGUHANH.MENH_NGUHANH_HOA;
//    }
//    if (i2 == 8) {
//      return MENH_NGUHANH.MENH_NGUHANH_THO;
//    }
//    if (i2 == 10) {
//      return MENH_NGUHANH.MENH_NGUHANH_MOC;
//    }
//    return menh_nguhanh;
//  } else if (i == 5) {
//    if (i2 == 1) {
//      return MENH_NGUHANH.MENH_NGUHANH_HOA;
//    }
//    if (i2 == 3) {
//      return MENH_NGUHANH.MENH_NGUHANH_THO;
//    }
//    if (i2 == 5) {
//      return MENH_NGUHANH.MENH_NGUHANH_MOC;
//    }
//    if (i2 == 7) {
//      return MENH_NGUHANH.MENH_NGUHANH_HOA;
//    }
//    if (i2 == 9) {
//      return MENH_NGUHANH.MENH_NGUHANH_THO;
//    }
//    if (i2 == 11) {
//      return MENH_NGUHANH.MENH_NGUHANH_MOC;
//    }
//    return menh_nguhanh;
//  } else if (i == 6) {
//    if (i2 == 0) {
//      return MENH_NGUHANH.MENH_NGUHANH_THO;
//    }
//    if (i2 == 2) {
//      return MENH_NGUHANH.MENH_NGUHANH_MOC;
//    }
//    if (i2 == 4) {
//      return MENH_NGUHANH.MENH_NGUHANH_KIM;
//    }
//    if (i2 == 6) {
//      return MENH_NGUHANH.MENH_NGUHANH_THO;
//    }
//    if (i2 == 8) {
//      return MENH_NGUHANH.MENH_NGUHANH_MOC;
//    }
//    if (i2 == 10) {
//      return MENH_NGUHANH.MENH_NGUHANH_KIM;
//    }
//    return menh_nguhanh;
//  } else if (i == 7) {
//    if (i2 == 1) {
//      return MENH_NGUHANH.MENH_NGUHANH_THO;
//    }
//    if (i2 == 3) {
//      return MENH_NGUHANH.MENH_NGUHANH_MOC;
//    }
//    if (i2 == 5) {
//      return MENH_NGUHANH.MENH_NGUHANH_KIM;
//    }
//    if (i2 == 7) {
//      return MENH_NGUHANH.MENH_NGUHANH_THO;
//    }
//    if (i2 == 9) {
//      return MENH_NGUHANH.MENH_NGUHANH_MOC;
//    }
//    if (i2 == 11) {
//      return MENH_NGUHANH.MENH_NGUHANH_KIM;
//    }
//    return menh_nguhanh;
//  } else if (i == 8) {
//    if (i2 == 0) {
//      return MENH_NGUHANH.MENH_NGUHANH_MOC;
//    }
//    if (i2 == 2) {
//      return MENH_NGUHANH.MENH_NGUHANH_KIM;
//    }
//    if (i2 == 4) {
//      return MENH_NGUHANH.MENH_NGUHANH_THUY;
//    }
//    if (i2 == 6) {
//      return MENH_NGUHANH.MENH_NGUHANH_MOC;
//    }
//    if (i2 == 8) {
//      return MENH_NGUHANH.MENH_NGUHANH_KIM;
//    }
//    if (i2 == 10) {
//      return MENH_NGUHANH.MENH_NGUHANH_THUY;
//    }
//    return menh_nguhanh;
//  } else if (i != 9) {
//    return menh_nguhanh;
//  } else {
//    if (i2 == 1) {
//      return MENH_NGUHANH.MENH_NGUHANH_MOC;
//    }
//    if (i2 == 3) {
//      return MENH_NGUHANH.MENH_NGUHANH_KIM;
//    }
//    if (i2 == 5) {
//      return MENH_NGUHANH.MENH_NGUHANH_THUY;
//    }
//    if (i2 == 7) {
//      return MENH_NGUHANH.MENH_NGUHANH_MOC;
//    }
//    if (i2 == 9) {
//      return MENH_NGUHANH.MENH_NGUHANH_KIM;
//    }
//    return i2 == 11 ? MENH_NGUHANH.MENH_NGUHANH_THUY : menh_nguhanh;
//  }
//}
//
//int getNamSinh() {
//  return this.namSinh;
//}
//
//void setNamSinh(int i) {
//  this.namSinh = i;
//}
//
//String getDetailsNameTuvi() {
//  return this.detailsNameTuvi;
//}
//
//void setDetailsNameTuvi(String str) {
//  this.detailsNameTuvi = str;
//}
//
//String getDetailsMenh() {
//  return this.detailsMenh;
//}
//
//void setDetailsMenh(String str) {
//  this.detailsMenh = str;
//}
//
//int getDetailsPoint() {
//  return this.detailsPoint;
//}
//
//void setDetailsPoint(int i) {
//  this.detailsPoint = i;
//}
//
//String getDetails12ConGiap() {
//  return this.details12ConGiap;
//}
//
//void setDetails12ConGiap(String str) {
//  this.details12ConGiap = str;
//}
//
//String getDetailsTuoiXongNha() {
//  return this.detailsTuoiXongNha;
//}
//
//void setDetailsTuoiXongNha(String str) {
//  this.detailsTuoiXongNha = str;
//}
//
//static int getMenhNguHanhGiaChuWithThienCanDiaChi(int i, int i2) {
//MENH_NGUHANH menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//if (i == 0) {
//if (i2 == 0) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_KIM;
//} else if (i2 == 2) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THUY;
//} else if (i2 == 4) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_HOA;
//} else if (i2 == 6) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_KIM;
//} else if (i2 == 8) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THUY;
//} else if (i2 == 10) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_HOA;
//}
//} else if (i == 1) {
//if (i2 == 1) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_KIM;
//} else if (i2 == 3) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THUY;
//} else if (i2 == 5) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_HOA;
//} else if (i2 == 7) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_KIM;
//} else if (i2 == 9) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THUY;
//} else if (i2 == 11) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_HOA;
//}
//} else if (i == 2) {
//if (i2 == 0) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THUY;
//} else if (i2 == 2) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_HOA;
//} else if (i2 == 4) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THO;
//} else if (i2 == 6) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THUY;
//} else if (i2 == 8) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_HOA;
//} else if (i2 == 10) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THO;
//}
//} else if (i == 3) {
//if (i2 == 1) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THUY;
//} else if (i2 == 3) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_HOA;
//} else if (i2 == 5) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THO;
//} else if (i2 == 7) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THUY;
//} else if (i2 == 9) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_HOA;
//} else if (i2 == 11) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THO;
//}
//} else if (i == 4) {
//if (i2 == 0) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_HOA;
//} else if (i2 == 2) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THO;
//} else if (i2 == 4) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//} else if (i2 == 6) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_HOA;
//} else if (i2 == 8) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THO;
//} else if (i2 == 10) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//}
//} else if (i == 5) {
//if (i2 == 1) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_HOA;
//} else if (i2 == 3) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THO;
//} else if (i2 == 5) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//} else if (i2 == 7) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_HOA;
//} else if (i2 == 9) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THO;
//} else if (i2 == 11) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//}
//} else if (i == 6) {
//if (i2 == 0) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THO;
//} else if (i2 == 2) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//} else if (i2 == 4) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_KIM;
//} else if (i2 == 6) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THO;
//} else if (i2 == 8) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//} else if (i2 == 10) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_KIM;
//}
//} else if (i == 7) {
//if (i2 == 1) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THO;
//} else if (i2 == 3) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//} else if (i2 == 5) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_KIM;
//} else if (i2 == 7) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THO;
//} else if (i2 == 9) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//} else if (i2 == 11) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_KIM;
//}
//} else if (i == 8) {
//if (i2 == 0) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//} else if (i2 == 2) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_KIM;
//} else if (i2 == 4) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THUY;
//} else if (i2 == 6) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//} else if (i2 == 8) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_KIM;
//} else if (i2 == 10) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THUY;
//}
//} else if (i == 9) {
//if (i2 == 1) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//} else if (i2 == 3) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_KIM;
//} else if (i2 == 5) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THUY;
//} else if (i2 == 7) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_MOC;
//} else if (i2 == 9) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_KIM;
//} else if (i2 == 11) {
//menh_nguhanh = MENH_NGUHANH.MENH_NGUHANH_THUY;
//}
//}
//return menh_nguhanh;
//}
//
//
//
//static int[] getLunarYear(int i) {
//  return new int[]{(i + 6) % 10, (i + 8) % 12};
//  }
//
//int[] getLunarYear(int i, int i2, int i3) {
//  return new int[]{(i + 6) % 10, (i + 8) % 12};
//  }
//
//int[] getLunarDay(int i, int i2, int i3) {
//  return new int[]{(i + 6) % 10, (i + 8) % 12};
//  }
//
//static int getPointMenhNguHanhMain(int i, int i2) {
//if (i == MENH_NGUHANH.MENH_NGUHANH_HOA.getValue()) {
//if (i2 != MENH_NGUHANH.MENH_NGUHANH_KIM.getValue()) {
//if (i2 == MENH_NGUHANH.MENH_NGUHANH_MOC.getValue() || i2 == MENH_NGUHANH.MENH_NGUHANH_THO.getValue()) {
//return 2;
//}
//return 1;
//}
//} else if (i == MENH_NGUHANH.MENH_NGUHANH_THO.getValue()) {
//if (i2 != MENH_NGUHANH.MENH_NGUHANH_THUY.getValue()) {
//if (i2 == MENH_NGUHANH.MENH_NGUHANH_HOA.getValue() || i2 == MENH_NGUHANH.MENH_NGUHANH_KIM.getValue()) {
//return 2;
//}
//return 1;
//}
//} else if (i == MENH_NGUHANH.MENH_NGUHANH_KIM.getValue()) {
//if (i2 != MENH_NGUHANH.MENH_NGUHANH_MOC.getValue()) {
//if (i2 == MENH_NGUHANH.MENH_NGUHANH_THO.getValue() || i2 == MENH_NGUHANH.MENH_NGUHANH_THUY.getValue()) {
//return 2;
//}
//return 1;
//}
//} else if (i != MENH_NGUHANH.MENH_NGUHANH_THUY.getValue()) {
//if (i == MENH_NGUHANH.MENH_NGUHANH_MOC.getValue()) {
//if (i2 != MENH_NGUHANH.MENH_NGUHANH_THO.getValue()) {
//if (i2 == MENH_NGUHANH.MENH_NGUHANH_THUY.getValue() || i2 == MENH_NGUHANH.MENH_NGUHANH_HOA.getValue()) {
//return 2;
//}
//}
//}
//return 1;
//} else if (i2 != MENH_NGUHANH.MENH_NGUHANH_HOA.getValue()) {
//if (i2 == MENH_NGUHANH.MENH_NGUHANH_KIM.getValue() || i2 == MENH_NGUHANH.MENH_NGUHANH_MOC.getValue()) {
//return 2;
//}
//return 1;
//}
//return 0;
//}
//
//static ArrayList<DictionaryDataXongDat> getListTuoiXongDatGiaChu(int i, int i2) {
//int[] lunarYear = getLunarYear(i);
//int i3 = lunarYear[1];
//int i4 = lunarYear[0];
//int[] lunarYear2 = getLunarYear(i2);
//int i5 = lunarYear2[1];
//return getArrayTuoiHop(getYearString(i3), i3, i4, lunarYear2[0], i5);
//}
//
// static String[] getYearString(int i) {
//  int i2 = i;
//  if (i2 == 9) {
//    return new String[]{"2012", "2000", "1988", "1976", "1964", "1952", "1940", "2013", NativeAppInstallAd.ASSET_HEADLINE, "1989", "1977", "1953", "1941", NativeAppInstallAd.ASSET_ATTRIBUTION_ICON_IMAGE, "1997", "1985", "1973", "1961", "1949"};
//  }
//  if (i2 == 0) {
//  return new String[]{"2012", "2000", "1988", "1976", "1964", "1952", "1940", NativeAppInstallAd.ASSET_BODY, "1992", "1980", "1968", "1956", "1944", NativeAppInstallAd.ASSET_ATTRIBUTION_ICON_IMAGE, "1997", "1985", "1973", "1961", "1949"};
//  }
//  if (i2 == 1) {
//  return new String[]{NativeAppInstallAd.ASSET_STAR_RATING, "1996", "1984", "1972", "1960", "1948", NativeAppInstallAd.ASSET_STORE, "1993", "1981", "1969", "1957", "1945", "2013", NativeAppInstallAd.ASSET_HEADLINE, "1989", "1977", "1953", "1941"};
//  }
//  if (i2 == 2) {
//  return new String[]{"2014", NativeAppInstallAd.ASSET_CALL_TO_ACTION, "1990", "1978", "1966", "1954", "1942", NativeAppInstallAd.ASSET_PRICE, "1994", "1982", "1970", "1958", "1946", NativeAppInstallAd.ASSET_IMAGE, "1995", "1983", "1971", "1959", "1947"};
//  }
//  if (i2 == 3) {
//  return new String[]{"2015", NativeAppInstallAd.ASSET_ICON, "1991", "1979", "1967", "1955", "1943", NativeAppInstallAd.ASSET_PRICE, "1994", "1982", "1970", "1958", "1946", NativeAppInstallAd.ASSET_IMAGE, "1995", "1983", "1971", "1959", "1947"};
//  }
//  if (i2 == 4) {
//  return new String[]{NativeAppInstallAd.ASSET_STAR_RATING, "1996", "1984", "1972", "1960", "1948", NativeAppInstallAd.ASSET_BODY, "1992", "1980", "1968", "1956", "1944", NativeAppInstallAd.ASSET_STORE, "1993", "1981", "1969", "1957", "1945"};
//  }
//  if (i2 == 5) {
//  return new String[]{NativeAppInstallAd.ASSET_ATTRIBUTION_ICON_IMAGE, "1997", "1985", "1973", "1961", "1949", NativeAppInstallAd.ASSET_BODY, "1992", "1980", "1968", "1956", "1944", NativeAppInstallAd.ASSET_STORE, "1993", "1981", "1969", "1957", "1945"};
//  }
//  if (i2 == 6) {
//  return new String[]{"2010", "1998", "1986", "1974", "1962", "1950", NativeAppInstallAd.ASSET_PRICE, "1994", "1982", "1970", "1958", "1946", "2015", NativeAppInstallAd.ASSET_ICON, "1991", "1979", "1967", "1955", "1943"};
//  }
//  if (i2 == 7) {
//  return new String[]{NativeAppInstallAd.ASSET_MEDIA_VIDEO, "1999", "1987", "1975", "1963", "1951", "1939", "2014", NativeAppInstallAd.ASSET_CALL_TO_ACTION, "1990", "1978", "1966", "1954", "1942", NativeAppInstallAd.ASSET_IMAGE, "1995", "1983", "1971", "1959", "1947"};
//  }
//  if (i2 == 8) {
//  return new String[]{"2013", NativeAppInstallAd.ASSET_HEADLINE, "1989", "1977", "1953", "1941", "2012", "2000", "1988", "1976", "1964", "1952", "1940", NativeAppInstallAd.ASSET_STAR_RATING, "1996", "1984", "1972", "1960", "1948"};
//  }
//  if (i2 == 10) {
//  return new String[]{NativeAppInstallAd.ASSET_MEDIA_VIDEO, "1999", "1987", "1975", "1963", "1951", "1939", "2010", "1998", "1986", "1974", "1962", "1950", "2014", NativeAppInstallAd.ASSET_CALL_TO_ACTION, "1990", "1978", "1966", "1954", "1942"};
//  }
//  if (i2 == 11) {
//  return new String[]{"2015", NativeAppInstallAd.ASSET_ICON, "1991", "1979", "1967", "1955", "1943", NativeAppInstallAd.ASSET_MEDIA_VIDEO, "1999", "1987", "1975", "1963", "1951", "1939", "2010", "1998", "1986", "1974", "1962", "1950"};
//  }
//  return null;
//}
//
// static ArrayList<DictionaryDataXongDat> getArrayTuoiHop(String[] strArr, int i, int i2, int i3, int i4) {
//String[] strArr2 = strArr;
//int menhNguHanhGiaChuWithThienCanDiaChi = getMenhNguHanhGiaChuWithThienCanDiaChi(i3, i4);
//int i5 = i;
//int i6 = i2;
//int menhNguHanhGiaChuWithThienCanDiaChi2 = getMenhNguHanhGiaChuWithThienCanDiaChi(i6, i5);
//ArrayList<DictionaryDataXongDat> arrayList = new ArrayList<>();
//int i7 = 0;
//while (i7 < strArr2.length) {
//DictionaryDataXongDat dictionaryDataXongDat = new DictionaryDataXongDat();
//String str = strArr2[i7];
//dictionaryDataXongDat.setNamSinh(Integer.parseInt(str));
//dictionaryDataXongDat.setDetailsMenh(getMenhTVWithYear(Integer.parseInt(str)));
//int[] lunarYear = getLunarYear(Integer.parseInt(str));
//int i8 = lunarYear[0];
//int i9 = lunarYear[1];
//String sb = new String();
//sb.append((String) GlobalData.getListCanName().get(i8));
//sb.append(" ");
//sb.append((String) GlobalData.getListChiName().get(i9));
//sb.append("");
//dictionaryDataXongDat.setDetailsNameTuvi(sb.toString());
//dictionaryDataXongDat.setDetails12ConGiap((String) GlobalData.getListChiName().get(i9));
//DictionaryDataXongDat dictionaryDataXongDat2 = dictionaryDataXongDat;
//int i10 = i7;
//String[] detailsXongNha = getDetailsXongNha(i5, i9, i4, 5, i6, i8, i3, menhNguHanhGiaChuWithThienCanDiaChi2, menhNguHanhGiaChuWithThienCanDiaChi);
//String str2 = detailsXongNha[1];
//int parseInt = Integer.parseInt(detailsXongNha[0]);
//DictionaryDataXongDat dictionaryDataXongDat3 = dictionaryDataXongDat2;
//dictionaryDataXongDat3.setDetailsTuoiXongNha(str2);
//dictionaryDataXongDat3.setDetailsPoint(parseInt);
//if (parseInt >= 10) {
//arrayList.add(dictionaryDataXongDat3);
//}
//i7 = i10 + 1;
//}
//Collections.sort(arrayList, new Comparator<DictionaryDataXongDat>() {
//int compare(DictionaryDataXongDat dictionaryDataXongDat, DictionaryDataXongDat dictionaryDataXongDat2) {
//return dictionaryDataXongDat.getDetailsPoint() <= dictionaryDataXongDat2.getDetailsPoint() ? 1 : -1;
//}
//});
//return arrayList;
//}
//
// static String[] getDetailsXongNha(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
//  String str;
//  String str2;
//  String str3;
//  String str4;
//  String str5;
//  String sb = new String();
//  sb.append("<div><font color='#AC884C'>Địa chi của tuổi xông nhà</font> là ");
//  sb.append((String) GlobalData.getListChiName().get(i2));
//  sb.append(" tương hợp với ");
//  sb.append((String) GlobalData.getListChiName().get(i));
//  sb.append(" của gia chủ, rất tốt</div>");
//  String sb2 = sb.toString();
//  int pointThienCanMain = getPointThienCanMain(i6, i5);
//  int i10 = i4 + pointThienCanMain;
//  if (pointThienCanMain == 0) {
//  String sb3 = new String();
//  sb3.append("<div><font color='#AC884C'>Thiên can của tuổi xông nhà</font> là ");
//  sb3.append((String) GlobalData.getListCanName().get(i6));
//  sb3.append(" xung khắc với ");
//  sb3.append((String) GlobalData.getListCanName().get(i5));
//  sb3.append(" của gia chủ, không tốt</div>");
//  str = sb3.toString();
//  } else if (pointThienCanMain == 1) {
//  String sb4 = new String();
//  sb4.append("<div><font color='#AC884C'>Thiên can của tuổi xông nhà</font> là ");
//  sb4.append((String) GlobalData.getListCanName().get(i6));
//  sb4.append(" không tương hợp, không xung khắc với ");
//  sb4.append((String) GlobalData.getListCanName().get(i5));
//  sb4.append(" của gia chủ, chấp nhận được</div>");
//  str = sb4.toString();
//  } else {
//  String sb5 = new String();
//  sb5.append("<div><font color='#AC884C'>Thiên can của tuổi xông nhà</font> là ");
//  sb5.append((String) GlobalData.getListCanName().get(i6));
//  sb5.append(" tương hợp với ");
//  sb5.append((String) GlobalData.getListCanName().get(i5));
//  sb5.append(" của gia chủ, rất tốt</div>");
//  str = sb5.toString();
//  }
//  int pointThienCanMain2 = getPointThienCanMain(i6, i7);
//  int i11 = i10 + pointThienCanMain2;
//  if (pointThienCanMain2 == 0) {
//  String sb6 = new String();
//  sb6.append("<div><font color='#AC884C'>Thiên can của năm nay</font> là ");
//  sb6.append((String) GlobalData.getListCanName().get(i7));
//  sb6.append(" xung khắc với ");
//  sb6.append((String) GlobalData.getListCanName().get(i6));
//  sb6.append(" của tuổi xông nhà, không tốt</div>");
//  str2 = sb6.toString();
//  } else if (pointThienCanMain2 == 1) {
//  String sb7 = new String();
//  sb7.append("<div><font color='#AC884C'>Thiên can của năm nay</font> là ");
//  sb7.append((String) GlobalData.getListCanName().get(i7));
//  sb7.append(" không tương hợp, không xung khắc với ");
//  sb7.append((String) GlobalData.getListCanName().get(i6));
//  sb7.append(" của tuổi xông nhà, chấp nhận được</div>");
//  str2 = sb7.toString();
//  } else {
//  String sb8 = new String();
//  sb8.append("<div><font color='#AC884C'>Thiên can của năm nay</font> là ");
//  sb8.append((String) GlobalData.getListCanName().get(i7));
//  sb8.append(" tương hợp với ");
//  sb8.append((String) GlobalData.getListCanName().get(i6));
//  sb8.append(" của tuổi xông nhà, rất tốt</div>");
//  str2 = sb8.toString();
//  }
//  int menhNguHanhGiaChuWithThienCanDiaChi = getMenhNguHanhGiaChuWithThienCanDiaChi(i6, i2);
//  int pointMenhNguHanhMain = getPointMenhNguHanhMain(menhNguHanhGiaChuWithThienCanDiaChi, i9);
//  int i12 = i11 + pointMenhNguHanhMain;
//  if (pointMenhNguHanhMain == 0) {
//  String sb9 = new String();
//  sb9.append("<div><font color='#AC884C'>Ngũ hành của năm nay</font> là ");
//  sb9.append(getNameMenh(i9));
//  sb9.append(" tương khắc với ");
//  sb9.append(getNameMenh(menhNguHanhGiaChuWithThienCanDiaChi));
//  sb9.append(" của tuổi xông nhà, không tốt</div>");
//  str3 = sb9.toString();
//  } else if (pointMenhNguHanhMain == 1) {
//  String sb10 = new String();
//  sb10.append("<div><font color='#AC884C'>Ngũ hành của năm nay</font> là ");
//  sb10.append(getNameMenh(i9));
//  sb10.append(" không sinh, không khắc với ");
//  sb10.append(getNameMenh(menhNguHanhGiaChuWithThienCanDiaChi));
//  sb10.append(" của tuổi xông nhà, chấp nhận được</div>");
//  str3 = sb10.toString();
//  } else {
//  String sb11 = new String();
//  sb11.append("<div><font color='#AC884C'>Ngũ hành của năm nay</font> là ");
//  sb11.append(getNameMenh(i9));
//  sb11.append(" tương sinh với ");
//  sb11.append(getNameMenh(menhNguHanhGiaChuWithThienCanDiaChi));
//  sb11.append(" của tuổi xông nhà, rất tốt</div>");
//  str3 = sb11.toString();
//  }
//  int pointMenhNguHanhMain2 = getPointMenhNguHanhMain(menhNguHanhGiaChuWithThienCanDiaChi, i8);
//  int i13 = i12 + pointMenhNguHanhMain2;
//  if (pointMenhNguHanhMain2 == 0) {
//  String sb12 = new String();
//  sb12.append("<div><font color='#AC884C'>Ngũ hành của tuổi xông nhà</font> là ");
//  sb12.append(getNameMenh(menhNguHanhGiaChuWithThienCanDiaChi));
//  sb12.append(" tương khắc với ");
//  sb12.append(getNameMenh(i8));
//  sb12.append(" của gia chủ, không tốt</div>");
//  str4 = sb12.toString();
//  } else if (pointMenhNguHanhMain2 == 1) {
//  String sb13 = new String();
//  sb13.append("<div><font color='#AC884C'>Ngũ hành của tuổi xông nhà</font> là ");
//  sb13.append(getNameMenh(menhNguHanhGiaChuWithThienCanDiaChi));
//  sb13.append(" không sinh, không khắc với ");
//  sb13.append(getNameMenh(i8));
//  sb13.append(" của gia chủ, chấp nhận được</div>");
//  str4 = sb13.toString();
//  } else {
//  String sb14 = new String();
//  sb14.append("<div><font color='#AC884C'>Ngũ hành của tuổi xông nhà</font> là ");
//  sb14.append(getNameMenh(menhNguHanhGiaChuWithThienCanDiaChi));
//  sb14.append(" tương sinh với ");
//  sb14.append(getNameMenh(i8));
//  sb14.append(" của gia chủ, rất tốt</div>");
//  str4 = sb14.toString();
//  }
//  int pointWithDiaChiMain = getPointWithDiaChiMain(i2, i3);
//  int i14 = i13 + pointWithDiaChiMain;
//  if (pointWithDiaChiMain == 0) {
//  String sb15 = new String();
//  sb15.append("<div><font color='#AC884C'>Địa chi của năm nay</font> là ");
//  sb15.append((String) GlobalData.getListChiName().get(i3));
//  sb15.append(" xung khắc với ");
//  sb15.append((String) GlobalData.getListChiName().get(i2));
//  sb15.append(" của tuổi xông nhà, không tốt</div>");
//  str5 = sb15.toString();
//  } else if (pointWithDiaChiMain == 1) {
//  String sb16 = new String();
//  sb16.append("<div><font color='#AC884C'>Địa chi của năm nay</font> là ");
//  sb16.append((String) GlobalData.getListChiName().get(i3));
//  sb16.append(" không tương hợp, không xung khắc với ");
//  sb16.append((String) GlobalData.getListChiName().get(i2));
//  sb16.append(" của tuổi xông nhà, chấp nhận được</div>");
//  str5 = sb16.toString();
//  } else {
//  String sb17 = new String();
//  sb17.append("<div><font color='#AC884C'>Địa chi của năm nay</font> là ");
//  sb17.append((String) GlobalData.getListChiName().get(i3));
//  sb17.append(" tương hợp với ");
//  sb17.append((String) GlobalData.getListChiName().get(i2));
//  sb17.append(" của tuổi xông nhà, rất tốt</div>");
//  str5 = sb17.toString();
//  }
//  String sb18 = new String();
//  sb18.append(i14);
//  sb18.append("");
//  String sb19 = new String();
//  sb19.append(str4);
//  sb19.append(str3);
//  sb19.append(str);
//  sb19.append(str2);
//  sb19.append(sb2);
//  sb19.append(str5);
//  return new String[]{sb18.toString(), sb19.toString()};
//}
//
//static int getYear() {
//Calendar instance = Calendar.getInstance();
//if (instance.get(2) < 10) {
//return instance.get(1);
//}
//instance.add(1, 1);
//return instance.get(1);
//}
}