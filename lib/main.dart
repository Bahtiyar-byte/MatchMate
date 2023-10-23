import 'package:flutter/material.dart';
import 'package:match_mate/screens/auth.dart';
import 'package:match_mate/screens/splash.dart';

//import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';

/*
final colorScheme = ColorScheme.fromSeed(seedColor: Colors.green);


final primaryColor = colorScheme.primary; // Основной цвет (светло-зеленый)
final secondaryColor = colorScheme.secondary; // Вторичный цвет (темно-зеленый)
final backgroundColor = colorScheme.background; // Цвет фона
final buttonColor = colorScheme.surface; // Цвет для кнопок
final textColor = colorScheme.onSurface; // Цвет текста на поверхности
*/

void main() async {
  // Инициализация Firebase
  WidgetsFlutterBinding.ensureInitialized();
/*
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false, // режим дебага

      title: 'Match Mate',
      theme: ThemeData(
        useMaterial3: false,
        primaryColor: Colors.red, // Цвет для фона кнопок
        hintColor: Colors.blueGrey, // Второй цвет фона кнопок
        dividerColor: Colors.grey, // Цвет для линий


        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.grey), // Цвет для текста1
          bodyMedium: TextStyle(color: Colors.white), // Цвет для текста2

        ), colorScheme: ColorScheme.fromSeed(seedColor: Colors.black).copyWith(background: Colors.black),
      ),
      home: SplashScreen(),
    );
  }
}
