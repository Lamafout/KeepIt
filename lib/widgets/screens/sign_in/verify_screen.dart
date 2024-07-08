import 'package:flutter/material.dart';

import '../../osa_sign_button.dart';
import '../../osa_sign_input.dart';
import '../../osa_sign_title.dart';

const columnPadding = 40.0;

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController verifyController = TextEditingController();
  void _sendVerify(){

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
          ],
        ),
      ),
    );
  }
}