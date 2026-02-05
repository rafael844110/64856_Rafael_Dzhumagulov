import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Default settings values
  ThemeMode _themeMode = ThemeMode.system;
  String _language = 'en';
  String _unitSystem = 'metric';
  bool _dataSavingMode = false;
  bool _pushNotificationsEnabled = true;
  bool _emailNotificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 16),

              // Account settings
              _buildSectionHeader('Настройки аккаунта'),
              _buildAccountSettings(),

              const SizedBox(height: 16),

              // App settings
              _buildSectionHeader('Настройки приложения'),
              _buildAppSettings(),

              const SizedBox(height: 16),

              // Notification settings
              _buildSectionHeader('Настройки уведомлений'),
              _buildNotificationSettings(),

              const SizedBox(height: 16),

              // Logout and delete account
              _buildDangerZone(),

              const SizedBox(height: 32),

              // App version
              Center(
                child: Text(
                  'Версия: 1.0.0',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              const SizedBox(height: kToolbarHeight),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }

  Widget _buildAccountSettings() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          // Change password
          ListTile(
            leading: const Icon(Icons.lock_outline),
            title: const Text('Пароль'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),

          const Divider(height: 1),

          // Email verification
          ListTile(
            leading: const Icon(Icons.verified_user_outlined),
            title: const Text('Подтверждение электронной почты'),
            subtitle: Text(
              FirebaseAuth.instance.currentUser?.emailVerified == true
                  ? 'Подтверждено'
                  : 'Не подтверждено',
            ),
            trailing: FirebaseAuth.instance.currentUser?.emailVerified == true
                ? const Icon(Icons.check_circle, color: Colors.green)
                : TextButton(
                    onPressed: () => _sendVerificationEmail(),
                    child: const Text('Подтвердить'),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppSettings() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          // Theme
          ListTile(
            leading: const Icon(Icons.brightness_6_outlined),
            title: const Text('Тема'),
            trailing: DropdownButton<ThemeMode>(
              value: _themeMode,
              underline: const SizedBox(),
              items: const [
                DropdownMenuItem(
                  value: ThemeMode.system,
                  child: Text('Системная'),
                ),
                DropdownMenuItem(
                  value: ThemeMode.light,
                  child: Text('Яркий'),
                ),
                DropdownMenuItem(
                  value: ThemeMode.dark,
                  child: Text('Темный'),
                ),
              ],
              onChanged: (ThemeMode? value) {
                if (value != null) {
                  setState(() {
                    _themeMode = value;
                  });
                }
              },
            ),
          ),

          const Divider(height: 1),

          // Language
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Язык'),
            trailing: DropdownButton<String>(
              value: _language,
              underline: const SizedBox(),
              items: const [
                DropdownMenuItem(
                  value: 'en',
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: 'ru',
                  child: Text('Русский'),
                ),
                DropdownMenuItem(
                  value: 'ky',
                  child: Text('Кыргызча'),
                ),
              ],
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _language = value;
                  });
                }
              },
            ),
          ),

          const Divider(height: 1),

          // Data saving mode
          ListTile(
            leading: const Icon(Icons.data_saver_off),
            title: const Text('Режим хранения данных'),
            subtitle: const Text('Экономия трафика и ресурсов'),
            trailing: Switch(
              value: _dataSavingMode,
              onChanged: (bool value) {
                setState(() {
                  _dataSavingMode = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationSettings() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text('Пуш-уведомления'),
            trailing: Switch(
              value: _pushNotificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _pushNotificationsEnabled = value;
                });
              },
            ),
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.email_outlined),
            title: const Text('Email-уведомления'),
            trailing: Switch(
              value: _emailNotificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _emailNotificationsEnabled = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDangerZone() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.red.shade50,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Опасные действия',
              style: TextStyle(
                color: Colors.red.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.delete_forever, color: Colors.red.shade800),
            title: Text(
              'Удалить аккаунт',
              style: TextStyle(color: Colors.red.shade800),
            ),
            onTap: () => _showDeleteAccountDialog(),
          ),
        ],
      ),
    );
  }

  void _sendVerificationEmail() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Подтверждение отправлено!')),
    );
  }

  void _showDeleteAccountDialog() {
    TextEditingController passwordController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Удалить аккаунт'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Вы уверены, что хотите удалить свой аккаунт? Это действие необратимо.',
                style: TextStyle(color: Colors.red),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Введите пароль',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Отмена'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // Implement account deletion
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Аккаунт удален!')),
                );
              },
              child: const Text(
                'Удалить',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
