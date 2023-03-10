import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Profil extends StatelessWidget {
  Profil({super.key});

  User? user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(" Akun Saya"),
      ),
      body: SingleChildScrollView(
        child: StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance
                .collection("users")
                .doc(user!.uid)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  child: Column(
                    // color: Colors.deepPurple,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(10),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Color(0xFFe8e8e8),
                          //       blurRadius: 5,
                          //       offset: Offset(0, 5))
                          // ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30, top: 30),
                                  child: CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(255, 218, 217, 217),
                                      radius: 40),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 35),
                                      child: Text(
                                          snapshot.data!['name']
                                              .toString()
                                              .toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white,
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 60, top: 5),
                                      child: Text(
                                        snapshot.data!['noRek'].toString(),
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
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
                            // Center(
                            //   child: Padding(
                            //     padding: const EdgeInsets.only(top: 20),
                            //     child: Container(
                            //       height: 30,
                            //       width: 350,
                            //       decoration: BoxDecoration(
                            //         color: Color.fromARGB(255, 4, 76, 135),
                            //         borderRadius: BorderRadius.circular(5),
                            //       ),
                            //       child: Center(
                            //         child: TextButton(
                            //           onPressed: () {},
                            //           child: Text("Lihat Profil Saya"),
                            //           style: TextButton.styleFrom(primary: Colors.white),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pengaturan Profil",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Icon(Icons.keyboard_arrow_right_outlined)
                              ],
                            ),
                          ),
                          style: TextButton.styleFrom(primary: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 55,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pengaturan Aplikasi",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Icon(Icons.keyboard_arrow_right_outlined)
                              ],
                            ),
                          ),
                          style: TextButton.styleFrom(primary: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 55,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pusat Bantuan",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Icon(Icons.keyboard_arrow_right_outlined)
                              ],
                            ),
                          ),
                          style: TextButton.styleFrom(primary: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 55,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Syarat & Ketentuan",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Icon(Icons.keyboard_arrow_right_outlined)
                              ],
                            ),
                          ),
                          style: TextButton.styleFrom(primary: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 55,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Kebijakan Privasi",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Icon(Icons.keyboard_arrow_right_outlined)
                              ],
                            ),
                          ),
                          style: TextButton.styleFrom(primary: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        height: 30,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: signUserOut,
                              child: Text("Keluar"),
                              style:
                                  TextButton.styleFrom(primary: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return Text("loading...");
              }
            }),
      ),
    );
  }
}
