import 'package:flutter/material.dart';

class Placedetails extends StatelessWidget {
  const Placedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius. vertical(
              bottom: Radius.circular(10)
            ),
            image: DecorationImage(image: AssetImage("assets/images/Thajmahal.webp"),
            fit: BoxFit.cover)
          ),
        ),
        SizedBox(height: 5,),
           Text("Tajmahal",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        SizedBox(height: 5,),

        const Padding(padding: EdgeInsets.all(8.0),
        child: Text("The Taj Mahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra. "
              "It was commissioned in 1632 by the Mughal emperor, Shah Jahan (reigned from 1628 to 1658), to house the tomb of his favourite wife, Mumtaz Mahal."
               " The tomb is the centrepiece of a 17-hectare (42-acre)complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall"
            "Construction of the mausoleum was essentially completed in 1643 but work continued on other phases of the project for another 10 years."
            " The Taj Mahal complex is believed to have been completed in its entirety in 1653 at a cost estimated at the time to be around 32 million rupees,"
            " which in 2015 would be approximately 52.8 billion rupees (U.S. 827 million). The construction project employed some 20,000 artisans under the guidance of a board of architects led by the court architect to the emperor,"
            " Ustad Ahmad Lahauri.",
        style: TextStyle(fontSize: 14),textAlign: TextAlign.justify,maxLines: 18,overflow: TextOverflow.ellipsis,),),
        SizedBox(height: 10,),
        Text("Place To visit",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        SizedBox(width: double.infinity,
        height: 110,
        child: ListView.builder(
          itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder:(context,index)=>Container(
              margin: EdgeInsets.all(10),
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(image: AssetImage("assets/images/Thajmahal.webp"),
                fit: BoxFit.fill)
              ),

            ) ),),
        Padding(padding: EdgeInsets.all(10.0),
        child: SizedBox(
          width: double.infinity,
          height: 40,
          child: ElevatedButton(onPressed: (){},
              style: ButtonStyle(
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),),
                )
              ),child:Text("Press to Explore") )
        ),),
      ],
    ),
    );
  }
}
