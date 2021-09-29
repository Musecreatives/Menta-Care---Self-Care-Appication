import 'package:flutter/material.dart';
import 'package:menta/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../size_config.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned(
          height: sizeV * 40,
          width: sizeH * 100,
          child: Container(
            width: sizeH * 100,
            height: sizeV * 30,
            color: blueBackground,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 50,
              ),
              child: Text(
                'Create Account!',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'GoogleFonts.Montserrat',
                  fontSize: SizeConfig.blockSizeH! * 6,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: sizeV * 32,
          width: sizeH * 100,
          height: sizeV * 100,
          child: Container(
            width: 150,
            height: 150,
            child: Text(
              'Red',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            ),
          ),
        ),
      ]),
    );
  }
}
