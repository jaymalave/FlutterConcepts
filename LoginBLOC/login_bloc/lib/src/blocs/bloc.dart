import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  //Add data into stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get submitValid =>
      Rx.combineLatest2(email, password, (e, p) => true);

  //Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
}


//Single Global Instance
// final bloc = Bloc();
