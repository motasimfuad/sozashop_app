import 'package:flutter/material.dart';
import 'package:sozashop_app/core/themes/app_theme.dart';
import 'package:sozashop_app/presentation/screens/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const BottomNav(),
    );
  }
}
