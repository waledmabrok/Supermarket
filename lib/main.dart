import 'package:flutter/material.dart';
import 'package:projectfirebase/views/Onboarding.dart';
import 'package:projectfirebase/views/Splash.dart';
import 'package:projectfirebase/views/home.dart';
import 'package:projectfirebase/views/login_screen.dart';
import 'package:projectfirebase/views/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/foundation.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Service App',
      initialRoute: SplashScreen.routeName,
      routes: {
        // All routes for mobile (User + Admin)
        SplashScreen.routeName: (context) => const SplashScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignupScreen.routeName: (context) => SignupScreen(),
        OnboardingScreen.routeName: (context) => OnboardingScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
