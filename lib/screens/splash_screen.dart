import 'package:flutter/material.dart';
import 'package:match_mate/screens/screen_manager.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Получаем текущую тему
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/hobby.png',
                    width: 300,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Find Your Perfect Match',
                    style: TextStyle(
                      // color: theme.textTheme.bodyMedium?.color,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Discover potential partners with similar interests',
                    style: TextStyle(
                      color: theme.textTheme.bodyMedium?.color,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                ScreenManager.openLoginScreen(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).hintColor, //  цвет кнопки
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                textStyle: TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder( // Закругленные края
                  borderRadius: BorderRadius.circular(30), // Радиус 30 пикселей
                ),
              ),
              child: Text('Get Started'),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Don't have an account? Sign up now",
                style: TextStyle(
                  color: theme.textTheme.bodyMedium?.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
