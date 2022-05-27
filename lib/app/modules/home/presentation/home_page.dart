import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  bool _isLoaded = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isLoaded = true;
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottiefilles Animations'),
      ),
      body: Center(
        child: _isLoaded
            ? Column(
                children: [
                  const Text(
                    'animation catalog',
                    style: TextStyle(fontSize: 30),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/unlock_animation/');
                    },
                    child: const Text('unlock animation'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/email_success/');
                    },
                    child: const Text('email success'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/dog_steps/');
                    },
                    child: const Text('dog steps'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/image_animation/');
                    },
                    child: const Text('image animation'),
                  ),
                   ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/like_button/');
                    },
                    child: const Text('like button'),
                  ),
                ],
              )
            : Lottie.asset(
                'assets/loading.json',
                controller: _controller,
                onLoaded: (comp) {
                  _controller.duration = const Duration(seconds: 3);
                  _controller.forward();
                },
              ),
      ),
    );
  }
}
