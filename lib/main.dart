import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/Assignment/contacts.dart';
import 'package:flutter_project_may2023/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){                               // to run a program
  runApp(                                  //to Attach the widget tree to the ui
      MaterialApp(                         //default theme of our app(multiplatform support)
      debugShowCheckedModeBanner: false,   // to remove debug badge

    home:Contacts() ,                     // initial screen of our app, (home must be widget it may be stateless / statefull)
  ));

}


class LoginPage extends StatelessWidget {  // stateless mean firstpage do not undrgo any state change
  @override
  Widget build(BuildContext context) {     // to create a widget tree (build context-> to monitor the widgets in the widget tree)
    return  Scaffold(
     // backgroundColor: Colors.tealAccent,  //  to set a single color to the entire screen



      /*appBar: AppBar(
        // centerTitle: true, //set the appBar title to the center of appBar
        title:const Text( 
          "Google",
          style: TextStyle(fontSize: 20,color: Colors.black),),
          //  style:TextStyle(fontSize:20,color:Colors.blueAccent)),
      ),*/


       body: Container(
        // color: Colors.blueGrey,        //  to set a single color to the entire screen
         decoration: const BoxDecoration(
            // image: DecorationImage(
             //  fit: BoxFit.fill,          // to fit the image to the entire screen
               //  image: NetworkImage("https://cdn.pixabay.com/photo/2016/12/27/13/10/logo-1933884_640.png"),
            //  image:  AssetImage("Assets/images/bird.jpg")
              gradient: LinearGradient(
               //stops: [.3,.4,.1,.1],
             colors: [
             Colors.blue,
             Colors.white,
             Colors.lightBlueAccent,
             Colors.white
             ],
             begin: Alignment.bottomRight, end: Alignment.topLeft)),

         child:  Center (



           /// multichild widget


           child:Column( // for column children will place from top left to bottom left
             mainAxisAlignment: MainAxisAlignment.center, // to move the children to center of column
             children: [

               //Icon(Icons.sports_soccer_rounded, color: Colors.blueAccent, size: 50,),
               Image.asset("",
               height: 200,width: 200,),



               //Image.network("https://cdn.pixabay.com/photo/2016/12/27/13/10/logo-1933884_640.png"),
             Text(
              "Ice Dear",
              //style:TextStyle(fontSize: 50,color: Colors.black,fontWeight:FontWeight.bold),
              style: GoogleFonts.lobster(fontSize: 50,color: Colors.black),
             ),
             ],
           ),
         ),
       ),
    );
  }

}