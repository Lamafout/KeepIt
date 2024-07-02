import 'package:flutter/material.dart';

import './widgets/osa_sign_input.dart';
import './widgets/osa_sign_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CoreWidget();
  }
}

class CoreWidget extends StatefulWidget {
  const CoreWidget({super.key});

  @override
  State<CoreWidget> createState() => _CoreWidgetState();
}

class _CoreWidgetState extends State<CoreWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 28, 28),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              OsaSignInput(controller: TextEditingController()),
              OsaSignButton(doSomething: (){}, labelText: 'Send',),
            ],
          ),
      ),
    );
  }
}