import 'package:flutter/material.dart';
import 'package:sign_window/requests/check_verify_code.dart';
import 'package:sign_window/widgets/screens/sign_in_up/start_work_screen.dart';

import '../../osa_sign_button.dart';
import '../../osa_sign_input.dart';
import '../../osa_sign_title.dart';
import '../../../main.dart';

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
    ? Navigator.push(context, MaterialPageRoute(builder: (context) => const StartWorkScreen()))
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
      backgroundColor: const Color.fromARGB(255, 28, 28, 28),
       appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 28, 28),
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(columnPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            OsaSignTitle(titleText: 'Enter your verify code 📫'),
            const SizedBox(height: 20),
            OsaSignInput(controller: verifyController, hint: 'code'),
            const SizedBox(height: 20),
            OsaSignButton(doSomething: _sendVerify, labelText: 'Submit'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}