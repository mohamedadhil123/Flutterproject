
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/Assignment/Login.dart';
import 'package:flutter_project_may2023/Assignment/SignUp.dart';
import 'package:flutter_project_may2023/Assignment/contacts.dart';
import 'package:flutter_project_may2023/Assignment/whatsapp%20ui.dart';
import 'package:flutter_project_may2023/LoginPage.dart';
import 'package:flutter_project_may2023/splash%20screen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: BottomNavBarState(),));
}
class BottomNavBarState extends StatefulWidget {

  @override
  State<BottomNavBarState> createState() => _BottomNavBarStateState();
}

class _BottomNavBarStateState extends State<BottomNavBarState> {
  int index=0;

  var Screens=[
   Contacts(),
   Whatsapp(),
    Splash(),
    LoginPage()


  ];

  // const BottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomBar"),),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapindex){
          index=tapindex;
        },
        backgroundColor: Colors.lightBlueAccent,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        //type: BottomNavigationBarType.shifting,
        items: const [
       BottomNavigationBarItem(icon: Icon(Icons.contacts_sharp),label: "Contacts" ),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded),label: "View"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      ],),
      body: Screens[index],
    );
  }
}
