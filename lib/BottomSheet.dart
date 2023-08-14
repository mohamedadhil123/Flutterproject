
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: BottomSheet1(),));
}

class BottomSheet1 extends StatelessWidget{
  const BottomSheet1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:
        GestureDetector(
            onLongPress: (){
              showSheet(context);
            },
            child: Image.asset("assets/images/Akaza.jpg",
            height: double.infinity,)),
      ),
    );
  }
  void showSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [

          ListTile(
            leading: FaIcon(FontAwesomeIcons.download,color: Colors.black,),
            title: Text("download"),
          ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.greenAccent,),
              title: Text("Whatsapp"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.pinkAccent,),
              title: Text("Instagram"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.snapchat,color: Colors.yellowAccent,),
              title: Text("snapchat"),
            ),
            ListTile(
              leading: Icon(Icons.copy,color: Colors.black,),
              title: Text("copy"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,),
              title: Text("twitter"),
            )
          ],
        ),
      );
    }
    );
  }
}