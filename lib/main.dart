import 'package:flutter/material.dart';
import 'package:match_mate/screens/auth.dart';
import 'package:match_mate/screens/splash.dart';

//import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';

/*
final colorScheme = ColorScheme.fromSeed(seedColor: Colors.green);

// Теперь вы можете получить различные цвета из схемы, например:
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
      title: 'Match Mate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: false,
        primaryColor: Colors.red, // Цвет для фона кнопок
        hintColor: Colors.red, // Второй цвет фона
        dividerColor: Colors.grey, // Цвет для линий
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black), // Цвет для текста1
          bodyMedium: TextStyle(color: Colors.yellow), // Цвет для текста2
        ),
      ),
      home: SplashScreen(),
    );
  }
}
