// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:menta/pages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
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
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(21.5)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        // icon: Image.asset('menta/assets/icons/Activity.png'),
                        border: InputBorder.none,
                      ),
                    )),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                                "assets/images/undraw_Meditation_re_gll0 1.png",
                                height: 5,
                                width: 6),
                            Text('data'),
                          ],
                        ),
                      ),
                    )
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
