import 'package:flutter/material.dart';
import 'screens/FirstPage.dart' as first;
import 'screens/SecondPage.dart' as second;
import 'screens/ThirdPage.dart' as third;
import 'screens/FourthPage.dart'as fourth;

void main() {
  runApp(new MaterialApp(
      home: new MyTabs()
  ));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {


  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("This is App Bar",style: new TextStyle(color: Colors.white),),backgroundColor: Colors.orange,),
        drawer: new Drawer(child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountEmail: new Text("youremail@gmail.com"),
                accountName:  new Text("Your Name"),
                currentAccountPicture: new GestureDetector(
                  onTap:()=> print("hello"),
                  child: new CircleAvatar(

                    backgroundImage: new NetworkImage("https://t3.ftcdn.net/jpg/01/18/06/32/240_F_118063283_FD6CvzN1v1LFEMupsqEfuOkPbfjuO0CU.jpg"),
                  ),
                ),
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage("http://www.kahnscatering.com/wp-content/uploads/2013/12/kahns-catering-food-entree-9-jessicastrickland-600x400.jpg"))
                ),
              ),
              new ListTile(
                title:new Text("first page"),
                trailing:new Icon(Icons.arrow_upward),
                //onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>nextpage(new second.Second()))),
              ),
              new ListTile(
                title:new Text("second page"),
                trailing: new Icon(Icons.add_circle_outline),
              )
            ],
          ),
        ),

      bottomNavigationBar: new Material(
        color: Colors.orange,
        child: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.fastfood,color: Colors.white)),
            new Tab(icon: new Icon(Icons.favorite,color: Colors.white)),
            new Tab(icon: new Icon(Icons.local_offer,color: Colors.white)),
            new Tab(icon: new Icon(Icons.account_box,color: Colors.white)),
          ]
        )
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new first.First(),
          new second.Second(),
          new third.Third(),
          new fourth.Fourth()
        ]
      )
    );
  }
}

