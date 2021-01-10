import 'package:flutter/material.dart';
import 'package:scroll_view/secondscreen.dart';
import 'package:get/get.dart';
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('First Screen'),
        //backgroundColor: Colors.redAccent
        ),
        
      body: Center(
        child: Expanded(
          child:
            Column(
              children:<Widget>[
                SizedBox(height: 40,),
                RaisedButton(
                  onPressed: (){
                    Get.to(SecondScreen());
                  },
                  child: Text(
                    'Navigate To Second Screen',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                
                ),
                SizedBox(height: 40,),
                RaisedButton(
                  onPressed: (){
                    Get.defaultDialog(title:'This is dailogue',backgroundColor: Colors.greenAccent);
                  },
                  child: Text(
                    'Dailogue box',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                
                ),
                SizedBox(height: 40,),
                RaisedButton(
                  onPressed: (){
                    Get.snackbar('Successfull','Username',backgroundColor: Colors.white54,colorText: Colors.green );
                  },
                  child: Text(
                    'Snackbar ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                
                ),
                SizedBox(height: 40,),
                RaisedButton(
                  onPressed: (){
                    Get.bottomSheet(
                      Container(
                        child:Wrap(
                          children:<Widget>[
                            ListTile(
                              leading: Icon(Icons.music_note_outlined,color:Colors.red),
                              title: Text('Music'),
                              //tileColor: Colors.green,
                              
                              onTap: (){},
                            ),
                            SizedBox(height:100)
                          ]
                        )
                      ),
                      backgroundColor: Colors.white
                    );
                  },
                  child: Text(
                    'Bottomsheet',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                
                ),
                SizedBox(height: 40,),
                RaisedButton(
                  onPressed: (){
                    Get.changeTheme(ThemeData.light());
                  },
                  child: Text(
                    'Change theme to light',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                
                ),
                SizedBox(height: 40,),
                RaisedButton(
                  onPressed: (){
                    Get.changeTheme(ThemeData.dark());
                  },
                  child: Text(
                    'Change theme to Dark',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                
                ),
              ]
            ),
          
        ),
      ),
      
    );
  }
}