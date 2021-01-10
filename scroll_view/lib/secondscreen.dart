import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'),
      
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text('Dark Mode on:'+Get.isDarkMode.toString()),SizedBox(height:25),
            Text('Android Platform:'+GetPlatform.isAndroid.toString()),SizedBox(height:25),
            Text('Height:'+Get.height.toString()),SizedBox(height:25),
            Text('Width:'+Get.width.toString()),SizedBox(height:25),
            Text('Pixel Ratio:'+Get.pixelRatio.toString()),SizedBox(height:25),
          ]
        ),
      ),
      
    );
  }
}