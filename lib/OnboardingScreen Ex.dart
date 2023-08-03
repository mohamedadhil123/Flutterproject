import 'package:flutter/material.dart';
import 'package:flutter_project_may/login.dart';
import 'package:flutter_project_may/splash%20Screen.dart';
import 'package:introduction_screen/introduction_screen.dart';



void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:OnBoardingEx() ,));
}
class OnBoardingEx extends StatelessWidget {
  const OnBoardingEx({super.key});



  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
        fullScreen: false,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontSize: 30,
            fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.white),
        imagePadding: EdgeInsets.all(20),
        boxDecoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.orange,
              Colors.deepOrange,
              Colors.red,
              Colors.redAccent
            ], begin: Alignment.topRight, end: Alignment.bottomLeft)));

    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          image: Align(
            // to place the widget at a desired position
            alignment: Alignment.topCenter,
            child: Image.network("https://media.istockphoto.com/id/1488643585/photo/building-void-with-clouds.jpg?s=1024x1024&w=is&k=20&c=EzG9BBi1RHBbJ9i_C0m4_wLhAPYveFCWT7XUxn15IfA="),
          ),
          title: "First Page",
          body:
          "Nadheeer pottan aano?",
        ),
        PageViewModel(
            decoration: const PageDecoration(
                fullScreen: true,
                titleTextStyle: TextStyle(
                    color: Colors.purple,
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                bodyTextStyle: TextStyle(fontSize: 18, color: Colors.pink),
                imagePadding: EdgeInsets.all(20),
                boxDecoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/icons/nadheer.png")))),
            image: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/icons/nadheer.png"),
            ),
            title: "SecondPage",
            body:
            "nadheer mandan aano?"),
        PageViewModel(
            decoration: pageDecoration,
            image: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/icons/nadheer.png"),
            ),
            title: "Third Page",
            body:
            "nadheer sundaran aano?"),

      ],
      onDone: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage())),
      onSkip: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SplashPage())),
      showSkipButton: true,
      skip: const Text("skip"),
      next: const Text("next"),
      done: const Text("continue"),
      dotsDecorator: const DotsDecorator(
          size: Size(10, 10),
          color: Colors.black,
          activeSize: Size(25, 10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25),))),
    );
  }
}