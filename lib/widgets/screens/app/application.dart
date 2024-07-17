import 'package:flutter/material.dart';

import '../../../classes/user.dart';

class ApplicationScreen extends StatefulWidget {
  final User user;

  ApplicationScreen({required this.user});

  @override
  State<ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Я помню'),
            Text('а хотя нет, не помню')
          ],
        ),
      ),
    );
  }
}