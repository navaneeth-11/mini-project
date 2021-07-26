import 'package:flutter/material.dart';
import 'thirdscreen.dart';

class secondscreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        
        title: Text("ACCOUNT",style:TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),
        
        
      ),
      body:ListView(children: <Widget>[

       
        Column(
          children: [
             Column(
           crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Divider(thickness: 800,color: Colors.white,),
            Icon(Icons.account_circle,size: 75 ,color: Colors.blue,),
            Text('8106223686'),
          ],
        ),
            Row(
              children: [
                Icon(Icons.account_circle),
                Container(
                  width: 300,
                  child: TextField(
                      decoration: InputDecoration(
                        hintText: "  NAME ",
                        labelText: "  ENTER YOUR NAME",
                        labelStyle: TextStyle(
                          
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          
                          color: Colors.black,

                        ),
                      ),
                ),
                ),
                Icon(Icons.edit),
              ],
            ),
            Row(
              children: [
                Icon(Icons.email),
                Container(
                  width: 300,
                  child: TextField(
                      decoration: InputDecoration(
                        hintText: "  EMAIL ",
                        labelText: "  ENTER YOUR EMAIL",
                        labelStyle: TextStyle(
                          
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          
                          color: Colors.black,

                        ),
                      ),
                ),
                ),
                Icon(Icons.edit),
              ],
              
            ),
            ElevatedButton(onPressed: (){
               Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>thirdscreen() ),
                    );
            }, 
            child: 
            Text("Add Address"),
            style:ElevatedButton.styleFrom(
              primary: Colors.blue, // background
              onPrimary: Colors.white,

            ),
            ),
            
 
          ],
        ),
      ],


      
    
  


      ),
      
      
    );
  }
}