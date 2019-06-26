import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Interfaz extends StatelessWidget {

  Widget titulo(){
    return Container(
      margin: EdgeInsets.only(left: 22.0, top: 25.0, bottom: 10.0),
      child: Text(
        "Películas",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 34.0,
            fontWeight: FontWeight.w700,
            color: Color(0xFF444444)),
      ),
    );
  }

  Widget firstCard() {
    return Container(
      margin: EdgeInsets.only(left: 23.0, right: 15.0),
      height: 355.0,
      width: 200.0,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }

  Widget card() {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      height: 355.0,
      width: 200.0,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
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
        height: 370.0,
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
              children: <Widget>[
                titulo(),
                listHorizontal()
              ],
            ),
          ),
          tabBar()
        ],
      )
    );
  }
}