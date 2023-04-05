import 'package:flutter/material.dart';
import 'package:utstpm/login_screen.dart';
import 'package:utstpm/main.dart';
import 'trapesium.dart';
import 'tabung.dart';
import 'datadiri.dart';

class SubMenu extends StatefulWidget {
  @override
  State createState() => new SubMenuState();
}

class SubMenuState extends State<SubMenu> {
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
              'Sub Menu Bangun Datar',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                child: Text('Hitung Trapesium'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MenuTrapesium()));
                },
              ),
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                child: Text('Hitung Tabung'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MenuTabung()));
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
                child: Text('Kembali ke main menu'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}