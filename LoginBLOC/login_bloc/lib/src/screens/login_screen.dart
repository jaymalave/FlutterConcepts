import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import 'dart:async';

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

    //Stream Builders
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot){
            return TextField(
              onChanged: bloc.changeEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: 'you@example.com',
                  labelText: 'Email Address',
                  errorText: snapshot.error.toString(),
               ),
             );
           }
        );
      }

  Widget passwordField() {
   return StreamBuilder(
     stream: bloc.password,
     builder: (context, snapshot){
           return TextField(
      obscureText: true,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        hintText: 'Password',
        labelText: 'Password',
        errorText: snapshot.error.toString(),
      ),
    );
  },
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
