import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SettingScreen extends StatelessWidget {
 bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 46),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("ĐĂNG NHẬP", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600, ),),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey
              ),
              child: Center(
                  child: Text("Google", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),)),
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey
              ),
              child: Center(
                  child: Text("Facebooks", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),)),
            ),
            SizedBox(height: 12,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("THÔNG BÁO", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600, )),
                  StatefulBuilder(
                    builder:(context,setState){
                      return Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor: Colors.blue,
                        activeColor: Colors.white,
                      );
                    }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
