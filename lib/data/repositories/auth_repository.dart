import 'package:case_tecnofit/data/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthRepository {
  final String apiUrl = "https://reqres.in/api/login";
  final String userDetailUrl = "https://reqres.in/api/users";

  // Função para realizar o login na API
  Future<String> login(String email, String password) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      body: {
        'email': email,
        'password': password,
      },
    );

    // Se a resposta for bem-sucedida (status 200), retorna o token de autenticação
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final token = json['token'];

      return token;
    }
    // Caso o login seja inválido (status 400), lança uma exceção
    else if (response.statusCode == 400) {
      throw Exception('Invalid email or password');
    } else {
      throw Exception('Failed to log in');
    }
  }

  // Função para obter os detalhes de um usuário específico pela API
  Future<UserModel> getUserDetails(int userId) async {
    final response = await http.get(Uri.parse('$userDetailUrl/$userId'));

    // Se a resposta for bem-sucedida (status 200), retorna os dados do usuário
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return UserModel.fromJson(json['data']);
    } else {
      throw Exception('Failed to load user details');
    }
  }
}
