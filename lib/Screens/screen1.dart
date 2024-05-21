import 'package:flutter/material.dart';
import 'package:navigation_data_app/Screens/screen2.dart';
import 'package:navigation_data_app/Screens/utilities.dart';

class MyWidget2 extends StatefulWidget {
  const MyWidget2({super.key});
  static String myWidget2Route = '/Screen1';
  @override
  State<MyWidget2> createState() => _MyWidget2State();
}

class _MyWidget2State extends State<MyWidget2> {
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)!.settings.arguments as Arguments;
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
          Navigator.pushNamed(context, MyWidget1.myWidget1Route,arguments: Arguments('Screen2','From Screen1'));
        },
      ),
    );
  }
}