import 'story.dart';

class StoryManager {
  static final List<Story> stories = [
    Story(
      id: 1,
      name: "John",
      text: "Having fun!",
      image: "assets/stories/story1.jpg",
    ),
    Story(
      id: 2,
      name: "Alice",
      text: "Exploring the world",
      image: "assets/stories/story2.jpg",
    ),
    // Добавьте другие объекты Story по аналогии
  ];
}