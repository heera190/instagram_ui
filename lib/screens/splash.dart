import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_ui_navigation/routes/routes.dart';

class Splash extends StatelessWidget {
  Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, Routes.home);
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: double.infinity,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterLogo(size: 200),
              SizedBox(height: 15),
              Text(
                'Harjinder',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
