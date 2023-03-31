import 'package:flutter/material.dart';

class BannerModel extends StatelessWidget {
  final String text;
  final Widget page;

  BannerModel({required this.text, required this.page});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => page)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
        ),
        width: 400,
        height: 200,
        child: Center(
          child:
              Text(text, style: TextStyle(color: Colors.white, fontSize: 45)),
        ),
      ),
    );
  }
}
