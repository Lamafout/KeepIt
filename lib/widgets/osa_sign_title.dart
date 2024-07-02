import 'package:flutter/material.dart';

class OsaSignTitle extends StatelessWidget {
  final String titleText;

  OsaSignTitle({required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        titleText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}