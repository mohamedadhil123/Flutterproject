
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Expansionn(),
    debugShowCheckedModeBanner: false,
  ));

}
class Expansionn extends StatelessWidget {
 var colors = [
   Colors.blue,
   Colors.black,
   Colors.tealAccent,
   Colors.cyanAccent,
   Colors.teal
 ];
 var name =[
   "Blue",
   "Black",
   "TealAccent",
   "CyanAccent",
   "Teal"
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile"),
      ),
      body: ExpansionTile(
        title: Text("colors"),
        subtitle: Text("List of Colors"),
        children: List.generate(5, (index) =>
        ListTile(
          leading: CircleAvatar(backgroundColor: colors[index],),
          title: Text(name[index]),
        ))
      ),

    );
  }
}
