
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/Home%20page.dart';
import 'package:flutter_project_may2023/practise/Instagram.dart';
import 'package:flutter_project_may2023/practise/Password.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
  debugShowCheckedModeBanner: false,
  home: NewAccount(),));
}
class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

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
    child:  Text("Choose username", style: TextStyle(fontSize: 25,color: Colors.white,
        fontWeight: FontWeight.bold),),),

    const Text("You can always change it later",style: TextStyle(color: Colors.white,fontSize: 12),),
    const TextField(
    decoration: InputDecoration(
      hintText: "Username",
      filled: true,
    fillColor: Colors.grey,
    border: OutlineInputBorder(
    borderRadius: BorderRadius.horizontal()
    ),


    ),
    ),
          ElevatedButton(child:Text("Next"),
            onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Password()));
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
