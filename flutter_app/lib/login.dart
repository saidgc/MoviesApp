import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Widget boton(String text) {
    return Container(
        margin: EdgeInsets.only(top: 20.0),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20)),
        ),
        height: 70.0,
        width: 300.0,
        decoration: new BoxDecoration(
          color: Colors.black,
          borderRadius: new BorderRadius.all(
            Radius.circular(8.0),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("titulo"),),
      body: new Column(
        children: <Widget>[
          new Container(
            color: Colors.white,
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    boton("Sign In"),
                    boton("Log In")
                  ],
                )),
          ),
        ],
      )
    );
  }
}
