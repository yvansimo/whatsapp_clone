import 'package:flutter/material.dart';
import 'loading.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/loading': (context) => Loading(),
      '/home': (context) => Home(),
    },
  ));
}
