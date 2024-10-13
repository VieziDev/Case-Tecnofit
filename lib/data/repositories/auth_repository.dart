import 'package:case_tecnofit/data/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthRepository {
  final String apiUrl = "https://reqres.in/api/login";
  final String userDetailUrl = "https://reqres.in/api/users";

  Future<String> login(String email, String password) async {
    final response = await http.post(Uri.parse(apiUrl), body: {
      'email': email,
      'password': password,
    });

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final token = json['token'];

      // Salva o token no SharedPreferences

      return token;
    } else if (response.statusCode == 400) {
      throw Exception('Invalid email or password');
    } else {
      throw Exception('Failed to log in');
    }
  }

  Future<UserModel> getUserDetails(int userId) async {
    final response = await http.get(Uri.parse('$userDetailUrl/$userId'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return UserModel.fromJson(json['data']);
    } else {
      throw Exception('Failed to load user details');
    }
  }
}
