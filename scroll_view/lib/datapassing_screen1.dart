import 'package:flutter/material.dart';
import 'package:get/get.dart';

 class PassData extends StatelessWidget {
   String data='0';
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Center(child:Text('Send data to back screen'),)),
       body:Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children:<Widget>[
             RaisedButton(
               onPressed:(){
                 Get.back(result: "100");
               },
               child: Text(
                 'Pass data to previous Screen'),
               
                ),
                Text(
                  (Get.arguments !=null)?Get.arguments:'No DATA',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    
                  ),
                  )
                
           ]
         ),
       )
       
     );
   }
 }
 