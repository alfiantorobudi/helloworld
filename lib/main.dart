import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Aplikasi Toro",
      home: new HalamanMain(),
      ));
}

class HalamanMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Toro Toro App"),
        ),
        body: new Container(
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new CardToro(
                  iconCardToro: Icons.home,
                  teksCardToro: "Home",
                  warnaCardToro: Colors.red,
                ),
                new CardToro(
                  iconCardToro: Icons.favorite,
                  teksCardToro: "Favorite",
                  warnaCardToro: Colors.pink,
                ),
                new CardToro(
                  iconCardToro: Icons.place,
                  teksCardToro: "Place",
                  warnaCardToro: Colors.blue,
                ),
                new CardToro(
                  iconCardToro: Icons.settings,
                  teksCardToro: "Setting",
                  warnaCardToro: Colors.black,
                ),
              ]),
        ));
  }
}

class CardToro extends StatelessWidget {
  CardToro({this.iconCardToro, this.teksCardToro, this.warnaCardToro});

  final IconData iconCardToro;
  final String teksCardToro;
  final Color warnaCardToro;

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
            child: new Column(
          children: <Widget>[
           
              new Icon(
              iconCardToro,
              size: 50.0,
              color: warnaCardToro,
            ),
            
            new Text(
              teksCardToro,
              style: new TextStyle(fontSize: 20.0),
            )
          ],
        )
        )
        );
  }
}

