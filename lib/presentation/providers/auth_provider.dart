// lib/presentation/providers/auth_provider.dart
import 'package:flutter/material.dart';

import '../../domain/usecases/login_usecase.dart';
import '../../domain/entities/user.dart';

class AuthProvider with ChangeNotifier {
  final LoginUseCase loginUseCase;

  bool _isLoading = false;
  String? _error;
  User? _user;

  AuthProvider({required this.loginUseCase});

  bool get isLoading => _isLoading;
  String? get error => _error;
  User? get user => _user;

  Future<void> login(String email, String password, int userId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final loggedInUser = await loginUseCase.execute(email, password, userId);
      _user = loggedInUser;
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }
}
