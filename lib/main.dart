import 'package:flutter/material.dart';
import 'colors.dart';
import 'screens/assets.dart';
import 'screens/construct.dart';
import 'screens/settings.dart';
import 'screens/signing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MTL Liquid Signer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: AppColors.yellow,
        ).copyWith(
          secondary: Colors.green,
        ),
      ),
      initialRoute: '/signing',
      routes: {
        '/assets': (context) => const AssetsScreen(),
        '/signing': (context) => const SigningScreen(),
        '/construct': (context) => const ConstructScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}
