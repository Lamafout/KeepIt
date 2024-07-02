import 'package:flutter/material.dart';

final buttonPaddingValue = 10.0;

class OsaSignButton extends StatelessWidget {
  final Function doSomething;
  final String labelText;

  OsaSignButton({required this.doSomething, required this.labelText});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: doSomething(),

        

        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: buttonPaddingValue * 7,
            vertical: buttonPaddingValue
          )
        ),
        child: Text(
          labelText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18
          ),
        ),
      ),
    );
  }
}