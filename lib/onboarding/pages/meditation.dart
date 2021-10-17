import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:menta/pages.dart';
import 'package:menta/widgets/bottom_nav_bar.dart';
import 'package:menta/widgets/session_card.dart';

import 'meditation_player.dart';

class Meditation extends StatelessWidget {
  const Meditation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return GestureDetector(
      onTap: () => _PlayerScreen(context),
      child: Scaffold(
        bottomNavigationBar: BottomNavBar(),
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
              child: SingleChildScrollView(
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
                            style: kBodyText1.copyWith(
                                fontWeight: FontWeight.w900)),
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
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: greyColor),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/images/undraw_Meditating_re_aiqa.svg",
                              width: sizeH * 8,
                              height: sizeV * 8,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Stress level: ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Start your deepen you practice",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            // Padding(padding: EdgeInsets.all(10),
                            // child:
                            // ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  _PlayerScreen(BuildContext context) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PlayerScreen(context)));
}
