// import 'package:firebase_auth/firebase_auth.dart';
import 'package:final_project/components/my_button.dart';
import 'package:final_project/components/my_textfield.dart';
import 'package:flutter/material.dart';

class TopUp extends StatelessWidget {
  TopUp({super.key});

  // final user = FirebaseAuth.instance.currentUser!;

  // // sign user out method
  // void signUserOut() {
  //   FirebaseAuth.instance.signOut();
  // }

  @override
  Widget build(BuildContext context) {
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

                      MyTextField(
                        controller: null,
                        hintText: 'Metode Pembayaran ',
                        obscureText: false,
                      ),

                      const SizedBox(height: 10),

                      MyTextField(
                        controller: null,
                        hintText: ' Nominal',
                        obscureText: false,
                      ),

                      const SizedBox(height: 10),
                      MyTextField(
                        controller: null,
                        hintText: 'Password',
                        obscureText: true,
                      ),

                      const SizedBox(height: 40),

                      // sign in button
                      MyButton(
                        text: "Isi Saldo",
                        onTap: () {},
                      ),

                      const SizedBox(height: 50),
                    ]))))));
  }
}