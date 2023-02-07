import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/history.dart';

class Riwayat extends StatelessWidget {
  Riwayat({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Riwayat Transaksi"),
        // actions: [
        //   IconButton(
        //     onPressed: signUserOut,
        //     icon: Icon(Icons.logout),
        //   )
        // ],
      ),

      // body: Container(
      //   child: Padding(
      //     padding: const EdgeInsets.all(15.0),
      //     child: Center(
      //       child: Column(
      //         // mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Container(
      //             // color: Colors.white,
      //             height: 50,
      //             width: 400,
      //             decoration: BoxDecoration(
      //                 border: Border.all(color: Colors.green),
      //                 borderRadius: BorderRadius.circular(8),
      //                 color: Colors.grey[900]),
      //             child: Padding(
      //               padding: const EdgeInsets.only(top: 10, left: 250),
      //               child: Text(
      //                 "+ Rp. 900000",
      //                 style: TextStyle(
      //                     color: Colors.green,
      //                     fontSize: 24,
      //                     fontWeight: FontWeight.bold),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           Container(
      //             // color: Colors.white,
      //             height: 50,
      //             width: 400,
      //             decoration: BoxDecoration(
      //                 border: Border.all(color: Colors.red),
      //                 color: Colors.grey[900],
      //                 borderRadius: BorderRadius.circular(10)),
      //             child: Row(
      //               // mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 10, left: 250),
      //                   child: Text(
      //                     "- Rp. 900000",
      //                     style: TextStyle(
      //                         color: Colors.red,
      //                         fontSize: 24,
      //                         fontWeight: FontWeight.bold),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      // body: Container(
      //   child: Column(
      //     // color: Colors.deepPurple,
      //     children: [
      //       Container(
      //         margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      //         height: 30,
      //         width: 400,
      //         decoration: BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: BorderRadius.circular(10),
      //         ),
      //         child: Container(
      //           decoration: BoxDecoration(
      //             color: Colors.deepPurple,
      //             borderRadius: BorderRadius.circular(5),
      //           ),
      //           child: Center(
      //             child: TextButton(
      //               onPressed: signUserOut,
      //               child: Text("Keluar"),
      //               style: TextButton.styleFrom(primary: Colors.white),
      //             ),
      //           ),
      //         ),
      //       ),
      //       Container(
      //         margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      //         height: 150,
      //         decoration: BoxDecoration(
      //           color: Colors.grey[900],
      //           borderRadius: BorderRadius.circular(10),
      //           // boxShadow: [
      //           //   BoxShadow(
      //           //       color: Color(0xFFe8e8e8),
      //           //       blurRadius: 5,
      //           //       offset: Offset(0, 5))
      //           // ],
      //         ),
      //         child: Column(
      //           children: [
      //             Row(
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 30, top: 20),
      //                   child: CircleAvatar(
      //                       backgroundColor: Color.fromARGB(255, 218, 217, 217),
      //                       radius: 30),
      //                 ),
      //                 Column(
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.only(left: 10, top: 20),
      //                       child: Text('Nama User',
      //                           style: TextStyle(
      //                             fontWeight: FontWeight.bold,
      //                             fontSize: 20,
      //                             color: Colors.white,
      //                           )),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.only(left: 3, top: 5),
      //                       child: Text(
      //                         '********* Norek',
      //                         style:
      //                             TextStyle(fontSize: 12, color: Colors.grey),
      //                       ),
      //                     ),
      //                     // Padding(
      //                     //   padding: const EdgeInsets.only(top: 5),
      //                     //   child: Text(
      //                     //     '300 Point',
      //                     //     style: TextStyle(fontSize: 10),
      //                     //   ),
      //                     // ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //             // Center(
      //             //   child: Padding(
      //             //     padding: const EdgeInsets.only(top: 20),
      //             //     child: Container(
      //             //       height: 30,
      //             //       width: 350,
      //             //       decoration: BoxDecoration(
      //             //         color: Color.fromARGB(255, 4, 76, 135),
      //             //         borderRadius: BorderRadius.circular(5),
      //             //       ),
      //             //       child: Center(
      //             //         child: TextButton(
      //             //           onPressed: () {},
      //             //           child: Text("Lihat Profil Saya"),
      //             //           style: TextButton.styleFrom(primary: Colors.white),
      //             //         ),
      //             //       ),
      //             //     ),
      //             //   ),
      //             // ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: HistoryTransfer(),
    );
  }
}
