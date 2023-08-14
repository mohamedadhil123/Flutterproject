import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/Assignment/TourismApp%20Ui/Place%20Details.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: PlaceList(),
  ));
}
class PlaceList extends StatelessWidget {
  var images =[
    "assets/images/Thajmahal.webp",
    "assets/images/Paris.webp",
    "assets/images/London.webp",
    "assets/images/Tokyo.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(

        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              child: const Text("Popular",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20
              ),),
            ),
            SizedBox(height: 5,),

            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                   shrinkWrap: true,
                      children: [
                        Stack(
                          children: [
                            Container(
                              child:  GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>Placedetails()));
                                },
                              ),
                              height: 185,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image:const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                  AssetImage("assets/images/Thajmahal.webp"),),
                              ),

                            ),
                            const Positioned(
                              left:20,
                              bottom:10,
                              child: Text("Tajmahal",
                                style: TextStyle(fontSize: 20,color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Stack(
                          children: [
                            Container(
                              child:  GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>Placedetails()));
                                },
                              ),
                              height: 185,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image:const DecorationImage(
                                  fit: BoxFit.cover,

                                  image:
                                  AssetImage("assets/images/Paris.webp"),),

                              ),
                            ),
                            const Positioned(
                              left:20,
                              bottom:10,
                              child: Text("Paris",
                                style: TextStyle(fontSize: 20,color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Stack(
                          children: [
                            Container(
                              child:  GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>Placedetails()));
                                },
                              ),
                              height: 185,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image:const DecorationImage(
                                  fit: BoxFit.cover,

                                  image:
                                  AssetImage("assets/images/London.webp"),),

                              ),
                            ),
                            const Positioned(
                              left:20,
                              bottom:10,
                              child: Text("London",
                                style: TextStyle(fontSize: 20,color: Colors.white),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Stack(
                          children: [
                            Container(
                              child:  GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>Placedetails()));
                                },
                              ),
                              height: 185,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image:const DecorationImage(
                                  fit: BoxFit.cover,

                                  image:
                                  AssetImage("assets/images/Tokyo.webp"),),

                              ),
                            ),
                            const Positioned(
                              left:20,
                              bottom:10,
                              child: Text("Tokyo",
                                style: TextStyle(fontSize: 20,color: Colors.white,),
                              ),
                            ),
                          ],

                        ),
                      ],
                    ),
                  ),

          ],
        ),
      )
    );
  }
}
