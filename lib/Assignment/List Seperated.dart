
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListSeparated(),
  ));
}
class ListSeparated extends StatelessWidget {
  // const ListSeparated ({super.key});
  var Names=[
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(),
      body: ListView.separated( itemCount:Names.length,
          itemBuilder: (context,index){
        return Card(
            elevation: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical:8),
            child:Text(Names[index],style: const TextStyle(fontSize: 22),),
          )
        );
      },
          separatorBuilder: (context,index){
        if(index % 5 == 0 ){
          return  Card(
            elevation: 2,
            color: Colors.red,
            child:Container(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              child:Text("Advertisement",style: TextStyle(fontSize: 22,color: Colors.white),),
            ),

          );

        }else{
          return SizedBox();
        }

    }

    ),
    );


  }
}
