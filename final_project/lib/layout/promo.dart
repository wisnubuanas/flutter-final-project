import 'package:flutter/material.dart';

class Promo extends StatefulWidget {
  const Promo({Key? key}) : super(key: key);

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  // show the password or not
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Promo'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                            image: AssetImage('images/promo-4.jpg'),
                            fit: BoxFit.cover)),
                    margin: EdgeInsets.all(5.0),
                    height: 150.0,
                    width: 400.0,
                    child: null,
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
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
                            image: AssetImage('images/promo-3.jpg'),
                            fit: BoxFit.cover)),
                    margin: EdgeInsets.all(5.0),
                    height: 150.0,
                    width: 400.0,
                    child: null,
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
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
                              'images/promo-1.jpg',
                            ),
                            fit: BoxFit.cover)),
                    margin: EdgeInsets.all(5.0),
                    height: 150.0,
                    width: 400.0,
                    child: null,
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
                              'images/promo-2.jpg',
                            ),
                            fit: BoxFit.cover)),
                    margin: EdgeInsets.all(5.0),
                    height: 150.0,
                    width: 400.0,
                    child: null,
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
                    margin: EdgeInsets.all(5.0),
                    height: 150.0,
                    width: 400.0,
                    child: null,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // Container(
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
    );
  }
}
