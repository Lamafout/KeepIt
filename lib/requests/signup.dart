import 'package:http/http.dart' as http;
import 'dart:convert';
import '../main.dart';

import '../classes/user.dart';

const defaultPath = 'https/keep-it.mark-anikin.ru';

Future<User> signUp() async{
  final uri = Uri.parse('$defaultPath/api/users/signup');

  final response = await http.post(
    uri,
    body: jsonEncode({
      'code': controllers.codeController.text,
      'password': controllers.passwordController.text,
      'username': controllers.usernameController.text,  
    })
  );

  //TODO избежать крашей при ошибке подключения к серверу, додумать кэширование

  if (response.statusCode == 200){
    final responseBody = jsonDecode(response.body);
    User user = User(responseBody['user']['id'], responseBody['user']['username'], responseBody['user']['tg_username'], responseBody['user']['email'], responseBody['user']['avatar']);
    return user;
  }
  else throw Exception('Fail to load data');
}