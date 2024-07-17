import 'package:flutter/material.dart';

import '../../osa_sign_button.dart';
import '../../osa_sign_title.dart';
import '../app/application.dart';
import '../../../main.dart';
import '../../../requests/signin.dart';
import '../../../requests/signup.dart';
import '../../../classes/user.dart';

const columnPadding = 40.0;

class StartWorkScreen extends StatefulWidget {
  const StartWorkScreen({super.key});

  @override
  State<StartWorkScreen> createState() => _StartWorkScreenState();
}

class _StartWorkScreenState extends State<StartWorkScreen> {
  void _startWork() async{
    late User user;
    sessionInfo.isFind ? user = await signIn() : user = await signUp();
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ApplicationScreen(user: user)), (Route<dynamic> route) => false);
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
            OsaSignTitle(titleText: 'You are welcome 🤗'),
            SizedBox(height: 20,),
            OsaSignButton(doSomething: _startWork, labelText: 'Go to notes', isEnable: true,),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
