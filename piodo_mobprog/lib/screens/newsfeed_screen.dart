import '../constants.dart';
import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Jonabie Piodo',
          postContent:
              'Lab Activity 1 done! Newsfeed with images and reactions.',
          numOfLikes: 87,
          hasImage: true,
          imagePath: 'assets/images/post2.jpg',
          profileImagePath: 'assets/images/dp.jpg',
          date: 'November 24',
        ),
        NewsFeedCard(
          userName: 'Taylor Swift',
          postContent:
              'Hello beh! pwede pahingi lud, si Ariana Grande to, oo. Naki post lang ako kay mareng Taylor, thxx',
          numOfLikes: 196,
          date: 'November 20',
          profileImagePath: 'assets/images/profile1.jpg',
        ),
        NewsFeedCard(
          userName: 'Boss Toyo',
          postContent: 'Congrats NU!',
          numOfLikes: 200,
          hasImage: true,
          imagePath: 'assets/images/post1.jpeg',
          profileImagePath: 'assets/images/profile2.jpg',
          date: 'December 2',
        ),
      ],
    );
  }
}
