import 'package:flutter/material.dart';
import 'package:aplikasi_wisata/layout/BodyScreenMain.dart';
import 'package:aplikasi_wisata/components/AppbarCustom.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppbarCustom(),
      ),
      body: BodyScreenMain(),
    );
  }
}