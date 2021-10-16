import 'package:flutter/material.dart';
import 'package:menta/pages.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen(BuildContext context, {Key? key}) : super(key: key);

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  var duration = 20.0;

  updateSlider({newDuration}) {
    setState(() {
      duration = newDuration;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: sizeV * 10,
              ),
              Container(
                height: sizeV * 25,
                width: sizeH * 45,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 18,
                      offset: Offset(0, 18),
                      color: Color(0x20334454),
                    ),
                  ],
                  image: DecorationImage(
                    image:
                        AssetImage("assets/images/meditating-illustration.jpg"),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                height: sizeV * 8,
              ),
              Text(
                "20 Minutes \n Deep Meditation",
                style: kBodyText1.copyWith(fontSize: sizeH * 4),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: sizeV * 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/icons/fluent_skip-backward.svg",
                    height: sizeV * 4,
                  ),
                  SvgPicture.asset(
                    "assets/icons/bi_play-fill.svg",
                    height: sizeV * 11,
                  ),
                  SvgPicture.asset(
                    "assets/icons/fluent_skip-forward.svg",
                    height: sizeV * 4,
                  ),
                ],
              ),
              SizedBox(
                height: sizeV * 8,
              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/images/Waves.svg",
                    height: sizeV * 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("00:00"),
                      Container(
                        width: sizeH * 70,
                        child: SliderTheme(
                          data: SliderThemeData(
                              trackHeight: 6,
                              activeTrackColor: blueBackground,
                              inactiveTrackColor: Colors.white,
                              thumbColor: blueBackground,
                              thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 10,
                                disabledThumbRadius: 10,
                              )),
                          child: Slider(
                            value: duration,
                            min: 0,
                            max: 100,
                            onChanged: (newDuration) {
                              updateSlider(newDuration: newDuration);
                            },
                          ),
                        ),
                      ),
                      Text("18:50")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
