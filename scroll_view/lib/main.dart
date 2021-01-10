import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_view/datapassing_screen1.dart';

import 'datapass_screen2.dart';


 void main()
 {
   runApp(MyApp());
 }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Demo',
      // theme: ThemeData(
      //   //primarySwatch: Colors.black,
      //   visualDensity:VisualDensity.adaptivePlatformDensity,
      // ),
      home:GetData(),
      getPages: [
        GetPage(name: '/first', page: ()=>GetData() ),
        GetPage(name: '/second', page: ()=>PassData())
      ],
    );
  }
}