import 'package:flutter/material.dart';

import '../../../classes/user.dart';
import '../../osa_note_card.dart';

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
            OsaNoteCard(text: 'Hello', picture: '', ico:''),
          ],
        ),
      ),
    );
  }
}