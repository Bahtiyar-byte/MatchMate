import 'package:match_mate/datastore/data_person.dart';
import 'package:match_mate/datastore/data_hobby.dart';
import 'package:match_mate/datastore/data_tip.dart';

class DataContext {
  List<Tip> tips = [];
  List<Person> persons = [];
  Person? activePerson;

  Database() {
    activePerson = null;
  }
}