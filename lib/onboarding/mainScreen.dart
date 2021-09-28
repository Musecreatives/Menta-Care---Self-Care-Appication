// ignore_for_file: file_names
import 'dart:ffi';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:menta/constants.dart';
import 'package:menta/main.dart';
import 'package:menta/onboarding/models/onboarding.dart';
import 'package:menta/size_config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './pages/pages.dart';
import '../widgets/widgets.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index ? primaryColor : blueBackground,
        shape: BoxShape.circle,
      ),
    );
  }

  Future setSeenonboard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    seenOnboard = await prefs.setBool('senOnboard', true);
    // this will set seenOnboard to true when runnig onboard pages for the first time.
  }

  @override
  Void initState() {
    // TODO: implement initState
    super.initState();
    setSeenonboard();
  }

  @override
  Widget build(BuildContext context) {
    //  initialize size config
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: welcomeContents.length,
              itemBuilder: (context, index) => Column(children: [
                SizedBox(
                  height: sizeV * 9,
                ),
                Text(
                  welcomeContents[index].title,
                  style: kTitle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: sizeV * 6,
                ),
                Container(
                  height: sizeV * 38,
                  child: Image.asset(welcomeContents[index].image,
                      fit: BoxFit.contain),
                ),
                SizedBox(
                  height: sizeV * 10,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: kBodyText1,
                    children: const [
                      TextSpan(
                          text:
                              'Stress less. Move more. Sleep soundly.\nThere’s something for everyone.'),
                    ],
                  ),
                ),
                SizedBox(
                  height: sizeV * 7,
                ),
              ]),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                currentPage == welcomeContents.length - 1
                    ? MyTextButton(
                        buttonName: 'Get Started',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ));
                        },
                        bgColor: primaryColor,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                            OnBoardNavBtn(
                              name: 'Skip',
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()));
                              },
                            ),
                            Row(
                              children: List.generate(
                                welcomeContents.length,
                                (index) => dotIndicator(index),
                              ),
                            ),
                            OnBoardNavBtn(
                              name: 'Next',
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              },
                            ),
                          ]),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
