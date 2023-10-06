// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import "dart:async";
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DateApp(),
    );
  }
}

class DateApp extends StatefulWidget {
  const DateApp({Key? key}) : super(key: key);

  @override
  State<DateApp> createState() => _DateAppState();
}

class _DateAppState extends State<DateApp> {
  String weekday = '';
  String date = '';
  String timeNew = '';

  changeNewSec() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        weekday = DateFormat("EEEE").format(DateTime.now());
        date = DateFormat("MMMM d, y").format(DateTime.now());
        timeNew = DateFormat('hh : mm : ss a').format(DateTime.now());
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeNewSec();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Time & Date App',
          style: TextStyle(
            fontSize: 27,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 57, 73, 80),
      ),
      backgroundColor: Color.fromARGB(255, 33, 40, 43),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Today's Date is $weekday ",
              style: TextStyle(
                fontSize: 27,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "$date",
              style: TextStyle(
                fontSize: 27,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              " $timeNew",
              style: TextStyle(
                fontSize: 27,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
