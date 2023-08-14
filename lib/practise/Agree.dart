import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/practise/MainPage.dart';
import 'package:flutter_project_may2023/practise/Mobile%20or%20Email.dart';
import 'package:flutter_project_may2023/practise/New%20Account.dart';
import 'package:flutter_project_may2023/practise/Username.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: Agree(),));
}
class Agree extends StatelessWidget {
  const Agree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,),
        body:Container(
            child:Center(
                child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left:12,bottom: 0),
                        child:  Text("Agree to Instagram's terms and policies", style: TextStyle(fontSize: 25,color: Colors.white,
                            fontWeight: FontWeight.bold),),),

                      const Text("Welcome Instagram",
                        style: TextStyle(color: Colors.white,fontSize: 18),),


                      ElevatedButton(child:Text("I Agree"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainPage()));
                        }
                        , style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal())
                          // (horizontal: 50,vertical: 20)
                        ),

                      ),


                      TextButton(onPressed: (){}, child: Text("Already have an account?",
                        style: TextStyle(color: Colors.blueAccent),)),

                    ])
            )
        )
    );
  }
}
