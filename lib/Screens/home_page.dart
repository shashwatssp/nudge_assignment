import 'package:flutter/material.dart';
import 'package:nudge_assignment_shashwat/Screens/modal.dart';
import 'package:nudge_assignment_shashwat/Screens/new_page.dart';
import 'package:nudge_assignment_shashwat/widgets/banner.dart';
import 'package:nudge_assignment_shashwat/widgets/launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: const Text(
          'HOME PAGE',
          style: TextStyle(color: Colors.black),
        )),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: LauncherButton(
                    text: "",
                    page: Modal(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
