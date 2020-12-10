import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DigitalCertificate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CertificateState();
  }
}

enum SingingCharacter { digitalcertificate }

class _CertificateState extends State<DigitalCertificate> {
  SingingCharacter _character = SingingCharacter.digitalcertificate;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Certificate',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(244, 244, 245, 1),
        body: SafeArea(
            minimum: const EdgeInsets.only(top: 40, left: 16, right: 16),
            child: ListView(
              children: [
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
                                width: 1,
                                color: Color.fromRGBO(17, 57, 125, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Column(children: <Widget>[
                            new LinearPercentIndicator(
                              backgroundColor: Colors.transparent,
                              width: 80.0,
                              lineHeight: 10.0,
                              percent: 0.5,
                              progressColor: Color.fromRGBO(17, 57, 125, 1),
                            ),
                          ]))
                    ],
                  ),
                ),
                SizedBox(height: 38),
                Text(
                  'Xác nhận chứng thư',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                      color: Color.fromRGBO(9, 30, 66, 1)),
                ),
                SizedBox(height: 16),
                Text(
                  'Vui lòng xác thực serial để kết nối và kích hoạt thiết bị với ứng dụng',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Gilroy',
                      height: 1.4,
                      color: Color.fromRGBO(80, 95, 121, 1)),
                ),
                SizedBox(
                  height: 800,
                  child: ListView(
                    children: [
                      SizedBox(height: 32),
                      Text(
                        'Thiết bị'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(9, 30, 66, 1)),
                      ),
                      SizedBox(height: 2),
                      Container(
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    top: 14, left: 14, bottom: 4),
                                child: Column(
                                  children: [
                                    Text(
                                      'IPhone X',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Gilroy',
                                          color: Color.fromRGBO(9, 30, 66, 1)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 14, bottom: 14),
                                child: Column(
                                  children: [
                                    Text(
                                      'HFNS-JSHEFHU-ZJSD-BHD',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Gilroy',
                                          color:
                                              Color.fromRGBO(107, 119, 140, 1)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 28),
                      Text(
                        'Thông tin công ty'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(9, 30, 66, 1)),
                      ),
                      SizedBox(height: 2),
                      Container(
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    top: 14, left: 14, bottom: 4),
                                child: Column(
                                  children: [
                                    Text(
                                      'Công Ty Thương Mại Cổ Phần Công Nghệ Thẻ Nacencomm',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Gilroy',
                                          color: Color.fromRGBO(9, 30, 66, 1)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 14, bottom: 14),
                                child: Column(
                                  children: [
                                    Text(
                                      '0103930279',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Gilroy',
                                          color:
                                              Color.fromRGBO(107, 119, 140, 1)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 28),
                      Text(
                        'Số serial'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(9, 30, 66, 1)),
                      ),
                      SizedBox(height: 2),
                      Container(
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    top: 14, left: 14, bottom: 4),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Chọn số serial kích hoạt',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Gilroy',
                                          color: Color.fromRGBO(9, 30, 66, 1)),
                                    ),
                                    ListTile(
                                      title: Text(
                                        '000-928',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(37, 110, 189, 1),
                                            fontSize: 14,
                                            fontFamily: 'Gilroy'),
                                      ),
                                      leading: Radio(
                                        value:
                                            SingingCharacter.digitalcertificate,
                                        groupValue: _character,
                                        onChanged: (SingingCharacter value) {
                                          setState(() {
                                            _character = value;
                                          });
                                        },
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 16, bottom: 16),
                                          child: Column(
                                            children: [
                                              Text(
                                                '000-112',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        107, 119, 140, 1),
                                                    fontFamily: 'Gilroy',
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: 16, bottom: 16),
                                              child: Text('Đã kích hoạt'),
                                            )
                                          ],
                                        ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
