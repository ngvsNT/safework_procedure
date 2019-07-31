import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';
class Wearing_N95_Mask extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('Wearing N95 Mask'),
        ),
        body:Center(
            child: PhotoView(
              imageProvider: AssetImage("assets/Wearing_N95_Mask.jpg"),
            )
        )
    );
  }
}