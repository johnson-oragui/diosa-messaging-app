import 'package:diosa_client/features/auth/login_screen.dart';
import 'package:diosa_client/features/auth/register_screen.dart';
import 'package:diosa_client/features/home/home_screen.dart';
import 'package:diosa_client/features/settings/settings_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const LoginScreen(),
  '/login': (context) => const LoginScreen(),
  '/home': (context) => const HomeScreen(),
  '/settings': (context) => const SettingsScreen(),
  '/register': (context) => const RegisterScreen(),
};
