import 'package:flutter/widgets.dart';

class LoginController {
  
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;  setLogin(String value) => _login = value;

  String? _pass;
  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(Duration(seconds: 2));
    //print('login: $_login, pass: $_pass');
    inLoader.value = false;
    return _login == 'admin' && _pass == '123';
  }
}