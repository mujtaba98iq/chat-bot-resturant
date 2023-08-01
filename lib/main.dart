import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:new_mu/authentication/welcome.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  runApp( MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey,
          appBarTheme: const AppBarTheme(color: Colors.purple),
          textTheme:
              const TextTheme(headline1: TextStyle(color: Colors.white))),
      home: AnimatedSplashScreen(
        splash: Lottie.asset('assets/food2.json'),
        nextScreen: const Welcome(),
        backgroundColor: Colors.orange,
        splashIconSize: 500,
        splashTransition: SplashTransition.fadeTransition,
        animationDuration: const Duration(seconds: 1),
        duration: 3000,
      ),
    );
  }
}
