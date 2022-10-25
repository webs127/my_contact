import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo/Presentation/Resources/color_manager.dart';
import 'package:todo/Presentation/Resources/routes_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  startDelay() {
    _timer = Timer(const Duration(seconds: 4), nextPage);
  }

  nextPage() {
    Navigator.pushReplacementNamed(context, RoutesManager.wrapper);
  }

  @override
  void initState() {
    super.initState();
    startDelay();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.splash,
      body: Center(
          child: Text(" My Contacts",
              style: TextStyle(color: ColorManager.white, fontSize: 30))),
    );
  }
}
