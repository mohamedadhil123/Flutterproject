import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/Home%20page.dart';
import 'package:flutter_project_may2023/Registraion%20Page.dart';
void main(){
  runApp(MaterialApp(home: LoginPage(),));
}
class LoginPage extends StatelessWidget {
  String username="Ayoob";
  String password="Ayoob123";

  //for fetching

  final uname = TextEditingController();
  final pass  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(title:  Text("Login page"),),
    body:Column(
    children: [
      Image.asset("assets/icons/Owl.png", height: 100, width: 100),
       Padding(
         padding: const EdgeInsets.all(12.0),
         child: TextField(
           controller: uname,
           decoration:InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(30)
               ),
             hintText: "Username",
             helperText: "Username must be email",
             labelText: "Username",
             prefixIcon: Icon(Icons.person)

           ),
         ),
       ),
       Padding(
           padding: const EdgeInsets.only(left: 12,bottom: 12),
      child: TextField(
        controller: pass,
        obscureText: true,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30)
          ),
            hintText: "password",
        helperText: "password must contain 6 characters",
        labelText: "password",
        prefixIcon: Icon(Icons.visibility_off_sharp),
        suffixIcon: Icon(Icons.visibility)
        ),
        ),
      ),
      ElevatedButton(
          onPressed: (){
            if(uname.text != "" && pass.text != "") {
              if (uname.text == username && pass.text == password) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage()));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Email/Password is incorrect"),
                  backgroundColor: Colors.red,
                ));
              }
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Fields  must not be Empty"),
                backgroundColor: Colors.red,
              ));
            }
          }, child: const Text("Login")),
      TextButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>RegistrationPage()));
      }, child: Text("Not a user!!!! Register Here"))
    ],
    ),
    );
  }
}

