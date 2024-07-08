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

class _PasswordScreenState extends State<PasswordScreen> with TickerProviderStateMixin {
  late TextEditingController passwordController;
  late AnimationController passwordAnimationController;
  late Animation<double> _animation;
  bool isCorrect = false;
  bool buttonState = false;

  void _sendPassword() async {
    isCorrect = await checkPassword();
    if (isCorrect) {
      Navigator.pop(context);
    } else {
      setState(() {
        passwordController.text = '';
      });
      passwordAnimationController.forward();
    }
  }

  @override
  void initState() {
    super.initState();
    passwordController = controllers.passwordController;
    passwordController.addListener(_changeButtonState);
    passwordAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 24)
        .chain(CurveTween(curve: Curves.elasticIn))
        .animate(passwordAnimationController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          passwordAnimationController.reverse();
        }
      });
  }

  void _changeButtonState() {
    setState(() {
      buttonState = passwordController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    passwordController.removeListener(_changeButtonState);
    passwordAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 28, 28),
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: columnPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OsaSignTitle(titleText: 'Enter your password 🔐'),
            const SizedBox(height: 20),
            OsaSignInput(controller: passwordController, hint: 'password', animation: _animation),
            const SizedBox(height: 20),
            OsaSignButton(doSomething: _sendPassword, labelText: 'Continue', isEnable: buttonState),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
