import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Pembayaran extends StatelessWidget {
  Pembayaran({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // actions: [
        //   IconButton(
        //     onPressed: signUserOut,
        //     icon: Icon(Icons.logout),
        //   )
        // ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
                // Icon(
                //   Icons.cancel_outlined,
                //   color: Colors.red,
                //   size: 50,
                // ),
                Text(
              "Anda sedang masuk dengan menggunakan akun : " + user.email!,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Fitur ini untuk sementara belum dapat digunakan",
            style: TextStyle(
                color: Colors.red, fontStyle: FontStyle.italic, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
