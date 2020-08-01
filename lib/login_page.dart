import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_ui/constants.dart';
import 'package:login_ui/widgets/custom_widgets.dart';
import 'package:login_ui/widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          headerAndSubheadingWidget(loginText, welcomeBackText),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 50, bottom: 40),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 300,
                    child: LoginForm(),
                  ),
                  customDefaultText(continueWithSocialText),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      customButton(Colors.blue, facebookText, 40, null),
                      customButton(Colors.black, githubText, 40, null),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
