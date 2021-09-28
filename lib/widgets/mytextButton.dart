// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:menta/constants.dart';

import '../size_config.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
    required this.bgColor,
  }) : super(key: key);
  final String buttonName;
  final VoidCallback onPressed;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: SizeConfig.blockSizeH! * 15.5,
        width: SizeConfig.blockSizeH! * 100,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: kBodyText1,
          ),
          style: TextButton.styleFrom(backgroundColor: bgColor),
        ),
      ),
    );
  }
}
