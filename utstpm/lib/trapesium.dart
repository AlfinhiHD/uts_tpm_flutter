import 'dart:math';
import 'package:flutter/material.dart';

class MenuTrapesium extends StatefulWidget {
  @override
  _MenuTrapesiumState createState() => _MenuTrapesiumState();
}

class _MenuTrapesiumState extends State<MenuTrapesium> {
  final sisiBawahController = TextEditingController();
  final sisiAtasController = TextEditingController();
  final sisiMiringController = TextEditingController();
  final tinggiController = TextEditingController();

  double luasTrapesium = 0.0;
  double kelilingTrapesium = 0.0;

  void _hitungLuasKeliling() {
    double sisiBawah = double.parse(sisiBawahController.text);
    double sisiAtas = double.parse(sisiAtasController.text);
    double sisiMiring = double.parse(sisiMiringController.text);
    double tinggi = double.parse(tinggiController.text);

    kelilingTrapesium = sisiBawah + sisiAtas + sisiMiring + tinggi;
    luasTrapesium = (sisiAtas + sisiBawah) * tinggi / 2;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Trapesium'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Hitung Luas dan Keliling Trapesium!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            TextField(
              controller: sisiAtasController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan panjang sisi atas',
              ),
            ),
            TextField(
              controller: sisiBawahController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan panjang sisi bawah',
              ),
            ),
            TextField(
              controller: sisiMiringController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan panjang sisi miring',
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
                    'Luas: $luasTrapesium',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Keliling: $kelilingTrapesium',
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