
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/Passing%20data%20between%20screen/Brand%20details.dart';
import 'package:flutter_project_may2023/Passing%20data%20between%20screen/Cart.dart';
import 'package:flutter_project_may2023/Passing%20data%20between%20screen/Dummydata.dart';


void main(){
  runApp(MaterialApp(
    home: BrandList(),
  debugShowCheckedModeBanner: false,

  /// Named routes used in navigator.pushNamed()

  routes: {
      "details":(context)  =>Branddetails(),
      "cart"   :(context)  =>Cart(),

  },
  ));
}


class BrandList extends StatelessWidget {
  const BrandList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),

        //e ->each single map in the list
        // list.map->iterate all the data in the list
        //toList used to convert the map values to list

        children: Brands.map((e)  {
          return ListTile(
            leading:
            Image.asset(e["image"]),
            title: Text(e["name"]),
            onTap: ()=> gotodetails(context,e["id"]),
          );

    }).toList(),

      ),
    );
  }

  void gotodetails(BuildContext context, id) {  //id=e["id"]-id of item that
    Navigator.pushNamed(context, "details",arguments: id);


  }
}
