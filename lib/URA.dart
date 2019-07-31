import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class URA extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('URA'),
      ),
      body:ListView(
        children: <Widget>[
          ListTile(
            title: Text('Risk Assessment'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/URA_Risk_Assessment.pdf")){
                await launch("https://nt.com.sg/safety_app/URA_Risk_Assessment.pdf");
              }
            },
          ),
          ListTile(
            title: Text('Safe Work Procedure'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async {
              if(await canLaunch("https://nt.com.sg/safety_app/URA_Safe_Work_Procedure.pdf")){
                await launch("https://nt.com.sg/safety_app/URA_Safe_Work_Procedure.pdf");
              }
            },
          ),
        ],
      ),
    );
  }
}