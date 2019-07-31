import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Company_Safety_Certification extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Safety Certification'),
      ),
      body:ListView(
        children: <Widget>[
          ListTile(
            title: Text('OHSAS 18001'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/OHSAS18001_Certificate.pdf")){
                await launch("https://nt.com.sg/safety_app/OHSAS18001_Certificate.pdf");
              }
            },
          ),
          ListTile(
            title: Text('bizSAFE Star'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async {
              if(await canLaunch("https://nt.com.sg/safety_app/bizSAFE_Star.pdf")){
                await launch("https://nt.com.sg/safety_app/bizSAFE_Star.pdf");
              }
            },
          ),
        ],
      ),
    );
  }
}