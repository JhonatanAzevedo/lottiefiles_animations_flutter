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
      duration: const Duration(milliseconds: 750),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Animation Completed'),
                  ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/second_animation/');
                    },
                    child: const Text('Proxima animação'),
                  )
                ],
              )
            : Lottie.asset(
                'assets/loading.json',
                controller: _controller,
                onLoaded: (comp) {
                  _controller.duration = comp.duration;
                  _controller.forward();
                },
              ),
      ),
    );
  }
}
