import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../osa_sign_title.dart';
import '../../osa_sign_icon.dart';

const double gap = 20.0;
const columnPadding = 40.0;

class NetworksScreen extends StatefulWidget {
  const NetworksScreen({super.key});

  @override
  State<NetworksScreen> createState() => _NetworksScreenState();
}

class _NetworksScreenState extends State<NetworksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 28, 28),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: columnPadding,
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            OsaSignTitle(titleText: 'Let\'s verify your account 🔎'),
            SizedBox(height: gap),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                OsaSignIcon(icon: FontAwesomeIcons.telegram, doSomething: (){}, iconName: 'use telegram',),
                SizedBox(width: gap*2),
                OsaSignIcon(icon: FontAwesomeIcons.envelope, doSomething: (){}, iconName: 'use email',),
              ],
            )
          ],
        ),
      ),
    );
  }
}