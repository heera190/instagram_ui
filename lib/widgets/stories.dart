import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  Story({super.key, required this.storyData});

  final Map<String, dynamic> storyData;

  @override
  Widget build(BuildContext context) {
    const List<Color> storyGradientColors = [
      Color(0xFFf09433), // Orange
      Color(0xFFe6683c), // Red-Orange
      Color(0xFFdc2743), // Red
      Color(0xFFcc2366), // Pink
      Color(0xFFbc1888), // Purple
    ];

    const double gradientRingSize = 72.0;
    const double profileImageSize = 64.0;
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: 4),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: gradientRingSize,
                height: gradientRingSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: SweepGradient(colors: storyGradientColors),
                  //border: Border.all(color: Colors.grey, width: 1.5),
                ),
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: CircleAvatar(
                        radius: profileImageSize / 2,
                        backgroundImage: NetworkImage(storyData['storyImage']),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(storyData['username'], style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
  
/*
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String username;
  final String imageUrl;
  final bool isUserStory;

  const StoryItem({
    super.key,
    required this.username,
    required this.imageUrl,
    this.isUserStory = false,
  });

  @override
  Widget build(BuildContext context) {
    // Determine the size of the container, which is the gradient ring size
    const double gradientRingSize = 72.0;
    const double profileImageSize = 64.0; // The actual image size

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
      child: Column(
        children: [
          // The Stack is used to layer the profile image on top of the gradient ring
          Stack(
            alignment: Alignment.center,
            children: [
              // 1. The Gradient Ring (The Container with BoxDecoration)
              Container(
                width: gradientRingSize,
                height: gradientRingSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // If it's the user's story, just use a gray border
                  gradient: isUserStory 
                      ? null 
                      : const SweepGradient(
                          colors: storyGradientColors,
                        ),
                  border: isUserStory
                      ? Border.all(color: Colors.grey, width: 1.5)
                      : null,
                ),
                // Inner Padding to create the "ring" effect
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black, // Inner fill color (must match Scaffold/ListView background)
                    ),
                    // This padding holds the actual CircleAvatar
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: profileImageSize / 2, // 32.0
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                    ),
                  ),
                ),
              ),
              
              // 2. The Add Icon for the user's story
              if (isUserStory)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: const Icon(
                      Icons.add_circle,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
            ],
          ),
          
          const SizedBox(height: 4),
          
          // 3. The Username Text
          Text(
            username,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

*/