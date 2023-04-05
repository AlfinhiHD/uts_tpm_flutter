import 'package:flutter/material.dart';
import 'dart:math' as math;

class MenuTabung extends StatefulWidget {
  @override
  _MenuTabungState createState() => _MenuTabungState();
}

class _MenuTabungState extends State<MenuTabung> {
  final jariController = TextEditingController();
  final tinggiController = TextEditingController();


  double luasTabung = 0.0;
  double kelilingTabung = 0.0;

  void _hitungLuasKeliling() {
    double jari = double.parse(jariController.text);
    double tinggi = double.parse(tinggiController.text);


    luasTabung = 2 * math.pi * jari * (jari + tinggi);
    kelilingTabung = 2 * math.pi * jari;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Tabung'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Hitung Luas dan Keliling Tabung!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            TextField(
              controller: jariController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan panjang jari-jari',
              ),
            ),
            TextField(
              controller: tinggiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan tinggi',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _hitungLuasKeliling,
              child: Text('Hitung'),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Luas: $luasTabung',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Keliling: $kelilingTabung',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}