import 'package:flutter/material.dart';
import 'package:instagram_ui_navigation/routes/routes.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      SizedBox(
                        width: screenWidth * 0.5,

                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            minWidth: 100,
                            maxHeight: 200,
                          ),
                          child: Image.asset(
                            'assets/images/instagram_logo.png',
                            color: Colors.white,

                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      TextField(
                        style: TextStyle(color: Colors.white),

                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade900,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                              color: Colors.grey.shade900,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        style: TextStyle(color: Colors.white),

                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade900,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                              color: Colors.grey.shade900,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget password?',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.9,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 150,
                            maxWidth: 200,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.home);
                            },
                            child: Text('Login'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF3797EF),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 14),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(Icons.facebook, color: Colors.blue),
                          Text('Log in with facebook'),
                        ],
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
