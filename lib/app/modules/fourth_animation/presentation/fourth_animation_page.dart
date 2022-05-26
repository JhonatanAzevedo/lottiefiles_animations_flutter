import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FourthAnimationPage extends StatelessWidget {
  const FourthAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottiefilles Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/error_doodle_animation.json',
              width: 400,
              height: 400,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
