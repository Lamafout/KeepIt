import 'package:flutter/material.dart';

import '../osa_sign_button.dart';
import '../osa_sign_input.dart';
import '../osa_sign_title.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          OsaSignTitle(titleText: 'Hi 👋 Who are you?'),
          SizedBox(height: 20),
          OsaSignInput(controller: loginController, hint: 'username'),
          SizedBox(height: 10),
          OsaSignInput(controller: passwordController, hint: 'password'),
          SizedBox(height: 20),
          OsaSignButton(doSomething: (){}, labelText: 'Sign in')
        ],
      ),
    );
  }
}