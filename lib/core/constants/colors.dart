import 'package:flutter/material.dart';

final Map<int, Color> _primaryMap = {
  // 50: Colors.brown[50] as Color,
  // 100: Colors.brown[100] as Color,
  // 200: Colors.brown[200] as Color,
  // 300: Colors.brown[300] as Color,
  // 400: Colors.brown[400] as Color,
  // 500: Colors.brown[900] as Color,
  // 600: Colors.brown[600] as Color,
  // 700: Colors.brown[700] as Color,
  // 800: Colors.brown[800] as Color,
  // 900: Colors.brown[900] as Color,
  50: const Color(0xffeff1fb), //10%
  100: const Color(0xffd0d4f2), //20%
  200: const Color(0xffb1b7ea), //30%
  300: const Color(0xff919ae1), //40%
  400: const Color(0xff727dd8), //50%
  500: const Color(0xff626ed4), //60%
  600: const Color(0xff5863bf), //70%
  700: const Color(0xff5863bf), //80%
  800: const Color(0xff454d94), //90%
  900: const Color(0xff31376a),
};

final MaterialColor kPrimary =
    MaterialColor(const Color(0xff626ed4).value, _primaryMap);
