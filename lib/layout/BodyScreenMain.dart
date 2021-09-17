import 'package:aplikasi_wisata/layout/DetailScreen.dart';
import 'package:aplikasi_wisata/model/tourism_place.dart';
import 'package:flutter/material.dart';

// 'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),

class BodyScreenMain extends StatelessWidget {
  const BodyScreenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(place: place);
                },
              ),
            );
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.network(
                    "${place.imageUrls[0]}",
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          '${place.name}',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${place.location}'
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }, itemCount: tourismPlaceList.length,
    );
  }
}
