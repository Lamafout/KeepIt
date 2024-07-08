import 'package:http/http.dart' as http;
import 'dart:convert';

const baseUrl = 'https://keep-it.mark-anikin.ru/api';

Future<int> sendUsername({required String inputUsername}) async {
  try {
    final response = await http.get(
      Uri.parse('$baseUrl/users/check-username?username=$inputUsername'),
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      if (responseBody['found'] == true) return 1;
      else if (responseBody['found'] == false) return 2;
      return 0;
    } else {
      throw Exception('Failed to load data');
    }
  } on http.ClientException catch (e) {
    print('Network error: $e');
    return 0;
  } catch (e) {
    print('An error occurred: $e');
    return 0;
  }
}
