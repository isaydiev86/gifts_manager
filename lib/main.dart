import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gifts_manager/di/service_locator.dart';
import 'package:gifts_manager/presentation/splash/view/splash_page.dart';
import 'package:gifts_manager/presentation/theme/theme.dart';
import 'package:gifts_manager/simple_bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      //themeMode: ThemeMode.light,
      home: const SplashPage(),
    );
  }
}
