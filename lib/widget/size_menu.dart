import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:huran/constraints/controllers.dart';
import 'package:huran/constraints/style.dart';
import 'package:huran/helpers/responsiveness.dart';
import 'package:huran/routing/routes.dart';
import 'package:huran/widget/side_menu_item.dart';

import 'custom_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
        color: light,
        child: ListView(
          children: [
            if (ResponsiveWidget.isSmallScreen(context))
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: _width / 48),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red,
                        ),
                      ),
                      Flexible(
                        child: CustomText(
                          text: "Dash",
                          size: 18,
                          weight: FontWeight.bold,
                          color: active,
                        ),
                      ),
                      SizedBox(width: _width / 48),
                    ],
                  ),
                ],
              ),
            Divider(
              color: lightGray.withOpacity(.1),
            ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: sideMenuItems
                    .map((itemName) => SideMenuItem(
                        itemName: itemName == AuthenticationPageRoute
                            ? "Log Out"
                            : itemName,
                        onTap: () {
                          if (itemName == AuthenticationPageRoute) {
                            // ignore: todo
                            // TODO :: go to authentication page
                          }
                          if (!menuController.isActive(itemName)) {
                            menuController.changeActiveItemTo(itemName);
                            if (ResponsiveWidget.isSmallScreen(context))
                              Get.back();
                            navigationController.navigateTo(itemName);
                          }
                        }))
                    .toList(),
              ),
            ),
            SizedBox(height: 40),
          ],
        ));
  }
}
