import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtonPage extends StatelessWidget {
  const LikeButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Like Button'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LikeButton(
            size: 100,
            likeCount: 200,
            countPostion: CountPostion.bottom,
            animationDuration: Duration(seconds: 5),
          ),
          LikeButton(
            size: 100,
            countPostion: CountPostion.bottom,
            animationDuration: const Duration(seconds: 5),
            likeBuilder: (isTapped) {
              return Icon(
                Icons.access_alarm,
                color: isTapped ? Colors.red : Colors.blue,
                size: 100,
              );
            },
          ),
        ],
      ),
    );
  }
}
