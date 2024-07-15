import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sign_window/main.dart';

const baseUrl = 'https://keep-it.mark-anikin.ru/api';

//TODO сделать так, чтобы отсутствие данных не вызывало исключение
Future<bool> checkPassword() async{
  final uri = Uri.parse('$baseUrl/users/login');
  final response = await http.post(
    uri,
    body: json.encode({
      'password': controllers.passwordController.text,
      'username': controllers.usernameController.text,
    })
  );

  if (response.statusCode == 200){
    return true;
  } else{
    return false;
  }
    
}