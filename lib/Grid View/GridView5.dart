import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: GridView5()));
}
class GridView5 extends StatelessWidget{
  const GridView5({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 70,
        //children: [],
        children: List.generate(10,
                (index) => const Card(
              child: Center(
                child: Icon(
                  Icons.account_balance,
                  size: 60,
                ),
              ),
            )),
      ),
    );
  }
}