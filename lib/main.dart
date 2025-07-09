import 'package:flutter/material.dart';
import 'package:onboarding/ui/screens/create_new_account_screen.dart';
import 'package:onboarding/ui/screens/login_screen.dart';
import 'package:onboarding/ui/screens/welcome_screen.dart';

import 'package:onboarding/ui/theme/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: lightColorSchema,
        useMaterial3: true,
        fontFamily: "Poppins",
        elevatedButtonTheme: _buildElevatedButtonThemeData(),
        iconButtonTheme: _buildTextButtonThemeData(),
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => WelcomeScreen(),
        '/login': (BuildContext context) => LoginScreen(),
        '/register': (BuildContext context) => CreateNewAccountScreen(),
      },
    );
  }
}

ElevatedButtonThemeData _buildElevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(lightColorSchema.primary),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return Colors.white.withValues(alpha: 0.5);
        }
        return null;
      }),
      minimumSize: WidgetStatePropertyAll(Size(160, 60)),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
  );
}

IconButtonThemeData _buildTextButtonThemeData() => IconButtonThemeData(
  style: ButtonStyle(
    minimumSize: WidgetStatePropertyAll(Size(60, 44)),
    backgroundColor: WidgetStatePropertyAll(Color(0xffECECEC)),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  ),
);
