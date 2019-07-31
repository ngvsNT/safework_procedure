import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './Hoisting.dart';
class Permit_To_Work extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permit_To_Work'),
      ),
      body:ListView(
        children: <Widget>[
          ListTile(
            title: Text('Confined Space'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/PTW_Form(Confined_Spaces).pdf")){
                await launch("https://nt.com.sg/safety_app/PTW_Form(Confined_Spaces).pdf");
              }
            },
          ),
          ListTile(
            title: Text('Working at Height'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async {
              if(await canLaunch("https://nt.com.sg/safety_app/PTW_Form(Working_At_Height).pdf")){
                await launch("https://nt.com.sg/safety_app/PTW_Form(Working_At_Height).pdf");
              }
            },
          ),
          ListTile(
            title: Text('Hoisting'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>Hoisting())
              );
            },
          ),
          ListTile(
            title: Text('Hotwork'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async {
              if(await canLaunch("https://nt.com.sg/safety_app/PTW_Form(Hotwork).pdf")){
                await launch("https://nt.com.sg/safety_app/PTW_Form(Hotwork).pdf");
              }
            },
          ),

        ],
      ),
    );
  }
}