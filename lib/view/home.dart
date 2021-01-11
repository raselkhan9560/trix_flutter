import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff38cbd7), Color(0xff1e6aa1)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 50.0, 30.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 30),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          const Color(0xFF374B63),
          const Color(0xFF121829),
        ],
        begin: FractionalOffset(0.0, 0.0),
        stops: [0.0, 1.0],
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Russel Khan\nFaysal',
            style: TextStyle(
                fontSize: 25,
                height: .8,
                fontWeight: FontWeight.w500,
                foreground: Paint()..shader = linearGradient),
          ),
        ],
      ),
    ));
  }
}
