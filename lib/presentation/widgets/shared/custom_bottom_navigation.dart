import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigation({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,  // Set the current index
      onTap: (index) {
        if (index == 0) {
          context.go('/');  // Navigate to Home page
        } else if (index == 1) {
          context.go('/settings');  // Navigate to Settings page
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),  // Home icon
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),  // Settings icon
          label: 'Settings',
        ),
      ],
    );
  }
}
