import 'package:flutter/material.dart';
import 'package:nudge_assignment_shashwat/Screens/contact_page.dart';
import 'package:nudge_assignment_shashwat/Screens/home_page.dart';
import 'package:nudge_assignment_shashwat/widgets/banner.dart';
import 'package:nudge_assignment_shashwat/widgets/launcher.dart';

class ControlPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
        'Control from here',
        style: TextStyle(color: Colors.black),
      ))),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BannerModel(text: "BANNER", page: ContactPage()),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: LauncherButton(
                    text: "Launcher",
                    page: HomePage(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
