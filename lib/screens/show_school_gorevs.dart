import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OkulGorevleri extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OkulGorevleriState();
  }

}

class _OkulGorevleriState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Okul Gorevleri"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,

      ),
    );
  }
}