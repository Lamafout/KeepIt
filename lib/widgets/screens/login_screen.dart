import 'package:flutter/material.dart';

import '../osa_sign_button.dart';
import '../osa_sign_input.dart';
import '../osa_sign_title.dart';

// consts of sizes of params of widgets
const columnPadding = 40.0;

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController loginController = TextEditingController();
 
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
            OsaSignTitle(titleText: 'Hi 👋 Who are you?'),
            SizedBox(height: 20),
            OsaSignInput(controller: loginController, hint: 'username'),
            SizedBox(height: 20),
            OsaSignButton(doSomething: (){}, labelText: 'Continue')
          ],
        ),
      ),
    );
  }
}