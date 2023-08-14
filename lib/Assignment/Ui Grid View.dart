import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:GridViewScreen(),));
}
class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List iconList = const [
      Icons.home,
      Icons.notification_important,
      Icons.linked_camera,
      Icons.local_activity,
      Icons.leak_remove,
      Icons.book,
      Icons.call,
      Icons.mail,
      Icons.map,
      Icons.memory_outlined,
      Icons.mic_off,
      Icons.note_add
    ];

    List colorHexCodeList = const [
      Colors.blue,
      Colors.orange,
      Colors.green,
      Colors.pink,
      Colors.red,
      Color.fromARGB(255, 28, 85, 183),
      Colors.purple,
      Colors.teal,
      Color.fromARGB(255, 195, 179, 32),
      Color.fromARGB(255, 206, 113, 26),
      Color.fromARGB(255, 206, 30, 89),
      Color.fromARGB(255, 45, 174, 34)
    ];

    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: iconList.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 4.5 / 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              margin: const EdgeInsets.all(10),
              elevation: 15,
              color: colorHexCodeList[index],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    iconList[index],
                    size: 58,
                    color: Colors.black54,
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Heart\nShaker",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}