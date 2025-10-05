import 'package:flutter/material.dart';
import 'package:instagram_ui_navigation/data/dummy_posts.dart';
import 'package:instagram_ui_navigation/data/stories.dart';
import 'package:instagram_ui_navigation/screens/my_post_widget.dart';
import 'package:instagram_ui_navigation/widgets/stories.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset(
          'assets/images/instagram_logo.png',
          color: Colors.white,
          width: 120,
          fit: BoxFit.contain,
        ),
        leading: Icon(Icons.camera_alt_outlined),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: [
                Icon(Icons.tv_outlined),
                //Spacer(),
                SizedBox(width: 12),
                Icon(Icons.send_outlined),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return Story(storyData: stories[index]);
                },
              ),
            ),
            SizedBox(
              height: 800,
              child: ListView.builder(
                //scrollDirection: Axis.horizontal,
                itemCount: dummyPosts.length,
                itemBuilder: (context, index) {
                  return MyPostWidget(postData: dummyPosts[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
