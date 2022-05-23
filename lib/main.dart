// ignore_for_file: deprecated_member_use, unnecessary_new

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Formulir",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String teks = "";

  TextEditingController controllernNamaDepan = new TextEditingController();
  TextEditingController controllernNamaBelakang = new TextEditingController();

  void kirimdata() {
    AlertDialog alertDialog2 = AlertDialog(
      content: SizedBox(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text(controllernNamaDepan.text),
            new Text(controllernNamaBelakang.text),
          ],
        ),
      ),
      actions: <Widget>[
        new RaisedButton(
          color: Colors.blue,
          child: const Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
    showDialog(context: context, builder: (_) => alertDialog2);
  }

  void kirimdata2() {
    AlertDialog alertDialog2 = AlertDialog(
      content: SizedBox(
        height: 200.0,
        child: Text(
            "${controllernNamaDepan.text} ${controllernNamaBelakang.text}"),
      ),
      actions: <Widget>[
        new TextButton(
          child: const Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
    showDialog(context: context, builder: (_) => alertDialog2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulir"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 130, left: 24, right: 24),
        child: Column(
          children: <Widget>[
            TextField(
              controller: controllernNamaDepan,
              decoration: const InputDecoration(
                hintText: "Nama Depan",
              ),
            ),
            Text(
              teks,
              style: const TextStyle(fontSize: 20.0),
            ),
            TextField(
              controller: controllernNamaBelakang,
              decoration: const InputDecoration(
                hintText: "Nama Belakang",
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: RaisedButton(
                color: Colors.blue,
                onPressed: kirimdata2,
                child: const Text('Tampilkan'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
