import 'package:flutter/material.dart';
import 'package:match_mate/screens/tips_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(10), // Уменьшаем отступы для изображения
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: GestureDetector(
                          onTap: () {
                          Navigator.of(context).pop(); // Вернуться на предыдущий экран
                        },
                        child: Image.asset(
                          'assets/images/mateLogin.png',
                          width: 200,
                        ),
                      ),
                    ),
                    Text(
                      'MatchMate',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white), // Уменьшаем размер текста
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Find your perfect match!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.white), // Уменьшаем размер текста
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Уменьшаем вертикальный отступ

              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.grey[700],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0), // Уменьшаем радиус для создания менее круглых краев
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20), // Уменьшаем вертикальный отступ
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.grey[700],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0), // Уменьшаем радиус для создания менее круглых краев
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text('Forgot your password?', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    // Handle forgot password logic here
                  },
                ),
              ),

              SizedBox(height: 10),


              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TipsScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(

                  primary: Theme.of(context).hintColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  minimumSize: Size(double.infinity, 0),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Текст "OR" посередине полосы
              Stack(
                children: [
                  Container(
                    height: 1,
                    color: Colors.grey, // Серый цвет
                  ),
                  Center(
                    child: Container(
                      color: Colors.black, // Цвет фона текста
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'or',
                        style: TextStyle(
                          color: Colors.white, // Белый цвет текста
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10), // Уменьшаем вертикальный отступ

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Обработчик нажатия кнопки Facebook
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).hintColor, //  цвет фона
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Уменьшаем радиус для создания менее круглых краев
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Устанавливаем горизонтальные отступы
                      minimumSize: Size(145, 0), // Ширина кнопки
                    ),
                    child: Text(
                      'Facebook',
                      style: TextStyle(
                        color: Colors.white, // Белый текст
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Отступ между кнопками
                  ElevatedButton(
                    onPressed: () {
                      // Обработчик нажатия кнопки Google
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).hintColor, //  цвет фона
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Уменьшаем радиус для создания менее круглых краев
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Устанавливаем горизонтальные отступы
                      minimumSize: Size(145, 0), // Ширина кнопки
                    ),
                    child: Text(
                      'Google',
                      style: TextStyle(
                        color: Colors.white, // Белый текст
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),



              SizedBox(height: 10), // Уменьшаем вертикальный отступ

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Need an account?', style: TextStyle(color: Colors.white)),
                  TextButton(
                    child: Text('Sign up', style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      // Handle sign-up logic here
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
