import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'digital_certificate_validate.dart';

// class ConnectDeviceBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Container(
//           color: Colors.white,
//         ), // Required some widget in between to float AppBar

//         Positioned(
//           top: 40,
//           left: 16,
//           right: 16,
//           child: AppBar(
//             elevation: 0,
//             backgroundColor: Colors.transparent,
//             leading: new IconButton(
//               icon: new Icon(Icons.arrow_back_ios_rounded),
//               color: Color.fromRGBO(9, 30, 66, 1),
//               highlightColor: Colors.transparent,
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//             primary: false,
//             actions: <Widget>[
//               Container(
//                   margin: const EdgeInsets.only(
//                       left: 16, top: 22, bottom: 16, right: 24),
//                   padding: const EdgeInsets.only(top: 3, right: 2),
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                         width: 1, color: Color.fromRGBO(17, 57, 125, 1)),
//                     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                   ),
//                   child: Column(children: <Widget>[
//                     new LinearPercentIndicator(
//                       backgroundColor: Colors.transparent,
//                       width: 80.0,
//                       lineHeight: 10.0,
//                       percent: 0.25,
//                       progressColor: Color.fromRGBO(17, 57, 125, 1),
//                     ),
//                   ]))
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

class ConnectDeviceBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormConnectState();
  }
}

class _FormConnectState extends State<ConnectDeviceBody>
    with WidgetsBindingObserver {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>();
  // final _connectController = TextEditingController();
  TextEditingController textFieldCtrl;
  // FocusNode focusNode;
  bool _connectValidate = false;

  // String _connect;
  @override
  void initState() {
    textFieldCtrl = TextEditingController();
    // focusNode = FocusNode()..addListener(_rebuildOnFocusChange);
    super.initState();
  }

  // void _rebuildOnFocusChange() => setState(() {});

  // void _onButtonPressed() {}

  // void dispose() {
  //   _connectController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Connect Device",
      home: Scaffold(
          key: _scaffoldKey,
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
                      fontFamily: 'Gilroy',
                      color: Color.fromRGBO(9, 30, 66, 1),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Chúng tôi đã gửi mã kết nối đến địa chỉ Email của bạn. Vui lòng kiểm tra và kết nối',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Gilroy',
                        height: 1.4,
                        color: Color.fromRGBO(80, 95, 121, 1)),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    maxLength: 6,
                    autofocus: true,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(17, 57, 125, 1))),
                      labelText: 'Nhập mã kết nối',
                      errorText:
                          _connectValidate ? 'Mã kết nối chưa đúng' : null,
                      labelStyle: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Color.fromRGBO(193, 199, 208, 1)),
                    ),
                    controller: textFieldCtrl,
                    // focusNode: focusNode,
                    // onChanged: (text) {
                    //   setState(() {
                    //     _connect = text;
                    //   });
                    // },
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 44,
                    child: new FlatButton(
                      onPressed: () {
                        setState(() {
                          textFieldCtrl.text.isEmpty ||
                                  textFieldCtrl.text.length < 6
                              ? _connectValidate = true
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DigitalCertificate()));
                        });
                      },
                      child: Text(
                        'Kết nối'.toUpperCase(),
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      textColor: Colors.white,
                      color: Color.fromRGBO(17, 57, 125, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  )
                ],
              ))),
      debugShowCheckedModeBanner: false,
    );
  }
}
