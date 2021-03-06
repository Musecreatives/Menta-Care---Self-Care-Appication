import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menta/onboarding/pages/meditation_player.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'pages.dart';

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
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menta: Your Self-Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
                backgroundColor: blueBackground,
                padding: EdgeInsets.all(defualtPadding))),
        inputDecorationTheme: InputDecorationTheme(
            border: textFieldBorder,
            enabledBorder: textFieldBorder,
            focusedBorder: textFieldBorder),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splash: SvgPicture.asset(
            'assets/images/logo white Menta.svg',
          ),
          duration: 1400,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.blue,
          nextScreen: seenOnboard == true ? SignUpPage() : Welcome()), /** */
    );
  }
}
