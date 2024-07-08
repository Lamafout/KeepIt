import 'package:flutter/material.dart';

final inputPaddingValue = 10.0;
final inputRadiusValue = 30.0;

class OsaSignInput extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Animation<double> animation;
  void sendInputed(){
    print(controller.text);
  }

  OsaSignInput({required this.controller, required this.hint, this.animation = const AlwaysStoppedAnimation(0.0)});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,

      builder: (context, child) {
        return  Container(
          margin: EdgeInsets.symmetric(horizontal: animation.value.clamp(0.0, double.infinity)),
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
      
            contentPadding: EdgeInsets.symmetric(
              horizontal: inputPaddingValue,
              vertical: inputPaddingValue * 1.5
            ),
            //hint
            hintText: hint,
            hintStyle: TextStyle(
              color: Color.fromARGB(255, 92, 92, 92),
              fontWeight: FontWeight.w300
            ),
            filled: true,
            fillColor: Color.fromARGB(255, 51, 51, 51),
          ),
        ),
      );
      },
    );
  }
}