import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(debugShowCheckedModeBanner: false,home: products()));
}
class products extends StatelessWidget{
  const products({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: const Text("Product List"),
        actions: [ 
          Icon(Icons.shopping_cart)
        ],
      
      ),
      body: ListView(
        children:  [
          Card(
            child: ListTile(
                minVerticalPadding: 20,
                tileColor: Colors.blueGrey,
                leading: Image.asset("assets/icons/apple.png"),
                //title: Text( 'Name :  Apple', style: TextStyle(fontWeight: FontWeight. bold), ),
                title: const Text.rich(
                  TextSpan(
                    text: 'Name :',
                    children: <TextSpan>[
                      TextSpan(text: 'Apple', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Unit :',
                        children: <TextSpan>[
                          TextSpan(text: 'Kg', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price :',
                        children: <TextSpan>[
                          TextSpan(text: '\$20', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                    child: const Text('Add to cart'))
            ),
          ),
          Card(
            child: ListTile(
                minVerticalPadding: 20,
                tileColor: Colors.blueGrey,
                leading: Image.asset("assets/icons/mango.png"),
                //title: Text( 'Name :  Apple', style: TextStyle(fontWeight: FontWeight. bold), ),
                title: const Text.rich(
                  TextSpan(
                    text: 'Name :',
                    children: <TextSpan>[
                      TextSpan(text: 'Mango', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Unit :',
                        children: <TextSpan>[
                          TextSpan(text: 'Doz', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price :',
                        children: <TextSpan>[
                          TextSpan(text: '\$30', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                    child: const Text('Add to cart'))
            ),
          ),
          Card(
            child: ListTile(
                minVerticalPadding: 20,
                tileColor: Colors.blueGrey,
                leading: Image.asset("assets/icons/bananas.png"),
                //title: Text( 'Name :  Apple', style: TextStyle(fontWeight: FontWeight. bold), ),
                title: const Text.rich(
                  TextSpan(
                    text: 'Name :',
                    children: <TextSpan>[
                      TextSpan(text: 'Banana', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Unit :',
                        children: <TextSpan>[
                          TextSpan(text: 'Doz', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price :',
                        children: <TextSpan>[
                          TextSpan(text: '\$10', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                    child: const Text('Add to cart'))
            ),
          ),
          Card(
            child: ListTile(
                minVerticalPadding:20,
                tileColor: Colors.blueGrey,
                leading: Image.asset("assets/icons/grapes.png"),
                //title: Text( 'Name :  Apple', style: TextStyle(fontWeight: FontWeight. bold), ),
                title: const Text.rich(
                  TextSpan(
                    text: 'Name :',
                    children: <TextSpan>[
                      TextSpan(text: 'Grapes', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Unit :',
                        children: <TextSpan>[
                          TextSpan(text: 'Kg', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price :',
                        children: <TextSpan>[
                          TextSpan(text: '\$8', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                    child: const Text('Add to cart'))
            ),
          ),
          Card(
            child: ListTile(
                minVerticalPadding: 20,
                tileColor: Colors.blueGrey,
                leading: Image.asset("assets/images/watermelon-removebg-preview.png"),
                //title: Text( 'Name :  Apple', style: TextStyle(fontWeight: FontWeight. bold), ),
                title: const Text.rich(
                  TextSpan(
                    text: 'Name :',
                    children: <TextSpan>[
                      TextSpan(text: 'Water Melon', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Unit :',
                        children: <TextSpan>[
                          TextSpan(text: 'Kg', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price :',
                        children: <TextSpan>[
                          TextSpan(text: '\$25', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                    child: const Text('Add to cart'))
            ),
          ),
          Card(
            child: ListTile(
                minVerticalPadding: 20,
                tileColor: Colors.blueGrey,
                leading: Image.asset("assets/images/kiwi-removebg-preview.png"),
                //title: Text( 'Name :  Apple', style: TextStyle(fontWeight: FontWeight. bold), ),
                title: const Text.rich(
                  TextSpan(
                    text: 'Name :',
                    children: <TextSpan>[
                      TextSpan(text: 'Kiwi', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Unit :',
                        children: <TextSpan>[
                          TextSpan(text: 'Pc', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price :',
                        children: <TextSpan>[
                          TextSpan(text: '\$40', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                    child: const Text('Add to cart'))
            ),
          ),
          Card(
            child: ListTile(
                minVerticalPadding: 20,
                tileColor: Colors.blueGrey,
                leading: Image.asset("assets/icons/orange.png"),
                //title: Text( 'Name :  Apple', style: TextStyle(fontWeight: FontWeight. bold), ),
                title: const Text.rich(
                  TextSpan(
                    text: 'Name :',
                    children: <TextSpan>[
                      TextSpan(text: 'Orange', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Unit :',
                        children: <TextSpan>[
                          TextSpan(text: 'Doz', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price :',
                        children: <TextSpan>[
                          TextSpan(text: '\$15', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                    child: const Text('Add to cart'))
            ),
          ),
          Card(
            child: ListTile(
                minVerticalPadding: 20,
                tileColor: Colors.blueGrey,
                leading: Image.asset("assets/images/peach-removebg-preview.png"),
                //title: Text( 'Name :  Apple', style: TextStyle(fontWeight: FontWeight. bold), ),
                title: const Text.rich(
                  TextSpan(
                    text: 'Name :',
                    children: <TextSpan>[
                      TextSpan(text: 'Peach', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Unit :',
                        children: <TextSpan>[
                          TextSpan(text: 'Doz', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price :',
                        children: <TextSpan>[
                          TextSpan(text: '\$20', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
                    child: const Text('Add to cart'))
            ),
          ),
        ],
      ),
    );
  }
}