import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OsaSignIcon extends StatelessWidget {
  final IconData icon;
  final Function doSomething;
  OsaSignIcon({required this.icon, required this.doSomething});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,

      child: IconButton(
        onPressed: (){},
        icon: FaIcon(
          icon,
          color: Colors.white,
        )
      ),
    );
  }
}