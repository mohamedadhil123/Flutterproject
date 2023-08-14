import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:List_Custom(),));

}
class List_Custom extends StatelessWidget {
  const List_Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List_Custom"),
      ),
      body:
          /// way 1
    // ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
    // [Text("Akaza"),Text("Akaza"),Text("Akaza")],
    // ),

      ///way2

      // ListView.custom(childrenDelegate: SliverChildListDelegate(
      //   List.generate(10, (index) => const Text("Akaza")))),

      ///way3

      ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
              (context,index)=> const Text("Akaza"))),
    );
  }
}
