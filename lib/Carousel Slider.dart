import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
 void main(){
   runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Carousel(),
   ));
 }
class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: CarouselSlider(items:List.generate(10, (index) => const
      Card(
        color: Colors.blue,
        child: Center(
          child: Icon(
            Icons.account_circle_rounded,
            size: 200,
          ),
        ),

      )
      ),
      // [
        //   Container(decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage(
        //     "https://images.unsplash.com/photo-1573455494060-c5595004fb6c?ixlib=rb-4.0.3"
        //         "&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8amFwYW4lMjBzdHJlZX"
        //         "R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"
        //   ),
        //   ),
        //   ),
        //   ),
        //   Container(decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage(
        //    "https://images.unsplash.com/photo-1561503972-839d0c56de17?ixlib=rb-4.0.3"
        //        "&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8amFwYW4lMjBzdHJlZXR"
        //        "8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"
        //   ),
        //   ),
        //   ),
        //   ),
        //   Container(decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage(
        //     "https://images.unsplash.com/photo-1584983333849-26ca57622ac2?ixlib=rb-4.0.3"
        //         "&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8amFwYW4lMjBzdHJlZXR8ZW5"
        //         "8MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"
        //   ),
        //   ),
        //   ),
        //   ),
        // Container(decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage(
        //     "https://images.unsplash.com/photo-1591873381631-4104d6e7d105?ixlib=rb-4.0.3&ixid="
        //         "M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGphcGFuJTIwc3RyZWV0fGVufDB8fDB8fHww&auto"
        //         "=format&fit=crop&w=500&q=60"
        // ),
        // ),
        // ),
        // ),
        // Container(decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage(
        //     "https://images.unsplash.com/photo-1572491671626-ca1747c3cc57?ixlib=rb-4.0.3&ixid="
        //         "M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGphcGFuJTIwc3RyZWV0fGVufDB8fDB8fHww"
        //         "&auto=format&fit=crop&w=500&q=60"
        // ),
        // ),
        // ),
        // ),
      // ],
          options: CarouselOptions(
            height: double.infinity,
            aspectRatio: 16/9,
            viewportFraction: .6,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayCurve: Curves.easeOutCubic,
            enlargeCenterPage: true,
            enlargeFactor: .3,
            scrollDirection:Axis.vertical,
          )
      ),
    );
  }
}
