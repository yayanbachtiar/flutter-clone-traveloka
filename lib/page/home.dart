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
            Divider(),
            MenuUtama()
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

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: menuUtamaItem,
    );
  }
}
List<MenuUtamaItem> menuUtamaItem = [
  MenuUtamaItem(
    title: "Tiket Pesawat",
    colorBox: Colors.blue,
    icon: Icons.flight,
    colorIcon: Colors.white,
  ),
  MenuUtamaItem(
    title: "Tiket Kereta Api",
    colorBox: Colors.orange,
    icon: Icons.train,
    colorIcon: Colors.white,
  ),
  MenuUtamaItem(
    title: "Tiket Hotel",
    colorBox: Colors.blue,
    icon: Icons.hotel,
    colorIcon: Colors.white,
  ),
  MenuUtamaItem(
    title: "Tiket Pesawat dan hotel",
    colorBox: Colors.indigo,
    icon: Icons.local_hotel,
    colorIcon: Colors.white,
  ),
  MenuUtamaItem(
    title: "Pariwisata",
    colorBox: Colors.pink,
    icon: Icons.beach_access,
    colorIcon: Colors.white,
  ),
  MenuUtamaItem(
    title: "Kuliner",
    colorBox: Colors.yellow[800],
    icon: Icons.restaurant_menu,
    colorIcon: Colors.white,
  ),
  MenuUtamaItem(
    title: "Tiket Bus",
    colorBox: Colors.blue,
    icon: Icons.directions_bus,
    colorIcon: Colors.white,
  ),
  MenuUtamaItem(
    title: "Tiket taxi",
    colorBox: Colors.blue,
    icon: Icons.local_taxi,
    colorIcon: Colors.white,
  ),
  MenuUtamaItem(
    title: "Tiket Pesawat",
    colorBox: Colors.blue,
    icon: Icons.flight,
    colorIcon: Colors.white,
  ),
  MenuUtamaItem(
    title: "Tiket Pesawat",
    colorBox: Colors.blue,
    icon: Icons.flight,
    colorIcon: Colors.white,
  ),
];


class MenuUtamaItem extends StatelessWidget {
  MenuUtamaItem({this.title, this.icon, this.colorBox, this.colorIcon});
  final String title;
  final IconData icon;
  final Color colorBox, colorIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 2.0),
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            color: colorBox,
            shape: BoxShape.circle
          ),
          child: Icon(icon, color: colorIcon),
        ),
        Text(title, style: TextStyle(fontSize: 10.0), textAlign: TextAlign.center,)
      ],
    );
  }
}