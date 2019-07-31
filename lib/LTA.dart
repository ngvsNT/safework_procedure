import 'package:flutter/material.dart';
import './TR285.dart';
import './TR227.dart';

class LTA extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LTA'),
      ),
      body: ListView(
          children: <Widget>[
      ListTile(
      title: Text('TR227'),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> TR227())
        );
      },
    ),
    ListTile(
    title: Text('TR285'),
    trailing: Icon(Icons.keyboard_arrow_right),
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context)=> TR285())
    );
    },
    ),
    ],
      ),
    );
  }
}