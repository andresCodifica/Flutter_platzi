import 'package:flutter/material.dart';

import 'designer_card.dart';

class DesignerCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(children: <Widget>[
        DesignerCard("Dodena", "8 years", "dodena.jpg"),
        DesignerCard("Axl Rose", "42 years", "axl-rose.jpeg"),
        DesignerCard("Bon jovi", "35 years", "bon-jovi.jpg"),
      ]),
    );
  }
}
