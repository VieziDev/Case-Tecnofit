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
  WidgetsFlutterBinding.ensureInitialized();
  final getIt = GetIt.instance;
  final sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());
  getIt.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(getIt<AuthRepository>()));

  runApp(MyApp(
    sharedPreferences: sharedPreferences,
  ));
}

class MyApp extends StatelessWidget {
  final SharedPreferences sharedPreferences;
  const MyApp({super.key, required this.sharedPreferences});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) =>
                ThemeProvider(sharedPreferences)), // Provider para o tema
        ChangeNotifierProvider(
            create: (context) => AuthProvider(loginUseCase: GetIt.I.get())),
      ],
      child: Consumer2<ThemeProvider, AuthProvider>(
        builder: (context, themeProvider, authProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Login App',
            theme: MaterialTheme(createTextTheme(context, "Heebo", "Syne"))
                .light(),
            darkTheme:
                MaterialTheme(createTextTheme(context, "Heebo", "Syne")).dark(),
            themeMode: themeProvider.themeMode,
            initialRoute: authProvider.user != null ? '/home' : '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => const HomePage(),
            },
          );
        },
      ),
    );
  }
}
