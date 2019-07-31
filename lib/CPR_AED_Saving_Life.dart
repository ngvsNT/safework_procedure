import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';
class CPR_AED_Saving_Life extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('CPR & AED Saving Life'),
        ),
        body:Center(
            child: PhotoView(
              imageProvider: AssetImage("assets/CPR_&_AED_Saving_Life.jpg"),
            )
        )
    );
  }
}