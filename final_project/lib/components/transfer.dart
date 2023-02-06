// import 'package:firebase_auth/firebase_auth.dart';
import 'package:final_project/components/my_button.dart';
import 'package:final_project/components/my_textfield.dart';
import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  Transfer({super.key});

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
          title: Text("Transfer"),
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
                        hintText: 'Rekening Tujuan',
                        obscureText: false,
                        textCapitalization: TextCapitalization.none,
                      ),

                      const SizedBox(height: 10),

                      MyTextField(
                        controller: null,
                        hintText: 'Nominal',
                        obscureText: false,
                        textCapitalization: TextCapitalization.none,
                      ),

                      const SizedBox(height: 10),
                      // MyTextField(
                      //   controller: null,
                      //   hintText: 'Password',
                      //   obscureText: true,
                      //   textCapitalization: TextCapitalization.none,
                      // ),

                      const SizedBox(height: 40),

                      // sign in button
                      MyButton(
                        text: "Kirim",
                        onTap: () {},
                      ),

                      const SizedBox(height: 50),
                    ]))))));
  }
}
