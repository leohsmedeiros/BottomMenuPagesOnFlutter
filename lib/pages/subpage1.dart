import 'package:estudo_bottom_menu/lead_layout_page.dart';
import 'package:estudo_bottom_menu/pages/subpage2.dart';
import 'package:estudo_bottom_menu/base_subpage.dart';
import 'package:flutter/material.dart';

class SubPage1 extends StatefulWidget {
  @override
  _SubPage1State createState() => _SubPage1State();
}

class _SubPage1State extends BaseSubPageState<SubPage1> {

  @override
  Widget body() => Column(
    children: [
      Text("SubPage1"),
      RaisedButton(
        child: Text("go to subpage 2"),
        onPressed: () => LeadLayoutPage.bottomMenuPageState.pushLayout(SubPage2()),
      ),
    ],
  );

  @override
  String get title => "SubPage 1";
}
