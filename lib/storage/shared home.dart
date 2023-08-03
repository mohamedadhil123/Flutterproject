import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ShareHome(),
  ));
}
class ShareHome extends StatefulWidget {
  const ShareHome({Key? key}) : super(key: key);

  @override
  State<ShareHome> createState() => _ShareHomeState();
}

class _ShareHomeState extends State<ShareHome> {
  late SharedPreferences preferences;
  late String username;
  @override
  void initState(){
    fetchdata();
    super.initState();
  }
  void fetchdata() async {
    preferences =await SharedPreferences.getInstance();
    setState(() {
      username =preferences.getString('uname')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ShareHome"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome $username",style: TextStyle(fontSize: 20),),
              ElevatedButton(onPressed: (){}, child:Text("Log out"))
            ],
          ),
        ),
        );
    }


}
