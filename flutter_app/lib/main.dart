import 'package:flutter/cupertino.dart';
import 'interfaz.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(home: CupertinoPageScaffold(child: Interfaz()),
    debugShowCheckedModeBanner: false,);
  }
}
