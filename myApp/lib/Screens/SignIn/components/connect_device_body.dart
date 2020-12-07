import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
    // TODO: implement createState
    return _FormConnectState();
  }
}

//This is a "very basic" statefulwidget
class _FormConnectState extends State<ConnectDeviceBody>
    with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _contentController = TextEditingController();
  //define states
  String _content;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is a StatefulWidget",
      home: Scaffold(
          key: _scaffoldKey,
          body: SafeArea(
              minimum: const EdgeInsets.only(top: 40, left: 16, right: 16),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Positioned(
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
                            padding: const EdgeInsets.only(top: 3, right: 2),
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
                  Text(
                    'Kết nối thiết bị',
                    style: TextStyle(),
                  ),
                  Text(
                      'Chúng tôi đã gửi mã kết nối đến địa chỉ Email của bạn. Vui lòng kiểm tra và kết nối'),
                  TextField(
                    decoration: InputDecoration(labelText: 'Nhập mã kết nối'),
                    controller: _contentController,
                    onChanged: (text) {
                      setState(() {
                        _content = text;
                      });
                    },
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 44,
                    child: new FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Kết nối'.toUpperCase(),
                        style: TextStyle(
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
