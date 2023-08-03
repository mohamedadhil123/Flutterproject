import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: LoginPage(),));
}
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
final uname_controller=TextEditingController();
final pass_controller=TextEditingController();
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shared Perf Login"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: uname_controller,
                    decoration: InputDecoration(
                        hintText: "UserName", border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: pass_controller,
                    decoration: InputDecoration(
                        hintText: "PassWord", border: OutlineInputBorder()),
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Login"))
              ],
            ),
            ),
        );
    }
}
