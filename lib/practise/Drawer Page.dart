import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DrawerPage(),));

}

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Drawer"),
      ),
      drawer: Drawer(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors:
              [
                Colors.orange.shade200,
                Colors.red,
                Colors.pink,
              ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)

          ),
      child: ListView(
         children:const [
           const ListTile(
             leading: CircleAvatar(
           backgroundImage: AssetImage("assets/images/Akaza.jpg"),
             ),
             title: Text("Akaza"),
             subtitle: Text("akaza@gmail.com"),
           ),
           const ListTile(
             leading: Icon(Icons.dashboard),
             title: Text("Dashboard"),
           ),
           const ListTile(
             leading: Icon(Icons.leak_add_sharp),
             title: Text("Leads"),
           ),
           const ListTile(
             leading: Icon(Icons.people_outline_outlined),
             title: Text("Clients"),
           ),
           const ListTile(
             leading: Icon(Icons.rocket_launch_outlined),
             title: Text("Projects"),
           ),
           const ListTile(
             leading: Icon(Icons.person_add_alt),
             title: Text("patients"),
           ),
           const ListTile(
             leading: Icon(Icons.subject_outlined),
             title: Text("Subscription"),
           ),
           const ListTile(
             leading: Icon(Icons.person),
             title: Text("User"),
           ),
           const ListTile(
             leading: Icon(Icons.library_add_outlined),
             title: Text("Library"),
           ),

         ],
       ),

        ),
      ),
    );
  }
}
