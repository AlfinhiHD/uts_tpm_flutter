import 'package:flutter/material.dart';
import 'package:utstpm/detaildatadiri.dart';

class MenuDataDiri extends StatelessWidget {
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
            SizedBox(height: 16),
            SizedBox(
              height: 30,
              width: 100,
              child: ElevatedButton(
                child: Text('Detail'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MenuDataDiriDetail()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}