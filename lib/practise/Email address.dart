import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/practise/Confirmation%20Code.dart';
import 'package:flutter_project_may2023/practise/Mobile%20or%20Email.dart';
import 'package:flutter_project_may2023/practise/New%20Account.dart';
import 'package:flutter_project_may2023/practise/Username.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: Emailaddress(),));
}
class Emailaddress extends StatelessWidget {
  const Emailaddress({super.key});

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
                          hintText: "Email address",
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal()
                          ),


                        ),
                      ),



                      ElevatedButton(child:Text("Next"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ConfirmationCode()));
                        }
                        , style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal())
                          // (horizontal: 50,vertical: 20)
                        ),

                      ),

                      ElevatedButton(child:Text("Sign up with Mobile Number"),
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
