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

class CircularButton extends StatefulWidget {
  @override
  _CircularButtonState createState() => _CircularButtonState();
}

class _CircularButtonState extends State<CircularButton> {
  bool _showPopupMenu = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: FloatingActionButton(
        onPressed: () =>
            _showPopupMenu ? _hidePopupMenu() : _showPopupMenuMenu(),
        child: Icon(_showPopupMenu ? Icons.close : Icons.add),
      ),
    );
  }

  void _showPopupMenuMenu() {
    setState(() {
      _showPopupMenu = true;
    });

    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox;

    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(Offset.zero, ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero),
            ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    showMenu(
      context: context,
      position: position,
      items: [
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.home),
            title: Text('Go to Home'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
      ],
    ).then((value) {
      if (mounted) {
        setState(() {
          _showPopupMenu = false;
        });
      }
    });
  }

  void _hidePopupMenu() {
    setState(() {
      _showPopupMenu = false;
    });
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text('This is the second page'),
        ),
      ),
    );
  }
}
