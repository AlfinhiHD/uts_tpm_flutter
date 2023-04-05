import 'package:flutter/material.dart';

class MenuDataDiriDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Data Diri'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Data Diri Saya',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images.jpg"),
            ),
            SizedBox(height: 16),
            Text(
              'Alfinhi Hajid Dhia',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '123200142',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              'IF-D',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              'Tempat : Banjarnegara',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              'Tanggal Lahir : 14 September 2002',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              'Cita-Cita : Tarawih 1 bulan penuh',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              'Hobi saat ini : Mengerjakan UTS TPM',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}