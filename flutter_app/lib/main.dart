import 'package:flutter/cupertino.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Container(
          height: 500.0,
          child: Column(
            children: <Widget>[
              ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  // ############################################### Título
                  Container(
                    margin: EdgeInsets.only(left: 22.0, top: 25.0, bottom: 10.0),
                    child: Text(
                      "Películas",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 34.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF444444)),
                    ),
                  ),
                  // ############################################### ListView()
                  Container(
                    height: 370.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        // ############################################### tarjeta
                        Container(
                          margin: EdgeInsets.only(left: 23.0, right: 15.0),
                          height: 355.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                              color: Color(0xFF3F2261),
                              borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        ),
                        // ############################################### tarjeta
                        Container(
                          margin: EdgeInsets.only(right: 15.0),
                          height: 355.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                              color: Color(0xFF3F2261),
                              borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        ),
                        // ############################################### tarjeta
                        Container(
                          margin: EdgeInsets.only(right: 15.0),
                          height: 355.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                              color: Color(0xFF3F2261),
                              borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        ),
                      ],
                    ),
                  ),
                  // ############################################### ListView()
                ],
              ),
              // ################################################ tab bar
              Align(
                alignment: Alignment(0, 0),
                child: CupertinoTabBar(
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.video_camera_solid),
                        title: Text("")
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.video_camera),
                        title: Text("")
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
