import 'package:case_tecnofit/data/repositories/auth_repository.dart';
import 'package:case_tecnofit/domain/usecases/login_usecase.dart';
import 'package:case_tecnofit/presentation/pages/home_page.dart';
import 'package:case_tecnofit/presentation/pages/login_page.dart';
import 'package:case_tecnofit/presentation/providers/auth_provider.dart';
import 'package:case_tecnofit/presentation/providers/theme_provider.dart';
import 'package:case_tecnofit/theme/theme.dart';
import 'package:case_tecnofit/utils/util.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Garante que os widgets sejam inicializados corretamente
  final getIt =
      GetIt.instance; // Instância de GetIt para injeção de dependências
  final sharedPreferences = await SharedPreferences
      .getInstance(); // Obtém uma instância de SharedPreferences

  // Registra o AuthRepository para ser utilizado como singleton na aplicação
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());
  // Registra o LoginUseCase que depende de AuthRepository
  getIt.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(getIt<AuthRepository>()));

  // Inicializa a aplicação
  runApp(MyApp(
    sharedPreferences: sharedPreferences,
  ));
}

class MyApp extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  // Construtor que recebe uma instância de SharedPreferences
  const MyApp({super.key, required this.sharedPreferences});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider responsável pelo gerenciamento do tema da aplicação
        ChangeNotifierProvider(create: (_) => ThemeProvider(sharedPreferences)),
        // Provider responsável pelo gerenciamento de autenticação
        ChangeNotifierProvider(
            create: (context) => AuthProvider(loginUseCase: GetIt.I.get())),
      ],
      // Consumer2 para consumir os providers de tema e autenticação simultaneamente
      child: Consumer2<ThemeProvider, AuthProvider>(
        builder: (context, themeProvider, authProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false, // Remove a bandeira de debug
            title: 'Login App',
            // Configura o tema claro e escuro da aplicação
            theme: MaterialTheme(createTextTheme(context, "Heebo", "Syne"))
                .light(),
            darkTheme:
                MaterialTheme(createTextTheme(context, "Heebo", "Syne")).dark(),
            themeMode:
                themeProvider.themeMode, // Aplica o tema escolhido pelo usuário
            // Define a rota inicial com base na autenticação do usuário
            initialRoute: authProvider.user != null ? '/home' : '/',
            routes: {
              '/': (context) => LoginPage(), // Página de login
              '/home': (context) =>
                  const HomePage(), // Página inicial após login
            },
          );
        },
      ),
    );
  }
}
