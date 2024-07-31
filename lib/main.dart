import 'package:flutter/material.dart';
import 'package:sign_window/classes/user.dart';
import 'package:sign_window/widgets/screens/sign_in_up/start_work_screen.dart';

import 'widgets/screens/sign_in_up/login_screen.dart';
import 'classes/text_controllers.dart';
import 'classes/about_session.dart';

//TODO временный импорт, удалить, когда будет возможность тестить с сервера
import 'widgets/screens/app/application.dart';

final controllers = TextControllers();
final sessionInfo = SessionInfo(isFind: false, isTimeUp: false, currentUser: User.empty());

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
      home: ApplicationScreen(),
      // home: LogInScreen(),
    );
  }
}