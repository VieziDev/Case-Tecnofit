import '../entities/user.dart';
import '../../data/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<User> execute(String email, String password, int userId) async {
    // Chama o login e persiste o token
    final token = await repository.login(email, password);

    // Chama o repositório para obter os detalhes do usuário
    final userModel = await repository.getUserDetails(userId);

    // Retorna o usuário com o token
    return User(
      id: userModel.id,
      email: userModel.email,
      firstName: userModel.firstName,
      lastName: userModel.lastName,
      avatar: userModel.avatar,
      token: token,
    );
  }
}
