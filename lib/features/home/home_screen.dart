import 'package:diosa_client/shared/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: const AppDrawer(), // shared drawer
      body: const Center(child: Text('Welcome Home!')),
    );
  }
}
