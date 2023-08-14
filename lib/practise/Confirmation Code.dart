import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/practise/Agree.dart';
import 'package:flutter_project_may2023/practise/Mobile%20or%20Email.dart';
import 'package:flutter_project_may2023/practise/New%20Account.dart';
import 'package:flutter_project_may2023/practise/Username.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: ConfirmationCode(),));
}
class ConfirmationCode extends StatelessWidget {
  const ConfirmationCode({super.key});

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
                        child:  Text("Enter the Confirmation code", style: TextStyle(fontSize: 25,color: Colors.white,
                            fontWeight: FontWeight.bold),),),

                      const Text("To confirm your account,enter the 6-digit code that we sentto",
                        style: TextStyle(color: Colors.white,fontSize: 18),),

                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Confirmation Code",
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal()
                          ),


                        ),
                      ),



                      ElevatedButton(child:Text("Next"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Agree()));
                        }
                        , style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal())
                          // (horizontal: 50,vertical: 20)
                        ),

                      ),

                      ElevatedButton(child:Text("I didn't receive the code"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MobileOrEmail()));
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
