import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String patchImage;
  String name;
  String datails;
  String coment;
  Review(this.patchImage, this.name, this.datails, this.coment);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final start = Container(
        margin: EdgeInsets.only(top: 1.0, right: 3.0),
        child: Icon(
          Icons.star,
          color: Color(0xFFf2C611),
          size: 14.0,
        ));
    final userComent = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        coment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );
    final userInfo = Row(children: <Widget>[
      Container(
        margin: EdgeInsets.only(
          left: 20.0,
        ),
        child: Text(
          datails,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
        ),
      ),
      Row(children: <Widget>[start, start, start, start, start]),
    ]);

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );
    final UserDetails = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[userName, userInfo, userComent]);

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(patchImage))),
    );

    return Row(children: <Widget>[photo, UserDetails]);
  }
}
