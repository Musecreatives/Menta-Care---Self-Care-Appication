import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:menta/pages.dart';
import 'package:menta/size_config.dart';

class ExploreMenta extends StatelessWidget {
  const ExploreMenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned(
          top: sizeV * 8,
          left: sizeH * 32.5,
          child: SvgPicture.asset(
            "assets/images/Logo Menta.svg",
            height: sizeV * 5,
          ),
        ),
        Center(
          child: SafeArea(
            child: SingleChildScrollView(
              // padding: EdgeInsets.symmetric(horizontal: sizeH * 5),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Explore Menta",
                    style: kBodyText1.copyWith(
                        fontSize: SizeConfig.blockSizeH! * 6,
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'You’re now a member of MENTA',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.blockSizeH! * 3.8,
                    ),
                  ),
                  SizedBox(
                    height: defualtPadding * 34,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: sizeV * -5,
          child: SvgPicture.asset("assets/images/Smiley_Background.svg",
              height: sizeV * 60, width: sizeH * 50),
        ),
      ]),
    );
  }
}
