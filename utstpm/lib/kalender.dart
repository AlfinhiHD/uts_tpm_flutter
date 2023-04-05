import 'dart:async';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final List<bool> _selections = [true, false, false];
  DateTime _focusedDay = DateTime.now();
  Timer timer = Timer(Duration(seconds: 1), () {});
  DateTime? _selectedDay;
  String date = DateFormat('EEEE, d MMM, yyyy HH:mm:ss').format(DateTime.now());

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  void initState() {
    timer = Timer.periodic(
        Duration(seconds: 1),
            (Timer t) => setState(() {
          if (_selections[0]) {
            date = DateFormat('EEEE, d MMM, yyyy HH:mm:ss')
                .format(DateTime.now());
          } else if (_selections[1]) {
            date = DateFormat('EEEE, d MMM, yyyy HH:mm:ss')
                .format(DateTime.now().add(Duration(hours: 1)));
          } else {
            date = DateFormat('EEEE, d MMM, yyyy HH:mm:ss')
                .format(DateTime.now().add(Duration(hours: 2)));
          }
        }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calendar'),
        ),
        body: Center(
          heightFactor: MediaQuery.of(context).size.height / 3,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Kalender WIB, WITA, dan WIT',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                Text(
                  date,
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                ToggleButtons(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text('WIB'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text('WITA'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text('WIT'),
                    ),
                  ],
                  isSelected: _selections,
                  selectedColor: Colors.white,
                  fillColor: Colors.blue,
                  renderBorder: false,
                  onPressed: (index) {
                    setState(() {
                      for (int buttonIndex = 0;
                      buttonIndex < _selections.length;
                      buttonIndex++) {
                        if (buttonIndex == index) {
                          _selections[buttonIndex] = true;
                        } else {
                          _selections[buttonIndex] = false;
                        }
                      }
                    });
                  },
                )]
          ),
        )
    );
  }
}