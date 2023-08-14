
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ExpandedWid(),
    debugShowCheckedModeBanner: false,
  ));

}
class ExpandedWid extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded"),),
      body: Container(
        color: Colors.tealAccent,
        height: MediaQuery.of(context).size.height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hello"),
            Icon(Icons.account_circle_rounded),
            Expanded(child: Image.asset("assets/images/gradient.jpg")),
            Expanded(child: Image.asset("assets/images/gradient.jpg")),
          ],
        ),
      ),
    );
  }
}
