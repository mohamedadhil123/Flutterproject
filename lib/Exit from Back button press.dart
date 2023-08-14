import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Exit(),
  ));
}

class Exit extends StatelessWidget {
  const Exit({super.key});
 
  @override
  Widget build(BuildContext context) {

    Future<bool> showAlert() async{
      return await showDialog(context: context, builder: (context){

        return  AlertDialog(
          title: Text("Confirm Exit??"),
          content: Text("Do you really want to exit!!"),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(true);}, child: const Text("yes")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);}, child: const Text("No")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);}, child: const Text("Cancel")),

          ],
        );
      });

    }

    return WillPopScope(  onWillPop: showAlert , child: const Scaffold(
      body: Center(child: Text("Press Back Button to exit!!"),),
    ));
  }


}
