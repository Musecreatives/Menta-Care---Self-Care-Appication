import 'package:flutter/material.dart';
import 'package:menta/pages.dart';

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
    double? width,
    double? height,
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
