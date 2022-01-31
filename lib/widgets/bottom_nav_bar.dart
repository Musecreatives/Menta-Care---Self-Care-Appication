import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menta/onboarding/pages/meditation.dart';

import 'package:menta/pages.dart';

import 'bottom_navbar_items.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 72,
      color: Colors.white30,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavItem(
              imgScr: "assets/icons/fluent_home-16-filled.svg",
              title: "Home",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }),
                );
              },
            ),
            BottomNavItem(
              imgScr: "assets/icons/bi_cloud-moon-fill.svg",
              // width: 2,
              // height: 2,
              title: "Meditate",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Meditation();
                  }),
                );
              },
            ),
            BottomNavItem(
              imgScr: "assets/icons/bx_bx-user.svg",
              title: "Paul",
              press: () {},
            ),
          ]),
    );
  }
}
