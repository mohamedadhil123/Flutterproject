import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: SignUp(),));
}
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up"),),
      body:  Container(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left:0,bottom: 0),
                child:  Text("Sign Up", style: TextStyle(fontSize: 30),),),
              const Text("Create an Account,its free"),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal()
                    ),
                    hintText: "Email ID",
                    prefixIcon: Icon(Icons.person_2_rounded)
                ),
              ),



              const Padding(
                padding:  EdgeInsets.only(left:0,bottom:12),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal()
                      ),
                      hintText: "Password",
                      prefixIcon: Icon(Icons.visibility_off),
                      suffixIcon: Icon(Icons.visibility_sharp)

                  ),
                ),
              ),
             const Padding(
                  padding: EdgeInsets.only(left: 0,bottom: 12),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal()
                          ),
                          hintText: "Password",
                          prefixIcon: Icon(Icons.visibility_off),
                          suffixIcon: Icon(Icons.visibility_sharp)
                  ),
                  ),
              ),

              ElevatedButton(
                style: const ButtonStyle(   backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),),
                onPressed: (){},
                child:const Text ("Login"),),
              const Text("Do you have an account? Login"),


            ],
          ),
        ),
      ),
    );
  }
}

