import 'package:flutter/material.dart';

import './TR285.dart';
import './Company_Commitment.dart';
import './PUB.dart';
import './TR227.dart';
import './Company_Safety_Certification.dart';
import './Mapletree.dart';
import './URA.dart';
import './Permit_To_Work.dart';
import './Safety_Information.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ListViews')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
/*
Widget _myListView(BuildContext context) {

  // backing data
  final sites = ['LTA','NPARKS','PUB','HDB','PA'];

  return ListView.separated(
    itemCount: sites.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(sites[index]),

      );
    },
    separatorBuilder:(context,index){
      return Divider();
    },
  );

}*/
Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Company Commitment'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> Company_Commitment())
          );
        },
      ),
      ListTile(
        title: Text('Company Safety Certification'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> Company_Safety_Certification())
          );
        },
      ),
      ListTile(
        leading: Image.asset(
            'assets/LTA.png'
        ),
        title: Text('LTA TR227'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> TR227())
          );
        },
      ),
      ListTile(
        leading: Image.asset(
            'assets/LTA.png'
        ),
        title: Text('LTA TR285'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> TR285())
          );
        },
      ),
      ListTile(
        leading: Image.asset(
            'assets/mapletree.png'
        ),
        title: Text('Mapletree'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> Mapletree())
          );
        },
      ),
      ListTile(
        leading: Image.asset(
            'assets/PUB3.png'
        ),
        title: Text('PUB'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> PUB())
          );
        },
      ),
      ListTile(
        leading: Image.asset(
          'assets/URA.png'
        ),
        title: Text('URA'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> URA())
          );
        },
      ),
      ListTile(
        title: Text('Permit-To-Work'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> Permit_To_Work())
          );
        },
      ),
      ListTile(
        title: Text('Safety Information'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> Safety_Information())
          );
        },
      ),
    ],
  );
}




