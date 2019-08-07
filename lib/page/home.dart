import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Traveloka Clone"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Profile(),
            Divider()
            ],
        ));
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListTile(
          leading: Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://avatarfiles.alphacoders.com/194/194610.jpg"))),
          ),
          title: Text("Yayan Bachtiar", style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Row(
            children: <Widget>[
              RaisedButton.icon(
                icon: Icon(Icons.account_balance_wallet),
                label: Text("4.000"),
                onPressed: (){},
                color: Colors.grey[200],
                elevation: 0.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
              ),
              Padding(padding: EdgeInsets.all(2.0),),
              RaisedButton(
                child: Text("Mama Pay"),
                onPressed: (){},
                color: Colors.grey[200],
                elevation: 0.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
              )
            ],
          ),
        ));
  }
}
