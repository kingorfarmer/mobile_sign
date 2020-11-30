import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:myApp/main.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Ký mọi lúc, mọi nơi",
        styleTitle: TextStyle(
            color: Color.fromRGBO(9, 30, 66, 1),
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
        description:
            "Ký ngay trên thiết bị di động, không cần USB Token. Giúp bạn làm việc từ xa",
        styleDescription: TextStyle(
            color: Color.fromRGBO(107, 119, 140, 1),
            fontSize: 16.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Roboto'),
        pathImage: "assets/images/welcome1.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Bảo mật tuyệt đối",
        styleTitle: TextStyle(
            color: Color.fromRGBO(9, 30, 66, 1),
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
        description:
            "Áp dụng mức độ tin cậy SCAL2, mức cao nhất theo tiêu chuẩn eIDAS",
        styleDescription: TextStyle(
            color: Color.fromRGBO(107, 119, 140, 1),
            fontSize: 16.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Roboto'),
        pathImage: "assets/images/welcome2.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Hỗ trợ đa kênh",
        styleTitle: TextStyle(
            color: Color.fromRGBO(9, 30, 66, 1),
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
        description:
            "Đội ngũ hỗ trợ dày dặn kinh nghiệm, liên tục hỗ trợ trên nhiều nền tảng",
        styleDescription: TextStyle(
            color: Color.fromRGBO(107, 119, 140, 1),
            fontSize: 16.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Roboto'),
        pathImage: "assets/images/welcome3.png",
      ),
    );
  }

  void onDonePress() {
    // Back to the first tab
    this.goToTab(0);
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return FlatButton(
      child: Text('Tiếp tục'),
      textColor: Color.fromRGBO(26, 65, 171, 1),
      onPressed: () {},
    );
  }

  Widget renderDoneBtn() {
    return FlatButton(
      child: Text('Bắt đầu'),
      textColor: Color.fromRGBO(26, 65, 171, 1),
      onPressed: () {},
    );
  }

  Widget renderSkipBtn() {
    return FlatButton(
      child: Text('Bỏ qua'),
      textColor: Color.fromRGBO(223, 231, 242, 1),
      onPressed: () {},
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          child: ListView(
            children: <Widget>[
              GestureDetector(
                  child: Image.asset(
                currentSlide.pathImage,
                fit: BoxFit.fitWidth,
                width: 1000.0,
              )),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                // margin: EdgeInsets.only(top: 5.0),
              ),
              Container(
                child: SafeArea(
                  child: Text(
                    currentSlide.description,
                    style: currentSlide.styleDescription,
                    textAlign: TextAlign.center,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Colors.transparent,
      highlightColorSkipBtn: Color(0xff000000),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Colors.transparent,
      highlightColorDoneBtn: Color(0xff000000),

      // Dot indicator
      colorDot: Color.fromRGBO(26, 65, 171, 1),
      sizeDot: 10.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Color.fromRGBO(248, 252, 255, 1),
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Show or hide status bar
      shouldHideStatusBar: false,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}
