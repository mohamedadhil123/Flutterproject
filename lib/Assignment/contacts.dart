import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home: Contacts(),));
}
class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Contacts"),),
      body:  ListView(
        children:const [
           Card(
             child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Male.png")),
              title: Text("Tanjiro"),
              subtitle: Text("9874563210"),
              trailing:  Icon(Icons.navigate_next),
            ),
          ),
          Card(
            child:  ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Male.png")),
              title:  Text("zenitsu"),
              subtitle: Text("8796541230"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
           Card(
            child:  ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Male.png")),
              title: Text("Inosuke"),
              subtitle: Text("7896541230"),
              trailing:  Icon(Icons.navigate_next),
            ),
          ),
           Card(
            child:  ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Male.png")),
              title:  Text("Rengoku"),
              subtitle:  Text("6231459870"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
           Card(
            child:  ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Male.png")),
              title: Text("Akaza"),
              subtitle: Text("6238908818"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
           Card(
            child:  ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Male.png")),
              title: Text("Tengen"),
              subtitle: Text("6238908819"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
          Card(
            child:  ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Male.png")),
              title: Text("Sanemi"),
              subtitle: Text("6238908817"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
           Card(
            child:  ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Male.png")),
              title: Text("Yorichi"),
              subtitle: Text("6238908878"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
          Card(
            child:  ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Male.png")),
              title: Text("Muichiro"),
              subtitle: Text("6238908789"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
           Card(
            child:  ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Male.png")),
              title: Text("Kokushibou"),
              subtitle: Text("6238908456"),
              trailing: Icon(Icons.navigate_next),
            ),
          ),

        ],
      ),

    );
  }
}
