import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({super.key, required this.image,
    required this.width, required this.height, required this.margin,
  });
  final String image;
  final String width;
  final String height;
  final String margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 70,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(image:DecorationImage(image: AssetImage(image),
        fit: BoxFit.fill,
      ),
       borderRadius: BorderRadius.circular(5)
      ),

    );
  }
}

