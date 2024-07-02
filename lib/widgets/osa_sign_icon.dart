import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OsaSignIcon extends StatelessWidget {
  final IconData icon;
  final String iconName;
  final Function doSomething;
  OsaSignIcon({required this.icon, required this.doSomething, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          IconButton(
            onPressed: (){},
            icon: FaIcon(
              icon,
              color: Colors.white,
              size: 100,
            )
          ),
          Text(
            iconName,
            style: TextStyle(
              color: Colors.white,
            ),  
          )
        ],
      ),
    );
  }
}