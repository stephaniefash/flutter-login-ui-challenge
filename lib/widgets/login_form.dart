// Define a custom Form widget.
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_ui/constants.dart';

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomPadding: false,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  _singleTextField(emailOrPhoneText),
                  SizedBox(height: 20),
                  _singleTextField(passwordText, hideText: true),
                ])),
          ),
        ),
      ),
    );
  }

  _singleTextField(String hintText, {hideText = false}) {
    return TextFormField(
      obscureText: hideText,
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: TextStyle(fontFamily: kPlayFairDisplayFont, letterSpacing: 1.2),
        contentPadding: EdgeInsets.fromLTRB(20,20,20,20),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.redAccent,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
