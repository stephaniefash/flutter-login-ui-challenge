// Define a custom Form widget.
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_ui/constants.dart';

import 'custom_widgets.dart';

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
                  SizedBox(height: 20),
                  customDefaultText(forgotPasswordText),
                  SizedBox(height: 20),
                  customButton(Colors.redAccent, loginText, 100, _handleFormSubmission),
                ],),),
          ),
        ),
      ),
    );
  }

  _handleFormSubmission(){
    if (_formKey.currentState.validate()) {
      print('submitted');
    }
  }

  _singleTextField(String hintText, {hideText = false}) {
    return TextFormField(
      obscureText: hideText,
      validator: (value){
        if (value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: TextStyle(fontFamily: kPlayFairDisplayFont, letterSpacing: 1.2),
        contentPadding: EdgeInsets.fromLTRB(20,20,20,20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        errorBorder: OutlineInputBorder(
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
