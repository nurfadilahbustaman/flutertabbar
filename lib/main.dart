import 'package:flutter/material.dart';

import './hal_komputer.dart' as komputer;
import './hal_radio.dart' as rasio;
import './hal_headset.dart' as headset;
import './hal_smartpone.dart' as hp;

void main(){
  runApp(MaterialApp(
    title: "Tab Bar",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() =>  _HomeState();
  }

  class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

    late TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length:4);
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Daftar Elektronik"),
          bottom: TabBar(
            controller: controller,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.computer),text: "komputer",),
              Tab(icon: Icon(Icons.headset),text: "Headset",),
              Tab(icon: Icon(Icons.radio),text: "Radio",),
              Tab(icon: Icon(Icons.smartphone),text: "Smartphone"),
            ],
          ),
        ),

        body: TabBarView(
          controller: controller,
          children: <Widget>[
            komputer.Komputer(),
            headset.Headset(),
            rasio.Radio(),
            hp.Smartpone()
          ],
          ),

          bottomNavigationBar: Material(
            color: Colors.amber,
            child: TabBar(
            controller: controller,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.computer),),
              Tab(icon: Icon(Icons.headset),),
              Tab(icon: Icon(Icons.radio),),
              Tab(icon: Icon(Icons.smartphone),),
            ],
            ),
          ),
         );
    }
  }