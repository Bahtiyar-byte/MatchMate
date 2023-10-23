import 'package:flutter/material.dart';
import 'package:match_mate/screens/login.dart';
import 'package:match_mate/story_widget.dart';
import 'package:match_mate/popup_menu_widget.dart';
import 'package:match_mate/person.dart';
import 'package:match_mate/people_list.dart';

import 'package:flutter/material.dart';

class MajorScreen extends StatelessWidget {
  final List<Map<String, String>> cards = [
    {
      'title': 'Alice',
      'description': 'Alice, 24, is passionate about painting and art history. She enjoys visiting art galleries and creating her own artwork in her free time.',
      'image': 'assets/cards/1.jpeg',
    },

    {
      'title': 'John',
      'description': 'John is a 28-year-old who loves hiking and photography. He often spends his weekends exploring new trails and capturing the beauty of nature through his camera lens.',
      'image': 'assets/cards/2.jpeg',
    },

    {
      'title': 'Michael',
      'description': 'Michael, a 25-year-old software developer, has a keen interest in artificial intelligence and machine learning. In his free time, he works on personal projects to enhance his skills.',
      'image': 'assets/cards/3.jpeg',
    },
    {
      'title': 'Emma',
      'description': 'Emma is a 30-year-old chef who enjoys experimenting with new recipes and cooking techniques. She loves to share her culinary creations with friends and family.',
      'image': 'assets/cards/4.jpeg',
    },

    {
      'title': 'William',
      'description': 'William, a 32-year-old architect, has a great appreciation for sustainable design. He is constantly looking for ways to incorporate eco-friendly materials into his projects.',
      'image': 'assets/cards/5.jpeg',
    },

    {
      'title': 'Sophia',
      'description': 'Sophia is a 27-year-old teacher who is passionate about making a difference in her students’ lives. She enjoys reading educational research to improve her teaching methods.',
      'image': 'assets/cards/6.jpeg',
    },

    {
      'title': 'James',
      'description': 'James is a 31-year-old musician who plays the guitar in a local band. He enjoys composing his own music and performing at various venues in his city.',
      'image': 'assets/cards/7.jpeg',
    },

    {
      'title': 'Olivia',
      'description': 'Olivia, 29, is a professional photographer who specializes in wildlife photography. She travels the world to capture the beauty and diversity of different species.',
      'image': 'assets/cards/8.jpeg',
    },
    {
      'title': 'Ethan',
      'description': 'Ethan, a 33-year-old fitness instructor, is dedicated to helping others achieve their health and fitness goals. He enjoys creating workout plans and leading group fitness classes.',
      'image': 'assets/cards/9.jpeg',
    },
    {
      'title': 'Isabella',
      'description': 'Isabella is a 26-year-old graphic designer who has a passion for illustration and animation. She enjoys bringing her creative ideas to life through her artwork.',
      'image': 'assets/cards/10.jpeg',
    },

  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    void handleMenuItemSelected(String value) {
      // Handle menu item selected
      if (value == 'about') {
        // on "About"
      } else if (value == 'cabinet') {
        // on "Cabinet"
      } else if (value == 'settings') {
        // on "Settings"
      } else if (value == 'logout') {
        // on "Log Out"
      }
    }

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme.colorScheme.background,
        title: Text('Match Mate', style: TextStyle(color: theme.textTheme.bodyLarge?.color)),
        centerTitle: true,
        leading: PopupMenuWidget(onMenuItemSelected: handleMenuItemSelected),
        actions: [
          InkWell(
            onTap: () {
              // Code to be executed on tap
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Image.asset('assets/images/findB.png', width: 32, height: 32),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(height: 1, color: theme.dividerColor, margin: EdgeInsets.symmetric(vertical: 8)),
          StoryWidget(),
          Container(height: 1, color: theme.dividerColor, margin: EdgeInsets.symmetric(vertical: 8)),
          Expanded(
            flex: 3,
            child: PageView.builder(
              itemCount: cards.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final card = cards[index];
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
                          Image.asset(card['image']!, fit: BoxFit.cover),
                          SizedBox(height: 8),
                          Text(card['title']!, style: theme.textTheme.headline6?.copyWith(color: theme.textTheme.bodyLarge?.color)),
                          SizedBox(height: 8),
                          Text(card['description']!, style: TextStyle(color: theme.textTheme.bodyLarge?.color)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
