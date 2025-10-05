import 'package:flutter/material.dart';
import 'package:instagram_ui_navigation/screens/home.dart';
import 'package:instagram_ui_navigation/screens/login.dart';
import 'package:instagram_ui_navigation/screens/signup.dart';
import 'package:instagram_ui_navigation/screens/splash.dart';

class Routes {
  static final String splash = 'splash';
  static final String signUp = 'signup';
  static final String login = 'login';
  static final String home = 'home';

  static Map<String, WidgetBuilder> mRoutes = {
    splash: (context) => Splash(),
    signUp: (context) => Signup(),
    login: (context) => Login(),
    home: (context) => Home(),
  };
}
