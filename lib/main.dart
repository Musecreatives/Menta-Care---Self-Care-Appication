import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import './onboarding/pages/pages.dart';

import 'onboarding/mainScreen.dart';

bool? seenOnboard;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // To show status bar
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  // to load splash screen for the first time only
  SharedPreferences pref = await SharedPreferences.getInstance();
  seenOnboard = pref.getBool('seenOnboard') ?? false; //if null set to false
  runApp(MyApp());
}  

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menta: Your Self-Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(button: GoogleFonts.poppins()),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: seenOnboard == true
          ? SignUpPage()
          : AnimatedSplashScreen(
              splash: 'assets/icons/Menta Logo.png',
              duration: 2000,
              splashTransition: SplashTransition.scaleTransition,
              backgroundColor: Colors.blue,
              nextScreen: Welcome()),
    );
  }
}
