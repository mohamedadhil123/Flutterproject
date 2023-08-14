
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/Home%20page.dart';
import 'package:flutter_project_may2023/practise/Instagram.dart';
import 'package:flutter_project_may2023/practise/Mobile%20or%20Email.dart';
import 'package:flutter_project_may2023/practise/Password.dart';
import 'package:flutter_project_may2023/practise/Save%20your%20Login%20info.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: Username(),));
}
class Username extends StatelessWidget {
  const Username({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,

        ),
        body:Container(
            child:Center(
                child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left:8,bottom: 0),
                        child:  Text("Create a username", style: TextStyle(fontSize: 25,color: Colors.white,
                            fontWeight: FontWeight.bold),),),

                      const Text("Add a username or use our  suggestion.You can change this at any time",style: TextStyle(color: Colors.white,fontSize: 12),),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Username",
                          filled: true,
                          fillColor: Colors.grey,
                          suffixIcon: Icon(Icons.verified_outlined,color: Colors.green,),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal()
                          ),


                        ),
                      ),
                      ElevatedButton(child:Text("Next"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MobileOrEmail()));
                        }, style: ElevatedButton.styleFrom(
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
