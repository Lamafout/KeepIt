import 'package:flutter/material.dart';

class OsaSignInput extends StatelessWidget {
  TextEditingController _ctrl = TextEditingController();
  void sendInputed(){
    print(_ctrl.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        
        controller: _ctrl,
        decoration: InputDecoration(
          hintText: 'username',
          hintStyle: TextStyle(
            color: Colors.white
          ),
          filled: true,
          fillColor: Color(0x333333),
          label: Text(
            'username',
            style: TextStyle(
              color: Colors.white
            ),
          )
        ),
      ),
    );
  }
}