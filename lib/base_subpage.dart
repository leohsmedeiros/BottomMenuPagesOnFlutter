import 'package:estudo_bottom_menu/lead_layout_page.dart';
import 'package:flutter/material.dart';

abstract class BaseSubPageState<T extends Widget> extends State {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => LeadLayoutPage.bottomMenuPageState.popLayout(),
      child: body(),
    );
  }

  String get title;

  Widget body();

}
