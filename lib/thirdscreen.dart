import 'package:flutter/material.dart';

class thirdscreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        
        title: Text("ADD ADDRESS",style:TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),
        
        
      ),
      body:Center(
        child:  Container(
        height: 600,
	              decoration: BoxDecoration(
	                image: DecorationImage(
	                  image: AssetImage('assets/background5.png'),
	                  fit: BoxFit.fill
	                ),
        /* add child content here */
      ),
        
        
        
        child: ListView(children:<Widget>[
          TextField(
                      decoration: InputDecoration(
                        hintText: " FLAT NO/STREET NO  ",
                        labelText: " FULL ADDRESS ",
                        labelStyle: TextStyle(
                          
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          
                          color: Colors.white,

                        ),
                      ),
                ),
                  Divider(thickness: 10),
                  TextField(
                      decoration: InputDecoration(
                        hintText: " LOCALITY  ",
                        labelText: " LOCALITY ",
                        labelStyle: TextStyle(
                          
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          
                          color: Colors.white,

                        ),
                      ),
                ),
                  Divider(thickness: 10),
                  TextField(
                      decoration: InputDecoration(
                        hintText: " CITY  ",
                        labelText: " CITY ",
                        labelStyle: TextStyle(
                          
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          
                          color: Colors.white,

                        ),
                      ),
                ),
                  Divider(thickness: 10),
                  TextField(
                      decoration: InputDecoration(
                        hintText: " PINCODE  ",
                        labelText: " PINCODE ",
                        labelStyle: TextStyle(
                          
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          
                          color: Colors.white,

                        ),
                      ),
                ),
                  Divider(thickness: 10),


















        ],),
      ),
      ),
    );
  }
}