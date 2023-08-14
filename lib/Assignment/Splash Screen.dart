
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Splash() ,));
}
class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors:[
            Colors.pink,
            Colors.deepOrangeAccent
          ])
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/Tispoon.png",height: 100,
                color: Colors.white,
                // width: 100,
              fit: BoxFit.fill,),
              Text("Fresh Foods",style: GoogleFonts.lobster(fontSize: 50,color: Colors.white),),
              Text("Tasty & Healthy",style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,),),
              
              Image.asset("assets/images/Fr-removebg-preview.png",height: 300,fit: BoxFit.fill,)
              
            ],
            
          ),
        ),
        
        
        
      ),
      

    );
  }
}
