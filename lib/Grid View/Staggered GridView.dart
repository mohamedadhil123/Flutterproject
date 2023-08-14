import 'package:flutter/material.dart';
import 'package:flutter_project_may2023/Grid%20View/MyWidget(Using%20flutter%20Refactoring).dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp( debugShowCheckedModeBanner: false,
    home: Staggered(),));
}

class Staggered extends StatelessWidget {
  const Staggered({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid"),
      ),
      body: SingleChildScrollView
        (
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          // crossAxisSpacing: 8,
          // mainAxisSpacing: 8,
          children:  [
            StaggeredGridTile.count(
                crossAxisCellCount:2,
                mainAxisCellCount: 1,
                child: MyWidget(label: Text("Hello 1"), onpress: (){},bgcolor: Colors.red,
                  image: Image.asset("assets/icons/grapes.png"),
                  // Card(child: Center(child: Text("1",style: TextStyle(color: Colors.white),),),color: Colors.black,

                )),
            StaggeredGridTile.count(
                crossAxisCellCount:2,
                mainAxisCellCount: 1,
                child: Card(
                  child: Center(
                    child: Text("2",style: TextStyle(color: Colors.black),),
                  ),color: Colors.blue,

                )),
            StaggeredGridTile.count(
                crossAxisCellCount:2,
                mainAxisCellCount: 1,
                child: Card(
                  child: Center(
                    child: Text("3",style: TextStyle(color: Colors.black),),
                  ),color: Colors.red,

                )),
            StaggeredGridTile.count(
                crossAxisCellCount:2,
                mainAxisCellCount: 1,
                child: Card(
                  child: Center(
                    child: Text("4",style: TextStyle(color: Colors.red),),
                  ),color: Colors.purple,

                )),

            // StaggeredGridTile.count(
            //     crossAxisCellCount:1,
            //     mainAxisCellCount: 2,
            //     child: Container(
            //       decoration:const BoxDecoration(
            //           image: DecorationImage(
            //               fit: BoxFit.cover,
            //               image:
            //               NetworkImage("https://images.unsplash.com/photo-1686491128258-a949078ff35c?"
            //                   "ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDI5fE8zd0JjNTl6emY4fHxlbnwwfHx8fHw%3D"
            //                   "&auto=format&fit=crop&w=500&q=60"))
            //       ),
            //     )),
            // StaggeredGridTile.count(
            //     crossAxisCellCount:1,
            //     mainAxisCellCount: 3,
            //     child: Container(
            //       decoration:const BoxDecoration(
            //           image: DecorationImage(
            //               fit: BoxFit.cover,
            //               image:
            //               NetworkImage("https://images.unsplash.com/photo-"
            //                   "1687965134011-2ccfaaff680d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx"
            //                   "0b3BpYy1mZWVkfDI2fE8zd0JjNTl6emY4fHxlbnwwfHx8fHw%3D&auto"
            //                   "=format&fit=crop&w=500&q=60"))
            //       ),
            //     )),
            // StaggeredGridTile.count(
            //     crossAxisCellCount:1,
            //     mainAxisCellCount: 3,
            //     child: Container(
            //       decoration:const BoxDecoration(
            //           image: DecorationImage(
            //               fit: BoxFit.cover,
            //               image:
            //               NetworkImage("https://images.unsplash.com/photo-1689432683850"
            //                   "-4bf1373bbee0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy"
            //                   "1mZWVkfDMwfE8zd0JjNTl6emY4fHxlbnwwfHx8fHw%3D&auto"
            //                   "=format&fit=crop&w=500&q=60"))
            //       ),
            //     )),
          ],
        ),
      ),
    );
  }
}