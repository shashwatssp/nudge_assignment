import 'package:flutter/material.dart';

class LauncherButton extends StatelessWidget {
  final String text;
  final Widget page;

  LauncherButton({required this.text, required this.page});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ElevatedButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: CircleBorder(),
        ),
        child: Text(text),
      ),
    );
  }
}
