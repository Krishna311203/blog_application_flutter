import 'package:blog_application_flutter/core/Secrets/app_secrets.dart';
import 'package:blog_application_flutter/core/theme/theme.dart';
import 'package:blog_application_flutter/features/auth/presentation/pages/signin_page.dart';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = Supabase.initialize(
      url: AppSecrets.supaBaseUrl, anonKey: AppSecrets.anonKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      home: const SignInPage(),
    );
  }
}
