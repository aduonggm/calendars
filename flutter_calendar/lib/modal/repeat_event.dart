class RepeatEvent {
 final int id;
 final String type;
 final String loop_info;
  RepeatEvent( {this.loop_info,this.id, this.type});

  static List<RepeatEvent> getListRepeat(){
    return <RepeatEvent>[
      RepeatEvent(id: 0, type: "Không lặp lại",loop_info: "FREQ=NONE"),
      RepeatEvent(id: 1, type: "Lặp lại hàng ngày",loop_info: "FREQ=DAILY"),
      RepeatEvent(id: 2, type: "Lặp lại hàng tuần",loop_info: "FREQ=WEEKLY"),
      RepeatEvent(id: 3, type: "Lặp lại hàng tháng",loop_info: "FREQ=MONTHLY"),
      RepeatEvent(id: 4, type: "Lặp lại hàng năm",loop_info: "FREQ=YEARLY"),
    ];
  }
}