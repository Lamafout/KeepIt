import 'package:flutter/material.dart';

import '../../osa_sign_button.dart';
import '../../osa_sign_input.dart';
import '../../osa_sign_title.dart';
import '../../../main.dart';

import '../../../requests/check_password.dart';

// consts of sizes of params of widgets
const columnPadding = 40.0;

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController passwordController = controllers.passwordController;
  bool isCorrect = false;
  bool buttonState = false;

  void _sendPassword() async {
    isCorrect = await checkPassword();
    if (isCorrect){
      Navigator.pop(context);
    } else{
      //TODO сделать состояние для инпута с анимацией 'влево-вправо' и скидывать текст контроллера
    }
  }

  @override
  void initState() {
    super.initState();
    passwordController.addListener(_changeButtonState);
  }

  void _changeButtonState() {
    setState(() {
      buttonState = passwordController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
       appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 28, 28),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body: Container(
      padding: EdgeInsets.symmetric(
        horizontal: columnPadding
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          OsaSignTitle(titleText: 'Enter your password 🔐'),
          SizedBox(height: 20),
          OsaSignInput(controller: passwordController, hint: 'password'),
          SizedBox(height: 20),
          OsaSignButton(doSomething: _sendPassword, labelText: 'Continue', isEnable: buttonState,)
        ]
      ),
    ),
    );
  }
}