import 'story.dart';

class StoryManager {
  static final List<Story> stories = [
    Story(
      id: 1,
      name: "airsoft",
      text: "Having fun!",
      image: "assets/stories/1.jpg",
    ),
    Story(
      id: 2,
      name: "tennis",
      text: "Exploring the world",
      image: "assets/stories/2.jpg",
    ),
    // Добавьте другие объекты Story по аналогии
  ];
}