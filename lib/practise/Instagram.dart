import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/practise/HomePage.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: Instagram(),));
}
class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {

  @override
  void initState(){
    Timer(Duration(seconds: 1),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> InstaHome()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     colors: [Colors.purple, Colors.pink],
        //   ),
        // ),
        child: Center(
        child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Image.asset("assets/icons/instagram-removebg-preview.png",fit: BoxFit.fill,
        width: 150,height: 150,
      ),
    Text (
    'from',
    style:  TextStyle(
    fontSize:20,
    color: Colors.black,
    ),
    ),
      Image.asset("assets/icons/meta-removebg-preview.png",
      width: 150,height: 100,)
    ],

      ),
    )
    )
    );
  }
}






