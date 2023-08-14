
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/LoginPage.dart';
void main(){
  runApp(MaterialApp(home: RegistrationPage(),));
}
class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}
class _RegistrationPageState extends State<RegistrationPage> {
  // to validate the entire form
  final formkey =GlobalKey<FormState>();
  var confirmpass;//to store value from password field
  bool showpas = true;
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RegistrationPage"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Text(
              "RegistrationPage",
              style: TextStyle(fontSize: 30),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(border: OutlineInputBorder(),
                hintText: "UserName"),
                validator: (email){
                  //email -data from text form field
                  if(email!.isEmpty || !email.contains("@")){
                    return"Enter a valid email/field must not be empty";
                  } else{
                    return null;
                  }

                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                obscureText: showpas,
                obscuringCharacter: "*",
                decoration:  InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: (){
                    setState(() {
                      if(showpas){
                        showpas= false;
                        }else{
                        showpas=true;
                      }
                    });
                  }, icon: Icon(showpas == true
                      ? Icons.visibility
                      : Icons.visibility_off_sharp)),
                  border: OutlineInputBorder(), hintText: "Password"),
                validator:(password) {
                  //password- data from form field
                  // password cannot accessec outside this validator function so the value form
                  //password field assigned to the instant variable confirmpass
                  confirmpass=password;
                  if (password!.isEmpty || password.length < 6) {
                    return"password length should be greater than 6/ must not be empty";
                  }else{
                    return null;
                  }
                },
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration:  InputDecoration(
                    suffixIcon: IconButton(onPressed:(){
                      setState(() {
                        if(showpass){
                          showpass=false;
                        }else{
                          showpass=true;
                        }
                      });
                    }, icon: Icon(showpass == true
                        ?Icons.visibility
                    :Icons.visibility_off_outlined)),
                    border: OutlineInputBorder(),
                hintText: "ConfirmPassword"),
                validator: (cpassword){
                  if(cpassword!= confirmpass || cpassword!.isEmpty) {
                    return "Password Mismatch/Empty";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(onPressed: (){

              var isValid = formkey.currentState!.validate();
              if(isValid == true){
                Navigator.of (context).push(MaterialPageRoute(
                    builder: (context)=>LoginPage()));
              }else{

              }
            }, child: Text("Register"))
          ],
        ),
      ),
    );

  }
}
