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
          userName: 'Taylor Swift',
          postContent:
              'Hello! pwede pahingi lud, si Ariana Grande to, oo. Naki post lang ako kay mareng Taylor, thxx',
          numOfLikes: 196,
          date: 'November 20',
        ),
        NewsFeedCard(
          userName: 'Boss Toyo',
          postContent: 'Congrats NU!',
          numOfLikes: 200,
          hasImage: true,
          date: 'December 2',
        ),
      ],
    );
  }
}
