import 'package:flutter/material.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/entities/user.dart';

class AuthProvider with ChangeNotifier {
  final LoginUseCase loginUseCase;

  // Variáveis de estado para o provedor de autenticação
  bool _isLoading = false; // Indica se a operação de login está em andamento
  String? _error; // Armazena mensagens de erro, se houver
  bool _errorShown = false; // Indica se o erro foi exibido
  User? _user; // Armazena o usuário autenticado

  // Construtor que recebe o caso de uso de login
  AuthProvider({required this.loginUseCase});

  // Getters para expor o estado atual do provedor
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get errorShown => _errorShown;
  User? get user => _user;

  // Método para realizar o login
  Future<void> login(String email, String password, int userId) async {
    _isLoading = true; // Inicia o carregamento
    _error = null; // Limpa possíveis erros anteriores
    _errorShown = false;
    notifyListeners(); // Notifica os listeners para atualizar o estado da UI

    try {
      // Executa o caso de uso de login e obtém o usuário autenticado
      final loggedInUser = await loginUseCase.execute(email, password, userId);
      _user = loggedInUser; // Define o usuário autenticado
      _isLoading = false; // Finaliza o carregamento
      notifyListeners(); // Notifica os listeners novamente para atualizar o estado da UI
    } catch (e) {
      _error = e.toString(); // Captura o erro e o armazena
      _isLoading = false; // Finaliza o carregamento mesmo em caso de erro
      notifyListeners(); // Notifica os listeners sobre o erro
    }
  }

  // Método para marcar que o erro foi exibido
  void markErrorShown() {
    _errorShown = true;
  }
}
