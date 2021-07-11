import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      child: Column(
        children: [
          emailField(), 
          passwordField(),
          Container(margin: EdgeInsets.only(top: 25.0),),
          submitButton(),
          ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: 'you@example.com',
          labelText: 'Email Address'),
    );
  }

  Widget passwordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        hintText: 'Password',
        labelText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {},
      child: Text('Log in'),
      color: Colors.blue,
    );
  }
}
