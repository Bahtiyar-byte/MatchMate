import 'package:flutter/material.dart';
import 'package:match_mate/cards_swipe_widget.dart';
import 'package:match_mate/people_list.dart';
import 'package:match_mate/popup_menu_widget.dart';
import 'package:match_mate/story_widget.dart';

class MajorScreen extends StatelessWidget {
  final PeopleList peopleList = PeopleList.generatePeople();

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
          CardsSwipeWidget(peopleList: peopleList),
        ],
      ),
    );
  }
}
