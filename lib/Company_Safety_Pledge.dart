import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';
class Company_Safety_Pledge extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Safety Pledge'),
      ),
      body:Center(
        child: PhotoView(
          imageProvider: AssetImage("assets/Company_Safety_Pledge.jpg"),
        )
      )
    );
  }
}