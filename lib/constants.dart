import 'package:flutter/material.dart';

import './size_config.dart';

const defualtPadding = 16.0;

OutlineInputBorder textFieldBorder = OutlineInputBorder(
    borderSide: BorderSide(
  color: blueBackground.withOpacity(0.1),
));

const primaryColor = Colors.yellow;
const greyColor = Color(0xFFFEDBD0);
const blueBackground = Colors.blue;
const textFieldBorder1 = Colors.blue;

final kTitle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: SizeConfig.blockSizeH! * 7,
  color: blueBackground,
  fontWeight: FontWeight.bold,
);

final kBodyText1 = TextStyle(
  color: Colors.black,
  fontFamily: 'Montserrat',
  fontSize: SizeConfig.blockSizeH! * 4,
  fontWeight: FontWeight.bold,
);

final wBodyText2 = TextStyle(
  color: Colors.white,
  fontFamily: 'Montserrat',
  fontSize: SizeConfig.blockSizeH! * 94,
  fontWeight: FontWeight.bold,
);
