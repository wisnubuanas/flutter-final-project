import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  Beranda({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[900],
      //   actions: [
      //     IconButton(
      //       onPressed: signUserOut,
      //       icon: Icon(Icons.logout),
      //     )
      //   ],
      // ),
      body: Container(
        child: Column(
          // color: Colors.deepPurple,
          children: [
            // Container(
            //   margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            //   height: 30,
            //   width: 400,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.green.shade900,
            //       borderRadius: BorderRadius.circular(5),
            //     ),
            //     child: Center(
            //       child: TextButton(
            //         onPressed: signUserOut,
            //         child: Text("Keluar"),
            //         style: TextButton.styleFrom(primary: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),

            SizedBox(
              height: 50,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "NiggaPay",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.discord,
                          size: 24,
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "Nama User",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("2819 **** **** **** 8010"),
                    // SizedBox(5),
                    Text(
                      "Rp. 1273970",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
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
                        print("transfer");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Icon(
                              Icons.call_made,
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
                        print("bayar");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Icon(
                              Icons.qr_code_scanner_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          // Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text(
                              "Bayar",
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
                        print("top up");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Icon(
                              Icons.add_circle_outline,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          // Spacer(),
                          // SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text(
                              "Top Up",
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
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Beranda extends StatefulWidget {
//   const Beranda({super.key});

//   @override
//   State<Beranda> createState() => _BerandaState();
// }

// class _BerandaState extends State<Beranda> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.green[900],
//         centerTitle: true,
//         title: Text("Nigga Pay"),
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(50),
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.8,
//                   child: TextField(
//                     decoration: InputDecoration(
//                         hintText: "Coba pengalaman baru sekarang",
//                         prefixIcon: Icon(Icons.search),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(5),
//                             borderSide: BorderSide.none),
//                         // icon: Icon(Icons.notification_add),
//                         filled: true,
//                         fillColor: Colors.white),
//                     // style: Colors.white,
//                   ),
//                 ),
//                 Icon(
//                   Icons.notifications,
//                   color: Colors.white,
//                 ),
//                 Icon(
//                   Icons.settings,
//                   color: Colors.white,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       // appBar: AppBar(
//       //   title: Text("Traveloka"),
//       //   actions: [
//       //     IconButton(
//       //       onPressed: () {},
//       //       icon: Icon(Icons.more_horiz),
//       //     )
//       //   ],
//       // ),
//       body: ListView(
//         children: [
//           Akun(),
//           Divider(),
//           MenuUtama(),
//           // MenuTambahan(),
//           Promosi(),
//         ],
//       ),
//     );
//   }
// }

// class Akun extends StatelessWidget {
//   const Akun({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//       height: 70,
//       decoration: BoxDecoration(
//         color: Colors.green[900],
//         borderRadius: BorderRadius.circular(10),
//         // boxShadow: [
//         //   BoxShadow(
//         //       color: Color(0xFFe8e8e8), blurRadius: 5, offset: Offset(0, 5)),
//         // ],

//         // Icon(Icons.qr_code_2),
//       ),
//       child: Row(
//         children: [
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 5, left: 5),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(Icons.monetization_on_outlined),
//                         color: Colors.white,
//                       ),
//                       Text("Points",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold)),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10),
//                     child: Text("Rp. 5.267",
//                         style: TextStyle(color: Colors.white)),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 5, left: 20),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.payment_outlined),
//                       color: Colors.white,
//                     ),
//                     Text("Paylater",
//                         style: TextStyle(
//                             color: Colors.white, fontWeight: FontWeight.bold)),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child:
//                       Text("Aktifkan", style: TextStyle(color: Colors.white)),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 5, left: 20),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.local_play_outlined),
//                       color: Colors.white,
//                     ),
//                     Text("Voucher",
//                         style: TextStyle(
//                             color: Colors.white, fontWeight: FontWeight.bold)),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 40),
//                   child: Text("99+", style: TextStyle(color: Colors.white)),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 30),
//             child: Text(
//               "|",
//               style: TextStyle(
//                   color: Colors.white,
//                   // fontWeight: FontWeight.bold,
//                   fontsize: 30),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 10, top: 5),
//             child: Column(
//               children: [
//                 IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.qr_code_2),
//                     color: Colors.white),
//                 // Icon(Icons)
//                 Text("Bayar", style: TextStyle(color: Colors.white)),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MenuUtama extends StatelessWidget {
//   const MenuUtama({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       shrinkWrap: true,
//       crossAxisCount: 4,
//       // padding: EdgeInsets.only(bottom: 3),
//       children: menuUtamaItem,
//     );
//   }
// }

// List<MenuUtamaItem> menuUtamaItem = [
//   MenuUtamaItem(
//     title: 'Kartu \nKredit',
//     icon: Icons.payment_rounded,
//     colorBox: Colors.red,
//     iconColor: Colors.white,
//   ),
//   MenuUtamaItem(
//     title: 'Pulsa & \nData',
//     icon: Icons.phone_android_outlined,
//     colorBox: Colors.deepPurple,
//     iconColor: Colors.white,
//   ),
//   MenuUtamaItem(
//     title: 'Listrik',
//     icon: Icons.electric_bolt_rounded,
//     colorBox: Colors.yellow.shade900,
//     iconColor: Colors.white,
//   ),
//   MenuUtamaItem(
//     title: 'Air',
//     icon: Icons.water_drop,
//     colorBox: Colors.blue.shade900,
//     iconColor: Colors.white,
//   ),
//   MenuUtamaItem(
//     title: 'Tiket \nKereta Api',
//     icon: Icons.train,
//     colorBox: Colors.orange.shade300,
//     iconColor: Colors.white,
//   ),
//   MenuUtamaItem(
//     title: 'Tiket \nBus',
//     icon: Icons.directions_bus,
//     colorBox: Colors.green,
//     iconColor: Colors.white,
//   ),
//   MenuUtamaItem(
//     title: "Transfer \nBank",
//     icon: Icons.monetization_on_rounded,
//     colorBox: Colors.green.shade900,
//     iconColor: Colors.white,
//   ),
//   MenuUtamaItem(
//     title: 'Lainnya',
//     icon: Icons.apps,
//     colorBox: Colors.grey.shade300,
//     iconColor: Colors.black,
//   ),
// ];

// class MenuUtamaItem extends StatelessWidget {
//   const MenuUtamaItem(
//       {required this.title,
//       required this.icon,
//       required this.colorBox,
//       required this.iconColor});
//   final String title;
//   final IconData icon;
//   final Color colorBox, iconColor;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Column(
//         children: [
//           Container(
//             // padding: EdgeInsets.only(bottom: 10),
//             height: 50,
//             width: 50,
//             decoration: BoxDecoration(color: colorBox, shape: BoxShape.circle),
//             child: Icon(
//               icon,
//               color: iconColor,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 10.0),
//             child: Text(
//               title,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.white,
//                 // fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class Promosi extends StatelessWidget {
//   const Promosi({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         ListTile(
//           title: Text(
//             'Promo Saat Ini',
//             style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 22.0,
//                 color: Colors.white),
//           ),
//           trailing: IconButton(
//             icon: Icon(
//               Icons.keyboard_arrow_right,
//               color: Colors.green[900],
//             ),
//             onPressed: () {},
//           ),
//         ),
//         Container(
//           width: double.infinity,
//           height: 150.0,
//           padding: const EdgeInsets.only(
//             left: 8.0,
//           ),
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: <Widget>[
//               Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                         Colors.blue,
//                         Colors.blue.shade800,
//                       ]),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 // padding: EdgeInsets.all(8.0),
//                 margin: EdgeInsets.only(left: 8.0),
//                 height: 150.0,
//                 width: 100.0,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Container(
//                         decoration: BoxDecoration(
//                             color: Colors.pink,
//                             borderRadius: BorderRadius.only(
//                                 topLeft: Radius.elliptical(20.0, 20.0),
//                                 bottomRight: Radius.elliptical(150.0, 150.0))),
//                         child: Padding(
//                           padding: const EdgeInsets.only(
//                               top: 2.0, left: 5.0, right: 30.0, bottom: 30.0),
//                           child: Text(
//                             '%',
//                             style:
//                                 TextStyle(fontSize: 24.0, color: Colors.white),
//                           ),
//                         )),
//                     Expanded(
//                       child: Container(),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         'Lihat Semua \nPromo',
//                         style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             color: Colors.white,
//                             fontSize: 18.0),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.blue,
//                           Colors.blue.shade800,
//                         ]),
//                     borderRadius: BorderRadius.circular(8.0),
//                     image:
//                         DecorationImage(image: AssetImage('images/promo.jpg'))),
//                 margin: EdgeInsets.only(left: 10.0),
//                 height: 150.0,
//                 width: 300.0,
//                 child: null,
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
