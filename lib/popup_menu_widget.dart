import 'package:flutter/material.dart';

class PopupMenuWidget extends StatelessWidget {
  final void Function(String) onMenuItemSelected;

  PopupMenuWidget({required this.onMenuItemSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          //color: Colors.white,
          shape: BoxShape.circle,
          //border: Border.all(color: Colors.white, width: 2),
        ),
        child: Image.asset('assets/images/menu.png', width: 48, height: 48),
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Text('About'),
          value: 'about',
        ),
        PopupMenuItem(
          child: Text('Cabinet'),
          value: 'cabinet',
        ),
        PopupMenuItem(
          child: Text('Settings'),
          value: 'settings',
        ),
        PopupMenuItem(
          child: Text('Log Out'),
          value: 'logout',
        ),
      ],
      onSelected: onMenuItemSelected,
    );
  }
}
