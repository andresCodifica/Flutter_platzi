import 'package:flutter/material.dart';

class DesignerCard extends StatelessWidget {
  String name;
  String datail;
  String image;

  DesignerCard(this.name, this.datail, this.image);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userName = Container(
      margin: EdgeInsets.only(
        left: 10.0,
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
    final userComent = Container(
      margin: EdgeInsets.only(
        left: 10.0,
        top: 5.0,
      ),
      child: Text(
        "Experience: $datail",
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 13.0),
      ),
    );
    final detalle = Container(
      width: 200.0,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[userName, userComent]),
    );

    final photo = Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 2.0),
        width: 80.0,
        height: 60.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/img/$image'))));
    final mail = Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 30.0),
        width: 40.0,
        height: 50.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/img/mail.png'))),
      )
    ]);

    return Card(child: Row(children: <Widget>[photo, detalle, mail]));
  }
}
