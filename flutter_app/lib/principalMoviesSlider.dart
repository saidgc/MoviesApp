import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PrincipalMoviesSlider extends StatelessWidget{

  Widget firstCard() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 23.0, right: 15.0),
          height: 355.0,
          width: 200.0,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
        ),
        Container(
          margin: EdgeInsets.only(left: 23.0, right: 15.0, top: 10.0),
          width: 200.0,
          child: Text(
            "Genero",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black38),
          ),
        )
      ],
    );
  }

  Widget card() {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(right: 15.0),
        height: 355.0,
        width: 200.0,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      ),
      Container(
        margin: EdgeInsets.only(right: 15.0, top: 10.0),
        width: 200.0,
        child: Text(
          "Genero",
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.black38),
        ),
      )
    ]);
  }

  Widget listHorizontal() {
    return Container(
        height: 390.0,
        // TODO Convertir esta ListVIew() en un ListView.builder
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          firstCard(),
          card(),
          card(),
          card(),
          card(),
          card(),
          card()
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return listHorizontal();
  }

}