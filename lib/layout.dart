import 'package:flutter/material.dart';
import 'package:huran/helpers/responsiveness.dart';
import 'package:huran/widget/large_screen.dart';
import 'package:huran/widget/size_menu.dart';
import 'package:huran/widget/small_screen.dart';
import 'package:huran/widget/top_nav.dart';

class Sitelayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(child: SideMenu()),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
