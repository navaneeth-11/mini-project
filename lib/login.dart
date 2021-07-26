import 'dart:ui';
import 'gateway.dart';

import 'package:flutter/material.dart';
class Login extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        
        title: Text("LOGIN",style:TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),
        
        
      ),
      body: ListView(children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                  height: 60,
                  
                ),
             Container(

  padding: const EdgeInsets.all(20.0),
  decoration: BoxDecoration(
    color: Colors.blue[300],
    borderRadius: BorderRadius.circular(15),
    border: Border.all(color: Colors.blueAccent)
  ),
  child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
),
Row(
              children: [
                Icon(Icons.account_circle),
                Container(
                  width: 300,
                  child: TextField(
                      decoration: InputDecoration(
                        hintText: "  FULL NAME ",
                        labelText: "  ENTER YOUR NAME",
                        labelStyle: TextStyle(
                          
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,

                        ),
                      ),
                ),
                ),
              
              ],
              
            ),
                SizedBox(
                  height:20,
                  
                ),
Row(
              children: [
                Icon(Icons.lock),
                Container(
                  width: 300,
                  child: TextField(
                      decoration: InputDecoration(
                        hintText: "  FULL PASSWORD ",
                        labelText: "  ENTER YOUR PASSWORD",
                        labelStyle: TextStyle(
                          
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,

                        ),
                      ),
                ),
                ),
              
              ],
              
            ),
                SizedBox(
                  height: 60,
                  
                ),
                ElevatedButton(
            child: Text("LOGIN"),
            onPressed: () {

              
                  
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
),
SizedBox(
                  height: 10,
                  
                ),
   ElevatedButton(
            child: Text("DONATION"),
            onPressed: () {
               Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>MyHomePage() ),
                    );

              
                  
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
),



          ],

        ),
      ],),

     

    );
  }
}