// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:menta/onboarding/pages/meditation.dart';

import 'package:menta/pages.dart';
import 'package:menta/widgets/bottom_nav_bar.dart';
import 'package:menta/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: sizeV * 45,
            decoration: BoxDecoration(
              color: Color(0xFF4E84F8),
            ),
          ),
          SafeArea(
              child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                  child: Container(
                    alignment: Alignment.center,
                    height: sizeV * 6,
                    width: sizeH * 14,
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/notifications_black_24dp 1.svg',
                      color: Colors.black,
                      height: sizeV * 3,
                      width: sizeH * 3,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Text(
                    'Good Morning,\nPaul',
                    style: kTitle.copyWith(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 5),
                child: SearchBar(),
              ),
              SizedBox(
                height: defualtPadding * 0.9,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: .85,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 20,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    CategoryCard(
                      title: " Meditation ",
                      imgSrc: "assets/images/undraw_Meditation_re_gll0 1.png",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Meditation();
                          }),
                        );
                      },
                    ),
                    CategoryCard(
                      imgSrc: "assets/images/undraw_workout_gcgu 1.png",
                      title: "Exercise",
                      press: () {},
                    ),
                    CategoryCard(
                      imgSrc: "assets/images/macaroni-message-sent.png",
                      title: "Treat Yourself To 5 Gentle Breaths",
                      press: () {},
                    ),
                    CategoryCard(
                      imgSrc: "assets/images/undraw_Meditation_re_gll0 1.png",
                      title: "A quick lesson in salsa Dancing",
                      press: () {},
                    ),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}

