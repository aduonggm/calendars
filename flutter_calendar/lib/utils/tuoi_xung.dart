
import 'package:flutter_calendar/modal/tuoi_xung_model.dart';
import 'package:flutter_calendar/utils/derect.dart';
import 'package:flutter_calendar/utils/solar_lular_utils.dart';

class TuoiXung {
  static TuoiXung sharedInstance() {
    return new TuoiXung();
  }

  List<TuoiXungModel> danhsachTuoiXungVoiThienCanGiap(int i) {
    List<TuoiXungModel> list = [];
    if (i == 0) {
      list.add(getItemObjectVoiThienCan(4, 6));
      list.add(getItemObjectVoiThienCan(8, 6));
      list.add(getItemObjectVoiThienCan(6, 2));
      list.add(getItemObjectVoiThienCan(6, 8));
    } else if (i == 10) {
      list.add(getItemObjectVoiThienCan(8, 4));
      list.add(getItemObjectVoiThienCan(6, 4));
      list.add(getItemObjectVoiThienCan(6, 10));
    } else if (i == 8) {
      list.add(getItemObjectVoiThienCan(4, 2));
      list.add(getItemObjectVoiThienCan(2, 2));
      list.add(getItemObjectVoiThienCan(6, 6));
      list.add(getItemObjectVoiThienCan(6, 0));
    } else if (i == 6) {
      list.add(getItemObjectVoiThienCan(4, 0));
      list.add(getItemObjectVoiThienCan(8, 0));
      list.add(getItemObjectVoiThienCan(6, 2));
      list.add(getItemObjectVoiThienCan(8, 2));
    } else if (i == 2) {
      list.add(getItemObjectVoiThienCan(4, 8));
      list.add(getItemObjectVoiThienCan(2, 8));
      list.add(getItemObjectVoiThienCan(6, 6));
      list.add(getItemObjectVoiThienCan(6, 0));
    } else if (i == 4) {
      list.add(getItemObjectVoiThienCan(8, 10));
      list.add(getItemObjectVoiThienCan(6, 10));
      list.add(getItemObjectVoiThienCan(6, 4));
    }
    return list;
  }

  List<TuoiXungModel> danhsachTuoiXungVoiThienCanAt(int i) {
    List<TuoiXungModel> list = [];
    if (i == 1) {
      list.add(getItemObjectVoiThienCan(5, 7));
      list.add(getItemObjectVoiThienCan(9, 7));
      list.add(getItemObjectVoiThienCan(7, 3));
      list.add(getItemObjectVoiThienCan(7, 9));
    } else if (i == 11) {
      list.add(getItemObjectVoiThienCan(9, 5));
      list.add(getItemObjectVoiThienCan(7, 5));
      list.add(getItemObjectVoiThienCan(7, 11));
    } else if (i == 9) {
      list.add(getItemObjectVoiThienCan(5, 3));
      list.add(getItemObjectVoiThienCan(3, 3));
      list.add(getItemObjectVoiThienCan(7, 7));
      list.add(getItemObjectVoiThienCan(7, 1));
    } else if (i == 7) {
      list.add(getItemObjectVoiThienCan(5, 1));
      list.add(getItemObjectVoiThienCan(9, 1));
      list.add(getItemObjectVoiThienCan(7, 3));
      list.add(getItemObjectVoiThienCan(7, 9));
    } else if (i == 5) {
      list.add(getItemObjectVoiThienCan(9, 11));
      list.add(getItemObjectVoiThienCan(7, 11));
      list.add(getItemObjectVoiThienCan(7, 5));
    } else if (i == 3) {
      list.add(getItemObjectVoiThienCan(5, 9));
      list.add(getItemObjectVoiThienCan(3, 9));
      list.add(getItemObjectVoiThienCan(7, 7));
      list.add(getItemObjectVoiThienCan(7, 1));
    }
    return list;
  }

  List<TuoiXungModel> danhsachTuoiXungVoiThienCanBinh(int i) {
    List<TuoiXungModel> list = [];
    if (i == 2) {
      list.add(getItemObjectVoiThienCan(0, 8));
      list.add(getItemObjectVoiThienCan(8, 8));
      list.add(getItemObjectVoiThienCan(8, 10));
      list.add(getItemObjectVoiThienCan(8, 4));
    } else if (i == 0) {
      list.add(getItemObjectVoiThienCan(6, 6));
      list.add(getItemObjectVoiThienCan(4, 6));
    } else if (i == 10) {
      list.add(getItemObjectVoiThienCan(4, 4));
      list.add(getItemObjectVoiThienCan(8, 4));
      list.add(getItemObjectVoiThienCan(8, 6));
      list.add(getItemObjectVoiThienCan(8, 0));
    } else if (i == 8) {
      list.add(getItemObjectVoiThienCan(0, 2));
      list.add(getItemObjectVoiThienCan(8, 8));
      list.add(getItemObjectVoiThienCan(8, 10));
      list.add(getItemObjectVoiThienCan(8, 4));
    } else if (i == 6) {
      list.add(getItemObjectVoiThienCan(4, 0));
      list.add(getItemObjectVoiThienCan(6, 0));
    } else if (i == 4) {
      list.add(getItemObjectVoiThienCan(4, 10));
      list.add(getItemObjectVoiThienCan(8, 10));
      list.add(getItemObjectVoiThienCan(8, 6));
      list.add(getItemObjectVoiThienCan(8, 0));
    }
    return list;
  }

  List<TuoiXungModel> danhsachTuoiXungVoiThienCanDinh(int i) {
    List<TuoiXungModel> list = [];
    if (i == 3) {
      list.add(getItemObjectVoiThienCan(1, 9));
      list.add(getItemObjectVoiThienCan(9, 9));
      list.add(getItemObjectVoiThienCan(9, 5));
      list.add(getItemObjectVoiThienCan(9, 11));
    } else if (i == 1) {
      list.add(getItemObjectVoiThienCan(7, 7));
      list.add(getItemObjectVoiThienCan(5, 7));
    } else if (i == 11) {
      list.add(getItemObjectVoiThienCan(5, 5));
      list.add(getItemObjectVoiThienCan(9, 5));
      list.add(getItemObjectVoiThienCan(9, 7));
      list.add(getItemObjectVoiThienCan(9, 1));
    } else if (i == 9) {
      list.add(getItemObjectVoiThienCan(1, 3));
      list.add(getItemObjectVoiThienCan(9, 3));
      list.add(getItemObjectVoiThienCan(9, 5));
      list.add(getItemObjectVoiThienCan(9, 11));
    } else if (i == 7) {
      list.add(getItemObjectVoiThienCan(5, 1));
      list.add(getItemObjectVoiThienCan(7, 1));
    } else if (i == 5) {
      list.add(getItemObjectVoiThienCan(5, 11));
      list.add(getItemObjectVoiThienCan(9, 11));
      list.add(getItemObjectVoiThienCan(9, 1));
      list.add(getItemObjectVoiThienCan(9, 7));
    }
    return list;
  }

  List<TuoiXungModel> danhsachTuoiXungVoiThienCanMau(int i) {
    List<TuoiXungModel> list = [];
    if (i == 4) {
      list.add(getItemObjectVoiThienCan(6, 10));
      list.add(getItemObjectVoiThienCan(2, 10));
    } else if (i == 2) {
      list.add(getItemObjectVoiThienCan(6, 8));
      list.add(getItemObjectVoiThienCan(0, 8));
    } else if (i == 0) {
      list.add(getItemObjectVoiThienCan(2, 6));
      list.add(getItemObjectVoiThienCan(0, 6));
    } else if (i == 10) {
      list.add(getItemObjectVoiThienCan(6, 4));
      list.add(getItemObjectVoiThienCan(2, 4));
    } else if (i == 8) {
      list.add(getItemObjectVoiThienCan(6, 2));
      list.add(getItemObjectVoiThienCan(0, 2));
    } else if (i == 6) {
      list.add(getItemObjectVoiThienCan(2, 0));
      list.add(getItemObjectVoiThienCan(0, 0));
    }
    return list;
  }

  List<TuoiXungModel> danhsachTuoiXungVoiThienCanKy(int i) {
    List<TuoiXungModel> list = [];
    if (i == 5) {
      list.add(getItemObjectVoiThienCan(7, 11));
      list.add(getItemObjectVoiThienCan(3, 11));
    } else if (i == 3) {
      list.add(getItemObjectVoiThienCan(7, 9));
      list.add(getItemObjectVoiThienCan(1, 9));
    } else if (i == 1) {
      list.add(getItemObjectVoiThienCan(3, 7));
      list.add(getItemObjectVoiThienCan(1, 7));
    } else if (i == 11) {
      list.add(getItemObjectVoiThienCan(7, 5));
      list.add(getItemObjectVoiThienCan(3, 5));
    } else if (i == 9) {
      list.add(getItemObjectVoiThienCan(7, 3));
      list.add(getItemObjectVoiThienCan(1, 3));
    } else if (i == 7) {
      list.add(getItemObjectVoiThienCan(3, 1));
      list.add(getItemObjectVoiThienCan(1, 1));
    }
    return list;
  }

  List<TuoiXungModel> danhsachTuoiXungVoiThienCanCanh(int i) {
    List<TuoiXungModel> list = [];
    if (i == 6) {
      list.add(getItemObjectVoiThienCan(8, 0));
      list.add(getItemObjectVoiThienCan(2, 0));
      list.add(getItemObjectVoiThienCan(0, 8));
      list.add(getItemObjectVoiThienCan(0, 2));
    } else if (i == 4) {
      list.add(getItemObjectVoiThienCan(0, 10));
      list.add(getItemObjectVoiThienCan(4, 10));
      list.add(getItemObjectVoiThienCan(0, 4));
    } else if (i == 2) {
      list.add(getItemObjectVoiThienCan(8, 8));
      list.add(getItemObjectVoiThienCan(4, 8));
      list.add(getItemObjectVoiThienCan(0, 0));
      list.add(getItemObjectVoiThienCan(0, 6));
    } else if (i == 0) {
      list.add(getItemObjectVoiThienCan(8, 6));
      list.add(getItemObjectVoiThienCan(2, 6));
      list.add(getItemObjectVoiThienCan(0, 8));
      list.add(getItemObjectVoiThienCan(0, 2));
    } else if (i == 10) {
      list.add(getItemObjectVoiThienCan(0, 4));
      list.add(getItemObjectVoiThienCan(4, 4));
      list.add(getItemObjectVoiThienCan(0, 10));
    } else if (i == 8) {
      list.add(getItemObjectVoiThienCan(8, 2));
      list.add(getItemObjectVoiThienCan(4, 2));
      list.add(getItemObjectVoiThienCan(0, 0));
      list.add(getItemObjectVoiThienCan(0, 6));
    }
    return list;
  }

  List<TuoiXungModel> danhsachTuoiXungVoiThienCanTan(int i) {
    List<TuoiXungModel> list = [];
    if (i == 7) {
      list.add(getItemObjectVoiThienCan(9, 1));
      list.add(getItemObjectVoiThienCan(3, 1));
      list.add(getItemObjectVoiThienCan(1, 9));
      list.add(getItemObjectVoiThienCan(1, 3));
    } else if (i == 5) {
      list.add(getItemObjectVoiThienCan(1, 11));
      list.add(getItemObjectVoiThienCan(5, 11));
      list.add(getItemObjectVoiThienCan(1, 5));
    } else if (i == 3) {
      list.add(getItemObjectVoiThienCan(9, 9));
      list.add(getItemObjectVoiThienCan(5, 9));
      list.add(getItemObjectVoiThienCan(1, 1));
      list.add(getItemObjectVoiThienCan(1, 7));
    } else if (i == 1) {
      list.add(getItemObjectVoiThienCan(9, 7));
      list.add(getItemObjectVoiThienCan(3, 7));
      list.add(getItemObjectVoiThienCan(1, 9));
      list.add(getItemObjectVoiThienCan(1, 3));
    } else if (i == 11) {
      list.add(getItemObjectVoiThienCan(1, 5));
      list.add(getItemObjectVoiThienCan(5, 5));
      list.add(getItemObjectVoiThienCan(1, 11));
    } else if (i == 9) {
      list.add(getItemObjectVoiThienCan(9, 3));
      list.add(getItemObjectVoiThienCan(5, 3));
      list.add(getItemObjectVoiThienCan(1, 1));
      list.add(getItemObjectVoiThienCan(1, 7));
    }
    return list;
  }

  List<TuoiXungModel> danhsachTuoiXungVoiThienCanNham(int i) {
    List<TuoiXungModel> list = [];
    if (i == 8) {
      list.add(getItemObjectVoiThienCan(2, 2));
      list.add(getItemObjectVoiThienCan(6, 2));
      list.add(getItemObjectVoiThienCan(2, 8));
    } else if (i == 6) {
      list.add(getItemObjectVoiThienCan(0, 0));
      list.add(getItemObjectVoiThienCan(6, 0));
      list.add(getItemObjectVoiThienCan(2, 10));
      list.add(getItemObjectVoiThienCan(2, 4));
    } else if (i == 4) {
      list.add(getItemObjectVoiThienCan(2, 10));
      list.add(getItemObjectVoiThienCan(0, 10));
      list.add(getItemObjectVoiThienCan(2, 2));
    } else if (i == 2) {
      list.add(getItemObjectVoiThienCan(6, 8));
      list.add(getItemObjectVoiThienCan(2, 8));
      list.add(getItemObjectVoiThienCan(2, 2));
    } else if (i == 0) {
      list.add(getItemObjectVoiThienCan(0, 6));
      list.add(getItemObjectVoiThienCan(6, 6));
      list.add(getItemObjectVoiThienCan(2, 10));
      list.add(getItemObjectVoiThienCan(2, 4));
    } else if (i == 10) {
      list.add(getItemObjectVoiThienCan(2, 4));
      list.add(getItemObjectVoiThienCan(0, 4));
      list.add(getItemObjectVoiThienCan(2, 8));
      list.add(getItemObjectVoiThienCan(2, 2));
    }
    return list;
  }

  List<TuoiXungModel> danhsachTuoiXungVoiThienCanQuy(int i) {
    List<TuoiXungModel> list = [];
    if (i == 9) {
      list.add(getItemObjectVoiThienCan(3, 3));
      list.add(getItemObjectVoiThienCan(7, 3));
      list.add(getItemObjectVoiThienCan(3, 9));
    } else if (i == 7) {
      list.add(getItemObjectVoiThienCan(1, 1));
      list.add(getItemObjectVoiThienCan(7, 1));
      list.add(getItemObjectVoiThienCan(3, 11));
      list.add(getItemObjectVoiThienCan(3, 5));
    } else if (i == 5) {
      list.add(getItemObjectVoiThienCan(3, 11));
      list.add(getItemObjectVoiThienCan(1, 11));
      list.add(getItemObjectVoiThienCan(3, 3));
    } else if (i == 3) {
      list.add(getItemObjectVoiThienCan(7, 9));
      list.add(getItemObjectVoiThienCan(3, 9));
      list.add(getItemObjectVoiThienCan(3, 3));
    } else if (i == 1) {
      list.add(getItemObjectVoiThienCan(1, 7));
      list.add(getItemObjectVoiThienCan(7, 7));
      list.add(getItemObjectVoiThienCan(3, 11));
      list.add(getItemObjectVoiThienCan(3, 5));
    } else if (i == 11) {
      list.add(getItemObjectVoiThienCan(3, 5));
      list.add(getItemObjectVoiThienCan(1, 5));
      list.add(getItemObjectVoiThienCan(3, 3));
      list.add(getItemObjectVoiThienCan(3, 9));
    }
    return list;
  }

  TuoiXungModel getItemObjectVoiThienCan(int i, int i2) {
    TuoiXungModel tuoiXungModel = new TuoiXungModel();
    tuoiXungModel.iThienCan = i;
    tuoiXungModel.iDiachi = i2;
    tuoiXungModel.aNameCanChi = '${CAN[tuoiXungModel.iThienCan]} ${CHI[tuoiXungModel.iDiachi]}';
  //  tuoiXungModel.aNameCanChi = String.format("%s %s", new Object[]{DictionaryDataXongDat.sharedInstance().getNameThienCan(tuoiXungModel.iThienCan), DictionaryDataXongDat.sharedInstance().getNameDiachi(tuoiXungModel.iDiachi)});
    int menhNguHanhWithThienCan = DictionaryDataXongDat.sharedInstance().getMenhNguHanhWithThienCan(tuoiXungModel.iThienCan, tuoiXungModel.iDiachi);
    DictionaryDataXongDat.sharedInstance();
    tuoiXungModel.aNameNguHanh = DictionaryDataXongDat.getNameMenh(menhNguHanhWithThienCan);


    return tuoiXungModel;
  }

  List<TuoiXungModel> danhsachTuoiXungVoiThienCan(int iCan, int iChi) {
    List<TuoiXungModel> list =[];
    if (iCan == 0) {
      return danhsachTuoiXungVoiThienCanGiap(iChi);
    }
    if (iCan == 1) {
      return danhsachTuoiXungVoiThienCanAt(iChi);
    }
    if (iCan == 2) {
      return danhsachTuoiXungVoiThienCanBinh(iChi);
    }
    if (iCan == 3) {
      return danhsachTuoiXungVoiThienCanDinh(iChi);
    }
    if (iCan == 4) {
      return danhsachTuoiXungVoiThienCanMau(iChi);
    }
    if (iCan == 5) {
      return danhsachTuoiXungVoiThienCanKy(iChi);
    }
    if (iCan == 6) {
      return danhsachTuoiXungVoiThienCanCanh(iChi);
    }
    if (iCan == 7) {
      return danhsachTuoiXungVoiThienCanTan(iChi);
    }
    if (iCan == 8) {
      return danhsachTuoiXungVoiThienCanNham(iChi);
    }
    return iCan == 9 ? danhsachTuoiXungVoiThienCanQuy(iChi) : list;
  }
}
