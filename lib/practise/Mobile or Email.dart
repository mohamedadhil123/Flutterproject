import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/practise/Confirmation%20Code.dart';
import 'package:flutter_project_may2023/practise/Email%20address.dart';
import 'package:flutter_project_may2023/practise/New%20Account.dart';
import 'package:flutter_project_may2023/practise/Username.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: MobileOrEmail(),));
}
class MobileOrEmail extends StatelessWidget {
  const MobileOrEmail({super.key});

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
                        child:  Text("What's your mobile number?", style: TextStyle(fontSize: 25,color: Colors.white,
                            fontWeight: FontWeight.bold),),),

                      const Text("Enter the mobile number on which you can be contacted.No one will see this on your profile",
                        style: TextStyle(color: Colors.white,fontSize: 18),),

                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Mobile number",
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal()
                          ),


                        ),
                      ),
                      const Text("You may recieve SMS notifications from us for security and login purposes",
                        style: TextStyle(color: Colors.white,fontSize: 18),),


                      ElevatedButton(child:Text("Next"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ConfirmationCode()));
                        }
                        , style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal())
                          // (horizontal: 50,vertical: 20)
                        ),

                      ),

                      ElevatedButton(child:Text("Sign up with email address"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Emailaddress()));
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
