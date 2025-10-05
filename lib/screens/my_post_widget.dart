import 'package:flutter/material.dart';
import 'package:instagram_ui_navigation/data/dummy_posts.dart';

class MyPostWidget extends StatelessWidget {
  MyPostWidget({super.key, required this.postData});

  Map<String, dynamic> postData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(postData['userImage']),
                radius: 25,
              ),
              SizedBox(width: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    postData['username'],
                    style: TextStyle(color: Colors.white),
                  ),
                  //SizedBox(height: 8),
                  Text(
                    postData['location'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.more_horiz, color: Colors.white),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(),
          child: Image.network(postData['postImage'], fit: BoxFit.cover),
        ),
      ],
    );
  }
}
