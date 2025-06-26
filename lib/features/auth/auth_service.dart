import 'package:flutter/material.dart';

ValueNotifier<AuthService> authService = ValueNotifier(AuthService());

class AuthService {
  Future<bool> login(String username, String password) async {
    return username == 'admin' && password == '1234';
  }

  Future<dynamic> register() async {}
}
