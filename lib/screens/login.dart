import 'package:flutter/material.dart';
import 'package:match_mate/screens/major.dart';

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
                          'assets/images/matchMateLogo.png',
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

              SizedBox(height: 10), // Уменьшаем вертикальный отступ

              // Кнопка Login с красным фоном и круглыми краями на всю ширину экрана
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MajorScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).colorScheme.surface, // Красный цвет фона
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Уменьшаем радиус для создания менее круглых краев
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15), // Уменьшаем высоту кнопки
                  minimumSize: Size(double.infinity, 0), // Ширина кнопки на всю ширину экрана
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface, // Белый текст
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(height: 20), // Уменьшаем вертикальный отступ

              // Текст "OR" посередине полосы
              Stack(
                children: [
                  Container(
                    height: 1, // Высота полосы
                    color: Colors.grey, // Серый цвет
                  ),
                  Center(
                    child: Container(
                      color: Colors.black, // Цвет фона текста
                      padding: EdgeInsets.symmetric(horizontal: 10), // Отступы вокруг текста
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
                      primary: Colors.red, // Красный цвет фона
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Уменьшаем радиус для создания менее круглых краев
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Устанавливаем горизонтальные отступы
                      minimumSize: Size(150, 0), // Ширина кнопки
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
                      primary: Colors.red, // Красный цвет фона
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Уменьшаем радиус для создания менее круглых краев
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Устанавливаем горизонтальные отступы
                      minimumSize: Size(150, 0), // Ширина кнопки
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
