import 'package:flutter/cupertino.dart';
import 'package:huran/constraints/controllers.dart';
import 'package:huran/routing/router.dart';
import 'package:huran/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
