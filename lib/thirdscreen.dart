import 'package:flutter/material.dart';

class thirdscreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        
        title: Text("ADD ADDRESS",style:TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),
        
        
      ),
      body:Center(
        child: ListView(children: <Widget>[
          TextField(
                      decoration: InputDecoration(
                        hintText: " FLAT NO/STREET NO  ",
                        labelText: " FULL ADDRESS ",
                        labelStyle: TextStyle(
                          
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          
                          color: Colors.black,

                        ),
                      ),
                ),
                  Divider(thickness: 10,color: Colors.white,),
                  TextField(
                      decoration: InputDecoration(
                        hintText: " LOCALITY  ",
                        labelText: " LOCALITY ",
                        labelStyle: TextStyle(
                          
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          
                          color: Colors.black,

                        ),
                      ),
                ),
                  Divider(thickness: 10,color: Colors.white,),
                  TextField(
                      decoration: InputDecoration(
                        hintText: " CITY  ",
                        labelText: " CITY ",
                        labelStyle: TextStyle(
                          
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          
                          color: Colors.black,

                        ),
                      ),
                ),
                  Divider(thickness: 10,color: Colors.white,),
                  TextField(
                      decoration: InputDecoration(
                        hintText: " PINCODE  ",
                        labelText: " PINCODE ",
                        labelStyle: TextStyle(
                          
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          
                          color: Colors.black,

                        ),
                      ),
                ),
                  Divider(thickness: 10,color: Colors.white,),


















        ],),
      ),
      
    );
  }
}