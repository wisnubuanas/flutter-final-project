import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        centerTitle: true,
        title: Text("Nigga Pay"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Coba pengalaman baru sekarang",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none),
                        // icon: Icon(Icons.notification_add),
                        filled: true,
                        fillColor: Colors.white),
                    // style: Colors.white,
                  ),
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      // appBar: AppBar(
      //   title: Text("Traveloka"),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.more_horiz),
      //     )
      //   ],
      // ),
      body: ListView(
        children: [
          Akun(),
          Divider(),
          MenuUtama(),
          // MenuTambahan(),
          Promosi(),
        ],
      ),
    );
  }
}

class Akun extends StatelessWidget {
  const Akun({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.green[900],
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //       color: Color(0xFFe8e8e8), blurRadius: 5, offset: Offset(0, 5)),
        // ],

        // Icon(Icons.qr_code_2),
      ),
      child: Row(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.monetization_on_outlined),
                        color: Colors.white,
                      ),
                      Text("Points",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Rp. 5.267",
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.payment_outlined),
                      color: Colors.white,
                    ),
                    Text("Paylater",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child:
                      Text("Aktifkan", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.local_play_outlined),
                      color: Colors.white,
                    ),
                    Text("Voucher",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text("99+", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "|",
              style: TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.qr_code_2),
                    color: Colors.white),
                // Icon(Icons)
                Text("Bayar", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuUtama extends StatelessWidget {
  const MenuUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      // padding: EdgeInsets.only(bottom: 3),
      children: menuUtamaItem,
    );
  }
}

List<MenuUtamaItem> menuUtamaItem = [
  MenuUtamaItem(
    title: 'Kartu \nKredit',
    icon: Icons.payment_rounded,
    colorBox: Colors.red,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Pulsa & \nData',
    icon: Icons.phone_android_outlined,
    colorBox: Colors.deepPurple,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Listrik',
    icon: Icons.electric_bolt_rounded,
    colorBox: Colors.yellow.shade900,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Air',
    icon: Icons.water_drop,
    colorBox: Colors.blue.shade900,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket \nKereta Api',
    icon: Icons.train,
    colorBox: Colors.orange.shade300,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket \nBus',
    icon: Icons.directions_bus,
    colorBox: Colors.green,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: "Transfer \nBank",
    icon: Icons.monetization_on_rounded,
    colorBox: Colors.green.shade900,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Lainnya',
    icon: Icons.menu_rounded,
    colorBox: Colors.grey.shade300,
    iconColor: Colors.black,
  ),
];

class MenuUtamaItem extends StatelessWidget {
  const MenuUtamaItem(
      {required this.title,
      required this.icon,
      required this.colorBox,
      required this.iconColor});
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            // padding: EdgeInsets.only(bottom: 10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(color: colorBox, shape: BoxShape.circle),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                // fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

class Promosi extends StatelessWidget {
  const Promosi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Promo Saat Ini',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22.0,
                color: Colors.white),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.green[900],
            ),
            onPressed: () {},
          ),
        ),
        Container(
          width: double.infinity,
          height: 150.0,
          padding: const EdgeInsets.only(
            left: 8.0,
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue,
                        Colors.blue.shade800,
                      ]),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                // padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(left: 8.0),
                height: 150.0,
                width: 100.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.elliptical(20.0, 20.0),
                                bottomRight: Radius.elliptical(150.0, 150.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 2.0, left: 5.0, right: 30.0, bottom: 30.0),
                          child: Text(
                            '%',
                            style:
                                TextStyle(fontSize: 24.0, color: Colors.white),
                          ),
                        )),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lihat Semua \nPromo',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18.0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue,
                          Colors.blue.shade800,
                        ]),
                    borderRadius: BorderRadius.circular(8.0),
                    image:
                        DecorationImage(image: AssetImage('images/promo.jpg'))),
                margin: EdgeInsets.only(left: 10.0),
                height: 150.0,
                width: 300.0,
                child: null,
              ),
            ],
          ),
        )
      ],
    );
  }
}
