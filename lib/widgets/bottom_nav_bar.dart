import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:menta/pages.dart';

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
              title: "Activity",
              press: () {},
            ),
            BottomNavItem(
              imgScr: "assets/icons/fluent_home-16-filled.svg",
              title: "Explore",
              press: () {},
              isActive: true,
            ),
            BottomNavItem(
              imgScr: "assets/icons/fluent_home-16-filled.svg",
              title: "Meditate",
              press: () {},
            ),
          ]),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String imgScr;
  final String title;
  final VoidCallback press;
  final bool isActive;
  const BottomNavItem({
    Key? key,
    required this.imgScr,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            imgScr,
            color: isActive ? textFieldBorder1 : neutralColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? textFieldBorder1 : neutralColor),
          )
        ],
      ),
    );
  }
}
