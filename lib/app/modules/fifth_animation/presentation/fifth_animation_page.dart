import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FifthAnimationPage extends StatelessWidget {
  const FifthAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottiefilles Animations'),
      ),
      body: Center(
        child: Column(
          children: [
            Lottie.asset(
              'assets/dog_steps.json',
              width: 200,
              height: 190,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
