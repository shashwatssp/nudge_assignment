import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nudge_assignment_shashwat/Screens/control_page.dart';
import 'package:nudge_assignment_shashwat/Screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ControlPage(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text(
            'Nudge Assignment',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 16, 16, 16),
            ),
          ),
        ),
      ),
    );
  }
}
