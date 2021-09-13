import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget {
  String patchImage = "assets/img/";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Review(patchImage + "axl-rose.jpeg", "Axl Rose", "1 review 5 photos",
              "there is an amazing place in sri lanka"),
          Review(patchImage + "bon-jovi.jpg", "Bon jovi", "1 review 5 photos",
              "this is a big idea"),
          Review(patchImage + "dodena.jpg", "Ratoncita", "1 review 4 photos",
              "die kartoffel"),
        ],
      ),
    );
  }
}
