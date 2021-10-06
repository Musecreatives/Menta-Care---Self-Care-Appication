import 'package:flutter/material.dart';

import 'package:menta/pages.dart';

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
        Positioned(
          top: sizeV * 19,
          left: sizeH * 32,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.red[400],
            child: Text(
              'Red',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ]),
    );
  }
}
