import 'package:flutter/material.dart';
import 'package:match_mate/screens/auth.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // Инициализация Firebase
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Match Mate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const AuthScreen(),
    );
  }
}
