
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
  home: MusicUi(),));
  
}
class MusicUi extends StatefulWidget {
  @override
  State<MusicUi> createState() => _MusicUiState();
}

class _MusicUiState extends State<MusicUi> {
  List image=[
    "assets/images/demon-slayer-season-3.webp",
    "assets/images/Attack On Titan.jpg",
    "assets/images/JJK.jpg",
    "assets/images/weekend.jpg",
    "assets/images/dua lipa.jpg",
    "assets/images/Lena dell ray.jpg",
  ];
  int index=0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            floating: true,
            pinned: true,

            title: Center(child: Text("Playlist",
              style: TextStyle(color: Colors.pink.shade200,fontSize: 27),)),
            bottom: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: Container(width: double.infinity,
              height: 50,
                child:  TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(icon: Icon(Icons.search,color: Colors.pink.shade200,),
                   onPressed: () {
                    print("search");
                   },),
                  filled: true,
                  fillColor: Colors.black26,
                    hintText: "search...",
                  hintStyle: TextStyle(color: Colors.pink.shade200),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(width: 2,color: Colors.grey)),
                    enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 2,color: Colors.grey)),
                ),
              ),

              ),
            ),
          ),
          SliverGrid.builder( itemCount: image.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context,index){
            return Container(margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image[index]),
                  fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15)),
                );
          }
          ),
        ],

      ),

      bottomNavigationBar:BottomNavigationBar(
        onTap: (tapindex) {

          setState(() {
            index = tapindex;
          });
        },
        selectedItemColor: Colors.pink.shade200,
        backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: "home",),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: "search"),
            BottomNavigationBarItem(icon: Text("PlayLists",style: TextStyle(color: Colors.pink.shade200,fontSize: 15),),label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz_rounded,color: Colors.white,),label: "library"),


          ],
      currentIndex: index,) ,

    );
  }
}
