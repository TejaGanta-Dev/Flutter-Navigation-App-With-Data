import 'package:flutter/material.dart';
import 'package:navigation_data_app/Screens/utilities.dart';
import 'package:navigation_data_app/main.dart';

class MyWidget1 extends StatefulWidget {
  const MyWidget1({super.key});
  static String myWidget1Route = '/Screen2';
  @override
  State<MyWidget1> createState() => _MyWidget1State();
}

class _MyWidget1State extends State<MyWidget1> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: ElevatedButton(
        child: Text(args.description),
        onPressed: () {
          print('Dont Click me');
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Dont Click me')));
          Navigator.pushNamed(context, MyHomePage.homeRoute);
        },
      ),
    );
  }
}
