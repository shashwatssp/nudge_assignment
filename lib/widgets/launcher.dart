import 'package:flutter/material.dart';

class LauncherButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  LauncherButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: CircleBorder(),
        ),
        child: Text(text),
      ),
    );
  }
}
