import 'package:http/http.dart' as http;
import 'dart:convert';

const baseUrl = 'http://localhost:8080';

Future<bool> sendUsername({required String inputUsername}) async {
  try {
    final response = await http.get(
      Uri.parse('$baseUrl/api/check-username?username=$inputUsername'),
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      return responseBody['found'];
    } else {
      throw Exception('Failed to load data');
    }
  } on http.ClientException catch (e) {
    print('Network error: $e');
    return false;
  } catch (e) {
    print('An error occurred: $e');
    return false;
  }
}
