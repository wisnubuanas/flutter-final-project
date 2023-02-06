import 'package:final_project/components/my_button.dart';
import 'package:final_project/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import '';

class TopUp extends StatefulWidget {
  TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  User? user = FirebaseAuth.instance.currentUser!;

  // final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    final saldo = TextEditingController();
    // final passwordController = TextEditingController();
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');

    // wrong email message popup
    void IsiSukses() {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            backgroundColor: Colors.green,
            title: Center(
              child: Text(
                'Isi Saldo Berhasil',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Isi Saldo"),
        ),
        body: Center(
            child: SingleChildScrollView(
                padding: EdgeInsets.all(10),
                child: SafeArea(
                    child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      const SizedBox(height: 50),
                      // MyTextField(
                      //   controller: null,
                      //   hintText: 'Metode Pembayaran ',
                      //   obscureText: false,
                      //   textCapitalization: TextCapitalization.none,
                      // ),
                      const SizedBox(height: 10),
                      MyTextField(
                        controller: saldo,
                        hintText: ' Nominal',
                        obscureText: false,
                        textCapitalization: TextCapitalization.none,
                      ),
                      const SizedBox(height: 10),
                      // MyTextField(
                      //   controller: passwordController,
                      //   hintText: 'Password',
                      //   obscureText: true,
                      //   textCapitalization: TextCapitalization.none,
                      // ),
                      const SizedBox(height: 40),
                      MyButton(
                        text: "Isi Saldo",
                        onTap: () {
                          // showDialog(
                          //     context: context,
                          //     builder: (BuildContext context) {
                          //       return AlertDialog(
                          //         actions: [
                          //           ElevatedButton(
                          //               onPressed: () {
                          setState(() {
                            users.doc(user!.uid).update({
                              "saldo":
                                  FieldValue.increment(int.parse(saldo.text))
                            });
                          });
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  icon: Icon(
                                    Icons.check_circle_outline,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  backgroundColor: Colors.green,
                                  title: Center(
                                    child: Text(
                                      'Saldo Anda \nBerhasil Terisi',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                );
                              });
                          //               },
                          //               child: Text("Isi Saldo"))
                          //         ],
                          //       );
                          //     });
                        },
                      ),
                      const SizedBox(height: 50),
                    ]))))));
  }
}
