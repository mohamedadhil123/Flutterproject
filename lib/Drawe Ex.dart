import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DrawerEx(),));

}

class DrawerEx extends StatelessWidget {
  const DrawerEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("My Drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.blue),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration:const BoxDecoration(
                  // color: Colors.greenAccent,
                    image:DecorationImage(
                      fit: BoxFit.cover,
                        image:AssetImage("assets/images/Gradient red.jpeg") ) ),
                accountName: const  Text("Ayoob",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  accountEmail: const Text("ayoobkibrahim01@gmail.com"),
                currentAccountPicture: Image.asset("assets/images/Akaza.jpg"),
                otherAccountsPictures: [Image.asset("assets/images/Tanjiro.jpg")],
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              const ListTile(
                leading: Icon(Icons.menu),
                title: Text("Menu"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
