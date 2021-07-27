import 'package:flutter/material.dart';
import 'thirdscreen.dart';

class secondscreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        
        title: Text("ACCOUNT",style:TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),
        
        
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
          children: [
             Column(
           crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Divider(thickness: 800),
            Icon(Icons.account_circle,size: 75 ,color: Colors.white,),
             Divider(thickness: 800),
            Text('8106223686',style: TextStyle(color: Colors.white,fontSize: 20),),
          ],
        ),
            Row(
              children: [
                Icon(Icons.account_circle,color: Colors.white,),
                Container(
                  width: 300,
                  child: TextField(
                      decoration: InputDecoration(
                        hintText: "  NAME ",
                        labelText: "  ENTER YOUR NAME",
                        labelStyle: TextStyle(
                          
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          
                          color: Colors.white,

                        ),
                      ),
                ),
                ),
                Icon(Icons.edit,color: Colors.white,),
              ],
            ),
            Row(
              children: [
                Icon(Icons.email,color: Colors.white,),
                Container(
                  width: 300,
                  child: TextField(
                      decoration: InputDecoration(
                        hintText: "  EMAIL ",
                        labelText: "  ENTER YOUR EMAIL",
                        labelStyle: TextStyle(
                          
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        hintStyle: TextStyle(
                          
                          color: Colors.white,

                        ),
                      ),
                ),
                ),
                Icon(Icons.edit,color: Colors.white,),
              ],
              
            ),
            ElevatedButton(onPressed: (){
               Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>thirdscreen() ),
                    );
            }, 
            child: 
            Text("Add Address",style: TextStyle(fontSize: 20),),
            style:ElevatedButton.styleFrom(
              primary: Colors.blue, // background
              onPrimary: Colors.white,
              

            ),
            ),
            
 
          ],
        ),
      ],


      
    
  


      ),
      
       ), 
    );
  }
}