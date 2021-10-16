import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:menta/pages.dart';

class Meditation extends StatelessWidget {
  const Meditation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: sizeV * 40,
            decoration: BoxDecoration(
              color: HexColor("#FF9900"),
              // image: DecorationImage(
              //   image: AssetImage(
              //     "assets/images/undraw_mindfulness_scgo 1.png",
              //   ),
              //   fit: BoxFit.contain,
              // ),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: sizeV * 0.5,
                ),
                Text(
                  "Meditation",
                  style: kBodyText1.copyWith(
                      fontWeight: FontWeight.w700, fontSize: sizeV * 5),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("Duration: ",
                        style:
                            kBodyText1.copyWith(fontWeight: FontWeight.w900)),
                    Text(
                      "3-10 MIN Exercies",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                    width: sizeH * 90,
                    child: Text(
                        "Live happier and healtheir by learning  the fundamental of meditation")),
                SizedBox(
                  height: 18,
                ),
                SizedBox(width: sizeH * 100, child: SearchBar()),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 23),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: <Widget>[
                      SessionCard(
                        sessionNum: 1,
                        sizeH: 3,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 2,
                        sizeH: 3,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 3,
                        sizeH: 3,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 4,
                        sizeH: 3,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 5,
                        sizeH: 3,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 6,
                        sizeH: 3,
                        press: () {},
                      ),
                    ],
                  ),
                ),
                Text(
                  "Meditation",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 23,
                          spreadRadius: -13,
                          color: greyColor),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      SvgPicture.asset("assetName")
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final VoidCallback press;
  const SessionCard({
    Key? key,
    required this.sessionNum,
    this.isDone = false,
    required this.sizeH,
    required this.press,
  }) : super(key: key);

  final double sizeH;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        child: Container(
          width: constraint.maxWidth / 2 - 6,
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 23,
                    spreadRadius: -13,
                    color: greyColor),
              ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: isDone ? blueBackground : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: blueBackground),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : blueBackground,
                      ),
                    ),
                    SizedBox(width: sizeH * 2),
                    Text(
                      "Session $sessionNum",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
