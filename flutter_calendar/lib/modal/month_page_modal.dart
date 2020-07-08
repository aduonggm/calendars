class MonthPageModal {
  final int month;
  final int year;

  MonthPageModal(this.month, this.year);

  static List<MonthPageModal> listMonthPage(DateTime dateTime){
    List<MonthPageModal> list = [];
    for(int y = 0 ; y<3 ; y++ ){
      for(int m = 0;m<12;m++){
        list.add(MonthPageModal(m+1, dateTime.year+y-1));
      }
    }
    return list;
  }
}