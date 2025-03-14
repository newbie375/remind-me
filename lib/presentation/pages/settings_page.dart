import 'package:flutter/material.dart';
import 'package:reminder_me/presentation/widgets/shared/custom_buttom_navigation.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // Language change setting using ListTile
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 8.0), // Adjust the padding
              title: const Text('Change Language'),
              trailing: DropdownButton<String>(
                value: 'English', // Set default value
                items: const [
                  DropdownMenuItem(
                    value: 'English',
                    child: Text('English'),
                  ),
                  DropdownMenuItem(
                    value: 'Spanish',
                    child: Text('Español'),
                  ),
                  DropdownMenuItem(
                    value: 'French',
                    child: Text('日本語'),
                  ),
                ],
                onChanged: (String? newValue) {
                  // Handle language change here
                  debugPrint('Selected Language: $newValue');
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(currentIndex: 1),  // Set current index to 1 (Settings page)
    );
  }
}
