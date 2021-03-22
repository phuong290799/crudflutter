import 'package:flutter/material.dart';
import 'package:flutter_crudmysql/AddEditPage.dart';
import 'package:flutter_crudmysql/MyPage.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0,60, 0, 20),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.blue,
                ),
                Padding(padding: const EdgeInsets.fromLTRB(60,50,60,50),
                child: Container(
                  child: Text(
                    "Chào mừng bạn đến với hệ thống quản lý sinh viên",
                    style: TextStyle(
                      fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500
                    ),
                  ),
                ),)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
                  child: Icon(
                    Icons.list_outlined ,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: TextButton(
                    child: Text(
                      "Xem danh sách sinh viên",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: _dssv,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.black,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: TextButton(
                    child: Text(
                      "Thêm sinh viên",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: _addsv,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void _dssv(){
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => MyPage(),),);
    debugPrint('button dssv: ');
  }
  void _addsv(){
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddEditPage(),),);
      debugPrint('Clicked Button add');
  }
}
