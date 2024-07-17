import 'package:flutter/material.dart';

class OsaNoteCard extends StatelessWidget {
  final String text;
  final String picture;
  final String ico;

  const OsaNoteCard({required this.text, required this.picture, required this.ico});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: double.infinity * 0.7,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ],
      ),
    );
  }
}