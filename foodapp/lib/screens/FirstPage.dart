import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       // appBar: new AppBar(title: new Text("Stateless Widget")),
        body: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new MyCard(
                      title: new Text("Lunch",
                          style: new TextStyle(
                              fontSize: 25.0
                          )
                      ),
                      icon: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent)
                  ),
                  new MyCard(
                      title: new Text("Snacks Here",
                          style: new TextStyle(
                              fontSize: 25.0
                          )
                      ),
                      icon: new Icon(Icons.donut_large, size: 40.0, color: Colors.brown)
                  ),
                  new MyCard(
                      title: new Text("Drinks",
                          style: new TextStyle(
                              fontSize: 25.0
                          )
                      ),
                      icon: new Icon(Icons.visibility, size: 40.0, color: Colors.blue)
                  ),new MyCard(
                      title: new Text("Coffee",
                          style: new TextStyle(
                              fontSize: 25.0
                          )
                      ),
                      icon: new Icon(Icons.visibility, size: 40.0, color: Colors.blue)
                  ),

                ]
            )
        )
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
                padding: new EdgeInsets.all(10.0),
                child: new Column(
                    children: <Widget>[
                      this.title,
                      this.icon
                    ]
                )
            )
        )
    );
  }
}

