import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_view/datapassing_screen1.dart';
 class GetData extends StatefulWidget {
   @override
   _GetDataState createState() => _GetDataState();
 }
 
 class _GetDataState extends State<GetData> {
   String data='0';
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title:Center(
           child:Text('Pass data')
         ),
       ),
       body: Center(
         child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             RaisedButton(
               onPressed:()async{
                 data=await Get.to(PassData(),transition: Transition.zoom);
                 setState((){
                   this.data=data;
                 });
               

               },
               child: Text(
                 'Get data from Next Screen : '+'$data'
               ),

               
                ),
                SizedBox(height:30),
                RaisedButton(
                  onPressed: (){
                    Get.toNamed('/second',arguments: '--SURAJ JADHAV--');
                  },
                  child: Text( 
                    ' Send data=--SURAJ-- '
                  ),
                )
           ],
         )
       ),
     );
   }
 }