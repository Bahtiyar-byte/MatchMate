import 'package:flutter/material.dart';
import 'package:match_mate/screens/auth.dart';
import 'package:match_mate/screens/splash_screen.dart';
import 'package:match_mate/story_notifier.dart';
import 'package:provider/provider.dart';
import 'package:match_mate/datastore/data_context.dart';
import 'package:match_mate/datastore/data_hobby.dart';
import 'package:match_mate/datastore/data_tip.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

  /*
  Tip tip1 = new Tip(id:1, name:'Sport', description:'Sport sport', imageUrl:'');
  Tip tip2 = new Tip(id:2, name:'Tourism', description:'tour////', imageUrl:'');

  Hobby h1 = new Hobby(id:1, name:'football', description:'ffff', imageUrl:'', tip: tip1 );
  Hobby h2 = new Hobby(id:2, name:'swim', description:'sssss', imageUrl:'', tip: tip1 );
  Hobby h3 = new Hobby(id:3, name:'bike', description:'bbbb', imageUrl:'', tip: tip1 );

  Hobby h4 = new Hobby(id:4, name:'tracking', description:'ttttt', imageUrl:'', tip: tip2 );

  Person p1 = new Person(id:1, name:'Petr', description:'Perovitch', imageUrl:'');

  p1.subscribeToHobby(h1);
  p1.subscribeToHobby(h2);
  p1.subscribeToHobby(h4);
  p1.subscribeToHobby(h3);
  */

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StoryNotifier()),
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
