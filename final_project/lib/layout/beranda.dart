import 'package:final_project/components/more_apps.dart';
import 'package:final_project/components/topup.dart';
import 'package:final_project/components/transfer.dart';
import 'package:final_project/layout/promo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Beranda extends StatelessWidget {
  Beranda({super.key});

  User? user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.notifications),
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
        child: StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance
                .collection("users")
                .doc(user!.uid)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                    child: Column(children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.signal_cellular_4_bar,
                                size: 24,
                              ),
                              Text(
                                "NogiPay",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Saldo",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                // SizedBox(
                                //   height: 3,
                                // ),
                                Row(
                                  children: [
                                    Text(
                                      "Rp. ",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    Text(
                                      snapshot.data!['saldo'].toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 60),
                                Text(
                                  snapshot.data!['noRek'].toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  snapshot.data!['name']
                                      .toString()
                                      .toUpperCase(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(height: 20),
                          // Text(
                          //   "Rp. 1273970",
                          //   style: TextStyle(fontWeight: FontWeight.bold),
                          // )
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 130,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Transfer()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Icon(
                                    Icons.compare_arrows,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                // Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    "Transfer",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 100,
                          width: 130,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TopUp()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                // Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    "Isi Saldo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 100,
                          width: 130,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MoreApps()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Icon(
                                    Icons.more_horiz_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                // Spacer(),
                                // SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    "Lainnya",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Promo saat ini',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.white),
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.deepPurple,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Promo()));
                            },
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
                              image: DecorationImage(
                                  image: AssetImage(
                                    'images/promo-3.jpg',
                                  ),
                                  fit: BoxFit.cover)),
                          // margin: EdgeInsets.only(bottom: 5.0),
                          height: 150.0,
                          width: 400.0,
                          child: null,
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ]));
              } else {
                return Text("loading...");
              }
            }),
      ),
    );
  }
}
