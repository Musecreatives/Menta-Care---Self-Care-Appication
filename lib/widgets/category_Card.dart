// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:menta/pages.dart';

import 'package:hexcolor/hexcolor.dart';

class CategoryCard extends StatelessWidget {
  final String  imgSrc;
  final String title;
  final VoidCallback press;
  const CategoryCard({
    Key? key,
    required this.imgSrc,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _PlayerScreen(context),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Container(
            // padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: HexColor("#F3FCF0"),
                borderRadius: BorderRadius.circular(13),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 17),
                      blurRadius: 17,
                      spreadRadius: -23,
                      color: Colors.grey)
                ]),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Image.asset(imgSrc),
                      Spacer(),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: kTitle.copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _PlayerScreen(BuildContext context) {}
}
