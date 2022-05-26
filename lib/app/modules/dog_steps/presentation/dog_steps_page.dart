import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DogStepsModulePage extends StatelessWidget {
  const DogStepsModulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog steps Animations'),
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
