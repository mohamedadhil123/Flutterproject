import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/practise/ForgottenPassword.dart';
import 'package:flutter_project_may2023/practise/Login.dart';
import 'package:flutter_project_may2023/practise/New%20Account.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,

    home: InstaHome(),));
}
class InstaHome extends StatelessWidget {
  const InstaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Container(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("",

                ) ,
              ),
              Image.asset("assets/icons/instagram-removebg-preview.png",width: 70,height: 70,),
              TextField(
                  decoration: InputDecoration(
                hintText: "Username,email address or mobile num...",
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                ),


              ),
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  filled: true,
                  fillColor: Colors.grey,
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal()
                  ),


                ),
              ),
              ElevatedButton(child:Text("Log in"),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogInstagram()));
                  }, style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      // (horizontal: 50,vertical: 20)
                ),

              ),

              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Forgotten()));
              }, child: Text("Forgotten?Password?",style: TextStyle(color: Colors.white),)),

                 ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewAccount()));
                 }, child: Text("Create new account")),
              Image.asset("assets/images/white_meta-removebg-preview.png",width: 50,height: 50,)








                ],
          ),
        ),
      ),
    );
  }
}
