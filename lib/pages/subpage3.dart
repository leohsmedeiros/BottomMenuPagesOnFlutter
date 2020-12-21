import 'package:estudo_bottom_menu/base_subpage.dart';
import 'package:flutter/material.dart';

class SubPage3 extends StatefulWidget {
  @override
  _SubPage3State createState() => _SubPage3State();
}

class _SubPage3State extends BaseSubPageState<SubPage3> {

  @override
  Widget body() => Text(title);

  @override
  String get title => "SubPage 3";
}
