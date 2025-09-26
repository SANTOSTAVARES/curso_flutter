import 'package:flutter/material.dart';
import 'package:exemplo/two_page.dart'; // Import da TwoPage

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/twoPage', arguments: '123').then(
              (value) => print(value),
              );
          },
          child: const Text('Ir para Segunda Page'),
        ),
      ),
    );
  }
}