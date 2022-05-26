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
                  const Text('animation catalog'),
                  ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/second_animation/');
                    },
                    child: const Text('Proxima animação'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/third_animation');
                    },
                    child: const Text('Proxima animação'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/fourth_animation');
                    },
                    child: const Text('Proxima animação'),
                  ),
                   ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/fifth_animation');
                    },
                    child: const Text('Proxima animação'),
                  ),
                   ElevatedButton(
                    onPressed: () {
                      Modular.to.pushNamed('/sixth_animation');
                    },
                    child: const Text('Proxima animação'),
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
