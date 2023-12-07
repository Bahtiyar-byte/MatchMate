import 'package:flutter/material.dart';
import 'package:match_mate/screens/splash_screen.dart';
import 'package:match_mate/custom_widgets/mates_top_list_notifier.dart';
import 'package:provider/provider.dart';
import 'package:match_mate/datastore/data_context.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MatesTopListNotifier()),
        ChangeNotifierProvider(create: (context) => DataContext()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Match Mate',
        theme: ThemeData(
          useMaterial3: false,
          primaryColor: Colors.red,
          hintColor: Colors.blueGrey,
          dividerColor: Colors.grey,

          popupMenuTheme: PopupMenuThemeData(
            color: Colors.grey[850], // Темно-серый цвет фона
            textStyle: TextStyle(color: Colors.white), // Белый цвет текста
          ),

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
