import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SecondMoviesSlider extends StatelessWidget {
  Widget firstCard() {
    return Container(
      margin: EdgeInsets.only(left: 23.0, right: 10.0),
      height: 80.0,
      width: 142.0,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }

  Widget card() {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      height: 80.0,
      width: 142.0,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }

  Widget listHorizontal() {
    return Container(
        height: 80.0,
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
