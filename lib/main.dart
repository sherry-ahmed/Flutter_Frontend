

import 'package:assign1063/screen2.dart';
import 'package:flutter/material.dart';
import 'package:assign1063/screen1.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: const MyApp(),
      routes: {
        screen2.route: (context) => const screen2(),
        
      },
  ));
}