import 'dart:convert';
import 'package:flutter_crudmysql/AddEditPage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Future getData() async {
    var url = Uri.parse('http://192.168.1.8/flutter_crudmysql/read.php');
    var response = await http.get(url);
    return json.decode(response.body);
  }


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xem thong tin sinh vien'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _addsv,
      ),

      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                List list = snapshot.data;
                return ListTile(
                  leading: GestureDetector(child: Icon(Icons.edit),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) =>
                          AddEditPage(list: list, index: index,),),);
                      debugPrint('Edit Clicked');
                    },),
                  title: Text(list[index]['lastname']),
                  subtitle: Text(list[index]['phone']),
                  trailing: GestureDetector(child: Icon(Icons.delete),
                    onTap: () {
                      setState(() {
                        var url = Uri.parse('http://192.168.1.8/flutter_crudmysql/delete.php');
                        http.post(url, body: {
                          'id': list[index]['id'],
                        });
                      });
                      debugPrint('delete Clicked');
                    },),
                );
              }
          )
              : CircularProgressIndicator();
        },
      ),
    );
  }
  void _addsv(){
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => AddEditPage(),),);
    debugPrint('Clicked FloatingActionButton Button');
  }
}
