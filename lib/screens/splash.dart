import 'package:flutter/material.dart';
import 'package:match_mate/screens/auth.dart';
import 'package:match_mate/screens/login.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/hobbyStart.png', // Путь к локальной картинке
                    width: 300, // Увеличьте размер изображения
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Find Your Perfect Match',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Discover potential partners with similar interests',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Навигация на новый экран при нажатии кнопки
                Navigator.of(context).push(
                  MaterialPageRoute(
                    //builder: (context) => AuthScreen(),
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text('Get Started'),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Don't have an account? Sign up now",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
