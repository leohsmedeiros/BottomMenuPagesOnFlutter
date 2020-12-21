import 'package:estudo_bottom_menu/bottom_menu.dart';
import 'package:flutter/material.dart';

abstract class BaseSubPageState<T extends Widget> extends State {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => BottomMenuPage.bottomMenuPageState.popLayout(),
      child: body(),
    );
  }

  String get title;

  Widget body();

}
