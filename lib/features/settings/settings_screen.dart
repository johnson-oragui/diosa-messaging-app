import 'package:diosa_client/features/settings/settings_service.dart';
import 'package:diosa_client/shared/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool? _clearEmailOnLogout;

  final SettingsService _settingsService = settingsService.value;

  @override
  void initState() {
    super.initState();

    _settingsService.getSavedEmailOnLogoutOption().then((bool? onValue) {
      debugPrint('save email on logout: $onValue');
      setState(() {
        _clearEmailOnLogout = onValue ?? false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Row(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                const Text('Settings', style: TextStyle(fontSize: 24)),
                const SizedBox(height: 20),
                SwitchListTile(
                  title: Text('Clear email on logout'),
                  subtitle: const Text('Remove saved email when you logout'),
                  value: _clearEmailOnLogout ?? false,
                  onChanged: (bool newValue) async {
                    await _settingsService.savedEmailOnLogoutOption(newValue);
                    setState(() {
                      _clearEmailOnLogout = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      title: 'Settings',
    );
  }
}
