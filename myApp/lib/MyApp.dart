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
        title: "COFFEE SHOP",
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
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
    return Icon(
      Icons.navigate_next,
      color: Color(0xffffcc5c),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffffcc5c),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffffcc5c),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        // width: double.infinity,
        // height: double.infinity,
        child: Container(
          child: ListView(
            children: <Widget>[
              GestureDetector(
                  child: Image.asset(
                    currentSlide.pathImage,
                    fit: BoxFit.fill,
                  )),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
              Container(
                child: SafeArea (
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
      colorSkipBtn: Color(0x33ffcc5c),
      highlightColorSkipBtn: Color(0xffffcc5c),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33ffcc5c),
      highlightColorDoneBtn: Color(0xffffcc5c),

      // Dot indicator
      colorDot: Color(0xffffcc5c),
      sizeDot: 13.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Color.fromRGBO(248, 252, 255, 1),
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Show or hide status bar
      shouldHideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}