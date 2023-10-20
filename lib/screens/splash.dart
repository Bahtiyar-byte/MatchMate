import 'package:flutter/material.dart';
import 'package:match_mate/screens/auth.dart';
import 'package:match_mate/screens/login.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Получаем текущую тему
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/hobbyStart.png',
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: theme.primaryColor,
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
