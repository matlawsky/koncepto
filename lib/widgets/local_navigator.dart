import 'package:flutter/cupertino.dart';
import 'package:koncepto/constants/controllers.dart';
import 'package:koncepto/routing/router.dart';
import 'package:koncepto/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: overviewPageRoute,
  onGenerateRoute: generateRoute,
);