

enum TYPE_TRUC {
  TYPE_TRUC_KIEN,
TYPE_TRUC_TRU,
TYPE_TRUC_MAN,
TYPE_TRUC_BINH,
TYPE_TRUC_DINH,
TYPE_TRUC_CHAP,
TYPE_TRUC_PHA,
TYPE_TRUC_NGUY,
TYPE_TRUC_THANH,
TYPE_TRUC_THU,
TYPE_TRUC_KHAI,
TYPE_TRUC_BE

//private final int value;
//
//private TYPE_TRUC(int i) {
//  this.value = i;
//}
//
//int getValue() {
//  return this.value;
//}
}

class ThapNhiKienTruModel {
  String khongNenLam;
  String nenLam;
  String tenTruc;
  TYPEGOODBAD_TRUC typeTruc;
}

  enum TYPEGOODBAD_TRUC {
  TYPEGOODBAD_TRUC_NORMAL,
  TYPEGOODBAD_TRUC_GOOD,
  TYPEGOODBAD_TRUC_BAD

//  private final int value;
//
//  private TYPEGOODBAD_TRUC(int i) {
//    this.value = i;
//  }
//
//  int getValue() {
//    return this.value;
//  }
}


