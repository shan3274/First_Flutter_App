import 'dart:io';

import 'package:flutter/material.dart';

class Second_Screen extends StatefulWidget {
  String title;
  String description;
  Second_Screen({super.key, required this.title, required this.description});

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  late String name = "shan";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
            ),
          ),
        ),
        Text(widget.description),
        ElevatedButton(
            onPressed: () async {
              setState(() {
                name = "khan";
              });
            },
            child: Text("change title"))
      ]),
    ));
  }
}
