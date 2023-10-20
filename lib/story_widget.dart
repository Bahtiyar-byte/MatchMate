import 'package:flutter/material.dart';
import 'package:match_mate/story.dart';
import 'package:match_mate/story_manager.dart';

class StoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: StoryManager.stories.length,
        itemBuilder: (context, index) {
          final story = StoryManager.stories[index];
          return Column(
            children: [
              Container(
                width: 98, // Увеличено, чтобы учесть новые ободки
                height: 98,
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container( // Внешний белый  ободок
                      width: 94,
                      height: 94,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 2.0,
                        ),
                      ),
                    ),
                    Container( // Внутренний черный ободок
                      width: 88,
                      height: 88,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white24,
                          width: 3.0,
                        ),
                      ),
                    ),
                    Container( // Изображение сторис
                      width: 82,
                      height: 82,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(story.image),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Text(
                story.name,
                style: TextStyle(
                  fontSize: 14, // Увеличенный размер шрифта
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic, // Наклонный стиль
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
