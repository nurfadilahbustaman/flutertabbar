import 'package:flutter/material.dart';

class Smartpone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20.0),),
            Text("SMARTPONE", style: new TextStyle(fontSize: 30.0),),
            Padding(padding: EdgeInsets.all(20.0),),
            Icon(Icons.smartphone,size: 90.0,)
          ],
        ),
        ),
    );
  }
}