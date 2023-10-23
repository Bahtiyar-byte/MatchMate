import 'package:match_mate/person.dart';

class PeopleList {
  final List<Person> people;

  PeopleList({required this.people});

  static PeopleList generatePeople() {
    return PeopleList(people: [
      Person(
        title: 'Alice',
        description: 'Alice, 24, is passionate about painting and art history. She enjoys visiting art galleries and creating her own artwork in her free time.',
        image: 'assets/cards/1.jpeg',
      ),
      Person(
        title: 'John',
        description: 'John is a 28-year-old who loves hiking and photography. He often spends his weekends exploring new trails and capturing the beauty of nature through his camera lens.',
        image: 'assets/cards/2.jpeg',
      ),
      Person(
        title: 'Michael',
        description: 'Michael, a 25-year-old software developer, has a keen interest in artificial intelligence and machine learning. In his free time, he works on personal projects to enhance his skills.',
        image: 'assets/cards/3.jpeg',
      ),
      Person(
        title: 'Emma',
        description: 'Emma is a 30-year-old chef who enjoys experimenting with new recipes and cooking techniques. She loves to share her culinary creations with friends and family.',
        image: 'assets/cards/4.jpeg',
      ),
      Person(
        title: 'William',
        description: 'William, a 32-year-old architect, has a great appreciation for sustainable design. He is constantly looking for ways to incorporate eco-friendly materials into his projects.',
        image: 'assets/cards/5.jpeg',
      ),
      Person(
        title: 'Sophia',
        description: 'Sophia is a 27-year-old teacher who is passionate about making a difference in her students’ lives. She enjoys reading educational research to improve her teaching methods.',
        image: 'assets/cards/6.jpeg',
      ),
      Person(
        title: 'James',
        description: 'James is a 31-year-old musician who plays the guitar in a local band. He enjoys composing his own music and performing at various venues in his city.',
        image: 'assets/cards/7.jpeg',
      ),
      Person(
        title: 'Olivia',
        description: 'Olivia, 29, is a professional photographer who specializes in wildlife photography. She travels the world to capture the beauty and diversity of different species.',
        image: 'assets/cards/8.jpeg',
      ),
      Person(
        title: 'Ethan',
        description: 'Ethan, a 33-year-old fitness instructor, is dedicated to helping others achieve their health and fitness goals. He enjoys creating workout plans and leading group fitness classes.',
        image: 'assets/cards/9.jpeg',
      ),
      Person(
        title: 'Isabella',
        description: 'Isabella is a 26-year-old graphic designer who has a passion for illustration and animation. She enjoys bringing her creative ideas to life through her artwork.',
        image: 'assets/cards/10.jpeg',
      ),
    ]);
  }
}
