import 'package:flutter/material.dart';
import 'package:instagram_interection/config_app.dart';
import 'package:instagram_interection/core/enum/env.dart';
import 'package:instagram_interection/features/loading/presentation/pages/loading_page.dart';
import 'package:instagram_interection/features/login/presentation/pages/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const InstagramInterectionApp());
}

class InstagramInterectionApp extends StatelessWidget {
  const InstagramInterectionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ConfigApp.onInit(Env.prod),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingPage();
        }

        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'Poppins',
          ),
          home: const LoginPage(),
        );
      },
    );
  }
}
