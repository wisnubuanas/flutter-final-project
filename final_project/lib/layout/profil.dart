import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Traveloka"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.70,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Beragam pilihan nikmatin hidup",
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
                  Icons.email_outlined,
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
        // title: Text("Traveloka"),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.more_horiz),
        //   ),
        // ],
      ),
      body: Container(
        color: Color.fromARGB(255, 216, 216, 216),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5,
                      offset: Offset(0, 5))
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 218, 217, 217),
                            radius: 30),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Text('Rei Ayanami',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3, top: 5),
                            child: Text(
                              '+62814848484848',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(top: 5),
                          //   child: Text(
                          //     '300 Point',
                          //     style: TextStyle(fontSize: 10),
                          //   ),
                          // ),
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 30,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 4, 76, 135),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Lihat Profil Saya"),
                            style: TextButton.styleFrom(primary: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
