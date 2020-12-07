import 'package:flutter/material.dart';
import 'package:myApp/Screens/SignIn/components/connect_device_body.dart';

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
              Image.asset(
                'assets/images/logo_welcome.png',
              ),
              Container(
                margin: EdgeInsets.only(top: 36),
                child: Text(
                  '\" Làm việc từ xa, không ngại khoảng cách \"'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(9, 30, 66, 1),
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        new Container(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 48),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: new FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConnectDeviceBody()),
                      );
                    },
                    child: Text(
                      'Đăng nhập'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    textColor: Colors.white,
                    color: Color.fromRGBO(26, 65, 171, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  )),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                height: 44,
                child: new FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Đăng ký'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  textColor: Color.fromRGBO(26, 65, 171, 1),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Color.fromRGBO(26, 65, 171, 0.3),
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(6)),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
