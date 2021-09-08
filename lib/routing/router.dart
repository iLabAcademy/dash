import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:huran/pages/clients/clients.dart';
import 'package:huran/pages/drivers/drivers.dart';
import 'package:huran/pages/overview/overview.dart';

import 'routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriverPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
