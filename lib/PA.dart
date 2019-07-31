import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class PA extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PA'),
      ),
      body:ListView(
        children: <Widget>[
          ListTile(
            title: Text('Risk Assessment'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/risk_assessment/TR285 Risk Assessment Review 110718.pdf")){
                await launch("https://nt.com.sg/risk_assessment/TR285 Risk Assessment Review 110718.pdf");
              }
            },
          ),
          ListTile(
            title: Text('Safework Procedure'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async {
              if(await canLaunch("https://nt.com.sg/risk_assessment/qwer.pdf")){
                await launch("https://nt.com.sg/risk_assessment/qwer.pdf");
              }
            },
          ),
        ],
      ),
    );
  }
}