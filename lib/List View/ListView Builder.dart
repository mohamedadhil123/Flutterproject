import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: ListView2(),));
}
class ListView2 extends StatelessWidget {
 var Names=[
   "Akaza",
   "Rengoku",
   "Tanjiro",
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
      ),
      body: ListView.builder(itemCount:Names.length,
          itemBuilder:(context,index){
        return Card(
        child: ListTile(
        leading: Image.asset("assets/images/Akaza.jpg"),
    title: Text(Names[index]),
    subtitle: Text("Hello"),
    trailing: Text("11.30"),
    ));

    }),
      floatingActionButton: FloatingActionButton(onPressed: (){}),
    );
  }
}
