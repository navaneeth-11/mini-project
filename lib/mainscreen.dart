import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'login.dart';
import 'register.dart';

import 'secondscreen.dart';
import 'package:flutter/material.dart';
import "package:url_launcher/url_launcher.dart";
import 'package:fluttertoast/fluttertoast.dart';




class mainscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        
        title: Text("Main Screen",style:TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.account_circle),onPressed: (){
             Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>secondscreen() ),
                    );

            
          },),

        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(height: 80,
             color: Colors.blue,
             alignment: Alignment.center,
             child: ListTile(
              leading:Icon(Icons.account_circle) ,
              title: Text("8106223686",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_right),
              onTap:(){
                 Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>secondscreen() ),
                    );
              },
            )),
          
            Divider(thickness: 2,color: Colors.blue,),
            ListTile(
              title: Text("ORDER HISTORY"),
              leading:Icon(Icons.menu),
              
            ),
            Divider(thickness: 2,color: Colors.blue,),
            ListTile(
               title: Text("HELP & SUPPORT"),
               leading:Icon(Icons.call),
               onTap: ()  async {
                Fluttertoast.showToast(
                        msg: "REDIRECTING...",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.blue,
                        textColor: Colors.black,
                        fontSize: 16.0
                    );
                 const url = 'mailto:xyzBank@gmail.com';
                  if (await canLaunch(url) != null) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
              },
      ),
            Divider(thickness: 2,color: Colors.blue,),
            ListTile(
              title: Text("UPDATE"),
              leading:Icon(Icons.update),
            ),
            Divider(thickness: 2,color: Colors.blue,),
            ListTile(
              title: Text("LOGOUT"),
              leading:Icon(Icons.logout),
              onTap: (){
                

  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("No"),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: Text("Yes,Logout"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    
    content: Text("Are you sure you want to logout?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );

              },
            ),
            Divider(thickness: 2,color: Colors.blue,),
            
          ],
        ),
      ),
    body: Container(
	              height: 400,
	              decoration: BoxDecoration(
	                image: DecorationImage(
	                  image: AssetImage('assets/background.png'),
	                  fit: BoxFit.fill
	                ),
        /* add child content here */
      ),
      child: Stack(children: <Widget>[
        Positioned(
          left: 90,
          top: 30,
          
          child:

        Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                  height: 100,
                  
                ),
            ElevatedButton(
            child: Text('LOGIN'),
            onPressed: () {
              Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Login() ),
                    );


            },
            style:
            
            
             ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 34, vertical: 5),
                textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),

              
                ),
                SizedBox(
                  height: 10,
                  
                ),
                ElevatedButton(
            child: Text("RIGISTER"),
            onPressed: () {

              Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Register() ),
                    );
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
)
            
          ],
        ),

        ),


      ],),
    ),
    




    );
  }
}