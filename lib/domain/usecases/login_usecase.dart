import '../entities/user.dart';
import '../../data/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  // Construtor que recebe o repositório de autenticação
  LoginUseCase(this.repository);

  // Função principal que realiza o login e retorna um objeto User completo
  Future<User> execute(String email, String password, int userId) async {
    // Chama o repositório para realizar o login e obter o token
    final token = await repository.login(email, password);

    // Chama o repositório para obter os detalhes do usuário a partir do ID
    final userModel = await repository.getUserDetails(userId);

    // Retorna o objeto User preenchido com os dados do userModel e o token obtido
    return User(
      id: userModel.id,
      email: userModel.email,
      firstName: userModel.firstName,
      lastName: userModel.lastName,
      avatar: userModel.avatar,
      token: token, // Adiciona o token ao objeto User
    );
  }
}
