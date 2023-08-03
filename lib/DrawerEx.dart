import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Drawyer(),));
}
class Drawyer extends StatelessWidget {
  const Drawyer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Drawyer"),
        ),
        drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(accountName: const Text("Adhil"), accountEmail: const Text("adhilhidayath@gmail.com"),
                  currentAccountPicture: Image.asset("assets/icons/1.png"),
                  otherAccountsPictures: [Image.asset("assets/icons/2.png")],
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(Icons.menu),
                  title: Text("Menu"),
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip),
                  title: Text("Privacy"),
                ),

              ],
            ),
            ),
       );
    }
}