import 'package:flutter/material.dart';
import 'package:instagram_ui_navigation/routes/routes.dart';

class Login extends StatelessWidget {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/instagram_logo.png',
                        color: Colors.white,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 40),
                      CircleAvatar(
                        radius: 45,
                        foregroundImage: NetworkImage(
                          'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2019/06/10/834561-yuvraj-singh.jpg',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Yuvraj Singh',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),

                      SizedBox(height: 20),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.signUp);
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color(0xFF3797EF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(6),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: Text('Login'),
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Switch accounts',
                          style: TextStyle(color: Color(0xFF3797EF)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: RichText(
                  text: const TextSpan(
                    text: 'Don\'t have an account? ',
                    children: [
                      TextSpan(
                        text: 'Sign UP',
                        style: TextStyle(color: Color(0xFF3797EF)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
