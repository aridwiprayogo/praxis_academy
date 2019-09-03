# Widget & Layout Intro..

## Stateless Widget

Stateless Widget ==> No internal state to manage, or no direct user interaction(Text, RaisedButton, IconButton, etc).
Overrides the build() and returns a widget.

```dart
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
  }
}
``` 

### Scaffold
Scaffold provide functionality of appbar, body of app etc.

```dart
return new Scaffold(
        appBar: new AppBar(title: new Text("Stateless Widget")),
        body: new Container(
            //adding padding around card
            padding: new EdgeInsets.all(20.0),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // new Text("Hey"),
                  // new Text("My name"),
                  // new Text("Is Raunak")

                  new MyCard(
                      title: new Text("I love Flutter",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.favorite,
                          size: 40.0, color: Colors.redAccent)),
                  new MyCard(
                      title: new Text("I love Donuts",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.donut_large,
                          size: 40.0, color: Colors.brown)),
                  new MyCard(
                      title: new Text("I see you",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.visibility,
                          size: 40.0, color: Colors.blue))
                ])));
```

### Container

The Container widget lets you create a rectangular visual element. A container can be decorated with a BoxDecoration, such as a background, a border, or a shadow. A Container can also have margins, padding, and constraints applied to its size. In addition, a Container can be transformed in three dimensional space using a matrix.

```dart
 body: new Container(
            //adding padding around card
            padding: new EdgeInsets.all(20.0),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // new Text("Hey"),
                  // new Text("My name"),
                  // new Text("Is Raunak")

                  new MyCard(
                      title: new Text("I love Flutter",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.favorite,
                          size: 40.0, color: Colors.redAccent)),
                  new MyCard(
                      title: new Text("I love Donuts",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.donut_large,
                          size: 40.0, color: Colors.brown)),
                  new MyCard(
                      title: new Text("I see you",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.visibility,
                          size: 40.0, color: Colors.blue))
                ]))
```

### Column

The Column widget does not scroll (and in general it is considered an error to have more children in a Column than will fit in the available room).
The Column here arrange three widgets vertically (3 card).

```dart
child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // new Text("Hey"),
                  // new Text("My name"),
                  // new Text("Is Raunak")

                  new MyCard(
                      title: new Text("I love Flutter",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.favorite,
                          size: 40.0, color: Colors.redAccent)),
                  new MyCard(
                      title: new Text("I love Donuts",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.donut_large,
                          size: 40.0, color: Colors.brown)),
                  new MyCard(
                      title: new Text("I see you",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.visibility,
                          size: 40.0, color: Colors.blue))
                ])
```

### Class MyCard

This class is extended from StatlessWidget. There is a variable ``final Widget title;`` and ``final Widget icon;`` that used. This class also has a container to set the padding. 


```dart
class MyCard extends StatelessWidget {
  //adding constructor
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context){
    return new Container(
      //adding bottom padding on card
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
        child: new Container(
          //adding padding inside card
          padding: new EdgeInsets.all(15.0),
          child: new Column(
          children: <Widget>[
              // new Text("I love Flutter"),
              // new Icon(Icons.favorite)

              this.title,
              this.icon
            ]
          )
        )
        
      )
    );
  }
}
```

Here is the [source code](https://github.com/kmalmaulana/PraxisAcademy/blob/master/novice/02-02/stateless_widget/lib/main.dart)

How it look :

<img src="images/stateless_widgets.png" width="260">


