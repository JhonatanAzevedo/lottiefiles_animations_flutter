import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

class SecondAnimationPage extends StatefulWidget {
  const SecondAnimationPage({Key? key}) : super(key: key);

  @override
  State<SecondAnimationPage> createState() => _SecondAnimationPageState();
}

class _SecondAnimationPageState extends State<SecondAnimationPage> {
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
              'assets/unlock.json',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
             ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/second_animation/third_animation/');
                    },
                    child: const Text('Proxima animação'),
                  )
          ],
        ),
      ),
    );
  }
}
