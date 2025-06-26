import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListTile> listChildren = [
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        onTap: () => Navigator.pushReplacementNamed(context, '/home'),
      ),
      ListTile(
        leading: const Icon(Icons.login),
        title: const Text('Login'),
        onTap: () => Navigator.pushReplacementNamed(context, '/login'),
      ),
      ListTile(
        leading: const Icon(Icons.app_registration_rounded),
        title: const Text('Register'),
        onTap: () => Navigator.pushReplacementNamed(context, '/register'),
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text('Settings'),
        onTap: () => Navigator.pushReplacementNamed(context, '/settings'),
      ),
    ];

    // TODO: check if user is logged in or out before adding/displaying
    // logout, login, register menu item

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
          ...listChildren,
        ],
      ),
    );
  }
}
