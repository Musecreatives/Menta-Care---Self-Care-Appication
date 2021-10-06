// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:menta/pages.dart';

class LoginPageForm extends StatelessWidget {
  LoginPageForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey formKey;

  late String _email, _password;

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
          ],
        ));
  }
}
