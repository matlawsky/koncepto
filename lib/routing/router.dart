import 'package:flutter/material.dart';
import 'package:koncepto/pages/authentication/authentication.dart';
import 'package:koncepto/pages/devices/repl.dart';
import 'package:koncepto/pages/overview/overview.dart';
import 'package:koncepto/pages/projects/projects.dart';
import 'package:koncepto/pages/users/users.dart';
import 'package:koncepto/pages/views/views.dart';
import 'package:koncepto/routing/routes.dart';
import 'package:koncepto/pages/devices/devices.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(const OverviewPage());
    case projectsPageRoute:
      return _getPageRoute(const ProjectsPage());
    case devicesPageRoute:
      return _getPageRoute(DevicesPage());
    case viewsPageRoute:
      return _getPageRoute(const ViewsPage());
    case replPageRoute:
      return _getPageRoute(REPLPage());
    // case RegisterPageRoute:
    //   return _getPageRoute(RegisterPage());

    // case FAQPageRoute:
    //   return _getPageRoute(FaqPage());
    case authenticationPageRoute:
      return _getPageRoute(const AuthenticationPage());
  }
  return null;
}

PageRoute _logout(Widget child) {
  // Navigator.pop(context);
  return MaterialPageRoute(builder: (context) => child);
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
