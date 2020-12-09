import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DigitalCertificate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CertificateState();
  }
}

class _CertificateState extends State<DigitalCertificate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Certificate',
      home: Scaffold(
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 40, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  leading: new IconButton(
                    icon: new Icon(Icons.arrow_back_ios_rounded),
                    color: Color.fromRGBO(9, 30, 66, 1),
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  primary: false,
                  actions: <Widget>[
                    Container(
                        margin: const EdgeInsets.only(top: 22, bottom: 16),
                        padding: const EdgeInsets.only(top: 3.4, right: 2),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: Color.fromRGBO(17, 57, 125, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Column(children: <Widget>[
                          new LinearPercentIndicator(
                            backgroundColor: Colors.transparent,
                            width: 80.0,
                            lineHeight: 10.0,
                            percent: 0.25,
                            progressColor: Color.fromRGBO(17, 57, 125, 1),
                          ),
                        ]))
                  ],
                ),
              ),
              SizedBox(height: 38),
              Text(
                'Kết nối thiết bị',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gilroy'),
              ),
              SizedBox(height: 16),
              Text(
                'Chúng tôi đã gửi mã kết nối đến địa chỉ Email của bạn. Vui lòng kiểm tra và kết nối',
                style:
                    TextStyle(fontSize: 16, fontFamily: 'Gilroy', height: 1.4),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
