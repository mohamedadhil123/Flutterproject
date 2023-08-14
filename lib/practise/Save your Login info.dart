import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/practise/New%20Account.dart';
import 'package:flutter_project_may2023/practise/Username.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: SaveYourLogin(),));
}
class SaveYourLogin extends StatelessWidget {
  const SaveYourLogin({super.key});

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
                        child:  Text("Save your login info?", style: TextStyle(fontSize: 25,color: Colors.white,
                            fontWeight: FontWeight.bold),),),

                      const Text("We,ll save the login info your forUsername,so you won,t need"
                          "to enter it next time you login",
                        style: TextStyle(color: Colors.white,fontSize: 18),),


                      ElevatedButton(child:Text("Save"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Username()));
                          }
                        , style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal())
                          // (horizontal: 50,vertical: 20)
                        ),

                      ),

                      ElevatedButton(child:Text("NotNow"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Username()));
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
