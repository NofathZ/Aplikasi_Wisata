import 'package:aplikasi_wisata/layout/BodyScreenDetail.dart';
import 'package:aplikasi_wisata/model/tourism_place.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyScreenDetail(place: place),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: CircleAvatar(
      //     radius: 30,
      //     backgroundColor: Colors.grey,
      //     child: IconButton(
      //       icon: Icon(
      //         Icons.arrow_back,
      //         color: Colors.white,
      //       ),
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //     ),
      //   ),
      // ),

    );
  }
}
