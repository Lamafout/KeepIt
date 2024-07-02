import 'package:flutter/material.dart';

final inputPaddingValue = 20.0;
final inputRadiusValue = 30.0;

class OsaSignInput extends StatelessWidget {
  final TextEditingController controller;
  void sendInputed(){
    print(controller.text);
  }

  OsaSignInput({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        // POINT controller
        controller: controller,

        // POINT style
        style: TextStyle(
          color: Colors.white
        ),

        // POINT decoration
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(inputRadiusValue))
          ),

          contentPadding: EdgeInsets.all(inputPaddingValue),
          //hint
          hintText: 'username',
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 79, 79, 79),
            fontWeight: FontWeight.w400
          ),
          filled: true,
          fillColor: Color.fromARGB(255, 51, 51, 51),
        ),
      ),
    );
  }
}