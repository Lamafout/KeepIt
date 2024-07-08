import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sign_window/main.dart';

const baseUrl = 'https://keep-it.mark-anikin.ru/api';

Future<bool> checkVerifyCode() async{
  final uri = Uri.parse('$baseUrl/users/check-code');
  final response = await http.post(
    uri,
    body: json.encode({
      'code': controllers.codeController.text,
      'username': controllers.usernameController.text
    })
  );

  if (response.statusCode == 200){
    final responseBody = json.decode(response.body);
    return (responseBody['valid'] == true) ? true : false;
  }else{
    throw Exception('Failed to load data');
  }
}