class LoginController {
  String? _login;
  setLogin(String value) => _login = value;

  String? _pass;
  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    await Future.delayed(Duration(seconds: 2));
    //print('login: $_login, pass: $_pass');
    return _login == 'admin' && _pass == '123';
  }
}