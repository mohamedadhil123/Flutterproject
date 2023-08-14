import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView2(),));
}
class GridView2 extends StatelessWidget {
  const GridView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 3,
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 30,
            mainAxisSpacing: 20
          ), itemBuilder: (context ,index){
            return Card(
              color: Colors.blue,
              child: Center(
                child: Text(
                  "User $index",style: const TextStyle(fontSize: 30,color: Colors.black),),

              ),
            );
      }),
    );
  }
}
