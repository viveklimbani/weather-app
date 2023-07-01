import 'package:flutter/material.dart';
import 'package:weather_app/feature/splash/splash_screen.dart';

void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // initialRoute: 'spalsh screen',
      // routes: {
      //   'splash_screen': (context) => const SplashScreen(),
      //   'login_screen': (context) => const LoginScreen(),
      //   'registration_screen': (context) => const RegistrationScreen(),
      //   'home_screen': (context) => const HomeScreen(),
      // },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
