// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:menta/constants.dart';

class OnBoardNavBtn extends StatelessWidget {
  const OnBoardNavBtn({
    Key? key,
    required this.name,
    required this.onPressed,
  }) : super(key: key);

  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(6),
        splashColor: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            name,
            style: kBodyText1,
          ),
        ));
  }
}
