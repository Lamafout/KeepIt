import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sign_window/main.dart';

const baseUrl = 'https://keep-it.mark-anikin.ru/api';

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
    final responseBody = response.body;
    print(responseBody);
    return true;
  } else{
    print('!!!!!!!!!!!!!!!!${controllers.usernameController.text}, ${controllers.passwordController.text}');
    return false;
  }
    
}