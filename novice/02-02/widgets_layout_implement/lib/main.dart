import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Artic",
    home: new HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My App"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
//            new Text("Hey my name is Jaguar"),
//            new Text("Hey my name is Django"),
//            new Text("Hey my name is Dojo"),
            new MyCard(
              title: new Text("I love Flutter",
                  style: new TextStyle(fontSize: 20.0)),
              icon: new Icon(Icons.favorite),
            ),
            new MyCard(
              title: new Text("I love Donuts",
                  style: new TextStyle(fontSize: 20.0)),
              icon: new Icon(Icons.favorite),
            )
//            new MyCard(
//              title: new Text("I love Pizza",
//                  style: new TextStyle(fontSize: 20.0)),
//              icon: new Icon(Icons.favorite),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.only(bottom: 20.0),
        child: new Card(
            child: new Container(
                padding: new EdgeInsets.all(15.0),
                child: new Column(children: <Widget>[
                  new Text("I love Flutter"),
                  new Icon(Icons.favorite),
                  this.title,
                  this.icon
                ]))));
  }
}

//class x extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    //Scaffold provide functionaloty of appbar, body of app etc.
//    return new Scaffold(
//      backgroundColor: Colors.white,
//      appBar: new AppBar(
//        backgroundColor: Colors.yellowAccent,
//        leading: new Icon(
//            IconData(
//              59530,
//              fontFamily: 'MaterialIcons',
//            ),
//            color: Colors.black),
//        title: new Center(
//          child: new Text(
//            "Artic",
//            style: TextStyle(color: Colors.black),
//          ),
//        ),
//        actions: <Widget>[
//          new Icon(
//              IconData(
//                59574,
//                fontFamily: 'MaterialIcons',
//              ),
//              color: Colors.black)
//        ],
//      ),
//      body: new Container(
//        child: new Column(
//          children: <Widget>[
//            new Row(
//              children: <Widget>[
//                new Icon(IconData(57671, fontFamily: 'MaterialIcons'),
//                    size: 40.0, color: Colors.black),
//                new Icon(IconData(58430, fontFamily: 'MaterialIcons'),
//                    size: 40.0, color: Colors.black),
//                new Icon(
//                  IconData(57673, fontFamily: 'MaterialIcons'),
//                  size: 40.0,
//                  color: Colors.black,
//                ),
//              ],
//            ),
//            new Icon(IconData(58430, fontFamily: 'MaterialIcons'),
//                size: 40.0, color: Colors.black),
//            new Row(
//              children: <Widget>[
//                new Icon(
//                  IconData(57673, fontFamily: 'MaterialIcons'),
//                  size: 40.0,
//                  color: Colors.black,
//                ),
//                new Icon(
//                  IconData(58430, fontFamily: 'MaterialIcons'),
//                  size: 40.0,
//                  color: Colors.black,
//                ),
//                new MyCard(
//                  title: new Text("Ilove you",
//                      style: new TextStyle(fontSize: 20.0)),
//                  icon: new Icon(Icons.map, color: Colors.red),
//                ),
//              ],
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class MyCard extends StatelessWidget {
//  MyCard({this.title, this.icon});
//
//  final Widget title;
//  final Widget icon;
//
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//        child: new Card(
//            child: new Container(
//                child: new Column(children: <Widget>[
//      new Text("This is Artic App"),
//      new Icon(Icons.favorite),
//      this.title,
//      this.icon,
//    ]))));
//  }
//}
//
//////59485
////57673 58430 57671
