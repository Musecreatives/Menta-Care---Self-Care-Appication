// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'package:menta/pages.dart';

import 'HomeScreen.dart';
import 'explore_menta.dart';

class SignUpPage extends StatelessWidget {
  // const SignUpPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: sizeV * 6,
            left: sizeH * 30,
            child: SvgPicture.asset(
              "assets/images/Logo Menta.svg",
              height: sizeV * 5,
            ),
          ),
          Center(
            child: SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: sizeH * 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Account",
                      style: kBodyText1.copyWith(
                          fontSize: SizeConfig.blockSizeH! * 6.8),
                    ),
                    Row(children: [
                      Text("Already have an account?"),
                      TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage())),
                        child: Text(
                          "Sign In!",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: defualtPadding * 2,
                    ),
                    SignUpForm(
                      formKey: _formKey,
                    ),
                    SizedBox(
                      height: defualtPadding * 2,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: sizeV * 6,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // print("it works");
                            _formKey.currentState!.save();
                          }
                        },
                        onLongPress: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen())),
                        child: Text("Sign Up"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  push(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ExploreMenta()));
  }
}
