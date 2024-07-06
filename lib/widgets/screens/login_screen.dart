import 'package:flutter/material.dart';

import '../osa_sign_button.dart';
import '../osa_sign_input.dart';
import '../osa_sign_title.dart';
import '../../requests/username_request.dart';
import './password_screen.dart';
import './networks_screen.dart';

// consts of sizes of params of widgets
const columnPadding = 40.0;

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController loginController = TextEditingController();
  bool buttonState = false;
  bool isFound = false;

  @override
  void initState() {
    super.initState();
    loginController.addListener(_changeButtonState);
  }

  @override
  void dispose() {
    loginController.removeListener(_changeButtonState);
    loginController.dispose();
    super.dispose();
  }

  void _changeButtonState() {
    setState(() {
      buttonState = loginController.text.isNotEmpty;
    });
  }

  void _sendUsername() async {
    isFound = await sendUsername(inputUsername: loginController.text);
    if (isFound){
      Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordScreen()));
    } else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => NetworksScreen()));
    }
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
        padding: EdgeInsets.symmetric(horizontal: columnPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OsaSignTitle(titleText: 'Hi 👋 Who are you?'),
            SizedBox(height: 20),
            OsaSignInput(controller: loginController, hint: 'username'),
            SizedBox(height: 20),
            OsaSignButton(
              doSomething: _sendUsername,
              labelText: 'Continue',
              isEnable: buttonState,
            ),
          ],
        ),
      ),
    );
  }
}
