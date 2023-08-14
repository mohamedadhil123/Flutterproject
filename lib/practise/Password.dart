import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/practise/New%20Account.dart';
import 'package:flutter_project_may2023/practise/Save%20your%20Login%20info.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
  home: Password(),));
}
class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
        body:Container(
            child:Center(
                child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left:12,bottom: 0),
                        child:  Text("Create a password", style: TextStyle(fontSize: 25,color: Colors.white,
                            fontWeight: FontWeight.bold),),),

                      const Text("Create a password with at least 6 letters or numbers."
                          "it should be something that others can't guess",
                        style: TextStyle(color: Colors.white,fontSize: 18),),
                       TextField(
                        obscureText: true,
                        obscuringCharacter: ".",
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.grey,
                          suffixIcon: Icon(Icons.visibility_off_outlined),
                          ),
                        ),

                      ElevatedButton(child:Text("Next"),
                        onPressed: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SaveYourLogin()));
                        
                          
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
