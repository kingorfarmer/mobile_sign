import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/background_welcome.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          margin: EdgeInsets.only(top: 70),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/logo_welcome.png'),
                height: 100,
              ),
              Text(
                '\" Làm việc từ xa, không ngại khoảng cách \"'.toUpperCase(),
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(9, 30, 66, 1),
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        )
      ],
    ));
  }
}
