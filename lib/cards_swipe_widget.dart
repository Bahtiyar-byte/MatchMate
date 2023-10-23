import 'package:flutter/material.dart';
import 'package:match_mate/people_list.dart';

class CardsSwipeWidget extends StatelessWidget {
  final PeopleList peopleList;

  CardsSwipeWidget({required this.peopleList});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      flex: 3,
      child: PageView.builder(
        itemCount: peopleList.people.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final person = peopleList.people[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: theme.colorScheme.background,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(person.image, fit: BoxFit.cover),
                    SizedBox(height: 8),
                    Text(person.title, style: theme.textTheme.headline6?.copyWith(color: theme.textTheme.bodyLarge?.color)),
                    SizedBox(height: 8),
                    Text(person.description, style: TextStyle(color: theme.textTheme.bodyLarge?.color)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
