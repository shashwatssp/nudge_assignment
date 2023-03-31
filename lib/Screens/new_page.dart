import 'package:flutter/material.dart';
import 'package:nudge_assignment_shashwat/Screens/contact_page.dart';
import 'package:nudge_assignment_shashwat/widgets/banner.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'NEW PAGE',
          style: TextStyle(color: Colors.black),
        )),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [],
          ),
        ),
      ),
    );
  }
}
