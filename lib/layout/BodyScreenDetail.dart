import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:aplikasi_wisata/model/tourism_place.dart';

class BodyScreenDetail extends StatelessWidget {
  // const BodyScreenDetail({ Key? key }) : super(key: key);

  final TourismPlace place;
  const BodyScreenDetail({required this.place});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            children: [
              Image.network(
                place.imageUrls[0],
              ),
              SafeArea(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: Text(
              place.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                // fontFamily: 'Staatliches', //INI HARUS DIKASIH FONTS
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 24.0,
                    ),
                    Text("Open Everyday"),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 24.0,
                    ),
                    Text("09:00 - 20:00"),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 24.0,
                    ),
                    Text("Rp 15000"),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              place.description,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      place.imageUrls[index],
                    ),
                  ),
                );
              },
              itemCount: place.imageUrls.length,
            ),
          ),
        ],
      ),
    );
  }
}
