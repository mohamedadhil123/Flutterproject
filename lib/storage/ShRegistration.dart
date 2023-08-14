import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShRegister extends StatefulWidget
{
  @override
  State<ShRegister> createState() => _ShRegisterState();
}

class _ShRegisterState extends State<ShRegister> {
  final name = TextEditingController();
  final uname = TextEditingController();
  final pwd = TextEditingController();
  late SharedPreferences preference;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: uname,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Username"
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(15.0),
                child: TextField(
                  controller: pwd,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password"),
                )
            ),
            ElevatedButton(onPressed: ()=> storedata(),

                child: Text("Register here")),
          ],
        ),
      ),
    );
  }
  void storedata() async{
    String personname = name.text;
    String username = uname.text;
    String password = pwd.text;

    preference = await SharedPreferences.getInstance()!;
    preference.setString('name',personname);
    preference.setString('uname',username);
    preference.setString('pass',password);
  }
}