
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Farmers(),));

}
class Farmers extends StatefulWidget {


  @override
  State<Farmers> createState() => _FarmersState();
}

class _FarmersState extends State<Farmers> {
  List image=[
    "assets/images/Vegetabels.jpg",
    "assets/images/Fruits fresh.jpg",
    "assets/images/Nuts & Seeds.jpg",
    "assets/images/plants packed.jpg",
    "assets/images/Fresh Cuts.jpg",
    "assets/images/powders.jpg",
  ];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,

            title: Text("FARMERS FRESH ZONE",style: TextStyle(fontSize: 18),),
            actions: [
              Icon(Icons.location_on_outlined,),


            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              elevation: 0,
              title: Container(width: double.infinity,
                height: 50,
                child:  TextField(
                  decoration: InputDecoration(
                     prefixIcon: IconButton(icon: Icon(Icons.search),onPressed: (){
                    }, ),
                     filled: true,
                    fillColor: Colors.white,
                    hintText: "Search for Vegetables,Fruits",
                    border: const OutlineInputBorder(borderRadius: BorderRadius.only(),


                  ),
                ),

              ),
            ),
          ),
          ),
          // CarouselSlider(items: List.generate(1, (index) =>
          // Container(decoration: const BoxDecoration(image:DecorationImage(image:
          // NetworkImage("https://images.unsplash.com/photo-1518843875459-f738682238a6"
          //     "?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dmVnZXRhYmxlc3"
          //     "xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"))),
          //
          // )), options: CarouselOptions(
          //   height: 200,
          //   aspectRatio: 4/9,
          //   viewportFraction: 1,
          //   initialPage: 0,
          //   enableInfiniteScroll: false,
          //   autoPlay: false,
          //   autoPlayInterval: const Duration(seconds: 3),
          //   autoPlayCurve: Curves.easeOutCubic,
          //   enlargeCenterPage: true,
          //   enlargeFactor: .3,
          //   scrollDirection: Axis.horizontal,
          //
          // )),
          SliverGrid.builder( itemCount: image.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context,index){
                return Container(margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image[index]),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                );
              }
          )
        ],

      ),

      bottomNavigationBar:BottomNavigationBar(
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        selectedItemColor: Colors.green,

        type: BottomNavigationBarType.fixed,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: "HOME",),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.cartShopping,color: Colors.black,),label: "SEARCH"),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded,color: Colors.black,),label: "ACCOUNT"),


        ],
        currentIndex: index,) ,

    );

  }
}
