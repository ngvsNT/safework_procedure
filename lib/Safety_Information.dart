import 'package:flutter/material.dart';
import './CPR_AED_Saving_Life.dart';
import './Wearing_N95_Mask.dart';
import 'package:url_launcher/url_launcher.dart';
class Safety_Information extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Safety Information'),
      ),
      body:ListView(
        children: <Widget>[
          ListTile(
            title: Text('WSH Rules for Traffic Management'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async{
              if (await canLaunch("https://nt.com.sg/safety_app/WSH_Rules_for_Traffic_Management.pdf")){
                await launch("https://nt.com.sg/safety_app/WSH_Rules_for_Traffic_Management.pdf");
              }
            },
          ),
          ListTile(
            title: Text('Take Time to Take Care'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()async {
              if(await canLaunch("https://nt.com.sg/safety_app/Take_Time_To_Take_Care.pdf")){
                await launch("https://nt.com.sg/safety_app/Take_Time_To_Take_Care.pdf");
              }
            },
          ),
          ListTile(
            title: Text('CPR & AED Saving Life'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> CPR_AED_Saving_Life())
              );
            },
          ),
          ListTile(
            title: Text('Wearing N95 Mask'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Wearing_N95_Mask())
              );
            },
          ),
        ],
      ),
    );
  }
}