import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class UnlockAnimationPage extends StatefulWidget {
  const UnlockAnimationPage({Key? key}) : super(key: key);

  @override
  State<UnlockAnimationPage> createState() => _UnlockAnimationPageState();
}

class _UnlockAnimationPageState extends State<UnlockAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('unlock_animation'),
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
          ],
        ),
      ),
    );
  }
}
