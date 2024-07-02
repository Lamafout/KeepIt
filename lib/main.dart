import 'package:flutter/material.dart';

import './widgets/screens/login_screen.dart';
import 'package:sign_window/widgets/screens/password_screen.dart';
import './widgets/screens/networks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CoreWidget();
  }
}

class CoreWidget extends StatefulWidget {
  const CoreWidget({super.key});

  @override
  State<CoreWidget> createState() => _CoreWidgetState();
}

class _CoreWidgetState extends State<CoreWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NetworksScreen(),
    );
  }
}