import 'package:flutter/material.dart';
import 'package:sign_window/requests/check_verify_code.dart';

import '../../osa_sign_button.dart';
import '../../osa_sign_input.dart';
import '../../osa_sign_title.dart';
import '../../../main.dart';
import 'login_screen.dart';

const columnPadding = 40.0;

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  late TextEditingController verifyController;
  bool _buttonState = false;
  bool _isCorrect = false;
  void _sendVerify() async{
    _isCorrect = await checkVerifyCode();
    //TODO сделать по аналогии с паролем
    (_isCorrect)
    ? Navigator.push(context, MaterialPageRoute(builder: (context) => LogInScreen()))
    : (){};
  }

   @override
  void initState() {
    super.initState();
    verifyController = controllers.codeController;
    verifyController.addListener(_changeButtonState);
  }

  void _changeButtonState() {
    setState(() {
      _buttonState = verifyController.text.isNotEmpty;
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
        padding: EdgeInsets.all(columnPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            OsaSignTitle(titleText: 'Enter your verify code 📫'),
            SizedBox(height: 20),
            OsaSignInput(controller: verifyController, hint: 'code'),
            SizedBox(height: 20),
            OsaSignButton(doSomething: _sendVerify, labelText: 'Submit'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}