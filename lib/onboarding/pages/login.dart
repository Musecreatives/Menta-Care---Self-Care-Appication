import 'package:flutter/material.dart';

import 'package:menta/pages.dart';

import 'HomeScreen.dart';
import 'explore_menta.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: sizeV * 6.2,
            left: sizeH * 30,
            child: SvgPicture.asset(
              "assets/images/Logo Menta.svg",
              height: sizeV * 6,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: sizeH * 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign In",
                      style: kBodyText1.copyWith(
                          fontSize: SizeConfig.blockSizeH! * 6.8),
                    ),
                    Row(children: [
                      Text("Don't have an account?"),
                      TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage())),
                        child: Text(
                          "Sign Up!",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: defualtPadding * 2,
                    ),
                    LoginPageForm(
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
                          } else {
                            () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          }
                        },
                        child: Text("Sign In"),
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
}
