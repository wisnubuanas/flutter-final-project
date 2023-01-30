import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'beranda.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traveloka Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Traveloka'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _layoutPage = [
    Beranda(),
    // Explore(),
    // Pesanan(),
    // Simpan(),
    // Profil(),
  ];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Beranda"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: ("Riwayat"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_outlined),
            label: ("Pembayaran"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.percent_outlined),
            label: ("Promo"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ("Profile"),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   final user = FirebaseAuth.instance.currentUser!;

//   // sign user out method
//   void signUserOut() {
//     FirebaseAuth.instance.signOut();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       appBar: AppBar(
//         backgroundColor: Colors.grey[900],
//         actions: [
//           IconButton(
//             onPressed: signUserOut,
//             icon: Icon(Icons.logout),
//           )
//         ],
//       ),
//       body: Center(
//           child: Text(
//         "LOGGED IN AS: " + user.email!,
//         style: TextStyle(fontSize: 20),
//       )),
//     );
//   }
// }
