import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LoginPage.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,

        home:Splash() ,
      ));

}
class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();  //create and intial state for the screen
}

class _SplashState extends State<Splash> { // initial state of Splash
  // there are two functionalities in state class
  //initState(){} and setState(){}
  //initState(){}- what will happen when the app or screen is loaded initially
  //setState(){}- what change will occur on a widget or screen
  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginPage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
           image: DecorationImage(
            fit: BoxFit.fill,
            image:  AssetImage("assets/images/gradient.jpg")),
            gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.white,
                  Colors.lightBlueAccent,
                  Colors.white
                ],
                begin: Alignment.bottomRight, end: Alignment.topLeft)),
        child:  Center (
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/Owl.png",
                height: 200,width: 200,),
              Text(
                "OWL",
                style: GoogleFonts.lobster(fontSize: 50,color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}