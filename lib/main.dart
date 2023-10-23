import 'package:flutter/material.dart';
import 'package:match_mate/screens/auth.dart';
import 'package:match_mate/screens/splash.dart';
import 'package:match_mate/story_notifier.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StoryNotifier(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Match Mate',
        theme: ThemeData(
          useMaterial3: false,
          primaryColor: Colors.red,
          hintColor: Colors.blueGrey,
          dividerColor: Colors.grey,
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: Colors.grey),
            bodyMedium: TextStyle(color: Colors.white),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black).copyWith(background: Colors.black),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
