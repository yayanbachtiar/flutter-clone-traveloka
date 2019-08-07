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
            MenuUtama(),
            MenuTambahan(),
            PromoWidget()
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
          title: Text("Yayan Bachtiar",
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Row(
            children: <Widget>[
              RaisedButton.icon(
                icon: Icon(Icons.account_balance_wallet),
                label: Text("4.000"),
                onPressed: () {},
                color: Colors.grey[200],
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
              Padding(
                padding: EdgeInsets.all(2.0),
              ),
              RaisedButton(
                child: Text("Mama Pay"),
                onPressed: () {},
                color: Colors.grey[200],
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
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
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(color: colorBox, shape: BoxShape.circle),
          child: Icon(icon, color: colorIcon),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.0),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 12.0),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

class MenuTambahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: menuTambahan,
      ),
    );
  }
}

List<MenuTambahanItem> menuTambahan = [
  MenuTambahanItem(
    title: "Tagihan dan Isi Ulang",
    icons: Icons.pages,
  ),
  MenuTambahanItem(
    title: "Voucher",
    icons: Icons.dashboard,
  ),
  MenuTambahanItem(
    title: "Tagihan dan Isi Ulang",
    icons: Icons.data_usage,
  ),
  MenuTambahanItem(
    title: "Tagihan dan Isi Ulang",
    icons: Icons.payment,
  ),
  MenuTambahanItem(
    title: "Tagihan dan Isi Ulang",
    icons: Icons.assignment,
  ),
  MenuTambahanItem(
    title: "Tagihan dan Isi Ulang",
    icons: Icons.airline_seat_flat,
  ),
  MenuTambahanItem(
    title: "Tagihan dan Isi Ulang",
    icons: Icons.calendar_view_day,
  ),
  MenuTambahanItem(
    title: "Tagihan dan Isi Ulang",
    icons: Icons.favorite,
  ),
  MenuTambahanItem(
    title: "Tagihan dan Isi Ulang",
    icons: Icons.calendar_today,
  ),
];

class MenuTambahanItem extends StatelessWidget {
  MenuTambahanItem({this.icons, this.title});
  final IconData icons;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        children: <Widget>[
          Icon(icons),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.0),
          )
        ],
      ),
    );
  }
}

class PromoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text("Promo Saat ini",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0)),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            onPressed: () {},
          ),
        ),
        Container(
          width: double.infinity,
          height: 150.0,
          padding: EdgeInsets.only(left: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.blue, Colors.blue[800]]),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.elliptical(20.0, 20.0),
                              bottomRight: Radius.elliptical(150.0, 150.0))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 2.0, left: 5.0, right: 30.0, bottom: 30.0),
                        child: Text(
                          "%",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Lihat Semua Promo",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            Container(
          height: 150.0,
          width: 300.0,
          margin: EdgeInsets.only(left: 10.0),
          child: null,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://dummyimage.com/300x150/6678ed/fff.png&text=promo+01"))),
        ),
        Container(
          height: 150.0,
          width: 300.0,
          margin: EdgeInsets.only(left: 10.0),
          child: null,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://dummyimage.com/300x150/6678ed/fff.png&text=promo+02"))),
        )
            ],
          ),
        ),
      ],
    );
  }
}
