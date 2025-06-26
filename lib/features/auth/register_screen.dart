import 'package:diosa_client/shared/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: const Center(child: Text('Register')),
      title: 'Register',
    );
  }
}
