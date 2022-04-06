import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

class ThirdAnimationPage extends StatelessWidget {
  const ThirdAnimationPage({ Key? key }) : super(key: key);

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
              'assets/email_success.json',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
             ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/second_animation/third_animation/fourth_animation/');
                    },
                    child: const Text('Proxima animação'),
                  )
          ],
        ),
      ),
    );
  }
}