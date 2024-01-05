import 'package:flutter/material.dart';
import 'main.dart';

class Login extends StatelessWidget {
  void login() {
    // Your login logic goes here
    print('Login button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('Login'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage(title: 'title')),
              );
            }
        ),
      ),
    );
  }
}