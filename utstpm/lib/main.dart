import 'package:flutter/material.dart';
import 'package:utstpm/kalender.dart';
import 'package:utstpm/login_screen.dart';
import 'package:utstpm/submenu.dart';
import 'trapesium.dart';
import 'tabung.dart';
import 'datadiri.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS - TPM - 123200142',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/menu1': (context) => MenuDataDiri(),
        '/menu2': (context) => SubMenu(),
        '/menu3': (context) => Calendar(),
        '/menu4': (context) => LoginScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UTS - TPM - 123200142'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Main Menu',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                child: Text('Data Diri'),
                onPressed: () {
                  Navigator.pushNamed(context, '/menu1');
                },
              ),
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                child: Text('Hitung Bangun Datar'),
                onPressed: () {
                  Navigator.pushNamed(context, '/menu2');
                },
              ),
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                child: Text('Kalendar'),
                onPressed: () {
                  Navigator.pushNamed(context, '/menu3');
                },
              ),
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  onPrimary: Colors.white,
                ),
                child: Text('Logout'),
                onPressed: () {
                  Navigator.pushNamed(context, '/menu4');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}