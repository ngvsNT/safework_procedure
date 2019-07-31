import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class TR227_Checklist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checklist'),
      ),
      body:ListView(
        children: <Widget>[

          ListTile(
            title: Text('Lorry Crane Operator Checklist'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/Lorry_Crane_Operator_Checklist.pdf")){
                await launch("https://nt.com.sg/safety_app/Lorry_Crane_Operator_Checklist.pdf");
              }
            },
          ),
          ListTile(
            title: Text('Mobile Working Platform Operator Checklist'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/Mobile_Working_Platform_Operator_Checklist.pdf")){
                await launch("https://nt.com.sg/safety_app/Mobile_Working_Platform_Operator_Checklist.pdf");
              }
            },
          ),
          ListTile(
            title: Text('Scaffold Checklist Register'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/Scaffold_Checklist_Register.pdf")){
                await launch("https://nt.com.sg/safety_app/Scaffold_Checklist_Register.pdf");
              }
            },
          ),
          ListTile(
            title: Text('Site Supervisor Checklist'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/Site_Supervisor_Checklist.pdf")){
                await launch("https://nt.com.sg/safety_app/Site_Supervisor_Checklist.pdf");
              }
            },
          ),
          ListTile(
            title: Text('TTP Checklist'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/TTP_Checklist.pdf")){
                await launch("https://nt.com.sg/safety_app/TTP_Checklist.pdf");
              }
            },
          ),
          ListTile(
            title: Text('Weekly First-Aid Box Checklist'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/Weekly_First-Aid_Box_Checklist.pdf")){
                await launch("https://nt.com.sg/safety_app/Weekly_First-Aid-Box_Checklist.pdf");
              }
            },
          ),
        ],
      ),
    );
  }
}