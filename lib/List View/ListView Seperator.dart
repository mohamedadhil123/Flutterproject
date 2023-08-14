import'package:flutter/material.dart';
void main(){runApp(MaterialApp(home: ListView3(),));
}
class ListView3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text("List Separator"),),
      body: ListView.separated(itemBuilder: (context,index){
        return const Card(
          color: Colors.blue,
          child: Text("Hello"),
        );
      },
           separatorBuilder: (context,index){
        if (index % 5== 0){

        }

        return const Divider(color: Colors.purpleAccent,);
           },
      itemCount: 10,
    ),
    );
  }
}
