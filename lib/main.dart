import 'package:application_islami/core/splash_screen.dart';
import 'package:application_islami/ui/home/home_Screen.dart';
import 'package:application_islami/ui/teps/hadith%20tep/hadith_details.dart';
import 'package:application_islami/ui/teps/quran%20tep/sura_details.dart';
import 'package:flutter/material.dart';

import 'core/theme_application.dart';

void main() {
  runApp(const IslamiApplication());
}

class IslamiApplication extends StatelessWidget {
  const IslamiApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      initialRoute: SplashScreen.routName,
      routes: {
        SplashScreen.routName: (_) => SplashScreen(),
        HomeScreen.routName: (_) => HomeScreen(),
        SuraDetails.routName: (_) => SuraDetails(),
        HadithDetails.routName: (_) => HadithDetails()
      },
    );
  }
}
