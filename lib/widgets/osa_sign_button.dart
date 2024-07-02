import 'package:flutter/material.dart';

final buttonPaddingValue = 10.0;

class OsaSignButton extends StatefulWidget {
  final Function doSomething;
  final String labelText;
  bool? isEnable;

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
            child: (widget.isEnable == true)
            ? TextButton(
              onPressed: widget.doSomething(),
              
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: buttonPaddingValue * 7,
                  vertical: buttonPaddingValue
                )
              ),
              child: Text(
                widget.labelText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300
                ),
              ),
            )
            : TextButton(
              onPressed: null, 
              
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 108, 108, 108),
                padding: EdgeInsets.symmetric(
                  horizontal: buttonPaddingValue * 7,
                  vertical: buttonPaddingValue
                )
              ),
              child: Text(
                widget.labelText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300
                ),
            )
          ),
          ),
        ],
      ),
    );
  }
}