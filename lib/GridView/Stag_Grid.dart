import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:StagGrid(),
  ));
}
class StagGrid extends StatelessWidget {
  const StagGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Staggered Grid"),),
        body: SingleChildScrollView(
            child: StaggeredGrid.count(crossAxisCount: 1,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount:1,
                    mainAxisCellCount:2,
                    child: Container(
                      decoration: BoxDecoration(image: DecorationImage(
                          fit:BoxFit.contain,
                          image: NetworkImage("https://images.unsplash.com/photo-1689164293624-9e9c11359c18?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"))),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount:1,
                    mainAxisCellCount:2,
                    child: Container(
                      decoration: BoxDecoration(image: DecorationImage(
                          fit:BoxFit.contain,
                          image: NetworkImage("https://images.unsplash.com/photo-1688388040015-c3985c83a12d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80"))),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount:1,
                    mainAxisCellCount:2,
                    child: Container(
                      decoration: BoxDecoration(image: DecorationImage(
                          fit:BoxFit.contain,
                          image: NetworkImage("https://plus.unsplash.com/premium_photo-1689177356594-b988a1cc45ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80"))),
                    ))
              ],
            ),
            ),
       );
    }
}