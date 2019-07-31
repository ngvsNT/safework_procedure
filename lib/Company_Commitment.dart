import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './Company_Safety_Pledge.dart';

class Company_Commitment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Commitment'),
      ),
      body:ListView(
        children: <Widget>[
          ListTile(
            title: Text('Company Policy'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/Company_Policy.pdf")){
                await launch("https://nt.com.sg/safety_app/Company_Policy.pdf");
              }
            },
          ),
          ListTile(
            title: Text('Company Safety Pledge'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Company_Safety_Pledge())
              );
            },
          ),
        ],
      ),
    );
  }
}