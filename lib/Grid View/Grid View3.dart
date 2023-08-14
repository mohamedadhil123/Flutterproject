
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView3(),));
}
class GridView3 extends StatelessWidget {
  const GridView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 4,
      children: List.generate(15, (index) => Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.black,
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Image.asset("assets/images/Akaza.jpg",height: 230,),
            Text("Akaza",style: TextStyle(color: Colors.blue),)
          ],
        ),
      )),),
    );
  }
}
