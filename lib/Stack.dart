import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: StackEx(),));
}
class StackEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StackEx"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
             // color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),
              image:const DecorationImage(
                fit: BoxFit.cover,
                  image: NetworkImage("https://wallpapercave.com/wp/wp9683591.jpg"))),
            ),


           const Positioned(
              top: 20,
              left: 30,
              child: Text("Become a Demon",style: TextStyle(fontSize: 25,color: Colors.white),)),

            Positioned(
              right: 20,
              bottom: 10,
              child: Container(
                height: 50,
                width: 100,
                child: const Text("Akaza",style: TextStyle(fontSize: 25,color: Colors.white),),


              ),
            ),
          ],
        ),
      ),
    );
  }
}
