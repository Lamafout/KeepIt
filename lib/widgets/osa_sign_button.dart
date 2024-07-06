import 'package:flutter/material.dart';

final buttonPaddingValue = 10.0;

class OsaSignButton extends StatefulWidget {
  final Function doSomething;
  final String labelText;
  final bool? isEnable;

  OsaSignButton({required this.doSomething, required this.labelText, this.isEnable});

  @override
  State<OsaSignButton> createState() => _OsaSignButtonState();
}

class _OsaSignButtonState extends State<OsaSignButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: widget.isEnable == true ? () => widget.doSomething() : null,
              style: TextButton.styleFrom(
                backgroundColor: widget.isEnable == true ? Colors.white : Color.fromARGB(255, 108, 108, 108),
                padding: EdgeInsets.symmetric(
                  horizontal: buttonPaddingValue * 7,
                  vertical: buttonPaddingValue,
                ),
              ),
              child: Text(
                widget.labelText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
