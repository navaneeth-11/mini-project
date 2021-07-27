import 'package:flutter/material.dart';
import 'gateway.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        
        title: Text("register",style:TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),
        
        
      ),
        body: Container(
        height: 600,
	              decoration: BoxDecoration(
	                image: DecorationImage(
	                  image: AssetImage('assets/background5.png'),
	                  fit: BoxFit.fill
	                ),
        /* add child content here */
      ),
        
        
        
        child: ListView(children:<Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                  height: 40,
                  
                ),
             Container(

  padding: const EdgeInsets.all(20.0),
  decoration: BoxDecoration(
    color: Colors.blue[300],
    borderRadius: BorderRadius.circular(15),
    border: Border.all(color: Colors.blueAccent)
  ),
  child: Text("REGISTER",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
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
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontSize: 18,

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
                Icon(Icons.email),
                Container(
                  width: 300,
                  child: TextField(
                      decoration: InputDecoration(
                        hintText: "  EMAIL ID ",
                        labelText: "  ENTER YOUR EMAIL ID",
                        labelStyle: TextStyle(
                          
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontSize: 18,

                        ),
                      ),
                ),
                ),
                
              ] 
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
                        hintText: "  PASSWORD ",
                        labelText: "  ENTER YOUR PASSWORD",
                        labelStyle: TextStyle(
                          
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontSize: 18,

                        ),
                      ),
                ),
                ),
               
              ],
              
            ),

                SizedBox(
                  height: 40,
                  
                ),
                ElevatedButton(
            child: Text("REGISTER"),
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
               Fluttertoast.showToast(
                        msg: "REDIRECTING TO DONATION GATEWAY",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
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

        ),
    );
  }
}