import 'package:admob_flutter/admob_flutter.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:tac_tic_toe_project/splash_screen.dart';

import 'board_screen.dart';
import 'home_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Admob.initialize();

  runApp( MyApp());
}


class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // Load ads.
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: AnimatedSplashScreen(
        duration: 1000,
        splash: Icons.home,
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.fadeTransition,),

      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        BoardScreen.routeName: (_) => BoardScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),

      },
      debugShowCheckedModeBanner: false,

    );
  }
}





