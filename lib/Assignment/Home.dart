
import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/Assignment/Login.dart';
import 'package:flutter_project_may2023/Assignment/SignUp.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(
    MaterialApp(
      home: Home(),
    ));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(

     body: Container(
       child:Center(
       child:Column(
         mainAxisAlignment:MainAxisAlignment.center,

   children:[
         Text("Hello There!",style: GoogleFonts.anton(fontSize: 30),),

         const Text("Automatic identify verification which enable to verify your identity",),

         Image.network(
             "https://img.freepik.com/premium-vector/adult-company-boss-"
                 "talking-phone-office-manager-with-telephone-laptop-work-"
                 "workplace-interior-flat-vector-""illustration-success-"
                 "communication-concept-banner-landing-web-page_74855-22952.jpg?w=2000",
         height: 400,width: 300,),

     ElevatedButton(
       style:const ButtonStyle(   backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),),
         onPressed: (){

       Navigator.of(context).push(MaterialPageRoute(
           builder:(context)=>Login()));
     }, child: Text ("Login")),

     ElevatedButton(
       style: const ButtonStyle(   backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),),
         onPressed: (){
       Navigator.of(context).push(MaterialPageRoute(
           builder:(context)=>SignUp()));
     }, child: Text ("SignUp"))

       ],
    ),
     ),
     ),
   );
  }
}



