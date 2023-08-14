import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/Storage/ShRegistration.dart';
import 'package:flutter_project_may2023/Storage/SharedHome.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(
    home: Login2(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login2 extends StatefulWidget
{
  @override
  State<Login2> createState()=> _Login2State();

}

class _Login2State extends State<Login2> {
  final uname = TextEditingController();
  final pass = TextEditingController();
  late SharedPreferences preferences; // shared preference instance

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(15.0),
            child: TextField(
              controller: uname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Username",
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(15.0),
            child: TextField(
              controller: uname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "password",
              ),
            ),
          ),
          ElevatedButton(onPressed: () => validateandlogin(), child: Text("Login")),
          ElevatedButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ShRegister()));
          },
              child : Text("Go to Registration"))
        ],
      ),
    );
  }

  void validateandlogin() async{
    preferences = await SharedPreferences.getInstance()!;
    String storeduser = preferences.getString("uname")!;
    String storedpassword = preferences.getString("pass")!;
    //value that we entered at text field
    String username = uname.text;
    String pwd = pass.text;

    if(storeduser == username && storedpassword == pwd){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SharedHome()));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content : Text("Invalid username or password")));
    }
  }
}