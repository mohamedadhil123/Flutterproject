
import 'dart:math';

import 'package:flutter/material.dart.';
import 'package:flutter_project_may/ListView/ListView%20separator.dart';
import 'package:flutter_project_may/passing%20dummy/dummydata.dart';

void main(){
  runApp(MaterialApp(
    home: Productlist(),
    debugShowCheckedModeBanner: false,
    routes: {
      "details" :(context) => Productlist(),
      "cart" :(context) => ListView3()
    },
  ));
}


class Productlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Products"),),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: products.map((e) => ListTile(
          leading: Image.asset(e["image"])),
           title: Text(e["name"]),
           onTap: ()=> gotodetails(context,e["id"]),
        ))toList(),

    );

        }

        void gotodetails(BuildContext context, id) {
           Navigator.pushNamed(context, "details", arguments: id );

        }

      ),
    );
  }

}