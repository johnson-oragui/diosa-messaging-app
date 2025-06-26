import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

ValueNotifier<SettingsService> settingsService = ValueNotifier(
  SettingsService(),
);

class SettingsService {
  Future<void> savedEmailOnLogoutOption(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("save_email_on_logout", value);
  }

  Future<void> clearSavedEmailOnLogout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("last_logged_in");
  }

  Future<bool?> getSavedEmailOnLogoutOption() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("save_email_on_logout");
  }
}
