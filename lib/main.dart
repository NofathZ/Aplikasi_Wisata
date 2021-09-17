// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:aplikasi_wisata/layout/MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(fontFamily: 'Oswald'),
      home: MainScreen(),
    );
  }
}
