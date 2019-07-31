import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Hoisting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permit_To_Work'),
      ),
      body:ListView(
        children: <Widget>[
          ListTile(
            title: Text('Hoisting'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async {
              if(await canLaunch("https://nt.com.sg/safety_app/PTW_Form(Hoisting).pdf")){
                await launch("https://nt.com.sg/safety_app/PTW_Form(Hoisting).pdf");
              }
            },
          ),
          ListTile(
            title: Text('Lifting Plan'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async {
              if(await canLaunch("https://nt.com.sg/safety_app/Lifting_Plan.pdf")){
                await launch("https://nt.com.sg/safety_app/Lifting_Plan.pdf");
              }
            },
          ),
        ],
      ),
    );
  }
}