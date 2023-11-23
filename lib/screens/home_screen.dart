import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'second_screen.dart';
import 'dart:convert';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var url = Uri.parse('https://dummyjson.com/products/1');
            var response = await http.get(url);
            var data = jsonDecode(response.body);
            var title = data["title"];
            var description = data["description"];
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Second_Screen(  
                      title: title,
                      description: description,
                    )));
          },
          child: Text("Next screen"),
        ),
      )),
    );
  }
}
