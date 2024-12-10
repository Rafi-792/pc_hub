import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pc_hub/firebase_options.dart';
import 'src/pages/splash_screen.dart';
import 'navigation_menu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: SplashScreen(),
      home: NavigationMenu(),
    );
  }
}
