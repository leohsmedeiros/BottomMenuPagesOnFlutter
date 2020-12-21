import 'package:estudo_bottom_menu/lead_layout_page.dart';
import 'package:estudo_bottom_menu/pages/subpage1.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RaisedButton(
        child: Text("go to subpage 1"),
        onPressed: () => LeadLayoutPage.bottomMenuPageState.pushLayout(SubPage1()),
      ),
    );
  }
}
