import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './TR227_Checklist.dart';
class TR227 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TR227'),
      ),
      body:ListView(
        children: <Widget>[
          ListTile(
            title: Text('Risk Assessment'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/LTA_TR227_Risk_Assessment.pdf")){
                await launch("https://nt.com.sg/safety_app/LTA_TR227_Risk_Assessment.pdf");
              }
            },
          ),
          ListTile(
            title: Text('Safe Work Procedure'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async {
              if(await canLaunch("https://nt.com.sg/safety_app/LTA_TR227_Safe_Work_Procedure.pdf")){
                await launch("https://nt.com.sg/safety_app/LTA_TR227_Safe_Work_Procedure.pdf");
              }
            },
          ),

          ListTile(
            title: Text('Fall Prevention Plan'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/LTA_TR227_FPP.pdf")){
                await launch("https://nt.com.sg/safety_app/LTA_TR227_FPP.pdf");
              }
            },
          ),
          ListTile(
            title: Text('Man holes procedure & rescue plan'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/LTA_TR227_Man_holes_procedure_&_rescue_plan.pdf")){
                await launch("https://nt.com.sg/safety_app/LTA_TR227_Man_holes_procedure_&_rescue_plan.pdf");
              }
            },
          ),

          ListTile(
            title: Text('Tunnel Closure Plan'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/LTA_TR227_Tunnel_Closure_Plan.pdf")){
                await launch("https://nt.com.sg/safety_app/LTA_TR227_Tunnel_Closure_Plan.pdf");
              }
            },
          ),
          ListTile(
            title: Text('Checklist'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> TR227_Checklist())
              );
            },
          ),
        ],
      ),
    );
  }
}