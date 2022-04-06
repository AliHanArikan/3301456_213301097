import 'package:arikan_software/screens/show_gorevs.dart';

import 'package:flutter/material.dart';


 class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }

 }

 class _HomePageState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Hayatını Planla"),
        ),


        body: Center(
          child: Column(
            children: [ElevatedButton(
              onPressed:() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowGorevs()));
              },

              child: Text("Görevleri Göster"),
              
            ),
              ElevatedButton(
                  onPressed: (){
                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>OkulGorevleri()));
              },
                child: Text("Okul Görevlerini Göster"),
              )

            ],

          ),
        )

    );
  }

}

