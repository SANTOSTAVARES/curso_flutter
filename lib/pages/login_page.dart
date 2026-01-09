
import 'package:exemplo/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  
  LoginController _controller = LoginController();

  LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people, size: MediaQuery.of(context).size.height * 0.2),
            TextField(
              decoration: InputDecoration(
                label: Text('Login'),
              ),
              onChanged: _controller.setLogin,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Senha'),
              ),
              obscureText: true,
              onChanged: _controller.setPass,
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                _controller.auth().then(
                  (result) {
                    if (result) {
                      print('success');
                    } else {
                      print('failed');
                    }
                  }
                );
              }, 
              child: Text('Login'),
              )
          ],
        ),
      ),
    );
  }
}