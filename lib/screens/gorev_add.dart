
import 'package:arikan_software/data/dbHelper.dart';
import 'package:arikan_software/models/gorev.dart';
import 'package:flutter/material.dart';

class GorevAdd extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GorevAddState();
  }

}

class _GorevAddState extends State{
  var dbHelper =new DbHelper();
  var txtIsim = TextEditingController();
  var txtAciklama = TextEditingController();
  var txtBaslangicZamani = TextEditingController();
  var txtBitisZamani = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Gorev ekle"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              buildIsimField(),
              buildAciklamaField(),
              buildBaslangicZamaniField(),
              buildBitisZamaniField(),
              buildSaveButton(),
            ],
          ),
        ),
      ),
    );
  }
  buildIsimField() {
    return TextField(
      decoration: InputDecoration(labelText: "Gorev ismi"),
        controller: txtIsim,
    );
  }

  buildAciklamaField() {
    return TextField(
      decoration: InputDecoration(labelText: "Gorev Aciklamasi"),
      controller: txtAciklama,
    );
  }

  buildBaslangicZamaniField() {
    return TextField(
      decoration: InputDecoration(labelText: "Baslangic Zamani"),
        controller: txtBaslangicZamani,
    );
  }

  buildBitisZamaniField() {
    return TextField(
      decoration: InputDecoration(labelText: "Bitiş Zamani"),
        controller: txtBitisZamani,
    );
  }

  buildSaveButton() {
    return FlatButton(

      color: Colors.lightGreenAccent,
      child: Text("Yeni Görev Ekle"),
      onPressed: (){
        addGorev();
      },
    );
  }

  void addGorev() async{
    print("brası calisiyor");
print(txtIsim.text.toString());
    var result= await dbHelper.insert(Gorev(isim: txtIsim.text.toString(),bitisZamani: int.parse(txtBitisZamani.text.toString()),baslangicZamani: int.parse(txtBaslangicZamani.text.toString()),aciklama: txtAciklama.text.toString() ));
    dbHelper.getGorevs;

    Navigator.pop(context,true);
}


}