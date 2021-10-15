import 'package:flutter/material.dart';
import './glassmorphism_buttons.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}



class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  Widget build(context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black54),
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),
            GlassyButton(
              title: 'First Package',
              splashColor: Colors.greenAccent,
              onTap: () {
                print("callback working");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'you@domain.com',
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'kYtz@12',
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      onPressed: () {
        formKey.currentState.reset();
      },
      child: Text('Submit'),
    );
  }
}
