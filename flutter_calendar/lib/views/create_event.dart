import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar/views/create_details_event.dart';

class CreateEvent extends StatefulWidget {
   DateTime dateTime;

   CreateEvent({Key key, this.dateTime}) : super(key: key);
  
  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () => Navigator.pop(context)),
        title: Text("Tạo sự kiện mới"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.person_add), onPressed: (){})
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Text("SỰ KIỆN CÁ NHÂN", style: TextStyle(fontSize: 16),),
            ),
            GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: listPersonEvents.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:  2,
                childAspectRatio: 3),
                itemBuilder: (context,index){
                  return  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          CreateDetailsEvent(typeEvent: listPersonEvents[index].name,
                        id: listPersonEvents[index].id,
                          hintText: listPersonEvents[index].hintText,)));
                    },
                    child: Card(
                      child: Container(
                        height: 60,
                        alignment: Alignment.centerLeft,
                           child: Row(
                              children: <Widget>[
                                SizedBox(width: 10,),
                                Image.asset("assets/images/person_events/${listPersonEvents[index].image}", width: 30,),
                                SizedBox(width: 20,),
                                Text(listPersonEvents[index].name),
                              ],
                            )),
                    ),
                  )
                  ;
                })
          ],
        )
      ),
     
    );
  }
}
class PersonEvent {
  final int id;
  final String name;
  final String image;
  final String hintText;

  const  PersonEvent( {this.hintText, this.id,this.name, this.image});
}
const List<PersonEvent> listPersonEvents = [
   const PersonEvent(id: 0,name: "Việc hỷ", image: "sukien_viechy.png",hintText: "Đám cưới, Ăn hỏi,..."),
   const PersonEvent(id: 1,name: "Ngày giỗ", image: "sukien_ngaygio.png",hintText: "Tên một người"),
   const PersonEvent(id: 2,name: "Gia đình", image: "sukien_giadinh.png",hintText: "Về quê, Họp gia đình,..."),
   const PersonEvent(id: 3,name: "Công việc", image: "sukien_congviec.png",hintText: "Họp hành, Gặp khách hàng,..."),
   const PersonEvent(id: 4,name: "Cá nhân", image: "sukien_canhan.png",hintText: "Tập thể thao, Gặp bác sĩ,..."),
   const PersonEvent(id: 5,name: "Sinh nhật", image: "sukien_sinhnhat.png",hintText: "Tên một người"),
   const PersonEvent(id: 8,name: "Hẹn hò", image: "sukien_henho.png",hintText: "Đi xem phim, Ăn lẩu,..."),
   const PersonEvent(id: 9,name: "Kỉ niệm", image: "sukien_kyniem.png",hintText: "Ngày tốt nghiệp, Ngày cưới,..."),
   const PersonEvent(id: 7,name: "Khác", image: "sukien_khac.png",hintText: "Thêm tên sự kiện"),
 ];
