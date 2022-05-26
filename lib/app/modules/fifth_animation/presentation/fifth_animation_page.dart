import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
            ElevatedButton(
              onPressed: () {
                // Modular.to.popUntil(ModalRoute.withName('/second_animation/'));

                Modular.to.pushNamed(
                    '/second_animation/third_animation/fourth_animation/fifth_animation/sixth_animation/');
              },
              child: const Text('Proxima animação'),
            )
          ],
        ),
      ),
    );
  }
}
