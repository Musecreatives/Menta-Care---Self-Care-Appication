// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../pages.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey formKey;

  late String _userName, _email, _password, _phoneNumber;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldName(
              text: "Username",
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "theGriffin"),
              validator: RequiredValidator(errorText: "Username is required"),
              onSaved: (userName) => _userName = userName!,
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
              validator: EmailValidator(errorText: "Use a valid email"),
              onSaved: (email) => _email = email!,
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
              validator:
                  RequiredValidator(errorText: "Phone Number is required"),
              onSaved: (phoneNumber) => _phoneNumber = phoneNumber!,
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
              validator: passwordValidator,
              onSaved: (password) => _password = password!,
              onChanged: (pass) => _password = pass,
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
              validator: (pass) =>
                  MatchValidator(errorText: "Password does not match")
                      .validateMatch(pass!, _password),
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
