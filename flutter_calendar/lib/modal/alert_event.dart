class AlertEvent{
 final int id;
 final String minute;
 bool value;
  AlertEvent( {this.value,this.id, this.minute});

 static List<AlertEvent> getListAlert(){
   return <AlertEvent>[
     AlertEvent(id: 0, minute: "Nhắc lúc xảy ra sự kiện", value: true),
     AlertEvent(id: 1, minute: "Nhắc trước 5 phút", value: false),
     AlertEvent(id: 2, minute: "Nhắc trước 15 phút", value: false),
     AlertEvent(id: 3, minute: "Nhắc trước 30 phút", value: false),
     AlertEvent(id: 4, minute: "Nhắc trước 1 giờ", value: true),
     AlertEvent(id: 5, minute: "Nhắc trước 2 giờ", value: false),
     AlertEvent(id: 6, minute: "Nhắc trước 1 ngày", value: true),
     AlertEvent(id: 7, minute: "Nhắc trước 2 ngày", value: false),
     AlertEvent(id: 8, minute: "Nhắc trước 1 tuần", value: false),
   ];
 }
}