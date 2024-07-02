import 'package:http/http.dart' as http;
import 'dart:convert';

const baseUrl = 'placeholder';

Future<bool> sendUsername({required String inputUsername}) async{
  final response = await http.get(
    Uri(
      path: '$baseUrl/api/check-username?username=$inputUsername'
    )
  );
  
  if (response.statusCode == 200){
    final responseBody = jsonDecode(response.body);
    return responseBody['found'];
  }
  else throw Exception('Failed to load data');
}