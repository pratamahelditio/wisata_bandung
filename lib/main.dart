import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: DetailScreen(),
    );
  }
}

// class detail screen
class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[Title(), TourInformation(), Description()],
    )));
  }
}

// class Title
class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: Text(
        'Farm House Lembang',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// class tour information
class TourInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.calendar_today),
                SizedBox(
                  height: 8.0,
                ),
                Text('Open Everyday'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.schedule),
                SizedBox(
                  height: 8.0,
                ),
                Text('09.00 - 20.00'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.paid),
                SizedBox(
                  height: 8.0,
                ),
                Text('Rp 25.000'),
              ],
            ),
          ]),
    );
  }
}

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}