import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HistoryTransfer extends StatelessWidget {
  const HistoryTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    CollectionReference history =
        FirebaseFirestore.instance.collection("users/${user!.uid}/History");
    return SafeArea(
      child: StreamBuilder<QuerySnapshot>(
        stream: history.snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
                child: Text(
              "Anda belum melakukan transaksi",
              style: TextStyle(
                  color: Colors.red, fontStyle: FontStyle.italic, fontSize: 16),
            ));
          }
          if (snapshot.hasData) {
            return Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot data = snapshot.data!.docs[index];

                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8),
                      child: Card(
                        color: Colors.grey.shade900,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // if (data['status'] == 'transfer') ...[
                            // CircleAvatar(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                      (data['status'] == 'topup')
                                          ? 'Isi saldo'
                                          : 'Transfer ke',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white)),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                        data["name"].toString().toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                (data['status'] == 'topup')
                                    ? '+ ${data["out"]}'
                                    : '- ${data["out"]}',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: (data['status'] == 'topup')
                                        ? Colors.green
                                        : Colors.red),
                              ),
                            )
                          ],

                          //wwwwww
                        ),
                      ),
                    ),
                    onTap: () {
                      // showDialog(
                      //   context: context,
                      //   builder: (BuildContext context) {
                      //     return AlertDialog(
                      //       scrollable: true,
                      //       title: Center(
                      //           child: Text(
                      //         "Transaction Details",
                      //         style: TextStyle(fontSize: 20),
                      //       )),
                      //     );
                      //   },
                      // );
                    },
                  );
                },
              ),
            );
          } else {
            return Center(
              child: Text("Anda belum melakukan transaksi"),
            );
          }
        },
      ),
    );
  }
}
