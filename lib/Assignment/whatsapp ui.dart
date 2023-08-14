
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,

home:   Whatsapp(),
));
}
class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        actions: const [
          Icon(Icons.camera_alt),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.more_vert),
          SizedBox(width: 10),

        ],
      ),
      body: ListView(
        children: const [
           ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/Inosuke.jpg")),
              title: Text("Inosuke"),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all,color: Colors.blue,),
                  Text("Use Your Head, Not Just Spirit")
                ],
              ),
              trailing: Text("12.00 Am")
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/Eren.jpg")),
              title:  Text("Eren"),
              subtitle:  Row(
                children: [
                  Icon(Icons.done,),
                  Text("Women Have Rights")
                ],
              ),
              trailing: Text("6.10 pm"),
            ),
          ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/Nezuko.jpg")),
              title: Text("Nezuko"),
              subtitle:  Row(
                children: [
                  Icon(Icons.done_all,),
                  Text("What Was The Point")
                ],
              ),
              trailing: Text("Today") ,
            ),
          ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/Rengoku.jpg")),
              title:  Text("Rengoku"),
              subtitle:  Row(
                children: [
                  Icon(Icons.done_all),
                  Text("Set Your Heart Ablaze")
                ],
              ),
              trailing: Text("Yesterday"),
            ),
          ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/Koku.jpg")),
              title: Text("KokuShibo"),
              subtitle:  Row(
                children: [

                  Text("Why don’t you become a demon")
                ],
              ),
              trailing: Text("15/05/2023"),
            ),
          ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/Gojo.jpg")),
              title: Text("Gojo"),
              subtitle:  Row(
                children: [
                  Icon(Icons.done_all,color: Colors.blue,),
                  Text("Listen Up. I Am A God")
                ],
              ),
              trailing:  Text("21/02/2023"),
            ),
          ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/Sanemi.jpg")),
              title: Text("Sanemi"),
              subtitle:  Row(
                children: [
                  Icon(Icons.done_all,),
                  Text("I'll Destroy you")
                ],
              ),
              trailing:  Text("07.00 Am"),
            ),
          ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/Yorichi.jpg")),
              title: Text("Yorichi"),
              subtitle:  Row(
                children: [
                  Icon(Icons.done),
                  Text("What do you think life is ")
                ],
              ),
              trailing:  Text("05/06/2023"),
            ),

          ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/Zenitsu.jpg")),
              title: Text("Zenitsu"),
              subtitle:  Row(
                children: [
                  Icon(Icons.done_all,color: Colors.blue,),
                  Text("Even if I lose my memories")
                ],
              ),
              trailing:  Text("Today"),
            ),


        ],
      ),
    );
  }
}
