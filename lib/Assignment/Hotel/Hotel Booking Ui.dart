import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/Assignment/MusicApp/TitleWidget.dart';

void main(){
  runApp(MaterialApp(home: HotelBooking(),
  debugShowCheckedModeBanner: false,));
}
class HotelBooking extends StatelessWidget {
  const HotelBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,

            floating: true,
            pinned: true,

            title: Text("Find Your Favourite Hotel",style: TextStyle(color: Colors.black),),

            
            actions: [
              Padding(padding: EdgeInsets.all(3),
              child: Image(image: AssetImage("assets/images/dua lipa.jpg")),),

            ],


            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,


              title: Container(width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                      icon: Icon(Icons.search,color: Colors.grey,size: 35,
                      ),onPressed: (){
                        print("search");
                  },),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  hintText: "Search For Hotel",
                  hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                  ),

                ),
              ),

              ),

              ),


        ],


      ),


    );

  }
}
