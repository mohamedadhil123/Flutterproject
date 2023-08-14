import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/practise/Confirmation%20Code.dart';
import 'package:flutter_project_may2023/practise/Mobile%20or%20Email.dart';
import 'package:flutter_project_may2023/practise/New%20Account.dart';
import 'package:flutter_project_may2023/practise/Username.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: Forgotten(),));
}
class Forgotten extends StatelessWidget {
  const Forgotten({super.key});

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
                        child:  Text("what's your email address?", style: TextStyle(fontSize: 25,color: Colors.white,
                            fontWeight: FontWeight.bold),),),

                      const Text("Enter the email address on which you can be contacted.No one will see this on your profile",
                        style: TextStyle(color: Colors.white,fontSize: 18),),

                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Username,email address or mobile number",
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal()
                          ),


                        ),
                      ),



                      ElevatedButton(child:Text("Find Account"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ConfirmationCode()));
                        }
                        , style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal())
                          // (horizontal: 50,vertical: 20)
                        ),

                      ),

                      ElevatedButton(child:Text("Login with Facebook"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MobileOrEmail()));
                        }
                        , style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal())
                          // (horizontal: 50,vertical: 20)
                        ),

                      ),



                    ])
            )
        )
    );
  }
}
