import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

User? userNow = FirebaseAuth.instance.currentUser;

class _TransferState extends State<Transfer> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final saldo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Transfer"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: users.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot data = snapshot.data!.docs[index];
                if (data.id == userNow!.uid) {
                  return Container();
                }
                return GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                    child: Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.deepPurpleAccent.shade700,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // CircleAvatar(
                            //     backgroundColor:
                            //         Color.fromARGB(255, 218, 217, 217),
                            //     radius: 40),
                            Text(
                              data["name"].toString().toUpperCase(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              data["noRek"].toString(),
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.grey.shade900)),
                          scrollable: true,
                          title: Column(
                            children: [
                              Text(
                                "Kirim ke",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                data["name"].toString().toUpperCase(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          // actionsAlignment: MainAxisAlignment.spaceBetween,
                          content: Padding(
                              padding: EdgeInsets.all(8),
                              child: Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        style: TextStyle(color: Colors.white),
                                        controller: saldo,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey.shade800,
                                            hintText: "Nominal",
                                            hintStyle: TextStyle(
                                                color: Colors.grey.shade900),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8))),
                                      ),
                                      // Align(
                                      //   alignment: Alignment.bottomRight,
                                      //   child: Text(
                                      //     "Rp. " +  data["saldo"].toString(),
                                      //     style: TextStyle(
                                      //         color: Colors.grey),
                                      //   ),
                                      // )
                                    ],
                                  ))),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.deepPurple)),
                                    child: Text("Kembali")),
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        users.doc(data.id).update({
                                          "saldo": FieldValue.increment(
                                              int.parse(saldo.text))
                                        });

                                        users.doc(userNow!.uid).update({
                                          "saldo": FieldValue.increment(
                                              -int.parse(saldo.text))
                                        });

                                        users
                                            .doc(userNow!.uid)
                                            .collection("History")
                                            .add({
                                          "noRek": userNow!.uid,
                                          "name": data["name"],
                                          "out": saldo.text,
                                          "time": DateTime.now(),
                                          "status": "transfer"
                                        });
                                      });

                                      Navigator.pop(context);
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
                                                  'Transfer Sukses',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            );
                                          });
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.deepPurple)),
                                    child: Text("Kirim")),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        );
                      },
                    );
                  },
                );
              },
            );
          } else {
            return Text("loading...");
          }
        },
      ),
    );
  }
}
