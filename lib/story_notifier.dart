import 'package:flutter/material.dart';
import 'package:match_mate/story.dart';
import 'package:match_mate/story_manager.dart';

class StoryNotifier extends ChangeNotifier {
  int _selectedStory = -1;

  int get selectedStory => _selectedStory;

  void selectStory(int index) {
    _selectedStory = index;
    notifyListeners();
  }
}