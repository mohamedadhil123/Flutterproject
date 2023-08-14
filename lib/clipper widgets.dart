import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main(){
  runApp(MaterialApp( debugShowCheckedModeBanner: false,
    home: Clipper(),));
}

class Clipper extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clippers"),
      ),
      body: ListView(
        children: [
          ClipPath(
            clipper: ArcClipper(),
            child: Container(
              height: 150,
              color: Colors.blue,
            ),
          ),
          ClipOval(
            child: Image.network("https://images.unsplash.com/photo-1653971858625-9cb23d0dca80?ixlib=rb-4.0."
                "3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDMzfENEd3V3WEpBYkV3fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
          ),


            ClipRRect(
              borderRadius: BorderRadius.circular(800),
              child: Image.network("https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb"
                  "-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            ),
          ClipRect(
            child: Container(

              child: Align(
                widthFactor: .6,
                heightFactor: .4,
                child: Image.network("https://images.unsplash.com/photo-1595760780346-f972eb49709f?ixlib=rb-"
                    "1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              ),
            ),
          ),





          // CircleAvatar(
          //   radius: 200,
          //  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb"
          //   "-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
          // )

        ],
      ),
    );
  }
}
