import 'package:flutter/material.dart';
import 'package:flutter_crudmysql/HomePage.dart';
import 'package:flutter_crudmysql/MyPage.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quản lý sinh viên",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
