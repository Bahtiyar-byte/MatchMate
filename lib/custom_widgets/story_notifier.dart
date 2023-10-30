import 'package:flutter/material.dart';
import 'package:match_mate/datastore/data_person.dart';  // Импортируйте ваш класс Person

class StoryNotifier extends ChangeNotifier {
  Person? _selectedPerson;

  Person? get selectedPerson => _selectedPerson;

  void selectPerson(Person person) {
    _selectedPerson = person;
    notifyListeners();
  }
}
