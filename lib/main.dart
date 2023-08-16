import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Event Payload',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final randomInt = Random().nextInt(10);
            print('Random Int: $randomInt');
          },
          child: Text(
            'Change theme',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
