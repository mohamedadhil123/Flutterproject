import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/Passing%20data%20between%20screen/Dummydata.dart';

class Branddetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final id =ModalRoute.of(context)?.settings.arguments;
    final Brand = Brands.firstWhere((element)=>element["id"]==id);
    return Scaffold(
      appBar: AppBar(
        title: Text("Product details"),
      ),
      body: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
              Brand["image"],
                height: 200,
                width: 200,
              ),
              Text(
                Brand["name"],
                style:const  TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
              ),
              Center(child: Text(Brand["description"])),
              Text("${Brand["price"]}",
              style: TextStyle(fontSize: 30)),
              Text("${Brand["rating"]}",
                  style: TextStyle(fontSize: 20)),


            ],
          ),
        ),

      )

    );
  }
}
