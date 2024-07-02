import 'package:flutter/material.dart';

import '../osa_sign_button.dart';
import '../osa_sign_input.dart';
import '../osa_sign_title.dart';

// consts of sizes of params of widgets
const columnPadding = 40.0;

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      body: Container(
      padding: EdgeInsets.symmetric(
        horizontal: columnPadding
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          OsaSignTitle(titleText: 'Enter password 🔐'),
          SizedBox(height: 20),
          OsaSignInput(controller: passwordController, hint: 'password'),
          SizedBox(height: 20),
          OsaSignButton(doSomething: (){}, labelText: 'Continue')
        ]
      ),
    ),
    );
  }
}