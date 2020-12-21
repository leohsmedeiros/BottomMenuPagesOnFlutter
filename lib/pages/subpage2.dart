import 'package:estudo_bottom_menu/bottom_menu.dart';
import 'package:estudo_bottom_menu/pages/subpage3.dart';
import 'package:estudo_bottom_menu/base_subpage.dart';
import 'package:flutter/material.dart';

class SubPage2 extends StatefulWidget {
  @override
  _SubPage2State createState() => _SubPage2State();
}

class _SubPage2State extends BaseSubPageState<SubPage2> {

  @override
  Widget body() => RaisedButton(
    child: Text("go to subpage 3"),
    onPressed: () => BottomMenuPage.bottomMenuPageState.pushLayout(SubPage3()),
  );

  @override
  String get title => "SubPage 2";
}
