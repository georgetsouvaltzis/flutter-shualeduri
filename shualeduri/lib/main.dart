import 'package:flutter/material.dart';
import 'package:shualeduri/add_screen.dart';
import 'package:shualeduri/detail_screen.dart';

import 'edit_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shualeduri',
      //home: HomeScreen(),
      routes: {
        '/': (context) => HomeScreen(),
        '/add': (context) => AddScreen(),
        '/details': (context) => DetailScreen(),
        '/edit': (context) => EditScreen()
      },
    );
  }
}