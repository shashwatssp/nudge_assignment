import 'package:flutter/material.dart';
import 'package:nudge_assignment_shashwat/Screens/new_page.dart';
import 'package:nudge_assignment_shashwat/widgets/banner.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'CONTACT PAGE',
          style: TextStyle(color: Colors.black),
        )),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: BannerModel(text: "", page: NewPage()))],
        ),
      ),
    );
  }
}
