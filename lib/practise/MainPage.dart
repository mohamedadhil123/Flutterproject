
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: MainPage(),));
}
class MainPage extends StatelessWidget {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, 
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Instagram",style: GoogleFonts.lobsterTwo(),),
            actions: [
              Icon(Icons.favorite_border),
              SizedBox(width: 20,),
              Icon(Icons.mail),
              SizedBox(width: 20,)
            ],


          ),
          

          bottomNavigationBar: BottomNavigationBar(
              onTap:(tapindex) {
                index=tapindex;
              },
              backgroundColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: "home",),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,color: Colors.white,),label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.play_circle,color: Colors.white,),label: "Reels"),
                BottomNavigationBarItem(icon: Icon(Icons.circle,color: Colors.white,),label: "myaccount"),

          ]),
        )
    );

  }
}
