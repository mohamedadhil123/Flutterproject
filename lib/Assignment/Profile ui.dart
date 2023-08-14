
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: ProfileId(),
  ));
}
class ProfileId extends StatelessWidget {
  ProfileId({Key? key}) : super(key: key);
  void main(){
    runApp( MaterialApp(debugShowCheckedModeBanner: false,
      home: ProfileId(),
    ));
  }

  List names = ["Privacy","Purchase History","Help&Support","Settings","Invite a friend","Logout"];
  List icons = [Icons.info_outline,Icons.restore,Icons.help_outline,Icons.settings,Icons.person_add_alt,Icons.logout];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          // padding: EdgeInsets.zero,
          children: [
             Padding(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Icon(Icons.menu)
                  ],
                ),
              ),
            ),
             CircleAvatar(
              backgroundImage: AssetImage("assets/icons/Ayoob-removebg-preview.png"),
              radius: 60,
            ),
            SizedBox(height: 20,),


             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.facebook,color: Colors.blue.shade900,),
                SizedBox(width: 30,),
                FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,),
                SizedBox(width: 30,),
                FaIcon(FontAwesomeIcons.linkedinIn,color: Colors.blue.shade800,),
                SizedBox(width: 30,),
                FaIcon(FontAwesomeIcons.github,color: Colors.black,),
                SizedBox(width: 30,),
              ],
            ),
            SizedBox(height: 20,),

            Text("Ayoob",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Text("ayoobkibrahim01@gmail.com"
                "",style: TextStyle(color: Colors.grey),),
            SizedBox(height: 20,),


             Text("Application Developer",style: TextStyle(fontSize: 20),),

            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  itemBuilder: (context,index) => SettingsCard(title: names[index], icon: icons[index])
              ),
            )

          ],
        )
    );
  }
}

class SettingsCard extends StatelessWidget {
  final String title;
  final IconData icon;
   SettingsCard({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(30)
      ),
      child: ListTile(
        leading: Icon(icon,color: Colors.black,),
        title: Text(title,style: TextStyle(color: Colors.black),),
        horizontalTitleGap: 20,
        trailing:  Icon(Icons.chevron_right,color: Colors.black,),
      ),
    );
  }
}