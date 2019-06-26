import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Interfaz extends StatelessWidget {
  Widget titulo() {
    return Container(
      margin: EdgeInsets.only(left: 22.0, top: 25.0),
      child: Text(
        "Películas",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 33.0,
            fontWeight: FontWeight.w700,
            color: Color(0xFF444444)),
      ),
    );
  }

  Widget subTitulo() {
    return Container(
      margin: EdgeInsets.only(left: 22.0, top: 0, bottom: 10.0),
      child: Text(
        "Populares",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w700,
            color: Color(0xFF666666)),
      ),
    );
  }

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

  Widget tabBar() {
    return Align(
      alignment: Alignment(0.5, 0.5),
      child: CupertinoTabBar(
        activeColor: Color(0xff444444),
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.video_camera_solid), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.video_camera), title: Text("")),
        ],
      ),
    );
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
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.93,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[titulo(), subTitulo(), listHorizontal()],
              ),
            ),
            tabBar()
          ],
        ));
  }
}
