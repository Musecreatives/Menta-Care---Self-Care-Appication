import 'package:flutter/material.dart';

import '../pages.dart';

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
