import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _contrl;

  @override
  void initState() {
    super.initState();
    _contrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    super.dispose();
    _contrl.dispose();
  }

  bool boorkmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (boorkmarked == false) {
              boorkmarked = true;
              _contrl.forward();
            } else {
              boorkmarked = false;
              _contrl.reverse();
            }
          },
          child: Lottie.asset('assets/animation/gift-on-the-way.json',
              controller: _contrl),
        ),
      ),
    );
  }
}
