import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                  horizontal: sizeH * 5, vertical: sizeV * 7.4),
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
                      onPressed: () {},
                      child: Text(
                        "Sign In!",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                  SignUpForm(),
                  SizedBox(
                    height: defualtPadding * 2,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: sizeV * 6,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Sign Up"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldName(
          text: "Username",
        ),
        TextFormField(
          decoration: InputDecoration(hintText: "theGriffin"),
        ),
        SizedBox(
          height: sizeV * 1.6,
        ),
        TextFieldName(
          text: "Email",
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(hintText: "theGriffin@gmail.com"),
        ),
        SizedBox(
          height: sizeV * 1.6,
        ),
        TextFieldName(
          text: "Phone",
        ),
        TextFormField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(hintText: "+23408110553890"),
        ),
        SizedBox(
          height: sizeV * 1.6,
        ),
        TextFieldName(
          text: "Password",
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(hintText: "******"),
        ),
        SizedBox(
          height: sizeV * 1.6,
        ),
        TextFieldName(
          text: "Confirm Password",
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(hintText: "******"),
        ),
      ],
    ));
  }
}

class TextFieldName extends StatelessWidget {
  const TextFieldName({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defualtPadding / 3),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black87.withOpacity(0.5),
        ),
      ),
    );
  }
}
