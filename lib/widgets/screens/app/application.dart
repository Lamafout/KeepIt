import 'package:flutter/material.dart';
import 'package:sign_window/main.dart';

import '../../../classes/user.dart';
import '../../osa_note_card.dart';

const contentPadding = 20.0;

class ApplicationScreen extends StatefulWidget {
  final User user = sessionInfo.currentUser;

  ApplicationScreen();

  @override
  State<ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 28, 28),
        title: Text(
          'Last notes',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: contentPadding,
            vertical: contentPadding * 0.7
          ),
          child: Column(
            children: [
              OsaNoteCard(text: 'Hello', picture: '', source:'telegram'),
            ],
          ),
        ),
      ),
    );
  }
}