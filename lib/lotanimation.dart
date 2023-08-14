
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LottieeAnim(),
  ));
}
class LottieeAnim extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/animations/animation_lk9csk4a.json"),
      ),
      
    );
  }
}
