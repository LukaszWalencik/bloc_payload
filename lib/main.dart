import 'dart:math';
import 'blocs/payload/payload_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_payload/blocs/payload/payload_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PayloadBloc>(
      create: (context) => PayloadBloc(),
      child: BlocBuilder<PayloadBloc, PayloadState>(
        builder: (context, state) {
          return MaterialApp(
              title: 'Event Payload',
              debugShowCheckedModeBanner: false,
              theme: state.appTheme == AppTheme.light
                  ? ThemeData.light()
                  : ThemeData.dark(),
              home: HomePage());
        },
      ),
    );
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
