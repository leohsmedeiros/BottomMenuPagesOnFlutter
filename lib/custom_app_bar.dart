import 'package:estudo_bottom_menu/lead_layout_page.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  static Widget returnAppBar(context,
      {Function openDrawerFunction,
        bool hadDrawer = false,
        bool backButton = false,
        bool subPage = false,
        String title = "App bar title"}) {

    print ('hadDrawer? $hadDrawer');
    print ('backButton? $backButton');

    return AppBar(
      leading: hadDrawer
          ? IconButton(
        icon: Icon(
          Icons.dehaze,
          color: Colors.black,
        ),
        onPressed: openDrawerFunction ?? (){},
      )
          : subPage ? IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () => LeadLayoutPage.bottomMenuPageState.popLayout(),
      ) : null,
      automaticallyImplyLeading: backButton ? true : false,
      title: Text(title),
      elevation: 1,
    );
  }
}
